// ---fake_divergence -g 5,86,1 -l 5,43,1
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


// Seed: 49

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint32_t  f0;
   volatile int64_t  f1;
   uint8_t  f2;
   volatile int16_t  f3;
};

union U1 {
   int64_t  f0;
   uint32_t  f1;
   uint32_t  f2;
   uint16_t  f3;
};

union U2 {
   volatile uint8_t  f0;
   int8_t  f1;
};

struct S3 {
    int64_t g_15[2][1][5];
    int64_t g_46;
    int8_t g_48;
    uint32_t g_68;
    int32_t g_72;
    int32_t g_77;
    int32_t *g_76;
    int32_t ** volatile g_75;
    volatile uint64_t g_84;
    volatile uint64_t *g_83;
    volatile uint64_t * volatile * volatile g_82;
    int32_t g_90[2];
    int16_t g_93[4][10];
    volatile uint32_t g_103;
    int16_t g_106;
    volatile struct S0 g_110;
    volatile struct S0 * volatile g_111;
    uint16_t g_128;
    int32_t ** volatile g_132[9];
    int32_t ** volatile g_135;
    volatile struct S0 g_139[7];
    volatile struct S0 g_140;
    uint64_t g_145[7][4];
    int32_t g_167;
    int64_t *g_168;
    int16_t g_184;
    uint8_t g_187[3][3][9];
    uint64_t *g_211[7][7][4];
    uint64_t **g_210;
    struct S0 g_262;
    struct S0 g_263;
    uint32_t g_303[4][8][4];
    struct S0 g_337[2][5];
    union U2 g_339;
    union U2 * volatile g_338;
    union U1 g_348;
    uint64_t g_380[1][10][7];
    uint64_t g_382;
    struct S0 g_400;
    struct S0 g_483;
    struct S0 g_507;
    int64_t *g_527[9];
    volatile uint16_t * volatile g_547;
    struct S0 g_628;
    uint64_t g_630;
    uint16_t *g_640[2][5];
    uint16_t ** volatile g_639;
    union U1 *g_648;
    union U1 **g_647;
    union U1 **g_652[6];
    union U1 **g_653[9][1][6];
    volatile union U2 *g_709;
    volatile union U2 * volatile *g_708;
    struct S0 g_767;
    struct S0 g_780[1];
    volatile int16_t g_793;
    uint64_t g_815[8];
    int16_t *** volatile g_860;
    int16_t *g_863;
    int16_t **g_862;
    int16_t *** volatile g_861;
    int32_t ** volatile g_871;
    uint32_t g_905;
    struct S0 g_930[10];
    struct S0 * volatile g_931;
    volatile struct S0 g_958;
    volatile struct S0 g_959;
    union U2 g_987;
    volatile int8_t g_993;
    uint8_t g_1002;
    volatile int32_t *g_1017;
    volatile int32_t ** volatile g_1016;
    struct S0 g_1045[9][5][2];
    struct S0 g_1079;
    uint32_t g_1101;
    volatile int32_t g_1134;
    volatile uint32_t *g_1160[9];
    volatile uint32_t **g_1159;
    struct S0 g_1177;
    struct S0 * volatile g_1178;
    volatile struct S0 g_1181;
    struct S0 g_1208;
    int32_t * volatile g_1235;
    struct S0 g_1270;
    int8_t *g_1275;
    int8_t **g_1274;
    union U2 g_1293;
    int32_t ** volatile g_1298[5];
    struct S0 g_1300[2][7];
    int16_t ***g_1303[7];
    int16_t ****g_1302;
    int16_t *****g_1301[5][2][4];
    int32_t ** volatile g_1316;
    int32_t ** volatile g_1319;
    int32_t ** volatile g_1320;
    volatile struct S0 g_1332;
    int32_t **g_1336;
    int32_t ***g_1335[2][9];
    volatile union U2 g_1361[5];
    int32_t g_1399;
    uint32_t g_1424;
    struct S0 *g_1500;
    struct S0 **g_1499[6][1][2];
    struct S0 g_1525;
    int64_t ** volatile g_1609;
    int64_t ** volatile *g_1608;
    uint16_t g_1640;
    int32_t * volatile g_1641;
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
uint32_t  func_1(struct S3 * p_1653);
struct S0  func_2(uint32_t  p_3, union U1  p_4, uint64_t  p_5, struct S3 * p_1653);
uint32_t  func_6(uint32_t  p_7, int32_t  p_8, int64_t  p_9, struct S3 * p_1653);
uint64_t  func_16(int64_t * p_17, int32_t  p_18, int64_t * p_19, struct S3 * p_1653);
int64_t * func_20(int64_t * p_21, int64_t * p_22, int64_t * p_23, int64_t * p_24, struct S3 * p_1653);
uint8_t  func_25(int64_t * p_26, int64_t * p_27, int64_t  p_28, int64_t * p_29, struct S3 * p_1653);
int64_t * func_30(int64_t * p_31, struct S3 * p_1653);
int64_t * func_32(int64_t * p_33, uint32_t  p_34, struct S3 * p_1653);
int64_t * func_35(union U1  p_36, int64_t * p_37, int64_t * p_38, struct S3 * p_1653);
int64_t * func_40(int64_t  p_41, int16_t  p_42, uint8_t  p_43, int32_t  p_44, int64_t  p_45, struct S3 * p_1653);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1653->g_46 p_1653->g_68 p_1653->g_48 p_1653->g_75 p_1653->g_82 p_1653->g_77 p_1653->g_103 p_1653->g_110 p_1653->g_111 p_1653->g_76 p_1653->g_72 p_1653->g_93 p_1653->g_106 p_1653->g_90 p_1653->g_139 p_1653->g_83 p_1653->g_167 p_1653->g_128 p_1653->g_145 p_1653->g_210 p_1653->g_187 p_1653->g_400 p_1653->g_815 p_1653->g_211 p_1653->g_647 p_1653->g_648 p_1653->g_507.f2 p_1653->g_84 p_1653->g_483.f2 p_1653->g_861 p_1653->g_184 p_1653->g_863 p_1653->g_767.f2 p_1653->g_1002 p_1653->g_1016 p_1653->g_168 p_1653->g_959.f3 p_1653->g_1045 p_1653->g_382 p_1653->g_1079 p_1653->g_1101 p_1653->g_348.f1 p_1653->g_339.f1 p_1653->g_639 p_1653->g_640 p_1653->g_1159 p_1653->g_262.f3 p_1653->g_1177 p_1653->g_1178 p_1653->g_1181 p_1653->g_930.f0 p_1653->g_140.f2 p_1653->g_1208 p_1653->g_1525.f2 p_1653->g_337 p_1653->g_1640 p_1653->g_1641 p_1653->g_1332.f3
 * writes: p_1653->g_15 p_1653->g_48 p_1653->g_68 p_1653->g_72 p_1653->g_76 p_1653->g_90 p_1653->g_93 p_1653->g_106 p_1653->g_110 p_1653->g_77 p_1653->g_140 p_1653->g_128 p_1653->g_167 p_1653->g_168 p_1653->g_46 p_1653->g_184 p_1653->g_187 p_1653->g_210 p_1653->g_337 p_1653->g_648 p_1653->g_263.f2 p_1653->g_507.f2 p_1653->g_348.f2 p_1653->g_862 p_1653->g_400.f2 p_1653->g_767.f2 p_1653->g_1002 p_1653->g_348.f1 p_1653->g_815 p_1653->g_780 p_1653->g_348.f0 p_1653->g_767 p_1653->g_1101 p_1653->g_339.f1 p_1653->g_262 p_1653->g_1525.f2
 */
uint32_t  func_1(struct S3 * p_1653)
{ /* block id: 4 */
    uint64_t l_12 = 0x1D0188753E1E01B1L;
    int64_t *l_13 = (void*)0;
    int64_t *l_14 = &p_1653->g_15[1][0][1];
    union U1 l_39 = {0x0BECC33BAB721576L};
    int8_t *l_47 = &p_1653->g_48;
    int64_t *l_814 = (void*)0;
    uint8_t *l_825 = &p_1653->g_263.f2;
    uint32_t *l_1099 = (void*)0;
    uint32_t *l_1100 = &p_1653->g_1101;
    uint64_t ***l_1618 = (void*)0;
    int32_t *l_1619 = &p_1653->g_72;
    uint64_t *l_1633 = &p_1653->g_815[6];
    uint32_t l_1636 = 8UL;
    uint32_t l_1637[7][5][7] = {{{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL}},{{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL}},{{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL}},{{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL}},{{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL}},{{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL}},{{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL},{0x18D21AB3L,4UL,0x1BE7CDAAL,0xA666C0F6L,1UL,0x9F653F59L,4294967295UL}}};
    int64_t l_1638 = 0x42F99786FDBC6A5BL;
    uint64_t *l_1639 = &l_12;
    int32_t *l_1650 = &p_1653->g_1399;
    int32_t **l_1651 = &l_1650;
    int32_t l_1652[6] = {0x0173E71FL,0x73F47840L,0x0173E71FL,0x0173E71FL,0x73F47840L,0x0173E71FL};
    int i, j, k;
    (*p_1653->g_1178) = func_2(((*l_1100) = func_6(((*l_1100) ^= (safe_add_func_int32_t_s_s((((*l_14) = (0x27L & l_12)) == l_12), ((l_12 , func_16(func_20(((((*l_825) = func_25(func_30(func_32((p_1653->g_168 = func_35(l_39, func_40(p_1653->g_46, ((-2L) && ((*l_47) = p_1653->g_46)), (1L ^ l_39.f0), l_12, p_1653->g_46, p_1653), &p_1653->g_46, p_1653)), l_39.f0, p_1653), p_1653), l_814, p_1653->g_815[6], p_1653->g_211[1][4][0], p_1653)) && l_12) , &p_1653->g_46), l_13, l_814, l_13, p_1653), l_12, l_13, p_1653)) != l_39.f0)))), l_12, l_39.f0, p_1653)), l_39, l_39.f0, p_1653);
    (*p_1653->g_1641) = (0x7D11L | (safe_add_func_uint32_t_u_u(1UL, (safe_unary_minus_func_int16_t_s((safe_div_func_int32_t_s_s(((*l_1619) = (l_1618 == (void*)0)), ((-8L) ^ (safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((((*l_1639) ^= (safe_add_func_uint32_t_u_u(l_39.f0, (safe_sub_func_uint8_t_u_u((((safe_add_func_uint32_t_u_u((safe_unary_minus_func_uint16_t_u((safe_mul_func_uint16_t_u_u((((0x723CA560801DF16CL & ((*l_1633) = 18446744073709551610UL)) | (safe_rshift_func_uint8_t_u_u(((((((**p_1653->g_639) >= l_1636) >= 6L) != 0x921AL) & l_39.f0) , p_1653->g_139[0].f2), 5))) == 3UL), 0UL)))), l_1637[3][4][1])) & l_1636) ^ l_1638), 0x70L))))) , (-4L)), 13)), p_1653->g_1640))))))))));
    l_1652[2] ^= (((((*l_1619) ^ ((*l_1619) | (safe_add_func_uint16_t_u_u((0x0E8AF403F3F72DAAL != ((((*l_1619) == (safe_mod_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u((p_1653->g_348.f1 ^ (*l_1619)), (0x0EL || ((((*l_1651) = l_1650) == &p_1653->g_1399) <= (*l_1619))))) && p_1653->g_1002), FAKE_DIVERGE(p_1653->group_2_offset, get_group_id(2), 10)))) | p_1653->g_187[1][1][8]) >= (-1L))), (*l_1619))))) >= p_1653->g_1332.f3) , (*p_1653->g_168)) == (-5L));
    return p_1653->g_1079.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_863 p_1653->g_106 p_1653->g_128 p_1653->g_639 p_1653->g_640 p_1653->g_168 p_1653->g_46 p_1653->g_72 p_1653->g_167 p_1653->g_1159 p_1653->g_348.f1 p_1653->g_77 p_1653->g_262.f3 p_1653->g_1177 p_1653->g_1178 p_1653->g_1181 p_1653->g_930.f0 p_1653->g_1101 p_1653->g_140.f2 p_1653->g_68 p_1653->g_93 p_1653->g_1208 p_1653->g_139 p_1653->g_75 p_1653->g_76 p_1653->g_1525.f2 p_1653->g_337 p_1653->g_339.f1
 * writes: p_1653->g_339.f1 p_1653->g_106 p_1653->g_128 p_1653->g_77 p_1653->g_1101 p_1653->g_72 p_1653->g_348.f1 p_1653->g_48 p_1653->g_262 p_1653->g_767.f2 p_1653->g_1525.f2
 */
struct S0  func_2(uint32_t  p_3, union U1  p_4, uint64_t  p_5, struct S3 * p_1653)
{ /* block id: 503 */
    int32_t *l_1109 = &p_1653->g_72;
    int32_t *l_1110 = &p_1653->g_72;
    int64_t **l_1116[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int64_t ***l_1115 = &l_1116[0];
    int32_t l_1121 = (-9L);
    int32_t l_1122 = 1L;
    int32_t l_1123 = (-1L);
    int32_t l_1125 = (-3L);
    int32_t l_1126 = 0x4BC1B665L;
    int32_t l_1127 = (-7L);
    int32_t l_1128 = (-10L);
    int32_t l_1129 = 1L;
    int32_t l_1130 = 0x799518CEL;
    int8_t l_1131 = (-1L);
    int32_t l_1132 = (-1L);
    int32_t l_1133[6] = {(-10L),0x46570D29L,(-10L),(-10L),0x46570D29L,(-10L)};
    uint32_t l_1226 = 0x3611FDD3L;
    int16_t ****l_1228 = (void*)0;
    int16_t *****l_1227 = &l_1228;
    struct S0 *l_1264 = &p_1653->g_337[0][0];
    struct S0 **l_1263 = &l_1264;
    int16_t ***l_1265[4];
    uint64_t l_1296 = 0x5B868E71119D7315L;
    uint32_t *l_1329 = &p_1653->g_68;
    uint32_t **l_1328 = &l_1329;
    int32_t l_1400 = 0x6BB7D27FL;
    int64_t l_1434 = 0x63151B76C78BFA07L;
    union U1 l_1602 = {1L};
    int i;
    for (i = 0; i < 4; i++)
        l_1265[i] = &p_1653->g_862;
lbl_1209:
    l_1110 = (l_1109 = l_1109);
    if ((safe_sub_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(0x20BCL, 9)), (l_1115 != &l_1116[0]))))
    { /* block id: 506 */
        int32_t *l_1117 = &p_1653->g_77;
        int32_t *l_1118 = &p_1653->g_167;
        int32_t *l_1119 = &p_1653->g_72;
        int32_t *l_1120[2];
        int32_t l_1124[2];
        uint16_t l_1135 = 0x14B3L;
        uint16_t l_1196[3][2];
        uint32_t l_1199 = 5UL;
        int64_t l_1207 = 0x274FBC746378702FL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_1120[i] = &p_1653->g_77;
        for (i = 0; i < 2; i++)
            l_1124[i] = 0x0F337D51L;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_1196[i][j] = 0xBEF4L;
        }
lbl_1217:
        l_1135++;
        for (p_1653->g_339.f1 = 0; (p_1653->g_339.f1 <= 6); p_1653->g_339.f1 += 1)
        { /* block id: 510 */
            int16_t l_1152 = (-3L);
            if (p_5)
            { /* block id: 511 */
                uint16_t *l_1140 = &p_1653->g_128;
                uint16_t *l_1143 = &l_1135;
                uint32_t l_1156 = 4294967286UL;
                uint32_t *l_1162 = &p_1653->g_1101;
                uint32_t **l_1161 = &l_1162;
                int32_t l_1206 = (-1L);
                (*l_1117) = ((((*l_1143) = (((*p_1653->g_863) = (*p_1653->g_863)) , (((*p_1653->g_863) & (safe_lshift_func_uint16_t_u_s((+((*l_1140)--)), 4))) >= 0x68CCD8D8L))) && (safe_div_func_int32_t_s_s(((safe_sub_func_uint32_t_u_u((safe_div_func_int64_t_s_s(((**p_1653->g_639) != (p_3 <= (((((safe_rshift_func_int8_t_s_s(l_1152, ((safe_unary_minus_func_uint64_t_u(p_3)) != 0x7106D299L))) != (((safe_mod_func_uint32_t_u_u(((p_5 >= p_5) | l_1152), l_1156)) | l_1152) | 0x04A687ABBE748F3CL)) ^ GROUP_DIVERGE(0, 1)) == p_5) , GROUP_DIVERGE(1, 1)))), (*p_1653->g_168))), FAKE_DIVERGE(p_1653->local_1_offset, get_local_id(1), 10))) & (*l_1110)), (*l_1109)))) && (-6L));
                for (p_1653->g_1101 = 0; (p_1653->g_1101 <= 6); p_1653->g_1101 += 1)
                { /* block id: 518 */
                    union U2 *l_1182 = &p_1653->g_339;
                    int32_t **l_1194 = &l_1109;
                    (*l_1110) |= (*l_1118);
                    for (l_1131 = 6; (l_1131 >= 0); l_1131 -= 1)
                    { /* block id: 522 */
                        uint32_t *l_1163 = (void*)0;
                        uint32_t *l_1164 = &p_1653->g_348.f1;
                        int8_t *l_1175 = &p_1653->g_48;
                        int32_t l_1176 = 0x1DF036CBL;
                        union U2 **l_1183 = &l_1182;
                        int32_t ***l_1195 = &l_1194;
                        (*p_1653->g_1178) = (((((safe_mul_func_int8_t_s_s((((FAKE_DIVERGE(p_1653->global_0_offset, get_global_id(0), 10) != (p_1653->g_1159 == l_1161)) <= ((*l_1164)++)) < (safe_sub_func_int32_t_s_s((safe_add_func_int16_t_s_s(p_5, (((1UL | p_3) , ((safe_mul_func_uint16_t_u_u((0x4DB98069L > (((*l_1175) = (p_5 <= p_4.f0)) && (0UL > 247UL))), p_4.f0)) , (*l_1117))) != l_1176))), 8L))), p_3)) ^ 0xCC6EL) , p_1653->g_262.f3) >= p_4.f0) , p_1653->g_1177);
                        (*l_1117) = (0x88BFF4E6L | ((0x5E3B6740L != 0x569611BBL) >= (((*l_1183) = (p_1653->g_1181 , l_1182)) == (void*)0)));
                        if (p_3)
                            break;
                        (*l_1109) = ((safe_mul_func_int8_t_s_s(((((((safe_lshift_func_int16_t_s_s(((*p_1653->g_863) = (safe_rshift_func_int16_t_s_u(((safe_rshift_func_int8_t_s_u(((l_1156 | p_5) >= ((*l_1143) |= ((safe_mul_func_int16_t_s_s((((*l_1195) = l_1194) != (((l_1156 != (l_1196[2][1] < p_1653->g_930[2].f0)) , (safe_mod_func_uint16_t_u_u((**p_1653->g_639), FAKE_DIVERGE(p_1653->global_2_offset, get_global_id(2), 10)))) , &l_1119)), (0x1FC7L == (*p_1653->g_863)))) != 1L))), 3)) >= (*p_1653->g_168)), l_1199))), p_3)) && p_4.f0) < p_1653->g_1101) == 0UL) ^ p_4.f0) || (*l_1118)), FAKE_DIVERGE(p_1653->group_2_offset, get_group_id(2), 10))) | 0x4985237B7AAE656DL);
                    }
                    for (p_5 = 0; (p_5 <= 6); p_5 += 1)
                    { /* block id: 536 */
                        (*l_1117) &= (((l_1156 & GROUP_DIVERGE(1, 1)) != (safe_add_func_int8_t_s_s((((((((((void*)0 == &p_1653->g_653[8][0][1]) , p_4.f0) || p_1653->g_140.f2) , p_1653->g_68) == p_1653->g_93[0][5]) , (*l_1110)) , (safe_rshift_func_uint8_t_u_s((((safe_lshift_func_int8_t_s_s((FAKE_DIVERGE(p_1653->global_0_offset, get_global_id(0), 10) ^ (p_3 == l_1156)), 6)) != l_1206) > 0x132F9647L), 6))) == l_1206), 252UL))) == l_1207);
                        return p_1653->g_1208;
                    }
                }
            }
            else
            { /* block id: 541 */
                int32_t **l_1216 = &l_1120[1];
                for (p_1653->g_348.f1 = 1; (p_1653->g_348.f1 <= 6); p_1653->g_348.f1 += 1)
                { /* block id: 544 */
                    uint16_t l_1210 = 0x0B31L;
                    int i;
                    if (p_1653->g_167)
                        goto lbl_1209;
                    for (p_1653->g_767.f2 = 0; (p_1653->g_767.f2 <= 1); p_1653->g_767.f2 += 1)
                    { /* block id: 548 */
                        uint16_t l_1213 = 0x6AFFL;
                        ++l_1210;
                        l_1213++;
                    }
                    return p_1653->g_139[p_1653->g_348.f1];
                }
                (*l_1216) = (*p_1653->g_75);
                (*l_1117) = ((void*)0 != &l_1118);
            }
            if (p_1653->g_72)
                goto lbl_1217;
            (*l_1119) &= p_5;
        }
    }
    else
    { /* block id: 560 */
        int8_t l_1221[1];
        int16_t ***l_1234[10] = {&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862};
        int16_t ****l_1233 = &l_1234[6];
        int8_t *l_1244 = &p_1653->g_48;
        uint16_t *l_1247 = &p_1653->g_128;
        int64_t *l_1255[3][4][8] = {{{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]},{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]},{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]},{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]}},{{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]},{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]},{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]},{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]}},{{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]},{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]},{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]},{(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1],(void*)0,(void*)0,&p_1653->g_15[1][0][1]}}};
        uint64_t l_1260 = 18446744073709551615UL;
        int32_t l_1266 = 0x6CD17A2DL;
        uint32_t *l_1279 = &p_1653->g_68;
        uint32_t **l_1278 = &l_1279;
        int16_t l_1334 = 3L;
        int32_t l_1373[8] = {0x14B5045EL,0x14B5045EL,0x14B5045EL,0x14B5045EL,0x14B5045EL,0x14B5045EL,0x14B5045EL,0x14B5045EL};
        union U2 *l_1423 = (void*)0;
        union U2 **l_1422 = &l_1423;
        struct S0 **l_1502 = &p_1653->g_1500;
        int32_t ***l_1515 = &p_1653->g_1336;
        int32_t *l_1542 = &l_1127;
        int32_t l_1597 = 0x0BCE414CL;
        int64_t ***l_1610 = &l_1116[0];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1221[i] = 0x42L;
        (1 + 1);
    }
    for (p_1653->g_1525.f2 = (-20); (p_1653->g_1525.f2 > 50); p_1653->g_1525.f2++)
    { /* block id: 709 */
        if ((*l_1110))
            break;
    }
    return (**l_1263);
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_647 p_1653->g_348.f1 p_1653->g_1101
 * writes: p_1653->g_648 p_1653->g_348.f1 p_1653->g_1101 p_1653->g_76
 */
uint32_t  func_6(uint32_t  p_7, int32_t  p_8, int64_t  p_9, struct S3 * p_1653)
{ /* block id: 488 */
    union U1 *l_1102[5] = {&p_1653->g_348,&p_1653->g_348,&p_1653->g_348,&p_1653->g_348,&p_1653->g_348};
    uint32_t l_1108[8] = {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL};
    int i;
    (*p_1653->g_647) = l_1102[3];
    for (p_1653->g_348.f1 = (-27); (p_1653->g_348.f1 != 26); p_1653->g_348.f1++)
    { /* block id: 492 */
        if (p_8)
            break;
    }
    for (p_1653->g_1101 = (-11); (p_1653->g_1101 < 11); p_1653->g_1101 = safe_add_func_uint64_t_u_u(p_1653->g_1101, 9))
    { /* block id: 497 */
        int32_t **l_1107 = &p_1653->g_76;
        if (p_8)
            break;
        (*l_1107) = (void*)0;
    }
    return l_1108[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_139.f3 p_1653->g_72 p_1653->g_863 p_1653->g_77 p_1653->g_767.f2 p_1653->g_128 p_1653->g_1002 p_1653->g_90 p_1653->g_46 p_1653->g_48 p_1653->g_1016 p_1653->g_168 p_1653->g_959.f3 p_1653->g_167 p_1653->g_76 p_1653->g_1045 p_1653->g_75 p_1653->g_84 p_1653->g_382 p_1653->g_1079 p_1653->g_400.f2 p_1653->g_184
 * writes: p_1653->g_400.f2 p_1653->g_46 p_1653->g_184 p_1653->g_72 p_1653->g_507.f2 p_1653->g_106 p_1653->g_77 p_1653->g_767.f2 p_1653->g_128 p_1653->g_1002 p_1653->g_48 p_1653->g_348.f1 p_1653->g_210 p_1653->g_815 p_1653->g_780 p_1653->g_167 p_1653->g_93 p_1653->g_348.f0 p_1653->g_767
 */
uint64_t  func_16(int64_t * p_17, int32_t  p_18, int64_t * p_19, struct S3 * p_1653)
{ /* block id: 371 */
    uint8_t l_865 = 0UL;
    int32_t l_891 = (-7L);
    int16_t ***l_895 = &p_1653->g_862;
    int16_t ***l_897 = (void*)0;
    int32_t l_906 = 0x18E66877L;
    int32_t l_908 = 0L;
    int32_t l_962 = (-3L);
    uint32_t l_988[8][1] = {{0x463E7C65L},{0x463E7C65L},{0x463E7C65L},{0x463E7C65L},{0x463E7C65L},{0x463E7C65L},{0x463E7C65L},{0x463E7C65L}};
    int32_t l_996 = 0x7900D4C5L;
    int32_t l_998[1];
    int32_t *l_1015 = &p_1653->g_90[1];
    int32_t **l_1014 = &l_1015;
    uint64_t **l_1041[4][2];
    uint32_t l_1098[4][5][10] = {{{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L}},{{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L}},{{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L}},{{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L},{3UL,4294967295UL,0x8F54596BL,0x0C4BA305L,0x8F54596BL,4294967295UL,3UL,0x5357231AL,0xC8F6D6C9L,0xC8F6D6C9L}}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_998[i] = 0x2721C38DL;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
            l_1041[i][j] = &p_1653->g_211[5][6][0];
    }
lbl_909:
    ++l_865;
lbl_929:
    for (p_1653->g_400.f2 = 0; (p_1653->g_400.f2 <= 18); ++p_1653->g_400.f2)
    { /* block id: 375 */
        int32_t *l_870 = &p_1653->g_167;
        l_870 = l_870;
    }
    for (p_1653->g_46 = 23; (p_1653->g_46 < (-29)); --p_1653->g_46)
    { /* block id: 380 */
        uint32_t l_877[4][10] = {{4294967292UL,4294967287UL,4294967287UL,4294967292UL,0x2BB338D9L,0x6500C4B2L,0x6500C4B2L,0x2BB338D9L,4294967292UL,4294967287UL},{4294967292UL,4294967287UL,4294967287UL,4294967292UL,0x2BB338D9L,0x6500C4B2L,0x6500C4B2L,0x2BB338D9L,4294967292UL,4294967287UL},{4294967292UL,4294967287UL,4294967287UL,4294967292UL,0x2BB338D9L,0x6500C4B2L,0x6500C4B2L,0x2BB338D9L,4294967292UL,4294967287UL},{4294967292UL,4294967287UL,4294967287UL,4294967292UL,0x2BB338D9L,0x6500C4B2L,0x6500C4B2L,0x2BB338D9L,4294967292UL,4294967287UL}};
        uint8_t l_954 = 0xD6L;
        int16_t ****l_989 = &l_897;
        int32_t l_992 = (-2L);
        int32_t l_995[6][4][8] = {{{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L}},{{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L}},{{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L}},{{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L}},{{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L}},{{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L},{0x4D73E220L,0x7D031F44L,0x3CABE098L,(-6L),0x4D73E220L,(-7L),0x7D031F44L,1L}}};
        int16_t *****l_1050 = &l_989;
        uint32_t *l_1070[1];
        uint32_t **l_1069[4][5] = {{&l_1070[0],&l_1070[0],&l_1070[0],&l_1070[0],&l_1070[0]},{&l_1070[0],&l_1070[0],&l_1070[0],&l_1070[0],&l_1070[0]},{&l_1070[0],&l_1070[0],&l_1070[0],&l_1070[0],&l_1070[0]},{&l_1070[0],&l_1070[0],&l_1070[0],&l_1070[0],&l_1070[0]}};
        int16_t *l_1071 = (void*)0;
        int16_t *l_1072 = &p_1653->g_93[2][1];
        int64_t *l_1073 = (void*)0;
        int64_t *l_1074 = &p_1653->g_348.f0;
        int32_t l_1091[10] = {0x1CD926B5L,(-4L),0x0B185650L,(-4L),0x1CD926B5L,0x1CD926B5L,(-4L),0x0B185650L,(-4L),0x1CD926B5L};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1070[i] = &p_1653->g_68;
        for (p_1653->g_184 = 0; (p_1653->g_184 <= 6); p_1653->g_184 += 1)
        { /* block id: 383 */
            int32_t *l_874 = &p_1653->g_72;
            int32_t l_875 = 0x65CD67A7L;
            int32_t *l_876[3];
            uint8_t *l_887 = &p_1653->g_507.f2;
            int32_t *l_890[3];
            int16_t ***l_894 = &p_1653->g_862;
            int16_t ****l_896[1][9][1] = {{{&l_894},{&l_894},{&l_894},{&l_894},{&l_894},{&l_894},{&l_894},{&l_894},{&l_894}}};
            uint32_t *l_898 = &l_877[1][4];
            uint32_t *l_899 = (void*)0;
            uint32_t *l_900 = &p_1653->g_348.f1;
            uint32_t *l_901 = &p_1653->g_348.f1;
            uint32_t *l_902 = &p_1653->g_348.f1;
            uint32_t *l_903 = &p_1653->g_348.f1;
            uint32_t *l_904[4][5][10] = {{{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905}},{{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905}},{{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905}},{{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905},{&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905,&p_1653->g_905,(void*)0,&p_1653->g_905,(void*)0,&p_1653->g_905,&p_1653->g_905}}};
            int16_t ***l_907[9];
            uint16_t **l_914[7];
            uint32_t l_964 = 0x73E6F161L;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_876[i] = &l_875;
            for (i = 0; i < 3; i++)
                l_890[i] = (void*)0;
            for (i = 0; i < 9; i++)
                l_907[i] = &p_1653->g_862;
            for (i = 0; i < 7; i++)
                l_914[i] = &p_1653->g_640[1][0];
            l_877[1][5]--;
            l_908 = ((safe_unary_minus_func_int32_t_s((p_1653->g_77 &= (safe_sub_func_uint64_t_u_u((((*l_874) ^= (p_1653->g_139[0].f3 , (+4L))) | p_18), ((safe_lshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u(((*l_887) = 0UL), 1UL)), 1)) < (((l_906 ^= ((*l_898) = (safe_unary_minus_func_int8_t_s(((l_891 ^= (safe_unary_minus_func_uint16_t_u(l_865))) , (FAKE_DIVERGE(p_1653->group_1_offset, get_group_id(1), 10) , (safe_rshift_func_int16_t_s_u(((*p_1653->g_863) = (l_894 != (l_897 = l_895))), 6)))))))) ^ ((l_907[0] == &p_1653->g_862) <= 0x07L)) , l_877[2][5]))))))) || p_18);
            for (l_906 = 1; (l_906 <= 5); l_906 += 1)
            { /* block id: 396 */
                int16_t l_915 = 4L;
                uint32_t l_922 = 4294967295UL;
                int32_t *l_932 = &p_1653->g_167;
                int32_t l_957[2];
                union U2 *l_986[3];
                int i;
                for (i = 0; i < 2; i++)
                    l_957[i] = 0x02EEDE5EL;
                for (i = 0; i < 3; i++)
                    l_986[i] = &p_1653->g_987;
                if (p_1653->g_77)
                    goto lbl_909;
            }
        }
        for (p_1653->g_767.f2 = 0; (p_1653->g_767.f2 <= 0); p_1653->g_767.f2 += 1)
        { /* block id: 438 */
            int32_t l_994 = 0L;
            int32_t l_997 = 0x6FE4F339L;
            int32_t l_999 = (-1L);
            int32_t l_1000 = 0x40BDFD41L;
            int32_t l_1001 = 0x0EB3698DL;
            int32_t *l_1008 = &l_997;
            for (p_1653->g_128 = 2; (p_1653->g_128 <= 8); p_1653->g_128 += 1)
            { /* block id: 441 */
                int32_t *l_990 = (void*)0;
                int32_t *l_991[8] = {&l_962,&l_962,&l_962,&l_962,&l_962,&l_962,&l_962,&l_962};
                int i;
                p_1653->g_1002--;
            }
            for (l_891 = 8; (l_891 >= 0); l_891 -= 1)
            { /* block id: 446 */
                struct S0 *l_1006 = (void*)0;
                struct S0 **l_1005 = &l_1006;
                int32_t *l_1007 = &l_891;
                int i;
                if ((&p_1653->g_780[p_1653->g_767.f2] == ((*l_1005) = &p_1653->g_780[p_1653->g_767.f2])))
                { /* block id: 448 */
                    int i;
                    l_1008 = l_1007;
                    return p_1653->g_90[(p_1653->g_767.f2 + 1)];
                }
                else
                { /* block id: 451 */
                    int8_t l_1009[7][1][5] = {{{3L,(-6L),9L,0x07L,(-6L)}},{{3L,(-6L),9L,0x07L,(-6L)}},{{3L,(-6L),9L,0x07L,(-6L)}},{{3L,(-6L),9L,0x07L,(-6L)}},{{3L,(-6L),9L,0x07L,(-6L)}},{{3L,(-6L),9L,0x07L,(-6L)}},{{3L,(-6L),9L,0x07L,(-6L)}}};
                    int8_t *l_1012 = (void*)0;
                    int8_t *l_1013 = &p_1653->g_48;
                    uint32_t l_1044 = 0x09BA1C82L;
                    int32_t **l_1047 = &l_1008;
                    int i, j, k;
                    if ((((l_1009[6][0][3] , &p_1653->g_993) != (((-7L) < (((safe_mul_func_int8_t_s_s(((*l_1013) ^= (p_18 ^ (*p_17))), (l_1014 == p_1653->g_1016))) < (*l_1007)) , l_995[1][2][1])) , (void*)0)) == p_18))
                    { /* block id: 453 */
                        int32_t l_1028 = 0x26C64892L;
                        uint32_t *l_1035 = &l_877[0][2];
                        uint32_t *l_1038 = &p_1653->g_348.f1;
                        uint64_t ***l_1042 = &p_1653->g_210;
                        uint64_t *l_1043 = &p_1653->g_815[6];
                        int i;
                        (*p_1653->g_76) ^= ((safe_sub_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(65530UL, FAKE_DIVERGE(p_1653->group_0_offset, get_group_id(0), 10))), (safe_unary_minus_func_int64_t_s((*p_1653->g_168))))) >= (safe_rshift_func_int16_t_s_s((((safe_mod_func_int8_t_s_s((safe_unary_minus_func_uint64_t_u(((*l_1043) = (((((l_1028 | ((*p_17) <= (((*p_1653->g_863) = (safe_rshift_func_int16_t_s_u(((0x20L >= ((*l_1013) &= p_1653->g_959.f3)) == (safe_rshift_func_uint16_t_u_s((safe_div_func_uint32_t_u_u(((*l_1038) = (--(*l_1035))), (safe_sub_func_int8_t_s_s((l_995[1][2][1] > ((((*l_1042) = l_1041[1][1]) == &p_1653->g_83) && 0L)), l_1028)))), p_18))), 1))) != p_18))) != 0x32835D78L) && p_18) < p_18) >= p_1653->g_167)))), (-1L))) , l_1044) , (*l_1007)), p_18)));
                        p_1653->g_780[p_1653->g_767.f2] = p_1653->g_1045[2][4][0];
                    }
                    else
                    { /* block id: 462 */
                        int32_t *l_1046 = &p_1653->g_167;
                        (*l_1046) &= (l_998[0] = ((*l_1008) = (!(**p_1653->g_75))));
                    }
                    (*l_1047) = (void*)0;
                    if (p_1653->g_128)
                        goto lbl_929;
                    return l_988[4][0];
                }
            }
        }
        l_992 ^= ((((&l_895 != ((*l_1050) = l_989)) >= FAKE_DIVERGE(p_1653->group_2_offset, get_group_id(2), 10)) && (((safe_sub_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(p_1653->g_90[1], (safe_sub_func_uint16_t_u_u(((!(((*l_1074) = ((safe_rshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_s(1L, ((safe_sub_func_uint64_t_u_u((((safe_mul_func_uint8_t_u_u((((void*)0 == &p_1653->g_111) >= (safe_mod_func_int64_t_s_s((safe_mod_func_uint64_t_u_u(((((*l_1072) = ((*p_1653->g_863) = (l_1069[0][4] != (void*)0))) <= (18446744073709551613UL < 3L)) >= FAKE_DIVERGE(p_1653->local_2_offset, get_local_id(2), 10)), p_18)), p_18))), p_1653->g_84)) >= (*p_1653->g_76)) != l_865), l_906)) & (*p_1653->g_76)))), FAKE_DIVERGE(p_1653->global_0_offset, get_global_id(0), 10))) , 0L)) , p_18)) >= p_18), p_18)))), GROUP_DIVERGE(0, 1))) != 0x721EF695F1E3B8B6L) > p_1653->g_382)) || 0x58ABL);
        for (p_1653->g_1002 = (-27); (p_1653->g_1002 == 6); p_1653->g_1002++)
        { /* block id: 480 */
            struct S0 *l_1080 = &p_1653->g_767;
            int32_t *l_1081 = &l_992;
            int32_t *l_1082 = &l_996;
            int32_t *l_1083 = &l_992;
            int32_t *l_1084 = (void*)0;
            int32_t *l_1085 = &l_908;
            int32_t *l_1086 = &l_891;
            int32_t *l_1087 = &l_998[0];
            int32_t *l_1088 = &l_998[0];
            int32_t *l_1089 = &l_962;
            int32_t *l_1090 = (void*)0;
            int32_t *l_1092 = &p_1653->g_77;
            int32_t l_1093 = 0x09E89B32L;
            int32_t *l_1094[7] = {&l_996,(void*)0,&l_996,&l_996,(void*)0,&l_996,&l_996};
            uint64_t l_1095 = 0x29EB919E18694087L;
            int i;
            (*p_1653->g_76) |= (safe_div_func_uint16_t_u_u((~p_18), (FAKE_DIVERGE(p_1653->group_0_offset, get_group_id(0), 10) & 0x27CB5601D7E5CEDCL)));
            (*l_1080) = p_1653->g_1079;
            l_1095++;
        }
    }
    return l_1098[3][0][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_507.f2 p_1653->g_72 p_1653->g_84 p_1653->g_483.f2 p_1653->g_187 p_1653->g_815 p_1653->g_167 p_1653->g_400.f2 p_1653->g_861
 * writes: p_1653->g_507.f2 p_1653->g_348.f2 p_1653->g_46 p_1653->g_862
 */
int64_t * func_20(int64_t * p_21, int64_t * p_22, int64_t * p_23, int64_t * p_24, struct S3 * p_1653)
{ /* block id: 357 */
    uint8_t l_831 = 0xE6L;
    int8_t l_855 = 0x0CL;
    union U1 **l_856 = &p_1653->g_648;
    int16_t *l_859 = (void*)0;
    int16_t **l_858[9][10][2] = {{{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859}},{{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859}},{{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859}},{{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859}},{{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859}},{{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859}},{{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859}},{{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859}},{{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859},{&l_859,&l_859}}};
    int64_t *l_864 = &p_1653->g_46;
    int i, j, k;
    for (p_1653->g_507.f2 = (-3); (p_1653->g_507.f2 < 52); p_1653->g_507.f2++)
    { /* block id: 360 */
        int32_t *l_828 = &p_1653->g_167;
        int32_t *l_829 = &p_1653->g_72;
        int32_t *l_830[7][5] = {{&p_1653->g_77,&p_1653->g_167,&p_1653->g_167,&p_1653->g_77,&p_1653->g_77},{&p_1653->g_77,&p_1653->g_167,&p_1653->g_167,&p_1653->g_77,&p_1653->g_77},{&p_1653->g_77,&p_1653->g_167,&p_1653->g_167,&p_1653->g_77,&p_1653->g_77},{&p_1653->g_77,&p_1653->g_167,&p_1653->g_167,&p_1653->g_77,&p_1653->g_77},{&p_1653->g_77,&p_1653->g_167,&p_1653->g_167,&p_1653->g_77,&p_1653->g_77},{&p_1653->g_77,&p_1653->g_167,&p_1653->g_167,&p_1653->g_77,&p_1653->g_77},{&p_1653->g_77,&p_1653->g_167,&p_1653->g_167,&p_1653->g_77,&p_1653->g_77}};
        union U1 **l_857 = (void*)0;
        int i, j;
        l_831--;
        for (p_1653->g_348.f2 = 28; (p_1653->g_348.f2 != 47); p_1653->g_348.f2 = safe_add_func_int64_t_s_s(p_1653->g_348.f2, 9))
        { /* block id: 364 */
            uint16_t l_836 = 9UL;
            l_836++;
        }
        (*p_1653->g_861) = (((safe_div_func_uint8_t_u_u((*l_829), ((safe_lshift_func_int16_t_s_s(((safe_mod_func_int32_t_s_s((safe_lshift_func_int8_t_s_s((*l_829), 3)), 0x089F400FL)) > (safe_mod_func_uint64_t_u_u(p_1653->g_84, (((0UL != (~(safe_mul_func_uint16_t_u_u((((((safe_sub_func_int64_t_s_s((~0x55F96C7072117A4CL), (safe_div_func_int64_t_s_s((~((l_831 ^ (((l_831 > ((*p_21) = ((l_831 != 2L) & l_855))) , l_856) != l_857)) && (*l_829))), 6L)))) > p_1653->g_483.f2) | p_1653->g_187[0][0][2]) , (*l_829)) & p_1653->g_815[6]), (*l_828))))) & p_1653->g_400.f2) , l_855)))), 7)) , l_855))) <= GROUP_DIVERGE(0, 1)) , l_858[4][8][0]);
    }
    return l_864;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_647 p_1653->g_648 p_1653->g_72
 * writes: p_1653->g_648
 */
uint8_t  func_25(int64_t * p_26, int64_t * p_27, int64_t  p_28, int64_t * p_29, struct S3 * p_1653)
{ /* block id: 352 */
    int32_t *l_816 = &p_1653->g_77;
    int32_t *l_817 = &p_1653->g_72;
    int32_t *l_818 = &p_1653->g_77;
    int32_t *l_819 = &p_1653->g_72;
    int32_t *l_820 = &p_1653->g_167;
    int32_t *l_821[5][3][8] = {{{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77}},{{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77}},{{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77}},{{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77}},{{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77},{(void*)0,&p_1653->g_72,(void*)0,&p_1653->g_167,(void*)0,(void*)0,&p_1653->g_167,&p_1653->g_77}}};
    uint32_t l_822 = 4294967292UL;
    int i, j, k;
    (*p_1653->g_647) = (*p_1653->g_647);
    --l_822;
    return (*l_819);
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_72
 * writes: p_1653->g_72
 */
int64_t * func_30(int64_t * p_31, struct S3 * p_1653)
{ /* block id: 343 */
    uint64_t l_809[4];
    int32_t *l_812 = &p_1653->g_77;
    int i;
    for (i = 0; i < 4; i++)
        l_809[i] = 18446744073709551608UL;
    for (p_1653->g_72 = 0; (p_1653->g_72 <= 0); p_1653->g_72 += 1)
    { /* block id: 346 */
        int32_t *l_808 = &p_1653->g_77;
        int32_t **l_813 = &l_812;
        l_809[0]--;
        (*l_813) = l_812;
        return &p_1653->g_46;
    }
    return &p_1653->g_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_128 p_1653->g_76 p_1653->g_72 p_1653->g_77 p_1653->g_46 p_1653->g_145 p_1653->g_110.f1 p_1653->g_68 p_1653->g_210 p_1653->g_75 p_1653->g_48 p_1653->g_139.f0 p_1653->g_187 p_1653->g_400
 * writes: p_1653->g_128 p_1653->g_72 p_1653->g_77 p_1653->g_46 p_1653->g_168 p_1653->g_184 p_1653->g_187 p_1653->g_210 p_1653->g_48 p_1653->g_68 p_1653->g_337
 */
int64_t * func_32(int64_t * p_33, uint32_t  p_34, struct S3 * p_1653)
{ /* block id: 53 */
    uint32_t *l_172 = (void*)0;
    int8_t l_185 = 0x4BL;
    union U1 l_188 = {8L};
    int32_t l_214 = (-1L);
    int32_t *l_215 = &p_1653->g_90[0];
    int32_t l_252 = 0x16E16E4EL;
    int8_t l_254 = 0x66L;
    int32_t l_257[1][6][2] = {{{0x13F1AEBCL,0x13F1AEBCL},{0x13F1AEBCL,0x13F1AEBCL},{0x13F1AEBCL,0x13F1AEBCL},{0x13F1AEBCL,0x13F1AEBCL},{0x13F1AEBCL,0x13F1AEBCL},{0x13F1AEBCL,0x13F1AEBCL}}};
    uint32_t l_325 = 0x875A6592L;
    int16_t l_469 = 0x230BL;
    int32_t **l_475 = &p_1653->g_76;
    int8_t l_570[2];
    int16_t l_578 = 0x1C2DL;
    uint32_t l_667 = 4294967286UL;
    uint16_t *l_700 = &p_1653->g_128;
    uint8_t *l_704 = &p_1653->g_337[1][3].f2;
    uint8_t l_707 = 255UL;
    int8_t *l_731 = (void*)0;
    int8_t **l_730 = &l_731;
    uint64_t *l_751 = &p_1653->g_380[0][7][6];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_570[i] = 0L;
    for (p_1653->g_128 = 0; (p_1653->g_128 <= 8); p_1653->g_128 += 1)
    { /* block id: 56 */
        int32_t l_169 = 0L;
        uint32_t *l_171 = &p_1653->g_68;
        uint32_t **l_170[5][5][1] = {{{&l_171},{&l_171},{&l_171},{&l_171},{&l_171}},{{&l_171},{&l_171},{&l_171},{&l_171},{&l_171}},{{&l_171},{&l_171},{&l_171},{&l_171},{&l_171}},{{&l_171},{&l_171},{&l_171},{&l_171},{&l_171}},{{&l_171},{&l_171},{&l_171},{&l_171},{&l_171}}};
        int64_t **l_183 = &p_1653->g_168;
        uint8_t *l_186[10][9][2] = {{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}},{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}},{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}},{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}},{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}},{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}},{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}},{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}},{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}},{{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]},{(void*)0,&p_1653->g_187[1][1][8]}}};
        int i, j, k;
        (*p_1653->g_76) ^= (l_169 != 1L);
        for (p_1653->g_46 = 0; (p_1653->g_46 <= 8); p_1653->g_46 += 1)
        { /* block id: 60 */
            (*p_1653->g_76) &= p_34;
        }
        (*p_1653->g_76) ^= (((p_1653->g_187[2][1][7] = (((l_172 = (void*)0) == &p_1653->g_68) , ((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1653->local_1_offset, get_local_id(1), 10), (((FAKE_DIVERGE(p_1653->local_2_offset, get_local_id(2), 10) | (safe_sub_func_int8_t_s_s((safe_div_func_uint8_t_u_u((p_1653->g_145[4][1] & (7L | (safe_mod_func_int32_t_s_s(((p_1653->g_110.f1 < (p_1653->g_184 = ((safe_add_func_int32_t_s_s(0x37F148B7L, 0UL)) != (p_34 , (((((*l_183) = &p_1653->g_46) != &p_1653->g_46) || l_169) , p_34))))) <= p_1653->g_68), 4294967295UL)))), l_169)), FAKE_DIVERGE(p_1653->group_0_offset, get_group_id(0), 10)))) >= p_34) <= l_185))) ^ l_169))) , l_188) , p_34);
        for (l_185 = 8; (l_185 >= 3); l_185 -= 1)
        { /* block id: 70 */
            int32_t *l_203 = &p_1653->g_90[0];
            uint64_t ***l_212 = &p_1653->g_210;
            uint64_t *l_213[7] = {&p_1653->g_145[4][1],&p_1653->g_145[4][1],&p_1653->g_145[4][1],&p_1653->g_145[4][1],&p_1653->g_145[4][1],&p_1653->g_145[4][1],&p_1653->g_145[4][1]};
            int8_t *l_216 = (void*)0;
            int8_t *l_217 = &p_1653->g_48;
            int32_t *l_218 = &l_169;
            int i;
            (*l_218) |= ((p_34 , (safe_mul_func_int8_t_s_s(((*l_217) ^= (p_34 || ((safe_add_func_uint16_t_u_u(p_34, 65526UL)) > ((safe_rshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(0x33D21A56CEAAE59BL, (l_203 != (l_215 = ((l_214 = ((((safe_mod_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((safe_div_func_uint16_t_u_u((65535UL == (((*l_212) = p_1653->g_210) == (void*)0)), 65532UL)), (**p_1653->g_75))), 0x44B8L)) != p_1653->g_145[4][1]) , p_34) != 0x76L)) , (void*)0))))), 0x92BAL)) <= 1UL), (-1L))), 9)) , 0xC2L)))), 0L))) & 0L);
            (*l_218) &= (-1L);
            return l_213[4];
        }
    }
    for (p_1653->g_68 = 0; (p_1653->g_68 <= 50); p_1653->g_68 = safe_add_func_int16_t_s_s(p_1653->g_68, 6))
    { /* block id: 82 */
        union U1 l_223 = {-1L};
        int32_t l_235 = (-6L);
        int32_t l_247 = 0x42A84051L;
        int32_t l_250 = (-4L);
        int32_t l_253 = 0x0DB0FBA3L;
        int32_t l_255 = 0x23A8EB31L;
        int32_t l_256[5][3] = {{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)}};
        union U2 *l_267 = (void*)0;
        int64_t l_275 = (-1L);
        int32_t *l_308[3];
        int16_t l_324 = 0x20E5L;
        union U2 *l_516 = &p_1653->g_339;
        uint32_t l_548[8] = {0x52422B10L,0x52422B10L,0x52422B10L,0x52422B10L,0x52422B10L,0x52422B10L,0x52422B10L,0x52422B10L};
        uint8_t *l_610 = &p_1653->g_262.f2;
        uint32_t l_625 = 0x41C5B854L;
        uint16_t **l_642 = &p_1653->g_640[1][0];
        int64_t l_674 = (-5L);
        struct S0 *l_720[4][10] = {{(void*)0,&p_1653->g_262,&p_1653->g_628,&p_1653->g_262,(void*)0,(void*)0,&p_1653->g_262,&p_1653->g_628,&p_1653->g_262,(void*)0},{(void*)0,&p_1653->g_262,&p_1653->g_628,&p_1653->g_262,(void*)0,(void*)0,&p_1653->g_262,&p_1653->g_628,&p_1653->g_262,(void*)0},{(void*)0,&p_1653->g_262,&p_1653->g_628,&p_1653->g_262,(void*)0,(void*)0,&p_1653->g_262,&p_1653->g_628,&p_1653->g_262,(void*)0},{(void*)0,&p_1653->g_262,&p_1653->g_628,&p_1653->g_262,(void*)0,(void*)0,&p_1653->g_262,&p_1653->g_628,&p_1653->g_262,(void*)0}};
        struct S0 **l_719 = &l_720[3][4];
        uint64_t *l_750[3][2] = {{&p_1653->g_630,&p_1653->g_630},{&p_1653->g_630,&p_1653->g_630},{&p_1653->g_630,&p_1653->g_630}};
        int i, j;
        for (i = 0; i < 3; i++)
            l_308[i] = &p_1653->g_167;
        if (((p_34 , (safe_rshift_func_int8_t_s_s(((p_34 & ((l_223 , (p_1653->g_139[0].f0 < (p_34 == (safe_mod_func_uint16_t_u_u(((((safe_mul_func_uint8_t_u_u((((safe_sub_func_int32_t_s_s((-2L), FAKE_DIVERGE(p_1653->local_0_offset, get_local_id(0), 10))) , (void*)0) == l_215), ((safe_mod_func_uint16_t_u_u(l_188.f0, p_1653->g_128)) && p_1653->g_187[1][1][8]))) | l_223.f0) & l_223.f0) , 0x58D6L), 0x5CF3L))))) > FAKE_DIVERGE(p_1653->local_2_offset, get_local_id(2), 10))) == l_188.f0), p_34))) | l_223.f0))
        { /* block id: 83 */
            uint64_t **l_234 = &p_1653->g_211[3][4][2];
            int32_t l_249 = (-8L);
            int32_t l_251 = 0L;
            int32_t l_258 = 0x29F12BCDL;
            int32_t l_277 = 0x636F8067L;
            int32_t l_278 = 1L;
            uint16_t *l_336[5];
            union U2 *l_347 = &p_1653->g_339;
            int32_t l_389 = 0x7DF1AB05L;
            uint64_t l_390 = 1UL;
            int i;
            for (i = 0; i < 5; i++)
                l_336[i] = &p_1653->g_128;
            for (p_1653->g_72 = 0; (p_1653->g_72 == (-24)); --p_1653->g_72)
            { /* block id: 86 */
                uint32_t l_259 = 0x4A17C66CL;
                int32_t l_272[10][7] = {{(-10L),9L,9L,(-10L),(-10L),9L,9L},{(-10L),9L,9L,(-10L),(-10L),9L,9L},{(-10L),9L,9L,(-10L),(-10L),9L,9L},{(-10L),9L,9L,(-10L),(-10L),9L,9L},{(-10L),9L,9L,(-10L),(-10L),9L,9L},{(-10L),9L,9L,(-10L),(-10L),9L,9L},{(-10L),9L,9L,(-10L),(-10L),9L,9L},{(-10L),9L,9L,(-10L),(-10L),9L,9L},{(-10L),9L,9L,(-10L),(-10L),9L,9L},{(-10L),9L,9L,(-10L),(-10L),9L,9L}};
                int16_t l_273[1][7][7] = {{{0x58F2L,0x072FL,0x263BL,0x1814L,0x263BL,0x072FL,0x58F2L},{0x58F2L,0x072FL,0x263BL,0x1814L,0x263BL,0x072FL,0x58F2L},{0x58F2L,0x072FL,0x263BL,0x1814L,0x263BL,0x072FL,0x58F2L},{0x58F2L,0x072FL,0x263BL,0x1814L,0x263BL,0x072FL,0x58F2L},{0x58F2L,0x072FL,0x263BL,0x1814L,0x263BL,0x072FL,0x58F2L},{0x58F2L,0x072FL,0x263BL,0x1814L,0x263BL,0x072FL,0x58F2L},{0x58F2L,0x072FL,0x263BL,0x1814L,0x263BL,0x072FL,0x58F2L}}};
                uint16_t *l_343 = &p_1653->g_128;
                uint16_t **l_342 = &l_343;
                int8_t *l_344 = &p_1653->g_48;
                int16_t *l_345[6][9][1] = {{{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]}},{{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]}},{{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]}},{{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]}},{{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]}},{{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]},{&l_273[0][1][2]}}};
                uint32_t l_395 = 0x6F447A80L;
                int i, j, k;
                (1 + 1);
            }
            return &p_1653->g_46;
        }
        else
        { /* block id: 150 */
            struct S0 *l_401 = &p_1653->g_337[0][3];
            for (l_250 = 0; (l_250 > 12); l_250++)
            { /* block id: 153 */
                return &p_1653->g_46;
            }
            (*l_401) = p_1653->g_400;
        }
        for (l_214 = 0; (l_214 < (-10)); l_214 = safe_sub_func_uint16_t_u_u(l_214, 2))
        { /* block id: 160 */
            int32_t *l_406 = (void*)0;
            int32_t l_450 = 0x6B3D24DBL;
            int32_t l_467 = 0x56730E5EL;
            int32_t l_468[2];
            uint32_t l_470 = 0xDB8ABF73L;
            int32_t ***l_476 = &l_475;
            int32_t **l_478 = &l_308[1];
            int32_t ***l_477 = &l_478;
            uint16_t *l_479 = &p_1653->g_128;
            struct S0 *l_492 = (void*)0;
            uint32_t l_573 = 4294967295UL;
            int64_t l_595[8][7] = {{0x4D3C7C2A8DDC2EEAL,0L,0L,0x4D3C7C2A8DDC2EEAL,1L,0L,0x21CB15341CC79CB8L},{0x4D3C7C2A8DDC2EEAL,0L,0L,0x4D3C7C2A8DDC2EEAL,1L,0L,0x21CB15341CC79CB8L},{0x4D3C7C2A8DDC2EEAL,0L,0L,0x4D3C7C2A8DDC2EEAL,1L,0L,0x21CB15341CC79CB8L},{0x4D3C7C2A8DDC2EEAL,0L,0L,0x4D3C7C2A8DDC2EEAL,1L,0L,0x21CB15341CC79CB8L},{0x4D3C7C2A8DDC2EEAL,0L,0L,0x4D3C7C2A8DDC2EEAL,1L,0L,0x21CB15341CC79CB8L},{0x4D3C7C2A8DDC2EEAL,0L,0L,0x4D3C7C2A8DDC2EEAL,1L,0L,0x21CB15341CC79CB8L},{0x4D3C7C2A8DDC2EEAL,0L,0L,0x4D3C7C2A8DDC2EEAL,1L,0L,0x21CB15341CC79CB8L},{0x4D3C7C2A8DDC2EEAL,0L,0L,0x4D3C7C2A8DDC2EEAL,1L,0L,0x21CB15341CC79CB8L}};
            uint64_t ***l_606 = &p_1653->g_210;
            int i, j;
            for (i = 0; i < 2; i++)
                l_468[i] = 4L;
            (1 + 1);
        }
    }
    return &p_1653->g_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_139 p_1653->g_82 p_1653->g_83 p_1653->g_106 p_1653->g_72 p_1653->g_93 p_1653->g_48 p_1653->g_76 p_1653->g_167
 * writes: p_1653->g_140 p_1653->g_128 p_1653->g_72 p_1653->g_77 p_1653->g_167
 */
int64_t * func_35(union U1  p_36, int64_t * p_37, int64_t * p_38, struct S3 * p_1653)
{ /* block id: 46 */
    union U1 l_143 = {0x0B52BF7924299DA2L};
    uint64_t *l_144[3];
    uint16_t *l_160 = (void*)0;
    uint16_t *l_161 = &p_1653->g_128;
    int32_t l_164 = 2L;
    uint32_t l_165 = 1UL;
    int32_t *l_166[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    for (i = 0; i < 3; i++)
        l_144[i] = &p_1653->g_145[4][1];
    p_1653->g_140 = p_1653->g_139[0];
    p_1653->g_167 ^= ((safe_mul_func_int8_t_s_s((((((l_143 , (*p_1653->g_82)) == l_144[2]) > ((((*p_1653->g_76) = (safe_lshift_func_int8_t_s_s((p_1653->g_106 , (((0x5E417620L || 4294967295UL) , (safe_div_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(0x17L, (safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((l_143.f0 <= ((safe_mod_func_uint16_t_u_u((((*l_161) = (GROUP_DIVERGE(2, 1) ^ FAKE_DIVERGE(p_1653->group_0_offset, get_group_id(0), 10))) , (safe_mod_func_int8_t_s_s((9UL < p_1653->g_72), p_1653->g_93[2][7]))), 0x2106L)) == 0x442DL)) , p_36.f0), 4L)), p_1653->g_48)))), l_164))) >= l_143.f0)), 1))) , p_1653->g_48) , 0x4BA7C8BBL)) && 0xD6L) > l_165), p_36.f0)) >= 0UL);
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_68 p_1653->g_48 p_1653->g_46 p_1653->g_75 p_1653->g_82 p_1653->g_77 p_1653->g_103 p_1653->g_110 p_1653->g_111 p_1653->g_76 p_1653->g_72 p_1653->g_93 p_1653->g_106 p_1653->g_90
 * writes: p_1653->g_68 p_1653->g_72 p_1653->g_76 p_1653->g_90 p_1653->g_93 p_1653->g_106 p_1653->g_110 p_1653->g_48 p_1653->g_77
 */
int64_t * func_40(int64_t  p_41, int16_t  p_42, uint8_t  p_43, int32_t  p_44, int64_t  p_45, struct S3 * p_1653)
{ /* block id: 7 */
    uint64_t l_55 = 4UL;
    volatile uint64_t * volatile * volatile l_86[9][5][5] = {{{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0}},{{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0}},{{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0}},{{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0}},{{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0}},{{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0}},{{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0}},{{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0}},{{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0},{&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,&p_1653->g_83,(void*)0}}};
    int8_t *l_124 = &p_1653->g_48;
    int32_t *l_131 = &p_1653->g_72;
    struct S0 *l_137 = (void*)0;
    int64_t *l_138 = &p_1653->g_46;
    int i, j, k;
    for (p_44 = 0; (p_44 <= (-26)); p_44 = safe_sub_func_int8_t_s_s(p_44, 5))
    { /* block id: 10 */
        int32_t l_62[9][8][3] = {{{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)}},{{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)}},{{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)}},{{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)}},{{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)}},{{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)}},{{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)}},{{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)}},{{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)},{0x103D53AFL,3L,(-1L)}}};
        uint32_t *l_67 = &p_1653->g_68;
        int32_t *l_71 = &p_1653->g_72;
        uint64_t *l_73[7];
        int32_t l_74[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
        int8_t l_104[10];
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_73[i] = (void*)0;
        for (i = 0; i < 10; i++)
            l_104[i] = 0x55L;
        (*p_1653->g_75) = ((l_74[5] = ((safe_add_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(l_55, 3)), (((GROUP_DIVERGE(0, 1) <= (safe_sub_func_int32_t_s_s(((*l_71) = (safe_mod_func_uint64_t_u_u((p_41 & 0x59458D81C91930E8L), (((safe_rshift_func_int16_t_s_s(l_62[2][1][0], (safe_add_func_int16_t_s_s(l_55, l_62[2][1][0])))) , (p_43 | ((((*l_67) = l_62[4][1][2]) , ((safe_rshift_func_int8_t_s_s(p_1653->g_68, 4)) , 0x2DL)) != 0x01L))) && l_55)))), p_42))) != p_1653->g_48) , p_1653->g_46))) && 1L)) , &p_1653->g_72);
        for (l_55 = 14; (l_55 > 40); l_55++)
        { /* block id: 17 */
            int32_t l_109[4][8] = {{0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL},{0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL},{0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL},{0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL,0x0B757F9CL}};
            int32_t l_129 = (-1L);
            int i, j;
            for (p_41 = 0; (p_41 > 4); p_41 = safe_add_func_uint64_t_u_u(p_41, 4))
            { /* block id: 20 */
                volatile uint64_t * volatile * volatile *l_85[4];
                int32_t *l_89 = &p_1653->g_90[1];
                int32_t l_91 = 0x178B88EAL;
                int16_t *l_92 = &p_1653->g_93[0][5];
                int32_t l_100 = 0x2CA17A55L;
                int16_t *l_105[6] = {&p_1653->g_106,&p_1653->g_106,&p_1653->g_106,&p_1653->g_106,&p_1653->g_106,&p_1653->g_106};
                uint16_t *l_127[6] = {(void*)0,&p_1653->g_128,(void*)0,(void*)0,&p_1653->g_128,(void*)0};
                int32_t *l_130 = &p_1653->g_77;
                int i;
                for (i = 0; i < 4; i++)
                    l_85[i] = &p_1653->g_82;
                l_86[3][2][0] = p_1653->g_82;
                (*p_1653->g_111) = ((((p_1653->g_46 || FAKE_DIVERGE(p_1653->global_2_offset, get_global_id(2), 10)) == ((*l_92) = (((*l_89) = 0L) , (0x3DE39F74L >= l_91)))) < (((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(l_100, (safe_lshift_func_uint16_t_u_s(p_1653->g_77, (p_1653->g_106 = (p_1653->g_103 ^ l_104[7])))))), 3)), (safe_sub_func_int64_t_s_s(l_109[0][7], p_42)))) && l_109[2][1]) | 1UL)) , p_1653->g_110);
                if ((*p_1653->g_76))
                    continue;
                if ((l_109[2][2] <= (safe_mod_func_uint64_t_u_u(l_109[1][2], (safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((((*l_130) |= ((((*l_71) & (((*l_92) ^= 0x50C2L) > (((l_124 == &p_1653->g_48) > (1UL > ((+(l_100 = (l_129 = (((*l_124) = ((((safe_div_func_uint8_t_u_u(((p_42 <= (p_43 >= p_1653->g_106)) && p_1653->g_46), p_1653->g_106)) , (*l_71)) >= 0x653C0322L) ^ l_109[2][6])) || 0UL)))) && 65527UL))) < (-1L)))) || p_1653->g_90[0]) >= p_1653->g_72)) != 0x23E10E11L) <= 0x4EL), (*l_71))), (-1L))), p_1653->g_110.f1)), l_109[0][7])), p_43))))))
                { /* block id: 32 */
                    int32_t **l_133 = &p_1653->g_76;
                    (*l_133) = l_131;
                }
                else
                { /* block id: 34 */
                    int32_t *l_134 = &p_1653->g_77;
                    int32_t **l_136 = &l_130;
                    (*l_136) = l_134;
                    if (p_41)
                        break;
                    if (l_109[0][7])
                        continue;
                }
            }
            return &p_1653->g_46;
        }
        if ((*l_71))
            break;
    }
    (*l_131) &= (&p_1653->g_110 == l_137);
    return l_138;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_1654;
    struct S3* p_1653 = &c_1654;
    struct S3 c_1655 = {
        {{{0x719D87263B0A6D08L,0x442206DD2CC9105FL,0x2EF703C5764361A6L,0x442206DD2CC9105FL,0x719D87263B0A6D08L}},{{0x719D87263B0A6D08L,0x442206DD2CC9105FL,0x2EF703C5764361A6L,0x442206DD2CC9105FL,0x719D87263B0A6D08L}}}, // p_1653->g_15
        0x4FB389FA18394D25L, // p_1653->g_46
        0x44L, // p_1653->g_48
        0xF9D48960L, // p_1653->g_68
        0x0C7DC1DFL, // p_1653->g_72
        0x53C27CC0L, // p_1653->g_77
        &p_1653->g_77, // p_1653->g_76
        &p_1653->g_76, // p_1653->g_75
        7UL, // p_1653->g_84
        &p_1653->g_84, // p_1653->g_83
        &p_1653->g_83, // p_1653->g_82
        {0x500E5BD8L,0x500E5BD8L}, // p_1653->g_90
        {{4L,0x082FL,1L,0x082FL,4L,4L,0x082FL,1L,0x082FL,4L},{4L,0x082FL,1L,0x082FL,4L,4L,0x082FL,1L,0x082FL,4L},{4L,0x082FL,1L,0x082FL,4L,4L,0x082FL,1L,0x082FL,4L},{4L,0x082FL,1L,0x082FL,4L,4L,0x082FL,1L,0x082FL,4L}}, // p_1653->g_93
        1UL, // p_1653->g_103
        (-3L), // p_1653->g_106
        {0x5B29D1CAL,0x4A0370FD57B232BFL,0xC2L,0L}, // p_1653->g_110
        &p_1653->g_110, // p_1653->g_111
        0xCC17L, // p_1653->g_128
        {&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76}, // p_1653->g_132
        (void*)0, // p_1653->g_135
        {{0UL,1L,0xFCL,0x6682L},{1UL,0x57D2562CEE249C36L,0UL,0L},{0UL,1L,0xFCL,0x6682L},{0UL,1L,0xFCL,0x6682L},{1UL,0x57D2562CEE249C36L,0UL,0L},{0UL,1L,0xFCL,0x6682L},{0UL,1L,0xFCL,0x6682L}}, // p_1653->g_139
        {4294967294UL,8L,255UL,0x47BDL}, // p_1653->g_140
        {{0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L},{0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L},{0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L},{0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L},{0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L},{0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L},{0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L,0xC9F75E263B0CC831L}}, // p_1653->g_145
        (-7L), // p_1653->g_167
        (void*)0, // p_1653->g_168
        0L, // p_1653->g_184
        {{{252UL,0x8BL,0UL,252UL,0x8BL,252UL,0UL,0x8BL,252UL},{252UL,0x8BL,0UL,252UL,0x8BL,252UL,0UL,0x8BL,252UL},{252UL,0x8BL,0UL,252UL,0x8BL,252UL,0UL,0x8BL,252UL}},{{252UL,0x8BL,0UL,252UL,0x8BL,252UL,0UL,0x8BL,252UL},{252UL,0x8BL,0UL,252UL,0x8BL,252UL,0UL,0x8BL,252UL},{252UL,0x8BL,0UL,252UL,0x8BL,252UL,0UL,0x8BL,252UL}},{{252UL,0x8BL,0UL,252UL,0x8BL,252UL,0UL,0x8BL,252UL},{252UL,0x8BL,0UL,252UL,0x8BL,252UL,0UL,0x8BL,252UL},{252UL,0x8BL,0UL,252UL,0x8BL,252UL,0UL,0x8BL,252UL}}}, // p_1653->g_187
        {{{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0}},{{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0}},{{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0}},{{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0}},{{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0}},{{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0}},{{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0},{(void*)0,(void*)0,&p_1653->g_145[3][1],(void*)0}}}, // p_1653->g_211
        &p_1653->g_211[5][6][0], // p_1653->g_210
        {0x2FE997E5L,0x3754613F60B24E14L,255UL,-6L}, // p_1653->g_262
        {0x8A633CF6L,-1L,0xD8L,-1L}, // p_1653->g_263
        {{{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL}},{{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL}},{{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL}},{{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL},{0x035E9072L,0x035E9072L,4UL,5UL}}}, // p_1653->g_303
        {{{0xFDEC3D99L,-1L,0x4CL,0x7D17L},{0x85A96601L,5L,1UL,6L},{6UL,0x1DB8E88A2E1EAFA4L,0UL,-5L},{0x85A96601L,5L,1UL,6L},{0xFDEC3D99L,-1L,0x4CL,0x7D17L}},{{0xFDEC3D99L,-1L,0x4CL,0x7D17L},{0x85A96601L,5L,1UL,6L},{6UL,0x1DB8E88A2E1EAFA4L,0UL,-5L},{0x85A96601L,5L,1UL,6L},{0xFDEC3D99L,-1L,0x4CL,0x7D17L}}}, // p_1653->g_337
        {0UL}, // p_1653->g_339
        &p_1653->g_339, // p_1653->g_338
        {1L}, // p_1653->g_348
        {{{1UL,6UL,6UL,1UL,1UL,6UL,6UL},{1UL,6UL,6UL,1UL,1UL,6UL,6UL},{1UL,6UL,6UL,1UL,1UL,6UL,6UL},{1UL,6UL,6UL,1UL,1UL,6UL,6UL},{1UL,6UL,6UL,1UL,1UL,6UL,6UL},{1UL,6UL,6UL,1UL,1UL,6UL,6UL},{1UL,6UL,6UL,1UL,1UL,6UL,6UL},{1UL,6UL,6UL,1UL,1UL,6UL,6UL},{1UL,6UL,6UL,1UL,1UL,6UL,6UL},{1UL,6UL,6UL,1UL,1UL,6UL,6UL}}}, // p_1653->g_380
        0xE2E152AD83A83BA7L, // p_1653->g_382
        {6UL,9L,0UL,-1L}, // p_1653->g_400
        {0x5F5CADD3L,0x5016C90E10F9C9B8L,254UL,0x46C5L}, // p_1653->g_483
        {0x6B10498EL,0x0423314E759213B3L,251UL,0x75C3L}, // p_1653->g_507
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1653->g_527
        (void*)0, // p_1653->g_547
        {5UL,-1L,255UL,0L}, // p_1653->g_628
        0x27F650998788AB3DL, // p_1653->g_630
        {{&p_1653->g_128,&p_1653->g_128,&p_1653->g_128,&p_1653->g_128,&p_1653->g_128},{&p_1653->g_128,&p_1653->g_128,&p_1653->g_128,&p_1653->g_128,&p_1653->g_128}}, // p_1653->g_640
        &p_1653->g_640[1][0], // p_1653->g_639
        &p_1653->g_348, // p_1653->g_648
        &p_1653->g_648, // p_1653->g_647
        {&p_1653->g_648,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}, // p_1653->g_652
        {{{&p_1653->g_648,&p_1653->g_648,(void*)0,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}},{{&p_1653->g_648,&p_1653->g_648,(void*)0,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}},{{&p_1653->g_648,&p_1653->g_648,(void*)0,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}},{{&p_1653->g_648,&p_1653->g_648,(void*)0,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}},{{&p_1653->g_648,&p_1653->g_648,(void*)0,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}},{{&p_1653->g_648,&p_1653->g_648,(void*)0,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}},{{&p_1653->g_648,&p_1653->g_648,(void*)0,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}},{{&p_1653->g_648,&p_1653->g_648,(void*)0,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}},{{&p_1653->g_648,&p_1653->g_648,(void*)0,&p_1653->g_648,&p_1653->g_648,&p_1653->g_648}}}, // p_1653->g_653
        (void*)0, // p_1653->g_709
        &p_1653->g_709, // p_1653->g_708
        {2UL,0x68A15E4CCCB1D834L,0x18L,9L}, // p_1653->g_767
        {{2UL,0x5BDA5EB26BA1A557L,0UL,-2L}}, // p_1653->g_780
        0x3897L, // p_1653->g_793
        {18446744073709551615UL,0xAA15CB2CEA5ECCACL,18446744073709551615UL,18446744073709551615UL,0xAA15CB2CEA5ECCACL,18446744073709551615UL,18446744073709551615UL,0xAA15CB2CEA5ECCACL}, // p_1653->g_815
        (void*)0, // p_1653->g_860
        &p_1653->g_106, // p_1653->g_863
        &p_1653->g_863, // p_1653->g_862
        &p_1653->g_862, // p_1653->g_861
        (void*)0, // p_1653->g_871
        0x4970679CL, // p_1653->g_905
        {{4294967294UL,1L,0x71L,1L},{4294967294UL,1L,0x71L,1L},{4294967294UL,1L,0x71L,1L},{4294967294UL,1L,0x71L,1L},{4294967294UL,1L,0x71L,1L},{4294967294UL,1L,0x71L,1L},{4294967294UL,1L,0x71L,1L},{4294967294UL,1L,0x71L,1L},{4294967294UL,1L,0x71L,1L},{4294967294UL,1L,0x71L,1L}}, // p_1653->g_930
        &p_1653->g_483, // p_1653->g_931
        {0x46CE0D31L,-1L,0x72L,-1L}, // p_1653->g_958
        {1UL,0x2AEB7D7E977F98DFL,0x76L,0x5D71L}, // p_1653->g_959
        {8UL}, // p_1653->g_987
        1L, // p_1653->g_993
        0UL, // p_1653->g_1002
        (void*)0, // p_1653->g_1017
        &p_1653->g_1017, // p_1653->g_1016
        {{{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}}},{{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}}},{{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}}},{{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}}},{{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}}},{{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}}},{{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}}},{{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}}},{{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}},{{0UL,1L,255UL,0x26E0L},{0x5841F45BL,5L,0x58L,0x65F4L}}}}, // p_1653->g_1045
        {1UL,-1L,1UL,0x3E41L}, // p_1653->g_1079
        0x3FB4DF04L, // p_1653->g_1101
        6L, // p_1653->g_1134
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1653->g_1160
        &p_1653->g_1160[1], // p_1653->g_1159
        {0xFB40D6CEL,0x354C8EE3AB27FE5FL,0xEAL,-3L}, // p_1653->g_1177
        &p_1653->g_262, // p_1653->g_1178
        {4294967295UL,1L,0xA6L,1L}, // p_1653->g_1181
        {0UL,0x424F3EBB9D729284L,0x5FL,0x03CAL}, // p_1653->g_1208
        &p_1653->g_77, // p_1653->g_1235
        {0xA79F98DEL,7L,0xAAL,-8L}, // p_1653->g_1270
        (void*)0, // p_1653->g_1275
        &p_1653->g_1275, // p_1653->g_1274
        {1UL}, // p_1653->g_1293
        {&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76}, // p_1653->g_1298
        {{{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L}},{{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L},{0x7CB122DBL,-2L,255UL,0x58A6L}}}, // p_1653->g_1300
        {&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862,&p_1653->g_862}, // p_1653->g_1303
        &p_1653->g_1303[0], // p_1653->g_1302
        {{{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302},{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302}},{{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302},{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302}},{{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302},{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302}},{{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302},{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302}},{{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302},{&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302,&p_1653->g_1302}}}, // p_1653->g_1301
        (void*)0, // p_1653->g_1316
        (void*)0, // p_1653->g_1319
        &p_1653->g_76, // p_1653->g_1320
        {0x687D4260L,0x57E6B8C1EDA1F9ECL,0x5DL,1L}, // p_1653->g_1332
        (void*)0, // p_1653->g_1336
        {{&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336},{&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336,&p_1653->g_1336}}, // p_1653->g_1335
        {{3UL},{3UL},{3UL},{3UL},{3UL}}, // p_1653->g_1361
        0x0D5FCD5CL, // p_1653->g_1399
        0x132D4706L, // p_1653->g_1424
        &p_1653->g_483, // p_1653->g_1500
        {{{&p_1653->g_1500,&p_1653->g_1500}},{{&p_1653->g_1500,&p_1653->g_1500}},{{&p_1653->g_1500,&p_1653->g_1500}},{{&p_1653->g_1500,&p_1653->g_1500}},{{&p_1653->g_1500,&p_1653->g_1500}},{{&p_1653->g_1500,&p_1653->g_1500}}}, // p_1653->g_1499
        {0x15E97AF4L,-8L,255UL,1L}, // p_1653->g_1525
        (void*)0, // p_1653->g_1609
        &p_1653->g_1609, // p_1653->g_1608
        3UL, // p_1653->g_1640
        &p_1653->g_167, // p_1653->g_1641
        sequence_input[get_global_id(0)], // p_1653->global_0_offset
        sequence_input[get_global_id(1)], // p_1653->global_1_offset
        sequence_input[get_global_id(2)], // p_1653->global_2_offset
        sequence_input[get_local_id(0)], // p_1653->local_0_offset
        sequence_input[get_local_id(1)], // p_1653->local_1_offset
        sequence_input[get_local_id(2)], // p_1653->local_2_offset
        sequence_input[get_group_id(0)], // p_1653->group_0_offset
        sequence_input[get_group_id(1)], // p_1653->group_1_offset
        sequence_input[get_group_id(2)], // p_1653->group_2_offset
    };
    c_1654 = c_1655;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1653);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1653->g_15[i][j][k], "p_1653->g_15[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1653->g_46, "p_1653->g_46", print_hash_value);
    transparent_crc(p_1653->g_48, "p_1653->g_48", print_hash_value);
    transparent_crc(p_1653->g_68, "p_1653->g_68", print_hash_value);
    transparent_crc(p_1653->g_72, "p_1653->g_72", print_hash_value);
    transparent_crc(p_1653->g_77, "p_1653->g_77", print_hash_value);
    transparent_crc(p_1653->g_84, "p_1653->g_84", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1653->g_90[i], "p_1653->g_90[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1653->g_93[i][j], "p_1653->g_93[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1653->g_103, "p_1653->g_103", print_hash_value);
    transparent_crc(p_1653->g_106, "p_1653->g_106", print_hash_value);
    transparent_crc(p_1653->g_110.f0, "p_1653->g_110.f0", print_hash_value);
    transparent_crc(p_1653->g_110.f1, "p_1653->g_110.f1", print_hash_value);
    transparent_crc(p_1653->g_110.f2, "p_1653->g_110.f2", print_hash_value);
    transparent_crc(p_1653->g_110.f3, "p_1653->g_110.f3", print_hash_value);
    transparent_crc(p_1653->g_128, "p_1653->g_128", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1653->g_139[i].f0, "p_1653->g_139[i].f0", print_hash_value);
        transparent_crc(p_1653->g_139[i].f1, "p_1653->g_139[i].f1", print_hash_value);
        transparent_crc(p_1653->g_139[i].f2, "p_1653->g_139[i].f2", print_hash_value);
        transparent_crc(p_1653->g_139[i].f3, "p_1653->g_139[i].f3", print_hash_value);

    }
    transparent_crc(p_1653->g_140.f0, "p_1653->g_140.f0", print_hash_value);
    transparent_crc(p_1653->g_140.f1, "p_1653->g_140.f1", print_hash_value);
    transparent_crc(p_1653->g_140.f2, "p_1653->g_140.f2", print_hash_value);
    transparent_crc(p_1653->g_140.f3, "p_1653->g_140.f3", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1653->g_145[i][j], "p_1653->g_145[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1653->g_167, "p_1653->g_167", print_hash_value);
    transparent_crc(p_1653->g_184, "p_1653->g_184", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1653->g_187[i][j][k], "p_1653->g_187[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1653->g_262.f0, "p_1653->g_262.f0", print_hash_value);
    transparent_crc(p_1653->g_262.f1, "p_1653->g_262.f1", print_hash_value);
    transparent_crc(p_1653->g_262.f2, "p_1653->g_262.f2", print_hash_value);
    transparent_crc(p_1653->g_262.f3, "p_1653->g_262.f3", print_hash_value);
    transparent_crc(p_1653->g_263.f0, "p_1653->g_263.f0", print_hash_value);
    transparent_crc(p_1653->g_263.f1, "p_1653->g_263.f1", print_hash_value);
    transparent_crc(p_1653->g_263.f2, "p_1653->g_263.f2", print_hash_value);
    transparent_crc(p_1653->g_263.f3, "p_1653->g_263.f3", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1653->g_303[i][j][k], "p_1653->g_303[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1653->g_337[i][j].f0, "p_1653->g_337[i][j].f0", print_hash_value);
            transparent_crc(p_1653->g_337[i][j].f1, "p_1653->g_337[i][j].f1", print_hash_value);
            transparent_crc(p_1653->g_337[i][j].f2, "p_1653->g_337[i][j].f2", print_hash_value);
            transparent_crc(p_1653->g_337[i][j].f3, "p_1653->g_337[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_1653->g_348.f1, "p_1653->g_348.f1", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1653->g_380[i][j][k], "p_1653->g_380[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1653->g_382, "p_1653->g_382", print_hash_value);
    transparent_crc(p_1653->g_400.f0, "p_1653->g_400.f0", print_hash_value);
    transparent_crc(p_1653->g_400.f1, "p_1653->g_400.f1", print_hash_value);
    transparent_crc(p_1653->g_400.f2, "p_1653->g_400.f2", print_hash_value);
    transparent_crc(p_1653->g_400.f3, "p_1653->g_400.f3", print_hash_value);
    transparent_crc(p_1653->g_483.f0, "p_1653->g_483.f0", print_hash_value);
    transparent_crc(p_1653->g_483.f1, "p_1653->g_483.f1", print_hash_value);
    transparent_crc(p_1653->g_483.f2, "p_1653->g_483.f2", print_hash_value);
    transparent_crc(p_1653->g_483.f3, "p_1653->g_483.f3", print_hash_value);
    transparent_crc(p_1653->g_507.f0, "p_1653->g_507.f0", print_hash_value);
    transparent_crc(p_1653->g_507.f1, "p_1653->g_507.f1", print_hash_value);
    transparent_crc(p_1653->g_507.f2, "p_1653->g_507.f2", print_hash_value);
    transparent_crc(p_1653->g_507.f3, "p_1653->g_507.f3", print_hash_value);
    transparent_crc(p_1653->g_628.f0, "p_1653->g_628.f0", print_hash_value);
    transparent_crc(p_1653->g_628.f1, "p_1653->g_628.f1", print_hash_value);
    transparent_crc(p_1653->g_628.f2, "p_1653->g_628.f2", print_hash_value);
    transparent_crc(p_1653->g_628.f3, "p_1653->g_628.f3", print_hash_value);
    transparent_crc(p_1653->g_630, "p_1653->g_630", print_hash_value);
    transparent_crc(p_1653->g_767.f0, "p_1653->g_767.f0", print_hash_value);
    transparent_crc(p_1653->g_767.f1, "p_1653->g_767.f1", print_hash_value);
    transparent_crc(p_1653->g_767.f2, "p_1653->g_767.f2", print_hash_value);
    transparent_crc(p_1653->g_767.f3, "p_1653->g_767.f3", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1653->g_780[i].f0, "p_1653->g_780[i].f0", print_hash_value);
        transparent_crc(p_1653->g_780[i].f1, "p_1653->g_780[i].f1", print_hash_value);
        transparent_crc(p_1653->g_780[i].f2, "p_1653->g_780[i].f2", print_hash_value);
        transparent_crc(p_1653->g_780[i].f3, "p_1653->g_780[i].f3", print_hash_value);

    }
    transparent_crc(p_1653->g_793, "p_1653->g_793", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1653->g_815[i], "p_1653->g_815[i]", print_hash_value);

    }
    transparent_crc(p_1653->g_905, "p_1653->g_905", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1653->g_930[i].f0, "p_1653->g_930[i].f0", print_hash_value);
        transparent_crc(p_1653->g_930[i].f1, "p_1653->g_930[i].f1", print_hash_value);
        transparent_crc(p_1653->g_930[i].f2, "p_1653->g_930[i].f2", print_hash_value);
        transparent_crc(p_1653->g_930[i].f3, "p_1653->g_930[i].f3", print_hash_value);

    }
    transparent_crc(p_1653->g_958.f0, "p_1653->g_958.f0", print_hash_value);
    transparent_crc(p_1653->g_958.f1, "p_1653->g_958.f1", print_hash_value);
    transparent_crc(p_1653->g_958.f2, "p_1653->g_958.f2", print_hash_value);
    transparent_crc(p_1653->g_958.f3, "p_1653->g_958.f3", print_hash_value);
    transparent_crc(p_1653->g_959.f0, "p_1653->g_959.f0", print_hash_value);
    transparent_crc(p_1653->g_959.f1, "p_1653->g_959.f1", print_hash_value);
    transparent_crc(p_1653->g_959.f2, "p_1653->g_959.f2", print_hash_value);
    transparent_crc(p_1653->g_959.f3, "p_1653->g_959.f3", print_hash_value);
    transparent_crc(p_1653->g_987.f0, "p_1653->g_987.f0", print_hash_value);
    transparent_crc(p_1653->g_993, "p_1653->g_993", print_hash_value);
    transparent_crc(p_1653->g_1002, "p_1653->g_1002", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1653->g_1045[i][j][k].f0, "p_1653->g_1045[i][j][k].f0", print_hash_value);
                transparent_crc(p_1653->g_1045[i][j][k].f1, "p_1653->g_1045[i][j][k].f1", print_hash_value);
                transparent_crc(p_1653->g_1045[i][j][k].f2, "p_1653->g_1045[i][j][k].f2", print_hash_value);
                transparent_crc(p_1653->g_1045[i][j][k].f3, "p_1653->g_1045[i][j][k].f3", print_hash_value);

            }
        }
    }
    transparent_crc(p_1653->g_1079.f0, "p_1653->g_1079.f0", print_hash_value);
    transparent_crc(p_1653->g_1079.f1, "p_1653->g_1079.f1", print_hash_value);
    transparent_crc(p_1653->g_1079.f2, "p_1653->g_1079.f2", print_hash_value);
    transparent_crc(p_1653->g_1079.f3, "p_1653->g_1079.f3", print_hash_value);
    transparent_crc(p_1653->g_1101, "p_1653->g_1101", print_hash_value);
    transparent_crc(p_1653->g_1134, "p_1653->g_1134", print_hash_value);
    transparent_crc(p_1653->g_1177.f0, "p_1653->g_1177.f0", print_hash_value);
    transparent_crc(p_1653->g_1177.f1, "p_1653->g_1177.f1", print_hash_value);
    transparent_crc(p_1653->g_1177.f2, "p_1653->g_1177.f2", print_hash_value);
    transparent_crc(p_1653->g_1177.f3, "p_1653->g_1177.f3", print_hash_value);
    transparent_crc(p_1653->g_1181.f0, "p_1653->g_1181.f0", print_hash_value);
    transparent_crc(p_1653->g_1181.f1, "p_1653->g_1181.f1", print_hash_value);
    transparent_crc(p_1653->g_1181.f2, "p_1653->g_1181.f2", print_hash_value);
    transparent_crc(p_1653->g_1181.f3, "p_1653->g_1181.f3", print_hash_value);
    transparent_crc(p_1653->g_1208.f0, "p_1653->g_1208.f0", print_hash_value);
    transparent_crc(p_1653->g_1208.f1, "p_1653->g_1208.f1", print_hash_value);
    transparent_crc(p_1653->g_1208.f2, "p_1653->g_1208.f2", print_hash_value);
    transparent_crc(p_1653->g_1208.f3, "p_1653->g_1208.f3", print_hash_value);
    transparent_crc(p_1653->g_1270.f0, "p_1653->g_1270.f0", print_hash_value);
    transparent_crc(p_1653->g_1270.f1, "p_1653->g_1270.f1", print_hash_value);
    transparent_crc(p_1653->g_1270.f2, "p_1653->g_1270.f2", print_hash_value);
    transparent_crc(p_1653->g_1270.f3, "p_1653->g_1270.f3", print_hash_value);
    transparent_crc(p_1653->g_1293.f0, "p_1653->g_1293.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1653->g_1300[i][j].f0, "p_1653->g_1300[i][j].f0", print_hash_value);
            transparent_crc(p_1653->g_1300[i][j].f1, "p_1653->g_1300[i][j].f1", print_hash_value);
            transparent_crc(p_1653->g_1300[i][j].f2, "p_1653->g_1300[i][j].f2", print_hash_value);
            transparent_crc(p_1653->g_1300[i][j].f3, "p_1653->g_1300[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_1653->g_1332.f0, "p_1653->g_1332.f0", print_hash_value);
    transparent_crc(p_1653->g_1332.f1, "p_1653->g_1332.f1", print_hash_value);
    transparent_crc(p_1653->g_1332.f2, "p_1653->g_1332.f2", print_hash_value);
    transparent_crc(p_1653->g_1332.f3, "p_1653->g_1332.f3", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1653->g_1361[i].f0, "p_1653->g_1361[i].f0", print_hash_value);

    }
    transparent_crc(p_1653->g_1399, "p_1653->g_1399", print_hash_value);
    transparent_crc(p_1653->g_1424, "p_1653->g_1424", print_hash_value);
    transparent_crc(p_1653->g_1525.f0, "p_1653->g_1525.f0", print_hash_value);
    transparent_crc(p_1653->g_1525.f1, "p_1653->g_1525.f1", print_hash_value);
    transparent_crc(p_1653->g_1525.f2, "p_1653->g_1525.f2", print_hash_value);
    transparent_crc(p_1653->g_1525.f3, "p_1653->g_1525.f3", print_hash_value);
    transparent_crc(p_1653->g_1640, "p_1653->g_1640", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
