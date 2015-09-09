// ---fake_divergence -g 36,73,1 -l 9,1,1
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


// Seed: 95

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int32_t  f0;
   volatile uint16_t  f1;
   volatile int32_t  f2;
   int8_t * f3;
};

union U1 {
   int32_t  f0;
   volatile uint64_t  f1;
   uint16_t  f2;
};

union U2 {
   uint32_t  f0;
};

struct S3 {
    volatile uint16_t g_6;
    int8_t g_19;
    uint8_t g_47;
    uint8_t g_50;
    int8_t g_53;
    uint64_t g_56;
    uint64_t g_80;
    uint64_t *g_82;
    int16_t g_87;
    int32_t g_89;
    int32_t *g_91;
    int32_t ** volatile g_90;
    union U2 g_94;
    int16_t g_116;
    volatile uint32_t g_119[5];
    uint16_t g_121[9][9][3];
    int16_t g_137;
    uint8_t g_138[9];
    uint32_t g_148;
    int32_t ** volatile g_154;
    int64_t g_158;
    volatile int16_t g_177;
    volatile int16_t *g_176;
    volatile union U1 g_182;
    uint32_t g_215[6];
    volatile uint64_t g_220;
    uint8_t g_229;
    union U0 g_235;
    int64_t g_261;
    union U1 g_268[4][3];
    int32_t g_280;
    volatile uint8_t g_301;
    union U0 g_316;
    union U0 *g_334[5];
    union U0 ** volatile g_333[10][1][2];
    int32_t * volatile g_337;
    int32_t g_370[9][9][3];
    volatile uint64_t g_372[7];
    uint8_t *g_391[3][7];
    uint64_t g_417;
    int8_t *g_419;
    union U1 *g_502;
    union U1 ** volatile g_501[1][5][1];
    int32_t ** volatile g_506[1][7][4];
    uint8_t g_512;
    volatile int32_t g_569;
    int32_t ** volatile g_604;
    union U0 g_614[4][1][2];
    union U0 g_615;
    union U0 g_616;
    union U0 g_617[10][10];
    union U0 *g_613[6][3];
    uint32_t g_637;
    int32_t g_642;
    int32_t ** volatile g_656;
    int8_t *g_657;
    union U1 g_667;
    int32_t ** volatile g_672;
    int64_t g_720;
    int64_t *g_719;
    uint32_t *g_729;
    uint32_t **g_728[6][4];
    union U0 g_736;
    uint16_t * volatile g_788;
    uint16_t * volatile * volatile g_787;
    volatile uint16_t * volatile *g_789;
    volatile union U1 g_816[4][3];
    int32_t g_827;
    volatile union U1 g_831;
    union U0 **g_835;
    union U0 ***g_834;
    int32_t ** volatile g_843;
    int32_t *g_872[6][5][5];
    int32_t ** volatile g_871;
    int32_t * volatile g_906[10][9][2];
    volatile int8_t g_925;
    volatile union U1 g_941;
    int32_t *g_979[7];
    uint32_t g_999[9];
    uint64_t **g_1011;
    uint64_t *** volatile g_1010;
    volatile union U1 g_1104;
    int8_t *g_1139;
    union U0 g_1146[3][1][5];
    volatile uint64_t g_1178;
    uint32_t g_1193;
    int8_t g_1196;
    union U0 g_1226;
    uint32_t g_1302;
    union U1 g_1313[6];
    int64_t **g_1325;
    union U0 g_1326;
    union U0 g_1383;
    union U0 ** volatile g_1411;
    union U0 g_1446;
    int64_t g_1486[7];
    int64_t *g_1485;
    int64_t *g_1489;
    int32_t ** volatile g_1510;
    uint8_t g_1518;
    volatile union U0 g_1521;
    uint64_t *g_1526;
    int32_t ** volatile g_1538[6];
    union U0 g_1541;
    union U0 g_1555;
    int16_t g_1557;
    int32_t g_1559;
    union U0 g_1563;
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
union U0  func_1(struct S3 * p_1564);
union U0  func_12(int8_t * p_13, int8_t * p_14, int32_t  p_15, int8_t * p_16, int8_t * p_17, struct S3 * p_1564);
int8_t * func_20(int8_t * p_21, int32_t  p_22, struct S3 * p_1564);
int8_t * func_23(int8_t * p_24, int8_t * p_25, int8_t * p_26, int32_t  p_27, int8_t * p_28, struct S3 * p_1564);
int8_t * func_29(union U2  p_30, int8_t  p_31, int8_t * p_32, int8_t * p_33, struct S3 * p_1564);
union U2  func_34(uint64_t  p_35, int8_t * p_36, int32_t  p_37, union U2  p_38, struct S3 * p_1564);
int32_t  func_40(uint64_t  p_41, int8_t * p_42, int64_t  p_43, struct S3 * p_1564);
uint64_t  func_57(int32_t  p_58, struct S3 * p_1564);
int8_t  func_63(uint64_t * p_64, uint8_t  p_65, uint32_t  p_66, struct S3 * p_1564);
int32_t * func_67(int32_t  p_68, int16_t  p_69, uint32_t  p_70, int32_t * p_71, struct S3 * p_1564);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1564->g_6 p_1564->g_19 p_1564->g_53 p_1564->g_50 p_1564->g_47 p_1564->g_80 p_1564->g_90 p_1564->g_94 p_1564->g_82 p_1564->g_116 p_1564->g_119 p_1564->g_91 p_1564->g_89 p_1564->g_138 p_1564->g_148 p_1564->g_154 p_1564->g_158 p_1564->g_176 p_1564->g_121 p_1564->g_177 p_1564->g_182 p_1564->g_87 p_1564->g_137 p_1564->g_94.f0 p_1564->g_56 p_1564->g_215 p_1564->g_220 p_1564->g_235 p_1564->g_268 p_1564->g_280 p_1564->g_268.f0 p_1564->g_235.f0 p_1564->g_301 p_1564->g_316 p_1564->g_337 p_1564->g_372 p_1564->g_334 p_1564->g_613 p_1564->g_316.f0 p_1564->g_614.f0 p_1564->g_642 p_1564->g_604 p_1564->g_419 p_1564->g_656 p_1564->g_370 p_1564->g_657 p_1564->g_667 p_1564->g_672 p_1564->g_261 p_1564->g_667.f2 p_1564->g_719 p_1564->g_720 p_1564->g_729 p_1564->g_637 p_1564->g_614 p_1564->g_1011 p_1564->g_843 p_1564->g_1104 p_1564->g_502 p_1564->g_1010 p_1564->g_827 p_1564->g_615.f0 p_1564->g_1139 p_1564->g_1178 p_1564->g_789 p_1564->g_617.f0 p_1564->g_229 p_1564->g_871 p_1564->g_872 p_1564->g_1555 p_1564->g_1146.f0 p_1564->g_1486 p_1564->g_1559 p_1564->g_1563
 * writes: p_1564->g_47 p_1564->g_53 p_1564->g_19 p_1564->g_56 p_1564->g_50 p_1564->g_82 p_1564->g_87 p_1564->g_91 p_1564->g_116 p_1564->g_121 p_1564->g_89 p_1564->g_138 p_1564->g_148 p_1564->g_80 p_1564->g_158 p_1564->g_137 p_1564->g_94.f0 p_1564->g_215 p_1564->g_220 p_1564->g_229 p_1564->g_261 p_1564->g_301 p_1564->g_334 p_1564->g_280 p_1564->g_372 p_1564->g_391 p_1564->g_417 p_1564->g_419 p_1564->g_613 p_1564->g_637 p_1564->g_642 p_1564->g_667.f2 p_1564->g_1193 p_1564->g_657 p_1564->g_1557 p_1564->g_1559
 */
union U0  func_1(struct S3 * p_1564)
{ /* block id: 4 */
    int16_t l_9 = 1L;
    int8_t *l_18 = &p_1564->g_19;
    int8_t *l_39 = &p_1564->g_19;
    uint8_t *l_46 = &p_1564->g_47;
    uint8_t *l_48 = (void*)0;
    uint8_t *l_49[8][5][6] = {{{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0}},{{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0}},{{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0}},{{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0}},{{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0}},{{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0}},{{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0}},{{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0},{&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,&p_1564->g_50,(void*)0,(void*)0}}};
    int32_t l_51 = 0x6FFA942FL;
    int8_t *l_52 = &p_1564->g_53;
    union U2 l_620[8][10][3] = {{{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}}},{{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}}},{{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}}},{{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}}},{{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}}},{{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}}},{{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}}},{{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}},{{0xA8C88BC6L},{0xA8C88BC6L},{0xB5B6C1C6L}}}};
    int8_t **l_1194 = &p_1564->g_657;
    int8_t *l_1195[2];
    int16_t *l_1556[5];
    int32_t *l_1558 = &p_1564->g_1559;
    uint64_t **l_1560 = &p_1564->g_82;
    uint64_t ***l_1561[3];
    uint64_t **l_1562[10] = {&p_1564->g_82,&p_1564->g_82,&p_1564->g_82,&p_1564->g_82,&p_1564->g_82,&p_1564->g_82,&p_1564->g_82,&p_1564->g_82,&p_1564->g_82,&p_1564->g_82};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1195[i] = &p_1564->g_1196;
    for (i = 0; i < 5; i++)
        l_1556[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_1561[i] = &p_1564->g_1011;
    (*l_1558) |= (safe_lshift_func_int8_t_s_u(((safe_rshift_func_int16_t_s_u((p_1564->g_1557 = (p_1564->g_6 , ((safe_add_func_uint8_t_u_u(l_9, (safe_rshift_func_int8_t_s_u((func_12(l_18, ((*l_1194) = func_20(func_23(&p_1564->g_19, &p_1564->g_19, func_29(func_34(l_9, l_39, func_40(((safe_mod_func_uint8_t_u_u((l_51 = ((*l_46) = GROUP_DIVERGE(2, 1))), ((*l_52) ^= ((p_1564->g_19 || ((&p_1564->g_19 == l_18) && 1UL)) != FAKE_DIVERGE(p_1564->global_1_offset, get_global_id(1), 10))))) || l_9), &p_1564->g_19, p_1564->g_50, p_1564), l_620[6][7][1], p_1564), p_1564->g_235.f0, l_48, l_49[3][0][0], p_1564), p_1564->g_370[1][7][2], p_1564->g_657, p_1564), p_1564->g_268[3][2].f0, p_1564)), l_620[6][7][1].f0, l_1195[1], l_39, p_1564) , 0L), 6)))) <= 0x29L))), 15)) >= p_1564->g_1146[0][0][4].f0), p_1564->g_1486[5]));
    (*p_1564->g_91) = ((*l_1558) , (*l_1558));
    l_1562[6] = l_1560;
    return p_1564->g_1563;
}


/* ------------------------------------------ */
/* 
 * reads : p_1564->g_154 p_1564->g_91 p_1564->g_89 p_1564->g_261 p_1564->g_229 p_1564->g_871 p_1564->g_872 p_1564->g_1555
 * writes: p_1564->g_261 p_1564->g_229
 */
union U0  func_12(int8_t * p_13, int8_t * p_14, int32_t  p_15, int8_t * p_16, int8_t * p_17, struct S3 * p_1564)
{ /* block id: 599 */
    uint32_t l_1197 = 0x9BA80446L;
    int32_t l_1200 = 0x2BA788A1L;
    uint8_t l_1202 = 0xECL;
    union U2 l_1209 = {4294967290UL};
    uint32_t *l_1218 = &l_1209.f0;
    int16_t l_1297 = 0L;
    uint32_t l_1298 = 4294967294UL;
    int32_t l_1306 = 0L;
    int32_t l_1307 = 0x2732902FL;
    int32_t l_1349 = 0L;
    int32_t l_1350 = (-6L);
    int32_t l_1354 = 0x51EAF956L;
    int32_t l_1355 = 0x6A657FF2L;
    int32_t l_1356 = 0x5584B463L;
    int32_t l_1359[3][4] = {{0x7127F054L,0x6FD7ED8DL,(-1L),0x6FD7ED8DL},{0x7127F054L,0x6FD7ED8DL,(-1L),0x6FD7ED8DL},{0x7127F054L,0x6FD7ED8DL,(-1L),0x6FD7ED8DL}};
    int64_t l_1390 = 0L;
    int64_t *l_1487 = &p_1564->g_1486[0];
    union U0 **l_1509 = (void*)0;
    union U0 ***l_1542 = (void*)0;
    uint64_t l_1550 = 18446744073709551615UL;
    int i, j;
    l_1197 = (**p_1564->g_154);
    for (p_1564->g_261 = 0; (p_1564->g_261 >= 9); p_1564->g_261 = safe_add_func_uint64_t_u_u(p_1564->g_261, 1))
    { /* block id: 603 */
        int32_t *l_1201[8] = {&p_1564->g_89,&p_1564->g_89,&p_1564->g_89,&p_1564->g_89,&p_1564->g_89,&p_1564->g_89,&p_1564->g_89,&p_1564->g_89};
        uint16_t *l_1219 = &p_1564->g_667.f2;
        uint16_t *l_1236 = (void*)0;
        union U2 l_1408 = {0xB0863BA1L};
        int64_t **l_1433 = &p_1564->g_719;
        int64_t ***l_1434 = &p_1564->g_1325;
        int64_t **l_1436 = (void*)0;
        int64_t ***l_1435 = &l_1436;
        uint8_t *l_1445 = &l_1202;
        union U0 **l_1506 = &p_1564->g_613[3][0];
        union U1 *l_1515 = &p_1564->g_268[2][1];
        int8_t **l_1544 = (void*)0;
        int i;
        ++l_1202;
    }
    for (p_1564->g_229 = 25; (p_1564->g_229 == 4); p_1564->g_229 = safe_sub_func_uint32_t_u_u(p_1564->g_229, 8))
    { /* block id: 761 */
        int32_t *l_1547 = &l_1200;
        int32_t *l_1548[3][1];
        int8_t l_1549 = 0x2EL;
        int32_t **l_1553 = &l_1548[2][0];
        int32_t *l_1554 = &p_1564->g_827;
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_1548[i][j] = &p_1564->g_89;
        }
        ++l_1550;
        l_1554 = ((*l_1553) = (*p_1564->g_871));
    }
    return p_1564->g_1555;
}


/* ------------------------------------------ */
/* 
 * reads : p_1564->g_642 p_1564->g_6 p_1564->g_672 p_1564->g_19 p_1564->g_419 p_1564->g_50 p_1564->g_53 p_1564->g_91 p_1564->g_89 p_1564->g_121 p_1564->g_719 p_1564->g_720 p_1564->g_729 p_1564->g_637 p_1564->g_604 p_1564->g_90 p_1564->g_614 p_1564->g_1011 p_1564->g_82 p_1564->g_261 p_1564->g_154 p_1564->g_80 p_1564->g_843 p_1564->g_176 p_1564->g_177 p_1564->g_1104 p_1564->g_502 p_1564->g_1010 p_1564->g_827 p_1564->g_615.f0 p_1564->g_215 p_1564->g_1139 p_1564->g_667.f2 p_1564->g_337 p_1564->g_280 p_1564->g_1178 p_1564->g_789 p_1564->g_617.f0
 * writes: p_1564->g_91 p_1564->g_261 p_1564->g_667.f2 p_1564->g_121 p_1564->g_89 p_1564->g_19 p_1564->g_80 p_1564->g_637 p_1564->g_1193
 */
int8_t * func_20(int8_t * p_21, int32_t  p_22, struct S3 * p_1564)
{ /* block id: 343 */
    union U0 *l_670 = &p_1564->g_614[3][0][1];
    int32_t *l_671 = (void*)0;
    union U1 *l_703 = (void*)0;
    uint32_t *l_726[6][3][6] = {{{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0}},{{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0}},{{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0}},{{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0}},{{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0}},{{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0},{&p_1564->g_637,&p_1564->g_637,&p_1564->g_94.f0,&p_1564->g_94.f0,&p_1564->g_637,&p_1564->g_94.f0}}};
    uint32_t **l_725 = &l_726[1][1][4];
    uint64_t *l_743 = &p_1564->g_417;
    union U2 l_847 = {0x127C44BEL};
    int32_t **l_869 = &p_1564->g_91;
    int32_t **l_870 = (void*)0;
    int32_t l_914 = 1L;
    uint32_t l_916 = 0x1D2F976AL;
    int32_t l_920 = 1L;
    int32_t l_921[1];
    int64_t l_922[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int16_t l_926[6][10][4] = {{{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L}},{{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L}},{{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L}},{{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L}},{{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L}},{{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L},{0L,0x1049L,0L,0x19A1L}}};
    int32_t l_936 = 0x0043CCDFL;
    uint8_t l_990 = 1UL;
    uint32_t l_1005 = 4294967292UL;
    uint16_t *l_1020 = &p_1564->g_121[1][7][0];
    uint64_t ***l_1029[10];
    uint64_t l_1040 = 1UL;
    union U0 ***l_1055[2];
    int64_t l_1056 = 0x65875E35BA212680L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_921[i] = 1L;
    for (i = 0; i < 10; i++)
        l_1029[i] = &p_1564->g_1011;
    for (i = 0; i < 2; i++)
        l_1055[i] = &p_1564->g_835;
lbl_792:
    (*p_1564->g_672) = func_67(p_1564->g_642, (l_670 == l_670), p_1564->g_6, l_671, p_1564);
    for (p_1564->g_261 = 7; (p_1564->g_261 >= 2); p_1564->g_261 = safe_sub_func_uint64_t_u_u(p_1564->g_261, 9))
    { /* block id: 347 */
        int32_t l_689 = 0x1AD8548EL;
        int8_t l_810 = 0x1EL;
        union U0 **l_833[1];
        union U0 ***l_832 = &l_833[0];
        int32_t l_915 = (-1L);
        int32_t *l_919[6][5][7] = {{{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827}},{{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827}},{{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827}},{{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827}},{{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827}},{{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827},{(void*)0,(void*)0,&p_1564->g_827,&p_1564->g_827,&l_915,&l_915,&p_1564->g_827}}};
        int8_t l_923 = 0x2AL;
        int64_t l_924[7] = {(-1L),(-9L),(-1L),(-1L),(-9L),(-1L),(-1L)};
        int16_t l_927 = 5L;
        uint16_t l_928 = 0UL;
        uint64_t *l_961[2];
        int32_t l_964 = 0x4CAB6E2AL;
        union U2 l_995[4] = {{4294967286UL},{4294967286UL},{4294967286UL},{4294967286UL}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_833[i] = &p_1564->g_613[5][1];
        for (i = 0; i < 2; i++)
            l_961[i] = &p_1564->g_417;
        (1 + 1);
    }
    for (p_1564->g_667.f2 = 0; (p_1564->g_667.f2 > 8); p_1564->g_667.f2 = safe_add_func_int64_t_s_s(p_1564->g_667.f2, 3))
    { /* block id: 512 */
        int32_t *l_1014[8][8] = {{&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_316.f0,(void*)0,&p_1564->g_614[0][0][1].f0,&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_736.f0},{&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_316.f0,(void*)0,&p_1564->g_614[0][0][1].f0,&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_736.f0},{&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_316.f0,(void*)0,&p_1564->g_614[0][0][1].f0,&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_736.f0},{&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_316.f0,(void*)0,&p_1564->g_614[0][0][1].f0,&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_736.f0},{&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_316.f0,(void*)0,&p_1564->g_614[0][0][1].f0,&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_736.f0},{&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_316.f0,(void*)0,&p_1564->g_614[0][0][1].f0,&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_736.f0},{&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_316.f0,(void*)0,&p_1564->g_614[0][0][1].f0,&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_736.f0},{&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_316.f0,(void*)0,&p_1564->g_614[0][0][1].f0,&p_1564->g_370[1][7][2],(void*)0,&p_1564->g_736.f0}};
        int32_t l_1015 = 9L;
        uint16_t **l_1021 = (void*)0;
        uint16_t **l_1022 = (void*)0;
        uint16_t *l_1024[3];
        uint16_t **l_1023 = &l_1024[0];
        union U0 ****l_1030 = &p_1564->g_834;
        int32_t l_1031[2];
        uint32_t l_1054[9][1];
        uint32_t l_1057 = 1UL;
        int32_t l_1058 = 0x298D0423L;
        uint32_t *l_1059 = &l_1005;
        int32_t **l_1060[2];
        uint16_t l_1061 = 0UL;
        int32_t l_1066 = (-3L);
        int i, j;
        for (i = 0; i < 3; i++)
            l_1024[i] = &p_1564->g_121[6][5][2];
        for (i = 0; i < 2; i++)
            l_1031[i] = 0L;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 1; j++)
                l_1054[i][j] = 0x85797F8FL;
        }
        for (i = 0; i < 2; i++)
            l_1060[i] = &p_1564->g_872[5][4][2];
        (*l_869) = func_67((l_1015 = (&p_1564->g_158 != &l_922[5])), (safe_unary_minus_func_int32_t_s(((l_1014[7][3] == ((safe_unary_minus_func_uint64_t_u((safe_add_func_int16_t_s_s((((((*l_1020) &= ((0x2E1CL >= ((((p_22 & (((l_1020 == ((*l_1023) = l_1020)) != (((safe_mod_func_int64_t_s_s((+(safe_rshift_func_uint16_t_u_s(p_22, (&p_1564->g_1011 == l_1029[2])))), 0x21F9C79E6C38B783L)) > p_22) & p_22)) , (*p_21))) , (*p_1564->g_419)) ^ (**l_869)) & 1UL)) != 0xC4B5L)) , &p_1564->g_834) != l_1030) && (-1L)), l_1031[1])))) , &l_1005)) == (*p_1564->g_719)))), (*p_1564->g_729), (*l_869), p_1564);
        (*p_1564->g_91) = (**p_1564->g_604);
        (**l_869) = (safe_mul_func_int8_t_s_s((((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_1564->local_2_offset, get_local_id(2), 10), (l_1058 |= (safe_mod_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_s(0x12L, l_1040)) < (safe_add_func_int8_t_s_s(0x46L, GROUP_DIVERGE(1, 1)))), (safe_sub_func_uint8_t_u_u(((((l_1031[1] = (p_22 ^ (!p_22))) <= (safe_div_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u(0x26EEL, p_22)) && (safe_unary_minus_func_int64_t_s((safe_sub_func_uint32_t_u_u(((((safe_lshift_func_int8_t_s_u((((l_1054[8][0] , (((*p_21) = (((void*)0 != l_1055[1]) && (-7L))) && (**l_869))) & l_1015) == 7UL), l_1056)) > 1UL) , (*p_1564->g_419)) && (*p_21)), (**p_1564->g_90)))))), l_1057))) > l_1054[8][0]) , FAKE_DIVERGE(p_1564->group_1_offset, get_group_id(1), 10)), (-10L)))))))) | l_1015) ^ 0x3784E517L), 0x0DL));
        if (((l_920 = (((*l_1059) &= p_22) , ((l_671 = ((*l_869) = (*l_869))) == (void*)0))) | ((*l_670) , (l_1061 = p_22))))
        { /* block id: 527 */
            int32_t l_1068 = 9L;
            l_914 ^= (+((safe_mul_func_uint16_t_u_u(((*l_1020) = ((safe_sub_func_int64_t_s_s((((p_22 | (((**l_869) = (((p_22 && (l_1066 || ((*p_1564->g_719) > p_22))) || (safe_unary_minus_func_uint64_t_u(l_1068))) , ((**p_1564->g_1011) = p_22))) >= l_1068)) != p_22) | 0x232D6824L), 0UL)) > p_22)), 1UL)) | p_22));
            for (p_1564->g_261 = 16; (p_1564->g_261 == 25); p_1564->g_261 = safe_add_func_int8_t_s_s(p_1564->g_261, 6))
            { /* block id: 534 */
                int8_t *l_1071[10][2] = {{&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53}};
                int i, j;
                return l_1071[1][1];
            }
            (*p_1564->g_91) ^= 0x7E4A0FCEL;
            if ((**l_869))
                continue;
        }
        else
        { /* block id: 539 */
            uint32_t l_1096 = 4294967288UL;
            int32_t l_1100 = 6L;
            int32_t l_1118 = 2L;
            int32_t l_1119 = 0x35D56EC0L;
            if (((*p_1564->g_91) = (**p_1564->g_154)))
            { /* block id: 541 */
                uint8_t l_1089 = 0x21L;
                int32_t l_1103 = 0x26E5B848L;
                uint32_t *l_1135[8][1] = {{&l_847.f0},{&l_847.f0},{&l_847.f0},{&l_847.f0},{&l_847.f0},{&l_847.f0},{&l_847.f0},{&l_847.f0}};
                int i, j;
                if (p_22)
                { /* block id: 542 */
                    for (l_847.f0 = 0; (l_847.f0 <= 9); l_847.f0 += 1)
                    { /* block id: 545 */
                        if (l_1040)
                            goto lbl_792;
                    }
                    (*p_1564->g_91) = (safe_mod_func_uint32_t_u_u(p_22, 0x46F4D778L));
                }
                else
                { /* block id: 549 */
                    int8_t l_1099[10][3][8] = {{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}},{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}},{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}},{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}},{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}},{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}},{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}},{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}},{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}},{{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L},{(-3L),(-3L),0L,0x07L,0x15L,(-4L),0L,0L}}};
                    union U0 ****l_1102 = (void*)0;
                    int32_t l_1116 = (-1L);
                    int32_t l_1117 = 8L;
                    uint32_t *l_1136 = &l_1096;
                    int i, j, k;
                    for (l_1056 = 0; (l_1056 >= 14); ++l_1056)
                    { /* block id: 552 */
                        int32_t ***l_1084 = &l_869;
                        union U0 ****l_1101 = &l_1055[1];
                        l_1103 |= ((safe_mod_func_uint64_t_u_u((**p_1564->g_1011), (safe_div_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((*p_21) = (*p_1564->g_419)), ((void*)0 == l_1084))), (((((safe_rshift_func_uint8_t_u_u(((((1L < l_1089) || (l_1100 = ((safe_lshift_func_uint8_t_u_s((((safe_div_func_uint64_t_u_u(((l_1096 && ((**p_1564->g_843) == ((safe_div_func_uint32_t_u_u((((&l_1089 == &p_1564->g_138[0]) , l_1099[4][0][2]) == 0x4E7D47A3L), p_22)) != 5L))) && l_1099[3][2][0]), p_22)) || p_22) , 255UL), 2)) & FAKE_DIVERGE(p_1564->group_1_offset, get_group_id(1), 10)))) , l_1101) == l_1102), 2)) ^ 0UL) | p_22) < l_1089) && (*p_1564->g_176)))), 1UL)))) , (***l_1084));
                        return p_21;
                    }
                    if ((((+GROUP_DIVERGE(2, 1)) != ((p_1564->g_1104 , (safe_sub_func_int32_t_s_s(l_1099[0][2][0], ((p_22 , &p_1564->g_1011) != (void*)0)))) & (safe_mul_func_int8_t_s_s((l_1103 = (safe_add_func_uint8_t_u_u(((*l_671) ^ (&p_1564->g_502 == (void*)0)), ((safe_unary_minus_func_int32_t_s(((safe_sub_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s(((p_1564->g_502 == (void*)0) && (*p_1564->g_82)), p_1564->g_720)) ^ 0UL), (*l_671))) != p_22))) < p_22)))), 0x75L)))) == FAKE_DIVERGE(p_1564->global_2_offset, get_global_id(2), 10)))
                    { /* block id: 559 */
                        uint64_t l_1120 = 0x692723109F3DF5EAL;
                        --l_1120;
                        (**l_869) &= l_1099[4][0][2];
                    }
                    else
                    { /* block id: 562 */
                        l_1116 |= ((safe_mod_func_uint64_t_u_u((~(***p_1564->g_1010)), (safe_rshift_func_int16_t_s_u(((p_22 || (safe_lshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s((p_1564->g_827 >= ((((p_1564->g_615.f0 , (safe_lshift_func_uint8_t_u_u((p_22 >= ((((l_1103 &= l_1099[5][0][2]) | (((safe_add_func_uint32_t_u_u(((0xC7L | p_22) , p_22), p_22)) || (**l_869)) < p_1564->g_215[4])) > p_22) < (*p_1564->g_419))), p_22))) , l_1135[6][0]) == l_1136) ^ 0x42L)), 0x6E86L)), p_22))) >= 1L), p_1564->g_637)))) <= (*l_671));
                        (*l_671) = l_1118;
                    }
                }
            }
            else
            { /* block id: 568 */
                for (l_990 = (-17); (l_990 == 23); l_990 = safe_add_func_int64_t_s_s(l_990, 4))
                { /* block id: 571 */
                    return p_1564->g_1139;
                }
            }
        }
    }
    for (p_1564->g_667.f2 = 0; (p_1564->g_667.f2 == 28); ++p_1564->g_667.f2)
    { /* block id: 579 */
        union U0 *l_1145[2];
        int32_t l_1149 = 0x6B2143C0L;
        uint64_t **l_1159 = (void*)0;
        int16_t l_1160[10][8][3] = {{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}},{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}},{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}},{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}},{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}},{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}},{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}},{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}},{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}},{{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L},{0x2E15L,0L,0L}}};
        uint64_t *l_1185 = &l_1040;
        uint16_t **l_1186 = &l_1020;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1145[i] = &p_1564->g_1146[0][0][4];
        for (l_936 = 0; (l_936 <= 9); l_936 = safe_add_func_uint64_t_u_u(l_936, 9))
        { /* block id: 582 */
            uint8_t l_1144 = 255UL;
            int16_t *l_1150 = &l_926[4][6][3];
            uint32_t l_1161 = 0UL;
            int32_t *l_1162 = (void*)0;
            int32_t *l_1163[7] = {&l_921[0],&l_1149,&l_921[0],&l_921[0],&l_1149,&l_921[0],&l_921[0]};
            int64_t **l_1168 = (void*)0;
            int64_t l_1175 = (-1L);
            int i;
            l_1149 = ((**l_869) = (((l_1144 && (FAKE_DIVERGE(p_1564->group_2_offset, get_group_id(2), 10) < (*p_1564->g_176))) <= ((void*)0 == l_1145[0])) & ((safe_mod_func_int16_t_s_s(((*l_1150) = l_1149), (safe_lshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((((l_1161 = (((*p_1564->g_82) = ((safe_div_func_uint32_t_u_u(((safe_sub_func_int64_t_s_s((((*p_1564->g_729) = (&p_1564->g_82 == l_1159)) < (l_1144 , (((GROUP_DIVERGE(0, 1) == (((void*)0 == l_1150) == 1L)) , (-8L)) , p_22))), (*p_1564->g_82))) , l_1160[5][1][0]), 8UL)) && 0x24F9E31EL)) & 0xF153B76D7E37CD33L)) | p_22) , 0xFE66ABD3AF727964L) , p_22))), p_22)))) > l_1144)));
            l_1149 ^= (((*p_1564->g_91) = 0L) == (*p_1564->g_337));
            (**l_869) = ((safe_div_func_int64_t_s_s(((((((((safe_mul_func_uint8_t_u_u((((l_1168 == (void*)0) | (0x7C073846F4758786L > ((p_22 == (safe_rshift_func_uint16_t_u_u(0UL, (safe_lshift_func_int8_t_s_s(((*p_1564->g_719) > (p_22 ^ (safe_div_func_int64_t_s_s((*p_1564->g_719), l_1175)))), 6))))) , GROUP_DIVERGE(0, 1)))) && l_1160[5][1][0]), p_22)) | (*p_1564->g_419)) < (*p_1564->g_176)) == 0x472DL) > (*p_1564->g_1139)) <= 18446744073709551611UL) < l_1149) , p_22), l_1160[5][1][0])) ^ (-1L));
            (*p_1564->g_91) = (safe_lshift_func_int8_t_s_u((p_1564->g_1193 = ((p_1564->g_1178 > ((safe_lshift_func_int8_t_s_u((safe_mod_func_uint16_t_u_u((&l_926[2][4][3] != (void*)0), (safe_add_func_uint64_t_u_u(((((void*)0 != l_1185) >= (p_1564->g_789 == (l_1186 = l_1186))) >= (safe_sub_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s(((((p_22 , (**p_1564->g_1011)) & 0UL) && p_22) == p_1564->g_617[3][9].f0), (*p_21))), 4)), 4294967295UL))), p_22)))), 2)) <= (**l_869))) ^ p_22)), 1));
        }
    }
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_1564->g_137 p_1564->g_667 p_1564->g_138 p_1564->g_91 p_1564->g_89
 * writes: p_1564->g_137 p_1564->g_94.f0 p_1564->g_89
 */
int8_t * func_23(int8_t * p_24, int8_t * p_25, int8_t * p_26, int32_t  p_27, int8_t * p_28, struct S3 * p_1564)
{ /* block id: 335 */
    for (p_1564->g_137 = 0; (p_1564->g_137 == (-4)); p_1564->g_137 = safe_sub_func_uint16_t_u_u(p_1564->g_137, 6))
    { /* block id: 338 */
        uint64_t *l_664 = &p_1564->g_56;
        uint32_t *l_668[9] = {(void*)0,&p_1564->g_94.f0,(void*)0,(void*)0,&p_1564->g_94.f0,(void*)0,(void*)0,&p_1564->g_94.f0,(void*)0};
        int32_t l_669[2];
        int i;
        for (i = 0; i < 2; i++)
            l_669[i] = 1L;
        (*p_1564->g_91) ^= ((p_1564->g_94.f0 = ((safe_rshift_func_int16_t_s_s((4L > ((safe_rshift_func_uint16_t_u_s(((l_664 != l_664) == (safe_lshift_func_uint8_t_u_u((p_1564->g_667 , 0UL), 0))), 12)) , GROUP_DIVERGE(2, 1))), 1)) , p_1564->g_138[0])) < l_669[1]);
    }
    return &p_1564->g_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_1564->g_604 p_1564->g_91 p_1564->g_89 p_1564->g_419 p_1564->g_50 p_1564->g_53 p_1564->g_656
 * writes: p_1564->g_91
 */
int8_t * func_29(union U2  p_30, int8_t  p_31, int8_t * p_32, int8_t * p_33, struct S3 * p_1564)
{ /* block id: 331 */
    int64_t l_652 = 0L;
    int16_t *l_653 = &p_1564->g_116;
    int32_t l_654 = 0L;
    int32_t *l_655 = (void*)0;
    (*p_1564->g_656) = func_67(p_31, p_30.f0, ((safe_mul_func_uint8_t_u_u((safe_div_func_int8_t_s_s((l_654 = (safe_div_func_int8_t_s_s(((FAKE_DIVERGE(p_1564->local_1_offset, get_local_id(1), 10) != 0x5622L) < (safe_mod_func_uint64_t_u_u(((void*)0 == &p_1564->g_137), (((-1L) > (l_652 == (**p_1564->g_604))) | (l_653 == &p_1564->g_116))))), 9L))), 0xEAL)), (*p_1564->g_419))) != (-6L)), l_655, p_1564);
    return &p_1564->g_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_1564->g_19 p_1564->g_91 p_1564->g_89 p_1564->g_90 p_1564->g_94.f0 p_1564->g_316.f0 p_1564->g_121 p_1564->g_614.f0 p_1564->g_337 p_1564->g_642 p_1564->g_53
 * writes: p_1564->g_89 p_1564->g_94.f0 p_1564->g_637 p_1564->g_121 p_1564->g_137 p_1564->g_280 p_1564->g_642
 */
union U2  func_34(uint64_t  p_35, int8_t * p_36, int32_t  p_37, union U2  p_38, struct S3 * p_1564)
{ /* block id: 320 */
    uint64_t l_629 = 0x561F06BFA051765EL;
    uint32_t *l_636 = &p_1564->g_637;
    uint64_t l_638 = 0x516839EA7B5E2F7DL;
    uint16_t *l_639 = &p_1564->g_121[4][5][2];
    int16_t *l_640 = &p_1564->g_137;
    int32_t *l_641 = &p_1564->g_642;
    union U2 l_643 = {0xAD58550AL};
    (*p_1564->g_91) = ((*p_36) || 0x40L);
    (*l_641) |= (!((*p_1564->g_337) = (p_37 = (safe_add_func_uint16_t_u_u((p_37 < ((safe_mul_func_uint8_t_u_u(((safe_sub_func_int16_t_s_s(((*l_640) = ((0x1FBDL || ((*l_639) ^= (safe_mul_func_uint16_t_u_u((((((*p_1564->g_91) &= ((l_629 && GROUP_DIVERGE(1, 1)) && 18446744073709551615UL)) >= 0x5EF9AFE2L) && ((((0x81014FF1L || ((*l_636) = (p_1564->g_94.f0 &= ((safe_rshift_func_uint16_t_u_s(((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 0)) > ((((!((void*)0 == &p_1564->g_333[9][0][0])) == ((safe_div_func_uint64_t_u_u(((4294967295UL > (**p_1564->g_90)) > l_629), p_35)) , l_629)) != (*p_1564->g_91)) , l_629)), l_629)) , p_38.f0)))) , l_629) & l_638) ^ p_1564->g_316.f0)) < p_38.f0), l_638)))) != 1L)), l_638)) == p_1564->g_614[0][0][1].f0), l_629)) == l_629)), 0xE56DL)))));
    return l_643;
}


/* ------------------------------------------ */
/* 
 * reads : p_1564->g_47 p_1564->g_53 p_1564->g_6 p_1564->g_50 p_1564->g_80 p_1564->g_19 p_1564->g_90 p_1564->g_94 p_1564->g_82 p_1564->g_116 p_1564->g_119 p_1564->g_91 p_1564->g_89 p_1564->g_138 p_1564->g_148 p_1564->g_154 p_1564->g_158 p_1564->g_176 p_1564->g_121 p_1564->g_177 p_1564->g_182 p_1564->g_87 p_1564->g_137 p_1564->g_94.f0 p_1564->g_215 p_1564->g_220 p_1564->g_235 p_1564->g_268 p_1564->g_280 p_1564->g_268.f0 p_1564->g_235.f0 p_1564->g_301 p_1564->g_316 p_1564->g_337 p_1564->g_56 p_1564->g_372 p_1564->g_334 p_1564->g_613
 * writes: p_1564->g_19 p_1564->g_56 p_1564->g_50 p_1564->g_82 p_1564->g_87 p_1564->g_91 p_1564->g_116 p_1564->g_121 p_1564->g_89 p_1564->g_138 p_1564->g_148 p_1564->g_80 p_1564->g_158 p_1564->g_47 p_1564->g_137 p_1564->g_94.f0 p_1564->g_215 p_1564->g_220 p_1564->g_53 p_1564->g_229 p_1564->g_261 p_1564->g_301 p_1564->g_334 p_1564->g_280 p_1564->g_372 p_1564->g_391 p_1564->g_417 p_1564->g_419 p_1564->g_613
 */
int32_t  func_40(uint64_t  p_41, int8_t * p_42, int64_t  p_43, struct S3 * p_1564)
{ /* block id: 8 */
    uint16_t l_54[6][2] = {{0xD970L,0xD970L},{0xD970L,0xD970L},{0xD970L,0xD970L},{0xD970L,0xD970L},{0xD970L,0xD970L},{0xD970L,0xD970L}};
    int32_t l_151 = 0x586619B6L;
    int32_t *l_179 = (void*)0;
    int64_t *l_260 = &p_1564->g_261;
    int32_t l_271[7][5][5] = {{{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L}},{{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L}},{{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L}},{{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L}},{{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L}},{{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L}},{{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L},{0x7638CCC9L,0x5538669AL,0x5538669AL,0x7638CCC9L,0x6F3716B7L}}};
    union U2 l_276 = {1UL};
    int8_t *l_277[1];
    uint16_t *l_279[6][6] = {{&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1],&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1]},{&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1],&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1]},{&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1],&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1]},{&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1],&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1]},{&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1],&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1]},{&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1],&l_54[5][1],&p_1564->g_121[4][5][2],&l_54[5][1]}};
    uint16_t **l_278 = &l_279[2][1];
    int32_t l_297 = 0x4F74D3B4L;
    int32_t l_298 = 0x7E6C16D6L;
    uint64_t **l_347 = (void*)0;
    union U0 **l_425 = &p_1564->g_334[1];
    union U0 ***l_424[10] = {&l_425,&l_425,&l_425,&l_425,&l_425,&l_425,&l_425,&l_425,&l_425,&l_425};
    int32_t l_487 = 3L;
    uint32_t l_488 = 0xF99FF59BL;
    uint32_t l_498 = 0xE560B7A2L;
    int8_t l_526 = 0x47L;
    int32_t l_575[1];
    int16_t l_588 = 1L;
    uint32_t l_597[3];
    uint32_t *l_607 = (void*)0;
    uint32_t *l_608[2];
    int32_t l_618 = 0x5FC91FFCL;
    int32_t *l_619 = &l_487;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_277[i] = &p_1564->g_19;
    for (i = 0; i < 1; i++)
        l_575[i] = 0x671BC8AFL;
    for (i = 0; i < 3; i++)
        l_597[i] = 1UL;
    for (i = 0; i < 2; i++)
        l_608[i] = (void*)0;
lbl_396:
    for (p_1564->g_19 = 1; (p_1564->g_19 >= 0); p_1564->g_19 -= 1)
    { /* block id: 11 */
        uint64_t *l_55 = &p_1564->g_56;
        int32_t *l_152[2];
        int32_t **l_153 = &l_152[1];
        int i;
        for (i = 0; i < 2; i++)
            l_152[i] = &p_1564->g_89;
        l_151 |= (((*l_55) = p_1564->g_47) <= func_57((safe_div_func_int64_t_s_s((safe_mod_func_int8_t_s_s(func_63(l_55, p_1564->g_53, l_54[5][0], p_1564), (0x4C552E4EL && (safe_rshift_func_int16_t_s_s(0x623BL, ((0x4B76AC36B57048E4L >= (!(safe_add_func_uint64_t_u_u(((+65535UL) ^ 0x2DF7L), GROUP_DIVERGE(1, 1))))) && 65535UL)))))), 1L)), p_1564));
        (*p_1564->g_154) = ((*l_153) = l_152[1]);
        for (p_1564->g_80 = 0; (p_1564->g_80 <= 1); p_1564->g_80 += 1)
        { /* block id: 42 */
            int64_t *l_157 = &p_1564->g_158;
            uint8_t *l_159 = &p_1564->g_47;
            int16_t *l_168 = &p_1564->g_137;
            int16_t *l_169 = &p_1564->g_87;
            int32_t *l_214 = &l_151;
            int32_t l_216 = 0x6F28A5CCL;
            uint32_t l_217 = 0x9DAFC303L;
            int i, j;
            if ((safe_mod_func_int8_t_s_s(((((l_54[(p_1564->g_19 + 2)][p_1564->g_19] & ((*l_157) ^= p_43)) != (l_54[(p_1564->g_19 + 2)][p_1564->g_19] , ((*l_169) = ((*l_168) = (((++(*l_159)) & (l_54[(p_1564->g_19 + 2)][p_1564->g_19] & ((p_41 && (l_151 = (*p_42))) & ((~((l_54[(p_1564->g_19 + 2)][p_1564->g_19] , (((((safe_mod_func_int16_t_s_s((-1L), (safe_add_func_int32_t_s_s(0L, 4294967295UL)))) != 253UL) >= p_1564->g_148) , 6UL) , l_54[(p_1564->g_19 + 2)][p_1564->g_19])) & l_54[(p_1564->g_19 + 2)][p_1564->g_19])) > p_43)))) >= (*p_1564->g_82)))))) , (-8L)) || p_43), p_1564->g_116)))
            { /* block id: 48 */
                uint64_t l_213 = 1UL;
                for (p_1564->g_116 = 1; (p_1564->g_116 >= 0); p_1564->g_116 -= 1)
                { /* block id: 51 */
                    uint32_t l_211 = 0UL;
                    int32_t l_212 = 0x6929A276L;
                    for (p_1564->g_148 = 0; (p_1564->g_148 <= 2); p_1564->g_148 += 1)
                    { /* block id: 54 */
                        int32_t **l_178[6];
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_178[i] = (void*)0;
                        (*p_1564->g_91) = (safe_lshift_func_int16_t_s_u(0x39A4L, ((safe_lshift_func_int16_t_s_s(((safe_add_func_int16_t_s_s(((void*)0 == p_1564->g_176), p_1564->g_121[(p_1564->g_116 + 7)][(p_1564->g_80 + 5)][(p_1564->g_116 + 1)])) ^ p_1564->g_177), ((void*)0 == l_178[4]))) | 0x2CL)));
                        l_179 = (void*)0;
                        (**l_153) &= 0x3F70FADEL;
                    }
                    for (p_1564->g_47 = 0; (p_1564->g_47 <= 1); p_1564->g_47 += 1)
                    { /* block id: 61 */
                        (**l_153) = p_43;
                        (**l_153) = ((safe_mod_func_uint8_t_u_u(((p_1564->g_182 , (safe_add_func_uint64_t_u_u(p_41, (safe_div_func_int32_t_s_s(((((safe_rshift_func_int16_t_s_s((p_1564->g_87 , (safe_mul_func_int8_t_s_s((((l_213 = (safe_mul_func_uint8_t_u_u(((safe_mod_func_int32_t_s_s(((*p_1564->g_91) == (l_211 = (((safe_div_func_uint16_t_u_u((p_1564->g_19 || ((safe_sub_func_int16_t_s_s(((safe_sub_func_int16_t_s_s(((safe_rshift_func_int16_t_s_u(9L, ((safe_sub_func_int64_t_s_s(((p_43 && ((safe_mod_func_int32_t_s_s((((safe_mul_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(0UL, p_1564->g_116)), p_1564->g_137)) >= (*p_1564->g_176)) && l_54[(p_1564->g_19 + 2)][p_1564->g_19]), p_1564->g_148)) , 0x07L)) , p_41), 0x19FC36FDEF975B77L)) && p_43))) , (-1L)), p_43)) , 0x535BL), p_43)) > p_1564->g_94.f0)), p_41)) != 0xBE15L) < p_43))), p_41)) && p_41), l_212))) != p_43) < p_41), p_1564->g_19))), 3)) == 1UL) <= p_1564->g_47) , p_43), 1UL))))) & p_43), p_1564->g_80)) == p_1564->g_19);
                    }
                    (**l_153) = l_213;
                }
                l_214 = (*p_1564->g_90);
                for (p_1564->g_94.f0 = 0; (p_1564->g_94.f0 <= 1); p_1564->g_94.f0 += 1)
                { /* block id: 72 */
                    int32_t l_230[7][3] = {{9L,0L,0L},{9L,0L,0L},{9L,0L,0L},{9L,0L,0L},{9L,0L,0L},{9L,0L,0L},{9L,0L,0L}};
                    int i, j;
                    for (p_1564->g_56 = 0; (p_1564->g_56 <= 1); p_1564->g_56 += 1)
                    { /* block id: 75 */
                        p_1564->g_215[4] ^= (p_1564->g_119[1] , (*p_1564->g_91));
                        --l_217;
                    }
                    for (l_151 = 0; (l_151 <= 1); l_151 += 1)
                    { /* block id: 81 */
                        uint32_t *l_225 = &p_1564->g_148;
                        int8_t *l_228 = &p_1564->g_53;
                        --p_1564->g_220;
                        (**p_1564->g_90) = (p_41 <= ((p_1564->g_148 && (p_1564->g_229 = ((safe_mul_func_int16_t_s_s(((*p_1564->g_91) != ((**p_1564->g_90) == 0x02316B0FL)), GROUP_DIVERGE(0, 1))) != ((++(*l_225)) , (((*l_228) = 1L) < GROUP_DIVERGE(2, 1)))))) , p_43));
                        l_230[1][0] &= (*l_214);
                    }
                    if (p_43)
                        break;
                }
                for (p_1564->g_148 = 0; (p_1564->g_148 <= 1); p_1564->g_148 += 1)
                { /* block id: 93 */
                    int16_t *l_244 = &p_1564->g_116;
                    (*l_214) = ((((((*l_168) = ((safe_div_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(p_1564->g_137, (-1L))), p_1564->g_220)) >= (*p_1564->g_82))) , (p_1564->g_235 , (safe_div_func_int16_t_s_s(((*l_244) = (safe_sub_func_int8_t_s_s((&p_1564->g_80 == (void*)0), (safe_sub_func_int32_t_s_s(((((*l_169) &= ((*l_168) &= (*p_1564->g_176))) < (safe_div_func_int64_t_s_s(0x3CA189D31E3E4668L, 0xCC31644C7A8529ACL))) == 1L), l_213))))), p_1564->g_138[7])))) || p_43) ^ (*l_214)) <= (*p_1564->g_91));
                }
            }
            else
            { /* block id: 100 */
                int64_t l_257 = 1L;
                (**l_153) ^= (safe_mul_func_int16_t_s_s(((0x7504899D85C398A5L && ((*p_1564->g_82) >= ((0x6D31D169L & (safe_lshift_func_uint8_t_u_u((FAKE_DIVERGE(p_1564->global_2_offset, get_global_id(2), 10) >= (safe_mul_func_uint16_t_u_u((((p_1564->g_47--) && 0x5AL) < (((*l_55) = 0UL) , ((*l_55) = ((void*)0 != &p_1564->g_82)))), FAKE_DIVERGE(p_1564->group_2_offset, get_group_id(2), 10)))), 3))) || (!(safe_mul_func_int16_t_s_s((((void*)0 != &p_1564->g_116) | p_1564->g_116), (*p_1564->g_176))))))) < p_1564->g_121[4][5][2]), l_257));
            }
            return (**p_1564->g_154);
        }
    }
    if ((safe_sub_func_int8_t_s_s(((l_151 = ((*l_260) = (+p_41))) , (~(((FAKE_DIVERGE(p_1564->group_2_offset, get_group_id(2), 10) <= ((safe_add_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(5UL, (p_1564->g_268[3][2] , (((((*p_1564->g_82) = (safe_mul_func_uint16_t_u_u(p_43, l_271[0][1][0]))) >= (-1L)) , p_1564->g_19) , (((safe_lshift_func_uint8_t_u_s((((safe_div_func_uint8_t_u_u((((((*l_278) = (l_276 , (((void*)0 == l_277[0]) , &p_1564->g_121[4][5][2]))) == &l_54[5][0]) && (-7L)) , FAKE_DIVERGE(p_1564->group_2_offset, get_group_id(2), 10)), p_1564->g_280)) || 4294967295UL) , 0x79L), p_1564->g_268[3][2].f0)) > p_43) < p_43))))), p_1564->g_280)) == FAKE_DIVERGE(p_1564->local_2_offset, get_local_id(2), 10))) && (-2L)) <= p_41))), p_1564->g_94.f0)))
    { /* block id: 113 */
        int32_t l_282 = 0x122B5390L;
        int32_t l_292 = 1L;
        int32_t l_299 = 6L;
        int8_t *l_312[2][3] = {{&p_1564->g_53,&p_1564->g_53,&p_1564->g_53},{&p_1564->g_53,&p_1564->g_53,&p_1564->g_53}};
        int32_t *l_331[10] = {&l_298,(void*)0,&l_297,(void*)0,&l_298,&l_298,(void*)0,&l_297,(void*)0,&l_298};
        int i, j;
        for (p_1564->g_116 = 1; (p_1564->g_116 <= 5); p_1564->g_116 += 1)
        { /* block id: 116 */
            uint32_t l_287 = 0UL;
            uint32_t *l_290 = (void*)0;
            int32_t l_291 = (-9L);
            int16_t *l_293 = &p_1564->g_137;
            int32_t *l_294[10][3] = {{&l_151,(void*)0,(void*)0},{&l_151,(void*)0,(void*)0},{&l_151,(void*)0,(void*)0},{&l_151,(void*)0,(void*)0},{&l_151,(void*)0,(void*)0},{&l_151,(void*)0,(void*)0},{&l_151,(void*)0,(void*)0},{&l_151,(void*)0,(void*)0},{&l_151,(void*)0,(void*)0},{&l_151,(void*)0,(void*)0}};
            union U0 *l_332 = (void*)0;
            int i, j;
            l_151 = ((*p_1564->g_91) = (((safe_unary_minus_func_int64_t_s((l_282 < p_43))) > ((*l_293) = (p_43 , (((l_282 || (safe_mul_func_uint16_t_u_u(p_41, (safe_lshift_func_uint16_t_u_s((p_1564->g_235.f0 >= ((l_287 || (((((0UL | (l_292 = (safe_add_func_uint32_t_u_u((l_291 |= l_282), 0x7B13E365L)))) , 0xBE45L) | l_282) , p_41) != p_1564->g_215[4])) | (*p_1564->g_176))), p_1564->g_138[0]))))) <= p_43) >= l_287)))) , l_282));
            if ((*p_1564->g_91))
                continue;
            for (p_1564->g_87 = 4; (p_1564->g_87 >= 0); p_1564->g_87 -= 1)
            { /* block id: 125 */
                int64_t l_295 = 1L;
                int32_t l_296 = 0x6790414EL;
                int32_t l_300 = 8L;
                p_1564->g_301--;
            }
            for (p_1564->g_87 = 2; (p_1564->g_87 >= 0); p_1564->g_87 -= 1)
            { /* block id: 130 */
                uint64_t **l_317 = &p_1564->g_82;
                uint32_t l_327 = 4294967295UL;
                int32_t l_330 = 0x510F737AL;
                l_292 = (safe_add_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), 0x7ADF5A98L));
                for (p_43 = 2; (p_43 >= 0); p_43 -= 1)
                { /* block id: 134 */
                    int64_t l_306 = 0x589723F7F0102901L;
                    uint64_t **l_318 = &p_1564->g_82;
                    uint32_t *l_328 = &l_287;
                    uint32_t *l_329 = &p_1564->g_94.f0;
                    union U0 **l_335 = &l_332;
                    int i, j;
                    l_331[5] = func_67(l_306, ((((safe_mul_func_int16_t_s_s(((safe_div_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u((GROUP_DIVERGE(2, 1) > (l_312[0][1] != ((((safe_lshift_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u(p_1564->g_148)), (p_1564->g_316 , (((l_317 == l_318) >= ((l_330 ^= (((*l_329) = ((*l_328) = ((safe_sub_func_uint8_t_u_u(255UL, (((((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_1564->group_2_offset, get_group_id(2), 10), (safe_mul_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s(l_327, l_327)) && p_1564->g_177), (*p_42))))) & p_43) != p_1564->g_158) , p_41) & 0x258A6616L))) != (*p_1564->g_91)))) | p_1564->g_116)) == p_43)) >= 0x566C7585B6192F95L)))) , p_43) ^ p_1564->g_138[6]) , p_42))))), p_1564->g_80)) ^ (*p_1564->g_82)), p_1564->g_19)) & p_1564->g_50) <= 0UL) & 6UL), l_282, l_329, p_1564);
                    (*l_335) = l_332;
                }
            }
        }
    }
    else
    { /* block id: 143 */
        int32_t l_369 = 0x49CD46B3L;
        int32_t l_371 = 0x50F819D0L;
        uint8_t *l_394 = &p_1564->g_138[4];
        for (p_1564->g_89 = 1; (p_1564->g_89 >= 0); p_1564->g_89 -= 1)
        { /* block id: 146 */
            union U0 **l_336 = &p_1564->g_334[1];
            int32_t l_375 = 1L;
            uint8_t *l_389[1];
            int i;
            for (i = 0; i < 1; i++)
                l_389[i] = (void*)0;
            (*l_336) = (void*)0;
            (*p_1564->g_337) ^= (p_41 && 0x273AL);
            for (p_1564->g_56 = 0; (p_1564->g_56 <= 1); p_1564->g_56 += 1)
            { /* block id: 151 */
                int32_t l_348[10][7][3] = {{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}},{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}},{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}},{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}},{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}},{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}},{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}},{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}},{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}},{{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)},{(-3L),0x1491FCD5L,(-7L)}}};
                union U0 **l_350 = &p_1564->g_334[1];
                uint16_t **l_384 = &l_279[2][1];
                int i, j, k;
                if (l_54[(p_1564->g_89 + 1)][p_1564->g_89])
                    break;
                for (p_1564->g_53 = 1; (p_1564->g_53 >= 0); p_1564->g_53 -= 1)
                { /* block id: 155 */
                    int16_t *l_342 = &p_1564->g_137;
                    int16_t **l_343 = (void*)0;
                    int16_t **l_344 = &l_342;
                    int32_t l_349 = 0x152EEAF5L;
                    int32_t l_366 = 0x1F39F39AL;
                    uint8_t **l_390 = (void*)0;
                    uint8_t **l_392 = (void*)0;
                    uint8_t **l_393[2];
                    int32_t *l_395 = &l_298;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_393[i] = (void*)0;
                    if ((4294967294UL == (((((safe_sub_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((~0xC891040D20AD7A0BL), GROUP_DIVERGE(2, 1))), 0x76L)) , &p_1564->g_116) == ((*l_344) = l_342)) ^ (safe_rshift_func_uint16_t_u_s(((FAKE_DIVERGE(p_1564->local_0_offset, get_local_id(0), 10) , (void*)0) != (p_1564->g_138[3] , l_347)), l_54[(p_1564->g_89 + 1)][p_1564->g_89]))) != p_43)))
                    { /* block id: 157 */
                        union U0 ***l_351 = &l_336;
                        int32_t l_354 = 0x18D38F96L;
                        int16_t l_365 = 0x71FDL;
                        int32_t *l_367[3][5] = {{(void*)0,&l_349,(void*)0,(void*)0,&l_349},{(void*)0,&l_349,(void*)0,(void*)0,&l_349},{(void*)0,&l_349,(void*)0,(void*)0,&l_349}};
                        int i, j;
                        l_348[9][3][1] = (FAKE_DIVERGE(p_1564->local_1_offset, get_local_id(1), 10) , l_54[(p_1564->g_89 + 1)][p_1564->g_89]);
                        (*p_1564->g_337) = (p_1564->g_268[3][2] , (l_349 ^ (((l_350 != ((*l_351) = l_336)) | (safe_add_func_int16_t_s_s(l_354, (safe_mul_func_int16_t_s_s(((p_41 & (1UL >= (safe_div_func_int8_t_s_s(l_348[1][4][0], (l_366 &= ((*p_42) = (safe_add_func_int32_t_s_s((((safe_mul_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((l_54[(p_1564->g_89 + 2)][p_1564->g_56] = ((&p_1564->g_176 == (void*)0) && p_1564->g_116)), l_365)), 7L)) , (-3L)) && p_43), (*p_1564->g_91))))))))) ^ GROUP_DIVERGE(2, 1)), p_43))))) >= p_1564->g_89)));
                    }
                    else
                    { /* block id: 164 */
                        int32_t *l_368[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        ++p_1564->g_372[4];
                        l_375 ^= p_41;
                    }
                    (*l_395) &= (((safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s((p_1564->g_94 , (safe_rshift_func_uint16_t_u_s(((((safe_add_func_int8_t_s_s((((void*)0 != l_384) <= (l_369 &= (*p_42))), (safe_rshift_func_int8_t_s_s((!(safe_add_func_int16_t_s_s((*p_1564->g_176), (((l_394 = (p_1564->g_391[1][0] = l_389[0])) != (p_1564->g_94 , &p_1564->g_229)) > p_41)))), 7)))) != l_348[4][0][1]) ^ GROUP_DIVERGE(0, 1)) == (-8L)), 0))), l_371)), l_366)) , GROUP_DIVERGE(0, 1)) ^ l_366);
                    for (p_1564->g_50 = 0; (p_1564->g_50 <= 1); p_1564->g_50 += 1)
                    { /* block id: 174 */
                        return p_43;
                    }
                    (*l_395) = 8L;
                }
                if (l_298)
                    goto lbl_396;
            }
        }
    }
    for (p_1564->g_94.f0 = 0; (p_1564->g_94.f0 <= 8); p_1564->g_94.f0 += 1)
    { /* block id: 185 */
        uint8_t *l_409 = &p_1564->g_50;
        uint8_t *l_412[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_413 = 1L;
        uint64_t *l_416 = &p_1564->g_417;
        int8_t **l_418[9] = {&l_277[0],&l_277[0],&l_277[0],&l_277[0],&l_277[0],&l_277[0],&l_277[0],&l_277[0],&l_277[0]};
        int16_t *l_420 = &p_1564->g_87;
        int32_t *l_421 = &l_297;
        uint8_t l_524[8][8] = {{255UL,255UL,0UL,0x81L,0UL,0x81L,0UL,255UL},{255UL,255UL,0UL,0x81L,0UL,0x81L,0UL,255UL},{255UL,255UL,0UL,0x81L,0UL,0x81L,0UL,255UL},{255UL,255UL,0UL,0x81L,0UL,0x81L,0UL,255UL},{255UL,255UL,0UL,0x81L,0UL,0x81L,0UL,255UL},{255UL,255UL,0UL,0x81L,0UL,0x81L,0UL,255UL},{255UL,255UL,0UL,0x81L,0UL,0x81L,0UL,255UL},{255UL,255UL,0UL,0x81L,0UL,0x81L,0UL,255UL}};
        int64_t l_555 = 0x2AFA55418A44EE6EL;
        int32_t l_559 = 0L;
        int32_t l_566 = (-1L);
        int32_t l_567 = 9L;
        int32_t l_571 = 0x6569B85AL;
        int32_t l_576[8][6] = {{0x5EE6AE29L,1L,0x6C2138A6L,(-8L),0x6C2138A6L,1L},{0x5EE6AE29L,1L,0x6C2138A6L,(-8L),0x6C2138A6L,1L},{0x5EE6AE29L,1L,0x6C2138A6L,(-8L),0x6C2138A6L,1L},{0x5EE6AE29L,1L,0x6C2138A6L,(-8L),0x6C2138A6L,1L},{0x5EE6AE29L,1L,0x6C2138A6L,(-8L),0x6C2138A6L,1L},{0x5EE6AE29L,1L,0x6C2138A6L,(-8L),0x6C2138A6L,1L},{0x5EE6AE29L,1L,0x6C2138A6L,(-8L),0x6C2138A6L,1L},{0x5EE6AE29L,1L,0x6C2138A6L,(-8L),0x6C2138A6L,1L}};
        int64_t l_583 = 0x4FE291C6AE896F16L;
        union U0 *l_601 = &p_1564->g_235;
        int32_t **l_603 = &l_179;
        int i, j;
        (*l_421) &= (safe_sub_func_int64_t_s_s((p_1564->g_138[p_1564->g_94.f0] > ((((((safe_lshift_func_int8_t_s_u(p_1564->g_138[p_1564->g_94.f0], 0)) , (((((safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(p_1564->g_138[p_1564->g_94.f0], 7)), (safe_div_func_uint32_t_u_u((((safe_div_func_uint8_t_u_u((1L <= p_41), (l_413 = ((*l_409)++)))) != ((((((*l_420) = ((safe_mul_func_uint8_t_u_u(p_41, (((*l_416) = 2UL) , ((p_1564->g_419 = (l_277[0] = l_409)) != (void*)0)))) && (*p_42))) & (*p_1564->g_176)) < 0x2BD5DF91L) , (*p_1564->g_176)) != p_43)) && 0x83F992C3CA4DEB14L), p_1564->g_89)))) , p_43) >= (*p_42)) <= 0x0FL) , 0UL)) , 0x9EC2B914L) < (*p_1564->g_91)) ^ 0x4D12L) >= 0x18CA1072L)), FAKE_DIVERGE(p_1564->group_0_offset, get_group_id(0), 10)));
    }
    (*l_619) = (((safe_add_func_uint64_t_u_u((p_43 ^ (p_1564->g_94.f0 = 9UL)), (((*p_1564->g_82) == (((((((((l_151 = p_41) & (safe_add_func_uint8_t_u_u((((*p_1564->g_91) = p_43) == ((!(safe_lshift_func_int16_t_s_s((*p_1564->g_176), 12))) ^ ((((*l_425) = p_1564->g_334[1]) != (p_1564->g_613[1][0] = p_1564->g_613[5][1])) == (((void*)0 == &l_271[0][3][1]) , FAKE_DIVERGE(p_1564->local_1_offset, get_local_id(1), 10))))), (-1L)))) >= p_43) , 0L) | l_618) || p_1564->g_6) , (void*)0) != &p_1564->g_391[2][5]) & 0x59AED0E7L)) != 1UL))) , p_43) >= l_498);
    return (**p_1564->g_90);
}


/* ------------------------------------------ */
/* 
 * reads : p_1564->g_116 p_1564->g_91 p_1564->g_82 p_1564->g_80 p_1564->g_148
 * writes: p_1564->g_116 p_1564->g_89 p_1564->g_148
 */
uint64_t  func_57(int32_t  p_58, struct S3 * p_1564)
{ /* block id: 27 */
    uint64_t **l_145 = &p_1564->g_82;
    int32_t l_146 = 6L;
    int32_t *l_147[5][3];
    int i, j;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
            l_147[i][j] = &l_146;
    }
    for (p_1564->g_116 = 2; (p_1564->g_116 >= 0); p_1564->g_116 -= 1)
    { /* block id: 30 */
        (*p_1564->g_91) = (l_145 == (void*)0);
        return (*p_1564->g_82);
    }
    l_146 = l_146;
    --p_1564->g_148;
    return p_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_1564->g_6 p_1564->g_50 p_1564->g_80 p_1564->g_19 p_1564->g_90 p_1564->g_94 p_1564->g_47 p_1564->g_53 p_1564->g_82 p_1564->g_116 p_1564->g_119 p_1564->g_91 p_1564->g_89 p_1564->g_138
 * writes: p_1564->g_50 p_1564->g_82 p_1564->g_87 p_1564->g_91 p_1564->g_116 p_1564->g_121 p_1564->g_89 p_1564->g_138
 */
int8_t  func_63(uint64_t * p_64, uint8_t  p_65, uint32_t  p_66, struct S3 * p_1564)
{ /* block id: 13 */
    uint8_t *l_76 = &p_1564->g_50;
    uint64_t *l_79 = &p_1564->g_80;
    uint64_t **l_81[2][7] = {{&l_79,&l_79,&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79,&l_79,&l_79}};
    int32_t l_85 = 1L;
    int16_t *l_86 = &p_1564->g_87;
    int16_t *l_115 = &p_1564->g_116;
    int64_t l_117[6][8] = {{0x585FC26EAA6BC85FL,0x6F3C4E3186512359L,5L,0x5EF4C81FA067E36FL,0x6F3C4E3186512359L,0x5EF4C81FA067E36FL,5L,0x6F3C4E3186512359L},{0x585FC26EAA6BC85FL,0x6F3C4E3186512359L,5L,0x5EF4C81FA067E36FL,0x6F3C4E3186512359L,0x5EF4C81FA067E36FL,5L,0x6F3C4E3186512359L},{0x585FC26EAA6BC85FL,0x6F3C4E3186512359L,5L,0x5EF4C81FA067E36FL,0x6F3C4E3186512359L,0x5EF4C81FA067E36FL,5L,0x6F3C4E3186512359L},{0x585FC26EAA6BC85FL,0x6F3C4E3186512359L,5L,0x5EF4C81FA067E36FL,0x6F3C4E3186512359L,0x5EF4C81FA067E36FL,5L,0x6F3C4E3186512359L},{0x585FC26EAA6BC85FL,0x6F3C4E3186512359L,5L,0x5EF4C81FA067E36FL,0x6F3C4E3186512359L,0x5EF4C81FA067E36FL,5L,0x6F3C4E3186512359L},{0x585FC26EAA6BC85FL,0x6F3C4E3186512359L,5L,0x5EF4C81FA067E36FL,0x6F3C4E3186512359L,0x5EF4C81FA067E36FL,5L,0x6F3C4E3186512359L}};
    uint32_t l_118 = 0x4770596CL;
    uint16_t *l_120 = &p_1564->g_121[4][5][2];
    int32_t l_122 = 0x646FD811L;
    int32_t *l_123 = (void*)0;
    int32_t *l_124 = &p_1564->g_89;
    int32_t *l_125 = (void*)0;
    int32_t *l_126 = (void*)0;
    int32_t *l_127 = &l_122;
    int32_t l_128 = 0L;
    int32_t *l_129 = (void*)0;
    int32_t *l_130 = &p_1564->g_89;
    int32_t *l_131 = &l_85;
    int32_t *l_132 = (void*)0;
    int32_t *l_133 = (void*)0;
    int32_t *l_134 = &l_128;
    int32_t *l_135 = &l_122;
    int32_t *l_136[8][2][7] = {{{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85},{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85}},{{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85},{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85}},{{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85},{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85}},{{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85},{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85}},{{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85},{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85}},{{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85},{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85}},{{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85},{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85}},{{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85},{&l_128,(void*)0,&l_128,&p_1564->g_89,&l_128,&l_128,&l_85}}};
    int i, j, k;
    (*p_1564->g_90) = func_67(p_65, (safe_mod_func_int16_t_s_s(((*l_86) = (safe_sub_func_uint8_t_u_u(((*l_76) |= p_1564->g_6), ((safe_add_func_uint16_t_u_u((((p_1564->g_82 = l_79) == (p_64 = p_64)) | p_66), (((safe_sub_func_int16_t_s_s((-1L), (p_66 || (((&p_1564->g_19 != (void*)0) ^ l_85) , l_85)))) , p_1564->g_80) , p_65))) != p_1564->g_19)))), p_66)), p_66, &l_85, p_1564);
    (*p_1564->g_91) &= (((safe_div_func_uint16_t_u_u((p_1564->g_94 , 2UL), ((*l_120) = ((safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((~p_66), ((((*l_86) = (p_1564->g_94 , p_66)) > (safe_rshift_func_int16_t_s_u(((*l_115) |= ((l_85 == (0x2E61L > ((safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_u(0x13L, (safe_mod_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u((p_1564->g_47 <= p_1564->g_53), (*p_1564->g_82))), 4294967295UL)))), p_1564->g_6)) < l_85))) && p_1564->g_80)), l_117[5][5]))) >= l_118))), 11)), 12)) >= p_66), p_1564->g_19)), l_85)) && p_1564->g_119[1])))) | 0x23L) , l_85);
    --p_1564->g_138[0];
    return p_1564->g_80;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_67(int32_t  p_68, int16_t  p_69, uint32_t  p_70, int32_t * p_71, struct S3 * p_1564)
{ /* block id: 18 */
    int32_t *l_88 = &p_1564->g_89;
    return l_88;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_1565;
    struct S3* p_1564 = &c_1565;
    struct S3 c_1566 = {
        0x3498L, // p_1564->g_6
        0L, // p_1564->g_19
        0UL, // p_1564->g_47
        247UL, // p_1564->g_50
        0x69L, // p_1564->g_53
        1UL, // p_1564->g_56
        0x0E960871E8EE6221L, // p_1564->g_80
        &p_1564->g_80, // p_1564->g_82
        0x2493L, // p_1564->g_87
        9L, // p_1564->g_89
        &p_1564->g_89, // p_1564->g_91
        &p_1564->g_91, // p_1564->g_90
        {0x67819277L}, // p_1564->g_94
        0x4AB3L, // p_1564->g_116
        {0xF8C13D3DL,0xF8C13D3DL,0xF8C13D3DL,0xF8C13D3DL,0xF8C13D3DL}, // p_1564->g_119
        {{{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL}},{{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL}},{{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL}},{{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL}},{{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL}},{{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL}},{{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL}},{{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL}},{{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL},{5UL,65531UL,1UL}}}, // p_1564->g_121
        9L, // p_1564->g_137
        {0x0CL,0x0CL,0x0CL,0x0CL,0x0CL,0x0CL,0x0CL,0x0CL,0x0CL}, // p_1564->g_138
        0xC7636400L, // p_1564->g_148
        &p_1564->g_91, // p_1564->g_154
        0L, // p_1564->g_158
        0x1CF9L, // p_1564->g_177
        &p_1564->g_177, // p_1564->g_176
        {-1L}, // p_1564->g_182
        {1UL,1UL,1UL,1UL,1UL,1UL}, // p_1564->g_215
        0x53073A34EB400375L, // p_1564->g_220
        0x60L, // p_1564->g_229
        {9L}, // p_1564->g_235
        (-1L), // p_1564->g_261
        {{{-8L},{0x5B370B68L},{-8L}},{{-8L},{0x5B370B68L},{-8L}},{{-8L},{0x5B370B68L},{-8L}},{{-8L},{0x5B370B68L},{-8L}}}, // p_1564->g_268
        4L, // p_1564->g_280
        255UL, // p_1564->g_301
        {0x39D53C29L}, // p_1564->g_316
        {&p_1564->g_316,&p_1564->g_316,&p_1564->g_316,&p_1564->g_316,&p_1564->g_316}, // p_1564->g_334
        {{{&p_1564->g_334[2],&p_1564->g_334[2]}},{{&p_1564->g_334[2],&p_1564->g_334[2]}},{{&p_1564->g_334[2],&p_1564->g_334[2]}},{{&p_1564->g_334[2],&p_1564->g_334[2]}},{{&p_1564->g_334[2],&p_1564->g_334[2]}},{{&p_1564->g_334[2],&p_1564->g_334[2]}},{{&p_1564->g_334[2],&p_1564->g_334[2]}},{{&p_1564->g_334[2],&p_1564->g_334[2]}},{{&p_1564->g_334[2],&p_1564->g_334[2]}},{{&p_1564->g_334[2],&p_1564->g_334[2]}}}, // p_1564->g_333
        &p_1564->g_280, // p_1564->g_337
        {{{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L}},{{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L}},{{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L}},{{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L}},{{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L}},{{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L}},{{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L}},{{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L}},{{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L},{0L,0x7D7233BBL,0L}}}, // p_1564->g_370
        {0x2F1F299F02CD76C0L,18446744073709551610UL,0x2F1F299F02CD76C0L,0x2F1F299F02CD76C0L,18446744073709551610UL,0x2F1F299F02CD76C0L,0x2F1F299F02CD76C0L}, // p_1564->g_372
        {{&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0]},{&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0]},{&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0],&p_1564->g_138[0]}}, // p_1564->g_391
        5UL, // p_1564->g_417
        &p_1564->g_53, // p_1564->g_419
        &p_1564->g_268[3][2], // p_1564->g_502
        {{{&p_1564->g_502},{&p_1564->g_502},{&p_1564->g_502},{&p_1564->g_502},{&p_1564->g_502}}}, // p_1564->g_501
        {{{&p_1564->g_91,&p_1564->g_91,&p_1564->g_91,&p_1564->g_91},{&p_1564->g_91,&p_1564->g_91,&p_1564->g_91,&p_1564->g_91},{&p_1564->g_91,&p_1564->g_91,&p_1564->g_91,&p_1564->g_91},{&p_1564->g_91,&p_1564->g_91,&p_1564->g_91,&p_1564->g_91},{&p_1564->g_91,&p_1564->g_91,&p_1564->g_91,&p_1564->g_91},{&p_1564->g_91,&p_1564->g_91,&p_1564->g_91,&p_1564->g_91},{&p_1564->g_91,&p_1564->g_91,&p_1564->g_91,&p_1564->g_91}}}, // p_1564->g_506
        0xA7L, // p_1564->g_512
        0x7C95577EL, // p_1564->g_569
        &p_1564->g_91, // p_1564->g_604
        {{{{-3L},{-3L}}},{{{-3L},{-3L}}},{{{-3L},{-3L}}},{{{-3L},{-3L}}}}, // p_1564->g_614
        {0x5AFEB283L}, // p_1564->g_615
        {0x77109A51L}, // p_1564->g_616
        {{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}},{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}},{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}},{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}},{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}},{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}},{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}},{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}},{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}},{{1L},{0x4B12F7B3L},{-1L},{-5L},{1L},{1L},{-5L},{-1L},{-5L},{1L}}}, // p_1564->g_617
        {{&p_1564->g_615,&p_1564->g_615,(void*)0},{&p_1564->g_615,&p_1564->g_615,(void*)0},{&p_1564->g_615,&p_1564->g_615,(void*)0},{&p_1564->g_615,&p_1564->g_615,(void*)0},{&p_1564->g_615,&p_1564->g_615,(void*)0},{&p_1564->g_615,&p_1564->g_615,(void*)0}}, // p_1564->g_613
        0x7A0A00BEL, // p_1564->g_637
        (-1L), // p_1564->g_642
        &p_1564->g_91, // p_1564->g_656
        (void*)0, // p_1564->g_657
        {-1L}, // p_1564->g_667
        &p_1564->g_91, // p_1564->g_672
        0x4064F21765373410L, // p_1564->g_720
        &p_1564->g_720, // p_1564->g_719
        &p_1564->g_637, // p_1564->g_729
        {{&p_1564->g_729,&p_1564->g_729,&p_1564->g_729,&p_1564->g_729},{&p_1564->g_729,&p_1564->g_729,&p_1564->g_729,&p_1564->g_729},{&p_1564->g_729,&p_1564->g_729,&p_1564->g_729,&p_1564->g_729},{&p_1564->g_729,&p_1564->g_729,&p_1564->g_729,&p_1564->g_729},{&p_1564->g_729,&p_1564->g_729,&p_1564->g_729,&p_1564->g_729},{&p_1564->g_729,&p_1564->g_729,&p_1564->g_729,&p_1564->g_729}}, // p_1564->g_728
        {-1L}, // p_1564->g_736
        (void*)0, // p_1564->g_788
        &p_1564->g_788, // p_1564->g_787
        (void*)0, // p_1564->g_789
        {{{0L},{0L},{0L}},{{0L},{0L},{0L}},{{0L},{0L},{0L}},{{0L},{0L},{0L}}}, // p_1564->g_816
        (-1L), // p_1564->g_827
        {0L}, // p_1564->g_831
        (void*)0, // p_1564->g_835
        &p_1564->g_835, // p_1564->g_834
        &p_1564->g_91, // p_1564->g_843
        {{{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827}},{{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827}},{{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827}},{{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827}},{{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827}},{{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827},{&p_1564->g_280,&p_1564->g_89,&p_1564->g_827,(void*)0,&p_1564->g_827}}}, // p_1564->g_872
        &p_1564->g_872[5][4][2], // p_1564->g_871
        {{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}},{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}},{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}},{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}},{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}},{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}},{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}},{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}},{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}},{{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89},{&p_1564->g_827,&p_1564->g_89}}}, // p_1564->g_906
        2L, // p_1564->g_925
        {0x1EBE672DL}, // p_1564->g_941
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1564->g_979
        {4294967286UL,1UL,4294967286UL,4294967286UL,1UL,4294967286UL,4294967286UL,1UL,4294967286UL}, // p_1564->g_999
        &p_1564->g_82, // p_1564->g_1011
        &p_1564->g_1011, // p_1564->g_1010
        {0L}, // p_1564->g_1104
        &p_1564->g_19, // p_1564->g_1139
        {{{{0L},{-6L},{3L},{-6L},{0L}}},{{{0L},{-6L},{3L},{-6L},{0L}}},{{{0L},{-6L},{3L},{-6L},{0L}}}}, // p_1564->g_1146
        0x102F57B0B8B24F4CL, // p_1564->g_1178
        0x9DCD9A6FL, // p_1564->g_1193
        1L, // p_1564->g_1196
        {0x1D506984L}, // p_1564->g_1226
        4UL, // p_1564->g_1302
        {{0L},{0L},{0L},{0L},{0L},{0L}}, // p_1564->g_1313
        &p_1564->g_719, // p_1564->g_1325
        {1L}, // p_1564->g_1326
        {1L}, // p_1564->g_1383
        &p_1564->g_334[1], // p_1564->g_1411
        {1L}, // p_1564->g_1446
        {0x3D38D7AFA4E789C3L,0x3D38D7AFA4E789C3L,0x3D38D7AFA4E789C3L,0x3D38D7AFA4E789C3L,0x3D38D7AFA4E789C3L,0x3D38D7AFA4E789C3L,0x3D38D7AFA4E789C3L}, // p_1564->g_1486
        &p_1564->g_1486[0], // p_1564->g_1485
        &p_1564->g_1486[6], // p_1564->g_1489
        &p_1564->g_91, // p_1564->g_1510
        0x80L, // p_1564->g_1518
        {0L}, // p_1564->g_1521
        &p_1564->g_417, // p_1564->g_1526
        {&p_1564->g_91,&p_1564->g_872[5][4][2],&p_1564->g_91,&p_1564->g_91,&p_1564->g_872[5][4][2],&p_1564->g_91}, // p_1564->g_1538
        {6L}, // p_1564->g_1541
        {0x202755A2L}, // p_1564->g_1555
        0x1DFFL, // p_1564->g_1557
        0x6A348158L, // p_1564->g_1559
        {0x5719C045L}, // p_1564->g_1563
        sequence_input[get_global_id(0)], // p_1564->global_0_offset
        sequence_input[get_global_id(1)], // p_1564->global_1_offset
        sequence_input[get_global_id(2)], // p_1564->global_2_offset
        sequence_input[get_local_id(0)], // p_1564->local_0_offset
        sequence_input[get_local_id(1)], // p_1564->local_1_offset
        sequence_input[get_local_id(2)], // p_1564->local_2_offset
        sequence_input[get_group_id(0)], // p_1564->group_0_offset
        sequence_input[get_group_id(1)], // p_1564->group_1_offset
        sequence_input[get_group_id(2)], // p_1564->group_2_offset
    };
    c_1565 = c_1566;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1564);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1564->g_6, "p_1564->g_6", print_hash_value);
    transparent_crc(p_1564->g_19, "p_1564->g_19", print_hash_value);
    transparent_crc(p_1564->g_47, "p_1564->g_47", print_hash_value);
    transparent_crc(p_1564->g_50, "p_1564->g_50", print_hash_value);
    transparent_crc(p_1564->g_53, "p_1564->g_53", print_hash_value);
    transparent_crc(p_1564->g_56, "p_1564->g_56", print_hash_value);
    transparent_crc(p_1564->g_80, "p_1564->g_80", print_hash_value);
    transparent_crc(p_1564->g_87, "p_1564->g_87", print_hash_value);
    transparent_crc(p_1564->g_89, "p_1564->g_89", print_hash_value);
    transparent_crc(p_1564->g_94.f0, "p_1564->g_94.f0", print_hash_value);
    transparent_crc(p_1564->g_116, "p_1564->g_116", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1564->g_119[i], "p_1564->g_119[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1564->g_121[i][j][k], "p_1564->g_121[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1564->g_137, "p_1564->g_137", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1564->g_138[i], "p_1564->g_138[i]", print_hash_value);

    }
    transparent_crc(p_1564->g_148, "p_1564->g_148", print_hash_value);
    transparent_crc(p_1564->g_158, "p_1564->g_158", print_hash_value);
    transparent_crc(p_1564->g_177, "p_1564->g_177", print_hash_value);
    transparent_crc(p_1564->g_182.f0, "p_1564->g_182.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1564->g_215[i], "p_1564->g_215[i]", print_hash_value);

    }
    transparent_crc(p_1564->g_220, "p_1564->g_220", print_hash_value);
    transparent_crc(p_1564->g_229, "p_1564->g_229", print_hash_value);
    transparent_crc(p_1564->g_235.f0, "p_1564->g_235.f0", print_hash_value);
    transparent_crc(p_1564->g_261, "p_1564->g_261", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1564->g_268[i][j].f0, "p_1564->g_268[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1564->g_280, "p_1564->g_280", print_hash_value);
    transparent_crc(p_1564->g_301, "p_1564->g_301", print_hash_value);
    transparent_crc(p_1564->g_316.f0, "p_1564->g_316.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1564->g_370[i][j][k], "p_1564->g_370[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1564->g_372[i], "p_1564->g_372[i]", print_hash_value);

    }
    transparent_crc(p_1564->g_417, "p_1564->g_417", print_hash_value);
    transparent_crc(p_1564->g_512, "p_1564->g_512", print_hash_value);
    transparent_crc(p_1564->g_569, "p_1564->g_569", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1564->g_614[i][j][k].f0, "p_1564->g_614[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1564->g_615.f0, "p_1564->g_615.f0", print_hash_value);
    transparent_crc(p_1564->g_616.f0, "p_1564->g_616.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1564->g_617[i][j].f0, "p_1564->g_617[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1564->g_637, "p_1564->g_637", print_hash_value);
    transparent_crc(p_1564->g_642, "p_1564->g_642", print_hash_value);
    transparent_crc(p_1564->g_667.f2, "p_1564->g_667.f2", print_hash_value);
    transparent_crc(p_1564->g_720, "p_1564->g_720", print_hash_value);
    transparent_crc(p_1564->g_736.f0, "p_1564->g_736.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1564->g_816[i][j].f0, "p_1564->g_816[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1564->g_827, "p_1564->g_827", print_hash_value);
    transparent_crc(p_1564->g_831.f0, "p_1564->g_831.f0", print_hash_value);
    transparent_crc(p_1564->g_925, "p_1564->g_925", print_hash_value);
    transparent_crc(p_1564->g_941.f0, "p_1564->g_941.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1564->g_999[i], "p_1564->g_999[i]", print_hash_value);

    }
    transparent_crc(p_1564->g_1104.f0, "p_1564->g_1104.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1564->g_1146[i][j][k].f0, "p_1564->g_1146[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1564->g_1178, "p_1564->g_1178", print_hash_value);
    transparent_crc(p_1564->g_1193, "p_1564->g_1193", print_hash_value);
    transparent_crc(p_1564->g_1196, "p_1564->g_1196", print_hash_value);
    transparent_crc(p_1564->g_1226.f0, "p_1564->g_1226.f0", print_hash_value);
    transparent_crc(p_1564->g_1302, "p_1564->g_1302", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1564->g_1313[i].f0, "p_1564->g_1313[i].f0", print_hash_value);

    }
    transparent_crc(p_1564->g_1326.f0, "p_1564->g_1326.f0", print_hash_value);
    transparent_crc(p_1564->g_1383.f0, "p_1564->g_1383.f0", print_hash_value);
    transparent_crc(p_1564->g_1446.f0, "p_1564->g_1446.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1564->g_1486[i], "p_1564->g_1486[i]", print_hash_value);

    }
    transparent_crc(p_1564->g_1518, "p_1564->g_1518", print_hash_value);
    transparent_crc(p_1564->g_1521.f0, "p_1564->g_1521.f0", print_hash_value);
    transparent_crc(p_1564->g_1541.f0, "p_1564->g_1541.f0", print_hash_value);
    transparent_crc(p_1564->g_1555.f0, "p_1564->g_1555.f0", print_hash_value);
    transparent_crc(p_1564->g_1557, "p_1564->g_1557", print_hash_value);
    transparent_crc(p_1564->g_1559, "p_1564->g_1559", print_hash_value);
    transparent_crc(p_1564->g_1563.f0, "p_1564->g_1563.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
