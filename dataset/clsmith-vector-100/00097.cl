// ---fake_divergence -g 146,4,14 -l 73,2,1
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


// Seed: 97

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint32_t g_2;
    int32_t g_21[4][5];
    int32_t *g_20;
    volatile VECTOR(int32_t, 8) g_39;
    int16_t g_49;
    int16_t *g_48;
    int32_t g_64;
    int16_t g_84;
    VECTOR(uint8_t, 16) g_99;
    volatile VECTOR(int32_t, 2) g_100;
    VECTOR(int32_t, 4) g_101;
    VECTOR(int8_t, 2) g_106;
    VECTOR(int8_t, 16) g_108;
    VECTOR(int8_t, 4) g_109;
    VECTOR(int8_t, 8) g_110;
    VECTOR(int8_t, 2) g_112;
    VECTOR(int8_t, 8) g_113;
    VECTOR(int8_t, 2) g_114;
    VECTOR(uint16_t, 2) g_121;
    VECTOR(int16_t, 8) g_122;
    int32_t *g_131;
    int32_t ** volatile g_130;
    uint64_t g_136;
    VECTOR(uint8_t, 16) g_149;
    VECTOR(uint8_t, 4) g_153;
    volatile VECTOR(int32_t, 2) g_170;
    volatile VECTOR(int32_t, 8) g_171;
    VECTOR(int32_t, 16) g_173;
    uint32_t g_178;
    int32_t ** volatile g_180[8][6];
    uint8_t *g_190[4][3];
    uint16_t g_198;
    uint64_t *g_222;
    uint32_t g_224;
    VECTOR(int32_t, 2) g_242;
    int16_t g_245;
    VECTOR(uint8_t, 8) g_278;
    VECTOR(uint64_t, 16) g_285;
    VECTOR(uint16_t, 16) g_290;
    VECTOR(uint8_t, 4) g_306;
    volatile VECTOR(uint8_t, 4) g_309;
    VECTOR(uint8_t, 16) g_332;
    int64_t g_335;
    VECTOR(int16_t, 2) g_367;
    VECTOR(int16_t, 2) g_369;
    volatile uint32_t g_409[2][5];
    int32_t ** volatile g_410[2][5];
    uint16_t g_414;
    volatile uint32_t g_416;
    VECTOR(int64_t, 16) g_474;
    volatile int64_t g_547;
    volatile int32_t g_553;
    volatile VECTOR(uint64_t, 4) g_572;
    volatile VECTOR(int32_t, 8) g_577;
    VECTOR(int8_t, 4) g_584;
    VECTOR(int16_t, 8) g_617;
    volatile VECTOR(int16_t, 8) g_622;
    volatile VECTOR(int16_t, 2) g_625;
    volatile VECTOR(int32_t, 8) g_643;
    volatile uint32_t g_716;
    uint64_t g_736[5];
    volatile VECTOR(int8_t, 4) g_753;
    VECTOR(uint16_t, 8) g_782;
    volatile VECTOR(uint16_t, 4) g_846;
    volatile uint16_t * volatile g_845;
    volatile uint16_t * volatile * volatile g_844;
    volatile int16_t g_851;
    uint16_t g_852;
    volatile VECTOR(int64_t, 8) g_855;
    volatile VECTOR(int16_t, 16) g_867;
    VECTOR(int16_t, 16) g_871;
    VECTOR(uint64_t, 2) g_880;
    VECTOR(uint64_t, 2) g_887;
    VECTOR(int64_t, 16) g_891;
    uint32_t g_901[3];
    int32_t *g_912;
    int32_t **g_911;
    int32_t *** volatile g_910;
    uint64_t **g_917;
    uint64_t *** volatile g_916;
    volatile VECTOR(int16_t, 16) g_935;
    VECTOR(int32_t, 2) g_976;
    VECTOR(uint16_t, 8) g_977;
    VECTOR(uint16_t, 16) g_978;
    uint64_t g_1011;
    int32_t ** volatile g_1018;
    int32_t ** volatile g_1019[2];
    int64_t g_1048;
    VECTOR(uint16_t, 2) g_1073;
    volatile VECTOR(uint16_t, 2) g_1074;
    VECTOR(int32_t, 4) g_1083;
    VECTOR(int32_t, 4) g_1085;
    volatile VECTOR(int32_t, 4) g_1086;
    VECTOR(uint16_t, 16) g_1095;
    VECTOR(int64_t, 4) g_1098;
    VECTOR(uint32_t, 16) g_1108;
    VECTOR(uint32_t, 4) g_1110;
    VECTOR(uint32_t, 8) g_1113;
    int8_t *g_1128;
    VECTOR(int32_t, 8) g_1148;
    VECTOR(uint16_t, 8) g_1153;
    volatile VECTOR(uint16_t, 8) g_1155;
    VECTOR(int8_t, 4) g_1165;
    volatile VECTOR(int64_t, 4) g_1216;
    VECTOR(int64_t, 4) g_1217;
    VECTOR(int64_t, 4) g_1218;
    volatile VECTOR(int64_t, 8) g_1220;
    volatile VECTOR(uint32_t, 16) g_1242;
    VECTOR(int8_t, 2) g_1247;
    VECTOR(int8_t, 16) g_1252;
    VECTOR(int16_t, 4) g_1263;
    VECTOR(int32_t, 4) g_1265;
    int32_t g_1301;
    volatile VECTOR(int16_t, 4) g_1304;
    VECTOR(uint32_t, 4) g_1326;
    VECTOR(int32_t, 16) g_1329;
    volatile VECTOR(int32_t, 8) g_1331;
    VECTOR(uint16_t, 16) g_1336;
    VECTOR(uint16_t, 8) g_1342;
    VECTOR(uint32_t, 16) g_1359;
    uint64_t g_1399;
    VECTOR(uint8_t, 8) g_1431;
    VECTOR(int32_t, 4) g_1471;
    VECTOR(int32_t, 4) g_1473;
    volatile uint8_t g_1486;
    uint32_t *g_1491;
    uint32_t * volatile * volatile g_1490[6][1];
    volatile VECTOR(int64_t, 8) g_1508;
    VECTOR(int8_t, 2) g_1522;
    VECTOR(uint64_t, 16) g_1538;
    int32_t ** volatile g_1561;
    volatile VECTOR(uint64_t, 16) g_1564;
    VECTOR(int8_t, 4) g_1565;
    VECTOR(int8_t, 2) g_1566;
    uint32_t g_1572;
    VECTOR(int16_t, 8) g_1578;
    uint64_t *g_1604;
    volatile VECTOR(int32_t, 16) g_1626;
    VECTOR(uint64_t, 16) g_1633;
    VECTOR(int64_t, 8) g_1634;
    VECTOR(int64_t, 8) g_1635;
    int32_t * volatile g_1638;
    int32_t * volatile g_1639;
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
int32_t  func_1(struct S0 * p_1660);
int32_t * func_5(int8_t  p_6, struct S0 * p_1660);
int32_t * func_8(int32_t * p_9, int32_t  p_10, uint64_t  p_11, struct S0 * p_1660);
int32_t * func_12(int64_t  p_13, struct S0 * p_1660);
int32_t * func_14(int32_t * p_15, int32_t * p_16, uint32_t  p_17, uint16_t  p_18, uint32_t  p_19, struct S0 * p_1660);
uint64_t  func_26(int32_t * p_27, struct S0 * p_1660);
uint16_t  func_29(int32_t * p_30, int16_t  p_31, int32_t  p_32, struct S0 * p_1660);
int32_t * func_40(int32_t * p_41, int16_t * p_42, uint32_t  p_43, struct S0 * p_1660);
int16_t * func_44(int16_t * p_45, int64_t  p_46, int32_t * p_47, struct S0 * p_1660);
int32_t * func_52(int64_t  p_53, struct S0 * p_1660);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1660->g_2 p_1660->g_20 p_1660->g_21 p_1660->g_48 p_1660->g_64 p_1660->g_49 p_1660->g_84 p_1660->g_39 p_1660->g_130 p_1660->g_136 p_1660->g_149 p_1660->g_131 p_1660->g_245 p_1660->g_306 p_1660->g_110 p_1660->g_224 p_1660->g_170 p_1660->g_190 p_1660->g_222 p_1660->g_112 p_1660->g_178 p_1660->g_106 p_1660->g_367 p_1660->g_369 p_1660->g_153 p_1660->g_242 p_1660->g_409 p_1660->g_109 p_1660->g_414 p_1660->g_416 p_1660->g_113 p_1660->g_278 p_1660->g_474 p_1660->g_114 p_1660->g_198 p_1660->g_100 p_1660->g_290 p_1660->g_101 p_1660->g_617 p_1660->g_622 p_1660->g_625 p_1660->g_285 p_1660->g_643 p_1660->g_108 p_1660->g_577 p_1660->g_716 p_1660->g_173 p_1660->g_782 p_1660->g_309 p_1660->g_121 p_1660->g_99 p_1660->g_844 p_1660->g_852 p_1660->g_855 p_1660->g_736 p_1660->g_867 p_1660->g_871 p_1660->g_880 p_1660->g_887 p_1660->g_891 p_1660->g_901 p_1660->g_910 p_1660->g_916 p_1660->g_935 p_1660->g_1011 p_1660->g_917 p_1660->g_553 p_1660->g_335 p_1660->g_1148 p_1660->g_1153 p_1660->g_1155 p_1660->g_1095 p_1660->g_1128 p_1660->g_1165 p_1660->g_1216 p_1660->g_1217 p_1660->g_1218 p_1660->g_1220 p_1660->g_976 p_1660->g_1242 p_1660->g_1247 p_1660->g_1252 p_1660->g_1263 p_1660->g_1265 p_1660->g_1085 p_1660->g_1304 p_1660->g_1326 p_1660->g_1329 p_1660->g_1331 p_1660->g_1336 p_1660->g_1342 p_1660->g_1359 p_1660->g_1399 p_1660->g_332 p_1660->g_1431 p_1660->g_1471 p_1660->g_1473 p_1660->g_1486 p_1660->g_1490 p_1660->g_1538 p_1660->g_1083 p_1660->g_851 p_1660->g_1561 p_1660->g_1564 p_1660->g_1565 p_1660->g_1566 p_1660->g_1572 p_1660->g_1626 p_1660->g_1633 p_1660->g_1634 p_1660->g_1635 p_1660->g_845
 * writes: p_1660->g_2 p_1660->g_64 p_1660->g_84 p_1660->g_21 p_1660->g_131 p_1660->g_136 p_1660->g_178 p_1660->g_222 p_1660->g_224 p_1660->g_245 p_1660->g_306 p_1660->g_335 p_1660->g_190 p_1660->g_99 p_1660->g_416 p_1660->g_108 p_1660->g_114 p_1660->g_101 p_1660->g_113 p_1660->g_584 p_1660->g_49 p_1660->g_285 p_1660->g_736 p_1660->g_198 p_1660->g_20 p_1660->g_121 p_1660->g_852 p_1660->g_173 p_1660->g_911 p_1660->g_917 p_1660->g_109 p_1660->g_1011 p_1660->g_414 p_1660->g_1048 p_1660->g_242 p_1660->g_1128 p_1660->g_1148 p_1660->g_1217 p_1660->g_1247 p_1660->g_1301 p_1660->g_1113 p_1660->g_1263 p_1660->g_112 p_1660->g_1399 p_1660->g_1218 p_1660->g_1486 p_1660->g_1265
 */
int32_t  func_1(struct S0 * p_1660)
{ /* block id: 4 */
    uint16_t l_1567 = 65535UL;
    VECTOR(uint16_t, 8) l_1587 = (VECTOR(uint16_t, 8))(0x38F0L, (VECTOR(uint16_t, 4))(0x38F0L, (VECTOR(uint16_t, 2))(0x38F0L, 0xE6A8L), 0xE6A8L), 0xE6A8L, 0x38F0L, 0xE6A8L);
    VECTOR(uint16_t, 16) l_1593 = (VECTOR(uint16_t, 16))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0UL), 0UL), 0UL, 65532UL, 0UL, (VECTOR(uint16_t, 2))(65532UL, 0UL), (VECTOR(uint16_t, 2))(65532UL, 0UL), 65532UL, 0UL, 65532UL, 0UL);
    uint64_t *l_1603 = &p_1660->g_1011;
    uint64_t *l_1605 = &p_1660->g_1011;
    uint64_t *l_1606 = &p_1660->g_1011;
    uint64_t l_1609 = 0x0D05ABF9FFA76290L;
    int8_t l_1610 = 0x39L;
    int32_t l_1611[9][4][7] = {{{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L}},{{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L}},{{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L}},{{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L}},{{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L}},{{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L}},{{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L}},{{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L}},{{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L},{0L,(-1L),0x4E1FB2BDL,0x297A0ADCL,0x4E1FB2BDL,(-1L),0L}}};
    int32_t l_1619 = 4L;
    int64_t *l_1620[10][9] = {{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0},{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0},{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0},{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0},{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0},{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0},{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0},{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0},{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0},{&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,&p_1660->g_1048,(void*)0}};
    int32_t l_1621 = 0x2488BF62L;
    VECTOR(uint64_t, 16) l_1630 = (VECTOR(uint64_t, 16))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 5UL), 5UL), 5UL, 18446744073709551606UL, 5UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 5UL), (VECTOR(uint64_t, 2))(18446744073709551606UL, 5UL), 18446744073709551606UL, 5UL, 18446744073709551606UL, 5UL);
    int64_t l_1636 = 0x420B6E1421FC0D30L;
    int32_t **l_1637 = &p_1660->g_131;
    int32_t *l_1640 = (void*)0;
    int32_t l_1641 = 1L;
    uint8_t l_1654 = 255UL;
    int16_t l_1658[2][3] = {{0x4C74L,7L,0x4C74L},{0x4C74L,7L,0x4C74L}};
    uint32_t l_1659 = 0x4E045B28L;
    int i, j, k;
    if ((p_1660->g_2 & GROUP_DIVERGE(0, 1)))
    { /* block id: 5 */
        uint8_t l_7 = 0UL;
        int32_t **l_1563 = &p_1660->g_131;
        for (p_1660->g_2 = 0; (p_1660->g_2 < 48); p_1660->g_2++)
        { /* block id: 8 */
            return p_1660->g_2;
        }
        (*l_1563) = func_5(l_7, p_1660);
        p_1660->g_1265.z &= (((VECTOR(uint64_t, 2))(p_1660->g_1564.s35)).lo <= (((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1660->g_1565.zy)), 7L, 0x6CL)).wwxxzwzzwyxwzzwz && ((VECTOR(int8_t, 16))(p_1660->g_1566.yxyyyxxyyyyyyyyx))))).s0 , l_1567));
    }
    else
    { /* block id: 517 */
        int16_t l_1573 = 0x18A9L;
        VECTOR(uint16_t, 8) l_1581 = (VECTOR(uint16_t, 8))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 1UL), 1UL), 1UL, 65530UL, 1UL);
        int64_t l_1584[1][10] = {{0x499BA86230F59ADDL,0x499BA86230F59ADDL,0x499BA86230F59ADDL,0x499BA86230F59ADDL,0x499BA86230F59ADDL,0x499BA86230F59ADDL,0x499BA86230F59ADDL,0x499BA86230F59ADDL,0x499BA86230F59ADDL,0x499BA86230F59ADDL}};
        VECTOR(uint16_t, 4) l_1592 = (VECTOR(uint16_t, 4))(0x5636L, (VECTOR(uint16_t, 2))(0x5636L, 0x46B8L), 0x46B8L);
        VECTOR(uint16_t, 2) l_1596 = (VECTOR(uint16_t, 2))(65528UL, 0x5223L);
        VECTOR(uint16_t, 2) l_1597 = (VECTOR(uint16_t, 2))(0x7632L, 2UL);
        uint64_t *l_1602 = &p_1660->g_1011;
        uint64_t **l_1601[1][10][8] = {{{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602},{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602},{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602},{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602},{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602},{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602},{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602},{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602},{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602},{(void*)0,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602,&l_1602}}};
        uint8_t *l_1607 = (void*)0;
        uint8_t *l_1608[5];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1608[i] = (void*)0;
lbl_1614:
        l_1611[1][3][3] &= (((safe_rshift_func_int8_t_s_u((&p_1660->g_409[0][4] != (((safe_lshift_func_uint8_t_u_u(p_1660->g_1572, 2)) & l_1573) , func_52((safe_mod_func_int64_t_s_s((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(p_1660->g_1578.s6471041442564523)).se7, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 2))(l_1581.s61)).yxyyxyxx, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(l_1584[0][0], 65534UL, 7UL, 65535UL)) + ((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(l_1587.s07)).yyxx + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(l_1592.yyzxwzzx)).s5174452527464156 + ((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 8))(l_1593.s8e08496b)).even, ((VECTOR(uint16_t, 8))((+((VECTOR(uint16_t, 8))((+((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(l_1596.yyxxxxxyyxxyyyxy)).hi << ((VECTOR(uint16_t, 8))(16))))))))))).even))).even, ((VECTOR(uint16_t, 4))(p_1660->g_21[3][4], 1UL, 0xC512L, 2UL)).lo))), ((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_1597.yy)), 65530UL, (((l_1609 = ((safe_unary_minus_func_int32_t_s((((*p_1660->g_20) = (((((VECTOR(uint8_t, 4))(0x65L, 0x80L, 0x62L, 255UL)).x ^ (safe_mod_func_int64_t_s_s(((p_1660->g_1604 = (l_1603 = (void*)0)) != (l_1606 = l_1605)), ((l_1596.x , GROUP_DIVERGE(2, 1)) , p_1660->g_2)))) ^ 0x0541L) , l_1581.s2)) > p_1660->g_109.x))) || l_1567)) == l_1587.s5) | l_1587.s0), 0UL, 0UL, 0UL, 65526UL)).s00, ((VECTOR(uint16_t, 2))(8UL)), ((VECTOR(uint16_t, 2))(65535UL)))))))).yyyxxyxxxyyxyyyx))).s8c + ((VECTOR(uint16_t, 2))(0x56C2L))))).yyyy))).lo, ((VECTOR(uint16_t, 2))(65526UL)), ((VECTOR(uint16_t, 2))(0x8ADFL))))).yyyyyxyy, ((VECTOR(uint16_t, 8))(65529UL))))).hi))).wwyzyxzx))).s40 + ((VECTOR(uint16_t, 2))(4UL))))).odd , l_1581.s6), 0L, 0x7758L, (-1L))).zxxzwzxz && ((VECTOR(int16_t, 8))(0x28F5L))))).hi, ((VECTOR(int16_t, 4))(0L))))), ((VECTOR(int16_t, 4))(0x2B3BL)), ((VECTOR(int16_t, 4))(0x207AL))))) <= ((VECTOR(int16_t, 4))((-1L)))))).hi == ((VECTOR(int16_t, 2))((-1L))))))))).yyyxyyxy, ((VECTOR(int16_t, 8))((-1L)))))).s6, l_1610)), 1L)), p_1660))), 0)) >= 5UL) && GROUP_DIVERGE(0, 1));
        for (p_1660->g_335 = 19; (p_1660->g_335 <= (-29)); p_1660->g_335--)
        { /* block id: 526 */
            (*p_1660->g_20) ^= l_1592.y;
            if (p_1660->g_136)
                goto lbl_1614;
        }
    }
    l_1641 = ((((((l_1621 = (l_1611[3][2][3] = (safe_add_func_int16_t_s_s(((*p_1660->g_48) ^= l_1611[8][3][1]), (l_1619 = (safe_div_func_uint16_t_u_u(l_1610, l_1609))))))) , (safe_div_func_int16_t_s_s((FAKE_DIVERGE(p_1660->local_2_offset, get_local_id(2), 10) , ((safe_add_func_uint16_t_u_u(0xAC6BL, ((p_1660->g_1359.s3 , (!((VECTOR(int32_t, 4))(p_1660->g_1626.sac3a)).w)) >= (((l_1619 = 0x7912FA8CL) != 0x426045AEL) == ((safe_unary_minus_func_int32_t_s(((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 2))(l_1630.sf3)), ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(p_1660->g_1633.sc8)).xxxyyxxy * ((VECTOR(uint64_t, 4))((-((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 4))(p_1660->g_1634.s0502)).odd, ((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 4))(p_1660->g_1635.s4353)).wxyyxzzzzxzxzwww, ((VECTOR(int64_t, 2))((-1L), 9L)).xxyxyyxyxxxxyyxx))).s89, ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(l_1610, (p_1660->g_1218.w == l_1609), ((VECTOR(int64_t, 2))(0x4982AE61E18A6D46L)), l_1567, 0L, 0x63F948C4F69CA4C6L, 0x70F8A1C5321604C8L)) <= ((VECTOR(int64_t, 8))((-1L)))))).s51))).xxxyxxxx | ((VECTOR(int64_t, 8))(0x101E7BACF8998E15L))))).odd, ((VECTOR(int64_t, 4))((-7L))))))))).ywxzwxww))).s10))), ((VECTOR(uint64_t, 2))(18446744073709551612UL)), ((VECTOR(uint64_t, 2))(0x7A08163BCB85B4EBL))))).hi, l_1621)) , l_1636))) || 5UL))))) || 1UL)), l_1630.s2))) , (void*)0) != l_1637) , p_1660->g_782.s4) >= l_1630.se);
    for (l_1621 = 0; (l_1621 <= (-11)); l_1621--)
    { /* block id: 539 */
        int8_t l_1644[8] = {0x52L,0x52L,0x52L,0x52L,0x52L,0x52L,0x52L,0x52L};
        VECTOR(int32_t, 4) l_1645 = (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x5B19DE6BL), 0x5B19DE6BL);
        int16_t *l_1652 = (void*)0;
        int16_t *l_1653 = &p_1660->g_245;
        int32_t *l_1657[2];
        int i;
        for (i = 0; i < 2; i++)
            l_1657[i] = &p_1660->g_64;
        if (l_1644[5])
            break;
        l_1658[1][0] = ((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))(l_1645.zwxzwzxz)), ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((((safe_add_func_uint64_t_u_u((safe_add_func_int8_t_s_s((GROUP_DIVERGE(2, 1) <= (4L | (((*l_1653) &= ((*p_1660->g_48) = (safe_mul_func_int8_t_s_s(0x4EL, l_1644[0])))) , (l_1654 || (l_1644[5] , (safe_mul_func_int8_t_s_s((1UL <= l_1645.y), ((*p_1660->g_844) != &p_1660->g_852)))))))), 0x25L)), 0L)) <= 0x38FFL) , l_1593.s1), l_1645.y, (-3L), 0x651410D9L)).yyzxyxxz > ((VECTOR(int32_t, 8))(1L))))).s71, ((VECTOR(int32_t, 2))(7L)), ((VECTOR(int32_t, 2))(1L))))), 8L, ((VECTOR(int32_t, 4))(0x329B314FL)), 0x4056BA9FL)) | ((VECTOR(int32_t, 8))(0L)))))))) | ((VECTOR(int32_t, 8))(0x6F4E354FL))))), ((VECTOR(int32_t, 8))(0x7D858B08L))))).s7564552335124543, ((VECTOR(int32_t, 16))(8L)), ((VECTOR(int32_t, 16))(0x5E085DB9L))))).sd;
    }
    return l_1659;
}


/* ------------------------------------------ */
/* 
 * reads : p_1660->g_20 p_1660->g_2 p_1660->g_21 p_1660->g_48 p_1660->g_64 p_1660->g_49 p_1660->g_84 p_1660->g_39 p_1660->g_130 p_1660->g_136 p_1660->g_149 p_1660->g_131 p_1660->g_245 p_1660->g_306 p_1660->g_110 p_1660->g_224 p_1660->g_170 p_1660->g_190 p_1660->g_222 p_1660->g_112 p_1660->g_178 p_1660->g_106 p_1660->g_367 p_1660->g_369 p_1660->g_153 p_1660->g_242 p_1660->g_409 p_1660->g_109 p_1660->g_414 p_1660->g_416 p_1660->g_113 p_1660->g_278 p_1660->g_474 p_1660->g_114 p_1660->g_198 p_1660->g_100 p_1660->g_290 p_1660->g_101 p_1660->g_617 p_1660->g_622 p_1660->g_625 p_1660->g_285 p_1660->g_643 p_1660->g_108 p_1660->g_577 p_1660->g_716 p_1660->g_173 p_1660->g_782 p_1660->g_309 p_1660->g_121 p_1660->g_99 p_1660->g_844 p_1660->g_852 p_1660->g_855 p_1660->g_736 p_1660->g_867 p_1660->g_871 p_1660->g_880 p_1660->g_887 p_1660->g_891 p_1660->g_901 p_1660->g_910 p_1660->g_916 p_1660->g_935 p_1660->g_1011 p_1660->g_917 p_1660->g_553 p_1660->g_335 p_1660->g_1148 p_1660->g_1153 p_1660->g_1155 p_1660->g_1095 p_1660->g_1128 p_1660->g_1165 p_1660->g_1216 p_1660->g_1217 p_1660->g_1218 p_1660->g_1220 p_1660->g_976 p_1660->g_1242 p_1660->g_1247 p_1660->g_1252 p_1660->g_1263 p_1660->g_1265 p_1660->g_1085 p_1660->g_1304 p_1660->g_1326 p_1660->g_1329 p_1660->g_1331 p_1660->g_1336 p_1660->g_1342 p_1660->g_1359 p_1660->g_1399 p_1660->g_332 p_1660->g_1431 p_1660->g_1471 p_1660->g_1473 p_1660->g_1486 p_1660->g_1490 p_1660->g_1538 p_1660->g_1083 p_1660->g_851 p_1660->g_1561
 * writes: p_1660->g_64 p_1660->g_84 p_1660->g_21 p_1660->g_131 p_1660->g_136 p_1660->g_178 p_1660->g_222 p_1660->g_224 p_1660->g_245 p_1660->g_306 p_1660->g_335 p_1660->g_190 p_1660->g_99 p_1660->g_416 p_1660->g_108 p_1660->g_114 p_1660->g_101 p_1660->g_113 p_1660->g_584 p_1660->g_49 p_1660->g_285 p_1660->g_736 p_1660->g_198 p_1660->g_20 p_1660->g_2 p_1660->g_121 p_1660->g_852 p_1660->g_173 p_1660->g_911 p_1660->g_917 p_1660->g_109 p_1660->g_1011 p_1660->g_414 p_1660->g_1048 p_1660->g_242 p_1660->g_1128 p_1660->g_1148 p_1660->g_1217 p_1660->g_1247 p_1660->g_1301 p_1660->g_1113 p_1660->g_1263 p_1660->g_112 p_1660->g_1399 p_1660->g_1218 p_1660->g_1486
 */
int32_t * func_5(int8_t  p_6, struct S0 * p_1660)
{ /* block id: 11 */
    uint32_t l_1536 = 4294967293UL;
    VECTOR(uint64_t, 16) l_1537 = (VECTOR(uint64_t, 16))(0x8FF3A2FA3D26D738L, (VECTOR(uint64_t, 4))(0x8FF3A2FA3D26D738L, (VECTOR(uint64_t, 2))(0x8FF3A2FA3D26D738L, 0xA6F56A42CAA49FFAL), 0xA6F56A42CAA49FFAL), 0xA6F56A42CAA49FFAL, 0x8FF3A2FA3D26D738L, 0xA6F56A42CAA49FFAL, (VECTOR(uint64_t, 2))(0x8FF3A2FA3D26D738L, 0xA6F56A42CAA49FFAL), (VECTOR(uint64_t, 2))(0x8FF3A2FA3D26D738L, 0xA6F56A42CAA49FFAL), 0x8FF3A2FA3D26D738L, 0xA6F56A42CAA49FFAL, 0x8FF3A2FA3D26D738L, 0xA6F56A42CAA49FFAL);
    uint64_t *l_1539 = (void*)0;
    uint64_t *l_1540[10][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_1541 = (-1L);
    int32_t **l_1562 = &p_1660->g_131;
    int i, j;
    (*l_1562) = func_8(func_12(p_6, p_1660), l_1536, (l_1541 = ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))((+((VECTOR(uint64_t, 2))(18446744073709551608UL, 0x9926640828D0E349L)).yyyxyxxy))).lo & ((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 8))(l_1537.s34a9edb9)), ((VECTOR(uint64_t, 16))(p_1660->g_1538.sc4065a8c8944eaf9)).lo))).odd))).x), p_1660);
    return (*p_1660->g_1561);
}


/* ------------------------------------------ */
/* 
 * reads : p_1660->g_1083 p_1660->g_851 p_1660->g_1561
 * writes: p_1660->g_20
 */
int32_t * func_8(int32_t * p_9, int32_t  p_10, uint64_t  p_11, struct S0 * p_1660)
{ /* block id: 510 */
    int64_t *l_1548 = &p_1660->g_1048;
    uint32_t l_1557 = 0xD644C502L;
    VECTOR(int32_t, 4) l_1558 = (VECTOR(int32_t, 4))(0x4B6F9D66L, (VECTOR(int32_t, 2))(0x4B6F9D66L, (-1L)), (-1L));
    VECTOR(int32_t, 4) l_1559 = (VECTOR(int32_t, 4))(0x70BF1E66L, (VECTOR(int32_t, 2))(0x70BF1E66L, 0x18813552L), 0x18813552L);
    VECTOR(int32_t, 4) l_1560 = (VECTOR(int32_t, 4))(0x0BF47499L, (VECTOR(int32_t, 2))(0x0BF47499L, 7L), 7L);
    int i;
    (*p_1660->g_1561) = (((safe_mod_func_int32_t_s_s((safe_mod_func_int16_t_s_s(((safe_lshift_func_int8_t_s_u(1L, (l_1548 != (void*)0))) || p_1660->g_1083.z), (safe_rshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((p_10 ^ (safe_rshift_func_uint8_t_u_s(p_10, ((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 4))(8L, (-1L), 0x02017E6F66A9E613L, 0L)).x, l_1557)) | ((p_10 || ((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 4))(l_1558.yyxy)).yywxzzxw, ((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(0x4AE63CD3L, 0L)).yyyxyxyxyyxyxxxx && ((VECTOR(int32_t, 8))(7L, 0x4992EEADL, ((VECTOR(int32_t, 4))((-3L), 2L, 0L, 0x5D010A2FL)), 7L, 8L)).s0264551621552465))).s666d, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(l_1559.wxxywxzy)).s6076310261710526 && ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(9L, ((VECTOR(int32_t, 4))(l_1560.yxww)), 0x4A1BBDA2L, 0L, 6L)).s22, ((VECTOR(int32_t, 8))((((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 16))(0x561E283F7B260C6BL, (p_11 == l_1557), ((VECTOR(int64_t, 2))((-9L))), ((VECTOR(int64_t, 2))(2L)), 0x657F329DDE60598FL, 0x393CCABF06CFF212L, ((VECTOR(int64_t, 2))(0x21D6AACE6E223669L)), 0L, ((VECTOR(int64_t, 4))(0x0DB346915659CF5EL)), 1L)).s0440, ((VECTOR(int64_t, 4))(7L))))).w & 4L), ((VECTOR(int32_t, 2))(0x2619E33AL)), 0L, 0x290B212FL, ((VECTOR(int32_t, 2))(0x6818B1E2L)), 1L)).s73))).xxyyyxxyxyxyxxyy))).lo != ((VECTOR(int32_t, 8))(1L))))).lo, ((VECTOR(int32_t, 4))(0x675D9F92L))))).yxzxywwzwwwzzzwz || ((VECTOR(int32_t, 16))(0x03BF9ECDL))))).lo, ((VECTOR(int32_t, 8))(0x51B5B473L)))))))).s5) < p_1660->g_851))))), 0x444BL)), p_10)))), l_1557)) >= p_10) , p_9);
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1660->g_20 p_1660->g_2 p_1660->g_21 p_1660->g_48 p_1660->g_64 p_1660->g_49 p_1660->g_84 p_1660->g_39 p_1660->g_130 p_1660->g_136 p_1660->g_149 p_1660->g_131 p_1660->g_245 p_1660->g_306 p_1660->g_110 p_1660->g_224 p_1660->g_170 p_1660->g_190 p_1660->g_222 p_1660->g_112 p_1660->g_178 p_1660->g_106 p_1660->g_367 p_1660->g_369 p_1660->g_153 p_1660->g_242 p_1660->g_409 p_1660->g_109 p_1660->g_414 p_1660->g_416 p_1660->g_113 p_1660->g_278 p_1660->g_474 p_1660->g_114 p_1660->g_198 p_1660->g_100 p_1660->g_290 p_1660->g_101 p_1660->g_617 p_1660->g_622 p_1660->g_625 p_1660->g_285 p_1660->g_643 p_1660->g_108 p_1660->g_577 p_1660->g_716 p_1660->g_173 p_1660->g_782 p_1660->g_309 p_1660->g_121 p_1660->g_99 p_1660->g_844 p_1660->g_852 p_1660->g_855 p_1660->g_736 p_1660->g_867 p_1660->g_871 p_1660->g_880 p_1660->g_887 p_1660->g_891 p_1660->g_901 p_1660->g_910 p_1660->g_916 p_1660->g_935 p_1660->g_1011 p_1660->g_917 p_1660->g_553 p_1660->g_335 p_1660->g_1148 p_1660->g_1153 p_1660->g_1155 p_1660->g_1095 p_1660->g_1128 p_1660->g_1165 p_1660->g_1216 p_1660->g_1217 p_1660->g_1218 p_1660->g_1220 p_1660->g_976 p_1660->g_1242 p_1660->g_1247 p_1660->g_1252 p_1660->g_1263 p_1660->g_1265 p_1660->g_1085 p_1660->g_1304 p_1660->g_1326 p_1660->g_1329 p_1660->g_1331 p_1660->g_1336 p_1660->g_1342 p_1660->g_1359 p_1660->g_1399 p_1660->g_332 p_1660->g_1431 p_1660->g_1471 p_1660->g_1473 p_1660->g_1486 p_1660->g_1490
 * writes: p_1660->g_64 p_1660->g_84 p_1660->g_21 p_1660->g_131 p_1660->g_136 p_1660->g_178 p_1660->g_222 p_1660->g_224 p_1660->g_245 p_1660->g_306 p_1660->g_335 p_1660->g_190 p_1660->g_99 p_1660->g_416 p_1660->g_108 p_1660->g_114 p_1660->g_101 p_1660->g_113 p_1660->g_584 p_1660->g_49 p_1660->g_285 p_1660->g_736 p_1660->g_198 p_1660->g_20 p_1660->g_2 p_1660->g_121 p_1660->g_852 p_1660->g_173 p_1660->g_911 p_1660->g_917 p_1660->g_109 p_1660->g_1011 p_1660->g_414 p_1660->g_1048 p_1660->g_242 p_1660->g_1128 p_1660->g_1148 p_1660->g_1217 p_1660->g_1247 p_1660->g_1301 p_1660->g_1113 p_1660->g_1263 p_1660->g_112 p_1660->g_1399 p_1660->g_1218 p_1660->g_1486
 */
int32_t * func_12(int64_t  p_13, struct S0 * p_1660)
{ /* block id: 12 */
    int32_t *l_28 = (void*)0;
    VECTOR(int32_t, 16) l_638 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x1BA889F2L), 0x1BA889F2L), 0x1BA889F2L, 1L, 0x1BA889F2L, (VECTOR(int32_t, 2))(1L, 0x1BA889F2L), (VECTOR(int32_t, 2))(1L, 0x1BA889F2L), 1L, 0x1BA889F2L, 1L, 0x1BA889F2L);
    int32_t *l_639 = (void*)0;
    int32_t *l_640 = (void*)0;
    int8_t l_641 = 0x57L;
    uint32_t l_642[9] = {0xDE70B0D8L,0xDE70B0D8L,0xDE70B0D8L,0xDE70B0D8L,0xDE70B0D8L,0xDE70B0D8L,0xDE70B0D8L,0xDE70B0D8L,0xDE70B0D8L};
    VECTOR(int32_t, 16) l_644 = (VECTOR(int32_t, 16))(0x7CDED645L, (VECTOR(int32_t, 4))(0x7CDED645L, (VECTOR(int32_t, 2))(0x7CDED645L, 0x6471A4F6L), 0x6471A4F6L), 0x6471A4F6L, 0x7CDED645L, 0x6471A4F6L, (VECTOR(int32_t, 2))(0x7CDED645L, 0x6471A4F6L), (VECTOR(int32_t, 2))(0x7CDED645L, 0x6471A4F6L), 0x7CDED645L, 0x6471A4F6L, 0x7CDED645L, 0x6471A4F6L);
    VECTOR(int32_t, 2) l_645 = (VECTOR(int32_t, 2))(0x1F58D541L, 0x0869C97CL);
    int8_t *l_654 = (void*)0;
    int8_t *l_655 = (void*)0;
    int8_t *l_656[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t l_657 = 0x3146L;
    int32_t **l_1020[8] = {&p_1660->g_20,&p_1660->g_20,&p_1660->g_20,&p_1660->g_20,&p_1660->g_20,&p_1660->g_20,&p_1660->g_20,&p_1660->g_20};
    int32_t *l_1021 = &p_1660->g_21[1][2];
    int32_t ***l_1024[5][6][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    uint16_t l_1025 = 8UL;
    uint32_t *l_1026 = &l_642[4];
    int8_t *l_1052 = (void*)0;
    VECTOR(uint32_t, 4) l_1070 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xFB325170L), 0xFB325170L);
    VECTOR(int64_t, 4) l_1097 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L));
    VECTOR(uint32_t, 16) l_1107 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint32_t, 2))(0UL, 1UL), (VECTOR(uint32_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
    uint64_t l_1120 = 0x58C8098A2D761271L;
    VECTOR(int64_t, 16) l_1219 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int64_t, 2))(0L, (-1L)), (VECTOR(int64_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
    VECTOR(int64_t, 4) l_1223 = (VECTOR(int64_t, 4))(0x5D7700423B6B8D87L, (VECTOR(int64_t, 2))(0x5D7700423B6B8D87L, 0L), 0L);
    uint64_t ***l_1236 = &p_1660->g_917;
    VECTOR(int8_t, 4) l_1244 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x34L), 0x34L);
    int32_t *l_1245[9][7] = {{&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4]},{&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4]},{&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4]},{&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4]},{&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4]},{&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4]},{&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4]},{&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4]},{&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4],(void*)0,&p_1660->g_21[0][4],&p_1660->g_21[0][4]}};
    VECTOR(int8_t, 16) l_1246 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x32L), 0x32L), 0x32L, 0L, 0x32L, (VECTOR(int8_t, 2))(0L, 0x32L), (VECTOR(int8_t, 2))(0L, 0x32L), 0L, 0x32L, 0L, 0x32L);
    VECTOR(int8_t, 2) l_1248 = (VECTOR(int8_t, 2))(0x12L, (-1L));
    VECTOR(int8_t, 2) l_1251 = (VECTOR(int8_t, 2))((-1L), 0x6DL);
    VECTOR(int8_t, 8) l_1253 = (VECTOR(int8_t, 8))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0x05L), 0x05L), 0x05L, (-3L), 0x05L);
    uint32_t l_1258[5] = {0x48378BB9L,0x48378BB9L,0x48378BB9L,0x48378BB9L,0x48378BB9L};
    VECTOR(int16_t, 16) l_1264 = (VECTOR(int16_t, 16))(0x52B0L, (VECTOR(int16_t, 4))(0x52B0L, (VECTOR(int16_t, 2))(0x52B0L, 0x2B30L), 0x2B30L), 0x2B30L, 0x52B0L, 0x2B30L, (VECTOR(int16_t, 2))(0x52B0L, 0x2B30L), (VECTOR(int16_t, 2))(0x52B0L, 0x2B30L), 0x52B0L, 0x2B30L, 0x52B0L, 0x2B30L);
    VECTOR(int16_t, 2) l_1266 = (VECTOR(int16_t, 2))((-6L), (-10L));
    int64_t *l_1269 = (void*)0;
    int64_t *l_1270 = (void*)0;
    int64_t *l_1271 = (void*)0;
    int64_t *l_1272 = (void*)0;
    int64_t *l_1273 = (void*)0;
    int64_t *l_1274 = (void*)0;
    int64_t *l_1275[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int16_t, 2) l_1276 = (VECTOR(int16_t, 2))(1L, 0x7981L);
    VECTOR(int16_t, 2) l_1277 = (VECTOR(int16_t, 2))(4L, (-5L));
    VECTOR(int16_t, 2) l_1278 = (VECTOR(int16_t, 2))(0x08DEL, 0x4E6AL);
    VECTOR(int16_t, 16) l_1279 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
    uint8_t *l_1286 = (void*)0;
    uint8_t *l_1287 = (void*)0;
    uint8_t *l_1288 = (void*)0;
    uint8_t *l_1289 = (void*)0;
    uint8_t *l_1290 = (void*)0;
    uint8_t *l_1291 = (void*)0;
    uint8_t *l_1292 = (void*)0;
    uint8_t *l_1293 = (void*)0;
    uint8_t *l_1294 = (void*)0;
    uint8_t *l_1295 = (void*)0;
    uint8_t *l_1296 = (void*)0;
    uint8_t *l_1297 = (void*)0;
    uint8_t *l_1298 = (void*)0;
    uint8_t *l_1299[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_1300 = 0x281DC567L;
    VECTOR(uint32_t, 2) l_1328 = (VECTOR(uint32_t, 2))(4294967294UL, 0x99BE6129L);
    VECTOR(uint8_t, 2) l_1348 = (VECTOR(uint8_t, 2))(0UL, 1UL);
    VECTOR(int32_t, 2) l_1351 = (VECTOR(int32_t, 2))(0x1ECCED46L, 0x7319968DL);
    VECTOR(int16_t, 2) l_1395 = (VECTOR(int16_t, 2))(0L, 0x6429L);
    VECTOR(uint8_t, 8) l_1428 = (VECTOR(uint8_t, 8))(0xB7L, (VECTOR(uint8_t, 4))(0xB7L, (VECTOR(uint8_t, 2))(0xB7L, 0x9DL), 0x9DL), 0x9DL, 0xB7L, 0x9DL);
    int32_t ****l_1439[6][4][9] = {{{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0},{(void*)0,(void*)0,&l_1024[2][0][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[3][2][0],&l_1024[2][0][0],(void*)0,(void*)0}}};
    uint32_t *l_1458 = &l_1300;
    uint32_t **l_1457 = &l_1458;
    VECTOR(int32_t, 16) l_1475 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x47AA7B9AL), 0x47AA7B9AL), 0x47AA7B9AL, 0L, 0x47AA7B9AL, (VECTOR(int32_t, 2))(0L, 0x47AA7B9AL), (VECTOR(int32_t, 2))(0L, 0x47AA7B9AL), 0L, 0x47AA7B9AL, 0L, 0x47AA7B9AL);
    VECTOR(int32_t, 4) l_1476 = (VECTOR(int32_t, 4))(0x4FED0E03L, (VECTOR(int32_t, 2))(0x4FED0E03L, 6L), 6L);
    VECTOR(int32_t, 16) l_1478 = (VECTOR(int32_t, 16))(0x480C32C0L, (VECTOR(int32_t, 4))(0x480C32C0L, (VECTOR(int32_t, 2))(0x480C32C0L, 0x7F551B1DL), 0x7F551B1DL), 0x7F551B1DL, 0x480C32C0L, 0x7F551B1DL, (VECTOR(int32_t, 2))(0x480C32C0L, 0x7F551B1DL), (VECTOR(int32_t, 2))(0x480C32C0L, 0x7F551B1DL), 0x480C32C0L, 0x7F551B1DL, 0x480C32C0L, 0x7F551B1DL);
    int32_t *l_1535 = (void*)0;
    int i, j, k;
    l_1021 = func_14(p_1660->g_20, (((p_1660->g_584.y = ((safe_div_func_int8_t_s_s((p_1660->g_2 ^ (((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((func_26(l_28, p_1660) , (safe_div_func_int32_t_s_s(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(l_638.s87a44af3)).s55, (int32_t)(l_641 |= ((*p_1660->g_20) = 0x095B2F23L))))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_642[5], (-5L), (-9L), 0x1D4553B6L)), ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(p_1660->g_643.s1712366035560246)).odd, ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(l_644.s9b)).yyxxxyyyyxxxyyyx && ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_645.xx)), (-7L), ((((safe_mul_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s(0xD1B9L, 12)) != ((safe_mod_func_uint8_t_u_u((0x19A54F838698AFAFL == (safe_rshift_func_int8_t_s_s((p_1660->g_113.s5 = p_1660->g_108.s7), p_13))), p_1660->g_112.y)) <= GROUP_DIVERGE(1, 1))), 6UL)) && 0x4379L) , l_657) , (*p_1660->g_20)), 0x11DF777CL, 4L, 4L, (-1L))).s56, ((VECTOR(int32_t, 2))(0x0F778645L))))).yxxx < ((VECTOR(int32_t, 4))((-1L)))))), 0x2548BCA8L, p_13, 0L, 0x12EC3633L)).s6264041350206024, ((VECTOR(int32_t, 16))(0x79F60B5BL))))).s4bf8, ((VECTOR(int32_t, 4))((-5L)))))).zxyyywyz < ((VECTOR(int32_t, 8))(0L))))).s0701603621561726, ((VECTOR(int32_t, 16))(0x1E775BFAL)))))))).sb0, (int32_t)p_13))).yxxyyyyx))), ((VECTOR(int32_t, 4))(0x6B753B3EL)))).saf, ((VECTOR(int32_t, 2))((-4L)))))).hi, p_13))), p_13, 0x8DL, 247UL)).wxxyyyxy + ((VECTOR(uint8_t, 8))(0xA3L))))).s1 | p_13)), GROUP_DIVERGE(0, 1))) ^ (-7L))) >= 0x6CL) , l_28), p_1660->g_109.w, p_1660->g_367.y, p_1660->g_242.y, p_1660);
lbl_1499:
    if (((safe_add_func_uint32_t_u_u(((*l_1026) ^= ((&p_1660->g_911 == l_1024[3][2][0]) & (l_1025 = (FAKE_DIVERGE(p_1660->global_2_offset, get_global_id(2), 10) >= p_1660->g_617.s4)))), p_13)) , (safe_sub_func_uint8_t_u_u((safe_div_func_int64_t_s_s((0x2F6DL ^ ((safe_div_func_uint16_t_u_u(p_13, (*p_1660->g_48))) > ((safe_div_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_u((*p_1660->g_48), p_13)) & p_13), p_13)) , 0x1EDCB45AL))), (**p_1660->g_917))), p_13))))
    { /* block id: 342 */
        uint64_t l_1049[2];
        int32_t l_1063 = 0L;
        VECTOR(int64_t, 2) l_1096 = (VECTOR(int64_t, 2))(9L, (-1L));
        VECTOR(uint32_t, 16) l_1106 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x6019BE24L), 0x6019BE24L), 0x6019BE24L, 4294967295UL, 0x6019BE24L, (VECTOR(uint32_t, 2))(4294967295UL, 0x6019BE24L), (VECTOR(uint32_t, 2))(4294967295UL, 0x6019BE24L), 4294967295UL, 0x6019BE24L, 4294967295UL, 0x6019BE24L);
        int32_t *l_1122 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_1049[i] = 18446744073709551615UL;
        for (p_1660->g_84 = 0; (p_1660->g_84 >= (-20)); p_1660->g_84 = safe_sub_func_uint32_t_u_u(p_1660->g_84, 5))
        { /* block id: 345 */
            int8_t *l_1054[1][2];
            VECTOR(int32_t, 8) l_1084 = (VECTOR(int32_t, 8))(0x7160D4CCL, (VECTOR(int32_t, 4))(0x7160D4CCL, (VECTOR(int32_t, 2))(0x7160D4CCL, 0x29424C78L), 0x29424C78L), 0x29424C78L, 0x7160D4CCL, 0x29424C78L);
            VECTOR(uint32_t, 4) l_1101 = (VECTOR(uint32_t, 4))(0xE4E2B022L, (VECTOR(uint32_t, 2))(0xE4E2B022L, 0xCF2C743AL), 0xCF2C743AL);
            VECTOR(uint32_t, 16) l_1111 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x91AEC307L), 0x91AEC307L), 0x91AEC307L, 1UL, 0x91AEC307L, (VECTOR(uint32_t, 2))(1UL, 0x91AEC307L), (VECTOR(uint32_t, 2))(1UL, 0x91AEC307L), 1UL, 0x91AEC307L, 1UL, 0x91AEC307L);
            VECTOR(uint32_t, 2) l_1112 = (VECTOR(uint32_t, 2))(0UL, 0xB5FC7F9CL);
            int32_t l_1119 = 9L;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_1054[i][j] = &l_641;
            }
            for (p_13 = 15; (p_13 != 2); p_13 = safe_sub_func_int64_t_s_s(p_13, 9))
            { /* block id: 348 */
                int16_t l_1041[5][8] = {{0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L}};
                int32_t l_1042[10][9][2] = {{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}},{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}},{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}},{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}},{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}},{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}},{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}},{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}},{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}},{{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)},{0x6178C4B0L,(-1L)}}};
                uint64_t *l_1043 = &p_1660->g_1011;
                uint16_t *l_1044 = &p_1660->g_414;
                int64_t *l_1047 = &p_1660->g_1048;
                int8_t **l_1053[7];
                VECTOR(uint32_t, 2) l_1109 = (VECTOR(uint32_t, 2))(0x92839981L, 8UL);
                int64_t *l_1118[2];
                uint16_t *l_1121 = &l_1025;
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_1053[i] = &l_654;
                for (i = 0; i < 2; i++)
                    l_1118[i] = (void*)0;
                l_1042[0][1][0] = l_1041[3][0];
                l_1063 ^= (((l_1043 != (void*)0) | ((-1L) & ((*l_1044)--))) , (((*l_1047) = 0x1264201A8CBB9D2AL) , ((l_1049[0] > ((safe_mul_func_uint8_t_u_u((((((*p_1660->g_222) &= ((((l_654 = l_1052) == l_1054[0][0]) < 1UL) <= (safe_lshift_func_int8_t_s_s((((p_1660->g_242.x = (safe_div_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(p_13, 1UL)), p_13)) | 5UL), p_1660->g_901[2]))) , p_13) <= p_13), 5)))) , p_13) , (*p_1660->g_48)) && (*p_1660->g_48)), p_13)) ^ (*p_1660->g_48))) != 0x34E37BC1L)));
                l_1122 = ((safe_mod_func_uint64_t_u_u((((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 16))(1UL, ((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(l_1070.xwzxyzyy)) + ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 4))(p_1660->g_1073.xyxx)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_1660->g_1074.xx)), 2UL, p_13, 0x4A82L, ((*l_1121) |= (safe_lshift_func_uint16_t_u_u(p_13, (((safe_div_func_uint64_t_u_u((((++(*l_1026)) || ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(p_1660->g_1083.wzxy)), ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(l_1084.s43061110)).odd, ((VECTOR(int32_t, 4))(p_1660->g_1085.yyzw)))))))), ((VECTOR(int32_t, 8))(p_1660->g_1086.zyywxxww)).hi))).z) == ((l_1063 &= ((~((*p_1660->g_48) , ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(0x76D879FCL, (safe_mul_func_uint16_t_u_u(((((safe_rshift_func_int16_t_s_u(((**p_1660->g_917) | 0x4D7BEC516155D3E2L), (p_13 | (safe_add_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((((VECTOR(uint16_t, 8))(p_1660->g_1095.sd3c9b971)).s6 , 0xAA28L), ((l_1119 = ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),VECTOR(int64_t, 4),((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(l_1096.xyxy)).yxwxxxyx && ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 4))(l_1097.xxzz)).yxyxxyxyyzwxxyzw, ((VECTOR(int64_t, 2))(p_1660->g_1098.yw)).xxxyyyxxyxxxyxyy))).lo || ((VECTOR(int64_t, 8))((((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(l_1101.xz)).xyxy - ((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 8))(0UL, ((VECTOR(uint32_t, 4))(l_1106.s4d7c)), ((VECTOR(uint32_t, 2))(l_1107.s4b)), 4294967287UL)).hi, ((VECTOR(uint32_t, 16))(p_1660->g_1108.s67fcb0fa050ca74d)).s0a7f))).lo))).xxyyxyyxxxyxxyyx, ((VECTOR(uint32_t, 2))(l_1109.xx)).xxyxyyyxyyxxxxyx))).s7e + ((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))(p_1660->g_1110.zwwzzxyw)), ((VECTOR(uint32_t, 8))((+((VECTOR(uint32_t, 4))((+((VECTOR(uint32_t, 2))(l_1111.s81)).yyyy))).yxxxxwyw))), ((VECTOR(uint32_t, 16))(l_1112.yxxyxyyxxyxxyyyy)).odd))).s02))).xxxxyxyyyyxxyxyx + ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(p_1660->g_1113.s33505623)), 4294967291UL, (((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 4))((safe_rshift_func_uint16_t_u_u((++(*l_1044)), (p_1660->g_242.x || 1UL))), 0x71L, 0x12L, 0x4AL)).xyxzwxyy, ((VECTOR(uint8_t, 8))(248UL))))).s1336700515270000, ((VECTOR(int16_t, 16))(0x4D00L))))).s0 == (-1L)), 0x79DDFA53L, 4294967295UL, ((VECTOR(uint32_t, 4))(4294967287UL))))))).even, ((VECTOR(uint32_t, 8))(0x95FE696CL))))).hi))).z > p_1660->g_1083.x) <= 0xA0F3025138492746L) == 1L), ((VECTOR(int64_t, 4))((-9L))), (-1L), (-1L), 0x42EE05E3BA766AE2L)))))))).hi, ((VECTOR(int64_t, 4))(8L)), ((VECTOR(int64_t, 4))(0x0B9B348CC596C901L))))).yyzxywyz, ((VECTOR(int64_t, 8))(0x37653A20AC0A76EAL))))), p_13, 0x2A22426EB5C679ECL, (-1L), 0x1CA8F75F65EE6260L, ((VECTOR(int64_t, 2))((-1L))), 1L, 0x74213A76451D23E1L)).s4e36, ((VECTOR(int64_t, 4))(2L))))) != ((VECTOR(int64_t, 4))(0L))))).zyyyzyzwywzyzwyx, ((VECTOR(int64_t, 16))(0x2E6CFE0A7017A424L))))), (int64_t)p_13))).odd || ((VECTOR(int64_t, 8))(7L))))).s0) , p_1660->g_1113.s2))), p_13))))) ^ FAKE_DIVERGE(p_1660->group_1_offset, get_group_id(1), 10)) >= 0x33D6D94EL) > (-1L)), l_1120)), 0x74E6B48BL, (-1L), ((VECTOR(int32_t, 2))(1L)), 0L, 0x07E54647L)).s03, ((VECTOR(int32_t, 2))(0x4E0BF6DEL)), ((VECTOR(int32_t, 2))(0x4100F200L))))).xyyxyyxx && ((VECTOR(int32_t, 8))(1L))))).s2)) , 0L)) < l_1101.w)), 0x410D0168E9D7197EL)) , 0xCC192C3CL) || FAKE_DIVERGE(p_1660->local_2_offset, get_local_id(2), 10))))), 1UL, 1UL)).odd))).wxywzyxzyyxwzwxx | ((VECTOR(uint16_t, 16))(0xAB02L))))).lo, ((VECTOR(uint16_t, 8))(0x9747L))))).s5676422247200306, ((VECTOR(uint16_t, 16))(0x4CB5L))))).s35 - ((VECTOR(uint32_t, 2))(4294967292UL))))).xyyyyyxy))), 1UL, 0x283ECCE2L, ((VECTOR(uint32_t, 4))(9UL)), 0x2582CADFL, 0x65AB7011L)).sccfa, (uint32_t)l_1101.x))), l_1106.s4, 1UL, 0xAB094EAFL, ((VECTOR(uint32_t, 8))(5UL)))).odd, ((VECTOR(uint32_t, 8))(7UL))))) >> ((VECTOR(uint32_t, 8))(32))))).s21, ((VECTOR(uint32_t, 2))(6UL))))).odd >= p_13), 0x8649E0BAF278935CL)) , &l_1042[0][1][0]);
            }
            l_1122 = (void*)0;
        }
    }
    else
    { /* block id: 365 */
        uint16_t l_1125[3][6] = {{0xC663L,65535UL,9UL,0UL,65535UL,0UL},{0xC663L,65535UL,9UL,0UL,65535UL,0UL},{0xC663L,65535UL,9UL,0UL,65535UL,0UL}};
        uint64_t ***l_1126 = (void*)0;
        int8_t **l_1127[2];
        VECTOR(int64_t, 8) l_1163 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
        VECTOR(int16_t, 4) l_1164 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x118BL), 0x118BL);
        int32_t l_1184 = 0x28594E02L;
        int32_t *l_1201 = (void*)0;
        VECTOR(int16_t, 16) l_1202 = (VECTOR(int16_t, 16))(0x4260L, (VECTOR(int16_t, 4))(0x4260L, (VECTOR(int16_t, 2))(0x4260L, 1L), 1L), 1L, 0x4260L, 1L, (VECTOR(int16_t, 2))(0x4260L, 1L), (VECTOR(int16_t, 2))(0x4260L, 1L), 0x4260L, 1L, 0x4260L, 1L);
        uint8_t l_1233 = 255UL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_1127[i] = &l_656[2];
        if ((safe_div_func_uint64_t_u_u(((l_1125[2][2] & ((VECTOR(uint32_t, 2))(4294967295UL, 0x14370CD2L)).even) < (((*p_1660->g_222) , (l_1126 != l_1126)) , (p_13 | p_13))), (((p_1660->g_1128 = &l_641) == ((((safe_rshift_func_int8_t_s_u(l_1125[0][0], p_13)) & 0UL) && p_1660->g_553) , (void*)0)) , l_1125[1][4]))))
        { /* block id: 367 */
            uint16_t l_1133 = 1UL;
            ++l_1133;
            for (p_1660->g_335 = 0; (p_1660->g_335 == (-10)); p_1660->g_335 = safe_sub_func_uint8_t_u_u(p_1660->g_335, 8))
            { /* block id: 371 */
                int32_t *l_1138 = (void*)0;
                return l_1138;
            }
        }
        else
        { /* block id: 374 */
            VECTOR(uint8_t, 2) l_1143 = (VECTOR(uint8_t, 2))(0xD5L, 0xD1L);
            int8_t l_1158 = 1L;
            uint32_t **l_1160 = &l_1026;
            int32_t *l_1176 = (void*)0;
            int16_t *l_1187 = &l_657;
            int32_t l_1205 = 1L;
            VECTOR(int64_t, 8) l_1221 = (VECTOR(int64_t, 8))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 0x25E1C284D1986CE0L), 0x25E1C284D1986CE0L), 0x25E1C284D1986CE0L, 4L, 0x25E1C284D1986CE0L);
            VECTOR(int64_t, 8) l_1222 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x7B325CDC6439D477L), 0x7B325CDC6439D477L), 0x7B325CDC6439D477L, (-1L), 0x7B325CDC6439D477L);
            int i;
            for (p_1660->g_852 = 11; (p_1660->g_852 > 40); p_1660->g_852 = safe_add_func_uint64_t_u_u(p_1660->g_852, 7))
            { /* block id: 377 */
                int32_t **l_1144[3][2] = {{&p_1660->g_912,&p_1660->g_912},{&p_1660->g_912,&p_1660->g_912},{&p_1660->g_912,&p_1660->g_912}};
                int32_t *l_1145 = (void*)0;
                VECTOR(uint16_t, 16) l_1154 = (VECTOR(uint16_t, 16))(65527UL, (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 2UL), 2UL), 2UL, 65527UL, 2UL, (VECTOR(uint16_t, 2))(65527UL, 2UL), (VECTOR(uint16_t, 2))(65527UL, 2UL), 65527UL, 2UL, 65527UL, 2UL);
                int32_t l_1177 = 0x0BE22DC3L;
                uint32_t *l_1230 = (void*)0;
                uint32_t *l_1231 = &p_1660->g_224;
                uint64_t *l_1232 = &p_1660->g_1011;
                int i, j;
                if ((((VECTOR(uint8_t, 16))(l_1143.xyxyxyxyxyyyyyyy)).s0 || ((void*)0 == l_1144[0][1])))
                { /* block id: 378 */
                    int64_t l_1159 = 0L;
                    VECTOR(int8_t, 8) l_1166 = (VECTOR(int8_t, 8))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x1BL), 0x1BL), 0x1BL, 5L, 0x1BL);
                    int i;
                    l_1145 = l_1145;
                    l_1159 ^= (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(0x6EL, (0x2CBB81C4L || (((VECTOR(int32_t, 8))(p_1660->g_1148.s34747157)).s4 && ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))((safe_mul_func_int16_t_s_s(((p_13 ^ (((safe_sub_func_int16_t_s_s(0L, l_1125[1][0])) < (~((*p_1660->g_48) != ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 16))(p_1660->g_1153.s6063323467422667)).s9e, ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 8))((+((VECTOR(uint16_t, 4))(l_1154.s58da)).xyywzzyw))).s42, ((VECTOR(uint16_t, 16))(p_1660->g_1155.s6600662041412337)).s8c)))))).odd))) < ((VECTOR(int8_t, 4))((-1L), 0x28L, 0x26L, 2L)).y)) ^ p_13), (l_1125[1][4] == ((VECTOR(int64_t, 4))((safe_lshift_func_uint16_t_u_s((((0xABAD4EDEL & ((*l_1026) = ((((*p_1660->g_48) && (*p_1660->g_48)) >= l_1158) , 0x4F795F28L))) && p_1660->g_1095.s3) ^ l_1125[2][2]), (*p_1660->g_48))), 0x0E58CBE8ED2113A8L, 1L, 0x55C3F2DF9F644777L)).x))), p_13, (-1L), ((VECTOR(int32_t, 2))(0x056CDFEAL)), ((VECTOR(int32_t, 2))(5L)), 0x79A6115CL)).s50, ((VECTOR(int32_t, 2))((-4L)))))), (-1L), 0L)).ywzzwwzz != ((VECTOR(int32_t, 8))(0x66575C64L))))).s2)), 0x08L, 5L, (*p_1660->g_1128), 0x38L, 0x51L, 0x45L)).s2, 5));
                    l_1177 = ((l_1160 != (void*)0) <= ((0xA8L || (+(safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(0xC913566E9A592D01L, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 4))(l_1163.s6603)).xxzwzwxx, ((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(l_1164.xw)) == ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(p_13, ((VECTOR(int8_t, 4))(p_1660->g_1165.wxzw)), ((VECTOR(int8_t, 8))(l_1166.s55111343)), (safe_unary_minus_func_uint16_t_u(((((safe_add_func_int64_t_s_s((safe_add_func_uint16_t_u_u((p_13 > p_13), l_1143.x)), 1L)) | (safe_add_func_int16_t_s_s((((safe_rshift_func_int8_t_s_u(p_13, GROUP_DIVERGE(1, 1))) , l_1176) != (void*)0), 0x5F90L))) , 65528UL) <= 0x1102L))), 8L, 0x18L)).s6df3, ((VECTOR(uint8_t, 4))(255UL)))))))).zyywzwwxyzzzywzz && ((VECTOR(int16_t, 16))(0x662DL))))).sc8))), ((VECTOR(uint16_t, 2))(6UL))))).yxxxyxyx, ((VECTOR(uint32_t, 8))(0x9979DC11L)))))))).s35))).yyyyyxxy))).lo & ((VECTOR(uint64_t, 4))(0x4440A87F0D2597A6L))))), 1UL, 0xA8375527A75243ABL, 0UL)).s3, p_13)))) ^ 255UL));
                }
                else
                { /* block id: 383 */
                    uint8_t *l_1180 = (void*)0;
                    uint8_t *l_1181 = (void*)0;
                    uint8_t *l_1182 = (void*)0;
                    uint8_t *l_1183[7][4][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                    int32_t *l_1185[1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1185[i] = (void*)0;
                    if (((l_1184 = (safe_div_func_uint64_t_u_u(p_13, 0x215F04FCFE179314L))) > 0xD5L))
                    { /* block id: 385 */
                        l_1145 = l_1185[0];
                    }
                    else
                    { /* block id: 387 */
                        int16_t **l_1186[6][9][4] = {{{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48}},{{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48}},{{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48}},{{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48}},{{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48}},{{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48},{(void*)0,&p_1660->g_48,&p_1660->g_48,&p_1660->g_48}}};
                        int32_t *l_1188 = &l_1177;
                        int i, j, k;
                        l_1188 = l_1188;
                    }
                }
                l_1201 = l_1176;
                l_1205 |= (l_1177 |= (((VECTOR(int16_t, 8))(l_1202.sf97995e9)).s0 != (safe_mul_func_uint16_t_u_u(p_13, (*p_1660->g_48)))));
                l_1177 = ((!(~(safe_lshift_func_int16_t_s_s((*p_1660->g_48), 7)))) , (65528UL || (safe_sub_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(((safe_mul_func_int8_t_s_s(p_13, (((*p_1660->g_48) = (safe_mod_func_uint8_t_u_u((((VECTOR(int64_t, 16))((~((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))((-1L), ((VECTOR(int64_t, 2))(p_1660->g_1216.xx)), 0x56F39BB83CA4CA00L)) != ((VECTOR(int64_t, 8))(p_1660->g_1217.zxyyzwxy)).lo))) == ((VECTOR(int64_t, 16))(p_1660->g_1218.yyzwzzyyzzzzwzyx)).s69ef))).yyyxywxxwwzxzyyy, ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 2))(l_1219.s57)).yyxx))).wwxzyzwzyxzwxyyz))) && ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(0x3939443A0889412FL, 8L)).xyyxxxyy == ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 8))(p_1660->g_1220.s26363346)).even, ((VECTOR(int64_t, 16))(l_1221.s7576364341224437)).sd049, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(l_1222.s14324630)).odd && ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 16))(l_1223.zzwwzxzxwywzxyxz)).s0743, ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(((GROUP_DIVERGE(0, 1) ^ l_1143.y) == (safe_rshift_func_int8_t_s_s((safe_add_func_int64_t_s_s((((*p_1660->g_222) < (0x003920B3L != 1L)) , ((((*l_1232) |= ((((((safe_div_func_uint64_t_u_u((0L && (((*l_1231) = ((*l_1026) = p_13)) ^ p_1660->g_976.y)), (-1L))) >= (*p_1660->g_222)) & p_1660->g_367.x) != 0x7004933C98E72ED9L) & p_1660->g_1153.s4) ^ p_13)) , l_1126) == l_1126)), 0UL)), 1))), ((VECTOR(int64_t, 4))(0x4B91654D89C79DEAL)), ((VECTOR(int64_t, 2))(0x5D348813A8D897ADL)), 0x70D9607D34B8EBFCL)) && ((VECTOR(int64_t, 8))(1L))))).even, ((VECTOR(int64_t, 4))(0x10958C1A6A4C11A1L))))), ((VECTOR(int64_t, 4))(1L)))))))))))))).yxzxwwzx || ((VECTOR(int64_t, 8))(7L))))).s34 || ((VECTOR(int64_t, 2))(7L))))).yxyyxyxx))).s2367752656650706)))))).s8 || l_1233), p_13))) ^ 0xCF79L))) || (*p_1660->g_48)), p_13)), p_13))));
            }
            l_1205 = ((((safe_sub_func_int64_t_s_s(1L, ((((*p_1660->g_48) = ((l_1158 == (*p_1660->g_48)) | (l_1236 == (void*)0))) != (((safe_rshift_func_int8_t_s_s((safe_unary_minus_func_uint64_t_u(((safe_rshift_func_int16_t_s_u((((*p_1660->g_1128) > (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_1660->g_1242.sde)), 0UL, 0x0E4581D8L)).x == (p_1660->g_1148.s6 = (safe_unary_minus_func_int32_t_s(p_13))))) != ((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 4))(0L, 0x41L, 0x4CL, 0x41L))))).yxwyxyzxyyzzyxzy, ((VECTOR(int8_t, 8))(l_1158, 0x26L, 7L, 0x46L, ((VECTOR(int8_t, 2))(l_1244.wz)), 9L, 0x2FL)).s6610007444321021))).s4), (p_13 > GROUP_DIVERGE(1, 1)))) , 4UL))), (*p_1660->g_1128))) != 0xD454L) == (*p_1660->g_1128))) || p_13))) & (-7L)) <= 0x2800DA623950990DL) , p_13);
        }
        return l_1245[7][6];
    }
    if ((p_1660->g_1301 = ((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((!((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(l_1246.se49b)).xwwxywyy >= ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 16))(p_1660->g_1247.xxxyxxyxxyxyxxxy)).hi, ((VECTOR(int8_t, 2))(l_1248.yx)).xyxyyxyx))).s10 && ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))((safe_div_func_uint64_t_u_u((~(*p_1660->g_222)), GROUP_DIVERGE(1, 1))), 5L, ((VECTOR(int8_t, 4))(l_1251.yxxy)), 0x39L, 0x6AL)).even, ((VECTOR(int8_t, 2))(p_1660->g_1252.s1c)).xxxy))).lo))).xyyxyyyx))).lo & ((VECTOR(int8_t, 2))(l_1253.s05)).xxxx))).wxxxyxww, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((safe_div_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((p_1660->g_1247.x = (l_1258[4] || (+(0UL & (l_1300 ^= (safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 2))(p_1660->g_1263.yw)).yyxx, ((VECTOR(int16_t, 8))(l_1264.s8b5f08d7)).even))).x, (((VECTOR(int32_t, 2))(p_1660->g_1265.zz)).lo != p_13))) || (p_1660->g_1217.x = (((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((-10L), (-10L))).yxxx && ((VECTOR(int16_t, 16))(l_1266.xyxyxxxxxxxyxxxx)).s3cf8))).y & ((*p_1660->g_48) = (p_1660->g_1153.s7 < (safe_sub_func_uint8_t_u_u(p_13, p_13))))))), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(0x4A0FL, 7L)).yyxxxyxyyxyyxxyy, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(l_1276.xxyyyxxxyxyyxyyy)).hi, ((VECTOR(int16_t, 8))(l_1277.yxxxxxyy)), ((VECTOR(int16_t, 16))(l_1278.yyyxyyyyyxyxyxyx)).odd))).s65 && ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(1L, ((VECTOR(int16_t, 2))(l_1279.s75)), 1L)).hi, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((safe_div_func_int64_t_s_s((safe_add_func_int16_t_s_s((*p_1660->g_48), ((safe_lshift_func_uint8_t_u_s(p_13, p_1660->g_1085.z)) >= p_13))), 0x2F90BE83E28355ACL)) && 1UL) , 0x6D31L), 0x451DL, ((VECTOR(int16_t, 2))(2L)), (*p_1660->g_48), p_13, 5L, 1L)).odd && ((VECTOR(int16_t, 4))(0x5A23L))))).odd && ((VECTOR(int16_t, 2))(0x3F40L))))).xxyxyyyyyyyxxyyx && ((VECTOR(int16_t, 16))(0x0664L))))).se9))).yxyyxxxx, ((VECTOR(int16_t, 8))(1L))))).hi ^ ((VECTOR(int16_t, 4))(0x1CB6L))))).lo))).yxyyyxyxxxyxxyxx, ((VECTOR(int16_t, 16))((-7L)))))).s90 && ((VECTOR(int16_t, 2))((-1L)))))), 0x2CDBL)).z, 7))))))), 7)), 0x3EL)), ((VECTOR(int8_t, 2))(1L)), 0L)) || ((VECTOR(int8_t, 4))(0x1CL))))).xzwyyzxw))).s47, ((VECTOR(int8_t, 2))((-2L)))))).xxxy && ((VECTOR(int8_t, 4))((-2L)))))).xwzwzzxyxwzwzzzw, ((VECTOR(int8_t, 16))(0x40L))))).s144f))) && ((VECTOR(int8_t, 4))((-3L)))))).y >= p_13) < p_13)))
    { /* block id: 414 */
        uint64_t l_1302 = 18446744073709551609UL;
        int32_t *l_1303 = &p_1660->g_1301;
        uint16_t l_1307 = 0xB3ACL;
        VECTOR(int32_t, 16) l_1320 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x21204141L), 0x21204141L), 0x21204141L, 1L, 0x21204141L, (VECTOR(int32_t, 2))(1L, 0x21204141L), (VECTOR(int32_t, 2))(1L, 0x21204141L), 1L, 0x21204141L, 1L, 0x21204141L);
        uint32_t l_1321 = 4294967292UL;
        VECTOR(int32_t, 16) l_1330 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0C727F2FL), 0x0C727F2FL), 0x0C727F2FL, (-1L), 0x0C727F2FL, (VECTOR(int32_t, 2))((-1L), 0x0C727F2FL), (VECTOR(int32_t, 2))((-1L), 0x0C727F2FL), (-1L), 0x0C727F2FL, (-1L), 0x0C727F2FL);
        uint32_t **l_1413 = (void*)0;
        VECTOR(uint64_t, 8) l_1416 = (VECTOR(uint64_t, 8))(0x30B066A3BBC20F2FL, (VECTOR(uint64_t, 4))(0x30B066A3BBC20F2FL, (VECTOR(uint64_t, 2))(0x30B066A3BBC20F2FL, 0xEA5522993A509AABL), 0xEA5522993A509AABL), 0xEA5522993A509AABL, 0x30B066A3BBC20F2FL, 0xEA5522993A509AABL);
        uint64_t ***l_1453[1];
        VECTOR(int32_t, 4) l_1470 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x662D5076L), 0x662D5076L);
        VECTOR(int32_t, 16) l_1474 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
        VECTOR(int32_t, 8) l_1477 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 3L), 3L), 3L, (-9L), 3L);
        int i;
        for (i = 0; i < 1; i++)
            l_1453[i] = &p_1660->g_917;
lbl_1498:
        l_1302 = 0x5DC0FD7FL;
        l_1303 = (((*p_1660->g_48) &= 0x4137L) , (void*)0);
        if ((0xD2L && (((VECTOR(int16_t, 8))(p_1660->g_1304.zxyyxxxz)).s3 == (p_1660->g_1263.z ^= (safe_mul_func_uint8_t_u_u(l_1307, (((safe_mod_func_uint32_t_u_u((0x468C2A04L >= (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1660->group_1_offset, get_group_id(1), 10), (safe_lshift_func_uint16_t_u_s(((((safe_lshift_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((&l_641 != &l_641), (p_1660->g_1113.s7 = ((*l_1026) |= ((!0x1DL) , FAKE_DIVERGE(p_1660->global_1_offset, get_global_id(1), 10)))))), (*p_1660->g_48))) || p_13) <= (l_1320.sa >= p_1660->g_178)) == p_13), 13))))), p_13)) <= l_1307) || l_1321)))))))
        { /* block id: 421 */
            VECTOR(uint32_t, 4) l_1327 = (VECTOR(uint32_t, 4))(0xDEA3D63CL, (VECTOR(uint32_t, 2))(0xDEA3D63CL, 0x2E42ECE7L), 0x2E42ECE7L);
            int32_t l_1332 = 0x3393C689L;
            int64_t *l_1335 = (void*)0;
            VECTOR(uint16_t, 4) l_1337 = (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 7UL), 7UL);
            VECTOR(uint16_t, 4) l_1345 = (VECTOR(uint16_t, 4))(0x6472L, (VECTOR(uint16_t, 2))(0x6472L, 0UL), 0UL);
            int32_t l_1352 = 0L;
            VECTOR(uint32_t, 2) l_1357 = (VECTOR(uint32_t, 2))(4294967295UL, 0xCDBE0B15L);
            uint8_t l_1358 = 0xA2L;
            uint32_t *l_1394 = &l_1300;
            uint32_t **l_1393 = &l_1394;
            int32_t l_1406[9][3] = {{(-1L),(-6L),(-10L)},{(-1L),(-6L),(-10L)},{(-1L),(-6L),(-10L)},{(-1L),(-6L),(-10L)},{(-1L),(-6L),(-10L)},{(-1L),(-6L),(-10L)},{(-1L),(-6L),(-10L)},{(-1L),(-6L),(-10L)},{(-1L),(-6L),(-10L)}};
            int32_t l_1464[7];
            int32_t *l_1496[8] = {&l_1464[0],(void*)0,&l_1464[0],&l_1464[0],(void*)0,&l_1464[0],&l_1464[0],(void*)0};
            int i, j;
            for (i = 0; i < 7; i++)
                l_1464[i] = 0x5EBEDDFAL;
            if ((((safe_mul_func_int8_t_s_s(((safe_div_func_uint16_t_u_u(((((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 16))(0xB5148998L, 4UL, ((VECTOR(uint32_t, 8))(p_1660->g_1326.zyxxwzyw)), ((VECTOR(uint32_t, 4))(l_1327.zzzy)), 4294967295UL, 0x17EB7100L)).odd, ((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 4))(l_1328.yxyx))))).zywxyxzy))).s0 <= (l_1332 = ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(p_1660->g_1329.sb6)).yyxyyxxyxxxyyxxy, ((VECTOR(int32_t, 16))(l_1330.s6dd4dfe0587ff304)), ((VECTOR(int32_t, 8))(p_1660->g_1331.s37575036)).s5636160576374500))).s5)) | l_1327.z), (((p_1660->g_1265.w || ((0x594E0451L >= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((((void*)0 == &p_1660->g_222) >= (((safe_mod_func_uint16_t_u_u((&p_13 != l_1335), ((((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 16))(p_1660->g_1336.s3e0f1d846bfd478c)).lo, ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 8))(l_1337.ywyxyyyy)).s60, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(0UL, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 8))(0x50CCL, ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(p_1660->g_1342.s51463413)).s25 & ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(l_1345.zz)).xxyxxyxyyyyyxyxx + ((VECTOR(uint16_t, 8))(9UL, (((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(l_1348.xyxy)) + ((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 8))(5UL, 0xB8L, ((VECTOR(uint8_t, 2))(0x02L, 0xE3L)), ((safe_mod_func_uint16_t_u_u(((l_1352 = ((VECTOR(int32_t, 8))(l_1351.yyyxyyyy)).s7) < ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 2))(l_1357.yy)).xyyyxyxyxyyxyxxx, ((VECTOR(uint32_t, 8))(1UL, l_1358, ((VECTOR(uint32_t, 2))(p_1660->g_1359.sa4)), ((*l_1026) |= p_13), 4294967290UL, 4294967293UL, 0xBEE29DD3L)).s1322375207516115))).hi & ((VECTOR(uint32_t, 8))(8UL))))).odd * ((VECTOR(uint32_t, 4))(4294967295UL))))).yxwwxxzy + ((VECTOR(uint32_t, 8))(0xFF9C93E1L))))).s4), l_1345.z)) != 0x3BL), 0xA5L, 0x3EL, 1UL)).s62))).yxyy))).x < 6L), 65531UL, ((VECTOR(uint16_t, 2))(65530UL)), l_1327.x, 0xCC57L, 4UL)).s0226754732121521))).s0c))).xyyy, ((VECTOR(uint16_t, 4))(65527UL))))), ((VECTOR(uint16_t, 2))(0x522EL)), 2UL)).s0733643464324137, ((VECTOR(uint16_t, 16))(7UL))))).s45 >> ((VECTOR(uint16_t, 2))(16))))) & ((VECTOR(uint16_t, 2))(2UL))))), ((VECTOR(uint16_t, 2))(0x1B58L)), p_1660->g_306.z, 65529UL, 0x235AL)).odd + ((VECTOR(uint16_t, 4))(0xDB73L))))).hi, ((VECTOR(uint16_t, 2))(0xD4A3L))))).xyyyyyxy))).s4 == 7L) && p_13))) | GROUP_DIVERGE(0, 1)) >= p_13)) || 0x04FE26AD4E81AC9BL), (-1L), 0L, 3L)), 0x3E545BC0L, 0x1D2E1289L, 5L, 0x2FAF8E8FL)).s4) || p_13)) , p_13) & 0x15E6F22AL))) == (**p_1660->g_917)), 0xB0L)) ^ p_13) != 0x4700309434B1CD57L))
            { /* block id: 425 */
                VECTOR(uint64_t, 4) l_1375 = (VECTOR(uint64_t, 4))(0xF11B1C984CB0245BL, (VECTOR(uint64_t, 2))(0xF11B1C984CB0245BL, 0x40F22B0BFC67BC32L), 0x40F22B0BFC67BC32L);
                uint16_t *l_1383 = (void*)0;
                uint16_t *l_1384 = &p_1660->g_198;
                uint16_t *l_1385[1][6] = {{&p_1660->g_414,(void*)0,&p_1660->g_414,&p_1660->g_414,(void*)0,&p_1660->g_414}};
                int16_t *l_1386 = (void*)0;
                int16_t *l_1387[2];
                int32_t l_1388 = 0x6CC2B187L;
                int32_t l_1398 = 0L;
                VECTOR(uint64_t, 4) l_1415 = (VECTOR(uint64_t, 4))(0x39415BA585A499BAL, (VECTOR(uint64_t, 2))(0x39415BA585A499BAL, 0x2545364A71E65464L), 0x2545364A71E65464L);
                int32_t *l_1442 = (void*)0;
                uint32_t **l_1456 = &l_1026;
                int i, j;
                for (i = 0; i < 2; i++)
                    l_1387[i] = (void*)0;
                l_1388 = (((*p_1660->g_48) = (p_1660->g_245 &= ((safe_sub_func_int32_t_s_s(p_13, ((void*)0 == l_1303))) , ((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s((((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(0x6935F65520AC3CF6L, 0x61BF51532082D302L)).xyxx ^ ((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),int64_t,((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(2L, 1L)).yxyxyyyx && ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(0x759AB416164407BDL, 0x5FD551B1714C0D77L)) ^ ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(8L, 0x7849764110ADAFE0L)).yyxxyxxxyyyyyxyy && ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(1L, (-9L))) == ((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(0x5F8E254E87BFDEF1L, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(0x08FBBA84741D4769L, 0x6B21C9135CE5C71EL)).xxxxyxyyxxxxyxyy >= ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))((safe_unary_minus_func_uint16_t_u((p_1660->g_121.y ^= (0x2BL <= (safe_rshift_func_uint16_t_u_u(p_13, 5)))))), (safe_add_func_int16_t_s_s((safe_add_func_int32_t_s_s((((VECTOR(uint64_t, 8))(l_1375.zwyzxyzz)).s0 > (0L >= ((!((l_1332 ^= (safe_mod_func_int16_t_s_s((safe_unary_minus_func_int8_t_s((safe_rshift_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u(65526UL, p_13)) , ((*l_1384) = l_1375.w)), p_13)))), 0x1433L))) < (*p_1660->g_48))) <= 0UL))), 1L)), 1UL)), 0x350E5A15F7E36699L, 0x1202CFA33FE17AB2L)), 2L, 1L, 1L, 0x4B1DAFBCC477DA50L)).s2412111655704463))).s9a && ((VECTOR(int64_t, 2))((-9L)))))), 1L)).hi && ((VECTOR(int64_t, 2))(0x065A4D748BA2EC07L))))).yyxxyxyyyyxxyxyx, ((VECTOR(int64_t, 16))(1L))))).s98))).xyyxyyxyxxyyxxyx))).hi, ((VECTOR(int64_t, 8))(0x6E27932EDBB361E0L))))).s1, ((VECTOR(int64_t, 4))(0x1D16201D3F1B16C2L)), (-4L), 0x6D52C55F9182E26BL, 0x58CFD38A8C5B5EBAL)).s30, ((VECTOR(int64_t, 2))((-8L)))))).xxxxxxyy, ((VECTOR(int64_t, 8))(0x6BF8CDEA94333FFFL))))).even, ((VECTOR(int64_t, 4))(1L))))).odd, ((VECTOR(int64_t, 2))(0x796AFF2FCA89626BL)), ((VECTOR(int64_t, 2))((-5L)))))), ((VECTOR(int64_t, 4))(0x37498A92ABEECBFDL)), 0x75EBDCEBD2FC5D97L, 0x76AEEC5F20328419L)).s66))).xyyxxxyx))) && ((VECTOR(int64_t, 8))(0x0A39E15165EDFDCEL))))).s74, ((VECTOR(int64_t, 2))(0x78BDCA640FD9C6AFL))))).yyxy, (int64_t)p_13, (int64_t)p_13)))))).hi && ((VECTOR(int64_t, 2))(0x47E55F861CCF7B69L))))).yxyyxxyxxxxxyxxx != ((VECTOR(int64_t, 16))((-7L)))))).s9 <= p_13) == l_1375.y) != l_1375.w), l_1357.x)), 0L)) <= l_1337.y)))) ^ (-1L));
                l_1332 = (l_1352 = l_1375.z);
                for (p_1660->g_136 = 23; (p_1660->g_136 >= 40); p_1660->g_136++)
                { /* block id: 436 */
                    VECTOR(uint64_t, 2) l_1407 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL);
                    uint32_t **l_1410[1];
                    uint32_t ***l_1414 = &l_1413;
                    VECTOR(uint8_t, 8) l_1425 = (VECTOR(uint8_t, 8))(0x8EL, (VECTOR(uint8_t, 4))(0x8EL, (VECTOR(uint8_t, 2))(0x8EL, 0x5FL), 0x5FL), 0x5FL, 0x8EL, 0x5FL);
                    uint64_t ***l_1455 = &p_1660->g_917;
                    int32_t l_1459 = 0x33017EE8L;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1410[i] = (void*)0;
                    for (p_1660->g_84 = (-4); (p_1660->g_84 == (-23)); p_1660->g_84 = safe_sub_func_uint32_t_u_u(p_1660->g_84, 6))
                    { /* block id: 439 */
                        uint32_t ***l_1411 = (void*)0;
                        uint32_t ***l_1412 = &l_1410[0];
                        VECTOR(uint8_t, 4) l_1432 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xADL), 0xADL);
                        int i;
                        l_1330.s1 = ((((void*)0 != l_1393) < ((p_1660->g_112.y = 0x4FL) >= (((*p_1660->g_48) = ((VECTOR(int16_t, 16))(l_1395.yyyyxxyxyyxyyyyx)).sd) >= ((FAKE_DIVERGE(p_1660->local_1_offset, get_local_id(1), 10) > ((safe_rshift_func_uint8_t_u_s(((++p_1660->g_1399) && (0UL > p_1660->g_332.sd)), 6)) <= ((p_13 & (safe_add_func_uint64_t_u_u(p_13, p_13))) | (safe_mod_func_uint16_t_u_u((18446744073709551611UL < p_13), p_13))))) | l_1406[1][0])))) , 0x2E158017L);
                        p_1660->g_173.s2 ^= (p_13 != ((((((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 4))(l_1407.xxxx)).zyxyyxyy, ((VECTOR(uint64_t, 8))(18446744073709551613UL, ((void*)0 != &p_1660->g_84), (safe_mul_func_uint16_t_u_u((((*l_1412) = l_1410[0]) != l_1413), ((void*)0 != l_1414))), 9UL, ((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 8))(l_1415.yyxzzwzw)).hi, ((VECTOR(uint64_t, 8))(l_1416.s64630747)).odd))).odd, ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(0x345858E330FEE018L, 0UL)).xxxyxyyyyyxyyyyx + ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(0x7634775EA1D1A9E1L, 5UL)).yyyxxxyyxxyyxyyx ^ ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))((((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(0UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(l_1425.s45257057)).s60 + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_1428.s36)), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(p_1660->g_1431.s17)).yxxy * ((VECTOR(uint8_t, 16))(0UL, 0xC3L, 0UL, ((VECTOR(uint8_t, 2))(l_1432.zx)), 0x2BL, ((safe_mod_func_int8_t_s_s((p_1660->g_1217.x || (safe_rshift_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(p_13, l_1432.w)), (*p_1660->g_48)))), p_1660->g_369.y)) && (-1L)), ((VECTOR(uint8_t, 4))(0UL)), p_13, ((VECTOR(uint8_t, 4))(0x8DL)))).sd517))), 255UL, 0x24L))))).s3755250541375434 + ((VECTOR(uint8_t, 16))(253UL))))).s3f))), 0xBAL, 255UL)), 246UL, 0xA9L, 0xDBL)) + ((VECTOR(uint8_t, 8))(0xC2L))))), ((VECTOR(uint8_t, 8))(1UL))))), ((VECTOR(uint8_t, 8))(0xA1L))))).s4 , 0UL), ((VECTOR(uint64_t, 4))(18446744073709551607UL)), 6UL, 0x539A074675C7D8F0L, 0xB0C257E334137D9EL)).even, ((VECTOR(uint64_t, 4))(18446744073709551615UL)), ((VECTOR(uint64_t, 4))(1UL))))).xzxxxxywyzwxzzyy))).s33 ^ ((VECTOR(uint64_t, 2))(18446744073709551615UL))))) + ((VECTOR(uint64_t, 2))(0xD5CB0D7243E133C0L))))).yyyxyyxyxyyxxyxx))).sed06 ^ ((VECTOR(uint64_t, 4))(0xE8554855443D42CFL)))))))).yxxwxwxw | ((VECTOR(uint64_t, 8))(0xA054FCE23AB15A95L))))).even, ((VECTOR(uint64_t, 4))(0x0E4815F2234569D6L)), ((VECTOR(uint64_t, 4))(0xFD3BDE6CF935854EL))))).hi))), 0UL, 18446744073709551611UL)), ((VECTOR(uint64_t, 8))(0x87AB222DE21CCB29L))))).s6 ^ p_1660->g_553) ^ FAKE_DIVERGE(p_1660->local_1_offset, get_local_id(1), 10)) , (void*)0) != l_1439[2][0][8]));
                    }
                    for (p_1660->g_335 = 23; (p_1660->g_335 == 14); p_1660->g_335--)
                    { /* block id: 449 */
                        int32_t *l_1443[1];
                        uint64_t ****l_1454[5][1][1];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_1443[i] = &l_1388;
                        for (i = 0; i < 5; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_1454[i][j][k] = &l_1453[0];
                            }
                        }
                        l_1442 = (void*)0;
                        l_1443[0] = l_1443[0];
                        if (p_13)
                            break;
                        l_1459 = (safe_unary_minus_func_int64_t_s((((((safe_lshift_func_uint16_t_u_s((((((p_1660->g_1218.y = 0x4033BAA0F86D1D71L) | ((VECTOR(uint64_t, 4))(0x51049EFB95A53616L, 0xF39E660E8081FE99L, 18446744073709551606UL, 0x8F25ED96B7AEB5BAL)).w) != (p_1660->g_736[4] ^= ((safe_rshift_func_uint8_t_u_u((((((-1L) <= (l_1327.z >= ((VECTOR(uint32_t, 2))(4294967290UL, 1UL)).even)) , p_13) > (((((&l_1410[0] != (void*)0) > (safe_mod_func_int8_t_s_s((((4L ^ ((l_1455 = l_1453[0]) != &p_1660->g_917)) ^ p_13) >= p_13), 0x05L))) >= 0xCE5CDB60L) , l_1456) == l_1456)) == 0x7154C105L), l_1407.x)) , FAKE_DIVERGE(p_1660->local_1_offset, get_local_id(1), 10)))) > p_13) , p_13), (*p_1660->g_48))) , p_13) >= p_13) , l_1457) != (void*)0)));
                    }
                }
            }
            else
            { /* block id: 459 */
                int8_t l_1460 = 0x3CL;
                int32_t l_1461 = 0x135C8AD4L;
                int32_t l_1462 = 0x539CC320L;
                int32_t l_1463 = 0x7B88C5A3L;
                int32_t l_1465 = (-1L);
                int32_t l_1466 = 0x07772598L;
                uint64_t l_1467 = 0UL;
                VECTOR(int32_t, 16) l_1472 = (VECTOR(int32_t, 16))(0x090ED2D2L, (VECTOR(int32_t, 4))(0x090ED2D2L, (VECTOR(int32_t, 2))(0x090ED2D2L, 0x19CB3E49L), 0x19CB3E49L), 0x19CB3E49L, 0x090ED2D2L, 0x19CB3E49L, (VECTOR(int32_t, 2))(0x090ED2D2L, 0x19CB3E49L), (VECTOR(int32_t, 2))(0x090ED2D2L, 0x19CB3E49L), 0x090ED2D2L, 0x19CB3E49L, 0x090ED2D2L, 0x19CB3E49L);
                int32_t *l_1497 = (void*)0;
                int i;
lbl_1493:
                --l_1467;
                if (((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(l_1470.ywzy)).wwzyzyyyyzyxzwwz, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(p_1660->g_1471.xzzxyzyz)).hi, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_1472.s31)).xyyx && ((VECTOR(int32_t, 4))(p_1660->g_1473.yzwy))))).lo && ((VECTOR(int32_t, 8))(l_1474.sbde604d4)).s53))).xyyx))).even && ((VECTOR(int32_t, 16))((!((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(l_1475.s98b60418a766f846)).sa37e, ((VECTOR(int32_t, 4))(l_1476.xxxx)), ((VECTOR(int32_t, 2))(l_1477.s62)).xxyx))).odd))).yxyxyxxyxyyxxxyy))).se3))).xyxyxxxyyxyyyyyx && ((VECTOR(int32_t, 16))(l_1478.s9bfd9cd782d3ac10)))))))).sd)
                { /* block id: 461 */
                    int64_t l_1479 = 1L;
                    int32_t l_1480 = 0x5102F5CDL;
                    int32_t l_1481 = 9L;
                    int32_t l_1482 = (-6L);
                    int32_t l_1483 = 4L;
                    int32_t l_1484 = 3L;
                    int32_t l_1485 = 5L;
                    uint32_t **l_1489 = &l_1394;
                    --p_1660->g_1486;
                    l_1480 = (l_1489 == p_1660->g_1490[3][0]);
                }
                else
                { /* block id: 464 */
                    int32_t *l_1492[5];
                    int32_t *l_1495 = &p_1660->g_1301;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1492[i] = (void*)0;
                    l_1492[2] = &l_1352;
                    if (p_1660->g_852)
                        goto lbl_1494;
lbl_1494:
                    if (l_1321)
                        goto lbl_1493;
                    l_1496[6] = l_1495;
                    l_1497 = l_1492[3];
                }
                if (l_1300)
                    goto lbl_1498;
                if (l_1300)
                    goto lbl_1499;
            }
        }
        else
        { /* block id: 474 */
            uint8_t l_1500 = 255UL;
            l_1500 = p_13;
        }
    }
    else
    { /* block id: 477 */
        uint32_t l_1501 = 4294967295UL;
        VECTOR(int32_t, 4) l_1504 = (VECTOR(int32_t, 4))(0x7AB81002L, (VECTOR(int32_t, 2))(0x7AB81002L, 0x64FCBDFAL), 0x64FCBDFAL);
        int32_t *l_1532 = &p_1660->g_1301;
        int32_t *l_1534 = (void*)0;
        int i;
        --l_1501;
        l_1504.x = p_13;
        for (l_1501 = 0; (l_1501 != 33); ++l_1501)
        { /* block id: 482 */
            int32_t l_1517 = 1L;
            int32_t l_1523 = 0x53A0897DL;
            if ((l_1517 = (GROUP_DIVERGE(1, 1) == (safe_unary_minus_func_uint32_t_u((((+(((VECTOR(int64_t, 2))((!((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_1660->g_1508.s30)), 1L, 0L)).lo))).hi != ((-10L) ^ ((safe_sub_func_uint32_t_u_u(p_13, 0x41E22699L)) >= (((l_1504.w = 1L) || (0L > (((((safe_sub_func_uint64_t_u_u((p_13 , (--(**p_1660->g_917))), ((safe_div_func_int32_t_s_s((p_13 >= ((-9L) | (FAKE_DIVERGE(p_1660->local_2_offset, get_local_id(2), 10) & p_1660->g_224))), p_13)) || 2L))) | p_13) , 0L) ^ p_13) >= l_1504.y))) ^ p_13))))) , l_1517) != 0x3D96L))))))
            { /* block id: 486 */
                int32_t *l_1518 = &p_1660->g_21[2][1];
                return l_1518;
            }
            else
            { /* block id: 488 */
                uint16_t *l_1519 = &l_1025;
                int32_t *l_1533 = (void*)0;
                l_1523 ^= (((*l_1519) = 0UL) >= ((FAKE_DIVERGE(p_1660->local_1_offset, get_local_id(1), 10) , GROUP_DIVERGE(2, 1)) ^ ((((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 4))((safe_lshift_func_uint16_t_u_s(0x154EL, ((VECTOR(int16_t, 8))(((246UL <= (((l_1504.w = ((**p_1660->g_917) == ((((void*)0 != l_1275[2]) , &l_1519) != &l_1519))) , ((VECTOR(int8_t, 16))(p_1660->g_1522.xxxxxxyxyxyxyyxy)).sb) != p_13)) || p_1660->g_409[0][1]), (*p_1660->g_48), ((VECTOR(int16_t, 4))(1L)), 0x177DL, 0L)).s6)), p_1660->g_1331.s1, 0x54L, (-1L))).xzwzwwzw, ((VECTOR(uint8_t, 8))(4UL))))).s2 && 6UL) > l_1517)));
                for (p_1660->g_1048 = 3; (p_1660->g_1048 != (-6)); --p_1660->g_1048)
                { /* block id: 494 */
                    uint8_t l_1528 = 7UL;
                    l_1528 |= (safe_rshift_func_int8_t_s_s(l_1523, 7));
                    for (l_1523 = (-2); (l_1523 > (-12)); l_1523 = safe_sub_func_uint64_t_u_u(l_1523, 9))
                    { /* block id: 498 */
                        int32_t *l_1531 = (void*)0;
                        return l_1531;
                    }
                }
                l_1533 = l_1532;
            }
        }
    }
    return l_1535;
}


/* ------------------------------------------ */
/* 
 * reads : p_1660->g_48 p_1660->g_49 p_1660->g_84 p_1660->g_577 p_1660->g_21 p_1660->g_20 p_1660->g_716 p_1660->g_222 p_1660->g_136 p_1660->g_290 p_1660->g_101 p_1660->g_108 p_1660->g_198 p_1660->g_173 p_1660->g_224 p_1660->g_170 p_1660->g_149 p_1660->g_190 p_1660->g_112 p_1660->g_106 p_1660->g_414 p_1660->g_416 p_1660->g_782 p_1660->g_309 p_1660->g_121 p_1660->g_245 p_1660->g_625 p_1660->g_369 p_1660->g_2 p_1660->g_99 p_1660->g_844 p_1660->g_285 p_1660->g_306 p_1660->g_474 p_1660->g_852 p_1660->g_855 p_1660->g_153 p_1660->g_736 p_1660->g_867 p_1660->g_871 p_1660->g_880 p_1660->g_887 p_1660->g_891 p_1660->g_901 p_1660->g_130 p_1660->g_910 p_1660->g_916 p_1660->g_935 p_1660->g_109 p_1660->g_1011
 * writes: p_1660->g_49 p_1660->g_84 p_1660->g_21 p_1660->g_136 p_1660->g_285 p_1660->g_101 p_1660->g_736 p_1660->g_198 p_1660->g_20 p_1660->g_224 p_1660->g_190 p_1660->g_99 p_1660->g_178 p_1660->g_416 p_1660->g_2 p_1660->g_121 p_1660->g_852 p_1660->g_173 p_1660->g_131 p_1660->g_911 p_1660->g_917 p_1660->g_109 p_1660->g_108 p_1660->g_1011 p_1660->g_584
 */
int32_t * func_14(int32_t * p_15, int32_t * p_16, uint32_t  p_17, uint16_t  p_18, uint32_t  p_19, struct S0 * p_1660)
{ /* block id: 214 */
    uint32_t *l_658 = &p_1660->g_2;
    uint32_t *l_660[10][1] = {{&p_1660->g_224},{&p_1660->g_224},{&p_1660->g_224},{&p_1660->g_224},{&p_1660->g_224},{&p_1660->g_224},{&p_1660->g_224},{&p_1660->g_224},{&p_1660->g_224},{&p_1660->g_224}};
    uint32_t **l_659 = &l_660[0][0];
    int32_t l_672 = 0x302F048AL;
    int32_t l_683 = 0x6DBFBFD1L;
    int32_t l_684[5][8] = {{0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L)},{0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L)},{0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L)},{0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L)},{0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L),0x659CC239L,0x659CC239L,(-1L)}};
    VECTOR(uint8_t, 8) l_707 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 5UL), 5UL), 5UL, 1UL, 5UL);
    VECTOR(uint8_t, 16) l_711 = (VECTOR(uint8_t, 16))(0xC3L, (VECTOR(uint8_t, 4))(0xC3L, (VECTOR(uint8_t, 2))(0xC3L, 6UL), 6UL), 6UL, 0xC3L, 6UL, (VECTOR(uint8_t, 2))(0xC3L, 6UL), (VECTOR(uint8_t, 2))(0xC3L, 6UL), 0xC3L, 6UL, 0xC3L, 6UL);
    uint8_t l_760 = 0x8AL;
    VECTOR(int16_t, 16) l_862 = (VECTOR(int16_t, 16))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 0x3E93L), 0x3E93L), 0x3E93L, 3L, 0x3E93L, (VECTOR(int16_t, 2))(3L, 0x3E93L), (VECTOR(int16_t, 2))(3L, 0x3E93L), 3L, 0x3E93L, 3L, 0x3E93L);
    int64_t *l_863 = &p_1660->g_335;
    VECTOR(uint64_t, 2) l_881 = (VECTOR(uint64_t, 2))(0xFA8E40F06A277A39L, 0xBDCA4E5C48BD32B6L);
    uint64_t ***l_964 = &p_1660->g_917;
    uint32_t *l_975 = &p_1660->g_901[2];
    int32_t l_982 = 0x384B9D13L;
    int32_t *l_985 = &p_1660->g_21[0][3];
    uint16_t *l_1008 = (void*)0;
    uint16_t **l_1007 = &l_1008;
    int32_t **l_1012 = (void*)0;
    int32_t **l_1016[6] = {&p_1660->g_912,&p_1660->g_912,&p_1660->g_912,&p_1660->g_912,&p_1660->g_912,&p_1660->g_912};
    int i, j;
    if ((l_658 != ((*l_659) = &p_1660->g_2)))
    { /* block id: 216 */
        uint32_t l_671 = 0x8A75A812L;
        uint16_t *l_673[4][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t l_674 = 0x31E8D3CFL;
        int32_t l_675 = 0L;
        int32_t *l_682[3];
        VECTOR(int64_t, 4) l_697 = (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), (-1L)), (-1L));
        VECTOR(uint8_t, 16) l_708 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL, 255UL, 255UL, 255UL);
        VECTOR(uint8_t, 2) l_709 = (VECTOR(uint8_t, 2))(0x85L, 255UL);
        VECTOR(uint8_t, 8) l_710 = (VECTOR(uint8_t, 8))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 0xF0L), 0xF0L), 0xF0L, 8UL, 0xF0L);
        uint32_t l_730 = 0x4EC2C44AL;
        VECTOR(int8_t, 2) l_756 = (VECTOR(int8_t, 2))(0x06L, 0x55L);
        VECTOR(uint32_t, 8) l_794 = (VECTOR(uint32_t, 8))(0x5762CAFDL, (VECTOR(uint32_t, 4))(0x5762CAFDL, (VECTOR(uint32_t, 2))(0x5762CAFDL, 4294967287UL), 4294967287UL), 4294967287UL, 0x5762CAFDL, 4294967287UL);
        VECTOR(int16_t, 16) l_872 = (VECTOR(int16_t, 16))(0x4832L, (VECTOR(int16_t, 4))(0x4832L, (VECTOR(int16_t, 2))(0x4832L, 0x0609L), 0x0609L), 0x0609L, 0x4832L, 0x0609L, (VECTOR(int16_t, 2))(0x4832L, 0x0609L), (VECTOR(int16_t, 2))(0x4832L, 0x0609L), 0x4832L, 0x0609L, 0x4832L, 0x0609L);
        int32_t l_904 = 0x5F412F14L;
        int32_t **l_909 = (void*)0;
        int32_t ***l_966 = &p_1660->g_911;
        int32_t ****l_965 = &l_966;
        int i, j;
        for (i = 0; i < 3; i++)
            l_682[i] = &p_1660->g_21[2][0];
        if (((safe_mul_func_uint16_t_u_u((((VECTOR(uint32_t, 2))(0xE635AA55L, 9UL)).lo , (l_674 &= (0x32031EBEL <= ((0UL ^ (safe_rshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((((&p_1660->g_190[0][1] != (void*)0) & (((*p_1660->g_48) ^= ((void*)0 == &l_658)) || ((*p_1660->g_48) = (((((safe_div_func_uint16_t_u_u(65535UL, l_671)) < (((VECTOR(int64_t, 16))(0x3100F3828A98EF45L, p_19, p_19, 0x2F27C260A58C61B9L, ((VECTOR(int64_t, 8))(0L)), 0L, (-3L), 0x4636E7D905045D84L, (-1L))).s0 == l_671)) , l_672) , 0x406419B3L) , l_671)))) == 0x1AC0L), p_18)), 15))) & p_17)))), l_675)) , l_671))
        { /* block id: 220 */
            uint16_t l_685 = 1UL;
            int32_t l_688 = (-2L);
            int32_t l_689 = 0x6C92C1C4L;
            VECTOR(int32_t, 2) l_690 = (VECTOR(int32_t, 2))((-6L), 1L);
            int64_t l_691 = 0x6BCC395AA9C6083EL;
            uint16_t l_692 = 65535UL;
            int16_t l_702 = 0x141DL;
            int64_t *l_727 = &l_691;
            uint64_t *l_731 = (void*)0;
            uint64_t *l_732 = (void*)0;
            uint64_t *l_733 = (void*)0;
            uint64_t *l_734[5][5][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int64_t l_735 = (-3L);
            int32_t l_766 = 0x4D775452L;
            uint32_t l_822 = 0x8C6C6721L;
            VECTOR(int32_t, 2) l_840 = (VECTOR(int32_t, 2))(0x5037933BL, (-9L));
            uint32_t l_849 = 2UL;
            VECTOR(int16_t, 2) l_870 = (VECTOR(int16_t, 2))((-3L), 0x59B4L);
            VECTOR(uint64_t, 16) l_882 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xC44FC77170961206L), 0xC44FC77170961206L), 0xC44FC77170961206L, 18446744073709551615UL, 0xC44FC77170961206L, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xC44FC77170961206L), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xC44FC77170961206L), 18446744073709551615UL, 0xC44FC77170961206L, 18446744073709551615UL, 0xC44FC77170961206L);
            VECTOR(uint64_t, 16) l_890 = (VECTOR(uint64_t, 16))(0x1EA71D9C55040C76L, (VECTOR(uint64_t, 4))(0x1EA71D9C55040C76L, (VECTOR(uint64_t, 2))(0x1EA71D9C55040C76L, 0x09DA48ECEE48409FL), 0x09DA48ECEE48409FL), 0x09DA48ECEE48409FL, 0x1EA71D9C55040C76L, 0x09DA48ECEE48409FL, (VECTOR(uint64_t, 2))(0x1EA71D9C55040C76L, 0x09DA48ECEE48409FL), (VECTOR(uint64_t, 2))(0x1EA71D9C55040C76L, 0x09DA48ECEE48409FL), 0x1EA71D9C55040C76L, 0x09DA48ECEE48409FL, 0x1EA71D9C55040C76L, 0x09DA48ECEE48409FL);
            uint32_t l_906 = 4294967295UL;
            VECTOR(int32_t, 4) l_927 = (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x3EDC2135L), 0x3EDC2135L);
            uint32_t *l_981[2];
            uint32_t **l_980 = &l_981[1];
            uint32_t ***l_979[10] = {&l_980,&l_980,&l_980,&l_980,&l_980,&l_980,&l_980,&l_980,&l_980,&l_980};
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_981[i] = (void*)0;
            for (p_1660->g_84 = (-1); (p_1660->g_84 >= (-19)); p_1660->g_84 = safe_sub_func_int8_t_s_s(p_1660->g_84, 9))
            { /* block id: 223 */
                uint8_t **l_680 = &p_1660->g_190[0][1];
                int32_t l_681 = 0x18DC8955L;
                for (l_675 = (-9); (l_675 >= (-13)); l_675 = safe_sub_func_uint64_t_u_u(l_675, 3))
                { /* block id: 226 */
                    (*p_15) |= (p_1660->g_577.s3 ^ (l_680 != &p_1660->g_190[1][1]));
                }
                (*p_1660->g_20) |= l_681;
                return l_682[0];
            }
            --l_685;
            ++l_692;
            if ((safe_add_func_uint8_t_u_u(((((VECTOR(int64_t, 16))(l_697.xyxwyzwwxxzyywww)).sa | ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))((p_1660->g_736[1] = (safe_mod_func_uint32_t_u_u((l_702 >= ((p_19 | p_1660->g_21[3][4]) >= ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),VECTOR(uint8_t, 16),((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(5UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 4))(l_707.s5263)).odd, (uint8_t)0xA6L))).yyyyyxyxxyxyyxyx & ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(l_708.s1dab49401e0be68c)), ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(l_709.xxyyxyyy)) | ((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 4))(l_710.s2106)).odd, ((VECTOR(uint8_t, 8))(l_711.s3a6d85af)).s65))).xxxyyyyx))).s6427373055033212)))))).s4f))), 0xA4L, 0xDAL)), 7UL, (((safe_mod_func_int8_t_s_s((((safe_div_func_int32_t_s_s(((p_1660->g_716 == (l_690.y > (safe_add_func_uint64_t_u_u((--(*p_1660->g_222)), (GROUP_DIVERGE(2, 1) == 0x2CF06AD6L))))) ^ ((p_1660->g_101.x = (safe_mul_func_int8_t_s_s(((safe_sub_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(((*l_727) = l_685), ((p_1660->g_285.sc = ((safe_add_func_uint64_t_u_u(((FAKE_DIVERGE(p_1660->global_2_offset, get_global_id(2), 10) , 0x5294F35F7C14DE51L) , p_18), l_730)) <= (*p_1660->g_48))) | p_17))), GROUP_DIVERGE(2, 1))) | p_1660->g_290.s8), p_1660->g_101.w))) && (*p_15))), (*p_15))) >= l_683) == l_735), p_1660->g_108.sc)) >= l_689) > FAKE_DIVERGE(p_1660->global_2_offset, get_global_id(2), 10)), ((VECTOR(uint8_t, 4))(0xCFL)), 0x86L, 0xFCL, 0xEBL, 1UL, 249UL)).odd * ((VECTOR(uint8_t, 8))(1UL))))).s7636337512646665, ((VECTOR(uint8_t, 16))(0x38L)), ((VECTOR(uint8_t, 16))(0x28L))))).s9600, ((VECTOR(uint8_t, 4))(0x77L))))), ((VECTOR(uint8_t, 2))(0xCEL)), 0x55L, 255UL)).s6200456614563367 + ((VECTOR(uint8_t, 16))(0UL))))).s8)), GROUP_DIVERGE(2, 1)))), 0x65E717A73EE00208L, 0UL, ((VECTOR(uint64_t, 2))(0x939B1BDA85571097L)), 0UL, 0x065CABF1454C9012L, 5UL)).even + ((VECTOR(uint64_t, 4))(3UL))))).w) <= p_18), p_19)))
            { /* block id: 239 */
                uint32_t l_767 = 4294967292UL;
                VECTOR(uint32_t, 2) l_790 = (VECTOR(uint32_t, 2))(4294967293UL, 0x009B0BB0L);
                int32_t **l_805[4][3] = {{&p_1660->g_20,&p_1660->g_20,&p_1660->g_20},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_20},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_20},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_20}};
                uint32_t l_809 = 0xBF83F2C6L;
                uint16_t *l_825[3];
                VECTOR(uint64_t, 8) l_841 = (VECTOR(uint64_t, 8))(0x021EF946DD85EFFCL, (VECTOR(uint64_t, 4))(0x021EF946DD85EFFCL, (VECTOR(uint64_t, 2))(0x021EF946DD85EFFCL, 1UL), 1UL), 1UL, 0x021EF946DD85EFFCL, 1UL);
                int32_t ***l_924 = &p_1660->g_911;
                int64_t l_931 = 0x35FEE2A32AAD1820L;
                int i, j;
                for (i = 0; i < 3; i++)
                    l_825[i] = &p_1660->g_414;
                for (p_1660->g_198 = 0; (p_1660->g_198 != 6); p_1660->g_198 = safe_add_func_uint16_t_u_u(p_1660->g_198, 8))
                { /* block id: 242 */
                    VECTOR(uint8_t, 4) l_750 = (VECTOR(uint8_t, 4))(0x7CL, (VECTOR(uint8_t, 2))(0x7CL, 9UL), 9UL);
                    int32_t *l_763 = &p_1660->g_21[1][0];
                    VECTOR(int32_t, 2) l_775 = (VECTOR(int32_t, 2))(0L, (-1L));
                    VECTOR(int32_t, 16) l_783 = (VECTOR(int32_t, 16))(0x3D75E1D5L, (VECTOR(int32_t, 4))(0x3D75E1D5L, (VECTOR(int32_t, 2))(0x3D75E1D5L, 0x6C040BBBL), 0x6C040BBBL), 0x6C040BBBL, 0x3D75E1D5L, 0x6C040BBBL, (VECTOR(int32_t, 2))(0x3D75E1D5L, 0x6C040BBBL), (VECTOR(int32_t, 2))(0x3D75E1D5L, 0x6C040BBBL), 0x3D75E1D5L, 0x6C040BBBL, 0x3D75E1D5L, 0x6C040BBBL);
                    VECTOR(uint32_t, 16) l_793 = (VECTOR(uint32_t, 16))(0x8BB1BADFL, (VECTOR(uint32_t, 4))(0x8BB1BADFL, (VECTOR(uint32_t, 2))(0x8BB1BADFL, 0xFF86598AL), 0xFF86598AL), 0xFF86598AL, 0x8BB1BADFL, 0xFF86598AL, (VECTOR(uint32_t, 2))(0x8BB1BADFL, 0xFF86598AL), (VECTOR(uint32_t, 2))(0x8BB1BADFL, 0xFF86598AL), 0x8BB1BADFL, 0xFF86598AL, 0x8BB1BADFL, 0xFF86598AL);
                    VECTOR(uint32_t, 8) l_795 = (VECTOR(uint32_t, 8))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 4294967288UL), 4294967288UL), 4294967288UL, 7UL, 4294967288UL);
                    VECTOR(int64_t, 4) l_804 = (VECTOR(int64_t, 4))(0x54ECC6EBE878ECFBL, (VECTOR(int64_t, 2))(0x54ECC6EBE878ECFBL, 1L), 1L);
                    int i;
                    for (l_691 = (-4); (l_691 == 24); l_691++)
                    { /* block id: 245 */
                        int32_t **l_758 = &l_682[1];
                        int32_t ***l_759 = &l_758;
                        int32_t **l_761 = (void*)0;
                        int32_t **l_762 = &p_1660->g_20;
                        int32_t l_764 = 0x4953F6F2L;
                        int16_t l_765[7][4] = {{0x0B42L,0L,0x0B42L,0x0B42L},{0x0B42L,0L,0x0B42L,0x0B42L},{0x0B42L,0L,0x0B42L,0x0B42L},{0x0B42L,0L,0x0B42L,0x0B42L},{0x0B42L,0L,0x0B42L,0x0B42L},{0x0B42L,0L,0x0B42L,0x0B42L},{0x0B42L,0L,0x0B42L,0x0B42L}};
                        VECTOR(int64_t, 4) l_774 = (VECTOR(int64_t, 4))(0x7707237BB35DDE3BL, (VECTOR(int64_t, 2))(0x7707237BB35DDE3BL, 0x08B8B017A6BBBA47L), 0x08B8B017A6BBBA47L);
                        int32_t *l_784 = (void*)0;
                        int32_t *l_785 = (void*)0;
                        int32_t *l_786[9][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        VECTOR(int32_t, 8) l_787 = (VECTOR(int32_t, 8))(0x50E8E3EEL, (VECTOR(int32_t, 4))(0x50E8E3EEL, (VECTOR(int32_t, 2))(0x50E8E3EEL, (-1L)), (-1L)), (-1L), 0x50E8E3EEL, (-1L));
                        int8_t *l_808[1];
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_808[i] = (void*)0;
                        l_763 = func_40(((*l_762) = ((safe_unary_minus_func_uint32_t_u((((safe_lshift_func_int8_t_s_s(0x1EL, (!(-8L)))) == (safe_rshift_func_uint16_t_u_u(0x2645L, (p_18 = p_1660->g_173.s1)))) > (((safe_mod_func_int32_t_s_s((((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_750.zy)).yxxyyyyy << ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(abs(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(0x21L, l_684[0][4], ((VECTOR(int8_t, 8))(p_1660->g_753.wxwyxzzx)), p_17, (~(((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(l_756.xyxxyxxxxyxyyyxy)).s0, p_19)) & (safe_unary_minus_func_uint32_t_u(((**l_659) |= ((((*l_759) = l_758) != &p_16) >= p_17))))) | l_760)), 0L, (-1L), (-1L), 2L)) && ((VECTOR(int8_t, 16))((-10L)))))).even))) + ((VECTOR(uint8_t, 8))(0xD0L))))), (uint8_t)l_702)))))).s60, ((VECTOR(uint8_t, 2))(0x13L)), ((VECTOR(uint8_t, 2))(0xE5L))))).odd > l_692), p_19)) == 0L) >= 0x5D2EL)))) , &l_683)), &p_1660->g_84, p_17, p_1660);
                        l_767--;
                        (*p_1660->g_20) ^= ((+((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 2))(0x561583B92D60E110L, 0x0DE1D7D7C1829DD9L)), ((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 2))(0x72001A7F1A6C8F32L, 0x15A432C8F280DB5DL)).xyyx, (int64_t)((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_774.xzyx)), 1L, (-1L), 5L, (-1L))).s34, ((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 4))(l_775.xyyx)).yzzyzyzx, ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 2))(0x6B27L, 0xBBC1L)), ((VECTOR(uint16_t, 4))(p_1660->g_782.s6713)).even))) + ((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 2))(abs(((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 8))(abs(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_783.sf6c6)).yxzzwxyx && ((VECTOR(int32_t, 4))((l_684[4][1] ^= (!p_1660->g_309.y)), ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(l_787.s70)), ((VECTOR(int32_t, 2))((-1L), 0x0975AD6EL))))), 1L)).zyyzyzyy))).s17 && ((VECTOR(int32_t, 2))(1L, 0x04B60AFCL))))).yyxyxxxy))), ((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(3UL, 1UL)), p_19, ((VECTOR(uint32_t, 8))(l_790.xxyyxyxy)), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(0xBE157D87L, 0UL)).yyyx + ((VECTOR(uint32_t, 16))(l_793.sa67588ce7476cd79)).s3e8f))), 0UL)).odd - ((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 8))(l_794.s64416400)), ((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 8))(l_795.s22206307)), ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((safe_add_func_int64_t_s_s(p_17, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(0x2CEA011865EF5A42L, 18446744073709551609UL)).yxxxyxyy & ((VECTOR(uint64_t, 8))((((safe_rshift_func_uint16_t_u_s((((safe_mod_func_uint64_t_u_u((((VECTOR(int64_t, 16))(l_804.xyxxwwywxzwwzyyx)).sb , ((l_805[1][2] != ((*l_759) = (void*)0)) , ((*p_1660->g_222) = (((safe_mod_func_int8_t_s_s((0x4D09CB3FL & ((*p_15) = ((l_672 |= (((*l_658) = p_1660->g_121.y) >= ((l_783.s1 != 0xC1A541BBL) != 3UL))) ^ p_1660->g_245))), p_18)) , (*p_15)) | p_1660->g_625.x)))), l_809)) <= p_19) , 6UL), p_19)) , 0xE250L) ^ p_1660->g_369.y), (*p_1660->g_222), ((VECTOR(uint64_t, 4))(0xA2974E94775EBC43L)), 0x0FFAB700025D443DL, 0x138995CDC4FF27C7L))))), ((VECTOR(uint64_t, 8))(18446744073709551611UL)))).s9)), 5UL, 1UL, ((VECTOR(uint32_t, 2))(4294967295UL)), ((VECTOR(uint32_t, 2))(0xA978ED6DL)), 0x7F1872A4L)).lo + ((VECTOR(uint32_t, 4))(0x95E44808L))))), ((VECTOR(uint32_t, 4))(1UL))))).zyyywyyx, ((VECTOR(uint32_t, 8))(0xDAF929E6L)), ((VECTOR(uint32_t, 8))(0x30DF5767L))))) | ((VECTOR(uint32_t, 8))(4294967291UL)))))))))))))).lo))).xyxxyyxw, ((VECTOR(uint32_t, 8))(5UL))))).s05))), ((VECTOR(uint32_t, 2))(9UL)))))))), ((VECTOR(uint32_t, 2))(0UL))))).yxxyyyyxxyyxxxxy - ((VECTOR(uint32_t, 16))(1UL))))).hi + ((VECTOR(uint32_t, 8))(1UL)))))))).s76, ((VECTOR(int64_t, 2))((-2L)))))).odd)))))).yxwwwzzw >> ((VECTOR(uint64_t, 8))(18446744073709551615UL))))).s23, ((VECTOR(uint64_t, 2))(18446744073709551615UL))))), 0x97FADE179D24514BL, 18446744073709551615UL)).hi, ((VECTOR(uint64_t, 2))(0x2EB11745CAA1170AL))))), ((VECTOR(uint64_t, 2))(18446744073709551615UL))))).xxyyxxxy + ((VECTOR(uint64_t, 8))(1UL))))).s30, ((VECTOR(uint64_t, 2))(0xD4DFFB2604B04F63L)), ((VECTOR(uint64_t, 2))(9UL))))).even) < p_19);
                    }
                    if ((safe_rshift_func_int8_t_s_s((-1L), 1)))
                    { /* block id: 260 */
                        int64_t l_812[10] = {0x3ABCCD212DA3AEE3L,0x3ABCCD212DA3AEE3L,0x3ABCCD212DA3AEE3L,0x3ABCCD212DA3AEE3L,0x3ABCCD212DA3AEE3L,0x3ABCCD212DA3AEE3L,0x3ABCCD212DA3AEE3L,0x3ABCCD212DA3AEE3L,0x3ABCCD212DA3AEE3L,0x3ABCCD212DA3AEE3L};
                        int i;
                        (*p_15) |= l_812[4];
                        return p_16;
                    }
                    else
                    { /* block id: 263 */
                        if (l_707.s6)
                            break;
                    }
                }
                if (l_760)
                { /* block id: 267 */
                    uint64_t l_819 = 1UL;
                    int8_t *l_847 = (void*)0;
                    int8_t *l_848[4][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int32_t l_850[10][2] = {{0x7062C506L,0x4132A3DAL},{0x7062C506L,0x4132A3DAL},{0x7062C506L,0x4132A3DAL},{0x7062C506L,0x4132A3DAL},{0x7062C506L,0x4132A3DAL},{0x7062C506L,0x4132A3DAL},{0x7062C506L,0x4132A3DAL},{0x7062C506L,0x4132A3DAL},{0x7062C506L,0x4132A3DAL},{0x7062C506L,0x4132A3DAL}};
                    int i, j;
                    (*p_15) = (safe_mod_func_uint16_t_u_u((p_17 | (safe_div_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((l_819 < p_17) , (*p_1660->g_222)), (safe_mul_func_uint8_t_u_u(l_760, ((l_822 & ((((**l_659)++) & ((void*)0 == l_825[2])) && ((+p_1660->g_99.s2) | l_690.x))) < 4L))))), 0x3571L))), p_19));
                    l_684[4][1] |= (p_18 ^ ((((safe_add_func_uint16_t_u_u((++p_1660->g_121.x), (safe_mul_func_uint8_t_u_u(p_18, ((!0x480EL) < (((safe_add_func_int16_t_s_s((((p_18 , (safe_sub_func_int16_t_s_s(((safe_div_func_int64_t_s_s(((safe_sub_func_int64_t_s_s(p_18, (((((((+((VECTOR(int32_t, 8))(l_840.yyyxyyyy)).s5) && l_711.sc) && ((l_683 |= ((((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 2))(l_841.s62)).xyyyxyxx, ((VECTOR(uint64_t, 4))(18446744073709551613UL, (*p_1660->g_222), 0xB5AD66D491554C86L, 0UL)).xyzxwzwx))).s4503001123075640, ((VECTOR(uint64_t, 16))((safe_add_func_int32_t_s_s((*p_15), (p_1660->g_844 != &l_825[2]))), ((VECTOR(uint64_t, 8))(0xF2D66642128BEFA5L)), 0x158F380430234C80L, 1UL, (*p_1660->g_222), 6UL, 1UL, 0UL, 0x9C1DB17FBDFF96B8L))))).odd, ((VECTOR(uint64_t, 8))(18446744073709551610UL)), ((VECTOR(uint64_t, 8))(0x52CB6EA205E623C1L))))).s3 || p_1660->g_285.sb) && l_819)) | 0x50L)) == p_1660->g_306.x) != p_1660->g_149.s4) >= p_19) != p_1660->g_474.s2))) != l_849), l_672)) > 1UL), 0x2142L))) & l_707.s7) , (*p_1660->g_48)), 1L)) < l_819) != p_18)))))) ^ (*p_15)) >= l_685) | l_690.y));
                    p_1660->g_852--;
                    return p_16;
                }
                else
                { /* block id: 275 */
                    VECTOR(int64_t, 2) l_864 = (VECTOR(int64_t, 2))((-9L), 0x01A8C431A5D04CEEL);
                    VECTOR(int16_t, 8) l_869 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x28EAL), 0x28EAL), 0x28EAL, (-1L), 0x28EAL);
                    uint64_t l_877[6][4] = {{18446744073709551615UL,18446744073709551615UL,0x05C51940EEB9D93FL,18446744073709551614UL},{18446744073709551615UL,18446744073709551615UL,0x05C51940EEB9D93FL,18446744073709551614UL},{18446744073709551615UL,18446744073709551615UL,0x05C51940EEB9D93FL,18446744073709551614UL},{18446744073709551615UL,18446744073709551615UL,0x05C51940EEB9D93FL,18446744073709551614UL},{18446744073709551615UL,18446744073709551615UL,0x05C51940EEB9D93FL,18446744073709551614UL},{18446744073709551615UL,18446744073709551615UL,0x05C51940EEB9D93FL,18446744073709551614UL}};
                    int32_t l_902[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
                    int i, j;
                    l_682[2] = func_52((((p_1660->g_173.sf ^= ((((VECTOR(int64_t, 4))(p_1660->g_855.s7332)).y | ((safe_add_func_int8_t_s_s((safe_sub_func_int32_t_s_s((*p_1660->g_20), ((safe_sub_func_uint64_t_u_u((&p_1660->g_178 != (((p_1660->g_153.z < p_19) , (!((((VECTOR(int16_t, 8))(l_862.sf12c54d0)).s3 , l_863) != &l_735))) , func_52(l_862.s0, p_1660))), 0x6F0EC8973C9675DCL)) ^ p_18))), p_17)) | (-3L))) == p_1660->g_736[4])) <= p_19) , p_19), p_1660);
                    (*p_1660->g_20) = (*p_15);
                    if ((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(l_864.xxxy)).xxwyxxzzyzwzyzyx >= ((VECTOR(int64_t, 2))(1L, 0x3EA4860D6D08505DL)).xyxyyyyyyyxyyyxx))).se & (safe_rshift_func_int8_t_s_u(l_862.s6, 0))))
                    { /* block id: 279 */
                        VECTOR(int16_t, 8) l_868 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
                        VECTOR(int64_t, 4) l_892 = (VECTOR(int64_t, 4))(0x5AC75A486FFD8217L, (VECTOR(int64_t, 2))(0x5AC75A486FFD8217L, 3L), 3L);
                        uint32_t l_903 = 4294967295UL;
                        int32_t l_905[9][10] = {{0x1AF58F2AL,0x099F6243L,0x099F6243L,0x1AF58F2AL,1L,0x49C1BAA1L,8L,0x555DC8E7L,(-1L),(-7L)},{0x1AF58F2AL,0x099F6243L,0x099F6243L,0x1AF58F2AL,1L,0x49C1BAA1L,8L,0x555DC8E7L,(-1L),(-7L)},{0x1AF58F2AL,0x099F6243L,0x099F6243L,0x1AF58F2AL,1L,0x49C1BAA1L,8L,0x555DC8E7L,(-1L),(-7L)},{0x1AF58F2AL,0x099F6243L,0x099F6243L,0x1AF58F2AL,1L,0x49C1BAA1L,8L,0x555DC8E7L,(-1L),(-7L)},{0x1AF58F2AL,0x099F6243L,0x099F6243L,0x1AF58F2AL,1L,0x49C1BAA1L,8L,0x555DC8E7L,(-1L),(-7L)},{0x1AF58F2AL,0x099F6243L,0x099F6243L,0x1AF58F2AL,1L,0x49C1BAA1L,8L,0x555DC8E7L,(-1L),(-7L)},{0x1AF58F2AL,0x099F6243L,0x099F6243L,0x1AF58F2AL,1L,0x49C1BAA1L,8L,0x555DC8E7L,(-1L),(-7L)},{0x1AF58F2AL,0x099F6243L,0x099F6243L,0x1AF58F2AL,1L,0x49C1BAA1L,8L,0x555DC8E7L,(-1L),(-7L)},{0x1AF58F2AL,0x099F6243L,0x099F6243L,0x1AF58F2AL,1L,0x49C1BAA1L,8L,0x555DC8E7L,(-1L),(-7L)}};
                        int i, j;
                        l_903 |= ((*p_15) = ((((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 16))(p_1660->g_867.sacec0fd8cf70ec23)).sed, ((VECTOR(int16_t, 8))(l_868.s45554313)).s17, ((VECTOR(int16_t, 8))(1L, 0x0638L, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(l_869.s56)) || ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 4))(l_870.xyyx)).yzzwxyxwwzwywxxy, ((VECTOR(int16_t, 16))(p_1660->g_871.scc7e1e94c72ded21))))).odd && ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(0x3B8CL, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(l_872.s17)) <= ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(0x4C51L, 0x515CL, (safe_add_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((l_877[1][2] | p_18), 15)), (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))((+((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 16))(p_1660->g_880.xxyyyyxyxxxxxxyy)).s5a, ((VECTOR(uint64_t, 4))(l_881.yxxy)).odd))).yyyx))) * ((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 8))(l_882.sf5d8eb1d)).s0151424205706765))).s1366))).lo, ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 2))(p_1660->g_887.yx)).xxxyxyxxyyyyyxxx, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(l_890.seaa85141)).s10 * ((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(p_1660->g_891.sd5d17166)).s1562640350707747 < ((VECTOR(int64_t, 16))(l_892.zzywyxzwxywyzywz))))).se1, ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))((FAKE_DIVERGE(p_1660->local_2_offset, get_local_id(2), 10) ^ (safe_lshift_func_uint16_t_u_s(l_692, (*p_1660->g_48)))), (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 2))(0x0E83L, 0L)).yyxx, (int16_t)(*p_1660->g_48)))).y, (safe_sub_func_uint64_t_u_u(((safe_sub_func_uint32_t_u_u(p_1660->g_121.x, (&p_1660->g_84 != &p_1660->g_49))) | (-1L)), l_840.y)))), 1L, ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 2))(0x7C9DFFD50ADAA0F9L)), 0L)).s5630637143053466 && ((VECTOR(int64_t, 16))(0x693B68DD4A9CD7E1L))))) && ((VECTOR(int64_t, 16))(0x165FC9C174EE7931L))))).sf0))).yxyy))), 0x487E1F1CCBB9D655L, (-2L), 0x123F33F8C61A88D0L, (-1L))).even))).yywxxwzywxxyzzyy, ((VECTOR(uint64_t, 16))(0x171B543EF5EEF726L))))), ((VECTOR(uint64_t, 16))(0UL))))).s87))), ((VECTOR(uint64_t, 4))(0x0C7A74EE9E8858B5L)), 1UL, 0UL, 18446744073709551615UL, ((VECTOR(uint64_t, 2))(0x21678F29B9F705D4L)), (*p_1660->g_222), 1UL, p_1660->g_901[2], 18446744073709551614UL, 0x463D75EE9C751A62L))))) + ((VECTOR(uint64_t, 16))(18446744073709551611UL))))) + ((VECTOR(uint64_t, 16))(18446744073709551610UL))))).lo, (uint64_t)(*p_1660->g_222)))).s77))), 0x487716CEDACF8A6BL, 0x46D25339DB456C79L)).x > l_902[6]))), l_892.y, p_18, (-1L), 0x2562L, ((VECTOR(int16_t, 4))((-3L))), ((VECTOR(int16_t, 4))(0x6440L)), (-5L))) | ((VECTOR(int16_t, 16))(0x0D33L))))).s84 == ((VECTOR(int16_t, 2))(0L))))).xxxx, ((VECTOR(int16_t, 4))(0x7FEEL)), ((VECTOR(int16_t, 4))(0x0D28L))))), (*p_1660->g_48), ((VECTOR(int16_t, 2))(0x41DBL)), 0x34EFL)).s75))), ((VECTOR(int16_t, 8))(0x3619L)), ((VECTOR(int16_t, 4))(0L)), 1L)).s47 & ((VECTOR(int16_t, 2))((-2L)))))).xxyyxyxy))), ((VECTOR(int16_t, 8))(1L))))).lo || ((VECTOR(int16_t, 4))(1L))))).hi))), ((VECTOR(int16_t, 4))(4L)))).s17))).yxxyyxxyyxyxyyxx <= ((VECTOR(int16_t, 16))((-1L)))))).s5501 != ((VECTOR(int16_t, 4))(9L))))).xwzzzyzx, ((VECTOR(int16_t, 8))(0x1D8AL))))).s2 && 0UL) || l_707.s3));
                        l_906--;
                        (*p_1660->g_130) = p_15;
                    }
                    else
                    { /* block id: 284 */
                        uint8_t l_913 = 255UL;
                        (*p_1660->g_910) = l_909;
                        --l_913;
                    }
                    if ((*p_15))
                    { /* block id: 288 */
                        int32_t *l_918 = &l_766;
                        (*p_1660->g_916) = &p_1660->g_222;
                        l_682[0] = l_918;
                    }
                    else
                    { /* block id: 291 */
                        uint8_t l_919 = 1UL;
                        int32_t ***l_922 = &p_1660->g_911;
                        int32_t ****l_923 = &l_922;
                        --l_919;
                        (*p_15) = (*p_15);
                        (*p_15) ^= (((*l_923) = l_922) == l_924);
                    }
                }
                for (p_1660->g_224 = (-30); (p_1660->g_224 != 4); p_1660->g_224++)
                { /* block id: 300 */
                    int32_t l_928 = 0L;
                    int32_t l_929 = 6L;
                    int32_t l_930[9][9] = {{0x3756BE40L,0x53B48539L,(-7L),0x53B48539L,0x3756BE40L,0x6A3ECB32L,(-1L),0x4975740CL,(-1L)},{0x3756BE40L,0x53B48539L,(-7L),0x53B48539L,0x3756BE40L,0x6A3ECB32L,(-1L),0x4975740CL,(-1L)},{0x3756BE40L,0x53B48539L,(-7L),0x53B48539L,0x3756BE40L,0x6A3ECB32L,(-1L),0x4975740CL,(-1L)},{0x3756BE40L,0x53B48539L,(-7L),0x53B48539L,0x3756BE40L,0x6A3ECB32L,(-1L),0x4975740CL,(-1L)},{0x3756BE40L,0x53B48539L,(-7L),0x53B48539L,0x3756BE40L,0x6A3ECB32L,(-1L),0x4975740CL,(-1L)},{0x3756BE40L,0x53B48539L,(-7L),0x53B48539L,0x3756BE40L,0x6A3ECB32L,(-1L),0x4975740CL,(-1L)},{0x3756BE40L,0x53B48539L,(-7L),0x53B48539L,0x3756BE40L,0x6A3ECB32L,(-1L),0x4975740CL,(-1L)},{0x3756BE40L,0x53B48539L,(-7L),0x53B48539L,0x3756BE40L,0x6A3ECB32L,(-1L),0x4975740CL,(-1L)},{0x3756BE40L,0x53B48539L,(-7L),0x53B48539L,0x3756BE40L,0x6A3ECB32L,(-1L),0x4975740CL,(-1L)}};
                    uint16_t l_932 = 0xB7BBL;
                    int i, j;
                    (*p_15) = ((VECTOR(int32_t, 16))(l_927.xwwzzzzwzwxyzwwx)).s4;
                    ++l_932;
                }
            }
            else
            { /* block id: 304 */
                VECTOR(uint64_t, 8) l_938 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551607UL), 18446744073709551607UL), 18446744073709551607UL, 1UL, 18446744073709551607UL);
                uint32_t l_944 = 0UL;
                int8_t *l_945 = (void*)0;
                int8_t *l_946 = (void*)0;
                int8_t *l_947 = (void*)0;
                int8_t *l_948 = (void*)0;
                int8_t *l_949 = (void*)0;
                int8_t *l_950 = (void*)0;
                int8_t *l_951[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint8_t l_983 = 255UL;
                int32_t **l_986[5] = {&p_1660->g_20,&p_1660->g_20,&p_1660->g_20,&p_1660->g_20,&p_1660->g_20};
                int i;
                (*p_1660->g_20) ^= (((*l_727) = (((VECTOR(int16_t, 2))(p_1660->g_935.s12)).odd > (((void*)0 != p_16) && ((safe_div_func_uint64_t_u_u((p_19 | p_17), 8L)) ^ (p_19 , (((l_938.s5 == (safe_unary_minus_func_int8_t_s((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(0x5AL, (-7L))) && ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(5L, l_944, (-4L), (p_1660->g_108.sc = (p_1660->g_109.w = (l_707.s6 && (*p_1660->g_222)))), ((VECTOR(int8_t, 8))((-3L))), 0x60L, 0x77L, (-10L), 0x00L)).s28, ((VECTOR(int8_t, 2))(0x71L))))), 0x67L, 0x55L)).odd, ((VECTOR(int8_t, 2))(0x5DL)))))))), 0L, 0x28L)).x, 4)) > (*p_1660->g_222)), l_882.sa))))) && GROUP_DIVERGE(0, 1)) , p_17)))))) < 0x260362F736E1DB29L);
                (*p_1660->g_20) &= (((1L != GROUP_DIVERGE(0, 1)) < l_711.sd) , l_692);
                for (l_692 = (-18); (l_692 > 43); l_692 = safe_add_func_uint8_t_u_u(l_692, 1))
                { /* block id: 312 */
                    uint32_t *l_974[2];
                    uint32_t **l_973[6] = {&l_974[1],&l_974[0],&l_974[1],&l_974[1],&l_974[0],&l_974[1]};
                    int32_t l_984 = 0x358088C7L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_974[i] = (void*)0;
                    (*p_15) = (l_766 ^= (((**l_659) = (+(safe_mul_func_int16_t_s_s(p_18, p_1660->g_109.z)))) >= (((*p_1660->g_48) = ((safe_add_func_int64_t_s_s(((-10L) & ((safe_div_func_int64_t_s_s(((65535UL >= (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x2CA2L, 1L)), 0x1BEEL, 0x7791L)).x & (safe_sub_func_int64_t_s_s(((l_964 != (void*)0) | (l_684[1][4] = (~l_684[4][1]))), (l_965 != &p_1660->g_910))))) && (*p_1660->g_48)), p_17)) & 0UL)), p_17)) ^ l_944)) <= l_938.s7)));
                    (*p_15) = l_938.s0;
                    l_985 = func_40(p_16, &l_702, (safe_mod_func_int16_t_s_s((safe_rshift_func_int8_t_s_u((p_17 < (safe_rshift_func_int8_t_s_s(((l_975 = &p_17) == ((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))(3L, (-10L))), ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 16))(p_1660->g_976.xyxyyyxxxxxxyxyy)).s8d, ((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 4))(0xC2ACL, ((VECTOR(uint16_t, 16))(p_1660->g_977.s3730601361545274)).sb, 0x8905L, 0UL)).wzyyyzxxyyzzxzwz, ((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 4))(p_1660->g_978.s55ef)).xxxwywzz, ((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 8))(1UL, 0UL, ((&p_1660->g_911 == (void*)0) ^ ((l_944 || (((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 4))(1UL, p_18, 255UL, 8UL)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(255UL, 5UL)) ^ ((VECTOR(uint8_t, 2))(5UL, 0x7CL))))).xxxy))).x | ((void*)0 == l_979[1]))) && l_982)), 65533UL, ((VECTOR(uint16_t, 4))(0x0FFDL)))), ((VECTOR(uint16_t, 8))(9UL))))), 65531UL, 65535UL, ((VECTOR(uint16_t, 2))(0UL)), p_17, GROUP_DIVERGE(2, 1), 0UL, 0UL))))).sd8ad, ((VECTOR(uint16_t, 4))(0UL))))).yyyzwyxw))).s1702006027403737))).sfa))), 0x2B8B25C752505B46L, (-6L))).hi | ((VECTOR(int64_t, 2))(0L))))), (-1L), 0x5AACCB95783B0278L)).zwzwzzyxxxxzwzzx > ((VECTOR(int64_t, 16))((-4L)))))).s5a))), 0x1E7EC2B59069183DL, 0x6498EC9F95957D45L)).z , l_983) , &p_1660->g_901[2])), l_862.sb))), p_17)), l_984)), p_1660);
                }
                (*p_1660->g_130) = p_15;
            }
        }
        else
        { /* block id: 324 */
            uint32_t l_989 = 4294967292UL;
            for (l_730 = 0; (l_730 > 6); l_730 = safe_add_func_uint64_t_u_u(l_730, 4))
            { /* block id: 327 */
                (*p_15) ^= l_989;
                return p_16;
            }
        }
    }
    else
    { /* block id: 332 */
        int32_t l_994 = 8L;
        VECTOR(int64_t, 2) l_1009 = (VECTOR(int64_t, 2))(0x32E9B87B099081C2L, 2L);
        uint64_t *l_1010 = &p_1660->g_1011;
        int32_t ***l_1015 = &l_1012;
        uint32_t l_1017 = 0xAAD72093L;
        int i;
        (*l_985) = (safe_sub_func_int8_t_s_s((p_1660->g_584.z = (safe_lshift_func_uint16_t_u_u(l_994, ((((safe_rshift_func_uint8_t_u_s((((safe_lshift_func_uint16_t_u_u((*l_985), 4)) , (safe_rshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((((((*p_1660->g_222) = ((safe_sub_func_int32_t_s_s(l_994, ((p_1660->g_871.s8 < (safe_sub_func_uint64_t_u_u((l_1007 == (void*)0), (((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(l_1009.yy)).xyyy || ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 4))(((((*l_1010) &= 0x78AF2AD99405B5E6L) , l_1012) == ((((safe_lshift_func_int16_t_s_u((p_18 != p_17), (*l_985))) , l_1015) == &l_1012) , l_1016[4])), 0x3487C17F4F8C05EDL, 3L, 0x011CCE0F45650D07L)).wwwwywyxwzwxyxzx, ((VECTOR(int64_t, 16))(0x69E924682BB62A4FL)), ((VECTOR(int64_t, 16))(1L))))).sa89e, ((VECTOR(int64_t, 4))(8L)), ((VECTOR(int64_t, 4))(0L))))) && ((VECTOR(int64_t, 4))(5L)))))))).wyzwxyyzxxxzwywy, ((VECTOR(int64_t, 16))(0x1C39CC07F43FA6C4L))))).s15))).lo && 0x24F2B7D4175EA4CEL)))) & (*p_1660->g_48)))) | p_19)) > p_18) <= (*l_985)) , l_1017), 2)), p_17))) && (*l_985)), p_19)) && p_1660->g_414) , p_19) , 1UL)))), 8L));
    }
    return p_16;
}


/* ------------------------------------------ */
/* 
 * reads : p_1660->g_20 p_1660->g_21 p_1660->g_48 p_1660->g_64 p_1660->g_49 p_1660->g_84 p_1660->g_2 p_1660->g_39 p_1660->g_130 p_1660->g_136 p_1660->g_149 p_1660->g_131 p_1660->g_245 p_1660->g_306 p_1660->g_110 p_1660->g_224 p_1660->g_170 p_1660->g_190 p_1660->g_222 p_1660->g_112 p_1660->g_178 p_1660->g_106 p_1660->g_367 p_1660->g_369 p_1660->g_153 p_1660->g_242 p_1660->g_409 p_1660->g_109 p_1660->g_414 p_1660->g_416 p_1660->g_113 p_1660->g_278 p_1660->g_474 p_1660->g_114 p_1660->g_198 p_1660->g_100 p_1660->g_290 p_1660->g_101 p_1660->g_617 p_1660->g_622 p_1660->g_625 p_1660->g_285
 * writes: p_1660->g_64 p_1660->g_84 p_1660->g_21 p_1660->g_131 p_1660->g_136 p_1660->g_178 p_1660->g_222 p_1660->g_224 p_1660->g_245 p_1660->g_306 p_1660->g_335 p_1660->g_190 p_1660->g_99 p_1660->g_416 p_1660->g_108 p_1660->g_114 p_1660->g_101
 */
uint64_t  func_26(int32_t * p_27, struct S0 * p_1660)
{ /* block id: 13 */
    VECTOR(int16_t, 8) l_33 = (VECTOR(int16_t, 8))(0x1EDBL, (VECTOR(int16_t, 4))(0x1EDBL, (VECTOR(int16_t, 2))(0x1EDBL, (-7L)), (-7L)), (-7L), 0x1EDBL, (-7L));
    int16_t *l_34 = (void*)0;
    int16_t *l_35 = (void*)0;
    int32_t l_36 = 5L;
    VECTOR(uint32_t, 4) l_468 = (VECTOR(uint32_t, 4))(0x6CF6FDCAL, (VECTOR(uint32_t, 2))(0x6CF6FDCAL, 0xE5B45588L), 0xE5B45588L);
    VECTOR(int8_t, 2) l_471 = (VECTOR(int8_t, 2))(1L, 0x66L);
    VECTOR(int8_t, 16) l_472 = (VECTOR(int8_t, 16))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x5CL), 0x5CL), 0x5CL, (-4L), 0x5CL, (VECTOR(int8_t, 2))((-4L), 0x5CL), (VECTOR(int8_t, 2))((-4L), 0x5CL), (-4L), 0x5CL, (-4L), 0x5CL);
    VECTOR(int8_t, 16) l_473 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int8_t, 2))(0L, 1L), (VECTOR(int8_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
    VECTOR(int64_t, 8) l_475 = (VECTOR(int64_t, 8))(0x52A11FE49B186CC8L, (VECTOR(int64_t, 4))(0x52A11FE49B186CC8L, (VECTOR(int64_t, 2))(0x52A11FE49B186CC8L, 0x1FCB2A06D8455F49L), 0x1FCB2A06D8455F49L), 0x1FCB2A06D8455F49L, 0x52A11FE49B186CC8L, 0x1FCB2A06D8455F49L);
    VECTOR(int64_t, 4) l_476 = (VECTOR(int64_t, 4))(0x2E450B28B0A5DC65L, (VECTOR(int64_t, 2))(0x2E450B28B0A5DC65L, 0x043CD8C17B8F5465L), 0x043CD8C17B8F5465L);
    VECTOR(int64_t, 16) l_477 = (VECTOR(int64_t, 16))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L, (VECTOR(int64_t, 2))((-2L), 0L), (VECTOR(int64_t, 2))((-2L), 0L), (-2L), 0L, (-2L), 0L);
    VECTOR(uint16_t, 16) l_482 = (VECTOR(uint16_t, 16))(0x109AL, (VECTOR(uint16_t, 4))(0x109AL, (VECTOR(uint16_t, 2))(0x109AL, 0x3A18L), 0x3A18L), 0x3A18L, 0x109AL, 0x3A18L, (VECTOR(uint16_t, 2))(0x109AL, 0x3A18L), (VECTOR(uint16_t, 2))(0x109AL, 0x3A18L), 0x109AL, 0x3A18L, 0x109AL, 0x3A18L);
    VECTOR(uint32_t, 4) l_484 = (VECTOR(uint32_t, 4))(0xDD7C5C91L, (VECTOR(uint32_t, 2))(0xDD7C5C91L, 1UL), 1UL);
    int8_t *l_487 = (void*)0;
    int8_t *l_488 = (void*)0;
    int8_t *l_489 = (void*)0;
    int8_t *l_490 = (void*)0;
    int8_t *l_491[5][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint32_t *l_492 = (void*)0;
    uint8_t l_497 = 0x98L;
    VECTOR(uint32_t, 2) l_508 = (VECTOR(uint32_t, 2))(0x8D0CBA41L, 4294967292UL);
    VECTOR(uint16_t, 4) l_517 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xA54AL), 0xA54AL);
    uint32_t l_522 = 0xC2C0A026L;
    int32_t l_523 = 0x3865F08FL;
    int32_t *l_524[4][2] = {{&p_1660->g_64,&p_1660->g_64},{&p_1660->g_64,&p_1660->g_64},{&p_1660->g_64,&p_1660->g_64},{&p_1660->g_64,&p_1660->g_64}};
    uint16_t l_529 = 0UL;
    int8_t l_549 = 0L;
    VECTOR(int64_t, 16) l_589 = (VECTOR(int64_t, 16))(0x3DF07B2263F5F61FL, (VECTOR(int64_t, 4))(0x3DF07B2263F5F61FL, (VECTOR(int64_t, 2))(0x3DF07B2263F5F61FL, 1L), 1L), 1L, 0x3DF07B2263F5F61FL, 1L, (VECTOR(int64_t, 2))(0x3DF07B2263F5F61FL, 1L), (VECTOR(int64_t, 2))(0x3DF07B2263F5F61FL, 1L), 0x3DF07B2263F5F61FL, 1L, 0x3DF07B2263F5F61FL, 1L);
    VECTOR(int64_t, 8) l_590 = (VECTOR(int64_t, 8))(5L, (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, (-1L)), (-1L)), (-1L), 5L, (-1L));
    int32_t l_623 = 1L;
    int8_t l_635 = (-8L);
    int i, j;
    (*p_1660->g_20) = ((GROUP_DIVERGE(2, 1) , func_29(&p_1660->g_21[0][0], (l_36 = ((VECTOR(int16_t, 16))(l_33.s6253547025410145)).s8), (*p_1660->g_20), p_1660)) > (((safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))(l_468.ywzxxxyyzwxwwyxz)) + ((VECTOR(uint32_t, 2))(0x22080262L, 5UL)).yxxyyxyyyyxxxyxx))).s9 <= (safe_rshift_func_int8_t_s_s((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(l_471.xyxx)).zwwxwzyyxwyyxzwx && ((VECTOR(int8_t, 8))(l_472.s6fcd4b21)).s3111230733662710))).s4aa2 == ((VECTOR(int8_t, 4))((!((VECTOR(int8_t, 2))(0x6EL, 0x36L)).xxyx)))))) && ((VECTOR(int8_t, 16))(l_473.s963ffd87a9d2d267)).s422e))).y & (((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(p_1660->g_474.s3c889fec)).s41 & ((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 2))((-1L), 7L)).xyyyyyxxyyyyyyxy, ((VECTOR(int64_t, 16))(0x4AE4B2D5BB77A2D3L, p_1660->g_242.x, ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 16))(l_475.s5004322464766444)).hi, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(l_476.yywzzywwwyzwywwy)).sd2c4 && ((VECTOR(int64_t, 8))(l_477.sa87c8535)).hi))).yywwzzxx))), (l_473.sc || (safe_mul_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_482.sb2978e51)).s0, GROUP_DIVERGE(2, 1))), l_475.s1))), 0x661F4B208B3F7B70L, (-1L), (((p_1660->g_109.z & (p_1660->g_114.x &= (safe_unary_minus_func_uint32_t_u((((VECTOR(uint32_t, 8))(l_484.yzyxxzzy)).s5 <= (((safe_add_func_uint32_t_u_u((l_477.s2 & l_33.s6), (-7L))) >= l_468.z) | (-1L))))))) || l_482.se) && 1L), 0x05B66E2817649674L, 0x5510D3517C4AC356L))))) && ((VECTOR(int64_t, 16))(0x38DFD3BB18B2525DL))))) && ((VECTOR(int64_t, 16))(0x61277629A40A8AC1L))))), ((VECTOR(int64_t, 16))((-5L))), ((VECTOR(int64_t, 16))(0L))))).seb))).yyyy, ((VECTOR(int64_t, 4))(0x2CFB5A11DEE8683BL))))) && ((VECTOR(int64_t, 4))((-9L)))))).wwyzyzzxzywywwzy && ((VECTOR(int64_t, 16))(0L))))) && ((VECTOR(int64_t, 16))(0x0BD045835B1242E2L))))).s36dc && ((VECTOR(int64_t, 4))(0x20CDA666856F2321L))))).x == l_475.s0)), l_484.x))), l_477.s7)), p_1660->g_367.x)) != l_476.x) <= FAKE_DIVERGE(p_1660->global_1_offset, get_global_id(1), 10)));
    p_1660->g_101.z ^= ((l_492 == p_27) && (safe_mod_func_uint64_t_u_u(((*p_1660->g_222) = l_468.y), (safe_mod_func_int64_t_s_s(((l_36 = (((p_1660->g_367.x , p_1660->g_20) != p_27) != l_497)) < (safe_add_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((((safe_rshift_func_int8_t_s_u((l_523 |= (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 4))(0x6E3AD3D6L, 0x7B303A41L, 4294967295UL, 0UL)).yyzwzxxy, ((VECTOR(uint32_t, 2))(l_508.xy)).yyyyxyyx))).even - ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(4294967288UL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1660->global_0_offset, get_global_id(0), 10), ((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_517.wx)), ((((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),uint32_t,((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))(0x156718FBL, 0xC96229F4L, 0x6E655BAEL, 0x29F6C538L, 0x94ADA2ABL, ((VECTOR(uint32_t, 4))(0x5461BB2FL, 0x3B9B2267L, 0x6DAF0B6CL, 1UL)), ((VECTOR(uint32_t, 16))(((l_497 && (((l_33.s4 || 0x5CB7L) ^ 0x56EDL) | p_1660->g_198)) < l_475.s4), 0x225A8AF4L, ((VECTOR(uint32_t, 2))(0xCA639B93L)), ((VECTOR(uint32_t, 2))(0xD6334233L)), 7UL, l_468.y, 0x98598C60L, ((VECTOR(uint32_t, 2))(5UL)), ((VECTOR(uint32_t, 4))(0UL)), 4294967287UL)).se, GROUP_DIVERGE(1, 1), ((VECTOR(uint32_t, 4))(0UL)), 0UL)) << ((VECTOR(uint32_t, 16))(0UL))))).s56 << ((VECTOR(uint32_t, 2))(32))))), 0x9EDB9D20L, 0xBCF659E2L)), (uint32_t)0xF254A45BL, (uint32_t)l_522))).y , l_468.x) | l_484.w), 0xD8E8L, l_477.s8, ((VECTOR(uint16_t, 2))(0x1D3EL)), 0x1A8AL)), ((VECTOR(uint16_t, 8))(65530UL))))).s7)), 0xF573CF0CL, ((VECTOR(uint32_t, 4))(0xDA0CC52DL)), 0xE029D6C4L, ((VECTOR(uint32_t, 4))(3UL)), l_471.y, 4294967293UL, 1UL, 8UL, 0UL)).even - ((VECTOR(uint32_t, 8))(0x7DBC3AA9L))))).s2, l_517.y, 4294967295UL, 0xD78F1EAFL)), l_517.y, 0xC79AA2F4L, 0xF25F9E62L)) * ((VECTOR(uint32_t, 8))(0x0D9087CBL))))).s41 + ((VECTOR(uint32_t, 2))(0xEE07361EL))))), ((VECTOR(uint32_t, 2))(0x7A4D8ED7L))))) & ((VECTOR(uint32_t, 2))(0UL))))).yxyy))), ((VECTOR(uint32_t, 4))(4294967287UL)), 0xB6DA9656L, 0x0C82AFD1L, ((VECTOR(uint32_t, 4))(0xA7CEC088L)), 0x7CEAA265L, 0UL)).sb, 1L))), l_475.s4)) > p_1660->g_474.sf) == 0x5352L) > (*p_1660->g_20)), p_1660->g_100.y)), p_1660->g_290.sd))), l_522)))));
    (*p_1660->g_20) ^= (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(0x167EL, 0x2330L)).even, 11));
    for (l_523 = (-11); (l_523 != 26); ++l_523)
    { /* block id: 162 */
        int32_t **l_530[5][5] = {{&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131},{&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131},{&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131},{&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131},{&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131,&p_1660->g_131}};
        int16_t l_548[8] = {0x50C7L,0x50C7L,0x50C7L,0x50C7L,0x50C7L,0x50C7L,0x50C7L,0x50C7L};
        uint32_t *l_565[2];
        int64_t *l_598 = (void*)0;
        VECTOR(int16_t, 2) l_618 = (VECTOR(int16_t, 2))(0x23B8L, 1L);
        int i, j;
        for (i = 0; i < 2; i++)
            l_565[i] = &p_1660->g_2;
        p_27 = (l_524[1][0] = func_52(l_529, p_1660));
        for (p_1660->g_136 = (-15); (p_1660->g_136 < 25); p_1660->g_136++)
        { /* block id: 167 */
            int16_t l_533[3];
            int i;
            for (i = 0; i < 3; i++)
                l_533[i] = 9L;
            (*p_1660->g_20) |= l_533[2];
            if (l_533[1])
                continue;
        }
        for (p_1660->g_84 = 0; (p_1660->g_84 == 28); p_1660->g_84++)
        { /* block id: 173 */
            VECTOR(int16_t, 16) l_538 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 1L), 1L), 1L, (-10L), 1L, (VECTOR(int16_t, 2))((-10L), 1L), (VECTOR(int16_t, 2))((-10L), 1L), (-10L), 1L, (-10L), 1L);
            int32_t l_541 = 0x08A929EBL;
            int32_t l_545 = 0x1022855BL;
            int32_t l_546[10] = {0x216A06E9L,0L,1L,0L,0x216A06E9L,0x216A06E9L,0L,1L,0L,0x216A06E9L};
            int32_t l_550 = 0L;
            int16_t l_551 = 0x562CL;
            int64_t l_552 = 0x2CCBE80794806448L;
            uint32_t l_554 = 0xD2FCA3FCL;
            VECTOR(uint64_t, 2) l_568 = (VECTOR(uint64_t, 2))(8UL, 0x6DED0EDF3514D449L);
            VECTOR(uint64_t, 2) l_571 = (VECTOR(uint64_t, 2))(5UL, 18446744073709551615UL);
            VECTOR(int64_t, 4) l_592 = (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, 0x54F72B92644A7DF8L), 0x54F72B92644A7DF8L);
            uint32_t **l_602 = &l_492;
            int32_t *l_605 = &l_541;
            uint8_t l_634 = 0xA2L;
            int i;
            for (l_36 = 0; (l_36 < 24); l_36 = safe_add_func_uint16_t_u_u(l_36, 6))
            { /* block id: 176 */
                uint32_t l_539 = 1UL;
                int32_t l_540 = 0x53065A3FL;
                int32_t l_542 = (-1L);
                int32_t l_543 = 0x2AB8CF0AL;
                int32_t l_544[7][10][3] = {{{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L}},{{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L}},{{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L}},{{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L}},{{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L}},{{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L}},{{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L},{(-9L),0x0178A1AFL,0x4CD66501L}}};
                VECTOR(int64_t, 4) l_591 = (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 1L), 1L);
                uint64_t *l_595[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_599 = 0x5AD0BA85L;
                uint32_t **l_604 = &l_492;
                int i, j, k;
                l_524[3][1] = (p_27 = (((((l_538.se < (l_539 ^ 18446744073709551609UL)) , (*p_1660->g_48)) == (+(p_1660->g_84 == (p_27 != l_524[3][1])))) < 0x6E11DFCFB405DCA8L) , func_40(p_27, &p_1660->g_49, l_538.s2, p_1660)));
                l_554--;
                if ((safe_mod_func_int8_t_s_s(l_541, ((p_1660->g_224 = (((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),VECTOR(uint64_t, 16),((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(GROUP_DIVERGE(2, 1), 0x1C3ECEDE85D15ECCL, 0x46528A2E58423511L, 0x1B9C93C85AFE2A06L)).ywxywwzz + ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 16))(((void*)0 != l_565[1]), 1UL, 18446744073709551613UL, ((VECTOR(uint64_t, 8))(0x418DD6A85BD6FDB4L, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(18446744073709551614UL, 0x704BA2AD5581E78AL)), 18446744073709551615UL, 0x444D452E2894388FL)), FAKE_DIVERGE(p_1660->group_2_offset, get_group_id(2), 10), 18446744073709551610UL, 0xBA751CAA6A239872L)), ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(l_568.yxyx)).lo | ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(0xB0B50267C184D24FL, 0x12EA8BAE74A06172L)).xxxxxyyy - ((VECTOR(uint64_t, 8))((-((VECTOR(uint64_t, 16))(l_571.xxxyxxxxxxyxyxyy)).odd)))))).s75))).yxxy << ((VECTOR(uint64_t, 16))(0x766D54D8773276BDL, ((VECTOR(uint64_t, 2))(p_1660->g_572.xx)), ((VECTOR(uint64_t, 8))((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(0x51780B97L, 0x1E0BF2B6L, (-8L), (-2L))), ((-1L) ^ ((((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 16))(p_1660->g_577.s7654546202140624)).sf, (safe_add_func_int16_t_s_s(((safe_add_func_uint64_t_u_u((*p_1660->g_222), ((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))((l_543 = ((VECTOR(int8_t, 16))(p_1660->g_584.wyxwxywxxzwyxwyw)).s3), 0x27L, p_1660->g_109.w, 5L, ((l_545 = ((VECTOR(uint32_t, 8))(((safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((((FAKE_DIVERGE(p_1660->global_2_offset, get_global_id(2), 10) , ((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(l_589.s571f)).zwyywyyzyxywwzzx || ((VECTOR(int64_t, 16))(l_590.s1614063405031716))))).lo, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))((!((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(l_591.xywxxxxy)).lo || ((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 8))(l_592.zwwyzzwx)).s13, ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 16))(4L, 0x3B4E5D0C0C2271B6L, (-7L), ((VECTOR(int64_t, 4))(1L, 0x57CEA750717B7966L, 1L, 4L)), (((safe_rshift_func_int8_t_s_u(l_546[5], 1)) ^ (--p_1660->g_285.sc)) && (1L && (-6L))), ((VECTOR(int64_t, 8))((-1L))))).sf0eb))).odd))) | ((VECTOR(int64_t, 2))(0x6E79E9465FAADB54L))))), (int64_t)p_1660->g_136))).xxyy))) != ((VECTOR(int64_t, 4))(0x3D0B042093C26FC2L))))).zwyyywyy))).s1774605301137210 < ((VECTOR(int64_t, 16))((-1L)))))).s080e && ((VECTOR(int64_t, 4))(0x127AC10058A147C6L))))).zwxzxyyy))).s2) , l_545) , l_545), l_538.sd)), l_568.x)) || (*p_1660->g_222)), 0x4F5B5EB8L, p_1660->g_84, ((VECTOR(uint32_t, 2))(4294967293UL)), 9UL, 4294967295UL, 0x153CA850L)).s1) , (-1L)), ((VECTOR(int8_t, 2))(0x7BL)), 1L)).s55, ((VECTOR(int8_t, 2))((-6L)))))) && ((VECTOR(int8_t, 2))((-8L)))))).even, (-5L))) != p_1660->g_278.s3))) && l_544[5][3][2]), l_591.x)))) < 0x7B35L) , &p_1660->g_547) == l_598)), ((VECTOR(int32_t, 2))(0x1B616E9DL)), 0x3D5F5130L, ((VECTOR(int32_t, 4))(2L)), ((VECTOR(int32_t, 4))(0x119DBBD5L)))).s1, l_546[5])), ((VECTOR(uint64_t, 4))(0xCF09E698661B845DL)), 0xEC5ECB47C67861D6L, 0xD73C7014BF0E55F9L, 0UL)), 0xAC2465166498878BL, l_591.z, ((VECTOR(uint64_t, 2))(4UL)), 0x6211CF5C16F7EAEDL)).sb6e6))).lo ^ ((VECTOR(uint64_t, 2))(18446744073709551610UL))))), ((VECTOR(uint64_t, 2))(0xD0A9DE8883432D9DL)), 18446744073709551606UL)).lo, ((VECTOR(uint64_t, 8))(0x376BA50D000071A1L))))).s15, ((VECTOR(uint64_t, 2))(0xDB48C42978F3AD9CL)), ((VECTOR(uint64_t, 2))(18446744073709551611UL))))).xxxy - ((VECTOR(uint64_t, 4))(0UL))))).zyxyxyww, ((VECTOR(uint64_t, 8))(18446744073709551615UL)))))))).s23 + ((VECTOR(uint64_t, 2))(0x3C1D277C876E5123L))))).xxxxyyxyyyyxyyxy, ((VECTOR(uint64_t, 16))(1UL)), ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).s5 > l_599)) , 0xD6L))))
                { /* block id: 184 */
                    (*p_1660->g_20) = ((void*)0 == p_1660->g_20);
                }
                else
                { /* block id: 186 */
                    VECTOR(int16_t, 16) l_624 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x31D5L), 0x31D5L), 0x31D5L, 0L, 0x31D5L, (VECTOR(int16_t, 2))(0L, 0x31D5L), (VECTOR(int16_t, 2))(0L, 0x31D5L), 0L, 0x31D5L, 0L, 0x31D5L);
                    VECTOR(int16_t, 2) l_627 = (VECTOR(int16_t, 2))(0x627FL, 0x653DL);
                    int i;
                    for (l_554 = 0; (l_554 > 45); l_554 = safe_add_func_int16_t_s_s(l_554, 5))
                    { /* block id: 189 */
                        uint32_t ***l_603[1][5];
                        int32_t l_606 = 0x3E0D8460L;
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_603[i][j] = &l_602;
                        }
                        p_27 = p_27;
                        l_604 = l_602;
                        l_605 = func_52(l_591.x, p_1660);
                        (*p_1660->g_20) ^= l_606;
                    }
                    for (l_549 = 0; (l_549 >= 13); l_549++)
                    { /* block id: 197 */
                        int32_t *l_609 = &p_1660->g_21[3][4];
                        VECTOR(uint32_t, 16) l_612 = (VECTOR(uint32_t, 16))(0xD0CF0BC5L, (VECTOR(uint32_t, 4))(0xD0CF0BC5L, (VECTOR(uint32_t, 2))(0xD0CF0BC5L, 8UL), 8UL), 8UL, 0xD0CF0BC5L, 8UL, (VECTOR(uint32_t, 2))(0xD0CF0BC5L, 8UL), (VECTOR(uint32_t, 2))(0xD0CF0BC5L, 8UL), 0xD0CF0BC5L, 8UL, 0xD0CF0BC5L, 8UL);
                        VECTOR(int16_t, 4) l_621 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L));
                        VECTOR(int16_t, 2) l_626 = (VECTOR(int16_t, 2))(0x6905L, 0x4AD6L);
                        uint8_t *l_632 = (void*)0;
                        uint8_t *l_633 = &l_497;
                        int i;
                        l_609 = &l_523;
                        l_635 = ((safe_add_func_int64_t_s_s(0L, (((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 4))(l_612.sa819)).xxyywwxzyzwwyxww, ((VECTOR(uint32_t, 2))(0xB4236810L, 0xBAB4877FL)).yyxyxxxxyyyxxxyx))).even ^ ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 2))(0xD8709B09C4309D13L, 0x88C14BBC17EBC061L)), (uint64_t)((*l_609) , (((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(p_1660->g_617.s3174)) && ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(0x5642L, ((VECTOR(int16_t, 2))(l_618.xy)), 0L, ((0x1622C1845580E425L <= (safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1660->group_1_offset, get_group_id(1), 10), 1))) != 0xB6A2L), ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 4))(3L, 0x58CFL, (-10L), 8L)), ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(l_621.yxwxyzxwyzwxxxyy)).hi && ((VECTOR(int16_t, 4))(p_1660->g_622.s0377)).wyzxxzzx))).even))), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(0x0732L, ((~l_623) , (-8L)), (-2L), (-1L))) && ((VECTOR(int16_t, 16))(l_624.sf883da295dc5c2ac)).sf24f))).wxzyxyxx, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x063BL, 3L)), (-2L), (-6L))).xxwwwyxzxwyxwwyy <= ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(p_1660->g_625.xyyx)).odd, ((VECTOR(int16_t, 4))(l_626.yxxx)).odd))).yxxyxyxyyxxyxxyy))).lo))).s70 || ((VECTOR(int16_t, 2))((!((VECTOR(int16_t, 2))(l_627.xy)))))))), (-6L), (safe_div_func_uint32_t_u_u(((safe_mul_func_uint8_t_u_u(l_627.y, ((*l_633) = 255UL))) , (*l_609)), 0x526BCBE1L)), l_540, (-9L), (-10L))).s47, ((VECTOR(int16_t, 2))(0x0E6FL))))).xyxy))).xwxzwyyyzxyxxzxy && ((VECTOR(int16_t, 16))((-1L)))))).s1 >= p_1660->g_112.x))))).xyyx, ((VECTOR(uint64_t, 4))(0UL)), ((VECTOR(uint64_t, 4))(0x64FCFF2205771FCDL))))).wyxyyxwy, ((VECTOR(uint64_t, 8))(0x356A0040A74B2855L))))).s35 + ((VECTOR(uint64_t, 2))(18446744073709551615UL))))) + ((VECTOR(uint64_t, 2))(18446744073709551615UL))))).yxyyyyyy))).s7 != l_634))) == p_1660->g_285.s2);
                        return l_624.s8;
                    }
                }
            }
            l_605 = p_27;
        }
        (*p_1660->g_20) ^= (-1L);
    }
    return (*p_1660->g_222);
}


/* ------------------------------------------ */
/* 
 * reads : p_1660->g_48 p_1660->g_21 p_1660->g_64 p_1660->g_49 p_1660->g_84 p_1660->g_2 p_1660->g_39 p_1660->g_20 p_1660->g_130 p_1660->g_136 p_1660->g_149 p_1660->g_131 p_1660->g_245 p_1660->g_306 p_1660->g_110 p_1660->g_224 p_1660->g_170 p_1660->g_190 p_1660->g_222 p_1660->g_112 p_1660->g_178 p_1660->g_106 p_1660->g_367 p_1660->g_369 p_1660->g_153 p_1660->g_242 p_1660->g_409 p_1660->g_109 p_1660->g_414 p_1660->g_416 p_1660->g_113 p_1660->g_278
 * writes: p_1660->g_64 p_1660->g_84 p_1660->g_21 p_1660->g_131 p_1660->g_136 p_1660->g_178 p_1660->g_222 p_1660->g_224 p_1660->g_245 p_1660->g_306 p_1660->g_335 p_1660->g_190 p_1660->g_99 p_1660->g_416 p_1660->g_108
 */
uint16_t  func_29(int32_t * p_30, int16_t  p_31, int32_t  p_32, struct S0 * p_1660)
{ /* block id: 15 */
    uint32_t l_419 = 0xF8430DB9L;
    VECTOR(uint32_t, 16) l_447 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL), 4294967295UL, 1UL, 4294967295UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 1UL, 4294967295UL, 1UL, 4294967295UL);
    int32_t l_450 = 0x22CFCC0AL;
    int16_t *l_451 = (void*)0;
    uint32_t *l_452 = (void*)0;
    uint32_t *l_453 = &l_419;
    int32_t **l_454 = &p_1660->g_131;
    int32_t *l_455 = &p_1660->g_21[3][4];
    int32_t *l_456 = &p_1660->g_21[1][1];
    int32_t *l_457[8][6][5] = {{{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]}},{{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]}},{{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]}},{{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]}},{{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]}},{{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]}},{{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]}},{{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]},{(void*)0,&p_1660->g_21[1][2],&l_450,&p_1660->g_21[3][4],&p_1660->g_21[2][4]}}};
    int32_t l_458 = 0x280EEA9DL;
    uint32_t l_459[5];
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_459[i] = 7UL;
    for (p_32 = 0; (p_32 != 26); p_32 = safe_add_func_int32_t_s_s(p_32, 5))
    { /* block id: 18 */
        VECTOR(int32_t, 8) l_50 = (VECTOR(int32_t, 8))(0x65156BE8L, (VECTOR(int32_t, 4))(0x65156BE8L, (VECTOR(int32_t, 2))(0x65156BE8L, 7L), 7L), 7L, 0x65156BE8L, 7L);
        VECTOR(int32_t, 4) l_51 = (VECTOR(int32_t, 4))(0x025B0D6BL, (VECTOR(int32_t, 2))(0x025B0D6BL, 2L), 2L);
        VECTOR(int8_t, 4) l_56 = (VECTOR(int8_t, 4))(0x59L, (VECTOR(int8_t, 2))(0x59L, 0x75L), 0x75L);
        int32_t *l_61 = &p_1660->g_21[3][4];
        int32_t **l_60 = &l_61;
        int64_t *l_334 = &p_1660->g_335;
        uint32_t *l_428 = &p_1660->g_224;
        uint8_t l_429[7][4] = {{255UL,0x72L,249UL,254UL},{255UL,0x72L,249UL,254UL},{255UL,0x72L,249UL,254UL},{255UL,0x72L,249UL,254UL},{255UL,0x72L,249UL,254UL},{255UL,0x72L,249UL,254UL},{255UL,0x72L,249UL,254UL}};
        VECTOR(int32_t, 4) l_440 = (VECTOR(int32_t, 4))(0x7E4101ECL, (VECTOR(int32_t, 2))(0x7E4101ECL, (-8L)), (-8L));
        int i, j;
        (*l_60) = (((VECTOR(int32_t, 2))(p_1660->g_39.s52)).even , func_40(&p_1660->g_21[3][4], func_44(p_1660->g_48, (&p_1660->g_21[3][4] != ((~((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_50.s1170317523171425)).s02 && ((VECTOR(int32_t, 2))(0x1B9B9640L, 0x23E2BE8CL))))).xxxxyxyxyxxxyyxy && ((VECTOR(int32_t, 4))(l_51.xwwz)).yxwzxwzzxyzxzxzy))).s7) , ((*l_60) = func_52(((((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(l_56.zx)).odd, 5)) <= ((VECTOR(uint16_t, 2))(0x04FEL, 0xDF49L)).lo) <= 0x6A10B913L) == 0x1D8DL), p_1660)))), &p_1660->g_21[3][4], p_1660), (+(((*l_334) = p_1660->g_110.s1) < 0x6052118186001585L)), p_1660));
        (*p_30) = l_419;
        l_450 |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((-1L), (l_419 , (l_419 , (safe_rshift_func_uint16_t_u_s((safe_sub_func_int8_t_s_s((safe_div_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(((*l_428) |= p_32), (l_429[1][0] , (~((p_32 , (safe_sub_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_s(((((safe_add_func_uint16_t_u_u(((&l_61 == &l_61) == (safe_rshift_func_int16_t_s_s((((~(safe_rshift_func_uint16_t_u_u((6UL || (((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 16))(l_440.zxxyxwyzzyzwyxyy)).s0ebc, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(l_447.s1bebe43a)).s2214023711761225 & ((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 8))(((p_1660->g_108.sa = p_32) || p_31), 5UL, 4294967294UL, 0xAB512822L, p_1660->g_414, 0x2916C07DL, 0x04039A90L, 0x82DE5E30L)), ((VECTOR(uint32_t, 8))(1UL))))).s5646056575071576 + ((VECTOR(uint32_t, 16))(4294967295UL))))), ((VECTOR(uint32_t, 16))(0x5823189EL)))))))).s0213 + ((VECTOR(uint32_t, 4))(0x93218995L))))).even + ((VECTOR(uint32_t, 2))(4294967295UL))))).xxxx + ((VECTOR(uint32_t, 4))(0x763C09B0L)))))))).z & p_31)), 14))) ^ p_31) < 4294967290UL), p_31))), p_1660->g_49)) >= l_447.sb) & p_32) , p_1660->g_113.s1), 1)) | l_419), l_419))) && p_32))))), p_31)), p_32)), 15)))), 0x780917E5L, 0x0D0232C4L)).yyyxyyww < ((VECTOR(int32_t, 8))(0x48B419E0L))))), (-9L), ((VECTOR(int32_t, 4))(0x019424C8L)), ((VECTOR(int32_t, 2))(2L)), (-1L))).s8;
    }
    p_30 = (void*)0;
    (*l_454) = func_40(&l_450, l_451, ((*l_453) |= 4294967295UL), p_1660);
    ++l_459[1];
    return p_1660->g_278.s7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1660->g_224 p_1660->g_170 p_1660->g_149 p_1660->g_190 p_1660->g_222 p_1660->g_136 p_1660->g_48 p_1660->g_49 p_1660->g_112 p_1660->g_20 p_1660->g_21 p_1660->g_178 p_1660->g_106 p_1660->g_367 p_1660->g_369 p_1660->g_153 p_1660->g_242 p_1660->g_409 p_1660->g_109 p_1660->g_414 p_1660->g_416
 * writes: p_1660->g_224 p_1660->g_190 p_1660->g_99 p_1660->g_21 p_1660->g_178 p_1660->g_136 p_1660->g_416
 */
int32_t * func_40(int32_t * p_41, int16_t * p_42, uint32_t  p_43, struct S0 * p_1660)
{ /* block id: 107 */
    uint32_t *l_336 = &p_1660->g_224;
    uint8_t *l_344 = (void*)0;
    int32_t l_345[7][1][1] = {{{0x1CDC7BFCL}},{{0x1CDC7BFCL}},{{0x1CDC7BFCL}},{{0x1CDC7BFCL}},{{0x1CDC7BFCL}},{{0x1CDC7BFCL}},{{0x1CDC7BFCL}}};
    uint8_t **l_346[7];
    uint8_t *l_347 = (void*)0;
    int32_t *l_348 = &l_345[5][0][0];
    int32_t *l_349 = (void*)0;
    int32_t *l_350[10][5][5] = {{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}},{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}},{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}},{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}},{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}},{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}},{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}},{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}},{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}},{{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0},{&p_1660->g_21[1][4],(void*)0,(void*)0,&l_345[3][0][0],(void*)0}}};
    uint32_t l_351 = 4294967295UL;
    VECTOR(int16_t, 4) l_372 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x5173L), 0x5173L);
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_346[i] = &p_1660->g_190[0][1];
    (*p_1660->g_20) &= (((*l_336)--) <= (p_43 < (((safe_div_func_int64_t_s_s((safe_sub_func_uint64_t_u_u((((safe_unary_minus_func_int8_t_s((~(((p_1660->g_99.se = (l_344 != ((l_345[3][0][0] & ((((p_1660->g_170.x > (-1L)) && p_1660->g_149.sd) , (l_347 = l_344)) == (void*)0)) , (p_1660->g_190[0][1] = p_1660->g_190[1][1])))) ^ l_345[3][0][0]) < 0UL)))) , 65535UL) ^ l_345[4][0][0]), 0x43BF1932CB056634L)), (*p_1660->g_222))) < (*p_1660->g_48)) | p_1660->g_112.x)));
    l_351++;
    for (p_43 = 0; (p_43 < 46); p_43 = safe_add_func_uint16_t_u_u(p_43, 1))
    { /* block id: 116 */
        uint32_t l_356[8][4] = {{0x745DF2E2L,4294967288UL,0x745DF2E2L,0x745DF2E2L},{0x745DF2E2L,4294967288UL,0x745DF2E2L,0x745DF2E2L},{0x745DF2E2L,4294967288UL,0x745DF2E2L,0x745DF2E2L},{0x745DF2E2L,4294967288UL,0x745DF2E2L,0x745DF2E2L},{0x745DF2E2L,4294967288UL,0x745DF2E2L,0x745DF2E2L},{0x745DF2E2L,4294967288UL,0x745DF2E2L,0x745DF2E2L},{0x745DF2E2L,4294967288UL,0x745DF2E2L,0x745DF2E2L},{0x745DF2E2L,4294967288UL,0x745DF2E2L,0x745DF2E2L}};
        int32_t *l_357 = &p_1660->g_21[2][3];
        VECTOR(int16_t, 16) l_371 = (VECTOR(int16_t, 16))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 1L), 1L), 1L, (-3L), 1L, (VECTOR(int16_t, 2))((-3L), 1L), (VECTOR(int16_t, 2))((-3L), 1L), (-3L), 1L, (-3L), 1L);
        int32_t l_377 = 1L;
        int32_t l_398 = 0L;
        int32_t l_401 = 0x498993C5L;
        int32_t l_402 = (-1L);
        int32_t l_404[9];
        int8_t *l_408 = (void*)0;
        int i, j;
        for (i = 0; i < 9; i++)
            l_404[i] = 0x544C5EDDL;
        p_41 = (void*)0;
        l_357 = func_52(l_356[3][1], p_1660);
        for (p_1660->g_178 = 19; (p_1660->g_178 == 56); p_1660->g_178 = safe_add_func_int16_t_s_s(p_1660->g_178, 1))
        { /* block id: 121 */
            VECTOR(int16_t, 4) l_368 = (VECTOR(int16_t, 4))(0x10E7L, (VECTOR(int16_t, 2))(0x10E7L, 0x1019L), 0x1019L);
            int32_t l_379 = 1L;
            int32_t l_394 = 0x539D4FFBL;
            int32_t l_396 = 0x3F4C3F71L;
            int32_t l_397[3][9] = {{6L,6L,1L,0x16980C13L,(-1L),0x326DF625L,0x44B013C2L,0L,0x44B013C2L},{6L,6L,1L,0x16980C13L,(-1L),0x326DF625L,0x44B013C2L,0L,0x44B013C2L},{6L,6L,1L,0x16980C13L,(-1L),0x326DF625L,0x44B013C2L,0L,0x44B013C2L}};
            uint16_t l_405[9][10];
            int i, j;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 10; j++)
                    l_405[i][j] = 0xD03DL;
            }
            for (p_1660->g_136 = 1; (p_1660->g_136 >= 5); p_1660->g_136++)
            { /* block id: 124 */
                int64_t l_362[7] = {0x3BD3EDEFB579E50EL,0x4714A1D2426275EEL,0x3BD3EDEFB579E50EL,0x3BD3EDEFB579E50EL,0x4714A1D2426275EEL,0x3BD3EDEFB579E50EL,0x3BD3EDEFB579E50EL};
                VECTOR(int16_t, 4) l_370 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x43E3L), 0x43E3L);
                VECTOR(int16_t, 16) l_373 = (VECTOR(int16_t, 16))(0x7B42L, (VECTOR(int16_t, 4))(0x7B42L, (VECTOR(int16_t, 2))(0x7B42L, 0x1E21L), 0x1E21L), 0x1E21L, 0x7B42L, 0x1E21L, (VECTOR(int16_t, 2))(0x7B42L, 0x1E21L), (VECTOR(int16_t, 2))(0x7B42L, 0x1E21L), 0x7B42L, 0x1E21L, 0x7B42L, 0x1E21L);
                int8_t *l_376 = (void*)0;
                uint64_t *l_378[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_382 = 0x4E53D085L;
                int32_t l_393 = 1L;
                int32_t l_395 = 0x4CC78D0EL;
                int32_t l_399 = (-6L);
                int32_t l_400 = 0x55A4FB33L;
                int8_t l_403 = 0x27L;
                int32_t **l_411 = &l_350[1][4][4];
                int i;
                (*l_411) = (p_1660->g_106.y , func_52((l_362[3] < (((~((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(2UL, 0x7CF0L)), 7UL, 65527UL)).hi + ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(0x09AEL, (((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(8L, (-6L), (((+0x25CDEC8486329C23L) , (((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 16))(p_1660->g_367.xyyxyyyyyxyyxxyx)).odd, ((VECTOR(int16_t, 8))(l_368.xzxwwxxy))))).s27 && ((VECTOR(int16_t, 8))(p_1660->g_369.xxyyyyxx)).s30))).yxxyxxyx, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(l_370.wxyy)).zxxxwwwzwzzxyyww && ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(l_371.sa20fac9713a9ae3b)).s41, (int16_t)((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 2))(l_372.ww)).xxyx, ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x115DL, 6L)), ((VECTOR(int16_t, 4))(l_373.s4bf1)), l_373.s9, ((l_379 = (safe_lshift_func_int8_t_s_s(p_43, (l_377 = p_1660->g_153.z)))) != ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(0x36F921DAD43068E4L, 18446744073709551615UL, 0x0AF7ECBE74032515L, 3UL)), (safe_add_func_uint8_t_u_u((l_382 &= FAKE_DIVERGE(p_1660->local_0_offset, get_local_id(0), 10)), (((safe_sub_func_uint8_t_u_u((GROUP_DIVERGE(2, 1) || (((safe_mul_func_uint16_t_u_u(p_43, (safe_mod_func_uint32_t_u_u((!((*l_336) &= (((safe_add_func_int64_t_s_s((safe_add_func_int16_t_s_s((((FAKE_DIVERGE(p_1660->global_0_offset, get_global_id(0), 10) & (--l_405[6][8])) , l_408) == (void*)0), 9L)), 0L)) >= l_368.x) & p_1660->g_242.y))), (*p_1660->g_20))))) | (*p_1660->g_222)) >= 0x6E2FL)), 0UL)) , (-5L)) < p_1660->g_409[0][1]))), 0xDF5C452818D0B2ADL, 0UL, 18446744073709551615UL, FAKE_DIVERGE(p_1660->global_0_offset, get_global_id(0), 10), 0x2BAB2826A2A6D4D7L, ((VECTOR(uint64_t, 4))(0x87B877A946AB5688L)), 18446744073709551615UL, 0x4522039A7DA542E6L)).s1), 5L, 0L, 0L, (-3L), (*p_1660->g_48), ((VECTOR(int16_t, 2))(0x784DL)), 0x58C6L)).lo, (int16_t)(*p_1660->g_48)))).odd))).z))).yxyyxyxyyyyyyyyx))).s3c, ((VECTOR(int16_t, 2))((-1L)))))), ((VECTOR(int16_t, 2))(0x430BL)), ((VECTOR(int16_t, 2))(0x5667L)), ((VECTOR(int16_t, 4))(0x6F15L)), ((VECTOR(int16_t, 4))(0x73FFL)), 0x15B6L, 0x09EBL)).lo && ((VECTOR(int16_t, 8))(0x56C1L))))).s0442553021001350))).even))).s5 != 0x710BL)) , p_43), p_43, 0x1DBFE411455A9D6CL, ((VECTOR(int64_t, 2))(0x60A15EC678017136L)), ((VECTOR(int64_t, 2))((-5L))), p_1660->g_109.y, (-4L), ((VECTOR(int64_t, 2))(1L)), 0x6F2009437A9436D0L, 1L, 0x024BCD78D189A2C8L)).s25, ((VECTOR(int64_t, 2))((-3L))), ((VECTOR(int64_t, 2))(0x082987BC694B9DCDL))))).even , p_43), 8UL, 0UL, ((VECTOR(uint16_t, 2))(0UL)), 0x90BBL, 0x9FFFL)).lo + ((VECTOR(uint16_t, 4))(6UL))))).odd))), 0xA45AL, 65528UL)).y) < p_43) ^ 0UL)), p_1660));
            }
            return p_41;
        }
        for (l_351 = 0; (l_351 <= 44); ++l_351)
        { /* block id: 136 */
            int64_t l_415 = 0L;
            if (p_1660->g_414)
                break;
            --p_1660->g_416;
        }
    }
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_1660->g_21 p_1660->g_64 p_1660->g_49 p_1660->g_84 p_1660->g_2 p_1660->g_48 p_1660->g_39 p_1660->g_20 p_1660->g_130 p_1660->g_136 p_1660->g_99 p_1660->g_149 p_1660->g_153 p_1660->g_170 p_1660->g_101 p_1660->g_171 p_1660->g_173 p_1660->g_131 p_1660->g_106 p_1660->g_109 p_1660->g_190 p_1660->g_198 p_1660->g_242 p_1660->g_110 p_1660->g_224 p_1660->g_245 p_1660->g_278 p_1660->g_285 p_1660->g_290 p_1660->g_306 p_1660->g_309 p_1660->g_222 p_1660->g_113 p_1660->g_332 p_1660->g_100 p_1660->g_108 p_1660->g_112 p_1660->g_114 p_1660->g_121 p_1660->g_122
 * writes: p_1660->g_64 p_1660->g_84 p_1660->g_21 p_1660->g_131 p_1660->g_136 p_1660->g_99 p_1660->g_178 p_1660->g_121 p_1660->g_198 p_1660->g_222 p_1660->g_224 p_1660->g_109 p_1660->g_245 p_1660->g_49 p_1660->g_306
 */
int16_t * func_44(int16_t * p_45, int64_t  p_46, int32_t * p_47, struct S0 * p_1660)
{ /* block id: 23 */
    int32_t *l_62 = (void*)0;
    int32_t *l_63 = &p_1660->g_64;
    int32_t l_80[10][4] = {{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L},{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L},{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L},{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L},{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L},{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L},{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L},{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L},{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L},{0x3B115E53L,0x01E83513L,0x3B115E53L,0x3B115E53L}};
    VECTOR(int8_t, 8) l_111 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
    VECTOR(int64_t, 8) l_124 = (VECTOR(int64_t, 8))(0x2B698699BF897C6CL, (VECTOR(int64_t, 4))(0x2B698699BF897C6CL, (VECTOR(int64_t, 2))(0x2B698699BF897C6CL, 1L), 1L), 1L, 0x2B698699BF897C6CL, 1L);
    VECTOR(int32_t, 16) l_168 = (VECTOR(int32_t, 16))(0x39C54343L, (VECTOR(int32_t, 4))(0x39C54343L, (VECTOR(int32_t, 2))(0x39C54343L, 1L), 1L), 1L, 0x39C54343L, 1L, (VECTOR(int32_t, 2))(0x39C54343L, 1L), (VECTOR(int32_t, 2))(0x39C54343L, 1L), 0x39C54343L, 1L, 0x39C54343L, 1L);
    VECTOR(int32_t, 16) l_169 = (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 1L), 1L), 1L, (-3L), 1L, (VECTOR(int32_t, 2))((-3L), 1L), (VECTOR(int32_t, 2))((-3L), 1L), (-3L), 1L, (-3L), 1L);
    VECTOR(int32_t, 4) l_172 = (VECTOR(int32_t, 4))(0x72776EE6L, (VECTOR(int32_t, 2))(0x72776EE6L, 0x364F287FL), 0x364F287FL);
    uint16_t l_243 = 65535UL;
    uint16_t l_244 = 0x2965L;
    VECTOR(int32_t, 4) l_259 = (VECTOR(int32_t, 4))(0x7D3D6E6AL, (VECTOR(int32_t, 2))(0x7D3D6E6AL, 0x27D16AB6L), 0x27D16AB6L);
    VECTOR(uint8_t, 2) l_273 = (VECTOR(uint8_t, 2))(0x65L, 0x61L);
    uint16_t *l_289 = &l_244;
    uint16_t **l_288 = &l_289;
    int8_t l_295 = (-9L);
    VECTOR(int64_t, 2) l_300 = (VECTOR(int64_t, 2))(1L, 0x7B67EE0DE53070BCL);
    VECTOR(int64_t, 8) l_301 = (VECTOR(int64_t, 8))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x70A8BB9C00E7AFA8L), 0x70A8BB9C00E7AFA8L), 0x70A8BB9C00E7AFA8L, 3L, 0x70A8BB9C00E7AFA8L);
    int i, j;
    if (((*l_63) |= (!(*p_47))))
    { /* block id: 25 */
        int32_t l_69 = 0x2C6914F0L;
        int16_t *l_83 = &p_1660->g_84;
        int32_t l_85 = (-8L);
        VECTOR(int8_t, 4) l_107 = (VECTOR(int8_t, 4))(0x75L, (VECTOR(int8_t, 2))(0x75L, 0L), 0L);
        VECTOR(int16_t, 4) l_123 = (VECTOR(int16_t, 4))(0x0A54L, (VECTOR(int16_t, 2))(0x0A54L, (-1L)), (-1L));
        int8_t *l_127 = (void*)0;
        int8_t *l_128[5][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
        VECTOR(uint8_t, 2) l_146 = (VECTOR(uint8_t, 2))(0x96L, 255UL);
        VECTOR(uint8_t, 8) l_156 = (VECTOR(uint8_t, 8))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0x80L), 0x80L), 0x80L, 3UL, 0x80L);
        uint8_t *l_192[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int32_t l_205 = 0x783E5766L;
        int32_t l_209 = 1L;
        VECTOR(int32_t, 16) l_210 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-9L)), (-9L)), (-9L), (-1L), (-9L), (VECTOR(int32_t, 2))((-1L), (-9L)), (VECTOR(int32_t, 2))((-1L), (-9L)), (-1L), (-9L), (-1L), (-9L));
        VECTOR(int32_t, 16) l_260 = (VECTOR(int32_t, 16))(0x6F0D657BL, (VECTOR(int32_t, 4))(0x6F0D657BL, (VECTOR(int32_t, 2))(0x6F0D657BL, 0x47FB1189L), 0x47FB1189L), 0x47FB1189L, 0x6F0D657BL, 0x47FB1189L, (VECTOR(int32_t, 2))(0x6F0D657BL, 0x47FB1189L), (VECTOR(int32_t, 2))(0x6F0D657BL, 0x47FB1189L), 0x6F0D657BL, 0x47FB1189L, 0x6F0D657BL, 0x47FB1189L);
        uint16_t **l_293 = (void*)0;
        int32_t *l_302 = (void*)0;
        int32_t *l_303 = &p_1660->g_21[0][1];
        int32_t *l_304[7][9][4] = {{{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205}},{{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205}},{{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205}},{{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205}},{{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205}},{{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205}},{{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205},{(void*)0,(void*)0,(void*)0,&l_205}}};
        int8_t l_305 = 0x4AL;
        int i, j, k;
        l_85 ^= (safe_add_func_int8_t_s_s(((safe_mul_func_int64_t_s_s(l_69, (((+((safe_div_func_int32_t_s_s((safe_mod_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_u((p_1660->g_21[3][4] > ((safe_add_func_uint8_t_u_u(l_69, (safe_mod_func_int8_t_s_s(((l_80[5][2] & ((0x70A6L <= (safe_lshift_func_int16_t_s_u((-1L), ((*p_45) <= ((((VECTOR(int16_t, 2))(8L, 0x3887L)).lo && ((*l_63) = ((*l_83) &= 0x322FL))) | ((1L == p_1660->g_2) != (*p_45))))))) , p_1660->g_21[2][3])) < 0x2663943E1243B3BEL), 1L)))) >= (*p_1660->g_48))), p_1660->g_39.s7)), p_46)), p_46)) , p_1660->g_49)) || p_1660->g_21[1][1]) != 0x09F62D42CB0EA5CDL))) , p_1660->g_21[3][4]), p_46));
        for (p_1660->g_64 = 8; (p_1660->g_64 == (-10)); p_1660->g_64 = safe_sub_func_uint32_t_u_u(p_1660->g_64, 7))
        { /* block id: 31 */
            if ((*p_1660->g_20))
                break;
            for (l_69 = 0; (l_69 >= 24); l_69 = safe_add_func_int16_t_s_s(l_69, 8))
            { /* block id: 35 */
                int32_t l_90 = (-2L);
                (*p_47) = l_90;
            }
            (*p_47) |= 0x535ACB96L;
        }
        if (((safe_sub_func_uint64_t_u_u((((void*)0 != &l_80[5][2]) & FAKE_DIVERGE(p_1660->global_0_offset, get_global_id(0), 10)), p_46)) > ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(0UL, 0x57L)) + ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(0x3BL, 0x0DL)).yxxyyxyy + ((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 8))(p_1660->g_99.s77dd35ab)).odd, ((VECTOR(uint8_t, 8))((((0x252ACEB1L & ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 4))(p_1660->g_100.xxyx)).zwyzxwywxwzzwwyw))).odd ^ ((VECTOR(int32_t, 16))(0x188BF30EL, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))((-8L), 0x064356B1L)).yyxyyxyy, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(p_1660->g_101.xxzw)).lo))).yxyyxxyy | ((VECTOR(int32_t, 4))(0x3322AC55L, 0x586B6604L, 1L, 0x11BAA844L)).wxxzxzxx))), ((VECTOR(int32_t, 8))(1L, 1L, 0x1F2DD615L, ((safe_sub_func_int8_t_s_s(((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(((safe_sub_func_uint32_t_u_u((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(p_1660->g_106.yyyxxyyyxyyxyyyy)).sf4 && ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(1L, p_1660->g_101.x, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(0x7AL, 0x44L, ((VECTOR(int8_t, 2))((-1L), 0x42L)), ((VECTOR(int8_t, 2))(l_107.wz)), 0x54L, 0x57L)).even && ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))(p_1660->g_108.s35)).xyyxyyxyyxyxxxyy, ((VECTOR(int8_t, 4))(p_1660->g_109.wzzz)).zyyzxwxyywzyxwzx, ((VECTOR(int8_t, 4))(p_1660->g_110.s2250)).ywzzyxxyyyzyywxw))).s1309 & ((VECTOR(int8_t, 2))(l_111.s53)).xxyx))), ((VECTOR(int8_t, 2))(0x1EL, (-1L))).yxyx)))))) > ((VECTOR(int8_t, 8))(p_1660->g_112.xxyyyxyy)).hi))), 0L, 3L)).s2141132175067410 >= ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 16))(p_1660->g_113.s6371432661467264)).s8a69, ((VECTOR(int8_t, 2))(0x22L, 1L)).yxxy))).zyyyyxwx && ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 2))(p_1660->g_114.yx)).xxyx, ((VECTOR(int8_t, 4))((-8L), ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(0x51L, 0x40L)).xyyy <= ((VECTOR(int8_t, 16))((safe_rshift_func_int8_t_s_s((safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((((~((VECTOR(uint16_t, 16))(p_1660->g_121.yyxxxxxxxyyyxyyx)).s2) > ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 2))(p_1660->g_122.s25)).xxxx, ((VECTOR(int16_t, 16))(l_123.xxwwyxwxzxyyywyw)).s92f1))).w) , p_46), p_46)), FAKE_DIVERGE(p_1660->global_1_offset, get_global_id(1), 10))), (((*l_63) = (l_85 = (((VECTOR(int64_t, 16))(l_124.s1427342055424036)).s1 & (safe_div_func_int64_t_s_s(p_46, p_1660->g_21[3][4]))))) >= 1L))), ((VECTOR(int8_t, 4))((-2L))), 0x79L, p_46, ((VECTOR(int8_t, 8))(0L)), 0L)).s665f))).odd, (int8_t)p_1660->g_114.x, (int8_t)p_46))), (-3L)))))), 0L, p_46, 0x22L, 0x20L)).s60, ((VECTOR(int8_t, 2))(2L))))).xxxxxyxx))), ((VECTOR(int8_t, 8))(0x35L))))).lo, (int8_t)(*l_63)))).yyzxwyyywzzywzyy))).s46))).lo < FAKE_DIVERGE(p_1660->global_1_offset, get_global_id(1), 10)), 4294967291UL)) || p_1660->g_112.y), p_1660->g_64, ((VECTOR(int64_t, 4))(6L)), 0x7DBCC2C37AD79404L, 0x6FAEDB3878E06A8BL)) && ((VECTOR(int64_t, 8))(0x183DA37F1ACA1152L))))).s2 <= p_1660->g_101.y) <= p_1660->g_109.y), 0x21L)) > p_1660->g_108.sf), 0L, (*p_1660->g_20), 0x5DE67BC5L, 0x7163CAD6L))))).s4176206665464533, ((VECTOR(int32_t, 16))(7L))))).scefa <= ((VECTOR(int32_t, 4))(0x0F5FC00AL))))).y, ((VECTOR(int32_t, 2))(0x5B8B1024L)), 0x4326A3C1L)), ((VECTOR(int32_t, 4))(0x44C03F3CL)), 0x0E1F83D2L, 1L, 0x2D19084CL, ((VECTOR(int32_t, 2))((-9L))), (-6L), 0x0E6B6787L)).lo))), (int32_t)(-10L)))).s14, ((VECTOR(int32_t, 2))(1L))))).odd) , l_83) != p_45), l_69, 9UL, 0xA9L, 0x6BL, p_1660->g_121.x, 250UL, 254UL)).lo))).wzxxzxxy))).s74 ^ ((VECTOR(uint8_t, 2))(0xAFL)))))))), 0x75L, 0x90L)).lo + ((VECTOR(uint8_t, 2))(6UL))))), 0x2FL, 1UL, ((VECTOR(uint8_t, 4))(1UL)))).s0))
        { /* block id: 42 */
lbl_246:
            (*p_47) = (*p_47);
            return l_83;
        }
        else
        { /* block id: 45 */
            int32_t *l_129 = &p_1660->g_21[0][0];
            uint64_t *l_134 = (void*)0;
            uint64_t *l_135 = &p_1660->g_136;
            uint8_t l_163 = 0xAFL;
            VECTOR(int32_t, 16) l_184 = (VECTOR(int32_t, 16))(0x63024330L, (VECTOR(int32_t, 4))(0x63024330L, (VECTOR(int32_t, 2))(0x63024330L, (-1L)), (-1L)), (-1L), 0x63024330L, (-1L), (VECTOR(int32_t, 2))(0x63024330L, (-1L)), (VECTOR(int32_t, 2))(0x63024330L, (-1L)), 0x63024330L, (-1L), 0x63024330L, (-1L));
            int32_t l_212 = 0x120EB86FL;
            uint16_t *l_229[9][6][4] = {{{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198}},{{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198}},{{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198}},{{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198}},{{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198}},{{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198}},{{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198}},{{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198}},{{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198},{(void*)0,&p_1660->g_198,&p_1660->g_198,&p_1660->g_198}}};
            VECTOR(int64_t, 16) l_240 = (VECTOR(int64_t, 16))(7L, (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, 0x05C985D935837ADBL), 0x05C985D935837ADBL), 0x05C985D935837ADBL, 7L, 0x05C985D935837ADBL, (VECTOR(int64_t, 2))(7L, 0x05C985D935837ADBL), (VECTOR(int64_t, 2))(7L, 0x05C985D935837ADBL), 7L, 0x05C985D935837ADBL, 7L, 0x05C985D935837ADBL);
            VECTOR(int32_t, 4) l_299 = (VECTOR(int32_t, 4))(0x4D643D6FL, (VECTOR(int32_t, 2))(0x4D643D6FL, (-3L)), (-3L));
            int i, j, k;
            l_85 ^= (*p_47);
            (*l_63) |= (*p_1660->g_20);
            (*p_1660->g_130) = l_129;
            if (((p_46 ^ (safe_lshift_func_uint16_t_u_s((((*l_135) &= p_46) < 1L), 9))) , (*l_129)))
            { /* block id: 50 */
                uint8_t *l_143[9][9][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                VECTOR(uint8_t, 2) l_150 = (VECTOR(uint8_t, 2))(0x47L, 0xD4L);
                int16_t l_174 = 1L;
                int32_t *l_179 = (void*)0;
                int32_t l_211 = 0x26057AC4L;
                int32_t l_213 = 0x67CCF848L;
                int32_t l_214 = 0x38BD618FL;
                uint64_t l_219 = 0x24F6860CB6A6315EL;
                VECTOR(uint32_t, 2) l_233 = (VECTOR(uint32_t, 2))(7UL, 0x2A1E6206L);
                VECTOR(uint32_t, 16) l_234 = (VECTOR(uint32_t, 16))(0x55B83F95L, (VECTOR(uint32_t, 4))(0x55B83F95L, (VECTOR(uint32_t, 2))(0x55B83F95L, 0xC7869FA1L), 0xC7869FA1L), 0xC7869FA1L, 0x55B83F95L, 0xC7869FA1L, (VECTOR(uint32_t, 2))(0x55B83F95L, 0xC7869FA1L), (VECTOR(uint32_t, 2))(0x55B83F95L, 0xC7869FA1L), 0x55B83F95L, 0xC7869FA1L, 0x55B83F95L, 0xC7869FA1L);
                VECTOR(int32_t, 2) l_241 = (VECTOR(int32_t, 2))(0x22B792B4L, 0x6005B330L);
                int16_t l_251 = 0L;
                uint32_t l_256 = 0x95491259L;
                int i, j, k;
                if (((+((*l_135)--)) ^ (safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 2))(0x23L, 0x2DL)).xxyxxyyx, ((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(5UL, 2UL, ((-2L) != p_1660->g_64), (--p_1660->g_99.s0), 0xB0L, 0xEBL, 0xF0L, 0UL)).hi + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(l_146.yyxxxyyx)).s6257746270436606 ^ ((VECTOR(uint8_t, 8))(0xA3L, 0x47L, 1UL, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(p_1660->g_149.s72c5e541)).s66 + ((VECTOR(uint8_t, 8))(l_150.yyxyxxxx)).s52))), ((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 4))(p_1660->g_153.zwxx)), ((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 4))(1UL, 0xA7L, 0x35L, 4UL)), ((VECTOR(uint8_t, 2))(0UL, 0xCEL)).xxyy)))))).xzxxxwwy + ((VECTOR(uint8_t, 2))(0x98L, 0xE7L)).yyxyxyyy))).s32, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(l_156.s6225)).xwyyzwyyzxzzxywz + ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 4))((safe_div_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_u((((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 8))(65535UL, (l_163 == (((*l_129) = ((safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s(((((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_168.s9027d05eb35affd8)).even, ((VECTOR(int32_t, 2))(0x28D5863DL, (-2L))).xyyyxxyy, ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(l_169.sa255aa24)).s36 && ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x755769E9L, 0L)), (*p_47), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(p_1660->g_170.yx)).yyyyyxxx, (int32_t)((p_1660->g_101.z , &p_47) == &l_62)))).s34, ((VECTOR(int32_t, 8))(p_1660->g_171.s77303224)).s00, ((VECTOR(int32_t, 4))(0x49682236L, ((VECTOR(int32_t, 2))(l_172.zy)), 0x3C508AB7L)).even))).xyyy && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(p_1660->g_173.s1476eeae)).s37, ((VECTOR(int32_t, 4))(0x6223FE2AL, 0x43956D99L, 0x1E6C6DA6L, (-1L))).lo, ((VECTOR(int32_t, 2))((-10L)))))).xyyxxxxyxxxxxxyy <= ((VECTOR(int32_t, 16))(1L))))).s4141))).z, ((VECTOR(int32_t, 4))((-3L))), 0x3217F77EL, 0x6E4A1601L, 7L, ((VECTOR(int32_t, 4))(1L)), 0x5DD9E29BL)).sa9, (int32_t)(*p_1660->g_131)))), 0x57C44D82L, 0L)).lo))).yyxy && ((VECTOR(int32_t, 4))(0x1951ACACL))))) == ((VECTOR(int32_t, 4))(3L))))), (-1L), ((VECTOR(int32_t, 2))(0x50790A60L)), 1L)).s6572512446057074 && ((VECTOR(int32_t, 16))((-8L)))))).s3f63 >= ((VECTOR(int32_t, 4))(0L))))).zzzwzwzwyyxyyzwz, ((VECTOR(int32_t, 16))((-1L)))))).even))).s3106137126347451, ((VECTOR(int32_t, 16))((-5L))), ((VECTOR(int32_t, 16))(0L))))).s3 || (*p_1660->g_20)) , p_1660->g_84), p_1660->g_106.y)), 3)) <= 0x45L)) && (*l_129))), ((VECTOR(uint16_t, 4))(1UL)), 7UL, 0xC29FL)).s4664472526361631, ((VECTOR(uint16_t, 16))(0x3BC1L))))).sd == (-6L)), 13)) || 0x76L), l_174)), 0xDCL, 255UL, 255UL)), (uint8_t)p_1660->g_109.z))).lo - ((VECTOR(uint8_t, 2))(0x2EL))))).yyxyxyxyxyxxxxxy))).s09))), 252UL, 0UL)).wyyyxwwyxyxyzwxz, ((VECTOR(uint8_t, 16))(255UL))))).s9, 0x68L, 1UL)).s0264552200064470))).s659c))).hi & ((VECTOR(uint8_t, 2))(0xCFL)))))))).xyxxyyxy))).s4633066137027135, ((VECTOR(uint8_t, 16))(249UL))))).s3, p_1660->g_149.s3))))
                { /* block id: 54 */
                    uint32_t *l_177 = &p_1660->g_178;
                    int32_t **l_181 = &l_129;
                    uint8_t *l_189 = (void*)0;
                    uint8_t **l_191 = (void*)0;
                    uint16_t *l_193 = (void*)0;
                    uint16_t *l_194 = (void*)0;
                    uint16_t *l_197[1];
                    uint8_t *l_199 = (void*)0;
                    uint8_t *l_200 = (void*)0;
                    int32_t l_208[6][5][2] = {{{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L}},{{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L}},{{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L}},{{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L}},{{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L}},{{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L},{0x0212D132L,0x003BC4A1L}}};
                    uint8_t l_215[3][10][5] = {{{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L}},{{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L}},{{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L},{0x37L,0x72L,6UL,4UL,0x39L}}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_197[i] = &p_1660->g_198;
                    (*l_181) = (((*l_177) = (safe_sub_func_uint8_t_u_u(((3UL < ((void*)0 == l_129)) == (p_46 & ((l_174 || (**p_1660->g_130)) > 0x6FL))), 0x4AL))) , l_179);
                    if (((safe_sub_func_uint16_t_u_u((p_1660->g_21[0][3] <= ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_184.s7824)).xzwywxxy, ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))((~((VECTOR(int32_t, 8))((((p_1660->g_2 | (p_1660->g_121.y = (safe_lshift_func_int16_t_s_s((((65532UL < p_46) & p_1660->g_101.z) >= ((l_189 = l_127) != (l_192[1][0] = (l_143[4][6][2] = p_1660->g_190[0][1])))), 12)))) , p_46) & (+(l_85 = ((((((p_1660->g_198 &= (safe_div_func_int8_t_s_s(0x51L, 0x61L))) >= l_123.z) & 0x0133E97BL) < 0UL) < 0x6A6F619964F89DE4L) != p_1660->g_64)))), ((VECTOR(int32_t, 2))(4L)), 6L, (*p_47), ((VECTOR(int32_t, 2))(0x759BE98CL)), 0x405FD578L)).lo))).xwwyzwzwxwxyywzz, ((VECTOR(int32_t, 16))(0x7E42EC95L)), ((VECTOR(int32_t, 16))(0x6251620DL))))).hi))).s13 | ((VECTOR(int32_t, 2))(0L))))).yyyxxyxx && ((VECTOR(int32_t, 8))(1L))))).s0), 0x34FDL)) == p_46))
                    { /* block id: 63 */
                        int32_t *l_201 = (void*)0;
                        int32_t *l_202 = &p_1660->g_21[3][4];
                        int32_t l_203 = 1L;
                        int32_t *l_204 = (void*)0;
                        int32_t *l_206 = &l_205;
                        int32_t *l_207[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_207[i] = &l_203;
                        --l_215[2][9][3];
                        if (p_1660->g_64)
                            goto lbl_247;
                    }
                    else
                    { /* block id: 65 */
                        int32_t *l_218[1];
                        uint32_t *l_223 = &p_1660->g_224;
                        int64_t *l_226[5][3][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        uint16_t **l_230 = &l_194;
                        VECTOR(int64_t, 4) l_239 = (VECTOR(int64_t, 4))(0x6BA94C3CA436241FL, (VECTOR(int64_t, 2))(0x6BA94C3CA436241FL, (-7L)), (-7L));
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_218[i] = (void*)0;
                        ++l_219;
                        (*l_181) = func_52(p_46, p_1660);
                        (*l_63) ^= (0x245ABC7BL & ((((&l_163 == (void*)0) , l_135) != (p_1660->g_222 = &p_1660->g_136)) , (((*l_223) = p_46) | (safe_unary_minus_func_int64_t_s((l_184.sa = p_46))))));
                        (*p_47) = (safe_sub_func_int64_t_s_s((p_1660->g_245 ^= ((((4294967295UL && (!(&p_1660->g_198 == ((*l_230) = l_229[1][5][0])))) & ((VECTOR(uint64_t, 16))(((void*)0 == l_143[8][3][0]), ((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))(1L, 0x62L)).lo, (p_1660->g_109.y = (((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 4))(l_233.xyxx)).wwwywyxxwyyxxyyx ^ ((VECTOR(uint32_t, 16))(l_234.s3b5c5a46c8d1f78b))))).sc <= ((*p_47) & (*p_47)))))) & ((safe_div_func_int8_t_s_s((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(l_239.yywzyxzz)).odd, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(l_240.s0e09ec54)) >= ((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(l_241.yyyxyxxxyyxyxxyy)).s659b != ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_1660->g_242.yx)), ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))((-2L), ((VECTOR(int32_t, 2))(0x25D05918L, 5L)), 0x59A669B4L)), ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(((&p_1660->g_136 == &p_1660->g_136) , 0L), ((VECTOR(int32_t, 2))(5L)), 0x484D1A59L)).zyzywxxx))) && ((VECTOR(int32_t, 8))(0x1A848083L))))), ((VECTOR(int32_t, 8))(0x269DA250L))))), ((VECTOR(int32_t, 8))(6L))))) && ((VECTOR(int32_t, 8))(1L))))) && ((VECTOR(int32_t, 8))((-1L)))))).odd, ((VECTOR(int32_t, 4))(0x077F8ABCL))))), ((VECTOR(int32_t, 4))((-5L)))))), ((VECTOR(int32_t, 4))((-1L)))))), l_243, (-9L), 2L, 0x4F19C235L, p_46, 0x6032A6B0L, (-6L), p_1660->g_110.s0, 0x6B61277FL, 0L)).s54 && ((VECTOR(int32_t, 2))(0L))))).yxyyxyxx, ((VECTOR(int32_t, 8))(1L))))).hi))), ((VECTOR(uint32_t, 4))(0x5F4DE50BL))))).xzyxxyyx))).s2434424703043216, (int64_t)p_1660->g_224))).s3e | ((VECTOR(int64_t, 2))(0x1D0464ABD414136DL))))).yxyy))).xyyxzzww, ((VECTOR(int64_t, 8))(0x75CB66BE14C3B143L))))).s5, (*l_63))), l_244)) && p_46)), p_46, 0x8CE802EA0A4509A3L, 0UL, ((VECTOR(uint64_t, 8))(18446744073709551613UL)), p_46, 18446744073709551608UL, 4UL)).s2) , p_46) != 0x1FL)), p_1660->g_49));
                    }
                }
                else
                { /* block id: 77 */
lbl_247:
                    if (l_243)
                        goto lbl_246;
                    if (p_1660->g_49)
                        goto lbl_246;
                    for (l_85 = (-1); (l_85 > (-17)); l_85 = safe_sub_func_uint32_t_u_u(l_85, 7))
                    { /* block id: 83 */
                        uint16_t l_250 = 0UL;
                        int32_t *l_252 = &l_209;
                        int32_t *l_253 = &l_80[5][2];
                        int32_t *l_254 = (void*)0;
                        int32_t *l_255[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_255[i] = &l_80[5][2];
                        if (l_250)
                            break;
                        ++l_256;
                        if (l_209)
                            continue;
                    }
                    return p_45;
                }
            }
            else
            { /* block id: 90 */
                uint32_t l_294 = 4294967294UL;
                int32_t *l_296 = (void*)0;
                int32_t *l_297 = (void*)0;
                int32_t *l_298 = &l_212;
                (*l_298) |= ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(6L, (-2L))), 4L, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 4))(0L, 2L, 0x163CED81L, 0x2F9F28D3L)).xxyzzwxw, (int32_t)((*l_129) ^ GROUP_DIVERGE(1, 1))))).s00 == ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-2L), 0x4BF49D69L)), 0x6F2F99EDL, (-8L))).even))), ((VECTOR(int32_t, 2))(l_259.yy)), 1L)), ((VECTOR(int32_t, 16))(l_260.s1a6c58d8b7d94abc)).even, ((VECTOR(int32_t, 8))(0x71983AC7L, ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))((safe_add_func_uint64_t_u_u(((((safe_sub_func_uint16_t_u_u((l_107.y , ((safe_rshift_func_uint16_t_u_u(((p_46 , (((0UL | GROUP_DIVERGE(2, 1)) < ((p_1660->g_21[3][4] , ((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 8))(l_273.yxxyyxxx)).hi, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(0x01L, ((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(p_1660->g_278.s1445066477456604)).hi, (uint8_t)(((safe_rshift_func_int8_t_s_u((safe_rshift_func_int8_t_s_s((((l_260.s7 = ((safe_lshift_func_uint16_t_u_s((+p_46), 11)) ^ ((l_85 , ((((VECTOR(uint64_t, 8))(p_1660->g_285.s36fd1b1d)).s0 , (safe_div_func_int16_t_s_s(((*p_1660->g_48) = ((l_288 != (((**l_288) |= ((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 4))(p_1660->g_290.sf7ad)).lo, (uint16_t)(safe_div_func_int8_t_s_s(p_46, p_46))))).hi) , l_293)) <= (*l_129))), 0x6B6EL))) , 0UL)) < p_46))) < p_46) , p_46), 0)), p_46)) < l_107.x) == l_210.s6)))) + ((VECTOR(uint8_t, 8))(0xC7L))))).lo))), ((VECTOR(uint8_t, 2))(0x6FL)), 8UL)).s5630303603250474 * ((VECTOR(uint8_t, 16))(0xF4L))))).s2745, ((VECTOR(uint8_t, 4))(0x41L))))).yxyyxyyz - ((VECTOR(uint8_t, 8))(255UL))))).s4403610220620171 + ((VECTOR(uint8_t, 16))(1UL))))).s0, (*l_63))) >= l_294)) < 0xD9C04F62L)) != l_294)) & p_1660->g_21[3][4]), p_1660->g_170.x)) | l_294)), p_46)) , GROUP_DIVERGE(0, 1)) < 1L) <= l_209), 0x68378C8CFC6677F1L)), l_295, 0x6ACEA52AL, 0L)) && ((VECTOR(int32_t, 4))(0x6C0E2BE6L))))), ((VECTOR(int32_t, 4))((-1L)))))), ((VECTOR(int32_t, 2))((-1L))), 0x001EC93AL))))) && ((VECTOR(int32_t, 8))((-1L)))))), (-5L), 0x74E1A5A0L, (*p_47), ((VECTOR(int32_t, 4))(1L)), 0x4FF90880L)), ((VECTOR(int32_t, 16))(0x6BED17D9L))))), ((VECTOR(int32_t, 16))(1L))))).s34f7, (int32_t)(*p_47)))).z;
                p_47 = func_52((((VECTOR(int32_t, 8))(l_299.zxxyzyyy)).s5 , ((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 16))(l_300.yyxxxxxxyyyxxxxy)).sc3e8, ((VECTOR(int64_t, 8))(l_301.s12051455)).even))).w), p_1660);
            }
        }
        p_1660->g_306.z++;
    }
    else
    { /* block id: 99 */
        VECTOR(uint8_t, 8) l_312 = (VECTOR(uint8_t, 8))(0x76L, (VECTOR(uint8_t, 4))(0x76L, (VECTOR(uint8_t, 2))(0x76L, 0x32L), 0x32L), 0x32L, 0x76L, 0x32L);
        uint64_t *l_317 = (void*)0;
        int16_t *l_333 = (void*)0;
        int i;
        (*p_47) = (((VECTOR(uint8_t, 4))(p_1660->g_309.yyxx)).z <= (safe_mul_func_int8_t_s_s(p_1660->g_21[2][1], ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_312.s42223344)), ((safe_add_func_uint64_t_u_u(((*p_1660->g_222)--), (p_1660->g_149.s3 || (p_46 || (l_317 != p_1660->g_222))))) ^ ((safe_lshift_func_int8_t_s_u(((0x68003471951FF4A6L || ((safe_mul_func_uint16_t_u_u((((((safe_sub_func_uint8_t_u_u(l_312.s7, (((safe_div_func_int32_t_s_s(((*l_288) == &p_1660->g_198), 0x653010F4L)) , p_46) > 0x0D0ABE85L))) , 0x029BL) , p_1660->g_110.s1) == 1L) | p_46), l_312.s4)) , p_1660->g_113.s2)) ^ (*l_63)), (*l_63))) && 0x7BC0394E5C0685F5L)), ((VECTOR(uint8_t, 4))(255UL)), 0x71L, 6UL, 0x8DL)).s8)));
        (*p_1660->g_20) = (safe_mul_func_uint32_t_u_u((safe_add_func_int16_t_s_s((0x0CB473B2L == 0UL), 0x58D1L)), (((VECTOR(uint8_t, 16))(p_1660->g_332.s9b34bf4f4d82fe08)).sb >= (l_62 != &p_1660->g_224))));
        return l_333;
    }
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_52(int64_t  p_53, struct S0 * p_1660)
{ /* block id: 19 */
    int32_t *l_58 = &p_1660->g_21[3][4];
    int32_t **l_57 = &l_58;
    int32_t *l_59 = (void*)0;
    (*l_57) = (void*)0;
    return l_59;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S0 c_1661;
    struct S0* p_1660 = &c_1661;
    struct S0 c_1662 = {
        0x137B1891L, // p_1660->g_2
        {{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L}}, // p_1660->g_21
        &p_1660->g_21[3][4], // p_1660->g_20
        (VECTOR(int32_t, 8))(0x59248E6BL, (VECTOR(int32_t, 4))(0x59248E6BL, (VECTOR(int32_t, 2))(0x59248E6BL, 0L), 0L), 0L, 0x59248E6BL, 0L), // p_1660->g_39
        0x3B01L, // p_1660->g_49
        &p_1660->g_49, // p_1660->g_48
        (-1L), // p_1660->g_64
        (-1L), // p_1660->g_84
        (VECTOR(uint8_t, 16))(0x13L, (VECTOR(uint8_t, 4))(0x13L, (VECTOR(uint8_t, 2))(0x13L, 0x1CL), 0x1CL), 0x1CL, 0x13L, 0x1CL, (VECTOR(uint8_t, 2))(0x13L, 0x1CL), (VECTOR(uint8_t, 2))(0x13L, 0x1CL), 0x13L, 0x1CL, 0x13L, 0x1CL), // p_1660->g_99
        (VECTOR(int32_t, 2))(0x3622C330L, (-5L)), // p_1660->g_100
        (VECTOR(int32_t, 4))(0x132BC358L, (VECTOR(int32_t, 2))(0x132BC358L, (-1L)), (-1L)), // p_1660->g_101
        (VECTOR(int8_t, 2))(3L, 0x7DL), // p_1660->g_106
        (VECTOR(int8_t, 16))(0x77L, (VECTOR(int8_t, 4))(0x77L, (VECTOR(int8_t, 2))(0x77L, (-1L)), (-1L)), (-1L), 0x77L, (-1L), (VECTOR(int8_t, 2))(0x77L, (-1L)), (VECTOR(int8_t, 2))(0x77L, (-1L)), 0x77L, (-1L), 0x77L, (-1L)), // p_1660->g_108
        (VECTOR(int8_t, 4))(0x60L, (VECTOR(int8_t, 2))(0x60L, 0x5AL), 0x5AL), // p_1660->g_109
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x03L), 0x03L), 0x03L, 1L, 0x03L), // p_1660->g_110
        (VECTOR(int8_t, 2))(0x7DL, 2L), // p_1660->g_112
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2FL), 0x2FL), 0x2FL, 1L, 0x2FL), // p_1660->g_113
        (VECTOR(int8_t, 2))(0x05L, 1L), // p_1660->g_114
        (VECTOR(uint16_t, 2))(0xEDB4L, 0xAA0AL), // p_1660->g_121
        (VECTOR(int16_t, 8))(0x5A3AL, (VECTOR(int16_t, 4))(0x5A3AL, (VECTOR(int16_t, 2))(0x5A3AL, 0x38C4L), 0x38C4L), 0x38C4L, 0x5A3AL, 0x38C4L), // p_1660->g_122
        (void*)0, // p_1660->g_131
        &p_1660->g_131, // p_1660->g_130
        0x99C71661823C796EL, // p_1660->g_136
        (VECTOR(uint8_t, 16))(0x24L, (VECTOR(uint8_t, 4))(0x24L, (VECTOR(uint8_t, 2))(0x24L, 0UL), 0UL), 0UL, 0x24L, 0UL, (VECTOR(uint8_t, 2))(0x24L, 0UL), (VECTOR(uint8_t, 2))(0x24L, 0UL), 0x24L, 0UL, 0x24L, 0UL), // p_1660->g_149
        (VECTOR(uint8_t, 4))(0x07L, (VECTOR(uint8_t, 2))(0x07L, 0x31L), 0x31L), // p_1660->g_153
        (VECTOR(int32_t, 2))(0L, (-8L)), // p_1660->g_170
        (VECTOR(int32_t, 8))(0x20C8D91BL, (VECTOR(int32_t, 4))(0x20C8D91BL, (VECTOR(int32_t, 2))(0x20C8D91BL, 0x469F826CL), 0x469F826CL), 0x469F826CL, 0x20C8D91BL, 0x469F826CL), // p_1660->g_171
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int32_t, 2))((-1L), 1L), (VECTOR(int32_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L), // p_1660->g_173
        4294967287UL, // p_1660->g_178
        {{&p_1660->g_20,&p_1660->g_20,&p_1660->g_131,(void*)0,(void*)0,(void*)0},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_131,(void*)0,(void*)0,(void*)0},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_131,(void*)0,(void*)0,(void*)0},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_131,(void*)0,(void*)0,(void*)0},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_131,(void*)0,(void*)0,(void*)0},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_131,(void*)0,(void*)0,(void*)0},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_131,(void*)0,(void*)0,(void*)0},{&p_1660->g_20,&p_1660->g_20,&p_1660->g_131,(void*)0,(void*)0,(void*)0}}, // p_1660->g_180
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_1660->g_190
        1UL, // p_1660->g_198
        &p_1660->g_136, // p_1660->g_222
        4294967289UL, // p_1660->g_224
        (VECTOR(int32_t, 2))(0x78D19CA9L, 0x3AB32B63L), // p_1660->g_242
        1L, // p_1660->g_245
        (VECTOR(uint8_t, 8))(0xFFL, (VECTOR(uint8_t, 4))(0xFFL, (VECTOR(uint8_t, 2))(0xFFL, 0xFAL), 0xFAL), 0xFAL, 0xFFL, 0xFAL), // p_1660->g_278
        (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xAA2DB96623097A1DL), 0xAA2DB96623097A1DL), 0xAA2DB96623097A1DL, 0UL, 0xAA2DB96623097A1DL, (VECTOR(uint64_t, 2))(0UL, 0xAA2DB96623097A1DL), (VECTOR(uint64_t, 2))(0UL, 0xAA2DB96623097A1DL), 0UL, 0xAA2DB96623097A1DL, 0UL, 0xAA2DB96623097A1DL), // p_1660->g_285
        (VECTOR(uint16_t, 16))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0xCB07L), 0xCB07L), 0xCB07L, 65526UL, 0xCB07L, (VECTOR(uint16_t, 2))(65526UL, 0xCB07L), (VECTOR(uint16_t, 2))(65526UL, 0xCB07L), 65526UL, 0xCB07L, 65526UL, 0xCB07L), // p_1660->g_290
        (VECTOR(uint8_t, 4))(0x5BL, (VECTOR(uint8_t, 2))(0x5BL, 6UL), 6UL), // p_1660->g_306
        (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 1UL), 1UL), // p_1660->g_309
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x78L), 0x78L), 0x78L, 1UL, 0x78L, (VECTOR(uint8_t, 2))(1UL, 0x78L), (VECTOR(uint8_t, 2))(1UL, 0x78L), 1UL, 0x78L, 1UL, 0x78L), // p_1660->g_332
        0x2244C800CACFB8C9L, // p_1660->g_335
        (VECTOR(int16_t, 2))((-1L), 0L), // p_1660->g_367
        (VECTOR(int16_t, 2))(0x2A39L, 0x3F1AL), // p_1660->g_369
        {{7UL,0x9DF5FFFFL,0x9F0F3A51L,0x9DF5FFFFL,7UL},{7UL,0x9DF5FFFFL,0x9F0F3A51L,0x9DF5FFFFL,7UL}}, // p_1660->g_409
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1660->g_410
        0x56E3L, // p_1660->g_414
        4294967287UL, // p_1660->g_416
        (VECTOR(int64_t, 16))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 1L), 1L), 1L, (-10L), 1L, (VECTOR(int64_t, 2))((-10L), 1L), (VECTOR(int64_t, 2))((-10L), 1L), (-10L), 1L, (-10L), 1L), // p_1660->g_474
        0x088DD5B0788017C8L, // p_1660->g_547
        0x169038D5L, // p_1660->g_553
        (VECTOR(uint64_t, 4))(0x691C6DEAE6DDC8AAL, (VECTOR(uint64_t, 2))(0x691C6DEAE6DDC8AAL, 0x31E17AA991ED4B06L), 0x31E17AA991ED4B06L), // p_1660->g_572
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-9L)), (-9L)), (-9L), (-1L), (-9L)), // p_1660->g_577
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-7L)), (-7L)), // p_1660->g_584
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x1758L), 0x1758L), 0x1758L, (-1L), 0x1758L), // p_1660->g_617
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_1660->g_622
        (VECTOR(int16_t, 2))(0x209FL, (-6L)), // p_1660->g_625
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L)), // p_1660->g_643
        0x74CDAA60L, // p_1660->g_716
        {5UL,5UL,5UL,5UL,5UL}, // p_1660->g_736
        (VECTOR(int8_t, 4))(0x3BL, (VECTOR(int8_t, 2))(0x3BL, (-6L)), (-6L)), // p_1660->g_753
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 7UL), 7UL), 7UL, 0UL, 7UL), // p_1660->g_782
        (VECTOR(uint16_t, 4))(0xEB47L, (VECTOR(uint16_t, 2))(0xEB47L, 0x1174L), 0x1174L), // p_1660->g_846
        (void*)0, // p_1660->g_845
        &p_1660->g_845, // p_1660->g_844
        8L, // p_1660->g_851
        0xDCF2L, // p_1660->g_852
        (VECTOR(int64_t, 8))((-4L), (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x540CF71F35120692L), 0x540CF71F35120692L), 0x540CF71F35120692L, (-4L), 0x540CF71F35120692L), // p_1660->g_855
        (VECTOR(int16_t, 16))(0x6B62L, (VECTOR(int16_t, 4))(0x6B62L, (VECTOR(int16_t, 2))(0x6B62L, (-7L)), (-7L)), (-7L), 0x6B62L, (-7L), (VECTOR(int16_t, 2))(0x6B62L, (-7L)), (VECTOR(int16_t, 2))(0x6B62L, (-7L)), 0x6B62L, (-7L), 0x6B62L, (-7L)), // p_1660->g_867
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_1660->g_871
        (VECTOR(uint64_t, 2))(18446744073709551611UL, 6UL), // p_1660->g_880
        (VECTOR(uint64_t, 2))(18446744073709551607UL, 0x3D0575E6144385ECL), // p_1660->g_887
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 7L), 7L), 7L, 1L, 7L, (VECTOR(int64_t, 2))(1L, 7L), (VECTOR(int64_t, 2))(1L, 7L), 1L, 7L, 1L, 7L), // p_1660->g_891
        {4UL,4UL,4UL}, // p_1660->g_901
        (void*)0, // p_1660->g_912
        &p_1660->g_912, // p_1660->g_911
        &p_1660->g_911, // p_1660->g_910
        &p_1660->g_222, // p_1660->g_917
        &p_1660->g_917, // p_1660->g_916
        (VECTOR(int16_t, 16))(0x122FL, (VECTOR(int16_t, 4))(0x122FL, (VECTOR(int16_t, 2))(0x122FL, 0x689AL), 0x689AL), 0x689AL, 0x122FL, 0x689AL, (VECTOR(int16_t, 2))(0x122FL, 0x689AL), (VECTOR(int16_t, 2))(0x122FL, 0x689AL), 0x122FL, 0x689AL, 0x122FL, 0x689AL), // p_1660->g_935
        (VECTOR(int32_t, 2))(0x200A0131L, 0x5A8411AAL), // p_1660->g_976
        (VECTOR(uint16_t, 8))(0xC1D4L, (VECTOR(uint16_t, 4))(0xC1D4L, (VECTOR(uint16_t, 2))(0xC1D4L, 7UL), 7UL), 7UL, 0xC1D4L, 7UL), // p_1660->g_977
        (VECTOR(uint16_t, 16))(65527UL, (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 0UL), 0UL), 0UL, 65527UL, 0UL, (VECTOR(uint16_t, 2))(65527UL, 0UL), (VECTOR(uint16_t, 2))(65527UL, 0UL), 65527UL, 0UL, 65527UL, 0UL), // p_1660->g_978
        0xD4F75B457DD02A04L, // p_1660->g_1011
        (void*)0, // p_1660->g_1018
        {&p_1660->g_131,&p_1660->g_131}, // p_1660->g_1019
        0x4BEBD3254E7BF138L, // p_1660->g_1048
        (VECTOR(uint16_t, 2))(1UL, 0x6A9BL), // p_1660->g_1073
        (VECTOR(uint16_t, 2))(65535UL, 0xB14DL), // p_1660->g_1074
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), // p_1660->g_1083
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x01C35830L), 0x01C35830L), // p_1660->g_1085
        (VECTOR(int32_t, 4))(0x50EC8644L, (VECTOR(int32_t, 2))(0x50EC8644L, 7L), 7L), // p_1660->g_1086
        (VECTOR(uint16_t, 16))(0x17B9L, (VECTOR(uint16_t, 4))(0x17B9L, (VECTOR(uint16_t, 2))(0x17B9L, 0xE98BL), 0xE98BL), 0xE98BL, 0x17B9L, 0xE98BL, (VECTOR(uint16_t, 2))(0x17B9L, 0xE98BL), (VECTOR(uint16_t, 2))(0x17B9L, 0xE98BL), 0x17B9L, 0xE98BL, 0x17B9L, 0xE98BL), // p_1660->g_1095
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 5L), 5L), // p_1660->g_1098
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967294UL), 4294967294UL), 4294967294UL, 1UL, 4294967294UL, (VECTOR(uint32_t, 2))(1UL, 4294967294UL), (VECTOR(uint32_t, 2))(1UL, 4294967294UL), 1UL, 4294967294UL, 1UL, 4294967294UL), // p_1660->g_1108
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), // p_1660->g_1110
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL), // p_1660->g_1113
        (void*)0, // p_1660->g_1128
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L)), // p_1660->g_1148
        (VECTOR(uint16_t, 8))(0x7F76L, (VECTOR(uint16_t, 4))(0x7F76L, (VECTOR(uint16_t, 2))(0x7F76L, 0xD89DL), 0xD89DL), 0xD89DL, 0x7F76L, 0xD89DL), // p_1660->g_1153
        (VECTOR(uint16_t, 8))(0xF862L, (VECTOR(uint16_t, 4))(0xF862L, (VECTOR(uint16_t, 2))(0xF862L, 0xCBB2L), 0xCBB2L), 0xCBB2L, 0xF862L, 0xCBB2L), // p_1660->g_1155
        (VECTOR(int8_t, 4))(0x35L, (VECTOR(int8_t, 2))(0x35L, 0x32L), 0x32L), // p_1660->g_1165
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), // p_1660->g_1216
        (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), (-1L)), (-1L)), // p_1660->g_1217
        (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0x48B0336E9EE56961L), 0x48B0336E9EE56961L), // p_1660->g_1218
        (VECTOR(int64_t, 8))(0x235F8D33ACDDB3DBL, (VECTOR(int64_t, 4))(0x235F8D33ACDDB3DBL, (VECTOR(int64_t, 2))(0x235F8D33ACDDB3DBL, 0x3AC74F4224466DD9L), 0x3AC74F4224466DD9L), 0x3AC74F4224466DD9L, 0x235F8D33ACDDB3DBL, 0x3AC74F4224466DD9L), // p_1660->g_1220
        (VECTOR(uint32_t, 16))(0x87E661A4L, (VECTOR(uint32_t, 4))(0x87E661A4L, (VECTOR(uint32_t, 2))(0x87E661A4L, 0xEBC91D1BL), 0xEBC91D1BL), 0xEBC91D1BL, 0x87E661A4L, 0xEBC91D1BL, (VECTOR(uint32_t, 2))(0x87E661A4L, 0xEBC91D1BL), (VECTOR(uint32_t, 2))(0x87E661A4L, 0xEBC91D1BL), 0x87E661A4L, 0xEBC91D1BL, 0x87E661A4L, 0xEBC91D1BL), // p_1660->g_1242
        (VECTOR(int8_t, 2))(0x46L, 9L), // p_1660->g_1247
        (VECTOR(int8_t, 16))(0x43L, (VECTOR(int8_t, 4))(0x43L, (VECTOR(int8_t, 2))(0x43L, 0x27L), 0x27L), 0x27L, 0x43L, 0x27L, (VECTOR(int8_t, 2))(0x43L, 0x27L), (VECTOR(int8_t, 2))(0x43L, 0x27L), 0x43L, 0x27L, 0x43L, 0x27L), // p_1660->g_1252
        (VECTOR(int16_t, 4))(0x3567L, (VECTOR(int16_t, 2))(0x3567L, 7L), 7L), // p_1660->g_1263
        (VECTOR(int32_t, 4))(0x06B79F37L, (VECTOR(int32_t, 2))(0x06B79F37L, 0x1DEC4C3DL), 0x1DEC4C3DL), // p_1660->g_1265
        (-7L), // p_1660->g_1301
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), // p_1660->g_1304
        (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL), // p_1660->g_1326
        (VECTOR(int32_t, 16))(0x145F08E0L, (VECTOR(int32_t, 4))(0x145F08E0L, (VECTOR(int32_t, 2))(0x145F08E0L, 5L), 5L), 5L, 0x145F08E0L, 5L, (VECTOR(int32_t, 2))(0x145F08E0L, 5L), (VECTOR(int32_t, 2))(0x145F08E0L, 5L), 0x145F08E0L, 5L, 0x145F08E0L, 5L), // p_1660->g_1329
        (VECTOR(int32_t, 8))(0x13BF25BFL, (VECTOR(int32_t, 4))(0x13BF25BFL, (VECTOR(int32_t, 2))(0x13BF25BFL, 0x0765EC67L), 0x0765EC67L), 0x0765EC67L, 0x13BF25BFL, 0x0765EC67L), // p_1660->g_1331
        (VECTOR(uint16_t, 16))(0x1CF6L, (VECTOR(uint16_t, 4))(0x1CF6L, (VECTOR(uint16_t, 2))(0x1CF6L, 0x359CL), 0x359CL), 0x359CL, 0x1CF6L, 0x359CL, (VECTOR(uint16_t, 2))(0x1CF6L, 0x359CL), (VECTOR(uint16_t, 2))(0x1CF6L, 0x359CL), 0x1CF6L, 0x359CL, 0x1CF6L, 0x359CL), // p_1660->g_1336
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x7D58L), 0x7D58L), 0x7D58L, 1UL, 0x7D58L), // p_1660->g_1342
        (VECTOR(uint32_t, 16))(0x476350C3L, (VECTOR(uint32_t, 4))(0x476350C3L, (VECTOR(uint32_t, 2))(0x476350C3L, 4294967286UL), 4294967286UL), 4294967286UL, 0x476350C3L, 4294967286UL, (VECTOR(uint32_t, 2))(0x476350C3L, 4294967286UL), (VECTOR(uint32_t, 2))(0x476350C3L, 4294967286UL), 0x476350C3L, 4294967286UL, 0x476350C3L, 4294967286UL), // p_1660->g_1359
        0xA173447D34E25E69L, // p_1660->g_1399
        (VECTOR(uint8_t, 8))(0xD1L, (VECTOR(uint8_t, 4))(0xD1L, (VECTOR(uint8_t, 2))(0xD1L, 255UL), 255UL), 255UL, 0xD1L, 255UL), // p_1660->g_1431
        (VECTOR(int32_t, 4))(0x5F3EE23AL, (VECTOR(int32_t, 2))(0x5F3EE23AL, 0x1CFA6668L), 0x1CFA6668L), // p_1660->g_1471
        (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x6225E7E0L), 0x6225E7E0L), // p_1660->g_1473
        0x9DL, // p_1660->g_1486
        &p_1660->g_901[2], // p_1660->g_1491
        {{&p_1660->g_1491},{&p_1660->g_1491},{&p_1660->g_1491},{&p_1660->g_1491},{&p_1660->g_1491},{&p_1660->g_1491}}, // p_1660->g_1490
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x79103153D57951F1L), 0x79103153D57951F1L), 0x79103153D57951F1L, (-1L), 0x79103153D57951F1L), // p_1660->g_1508
        (VECTOR(int8_t, 2))(0x66L, 0x36L), // p_1660->g_1522
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x84D558848F550CB7L), 0x84D558848F550CB7L), 0x84D558848F550CB7L, 1UL, 0x84D558848F550CB7L, (VECTOR(uint64_t, 2))(1UL, 0x84D558848F550CB7L), (VECTOR(uint64_t, 2))(1UL, 0x84D558848F550CB7L), 1UL, 0x84D558848F550CB7L, 1UL, 0x84D558848F550CB7L), // p_1660->g_1538
        &p_1660->g_20, // p_1660->g_1561
        (VECTOR(uint64_t, 16))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0UL), 0UL), 0UL, 18446744073709551606UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551606UL, 0UL), 18446744073709551606UL, 0UL, 18446744073709551606UL, 0UL), // p_1660->g_1564
        (VECTOR(int8_t, 4))(0x69L, (VECTOR(int8_t, 2))(0x69L, 8L), 8L), // p_1660->g_1565
        (VECTOR(int8_t, 2))(0x6AL, (-1L)), // p_1660->g_1566
        0x53984BC8L, // p_1660->g_1572
        (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x3701L), 0x3701L), 0x3701L, 7L, 0x3701L), // p_1660->g_1578
        &p_1660->g_1011, // p_1660->g_1604
        (VECTOR(int32_t, 16))(0x741C8523L, (VECTOR(int32_t, 4))(0x741C8523L, (VECTOR(int32_t, 2))(0x741C8523L, 5L), 5L), 5L, 0x741C8523L, 5L, (VECTOR(int32_t, 2))(0x741C8523L, 5L), (VECTOR(int32_t, 2))(0x741C8523L, 5L), 0x741C8523L, 5L, 0x741C8523L, 5L), // p_1660->g_1626
        (VECTOR(uint64_t, 16))(0x516399FE304BBA9FL, (VECTOR(uint64_t, 4))(0x516399FE304BBA9FL, (VECTOR(uint64_t, 2))(0x516399FE304BBA9FL, 1UL), 1UL), 1UL, 0x516399FE304BBA9FL, 1UL, (VECTOR(uint64_t, 2))(0x516399FE304BBA9FL, 1UL), (VECTOR(uint64_t, 2))(0x516399FE304BBA9FL, 1UL), 0x516399FE304BBA9FL, 1UL, 0x516399FE304BBA9FL, 1UL), // p_1660->g_1633
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x5D7113E70040E6F5L), 0x5D7113E70040E6F5L), 0x5D7113E70040E6F5L, 0L, 0x5D7113E70040E6F5L), // p_1660->g_1634
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0L), 0L), 0L, 0L, 0L), // p_1660->g_1635
        (void*)0, // p_1660->g_1638
        (void*)0, // p_1660->g_1639
        sequence_input[get_global_id(0)], // p_1660->global_0_offset
        sequence_input[get_global_id(1)], // p_1660->global_1_offset
        sequence_input[get_global_id(2)], // p_1660->global_2_offset
        sequence_input[get_local_id(0)], // p_1660->local_0_offset
        sequence_input[get_local_id(1)], // p_1660->local_1_offset
        sequence_input[get_local_id(2)], // p_1660->local_2_offset
        sequence_input[get_group_id(0)], // p_1660->group_0_offset
        sequence_input[get_group_id(1)], // p_1660->group_1_offset
        sequence_input[get_group_id(2)], // p_1660->group_2_offset
    };
    c_1661 = c_1662;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1660);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1660->g_2, "p_1660->g_2", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1660->g_21[i][j], "p_1660->g_21[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1660->g_39.s0, "p_1660->g_39.s0", print_hash_value);
    transparent_crc(p_1660->g_39.s1, "p_1660->g_39.s1", print_hash_value);
    transparent_crc(p_1660->g_39.s2, "p_1660->g_39.s2", print_hash_value);
    transparent_crc(p_1660->g_39.s3, "p_1660->g_39.s3", print_hash_value);
    transparent_crc(p_1660->g_39.s4, "p_1660->g_39.s4", print_hash_value);
    transparent_crc(p_1660->g_39.s5, "p_1660->g_39.s5", print_hash_value);
    transparent_crc(p_1660->g_39.s6, "p_1660->g_39.s6", print_hash_value);
    transparent_crc(p_1660->g_39.s7, "p_1660->g_39.s7", print_hash_value);
    transparent_crc(p_1660->g_49, "p_1660->g_49", print_hash_value);
    transparent_crc(p_1660->g_64, "p_1660->g_64", print_hash_value);
    transparent_crc(p_1660->g_84, "p_1660->g_84", print_hash_value);
    transparent_crc(p_1660->g_99.s0, "p_1660->g_99.s0", print_hash_value);
    transparent_crc(p_1660->g_99.s1, "p_1660->g_99.s1", print_hash_value);
    transparent_crc(p_1660->g_99.s2, "p_1660->g_99.s2", print_hash_value);
    transparent_crc(p_1660->g_99.s3, "p_1660->g_99.s3", print_hash_value);
    transparent_crc(p_1660->g_99.s4, "p_1660->g_99.s4", print_hash_value);
    transparent_crc(p_1660->g_99.s5, "p_1660->g_99.s5", print_hash_value);
    transparent_crc(p_1660->g_99.s6, "p_1660->g_99.s6", print_hash_value);
    transparent_crc(p_1660->g_99.s7, "p_1660->g_99.s7", print_hash_value);
    transparent_crc(p_1660->g_99.s8, "p_1660->g_99.s8", print_hash_value);
    transparent_crc(p_1660->g_99.s9, "p_1660->g_99.s9", print_hash_value);
    transparent_crc(p_1660->g_99.sa, "p_1660->g_99.sa", print_hash_value);
    transparent_crc(p_1660->g_99.sb, "p_1660->g_99.sb", print_hash_value);
    transparent_crc(p_1660->g_99.sc, "p_1660->g_99.sc", print_hash_value);
    transparent_crc(p_1660->g_99.sd, "p_1660->g_99.sd", print_hash_value);
    transparent_crc(p_1660->g_99.se, "p_1660->g_99.se", print_hash_value);
    transparent_crc(p_1660->g_99.sf, "p_1660->g_99.sf", print_hash_value);
    transparent_crc(p_1660->g_100.x, "p_1660->g_100.x", print_hash_value);
    transparent_crc(p_1660->g_100.y, "p_1660->g_100.y", print_hash_value);
    transparent_crc(p_1660->g_101.x, "p_1660->g_101.x", print_hash_value);
    transparent_crc(p_1660->g_101.y, "p_1660->g_101.y", print_hash_value);
    transparent_crc(p_1660->g_101.z, "p_1660->g_101.z", print_hash_value);
    transparent_crc(p_1660->g_101.w, "p_1660->g_101.w", print_hash_value);
    transparent_crc(p_1660->g_106.x, "p_1660->g_106.x", print_hash_value);
    transparent_crc(p_1660->g_106.y, "p_1660->g_106.y", print_hash_value);
    transparent_crc(p_1660->g_108.s0, "p_1660->g_108.s0", print_hash_value);
    transparent_crc(p_1660->g_108.s1, "p_1660->g_108.s1", print_hash_value);
    transparent_crc(p_1660->g_108.s2, "p_1660->g_108.s2", print_hash_value);
    transparent_crc(p_1660->g_108.s3, "p_1660->g_108.s3", print_hash_value);
    transparent_crc(p_1660->g_108.s4, "p_1660->g_108.s4", print_hash_value);
    transparent_crc(p_1660->g_108.s5, "p_1660->g_108.s5", print_hash_value);
    transparent_crc(p_1660->g_108.s6, "p_1660->g_108.s6", print_hash_value);
    transparent_crc(p_1660->g_108.s7, "p_1660->g_108.s7", print_hash_value);
    transparent_crc(p_1660->g_108.s8, "p_1660->g_108.s8", print_hash_value);
    transparent_crc(p_1660->g_108.s9, "p_1660->g_108.s9", print_hash_value);
    transparent_crc(p_1660->g_108.sa, "p_1660->g_108.sa", print_hash_value);
    transparent_crc(p_1660->g_108.sb, "p_1660->g_108.sb", print_hash_value);
    transparent_crc(p_1660->g_108.sc, "p_1660->g_108.sc", print_hash_value);
    transparent_crc(p_1660->g_108.sd, "p_1660->g_108.sd", print_hash_value);
    transparent_crc(p_1660->g_108.se, "p_1660->g_108.se", print_hash_value);
    transparent_crc(p_1660->g_108.sf, "p_1660->g_108.sf", print_hash_value);
    transparent_crc(p_1660->g_109.x, "p_1660->g_109.x", print_hash_value);
    transparent_crc(p_1660->g_109.y, "p_1660->g_109.y", print_hash_value);
    transparent_crc(p_1660->g_109.z, "p_1660->g_109.z", print_hash_value);
    transparent_crc(p_1660->g_109.w, "p_1660->g_109.w", print_hash_value);
    transparent_crc(p_1660->g_110.s0, "p_1660->g_110.s0", print_hash_value);
    transparent_crc(p_1660->g_110.s1, "p_1660->g_110.s1", print_hash_value);
    transparent_crc(p_1660->g_110.s2, "p_1660->g_110.s2", print_hash_value);
    transparent_crc(p_1660->g_110.s3, "p_1660->g_110.s3", print_hash_value);
    transparent_crc(p_1660->g_110.s4, "p_1660->g_110.s4", print_hash_value);
    transparent_crc(p_1660->g_110.s5, "p_1660->g_110.s5", print_hash_value);
    transparent_crc(p_1660->g_110.s6, "p_1660->g_110.s6", print_hash_value);
    transparent_crc(p_1660->g_110.s7, "p_1660->g_110.s7", print_hash_value);
    transparent_crc(p_1660->g_112.x, "p_1660->g_112.x", print_hash_value);
    transparent_crc(p_1660->g_112.y, "p_1660->g_112.y", print_hash_value);
    transparent_crc(p_1660->g_113.s0, "p_1660->g_113.s0", print_hash_value);
    transparent_crc(p_1660->g_113.s1, "p_1660->g_113.s1", print_hash_value);
    transparent_crc(p_1660->g_113.s2, "p_1660->g_113.s2", print_hash_value);
    transparent_crc(p_1660->g_113.s3, "p_1660->g_113.s3", print_hash_value);
    transparent_crc(p_1660->g_113.s4, "p_1660->g_113.s4", print_hash_value);
    transparent_crc(p_1660->g_113.s5, "p_1660->g_113.s5", print_hash_value);
    transparent_crc(p_1660->g_113.s6, "p_1660->g_113.s6", print_hash_value);
    transparent_crc(p_1660->g_113.s7, "p_1660->g_113.s7", print_hash_value);
    transparent_crc(p_1660->g_114.x, "p_1660->g_114.x", print_hash_value);
    transparent_crc(p_1660->g_114.y, "p_1660->g_114.y", print_hash_value);
    transparent_crc(p_1660->g_121.x, "p_1660->g_121.x", print_hash_value);
    transparent_crc(p_1660->g_121.y, "p_1660->g_121.y", print_hash_value);
    transparent_crc(p_1660->g_122.s0, "p_1660->g_122.s0", print_hash_value);
    transparent_crc(p_1660->g_122.s1, "p_1660->g_122.s1", print_hash_value);
    transparent_crc(p_1660->g_122.s2, "p_1660->g_122.s2", print_hash_value);
    transparent_crc(p_1660->g_122.s3, "p_1660->g_122.s3", print_hash_value);
    transparent_crc(p_1660->g_122.s4, "p_1660->g_122.s4", print_hash_value);
    transparent_crc(p_1660->g_122.s5, "p_1660->g_122.s5", print_hash_value);
    transparent_crc(p_1660->g_122.s6, "p_1660->g_122.s6", print_hash_value);
    transparent_crc(p_1660->g_122.s7, "p_1660->g_122.s7", print_hash_value);
    transparent_crc(p_1660->g_136, "p_1660->g_136", print_hash_value);
    transparent_crc(p_1660->g_149.s0, "p_1660->g_149.s0", print_hash_value);
    transparent_crc(p_1660->g_149.s1, "p_1660->g_149.s1", print_hash_value);
    transparent_crc(p_1660->g_149.s2, "p_1660->g_149.s2", print_hash_value);
    transparent_crc(p_1660->g_149.s3, "p_1660->g_149.s3", print_hash_value);
    transparent_crc(p_1660->g_149.s4, "p_1660->g_149.s4", print_hash_value);
    transparent_crc(p_1660->g_149.s5, "p_1660->g_149.s5", print_hash_value);
    transparent_crc(p_1660->g_149.s6, "p_1660->g_149.s6", print_hash_value);
    transparent_crc(p_1660->g_149.s7, "p_1660->g_149.s7", print_hash_value);
    transparent_crc(p_1660->g_149.s8, "p_1660->g_149.s8", print_hash_value);
    transparent_crc(p_1660->g_149.s9, "p_1660->g_149.s9", print_hash_value);
    transparent_crc(p_1660->g_149.sa, "p_1660->g_149.sa", print_hash_value);
    transparent_crc(p_1660->g_149.sb, "p_1660->g_149.sb", print_hash_value);
    transparent_crc(p_1660->g_149.sc, "p_1660->g_149.sc", print_hash_value);
    transparent_crc(p_1660->g_149.sd, "p_1660->g_149.sd", print_hash_value);
    transparent_crc(p_1660->g_149.se, "p_1660->g_149.se", print_hash_value);
    transparent_crc(p_1660->g_149.sf, "p_1660->g_149.sf", print_hash_value);
    transparent_crc(p_1660->g_153.x, "p_1660->g_153.x", print_hash_value);
    transparent_crc(p_1660->g_153.y, "p_1660->g_153.y", print_hash_value);
    transparent_crc(p_1660->g_153.z, "p_1660->g_153.z", print_hash_value);
    transparent_crc(p_1660->g_153.w, "p_1660->g_153.w", print_hash_value);
    transparent_crc(p_1660->g_170.x, "p_1660->g_170.x", print_hash_value);
    transparent_crc(p_1660->g_170.y, "p_1660->g_170.y", print_hash_value);
    transparent_crc(p_1660->g_171.s0, "p_1660->g_171.s0", print_hash_value);
    transparent_crc(p_1660->g_171.s1, "p_1660->g_171.s1", print_hash_value);
    transparent_crc(p_1660->g_171.s2, "p_1660->g_171.s2", print_hash_value);
    transparent_crc(p_1660->g_171.s3, "p_1660->g_171.s3", print_hash_value);
    transparent_crc(p_1660->g_171.s4, "p_1660->g_171.s4", print_hash_value);
    transparent_crc(p_1660->g_171.s5, "p_1660->g_171.s5", print_hash_value);
    transparent_crc(p_1660->g_171.s6, "p_1660->g_171.s6", print_hash_value);
    transparent_crc(p_1660->g_171.s7, "p_1660->g_171.s7", print_hash_value);
    transparent_crc(p_1660->g_173.s0, "p_1660->g_173.s0", print_hash_value);
    transparent_crc(p_1660->g_173.s1, "p_1660->g_173.s1", print_hash_value);
    transparent_crc(p_1660->g_173.s2, "p_1660->g_173.s2", print_hash_value);
    transparent_crc(p_1660->g_173.s3, "p_1660->g_173.s3", print_hash_value);
    transparent_crc(p_1660->g_173.s4, "p_1660->g_173.s4", print_hash_value);
    transparent_crc(p_1660->g_173.s5, "p_1660->g_173.s5", print_hash_value);
    transparent_crc(p_1660->g_173.s6, "p_1660->g_173.s6", print_hash_value);
    transparent_crc(p_1660->g_173.s7, "p_1660->g_173.s7", print_hash_value);
    transparent_crc(p_1660->g_173.s8, "p_1660->g_173.s8", print_hash_value);
    transparent_crc(p_1660->g_173.s9, "p_1660->g_173.s9", print_hash_value);
    transparent_crc(p_1660->g_173.sa, "p_1660->g_173.sa", print_hash_value);
    transparent_crc(p_1660->g_173.sb, "p_1660->g_173.sb", print_hash_value);
    transparent_crc(p_1660->g_173.sc, "p_1660->g_173.sc", print_hash_value);
    transparent_crc(p_1660->g_173.sd, "p_1660->g_173.sd", print_hash_value);
    transparent_crc(p_1660->g_173.se, "p_1660->g_173.se", print_hash_value);
    transparent_crc(p_1660->g_173.sf, "p_1660->g_173.sf", print_hash_value);
    transparent_crc(p_1660->g_178, "p_1660->g_178", print_hash_value);
    transparent_crc(p_1660->g_198, "p_1660->g_198", print_hash_value);
    transparent_crc(p_1660->g_224, "p_1660->g_224", print_hash_value);
    transparent_crc(p_1660->g_242.x, "p_1660->g_242.x", print_hash_value);
    transparent_crc(p_1660->g_242.y, "p_1660->g_242.y", print_hash_value);
    transparent_crc(p_1660->g_245, "p_1660->g_245", print_hash_value);
    transparent_crc(p_1660->g_278.s0, "p_1660->g_278.s0", print_hash_value);
    transparent_crc(p_1660->g_278.s1, "p_1660->g_278.s1", print_hash_value);
    transparent_crc(p_1660->g_278.s2, "p_1660->g_278.s2", print_hash_value);
    transparent_crc(p_1660->g_278.s3, "p_1660->g_278.s3", print_hash_value);
    transparent_crc(p_1660->g_278.s4, "p_1660->g_278.s4", print_hash_value);
    transparent_crc(p_1660->g_278.s5, "p_1660->g_278.s5", print_hash_value);
    transparent_crc(p_1660->g_278.s6, "p_1660->g_278.s6", print_hash_value);
    transparent_crc(p_1660->g_278.s7, "p_1660->g_278.s7", print_hash_value);
    transparent_crc(p_1660->g_285.s0, "p_1660->g_285.s0", print_hash_value);
    transparent_crc(p_1660->g_285.s1, "p_1660->g_285.s1", print_hash_value);
    transparent_crc(p_1660->g_285.s2, "p_1660->g_285.s2", print_hash_value);
    transparent_crc(p_1660->g_285.s3, "p_1660->g_285.s3", print_hash_value);
    transparent_crc(p_1660->g_285.s4, "p_1660->g_285.s4", print_hash_value);
    transparent_crc(p_1660->g_285.s5, "p_1660->g_285.s5", print_hash_value);
    transparent_crc(p_1660->g_285.s6, "p_1660->g_285.s6", print_hash_value);
    transparent_crc(p_1660->g_285.s7, "p_1660->g_285.s7", print_hash_value);
    transparent_crc(p_1660->g_285.s8, "p_1660->g_285.s8", print_hash_value);
    transparent_crc(p_1660->g_285.s9, "p_1660->g_285.s9", print_hash_value);
    transparent_crc(p_1660->g_285.sa, "p_1660->g_285.sa", print_hash_value);
    transparent_crc(p_1660->g_285.sb, "p_1660->g_285.sb", print_hash_value);
    transparent_crc(p_1660->g_285.sc, "p_1660->g_285.sc", print_hash_value);
    transparent_crc(p_1660->g_285.sd, "p_1660->g_285.sd", print_hash_value);
    transparent_crc(p_1660->g_285.se, "p_1660->g_285.se", print_hash_value);
    transparent_crc(p_1660->g_285.sf, "p_1660->g_285.sf", print_hash_value);
    transparent_crc(p_1660->g_290.s0, "p_1660->g_290.s0", print_hash_value);
    transparent_crc(p_1660->g_290.s1, "p_1660->g_290.s1", print_hash_value);
    transparent_crc(p_1660->g_290.s2, "p_1660->g_290.s2", print_hash_value);
    transparent_crc(p_1660->g_290.s3, "p_1660->g_290.s3", print_hash_value);
    transparent_crc(p_1660->g_290.s4, "p_1660->g_290.s4", print_hash_value);
    transparent_crc(p_1660->g_290.s5, "p_1660->g_290.s5", print_hash_value);
    transparent_crc(p_1660->g_290.s6, "p_1660->g_290.s6", print_hash_value);
    transparent_crc(p_1660->g_290.s7, "p_1660->g_290.s7", print_hash_value);
    transparent_crc(p_1660->g_290.s8, "p_1660->g_290.s8", print_hash_value);
    transparent_crc(p_1660->g_290.s9, "p_1660->g_290.s9", print_hash_value);
    transparent_crc(p_1660->g_290.sa, "p_1660->g_290.sa", print_hash_value);
    transparent_crc(p_1660->g_290.sb, "p_1660->g_290.sb", print_hash_value);
    transparent_crc(p_1660->g_290.sc, "p_1660->g_290.sc", print_hash_value);
    transparent_crc(p_1660->g_290.sd, "p_1660->g_290.sd", print_hash_value);
    transparent_crc(p_1660->g_290.se, "p_1660->g_290.se", print_hash_value);
    transparent_crc(p_1660->g_290.sf, "p_1660->g_290.sf", print_hash_value);
    transparent_crc(p_1660->g_306.x, "p_1660->g_306.x", print_hash_value);
    transparent_crc(p_1660->g_306.y, "p_1660->g_306.y", print_hash_value);
    transparent_crc(p_1660->g_306.z, "p_1660->g_306.z", print_hash_value);
    transparent_crc(p_1660->g_306.w, "p_1660->g_306.w", print_hash_value);
    transparent_crc(p_1660->g_309.x, "p_1660->g_309.x", print_hash_value);
    transparent_crc(p_1660->g_309.y, "p_1660->g_309.y", print_hash_value);
    transparent_crc(p_1660->g_309.z, "p_1660->g_309.z", print_hash_value);
    transparent_crc(p_1660->g_309.w, "p_1660->g_309.w", print_hash_value);
    transparent_crc(p_1660->g_332.s0, "p_1660->g_332.s0", print_hash_value);
    transparent_crc(p_1660->g_332.s1, "p_1660->g_332.s1", print_hash_value);
    transparent_crc(p_1660->g_332.s2, "p_1660->g_332.s2", print_hash_value);
    transparent_crc(p_1660->g_332.s3, "p_1660->g_332.s3", print_hash_value);
    transparent_crc(p_1660->g_332.s4, "p_1660->g_332.s4", print_hash_value);
    transparent_crc(p_1660->g_332.s5, "p_1660->g_332.s5", print_hash_value);
    transparent_crc(p_1660->g_332.s6, "p_1660->g_332.s6", print_hash_value);
    transparent_crc(p_1660->g_332.s7, "p_1660->g_332.s7", print_hash_value);
    transparent_crc(p_1660->g_332.s8, "p_1660->g_332.s8", print_hash_value);
    transparent_crc(p_1660->g_332.s9, "p_1660->g_332.s9", print_hash_value);
    transparent_crc(p_1660->g_332.sa, "p_1660->g_332.sa", print_hash_value);
    transparent_crc(p_1660->g_332.sb, "p_1660->g_332.sb", print_hash_value);
    transparent_crc(p_1660->g_332.sc, "p_1660->g_332.sc", print_hash_value);
    transparent_crc(p_1660->g_332.sd, "p_1660->g_332.sd", print_hash_value);
    transparent_crc(p_1660->g_332.se, "p_1660->g_332.se", print_hash_value);
    transparent_crc(p_1660->g_332.sf, "p_1660->g_332.sf", print_hash_value);
    transparent_crc(p_1660->g_335, "p_1660->g_335", print_hash_value);
    transparent_crc(p_1660->g_367.x, "p_1660->g_367.x", print_hash_value);
    transparent_crc(p_1660->g_367.y, "p_1660->g_367.y", print_hash_value);
    transparent_crc(p_1660->g_369.x, "p_1660->g_369.x", print_hash_value);
    transparent_crc(p_1660->g_369.y, "p_1660->g_369.y", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1660->g_409[i][j], "p_1660->g_409[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1660->g_414, "p_1660->g_414", print_hash_value);
    transparent_crc(p_1660->g_416, "p_1660->g_416", print_hash_value);
    transparent_crc(p_1660->g_474.s0, "p_1660->g_474.s0", print_hash_value);
    transparent_crc(p_1660->g_474.s1, "p_1660->g_474.s1", print_hash_value);
    transparent_crc(p_1660->g_474.s2, "p_1660->g_474.s2", print_hash_value);
    transparent_crc(p_1660->g_474.s3, "p_1660->g_474.s3", print_hash_value);
    transparent_crc(p_1660->g_474.s4, "p_1660->g_474.s4", print_hash_value);
    transparent_crc(p_1660->g_474.s5, "p_1660->g_474.s5", print_hash_value);
    transparent_crc(p_1660->g_474.s6, "p_1660->g_474.s6", print_hash_value);
    transparent_crc(p_1660->g_474.s7, "p_1660->g_474.s7", print_hash_value);
    transparent_crc(p_1660->g_474.s8, "p_1660->g_474.s8", print_hash_value);
    transparent_crc(p_1660->g_474.s9, "p_1660->g_474.s9", print_hash_value);
    transparent_crc(p_1660->g_474.sa, "p_1660->g_474.sa", print_hash_value);
    transparent_crc(p_1660->g_474.sb, "p_1660->g_474.sb", print_hash_value);
    transparent_crc(p_1660->g_474.sc, "p_1660->g_474.sc", print_hash_value);
    transparent_crc(p_1660->g_474.sd, "p_1660->g_474.sd", print_hash_value);
    transparent_crc(p_1660->g_474.se, "p_1660->g_474.se", print_hash_value);
    transparent_crc(p_1660->g_474.sf, "p_1660->g_474.sf", print_hash_value);
    transparent_crc(p_1660->g_547, "p_1660->g_547", print_hash_value);
    transparent_crc(p_1660->g_553, "p_1660->g_553", print_hash_value);
    transparent_crc(p_1660->g_572.x, "p_1660->g_572.x", print_hash_value);
    transparent_crc(p_1660->g_572.y, "p_1660->g_572.y", print_hash_value);
    transparent_crc(p_1660->g_572.z, "p_1660->g_572.z", print_hash_value);
    transparent_crc(p_1660->g_572.w, "p_1660->g_572.w", print_hash_value);
    transparent_crc(p_1660->g_577.s0, "p_1660->g_577.s0", print_hash_value);
    transparent_crc(p_1660->g_577.s1, "p_1660->g_577.s1", print_hash_value);
    transparent_crc(p_1660->g_577.s2, "p_1660->g_577.s2", print_hash_value);
    transparent_crc(p_1660->g_577.s3, "p_1660->g_577.s3", print_hash_value);
    transparent_crc(p_1660->g_577.s4, "p_1660->g_577.s4", print_hash_value);
    transparent_crc(p_1660->g_577.s5, "p_1660->g_577.s5", print_hash_value);
    transparent_crc(p_1660->g_577.s6, "p_1660->g_577.s6", print_hash_value);
    transparent_crc(p_1660->g_577.s7, "p_1660->g_577.s7", print_hash_value);
    transparent_crc(p_1660->g_584.x, "p_1660->g_584.x", print_hash_value);
    transparent_crc(p_1660->g_584.y, "p_1660->g_584.y", print_hash_value);
    transparent_crc(p_1660->g_584.z, "p_1660->g_584.z", print_hash_value);
    transparent_crc(p_1660->g_584.w, "p_1660->g_584.w", print_hash_value);
    transparent_crc(p_1660->g_617.s0, "p_1660->g_617.s0", print_hash_value);
    transparent_crc(p_1660->g_617.s1, "p_1660->g_617.s1", print_hash_value);
    transparent_crc(p_1660->g_617.s2, "p_1660->g_617.s2", print_hash_value);
    transparent_crc(p_1660->g_617.s3, "p_1660->g_617.s3", print_hash_value);
    transparent_crc(p_1660->g_617.s4, "p_1660->g_617.s4", print_hash_value);
    transparent_crc(p_1660->g_617.s5, "p_1660->g_617.s5", print_hash_value);
    transparent_crc(p_1660->g_617.s6, "p_1660->g_617.s6", print_hash_value);
    transparent_crc(p_1660->g_617.s7, "p_1660->g_617.s7", print_hash_value);
    transparent_crc(p_1660->g_622.s0, "p_1660->g_622.s0", print_hash_value);
    transparent_crc(p_1660->g_622.s1, "p_1660->g_622.s1", print_hash_value);
    transparent_crc(p_1660->g_622.s2, "p_1660->g_622.s2", print_hash_value);
    transparent_crc(p_1660->g_622.s3, "p_1660->g_622.s3", print_hash_value);
    transparent_crc(p_1660->g_622.s4, "p_1660->g_622.s4", print_hash_value);
    transparent_crc(p_1660->g_622.s5, "p_1660->g_622.s5", print_hash_value);
    transparent_crc(p_1660->g_622.s6, "p_1660->g_622.s6", print_hash_value);
    transparent_crc(p_1660->g_622.s7, "p_1660->g_622.s7", print_hash_value);
    transparent_crc(p_1660->g_625.x, "p_1660->g_625.x", print_hash_value);
    transparent_crc(p_1660->g_625.y, "p_1660->g_625.y", print_hash_value);
    transparent_crc(p_1660->g_643.s0, "p_1660->g_643.s0", print_hash_value);
    transparent_crc(p_1660->g_643.s1, "p_1660->g_643.s1", print_hash_value);
    transparent_crc(p_1660->g_643.s2, "p_1660->g_643.s2", print_hash_value);
    transparent_crc(p_1660->g_643.s3, "p_1660->g_643.s3", print_hash_value);
    transparent_crc(p_1660->g_643.s4, "p_1660->g_643.s4", print_hash_value);
    transparent_crc(p_1660->g_643.s5, "p_1660->g_643.s5", print_hash_value);
    transparent_crc(p_1660->g_643.s6, "p_1660->g_643.s6", print_hash_value);
    transparent_crc(p_1660->g_643.s7, "p_1660->g_643.s7", print_hash_value);
    transparent_crc(p_1660->g_716, "p_1660->g_716", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1660->g_736[i], "p_1660->g_736[i]", print_hash_value);

    }
    transparent_crc(p_1660->g_753.x, "p_1660->g_753.x", print_hash_value);
    transparent_crc(p_1660->g_753.y, "p_1660->g_753.y", print_hash_value);
    transparent_crc(p_1660->g_753.z, "p_1660->g_753.z", print_hash_value);
    transparent_crc(p_1660->g_753.w, "p_1660->g_753.w", print_hash_value);
    transparent_crc(p_1660->g_782.s0, "p_1660->g_782.s0", print_hash_value);
    transparent_crc(p_1660->g_782.s1, "p_1660->g_782.s1", print_hash_value);
    transparent_crc(p_1660->g_782.s2, "p_1660->g_782.s2", print_hash_value);
    transparent_crc(p_1660->g_782.s3, "p_1660->g_782.s3", print_hash_value);
    transparent_crc(p_1660->g_782.s4, "p_1660->g_782.s4", print_hash_value);
    transparent_crc(p_1660->g_782.s5, "p_1660->g_782.s5", print_hash_value);
    transparent_crc(p_1660->g_782.s6, "p_1660->g_782.s6", print_hash_value);
    transparent_crc(p_1660->g_782.s7, "p_1660->g_782.s7", print_hash_value);
    transparent_crc(p_1660->g_846.x, "p_1660->g_846.x", print_hash_value);
    transparent_crc(p_1660->g_846.y, "p_1660->g_846.y", print_hash_value);
    transparent_crc(p_1660->g_846.z, "p_1660->g_846.z", print_hash_value);
    transparent_crc(p_1660->g_846.w, "p_1660->g_846.w", print_hash_value);
    transparent_crc(p_1660->g_851, "p_1660->g_851", print_hash_value);
    transparent_crc(p_1660->g_852, "p_1660->g_852", print_hash_value);
    transparent_crc(p_1660->g_855.s0, "p_1660->g_855.s0", print_hash_value);
    transparent_crc(p_1660->g_855.s1, "p_1660->g_855.s1", print_hash_value);
    transparent_crc(p_1660->g_855.s2, "p_1660->g_855.s2", print_hash_value);
    transparent_crc(p_1660->g_855.s3, "p_1660->g_855.s3", print_hash_value);
    transparent_crc(p_1660->g_855.s4, "p_1660->g_855.s4", print_hash_value);
    transparent_crc(p_1660->g_855.s5, "p_1660->g_855.s5", print_hash_value);
    transparent_crc(p_1660->g_855.s6, "p_1660->g_855.s6", print_hash_value);
    transparent_crc(p_1660->g_855.s7, "p_1660->g_855.s7", print_hash_value);
    transparent_crc(p_1660->g_867.s0, "p_1660->g_867.s0", print_hash_value);
    transparent_crc(p_1660->g_867.s1, "p_1660->g_867.s1", print_hash_value);
    transparent_crc(p_1660->g_867.s2, "p_1660->g_867.s2", print_hash_value);
    transparent_crc(p_1660->g_867.s3, "p_1660->g_867.s3", print_hash_value);
    transparent_crc(p_1660->g_867.s4, "p_1660->g_867.s4", print_hash_value);
    transparent_crc(p_1660->g_867.s5, "p_1660->g_867.s5", print_hash_value);
    transparent_crc(p_1660->g_867.s6, "p_1660->g_867.s6", print_hash_value);
    transparent_crc(p_1660->g_867.s7, "p_1660->g_867.s7", print_hash_value);
    transparent_crc(p_1660->g_867.s8, "p_1660->g_867.s8", print_hash_value);
    transparent_crc(p_1660->g_867.s9, "p_1660->g_867.s9", print_hash_value);
    transparent_crc(p_1660->g_867.sa, "p_1660->g_867.sa", print_hash_value);
    transparent_crc(p_1660->g_867.sb, "p_1660->g_867.sb", print_hash_value);
    transparent_crc(p_1660->g_867.sc, "p_1660->g_867.sc", print_hash_value);
    transparent_crc(p_1660->g_867.sd, "p_1660->g_867.sd", print_hash_value);
    transparent_crc(p_1660->g_867.se, "p_1660->g_867.se", print_hash_value);
    transparent_crc(p_1660->g_867.sf, "p_1660->g_867.sf", print_hash_value);
    transparent_crc(p_1660->g_871.s0, "p_1660->g_871.s0", print_hash_value);
    transparent_crc(p_1660->g_871.s1, "p_1660->g_871.s1", print_hash_value);
    transparent_crc(p_1660->g_871.s2, "p_1660->g_871.s2", print_hash_value);
    transparent_crc(p_1660->g_871.s3, "p_1660->g_871.s3", print_hash_value);
    transparent_crc(p_1660->g_871.s4, "p_1660->g_871.s4", print_hash_value);
    transparent_crc(p_1660->g_871.s5, "p_1660->g_871.s5", print_hash_value);
    transparent_crc(p_1660->g_871.s6, "p_1660->g_871.s6", print_hash_value);
    transparent_crc(p_1660->g_871.s7, "p_1660->g_871.s7", print_hash_value);
    transparent_crc(p_1660->g_871.s8, "p_1660->g_871.s8", print_hash_value);
    transparent_crc(p_1660->g_871.s9, "p_1660->g_871.s9", print_hash_value);
    transparent_crc(p_1660->g_871.sa, "p_1660->g_871.sa", print_hash_value);
    transparent_crc(p_1660->g_871.sb, "p_1660->g_871.sb", print_hash_value);
    transparent_crc(p_1660->g_871.sc, "p_1660->g_871.sc", print_hash_value);
    transparent_crc(p_1660->g_871.sd, "p_1660->g_871.sd", print_hash_value);
    transparent_crc(p_1660->g_871.se, "p_1660->g_871.se", print_hash_value);
    transparent_crc(p_1660->g_871.sf, "p_1660->g_871.sf", print_hash_value);
    transparent_crc(p_1660->g_880.x, "p_1660->g_880.x", print_hash_value);
    transparent_crc(p_1660->g_880.y, "p_1660->g_880.y", print_hash_value);
    transparent_crc(p_1660->g_887.x, "p_1660->g_887.x", print_hash_value);
    transparent_crc(p_1660->g_887.y, "p_1660->g_887.y", print_hash_value);
    transparent_crc(p_1660->g_891.s0, "p_1660->g_891.s0", print_hash_value);
    transparent_crc(p_1660->g_891.s1, "p_1660->g_891.s1", print_hash_value);
    transparent_crc(p_1660->g_891.s2, "p_1660->g_891.s2", print_hash_value);
    transparent_crc(p_1660->g_891.s3, "p_1660->g_891.s3", print_hash_value);
    transparent_crc(p_1660->g_891.s4, "p_1660->g_891.s4", print_hash_value);
    transparent_crc(p_1660->g_891.s5, "p_1660->g_891.s5", print_hash_value);
    transparent_crc(p_1660->g_891.s6, "p_1660->g_891.s6", print_hash_value);
    transparent_crc(p_1660->g_891.s7, "p_1660->g_891.s7", print_hash_value);
    transparent_crc(p_1660->g_891.s8, "p_1660->g_891.s8", print_hash_value);
    transparent_crc(p_1660->g_891.s9, "p_1660->g_891.s9", print_hash_value);
    transparent_crc(p_1660->g_891.sa, "p_1660->g_891.sa", print_hash_value);
    transparent_crc(p_1660->g_891.sb, "p_1660->g_891.sb", print_hash_value);
    transparent_crc(p_1660->g_891.sc, "p_1660->g_891.sc", print_hash_value);
    transparent_crc(p_1660->g_891.sd, "p_1660->g_891.sd", print_hash_value);
    transparent_crc(p_1660->g_891.se, "p_1660->g_891.se", print_hash_value);
    transparent_crc(p_1660->g_891.sf, "p_1660->g_891.sf", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1660->g_901[i], "p_1660->g_901[i]", print_hash_value);

    }
    transparent_crc(p_1660->g_935.s0, "p_1660->g_935.s0", print_hash_value);
    transparent_crc(p_1660->g_935.s1, "p_1660->g_935.s1", print_hash_value);
    transparent_crc(p_1660->g_935.s2, "p_1660->g_935.s2", print_hash_value);
    transparent_crc(p_1660->g_935.s3, "p_1660->g_935.s3", print_hash_value);
    transparent_crc(p_1660->g_935.s4, "p_1660->g_935.s4", print_hash_value);
    transparent_crc(p_1660->g_935.s5, "p_1660->g_935.s5", print_hash_value);
    transparent_crc(p_1660->g_935.s6, "p_1660->g_935.s6", print_hash_value);
    transparent_crc(p_1660->g_935.s7, "p_1660->g_935.s7", print_hash_value);
    transparent_crc(p_1660->g_935.s8, "p_1660->g_935.s8", print_hash_value);
    transparent_crc(p_1660->g_935.s9, "p_1660->g_935.s9", print_hash_value);
    transparent_crc(p_1660->g_935.sa, "p_1660->g_935.sa", print_hash_value);
    transparent_crc(p_1660->g_935.sb, "p_1660->g_935.sb", print_hash_value);
    transparent_crc(p_1660->g_935.sc, "p_1660->g_935.sc", print_hash_value);
    transparent_crc(p_1660->g_935.sd, "p_1660->g_935.sd", print_hash_value);
    transparent_crc(p_1660->g_935.se, "p_1660->g_935.se", print_hash_value);
    transparent_crc(p_1660->g_935.sf, "p_1660->g_935.sf", print_hash_value);
    transparent_crc(p_1660->g_976.x, "p_1660->g_976.x", print_hash_value);
    transparent_crc(p_1660->g_976.y, "p_1660->g_976.y", print_hash_value);
    transparent_crc(p_1660->g_977.s0, "p_1660->g_977.s0", print_hash_value);
    transparent_crc(p_1660->g_977.s1, "p_1660->g_977.s1", print_hash_value);
    transparent_crc(p_1660->g_977.s2, "p_1660->g_977.s2", print_hash_value);
    transparent_crc(p_1660->g_977.s3, "p_1660->g_977.s3", print_hash_value);
    transparent_crc(p_1660->g_977.s4, "p_1660->g_977.s4", print_hash_value);
    transparent_crc(p_1660->g_977.s5, "p_1660->g_977.s5", print_hash_value);
    transparent_crc(p_1660->g_977.s6, "p_1660->g_977.s6", print_hash_value);
    transparent_crc(p_1660->g_977.s7, "p_1660->g_977.s7", print_hash_value);
    transparent_crc(p_1660->g_978.s0, "p_1660->g_978.s0", print_hash_value);
    transparent_crc(p_1660->g_978.s1, "p_1660->g_978.s1", print_hash_value);
    transparent_crc(p_1660->g_978.s2, "p_1660->g_978.s2", print_hash_value);
    transparent_crc(p_1660->g_978.s3, "p_1660->g_978.s3", print_hash_value);
    transparent_crc(p_1660->g_978.s4, "p_1660->g_978.s4", print_hash_value);
    transparent_crc(p_1660->g_978.s5, "p_1660->g_978.s5", print_hash_value);
    transparent_crc(p_1660->g_978.s6, "p_1660->g_978.s6", print_hash_value);
    transparent_crc(p_1660->g_978.s7, "p_1660->g_978.s7", print_hash_value);
    transparent_crc(p_1660->g_978.s8, "p_1660->g_978.s8", print_hash_value);
    transparent_crc(p_1660->g_978.s9, "p_1660->g_978.s9", print_hash_value);
    transparent_crc(p_1660->g_978.sa, "p_1660->g_978.sa", print_hash_value);
    transparent_crc(p_1660->g_978.sb, "p_1660->g_978.sb", print_hash_value);
    transparent_crc(p_1660->g_978.sc, "p_1660->g_978.sc", print_hash_value);
    transparent_crc(p_1660->g_978.sd, "p_1660->g_978.sd", print_hash_value);
    transparent_crc(p_1660->g_978.se, "p_1660->g_978.se", print_hash_value);
    transparent_crc(p_1660->g_978.sf, "p_1660->g_978.sf", print_hash_value);
    transparent_crc(p_1660->g_1011, "p_1660->g_1011", print_hash_value);
    transparent_crc(p_1660->g_1048, "p_1660->g_1048", print_hash_value);
    transparent_crc(p_1660->g_1073.x, "p_1660->g_1073.x", print_hash_value);
    transparent_crc(p_1660->g_1073.y, "p_1660->g_1073.y", print_hash_value);
    transparent_crc(p_1660->g_1074.x, "p_1660->g_1074.x", print_hash_value);
    transparent_crc(p_1660->g_1074.y, "p_1660->g_1074.y", print_hash_value);
    transparent_crc(p_1660->g_1083.x, "p_1660->g_1083.x", print_hash_value);
    transparent_crc(p_1660->g_1083.y, "p_1660->g_1083.y", print_hash_value);
    transparent_crc(p_1660->g_1083.z, "p_1660->g_1083.z", print_hash_value);
    transparent_crc(p_1660->g_1083.w, "p_1660->g_1083.w", print_hash_value);
    transparent_crc(p_1660->g_1085.x, "p_1660->g_1085.x", print_hash_value);
    transparent_crc(p_1660->g_1085.y, "p_1660->g_1085.y", print_hash_value);
    transparent_crc(p_1660->g_1085.z, "p_1660->g_1085.z", print_hash_value);
    transparent_crc(p_1660->g_1085.w, "p_1660->g_1085.w", print_hash_value);
    transparent_crc(p_1660->g_1086.x, "p_1660->g_1086.x", print_hash_value);
    transparent_crc(p_1660->g_1086.y, "p_1660->g_1086.y", print_hash_value);
    transparent_crc(p_1660->g_1086.z, "p_1660->g_1086.z", print_hash_value);
    transparent_crc(p_1660->g_1086.w, "p_1660->g_1086.w", print_hash_value);
    transparent_crc(p_1660->g_1095.s0, "p_1660->g_1095.s0", print_hash_value);
    transparent_crc(p_1660->g_1095.s1, "p_1660->g_1095.s1", print_hash_value);
    transparent_crc(p_1660->g_1095.s2, "p_1660->g_1095.s2", print_hash_value);
    transparent_crc(p_1660->g_1095.s3, "p_1660->g_1095.s3", print_hash_value);
    transparent_crc(p_1660->g_1095.s4, "p_1660->g_1095.s4", print_hash_value);
    transparent_crc(p_1660->g_1095.s5, "p_1660->g_1095.s5", print_hash_value);
    transparent_crc(p_1660->g_1095.s6, "p_1660->g_1095.s6", print_hash_value);
    transparent_crc(p_1660->g_1095.s7, "p_1660->g_1095.s7", print_hash_value);
    transparent_crc(p_1660->g_1095.s8, "p_1660->g_1095.s8", print_hash_value);
    transparent_crc(p_1660->g_1095.s9, "p_1660->g_1095.s9", print_hash_value);
    transparent_crc(p_1660->g_1095.sa, "p_1660->g_1095.sa", print_hash_value);
    transparent_crc(p_1660->g_1095.sb, "p_1660->g_1095.sb", print_hash_value);
    transparent_crc(p_1660->g_1095.sc, "p_1660->g_1095.sc", print_hash_value);
    transparent_crc(p_1660->g_1095.sd, "p_1660->g_1095.sd", print_hash_value);
    transparent_crc(p_1660->g_1095.se, "p_1660->g_1095.se", print_hash_value);
    transparent_crc(p_1660->g_1095.sf, "p_1660->g_1095.sf", print_hash_value);
    transparent_crc(p_1660->g_1098.x, "p_1660->g_1098.x", print_hash_value);
    transparent_crc(p_1660->g_1098.y, "p_1660->g_1098.y", print_hash_value);
    transparent_crc(p_1660->g_1098.z, "p_1660->g_1098.z", print_hash_value);
    transparent_crc(p_1660->g_1098.w, "p_1660->g_1098.w", print_hash_value);
    transparent_crc(p_1660->g_1108.s0, "p_1660->g_1108.s0", print_hash_value);
    transparent_crc(p_1660->g_1108.s1, "p_1660->g_1108.s1", print_hash_value);
    transparent_crc(p_1660->g_1108.s2, "p_1660->g_1108.s2", print_hash_value);
    transparent_crc(p_1660->g_1108.s3, "p_1660->g_1108.s3", print_hash_value);
    transparent_crc(p_1660->g_1108.s4, "p_1660->g_1108.s4", print_hash_value);
    transparent_crc(p_1660->g_1108.s5, "p_1660->g_1108.s5", print_hash_value);
    transparent_crc(p_1660->g_1108.s6, "p_1660->g_1108.s6", print_hash_value);
    transparent_crc(p_1660->g_1108.s7, "p_1660->g_1108.s7", print_hash_value);
    transparent_crc(p_1660->g_1108.s8, "p_1660->g_1108.s8", print_hash_value);
    transparent_crc(p_1660->g_1108.s9, "p_1660->g_1108.s9", print_hash_value);
    transparent_crc(p_1660->g_1108.sa, "p_1660->g_1108.sa", print_hash_value);
    transparent_crc(p_1660->g_1108.sb, "p_1660->g_1108.sb", print_hash_value);
    transparent_crc(p_1660->g_1108.sc, "p_1660->g_1108.sc", print_hash_value);
    transparent_crc(p_1660->g_1108.sd, "p_1660->g_1108.sd", print_hash_value);
    transparent_crc(p_1660->g_1108.se, "p_1660->g_1108.se", print_hash_value);
    transparent_crc(p_1660->g_1108.sf, "p_1660->g_1108.sf", print_hash_value);
    transparent_crc(p_1660->g_1110.x, "p_1660->g_1110.x", print_hash_value);
    transparent_crc(p_1660->g_1110.y, "p_1660->g_1110.y", print_hash_value);
    transparent_crc(p_1660->g_1110.z, "p_1660->g_1110.z", print_hash_value);
    transparent_crc(p_1660->g_1110.w, "p_1660->g_1110.w", print_hash_value);
    transparent_crc(p_1660->g_1113.s0, "p_1660->g_1113.s0", print_hash_value);
    transparent_crc(p_1660->g_1113.s1, "p_1660->g_1113.s1", print_hash_value);
    transparent_crc(p_1660->g_1113.s2, "p_1660->g_1113.s2", print_hash_value);
    transparent_crc(p_1660->g_1113.s3, "p_1660->g_1113.s3", print_hash_value);
    transparent_crc(p_1660->g_1113.s4, "p_1660->g_1113.s4", print_hash_value);
    transparent_crc(p_1660->g_1113.s5, "p_1660->g_1113.s5", print_hash_value);
    transparent_crc(p_1660->g_1113.s6, "p_1660->g_1113.s6", print_hash_value);
    transparent_crc(p_1660->g_1113.s7, "p_1660->g_1113.s7", print_hash_value);
    transparent_crc(p_1660->g_1148.s0, "p_1660->g_1148.s0", print_hash_value);
    transparent_crc(p_1660->g_1148.s1, "p_1660->g_1148.s1", print_hash_value);
    transparent_crc(p_1660->g_1148.s2, "p_1660->g_1148.s2", print_hash_value);
    transparent_crc(p_1660->g_1148.s3, "p_1660->g_1148.s3", print_hash_value);
    transparent_crc(p_1660->g_1148.s4, "p_1660->g_1148.s4", print_hash_value);
    transparent_crc(p_1660->g_1148.s5, "p_1660->g_1148.s5", print_hash_value);
    transparent_crc(p_1660->g_1148.s6, "p_1660->g_1148.s6", print_hash_value);
    transparent_crc(p_1660->g_1148.s7, "p_1660->g_1148.s7", print_hash_value);
    transparent_crc(p_1660->g_1153.s0, "p_1660->g_1153.s0", print_hash_value);
    transparent_crc(p_1660->g_1153.s1, "p_1660->g_1153.s1", print_hash_value);
    transparent_crc(p_1660->g_1153.s2, "p_1660->g_1153.s2", print_hash_value);
    transparent_crc(p_1660->g_1153.s3, "p_1660->g_1153.s3", print_hash_value);
    transparent_crc(p_1660->g_1153.s4, "p_1660->g_1153.s4", print_hash_value);
    transparent_crc(p_1660->g_1153.s5, "p_1660->g_1153.s5", print_hash_value);
    transparent_crc(p_1660->g_1153.s6, "p_1660->g_1153.s6", print_hash_value);
    transparent_crc(p_1660->g_1153.s7, "p_1660->g_1153.s7", print_hash_value);
    transparent_crc(p_1660->g_1155.s0, "p_1660->g_1155.s0", print_hash_value);
    transparent_crc(p_1660->g_1155.s1, "p_1660->g_1155.s1", print_hash_value);
    transparent_crc(p_1660->g_1155.s2, "p_1660->g_1155.s2", print_hash_value);
    transparent_crc(p_1660->g_1155.s3, "p_1660->g_1155.s3", print_hash_value);
    transparent_crc(p_1660->g_1155.s4, "p_1660->g_1155.s4", print_hash_value);
    transparent_crc(p_1660->g_1155.s5, "p_1660->g_1155.s5", print_hash_value);
    transparent_crc(p_1660->g_1155.s6, "p_1660->g_1155.s6", print_hash_value);
    transparent_crc(p_1660->g_1155.s7, "p_1660->g_1155.s7", print_hash_value);
    transparent_crc(p_1660->g_1165.x, "p_1660->g_1165.x", print_hash_value);
    transparent_crc(p_1660->g_1165.y, "p_1660->g_1165.y", print_hash_value);
    transparent_crc(p_1660->g_1165.z, "p_1660->g_1165.z", print_hash_value);
    transparent_crc(p_1660->g_1165.w, "p_1660->g_1165.w", print_hash_value);
    transparent_crc(p_1660->g_1216.x, "p_1660->g_1216.x", print_hash_value);
    transparent_crc(p_1660->g_1216.y, "p_1660->g_1216.y", print_hash_value);
    transparent_crc(p_1660->g_1216.z, "p_1660->g_1216.z", print_hash_value);
    transparent_crc(p_1660->g_1216.w, "p_1660->g_1216.w", print_hash_value);
    transparent_crc(p_1660->g_1217.x, "p_1660->g_1217.x", print_hash_value);
    transparent_crc(p_1660->g_1217.y, "p_1660->g_1217.y", print_hash_value);
    transparent_crc(p_1660->g_1217.z, "p_1660->g_1217.z", print_hash_value);
    transparent_crc(p_1660->g_1217.w, "p_1660->g_1217.w", print_hash_value);
    transparent_crc(p_1660->g_1218.x, "p_1660->g_1218.x", print_hash_value);
    transparent_crc(p_1660->g_1218.y, "p_1660->g_1218.y", print_hash_value);
    transparent_crc(p_1660->g_1218.z, "p_1660->g_1218.z", print_hash_value);
    transparent_crc(p_1660->g_1218.w, "p_1660->g_1218.w", print_hash_value);
    transparent_crc(p_1660->g_1220.s0, "p_1660->g_1220.s0", print_hash_value);
    transparent_crc(p_1660->g_1220.s1, "p_1660->g_1220.s1", print_hash_value);
    transparent_crc(p_1660->g_1220.s2, "p_1660->g_1220.s2", print_hash_value);
    transparent_crc(p_1660->g_1220.s3, "p_1660->g_1220.s3", print_hash_value);
    transparent_crc(p_1660->g_1220.s4, "p_1660->g_1220.s4", print_hash_value);
    transparent_crc(p_1660->g_1220.s5, "p_1660->g_1220.s5", print_hash_value);
    transparent_crc(p_1660->g_1220.s6, "p_1660->g_1220.s6", print_hash_value);
    transparent_crc(p_1660->g_1220.s7, "p_1660->g_1220.s7", print_hash_value);
    transparent_crc(p_1660->g_1242.s0, "p_1660->g_1242.s0", print_hash_value);
    transparent_crc(p_1660->g_1242.s1, "p_1660->g_1242.s1", print_hash_value);
    transparent_crc(p_1660->g_1242.s2, "p_1660->g_1242.s2", print_hash_value);
    transparent_crc(p_1660->g_1242.s3, "p_1660->g_1242.s3", print_hash_value);
    transparent_crc(p_1660->g_1242.s4, "p_1660->g_1242.s4", print_hash_value);
    transparent_crc(p_1660->g_1242.s5, "p_1660->g_1242.s5", print_hash_value);
    transparent_crc(p_1660->g_1242.s6, "p_1660->g_1242.s6", print_hash_value);
    transparent_crc(p_1660->g_1242.s7, "p_1660->g_1242.s7", print_hash_value);
    transparent_crc(p_1660->g_1242.s8, "p_1660->g_1242.s8", print_hash_value);
    transparent_crc(p_1660->g_1242.s9, "p_1660->g_1242.s9", print_hash_value);
    transparent_crc(p_1660->g_1242.sa, "p_1660->g_1242.sa", print_hash_value);
    transparent_crc(p_1660->g_1242.sb, "p_1660->g_1242.sb", print_hash_value);
    transparent_crc(p_1660->g_1242.sc, "p_1660->g_1242.sc", print_hash_value);
    transparent_crc(p_1660->g_1242.sd, "p_1660->g_1242.sd", print_hash_value);
    transparent_crc(p_1660->g_1242.se, "p_1660->g_1242.se", print_hash_value);
    transparent_crc(p_1660->g_1242.sf, "p_1660->g_1242.sf", print_hash_value);
    transparent_crc(p_1660->g_1247.x, "p_1660->g_1247.x", print_hash_value);
    transparent_crc(p_1660->g_1247.y, "p_1660->g_1247.y", print_hash_value);
    transparent_crc(p_1660->g_1252.s0, "p_1660->g_1252.s0", print_hash_value);
    transparent_crc(p_1660->g_1252.s1, "p_1660->g_1252.s1", print_hash_value);
    transparent_crc(p_1660->g_1252.s2, "p_1660->g_1252.s2", print_hash_value);
    transparent_crc(p_1660->g_1252.s3, "p_1660->g_1252.s3", print_hash_value);
    transparent_crc(p_1660->g_1252.s4, "p_1660->g_1252.s4", print_hash_value);
    transparent_crc(p_1660->g_1252.s5, "p_1660->g_1252.s5", print_hash_value);
    transparent_crc(p_1660->g_1252.s6, "p_1660->g_1252.s6", print_hash_value);
    transparent_crc(p_1660->g_1252.s7, "p_1660->g_1252.s7", print_hash_value);
    transparent_crc(p_1660->g_1252.s8, "p_1660->g_1252.s8", print_hash_value);
    transparent_crc(p_1660->g_1252.s9, "p_1660->g_1252.s9", print_hash_value);
    transparent_crc(p_1660->g_1252.sa, "p_1660->g_1252.sa", print_hash_value);
    transparent_crc(p_1660->g_1252.sb, "p_1660->g_1252.sb", print_hash_value);
    transparent_crc(p_1660->g_1252.sc, "p_1660->g_1252.sc", print_hash_value);
    transparent_crc(p_1660->g_1252.sd, "p_1660->g_1252.sd", print_hash_value);
    transparent_crc(p_1660->g_1252.se, "p_1660->g_1252.se", print_hash_value);
    transparent_crc(p_1660->g_1252.sf, "p_1660->g_1252.sf", print_hash_value);
    transparent_crc(p_1660->g_1263.x, "p_1660->g_1263.x", print_hash_value);
    transparent_crc(p_1660->g_1263.y, "p_1660->g_1263.y", print_hash_value);
    transparent_crc(p_1660->g_1263.z, "p_1660->g_1263.z", print_hash_value);
    transparent_crc(p_1660->g_1263.w, "p_1660->g_1263.w", print_hash_value);
    transparent_crc(p_1660->g_1265.x, "p_1660->g_1265.x", print_hash_value);
    transparent_crc(p_1660->g_1265.y, "p_1660->g_1265.y", print_hash_value);
    transparent_crc(p_1660->g_1265.z, "p_1660->g_1265.z", print_hash_value);
    transparent_crc(p_1660->g_1265.w, "p_1660->g_1265.w", print_hash_value);
    transparent_crc(p_1660->g_1301, "p_1660->g_1301", print_hash_value);
    transparent_crc(p_1660->g_1304.x, "p_1660->g_1304.x", print_hash_value);
    transparent_crc(p_1660->g_1304.y, "p_1660->g_1304.y", print_hash_value);
    transparent_crc(p_1660->g_1304.z, "p_1660->g_1304.z", print_hash_value);
    transparent_crc(p_1660->g_1304.w, "p_1660->g_1304.w", print_hash_value);
    transparent_crc(p_1660->g_1326.x, "p_1660->g_1326.x", print_hash_value);
    transparent_crc(p_1660->g_1326.y, "p_1660->g_1326.y", print_hash_value);
    transparent_crc(p_1660->g_1326.z, "p_1660->g_1326.z", print_hash_value);
    transparent_crc(p_1660->g_1326.w, "p_1660->g_1326.w", print_hash_value);
    transparent_crc(p_1660->g_1329.s0, "p_1660->g_1329.s0", print_hash_value);
    transparent_crc(p_1660->g_1329.s1, "p_1660->g_1329.s1", print_hash_value);
    transparent_crc(p_1660->g_1329.s2, "p_1660->g_1329.s2", print_hash_value);
    transparent_crc(p_1660->g_1329.s3, "p_1660->g_1329.s3", print_hash_value);
    transparent_crc(p_1660->g_1329.s4, "p_1660->g_1329.s4", print_hash_value);
    transparent_crc(p_1660->g_1329.s5, "p_1660->g_1329.s5", print_hash_value);
    transparent_crc(p_1660->g_1329.s6, "p_1660->g_1329.s6", print_hash_value);
    transparent_crc(p_1660->g_1329.s7, "p_1660->g_1329.s7", print_hash_value);
    transparent_crc(p_1660->g_1329.s8, "p_1660->g_1329.s8", print_hash_value);
    transparent_crc(p_1660->g_1329.s9, "p_1660->g_1329.s9", print_hash_value);
    transparent_crc(p_1660->g_1329.sa, "p_1660->g_1329.sa", print_hash_value);
    transparent_crc(p_1660->g_1329.sb, "p_1660->g_1329.sb", print_hash_value);
    transparent_crc(p_1660->g_1329.sc, "p_1660->g_1329.sc", print_hash_value);
    transparent_crc(p_1660->g_1329.sd, "p_1660->g_1329.sd", print_hash_value);
    transparent_crc(p_1660->g_1329.se, "p_1660->g_1329.se", print_hash_value);
    transparent_crc(p_1660->g_1329.sf, "p_1660->g_1329.sf", print_hash_value);
    transparent_crc(p_1660->g_1331.s0, "p_1660->g_1331.s0", print_hash_value);
    transparent_crc(p_1660->g_1331.s1, "p_1660->g_1331.s1", print_hash_value);
    transparent_crc(p_1660->g_1331.s2, "p_1660->g_1331.s2", print_hash_value);
    transparent_crc(p_1660->g_1331.s3, "p_1660->g_1331.s3", print_hash_value);
    transparent_crc(p_1660->g_1331.s4, "p_1660->g_1331.s4", print_hash_value);
    transparent_crc(p_1660->g_1331.s5, "p_1660->g_1331.s5", print_hash_value);
    transparent_crc(p_1660->g_1331.s6, "p_1660->g_1331.s6", print_hash_value);
    transparent_crc(p_1660->g_1331.s7, "p_1660->g_1331.s7", print_hash_value);
    transparent_crc(p_1660->g_1336.s0, "p_1660->g_1336.s0", print_hash_value);
    transparent_crc(p_1660->g_1336.s1, "p_1660->g_1336.s1", print_hash_value);
    transparent_crc(p_1660->g_1336.s2, "p_1660->g_1336.s2", print_hash_value);
    transparent_crc(p_1660->g_1336.s3, "p_1660->g_1336.s3", print_hash_value);
    transparent_crc(p_1660->g_1336.s4, "p_1660->g_1336.s4", print_hash_value);
    transparent_crc(p_1660->g_1336.s5, "p_1660->g_1336.s5", print_hash_value);
    transparent_crc(p_1660->g_1336.s6, "p_1660->g_1336.s6", print_hash_value);
    transparent_crc(p_1660->g_1336.s7, "p_1660->g_1336.s7", print_hash_value);
    transparent_crc(p_1660->g_1336.s8, "p_1660->g_1336.s8", print_hash_value);
    transparent_crc(p_1660->g_1336.s9, "p_1660->g_1336.s9", print_hash_value);
    transparent_crc(p_1660->g_1336.sa, "p_1660->g_1336.sa", print_hash_value);
    transparent_crc(p_1660->g_1336.sb, "p_1660->g_1336.sb", print_hash_value);
    transparent_crc(p_1660->g_1336.sc, "p_1660->g_1336.sc", print_hash_value);
    transparent_crc(p_1660->g_1336.sd, "p_1660->g_1336.sd", print_hash_value);
    transparent_crc(p_1660->g_1336.se, "p_1660->g_1336.se", print_hash_value);
    transparent_crc(p_1660->g_1336.sf, "p_1660->g_1336.sf", print_hash_value);
    transparent_crc(p_1660->g_1342.s0, "p_1660->g_1342.s0", print_hash_value);
    transparent_crc(p_1660->g_1342.s1, "p_1660->g_1342.s1", print_hash_value);
    transparent_crc(p_1660->g_1342.s2, "p_1660->g_1342.s2", print_hash_value);
    transparent_crc(p_1660->g_1342.s3, "p_1660->g_1342.s3", print_hash_value);
    transparent_crc(p_1660->g_1342.s4, "p_1660->g_1342.s4", print_hash_value);
    transparent_crc(p_1660->g_1342.s5, "p_1660->g_1342.s5", print_hash_value);
    transparent_crc(p_1660->g_1342.s6, "p_1660->g_1342.s6", print_hash_value);
    transparent_crc(p_1660->g_1342.s7, "p_1660->g_1342.s7", print_hash_value);
    transparent_crc(p_1660->g_1359.s0, "p_1660->g_1359.s0", print_hash_value);
    transparent_crc(p_1660->g_1359.s1, "p_1660->g_1359.s1", print_hash_value);
    transparent_crc(p_1660->g_1359.s2, "p_1660->g_1359.s2", print_hash_value);
    transparent_crc(p_1660->g_1359.s3, "p_1660->g_1359.s3", print_hash_value);
    transparent_crc(p_1660->g_1359.s4, "p_1660->g_1359.s4", print_hash_value);
    transparent_crc(p_1660->g_1359.s5, "p_1660->g_1359.s5", print_hash_value);
    transparent_crc(p_1660->g_1359.s6, "p_1660->g_1359.s6", print_hash_value);
    transparent_crc(p_1660->g_1359.s7, "p_1660->g_1359.s7", print_hash_value);
    transparent_crc(p_1660->g_1359.s8, "p_1660->g_1359.s8", print_hash_value);
    transparent_crc(p_1660->g_1359.s9, "p_1660->g_1359.s9", print_hash_value);
    transparent_crc(p_1660->g_1359.sa, "p_1660->g_1359.sa", print_hash_value);
    transparent_crc(p_1660->g_1359.sb, "p_1660->g_1359.sb", print_hash_value);
    transparent_crc(p_1660->g_1359.sc, "p_1660->g_1359.sc", print_hash_value);
    transparent_crc(p_1660->g_1359.sd, "p_1660->g_1359.sd", print_hash_value);
    transparent_crc(p_1660->g_1359.se, "p_1660->g_1359.se", print_hash_value);
    transparent_crc(p_1660->g_1359.sf, "p_1660->g_1359.sf", print_hash_value);
    transparent_crc(p_1660->g_1399, "p_1660->g_1399", print_hash_value);
    transparent_crc(p_1660->g_1431.s0, "p_1660->g_1431.s0", print_hash_value);
    transparent_crc(p_1660->g_1431.s1, "p_1660->g_1431.s1", print_hash_value);
    transparent_crc(p_1660->g_1431.s2, "p_1660->g_1431.s2", print_hash_value);
    transparent_crc(p_1660->g_1431.s3, "p_1660->g_1431.s3", print_hash_value);
    transparent_crc(p_1660->g_1431.s4, "p_1660->g_1431.s4", print_hash_value);
    transparent_crc(p_1660->g_1431.s5, "p_1660->g_1431.s5", print_hash_value);
    transparent_crc(p_1660->g_1431.s6, "p_1660->g_1431.s6", print_hash_value);
    transparent_crc(p_1660->g_1431.s7, "p_1660->g_1431.s7", print_hash_value);
    transparent_crc(p_1660->g_1471.x, "p_1660->g_1471.x", print_hash_value);
    transparent_crc(p_1660->g_1471.y, "p_1660->g_1471.y", print_hash_value);
    transparent_crc(p_1660->g_1471.z, "p_1660->g_1471.z", print_hash_value);
    transparent_crc(p_1660->g_1471.w, "p_1660->g_1471.w", print_hash_value);
    transparent_crc(p_1660->g_1473.x, "p_1660->g_1473.x", print_hash_value);
    transparent_crc(p_1660->g_1473.y, "p_1660->g_1473.y", print_hash_value);
    transparent_crc(p_1660->g_1473.z, "p_1660->g_1473.z", print_hash_value);
    transparent_crc(p_1660->g_1473.w, "p_1660->g_1473.w", print_hash_value);
    transparent_crc(p_1660->g_1486, "p_1660->g_1486", print_hash_value);
    transparent_crc(p_1660->g_1508.s0, "p_1660->g_1508.s0", print_hash_value);
    transparent_crc(p_1660->g_1508.s1, "p_1660->g_1508.s1", print_hash_value);
    transparent_crc(p_1660->g_1508.s2, "p_1660->g_1508.s2", print_hash_value);
    transparent_crc(p_1660->g_1508.s3, "p_1660->g_1508.s3", print_hash_value);
    transparent_crc(p_1660->g_1508.s4, "p_1660->g_1508.s4", print_hash_value);
    transparent_crc(p_1660->g_1508.s5, "p_1660->g_1508.s5", print_hash_value);
    transparent_crc(p_1660->g_1508.s6, "p_1660->g_1508.s6", print_hash_value);
    transparent_crc(p_1660->g_1508.s7, "p_1660->g_1508.s7", print_hash_value);
    transparent_crc(p_1660->g_1522.x, "p_1660->g_1522.x", print_hash_value);
    transparent_crc(p_1660->g_1522.y, "p_1660->g_1522.y", print_hash_value);
    transparent_crc(p_1660->g_1538.s0, "p_1660->g_1538.s0", print_hash_value);
    transparent_crc(p_1660->g_1538.s1, "p_1660->g_1538.s1", print_hash_value);
    transparent_crc(p_1660->g_1538.s2, "p_1660->g_1538.s2", print_hash_value);
    transparent_crc(p_1660->g_1538.s3, "p_1660->g_1538.s3", print_hash_value);
    transparent_crc(p_1660->g_1538.s4, "p_1660->g_1538.s4", print_hash_value);
    transparent_crc(p_1660->g_1538.s5, "p_1660->g_1538.s5", print_hash_value);
    transparent_crc(p_1660->g_1538.s6, "p_1660->g_1538.s6", print_hash_value);
    transparent_crc(p_1660->g_1538.s7, "p_1660->g_1538.s7", print_hash_value);
    transparent_crc(p_1660->g_1538.s8, "p_1660->g_1538.s8", print_hash_value);
    transparent_crc(p_1660->g_1538.s9, "p_1660->g_1538.s9", print_hash_value);
    transparent_crc(p_1660->g_1538.sa, "p_1660->g_1538.sa", print_hash_value);
    transparent_crc(p_1660->g_1538.sb, "p_1660->g_1538.sb", print_hash_value);
    transparent_crc(p_1660->g_1538.sc, "p_1660->g_1538.sc", print_hash_value);
    transparent_crc(p_1660->g_1538.sd, "p_1660->g_1538.sd", print_hash_value);
    transparent_crc(p_1660->g_1538.se, "p_1660->g_1538.se", print_hash_value);
    transparent_crc(p_1660->g_1538.sf, "p_1660->g_1538.sf", print_hash_value);
    transparent_crc(p_1660->g_1564.s0, "p_1660->g_1564.s0", print_hash_value);
    transparent_crc(p_1660->g_1564.s1, "p_1660->g_1564.s1", print_hash_value);
    transparent_crc(p_1660->g_1564.s2, "p_1660->g_1564.s2", print_hash_value);
    transparent_crc(p_1660->g_1564.s3, "p_1660->g_1564.s3", print_hash_value);
    transparent_crc(p_1660->g_1564.s4, "p_1660->g_1564.s4", print_hash_value);
    transparent_crc(p_1660->g_1564.s5, "p_1660->g_1564.s5", print_hash_value);
    transparent_crc(p_1660->g_1564.s6, "p_1660->g_1564.s6", print_hash_value);
    transparent_crc(p_1660->g_1564.s7, "p_1660->g_1564.s7", print_hash_value);
    transparent_crc(p_1660->g_1564.s8, "p_1660->g_1564.s8", print_hash_value);
    transparent_crc(p_1660->g_1564.s9, "p_1660->g_1564.s9", print_hash_value);
    transparent_crc(p_1660->g_1564.sa, "p_1660->g_1564.sa", print_hash_value);
    transparent_crc(p_1660->g_1564.sb, "p_1660->g_1564.sb", print_hash_value);
    transparent_crc(p_1660->g_1564.sc, "p_1660->g_1564.sc", print_hash_value);
    transparent_crc(p_1660->g_1564.sd, "p_1660->g_1564.sd", print_hash_value);
    transparent_crc(p_1660->g_1564.se, "p_1660->g_1564.se", print_hash_value);
    transparent_crc(p_1660->g_1564.sf, "p_1660->g_1564.sf", print_hash_value);
    transparent_crc(p_1660->g_1565.x, "p_1660->g_1565.x", print_hash_value);
    transparent_crc(p_1660->g_1565.y, "p_1660->g_1565.y", print_hash_value);
    transparent_crc(p_1660->g_1565.z, "p_1660->g_1565.z", print_hash_value);
    transparent_crc(p_1660->g_1565.w, "p_1660->g_1565.w", print_hash_value);
    transparent_crc(p_1660->g_1566.x, "p_1660->g_1566.x", print_hash_value);
    transparent_crc(p_1660->g_1566.y, "p_1660->g_1566.y", print_hash_value);
    transparent_crc(p_1660->g_1572, "p_1660->g_1572", print_hash_value);
    transparent_crc(p_1660->g_1578.s0, "p_1660->g_1578.s0", print_hash_value);
    transparent_crc(p_1660->g_1578.s1, "p_1660->g_1578.s1", print_hash_value);
    transparent_crc(p_1660->g_1578.s2, "p_1660->g_1578.s2", print_hash_value);
    transparent_crc(p_1660->g_1578.s3, "p_1660->g_1578.s3", print_hash_value);
    transparent_crc(p_1660->g_1578.s4, "p_1660->g_1578.s4", print_hash_value);
    transparent_crc(p_1660->g_1578.s5, "p_1660->g_1578.s5", print_hash_value);
    transparent_crc(p_1660->g_1578.s6, "p_1660->g_1578.s6", print_hash_value);
    transparent_crc(p_1660->g_1578.s7, "p_1660->g_1578.s7", print_hash_value);
    transparent_crc(p_1660->g_1626.s0, "p_1660->g_1626.s0", print_hash_value);
    transparent_crc(p_1660->g_1626.s1, "p_1660->g_1626.s1", print_hash_value);
    transparent_crc(p_1660->g_1626.s2, "p_1660->g_1626.s2", print_hash_value);
    transparent_crc(p_1660->g_1626.s3, "p_1660->g_1626.s3", print_hash_value);
    transparent_crc(p_1660->g_1626.s4, "p_1660->g_1626.s4", print_hash_value);
    transparent_crc(p_1660->g_1626.s5, "p_1660->g_1626.s5", print_hash_value);
    transparent_crc(p_1660->g_1626.s6, "p_1660->g_1626.s6", print_hash_value);
    transparent_crc(p_1660->g_1626.s7, "p_1660->g_1626.s7", print_hash_value);
    transparent_crc(p_1660->g_1626.s8, "p_1660->g_1626.s8", print_hash_value);
    transparent_crc(p_1660->g_1626.s9, "p_1660->g_1626.s9", print_hash_value);
    transparent_crc(p_1660->g_1626.sa, "p_1660->g_1626.sa", print_hash_value);
    transparent_crc(p_1660->g_1626.sb, "p_1660->g_1626.sb", print_hash_value);
    transparent_crc(p_1660->g_1626.sc, "p_1660->g_1626.sc", print_hash_value);
    transparent_crc(p_1660->g_1626.sd, "p_1660->g_1626.sd", print_hash_value);
    transparent_crc(p_1660->g_1626.se, "p_1660->g_1626.se", print_hash_value);
    transparent_crc(p_1660->g_1626.sf, "p_1660->g_1626.sf", print_hash_value);
    transparent_crc(p_1660->g_1633.s0, "p_1660->g_1633.s0", print_hash_value);
    transparent_crc(p_1660->g_1633.s1, "p_1660->g_1633.s1", print_hash_value);
    transparent_crc(p_1660->g_1633.s2, "p_1660->g_1633.s2", print_hash_value);
    transparent_crc(p_1660->g_1633.s3, "p_1660->g_1633.s3", print_hash_value);
    transparent_crc(p_1660->g_1633.s4, "p_1660->g_1633.s4", print_hash_value);
    transparent_crc(p_1660->g_1633.s5, "p_1660->g_1633.s5", print_hash_value);
    transparent_crc(p_1660->g_1633.s6, "p_1660->g_1633.s6", print_hash_value);
    transparent_crc(p_1660->g_1633.s7, "p_1660->g_1633.s7", print_hash_value);
    transparent_crc(p_1660->g_1633.s8, "p_1660->g_1633.s8", print_hash_value);
    transparent_crc(p_1660->g_1633.s9, "p_1660->g_1633.s9", print_hash_value);
    transparent_crc(p_1660->g_1633.sa, "p_1660->g_1633.sa", print_hash_value);
    transparent_crc(p_1660->g_1633.sb, "p_1660->g_1633.sb", print_hash_value);
    transparent_crc(p_1660->g_1633.sc, "p_1660->g_1633.sc", print_hash_value);
    transparent_crc(p_1660->g_1633.sd, "p_1660->g_1633.sd", print_hash_value);
    transparent_crc(p_1660->g_1633.se, "p_1660->g_1633.se", print_hash_value);
    transparent_crc(p_1660->g_1633.sf, "p_1660->g_1633.sf", print_hash_value);
    transparent_crc(p_1660->g_1634.s0, "p_1660->g_1634.s0", print_hash_value);
    transparent_crc(p_1660->g_1634.s1, "p_1660->g_1634.s1", print_hash_value);
    transparent_crc(p_1660->g_1634.s2, "p_1660->g_1634.s2", print_hash_value);
    transparent_crc(p_1660->g_1634.s3, "p_1660->g_1634.s3", print_hash_value);
    transparent_crc(p_1660->g_1634.s4, "p_1660->g_1634.s4", print_hash_value);
    transparent_crc(p_1660->g_1634.s5, "p_1660->g_1634.s5", print_hash_value);
    transparent_crc(p_1660->g_1634.s6, "p_1660->g_1634.s6", print_hash_value);
    transparent_crc(p_1660->g_1634.s7, "p_1660->g_1634.s7", print_hash_value);
    transparent_crc(p_1660->g_1635.s0, "p_1660->g_1635.s0", print_hash_value);
    transparent_crc(p_1660->g_1635.s1, "p_1660->g_1635.s1", print_hash_value);
    transparent_crc(p_1660->g_1635.s2, "p_1660->g_1635.s2", print_hash_value);
    transparent_crc(p_1660->g_1635.s3, "p_1660->g_1635.s3", print_hash_value);
    transparent_crc(p_1660->g_1635.s4, "p_1660->g_1635.s4", print_hash_value);
    transparent_crc(p_1660->g_1635.s5, "p_1660->g_1635.s5", print_hash_value);
    transparent_crc(p_1660->g_1635.s6, "p_1660->g_1635.s6", print_hash_value);
    transparent_crc(p_1660->g_1635.s7, "p_1660->g_1635.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
