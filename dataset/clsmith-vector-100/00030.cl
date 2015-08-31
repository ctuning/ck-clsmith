// ---fake_divergence -g 1,1,4021 -l 1,1,1
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


// Seed: 30

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint8_t  f0;
   int16_t  f1;
};

union U1 {
   int8_t  f0;
   volatile uint8_t  f1;
};

struct S2 {
    int32_t g_2;
    int32_t g_8[4];
    int32_t g_22[7][8];
    int32_t g_23;
    VECTOR(int16_t, 8) g_67;
    VECTOR(int8_t, 4) g_77;
    union U0 g_99;
    int8_t *g_100;
    uint8_t g_103;
    int32_t * volatile g_104;
    int64_t g_110;
    int8_t g_115;
    int8_t g_117;
    volatile VECTOR(uint8_t, 4) g_138;
    int8_t g_148;
    VECTOR(uint16_t, 16) g_154;
    VECTOR(uint16_t, 8) g_158;
    VECTOR(int16_t, 4) g_161;
    int32_t *g_165[3];
    int32_t ** volatile g_164[3];
    int32_t ** volatile g_166;
    volatile int64_t g_169;
    volatile int64_t *g_168;
    volatile int64_t * volatile * volatile g_167;
    volatile int64_t * volatile * volatile * volatile g_170;
    VECTOR(uint8_t, 8) g_191;
    union U1 g_207;
    int64_t ***g_219;
    uint16_t *g_229;
    VECTOR(int16_t, 2) g_236;
    VECTOR(uint32_t, 2) g_256;
    VECTOR(uint32_t, 2) g_257;
    VECTOR(uint32_t, 2) g_258;
    volatile VECTOR(uint32_t, 2) g_259;
    VECTOR(uint16_t, 16) g_264;
    int32_t g_287;
    int64_t g_301[2];
    int8_t g_302[1];
    int8_t **g_303;
    VECTOR(int8_t, 16) g_331;
    uint8_t g_351;
    uint8_t *g_359;
    uint8_t * volatile *g_358;
    uint8_t * volatile * volatile * volatile g_357;
    uint8_t g_361;
    uint32_t g_380;
    int8_t g_452;
    int32_t * volatile g_488[6];
    int32_t * volatile g_489;
    uint64_t g_510;
    int32_t ** volatile g_521;
    volatile VECTOR(int16_t, 16) g_522;
    volatile VECTOR(int32_t, 4) g_533;
    volatile VECTOR(int32_t, 2) g_536;
    VECTOR(int32_t, 8) g_539;
    VECTOR(int32_t, 4) g_546;
    VECTOR(uint16_t, 8) g_578;
    uint64_t g_588;
    VECTOR(int32_t, 8) g_607;
    int32_t *g_606;
    volatile VECTOR(int32_t, 16) g_620;
    volatile VECTOR(uint64_t, 8) g_632;
    VECTOR(uint64_t, 2) g_646;
    volatile VECTOR(uint32_t, 2) g_677;
    volatile VECTOR(uint32_t, 16) g_680;
    volatile VECTOR(uint16_t, 16) g_682;
    VECTOR(int16_t, 16) g_699;
    VECTOR(int16_t, 16) g_700;
    VECTOR(uint8_t, 4) g_715;
    volatile VECTOR(uint8_t, 8) g_738;
    uint32_t g_748[8][9];
    volatile VECTOR(int16_t, 2) g_776;
    VECTOR(int32_t, 16) g_778;
    VECTOR(int32_t, 4) g_779;
    VECTOR(int32_t, 16) g_781;
    volatile VECTOR(int32_t, 16) g_783;
    volatile union U1 g_823;
    VECTOR(int64_t, 2) g_841;
    VECTOR(int32_t, 2) g_882;
    union U1 * volatile * volatile * volatile g_897;
    int32_t ** volatile g_900[3][2];
    int32_t *g_908;
    int32_t * volatile g_910;
    volatile VECTOR(int16_t, 4) g_924;
    VECTOR(int16_t, 16) g_926;
    VECTOR(int8_t, 8) g_932;
    uint32_t *g_934;
    uint32_t * volatile *g_933[2];
    VECTOR(int16_t, 16) g_935;
    uint64_t *g_951;
    uint64_t **g_950;
    int32_t ** volatile g_988;
    int32_t ** volatile g_989;
    union U1 g_1011;
    union U1 g_1012;
    VECTOR(int32_t, 8) g_1034;
    VECTOR(uint32_t, 4) g_1039;
    int32_t ** volatile g_1081;
    VECTOR(uint16_t, 2) g_1125;
    VECTOR(uint16_t, 16) g_1128;
    VECTOR(uint16_t, 2) g_1131;
    VECTOR(int8_t, 8) g_1175;
    VECTOR(uint16_t, 16) g_1180;
    uint64_t g_1204;
    volatile uint32_t g_1208;
    volatile VECTOR(int16_t, 8) g_1213;
    volatile VECTOR(int16_t, 2) g_1214;
    VECTOR(int16_t, 2) g_1215;
    VECTOR(uint16_t, 8) g_1228;
    VECTOR(uint16_t, 16) g_1231;
    VECTOR(uint8_t, 16) g_1237;
    VECTOR(uint16_t, 4) g_1253;
    VECTOR(uint16_t, 2) g_1258;
    volatile VECTOR(uint16_t, 16) g_1259;
    volatile int64_t * volatile *g_1277;
    volatile int64_t * volatile **g_1276;
    volatile int64_t * volatile ** volatile *g_1275;
    uint8_t g_1292;
    volatile VECTOR(int32_t, 2) g_1311;
    VECTOR(int32_t, 4) g_1314;
    volatile VECTOR(int32_t, 16) g_1317;
    VECTOR(int32_t, 2) g_1320;
    volatile VECTOR(uint32_t, 16) g_1339;
    VECTOR(uint8_t, 2) g_1364;
    VECTOR(int32_t, 16) g_1371;
    volatile VECTOR(uint32_t, 2) g_1389;
    VECTOR(uint8_t, 16) g_1422;
    VECTOR(uint8_t, 16) g_1427;
    volatile VECTOR(uint8_t, 4) g_1432;
    VECTOR(uint64_t, 2) g_1453;
    union U1 g_1462;
    union U0 *g_1468;
    union U0 ** volatile g_1467;
    VECTOR(int16_t, 2) g_1484;
    union U1 *g_1490;
    VECTOR(int16_t, 2) g_1497;
    volatile uint64_t g_1515;
    volatile VECTOR(int32_t, 16) g_1544;
    volatile VECTOR(uint32_t, 8) g_1545;
    int32_t **g_1551;
    uint32_t **g_1556;
    VECTOR(uint16_t, 16) g_1559;
    VECTOR(int16_t, 2) g_1595;
    VECTOR(int8_t, 2) g_1602;
    VECTOR(int8_t, 16) g_1603;
    volatile VECTOR(int8_t, 2) g_1604;
    VECTOR(int8_t, 8) g_1605;
    VECTOR(int8_t, 4) g_1607;
    VECTOR(int8_t, 4) g_1615;
    volatile VECTOR(int8_t, 8) g_1617;
    volatile VECTOR(int8_t, 16) g_1619;
    volatile VECTOR(int8_t, 8) g_1620;
    volatile VECTOR(uint16_t, 16) g_1625;
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
uint64_t  func_1(struct S2 * p_1641);
int32_t  func_5(int64_t  p_6, struct S2 * p_1641);
union U0  func_47(int32_t  p_48, int64_t  p_49, int16_t  p_50, union U0  p_51, uint32_t  p_52, struct S2 * p_1641);
union U1  func_55(int64_t  p_56, int32_t * p_57, struct S2 * p_1641);
VECTOR(uint64_t, 2)  func_61(int16_t  p_62, uint32_t  p_63, int32_t * p_64, uint64_t  p_65, int32_t * p_66, struct S2 * p_1641);
int32_t * func_68(int32_t * p_69, int32_t * p_70, struct S2 * p_1641);
int32_t * func_72(int64_t  p_73, struct S2 * p_1641);
int64_t  func_74(int64_t  p_75, int32_t * p_76, struct S2 * p_1641);
int32_t  func_87(int8_t * p_88, int32_t * p_89, int8_t * p_90, int8_t  p_91, struct S2 * p_1641);
int8_t * func_92(union U0  p_93, union U0  p_94, int8_t * p_95, union U0  p_96, int8_t * p_97, struct S2 * p_1641);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1641->g_2 p_1641->g_8 p_1641->g_23 p_1641->g_67 p_1641->g_77 p_1641->g_100 p_1641->g_22 p_1641->g_99.f0 p_1641->g_104 p_1641->g_138 p_1641->g_148 p_1641->g_154 p_1641->g_158 p_1641->g_161 p_1641->g_110 p_1641->g_103 p_1641->g_166 p_1641->g_167 p_1641->g_170 p_1641->g_287 p_1641->g_489 p_1641->g_522 p_1641->g_165 p_1641->g_510 p_1641->g_546 p_1641->g_236 p_1641->g_578 p_1641->g_258 p_1641->g_359 p_1641->g_259 p_1641->g_264 p_1641->g_168 p_1641->g_169 p_1641->g_351 p_1641->g_632 p_1641->g_646 p_1641->g_677 p_1641->g_680 p_1641->g_682 p_1641->g_115 p_1641->g_588 p_1641->g_699 p_1641->g_700 p_1641->g_715 p_1641->g_738 p_1641->g_331 p_1641->g_748 p_1641->g_776 p_1641->g_778 p_1641->g_779 p_1641->g_781 p_1641->g_783 p_1641->g_823 p_1641->g_207.f0 p_1641->g_257 p_1641->g_882 p_1641->g_301 p_1641->g_897 p_1641->g_607 p_1641->g_908 p_1641->g_910 p_1641->g_380 p_1641->g_924 p_1641->g_926 p_1641->g_932 p_1641->g_933 p_1641->g_935 p_1641->g_361 p_1641->g_950 p_1641->g_358 p_1641->g_934 p_1641->g_988 p_1641->g_989 p_1641->g_951 p_1641->g_357 p_1641->g_1011 p_1641->g_1012 p_1641->g_1468 p_1641->g_99 p_1641->g_1081 p_1641->g_256
 * writes: p_1641->g_2 p_1641->g_8 p_1641->g_22 p_1641->g_23 p_1641->g_99 p_1641->g_103 p_1641->g_115 p_1641->g_117 p_1641->g_165 p_1641->g_167 p_1641->g_287 p_1641->g_148 p_1641->g_236 p_1641->g_77 p_1641->g_110 p_1641->g_331 p_1641->g_588 p_1641->g_351 p_1641->g_646 p_1641->g_158 p_1641->g_748 p_1641->g_361 p_1641->g_510 p_1641->g_699 p_1641->g_380 p_1641->g_207.f0 p_1641->g_67 p_1641->g_154
 */
uint64_t  func_1(struct S2 * p_1641)
{ /* block id: 4 */
    int32_t l_26 = 0x7355DD17L;
    int32_t l_35 = 5L;
    int32_t l_38 = 0L;
    int32_t l_39 = 0x6E19A6A9L;
    uint32_t l_40 = 4294967294UL;
    uint8_t *l_1019 = &p_1641->g_351;
    union U0 l_1020[4][7][9] = {{{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}}},{{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}}},{{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}}},{{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}},{{4UL},{0xDDL},{0xC7L},{0UL},{0x26L},{0x0FL},{0x1AL},{0x7EL},{0xA0L}}}};
    int32_t *l_1632[10] = {&p_1641->g_22[3][1],&l_39,(void*)0,&l_39,&p_1641->g_22[3][1],&p_1641->g_22[3][1],&l_39,(void*)0,&l_39,&p_1641->g_22[3][1]};
    int32_t l_1633 = 0x75FAEC9DL;
    int32_t *l_1639 = (void*)0;
    uint16_t l_1640 = 0xE8CEL;
    int i, j, k;
    for (p_1641->g_2 = (-23); (p_1641->g_2 == (-23)); p_1641->g_2 = safe_add_func_int8_t_s_s(p_1641->g_2, 9))
    { /* block id: 7 */
        int32_t *l_17 = (void*)0;
        int32_t *l_18 = (void*)0;
        int32_t *l_19 = (void*)0;
        int32_t *l_20 = &p_1641->g_8[0];
        int32_t *l_21 = &p_1641->g_22[6][4];
        int32_t l_36[5] = {(-5L),(-5L),(-5L),(-5L),(-5L)};
        int i;
        (*l_21) = ((*l_20) = func_5(p_1641->g_2, p_1641));
        for (p_1641->g_23 = (-3); (p_1641->g_23 >= 9); ++p_1641->g_23)
        { /* block id: 15 */
            VECTOR(int16_t, 4) l_27 = (VECTOR(int16_t, 4))(0x091FL, (VECTOR(int16_t, 2))(0x091FL, 0x4035L), 0x4035L);
            int32_t *l_28 = &p_1641->g_22[6][4];
            int32_t *l_29 = &p_1641->g_22[0][5];
            int32_t *l_30 = &p_1641->g_22[2][1];
            int32_t *l_31 = (void*)0;
            int32_t *l_32 = &p_1641->g_8[2];
            int32_t *l_33 = (void*)0;
            int32_t *l_34[7];
            int32_t l_37 = (-9L);
            int i;
            for (i = 0; i < 7; i++)
                l_34[i] = &p_1641->g_8[1];
            --l_40;
        }
    }
    (*p_1641->g_489) = (l_1633 = (((safe_rshift_func_int16_t_s_s(l_39, (((safe_add_func_int64_t_s_s((GROUP_DIVERGE(1, 1) > l_40), (func_47(p_1641->g_8[0], (safe_div_func_uint32_t_u_u(((func_55((l_38 &= func_5(l_40, p_1641)), &p_1641->g_22[6][4], p_1641) , (safe_lshift_func_uint16_t_u_s((p_1641->g_781.se > (safe_sub_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s((((!((void*)0 != l_1019)) <= 0x49F44769L) > l_38), l_26)) == 3UL), 1L))), 4))) && l_40), l_35)), p_1641->g_882.y, l_1020[0][6][7], l_1020[0][6][7].f0, p_1641) , 0UL))) ^ l_1020[0][6][7].f0) < 0UL))) , 0x73D8259729FF5581L) >= l_40));
    for (l_38 = (-16); (l_38 == 24); l_38++)
    { /* block id: 540 */
        int32_t *l_1636 = &p_1641->g_23;
        int32_t **l_1637 = (void*)0;
        int32_t **l_1638[5] = {&l_1632[1],&l_1632[1],&l_1632[1],&l_1632[1],&l_1632[1]};
        int i;
        (*p_1641->g_1081) = func_68(l_1636, (l_1639 = (((*l_1636) && 1L) , &l_1633)), p_1641);
        return l_1640;
    }
    return p_1641->g_256.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1641->g_8
 * writes:
 */
int32_t  func_5(int64_t  p_6, struct S2 * p_1641)
{ /* block id: 8 */
    int32_t *l_7 = &p_1641->g_8[0];
    int32_t *l_9 = &p_1641->g_8[1];
    int32_t *l_10 = &p_1641->g_8[0];
    int32_t *l_11 = &p_1641->g_8[0];
    int32_t *l_12[5] = {&p_1641->g_8[2],&p_1641->g_8[2],&p_1641->g_8[2],&p_1641->g_8[2],&p_1641->g_8[2]};
    int16_t l_13 = 0x47A0L;
    uint32_t l_14 = 4UL;
    int i;
    l_14--;
    return (*l_10);
}


/* ------------------------------------------ */
/* 
 * reads : p_1641->g_1468 p_1641->g_99
 * writes:
 */
union U0  func_47(int32_t  p_48, int64_t  p_49, int16_t  p_50, union U0  p_51, uint32_t  p_52, struct S2 * p_1641)
{ /* block id: 362 */
    uint8_t l_1021 = 5UL;
    union U1 *l_1026 = (void*)0;
    union U1 **l_1025 = &l_1026;
    union U1 ***l_1024[1][4] = {{&l_1025,&l_1025,&l_1025,&l_1025}};
    int64_t *l_1060 = (void*)0;
    int64_t **l_1059[7][9] = {{&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,(void*)0,(void*)0},{&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,(void*)0,(void*)0},{&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,(void*)0,(void*)0},{&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,(void*)0,(void*)0},{&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,(void*)0,(void*)0},{&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,(void*)0,(void*)0},{&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,(void*)0,(void*)0}};
    int32_t l_1065[3];
    uint8_t **l_1097 = &p_1641->g_359;
    uint8_t ***l_1096 = &l_1097;
    uint8_t l_1106 = 1UL;
    int32_t **l_1109[1];
    int64_t l_1110 = 0x375A72AA1BC8AD6FL;
    uint16_t l_1111 = 0xB51AL;
    int8_t **l_1114 = &p_1641->g_100;
    int32_t l_1117 = (-4L);
    uint8_t l_1143[9];
    int64_t l_1153 = 1L;
    int8_t **l_1163 = &p_1641->g_100;
    int16_t l_1165 = 0x1F2AL;
    VECTOR(int32_t, 2) l_1166 = (VECTOR(int32_t, 2))(4L, 0x4DFB8715L);
    int64_t l_1170 = (-3L);
    VECTOR(uint16_t, 8) l_1183 = (VECTOR(uint16_t, 8))(0x228BL, (VECTOR(uint16_t, 4))(0x228BL, (VECTOR(uint16_t, 2))(0x228BL, 8UL), 8UL), 8UL, 0x228BL, 8UL);
    int64_t l_1206[9];
    VECTOR(int8_t, 16) l_1223 = (VECTOR(int8_t, 16))(0x2DL, (VECTOR(int8_t, 4))(0x2DL, (VECTOR(int8_t, 2))(0x2DL, 1L), 1L), 1L, 0x2DL, 1L, (VECTOR(int8_t, 2))(0x2DL, 1L), (VECTOR(int8_t, 2))(0x2DL, 1L), 0x2DL, 1L, 0x2DL, 1L);
    VECTOR(uint16_t, 4) l_1229 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 7UL), 7UL);
    VECTOR(uint16_t, 2) l_1232 = (VECTOR(uint16_t, 2))(1UL, 0UL);
    VECTOR(uint16_t, 8) l_1257 = (VECTOR(uint16_t, 8))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 0x83E8L), 0x83E8L), 0x83E8L, 65528UL, 0x83E8L);
    uint8_t ****l_1266[10][6] = {{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096},{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096},{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096},{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096},{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096},{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096},{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096},{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096},{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096},{&l_1096,&l_1096,&l_1096,&l_1096,&l_1096,&l_1096}};
    uint32_t **l_1282 = &p_1641->g_934;
    VECTOR(uint16_t, 2) l_1286 = (VECTOR(uint16_t, 2))(0x88B2L, 1UL);
    VECTOR(uint32_t, 8) l_1301 = (VECTOR(uint32_t, 8))(0x324EE737L, (VECTOR(uint32_t, 4))(0x324EE737L, (VECTOR(uint32_t, 2))(0x324EE737L, 4294967295UL), 4294967295UL), 4294967295UL, 0x324EE737L, 4294967295UL);
    VECTOR(int32_t, 4) l_1316 = (VECTOR(int32_t, 4))(0x5EC53442L, (VECTOR(int32_t, 2))(0x5EC53442L, 0L), 0L);
    VECTOR(uint32_t, 16) l_1338 = (VECTOR(uint32_t, 16))(0xAE1A330AL, (VECTOR(uint32_t, 4))(0xAE1A330AL, (VECTOR(uint32_t, 2))(0xAE1A330AL, 4294967295UL), 4294967295UL), 4294967295UL, 0xAE1A330AL, 4294967295UL, (VECTOR(uint32_t, 2))(0xAE1A330AL, 4294967295UL), (VECTOR(uint32_t, 2))(0xAE1A330AL, 4294967295UL), 0xAE1A330AL, 4294967295UL, 0xAE1A330AL, 4294967295UL);
    VECTOR(uint64_t, 8) l_1344 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x7C352521F3397AE5L), 0x7C352521F3397AE5L), 0x7C352521F3397AE5L, 1UL, 0x7C352521F3397AE5L);
    VECTOR(uint64_t, 16) l_1345 = (VECTOR(uint64_t, 16))(0xDCF140BADD848784L, (VECTOR(uint64_t, 4))(0xDCF140BADD848784L, (VECTOR(uint64_t, 2))(0xDCF140BADD848784L, 0xD339C75400E58EC5L), 0xD339C75400E58EC5L), 0xD339C75400E58EC5L, 0xDCF140BADD848784L, 0xD339C75400E58EC5L, (VECTOR(uint64_t, 2))(0xDCF140BADD848784L, 0xD339C75400E58EC5L), (VECTOR(uint64_t, 2))(0xDCF140BADD848784L, 0xD339C75400E58EC5L), 0xDCF140BADD848784L, 0xD339C75400E58EC5L, 0xDCF140BADD848784L, 0xD339C75400E58EC5L);
    int64_t l_1379 = 9L;
    uint8_t l_1380 = 0x00L;
    VECTOR(uint64_t, 16) l_1390 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint64_t, 2))(0UL, 1UL), (VECTOR(uint64_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
    int64_t **l_1401 = &l_1060;
    int64_t ***l_1400 = &l_1401;
    int64_t ***l_1404 = (void*)0;
    uint32_t **l_1417 = &p_1641->g_934;
    VECTOR(uint8_t, 16) l_1438 = (VECTOR(uint8_t, 16))(0xCCL, (VECTOR(uint8_t, 4))(0xCCL, (VECTOR(uint8_t, 2))(0xCCL, 249UL), 249UL), 249UL, 0xCCL, 249UL, (VECTOR(uint8_t, 2))(0xCCL, 249UL), (VECTOR(uint8_t, 2))(0xCCL, 249UL), 0xCCL, 249UL, 0xCCL, 249UL);
    VECTOR(uint16_t, 4) l_1441 = (VECTOR(uint16_t, 4))(0x617CL, (VECTOR(uint16_t, 2))(0x617CL, 0xD25EL), 0xD25EL);
    VECTOR(int64_t, 16) l_1443 = (VECTOR(int64_t, 16))(8L, (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x4AD47AC49DF6AAC5L), 0x4AD47AC49DF6AAC5L), 0x4AD47AC49DF6AAC5L, 8L, 0x4AD47AC49DF6AAC5L, (VECTOR(int64_t, 2))(8L, 0x4AD47AC49DF6AAC5L), (VECTOR(int64_t, 2))(8L, 0x4AD47AC49DF6AAC5L), 8L, 0x4AD47AC49DF6AAC5L, 8L, 0x4AD47AC49DF6AAC5L);
    union U0 l_1455 = {0xC4L};
    union U0 l_1457 = {0x63L};
    uint16_t l_1502[2];
    uint32_t l_1503 = 4294967295UL;
    int16_t l_1516[9] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
    VECTOR(int32_t, 4) l_1540 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5DABB4ABL), 0x5DABB4ABL);
    VECTOR(uint64_t, 4) l_1548 = (VECTOR(uint64_t, 4))(0xA785A6FB5A998182L, (VECTOR(uint64_t, 2))(0xA785A6FB5A998182L, 0x55DD333AE11DD288L), 0x55DD333AE11DD288L);
    int8_t l_1570 = 3L;
    uint16_t l_1572 = 0x8327L;
    int64_t l_1577 = 0x1BD6D2583F2D6710L;
    int64_t l_1580 = 0x71750572EBF3BA2AL;
    uint32_t l_1584 = 1UL;
    int32_t *l_1587 = &l_1065[2];
    int64_t l_1589 = 0x22A0DE845D14D900L;
    VECTOR(uint64_t, 4) l_1590 = (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 1UL), 1UL);
    VECTOR(int8_t, 4) l_1609 = (VECTOR(int8_t, 4))(0x0AL, (VECTOR(int8_t, 2))(0x0AL, 6L), 6L);
    VECTOR(int8_t, 8) l_1612 = (VECTOR(int8_t, 8))(0x79L, (VECTOR(int8_t, 4))(0x79L, (VECTOR(int8_t, 2))(0x79L, 9L), 9L), 9L, 0x79L, 9L);
    VECTOR(int8_t, 4) l_1614 = (VECTOR(int8_t, 4))(0x5CL, (VECTOR(int8_t, 2))(0x5CL, 0L), 0L);
    VECTOR(int8_t, 2) l_1621 = (VECTOR(int8_t, 2))(0x4DL, 0x61L);
    int32_t l_1630 = 0x3502F1B9L;
    int32_t l_1631 = 0x08A3879AL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_1065[i] = 0x52FE3033L;
    for (i = 0; i < 1; i++)
        l_1109[i] = &p_1641->g_165[1];
    for (i = 0; i < 9; i++)
        l_1143[i] = 0xACL;
    for (i = 0; i < 9; i++)
        l_1206[i] = 9L;
    for (i = 0; i < 2; i++)
        l_1502[i] = 0x5D74L;
    return (*p_1641->g_1468);
}


/* ------------------------------------------ */
/* 
 * reads : p_1641->g_23 p_1641->g_2 p_1641->g_67 p_1641->g_77 p_1641->g_100 p_1641->g_22 p_1641->g_99.f0 p_1641->g_104 p_1641->g_138 p_1641->g_148 p_1641->g_154 p_1641->g_158 p_1641->g_161 p_1641->g_110 p_1641->g_8 p_1641->g_103 p_1641->g_166 p_1641->g_167 p_1641->g_170 p_1641->g_287 p_1641->g_489 p_1641->g_522 p_1641->g_165 p_1641->g_510 p_1641->g_546 p_1641->g_236 p_1641->g_578 p_1641->g_258 p_1641->g_359 p_1641->g_259 p_1641->g_264 p_1641->g_168 p_1641->g_169 p_1641->g_351 p_1641->g_632 p_1641->g_646 p_1641->g_677 p_1641->g_680 p_1641->g_682 p_1641->g_115 p_1641->g_588 p_1641->g_699 p_1641->g_700 p_1641->g_715 p_1641->g_738 p_1641->g_331 p_1641->g_748 p_1641->g_776 p_1641->g_778 p_1641->g_779 p_1641->g_781 p_1641->g_783 p_1641->g_823 p_1641->g_207.f0 p_1641->g_257 p_1641->g_882 p_1641->g_301 p_1641->g_897 p_1641->g_607 p_1641->g_908 p_1641->g_910 p_1641->g_380 p_1641->g_924 p_1641->g_926 p_1641->g_932 p_1641->g_933 p_1641->g_935 p_1641->g_361 p_1641->g_950 p_1641->g_358 p_1641->g_934 p_1641->g_988 p_1641->g_989 p_1641->g_951 p_1641->g_357 p_1641->g_1011 p_1641->g_1012
 * writes: p_1641->g_99 p_1641->g_22 p_1641->g_103 p_1641->g_23 p_1641->g_115 p_1641->g_117 p_1641->g_165 p_1641->g_167 p_1641->g_287 p_1641->g_148 p_1641->g_236 p_1641->g_77 p_1641->g_110 p_1641->g_331 p_1641->g_588 p_1641->g_351 p_1641->g_646 p_1641->g_158 p_1641->g_748 p_1641->g_361 p_1641->g_510 p_1641->g_699 p_1641->g_380 p_1641->g_207.f0 p_1641->g_67 p_1641->g_154
 */
union U1  func_55(int64_t  p_56, int32_t * p_57, struct S2 * p_1641)
{ /* block id: 20 */
    uint8_t l_60 = 6UL;
    VECTOR(uint64_t, 4) l_71 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x2E6782A09A2E5C1CL), 0x2E6782A09A2E5C1CL);
    int8_t *l_78 = (void*)0;
    int8_t *l_79 = (void*)0;
    int8_t *l_80 = (void*)0;
    int8_t *l_81 = (void*)0;
    int8_t *l_82 = (void*)0;
    int8_t *l_83 = (void*)0;
    int32_t l_84 = 0x153C3AE4L;
    union U0 l_98[5][3][2] = {{{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}}},{{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}}},{{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}}},{{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}}},{{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}},{{0x8BL},{0x8BL}}}};
    int32_t *l_903[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
    int8_t ***l_948 = &p_1641->g_303;
    int8_t **l_956 = &l_79;
    VECTOR(uint8_t, 2) l_982 = (VECTOR(uint8_t, 2))(0x29L, 6UL);
    VECTOR(uint8_t, 8) l_984 = (VECTOR(uint8_t, 8))(0xBCL, (VECTOR(uint8_t, 4))(0xBCL, (VECTOR(uint8_t, 2))(0xBCL, 7UL), 7UL), 7UL, 0xBCL, 7UL);
    int64_t l_987 = 6L;
    uint64_t *l_999 = (void*)0;
    int32_t l_1001 = 7L;
    int i, j, k;
    (*p_57) = ((((-7L) >= (l_60 > ((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 16))((+((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0xD825BC70674D57D2L, 6UL)), p_1641->g_23, 1UL, ((VECTOR(uint64_t, 2))(func_61((p_1641->g_2 , ((VECTOR(int16_t, 8))(p_1641->g_67.s50405044)).s7), l_60, func_68((((VECTOR(uint64_t, 16))(l_71.ywyxzzwyzxyxzzwz)).s9 , func_72(func_74(((l_84 = ((VECTOR(int8_t, 8))(p_1641->g_77.xxwyyzyy)).s0) ^ ((p_56 | (safe_add_func_int32_t_s_s(func_87(func_92(l_98[1][2][1], (p_1641->g_99 = l_98[1][2][0]), l_81, l_98[3][2][0], p_1641->g_100, p_1641), p_57, l_79, l_60, p_1641), l_71.y))) ^ l_71.z)), &p_1641->g_8[0], p_1641), p_1641)), l_903[3][0], p_1641), p_1641->g_258.y, p_57, p_1641))), 18446744073709551615UL, 0xDDCAD56744C33104L, ((VECTOR(uint64_t, 4))(1UL)), 18446744073709551615UL, 0xA25A0167E1B406A5L, 6UL, 0xB9F798BD9CE0BA32L))))).s9d91, ((VECTOR(uint64_t, 4))(0x1ADEB8720652613EL))))).w)) , p_56) != p_56);
    for (p_1641->g_207.f0 = 0; (p_1641->g_207.f0 > 22); ++p_1641->g_207.f0)
    { /* block id: 336 */
        int32_t l_947 = 5L;
        int8_t ***l_949 = &p_1641->g_303;
        int32_t l_952 = 0L;
        int32_t l_953[8] = {0x651AECF0L,0x651AECF0L,0x651AECF0L,0x651AECF0L,0x651AECF0L,0x651AECF0L,0x651AECF0L,0x651AECF0L};
        int8_t ***l_954 = &p_1641->g_303;
        int8_t ***l_955[8][9] = {{&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303},{&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303},{&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303},{&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303},{&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303},{&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303},{&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303},{&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303,&p_1641->g_303}};
        VECTOR(uint8_t, 2) l_983 = (VECTOR(uint8_t, 2))(255UL, 0xD3L);
        int32_t l_1002 = 0x0D98DF8AL;
        int32_t l_1003 = 0x522C7646L;
        int32_t l_1004 = 0x695A164DL;
        int32_t l_1005 = 0x52C1591FL;
        int32_t l_1006 = (-4L);
        int32_t l_1007[3][6][10] = {{{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L}},{{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L}},{{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L},{0x6E57D9A8L,0x2A2E8A54L,0x40BFE9DEL,0x3512E574L,(-8L),6L,0x620465FBL,0x0027C23BL,0x35C97A5CL,0L}}};
        uint16_t l_1008 = 0x8CBEL;
        int i, j, k;
        if ((safe_add_func_uint8_t_u_u(((**p_1641->g_358) = ((l_956 = ((((((((((l_947 = p_56) , (((((7L && 5L) , l_948) != l_949) ^ ((p_1641->g_950 == &p_1641->g_951) != 0x2048L)) != (p_1641->g_67.s4 = (-1L)))) , l_947) == p_56) | p_56) | l_952) && p_56) | l_953[2]) && p_56) , &p_1641->g_100)) == (void*)0)), p_56)))
        { /* block id: 341 */
            int8_t l_957 = (-4L);
            uint16_t *l_964 = (void*)0;
            uint16_t *l_965 = (void*)0;
            uint16_t *l_966 = (void*)0;
            int32_t l_967 = 0x42AFB7B3L;
            VECTOR(uint8_t, 4) l_985 = (VECTOR(uint8_t, 4))(0xCAL, (VECTOR(uint8_t, 2))(0xCAL, 0xE0L), 0xE0L);
            VECTOR(uint8_t, 2) l_986 = (VECTOR(uint8_t, 2))(0xBFL, 0x9CL);
            int i;
            l_952 = l_953[0];
            (*p_57) = l_957;
            (*p_57) = ((l_947 = (safe_mul_func_int8_t_s_s(p_56, ((void*)0 != &l_956)))) >= (*p_1641->g_934));
            l_987 = (safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((p_1641->g_138.x | (((p_1641->g_154.s7 ^= FAKE_DIVERGE(p_1641->group_1_offset, get_group_id(1), 10)) || ((l_967 = p_56) | ((FAKE_DIVERGE(p_1641->global_1_offset, get_global_id(1), 10) >= (FAKE_DIVERGE(p_1641->local_1_offset, get_local_id(1), 10) || ((((safe_sub_func_int32_t_s_s(((*p_57) ^= 6L), ((safe_add_func_uint64_t_u_u(p_56, (p_56 != GROUP_DIVERGE(0, 1)))) | 0xE0D7L))) , ((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(l_982.yyyyxxyxxxxyxyxy)) + ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_983.yx)), 1UL, 0x42L)).yzxwxyywzywzywyx))).sf44f + ((VECTOR(uint8_t, 2))(l_984.s71)).yxyx))).xxxzzxyx & ((VECTOR(uint8_t, 8))(251UL, (*p_1641->g_359), ((VECTOR(uint8_t, 4))(l_985.wxyy)), 1UL, 3UL))))).s4616405700363220 - ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(l_986.yy)).yxyy | ((VECTOR(uint8_t, 4))((+((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 8))((**p_1641->g_358), (~p_56), 8UL, ((VECTOR(uint8_t, 4))(255UL)), 0xA8L)).s5247037670157446, ((VECTOR(uint8_t, 16))(0xCEL)), ((VECTOR(uint8_t, 16))(0UL))))).scd33)))))).yzxyyywyxyzxzwyy))) + ((VECTOR(uint8_t, 16))(0x8EL))))).s61c1, ((VECTOR(uint8_t, 4))(0x85L))))), 0x69L, ((VECTOR(uint8_t, 2))(0xA6L)), 0x96L)).s21, ((VECTOR(uint8_t, 2))(1UL))))).even, 6)) || 0x3B1EFBBFL)) == p_56) <= p_56))) , p_56))) == (-1L))), 1L)), l_983.y));
        }
        else
        { /* block id: 350 */
            uint8_t **l_994 = &p_1641->g_359;
            uint64_t **l_1000 = &l_999;
            if ((*p_57))
                break;
            (*p_1641->g_988) = p_57;
            (*p_1641->g_989) = ((*p_1641->g_934) , p_57);
            (*p_57) ^= (safe_add_func_uint64_t_u_u((*p_1641->g_951), ((safe_sub_func_int32_t_s_s(0x7A9C555DL, 0x74754032L)) > (0x26C4FF87L | ((*p_1641->g_934) = ((l_994 != (p_1641->g_351 , (*p_1641->g_357))) , (safe_mod_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((((*l_1000) = l_999) == (*p_1641->g_950)), 12)), p_56))))))));
        }
        ++l_1008;
        return p_1641->g_1011;
    }
    return p_1641->g_1012;
}


/* ------------------------------------------ */
/* 
 * reads : p_1641->g_22 p_1641->g_910 p_1641->g_23 p_1641->g_380 p_1641->g_924 p_1641->g_926 p_1641->g_932 p_1641->g_933 p_1641->g_935 p_1641->g_361
 * writes: p_1641->g_22 p_1641->g_23 p_1641->g_165 p_1641->g_380 p_1641->g_588
 */
VECTOR(uint64_t, 2)  func_61(int16_t  p_62, uint32_t  p_63, int32_t * p_64, uint64_t  p_65, int32_t * p_66, struct S2 * p_1641)
{ /* block id: 325 */
    int32_t *l_909 = (void*)0;
    int32_t **l_911 = &p_1641->g_165[2];
    VECTOR(int64_t, 4) l_916 = (VECTOR(int64_t, 4))(0x64A42FC646926846L, (VECTOR(int64_t, 2))(0x64A42FC646926846L, 0x12B436440AFC045EL), 0x12B436440AFC045EL);
    uint32_t *l_919 = &p_1641->g_380;
    VECTOR(int16_t, 8) l_925 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
    int32_t l_929 = 0x66D4C431L;
    VECTOR(int8_t, 4) l_936 = (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x1FL), 0x1FL);
    VECTOR(int8_t, 4) l_937 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2CL), 0x2CL);
    uint64_t *l_940 = (void*)0;
    uint64_t *l_941 = &p_1641->g_588;
    VECTOR(uint64_t, 8) l_942 = (VECTOR(uint64_t, 8))(0x1A3D38AAC3DD831AL, (VECTOR(uint64_t, 4))(0x1A3D38AAC3DD831AL, (VECTOR(uint64_t, 2))(0x1A3D38AAC3DD831AL, 4UL), 4UL), 4UL, 0x1A3D38AAC3DD831AL, 4UL);
    int i;
    (*p_1641->g_910) ^= ((*p_66) = (*p_66));
    (*l_911) = l_909;
    (*p_66) ^= ((safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((((((VECTOR(int64_t, 16))(l_916.xyxwxwwxywxyyxyy)).s8 & (~(safe_div_func_int32_t_s_s(((++(*l_919)) != (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(p_1641->g_924.wywyzzzz)).s6206357212452233 && ((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(l_925.s4543476177537614)).s6d && ((VECTOR(int16_t, 16))(p_1641->g_926.s9e1a872aeceb68ed)).s9b))).yyyxxxyxxyxxyxxx, ((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 16))((((&p_1641->g_165[2] == &p_66) || p_62) & (safe_mul_func_int8_t_s_s(l_929, (0x16AF2143L > (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(p_1641->g_932.s45577143)).s3, (~(p_1641->g_933[1] == &p_1641->g_934)))))))), ((VECTOR(int16_t, 4))(p_1641->g_935.s651c)), ((VECTOR(int16_t, 8))(0x18C4L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0L, 0x5CL)), 0x7EL, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(1L, 5L)).yyyyxyyy && ((VECTOR(int8_t, 2))(5L, 0x07L)).xyxxxyyx))), ((VECTOR(int8_t, 4))(l_936.xxzx)), 0x47L)).s9345 && ((VECTOR(int8_t, 4))((-1L), ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(l_937.xwyw)).even, ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))((safe_add_func_int64_t_s_s((-1L), ((*l_941) = 1UL))), 0x2FL, (-9L), ((VECTOR(int8_t, 4))(0x4EL)), (-1L))).even, ((VECTOR(int8_t, 4))((-1L)))))).even, ((VECTOR(int8_t, 2))(0x35L))))), 8L))))).even == ((VECTOR(int8_t, 2))(0L))))).xxyyyyyy, ((VECTOR(uint8_t, 8))(0x87L))))).s30 & ((VECTOR(int16_t, 2))(0x689DL))))), 0x31EEL, 0x75C9L)), 0x6861L, 0x31AFL, (-3L))), 1L, 0L, 1L)), ((VECTOR(int16_t, 16))(1L)), ((VECTOR(int16_t, 16))((-4L)))))), ((VECTOR(int16_t, 16))(0L)))))))).s5, p_1641->g_361))), p_62)))) < p_62) , p_65), p_62)), p_62)) , 0x1BE222C9L);
    return l_942.s00;
}


/* ------------------------------------------ */
/* 
 * reads : p_1641->g_607 p_1641->g_908
 * writes: p_1641->g_22
 */
int32_t * func_68(int32_t * p_69, int32_t * p_70, struct S2 * p_1641)
{ /* block id: 322 */
    int32_t *l_906 = (void*)0;
    int32_t *l_907 = &p_1641->g_22[0][4];
    (*l_907) = (safe_mod_func_int16_t_s_s(p_1641->g_607.s7, 65526UL));
    return p_1641->g_908;
}


/* ------------------------------------------ */
/* 
 * reads : p_1641->g_510 p_1641->g_882 p_1641->g_699 p_1641->g_301 p_1641->g_257 p_1641->g_897 p_1641->g_22
 * writes: p_1641->g_510 p_1641->g_158 p_1641->g_699 p_1641->g_287 p_1641->g_22 p_1641->g_165
 */
int32_t * func_72(int64_t  p_73, struct S2 * p_1641)
{ /* block id: 312 */
    uint16_t l_860 = 0xBA2FL;
    uint64_t *l_861 = &p_1641->g_510;
    int32_t l_872[8] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
    uint16_t *l_873 = (void*)0;
    uint16_t *l_874 = &l_860;
    VECTOR(int32_t, 2) l_881 = (VECTOR(int32_t, 2))(1L, 0x24273488L);
    VECTOR(int32_t, 8) l_883 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x142E566FL), 0x142E566FL), 0x142E566FL, (-6L), 0x142E566FL);
    VECTOR(int32_t, 8) l_884 = (VECTOR(int32_t, 8))(0x6E07B3B7L, (VECTOR(int32_t, 4))(0x6E07B3B7L, (VECTOR(int32_t, 2))(0x6E07B3B7L, 0x00368F60L), 0x00368F60L), 0x00368F60L, 0x6E07B3B7L, 0x00368F60L);
    VECTOR(int32_t, 2) l_885 = (VECTOR(int32_t, 2))((-1L), (-8L));
    VECTOR(int32_t, 4) l_886 = (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-1L)), (-1L));
    uint64_t l_887 = 0x6F4FBD6A9E639629L;
    int32_t l_888 = 0L;
    int16_t *l_889 = (void*)0;
    int16_t *l_890 = (void*)0;
    int16_t *l_891 = &p_1641->g_99.f1;
    int16_t *l_892[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_893 = &p_1641->g_287;
    union U1 *l_896 = &p_1641->g_207;
    union U1 **l_895 = &l_896;
    union U1 ***l_894 = &l_895;
    uint8_t l_898 = 252UL;
    int32_t *l_899 = &p_1641->g_22[6][4];
    int32_t **l_901 = &p_1641->g_165[2];
    int32_t *l_902 = (void*)0;
    int i;
    (*l_899) = ((l_860 || (--(*l_861))) , (((((*l_893) = (((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))((((+(safe_rshift_func_int16_t_s_u(((p_1641->g_699.sc |= ((6UL & (6UL && (+(0x6572L && (((safe_sub_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((-7L), (++(*l_874)))) , (safe_mod_func_uint16_t_u_u((p_1641->g_158.s7 = ((safe_mul_func_uint16_t_u_u((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_881.xy)), ((VECTOR(int32_t, 4))(p_1641->g_882.xyxx)), 0L, (-5L))).s64, ((VECTOR(int32_t, 16))(l_883.s3011157570743077)).sfa))), ((VECTOR(int32_t, 8))((!p_73), 0x490EA9E2L, 0x03A67C84L, 7L, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(l_884.s74)).yyyyyxyx && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(l_885.xxxyyyyxyxxxxxyx)) == ((VECTOR(int32_t, 16))(l_886.xyyywwwwwxyxxzzx))))).odd))).s0607455055210200 & ((VECTOR(int32_t, 16))((l_886.y , ((p_73 ^ l_881.y) , l_884.s3)), ((VECTOR(int32_t, 8))((-1L))), (-1L), (-5L), p_73, 1L, ((VECTOR(int32_t, 2))(0x0D2BDB0DL)), 0x6F0CCD36L))))).s235b, (int32_t)(-2L)))))), ((VECTOR(int32_t, 2))(0x6118962AL)), l_887, ((VECTOR(int32_t, 2))(0x0CF64ACBL)), 0x68607879L)).odd && ((VECTOR(int32_t, 8))(1L))))), ((VECTOR(int32_t, 8))((-1L)))))).even || ((VECTOR(int32_t, 4))(9L))))).w != 6L), 0UL)) ^ l_886.x)), (-5L)))), p_73)) | l_872[3]) && l_888))))) , 7L)) > p_1641->g_301[1]), 6))) || p_1641->g_301[1]) , GROUP_DIVERGE(0, 1)), 4294967290UL, p_1641->g_257.x, FAKE_DIVERGE(p_1641->global_1_offset, get_global_id(1), 10), 0x867C4143L, ((VECTOR(uint32_t, 2))(0UL)), 1UL, ((VECTOR(uint32_t, 8))(0x2B07B59CL)))) * ((VECTOR(uint32_t, 16))(0UL))))).lo ^ ((VECTOR(uint32_t, 8))(4294967295UL))))).s5 , p_1641->g_257.y)) , l_894) != p_1641->g_897) == l_898));
    (*l_899) = ((*l_899) | ((!(-8L)) > p_73));
    (*l_901) = &l_872[4];
    return l_902;
}


/* ------------------------------------------ */
/* 
 * reads : p_1641->g_287 p_1641->g_489 p_1641->g_8 p_1641->g_23 p_1641->g_522 p_1641->g_166 p_1641->g_165 p_1641->g_510 p_1641->g_546 p_1641->g_236 p_1641->g_578 p_1641->g_258 p_1641->g_359 p_1641->g_259 p_1641->g_110 p_1641->g_264 p_1641->g_168 p_1641->g_169 p_1641->g_167 p_1641->g_632 p_1641->g_67 p_1641->g_646 p_1641->g_677 p_1641->g_680 p_1641->g_682 p_1641->g_104 p_1641->g_115 p_1641->g_2 p_1641->g_148 p_1641->g_588 p_1641->g_699 p_1641->g_700 p_1641->g_715 p_1641->g_738 p_1641->g_331 p_1641->g_161 p_1641->g_748 p_1641->g_351 p_1641->g_103 p_1641->g_776 p_1641->g_778 p_1641->g_779 p_1641->g_781 p_1641->g_783 p_1641->g_22 p_1641->g_823 p_1641->g_207.f0 p_1641->g_257
 * writes: p_1641->g_287 p_1641->g_99.f0 p_1641->g_148 p_1641->g_23 p_1641->g_22 p_1641->g_165 p_1641->g_99.f1 p_1641->g_236 p_1641->g_77 p_1641->g_103 p_1641->g_110 p_1641->g_331 p_1641->g_588 p_1641->g_351 p_1641->g_646 p_1641->g_158 p_1641->g_748 p_1641->g_361
 */
int64_t  func_74(int64_t  p_75, int32_t * p_76, struct S2 * p_1641)
{ /* block id: 163 */
    int8_t l_478 = 0x71L;
    union U1 *l_484 = (void*)0;
    union U1 **l_483 = &l_484;
    int32_t l_487 = 1L;
    int64_t *l_492 = &p_1641->g_301[1];
    VECTOR(int32_t, 16) l_535 = (VECTOR(int32_t, 16))(0x792E7402L, (VECTOR(int32_t, 4))(0x792E7402L, (VECTOR(int32_t, 2))(0x792E7402L, 0x47E05AD1L), 0x47E05AD1L), 0x47E05AD1L, 0x792E7402L, 0x47E05AD1L, (VECTOR(int32_t, 2))(0x792E7402L, 0x47E05AD1L), (VECTOR(int32_t, 2))(0x792E7402L, 0x47E05AD1L), 0x792E7402L, 0x47E05AD1L, 0x792E7402L, 0x47E05AD1L);
    VECTOR(int32_t, 2) l_538 = (VECTOR(int32_t, 2))(0x43976243L, 0x23D84212L);
    VECTOR(int32_t, 4) l_545 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 1L), 1L);
    VECTOR(int32_t, 8) l_548 = (VECTOR(int32_t, 8))(0x42E0A563L, (VECTOR(int32_t, 4))(0x42E0A563L, (VECTOR(int32_t, 2))(0x42E0A563L, (-1L)), (-1L)), (-1L), 0x42E0A563L, (-1L));
    int32_t **l_554 = &p_1641->g_165[2];
    int32_t *l_555[6][9] = {{(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0},{(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0},{(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0},{(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0},{(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0},{(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0,(void*)0,&p_1641->g_8[0],(void*)0}};
    int8_t l_556 = 0x22L;
    uint32_t l_557 = 9UL;
    VECTOR(int64_t, 2) l_564 = (VECTOR(int64_t, 2))((-5L), (-1L));
    VECTOR(int64_t, 2) l_567 = (VECTOR(int64_t, 2))(0x2E798B147F1AD75AL, 0x0977415C4535528FL);
    int16_t *l_572 = &p_1641->g_99.f1;
    int16_t *l_573 = (void*)0;
    int16_t *l_574 = (void*)0;
    int16_t *l_575 = (void*)0;
    int16_t *l_576 = (void*)0;
    int16_t *l_577 = (void*)0;
    int8_t *l_583[9];
    int64_t *l_586[5];
    uint64_t *l_587 = &p_1641->g_588;
    VECTOR(int64_t, 2) l_617 = (VECTOR(int64_t, 2))(0x4E1DA49A1E55E3E5L, 5L);
    int32_t l_621 = 0x7254677FL;
    VECTOR(uint64_t, 2) l_634 = (VECTOR(uint64_t, 2))(0x84F6C87B3197D56DL, 0x28A20CDEDAAD62B7L);
    VECTOR(uint64_t, 16) l_653 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xBA276AE8C8728E6DL), 0xBA276AE8C8728E6DL), 0xBA276AE8C8728E6DL, 0UL, 0xBA276AE8C8728E6DL, (VECTOR(uint64_t, 2))(0UL, 0xBA276AE8C8728E6DL), (VECTOR(uint64_t, 2))(0UL, 0xBA276AE8C8728E6DL), 0UL, 0xBA276AE8C8728E6DL, 0UL, 0xBA276AE8C8728E6DL);
    VECTOR(uint64_t, 16) l_656 = (VECTOR(uint64_t, 16))(0x0F03928848F7620AL, (VECTOR(uint64_t, 4))(0x0F03928848F7620AL, (VECTOR(uint64_t, 2))(0x0F03928848F7620AL, 0xC53AB49F041E7FE8L), 0xC53AB49F041E7FE8L), 0xC53AB49F041E7FE8L, 0x0F03928848F7620AL, 0xC53AB49F041E7FE8L, (VECTOR(uint64_t, 2))(0x0F03928848F7620AL, 0xC53AB49F041E7FE8L), (VECTOR(uint64_t, 2))(0x0F03928848F7620AL, 0xC53AB49F041E7FE8L), 0x0F03928848F7620AL, 0xC53AB49F041E7FE8L, 0x0F03928848F7620AL, 0xC53AB49F041E7FE8L);
    VECTOR(uint64_t, 16) l_666 = (VECTOR(uint64_t, 16))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 0x5A6D4BEBA082E952L), 0x5A6D4BEBA082E952L), 0x5A6D4BEBA082E952L, 2UL, 0x5A6D4BEBA082E952L, (VECTOR(uint64_t, 2))(2UL, 0x5A6D4BEBA082E952L), (VECTOR(uint64_t, 2))(2UL, 0x5A6D4BEBA082E952L), 2UL, 0x5A6D4BEBA082E952L, 2UL, 0x5A6D4BEBA082E952L);
    VECTOR(int32_t, 16) l_673 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x1C0BA561L), 0x1C0BA561L), 0x1C0BA561L, (-1L), 0x1C0BA561L, (VECTOR(int32_t, 2))((-1L), 0x1C0BA561L), (VECTOR(int32_t, 2))((-1L), 0x1C0BA561L), (-1L), 0x1C0BA561L, (-1L), 0x1C0BA561L);
    VECTOR(uint32_t, 2) l_681 = (VECTOR(uint32_t, 2))(0xDF13689EL, 0UL);
    VECTOR(uint8_t, 4) l_733 = (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0xC9L), 0xC9L);
    uint8_t **l_747 = &p_1641->g_359;
    VECTOR(int32_t, 8) l_750 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x020B3095L), 0x020B3095L), 0x020B3095L, 7L, 0x020B3095L);
    VECTOR(int16_t, 4) l_775 = (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x4C76L), 0x4C76L);
    VECTOR(int16_t, 8) l_777 = (VECTOR(int16_t, 8))(0x577AL, (VECTOR(int16_t, 4))(0x577AL, (VECTOR(int16_t, 2))(0x577AL, 0L), 0L), 0L, 0x577AL, 0L);
    VECTOR(int32_t, 2) l_780 = (VECTOR(int32_t, 2))(0x5E8F9F52L, 0x2A4E1510L);
    VECTOR(int32_t, 4) l_786 = (VECTOR(int32_t, 4))(0x7814EBF9L, (VECTOR(int32_t, 2))(0x7814EBF9L, 0x19BAACE6L), 0x19BAACE6L);
    VECTOR(int32_t, 8) l_791 = (VECTOR(int32_t, 8))(0x52FF9307L, (VECTOR(int32_t, 4))(0x52FF9307L, (VECTOR(int32_t, 2))(0x52FF9307L, 0x674EA634L), 0x674EA634L), 0x674EA634L, 0x52FF9307L, 0x674EA634L);
    VECTOR(int32_t, 2) l_792 = (VECTOR(int32_t, 2))(0x299D5F94L, 1L);
    VECTOR(int32_t, 8) l_800 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x4D9AB2EFL), 0x4D9AB2EFL), 0x4D9AB2EFL, 6L, 0x4D9AB2EFL);
    int32_t *l_804 = (void*)0;
    int i, j;
    for (i = 0; i < 9; i++)
        l_583[i] = &p_1641->g_148;
    for (i = 0; i < 5; i++)
        l_586[i] = &p_1641->g_110;
    for (p_1641->g_287 = (-28); (p_1641->g_287 != (-3)); p_1641->g_287++)
    { /* block id: 166 */
        int64_t l_486 = 0x4925C37453181BFDL;
        int64_t *l_493 = &p_1641->g_301[1];
        int8_t *l_503 = &p_1641->g_452;
        int32_t l_507 = 8L;
        int32_t l_511 = (-1L);
        int64_t l_513 = 3L;
        uint32_t ***l_514 = (void*)0;
        int32_t **l_519 = &p_1641->g_165[2];
        int32_t **l_520 = (void*)0;
        VECTOR(int16_t, 4) l_529 = (VECTOR(int16_t, 4))(0x7104L, (VECTOR(int16_t, 2))(0x7104L, 0x076EL), 0x076EL);
        uint16_t *l_530 = (void*)0;
        uint16_t *l_531 = (void*)0;
        VECTOR(int32_t, 2) l_532 = (VECTOR(int32_t, 2))(9L, 0x47CA7AB0L);
        VECTOR(int32_t, 2) l_534 = (VECTOR(int32_t, 2))(0x33E3737CL, (-1L));
        VECTOR(int32_t, 16) l_537 = (VECTOR(int32_t, 16))(0x60EBFF90L, (VECTOR(int32_t, 4))(0x60EBFF90L, (VECTOR(int32_t, 2))(0x60EBFF90L, 0x2D1DDB14L), 0x2D1DDB14L), 0x2D1DDB14L, 0x60EBFF90L, 0x2D1DDB14L, (VECTOR(int32_t, 2))(0x60EBFF90L, 0x2D1DDB14L), (VECTOR(int32_t, 2))(0x60EBFF90L, 0x2D1DDB14L), 0x60EBFF90L, 0x2D1DDB14L, 0x60EBFF90L, 0x2D1DDB14L);
        int64_t *l_542 = &l_486;
        int64_t **l_541[1];
        int64_t ***l_540 = &l_541[0];
        int64_t ****l_543 = (void*)0;
        int64_t ****l_544 = &p_1641->g_219;
        VECTOR(int32_t, 16) l_547 = (VECTOR(int32_t, 16))(0x5DBB841FL, (VECTOR(int32_t, 4))(0x5DBB841FL, (VECTOR(int32_t, 2))(0x5DBB841FL, 0x57E58EB6L), 0x57E58EB6L), 0x57E58EB6L, 0x5DBB841FL, 0x57E58EB6L, (VECTOR(int32_t, 2))(0x5DBB841FL, 0x57E58EB6L), (VECTOR(int32_t, 2))(0x5DBB841FL, 0x57E58EB6L), 0x5DBB841FL, 0x57E58EB6L, 0x5DBB841FL, 0x57E58EB6L);
        int32_t *l_553 = &p_1641->g_22[6][4];
        int i;
        for (i = 0; i < 1; i++)
            l_541[i] = &l_542;
        for (p_1641->g_99.f0 = 0; (p_1641->g_99.f0 < 24); p_1641->g_99.f0 = safe_add_func_int64_t_s_s(p_1641->g_99.f0, 7))
        { /* block id: 169 */
            int32_t *l_491 = &p_1641->g_22[6][4];
            VECTOR(int8_t, 16) l_496 = (VECTOR(int8_t, 16))(0x6DL, (VECTOR(int8_t, 4))(0x6DL, (VECTOR(int8_t, 2))(0x6DL, 0x2AL), 0x2AL), 0x2AL, 0x6DL, 0x2AL, (VECTOR(int8_t, 2))(0x6DL, 0x2AL), (VECTOR(int8_t, 2))(0x6DL, 0x2AL), 0x6DL, 0x2AL, 0x6DL, 0x2AL);
            int16_t *l_506[9][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int32_t *l_508 = &p_1641->g_23;
            uint64_t *l_509[2][4] = {{&p_1641->g_510,&p_1641->g_510,&p_1641->g_510,&p_1641->g_510},{&p_1641->g_510,&p_1641->g_510,&p_1641->g_510,&p_1641->g_510}};
            int32_t l_512[8] = {9L,9L,9L,9L,9L,9L,9L,9L};
            uint64_t *l_515 = (void*)0;
            uint16_t l_518 = 0x1F61L;
            int i, j;
            for (p_1641->g_148 = (-14); (p_1641->g_148 >= 14); ++p_1641->g_148)
            { /* block id: 172 */
                union U1 **l_479[2][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0}};
                union U1 ***l_480 = (void*)0;
                union U1 **l_482 = (void*)0;
                union U1 ***l_481 = &l_482;
                uint16_t *l_485 = (void*)0;
                int32_t l_490 = 0x7D29A8BBL;
                int i, j;
                (*p_1641->g_489) = (l_487 = (l_478 ^ (l_486 = (((*l_481) = (l_479[1][1] = l_479[1][1])) == l_483))));
                if (l_490)
                    continue;
                if ((*p_76))
                    break;
            }
            (*l_491) = l_478;
            l_487 ^= (((l_492 == (FAKE_DIVERGE(p_1641->local_0_offset, get_local_id(0), 10) , l_493)) != l_478) & ((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 4))(l_496.sa514)).wwzyxzyy, ((VECTOR(int8_t, 16))(0x1DL, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 4))(0x70L, ((safe_sub_func_int64_t_s_s(((((l_513 = (((((((VECTOR(uint64_t, 16))((l_511 = ((p_75 , l_486) | ((*l_508) ^= ((safe_add_func_int16_t_s_s((l_507 ^= (~((*l_491) = (((l_503 != (*p_1641->g_303)) >= 0x5E7960DFL) <= ((safe_add_func_int64_t_s_s(p_75, p_1641->g_191.s6)) , 0x556D8798416EB66EL))))), 0UL)) ^ p_75)))), 4UL, l_512[3], 1UL, ((VECTOR(uint64_t, 8))(4UL)), p_1641->g_302[0], p_75, 0xE1CB0A9185C484A3L, 18446744073709551615UL)).sa >= p_75) >= 0x0848L) & (*p_1641->g_359)) && l_507) , p_1641->g_301[1])) > 0L) | 1UL) >= l_478), 18446744073709551615UL)) < p_1641->g_158.s7), 0x65L, 0x63L)).z, l_486)), (*l_508), 1L, 0x76L, 0x42L, (-10L), 0x48L, (-1L))).s2115532352207651, ((VECTOR(int8_t, 16))(0x44L))))).s29 && ((VECTOR(int8_t, 2))(0x0DL))))), 0x37L, 0x5CL, 0x72L, ((VECTOR(int8_t, 2))((-9L))), l_507, (-1L), ((VECTOR(int8_t, 4))((-8L))), 0x2AL, 0x3BL)).hi))).hi && ((VECTOR(int8_t, 4))(5L))))) && ((VECTOR(int8_t, 4))(6L))))).hi > ((VECTOR(int8_t, 2))(0x33L))))).hi, 4UL)) > 1L));
            (*l_508) |= ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((void*)0 != l_514), (0x521FL < ((l_509[1][3] = l_509[1][3]) != (l_515 = (void*)0))), (-8L), (safe_sub_func_uint16_t_u_u(((((253UL < ((((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 8))((p_75 & l_487), (((**p_1641->g_358) ^ 0x5FL) & 0L), l_518, ((VECTOR(int64_t, 2))(0x48BAFE1D657AD4BAL)), l_513, 0L, 5L)).s62, (int64_t)p_75))).hi , FAKE_DIVERGE(p_1641->group_2_offset, get_group_id(2), 10)) > p_1641->g_380)) > (*l_491)) ^ (*p_76)) || p_75), 0x7593L)), 0x529F45B8L, l_511, 0L, 0x2F81BB4AL)).lo, ((VECTOR(int32_t, 4))(0x4FE688B3L)), ((VECTOR(int32_t, 4))(0x230F1F97L))))).y;
        }
        p_76 = ((*l_519) = p_76);
        l_548.s0 = ((((VECTOR(int16_t, 16))(p_1641->g_522.s1a1de38b374b2aaa)).s2 | (safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_1641->global_0_offset, get_global_id(0), 10), p_75))) && (((l_487 = (safe_mod_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_529.xzyx)).y, 15)), p_1641->g_522.s0))) , ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((~((VECTOR(int32_t, 16))(l_532.yyyxxxyyxyyyxxxy)).s60))).yyyxyyxxyxxxxyxx | ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(p_1641->g_533.ywzwxwxw)).s76 && ((VECTOR(int32_t, 2))(0x570B76F5L, 0x1D1D09A2L))))), ((VECTOR(int32_t, 8))(l_534.xyxxyyyy)).s76, ((VECTOR(int32_t, 2))(l_535.s97))))).yxxyyxyxyxxyyxyy))), ((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(p_1641->g_536.xyyx)).wwyxwwwzyyzwzzwy, ((VECTOR(int32_t, 2))(l_537.s51)).yxxyyxyxxyxyxxyy)))))).s3f & ((VECTOR(int32_t, 16))(l_538.yxyxyxyyxyxyxyxx)).s1e))).yxxyxxyyyxxxxyyy <= ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(p_1641->g_539.s4115)).yzxxyyyyzyyywzzx && ((VECTOR(int32_t, 4))((((*l_544) = l_540) != (void*)0), 0x0985A7FCL, 0x1974B65FL, 0x559AC9F5L)).yxzxywyyyxyxzzxy)))))).lo))), ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(0x3F536771L, 0x2A6C096DL)).xxxxyxxxyxxxyxyy, ((VECTOR(int32_t, 8))(l_545.zyxyyzxw)).s1234077506703504))).sf6, ((VECTOR(int32_t, 2))((-9L), 0L))))), ((VECTOR(int32_t, 2))(p_1641->g_546.zx)), ((VECTOR(int32_t, 16))(l_547.s5ab2673fcf9c9561)).s3, 0x4867890BL, 3L, 0x2369EEDFL)).s2374065235545630, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_548.s6772)), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(0L, ((safe_lshift_func_int8_t_s_s(((safe_sub_func_int32_t_s_s(((*l_553) = (*p_76)), (l_503 != (p_1641->g_207 , l_503)))) , 5L), p_1641->g_331.sb)) , p_75), 0L, (-7L))).odd && ((VECTOR(int16_t, 2))(0x600EL))))).yxxyyyxy, ((VECTOR(uint16_t, 8))(1UL))))).s54 & ((VECTOR(int32_t, 2))((-1L)))))) <= ((VECTOR(int32_t, 2))(0x79BC5067L))))).xxyy, ((VECTOR(int32_t, 4))((-2L)))))).hi && ((VECTOR(int32_t, 2))(7L))))), (-1L), (-6L))).s0046661263132160 && ((VECTOR(int32_t, 16))(0L))))), ((VECTOR(int32_t, 16))((-10L)))))).sd0, ((VECTOR(int32_t, 2))(0x62588C13L))))), ((VECTOR(int32_t, 2))(4L)), ((VECTOR(int32_t, 2))(0x5C1BC107L))))).xyyyyyxyxxyxxxxx))).hi))).s7) ^ l_548.s0));
    }
    (*l_554) = (*p_1641->g_166);
    --l_557;
    if ((safe_rshift_func_uint8_t_u_u((p_1641->g_510 == 0x13L), ((safe_div_func_uint8_t_u_u(((((*l_587) = ((VECTOR(uint64_t, 8))(0x62CB4D8D11BED670L, 18446744073709551613UL, 18446744073709551609UL, 0x9E89471F25D14646L, ((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 8))(l_564.xyxxyyyx)).even, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((-9L), 0x76E882756BF34750L)).yyyxyxxy && ((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 16))(((p_75 >= ((((p_1641->g_331.s0 = (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 4))(((((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 4))(l_567.yxyy)), (int64_t)(safe_rshift_func_int8_t_s_u((p_1641->g_546.y < (p_1641->g_236.x &= ((*l_572) = (safe_rshift_func_uint8_t_u_s(8UL, 2))))), 6))))).x >= (p_1641->g_110 ^= (p_75 , (((VECTOR(uint16_t, 4))(1UL, ((VECTOR(uint16_t, 2))(p_1641->g_578.s17)), 0x053AL)).y & (safe_mod_func_int16_t_s_s((safe_div_func_int8_t_s_s((p_1641->g_77.z = p_75), ((*p_1641->g_359) = (p_1641->g_258.x & ((p_75 > 1L) <= (*p_76)))))), p_1641->g_259.x)))))) == p_1641->g_264.s1), 0x63A2L, 1L, (-1L))).w, p_75))) , (*p_76)) , &l_483) != &l_483)) >= FAKE_DIVERGE(p_1641->global_1_offset, get_global_id(1), 10)), (*p_1641->g_168), (**p_1641->g_167), ((VECTOR(int64_t, 2))(0x746CE921E03A8FD3L)), ((VECTOR(int64_t, 4))(0x281D2BA6779D819EL)), (-5L), 0x27759EC9DF5E5DF5L, 0x37B7E264E1526A09L, ((VECTOR(int64_t, 4))(2L)))), ((VECTOR(int64_t, 16))(1L))))).odd))).s41 > ((VECTOR(int64_t, 2))((-2L)))))).xyxy))))).s2) == 0x5D5851779C3143E1L) & 0x9A91AAF54B1AD4C7L), p_75)) >= 0x43B202912FEA4A41L))))
    { /* block id: 208 */
        int64_t l_589 = 0x766282526E636EA0L;
        VECTOR(int8_t, 8) l_603 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x30L), 0x30L), 0x30L, 1L, 0x30L);
        int8_t **l_610[1][8][7] = {{{&l_583[1],(void*)0,(void*)0,&l_583[7],(void*)0,(void*)0,&l_583[1]},{&l_583[1],(void*)0,(void*)0,&l_583[7],(void*)0,(void*)0,&l_583[1]},{&l_583[1],(void*)0,(void*)0,&l_583[7],(void*)0,(void*)0,&l_583[1]},{&l_583[1],(void*)0,(void*)0,&l_583[7],(void*)0,(void*)0,&l_583[1]},{&l_583[1],(void*)0,(void*)0,&l_583[7],(void*)0,(void*)0,&l_583[1]},{&l_583[1],(void*)0,(void*)0,&l_583[7],(void*)0,(void*)0,&l_583[1]},{&l_583[1],(void*)0,(void*)0,&l_583[7],(void*)0,(void*)0,&l_583[1]},{&l_583[1],(void*)0,(void*)0,&l_583[7],(void*)0,(void*)0,&l_583[1]}}};
        int32_t l_623 = 0x7EC750E8L;
        VECTOR(uint64_t, 8) l_645 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
        VECTOR(uint64_t, 4) l_665 = (VECTOR(uint64_t, 4))(0xDAADB5E3E72195FEL, (VECTOR(uint64_t, 2))(0xDAADB5E3E72195FEL, 0UL), 0UL);
        int i, j, k;
lbl_592:
        l_589 &= (*p_1641->g_489);
        for (p_1641->g_351 = 0; (p_1641->g_351 != 17); ++p_1641->g_351)
        { /* block id: 212 */
            uint32_t l_624 = 7UL;
            uint64_t *l_637 = &p_1641->g_588;
            VECTOR(uint32_t, 8) l_674 = (VECTOR(uint32_t, 8))(0xC906C43DL, (VECTOR(uint32_t, 4))(0xC906C43DL, (VECTOR(uint32_t, 2))(0xC906C43DL, 1UL), 1UL), 1UL, 0xC906C43DL, 1UL);
            uint32_t *l_683 = &l_624;
            uint16_t *l_684 = (void*)0;
            int i;
            if (p_1641->g_287)
                goto lbl_592;
            for (l_487 = 0; (l_487 == (-17)); l_487 = safe_sub_func_uint32_t_u_u(l_487, 5))
            { /* block id: 216 */
                int8_t l_622 = (-5L);
                int32_t l_625 = 0x4B78978DL;
                VECTOR(uint64_t, 4) l_633 = (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 7UL), 7UL);
                union U1 *l_642[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_642[i] = &p_1641->g_207;
                for (l_478 = 0; (l_478 == 8); l_478 = safe_add_func_uint16_t_u_u(l_478, 1))
                { /* block id: 219 */
                    int8_t ***l_611 = &p_1641->g_303;
                    int32_t l_614 = 0x4D5E2662L;
                    l_625 ^= (safe_mod_func_int64_t_s_s((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s(0x69L, (((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 8))((-1L), ((VECTOR(int8_t, 2))(l_603.s42)), 0x23L, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 2))(3L, (-1L))).xyyxxxyyxyyxxxyy, (int8_t)((safe_div_func_int32_t_s_s(((((p_1641->g_606 = l_555[3][0]) == (void*)0) , (safe_sub_func_uint64_t_u_u(((((*l_611) = l_610[0][5][2]) == ((safe_lshift_func_uint16_t_u_s(l_614, 8)) , l_610[0][3][2])) <= FAKE_DIVERGE(p_1641->group_1_offset, get_group_id(1), 10)), (safe_sub_func_int64_t_s_s((((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 2))((-1L), (-9L))).xxyxyyxy, ((VECTOR(int64_t, 16))(l_617.xxyxyxyxxxxyyxxy)).even))).s4 != (l_623 = (safe_mod_func_uint16_t_u_u((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(p_1641->g_620.sbd81)).wyxzzywy == ((VECTOR(int32_t, 4))((l_622 ^= l_621), 1L, (-7L), 1L)).zxzzzxxz))).s7651011747427210, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((p_1641->g_620.s1 ^ p_1641->g_148), ((VECTOR(int32_t, 4))(0x711C4EC5L)), 0x6AEA945BL, 0x4328CC4FL, 0x4A2A6CECL)).s41, ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 2))(0x30AA1ED3L))))), ((VECTOR(int32_t, 2))(0x61E965FBL)), ((VECTOR(int32_t, 2))(0x51FC6249L))))), 0L, 1L)).xzzywxxzyxyxwyzw))).s00cb | ((VECTOR(int32_t, 4))((-5L)))))).z ^ 0x79D1442BL), 0x4DB9L)))), GROUP_DIVERGE(1, 1)))))) ^ p_1641->g_154.s9), 0x328F56B2L)) , 0L)))).secef & ((VECTOR(int8_t, 4))(0x25L))))))).s3214032066751030))).even, ((VECTOR(int8_t, 8))(0L))))).s3 <= 1UL))), p_75)), l_624));
                }
                (*p_1641->g_489) = ((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL)).xyyy - ((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 2))(p_1641->g_632.s70)).xxyy)))))).hi + ((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(l_633.zxzy)) & ((VECTOR(uint64_t, 2))(l_634.yy)).xxyx))).even)))))).odd, (-1L))) >= (*p_76));
                for (l_625 = (-13); (l_625 == (-14)); --l_625)
                { /* block id: 229 */
                    uint64_t **l_638 = (void*)0;
                    uint64_t **l_639 = (void*)0;
                    uint64_t **l_640[10];
                    int32_t l_641 = 0x34E83186L;
                    int i;
                    for (i = 0; i < 10; i++)
                        l_640[i] = &l_587;
                    l_641 = (&p_1641->g_588 != (l_637 = l_637));
                    (*p_1641->g_489) = (&p_1641->g_207 != l_642[2]);
                    return p_75;
                }
                for (l_623 = (-6); (l_623 >= 0); l_623++)
                { /* block id: 237 */
                    return p_1641->g_67.s3;
                }
            }
            l_623 = (((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 16))(l_645.s4445351655225442)), ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 8))(0x81342A895F22BEF3L, ((VECTOR(uint64_t, 16))(p_1641->g_646.yxyyxyxxxyxyxxyx)).s8, 0x68733D9B3097AF78L, 18446744073709551610UL, 1UL, l_624, 0x5658996628BD0BF4L, 0xAE920BA4370B50EBL)).odd, (uint64_t)((*l_587) = p_75)))).wzzxwzyx, (uint64_t)0xE0272B4610773E00L))).s6351336566724471, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(abs(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(0UL, 0xA3595B05B2B5B3F8L, 0x866D8DFA892EC3BCL, 18446744073709551614UL)) + ((VECTOR(uint64_t, 4))(l_653.s6d34))))).wyxzxyywyyxzwzyy + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(l_656.sdf)).yyxyyxxyxyyyxyyx + ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(l_665.yxyzyxyzxzyxzyzz)) + ((VECTOR(uint64_t, 4))(l_666.sc462)).zwzxyxzyzxxzxzwx))).lo, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 4))((p_1641->g_646.x = (((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 4))(l_673.saee1)).lo, ((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 4))(0xF70C3792L, 0xD2227EBBL, 0xA2245F9AL, 0x3489A73EL)), ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(l_674.s07)) | ((VECTOR(uint32_t, 2))(0x1981DA5BL, 0UL))))).xyxy, ((VECTOR(uint32_t, 16))(((*p_76) && (safe_sub_func_uint16_t_u_u(p_75, 5UL))), ((VECTOR(uint32_t, 8))(abs(((VECTOR(uint32_t, 16))(p_1641->g_677.yxyxyxxyyyxxxyyy)).hi))), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(p_1641->g_680.s3c)).yyxy + ((VECTOR(uint32_t, 2))(l_681.xy)).xxyy))), ((VECTOR(uint32_t, 2))(0x3653B881L, 0x07A8B78CL)), 0x245F2C42L)).sa4bd))).lo))), 1L, 1L)).lo && ((VECTOR(int64_t, 8))((~((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 2))((-2L), 1L)), ((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_1641->g_682.sfa)), 0xF4E2L, (((((*l_683) = ((*p_1641->g_104) != p_1641->g_115)) || (l_684 != l_572)) & p_1641->g_236.y) , GROUP_DIVERGE(0, 1)), 0x79F7L, ((VECTOR(uint16_t, 2))(4UL)), 0UL)), ((VECTOR(uint16_t, 8))(0x9ACFL))))).s32))).xxyyyxxx))).s10))).yyyyyyxyyyyxyyxx, (int64_t)l_645.s3, (int64_t)p_75))).s7 >= p_75)), l_603.s6, 0x90FA5CF91B22D1BAL, 18446744073709551615UL)).zxywxzwz, ((VECTOR(uint64_t, 8))(0xD2ACFFFC6471EB54L))))).s3673712225420144 + ((VECTOR(uint64_t, 16))(0x7DB28A39D417B71FL))))).s2b + ((VECTOR(uint64_t, 2))(18446744073709551608UL))))).yxxyyxyy >> ((VECTOR(uint64_t, 8))(64))))).s4, 0UL, 0xF0AD46A5C822A203L, ((VECTOR(uint64_t, 4))(1UL)), 0x1BD9E7BAB1E5B1F2L, 8UL, 0x70620C5490DC6D44L, ((VECTOR(uint64_t, 4))(6UL)), 18446744073709551615UL, 0x439157658664E74BL)).lo))).s21 + ((VECTOR(uint64_t, 2))(0UL))))), ((VECTOR(uint64_t, 2))(0UL))))).xxxyyxxx, ((VECTOR(uint64_t, 8))(18446744073709551607UL)), ((VECTOR(uint64_t, 8))(18446744073709551615UL))))).s64 + ((VECTOR(uint64_t, 2))(18446744073709551610UL))))).yxxx + ((VECTOR(uint64_t, 4))(0x090853DAF959FBE1L))))).xwxzzxzzyzywxxxz)))))).sc2f0, (uint64_t)0x30D91F6F5085BFE5L))), p_75, ((VECTOR(uint64_t, 2))(9UL)), 6UL))))).lo + ((VECTOR(uint64_t, 4))(18446744073709551608UL))))).wwyzxyzwyzzwzwyz))).s3 || p_1641->g_2);
        }
    }
    else
    { /* block id: 246 */
        VECTOR(uint8_t, 8) l_720 = (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 9UL), 9UL), 9UL, 6UL, 9UL);
        VECTOR(int32_t, 4) l_751 = (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-1L)), (-1L));
        int64_t l_768 = 0x0353AAA86CE42FF2L;
        uint8_t *l_774 = (void*)0;
        VECTOR(int32_t, 4) l_793 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x095D6D70L), 0x095D6D70L);
        VECTOR(int32_t, 16) l_799 = (VECTOR(int32_t, 16))(0x581A5B69L, (VECTOR(int32_t, 4))(0x581A5B69L, (VECTOR(int32_t, 2))(0x581A5B69L, 0x1CEA077EL), 0x1CEA077EL), 0x1CEA077EL, 0x581A5B69L, 0x1CEA077EL, (VECTOR(int32_t, 2))(0x581A5B69L, 0x1CEA077EL), (VECTOR(int32_t, 2))(0x581A5B69L, 0x1CEA077EL), 0x581A5B69L, 0x1CEA077EL, 0x581A5B69L, 0x1CEA077EL);
        union U0 l_801 = {247UL};
        VECTOR(uint64_t, 16) l_842 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xB526AC163E656C6BL), 0xB526AC163E656C6BL), 0xB526AC163E656C6BL, 1UL, 0xB526AC163E656C6BL, (VECTOR(uint64_t, 2))(1UL, 0xB526AC163E656C6BL), (VECTOR(uint64_t, 2))(1UL, 0xB526AC163E656C6BL), 1UL, 0xB526AC163E656C6BL, 1UL, 0xB526AC163E656C6BL);
        uint64_t **l_850 = &l_587;
        uint64_t l_854 = 0xA2E624D3FF0D17ECL;
        int i;
        (*l_554) = p_76;
        for (p_1641->g_148 = 0; (p_1641->g_148 < (-13)); p_1641->g_148--)
        { /* block id: 250 */
            VECTOR(uint8_t, 16) l_714 = (VECTOR(uint8_t, 16))(0x96L, (VECTOR(uint8_t, 4))(0x96L, (VECTOR(uint8_t, 2))(0x96L, 3UL), 3UL), 3UL, 0x96L, 3UL, (VECTOR(uint8_t, 2))(0x96L, 3UL), (VECTOR(uint8_t, 2))(0x96L, 3UL), 0x96L, 3UL, 0x96L, 3UL);
            uint8_t **l_746 = (void*)0;
            VECTOR(int32_t, 16) l_752 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 7L), 7L), 7L, 8L, 7L, (VECTOR(int32_t, 2))(8L, 7L), (VECTOR(int32_t, 2))(8L, 7L), 8L, 7L, 8L, 7L);
            uint16_t *l_754 = (void*)0;
            VECTOR(int64_t, 4) l_759 = (VECTOR(int64_t, 4))(0x158B3A95A056B9CCL, (VECTOR(int64_t, 2))(0x158B3A95A056B9CCL, 0x05022838D311FD6EL), 0x05022838D311FD6EL);
            uint32_t l_769 = 4294967294UL;
            int i;
            for (p_1641->g_588 = (-8); (p_1641->g_588 > 43); p_1641->g_588 = safe_add_func_uint64_t_u_u(p_1641->g_588, 1))
            { /* block id: 253 */
                VECTOR(int16_t, 8) l_693 = (VECTOR(int16_t, 8))(0x31F8L, (VECTOR(int16_t, 4))(0x31F8L, (VECTOR(int16_t, 2))(0x31F8L, 0x231EL), 0x231EL), 0x231EL, 0x31F8L, 0x231EL);
                uint16_t *l_694 = (void*)0;
                VECTOR(uint8_t, 16) l_707 = (VECTOR(uint8_t, 16))(0xE8L, (VECTOR(uint8_t, 4))(0xE8L, (VECTOR(uint8_t, 2))(0xE8L, 1UL), 1UL), 1UL, 0xE8L, 1UL, (VECTOR(uint8_t, 2))(0xE8L, 1UL), (VECTOR(uint8_t, 2))(0xE8L, 1UL), 0xE8L, 1UL, 0xE8L, 1UL);
                VECTOR(uint8_t, 4) l_739 = (VECTOR(uint8_t, 4))(0xDCL, (VECTOR(uint8_t, 2))(0xDCL, 255UL), 255UL);
                int8_t l_749 = 0x12L;
                VECTOR(int32_t, 8) l_753 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, (-9L)), (-9L)), (-9L), 7L, (-9L));
                int i;
                p_1641->g_748[1][5] ^= (safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(l_693.s7436)).w, (p_1641->g_158.s1 = p_75))), ((((p_75 >= (safe_mod_func_int32_t_s_s((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(p_1641->g_699.s453d035877e96037)) & ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(p_1641->g_700.sd5)).xxyyxyxxxxyyxyyx | ((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 2))(0x6C73L, 0L)).yyyyyxxx, ((VECTOR(int16_t, 2))(1L, 0x39CBL)).yyxxyyyy))).s2573534236071652)))))).s9a && ((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))((safe_div_func_uint8_t_u_u(((p_75 , ((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(l_707.s26f893ba438366e9)) + ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(0xD0L, 0x0BL, ((*p_1641->g_359) = l_693.s3), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(l_714.s10948ac6b148452b)).s74 + ((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 2))(p_1641->g_715.zy)), (uint8_t)FAKE_DIVERGE(p_1641->local_0_offset, get_local_id(0), 10))))))), ((VECTOR(uint8_t, 2))(252UL, 0xF7L)), 255UL, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(0xDBL, 0x27L)) << ((VECTOR(uint8_t, 2))(8))))).xyxx | ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(l_720.s02272146)).s4177571237074347 + ((VECTOR(uint8_t, 4))(0x37L, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(254UL, 247UL)).yxyyyxyy & ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((safe_lshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1641->group_2_offset, get_group_id(2), 10) ^ 0L), 1)), 0xBDL, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 16))(l_733.yyxyyyzxyywzyzxy)).hi, ((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1641->g_738.s51)), 0UL, 2UL)).odd + ((VECTOR(uint8_t, 16))(l_739.wyxxyyzxxzyxzyzy)).se6))).yxxxxxyy))).s21 + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(((~((GROUP_DIVERGE(1, 1) | 0x54L) , (p_1641->g_331.s8 != ((safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u((((p_75 | 0x1F9F22DEL) , l_714.s3) ^ p_75), 0)) , 255UL), (-3L))) >= 0x579DFA1BL)))) == l_714.s6), ((VECTOR(uint8_t, 2))(5UL)), 0x7CL)).zzzwzywy * ((VECTOR(uint8_t, 8))(0xE6L))))).s14))).xxxy, ((VECTOR(uint8_t, 4))(0x94L))))), ((VECTOR(uint8_t, 4))(2UL))))).wyyxzzxw))).s3014470637333237 - ((VECTOR(uint8_t, 16))(0xA6L))))).s3c04 + ((VECTOR(uint8_t, 4))(0xD6L))))), 0UL, 3UL)) & ((VECTOR(uint8_t, 8))(0UL))))).s43 + ((VECTOR(uint8_t, 2))(0UL))))).xxxy, ((VECTOR(uint8_t, 4))(0x8DL))))).lo * ((VECTOR(uint8_t, 2))(255UL))))).xxyxyxyx))), ((VECTOR(uint8_t, 4))(246UL)), ((VECTOR(uint8_t, 2))(0xA6L)), 3UL, 9UL)).even << ((VECTOR(uint8_t, 8))(255UL))))).s70 & ((VECTOR(uint8_t, 2))(1UL))))), 0x92L)).xxzwyzxxxxyxzzyy))).s8150))), 1UL, ((VECTOR(uint8_t, 2))(0xD1L)), 0x30L)) ^ ((VECTOR(uint8_t, 16))(0xA2L))))), ((VECTOR(uint8_t, 16))(0xE0L))))).sef + ((VECTOR(uint8_t, 2))(6UL))))).yyxx + ((VECTOR(uint8_t, 4))(0xD0L))))).zxwyxwzwzwzxyxxy))).sa, l_693.s3)) , l_746)) != l_747), (-5L))), 0x3255L, ((VECTOR(int16_t, 2))(1L)), p_1641->g_161.z, 1L, 0x2317L, 1L)), 9L, ((VECTOR(int16_t, 4))(0x5A32L)), 1L, 0x439CL, 0x380EL)).odd, ((VECTOR(int16_t, 8))(0x13BAL)), ((VECTOR(int16_t, 8))(0x4FB4L))))).s75))).xxyxxyyx))).s6, 6L)), p_75))) != p_75) | l_714.s3) , 0x488FL)));
                if (l_749)
                    continue;
                l_752.s3 = ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(l_750.s52023642)).s37 && ((VECTOR(int32_t, 8))(l_751.zxxwwzxz)).s66))) <= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x01D7B760L, 0x4269D7C4L)), 0x20B83251L, (-1L))).lo))) && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_752.s169a2b9bdb716b2d)).sb1 ^ ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_753.s6250)), (l_754 == l_754), ((safe_lshift_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u((p_75 > (((VECTOR(int64_t, 16))(l_759.xxzzxyyyzwzywyzy)).s5 | (safe_rshift_func_int8_t_s_u(p_75, (0x7052L > (safe_lshift_func_int8_t_s_s(((safe_add_func_uint32_t_u_u((!(l_752.sc < ((+p_1641->g_351) , (1UL ^ (((safe_rshift_func_uint8_t_u_u((p_75 == l_759.y), 0)) || 1L) && (*p_1641->g_359)))))), (-1L))) | p_1641->g_510), 5))))))), (-1L))) , l_759.z), p_75)) == 0x09F0L), 7L, (-4L))).s7072044106140675, ((VECTOR(int32_t, 16))(0x41C64DA8L)), ((VECTOR(int32_t, 16))((-7L)))))).s56, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0L))))) <= ((VECTOR(int32_t, 2))(0x29886AB4L))))) < ((VECTOR(int32_t, 2))(0L))))), ((VECTOR(int32_t, 2))(0x476F677AL))))).yyyxxxyyyxxxyyxx, ((VECTOR(int32_t, 16))(0L))))).sab)))))).hi;
                ++l_769;
            }
        }
        for (l_557 = 0; (l_557 >= 60); l_557 = safe_add_func_int32_t_s_s(l_557, 8))
        { /* block id: 264 */
            return p_1641->g_258.y;
        }
        if ((((void*)0 == l_774) | ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x6588L, (-9L))) && ((VECTOR(int16_t, 4))(l_775.yxwy)).odd))).yxyy && ((VECTOR(int16_t, 8))(p_1641->g_776.yyxyyxyx)).even))) > ((VECTOR(int16_t, 4))(l_777.s0152))))).z))
        { /* block id: 267 */
            VECTOR(int32_t, 2) l_782 = (VECTOR(int32_t, 2))(0L, 0x52EF808EL);
            VECTOR(int32_t, 16) l_784 = (VECTOR(int32_t, 16))(0x714FA2FAL, (VECTOR(int32_t, 4))(0x714FA2FAL, (VECTOR(int32_t, 2))(0x714FA2FAL, 1L), 1L), 1L, 0x714FA2FAL, 1L, (VECTOR(int32_t, 2))(0x714FA2FAL, 1L), (VECTOR(int32_t, 2))(0x714FA2FAL, 1L), 0x714FA2FAL, 1L, 0x714FA2FAL, 1L);
            VECTOR(int32_t, 4) l_785 = (VECTOR(int32_t, 4))(0x392B44B7L, (VECTOR(int32_t, 2))(0x392B44B7L, (-6L)), (-6L));
            VECTOR(int32_t, 4) l_798 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x42776446L), 0x42776446L);
            int i;
            l_784.sb = ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(p_1641->g_778.s8a)).yxyx | ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(p_1641->g_779.yyyyzzxx)).s43, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(l_780.yy)).yyxyyyxxyyyyyyyx == ((VECTOR(int32_t, 2))(p_1641->g_781.sc0)).xxxyxyyxyyxyxxyx))).s70, ((VECTOR(int32_t, 2))(0x2C5966A1L, 0x715681B5L))))).xxyx))).odd, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(l_782.yxyy)) <= ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(p_1641->g_783.s89ea10cee81b294a)), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(l_784.s76440e95)).lo, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(l_785.zxxyyyzxwzwxywyw)).s9f60 && ((VECTOR(int32_t, 4))((-1L), ((VECTOR(int32_t, 2))(l_786.yx)), 0L))))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x4CA0B91DL, 7L)), 1L, 0x4D9F0276L))))).even, ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x3014B512L, 0x1821F201L)), 1L, 0L)).wzxwzyyy, ((VECTOR(int32_t, 8))((((safe_add_func_int8_t_s_s(0x70L, (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(0x05L, 9UL, 0x26L, 0x5AL, 255UL, 0x27L, 249UL, 255UL)).s4, 2)))) , l_720.s3) != p_75), ((VECTOR(int32_t, 16))(l_791.s4017420764231043)).s4, 7L, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_792.yxyxxyxx)).hi | ((VECTOR(int32_t, 4))(l_793.zwxw))))).xzzwwzyzyzzwwxzx >= ((VECTOR(int32_t, 4))(l_720.s2, 0x62678E89L, 1L, (-1L))).zyyxwzyyzxwxxwxx))).s9b, ((VECTOR(int32_t, 8))(0x74765DE3L, ((VECTOR(int32_t, 4))((-4L), 0x5CE1761BL, 0x6FAF505CL, 1L)), 0x2D41F440L, 0x1B9B83C7L, 0x7C1702A3L)).s51))).lo, (safe_rshift_func_int16_t_s_u((((safe_div_func_int16_t_s_s((((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))(0L, (-7L))).xyxy, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_798.zywx)).wxxyyyxw & ((VECTOR(int32_t, 2))(l_799.sc4)).yxxxyyxy))).odd, ((VECTOR(int32_t, 4))(0x0ED1243CL, l_793.y, 0x27A95A1FL, 0L))))).zwwywzyyzzyxxxxz, ((VECTOR(int32_t, 4))(l_800.s0110)).xzyzyyyzzzxxwwzz))).sc | ((l_801 , 65530UL) ^ ((safe_rshift_func_uint8_t_u_u(((p_75 | p_75) || 1L), l_784.s1)) < p_75))), 0x0727L)) | l_785.x) , 0x46E4L), 5)), ((VECTOR(int32_t, 2))(0x27B17A90L)), 2L))))).s3073521020546760 && ((VECTOR(int32_t, 16))(2L))))), ((VECTOR(int32_t, 16))(1L)), ((VECTOR(int32_t, 16))(0x052757DBL))))).s0, 1L, (-3L), ((VECTOR(int32_t, 2))((-4L))), ((VECTOR(int32_t, 8))(0x1204C34DL)), (*p_76), 0x0922E9E1L, 0x28E2D264L)).hi, ((VECTOR(int32_t, 8))(0x363ADB06L))))).s65))).yxxx && ((VECTOR(int32_t, 4))((-1L)))))).yxxwxwzzwzzyzxwy, ((VECTOR(int32_t, 16))(1L))))).s65a9))), (*p_76), ((VECTOR(int32_t, 2))(1L)), 0x1E5040BFL)).hi, ((VECTOR(int32_t, 4))(0L))))).odd, ((VECTOR(int32_t, 2))(0x202CE865L)))))))).lo;
            (*l_554) = l_804;
            l_784.s3 = (safe_mul_func_uint16_t_u_u(0xF2A0L, (&p_1641->g_380 == l_555[5][6])));
        }
        else
        { /* block id: 271 */
            uint64_t l_813[1][7][8] = {{{0xCFC13E9A86B71815L,0xCFC13E9A86B71815L,0xD380D315E2ED103FL,0UL,18446744073709551608UL,0UL,0xD380D315E2ED103FL,0xCFC13E9A86B71815L},{0xCFC13E9A86B71815L,0xCFC13E9A86B71815L,0xD380D315E2ED103FL,0UL,18446744073709551608UL,0UL,0xD380D315E2ED103FL,0xCFC13E9A86B71815L},{0xCFC13E9A86B71815L,0xCFC13E9A86B71815L,0xD380D315E2ED103FL,0UL,18446744073709551608UL,0UL,0xD380D315E2ED103FL,0xCFC13E9A86B71815L},{0xCFC13E9A86B71815L,0xCFC13E9A86B71815L,0xD380D315E2ED103FL,0UL,18446744073709551608UL,0UL,0xD380D315E2ED103FL,0xCFC13E9A86B71815L},{0xCFC13E9A86B71815L,0xCFC13E9A86B71815L,0xD380D315E2ED103FL,0UL,18446744073709551608UL,0UL,0xD380D315E2ED103FL,0xCFC13E9A86B71815L},{0xCFC13E9A86B71815L,0xCFC13E9A86B71815L,0xD380D315E2ED103FL,0UL,18446744073709551608UL,0UL,0xD380D315E2ED103FL,0xCFC13E9A86B71815L},{0xCFC13E9A86B71815L,0xCFC13E9A86B71815L,0xD380D315E2ED103FL,0UL,18446744073709551608UL,0UL,0xD380D315E2ED103FL,0xCFC13E9A86B71815L}}};
            int32_t l_853 = 0x1905945AL;
            int i, j, k;
            for (l_487 = 28; (l_487 < 23); l_487--)
            { /* block id: 274 */
                int32_t l_814 = 0x2F8F2059L;
                int64_t l_852[6][2][5] = {{{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L},{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L}},{{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L},{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L}},{{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L},{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L}},{{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L},{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L}},{{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L},{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L}},{{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L},{2L,0x404B7C325EECA9C7L,1L,(-2L),0x42CC2550DE84AED4L}}};
                int i, j, k;
                for (p_1641->g_23 = (-14); (p_1641->g_23 >= (-7)); p_1641->g_23 = safe_add_func_uint32_t_u_u(p_1641->g_23, 1))
                { /* block id: 277 */
                    for (p_1641->g_361 = 15; (p_1641->g_361 != 20); p_1641->g_361++)
                    { /* block id: 280 */
                        l_751.z &= (l_813[0][0][3] ^ l_814);
                        if ((*p_76))
                            break;
                        return p_1641->g_22[6][4];
                    }
                    (*l_554) = (*p_1641->g_166);
                    (*l_554) = (*p_1641->g_166);
                    return l_799.s3;
                }
                for (l_556 = (-12); (l_556 == 11); l_556 = safe_add_func_int32_t_s_s(l_556, 7))
                { /* block id: 291 */
                    uint16_t **l_838 = &p_1641->g_229;
                    VECTOR(uint64_t, 16) l_843 = (VECTOR(uint64_t, 16))(0xEA7236F0A02A14D0L, (VECTOR(uint64_t, 4))(0xEA7236F0A02A14D0L, (VECTOR(uint64_t, 2))(0xEA7236F0A02A14D0L, 0x0645805A698CC400L), 0x0645805A698CC400L), 0x0645805A698CC400L, 0xEA7236F0A02A14D0L, 0x0645805A698CC400L, (VECTOR(uint64_t, 2))(0xEA7236F0A02A14D0L, 0x0645805A698CC400L), (VECTOR(uint64_t, 2))(0xEA7236F0A02A14D0L, 0x0645805A698CC400L), 0xEA7236F0A02A14D0L, 0x0645805A698CC400L, 0xEA7236F0A02A14D0L, 0x0645805A698CC400L);
                    uint16_t l_851 = 1UL;
                    int i;
                    l_853 ^= (((safe_add_func_int32_t_s_s((safe_mod_func_int64_t_s_s(((p_1641->g_823 , (((safe_lshift_func_uint16_t_u_u(p_75, 8)) , (safe_rshift_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u(p_1641->g_510, (((+(((safe_mod_func_int16_t_s_s((((safe_mod_func_int64_t_s_s(((safe_mod_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_s(((l_838 != ((((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 8))(p_1641->g_841.yyyyyyyy))))) + ((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 2))(l_842.s58))))).xxyyxxxy))), ((VECTOR(uint64_t, 2))(l_843.s39)).xxxyxxyy))).lo, (uint64_t)p_75))).x < p_75) , l_838)) | (safe_mod_func_int32_t_s_s((safe_sub_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 5)), (((void*)0 == l_850) != (-1L)))), FAKE_DIVERGE(p_1641->group_0_offset, get_group_id(0), 10)))), p_1641->g_682.s5)) <= l_851), 0x4A65AC76L)) <= 0x78668F5C4D5C2FF1L), p_75)) ^ p_75) || p_1641->g_207.f0), (-1L))) || 65532UL) , l_814)) == p_75) || 0x43L))) == l_852[2][0][3]), FAKE_DIVERGE(p_1641->local_0_offset, get_local_id(0), 10)))) | p_1641->g_257.x)) < p_75), p_1641->g_778.s3)), FAKE_DIVERGE(p_1641->global_1_offset, get_global_id(1), 10))) | 0UL) < 0L);
                }
                l_853 = (l_854 | l_813[0][0][3]);
                for (p_1641->g_110 = 0; (p_1641->g_110 > 9); p_1641->g_110 = safe_add_func_uint32_t_u_u(p_1641->g_110, 4))
                { /* block id: 297 */
                    for (l_801.f1 = 0; (l_801.f1 != (-7)); --l_801.f1)
                    { /* block id: 300 */
                        int32_t *l_859 = (void*)0;
                        (*l_554) = l_859;
                        if (l_852[2][0][3])
                            break;
                        if ((*p_76))
                            continue;
                    }
                    if ((*p_76))
                        continue;
                }
            }
            return l_793.w;
        }
    }
    return p_75;
}


/* ------------------------------------------ */
/* 
 * reads : p_1641->g_103 p_1641->g_22
 * writes: p_1641->g_165 p_1641->g_103 p_1641->g_22
 */
int32_t  func_87(int8_t * p_88, int32_t * p_89, int8_t * p_90, int8_t  p_91, struct S2 * p_1641)
{ /* block id: 39 */
    int32_t **l_171 = &p_1641->g_165[2];
    VECTOR(int32_t, 4) l_206 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x12F1922AL), 0x12F1922AL);
    uint16_t l_212 = 0xF70DL;
    uint64_t l_214 = 0xD75E75CD83069D14L;
    uint64_t l_231 = 0xA8DCA40DCBCF7E28L;
    VECTOR(int16_t, 2) l_233 = (VECTOR(int16_t, 2))(1L, 0x0C7FL);
    VECTOR(int16_t, 8) l_234 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x1F6DL), 0x1F6DL), 0x1F6DL, 0L, 0x1F6DL);
    VECTOR(int16_t, 16) l_235 = (VECTOR(int16_t, 16))(0x08A7L, (VECTOR(int16_t, 4))(0x08A7L, (VECTOR(int16_t, 2))(0x08A7L, 6L), 6L), 6L, 0x08A7L, 6L, (VECTOR(int16_t, 2))(0x08A7L, 6L), (VECTOR(int16_t, 2))(0x08A7L, 6L), 0x08A7L, 6L, 0x08A7L, 6L);
    int8_t **l_268 = (void*)0;
    uint32_t l_270 = 4294967295UL;
    int64_t *l_294 = &p_1641->g_110;
    int64_t **l_293 = &l_294;
    VECTOR(int8_t, 16) l_332 = (VECTOR(int8_t, 16))(0x79L, (VECTOR(int8_t, 4))(0x79L, (VECTOR(int8_t, 2))(0x79L, 1L), 1L), 1L, 0x79L, 1L, (VECTOR(int8_t, 2))(0x79L, 1L), (VECTOR(int8_t, 2))(0x79L, 1L), 0x79L, 1L, 0x79L, 1L);
    uint32_t **l_388 = (void*)0;
    int8_t l_400 = 0x78L;
    int8_t l_432 = 1L;
    uint8_t *l_469 = (void*)0;
    int i;
    (*l_171) = (void*)0;
    for (p_1641->g_103 = (-13); (p_1641->g_103 < 6); ++p_1641->g_103)
    { /* block id: 43 */
        int32_t l_186 = (-7L);
        uint16_t *l_196 = (void*)0;
        uint16_t *l_197 = (void*)0;
        uint16_t *l_198 = (void*)0;
        VECTOR(int32_t, 4) l_199 = (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, (-5L)), (-5L));
        uint16_t *l_200 = (void*)0;
        uint16_t *l_201 = (void*)0;
        uint16_t *l_202 = (void*)0;
        int64_t *l_210 = (void*)0;
        int16_t *l_211[3][5][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int8_t *l_213 = &p_1641->g_115;
        VECTOR(uint16_t, 16) l_265 = (VECTOR(uint16_t, 16))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0x19E3L), 0x19E3L), 0x19E3L, 65529UL, 0x19E3L, (VECTOR(uint16_t, 2))(65529UL, 0x19E3L), (VECTOR(uint16_t, 2))(65529UL, 0x19E3L), 65529UL, 0x19E3L, 65529UL, 0x19E3L);
        uint8_t l_282 = 255UL;
        int32_t l_285 = 0x2B1F58D6L;
        VECTOR(uint64_t, 4) l_316 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL);
        VECTOR(int8_t, 8) l_335 = (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0L), 0L), 0L, (-4L), 0L);
        VECTOR(uint64_t, 4) l_367 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551609UL), 18446744073709551609UL);
        int64_t ***l_383[3][1][7];
        uint8_t l_422 = 0x0FL;
        uint32_t *l_447 = &p_1641->g_380;
        union U1 *l_467[2];
        union U1 **l_468 = &l_467[0];
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 7; k++)
                    l_383[i][j][k] = &l_293;
            }
        }
        for (i = 0; i < 2; i++)
            l_467[i] = &p_1641->g_207;
        (1 + 1);
    }
    (*p_89) = ((void*)0 == l_469);
    return (*p_89);
}


/* ------------------------------------------ */
/* 
 * reads : p_1641->g_22 p_1641->g_99.f0 p_1641->g_104 p_1641->g_23 p_1641->g_138 p_1641->g_148 p_1641->g_154 p_1641->g_158 p_1641->g_161 p_1641->g_110 p_1641->g_8 p_1641->g_67 p_1641->g_103 p_1641->g_166 p_1641->g_167 p_1641->g_170
 * writes: p_1641->g_22 p_1641->g_103 p_1641->g_23 p_1641->g_115 p_1641->g_117 p_1641->g_165 p_1641->g_167
 */
int8_t * func_92(union U0  p_93, union U0  p_94, int8_t * p_95, union U0  p_96, int8_t * p_97, struct S2 * p_1641)
{ /* block id: 23 */
    int32_t *l_101 = &p_1641->g_22[6][4];
    uint8_t *l_102 = &p_1641->g_103;
    int64_t *l_109[2][1][3];
    int32_t l_111 = 0x31517602L;
    int8_t *l_114 = &p_1641->g_115;
    int8_t *l_116 = &p_1641->g_117;
    VECTOR(uint32_t, 2) l_143 = (VECTOR(uint32_t, 2))(0UL, 0UL);
    int8_t *l_146 = (void*)0;
    int8_t *l_147[7][9];
    int32_t l_149[5] = {0x2A095ECAL,0x2A095ECAL,0x2A095ECAL,0x2A095ECAL,0x2A095ECAL};
    VECTOR(uint16_t, 16) l_152 = (VECTOR(uint16_t, 16))(0x6804L, (VECTOR(uint16_t, 4))(0x6804L, (VECTOR(uint16_t, 2))(0x6804L, 0UL), 0UL), 0UL, 0x6804L, 0UL, (VECTOR(uint16_t, 2))(0x6804L, 0UL), (VECTOR(uint16_t, 2))(0x6804L, 0UL), 0x6804L, 0UL, 0x6804L, 0UL);
    VECTOR(uint16_t, 2) l_153 = (VECTOR(uint16_t, 2))(65530UL, 65531UL);
    VECTOR(uint16_t, 16) l_157 = (VECTOR(uint16_t, 16))(0x12D1L, (VECTOR(uint16_t, 4))(0x12D1L, (VECTOR(uint16_t, 2))(0x12D1L, 0xF385L), 0xF385L), 0xF385L, 0x12D1L, 0xF385L, (VECTOR(uint16_t, 2))(0x12D1L, 0xF385L), (VECTOR(uint16_t, 2))(0x12D1L, 0xF385L), 0x12D1L, 0xF385L, 0x12D1L, 0xF385L);
    VECTOR(uint16_t, 8) l_159 = (VECTOR(uint16_t, 8))(0x690AL, (VECTOR(uint16_t, 4))(0x690AL, (VECTOR(uint16_t, 2))(0x690AL, 0x1AE8L), 0x1AE8L), 0x1AE8L, 0x690AL, 0x1AE8L);
    VECTOR(int16_t, 16) l_160 = (VECTOR(int16_t, 16))(0x73FAL, (VECTOR(int16_t, 4))(0x73FAL, (VECTOR(int16_t, 2))(0x73FAL, 0L), 0L), 0L, 0x73FAL, 0L, (VECTOR(int16_t, 2))(0x73FAL, 0L), (VECTOR(int16_t, 2))(0x73FAL, 0L), 0x73FAL, 0L, 0x73FAL, 0L);
    union U0 l_162 = {0xD5L};
    uint16_t l_163 = 0x86BFL;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
                l_109[i][j][k] = &p_1641->g_110;
        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
            l_147[i][j] = &p_1641->g_148;
    }
    (*p_1641->g_104) ^= (((*l_101) = ((void*)0 == &p_1641->g_23)) && (((*l_101) >= p_1641->g_99.f0) == ((*l_101) > ((*l_102) = 0x58L))));
    if ((((p_1641->g_22[3][5] ^ (((l_111 ^= (safe_mul_func_int8_t_s_s((*l_101), (p_96.f0++)))) || (0UL ^ GROUP_DIVERGE(2, 1))) <= ((*l_116) = ((*l_114) = (safe_lshift_func_uint16_t_u_u((*l_101), 0)))))) >= (safe_sub_func_uint64_t_u_u(18446744073709551611UL, ((((safe_lshift_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(((((+(safe_add_func_uint32_t_u_u(p_94.f0, (safe_sub_func_int8_t_s_s((safe_mod_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s((((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(p_1641->g_138.zwww)).z, ((safe_mul_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((+((VECTOR(uint32_t, 8))(l_143.yyyxyxyx)).s3), ((safe_lshift_func_int8_t_s_u((l_149[2] = (*l_101)), 4)) , (safe_sub_func_int64_t_s_s((((p_1641->g_148 | ((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 16))(l_152.s9847bf4707698f8d))))).sb1, ((VECTOR(uint16_t, 16))(l_153.yyyxxyyyxxyxyxyx)).sed))).yxyy, ((VECTOR(uint16_t, 4))(p_1641->g_154.sc679))))).yxyyyxxx, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(l_157.s0ecd05a9bba2a9ba)).s58, ((VECTOR(uint16_t, 2))(1UL, 4UL)), ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 16))(p_1641->g_158.s3706656610526260)), ((VECTOR(uint16_t, 16))(l_159.s4026140615437216))))) & ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 4))(65531UL, (((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x0FD7L, 1L)), 0x3262L, 0x3DDAL)).xxwwyxxz, ((VECTOR(int16_t, 16))(0x188FL, ((VECTOR(int16_t, 2))(l_160.s25)), ((VECTOR(int16_t, 4))(p_1641->g_161.xyyw)), 0x68C6L, (((((l_162 , &p_1641->g_103) == l_146) || FAKE_DIVERGE(p_1641->group_2_offset, get_group_id(2), 10)) == p_93.f0) , p_94.f0), p_94.f0, ((VECTOR(int16_t, 2))((-1L))), p_1641->g_110, ((VECTOR(int16_t, 2))(4L)), 8L)).hi))).s6 | p_1641->g_8[0]), 65535UL, 1UL)), ((VECTOR(uint16_t, 4))(0x70B1L))))), ((VECTOR(uint16_t, 4))(0UL))))), 1UL, 1UL, 0x0CD2L, 65535UL)).s5336221342156742))).sd7))).xxyx + ((VECTOR(uint16_t, 4))(0x03C2L))))).wxyxyzwy))).s7) , l_109[0][0][1]) == (void*)0), p_1641->g_67.s7))))), (-1L))) , 8UL))), 0UL)) != 1UL) != 4UL), p_1641->g_8[0])), (*l_101))), 0xD7L))))) && (*l_101)) || (*l_101)) | p_1641->g_103), p_94.f0)), (*l_101))), 9)) ^ GROUP_DIVERGE(2, 1)) && l_163) , 0x417E293C1CF12C9EL)))) , (*p_1641->g_104)))
    { /* block id: 32 */
        (*p_1641->g_166) = &p_1641->g_23;
        return &p_1641->g_115;
    }
    else
    { /* block id: 35 */
        (*p_1641->g_170) = p_1641->g_167;
        return &p_1641->g_148;
    }
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S2 c_1642;
    struct S2* p_1641 = &c_1642;
    struct S2 c_1643 = {
        1L, // p_1641->g_2
        {0x09CE4562L,0x09CE4562L,0x09CE4562L,0x09CE4562L}, // p_1641->g_8
        {{0L,2L,0x743C5EACL,4L,2L,4L,0x743C5EACL,2L},{0L,2L,0x743C5EACL,4L,2L,4L,0x743C5EACL,2L},{0L,2L,0x743C5EACL,4L,2L,4L,0x743C5EACL,2L},{0L,2L,0x743C5EACL,4L,2L,4L,0x743C5EACL,2L},{0L,2L,0x743C5EACL,4L,2L,4L,0x743C5EACL,2L},{0L,2L,0x743C5EACL,4L,2L,4L,0x743C5EACL,2L},{0L,2L,0x743C5EACL,4L,2L,4L,0x743C5EACL,2L}}, // p_1641->g_22
        0x1E5EB906L, // p_1641->g_23
        (VECTOR(int16_t, 8))(0x1DBCL, (VECTOR(int16_t, 4))(0x1DBCL, (VECTOR(int16_t, 2))(0x1DBCL, (-8L)), (-8L)), (-8L), 0x1DBCL, (-8L)), // p_1641->g_67
        (VECTOR(int8_t, 4))(0x00L, (VECTOR(int8_t, 2))(0x00L, 0x1BL), 0x1BL), // p_1641->g_77
        {0x27L}, // p_1641->g_99
        (void*)0, // p_1641->g_100
        1UL, // p_1641->g_103
        &p_1641->g_23, // p_1641->g_104
        1L, // p_1641->g_110
        (-1L), // p_1641->g_115
        1L, // p_1641->g_117
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 7UL), 7UL), // p_1641->g_138
        0x3AL, // p_1641->g_148
        (VECTOR(uint16_t, 16))(0x3375L, (VECTOR(uint16_t, 4))(0x3375L, (VECTOR(uint16_t, 2))(0x3375L, 0UL), 0UL), 0UL, 0x3375L, 0UL, (VECTOR(uint16_t, 2))(0x3375L, 0UL), (VECTOR(uint16_t, 2))(0x3375L, 0UL), 0x3375L, 0UL, 0x3375L, 0UL), // p_1641->g_154
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65529UL), 65529UL), 65529UL, 65535UL, 65529UL), // p_1641->g_158
        (VECTOR(int16_t, 4))(0x41FEL, (VECTOR(int16_t, 2))(0x41FEL, 0x4901L), 0x4901L), // p_1641->g_161
        {&p_1641->g_8[0],&p_1641->g_8[0],&p_1641->g_8[0]}, // p_1641->g_165
        {&p_1641->g_165[2],&p_1641->g_165[2],&p_1641->g_165[2]}, // p_1641->g_164
        &p_1641->g_165[2], // p_1641->g_166
        (-3L), // p_1641->g_169
        &p_1641->g_169, // p_1641->g_168
        &p_1641->g_168, // p_1641->g_167
        &p_1641->g_167, // p_1641->g_170
        (VECTOR(uint8_t, 8))(0xF7L, (VECTOR(uint8_t, 4))(0xF7L, (VECTOR(uint8_t, 2))(0xF7L, 249UL), 249UL), 249UL, 0xF7L, 249UL), // p_1641->g_191
        {-8L}, // p_1641->g_207
        (void*)0, // p_1641->g_219
        (void*)0, // p_1641->g_229
        (VECTOR(int16_t, 2))(0x32C0L, 0x60A3L), // p_1641->g_236
        (VECTOR(uint32_t, 2))(0xE348D3EAL, 0xB55ACEF2L), // p_1641->g_256
        (VECTOR(uint32_t, 2))(0x1F8C9155L, 0xF23A3FDCL), // p_1641->g_257
        (VECTOR(uint32_t, 2))(0x14CCE56EL, 0UL), // p_1641->g_258
        (VECTOR(uint32_t, 2))(0xC77CF5F0L, 6UL), // p_1641->g_259
        (VECTOR(uint16_t, 16))(0x9998L, (VECTOR(uint16_t, 4))(0x9998L, (VECTOR(uint16_t, 2))(0x9998L, 0x4E03L), 0x4E03L), 0x4E03L, 0x9998L, 0x4E03L, (VECTOR(uint16_t, 2))(0x9998L, 0x4E03L), (VECTOR(uint16_t, 2))(0x9998L, 0x4E03L), 0x9998L, 0x4E03L, 0x9998L, 0x4E03L), // p_1641->g_264
        (-10L), // p_1641->g_287
        {0x5CD637A361F727BEL,0x5CD637A361F727BEL}, // p_1641->g_301
        {(-6L)}, // p_1641->g_302
        &p_1641->g_100, // p_1641->g_303
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-2L)), (-2L)), (-2L), 0L, (-2L), (VECTOR(int8_t, 2))(0L, (-2L)), (VECTOR(int8_t, 2))(0L, (-2L)), 0L, (-2L), 0L, (-2L)), // p_1641->g_331
        1UL, // p_1641->g_351
        &p_1641->g_103, // p_1641->g_359
        &p_1641->g_359, // p_1641->g_358
        &p_1641->g_358, // p_1641->g_357
        255UL, // p_1641->g_361
        4294967294UL, // p_1641->g_380
        0x56L, // p_1641->g_452
        {&p_1641->g_8[0],&p_1641->g_23,&p_1641->g_8[0],&p_1641->g_8[0],&p_1641->g_23,&p_1641->g_8[0]}, // p_1641->g_488
        &p_1641->g_23, // p_1641->g_489
        18446744073709551615UL, // p_1641->g_510
        (void*)0, // p_1641->g_521
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5C1BL), 0x5C1BL), 0x5C1BL, 1L, 0x5C1BL, (VECTOR(int16_t, 2))(1L, 0x5C1BL), (VECTOR(int16_t, 2))(1L, 0x5C1BL), 1L, 0x5C1BL, 1L, 0x5C1BL), // p_1641->g_522
        (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x2A67EFC4L), 0x2A67EFC4L), // p_1641->g_533
        (VECTOR(int32_t, 2))(0x19E0AFCCL, (-1L)), // p_1641->g_536
        (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x07171CC4L), 0x07171CC4L), 0x07171CC4L, (-4L), 0x07171CC4L), // p_1641->g_539
        (VECTOR(int32_t, 4))(0x6F0D3EAEL, (VECTOR(int32_t, 2))(0x6F0D3EAEL, (-7L)), (-7L)), // p_1641->g_546
        (VECTOR(uint16_t, 8))(0x296FL, (VECTOR(uint16_t, 4))(0x296FL, (VECTOR(uint16_t, 2))(0x296FL, 65535UL), 65535UL), 65535UL, 0x296FL, 65535UL), // p_1641->g_578
        3UL, // p_1641->g_588
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x1EB83B71L), 0x1EB83B71L), 0x1EB83B71L, 0L, 0x1EB83B71L), // p_1641->g_607
        (void*)0, // p_1641->g_606
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 9L), 9L), 9L, 0L, 9L, (VECTOR(int32_t, 2))(0L, 9L), (VECTOR(int32_t, 2))(0L, 9L), 0L, 9L, 0L, 9L), // p_1641->g_620
        (VECTOR(uint64_t, 8))(0x6D091B2498150728L, (VECTOR(uint64_t, 4))(0x6D091B2498150728L, (VECTOR(uint64_t, 2))(0x6D091B2498150728L, 8UL), 8UL), 8UL, 0x6D091B2498150728L, 8UL), // p_1641->g_632
        (VECTOR(uint64_t, 2))(0x94A811050E0F4397L, 0x411530526DCEA7BEL), // p_1641->g_646
        (VECTOR(uint32_t, 2))(0xC6397832L, 1UL), // p_1641->g_677
        (VECTOR(uint32_t, 16))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 4UL), 4UL), 4UL, 4294967287UL, 4UL, (VECTOR(uint32_t, 2))(4294967287UL, 4UL), (VECTOR(uint32_t, 2))(4294967287UL, 4UL), 4294967287UL, 4UL, 4294967287UL, 4UL), // p_1641->g_680
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), (VECTOR(uint16_t, 2))(0UL, 65535UL), 0UL, 65535UL, 0UL, 65535UL), // p_1641->g_682
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5838L), 0x5838L), 0x5838L, 1L, 0x5838L, (VECTOR(int16_t, 2))(1L, 0x5838L), (VECTOR(int16_t, 2))(1L, 0x5838L), 1L, 0x5838L, 1L, 0x5838L), // p_1641->g_699
        (VECTOR(int16_t, 16))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, (-7L)), (-7L)), (-7L), 8L, (-7L), (VECTOR(int16_t, 2))(8L, (-7L)), (VECTOR(int16_t, 2))(8L, (-7L)), 8L, (-7L), 8L, (-7L)), // p_1641->g_700
        (VECTOR(uint8_t, 4))(0x2CL, (VECTOR(uint8_t, 2))(0x2CL, 0UL), 0UL), // p_1641->g_715
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xA2L), 0xA2L), 0xA2L, 0UL, 0xA2L), // p_1641->g_738
        {{0x924B1A8AL,4294967295UL,0xD9E25FA7L,0x8BBE7517L,4294967287UL,0xE90AE672L,4294967295UL,0x50193620L,4294967286UL},{0x924B1A8AL,4294967295UL,0xD9E25FA7L,0x8BBE7517L,4294967287UL,0xE90AE672L,4294967295UL,0x50193620L,4294967286UL},{0x924B1A8AL,4294967295UL,0xD9E25FA7L,0x8BBE7517L,4294967287UL,0xE90AE672L,4294967295UL,0x50193620L,4294967286UL},{0x924B1A8AL,4294967295UL,0xD9E25FA7L,0x8BBE7517L,4294967287UL,0xE90AE672L,4294967295UL,0x50193620L,4294967286UL},{0x924B1A8AL,4294967295UL,0xD9E25FA7L,0x8BBE7517L,4294967287UL,0xE90AE672L,4294967295UL,0x50193620L,4294967286UL},{0x924B1A8AL,4294967295UL,0xD9E25FA7L,0x8BBE7517L,4294967287UL,0xE90AE672L,4294967295UL,0x50193620L,4294967286UL},{0x924B1A8AL,4294967295UL,0xD9E25FA7L,0x8BBE7517L,4294967287UL,0xE90AE672L,4294967295UL,0x50193620L,4294967286UL},{0x924B1A8AL,4294967295UL,0xD9E25FA7L,0x8BBE7517L,4294967287UL,0xE90AE672L,4294967295UL,0x50193620L,4294967286UL}}, // p_1641->g_748
        (VECTOR(int16_t, 2))((-1L), 0L), // p_1641->g_776
        (VECTOR(int32_t, 16))(0x09B6867FL, (VECTOR(int32_t, 4))(0x09B6867FL, (VECTOR(int32_t, 2))(0x09B6867FL, 8L), 8L), 8L, 0x09B6867FL, 8L, (VECTOR(int32_t, 2))(0x09B6867FL, 8L), (VECTOR(int32_t, 2))(0x09B6867FL, 8L), 0x09B6867FL, 8L, 0x09B6867FL, 8L), // p_1641->g_778
        (VECTOR(int32_t, 4))(0x09502576L, (VECTOR(int32_t, 2))(0x09502576L, 0x105F935AL), 0x105F935AL), // p_1641->g_779
        (VECTOR(int32_t, 16))(0x6B4EF385L, (VECTOR(int32_t, 4))(0x6B4EF385L, (VECTOR(int32_t, 2))(0x6B4EF385L, (-1L)), (-1L)), (-1L), 0x6B4EF385L, (-1L), (VECTOR(int32_t, 2))(0x6B4EF385L, (-1L)), (VECTOR(int32_t, 2))(0x6B4EF385L, (-1L)), 0x6B4EF385L, (-1L), 0x6B4EF385L, (-1L)), // p_1641->g_781
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L), // p_1641->g_783
        {-1L}, // p_1641->g_823
        (VECTOR(int64_t, 2))((-1L), 1L), // p_1641->g_841
        (VECTOR(int32_t, 2))(0x109F3B89L, 0L), // p_1641->g_882
        (void*)0, // p_1641->g_897
        {{&p_1641->g_165[2],&p_1641->g_165[2]},{&p_1641->g_165[2],&p_1641->g_165[2]},{&p_1641->g_165[2],&p_1641->g_165[2]}}, // p_1641->g_900
        (void*)0, // p_1641->g_908
        &p_1641->g_23, // p_1641->g_910
        (VECTOR(int16_t, 4))(0x68A5L, (VECTOR(int16_t, 2))(0x68A5L, 4L), 4L), // p_1641->g_924
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x2EDBL), 0x2EDBL), 0x2EDBL, 0L, 0x2EDBL, (VECTOR(int16_t, 2))(0L, 0x2EDBL), (VECTOR(int16_t, 2))(0L, 0x2EDBL), 0L, 0x2EDBL, 0L, 0x2EDBL), // p_1641->g_926
        (VECTOR(int8_t, 8))(0x6FL, (VECTOR(int8_t, 4))(0x6FL, (VECTOR(int8_t, 2))(0x6FL, 0x5EL), 0x5EL), 0x5EL, 0x6FL, 0x5EL), // p_1641->g_932
        &p_1641->g_748[1][5], // p_1641->g_934
        {&p_1641->g_934,&p_1641->g_934}, // p_1641->g_933
        (VECTOR(int16_t, 16))(0x237EL, (VECTOR(int16_t, 4))(0x237EL, (VECTOR(int16_t, 2))(0x237EL, 7L), 7L), 7L, 0x237EL, 7L, (VECTOR(int16_t, 2))(0x237EL, 7L), (VECTOR(int16_t, 2))(0x237EL, 7L), 0x237EL, 7L, 0x237EL, 7L), // p_1641->g_935
        &p_1641->g_588, // p_1641->g_951
        &p_1641->g_951, // p_1641->g_950
        &p_1641->g_165[2], // p_1641->g_988
        &p_1641->g_165[2], // p_1641->g_989
        {0x42L}, // p_1641->g_1011
        {0x4EL}, // p_1641->g_1012
        (VECTOR(int32_t, 8))(0x5A90B982L, (VECTOR(int32_t, 4))(0x5A90B982L, (VECTOR(int32_t, 2))(0x5A90B982L, 1L), 1L), 1L, 0x5A90B982L, 1L), // p_1641->g_1034
        (VECTOR(uint32_t, 4))(0x54068570L, (VECTOR(uint32_t, 2))(0x54068570L, 4294967295UL), 4294967295UL), // p_1641->g_1039
        &p_1641->g_165[2], // p_1641->g_1081
        (VECTOR(uint16_t, 2))(0xD0C9L, 65535UL), // p_1641->g_1125
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x0F7AL), 0x0F7AL), 0x0F7AL, 0UL, 0x0F7AL, (VECTOR(uint16_t, 2))(0UL, 0x0F7AL), (VECTOR(uint16_t, 2))(0UL, 0x0F7AL), 0UL, 0x0F7AL, 0UL, 0x0F7AL), // p_1641->g_1128
        (VECTOR(uint16_t, 2))(65535UL, 0x4EC8L), // p_1641->g_1131
        (VECTOR(int8_t, 8))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0x5CL), 0x5CL), 0x5CL, (-3L), 0x5CL), // p_1641->g_1175
        (VECTOR(uint16_t, 16))(0xE873L, (VECTOR(uint16_t, 4))(0xE873L, (VECTOR(uint16_t, 2))(0xE873L, 0x9DF6L), 0x9DF6L), 0x9DF6L, 0xE873L, 0x9DF6L, (VECTOR(uint16_t, 2))(0xE873L, 0x9DF6L), (VECTOR(uint16_t, 2))(0xE873L, 0x9DF6L), 0xE873L, 0x9DF6L, 0xE873L, 0x9DF6L), // p_1641->g_1180
        0xFC1421EFD472C613L, // p_1641->g_1204
        0x10D04C2AL, // p_1641->g_1208
        (VECTOR(int16_t, 8))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), (-9L)), (-9L)), (-9L), (-9L), (-9L)), // p_1641->g_1213
        (VECTOR(int16_t, 2))(0x07C5L, 7L), // p_1641->g_1214
        (VECTOR(int16_t, 2))(0L, 0x62CBL), // p_1641->g_1215
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xFC7EL), 0xFC7EL), 0xFC7EL, 1UL, 0xFC7EL), // p_1641->g_1228
        (VECTOR(uint16_t, 16))(0xAD25L, (VECTOR(uint16_t, 4))(0xAD25L, (VECTOR(uint16_t, 2))(0xAD25L, 0xAC89L), 0xAC89L), 0xAC89L, 0xAD25L, 0xAC89L, (VECTOR(uint16_t, 2))(0xAD25L, 0xAC89L), (VECTOR(uint16_t, 2))(0xAD25L, 0xAC89L), 0xAD25L, 0xAC89L, 0xAD25L, 0xAC89L), // p_1641->g_1231
        (VECTOR(uint8_t, 16))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0x17L), 0x17L), 0x17L, 7UL, 0x17L, (VECTOR(uint8_t, 2))(7UL, 0x17L), (VECTOR(uint8_t, 2))(7UL, 0x17L), 7UL, 0x17L, 7UL, 0x17L), // p_1641->g_1237
        (VECTOR(uint16_t, 4))(0x51BAL, (VECTOR(uint16_t, 2))(0x51BAL, 5UL), 5UL), // p_1641->g_1253
        (VECTOR(uint16_t, 2))(0xE77BL, 1UL), // p_1641->g_1258
        (VECTOR(uint16_t, 16))(0xB0CAL, (VECTOR(uint16_t, 4))(0xB0CAL, (VECTOR(uint16_t, 2))(0xB0CAL, 0x7035L), 0x7035L), 0x7035L, 0xB0CAL, 0x7035L, (VECTOR(uint16_t, 2))(0xB0CAL, 0x7035L), (VECTOR(uint16_t, 2))(0xB0CAL, 0x7035L), 0xB0CAL, 0x7035L, 0xB0CAL, 0x7035L), // p_1641->g_1259
        &p_1641->g_168, // p_1641->g_1277
        &p_1641->g_1277, // p_1641->g_1276
        &p_1641->g_1276, // p_1641->g_1275
        0x7FL, // p_1641->g_1292
        (VECTOR(int32_t, 2))((-1L), 0x41F73F64L), // p_1641->g_1311
        (VECTOR(int32_t, 4))(0x45A5F98CL, (VECTOR(int32_t, 2))(0x45A5F98CL, 0x4B6BEB67L), 0x4B6BEB67L), // p_1641->g_1314
        (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0L), 0L), 0L, (-6L), 0L, (VECTOR(int32_t, 2))((-6L), 0L), (VECTOR(int32_t, 2))((-6L), 0L), (-6L), 0L, (-6L), 0L), // p_1641->g_1317
        (VECTOR(int32_t, 2))(8L, 3L), // p_1641->g_1320
        (VECTOR(uint32_t, 16))(6UL, (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 4294967295UL), 4294967295UL), 4294967295UL, 6UL, 4294967295UL, (VECTOR(uint32_t, 2))(6UL, 4294967295UL), (VECTOR(uint32_t, 2))(6UL, 4294967295UL), 6UL, 4294967295UL, 6UL, 4294967295UL), // p_1641->g_1339
        (VECTOR(uint8_t, 2))(0xC2L, 253UL), // p_1641->g_1364
        (VECTOR(int32_t, 16))(0x7AD23E2DL, (VECTOR(int32_t, 4))(0x7AD23E2DL, (VECTOR(int32_t, 2))(0x7AD23E2DL, (-4L)), (-4L)), (-4L), 0x7AD23E2DL, (-4L), (VECTOR(int32_t, 2))(0x7AD23E2DL, (-4L)), (VECTOR(int32_t, 2))(0x7AD23E2DL, (-4L)), 0x7AD23E2DL, (-4L), 0x7AD23E2DL, (-4L)), // p_1641->g_1371
        (VECTOR(uint32_t, 2))(0x68D3BC21L, 0UL), // p_1641->g_1389
        (VECTOR(uint8_t, 16))(0x34L, (VECTOR(uint8_t, 4))(0x34L, (VECTOR(uint8_t, 2))(0x34L, 0UL), 0UL), 0UL, 0x34L, 0UL, (VECTOR(uint8_t, 2))(0x34L, 0UL), (VECTOR(uint8_t, 2))(0x34L, 0UL), 0x34L, 0UL, 0x34L, 0UL), // p_1641->g_1422
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint8_t, 2))(1UL, 0UL), (VECTOR(uint8_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_1641->g_1427
        (VECTOR(uint8_t, 4))(0xF0L, (VECTOR(uint8_t, 2))(0xF0L, 0x0AL), 0x0AL), // p_1641->g_1432
        (VECTOR(uint64_t, 2))(0xFC4403B23546885CL, 2UL), // p_1641->g_1453
        {0L}, // p_1641->g_1462
        &p_1641->g_99, // p_1641->g_1468
        &p_1641->g_1468, // p_1641->g_1467
        (VECTOR(int16_t, 2))((-9L), 0x1881L), // p_1641->g_1484
        &p_1641->g_1012, // p_1641->g_1490
        (VECTOR(int16_t, 2))((-8L), 1L), // p_1641->g_1497
        0UL, // p_1641->g_1515
        (VECTOR(int32_t, 16))(0x6ADAAB75L, (VECTOR(int32_t, 4))(0x6ADAAB75L, (VECTOR(int32_t, 2))(0x6ADAAB75L, 0x284B548AL), 0x284B548AL), 0x284B548AL, 0x6ADAAB75L, 0x284B548AL, (VECTOR(int32_t, 2))(0x6ADAAB75L, 0x284B548AL), (VECTOR(int32_t, 2))(0x6ADAAB75L, 0x284B548AL), 0x6ADAAB75L, 0x284B548AL, 0x6ADAAB75L, 0x284B548AL), // p_1641->g_1544
        (VECTOR(uint32_t, 8))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 4294967293UL), 4294967293UL), 4294967293UL, 5UL, 4294967293UL), // p_1641->g_1545
        &p_1641->g_606, // p_1641->g_1551
        (void*)0, // p_1641->g_1556
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), (VECTOR(uint16_t, 2))(65535UL, 0UL), 65535UL, 0UL, 65535UL, 0UL), // p_1641->g_1559
        (VECTOR(int16_t, 2))(0L, (-3L)), // p_1641->g_1595
        (VECTOR(int8_t, 2))(3L, (-10L)), // p_1641->g_1602
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x15L), 0x15L), 0x15L, 0L, 0x15L, (VECTOR(int8_t, 2))(0L, 0x15L), (VECTOR(int8_t, 2))(0L, 0x15L), 0L, 0x15L, 0L, 0x15L), // p_1641->g_1603
        (VECTOR(int8_t, 2))(1L, (-10L)), // p_1641->g_1604
        (VECTOR(int8_t, 8))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, (-1L)), (-1L)), (-1L), 2L, (-1L)), // p_1641->g_1605
        (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, 0L), 0L), // p_1641->g_1607
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), // p_1641->g_1615
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x26L), 0x26L), 0x26L, 1L, 0x26L), // p_1641->g_1617
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x68L), 0x68L), 0x68L, 0L, 0x68L, (VECTOR(int8_t, 2))(0L, 0x68L), (VECTOR(int8_t, 2))(0L, 0x68L), 0L, 0x68L, 0L, 0x68L), // p_1641->g_1619
        (VECTOR(int8_t, 8))(0x47L, (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, 7L), 7L), 7L, 0x47L, 7L), // p_1641->g_1620
        (VECTOR(uint16_t, 16))(0x6B04L, (VECTOR(uint16_t, 4))(0x6B04L, (VECTOR(uint16_t, 2))(0x6B04L, 0x8148L), 0x8148L), 0x8148L, 0x6B04L, 0x8148L, (VECTOR(uint16_t, 2))(0x6B04L, 0x8148L), (VECTOR(uint16_t, 2))(0x6B04L, 0x8148L), 0x6B04L, 0x8148L, 0x6B04L, 0x8148L), // p_1641->g_1625
        sequence_input[get_global_id(0)], // p_1641->global_0_offset
        sequence_input[get_global_id(1)], // p_1641->global_1_offset
        sequence_input[get_global_id(2)], // p_1641->global_2_offset
        sequence_input[get_local_id(0)], // p_1641->local_0_offset
        sequence_input[get_local_id(1)], // p_1641->local_1_offset
        sequence_input[get_local_id(2)], // p_1641->local_2_offset
        sequence_input[get_group_id(0)], // p_1641->group_0_offset
        sequence_input[get_group_id(1)], // p_1641->group_1_offset
        sequence_input[get_group_id(2)], // p_1641->group_2_offset
    };
    c_1642 = c_1643;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1641);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1641->g_2, "p_1641->g_2", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1641->g_8[i], "p_1641->g_8[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1641->g_22[i][j], "p_1641->g_22[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1641->g_23, "p_1641->g_23", print_hash_value);
    transparent_crc(p_1641->g_67.s0, "p_1641->g_67.s0", print_hash_value);
    transparent_crc(p_1641->g_67.s1, "p_1641->g_67.s1", print_hash_value);
    transparent_crc(p_1641->g_67.s2, "p_1641->g_67.s2", print_hash_value);
    transparent_crc(p_1641->g_67.s3, "p_1641->g_67.s3", print_hash_value);
    transparent_crc(p_1641->g_67.s4, "p_1641->g_67.s4", print_hash_value);
    transparent_crc(p_1641->g_67.s5, "p_1641->g_67.s5", print_hash_value);
    transparent_crc(p_1641->g_67.s6, "p_1641->g_67.s6", print_hash_value);
    transparent_crc(p_1641->g_67.s7, "p_1641->g_67.s7", print_hash_value);
    transparent_crc(p_1641->g_77.x, "p_1641->g_77.x", print_hash_value);
    transparent_crc(p_1641->g_77.y, "p_1641->g_77.y", print_hash_value);
    transparent_crc(p_1641->g_77.z, "p_1641->g_77.z", print_hash_value);
    transparent_crc(p_1641->g_77.w, "p_1641->g_77.w", print_hash_value);
    transparent_crc(p_1641->g_103, "p_1641->g_103", print_hash_value);
    transparent_crc(p_1641->g_110, "p_1641->g_110", print_hash_value);
    transparent_crc(p_1641->g_115, "p_1641->g_115", print_hash_value);
    transparent_crc(p_1641->g_117, "p_1641->g_117", print_hash_value);
    transparent_crc(p_1641->g_138.x, "p_1641->g_138.x", print_hash_value);
    transparent_crc(p_1641->g_138.y, "p_1641->g_138.y", print_hash_value);
    transparent_crc(p_1641->g_138.z, "p_1641->g_138.z", print_hash_value);
    transparent_crc(p_1641->g_138.w, "p_1641->g_138.w", print_hash_value);
    transparent_crc(p_1641->g_148, "p_1641->g_148", print_hash_value);
    transparent_crc(p_1641->g_154.s0, "p_1641->g_154.s0", print_hash_value);
    transparent_crc(p_1641->g_154.s1, "p_1641->g_154.s1", print_hash_value);
    transparent_crc(p_1641->g_154.s2, "p_1641->g_154.s2", print_hash_value);
    transparent_crc(p_1641->g_154.s3, "p_1641->g_154.s3", print_hash_value);
    transparent_crc(p_1641->g_154.s4, "p_1641->g_154.s4", print_hash_value);
    transparent_crc(p_1641->g_154.s5, "p_1641->g_154.s5", print_hash_value);
    transparent_crc(p_1641->g_154.s6, "p_1641->g_154.s6", print_hash_value);
    transparent_crc(p_1641->g_154.s7, "p_1641->g_154.s7", print_hash_value);
    transparent_crc(p_1641->g_154.s8, "p_1641->g_154.s8", print_hash_value);
    transparent_crc(p_1641->g_154.s9, "p_1641->g_154.s9", print_hash_value);
    transparent_crc(p_1641->g_154.sa, "p_1641->g_154.sa", print_hash_value);
    transparent_crc(p_1641->g_154.sb, "p_1641->g_154.sb", print_hash_value);
    transparent_crc(p_1641->g_154.sc, "p_1641->g_154.sc", print_hash_value);
    transparent_crc(p_1641->g_154.sd, "p_1641->g_154.sd", print_hash_value);
    transparent_crc(p_1641->g_154.se, "p_1641->g_154.se", print_hash_value);
    transparent_crc(p_1641->g_154.sf, "p_1641->g_154.sf", print_hash_value);
    transparent_crc(p_1641->g_158.s0, "p_1641->g_158.s0", print_hash_value);
    transparent_crc(p_1641->g_158.s1, "p_1641->g_158.s1", print_hash_value);
    transparent_crc(p_1641->g_158.s2, "p_1641->g_158.s2", print_hash_value);
    transparent_crc(p_1641->g_158.s3, "p_1641->g_158.s3", print_hash_value);
    transparent_crc(p_1641->g_158.s4, "p_1641->g_158.s4", print_hash_value);
    transparent_crc(p_1641->g_158.s5, "p_1641->g_158.s5", print_hash_value);
    transparent_crc(p_1641->g_158.s6, "p_1641->g_158.s6", print_hash_value);
    transparent_crc(p_1641->g_158.s7, "p_1641->g_158.s7", print_hash_value);
    transparent_crc(p_1641->g_161.x, "p_1641->g_161.x", print_hash_value);
    transparent_crc(p_1641->g_161.y, "p_1641->g_161.y", print_hash_value);
    transparent_crc(p_1641->g_161.z, "p_1641->g_161.z", print_hash_value);
    transparent_crc(p_1641->g_161.w, "p_1641->g_161.w", print_hash_value);
    transparent_crc(p_1641->g_169, "p_1641->g_169", print_hash_value);
    transparent_crc(p_1641->g_191.s0, "p_1641->g_191.s0", print_hash_value);
    transparent_crc(p_1641->g_191.s1, "p_1641->g_191.s1", print_hash_value);
    transparent_crc(p_1641->g_191.s2, "p_1641->g_191.s2", print_hash_value);
    transparent_crc(p_1641->g_191.s3, "p_1641->g_191.s3", print_hash_value);
    transparent_crc(p_1641->g_191.s4, "p_1641->g_191.s4", print_hash_value);
    transparent_crc(p_1641->g_191.s5, "p_1641->g_191.s5", print_hash_value);
    transparent_crc(p_1641->g_191.s6, "p_1641->g_191.s6", print_hash_value);
    transparent_crc(p_1641->g_191.s7, "p_1641->g_191.s7", print_hash_value);
    transparent_crc(p_1641->g_207.f0, "p_1641->g_207.f0", print_hash_value);
    transparent_crc(p_1641->g_236.x, "p_1641->g_236.x", print_hash_value);
    transparent_crc(p_1641->g_236.y, "p_1641->g_236.y", print_hash_value);
    transparent_crc(p_1641->g_256.x, "p_1641->g_256.x", print_hash_value);
    transparent_crc(p_1641->g_256.y, "p_1641->g_256.y", print_hash_value);
    transparent_crc(p_1641->g_257.x, "p_1641->g_257.x", print_hash_value);
    transparent_crc(p_1641->g_257.y, "p_1641->g_257.y", print_hash_value);
    transparent_crc(p_1641->g_258.x, "p_1641->g_258.x", print_hash_value);
    transparent_crc(p_1641->g_258.y, "p_1641->g_258.y", print_hash_value);
    transparent_crc(p_1641->g_259.x, "p_1641->g_259.x", print_hash_value);
    transparent_crc(p_1641->g_259.y, "p_1641->g_259.y", print_hash_value);
    transparent_crc(p_1641->g_264.s0, "p_1641->g_264.s0", print_hash_value);
    transparent_crc(p_1641->g_264.s1, "p_1641->g_264.s1", print_hash_value);
    transparent_crc(p_1641->g_264.s2, "p_1641->g_264.s2", print_hash_value);
    transparent_crc(p_1641->g_264.s3, "p_1641->g_264.s3", print_hash_value);
    transparent_crc(p_1641->g_264.s4, "p_1641->g_264.s4", print_hash_value);
    transparent_crc(p_1641->g_264.s5, "p_1641->g_264.s5", print_hash_value);
    transparent_crc(p_1641->g_264.s6, "p_1641->g_264.s6", print_hash_value);
    transparent_crc(p_1641->g_264.s7, "p_1641->g_264.s7", print_hash_value);
    transparent_crc(p_1641->g_264.s8, "p_1641->g_264.s8", print_hash_value);
    transparent_crc(p_1641->g_264.s9, "p_1641->g_264.s9", print_hash_value);
    transparent_crc(p_1641->g_264.sa, "p_1641->g_264.sa", print_hash_value);
    transparent_crc(p_1641->g_264.sb, "p_1641->g_264.sb", print_hash_value);
    transparent_crc(p_1641->g_264.sc, "p_1641->g_264.sc", print_hash_value);
    transparent_crc(p_1641->g_264.sd, "p_1641->g_264.sd", print_hash_value);
    transparent_crc(p_1641->g_264.se, "p_1641->g_264.se", print_hash_value);
    transparent_crc(p_1641->g_264.sf, "p_1641->g_264.sf", print_hash_value);
    transparent_crc(p_1641->g_287, "p_1641->g_287", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1641->g_301[i], "p_1641->g_301[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1641->g_302[i], "p_1641->g_302[i]", print_hash_value);

    }
    transparent_crc(p_1641->g_331.s0, "p_1641->g_331.s0", print_hash_value);
    transparent_crc(p_1641->g_331.s1, "p_1641->g_331.s1", print_hash_value);
    transparent_crc(p_1641->g_331.s2, "p_1641->g_331.s2", print_hash_value);
    transparent_crc(p_1641->g_331.s3, "p_1641->g_331.s3", print_hash_value);
    transparent_crc(p_1641->g_331.s4, "p_1641->g_331.s4", print_hash_value);
    transparent_crc(p_1641->g_331.s5, "p_1641->g_331.s5", print_hash_value);
    transparent_crc(p_1641->g_331.s6, "p_1641->g_331.s6", print_hash_value);
    transparent_crc(p_1641->g_331.s7, "p_1641->g_331.s7", print_hash_value);
    transparent_crc(p_1641->g_331.s8, "p_1641->g_331.s8", print_hash_value);
    transparent_crc(p_1641->g_331.s9, "p_1641->g_331.s9", print_hash_value);
    transparent_crc(p_1641->g_331.sa, "p_1641->g_331.sa", print_hash_value);
    transparent_crc(p_1641->g_331.sb, "p_1641->g_331.sb", print_hash_value);
    transparent_crc(p_1641->g_331.sc, "p_1641->g_331.sc", print_hash_value);
    transparent_crc(p_1641->g_331.sd, "p_1641->g_331.sd", print_hash_value);
    transparent_crc(p_1641->g_331.se, "p_1641->g_331.se", print_hash_value);
    transparent_crc(p_1641->g_331.sf, "p_1641->g_331.sf", print_hash_value);
    transparent_crc(p_1641->g_351, "p_1641->g_351", print_hash_value);
    transparent_crc(p_1641->g_361, "p_1641->g_361", print_hash_value);
    transparent_crc(p_1641->g_380, "p_1641->g_380", print_hash_value);
    transparent_crc(p_1641->g_452, "p_1641->g_452", print_hash_value);
    transparent_crc(p_1641->g_510, "p_1641->g_510", print_hash_value);
    transparent_crc(p_1641->g_522.s0, "p_1641->g_522.s0", print_hash_value);
    transparent_crc(p_1641->g_522.s1, "p_1641->g_522.s1", print_hash_value);
    transparent_crc(p_1641->g_522.s2, "p_1641->g_522.s2", print_hash_value);
    transparent_crc(p_1641->g_522.s3, "p_1641->g_522.s3", print_hash_value);
    transparent_crc(p_1641->g_522.s4, "p_1641->g_522.s4", print_hash_value);
    transparent_crc(p_1641->g_522.s5, "p_1641->g_522.s5", print_hash_value);
    transparent_crc(p_1641->g_522.s6, "p_1641->g_522.s6", print_hash_value);
    transparent_crc(p_1641->g_522.s7, "p_1641->g_522.s7", print_hash_value);
    transparent_crc(p_1641->g_522.s8, "p_1641->g_522.s8", print_hash_value);
    transparent_crc(p_1641->g_522.s9, "p_1641->g_522.s9", print_hash_value);
    transparent_crc(p_1641->g_522.sa, "p_1641->g_522.sa", print_hash_value);
    transparent_crc(p_1641->g_522.sb, "p_1641->g_522.sb", print_hash_value);
    transparent_crc(p_1641->g_522.sc, "p_1641->g_522.sc", print_hash_value);
    transparent_crc(p_1641->g_522.sd, "p_1641->g_522.sd", print_hash_value);
    transparent_crc(p_1641->g_522.se, "p_1641->g_522.se", print_hash_value);
    transparent_crc(p_1641->g_522.sf, "p_1641->g_522.sf", print_hash_value);
    transparent_crc(p_1641->g_533.x, "p_1641->g_533.x", print_hash_value);
    transparent_crc(p_1641->g_533.y, "p_1641->g_533.y", print_hash_value);
    transparent_crc(p_1641->g_533.z, "p_1641->g_533.z", print_hash_value);
    transparent_crc(p_1641->g_533.w, "p_1641->g_533.w", print_hash_value);
    transparent_crc(p_1641->g_536.x, "p_1641->g_536.x", print_hash_value);
    transparent_crc(p_1641->g_536.y, "p_1641->g_536.y", print_hash_value);
    transparent_crc(p_1641->g_539.s0, "p_1641->g_539.s0", print_hash_value);
    transparent_crc(p_1641->g_539.s1, "p_1641->g_539.s1", print_hash_value);
    transparent_crc(p_1641->g_539.s2, "p_1641->g_539.s2", print_hash_value);
    transparent_crc(p_1641->g_539.s3, "p_1641->g_539.s3", print_hash_value);
    transparent_crc(p_1641->g_539.s4, "p_1641->g_539.s4", print_hash_value);
    transparent_crc(p_1641->g_539.s5, "p_1641->g_539.s5", print_hash_value);
    transparent_crc(p_1641->g_539.s6, "p_1641->g_539.s6", print_hash_value);
    transparent_crc(p_1641->g_539.s7, "p_1641->g_539.s7", print_hash_value);
    transparent_crc(p_1641->g_546.x, "p_1641->g_546.x", print_hash_value);
    transparent_crc(p_1641->g_546.y, "p_1641->g_546.y", print_hash_value);
    transparent_crc(p_1641->g_546.z, "p_1641->g_546.z", print_hash_value);
    transparent_crc(p_1641->g_546.w, "p_1641->g_546.w", print_hash_value);
    transparent_crc(p_1641->g_578.s0, "p_1641->g_578.s0", print_hash_value);
    transparent_crc(p_1641->g_578.s1, "p_1641->g_578.s1", print_hash_value);
    transparent_crc(p_1641->g_578.s2, "p_1641->g_578.s2", print_hash_value);
    transparent_crc(p_1641->g_578.s3, "p_1641->g_578.s3", print_hash_value);
    transparent_crc(p_1641->g_578.s4, "p_1641->g_578.s4", print_hash_value);
    transparent_crc(p_1641->g_578.s5, "p_1641->g_578.s5", print_hash_value);
    transparent_crc(p_1641->g_578.s6, "p_1641->g_578.s6", print_hash_value);
    transparent_crc(p_1641->g_578.s7, "p_1641->g_578.s7", print_hash_value);
    transparent_crc(p_1641->g_588, "p_1641->g_588", print_hash_value);
    transparent_crc(p_1641->g_607.s0, "p_1641->g_607.s0", print_hash_value);
    transparent_crc(p_1641->g_607.s1, "p_1641->g_607.s1", print_hash_value);
    transparent_crc(p_1641->g_607.s2, "p_1641->g_607.s2", print_hash_value);
    transparent_crc(p_1641->g_607.s3, "p_1641->g_607.s3", print_hash_value);
    transparent_crc(p_1641->g_607.s4, "p_1641->g_607.s4", print_hash_value);
    transparent_crc(p_1641->g_607.s5, "p_1641->g_607.s5", print_hash_value);
    transparent_crc(p_1641->g_607.s6, "p_1641->g_607.s6", print_hash_value);
    transparent_crc(p_1641->g_607.s7, "p_1641->g_607.s7", print_hash_value);
    transparent_crc(p_1641->g_620.s0, "p_1641->g_620.s0", print_hash_value);
    transparent_crc(p_1641->g_620.s1, "p_1641->g_620.s1", print_hash_value);
    transparent_crc(p_1641->g_620.s2, "p_1641->g_620.s2", print_hash_value);
    transparent_crc(p_1641->g_620.s3, "p_1641->g_620.s3", print_hash_value);
    transparent_crc(p_1641->g_620.s4, "p_1641->g_620.s4", print_hash_value);
    transparent_crc(p_1641->g_620.s5, "p_1641->g_620.s5", print_hash_value);
    transparent_crc(p_1641->g_620.s6, "p_1641->g_620.s6", print_hash_value);
    transparent_crc(p_1641->g_620.s7, "p_1641->g_620.s7", print_hash_value);
    transparent_crc(p_1641->g_620.s8, "p_1641->g_620.s8", print_hash_value);
    transparent_crc(p_1641->g_620.s9, "p_1641->g_620.s9", print_hash_value);
    transparent_crc(p_1641->g_620.sa, "p_1641->g_620.sa", print_hash_value);
    transparent_crc(p_1641->g_620.sb, "p_1641->g_620.sb", print_hash_value);
    transparent_crc(p_1641->g_620.sc, "p_1641->g_620.sc", print_hash_value);
    transparent_crc(p_1641->g_620.sd, "p_1641->g_620.sd", print_hash_value);
    transparent_crc(p_1641->g_620.se, "p_1641->g_620.se", print_hash_value);
    transparent_crc(p_1641->g_620.sf, "p_1641->g_620.sf", print_hash_value);
    transparent_crc(p_1641->g_632.s0, "p_1641->g_632.s0", print_hash_value);
    transparent_crc(p_1641->g_632.s1, "p_1641->g_632.s1", print_hash_value);
    transparent_crc(p_1641->g_632.s2, "p_1641->g_632.s2", print_hash_value);
    transparent_crc(p_1641->g_632.s3, "p_1641->g_632.s3", print_hash_value);
    transparent_crc(p_1641->g_632.s4, "p_1641->g_632.s4", print_hash_value);
    transparent_crc(p_1641->g_632.s5, "p_1641->g_632.s5", print_hash_value);
    transparent_crc(p_1641->g_632.s6, "p_1641->g_632.s6", print_hash_value);
    transparent_crc(p_1641->g_632.s7, "p_1641->g_632.s7", print_hash_value);
    transparent_crc(p_1641->g_646.x, "p_1641->g_646.x", print_hash_value);
    transparent_crc(p_1641->g_646.y, "p_1641->g_646.y", print_hash_value);
    transparent_crc(p_1641->g_677.x, "p_1641->g_677.x", print_hash_value);
    transparent_crc(p_1641->g_677.y, "p_1641->g_677.y", print_hash_value);
    transparent_crc(p_1641->g_680.s0, "p_1641->g_680.s0", print_hash_value);
    transparent_crc(p_1641->g_680.s1, "p_1641->g_680.s1", print_hash_value);
    transparent_crc(p_1641->g_680.s2, "p_1641->g_680.s2", print_hash_value);
    transparent_crc(p_1641->g_680.s3, "p_1641->g_680.s3", print_hash_value);
    transparent_crc(p_1641->g_680.s4, "p_1641->g_680.s4", print_hash_value);
    transparent_crc(p_1641->g_680.s5, "p_1641->g_680.s5", print_hash_value);
    transparent_crc(p_1641->g_680.s6, "p_1641->g_680.s6", print_hash_value);
    transparent_crc(p_1641->g_680.s7, "p_1641->g_680.s7", print_hash_value);
    transparent_crc(p_1641->g_680.s8, "p_1641->g_680.s8", print_hash_value);
    transparent_crc(p_1641->g_680.s9, "p_1641->g_680.s9", print_hash_value);
    transparent_crc(p_1641->g_680.sa, "p_1641->g_680.sa", print_hash_value);
    transparent_crc(p_1641->g_680.sb, "p_1641->g_680.sb", print_hash_value);
    transparent_crc(p_1641->g_680.sc, "p_1641->g_680.sc", print_hash_value);
    transparent_crc(p_1641->g_680.sd, "p_1641->g_680.sd", print_hash_value);
    transparent_crc(p_1641->g_680.se, "p_1641->g_680.se", print_hash_value);
    transparent_crc(p_1641->g_680.sf, "p_1641->g_680.sf", print_hash_value);
    transparent_crc(p_1641->g_682.s0, "p_1641->g_682.s0", print_hash_value);
    transparent_crc(p_1641->g_682.s1, "p_1641->g_682.s1", print_hash_value);
    transparent_crc(p_1641->g_682.s2, "p_1641->g_682.s2", print_hash_value);
    transparent_crc(p_1641->g_682.s3, "p_1641->g_682.s3", print_hash_value);
    transparent_crc(p_1641->g_682.s4, "p_1641->g_682.s4", print_hash_value);
    transparent_crc(p_1641->g_682.s5, "p_1641->g_682.s5", print_hash_value);
    transparent_crc(p_1641->g_682.s6, "p_1641->g_682.s6", print_hash_value);
    transparent_crc(p_1641->g_682.s7, "p_1641->g_682.s7", print_hash_value);
    transparent_crc(p_1641->g_682.s8, "p_1641->g_682.s8", print_hash_value);
    transparent_crc(p_1641->g_682.s9, "p_1641->g_682.s9", print_hash_value);
    transparent_crc(p_1641->g_682.sa, "p_1641->g_682.sa", print_hash_value);
    transparent_crc(p_1641->g_682.sb, "p_1641->g_682.sb", print_hash_value);
    transparent_crc(p_1641->g_682.sc, "p_1641->g_682.sc", print_hash_value);
    transparent_crc(p_1641->g_682.sd, "p_1641->g_682.sd", print_hash_value);
    transparent_crc(p_1641->g_682.se, "p_1641->g_682.se", print_hash_value);
    transparent_crc(p_1641->g_682.sf, "p_1641->g_682.sf", print_hash_value);
    transparent_crc(p_1641->g_699.s0, "p_1641->g_699.s0", print_hash_value);
    transparent_crc(p_1641->g_699.s1, "p_1641->g_699.s1", print_hash_value);
    transparent_crc(p_1641->g_699.s2, "p_1641->g_699.s2", print_hash_value);
    transparent_crc(p_1641->g_699.s3, "p_1641->g_699.s3", print_hash_value);
    transparent_crc(p_1641->g_699.s4, "p_1641->g_699.s4", print_hash_value);
    transparent_crc(p_1641->g_699.s5, "p_1641->g_699.s5", print_hash_value);
    transparent_crc(p_1641->g_699.s6, "p_1641->g_699.s6", print_hash_value);
    transparent_crc(p_1641->g_699.s7, "p_1641->g_699.s7", print_hash_value);
    transparent_crc(p_1641->g_699.s8, "p_1641->g_699.s8", print_hash_value);
    transparent_crc(p_1641->g_699.s9, "p_1641->g_699.s9", print_hash_value);
    transparent_crc(p_1641->g_699.sa, "p_1641->g_699.sa", print_hash_value);
    transparent_crc(p_1641->g_699.sb, "p_1641->g_699.sb", print_hash_value);
    transparent_crc(p_1641->g_699.sc, "p_1641->g_699.sc", print_hash_value);
    transparent_crc(p_1641->g_699.sd, "p_1641->g_699.sd", print_hash_value);
    transparent_crc(p_1641->g_699.se, "p_1641->g_699.se", print_hash_value);
    transparent_crc(p_1641->g_699.sf, "p_1641->g_699.sf", print_hash_value);
    transparent_crc(p_1641->g_700.s0, "p_1641->g_700.s0", print_hash_value);
    transparent_crc(p_1641->g_700.s1, "p_1641->g_700.s1", print_hash_value);
    transparent_crc(p_1641->g_700.s2, "p_1641->g_700.s2", print_hash_value);
    transparent_crc(p_1641->g_700.s3, "p_1641->g_700.s3", print_hash_value);
    transparent_crc(p_1641->g_700.s4, "p_1641->g_700.s4", print_hash_value);
    transparent_crc(p_1641->g_700.s5, "p_1641->g_700.s5", print_hash_value);
    transparent_crc(p_1641->g_700.s6, "p_1641->g_700.s6", print_hash_value);
    transparent_crc(p_1641->g_700.s7, "p_1641->g_700.s7", print_hash_value);
    transparent_crc(p_1641->g_700.s8, "p_1641->g_700.s8", print_hash_value);
    transparent_crc(p_1641->g_700.s9, "p_1641->g_700.s9", print_hash_value);
    transparent_crc(p_1641->g_700.sa, "p_1641->g_700.sa", print_hash_value);
    transparent_crc(p_1641->g_700.sb, "p_1641->g_700.sb", print_hash_value);
    transparent_crc(p_1641->g_700.sc, "p_1641->g_700.sc", print_hash_value);
    transparent_crc(p_1641->g_700.sd, "p_1641->g_700.sd", print_hash_value);
    transparent_crc(p_1641->g_700.se, "p_1641->g_700.se", print_hash_value);
    transparent_crc(p_1641->g_700.sf, "p_1641->g_700.sf", print_hash_value);
    transparent_crc(p_1641->g_715.x, "p_1641->g_715.x", print_hash_value);
    transparent_crc(p_1641->g_715.y, "p_1641->g_715.y", print_hash_value);
    transparent_crc(p_1641->g_715.z, "p_1641->g_715.z", print_hash_value);
    transparent_crc(p_1641->g_715.w, "p_1641->g_715.w", print_hash_value);
    transparent_crc(p_1641->g_738.s0, "p_1641->g_738.s0", print_hash_value);
    transparent_crc(p_1641->g_738.s1, "p_1641->g_738.s1", print_hash_value);
    transparent_crc(p_1641->g_738.s2, "p_1641->g_738.s2", print_hash_value);
    transparent_crc(p_1641->g_738.s3, "p_1641->g_738.s3", print_hash_value);
    transparent_crc(p_1641->g_738.s4, "p_1641->g_738.s4", print_hash_value);
    transparent_crc(p_1641->g_738.s5, "p_1641->g_738.s5", print_hash_value);
    transparent_crc(p_1641->g_738.s6, "p_1641->g_738.s6", print_hash_value);
    transparent_crc(p_1641->g_738.s7, "p_1641->g_738.s7", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1641->g_748[i][j], "p_1641->g_748[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1641->g_776.x, "p_1641->g_776.x", print_hash_value);
    transparent_crc(p_1641->g_776.y, "p_1641->g_776.y", print_hash_value);
    transparent_crc(p_1641->g_778.s0, "p_1641->g_778.s0", print_hash_value);
    transparent_crc(p_1641->g_778.s1, "p_1641->g_778.s1", print_hash_value);
    transparent_crc(p_1641->g_778.s2, "p_1641->g_778.s2", print_hash_value);
    transparent_crc(p_1641->g_778.s3, "p_1641->g_778.s3", print_hash_value);
    transparent_crc(p_1641->g_778.s4, "p_1641->g_778.s4", print_hash_value);
    transparent_crc(p_1641->g_778.s5, "p_1641->g_778.s5", print_hash_value);
    transparent_crc(p_1641->g_778.s6, "p_1641->g_778.s6", print_hash_value);
    transparent_crc(p_1641->g_778.s7, "p_1641->g_778.s7", print_hash_value);
    transparent_crc(p_1641->g_778.s8, "p_1641->g_778.s8", print_hash_value);
    transparent_crc(p_1641->g_778.s9, "p_1641->g_778.s9", print_hash_value);
    transparent_crc(p_1641->g_778.sa, "p_1641->g_778.sa", print_hash_value);
    transparent_crc(p_1641->g_778.sb, "p_1641->g_778.sb", print_hash_value);
    transparent_crc(p_1641->g_778.sc, "p_1641->g_778.sc", print_hash_value);
    transparent_crc(p_1641->g_778.sd, "p_1641->g_778.sd", print_hash_value);
    transparent_crc(p_1641->g_778.se, "p_1641->g_778.se", print_hash_value);
    transparent_crc(p_1641->g_778.sf, "p_1641->g_778.sf", print_hash_value);
    transparent_crc(p_1641->g_779.x, "p_1641->g_779.x", print_hash_value);
    transparent_crc(p_1641->g_779.y, "p_1641->g_779.y", print_hash_value);
    transparent_crc(p_1641->g_779.z, "p_1641->g_779.z", print_hash_value);
    transparent_crc(p_1641->g_779.w, "p_1641->g_779.w", print_hash_value);
    transparent_crc(p_1641->g_781.s0, "p_1641->g_781.s0", print_hash_value);
    transparent_crc(p_1641->g_781.s1, "p_1641->g_781.s1", print_hash_value);
    transparent_crc(p_1641->g_781.s2, "p_1641->g_781.s2", print_hash_value);
    transparent_crc(p_1641->g_781.s3, "p_1641->g_781.s3", print_hash_value);
    transparent_crc(p_1641->g_781.s4, "p_1641->g_781.s4", print_hash_value);
    transparent_crc(p_1641->g_781.s5, "p_1641->g_781.s5", print_hash_value);
    transparent_crc(p_1641->g_781.s6, "p_1641->g_781.s6", print_hash_value);
    transparent_crc(p_1641->g_781.s7, "p_1641->g_781.s7", print_hash_value);
    transparent_crc(p_1641->g_781.s8, "p_1641->g_781.s8", print_hash_value);
    transparent_crc(p_1641->g_781.s9, "p_1641->g_781.s9", print_hash_value);
    transparent_crc(p_1641->g_781.sa, "p_1641->g_781.sa", print_hash_value);
    transparent_crc(p_1641->g_781.sb, "p_1641->g_781.sb", print_hash_value);
    transparent_crc(p_1641->g_781.sc, "p_1641->g_781.sc", print_hash_value);
    transparent_crc(p_1641->g_781.sd, "p_1641->g_781.sd", print_hash_value);
    transparent_crc(p_1641->g_781.se, "p_1641->g_781.se", print_hash_value);
    transparent_crc(p_1641->g_781.sf, "p_1641->g_781.sf", print_hash_value);
    transparent_crc(p_1641->g_783.s0, "p_1641->g_783.s0", print_hash_value);
    transparent_crc(p_1641->g_783.s1, "p_1641->g_783.s1", print_hash_value);
    transparent_crc(p_1641->g_783.s2, "p_1641->g_783.s2", print_hash_value);
    transparent_crc(p_1641->g_783.s3, "p_1641->g_783.s3", print_hash_value);
    transparent_crc(p_1641->g_783.s4, "p_1641->g_783.s4", print_hash_value);
    transparent_crc(p_1641->g_783.s5, "p_1641->g_783.s5", print_hash_value);
    transparent_crc(p_1641->g_783.s6, "p_1641->g_783.s6", print_hash_value);
    transparent_crc(p_1641->g_783.s7, "p_1641->g_783.s7", print_hash_value);
    transparent_crc(p_1641->g_783.s8, "p_1641->g_783.s8", print_hash_value);
    transparent_crc(p_1641->g_783.s9, "p_1641->g_783.s9", print_hash_value);
    transparent_crc(p_1641->g_783.sa, "p_1641->g_783.sa", print_hash_value);
    transparent_crc(p_1641->g_783.sb, "p_1641->g_783.sb", print_hash_value);
    transparent_crc(p_1641->g_783.sc, "p_1641->g_783.sc", print_hash_value);
    transparent_crc(p_1641->g_783.sd, "p_1641->g_783.sd", print_hash_value);
    transparent_crc(p_1641->g_783.se, "p_1641->g_783.se", print_hash_value);
    transparent_crc(p_1641->g_783.sf, "p_1641->g_783.sf", print_hash_value);
    transparent_crc(p_1641->g_823.f0, "p_1641->g_823.f0", print_hash_value);
    transparent_crc(p_1641->g_841.x, "p_1641->g_841.x", print_hash_value);
    transparent_crc(p_1641->g_841.y, "p_1641->g_841.y", print_hash_value);
    transparent_crc(p_1641->g_882.x, "p_1641->g_882.x", print_hash_value);
    transparent_crc(p_1641->g_882.y, "p_1641->g_882.y", print_hash_value);
    transparent_crc(p_1641->g_924.x, "p_1641->g_924.x", print_hash_value);
    transparent_crc(p_1641->g_924.y, "p_1641->g_924.y", print_hash_value);
    transparent_crc(p_1641->g_924.z, "p_1641->g_924.z", print_hash_value);
    transparent_crc(p_1641->g_924.w, "p_1641->g_924.w", print_hash_value);
    transparent_crc(p_1641->g_926.s0, "p_1641->g_926.s0", print_hash_value);
    transparent_crc(p_1641->g_926.s1, "p_1641->g_926.s1", print_hash_value);
    transparent_crc(p_1641->g_926.s2, "p_1641->g_926.s2", print_hash_value);
    transparent_crc(p_1641->g_926.s3, "p_1641->g_926.s3", print_hash_value);
    transparent_crc(p_1641->g_926.s4, "p_1641->g_926.s4", print_hash_value);
    transparent_crc(p_1641->g_926.s5, "p_1641->g_926.s5", print_hash_value);
    transparent_crc(p_1641->g_926.s6, "p_1641->g_926.s6", print_hash_value);
    transparent_crc(p_1641->g_926.s7, "p_1641->g_926.s7", print_hash_value);
    transparent_crc(p_1641->g_926.s8, "p_1641->g_926.s8", print_hash_value);
    transparent_crc(p_1641->g_926.s9, "p_1641->g_926.s9", print_hash_value);
    transparent_crc(p_1641->g_926.sa, "p_1641->g_926.sa", print_hash_value);
    transparent_crc(p_1641->g_926.sb, "p_1641->g_926.sb", print_hash_value);
    transparent_crc(p_1641->g_926.sc, "p_1641->g_926.sc", print_hash_value);
    transparent_crc(p_1641->g_926.sd, "p_1641->g_926.sd", print_hash_value);
    transparent_crc(p_1641->g_926.se, "p_1641->g_926.se", print_hash_value);
    transparent_crc(p_1641->g_926.sf, "p_1641->g_926.sf", print_hash_value);
    transparent_crc(p_1641->g_932.s0, "p_1641->g_932.s0", print_hash_value);
    transparent_crc(p_1641->g_932.s1, "p_1641->g_932.s1", print_hash_value);
    transparent_crc(p_1641->g_932.s2, "p_1641->g_932.s2", print_hash_value);
    transparent_crc(p_1641->g_932.s3, "p_1641->g_932.s3", print_hash_value);
    transparent_crc(p_1641->g_932.s4, "p_1641->g_932.s4", print_hash_value);
    transparent_crc(p_1641->g_932.s5, "p_1641->g_932.s5", print_hash_value);
    transparent_crc(p_1641->g_932.s6, "p_1641->g_932.s6", print_hash_value);
    transparent_crc(p_1641->g_932.s7, "p_1641->g_932.s7", print_hash_value);
    transparent_crc(p_1641->g_935.s0, "p_1641->g_935.s0", print_hash_value);
    transparent_crc(p_1641->g_935.s1, "p_1641->g_935.s1", print_hash_value);
    transparent_crc(p_1641->g_935.s2, "p_1641->g_935.s2", print_hash_value);
    transparent_crc(p_1641->g_935.s3, "p_1641->g_935.s3", print_hash_value);
    transparent_crc(p_1641->g_935.s4, "p_1641->g_935.s4", print_hash_value);
    transparent_crc(p_1641->g_935.s5, "p_1641->g_935.s5", print_hash_value);
    transparent_crc(p_1641->g_935.s6, "p_1641->g_935.s6", print_hash_value);
    transparent_crc(p_1641->g_935.s7, "p_1641->g_935.s7", print_hash_value);
    transparent_crc(p_1641->g_935.s8, "p_1641->g_935.s8", print_hash_value);
    transparent_crc(p_1641->g_935.s9, "p_1641->g_935.s9", print_hash_value);
    transparent_crc(p_1641->g_935.sa, "p_1641->g_935.sa", print_hash_value);
    transparent_crc(p_1641->g_935.sb, "p_1641->g_935.sb", print_hash_value);
    transparent_crc(p_1641->g_935.sc, "p_1641->g_935.sc", print_hash_value);
    transparent_crc(p_1641->g_935.sd, "p_1641->g_935.sd", print_hash_value);
    transparent_crc(p_1641->g_935.se, "p_1641->g_935.se", print_hash_value);
    transparent_crc(p_1641->g_935.sf, "p_1641->g_935.sf", print_hash_value);
    transparent_crc(p_1641->g_1011.f0, "p_1641->g_1011.f0", print_hash_value);
    transparent_crc(p_1641->g_1012.f0, "p_1641->g_1012.f0", print_hash_value);
    transparent_crc(p_1641->g_1034.s0, "p_1641->g_1034.s0", print_hash_value);
    transparent_crc(p_1641->g_1034.s1, "p_1641->g_1034.s1", print_hash_value);
    transparent_crc(p_1641->g_1034.s2, "p_1641->g_1034.s2", print_hash_value);
    transparent_crc(p_1641->g_1034.s3, "p_1641->g_1034.s3", print_hash_value);
    transparent_crc(p_1641->g_1034.s4, "p_1641->g_1034.s4", print_hash_value);
    transparent_crc(p_1641->g_1034.s5, "p_1641->g_1034.s5", print_hash_value);
    transparent_crc(p_1641->g_1034.s6, "p_1641->g_1034.s6", print_hash_value);
    transparent_crc(p_1641->g_1034.s7, "p_1641->g_1034.s7", print_hash_value);
    transparent_crc(p_1641->g_1039.x, "p_1641->g_1039.x", print_hash_value);
    transparent_crc(p_1641->g_1039.y, "p_1641->g_1039.y", print_hash_value);
    transparent_crc(p_1641->g_1039.z, "p_1641->g_1039.z", print_hash_value);
    transparent_crc(p_1641->g_1039.w, "p_1641->g_1039.w", print_hash_value);
    transparent_crc(p_1641->g_1125.x, "p_1641->g_1125.x", print_hash_value);
    transparent_crc(p_1641->g_1125.y, "p_1641->g_1125.y", print_hash_value);
    transparent_crc(p_1641->g_1128.s0, "p_1641->g_1128.s0", print_hash_value);
    transparent_crc(p_1641->g_1128.s1, "p_1641->g_1128.s1", print_hash_value);
    transparent_crc(p_1641->g_1128.s2, "p_1641->g_1128.s2", print_hash_value);
    transparent_crc(p_1641->g_1128.s3, "p_1641->g_1128.s3", print_hash_value);
    transparent_crc(p_1641->g_1128.s4, "p_1641->g_1128.s4", print_hash_value);
    transparent_crc(p_1641->g_1128.s5, "p_1641->g_1128.s5", print_hash_value);
    transparent_crc(p_1641->g_1128.s6, "p_1641->g_1128.s6", print_hash_value);
    transparent_crc(p_1641->g_1128.s7, "p_1641->g_1128.s7", print_hash_value);
    transparent_crc(p_1641->g_1128.s8, "p_1641->g_1128.s8", print_hash_value);
    transparent_crc(p_1641->g_1128.s9, "p_1641->g_1128.s9", print_hash_value);
    transparent_crc(p_1641->g_1128.sa, "p_1641->g_1128.sa", print_hash_value);
    transparent_crc(p_1641->g_1128.sb, "p_1641->g_1128.sb", print_hash_value);
    transparent_crc(p_1641->g_1128.sc, "p_1641->g_1128.sc", print_hash_value);
    transparent_crc(p_1641->g_1128.sd, "p_1641->g_1128.sd", print_hash_value);
    transparent_crc(p_1641->g_1128.se, "p_1641->g_1128.se", print_hash_value);
    transparent_crc(p_1641->g_1128.sf, "p_1641->g_1128.sf", print_hash_value);
    transparent_crc(p_1641->g_1131.x, "p_1641->g_1131.x", print_hash_value);
    transparent_crc(p_1641->g_1131.y, "p_1641->g_1131.y", print_hash_value);
    transparent_crc(p_1641->g_1175.s0, "p_1641->g_1175.s0", print_hash_value);
    transparent_crc(p_1641->g_1175.s1, "p_1641->g_1175.s1", print_hash_value);
    transparent_crc(p_1641->g_1175.s2, "p_1641->g_1175.s2", print_hash_value);
    transparent_crc(p_1641->g_1175.s3, "p_1641->g_1175.s3", print_hash_value);
    transparent_crc(p_1641->g_1175.s4, "p_1641->g_1175.s4", print_hash_value);
    transparent_crc(p_1641->g_1175.s5, "p_1641->g_1175.s5", print_hash_value);
    transparent_crc(p_1641->g_1175.s6, "p_1641->g_1175.s6", print_hash_value);
    transparent_crc(p_1641->g_1175.s7, "p_1641->g_1175.s7", print_hash_value);
    transparent_crc(p_1641->g_1180.s0, "p_1641->g_1180.s0", print_hash_value);
    transparent_crc(p_1641->g_1180.s1, "p_1641->g_1180.s1", print_hash_value);
    transparent_crc(p_1641->g_1180.s2, "p_1641->g_1180.s2", print_hash_value);
    transparent_crc(p_1641->g_1180.s3, "p_1641->g_1180.s3", print_hash_value);
    transparent_crc(p_1641->g_1180.s4, "p_1641->g_1180.s4", print_hash_value);
    transparent_crc(p_1641->g_1180.s5, "p_1641->g_1180.s5", print_hash_value);
    transparent_crc(p_1641->g_1180.s6, "p_1641->g_1180.s6", print_hash_value);
    transparent_crc(p_1641->g_1180.s7, "p_1641->g_1180.s7", print_hash_value);
    transparent_crc(p_1641->g_1180.s8, "p_1641->g_1180.s8", print_hash_value);
    transparent_crc(p_1641->g_1180.s9, "p_1641->g_1180.s9", print_hash_value);
    transparent_crc(p_1641->g_1180.sa, "p_1641->g_1180.sa", print_hash_value);
    transparent_crc(p_1641->g_1180.sb, "p_1641->g_1180.sb", print_hash_value);
    transparent_crc(p_1641->g_1180.sc, "p_1641->g_1180.sc", print_hash_value);
    transparent_crc(p_1641->g_1180.sd, "p_1641->g_1180.sd", print_hash_value);
    transparent_crc(p_1641->g_1180.se, "p_1641->g_1180.se", print_hash_value);
    transparent_crc(p_1641->g_1180.sf, "p_1641->g_1180.sf", print_hash_value);
    transparent_crc(p_1641->g_1204, "p_1641->g_1204", print_hash_value);
    transparent_crc(p_1641->g_1208, "p_1641->g_1208", print_hash_value);
    transparent_crc(p_1641->g_1213.s0, "p_1641->g_1213.s0", print_hash_value);
    transparent_crc(p_1641->g_1213.s1, "p_1641->g_1213.s1", print_hash_value);
    transparent_crc(p_1641->g_1213.s2, "p_1641->g_1213.s2", print_hash_value);
    transparent_crc(p_1641->g_1213.s3, "p_1641->g_1213.s3", print_hash_value);
    transparent_crc(p_1641->g_1213.s4, "p_1641->g_1213.s4", print_hash_value);
    transparent_crc(p_1641->g_1213.s5, "p_1641->g_1213.s5", print_hash_value);
    transparent_crc(p_1641->g_1213.s6, "p_1641->g_1213.s6", print_hash_value);
    transparent_crc(p_1641->g_1213.s7, "p_1641->g_1213.s7", print_hash_value);
    transparent_crc(p_1641->g_1214.x, "p_1641->g_1214.x", print_hash_value);
    transparent_crc(p_1641->g_1214.y, "p_1641->g_1214.y", print_hash_value);
    transparent_crc(p_1641->g_1215.x, "p_1641->g_1215.x", print_hash_value);
    transparent_crc(p_1641->g_1215.y, "p_1641->g_1215.y", print_hash_value);
    transparent_crc(p_1641->g_1228.s0, "p_1641->g_1228.s0", print_hash_value);
    transparent_crc(p_1641->g_1228.s1, "p_1641->g_1228.s1", print_hash_value);
    transparent_crc(p_1641->g_1228.s2, "p_1641->g_1228.s2", print_hash_value);
    transparent_crc(p_1641->g_1228.s3, "p_1641->g_1228.s3", print_hash_value);
    transparent_crc(p_1641->g_1228.s4, "p_1641->g_1228.s4", print_hash_value);
    transparent_crc(p_1641->g_1228.s5, "p_1641->g_1228.s5", print_hash_value);
    transparent_crc(p_1641->g_1228.s6, "p_1641->g_1228.s6", print_hash_value);
    transparent_crc(p_1641->g_1228.s7, "p_1641->g_1228.s7", print_hash_value);
    transparent_crc(p_1641->g_1231.s0, "p_1641->g_1231.s0", print_hash_value);
    transparent_crc(p_1641->g_1231.s1, "p_1641->g_1231.s1", print_hash_value);
    transparent_crc(p_1641->g_1231.s2, "p_1641->g_1231.s2", print_hash_value);
    transparent_crc(p_1641->g_1231.s3, "p_1641->g_1231.s3", print_hash_value);
    transparent_crc(p_1641->g_1231.s4, "p_1641->g_1231.s4", print_hash_value);
    transparent_crc(p_1641->g_1231.s5, "p_1641->g_1231.s5", print_hash_value);
    transparent_crc(p_1641->g_1231.s6, "p_1641->g_1231.s6", print_hash_value);
    transparent_crc(p_1641->g_1231.s7, "p_1641->g_1231.s7", print_hash_value);
    transparent_crc(p_1641->g_1231.s8, "p_1641->g_1231.s8", print_hash_value);
    transparent_crc(p_1641->g_1231.s9, "p_1641->g_1231.s9", print_hash_value);
    transparent_crc(p_1641->g_1231.sa, "p_1641->g_1231.sa", print_hash_value);
    transparent_crc(p_1641->g_1231.sb, "p_1641->g_1231.sb", print_hash_value);
    transparent_crc(p_1641->g_1231.sc, "p_1641->g_1231.sc", print_hash_value);
    transparent_crc(p_1641->g_1231.sd, "p_1641->g_1231.sd", print_hash_value);
    transparent_crc(p_1641->g_1231.se, "p_1641->g_1231.se", print_hash_value);
    transparent_crc(p_1641->g_1231.sf, "p_1641->g_1231.sf", print_hash_value);
    transparent_crc(p_1641->g_1237.s0, "p_1641->g_1237.s0", print_hash_value);
    transparent_crc(p_1641->g_1237.s1, "p_1641->g_1237.s1", print_hash_value);
    transparent_crc(p_1641->g_1237.s2, "p_1641->g_1237.s2", print_hash_value);
    transparent_crc(p_1641->g_1237.s3, "p_1641->g_1237.s3", print_hash_value);
    transparent_crc(p_1641->g_1237.s4, "p_1641->g_1237.s4", print_hash_value);
    transparent_crc(p_1641->g_1237.s5, "p_1641->g_1237.s5", print_hash_value);
    transparent_crc(p_1641->g_1237.s6, "p_1641->g_1237.s6", print_hash_value);
    transparent_crc(p_1641->g_1237.s7, "p_1641->g_1237.s7", print_hash_value);
    transparent_crc(p_1641->g_1237.s8, "p_1641->g_1237.s8", print_hash_value);
    transparent_crc(p_1641->g_1237.s9, "p_1641->g_1237.s9", print_hash_value);
    transparent_crc(p_1641->g_1237.sa, "p_1641->g_1237.sa", print_hash_value);
    transparent_crc(p_1641->g_1237.sb, "p_1641->g_1237.sb", print_hash_value);
    transparent_crc(p_1641->g_1237.sc, "p_1641->g_1237.sc", print_hash_value);
    transparent_crc(p_1641->g_1237.sd, "p_1641->g_1237.sd", print_hash_value);
    transparent_crc(p_1641->g_1237.se, "p_1641->g_1237.se", print_hash_value);
    transparent_crc(p_1641->g_1237.sf, "p_1641->g_1237.sf", print_hash_value);
    transparent_crc(p_1641->g_1253.x, "p_1641->g_1253.x", print_hash_value);
    transparent_crc(p_1641->g_1253.y, "p_1641->g_1253.y", print_hash_value);
    transparent_crc(p_1641->g_1253.z, "p_1641->g_1253.z", print_hash_value);
    transparent_crc(p_1641->g_1253.w, "p_1641->g_1253.w", print_hash_value);
    transparent_crc(p_1641->g_1258.x, "p_1641->g_1258.x", print_hash_value);
    transparent_crc(p_1641->g_1258.y, "p_1641->g_1258.y", print_hash_value);
    transparent_crc(p_1641->g_1259.s0, "p_1641->g_1259.s0", print_hash_value);
    transparent_crc(p_1641->g_1259.s1, "p_1641->g_1259.s1", print_hash_value);
    transparent_crc(p_1641->g_1259.s2, "p_1641->g_1259.s2", print_hash_value);
    transparent_crc(p_1641->g_1259.s3, "p_1641->g_1259.s3", print_hash_value);
    transparent_crc(p_1641->g_1259.s4, "p_1641->g_1259.s4", print_hash_value);
    transparent_crc(p_1641->g_1259.s5, "p_1641->g_1259.s5", print_hash_value);
    transparent_crc(p_1641->g_1259.s6, "p_1641->g_1259.s6", print_hash_value);
    transparent_crc(p_1641->g_1259.s7, "p_1641->g_1259.s7", print_hash_value);
    transparent_crc(p_1641->g_1259.s8, "p_1641->g_1259.s8", print_hash_value);
    transparent_crc(p_1641->g_1259.s9, "p_1641->g_1259.s9", print_hash_value);
    transparent_crc(p_1641->g_1259.sa, "p_1641->g_1259.sa", print_hash_value);
    transparent_crc(p_1641->g_1259.sb, "p_1641->g_1259.sb", print_hash_value);
    transparent_crc(p_1641->g_1259.sc, "p_1641->g_1259.sc", print_hash_value);
    transparent_crc(p_1641->g_1259.sd, "p_1641->g_1259.sd", print_hash_value);
    transparent_crc(p_1641->g_1259.se, "p_1641->g_1259.se", print_hash_value);
    transparent_crc(p_1641->g_1259.sf, "p_1641->g_1259.sf", print_hash_value);
    transparent_crc(p_1641->g_1292, "p_1641->g_1292", print_hash_value);
    transparent_crc(p_1641->g_1311.x, "p_1641->g_1311.x", print_hash_value);
    transparent_crc(p_1641->g_1311.y, "p_1641->g_1311.y", print_hash_value);
    transparent_crc(p_1641->g_1314.x, "p_1641->g_1314.x", print_hash_value);
    transparent_crc(p_1641->g_1314.y, "p_1641->g_1314.y", print_hash_value);
    transparent_crc(p_1641->g_1314.z, "p_1641->g_1314.z", print_hash_value);
    transparent_crc(p_1641->g_1314.w, "p_1641->g_1314.w", print_hash_value);
    transparent_crc(p_1641->g_1317.s0, "p_1641->g_1317.s0", print_hash_value);
    transparent_crc(p_1641->g_1317.s1, "p_1641->g_1317.s1", print_hash_value);
    transparent_crc(p_1641->g_1317.s2, "p_1641->g_1317.s2", print_hash_value);
    transparent_crc(p_1641->g_1317.s3, "p_1641->g_1317.s3", print_hash_value);
    transparent_crc(p_1641->g_1317.s4, "p_1641->g_1317.s4", print_hash_value);
    transparent_crc(p_1641->g_1317.s5, "p_1641->g_1317.s5", print_hash_value);
    transparent_crc(p_1641->g_1317.s6, "p_1641->g_1317.s6", print_hash_value);
    transparent_crc(p_1641->g_1317.s7, "p_1641->g_1317.s7", print_hash_value);
    transparent_crc(p_1641->g_1317.s8, "p_1641->g_1317.s8", print_hash_value);
    transparent_crc(p_1641->g_1317.s9, "p_1641->g_1317.s9", print_hash_value);
    transparent_crc(p_1641->g_1317.sa, "p_1641->g_1317.sa", print_hash_value);
    transparent_crc(p_1641->g_1317.sb, "p_1641->g_1317.sb", print_hash_value);
    transparent_crc(p_1641->g_1317.sc, "p_1641->g_1317.sc", print_hash_value);
    transparent_crc(p_1641->g_1317.sd, "p_1641->g_1317.sd", print_hash_value);
    transparent_crc(p_1641->g_1317.se, "p_1641->g_1317.se", print_hash_value);
    transparent_crc(p_1641->g_1317.sf, "p_1641->g_1317.sf", print_hash_value);
    transparent_crc(p_1641->g_1320.x, "p_1641->g_1320.x", print_hash_value);
    transparent_crc(p_1641->g_1320.y, "p_1641->g_1320.y", print_hash_value);
    transparent_crc(p_1641->g_1339.s0, "p_1641->g_1339.s0", print_hash_value);
    transparent_crc(p_1641->g_1339.s1, "p_1641->g_1339.s1", print_hash_value);
    transparent_crc(p_1641->g_1339.s2, "p_1641->g_1339.s2", print_hash_value);
    transparent_crc(p_1641->g_1339.s3, "p_1641->g_1339.s3", print_hash_value);
    transparent_crc(p_1641->g_1339.s4, "p_1641->g_1339.s4", print_hash_value);
    transparent_crc(p_1641->g_1339.s5, "p_1641->g_1339.s5", print_hash_value);
    transparent_crc(p_1641->g_1339.s6, "p_1641->g_1339.s6", print_hash_value);
    transparent_crc(p_1641->g_1339.s7, "p_1641->g_1339.s7", print_hash_value);
    transparent_crc(p_1641->g_1339.s8, "p_1641->g_1339.s8", print_hash_value);
    transparent_crc(p_1641->g_1339.s9, "p_1641->g_1339.s9", print_hash_value);
    transparent_crc(p_1641->g_1339.sa, "p_1641->g_1339.sa", print_hash_value);
    transparent_crc(p_1641->g_1339.sb, "p_1641->g_1339.sb", print_hash_value);
    transparent_crc(p_1641->g_1339.sc, "p_1641->g_1339.sc", print_hash_value);
    transparent_crc(p_1641->g_1339.sd, "p_1641->g_1339.sd", print_hash_value);
    transparent_crc(p_1641->g_1339.se, "p_1641->g_1339.se", print_hash_value);
    transparent_crc(p_1641->g_1339.sf, "p_1641->g_1339.sf", print_hash_value);
    transparent_crc(p_1641->g_1364.x, "p_1641->g_1364.x", print_hash_value);
    transparent_crc(p_1641->g_1364.y, "p_1641->g_1364.y", print_hash_value);
    transparent_crc(p_1641->g_1371.s0, "p_1641->g_1371.s0", print_hash_value);
    transparent_crc(p_1641->g_1371.s1, "p_1641->g_1371.s1", print_hash_value);
    transparent_crc(p_1641->g_1371.s2, "p_1641->g_1371.s2", print_hash_value);
    transparent_crc(p_1641->g_1371.s3, "p_1641->g_1371.s3", print_hash_value);
    transparent_crc(p_1641->g_1371.s4, "p_1641->g_1371.s4", print_hash_value);
    transparent_crc(p_1641->g_1371.s5, "p_1641->g_1371.s5", print_hash_value);
    transparent_crc(p_1641->g_1371.s6, "p_1641->g_1371.s6", print_hash_value);
    transparent_crc(p_1641->g_1371.s7, "p_1641->g_1371.s7", print_hash_value);
    transparent_crc(p_1641->g_1371.s8, "p_1641->g_1371.s8", print_hash_value);
    transparent_crc(p_1641->g_1371.s9, "p_1641->g_1371.s9", print_hash_value);
    transparent_crc(p_1641->g_1371.sa, "p_1641->g_1371.sa", print_hash_value);
    transparent_crc(p_1641->g_1371.sb, "p_1641->g_1371.sb", print_hash_value);
    transparent_crc(p_1641->g_1371.sc, "p_1641->g_1371.sc", print_hash_value);
    transparent_crc(p_1641->g_1371.sd, "p_1641->g_1371.sd", print_hash_value);
    transparent_crc(p_1641->g_1371.se, "p_1641->g_1371.se", print_hash_value);
    transparent_crc(p_1641->g_1371.sf, "p_1641->g_1371.sf", print_hash_value);
    transparent_crc(p_1641->g_1389.x, "p_1641->g_1389.x", print_hash_value);
    transparent_crc(p_1641->g_1389.y, "p_1641->g_1389.y", print_hash_value);
    transparent_crc(p_1641->g_1422.s0, "p_1641->g_1422.s0", print_hash_value);
    transparent_crc(p_1641->g_1422.s1, "p_1641->g_1422.s1", print_hash_value);
    transparent_crc(p_1641->g_1422.s2, "p_1641->g_1422.s2", print_hash_value);
    transparent_crc(p_1641->g_1422.s3, "p_1641->g_1422.s3", print_hash_value);
    transparent_crc(p_1641->g_1422.s4, "p_1641->g_1422.s4", print_hash_value);
    transparent_crc(p_1641->g_1422.s5, "p_1641->g_1422.s5", print_hash_value);
    transparent_crc(p_1641->g_1422.s6, "p_1641->g_1422.s6", print_hash_value);
    transparent_crc(p_1641->g_1422.s7, "p_1641->g_1422.s7", print_hash_value);
    transparent_crc(p_1641->g_1422.s8, "p_1641->g_1422.s8", print_hash_value);
    transparent_crc(p_1641->g_1422.s9, "p_1641->g_1422.s9", print_hash_value);
    transparent_crc(p_1641->g_1422.sa, "p_1641->g_1422.sa", print_hash_value);
    transparent_crc(p_1641->g_1422.sb, "p_1641->g_1422.sb", print_hash_value);
    transparent_crc(p_1641->g_1422.sc, "p_1641->g_1422.sc", print_hash_value);
    transparent_crc(p_1641->g_1422.sd, "p_1641->g_1422.sd", print_hash_value);
    transparent_crc(p_1641->g_1422.se, "p_1641->g_1422.se", print_hash_value);
    transparent_crc(p_1641->g_1422.sf, "p_1641->g_1422.sf", print_hash_value);
    transparent_crc(p_1641->g_1427.s0, "p_1641->g_1427.s0", print_hash_value);
    transparent_crc(p_1641->g_1427.s1, "p_1641->g_1427.s1", print_hash_value);
    transparent_crc(p_1641->g_1427.s2, "p_1641->g_1427.s2", print_hash_value);
    transparent_crc(p_1641->g_1427.s3, "p_1641->g_1427.s3", print_hash_value);
    transparent_crc(p_1641->g_1427.s4, "p_1641->g_1427.s4", print_hash_value);
    transparent_crc(p_1641->g_1427.s5, "p_1641->g_1427.s5", print_hash_value);
    transparent_crc(p_1641->g_1427.s6, "p_1641->g_1427.s6", print_hash_value);
    transparent_crc(p_1641->g_1427.s7, "p_1641->g_1427.s7", print_hash_value);
    transparent_crc(p_1641->g_1427.s8, "p_1641->g_1427.s8", print_hash_value);
    transparent_crc(p_1641->g_1427.s9, "p_1641->g_1427.s9", print_hash_value);
    transparent_crc(p_1641->g_1427.sa, "p_1641->g_1427.sa", print_hash_value);
    transparent_crc(p_1641->g_1427.sb, "p_1641->g_1427.sb", print_hash_value);
    transparent_crc(p_1641->g_1427.sc, "p_1641->g_1427.sc", print_hash_value);
    transparent_crc(p_1641->g_1427.sd, "p_1641->g_1427.sd", print_hash_value);
    transparent_crc(p_1641->g_1427.se, "p_1641->g_1427.se", print_hash_value);
    transparent_crc(p_1641->g_1427.sf, "p_1641->g_1427.sf", print_hash_value);
    transparent_crc(p_1641->g_1432.x, "p_1641->g_1432.x", print_hash_value);
    transparent_crc(p_1641->g_1432.y, "p_1641->g_1432.y", print_hash_value);
    transparent_crc(p_1641->g_1432.z, "p_1641->g_1432.z", print_hash_value);
    transparent_crc(p_1641->g_1432.w, "p_1641->g_1432.w", print_hash_value);
    transparent_crc(p_1641->g_1453.x, "p_1641->g_1453.x", print_hash_value);
    transparent_crc(p_1641->g_1453.y, "p_1641->g_1453.y", print_hash_value);
    transparent_crc(p_1641->g_1462.f0, "p_1641->g_1462.f0", print_hash_value);
    transparent_crc(p_1641->g_1484.x, "p_1641->g_1484.x", print_hash_value);
    transparent_crc(p_1641->g_1484.y, "p_1641->g_1484.y", print_hash_value);
    transparent_crc(p_1641->g_1497.x, "p_1641->g_1497.x", print_hash_value);
    transparent_crc(p_1641->g_1497.y, "p_1641->g_1497.y", print_hash_value);
    transparent_crc(p_1641->g_1515, "p_1641->g_1515", print_hash_value);
    transparent_crc(p_1641->g_1544.s0, "p_1641->g_1544.s0", print_hash_value);
    transparent_crc(p_1641->g_1544.s1, "p_1641->g_1544.s1", print_hash_value);
    transparent_crc(p_1641->g_1544.s2, "p_1641->g_1544.s2", print_hash_value);
    transparent_crc(p_1641->g_1544.s3, "p_1641->g_1544.s3", print_hash_value);
    transparent_crc(p_1641->g_1544.s4, "p_1641->g_1544.s4", print_hash_value);
    transparent_crc(p_1641->g_1544.s5, "p_1641->g_1544.s5", print_hash_value);
    transparent_crc(p_1641->g_1544.s6, "p_1641->g_1544.s6", print_hash_value);
    transparent_crc(p_1641->g_1544.s7, "p_1641->g_1544.s7", print_hash_value);
    transparent_crc(p_1641->g_1544.s8, "p_1641->g_1544.s8", print_hash_value);
    transparent_crc(p_1641->g_1544.s9, "p_1641->g_1544.s9", print_hash_value);
    transparent_crc(p_1641->g_1544.sa, "p_1641->g_1544.sa", print_hash_value);
    transparent_crc(p_1641->g_1544.sb, "p_1641->g_1544.sb", print_hash_value);
    transparent_crc(p_1641->g_1544.sc, "p_1641->g_1544.sc", print_hash_value);
    transparent_crc(p_1641->g_1544.sd, "p_1641->g_1544.sd", print_hash_value);
    transparent_crc(p_1641->g_1544.se, "p_1641->g_1544.se", print_hash_value);
    transparent_crc(p_1641->g_1544.sf, "p_1641->g_1544.sf", print_hash_value);
    transparent_crc(p_1641->g_1545.s0, "p_1641->g_1545.s0", print_hash_value);
    transparent_crc(p_1641->g_1545.s1, "p_1641->g_1545.s1", print_hash_value);
    transparent_crc(p_1641->g_1545.s2, "p_1641->g_1545.s2", print_hash_value);
    transparent_crc(p_1641->g_1545.s3, "p_1641->g_1545.s3", print_hash_value);
    transparent_crc(p_1641->g_1545.s4, "p_1641->g_1545.s4", print_hash_value);
    transparent_crc(p_1641->g_1545.s5, "p_1641->g_1545.s5", print_hash_value);
    transparent_crc(p_1641->g_1545.s6, "p_1641->g_1545.s6", print_hash_value);
    transparent_crc(p_1641->g_1545.s7, "p_1641->g_1545.s7", print_hash_value);
    transparent_crc(p_1641->g_1559.s0, "p_1641->g_1559.s0", print_hash_value);
    transparent_crc(p_1641->g_1559.s1, "p_1641->g_1559.s1", print_hash_value);
    transparent_crc(p_1641->g_1559.s2, "p_1641->g_1559.s2", print_hash_value);
    transparent_crc(p_1641->g_1559.s3, "p_1641->g_1559.s3", print_hash_value);
    transparent_crc(p_1641->g_1559.s4, "p_1641->g_1559.s4", print_hash_value);
    transparent_crc(p_1641->g_1559.s5, "p_1641->g_1559.s5", print_hash_value);
    transparent_crc(p_1641->g_1559.s6, "p_1641->g_1559.s6", print_hash_value);
    transparent_crc(p_1641->g_1559.s7, "p_1641->g_1559.s7", print_hash_value);
    transparent_crc(p_1641->g_1559.s8, "p_1641->g_1559.s8", print_hash_value);
    transparent_crc(p_1641->g_1559.s9, "p_1641->g_1559.s9", print_hash_value);
    transparent_crc(p_1641->g_1559.sa, "p_1641->g_1559.sa", print_hash_value);
    transparent_crc(p_1641->g_1559.sb, "p_1641->g_1559.sb", print_hash_value);
    transparent_crc(p_1641->g_1559.sc, "p_1641->g_1559.sc", print_hash_value);
    transparent_crc(p_1641->g_1559.sd, "p_1641->g_1559.sd", print_hash_value);
    transparent_crc(p_1641->g_1559.se, "p_1641->g_1559.se", print_hash_value);
    transparent_crc(p_1641->g_1559.sf, "p_1641->g_1559.sf", print_hash_value);
    transparent_crc(p_1641->g_1595.x, "p_1641->g_1595.x", print_hash_value);
    transparent_crc(p_1641->g_1595.y, "p_1641->g_1595.y", print_hash_value);
    transparent_crc(p_1641->g_1602.x, "p_1641->g_1602.x", print_hash_value);
    transparent_crc(p_1641->g_1602.y, "p_1641->g_1602.y", print_hash_value);
    transparent_crc(p_1641->g_1603.s0, "p_1641->g_1603.s0", print_hash_value);
    transparent_crc(p_1641->g_1603.s1, "p_1641->g_1603.s1", print_hash_value);
    transparent_crc(p_1641->g_1603.s2, "p_1641->g_1603.s2", print_hash_value);
    transparent_crc(p_1641->g_1603.s3, "p_1641->g_1603.s3", print_hash_value);
    transparent_crc(p_1641->g_1603.s4, "p_1641->g_1603.s4", print_hash_value);
    transparent_crc(p_1641->g_1603.s5, "p_1641->g_1603.s5", print_hash_value);
    transparent_crc(p_1641->g_1603.s6, "p_1641->g_1603.s6", print_hash_value);
    transparent_crc(p_1641->g_1603.s7, "p_1641->g_1603.s7", print_hash_value);
    transparent_crc(p_1641->g_1603.s8, "p_1641->g_1603.s8", print_hash_value);
    transparent_crc(p_1641->g_1603.s9, "p_1641->g_1603.s9", print_hash_value);
    transparent_crc(p_1641->g_1603.sa, "p_1641->g_1603.sa", print_hash_value);
    transparent_crc(p_1641->g_1603.sb, "p_1641->g_1603.sb", print_hash_value);
    transparent_crc(p_1641->g_1603.sc, "p_1641->g_1603.sc", print_hash_value);
    transparent_crc(p_1641->g_1603.sd, "p_1641->g_1603.sd", print_hash_value);
    transparent_crc(p_1641->g_1603.se, "p_1641->g_1603.se", print_hash_value);
    transparent_crc(p_1641->g_1603.sf, "p_1641->g_1603.sf", print_hash_value);
    transparent_crc(p_1641->g_1604.x, "p_1641->g_1604.x", print_hash_value);
    transparent_crc(p_1641->g_1604.y, "p_1641->g_1604.y", print_hash_value);
    transparent_crc(p_1641->g_1605.s0, "p_1641->g_1605.s0", print_hash_value);
    transparent_crc(p_1641->g_1605.s1, "p_1641->g_1605.s1", print_hash_value);
    transparent_crc(p_1641->g_1605.s2, "p_1641->g_1605.s2", print_hash_value);
    transparent_crc(p_1641->g_1605.s3, "p_1641->g_1605.s3", print_hash_value);
    transparent_crc(p_1641->g_1605.s4, "p_1641->g_1605.s4", print_hash_value);
    transparent_crc(p_1641->g_1605.s5, "p_1641->g_1605.s5", print_hash_value);
    transparent_crc(p_1641->g_1605.s6, "p_1641->g_1605.s6", print_hash_value);
    transparent_crc(p_1641->g_1605.s7, "p_1641->g_1605.s7", print_hash_value);
    transparent_crc(p_1641->g_1607.x, "p_1641->g_1607.x", print_hash_value);
    transparent_crc(p_1641->g_1607.y, "p_1641->g_1607.y", print_hash_value);
    transparent_crc(p_1641->g_1607.z, "p_1641->g_1607.z", print_hash_value);
    transparent_crc(p_1641->g_1607.w, "p_1641->g_1607.w", print_hash_value);
    transparent_crc(p_1641->g_1615.x, "p_1641->g_1615.x", print_hash_value);
    transparent_crc(p_1641->g_1615.y, "p_1641->g_1615.y", print_hash_value);
    transparent_crc(p_1641->g_1615.z, "p_1641->g_1615.z", print_hash_value);
    transparent_crc(p_1641->g_1615.w, "p_1641->g_1615.w", print_hash_value);
    transparent_crc(p_1641->g_1617.s0, "p_1641->g_1617.s0", print_hash_value);
    transparent_crc(p_1641->g_1617.s1, "p_1641->g_1617.s1", print_hash_value);
    transparent_crc(p_1641->g_1617.s2, "p_1641->g_1617.s2", print_hash_value);
    transparent_crc(p_1641->g_1617.s3, "p_1641->g_1617.s3", print_hash_value);
    transparent_crc(p_1641->g_1617.s4, "p_1641->g_1617.s4", print_hash_value);
    transparent_crc(p_1641->g_1617.s5, "p_1641->g_1617.s5", print_hash_value);
    transparent_crc(p_1641->g_1617.s6, "p_1641->g_1617.s6", print_hash_value);
    transparent_crc(p_1641->g_1617.s7, "p_1641->g_1617.s7", print_hash_value);
    transparent_crc(p_1641->g_1619.s0, "p_1641->g_1619.s0", print_hash_value);
    transparent_crc(p_1641->g_1619.s1, "p_1641->g_1619.s1", print_hash_value);
    transparent_crc(p_1641->g_1619.s2, "p_1641->g_1619.s2", print_hash_value);
    transparent_crc(p_1641->g_1619.s3, "p_1641->g_1619.s3", print_hash_value);
    transparent_crc(p_1641->g_1619.s4, "p_1641->g_1619.s4", print_hash_value);
    transparent_crc(p_1641->g_1619.s5, "p_1641->g_1619.s5", print_hash_value);
    transparent_crc(p_1641->g_1619.s6, "p_1641->g_1619.s6", print_hash_value);
    transparent_crc(p_1641->g_1619.s7, "p_1641->g_1619.s7", print_hash_value);
    transparent_crc(p_1641->g_1619.s8, "p_1641->g_1619.s8", print_hash_value);
    transparent_crc(p_1641->g_1619.s9, "p_1641->g_1619.s9", print_hash_value);
    transparent_crc(p_1641->g_1619.sa, "p_1641->g_1619.sa", print_hash_value);
    transparent_crc(p_1641->g_1619.sb, "p_1641->g_1619.sb", print_hash_value);
    transparent_crc(p_1641->g_1619.sc, "p_1641->g_1619.sc", print_hash_value);
    transparent_crc(p_1641->g_1619.sd, "p_1641->g_1619.sd", print_hash_value);
    transparent_crc(p_1641->g_1619.se, "p_1641->g_1619.se", print_hash_value);
    transparent_crc(p_1641->g_1619.sf, "p_1641->g_1619.sf", print_hash_value);
    transparent_crc(p_1641->g_1620.s0, "p_1641->g_1620.s0", print_hash_value);
    transparent_crc(p_1641->g_1620.s1, "p_1641->g_1620.s1", print_hash_value);
    transparent_crc(p_1641->g_1620.s2, "p_1641->g_1620.s2", print_hash_value);
    transparent_crc(p_1641->g_1620.s3, "p_1641->g_1620.s3", print_hash_value);
    transparent_crc(p_1641->g_1620.s4, "p_1641->g_1620.s4", print_hash_value);
    transparent_crc(p_1641->g_1620.s5, "p_1641->g_1620.s5", print_hash_value);
    transparent_crc(p_1641->g_1620.s6, "p_1641->g_1620.s6", print_hash_value);
    transparent_crc(p_1641->g_1620.s7, "p_1641->g_1620.s7", print_hash_value);
    transparent_crc(p_1641->g_1625.s0, "p_1641->g_1625.s0", print_hash_value);
    transparent_crc(p_1641->g_1625.s1, "p_1641->g_1625.s1", print_hash_value);
    transparent_crc(p_1641->g_1625.s2, "p_1641->g_1625.s2", print_hash_value);
    transparent_crc(p_1641->g_1625.s3, "p_1641->g_1625.s3", print_hash_value);
    transparent_crc(p_1641->g_1625.s4, "p_1641->g_1625.s4", print_hash_value);
    transparent_crc(p_1641->g_1625.s5, "p_1641->g_1625.s5", print_hash_value);
    transparent_crc(p_1641->g_1625.s6, "p_1641->g_1625.s6", print_hash_value);
    transparent_crc(p_1641->g_1625.s7, "p_1641->g_1625.s7", print_hash_value);
    transparent_crc(p_1641->g_1625.s8, "p_1641->g_1625.s8", print_hash_value);
    transparent_crc(p_1641->g_1625.s9, "p_1641->g_1625.s9", print_hash_value);
    transparent_crc(p_1641->g_1625.sa, "p_1641->g_1625.sa", print_hash_value);
    transparent_crc(p_1641->g_1625.sb, "p_1641->g_1625.sb", print_hash_value);
    transparent_crc(p_1641->g_1625.sc, "p_1641->g_1625.sc", print_hash_value);
    transparent_crc(p_1641->g_1625.sd, "p_1641->g_1625.sd", print_hash_value);
    transparent_crc(p_1641->g_1625.se, "p_1641->g_1625.se", print_hash_value);
    transparent_crc(p_1641->g_1625.sf, "p_1641->g_1625.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
