// ---fake_divergence -g 30,47,6 -l 5,1,1
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


// Seed: 107

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int16_t  f1;
   int32_t  f2;
};

union U1 {
   int8_t * f0;
   volatile int32_t  f1;
   int64_t  f2;
};

struct S2 {
    uint64_t g_2;
    int8_t g_6;
    int8_t *g_5;
    int32_t g_9;
    int32_t * volatile g_8;
    int32_t * volatile g_10;
    uint16_t g_18;
    VECTOR(uint16_t, 4) g_62;
    VECTOR(uint16_t, 4) g_63;
    volatile VECTOR(uint8_t, 2) g_64;
    volatile int32_t g_101;
    volatile int32_t *g_100[4][4];
    volatile int32_t **g_99[1][7][3];
    volatile int32_t ***g_98;
    VECTOR(int16_t, 16) g_104;
    union U1 g_131;
    uint32_t g_138[9];
    VECTOR(uint64_t, 4) g_142;
    VECTOR(uint64_t, 16) g_143;
    VECTOR(uint64_t, 2) g_152;
    volatile VECTOR(uint64_t, 8) g_153;
    int64_t g_166;
    int64_t *g_165;
    int64_t **g_164;
    VECTOR(uint16_t, 4) g_172;
    uint32_t g_179;
    uint8_t g_184;
    int32_t g_219[9][10];
    volatile struct S0 g_224;
    volatile struct S0 * volatile g_225;
    int8_t g_230;
    int8_t *g_229[6][2][8];
    int16_t g_259;
    volatile union U1 g_279;
    volatile uint8_t g_305;
    volatile int32_t g_311;
    int8_t **g_322;
    int8_t *** volatile g_321;
    VECTOR(uint8_t, 8) g_328;
    VECTOR(int16_t, 4) g_329;
    VECTOR(int16_t, 2) g_331;
    VECTOR(int16_t, 4) g_339;
    volatile VECTOR(int16_t, 16) g_350;
    struct S0 g_355;
    int32_t *g_370;
    int32_t ** volatile g_369[3];
    int32_t ** volatile g_371;
    VECTOR(int16_t, 2) g_399;
    volatile struct S0 * volatile *g_414[4];
    volatile VECTOR(int64_t, 4) g_427;
    VECTOR(int64_t, 2) g_429;
    volatile VECTOR(int64_t, 16) g_430;
    uint32_t g_522[4];
    VECTOR(int32_t, 16) g_525;
    struct S0 g_533[8][7];
    struct S0 *g_532;
    volatile int64_t *g_543;
    volatile int64_t **g_542;
    volatile int64_t ***g_541;
    volatile int64_t **** volatile g_540;
    int64_t ***g_545;
    int64_t ****g_544;
    VECTOR(int64_t, 2) g_554;
    union U1 g_565;
    int32_t ** volatile g_577;
    volatile VECTOR(int64_t, 16) g_591;
    struct S0 ** volatile g_597;
    struct S0 * volatile g_599;
    int32_t ** volatile g_660;
    int16_t *g_664;
    int16_t ** volatile g_663;
    int16_t ** volatile * volatile g_665;
    int32_t ** volatile g_670;
    int32_t *g_685;
    int32_t ** volatile g_684;
    VECTOR(int16_t, 2) g_692;
    int32_t **g_702;
    int32_t ***g_701;
    int32_t *** volatile g_726;
    VECTOR(int8_t, 2) g_783;
    VECTOR(uint32_t, 16) g_787;
    VECTOR(uint32_t, 2) g_816;
    VECTOR(uint16_t, 8) g_820;
    union U1 g_833;
    VECTOR(uint8_t, 2) g_849;
    uint32_t *g_875;
    VECTOR(int64_t, 16) g_914;
    volatile VECTOR(int32_t, 8) g_915;
    int32_t *g_925;
    VECTOR(uint32_t, 2) g_954;
    VECTOR(int8_t, 2) g_962;
    VECTOR(int8_t, 8) g_964;
    struct S0 **g_984;
    struct S0 ***g_983;
    VECTOR(int16_t, 2) g_999;
    VECTOR(int16_t, 2) g_1005;
    volatile VECTOR(int32_t, 8) g_1008;
    VECTOR(int16_t, 16) g_1043;
    volatile VECTOR(uint32_t, 16) g_1046;
    uint8_t g_1053;
    volatile VECTOR(int32_t, 4) g_1080;
    VECTOR(uint16_t, 16) g_1085;
    uint64_t *g_1087;
    struct S0 * volatile g_1089[10];
    struct S0 * volatile g_1090;
    struct S0 * volatile g_1092;
    uint8_t *g_1100;
    uint8_t **g_1099;
    volatile VECTOR(int32_t, 4) g_1105;
    VECTOR(int32_t, 16) g_1108;
    VECTOR(int8_t, 8) g_1113;
    uint32_t g_1130;
    uint16_t *g_1153;
    uint16_t **g_1152;
    uint16_t *** volatile g_1151;
    VECTOR(uint32_t, 4) g_1176;
    volatile VECTOR(int64_t, 16) g_1189;
    VECTOR(int64_t, 2) g_1190;
    struct S0 ****g_1233[2][10][10];
    struct S0 *****g_1232;
    VECTOR(int8_t, 16) g_1247;
    volatile int32_t g_1333;
    volatile uint32_t *g_1346[7][10];
    volatile uint32_t **g_1345;
    VECTOR(uint64_t, 2) g_1360;
    VECTOR(uint16_t, 2) g_1380;
    uint64_t g_1392[3][9];
    int64_t g_1402;
    VECTOR(uint16_t, 16) g_1440;
    int64_t g_1454;
    volatile VECTOR(int32_t, 16) g_1462;
    uint32_t *g_1469;
    int32_t g_1491;
    VECTOR(int64_t, 8) g_1511;
    VECTOR(int64_t, 16) g_1522;
    VECTOR(int64_t, 8) g_1525;
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
uint64_t  func_1(struct S2 * p_1545);
int32_t  func_3(int8_t * p_4, struct S2 * p_1545);
struct S0  func_21(uint32_t  p_22, uint8_t  p_23, struct S2 * p_1545);
int16_t  func_26(int32_t * p_27, int32_t * p_28, int32_t  p_29, int8_t * p_30, struct S2 * p_1545);
uint64_t  func_31(int8_t  p_32, struct S0  p_33, struct S2 * p_1545);
struct S0  func_34(int32_t * p_35, struct S2 * p_1545);
int32_t  func_38(int32_t * p_39, int32_t * p_40, int8_t * p_41, int32_t  p_42, struct S2 * p_1545);
int32_t * func_44(int8_t * p_45, int32_t ** p_46, uint64_t  p_47, struct S2 * p_1545);
union U1  func_48(uint64_t  p_49, int8_t * p_50, uint64_t  p_51, int8_t * p_52, struct S2 * p_1545);
uint64_t  func_53(int8_t * p_54, int8_t * p_55, int32_t ** p_56, int8_t * p_57, struct S2 * p_1545);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1545->g_2 p_1545->g_5 p_1545->g_8 p_1545->g_9 p_1545->g_10 p_1545->g_18 p_1545->g_6 p_1545->g_62 p_1545->g_63 p_1545->g_64 p_1545->g_98 p_1545->g_104 p_1545->g_101 p_1545->g_131 p_1545->g_138 p_1545->g_142 p_1545->g_143 p_1545->g_152 p_1545->g_153 p_1545->g_164 p_1545->g_172 p_1545->g_166 p_1545->g_179 p_1545->g_184 p_1545->g_165 p_1545->g_224 p_1545->g_225 p_1545->g_229 p_1545->g_219 p_1545->g_259 p_1545->g_279 p_1545->g_305 p_1545->g_321 p_1545->g_328 p_1545->g_329 p_1545->g_331 p_1545->g_339 p_1545->g_350 p_1545->g_355 p_1545->g_399 p_1545->g_370 p_1545->g_427 p_1545->g_429 p_1545->g_430 p_1545->g_565 p_1545->g_545 p_1545->g_522 p_1545->g_591 p_1545->g_597 p_1545->g_599 p_1545->g_230 p_1545->g_525 p_1545->g_533.f0 p_1545->g_660 p_1545->g_663 p_1545->g_665 p_1545->g_670 p_1545->g_684 p_1545->g_664 p_1545->g_533.f1 p_1545->g_533.f2 p_1545->g_692 p_1545->g_685 p_1545->g_702 p_1545->g_544 p_1545->g_540 p_1545->g_541 p_1545->g_542 p_1545->g_783 p_1545->g_787 p_1545->g_311 p_1545->g_816 p_1545->g_820 p_1545->g_833 p_1545->g_983 p_1545->g_999 p_1545->g_849 p_1545->g_1005 p_1545->g_1008 p_1545->g_1053 p_1545->g_1092 p_1545->g_1105 p_1545->g_1108 p_1545->g_1113 p_1545->g_1100 p_1545->g_1130 p_1545->g_984 p_1545->g_1345 p_1545->g_1360 p_1545->g_1380 p_1545->g_962 p_1545->g_914 p_1545->g_1392 p_1545->g_1402 p_1545->g_875 p_1545->g_1440 p_1545->g_1454 p_1545->g_1462 p_1545->g_1511 p_1545->g_915 p_1545->g_1522 p_1545->g_1525 p_1545->g_532
 * writes: p_1545->g_9 p_1545->g_18 p_1545->g_2 p_1545->g_5 p_1545->g_138 p_1545->g_143 p_1545->g_164 p_1545->g_63 p_1545->g_179 p_1545->g_104 p_1545->g_6 p_1545->g_219 p_1545->g_166 p_1545->g_224 p_1545->g_184 p_1545->g_259 p_1545->g_62 p_1545->g_414 p_1545->g_355.f0 p_1545->g_355.f1 p_1545->g_522 p_1545->g_532 p_1545->g_533 p_1545->g_230 p_1545->g_328 p_1545->g_370 p_1545->g_663 p_1545->g_685 p_1545->g_701 p_1545->g_165 p_1545->g_172 p_1545->g_355.f2 p_1545->g_875 p_1545->g_925 p_1545->g_983 p_1545->g_1053 p_1545->g_1087 p_1545->g_355 p_1545->g_1099 p_1545->g_1130 p_1545->g_1402 p_1545->g_1469 p_1545->g_820 p_1545->g_954
 */
uint64_t  func_1(struct S2 * p_1545)
{ /* block id: 4 */
    int64_t l_1437 = 0x3095BE4735F289CFL;
    struct S0 l_1439[6][6] = {{{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L}},{{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L}},{{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L}},{{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L}},{{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L}},{{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L},{0x634CF44BL,0x1287L,0x51AD7116L}}};
    int32_t l_1459 = 1L;
    int32_t *l_1489 = (void*)0;
    int32_t *l_1490[1];
    uint32_t l_1498 = 0x96F3EA6BL;
    VECTOR(uint8_t, 4) l_1504 = (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 0xA9L), 0xA9L);
    VECTOR(uint8_t, 16) l_1505 = (VECTOR(uint8_t, 16))(0x42L, (VECTOR(uint8_t, 4))(0x42L, (VECTOR(uint8_t, 2))(0x42L, 255UL), 255UL), 255UL, 0x42L, 255UL, (VECTOR(uint8_t, 2))(0x42L, 255UL), (VECTOR(uint8_t, 2))(0x42L, 255UL), 0x42L, 255UL, 0x42L, 255UL);
    VECTOR(uint8_t, 4) l_1506 = (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 0x41L), 0x41L);
    struct S0 l_1507 = {0x26DE22B8L,0x0F05L,-2L};
    VECTOR(uint8_t, 2) l_1508 = (VECTOR(uint8_t, 2))(255UL, 0UL);
    struct S0 *l_1509 = &p_1545->g_355;
    VECTOR(int64_t, 4) l_1510 = (VECTOR(int64_t, 4))(0x14032A1BA17329AFL, (VECTOR(int64_t, 2))(0x14032A1BA17329AFL, 0x1413E07778D42957L), 0x1413E07778D42957L);
    VECTOR(int64_t, 8) l_1512 = (VECTOR(int64_t, 8))(0x6D2373ECC95EDE79L, (VECTOR(int64_t, 4))(0x6D2373ECC95EDE79L, (VECTOR(int64_t, 2))(0x6D2373ECC95EDE79L, (-1L)), (-1L)), (-1L), 0x6D2373ECC95EDE79L, (-1L));
    VECTOR(int8_t, 2) l_1513 = (VECTOR(int8_t, 2))(0x0CL, 0x69L);
    VECTOR(uint64_t, 2) l_1514 = (VECTOR(uint64_t, 2))(0x06DD13B3E64268E0L, 0x44FDAA80A02A0D1EL);
    VECTOR(int32_t, 8) l_1515 = (VECTOR(int32_t, 8))(0x19439B67L, (VECTOR(int32_t, 4))(0x19439B67L, (VECTOR(int32_t, 2))(0x19439B67L, 5L), 5L), 5L, 0x19439B67L, 5L);
    uint32_t **l_1516 = &p_1545->g_1469;
    uint32_t l_1517 = 0x6C4E7F2BL;
    VECTOR(uint64_t, 8) l_1528 = (VECTOR(uint64_t, 8))(0xD4475DFFF23D6F0BL, (VECTOR(uint64_t, 4))(0xD4475DFFF23D6F0BL, (VECTOR(uint64_t, 2))(0xD4475DFFF23D6F0BL, 0x7DE7D7B109F61884L), 0x7DE7D7B109F61884L), 0x7DE7D7B109F61884L, 0xD4475DFFF23D6F0BL, 0x7DE7D7B109F61884L);
    int i, j;
    for (i = 0; i < 1; i++)
        l_1490[i] = &p_1545->g_1491;
    if ((p_1545->g_2 , func_3(p_1545->g_5, p_1545)))
    { /* block id: 590 */
        int64_t l_1436 = 0x5C503D7B856B0603L;
        uint16_t *l_1438[9][4] = {{(void*)0,&p_1545->g_18,(void*)0,&p_1545->g_18},{(void*)0,&p_1545->g_18,(void*)0,&p_1545->g_18},{(void*)0,&p_1545->g_18,(void*)0,&p_1545->g_18},{(void*)0,&p_1545->g_18,(void*)0,&p_1545->g_18},{(void*)0,&p_1545->g_18,(void*)0,&p_1545->g_18},{(void*)0,&p_1545->g_18,(void*)0,&p_1545->g_18},{(void*)0,&p_1545->g_18,(void*)0,&p_1545->g_18},{(void*)0,&p_1545->g_18,(void*)0,&p_1545->g_18},{(void*)0,&p_1545->g_18,(void*)0,&p_1545->g_18}};
        VECTOR(int32_t, 2) l_1453 = (VECTOR(int32_t, 2))(0x39A4EF96L, 9L);
        int32_t l_1457 = (-8L);
        uint64_t *l_1458 = &p_1545->g_2;
        int i, j;
        l_1459 &= ((safe_mod_func_int16_t_s_s((((p_1545->g_63.y = (0L <= ((*p_1545->g_664) = (safe_sub_func_int32_t_s_s(l_1436, l_1437))))) & (l_1439[4][3] , ((VECTOR(uint16_t, 8))(p_1545->g_1440.s496af6cb)).s4)) < ((safe_mul_func_uint16_t_u_u((((safe_sub_func_uint64_t_u_u(((safe_add_func_int8_t_s_s(l_1436, (safe_div_func_uint64_t_u_u(0UL, GROUP_DIVERGE(0, 1))))) , ((*l_1458) &= (safe_div_func_uint16_t_u_u((((*p_1545->g_685) = ((((safe_mod_func_int32_t_s_s(((((VECTOR(int32_t, 16))(l_1453.yyyyxxyxxyyyxxyy)).sa & p_1545->g_1454) > (safe_sub_func_int32_t_s_s((l_1439[4][3].f2 && ((1L == l_1439[4][3].f1) , 0x4AB0L)), l_1453.x))), (-5L))) != 1UL) || l_1453.x) , l_1457)) , l_1436), (-3L))))), l_1453.y)) | 0x468FEB0A94B37983L) && FAKE_DIVERGE(p_1545->local_0_offset, get_local_id(0), 10)), l_1439[4][3].f2)) > l_1437)), (-2L))) >= GROUP_DIVERGE(0, 1));
    }
    else
    { /* block id: 596 */
        uint32_t *l_1468 = &p_1545->g_1130;
        uint32_t **l_1467[2][10][5] = {{{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468}},{{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468},{&l_1468,&l_1468,&l_1468,&l_1468,&l_1468}}};
        int32_t l_1476 = 0L;
        uint16_t *l_1477[3];
        int32_t l_1478 = 0x7CFCD29FL;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1477[i] = (void*)0;
        (*p_1545->g_685) = (l_1478 ^= ((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 16))(p_1545->g_1462.s4321311b57dedd59)).se, ((safe_mod_func_int64_t_s_s((safe_add_func_uint16_t_u_u((((p_1545->g_1469 = (void*)0) != (void*)0) && 0x0072L), l_1439[4][3].f1)), (safe_rshift_func_int8_t_s_u(((*p_1545->g_5) = (*p_1545->g_5)), 5)))) <= (safe_sub_func_uint32_t_u_u(p_1545->g_1402, (safe_sub_func_int8_t_s_s(l_1476, ((p_1545->g_820.s2 = (~l_1476)) != (~0xA57FL))))))))) > 7L));
        for (p_1545->g_179 = 21; (p_1545->g_179 > 42); p_1545->g_179 = safe_add_func_uint32_t_u_u(p_1545->g_179, 3))
        { /* block id: 604 */
            (*p_1545->g_702) = (*p_1545->g_684);
        }
    }
    l_1439[4][3].f2 = (safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1545->group_0_offset, get_group_id(0), 10), (((safe_mod_func_uint64_t_u_u(l_1439[4][3].f2, (safe_mul_func_int8_t_s_s((+(((+(l_1439[4][3].f0 = (safe_mod_func_int8_t_s_s(((0UL && l_1439[4][3].f2) & l_1439[4][3].f2), l_1439[4][3].f2)))) , l_1439[4][3].f2) || (l_1439[4][3].f0 = l_1439[4][3].f0))), (l_1459 = (safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((**p_1545->g_663), 1)), 12))))))) || 0L) || 0x29026669L)));
    if (((safe_div_func_int16_t_s_s(l_1498, (safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_s((l_1439[4][3].f2 &= (safe_unary_minus_func_uint32_t_u(FAKE_DIVERGE(p_1545->global_2_offset, get_global_id(2), 10)))), ((*p_1545->g_664) = l_1498))), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 2))(l_1504.yx)).yyyx, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_1505.sd8)).xxyxxyxx)).s07, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_1506.zwwxzxywwzwyzzxw)).s2a))))).xxxy, ((VECTOR(uint8_t, 16))(3UL, (l_1507 , ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 16))(l_1508.xyxxyxxyyxxyyyyx)).s4597, ((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 16))(9UL, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(abs(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(0x78L, FAKE_DIVERGE(p_1545->local_2_offset, get_local_id(2), 10), 0x37L, 0x04L, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))((&l_1507 != (l_1509 = ((*p_1545->g_984) = &l_1507))), ((((VECTOR(int64_t, 16))(0x01B8EB6BEC3A4DC1L, (-4L), ((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))(l_1510.xwxy)).zxxxxxxx, ((VECTOR(int64_t, 16))(p_1545->g_1511.s4057440403366522)).even))), 0x0CF49745FBBF4AB1L, ((VECTOR(int64_t, 4))(l_1512.s3245)), (-1L))).sc < l_1506.y) , (0xED6B84C99F092EF1L >= (((VECTOR(int8_t, 4))(0x2AL, ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 8))(l_1513.xyxxxyxx)).s72, ((VECTOR(int8_t, 8))(0x4AL, ((p_1545->g_954.x = (((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 8))(l_1514.xyyxyxxy)).s10, ((VECTOR(uint64_t, 2))(0xB1D486E435A96EECL, 1UL))))), GROUP_DIVERGE(1, 1), ((**p_1545->g_684) ^ ((VECTOR(int32_t, 4))(l_1515.s1755)).y), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0UL, 0xD98409D86A9C39FEL)).yyyxyxyx)).even)))), (uint64_t)((((l_1516 = &p_1545->g_1469) != &p_1545->g_1346[5][7]) ^ l_1512.s0) , p_1545->g_915.s2)))).s4 > l_1506.w)) ^ GROUP_DIVERGE(0, 1)), 0x2CL, ((VECTOR(int8_t, 4))(0x32L)), 0x64L)).s51, ((VECTOR(int8_t, 2))(0x2CL))))), 0x35L)).z == l_1510.z))), 0x67L, 0x8EL)), 0UL, 0xDCL, 0x5BL, 0UL)), ((VECTOR(uint8_t, 2))(0x42L)), 4UL, 0UL))))))).even, ((VECTOR(uint8_t, 8))(249UL))))))), ((VECTOR(uint8_t, 4))(0xC3L)), l_1517, 0xAFL, 0UL)).s53c7, ((VECTOR(uint8_t, 4))(247UL))))), ((VECTOR(uint8_t, 4))(0x8DL))))).y), l_1506.y, l_1507.f2, p_1545->g_962.y, l_1505.sa, 1UL, ((VECTOR(uint8_t, 8))(1UL)), 1UL)).s3493))).xxzyzxwyzyxwzzxz)).see, ((VECTOR(uint8_t, 2))(0x6CL))))), 0xE5L, 0x11L, 0xACL, l_1506.w, ((VECTOR(uint8_t, 4))(0x98L)), 1UL, 1UL, 0xC8L, ((VECTOR(uint8_t, 2))(247UL)), 0xB5L)).s9)))) & 18446744073709551608UL))
    { /* block id: 618 */
        int32_t l_1526 = 0x6B8D64B6L;
        uint32_t *l_1527[8] = {&p_1545->g_522[2],&p_1545->g_522[2],&p_1545->g_522[2],&p_1545->g_522[2],&p_1545->g_522[2],&p_1545->g_522[2],&p_1545->g_522[2],&p_1545->g_522[2]};
        VECTOR(int16_t, 2) l_1531 = (VECTOR(int16_t, 2))((-1L), 0x19D0L);
        uint32_t l_1534 = 0x20AA0054L;
        int32_t *l_1535[7];
        int8_t *l_1536[9] = {&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230};
        struct S0 l_1539 = {0x332EDEE1L,0x5EE9L,0x202FA8FFL};
        int i;
        for (i = 0; i < 7; i++)
            l_1535[i] = &p_1545->g_355.f2;
        l_1459 = ((safe_lshift_func_uint16_t_u_s((((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_1545->g_1522.se3)), 0x599203DDBFCB2167L, 0x78AAB3E4AD9D4DD0L)).y, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(0x76D0A8E6A53D7E31L, 9L, 0x486BBA24BC05EBBBL, 0x3B33F7E91C3D47DDL)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(8L, 0x20EAA0E8B3EA5951L)), 0x1485EFEE87F0FBCCL, 0L)))).s0)) | (safe_sub_func_int64_t_s_s((((VECTOR(int64_t, 16))(p_1545->g_1525.s6535415545300666)).sb < (((*p_1545->g_685) |= l_1526) , ((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 16))(0x93EE411810BACA0AL, (2UL == ((void*)0 == l_1527[4])), ((VECTOR(uint64_t, 2))(l_1528.s72)), ((safe_mul_func_uint8_t_u_u(p_1545->g_1130, (l_1513.y < 0x5BL))) & ((VECTOR(int16_t, 4))(l_1531.yyxy)).w), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x951332F8EBBCD46CL, 0xE3A4C84A77D22EC4L)).yxxy)), 0x264A6228CF256CFBL, l_1515.s6, 1UL, (safe_add_func_int8_t_s_s(l_1534, l_1526)), ((VECTOR(uint64_t, 2))(18446744073709551608UL)), 1UL)).sf9, ((VECTOR(uint64_t, 2))(0x7DF729724422F874L))))), ((VECTOR(uint64_t, 2))(0xD0AF56B557A80322L)), ((VECTOR(uint64_t, 2))(0x7B050B621CF80523L))))).odd)), l_1515.s5))) , FAKE_DIVERGE(p_1545->group_2_offset, get_group_id(2), 10)), l_1513.y)) == 0x610AL);
        l_1535[0] = l_1527[4];
        for (p_1545->g_1053 = 0; (p_1545->g_1053 == 32); p_1545->g_1053 = safe_add_func_uint64_t_u_u(p_1545->g_1053, 5))
        { /* block id: 624 */
            (*p_1545->g_532) = l_1539;
        }
    }
    else
    { /* block id: 627 */
        int32_t *l_1540 = (void*)0;
        int32_t *l_1541[2];
        uint32_t l_1542 = 0x855F408BL;
        int i;
        for (i = 0; i < 2; i++)
            l_1541[i] = &p_1545->g_533[6][5].f0;
        l_1542--;
        return l_1506.y;
    }
    return l_1513.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1545->g_8 p_1545->g_9 p_1545->g_10 p_1545->g_18 p_1545->g_5 p_1545->g_6 p_1545->g_62 p_1545->g_63 p_1545->g_64 p_1545->g_2 p_1545->g_98 p_1545->g_104 p_1545->g_101 p_1545->g_131 p_1545->g_138 p_1545->g_142 p_1545->g_143 p_1545->g_152 p_1545->g_153 p_1545->g_164 p_1545->g_172 p_1545->g_166 p_1545->g_179 p_1545->g_184 p_1545->g_165 p_1545->g_224 p_1545->g_225 p_1545->g_229 p_1545->g_219 p_1545->g_259 p_1545->g_279 p_1545->g_305 p_1545->g_321 p_1545->g_328 p_1545->g_329 p_1545->g_331 p_1545->g_339 p_1545->g_350 p_1545->g_355 p_1545->g_399 p_1545->g_370 p_1545->g_427 p_1545->g_429 p_1545->g_430 p_1545->g_565 p_1545->g_545 p_1545->g_522 p_1545->g_591 p_1545->g_597 p_1545->g_599 p_1545->g_230 p_1545->g_525 p_1545->g_533.f0 p_1545->g_660 p_1545->g_663 p_1545->g_665 p_1545->g_670 p_1545->g_684 p_1545->g_664 p_1545->g_533.f1 p_1545->g_533.f2 p_1545->g_692 p_1545->g_685 p_1545->g_702 p_1545->g_544 p_1545->g_540 p_1545->g_541 p_1545->g_542 p_1545->g_783 p_1545->g_787 p_1545->g_311 p_1545->g_816 p_1545->g_820 p_1545->g_833 p_1545->g_983 p_1545->g_999 p_1545->g_849 p_1545->g_1005 p_1545->g_1008 p_1545->g_1053 p_1545->g_1092 p_1545->g_1105 p_1545->g_1108 p_1545->g_1113 p_1545->g_1100 p_1545->g_1130 p_1545->g_984 p_1545->g_1345 p_1545->g_1360 p_1545->g_1380 p_1545->g_962 p_1545->g_914 p_1545->g_1392 p_1545->g_1402 p_1545->g_875
 * writes: p_1545->g_9 p_1545->g_18 p_1545->g_2 p_1545->g_5 p_1545->g_138 p_1545->g_143 p_1545->g_164 p_1545->g_63 p_1545->g_179 p_1545->g_104 p_1545->g_6 p_1545->g_219 p_1545->g_166 p_1545->g_224 p_1545->g_184 p_1545->g_259 p_1545->g_62 p_1545->g_414 p_1545->g_355.f0 p_1545->g_355.f1 p_1545->g_522 p_1545->g_532 p_1545->g_533 p_1545->g_230 p_1545->g_328 p_1545->g_370 p_1545->g_663 p_1545->g_685 p_1545->g_701 p_1545->g_165 p_1545->g_172 p_1545->g_355.f2 p_1545->g_875 p_1545->g_925 p_1545->g_983 p_1545->g_1053 p_1545->g_1087 p_1545->g_355 p_1545->g_1099 p_1545->g_1130 p_1545->g_1402
 */
int32_t  func_3(int8_t * p_4, struct S2 * p_1545)
{ /* block id: 5 */
    uint8_t l_7 = 2UL;
    int32_t *l_11 = &p_1545->g_9;
    int32_t *l_12 = (void*)0;
    int32_t *l_13 = &p_1545->g_9;
    int32_t *l_14 = &p_1545->g_9;
    int32_t *l_15[7];
    int64_t l_16 = (-5L);
    int8_t l_17 = 0x3EL;
    uint64_t l_1401 = 0x0B49170EEA5B1946L;
    uint32_t l_1429 = 0x88AF1839L;
    struct S0 l_1431 = {-5L,1L,-1L};
    int i;
    for (i = 0; i < 7; i++)
        l_15[i] = &p_1545->g_9;
    (*p_1545->g_8) &= l_7;
    (*p_1545->g_10) &= (4L < 0xD0DA0BDBL);
    --p_1545->g_18;
    l_1431 = func_21(((safe_sub_func_int16_t_s_s(func_26(&p_1545->g_9, l_13, ((func_31((*p_1545->g_5), func_34(l_15[2], p_1545), p_1545) ^ (((VECTOR(uint16_t, 4))(0xDD3EL, 1UL, 65532UL, 65535UL)).y , ((p_1545->g_1402 |= (safe_add_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(0x4104L, (safe_add_func_uint8_t_u_u(p_1545->g_962.y, (!l_1401))), p_1545->g_339.z, 0x377DL, 0x64B4L, ((VECTOR(int16_t, 2))((-6L))), 0x21DAL)))).s5, p_1545->g_914.s8)), p_1545->g_1392[0][1]))) ^ p_1545->g_999.y))) ^ p_1545->g_339.z), &l_17, p_1545), l_1429)) , (*p_1545->g_875)), p_1545->g_962.y, p_1545);
    return (*l_13);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S0  func_21(uint32_t  p_22, uint8_t  p_23, struct S2 * p_1545)
{ /* block id: 586 */
    struct S0 l_1430[4][1][2] = {{{{0x20ECD435L,0L,-9L},{0x20ECD435L,0L,-9L}}},{{{0x20ECD435L,0L,-9L},{0x20ECD435L,0L,-9L}}},{{{0x20ECD435L,0L,-9L},{0x20ECD435L,0L,-9L}}},{{{0x20ECD435L,0L,-9L},{0x20ECD435L,0L,-9L}}}};
    int i, j, k;
    return l_1430[0][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1545->g_9 p_1545->g_10 p_1545->g_663 p_1545->g_664 p_1545->g_533.f1
 * writes: p_1545->g_9
 */
int16_t  func_26(int32_t * p_27, int32_t * p_28, int32_t  p_29, int8_t * p_30, struct S2 * p_1545)
{ /* block id: 573 */
    VECTOR(int8_t, 4) l_1407 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-7L)), (-7L));
    int32_t l_1417[7][1][6] = {{{5L,0x249345B0L,(-8L),0x249345B0L,5L,5L}},{{5L,0x249345B0L,(-8L),0x249345B0L,5L,5L}},{{5L,0x249345B0L,(-8L),0x249345B0L,5L,5L}},{{5L,0x249345B0L,(-8L),0x249345B0L,5L,5L}},{{5L,0x249345B0L,(-8L),0x249345B0L,5L,5L}},{{5L,0x249345B0L,(-8L),0x249345B0L,5L,5L}},{{5L,0x249345B0L,(-8L),0x249345B0L,5L,5L}}};
    int32_t l_1419 = (-9L);
    int32_t l_1428 = 8L;
    int i, j, k;
    for (p_1545->g_9 = 0; (p_1545->g_9 != (-13)); p_1545->g_9--)
    { /* block id: 576 */
        uint8_t **l_1416 = &p_1545->g_1100;
        int32_t l_1418 = 0x2015035AL;
        int16_t *l_1424 = (void*)0;
        int16_t *l_1425 = (void*)0;
        int16_t *l_1426 = (void*)0;
        int32_t *l_1427[9][1][10] = {{{(void*)0,&l_1418,&l_1418,(void*)0,(void*)0,&p_1545->g_9,&l_1419,&p_1545->g_533[6][5].f2,&p_1545->g_355.f0,(void*)0}},{{(void*)0,&l_1418,&l_1418,(void*)0,(void*)0,&p_1545->g_9,&l_1419,&p_1545->g_533[6][5].f2,&p_1545->g_355.f0,(void*)0}},{{(void*)0,&l_1418,&l_1418,(void*)0,(void*)0,&p_1545->g_9,&l_1419,&p_1545->g_533[6][5].f2,&p_1545->g_355.f0,(void*)0}},{{(void*)0,&l_1418,&l_1418,(void*)0,(void*)0,&p_1545->g_9,&l_1419,&p_1545->g_533[6][5].f2,&p_1545->g_355.f0,(void*)0}},{{(void*)0,&l_1418,&l_1418,(void*)0,(void*)0,&p_1545->g_9,&l_1419,&p_1545->g_533[6][5].f2,&p_1545->g_355.f0,(void*)0}},{{(void*)0,&l_1418,&l_1418,(void*)0,(void*)0,&p_1545->g_9,&l_1419,&p_1545->g_533[6][5].f2,&p_1545->g_355.f0,(void*)0}},{{(void*)0,&l_1418,&l_1418,(void*)0,(void*)0,&p_1545->g_9,&l_1419,&p_1545->g_533[6][5].f2,&p_1545->g_355.f0,(void*)0}},{{(void*)0,&l_1418,&l_1418,(void*)0,(void*)0,&p_1545->g_9,&l_1419,&p_1545->g_533[6][5].f2,&p_1545->g_355.f0,(void*)0}},{{(void*)0,&l_1418,&l_1418,(void*)0,(void*)0,&p_1545->g_9,&l_1419,&p_1545->g_533[6][5].f2,&p_1545->g_355.f0,(void*)0}}};
        int i, j, k;
        if ((*p_1545->g_10))
            break;
        l_1419 = ((safe_div_func_uint64_t_u_u((((VECTOR(int8_t, 8))(l_1407.yzxxwwyw)).s7 & l_1407.z), (l_1417[0][0][3] = (safe_lshift_func_int16_t_s_u((safe_add_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(1UL, 0x7B355868L)), ((safe_sub_func_uint8_t_u_u(p_29, 0x66L)) , ((**p_1545->g_663) < ((VECTOR(uint16_t, 4))(p_29, (((*l_1416) = p_30) == (void*)0), 0x5CCEL, 0x13D1L)).w)))), 1))))) ^ l_1418);
        l_1428 ^= (l_1419 = (safe_lshift_func_int16_t_s_u(((safe_rshift_func_uint16_t_u_s(0x4218L, (*p_1545->g_664))) <= (l_1417[0][0][3] = 0x1B5DL)), 11)));
    }
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_1545->g_62 p_1545->g_63 p_1545->g_64 p_1545->g_9 p_1545->g_18 p_1545->g_2 p_1545->g_98 p_1545->g_104 p_1545->g_6 p_1545->g_10 p_1545->g_101 p_1545->g_131 p_1545->g_138 p_1545->g_142 p_1545->g_143 p_1545->g_152 p_1545->g_153 p_1545->g_5 p_1545->g_164 p_1545->g_172 p_1545->g_166 p_1545->g_179 p_1545->g_184 p_1545->g_165 p_1545->g_224 p_1545->g_225 p_1545->g_229 p_1545->g_219 p_1545->g_259 p_1545->g_279 p_1545->g_305 p_1545->g_321 p_1545->g_328 p_1545->g_329 p_1545->g_331 p_1545->g_339 p_1545->g_350 p_1545->g_355 p_1545->g_399 p_1545->g_370 p_1545->g_427 p_1545->g_429 p_1545->g_430 p_1545->g_565 p_1545->g_545 p_1545->g_522 p_1545->g_591 p_1545->g_597 p_1545->g_599 p_1545->g_8 p_1545->g_230 p_1545->g_525 p_1545->g_533.f0 p_1545->g_660 p_1545->g_663 p_1545->g_665 p_1545->g_670 p_1545->g_684 p_1545->g_664 p_1545->g_533.f1 p_1545->g_533.f2 p_1545->g_692 p_1545->g_685 p_1545->g_702 p_1545->g_544 p_1545->g_540 p_1545->g_541 p_1545->g_542 p_1545->g_783 p_1545->g_787 p_1545->g_311 p_1545->g_816 p_1545->g_820 p_1545->g_833 p_1545->g_983 p_1545->g_999 p_1545->g_849 p_1545->g_1005 p_1545->g_1008 p_1545->g_1053 p_1545->g_1092 p_1545->g_1105 p_1545->g_1108 p_1545->g_1113 p_1545->g_1100 p_1545->g_1130 p_1545->g_984 p_1545->g_1345 p_1545->g_1360 p_1545->g_1380
 * writes: p_1545->g_18 p_1545->g_9 p_1545->g_2 p_1545->g_5 p_1545->g_138 p_1545->g_143 p_1545->g_164 p_1545->g_63 p_1545->g_179 p_1545->g_104 p_1545->g_6 p_1545->g_219 p_1545->g_166 p_1545->g_224 p_1545->g_184 p_1545->g_259 p_1545->g_62 p_1545->g_414 p_1545->g_355.f0 p_1545->g_355.f1 p_1545->g_522 p_1545->g_532 p_1545->g_533 p_1545->g_230 p_1545->g_328 p_1545->g_370 p_1545->g_663 p_1545->g_685 p_1545->g_701 p_1545->g_165 p_1545->g_172 p_1545->g_355.f2 p_1545->g_875 p_1545->g_925 p_1545->g_983 p_1545->g_1053 p_1545->g_1087 p_1545->g_355 p_1545->g_1099 p_1545->g_1130
 */
uint64_t  func_31(int8_t  p_32, struct S0  p_33, struct S2 * p_1545)
{ /* block id: 12 */
    int32_t *l_43 = &p_1545->g_9;
    VECTOR(int8_t, 2) l_69 = (VECTOR(int8_t, 2))(4L, 0x4EL);
    int8_t *l_228 = (void*)0;
    int8_t *l_662 = (void*)0;
    int i;
    p_33.f2 &= func_38(l_43, func_44(&p_1545->g_6, &l_43, ((func_48(func_53(&p_1545->g_6, (((safe_sub_func_int32_t_s_s((0x73L ^ (safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 4))(p_1545->g_62.wxxw)).wzyxzzxw, ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 8))(3UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 2))(p_1545->g_63.xw)), (uint16_t)((((VECTOR(uint8_t, 16))(p_1545->g_64.xxxyyxxxxyxxxyyx)).sf , (0L != ((safe_add_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(0x81L, ((VECTOR(int8_t, 2))(l_69.xy)).lo)), (safe_rshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s(((void*)0 != &p_32), (*l_43))), 5)))) > (-1L)))) & p_33.f0), (uint16_t)65533UL))), ((VECTOR(uint16_t, 2))(65527UL))))).xxxx)), ((VECTOR(uint16_t, 2))(0xCEAAL)), 0xC41EL)).odd, ((VECTOR(uint16_t, 4))(0UL)), ((VECTOR(uint16_t, 4))(65535UL))))).wxyyzzxz, ((VECTOR(uint16_t, 8))(0x62A0L))))).s0, (*l_43)))), (-5L))) == p_1545->g_63.y) , (void*)0), &l_43, &p_1545->g_6, p_1545), l_228, p_32, p_1545->g_229[0][0][2], p_1545) , p_33.f0) <= 4294967295UL), p_1545), l_662, p_32, p_1545);
    return (*l_43);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S0  func_34(int32_t * p_35, struct S2 * p_1545)
{ /* block id: 9 */
    int32_t * volatile *l_36[10] = {&p_1545->g_10,&p_1545->g_10,&p_1545->g_10,&p_1545->g_10,&p_1545->g_10,&p_1545->g_10,&p_1545->g_10,&p_1545->g_10,&p_1545->g_10,&p_1545->g_10};
    struct S0 l_37 = {0x41536C74L,-1L,1L};
    int i;
    l_36[6] = &p_1545->g_8;
    return l_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_1545->g_10 p_1545->g_9 p_1545->g_663 p_1545->g_665 p_1545->g_355.f1 p_1545->g_184 p_1545->g_670 p_1545->g_684 p_1545->g_664 p_1545->g_533.f1 p_1545->g_533.f2 p_1545->g_692 p_1545->g_279 p_1545->g_685 p_1545->g_702 p_1545->g_18 p_1545->g_164 p_1545->g_152 p_1545->g_62 p_1545->g_143 p_1545->g_5 p_1545->g_6 p_1545->g_544 p_1545->g_545 p_1545->g_540 p_1545->g_541 p_1545->g_542 p_1545->g_783 p_1545->g_787 p_1545->g_311 p_1545->g_8 p_1545->g_370 p_1545->g_305 p_1545->g_816 p_1545->g_820 p_1545->g_355.f2 p_1545->g_833 p_1545->g_522 p_1545->g_165 p_1545->g_166 p_1545->g_591 p_1545->g_525 p_1545->g_328 p_1545->g_983 p_1545->g_999 p_1545->g_849 p_1545->g_1005 p_1545->g_1008 p_1545->g_219 p_1545->g_1053 p_1545->g_430 p_1545->g_1092 p_1545->g_131 p_1545->g_1105 p_1545->g_1108 p_1545->g_1113 p_1545->g_104 p_1545->g_1100 p_1545->g_1130 p_1545->g_230 p_1545->g_331 p_1545->g_984 p_1545->g_1345 p_1545->g_533.f0 p_1545->g_1360 p_1545->g_1380
 * writes: p_1545->g_663 p_1545->g_355.f1 p_1545->g_184 p_1545->g_370 p_1545->g_685 p_1545->g_9 p_1545->g_701 p_1545->g_18 p_1545->g_165 p_1545->g_172 p_1545->g_62 p_1545->g_533.f2 p_1545->g_63 p_1545->g_6 p_1545->g_2 p_1545->g_355.f2 p_1545->g_875 p_1545->g_533.f1 p_1545->g_166 p_1545->g_179 p_1545->g_925 p_1545->g_983 p_1545->g_230 p_1545->g_1053 p_1545->g_1087 p_1545->g_355 p_1545->g_1099 p_1545->g_138 p_1545->g_1130 p_1545->g_532
 */
int32_t  func_38(int32_t * p_39, int32_t * p_40, int8_t * p_41, int32_t  p_42, struct S2 * p_1545)
{ /* block id: 263 */
    uint16_t l_679 = 0x4722L;
    int32_t *l_682 = &p_1545->g_533[6][5].f2;
    VECTOR(int16_t, 4) l_686 = (VECTOR(int16_t, 4))(0x310BL, (VECTOR(int16_t, 2))(0x310BL, 0x2AF1L), 0x2AF1L);
    VECTOR(int32_t, 8) l_689 = (VECTOR(int32_t, 8))(0x07E7087DL, (VECTOR(int32_t, 4))(0x07E7087DL, (VECTOR(int32_t, 2))(0x07E7087DL, 1L), 1L), 1L, 0x07E7087DL, 1L);
    int64_t *****l_693 = &p_1545->g_544;
    VECTOR(int8_t, 16) l_694 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x5BL), 0x5BL), 0x5BL, (-1L), 0x5BL, (VECTOR(int8_t, 2))((-1L), 0x5BL), (VECTOR(int8_t, 2))((-1L), 0x5BL), (-1L), 0x5BL, (-1L), 0x5BL);
    VECTOR(int32_t, 8) l_695 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2569C640L), 0x2569C640L), 0x2569C640L, (-1L), 0x2569C640L);
    VECTOR(int32_t, 2) l_696 = (VECTOR(int32_t, 2))(0L, 0L);
    int32_t ***l_699 = (void*)0;
    int32_t ****l_700[3][4][9] = {{{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0},{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0},{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0},{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0}},{{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0},{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0},{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0},{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0}},{{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0},{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0},{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0},{&l_699,&l_699,&l_699,&l_699,(void*)0,&l_699,(void*)0,&l_699,(void*)0}}};
    int32_t *l_725 = (void*)0;
    int32_t **l_724 = &l_725;
    uint8_t l_736 = 0x66L;
    VECTOR(uint16_t, 8) l_801 = (VECTOR(uint16_t, 8))(0x63B4L, (VECTOR(uint16_t, 4))(0x63B4L, (VECTOR(uint16_t, 2))(0x63B4L, 0UL), 0UL), 0UL, 0x63B4L, 0UL);
    VECTOR(uint8_t, 4) l_807 = (VECTOR(uint8_t, 4))(0xEEL, (VECTOR(uint8_t, 2))(0xEEL, 255UL), 255UL);
    VECTOR(int8_t, 4) l_817 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x5CL), 0x5CL);
    VECTOR(uint16_t, 16) l_819 = (VECTOR(uint16_t, 16))(0x817CL, (VECTOR(uint16_t, 4))(0x817CL, (VECTOR(uint16_t, 2))(0x817CL, 0x7848L), 0x7848L), 0x7848L, 0x817CL, 0x7848L, (VECTOR(uint16_t, 2))(0x817CL, 0x7848L), (VECTOR(uint16_t, 2))(0x817CL, 0x7848L), 0x817CL, 0x7848L, 0x817CL, 0x7848L);
    VECTOR(int16_t, 2) l_829 = (VECTOR(int16_t, 2))(7L, 1L);
    VECTOR(uint64_t, 4) l_854 = (VECTOR(uint64_t, 4))(0x66C6019A51D036FCL, (VECTOR(uint64_t, 2))(0x66C6019A51D036FCL, 18446744073709551607UL), 18446744073709551607UL);
    uint32_t *l_878 = &p_1545->g_179;
    uint8_t *l_913 = (void*)0;
    uint8_t **l_912 = &l_913;
    uint16_t l_930 = 5UL;
    uint32_t *l_938 = &p_1545->g_138[0];
    VECTOR(uint64_t, 16) l_1060 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 0UL, 18446744073709551615UL, 0UL, 18446744073709551615UL);
    VECTOR(int8_t, 16) l_1112 = (VECTOR(int8_t, 16))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), (-4L)), (-4L)), (-4L), (-4L), (-4L), (VECTOR(int8_t, 2))((-4L), (-4L)), (VECTOR(int8_t, 2))((-4L), (-4L)), (-4L), (-4L), (-4L), (-4L));
    VECTOR(uint32_t, 2) l_1117 = (VECTOR(uint32_t, 2))(0xD84A9353L, 1UL);
    uint16_t l_1119 = 0UL;
    int8_t l_1120 = (-6L);
    VECTOR(int32_t, 2) l_1121 = (VECTOR(int32_t, 2))(0x3AC2E7CFL, 0L);
    int16_t **l_1144 = (void*)0;
    int16_t ***l_1143 = &l_1144;
    int32_t *l_1258[9][6] = {{(void*)0,(void*)0,&p_1545->g_355.f2,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1545->g_355.f2,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1545->g_355.f2,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1545->g_355.f2,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1545->g_355.f2,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1545->g_355.f2,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1545->g_355.f2,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1545->g_355.f2,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1545->g_355.f2,(void*)0,(void*)0,(void*)0}};
    uint16_t l_1270 = 65535UL;
    VECTOR(int32_t, 16) l_1276 = (VECTOR(int32_t, 16))(0x72086094L, (VECTOR(int32_t, 4))(0x72086094L, (VECTOR(int32_t, 2))(0x72086094L, (-7L)), (-7L)), (-7L), 0x72086094L, (-7L), (VECTOR(int32_t, 2))(0x72086094L, (-7L)), (VECTOR(int32_t, 2))(0x72086094L, (-7L)), 0x72086094L, (-7L), 0x72086094L, (-7L));
    uint64_t l_1295 = 0xAFA39AF5999C6B05L;
    int8_t l_1334 = 1L;
    struct S0 *l_1339[2];
    VECTOR(uint8_t, 16) l_1341 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x13L), 0x13L), 0x13L, 1UL, 0x13L, (VECTOR(uint8_t, 2))(1UL, 0x13L), (VECTOR(uint8_t, 2))(1UL, 0x13L), 1UL, 0x13L, 1UL, 0x13L);
    uint32_t l_1383 = 1UL;
    uint64_t l_1384 = 0x8562E348E4308B47L;
    int32_t *l_1393 = &p_1545->g_355.f2;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1339[i] = &p_1545->g_355;
    if ((*p_1545->g_10))
    { /* block id: 264 */
        (*p_1545->g_665) = p_1545->g_663;
    }
    else
    { /* block id: 266 */
        struct S0 l_671 = {0x1E18C963L,0x2D7BL,1L};
        int32_t **l_683 = &p_1545->g_370;
        for (p_1545->g_355.f1 = 0; (p_1545->g_355.f1 == 17); p_1545->g_355.f1++)
        { /* block id: 269 */
            struct S0 *l_672 = &l_671;
            int32_t *l_673 = &l_671.f2;
            int32_t *l_674 = (void*)0;
            int32_t *l_675 = &p_1545->g_533[6][5].f0;
            int32_t *l_676 = &p_1545->g_355.f0;
            int32_t *l_677 = &p_1545->g_9;
            int32_t *l_678[7] = {&p_1545->g_355.f2,&p_1545->g_533[6][5].f0,&p_1545->g_355.f2,&p_1545->g_355.f2,&p_1545->g_533[6][5].f0,&p_1545->g_355.f2,&p_1545->g_355.f2};
            int i;
            for (p_1545->g_184 = 0; (p_1545->g_184 >= 1); p_1545->g_184 = safe_add_func_int8_t_s_s(p_1545->g_184, 8))
            { /* block id: 272 */
                (*p_1545->g_670) = p_39;
            }
            (*l_672) = l_671;
            --l_679;
        }
        (*p_1545->g_684) = ((*l_683) = l_682);
    }
    if (((VECTOR(int32_t, 16))(0x0EF07A29L, ((VECTOR(int32_t, 4))(0x6364B7E1L, 0x36307E57L, 0x2FF995D3L, (-1L))), 0L, (~((*p_39) ^= ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 4))((-1L), ((VECTOR(int16_t, 4))(l_686.yyyx)).z, 0x0DC2L, (-1L))).zyxxwxxw, ((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 4))((safe_mul_func_int16_t_s_s(((***p_1545->g_665) != (!p_42)), (p_42 < (*l_682)))), 0x4645L, 65526UL, 0x4B2FL)).zyxzwwwx)))))).s5104320673341225, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_689.s4251)))))).zyxxyxywzywxwzwz))).sb)), (safe_div_func_uint32_t_u_u((((VECTOR(int16_t, 8))(p_1545->g_692.yxxxyyxy)).s6 | ((l_693 == l_693) > ((VECTOR(int8_t, 4))(l_694.s60e7)).z)), (p_1545->g_279 , ((*l_682) , ((VECTOR(int32_t, 4))(l_695.s3336)).w)))), 0x4B251C87L, 0x14FC7FE3L, (-1L), ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(l_696.yy)), (int32_t)((VECTOR(int32_t, 4))(0x76978CBEL, (safe_lshift_func_int8_t_s_s(((p_1545->g_701 = l_699) == (void*)0), 0)), 0x73F6106CL, 1L)).z))), (*p_40), 0x6BED2152L, 1L)).se)
    { /* block id: 283 */
        int32_t *l_703 = (void*)0;
        int64_t *l_706 = (void*)0;
        int32_t l_728 = 1L;
        int32_t l_729 = (-1L);
        int32_t l_730 = 0x3AF1DF6AL;
        int32_t l_731 = (-1L);
        int32_t l_734 = (-1L);
        int32_t l_744 = 1L;
        int32_t l_747 = 0x1F3BED5FL;
        int32_t l_749 = 0x75C1F434L;
        int32_t l_750 = 0x79F1A183L;
        int32_t l_751 = 0x25BB95BEL;
        int32_t l_752 = 0x7FCDE19EL;
        uint64_t l_754 = 0UL;
        uint32_t l_804 = 0xD8DC20B2L;
        VECTOR(uint16_t, 8) l_818 = (VECTOR(uint16_t, 8))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0x0014L), 0x0014L), 0x0014L, 5UL, 0x0014L);
        uint16_t *l_821 = &p_1545->g_18;
        struct S0 **l_851 = &p_1545->g_532;
        struct S0 ***l_850 = &l_851;
        int8_t *l_876 = (void*)0;
        int32_t **l_877 = &p_1545->g_370;
        VECTOR(uint32_t, 16) l_953 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 1UL), 1UL, 4294967295UL, 1UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 4294967295UL, 1UL, 4294967295UL, 1UL);
        VECTOR(int8_t, 4) l_963 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L));
        int64_t l_1067[3][9] = {{0x30BE4F742CCAAA48L,3L,0x25A84CFF5589903CL,3L,0x30BE4F742CCAAA48L,0x30BE4F742CCAAA48L,3L,0x25A84CFF5589903CL,3L},{0x30BE4F742CCAAA48L,3L,0x25A84CFF5589903CL,3L,0x30BE4F742CCAAA48L,0x30BE4F742CCAAA48L,3L,0x25A84CFF5589903CL,3L},{0x30BE4F742CCAAA48L,3L,0x25A84CFF5589903CL,3L,0x30BE4F742CCAAA48L,0x30BE4F742CCAAA48L,3L,0x25A84CFF5589903CL,3L}};
        uint8_t **l_1098 = &l_913;
        VECTOR(int32_t, 2) l_1106 = (VECTOR(int32_t, 2))((-1L), 0L);
        VECTOR(int32_t, 16) l_1107 = (VECTOR(int32_t, 16))(0x2523BC62L, (VECTOR(int32_t, 4))(0x2523BC62L, (VECTOR(int32_t, 2))(0x2523BC62L, 0x185B3C10L), 0x185B3C10L), 0x185B3C10L, 0x2523BC62L, 0x185B3C10L, (VECTOR(int32_t, 2))(0x2523BC62L, 0x185B3C10L), (VECTOR(int32_t, 2))(0x2523BC62L, 0x185B3C10L), 0x2523BC62L, 0x185B3C10L, 0x2523BC62L, 0x185B3C10L);
        VECTOR(int8_t, 8) l_1114 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
        VECTOR(uint32_t, 16) l_1115 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967292UL), 4294967292UL), 4294967292UL, 1UL, 4294967292UL, (VECTOR(uint32_t, 2))(1UL, 4294967292UL), (VECTOR(uint32_t, 2))(1UL, 4294967292UL), 1UL, 4294967292UL, 1UL, 4294967292UL);
        int i, j;
        (*p_1545->g_702) = (func_34(l_703, p_1545) , (l_703 = (*p_1545->g_684)));
        for (p_1545->g_18 = 22; (p_1545->g_18 >= 9); p_1545->g_18 = safe_sub_func_int32_t_s_s(p_1545->g_18, 4))
        { /* block id: 288 */
            int64_t *l_707[4][4] = {{&p_1545->g_166,&p_1545->g_166,&p_1545->g_166,&p_1545->g_166},{&p_1545->g_166,&p_1545->g_166,&p_1545->g_166,&p_1545->g_166},{&p_1545->g_166,&p_1545->g_166,&p_1545->g_166,&p_1545->g_166},{&p_1545->g_166,&p_1545->g_166,&p_1545->g_166,&p_1545->g_166}};
            uint64_t *l_711[9];
            uint64_t **l_710 = &l_711[0];
            uint64_t *l_713 = (void*)0;
            uint64_t **l_712 = &l_713;
            uint16_t *l_716 = (void*)0;
            uint16_t *l_717[6][9] = {{(void*)0,(void*)0,&p_1545->g_18,(void*)0,(void*)0,(void*)0,(void*)0,&l_679,(void*)0},{(void*)0,(void*)0,&p_1545->g_18,(void*)0,(void*)0,(void*)0,(void*)0,&l_679,(void*)0},{(void*)0,(void*)0,&p_1545->g_18,(void*)0,(void*)0,(void*)0,(void*)0,&l_679,(void*)0},{(void*)0,(void*)0,&p_1545->g_18,(void*)0,(void*)0,(void*)0,(void*)0,&l_679,(void*)0},{(void*)0,(void*)0,&p_1545->g_18,(void*)0,(void*)0,(void*)0,(void*)0,&l_679,(void*)0},{(void*)0,(void*)0,&p_1545->g_18,(void*)0,(void*)0,(void*)0,(void*)0,&l_679,(void*)0}};
            int32_t l_718 = 0x1B32C147L;
            int32_t l_719 = 0L;
            int32_t **l_727[8][5][2] = {{{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725}},{{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725}},{{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725}},{{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725}},{{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725}},{{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725}},{{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725}},{{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725},{(void*)0,&l_725}}};
            int32_t l_735[2][4][4] = {{{(-6L),0x7A500CD7L,0x7A500CD7L,(-6L)},{(-6L),0x7A500CD7L,0x7A500CD7L,(-6L)},{(-6L),0x7A500CD7L,0x7A500CD7L,(-6L)},{(-6L),0x7A500CD7L,0x7A500CD7L,(-6L)}},{{(-6L),0x7A500CD7L,0x7A500CD7L,(-6L)},{(-6L),0x7A500CD7L,0x7A500CD7L,(-6L)},{(-6L),0x7A500CD7L,0x7A500CD7L,(-6L)},{(-6L),0x7A500CD7L,0x7A500CD7L,(-6L)}}};
            int32_t l_739 = 7L;
            uint8_t *l_786 = &l_736;
            uint8_t *l_790 = (void*)0;
            uint8_t *l_791[8][9][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
            int32_t l_802[5][5][4] = {{{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L}},{{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L}},{{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L}},{{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L}},{{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L},{(-2L),0x248B1206L,0L,0L}}};
            int8_t *l_803[6] = {&p_1545->g_6,(void*)0,&p_1545->g_6,&p_1545->g_6,(void*)0,&p_1545->g_6};
            int i, j, k;
            for (i = 0; i < 9; i++)
                l_711[i] = &p_1545->g_2;
            if ((((((*p_1545->g_164) = l_706) == l_707[2][1]) <= (((VECTOR(int8_t, 4))((-5L), (-10L), 0x43L, 0x71L)).x > (p_42 , (safe_sub_func_uint32_t_u_u(((((*l_710) = l_707[1][0]) == ((*l_712) = &p_1545->g_2)) != (safe_mul_func_uint8_t_u_u(((p_1545->g_172.y = (l_718 = p_42)) == (p_1545->g_62.w ^= p_1545->g_152.x)), l_719))), ((safe_sub_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(p_1545->g_143.s4, (-1L))), (*p_40))) <= l_719)))))) != (*l_703)))
            { /* block id: 295 */
                int8_t l_732 = 1L;
                int32_t l_733 = 0L;
                int16_t l_740 = 1L;
                int32_t l_741 = 0x3AC724B6L;
                int32_t l_742 = (-1L);
                int32_t l_743 = (-6L);
                int32_t l_745 = (-1L);
                int32_t l_746 = 0L;
                int32_t l_748 = (-4L);
                int32_t l_753[6][1] = {{0L},{0L},{0L},{0L},{0L},{0L}};
                int i, j;
                l_727[4][2][1] = l_724;
                l_736++;
                --l_754;
            }
            else
            { /* block id: 299 */
                struct S0 **l_764[5];
                int32_t l_771 = (-2L);
                int i;
                for (i = 0; i < 5; i++)
                    l_764[i] = &p_1545->g_532;
                for (p_1545->g_355.f1 = (-21); (p_1545->g_355.f1 == 10); ++p_1545->g_355.f1)
                { /* block id: 302 */
                    struct S0 l_763 = {0x078C62BAL,0L,0x147600CCL};
                    if (((*p_1545->g_5) < (((*l_703) = ((void*)0 != l_725)) , (((void*)0 != (**p_1545->g_544)) < (safe_sub_func_int64_t_s_s(1L, (safe_rshift_func_int8_t_s_u((*p_1545->g_5), 6))))))))
                    { /* block id: 304 */
                        p_40 = (void*)0;
                    }
                    else
                    { /* block id: 306 */
                        (*p_39) = (0x1112L == (((l_763 , l_764[1]) != (void*)0) < ((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x9F4272EEA6A81C95L, 0xC1052491FCCE9D81L)).xxyyxxyxxxyyyyxy)))).sa, (l_739 | (safe_rshift_func_uint8_t_u_s((safe_mod_func_uint32_t_u_u((1UL > ((**p_1545->g_540) != (void*)0)), p_1545->g_152.x)), 7))))) ^ p_42)));
                        if (l_763.f2)
                            continue;
                        (*l_682) ^= (*p_39);
                    }
                }
                return l_771;
            }
            (*p_40) = (safe_div_func_uint32_t_u_u((safe_mul_func_int32_t_s_s((safe_add_func_uint64_t_u_u(((**l_712) = (safe_add_func_uint32_t_u_u((((*p_1545->g_5) = (((*p_40) || p_42) < ((safe_unary_minus_func_uint64_t_u(((((safe_lshift_func_int8_t_s_u((p_42 , ((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_1545->g_783.yyyyyxxx)).s1300233416461645)), ((VECTOR(int8_t, 2))(0x1DL, 9L)).xxyyyyyyxxxyxxyx))).sf), (safe_mul_func_uint8_t_u_u(((*l_786) = 2UL), (+(-7L)))))) == ((VECTOR(uint32_t, 4))(p_1545->g_787.s8410)).w) < ((((p_1545->g_63.w = ((safe_mul_func_uint16_t_u_u((!(((p_1545->g_184 = 249UL) >= ((safe_add_func_int32_t_s_s((safe_div_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int16_t_s((((p_42 , (safe_add_func_int64_t_s_s((((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 4))(l_801.s2376)).zzwxzzxz, (uint16_t)((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0UL, 4UL)).yxyxyyyy)).s1 , (4L ^ ((l_735[0][0][3] = (((p_1545->g_311 & p_42) != p_42) , (*p_1545->g_8))) , l_802[1][4][3]))) ^ 0xA8A9L)))).s7 & 0x0F25L), (*l_682)))) , p_42) && (*l_703)))), 253UL)) < (**p_1545->g_702)), l_802[0][4][1])), (*p_1545->g_370))) > 0x3ACF1168L)) , p_1545->g_305)), 0x445EL)) || FAKE_DIVERGE(p_1545->local_0_offset, get_local_id(0), 10))) , l_803[4]) != l_803[4]) , l_804)) , p_1545->g_305))) && 0x360823E8L))) == (*l_682)), 0L))), p_42)), 0L)), (*p_40)));
            return (*l_703);
        }
        if ((((safe_sub_func_int16_t_s_s((***p_1545->g_665), (((VECTOR(uint8_t, 4))(l_807.yzyw)).z && (safe_add_func_int16_t_s_s((!(p_42 , (safe_mod_func_int16_t_s_s(p_42, (safe_lshift_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(p_1545->g_816.yyyxxxyxxxyyyyyx)).hi)).s0, p_1545->g_783.y)), ((VECTOR(int8_t, 16))(l_817.xyxyxzxxyxxwwxxz)).se)))))), ((*l_703) = (*p_1545->g_664))))))) >= ((*l_821) = ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_818.s35)), 65529UL, ((VECTOR(uint16_t, 2))(l_819.s96)), ((VECTOR(uint16_t, 2))(p_1545->g_820.s00)), 65529UL)).s3)) && 7UL))
        { /* block id: 325 */
            VECTOR(uint16_t, 2) l_830 = (VECTOR(uint16_t, 2))(0x2C22L, 0UL);
            uint64_t *l_832[9][2] = {{(void*)0,&l_754},{(void*)0,&l_754},{(void*)0,&l_754},{(void*)0,&l_754},{(void*)0,&l_754},{(void*)0,&l_754},{(void*)0,&l_754},{(void*)0,&l_754},{(void*)0,&l_754}};
            int32_t l_880 = 1L;
            VECTOR(uint64_t, 4) l_888 = (VECTOR(uint64_t, 4))(0xED2293272D93E61BL, (VECTOR(uint64_t, 2))(0xED2293272D93E61BL, 18446744073709551615UL), 18446744073709551615UL);
            int32_t **l_933 = (void*)0;
            VECTOR(uint32_t, 16) l_952 = (VECTOR(uint32_t, 16))(0xC639FD86L, (VECTOR(uint32_t, 4))(0xC639FD86L, (VECTOR(uint32_t, 2))(0xC639FD86L, 7UL), 7UL), 7UL, 0xC639FD86L, 7UL, (VECTOR(uint32_t, 2))(0xC639FD86L, 7UL), (VECTOR(uint32_t, 2))(0xC639FD86L, 7UL), 0xC639FD86L, 7UL, 0xC639FD86L, 7UL);
            uint32_t l_1017 = 0xE23B6D3AL;
            uint32_t l_1018 = 0x35869EC1L;
            struct S0 l_1052 = {0x613D7E78L,0x6E63L,1L};
            int32_t **l_1057 = (void*)0;
            uint32_t l_1068 = 1UL;
            uint16_t l_1072 = 65535UL;
            uint32_t l_1077 = 0xB0F3600AL;
            VECTOR(uint16_t, 16) l_1081 = (VECTOR(uint16_t, 16))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0x9022L), 0x9022L), 0x9022L, 65531UL, 0x9022L, (VECTOR(uint16_t, 2))(65531UL, 0x9022L), (VECTOR(uint16_t, 2))(65531UL, 0x9022L), 65531UL, 0x9022L, 65531UL, 0x9022L);
            uint32_t l_1082 = 0xF17EFE1DL;
            int i, j;
            for (p_1545->g_355.f2 = 0; (p_1545->g_355.f2 != (-14)); p_1545->g_355.f2--)
            { /* block id: 328 */
                struct S0 l_831 = {0x69A2A4D9L,0x35D5L,0x48A1F506L};
                uint32_t *l_874[4][2][1];
                uint32_t **l_873[10] = {&l_874[0][0][0],&l_874[1][1][0],&l_874[0][0][0],&l_874[0][0][0],&l_874[1][1][0],&l_874[0][0][0],&l_874[0][0][0],&l_874[1][1][0],&l_874[0][0][0],&l_874[0][0][0]};
                int32_t *l_879[4];
                VECTOR(int8_t, 16) l_961 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 3L), 3L), 3L, 1L, 3L, (VECTOR(int8_t, 2))(1L, 3L), (VECTOR(int8_t, 2))(1L, 3L), 1L, 3L, 1L, 3L);
                int8_t *l_998 = &p_1545->g_230;
                VECTOR(int16_t, 8) l_1000 = (VECTOR(int16_t, 8))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 0x4ACBL), 0x4ACBL), 0x4ACBL, (-3L), 0x4ACBL);
                int32_t **l_1040 = &l_725;
                int32_t ****l_1047 = &l_699;
                int64_t l_1050 = 0x4658ABF635F6E01DL;
                int i, j, k;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 2; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_874[i][j][k] = &p_1545->g_179;
                    }
                }
                for (i = 0; i < 4; i++)
                    l_879[i] = (void*)0;
                for (p_1545->g_355.f1 = 0; (p_1545->g_355.f1 > 23); p_1545->g_355.f1 = safe_add_func_int16_t_s_s(p_1545->g_355.f1, 1))
                { /* block id: 331 */
                    struct S0 * volatile **l_826 = (void*)0;
                    struct S0 * volatile *l_828 = (void*)0;
                    struct S0 * volatile **l_827 = &l_828;
                    VECTOR(int16_t, 8) l_836 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
                    int32_t l_853 = (-1L);
                    int32_t l_857 = 0x61CE9FBBL;
                    int32_t l_858 = 0x660B9C12L;
                    int32_t l_860 = 0x43780A48L;
                    int i;
                    (*l_827) = &p_1545->g_599;
                    if (((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 4))(l_829.xyyx)).yzywxwzzzywwxwxz, (int16_t)(-1L)))), ((VECTOR(uint16_t, 16))(l_830.xxyxyxxxxxyyxxyy))))).sa)
                    { /* block id: 333 */
                        (*l_703) |= (((l_831 , l_832[7][1]) != (((((((p_1545->g_833 , 0x7148L) > (*p_1545->g_664)) >= p_1545->g_816.y) & (safe_lshift_func_int16_t_s_u(p_42, ((VECTOR(uint16_t, 4))(0x289AL, ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 4))(l_836.s0507)).zzwxyxyy))).lo)).lo, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(FAKE_DIVERGE(p_1545->global_2_offset, get_global_id(2), 10), 0xE30FL, p_42, 3UL, 1UL, 0x1E18L, 65535UL, 65535UL)).s7125571601762254)).s6f39)).hi))), 4UL)).w))) , ((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((-1L), 8L)).yxxyxxyy)).s15))).yyyx)).yxwyzzxzwwxwyzzy, ((VECTOR(int64_t, 2))(0x448438DD183DD4FFL, 3L)).xyyyyyyyxxxxyyxy))).s55, ((VECTOR(int64_t, 2))(3L, 0x020D2D618D5E776AL))))).xxxyxyyx, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(6L, 0x31A5C8B78F5AE85DL)), 0x54046508684ECBDCL, 0x407852BA25710CF2L, 0x7089B35A88DBC798L, (**p_1545->g_164), ((VECTOR(int64_t, 4))((-4L))), ((VECTOR(int64_t, 4))((-1L))), (-1L), 4L)).hi))).s7) <= 2L) , &p_1545->g_2)) <= 1L);
                        if (l_830.y)
                            continue;
                        if (l_836.s4)
                            continue;
                    }
                    else
                    { /* block id: 337 */
                        struct S0 ***l_852[2][5][4] = {{{&l_851,&l_851,&l_851,&l_851},{&l_851,&l_851,&l_851,&l_851},{&l_851,&l_851,&l_851,&l_851},{&l_851,&l_851,&l_851,&l_851},{&l_851,&l_851,&l_851,&l_851}},{{&l_851,&l_851,&l_851,&l_851},{&l_851,&l_851,&l_851,&l_851},{&l_851,&l_851,&l_851,&l_851},{&l_851,&l_851,&l_851,&l_851},{&l_851,&l_851,&l_851,&l_851}}};
                        uint8_t *l_859 = &p_1545->g_184;
                        int i, j, k;
                        (*p_1545->g_685) = (safe_rshift_func_uint16_t_u_u(((*p_40) != (safe_add_func_uint8_t_u_u((((((l_860 = (safe_mul_func_uint8_t_u_u(((*l_859) |= (safe_mod_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(p_1545->g_849.yxyx)), ((l_850 == (l_852[1][1][3] = l_852[0][1][1])) < ((((p_1545->g_820.s4 > (l_831.f0 != p_42)) | 4294967286UL) & l_853) , (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_854.yyzzxxxyzxzywzzw)).se9)).hi & (safe_add_func_int8_t_s_s(((l_858 = (l_857 = ((**p_1545->g_663) | GROUP_DIVERGE(2, 1)))) , p_42), 0x43L))))), p_42, l_858, 252UL, 0xB5L, (*l_703), 0xCCL, ((VECTOR(uint8_t, 2))(3UL)), ((VECTOR(uint8_t, 2))(1UL)), 254UL)).s7, p_42)) >= p_1545->g_522[2]), 0x3BL)), (-1L)))), l_830.x))) , l_831.f0) & l_836.s4) > p_42) , FAKE_DIVERGE(p_1545->group_2_offset, get_group_id(2), 10)), p_42))), 14));
                        return (*p_39);
                    }
                }
                for (l_744 = 13; (l_744 < (-13)); l_744 = safe_sub_func_int64_t_s_s(l_744, 1))
                { /* block id: 349 */
                    return (*p_39);
                }
                l_744 |= ((((((safe_div_func_int8_t_s_s((safe_mod_func_int16_t_s_s((-1L), (safe_rshift_func_int8_t_s_u(((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))((-1L), (*l_682), 0L, (-7L))), ((VECTOR(int8_t, 2))(0x37L, (-1L))).xxxy))).xyxwwxzwwzzwxwxz)))).sf <= (~p_42)) && (safe_rshift_func_int8_t_s_u(0x2BL, 3))), 4)))), (*l_703))) >= ((safe_rshift_func_uint8_t_u_u(p_42, ((VECTOR(uint8_t, 2))(0x01L, 0x30L)).odd)) ^ (!(-8L)))) , (l_880 = (((p_1545->g_875 = p_39) != (l_878 = &p_1545->g_179)) && l_831.f2))) , 1UL) || p_42) != p_42);
                for (l_749 = 0; (l_749 == (-20)); l_749--)
                { /* block id: 358 */
                    VECTOR(int8_t, 8) l_885 = (VECTOR(int8_t, 8))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0L), 0L), 0L, 8L, 0L);
                    int32_t *l_907 = &l_752;
                    int32_t **l_922 = &l_879[3];
                    int32_t *l_924 = (void*)0;
                    int32_t **l_923 = &l_924;
                    uint32_t **l_934 = (void*)0;
                    uint32_t **l_935 = (void*)0;
                    uint32_t *l_937[1][6][5] = {{{(void*)0,(void*)0,&p_1545->g_138[3],&p_1545->g_522[2],&l_804},{(void*)0,(void*)0,&p_1545->g_138[3],&p_1545->g_522[2],&l_804},{(void*)0,(void*)0,&p_1545->g_138[3],&p_1545->g_522[2],&l_804},{(void*)0,(void*)0,&p_1545->g_138[3],&p_1545->g_522[2],&l_804},{(void*)0,(void*)0,&p_1545->g_138[3],&p_1545->g_522[2],&l_804},{(void*)0,(void*)0,&p_1545->g_138[3],&p_1545->g_522[2],&l_804}}};
                    uint32_t **l_936[4][9] = {{&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][3][2],&l_937[0][1][2],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1]},{&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][3][2],&l_937[0][1][2],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1]},{&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][3][2],&l_937[0][1][2],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1]},{&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][3][2],&l_937[0][1][2],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1],&l_937[0][2][1]}};
                    int8_t ***l_939[2];
                    int64_t l_1011[5][1][4] = {{{0x6F08B287322EECFBL,(-1L),0x64836818157110ECL,(-1L)}},{{0x6F08B287322EECFBL,(-1L),0x64836818157110ECL,(-1L)}},{{0x6F08B287322EECFBL,(-1L),0x64836818157110ECL,(-1L)}},{{0x6F08B287322EECFBL,(-1L),0x64836818157110ECL,(-1L)}},{{0x6F08B287322EECFBL,(-1L),0x64836818157110ECL,(-1L)}}};
                    VECTOR(int64_t, 2) l_1031 = (VECTOR(int64_t, 2))(0x546A8BD91BA53340L, (-1L));
                    int32_t ****l_1049 = (void*)0;
                    struct S0 l_1051 = {9L,-10L,0x1A0775CDL};
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_939[i] = &p_1545->g_322;
                    for (l_880 = 26; (l_880 < (-25)); l_880--)
                    { /* block id: 361 */
                        (*p_40) = (((*p_1545->g_165) , (((((((l_880 & ((VECTOR(int8_t, 2))(l_885.s20)).even) == (((safe_add_func_int64_t_s_s(((((*l_703) || ((VECTOR(uint64_t, 2))(l_888.wy)).odd) < 0x77L) , (safe_mul_func_uint8_t_u_u((((*l_878) = (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(0UL, 0xFD71L, 1UL, 2UL)).y, ((safe_mod_func_int64_t_s_s(((****p_1545->g_544) ^= (safe_mul_func_int16_t_s_s(((*p_1545->g_664) = p_42), 9L))), (safe_lshift_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s(0x0DFF2CE19CF3C60EL, (safe_sub_func_int32_t_s_s((*p_39), ((!(safe_mod_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(p_42, p_1545->g_591.s3)), FAKE_DIVERGE(p_1545->group_1_offset, get_group_id(1), 10)))) < l_880))))) , p_42), 2)))) < p_42)))) , FAKE_DIVERGE(p_1545->group_2_offset, get_group_id(2), 10)), (-1L)))), p_1545->g_525.s7)) , 0x1FL) | (*p_1545->g_5))) & 65530UL) , p_42) && 0UL) ^ (*l_703)) & GROUP_DIVERGE(1, 1))) | p_42);
                        (*p_1545->g_702) = l_907;
                        if ((*p_40))
                            continue;
                    }
                    l_930 |= ((safe_mul_func_int16_t_s_s(((safe_div_func_int8_t_s_s((!((void*)0 != l_912)), 1UL)) == (((+((((VECTOR(int64_t, 16))(p_1545->g_914.s54692fa10a1e6bbc)).s2 , l_880) & (**l_877))) != (((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(p_1545->g_915.s7177)).hi)))).xyyyxxxx)).s7745666551366267, ((VECTOR(int32_t, 2))(8L, 0x610559BBL)).yxxyyxyxyxxxyyyy))).sb < ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x5A070F7EL, (-1L))).xxxyyxxxxxyxxyxx)).s3)) || (~(l_831.f0 &= (0L || ((safe_add_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((*l_703) = ((safe_add_func_int16_t_s_s((((((p_1545->g_925 = ((*l_923) = ((*l_922) = p_1545->g_685))) == (void*)0) || (safe_mul_func_int16_t_s_s((safe_sub_func_int8_t_s_s(l_888.z, l_880)), (**p_1545->g_663)))) > p_42) , 1L), (*p_1545->g_664))) ^ (-1L))), p_1545->g_152.y)), (-1L))) , 65534UL)))))), 0x2D67L)) <= p_1545->g_328.s0);
                    if (p_1545->g_18)
                        goto lbl_1061;
                    if ((((safe_mul_func_uint16_t_u_u(0UL, l_830.x)) , l_725) == (l_938 = l_907)))
                    { /* block id: 376 */
                        uint32_t l_967 = 5UL;
                        int32_t l_968 = 0x6094FC59L;
                        struct S0 ****l_982 = &l_850;
                        struct S0 ****l_985 = (void*)0;
                        struct S0 ****l_986 = &p_1545->g_983;
                        int32_t *l_997 = &p_1545->g_219[7][9];
                        VECTOR(uint8_t, 8) l_1012 = (VECTOR(uint8_t, 8))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0UL), 0UL), 0UL, 3UL, 0UL);
                        int i;
                        (*p_1545->g_685) = (l_968 |= ((p_1545->g_533[6][5].f1 > ((void*)0 == l_939[0])) & (((safe_unary_minus_func_int64_t_s((safe_mul_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((safe_unary_minus_func_int64_t_s((safe_mod_func_int16_t_s_s((((((0x72BD17ECL > (((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 16))((((safe_mod_func_int32_t_s_s(((p_1545->g_279 , 0x50L) < (**l_877)), (l_967 ^= ((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 4))(l_952.s3d3e)).xyzwzwzwwxzwwwyz, ((VECTOR(uint32_t, 8))(l_953.s0222da19)).s3244333331706511))).hi, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(abs(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 2))(0x7F00AA28L, 1UL)), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(p_1545->g_954.xyyxxxyyyxxyyyyx)).s7e))))), 4294967292UL, 0xAC058E2CL)).xwwzzwxw))).s13)).yyyxxxxx, ((VECTOR(uint32_t, 4))(4294967289UL, 1UL, 4294967286UL, 7UL)).zyzzxxyw))).even, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 2))(0x72862650L, 1UL)).yxyxyxyxyyyxyxxy, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(FAKE_DIVERGE(p_1545->local_1_offset, get_local_id(1), 10), (safe_add_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(0x4AL, 3L)).xxyyxyyxyyxxxxyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 2))(l_961.s6e)).yxyx, ((VECTOR(int8_t, 4))(p_1545->g_962.yyyy))))), ((VECTOR(int8_t, 4))(l_963.zywx)))).s2210150750025066))).s2d19)).zyxzwxxyywzzxxxw, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(p_1545->g_964.s12036156)))).even)).wzxzwxxxxxxxzwyw))).sd, p_42)) , (safe_mod_func_uint64_t_u_u(p_42, 0x4BB1B0E4422E5B31L))) | 0xF95CD6D7082C687BL), (*p_1545->g_685))), 0x2278B310L)), ((VECTOR(uint32_t, 4))(0UL)), 4294967290UL, 0xB908E7F8L)).s71)).yyyyxxxxxyxyyxyx, ((VECTOR(uint32_t, 16))(4294967288UL))))).sd0d6)), 4294967292UL, 0x8BE06AEAL, 4294967295UL, 0xDA3187B9L)).odd, ((VECTOR(uint32_t, 4))(0x8E1685DBL))))).x))) | 18446744073709551608UL) | (*l_907)), 0x2923L, 0x21DFL, ((VECTOR(int16_t, 4))(0L)), (**p_1545->g_663), 0x2FD4L, ((VECTOR(int16_t, 2))(0x11A6L)), ((VECTOR(int16_t, 4))(0x6A24L)), 0x4AC5L)).even))), 65526UL, 0xBC89L, ((VECTOR(uint16_t, 2))(0x5E05L)), p_1545->g_399.x, (*l_907), 0xA954L, 1UL)).s6 == p_42)) >= (-3L)) <= (***p_1545->g_545)) | p_42) >= (**l_877)), 5L)))), p_42)), p_42)))) <= l_831.f0) < p_42)));
                        (*l_907) = (safe_div_func_int8_t_s_s(0x09L, ((*p_1545->g_5) ^= p_42)));
                        (*l_682) &= (safe_sub_func_uint32_t_u_u(((p_42 , (((safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_1545->group_2_offset, get_group_id(2), 10), (safe_rshift_func_uint16_t_u_u((((((*l_998) = ((FAKE_DIVERGE(p_1545->group_1_offset, get_group_id(1), 10) ^ (((safe_unary_minus_func_int32_t_s((safe_sub_func_uint16_t_u_u((((*p_1545->g_5) = ((((((*l_982) = (void*)0) == ((*l_986) = p_1545->g_983)) , ((void*)0 != &p_1545->g_179)) <= (p_42 <= (GROUP_DIVERGE(2, 1) < (safe_rshift_func_int8_t_s_s((((safe_sub_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((&p_1545->g_219[7][9] == l_997), p_1545->g_152.x)), l_961.s7)) <= l_961.s0), p_1545->g_355.f2)), 0UL)) > (*p_39)) > p_42), (*p_1545->g_5)))))) || 0UL)) , p_1545->g_820.s5), p_42)))) , (void*)0) == l_998)) || 0x79B8L)) , p_42) == 1UL) > p_42), GROUP_DIVERGE(2, 1))))) != 3UL) <= (*l_907))) == (***p_1545->g_665)), 4294967289UL));
                        (*p_1545->g_685) |= ((l_1017 = ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 4))(7L, ((VECTOR(int16_t, 2))(0x21B3L, 0x16BFL)), (-7L))).lo, ((VECTOR(int16_t, 2))((-1L), 0x632BL)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(p_1545->g_999.yxxy)))).yyxwzzxywzwwwxww, ((VECTOR(int16_t, 4))(l_1000.s4437)).yywyywyxzxwxzxzx, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))((safe_div_func_uint64_t_u_u(((safe_mod_func_uint16_t_u_u((p_1545->g_849.x >= GROUP_DIVERGE(0, 1)), ((VECTOR(int16_t, 4))(p_1545->g_1005.yxxx)).y)) > 0x016E2873L), (****p_1545->g_544))), (***p_1545->g_665), (p_42 < (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1545->g_1008.s32)), (-1L), 0x6F9E1B5EL)), (((safe_lshift_func_int8_t_s_u(l_1011[1][0][0], ((VECTOR(uint8_t, 16))(l_1012.s4634137064271205)).sf)) ^ (safe_mod_func_uint16_t_u_u(((((safe_rshift_func_uint8_t_u_u(p_42, p_42)) , l_1000.s3) == 1UL) & p_42), (*p_1545->g_664)))) , (-4L)), ((VECTOR(int32_t, 2))(0x6D552766L)), 0x3FB33FFBL)).s54, ((VECTOR(int32_t, 2))(0x015D69C9L))))))).even == (*l_907))), (*p_1545->g_664), ((VECTOR(int16_t, 4))(0x4D1FL)))))).s7615463575565444))).s62, ((VECTOR(int16_t, 2))(1L))))).yxyxyxxx)).s45))).even) != l_1018);
                    }
                    else
                    { /* block id: 389 */
                        int32_t *****l_1048[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1048[i] = (void*)0;
                        (*l_907) = ((p_42 , (safe_mod_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s((*p_40), (safe_mod_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((4294967292UL == (safe_lshift_func_uint16_t_u_u(0xFDEFL, ((*l_703) & 0xC6L)))), ((*l_907) < ((((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(l_1031.yx)).xxxxyxxx)).lo, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((safe_lshift_func_uint8_t_u_s((GROUP_DIVERGE(0, 1) && 18446744073709551615UL), 7)) == (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))((safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_s((~p_1545->g_184), p_42)), p_42)), ((VECTOR(int16_t, 8))((-1L))), 3L, ((VECTOR(int16_t, 2))(0x5FD1L)), ((VECTOR(int16_t, 4))((-1L))))).s6cde)).y > p_42)), 0x72A9DF5E7E19FC6FL, ((VECTOR(int64_t, 8))(0x332685F670EDA614L)), 0L, p_42, 8L, 0x1A4AEBC857B9AEB6L, 0x7269DB849C3000C0L, 0x6BC0E49DC545243BL)))).sc8)).xyyx))).ywzyyxxw)).s2, 0xE0B0874A3FA0DB6EL)) | p_1545->g_305) || l_831.f0) < GROUP_DIVERGE(1, 1))))), p_42)))) == 0L), p_1545->g_219[6][3]))) , 1L);
                        (*l_877) = p_40;
                        l_1052 = l_1051;
                        return p_1545->g_1053;
                    }
                }
            }
            if (((**p_1545->g_702) = ((safe_unary_minus_func_uint64_t_u(0xA8BE0F32B5216504L)) <= (((safe_sub_func_uint8_t_u_u((**l_877), (0x5BL ^ ((((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(1UL, 0xF2A9L)), 65527UL, 65535UL)).hi, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0x2BF7L, 4UL)).xyxyxyxyxxxxxyxy)).s26))).lo , ((void*)0 == l_1057)) , (p_42 <= (p_42 >= (((VECTOR(uint64_t, 4))(l_1060.s1e4e)).y < (((p_42 , (***l_693)) == (void*)0) || p_42)))))))) , p_42) , GROUP_DIVERGE(1, 1)))))
            { /* block id: 402 */
lbl_1061:
                (*l_877) = p_39;
                for (p_1545->g_1053 = 0; (p_1545->g_1053 <= 10); p_1545->g_1053 = safe_add_func_int64_t_s_s(p_1545->g_1053, 1))
                { /* block id: 407 */
                    int32_t l_1066 = 0x45F7C517L;
                    uint64_t **l_1086[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1086[i] = (void*)0;
                    for (l_730 = 0; (l_730 <= 16); ++l_730)
                    { /* block id: 410 */
                        int32_t *l_1071 = &l_750;
                        l_1068--;
                        (*p_1545->g_702) = l_1071;
                    }
                    l_1072--;
                    (*p_39) = (safe_sub_func_uint32_t_u_u(l_1077, (((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1545->g_1080.wx)), 0x0A65236CL, (-8L))).w, (-5L))) && (((6UL > p_42) > p_1545->g_430.sf) ^ (((VECTOR(uint16_t, 2))(l_1081.s66)).odd || (((*p_1545->g_664) && (l_1082 != (safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), 6)))) | ((((VECTOR(uint16_t, 2))(p_1545->g_1085.s12)).odd , (p_1545->g_1087 = l_832[7][1])) == l_832[7][1]))))) & FAKE_DIVERGE(p_1545->global_2_offset, get_global_id(2), 10))));
                }
                return (*p_39);
            }
            else
            { /* block id: 419 */
                return (*l_703);
            }
        }
        else
        { /* block id: 422 */
            int32_t *l_1088 = &l_750;
            struct S0 *l_1091 = (void*)0;
            uint8_t ***l_1095 = (void*)0;
            uint8_t ***l_1096 = (void*)0;
            uint8_t ***l_1097[10][9] = {{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0},{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0},{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0},{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0},{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0},{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0},{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0},{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0},{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0},{&l_912,&l_912,&l_912,(void*)0,&l_912,&l_912,(void*)0,&l_912,(void*)0}};
            VECTOR(int8_t, 2) l_1111 = (VECTOR(int8_t, 2))(0L, 1L);
            VECTOR(uint32_t, 2) l_1116 = (VECTOR(uint32_t, 2))(1UL, 0xCB69C2F3L);
            VECTOR(uint32_t, 2) l_1118 = (VECTOR(uint32_t, 2))(4294967295UL, 0x54F24C90L);
            int i, j;
            (*l_877) = l_1088;
            (*p_1545->g_1092) = func_34(p_39, p_1545);
            l_1120 ^= (p_1545->g_131 , (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((p_1545->g_1099 = (l_1098 = &l_913)) != (void*)0), (safe_mod_func_int32_t_s_s(0x7409B1D5L, ((((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(p_1545->g_1105.zyxz)).odd, ((VECTOR(int32_t, 16))(l_1106.yyyxyyxxyxyxxyyy)).se9, ((VECTOR(int32_t, 8))(l_1107.s729a6816)).s51))).xyxyyxxyxyyxyyxx)).s52, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_1545->g_1108.s63)).yxyxyxyx)).s6650015501741551)).s8c))), 0x76CB67CEL, 0x40C5DFBDL)))).z, (((safe_div_func_int32_t_s_s((((((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_1111.yyxyyyxyxxyyyyyy)).sd8)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(0x52L, 0x42L, ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(l_1112.s42)).yyxy, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(p_1545->g_1113.s1173)).lo, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(l_1114.s2666)))), 0x57L, ((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_1115.s250adf0e)), 0xBB652206L, ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 2))(l_1116.xx)), ((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((*l_1088), 4294967286UL, 4294967286UL, ((VECTOR(uint32_t, 2))(0x6155B2BEL, 0x72E7827CL)), p_1545->g_104.s0, 0xB465A3BFL, 0x6673C396L)).s7720123353237155)).sb441, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(l_1117.yyyxyyyyyxyxyxyx)).hi)).lo))).lo))), 0x0006F825L, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(0x8E9CFFBCL, 0x26438D73L, 0UL, 0x41DA319EL, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_1118.xx)).yyyyyyyyyxxxyyyy)).even)), 0xB985585FL, ((VECTOR(uint32_t, 2))(0UL)), 0x516C8DEFL)).s53)), 0x286F85A2L, 0x5E6E867CL)).sd ^ p_42) ^ 0x2458L), 1L, 0x76L)).s63))).yyxx, ((VECTOR(int8_t, 4))(0x6FL))))), 0x78L, 0x40L)), 0x4EL, 0L, ((VECTOR(int8_t, 2))(0x3FL)), (*l_682), ((VECTOR(int8_t, 2))((-2L))), 1L)).s47, ((VECTOR(int8_t, 2))(0x24L))))).odd , (*p_1545->g_1100)) | (**l_877)) , (*l_703)), (**p_1545->g_702))) , (*l_1088)) | (*l_1088)))) == (**l_877)) >= (**l_877)) & p_42))), 246UL, 0x7EL)), ((VECTOR(uint8_t, 2))(255UL)), 0xF1L, 1UL)).s3, l_1119)));
            (*p_1545->g_685) |= (*l_1088);
        }
    }
    else
    { /* block id: 430 */
        struct S0 l_1132 = {0x73BD8CE6L,0x49E4L,0x46BD6F07L};
        uint16_t **l_1150 = (void*)0;
        uint32_t l_1163[9][10][2];
        VECTOR(int64_t, 4) l_1188 = (VECTOR(int64_t, 4))(0x4F698DFDA8342CF1L, (VECTOR(int64_t, 2))(0x4F698DFDA8342CF1L, 1L), 1L);
        int8_t *l_1255 = &p_1545->g_6;
        int8_t **l_1254 = &l_1255;
        uint8_t l_1282 = 254UL;
        int32_t l_1284[7] = {0x2819B468L,(-1L),0x2819B468L,0x2819B468L,(-1L),0x2819B468L,0x2819B468L};
        int i, j, k;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 10; j++)
            {
                for (k = 0; k < 2; k++)
                    l_1163[i][j][k] = 0UL;
            }
        }
        if (((*p_40) & ((~((***p_1545->g_665) , p_42)) && (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 16))(0x6806125CL, 0x5A5CD56CL, ((VECTOR(int32_t, 2))(l_1121.yx)).even, (safe_rshift_func_int8_t_s_s((((*l_938) = ((safe_rshift_func_uint8_t_u_s(1UL, p_42)) > 0L)) <= ((safe_rshift_func_int8_t_s_u((safe_mod_func_int8_t_s_s((0x11L > (p_42 > (-7L))), (*p_1545->g_5))), 7)) ^ (-8L))), 2)), p_42, 0x211CEDA4L, p_1545->g_143.se, p_1545->g_1130, ((VECTOR(int32_t, 8))(1L)))).s3e96, ((VECTOR(uint32_t, 4))(4294967295UL))))).lo)).lo != 0x5F0ED4E79D0551A9L))))
        { /* block id: 432 */
            struct S0 l_1131 = {0x54D3A351L,0x2CF1L,0x46186A88L};
            uint16_t l_1164[4];
            uint8_t l_1200 = 0xF8L;
            VECTOR(int64_t, 8) l_1208 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x7909220C6A176FBDL), 0x7909220C6A176FBDL), 0x7909220C6A176FBDL, 0L, 0x7909220C6A176FBDL);
            uint64_t l_1215 = 0x9FC0A62E87E29ECBL;
            struct S0 *****l_1236[4][4] = {{&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2]},{&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2]},{&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2]},{&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2],&p_1545->g_1233[0][3][2]}};
            struct S0 *****l_1237 = &p_1545->g_1233[0][3][2];
            struct S0 *****l_1238 = &p_1545->g_1233[0][8][7];
            int8_t *l_1248 = &l_1120;
            VECTOR(int8_t, 8) l_1265 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x48L), 0x48L), 0x48L, (-1L), 0x48L);
            VECTOR(int32_t, 8) l_1277 = (VECTOR(int32_t, 8))(0x6E88AEC9L, (VECTOR(int32_t, 4))(0x6E88AEC9L, (VECTOR(int32_t, 2))(0x6E88AEC9L, 2L), 2L), 2L, 0x6E88AEC9L, 2L);
            int i, j;
            for (i = 0; i < 4; i++)
                l_1164[i] = 0UL;
            l_1132 = l_1131;
            (*p_1545->g_702) = (*p_1545->g_684);
            for (l_1119 = 0; (l_1119 <= 49); ++l_1119)
            { /* block id: 437 */
                struct S0 ***l_1141[3];
                struct S0 ****l_1142 = &p_1545->g_983;
                int16_t ****l_1145 = &l_1143;
                int32_t l_1146 = 0L;
                int32_t *l_1168 = &p_1545->g_219[7][9];
                VECTOR(int8_t, 8) l_1194 = (VECTOR(int8_t, 8))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x10L), 0x10L), 0x10L, (-10L), 0x10L);
                int32_t l_1203 = 0x1C6465DEL;
                int32_t ***l_1210[9] = {&p_1545->g_702,&p_1545->g_702,&p_1545->g_702,&p_1545->g_702,&p_1545->g_702,&p_1545->g_702,&p_1545->g_702,&p_1545->g_702,&p_1545->g_702};
                VECTOR(int64_t, 8) l_1229 = (VECTOR(int64_t, 8))(0x0322CDAADA74E004L, (VECTOR(int64_t, 4))(0x0322CDAADA74E004L, (VECTOR(int64_t, 2))(0x0322CDAADA74E004L, 0x4D6A6A839760AD1BL), 0x4D6A6A839760AD1BL), 0x4D6A6A839760AD1BL, 0x0322CDAADA74E004L, 0x4D6A6A839760AD1BL);
                struct S0 ******l_1234 = (void*)0;
                struct S0 ******l_1235[3][4][10] = {{{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0},{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0},{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0},{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0}},{{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0},{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0},{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0},{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0}},{{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0},{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0},{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0},{&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,&p_1545->g_1232,(void*)0,&p_1545->g_1232,&p_1545->g_1232,(void*)0,(void*)0}}};
                int8_t **l_1249 = &p_1545->g_5;
                int8_t **l_1250 = &p_1545->g_229[2][1][0];
                int8_t ***l_1253 = &p_1545->g_322;
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_1141[i] = &p_1545->g_984;
                (1 + 1);
            }
        }
        else
        { /* block id: 515 */
            int32_t l_1285 = 9L;
            int32_t l_1286 = 0L;
            int32_t l_1287 = 0x14CB51E8L;
            int32_t l_1288 = 0L;
            int32_t l_1289 = 0x55F4A034L;
            int32_t l_1290 = 0x4F00FB20L;
            int32_t l_1291 = 1L;
            int32_t l_1292 = 0x5AF3F963L;
            int32_t l_1293 = 0x6CFAF34CL;
            int32_t l_1294[1][6] = {{0x60F01EABL,0x60F01EABL,0x60F01EABL,0x60F01EABL,0x60F01EABL,0x60F01EABL}};
            int i, j;
            l_1295--;
        }
    }
    for (p_1545->g_1130 = (-8); (p_1545->g_1130 <= 8); p_1545->g_1130 = safe_add_func_uint8_t_u_u(p_1545->g_1130, 8))
    { /* block id: 521 */
        int16_t l_1302 = (-10L);
        int32_t l_1305 = 0x07D24CF0L;
        int32_t l_1307 = (-7L);
        int32_t l_1308[5] = {0x132C58F5L,0x132C58F5L,0x132C58F5L,0x132C58F5L,0x132C58F5L};
        int8_t l_1317[4];
        uint64_t l_1318[7][6] = {{0UL,0UL,0x7F9B9838D9519A48L,0xAC2DF8CEA51DA6D0L,0x7F9B9838D9519A48L,0UL},{0UL,0UL,0x7F9B9838D9519A48L,0xAC2DF8CEA51DA6D0L,0x7F9B9838D9519A48L,0UL},{0UL,0UL,0x7F9B9838D9519A48L,0xAC2DF8CEA51DA6D0L,0x7F9B9838D9519A48L,0UL},{0UL,0UL,0x7F9B9838D9519A48L,0xAC2DF8CEA51DA6D0L,0x7F9B9838D9519A48L,0UL},{0UL,0UL,0x7F9B9838D9519A48L,0xAC2DF8CEA51DA6D0L,0x7F9B9838D9519A48L,0UL},{0UL,0UL,0x7F9B9838D9519A48L,0xAC2DF8CEA51DA6D0L,0x7F9B9838D9519A48L,0UL},{0UL,0UL,0x7F9B9838D9519A48L,0xAC2DF8CEA51DA6D0L,0x7F9B9838D9519A48L,0UL}};
        int i, j;
        for (i = 0; i < 4; i++)
            l_1317[i] = 0x13L;
        for (p_1545->g_230 = 1; (p_1545->g_230 == 20); p_1545->g_230 = safe_add_func_int64_t_s_s(p_1545->g_230, 1))
        { /* block id: 524 */
            int64_t l_1303 = 0x6959808EAA3CD22EL;
            int32_t l_1304 = (-8L);
            int8_t l_1306[9] = {0x18L,(-5L),0x18L,0x18L,(-5L),0x18L,0x18L,(-5L),0x18L};
            int32_t l_1309 = 3L;
            int32_t l_1310 = 0L;
            int32_t l_1311 = (-10L);
            int32_t l_1312 = 0x38CD6AC8L;
            int32_t l_1313[10] = {(-5L),0x54D052B1L,0L,0x54D052B1L,(-5L),(-5L),0x54D052B1L,0L,0x54D052B1L,(-5L)};
            uint8_t l_1314 = 5UL;
            int i;
            l_1314--;
        }
        l_1318[5][4]++;
        return (*p_40);
    }
    for (p_1545->g_1053 = 8; (p_1545->g_1053 == 46); p_1545->g_1053 = safe_add_func_int64_t_s_s(p_1545->g_1053, 8))
    { /* block id: 532 */
        uint64_t l_1328 = 9UL;
        int32_t *l_1340 = &p_1545->g_533[6][5].f0;
        VECTOR(uint8_t, 16) l_1342 = (VECTOR(uint8_t, 16))(0x78L, (VECTOR(uint8_t, 4))(0x78L, (VECTOR(uint8_t, 2))(0x78L, 0x3BL), 0x3BL), 0x3BL, 0x78L, 0x3BL, (VECTOR(uint8_t, 2))(0x78L, 0x3BL), (VECTOR(uint8_t, 2))(0x78L, 0x3BL), 0x78L, 0x3BL, 0x78L, 0x3BL);
        VECTOR(int32_t, 16) l_1351 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
        int32_t *l_1387 = (void*)0;
        int i;
        for (p_1545->g_2 = (-2); (p_1545->g_2 <= 33); ++p_1545->g_2)
        { /* block id: 535 */
            int64_t l_1327 = 0x2D7DC0852867B596L;
            uint16_t *l_1336 = &p_1545->g_18;
            int32_t l_1349[3][1];
            struct S0 l_1394 = {-6L,1L,0x3A5B000EL};
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1349[i][j] = 8L;
            }
            (*p_39) &= ((safe_add_func_int32_t_s_s((((l_1327 , (***p_1545->g_545)) || ((0x4EL ^ ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 16))(l_1328, (-1L), 0x18L, 0L, 0x72L, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))((FAKE_DIVERGE(p_1545->group_1_offset, get_group_id(1), 10) > l_1327), ((safe_mul_func_int8_t_s_s(0x7DL, (safe_mul_func_uint16_t_u_u((FAKE_DIVERGE(p_1545->local_1_offset, get_local_id(1), 10) > ((((-10L) <= ((&l_1328 != &l_1295) && 0x36L)) , p_1545->g_1333) , (****p_1545->g_544))), p_42)))) > p_42), 0x28L, (-1L))).odd)), (-1L), 0L)).wxxzwwww)).s11, (int8_t)0x07L))), p_42, 0x22L, ((VECTOR(int8_t, 4))(1L)), 1L, (-6L), (-1L))).lo, ((VECTOR(int8_t, 8))(0x4DL))))), ((VECTOR(int8_t, 8))((-9L))), ((VECTOR(int8_t, 8))((-9L)))))).s23)), 1L, 0L)).w) ^ 0x3733L)) & p_42), l_1334)) && p_1545->g_331.x);
            (*p_1545->g_685) = ((safe_unary_minus_func_int16_t_s(5L)) < ((*l_1336) = 1UL));
            for (l_1270 = 0; (l_1270 <= 11); l_1270 = safe_add_func_int16_t_s_s(l_1270, 5))
            { /* block id: 541 */
                int8_t ***l_1352 = &p_1545->g_322;
                int32_t l_1353 = 0x54FB576FL;
                (*p_1545->g_984) = l_1339[1];
                (*p_1545->g_702) = l_1340;
                (*p_39) ^= (((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))(l_1341.sfce6b87e)), ((VECTOR(uint8_t, 16))(l_1342.s32197929762bf6aa)).hi))).s02, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x4CL, 0x8FL)), 0UL, 255UL)).y, ((safe_rshift_func_int8_t_s_u((((p_1545->g_1345 != (((safe_mod_func_int8_t_s_s((func_34(p_40, p_1545) , (((VECTOR(int16_t, 8))(l_1327, ((VECTOR(int16_t, 2))(0x167DL, 0x4FCBL)), (((safe_unary_minus_func_uint64_t_u(((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_1351.s1074f7ec)))).s50, ((VECTOR(int32_t, 2))(0L, 3L))))).yyyx)).zwxxxzzxwwwwxzxw)).se5)))).xyxxxyyxxxyyyxyy)).s6 , l_1352) != &p_1545->g_322))) , (-1L)) , p_42), l_1353, 0x28A9L, (-1L), 0L)).s7 || p_42)), p_42)) <= l_1327) , (void*)0)) , (*l_1340)) == (-1L)), 0)) < (*l_1340)), ((VECTOR(uint8_t, 4))(253UL)), 0x3BL, 1UL)).lo)).hi))).odd, 255UL, 0UL, ((VECTOR(uint8_t, 2))(1UL)), 0UL, 247UL, 0x6BL)))).even)).hi)), (uint8_t)(*p_1545->g_1100)))).odd <= l_1349[0][0]);
            }
            for (l_930 = 14; (l_930 < 42); l_930 = safe_add_func_uint64_t_u_u(l_930, 7))
            { /* block id: 549 */
                VECTOR(uint64_t, 8) l_1379 = (VECTOR(uint64_t, 8))(0x848079E1879F8AD2L, (VECTOR(uint64_t, 4))(0x848079E1879F8AD2L, (VECTOR(uint64_t, 2))(0x848079E1879F8AD2L, 0x1EFB4117DD990D0EL), 0x1EFB4117DD990D0EL), 0x1EFB4117DD990D0EL, 0x848079E1879F8AD2L, 0x1EFB4117DD990D0EL);
                int32_t **l_1389 = (void*)0;
                uint64_t *l_1390 = (void*)0;
                uint64_t *l_1391 = &p_1545->g_1392[0][1];
                int i;
                for (l_679 = 0; (l_679 != 60); l_679++)
                { /* block id: 552 */
                    uint64_t *l_1361 = (void*)0;
                    uint64_t *l_1362 = (void*)0;
                    uint64_t *l_1363 = &l_1295;
                    int32_t l_1378 = (-1L);
                    if ((*p_40))
                        break;
                    (*p_39) = ((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(p_1545->g_1360.yy)).xxxxyxyx)).s42))).lo, ((*l_1363)--))) , (~((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(1L, 1L)), ((VECTOR(int32_t, 8))((safe_div_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((safe_sub_func_uint16_t_u_u((18446744073709551610UL == (safe_add_func_uint16_t_u_u((0x16L || (p_42 , (safe_mul_func_int8_t_s_s(((((safe_rshift_func_uint16_t_u_u(p_42, l_1349[2][0])) == l_1378) , (1UL < (((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_1379.s4532)).yzwywwxw)).s1 && l_1379.s7) , ((*l_1363) = ((((((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))(p_1545->g_1380.xyyxyyyyxxyyyyxy)).s63, ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(0x047EL, 0UL, ((VECTOR(uint16_t, 2))(0UL, 9UL)), (safe_mul_func_uint8_t_u_u((l_1383 == p_42), p_42)), p_42, 65528UL, 9UL)))).s77, ((VECTOR(uint16_t, 2))(0xB21EL)), ((VECTOR(uint16_t, 2))(0x332AL)))))))).xxxyyxxxyyxyyxyx, (uint16_t)p_42))).s6 | 0UL) , 0x09L) & p_42) ^ 0x0F75L))) && p_42))) != (-7L)), 0x4FL)))), 0x3318L))), 65534UL)) != l_1384), (*p_39))), 1UL)), (-10L), 1L, 0L, (*p_40), 1L, 0x15572CECL, 0x5DF3F3D5L)).s2, ((VECTOR(int32_t, 2))(9L)), ((VECTOR(int32_t, 2))(0L)), 0x24154FDEL)).s0));
                    for (p_1545->g_230 = 0; (p_1545->g_230 == (-17)); p_1545->g_230 = safe_sub_func_uint16_t_u_u(p_1545->g_230, 1))
                    { /* block id: 559 */
                        struct S0 l_1388 = {0x5F9C80A9L,0L,1L};
                        l_1388 = func_34(l_1387, p_1545);
                    }
                    if (l_1349[0][0])
                        break;
                }
                l_1394 = func_34(l_1393, p_1545);
            }
        }
    }
    return (*p_39);
}


/* ------------------------------------------ */
/* 
 * reads : p_1545->g_219 p_1545->g_545 p_1545->g_164 p_1545->g_165 p_1545->g_522 p_1545->g_329 p_1545->g_224.f1 p_1545->g_591 p_1545->g_166 p_1545->g_172 p_1545->g_370 p_1545->g_355.f0 p_1545->g_597 p_1545->g_599 p_1545->g_9 p_1545->g_6 p_1545->g_184 p_1545->g_104 p_1545->g_8 p_1545->g_230 p_1545->g_525 p_1545->g_533.f0 p_1545->g_18 p_1545->g_153 p_1545->g_660
 * writes: p_1545->g_166 p_1545->g_522 p_1545->g_138 p_1545->g_355.f0 p_1545->g_532 p_1545->g_533 p_1545->g_6 p_1545->g_184 p_1545->g_230 p_1545->g_18 p_1545->g_9 p_1545->g_259 p_1545->g_328 p_1545->g_370
 */
int32_t * func_44(int8_t * p_45, int32_t ** p_46, uint64_t  p_47, struct S2 * p_1545)
{ /* block id: 214 */
    uint32_t l_573 = 4294967295UL;
    VECTOR(int8_t, 16) l_583 = (VECTOR(int8_t, 16))(0x15L, (VECTOR(int8_t, 4))(0x15L, (VECTOR(int8_t, 2))(0x15L, 0x05L), 0x05L), 0x05L, 0x15L, 0x05L, (VECTOR(int8_t, 2))(0x15L, 0x05L), (VECTOR(int8_t, 2))(0x15L, 0x05L), 0x15L, 0x05L, 0x15L, 0x05L);
    VECTOR(int64_t, 8) l_593 = (VECTOR(int64_t, 8))(0x45CEA7F287715FB3L, (VECTOR(int64_t, 4))(0x45CEA7F287715FB3L, (VECTOR(int64_t, 2))(0x45CEA7F287715FB3L, 8L), 8L), 8L, 0x45CEA7F287715FB3L, 8L);
    struct S0 *l_596 = (void*)0;
    uint16_t l_634 = 65535UL;
    int32_t *l_661 = &p_1545->g_533[6][5].f2;
    int i;
    if ((safe_div_func_int32_t_s_s((-1L), (safe_mod_func_uint32_t_u_u(((safe_unary_minus_func_uint64_t_u(0xF842DA3F8B6E44D4L)) && p_1545->g_219[7][9]), (safe_mod_func_uint64_t_u_u(p_47, ((***p_1545->g_545) = l_573))))))))
    { /* block id: 216 */
        uint32_t *l_582 = &p_1545->g_522[2];
        VECTOR(int64_t, 16) l_590 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x6543E31D0712B0E8L), 0x6543E31D0712B0E8L), 0x6543E31D0712B0E8L, 0L, 0x6543E31D0712B0E8L, (VECTOR(int64_t, 2))(0L, 0x6543E31D0712B0E8L), (VECTOR(int64_t, 2))(0L, 0x6543E31D0712B0E8L), 0L, 0x6543E31D0712B0E8L, 0L, 0x6543E31D0712B0E8L);
        VECTOR(int64_t, 2) l_592 = (VECTOR(int64_t, 2))(0x7B806FC146572399L, 0x3FA91DA8CDEF581BL);
        int i;
        for (l_573 = 28; (l_573 < 20); l_573 = safe_sub_func_uint8_t_u_u(l_573, 2))
        { /* block id: 219 */
            int32_t *l_576 = &p_1545->g_355.f2;
            l_576 = l_576;
        }
        (*p_1545->g_370) ^= ((GROUP_DIVERGE(2, 1) && (safe_rshift_func_uint16_t_u_u((((l_573 | ((safe_rshift_func_uint16_t_u_s(65528UL, (+((p_1545->g_138[0] = (((*l_582) = p_1545->g_522[2]) == p_1545->g_329.z)) , l_573)))) , ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 8))(l_583.s44956e5e)).lo))), 0x62L, 0x48L, 0x25L, ((VECTOR(int8_t, 2))((-1L), 0x10L)), (1L || ((VECTOR(uint64_t, 16))((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 2))((-8L), 0x60012462ABAE2F0EL)).hi, (safe_rshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), p_1545->g_224.f1)), 13)))), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0xF0CBA8AA056784B7L, 1UL)), 18446744073709551615UL, 18446744073709551609UL)), 2UL, 0x62C937C166D5F6C7L, 18446744073709551615UL, ((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(int64_t, 2))(l_590.s17)), ((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(p_1545->g_591.s69)).xxyxxyyxyyyxxxyx)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(0L, 0x238EECDF32EFA92DL, ((VECTOR(int64_t, 2))(l_592.xx)), 1L, (***p_1545->g_545), 1L, ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 8))(l_593.s54677522)).hi))), 0x4F23AC4B816F0DEDL, 0L, 0x68BEB173C9C1D538L, (-4L), 0L))))))).s99, ((VECTOR(int64_t, 2))((-1L))))))))), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 18446744073709551608UL, 0x6ED60FA48C70F521L, 18446744073709551606UL, 18446744073709551607UL)).s4), ((VECTOR(int8_t, 2))(1L)), ((VECTOR(int8_t, 2))(0x68L)), 0x65L, (-7L))).s9)) ^ 0xEDB5L) , 0xD153L), p_1545->g_172.w))) , l_592.x);
    }
    else
    { /* block id: 225 */
        struct S0 l_598[5] = {{0x478069F4L,0x2D03L,0x46AE309CL},{0x478069F4L,0x2D03L,0x46AE309CL},{0x478069F4L,0x2D03L,0x46AE309CL},{0x478069F4L,0x2D03L,0x46AE309CL},{0x478069F4L,0x2D03L,0x46AE309CL}};
        uint8_t *l_601 = &p_1545->g_184;
        int i;
        for (p_1545->g_355.f0 = 28; (p_1545->g_355.f0 != 11); p_1545->g_355.f0 = safe_sub_func_int64_t_s_s(p_1545->g_355.f0, 1))
        { /* block id: 228 */
            int32_t *l_600 = &l_598[3].f2;
            (*p_1545->g_597) = l_596;
            (*p_1545->g_599) = l_598[3];
            return (*p_46);
        }
        (*p_1545->g_370) ^= (0x05F5L == (+(((((**p_46) == 0L) != ((GROUP_DIVERGE(1, 1) , ((((*p_45) = (*p_45)) || ((--(*l_601)) || 0x76L)) <= (((((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(4294967292UL, 4294967295UL)))).hi , p_47) == ((((l_583.s5 ^ (safe_lshift_func_int8_t_s_s((((p_47 || ((safe_lshift_func_int8_t_s_u(8L, l_573)) & (-7L))) , GROUP_DIVERGE(2, 1)) != 0x06L), 7))) != 0xD01AL) >= 1UL) == p_1545->g_104.sf)) <= l_598[3].f1))) == 18446744073709551608UL)) , 0L) ^ (*p_1545->g_8))));
    }
    for (p_1545->g_230 = 23; (p_1545->g_230 != 29); p_1545->g_230 = safe_add_func_int8_t_s_s(p_1545->g_230, 1))
    { /* block id: 239 */
        int32_t l_610 = 0x05BC5C2BL;
        uint16_t l_635 = 0UL;
        uint64_t *l_656 = &p_1545->g_2;
        uint64_t **l_655 = &l_656;
        int8_t l_659 = (-5L);
        if (l_610)
            break;
        for (p_1545->g_18 = 0; (p_1545->g_18 > 54); p_1545->g_18 = safe_add_func_int16_t_s_s(p_1545->g_18, 2))
        { /* block id: 243 */
            int16_t l_621 = 0x71F3L;
            uint32_t *l_627 = &l_573;
            uint32_t **l_626 = &l_627;
            (*p_1545->g_370) = (safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s(((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((safe_rshift_func_int8_t_s_s((l_621 , (safe_mod_func_uint8_t_u_u((~((p_1545->g_63.w--) & 0x783CL)), (0x5E7BL & ((&l_573 == ((*l_626) = (void*)0)) , (((safe_rshift_func_int16_t_s_s(l_621, (p_47 , (safe_mod_func_int8_t_s_s((~(-1L)), (safe_sub_func_int32_t_s_s(((p_1545->g_328.s7 = (p_1545->g_142.z & l_634)) < p_47), 4294967295UL))))))) < l_634) >= p_47)))))), 3)) | 0xCD00L), l_621, ((VECTOR(int16_t, 4))(0L)), 0L, ((VECTOR(int16_t, 2))((-7L))), 0L, (-4L), 0x5062L, 0x1242L, (-9L), 0x42F2L, 0x64E0L)).s4025)).xwzwzzzw, ((VECTOR(int16_t, 8))(0x784FL))))).s72, ((VECTOR(int16_t, 2))(0x55B5L))))).lo, p_1545->g_525.s2)) == p_1545->g_533[6][5].f0), (*p_45))), p_1545->g_355.f0));
            if (l_635)
                break;
            if (l_610)
                break;
        }
        for (p_1545->g_259 = 0; (p_1545->g_259 < (-14)); p_1545->g_259--)
        { /* block id: 253 */
            uint16_t *l_642 = (void*)0;
            uint16_t *l_643 = (void*)0;
            uint16_t *l_644 = &p_1545->g_18;
            int32_t l_657 = 0x07382105L;
            uint8_t *l_658[9];
            int i;
            for (i = 0; i < 9; i++)
                l_658[i] = &p_1545->g_184;
            (**p_46) = (safe_sub_func_uint64_t_u_u((((*p_1545->g_165) = (safe_rshift_func_uint16_t_u_s(((*l_644) ^= p_1545->g_9), ((((safe_lshift_func_int16_t_s_u(p_1545->g_224.f1, (safe_div_func_uint16_t_u_u((p_1545->g_355.f0 , (safe_sub_func_uint8_t_u_u(p_1545->g_230, p_47))), (safe_div_func_int64_t_s_s((**p_1545->g_164), ((p_1545->g_328.s2 = (((~((((safe_div_func_int16_t_s_s((((l_655 == (p_47 , &l_656)) ^ (*p_45)) == l_657), 1L)) != p_47) > p_47) != 0x3868L)) >= 4294967289UL) <= 1L)) ^ GROUP_DIVERGE(1, 1)))))))) , l_657) | l_573) != 0xE1FC0513L)))) , p_1545->g_153.s6), l_659));
            (*p_1545->g_660) = (*p_46);
        }
        if ((**p_46))
            continue;
    }
    return l_661;
}


/* ------------------------------------------ */
/* 
 * reads : p_1545->g_184 p_1545->g_131 p_1545->g_219 p_1545->g_143 p_1545->g_138 p_1545->g_2 p_1545->g_104 p_1545->g_259 p_1545->g_224.f2 p_1545->g_172 p_1545->g_279 p_1545->g_305 p_1545->g_165 p_1545->g_166 p_1545->g_321 p_1545->g_328 p_1545->g_329 p_1545->g_331 p_1545->g_339 p_1545->g_9 p_1545->g_5 p_1545->g_350 p_1545->g_355 p_1545->g_63 p_1545->g_179 p_1545->g_142 p_1545->g_64 p_1545->g_62 p_1545->g_399 p_1545->g_370 p_1545->g_427 p_1545->g_429 p_1545->g_430 p_1545->g_153 p_1545->g_10 p_1545->g_565
 * writes: p_1545->g_184 p_1545->g_9 p_1545->g_259 p_1545->g_62 p_1545->g_179 p_1545->g_6 p_1545->g_138 p_1545->g_414 p_1545->g_355.f0 p_1545->g_166 p_1545->g_355.f1
 */
union U1  func_48(uint64_t  p_49, int8_t * p_50, uint64_t  p_51, int8_t * p_52, struct S2 * p_1545)
{ /* block id: 88 */
    int32_t *l_231 = &p_1545->g_9;
    int32_t *l_232[9] = {&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9};
    uint32_t l_233 = 0x9CF3AB30L;
    struct S0 l_249 = {-1L,1L,3L};
    int64_t **l_264[1];
    VECTOR(uint16_t, 8) l_266 = (VECTOR(uint16_t, 8))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 7UL), 7UL), 7UL, 65531UL, 7UL);
    VECTOR(uint16_t, 16) l_267 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x0E26L), 0x0E26L), 0x0E26L, 0UL, 0x0E26L, (VECTOR(uint16_t, 2))(0UL, 0x0E26L), (VECTOR(uint16_t, 2))(0UL, 0x0E26L), 0UL, 0x0E26L, 0UL, 0x0E26L);
    int32_t l_273 = 0x69BE1657L;
    VECTOR(int16_t, 4) l_330 = (VECTOR(int16_t, 4))(0x31D4L, (VECTOR(int16_t, 2))(0x31D4L, 1L), 1L);
    uint32_t l_366 = 1UL;
    VECTOR(int32_t, 2) l_392 = (VECTOR(int32_t, 2))(0x015F699EL, 0L);
    VECTOR(uint8_t, 8) l_435 = (VECTOR(uint8_t, 8))(0x74L, (VECTOR(uint8_t, 4))(0x74L, (VECTOR(uint8_t, 2))(0x74L, 0x7AL), 0x7AL), 0x7AL, 0x74L, 0x7AL);
    VECTOR(int8_t, 4) l_447 = (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x6DL), 0x6DL);
    int8_t ***l_516 = (void*)0;
    VECTOR(int32_t, 4) l_534 = (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x45F52390L), 0x45F52390L);
    int32_t **l_538 = &l_232[8];
    int32_t ***l_537 = &l_538;
    uint32_t l_562 = 0x492675F2L;
    int i;
    for (i = 0; i < 1; i++)
        l_264[i] = (void*)0;
lbl_468:
    --l_233;
    if ((&p_1545->g_18 == &p_1545->g_18))
    { /* block id: 90 */
        int8_t l_242 = (-1L);
        VECTOR(int16_t, 16) l_253 = (VECTOR(int16_t, 16))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, (-10L)), (-10L)), (-10L), 6L, (-10L), (VECTOR(int16_t, 2))(6L, (-10L)), (VECTOR(int16_t, 2))(6L, (-10L)), 6L, (-10L), 6L, (-10L));
        int i;
        for (p_1545->g_184 = 0; (p_1545->g_184 >= 26); p_1545->g_184 = safe_add_func_uint8_t_u_u(p_1545->g_184, 1))
        { /* block id: 93 */
            for (l_233 = 0; (l_233 != 53); ++l_233)
            { /* block id: 96 */
                uint64_t l_243 = 4UL;
                for (p_49 = (-24); (p_49 != 23); p_49 = safe_add_func_int32_t_s_s(p_49, 2))
                { /* block id: 99 */
                    ++l_243;
                }
                return p_1545->g_131;
            }
        }
        for (l_233 = 20; (l_233 == 58); ++l_233)
        { /* block id: 107 */
            uint32_t l_248 = 0UL;
            struct S0 *l_250 = &l_249;
            int16_t *l_258 = &p_1545->g_259;
            (*l_231) = p_49;
            if (l_248)
                break;
            (*l_250) = l_249;
            (*l_231) = (((p_49 >= (safe_mul_func_int16_t_s_s(p_1545->g_219[7][9], l_242))) || (p_49 > l_242)) ^ (((*l_258) &= ((VECTOR(int16_t, 16))(p_1545->g_143.sd, ((((*l_250) , 0L) != ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_253.saa069c6987d56929)))).sa) != ((safe_mul_func_int8_t_s_s((((safe_div_func_int32_t_s_s((l_248 , 3L), 1L)) < p_49) ^ 0xCF12L), p_1545->g_138[8])) && (-4L))), (-7L), 0L, p_1545->g_2, (-1L), ((VECTOR(int16_t, 2))((-1L))), (-5L), p_1545->g_104.s1, 4L, 0x1C06L, ((VECTOR(int16_t, 2))(0x2AFDL)), 0L, (-2L))).s1) < (-10L)));
        }
    }
    else
    { /* block id: 114 */
        VECTOR(uint16_t, 4) l_265 = (VECTOR(uint16_t, 4))(0xF72FL, (VECTOR(uint16_t, 2))(0xF72FL, 0x523BL), 0x523BL);
        int32_t l_268[6] = {0x322F0480L,0x322F0480L,0x322F0480L,0x322F0480L,0x322F0480L,0x322F0480L};
        uint64_t l_275 = 8UL;
        VECTOR(uint16_t, 2) l_278 = (VECTOR(uint16_t, 2))(0xE14BL, 65529UL);
        VECTOR(uint32_t, 16) l_288 = (VECTOR(uint32_t, 16))(0x54ECB678L, (VECTOR(uint32_t, 4))(0x54ECB678L, (VECTOR(uint32_t, 2))(0x54ECB678L, 0x4888DD20L), 0x4888DD20L), 0x4888DD20L, 0x54ECB678L, 0x4888DD20L, (VECTOR(uint32_t, 2))(0x54ECB678L, 0x4888DD20L), (VECTOR(uint32_t, 2))(0x54ECB678L, 0x4888DD20L), 0x54ECB678L, 0x4888DD20L, 0x54ECB678L, 0x4888DD20L);
        uint64_t l_313[6][1][5] = {{{18446744073709551614UL,18446744073709551614UL,0x666A5D62FFCCE804L,0UL,0x88306B9E29AD657CL}},{{18446744073709551614UL,18446744073709551614UL,0x666A5D62FFCCE804L,0UL,0x88306B9E29AD657CL}},{{18446744073709551614UL,18446744073709551614UL,0x666A5D62FFCCE804L,0UL,0x88306B9E29AD657CL}},{{18446744073709551614UL,18446744073709551614UL,0x666A5D62FFCCE804L,0UL,0x88306B9E29AD657CL}},{{18446744073709551614UL,18446744073709551614UL,0x666A5D62FFCCE804L,0UL,0x88306B9E29AD657CL}},{{18446744073709551614UL,18446744073709551614UL,0x666A5D62FFCCE804L,0UL,0x88306B9E29AD657CL}}};
        uint8_t l_344 = 0xE4L;
        VECTOR(int16_t, 16) l_398 = (VECTOR(int16_t, 16))(0x77F5L, (VECTOR(int16_t, 4))(0x77F5L, (VECTOR(int16_t, 2))(0x77F5L, (-3L)), (-3L)), (-3L), 0x77F5L, (-3L), (VECTOR(int16_t, 2))(0x77F5L, (-3L)), (VECTOR(int16_t, 2))(0x77F5L, (-3L)), 0x77F5L, (-3L), 0x77F5L, (-3L));
        int32_t l_408 = 1L;
        VECTOR(int64_t, 4) l_428 = (VECTOR(int64_t, 4))(0x0F2B64C38B039C4FL, (VECTOR(int64_t, 2))(0x0F2B64C38B039C4FL, 1L), 1L);
        VECTOR(uint32_t, 16) l_441 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), 4294967295UL, 0UL, 4294967295UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 0UL, 4294967295UL, 0UL, 4294967295UL);
        uint64_t l_458 = 0x35B68B615D419C1FL;
        int32_t *l_478 = &p_1545->g_219[7][9];
        VECTOR(int8_t, 4) l_479 = (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, 2L), 2L);
        struct S0 *l_530 = &l_249;
        VECTOR(int32_t, 16) l_535 = (VECTOR(int32_t, 16))(0x216D865EL, (VECTOR(int32_t, 4))(0x216D865EL, (VECTOR(int32_t, 2))(0x216D865EL, 0x0DD28C9EL), 0x0DD28C9EL), 0x0DD28C9EL, 0x216D865EL, 0x0DD28C9EL, (VECTOR(int32_t, 2))(0x216D865EL, 0x0DD28C9EL), (VECTOR(int32_t, 2))(0x216D865EL, 0x0DD28C9EL), 0x216D865EL, 0x0DD28C9EL, 0x216D865EL, 0x0DD28C9EL);
        VECTOR(int32_t, 8) l_539 = (VECTOR(int32_t, 8))(0x60AFB89FL, (VECTOR(int32_t, 4))(0x60AFB89FL, (VECTOR(int32_t, 2))(0x60AFB89FL, 0L), 0L), 0L, 0x60AFB89FL, 0L);
        int i, j, k;
        if ((safe_add_func_int32_t_s_s((~(safe_lshift_func_uint16_t_u_u((l_264[0] == (p_1545->g_224.f2 , l_264[0])), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 8))(l_265.wwwxyxyx)).s64, ((VECTOR(uint16_t, 2))(l_266.s12)), ((VECTOR(uint16_t, 16))(l_267.s8d75c585e572430e)).s13))).xxxyyxyxyxyxxyxx)).s1))), (-1L))))
        { /* block id: 115 */
            int32_t l_269 = 0x29AA272FL;
            int32_t l_270 = 1L;
            int32_t l_271 = 0x6089E212L;
            int32_t l_272 = 0x0FD1AB54L;
            VECTOR(int32_t, 2) l_274 = (VECTOR(int32_t, 2))(2L, 1L);
            int16_t *l_280 = &l_249.f1;
            int8_t **l_303 = &p_1545->g_229[0][0][2];
            int8_t ***l_304 = &l_303;
            uint64_t *l_306[2];
            int32_t *l_316 = &l_269;
            VECTOR(int8_t, 8) l_327 = (VECTOR(int8_t, 8))(0x1FL, (VECTOR(int8_t, 4))(0x1FL, (VECTOR(int8_t, 2))(0x1FL, 0x2BL), 0x2BL), 0x2BL, 0x1FL, 0x2BL);
            int64_t ***l_340[8];
            int32_t *l_410 = &p_1545->g_9;
            VECTOR(uint16_t, 4) l_446 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xBC6DL), 0xBC6DL);
            struct S0 *l_462 = &p_1545->g_355;
            uint64_t **l_465 = &l_306[1];
            int i;
            for (i = 0; i < 2; i++)
                l_306[i] = (void*)0;
            for (i = 0; i < 8; i++)
                l_340[i] = &l_264[0];
            ++l_275;
            if ((((p_1545->g_172.w || (l_275 == ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_278.xyyyyxyx)))).s3365332152101653)).sc)) , p_1545->g_279) , ((p_1545->g_62.w = ((+(((*l_280) ^= 0x19AFL) < 0xB832L)) != ((*l_231) = l_271))) > (safe_mod_func_int32_t_s_s(l_271, (safe_mul_func_int16_t_s_s((((safe_mod_func_uint64_t_u_u(p_51, (l_269 = (safe_unary_minus_func_int32_t_s((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_288.s09ce)), ((VECTOR(uint32_t, 2))(4294967293UL, 4294967291UL)), 0x7EAD4369L, 0UL)).s50)).xyxy)).w | (safe_mod_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))((safe_sub_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((((*l_304) = l_303) != &p_52), FAKE_DIVERGE(p_1545->group_2_offset, get_group_id(2), 10))) != p_51), 0x446AL)), 6UL)) & p_1545->g_305), p_49)), ((VECTOR(uint64_t, 2))(1UL)), 0x0E7F460535F0EF49L)).yzzywwyzyzzwxzyz)), ((VECTOR(uint64_t, 16))(0x1FCC5D80700E3CF9L))))).s6, (*p_1545->g_165))), 6)), p_49)))))))) || 0L) <= 0x2CL), p_49)))))))
            { /* block id: 122 */
                uint64_t l_307 = 0x18B725B331EFC900L;
                int32_t l_310[10][10][2] = {{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}},{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}},{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}},{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}},{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}},{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}},{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}},{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}},{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}},{{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}}};
                int64_t ***l_341 = &l_264[0];
                uint64_t l_346 = 18446744073709551612UL;
                int16_t l_347 = 0x23B5L;
                struct S0 l_356 = {0x1EB063BAL,0L,0x04015D47L};
                int32_t l_364 = (-10L);
                int i, j, k;
                --l_307;
                if (l_274.x)
                { /* block id: 124 */
                    int16_t l_312 = (-1L);
                    --l_313[1][0][0];
                }
                else
                { /* block id: 126 */
                    VECTOR(int16_t, 8) l_332 = (VECTOR(int16_t, 8))(0x45E4L, (VECTOR(int16_t, 4))(0x45E4L, (VECTOR(int16_t, 2))(0x45E4L, 1L), 1L), 1L, 0x45E4L, 1L);
                    uint32_t l_333[2];
                    int64_t ****l_342[4] = {&l_341,&l_341,&l_341,&l_341};
                    uint32_t *l_343[4][6] = {{(void*)0,&l_333[1],&l_333[1],&p_1545->g_179,&l_333[1],&p_1545->g_179},{(void*)0,&l_333[1],&l_333[1],&p_1545->g_179,&l_333[1],&p_1545->g_179},{(void*)0,&l_333[1],&l_333[1],&p_1545->g_179,&l_333[1],&p_1545->g_179},{(void*)0,&l_333[1],&l_333[1],&p_1545->g_179,&l_333[1],&p_1545->g_179}};
                    uint8_t *l_345 = &p_1545->g_184;
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_333[i] = 0x930C7455L;
                    l_316 = (void*)0;
                    l_347 = (0x79L != (safe_mul_func_uint16_t_u_u((((safe_sub_func_uint64_t_u_u(((&l_303 == p_1545->g_321) < ((((*l_345) = (safe_sub_func_int8_t_s_s(((*p_1545->g_5) = (safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(l_327.s2411235244103504)).scd6c, ((VECTOR(uint8_t, 16))(p_1545->g_328.s1174310045211074)).s9c64))).zzyzzxyw, ((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(p_1545->g_329.xzwwwyxyzwwyxxzz)).lo, ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(l_330.yz)).xyyxxxxy, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(p_1545->g_331.yxyxyyxy)).s54)).xyxxyxyx))), ((VECTOR(int16_t, 8))(l_332.s10775361))))), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(0L, ((VECTOR(int16_t, 2))(0x05A5L, (-1L))), 0x06FAL, (l_333[0] != ((((((((p_1545->g_179 = (((safe_unary_minus_func_int64_t_s((safe_div_func_int64_t_s_s((((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 8))(p_1545->g_339.zxwzxxzy)).s6, ((*l_231) && p_51))) , l_340[3]) == (l_341 = l_341)), p_51)))) , 0x62L) || 0x33L)) , GROUP_DIVERGE(2, 1)) , p_49) && p_1545->g_339.z) , l_307) , 0x11075124L) , l_268[1]) ^ l_344)), (-8L), 0L, 0L))))))))))).s2, (-3L)))), 9UL))) , p_51) , p_1545->g_138[0])), l_346)) == 0xD117L) >= 3L), l_310[0][5][1])));
                }
                (*l_304) = &p_50;
                if ((((0x4718C706FE9D0C05L > ((((p_1545->g_259 & (safe_div_func_int16_t_s_s(((VECTOR(int16_t, 4))(1L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((-9L), 0x29B8L, (-8L), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_1545->g_350.s0132)).wyyxyxwy)).s15)), ((VECTOR(int16_t, 2))(0x1BC3L, 0x048CL)), 0x7A59L)).s52)), 0x423CL)).y, (safe_sub_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u(0L, p_1545->g_329.y)), ((((((((*l_231) == ((l_356 = p_1545->g_355) , (p_1545->g_63.z <= p_49))) & (safe_add_func_uint16_t_u_u(0x3642L, p_51))) , p_49) <= p_49) != 4294967292UL) || p_49) >= FAKE_DIVERGE(p_1545->group_0_offset, get_group_id(0), 10))))))) && 0L) <= p_51) , l_310[0][5][1])) , p_51) > (*l_231)))
                { /* block id: 136 */
                    int32_t l_362 = (-7L);
                    int32_t l_363 = (-6L);
                    struct S0 *l_397[7][4][2] = {{{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0}},{{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0}},{{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0}},{{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0}},{{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0}},{{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0}},{{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0},{&l_249,(void*)0}}};
                    VECTOR(uint8_t, 8) l_409 = (VECTOR(uint8_t, 8))(0x9BL, (VECTOR(uint8_t, 4))(0x9BL, (VECTOR(uint8_t, 2))(0x9BL, 0x6BL), 0x6BL), 0x6BL, 0x9BL, 0x6BL);
                    int32_t **l_411 = (void*)0;
                    int32_t *l_412[3][6] = {{&l_249.f0,&l_310[7][4][1],&l_269,&l_310[7][4][1],&l_249.f0,&l_249.f0},{&l_249.f0,&l_310[7][4][1],&l_269,&l_310[7][4][1],&l_249.f0,&l_249.f0},{&l_249.f0,&l_310[7][4][1],&l_269,&l_310[7][4][1],&l_249.f0,&l_249.f0}};
                    int32_t **l_413 = &l_232[8];
                    int i, j, k;
                    for (p_1545->g_179 = (-10); (p_1545->g_179 > 18); p_1545->g_179 = safe_add_func_uint16_t_u_u(p_1545->g_179, 4))
                    { /* block id: 139 */
                        int32_t l_361 = (-1L);
                        int32_t l_365 = (-1L);
                        int32_t **l_372[4];
                        uint32_t *l_379 = &p_1545->g_138[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_372[i] = &p_1545->g_370;
                        l_366++;
                        l_232[5] = &l_363;
                        (*l_231) &= ((l_362 >= (safe_div_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(p_51, (l_356.f0 &= ((++(*l_379)) && (safe_lshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s(((l_313[1][0][0] != ((VECTOR(int16_t, 16))((0x2117L > (safe_div_func_int64_t_s_s((((safe_lshift_func_uint8_t_u_u(((((FAKE_DIVERGE(p_1545->group_0_offset, get_group_id(0), 10) , p_1545->g_142.w) , (+(0x4BCB65FB20FB061BL && 0UL))) != (safe_mul_func_int8_t_s_s(((*p_1545->g_5) = ((p_51 <= l_307) != 5L)), l_275))) && 0x5894L), p_51)) == p_51) >= 1L), 0x2F64C0364BA10113L))), ((VECTOR(int16_t, 4))(0x6BF9L)), p_1545->g_64.y, p_1545->g_166, (-9L), p_1545->g_224.f2, 0x3822L, 0x7B84L, (-1L), ((VECTOR(int16_t, 4))(0x163CL)))).s1) == 7L), l_313[1][0][0])), l_356.f2)))))), p_1545->g_331.y)) > p_51), p_1545->g_62.y))) & p_49);
                    }
                    (*l_413) = (l_412[0][2] = (((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 16))(0x58587406L, ((VECTOR(int32_t, 2))((-8L), 0x7F07BE54L)), 0x5A157F70L, ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(0x05B2E132L, 0x6B99085DL)).yyyyxyxy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_392.yxyyxyyx)).s36)).yyxy)).xxzzywxw, ((VECTOR(int32_t, 16))(0x3C54D4B1L, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))((safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(l_363, (l_397[2][0][1] != &l_356))), (((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 2))(l_398.sc5)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x3C5CL, 0x498FL)), 0x4066L, 0x0805L, ((VECTOR(int16_t, 2))(p_1545->g_399.yy)), 0x5875L, (-5L))).s11))))).even ^ (safe_add_func_uint64_t_u_u((l_268[1] = (safe_rshift_func_int16_t_s_u((((p_51 && (safe_mul_func_int16_t_s_s(0L, (0xECAFL | (FAKE_DIVERGE(p_1545->global_0_offset, get_global_id(0), 10) != ((p_51 < (safe_add_func_uint16_t_u_u(0xD1D1L, l_268[2]))) != l_313[3][0][4])))))) || p_49) == (-10L)), p_51))), p_51))))), l_408, 0L, 0x7262A90AL)), ((VECTOR(int32_t, 4))((-2L)))))))).lo, ((VECTOR(int32_t, 2))(0x591A805EL))))), p_49, l_409.s0, 0x7984EDD9L, ((VECTOR(int32_t, 8))(0x0F9E35E6L)), 6L, 0x297D1059L)).odd))).s5510543626057447)).odd, ((VECTOR(int32_t, 8))(0x52158A77L))))), 0x00E88A51L, ((VECTOR(int32_t, 2))((-3L))), (-3L))), ((VECTOR(int32_t, 16))((-1L)))))).s4dae)).wwyyywwx, ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))(2L))))).s5 , l_410));
                    p_1545->g_414[3] = &p_1545->g_225;
                }
                else
                { /* block id: 151 */
                    (*p_1545->g_370) = (safe_lshift_func_uint8_t_u_s(p_49, 7));
                }
            }
            else
            { /* block id: 154 */
                int32_t *l_436 = &l_408;
                struct S0 *l_454 = &p_1545->g_355;
                struct S0 *l_456[7];
                struct S0 **l_455 = &l_456[0];
                int32_t l_457 = 0x192A97D9L;
                int32_t l_459 = 0x1AF673EAL;
                int i;
                for (i = 0; i < 7; i++)
                    l_456[i] = &l_249;
                l_459 &= ((*p_1545->g_370) &= (((safe_rshift_func_int8_t_s_s(((safe_mul_func_int8_t_s_s((safe_add_func_int16_t_s_s((safe_add_func_uint64_t_u_u((safe_add_func_uint64_t_u_u((!l_278.x), ((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(p_1545->g_427.xxyzxxwwyyxzzzzw)).s554c, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_428.wz)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 16))(p_1545->g_429.xyxyyxxxyyxxyxxx)).even, ((VECTOR(int64_t, 2))((-10L), 0x0E457E5FE2688400L)).yyyxyxxy, ((VECTOR(int64_t, 16))(p_1545->g_430.s8f382be3b456fd3d)).lo))).s40)), 0x4A1A9346788B6936L, (-1L))), 0x37E7DC1ECACDDE82L, (safe_div_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((((((*l_436) ^= ((0x75CC818CL < ((*l_316) = p_49)) < ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_435.s43662772)).s10)).lo)) , ((safe_mod_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(4294967295UL, ((((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 4))(0xCAC53151L, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_441.s5c)), (safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_446.xzzyxxzy)).s7410767163001363)).s5d)).odd, (((((VECTOR(int8_t, 8))(l_447.zxywyyzy)).s7 >= (((*p_1545->g_165) = (safe_add_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((l_454 != ((*l_455) = &p_1545->g_355)), 0x1CL)), 3)) < (l_316 == p_1545->g_370)), (*l_316)))) & 0x546D3699B928ACADL)) < p_1545->g_153.s5) == 0x75B7EA9CCEB4C5C7L))), (*l_231))), 0x6BABBA2CL, 1UL, 0x585D8488L, 4294967294UL, 0x45CD29F8L)).s31)), 4294967295UL)), ((VECTOR(uint32_t, 4))(4294967295UL))))).w , l_457) , p_1545->g_328.s1))), p_49)) == p_49)) > p_49) > p_49), p_49)), l_457)), (-1L), p_51, 0x6E93C78DE969EE9EL, (*p_1545->g_165), l_458, 0x108AFB61657508CAL, 0x5FEACC6DABD6932DL, (-1L))).s4d7a, ((VECTOR(int64_t, 4))(0x2535A205E78FEACBL))))).odd, ((VECTOR(int64_t, 2))(0x5ED1D40799E2454BL))))).odd)), p_1545->g_329.x)), l_265.y)), l_457)) < 0x80E9L), 1)) && p_1545->g_259) < l_268[3]));
            }
            (*l_231) = ((*p_1545->g_370) = ((safe_mul_func_int8_t_s_s(((*p_1545->g_5) = (l_462 == ((*p_1545->g_10) , &l_249))), 0x33L)) == p_49));
            (*p_1545->g_370) &= (safe_mul_func_uint16_t_u_u(((((VECTOR(int16_t, 16))(0x364CL, 0x0148L, ((l_264[0] == &p_1545->g_165) | p_49), ((((*l_465) = &p_51) != (p_1545->g_104.s8 , &p_1545->g_2)) <= ((((((p_1545->g_399.y , p_49) < (safe_add_func_uint8_t_u_u(((p_51 ^ p_1545->g_153.s5) && 0x3B82C3C5L), l_398.s6))) >= 0UL) ^ p_1545->g_339.z) == GROUP_DIVERGE(0, 1)) <= p_1545->g_9)), l_313[1][0][0], p_49, 0x71A1L, (-4L), 8L, ((VECTOR(int16_t, 2))(0x5191L)), p_1545->g_427.x, 0L, 0x0568L, 0x12ADL, 0L)).s8 ^ 1L) & (*l_410)), p_1545->g_166));
        }
        else
        { /* block id: 167 */
            int32_t l_477 = 1L;
            int16_t *l_480 = (void*)0;
            int16_t *l_481 = (void*)0;
            int16_t *l_482 = &l_249.f1;
            uint8_t *l_488 = (void*)0;
            uint8_t **l_487 = &l_488;
            int32_t l_489[5] = {1L,1L,1L,1L,1L};
            int8_t l_490 = 0x4DL;
            uint8_t l_491 = 0xD5L;
            struct S0 l_521[4] = {{-1L,4L,0x5FDD0516L},{-1L,4L,0x5FDD0516L},{-1L,4L,0x5FDD0516L},{-1L,4L,0x5FDD0516L}};
            VECTOR(int32_t, 16) l_536 = (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 1L), 1L), 1L, (-2L), 1L, (VECTOR(int32_t, 2))((-2L), 1L), (VECTOR(int32_t, 2))((-2L), 1L), (-2L), 1L, (-2L), 1L);
            int i;
            if (p_1545->g_2)
                goto lbl_468;
            (*p_1545->g_370) ^= (safe_div_func_uint64_t_u_u((l_288.s4 && ((*l_231) = ((safe_lshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(((((safe_mod_func_int64_t_s_s((~(-1L)), (l_477 = 0x16A87FF15702E983L))) >= (((l_478 != l_478) >= (((*l_482) = (FAKE_DIVERGE(p_1545->group_1_offset, get_group_id(1), 10) || ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_479.xzxw)).zwxxzxzwzywyyxzy)).sf)) , ((safe_mul_func_uint16_t_u_u(p_49, (((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(0xB5L, 0x65L)).hi, 7)) , &p_1545->g_184) == ((*l_487) = p_50)))) == ((VECTOR(uint32_t, 16))(p_1545->g_355.f2, ((VECTOR(uint32_t, 4))(4294967295UL)), 0xF433252FL, ((VECTOR(uint32_t, 2))(5UL)), 0xBBD9EE1AL, ((VECTOR(uint32_t, 4))(0x81C6CFBDL)), p_49, 4294967288UL, 7UL)).s6))) && p_1545->g_429.x)) | 0x7C126938L) < p_49), 7)), 4)) , 7UL))), l_489[4]));
            l_491++;
            for (p_1545->g_355.f1 = (-26); (p_1545->g_355.f1 != (-27)); p_1545->g_355.f1 = safe_sub_func_uint32_t_u_u(p_1545->g_355.f1, 8))
            { /* block id: 177 */
                struct S0 l_500 = {0L,-8L,-1L};
                int32_t *l_513[9] = {&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9,&p_1545->g_9};
                int64_t *****l_546 = (void*)0;
                int64_t *****l_547 = &p_1545->g_544;
                uint8_t l_561 = 2UL;
                int i;
                (1 + 1);
            }
        }
        --l_562;
    }
    return p_1545->g_565;
}


/* ------------------------------------------ */
/* 
 * reads : p_1545->g_18 p_1545->g_9 p_1545->g_2 p_1545->g_98 p_1545->g_104 p_1545->g_6 p_1545->g_10 p_1545->g_62 p_1545->g_101 p_1545->g_131 p_1545->g_138 p_1545->g_142 p_1545->g_143 p_1545->g_152 p_1545->g_153 p_1545->g_5 p_1545->g_63 p_1545->g_164 p_1545->g_172 p_1545->g_166 p_1545->g_179 p_1545->g_184 p_1545->g_64 p_1545->g_165 p_1545->g_224 p_1545->g_225
 * writes: p_1545->g_18 p_1545->g_9 p_1545->g_2 p_1545->g_5 p_1545->g_138 p_1545->g_143 p_1545->g_164 p_1545->g_63 p_1545->g_179 p_1545->g_104 p_1545->g_6 p_1545->g_219 p_1545->g_166 p_1545->g_224
 */
uint64_t  func_53(int8_t * p_54, int8_t * p_55, int32_t ** p_56, int8_t * p_57, struct S2 * p_1545)
{ /* block id: 13 */
    VECTOR(int32_t, 2) l_76 = (VECTOR(int32_t, 2))(0x17E1152FL, 0x42697258L);
    VECTOR(int64_t, 4) l_77 = (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 0x7F0D54DF9633F8A1L), 0x7F0D54DF9633F8A1L);
    int8_t *l_94 = &p_1545->g_6;
    int32_t **l_157 = (void*)0;
    int64_t **l_217 = &p_1545->g_165;
    int i;
    for (p_1545->g_18 = 14; (p_1545->g_18 >= 52); ++p_1545->g_18)
    { /* block id: 16 */
        int8_t *l_93[10][10][2] = {{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}},{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}},{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}},{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}},{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}},{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}},{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}},{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}},{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}},{{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6},{&p_1545->g_6,&p_1545->g_6}}};
        VECTOR(int64_t, 8) l_107 = (VECTOR(int64_t, 8))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x71313D863468C50AL), 0x71313D863468C50AL), 0x71313D863468C50AL, 3L, 0x71313D863468C50AL);
        int32_t l_111[8] = {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)};
        uint8_t l_123 = 0UL;
        int32_t *l_148 = &p_1545->g_9;
        int64_t *l_150 = (void*)0;
        int64_t **l_149 = &l_150;
        int64_t l_160 = 0x0295CE5FD0037571L;
        VECTOR(uint16_t, 8) l_169 = (VECTOR(uint16_t, 8))(0xBC37L, (VECTOR(uint16_t, 4))(0xBC37L, (VECTOR(uint16_t, 2))(0xBC37L, 65535UL), 65535UL), 65535UL, 0xBC37L, 65535UL);
        int i, j, k;
        if (l_76.y)
        { /* block id: 17 */
            int64_t *l_78 = (void*)0;
            int32_t l_79 = (-1L);
            int32_t * volatile *l_84 = &p_1545->g_8;
            VECTOR(int32_t, 4) l_114 = (VECTOR(int32_t, 4))(0x045CBE74L, (VECTOR(int32_t, 2))(0x045CBE74L, 1L), 1L);
            VECTOR(uint16_t, 16) l_132 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint16_t, 2))(1UL, 0UL), (VECTOR(uint16_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
            uint32_t l_144[5];
            int i;
            for (i = 0; i < 5; i++)
                l_144[i] = 0xF0BFBC33L;
            (**p_56) |= (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_77.xwzwyxxxxwxxyxxz)).hi)).s0 == (l_79 = l_77.w));
            for (p_1545->g_2 = 0; (p_1545->g_2 <= 53); p_1545->g_2++)
            { /* block id: 22 */
                int32_t * volatile *l_83 = &p_1545->g_10;
                int32_t * volatile **l_82[10][10][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                int64_t **l_87 = &l_78;
                int i, j, k;
                l_84 = &p_1545->g_10;
                (**p_56) = (**p_56);
                for (p_1545->g_9 = 0; (p_1545->g_9 >= 21); p_1545->g_9 = safe_add_func_uint64_t_u_u(p_1545->g_9, 1))
                { /* block id: 27 */
                    int64_t ***l_88 = &l_87;
                    int8_t **l_95 = &p_1545->g_5;
                    int16_t *l_105 = (void*)0;
                    int16_t *l_106 = (void*)0;
                    int32_t l_110 = 0x56A21748L;
                    (*l_88) = l_87;
                    l_111[4] = ((((safe_rshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u(((l_93[0][1][1] != ((*l_95) = l_94)) == (safe_sub_func_int8_t_s_s((&p_56 == p_1545->g_98), 0x37L))), ((safe_mul_func_int16_t_s_s((l_76.x = ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(p_1545->g_104.s84)))).even), p_1545->g_6)) & (((((VECTOR(int64_t, 8))(l_107.s10234660)).s5 & (((safe_mod_func_uint16_t_u_u(l_110, (**l_84))) >= (p_1545->g_18 , p_1545->g_62.y)) | p_1545->g_18)) && 0L) | (*p_54))))), 5)) , l_107.s5) < p_1545->g_9) <= l_110);
                    for (l_110 = (-18); (l_110 == 19); l_110++)
                    { /* block id: 34 */
                        return p_1545->g_101;
                    }
                    l_111[4] = l_114.z;
                }
            }
            for (p_1545->g_9 = 0; (p_1545->g_9 <= 26); p_1545->g_9 = safe_add_func_uint8_t_u_u(p_1545->g_9, 4))
            { /* block id: 42 */
                int16_t *l_124 = (void*)0;
                int16_t *l_125[3][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
                int32_t l_126 = 0x3F9E4261L;
                int32_t l_137 = 7L;
                uint16_t *l_139 = (void*)0;
                uint16_t *l_140 = (void*)0;
                int32_t l_141 = (-7L);
                int32_t *l_145 = &l_79;
                int i, j;
                l_111[0] = ((*l_145) ^= ((((safe_add_func_uint8_t_u_u((((VECTOR(uint64_t, 8))(18446744073709551609UL, 0x92BC7F3FAEFD05EAL, 7UL, (safe_rshift_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(((l_126 = l_123) , (safe_rshift_func_uint16_t_u_u((l_126 != (safe_sub_func_int64_t_s_s(l_126, p_1545->g_18))), (p_1545->g_131 , ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_132.s29)), 1UL, 0x1C12L)).odd)).yyxyxxxy)).s1)))), l_77.y)), (safe_lshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(l_137, (p_1545->g_138[0] |= (*p_57)))), (l_141 = GROUP_DIVERGE(0, 1)))))), 0x939B73AA9519D3F8L, ((VECTOR(uint64_t, 2))(p_1545->g_142.zw)), 0x74BA5FEA88DA45BDL)).s7 < ((VECTOR(uint64_t, 8))(p_1545->g_143.s6bed5e3e)).s5), ((VECTOR(uint8_t, 16))(2UL, p_1545->g_104.s6, 0x91L, ((VECTOR(uint8_t, 4))(0x74L)), ((VECTOR(uint8_t, 2))(0x19L)), ((VECTOR(uint8_t, 4))(248UL)), l_144[3], 3UL, 0x35L)).s6)) < 0xDE25L) | 0x94862D36C47714F3L) && 0x66ACL));
            }
        }
        else
        { /* block id: 49 */
            uint64_t *l_154 = (void*)0;
            int32_t **l_156 = &l_148;
            int32_t ***l_155 = &l_156;
            int64_t **l_163 = &l_150;
            int32_t l_185[3];
            int32_t l_189 = 0x60EDF683L;
            int32_t l_192 = (-5L);
            int32_t l_193 = (-4L);
            uint32_t l_194 = 0xD763C7C4L;
            VECTOR(uint16_t, 4) l_207 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xF60DL), 0xF60DL);
            int64_t *l_216 = &p_1545->g_166;
            VECTOR(uint8_t, 8) l_227 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xA2L), 0xA2L), 0xA2L, 0UL, 0xA2L);
            int i;
            for (i = 0; i < 3; i++)
                l_185[i] = 0x74A46D33L;
            if (((((VECTOR(int32_t, 2))(0L, 7L)).even < ((safe_mul_func_uint8_t_u_u(((l_148 == (*p_56)) | 0x95442C49E95A25E2L), (l_149 == ((safe_unary_minus_func_uint64_t_u((((p_1545->g_62.x & (((**p_56) , 5L) ^ (((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 8))(0x792482777045D918L, 18446744073709551612UL, ((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 8))(p_1545->g_152.xyxxxyxx)).s66, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(0x970E7AEBFCC9EAD4L, 0x49327924F713FB69L, 18446744073709551615UL, 0x2EDB8FDD8A0995B6L)))))).xyyzxyxzywyzxyxw, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1545->g_153.s01)), 8UL, 0xE69E52E5D3D61C39L)).even)), 0x78CBBD65683EFAFEL, 0x4198D20E6345F6C1L)).wwwzywzxzyywzwyx, ((VECTOR(uint64_t, 8))(((GROUP_DIVERGE(2, 1) == (GROUP_DIVERGE(0, 1) < (p_1545->g_143.sb = 18446744073709551615UL))) >= (((*l_155) = p_56) == l_157)), 18446744073709551607UL, 8UL, 0x547F478804CAD57FL, 0x7D5C1819652D5C02L, 1UL, 0x564F80C1E2637535L, 0x2E4834083B505883L)).s2062723155106704))).lo, ((VECTOR(uint64_t, 8))(18446744073709551615UL))))).s37)).xyyxyyxxyxxyyxyy)), ((VECTOR(uint64_t, 16))(18446744073709551610UL))))).hi)).s37, ((VECTOR(uint64_t, 2))(0x7E1CA6CF42512234L))))), ((VECTOR(uint64_t, 4))(1UL)))), ((VECTOR(uint64_t, 8))(0xC190A5E1540130CCL))))).s3 || 6L))) || (*p_1545->g_5)) & (*l_148)))) , &l_150)))) , (*l_148))) | p_1545->g_63.x))
            { /* block id: 52 */
                int16_t l_168 = 0x554CL;
                int32_t l_188 = 0L;
                int32_t l_190 = 2L;
                int32_t l_191 = 0x38DCB77CL;
                if ((*l_148))
                { /* block id: 53 */
                    int64_t ***l_167 = &p_1545->g_164;
                    uint16_t *l_170 = (void*)0;
                    uint16_t *l_171[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_171[i] = (void*)0;
                    if ((**p_56))
                        break;
                    (***l_155) = ((safe_mul_func_int8_t_s_s(l_160, (safe_mod_func_int16_t_s_s(((p_1545->g_2 & (((l_163 != ((*l_167) = p_1545->g_164)) | l_168) != ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(l_169.s75214534)).odd, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(1UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0xEFFEL, 0x3864L)).xyxx)), ((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 2))(65527UL, 65529UL)), (uint16_t)((VECTOR(uint16_t, 2))(0xCADFL, 65535UL)).lo))), (p_1545->g_63.x = (***l_155)), ((VECTOR(uint16_t, 8))(p_1545->g_172.zzyxxzwz)))))).sf8c7))).x)) == p_1545->g_172.x), (safe_mul_func_uint16_t_u_u(((((safe_add_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((p_1545->g_179 |= p_1545->g_166), (safe_div_func_uint8_t_u_u((p_1545->g_143.sb && 0UL), (*p_1545->g_5))))), (**l_156))) >= (***l_155)) != 249UL) , p_1545->g_184), 0x256AL)))))) >= l_185[2]);
                }
                else
                { /* block id: 59 */
                    int32_t *l_186 = &p_1545->g_9;
                    int32_t *l_187[5][4] = {{&l_111[4],&p_1545->g_9,(void*)0,&p_1545->g_9},{&l_111[4],&p_1545->g_9,(void*)0,&p_1545->g_9},{&l_111[4],&p_1545->g_9,(void*)0,&p_1545->g_9},{&l_111[4],&p_1545->g_9,(void*)0,&p_1545->g_9},{&l_111[4],&p_1545->g_9,(void*)0,&p_1545->g_9}};
                    uint64_t *l_197 = &p_1545->g_2;
                    int i, j;
                    --l_194;
                    (***l_155) = (((*l_197)++) , (-1L));
                }
                return p_1545->g_104.s5;
            }
            else
            { /* block id: 65 */
                VECTOR(int32_t, 16) l_200 = (VECTOR(int32_t, 16))(0x7E1CA12BL, (VECTOR(int32_t, 4))(0x7E1CA12BL, (VECTOR(int32_t, 2))(0x7E1CA12BL, (-1L)), (-1L)), (-1L), 0x7E1CA12BL, (-1L), (VECTOR(int32_t, 2))(0x7E1CA12BL, (-1L)), (VECTOR(int32_t, 2))(0x7E1CA12BL, (-1L)), 0x7E1CA12BL, (-1L), 0x7E1CA12BL, (-1L));
                int32_t *l_218 = &p_1545->g_219[7][9];
                int i;
                l_76.x |= ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_200.sf9)), 0x4FE024A9L, 0x2EB5C9B7L)), (safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(65531UL, 1UL)).xxxxyxxy)).hi)).w, ((~(((((*l_218) = ((p_1545->g_142.x != (18446744073709551609UL > (((*l_148) || (((safe_add_func_uint16_t_u_u(((((safe_add_func_uint8_t_u_u((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_207.ywxzyzyzywywwyzx)).s29)).lo && (p_1545->g_104.s0 ^= (0xE32F4612B06F0957L < 0UL))), ((safe_lshift_func_uint8_t_u_s((safe_div_func_int16_t_s_s(p_1545->g_64.x, (safe_sub_func_uint32_t_u_u(((((*l_94) = (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 2))(0x084CDB19L, 0L)).hi, (l_216 != (((func_34((*p_56), p_1545) , 0x09L) <= l_200.s1) , (*l_163)))))) , &l_150) == l_217), FAKE_DIVERGE(p_1545->global_0_offset, get_global_id(0), 10))))), p_1545->g_63.w)) , (*p_54)))) , &l_94) == (void*)0) > 0x249FL), (*l_148))) , (-1L)) | 0x784F3F3EL)) > 1L))) ^ (**l_156))) , (void*)0) == &p_56) , (**p_1545->g_164))) | 2UL))), ((VECTOR(int32_t, 2))(0x12EA2336L)), 2L)))))).s30, ((VECTOR(int32_t, 2))(0x487B5400L))))).xxyyyxyyxyyyxxxy, ((VECTOR(int32_t, 16))(1L)), ((VECTOR(int32_t, 16))(0L))))), ((VECTOR(int32_t, 16))(0x57560A1DL)), ((VECTOR(int32_t, 16))(0x63C8BA74L)))))))).s71, ((VECTOR(int32_t, 2))(3L))))).xxyyyyyx, ((VECTOR(int32_t, 8))(0x5FA8F663L)), ((VECTOR(int32_t, 8))(1L))))).odd, ((VECTOR(int32_t, 4))(3L)), ((VECTOR(int32_t, 4))(0x1467803CL))))).z;
            }
            for (p_1545->g_166 = 0; (p_1545->g_166 == (-15)); p_1545->g_166--)
            { /* block id: 73 */
                if ((***l_155))
                    break;
                if ((**p_56))
                    break;
                for (l_194 = 0; (l_194 <= 46); ++l_194)
                { /* block id: 78 */
                    (*p_1545->g_225) = p_1545->g_224;
                    l_227.s1 |= (safe_unary_minus_func_int32_t_s((~(**p_56))));
                }
            }
        }
        if ((**p_56))
            break;
        l_76.y &= (*p_1545->g_10);
    }
    return p_1545->g_138[0];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1546;
    struct S2* p_1545 = &c_1546;
    struct S2 c_1547 = {
        3UL, // p_1545->g_2
        (-1L), // p_1545->g_6
        &p_1545->g_6, // p_1545->g_5
        3L, // p_1545->g_9
        &p_1545->g_9, // p_1545->g_8
        &p_1545->g_9, // p_1545->g_10
        65534UL, // p_1545->g_18
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x89A0L), 0x89A0L), // p_1545->g_62
        (VECTOR(uint16_t, 4))(0x961FL, (VECTOR(uint16_t, 2))(0x961FL, 0xA978L), 0xA978L), // p_1545->g_63
        (VECTOR(uint8_t, 2))(0x4CL, 1UL), // p_1545->g_64
        6L, // p_1545->g_101
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1545->g_100
        {{{(void*)0,&p_1545->g_100[3][2],&p_1545->g_100[1][3]},{(void*)0,&p_1545->g_100[3][2],&p_1545->g_100[1][3]},{(void*)0,&p_1545->g_100[3][2],&p_1545->g_100[1][3]},{(void*)0,&p_1545->g_100[3][2],&p_1545->g_100[1][3]},{(void*)0,&p_1545->g_100[3][2],&p_1545->g_100[1][3]},{(void*)0,&p_1545->g_100[3][2],&p_1545->g_100[1][3]},{(void*)0,&p_1545->g_100[3][2],&p_1545->g_100[1][3]}}}, // p_1545->g_99
        &p_1545->g_99[0][1][0], // p_1545->g_98
        (VECTOR(int16_t, 16))(0x3C14L, (VECTOR(int16_t, 4))(0x3C14L, (VECTOR(int16_t, 2))(0x3C14L, 0L), 0L), 0L, 0x3C14L, 0L, (VECTOR(int16_t, 2))(0x3C14L, 0L), (VECTOR(int16_t, 2))(0x3C14L, 0L), 0x3C14L, 0L, 0x3C14L, 0L), // p_1545->g_104
        {0}, // p_1545->g_131
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1545->g_138
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL), // p_1545->g_142
        (VECTOR(uint64_t, 16))(0x8DF92E931907E6BEL, (VECTOR(uint64_t, 4))(0x8DF92E931907E6BEL, (VECTOR(uint64_t, 2))(0x8DF92E931907E6BEL, 0x8D429411D375A9F4L), 0x8D429411D375A9F4L), 0x8D429411D375A9F4L, 0x8DF92E931907E6BEL, 0x8D429411D375A9F4L, (VECTOR(uint64_t, 2))(0x8DF92E931907E6BEL, 0x8D429411D375A9F4L), (VECTOR(uint64_t, 2))(0x8DF92E931907E6BEL, 0x8D429411D375A9F4L), 0x8DF92E931907E6BEL, 0x8D429411D375A9F4L, 0x8DF92E931907E6BEL, 0x8D429411D375A9F4L), // p_1545->g_143
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551608UL), // p_1545->g_152
        (VECTOR(uint64_t, 8))(0x677AA029B2269D59L, (VECTOR(uint64_t, 4))(0x677AA029B2269D59L, (VECTOR(uint64_t, 2))(0x677AA029B2269D59L, 0x0A23445CF57BC30DL), 0x0A23445CF57BC30DL), 0x0A23445CF57BC30DL, 0x677AA029B2269D59L, 0x0A23445CF57BC30DL), // p_1545->g_153
        0x40E6373546301990L, // p_1545->g_166
        &p_1545->g_166, // p_1545->g_165
        &p_1545->g_165, // p_1545->g_164
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xC62DL), 0xC62DL), // p_1545->g_172
        0xEF561389L, // p_1545->g_179
        255UL, // p_1545->g_184
        {{0x33CC21D2L,(-1L),1L,2L,(-9L),0x33CC21D2L,2L,0x5E58A2F2L,2L,0x33CC21D2L},{0x33CC21D2L,(-1L),1L,2L,(-9L),0x33CC21D2L,2L,0x5E58A2F2L,2L,0x33CC21D2L},{0x33CC21D2L,(-1L),1L,2L,(-9L),0x33CC21D2L,2L,0x5E58A2F2L,2L,0x33CC21D2L},{0x33CC21D2L,(-1L),1L,2L,(-9L),0x33CC21D2L,2L,0x5E58A2F2L,2L,0x33CC21D2L},{0x33CC21D2L,(-1L),1L,2L,(-9L),0x33CC21D2L,2L,0x5E58A2F2L,2L,0x33CC21D2L},{0x33CC21D2L,(-1L),1L,2L,(-9L),0x33CC21D2L,2L,0x5E58A2F2L,2L,0x33CC21D2L},{0x33CC21D2L,(-1L),1L,2L,(-9L),0x33CC21D2L,2L,0x5E58A2F2L,2L,0x33CC21D2L},{0x33CC21D2L,(-1L),1L,2L,(-9L),0x33CC21D2L,2L,0x5E58A2F2L,2L,0x33CC21D2L},{0x33CC21D2L,(-1L),1L,2L,(-9L),0x33CC21D2L,2L,0x5E58A2F2L,2L,0x33CC21D2L}}, // p_1545->g_219
        {1L,-3L,1L}, // p_1545->g_224
        &p_1545->g_224, // p_1545->g_225
        0x3EL, // p_1545->g_230
        {{{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230},{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230}},{{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230},{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230}},{{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230},{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230}},{{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230},{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230}},{{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230},{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230}},{{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230},{(void*)0,&p_1545->g_230,(void*)0,&p_1545->g_230,&p_1545->g_230,&p_1545->g_230,(void*)0,&p_1545->g_230}}}, // p_1545->g_229
        0x668BL, // p_1545->g_259
        {0}, // p_1545->g_279
        0x33L, // p_1545->g_305
        (-2L), // p_1545->g_311
        (void*)0, // p_1545->g_322
        &p_1545->g_322, // p_1545->g_321
        (VECTOR(uint8_t, 8))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 255UL), 255UL), 255UL, 4UL, 255UL), // p_1545->g_328
        (VECTOR(int16_t, 4))(0x3930L, (VECTOR(int16_t, 2))(0x3930L, 0x3CC9L), 0x3CC9L), // p_1545->g_329
        (VECTOR(int16_t, 2))(6L, (-1L)), // p_1545->g_331
        (VECTOR(int16_t, 4))(0x2A80L, (VECTOR(int16_t, 2))(0x2A80L, 0L), 0L), // p_1545->g_339
        (VECTOR(int16_t, 16))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 0x037FL), 0x037FL), 0x037FL, (-6L), 0x037FL, (VECTOR(int16_t, 2))((-6L), 0x037FL), (VECTOR(int16_t, 2))((-6L), 0x037FL), (-6L), 0x037FL, (-6L), 0x037FL), // p_1545->g_350
        {0L,0x555BL,0x729135A2L}, // p_1545->g_355
        &p_1545->g_355.f0, // p_1545->g_370
        {&p_1545->g_370,&p_1545->g_370,&p_1545->g_370}, // p_1545->g_369
        (void*)0, // p_1545->g_371
        (VECTOR(int16_t, 2))((-1L), 1L), // p_1545->g_399
        {&p_1545->g_225,&p_1545->g_225,&p_1545->g_225,&p_1545->g_225}, // p_1545->g_414
        (VECTOR(int64_t, 4))(0x08C62630B4D22650L, (VECTOR(int64_t, 2))(0x08C62630B4D22650L, 0x175E57B1A14CBB54L), 0x175E57B1A14CBB54L), // p_1545->g_427
        (VECTOR(int64_t, 2))(0L, 0x10CC3882F1D3784BL), // p_1545->g_429
        (VECTOR(int64_t, 16))(0x75E38AE903ED131BL, (VECTOR(int64_t, 4))(0x75E38AE903ED131BL, (VECTOR(int64_t, 2))(0x75E38AE903ED131BL, 0x6D088000941B7085L), 0x6D088000941B7085L), 0x6D088000941B7085L, 0x75E38AE903ED131BL, 0x6D088000941B7085L, (VECTOR(int64_t, 2))(0x75E38AE903ED131BL, 0x6D088000941B7085L), (VECTOR(int64_t, 2))(0x75E38AE903ED131BL, 0x6D088000941B7085L), 0x75E38AE903ED131BL, 0x6D088000941B7085L, 0x75E38AE903ED131BL, 0x6D088000941B7085L), // p_1545->g_430
        {4294967290UL,4294967290UL,4294967290UL,4294967290UL}, // p_1545->g_522
        (VECTOR(int32_t, 16))(0x484D1710L, (VECTOR(int32_t, 4))(0x484D1710L, (VECTOR(int32_t, 2))(0x484D1710L, (-7L)), (-7L)), (-7L), 0x484D1710L, (-7L), (VECTOR(int32_t, 2))(0x484D1710L, (-7L)), (VECTOR(int32_t, 2))(0x484D1710L, (-7L)), 0x484D1710L, (-7L), 0x484D1710L, (-7L)), // p_1545->g_525
        {{{-1L,0x0872L,1L},{1L,1L,5L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{0L,-6L,-9L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{1L,1L,5L},{-1L,0x0872L,1L}},{{-1L,0x0872L,1L},{1L,1L,5L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{0L,-6L,-9L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{1L,1L,5L},{-1L,0x0872L,1L}},{{-1L,0x0872L,1L},{1L,1L,5L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{0L,-6L,-9L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{1L,1L,5L},{-1L,0x0872L,1L}},{{-1L,0x0872L,1L},{1L,1L,5L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{0L,-6L,-9L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{1L,1L,5L},{-1L,0x0872L,1L}},{{-1L,0x0872L,1L},{1L,1L,5L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{0L,-6L,-9L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{1L,1L,5L},{-1L,0x0872L,1L}},{{-1L,0x0872L,1L},{1L,1L,5L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{0L,-6L,-9L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{1L,1L,5L},{-1L,0x0872L,1L}},{{-1L,0x0872L,1L},{1L,1L,5L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{0L,-6L,-9L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{1L,1L,5L},{-1L,0x0872L,1L}},{{-1L,0x0872L,1L},{1L,1L,5L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{0L,-6L,-9L},{0x6706E883L,0x6A96L,0x3EE35C9AL},{1L,1L,5L},{-1L,0x0872L,1L}}}, // p_1545->g_533
        &p_1545->g_533[6][5], // p_1545->g_532
        (void*)0, // p_1545->g_543
        &p_1545->g_543, // p_1545->g_542
        &p_1545->g_542, // p_1545->g_541
        &p_1545->g_541, // p_1545->g_540
        &p_1545->g_164, // p_1545->g_545
        &p_1545->g_545, // p_1545->g_544
        (VECTOR(int64_t, 2))((-1L), 7L), // p_1545->g_554
        {0}, // p_1545->g_565
        (void*)0, // p_1545->g_577
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x1715E201F50FF313L), 0x1715E201F50FF313L), 0x1715E201F50FF313L, (-1L), 0x1715E201F50FF313L, (VECTOR(int64_t, 2))((-1L), 0x1715E201F50FF313L), (VECTOR(int64_t, 2))((-1L), 0x1715E201F50FF313L), (-1L), 0x1715E201F50FF313L, (-1L), 0x1715E201F50FF313L), // p_1545->g_591
        &p_1545->g_532, // p_1545->g_597
        &p_1545->g_533[6][5], // p_1545->g_599
        &p_1545->g_370, // p_1545->g_660
        &p_1545->g_533[6][5].f1, // p_1545->g_664
        &p_1545->g_664, // p_1545->g_663
        &p_1545->g_663, // p_1545->g_665
        &p_1545->g_370, // p_1545->g_670
        &p_1545->g_9, // p_1545->g_685
        &p_1545->g_685, // p_1545->g_684
        (VECTOR(int16_t, 2))(0x733EL, 0x0606L), // p_1545->g_692
        &p_1545->g_370, // p_1545->g_702
        &p_1545->g_702, // p_1545->g_701
        (void*)0, // p_1545->g_726
        (VECTOR(int8_t, 2))(2L, 0x4EL), // p_1545->g_783
        (VECTOR(uint32_t, 16))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 0xF0A2C3AAL), 0xF0A2C3AAL), 0xF0A2C3AAL, 4294967289UL, 0xF0A2C3AAL, (VECTOR(uint32_t, 2))(4294967289UL, 0xF0A2C3AAL), (VECTOR(uint32_t, 2))(4294967289UL, 0xF0A2C3AAL), 4294967289UL, 0xF0A2C3AAL, 4294967289UL, 0xF0A2C3AAL), // p_1545->g_787
        (VECTOR(uint32_t, 2))(4294967295UL, 0x16851E2CL), // p_1545->g_816
        (VECTOR(uint16_t, 8))(0x1AD1L, (VECTOR(uint16_t, 4))(0x1AD1L, (VECTOR(uint16_t, 2))(0x1AD1L, 0UL), 0UL), 0UL, 0x1AD1L, 0UL), // p_1545->g_820
        {0}, // p_1545->g_833
        (VECTOR(uint8_t, 2))(255UL, 0x6CL), // p_1545->g_849
        &p_1545->g_179, // p_1545->g_875
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x63C7F844F84C54B0L), 0x63C7F844F84C54B0L), 0x63C7F844F84C54B0L, (-1L), 0x63C7F844F84C54B0L, (VECTOR(int64_t, 2))((-1L), 0x63C7F844F84C54B0L), (VECTOR(int64_t, 2))((-1L), 0x63C7F844F84C54B0L), (-1L), 0x63C7F844F84C54B0L, (-1L), 0x63C7F844F84C54B0L), // p_1545->g_914
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x57EFC202L), 0x57EFC202L), 0x57EFC202L, 1L, 0x57EFC202L), // p_1545->g_915
        (void*)0, // p_1545->g_925
        (VECTOR(uint32_t, 2))(4294967290UL, 0x427DAF0EL), // p_1545->g_954
        (VECTOR(int8_t, 2))(1L, 0x52L), // p_1545->g_962
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L), // p_1545->g_964
        &p_1545->g_532, // p_1545->g_984
        &p_1545->g_984, // p_1545->g_983
        (VECTOR(int16_t, 2))(0x1F4EL, 0L), // p_1545->g_999
        (VECTOR(int16_t, 2))(0x519BL, 0x6143L), // p_1545->g_1005
        (VECTOR(int32_t, 8))(0x533851D5L, (VECTOR(int32_t, 4))(0x533851D5L, (VECTOR(int32_t, 2))(0x533851D5L, (-7L)), (-7L)), (-7L), 0x533851D5L, (-7L)), // p_1545->g_1008
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x1D34L), 0x1D34L), 0x1D34L, 0L, 0x1D34L, (VECTOR(int16_t, 2))(0L, 0x1D34L), (VECTOR(int16_t, 2))(0L, 0x1D34L), 0L, 0x1D34L, 0L, 0x1D34L), // p_1545->g_1043
        (VECTOR(uint32_t, 16))(0x4DEAD8D1L, (VECTOR(uint32_t, 4))(0x4DEAD8D1L, (VECTOR(uint32_t, 2))(0x4DEAD8D1L, 4294967292UL), 4294967292UL), 4294967292UL, 0x4DEAD8D1L, 4294967292UL, (VECTOR(uint32_t, 2))(0x4DEAD8D1L, 4294967292UL), (VECTOR(uint32_t, 2))(0x4DEAD8D1L, 4294967292UL), 0x4DEAD8D1L, 4294967292UL, 0x4DEAD8D1L, 4294967292UL), // p_1545->g_1046
        0x8BL, // p_1545->g_1053
        (VECTOR(int32_t, 4))(0x5CFAEC78L, (VECTOR(int32_t, 2))(0x5CFAEC78L, 0x17EFD9B5L), 0x17EFD9B5L), // p_1545->g_1080
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x1422L), 0x1422L), 0x1422L, 65535UL, 0x1422L, (VECTOR(uint16_t, 2))(65535UL, 0x1422L), (VECTOR(uint16_t, 2))(65535UL, 0x1422L), 65535UL, 0x1422L, 65535UL, 0x1422L), // p_1545->g_1085
        (void*)0, // p_1545->g_1087
        {&p_1545->g_355,(void*)0,&p_1545->g_355,&p_1545->g_355,(void*)0,&p_1545->g_355,&p_1545->g_355,(void*)0,&p_1545->g_355,&p_1545->g_355}, // p_1545->g_1089
        (void*)0, // p_1545->g_1090
        &p_1545->g_355, // p_1545->g_1092
        &p_1545->g_1053, // p_1545->g_1100
        &p_1545->g_1100, // p_1545->g_1099
        (VECTOR(int32_t, 4))(0x2E389CE3L, (VECTOR(int32_t, 2))(0x2E389CE3L, 1L), 1L), // p_1545->g_1105
        (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 1L), 1L), 1L, (-7L), 1L, (VECTOR(int32_t, 2))((-7L), 1L), (VECTOR(int32_t, 2))((-7L), 1L), (-7L), 1L, (-7L), 1L), // p_1545->g_1108
        (VECTOR(int8_t, 8))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 8L), 8L), 8L, 8L, 8L), // p_1545->g_1113
        0xDB91A303L, // p_1545->g_1130
        (void*)0, // p_1545->g_1153
        &p_1545->g_1153, // p_1545->g_1152
        &p_1545->g_1152, // p_1545->g_1151
        (VECTOR(uint32_t, 4))(0x94E3AEDDL, (VECTOR(uint32_t, 2))(0x94E3AEDDL, 0xB5B9E9D8L), 0xB5B9E9D8L), // p_1545->g_1176
        (VECTOR(int64_t, 16))((-4L), (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x5BE43B2C70ACEF66L), 0x5BE43B2C70ACEF66L), 0x5BE43B2C70ACEF66L, (-4L), 0x5BE43B2C70ACEF66L, (VECTOR(int64_t, 2))((-4L), 0x5BE43B2C70ACEF66L), (VECTOR(int64_t, 2))((-4L), 0x5BE43B2C70ACEF66L), (-4L), 0x5BE43B2C70ACEF66L, (-4L), 0x5BE43B2C70ACEF66L), // p_1545->g_1189
        (VECTOR(int64_t, 2))(8L, 1L), // p_1545->g_1190
        {{{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983}},{{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983},{&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,&p_1545->g_983,(void*)0,&p_1545->g_983,&p_1545->g_983}}}, // p_1545->g_1233
        &p_1545->g_1233[0][3][2], // p_1545->g_1232
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int8_t, 2))((-1L), 1L), (VECTOR(int8_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L), // p_1545->g_1247
        1L, // p_1545->g_1333
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1545->g_1346
        &p_1545->g_1346[6][0], // p_1545->g_1345
        (VECTOR(uint64_t, 2))(1UL, 0UL), // p_1545->g_1360
        (VECTOR(uint16_t, 2))(4UL, 0UL), // p_1545->g_1380
        {{0UL,0xB4BCCDA9D04CD79CL,0xB3DCC47AB03B5D73L,0x4AA602F19F79700BL,0xB3DCC47AB03B5D73L,0xB4BCCDA9D04CD79CL,0UL,0x78EE55D2C5FD7E52L,0x428112E872E80457L},{0UL,0xB4BCCDA9D04CD79CL,0xB3DCC47AB03B5D73L,0x4AA602F19F79700BL,0xB3DCC47AB03B5D73L,0xB4BCCDA9D04CD79CL,0UL,0x78EE55D2C5FD7E52L,0x428112E872E80457L},{0UL,0xB4BCCDA9D04CD79CL,0xB3DCC47AB03B5D73L,0x4AA602F19F79700BL,0xB3DCC47AB03B5D73L,0xB4BCCDA9D04CD79CL,0UL,0x78EE55D2C5FD7E52L,0x428112E872E80457L}}, // p_1545->g_1392
        (-7L), // p_1545->g_1402
        (VECTOR(uint16_t, 16))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 1UL), 1UL), 1UL, 65529UL, 1UL, (VECTOR(uint16_t, 2))(65529UL, 1UL), (VECTOR(uint16_t, 2))(65529UL, 1UL), 65529UL, 1UL, 65529UL, 1UL), // p_1545->g_1440
        0x7F188788D06E46CBL, // p_1545->g_1454
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x678DC403L), 0x678DC403L), 0x678DC403L, (-1L), 0x678DC403L, (VECTOR(int32_t, 2))((-1L), 0x678DC403L), (VECTOR(int32_t, 2))((-1L), 0x678DC403L), (-1L), 0x678DC403L, (-1L), 0x678DC403L), // p_1545->g_1462
        &p_1545->g_138[0], // p_1545->g_1469
        1L, // p_1545->g_1491
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_1545->g_1511
        (VECTOR(int64_t, 16))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0x426E4911E65105E9L), 0x426E4911E65105E9L), 0x426E4911E65105E9L, (-5L), 0x426E4911E65105E9L, (VECTOR(int64_t, 2))((-5L), 0x426E4911E65105E9L), (VECTOR(int64_t, 2))((-5L), 0x426E4911E65105E9L), (-5L), 0x426E4911E65105E9L, (-5L), 0x426E4911E65105E9L), // p_1545->g_1522
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x3D654D6054213EC9L), 0x3D654D6054213EC9L), 0x3D654D6054213EC9L, 0L, 0x3D654D6054213EC9L), // p_1545->g_1525
        sequence_input[get_global_id(0)], // p_1545->global_0_offset
        sequence_input[get_global_id(1)], // p_1545->global_1_offset
        sequence_input[get_global_id(2)], // p_1545->global_2_offset
        sequence_input[get_local_id(0)], // p_1545->local_0_offset
        sequence_input[get_local_id(1)], // p_1545->local_1_offset
        sequence_input[get_local_id(2)], // p_1545->local_2_offset
        sequence_input[get_group_id(0)], // p_1545->group_0_offset
        sequence_input[get_group_id(1)], // p_1545->group_1_offset
        sequence_input[get_group_id(2)], // p_1545->group_2_offset
    };
    c_1546 = c_1547;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1545);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1545->g_2, "p_1545->g_2", print_hash_value);
    transparent_crc(p_1545->g_6, "p_1545->g_6", print_hash_value);
    transparent_crc(p_1545->g_9, "p_1545->g_9", print_hash_value);
    transparent_crc(p_1545->g_18, "p_1545->g_18", print_hash_value);
    transparent_crc(p_1545->g_62.x, "p_1545->g_62.x", print_hash_value);
    transparent_crc(p_1545->g_62.y, "p_1545->g_62.y", print_hash_value);
    transparent_crc(p_1545->g_62.z, "p_1545->g_62.z", print_hash_value);
    transparent_crc(p_1545->g_62.w, "p_1545->g_62.w", print_hash_value);
    transparent_crc(p_1545->g_63.x, "p_1545->g_63.x", print_hash_value);
    transparent_crc(p_1545->g_63.y, "p_1545->g_63.y", print_hash_value);
    transparent_crc(p_1545->g_63.z, "p_1545->g_63.z", print_hash_value);
    transparent_crc(p_1545->g_63.w, "p_1545->g_63.w", print_hash_value);
    transparent_crc(p_1545->g_64.x, "p_1545->g_64.x", print_hash_value);
    transparent_crc(p_1545->g_64.y, "p_1545->g_64.y", print_hash_value);
    transparent_crc(p_1545->g_101, "p_1545->g_101", print_hash_value);
    transparent_crc(p_1545->g_104.s0, "p_1545->g_104.s0", print_hash_value);
    transparent_crc(p_1545->g_104.s1, "p_1545->g_104.s1", print_hash_value);
    transparent_crc(p_1545->g_104.s2, "p_1545->g_104.s2", print_hash_value);
    transparent_crc(p_1545->g_104.s3, "p_1545->g_104.s3", print_hash_value);
    transparent_crc(p_1545->g_104.s4, "p_1545->g_104.s4", print_hash_value);
    transparent_crc(p_1545->g_104.s5, "p_1545->g_104.s5", print_hash_value);
    transparent_crc(p_1545->g_104.s6, "p_1545->g_104.s6", print_hash_value);
    transparent_crc(p_1545->g_104.s7, "p_1545->g_104.s7", print_hash_value);
    transparent_crc(p_1545->g_104.s8, "p_1545->g_104.s8", print_hash_value);
    transparent_crc(p_1545->g_104.s9, "p_1545->g_104.s9", print_hash_value);
    transparent_crc(p_1545->g_104.sa, "p_1545->g_104.sa", print_hash_value);
    transparent_crc(p_1545->g_104.sb, "p_1545->g_104.sb", print_hash_value);
    transparent_crc(p_1545->g_104.sc, "p_1545->g_104.sc", print_hash_value);
    transparent_crc(p_1545->g_104.sd, "p_1545->g_104.sd", print_hash_value);
    transparent_crc(p_1545->g_104.se, "p_1545->g_104.se", print_hash_value);
    transparent_crc(p_1545->g_104.sf, "p_1545->g_104.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1545->g_138[i], "p_1545->g_138[i]", print_hash_value);

    }
    transparent_crc(p_1545->g_142.x, "p_1545->g_142.x", print_hash_value);
    transparent_crc(p_1545->g_142.y, "p_1545->g_142.y", print_hash_value);
    transparent_crc(p_1545->g_142.z, "p_1545->g_142.z", print_hash_value);
    transparent_crc(p_1545->g_142.w, "p_1545->g_142.w", print_hash_value);
    transparent_crc(p_1545->g_143.s0, "p_1545->g_143.s0", print_hash_value);
    transparent_crc(p_1545->g_143.s1, "p_1545->g_143.s1", print_hash_value);
    transparent_crc(p_1545->g_143.s2, "p_1545->g_143.s2", print_hash_value);
    transparent_crc(p_1545->g_143.s3, "p_1545->g_143.s3", print_hash_value);
    transparent_crc(p_1545->g_143.s4, "p_1545->g_143.s4", print_hash_value);
    transparent_crc(p_1545->g_143.s5, "p_1545->g_143.s5", print_hash_value);
    transparent_crc(p_1545->g_143.s6, "p_1545->g_143.s6", print_hash_value);
    transparent_crc(p_1545->g_143.s7, "p_1545->g_143.s7", print_hash_value);
    transparent_crc(p_1545->g_143.s8, "p_1545->g_143.s8", print_hash_value);
    transparent_crc(p_1545->g_143.s9, "p_1545->g_143.s9", print_hash_value);
    transparent_crc(p_1545->g_143.sa, "p_1545->g_143.sa", print_hash_value);
    transparent_crc(p_1545->g_143.sb, "p_1545->g_143.sb", print_hash_value);
    transparent_crc(p_1545->g_143.sc, "p_1545->g_143.sc", print_hash_value);
    transparent_crc(p_1545->g_143.sd, "p_1545->g_143.sd", print_hash_value);
    transparent_crc(p_1545->g_143.se, "p_1545->g_143.se", print_hash_value);
    transparent_crc(p_1545->g_143.sf, "p_1545->g_143.sf", print_hash_value);
    transparent_crc(p_1545->g_152.x, "p_1545->g_152.x", print_hash_value);
    transparent_crc(p_1545->g_152.y, "p_1545->g_152.y", print_hash_value);
    transparent_crc(p_1545->g_153.s0, "p_1545->g_153.s0", print_hash_value);
    transparent_crc(p_1545->g_153.s1, "p_1545->g_153.s1", print_hash_value);
    transparent_crc(p_1545->g_153.s2, "p_1545->g_153.s2", print_hash_value);
    transparent_crc(p_1545->g_153.s3, "p_1545->g_153.s3", print_hash_value);
    transparent_crc(p_1545->g_153.s4, "p_1545->g_153.s4", print_hash_value);
    transparent_crc(p_1545->g_153.s5, "p_1545->g_153.s5", print_hash_value);
    transparent_crc(p_1545->g_153.s6, "p_1545->g_153.s6", print_hash_value);
    transparent_crc(p_1545->g_153.s7, "p_1545->g_153.s7", print_hash_value);
    transparent_crc(p_1545->g_166, "p_1545->g_166", print_hash_value);
    transparent_crc(p_1545->g_172.x, "p_1545->g_172.x", print_hash_value);
    transparent_crc(p_1545->g_172.y, "p_1545->g_172.y", print_hash_value);
    transparent_crc(p_1545->g_172.z, "p_1545->g_172.z", print_hash_value);
    transparent_crc(p_1545->g_172.w, "p_1545->g_172.w", print_hash_value);
    transparent_crc(p_1545->g_179, "p_1545->g_179", print_hash_value);
    transparent_crc(p_1545->g_184, "p_1545->g_184", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1545->g_219[i][j], "p_1545->g_219[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1545->g_224.f0, "p_1545->g_224.f0", print_hash_value);
    transparent_crc(p_1545->g_224.f1, "p_1545->g_224.f1", print_hash_value);
    transparent_crc(p_1545->g_224.f2, "p_1545->g_224.f2", print_hash_value);
    transparent_crc(p_1545->g_230, "p_1545->g_230", print_hash_value);
    transparent_crc(p_1545->g_259, "p_1545->g_259", print_hash_value);
    transparent_crc(p_1545->g_305, "p_1545->g_305", print_hash_value);
    transparent_crc(p_1545->g_311, "p_1545->g_311", print_hash_value);
    transparent_crc(p_1545->g_328.s0, "p_1545->g_328.s0", print_hash_value);
    transparent_crc(p_1545->g_328.s1, "p_1545->g_328.s1", print_hash_value);
    transparent_crc(p_1545->g_328.s2, "p_1545->g_328.s2", print_hash_value);
    transparent_crc(p_1545->g_328.s3, "p_1545->g_328.s3", print_hash_value);
    transparent_crc(p_1545->g_328.s4, "p_1545->g_328.s4", print_hash_value);
    transparent_crc(p_1545->g_328.s5, "p_1545->g_328.s5", print_hash_value);
    transparent_crc(p_1545->g_328.s6, "p_1545->g_328.s6", print_hash_value);
    transparent_crc(p_1545->g_328.s7, "p_1545->g_328.s7", print_hash_value);
    transparent_crc(p_1545->g_329.x, "p_1545->g_329.x", print_hash_value);
    transparent_crc(p_1545->g_329.y, "p_1545->g_329.y", print_hash_value);
    transparent_crc(p_1545->g_329.z, "p_1545->g_329.z", print_hash_value);
    transparent_crc(p_1545->g_329.w, "p_1545->g_329.w", print_hash_value);
    transparent_crc(p_1545->g_331.x, "p_1545->g_331.x", print_hash_value);
    transparent_crc(p_1545->g_331.y, "p_1545->g_331.y", print_hash_value);
    transparent_crc(p_1545->g_339.x, "p_1545->g_339.x", print_hash_value);
    transparent_crc(p_1545->g_339.y, "p_1545->g_339.y", print_hash_value);
    transparent_crc(p_1545->g_339.z, "p_1545->g_339.z", print_hash_value);
    transparent_crc(p_1545->g_339.w, "p_1545->g_339.w", print_hash_value);
    transparent_crc(p_1545->g_350.s0, "p_1545->g_350.s0", print_hash_value);
    transparent_crc(p_1545->g_350.s1, "p_1545->g_350.s1", print_hash_value);
    transparent_crc(p_1545->g_350.s2, "p_1545->g_350.s2", print_hash_value);
    transparent_crc(p_1545->g_350.s3, "p_1545->g_350.s3", print_hash_value);
    transparent_crc(p_1545->g_350.s4, "p_1545->g_350.s4", print_hash_value);
    transparent_crc(p_1545->g_350.s5, "p_1545->g_350.s5", print_hash_value);
    transparent_crc(p_1545->g_350.s6, "p_1545->g_350.s6", print_hash_value);
    transparent_crc(p_1545->g_350.s7, "p_1545->g_350.s7", print_hash_value);
    transparent_crc(p_1545->g_350.s8, "p_1545->g_350.s8", print_hash_value);
    transparent_crc(p_1545->g_350.s9, "p_1545->g_350.s9", print_hash_value);
    transparent_crc(p_1545->g_350.sa, "p_1545->g_350.sa", print_hash_value);
    transparent_crc(p_1545->g_350.sb, "p_1545->g_350.sb", print_hash_value);
    transparent_crc(p_1545->g_350.sc, "p_1545->g_350.sc", print_hash_value);
    transparent_crc(p_1545->g_350.sd, "p_1545->g_350.sd", print_hash_value);
    transparent_crc(p_1545->g_350.se, "p_1545->g_350.se", print_hash_value);
    transparent_crc(p_1545->g_350.sf, "p_1545->g_350.sf", print_hash_value);
    transparent_crc(p_1545->g_355.f0, "p_1545->g_355.f0", print_hash_value);
    transparent_crc(p_1545->g_355.f1, "p_1545->g_355.f1", print_hash_value);
    transparent_crc(p_1545->g_355.f2, "p_1545->g_355.f2", print_hash_value);
    transparent_crc(p_1545->g_399.x, "p_1545->g_399.x", print_hash_value);
    transparent_crc(p_1545->g_399.y, "p_1545->g_399.y", print_hash_value);
    transparent_crc(p_1545->g_427.x, "p_1545->g_427.x", print_hash_value);
    transparent_crc(p_1545->g_427.y, "p_1545->g_427.y", print_hash_value);
    transparent_crc(p_1545->g_427.z, "p_1545->g_427.z", print_hash_value);
    transparent_crc(p_1545->g_427.w, "p_1545->g_427.w", print_hash_value);
    transparent_crc(p_1545->g_429.x, "p_1545->g_429.x", print_hash_value);
    transparent_crc(p_1545->g_429.y, "p_1545->g_429.y", print_hash_value);
    transparent_crc(p_1545->g_430.s0, "p_1545->g_430.s0", print_hash_value);
    transparent_crc(p_1545->g_430.s1, "p_1545->g_430.s1", print_hash_value);
    transparent_crc(p_1545->g_430.s2, "p_1545->g_430.s2", print_hash_value);
    transparent_crc(p_1545->g_430.s3, "p_1545->g_430.s3", print_hash_value);
    transparent_crc(p_1545->g_430.s4, "p_1545->g_430.s4", print_hash_value);
    transparent_crc(p_1545->g_430.s5, "p_1545->g_430.s5", print_hash_value);
    transparent_crc(p_1545->g_430.s6, "p_1545->g_430.s6", print_hash_value);
    transparent_crc(p_1545->g_430.s7, "p_1545->g_430.s7", print_hash_value);
    transparent_crc(p_1545->g_430.s8, "p_1545->g_430.s8", print_hash_value);
    transparent_crc(p_1545->g_430.s9, "p_1545->g_430.s9", print_hash_value);
    transparent_crc(p_1545->g_430.sa, "p_1545->g_430.sa", print_hash_value);
    transparent_crc(p_1545->g_430.sb, "p_1545->g_430.sb", print_hash_value);
    transparent_crc(p_1545->g_430.sc, "p_1545->g_430.sc", print_hash_value);
    transparent_crc(p_1545->g_430.sd, "p_1545->g_430.sd", print_hash_value);
    transparent_crc(p_1545->g_430.se, "p_1545->g_430.se", print_hash_value);
    transparent_crc(p_1545->g_430.sf, "p_1545->g_430.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1545->g_522[i], "p_1545->g_522[i]", print_hash_value);

    }
    transparent_crc(p_1545->g_525.s0, "p_1545->g_525.s0", print_hash_value);
    transparent_crc(p_1545->g_525.s1, "p_1545->g_525.s1", print_hash_value);
    transparent_crc(p_1545->g_525.s2, "p_1545->g_525.s2", print_hash_value);
    transparent_crc(p_1545->g_525.s3, "p_1545->g_525.s3", print_hash_value);
    transparent_crc(p_1545->g_525.s4, "p_1545->g_525.s4", print_hash_value);
    transparent_crc(p_1545->g_525.s5, "p_1545->g_525.s5", print_hash_value);
    transparent_crc(p_1545->g_525.s6, "p_1545->g_525.s6", print_hash_value);
    transparent_crc(p_1545->g_525.s7, "p_1545->g_525.s7", print_hash_value);
    transparent_crc(p_1545->g_525.s8, "p_1545->g_525.s8", print_hash_value);
    transparent_crc(p_1545->g_525.s9, "p_1545->g_525.s9", print_hash_value);
    transparent_crc(p_1545->g_525.sa, "p_1545->g_525.sa", print_hash_value);
    transparent_crc(p_1545->g_525.sb, "p_1545->g_525.sb", print_hash_value);
    transparent_crc(p_1545->g_525.sc, "p_1545->g_525.sc", print_hash_value);
    transparent_crc(p_1545->g_525.sd, "p_1545->g_525.sd", print_hash_value);
    transparent_crc(p_1545->g_525.se, "p_1545->g_525.se", print_hash_value);
    transparent_crc(p_1545->g_525.sf, "p_1545->g_525.sf", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1545->g_533[i][j].f0, "p_1545->g_533[i][j].f0", print_hash_value);
            transparent_crc(p_1545->g_533[i][j].f1, "p_1545->g_533[i][j].f1", print_hash_value);
            transparent_crc(p_1545->g_533[i][j].f2, "p_1545->g_533[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_1545->g_554.x, "p_1545->g_554.x", print_hash_value);
    transparent_crc(p_1545->g_554.y, "p_1545->g_554.y", print_hash_value);
    transparent_crc(p_1545->g_591.s0, "p_1545->g_591.s0", print_hash_value);
    transparent_crc(p_1545->g_591.s1, "p_1545->g_591.s1", print_hash_value);
    transparent_crc(p_1545->g_591.s2, "p_1545->g_591.s2", print_hash_value);
    transparent_crc(p_1545->g_591.s3, "p_1545->g_591.s3", print_hash_value);
    transparent_crc(p_1545->g_591.s4, "p_1545->g_591.s4", print_hash_value);
    transparent_crc(p_1545->g_591.s5, "p_1545->g_591.s5", print_hash_value);
    transparent_crc(p_1545->g_591.s6, "p_1545->g_591.s6", print_hash_value);
    transparent_crc(p_1545->g_591.s7, "p_1545->g_591.s7", print_hash_value);
    transparent_crc(p_1545->g_591.s8, "p_1545->g_591.s8", print_hash_value);
    transparent_crc(p_1545->g_591.s9, "p_1545->g_591.s9", print_hash_value);
    transparent_crc(p_1545->g_591.sa, "p_1545->g_591.sa", print_hash_value);
    transparent_crc(p_1545->g_591.sb, "p_1545->g_591.sb", print_hash_value);
    transparent_crc(p_1545->g_591.sc, "p_1545->g_591.sc", print_hash_value);
    transparent_crc(p_1545->g_591.sd, "p_1545->g_591.sd", print_hash_value);
    transparent_crc(p_1545->g_591.se, "p_1545->g_591.se", print_hash_value);
    transparent_crc(p_1545->g_591.sf, "p_1545->g_591.sf", print_hash_value);
    transparent_crc(p_1545->g_692.x, "p_1545->g_692.x", print_hash_value);
    transparent_crc(p_1545->g_692.y, "p_1545->g_692.y", print_hash_value);
    transparent_crc(p_1545->g_783.x, "p_1545->g_783.x", print_hash_value);
    transparent_crc(p_1545->g_783.y, "p_1545->g_783.y", print_hash_value);
    transparent_crc(p_1545->g_787.s0, "p_1545->g_787.s0", print_hash_value);
    transparent_crc(p_1545->g_787.s1, "p_1545->g_787.s1", print_hash_value);
    transparent_crc(p_1545->g_787.s2, "p_1545->g_787.s2", print_hash_value);
    transparent_crc(p_1545->g_787.s3, "p_1545->g_787.s3", print_hash_value);
    transparent_crc(p_1545->g_787.s4, "p_1545->g_787.s4", print_hash_value);
    transparent_crc(p_1545->g_787.s5, "p_1545->g_787.s5", print_hash_value);
    transparent_crc(p_1545->g_787.s6, "p_1545->g_787.s6", print_hash_value);
    transparent_crc(p_1545->g_787.s7, "p_1545->g_787.s7", print_hash_value);
    transparent_crc(p_1545->g_787.s8, "p_1545->g_787.s8", print_hash_value);
    transparent_crc(p_1545->g_787.s9, "p_1545->g_787.s9", print_hash_value);
    transparent_crc(p_1545->g_787.sa, "p_1545->g_787.sa", print_hash_value);
    transparent_crc(p_1545->g_787.sb, "p_1545->g_787.sb", print_hash_value);
    transparent_crc(p_1545->g_787.sc, "p_1545->g_787.sc", print_hash_value);
    transparent_crc(p_1545->g_787.sd, "p_1545->g_787.sd", print_hash_value);
    transparent_crc(p_1545->g_787.se, "p_1545->g_787.se", print_hash_value);
    transparent_crc(p_1545->g_787.sf, "p_1545->g_787.sf", print_hash_value);
    transparent_crc(p_1545->g_816.x, "p_1545->g_816.x", print_hash_value);
    transparent_crc(p_1545->g_816.y, "p_1545->g_816.y", print_hash_value);
    transparent_crc(p_1545->g_820.s0, "p_1545->g_820.s0", print_hash_value);
    transparent_crc(p_1545->g_820.s1, "p_1545->g_820.s1", print_hash_value);
    transparent_crc(p_1545->g_820.s2, "p_1545->g_820.s2", print_hash_value);
    transparent_crc(p_1545->g_820.s3, "p_1545->g_820.s3", print_hash_value);
    transparent_crc(p_1545->g_820.s4, "p_1545->g_820.s4", print_hash_value);
    transparent_crc(p_1545->g_820.s5, "p_1545->g_820.s5", print_hash_value);
    transparent_crc(p_1545->g_820.s6, "p_1545->g_820.s6", print_hash_value);
    transparent_crc(p_1545->g_820.s7, "p_1545->g_820.s7", print_hash_value);
    transparent_crc(p_1545->g_849.x, "p_1545->g_849.x", print_hash_value);
    transparent_crc(p_1545->g_849.y, "p_1545->g_849.y", print_hash_value);
    transparent_crc(p_1545->g_914.s0, "p_1545->g_914.s0", print_hash_value);
    transparent_crc(p_1545->g_914.s1, "p_1545->g_914.s1", print_hash_value);
    transparent_crc(p_1545->g_914.s2, "p_1545->g_914.s2", print_hash_value);
    transparent_crc(p_1545->g_914.s3, "p_1545->g_914.s3", print_hash_value);
    transparent_crc(p_1545->g_914.s4, "p_1545->g_914.s4", print_hash_value);
    transparent_crc(p_1545->g_914.s5, "p_1545->g_914.s5", print_hash_value);
    transparent_crc(p_1545->g_914.s6, "p_1545->g_914.s6", print_hash_value);
    transparent_crc(p_1545->g_914.s7, "p_1545->g_914.s7", print_hash_value);
    transparent_crc(p_1545->g_914.s8, "p_1545->g_914.s8", print_hash_value);
    transparent_crc(p_1545->g_914.s9, "p_1545->g_914.s9", print_hash_value);
    transparent_crc(p_1545->g_914.sa, "p_1545->g_914.sa", print_hash_value);
    transparent_crc(p_1545->g_914.sb, "p_1545->g_914.sb", print_hash_value);
    transparent_crc(p_1545->g_914.sc, "p_1545->g_914.sc", print_hash_value);
    transparent_crc(p_1545->g_914.sd, "p_1545->g_914.sd", print_hash_value);
    transparent_crc(p_1545->g_914.se, "p_1545->g_914.se", print_hash_value);
    transparent_crc(p_1545->g_914.sf, "p_1545->g_914.sf", print_hash_value);
    transparent_crc(p_1545->g_915.s0, "p_1545->g_915.s0", print_hash_value);
    transparent_crc(p_1545->g_915.s1, "p_1545->g_915.s1", print_hash_value);
    transparent_crc(p_1545->g_915.s2, "p_1545->g_915.s2", print_hash_value);
    transparent_crc(p_1545->g_915.s3, "p_1545->g_915.s3", print_hash_value);
    transparent_crc(p_1545->g_915.s4, "p_1545->g_915.s4", print_hash_value);
    transparent_crc(p_1545->g_915.s5, "p_1545->g_915.s5", print_hash_value);
    transparent_crc(p_1545->g_915.s6, "p_1545->g_915.s6", print_hash_value);
    transparent_crc(p_1545->g_915.s7, "p_1545->g_915.s7", print_hash_value);
    transparent_crc(p_1545->g_954.x, "p_1545->g_954.x", print_hash_value);
    transparent_crc(p_1545->g_954.y, "p_1545->g_954.y", print_hash_value);
    transparent_crc(p_1545->g_962.x, "p_1545->g_962.x", print_hash_value);
    transparent_crc(p_1545->g_962.y, "p_1545->g_962.y", print_hash_value);
    transparent_crc(p_1545->g_964.s0, "p_1545->g_964.s0", print_hash_value);
    transparent_crc(p_1545->g_964.s1, "p_1545->g_964.s1", print_hash_value);
    transparent_crc(p_1545->g_964.s2, "p_1545->g_964.s2", print_hash_value);
    transparent_crc(p_1545->g_964.s3, "p_1545->g_964.s3", print_hash_value);
    transparent_crc(p_1545->g_964.s4, "p_1545->g_964.s4", print_hash_value);
    transparent_crc(p_1545->g_964.s5, "p_1545->g_964.s5", print_hash_value);
    transparent_crc(p_1545->g_964.s6, "p_1545->g_964.s6", print_hash_value);
    transparent_crc(p_1545->g_964.s7, "p_1545->g_964.s7", print_hash_value);
    transparent_crc(p_1545->g_999.x, "p_1545->g_999.x", print_hash_value);
    transparent_crc(p_1545->g_999.y, "p_1545->g_999.y", print_hash_value);
    transparent_crc(p_1545->g_1005.x, "p_1545->g_1005.x", print_hash_value);
    transparent_crc(p_1545->g_1005.y, "p_1545->g_1005.y", print_hash_value);
    transparent_crc(p_1545->g_1008.s0, "p_1545->g_1008.s0", print_hash_value);
    transparent_crc(p_1545->g_1008.s1, "p_1545->g_1008.s1", print_hash_value);
    transparent_crc(p_1545->g_1008.s2, "p_1545->g_1008.s2", print_hash_value);
    transparent_crc(p_1545->g_1008.s3, "p_1545->g_1008.s3", print_hash_value);
    transparent_crc(p_1545->g_1008.s4, "p_1545->g_1008.s4", print_hash_value);
    transparent_crc(p_1545->g_1008.s5, "p_1545->g_1008.s5", print_hash_value);
    transparent_crc(p_1545->g_1008.s6, "p_1545->g_1008.s6", print_hash_value);
    transparent_crc(p_1545->g_1008.s7, "p_1545->g_1008.s7", print_hash_value);
    transparent_crc(p_1545->g_1043.s0, "p_1545->g_1043.s0", print_hash_value);
    transparent_crc(p_1545->g_1043.s1, "p_1545->g_1043.s1", print_hash_value);
    transparent_crc(p_1545->g_1043.s2, "p_1545->g_1043.s2", print_hash_value);
    transparent_crc(p_1545->g_1043.s3, "p_1545->g_1043.s3", print_hash_value);
    transparent_crc(p_1545->g_1043.s4, "p_1545->g_1043.s4", print_hash_value);
    transparent_crc(p_1545->g_1043.s5, "p_1545->g_1043.s5", print_hash_value);
    transparent_crc(p_1545->g_1043.s6, "p_1545->g_1043.s6", print_hash_value);
    transparent_crc(p_1545->g_1043.s7, "p_1545->g_1043.s7", print_hash_value);
    transparent_crc(p_1545->g_1043.s8, "p_1545->g_1043.s8", print_hash_value);
    transparent_crc(p_1545->g_1043.s9, "p_1545->g_1043.s9", print_hash_value);
    transparent_crc(p_1545->g_1043.sa, "p_1545->g_1043.sa", print_hash_value);
    transparent_crc(p_1545->g_1043.sb, "p_1545->g_1043.sb", print_hash_value);
    transparent_crc(p_1545->g_1043.sc, "p_1545->g_1043.sc", print_hash_value);
    transparent_crc(p_1545->g_1043.sd, "p_1545->g_1043.sd", print_hash_value);
    transparent_crc(p_1545->g_1043.se, "p_1545->g_1043.se", print_hash_value);
    transparent_crc(p_1545->g_1043.sf, "p_1545->g_1043.sf", print_hash_value);
    transparent_crc(p_1545->g_1046.s0, "p_1545->g_1046.s0", print_hash_value);
    transparent_crc(p_1545->g_1046.s1, "p_1545->g_1046.s1", print_hash_value);
    transparent_crc(p_1545->g_1046.s2, "p_1545->g_1046.s2", print_hash_value);
    transparent_crc(p_1545->g_1046.s3, "p_1545->g_1046.s3", print_hash_value);
    transparent_crc(p_1545->g_1046.s4, "p_1545->g_1046.s4", print_hash_value);
    transparent_crc(p_1545->g_1046.s5, "p_1545->g_1046.s5", print_hash_value);
    transparent_crc(p_1545->g_1046.s6, "p_1545->g_1046.s6", print_hash_value);
    transparent_crc(p_1545->g_1046.s7, "p_1545->g_1046.s7", print_hash_value);
    transparent_crc(p_1545->g_1046.s8, "p_1545->g_1046.s8", print_hash_value);
    transparent_crc(p_1545->g_1046.s9, "p_1545->g_1046.s9", print_hash_value);
    transparent_crc(p_1545->g_1046.sa, "p_1545->g_1046.sa", print_hash_value);
    transparent_crc(p_1545->g_1046.sb, "p_1545->g_1046.sb", print_hash_value);
    transparent_crc(p_1545->g_1046.sc, "p_1545->g_1046.sc", print_hash_value);
    transparent_crc(p_1545->g_1046.sd, "p_1545->g_1046.sd", print_hash_value);
    transparent_crc(p_1545->g_1046.se, "p_1545->g_1046.se", print_hash_value);
    transparent_crc(p_1545->g_1046.sf, "p_1545->g_1046.sf", print_hash_value);
    transparent_crc(p_1545->g_1053, "p_1545->g_1053", print_hash_value);
    transparent_crc(p_1545->g_1080.x, "p_1545->g_1080.x", print_hash_value);
    transparent_crc(p_1545->g_1080.y, "p_1545->g_1080.y", print_hash_value);
    transparent_crc(p_1545->g_1080.z, "p_1545->g_1080.z", print_hash_value);
    transparent_crc(p_1545->g_1080.w, "p_1545->g_1080.w", print_hash_value);
    transparent_crc(p_1545->g_1085.s0, "p_1545->g_1085.s0", print_hash_value);
    transparent_crc(p_1545->g_1085.s1, "p_1545->g_1085.s1", print_hash_value);
    transparent_crc(p_1545->g_1085.s2, "p_1545->g_1085.s2", print_hash_value);
    transparent_crc(p_1545->g_1085.s3, "p_1545->g_1085.s3", print_hash_value);
    transparent_crc(p_1545->g_1085.s4, "p_1545->g_1085.s4", print_hash_value);
    transparent_crc(p_1545->g_1085.s5, "p_1545->g_1085.s5", print_hash_value);
    transparent_crc(p_1545->g_1085.s6, "p_1545->g_1085.s6", print_hash_value);
    transparent_crc(p_1545->g_1085.s7, "p_1545->g_1085.s7", print_hash_value);
    transparent_crc(p_1545->g_1085.s8, "p_1545->g_1085.s8", print_hash_value);
    transparent_crc(p_1545->g_1085.s9, "p_1545->g_1085.s9", print_hash_value);
    transparent_crc(p_1545->g_1085.sa, "p_1545->g_1085.sa", print_hash_value);
    transparent_crc(p_1545->g_1085.sb, "p_1545->g_1085.sb", print_hash_value);
    transparent_crc(p_1545->g_1085.sc, "p_1545->g_1085.sc", print_hash_value);
    transparent_crc(p_1545->g_1085.sd, "p_1545->g_1085.sd", print_hash_value);
    transparent_crc(p_1545->g_1085.se, "p_1545->g_1085.se", print_hash_value);
    transparent_crc(p_1545->g_1085.sf, "p_1545->g_1085.sf", print_hash_value);
    transparent_crc(p_1545->g_1105.x, "p_1545->g_1105.x", print_hash_value);
    transparent_crc(p_1545->g_1105.y, "p_1545->g_1105.y", print_hash_value);
    transparent_crc(p_1545->g_1105.z, "p_1545->g_1105.z", print_hash_value);
    transparent_crc(p_1545->g_1105.w, "p_1545->g_1105.w", print_hash_value);
    transparent_crc(p_1545->g_1108.s0, "p_1545->g_1108.s0", print_hash_value);
    transparent_crc(p_1545->g_1108.s1, "p_1545->g_1108.s1", print_hash_value);
    transparent_crc(p_1545->g_1108.s2, "p_1545->g_1108.s2", print_hash_value);
    transparent_crc(p_1545->g_1108.s3, "p_1545->g_1108.s3", print_hash_value);
    transparent_crc(p_1545->g_1108.s4, "p_1545->g_1108.s4", print_hash_value);
    transparent_crc(p_1545->g_1108.s5, "p_1545->g_1108.s5", print_hash_value);
    transparent_crc(p_1545->g_1108.s6, "p_1545->g_1108.s6", print_hash_value);
    transparent_crc(p_1545->g_1108.s7, "p_1545->g_1108.s7", print_hash_value);
    transparent_crc(p_1545->g_1108.s8, "p_1545->g_1108.s8", print_hash_value);
    transparent_crc(p_1545->g_1108.s9, "p_1545->g_1108.s9", print_hash_value);
    transparent_crc(p_1545->g_1108.sa, "p_1545->g_1108.sa", print_hash_value);
    transparent_crc(p_1545->g_1108.sb, "p_1545->g_1108.sb", print_hash_value);
    transparent_crc(p_1545->g_1108.sc, "p_1545->g_1108.sc", print_hash_value);
    transparent_crc(p_1545->g_1108.sd, "p_1545->g_1108.sd", print_hash_value);
    transparent_crc(p_1545->g_1108.se, "p_1545->g_1108.se", print_hash_value);
    transparent_crc(p_1545->g_1108.sf, "p_1545->g_1108.sf", print_hash_value);
    transparent_crc(p_1545->g_1113.s0, "p_1545->g_1113.s0", print_hash_value);
    transparent_crc(p_1545->g_1113.s1, "p_1545->g_1113.s1", print_hash_value);
    transparent_crc(p_1545->g_1113.s2, "p_1545->g_1113.s2", print_hash_value);
    transparent_crc(p_1545->g_1113.s3, "p_1545->g_1113.s3", print_hash_value);
    transparent_crc(p_1545->g_1113.s4, "p_1545->g_1113.s4", print_hash_value);
    transparent_crc(p_1545->g_1113.s5, "p_1545->g_1113.s5", print_hash_value);
    transparent_crc(p_1545->g_1113.s6, "p_1545->g_1113.s6", print_hash_value);
    transparent_crc(p_1545->g_1113.s7, "p_1545->g_1113.s7", print_hash_value);
    transparent_crc(p_1545->g_1130, "p_1545->g_1130", print_hash_value);
    transparent_crc(p_1545->g_1176.x, "p_1545->g_1176.x", print_hash_value);
    transparent_crc(p_1545->g_1176.y, "p_1545->g_1176.y", print_hash_value);
    transparent_crc(p_1545->g_1176.z, "p_1545->g_1176.z", print_hash_value);
    transparent_crc(p_1545->g_1176.w, "p_1545->g_1176.w", print_hash_value);
    transparent_crc(p_1545->g_1189.s0, "p_1545->g_1189.s0", print_hash_value);
    transparent_crc(p_1545->g_1189.s1, "p_1545->g_1189.s1", print_hash_value);
    transparent_crc(p_1545->g_1189.s2, "p_1545->g_1189.s2", print_hash_value);
    transparent_crc(p_1545->g_1189.s3, "p_1545->g_1189.s3", print_hash_value);
    transparent_crc(p_1545->g_1189.s4, "p_1545->g_1189.s4", print_hash_value);
    transparent_crc(p_1545->g_1189.s5, "p_1545->g_1189.s5", print_hash_value);
    transparent_crc(p_1545->g_1189.s6, "p_1545->g_1189.s6", print_hash_value);
    transparent_crc(p_1545->g_1189.s7, "p_1545->g_1189.s7", print_hash_value);
    transparent_crc(p_1545->g_1189.s8, "p_1545->g_1189.s8", print_hash_value);
    transparent_crc(p_1545->g_1189.s9, "p_1545->g_1189.s9", print_hash_value);
    transparent_crc(p_1545->g_1189.sa, "p_1545->g_1189.sa", print_hash_value);
    transparent_crc(p_1545->g_1189.sb, "p_1545->g_1189.sb", print_hash_value);
    transparent_crc(p_1545->g_1189.sc, "p_1545->g_1189.sc", print_hash_value);
    transparent_crc(p_1545->g_1189.sd, "p_1545->g_1189.sd", print_hash_value);
    transparent_crc(p_1545->g_1189.se, "p_1545->g_1189.se", print_hash_value);
    transparent_crc(p_1545->g_1189.sf, "p_1545->g_1189.sf", print_hash_value);
    transparent_crc(p_1545->g_1190.x, "p_1545->g_1190.x", print_hash_value);
    transparent_crc(p_1545->g_1190.y, "p_1545->g_1190.y", print_hash_value);
    transparent_crc(p_1545->g_1247.s0, "p_1545->g_1247.s0", print_hash_value);
    transparent_crc(p_1545->g_1247.s1, "p_1545->g_1247.s1", print_hash_value);
    transparent_crc(p_1545->g_1247.s2, "p_1545->g_1247.s2", print_hash_value);
    transparent_crc(p_1545->g_1247.s3, "p_1545->g_1247.s3", print_hash_value);
    transparent_crc(p_1545->g_1247.s4, "p_1545->g_1247.s4", print_hash_value);
    transparent_crc(p_1545->g_1247.s5, "p_1545->g_1247.s5", print_hash_value);
    transparent_crc(p_1545->g_1247.s6, "p_1545->g_1247.s6", print_hash_value);
    transparent_crc(p_1545->g_1247.s7, "p_1545->g_1247.s7", print_hash_value);
    transparent_crc(p_1545->g_1247.s8, "p_1545->g_1247.s8", print_hash_value);
    transparent_crc(p_1545->g_1247.s9, "p_1545->g_1247.s9", print_hash_value);
    transparent_crc(p_1545->g_1247.sa, "p_1545->g_1247.sa", print_hash_value);
    transparent_crc(p_1545->g_1247.sb, "p_1545->g_1247.sb", print_hash_value);
    transparent_crc(p_1545->g_1247.sc, "p_1545->g_1247.sc", print_hash_value);
    transparent_crc(p_1545->g_1247.sd, "p_1545->g_1247.sd", print_hash_value);
    transparent_crc(p_1545->g_1247.se, "p_1545->g_1247.se", print_hash_value);
    transparent_crc(p_1545->g_1247.sf, "p_1545->g_1247.sf", print_hash_value);
    transparent_crc(p_1545->g_1333, "p_1545->g_1333", print_hash_value);
    transparent_crc(p_1545->g_1360.x, "p_1545->g_1360.x", print_hash_value);
    transparent_crc(p_1545->g_1360.y, "p_1545->g_1360.y", print_hash_value);
    transparent_crc(p_1545->g_1380.x, "p_1545->g_1380.x", print_hash_value);
    transparent_crc(p_1545->g_1380.y, "p_1545->g_1380.y", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1545->g_1392[i][j], "p_1545->g_1392[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1545->g_1402, "p_1545->g_1402", print_hash_value);
    transparent_crc(p_1545->g_1440.s0, "p_1545->g_1440.s0", print_hash_value);
    transparent_crc(p_1545->g_1440.s1, "p_1545->g_1440.s1", print_hash_value);
    transparent_crc(p_1545->g_1440.s2, "p_1545->g_1440.s2", print_hash_value);
    transparent_crc(p_1545->g_1440.s3, "p_1545->g_1440.s3", print_hash_value);
    transparent_crc(p_1545->g_1440.s4, "p_1545->g_1440.s4", print_hash_value);
    transparent_crc(p_1545->g_1440.s5, "p_1545->g_1440.s5", print_hash_value);
    transparent_crc(p_1545->g_1440.s6, "p_1545->g_1440.s6", print_hash_value);
    transparent_crc(p_1545->g_1440.s7, "p_1545->g_1440.s7", print_hash_value);
    transparent_crc(p_1545->g_1440.s8, "p_1545->g_1440.s8", print_hash_value);
    transparent_crc(p_1545->g_1440.s9, "p_1545->g_1440.s9", print_hash_value);
    transparent_crc(p_1545->g_1440.sa, "p_1545->g_1440.sa", print_hash_value);
    transparent_crc(p_1545->g_1440.sb, "p_1545->g_1440.sb", print_hash_value);
    transparent_crc(p_1545->g_1440.sc, "p_1545->g_1440.sc", print_hash_value);
    transparent_crc(p_1545->g_1440.sd, "p_1545->g_1440.sd", print_hash_value);
    transparent_crc(p_1545->g_1440.se, "p_1545->g_1440.se", print_hash_value);
    transparent_crc(p_1545->g_1440.sf, "p_1545->g_1440.sf", print_hash_value);
    transparent_crc(p_1545->g_1454, "p_1545->g_1454", print_hash_value);
    transparent_crc(p_1545->g_1462.s0, "p_1545->g_1462.s0", print_hash_value);
    transparent_crc(p_1545->g_1462.s1, "p_1545->g_1462.s1", print_hash_value);
    transparent_crc(p_1545->g_1462.s2, "p_1545->g_1462.s2", print_hash_value);
    transparent_crc(p_1545->g_1462.s3, "p_1545->g_1462.s3", print_hash_value);
    transparent_crc(p_1545->g_1462.s4, "p_1545->g_1462.s4", print_hash_value);
    transparent_crc(p_1545->g_1462.s5, "p_1545->g_1462.s5", print_hash_value);
    transparent_crc(p_1545->g_1462.s6, "p_1545->g_1462.s6", print_hash_value);
    transparent_crc(p_1545->g_1462.s7, "p_1545->g_1462.s7", print_hash_value);
    transparent_crc(p_1545->g_1462.s8, "p_1545->g_1462.s8", print_hash_value);
    transparent_crc(p_1545->g_1462.s9, "p_1545->g_1462.s9", print_hash_value);
    transparent_crc(p_1545->g_1462.sa, "p_1545->g_1462.sa", print_hash_value);
    transparent_crc(p_1545->g_1462.sb, "p_1545->g_1462.sb", print_hash_value);
    transparent_crc(p_1545->g_1462.sc, "p_1545->g_1462.sc", print_hash_value);
    transparent_crc(p_1545->g_1462.sd, "p_1545->g_1462.sd", print_hash_value);
    transparent_crc(p_1545->g_1462.se, "p_1545->g_1462.se", print_hash_value);
    transparent_crc(p_1545->g_1462.sf, "p_1545->g_1462.sf", print_hash_value);
    transparent_crc(p_1545->g_1491, "p_1545->g_1491", print_hash_value);
    transparent_crc(p_1545->g_1511.s0, "p_1545->g_1511.s0", print_hash_value);
    transparent_crc(p_1545->g_1511.s1, "p_1545->g_1511.s1", print_hash_value);
    transparent_crc(p_1545->g_1511.s2, "p_1545->g_1511.s2", print_hash_value);
    transparent_crc(p_1545->g_1511.s3, "p_1545->g_1511.s3", print_hash_value);
    transparent_crc(p_1545->g_1511.s4, "p_1545->g_1511.s4", print_hash_value);
    transparent_crc(p_1545->g_1511.s5, "p_1545->g_1511.s5", print_hash_value);
    transparent_crc(p_1545->g_1511.s6, "p_1545->g_1511.s6", print_hash_value);
    transparent_crc(p_1545->g_1511.s7, "p_1545->g_1511.s7", print_hash_value);
    transparent_crc(p_1545->g_1522.s0, "p_1545->g_1522.s0", print_hash_value);
    transparent_crc(p_1545->g_1522.s1, "p_1545->g_1522.s1", print_hash_value);
    transparent_crc(p_1545->g_1522.s2, "p_1545->g_1522.s2", print_hash_value);
    transparent_crc(p_1545->g_1522.s3, "p_1545->g_1522.s3", print_hash_value);
    transparent_crc(p_1545->g_1522.s4, "p_1545->g_1522.s4", print_hash_value);
    transparent_crc(p_1545->g_1522.s5, "p_1545->g_1522.s5", print_hash_value);
    transparent_crc(p_1545->g_1522.s6, "p_1545->g_1522.s6", print_hash_value);
    transparent_crc(p_1545->g_1522.s7, "p_1545->g_1522.s7", print_hash_value);
    transparent_crc(p_1545->g_1522.s8, "p_1545->g_1522.s8", print_hash_value);
    transparent_crc(p_1545->g_1522.s9, "p_1545->g_1522.s9", print_hash_value);
    transparent_crc(p_1545->g_1522.sa, "p_1545->g_1522.sa", print_hash_value);
    transparent_crc(p_1545->g_1522.sb, "p_1545->g_1522.sb", print_hash_value);
    transparent_crc(p_1545->g_1522.sc, "p_1545->g_1522.sc", print_hash_value);
    transparent_crc(p_1545->g_1522.sd, "p_1545->g_1522.sd", print_hash_value);
    transparent_crc(p_1545->g_1522.se, "p_1545->g_1522.se", print_hash_value);
    transparent_crc(p_1545->g_1522.sf, "p_1545->g_1522.sf", print_hash_value);
    transparent_crc(p_1545->g_1525.s0, "p_1545->g_1525.s0", print_hash_value);
    transparent_crc(p_1545->g_1525.s1, "p_1545->g_1525.s1", print_hash_value);
    transparent_crc(p_1545->g_1525.s2, "p_1545->g_1525.s2", print_hash_value);
    transparent_crc(p_1545->g_1525.s3, "p_1545->g_1525.s3", print_hash_value);
    transparent_crc(p_1545->g_1525.s4, "p_1545->g_1525.s4", print_hash_value);
    transparent_crc(p_1545->g_1525.s5, "p_1545->g_1525.s5", print_hash_value);
    transparent_crc(p_1545->g_1525.s6, "p_1545->g_1525.s6", print_hash_value);
    transparent_crc(p_1545->g_1525.s7, "p_1545->g_1525.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
