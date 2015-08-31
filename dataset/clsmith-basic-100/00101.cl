// ---fake_divergence -g 1393,2,3 -l 1,1,1
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


// Seed: 101

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int64_t  f0;
   int32_t  f1;
   volatile int32_t  f2;
   int16_t  f3;
   int64_t  f4;
   volatile uint16_t  f5;
};

struct S1 {
    uint8_t g_13[7][10][2];
    int16_t g_15;
    uint64_t g_17;
    uint32_t g_28[2];
    int32_t g_73;
    int32_t *g_74;
    int32_t g_78;
    volatile struct S0 g_81;
    int16_t g_92;
    uint16_t g_115[8];
    uint32_t g_122[9][4];
    uint8_t g_126;
    int32_t g_134;
    int8_t g_140;
    volatile uint16_t g_152[10];
    volatile struct S0 g_157;
    volatile uint32_t g_167;
    volatile int8_t g_170;
    int64_t g_171;
    volatile uint64_t g_172;
    int8_t g_195;
    uint8_t g_197[9][8];
    volatile uint64_t g_200;
    volatile uint32_t g_204;
    int16_t g_238;
    volatile uint16_t g_253;
    uint16_t g_277[3][1];
    volatile uint16_t g_309;
    int32_t g_312[4];
    volatile int16_t g_314;
    volatile uint32_t g_315;
    uint32_t *g_329;
    uint32_t **g_328;
    uint32_t *** volatile g_327;
    struct S0 g_342;
    struct S0 * volatile g_343[10][10];
    struct S0 * volatile g_344;
    struct S0 * volatile g_345;
    int32_t * volatile g_347;
    volatile uint64_t *g_350;
    uint64_t g_392[8];
    int32_t g_394;
    uint16_t *g_413;
    uint16_t ** volatile g_412;
    uint8_t * volatile g_423;
    uint8_t * volatile * volatile g_422;
    uint8_t * volatile * volatile *g_421;
    int32_t **g_459;
    struct S0 g_501[9][3];
    volatile uint32_t g_533;
    int32_t g_589;
    uint8_t g_590;
    struct S0 g_610[5];
    uint8_t *g_638;
    uint8_t **g_637;
    volatile uint16_t g_642;
    volatile int32_t g_688;
    int32_t g_689;
    int32_t g_690;
    uint32_t g_691;
    struct S0 g_730;
    volatile int64_t * volatile * volatile g_763;
    struct S0 * volatile g_785[1];
    struct S0 g_805;
    struct S0 g_837;
    struct S0 g_840;
    struct S0 g_842;
    volatile int32_t g_859;
    volatile int32_t g_860;
    uint16_t g_861;
    struct S0 * volatile * volatile g_887;
    uint64_t g_890[3];
    volatile struct S0 g_897;
    volatile struct S0 * volatile g_898[8];
    volatile struct S0 g_949;
    struct S0 g_955;
    int64_t *g_961[1][8];
    int64_t **g_960;
    int64_t *** volatile g_959;
    volatile struct S0 g_974;
    uint8_t g_987;
    struct S0 g_990;
    int8_t *g_1011;
    volatile struct S0 g_1070;
    int8_t g_1107;
    volatile uint16_t g_1108;
    int32_t ** volatile g_1125;
    uint64_t *g_1164;
    volatile int32_t g_1184;
    uint64_t g_1185;
    struct S0 g_1228;
    struct S0 g_1235;
    volatile int32_t g_1237;
    volatile uint32_t g_1238[1][9][9];
    volatile struct S0 g_1271;
    int32_t ** volatile g_1282[7];
    int16_t *g_1338[5];
    struct S0 *g_1404;
    uint64_t g_1406;
    uint32_t g_1408;
    struct S0 g_1431[4];
    struct S0 g_1432;
    int32_t *g_1438;
    int64_t *g_1442;
    int64_t **g_1441;
    int64_t ***g_1440[7];
    int64_t ***g_1444;
    int8_t **g_1448;
    struct S0 g_1463;
    uint8_t g_1464;
    uint32_t g_1466;
    int32_t ** volatile g_1491;
    struct S0 * volatile g_1530[6];
    struct S0 g_1532;
    int32_t * volatile g_1538[7];
    int32_t * volatile g_1539[2];
    int32_t * volatile g_1552;
    int32_t * volatile g_1553[10];
    int32_t * volatile g_1554;
    int32_t ** volatile g_1625[9][9][2];
    int32_t ** volatile g_1626[7];
    int32_t ** volatile g_1627;
    int32_t g_1628[5][3];
    struct S0 g_1658;
    struct S0 g_1659;
    volatile uint64_t ***g_1829;
    volatile struct S0 g_1867[6][3];
    volatile struct S0 g_1884[2][9];
    volatile int32_t *g_1950;
    volatile int32_t ** volatile g_1951;
    uint64_t *g_1978;
    uint32_t *g_2009;
    uint32_t **g_2008;
    uint16_t g_2028;
    int8_t g_2093;
    int32_t g_2098[1][1];
    struct S0 g_2102;
    struct S0 * volatile g_2103;
    uint16_t g_2115;
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
uint64_t  func_1(struct S1 * p_2126);
uint8_t  func_6(uint8_t  p_7, uint16_t  p_8, uint64_t  p_9, uint64_t  p_10, int32_t  p_11, struct S1 * p_2126);
struct S0  func_18(uint8_t * p_19, int32_t  p_20, struct S1 * p_2126);
uint32_t  func_31(int64_t  p_32, int32_t  p_33, struct S1 * p_2126);
uint8_t  func_42(int32_t  p_43, int64_t  p_44, uint8_t  p_45, int16_t  p_46, struct S1 * p_2126);
int64_t  func_47(uint32_t  p_48, uint64_t * p_49, uint32_t  p_50, int16_t  p_51, struct S1 * p_2126);
uint32_t  func_53(uint64_t * p_54, uint32_t * p_55, int32_t  p_56, uint64_t  p_57, struct S1 * p_2126);
uint64_t * func_58(uint64_t * p_59, int64_t  p_60, struct S1 * p_2126);
int8_t  func_62(int32_t  p_63, uint8_t * p_64, uint64_t * p_65, struct S1 * p_2126);
uint64_t * func_67(int32_t  p_68, uint16_t  p_69, uint32_t * p_70, uint64_t * p_71, struct S1 * p_2126);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2126->g_15 p_2126->g_28 p_2126->g_13 p_2126->g_74 p_2126->g_81 p_2126->g_78 p_2126->g_115 p_2126->g_17 p_2126->g_126 p_2126->g_152 p_2126->g_157 p_2126->g_167 p_2126->g_172 p_2126->g_197 p_2126->g_200 p_2126->g_204 p_2126->g_122 p_2126->g_73 p_2126->g_195 p_2126->g_171 p_2126->g_253 p_2126->g_134 p_2126->g_277 p_2126->g_238 p_2126->g_309 p_2126->g_315 p_2126->g_327 p_2126->g_314 p_2126->g_92 p_2126->g_329 p_2126->g_342 p_2126->g_345 p_2126->g_347 p_2126->g_328 p_2126->g_350 p_2126->g_140 p_2126->g_312 p_2126->g_412 p_2126->g_421 p_2126->g_413 p_2126->g_392 p_2126->g_459 p_2126->g_501.f0 p_2126->g_533 p_2126->g_501.f3 p_2126->g_590 p_2126->g_610 p_2126->g_637 p_2126->g_501.f1 p_2126->g_642 p_2126->g_691 p_2126->g_690 p_2126->g_394 p_2126->g_730 p_2126->g_638 p_2126->g_501.f2 p_2126->g_763 p_2126->g_861 p_2126->g_842.f4 p_2126->g_837.f3 p_2126->g_343 p_2126->g_887 p_2126->g_890 p_2126->g_897 p_2126->g_949 p_2126->g_955 p_2126->g_959 p_2126->g_974 p_2126->g_987 p_2126->g_990 p_2126->g_1011 p_2126->g_1070 p_2126->g_961 p_2126->g_1108 p_2126->g_805.f1 p_2126->g_1185 p_2126->g_1228 p_2126->g_1238 p_2126->g_840.f0 p_2126->g_1271 p_2126->g_1235.f3 p_2126->g_837.f1 p_2126->g_170 p_2126->g_1404 p_2126->g_1408 p_2126->g_422 p_2126->g_589 p_2126->g_842.f1 p_2126->g_1431 p_2126->g_1440 p_2126->g_805 p_2126->g_1463 p_2126->g_1464 p_2126->g_1406 p_2126->g_837.f4 p_2126->g_1441 p_2126->g_1554 p_2126->g_840.f1 p_2126->g_1627 p_2126->g_1628 p_2126->g_1658 p_2126->g_1532.f1 p_2126->g_842.f3 p_2126->g_1829 p_2126->g_1442 p_2126->g_842.f0 p_2126->g_1867 p_2126->g_1884 p_2126->g_1532.f4 p_2126->g_1950 p_2126->g_1951 p_2126->g_859 p_2126->g_2028 p_2126->g_840.f4 p_2126->g_1978 p_2126->g_2093 p_2126->g_2098 p_2126->g_2102 p_2126->g_2103 p_2126->g_2115
 * writes: p_2126->g_13 p_2126->g_17 p_2126->g_28 p_2126->g_73 p_2126->g_74 p_2126->g_92 p_2126->g_78 p_2126->g_115 p_2126->g_126 p_2126->g_15 p_2126->g_134 p_2126->g_152 p_2126->g_167 p_2126->g_172 p_2126->g_197 p_2126->g_200 p_2126->g_204 p_2126->g_140 p_2126->g_238 p_2126->g_253 p_2126->g_277 p_2126->g_195 p_2126->g_309 p_2126->g_315 p_2126->g_328 p_2126->g_342 p_2126->g_392 p_2126->g_394 p_2126->g_459 p_2126->g_122 p_2126->g_329 p_2126->g_533 p_2126->g_589 p_2126->g_501 p_2126->g_691 p_2126->g_690 p_2126->g_610 p_2126->g_730.f0 p_2126->g_730.f1 p_2126->g_861 p_2126->g_343 p_2126->g_890 p_2126->g_590 p_2126->g_805.f3 p_2126->g_81 p_2126->g_805 p_2126->g_960 p_2126->g_842.f4 p_2126->g_987 p_2126->g_840 p_2126->g_837.f3 p_2126->g_1011 p_2126->g_955.f0 p_2126->g_157 p_2126->g_842.f3 p_2126->g_730.f3 p_2126->g_1108 p_2126->g_955.f4 p_2126->g_1164 p_2126->g_1185 p_2126->g_1235 p_2126->g_1238 p_2126->g_990.f4 p_2126->g_1228.f3 p_2126->g_837.f1 p_2126->g_1338 p_2126->g_1228.f1 p_2126->g_1406 p_2126->g_842.f1 p_2126->g_1432 p_2126->g_1438 p_2126->g_1440 p_2126->g_1444 p_2126->g_1448 p_2126->g_1464 p_2126->g_1466 p_2126->g_1282 p_2126->g_1107 p_2126->g_1532 p_2126->g_730.f4 p_2126->g_990.f1 p_2126->g_1228.f0 p_2126->g_1659 p_2126->g_1404 p_2126->g_1070.f5 p_2126->g_1228.f4 p_2126->g_638 p_2126->g_955 p_2126->g_990.f3 p_2126->g_1950 p_2126->g_859 p_2126->g_2008 p_2126->g_422 p_2126->g_2028 p_2126->g_1408 p_2126->g_2093 p_2126->g_2098 p_2126->g_1658 p_2126->g_2115
 */
uint64_t  func_1(struct S1 * p_2126)
{ /* block id: 4 */
    uint8_t *l_12 = &p_2126->g_13[2][7][1];
    int32_t l_14 = 0L;
    uint64_t *l_16 = &p_2126->g_17;
    int64_t l_2112 = 2L;
    int32_t l_2118 = 0x11F8AF52L;
    int16_t **l_2123 = &p_2126->g_1338[4];
    int64_t l_2124 = (-10L);
    p_2126->g_2115 |= ((((!(safe_div_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s(func_6(((*l_12) = 0x2AL), l_14, p_2126->g_15, ((*l_16) = l_14), l_14, p_2126), 1)) ^ l_14), (~l_2112)))) & (safe_add_func_uint16_t_u_u(l_14, 0L))) < l_14) != l_2112);
    for (l_14 = (-19); (l_14 > (-21)); l_14 = safe_sub_func_uint32_t_u_u(l_14, 7))
    { /* block id: 1176 */
        l_2118 &= (-1L);
        if (p_2126->g_126)
            goto lbl_2125;
    }
lbl_2125:
    (*p_2126->g_1950) ^= (l_2118 , (((l_2118 , ((safe_add_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(l_2112, (0L >= l_14))), (((void*)0 == l_2123) != 0x79L))) > ((*p_2126->g_1978) > l_2124))) < l_14) || l_2118));
    (*p_2126->g_1950) &= l_2124;
    return l_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_2126->g_28 p_2126->g_13 p_2126->g_74 p_2126->g_81 p_2126->g_15 p_2126->g_78 p_2126->g_115 p_2126->g_17 p_2126->g_126 p_2126->g_152 p_2126->g_157 p_2126->g_167 p_2126->g_172 p_2126->g_197 p_2126->g_200 p_2126->g_204 p_2126->g_122 p_2126->g_73 p_2126->g_195 p_2126->g_171 p_2126->g_253 p_2126->g_134 p_2126->g_277 p_2126->g_238 p_2126->g_309 p_2126->g_315 p_2126->g_327 p_2126->g_314 p_2126->g_92 p_2126->g_329 p_2126->g_342 p_2126->g_345 p_2126->g_347 p_2126->g_328 p_2126->g_350 p_2126->g_140 p_2126->g_312 p_2126->g_412 p_2126->g_421 p_2126->g_413 p_2126->g_392 p_2126->g_459 p_2126->g_501.f0 p_2126->g_533 p_2126->g_501.f3 p_2126->g_590 p_2126->g_610 p_2126->g_637 p_2126->g_501.f1 p_2126->g_642 p_2126->g_691 p_2126->g_690 p_2126->g_394 p_2126->g_730 p_2126->g_638 p_2126->g_501.f2 p_2126->g_763 p_2126->g_861 p_2126->g_842.f4 p_2126->g_837.f3 p_2126->g_343 p_2126->g_887 p_2126->g_890 p_2126->g_897 p_2126->g_949 p_2126->g_955 p_2126->g_959 p_2126->g_974 p_2126->g_987 p_2126->g_990 p_2126->g_1011 p_2126->g_1070 p_2126->g_961 p_2126->g_1108 p_2126->g_805.f1 p_2126->g_1185 p_2126->g_1228 p_2126->g_1238 p_2126->g_840.f0 p_2126->g_1271 p_2126->g_1235.f3 p_2126->g_837.f1 p_2126->g_170 p_2126->g_1404 p_2126->g_1408 p_2126->g_422 p_2126->g_589 p_2126->g_842.f1 p_2126->g_1431 p_2126->g_1440 p_2126->g_805 p_2126->g_1463 p_2126->g_1464 p_2126->g_1406 p_2126->g_837.f4 p_2126->g_1441 p_2126->g_1554 p_2126->g_840.f1 p_2126->g_1627 p_2126->g_1628 p_2126->g_1658 p_2126->g_1532.f1 p_2126->g_842.f3 p_2126->g_1829 p_2126->g_1442 p_2126->g_842.f0 p_2126->g_1867 p_2126->g_1884 p_2126->g_1532.f4 p_2126->g_1950 p_2126->g_1951 p_2126->g_859 p_2126->g_2028 p_2126->g_840.f4 p_2126->g_1978 p_2126->g_2093 p_2126->g_2098 p_2126->g_2102 p_2126->g_2103
 * writes: p_2126->g_28 p_2126->g_73 p_2126->g_74 p_2126->g_92 p_2126->g_78 p_2126->g_115 p_2126->g_126 p_2126->g_15 p_2126->g_134 p_2126->g_152 p_2126->g_167 p_2126->g_172 p_2126->g_17 p_2126->g_197 p_2126->g_200 p_2126->g_204 p_2126->g_140 p_2126->g_238 p_2126->g_253 p_2126->g_277 p_2126->g_195 p_2126->g_309 p_2126->g_315 p_2126->g_328 p_2126->g_342 p_2126->g_392 p_2126->g_394 p_2126->g_459 p_2126->g_122 p_2126->g_329 p_2126->g_533 p_2126->g_589 p_2126->g_501 p_2126->g_691 p_2126->g_690 p_2126->g_610 p_2126->g_730.f0 p_2126->g_730.f1 p_2126->g_861 p_2126->g_343 p_2126->g_890 p_2126->g_590 p_2126->g_805.f3 p_2126->g_81 p_2126->g_805 p_2126->g_960 p_2126->g_842.f4 p_2126->g_987 p_2126->g_840 p_2126->g_837.f3 p_2126->g_1011 p_2126->g_955.f0 p_2126->g_157 p_2126->g_842.f3 p_2126->g_730.f3 p_2126->g_1108 p_2126->g_955.f4 p_2126->g_1164 p_2126->g_1185 p_2126->g_1235 p_2126->g_1238 p_2126->g_990.f4 p_2126->g_1228.f3 p_2126->g_837.f1 p_2126->g_1338 p_2126->g_1228.f1 p_2126->g_1406 p_2126->g_842.f1 p_2126->g_1432 p_2126->g_1438 p_2126->g_1440 p_2126->g_1444 p_2126->g_1448 p_2126->g_1464 p_2126->g_1466 p_2126->g_1282 p_2126->g_1107 p_2126->g_1532 p_2126->g_730.f4 p_2126->g_990.f1 p_2126->g_1228.f0 p_2126->g_1659 p_2126->g_1404 p_2126->g_1070.f5 p_2126->g_1228.f4 p_2126->g_638 p_2126->g_955 p_2126->g_990.f3 p_2126->g_1950 p_2126->g_859 p_2126->g_2008 p_2126->g_422 p_2126->g_2028 p_2126->g_1408 p_2126->g_2093 p_2126->g_2098 p_2126->g_1658
 */
uint8_t  func_6(uint8_t  p_7, uint16_t  p_8, uint64_t  p_9, uint64_t  p_10, int32_t  p_11, struct S1 * p_2126)
{ /* block id: 7 */
    uint8_t *l_21 = &p_2126->g_13[2][7][1];
    int32_t l_26 = 8L;
    uint32_t *l_27 = &p_2126->g_28[1];
    uint8_t l_36 = 0xA6L;
    uint64_t l_39[2];
    int32_t *l_2097 = &p_2126->g_2098[0][0];
    int32_t *l_2104 = &p_2126->g_2098[0][0];
    int32_t *l_2105 = &p_2126->g_134;
    int32_t *l_2106 = &l_26;
    int32_t *l_2107 = &p_2126->g_2098[0][0];
    int32_t *l_2108[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_2109 = 0xB6L;
    int i;
    for (i = 0; i < 2; i++)
        l_39[i] = 9UL;
    (*p_2126->g_2103) = func_18(l_21, ((*l_2097) |= (safe_mul_func_int16_t_s_s((((((safe_rshift_func_int16_t_s_s(((l_26 | ((--(*l_27)) == (((65535UL > (!l_26)) == (func_31(((safe_lshift_func_int16_t_s_s(p_9, p_7)) && l_36), (safe_div_func_uint64_t_u_u(p_2126->g_13[1][4][1], l_39[1])), p_2126) , 0xE407AA3E77EADD43L)) & p_2126->g_837.f4))) || 0x67FBCB9CL), l_26)) <= l_26) != p_2126->g_1431[0].f0) ^ 0UL) ^ p_11), p_2126->g_1658.f1))), p_2126);
    l_2109++;
    return (*l_2097);
}


/* ------------------------------------------ */
/* 
 * reads : p_2126->g_1950 p_2126->g_859 p_2126->g_2102
 * writes: p_2126->g_859
 */
struct S0  func_18(uint8_t * p_19, int32_t  p_20, struct S1 * p_2126)
{ /* block id: 1166 */
    int32_t *l_2099 = &p_2126->g_394;
    int32_t **l_2100 = (void*)0;
    int32_t *l_2101 = &p_2126->g_690;
    (*p_2126->g_1950) ^= p_20;
    l_2101 = l_2099;
    return p_2126->g_2102;
}


/* ------------------------------------------ */
/* 
 * reads : p_2126->g_13 p_2126->g_74 p_2126->g_81 p_2126->g_15 p_2126->g_78 p_2126->g_115 p_2126->g_17 p_2126->g_126 p_2126->g_152 p_2126->g_157 p_2126->g_167 p_2126->g_172 p_2126->g_197 p_2126->g_200 p_2126->g_204 p_2126->g_122 p_2126->g_73 p_2126->g_195 p_2126->g_171 p_2126->g_253 p_2126->g_134 p_2126->g_277 p_2126->g_238 p_2126->g_309 p_2126->g_315 p_2126->g_327 p_2126->g_314 p_2126->g_92 p_2126->g_329 p_2126->g_342 p_2126->g_345 p_2126->g_347 p_2126->g_328 p_2126->g_350 p_2126->g_140 p_2126->g_312 p_2126->g_412 p_2126->g_421 p_2126->g_413 p_2126->g_392 p_2126->g_459 p_2126->g_501.f0 p_2126->g_533 p_2126->g_501.f3 p_2126->g_590 p_2126->g_610 p_2126->g_637 p_2126->g_501.f1 p_2126->g_642 p_2126->g_691 p_2126->g_690 p_2126->g_394 p_2126->g_730 p_2126->g_638 p_2126->g_501.f2 p_2126->g_763 p_2126->g_861 p_2126->g_842.f4 p_2126->g_837.f3 p_2126->g_343 p_2126->g_887 p_2126->g_890 p_2126->g_897 p_2126->g_949 p_2126->g_955 p_2126->g_959 p_2126->g_974 p_2126->g_987 p_2126->g_990 p_2126->g_1011 p_2126->g_1070 p_2126->g_961 p_2126->g_1108 p_2126->g_805.f1 p_2126->g_1185 p_2126->g_1228 p_2126->g_1238 p_2126->g_840.f0 p_2126->g_1271 p_2126->g_1235.f3 p_2126->g_837.f1 p_2126->g_170 p_2126->g_1404 p_2126->g_1408 p_2126->g_422 p_2126->g_589 p_2126->g_842.f1 p_2126->g_1431 p_2126->g_1440 p_2126->g_805 p_2126->g_1463 p_2126->g_1464 p_2126->g_1406 p_2126->g_837.f4 p_2126->g_1441 p_2126->g_1554 p_2126->g_840.f1 p_2126->g_1627 p_2126->g_1628 p_2126->g_1658 p_2126->g_1532.f1 p_2126->g_842.f3 p_2126->g_1829 p_2126->g_1442 p_2126->g_842.f0 p_2126->g_1867 p_2126->g_1884 p_2126->g_1532.f4 p_2126->g_1950 p_2126->g_1951 p_2126->g_859 p_2126->g_2028 p_2126->g_840.f4 p_2126->g_1978 p_2126->g_2093
 * writes: p_2126->g_73 p_2126->g_74 p_2126->g_92 p_2126->g_78 p_2126->g_115 p_2126->g_126 p_2126->g_15 p_2126->g_134 p_2126->g_152 p_2126->g_167 p_2126->g_172 p_2126->g_17 p_2126->g_197 p_2126->g_200 p_2126->g_204 p_2126->g_140 p_2126->g_238 p_2126->g_253 p_2126->g_277 p_2126->g_195 p_2126->g_309 p_2126->g_315 p_2126->g_328 p_2126->g_342 p_2126->g_392 p_2126->g_394 p_2126->g_459 p_2126->g_122 p_2126->g_329 p_2126->g_533 p_2126->g_589 p_2126->g_501 p_2126->g_691 p_2126->g_690 p_2126->g_610 p_2126->g_730.f0 p_2126->g_730.f1 p_2126->g_861 p_2126->g_343 p_2126->g_890 p_2126->g_590 p_2126->g_805.f3 p_2126->g_81 p_2126->g_805 p_2126->g_960 p_2126->g_842.f4 p_2126->g_987 p_2126->g_840 p_2126->g_837.f3 p_2126->g_1011 p_2126->g_955.f0 p_2126->g_157 p_2126->g_842.f3 p_2126->g_730.f3 p_2126->g_1108 p_2126->g_955.f4 p_2126->g_1164 p_2126->g_1185 p_2126->g_1235 p_2126->g_1238 p_2126->g_990.f4 p_2126->g_1228.f3 p_2126->g_837.f1 p_2126->g_1338 p_2126->g_1228.f1 p_2126->g_1406 p_2126->g_842.f1 p_2126->g_1432 p_2126->g_1438 p_2126->g_1440 p_2126->g_1444 p_2126->g_1448 p_2126->g_1464 p_2126->g_1466 p_2126->g_1282 p_2126->g_1107 p_2126->g_1532 p_2126->g_730.f4 p_2126->g_990.f1 p_2126->g_1228.f0 p_2126->g_1659 p_2126->g_1404 p_2126->g_1070.f5 p_2126->g_1228.f4 p_2126->g_638 p_2126->g_955 p_2126->g_990.f3 p_2126->g_1950 p_2126->g_859 p_2126->g_2008 p_2126->g_422 p_2126->g_2028 p_2126->g_1408 p_2126->g_2093
 */
uint32_t  func_31(int64_t  p_32, int32_t  p_33, struct S1 * p_2126)
{ /* block id: 9 */
    int8_t l_40 = 0x26L;
    uint64_t *l_52 = &p_2126->g_17;
    uint8_t *l_66 = &p_2126->g_13[2][7][1];
    int32_t *l_72 = &p_2126->g_73;
    int16_t *l_2092 = &p_2126->g_840.f3;
    int32_t **l_2094[7] = {(void*)0,&p_2126->g_74,(void*)0,(void*)0,&p_2126->g_74,(void*)0,(void*)0};
    int32_t *l_2095 = &p_2126->g_394;
    int32_t *l_2096 = &p_2126->g_690;
    int i;
    p_2126->g_2093 &= (((l_40 = GROUP_DIVERGE(1, 1)) , 0x9ED994AD4DB1D70FL) , (p_2126->g_13[2][7][1] < (safe_unary_minus_func_int16_t_s(((*l_2092) = (func_42(p_33, func_47(l_40, l_52, func_53(func_58(l_52, (safe_unary_minus_func_uint64_t_u(((func_62(p_32, l_66, func_67(((*l_72) = (l_40 ^ 0x66FA41D4L)), p_33, l_72, l_52, p_2126), p_2126) & l_40) & l_40))), p_2126), &p_2126->g_1408, p_2126->g_837.f4, p_2126->g_312[2], p_2126), p_2126->g_955.f1, p_2126), l_40, p_33, p_2126) > p_2126->g_1431[0].f0))))));
    l_2096 = (l_2095 = l_72);
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_2126->g_122 p_2126->g_413 p_2126->g_115 p_2126->g_17 p_2126->g_1627 p_2126->g_1628 p_2126->g_74 p_2126->g_637 p_2126->g_638 p_2126->g_13 p_2126->g_1658 p_2126->g_412 p_2126->g_347 p_2126->g_134 p_2126->g_1532.f1 p_2126->g_1235.f3 p_2126->g_842.f4 p_2126->g_842.f3 p_2126->g_1829 p_2126->g_1442 p_2126->g_842.f0 p_2126->g_171 p_2126->g_1867 p_2126->g_1884 p_2126->g_392 p_2126->g_197 p_2126->g_1532.f4 p_2126->g_955 p_2126->g_837.f3 p_2126->g_990.f3 p_2126->g_1950 p_2126->g_1951 p_2126->g_859 p_2126->g_421 p_2126->g_2028 p_2126->g_690 p_2126->g_1978 p_2126->g_890 p_2126->g_1228.f0 p_2126->g_1408 p_2126->g_730.f2 p_2126->g_990.f1 p_2126->g_840.f1 p_2126->g_837.f1 p_2126->g_394 p_2126->g_1228.f4 p_2126->g_238 p_2126->g_805.f0 p_2126->g_15 p_2126->g_840.f4 p_2126->g_1228.f1
 * writes: p_2126->g_990.f1 p_2126->g_840.f1 p_2126->g_342.f3 p_2126->g_140 p_2126->g_1440 p_2126->g_122 p_2126->g_1235.f3 p_2126->g_17 p_2126->g_74 p_2126->g_1228.f3 p_2126->g_1228.f0 p_2126->g_1659 p_2126->g_195 p_2126->g_1164 p_2126->g_1404 p_2126->g_1070.f5 p_2126->g_197 p_2126->g_590 p_2126->g_1406 p_2126->g_842.f3 p_2126->g_837.f1 p_2126->g_394 p_2126->g_1228.f4 p_2126->g_638 p_2126->g_842.f4 p_2126->g_1438 p_2126->g_115 p_2126->g_1185 p_2126->g_955 p_2126->g_392 p_2126->g_589 p_2126->g_837.f3 p_2126->g_990.f3 p_2126->g_1950 p_2126->g_859 p_2126->g_238 p_2126->g_2008 p_2126->g_422 p_2126->g_805.f0 p_2126->g_2028 p_2126->g_15 p_2126->g_1408 p_2126->g_690 p_2126->g_840.f4 p_2126->g_890 p_2126->g_1228.f1 p_2126->g_134
 */
uint8_t  func_42(int32_t  p_43, int64_t  p_44, uint8_t  p_45, int16_t  p_46, struct S1 * p_2126)
{ /* block id: 862 */
    int32_t l_1591 = 0x4B283244L;
    uint32_t l_1602 = 4294967289UL;
    int32_t **l_1631[2];
    int32_t *l_1722 = (void*)0;
    int16_t l_1748 = 0x66DCL;
    uint32_t l_1758 = 4294967292UL;
    uint64_t l_1789 = 0xDC56DB99B43D70EBL;
    int64_t ****l_1791 = &p_2126->g_1440[0];
    int64_t *****l_1790 = &l_1791;
    int8_t l_1792 = 0x13L;
    int64_t **l_1832[4][9] = {{&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7]},{&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7]},{&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7]},{&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7],&p_2126->g_961[0][7]}};
    int8_t l_1836 = 3L;
    int32_t *l_1861[1][6];
    struct S0 *l_1868 = &p_2126->g_955;
    int16_t l_1920 = 0x06BEL;
    uint8_t l_1921 = 251UL;
    int32_t l_2005 = 3L;
    uint32_t *l_2007 = &p_2126->g_1466;
    uint32_t **l_2006 = &l_2007;
    uint8_t **l_2024 = (void*)0;
    uint8_t l_2065 = 0UL;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1631[i] = &p_2126->g_74;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
            l_1861[i][j] = (void*)0;
    }
lbl_1736:
    for (p_2126->g_990.f1 = 0; (p_2126->g_990.f1 <= 1); p_2126->g_990.f1++)
    { /* block id: 865 */
        int32_t l_1620[10] = {(-1L),(-1L),0x22B3C7D8L,(-1L),(-1L),(-1L),(-1L),0x22B3C7D8L,(-1L),(-1L)};
        uint32_t l_1648 = 4294967293UL;
        int i;
        if (l_1591)
            break;
        for (p_2126->g_840.f1 = (-1); (p_2126->g_840.f1 > (-5)); p_2126->g_840.f1 = safe_sub_func_uint16_t_u_u(p_2126->g_840.f1, 1))
        { /* block id: 869 */
            int64_t l_1623 = (-10L);
            int32_t **l_1629 = &p_2126->g_74;
            int32_t l_1642 = 0x1F7F5622L;
            int32_t l_1645[5][6][4] = {{{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)}},{{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)}},{{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)}},{{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)}},{{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)},{0x35008A35L,0x35008A35L,(-10L),(-3L)}}};
            int i, j, k;
            for (p_2126->g_342.f3 = (-4); (p_2126->g_342.f3 > 9); p_2126->g_342.f3 = safe_add_func_uint32_t_u_u(p_2126->g_342.f3, 4))
            { /* block id: 872 */
                int64_t l_1607 = (-4L);
                uint32_t *l_1608 = &p_2126->g_122[0][1];
                int32_t l_1611 = 0L;
                int16_t *l_1621 = &p_2126->g_1235.f3;
                uint64_t *l_1622 = &p_2126->g_17;
                int32_t *l_1624 = &l_1620[1];
                int32_t l_1638 = (-3L);
                int32_t l_1640 = 0L;
                int32_t l_1641 = 0x49D9298EL;
                int32_t l_1643 = 6L;
                int32_t l_1644 = 0x58BAC954L;
                int32_t l_1646 = 0x7593E64FL;
                int32_t l_1647[1];
                int16_t l_1653 = 0x0BDBL;
                int i;
                for (i = 0; i < 1; i++)
                    l_1647[i] = 0x2C8B8DD4L;
                for (p_2126->g_140 = 0; p_2126->g_140 < 7; p_2126->g_140 += 1)
                {
                    p_2126->g_1440[p_2126->g_140] = &p_2126->g_1441;
                }
                if ((safe_add_func_int8_t_s_s((safe_mod_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u(0x81L, ((l_1602 | ((*l_1622) ^= (safe_sub_func_uint16_t_u_u((l_1607 ^ (p_45 , (((*l_1608)++) == (l_1611 = FAKE_DIVERGE(p_2126->group_2_offset, get_group_id(2), 10))))), ((*l_1621) = ((((((p_43 || (+(safe_mul_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u(p_46, p_46)) , (safe_mul_func_int16_t_s_s(l_1607, (safe_sub_func_int64_t_s_s((l_1620[1] && (-2L)), p_43))))), p_46)))) > 18446744073709551606UL) > l_1607) || l_1602) , (*p_2126->g_413)) | p_44)))))) | l_1623))) > p_45), 0x93L)), 0L)))
                { /* block id: 878 */
                    int32_t ***l_1630[9] = {&p_2126->g_459,&p_2126->g_459,&p_2126->g_459,&p_2126->g_459,&p_2126->g_459,&p_2126->g_459,&p_2126->g_459,&p_2126->g_459,&p_2126->g_459};
                    int i;
                    (*p_2126->g_1627) = l_1624;
                    (**l_1629) = (p_2126->g_1628[4][0] == (0x4D0E91DF9B5100A3L != (0x33CAL || ((p_45 == ((l_1631[1] = l_1629) == (void*)0)) , (safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((**l_1629) >= ((safe_rshift_func_uint16_t_u_s((&p_2126->g_350 != (void*)0), 7)) , (**p_2126->g_637)))))))));
                }
                else
                { /* block id: 882 */
                    int8_t l_1636[6] = {0x31L,(-5L),0x31L,0x31L,(-5L),0x31L};
                    int32_t l_1637 = 0x0596EA56L;
                    int32_t l_1639[7] = {(-6L),0x22E5F17FL,(-6L),(-6L),0x22E5F17FL,(-6L),(-6L)};
                    int i;
                    --l_1648;
                    for (p_2126->g_1228.f3 = 0; (p_2126->g_1228.f3 <= (-19)); --p_2126->g_1228.f3)
                    { /* block id: 886 */
                        return l_1653;
                    }
                }
                (*l_1629) = &l_1620[1];
            }
            l_1620[1] |= (safe_mod_func_int64_t_s_s(p_43, (-1L)));
        }
    }
lbl_2044:
    for (p_2126->g_1228.f0 = 29; (p_2126->g_1228.f0 >= 9); --p_2126->g_1228.f0)
    { /* block id: 897 */
        uint8_t l_1660 = 1UL;
        int32_t l_1661 = 0L;
        int32_t l_1687 = (-3L);
        int32_t l_1689[10][10][2] = {{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}},{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}},{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}},{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}},{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}},{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}},{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}},{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}},{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}},{{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL},{0L,0x5FAB0ECEL}}};
        uint32_t l_1693 = 2UL;
        int8_t l_1741 = (-5L);
        struct S0 **l_1766[2][9] = {{&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404},{&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404,&p_2126->g_1404}};
        int32_t *l_1813 = &p_2126->g_589;
        uint64_t **l_1831 = &p_2126->g_1164;
        uint64_t ***l_1830[6][3] = {{&l_1831,&l_1831,&l_1831},{&l_1831,&l_1831,&l_1831},{&l_1831,&l_1831,&l_1831},{&l_1831,&l_1831,&l_1831},{&l_1831,&l_1831,&l_1831},{&l_1831,&l_1831,&l_1831}};
        int32_t *l_1886 = &l_1689[3][9][0];
        int64_t l_1924[9][6] = {{0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL},{0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL},{0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL},{0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL},{0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL},{0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL},{0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL},{0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL},{0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL,0x75201FEAE78DF1EFL}};
        int64_t ****l_1933 = &p_2126->g_1444;
        uint32_t l_1985 = 0x6A62810AL;
        int i, j, k;
        if ((FAKE_DIVERGE(p_2126->group_1_offset, get_group_id(1), 10) < p_45))
        { /* block id: 898 */
            p_2126->g_1659 = p_2126->g_1658;
            l_1661 &= l_1660;
        }
        else
        { /* block id: 901 */
            int32_t l_1662 = 0x006B462EL;
            uint8_t ***l_1677 = &p_2126->g_637;
            int32_t l_1690 = 0x4ACE8989L;
            int32_t l_1691[3][5] = {{0L,0x598D3ED8L,0L,0L,0x598D3ED8L},{0L,0x598D3ED8L,0L,0L,0x598D3ED8L},{0L,0x598D3ED8L,0L,0L,0x598D3ED8L}};
            int8_t l_1692 = 0x69L;
            int32_t *l_1719 = &p_2126->g_501[2][0].f1;
            int32_t **l_1718[5][8] = {{&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719},{&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719},{&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719},{&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719},{&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719,&l_1719}};
            int32_t *l_1723 = &l_1691[1][0];
            uint8_t *l_1749 = &p_2126->g_590;
            uint32_t *l_1750[3];
            uint64_t *l_1755[3][7] = {{&p_2126->g_392[0],&p_2126->g_392[7],(void*)0,&p_2126->g_1185,&p_2126->g_392[7],&p_2126->g_1185,(void*)0},{&p_2126->g_392[0],&p_2126->g_392[7],(void*)0,&p_2126->g_1185,&p_2126->g_392[7],&p_2126->g_1185,(void*)0},{&p_2126->g_392[0],&p_2126->g_392[7],(void*)0,&p_2126->g_1185,&p_2126->g_392[7],&p_2126->g_1185,(void*)0}};
            int16_t *l_1759 = &p_2126->g_842.f3;
            uint32_t l_1760 = 0x84559D2EL;
            int64_t l_1795 = 0L;
            int i, j;
            for (i = 0; i < 3; i++)
                l_1750[i] = &p_2126->g_1466;
            if (l_1662)
            { /* block id: 902 */
                uint64_t **l_1665 = (void*)0;
                uint64_t **l_1666 = (void*)0;
                uint64_t *l_1667 = &p_2126->g_1185;
                uint8_t l_1684 = 0x34L;
                int8_t *l_1685 = &p_2126->g_195;
                int32_t l_1686 = 0x57365468L;
                int32_t l_1688[2][9][10] = {{{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)}},{{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)},{0L,0x38720CAEL,(-1L),0x302F90D1L,0L,0x302F90D1L,(-1L),0x38720CAEL,0L,(-9L)}}};
                struct S0 **l_1696 = (void*)0;
                struct S0 **l_1697 = (void*)0;
                struct S0 **l_1698 = &p_2126->g_1404;
                int i, j, k;
                l_1686 |= (safe_mul_func_uint8_t_u_u((((l_1667 = &p_2126->g_890[1]) != (p_2126->g_1164 = (((safe_unary_minus_func_int64_t_s(((p_46 <= ((safe_mod_func_uint16_t_u_u((**p_2126->g_412), p_45)) > ((*l_1685) = ((((safe_sub_func_uint64_t_u_u(((safe_mod_func_uint64_t_u_u(0xA1A29474E3F5DB83L, ((l_1662 , (l_1677 != ((safe_lshift_func_int16_t_s_s((safe_add_func_uint16_t_u_u(4UL, (safe_rshift_func_int8_t_s_u(((l_1661 , 0x534C5BC4L) & 0x377C603AL), p_45)))), l_1684)) , (void*)0))) || l_1661))) , GROUP_DIVERGE(1, 1)), GROUP_DIVERGE(1, 1))) ^ 0UL) >= 0x05A9L) > l_1662)))) & p_46))) | (*p_2126->g_638)) , (void*)0))) || GROUP_DIVERGE(2, 1)), l_1661));
                l_1693--;
                (*l_1698) = (void*)0;
            }
            else
            { /* block id: 909 */
                int32_t *l_1717 = &l_1690;
                int64_t *l_1733 = &p_2126->g_990.f0;
                for (p_46 = 0; p_46 < 9; p_46 += 1)
                {
                    for (p_2126->g_1070.f5 = 0; p_2126->g_1070.f5 < 8; p_2126->g_1070.f5 += 1)
                    {
                        p_2126->g_197[p_46][p_2126->g_1070.f5] = 8UL;
                    }
                }
                if ((*p_2126->g_347))
                    break;
                for (p_2126->g_990.f1 = 1; (p_2126->g_990.f1 >= 0); p_2126->g_990.f1 -= 1)
                { /* block id: 914 */
                    int32_t **l_1720 = &l_1719;
                    uint64_t *l_1721 = &p_2126->g_890[0];
                    int32_t *l_1724 = (void*)0;
                    int i, j;
                    (1 + 1);
                }
                if (p_45)
                    continue;
            }
            (*l_1723) ^= (p_43 |= p_44);
            if ((safe_rshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((l_1741 >= ((((safe_rshift_func_int16_t_s_s(((*l_1759) = (safe_mul_func_uint8_t_u_u(((*l_1749) = ((safe_rshift_func_uint8_t_u_u(l_1748, p_46)) | (0x09E012D7E48E29F3L & (-1L)))), ((((*l_1723) = 0x99583381L) , ((safe_mod_func_uint64_t_u_u(((*l_1723) = (p_2126->g_1406 = (safe_rshift_func_uint16_t_u_s((**p_2126->g_412), 9)))), p_45)) & (((safe_lshift_func_uint16_t_u_s((0x8FL || l_1690), l_1687)) | p_2126->g_1532.f1) || (**p_2126->g_637)))) >= l_1758)))), p_45)) == l_1687) >= 0UL) <= l_1662)), 5)), l_1760)))
            { /* block id: 940 */
                int8_t l_1769 = 1L;
                int32_t l_1771 = (-1L);
                int32_t l_1773 = (-1L);
                int32_t l_1775 = 0x7DED98B1L;
                (*l_1723) = p_44;
                for (l_1602 = 0; (l_1602 != 13); l_1602++)
                { /* block id: 944 */
                    uint8_t l_1763 = 250UL;
                    int32_t l_1770 = 1L;
                    int32_t l_1774 = (-1L);
                    for (p_2126->g_1235.f3 = 1; (p_2126->g_1235.f3 >= 0); p_2126->g_1235.f3 -= 1)
                    { /* block id: 947 */
                        int i, j, k;
                        l_1763--;
                        (*l_1723) ^= l_1689[(p_2126->g_1235.f3 + 7)][(p_2126->g_1235.f3 + 4)][p_2126->g_1235.f3];
                        (*l_1723) |= ((void*)0 != l_1766[0][5]);
                    }
                    for (p_2126->g_837.f1 = 0; (p_2126->g_837.f1 != (-6)); --p_2126->g_837.f1)
                    { /* block id: 954 */
                        int8_t l_1772[3];
                        int32_t l_1776 = 0x5895048FL;
                        uint64_t l_1777 = 0UL;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1772[i] = 0x1FL;
                        ++l_1777;
                    }
                }
                p_43 = l_1773;
            }
            else
            { /* block id: 959 */
                int16_t l_1794 = 0x2E8EL;
                uint32_t **l_1796 = &p_2126->g_329;
                uint32_t ***l_1797 = &l_1796;
                for (p_2126->g_394 = 0; (p_2126->g_394 <= 2); p_2126->g_394 += 1)
                { /* block id: 962 */
                    return (**p_2126->g_637);
                }
                for (p_2126->g_1228.f4 = 0; (p_2126->g_1228.f4 == 18); p_2126->g_1228.f4 = safe_add_func_uint64_t_u_u(p_2126->g_1228.f4, 1))
                { /* block id: 967 */
                    uint8_t **l_1786 = &l_1749;
                    int64_t *l_1787 = &p_2126->g_842.f4;
                    int32_t l_1788 = 0x0E319B6CL;
                    int32_t l_1793 = 0x44CE8F92L;
                    l_1794 |= (safe_div_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((p_43 , ((((GROUP_DIVERGE(2, 1) != (((p_44 &= ((*l_1787) ^= (((**l_1677) = (*p_2126->g_637)) == ((*l_1786) = &p_45)))) & p_46) > (0UL == (l_1788 < 0x7D512B4CL)))) , ((((l_1788 = (l_1789 > (*l_1723))) , l_1790) == (void*)0) <= l_1792)) , l_1788) ^ p_46)), 0x98L)) & l_1793), p_46));
                    if (l_1795)
                        break;
                }
                l_1723 = &p_43;
                l_1689[5][1][1] ^= (p_43 || (((*l_1797) = l_1796) != ((((p_2126->g_1438 = ((((safe_unary_minus_func_uint16_t_u(((255UL | l_1794) & (safe_add_func_uint16_t_u_u(65532UL, (safe_sub_func_uint32_t_u_u((((*l_1759) |= ((safe_rshift_func_int16_t_s_u((+l_1794), 14)) <= l_1741)) || (safe_rshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s(l_1687, (safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((((0UL == l_1794) != p_44) >= p_43), p_43)), l_1794)))), 13))), l_1794))))))) || p_45) | 0x5EAE28ABL) , l_1813)) == l_1722) | (*l_1723)) , (void*)0)));
            }
            for (l_1795 = 0; (l_1795 >= (-9)); l_1795 = safe_sub_func_int64_t_s_s(l_1795, 5))
            { /* block id: 984 */
                int64_t **l_1833 = &p_2126->g_961[0][5];
                int32_t l_1864[8] = {8L,8L,8L,8L,8L,8L,8L,8L};
                struct S0 *l_1869 = (void*)0;
                int32_t l_1918 = 0L;
                int i;
                if (p_46)
                    break;
                if ((p_46 > ((safe_lshift_func_int16_t_s_u(1L, 9)) && (p_45 & (+(-1L))))))
                { /* block id: 986 */
                    uint64_t l_1818[9][2][2] = {{{0x26A39EB62D55C429L,18446744073709551615UL},{0x26A39EB62D55C429L,18446744073709551615UL}},{{0x26A39EB62D55C429L,18446744073709551615UL},{0x26A39EB62D55C429L,18446744073709551615UL}},{{0x26A39EB62D55C429L,18446744073709551615UL},{0x26A39EB62D55C429L,18446744073709551615UL}},{{0x26A39EB62D55C429L,18446744073709551615UL},{0x26A39EB62D55C429L,18446744073709551615UL}},{{0x26A39EB62D55C429L,18446744073709551615UL},{0x26A39EB62D55C429L,18446744073709551615UL}},{{0x26A39EB62D55C429L,18446744073709551615UL},{0x26A39EB62D55C429L,18446744073709551615UL}},{{0x26A39EB62D55C429L,18446744073709551615UL},{0x26A39EB62D55C429L,18446744073709551615UL}},{{0x26A39EB62D55C429L,18446744073709551615UL},{0x26A39EB62D55C429L,18446744073709551615UL}},{{0x26A39EB62D55C429L,18446744073709551615UL},{0x26A39EB62D55C429L,18446744073709551615UL}}};
                    int i, j, k;
                    l_1818[6][0][0]++;
                }
                else
                { /* block id: 988 */
                    uint32_t l_1828 = 4294967294UL;
                    int32_t l_1837 = 0L;
                    int16_t l_1838 = 6L;
                    int32_t *l_1858[1][4] = {{&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589}};
                    int i, j;
                    if ((safe_mod_func_int64_t_s_s((((safe_unary_minus_func_uint16_t_u(65530UL)) <= 1L) | ((l_1837 = ((safe_add_func_uint64_t_u_u(((((((safe_rshift_func_uint8_t_u_s(l_1828, 3)) , p_2126->g_1829) == (p_44 , l_1830[5][1])) & ((((l_1832[0][5] == (l_1833 = &p_2126->g_961[0][1])) == (safe_mod_func_uint16_t_u_u(l_1687, 1L))) , p_44) ^ (*p_2126->g_413))) , (*p_2126->g_1442)) , l_1836), p_45)) & FAKE_DIVERGE(p_2126->group_1_offset, get_group_id(1), 10))) , l_1838)), 0x196E09307BF11EDDL)))
                    { /* block id: 991 */
                        int32_t *l_1839 = &l_1689[9][8][0];
                        l_1839 = l_1839;
                        l_1839 = &p_43;
                    }
                    else
                    { /* block id: 994 */
                        int32_t **l_1859 = (void*)0;
                        int32_t **l_1860 = &p_2126->g_1438;
                        int32_t l_1862 = 0x4608E98CL;
                        int32_t l_1863 = (-1L);
                        p_43 = (safe_add_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((**p_2126->g_412), (((((void*)0 != &p_2126->g_1438) && (((safe_mul_func_uint16_t_u_u(65527UL, (safe_add_func_uint16_t_u_u((((safe_mul_func_uint32_t_u_u((&p_2126->g_1448 == (void*)0), (p_46 == (((safe_mul_func_uint8_t_u_u((((((safe_add_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u((l_1862 = (l_1858[0][2] != (l_1861[0][5] = ((*l_1860) = l_1858[0][2])))), GROUP_DIVERGE(2, 1))) == GROUP_DIVERGE(2, 1)), (*l_1723))), p_44)) >= 0x71BAL) > p_46) , 0x4BL) ^ 0x7BL), l_1863)) == p_44) < (*p_2126->g_638))))) <= p_44) > 0x52B3139AL), (*p_2126->g_413))))) == l_1828) != l_1864[3])) && p_44) && p_2126->g_171))), 65531UL));
                        if (l_1862)
                            break;
                        l_1689[5][6][0] = (safe_mul_func_uint8_t_u_u(l_1863, ((((((p_2126->g_1867[2][2] , l_1868) != l_1869) & ((safe_lshift_func_uint16_t_u_s(((*p_2126->g_413) |= ((safe_sub_func_int64_t_s_s(((*l_1723) = (l_1862 ^= (+5L))), (safe_add_func_int64_t_s_s(p_44, (GROUP_DIVERGE(0, 1) < p_44))))) & (safe_div_func_int32_t_s_s((l_1693 , (safe_sub_func_uint8_t_u_u(0xF7L, p_44))), p_45)))), 1)) & p_46)) & p_44) <= p_46) || 0xBEC9L)));
                    }
                }
                for (p_2126->g_1185 = 19; (p_2126->g_1185 != 37); p_2126->g_1185 = safe_add_func_int16_t_s_s(p_2126->g_1185, 4))
                { /* block id: 1008 */
                    uint8_t l_1889[2][2][4] = {{{5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL}},{{5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL}}};
                    int32_t l_1892[1][2][1];
                    int8_t l_1919[5][10][5] = {{{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL}},{{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL}},{{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL}},{{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL}},{{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL},{0L,0x58L,0x15L,0x75L,0x7BL}}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 2; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_1892[i][j][k] = 1L;
                        }
                    }
                    for (p_2126->g_840.f1 = (-18); (p_2126->g_840.f1 <= (-13)); p_2126->g_840.f1 = safe_add_func_uint32_t_u_u(p_2126->g_840.f1, 4))
                    { /* block id: 1011 */
                        int32_t *l_1885 = &l_1691[1][0];
                        int16_t *l_1916 = (void*)0;
                        int32_t l_1917[1][5];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_1917[i][j] = 0x047311EBL;
                        }
                        (*l_1868) = p_2126->g_1884[0][0];
                        l_1886 = l_1885;
                        l_1892[0][0][0] ^= ((l_1889[0][0][2] = (safe_add_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (&l_1869 == l_1766[0][5])))) , ((safe_mod_func_int16_t_s_s(((p_2126->g_392[7]--) & p_43), ((*l_1886) = (~((*l_1886) & (p_44 = (safe_rshift_func_int8_t_s_u(((((l_1864[3] = (safe_mod_func_uint32_t_u_u(((**p_2126->g_412) < (l_1917[0][2] ^= (safe_unary_minus_func_uint16_t_u(((!(safe_rshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((((safe_lshift_func_int16_t_s_u(((((*l_1759) ^= 0x6ABAL) < (*p_2126->g_413)) || p_46), (safe_add_func_int8_t_s_s(((((safe_sub_func_uint64_t_u_u(((safe_add_func_int64_t_s_s((safe_mod_func_uint16_t_u_u(((void*)0 == &l_1723), 0x81CDL)), 0x7A50190031234912L)) <= 18446744073709551615UL), p_43)) || (-10L)) >= p_2126->g_197[1][0]) | p_44), (-3L))))) , &p_2126->g_589) != &p_2126->g_589), 4)), 3)), p_46))) | 0L))))), p_2126->g_1532.f4))) < (-1L)) ^ (**p_2126->g_637)) ^ (-3L)), (*l_1885))))))))) > l_1918));
                    }
                    (*l_1723) = (-1L);
                    ++l_1921;
                }
            }
        }
        if (p_44)
        { /* block id: 1028 */
            p_43 &= p_44;
        }
        else
        { /* block id: 1030 */
            uint32_t *l_1936 = (void*)0;
            int32_t l_1944[4][7] = {{(-1L),0x0A132677L,1L,0x0A132677L,(-1L),(-1L),0x0A132677L},{(-1L),0x0A132677L,1L,0x0A132677L,(-1L),(-1L),0x0A132677L},{(-1L),0x0A132677L,1L,0x0A132677L,(-1L),(-1L),0x0A132677L},{(-1L),0x0A132677L,1L,0x0A132677L,(-1L),(-1L),0x0A132677L}};
            uint64_t ***l_1952 = &l_1831;
            int8_t l_1988 = 0x1EL;
            int i, j;
            if (l_1924[6][2])
            { /* block id: 1031 */
                return p_46;
            }
            else
            { /* block id: 1033 */
                uint32_t **l_1937 = &l_1936;
                int32_t l_1942 = (-8L);
                uint64_t *l_1943 = &p_2126->g_890[0];
                (*l_1868) = ((1L | (safe_mul_func_int8_t_s_s(p_45, (safe_rshift_func_uint8_t_u_s((+(safe_mod_func_uint16_t_u_u((((p_2126->g_589 = ((safe_div_func_int64_t_s_s(((l_1933 != ((safe_rshift_func_uint16_t_u_u((((*l_1937) = l_1936) == (p_44 , &p_2126->g_1466)), 9)) , (*l_1790))) , ((safe_mod_func_int8_t_s_s((-10L), ((safe_mod_func_uint16_t_u_u((((l_1942 , l_1943) == &p_2126->g_890[0]) & 1L), 5L)) , l_1944[3][0]))) == (**p_2126->g_412))), 0x42E2BE68C9B47AF9L)) , p_43)) , (void*)0) == (void*)0), (*p_2126->g_413)))), p_45))))) , (*l_1868));
            }
            for (p_2126->g_837.f3 = 3; (p_2126->g_837.f3 >= 1); p_2126->g_837.f3 -= 1)
            { /* block id: 1040 */
                int32_t l_1972[3];
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1972[i] = 0x734B38B2L;
                l_1944[p_2126->g_837.f3][(p_2126->g_837.f3 + 3)] &= (0x3155DB8EL != l_1924[p_2126->g_837.f3][(p_2126->g_837.f3 + 1)]);
                for (p_2126->g_990.f3 = 0; (p_2126->g_990.f3 <= 7); p_2126->g_990.f3 += 1)
                { /* block id: 1044 */
                    uint8_t l_1945 = 0xBAL;
                    uint64_t *l_1977 = &l_1789;
                    volatile int32_t *l_1980 = &p_2126->g_1237;
                    int i, j;
                    if (l_1748)
                        goto lbl_1736;
                    l_1945 ^= (&l_1933 == (void*)0);
                    if (((safe_mul_func_int16_t_s_s((((void*)0 != &p_2126->g_589) ^ (safe_add_func_int32_t_s_s(3L, l_1944[p_2126->g_837.f3][p_2126->g_837.f3]))), 0x1513L)) != 0xA5L))
                    { /* block id: 1047 */
                        int i, j;
                        if (p_2126->g_197[(p_2126->g_837.f3 + 2)][p_2126->g_990.f3])
                            break;
                        (*p_2126->g_1951) = p_2126->g_1950;
                    }
                    else
                    { /* block id: 1050 */
                        int8_t *l_1971 = &l_1792;
                        int16_t *l_1973 = &p_2126->g_342.f3;
                        int16_t *l_1974[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t l_1975[2];
                        uint32_t l_1976[6] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
                        volatile int32_t **l_1979[10][9] = {{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950},{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950},{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950},{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950},{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950},{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950},{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950},{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950},{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950},{&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950,&p_2126->g_1950,(void*)0,&p_2126->g_1950,&p_2126->g_1950}};
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_1975[i] = 0x2823590DL;
                        l_1944[p_2126->g_837.f3][(p_2126->g_837.f3 + 3)] = (((p_2126->g_1829 != l_1952) != (p_2126->g_197[(p_2126->g_837.f3 + 2)][(p_2126->g_837.f3 + 1)] = ((safe_lshift_func_int16_t_s_s(((((((-1L) || (p_2126->g_197[(p_2126->g_837.f3 + 5)][(p_2126->g_837.f3 + 3)] | (l_1975[0] = ((*l_1973) = ((l_1972[0] |= (safe_lshift_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_s(l_1924[p_2126->g_837.f3][(p_2126->g_837.f3 + 1)], l_1945)) == (safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s((l_1944[2][5] , (!(p_46 & ((safe_mul_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u(((*l_1971) = (GROUP_DIVERGE(0, 1) ^ ((safe_div_func_int8_t_s_s((safe_add_func_uint64_t_u_u(p_43, p_46)), l_1945)) && p_46))), (**p_2126->g_637))) > p_43), 0xBDL)) == 0xA86194B4543CBF0CL)))), p_46)), l_1944[p_2126->g_837.f3][p_2126->g_837.f3]))) , (**p_2126->g_412)), 6))) == l_1924[p_2126->g_837.f3][(p_2126->g_837.f3 + 1)]))))) != p_44) , p_44) == p_46) ^ 0x65776E65L), l_1944[0][0])) < l_1976[1]))) < l_1945);
                        p_43 = (&p_2126->g_1185 != (p_2126->g_1164 = &p_2126->g_890[1]));
                        l_1980 = (*p_2126->g_1951);
                        (*l_1980) = (safe_mul_func_uint8_t_u_u((p_45 || (((safe_sub_func_int8_t_s_s(l_1985, ((l_1924[(p_2126->g_990.f3 + 1)][(p_2126->g_837.f3 + 1)] &= ((FAKE_DIVERGE(p_2126->local_1_offset, get_local_id(1), 10) < (safe_mod_func_uint64_t_u_u(p_44, (p_45 && l_1988)))) ^ (**p_2126->g_1951))) ^ 18446744073709551615UL))) ^ p_45) & 65535UL)), l_1944[3][0]));
                    }
                }
            }
        }
    }
    for (p_2126->g_238 = (-14); (p_2126->g_238 > 12); ++p_2126->g_238)
    { /* block id: 1071 */
        int16_t l_1991 = 0x62BBL;
        int32_t l_1992[9][2][9] = {{{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL},{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL}},{{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL},{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL}},{{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL},{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL}},{{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL},{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL}},{{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL},{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL}},{{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL},{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL}},{{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL},{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL}},{{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL},{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL}},{{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL},{0x1A18D4A0L,(-1L),0x4C7ADD91L,0x4A3E22E1L,3L,0x06320521L,(-1L),0x4C7ADD91L,0x07EFD3BFL}}};
        uint16_t l_1993 = 0x990DL;
        uint16_t l_2025 = 0x2478L;
        uint64_t *l_2040 = (void*)0;
        int32_t *l_2046 = &p_2126->g_690;
        uint32_t l_2083 = 0x51C4F3B5L;
        int i, j, k;
        l_1993--;
        for (p_2126->g_1228.f0 = 0; (p_2126->g_1228.f0 <= 1); p_2126->g_1228.f0 += 1)
        { /* block id: 1075 */
            int16_t *l_2004 = &p_2126->g_842.f3;
            int32_t l_2012[5][4] = {{0x2347AF78L,0x770A46BAL,0x3A3EDC0EL,0x770A46BAL},{0x2347AF78L,0x770A46BAL,0x3A3EDC0EL,0x770A46BAL},{0x2347AF78L,0x770A46BAL,0x3A3EDC0EL,0x770A46BAL},{0x2347AF78L,0x770A46BAL,0x3A3EDC0EL,0x770A46BAL},{0x2347AF78L,0x770A46BAL,0x3A3EDC0EL,0x770A46BAL}};
            uint8_t *l_2021 = (void*)0;
            int64_t l_2022 = 1L;
            int64_t *l_2041 = (void*)0;
            int8_t **l_2048 = &p_2126->g_1011;
            int32_t *l_2049 = &l_1992[5][1][3];
            int i, j;
            if (((((((safe_div_func_uint32_t_u_u((((safe_add_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(p_44, ((+(FAKE_DIVERGE(p_2126->group_0_offset, get_group_id(0), 10) , ((*l_2004) = (safe_rshift_func_uint16_t_u_s(65527UL, 1))))) ^ l_2005))), ((l_2006 == (p_2126->g_2008 = (GROUP_DIVERGE(2, 1) , (void*)0))) | (l_2012[3][0] || 0UL)))) >= (safe_mod_func_int64_t_s_s((safe_div_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((l_1992[5][1][3] = ((((safe_mul_func_uint8_t_u_u((*p_2126->g_638), l_1992[3][1][2])) || p_44) < p_46) | p_46)), l_2022)), 0xEDC3L)), p_43))) < GROUP_DIVERGE(0, 1)), 0xFA3D070EL)) & l_1993) == p_43) > (*p_2126->g_413)) || l_2022) < 8UL))
            { /* block id: 1079 */
                int32_t *l_2023 = &p_2126->g_134;
                uint32_t **l_2039[10] = {&p_2126->g_2009,(void*)0,&p_2126->g_2009,&p_2126->g_2009,(void*)0,&p_2126->g_2009,&p_2126->g_2009,(void*)0,&p_2126->g_2009,&p_2126->g_2009};
                int i;
                (*p_2126->g_1627) = (l_2023 = &l_2012[4][2]);
                if (p_43)
                { /* block id: 1082 */
                    (*p_2126->g_421) = l_2024;
                    if (l_2025)
                        break;
                    (*p_2126->g_1950) |= l_1992[5][1][3];
                }
                else
                { /* block id: 1086 */
                    int64_t *l_2042 = &p_2126->g_805.f4;
                    int8_t *l_2043 = &l_1792;
                    for (p_2126->g_805.f0 = 0; (p_2126->g_805.f0 <= 1); p_2126->g_805.f0 += 1)
                    { /* block id: 1089 */
                        int32_t l_2026 = 0x26F3D060L;
                        int32_t l_2027 = 0x0A85C4E4L;
                        int i, j, k;
                        if ((*l_2023))
                            break;
                        p_2126->g_2028++;
                    }
                    (*l_1868) = ((safe_div_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((-1L) | (FAKE_DIVERGE(p_2126->group_0_offset, get_group_id(0), 10) & l_1991)), (safe_mod_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_s(((*l_2043) = ((l_2039[1] == (void*)0) == ((l_2041 = &p_44) != (l_2042 = l_2042)))), 6)) , p_43), FAKE_DIVERGE(p_2126->group_0_offset, get_group_id(0), 10))))), 0x4DL)) , (*l_1868));
                    if (l_1991)
                    { /* block id: 1097 */
                        if (p_2126->g_842.f3)
                            goto lbl_2044;
                        return p_45;
                    }
                    else
                    { /* block id: 1100 */
                        int32_t *l_2045 = &p_2126->g_78;
                        l_2045 = &p_43;
                        if ((*p_2126->g_1950))
                            continue;
                        if (p_43)
                            break;
                    }
                }
                l_2046 = (l_2023 = &p_43);
            }
            else
            { /* block id: 1108 */
                int32_t *l_2047 = &p_2126->g_78;
                l_2047 = &p_43;
                for (p_2126->g_15 = 0; (p_2126->g_15 <= 1); p_2126->g_15 += 1)
                { /* block id: 1112 */
                    (*l_2047) |= ((void*)0 == l_2048);
                }
            }
            l_2049 = &p_43;
            for (p_2126->g_1408 = 0; (p_2126->g_1408 <= 1); p_2126->g_1408 += 1)
            { /* block id: 1119 */
                uint8_t l_2084 = 255UL;
                int32_t l_2085[3][9] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}};
                int i, j, k;
                if (((*l_2046) |= ((void*)0 == &p_43)))
                { /* block id: 1121 */
                    for (p_2126->g_840.f4 = 0; (p_2126->g_840.f4 <= 1); p_2126->g_840.f4 += 1)
                    { /* block id: 1124 */
                        uint32_t *l_2052 = &l_1602;
                        (*l_2049) = (((--(*l_2052)) || (((0x87L & p_43) & p_43) <= (safe_add_func_int8_t_s_s((+p_43), (p_45 < ((*p_2126->g_1978) ^= (safe_add_func_uint32_t_u_u(p_43, ((0xD896L < (((safe_rshift_func_uint16_t_u_u(((*l_2046) , (p_45 , 0xDC4EL)), p_44)) <= p_45) | 0x297DL)) < p_45))))))))) , (*l_2049));
                    }
                }
                else
                { /* block id: 1129 */
                    int8_t l_2062 = 0x0FL;
                    int32_t l_2063 = 0x0EC46ECEL;
                    int32_t l_2064 = 0L;
                    int32_t *l_2068[6] = {&l_2063,(void*)0,&l_2063,&l_2063,(void*)0,&l_2063};
                    int i;
                    for (p_2126->g_1228.f1 = 0; (p_2126->g_1228.f1 <= 1); p_2126->g_1228.f1 += 1)
                    { /* block id: 1132 */
                        int32_t l_2061[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                        int i, j, k;
                        if (p_2126->g_1658.f3)
                            goto lbl_2044;
                        l_2065--;
                        l_2068[0] = ((*p_2126->g_1627) = &l_1992[5][1][3]);
                    }
                    for (p_2126->g_17 = 0; (p_2126->g_17 == 30); p_2126->g_17++)
                    { /* block id: 1140 */
                        if ((**p_2126->g_1951))
                            break;
                    }
                    for (l_2022 = 1; (l_2022 >= 0); l_2022 -= 1)
                    { /* block id: 1145 */
                        int i;
                        if (p_2126->g_842.f4)
                            goto lbl_1736;
                        if (p_46)
                            continue;
                        l_2049 = &p_43;
                    }
                }
                p_2126->g_134 ^= ((safe_div_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((safe_sub_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u(((*l_2046) , (safe_mul_func_int8_t_s_s(p_2126->g_730.f2, l_2083))), (l_2084 <= l_2085[0][8]))) < (((((safe_add_func_int64_t_s_s(((l_2041 = &p_44) == &p_44), GROUP_DIVERGE(2, 1))) >= l_2085[0][7]) > ((((safe_lshift_func_uint8_t_u_s(0x1CL, 3)) < (-9L)) <= 0x1E3957D01596AA2BL) < p_45)) ^ (*l_2046)) >= 0xAFL)), (*p_2126->g_413))) ^ (*p_2126->g_413)), (*l_2049))), 65535UL)), (*l_2046))) ^ p_43);
                (*l_2049) = (safe_lshift_func_int8_t_s_u(p_43, 5));
                (*l_2046) |= ((*p_2126->g_638) >= FAKE_DIVERGE(p_2126->group_1_offset, get_group_id(1), 10));
            }
        }
        return (**p_2126->g_637);
    }
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_2126->g_691 p_2126->g_1554 p_2126->g_394 p_2126->g_134 p_2126->g_78
 * writes: p_2126->g_691 p_2126->g_690 p_2126->g_394 p_2126->g_134 p_2126->g_78
 */
int64_t  func_47(uint32_t  p_48, uint64_t * p_49, uint32_t  p_50, int16_t  p_51, struct S1 * p_2126)
{ /* block id: 840 */
    int32_t *l_1556[10] = {&p_2126->g_394,&p_2126->g_394,&p_2126->g_394,&p_2126->g_394,&p_2126->g_394,&p_2126->g_394,&p_2126->g_394,&p_2126->g_394,&p_2126->g_394,&p_2126->g_394};
    int32_t *l_1558 = &p_2126->g_78;
    int8_t l_1582 = 0x51L;
    int16_t l_1584 = 0x2C58L;
    uint32_t l_1588[1];
    int i;
    for (i = 0; i < 1; i++)
        l_1588[i] = 4UL;
    for (p_2126->g_691 = 0; (p_2126->g_691 <= 2); p_2126->g_691 += 1)
    { /* block id: 843 */
        int32_t *l_1555[5] = {&p_2126->g_134,&p_2126->g_134,&p_2126->g_134,&p_2126->g_134,&p_2126->g_134};
        int32_t **l_1557[1][10] = {{&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74}};
        int16_t l_1581 = 3L;
        int16_t l_1583 = 8L;
        int i, j;
        l_1558 = (l_1556[2] = l_1555[4]);
        if (p_50)
        { /* block id: 846 */
            uint8_t *l_1561[1][3];
            int32_t l_1562 = 0x0A7187A1L;
            int32_t l_1563 = 1L;
            uint16_t l_1564 = 0x82B6L;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_1561[i][j] = (void*)0;
            }
            (*p_2126->g_1554) = (safe_mul_func_uint8_t_u_u((l_1562 = (!(l_1564--))), FAKE_DIVERGE(p_2126->local_2_offset, get_local_id(2), 10)));
        }
        else
        { /* block id: 850 */
            uint8_t l_1567[3];
            int32_t l_1570 = 0x63D71E1CL;
            int32_t l_1571 = 0x6C6D8CE1L;
            int32_t l_1572 = (-1L);
            int32_t l_1573 = 0x4DA4CF5EL;
            int32_t l_1574 = (-10L);
            int32_t l_1575[6][7] = {{7L,0x2B1E61DDL,0x22E86EEEL,0x14B7EAABL,0x72F9DBBCL,0x14B7EAABL,0x22E86EEEL},{7L,0x2B1E61DDL,0x22E86EEEL,0x14B7EAABL,0x72F9DBBCL,0x14B7EAABL,0x22E86EEEL},{7L,0x2B1E61DDL,0x22E86EEEL,0x14B7EAABL,0x72F9DBBCL,0x14B7EAABL,0x22E86EEEL},{7L,0x2B1E61DDL,0x22E86EEEL,0x14B7EAABL,0x72F9DBBCL,0x14B7EAABL,0x22E86EEEL},{7L,0x2B1E61DDL,0x22E86EEEL,0x14B7EAABL,0x72F9DBBCL,0x14B7EAABL,0x22E86EEEL},{7L,0x2B1E61DDL,0x22E86EEEL,0x14B7EAABL,0x72F9DBBCL,0x14B7EAABL,0x22E86EEEL}};
            uint8_t l_1576[2];
            int32_t l_1579 = 0x604CE3D2L;
            int32_t l_1580[3][1];
            uint32_t l_1585 = 0x327E9357L;
            int i, j;
            for (i = 0; i < 3; i++)
                l_1567[i] = 0xCEL;
            for (i = 0; i < 2; i++)
                l_1576[i] = 0x92L;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1580[i][j] = 0L;
            }
            --l_1567[2];
            l_1576[0]++;
            l_1570 = ((*l_1558) &= p_51);
            l_1585++;
        }
        return p_50;
    }
    l_1588[0] &= ((*l_1558) ^= 6L);
    return p_50;
}


/* ------------------------------------------ */
/* 
 * reads : p_2126->g_347 p_2126->g_1408 p_2126->g_1440 p_2126->g_1441 p_2126->g_413 p_2126->g_115 p_2126->g_345 p_2126->g_342 p_2126->g_730.f0 p_2126->g_134 p_2126->g_590 p_2126->g_990.f4 p_2126->g_730.f4 p_2126->g_805.f3 p_2126->g_277 p_2126->g_195 p_2126->g_1554 p_2126->g_690
 * writes: p_2126->g_134 p_2126->g_342.f3 p_2126->g_1107 p_2126->g_17 p_2126->g_392 p_2126->g_1532 p_2126->g_730.f0 p_2126->g_590 p_2126->g_990.f4 p_2126->g_690 p_2126->g_730.f4 p_2126->g_805.f3 p_2126->g_195
 */
uint32_t  func_53(uint64_t * p_54, uint32_t * p_55, int32_t  p_56, uint64_t  p_57, struct S1 * p_2126)
{ /* block id: 796 */
    int32_t l_1493 = 0x73B653E6L;
    int64_t ****l_1500 = &p_2126->g_1440[3];
    int64_t ****l_1502 = &p_2126->g_1444;
    int64_t *****l_1501 = &l_1502;
    uint8_t *l_1503 = (void*)0;
    int32_t l_1504[3][8][4] = {{{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL}},{{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL}},{{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL},{1L,8L,0x1C902378L,0x720AFEADL}}};
    uint8_t *l_1525 = (void*)0;
    int32_t l_1526 = 0x496F9D6FL;
    int16_t *l_1527 = (void*)0;
    int16_t *l_1528 = &p_2126->g_342.f3;
    int8_t *l_1529 = &p_2126->g_1107;
    struct S0 *l_1531[5][4][5] = {{{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]}},{{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]}},{{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]}},{{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]}},{{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]},{&p_2126->g_610[0],&p_2126->g_610[3],(void*)0,&p_2126->g_610[3],&p_2126->g_610[0]}}};
    int i, j, k;
    p_2126->g_1532 = ((((*p_2126->g_347) = (l_1493 = (&p_2126->g_347 == (void*)0))) <= (((*p_54) = (safe_add_func_int16_t_s_s((safe_add_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2126->global_2_offset, get_global_id(2), 10), (p_57 ^ (l_1504[1][5][3] |= (l_1500 == ((*l_1501) = l_1500)))))), ((((safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 10)), (((*p_55) >= ((safe_add_func_int16_t_s_s((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_2126->group_2_offset, get_group_id(2), 10), (safe_mul_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(((*l_1529) = (safe_rshift_func_int16_t_s_s(((*l_1528) = ((!((safe_sub_func_uint64_t_u_u((((**l_1500) != (**l_1500)) && ((void*)0 != l_1525)), l_1526)) ^ 0x03E7F40BL)) < (*p_2126->g_413))), 8))), l_1526)), 0x1AC0L)))), p_56)), p_57)) == FAKE_DIVERGE(p_2126->global_0_offset, get_global_id(0), 10))) == GROUP_DIVERGE(2, 1)))) || p_56) , l_1526) & l_1526))), l_1526))) && 0x0E163F6665EB3BC9L)) , (*p_2126->g_345));
    for (p_2126->g_730.f0 = (-29); (p_2126->g_730.f0 <= (-28)); p_2126->g_730.f0 = safe_add_func_uint32_t_u_u(p_2126->g_730.f0, 2))
    { /* block id: 807 */
        uint64_t **l_1535 = &p_2126->g_1164;
        uint64_t ***l_1536 = &l_1535;
        int64_t ***l_1547 = &p_2126->g_960;
        int32_t l_1548 = 4L;
        int32_t l_1551 = 1L;
        (*l_1536) = l_1535;
        for (p_2126->g_134 = 0; (p_2126->g_134 <= 4); p_2126->g_134 += 1)
        { /* block id: 811 */
            uint32_t l_1541 = 0x55C647BDL;
            int64_t ***l_1546 = &p_2126->g_960;
            for (p_2126->g_590 = 3; (p_2126->g_590 <= 9); p_2126->g_590 += 1)
            { /* block id: 814 */
                int64_t l_1537 = (-8L);
                for (p_2126->g_990.f4 = 4; (p_2126->g_990.f4 >= 1); p_2126->g_990.f4 -= 1)
                { /* block id: 817 */
                    int32_t *l_1540 = &p_2126->g_690;
                    (*l_1540) = l_1537;
                    return p_57;
                }
                if (l_1541)
                    break;
            }
            for (p_2126->g_730.f4 = 0; (p_2126->g_730.f4 >= 0); p_2126->g_730.f4 -= 1)
            { /* block id: 825 */
                int i, j;
                for (p_2126->g_805.f3 = 0; (p_2126->g_805.f3 <= 0); p_2126->g_805.f3 += 1)
                { /* block id: 828 */
                    int i, j;
                    return p_2126->g_277[(p_2126->g_730.f4 + 1)][p_2126->g_730.f4];
                }
                (*p_2126->g_1554) |= (safe_lshift_func_uint16_t_u_u(((p_2126->g_277[(p_2126->g_730.f4 + 1)][p_2126->g_730.f4] <= ((~(l_1504[1][5][3] & (l_1548 |= (safe_rshift_func_uint8_t_u_s(1UL, ((*l_1529) = ((p_56 , l_1546) == l_1547))))))) != ((safe_mul_func_uint8_t_u_u((l_1551 | 0x50EFL), (p_2126->g_195 ^= ((p_57 & GROUP_DIVERGE(1, 1)) && p_57)))) & (*p_55)))) == (*p_2126->g_413)), 1));
            }
            return p_57;
        }
    }
    return l_1526;
}


/* ------------------------------------------ */
/* 
 * reads : p_2126->g_17 p_2126->g_990.f4 p_2126->g_392 p_2126->g_990.f3 p_2126->g_134 p_2126->g_1271 p_2126->g_1235.f3 p_2126->g_394 p_2126->g_347 p_2126->g_887 p_2126->g_413 p_2126->g_115 p_2126->g_412 p_2126->g_637 p_2126->g_638 p_2126->g_13 p_2126->g_170 p_2126->g_1070.f2 p_2126->g_1404 p_2126->g_1408 p_2126->g_421 p_2126->g_422 p_2126->g_730.f0 p_2126->g_312 p_2126->g_690 p_2126->g_840.f0 p_2126->g_590 p_2126->g_1431 p_2126->g_1440 p_2126->g_842.f1 p_2126->g_152 p_2126->g_74 p_2126->g_78 p_2126->g_730.f4 p_2126->g_805 p_2126->g_1463 p_2126->g_1228.f0 p_2126->g_1464 p_2126->g_1406 p_2126->g_987 p_2126->g_837.f1 p_2126->g_342.f3 p_2126->g_342.f4 p_2126->g_589 p_2126->g_195
 * writes: p_2126->g_840.f0 p_2126->g_394 p_2126->g_990.f4 p_2126->g_392 p_2126->g_987 p_2126->g_1228.f3 p_2126->g_122 p_2126->g_134 p_2126->g_730.f0 p_2126->g_343 p_2126->g_837.f1 p_2126->g_342.f3 p_2126->g_342.f4 p_2126->g_115 p_2126->g_277 p_2126->g_590 p_2126->g_805.f0 p_2126->g_1338 p_2126->g_197 p_2126->g_1228.f1 p_2126->g_1406 p_2126->g_589 p_2126->g_195 p_2126->g_842.f1 p_2126->g_74 p_2126->g_1235.f1 p_2126->g_1432 p_2126->g_1438 p_2126->g_955.f4 p_2126->g_1440 p_2126->g_1444 p_2126->g_842.f3 p_2126->g_1448 p_2126->g_805 p_2126->g_1464 p_2126->g_1466 p_2126->g_1282
 */
uint64_t * func_58(uint64_t * p_59, int64_t  p_60, struct S1 * p_2126)
{ /* block id: 632 */
    uint32_t l_1243 = 0xFD26F5CCL;
    uint16_t l_1267 = 7UL;
    int32_t l_1270 = (-1L);
    int32_t l_1281 = (-5L);
    int32_t *l_1295 = &l_1270;
    struct S0 *l_1307 = &p_2126->g_805;
    int32_t l_1352 = 1L;
    int32_t l_1356 = 0x60196801L;
    int32_t l_1362 = 0L;
    int32_t l_1371 = 6L;
    int64_t ***l_1445 = &p_2126->g_1441;
    int32_t l_1481 = (-9L);
lbl_1324:
    for (p_2126->g_840.f0 = 7; (p_2126->g_840.f0 >= 0); p_2126->g_840.f0 -= 1)
    { /* block id: 635 */
        int32_t *l_1241 = &p_2126->g_394;
        int32_t *l_1242 = &p_2126->g_134;
        int64_t *l_1268 = &p_2126->g_990.f4;
        uint64_t *l_1269 = &p_2126->g_392[4];
        uint8_t *l_1272 = &p_2126->g_987;
        int16_t *l_1277 = &p_2126->g_1228.f3;
        uint32_t *l_1280 = &p_2126->g_122[0][1];
        int32_t l_1289 = 0x1E8EA19BL;
        int32_t l_1290 = (-1L);
        int i;
        l_1243--;
        l_1270 = (((((safe_unary_minus_func_uint16_t_u((safe_mul_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u(l_1243, (((*l_1269) ^= ((safe_add_func_uint8_t_u_u((((*l_1241) = l_1243) <= ((*l_1268) |= (safe_lshift_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s(((safe_div_func_uint64_t_u_u((~6UL), 0x07EFB04687948B18L)) | ((l_1243 <= (safe_rshift_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((l_1243 || (safe_sub_func_uint16_t_u_u(l_1267, (~p_60)))), (0L && 0xCFA5339BL))), 6))) != p_60)), p_60)), (-10L))) != p_60) && (*p_59)), 4)))), l_1243)) , 0x87662D75CD0F2E15L)) == p_2126->g_990.f3))), 5UL)))) & l_1243) , (*p_59)) , l_1267) >= (*l_1242));
        l_1281 |= ((0UL < ((p_2126->g_1271 , ((*l_1272) = p_60)) || (((*l_1280) = (l_1270 > ((((safe_lshift_func_int16_t_s_s(p_2126->g_1235.f3, (safe_sub_func_int16_t_s_s(((*l_1277) = 1L), (((&p_2126->g_312[1] != &p_2126->g_689) && (safe_lshift_func_uint16_t_u_s(l_1270, (*l_1242)))) | (*l_1241)))))) , (*l_1241)) && (*l_1242)) >= l_1243))) != 9L))) ^ p_60);
        for (p_2126->g_987 = 1; (p_2126->g_987 <= 9); p_2126->g_987 += 1)
        { /* block id: 647 */
            int32_t *l_1283 = &p_2126->g_134;
            int32_t *l_1284 = &p_2126->g_78;
            int32_t *l_1285 = (void*)0;
            int32_t *l_1286 = &l_1270;
            int32_t *l_1287 = &p_2126->g_134;
            int32_t *l_1288[7] = {&l_1270,&p_2126->g_134,&l_1270,&l_1270,&p_2126->g_134,&l_1270,&l_1270};
            uint32_t l_1291 = 0xB8CEEF02L;
            int i;
            (*l_1242) = (-1L);
            l_1242 = l_1241;
            ++l_1291;
        }
    }
    (*l_1295) &= (((0x61L >= l_1281) > (0UL <= (safe_unary_minus_func_int16_t_s(0x14DCL)))) , (*p_2126->g_347));
    if ((safe_sub_func_int8_t_s_s((0x96FBL & (*l_1295)), ((void*)0 != &l_1270))))
    { /* block id: 654 */
        uint64_t l_1302 = 0xE849A50ADBC45569L;
        int32_t l_1346 = 0x2D686A20L;
        int32_t l_1358 = 0x3AC414A0L;
        int32_t l_1364 = 6L;
        int32_t l_1368 = (-9L);
        int32_t l_1369[7][3][10] = {{{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L}},{{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L}},{{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L}},{{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L}},{{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L}},{{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L}},{{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L},{3L,8L,8L,0x516B2577L,0x05652E5DL,0L,0x6AEDB19AL,0x4DE57A9AL,0L,0L}}};
        uint32_t l_1372 = 0x88F95294L;
        uint32_t **l_1390 = &p_2126->g_329;
        int32_t l_1407 = 0x78992ADFL;
        uint8_t l_1410 = 0x63L;
        int8_t **l_1449 = &p_2126->g_1011;
        int32_t l_1472[1][10] = {{0x2213DCCBL,0x2213DCCBL,0x2213DCCBL,0x2213DCCBL,0x2213DCCBL,0x2213DCCBL,0x2213DCCBL,0x2213DCCBL,0x2213DCCBL,0x2213DCCBL}};
        int i, j, k;
        if ((((*l_1295) , (void*)0) != l_1295))
        { /* block id: 655 */
lbl_1427:
            for (p_2126->g_987 = 10; (p_2126->g_987 < 27); ++p_2126->g_987)
            { /* block id: 658 */
                return p_59;
            }
        }
        else
        { /* block id: 661 */
            int32_t *l_1300 = &p_2126->g_134;
            int32_t *l_1301 = &p_2126->g_134;
            ++l_1302;
        }
lbl_1430:
        for (p_2126->g_730.f0 = 0; (p_2126->g_730.f0 < (-23)); --p_2126->g_730.f0)
        { /* block id: 666 */
            struct S0 **l_1308[3];
            int i;
            for (i = 0; i < 3; i++)
                l_1308[i] = &l_1307;
            (*l_1295) = 0x3A3873A8L;
            (*p_2126->g_887) = l_1307;
        }
        for (p_2126->g_837.f1 = (-19); (p_2126->g_837.f1 == (-28)); p_2126->g_837.f1 = safe_sub_func_uint8_t_u_u(p_2126->g_837.f1, 3))
        { /* block id: 672 */
            int32_t *l_1313 = &l_1281;
            for (p_2126->g_342.f3 = 3; (p_2126->g_342.f3 != (-23)); --p_2126->g_342.f3)
            { /* block id: 675 */
                int32_t **l_1314 = &l_1313;
                int64_t *l_1318 = &p_2126->g_805.f0;
                int64_t **l_1317 = &l_1318;
                (*l_1314) = l_1313;
                for (p_2126->g_342.f4 = 6; (p_2126->g_342.f4 >= 1); p_2126->g_342.f4 -= 1)
                { /* block id: 679 */
                    uint16_t *l_1321 = &p_2126->g_277[0][0];
                    int64_t **l_1323 = &l_1318;
                    int64_t ***l_1322 = &l_1323;
                    if ((safe_lshift_func_int8_t_s_u((l_1317 != ((safe_sub_func_int16_t_s_s(1L, ((*l_1321) = ((*p_2126->g_413) &= 0x78BBL)))) , ((*l_1322) = (void*)0))), 5)))
                    { /* block id: 683 */
                        (*l_1295) &= (*l_1313);
                    }
                    else
                    { /* block id: 685 */
                        if (p_2126->g_134)
                            goto lbl_1324;
                        (*l_1313) ^= ((*l_1295) = (safe_rshift_func_int16_t_s_s(0L, ((p_60 , (**p_2126->g_412)) ^ ((void*)0 == &p_2126->g_890[0])))));
                    }
                }
            }
        }
        for (p_2126->g_730.f0 = 0; (p_2126->g_730.f0 <= 0); p_2126->g_730.f0 += 1)
        { /* block id: 695 */
            int32_t *l_1328 = &p_2126->g_690;
            int16_t *l_1337 = &p_2126->g_1228.f3;
            int16_t *l_1344 = &p_2126->g_842.f3;
            int32_t l_1348 = 6L;
            int32_t l_1353 = (-5L);
            int32_t l_1354 = 0x3022DAF1L;
            int32_t l_1355[5] = {0x6A041F5DL,0x6A041F5DL,0x6A041F5DL,0x6A041F5DL,0x6A041F5DL};
            int64_t l_1366[9] = {0x7CB5F25E3C6178B9L,(-1L),0x7CB5F25E3C6178B9L,0x7CB5F25E3C6178B9L,(-1L),0x7CB5F25E3C6178B9L,0x7CB5F25E3C6178B9L,(-1L),0x7CB5F25E3C6178B9L};
            uint8_t **l_1409[2];
            uint32_t l_1482[1][7] = {{4294967286UL,4294967286UL,4294967286UL,4294967286UL,4294967286UL,4294967286UL,4294967286UL}};
            int i, j;
            for (i = 0; i < 2; i++)
                l_1409[i] = (void*)0;
            for (p_2126->g_590 = 0; (p_2126->g_590 <= 6); p_2126->g_590 += 1)
            { /* block id: 698 */
                if (l_1302)
                    break;
            }
            if (p_60)
                break;
            for (l_1270 = 4; (l_1270 >= 0); l_1270 -= 1)
            { /* block id: 704 */
                int32_t **l_1327[4][7];
                int32_t l_1361 = 6L;
                int i, j;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 7; j++)
                        l_1327[i][j] = &p_2126->g_74;
                }
                l_1328 = (void*)0;
                for (p_2126->g_805.f0 = 0; (p_2126->g_805.f0 <= 0); p_2126->g_805.f0 += 1)
                { /* block id: 708 */
                    int16_t **l_1339 = (void*)0;
                    int16_t **l_1340 = &l_1337;
                    uint8_t *l_1341 = (void*)0;
                    uint8_t *l_1342 = (void*)0;
                    uint8_t *l_1343[3][2][5] = {{{&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],(void*)0,&p_2126->g_197[6][5]},{&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],(void*)0,&p_2126->g_197[6][5]}},{{&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],(void*)0,&p_2126->g_197[6][5]},{&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],(void*)0,&p_2126->g_197[6][5]}},{{&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],(void*)0,&p_2126->g_197[6][5]},{&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],&p_2126->g_13[2][7][1],(void*)0,&p_2126->g_197[6][5]}}};
                    int32_t l_1345 = 0L;
                    int32_t l_1350 = 0x3AB5AB60L;
                    int32_t l_1351 = 0x5028B2E9L;
                    int32_t l_1357 = 0x0D8542DCL;
                    int32_t l_1359 = 0x79288D10L;
                    int32_t l_1360 = (-1L);
                    int32_t *l_1402 = (void*)0;
                    int i, j, k;
                    if ((3L || (0xEEB9L > (safe_lshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_u((((p_60 < ((safe_lshift_func_int8_t_s_u((((*l_1340) = (p_2126->g_1338[0] = ((safe_rshift_func_uint16_t_u_s((+p_60), 7)) , l_1337))) == (((p_2126->g_197[5][5] = (**p_2126->g_637)) || p_60) , (((0x42B76642FD9C617AL > ((-1L) && (*p_2126->g_347))) , 0x0C19L) , l_1344))), l_1345)) >= l_1345)) && (**p_2126->g_637)) | p_60), FAKE_DIVERGE(p_2126->group_0_offset, get_group_id(0), 10))), 13)))))
                    { /* block id: 712 */
                        int16_t l_1347 = 0x59A2L;
                        int32_t l_1349 = 0x46AB3231L;
                        int32_t l_1363 = 5L;
                        int32_t l_1365 = 1L;
                        int32_t l_1367 = 0x0B6CE130L;
                        int32_t l_1370 = 0x7E72C335L;
                        int32_t *l_1377 = &p_2126->g_1228.f1;
                        int16_t l_1380 = 0L;
                        uint32_t **l_1389[8][8] = {{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329}};
                        struct S0 *l_1403 = &p_2126->g_805;
                        uint16_t *l_1405[9] = {&p_2126->g_277[1][0],&p_2126->g_277[1][0],&p_2126->g_277[1][0],&p_2126->g_277[1][0],&p_2126->g_277[1][0],&p_2126->g_277[1][0],&p_2126->g_277[1][0],&p_2126->g_277[1][0],&p_2126->g_277[1][0]};
                        int i, j;
                        l_1372++;
                        l_1410 = (l_1350 = ((safe_div_func_uint64_t_u_u((((FAKE_DIVERGE(p_2126->local_1_offset, get_local_id(1), 10) && ((((((*l_1377) = (*l_1295)) , (safe_add_func_uint64_t_u_u(l_1380, (((safe_add_func_uint32_t_u_u((FAKE_DIVERGE(p_2126->local_2_offset, get_local_id(2), 10) , (safe_rshift_func_int8_t_s_u((p_60 == FAKE_DIVERGE(p_2126->global_1_offset, get_global_id(1), 10)), (l_1364 = (((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(((l_1389[1][5] != l_1390) && (p_2126->g_13[2][7][1] , ((p_2126->g_170 , ((FAKE_DIVERGE(p_2126->global_0_offset, get_global_id(0), 10) , (safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((safe_unary_minus_func_uint16_t_u((p_2126->g_1406 = (((((~(safe_add_func_int64_t_s_s(((safe_div_func_uint16_t_u_u(((*p_2126->g_413) |= (safe_mod_func_uint32_t_u_u(((void*)0 != l_1402), p_60))), l_1372)) != p_2126->g_1070.f2), l_1349))) , l_1370) ^ 0x94E052FC3A2E083FL) , l_1403) == p_2126->g_1404)))) | p_60), p_60)), 4))) , &p_2126->g_328)) == &p_2126->g_328))), l_1407)), p_2126->g_1408)) != GROUP_DIVERGE(0, 1)) > p_60))))), p_2126->g_392[4])) , (*p_2126->g_421)) != l_1409[0])))) > 18446744073709551615UL) , 1L) <= 0x79F94DDAFFD59A45L)) , l_1365) && l_1349), p_60)) <= 2L));
                    }
                    else
                    { /* block id: 720 */
                        return p_59;
                    }
                    for (p_2126->g_589 = 2; (p_2126->g_589 <= 6); p_2126->g_589 += 1)
                    { /* block id: 725 */
                        int32_t l_1421 = (-1L);
                        uint32_t *l_1422 = &p_2126->g_122[5][0];
                        int i;
                        l_1354 = (GROUP_DIVERGE(0, 1) != (safe_sub_func_int64_t_s_s(p_2126->g_312[(p_2126->g_730.f0 + 1)], (p_2126->g_690 ^ (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(0x54L, p_60)), (((*l_1422) = (0x6258L == (safe_sub_func_int16_t_s_s((p_60 | (p_60 ^ (safe_mod_func_int32_t_s_s(l_1369[1][1][5], (l_1421 |= l_1360))))), FAKE_DIVERGE(p_2126->local_1_offset, get_local_id(1), 10))))) , 0L)))))));
                    }
                    for (p_2126->g_195 = 0; (p_2126->g_195 >= 0); p_2126->g_195 -= 1)
                    { /* block id: 732 */
                        int32_t l_1423 = 0x2D62F798L;
                        int8_t *l_1426[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1426[i] = (void*)0;
                        l_1423 ^= (-6L);
                        l_1345 = (safe_mul_func_int8_t_s_s((l_1346 ^= p_60), p_60));
                    }
                }
            }
            if (p_2126->g_840.f0)
                goto lbl_1427;
            for (p_2126->g_342.f4 = 0; (p_2126->g_342.f4 >= 0); p_2126->g_342.f4 -= 1)
            { /* block id: 742 */
                int32_t *l_1435 = &p_2126->g_589;
                int32_t l_1457 = 0x2AFA190CL;
                int32_t l_1458 = 0x6D25698FL;
                int32_t l_1459 = 1L;
                uint32_t l_1487[1][4][9] = {{{0x395D090FL,4294967293UL,0xFB10FA12L,4294967293UL,0x395D090FL,0x395D090FL,4294967293UL,0xFB10FA12L,4294967293UL},{0x395D090FL,4294967293UL,0xFB10FA12L,4294967293UL,0x395D090FL,0x395D090FL,4294967293UL,0xFB10FA12L,4294967293UL},{0x395D090FL,4294967293UL,0xFB10FA12L,4294967293UL,0x395D090FL,0x395D090FL,4294967293UL,0xFB10FA12L,4294967293UL},{0x395D090FL,4294967293UL,0xFB10FA12L,4294967293UL,0x395D090FL,0x395D090FL,4294967293UL,0xFB10FA12L,4294967293UL}}};
                int i, j, k;
                for (p_2126->g_842.f1 = 7; (p_2126->g_842.f1 >= 0); p_2126->g_842.f1 -= 1)
                { /* block id: 745 */
                    int32_t **l_1428 = &p_2126->g_74;
                    int32_t *l_1437[9] = {&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589};
                    int32_t **l_1436[10] = {&l_1437[5],&l_1437[5],&l_1437[5],&l_1437[5],&l_1437[5],&l_1437[5],&l_1437[5],&l_1437[5],&l_1437[5],&l_1437[5]};
                    int64_t *l_1439 = &p_2126->g_955.f4;
                    int64_t ****l_1443 = &p_2126->g_1440[1];
                    int8_t **l_1447 = (void*)0;
                    int8_t ***l_1446[5] = {&l_1447,&l_1447,&l_1447,&l_1447,&l_1447};
                    int32_t l_1456 = 0L;
                    uint32_t l_1460 = 4294967295UL;
                    int i;
                    (*l_1428) = &l_1281;
                    for (p_2126->g_1235.f1 = 7; (p_2126->g_1235.f1 >= 1); p_2126->g_1235.f1 -= 1)
                    { /* block id: 749 */
                        return p_59;
                    }
                    for (l_1267 = 0; (l_1267 <= 9); l_1267 += 1)
                    { /* block id: 754 */
                        int32_t *l_1429[1][7] = {{&l_1353,&l_1353,&l_1353,&l_1353,&l_1353,&l_1353,&l_1353}};
                        int i, j;
                        (*l_1428) = l_1429[0][2];
                        if (p_2126->g_590)
                            goto lbl_1430;
                        p_2126->g_1432 = p_2126->g_1431[0];
                    }
                    if (((p_2126->g_1448 = ((((GROUP_DIVERGE(1, 1) > (((safe_mod_func_uint16_t_u_u((l_1435 != (p_2126->g_1438 = &p_2126->g_589)), ((((*l_1439) = 0L) != ((((p_2126->g_1444 = ((*l_1443) = p_2126->g_1440[3])) != l_1445) , ((*l_1344) = p_2126->g_152[(p_2126->g_842.f1 + 2)])) | p_2126->g_115[p_2126->g_842.f1])) | (l_1346 &= (0x31L || ((((*p_59) , p_60) && (*p_2126->g_74)) >= 1UL)))))) | p_2126->g_730.f4) && l_1410)) & p_60) | 0x18287527F35355AFL) , (void*)0)) != l_1449))
                    { /* block id: 766 */
                        int32_t *l_1450 = &l_1270;
                        int32_t *l_1451 = &l_1362;
                        int32_t *l_1452 = (void*)0;
                        int32_t *l_1453 = &l_1369[6][2][5];
                        int32_t *l_1454 = &p_2126->g_690;
                        int32_t *l_1455[2][10][10] = {{{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134}},{{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134},{&p_2126->g_134,&l_1364,&l_1369[4][0][1],&l_1356,(void*)0,&p_2126->g_134,&l_1356,(void*)0,&l_1356,&p_2126->g_134}}};
                        int i, j, k;
                        if (p_60)
                            break;
                        l_1460--;
                    }
                    else
                    { /* block id: 769 */
                        (*l_1307) = (*l_1307);
                    }
                }
                for (l_1352 = 0; (l_1352 <= 0); l_1352 += 1)
                { /* block id: 775 */
                    uint32_t *l_1465 = &p_2126->g_1466;
                    int32_t l_1467 = 0x7E0737D1L;
                    int32_t l_1485 = 1L;
                    int32_t l_1486 = 0x3614D48BL;
                    (*l_1307) = p_2126->g_1463;
                    (*l_1295) = (((((*l_1465) = (p_2126->g_1464 &= p_2126->g_1228.f0)) , ((void*)0 == &p_2126->g_1440[3])) , &p_2126->g_589) == (void*)0);
                    for (l_1410 = 0; l_1410 < 7; l_1410 += 1)
                    {
                        p_2126->g_1282[l_1410] = (void*)0;
                    }
                    for (p_2126->g_1406 = 0; (p_2126->g_1406 <= 0); p_2126->g_1406 += 1)
                    { /* block id: 783 */
                        int32_t *l_1468 = &l_1467;
                        int32_t *l_1469 = (void*)0;
                        int32_t *l_1470 = (void*)0;
                        int32_t *l_1471 = &l_1467;
                        int32_t *l_1473 = &l_1346;
                        int32_t *l_1474 = &l_1354;
                        int32_t l_1475[7];
                        int32_t *l_1476 = (void*)0;
                        int32_t *l_1477 = &l_1346;
                        int32_t *l_1478 = (void*)0;
                        int32_t *l_1479 = &l_1472[0][8];
                        int32_t *l_1480[8][10][1] = {{{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457}},{{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457}},{{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457}},{{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457}},{{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457}},{{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457}},{{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457}},{{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457},{&l_1457}}};
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_1475[i] = 0x6F4C77FAL;
                        if (l_1372)
                            goto lbl_1427;
                        if (l_1467)
                            break;
                        --l_1482[0][3];
                        l_1487[0][3][6]--;
                    }
                }
            }
        }
    }
    else
    { /* block id: 792 */
        int32_t *l_1490 = (void*)0;
        int32_t **l_1492[1];
        int i;
        for (i = 0; i < 1; i++)
            l_1492[i] = (void*)0;
        l_1295 = l_1490;
    }
    return &p_2126->g_392[7];
}


/* ------------------------------------------ */
/* 
 * reads : p_2126->g_730.f0 p_2126->g_730.f1 p_2126->g_195 p_2126->g_197 p_2126->g_861 p_2126->g_501.f0 p_2126->g_172 p_2126->g_638 p_2126->g_13 p_2126->g_610.f0 p_2126->g_842.f4 p_2126->g_78 p_2126->g_837.f3 p_2126->g_200 p_2126->g_171 p_2126->g_92 p_2126->g_343 p_2126->g_887 p_2126->g_890 p_2126->g_590 p_2126->g_897 p_2126->g_347 p_2126->g_134 p_2126->g_122 p_2126->g_413 p_2126->g_115 p_2126->g_126 p_2126->g_392 p_2126->g_949 p_2126->g_312 p_2126->g_955 p_2126->g_959 p_2126->g_974 p_2126->g_637 p_2126->g_342.f1 p_2126->g_987 p_2126->g_990 p_2126->g_1011 p_2126->g_412 p_2126->g_1070 p_2126->g_501.f1 p_2126->g_961 p_2126->g_1108 p_2126->g_805.f1 p_2126->g_1185 p_2126->g_74 p_2126->g_17 p_2126->g_1228 p_2126->g_345 p_2126->g_342 p_2126->g_1238 p_2126->g_15
 * writes: p_2126->g_730.f0 p_2126->g_730.f1 p_2126->g_195 p_2126->g_861 p_2126->g_392 p_2126->g_15 p_2126->g_343 p_2126->g_890 p_2126->g_590 p_2126->g_805.f3 p_2126->g_81 p_2126->g_134 p_2126->g_115 p_2126->g_17 p_2126->g_805 p_2126->g_960 p_2126->g_842.f4 p_2126->g_140 p_2126->g_987 p_2126->g_840 p_2126->g_837.f3 p_2126->g_1011 p_2126->g_955.f0 p_2126->g_197 p_2126->g_157 p_2126->g_842.f3 p_2126->g_730.f3 p_2126->g_690 p_2126->g_1108 p_2126->g_955.f4 p_2126->g_74 p_2126->g_589 p_2126->g_328 p_2126->g_78 p_2126->g_1164 p_2126->g_1185 p_2126->g_122 p_2126->g_1235 p_2126->g_1238
 */
int8_t  func_62(int32_t  p_63, uint8_t * p_64, uint64_t * p_65, struct S1 * p_2126)
{ /* block id: 381 */
    int16_t *l_801 = (void*)0;
    int64_t *l_846 = (void*)0;
    int32_t l_848[2];
    int32_t l_889 = (-7L);
    int16_t l_905 = (-5L);
    uint16_t l_1069 = 0x906AL;
    uint32_t l_1100 = 0xA07F33EBL;
    int32_t l_1144 = 0L;
    uint64_t l_1145 = 0xDA3482DA34E8E731L;
    int32_t l_1169 = 0x3E2F6CFFL;
    int32_t *l_1192 = &l_848[1];
    int i;
    for (i = 0; i < 2; i++)
        l_848[i] = 0x61C48EF2L;
    if ((p_63 >= p_63))
    { /* block id: 382 */
        int32_t *l_787 = (void*)0;
        int32_t **l_788 = &l_787;
        int32_t l_819 = (-2L);
        uint32_t l_821 = 4294967295UL;
        uint32_t l_849 = 0xD91E4086L;
        int32_t l_855 = 3L;
        int32_t *l_888[6][7] = {{&l_848[0],&l_848[0],(void*)0,(void*)0,&p_2126->g_134,(void*)0,(void*)0},{&l_848[0],&l_848[0],(void*)0,(void*)0,&p_2126->g_134,(void*)0,(void*)0},{&l_848[0],&l_848[0],(void*)0,(void*)0,&p_2126->g_134,(void*)0,(void*)0},{&l_848[0],&l_848[0],(void*)0,(void*)0,&p_2126->g_134,(void*)0,(void*)0},{&l_848[0],&l_848[0],(void*)0,(void*)0,&p_2126->g_134,(void*)0,(void*)0},{&l_848[0],&l_848[0],(void*)0,(void*)0,&p_2126->g_134,(void*)0,(void*)0}};
        int16_t *l_919 = &l_905;
        uint8_t **l_939 = &p_2126->g_638;
        int16_t l_1013 = 0L;
        uint32_t l_1014[1][8] = {{1UL,0x59C5B32AL,1UL,1UL,0x59C5B32AL,1UL,1UL,0x59C5B32AL}};
        int i, j;
        (*l_788) = l_787;
        for (p_2126->g_730.f0 = 2; (p_2126->g_730.f0 <= 9); p_2126->g_730.f0 += 1)
        { /* block id: 386 */
            int32_t l_803 = 0x5FE83192L;
            int32_t l_820 = 0x58F1AEB7L;
            int16_t *l_825 = &p_2126->g_15;
            struct S0 *l_841 = &p_2126->g_842;
            int8_t l_886 = 0x2DL;
            (*l_788) = (*l_788);
            (*l_788) = (*l_788);
            for (p_2126->g_730.f1 = 6; (p_2126->g_730.f1 >= 0); p_2126->g_730.f1 -= 1)
            { /* block id: 391 */
                int16_t *l_802 = (void*)0;
                int32_t *l_804 = &p_2126->g_78;
                struct S0 *l_839 = &p_2126->g_840;
                int32_t l_847 = (-1L);
                int32_t l_852 = 0x56CE6954L;
                int32_t l_856 = 0x66916355L;
                int32_t l_857 = 0x6AB243F2L;
                int32_t l_858[8][2][8] = {{{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L},{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L}},{{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L},{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L}},{{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L},{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L}},{{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L},{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L}},{{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L},{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L}},{{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L},{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L}},{{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L},{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L}},{{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L},{0x4E74E52AL,0x1660D21AL,0x3D39559AL,5L,0x3D39559AL,0x1660D21AL,0x4E74E52AL,1L}}};
                int i, j, k;
                for (p_2126->g_195 = 0; (p_2126->g_195 <= 7); p_2126->g_195 += 1)
                { /* block id: 394 */
                    int32_t ***l_826 = (void*)0;
                    int32_t ****l_827 = &l_826;
                    struct S0 *l_836 = &p_2126->g_837;
                    struct S0 **l_838[3];
                    uint32_t *l_845 = &p_2126->g_122[4][2];
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_838[i] = &l_836;
                    (1 + 1);
                }
                if (p_2126->g_197[p_2126->g_730.f1][(p_2126->g_730.f1 + 1)])
                { /* block id: 411 */
                    int32_t *l_850 = &p_2126->g_134;
                    int32_t *l_851 = &l_820;
                    int32_t *l_853 = &l_848[0];
                    int32_t *l_854[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_854[i] = (void*)0;
                    ++p_2126->g_861;
                    for (l_849 = 0; (l_849 <= 4); l_849 += 1)
                    { /* block id: 415 */
                        int32_t *l_872 = (void*)0;
                        int32_t *l_873[8] = {&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589,&p_2126->g_589};
                        uint64_t *l_876 = (void*)0;
                        int32_t l_877 = 1L;
                        int32_t l_878 = 9L;
                        int i;
                        l_848[1] |= (p_2126->g_501[2][0].f0 & (safe_sub_func_int8_t_s_s((&p_2126->g_459 != (void*)0), ((0x1AL & (((l_878 = (safe_mod_func_int16_t_s_s((safe_sub_func_int8_t_s_s(p_2126->g_172, (l_877 = ((p_2126->g_392[3] = (((p_63 && (safe_lshift_func_int16_t_s_s(((((p_63 |= (-8L)) , FAKE_DIVERGE(p_2126->global_2_offset, get_global_id(2), 10)) <= (safe_mod_func_uint8_t_u_u((*p_2126->g_638), 0xBEL))) <= 0x24L), p_2126->g_610[3].f0))) , p_2126->g_842.f4) & 18446744073709551609UL)) >= (*l_804))))), FAKE_DIVERGE(p_2126->local_0_offset, get_local_id(0), 10)))) == 0x76L) & p_2126->g_837.f3)) <= p_2126->g_861))));
                    }
                }
                else
                { /* block id: 422 */
                    int i, j;
                    if (p_63)
                        break;
                    l_803 = ((safe_lshift_func_uint8_t_u_u(1UL, (p_63 | p_2126->g_197[6][5]))) == (safe_unary_minus_func_int64_t_s(((*l_804) , (((*l_825) = ((*l_804) >= (((safe_div_func_uint8_t_u_u(((l_886 = (safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), (p_2126->g_200 , p_2126->g_195)))) , 1UL), ((l_848[1] > p_63) & p_2126->g_171))) , 0UL) < p_63))) >= p_2126->g_92)))));
                    (*p_2126->g_887) = p_2126->g_343[(p_2126->g_730.f1 + 3)][p_2126->g_730.f0];
                }
            }
        }
        ++p_2126->g_890[0];
        for (p_2126->g_590 = 6; (p_2126->g_590 <= 28); p_2126->g_590 = safe_add_func_uint32_t_u_u(p_2126->g_590, 4))
        { /* block id: 434 */
            int32_t l_904 = (-4L);
            int32_t **l_916[10][2];
            int16_t l_935 = 4L;
            uint32_t l_962 = 2UL;
            uint64_t l_979 = 1UL;
            int64_t **l_981[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i, j;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 2; j++)
                    l_916[i][j] = &p_2126->g_74;
            }
            l_848[1] = p_63;
            for (p_2126->g_805.f3 = (-6); (p_2126->g_805.f3 < (-2)); p_2126->g_805.f3++)
            { /* block id: 438 */
                volatile struct S0 *l_899 = &p_2126->g_81;
                (*l_899) = p_2126->g_897;
                (*p_2126->g_347) = 0x7B45478AL;
            }
            if ((safe_add_func_uint32_t_u_u((safe_div_func_uint16_t_u_u((l_904 < (FAKE_DIVERGE(p_2126->group_0_offset, get_group_id(0), 10) > l_904)), l_889)), (l_905 <= l_848[1]))))
            { /* block id: 442 */
                uint32_t l_906 = 4294967295UL;
                int32_t ***l_915 = &l_788;
                int16_t *l_917 = &p_2126->g_837.f3;
                int16_t **l_918[10][4] = {{&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801}};
                uint32_t *l_928 = &l_849;
                int i, j;
                if ((*p_2126->g_347))
                    break;
                ++l_906;
                l_848[0] = (safe_mul_func_uint8_t_u_u(((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_2126->group_2_offset, get_group_id(2), 10), (safe_sub_func_uint16_t_u_u((((((*l_915) = &l_888[4][6]) == l_916[6][1]) < ((&l_905 != (l_919 = l_917)) != ((safe_div_func_int64_t_s_s((safe_sub_func_uint32_t_u_u((p_2126->g_122[4][2] >= (GROUP_DIVERGE(1, 1) <= ((*l_928) &= (((safe_add_func_uint16_t_u_u(((*p_2126->g_413)--), p_63)) < 249UL) & p_63)))), p_2126->g_126)), p_2126->g_392[2])) != p_2126->g_730.f1))) ^ p_63), p_63)))) ^ 1L), 1L));
            }
            else
            { /* block id: 450 */
                int64_t **l_931[7][5][2] = {{{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846}},{{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846}},{{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846}},{{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846}},{{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846}},{{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846}},{{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846},{&l_846,&l_846}}};
                uint32_t *l_934[5] = {&p_2126->g_122[4][2],&p_2126->g_122[4][2],&p_2126->g_122[4][2],&p_2126->g_122[4][2],&p_2126->g_122[4][2]};
                int32_t l_936 = (-4L);
                uint8_t ***l_937 = (void*)0;
                uint8_t ***l_938[1];
                int32_t l_946 = 0x55FF30FAL;
                int32_t l_985 = 0L;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_938[i] = &p_2126->g_637;
                l_946 |= (p_2126->g_392[7] < ((safe_rshift_func_int16_t_s_s(((p_2126->g_17 = (l_931[3][1][0] != l_931[3][1][0])) , (+((safe_add_func_uint32_t_u_u((l_889 = 1UL), ((l_848[0] &= l_935) & (((((l_936 = l_905) == ((l_939 = (void*)0) != (void*)0)) != (safe_mod_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_s(((252UL & p_63) | (*p_64)), 14)), 9L)), (*p_64)))) & p_63) , p_63)))) == l_905))), 8)) != 4L));
                if ((safe_rshift_func_int8_t_s_s((p_2126->g_949 , p_2126->g_312[0]), 7)))
                { /* block id: 457 */
                    for (p_2126->g_195 = 19; (p_2126->g_195 == 15); p_2126->g_195 = safe_sub_func_uint64_t_u_u(p_2126->g_195, 5))
                    { /* block id: 460 */
                        int32_t *l_952 = (void*)0;
                        l_952 = &p_2126->g_690;
                    }
                    for (p_2126->g_134 = 0; (p_2126->g_134 == 0); p_2126->g_134 = safe_add_func_int32_t_s_s(p_2126->g_134, 6))
                    { /* block id: 465 */
                        return p_63;
                    }
                }
                else
                { /* block id: 468 */
                    struct S0 *l_956 = &p_2126->g_805;
                    int64_t *l_958 = (void*)0;
                    int64_t **l_957[10][2][10] = {{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}},{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}},{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}},{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}},{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}},{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}},{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}},{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}},{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}},{{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958},{&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958,&l_958}}};
                    int i, j, k;
                    (*l_956) = p_2126->g_955;
                    if ((*p_2126->g_347))
                        continue;
                    (*p_2126->g_959) = l_957[3][0][9];
                }
                --l_962;
                for (l_962 = 0; (l_962 <= 2); l_962 += 1)
                { /* block id: 476 */
                    int16_t l_982 = 0x5C2AL;
                    int32_t l_984 = (-10L);
                    int32_t l_986 = 1L;
                    int32_t l_999 = 0x0DB41410L;
                    for (p_2126->g_842.f4 = 0; (p_2126->g_842.f4 <= 9); p_2126->g_842.f4 += 1)
                    { /* block id: 479 */
                        int8_t *l_980 = &p_2126->g_140;
                        int i, j;
                        l_936 = (((safe_div_func_uint64_t_u_u(((safe_unary_minus_func_uint8_t_u(252UL)) >= (safe_lshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_u((~(p_63 == (((void*)0 != &p_2126->g_140) && ((p_2126->g_890[l_962] = l_848[1]) || (((((safe_add_func_uint16_t_u_u(((p_2126->g_974 , l_931[2][0][0]) == ((!((safe_rshift_func_int16_t_s_u((((+((((safe_sub_func_int32_t_s_s((((*l_980) = (p_63 , (0x34D70CA2L > l_979))) >= (**p_2126->g_637)), l_936)) && l_946) >= l_848[1]) & p_63)) || 65535UL) <= FAKE_DIVERGE(p_2126->local_1_offset, get_local_id(1), 10)), 13)) && p_2126->g_890[l_962])) , l_981[0])), p_2126->g_342.f1)) & l_889) < l_982) ^ p_63) , l_889))))), 2)), p_63))), p_2126->g_842.f4)) | 0x2F33L) && (-8L));
                    }
                    for (p_2126->g_140 = 1; (p_2126->g_140 <= 5); p_2126->g_140 += 1)
                    { /* block id: 486 */
                        int8_t l_983 = 0x3DL;
                        struct S0 *l_991 = (void*)0;
                        struct S0 *l_992 = &p_2126->g_840;
                        p_2126->g_987++;
                        (*l_992) = p_2126->g_990;
                    }
                    for (l_855 = 0; (l_855 <= 2); l_855 += 1)
                    { /* block id: 492 */
                        int64_t *l_1000[3];
                        int8_t *l_1010[1];
                        int8_t **l_1009[3];
                        int32_t l_1012[1][7];
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_1000[i] = (void*)0;
                        for (i = 0; i < 1; i++)
                            l_1010[i] = &p_2126->g_140;
                        for (i = 0; i < 3; i++)
                            l_1009[i] = &l_1010[0];
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 7; j++)
                                l_1012[i][j] = 0L;
                        }
                        (*p_2126->g_347) = (((*l_919) |= ((*p_64) > p_63)) != (p_2126->g_955.f2 == (l_946 |= (((safe_mul_func_int16_t_s_s((-1L), ((((-6L) ^ ((0x17L == (p_63 < (safe_div_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(4294967295UL, (0x4EA303A0FFB57B0AL || (-5L)))), p_63)))) ^ 0x20L)) < l_999) && 0L))) && p_63) || 0x2E3BDC9BL))));
                        l_936 |= (safe_mul_func_uint8_t_u_u((l_1014[0][5] |= ((safe_mul_func_int8_t_s_s((p_63 , p_63), (65529UL < (p_63 <= (((((1L & ((+4L) == (safe_add_func_uint64_t_u_u((p_64 == (p_2126->g_1011 = (void*)0)), 1L)))) >= l_1012[0][0]) , l_1013) != 0L) ^ p_63))))) ^ 0x3CDA8A8EL)), (*p_64)));
                        return p_63;
                    }
                }
            }
            (*p_2126->g_347) = ((void*)0 != &l_855);
        }
    }
    else
    { /* block id: 505 */
        int32_t l_1030 = 1L;
        int32_t l_1041 = 0x1D2D012DL;
        int32_t l_1042 = 0x01A302B5L;
        int32_t l_1043 = 0x5170A8C7L;
        struct S0 *l_1121[2];
        uint32_t l_1137 = 5UL;
        int32_t l_1236[9][5] = {{7L,0x48BCAA28L,0x48BCAA28L,7L,0x7F32779EL},{7L,0x48BCAA28L,0x48BCAA28L,7L,0x7F32779EL},{7L,0x48BCAA28L,0x48BCAA28L,7L,0x7F32779EL},{7L,0x48BCAA28L,0x48BCAA28L,7L,0x7F32779EL},{7L,0x48BCAA28L,0x48BCAA28L,7L,0x7F32779EL},{7L,0x48BCAA28L,0x48BCAA28L,7L,0x7F32779EL},{7L,0x48BCAA28L,0x48BCAA28L,7L,0x7F32779EL},{7L,0x48BCAA28L,0x48BCAA28L,7L,0x7F32779EL},{7L,0x48BCAA28L,0x48BCAA28L,7L,0x7F32779EL}};
        int i, j;
        for (i = 0; i < 2; i++)
            l_1121[i] = &p_2126->g_837;
lbl_1019:
        (*p_2126->g_347) |= (safe_lshift_func_int8_t_s_u(((*p_2126->g_1011) = 0x6CL), 1));
        for (p_2126->g_15 = (-21); (p_2126->g_15 >= (-16)); ++p_2126->g_15)
        { /* block id: 510 */
            int32_t *l_1072[3][4];
            uint32_t l_1163 = 1UL;
            int32_t l_1178 = 0x1B9F72B8L;
            int32_t l_1180 = (-10L);
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 4; j++)
                    l_1072[i][j] = (void*)0;
            }
            for (p_2126->g_955.f0 = 0; (p_2126->g_955.f0 <= 0); p_2126->g_955.f0 += 1)
            { /* block id: 513 */
                uint8_t *l_1031 = &p_2126->g_197[6][5];
                int32_t l_1038 = 0x3842D42BL;
                int32_t *l_1039 = (void*)0;
                int32_t *l_1040[10][2][2] = {{{&l_889,&l_848[1]},{&l_889,&l_848[1]}},{{&l_889,&l_848[1]},{&l_889,&l_848[1]}},{{&l_889,&l_848[1]},{&l_889,&l_848[1]}},{{&l_889,&l_848[1]},{&l_889,&l_848[1]}},{{&l_889,&l_848[1]},{&l_889,&l_848[1]}},{{&l_889,&l_848[1]},{&l_889,&l_848[1]}},{{&l_889,&l_848[1]},{&l_889,&l_848[1]}},{{&l_889,&l_848[1]},{&l_889,&l_848[1]}},{{&l_889,&l_848[1]},{&l_889,&l_848[1]}},{{&l_889,&l_848[1]},{&l_889,&l_848[1]}}};
                int i, j, k;
                if (p_2126->g_195)
                    goto lbl_1019;
                if ((safe_div_func_int8_t_s_s(((l_1043 &= ((4UL || 5L) , (l_1042 |= ((safe_sub_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), ((safe_rshift_func_uint8_t_u_u(l_1030, ((*l_1031) = FAKE_DIVERGE(p_2126->local_0_offset, get_local_id(0), 10)))) < l_848[1]))), l_905)), (l_1041 &= (((0x6D93D1C484588031L ^ ((safe_add_func_uint32_t_u_u(p_63, (((safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((void*)0 == &p_2126->g_74) < 7L), (-7L))), 1)) <= (*p_2126->g_347)) > GROUP_DIVERGE(1, 1)))) & p_63)) < p_63) > l_1038)))) ^ p_63)))) | p_63), p_63)))
                { /* block id: 519 */
                    uint64_t l_1044 = 0xD6B14174A3F8929DL;
                    for (l_1042 = 0; (l_1042 <= 0); l_1042 += 1)
                    { /* block id: 522 */
                        int32_t *l_1047[10] = {&p_2126->g_394,&p_2126->g_690,&p_2126->g_78,&p_2126->g_690,&p_2126->g_394,&p_2126->g_394,&p_2126->g_690,&p_2126->g_78,&p_2126->g_690,&p_2126->g_394};
                        int32_t **l_1048 = &l_1039;
                        int i;
                        if (p_2126->g_955.f3)
                            goto lbl_1019;
                        --l_1044;
                        (*l_1048) = l_1047[5];
                    }
                }
                else
                { /* block id: 527 */
                    int8_t l_1068[1];
                    int32_t *l_1073 = &p_2126->g_690;
                    int32_t l_1102 = 0x02F69A17L;
                    int32_t l_1103 = 0x66F4C02EL;
                    int32_t l_1104 = (-5L);
                    int32_t l_1106 = (-7L);
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1068[i] = (-1L);
                    if (((((safe_unary_minus_func_int8_t_s(0L)) > ((((safe_mul_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((l_1041 ^= (((safe_sub_func_uint16_t_u_u((((0x6EEAL > (-6L)) , p_63) >= (+(p_63 & (safe_sub_func_int64_t_s_s((safe_div_func_int16_t_s_s(((**p_2126->g_412) , (safe_lshift_func_uint16_t_u_s((((l_1043 < p_63) != (&p_2126->g_1011 != (void*)0)) < p_63), l_1068[0]))), 65527UL)), 18446744073709551615UL))))), (*p_2126->g_413))) >= FAKE_DIVERGE(p_2126->local_0_offset, get_local_id(0), 10)) || (**p_2126->g_637))), 2)), l_1069)), (-1L))) <= 1UL) , p_63) < p_2126->g_987)) < p_63) & l_1069))
                    { /* block id: 529 */
                        volatile struct S0 *l_1071 = &p_2126->g_157;
                        (*l_1071) = p_2126->g_1070;
                    }
                    else
                    { /* block id: 531 */
                        uint16_t l_1098 = 0xB99AL;
                        int16_t *l_1099[2];
                        int32_t l_1101 = 0x1219DD73L;
                        int32_t l_1105 = (-1L);
                        int32_t **l_1111 = &l_1073;
                        int32_t *l_1112 = (void*)0;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1099[i] = &p_2126->g_730.f3;
                        (*l_1073) = (((((l_1072[2][3] != l_1073) <= (+(safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((safe_add_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s((0L | 9UL), l_1069)) , ((safe_rshift_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((+(p_2126->g_730.f3 = (p_2126->g_842.f3 = (((*p_2126->g_413) ^= l_1043) , (safe_mod_func_int8_t_s_s((l_848[1] ^= (safe_mul_func_int16_t_s_s((((safe_mul_func_int16_t_s_s(0x0315L, (((safe_mul_func_int16_t_s_s(0x4E2AL, (((safe_sub_func_int64_t_s_s((((safe_mul_func_uint8_t_u_u(l_1098, 0x14L)) && GROUP_DIVERGE(0, 1)) > 0x4D49E272FBD5E497L), 18446744073709551615UL)) >= 0x7FL) , p_2126->g_501[2][0].f1))) < l_1098) ^ 0xFEL))) , p_65) == p_2126->g_961[0][0]), GROUP_DIVERGE(0, 1)))), 246UL)))))), l_1042)), p_63)) , p_63)), p_63)), l_1043)), 1L)))) > 0x3BL) ^ FAKE_DIVERGE(p_2126->group_0_offset, get_group_id(0), 10)) | l_1100);
                        (*l_1073) = 0x0EA89639L;
                        ++p_2126->g_1108;
                        l_1112 = ((*l_1111) = &l_1043);
                    }
                }
                (*p_2126->g_347) &= (l_1042 , p_63);
                for (p_2126->g_730.f0 = 0; (p_2126->g_730.f0 >= 0); p_2126->g_730.f0 -= 1)
                { /* block id: 546 */
                    int32_t l_1113[5];
                    uint32_t l_1114[2][9][4] = {{{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L}},{{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L},{0x8A70B416L,0x8A70B416L,0x8A70B416L,0x8A70B416L}}};
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                        l_1113[i] = (-1L);
                    l_1114[0][2][1]++;
                    for (p_2126->g_955.f4 = 0; (p_2126->g_955.f4 >= 0); p_2126->g_955.f4 -= 1)
                    { /* block id: 550 */
                        (*p_2126->g_347) = l_1042;
                    }
                    (*p_2126->g_347) |= l_1113[0];
                }
            }
            if (((((*p_2126->g_347) ^= p_63) == l_1041) , 0x3535F4AFL))
            { /* block id: 557 */
                int32_t *l_1120 = &l_1043;
                int32_t l_1129 = 0x45BCE377L;
                int32_t l_1130[3][3][8] = {{{0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL},{0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL},{0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL}},{{0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL},{0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL},{0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL}},{{0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL},{0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL},{0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL,0x4675710CL}}};
                int i, j, k;
                for (p_2126->g_805.f4 = 24; (p_2126->g_805.f4 != (-23)); p_2126->g_805.f4--)
                { /* block id: 560 */
                    int32_t **l_1119[9][3] = {{&p_2126->g_74,(void*)0,&l_1072[2][3]},{&p_2126->g_74,(void*)0,&l_1072[2][3]},{&p_2126->g_74,(void*)0,&l_1072[2][3]},{&p_2126->g_74,(void*)0,&l_1072[2][3]},{&p_2126->g_74,(void*)0,&l_1072[2][3]},{&p_2126->g_74,(void*)0,&l_1072[2][3]},{&p_2126->g_74,(void*)0,&l_1072[2][3]},{&p_2126->g_74,(void*)0,&l_1072[2][3]},{&p_2126->g_74,(void*)0,&l_1072[2][3]}};
                    int i, j;
                    l_1120 = (p_2126->g_74 = &l_1043);
                    for (p_2126->g_589 = 0; (p_2126->g_589 <= 2); p_2126->g_589 += 1)
                    { /* block id: 565 */
                        struct S0 *l_1123 = &p_2126->g_610[3];
                        struct S0 **l_1122 = &l_1123;
                        (*l_1122) = (l_1121[0] = &p_2126->g_610[3]);
                    }
                    p_2126->g_74 = &l_1042;
                }
                (*l_1120) |= (*p_2126->g_347);
                for (p_63 = 2; (p_63 >= 0); p_63 -= 1)
                { /* block id: 574 */
                    int32_t *l_1124 = &l_1041;
                    int32_t **l_1126 = &l_1072[2][3];
                    int32_t l_1128 = (-1L);
                    int32_t l_1136 = 0x01D19698L;
                    (*l_1126) = l_1124;
                    for (p_2126->g_805.f1 = 0; (p_2126->g_805.f1 <= 9); p_2126->g_805.f1 += 1)
                    { /* block id: 578 */
                        uint32_t ***l_1127 = &p_2126->g_328;
                        int32_t l_1131 = 0x6C940DB1L;
                        int32_t l_1132 = (-3L);
                        uint64_t l_1133 = 0xDE7CB4BD6F5234A2L;
                        (*l_1127) = (void*)0;
                        if (p_2126->g_805.f1)
                            goto lbl_1019;
                        --l_1133;
                        --l_1137;
                    }
                    for (p_2126->g_78 = 7; (p_2126->g_78 >= 0); p_2126->g_78 -= 1)
                    { /* block id: 586 */
                        int64_t l_1140 = 0x0F0BFEEB48BF3E42L;
                        int32_t l_1141 = 1L;
                        int32_t l_1142 = 0x20DA5DBDL;
                        int32_t l_1143[4][8] = {{0x5DCE9AABL,0x1CEAF299L,0x5DCE9AABL,0x5DCE9AABL,0x1CEAF299L,0x5DCE9AABL,0x5DCE9AABL,0x1CEAF299L},{0x5DCE9AABL,0x1CEAF299L,0x5DCE9AABL,0x5DCE9AABL,0x1CEAF299L,0x5DCE9AABL,0x5DCE9AABL,0x1CEAF299L},{0x5DCE9AABL,0x1CEAF299L,0x5DCE9AABL,0x5DCE9AABL,0x1CEAF299L,0x5DCE9AABL,0x5DCE9AABL,0x1CEAF299L},{0x5DCE9AABL,0x1CEAF299L,0x5DCE9AABL,0x5DCE9AABL,0x1CEAF299L,0x5DCE9AABL,0x5DCE9AABL,0x1CEAF299L}};
                        int64_t *l_1156 = &p_2126->g_840.f4;
                        uint32_t l_1161 = 1UL;
                        int64_t l_1162[10][1][5] = {{{0L,(-1L),0L,0L,(-1L)}},{{0L,(-1L),0L,0L,(-1L)}},{{0L,(-1L),0L,0L,(-1L)}},{{0L,(-1L),0L,0L,(-1L)}},{{0L,(-1L),0L,0L,(-1L)}},{{0L,(-1L),0L,0L,(-1L)}},{{0L,(-1L),0L,0L,(-1L)}},{{0L,(-1L),0L,0L,(-1L)}},{{0L,(-1L),0L,0L,(-1L)}},{{0L,(-1L),0L,0L,(-1L)}}};
                        int i, j, k;
                        ++l_1145;
                        l_1163 |= ((*l_1120) = (safe_lshift_func_int16_t_s_s((((**p_2126->g_412) = GROUP_DIVERGE(1, 1)) < ((((safe_sub_func_uint16_t_u_u(0xE35DL, p_2126->g_890[p_63])) , (((safe_mod_func_uint32_t_u_u((p_2126->g_890[p_63] < (1UL | ((*l_1156) = (safe_add_func_int16_t_s_s(p_63, (l_1143[2][5] | (*p_64))))))), 5L)) ^ ((safe_lshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_u((((l_1141 , l_1161) & p_63) , (*p_2126->g_1011)), 3)), FAKE_DIVERGE(p_2126->global_2_offset, get_global_id(2), 10))) ^ 1L)) | (*l_1124))) && 0x3DL) & p_63)), l_1162[5][0][3])));
                        if (p_2126->g_342.f1)
                            goto lbl_1019;
                        (*l_1120) = ((p_2126->g_1164 = (void*)0) == (void*)0);
                    }
                    if (p_2126->g_987)
                        goto lbl_1019;
                }
                (*l_1120) |= (-2L);
            }
            else
            { /* block id: 599 */
                int32_t l_1179 = 0x7E6A5CADL;
                int32_t l_1181 = 0x19ECE6A8L;
                int32_t l_1182 = (-10L);
                int32_t l_1183 = 0x722A744DL;
                l_889 ^= (l_1179 = (safe_div_func_int8_t_s_s((((l_1169 = ((0x797AL && (safe_mul_func_int16_t_s_s(l_1169, ((p_63 < 65527UL) , l_1169)))) && (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (safe_sub_func_uint8_t_u_u((p_63 < (((*p_2126->g_413) = (safe_rshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_u(l_848[0], (**p_2126->g_412))), (((0x64F6F7CD947F0971L != l_1042) & l_1178) || p_63)))) >= 0x7A0AL)), 1L)))))) > p_63) , l_1041), (-1L))));
                if ((1UL | (l_1179 = (l_889 &= 0x1D3F7D49L))))
                { /* block id: 606 */
                    int32_t **l_1188 = &l_1072[2][3];
                    int32_t **l_1189 = &p_2126->g_74;
                    int32_t *l_1191 = &l_1183;
                    int32_t **l_1190[9][8][3] = {{{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0}},{{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0}},{{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0}},{{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0}},{{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0}},{{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0}},{{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0}},{{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0}},{{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0},{&l_1191,(void*)0,(void*)0}}};
                    int8_t *l_1207 = &p_2126->g_1107;
                    int16_t *l_1211 = &l_905;
                    uint32_t l_1212 = 0xAA97E39EL;
                    int32_t *l_1229 = &l_1041;
                    uint8_t l_1231[4][8] = {{0x34L,0x34L,0UL,0xB1L,1UL,0xB1L,0UL,0x34L},{0x34L,0x34L,0UL,0xB1L,1UL,0xB1L,0UL,0x34L},{0x34L,0x34L,0UL,0xB1L,1UL,0xB1L,0UL,0x34L},{0x34L,0x34L,0UL,0xB1L,1UL,0xB1L,0UL,0x34L}};
                    int i, j, k;
                    p_2126->g_1185--;
                    l_1192 = ((*l_1189) = ((*l_1188) = &l_1183));
                    if ((safe_div_func_int16_t_s_s(((*p_2126->g_1011) > (safe_lshift_func_uint8_t_u_u(((safe_div_func_int32_t_s_s((((*p_2126->g_413) &= (0x053EF488913FC49CL | (+((safe_mul_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s((**p_2126->g_637), 6)) || (safe_mod_func_uint64_t_u_u(((-1L) != (safe_sub_func_uint8_t_u_u((GROUP_DIVERGE(2, 1) | (((void*)0 != l_1207) == (((safe_lshift_func_int16_t_s_u(((*l_1211) = ((0x461AL != (safe_unary_minus_func_uint16_t_u(((void*)0 == &l_1144)))) != p_63)), 7)) || p_63) , (*l_1192)))), (*p_2126->g_1011)))), (**l_1189)))), 0x5485L)) || l_1212)))) < p_63), p_2126->g_342.f1)) | p_63), 1))), p_2126->g_17)))
                    { /* block id: 613 */
                        uint32_t *l_1223 = &p_2126->g_122[0][2];
                        int64_t *l_1230[5][2][2] = {{{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4},{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4}},{{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4},{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4}},{{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4},{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4}},{{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4},{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4}},{{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4},{&p_2126->g_837.f4,&p_2126->g_501[2][0].f4}}};
                        int i, j, k;
                        (*p_2126->g_74) = (safe_div_func_uint16_t_u_u((((*p_64) == (safe_lshift_func_uint8_t_u_u((safe_div_func_int64_t_s_s(((safe_rshift_func_int8_t_s_s(((*p_2126->g_1011) = (*p_2126->g_1011)), 6)) , ((*l_1229) ^= ((l_1179 = (((++(*l_1223)) <= ((safe_sub_func_int32_t_s_s(((-1L) | (((void*)0 != p_65) && (&l_1179 == ((p_2126->g_1228 , (((l_1223 == l_1223) & 4294967295UL) || (-1L))) , l_1229)))), 0x4DC8D92DL)) == 0xA3L)) || p_2126->g_115[6])) & p_63))), p_63)), (*p_2126->g_638)))) != 0L), p_2126->g_501[2][0].f1));
                    }
                    else
                    { /* block id: 619 */
                        if (l_1231[1][0])
                            break;
                    }
                }
                else
                { /* block id: 622 */
                    uint32_t l_1232[3][2];
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_1232[i][j] = 0xCAD5DCF0L;
                    }
                    l_1232[2][0]--;
                }
                if (p_63)
                    continue;
            }
            p_2126->g_1235 = (*p_2126->g_345);
            ++p_2126->g_1238[0][6][2];
        }
    }
    return p_63;
}


/* ------------------------------------------ */
/* 
 * reads : p_2126->g_74 p_2126->g_81 p_2126->g_15 p_2126->g_78 p_2126->g_13 p_2126->g_115 p_2126->g_17 p_2126->g_126 p_2126->g_152 p_2126->g_157 p_2126->g_167 p_2126->g_172 p_2126->g_197 p_2126->g_200 p_2126->g_204 p_2126->g_122 p_2126->g_73 p_2126->g_195 p_2126->g_171 p_2126->g_253 p_2126->g_134 p_2126->g_277 p_2126->g_238 p_2126->g_309 p_2126->g_315 p_2126->g_327 p_2126->g_314 p_2126->g_92 p_2126->g_329 p_2126->g_342 p_2126->g_345 p_2126->g_347 p_2126->g_328 p_2126->g_350 p_2126->g_140 p_2126->g_312 p_2126->g_412 p_2126->g_421 p_2126->g_413 p_2126->g_392 p_2126->g_459 p_2126->g_501.f0 p_2126->g_533 p_2126->g_501.f3 p_2126->g_590 p_2126->g_610 p_2126->g_637 p_2126->g_501.f1 p_2126->g_642 p_2126->g_691 p_2126->g_690 p_2126->g_394 p_2126->g_730 p_2126->g_638 p_2126->g_501.f2 p_2126->g_763
 * writes: p_2126->g_74 p_2126->g_92 p_2126->g_78 p_2126->g_115 p_2126->g_126 p_2126->g_15 p_2126->g_134 p_2126->g_152 p_2126->g_167 p_2126->g_172 p_2126->g_17 p_2126->g_197 p_2126->g_200 p_2126->g_204 p_2126->g_73 p_2126->g_140 p_2126->g_238 p_2126->g_253 p_2126->g_277 p_2126->g_195 p_2126->g_309 p_2126->g_315 p_2126->g_328 p_2126->g_342 p_2126->g_392 p_2126->g_394 p_2126->g_459 p_2126->g_122 p_2126->g_329 p_2126->g_533 p_2126->g_589 p_2126->g_501 p_2126->g_691 p_2126->g_690 p_2126->g_610
 */
uint64_t * func_67(int32_t  p_68, uint16_t  p_69, uint32_t * p_70, uint64_t * p_71, struct S1 * p_2126)
{ /* block id: 12 */
    int32_t **l_75 = &p_2126->g_74;
    int32_t *l_77 = &p_2126->g_78;
    int32_t **l_76 = &l_77;
    int8_t l_84 = 0x47L;
    int32_t *l_86[5];
    int32_t **l_85 = &l_86[2];
    int16_t *l_90 = (void*)0;
    int16_t *l_91 = &p_2126->g_92;
    int32_t l_93 = (-8L);
    int32_t l_142 = 0x0400E0B9L;
    int32_t l_146 = (-6L);
    int32_t l_150 = 0x59DF16FFL;
    uint64_t *l_175 = (void*)0;
    int32_t l_193 = 0L;
    int64_t l_196 = 0x2A35B3A7F255F038L;
    uint32_t l_220 = 0x40D53DA7L;
    uint64_t *l_285[7] = {&p_2126->g_17,&p_2126->g_17,&p_2126->g_17,&p_2126->g_17,&p_2126->g_17,&p_2126->g_17,&p_2126->g_17};
    int64_t l_337 = 0x00F2FB072385D345L;
    uint16_t **l_424 = &p_2126->g_413;
    uint64_t *l_430[2];
    uint32_t l_445[10] = {0x396AC79AL,0xA4928264L,3UL,0xA4928264L,0x396AC79AL,0x396AC79AL,0xA4928264L,3UL,0xA4928264L,0x396AC79AL};
    int32_t l_561 = 0x0B7AC933L;
    uint8_t l_631 = 0UL;
    uint32_t ***l_639 = &p_2126->g_328;
    uint32_t l_661 = 4294967287UL;
    uint8_t l_662 = 0x4EL;
    uint16_t l_678 = 65532UL;
    int32_t *l_727 = &p_2126->g_394;
    int i;
    for (i = 0; i < 5; i++)
        l_86[i] = &p_2126->g_73;
    for (i = 0; i < 2; i++)
        l_430[i] = &p_2126->g_392[7];
lbl_732:
    (*l_76) = ((*l_75) = p_2126->g_74);
    if ((safe_mul_func_uint16_t_u_u((p_68 == (p_2126->g_81 , ((((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (p_2126->g_15 | l_84))) >= (((((((((*l_85) = &p_2126->g_73) != &p_2126->g_73) , (((*l_91) = (safe_lshift_func_uint8_t_u_s((safe_unary_minus_func_uint64_t_u((((void*)0 == &p_2126->g_17) == 0x7089E30C926164A3L))), p_2126->g_78))) , p_69)) , l_86[2]) == (void*)0) , 0x2E6AL) ^ 0x5377L) == p_2126->g_78)) ^ 0x0476F2A9E5F641D3L) == 0x4A3D9B22F2C889DDL))), p_2126->g_13[2][7][1])))
    { /* block id: 17 */
        uint32_t l_94 = 0x19ED05CEL;
        int32_t l_138 = 0x3601C06AL;
        int32_t l_145 = 0L;
        int32_t l_148 = 0x6D62ACC6L;
        int32_t l_151[10][10] = {{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L},{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L},{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L},{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L},{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L},{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L},{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L},{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L},{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L},{0L,0L,1L,0x57D123A2L,(-9L),0x1BBC179AL,0x655F7E0FL,0x2EB8C4E8L,1L,0L}};
        int32_t **l_298 = &l_86[2];
        uint32_t *l_326 = &l_220;
        uint32_t **l_325 = &l_326;
        int i, j;
        ++l_94;
        for (l_93 = 0; (l_93 < (-29)); l_93 = safe_sub_func_int8_t_s_s(l_93, 1))
        { /* block id: 21 */
            int32_t *l_103 = &l_93;
            int32_t l_149 = 0x6FE41880L;
            int32_t l_159[9] = {0x2EF97A49L,0x2EF97A49L,0x2EF97A49L,0x2EF97A49L,0x2EF97A49L,0x2EF97A49L,0x2EF97A49L,0x2EF97A49L,0x2EF97A49L};
            int i;
            for (p_2126->g_92 = 2; (p_2126->g_92 != (-28)); p_2126->g_92--)
            { /* block id: 24 */
                int8_t l_131 = (-6L);
                int32_t l_136 = 0x2ED21B86L;
                int32_t l_141 = (-1L);
                int32_t l_144 = 1L;
                for (p_68 = (-29); (p_68 == (-21)); p_68++)
                { /* block id: 27 */
                    p_2126->g_74 = l_103;
                }
                (*l_76) = l_103;
                for (p_2126->g_78 = 0; (p_2126->g_78 == (-24)); --p_2126->g_78)
                { /* block id: 33 */
                    int16_t l_129 = 0x1A56L;
                    if ((safe_rshift_func_int16_t_s_u(p_68, 12)))
                    { /* block id: 34 */
                        return p_71;
                    }
                    else
                    { /* block id: 36 */
                        uint16_t *l_114 = &p_2126->g_115[6];
                        uint32_t *l_121 = &p_2126->g_122[4][2];
                        uint32_t **l_120 = &l_121;
                        uint8_t *l_125 = &p_2126->g_126;
                        int16_t *l_130 = &p_2126->g_15;
                        int8_t *l_132 = &l_84;
                        int32_t *l_133 = &p_2126->g_134;
                        (*l_133) = (((safe_sub_func_uint16_t_u_u(((p_2126->g_81 , (p_70 != ((*l_76) = p_70))) , (safe_rshift_func_int16_t_s_u((safe_sub_func_uint16_t_u_u((++(*l_114)), (safe_div_func_int8_t_s_s(((*l_132) = ((((*l_130) = ((p_2126->g_74 != ((*l_120) = l_86[3])) , ((*p_71) , ((((((0UL || (safe_mod_func_uint16_t_u_u((p_2126->g_13[2][7][1] ^ ((--(*l_125)) && ((GROUP_DIVERGE(1, 1) , 3L) , 0x1FL))), 65535UL))) <= GROUP_DIVERGE(1, 1)) && 1L) , l_129) | p_2126->g_13[5][9][0]) , l_94)))) | l_131) | 0L)), p_69)))), 9))), 1L)) >= 18446744073709551615UL) || p_2126->g_81.f0);
                        (*l_75) = (void*)0;
                    }
                }
                for (p_2126->g_15 = 0; (p_2126->g_15 <= 7); p_2126->g_15 += 1)
                { /* block id: 49 */
                    int16_t l_135 = 4L;
                    int32_t l_139 = 0x17889B5EL;
                    int32_t l_143 = 9L;
                    int32_t l_147[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
                    int i;
                    for (p_2126->g_126 = 0; (p_2126->g_126 <= 7); p_2126->g_126 += 1)
                    { /* block id: 52 */
                        int32_t *l_137[2][5][5] = {{{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78},{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78},{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78},{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78},{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78}},{{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78},{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78},{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78},{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78},{&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78}}};
                        int i, j, k;
                        ++p_2126->g_152[2];
                    }
                }
            }
            for (l_138 = 0; (l_138 == (-25)); l_138--)
            { /* block id: 59 */
                uint8_t *l_158 = (void*)0;
                uint8_t *l_160 = &p_2126->g_126;
                int32_t l_166[6] = {0x33A87BABL,0x33A87BABL,0x33A87BABL,0x33A87BABL,0x33A87BABL,0x33A87BABL};
                int32_t **l_227 = (void*)0;
                int i;
                if (((*l_103) != (p_2126->g_157 , ((*l_160)--))))
                { /* block id: 61 */
                    for (p_69 = 22; (p_69 > 50); p_69 = safe_add_func_int8_t_s_s(p_69, 2))
                    { /* block id: 64 */
                        int32_t *l_165[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_165[i] = &l_159[3];
                        p_2126->g_167++;
                        (*l_75) = (*l_75);
                        --p_2126->g_172;
                        return l_175;
                    }
                }
                else
                { /* block id: 70 */
                    uint16_t l_178[5][6][5] = {{{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L}},{{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L}},{{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L}},{{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L}},{{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L},{4UL,65527UL,0x0B18L,8UL,0x6704L}}};
                    int32_t l_203[1];
                    uint16_t *l_209 = &l_178[3][3][2];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_203[i] = 0L;
                    for (p_2126->g_17 = 0; (p_2126->g_17 != 17); p_2126->g_17++)
                    { /* block id: 73 */
                        l_178[3][3][2]--;
                    }
                    for (p_68 = 28; (p_68 > 25); p_68 = safe_sub_func_int32_t_s_s(p_68, 6))
                    { /* block id: 78 */
                        int32_t *l_183 = &p_2126->g_78;
                        int32_t *l_184 = (void*)0;
                        int32_t *l_185 = &l_159[3];
                        int32_t *l_186 = &p_2126->g_134;
                        int32_t *l_187 = &l_142;
                        int32_t *l_188 = &l_166[5];
                        int32_t *l_189 = &l_159[6];
                        int32_t *l_190 = &l_146;
                        int32_t *l_191 = &l_166[2];
                        int32_t *l_192 = &p_2126->g_134;
                        int32_t *l_194[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_194[i] = &l_159[8];
                        p_2126->g_197[6][5]--;
                        p_2126->g_200--;
                        ++p_2126->g_204;
                    }
                    (*l_75) = (((((((*p_70) &= (p_68 < ((safe_sub_func_int16_t_s_s((!((((((*l_209) = (p_2126->g_152[2] <= 0x4672L)) ^ ((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint16_t_u_u((((safe_rshift_func_int16_t_s_u(l_166[4], 4)) != (*p_71)) , (((p_68 ^ (0x4D80A836L != (safe_sub_func_int32_t_s_s((((GROUP_DIVERGE(0, 1) , l_220) , ((*l_160) = ((void*)0 != &p_2126->g_122[1][2]))) > p_68), l_166[3])))) | l_166[1]) & p_68)), p_69)), p_68)) | 0x37L)) ^ p_69) == p_2126->g_122[4][2]) | p_68)), l_203[0])) , p_68))) , (*l_103)) >= p_2126->g_122[6][0]) >= p_2126->g_195) > l_138) , &l_145);
                    for (l_142 = 0; (l_142 >= 0); l_142 -= 1)
                    { /* block id: 89 */
                        int8_t *l_236[5][6][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                        int16_t *l_237[6][7][6] = {{{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238}},{{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238}},{{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238}},{{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238}},{{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238}},{{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238},{(void*)0,(void*)0,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238,&p_2126->g_238}}};
                        uint8_t ***l_239 = (void*)0;
                        uint8_t **l_241 = &l_158;
                        uint8_t ***l_240 = &l_241;
                        int i, j, k;
                        l_151[(l_142 + 5)][(l_142 + 2)] = ((safe_sub_func_int8_t_s_s((safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (safe_div_func_int8_t_s_s((!(+((l_178[(l_142 + 3)][l_142][l_142] , l_178[(l_142 + 2)][(l_142 + 1)][(l_142 + 4)]) > ((void*)0 == l_227)))), (safe_sub_func_int32_t_s_s(0x457B76DFL, ((((p_2126->g_238 = ((l_178[(l_142 + 2)][l_142][(l_142 + 2)] & ((((((safe_lshift_func_uint8_t_u_u(((p_2126->g_15 = (((~(safe_add_func_int8_t_s_s((p_2126->g_140 = (((-1L) >= ((((safe_add_func_int16_t_s_s((((*l_91) = 0x7B45L) , ((l_203[l_142] , p_2126->g_81.f2) > p_69)), l_138)) & p_2126->g_197[8][2]) , (void*)0) == &p_2126->g_73)) , p_2126->g_13[2][7][1])), p_2126->g_78))) || p_69) , (-1L))) <= p_68), 6)) || 0x852692D5F5AD00F8L) == 2UL) != 0x7C61834CL) | (*l_103)) | p_68)) | p_2126->g_122[0][3])) , (void*)0) == (void*)0) > p_2126->g_122[4][2]))))))), p_2126->g_122[6][0])) | p_2126->g_171);
                        l_203[l_142] = (*p_2126->g_74);
                        (*l_240) = (void*)0;
                        if ((*p_2126->g_74))
                            break;
                    }
                }
                for (l_193 = 29; (l_193 != (-5)); --l_193)
                { /* block id: 102 */
                    uint16_t l_278 = 1UL;
                    int16_t *l_281 = &p_2126->g_238;
                    uint64_t *l_282 = &p_2126->g_17;
                    for (l_196 = 0; (l_196 > 28); l_196 = safe_add_func_uint32_t_u_u(l_196, 1))
                    { /* block id: 105 */
                        int32_t *l_246 = (void*)0;
                        int32_t *l_247 = &l_146;
                        int32_t *l_248 = (void*)0;
                        int32_t *l_249 = &l_149;
                        int32_t *l_250 = (void*)0;
                        int32_t *l_251 = (void*)0;
                        int32_t *l_252[9] = {&l_159[3],&l_159[3],&l_159[3],&l_159[3],&l_159[3],&l_159[3],&l_159[3],&l_159[3],&l_159[3]};
                        uint8_t **l_275 = (void*)0;
                        uint8_t ***l_274[9] = {&l_275,&l_275,&l_275,&l_275,&l_275,&l_275,&l_275,&l_275,&l_275};
                        uint16_t *l_276[1][2];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_276[i][j] = &p_2126->g_277[2][0];
                        }
                        if (l_151[5][1])
                            break;
                        ++p_2126->g_253;
                        (*l_249) &= (((*p_70) = (GROUP_DIVERGE(1, 1) , (*p_70))) == (((*l_91) = (((safe_add_func_uint64_t_u_u((*p_71), (safe_mul_func_int16_t_s_s((((safe_div_func_uint8_t_u_u(p_2126->g_157.f1, (safe_add_func_uint64_t_u_u(((safe_mod_func_int64_t_s_s((((safe_rshift_func_int16_t_s_s((0x603D10254E0B6B59L == p_2126->g_115[6]), (safe_mod_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(((void*)0 == l_274[8]), 1)), (p_2126->g_134 , (--l_278)))))) != (0x5A08351A493D74D1L == p_2126->g_134)) >= FAKE_DIVERGE(p_2126->local_0_offset, get_local_id(0), 10)), p_2126->g_115[5])) != 0xDB1E767BL), (*p_71))))) , &p_2126->g_92) != l_281), 0x512AL)))) | 0x78910EDCCFC09306L) != 65535UL)) && l_278));
                        return l_282;
                    }
                    for (l_196 = 0; (l_196 != 17); l_196 = safe_add_func_int64_t_s_s(l_196, 7))
                    { /* block id: 116 */
                        return l_285[2];
                    }
                    if (p_68)
                        continue;
                }
                for (p_68 = 0; (p_68 >= 4); ++p_68)
                { /* block id: 123 */
                    uint16_t *l_292 = &p_2126->g_277[0][0];
                    int32_t *l_293 = &l_193;
                    int8_t *l_305 = (void*)0;
                    int8_t *l_306 = &p_2126->g_195;
                    int32_t l_313 = (-1L);
                    (*l_293) |= ((((p_2126->g_197[6][2] ^ (safe_mul_func_uint16_t_u_u(p_68, ((*l_292) &= (l_151[5][1] , (((p_2126->g_126 > ((GROUP_DIVERGE(2, 1) < GROUP_DIVERGE(0, 1)) == p_68)) | 0x2B81L) && ((((!4294967288UL) , 0x8BC31AB2L) & (p_69 < 0x7265DA1EL)) & (*p_70)))))))) , FAKE_DIVERGE(p_2126->local_0_offset, get_local_id(0), 10)) , (void*)0) != &p_2126->g_204);
                    if (((-8L) || ((safe_mod_func_int32_t_s_s(((safe_mul_func_int8_t_s_s(((void*)0 == l_298), ((*l_306) |= (safe_add_func_int64_t_s_s((safe_mod_func_int64_t_s_s(((-2L) > ((!((void*)0 == &l_77)) >= (((safe_lshift_func_uint16_t_u_s(((p_2126->g_78 != ((0x5B8A99B1767BC636L || (*p_71)) , p_2126->g_157.f0)) > (*l_293)), p_69)) != p_2126->g_238) || p_2126->g_152[9]))), l_151[5][1])), p_2126->g_122[7][1]))))) , p_2126->g_157.f4), l_151[5][1])) != 0x4EA6FC00449A5E17L)))
                    { /* block id: 127 */
                        int32_t *l_307 = &l_146;
                        int32_t *l_308[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_308[i] = (void*)0;
                        p_2126->g_309--;
                        --p_2126->g_315;
                    }
                    else
                    { /* block id: 130 */
                        uint32_t l_322 = 0x3001091EL;
                        uint16_t *l_323[3][2][8] = {{{&p_2126->g_277[2][0],&p_2126->g_277[2][0],&p_2126->g_115[2],&p_2126->g_115[5],(void*)0,&p_2126->g_115[5],&p_2126->g_115[2],&p_2126->g_277[2][0]},{&p_2126->g_277[2][0],&p_2126->g_277[2][0],&p_2126->g_115[2],&p_2126->g_115[5],(void*)0,&p_2126->g_115[5],&p_2126->g_115[2],&p_2126->g_277[2][0]}},{{&p_2126->g_277[2][0],&p_2126->g_277[2][0],&p_2126->g_115[2],&p_2126->g_115[5],(void*)0,&p_2126->g_115[5],&p_2126->g_115[2],&p_2126->g_277[2][0]},{&p_2126->g_277[2][0],&p_2126->g_277[2][0],&p_2126->g_115[2],&p_2126->g_115[5],(void*)0,&p_2126->g_115[5],&p_2126->g_115[2],&p_2126->g_277[2][0]}},{{&p_2126->g_277[2][0],&p_2126->g_277[2][0],&p_2126->g_115[2],&p_2126->g_115[5],(void*)0,&p_2126->g_115[5],&p_2126->g_115[2],&p_2126->g_277[2][0]},{&p_2126->g_277[2][0],&p_2126->g_277[2][0],&p_2126->g_115[2],&p_2126->g_115[5],(void*)0,&p_2126->g_115[5],&p_2126->g_115[2],&p_2126->g_277[2][0]}}};
                        int32_t *l_324 = &l_166[2];
                        int i, j, k;
                        l_313 ^= ((*l_324) &= (((p_2126->g_277[1][0] | (p_2126->g_115[6] = (p_69 = (((safe_rshift_func_uint16_t_u_s(((*p_70) | ((*l_293) = ((safe_add_func_uint8_t_u_u(((((((void*)0 == &p_69) & (-3L)) != (1L == (l_322 = 2L))) , (void*)0) == p_70), p_69)) != p_2126->g_122[4][2]))), p_68)) >= p_2126->g_81.f3) != (*p_71))))) , (*l_103)) > 4294967293UL));
                        (*l_76) = p_70;
                    }
                    (*p_2126->g_327) = l_325;
                }
                if (p_69)
                    break;
            }
        }
    }
    else
    { /* block id: 144 */
        uint16_t *l_330 = &p_2126->g_277[0][0];
        int32_t l_331[3];
        uint16_t *l_335 = &p_2126->g_115[6];
        uint16_t **l_334 = &l_335;
        int64_t *l_336 = &l_196;
        int32_t l_373 = 0x4A1EC5A4L;
        int32_t l_374 = (-3L);
        uint8_t l_425 = 0x75L;
        int32_t **l_492 = &p_2126->g_74;
        int32_t *l_640 = &l_374;
        uint8_t l_641[7][5] = {{246UL,255UL,255UL,246UL,246UL},{246UL,255UL,255UL,246UL,246UL},{246UL,255UL,255UL,246UL,246UL},{246UL,255UL,255UL,246UL,246UL},{246UL,255UL,255UL,246UL,246UL},{246UL,255UL,255UL,246UL,246UL},{246UL,255UL,255UL,246UL,246UL}};
        uint8_t l_660 = 0x72L;
        uint64_t l_753 = 0x55B54C819387C925L;
        int64_t l_756[9][8][3] = {{{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L}},{{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L}},{{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L}},{{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L}},{{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L}},{{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L}},{{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L}},{{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L}},{{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L},{0x33847C3930D0F366L,0x3EA1B273A68AA2BDL,0x3B454D43C30F84A1L}}};
        struct S0 *l_784 = (void*)0;
        struct S0 *l_786 = &p_2126->g_610[3];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_331[i] = 0L;
        if (((((~(((*l_330) = (p_2126->g_78 >= (p_68 < p_68))) | (((l_331[1] ^ (((safe_sub_func_int8_t_s_s(((l_337 = (+(((+((+((*l_336) = (((l_331[1] && (p_2126->g_314 & p_68)) , &p_69) == ((*l_334) = &p_69)))) ^ p_2126->g_92)) ^ 0x651ACF54L) >= 0x5BL))) <= l_331[1]), GROUP_DIVERGE(0, 1))) || l_331[2]) | p_2126->g_13[4][1][1])) & p_69) >= l_331[1]))) >= (*p_2126->g_329)) > (-1L)) < 0L))
        { /* block id: 149 */
            int32_t l_346 = 0x4DF0ABBEL;
            int32_t *l_368 = (void*)0;
            int32_t *l_369 = (void*)0;
            int32_t *l_370 = &p_2126->g_78;
            for (p_2126->g_17 = (-5); (p_2126->g_17 >= 60); p_2126->g_17 = safe_add_func_uint16_t_u_u(p_2126->g_17, 9))
            { /* block id: 152 */
                uint64_t *l_351 = (void*)0;
                int8_t *l_358 = &p_2126->g_140;
                int32_t l_359[6];
                int64_t *l_360 = &p_2126->g_342.f0;
                int32_t *l_361[4][4][4] = {{{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0}},{{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0}},{{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0}},{{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0},{&l_150,&p_2126->g_134,&p_2126->g_78,(void*)0}}};
                int i, j, k;
                for (i = 0; i < 6; i++)
                    l_359[i] = (-8L);
                for (p_2126->g_78 = 22; (p_2126->g_78 != 12); --p_2126->g_78)
                { /* block id: 155 */
                    (*p_2126->g_345) = p_2126->g_342;
                    for (p_2126->g_238 = 6; (p_2126->g_238 >= 2); p_2126->g_238 -= 1)
                    { /* block id: 159 */
                        p_2126->g_134 |= l_331[1];
                        (*p_2126->g_347) |= (l_331[1] ^= l_346);
                    }
                    for (p_2126->g_342.f2 = 0; p_2126->g_342.f2 < 8; p_2126->g_342.f2 += 1)
                    {
                        p_2126->g_115[p_2126->g_342.f2] = 0x4BFBL;
                    }
                    if (p_69)
                        continue;
                }
                l_331[1] |= (((*l_360) = ((((**p_2126->g_328) & (safe_rshift_func_int16_t_s_s(((((p_2126->g_152[2] , p_2126->g_350) == l_351) != (safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_2126->global_1_offset, get_global_id(1), 10), ((p_2126->g_342.f3 < p_2126->g_342.f3) & l_346)))) & (safe_add_func_uint16_t_u_u((p_68 >= (p_2126->g_195 = ((*l_358) ^= (safe_add_func_int16_t_s_s((-7L), 0x106DL))))), l_359[2]))), p_68))) <= GROUP_DIVERGE(2, 1)) , 0x48A1E380211BB4B3L)) , 0x46E1EE88L);
                return &p_2126->g_17;
            }
            l_374 = (p_68 != (l_331[1] = (l_373 ^= (safe_rshift_func_uint16_t_u_u(((++(*p_71)) ^ (safe_mod_func_int32_t_s_s(((*p_2126->g_347) = ((*l_370) &= p_68)), (--(*p_70))))), (l_331[2] == (p_2126->g_238 = p_69)))))));
        }
        else
        { /* block id: 181 */
            int8_t l_375 = (-5L);
            int32_t l_397 = 0x0F084FAEL;
            int16_t l_409 = (-1L);
            uint8_t *l_420 = &p_2126->g_13[2][7][1];
            uint8_t **l_419 = &l_420;
            uint8_t ***l_418 = &l_419;
            int32_t l_441[4];
            uint32_t l_449 = 0x8E1BF947L;
            int32_t ***l_470[2][2][7] = {{{&l_76,&l_76,&l_75,&l_76,&l_76,&l_76,&l_75},{&l_76,&l_76,&l_75,&l_76,&l_76,&l_76,&l_75}},{{&l_76,&l_76,&l_75,&l_76,&l_76,&l_76,&l_75},{&l_76,&l_76,&l_75,&l_76,&l_76,&l_76,&l_75}}};
            struct S0 *l_500[6];
            uint16_t l_530 = 2UL;
            uint8_t *l_542 = &p_2126->g_197[3][7];
            uint8_t *l_559 = (void*)0;
            uint8_t *l_560 = &p_2126->g_126;
            uint32_t l_564[1];
            int64_t l_608 = 0x0816CDA1DEB6DD3BL;
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_441[i] = 0x5089B286L;
            for (i = 0; i < 6; i++)
                l_500[i] = &p_2126->g_501[2][0];
            for (i = 0; i < 1; i++)
                l_564[i] = 0xD43EC584L;
            if (l_375)
            { /* block id: 182 */
                uint16_t l_393 = 65530UL;
                uint64_t l_395 = 3UL;
                int32_t *l_396 = (void*)0;
                l_397 = ((((0L > ((4294967295UL | (safe_add_func_uint32_t_u_u((((((safe_mod_func_uint8_t_u_u(((-1L) || (safe_lshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_s((18446744073709551615UL == ((safe_rshift_func_int16_t_s_u((p_2126->g_81.f0 >= l_374), 5)) <= ((*p_71) &= GROUP_DIVERGE(0, 1)))), 13)), p_68))), (safe_mod_func_uint16_t_u_u((((((l_331[1] = (p_2126->g_394 = (((safe_add_func_int64_t_s_s(p_68, (p_2126->g_392[7] = (safe_lshift_func_int16_t_s_s(((p_2126->g_134 <= FAKE_DIVERGE(p_2126->local_0_offset, get_local_id(0), 10)) || 2L), 3))))) <= p_68) || l_393))) | p_69) == p_68) ^ p_2126->g_13[2][7][1]) <= l_395), p_69)))) == p_68) , 0x5F2890A5L) & 0x669A5826L) && 0x58L), 0x25A0BAEFL))) != p_68)) | 0x6B6BL) != 18446744073709551614UL) <= 0x5B6DF4DFEFB0E1C0L);
                return p_71;
            }
            else
            { /* block id: 189 */
                uint8_t *l_398 = &p_2126->g_197[6][5];
                int32_t l_440[1];
                int32_t ***l_458[10][7] = {{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76},{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76},{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76},{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76},{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76},{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76},{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76},{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76},{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76},{(void*)0,&l_76,&l_76,&l_76,&l_75,(void*)0,&l_76}};
                int8_t *l_467[9] = {&p_2126->g_195,&p_2126->g_195,&p_2126->g_195,&p_2126->g_195,&p_2126->g_195,&p_2126->g_195,&p_2126->g_195,&p_2126->g_195,&p_2126->g_195};
                int64_t l_531 = 0x0533DBDFC090A7F4L;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_440[i] = 0L;
lbl_448:
                p_2126->g_78 &= ((p_2126->g_140 <= (-8L)) & (((--(*l_398)) ^ (safe_lshift_func_uint8_t_u_u(p_2126->g_312[1], 5))) != (!(((safe_lshift_func_int8_t_s_u((((*p_71) >= (safe_rshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((l_409 == (((*p_2126->g_329) & (p_2126->g_412 == ((safe_mod_func_uint16_t_u_u((0x27L >= (l_418 == p_2126->g_421)), p_68)) , l_424))) || p_2126->g_309)) , 1L), p_68)), 0))) >= (*p_2126->g_413)), p_69)) , 0x5B8DE8F233E4131CL) , p_69))));
lbl_480:
                if ((l_331[2] , ((0xB2C81C13L <= l_331[1]) < l_425)))
                { /* block id: 192 */
                    (*p_2126->g_347) &= (safe_mod_func_int64_t_s_s(p_68, (p_2126->g_392[1] &= (--(*p_71)))));
                    for (p_2126->g_342.f1 = 9; (p_2126->g_342.f1 >= 2); p_2126->g_342.f1 -= 1)
                    { /* block id: 198 */
                        return l_430[0];
                    }
                    (*p_2126->g_347) ^= p_69;
                    for (p_2126->g_342.f1 = 0; (p_2126->g_342.f1 <= 7); p_2126->g_342.f1 += 1)
                    { /* block id: 204 */
                        (*l_76) = (void*)0;
                        (*l_76) = &p_2126->g_78;
                    }
                }
                else
                { /* block id: 208 */
                    int8_t l_433 = 3L;
                    int32_t l_442 = 0x2BFB4BC8L;
                    int32_t l_443 = (-1L);
                    int32_t l_444 = 1L;
                    for (p_2126->g_73 = 0; (p_2126->g_73 > 2); p_2126->g_73++)
                    { /* block id: 211 */
                        int32_t *l_434 = &l_374;
                        int32_t *l_435 = &l_374;
                        int32_t *l_436 = &p_2126->g_134;
                        int32_t *l_437 = &l_193;
                        int32_t *l_438 = (void*)0;
                        int32_t *l_439[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_439[i] = &l_150;
                        l_445[6]++;
                        l_444 ^= 0x07E6DFCEL;
                        if (p_2126->g_17)
                            goto lbl_448;
                        (*p_2126->g_347) = l_449;
                    }
                    (*l_76) = (*l_75);
                }
                if ((safe_div_func_int32_t_s_s((safe_sub_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((~(safe_add_func_uint16_t_u_u((p_69 = GROUP_DIVERGE(2, 1)), ((*l_91) = 0x0F2DL)))), ((l_425 , (((p_68 <= (((p_2126->g_459 = &p_2126->g_74) != (((((*p_2126->g_329) = ((*p_70) = (safe_div_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(((safe_unary_minus_func_uint16_t_u(l_374)) , 0x7BL), (p_2126->g_140 |= p_2126->g_81.f1))), p_68)) != ((safe_div_func_int8_t_s_s(((void*)0 == l_470[0][1][4]), p_2126->g_122[4][2])) , l_374)), 0x0D8FL)))) ^ 0L) == 0x6C8330DDA571C69DL) , &l_77)) >= GROUP_DIVERGE(0, 1))) != p_2126->g_197[6][5]) != p_2126->g_78)) != 0x53105DCEL))), 0x180AF87DL)), p_2126->g_115[3])))
                { /* block id: 225 */
                    int16_t l_496 = 0x59ECL;
                    int32_t l_497 = (-6L);
                    for (l_449 = 14; (l_449 > 19); l_449 = safe_add_func_int16_t_s_s(l_449, 8))
                    { /* block id: 228 */
                        int32_t *l_479 = &l_374;
                        l_374 |= (safe_mod_func_uint8_t_u_u((safe_mul_func_int32_t_s_s((p_68 | 0x692D8F7FL), (safe_div_func_int64_t_s_s(((*l_336) = (0x2F2DL && 0UL)), (*p_71))))), p_68));
                        (*p_2126->g_459) = l_479;
                        if (l_425)
                            goto lbl_480;
                    }
                    for (l_150 = (-15); (l_150 <= (-2)); l_150++)
                    { /* block id: 236 */
                        uint32_t *l_489 = &l_220;
                        int64_t *l_495 = &p_2126->g_342.f0;
                        struct S0 **l_502 = (void*)0;
                        struct S0 **l_503 = &l_500[0];
                        int32_t l_504[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_504[i] = 0x749A33E3L;
                        l_497 = ((safe_rshift_func_uint16_t_u_u(0x599CL, (**p_2126->g_412))) && (safe_sub_func_int16_t_s_s(((safe_div_func_int32_t_s_s((((*p_2126->g_328) = l_489) == p_70), (+((~((safe_mod_func_uint16_t_u_u(((l_492 == (void*)0) != ((*p_2126->g_347) = (l_331[1] |= ((void*)0 == (*p_2126->g_412))))), (safe_rshift_func_int8_t_s_s(((l_495 != l_495) ^ p_2126->g_342.f3), p_69)))) , p_69)) != (*p_70))))) ^ l_496), 0xADC3L)));
                        p_2126->g_78 &= ((safe_add_func_int16_t_s_s(p_2126->g_81.f1, l_496)) > (l_504[0] = ((((*l_503) = l_500[0]) != (void*)0) || (4294967294UL ^ (~(p_69 && (p_69 != p_2126->g_501[2][0].f0)))))));
                    }
                    for (l_409 = 0; (l_409 != (-5)); l_409--)
                    { /* block id: 247 */
                        int32_t *l_507 = &l_440[0];
                        (*p_2126->g_347) = (l_497 | (*p_2126->g_413));
                        if (p_69)
                            continue;
                        if (l_497)
                            continue;
                        l_507 = (*l_75);
                    }
                }
                else
                { /* block id: 253 */
                    int32_t ****l_522 = &l_470[0][0][3];
                    int32_t ****l_523 = &l_458[6][6];
                    int32_t *l_532 = &l_146;
                    (*p_2126->g_347) = (safe_div_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(p_69, 2)), 251UL));
                    l_93 &= p_68;
                    (*l_532) &= (p_2126->g_92 , (!(safe_add_func_uint8_t_u_u(((GROUP_DIVERGE(0, 1) == (((**p_2126->g_412) < (safe_add_func_int64_t_s_s(((((safe_div_func_uint16_t_u_u(((safe_mod_func_int64_t_s_s(((((((safe_mul_func_int16_t_s_s(p_2126->g_171, (((*l_522) = (void*)0) == ((*l_523) = &l_492)))) ^ (((((**p_2126->g_328) & (GROUP_DIVERGE(1, 1) , (+((safe_mod_func_int64_t_s_s(p_68, (4294967294UL && ((safe_rshift_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((*p_70), 1L)), 2)) && p_69)))) & l_441[1])))) < p_2126->g_277[1][0]) < p_2126->g_342.f1) , FAKE_DIVERGE(p_2126->global_0_offset, get_global_id(0), 10))) | 65535UL) <= l_530) , 0x25BA7A52C9B0DF28L) & p_2126->g_17), (*p_71))) , 3UL), (*p_2126->g_413))) >= 0x00L) , l_531) || p_2126->g_115[2]), 0x05FBB34B012D960DL))) || 7UL)) < p_69), p_69))));
                    --p_2126->g_533;
                }
            }
            if ((0x7CBCCC81L >= ((((safe_add_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((FAKE_DIVERGE(p_2126->global_0_offset, get_global_id(0), 10) && ((**p_2126->g_412) < (((~(-1L)) >= ((safe_mod_func_uint8_t_u_u(0x92L, ((*l_542)++))) ^ (p_2126->g_140 , ((*p_2126->g_329) && ((*p_70) & (**p_2126->g_328)))))) ^ (safe_add_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s(((*l_560) ^= (safe_rshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(p_2126->g_501[2][0].f3, p_68)), (*p_2126->g_413))) == (-5L)), p_68))), 5)), p_2126->g_13[2][6][1])), 0)) ^ (*p_2126->g_413)), 251UL))))) | (-1L)), 1UL)), 65535UL)) ^ (**p_2126->g_328)) ^ (*p_71)) > l_561)))
            { /* block id: 264 */
                return p_71;
            }
            else
            { /* block id: 266 */
                int32_t l_562 = 3L;
                int32_t l_563 = (-1L);
                int64_t *l_581 = &p_2126->g_342.f0;
                int64_t **l_582 = &l_581;
                int32_t *l_587 = (void*)0;
                int32_t *l_588 = &p_2126->g_589;
                l_564[0]++;
                if ((p_2126->g_81.f0 >= (safe_div_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(p_69, (((((*l_588) = ((((*l_560) = (safe_add_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_s((safe_div_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((p_69 & (l_331[2] != (p_2126->g_78 = (safe_add_func_uint16_t_u_u((((*l_582) = l_581) == (void*)0), ((*l_91) = p_2126->g_342.f1)))))), (--p_2126->g_197[6][5]))), ((safe_lshift_func_int8_t_s_s(l_562, 0)) && (p_69 , 0xC76D20A86E398AAAL)))), 9)) , p_2126->g_277[2][0]), p_69))) , (-4L)) , p_69)) , 7L) || 4294967295UL) > 0xEBL))), p_2126->g_590))))
                { /* block id: 274 */
                    uint8_t l_601[7][10] = {{1UL,0x2BL,0x6CL,0x16L,0xF9L,0x74L,1UL,0UL,8UL,8UL},{1UL,0x2BL,0x6CL,0x16L,0xF9L,0x74L,1UL,0UL,8UL,8UL},{1UL,0x2BL,0x6CL,0x16L,0xF9L,0x74L,1UL,0UL,8UL,8UL},{1UL,0x2BL,0x6CL,0x16L,0xF9L,0x74L,1UL,0UL,8UL,8UL},{1UL,0x2BL,0x6CL,0x16L,0xF9L,0x74L,1UL,0UL,8UL,8UL},{1UL,0x2BL,0x6CL,0x16L,0xF9L,0x74L,1UL,0UL,8UL,8UL},{1UL,0x2BL,0x6CL,0x16L,0xF9L,0x74L,1UL,0UL,8UL,8UL}};
                    struct S0 *l_609 = &p_2126->g_501[2][0];
                    int i, j;
                    for (p_69 = 0; (p_69 != 6); p_69 = safe_add_func_uint8_t_u_u(p_69, 1))
                    { /* block id: 277 */
                        uint32_t l_607 = 1UL;
                        (*p_2126->g_347) ^= (GROUP_DIVERGE(2, 1) | ((safe_mul_func_int8_t_s_s(l_562, ((*p_70) < ((safe_div_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(((void*)0 == l_91), (l_601[6][0] == ((0xD16A3229L ^ p_68) ^ (((0x5754A440FA3ACAB5L && ((((((((safe_div_func_uint32_t_u_u(((*p_2126->g_329) ^= ((((safe_div_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s(p_69)), 9L)) ^ l_607) <= p_2126->g_342.f4) < 1L)), l_608)) < 1UL) , &p_2126->g_501[4][0]) != l_609) <= (*p_70)) > 0x2737AC3367234A3DL) & l_607) > l_562)) , l_500[0]) != l_500[0]))))), p_69)) | p_68)))) != p_68));
                        return &p_2126->g_392[6];
                    }
                    (*l_609) = p_2126->g_610[3];
                    for (l_375 = 0; (l_375 <= 5); l_375 += 1)
                    { /* block id: 285 */
                        uint32_t l_615 = 4294967290UL;
                        int64_t l_618 = 8L;
                        l_618 = (~((((*l_336) = (safe_div_func_int64_t_s_s((l_563 = p_2126->g_610[3].f1), (((p_2126->g_167 , &p_2126->g_422) != ((safe_lshift_func_uint8_t_u_u((l_615 &= p_69), 0)) , (void*)0)) || 255UL)))) & p_2126->g_15) , (l_563 = (((safe_mul_func_uint16_t_u_u(0UL, (*p_2126->g_413))) ^ p_69) , p_68))));
                        (*p_2126->g_347) = (safe_add_func_uint32_t_u_u(0xF247815FL, (*p_2126->g_329)));
                    }
                    return &p_2126->g_17;
                }
                else
                { /* block id: 294 */
                    return &p_2126->g_392[7];
                }
            }
        }
        (*l_492) = (*l_492);
        if (((((((((p_69 | (safe_sub_func_int32_t_s_s(((*l_640) |= (l_331[1] = (((0UL > (((safe_add_func_int16_t_s_s((safe_mul_func_int16_t_s_s((((safe_lshift_func_int16_t_s_s((p_2126->g_342.f3 = (0x73B22BD3L != (safe_div_func_int8_t_s_s((((*p_2126->g_347) = l_631) ^ ((safe_unary_minus_func_int16_t_s((&p_2126->g_171 == ((safe_sub_func_uint16_t_u_u(((**l_424) |= (((0xA9L > (((*l_91) = (!(~((((*l_330) = FAKE_DIVERGE(p_2126->global_2_offset, get_global_id(2), 10)) ^ ((void*)0 == p_2126->g_637)) , p_2126->g_277[1][0])))) < p_68)) , l_639) == l_639)), 0x1FD1L)) , p_71)))) | 0x6222L)), p_69)))), p_2126->g_15)) , (*p_71)) >= p_2126->g_392[5]), 0x3026L)), p_68)) == 1L) | p_68)) <= p_68) ^ p_2126->g_501[2][0].f1))), 0x29F85C22L))) , (*l_640)) >= l_641[0][3]) == p_2126->g_17) != p_2126->g_238) & (*p_70)) || p_2126->g_642) >= (-1L)))
        { /* block id: 307 */
            int64_t l_653 = (-2L);
            uint32_t *l_672 = &p_2126->g_122[4][2];
            uint32_t **l_675[10][7] = {{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329},{&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329,&p_2126->g_329}};
            int i, j;
            if ((((safe_lshift_func_int16_t_s_u((((((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((**l_424) = (safe_mul_func_int16_t_s_s((((safe_rshift_func_uint16_t_u_s(0xDF3CL, 12)) & p_2126->g_195) == (-3L)), (l_653 <= ((p_2126->g_172 ^ ((((((((((*p_70) = ((safe_add_func_int8_t_s_s(p_68, (safe_div_func_uint64_t_u_u(((*p_71) = (safe_mul_func_int16_t_s_s(p_69, p_2126->g_342.f3))), 18446744073709551608UL)))) && p_69)) == 0UL) < 0xE7A697EFL) < p_69) , p_69) <= GROUP_DIVERGE(2, 1)) , l_653) ^ p_69) && l_660)) & l_661))))), p_69)), 9L)) > 0x01F3L) == l_662) < GROUP_DIVERGE(1, 1)) & l_653), p_69)) ^ p_69) || l_653))
            { /* block id: 311 */
lbl_694:
                (*l_640) ^= p_68;
            }
            else
            { /* block id: 313 */
                int32_t l_663 = 0x1179C9ABL;
                int32_t l_680 = 0x72D80CDCL;
                if ((((*p_71) < l_663) != (safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u(((((safe_mod_func_int8_t_s_s(((((*p_70) | (*p_70)) , (safe_lshift_func_int8_t_s_u((((l_672 = (void*)0) == (((safe_lshift_func_int8_t_s_s((&p_70 != l_675[1][0]), 2)) == (safe_div_func_int64_t_s_s((((p_68 , (*l_640)) == p_68) & (*p_2126->g_347)), 0x68742BF5A33100FEL))) , p_70)) , p_2126->g_152[7]), l_678))) < (*p_2126->g_329)), GROUP_DIVERGE(0, 1))) ^ p_69) , 0x5348D72DL) && (*p_2126->g_347)), (*p_2126->g_413))), 0x1E75443EL))))
                { /* block id: 315 */
                    uint64_t *l_679 = &p_2126->g_17;
                    return l_679;
                }
                else
                { /* block id: 317 */
                    l_680 ^= (*p_2126->g_347);
                }
                for (l_150 = 7; (l_150 >= 0); l_150 -= 1)
                { /* block id: 322 */
                    int8_t l_681[8][1] = {{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}};
                    int32_t *l_682 = &l_142;
                    int32_t *l_683 = &p_2126->g_78;
                    int32_t *l_684 = (void*)0;
                    int32_t *l_685 = (void*)0;
                    int32_t *l_686 = &l_193;
                    int32_t *l_687[10];
                    int i, j;
                    for (i = 0; i < 10; i++)
                        l_687[i] = &l_142;
                    for (p_2126->g_342.f3 = 0; (p_2126->g_342.f3 <= 7); p_2126->g_342.f3 += 1)
                    { /* block id: 325 */
                        int i;
                        if (p_2126->g_115[p_2126->g_342.f3])
                            break;
                    }
                    ++p_2126->g_691;
                    (*l_492) = (void*)0;
                    if (p_2126->g_691)
                        goto lbl_694;
                    for (p_2126->g_15 = 0; (p_2126->g_15 <= 0); p_2126->g_15 += 1)
                    { /* block id: 333 */
                        int i, j;
                        (*l_683) &= (safe_rshift_func_int16_t_s_u((((safe_sub_func_uint64_t_u_u(((*p_71) = p_2126->g_277[(p_2126->g_15 + 2)][p_2126->g_15]), p_2126->g_115[(p_2126->g_15 + 7)])) < (safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_2126->local_0_offset, get_local_id(0), 10), (safe_mul_func_uint8_t_u_u(((((safe_lshift_func_uint16_t_u_u((((safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((safe_div_func_uint8_t_u_u(1UL, ((*p_2126->g_413) & ((safe_add_func_uint8_t_u_u(p_68, (safe_lshift_func_int8_t_s_u((p_68 ^ (safe_mul_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(((safe_div_func_int8_t_s_s(((l_336 = p_71) != &p_2126->g_171), (safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((((0x89878488L < (*p_2126->g_347)) , p_68) , GROUP_DIVERGE(2, 1)), (*l_682))), p_68)))) & 0UL), (**p_2126->g_328))), p_2126->g_122[4][3]))), p_69)))) != p_2126->g_115[(p_2126->g_15 + 7)])))) != 0x6124L), (-1L))), 0L)), 11)) ^ GROUP_DIVERGE(2, 1)) , p_68), 11)) , 0x4449563EL) < l_653) ^ 0x6FL), 0x23L))))) , 0x773CL), (*p_2126->g_413)));
                        l_727 = l_86[(p_2126->g_15 + 3)];
                    }
                }
                (*l_640) = p_69;
                for (p_2126->g_690 = 0; (p_2126->g_690 >= (-27)); --p_2126->g_690)
                { /* block id: 343 */
                    struct S0 *l_731 = &p_2126->g_342;
                    if (p_69)
                        break;
                    (*l_727) |= ((void*)0 == &l_86[2]);
                    (*l_731) = p_2126->g_730;
                }
            }
            if (l_631)
                goto lbl_732;
            return p_71;
        }
        else
        { /* block id: 351 */
            int16_t l_743[3];
            struct S0 *l_745 = &p_2126->g_730;
            struct S0 **l_744 = &l_745;
            int8_t *l_746 = &l_84;
            int32_t l_751[6] = {0L,2L,0L,0L,2L,0L};
            int8_t **l_761 = (void*)0;
            int8_t **l_762 = &l_746;
            uint32_t l_776 = 4294967291UL;
            int32_t l_779 = 0L;
            int32_t l_780 = 1L;
            int i;
            for (i = 0; i < 3; i++)
                l_743[i] = 0x698DL;
            (*l_727) = ((*p_71) && (0xA71755DBA54F4FFFL <= (((safe_lshift_func_int16_t_s_u(((safe_div_func_int8_t_s_s(((*l_746) = ((safe_div_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((safe_add_func_int16_t_s_s(((GROUP_DIVERGE(1, 1) <= ((((p_68 , &p_2126->g_342) != ((!l_743[0]) , ((*l_744) = &p_2126->g_610[3]))) && l_743[0]) || ((*p_2126->g_638) <= p_2126->g_501[2][0].f2))) != 0x0EL), p_2126->g_73)), 0x06DCL)), (-4L))) >= p_69)), p_2126->g_691)) ^ (-1L)), 11)) != 18446744073709551610UL) > p_2126->g_392[3])));
            for (l_150 = 7; (l_150 >= 0); l_150 -= 1)
            { /* block id: 357 */
                int16_t l_752 = 0x0BCBL;
                for (p_2126->g_690 = 0; (p_2126->g_690 <= 2); p_2126->g_690 += 1)
                { /* block id: 360 */
                    int32_t *l_747 = &p_2126->g_78;
                    int32_t *l_748 = &l_331[0];
                    int32_t *l_749 = (void*)0;
                    int32_t *l_750[4][3][5] = {{{&l_373,&l_150,(void*)0,&l_150,&l_373},{&l_373,&l_150,(void*)0,&l_150,&l_373},{&l_373,&l_150,(void*)0,&l_150,&l_373}},{{&l_373,&l_150,(void*)0,&l_150,&l_373},{&l_373,&l_150,(void*)0,&l_150,&l_373},{&l_373,&l_150,(void*)0,&l_150,&l_373}},{{&l_373,&l_150,(void*)0,&l_150,&l_373},{&l_373,&l_150,(void*)0,&l_150,&l_373},{&l_373,&l_150,(void*)0,&l_150,&l_373}},{{&l_373,&l_150,(void*)0,&l_150,&l_373},{&l_373,&l_150,(void*)0,&l_150,&l_373},{&l_373,&l_150,(void*)0,&l_150,&l_373}}};
                    int i, j, k;
                    l_753--;
                    return &p_2126->g_392[7];
                }
            }
            l_780 &= (p_68 < (l_756[3][4][2] & (safe_div_func_int16_t_s_s(((safe_mod_func_uint16_t_u_u((((*l_727) |= (&l_84 == ((*l_762) = &p_2126->g_140))) ^ ((void*)0 == p_2126->g_763)), (safe_div_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(((*p_2126->g_413) &= GROUP_DIVERGE(1, 1)), ((*l_91) = p_2126->g_610[3].f3))), (l_751[0] = (!(safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_s(((l_776 || (safe_mod_func_int32_t_s_s(0x1604CC8FL, (-5L)))) >= (**p_2126->g_637)), p_2126->g_197[6][5])), 0x48021195L)))))), 14)), l_779)))) || p_68), (-1L)))));
            for (l_142 = 0; (l_142 < (-24)); --l_142)
            { /* block id: 373 */
                uint8_t l_783 = 249UL;
                l_783 &= ((0L <= ((*l_727) = 0x53C760DDL)) > FAKE_DIVERGE(p_2126->group_1_offset, get_group_id(1), 10));
            }
        }
        (*l_786) = (*p_2126->g_345);
    }
    return &p_2126->g_392[7];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_2127;
    struct S1* p_2126 = &c_2127;
    struct S1 c_2128 = {
        {{{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL}},{{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL}},{{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL}},{{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL}},{{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL}},{{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL}},{{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL},{0xA4L,249UL}}}, // p_2126->g_13
        0x31F1L, // p_2126->g_15
        18446744073709551612UL, // p_2126->g_17
        {1UL,1UL}, // p_2126->g_28
        (-10L), // p_2126->g_73
        (void*)0, // p_2126->g_74
        0x60F1B639L, // p_2126->g_78
        {0x5B29219798973645L,0L,-5L,3L,1L,0x0340L}, // p_2126->g_81
        4L, // p_2126->g_92
        {0x1A1EL,0x1A1EL,0x1A1EL,0x1A1EL,0x1A1EL,0x1A1EL,0x1A1EL,0x1A1EL}, // p_2126->g_115
        {{4UL,4UL,0x4DDD4CC6L,4294967291UL},{4UL,4UL,0x4DDD4CC6L,4294967291UL},{4UL,4UL,0x4DDD4CC6L,4294967291UL},{4UL,4UL,0x4DDD4CC6L,4294967291UL},{4UL,4UL,0x4DDD4CC6L,4294967291UL},{4UL,4UL,0x4DDD4CC6L,4294967291UL},{4UL,4UL,0x4DDD4CC6L,4294967291UL},{4UL,4UL,0x4DDD4CC6L,4294967291UL},{4UL,4UL,0x4DDD4CC6L,4294967291UL}}, // p_2126->g_122
        0x35L, // p_2126->g_126
        0x320AFAF4L, // p_2126->g_134
        0x2EL, // p_2126->g_140
        {65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL}, // p_2126->g_152
        {0L,0x55BADF45L,0L,0L,-3L,65531UL}, // p_2126->g_157
        0x3A831FEEL, // p_2126->g_167
        7L, // p_2126->g_170
        (-1L), // p_2126->g_171
        0x90D5904A121D4F9BL, // p_2126->g_172
        (-10L), // p_2126->g_195
        {{0xF6L,0x25L,8UL,255UL,0xCDL,0x91L,0x91L,0xCDL},{0xF6L,0x25L,8UL,255UL,0xCDL,0x91L,0x91L,0xCDL},{0xF6L,0x25L,8UL,255UL,0xCDL,0x91L,0x91L,0xCDL},{0xF6L,0x25L,8UL,255UL,0xCDL,0x91L,0x91L,0xCDL},{0xF6L,0x25L,8UL,255UL,0xCDL,0x91L,0x91L,0xCDL},{0xF6L,0x25L,8UL,255UL,0xCDL,0x91L,0x91L,0xCDL},{0xF6L,0x25L,8UL,255UL,0xCDL,0x91L,0x91L,0xCDL},{0xF6L,0x25L,8UL,255UL,0xCDL,0x91L,0x91L,0xCDL},{0xF6L,0x25L,8UL,255UL,0xCDL,0x91L,0x91L,0xCDL}}, // p_2126->g_197
        18446744073709551612UL, // p_2126->g_200
        1UL, // p_2126->g_204
        0x22FEL, // p_2126->g_238
        0xDA28L, // p_2126->g_253
        {{0xFEFCL},{0xFEFCL},{0xFEFCL}}, // p_2126->g_277
        0UL, // p_2126->g_309
        {0x6DC1EBD9L,0x6DC1EBD9L,0x6DC1EBD9L,0x6DC1EBD9L}, // p_2126->g_312
        1L, // p_2126->g_314
        0x8ACA68ABL, // p_2126->g_315
        &p_2126->g_122[4][0], // p_2126->g_329
        &p_2126->g_329, // p_2126->g_328
        &p_2126->g_328, // p_2126->g_327
        {5L,4L,-1L,-1L,0x0A3A49C99BE29E2CL,65527UL}, // p_2126->g_342
        {{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342},{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342},{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342},{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342},{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342},{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342},{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342},{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342},{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342},{&p_2126->g_342,(void*)0,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,&p_2126->g_342,(void*)0,&p_2126->g_342}}, // p_2126->g_343
        (void*)0, // p_2126->g_344
        &p_2126->g_342, // p_2126->g_345
        &p_2126->g_134, // p_2126->g_347
        (void*)0, // p_2126->g_350
        {0x345A46EA1B7AEE73L,0x345A46EA1B7AEE73L,0x345A46EA1B7AEE73L,0x345A46EA1B7AEE73L,0x345A46EA1B7AEE73L,0x345A46EA1B7AEE73L,0x345A46EA1B7AEE73L,0x345A46EA1B7AEE73L}, // p_2126->g_392
        9L, // p_2126->g_394
        &p_2126->g_115[6], // p_2126->g_413
        &p_2126->g_413, // p_2126->g_412
        (void*)0, // p_2126->g_423
        &p_2126->g_423, // p_2126->g_422
        &p_2126->g_422, // p_2126->g_421
        (void*)0, // p_2126->g_459
        {{{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL}},{{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL}},{{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL}},{{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL}},{{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL}},{{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL}},{{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL}},{{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL}},{{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL},{1L,0x3EEC9403L,0x19182367L,1L,0x05BFE611F490C95CL,0xC4CDL}}}, // p_2126->g_501
        0UL, // p_2126->g_533
        (-5L), // p_2126->g_589
        0UL, // p_2126->g_590
        {{0x5E72DF9C2B1125A9L,0x7FFEC621L,0L,0L,0x6249D9191CBC9DA2L,65527UL},{0x5E72DF9C2B1125A9L,0x7FFEC621L,0L,0L,0x6249D9191CBC9DA2L,65527UL},{0x5E72DF9C2B1125A9L,0x7FFEC621L,0L,0L,0x6249D9191CBC9DA2L,65527UL},{0x5E72DF9C2B1125A9L,0x7FFEC621L,0L,0L,0x6249D9191CBC9DA2L,65527UL},{0x5E72DF9C2B1125A9L,0x7FFEC621L,0L,0L,0x6249D9191CBC9DA2L,65527UL}}, // p_2126->g_610
        &p_2126->g_13[1][6][0], // p_2126->g_638
        &p_2126->g_638, // p_2126->g_637
        0x96E6L, // p_2126->g_642
        0x4222C8CBL, // p_2126->g_688
        1L, // p_2126->g_689
        0x1DFE016FL, // p_2126->g_690
        0x165638D1L, // p_2126->g_691
        {6L,0L,0x4390D97BL,0x0582L,0x08A47893A0ACD5B7L,65534UL}, // p_2126->g_730
        (void*)0, // p_2126->g_763
        {&p_2126->g_501[6][1]}, // p_2126->g_785
        {0x6C682865D6331829L,0x6FB51699L,0x5539EEB4L,0x65EAL,-10L,65526UL}, // p_2126->g_805
        {0x03AC6DAA03074FA1L,0x04F0E647L,0x6078B557L,0x6FD1L,-1L,3UL}, // p_2126->g_837
        {0x22A7FFDA92AA31E2L,-10L,0x4C67B116L,-1L,-9L,5UL}, // p_2126->g_840
        {0x014A7143E3451E66L,-1L,0x7F13869AL,-3L,0x14660CF277DDFA6DL,0x3449L}, // p_2126->g_842
        (-10L), // p_2126->g_859
        0x418F4B9BL, // p_2126->g_860
        0xED1EL, // p_2126->g_861
        &p_2126->g_343[9][8], // p_2126->g_887
        {0UL,0UL,0UL}, // p_2126->g_890
        {-9L,-1L,0x716B13C1L,0L,-9L,0xBEF5L}, // p_2126->g_897
        {&p_2126->g_81,&p_2126->g_81,&p_2126->g_81,&p_2126->g_81,&p_2126->g_81,&p_2126->g_81,&p_2126->g_81,&p_2126->g_81}, // p_2126->g_898
        {0L,0x7FB88EF0L,0x5E9681A0L,2L,0x379DE12B651A0F79L,0xEDBCL}, // p_2126->g_949
        {-6L,6L,0x6BEB11EAL,-5L,0x56374196A1887B4DL,0xE84BL}, // p_2126->g_955
        {{(void*)0,&p_2126->g_840.f4,(void*)0,(void*)0,&p_2126->g_840.f4,(void*)0,(void*)0,&p_2126->g_840.f4}}, // p_2126->g_961
        &p_2126->g_961[0][7], // p_2126->g_960
        &p_2126->g_960, // p_2126->g_959
        {0x6C04116D87DF85AFL,0x2C1AC1B0L,0x44F67B96L,0x3A64L,0x145D909D3B121C21L,0xCB34L}, // p_2126->g_974
        0x04L, // p_2126->g_987
        {1L,3L,0x4F62D6C2L,1L,-1L,1UL}, // p_2126->g_990
        &p_2126->g_195, // p_2126->g_1011
        {8L,7L,-1L,-1L,-3L,0x7705L}, // p_2126->g_1070
        3L, // p_2126->g_1107
        0xDEE0L, // p_2126->g_1108
        (void*)0, // p_2126->g_1125
        &p_2126->g_392[7], // p_2126->g_1164
        (-3L), // p_2126->g_1184
        18446744073709551610UL, // p_2126->g_1185
        {0x702FD4A0D206CBEEL,0x513A7697L,-1L,0L,0x715491ABED2D50B9L,0x3898L}, // p_2126->g_1228
        {0x2573BF5233F52E9EL,-6L,0x4B9C96E0L,0x46B8L,-1L,0x7CD2L}, // p_2126->g_1235
        4L, // p_2126->g_1237
        {{{8UL,0xF2D27751L,0x5AB4892CL,8UL,0x5AB4892CL,0xF2D27751L,8UL,5UL,0xB6248785L},{8UL,0xF2D27751L,0x5AB4892CL,8UL,0x5AB4892CL,0xF2D27751L,8UL,5UL,0xB6248785L},{8UL,0xF2D27751L,0x5AB4892CL,8UL,0x5AB4892CL,0xF2D27751L,8UL,5UL,0xB6248785L},{8UL,0xF2D27751L,0x5AB4892CL,8UL,0x5AB4892CL,0xF2D27751L,8UL,5UL,0xB6248785L},{8UL,0xF2D27751L,0x5AB4892CL,8UL,0x5AB4892CL,0xF2D27751L,8UL,5UL,0xB6248785L},{8UL,0xF2D27751L,0x5AB4892CL,8UL,0x5AB4892CL,0xF2D27751L,8UL,5UL,0xB6248785L},{8UL,0xF2D27751L,0x5AB4892CL,8UL,0x5AB4892CL,0xF2D27751L,8UL,5UL,0xB6248785L},{8UL,0xF2D27751L,0x5AB4892CL,8UL,0x5AB4892CL,0xF2D27751L,8UL,5UL,0xB6248785L},{8UL,0xF2D27751L,0x5AB4892CL,8UL,0x5AB4892CL,0xF2D27751L,8UL,5UL,0xB6248785L}}}, // p_2126->g_1238
        {2L,-8L,0x408DA4B0L,0x6BEBL,0x49BF3EF7A6AE1816L,0xB7CEL}, // p_2126->g_1271
        {&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74}, // p_2126->g_1282
        {&p_2126->g_805.f3,&p_2126->g_805.f3,&p_2126->g_805.f3,&p_2126->g_805.f3,&p_2126->g_805.f3}, // p_2126->g_1338
        (void*)0, // p_2126->g_1404
        0xB762DF793491007FL, // p_2126->g_1406
        1UL, // p_2126->g_1408
        {{-1L,0x5ADC9451L,-3L,9L,0L,65526UL},{-1L,0x5ADC9451L,-3L,9L,0L,65526UL},{-1L,0x5ADC9451L,-3L,9L,0L,65526UL},{-1L,0x5ADC9451L,-3L,9L,0L,65526UL}}, // p_2126->g_1431
        {0x0B9692246172BD5BL,-1L,0L,1L,-9L,0x850FL}, // p_2126->g_1432
        (void*)0, // p_2126->g_1438
        &p_2126->g_842.f0, // p_2126->g_1442
        &p_2126->g_1442, // p_2126->g_1441
        {&p_2126->g_1441,&p_2126->g_1441,&p_2126->g_1441,&p_2126->g_1441,&p_2126->g_1441,&p_2126->g_1441,&p_2126->g_1441}, // p_2126->g_1440
        (void*)0, // p_2126->g_1444
        &p_2126->g_1011, // p_2126->g_1448
        {0x2EB605B9B32DFEC4L,-1L,0x0D506468L,0L,0x27FF8BE4AD488686L,7UL}, // p_2126->g_1463
        252UL, // p_2126->g_1464
        1UL, // p_2126->g_1466
        (void*)0, // p_2126->g_1491
        {&p_2126->g_842,&p_2126->g_610[3],&p_2126->g_842,&p_2126->g_842,&p_2126->g_610[3],&p_2126->g_842}, // p_2126->g_1530
        {-1L,1L,6L,0x34B6L,0x0FDF74CEBAFEAC32L,65535UL}, // p_2126->g_1532
        {&p_2126->g_690,&p_2126->g_690,&p_2126->g_690,&p_2126->g_690,&p_2126->g_690,&p_2126->g_690,&p_2126->g_690}, // p_2126->g_1538
        {&p_2126->g_394,&p_2126->g_394}, // p_2126->g_1539
        (void*)0, // p_2126->g_1552
        {&p_2126->g_78,&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78,&p_2126->g_78,&p_2126->g_134,&p_2126->g_78,&p_2126->g_78}, // p_2126->g_1553
        &p_2126->g_690, // p_2126->g_1554
        {{{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74}},{{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74}},{{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74}},{{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74}},{{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74}},{{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74}},{{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74}},{{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74}},{{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74},{&p_2126->g_74,&p_2126->g_74}}}, // p_2126->g_1625
        {&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74,&p_2126->g_74}, // p_2126->g_1626
        &p_2126->g_74, // p_2126->g_1627
        {{0x39149BAFL,0x3EFF1F3CL,8L},{0x39149BAFL,0x3EFF1F3CL,8L},{0x39149BAFL,0x3EFF1F3CL,8L},{0x39149BAFL,0x3EFF1F3CL,8L},{0x39149BAFL,0x3EFF1F3CL,8L}}, // p_2126->g_1628
        {0x122419C85F1AD6DFL,0x769BC2EEL,0x2718B7F7L,0x69EDL,0x3A5FCECA448881EEL,0UL}, // p_2126->g_1658
        {1L,0L,-1L,0x690EL,-1L,0x677EL}, // p_2126->g_1659
        (void*)0, // p_2126->g_1829
        {{{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL}},{{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL}},{{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL}},{{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL}},{{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL}},{{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL},{0x4FC1DB3E558635B6L,1L,-3L,6L,1L,0x8C4FL}}}, // p_2126->g_1867
        {{{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL},{0x4B5C9C7E04DA8D89L,-9L,1L,0x176FL,0x578F3764808547AAL,0UL},{0x4B5C9C7E04DA8D89L,-9L,1L,0x176FL,0x578F3764808547AAL,0UL},{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL},{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL},{0x4B5C9C7E04DA8D89L,-9L,1L,0x176FL,0x578F3764808547AAL,0UL},{0x4B5C9C7E04DA8D89L,-9L,1L,0x176FL,0x578F3764808547AAL,0UL},{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL},{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL}},{{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL},{0x4B5C9C7E04DA8D89L,-9L,1L,0x176FL,0x578F3764808547AAL,0UL},{0x4B5C9C7E04DA8D89L,-9L,1L,0x176FL,0x578F3764808547AAL,0UL},{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL},{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL},{0x4B5C9C7E04DA8D89L,-9L,1L,0x176FL,0x578F3764808547AAL,0UL},{0x4B5C9C7E04DA8D89L,-9L,1L,0x176FL,0x578F3764808547AAL,0UL},{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL},{0x5DB052D18DBD2F3BL,0x04F960E7L,0x7E3A0C6FL,0x1B71L,0x2259F445A2F3FFA7L,65530UL}}}, // p_2126->g_1884
        &p_2126->g_859, // p_2126->g_1950
        &p_2126->g_1950, // p_2126->g_1951
        &p_2126->g_890[0], // p_2126->g_1978
        &p_2126->g_1466, // p_2126->g_2009
        &p_2126->g_2009, // p_2126->g_2008
        1UL, // p_2126->g_2028
        0x46L, // p_2126->g_2093
        {{0x3DBAEF62L}}, // p_2126->g_2098
        {1L,9L,-10L,0L,-5L,0x146EL}, // p_2126->g_2102
        &p_2126->g_1658, // p_2126->g_2103
        65529UL, // p_2126->g_2115
        sequence_input[get_global_id(0)], // p_2126->global_0_offset
        sequence_input[get_global_id(1)], // p_2126->global_1_offset
        sequence_input[get_global_id(2)], // p_2126->global_2_offset
        sequence_input[get_local_id(0)], // p_2126->local_0_offset
        sequence_input[get_local_id(1)], // p_2126->local_1_offset
        sequence_input[get_local_id(2)], // p_2126->local_2_offset
        sequence_input[get_group_id(0)], // p_2126->group_0_offset
        sequence_input[get_group_id(1)], // p_2126->group_1_offset
        sequence_input[get_group_id(2)], // p_2126->group_2_offset
    };
    c_2127 = c_2128;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2126);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2126->g_13[i][j][k], "p_2126->g_13[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2126->g_15, "p_2126->g_15", print_hash_value);
    transparent_crc(p_2126->g_17, "p_2126->g_17", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2126->g_28[i], "p_2126->g_28[i]", print_hash_value);

    }
    transparent_crc(p_2126->g_73, "p_2126->g_73", print_hash_value);
    transparent_crc(p_2126->g_78, "p_2126->g_78", print_hash_value);
    transparent_crc(p_2126->g_81.f0, "p_2126->g_81.f0", print_hash_value);
    transparent_crc(p_2126->g_81.f1, "p_2126->g_81.f1", print_hash_value);
    transparent_crc(p_2126->g_81.f2, "p_2126->g_81.f2", print_hash_value);
    transparent_crc(p_2126->g_81.f3, "p_2126->g_81.f3", print_hash_value);
    transparent_crc(p_2126->g_81.f4, "p_2126->g_81.f4", print_hash_value);
    transparent_crc(p_2126->g_81.f5, "p_2126->g_81.f5", print_hash_value);
    transparent_crc(p_2126->g_92, "p_2126->g_92", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2126->g_115[i], "p_2126->g_115[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_2126->g_122[i][j], "p_2126->g_122[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2126->g_126, "p_2126->g_126", print_hash_value);
    transparent_crc(p_2126->g_134, "p_2126->g_134", print_hash_value);
    transparent_crc(p_2126->g_140, "p_2126->g_140", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2126->g_152[i], "p_2126->g_152[i]", print_hash_value);

    }
    transparent_crc(p_2126->g_157.f0, "p_2126->g_157.f0", print_hash_value);
    transparent_crc(p_2126->g_157.f1, "p_2126->g_157.f1", print_hash_value);
    transparent_crc(p_2126->g_157.f2, "p_2126->g_157.f2", print_hash_value);
    transparent_crc(p_2126->g_157.f3, "p_2126->g_157.f3", print_hash_value);
    transparent_crc(p_2126->g_157.f4, "p_2126->g_157.f4", print_hash_value);
    transparent_crc(p_2126->g_157.f5, "p_2126->g_157.f5", print_hash_value);
    transparent_crc(p_2126->g_167, "p_2126->g_167", print_hash_value);
    transparent_crc(p_2126->g_170, "p_2126->g_170", print_hash_value);
    transparent_crc(p_2126->g_171, "p_2126->g_171", print_hash_value);
    transparent_crc(p_2126->g_172, "p_2126->g_172", print_hash_value);
    transparent_crc(p_2126->g_195, "p_2126->g_195", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2126->g_197[i][j], "p_2126->g_197[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2126->g_200, "p_2126->g_200", print_hash_value);
    transparent_crc(p_2126->g_204, "p_2126->g_204", print_hash_value);
    transparent_crc(p_2126->g_238, "p_2126->g_238", print_hash_value);
    transparent_crc(p_2126->g_253, "p_2126->g_253", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2126->g_277[i][j], "p_2126->g_277[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2126->g_309, "p_2126->g_309", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2126->g_312[i], "p_2126->g_312[i]", print_hash_value);

    }
    transparent_crc(p_2126->g_314, "p_2126->g_314", print_hash_value);
    transparent_crc(p_2126->g_315, "p_2126->g_315", print_hash_value);
    transparent_crc(p_2126->g_342.f0, "p_2126->g_342.f0", print_hash_value);
    transparent_crc(p_2126->g_342.f1, "p_2126->g_342.f1", print_hash_value);
    transparent_crc(p_2126->g_342.f2, "p_2126->g_342.f2", print_hash_value);
    transparent_crc(p_2126->g_342.f3, "p_2126->g_342.f3", print_hash_value);
    transparent_crc(p_2126->g_342.f4, "p_2126->g_342.f4", print_hash_value);
    transparent_crc(p_2126->g_342.f5, "p_2126->g_342.f5", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2126->g_392[i], "p_2126->g_392[i]", print_hash_value);

    }
    transparent_crc(p_2126->g_394, "p_2126->g_394", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2126->g_501[i][j].f0, "p_2126->g_501[i][j].f0", print_hash_value);
            transparent_crc(p_2126->g_501[i][j].f1, "p_2126->g_501[i][j].f1", print_hash_value);
            transparent_crc(p_2126->g_501[i][j].f2, "p_2126->g_501[i][j].f2", print_hash_value);
            transparent_crc(p_2126->g_501[i][j].f3, "p_2126->g_501[i][j].f3", print_hash_value);
            transparent_crc(p_2126->g_501[i][j].f4, "p_2126->g_501[i][j].f4", print_hash_value);
            transparent_crc(p_2126->g_501[i][j].f5, "p_2126->g_501[i][j].f5", print_hash_value);

        }
    }
    transparent_crc(p_2126->g_533, "p_2126->g_533", print_hash_value);
    transparent_crc(p_2126->g_589, "p_2126->g_589", print_hash_value);
    transparent_crc(p_2126->g_590, "p_2126->g_590", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2126->g_610[i].f0, "p_2126->g_610[i].f0", print_hash_value);
        transparent_crc(p_2126->g_610[i].f1, "p_2126->g_610[i].f1", print_hash_value);
        transparent_crc(p_2126->g_610[i].f2, "p_2126->g_610[i].f2", print_hash_value);
        transparent_crc(p_2126->g_610[i].f3, "p_2126->g_610[i].f3", print_hash_value);
        transparent_crc(p_2126->g_610[i].f4, "p_2126->g_610[i].f4", print_hash_value);
        transparent_crc(p_2126->g_610[i].f5, "p_2126->g_610[i].f5", print_hash_value);

    }
    transparent_crc(p_2126->g_642, "p_2126->g_642", print_hash_value);
    transparent_crc(p_2126->g_688, "p_2126->g_688", print_hash_value);
    transparent_crc(p_2126->g_689, "p_2126->g_689", print_hash_value);
    transparent_crc(p_2126->g_690, "p_2126->g_690", print_hash_value);
    transparent_crc(p_2126->g_691, "p_2126->g_691", print_hash_value);
    transparent_crc(p_2126->g_730.f0, "p_2126->g_730.f0", print_hash_value);
    transparent_crc(p_2126->g_730.f1, "p_2126->g_730.f1", print_hash_value);
    transparent_crc(p_2126->g_730.f2, "p_2126->g_730.f2", print_hash_value);
    transparent_crc(p_2126->g_730.f3, "p_2126->g_730.f3", print_hash_value);
    transparent_crc(p_2126->g_730.f4, "p_2126->g_730.f4", print_hash_value);
    transparent_crc(p_2126->g_730.f5, "p_2126->g_730.f5", print_hash_value);
    transparent_crc(p_2126->g_805.f0, "p_2126->g_805.f0", print_hash_value);
    transparent_crc(p_2126->g_805.f1, "p_2126->g_805.f1", print_hash_value);
    transparent_crc(p_2126->g_805.f2, "p_2126->g_805.f2", print_hash_value);
    transparent_crc(p_2126->g_805.f3, "p_2126->g_805.f3", print_hash_value);
    transparent_crc(p_2126->g_805.f4, "p_2126->g_805.f4", print_hash_value);
    transparent_crc(p_2126->g_805.f5, "p_2126->g_805.f5", print_hash_value);
    transparent_crc(p_2126->g_837.f0, "p_2126->g_837.f0", print_hash_value);
    transparent_crc(p_2126->g_837.f1, "p_2126->g_837.f1", print_hash_value);
    transparent_crc(p_2126->g_837.f2, "p_2126->g_837.f2", print_hash_value);
    transparent_crc(p_2126->g_837.f3, "p_2126->g_837.f3", print_hash_value);
    transparent_crc(p_2126->g_837.f4, "p_2126->g_837.f4", print_hash_value);
    transparent_crc(p_2126->g_837.f5, "p_2126->g_837.f5", print_hash_value);
    transparent_crc(p_2126->g_840.f0, "p_2126->g_840.f0", print_hash_value);
    transparent_crc(p_2126->g_840.f1, "p_2126->g_840.f1", print_hash_value);
    transparent_crc(p_2126->g_840.f2, "p_2126->g_840.f2", print_hash_value);
    transparent_crc(p_2126->g_840.f3, "p_2126->g_840.f3", print_hash_value);
    transparent_crc(p_2126->g_840.f4, "p_2126->g_840.f4", print_hash_value);
    transparent_crc(p_2126->g_840.f5, "p_2126->g_840.f5", print_hash_value);
    transparent_crc(p_2126->g_842.f0, "p_2126->g_842.f0", print_hash_value);
    transparent_crc(p_2126->g_842.f1, "p_2126->g_842.f1", print_hash_value);
    transparent_crc(p_2126->g_842.f2, "p_2126->g_842.f2", print_hash_value);
    transparent_crc(p_2126->g_842.f3, "p_2126->g_842.f3", print_hash_value);
    transparent_crc(p_2126->g_842.f4, "p_2126->g_842.f4", print_hash_value);
    transparent_crc(p_2126->g_842.f5, "p_2126->g_842.f5", print_hash_value);
    transparent_crc(p_2126->g_859, "p_2126->g_859", print_hash_value);
    transparent_crc(p_2126->g_860, "p_2126->g_860", print_hash_value);
    transparent_crc(p_2126->g_861, "p_2126->g_861", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2126->g_890[i], "p_2126->g_890[i]", print_hash_value);

    }
    transparent_crc(p_2126->g_897.f0, "p_2126->g_897.f0", print_hash_value);
    transparent_crc(p_2126->g_897.f1, "p_2126->g_897.f1", print_hash_value);
    transparent_crc(p_2126->g_897.f2, "p_2126->g_897.f2", print_hash_value);
    transparent_crc(p_2126->g_897.f3, "p_2126->g_897.f3", print_hash_value);
    transparent_crc(p_2126->g_897.f4, "p_2126->g_897.f4", print_hash_value);
    transparent_crc(p_2126->g_897.f5, "p_2126->g_897.f5", print_hash_value);
    transparent_crc(p_2126->g_949.f0, "p_2126->g_949.f0", print_hash_value);
    transparent_crc(p_2126->g_949.f1, "p_2126->g_949.f1", print_hash_value);
    transparent_crc(p_2126->g_949.f2, "p_2126->g_949.f2", print_hash_value);
    transparent_crc(p_2126->g_949.f3, "p_2126->g_949.f3", print_hash_value);
    transparent_crc(p_2126->g_949.f4, "p_2126->g_949.f4", print_hash_value);
    transparent_crc(p_2126->g_949.f5, "p_2126->g_949.f5", print_hash_value);
    transparent_crc(p_2126->g_955.f0, "p_2126->g_955.f0", print_hash_value);
    transparent_crc(p_2126->g_955.f1, "p_2126->g_955.f1", print_hash_value);
    transparent_crc(p_2126->g_955.f2, "p_2126->g_955.f2", print_hash_value);
    transparent_crc(p_2126->g_955.f3, "p_2126->g_955.f3", print_hash_value);
    transparent_crc(p_2126->g_955.f4, "p_2126->g_955.f4", print_hash_value);
    transparent_crc(p_2126->g_955.f5, "p_2126->g_955.f5", print_hash_value);
    transparent_crc(p_2126->g_974.f0, "p_2126->g_974.f0", print_hash_value);
    transparent_crc(p_2126->g_974.f1, "p_2126->g_974.f1", print_hash_value);
    transparent_crc(p_2126->g_974.f2, "p_2126->g_974.f2", print_hash_value);
    transparent_crc(p_2126->g_974.f3, "p_2126->g_974.f3", print_hash_value);
    transparent_crc(p_2126->g_974.f4, "p_2126->g_974.f4", print_hash_value);
    transparent_crc(p_2126->g_974.f5, "p_2126->g_974.f5", print_hash_value);
    transparent_crc(p_2126->g_987, "p_2126->g_987", print_hash_value);
    transparent_crc(p_2126->g_990.f0, "p_2126->g_990.f0", print_hash_value);
    transparent_crc(p_2126->g_990.f1, "p_2126->g_990.f1", print_hash_value);
    transparent_crc(p_2126->g_990.f2, "p_2126->g_990.f2", print_hash_value);
    transparent_crc(p_2126->g_990.f3, "p_2126->g_990.f3", print_hash_value);
    transparent_crc(p_2126->g_990.f4, "p_2126->g_990.f4", print_hash_value);
    transparent_crc(p_2126->g_990.f5, "p_2126->g_990.f5", print_hash_value);
    transparent_crc(p_2126->g_1070.f0, "p_2126->g_1070.f0", print_hash_value);
    transparent_crc(p_2126->g_1070.f1, "p_2126->g_1070.f1", print_hash_value);
    transparent_crc(p_2126->g_1070.f2, "p_2126->g_1070.f2", print_hash_value);
    transparent_crc(p_2126->g_1070.f3, "p_2126->g_1070.f3", print_hash_value);
    transparent_crc(p_2126->g_1070.f4, "p_2126->g_1070.f4", print_hash_value);
    transparent_crc(p_2126->g_1070.f5, "p_2126->g_1070.f5", print_hash_value);
    transparent_crc(p_2126->g_1107, "p_2126->g_1107", print_hash_value);
    transparent_crc(p_2126->g_1108, "p_2126->g_1108", print_hash_value);
    transparent_crc(p_2126->g_1184, "p_2126->g_1184", print_hash_value);
    transparent_crc(p_2126->g_1185, "p_2126->g_1185", print_hash_value);
    transparent_crc(p_2126->g_1228.f0, "p_2126->g_1228.f0", print_hash_value);
    transparent_crc(p_2126->g_1228.f1, "p_2126->g_1228.f1", print_hash_value);
    transparent_crc(p_2126->g_1228.f2, "p_2126->g_1228.f2", print_hash_value);
    transparent_crc(p_2126->g_1228.f3, "p_2126->g_1228.f3", print_hash_value);
    transparent_crc(p_2126->g_1228.f4, "p_2126->g_1228.f4", print_hash_value);
    transparent_crc(p_2126->g_1228.f5, "p_2126->g_1228.f5", print_hash_value);
    transparent_crc(p_2126->g_1235.f0, "p_2126->g_1235.f0", print_hash_value);
    transparent_crc(p_2126->g_1235.f1, "p_2126->g_1235.f1", print_hash_value);
    transparent_crc(p_2126->g_1235.f2, "p_2126->g_1235.f2", print_hash_value);
    transparent_crc(p_2126->g_1235.f3, "p_2126->g_1235.f3", print_hash_value);
    transparent_crc(p_2126->g_1235.f4, "p_2126->g_1235.f4", print_hash_value);
    transparent_crc(p_2126->g_1235.f5, "p_2126->g_1235.f5", print_hash_value);
    transparent_crc(p_2126->g_1237, "p_2126->g_1237", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_2126->g_1238[i][j][k], "p_2126->g_1238[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2126->g_1271.f0, "p_2126->g_1271.f0", print_hash_value);
    transparent_crc(p_2126->g_1271.f1, "p_2126->g_1271.f1", print_hash_value);
    transparent_crc(p_2126->g_1271.f2, "p_2126->g_1271.f2", print_hash_value);
    transparent_crc(p_2126->g_1271.f3, "p_2126->g_1271.f3", print_hash_value);
    transparent_crc(p_2126->g_1271.f4, "p_2126->g_1271.f4", print_hash_value);
    transparent_crc(p_2126->g_1271.f5, "p_2126->g_1271.f5", print_hash_value);
    transparent_crc(p_2126->g_1406, "p_2126->g_1406", print_hash_value);
    transparent_crc(p_2126->g_1408, "p_2126->g_1408", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2126->g_1431[i].f0, "p_2126->g_1431[i].f0", print_hash_value);
        transparent_crc(p_2126->g_1431[i].f1, "p_2126->g_1431[i].f1", print_hash_value);
        transparent_crc(p_2126->g_1431[i].f2, "p_2126->g_1431[i].f2", print_hash_value);
        transparent_crc(p_2126->g_1431[i].f3, "p_2126->g_1431[i].f3", print_hash_value);
        transparent_crc(p_2126->g_1431[i].f4, "p_2126->g_1431[i].f4", print_hash_value);
        transparent_crc(p_2126->g_1431[i].f5, "p_2126->g_1431[i].f5", print_hash_value);

    }
    transparent_crc(p_2126->g_1432.f0, "p_2126->g_1432.f0", print_hash_value);
    transparent_crc(p_2126->g_1432.f1, "p_2126->g_1432.f1", print_hash_value);
    transparent_crc(p_2126->g_1432.f2, "p_2126->g_1432.f2", print_hash_value);
    transparent_crc(p_2126->g_1432.f3, "p_2126->g_1432.f3", print_hash_value);
    transparent_crc(p_2126->g_1432.f4, "p_2126->g_1432.f4", print_hash_value);
    transparent_crc(p_2126->g_1432.f5, "p_2126->g_1432.f5", print_hash_value);
    transparent_crc(p_2126->g_1463.f0, "p_2126->g_1463.f0", print_hash_value);
    transparent_crc(p_2126->g_1463.f1, "p_2126->g_1463.f1", print_hash_value);
    transparent_crc(p_2126->g_1463.f2, "p_2126->g_1463.f2", print_hash_value);
    transparent_crc(p_2126->g_1463.f3, "p_2126->g_1463.f3", print_hash_value);
    transparent_crc(p_2126->g_1463.f4, "p_2126->g_1463.f4", print_hash_value);
    transparent_crc(p_2126->g_1463.f5, "p_2126->g_1463.f5", print_hash_value);
    transparent_crc(p_2126->g_1464, "p_2126->g_1464", print_hash_value);
    transparent_crc(p_2126->g_1466, "p_2126->g_1466", print_hash_value);
    transparent_crc(p_2126->g_1532.f0, "p_2126->g_1532.f0", print_hash_value);
    transparent_crc(p_2126->g_1532.f1, "p_2126->g_1532.f1", print_hash_value);
    transparent_crc(p_2126->g_1532.f2, "p_2126->g_1532.f2", print_hash_value);
    transparent_crc(p_2126->g_1532.f3, "p_2126->g_1532.f3", print_hash_value);
    transparent_crc(p_2126->g_1532.f4, "p_2126->g_1532.f4", print_hash_value);
    transparent_crc(p_2126->g_1532.f5, "p_2126->g_1532.f5", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2126->g_1628[i][j], "p_2126->g_1628[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2126->g_1658.f0, "p_2126->g_1658.f0", print_hash_value);
    transparent_crc(p_2126->g_1658.f1, "p_2126->g_1658.f1", print_hash_value);
    transparent_crc(p_2126->g_1658.f2, "p_2126->g_1658.f2", print_hash_value);
    transparent_crc(p_2126->g_1658.f3, "p_2126->g_1658.f3", print_hash_value);
    transparent_crc(p_2126->g_1658.f4, "p_2126->g_1658.f4", print_hash_value);
    transparent_crc(p_2126->g_1658.f5, "p_2126->g_1658.f5", print_hash_value);
    transparent_crc(p_2126->g_1659.f0, "p_2126->g_1659.f0", print_hash_value);
    transparent_crc(p_2126->g_1659.f1, "p_2126->g_1659.f1", print_hash_value);
    transparent_crc(p_2126->g_1659.f2, "p_2126->g_1659.f2", print_hash_value);
    transparent_crc(p_2126->g_1659.f3, "p_2126->g_1659.f3", print_hash_value);
    transparent_crc(p_2126->g_1659.f4, "p_2126->g_1659.f4", print_hash_value);
    transparent_crc(p_2126->g_1659.f5, "p_2126->g_1659.f5", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2126->g_1867[i][j].f0, "p_2126->g_1867[i][j].f0", print_hash_value);
            transparent_crc(p_2126->g_1867[i][j].f1, "p_2126->g_1867[i][j].f1", print_hash_value);
            transparent_crc(p_2126->g_1867[i][j].f2, "p_2126->g_1867[i][j].f2", print_hash_value);
            transparent_crc(p_2126->g_1867[i][j].f3, "p_2126->g_1867[i][j].f3", print_hash_value);
            transparent_crc(p_2126->g_1867[i][j].f4, "p_2126->g_1867[i][j].f4", print_hash_value);
            transparent_crc(p_2126->g_1867[i][j].f5, "p_2126->g_1867[i][j].f5", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2126->g_1884[i][j].f0, "p_2126->g_1884[i][j].f0", print_hash_value);
            transparent_crc(p_2126->g_1884[i][j].f1, "p_2126->g_1884[i][j].f1", print_hash_value);
            transparent_crc(p_2126->g_1884[i][j].f2, "p_2126->g_1884[i][j].f2", print_hash_value);
            transparent_crc(p_2126->g_1884[i][j].f3, "p_2126->g_1884[i][j].f3", print_hash_value);
            transparent_crc(p_2126->g_1884[i][j].f4, "p_2126->g_1884[i][j].f4", print_hash_value);
            transparent_crc(p_2126->g_1884[i][j].f5, "p_2126->g_1884[i][j].f5", print_hash_value);

        }
    }
    transparent_crc(p_2126->g_2028, "p_2126->g_2028", print_hash_value);
    transparent_crc(p_2126->g_2093, "p_2126->g_2093", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2126->g_2098[i][j], "p_2126->g_2098[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2126->g_2102.f0, "p_2126->g_2102.f0", print_hash_value);
    transparent_crc(p_2126->g_2102.f1, "p_2126->g_2102.f1", print_hash_value);
    transparent_crc(p_2126->g_2102.f2, "p_2126->g_2102.f2", print_hash_value);
    transparent_crc(p_2126->g_2102.f3, "p_2126->g_2102.f3", print_hash_value);
    transparent_crc(p_2126->g_2102.f4, "p_2126->g_2102.f4", print_hash_value);
    transparent_crc(p_2126->g_2102.f5, "p_2126->g_2102.f5", print_hash_value);
    transparent_crc(p_2126->g_2115, "p_2126->g_2115", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
