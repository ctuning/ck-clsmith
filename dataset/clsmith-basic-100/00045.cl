// ---fake_divergence -g 2,1,3987 -l 2,1,9
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


// Seed: 45

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int64_t  f1;
   int32_t  f2;
   uint32_t  f3;
   int32_t  f4;
   uint64_t  f5;
   uint64_t  f6;
};

struct S1 {
   volatile int8_t  f0;
   int8_t  f1;
};

struct S2 {
   volatile uint64_t  f0;
   int64_t  f1;
   uint8_t  f2;
   volatile uint16_t  f3;
   uint8_t  f4;
   int32_t  f5;
};

struct S3 {
   uint64_t  f0;
   uint16_t  f1;
   volatile int64_t  f2;
   uint16_t  f3;
   uint64_t  f4;
   int64_t  f5;
};

struct S4 {
    int32_t g_3;
    int32_t g_6;
    int64_t g_50;
    int64_t g_65;
    int64_t *g_64;
    int16_t g_75[1][3][3];
    uint16_t g_92;
    int32_t *g_98[2][8];
    int32_t ** volatile g_97;
    uint16_t g_126;
    uint32_t g_133;
    int16_t g_140[9][8];
    int16_t g_155;
    int32_t g_157;
    int32_t * volatile g_156;
    volatile struct S1 g_165;
    volatile struct S3 g_172;
    uint16_t g_180;
    uint64_t g_191;
    uint64_t *g_190;
    uint64_t ** volatile g_189;
    int32_t ** volatile g_193[3];
    int32_t ** volatile g_194;
    int32_t * volatile g_196;
    int16_t *g_221[1];
    int16_t *g_222;
    volatile struct S2 g_233[4];
    uint64_t g_244[5];
    int8_t g_247;
    uint8_t g_259;
    volatile struct S2 g_265;
    struct S2 g_266;
    struct S0 g_318;
    volatile uint16_t * volatile g_327;
    volatile uint16_t * volatile *g_326[1][7];
    uint16_t *g_332;
    struct S1 g_340;
    struct S1 *g_339;
    struct S1 *g_342;
    int32_t ** volatile g_383;
    int8_t g_404;
    volatile uint16_t g_417[2][7];
    int32_t g_434[1][4];
    int32_t * volatile g_433[8][3][6];
    int16_t *** volatile g_437;
    volatile uint64_t ** volatile g_479;
    volatile uint64_t ** volatile *g_478[6];
    struct S3 g_502;
    struct S2 * volatile g_529;
    struct S2 * volatile *g_528;
    volatile struct S3 g_542;
    volatile struct S1 g_546;
    volatile struct S3 g_547;
    volatile int64_t ** volatile * volatile g_548;
    volatile struct S3 g_551;
    struct S2 g_577;
    struct S2 g_647;
    volatile int64_t g_684;
    uint8_t g_698;
    struct S3 g_703;
    uint64_t g_719[8];
    uint8_t g_728;
    volatile struct S3 g_735;
    volatile struct S3 * volatile g_736;
    volatile uint32_t g_747;
    struct S2 g_752;
    struct S0 *g_770;
    struct S0 ** volatile g_769[10][1][5];
    struct S0 ** volatile g_771[1][2];
    struct S0 ** volatile g_772;
    volatile int16_t g_791;
    volatile struct S2 *g_801;
    volatile struct S2 **g_800[3][10];
    int32_t ** volatile g_803[5][4];
    int32_t ** volatile g_804[3][2][2];
    int32_t ** volatile g_805[1][4];
    uint64_t *g_821;
    int32_t ** volatile g_838;
    volatile struct S2 g_859[1];
    struct S2 g_867;
    struct S2 g_868;
    volatile uint8_t g_878;
    volatile uint32_t ** volatile g_898;
    volatile uint32_t ** volatile * volatile g_899;
    struct S3 g_904;
    struct S3 * volatile g_905;
    int64_t g_906;
    uint32_t *g_917[5];
    uint32_t **g_916;
    uint32_t ***g_915[8];
    int32_t * volatile g_922;
    int64_t **g_957;
    int64_t ***g_956;
    int64_t ****g_955;
    int32_t *** volatile g_975;
    struct S3 g_980;
    int32_t * volatile g_1008;
    int16_t g_1034[3];
    int32_t ** volatile g_1061;
    int32_t * volatile g_1062;
    int32_t ** volatile g_1118;
    struct S3 g_1203;
    struct S3 * volatile g_1204;
    volatile struct S1 *g_1206;
    volatile struct S1 ** volatile g_1205;
    int32_t ** volatile g_1215;
    struct S1 g_1216;
    struct S3 g_1252[7];
    struct S0 g_1266;
    volatile struct S1 g_1306;
    volatile int64_t *** volatile ** volatile * volatile g_1313;
    uint32_t g_1365;
    int32_t * volatile g_1366;
    int32_t ** volatile g_1390;
    int32_t ** volatile g_1392[2];
    int32_t ** volatile g_1393[5];
    volatile struct S3 g_1420;
    int32_t ** volatile g_1428;
    int16_t **g_1476;
    int32_t ** volatile g_1477;
    uint64_t **g_1526;
    volatile struct S1 g_1536;
    struct S1 g_1540;
    volatile struct S1 g_1557;
    int32_t ** volatile g_1562;
    int32_t g_1605;
    int32_t * volatile g_1612;
    int32_t * volatile g_1613;
    int32_t * volatile g_1626;
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
int16_t  func_1(struct S4 * p_1678);
uint16_t  func_20(uint64_t  p_21, struct S0  p_22, int16_t  p_23, int16_t  p_24, uint8_t  p_25, struct S4 * p_1678);
uint64_t  func_26(struct S0  p_27, uint16_t  p_28, int64_t  p_29, struct S4 * p_1678);
struct S0  func_30(int16_t  p_31, struct S0  p_32, uint32_t  p_33, struct S4 * p_1678);
int8_t  func_38(uint64_t  p_39, struct S4 * p_1678);
int8_t  func_44(int64_t  p_45, uint64_t  p_46, struct S4 * p_1678);
int8_t  func_58(int64_t * p_59, int16_t  p_60, uint32_t  p_61, uint16_t  p_62, int8_t  p_63, struct S4 * p_1678);
int64_t * func_68(uint64_t  p_69, int32_t  p_70, uint64_t  p_71, int64_t * p_72, uint64_t  p_73, struct S4 * p_1678);
uint64_t  func_86(int8_t  p_87, struct S4 * p_1678);
int32_t * func_108(int64_t ** p_109, struct S0  p_110, uint64_t  p_111, uint8_t  p_112, uint16_t  p_113, struct S4 * p_1678);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1678->g_3 p_1678->g_6 p_1678->g_546.f1 p_1678->g_64 p_1678->g_65 p_1678->g_332 p_1678->g_126 p_1678->g_222 p_1678->g_140 p_1678->g_259 p_1678->g_955 p_1678->g_956 p_1678->g_957 p_1678->g_266.f1 p_1678->g_1252.f2 p_1678->g_698 p_1678->g_1118
 * writes: p_1678->g_3 p_1678->g_6 p_1678->g_259 p_1678->g_957 p_1678->g_98
 */
int16_t  func_1(struct S4 * p_1678)
{ /* block id: 4 */
    uint64_t l_2[7][1][8] = {{{0UL,18446744073709551606UL,0x4157736D0C11E043L,0x14F4E79753589FE5L,0xE85A7B051AF7F3E7L,0x14F4E79753589FE5L,0x4157736D0C11E043L,18446744073709551606UL}},{{0UL,18446744073709551606UL,0x4157736D0C11E043L,0x14F4E79753589FE5L,0xE85A7B051AF7F3E7L,0x14F4E79753589FE5L,0x4157736D0C11E043L,18446744073709551606UL}},{{0UL,18446744073709551606UL,0x4157736D0C11E043L,0x14F4E79753589FE5L,0xE85A7B051AF7F3E7L,0x14F4E79753589FE5L,0x4157736D0C11E043L,18446744073709551606UL}},{{0UL,18446744073709551606UL,0x4157736D0C11E043L,0x14F4E79753589FE5L,0xE85A7B051AF7F3E7L,0x14F4E79753589FE5L,0x4157736D0C11E043L,18446744073709551606UL}},{{0UL,18446744073709551606UL,0x4157736D0C11E043L,0x14F4E79753589FE5L,0xE85A7B051AF7F3E7L,0x14F4E79753589FE5L,0x4157736D0C11E043L,18446744073709551606UL}},{{0UL,18446744073709551606UL,0x4157736D0C11E043L,0x14F4E79753589FE5L,0xE85A7B051AF7F3E7L,0x14F4E79753589FE5L,0x4157736D0C11E043L,18446744073709551606UL}},{{0UL,18446744073709551606UL,0x4157736D0C11E043L,0x14F4E79753589FE5L,0xE85A7B051AF7F3E7L,0x14F4E79753589FE5L,0x4157736D0C11E043L,18446744073709551606UL}}};
    uint64_t l_55[6][7] = {{18446744073709551607UL,0xABA4A7E2F045C746L,1UL,1UL,0x5C487E88E1234CD2L,0x5C487E88E1234CD2L,1UL},{18446744073709551607UL,0xABA4A7E2F045C746L,1UL,1UL,0x5C487E88E1234CD2L,0x5C487E88E1234CD2L,1UL},{18446744073709551607UL,0xABA4A7E2F045C746L,1UL,1UL,0x5C487E88E1234CD2L,0x5C487E88E1234CD2L,1UL},{18446744073709551607UL,0xABA4A7E2F045C746L,1UL,1UL,0x5C487E88E1234CD2L,0x5C487E88E1234CD2L,1UL},{18446744073709551607UL,0xABA4A7E2F045C746L,1UL,1UL,0x5C487E88E1234CD2L,0x5C487E88E1234CD2L,1UL},{18446744073709551607UL,0xABA4A7E2F045C746L,1UL,1UL,0x5C487E88E1234CD2L,0x5C487E88E1234CD2L,1UL}};
    struct S0 l_1396 = {0L,0x097BEF76B2D79B3CL,1L,0x8C23F92AL,0x013C2C1FL,0x974950AEDB9153BDL,18446744073709551615UL};
    int64_t ****l_1637[9] = {&p_1678->g_956,&p_1678->g_956,&p_1678->g_956,&p_1678->g_956,&p_1678->g_956,&p_1678->g_956,&p_1678->g_956,&p_1678->g_956,&p_1678->g_956};
    uint32_t l_1662 = 0xC2E3D4A9L;
    uint8_t *l_1669 = &p_1678->g_259;
    int64_t **l_1672 = (void*)0;
    int32_t **l_1673 = (void*)0;
    int32_t **l_1674 = (void*)0;
    int32_t **l_1675 = (void*)0;
    int32_t **l_1676[1][8] = {{(void*)0,&p_1678->g_98[1][4],(void*)0,(void*)0,&p_1678->g_98[1][4],(void*)0,(void*)0,&p_1678->g_98[1][4]}};
    uint64_t l_1677[9][3] = {{18446744073709551612UL,1UL,0x99CA764965E8A440L},{18446744073709551612UL,1UL,0x99CA764965E8A440L},{18446744073709551612UL,1UL,0x99CA764965E8A440L},{18446744073709551612UL,1UL,0x99CA764965E8A440L},{18446744073709551612UL,1UL,0x99CA764965E8A440L},{18446744073709551612UL,1UL,0x99CA764965E8A440L},{18446744073709551612UL,1UL,0x99CA764965E8A440L},{18446744073709551612UL,1UL,0x99CA764965E8A440L},{18446744073709551612UL,1UL,0x99CA764965E8A440L}};
    int i, j, k;
    for (p_1678->g_3 = 0; (p_1678->g_3 >= 0); p_1678->g_3 -= 1)
    { /* block id: 7 */
        return p_1678->g_3;
    }
    for (p_1678->g_3 = 0; (p_1678->g_3 < (-6)); p_1678->g_3 = safe_sub_func_int64_t_s_s(p_1678->g_3, 4))
    { /* block id: 12 */
        int32_t l_7[10][7][3] = {{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}},{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}},{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}},{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}},{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}},{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}},{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}},{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}},{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}},{{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L},{0x05BC9807L,0x05BC9807L,0x05BC9807L}}};
        uint32_t l_1624 = 0x06974D82L;
        int32_t l_1625 = (-1L);
        struct S0 l_1631[3][3][8] = {{{{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x2E96DC68L,-1L,1L,0xBADF6968L,0x56599A50L,1UL,0x4092CE275991FC22L},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x6ABB3E6AL,0x53BE29DAAEC30626L,0x2AC0DF8BL,0x3DAACA8AL,0x2953C3AEL,0UL,0UL}},{{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x2E96DC68L,-1L,1L,0xBADF6968L,0x56599A50L,1UL,0x4092CE275991FC22L},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x6ABB3E6AL,0x53BE29DAAEC30626L,0x2AC0DF8BL,0x3DAACA8AL,0x2953C3AEL,0UL,0UL}},{{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x2E96DC68L,-1L,1L,0xBADF6968L,0x56599A50L,1UL,0x4092CE275991FC22L},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x6ABB3E6AL,0x53BE29DAAEC30626L,0x2AC0DF8BL,0x3DAACA8AL,0x2953C3AEL,0UL,0UL}}},{{{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x2E96DC68L,-1L,1L,0xBADF6968L,0x56599A50L,1UL,0x4092CE275991FC22L},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x6ABB3E6AL,0x53BE29DAAEC30626L,0x2AC0DF8BL,0x3DAACA8AL,0x2953C3AEL,0UL,0UL}},{{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x2E96DC68L,-1L,1L,0xBADF6968L,0x56599A50L,1UL,0x4092CE275991FC22L},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x6ABB3E6AL,0x53BE29DAAEC30626L,0x2AC0DF8BL,0x3DAACA8AL,0x2953C3AEL,0UL,0UL}},{{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x2E96DC68L,-1L,1L,0xBADF6968L,0x56599A50L,1UL,0x4092CE275991FC22L},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x6ABB3E6AL,0x53BE29DAAEC30626L,0x2AC0DF8BL,0x3DAACA8AL,0x2953C3AEL,0UL,0UL}}},{{{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x2E96DC68L,-1L,1L,0xBADF6968L,0x56599A50L,1UL,0x4092CE275991FC22L},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x6ABB3E6AL,0x53BE29DAAEC30626L,0x2AC0DF8BL,0x3DAACA8AL,0x2953C3AEL,0UL,0UL}},{{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x2E96DC68L,-1L,1L,0xBADF6968L,0x56599A50L,1UL,0x4092CE275991FC22L},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x6ABB3E6AL,0x53BE29DAAEC30626L,0x2AC0DF8BL,0x3DAACA8AL,0x2953C3AEL,0UL,0UL}},{{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x2E96DC68L,-1L,1L,0xBADF6968L,0x56599A50L,1UL,0x4092CE275991FC22L},{0L,0x7784C266863E41A7L,-1L,0x5E8128C2L,-1L,6UL,18446744073709551607UL},{0x7E33C04BL,0x6658E48FED42C185L,0x01CD2028L,4294967295UL,0x2FC83918L,1UL,4UL},{0x5ECF8BD7L,0L,1L,0x7D98C00CL,-3L,6UL,0x151F1203DB6A5591L},{0x6ABB3E6AL,0x53BE29DAAEC30626L,0x2AC0DF8BL,0x3DAACA8AL,0x2953C3AEL,0UL,0UL}}}};
        int64_t *****l_1645[2][3][5] = {{{(void*)0,&l_1637[4],&l_1637[5],&l_1637[5],&l_1637[5]},{(void*)0,&l_1637[4],&l_1637[5],&l_1637[5],&l_1637[5]},{(void*)0,&l_1637[4],&l_1637[5],&l_1637[5],&l_1637[5]}},{{(void*)0,&l_1637[4],&l_1637[5],&l_1637[5],&l_1637[5]},{(void*)0,&l_1637[4],&l_1637[5],&l_1637[5],&l_1637[5]},{(void*)0,&l_1637[4],&l_1637[5],&l_1637[5],&l_1637[5]}}};
        int i, j, k;
        for (p_1678->g_6 = 0; (p_1678->g_6 >= 0); p_1678->g_6 -= 1)
        { /* block id: 15 */
            int64_t *l_47 = (void*)0;
            int64_t *l_48 = (void*)0;
            int64_t *l_49 = &p_1678->g_50;
            uint64_t *l_74[7] = {&l_2[4][0][3],&l_2[4][0][3],&l_2[4][0][3],&l_2[4][0][3],&l_2[4][0][3],&l_2[4][0][3],&l_2[4][0][3]};
            int32_t l_76[10];
            int64_t **l_197 = &l_47;
            int64_t **l_198 = &l_48;
            int64_t **l_199 = (void*)0;
            int64_t *l_201[3];
            int64_t **l_200 = &l_201[1];
            int8_t *l_246 = &p_1678->g_247;
            int16_t *l_1265 = &p_1678->g_1034[1];
            struct S0 *l_1270 = &p_1678->g_318;
            uint8_t *l_1611 = &p_1678->g_752.f4;
            int64_t *****l_1623 = &p_1678->g_955;
            uint64_t *l_1634 = (void*)0;
            int32_t l_1638 = 0L;
            int32_t l_1653 = (-7L);
            int i;
            for (i = 0; i < 10; i++)
                l_76[i] = (-1L);
            for (i = 0; i < 3; i++)
                l_201[i] = (void*)0;
            (1 + 1);
        }
    }
    (*p_1678->g_1118) = (p_1678->g_546.f1 , (((safe_mul_func_int8_t_s_s(((*p_1678->g_64) , (((((safe_mod_func_uint16_t_u_u((safe_add_func_uint64_t_u_u((safe_mod_func_int32_t_s_s((((l_1662 | (safe_add_func_uint16_t_u_u(l_1396.f0, ((safe_add_func_uint16_t_u_u((*p_1678->g_332), (safe_lshift_func_int16_t_s_s((*p_1678->g_222), 3)))) > ((*l_1669)--))))) , (((**p_1678->g_955) = (**p_1678->g_955)) != l_1672)) >= 18446744073709551607UL), l_55[1][0])), l_55[1][0])), l_1396.f2)) || 0x4E49L) >= p_1678->g_266.f1) == p_1678->g_1252[3].f2) || (*p_1678->g_64))), p_1678->g_698)) | (-3L)) , (void*)0));
    return l_1677[0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1678->g_332 p_1678->g_126 p_1678->g_64 p_1678->g_65 p_1678->g_233.f3 p_1678->g_222 p_1678->g_140 p_1678->g_340.f1 p_1678->g_1366 p_1678->g_157 p_1678->g_838 p_1678->g_1420 p_1678->g_647.f5 p_1678->g_1428 p_1678->g_259 p_1678->g_1203.f0 p_1678->g_1477 p_1678->g_190 p_1678->g_191 p_1678->g_551.f5 p_1678->g_318.f1 p_1678->g_916 p_1678->g_917 p_1678->g_133 p_1678->g_1216.f1 p_1678->g_703.f4 p_1678->g_266.f4 p_1678->g_1476 p_1678->g_577.f2 p_1678->g_1536 p_1678->g_703.f5 p_1678->g_698 p_1678->g_1540 p_1678->g_1206 p_1678->g_1557 p_1678->g_957 p_1678->g_915 p_1678->g_1526 p_1678->g_1562 p_1678->g_955 p_1678->g_956 p_1678->g_339 p_1678->g_340 p_1678->g_156 p_1678->g_868.f2
 * writes: p_1678->g_502.f1 p_1678->g_340.f1 p_1678->g_1266.f0 p_1678->g_1266.f2 p_1678->g_98 p_1678->g_342 p_1678->g_547 p_1678->g_647.f5 p_1678->g_259 p_1678->g_1203.f0 p_1678->g_133 p_1678->g_266.f4 p_1678->g_1526 p_1678->g_247 p_1678->g_404 p_1678->g_126 p_1678->g_577.f2 p_1678->g_698 p_1678->g_165 p_1678->g_546 p_1678->g_65 p_1678->g_980.f3 p_1678->g_191 p_1678->g_140 p_1678->g_157 p_1678->g_868.f2
 */
uint16_t  func_20(uint64_t  p_21, struct S0  p_22, int16_t  p_23, int16_t  p_24, uint8_t  p_25, struct S4 * p_1678)
{ /* block id: 697 */
    uint16_t *l_1403[9][3][8] = {{{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3}},{{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3}},{{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3}},{{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3}},{{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3}},{{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3}},{{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3}},{{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3}},{{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3},{&p_1678->g_126,&p_1678->g_92,&p_1678->g_980.f3,&p_1678->g_1203.f3,&p_1678->g_980.f3,(void*)0,&p_1678->g_126,&p_1678->g_1252[3].f3}}};
    int32_t l_1408 = 0x538B4FF6L;
    int32_t l_1436 = (-3L);
    int32_t l_1441 = 0x2036F907L;
    int32_t l_1443 = 0x19D76431L;
    int32_t l_1446 = 1L;
    int32_t l_1450 = (-1L);
    int32_t l_1454 = 0x303A94D8L;
    int32_t l_1456 = 0x5341F148L;
    int32_t l_1457 = (-7L);
    int32_t l_1463 = 1L;
    int16_t **l_1474 = &p_1678->g_222;
    int32_t l_1484 = 3L;
    int32_t l_1485 = 1L;
    int32_t l_1486 = 0x54417CE4L;
    int32_t l_1487[6];
    uint16_t l_1489 = 0x3F81L;
    uint64_t l_1500 = 6UL;
    struct S2 **l_1514 = (void*)0;
    uint64_t **l_1523 = &p_1678->g_190;
    uint32_t ****l_1530 = (void*)0;
    int64_t l_1590 = 0x543E91A87877BCC6L;
    int32_t *l_1609 = &l_1436;
    int32_t *l_1610 = &l_1485;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1487[i] = (-6L);
    if ((l_1408 = (safe_sub_func_int8_t_s_s((((safe_lshift_func_uint16_t_u_u((*p_1678->g_332), 6)) < (safe_add_func_uint32_t_u_u(((p_1678->g_502.f1 = p_21) , p_22.f0), (safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u(((*p_1678->g_64) > l_1408), ((safe_rshift_func_int8_t_s_s(l_1408, p_1678->g_233[3].f3)) ^ (safe_div_func_int16_t_s_s((0L && (((0xFEFDL & (*p_1678->g_222)) != GROUP_DIVERGE(1, 1)) != 0xE7ADL)), p_23))))), 1UL))))) , p_22.f2), 0L))))
    { /* block id: 700 */
        int32_t *l_1417 = &l_1408;
        struct S1 *l_1418[10] = {&p_1678->g_340,&p_1678->g_340,&p_1678->g_340,&p_1678->g_340,&p_1678->g_340,&p_1678->g_340,&p_1678->g_340,&p_1678->g_340,&p_1678->g_340,&p_1678->g_340};
        int32_t l_1445 = 0x42E5005AL;
        int32_t l_1448 = 0x48F5B621L;
        int32_t l_1451 = 0L;
        int32_t l_1453 = (-6L);
        int32_t l_1461 = 1L;
        int32_t l_1464 = (-10L);
        int64_t **l_1468[5][2] = {{&p_1678->g_64,&p_1678->g_64},{&p_1678->g_64,&p_1678->g_64},{&p_1678->g_64,&p_1678->g_64},{&p_1678->g_64,&p_1678->g_64},{&p_1678->g_64,&p_1678->g_64}};
        struct S0 l_1469 = {0x05C7FA0EL,-1L,0x063A3869L,0x8589035DL,0x6793573EL,18446744073709551615UL,7UL};
        int16_t **l_1475[9][9] = {{&p_1678->g_221[0],&p_1678->g_221[0],&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_221[0],&p_1678->g_221[0]},{&p_1678->g_221[0],&p_1678->g_221[0],&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_221[0],&p_1678->g_221[0]},{&p_1678->g_221[0],&p_1678->g_221[0],&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_221[0],&p_1678->g_221[0]},{&p_1678->g_221[0],&p_1678->g_221[0],&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_221[0],&p_1678->g_221[0]},{&p_1678->g_221[0],&p_1678->g_221[0],&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_221[0],&p_1678->g_221[0]},{&p_1678->g_221[0],&p_1678->g_221[0],&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_221[0],&p_1678->g_221[0]},{&p_1678->g_221[0],&p_1678->g_221[0],&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_221[0],&p_1678->g_221[0]},{&p_1678->g_221[0],&p_1678->g_221[0],&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_221[0],&p_1678->g_221[0]},{&p_1678->g_221[0],&p_1678->g_221[0],&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_222,&p_1678->g_221[0],&p_1678->g_221[0]}};
        int i, j;
        for (p_1678->g_340.f1 = 0; (p_1678->g_340.f1 == (-10)); --p_1678->g_340.f1)
        { /* block id: 703 */
            uint64_t l_1424 = 1UL;
            int32_t l_1447 = 0x19118F03L;
            int32_t l_1452 = 0x4A2B9D72L;
            int32_t l_1458 = 0L;
            int32_t l_1462 = 4L;
            if ((*p_1678->g_1366))
                break;
            for (p_1678->g_1266.f0 = 0; (p_1678->g_1266.f0 >= 0); p_1678->g_1266.f0 -= 1)
            { /* block id: 707 */
                volatile struct S3 *l_1421 = &p_1678->g_547;
                int32_t l_1439[2];
                uint64_t l_1465[5] = {0x4502C730A16FDBC4L,0x4502C730A16FDBC4L,0x4502C730A16FDBC4L,0x4502C730A16FDBC4L,0x4502C730A16FDBC4L};
                int i;
                for (i = 0; i < 2; i++)
                    l_1439[i] = 0x646666EAL;
                for (p_1678->g_1266.f2 = 0; (p_1678->g_1266.f2 >= 0); p_1678->g_1266.f2 -= 1)
                { /* block id: 710 */
                    struct S1 **l_1419 = &p_1678->g_342;
                    int i, j, k;
                    (*p_1678->g_838) = l_1417;
                    (*l_1419) = l_1418[6];
                    if (p_25)
                        continue;
                }
                (*l_1421) = p_1678->g_1420;
                for (p_1678->g_647.f5 = 0; (p_1678->g_647.f5 >= 0); p_1678->g_647.f5 -= 1)
                { /* block id: 718 */
                    int32_t *l_1427 = &p_1678->g_3;
                    for (p_22.f1 = 0; (p_22.f1 >= 0); p_22.f1 -= 1)
                    { /* block id: 721 */
                        int32_t *l_1422 = (void*)0;
                        int32_t *l_1423[2][6] = {{&l_1408,&l_1408,&l_1408,&l_1408,&l_1408,&l_1408},{&l_1408,&l_1408,&l_1408,&l_1408,&l_1408,&l_1408}};
                        int i, j;
                        (*l_1417) = p_22.f4;
                        l_1424++;
                        (*p_1678->g_1428) = l_1427;
                    }
                }
                for (p_1678->g_259 = 0; (p_1678->g_259 <= 0); p_1678->g_259 += 1)
                { /* block id: 729 */
                    int8_t l_1440[2];
                    int32_t l_1442 = (-1L);
                    int32_t l_1444 = 0x02389C65L;
                    int32_t l_1449 = 0L;
                    int32_t l_1455 = (-10L);
                    int32_t l_1459 = 5L;
                    int64_t l_1460 = 0x03B2D2A73FDE6C8BL;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1440[i] = 0x33L;
                    for (p_1678->g_1203.f0 = 0; (p_1678->g_1203.f0 <= 0); p_1678->g_1203.f0 += 1)
                    { /* block id: 732 */
                        int32_t *l_1429 = &p_1678->g_434[0][1];
                        int32_t *l_1430 = &p_1678->g_157;
                        int32_t *l_1431 = &l_1408;
                        int32_t *l_1432 = (void*)0;
                        int32_t l_1433 = 0x0EB06EB4L;
                        int32_t *l_1434 = &p_1678->g_157;
                        int32_t *l_1435 = (void*)0;
                        int32_t *l_1437 = &p_1678->g_434[0][0];
                        int32_t *l_1438[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1438[i] = &l_1433;
                        (*l_1417) = p_22.f1;
                        l_1465[0]--;
                    }
                }
            }
        }
        (*p_1678->g_1477) = &l_1448;
        l_1454 |= (l_1463 != (*p_1678->g_190));
    }
    else
    { /* block id: 743 */
        int32_t *l_1478 = &l_1463;
        int32_t *l_1479 = &l_1456;
        int32_t *l_1480 = (void*)0;
        int32_t *l_1481 = (void*)0;
        int32_t *l_1482 = &l_1450;
        int32_t *l_1483[2][9] = {{&l_1441,&l_1441,&p_1678->g_434[0][0],&l_1443,&l_1436,&l_1443,&p_1678->g_434[0][0],&l_1441,&l_1441},{&l_1441,&l_1441,&p_1678->g_434[0][0],&l_1443,&l_1436,&l_1443,&p_1678->g_434[0][0],&l_1441,&l_1441}};
        int16_t l_1488[4][9][5] = {{{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L}},{{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L}},{{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L}},{{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L},{0x2544L,7L,0x6616L,0x490CL,0x6616L}}};
        int64_t ***l_1518[5] = {&p_1678->g_957,&p_1678->g_957,&p_1678->g_957,&p_1678->g_957,&p_1678->g_957};
        uint64_t **l_1525 = &p_1678->g_190;
        uint64_t ***l_1524[3];
        int8_t *l_1527[10];
        uint32_t ****l_1531 = &p_1678->g_915[4];
        int8_t l_1594 = (-2L);
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1524[i] = &l_1525;
        for (i = 0; i < 10; i++)
            l_1527[i] = &p_1678->g_247;
        l_1489++;
        for (p_22.f1 = (-20); (p_22.f1 <= (-5)); ++p_22.f1)
        { /* block id: 747 */
            int32_t l_1494 = (-1L);
            int32_t l_1495 = 0x3EC35942L;
            int32_t l_1496 = (-1L);
            int32_t l_1497 = (-1L);
            int32_t l_1498 = (-10L);
            int32_t l_1499 = 4L;
            int16_t ***l_1509 = &l_1474;
            uint8_t *l_1515[3];
            int i;
            for (i = 0; i < 3; i++)
                l_1515[i] = &p_1678->g_728;
            ++l_1500;
            (*l_1478) &= (((safe_mul_func_uint8_t_u_u((p_1678->g_266.f4 ^= ((((safe_rshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s((p_1678->g_551.f5 ^ (-1L)), (((void*)0 != l_1509) , (((**p_1678->g_916) ^= (safe_mod_func_int8_t_s_s(((l_1514 == (void*)0) | ((*p_1678->g_332) >= (*p_1678->g_332))), p_1678->g_318.f1))) != 8UL)))), p_1678->g_1216.f1)) > p_1678->g_703.f4) >= 9UL) != 65532UL)), (-9L))) > p_22.f5) < p_22.f2);
        }
        if ((safe_sub_func_uint16_t_u_u(p_25, (((void*)0 == l_1518[2]) != (safe_add_func_uint16_t_u_u(p_22.f4, ((safe_mul_func_uint16_t_u_u(((*p_1678->g_332) |= (((p_1678->g_247 = (l_1523 != (p_1678->g_1526 = &p_1678->g_190))) ^ (p_1678->g_404 = (safe_sub_func_int8_t_s_s(l_1487[0], p_22.f4)))) < ((((l_1530 = &p_1678->g_915[5]) == l_1531) == l_1485) ^ p_24))), (**p_1678->g_1476))) != 0x2FL)))))))
        { /* block id: 758 */
            uint32_t l_1560 = 0x51382588L;
            int32_t l_1565[3][6][9] = {{{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL}},{{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL}},{{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL},{0x6FE65DAAL,0x6FE65DAAL,0L,(-4L),0x23E3EC91L,(-4L),0L,0x6FE65DAAL,0x6FE65DAAL}}};
            uint8_t l_1569[4];
            int64_t ****l_1584[10][1][3] = {{{&l_1518[4],&l_1518[3],&l_1518[2]}},{{&l_1518[4],&l_1518[3],&l_1518[2]}},{{&l_1518[4],&l_1518[3],&l_1518[2]}},{{&l_1518[4],&l_1518[3],&l_1518[2]}},{{&l_1518[4],&l_1518[3],&l_1518[2]}},{{&l_1518[4],&l_1518[3],&l_1518[2]}},{{&l_1518[4],&l_1518[3],&l_1518[2]}},{{&l_1518[4],&l_1518[3],&l_1518[2]}},{{&l_1518[4],&l_1518[3],&l_1518[2]}},{{&l_1518[4],&l_1518[3],&l_1518[2]}}};
            int32_t l_1585 = 9L;
            int64_t l_1591 = 0x016F5D58B341E2D0L;
            int32_t l_1593 = 0L;
            int8_t l_1604 = 0x2AL;
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_1569[i] = 0x0AL;
            for (p_1678->g_577.f2 = 0; (p_1678->g_577.f2 <= 4); p_1678->g_577.f2 += 1)
            { /* block id: 761 */
                int32_t **l_1534 = &p_1678->g_98[1][4];
                int32_t **l_1535 = &l_1479;
                (*l_1478) = ((FAKE_DIVERGE(p_1678->local_0_offset, get_local_id(0), 10) , p_22.f5) , (safe_sub_func_uint8_t_u_u((p_22.f3 & l_1489), (((((*l_1535) = l_1483[1][0]) == (p_1678->g_1536 , &l_1436)) , ((void*)0 == &p_1678->g_898)) < (safe_add_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (0x43L <= p_1678->g_703.f5)))))));
                for (l_1446 = 1; (l_1446 <= 4); l_1446 += 1)
                { /* block id: 766 */
                    for (p_1678->g_698 = 1; (p_1678->g_698 <= 4); p_1678->g_698 += 1)
                    { /* block id: 769 */
                        int32_t *l_1539 = &l_1443;
                        int i;
                        l_1539 = (void*)0;
                    }
                    (*p_1678->g_1206) = p_1678->g_1540;
                    return p_23;
                }
            }
            if ((safe_div_func_int64_t_s_s((safe_div_func_int8_t_s_s(0x41L, (safe_unary_minus_func_uint32_t_u(((safe_sub_func_uint16_t_u_u((p_21 || p_24), ((~(l_1436 &= (l_1441 = 0x2AL))) && (~(p_22.f2 , l_1436))))) || (((safe_rshift_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((((****l_1530) = (safe_add_func_int64_t_s_s(((**p_1678->g_957) = (safe_unary_minus_func_uint64_t_u((safe_div_func_int64_t_s_s(((p_1678->g_1557 , ((safe_add_func_int64_t_s_s(((void*)0 == &l_1479), (*p_1678->g_64))) || 0x57F21C16C05528C0L)) && l_1560), 0x4D948C332F1C6E83L))))), l_1500))) != 0xC4A96A51L), (*p_1678->g_332))), 4)) , 0x041869EF97E044A6L) < l_1560)))))), (**p_1678->g_1526))))
            { /* block id: 780 */
                int32_t *l_1561 = &l_1485;
                int32_t l_1566 = 0x1ECB28F6L;
                int32_t l_1567 = 0x1019B836L;
                int32_t l_1568 = 0L;
                for (l_1408 = 0; (l_1408 <= 3); l_1408 += 1)
                { /* block id: 783 */
                    (*p_1678->g_1562) = l_1561;
                    for (p_1678->g_980.f3 = 0; (p_1678->g_980.f3 <= 3); p_1678->g_980.f3 += 1)
                    { /* block id: 787 */
                        int32_t *l_1563 = &l_1456;
                        int32_t **l_1564 = &l_1483[1][0];
                        (*l_1564) = l_1563;
                    }
                }
                (*l_1561) = p_22.f0;
                l_1569[3]++;
            }
            else
            { /* block id: 793 */
                int32_t **l_1586 = &l_1483[1][0];
                int32_t l_1589 = 0L;
                int32_t l_1592 = (-4L);
                int32_t l_1595 = 0x2448E097L;
                int32_t l_1596 = 0x1CB2997BL;
                int32_t l_1597 = 0x3AA36819L;
                int32_t l_1598 = 0x03051F72L;
                int32_t l_1599 = 0x0BDB87C1L;
                int32_t l_1600 = 0L;
                int32_t l_1601 = 0L;
                int32_t l_1602 = 6L;
                int32_t l_1603[4];
                uint64_t l_1606[6];
                int i;
                for (i = 0; i < 4; i++)
                    l_1603[i] = 0x74897B8DL;
                for (i = 0; i < 6; i++)
                    l_1606[i] = 18446744073709551613UL;
                (*l_1586) = ((safe_lshift_func_uint8_t_u_s((p_25 = (((*l_1482) , ((safe_unary_minus_func_uint32_t_u((+(safe_div_func_uint16_t_u_u((safe_mod_func_int16_t_s_s(((****p_1678->g_955) >= ((**p_1678->g_1526) = (*p_1678->g_190))), (p_24 &= (func_30(((**p_1678->g_1476) = (0L || 1L)), p_22, ((*p_1678->g_339) , ((*p_1678->g_156) & ((safe_div_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((!(safe_unary_minus_func_int8_t_s(((l_1584[6][0][2] == l_1584[3][0][2]) != (***p_1678->g_956))))) , p_1678->g_1216.f1), 0UL)), p_21)) || 1L))), p_1678) , l_1585)))), p_22.f4))))) <= 0xACL)) & p_23)), 0)) , (void*)0);
                for (p_1678->g_868.f2 = 0; (p_1678->g_868.f2 == 27); p_1678->g_868.f2++)
                { /* block id: 801 */
                    (*l_1586) = &l_1446;
                    if (l_1585)
                        continue;
                    return l_1560;
                }
                l_1606[4]--;
            }
        }
        else
        { /* block id: 808 */
            l_1487[5] ^= p_22.f0;
        }
    }
    (*l_1609) |= (p_22.f5 , 0x53EE7732L);
    (*l_1610) &= (*l_1609);
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_1678->g_190 p_1678->g_64 p_1678->g_65 p_1678->g_233.f3 p_1678->g_318.f4 p_1678->g_222 p_1678->g_502.f5 p_1678->g_1306 p_1678->g_867.f3 p_1678->g_1313 p_1678->g_1266 p_1678->g_266.f5 p_1678->g_140 p_1678->g_647.f1 p_1678->g_1216.f1 p_1678->g_172.f5 p_1678->g_752.f4 p_1678->g_332 p_1678->g_126 p_1678->g_92 p_1678->g_957 p_1678->g_327 p_1678->g_1366 p_1678->g_980.f4
 * writes: p_1678->g_191 p_1678->g_140 p_1678->g_1034 p_1678->g_157 p_1678->g_434 p_1678->g_98 p_1678->g_1216.f1 p_1678->g_126 p_1678->g_92 p_1678->g_980.f4
 */
uint64_t  func_26(struct S0  p_27, uint16_t  p_28, int64_t  p_29, struct S4 * p_1678)
{ /* block id: 657 */
    struct S0 l_1277 = {0x2F854C92L,1L,0x724E8CB7L,0x36249C6AL,-1L,18446744073709551610UL,0xF61701B30B9BDAAEL};
    uint16_t l_1299 = 0x2A71L;
    int16_t *l_1300 = &p_1678->g_1034[1];
    int32_t l_1301 = 0x1C8C457CL;
    int64_t l_1302 = 0L;
    int32_t l_1303 = 0x610B54C0L;
    uint16_t l_1352 = 65535UL;
    uint8_t l_1355 = 255UL;
    int64_t *****l_1361[3][5] = {{&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955},{&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955},{&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955}};
    int64_t ******l_1360[7] = {(void*)0,&l_1361[2][3],(void*)0,(void*)0,&l_1361[2][3],(void*)0,(void*)0};
    int64_t *****l_1362 = &p_1678->g_955;
    uint64_t ***l_1363[2];
    uint32_t *l_1364[1][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
    for (i = 0; i < 2; i++)
        l_1363[i] = (void*)0;
lbl_1320:
    l_1303 &= (safe_mul_func_int16_t_s_s((((((*p_1678->g_190) = 0UL) || ((safe_div_func_uint8_t_u_u(((l_1301 = (safe_add_func_int16_t_s_s((l_1277 , ((*l_1300) = ((*p_1678->g_222) = ((safe_unary_minus_func_uint64_t_u((safe_div_func_int32_t_s_s(((p_28 != 1UL) && ((-1L) > (((safe_mul_func_int16_t_s_s((((l_1277.f0 != 1L) , (safe_rshift_func_int8_t_s_u(((safe_div_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((safe_add_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s((safe_div_func_int16_t_s_s((safe_sub_func_int16_t_s_s((safe_rshift_func_int8_t_s_u(p_28, 5)), p_29)), p_27.f3)), l_1299)) | 0x54598FE05F47D114L), p_29)), 1L)), (*p_1678->g_64))) > p_1678->g_233[3].f3), p_1678->g_318.f4))) ^ p_27.f0), 0x7AB3L)) , (void*)0) == (void*)0))), l_1277.f2)))) , l_1277.f4)))), p_27.f6))) < GROUP_DIVERGE(2, 1)), p_1678->g_502.f5)) , (*p_1678->g_64))) , l_1277.f4) | l_1302), p_28));
    if (l_1303)
    { /* block id: 663 */
        int16_t l_1307 = 0x7B6DL;
        int32_t *l_1308 = &l_1303;
        uint16_t **l_1316[1];
        int32_t *l_1319 = &p_1678->g_434[0][0];
        int i;
        for (i = 0; i < 1; i++)
            l_1316[i] = &p_1678->g_332;
        (*l_1308) = (l_1301 &= (l_1307 = (safe_lshift_func_int8_t_s_u((p_1678->g_1306 , p_1678->g_867.f3), 5))));
        (*l_1319) = ((*l_1308) = (safe_lshift_func_uint8_t_u_s(((safe_add_func_int64_t_s_s(((void*)0 == p_1678->g_1313), ((!(((*l_1308) , (safe_rshift_func_int8_t_s_u(p_27.f3, (l_1316[0] == &p_1678->g_332)))) , ((*p_1678->g_222) ^= (safe_lshift_func_uint16_t_u_u(((*l_1308) & FAKE_DIVERGE(p_1678->local_1_offset, get_local_id(1), 10)), (func_30(p_29, p_1678->g_1266, p_1678->g_266.f5, p_1678) , FAKE_DIVERGE(p_1678->local_1_offset, get_local_id(1), 10))))))) | FAKE_DIVERGE(p_1678->group_2_offset, get_group_id(2), 10)))) < 4UL), p_27.f0)));
        if (p_1678->g_1266.f2)
            goto lbl_1320;
    }
    else
    { /* block id: 671 */
        int32_t **l_1321 = &p_1678->g_98[1][4];
        int8_t *l_1324 = &p_1678->g_1216.f1;
        int32_t *l_1338 = &l_1277.f0;
        int32_t **l_1337 = &l_1338;
        int32_t ***l_1336 = &l_1337;
        uint16_t *l_1345 = &p_1678->g_92;
        int32_t *l_1353 = (void*)0;
        int32_t *l_1354 = &l_1301;
        (*l_1321) = &l_1303;
        l_1277 = func_30(((*p_1678->g_222) = ((p_27.f4 >= (p_27.f6 ^ ((safe_lshift_func_int8_t_s_u(((*l_1324) ^= p_1678->g_647.f1), (FAKE_DIVERGE(p_1678->group_1_offset, get_group_id(1), 10) != (GROUP_DIVERGE(0, 1) ^ (1L < (0UL <= (5UL ^ (safe_mul_func_uint8_t_u_u(p_27.f3, p_1678->g_172.f5))))))))) == (1L && 0x6C5C76D1L)))) || 0x7C2EL)), p_27, p_1678->g_752.f4, p_1678);
        (*l_1354) |= (((safe_rshift_func_int16_t_s_s(((safe_sub_func_uint16_t_u_u((safe_unary_minus_func_uint32_t_u(0x5514A91AL)), (0x0CF3L && (safe_sub_func_uint16_t_u_u(((*p_1678->g_332) &= ((void*)0 != l_1336)), (safe_lshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u(((*l_1345) ^= (safe_lshift_func_int16_t_s_s(l_1299, 13))), (safe_sub_func_uint16_t_u_u(p_27.f2, l_1277.f2)))), l_1277.f0))))))) != GROUP_DIVERGE(0, 1)), 0)) || ((safe_lshift_func_uint8_t_u_u(((((safe_add_func_int32_t_s_s(p_29, l_1352)) < p_28) , p_27.f2) != l_1277.f0), GROUP_DIVERGE(0, 1))) && l_1277.f4)) , (-1L));
    }
    (*p_1678->g_1366) = ((l_1355 != (p_27.f1 < (((*p_1678->g_222) &= ((safe_rshift_func_uint16_t_u_s((((void*)0 != &p_1678->g_196) & (0x0EC5670D7FE04874L ^ ((l_1301 ^= (((safe_rshift_func_int16_t_s_u(((l_1362 = (void*)0) == &p_1678->g_955), 0)) >= (l_1363[1] != &p_1678->g_189)) && 249UL)) , (**p_1678->g_957)))), 14)) != l_1277.f1)) ^ p_27.f6))) && (*p_1678->g_327));
    if (l_1277.f0)
    { /* block id: 684 */
        int32_t l_1367 = 0x615ED6E0L;
        int32_t *l_1368[3][6] = {{&p_1678->g_3,&p_1678->g_3,&p_1678->g_6,&p_1678->g_157,&p_1678->g_3,&p_1678->g_157},{&p_1678->g_3,&p_1678->g_3,&p_1678->g_6,&p_1678->g_157,&p_1678->g_3,&p_1678->g_157},{&p_1678->g_3,&p_1678->g_3,&p_1678->g_6,&p_1678->g_157,&p_1678->g_3,&p_1678->g_157}};
        int16_t l_1369 = (-1L);
        int i, j;
        l_1369 ^= l_1367;
        l_1301 |= p_29;
        l_1301 = ((safe_lshift_func_int16_t_s_u((-1L), FAKE_DIVERGE(p_1678->local_0_offset, get_local_id(0), 10))) , ((((safe_div_func_int32_t_s_s(p_28, (safe_unary_minus_func_uint16_t_u((((safe_rshift_func_int16_t_s_s(p_27.f4, ((*l_1300) = ((void*)0 == &p_1678->g_332)))) , (safe_add_func_uint16_t_u_u(0UL, GROUP_DIVERGE(2, 1)))) & ((((safe_div_func_int16_t_s_s(((safe_mul_func_int8_t_s_s(((0xE86A99D9154C94FDL && l_1277.f1) >= ((safe_mod_func_int8_t_s_s(((p_27.f6 == (*p_1678->g_332)) | 0x1CA4L), 0x12L)) <= p_27.f5)), 9L)) ^ (*p_1678->g_222)), l_1352)) == l_1277.f2) < p_27.f2) <= l_1301)))))) , 1L) ^ l_1277.f6) >= p_27.f5));
    }
    else
    { /* block id: 689 */
        int32_t *l_1389 = &p_1678->g_6;
        for (p_1678->g_980.f4 = 0; (p_1678->g_980.f4 <= 25); ++p_1678->g_980.f4)
        { /* block id: 692 */
            int32_t **l_1391 = (void*)0;
            int32_t **l_1394 = (void*)0;
            int32_t **l_1395 = &p_1678->g_98[1][4];
            (*l_1395) = l_1389;
        }
    }
    return l_1301;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1678->g_157
 */
struct S0  func_30(int16_t  p_31, struct S0  p_32, uint32_t  p_33, struct S4 * p_1678)
{ /* block id: 653 */
    uint16_t l_1267 = 7UL;
    int32_t *l_1268 = &p_1678->g_157;
    struct S0 l_1269 = {0x68260DE6L,-9L,0x63074EDEL,0x562214E7L,0x043ADA7DL,18446744073709551615UL,0UL};
    (*l_1268) = (p_33 | (l_1267 <= FAKE_DIVERGE(p_1678->local_1_offset, get_local_id(1), 10)));
    return l_1269;
}


/* ------------------------------------------ */
/* 
 * reads : p_1678->g_801 p_1678->g_233 p_1678->g_318.f0 p_1678->g_719 p_1678->g_955 p_1678->g_956 p_1678->g_957 p_1678->g_64 p_1678->g_65 p_1678->g_332 p_1678->g_126 p_1678->g_1008 p_1678->g_157 p_1678->g_222 p_1678->g_75 p_1678->g_577.f3 p_1678->g_404 p_1678->g_1034 p_1678->g_140 p_1678->g_577.f2 p_1678->g_542.f4 p_1678->g_502.f1 p_1678->g_1061 p_1678->g_265.f3 p_1678->g_647.f5 p_1678->g_577.f1 p_1678->g_318 p_1678->g_736 p_1678->g_547 p_1678->g_542.f0 p_1678->g_434 p_1678->g_190 p_1678->g_191 p_1678->g_1118 p_1678->g_196 p_1678->g_502.f3 p_1678->g_904.f5 p_1678->g_916 p_1678->g_917 p_1678->g_266.f0 p_1678->g_133 p_1678->g_868.f4 p_1678->g_265.f2 p_1678->g_92 p_1678->g_752.f1 p_1678->g_1203 p_1678->g_1204 p_1678->g_1205 p_1678->g_1215 p_1678->g_1216 p_1678->g_339 p_1678->g_1252 p_1678->g_189 p_1678->g_266.f2 p_1678->g_980.f4 p_1678->g_502.f5 p_1678->g_266.f4 p_1678->g_980.f1
 * writes: p_1678->g_577.f2 p_1678->g_980.f4 p_1678->g_233 p_1678->g_157 p_1678->g_502.f5 p_1678->g_266.f4 p_1678->g_577.f1 p_1678->g_140 p_1678->g_75 p_1678->g_155 p_1678->g_1034 p_1678->g_956 p_1678->g_340.f1 p_1678->g_98 p_1678->g_434 p_1678->g_980.f1 p_1678->g_318 p_1678->g_868.f1 p_1678->g_547 p_1678->g_703.f5 p_1678->g_247 p_1678->g_65 p_1678->g_502.f4 p_1678->g_502.f3 p_1678->g_133 p_1678->g_703.f1 p_1678->g_698 p_1678->g_126 p_1678->g_868.f4 p_1678->g_1203 p_1678->g_1206 p_1678->g_340 p_1678->g_266.f2
 */
int8_t  func_38(uint64_t  p_39, struct S4 * p_1678)
{ /* block id: 505 */
    struct S0 *l_984 = &p_1678->g_318;
    struct S0 **l_985 = &l_984;
    uint16_t **l_988[5][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
    int32_t l_994 = 0x3677697CL;
    int64_t ***l_1047 = &p_1678->g_957;
    struct S1 **l_1088[4];
    int32_t l_1089 = 0L;
    uint64_t l_1155 = 3UL;
    int32_t l_1162[7] = {0L,0L,0L,0L,0L,0L,0L};
    uint32_t l_1163 = 0x7FAD9723L;
    int32_t l_1229 = 1L;
    int16_t l_1240 = 1L;
    int64_t l_1244 = 0x6C8449E4DF8F0F9CL;
    uint32_t l_1246[6][2] = {{0x658B9A1CL,4294967293UL},{0x658B9A1CL,4294967293UL},{0x658B9A1CL,4294967293UL},{0x658B9A1CL,4294967293UL},{0x658B9A1CL,4294967293UL},{0x658B9A1CL,4294967293UL}};
    uint64_t l_1249 = 7UL;
    uint16_t l_1262[1];
    int i, j;
    for (i = 0; i < 4; i++)
        l_1088[i] = &p_1678->g_342;
    for (i = 0; i < 1; i++)
        l_1262[i] = 65533UL;
lbl_992:
    (*l_985) = l_984;
    for (p_1678->g_577.f2 = 0; (p_1678->g_577.f2 != 36); p_1678->g_577.f2++)
    { /* block id: 509 */
        uint16_t **l_989 = &p_1678->g_332;
        int32_t l_1025 = 0x77FE054AL;
        int64_t **l_1056 = &p_1678->g_64;
        struct S0 l_1058 = {0x11EA34ABL,8L,-2L,1UL,-1L,18446744073709551615UL,0x5F93B0BDD9EF11B3L};
        int32_t *l_1068 = (void*)0;
        int32_t *l_1069 = &p_1678->g_434[0][2];
        uint64_t **l_1084 = (void*)0;
        int32_t l_1095 = 1L;
        int32_t l_1096 = 0x12E52FDDL;
        uint32_t l_1139 = 4294967288UL;
        int64_t *****l_1214[6] = {&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955};
        int32_t l_1241 = (-1L);
        int32_t l_1242 = 0x79F5C6E5L;
        int32_t l_1243[9][6] = {{0L,0x1A2746DDL,0x4A248903L,0x62036ECCL,0x4A248903L,0x1A2746DDL},{0L,0x1A2746DDL,0x4A248903L,0x62036ECCL,0x4A248903L,0x1A2746DDL},{0L,0x1A2746DDL,0x4A248903L,0x62036ECCL,0x4A248903L,0x1A2746DDL},{0L,0x1A2746DDL,0x4A248903L,0x62036ECCL,0x4A248903L,0x1A2746DDL},{0L,0x1A2746DDL,0x4A248903L,0x62036ECCL,0x4A248903L,0x1A2746DDL},{0L,0x1A2746DDL,0x4A248903L,0x62036ECCL,0x4A248903L,0x1A2746DDL},{0L,0x1A2746DDL,0x4A248903L,0x62036ECCL,0x4A248903L,0x1A2746DDL},{0L,0x1A2746DDL,0x4A248903L,0x62036ECCL,0x4A248903L,0x1A2746DDL},{0L,0x1A2746DDL,0x4A248903L,0x62036ECCL,0x4A248903L,0x1A2746DDL}};
        int32_t l_1245[1][10] = {{0x0847C99DL,0x25F2A898L,0x23D5D995L,0x25F2A898L,0x0847C99DL,0x0847C99DL,0x25F2A898L,0x23D5D995L,0x25F2A898L,0x0847C99DL}};
        int32_t *l_1261[7];
        int i, j;
        for (i = 0; i < 7; i++)
            l_1261[i] = &l_1162[0];
        for (p_1678->g_980.f4 = 0; (p_1678->g_980.f4 <= 3); p_1678->g_980.f4 += 1)
        { /* block id: 512 */
            uint16_t ***l_990 = (void*)0;
            uint16_t ***l_991 = &l_989;
            int32_t l_1005 = 0L;
            int64_t **l_1057[7][10] = {{(void*)0,&p_1678->g_64,&p_1678->g_64,(void*)0,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,(void*)0},{(void*)0,&p_1678->g_64,&p_1678->g_64,(void*)0,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,(void*)0},{(void*)0,&p_1678->g_64,&p_1678->g_64,(void*)0,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,(void*)0},{(void*)0,&p_1678->g_64,&p_1678->g_64,(void*)0,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,(void*)0},{(void*)0,&p_1678->g_64,&p_1678->g_64,(void*)0,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,(void*)0},{(void*)0,&p_1678->g_64,&p_1678->g_64,(void*)0,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,(void*)0},{(void*)0,&p_1678->g_64,&p_1678->g_64,(void*)0,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,&p_1678->g_64,(void*)0}};
            int i, j;
            if (((p_39 , l_988[3][0]) != ((*l_991) = l_989)))
            { /* block id: 514 */
                if (p_39)
                    goto lbl_992;
                (*p_1678->g_801) = (*p_1678->g_801);
            }
            else
            { /* block id: 517 */
                return p_1678->g_318.f0;
            }
            (*p_1678->g_1008) |= ((safe_unary_minus_func_uint8_t_u((1L & 9L))) > ((l_994 && ((safe_sub_func_uint16_t_u_u((l_994 > (safe_lshift_func_uint8_t_u_s(248UL, 4))), ((safe_sub_func_uint32_t_u_u(p_39, (safe_mul_func_int8_t_s_s(p_1678->g_719[7], ((safe_add_func_uint16_t_u_u((((~l_1005) && (safe_add_func_uint32_t_u_u((GROUP_DIVERGE(1, 1) <= l_994), GROUP_DIVERGE(1, 1)))) >= l_994), l_994)) , 7UL))))) >= (****p_1678->g_955)))) <= (*p_1678->g_332))) || 6L));
            for (p_1678->g_502.f5 = 3; (p_1678->g_502.f5 >= 0); p_1678->g_502.f5 -= 1)
            { /* block id: 523 */
                int16_t l_1051 = 0x79F6L;
                uint8_t *l_1059 = &p_1678->g_259;
                int32_t *l_1060 = (void*)0;
                for (p_1678->g_266.f4 = 0; (p_1678->g_266.f4 <= 3); p_1678->g_266.f4 += 1)
                { /* block id: 526 */
                    int32_t l_1026 = (-1L);
                    int16_t l_1055[6];
                    int32_t *l_1063 = &p_1678->g_434[0][0];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_1055[i] = 7L;
                    for (p_1678->g_577.f1 = 0; (p_1678->g_577.f1 >= 0); p_1678->g_577.f1 -= 1)
                    { /* block id: 529 */
                        int32_t *l_1009 = (void*)0;
                        int32_t *l_1010 = &l_994;
                        int16_t *l_1027 = &p_1678->g_75[0][0][2];
                        int16_t *l_1032 = &p_1678->g_155;
                        int16_t *l_1033 = &p_1678->g_1034[1];
                        int8_t *l_1054 = &p_1678->g_340.f1;
                        int i, j;
                        (*l_1010) = 0L;
                        (*l_1010) = (safe_mod_func_int8_t_s_s(((((+(p_39 > (safe_add_func_int16_t_s_s(((((*l_1033) |= ((*l_1032) = (safe_mod_func_uint32_t_u_u(((safe_div_func_int16_t_s_s((18446744073709551609UL < (((safe_lshift_func_int8_t_s_s(((safe_sub_func_int64_t_s_s(((p_39 , ((safe_div_func_int64_t_s_s(((((((*p_1678->g_222) = l_1025) != (((*l_1027) ^= l_1026) && (safe_mod_func_uint8_t_u_u((p_39 != (safe_rshift_func_int16_t_s_s(l_1026, (l_1026 != 0L)))), (-4L))))) | 0x39L) , p_1678->g_577.f3) ^ p_1678->g_157), p_39)) < (*p_1678->g_332))) , (-1L)), l_1005)) , p_39), p_1678->g_404)) >= p_39) != 0x43AD09A0L)), 9L)) || 1UL), FAKE_DIVERGE(p_1678->local_0_offset, get_local_id(0), 10))))) == p_39) , (*p_1678->g_222)), l_1025)))) <= p_1678->g_577.f2) , 0UL) <= GROUP_DIVERGE(2, 1)), p_39));
                        l_1005 &= ((safe_lshift_func_int8_t_s_u((safe_add_func_uint64_t_u_u((safe_add_func_int8_t_s_s((&p_1678->g_479 != &p_1678->g_189), ((safe_mod_func_uint16_t_u_u((*p_1678->g_332), (safe_rshift_func_uint16_t_u_u(((((safe_div_func_int32_t_s_s((((*p_1678->g_955) = l_1047) == (void*)0), (safe_lshift_func_int8_t_s_u((((*l_1054) = (safe_unary_minus_func_uint64_t_u(((~(l_1051 <= ((safe_mul_func_int8_t_s_s(p_39, p_1678->g_542.f4)) , ((&p_1678->g_770 != &l_984) >= (**p_1678->g_957))))) ^ GROUP_DIVERGE(0, 1))))) , p_39), 2)))) >= p_39) | 0L) & 3UL), 14)))) && l_1055[4]))), (*l_1010))), p_1678->g_502.f1)) , 0x70C88692L);
                        if (l_1005)
                            continue;
                    }
                    (*p_1678->g_1061) = l_1060;
                    (*l_1063) = p_39;
                }
            }
        }
        if (((*l_1069) = (safe_rshift_func_int8_t_s_u((-4L), ((safe_lshift_func_int16_t_s_u(p_39, l_994)) == GROUP_DIVERGE(2, 1))))))
        { /* block id: 551 */
            uint64_t **l_1086 = &p_1678->g_190;
            uint64_t ***l_1085 = &l_1086;
            struct S1 **l_1087 = &p_1678->g_342;
            if (p_1678->g_502.f1)
                goto lbl_992;
            l_1089 |= (((safe_mod_func_uint64_t_u_u((!(FAKE_DIVERGE(p_1678->local_1_offset, get_local_id(1), 10) , ((safe_rshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s((safe_div_func_uint8_t_u_u(p_1678->g_265.f3, (((safe_lshift_func_int8_t_s_u(p_39, 4)) <= (0x5ACB68E7BCBD7173L < (safe_lshift_func_int16_t_s_s(((p_1678->g_647.f5 <= (safe_mod_func_uint64_t_u_u((0UL != ((l_1084 == ((*l_1085) = &p_1678->g_190)) , ((l_1087 != (FAKE_DIVERGE(p_1678->group_2_offset, get_group_id(2), 10) , l_1088[1])) | (*p_1678->g_332)))), (*p_1678->g_64)))) >= p_39), 3)))) || 0x46L))), 0UL)), p_1678->g_577.f1)) > 0L))), l_994)) , 0x2581L) ^ (*p_1678->g_332));
        }
        else
        { /* block id: 555 */
            for (p_1678->g_980.f1 = (-16); (p_1678->g_980.f1 >= 4); p_1678->g_980.f1 = safe_add_func_uint8_t_u_u(p_1678->g_980.f1, 5))
            { /* block id: 558 */
                (*l_984) = (*l_984);
            }
        }
        for (p_1678->g_157 = (-20); (p_1678->g_157 > (-7)); p_1678->g_157++)
        { /* block id: 564 */
            uint16_t l_1098 = 0x5529L;
            int32_t l_1114 = 0L;
            int32_t l_1115 = 2L;
            uint16_t **l_1140 = (void*)0;
            uint32_t l_1158 = 1UL;
            uint64_t **l_1217 = (void*)0;
            int64_t l_1224[8][6] = {{1L,3L,3L,1L,1L,3L},{1L,3L,3L,1L,1L,3L},{1L,3L,3L,1L,1L,3L},{1L,3L,3L,1L,1L,3L},{1L,3L,3L,1L,1L,3L},{1L,3L,3L,1L,1L,3L},{1L,3L,3L,1L,1L,3L},{1L,3L,3L,1L,1L,3L}};
            int32_t l_1230 = 0x7B95BAB4L;
            int32_t l_1231 = 3L;
            int32_t *l_1237 = &l_1095;
            int32_t *l_1238 = &l_1096;
            int32_t *l_1239[1];
            int64_t ***l_1255 = &l_1056;
            uint8_t *l_1256 = &p_1678->g_266.f2;
            int i, j;
            for (i = 0; i < 1; i++)
                l_1239[i] = &l_1162[4];
            if (p_39)
            { /* block id: 565 */
                int64_t l_1097 = (-3L);
                int8_t *l_1109[3][7][7] = {{{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404}},{{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404}},{{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404},{&p_1678->g_404,&p_1678->g_404,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404,&p_1678->g_247,&p_1678->g_404}}};
                int32_t l_1136[6][1][5] = {{{0x51367383L,0x51367383L,0x3480196BL,0x7B16D9B2L,(-6L)}},{{0x51367383L,0x51367383L,0x3480196BL,0x7B16D9B2L,(-6L)}},{{0x51367383L,0x51367383L,0x3480196BL,0x7B16D9B2L,(-6L)}},{{0x51367383L,0x51367383L,0x3480196BL,0x7B16D9B2L,(-6L)}},{{0x51367383L,0x51367383L,0x3480196BL,0x7B16D9B2L,(-6L)}},{{0x51367383L,0x51367383L,0x3480196BL,0x7B16D9B2L,(-6L)}}};
                int i, j, k;
                for (p_1678->g_868.f1 = 0; (p_1678->g_868.f1 <= 2); p_1678->g_868.f1 += 1)
                { /* block id: 568 */
                    int32_t *l_1094[7] = {&p_1678->g_434[0][2],(void*)0,&p_1678->g_434[0][2],&p_1678->g_434[0][2],(void*)0,&p_1678->g_434[0][2],&p_1678->g_434[0][2]};
                    volatile struct S3 *l_1101 = (void*)0;
                    volatile struct S3 *l_1102 = (void*)0;
                    int i;
                    --l_1098;
                    (*p_1678->g_736) = (*p_1678->g_736);
                    for (p_1678->g_703.f5 = 0; (p_1678->g_703.f5 <= 2); p_1678->g_703.f5 += 1)
                    { /* block id: 573 */
                        return p_39;
                    }
                }
                if ((l_1115 = ((safe_mod_func_int8_t_s_s((safe_sub_func_int32_t_s_s(0x73431283L, (p_39 , l_994))), (safe_mul_func_int8_t_s_s((p_1678->g_247 = p_1678->g_542.f0), (((*l_1069) & ((safe_mul_func_int8_t_s_s((((l_1114 |= ((***p_1678->g_956) = ((~l_994) != (safe_rshift_func_uint8_t_u_s((+p_1678->g_75[0][2][2]), l_994))))) >= (((((void*)0 == &p_1678->g_770) > p_39) < GROUP_DIVERGE(0, 1)) ^ 0x2697811C97E14F39L)) > 1UL), 0x1EL)) , (*p_1678->g_190))) != p_1678->g_1034[1]))))) , (-1L))))
                { /* block id: 581 */
                    int8_t l_1135 = (-1L);
                    uint16_t **l_1141 = &p_1678->g_332;
                    (*l_1069) = p_39;
                    for (p_1678->g_502.f4 = 0; (p_1678->g_502.f4 <= 1); p_1678->g_502.f4 += 1)
                    { /* block id: 585 */
                        int32_t *l_1116 = &p_1678->g_6;
                        int32_t **l_1117 = (void*)0;
                        int32_t **l_1119 = (void*)0;
                        int32_t **l_1120 = &l_1068;
                        (*p_1678->g_1118) = l_1116;
                        (*l_1120) = (void*)0;
                    }
                    l_1089 ^= ((p_39 <= (*p_1678->g_332)) & (safe_mod_func_int32_t_s_s((*p_1678->g_196), (safe_lshift_func_int16_t_s_u(((((p_39 && (p_39 | ((safe_lshift_func_int8_t_s_u(((((**l_1056) |= (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), ((safe_mod_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(((safe_sub_func_uint16_t_u_u((p_1678->g_502.f3--), l_1139)) >= ((**p_1678->g_916) = ((l_1140 == l_1141) , ((safe_unary_minus_func_uint16_t_u((safe_add_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_1678->global_0_offset, get_global_id(0), 10), ((((&p_1678->g_318 != &l_1058) , 0x5DC5C141L) || l_1114) & p_1678->g_904.f5))), 1UL)))) <= (*p_1678->g_190))))), p_39)), GROUP_DIVERGE(1, 1))) , l_1097)))) ^ p_39) , p_39), 1)) && (*l_1069)))) >= p_39) != GROUP_DIVERGE(1, 1)) >= p_39), (*p_1678->g_332))))));
                    if (p_39)
                        continue;
                }
                else
                { /* block id: 594 */
                    if (p_1678->g_904.f5)
                        goto lbl_992;
                    return p_1678->g_266.f0;
                }
            }
            else
            { /* block id: 598 */
                int32_t *l_1147 = (void*)0;
                int32_t *l_1148 = &l_1096;
                int32_t *l_1149 = (void*)0;
                int32_t *l_1150 = &l_1095;
                int32_t *l_1151 = &l_994;
                int32_t *l_1152 = (void*)0;
                int32_t *l_1153 = &l_994;
                int32_t *l_1154[9] = {&l_1095,&l_1095,&l_1095,&l_1095,&l_1095,&l_1095,&l_1095,&l_1095,&l_1095};
                uint8_t *l_1181 = &p_1678->g_868.f4;
                int32_t *l_1201 = &l_1058.f2;
                uint32_t l_1202 = 0xFF0C2165L;
                int i;
                --l_1155;
                l_1158++;
                for (p_1678->g_703.f1 = 0; (p_1678->g_703.f1 <= 3); p_1678->g_703.f1 += 1)
                { /* block id: 603 */
                    int8_t l_1161 = 0x4EL;
                    --l_1163;
                    for (p_1678->g_698 = 0; (p_1678->g_698 <= 0); p_1678->g_698 += 1)
                    { /* block id: 607 */
                        int32_t **l_1166 = &l_1068;
                        if (l_1155)
                            goto lbl_992;
                        (*l_1166) = l_1152;
                        (*l_1153) &= l_1115;
                        (*l_1166) = &l_1115;
                    }
                }
                if (((((l_1114 |= (**p_1678->g_916)) | p_39) <= ((safe_add_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(((*p_1678->g_332)--), ((safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((((*l_1069) |= ((*l_1181)++)) == p_1678->g_265.f2), (((safe_mul_func_uint16_t_u_u(((((0x62C1732A723A02F0L || (4L < (safe_div_func_uint64_t_u_u((safe_div_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((((safe_unary_minus_func_int64_t_s((***p_1678->g_956))) || (((safe_lshift_func_uint16_t_u_u((((*l_1201) ^= ((safe_mul_func_uint8_t_u_u((((void*)0 == &p_1678->g_801) | (safe_add_func_int64_t_s_s(((p_39 || GROUP_DIVERGE(1, 1)) <= (*l_1150)), 0x4291624D95045D7EL))), 0x4EL)) != p_39)) , FAKE_DIVERGE(p_1678->group_0_offset, get_group_id(0), 10)), 3)) & p_1678->g_92) != 65535UL)) , p_39), 0)), 6)), 65531UL)), 0x4A0F1EDCD3233C2DL)))) > 0x35L) && p_39) >= 0xC114A2C5L), GROUP_DIVERGE(1, 1))) , l_1089) == 0L))), p_1678->g_752.f1)), p_39)), 0)) ^ p_1678->g_647.f5))), p_39)) && p_39)) & l_1202))
                { /* block id: 619 */
                    (*p_1678->g_1204) = p_1678->g_1203;
                    (*p_1678->g_1205) = &p_1678->g_546;
                    if ((*p_1678->g_196))
                        break;
                }
                else
                { /* block id: 623 */
                    int64_t *****l_1208 = (void*)0;
                    int64_t ******l_1207 = &l_1208;
                    int16_t *l_1213 = &p_1678->g_75[0][1][0];
                    uint64_t **l_1218[9][10][2] = {{{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190}},{{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190}},{{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190}},{{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190}},{{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190}},{{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190}},{{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190}},{{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190}},{{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190},{&p_1678->g_190,&p_1678->g_190}}};
                    int8_t l_1219[1][1];
                    int32_t l_1225 = 0x6769E543L;
                    int32_t l_1226 = (-1L);
                    int32_t l_1228[2][5] = {{0x0DC1DEF1L,0x0DC1DEF1L,0x0DC1DEF1L,0x0DC1DEF1L,0x0DC1DEF1L},{0x0DC1DEF1L,0x0DC1DEF1L,0x0DC1DEF1L,0x0DC1DEF1L,0x0DC1DEF1L}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_1219[i][j] = 0x3CL;
                    }
                    if (((*l_1148) = (((*l_1207) = &p_1678->g_955) == (((-1L) == (safe_mul_func_int16_t_s_s((-3L), ((*l_1213) = ((*p_1678->g_222) = (safe_div_func_int32_t_s_s(p_39, p_39))))))) , l_1214[1]))))
                    { /* block id: 628 */
                        (*p_1678->g_1215) = &l_1089;
                        (*p_1678->g_339) = p_1678->g_1216;
                    }
                    else
                    { /* block id: 631 */
                        int32_t *l_1220 = &l_1162[3];
                        int32_t **l_1221 = (void*)0;
                        int32_t **l_1222 = &l_1150;
                        int32_t **l_1223 = &l_1153;
                        int32_t l_1227 = 0L;
                        int32_t l_1232 = 1L;
                        int32_t l_1233 = 0x4ADFCB9BL;
                        uint64_t l_1234 = 18446744073709551613UL;
                        (*l_1150) = (l_1217 == (l_1218[4][6][0] = &p_1678->g_190));
                        if (l_1219[0][0])
                            continue;
                        (*l_1223) = ((*l_1222) = l_1220);
                        ++l_1234;
                    }
                }
            }
            ++l_1246[5][1];
            l_1249--;
            (*l_1237) = ((p_1678->g_1252[3] , 0L) , (((**p_1678->g_189) > (((safe_sub_func_uint16_t_u_u((l_1255 == l_1047), ((*p_1678->g_222) = ((((*l_1237) , ((((((**p_1678->g_916) = GROUP_DIVERGE(1, 1)) , (!(((*l_984) = (*l_984)) , (--(*l_1256))))) == (safe_mul_func_uint16_t_u_u(65535UL, p_39))) , l_1255) != l_1255)) , p_39) < p_39)))) , p_39) , p_39)) ^ (*l_1238)));
        }
        l_1262[0]++;
    }
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_1678->g_233.f3 p_1678->g_265 p_1678->g_266 p_1678->g_64 p_1678->g_65 p_1678->g_6 p_1678->g_190 p_1678->g_191 p_1678->g_140 p_1678->g_244 p_1678->g_172.f3 p_1678->g_196 p_1678->g_157 p_1678->g_222 p_1678->g_75 p_1678->g_97 p_1678->g_326 p_1678->g_233.f0 p_1678->g_339 p_1678->g_172 p_1678->g_156 p_1678->g_189 p_1678->g_92 p_1678->g_327 p_1678->g_332 p_1678->g_126 p_1678->g_383 p_1678->g_417 p_1678->g_340.f1 p_1678->g_3 p_1678->g_180 p_1678->g_318 p_1678->g_433 p_1678->g_133 p_1678->g_247 p_1678->g_478 p_1678->g_502 p_1678->g_259 p_1678->g_193 p_1678->g_528 p_1678->g_542 p_1678->g_546 p_1678->g_547 p_1678->g_548 p_1678->g_551 p_1678->g_577 p_1678->g_647 p_1678->g_703 p_1678->g_719 p_1678->g_735 p_1678->g_736 p_1678->g_747 p_1678->g_752 p_1678->g_772 p_1678->g_434 p_1678->g_838 p_1678->g_859 p_1678->g_155 p_1678->g_867 p_1678->g_878 p_1678->g_898 p_1678->g_899 p_1678->g_904 p_1678->g_905 p_1678->g_906 p_1678->g_915 p_1678->g_922 p_1678->g_916 p_1678->g_917 p_1678->g_165.f1 p_1678->g_955 p_1678->g_770 p_1678->g_980 p_1678->g_728
 * writes: p_1678->g_92 p_1678->g_247 p_1678->g_259 p_1678->g_191 p_1678->g_75 p_1678->g_98 p_1678->g_157 p_1678->g_332 p_1678->g_339 p_1678->g_342 p_1678->g_140 p_1678->g_266.f1 p_1678->g_190 p_1678->g_133 p_1678->g_266.f2 p_1678->g_318.f0 p_1678->g_340.f1 p_1678->g_180 p_1678->g_318.f2 p_1678->g_50 p_1678->g_502 p_1678->g_404 p_1678->g_318.f3 p_1678->g_318.f6 p_1678->g_126 p_1678->g_172 p_1678->g_547 p_1678->g_647.f5 p_1678->g_65 p_1678->g_728 p_1678->g_736 p_1678->g_703.f0 p_1678->g_747 p_1678->g_318.f4 p_1678->g_770 p_1678->g_434 p_1678->g_478 p_1678->g_821 p_1678->g_529 p_1678->g_155 p_1678->g_868 p_1678->g_867.f1 p_1678->g_878 p_1678->g_752.f4 p_1678->g_898 p_1678->g_904 p_1678->g_752.f5 p_1678->g_905 p_1678->g_647.f2 p_1678->g_955
 */
int8_t  func_44(int64_t  p_45, uint64_t  p_46, struct S4 * p_1678)
{ /* block id: 98 */
    int8_t l_249[9] = {0x1FL,6L,0x1FL,0x1FL,6L,0x1FL,0x1FL,6L,0x1FL};
    int32_t l_251[8][3] = {{0x0B66F2D2L,(-10L),0L},{0x0B66F2D2L,(-10L),0L},{0x0B66F2D2L,(-10L),0L},{0x0B66F2D2L,(-10L),0L},{0x0B66F2D2L,(-10L),0L},{0x0B66F2D2L,(-10L),0L},{0x0B66F2D2L,(-10L),0L},{0x0B66F2D2L,(-10L),0L}};
    int64_t l_252[4] = {(-9L),(-9L),(-9L),(-9L)};
    int32_t l_284 = 1L;
    int8_t l_302 = (-10L);
    int32_t l_400 = 6L;
    struct S1 *l_446 = &p_1678->g_340;
    int8_t l_453 = 0x4BL;
    int32_t *l_462 = (void*)0;
    uint16_t *l_464 = &p_1678->g_92;
    int64_t **l_506 = (void*)0;
    struct S0 l_576 = {0L,7L,0x0A5FC8F1L,5UL,0x603790E2L,18446744073709551615UL,0x5ED980C153547D55L};
    int8_t l_578 = 1L;
    uint64_t **l_592 = &p_1678->g_190;
    struct S2 *l_655[9][1][3] = {{{&p_1678->g_577,&p_1678->g_577,&p_1678->g_266}},{{&p_1678->g_577,&p_1678->g_577,&p_1678->g_266}},{{&p_1678->g_577,&p_1678->g_577,&p_1678->g_266}},{{&p_1678->g_577,&p_1678->g_577,&p_1678->g_266}},{{&p_1678->g_577,&p_1678->g_577,&p_1678->g_266}},{{&p_1678->g_577,&p_1678->g_577,&p_1678->g_266}},{{&p_1678->g_577,&p_1678->g_577,&p_1678->g_266}},{{&p_1678->g_577,&p_1678->g_577,&p_1678->g_266}},{{&p_1678->g_577,&p_1678->g_577,&p_1678->g_266}}};
    struct S2 **l_654 = &l_655[8][0][2];
    uint16_t l_732 = 0x5813L;
    int32_t l_745 = 0x6F975DD2L;
    int32_t l_845 = 0x66CF841CL;
    int64_t l_849[2];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_849[i] = 8L;
lbl_408:
    for (p_1678->g_92 = 0; (p_1678->g_92 <= 1); p_1678->g_92 += 1)
    { /* block id: 101 */
        int16_t l_248[4][6][3] = {{{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L}},{{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L}},{{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L}},{{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L},{(-8L),1L,0L}}};
        int32_t *l_250[6][10] = {{&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6,&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6},{&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6,&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6},{&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6,&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6},{&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6,&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6},{&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6,&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6},{&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6,&p_1678->g_6,(void*)0,&p_1678->g_6,(void*)0,&p_1678->g_6}};
        uint64_t l_253 = 18446744073709551615UL;
        uint64_t **l_273 = &p_1678->g_190;
        int i, j, k;
        for (p_45 = 1; (p_45 >= 0); p_45 -= 1)
        { /* block id: 104 */
            return l_248[2][1][0];
        }
        l_253--;
        for (p_1678->g_247 = 1; (p_1678->g_247 >= 0); p_1678->g_247 -= 1)
        { /* block id: 110 */
            uint8_t *l_258 = &p_1678->g_259;
            uint32_t l_262 = 4UL;
            int32_t l_285 = 3L;
            int i, j;
            l_251[3][1] ^= (((((*l_258) = 255UL) != ((safe_mod_func_int8_t_s_s(((((l_262 != (p_1678->g_233[3].f3 >= ((void*)0 != &p_45))) , (safe_sub_func_uint8_t_u_u((((p_1678->g_265 , p_1678->g_266) , (safe_add_func_int64_t_s_s((((safe_mul_func_int8_t_s_s((safe_add_func_int8_t_s_s((&p_1678->g_190 == l_273), 3L)), p_1678->g_265.f1)) != l_262) != p_45), p_46))) , p_46), 4UL))) & (*p_1678->g_64)) , 1L), p_1678->g_6)) <= 0UL)) >= p_45) <= (-1L));
            l_285 = ((0xB82A4E60L < (safe_mul_func_int8_t_s_s((l_284 |= (safe_mod_func_uint32_t_u_u((safe_mod_func_int32_t_s_s(0x5E065A7BL, (safe_div_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s(((l_251[3][1] = (p_46 <= (!((**l_273) = (l_262 , (((void*)0 == &p_1678->g_98[p_1678->g_92][(p_1678->g_247 + 2)]) , (*p_1678->g_190))))))) != (((4294967287UL < 0L) , (void*)0) != (void*)0)), FAKE_DIVERGE(p_1678->local_0_offset, get_local_id(0), 10))) | 0L), p_46)))), (-3L)))), p_1678->g_140[2][3]))) < p_1678->g_244[1]);
            l_284 ^= (l_285 = 1L);
            return p_1678->g_172.f3;
        }
    }
    if ((*p_1678->g_196))
    { /* block id: 122 */
        uint16_t l_289 = 4UL;
        int32_t *l_320 = &p_1678->g_157;
        int32_t *l_322 = &l_251[3][1];
        int16_t **l_343[9];
        uint8_t *l_368 = &p_1678->g_266.f2;
        int32_t l_391 = 0L;
        int32_t l_394 = 0x607F2C12L;
        int32_t l_396 = 0x6A0D394DL;
        int32_t l_401 = 0x676E5E4DL;
        int32_t l_402 = 0x32920495L;
        int32_t l_403[6][10] = {{7L,0x5C6730D8L,0x0F8BA47DL,0x1BCD7511L,0x0F8BA47DL,0x5C6730D8L,7L,0L,9L,0x2A3ED089L},{7L,0x5C6730D8L,0x0F8BA47DL,0x1BCD7511L,0x0F8BA47DL,0x5C6730D8L,7L,0L,9L,0x2A3ED089L},{7L,0x5C6730D8L,0x0F8BA47DL,0x1BCD7511L,0x0F8BA47DL,0x5C6730D8L,7L,0L,9L,0x2A3ED089L},{7L,0x5C6730D8L,0x0F8BA47DL,0x1BCD7511L,0x0F8BA47DL,0x5C6730D8L,7L,0L,9L,0x2A3ED089L},{7L,0x5C6730D8L,0x0F8BA47DL,0x1BCD7511L,0x0F8BA47DL,0x5C6730D8L,7L,0L,9L,0x2A3ED089L},{7L,0x5C6730D8L,0x0F8BA47DL,0x1BCD7511L,0x0F8BA47DL,0x5C6730D8L,7L,0L,9L,0x2A3ED089L}};
        uint16_t *l_463 = (void*)0;
        int64_t ***l_632[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t ****l_631 = &l_632[7];
        uint8_t l_634[3];
        uint32_t l_665[10];
        int i, j;
        for (i = 0; i < 9; i++)
            l_343[i] = (void*)0;
        for (i = 0; i < 3; i++)
            l_634[i] = 4UL;
        for (i = 0; i < 10; i++)
            l_665[i] = 0xD36B7F73L;
        if (l_252[0])
        { /* block id: 123 */
            uint16_t *l_333 = (void*)0;
            uint16_t *l_334 = &p_1678->g_92;
            int32_t l_337 = 6L;
            uint32_t l_348[7] = {0x594AA72AL,1UL,0x594AA72AL,0x594AA72AL,1UL,0x594AA72AL,0x594AA72AL};
            int32_t l_390 = 0x10661155L;
            int32_t l_392 = 1L;
            int32_t l_393[6][3] = {{3L,3L,3L},{3L,3L,3L},{3L,3L,3L},{3L,3L,3L},{3L,3L,3L},{3L,3L,3L}};
            uint64_t **l_426[5];
            int16_t **l_436 = &p_1678->g_221[0];
            uint32_t *l_449 = &p_1678->g_133;
            int32_t *l_454 = &l_403[1][3];
            int i, j;
            for (i = 0; i < 5; i++)
                l_426[i] = &p_1678->g_190;
            for (p_45 = 0; (p_45 <= 7); p_45 += 1)
            { /* block id: 126 */
                int16_t *l_288 = &p_1678->g_75[0][2][1];
                int32_t l_315 = 0x65E2D772L;
                int64_t **l_317 = &p_1678->g_64;
                int8_t *l_372 = (void*)0;
                int32_t l_385 = 0x3E10E968L;
                int32_t l_386 = 0x43159349L;
                int32_t l_395 = 0L;
                int32_t l_398 = (-6L);
                int32_t l_399[3][6] = {{0x070268E8L,1L,0x5782D130L,0x61132319L,1L,0x61132319L},{0x070268E8L,1L,0x5782D130L,0x61132319L,1L,0x61132319L},{0x070268E8L,1L,0x5782D130L,0x61132319L,1L,0x61132319L}};
                uint8_t l_405 = 0xDDL;
                int i, j;
                if ((((*p_1678->g_190) < (safe_add_func_int16_t_s_s((*p_1678->g_222), (p_46 && ((*l_288) |= (*p_1678->g_222)))))) || 0L))
                { /* block id: 128 */
                    int32_t l_319 = 0x5A2389F4L;
                    int32_t *l_323 = &l_315;
                    uint16_t *l_329 = &p_1678->g_92;
                    uint16_t **l_328[2];
                    int8_t *l_338 = &p_1678->g_247;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_328[i] = &l_329;
                    l_289--;
                    for (p_46 = 0; (p_46 <= 7); p_46 += 1)
                    { /* block id: 132 */
                        uint8_t *l_303 = &p_1678->g_259;
                        int8_t *l_310 = (void*)0;
                        int8_t *l_311[9][10] = {{&l_249[(p_46 + 1)],&p_1678->g_247,&l_249[8],(void*)0,&l_249[8],&p_1678->g_247,&l_249[(p_46 + 1)],&l_249[2],&l_249[8],&l_249[2]},{&l_249[(p_46 + 1)],&p_1678->g_247,&l_249[8],(void*)0,&l_249[8],&p_1678->g_247,&l_249[(p_46 + 1)],&l_249[2],&l_249[8],&l_249[2]},{&l_249[(p_46 + 1)],&p_1678->g_247,&l_249[8],(void*)0,&l_249[8],&p_1678->g_247,&l_249[(p_46 + 1)],&l_249[2],&l_249[8],&l_249[2]},{&l_249[(p_46 + 1)],&p_1678->g_247,&l_249[8],(void*)0,&l_249[8],&p_1678->g_247,&l_249[(p_46 + 1)],&l_249[2],&l_249[8],&l_249[2]},{&l_249[(p_46 + 1)],&p_1678->g_247,&l_249[8],(void*)0,&l_249[8],&p_1678->g_247,&l_249[(p_46 + 1)],&l_249[2],&l_249[8],&l_249[2]},{&l_249[(p_46 + 1)],&p_1678->g_247,&l_249[8],(void*)0,&l_249[8],&p_1678->g_247,&l_249[(p_46 + 1)],&l_249[2],&l_249[8],&l_249[2]},{&l_249[(p_46 + 1)],&p_1678->g_247,&l_249[8],(void*)0,&l_249[8],&p_1678->g_247,&l_249[(p_46 + 1)],&l_249[2],&l_249[8],&l_249[2]},{&l_249[(p_46 + 1)],&p_1678->g_247,&l_249[8],(void*)0,&l_249[8],&p_1678->g_247,&l_249[(p_46 + 1)],&l_249[2],&l_249[8],&l_249[2]},{&l_249[(p_46 + 1)],&p_1678->g_247,&l_249[8],(void*)0,&l_249[8],&p_1678->g_247,&l_249[(p_46 + 1)],&l_249[2],&l_249[8],&l_249[2]}};
                        int32_t l_312 = 0x010E22B2L;
                        uint16_t *l_316 = &p_1678->g_126;
                        int32_t **l_321[6][10][4] = {{{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320}},{{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320}},{{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320}},{{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320}},{{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320}},{{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320},{&p_1678->g_98[0][7],&l_320,(void*)0,&l_320}}};
                        int i, j, k;
                        l_322 = l_320;
                        (*p_1678->g_97) = l_323;
                    }
                    (*l_322) &= (safe_lshift_func_uint16_t_u_u(p_1678->g_266.f5, 13));
                    (*l_323) &= ((p_1678->g_326[0][0] == l_328[1]) | (safe_rshift_func_int8_t_s_s(((l_333 = ((l_302 ^ 0UL) , (p_1678->g_332 = &p_1678->g_126))) != l_334), ((*l_338) = (((safe_lshift_func_uint8_t_u_u(0UL, 6)) | (((*p_1678->g_196) = (-1L)) ^ l_337)) || p_1678->g_233[3].f0)))));
                }
                else
                { /* block id: 146 */
                    struct S1 **l_341 = &p_1678->g_339;
                    p_1678->g_342 = ((*l_341) = p_1678->g_339);
                }
                if ((((*l_322) = (l_343[5] == ((l_252[2] != (((*p_1678->g_222) |= ((l_315 == (*l_320)) ^ (((void*)0 != &p_1678->g_339) > (((*l_320) , p_1678->g_172) , (((safe_add_func_int32_t_s_s(((0L < l_252[0]) > (-1L)), p_45)) || l_348[0]) == (*p_1678->g_64)))))) != 0x1C1FL)) , (void*)0))) , 0x28170263L))
                { /* block id: 152 */
                    uint64_t *l_353 = &p_1678->g_318.f6;
                    uint8_t *l_367[3];
                    int32_t l_371 = 0x1DD08DC8L;
                    struct S0 l_373[6][10][4] = {{{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}}},{{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}}},{{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}}},{{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}}},{{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}}},{{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}},{{-4L,4L,-6L,0xE572716CL,-1L,0UL,1UL},{0x7C7EE2F9L,0x705AA96F9A89420FL,5L,4294967294UL,8L,0xF4B49EEAB2714906L,0x8152AACB93179BC4L},{0x38B8B2C4L,0L,0x0DF0CABEL,0UL,0L,0x1304D4EB38D698F9L,1UL},{-8L,-1L,0x400852E2L,4294967294UL,0x26E524EDL,6UL,0x85653331D7ECC63AL}}}};
                    uint64_t l_387 = 7UL;
                    int32_t l_397[3][1][9] = {{{0x6E9763D0L,(-1L),3L,(-1L),(-1L),(-1L),3L,(-1L),0x6E9763D0L}},{{0x6E9763D0L,(-1L),3L,(-1L),(-1L),(-1L),3L,(-1L),0x6E9763D0L}},{{0x6E9763D0L,(-1L),3L,(-1L),(-1L),(-1L),3L,(-1L),0x6E9763D0L}}};
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_367[i] = &p_1678->g_259;
                    if (p_46)
                        break;
                    (*l_322) = (l_315 &= (*p_1678->g_156));
                    for (p_1678->g_266.f1 = 7; (p_1678->g_266.f1 >= 0); p_1678->g_266.f1 -= 1)
                    { /* block id: 158 */
                        int8_t l_358 = 0x04L;
                        uint64_t **l_359 = &p_1678->g_190;
                        uint32_t *l_360[6] = {&p_1678->g_133,&p_1678->g_133,&p_1678->g_133,&p_1678->g_133,&p_1678->g_133,&p_1678->g_133};
                        uint8_t *l_365[8][6] = {{(void*)0,&p_1678->g_259,&p_1678->g_266.f4,&p_1678->g_266.f4,&p_1678->g_266.f4,(void*)0},{(void*)0,&p_1678->g_259,&p_1678->g_266.f4,&p_1678->g_266.f4,&p_1678->g_266.f4,(void*)0},{(void*)0,&p_1678->g_259,&p_1678->g_266.f4,&p_1678->g_266.f4,&p_1678->g_266.f4,(void*)0},{(void*)0,&p_1678->g_259,&p_1678->g_266.f4,&p_1678->g_266.f4,&p_1678->g_266.f4,(void*)0},{(void*)0,&p_1678->g_259,&p_1678->g_266.f4,&p_1678->g_266.f4,&p_1678->g_266.f4,(void*)0},{(void*)0,&p_1678->g_259,&p_1678->g_266.f4,&p_1678->g_266.f4,&p_1678->g_266.f4,(void*)0},{(void*)0,&p_1678->g_259,&p_1678->g_266.f4,&p_1678->g_266.f4,&p_1678->g_266.f4,(void*)0},{(void*)0,&p_1678->g_259,&p_1678->g_266.f4,&p_1678->g_266.f4,&p_1678->g_266.f4,(void*)0}};
                        int32_t l_366[5][7][4] = {{{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L}},{{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L}},{{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L}},{{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L}},{{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L},{0x1C3FDBF1L,0L,0x1CE46C20L,1L}}};
                        int i, j, k;
                        (*l_322) |= (((((p_46 & (p_1678->g_133 = ((0x3CL && ((safe_mod_func_uint8_t_u_u((0x3882F068L <= (l_353 != ((*l_359) = (*p_1678->g_189)))), (-4L))) >= (-1L))) == p_1678->g_92))) | p_1678->g_244[1]) <= l_315) | 0L) != p_46);
                        (*l_322) = (safe_mul_func_uint16_t_u_u(((l_366[1][4][3] = (safe_mul_func_uint8_t_u_u(255UL, l_252[0]))) , ((l_367[0] == l_368) || (safe_lshift_func_uint16_t_u_s(((l_315 = (((l_371 = p_1678->g_92) < (l_372 == (void*)0)) < FAKE_DIVERGE(p_1678->local_0_offset, get_local_id(0), 10))) & (p_45 ^ (((~((0x0F1AD99FL > l_358) < p_46)) >= (*l_322)) <= (*p_1678->g_327)))), 14)))), l_358));
                        (*l_322) &= (l_373[3][2][0] , l_366[1][4][3]);
                    }
                    if (((**p_1678->g_189) ^ (p_1678->g_266.f1 > (((l_249[1] || 3UL) | ((safe_mod_func_int32_t_s_s((((((-7L) != ((safe_div_func_int16_t_s_s(((*l_288) = (((*p_1678->g_332) || 65530UL) | (l_373[3][2][0].f2 , (safe_lshift_func_uint8_t_u_u(((*l_368) ^= ((1UL | p_45) <= p_46)), 1))))), 0x0295L)) == (*l_322))) != (*l_320)) != l_373[3][2][0].f6) | p_46), p_46)) >= (*l_320))) != GROUP_DIVERGE(1, 1)))))
                    { /* block id: 170 */
                        int32_t *l_382 = &p_1678->g_157;
                        (*p_1678->g_383) = l_382;
                        (*l_382) = (-1L);
                    }
                    else
                    { /* block id: 173 */
                        int32_t *l_384[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_384[i] = &l_315;
                        l_387--;
                        --l_405;
                        l_315 = l_373[3][2][0].f0;
                        if (p_1678->g_6)
                            goto lbl_408;
                    }
                }
                else
                { /* block id: 179 */
                    uint64_t l_411 = 18446744073709551615UL;
                    int32_t *l_412 = &p_1678->g_318.f0;
                    if ((p_46 && (safe_mod_func_int32_t_s_s(l_315, ((0UL <= (((*l_288) ^= (((*l_412) = ((((l_411 != p_1678->g_233[3].f0) , (-10L)) != 7UL) , (*l_320))) , (safe_lshift_func_uint8_t_u_s((safe_div_func_uint16_t_u_u((p_1678->g_417[0][3] <= (*l_322)), (*p_1678->g_332))), p_1678->g_266.f1)))) == p_46)) || (*p_1678->g_64))))))
                    { /* block id: 182 */
                        int8_t *l_427 = &p_1678->g_340.f1;
                        int32_t l_430 = 0x22D62BFDL;
                        int32_t *l_435 = &l_430;
                        int16_t ***l_438 = &l_343[5];
                        (*l_435) = ((*l_320) = (0L <= ((safe_rshift_func_uint8_t_u_s((safe_sub_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(l_348[0], ((((p_46 & (safe_mul_func_int8_t_s_s(((*l_427) &= ((~((void*)0 != l_426[0])) <= p_45)), (safe_lshift_func_int8_t_s_s(l_430, p_1678->g_172.f3))))) & ((safe_div_func_uint32_t_u_u((p_45 == p_1678->g_157), p_1678->g_3)) , (*l_320))) <= p_1678->g_244[1]) == (-5L)))), p_1678->g_180)), p_45)) || (**p_1678->g_189))));
                        (*l_438) = l_436;
                        if ((*p_1678->g_156))
                            break;
                    }
                    else
                    { /* block id: 188 */
                        (*l_320) |= l_385;
                    }
                }
                for (p_1678->g_180 = 1; (p_1678->g_180 <= 7); p_1678->g_180 += 1)
                { /* block id: 194 */
                    uint32_t l_443 = 4294967287UL;
                    int32_t *l_450 = &p_1678->g_318.f2;
                    (*l_322) |= (((safe_mod_func_int32_t_s_s((safe_add_func_uint16_t_u_u((0xF840L == l_443), (p_1678->g_318 , ((safe_div_func_int8_t_s_s((l_446 == (void*)0), (safe_div_func_int16_t_s_s((0L <= (((!(((((*l_450) = (l_322 != l_449)) , (safe_rshift_func_uint16_t_u_u(((p_1678->g_233[3].f0 , p_1678->g_433[5][1][2]) == l_449), l_392))) > p_45) , l_443)) | l_443) , FAKE_DIVERGE(p_1678->group_1_offset, get_group_id(1), 10))), p_46)))) < 0xA6L)))), l_390)) || 0xE3L) || p_1678->g_133);
                    if (l_453)
                        continue;
                    for (l_289 = 0; (l_289 <= 7); l_289 += 1)
                    { /* block id: 200 */
                        l_454 = &l_390;
                        if (p_46)
                            break;
                    }
                }
            }
        }
        else
        { /* block id: 206 */
            struct S0 l_457 = {1L,0x4C2572ECC7451808L,0x09E47E0AL,4294967295UL,0x74B83E5FL,0x8342A8BBA4BCF99BL,18446744073709551613UL};
            int8_t *l_465[3];
            int32_t l_466[10][6];
            int32_t l_473 = (-3L);
            int64_t **l_510 = (void*)0;
            struct S1 **l_515 = (void*)0;
            int32_t l_541 = (-4L);
            int64_t l_687 = 0x61540F62BFFB0A73L;
            int32_t *l_700 = &p_1678->g_157;
            int64_t *****l_725 = &l_631;
            int i, j;
            for (i = 0; i < 3; i++)
                l_465[i] = &p_1678->g_340.f1;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 6; j++)
                    l_466[i][j] = (-7L);
            }
            l_466[3][0] ^= (((*p_1678->g_332) == (safe_rshift_func_int8_t_s_s(((l_457 , (p_1678->g_247 |= ((p_1678->g_172 , (safe_mod_func_int16_t_s_s((l_457 , ((*p_1678->g_222) = (((*l_320) = (safe_mul_func_int16_t_s_s(p_46, (((void*)0 != l_462) < (l_463 == l_464))))) > (*l_322)))), p_46))) == (-4L)))) != p_45), p_45))) & 1L);
            if (p_46)
            { /* block id: 211 */
                int32_t *l_467 = &l_402;
                uint64_t **l_484 = &p_1678->g_190;
                uint64_t ***l_483 = &l_484;
                uint8_t l_499 = 0x2BL;
                uint64_t l_500 = 0x2409E4127F652F4AL;
                int64_t ***l_549 = &l_510;
                int64_t ****l_550 = &l_549;
                l_467 = &l_466[3][0];
                if (l_466[6][1])
                { /* block id: 213 */
                    uint32_t l_472 = 4294967295UL;
                    int64_t *l_480 = &l_252[0];
                    int64_t *l_485 = (void*)0;
                    int64_t *l_486 = &p_1678->g_50;
                    int32_t **l_496 = &p_1678->g_98[1][6];
                    int32_t ***l_495 = &l_496;
                    int64_t ***l_507 = &l_506;
                    (*l_320) &= (safe_sub_func_int8_t_s_s((safe_add_func_int64_t_s_s(((l_472 = l_457.f2) | (l_466[4][0] & (l_473 = ((**p_1678->g_189) == (*p_1678->g_64))))), ((safe_sub_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((((p_1678->g_478[3] != (void*)0) == ((*l_480) |= (*p_1678->g_64))) > ((*p_1678->g_222) = (safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (((*l_486) = (((((void*)0 == l_483) , p_46) , (*p_1678->g_64)) , 0L)) < 0x7BAF51B4118A025EL))))), 0x43L)), p_46)) & p_1678->g_318.f1))), 255UL));
                    if (((*l_467) && (safe_mod_func_uint32_t_u_u((GROUP_DIVERGE(2, 1) > FAKE_DIVERGE(p_1678->local_2_offset, get_local_id(2), 10)), (safe_add_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(((FAKE_DIVERGE(p_1678->group_2_offset, get_group_id(2), 10) <= (p_1678->g_266.f1 ^ ((((((*p_1678->g_64) , l_457.f0) && (safe_mul_func_uint8_t_u_u((l_500 = ((GROUP_DIVERGE(1, 1) | (((*p_1678->g_222) = ((l_249[2] >= 0xADL) || (((*l_495) = &p_1678->g_98[1][4]) == (void*)0))) > ((safe_sub_func_int32_t_s_s(6L, l_499)) , (*l_320)))) <= (*l_322))), p_45))) >= 65535UL) , 0x0AL) != p_45))) , 0x05C38FDFED9DFB67L), 1UL)), 1L))))))
                    { /* block id: 223 */
                        uint32_t l_501[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_501[i] = 0xBE258DC7L;
                        return l_501[0];
                    }
                    else
                    { /* block id: 225 */
                        struct S3 *l_503 = &p_1678->g_502;
                        (*l_503) = p_1678->g_502;
                    }
                    (*l_322) = (safe_mul_func_uint16_t_u_u(((*l_467) >= ((~((0x3EL || ((p_1678->g_404 = (~(((*l_507) = l_506) != ((safe_lshift_func_uint8_t_u_u(p_1678->g_259, 0)) , l_510)))) & ((safe_add_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((l_515 != &p_1678->g_339), 8UL)), ((*p_1678->g_64) < FAKE_DIVERGE(p_1678->local_1_offset, get_local_id(1), 10)))) & p_45))) , p_1678->g_172.f1)) > (-10L))), p_45));
                }
                else
                { /* block id: 231 */
                    int32_t l_538 = 0L;
                    for (p_1678->g_318.f3 = 0; (p_1678->g_318.f3 <= 2); p_1678->g_318.f3 += 1)
                    { /* block id: 234 */
                        struct S2 *l_517 = &p_1678->g_266;
                        struct S2 **l_516 = &l_517;
                        int32_t *l_518 = &l_401;
                        uint64_t *l_525 = &p_1678->g_502.f4;
                        uint64_t *l_539 = &p_1678->g_318.f6;
                        uint8_t l_540 = 0xADL;
                        volatile struct S3 *l_543 = &p_1678->g_172;
                        int i;
                        (*l_320) &= ((void*)0 != p_1678->g_193[p_1678->g_318.f3]);
                        (*l_516) = (void*)0;
                        l_518 = l_467;
                        (*l_543) = (((safe_sub_func_int8_t_s_s((l_284 = ((((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((*p_1678->g_190) ^ ((*l_525)--)), (*l_322))), ((*p_1678->g_332) = (((*p_1678->g_222) = (((l_457 , &l_517) == p_1678->g_528) ^ (((*l_368) &= (((void*)0 == &p_1678->g_193[2]) > (((*l_320) || ((safe_sub_func_uint64_t_u_u(((*l_539) ^= (safe_rshift_func_uint8_t_u_s((((safe_mod_func_int32_t_s_s((p_46 <= 0x615A6EFB24E5484DL), p_46)) > l_538) > (*l_467)), p_46))), 1UL)) > 0x2B1CD94BL)) == 255UL))) != p_45))) < p_45)))) >= 1L) & l_540) | p_46)), l_541)) >= p_45) , p_1678->g_542);
                    }
                }
                (*l_467) = (safe_add_func_uint32_t_u_u(0UL, ((p_1678->g_546 , (*p_1678->g_190)) || p_46)));
                (*l_467) = ((p_1678->g_502.f2 , (p_1678->g_547 , p_1678->g_548)) != ((*l_550) = l_549));
            }
            else
            { /* block id: 250 */
                volatile struct S3 *l_552 = &p_1678->g_547;
                int32_t l_579 = 0x61A3C661L;
                int32_t *l_595 = &l_576.f2;
                uint16_t l_600 = 0x53E0L;
                int32_t l_685[9] = {(-1L),0x347D043FL,(-1L),(-1L),0x347D043FL,(-1L),(-1L),0x347D043FL,(-1L)};
                uint32_t l_688 = 5UL;
                int64_t **l_727 = (void*)0;
                int i;
                (*l_552) = p_1678->g_551;
                if ((((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_int8_t_s_s(l_284, (l_400 &= (*l_320)))) || (l_466[3][0] = ((*l_368) ^= (safe_mul_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((safe_mul_func_int16_t_s_s((safe_unary_minus_func_uint16_t_u((safe_div_func_uint16_t_u_u(((((safe_lshift_func_uint8_t_u_s((safe_div_func_uint64_t_u_u(((safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(((l_576 , p_1678->g_577) , p_46), l_578)) <= ((void*)0 != &p_45)), 3)), p_46)) < l_579), 0x08579C75A1484AD9L)), p_46)) , 0x4E63CD95F80D0D37L) , (*l_320)) != p_46), p_45)))), FAKE_DIVERGE(p_1678->global_0_offset, get_global_id(0), 10))) && GROUP_DIVERGE(1, 1)), l_457.f0)), p_46))))), 5)) == l_457.f3) > 0x260BE2BE675D9B69L))
                { /* block id: 255 */
                    uint16_t l_596 = 0UL;
                    int32_t l_597[6][7][6] = {{{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL}},{{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL}},{{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL}},{{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL}},{{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL}},{{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL},{(-1L),(-1L),2L,0x0A1D418BL,(-1L),0x0A1D418BL}}};
                    struct S3 *l_626 = &p_1678->g_502;
                    struct S3 **l_625 = &l_626;
                    int64_t *****l_627 = (void*)0;
                    int64_t ***l_630 = (void*)0;
                    int64_t ****l_629 = &l_630;
                    int64_t *****l_628 = &l_629;
                    int32_t **l_699[3][4] = {{&p_1678->g_98[1][2],(void*)0,&p_1678->g_98[1][2],&p_1678->g_98[1][2]},{&p_1678->g_98[1][2],(void*)0,&p_1678->g_98[1][2],&p_1678->g_98[1][2]},{&p_1678->g_98[1][2],(void*)0,&p_1678->g_98[1][2],&p_1678->g_98[1][2]}};
                    int i, j, k;
                    if (((l_473 = ((!(l_597[4][5][3] &= ((((safe_rshift_func_uint8_t_u_u(p_1678->g_266.f0, 7)) == ((safe_lshift_func_int8_t_s_u((((*l_322) = p_45) < (GROUP_DIVERGE(0, 1) , p_46)), (safe_lshift_func_uint8_t_u_u(l_457.f2, (l_466[0][3] ^= ((((*l_368) &= (((safe_add_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((void*)0 != l_592), ((((*l_464) = l_576.f6) || ((safe_rshift_func_uint8_t_u_u((l_595 == &l_541), 0)) & p_45)) , (*p_1678->g_332)))), 0x20L)), (*p_1678->g_332))) != 0x3743L) == l_576.f5)) >= p_1678->g_75[0][1][2]) | l_596)))))) != p_1678->g_140[8][7])) > l_457.f6) != p_45))) && (-1L))) != (*p_1678->g_332)))
                    { /* block id: 262 */
                        (*l_322) ^= ((void*)0 != l_552);
                        (*l_322) = ((FAKE_DIVERGE(p_1678->global_0_offset, get_global_id(0), 10) > (l_473 = ((p_46 , (*p_1678->g_64)) , ((safe_lshift_func_uint8_t_u_u((FAKE_DIVERGE(p_1678->group_0_offset, get_group_id(0), 10) || (*p_1678->g_332)), 0)) ^ (p_1678->g_404 = (l_466[3][5] = l_600)))))) || ((*p_1678->g_222) = (safe_mod_func_int64_t_s_s(0x2FAF1345D3367CDEL, (safe_lshift_func_int8_t_s_u(0x26L, (safe_sub_func_uint32_t_u_u((!(safe_mod_func_uint32_t_u_u(((safe_mod_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u((((safe_lshift_func_int8_t_s_s((p_46 && (safe_rshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(l_579, ((safe_add_func_int32_t_s_s((safe_div_func_uint32_t_u_u(p_1678->g_172.f5, 9UL)), 0UL)) , (*l_320)))), p_45))), p_46)) && (*l_320)) == p_45), l_579)), 0x2617D945L)) > (*l_322)), 0x6BDDA15AL))), (*l_320)))))))));
                        (*l_320) = (safe_lshift_func_uint16_t_u_u(l_600, 2));
                    }
                    else
                    { /* block id: 270 */
lbl_661:
                        (*l_322) |= (*p_1678->g_196);
                    }
                    if (((((*l_625) = &p_1678->g_502) != &p_1678->g_502) && ((*l_368) = (((*l_628) = (void*)0) == l_631))))
                    { /* block id: 276 */
                        int16_t l_633 = (-8L);
                        int32_t *l_660 = &l_394;
                        int32_t *l_662 = &l_597[0][4][1];
                        int32_t *l_663 = &l_403[1][3];
                        int32_t *l_664[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_664[i] = &l_251[4][1];
                        l_634[0]++;
                        (*l_660) &= (l_596 && (safe_lshift_func_int16_t_s_u(((safe_mod_func_uint16_t_u_u(((*l_464) = (FAKE_DIVERGE(p_1678->local_2_offset, get_local_id(2), 10) && ((safe_div_func_int16_t_s_s((safe_div_func_int64_t_s_s(((((safe_div_func_uint16_t_u_u((p_1678->g_647 , ((safe_mod_func_int32_t_s_s(((*l_322) = (safe_div_func_int8_t_s_s(((p_46 = (l_579 > (safe_add_func_int8_t_s_s((((((2UL && (((((*l_320) = ((*p_1678->g_222) = 0x506CL)) <= (((void*)0 == l_654) & (((safe_rshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s(((*p_1678->g_64) | p_46), (*p_1678->g_327))), 2)) , p_46) > (*p_1678->g_332)))) | l_466[4][1]) && GROUP_DIVERGE(2, 1))) <= l_597[4][5][3]) & l_457.f2) <= p_1678->g_502.f0) || 0x5AL), p_1678->g_92)))) , (-10L)), p_1678->g_577.f2))), p_45)) < (*p_1678->g_332))), 65535UL)) , p_1678->g_172.f1) || 5UL) && p_1678->g_266.f1), 0x2F292A4080C19770L)), (*p_1678->g_332))) ^ 0x7FD3L))), l_600)) ^ p_45), (*p_1678->g_332))));
                        if (l_289)
                            goto lbl_661;
                        --l_665[1];
                    }
                    else
                    { /* block id: 286 */
                        int64_t l_670 = 7L;
                        int32_t l_677[2];
                        int32_t *l_678 = &l_579;
                        int32_t *l_679 = (void*)0;
                        int32_t *l_680 = &l_403[0][8];
                        int32_t *l_681 = &l_403[1][3];
                        int32_t *l_682 = &l_400;
                        int32_t *l_683[10][6][2] = {{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}},{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}},{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}},{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}},{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}},{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}},{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}},{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}},{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}},{{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0},{&l_473,(void*)0}}};
                        int32_t l_686 = 0x4E29605EL;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_677[i] = 0x226A18B7L;
lbl_691:
                        l_677[0] &= ((*l_320) = ((l_576.f1 == (safe_mod_func_int8_t_s_s(l_670, ((*l_368)++)))) & (safe_rshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(p_45, FAKE_DIVERGE(p_1678->group_1_offset, get_group_id(1), 10))), 3))));
                        l_688--;
                        if (l_457.f0)
                            goto lbl_691;
                    }
                    (*l_322) = ((&l_685[0] == (l_700 = &l_403[1][3])) < 1UL);
                }
                else
                { /* block id: 296 */
                    int32_t *l_704[10][9] = {{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473},{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473},{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473},{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473},{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473},{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473},{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473},{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473},{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473},{&p_1678->g_157,&l_403[1][3],&p_1678->g_6,&l_251[4][1],&p_1678->g_6,&l_403[1][3],&p_1678->g_157,&p_1678->g_434[0][0],&l_473}};
                    int32_t **l_705 = &l_320;
                    int i, j;
                    for (l_578 = 0; (l_578 >= (-30)); l_578 = safe_sub_func_uint64_t_u_u(l_578, 5))
                    { /* block id: 299 */
                        return p_45;
                    }
                    (*l_705) = (p_1678->g_703 , l_704[7][6]);
                }
                for (p_1678->g_647.f5 = 5; (p_1678->g_647.f5 < 19); p_1678->g_647.f5 = safe_add_func_uint64_t_u_u(p_1678->g_647.f5, 4))
                { /* block id: 306 */
                    int32_t **l_708 = &p_1678->g_98[1][4];
                    int64_t *****l_726 = &l_631;
                    int32_t l_729 = 0x03510934L;
                    (*l_708) = &l_251[3][1];
                    l_729 |= (((safe_mul_func_int8_t_s_s((safe_div_func_int64_t_s_s(((*p_1678->g_64) = 0x66D4AE8FFA6462B9L), (safe_lshift_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_mul_func_int8_t_s_s(6L, (p_1678->g_719[3] || ((l_685[7] >= ((p_1678->g_728 = (safe_rshift_func_uint8_t_u_u(((*l_322) , ((safe_sub_func_int16_t_s_s((safe_unary_minus_func_uint8_t_u(((*l_700) &= (((p_1678->g_318 , p_45) , &p_1678->g_64) == (l_727 = ((l_725 != l_726) , l_506)))))), p_45)) | p_45)), 2))) , p_45)) >= 0x46829344FAC24B56L)))), 0x388C2BFF2E29D9C4L)), 5)))), p_1678->g_6)) <= (**p_1678->g_189)) ^ (-2L));
                    return p_1678->g_502.f0;
                }
            }
            for (l_396 = 0; (l_396 <= 0); l_396 += 1)
            { /* block id: 318 */
                int32_t *l_730 = &p_1678->g_157;
                int32_t *l_731[9][1][8] = {{{&l_402,&l_402,(void*)0,&l_466[3][0],&l_466[3][0],&l_466[3][0],(void*)0,&l_402}},{{&l_402,&l_402,(void*)0,&l_466[3][0],&l_466[3][0],&l_466[3][0],(void*)0,&l_402}},{{&l_402,&l_402,(void*)0,&l_466[3][0],&l_466[3][0],&l_466[3][0],(void*)0,&l_402}},{{&l_402,&l_402,(void*)0,&l_466[3][0],&l_466[3][0],&l_466[3][0],(void*)0,&l_402}},{{&l_402,&l_402,(void*)0,&l_466[3][0],&l_466[3][0],&l_466[3][0],(void*)0,&l_402}},{{&l_402,&l_402,(void*)0,&l_466[3][0],&l_466[3][0],&l_466[3][0],(void*)0,&l_402}},{{&l_402,&l_402,(void*)0,&l_466[3][0],&l_466[3][0],&l_466[3][0],(void*)0,&l_402}},{{&l_402,&l_402,(void*)0,&l_466[3][0],&l_466[3][0],&l_466[3][0],(void*)0,&l_402}},{{&l_402,&l_402,(void*)0,&l_466[3][0],&l_466[3][0],&l_466[3][0],(void*)0,&l_402}}};
                int i, j, k;
                l_732++;
                (*p_1678->g_736) = p_1678->g_735;
                for (p_1678->g_502.f3 = 0; (p_1678->g_502.f3 <= 0); p_1678->g_502.f3 += 1)
                { /* block id: 323 */
                    int16_t l_742[9] = {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)};
                    int32_t l_743 = 1L;
                    int32_t l_744 = 0x33E486EAL;
                    int32_t l_746 = 0x5CC2F597L;
                    struct S0 *l_750 = &p_1678->g_318;
                    int8_t *l_760 = &p_1678->g_404;
                    int i;
                    for (p_46 = 0; (p_46 <= 0); p_46 += 1)
                    { /* block id: 326 */
                        int i, j, k;
                        return p_1678->g_75[p_46][l_396][p_46];
                    }
                    p_1678->g_736 = &p_1678->g_547;
                    for (p_1678->g_703.f0 = 1; (p_1678->g_703.f0 <= 5); p_1678->g_703.f0 += 1)
                    { /* block id: 332 */
                        int i, j, k;
                        return p_1678->g_75[p_1678->g_502.f3][l_396][(p_1678->g_502.f3 + 2)];
                    }
                    for (p_1678->g_340.f1 = 0; (p_1678->g_340.f1 <= 0); p_1678->g_340.f1 += 1)
                    { /* block id: 337 */
                        int32_t l_737 = (-8L);
                        int32_t l_738 = 3L;
                        int32_t l_739 = 0x01D2F62EL;
                        int32_t l_740 = 8L;
                        int32_t l_741[10] = {0x493B1FA2L,6L,0x493B1FA2L,0x493B1FA2L,6L,0x493B1FA2L,0x493B1FA2L,6L,0x493B1FA2L,0x493B1FA2L};
                        struct S0 **l_751 = &l_750;
                        uint64_t *l_753[5] = {&p_1678->g_502.f0,&p_1678->g_502.f0,&p_1678->g_502.f0,&p_1678->g_502.f0,&p_1678->g_502.f0};
                        uint32_t *l_765 = &l_665[8];
                        int16_t l_766 = 0x38E5L;
                        int i, j, k;
                        --p_1678->g_747;
                        l_741[8] = 0L;
                        (*l_751) = l_750;
                        (*l_322) ^= ((p_1678->g_752 , l_753[0]) != ((safe_lshift_func_uint16_t_u_s(((((safe_add_func_int32_t_s_s((safe_rshift_func_int8_t_s_s(((*l_760) = (&p_1678->g_247 == l_760)), (l_766 = (((safe_rshift_func_int8_t_s_u(p_1678->g_75[p_1678->g_340.f1][p_1678->g_340.f1][(p_1678->g_502.f3 + 1)], 2)) | p_45) , ((safe_add_func_uint32_t_u_u((0x5A495E56L > ((*l_765) = p_46)), p_1678->g_318.f1)) == (*l_700)))))), 0x5ABD5B2BL)) ^ 0x71L) , p_46) == l_737), p_46)) , &p_46));
                    }
                }
            }
        }
    }
    else
    { /* block id: 349 */
        uint64_t l_767 = 18446744073709551609UL;
        struct S0 *l_768 = &l_576;
        int32_t l_776 = 0x102650EEL;
        int32_t l_781 = 0L;
        int32_t l_782[1][7][8] = {{{1L,1L,0L,(-6L),0x571D9BC8L,(-6L),0L,1L},{1L,1L,0L,(-6L),0x571D9BC8L,(-6L),0L,1L},{1L,1L,0L,(-6L),0x571D9BC8L,(-6L),0L,1L},{1L,1L,0L,(-6L),0x571D9BC8L,(-6L),0L,1L},{1L,1L,0L,(-6L),0x571D9BC8L,(-6L),0L,1L},{1L,1L,0L,(-6L),0x571D9BC8L,(-6L),0L,1L},{1L,1L,0L,(-6L),0x571D9BC8L,(-6L),0L,1L}}};
        int32_t l_784 = 0x25F9367DL;
        int16_t l_788[9] = {(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)};
        uint16_t *l_833 = &p_1678->g_180;
        uint16_t *l_834 = &p_1678->g_502.f3;
        int32_t **l_860 = &p_1678->g_98[0][2];
        int32_t l_865 = 8L;
        int16_t l_873 = (-1L);
        int8_t l_946 = 5L;
        int32_t *l_983 = &l_251[3][1];
        int i, j, k;
        for (p_1678->g_318.f4 = 0; (p_1678->g_318.f4 <= 0); p_1678->g_318.f4 += 1)
        { /* block id: 352 */
            int64_t l_773 = (-1L);
            int32_t l_783 = (-1L);
            int32_t l_785 = 0x2FF9FA84L;
            int32_t l_786[6][1][4] = {{{0x1B5B1E74L,(-4L),0x1B5B1E74L,0x1B5B1E74L}},{{0x1B5B1E74L,(-4L),0x1B5B1E74L,0x1B5B1E74L}},{{0x1B5B1E74L,(-4L),0x1B5B1E74L,0x1B5B1E74L}},{{0x1B5B1E74L,(-4L),0x1B5B1E74L,0x1B5B1E74L}},{{0x1B5B1E74L,(-4L),0x1B5B1E74L,0x1B5B1E74L}},{{0x1B5B1E74L,(-4L),0x1B5B1E74L,0x1B5B1E74L}}};
            int8_t l_858 = 0x01L;
            struct S0 l_881 = {0x3DB3F4BFL,0x628A712D2C9E59E3L,-5L,0UL,0x2F504414L,0UL,0x14961AB090042AF1L};
            struct S1 **l_896 = &l_446;
            int64_t *****l_972[4] = {&p_1678->g_955,&p_1678->g_955,&p_1678->g_955,&p_1678->g_955};
            int32_t *l_974 = &l_881.f0;
            int32_t **l_973 = &l_974;
            int i, j, k;
            if (l_767)
                break;
            (*p_1678->g_772) = l_768;
            for (p_1678->g_180 = 0; (p_1678->g_180 <= 0); p_1678->g_180 += 1)
            { /* block id: 357 */
                int32_t l_787 = 9L;
                int32_t l_789[2][8] = {{0x78C61E78L,(-5L),0x55818F11L,(-5L),0x78C61E78L,0x78C61E78L,(-5L),0x55818F11L},{0x78C61E78L,(-5L),0x55818F11L,(-5L),0x78C61E78L,0x78C61E78L,(-5L),0x55818F11L}};
                uint8_t l_792 = 0xC9L;
                struct S2 **l_802 = &l_655[7][0][1];
                uint64_t *l_820[2];
                uint64_t *l_823 = &p_1678->g_318.f5;
                uint64_t **l_822 = &l_823;
                int i, j;
                for (i = 0; i < 2; i++)
                    l_820[i] = &p_1678->g_244[1];
                if ((p_1678->g_434[p_1678->g_180][(p_1678->g_318.f4 + 3)] = p_1678->g_434[p_1678->g_180][(p_1678->g_318.f4 + 2)]))
                { /* block id: 359 */
                    int i, j;
                    return p_1678->g_434[p_1678->g_180][p_1678->g_180];
                }
                else
                { /* block id: 361 */
                    int32_t *l_774 = &l_745;
                    int32_t *l_775 = &l_251[3][1];
                    int32_t l_777 = 0x1200A770L;
                    int32_t *l_778 = &p_1678->g_434[0][0];
                    int32_t *l_779 = &l_251[3][1];
                    int32_t *l_780[3];
                    int64_t l_790 = 0L;
                    struct S0 l_795[7][8] = {{{0x7F3A9F38L,6L,0x283E9B51L,0x0A01D00DL,0x264D5232L,1UL,1UL},{0x2292CE4AL,0x5E1D36177E89C30BL,0x7D0E030BL,1UL,0x7F9E707DL,0x3D42B2AE90E13DFAL,0xE8CF075019B18426L},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL},{0x353ED933L,0x5A9226F0709ECDCCL,0x7670EB3BL,4UL,0x7FECF29DL,1UL,2UL},{0x5CC9EA7CL,0x07DFC2CBBA17641BL,0x0C8FA3F9L,0x8DDCD339L,5L,0UL,18446744073709551615UL},{-1L,0x36BEC665C8B2D6D5L,0x21F80398L,0x64AFBBE8L,0x4B266CE1L,8UL,0x898CC7E6138C23CDL},{-1L,0x01EDBCA65EBED77CL,0x70400729L,0x13284D46L,1L,18446744073709551613UL,1UL},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL}},{{0x7F3A9F38L,6L,0x283E9B51L,0x0A01D00DL,0x264D5232L,1UL,1UL},{0x2292CE4AL,0x5E1D36177E89C30BL,0x7D0E030BL,1UL,0x7F9E707DL,0x3D42B2AE90E13DFAL,0xE8CF075019B18426L},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL},{0x353ED933L,0x5A9226F0709ECDCCL,0x7670EB3BL,4UL,0x7FECF29DL,1UL,2UL},{0x5CC9EA7CL,0x07DFC2CBBA17641BL,0x0C8FA3F9L,0x8DDCD339L,5L,0UL,18446744073709551615UL},{-1L,0x36BEC665C8B2D6D5L,0x21F80398L,0x64AFBBE8L,0x4B266CE1L,8UL,0x898CC7E6138C23CDL},{-1L,0x01EDBCA65EBED77CL,0x70400729L,0x13284D46L,1L,18446744073709551613UL,1UL},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL}},{{0x7F3A9F38L,6L,0x283E9B51L,0x0A01D00DL,0x264D5232L,1UL,1UL},{0x2292CE4AL,0x5E1D36177E89C30BL,0x7D0E030BL,1UL,0x7F9E707DL,0x3D42B2AE90E13DFAL,0xE8CF075019B18426L},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL},{0x353ED933L,0x5A9226F0709ECDCCL,0x7670EB3BL,4UL,0x7FECF29DL,1UL,2UL},{0x5CC9EA7CL,0x07DFC2CBBA17641BL,0x0C8FA3F9L,0x8DDCD339L,5L,0UL,18446744073709551615UL},{-1L,0x36BEC665C8B2D6D5L,0x21F80398L,0x64AFBBE8L,0x4B266CE1L,8UL,0x898CC7E6138C23CDL},{-1L,0x01EDBCA65EBED77CL,0x70400729L,0x13284D46L,1L,18446744073709551613UL,1UL},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL}},{{0x7F3A9F38L,6L,0x283E9B51L,0x0A01D00DL,0x264D5232L,1UL,1UL},{0x2292CE4AL,0x5E1D36177E89C30BL,0x7D0E030BL,1UL,0x7F9E707DL,0x3D42B2AE90E13DFAL,0xE8CF075019B18426L},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL},{0x353ED933L,0x5A9226F0709ECDCCL,0x7670EB3BL,4UL,0x7FECF29DL,1UL,2UL},{0x5CC9EA7CL,0x07DFC2CBBA17641BL,0x0C8FA3F9L,0x8DDCD339L,5L,0UL,18446744073709551615UL},{-1L,0x36BEC665C8B2D6D5L,0x21F80398L,0x64AFBBE8L,0x4B266CE1L,8UL,0x898CC7E6138C23CDL},{-1L,0x01EDBCA65EBED77CL,0x70400729L,0x13284D46L,1L,18446744073709551613UL,1UL},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL}},{{0x7F3A9F38L,6L,0x283E9B51L,0x0A01D00DL,0x264D5232L,1UL,1UL},{0x2292CE4AL,0x5E1D36177E89C30BL,0x7D0E030BL,1UL,0x7F9E707DL,0x3D42B2AE90E13DFAL,0xE8CF075019B18426L},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL},{0x353ED933L,0x5A9226F0709ECDCCL,0x7670EB3BL,4UL,0x7FECF29DL,1UL,2UL},{0x5CC9EA7CL,0x07DFC2CBBA17641BL,0x0C8FA3F9L,0x8DDCD339L,5L,0UL,18446744073709551615UL},{-1L,0x36BEC665C8B2D6D5L,0x21F80398L,0x64AFBBE8L,0x4B266CE1L,8UL,0x898CC7E6138C23CDL},{-1L,0x01EDBCA65EBED77CL,0x70400729L,0x13284D46L,1L,18446744073709551613UL,1UL},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL}},{{0x7F3A9F38L,6L,0x283E9B51L,0x0A01D00DL,0x264D5232L,1UL,1UL},{0x2292CE4AL,0x5E1D36177E89C30BL,0x7D0E030BL,1UL,0x7F9E707DL,0x3D42B2AE90E13DFAL,0xE8CF075019B18426L},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL},{0x353ED933L,0x5A9226F0709ECDCCL,0x7670EB3BL,4UL,0x7FECF29DL,1UL,2UL},{0x5CC9EA7CL,0x07DFC2CBBA17641BL,0x0C8FA3F9L,0x8DDCD339L,5L,0UL,18446744073709551615UL},{-1L,0x36BEC665C8B2D6D5L,0x21F80398L,0x64AFBBE8L,0x4B266CE1L,8UL,0x898CC7E6138C23CDL},{-1L,0x01EDBCA65EBED77CL,0x70400729L,0x13284D46L,1L,18446744073709551613UL,1UL},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL}},{{0x7F3A9F38L,6L,0x283E9B51L,0x0A01D00DL,0x264D5232L,1UL,1UL},{0x2292CE4AL,0x5E1D36177E89C30BL,0x7D0E030BL,1UL,0x7F9E707DL,0x3D42B2AE90E13DFAL,0xE8CF075019B18426L},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL},{0x353ED933L,0x5A9226F0709ECDCCL,0x7670EB3BL,4UL,0x7FECF29DL,1UL,2UL},{0x5CC9EA7CL,0x07DFC2CBBA17641BL,0x0C8FA3F9L,0x8DDCD339L,5L,0UL,18446744073709551615UL},{-1L,0x36BEC665C8B2D6D5L,0x21F80398L,0x64AFBBE8L,0x4B266CE1L,8UL,0x898CC7E6138C23CDL},{-1L,0x01EDBCA65EBED77CL,0x70400729L,0x13284D46L,1L,18446744073709551613UL,1UL},{1L,6L,0x62058B3BL,1UL,6L,0xA01A5FDFC5C6DBA0L,18446744073709551607UL}}};
                    int32_t **l_806 = &l_775;
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_780[i] = &l_777;
                    l_792--;
                    if (p_45)
                        continue;
                    (*l_806) = &l_782[0][5][4];
                    for (p_1678->g_247 = 0; p_1678->g_247 < 6; p_1678->g_247 += 1)
                    {
                        p_1678->g_478[p_1678->g_247] = &p_1678->g_479;
                    }
                }
                (*p_1678->g_156) = ((safe_unary_minus_func_uint32_t_u((+(safe_lshift_func_uint16_t_u_u(((((((((p_1678->g_752.f4 > ((*p_1678->g_736) , p_45)) >= GROUP_DIVERGE(2, 1)) && ((safe_mod_func_uint32_t_u_u(p_46, (safe_add_func_uint32_t_u_u((safe_mod_func_int32_t_s_s(0L, p_45)), ((l_786[3][0][1] ^ (safe_sub_func_uint64_t_u_u(((**l_592) = ((safe_mul_func_int16_t_s_s((l_820[1] != ((*l_822) = (p_1678->g_821 = &p_46))), 0L)) == (*p_1678->g_190))), 1L))) | p_1678->g_551.f5))))) > (*p_1678->g_222))) , (-1L)) , l_788[7]) == 0x776DD40373BE9810L) , 0x7C9FE302A86ABC8AL) >= (*p_1678->g_64)), 1))))) >= p_45);
                return p_1678->g_140[2][7];
            }
            for (p_1678->g_340.f1 = 0; (p_1678->g_340.f1 >= 0); p_1678->g_340.f1 -= 1)
            { /* block id: 376 */
                uint64_t l_835 = 0xFB62E8BBC38CEE45L;
                int32_t l_846 = 0L;
                int32_t l_847[3][5][10] = {{{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)}},{{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)}},{{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)},{0x64744B26L,0x40B1D6CCL,(-4L),0x57023AB6L,(-4L),0x40B1D6CCL,0x64744B26L,0x7C5BB2B4L,(-2L),(-2L)}}};
                int8_t l_890 = 0L;
                int64_t *****l_907 = (void*)0;
                uint32_t ***l_919 = &p_1678->g_916;
                uint16_t l_938 = 0x885AL;
                uint32_t l_969 = 0x4BB90F81L;
                int i, j, k;
                if ((((safe_sub_func_int16_t_s_s((-1L), ((safe_mul_func_int64_t_s_s(((*p_1678->g_64) = p_46), ((*p_1678->g_327) <= l_302))) & ((safe_unary_minus_func_uint8_t_u(0x41L)) != l_767)))) | ((0x773962D24EC90FD0L >= (safe_mul_func_uint8_t_u_u((l_833 != (l_834 = &p_1678->g_126)), 0x83L))) ^ 0x1C4156B2E46D784FL)) & l_788[7]))
                { /* block id: 379 */
                    int32_t *l_836 = &l_786[1][0][0];
                    int32_t l_848 = 0x4B373070L;
                    int32_t l_850 = 0x57567CF8L;
                    int32_t l_851 = 0x518C54DDL;
                    int32_t l_852 = 0x373FD168L;
                    int32_t l_853 = 0x00DDBA77L;
                    int32_t l_854 = 0x65533F82L;
                    uint32_t l_855 = 1UL;
                    if ((l_835 | p_45))
                    { /* block id: 380 */
                        int32_t **l_837 = &l_836;
                        int32_t *l_839 = &l_251[7][0];
                        int32_t *l_840 = &l_781;
                        int32_t *l_841 = &p_1678->g_434[0][2];
                        int32_t *l_842 = &p_1678->g_434[0][3];
                        int32_t *l_843 = &l_745;
                        int32_t *l_844[4][1] = {{&p_1678->g_434[0][2]},{&p_1678->g_434[0][2]},{&p_1678->g_434[0][2]},{&p_1678->g_434[0][2]}};
                        int i, j;
                        (*p_1678->g_528) = ((*l_654) = (*l_654));
                        (*p_1678->g_838) = ((*l_837) = l_836);
                        (*l_837) = &l_776;
                        l_855++;
                    }
                    else
                    { /* block id: 387 */
                        if (l_858)
                            break;
                    }
                    for (p_1678->g_155 = 0; (p_1678->g_155 <= 0); p_1678->g_155 += 1)
                    { /* block id: 392 */
                        uint32_t *l_861 = &p_1678->g_133;
                        int i, j, k;
                        (*l_836) = (((p_1678->g_859[0] , &p_1678->g_433[5][1][2]) != l_860) >= ((*l_861) ^= p_1678->g_75[p_1678->g_155][p_1678->g_318.f4][(p_1678->g_318.f4 + 2)]));
                        if (p_45)
                            continue;
                        (*l_860) = &l_786[3][0][1];
                    }
                    (*l_836) |= p_46;
                }
                else
                { /* block id: 399 */
                    int32_t *l_866 = &l_845;
                    int32_t l_874 = 0x32C88746L;
                    int32_t l_875 = 0x2562FE4CL;
                    int32_t l_876 = 0x604A6659L;
                    int32_t l_877 = 0L;
                    for (l_576.f2 = 0; (l_576.f2 >= 0); l_576.f2 -= 1)
                    { /* block id: 402 */
                        int32_t *l_864[8][10] = {{&p_1678->g_157,&l_782[0][4][6],&l_745,&p_1678->g_157,&l_781,&l_745,&l_745,&l_781,&p_1678->g_157,&l_745},{&p_1678->g_157,&l_782[0][4][6],&l_745,&p_1678->g_157,&l_781,&l_745,&l_745,&l_781,&p_1678->g_157,&l_745},{&p_1678->g_157,&l_782[0][4][6],&l_745,&p_1678->g_157,&l_781,&l_745,&l_745,&l_781,&p_1678->g_157,&l_745},{&p_1678->g_157,&l_782[0][4][6],&l_745,&p_1678->g_157,&l_781,&l_745,&l_745,&l_781,&p_1678->g_157,&l_745},{&p_1678->g_157,&l_782[0][4][6],&l_745,&p_1678->g_157,&l_781,&l_745,&l_745,&l_781,&p_1678->g_157,&l_745},{&p_1678->g_157,&l_782[0][4][6],&l_745,&p_1678->g_157,&l_781,&l_745,&l_745,&l_781,&p_1678->g_157,&l_745},{&p_1678->g_157,&l_782[0][4][6],&l_745,&p_1678->g_157,&l_781,&l_745,&l_745,&l_781,&p_1678->g_157,&l_745},{&p_1678->g_157,&l_782[0][4][6],&l_745,&p_1678->g_157,&l_781,&l_745,&l_745,&l_781,&p_1678->g_157,&l_745}};
                        int i, j;
                        l_865 ^= ((*p_1678->g_196) = (safe_mul_func_int8_t_s_s(l_849[(l_576.f2 + 1)], FAKE_DIVERGE(p_1678->group_2_offset, get_group_id(2), 10))));
                        if (p_45)
                            break;
                        (*l_860) = l_866;
                        p_1678->g_868 = p_1678->g_867;
                    }
                    (*l_860) = &l_847[1][1][2];
                    (*l_866) = (-1L);
                    for (p_1678->g_867.f1 = 0; (p_1678->g_867.f1 >= 0); p_1678->g_867.f1 -= 1)
                    { /* block id: 413 */
                        int32_t *l_869 = (void*)0;
                        int32_t *l_870 = &l_251[5][1];
                        int32_t *l_871 = &p_1678->g_434[0][0];
                        int32_t *l_872[3][6] = {{&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1]},{&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1]},{&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1],&l_786[3][0][1]}};
                        int i, j;
                        --p_1678->g_878;
                    }
                }
                for (p_1678->g_318.f2 = 0; (p_1678->g_318.f2 >= 0); p_1678->g_318.f2 -= 1)
                { /* block id: 419 */
                    uint64_t l_883[3][8] = {{0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L},{0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L},{0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L,0xF874CC89DE85AD79L}};
                    struct S1 **l_895 = &l_446;
                    int i, j;
                    (*l_768) = l_881;
                    for (l_835 = 0; (l_835 <= 0); l_835 += 1)
                    { /* block id: 423 */
                        int32_t *l_882[1][8] = {{&p_1678->g_434[0][0],&p_1678->g_434[0][0],&p_1678->g_434[0][0],&p_1678->g_434[0][0],&p_1678->g_434[0][0],&p_1678->g_434[0][0],&p_1678->g_434[0][0],&p_1678->g_434[0][0]}};
                        uint8_t *l_886 = (void*)0;
                        uint8_t *l_887 = &p_1678->g_752.f4;
                        int8_t *l_897 = &p_1678->g_247;
                        int i, j;
                        l_284 |= 0x065E70F8L;
                        l_783 = (((l_883[0][0] == ((safe_mul_func_uint8_t_u_u((!(p_45 , ((*l_887) = 247UL))), ((*l_897) = ((l_835 >= l_883[1][0]) && ((safe_add_func_uint64_t_u_u(l_786[3][0][1], (l_890 , (safe_sub_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(l_881.f0, (l_895 != l_896))), l_858))))) , (*p_1678->g_64)))))) , 0xC109L)) > p_46) || p_46);
                        (*p_1678->g_899) = p_1678->g_898;
                        l_782[0][5][4] = 0x79FDC86BL;
                    }
                    if ((safe_sub_func_uint8_t_u_u(p_46, 0x0DL)))
                    { /* block id: 431 */
                        int64_t l_902 = 8L;
                        return l_902;
                    }
                    else
                    { /* block id: 433 */
                        int32_t *l_903[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_903[i] = &l_782[0][5][2];
                        l_847[1][1][2] = l_858;
                        (*p_1678->g_905) = p_1678->g_904;
                        return p_1678->g_906;
                    }
                }
                for (l_773 = 0; (l_773 >= 0); l_773 -= 1)
                { /* block id: 441 */
                    int64_t ***l_910 = (void*)0;
                    int64_t ****l_909 = &l_910;
                    int64_t *****l_908 = &l_909;
                    int32_t l_920 = 9L;
                    int32_t l_937 = 0x4A3A1C96L;
                    for (p_1678->g_247 = 0; (p_1678->g_247 >= 0); p_1678->g_247 -= 1)
                    { /* block id: 444 */
                        l_783 &= 0x24050DDCL;
                    }
                    for (p_1678->g_752.f5 = 1; (p_1678->g_752.f5 >= 0); p_1678->g_752.f5 -= 1)
                    { /* block id: 449 */
                        uint32_t ****l_918[8][6] = {{(void*)0,&p_1678->g_915[4],&p_1678->g_915[5],&p_1678->g_915[4],(void*)0,(void*)0},{(void*)0,&p_1678->g_915[4],&p_1678->g_915[5],&p_1678->g_915[4],(void*)0,(void*)0},{(void*)0,&p_1678->g_915[4],&p_1678->g_915[5],&p_1678->g_915[4],(void*)0,(void*)0},{(void*)0,&p_1678->g_915[4],&p_1678->g_915[5],&p_1678->g_915[4],(void*)0,(void*)0},{(void*)0,&p_1678->g_915[4],&p_1678->g_915[5],&p_1678->g_915[4],(void*)0,(void*)0},{(void*)0,&p_1678->g_915[4],&p_1678->g_915[5],&p_1678->g_915[4],(void*)0,(void*)0},{(void*)0,&p_1678->g_915[4],&p_1678->g_915[5],&p_1678->g_915[4],(void*)0,(void*)0},{(void*)0,&p_1678->g_915[4],&p_1678->g_915[5],&p_1678->g_915[4],(void*)0,(void*)0}};
                        int32_t l_921 = 0x49A7D4FEL;
                        uint64_t *l_935 = &p_1678->g_719[2];
                        int8_t *l_936 = &l_249[5];
                        int i, j;
                        (*p_1678->g_922) = ((l_907 != (p_1678->g_417[(l_773 + 1)][(p_1678->g_318.f4 + 3)] , l_908)) & (l_921 = ((((void*)0 == &p_1678->g_190) > (safe_sub_func_int8_t_s_s((((p_45 , (!((((safe_sub_func_uint32_t_u_u((((0x634662ED345610A6L & (((l_919 = p_1678->g_915[5]) != &p_1678->g_916) > (*p_1678->g_222))) | 1L) <= l_786[3][0][2]), p_45)) || 1UL) <= 0UL) , p_46))) == (*p_1678->g_64)) >= p_45), l_920))) && p_46)));
                        l_846 = (safe_lshift_func_uint16_t_u_u(l_890, ((((*l_936) = (p_45 | (l_921 = (safe_mod_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_u(((l_858 > (+(9L <= (safe_lshift_func_uint16_t_u_u((*p_1678->g_327), (!(safe_sub_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(((void*)0 != l_935), (((***l_919) = (((0x25L <= 0x4BL) && p_46) < p_1678->g_266.f5)) != 0L))) <= (*p_1678->g_332)), l_835)))))))) ^ p_45), (*p_1678->g_332))) > 0UL), (*p_1678->g_332)))))) <= l_873) , (*p_1678->g_332))));
                    }
                    --l_938;
                }
                for (p_1678->g_318.f3 = 0; (p_1678->g_318.f3 <= 0); p_1678->g_318.f3 += 1)
                { /* block id: 462 */
                    uint16_t **l_951 = &l_834;
                    int32_t *l_952 = &p_1678->g_434[0][0];
                    int64_t *****l_958 = &p_1678->g_955;
                    for (p_1678->g_868.f4 = 0; (p_1678->g_868.f4 <= 0); p_1678->g_868.f4 += 1)
                    { /* block id: 465 */
                        struct S3 *l_941 = &p_1678->g_502;
                        p_1678->g_905 = l_941;
                    }
                    (*l_952) &= ((0x3E11CCCC18167891L == (p_1678->g_542.f2 , (((0x1354L && (safe_sub_func_int64_t_s_s((safe_lshift_func_int8_t_s_u(l_946, (safe_div_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s(((((p_45 , l_951) != ((p_45 < p_46) , &p_1678->g_332)) != p_45) <= p_45), 0)), l_252[0])))), p_46))) > 0x5318ACF9ABD3D811L) ^ p_1678->g_165.f1))) , p_46);
                    for (p_1678->g_647.f2 = 0; (p_1678->g_647.f2 <= 0); p_1678->g_647.f2 += 1)
                    { /* block id: 471 */
                        return l_745;
                    }
                    if ((safe_rshift_func_uint16_t_u_s((((*l_958) = p_1678->g_955) == &p_1678->g_548), 7)))
                    { /* block id: 475 */
                        (*l_860) = &l_783;
                        (*l_952) &= (safe_add_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), (safe_div_func_uint64_t_u_u(((*p_1678->g_190) |= (safe_lshift_func_uint16_t_u_u(p_46, 6))), (safe_add_func_uint32_t_u_u(l_969, (safe_mul_func_uint8_t_u_u(((&p_1678->g_955 != l_972[0]) , GROUP_DIVERGE(0, 1)), 0L)))))))), p_45));
                        (*p_1678->g_770) = l_881;
                    }
                    else
                    { /* block id: 480 */
                        int32_t ***l_976 = &l_973;
                        (*l_976) = l_973;
                    }
                }
            }
        }
        for (p_1678->g_318.f0 = 4; (p_1678->g_318.f0 >= 1); p_1678->g_318.f0 -= 1)
        { /* block id: 488 */
            uint32_t **l_981 = &p_1678->g_917[3];
            uint32_t ***l_982 = &l_981;
            for (p_1678->g_904.f4 = 0; (p_1678->g_904.f4 <= 4); p_1678->g_904.f4 += 1)
            { /* block id: 491 */
                struct S3 **l_977 = (void*)0;
                struct S3 *l_979[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                struct S3 **l_978 = &l_979[1];
                int i;
                (*l_978) = &p_1678->g_703;
                for (p_1678->g_65 = 0; (p_1678->g_65 <= 8); p_1678->g_65 += 1)
                { /* block id: 495 */
                    (*p_1678->g_736) = p_1678->g_980;
                }
            }
            (*l_982) = l_981;
        }
        if (p_1678->g_904.f0)
            goto lbl_408;
        (*l_983) |= p_45;
    }
    return p_1678->g_728;
}


/* ------------------------------------------ */
/* 
 * reads : p_1678->g_172.f4 p_1678->g_64 p_1678->g_65 p_1678->g_92 p_1678->g_191 p_1678->g_126 p_1678->g_140 p_1678->g_157 p_1678->g_222 p_1678->g_233 p_1678->g_189 p_1678->g_190 p_1678->g_75 p_1678->g_244 p_1678->g_196
 * writes: p_1678->g_221 p_1678->g_222 p_1678->g_244 p_1678->g_157
 */
int8_t  func_58(int64_t * p_59, int16_t  p_60, uint32_t  p_61, uint16_t  p_62, int8_t  p_63, struct S4 * p_1678)
{ /* block id: 87 */
    int16_t *l_220 = &p_1678->g_75[0][2][2];
    int16_t **l_219[7] = {&l_220,&l_220,&l_220,&l_220,&l_220,&l_220,&l_220};
    int32_t l_223 = 0x6350B082L;
    int32_t *l_224 = (void*)0;
    int32_t *l_225[6][8] = {{&l_223,(void*)0,&l_223,(void*)0,&l_223,&l_223,(void*)0,&l_223},{&l_223,(void*)0,&l_223,(void*)0,&l_223,&l_223,(void*)0,&l_223},{&l_223,(void*)0,&l_223,(void*)0,&l_223,&l_223,(void*)0,&l_223},{&l_223,(void*)0,&l_223,(void*)0,&l_223,&l_223,(void*)0,&l_223},{&l_223,(void*)0,&l_223,(void*)0,&l_223,&l_223,(void*)0,&l_223},{&l_223,(void*)0,&l_223,(void*)0,&l_223,&l_223,(void*)0,&l_223}};
    int32_t l_226 = 7L;
    uint16_t l_227[2][10][3] = {{{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L}},{{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L},{65535UL,0xD363L,0x2C39L}}};
    int16_t l_228[8] = {(-1L),(-5L),(-1L),(-1L),(-5L),(-1L),(-1L),(-5L)};
    int64_t *l_234 = &p_1678->g_65;
    int32_t l_241 = 0L;
    int16_t l_242 = 1L;
    uint64_t *l_243 = &p_1678->g_244[1];
    int16_t l_245 = 0x6D22L;
    int i, j, k;
    l_228[0] |= (p_1678->g_172.f4 >= (0xD24D6F2CL >= ((safe_div_func_int32_t_s_s((safe_sub_func_int32_t_s_s(((((void*)0 != &p_59) , (*p_1678->g_64)) & ((safe_div_func_uint8_t_u_u((((((safe_unary_minus_func_int8_t_s(((safe_mod_func_uint16_t_u_u(((~(((safe_rshift_func_uint8_t_u_s(0x7CL, (p_1678->g_92 , ((safe_add_func_int32_t_s_s((+(l_226 = ((safe_rshift_func_int8_t_s_s(((p_1678->g_222 = (p_1678->g_221[0] = &p_1678->g_140[2][7])) != (void*)0), p_1678->g_92)) , l_223))), 1L)) && p_1678->g_65)))) != 0x365F3817B0A88631L) ^ p_1678->g_191)) >= p_1678->g_65), 0x64AEL)) <= p_1678->g_126))) <= 0x18EC19C00974A86EL) <= 1UL) , p_1678->g_140[5][4]) , p_63), p_60)) & p_60)), l_227[1][4][1])), p_1678->g_157)) <= p_62)));
    (*p_1678->g_196) = (((((*l_243) |= (((safe_sub_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((*p_1678->g_222), ((p_1678->g_233[3] , ((**p_1678->g_189) , l_234)) != l_234))), 1L)) == (safe_mul_func_int16_t_s_s((((safe_lshift_func_int8_t_s_s(p_62, ((((safe_add_func_int32_t_s_s((l_242 = (l_241 = ((p_1678->g_140[4][3] > (*p_1678->g_222)) <= FAKE_DIVERGE(p_1678->local_2_offset, get_local_id(2), 10)))), p_63)) < p_60) , 0x44L) == FAKE_DIVERGE(p_1678->group_2_offset, get_group_id(2), 10)))) , (*p_1678->g_190)) != 9UL), 65528UL))) , p_1678->g_75[0][0][2])) , p_62) | p_60) > l_245);
    return p_1678->g_92;
}


/* ------------------------------------------ */
/* 
 * reads : p_1678->g_75 p_1678->g_92 p_1678->g_97 p_1678->g_65 p_1678->g_126 p_1678->g_64 p_1678->g_133 p_1678->g_6 p_1678->g_156 p_1678->g_98 p_1678->g_165 p_1678->g_172 p_1678->g_3 p_1678->g_189 p_1678->g_194 p_1678->g_196
 * writes: p_1678->g_92 p_1678->g_98 p_1678->g_65 p_1678->g_133 p_1678->g_75 p_1678->g_140 p_1678->g_155 p_1678->g_157 p_1678->g_165 p_1678->g_180 p_1678->g_189
 */
int64_t * func_68(uint64_t  p_69, int32_t  p_70, uint64_t  p_71, int64_t * p_72, uint64_t  p_73, struct S4 * p_1678)
{ /* block id: 19 */
    int8_t l_79 = 0L;
    int64_t *l_85 = &p_1678->g_65;
    int64_t **l_84 = &l_85;
    uint16_t *l_90 = (void*)0;
    uint16_t *l_91[10] = {&p_1678->g_92,&p_1678->g_92,&p_1678->g_92,&p_1678->g_92,&p_1678->g_92,&p_1678->g_92,&p_1678->g_92,&p_1678->g_92,&p_1678->g_92,&p_1678->g_92};
    int32_t l_93 = (-1L);
    int32_t l_94 = (-1L);
    int64_t l_183 = (-1L);
    int32_t *l_195 = (void*)0;
    int i;
    if ((((safe_lshift_func_int8_t_s_s(0L, (~(l_79 < (safe_sub_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((((*l_84) = (void*)0) == (void*)0), p_1678->g_75[0][2][2])), ((0x6C293C9755A17A53L < func_86(((safe_sub_func_uint16_t_u_u((p_1678->g_92--), l_79)) > p_70), p_1678)) & l_94))))))) , (*l_84)) != &p_1678->g_65))
    { /* block id: 24 */
        (*p_1678->g_97) = &p_1678->g_6;
        for (p_1678->g_65 = 0; (p_1678->g_65 != 3); p_1678->g_65 = safe_add_func_uint16_t_u_u(p_1678->g_65, 6))
        { /* block id: 28 */
            return &p_1678->g_65;
        }
    }
    else
    { /* block id: 31 */
        uint32_t l_105 = 4294967289UL;
        int64_t *l_118 = &p_1678->g_65;
        uint16_t *l_125 = (void*)0;
        struct S0 l_127 = {-1L,-1L,-1L,0x206B3A0AL,0x147BCB45L,18446744073709551615UL,0xA1A6E00AB6897872L};
        int32_t l_184 = 9L;
        if (p_73)
        { /* block id: 32 */
            int64_t l_119 = 0x56BFE3AE0F9FDB8FL;
            int32_t *l_166 = (void*)0;
            int32_t *l_167 = &l_93;
            for (p_71 = 23; (p_71 <= 6); p_71--)
            { /* block id: 35 */
                uint16_t *l_123 = &p_1678->g_92;
                if (p_71)
                { /* block id: 36 */
                    int32_t *l_103 = &l_94;
                    int32_t *l_104[5];
                    uint16_t **l_124 = &l_90;
                    int32_t **l_159 = &l_104[3];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_104[i] = &l_93;
                    --l_105;
                    (*l_159) = func_108(((((((((p_1678->g_75[0][0][0] , ((0x8458L <= ((safe_div_func_uint32_t_u_u((((p_69 || (-2L)) > (safe_rshift_func_int16_t_s_u(((l_118 == p_72) > ((l_119 == ((safe_unary_minus_func_uint16_t_u((safe_add_func_uint8_t_u_u((((*l_124) = l_123) != l_125), p_1678->g_65)))) , p_1678->g_92)) >= p_1678->g_126)), p_71))) != p_70), p_71)) , l_105)) < FAKE_DIVERGE(p_1678->local_1_offset, get_local_id(1), 10))) || p_69) || p_73) != (*p_1678->g_64)) < FAKE_DIVERGE(p_1678->local_0_offset, get_local_id(0), 10)) && (*p_1678->g_64)) >= 1UL) , (void*)0), l_127, p_1678->g_65, p_69, p_71, p_1678);
                }
                else
                { /* block id: 49 */
                    uint32_t l_162 = 0xD2885B45L;
                    int32_t **l_164 = &p_1678->g_98[1][4];
                    for (l_127.f5 = (-13); (l_127.f5 < 37); l_127.f5 = safe_add_func_uint16_t_u_u(l_127.f5, 5))
                    { /* block id: 52 */
                        int32_t *l_163 = &l_94;
                        (*l_163) |= l_162;
                        return &p_1678->g_65;
                    }
                    (*l_164) = &l_93;
                    for (l_79 = 0; (l_79 <= 1); l_79 += 1)
                    { /* block id: 59 */
                        p_1678->g_165 = p_1678->g_165;
                    }
                }
            }
            (*l_167) &= 2L;
        }
        else
        { /* block id: 65 */
            int32_t *l_179[1][6][8] = {{{&p_1678->g_3,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93},{&p_1678->g_3,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93},{&p_1678->g_3,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93},{&p_1678->g_3,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93},{&p_1678->g_3,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93},{&p_1678->g_3,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93,&l_93}}};
            int i, j, k;
            l_184 ^= ((safe_mod_func_uint16_t_u_u((l_183 = (safe_mul_func_uint16_t_u_u(l_79, (p_1678->g_172 , (safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(p_69, (l_79 || ((*p_1678->g_64) ^ (p_1678->g_172.f1 < (safe_lshift_func_uint16_t_u_u(((p_1678->g_180 = (l_93 = p_71)) , p_71), 6))))))), ((safe_add_func_int8_t_s_s((-4L), p_1678->g_3)) || 0x1E8D4B36L))))))), 0x77EBL)) == 0x4118L);
        }
        for (l_93 = 0; (l_93 > 5); l_93 = safe_add_func_int16_t_s_s(l_93, 1))
        { /* block id: 73 */
            for (p_69 = 0; (p_69 < 32); ++p_69)
            { /* block id: 76 */
                uint64_t ** volatile *l_192 = (void*)0;
                p_1678->g_189 = p_1678->g_189;
            }
        }
    }
    (*p_1678->g_194) = (*p_1678->g_97);
    (*p_1678->g_196) = (0x7C589AB2L > (p_70 == p_70));
    return &p_1678->g_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_1678->g_75
 * writes:
 */
uint64_t  func_86(int8_t  p_87, struct S4 * p_1678)
{ /* block id: 22 */
    return p_1678->g_75[0][1][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1678->g_133 p_1678->g_126 p_1678->g_6 p_1678->g_156 p_1678->g_97 p_1678->g_98
 * writes: p_1678->g_133 p_1678->g_75 p_1678->g_140 p_1678->g_155 p_1678->g_157 p_1678->g_98
 */
int32_t * func_108(int64_t ** p_109, struct S0  p_110, uint64_t  p_111, uint8_t  p_112, uint16_t  p_113, struct S4 * p_1678)
{ /* block id: 39 */
    uint32_t *l_132 = &p_1678->g_133;
    uint16_t *l_137 = &p_1678->g_92;
    uint16_t **l_136 = &l_137;
    int16_t *l_138 = &p_1678->g_75[0][1][2];
    int16_t *l_139 = &p_1678->g_140[2][7];
    uint32_t l_153 = 6UL;
    int16_t *l_154 = &p_1678->g_155;
    int32_t **l_158 = &p_1678->g_98[1][4];
    (*p_1678->g_156) = ((((safe_add_func_uint8_t_u_u(253UL, 0x00L)) == (safe_div_func_uint32_t_u_u(((((((*l_139) = ((*l_138) = (((*l_132)--) , (((void*)0 != l_136) & 0x08L)))) == (safe_mul_func_uint16_t_u_u((4294967295UL ^ (safe_rshift_func_uint8_t_u_s(0xE9L, (((safe_rshift_func_int16_t_s_u(((*l_154) = (~(safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u((p_110.f6 , p_110.f1), 0x923BADFC12834275L)) <= l_153), l_153)), p_110.f3)))), 8)) > p_111) != p_1678->g_126)))), l_153))) , 65533UL) && p_110.f0) | (-6L)), 0x77ECBFEFL))) , p_1678->g_6) == (-1L));
    (*l_158) = (*p_1678->g_97);
    (*l_158) = (void*)0;
    return (*p_1678->g_97);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_1679;
    struct S4* p_1678 = &c_1679;
    struct S4 c_1680 = {
        0x1339B884L, // p_1678->g_3
        0L, // p_1678->g_6
        1L, // p_1678->g_50
        0x05D214902A751A55L, // p_1678->g_65
        &p_1678->g_65, // p_1678->g_64
        {{{(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L)}}}, // p_1678->g_75
        65528UL, // p_1678->g_92
        {{&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3},{&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3,&p_1678->g_3}}, // p_1678->g_98
        &p_1678->g_98[1][4], // p_1678->g_97
        65535UL, // p_1678->g_126
        0x64C687DCL, // p_1678->g_133
        {{0x3CFCL,(-1L),0x3CA1L,(-1L),(-1L),(-1L),0x3CA1L,(-1L)},{0x3CFCL,(-1L),0x3CA1L,(-1L),(-1L),(-1L),0x3CA1L,(-1L)},{0x3CFCL,(-1L),0x3CA1L,(-1L),(-1L),(-1L),0x3CA1L,(-1L)},{0x3CFCL,(-1L),0x3CA1L,(-1L),(-1L),(-1L),0x3CA1L,(-1L)},{0x3CFCL,(-1L),0x3CA1L,(-1L),(-1L),(-1L),0x3CA1L,(-1L)},{0x3CFCL,(-1L),0x3CA1L,(-1L),(-1L),(-1L),0x3CA1L,(-1L)},{0x3CFCL,(-1L),0x3CA1L,(-1L),(-1L),(-1L),0x3CA1L,(-1L)},{0x3CFCL,(-1L),0x3CA1L,(-1L),(-1L),(-1L),0x3CA1L,(-1L)},{0x3CFCL,(-1L),0x3CA1L,(-1L),(-1L),(-1L),0x3CA1L,(-1L)}}, // p_1678->g_140
        0x1E97L, // p_1678->g_155
        0x0528BDE8L, // p_1678->g_157
        &p_1678->g_157, // p_1678->g_156
        {-8L,4L}, // p_1678->g_165
        {0xF72574CFE09AD7CCL,0x476DL,0x7101BA2FB8516656L,0x1269L,18446744073709551615UL,1L}, // p_1678->g_172
        0xE716L, // p_1678->g_180
        0UL, // p_1678->g_191
        &p_1678->g_191, // p_1678->g_190
        &p_1678->g_190, // p_1678->g_189
        {&p_1678->g_98[1][2],&p_1678->g_98[1][2],&p_1678->g_98[1][2]}, // p_1678->g_193
        &p_1678->g_98[1][0], // p_1678->g_194
        &p_1678->g_157, // p_1678->g_196
        {&p_1678->g_140[2][7]}, // p_1678->g_221
        &p_1678->g_140[2][7], // p_1678->g_222
        {{0xA87524CA2D030C1CL,-9L,0x69L,1UL,0x50L,0x1C6C223FL},{0xA87524CA2D030C1CL,-9L,0x69L,1UL,0x50L,0x1C6C223FL},{0xA87524CA2D030C1CL,-9L,0x69L,1UL,0x50L,0x1C6C223FL},{0xA87524CA2D030C1CL,-9L,0x69L,1UL,0x50L,0x1C6C223FL}}, // p_1678->g_233
        {0x47838914F165C230L,0x47838914F165C230L,0x47838914F165C230L,0x47838914F165C230L,0x47838914F165C230L}, // p_1678->g_244
        0x25L, // p_1678->g_247
        6UL, // p_1678->g_259
        {0x7C917898007313F5L,0L,255UL,65529UL,0xB7L,0x0CC1CDA1L}, // p_1678->g_265
        {0x89AC199A870EE555L,0x724C1845B0812FACL,0x43L,0xB297L,0x52L,0x53735041L}, // p_1678->g_266
        {0x049E7DE2L,0x0F4BE20EF3663DE4L,0x4C83E276L,0xCEE8C0E0L,0x3EF89B48L,18446744073709551615UL,0xF55DAAE100CF8C86L}, // p_1678->g_318
        &p_1678->g_233[3].f3, // p_1678->g_327
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1678->g_326
        &p_1678->g_126, // p_1678->g_332
        {1L,1L}, // p_1678->g_340
        &p_1678->g_340, // p_1678->g_339
        &p_1678->g_340, // p_1678->g_342
        &p_1678->g_98[0][1], // p_1678->g_383
        0x48L, // p_1678->g_404
        {{0x3A3FL,0x3A3FL,0x3A3FL,0x3A3FL,0x3A3FL,0x3A3FL,0x3A3FL},{0x3A3FL,0x3A3FL,0x3A3FL,0x3A3FL,0x3A3FL,0x3A3FL,0x3A3FL}}, // p_1678->g_417
        {{0x040C0605L,0x040C0605L,0x040C0605L,0x040C0605L}}, // p_1678->g_434
        {{{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0}},{{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0}},{{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0}},{{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0}},{{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0}},{{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0}},{{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0}},{{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0},{(void*)0,&p_1678->g_434[0][0],&p_1678->g_434[0][0],(void*)0,&p_1678->g_3,(void*)0}}}, // p_1678->g_433
        (void*)0, // p_1678->g_437
        (void*)0, // p_1678->g_479
        {&p_1678->g_479,&p_1678->g_479,&p_1678->g_479,&p_1678->g_479,&p_1678->g_479,&p_1678->g_479}, // p_1678->g_478
        {18446744073709551615UL,65535UL,0x1CE1B060E0886481L,0x8A3DL,0xC0426B49A4D7621DL,0L}, // p_1678->g_502
        &p_1678->g_266, // p_1678->g_529
        &p_1678->g_529, // p_1678->g_528
        {0x57C4D3CA223E5DCDL,0xBE48L,8L,0x82ACL,0x4B6C3D937232A790L,1L}, // p_1678->g_542
        {0x49L,0x0FL}, // p_1678->g_546
        {18446744073709551615UL,1UL,0x4B48443B2608B29FL,0xFD80L,18446744073709551609UL,0x3A964E23795F4277L}, // p_1678->g_547
        (void*)0, // p_1678->g_548
        {0x2B2B7712735EBA56L,65533UL,0x61FD43F898BCE5CAL,0x7549L,7UL,0x0CE2CEA9D2EA74FCL}, // p_1678->g_551
        {18446744073709551612UL,0L,0x22L,0x6BCFL,0xE5L,0x0025112FL}, // p_1678->g_577
        {0UL,-2L,0x85L,0xDA3FL,0xDFL,0x6BAABEA5L}, // p_1678->g_647
        (-1L), // p_1678->g_684
        249UL, // p_1678->g_698
        {0x91FBBDFCDBADDD33L,0x59ABL,4L,4UL,0xE4D35DCB033D9C1AL,-5L}, // p_1678->g_703
        {0x04000F007E985F5DL,0x04000F007E985F5DL,0x04000F007E985F5DL,0x04000F007E985F5DL,0x04000F007E985F5DL,0x04000F007E985F5DL,0x04000F007E985F5DL,0x04000F007E985F5DL}, // p_1678->g_719
        6UL, // p_1678->g_728
        {0x0783200F25989C35L,0UL,-1L,0xDEA8L,9UL,0x5C17149B40E54D30L}, // p_1678->g_735
        &p_1678->g_547, // p_1678->g_736
        4294967286UL, // p_1678->g_747
        {1UL,1L,0x80L,65534UL,2UL,-5L}, // p_1678->g_752
        &p_1678->g_318, // p_1678->g_770
        {{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}},{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}},{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}},{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}},{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}},{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}},{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}},{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}},{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}},{{&p_1678->g_770,(void*)0,&p_1678->g_770,(void*)0,&p_1678->g_770}}}, // p_1678->g_769
        {{(void*)0,(void*)0}}, // p_1678->g_771
        &p_1678->g_770, // p_1678->g_772
        0L, // p_1678->g_791
        &p_1678->g_233[0], // p_1678->g_801
        {{&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801},{&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801},{&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801,&p_1678->g_801}}, // p_1678->g_800
        {{&p_1678->g_98[1][4],&p_1678->g_98[1][5],&p_1678->g_98[1][5],&p_1678->g_98[1][4]},{&p_1678->g_98[1][4],&p_1678->g_98[1][5],&p_1678->g_98[1][5],&p_1678->g_98[1][4]},{&p_1678->g_98[1][4],&p_1678->g_98[1][5],&p_1678->g_98[1][5],&p_1678->g_98[1][4]},{&p_1678->g_98[1][4],&p_1678->g_98[1][5],&p_1678->g_98[1][5],&p_1678->g_98[1][4]},{&p_1678->g_98[1][4],&p_1678->g_98[1][5],&p_1678->g_98[1][5],&p_1678->g_98[1][4]}}, // p_1678->g_803
        {{{&p_1678->g_98[1][4],&p_1678->g_98[1][2]},{&p_1678->g_98[1][4],&p_1678->g_98[1][2]}},{{&p_1678->g_98[1][4],&p_1678->g_98[1][2]},{&p_1678->g_98[1][4],&p_1678->g_98[1][2]}},{{&p_1678->g_98[1][4],&p_1678->g_98[1][2]},{&p_1678->g_98[1][4],&p_1678->g_98[1][2]}}}, // p_1678->g_804
        {{&p_1678->g_98[1][5],&p_1678->g_98[1][5],&p_1678->g_98[1][5],&p_1678->g_98[1][5]}}, // p_1678->g_805
        (void*)0, // p_1678->g_821
        &p_1678->g_98[1][6], // p_1678->g_838
        {{0x618DBD1889073629L,0x53A95280943F5409L,0x8AL,0xAE60L,0x61L,1L}}, // p_1678->g_859
        {0x9CB14C012090C222L,-1L,255UL,0x1AF6L,247UL,-1L}, // p_1678->g_867
        {0x65C17546E176E45EL,1L,0UL,65532UL,0xBEL,0x38608045L}, // p_1678->g_868
        249UL, // p_1678->g_878
        (void*)0, // p_1678->g_898
        &p_1678->g_898, // p_1678->g_899
        {0x1D678806F8896ED5L,1UL,0x2AE8713ACFD1424FL,0x9AE2L,0xF5DE4688709FD8ECL,0x0E591FC8A06F463EL}, // p_1678->g_904
        &p_1678->g_904, // p_1678->g_905
        0x09FEE1EABFB89883L, // p_1678->g_906
        {&p_1678->g_133,&p_1678->g_133,&p_1678->g_133,&p_1678->g_133,&p_1678->g_133}, // p_1678->g_917
        &p_1678->g_917[3], // p_1678->g_916
        {&p_1678->g_916,&p_1678->g_916,&p_1678->g_916,&p_1678->g_916,&p_1678->g_916,&p_1678->g_916,&p_1678->g_916,&p_1678->g_916}, // p_1678->g_915
        &p_1678->g_157, // p_1678->g_922
        &p_1678->g_64, // p_1678->g_957
        &p_1678->g_957, // p_1678->g_956
        &p_1678->g_956, // p_1678->g_955
        (void*)0, // p_1678->g_975
        {3UL,8UL,0L,0x5E04L,4UL,0x4D87B55FA7E840D6L}, // p_1678->g_980
        &p_1678->g_157, // p_1678->g_1008
        {(-9L),(-9L),(-9L)}, // p_1678->g_1034
        &p_1678->g_98[0][2], // p_1678->g_1061
        (void*)0, // p_1678->g_1062
        &p_1678->g_98[0][7], // p_1678->g_1118
        {18446744073709551615UL,0xBC2AL,0L,3UL,0xA3E2BE33CA364F35L,-1L}, // p_1678->g_1203
        &p_1678->g_1203, // p_1678->g_1204
        &p_1678->g_165, // p_1678->g_1206
        &p_1678->g_1206, // p_1678->g_1205
        &p_1678->g_98[1][4], // p_1678->g_1215
        {0L,0x5EL}, // p_1678->g_1216
        {{18446744073709551615UL,1UL,0L,0x2D4DL,18446744073709551611UL,0x2EF837287B7B45E8L},{18446744073709551615UL,1UL,0L,0x2D4DL,18446744073709551611UL,0x2EF837287B7B45E8L},{18446744073709551615UL,1UL,0L,0x2D4DL,18446744073709551611UL,0x2EF837287B7B45E8L},{18446744073709551615UL,1UL,0L,0x2D4DL,18446744073709551611UL,0x2EF837287B7B45E8L},{18446744073709551615UL,1UL,0L,0x2D4DL,18446744073709551611UL,0x2EF837287B7B45E8L},{18446744073709551615UL,1UL,0L,0x2D4DL,18446744073709551611UL,0x2EF837287B7B45E8L},{18446744073709551615UL,1UL,0L,0x2D4DL,18446744073709551611UL,0x2EF837287B7B45E8L}}, // p_1678->g_1252
        {0x735EAD2DL,0x7D79FAD7C34BAFE4L,-5L,4294967294UL,4L,1UL,0UL}, // p_1678->g_1266
        {0L,-1L}, // p_1678->g_1306
        (void*)0, // p_1678->g_1313
        0x25EB27EDL, // p_1678->g_1365
        &p_1678->g_157, // p_1678->g_1366
        (void*)0, // p_1678->g_1390
        {&p_1678->g_98[1][4],&p_1678->g_98[1][4]}, // p_1678->g_1392
        {&p_1678->g_98[1][4],&p_1678->g_98[1][4],&p_1678->g_98[1][4],&p_1678->g_98[1][4],&p_1678->g_98[1][4]}, // p_1678->g_1393
        {0x3A688FB62DA16EC9L,0x751DL,1L,0xC222L,0x3048BBF0F033EC0FL,-9L}, // p_1678->g_1420
        &p_1678->g_98[1][4], // p_1678->g_1428
        &p_1678->g_222, // p_1678->g_1476
        &p_1678->g_98[0][5], // p_1678->g_1477
        (void*)0, // p_1678->g_1526
        {0x1DL,0x1AL}, // p_1678->g_1536
        {0x0DL,1L}, // p_1678->g_1540
        {0x7DL,0x0DL}, // p_1678->g_1557
        &p_1678->g_98[1][4], // p_1678->g_1562
        1L, // p_1678->g_1605
        (void*)0, // p_1678->g_1612
        &p_1678->g_157, // p_1678->g_1613
        &p_1678->g_157, // p_1678->g_1626
        sequence_input[get_global_id(0)], // p_1678->global_0_offset
        sequence_input[get_global_id(1)], // p_1678->global_1_offset
        sequence_input[get_global_id(2)], // p_1678->global_2_offset
        sequence_input[get_local_id(0)], // p_1678->local_0_offset
        sequence_input[get_local_id(1)], // p_1678->local_1_offset
        sequence_input[get_local_id(2)], // p_1678->local_2_offset
        sequence_input[get_group_id(0)], // p_1678->group_0_offset
        sequence_input[get_group_id(1)], // p_1678->group_1_offset
        sequence_input[get_group_id(2)], // p_1678->group_2_offset
    };
    c_1679 = c_1680;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1678);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1678->g_3, "p_1678->g_3", print_hash_value);
    transparent_crc(p_1678->g_6, "p_1678->g_6", print_hash_value);
    transparent_crc(p_1678->g_50, "p_1678->g_50", print_hash_value);
    transparent_crc(p_1678->g_65, "p_1678->g_65", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1678->g_75[i][j][k], "p_1678->g_75[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1678->g_92, "p_1678->g_92", print_hash_value);
    transparent_crc(p_1678->g_126, "p_1678->g_126", print_hash_value);
    transparent_crc(p_1678->g_133, "p_1678->g_133", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1678->g_140[i][j], "p_1678->g_140[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1678->g_155, "p_1678->g_155", print_hash_value);
    transparent_crc(p_1678->g_157, "p_1678->g_157", print_hash_value);
    transparent_crc(p_1678->g_165.f0, "p_1678->g_165.f0", print_hash_value);
    transparent_crc(p_1678->g_165.f1, "p_1678->g_165.f1", print_hash_value);
    transparent_crc(p_1678->g_172.f0, "p_1678->g_172.f0", print_hash_value);
    transparent_crc(p_1678->g_172.f1, "p_1678->g_172.f1", print_hash_value);
    transparent_crc(p_1678->g_172.f2, "p_1678->g_172.f2", print_hash_value);
    transparent_crc(p_1678->g_172.f3, "p_1678->g_172.f3", print_hash_value);
    transparent_crc(p_1678->g_172.f4, "p_1678->g_172.f4", print_hash_value);
    transparent_crc(p_1678->g_172.f5, "p_1678->g_172.f5", print_hash_value);
    transparent_crc(p_1678->g_180, "p_1678->g_180", print_hash_value);
    transparent_crc(p_1678->g_191, "p_1678->g_191", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1678->g_233[i].f0, "p_1678->g_233[i].f0", print_hash_value);
        transparent_crc(p_1678->g_233[i].f1, "p_1678->g_233[i].f1", print_hash_value);
        transparent_crc(p_1678->g_233[i].f2, "p_1678->g_233[i].f2", print_hash_value);
        transparent_crc(p_1678->g_233[i].f3, "p_1678->g_233[i].f3", print_hash_value);
        transparent_crc(p_1678->g_233[i].f4, "p_1678->g_233[i].f4", print_hash_value);
        transparent_crc(p_1678->g_233[i].f5, "p_1678->g_233[i].f5", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1678->g_244[i], "p_1678->g_244[i]", print_hash_value);

    }
    transparent_crc(p_1678->g_247, "p_1678->g_247", print_hash_value);
    transparent_crc(p_1678->g_259, "p_1678->g_259", print_hash_value);
    transparent_crc(p_1678->g_265.f0, "p_1678->g_265.f0", print_hash_value);
    transparent_crc(p_1678->g_265.f1, "p_1678->g_265.f1", print_hash_value);
    transparent_crc(p_1678->g_265.f2, "p_1678->g_265.f2", print_hash_value);
    transparent_crc(p_1678->g_265.f3, "p_1678->g_265.f3", print_hash_value);
    transparent_crc(p_1678->g_265.f4, "p_1678->g_265.f4", print_hash_value);
    transparent_crc(p_1678->g_265.f5, "p_1678->g_265.f5", print_hash_value);
    transparent_crc(p_1678->g_266.f0, "p_1678->g_266.f0", print_hash_value);
    transparent_crc(p_1678->g_266.f1, "p_1678->g_266.f1", print_hash_value);
    transparent_crc(p_1678->g_266.f2, "p_1678->g_266.f2", print_hash_value);
    transparent_crc(p_1678->g_266.f3, "p_1678->g_266.f3", print_hash_value);
    transparent_crc(p_1678->g_266.f4, "p_1678->g_266.f4", print_hash_value);
    transparent_crc(p_1678->g_266.f5, "p_1678->g_266.f5", print_hash_value);
    transparent_crc(p_1678->g_318.f0, "p_1678->g_318.f0", print_hash_value);
    transparent_crc(p_1678->g_318.f1, "p_1678->g_318.f1", print_hash_value);
    transparent_crc(p_1678->g_318.f2, "p_1678->g_318.f2", print_hash_value);
    transparent_crc(p_1678->g_318.f3, "p_1678->g_318.f3", print_hash_value);
    transparent_crc(p_1678->g_318.f4, "p_1678->g_318.f4", print_hash_value);
    transparent_crc(p_1678->g_318.f5, "p_1678->g_318.f5", print_hash_value);
    transparent_crc(p_1678->g_318.f6, "p_1678->g_318.f6", print_hash_value);
    transparent_crc(p_1678->g_340.f0, "p_1678->g_340.f0", print_hash_value);
    transparent_crc(p_1678->g_340.f1, "p_1678->g_340.f1", print_hash_value);
    transparent_crc(p_1678->g_404, "p_1678->g_404", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1678->g_417[i][j], "p_1678->g_417[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1678->g_434[i][j], "p_1678->g_434[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1678->g_502.f0, "p_1678->g_502.f0", print_hash_value);
    transparent_crc(p_1678->g_502.f1, "p_1678->g_502.f1", print_hash_value);
    transparent_crc(p_1678->g_502.f2, "p_1678->g_502.f2", print_hash_value);
    transparent_crc(p_1678->g_502.f3, "p_1678->g_502.f3", print_hash_value);
    transparent_crc(p_1678->g_502.f4, "p_1678->g_502.f4", print_hash_value);
    transparent_crc(p_1678->g_502.f5, "p_1678->g_502.f5", print_hash_value);
    transparent_crc(p_1678->g_542.f0, "p_1678->g_542.f0", print_hash_value);
    transparent_crc(p_1678->g_542.f1, "p_1678->g_542.f1", print_hash_value);
    transparent_crc(p_1678->g_542.f2, "p_1678->g_542.f2", print_hash_value);
    transparent_crc(p_1678->g_542.f3, "p_1678->g_542.f3", print_hash_value);
    transparent_crc(p_1678->g_542.f4, "p_1678->g_542.f4", print_hash_value);
    transparent_crc(p_1678->g_542.f5, "p_1678->g_542.f5", print_hash_value);
    transparent_crc(p_1678->g_546.f0, "p_1678->g_546.f0", print_hash_value);
    transparent_crc(p_1678->g_546.f1, "p_1678->g_546.f1", print_hash_value);
    transparent_crc(p_1678->g_547.f0, "p_1678->g_547.f0", print_hash_value);
    transparent_crc(p_1678->g_547.f1, "p_1678->g_547.f1", print_hash_value);
    transparent_crc(p_1678->g_547.f2, "p_1678->g_547.f2", print_hash_value);
    transparent_crc(p_1678->g_547.f3, "p_1678->g_547.f3", print_hash_value);
    transparent_crc(p_1678->g_547.f4, "p_1678->g_547.f4", print_hash_value);
    transparent_crc(p_1678->g_547.f5, "p_1678->g_547.f5", print_hash_value);
    transparent_crc(p_1678->g_551.f0, "p_1678->g_551.f0", print_hash_value);
    transparent_crc(p_1678->g_551.f1, "p_1678->g_551.f1", print_hash_value);
    transparent_crc(p_1678->g_551.f2, "p_1678->g_551.f2", print_hash_value);
    transparent_crc(p_1678->g_551.f3, "p_1678->g_551.f3", print_hash_value);
    transparent_crc(p_1678->g_551.f4, "p_1678->g_551.f4", print_hash_value);
    transparent_crc(p_1678->g_551.f5, "p_1678->g_551.f5", print_hash_value);
    transparent_crc(p_1678->g_577.f0, "p_1678->g_577.f0", print_hash_value);
    transparent_crc(p_1678->g_577.f1, "p_1678->g_577.f1", print_hash_value);
    transparent_crc(p_1678->g_577.f2, "p_1678->g_577.f2", print_hash_value);
    transparent_crc(p_1678->g_577.f3, "p_1678->g_577.f3", print_hash_value);
    transparent_crc(p_1678->g_577.f4, "p_1678->g_577.f4", print_hash_value);
    transparent_crc(p_1678->g_577.f5, "p_1678->g_577.f5", print_hash_value);
    transparent_crc(p_1678->g_647.f0, "p_1678->g_647.f0", print_hash_value);
    transparent_crc(p_1678->g_647.f1, "p_1678->g_647.f1", print_hash_value);
    transparent_crc(p_1678->g_647.f2, "p_1678->g_647.f2", print_hash_value);
    transparent_crc(p_1678->g_647.f3, "p_1678->g_647.f3", print_hash_value);
    transparent_crc(p_1678->g_647.f4, "p_1678->g_647.f4", print_hash_value);
    transparent_crc(p_1678->g_647.f5, "p_1678->g_647.f5", print_hash_value);
    transparent_crc(p_1678->g_684, "p_1678->g_684", print_hash_value);
    transparent_crc(p_1678->g_698, "p_1678->g_698", print_hash_value);
    transparent_crc(p_1678->g_703.f0, "p_1678->g_703.f0", print_hash_value);
    transparent_crc(p_1678->g_703.f1, "p_1678->g_703.f1", print_hash_value);
    transparent_crc(p_1678->g_703.f2, "p_1678->g_703.f2", print_hash_value);
    transparent_crc(p_1678->g_703.f3, "p_1678->g_703.f3", print_hash_value);
    transparent_crc(p_1678->g_703.f4, "p_1678->g_703.f4", print_hash_value);
    transparent_crc(p_1678->g_703.f5, "p_1678->g_703.f5", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1678->g_719[i], "p_1678->g_719[i]", print_hash_value);

    }
    transparent_crc(p_1678->g_728, "p_1678->g_728", print_hash_value);
    transparent_crc(p_1678->g_735.f0, "p_1678->g_735.f0", print_hash_value);
    transparent_crc(p_1678->g_735.f1, "p_1678->g_735.f1", print_hash_value);
    transparent_crc(p_1678->g_735.f2, "p_1678->g_735.f2", print_hash_value);
    transparent_crc(p_1678->g_735.f3, "p_1678->g_735.f3", print_hash_value);
    transparent_crc(p_1678->g_735.f4, "p_1678->g_735.f4", print_hash_value);
    transparent_crc(p_1678->g_735.f5, "p_1678->g_735.f5", print_hash_value);
    transparent_crc(p_1678->g_747, "p_1678->g_747", print_hash_value);
    transparent_crc(p_1678->g_752.f0, "p_1678->g_752.f0", print_hash_value);
    transparent_crc(p_1678->g_752.f1, "p_1678->g_752.f1", print_hash_value);
    transparent_crc(p_1678->g_752.f2, "p_1678->g_752.f2", print_hash_value);
    transparent_crc(p_1678->g_752.f3, "p_1678->g_752.f3", print_hash_value);
    transparent_crc(p_1678->g_752.f4, "p_1678->g_752.f4", print_hash_value);
    transparent_crc(p_1678->g_752.f5, "p_1678->g_752.f5", print_hash_value);
    transparent_crc(p_1678->g_791, "p_1678->g_791", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1678->g_859[i].f0, "p_1678->g_859[i].f0", print_hash_value);
        transparent_crc(p_1678->g_859[i].f1, "p_1678->g_859[i].f1", print_hash_value);
        transparent_crc(p_1678->g_859[i].f2, "p_1678->g_859[i].f2", print_hash_value);
        transparent_crc(p_1678->g_859[i].f3, "p_1678->g_859[i].f3", print_hash_value);
        transparent_crc(p_1678->g_859[i].f4, "p_1678->g_859[i].f4", print_hash_value);
        transparent_crc(p_1678->g_859[i].f5, "p_1678->g_859[i].f5", print_hash_value);

    }
    transparent_crc(p_1678->g_867.f0, "p_1678->g_867.f0", print_hash_value);
    transparent_crc(p_1678->g_867.f1, "p_1678->g_867.f1", print_hash_value);
    transparent_crc(p_1678->g_867.f2, "p_1678->g_867.f2", print_hash_value);
    transparent_crc(p_1678->g_867.f3, "p_1678->g_867.f3", print_hash_value);
    transparent_crc(p_1678->g_867.f4, "p_1678->g_867.f4", print_hash_value);
    transparent_crc(p_1678->g_867.f5, "p_1678->g_867.f5", print_hash_value);
    transparent_crc(p_1678->g_868.f0, "p_1678->g_868.f0", print_hash_value);
    transparent_crc(p_1678->g_868.f1, "p_1678->g_868.f1", print_hash_value);
    transparent_crc(p_1678->g_868.f2, "p_1678->g_868.f2", print_hash_value);
    transparent_crc(p_1678->g_868.f3, "p_1678->g_868.f3", print_hash_value);
    transparent_crc(p_1678->g_868.f4, "p_1678->g_868.f4", print_hash_value);
    transparent_crc(p_1678->g_868.f5, "p_1678->g_868.f5", print_hash_value);
    transparent_crc(p_1678->g_878, "p_1678->g_878", print_hash_value);
    transparent_crc(p_1678->g_904.f0, "p_1678->g_904.f0", print_hash_value);
    transparent_crc(p_1678->g_904.f1, "p_1678->g_904.f1", print_hash_value);
    transparent_crc(p_1678->g_904.f2, "p_1678->g_904.f2", print_hash_value);
    transparent_crc(p_1678->g_904.f3, "p_1678->g_904.f3", print_hash_value);
    transparent_crc(p_1678->g_904.f4, "p_1678->g_904.f4", print_hash_value);
    transparent_crc(p_1678->g_904.f5, "p_1678->g_904.f5", print_hash_value);
    transparent_crc(p_1678->g_906, "p_1678->g_906", print_hash_value);
    transparent_crc(p_1678->g_980.f0, "p_1678->g_980.f0", print_hash_value);
    transparent_crc(p_1678->g_980.f1, "p_1678->g_980.f1", print_hash_value);
    transparent_crc(p_1678->g_980.f2, "p_1678->g_980.f2", print_hash_value);
    transparent_crc(p_1678->g_980.f3, "p_1678->g_980.f3", print_hash_value);
    transparent_crc(p_1678->g_980.f4, "p_1678->g_980.f4", print_hash_value);
    transparent_crc(p_1678->g_980.f5, "p_1678->g_980.f5", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1678->g_1034[i], "p_1678->g_1034[i]", print_hash_value);

    }
    transparent_crc(p_1678->g_1203.f0, "p_1678->g_1203.f0", print_hash_value);
    transparent_crc(p_1678->g_1203.f1, "p_1678->g_1203.f1", print_hash_value);
    transparent_crc(p_1678->g_1203.f2, "p_1678->g_1203.f2", print_hash_value);
    transparent_crc(p_1678->g_1203.f3, "p_1678->g_1203.f3", print_hash_value);
    transparent_crc(p_1678->g_1203.f4, "p_1678->g_1203.f4", print_hash_value);
    transparent_crc(p_1678->g_1203.f5, "p_1678->g_1203.f5", print_hash_value);
    transparent_crc(p_1678->g_1216.f0, "p_1678->g_1216.f0", print_hash_value);
    transparent_crc(p_1678->g_1216.f1, "p_1678->g_1216.f1", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1678->g_1252[i].f0, "p_1678->g_1252[i].f0", print_hash_value);
        transparent_crc(p_1678->g_1252[i].f1, "p_1678->g_1252[i].f1", print_hash_value);
        transparent_crc(p_1678->g_1252[i].f2, "p_1678->g_1252[i].f2", print_hash_value);
        transparent_crc(p_1678->g_1252[i].f3, "p_1678->g_1252[i].f3", print_hash_value);
        transparent_crc(p_1678->g_1252[i].f4, "p_1678->g_1252[i].f4", print_hash_value);
        transparent_crc(p_1678->g_1252[i].f5, "p_1678->g_1252[i].f5", print_hash_value);

    }
    transparent_crc(p_1678->g_1266.f0, "p_1678->g_1266.f0", print_hash_value);
    transparent_crc(p_1678->g_1266.f1, "p_1678->g_1266.f1", print_hash_value);
    transparent_crc(p_1678->g_1266.f2, "p_1678->g_1266.f2", print_hash_value);
    transparent_crc(p_1678->g_1266.f3, "p_1678->g_1266.f3", print_hash_value);
    transparent_crc(p_1678->g_1266.f4, "p_1678->g_1266.f4", print_hash_value);
    transparent_crc(p_1678->g_1266.f5, "p_1678->g_1266.f5", print_hash_value);
    transparent_crc(p_1678->g_1266.f6, "p_1678->g_1266.f6", print_hash_value);
    transparent_crc(p_1678->g_1306.f0, "p_1678->g_1306.f0", print_hash_value);
    transparent_crc(p_1678->g_1306.f1, "p_1678->g_1306.f1", print_hash_value);
    transparent_crc(p_1678->g_1365, "p_1678->g_1365", print_hash_value);
    transparent_crc(p_1678->g_1420.f0, "p_1678->g_1420.f0", print_hash_value);
    transparent_crc(p_1678->g_1420.f1, "p_1678->g_1420.f1", print_hash_value);
    transparent_crc(p_1678->g_1420.f2, "p_1678->g_1420.f2", print_hash_value);
    transparent_crc(p_1678->g_1420.f3, "p_1678->g_1420.f3", print_hash_value);
    transparent_crc(p_1678->g_1420.f4, "p_1678->g_1420.f4", print_hash_value);
    transparent_crc(p_1678->g_1420.f5, "p_1678->g_1420.f5", print_hash_value);
    transparent_crc(p_1678->g_1536.f0, "p_1678->g_1536.f0", print_hash_value);
    transparent_crc(p_1678->g_1536.f1, "p_1678->g_1536.f1", print_hash_value);
    transparent_crc(p_1678->g_1540.f0, "p_1678->g_1540.f0", print_hash_value);
    transparent_crc(p_1678->g_1540.f1, "p_1678->g_1540.f1", print_hash_value);
    transparent_crc(p_1678->g_1557.f0, "p_1678->g_1557.f0", print_hash_value);
    transparent_crc(p_1678->g_1557.f1, "p_1678->g_1557.f1", print_hash_value);
    transparent_crc(p_1678->g_1605, "p_1678->g_1605", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
