// ---atomic_reductions ---fake_divergence -g 35,4,9 -l 7,1,1
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


// Seed: 85

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint8_t  f0;
   volatile int32_t  f1;
   uint32_t  f2;
   uint64_t  f3;
   volatile int16_t  f4;
   volatile uint32_t  f5;
   int8_t  f6;
   int8_t  f7;
};

union U1 {
   volatile uint64_t  f0;
   int64_t  f1;
   int8_t  f2;
   volatile uint64_t  f3;
   int16_t  f4;
};

struct S2 {
    int8_t g_13[1][4][4];
    int32_t g_15[9];
    int32_t *g_14;
    int32_t g_28;
    int64_t g_62[1];
    int32_t g_87;
    volatile int32_t g_92;
    uint64_t g_93[8];
    uint8_t g_110[4];
    int32_t *** volatile g_127;
    int32_t **g_128;
    int32_t * volatile g_130;
    uint32_t g_132[9][7];
    int32_t * volatile *g_153[3];
    int32_t * volatile g_165;
    volatile struct S0 g_168;
    volatile struct S0 g_169[8][9][1];
    uint8_t g_184[3];
    int16_t g_198[10];
    volatile int64_t g_211;
    volatile int32_t g_233;
    int8_t * volatile g_247;
    int8_t * volatile *g_246;
    int8_t * volatile **g_245;
    volatile uint32_t g_256[2];
    struct S0 g_274;
    volatile uint64_t g_285;
    volatile uint64_t *g_284[2];
    volatile uint64_t * volatile * volatile g_283;
    volatile uint32_t g_302[8];
    volatile struct S0 g_314;
    struct S0 g_315;
    struct S0 * volatile g_316;
    struct S0 g_317;
    struct S0 g_355;
    struct S0 g_356;
    struct S0 g_388;
    struct S0 * volatile g_389[5][10][5];
    struct S0 * volatile g_390;
    volatile struct S0 g_392;
    int16_t **g_423[1];
    struct S0 g_446;
    union U1 g_453;
    union U1 *g_455[6];
    union U1 ** volatile g_454;
    struct S0 g_457;
    struct S0 * volatile g_458;
    struct S0 g_463[4][2][8];
    struct S0 * volatile g_464;
    uint16_t g_487[4][1];
    struct S0 g_490[3];
    volatile uint32_t *g_500;
    volatile uint32_t ** volatile g_499;
    uint16_t g_502;
    uint16_t * volatile g_501;
    volatile struct S0 g_504;
    volatile struct S0 g_525;
    uint8_t g_573[10];
    int64_t *g_584;
    int64_t **g_583[7];
    uint32_t g_588;
    volatile union U1 g_589;
    int64_t g_675;
    struct S0 g_677;
    struct S0 * volatile g_678[10];
    struct S0 g_680;
    struct S0 g_681;
    union U1 g_688;
    struct S0 *g_697;
    volatile union U1 g_714;
    int32_t g_741;
    volatile int8_t *g_750;
    volatile int8_t **g_749;
    volatile int8_t ** volatile *g_748;
    volatile int8_t ** volatile **g_747;
    volatile int8_t ** volatile *** volatile g_746;
    volatile uint8_t *g_752;
    int8_t *g_768;
    int8_t **g_767;
    int8_t ***g_766;
    int8_t ****g_765;
    int64_t g_779[9][4];
    union U1 g_819[9];
    volatile uint64_t g_826;
    struct S0 g_841;
    struct S0 g_842;
    volatile int8_t g_843;
    int32_t g_851;
    uint64_t g_857;
    int32_t * volatile g_859;
    volatile struct S0 g_860;
    volatile struct S0 g_861;
    int32_t * volatile g_876;
    int32_t * volatile g_877;
    struct S0 g_879;
    struct S0 g_929;
    int32_t g_962;
    struct S0 g_990;
    volatile struct S0 g_993;
    volatile struct S0 g_994;
    struct S0 g_1037;
    volatile int64_t g_1057;
    volatile int64_t *g_1056[1][10][5];
    volatile int64_t **g_1055[1][6][7];
    int64_t *g_1089;
    int64_t **g_1088;
    struct S0 g_1123[6][8];
    volatile int16_t g_1130;
    int32_t *g_1139;
    uint64_t g_1169;
    uint64_t *g_1173;
    uint64_t **g_1172;
    int64_t g_1179;
    struct S0 g_1186;
    struct S0 * volatile g_1187;
    volatile struct S0 g_1198;
    volatile struct S0 g_1224;
    int64_t g_1246;
    volatile uint64_t g_1354;
    uint32_t g_1375;
    struct S0 * volatile g_1382;
    struct S0 * volatile g_1383;
    union U1 **g_1456;
    int8_t g_1507;
    union U1 g_1512[9];
    volatile int16_t *g_1546;
    volatile int16_t * volatile *g_1545;
    volatile int16_t * volatile **g_1544;
    volatile int16_t * volatile ** volatile *g_1543;
    uint32_t v_collective;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S2 * p_1550);
int32_t * func_2(int16_t  p_3, int8_t  p_4, uint32_t  p_5, int64_t  p_6, struct S2 * p_1550);
int32_t * func_9(uint32_t  p_10, int32_t * p_11, uint32_t  p_12, struct S2 * p_1550);
int32_t * func_36(int32_t  p_37, int8_t  p_38, uint32_t  p_39, int32_t * p_40, uint32_t  p_41, struct S2 * p_1550);
struct S0  func_46(int32_t * p_47, int32_t * p_48, int32_t * p_49, int64_t  p_50, int32_t * p_51, struct S2 * p_1550);
int32_t * func_52(int32_t  p_53, uint8_t  p_54, int32_t * p_55, uint8_t  p_56, int32_t * p_57, struct S2 * p_1550);
uint64_t  func_63(uint64_t  p_64, int16_t  p_65, int64_t * p_66, int32_t  p_67, struct S2 * p_1550);
uint8_t  func_72(uint16_t  p_73, int64_t * p_74, uint32_t  p_75, int32_t  p_76, int32_t * p_77, struct S2 * p_1550);
uint16_t  func_78(int32_t * p_79, uint64_t  p_80, struct S2 * p_1550);
int64_t  func_98(uint16_t  p_99, uint8_t  p_100, struct S2 * p_1550);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1550->g_13 p_1550->g_14 p_1550->g_128 p_1550->g_1139 p_1550->g_752 p_1550->g_315.f0 p_1550->g_767 p_1550->g_768 p_1550->g_681.f6 p_1550->g_132 p_1550->g_356.f7 p_1550->g_584 p_1550->g_62 p_1550->g_765 p_1550->g_501 p_1550->g_502 p_1550->g_1123.f6 p_1550->g_1169 p_1550->g_1123.f2 p_1550->g_87 p_1550->g_130 p_1550->g_1172 p_1550->g_1173 p_1550->g_857 p_1550->g_1186 p_1550->g_1187 p_1550->g_1179 p_1550->g_1198 p_1550->g_1123.f1 p_1550->g_388.f2 p_1550->g_697 p_1550->g_929 p_1550->g_315.f3 p_1550->g_1224 p_1550->g_315.f6 p_1550->g_356.f3 p_1550->g_680.f7 p_1550->g_677.f2 p_1550->g_274.f3 p_1550->g_748 p_1550->g_749 p_1550->g_750 p_1550->g_525.f7 p_1550->g_457.f7 p_1550->g_1089 p_1550->g_588 p_1550->g_990.f7 p_1550->g_246 p_1550->g_247 p_1550->g_355.f2 p_1550->g_15 p_1550->g_1088 p_1550->g_779 p_1550->g_681.f2 p_1550->g_317.f3 p_1550->g_879 p_1550->g_1383 p_1550->g_859 p_1550->g_490.f3 p_1550->g_680.f2 p_1550->g_841.f3 p_1550->g_457.f2 p_1550->g_446.f2 p_1550->g_93 p_1550->g_490 p_1550->g_573 p_1550->g_356.f2
 * writes: p_1550->g_14 p_1550->g_681.f6 p_1550->g_457.f6 p_1550->g_766 p_1550->g_819.f4 p_1550->g_15 p_1550->g_1172 p_1550->g_1139 p_1550->g_857 p_1550->g_490 p_1550->g_1179 p_1550->g_455 p_1550->g_697 p_1550->g_502 p_1550->g_388.f2 p_1550->g_62 p_1550->g_315.f3 p_1550->g_110 p_1550->g_356.f3 p_1550->g_680.f7 p_1550->g_87 p_1550->g_1186.f3 p_1550->g_677.f2 p_1550->g_274.f3 p_1550->g_588 p_1550->g_779 p_1550->g_13 p_1550->g_315.f6 p_1550->g_355.f2 p_1550->g_842 p_1550->g_1186.f6 p_1550->g_1456 p_1550->g_198 p_1550->g_93 p_1550->g_929.f6 p_1550->g_446.f2 p_1550->g_677.f6 p_1550->g_317 p_1550->g_356.f2
 */
int32_t  func_1(struct S2 * p_1550)
{ /* block id: 4 */
    int32_t **l_1136 = &p_1550->g_14;
    int32_t **l_1137 = &p_1550->g_14;
    int32_t *l_1138 = &p_1550->g_87;
    int8_t *l_1151 = &p_1550->g_457.f6;
    uint64_t l_1152 = 18446744073709551606UL;
    int32_t l_1348[2][10][8];
    int16_t *l_1364 = &p_1550->g_198[3];
    uint16_t l_1367 = 0xFFD9L;
    int32_t **l_1368 = &l_1138;
    uint8_t l_1369 = 0x1FL;
    uint32_t *l_1370[3][9] = {{(void*)0,&p_1550->g_132[3][1],&p_1550->g_132[3][1],(void*)0,(void*)0,&p_1550->g_132[3][1],&p_1550->g_132[3][1],(void*)0,(void*)0},{(void*)0,&p_1550->g_132[3][1],&p_1550->g_132[3][1],(void*)0,(void*)0,&p_1550->g_132[3][1],&p_1550->g_132[3][1],(void*)0,(void*)0},{(void*)0,&p_1550->g_132[3][1],&p_1550->g_132[3][1],(void*)0,(void*)0,&p_1550->g_132[3][1],&p_1550->g_132[3][1],(void*)0,(void*)0}};
    int32_t l_1376 = 0x321970C4L;
    int32_t *l_1377[10][1] = {{&l_1348[0][2][1]},{&l_1348[0][2][1]},{&l_1348[0][2][1]},{&l_1348[0][2][1]},{&l_1348[0][2][1]},{&l_1348[0][2][1]},{&l_1348[0][2][1]},{&l_1348[0][2][1]},{&l_1348[0][2][1]},{&l_1348[0][2][1]}};
    int32_t *l_1378 = (void*)0;
    int32_t l_1379[10][2] = {{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L}};
    int32_t **l_1380[6] = {&l_1377[5][0],&l_1377[5][0],&l_1377[5][0],&l_1377[5][0],&l_1377[5][0],&l_1377[5][0]};
    int32_t *l_1381 = &p_1550->g_15[0];
    uint32_t l_1387 = 0xE2E00242L;
    uint32_t l_1396[5][6][3];
    int32_t l_1403 = 0L;
    int8_t l_1424[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int32_t l_1460 = (-1L);
    int64_t l_1520 = 0x06A158EFF629F116L;
    int8_t l_1521[2];
    int16_t l_1549 = 0L;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 8; k++)
                l_1348[i][j][k] = (-8L);
        }
    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 3; k++)
                l_1396[i][j][k] = 0x4571393BL;
        }
    }
    for (i = 0; i < 2; i++)
        l_1521[i] = 0x59L;
    (*l_1136) = func_2((safe_sub_func_int8_t_s_s((((l_1138 = func_9(p_1550->g_13[0][1][0], p_1550->g_14, p_1550->g_13[0][1][0], p_1550)) != p_1550->g_1139) > (safe_add_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u(255UL, ((*l_1151) = ((**p_1550->g_767) = ((safe_lshift_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_u(0xACL, (*p_1550->g_752))) >= (safe_mod_func_uint8_t_u_u(((safe_unary_minus_func_int16_t_s((((l_1136 == l_1136) | 0x549DDC7980E7E50DL) || 0x45D28FAF863475FEL))) , FAKE_DIVERGE(p_1550->global_0_offset, get_global_id(0), 10)), (**p_1550->g_767)))), 4)) , 0x23L))))), l_1152))), 0L)), p_1550->g_132[3][1], p_1550->g_356.f7, (*p_1550->g_584), p_1550);
    for (p_1550->g_315.f6 = 5; (p_1550->g_315.f6 >= (-17)); p_1550->g_315.f6 = safe_sub_func_uint8_t_u_u(p_1550->g_315.f6, 9))
    { /* block id: 684 */
        int8_t *l_1315 = &p_1550->g_356.f7;
        int32_t l_1331 = 0x0E3A294AL;
        int8_t l_1333 = 1L;
        int32_t l_1349 = 0x3E0E0F52L;
        int32_t l_1351 = (-8L);
        int32_t l_1353 = 0L;
        (*l_1137) = (void*)0;
        for (p_1550->g_355.f2 = (-2); (p_1550->g_355.f2 > 57); p_1550->g_355.f2 = safe_add_func_uint32_t_u_u(p_1550->g_355.f2, 4))
        { /* block id: 688 */
            int32_t l_1332[5][8] = {{0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L},{0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L},{0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L},{0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L},{0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L,0x0F42B615L}};
            int32_t *l_1334 = &p_1550->g_15[1];
            int i, j;
            (1 + 1);
        }
        (*p_1550->g_128) = (*l_1136);
    }
    (*p_1550->g_1383) = ((l_1367 != (*l_1138)) , func_46((*l_1137), ((*l_1368) = (void*)0), (l_1381 = ((*p_1550->g_130) , (*p_1550->g_128))), (**p_1550->g_1088), (*p_1550->g_128), p_1550));
    if ((((!0UL) != 4L) >= ((GROUP_DIVERGE(1, 1) , &p_1550->g_877) != &p_1550->g_14)))
    { /* block id: 721 */
        int32_t l_1384 = 0x40238D36L;
        int32_t *l_1397 = &l_1384;
        uint8_t l_1407[2];
        int32_t l_1416[2];
        int8_t ***l_1417 = &p_1550->g_767;
        uint16_t l_1432 = 0xC719L;
        int i;
        for (i = 0; i < 2; i++)
            l_1407[i] = 0xB7L;
        for (i = 0; i < 2; i++)
            l_1416[i] = 0x64C6E80FL;
lbl_1425:
        l_1397 = (*l_1137);
        for (p_1550->g_356.f3 = 16; (p_1550->g_356.f3 >= 18); p_1550->g_356.f3 = safe_add_func_uint8_t_u_u(p_1550->g_356.f3, 2))
        { /* block id: 726 */
            int64_t l_1402[2];
            int8_t ***l_1418 = (void*)0;
            int32_t l_1463 = 1L;
            int32_t **l_1510[7][1] = {{&l_1397},{&l_1397},{&l_1397},{&l_1397},{&l_1397},{&l_1397},{&l_1397}};
            int16_t l_1514[8] = {0x5DA2L,0x5DA2L,0x5DA2L,0x5DA2L,0x5DA2L,0x5DA2L,0x5DA2L,0x5DA2L};
            int16_t l_1517 = 0x0C1FL;
            int16_t l_1522[5];
            int64_t l_1523 = 0x4CD1BFBE799EBFA8L;
            int i, j;
            for (i = 0; i < 2; i++)
                l_1402[i] = 0x652F0F89E4CD76F3L;
            for (i = 0; i < 5; i++)
                l_1522[i] = 0x17BFL;
            l_1403 &= ((safe_mod_func_int16_t_s_s(1L, l_1402[1])) , (*p_1550->g_859));
            for (p_1550->g_315.f6 = (-23); (p_1550->g_315.f6 != 17); p_1550->g_315.f6 = safe_add_func_uint16_t_u_u(p_1550->g_315.f6, 6))
            { /* block id: 730 */
                int8_t l_1406[3][6][7] = {{{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)}},{{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)}},{{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)},{0x38L,0x1EL,0x00L,(-1L),2L,0x5EL,(-2L)}}};
                uint32_t l_1421[7][9][1];
                int8_t l_1422 = 2L;
                uint64_t l_1459 = 0x08FF7B173C866BC2L;
                int32_t l_1466 = 2L;
                int i, j, k;
                for (i = 0; i < 7; i++)
                {
                    for (j = 0; j < 9; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_1421[i][j][k] = 0x585A7A1BL;
                    }
                }
                l_1407[0] = l_1406[1][0][1];
                if (l_1406[1][0][1])
                    continue;
                for (p_1550->g_1186.f6 = 1; (p_1550->g_1186.f6 <= 8); p_1550->g_1186.f6 += 1)
                { /* block id: 735 */
                    uint32_t l_1423[6];
                    uint16_t *l_1428 = &l_1367;
                    uint16_t *l_1429[2];
                    union U1 **l_1455 = &p_1550->g_455[0];
                    union U1 ***l_1454[10] = {&l_1455,&l_1455,&l_1455,&l_1455,&l_1455,&l_1455,&l_1455,&l_1455,&l_1455,&l_1455};
                    uint64_t l_1461[5][2][2] = {{{18446744073709551612UL,18446744073709551615UL},{18446744073709551612UL,18446744073709551615UL}},{{18446744073709551612UL,18446744073709551615UL},{18446744073709551612UL,18446744073709551615UL}},{{18446744073709551612UL,18446744073709551615UL},{18446744073709551612UL,18446744073709551615UL}},{{18446744073709551612UL,18446744073709551615UL},{18446744073709551612UL,18446744073709551615UL}},{{18446744073709551612UL,18446744073709551615UL},{18446744073709551612UL,18446744073709551615UL}}};
                    uint32_t l_1462 = 0UL;
                    uint64_t *l_1464 = (void*)0;
                    uint64_t *l_1465 = &p_1550->g_93[3];
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_1423[i] = 0xB41B3248L;
                    for (i = 0; i < 2; i++)
                        l_1429[i] = &p_1550->g_487[3][0];
                    l_1424[7] ^= ((((safe_mod_func_int32_t_s_s(p_1550->g_15[p_1550->g_1186.f6], (((safe_rshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(l_1406[2][5][5], (safe_mul_func_int16_t_s_s(l_1416[0], (l_1417 == l_1418))))), 5)) == (safe_mul_func_int16_t_s_s((0UL == l_1402[1]), (p_1550->g_15[p_1550->g_1186.f6] > ((((l_1421[3][7][0] == l_1402[1]) & 0x0B51F907F52A49F5L) | l_1402[1]) , l_1421[4][3][0]))))) ^ l_1422))) | (*p_1550->g_501)) == (-1L)) ^ l_1423[3]);
                    (*p_1550->g_128) = (void*)0;
                    if (p_1550->g_317.f3)
                        goto lbl_1425;
                    l_1466 |= ((p_1550->g_15[p_1550->g_1186.f6] |= ((*p_1550->g_501) &= ((*l_1428) &= (l_1402[1] && (safe_lshift_func_uint8_t_u_u(0UL, FAKE_DIVERGE(p_1550->group_0_offset, get_group_id(0), 10))))))) & ((safe_mul_func_uint32_t_u_u(l_1432, (((*p_1550->g_584) ^= ((((((*l_1465) ^= ((*p_1550->g_1173) = (safe_div_func_int16_t_s_s(((safe_unary_minus_func_uint16_t_u((safe_rshift_func_uint16_t_u_u((l_1463 &= (safe_rshift_func_int16_t_s_u(((~(((((safe_add_func_int8_t_s_s((((safe_mod_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(p_1550->g_490[2].f3, FAKE_DIVERGE(p_1550->global_1_offset, get_global_id(1), 10))) == l_1402[0]), (((safe_add_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(p_1550->g_315.f3, ((*l_1364) = (+((safe_sub_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s(((p_1550->g_1456 = &p_1550->g_455[1]) == (void*)0), (safe_sub_func_int32_t_s_s((-7L), l_1421[3][7][0])))) , l_1422), l_1432)) < p_1550->g_680.f2))))), l_1402[1])) >= l_1423[3]) , l_1459))) , 1L) >= l_1423[3]), l_1459)) ^ l_1460) == l_1461[0][1][0]) , p_1550->g_841.f3) , p_1550->g_457.f2)) , l_1462), 4))), FAKE_DIVERGE(p_1550->group_2_offset, get_group_id(2), 10))))) && p_1550->g_446.f2), l_1402[0])))) != (-2L)) , 0x082D3C06L) >= 0UL) || p_1550->g_857)) != 0x2FD063FBC886EAEDL))) , l_1461[0][1][0]));
                }
            }
            for (p_1550->g_929.f6 = 0; (p_1550->g_929.f6 <= 0); p_1550->g_929.f6 += 1)
            { /* block id: 753 */
                int32_t l_1467 = (-5L);
                return l_1467;
            }
            for (p_1550->g_355.f2 = 0; (p_1550->g_355.f2 <= 5); p_1550->g_355.f2 += 1)
            { /* block id: 758 */
                int32_t l_1475 = 3L;
                uint64_t *l_1488 = &p_1550->g_1169;
                int32_t *l_1491[1];
                int64_t l_1519 = 5L;
                uint8_t l_1524 = 0x5DL;
                int32_t l_1529 = 0L;
                int i;
                for (i = 0; i < 1; i++)
                    l_1491[i] = &l_1463;
                for (p_1550->g_446.f2 = 0; (p_1550->g_446.f2 <= 9); p_1550->g_446.f2 += 1)
                { /* block id: 761 */
                    uint32_t l_1468[8][1][10] = {{{4294967292UL,0x6251A5D3L,4294967293UL,8UL,0x6251A5D3L,8UL,4294967293UL,0x6251A5D3L,4294967292UL,4294967292UL}},{{4294967292UL,0x6251A5D3L,4294967293UL,8UL,0x6251A5D3L,8UL,4294967293UL,0x6251A5D3L,4294967292UL,4294967292UL}},{{4294967292UL,0x6251A5D3L,4294967293UL,8UL,0x6251A5D3L,8UL,4294967293UL,0x6251A5D3L,4294967292UL,4294967292UL}},{{4294967292UL,0x6251A5D3L,4294967293UL,8UL,0x6251A5D3L,8UL,4294967293UL,0x6251A5D3L,4294967292UL,4294967292UL}},{{4294967292UL,0x6251A5D3L,4294967293UL,8UL,0x6251A5D3L,8UL,4294967293UL,0x6251A5D3L,4294967292UL,4294967292UL}},{{4294967292UL,0x6251A5D3L,4294967293UL,8UL,0x6251A5D3L,8UL,4294967293UL,0x6251A5D3L,4294967292UL,4294967292UL}},{{4294967292UL,0x6251A5D3L,4294967293UL,8UL,0x6251A5D3L,8UL,4294967293UL,0x6251A5D3L,4294967292UL,4294967292UL}},{{4294967292UL,0x6251A5D3L,4294967293UL,8UL,0x6251A5D3L,8UL,4294967293UL,0x6251A5D3L,4294967292UL,4294967292UL}}};
                    int32_t *l_1494 = (void*)0;
                    int i, j, k;
                    for (p_1550->g_677.f6 = 0; (p_1550->g_677.f6 >= 0); p_1550->g_677.f6 -= 1)
                    { /* block id: 764 */
                        struct S0 *l_1471 = &p_1550->g_317;
                        int i, j;
                        l_1468[5][0][5]--;
                        (*l_1471) = (*p_1550->g_1187);
                    }
                }
                ++l_1524;
                (*p_1550->g_130) &= (safe_lshift_func_uint8_t_u_u(((l_1529 = 0xB7F26EE1L) ^ (safe_sub_func_uint16_t_u_u(p_1550->g_573[(p_1550->g_355.f2 + 1)], 0x378EL))), 4));
                if ((*p_1550->g_130))
                    continue;
            }
        }
    }
    else
    { /* block id: 788 */
        int64_t *l_1541 = &p_1550->g_779[0][2];
        int16_t ****l_1542 = (void*)0;
        int32_t l_1547[6][9] = {{0x2A233B2EL,0x506568E5L,(-1L),(-4L),1L,(-4L),(-1L),0x506568E5L,0x2A233B2EL},{0x2A233B2EL,0x506568E5L,(-1L),(-4L),1L,(-4L),(-1L),0x506568E5L,0x2A233B2EL},{0x2A233B2EL,0x506568E5L,(-1L),(-4L),1L,(-4L),(-1L),0x506568E5L,0x2A233B2EL},{0x2A233B2EL,0x506568E5L,(-1L),(-4L),1L,(-4L),(-1L),0x506568E5L,0x2A233B2EL},{0x2A233B2EL,0x506568E5L,(-1L),(-4L),1L,(-4L),(-1L),0x506568E5L,0x2A233B2EL},{0x2A233B2EL,0x506568E5L,(-1L),(-4L),1L,(-4L),(-1L),0x506568E5L,0x2A233B2EL}};
        int i, j;
        for (p_1550->g_356.f2 = 0; (p_1550->g_356.f2 <= 1); p_1550->g_356.f2 += 1)
        { /* block id: 791 */
            int32_t l_1532 = 0x05B0287CL;
            int32_t *l_1548 = &l_1348[0][2][1];
            int i;
            (*l_1368) = l_1548;
        }
    }
    return l_1549;
}


/* ------------------------------------------ */
/* 
 * reads : p_1550->g_765 p_1550->g_501 p_1550->g_502 p_1550->g_1123.f6 p_1550->g_752 p_1550->g_315.f0 p_1550->g_1169 p_1550->g_1123.f2 p_1550->g_87 p_1550->g_130 p_1550->g_1139 p_1550->g_1172 p_1550->g_1173 p_1550->g_857 p_1550->g_1186 p_1550->g_1187 p_1550->g_1179 p_1550->g_1198 p_1550->g_1123.f1 p_1550->g_388.f2 p_1550->g_584 p_1550->g_697 p_1550->g_929 p_1550->g_767 p_1550->g_768 p_1550->g_315.f3 p_1550->g_1224 p_1550->g_315.f6 p_1550->g_356.f3 p_1550->g_680.f7 p_1550->g_677.f2 p_1550->g_274.f3 p_1550->g_748 p_1550->g_749 p_1550->g_750 p_1550->g_525.f7 p_1550->g_457.f7 p_1550->g_681.f6 p_1550->g_1089 p_1550->g_588 p_1550->g_990.f7 p_1550->g_246 p_1550->g_247
 * writes: p_1550->g_766 p_1550->g_819.f4 p_1550->g_15 p_1550->g_1172 p_1550->g_1139 p_1550->g_857 p_1550->g_490 p_1550->g_1179 p_1550->g_455 p_1550->g_697 p_1550->g_502 p_1550->g_388.f2 p_1550->g_62 p_1550->g_681.f6 p_1550->g_315.f3 p_1550->g_110 p_1550->g_356.f3 p_1550->g_680.f7 p_1550->g_87 p_1550->g_1186.f3 p_1550->g_677.f2 p_1550->g_274.f3 p_1550->g_588 p_1550->g_779 p_1550->g_13
 */
int32_t * func_2(int16_t  p_3, int8_t  p_4, uint32_t  p_5, int64_t  p_6, struct S2 * p_1550)
{ /* block id: 582 */
    uint16_t l_1156[8];
    int32_t l_1167[7][10][3] = {{{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L}},{{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L}},{{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L}},{{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L}},{{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L}},{{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L}},{{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L},{2L,1L,1L}}};
    int16_t *l_1168 = &p_1550->g_819[8].f4;
    uint64_t ***l_1174 = (void*)0;
    uint64_t ***l_1175[9][6] = {{&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172},{&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172},{&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172},{&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172},{&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172},{&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172},{&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172},{&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172},{&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172,&p_1550->g_1172}};
    int32_t **l_1176 = &p_1550->g_1139;
    int32_t *l_1180 = &l_1167[5][3][0];
    int32_t *l_1181[3];
    int64_t l_1182 = 0x6B3E87E0AA0BABDBL;
    int16_t ***l_1184 = (void*)0;
    int16_t ****l_1183 = &l_1184;
    int16_t ***l_1185 = (void*)0;
    union U1 *l_1188 = &p_1550->g_819[8];
    uint32_t *l_1204 = &p_1550->g_588;
    uint32_t **l_1203 = &l_1204;
    uint64_t *l_1207 = &p_1550->g_681.f3;
    uint8_t l_1260 = 0x45L;
    uint16_t l_1304 = 0UL;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_1156[i] = 0x76C3L;
    for (i = 0; i < 3; i++)
        l_1181[i] = &p_1550->g_15[1];
    (*p_1550->g_1139) = (((((((safe_unary_minus_func_int8_t_s((l_1156[5] != ((safe_mod_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u((((0x4A61L && ((*l_1168) = ((l_1167[0][2][1] = (((((*p_1550->g_765) = (void*)0) != (void*)0) > (safe_lshift_func_uint16_t_u_u((*p_1550->g_501), (safe_lshift_func_int16_t_s_u((0x20CBL | (p_3 = (18446744073709551612UL < p_1550->g_1123[4][4].f6))), 3))))) != l_1156[5])) && (*p_1550->g_752)))) , 0x44FBAC26L) , FAKE_DIVERGE(p_1550->group_1_offset, get_group_id(1), 10)), p_6)) ^ p_1550->g_1169), p_1550->g_1123[4][4].f2)) == 0x3CD00FB2L)))) & p_1550->g_87) ^ l_1156[4]) & 0UL) , (*p_1550->g_130)) & p_5) , 0x106A595BL);
    (*p_1550->g_1139) = 0x1A831E1AL;
    if ((((*l_1183) = ((((safe_mul_func_int16_t_s_s((p_4 ^ (+(p_5 >= p_6))), (FAKE_DIVERGE(p_1550->local_0_offset, get_local_id(0), 10) <= ((~((p_1550->g_1172 = p_1550->g_1172) != &p_1550->g_1173)) == ((*p_1550->g_1173) &= (((((*l_1176) = &l_1167[0][2][1]) != (p_3 , &l_1167[4][0][0])) & p_6) != p_3)))))) <= p_4) || l_1182) , (void*)0)) != l_1185))
    { /* block id: 594 */
lbl_1265:
        (*p_1550->g_1187) = (GROUP_DIVERGE(0, 1) , p_1550->g_1186);
    }
    else
    { /* block id: 596 */
        uint16_t l_1190[6] = {1UL,1UL,1UL,1UL,1UL,1UL};
        struct S0 **l_1197 = &p_1550->g_697;
        uint32_t **l_1206[9];
        uint32_t ***l_1205 = &l_1206[7];
        int32_t l_1208 = 0x0FBF59DAL;
        int8_t ***l_1222 = &p_1550->g_767;
        int32_t l_1234 = (-5L);
        int32_t l_1236 = 0L;
        int32_t l_1237 = (-7L);
        int32_t l_1243 = 0x0984DC4EL;
        int32_t l_1245[1][5];
        int64_t ***l_1301[3][9][8] = {{{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]}},{{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]}},{{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]},{(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4],(void*)0,(void*)0,&p_1550->g_583[4]}}};
        int32_t l_1302[5][4][7] = {{{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL}},{{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL}},{{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL}},{{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL}},{{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL},{(-1L),(-5L),(-5L),(-1L),0x099E529CL,0x11A4839CL,0x11A4839CL}}};
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_1206[i] = &l_1204;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
                l_1245[i][j] = 0x0A215108L;
        }
        for (p_1550->g_1179 = 5; (p_1550->g_1179 >= 0); p_1550->g_1179 -= 1)
        { /* block id: 599 */
            int32_t l_1189 = 0x0B97C15AL;
            int i;
            p_1550->g_455[p_1550->g_1179] = l_1188;
            l_1190[0]++;
        }
        l_1208 &= (safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s((l_1190[5] == (((*l_1197) = &p_1550->g_929) == ((((*l_1180) == p_5) || (p_1550->g_1198 , ((((*p_1550->g_501) = ((safe_mul_func_uint8_t_u_u((p_5 & ((safe_mod_func_uint64_t_u_u(((~(((l_1203 != ((*l_1205) = &l_1204)) , l_1207) == (void*)0)) , FAKE_DIVERGE(p_1550->global_0_offset, get_global_id(0), 10)), p_3)) > p_6)), l_1190[0])) & (-1L))) , p_1550->g_1123[4][4].f1) >= 0x74B6BFCDL))) , &p_1550->g_929))), 11)), (**l_1176)));
        for (p_1550->g_388.f2 = (-26); (p_1550->g_388.f2 >= 48); p_1550->g_388.f2 = safe_add_func_int32_t_s_s(p_1550->g_388.f2, 9))
        { /* block id: 609 */
            uint32_t l_1215 = 0x8EE8944FL;
            int32_t ***l_1216 = &l_1176;
            int32_t ****l_1217 = &l_1216;
            int8_t ***l_1223[4][6] = {{&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767},{&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767},{&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767},{&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767,&p_1550->g_767}};
            int32_t l_1235 = 1L;
            int32_t l_1238 = 8L;
            int32_t l_1240 = 0x44405F9CL;
            int32_t l_1247 = 2L;
            int32_t l_1248 = 0x69FF14A3L;
            int32_t l_1251 = 0x738A05BBL;
            int32_t l_1252 = 0x50B05F59L;
            int32_t l_1253 = 0x428B6F7CL;
            int32_t l_1255 = 4L;
            int32_t l_1256 = (-1L);
            int32_t l_1257[4];
            int32_t l_1259 = 0x13F7E026L;
            int16_t l_1268[1];
            int i, j;
            for (i = 0; i < 4; i++)
                l_1257[i] = 0x3F5A1DF6L;
            for (i = 0; i < 1; i++)
                l_1268[i] = 0x701EL;
            if ((*p_1550->g_1139))
                break;
            if (((safe_sub_func_int8_t_s_s(((((*p_1550->g_584) = 0x162A9B544374D7DAL) < ((**l_1197) , (((*l_1217) = ((safe_add_func_int8_t_s_s(l_1215, 5L)) , l_1216)) == (void*)0))) & (**p_1550->g_1172)), (safe_lshift_func_int8_t_s_s(((**p_1550->g_767) = ((safe_add_func_uint8_t_u_u(p_3, (l_1222 == l_1223[3][5]))) <= p_4)), 5)))) , p_3))
            { /* block id: 614 */
                return &p_1550->g_15[3];
            }
            else
            { /* block id: 616 */
                int64_t l_1233 = 0x564995953F393149L;
                int32_t l_1241 = 4L;
                int32_t l_1242 = 0x06D423FEL;
                int32_t l_1244 = 1L;
                int32_t l_1249 = 0x196D1486L;
                int32_t l_1250[9] = {0L,0x49C35718L,0L,0L,0x49C35718L,0L,0L,0x49C35718L,0L};
                int16_t l_1254 = 1L;
                int i;
                for (p_1550->g_315.f3 = 0; (p_1550->g_315.f3 <= 2); p_1550->g_315.f3 += 1)
                { /* block id: 619 */
                    int16_t ***l_1225[4];
                    uint8_t *l_1232 = &p_1550->g_110[3];
                    int32_t l_1239[2][7][1];
                    int16_t l_1258 = (-1L);
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_1225[i] = &p_1550->g_423[0];
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 7; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_1239[i][j][k] = 0x2E171347L;
                        }
                    }
                    l_1233 |= ((p_1550->g_1224 , ((((*l_1183) = (void*)0) != (l_1225[1] = l_1225[1])) && (*p_1550->g_1139))) >= (safe_rshift_func_int8_t_s_s(((***l_1222) = (((safe_rshift_func_int16_t_s_u(l_1190[2], 12)) , (safe_mul_func_int16_t_s_s(0x33B7L, 1L))) == (((*l_1232) = p_1550->g_315.f6) & 0x6DL))), p_4)));
                    l_1260++;
                    for (p_1550->g_356.f3 = 1; (p_1550->g_356.f3 <= 5); p_1550->g_356.f3 += 1)
                    { /* block id: 628 */
                        (***l_1217) = (*l_1176);
                    }
                    if ((*p_1550->g_1139))
                        break;
                }
            }
            for (p_1550->g_680.f7 = 0; (p_1550->g_680.f7 > 7); ++p_1550->g_680.f7)
            { /* block id: 636 */
                if (p_1550->g_315.f3)
                    goto lbl_1265;
            }
            for (p_1550->g_87 = (-25); (p_1550->g_87 >= 23); p_1550->g_87 = safe_add_func_int8_t_s_s(p_1550->g_87, 8))
            { /* block id: 641 */
                int64_t l_1303 = 0x3662E5F5DD9C5FF0L;
                atomic_max(&p_1550->l_atomic_reduction[0], (p_4 , (l_1268[0] |= 0x0617BFF8L)) + get_linear_global_id());
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1550->v_collective += p_1550->l_atomic_reduction[0];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                for (p_1550->g_1186.f3 = 0; (p_1550->g_1186.f3 <= 46); p_1550->g_1186.f3++)
                { /* block id: 646 */
                    int64_t l_1271 = 0L;
                    for (p_1550->g_677.f2 = 0; (p_1550->g_677.f2 <= 2); p_1550->g_677.f2 += 1)
                    { /* block id: 649 */
                        uint32_t l_1272 = 0xADB148AFL;
                        if (p_1550->g_1186.f3)
                            goto lbl_1265;
                        (*l_1180) &= (&p_1550->g_573[6] == &p_1550->g_573[6]);
                        l_1272--;
                        atomic_min(&p_1550->g_atomic_reduction[get_linear_group_id()], 0x33522986L + get_linear_global_id());
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1550->v_collective += p_1550->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    }
                    for (p_1550->g_274.f3 = 0; (p_1550->g_274.f3 > 55); p_1550->g_274.f3 = safe_add_func_uint32_t_u_u(p_1550->g_274.f3, 4))
                    { /* block id: 657 */
                        return &p_1550->g_87;
                    }
                    for (l_1256 = 0; (l_1256 <= 7); l_1256 += 1)
                    { /* block id: 662 */
                        int32_t *l_1279 = (void*)0;
                        int i;
                        (*l_1180) &= (-1L);
                        if (l_1156[l_1256])
                            continue;
                        (*p_1550->g_1139) = (((safe_div_func_int64_t_s_s(((*l_1217) == (void*)0), (p_3 , (1L & (-10L))))) ^ ((**p_1550->g_1172) = 0x3E2C651745143979L)) < ((**l_1203) = l_1156[l_1256]));
                        return l_1279;
                    }
                }
                atomic_and(&p_1550->l_atomic_reduction[0], ((safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((safe_sub_func_int32_t_s_s(0x05B76EB6L, (((**p_1550->g_246) = (safe_mul_func_int8_t_s_s(((safe_div_func_int16_t_s_s((p_4 ^ (p_5 && (((((***l_1205) &= (safe_div_func_uint64_t_u_u(((***p_1550->g_748) | (safe_lshift_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(l_1190[1], (p_1550->g_457.f7 || (((((((((*p_1550->g_1089) = (safe_add_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((safe_unary_minus_func_uint32_t_u(p_1550->g_929.f6)), ((*p_1550->g_768) &= p_3))), 0x081AL))) , &p_1550->g_583[2]) != l_1301[2][6][7]) < p_5) >= l_1302[4][1][0]) && p_5) != 0xC9DCD9CCA7949A27L) , p_4)))), 3))), l_1303))) < p_1550->g_990.f7) , &l_1260) != &l_1260))), p_3)) | GROUP_DIVERGE(0, 1)), p_5))) , l_1303))), l_1243)), (**l_1176))) > p_1550->g_680.f7));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1550->v_collective += p_1550->l_atomic_reduction[0];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
        }
        l_1304++;
    }
    return &p_1550->g_87;
}


/* ------------------------------------------ */
/* 
 * reads : p_1550->g_128
 * writes: p_1550->g_14
 */
int32_t * func_9(uint32_t  p_10, int32_t * p_11, uint32_t  p_12, struct S2 * p_1550)
{ /* block id: 5 */
    int32_t l_19 = 3L;
    int32_t l_29[7] = {0x5761AC7EL,0L,0x5761AC7EL,0x5761AC7EL,0L,0x5761AC7EL,0x5761AC7EL};
    int16_t l_30[10] = {0x5240L,0x5240L,0x5240L,0x5240L,0x5240L,0x5240L,0x5240L,0x5240L,0x5240L,0x5240L};
    int i;
    for (p_12 = 15; (p_12 == 60); p_12 = safe_add_func_uint8_t_u_u(p_12, 1))
    { /* block id: 8 */
        int32_t *l_18 = &p_1550->g_15[6];
        int32_t l_20 = (-1L);
        int32_t *l_21 = &p_1550->g_15[1];
        int32_t *l_22 = &p_1550->g_15[4];
        int32_t *l_23 = &l_20;
        int32_t *l_24 = &p_1550->g_15[8];
        int32_t *l_25 = (void*)0;
        int32_t l_26 = (-3L);
        int32_t *l_27[5];
        uint8_t l_31 = 0x0CL;
        int i;
        for (i = 0; i < 5; i++)
            l_27[i] = &p_1550->g_15[2];
        l_31--;
    }
    for (l_19 = (-16); (l_19 > (-15)); ++l_19)
    { /* block id: 13 */
        uint16_t l_880[5][3] = {{0x6175L,0x6175L,0x6175L},{0x6175L,0x6175L,0x6175L},{0x6175L,0x6175L,0x6175L},{0x6175L,0x6175L,0x6175L},{0x6175L,0x6175L,0x6175L}};
        int i, j;
        (1 + 1);
    }
    (*p_1550->g_128) = &l_19;
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_1550->g_130 p_1550->g_87 p_1550->g_680.f7 p_1550->g_584 p_1550->g_62 p_1550->g_15 p_1550->g_752 p_1550->g_315.f0 p_1550->g_747 p_1550->g_748 p_1550->g_929 p_1550->g_274.f7 p_1550->g_283 p_1550->g_284 p_1550->g_285 p_1550->g_962 p_1550->g_749 p_1550->g_750 p_1550->g_525.f7 p_1550->g_457.f3 p_1550->g_132 p_1550->g_501 p_1550->g_502 p_1550->g_857 p_1550->g_573 p_1550->g_681.f2 p_1550->g_317.f3 p_1550->g_879 p_1550->g_454 p_1550->g_455 p_1550->g_993 p_1550->g_746 p_1550->g_93 p_1550->g_198 p_1550->g_851 p_1550->g_766 p_1550->g_767 p_1550->g_768 p_1550->g_741 p_1550->g_841.f7 p_1550->g_184 p_1550->g_128 p_1550->g_1037 p_1550->g_1055 p_1550->g_274.f3 p_1550->g_457.f6 p_1550->g_388.f0 p_1550->g_842.f6 p_1550->g_1088 p_1550->g_765 p_1550->g_681.f6 p_1550->g_588 p_1550->g_842.f7 p_1550->g_246 p_1550->g_247 p_1550->g_13 p_1550->g_697 p_1550->g_677.f7 p_1550->g_274.f2 p_1550->g_356.f7 p_1550->g_457.f7 p_1550->g_677.f6 p_1550->g_990.f6
 * writes: p_1550->g_677.f7 p_1550->g_274.f2 p_1550->g_356.f7 p_1550->g_457.f7 p_1550->g_680 p_1550->g_741 p_1550->g_62 p_1550->g_132 p_1550->g_857 p_1550->g_110 p_1550->g_588 p_1550->g_87 p_1550->g_990 p_1550->g_455 p_1550->g_677.f6 p_1550->g_994 p_1550->g_681.f6 p_1550->g_184 p_1550->g_15 p_1550->g_14 p_1550->g_457.f3 p_1550->g_929.f3 p_1550->g_502 p_1550->g_851 p_1550->g_688.f2 p_1550->g_842.f7 p_1550->g_13 p_1550->g_198 p_1550->g_487
 */
int32_t * func_36(int32_t  p_37, int8_t  p_38, uint32_t  p_39, int32_t * p_40, uint32_t  p_41, struct S2 * p_1550)
{ /* block id: 460 */
    uint8_t l_893 = 255UL;
    int32_t l_903 = 0x6BBF2893L;
    int32_t l_914 = (-6L);
    int32_t l_915 = (-7L);
    uint16_t *l_923 = (void*)0;
    int32_t l_934 = 0x1480B4ADL;
    int32_t l_935 = 2L;
    int32_t l_937 = 0x7DE0E5A3L;
    int32_t l_938 = (-8L);
    int32_t l_939 = 0x1055E4EBL;
    int32_t l_941[10][3] = {{0x13B33F15L,0x3819B542L,0x2F20AA90L},{0x13B33F15L,0x3819B542L,0x2F20AA90L},{0x13B33F15L,0x3819B542L,0x2F20AA90L},{0x13B33F15L,0x3819B542L,0x2F20AA90L},{0x13B33F15L,0x3819B542L,0x2F20AA90L},{0x13B33F15L,0x3819B542L,0x2F20AA90L},{0x13B33F15L,0x3819B542L,0x2F20AA90L},{0x13B33F15L,0x3819B542L,0x2F20AA90L},{0x13B33F15L,0x3819B542L,0x2F20AA90L},{0x13B33F15L,0x3819B542L,0x2F20AA90L}};
    uint8_t l_944 = 0xF3L;
    int32_t *l_948 = (void*)0;
    union U1 **l_955[6][3][8] = {{{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]}},{{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]}},{{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]}},{{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]}},{{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]}},{{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]},{(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[0],&p_1550->g_455[0],(void*)0,&p_1550->g_455[2]}}};
    int8_t l_997 = 1L;
    int64_t **l_1042 = (void*)0;
    int8_t l_1099 = 0L;
    uint32_t l_1100 = 4294967291UL;
    uint64_t *l_1108 = (void*)0;
    uint64_t **l_1107 = &l_1108;
    int8_t **l_1125 = &p_1550->g_768;
    int32_t *l_1127 = &l_941[9][2];
    int32_t *l_1128 = &p_1550->g_15[1];
    int32_t *l_1129[6] = {&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&p_1550->g_87};
    uint16_t l_1131 = 0xCF0EL;
    int32_t *l_1134[5][4][2] = {{{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938}},{{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938}},{{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938}},{{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938}},{{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938},{&l_935,&l_938}}};
    int32_t *l_1135 = (void*)0;
    int i, j, k;
lbl_1048:
    for (p_1550->g_677.f7 = 0; (p_1550->g_677.f7 == 15); p_1550->g_677.f7++)
    { /* block id: 463 */
        uint32_t l_883 = 0x2D91E006L;
        if (l_883)
            break;
    }
    for (p_1550->g_274.f2 = 0; (p_1550->g_274.f2 <= 24); p_1550->g_274.f2 = safe_add_func_int32_t_s_s(p_1550->g_274.f2, 7))
    { /* block id: 468 */
        int64_t l_906[7][8][3] = {{{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L}},{{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L}},{{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L}},{{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L}},{{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L}},{{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L}},{{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L},{1L,0x4BCAE7F1DADE41C8L,0x77F6D22D004E5075L}}};
        int32_t l_907 = 0x0AF476ACL;
        int32_t l_913[4] = {0x4223FD57L,0x4223FD57L,0x4223FD57L,0x4223FD57L};
        int32_t *l_926 = &l_915;
        uint64_t **l_928 = (void*)0;
        uint64_t ***l_927 = &l_928;
        int32_t *l_947[2];
        union U1 **l_953 = &p_1550->g_455[4];
        union U1 ***l_954 = &l_953;
        int32_t *l_989 = &p_1550->g_851;
        uint64_t l_998 = 2UL;
        int8_t ***l_1015 = (void*)0;
        int32_t *l_1028 = &p_1550->g_741;
        uint8_t *l_1029[9][10] = {{&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0],&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0]},{&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0],&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0]},{&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0],&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0]},{&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0],&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0]},{&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0],&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0]},{&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0],&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0]},{&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0],&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0]},{&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0],&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0]},{&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0],&p_1550->g_184[0],&p_1550->g_573[1],&p_1550->g_110[1],&p_1550->g_573[1],&p_1550->g_184[0]}};
        int64_t **l_1047 = &p_1550->g_584;
        int16_t l_1076 = 0x528AL;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_947[i] = &l_915;
        for (p_1550->g_356.f7 = 1; (p_1550->g_356.f7 <= 4); p_1550->g_356.f7 += 1)
        { /* block id: 471 */
            int8_t l_890 = 0x13L;
            uint16_t *l_902 = (void*)0;
            int32_t l_911 = 0L;
            int32_t l_912 = (-1L);
            int64_t l_933 = 0x52BC606FB944794FL;
            int32_t l_936[8][10] = {{0L,1L,1L,0L,0x71F909C8L,3L,3L,0x71F909C8L,0L,1L},{0L,1L,1L,0L,0x71F909C8L,3L,3L,0x71F909C8L,0L,1L},{0L,1L,1L,0L,0x71F909C8L,3L,3L,0x71F909C8L,0L,1L},{0L,1L,1L,0L,0x71F909C8L,3L,3L,0x71F909C8L,0L,1L},{0L,1L,1L,0L,0x71F909C8L,3L,3L,0x71F909C8L,0L,1L},{0L,1L,1L,0L,0x71F909C8L,3L,3L,0x71F909C8L,0L,1L},{0L,1L,1L,0L,0x71F909C8L,3L,3L,0x71F909C8L,0L,1L},{0L,1L,1L,0L,0x71F909C8L,3L,3L,0x71F909C8L,0L,1L}};
            int16_t l_940 = 0x3E83L;
            int i, j;
            if ((safe_div_func_uint32_t_u_u((safe_add_func_uint32_t_u_u((!(l_890 ^ p_38)), ((safe_mod_func_uint16_t_u_u(l_893, l_890)) & (safe_div_func_int32_t_s_s((safe_div_func_uint32_t_u_u((((safe_mod_func_uint16_t_u_u((l_903 = (safe_add_func_uint64_t_u_u(l_890, (&p_1550->g_500 != &p_1550->g_500)))), ((safe_div_func_int32_t_s_s(((((((l_907 = l_906[3][7][1]) > (((safe_add_func_int32_t_s_s((*p_1550->g_130), 0L)) & l_890) && 0xB4L)) ^ p_1550->g_680.f7) | p_41) , l_906[3][7][1]) != (*p_1550->g_584)), p_41)) && l_906[3][7][1]))) , &p_1550->g_455[0]) == (void*)0), 1UL)), GROUP_DIVERGE(2, 1)))))), GROUP_DIVERGE(0, 1))))
            { /* block id: 474 */
                uint8_t l_916[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_916[i] = 248UL;
                for (p_1550->g_457.f7 = 1; (p_1550->g_457.f7 <= 4); p_1550->g_457.f7 += 1)
                { /* block id: 477 */
                    int32_t *l_910[1][6] = {{&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&p_1550->g_87}};
                    int i, j;
                    ++l_916[1];
                    if ((*p_40))
                        continue;
                }
            }
            else
            { /* block id: 481 */
                int32_t *l_924 = &l_914;
                int32_t **l_925[9];
                int32_t l_942 = 0x1D719B0DL;
                int16_t l_943 = 0L;
                int i;
                for (i = 0; i < 9; i++)
                    l_925[i] = &l_924;
                if ((safe_rshift_func_int8_t_s_u(((8L == (l_923 != (l_902 = l_923))) < (p_39 > ((((l_926 = ((*p_1550->g_752) , l_924)) != &p_37) == ((((l_927 == (void*)0) <= p_37) , (void*)0) == (*p_1550->g_747))) < l_915))), l_913[2])))
                { /* block id: 484 */
                    struct S0 *l_930 = (void*)0;
                    struct S0 *l_931 = &p_1550->g_680;
                    (*l_931) = p_1550->g_929;
                }
                else
                { /* block id: 486 */
                    for (p_1550->g_741 = 4; (p_1550->g_741 >= 0); p_1550->g_741 -= 1)
                    { /* block id: 489 */
                        int8_t l_932[7][5];
                        int i, j;
                        for (i = 0; i < 7; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_932[i][j] = 0L;
                        }
                        if (l_932[2][0])
                            break;
                    }
                    p_40 = &p_37;
                    return &p_1550->g_851;
                }
                l_944--;
            }
            return l_948;
        }
        if ((((*p_1550->g_584) = ((safe_mod_func_int8_t_s_s((((~p_1550->g_274.f7) , ((((((safe_rshift_func_int8_t_s_u((((((*l_954) = l_953) == l_955[1][1][3]) , p_40) == (void*)0), ((((((-4L) <= (0x71D2L != p_41)) || (~(safe_rshift_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u(((*p_40) > 0xBBA11847L), 7)) ^ GROUP_DIVERGE(1, 1)), 2)))) > p_39) , p_38) ^ p_39))) == (*p_1550->g_752)) < 9UL) || (**p_1550->g_283)) ^ 65535UL) | p_1550->g_962)) , (****p_1550->g_747)), 0x79L)) & (-4L))) == p_1550->g_457.f3))
        { /* block id: 501 */
            int32_t *l_963 = &l_939;
            uint32_t *l_966 = (void*)0;
            uint32_t *l_967 = &p_1550->g_132[5][5];
            uint8_t *l_986 = (void*)0;
            uint8_t *l_987 = &p_1550->g_110[1];
            uint32_t *l_988 = &p_1550->g_588;
            p_1550->g_990 = func_46(l_963, &p_37, &p_37, ((4UL < (p_1550->g_857 ^= (safe_mul_func_int8_t_s_s(p_37, ((++(*l_967)) && (safe_rshift_func_uint16_t_u_u((*p_1550->g_501), 15))))))) <= (safe_sub_func_uint64_t_u_u((*l_963), (p_38 >= (safe_sub_func_int16_t_s_s((safe_add_func_int64_t_s_s(((!((*l_988) = (safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u((safe_add_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(((*l_987) = (((p_1550->g_573[3] , 1UL) , (void*)0) == &p_38)), p_37)), 0x74E47E51L)), 3)), p_41)))) == 0xD54B727CL), p_1550->g_680.f7)), 0x16E5L)))))), l_989, p_1550);
        }
        else
        { /* block id: 507 */
            int16_t l_995 = 0x0C77L;
            int32_t l_996 = (-1L);
            (**l_954) = (*p_1550->g_454);
            if ((*p_1550->g_130))
                continue;
            for (p_1550->g_677.f6 = 11; (p_1550->g_677.f6 >= (-6)); p_1550->g_677.f6 = safe_sub_func_int16_t_s_s(p_1550->g_677.f6, 8))
            { /* block id: 512 */
                p_1550->g_994 = p_1550->g_993;
            }
            --l_998;
        }
        (*p_40) ^= ((((safe_mod_func_int32_t_s_s((safe_mod_func_uint64_t_u_u((safe_add_func_uint8_t_u_u((p_1550->g_184[1] &= (safe_add_func_int8_t_s_s((*****p_1550->g_746), ((safe_add_func_uint64_t_u_u(((~(safe_lshift_func_int16_t_s_s((~((safe_rshift_func_int16_t_s_s((l_1015 == (void*)0), ((4L && (((((*l_1028) |= (((safe_mod_func_int8_t_s_s((((*l_926) > (((p_37 > (safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u(p_1550->g_93[3], 0x5FL)), ((***p_1550->g_766) = (safe_rshift_func_int16_t_s_s((safe_div_func_uint64_t_u_u(((((3L == p_1550->g_198[7]) != (*p_1550->g_584)) <= (*l_989)) , p_41), 0xBE67B76FB767C627L)), p_41))))) != (*l_989)), p_41))) != 0x336A08D3F3590E1AL) < l_893)) < (*l_926)), p_38)) & p_38) , p_38)) , 0x7AL) == GROUP_DIVERGE(0, 1)) != p_1550->g_841.f7)) || 0UL))) , (-1L))), 14))) ^ l_939), (*l_926))) & p_39)))), p_41)), p_41)), p_1550->g_502)) && p_37) > 2L) != GROUP_DIVERGE(0, 1));
        for (p_1550->g_990.f6 = 0; (p_1550->g_990.f6 > 18); ++p_1550->g_990.f6)
        { /* block id: 523 */
            int8_t l_1072 = 0L;
            int64_t **l_1090[4][5][8] = {{{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089}},{{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089}},{{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089}},{{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089},{&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089,&p_1550->g_1089}}};
            int64_t **l_1091 = &p_1550->g_1089;
            int i, j, k;
            (*p_40) = 7L;
            if ((*p_40))
            { /* block id: 525 */
                (*p_1550->g_128) = (void*)0;
            }
            else
            { /* block id: 527 */
                uint32_t l_1034 = 4294967295UL;
                int64_t **l_1038 = &p_1550->g_584;
                int64_t *l_1059 = &p_1550->g_779[1][1];
                int64_t **l_1058 = &l_1059;
                for (p_1550->g_457.f3 = 28; (p_1550->g_457.f3 > 18); p_1550->g_457.f3 = safe_sub_func_uint8_t_u_u(p_1550->g_457.f3, 4))
                { /* block id: 530 */
                    int32_t l_1039 = 0x6D314084L;
                    if ((*p_40))
                        break;
                    for (p_1550->g_929.f3 = 0; (p_1550->g_929.f3 <= 2); p_1550->g_929.f3 += 1)
                    { /* block id: 534 */
                        int64_t ***l_1040 = (void*)0;
                        int64_t ***l_1041 = &p_1550->g_583[4];
                        int64_t ***l_1043 = &p_1550->g_583[3];
                        int64_t ***l_1044 = &p_1550->g_583[4];
                        int64_t ***l_1045 = &p_1550->g_583[6];
                        int64_t ***l_1046[9][9] = {{&l_1038,(void*)0,&p_1550->g_583[4],&p_1550->g_583[4],(void*)0,&l_1038,&p_1550->g_583[4],&p_1550->g_583[4],&p_1550->g_583[4]},{&l_1038,(void*)0,&p_1550->g_583[4],&p_1550->g_583[4],(void*)0,&l_1038,&p_1550->g_583[4],&p_1550->g_583[4],&p_1550->g_583[4]},{&l_1038,(void*)0,&p_1550->g_583[4],&p_1550->g_583[4],(void*)0,&l_1038,&p_1550->g_583[4],&p_1550->g_583[4],&p_1550->g_583[4]},{&l_1038,(void*)0,&p_1550->g_583[4],&p_1550->g_583[4],(void*)0,&l_1038,&p_1550->g_583[4],&p_1550->g_583[4],&p_1550->g_583[4]},{&l_1038,(void*)0,&p_1550->g_583[4],&p_1550->g_583[4],(void*)0,&l_1038,&p_1550->g_583[4],&p_1550->g_583[4],&p_1550->g_583[4]},{&l_1038,(void*)0,&p_1550->g_583[4],&p_1550->g_583[4],(void*)0,&l_1038,&p_1550->g_583[4],&p_1550->g_583[4],&p_1550->g_583[4]},{&l_1038,(void*)0,&p_1550->g_583[4],&p_1550->g_583[4],(void*)0,&l_1038,&p_1550->g_583[4],&p_1550->g_583[4],&p_1550->g_583[4]},{&l_1038,(void*)0,&p_1550->g_583[4],&p_1550->g_583[4],(void*)0,&l_1038,&p_1550->g_583[4],&p_1550->g_583[4],&p_1550->g_583[4]},{&l_1038,(void*)0,&p_1550->g_583[4],&p_1550->g_583[4],(void*)0,&l_1038,&p_1550->g_583[4],&p_1550->g_583[4],&p_1550->g_583[4]}};
                        int i, j;
                        ++l_1034;
                        (*p_40) |= (p_1550->g_1037 , (l_1038 == (l_1047 = (l_1039 , (l_1042 = l_1038)))));
                    }
                    if (p_1550->g_879.f6)
                        goto lbl_1048;
                }
                if (l_1034)
                    continue;
                for (l_997 = (-9); (l_997 <= 21); l_997 = safe_add_func_int8_t_s_s(l_997, 9))
                { /* block id: 545 */
                    int64_t l_1093[10] = {0L,0x02C32CF2E6232616L,0L,0L,0x02C32CF2E6232616L,0L,0L,0x02C32CF2E6232616L,0L,0L};
                    int i;
                    (*l_989) ^= ((safe_mod_func_uint16_t_u_u((((*p_1550->g_501) = (safe_lshift_func_int16_t_s_u(((p_1550->g_1055[0][4][0] != ((5L & p_37) , l_1058)) , 0x5976L), 15))) && ((((safe_rshift_func_uint16_t_u_u(((~(((safe_sub_func_int16_t_s_s(p_38, (((((safe_rshift_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((safe_lshift_func_uint8_t_u_u((safe_add_func_int16_t_s_s(p_41, (0x96L < ((((1L > 0x0365L) || 0x10C4L) > l_1072) != 0x709027DB32AE9721L)))), 1)) , l_1072), l_1034)), 6)) ^ 4294967295UL) || (*p_40)) > (*p_1550->g_752)) , 0x6927L))) | p_1550->g_274.f3) | p_38)) <= l_944), 12)) || l_1072) == (-1L)) | 0x5DL)), p_1550->g_457.f6)) || 18446744073709551609UL);
                    l_948 = (void*)0;
                    for (p_1550->g_688.f2 = (-4); (p_1550->g_688.f2 <= 10); p_1550->g_688.f2 = safe_add_func_uint64_t_u_u(p_1550->g_688.f2, 9))
                    { /* block id: 551 */
                        int64_t **l_1075 = &p_1550->g_584;
                        int32_t l_1081 = 6L;
                        uint32_t *l_1092 = &p_1550->g_588;
                        (*l_926) &= (((l_1075 == ((l_1076 | (safe_rshift_func_uint16_t_u_u(65530UL, (safe_rshift_func_int16_t_s_s(p_38, 2))))) , (p_1550->g_388.f0 , (void*)0))) < (((l_1081 , (p_1550->g_842.f6 , p_39)) , 0x7F24C00B0500686EL) & GROUP_DIVERGE(1, 1))) || l_1072);
                        (*p_40) = (((safe_add_func_uint8_t_u_u(6UL, ((((*p_1550->g_584) | ((0x76L == ((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1550->local_2_offset, get_local_id(2), 10), (*p_1550->g_584))) >= (((((*l_989) ^ (FAKE_DIVERGE(p_1550->global_2_offset, get_global_id(2), 10) > (safe_add_func_uint16_t_u_u((((*l_1092) &= ((2UL || (((p_39 > ((l_1090[0][4][3] = p_1550->g_1088) == (((+(p_37 < 255UL)) ^ (**p_1550->g_283)) , l_1091))) >= (****p_1550->g_765)) ^ 0UL)) , l_1034)) && 0UL), p_38)))) == p_1550->g_317.f3) ^ l_1072) >= (*p_1550->g_584)))) < l_1034)) || 0x2024EF9F3A9AB0D8L) ^ 0x2E851B42L))) != l_1093[1]) & l_1034);
                    }
                    if (p_1550->g_929.f3)
                        goto lbl_1048;
                }
            }
        }
    }
    for (p_1550->g_842.f7 = 0; (p_1550->g_842.f7 > (-24)); --p_1550->g_842.f7)
    { /* block id: 564 */
        int32_t *l_1096 = &p_1550->g_15[1];
        int32_t *l_1097 = &l_941[4][2];
        int32_t *l_1098[6][9] = {{&p_1550->g_15[1],&l_903,&l_915,&p_1550->g_851,&l_934,&p_1550->g_15[1],&p_1550->g_851,&l_939,&p_1550->g_851},{&p_1550->g_15[1],&l_903,&l_915,&p_1550->g_851,&l_934,&p_1550->g_15[1],&p_1550->g_851,&l_939,&p_1550->g_851},{&p_1550->g_15[1],&l_903,&l_915,&p_1550->g_851,&l_934,&p_1550->g_15[1],&p_1550->g_851,&l_939,&p_1550->g_851},{&p_1550->g_15[1],&l_903,&l_915,&p_1550->g_851,&l_934,&p_1550->g_15[1],&p_1550->g_851,&l_939,&p_1550->g_851},{&p_1550->g_15[1],&l_903,&l_915,&p_1550->g_851,&l_934,&p_1550->g_15[1],&p_1550->g_851,&l_939,&p_1550->g_851},{&p_1550->g_15[1],&l_903,&l_915,&p_1550->g_851,&l_934,&p_1550->g_15[1],&p_1550->g_851,&l_939,&p_1550->g_851}};
        int16_t *l_1117 = &p_1550->g_198[3];
        struct S0 *l_1122 = &p_1550->g_1123[4][4];
        uint16_t *l_1124 = &p_1550->g_487[3][0];
        int8_t **l_1126 = &p_1550->g_768;
        int i, j;
        l_1100++;
        (*p_1550->g_130) = ((safe_sub_func_uint32_t_u_u(((((((((**p_1550->g_246) &= (p_37 | GROUP_DIVERGE(0, 1))) > (((safe_mod_func_int64_t_s_s((&p_1550->g_284[0] == l_1107), p_1550->g_962)) && (safe_mod_func_int64_t_s_s((+((safe_lshift_func_uint8_t_u_s(5UL, 3)) != ((l_941[3][2] = (safe_lshift_func_int8_t_s_u((safe_add_func_int16_t_s_s(((*l_1117) |= 0x521DL), (((((safe_rshift_func_int8_t_s_s((((((*l_1124) = (p_41 , ((((p_1550->g_697 == l_1122) , 8L) , 65535UL) ^ 65535UL))) | p_41) && 0x40751ABCL) != p_39), 6)) , p_38) , 0x39128ACCL) && 0x429D530CL) > 0L))), p_38))) == FAKE_DIVERGE(p_1550->global_2_offset, get_global_id(2), 10)))), 0xE0A8C5715836E39DL))) | p_39)) || 1L) <= (*p_40)) , l_1125) != l_1126) && 65529UL), 0x5E7704A7L)) | p_39);
    }
    --l_1131;
    return l_1135;
}


/* ------------------------------------------ */
/* 
 * reads : p_1550->g_501 p_1550->g_502 p_1550->g_584 p_1550->g_62 p_1550->g_681.f2 p_1550->g_317.f3 p_1550->g_879
 * writes: p_1550->g_62 p_1550->g_87
 */
struct S0  func_46(int32_t * p_47, int32_t * p_48, int32_t * p_49, int64_t  p_50, int32_t * p_51, struct S2 * p_1550)
{ /* block id: 456 */
    int32_t l_864 = 0x022BF018L;
    int8_t **l_865 = &p_1550->g_768;
    int32_t *l_878 = &p_1550->g_87;
    (*l_878) = (safe_add_func_int16_t_s_s((0x609E6FECCF23579AL & l_864), (l_865 != ((p_50 >= ((*p_1550->g_584) = ((*p_1550->g_501) ^ (safe_mul_func_uint16_t_u_u((+0x6B2BL), ((safe_sub_func_int32_t_s_s((safe_div_func_uint8_t_u_u(((safe_add_func_int64_t_s_s(p_50, ((((safe_add_func_uint16_t_u_u((((*p_1550->g_584) | l_864) ^ 65535UL), l_864)) <= p_1550->g_681.f2) < p_50) & p_50))) >= 18446744073709551611UL), p_1550->g_317.f3)), l_864)) && 1L)))))) , (void*)0))));
    return p_1550->g_879;
}


/* ------------------------------------------ */
/* 
 * reads : p_1550->g_28 p_1550->g_62 p_1550->g_15 p_1550->g_93 p_1550->g_14 p_1550->g_110 p_1550->g_13 p_1550->g_87 p_1550->g_128 p_1550->g_130 p_1550->g_165 p_1550->g_168 p_1550->g_355 p_1550->g_317.f6 p_1550->g_314.f5 p_1550->g_317.f3 p_1550->g_388 p_1550->g_392 p_1550->g_245 p_1550->g_246 p_1550->g_247 p_1550->g_423 p_1550->g_356.f6 p_1550->g_315.f7 p_1550->g_274.f6 p_1550->g_198 p_1550->g_274.f7 p_1550->g_446 p_1550->g_454 p_1550->g_457 p_1550->g_458 p_1550->g_463 p_1550->g_464 p_1550->g_453.f1 p_1550->g_490 p_1550->g_499 p_1550->g_283 p_1550->g_284 p_1550->g_285 p_1550->g_501 p_1550->g_504 p_1550->g_525 p_1550->g_132 p_1550->g_502 p_1550->g_487 p_1550->g_317.f2 p_1550->g_573 p_1550->g_588 p_1550->g_589 p_1550->g_314.f6 p_1550->g_819 p_1550->g_584 p_1550->g_826 p_1550->g_841 p_1550->g_843 p_1550->g_851 p_1550->g_681.f3 p_1550->g_859 p_1550->g_860
 * writes: p_1550->g_62 p_1550->g_93 p_1550->g_110 p_1550->g_13 p_1550->g_28 p_1550->g_87 p_1550->g_128 p_1550->g_132 p_1550->g_153 p_1550->g_169 p_1550->g_14 p_1550->g_356 p_1550->g_317.f6 p_1550->g_355.f3 p_1550->g_388.f7 p_1550->g_423 p_1550->g_198 p_1550->g_388.f6 p_1550->g_455 p_1550->g_274 p_1550->g_315.f7 p_1550->g_457 p_1550->g_453.f1 p_1550->g_487 p_1550->g_504 p_1550->g_314 p_1550->g_184 p_1550->g_573 p_1550->g_583 p_1550->g_502 p_1550->g_453.f4 p_1550->g_826 p_1550->g_842 p_1550->g_851 p_1550->g_681.f3 p_1550->g_861
 */
int32_t * func_52(int32_t  p_53, uint8_t  p_54, int32_t * p_55, uint8_t  p_56, int32_t * p_57, struct S2 * p_1550)
{ /* block id: 14 */
    int32_t l_60[10][2][7] = {{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}},{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}},{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}},{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}},{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}},{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}},{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}},{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}},{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}},{{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL},{(-5L),0x7CFEB45DL,0x54113837L,0x7CFEB45DL,(-5L),(-5L),0x7CFEB45DL}}};
    int64_t *l_61 = &p_1550->g_62[0];
    int16_t *l_840 = &p_1550->g_198[3];
    uint64_t *l_856[7] = {&p_1550->g_857,&p_1550->g_857,&p_1550->g_857,&p_1550->g_857,&p_1550->g_857,&p_1550->g_857,&p_1550->g_857};
    int32_t l_858 = (-6L);
    int i, j, k;
    (*p_1550->g_859) = ((!((*l_61) = l_60[5][1][0])) , ((GROUP_DIVERGE(1, 1) != ((l_858 |= func_63((((safe_add_func_int32_t_s_s((+(((*l_840) = (l_60[5][1][0] > (0x8EB2L | ((safe_lshift_func_int16_t_s_s(p_1550->g_28, p_1550->g_62[0])) || (l_60[5][1][0] & ((func_72(func_78(&p_1550->g_15[1], ((l_60[1][1][6] >= ((p_54 & GROUP_DIVERGE(1, 1)) > p_1550->g_62[0])) , l_60[5][1][0]), p_1550), l_61, p_1550->g_28, (*p_57), &l_60[5][1][0], p_1550) != p_53) == FAKE_DIVERGE(p_1550->global_2_offset, get_global_id(2), 10))))))) | 0L)), l_60[3][0][0])) <= p_53) & 0x3F25L), p_56, l_61, p_53, p_1550)) , p_54)) | 0xB5886AAA1F966AE6L));
    p_1550->g_861 = p_1550->g_860;
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads : p_1550->g_841 p_1550->g_843 p_1550->g_128 p_1550->g_283 p_1550->g_284 p_1550->g_285 p_1550->g_165 p_1550->g_87 p_1550->g_851 p_1550->g_681.f3 p_1550->g_315.f7 p_1550->g_15
 * writes: p_1550->g_842 p_1550->g_14 p_1550->g_851 p_1550->g_681.f3 p_1550->g_315.f7
 */
uint64_t  func_63(uint64_t  p_64, int16_t  p_65, int64_t * p_66, int32_t  p_67, struct S2 * p_1550)
{ /* block id: 432 */
    uint16_t l_846 = 0UL;
    int32_t *l_849 = &p_1550->g_15[1];
    p_1550->g_842 = p_1550->g_841;
    if (p_1550->g_843)
    { /* block id: 434 */
        int32_t *l_844 = &p_1550->g_87;
        int32_t *l_845[2];
        int i;
        for (i = 0; i < 2; i++)
            l_845[i] = &p_1550->g_87;
        ++l_846;
        (*p_1550->g_128) = l_849;
        return (**p_1550->g_283);
    }
    else
    { /* block id: 438 */
        int32_t *l_850 = &p_1550->g_851;
        (*l_850) &= (*p_1550->g_165);
        for (p_1550->g_681.f3 = 0; (p_1550->g_681.f3 != 56); ++p_1550->g_681.f3)
        { /* block id: 442 */
            if (p_67)
                break;
            for (p_1550->g_315.f7 = (-15); (p_1550->g_315.f7 >= 25); p_1550->g_315.f7++)
            { /* block id: 446 */
                return (*l_850);
            }
        }
    }
    return (*l_849);
}


/* ------------------------------------------ */
/* 
 * reads : p_1550->g_93 p_1550->g_14 p_1550->g_15 p_1550->g_110 p_1550->g_13 p_1550->g_28 p_1550->g_87 p_1550->g_128 p_1550->g_130 p_1550->g_165 p_1550->g_168 p_1550->g_62 p_1550->g_355 p_1550->g_317.f6 p_1550->g_314.f5 p_1550->g_317.f3 p_1550->g_388 p_1550->g_392 p_1550->g_245 p_1550->g_246 p_1550->g_247 p_1550->g_423 p_1550->g_356.f6 p_1550->g_315.f7 p_1550->g_274.f6 p_1550->g_198 p_1550->g_274.f7 p_1550->g_446 p_1550->g_454 p_1550->g_457 p_1550->g_458 p_1550->g_463 p_1550->g_464 p_1550->g_453.f1 p_1550->g_490 p_1550->g_499 p_1550->g_283 p_1550->g_284 p_1550->g_285 p_1550->g_501 p_1550->g_504 p_1550->g_525 p_1550->g_132 p_1550->g_502 p_1550->g_487 p_1550->g_317.f2 p_1550->g_573 p_1550->g_588 p_1550->g_589 p_1550->g_314.f6 p_1550->g_819 p_1550->g_584 p_1550->g_826
 * writes: p_1550->g_93 p_1550->g_110 p_1550->g_13 p_1550->g_28 p_1550->g_87 p_1550->g_128 p_1550->g_132 p_1550->g_62 p_1550->g_153 p_1550->g_169 p_1550->g_14 p_1550->g_356 p_1550->g_317.f6 p_1550->g_355.f3 p_1550->g_388.f7 p_1550->g_423 p_1550->g_198 p_1550->g_388.f6 p_1550->g_455 p_1550->g_274 p_1550->g_315.f7 p_1550->g_457 p_1550->g_453.f1 p_1550->g_487 p_1550->g_504 p_1550->g_314 p_1550->g_184 p_1550->g_573 p_1550->g_583 p_1550->g_502 p_1550->g_453.f4 p_1550->g_826
 */
uint8_t  func_72(uint16_t  p_73, int64_t * p_74, uint32_t  p_75, int32_t  p_76, int32_t * p_77, struct S2 * p_1550)
{ /* block id: 20 */
    int32_t *l_85 = (void*)0;
    int32_t *l_86 = &p_1550->g_87;
    int32_t l_88 = 7L;
    int32_t *l_89 = (void*)0;
    int32_t *l_90 = &l_88;
    int32_t *l_91[5];
    uint8_t *l_109 = &p_1550->g_110[1];
    int8_t *l_111[8][2] = {{&p_1550->g_13[0][1][0],&p_1550->g_13[0][1][0]},{&p_1550->g_13[0][1][0],&p_1550->g_13[0][1][0]},{&p_1550->g_13[0][1][0],&p_1550->g_13[0][1][0]},{&p_1550->g_13[0][1][0],&p_1550->g_13[0][1][0]},{&p_1550->g_13[0][1][0],&p_1550->g_13[0][1][0]},{&p_1550->g_13[0][1][0],&p_1550->g_13[0][1][0]},{&p_1550->g_13[0][1][0],&p_1550->g_13[0][1][0]},{&p_1550->g_13[0][1][0],&p_1550->g_13[0][1][0]}};
    int64_t l_300 = (-10L);
    int8_t **l_416 = &l_111[7][0];
    int16_t *l_437 = (void*)0;
    int8_t ***l_521[7] = {(void*)0,&l_416,(void*)0,(void*)0,&l_416,(void*)0,(void*)0};
    int8_t ****l_520 = &l_521[5];
    uint8_t l_574 = 0x70L;
    int64_t *l_582 = &l_300;
    int64_t **l_581 = &l_582;
    int8_t l_628 = 0x7FL;
    int32_t l_788 = 0x259710B6L;
    struct S0 *l_815 = &p_1550->g_463[3][0][1];
    uint16_t l_816 = 0xC5BCL;
    int8_t l_821 = 0x4FL;
    int i, j;
    for (i = 0; i < 5; i++)
        l_91[i] = &p_1550->g_87;
    ++p_1550->g_93[3];
    if ((FAKE_DIVERGE(p_1550->global_1_offset, get_global_id(1), 10) > (safe_sub_func_int32_t_s_s(0x417BD45EL, ((((*p_74) = (func_98((safe_lshift_func_uint16_t_u_u(((safe_mul_func_int32_t_s_s((safe_div_func_int64_t_s_s((p_1550->g_93[3] ^ (p_74 != ((*p_1550->g_14) , (void*)0))), (safe_mod_func_uint8_t_u_u((251UL >= ((*l_109) |= p_73)), (p_1550->g_13[0][0][3] |= 1L))))), ((void*)0 != l_109))) < 250UL), 12)), p_75, p_1550) <= GROUP_DIVERGE(2, 1))) == 0x12BBB44E860B7F11L) >= p_1550->g_15[1])))))
    { /* block id: 75 */
        uint64_t l_194 = 0xB0E7C7BFAAA5B20CL;
        int32_t l_196 = 5L;
        int32_t l_199 = 0x4ECCA75CL;
        int32_t l_218 = 0L;
        int32_t l_220 = 0x3A8D2C6DL;
        int16_t l_221 = 7L;
        int32_t l_222 = (-4L);
        int64_t l_327[1];
        int32_t l_328 = 0x4D186F23L;
        int32_t l_330 = 7L;
        uint32_t l_334 = 0xD2BD5305L;
        int8_t **l_406 = &l_111[2][0];
        int8_t ***l_405 = &l_406;
        int16_t *l_426 = (void*)0;
        int16_t **l_425 = &l_426;
        uint32_t l_475[6] = {3UL,8UL,3UL,3UL,8UL,3UL};
        uint8_t l_607 = 0x11L;
        int i;
        for (i = 0; i < 1; i++)
            l_327[i] = 4L;
        for (p_76 = (-22); (p_76 > (-4)); p_76 = safe_add_func_int16_t_s_s(p_76, 6))
        { /* block id: 78 */
            uint64_t *l_182 = &p_1550->g_93[3];
            int32_t l_185 = 0x4A2D36F8L;
            int32_t l_214 = 0x4FE7A048L;
            int32_t l_216[3][4][1] = {{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}}};
            uint64_t l_223 = 5UL;
            int16_t l_252[10];
            int8_t l_255 = 0x37L;
            uint64_t **l_259 = &l_182;
            uint16_t l_296 = 0x1073L;
            int32_t l_301[3];
            int i, j, k;
            for (i = 0; i < 10; i++)
                l_252[i] = 0x3B27L;
            for (i = 0; i < 3; i++)
                l_301[i] = 0x7ABB6C9BL;
            p_1550->g_169[3][1][0] = p_1550->g_168;
        }
        if (l_334)
        { /* block id: 175 */
            int16_t *l_368 = &p_1550->g_198[3];
            int16_t *l_370 = &p_1550->g_198[3];
            int16_t **l_369 = &l_370;
            uint64_t *l_379 = &p_1550->g_355.f3;
            uint64_t l_380 = 0x0EABB9614C36C8C8L;
            uint32_t l_411 = 0x87BEFCC1L;
            int32_t l_412 = 0L;
            uint16_t l_413 = 0x9B1BL;
            int32_t l_427 = 0x522EF6B5L;
            int32_t l_434 = 0x500BBFC7L;
            uint64_t l_435 = 0xDFE6678F7608A3A8L;
            uint16_t l_436 = 0x4239L;
            int16_t *l_445 = &p_1550->g_198[6];
            int32_t l_448 = 0x1027B580L;
            uint32_t l_449 = 0UL;
            (*p_1550->g_128) = &l_199;
            if (p_73)
                goto lbl_359;
            if (((*p_74) < FAKE_DIVERGE(p_1550->local_0_offset, get_local_id(0), 10)))
            { /* block id: 177 */
                p_1550->g_356 = p_1550->g_355;
            }
            else
            { /* block id: 179 */
lbl_359:
                for (p_1550->g_317.f6 = (-19); (p_1550->g_317.f6 > 17); ++p_1550->g_317.f6)
                { /* block id: 182 */
                    return p_73;
                }
                if ((safe_mul_func_int16_t_s_s((~0x2F28L), (l_328 <= (GROUP_DIVERGE(0, 1) ^ ((((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s((p_75 >= ((l_196 , FAKE_DIVERGE(p_1550->group_1_offset, get_group_id(1), 10)) & (l_368 != ((*l_369) = l_368)))), ((safe_add_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s((((*l_109) ^= 246UL) , (safe_add_func_int64_t_s_s((((*l_379) = ((FAKE_DIVERGE(p_1550->local_0_offset, get_local_id(0), 10) | 0x4B91L) | ((safe_mul_func_int16_t_s_s((p_76 , p_1550->g_110[1]), 0L)) | p_75))) , (*p_74)), p_1550->g_93[7]))), p_76)), 1L)) != l_380))) & l_328), 3)) > p_1550->g_314.f5), 7UL)) >= (*l_90)) > p_73) | (*p_1550->g_14)))))))
                { /* block id: 189 */
                    uint64_t *l_385 = &l_194;
                    uint64_t *l_386 = (void*)0;
                    int32_t l_408[6][6][7] = {{{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L}},{{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L}},{{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L}},{{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L}},{{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L}},{{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L},{(-6L),1L,0x67538D8EL,0x4C5FFDEEL,0x3697409BL,0x327C035AL,0L}}};
                    int16_t ***l_424 = &p_1550->g_423[0];
                    int i, j, k;
                    if (((safe_add_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u(l_380, 7)), ((p_1550->g_93[3] &= ((*l_385) = 5UL)) & (((-1L) & (safe_unary_minus_func_int16_t_s(p_1550->g_355.f3))) != (((*p_77) | GROUP_DIVERGE(1, 1)) , 0x7F7857E4L))))) >= p_1550->g_317.f3))
                    { /* block id: 192 */
                        return p_75;
                    }
                    else
                    { /* block id: 194 */
                        struct S0 *l_391 = &p_1550->g_356;
                        uint32_t l_407[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_407[i] = 0UL;
                        (*l_391) = p_1550->g_388;
                        l_408[4][4][5] ^= ((**p_1550->g_128) = ((p_1550->g_392 , (p_73 == (((safe_mod_func_uint16_t_u_u(0xABD4L, (0x7874A47BD8589624L || ((*p_74) = (~(p_1550->g_388.f4 | ((safe_lshift_func_uint8_t_u_s(((*l_109) = (safe_mod_func_uint64_t_u_u(((p_76 == (safe_mul_func_int16_t_s_s(0x26C0L, (safe_div_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((((l_405 == (void*)0) , p_73) == GROUP_DIVERGE(0, 1)), 4294967288UL)), p_1550->g_62[0]))))) & l_407[3]), (*p_74)))), 5)) | (*p_74)))))))) || GROUP_DIVERGE(2, 1)) , l_380))) , (*p_1550->g_165)));
                    }
                    if ((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_1550->group_1_offset, get_group_id(1), 10), (((!0x33L) < (&p_1550->g_62[0] == p_74)) ^ l_411))))
                    { /* block id: 201 */
                        --l_413;
                    }
                    else
                    { /* block id: 203 */
                        l_416 = &l_111[7][1];
                    }
                    for (p_1550->g_388.f7 = 0; (p_1550->g_388.f7 < 6); p_1550->g_388.f7 = safe_add_func_int64_t_s_s(p_1550->g_388.f7, 7))
                    { /* block id: 208 */
                        p_77 = (void*)0;
                        (*p_1550->g_128) = (*p_1550->g_128);
                    }
                    (*l_90) = (((((((safe_mul_func_int8_t_s_s((***p_1550->g_245), 0L)) , p_75) == 1UL) | ((safe_mod_func_int64_t_s_s(((((((*l_385) ^= (((((((((l_427 ^= (((*l_424) = p_1550->g_423[0]) != l_425)) , (((((safe_sub_func_int32_t_s_s(0x022606D6L, (safe_add_func_uint8_t_u_u(((safe_div_func_int32_t_s_s(((((*l_86) = (((*p_74) = p_1550->g_356.f6) && ((((p_1550->g_315.f7 ^ l_220) >= 0x6589205EL) | GROUP_DIVERGE(0, 1)) , p_1550->g_274.f6))) & p_73) == (-7L)), (*p_1550->g_14))) == l_380), l_220)))) >= p_75) || l_408[4][4][5]) > p_1550->g_93[4]) >= l_434)) , l_435) | l_408[4][4][5]) > l_221) <= p_76) < 2L) || 1L) < p_1550->g_93[3])) != l_221) , l_408[4][4][5]) <= l_436) & FAKE_DIVERGE(p_1550->group_2_offset, get_group_id(2), 10)), p_1550->g_388.f3)) , l_327[0])) != 0x7647L) == p_75) | GROUP_DIVERGE(2, 1));
                }
                else
                { /* block id: 218 */
                    int16_t **l_440 = (void*)0;
                    int32_t l_447 = 0x075256D2L;
                    if ((p_1550->g_13[0][1][0] == (((((l_437 != (((((*l_425) == (((((**l_369) ^= 5L) <= (p_76 || ((~((l_199 = (p_1550->g_388.f6 = (safe_lshift_func_int8_t_s_s((((+(0xFF1B1D0DEEA4F7CEL > (l_440 != (void*)0))) & ((((safe_div_func_int16_t_s_s((((safe_add_func_int8_t_s_s(0x2BL, (***p_1550->g_245))) , 0L) > p_1550->g_274.f7), p_76)) == p_76) < (-1L)) | p_73)) , 0x59L), p_75)))) > (-10L))) <= 0x50L))) >= p_75) , l_445)) <= p_73) <= p_73) , l_437)) == 0x9B83L) > p_75) , p_1550->g_446) , (-1L))))
                    { /* block id: 222 */
                        union U1 *l_452 = &p_1550->g_453;
                        l_449--;
                        l_447 |= (*p_1550->g_14);
                        if (p_1550->g_317.f6)
                            goto lbl_456;
lbl_456:
                        (*p_1550->g_454) = l_452;
                        (*l_90) |= (*p_77);
                    }
                    else
                    { /* block id: 228 */
                        (*p_1550->g_128) = (*p_1550->g_128);
                        (**p_1550->g_128) &= (-7L);
                        (*p_1550->g_458) = p_1550->g_457;
                    }
                    for (p_1550->g_315.f7 = (-26); (p_1550->g_315.f7 > (-3)); p_1550->g_315.f7 = safe_add_func_int32_t_s_s(p_1550->g_315.f7, 1))
                    { /* block id: 235 */
                        (*p_1550->g_128) = (void*)0;
                        return p_1550->g_317.f3;
                    }
                }
                return p_76;
            }
        }
        else
        { /* block id: 242 */
            int32_t *l_465 = (void*)0;
            int32_t l_467 = 0L;
            int32_t l_468 = 3L;
            int32_t l_472 = 0x7D591CCFL;
            int32_t l_473 = 0x33F029E9L;
            int32_t l_474[9][2] = {{(-9L),0x06F2542DL},{(-9L),0x06F2542DL},{(-9L),0x06F2542DL},{(-9L),0x06F2542DL},{(-9L),0x06F2542DL},{(-9L),0x06F2542DL},{(-9L),0x06F2542DL},{(-9L),0x06F2542DL},{(-9L),0x06F2542DL}};
            uint64_t l_508 = 0x47EC968731DD2747L;
            int8_t ***l_562 = (void*)0;
            uint64_t l_594 = 0x6EFA51F17093D8D0L;
            uint16_t *l_605 = (void*)0;
            uint16_t *l_606 = &p_1550->g_487[3][0];
            uint16_t *l_608[8] = {&p_1550->g_502,&p_1550->g_502,&p_1550->g_502,&p_1550->g_502,&p_1550->g_502,&p_1550->g_502,&p_1550->g_502,&p_1550->g_502};
            int i, j;
            if ((**p_1550->g_128))
            { /* block id: 243 */
                int16_t l_466[9][5][5] = {{{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL}},{{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL}},{{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL}},{{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL}},{{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL}},{{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL}},{{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL}},{{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL}},{{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL},{0x026CL,0x7951L,1L,(-1L),0x167CL}}};
                int32_t l_469 = (-1L);
                int32_t l_470 = 0x5996E31FL;
                int32_t l_471 = 1L;
                int i, j, k;
                for (l_196 = 0; (l_196 > 13); l_196 = safe_add_func_int64_t_s_s(l_196, 4))
                { /* block id: 246 */
                    (*p_1550->g_464) = p_1550->g_463[0][1][5];
                }
                (*p_1550->g_128) = l_465;
                ++l_475[1];
                for (p_1550->g_453.f1 = 0; (p_1550->g_453.f1 <= 2); ++p_1550->g_453.f1)
                { /* block id: 253 */
                    uint16_t *l_486 = &p_1550->g_487[3][0];
                    int32_t l_503 = 1L;
                    volatile struct S0 *l_505 = (void*)0;
                    volatile struct S0 *l_506 = &p_1550->g_504;
                    int16_t l_507 = 5L;
                    for (l_472 = 28; (l_472 > (-6)); l_472 = safe_sub_func_int32_t_s_s(l_472, 5))
                    { /* block id: 256 */
                        atomic_xor(&p_1550->g_atomic_reduction[get_linear_group_id()], (-1L));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1550->v_collective += p_1550->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    }
                    if ((l_466[0][3][1] & (safe_add_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(((*l_486) = FAKE_DIVERGE(p_1550->global_0_offset, get_global_id(0), 10)), p_75)), (safe_lshift_func_uint16_t_u_s((l_426 == (p_1550->g_490[2] , ((!((p_73 != (safe_rshift_func_uint16_t_u_u(((FAKE_DIVERGE(p_1550->local_2_offset, get_local_id(2), 10) == 0x5C8EF0CEL) <= (((((safe_add_func_uint8_t_u_u((((((((safe_mul_func_uint16_t_u_u(p_75, GROUP_DIVERGE(0, 1))) >= ((p_76 , ((((safe_div_func_uint32_t_u_u(p_75, (*p_77))) | 0x4918CB46AC2C6337L) | 5L) , p_1550->g_499)) == (void*)0)) == 0x57D18B73L) && (**p_1550->g_283)) | p_73) , &l_416) == &p_1550->g_246), p_1550->g_388.f2)) <= FAKE_DIVERGE(p_1550->global_1_offset, get_global_id(1), 10)) & (*p_74)) , 0x6105L) && (-10L))), p_1550->g_198[3]))) ^ p_73)) , p_1550->g_501))), 2))))))
                    { /* block id: 260 */
                        (*p_1550->g_128) = (*p_1550->g_128);
                    }
                    else
                    { /* block id: 262 */
                        if (l_503)
                            break;
                    }
                    (*l_506) = p_1550->g_504;
                    ++l_508;
                }
            }
            else
            { /* block id: 268 */
                int8_t l_515 = 0x50L;
                int32_t *l_540[5][5] = {{(void*)0,&l_218,&l_467,&p_1550->g_15[1],&l_467},{(void*)0,&l_218,&l_467,&p_1550->g_15[1],&l_467},{(void*)0,&l_218,&l_467,&p_1550->g_15[1],&l_467},{(void*)0,&l_218,&l_467,&p_1550->g_15[1],&l_467},{(void*)0,&l_218,&l_467,&p_1550->g_15[1],&l_467}};
                int8_t **l_570 = &l_111[3][1];
                uint16_t l_575[7][8] = {{0x25DAL,0xE46CL,0xE46CL,0x25DAL,0x25DAL,0xE46CL,0xE46CL,0x25DAL},{0x25DAL,0xE46CL,0xE46CL,0x25DAL,0x25DAL,0xE46CL,0xE46CL,0x25DAL},{0x25DAL,0xE46CL,0xE46CL,0x25DAL,0x25DAL,0xE46CL,0xE46CL,0x25DAL},{0x25DAL,0xE46CL,0xE46CL,0x25DAL,0x25DAL,0xE46CL,0xE46CL,0x25DAL},{0x25DAL,0xE46CL,0xE46CL,0x25DAL,0x25DAL,0xE46CL,0xE46CL,0x25DAL},{0x25DAL,0xE46CL,0xE46CL,0x25DAL,0x25DAL,0xE46CL,0xE46CL,0x25DAL},{0x25DAL,0xE46CL,0xE46CL,0x25DAL,0x25DAL,0xE46CL,0xE46CL,0x25DAL}};
                int i, j;
                for (l_196 = 0; (l_196 > 25); ++l_196)
                { /* block id: 271 */
                    uint32_t l_523 = 0x41EE286CL;
                    int32_t l_524 = (-1L);
                    if ((*p_1550->g_14))
                    { /* block id: 272 */
                        (*l_86) = (*p_1550->g_165);
                    }
                    else
                    { /* block id: 274 */
                        int8_t *****l_522 = &l_520;
                        volatile struct S0 *l_526 = &p_1550->g_314;
                        p_77 = &p_76;
                        atomic_xor(&p_1550->l_atomic_reduction[0], ((((safe_add_func_int8_t_s_s(((+l_515) >= 0x4B68L), (safe_lshift_func_int8_t_s_u(p_73, 5)))) < (l_524 |= (safe_sub_func_int8_t_s_s(((void*)0 != (*p_1550->g_246)), (((((*l_522) = l_520) != &p_1550->g_245) <= (GROUP_DIVERGE(1, 1) != l_523)) , (l_330 = (-1L))))))) == l_515) , (*l_86)));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1550->v_collective += p_1550->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if ((*p_77))
                            break;
                        (*l_526) = p_1550->g_525;
                    }
                }
                if (l_515)
                { /* block id: 284 */
                    uint16_t l_529[4] = {0xBF25L,0xBF25L,0xBF25L,0xBF25L};
                    uint32_t *l_532 = &p_1550->g_132[3][1];
                    uint64_t *l_537 = (void*)0;
                    uint64_t *l_538[10];
                    int32_t l_539 = 1L;
                    int32_t l_553 = (-1L);
                    uint32_t l_567[5];
                    uint8_t *l_571 = &p_1550->g_184[1];
                    uint8_t *l_572[9][6] = {{&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6]},{&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6]},{&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6]},{&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6]},{&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6]},{&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6]},{&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6]},{&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6]},{&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6],&p_1550->g_573[6]}};
                    int i, j;
                    for (i = 0; i < 10; i++)
                        l_538[i] = (void*)0;
                    for (i = 0; i < 5; i++)
                        l_567[i] = 6UL;
                    if ((safe_sub_func_uint16_t_u_u(((((((l_529[1] || ((safe_rshift_func_int8_t_s_s((&l_520 == (void*)0), 4)) <= ((*p_77) != ((p_75 | (++(*l_532))) | (6L > (safe_add_func_int32_t_s_s(((((l_539 = (((l_475[1] && ((6L < 0x7AL) != 1UL)) || 4294967287UL) || (*p_74))) >= (*p_74)) > 1L) != l_529[3]), (**p_1550->g_128)))))))) , FAKE_DIVERGE(p_1550->local_1_offset, get_local_id(1), 10)) <= 255UL) == (*p_77)) , 6UL) , p_75), (*p_1550->g_501))))
                    { /* block id: 287 */
                        l_540[4][1] = &p_76;
                    }
                    else
                    { /* block id: 289 */
                        int32_t ***l_551 = &p_1550->g_128;
                        int16_t *l_552 = &l_221;
                        l_553 = (safe_div_func_int64_t_s_s((l_529[1] >= (safe_rshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s((((*l_86) == l_218) <= 0UL), ((safe_add_func_int8_t_s_s((((safe_add_func_int32_t_s_s((((void*)0 != l_437) < (l_539 &= ((*p_1550->g_501) , (FAKE_DIVERGE(p_1550->group_0_offset, get_group_id(0), 10) | ((((*l_552) = ((void*)0 != l_551)) ^ 5L) & p_1550->g_62[0]))))), p_1550->g_487[3][0])) || 0x36453AD4ABF8723EL) != 0x412C8B70AAE5D398L), p_76)) >= 0x2BA2E9F6L))), 1))), p_1550->g_93[3]));
                        (*l_90) |= ((p_1550->g_525.f3 == p_76) ^ (5L & (-1L)));
                        (*p_1550->g_128) = (**l_551);
                        return p_1550->g_355.f4;
                    }
                    (*l_86) = (((safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s(l_539, (((p_1550->g_573[3] &= (safe_rshift_func_int8_t_s_s((l_575[3][5] = ((((*l_109) = ((safe_add_func_int16_t_s_s(0x655DL, (((**p_1550->g_246) = (**p_1550->g_246)) <= GROUP_DIVERGE(2, 1)))) , (((*l_520) = (void*)0) != l_562))) == ((safe_div_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1550->local_1_offset, get_local_id(1), 10), (l_567[2] < ((((!p_1550->g_317.f2) == ((l_574 = ((*l_571) = (safe_rshift_func_uint8_t_u_u((p_1550->g_317.f2 , ((+((*l_405) != l_570)) != FAKE_DIVERGE(p_1550->group_1_offset, get_group_id(1), 10))), p_76)))) & l_221)) ^ (*p_74)) > p_76)))), 0x51E28C66C74C21B2L)) , p_76)) & 2L)), p_75))) >= 0x9CL) && (*l_86)))), p_73)) != 0x7C5EL) | p_75);
                }
                else
                { /* block id: 305 */
                    uint32_t l_576 = 4UL;
                    uint32_t l_585 = 0xC7C9372DL;
                    int32_t l_593 = (-1L);
                    l_576--;
                    for (l_515 = (-16); (l_515 <= (-14)); l_515 = safe_add_func_int32_t_s_s(l_515, 2))
                    { /* block id: 309 */
                        uint32_t l_592 = 0xF80D2113L;
                        p_1550->g_583[4] = l_581;
                        (*l_86) |= (p_76 = (*p_77));
                        (*l_86) = ((p_73 , ((l_592 &= (l_585 || (((((&l_327[0] == (void*)0) && (safe_sub_func_int16_t_s_s(p_76, p_1550->g_588))) , (p_1550->g_589 , (safe_mul_func_uint8_t_u_u(p_1550->g_168.f4, p_76)))) < p_73) || 0x2EC3L))) || 2UL)) , l_592);
                    }
                    l_594++;
                }
            }
            (*l_86) = (((p_1550->g_463[0][1][5].f2 , (safe_mul_func_int8_t_s_s((((*p_77) & ((p_75 < l_327[0]) || (1L <= ((FAKE_DIVERGE(p_1550->global_0_offset, get_global_id(0), 10) & (0x2F82291EE85A926EL == (safe_rshift_func_int16_t_s_s(((p_1550->g_502 ^= (((safe_rshift_func_uint16_t_u_u(((*l_606) = (&p_1550->g_500 != &p_1550->g_500)), 6)) == ((((*l_109) = p_1550->g_314.f6) >= (-1L)) > l_607)) != (*p_77))) < p_1550->g_457.f2), 9)))) < p_1550->g_317.f2)))) > (*p_77)), p_73))) != l_199) , l_328);
        }
    }
    else
    { /* block id: 324 */
        int32_t *l_611 = &p_1550->g_15[1];
        int8_t ****l_626 = &l_521[5];
        int32_t l_637 = (-1L);
        int16_t **l_644 = &l_437;
        uint64_t l_673 = 0x419A8FEC18B6F24AL;
        uint32_t l_676 = 0xEF16B74CL;
        uint32_t l_715 = 0xC8BA726EL;
        int64_t *l_738 = &p_1550->g_62[0];
        uint32_t l_795 = 0xB9FFBC77L;
        int16_t ***l_820[1];
        int32_t l_823[6][1] = {{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}};
        int i, j;
        for (i = 0; i < 1; i++)
            l_820[i] = (void*)0;
lbl_830:
        for (p_1550->g_453.f4 = 0; (p_1550->g_453.f4 > 10); p_1550->g_453.f4++)
        { /* block id: 327 */
            uint64_t *l_627 = &p_1550->g_93[3];
            int32_t l_629 = 2L;
            int32_t l_671 = 0x713B9967L;
            union U1 *l_687 = &p_1550->g_688;
            int8_t *l_690 = &p_1550->g_388.f7;
            int32_t l_691 = 0x35AE7730L;
            int16_t **l_720 = &l_437;
            uint16_t *l_739 = &p_1550->g_487[3][0];
            int32_t **l_786 = &l_91[0];
            (1 + 1);
        }
        if (((safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s((l_815 != l_815), ((*l_109) &= ((l_816 >= (safe_lshift_func_uint8_t_u_s((*l_611), ((*l_581) == (((&l_520 == (p_1550->g_819[8] , ((0x1B1AL & (((l_820[0] = &p_1550->g_423[0]) == (void*)0) != (*p_77))) , &l_520))) == 0x261AFD2B61DD183BL) , (void*)0))))) && 0x43L)))), 0x6EB27EC4653AA18EL)) && (*p_1550->g_584)))
        { /* block id: 420 */
            int32_t l_822 = 5L;
            int32_t l_824 = 0x106184D1L;
            int32_t l_825[6] = {0L,(-1L),0L,0L,(-1L),0L};
            int i;
            p_1550->g_826--;
        }
        else
        { /* block id: 422 */
            int32_t *l_829[3][1][9] = {{{&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0]}},{{&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0]}},{{&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0],&l_823[5][0]}}};
            int i, j, k;
            l_829[0][0][7] = &p_76;
            return p_75;
        }
        (*l_90) = 0x4C3E0225L;
        if (p_1550->g_274.f7)
            goto lbl_830;
    }
    (*p_1550->g_128) = ((0x0704D7CCL & (((safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_u((p_73 , (0x1A7CL < (p_73 , (*p_1550->g_501)))), 5)), (safe_div_func_int8_t_s_s(((((4294967295UL > (GROUP_DIVERGE(2, 1) || ((p_73 , (safe_unary_minus_func_int16_t_s(0x2735L))) && p_1550->g_388.f3))) > p_1550->g_317.f2) <= p_1550->g_388.f7) == 1UL), p_1550->g_62[0])))) | 0x547641412EC5B731L) >= (*l_90))) , &p_76);
    return p_73;
}


/* ------------------------------------------ */
/* 
 * reads : p_1550->g_15
 * writes:
 */
uint16_t  func_78(int32_t * p_79, uint64_t  p_80, struct S2 * p_1550)
{ /* block id: 16 */
    uint8_t l_81 = 255UL;
    int32_t l_84 = 0x50F98E72L;
    l_81--;
    l_84 = (*p_79);
    return l_81;
}


/* ------------------------------------------ */
/* 
 * reads : p_1550->g_28 p_1550->g_87 p_1550->g_128 p_1550->g_14 p_1550->g_15 p_1550->g_130 p_1550->g_165
 * writes: p_1550->g_28 p_1550->g_87 p_1550->g_128 p_1550->g_132 p_1550->g_62 p_1550->g_93 p_1550->g_153
 */
int64_t  func_98(uint16_t  p_99, uint8_t  p_100, struct S2 * p_1550)
{ /* block id: 24 */
    int32_t ***l_129 = (void*)0;
    int8_t *l_139 = (void*)0;
    int8_t **l_138[9] = {&l_139,&l_139,&l_139,&l_139,&l_139,&l_139,&l_139,&l_139,&l_139};
    uint32_t *l_150 = &p_1550->g_132[3][1];
    int32_t l_158 = 0x462671F2L;
    int32_t l_160 = 0L;
    int i;
lbl_154:
    for (p_100 = (-15); (p_100 >= 44); p_100 = safe_add_func_uint32_t_u_u(p_100, 1))
    { /* block id: 27 */
        int16_t l_116[1][5][1] = {{{0x057AL},{0x057AL},{0x057AL},{0x057AL},{0x057AL}}};
        int i, j, k;
        for (p_1550->g_28 = 8; (p_1550->g_28 == 16); p_1550->g_28 = safe_add_func_int16_t_s_s(p_1550->g_28, 6))
        { /* block id: 30 */
            return l_116[0][4][0];
        }
        if (p_100)
            continue;
        for (p_1550->g_87 = 18; (p_1550->g_87 < 14); p_1550->g_87 = safe_sub_func_int16_t_s_s(p_1550->g_87, 9))
        { /* block id: 36 */
            int8_t *l_121 = &p_1550->g_13[0][1][0];
            int8_t **l_120[1];
            int8_t ***l_119 = &l_120[0];
            int8_t **l_123 = &l_121;
            int8_t ***l_122 = &l_123;
            int i;
            for (i = 0; i < 1; i++)
                l_120[i] = &l_121;
            (*l_122) = ((*l_119) = (void*)0);
        }
    }
    for (p_99 = (-6); (p_99 < 39); ++p_99)
    { /* block id: 43 */
        int32_t **l_126 = &p_1550->g_14;
        int8_t *l_136 = &p_1550->g_13[0][1][0];
        int8_t **l_135 = &l_136;
        uint32_t l_141 = 2UL;
        uint32_t *l_148 = &p_1550->g_132[3][1];
        int32_t l_155 = (-8L);
        int32_t *l_164 = &l_155;
        p_1550->g_128 = l_126;
        if ((**p_1550->g_128))
            continue;
        for (p_100 = 0; (p_100 <= 0); p_100 += 1)
        { /* block id: 48 */
            uint32_t *l_131[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int8_t ***l_137 = &l_135;
            int64_t *l_140 = (void*)0;
            uint32_t **l_149 = &l_131[5];
            uint64_t *l_151 = &p_1550->g_93[3];
            int32_t l_152 = 0x45C1CA50L;
            int32_t l_159 = 0x29CEE28CL;
            int i;
            (*p_1550->g_130) |= (&p_1550->g_128 != l_129);
            p_1550->g_153[0] = (((((~(((((p_1550->g_132[4][5] = FAKE_DIVERGE(p_1550->group_1_offset, get_group_id(1), 10)) || (l_152 = (((safe_div_func_uint16_t_u_u(((p_1550->g_62[0] = (((*l_137) = l_135) == l_138[2])) || FAKE_DIVERGE(p_1550->group_1_offset, get_group_id(1), 10)), l_141)) < 0xCDBCB6AF0722DCAAL) == ((safe_add_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((p_99 ^ (l_129 != (void*)0)), 7)), (~(safe_mul_func_int8_t_s_s((((*l_151) = (0UL && (((*l_149) = l_148) != l_150))) , p_100), p_100))))) , 65526UL)))) < 0xA626304CL) >= (**p_1550->g_128)) != 0L)) , (**l_126)) != 0xB3944318L) <= 0x49FC300FL) , &p_1550->g_130);
            for (p_1550->g_87 = 0; (p_1550->g_87 >= 0); p_1550->g_87 -= 1)
            { /* block id: 59 */
                uint8_t l_161 = 255UL;
                if (p_100)
                    goto lbl_154;
                for (p_1550->g_28 = 0; (p_1550->g_28 >= 0); p_1550->g_28 -= 1)
                { /* block id: 63 */
                    int32_t *l_156 = &l_155;
                    int32_t *l_157[2][2][5] = {{{&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&l_152,(void*)0},{&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&l_152,(void*)0}},{{&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&l_152,(void*)0},{&p_1550->g_87,&p_1550->g_87,&p_1550->g_87,&l_152,(void*)0}}};
                    int i, j, k;
                    ++l_161;
                    if (p_100)
                        goto lbl_154;
                }
            }
        }
        (*p_1550->g_165) &= ((*l_164) |= p_100);
    }
    if (p_1550->g_87)
        goto lbl_154;
    return p_99;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_1551;
    struct S2* p_1550 = &c_1551;
    struct S2 c_1552 = {
        {{{0x29L,0L,9L,0L},{0x29L,0L,9L,0L},{0x29L,0L,9L,0L},{0x29L,0L,9L,0L}}}, // p_1550->g_13
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_1550->g_15
        &p_1550->g_15[1], // p_1550->g_14
        0x029CBC21L, // p_1550->g_28
        {0x477CAF8BA45C3C06L}, // p_1550->g_62
        1L, // p_1550->g_87
        0x52B77465L, // p_1550->g_92
        {0xD04CED5A68F7E2F8L,0xD04CED5A68F7E2F8L,0xD04CED5A68F7E2F8L,0xD04CED5A68F7E2F8L,0xD04CED5A68F7E2F8L,0xD04CED5A68F7E2F8L,0xD04CED5A68F7E2F8L,0xD04CED5A68F7E2F8L}, // p_1550->g_93
        {1UL,1UL,1UL,1UL}, // p_1550->g_110
        (void*)0, // p_1550->g_127
        &p_1550->g_14, // p_1550->g_128
        &p_1550->g_87, // p_1550->g_130
        {{0x9911E249L,4294967295UL,0UL,4294967288UL,3UL,0x9911E249L,4294967288UL},{0x9911E249L,4294967295UL,0UL,4294967288UL,3UL,0x9911E249L,4294967288UL},{0x9911E249L,4294967295UL,0UL,4294967288UL,3UL,0x9911E249L,4294967288UL},{0x9911E249L,4294967295UL,0UL,4294967288UL,3UL,0x9911E249L,4294967288UL},{0x9911E249L,4294967295UL,0UL,4294967288UL,3UL,0x9911E249L,4294967288UL},{0x9911E249L,4294967295UL,0UL,4294967288UL,3UL,0x9911E249L,4294967288UL},{0x9911E249L,4294967295UL,0UL,4294967288UL,3UL,0x9911E249L,4294967288UL},{0x9911E249L,4294967295UL,0UL,4294967288UL,3UL,0x9911E249L,4294967288UL},{0x9911E249L,4294967295UL,0UL,4294967288UL,3UL,0x9911E249L,4294967288UL}}, // p_1550->g_132
        {&p_1550->g_130,&p_1550->g_130,&p_1550->g_130}, // p_1550->g_153
        &p_1550->g_87, // p_1550->g_165
        {246UL,0x24DE1B00L,0x8BA1B354L,18446744073709551608UL,0x3FC9L,0UL,0x2FL,-4L}, // p_1550->g_168
        {{{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}}},{{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}}},{{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}}},{{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}}},{{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}}},{{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}}},{{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}}},{{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}},{{2UL,0L,6UL,0UL,0L,4294967295UL,-1L,0x0FL}}}}, // p_1550->g_169
        {255UL,255UL,255UL}, // p_1550->g_184
        {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L}, // p_1550->g_198
        2L, // p_1550->g_211
        0x4BF91C61L, // p_1550->g_233
        &p_1550->g_13[0][2][3], // p_1550->g_247
        &p_1550->g_247, // p_1550->g_246
        &p_1550->g_246, // p_1550->g_245
        {4294967290UL,4294967290UL}, // p_1550->g_256
        {255UL,0x13F8DDA6L,2UL,0UL,1L,4294967291UL,0x1AL,0L}, // p_1550->g_274
        0xFAD1BD5257FD259BL, // p_1550->g_285
        {&p_1550->g_285,&p_1550->g_285}, // p_1550->g_284
        &p_1550->g_284[0], // p_1550->g_283
        {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL}, // p_1550->g_302
        {0x13L,0x5B8EB0A9L,0x58507280L,0xD8013A0E756562FAL,0x3037L,4294967293UL,0x3CL,0x40L}, // p_1550->g_314
        {0x71L,-2L,4294967295UL,0xE9620D05344A253FL,0x6031L,0xBE95BD41L,0x6CL,6L}, // p_1550->g_315
        (void*)0, // p_1550->g_316
        {0x5CL,-1L,0x66F8DE00L,18446744073709551612UL,0x1A0AL,0xC7C12B1EL,1L,0x28L}, // p_1550->g_317
        {254UL,0x7253B3EFL,4294967287UL,18446744073709551608UL,0L,4294967295UL,0x6AL,3L}, // p_1550->g_355
        {255UL,-1L,0xC637F871L,0xB363B81C1FEE51EDL,0x1681L,0x636073A5L,0L,1L}, // p_1550->g_356
        {6UL,6L,1UL,0xBC1340EF2A0DBB53L,-1L,0x182F7C1AL,0x43L,0x19L}, // p_1550->g_388
        {{{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355}},{{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355}},{{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355}},{{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355}},{{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355},{&p_1550->g_355,&p_1550->g_317,&p_1550->g_388,&p_1550->g_356,&p_1550->g_355}}}, // p_1550->g_389
        (void*)0, // p_1550->g_390
        {1UL,-1L,0xDF3B9AFCL,0UL,-7L,0x7BE36438L,0x1FL,3L}, // p_1550->g_392
        {(void*)0}, // p_1550->g_423
        {0xB1L,0x6F885D4AL,1UL,7UL,0L,9UL,0x77L,1L}, // p_1550->g_446
        {1UL}, // p_1550->g_453
        {(void*)0,&p_1550->g_453,(void*)0,(void*)0,&p_1550->g_453,(void*)0}, // p_1550->g_455
        &p_1550->g_455[0], // p_1550->g_454
        {0x3CL,-7L,0xB3306251L,0x5F9E022BB6EC339DL,0x5B1EL,4294967291UL,0x0DL,-1L}, // p_1550->g_457
        &p_1550->g_274, // p_1550->g_458
        {{{{0xA0L,0x136B9233L,0xC66A897BL,0xB527A4A0AA8C4616L,0x2C63L,0x43FBA68EL,-1L,0x7FL},{0x10L,0x2429477EL,0x818DFEF1L,0x3BA2478728691736L,-5L,4294967295UL,0x2BL,0x18L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L}},{{0xA0L,0x136B9233L,0xC66A897BL,0xB527A4A0AA8C4616L,0x2C63L,0x43FBA68EL,-1L,0x7FL},{0x10L,0x2429477EL,0x818DFEF1L,0x3BA2478728691736L,-5L,4294967295UL,0x2BL,0x18L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L}}},{{{0xA0L,0x136B9233L,0xC66A897BL,0xB527A4A0AA8C4616L,0x2C63L,0x43FBA68EL,-1L,0x7FL},{0x10L,0x2429477EL,0x818DFEF1L,0x3BA2478728691736L,-5L,4294967295UL,0x2BL,0x18L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L}},{{0xA0L,0x136B9233L,0xC66A897BL,0xB527A4A0AA8C4616L,0x2C63L,0x43FBA68EL,-1L,0x7FL},{0x10L,0x2429477EL,0x818DFEF1L,0x3BA2478728691736L,-5L,4294967295UL,0x2BL,0x18L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L}}},{{{0xA0L,0x136B9233L,0xC66A897BL,0xB527A4A0AA8C4616L,0x2C63L,0x43FBA68EL,-1L,0x7FL},{0x10L,0x2429477EL,0x818DFEF1L,0x3BA2478728691736L,-5L,4294967295UL,0x2BL,0x18L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L}},{{0xA0L,0x136B9233L,0xC66A897BL,0xB527A4A0AA8C4616L,0x2C63L,0x43FBA68EL,-1L,0x7FL},{0x10L,0x2429477EL,0x818DFEF1L,0x3BA2478728691736L,-5L,4294967295UL,0x2BL,0x18L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L}}},{{{0xA0L,0x136B9233L,0xC66A897BL,0xB527A4A0AA8C4616L,0x2C63L,0x43FBA68EL,-1L,0x7FL},{0x10L,0x2429477EL,0x818DFEF1L,0x3BA2478728691736L,-5L,4294967295UL,0x2BL,0x18L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L}},{{0xA0L,0x136B9233L,0xC66A897BL,0xB527A4A0AA8C4616L,0x2C63L,0x43FBA68EL,-1L,0x7FL},{0x10L,0x2429477EL,0x818DFEF1L,0x3BA2478728691736L,-5L,4294967295UL,0x2BL,0x18L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{8UL,0L,0xAB52C157L,18446744073709551613UL,0L,4294967288UL,7L,0x02L},{0x53L,-1L,1UL,6UL,0x05EAL,1UL,0L,5L},{1UL,0x7C46867FL,0x648F9AB4L,18446744073709551615UL,0x4C37L,0xAD795EE0L,0x5EL,0x56L}}}}, // p_1550->g_463
        &p_1550->g_457, // p_1550->g_464
        {{0UL},{0UL},{0UL},{0UL}}, // p_1550->g_487
        {{0UL,-1L,0x03CE3A1FL,18446744073709551615UL,0x24BFL,0xD424B360L,0x62L,0L},{0UL,-1L,0x03CE3A1FL,18446744073709551615UL,0x24BFL,0xD424B360L,0x62L,0L},{0UL,-1L,0x03CE3A1FL,18446744073709551615UL,0x24BFL,0xD424B360L,0x62L,0L}}, // p_1550->g_490
        (void*)0, // p_1550->g_500
        &p_1550->g_500, // p_1550->g_499
        65527UL, // p_1550->g_502
        &p_1550->g_502, // p_1550->g_501
        {252UL,0x747C326CL,0x080A6522L,0x5B00C99C4F12566FL,0x17F5L,0xFFEA1DACL,0x37L,-7L}, // p_1550->g_504
        {0x8FL,0x04D19601L,8UL,0UL,1L,0xAA11A38CL,-2L,0x1EL}, // p_1550->g_525
        {248UL,248UL,248UL,248UL,248UL,248UL,248UL,248UL,248UL,248UL}, // p_1550->g_573
        &p_1550->g_62[0], // p_1550->g_584
        {&p_1550->g_584,&p_1550->g_584,&p_1550->g_584,&p_1550->g_584,&p_1550->g_584,&p_1550->g_584,&p_1550->g_584}, // p_1550->g_583
        0x185E062CL, // p_1550->g_588
        {7UL}, // p_1550->g_589
        0x63DC47023B37663AL, // p_1550->g_675
        {0xF1L,0x796049F2L,3UL,5UL,-1L,0x978D8002L,0x70L,-1L}, // p_1550->g_677
        {&p_1550->g_355,&p_1550->g_355,&p_1550->g_355,&p_1550->g_355,&p_1550->g_355,&p_1550->g_355,&p_1550->g_355,&p_1550->g_355,&p_1550->g_355,&p_1550->g_355}, // p_1550->g_678
        {1UL,0x6C235640L,0x64097FBDL,0x3391E82F5ABBD94BL,-1L,0UL,0x0DL,0L}, // p_1550->g_680
        {255UL,0x6E697578L,4294967295UL,0xB7816D2791151542L,0x7B63L,4294967292UL,0x27L,2L}, // p_1550->g_681
        {18446744073709551607UL}, // p_1550->g_688
        (void*)0, // p_1550->g_697
        {18446744073709551610UL}, // p_1550->g_714
        4L, // p_1550->g_741
        &p_1550->g_525.f7, // p_1550->g_750
        &p_1550->g_750, // p_1550->g_749
        &p_1550->g_749, // p_1550->g_748
        &p_1550->g_748, // p_1550->g_747
        &p_1550->g_747, // p_1550->g_746
        &p_1550->g_315.f0, // p_1550->g_752
        &p_1550->g_681.f6, // p_1550->g_768
        &p_1550->g_768, // p_1550->g_767
        &p_1550->g_767, // p_1550->g_766
        &p_1550->g_766, // p_1550->g_765
        {{0x1EC8ACFA68BD34E4L,0x1EC8ACFA68BD34E4L,(-3L),0x4AB4DDCA34514EDDL},{0x1EC8ACFA68BD34E4L,0x1EC8ACFA68BD34E4L,(-3L),0x4AB4DDCA34514EDDL},{0x1EC8ACFA68BD34E4L,0x1EC8ACFA68BD34E4L,(-3L),0x4AB4DDCA34514EDDL},{0x1EC8ACFA68BD34E4L,0x1EC8ACFA68BD34E4L,(-3L),0x4AB4DDCA34514EDDL},{0x1EC8ACFA68BD34E4L,0x1EC8ACFA68BD34E4L,(-3L),0x4AB4DDCA34514EDDL},{0x1EC8ACFA68BD34E4L,0x1EC8ACFA68BD34E4L,(-3L),0x4AB4DDCA34514EDDL},{0x1EC8ACFA68BD34E4L,0x1EC8ACFA68BD34E4L,(-3L),0x4AB4DDCA34514EDDL},{0x1EC8ACFA68BD34E4L,0x1EC8ACFA68BD34E4L,(-3L),0x4AB4DDCA34514EDDL},{0x1EC8ACFA68BD34E4L,0x1EC8ACFA68BD34E4L,(-3L),0x4AB4DDCA34514EDDL}}, // p_1550->g_779
        {{18446744073709551607UL},{18446744073709551607UL},{18446744073709551607UL},{18446744073709551607UL},{18446744073709551607UL},{18446744073709551607UL},{18446744073709551607UL},{18446744073709551607UL},{18446744073709551607UL}}, // p_1550->g_819
        0x03D375F85666D4B6L, // p_1550->g_826
        {254UL,0x1A20B355L,0x42732333L,18446744073709551608UL,0x77BBL,0x35CBAA7CL,7L,1L}, // p_1550->g_841
        {0UL,0x2059F5B9L,4294967295UL,18446744073709551615UL,0x2915L,0xFBC98C61L,0x27L,-4L}, // p_1550->g_842
        (-3L), // p_1550->g_843
        0x507C380BL, // p_1550->g_851
        0x007F6B4325168A5FL, // p_1550->g_857
        &p_1550->g_87, // p_1550->g_859
        {0x4AL,0x13B1FD66L,4294967295UL,0x58F8C3B16D4D2271L,0x2874L,0xB7CBE1D7L,0L,0L}, // p_1550->g_860
        {248UL,0x6466EC3EL,0x261495E8L,0x7F94A4D41EC0CA4EL,0L,8UL,0x4DL,0x7DL}, // p_1550->g_861
        (void*)0, // p_1550->g_876
        (void*)0, // p_1550->g_877
        {0xF2L,4L,3UL,0xF2A2EBFAB2891D65L,0x4C5BL,0xE8A35EB9L,0x2BL,0x3FL}, // p_1550->g_879
        {0UL,-1L,4294967290UL,2UL,0L,4294967292UL,0x1FL,0x0EL}, // p_1550->g_929
        0x0A278D52L, // p_1550->g_962
        {0UL,4L,0UL,0x73246C31BA198701L,-1L,1UL,4L,0x2FL}, // p_1550->g_990
        {0x4DL,0x49D5D3A7L,0UL,1UL,0x3B51L,1UL,0x4FL,-9L}, // p_1550->g_993
        {0x94L,0x23DF3DDCL,0x22446838L,1UL,-1L,4294967289UL,0x5DL,0x7CL}, // p_1550->g_994
        {0UL,-5L,1UL,4UL,0L,0xA019F24BL,-5L,-10L}, // p_1550->g_1037
        0x411FEBBB28EECC30L, // p_1550->g_1057
        {{{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057},{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057},{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057},{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057},{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057},{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057},{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057},{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057},{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057},{&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057,&p_1550->g_1057}}}, // p_1550->g_1056
        {{{&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1]},{&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1]},{&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1]},{&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1]},{&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1]},{&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][1][1],&p_1550->g_1056[0][0][1],&p_1550->g_1056[0][0][1]}}}, // p_1550->g_1055
        &p_1550->g_779[2][3], // p_1550->g_1089
        &p_1550->g_1089, // p_1550->g_1088
        {{{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x8CL,0x2CEDD6ACL,0x3BFA4FEBL,0xBE9DC9508B52369BL,0x3C09L,8UL,0x4EL,0x54L},{0x47L,0L,0x47BA5D47L,0xF76D09D18107032AL,-6L,3UL,0x3AL,1L},{246UL,1L,1UL,7UL,-1L,0x410F8943L,0x77L,-4L},{0x43L,0x5B2D2B46L,0x8D4A5D7BL,0x50336C384BF5ACA5L,1L,4294967295UL,0x6CL,0L},{255UL,-1L,0xB7873F9DL,18446744073709551615UL,-1L,0x0F16BB8DL,0x5AL,0x55L},{0xB9L,3L,1UL,0UL,0x5AEFL,0xF3D226EDL,0x5FL,0x5EL}},{{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x8CL,0x2CEDD6ACL,0x3BFA4FEBL,0xBE9DC9508B52369BL,0x3C09L,8UL,0x4EL,0x54L},{0x47L,0L,0x47BA5D47L,0xF76D09D18107032AL,-6L,3UL,0x3AL,1L},{246UL,1L,1UL,7UL,-1L,0x410F8943L,0x77L,-4L},{0x43L,0x5B2D2B46L,0x8D4A5D7BL,0x50336C384BF5ACA5L,1L,4294967295UL,0x6CL,0L},{255UL,-1L,0xB7873F9DL,18446744073709551615UL,-1L,0x0F16BB8DL,0x5AL,0x55L},{0xB9L,3L,1UL,0UL,0x5AEFL,0xF3D226EDL,0x5FL,0x5EL}},{{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x8CL,0x2CEDD6ACL,0x3BFA4FEBL,0xBE9DC9508B52369BL,0x3C09L,8UL,0x4EL,0x54L},{0x47L,0L,0x47BA5D47L,0xF76D09D18107032AL,-6L,3UL,0x3AL,1L},{246UL,1L,1UL,7UL,-1L,0x410F8943L,0x77L,-4L},{0x43L,0x5B2D2B46L,0x8D4A5D7BL,0x50336C384BF5ACA5L,1L,4294967295UL,0x6CL,0L},{255UL,-1L,0xB7873F9DL,18446744073709551615UL,-1L,0x0F16BB8DL,0x5AL,0x55L},{0xB9L,3L,1UL,0UL,0x5AEFL,0xF3D226EDL,0x5FL,0x5EL}},{{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x8CL,0x2CEDD6ACL,0x3BFA4FEBL,0xBE9DC9508B52369BL,0x3C09L,8UL,0x4EL,0x54L},{0x47L,0L,0x47BA5D47L,0xF76D09D18107032AL,-6L,3UL,0x3AL,1L},{246UL,1L,1UL,7UL,-1L,0x410F8943L,0x77L,-4L},{0x43L,0x5B2D2B46L,0x8D4A5D7BL,0x50336C384BF5ACA5L,1L,4294967295UL,0x6CL,0L},{255UL,-1L,0xB7873F9DL,18446744073709551615UL,-1L,0x0F16BB8DL,0x5AL,0x55L},{0xB9L,3L,1UL,0UL,0x5AEFL,0xF3D226EDL,0x5FL,0x5EL}},{{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x8CL,0x2CEDD6ACL,0x3BFA4FEBL,0xBE9DC9508B52369BL,0x3C09L,8UL,0x4EL,0x54L},{0x47L,0L,0x47BA5D47L,0xF76D09D18107032AL,-6L,3UL,0x3AL,1L},{246UL,1L,1UL,7UL,-1L,0x410F8943L,0x77L,-4L},{0x43L,0x5B2D2B46L,0x8D4A5D7BL,0x50336C384BF5ACA5L,1L,4294967295UL,0x6CL,0L},{255UL,-1L,0xB7873F9DL,18446744073709551615UL,-1L,0x0F16BB8DL,0x5AL,0x55L},{0xB9L,3L,1UL,0UL,0x5AEFL,0xF3D226EDL,0x5FL,0x5EL}},{{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x50L,-5L,0x3DA38DBFL,18446744073709551614UL,0L,4294967295UL,8L,8L},{0x8CL,0x2CEDD6ACL,0x3BFA4FEBL,0xBE9DC9508B52369BL,0x3C09L,8UL,0x4EL,0x54L},{0x47L,0L,0x47BA5D47L,0xF76D09D18107032AL,-6L,3UL,0x3AL,1L},{246UL,1L,1UL,7UL,-1L,0x410F8943L,0x77L,-4L},{0x43L,0x5B2D2B46L,0x8D4A5D7BL,0x50336C384BF5ACA5L,1L,4294967295UL,0x6CL,0L},{255UL,-1L,0xB7873F9DL,18446744073709551615UL,-1L,0x0F16BB8DL,0x5AL,0x55L},{0xB9L,3L,1UL,0UL,0x5AEFL,0xF3D226EDL,0x5FL,0x5EL}}}, // p_1550->g_1123
        1L, // p_1550->g_1130
        &p_1550->g_15[1], // p_1550->g_1139
        7UL, // p_1550->g_1169
        &p_1550->g_857, // p_1550->g_1173
        &p_1550->g_1173, // p_1550->g_1172
        0x14DCDC626BC73701L, // p_1550->g_1179
        {0x73L,0x4AAAEB59L,0x73F86B22L,8UL,0x45C9L,0x94AB2FD7L,1L,0x4BL}, // p_1550->g_1186
        &p_1550->g_490[2], // p_1550->g_1187
        {254UL,0x5513AE87L,4294967290UL,1UL,0x39D1L,4294967295UL,0x48L,-6L}, // p_1550->g_1198
        {0x41L,7L,0xD1147C45L,0x54FE17C7A7560692L,0x09FAL,0xF9FEFF4CL,0L,0x79L}, // p_1550->g_1224
        0x3340CB3E8A40C562L, // p_1550->g_1246
        0UL, // p_1550->g_1354
        0UL, // p_1550->g_1375
        (void*)0, // p_1550->g_1382
        &p_1550->g_842, // p_1550->g_1383
        &p_1550->g_455[0], // p_1550->g_1456
        (-10L), // p_1550->g_1507
        {{0x9F3871BF0446AC2BL},{0x80E6FD1B6EC7B2B3L},{0x9F3871BF0446AC2BL},{0x9F3871BF0446AC2BL},{0x80E6FD1B6EC7B2B3L},{0x9F3871BF0446AC2BL},{0x9F3871BF0446AC2BL},{0x80E6FD1B6EC7B2B3L},{0x9F3871BF0446AC2BL}}, // p_1550->g_1512
        (void*)0, // p_1550->g_1546
        &p_1550->g_1546, // p_1550->g_1545
        &p_1550->g_1545, // p_1550->g_1544
        &p_1550->g_1544, // p_1550->g_1543
        0, // p_1550->v_collective
        sequence_input[get_global_id(0)], // p_1550->global_0_offset
        sequence_input[get_global_id(1)], // p_1550->global_1_offset
        sequence_input[get_global_id(2)], // p_1550->global_2_offset
        sequence_input[get_local_id(0)], // p_1550->local_0_offset
        sequence_input[get_local_id(1)], // p_1550->local_1_offset
        sequence_input[get_local_id(2)], // p_1550->local_2_offset
        sequence_input[get_group_id(0)], // p_1550->group_0_offset
        sequence_input[get_group_id(1)], // p_1550->group_1_offset
        sequence_input[get_group_id(2)], // p_1550->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1551 = c_1552;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1550);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1550->g_13[i][j][k], "p_1550->g_13[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1550->g_15[i], "p_1550->g_15[i]", print_hash_value);

    }
    transparent_crc(p_1550->g_28, "p_1550->g_28", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1550->g_62[i], "p_1550->g_62[i]", print_hash_value);

    }
    transparent_crc(p_1550->g_87, "p_1550->g_87", print_hash_value);
    transparent_crc(p_1550->g_92, "p_1550->g_92", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1550->g_93[i], "p_1550->g_93[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1550->g_110[i], "p_1550->g_110[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1550->g_132[i][j], "p_1550->g_132[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1550->g_168.f0, "p_1550->g_168.f0", print_hash_value);
    transparent_crc(p_1550->g_168.f1, "p_1550->g_168.f1", print_hash_value);
    transparent_crc(p_1550->g_168.f2, "p_1550->g_168.f2", print_hash_value);
    transparent_crc(p_1550->g_168.f3, "p_1550->g_168.f3", print_hash_value);
    transparent_crc(p_1550->g_168.f4, "p_1550->g_168.f4", print_hash_value);
    transparent_crc(p_1550->g_168.f5, "p_1550->g_168.f5", print_hash_value);
    transparent_crc(p_1550->g_168.f6, "p_1550->g_168.f6", print_hash_value);
    transparent_crc(p_1550->g_168.f7, "p_1550->g_168.f7", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1550->g_169[i][j][k].f0, "p_1550->g_169[i][j][k].f0", print_hash_value);
                transparent_crc(p_1550->g_169[i][j][k].f1, "p_1550->g_169[i][j][k].f1", print_hash_value);
                transparent_crc(p_1550->g_169[i][j][k].f2, "p_1550->g_169[i][j][k].f2", print_hash_value);
                transparent_crc(p_1550->g_169[i][j][k].f3, "p_1550->g_169[i][j][k].f3", print_hash_value);
                transparent_crc(p_1550->g_169[i][j][k].f4, "p_1550->g_169[i][j][k].f4", print_hash_value);
                transparent_crc(p_1550->g_169[i][j][k].f5, "p_1550->g_169[i][j][k].f5", print_hash_value);
                transparent_crc(p_1550->g_169[i][j][k].f6, "p_1550->g_169[i][j][k].f6", print_hash_value);
                transparent_crc(p_1550->g_169[i][j][k].f7, "p_1550->g_169[i][j][k].f7", print_hash_value);

            }
        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1550->g_184[i], "p_1550->g_184[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1550->g_198[i], "p_1550->g_198[i]", print_hash_value);

    }
    transparent_crc(p_1550->g_211, "p_1550->g_211", print_hash_value);
    transparent_crc(p_1550->g_233, "p_1550->g_233", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1550->g_256[i], "p_1550->g_256[i]", print_hash_value);

    }
    transparent_crc(p_1550->g_274.f0, "p_1550->g_274.f0", print_hash_value);
    transparent_crc(p_1550->g_274.f1, "p_1550->g_274.f1", print_hash_value);
    transparent_crc(p_1550->g_274.f2, "p_1550->g_274.f2", print_hash_value);
    transparent_crc(p_1550->g_274.f3, "p_1550->g_274.f3", print_hash_value);
    transparent_crc(p_1550->g_274.f4, "p_1550->g_274.f4", print_hash_value);
    transparent_crc(p_1550->g_274.f5, "p_1550->g_274.f5", print_hash_value);
    transparent_crc(p_1550->g_274.f6, "p_1550->g_274.f6", print_hash_value);
    transparent_crc(p_1550->g_274.f7, "p_1550->g_274.f7", print_hash_value);
    transparent_crc(p_1550->g_285, "p_1550->g_285", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1550->g_302[i], "p_1550->g_302[i]", print_hash_value);

    }
    transparent_crc(p_1550->g_314.f0, "p_1550->g_314.f0", print_hash_value);
    transparent_crc(p_1550->g_314.f1, "p_1550->g_314.f1", print_hash_value);
    transparent_crc(p_1550->g_314.f2, "p_1550->g_314.f2", print_hash_value);
    transparent_crc(p_1550->g_314.f3, "p_1550->g_314.f3", print_hash_value);
    transparent_crc(p_1550->g_314.f4, "p_1550->g_314.f4", print_hash_value);
    transparent_crc(p_1550->g_314.f5, "p_1550->g_314.f5", print_hash_value);
    transparent_crc(p_1550->g_314.f6, "p_1550->g_314.f6", print_hash_value);
    transparent_crc(p_1550->g_314.f7, "p_1550->g_314.f7", print_hash_value);
    transparent_crc(p_1550->g_315.f0, "p_1550->g_315.f0", print_hash_value);
    transparent_crc(p_1550->g_315.f1, "p_1550->g_315.f1", print_hash_value);
    transparent_crc(p_1550->g_315.f2, "p_1550->g_315.f2", print_hash_value);
    transparent_crc(p_1550->g_315.f3, "p_1550->g_315.f3", print_hash_value);
    transparent_crc(p_1550->g_315.f4, "p_1550->g_315.f4", print_hash_value);
    transparent_crc(p_1550->g_315.f5, "p_1550->g_315.f5", print_hash_value);
    transparent_crc(p_1550->g_315.f6, "p_1550->g_315.f6", print_hash_value);
    transparent_crc(p_1550->g_315.f7, "p_1550->g_315.f7", print_hash_value);
    transparent_crc(p_1550->g_317.f0, "p_1550->g_317.f0", print_hash_value);
    transparent_crc(p_1550->g_317.f1, "p_1550->g_317.f1", print_hash_value);
    transparent_crc(p_1550->g_317.f2, "p_1550->g_317.f2", print_hash_value);
    transparent_crc(p_1550->g_317.f3, "p_1550->g_317.f3", print_hash_value);
    transparent_crc(p_1550->g_317.f4, "p_1550->g_317.f4", print_hash_value);
    transparent_crc(p_1550->g_317.f5, "p_1550->g_317.f5", print_hash_value);
    transparent_crc(p_1550->g_317.f6, "p_1550->g_317.f6", print_hash_value);
    transparent_crc(p_1550->g_317.f7, "p_1550->g_317.f7", print_hash_value);
    transparent_crc(p_1550->g_355.f0, "p_1550->g_355.f0", print_hash_value);
    transparent_crc(p_1550->g_355.f1, "p_1550->g_355.f1", print_hash_value);
    transparent_crc(p_1550->g_355.f2, "p_1550->g_355.f2", print_hash_value);
    transparent_crc(p_1550->g_355.f3, "p_1550->g_355.f3", print_hash_value);
    transparent_crc(p_1550->g_355.f4, "p_1550->g_355.f4", print_hash_value);
    transparent_crc(p_1550->g_355.f5, "p_1550->g_355.f5", print_hash_value);
    transparent_crc(p_1550->g_355.f6, "p_1550->g_355.f6", print_hash_value);
    transparent_crc(p_1550->g_355.f7, "p_1550->g_355.f7", print_hash_value);
    transparent_crc(p_1550->g_356.f0, "p_1550->g_356.f0", print_hash_value);
    transparent_crc(p_1550->g_356.f1, "p_1550->g_356.f1", print_hash_value);
    transparent_crc(p_1550->g_356.f2, "p_1550->g_356.f2", print_hash_value);
    transparent_crc(p_1550->g_356.f3, "p_1550->g_356.f3", print_hash_value);
    transparent_crc(p_1550->g_356.f4, "p_1550->g_356.f4", print_hash_value);
    transparent_crc(p_1550->g_356.f5, "p_1550->g_356.f5", print_hash_value);
    transparent_crc(p_1550->g_356.f6, "p_1550->g_356.f6", print_hash_value);
    transparent_crc(p_1550->g_356.f7, "p_1550->g_356.f7", print_hash_value);
    transparent_crc(p_1550->g_388.f0, "p_1550->g_388.f0", print_hash_value);
    transparent_crc(p_1550->g_388.f1, "p_1550->g_388.f1", print_hash_value);
    transparent_crc(p_1550->g_388.f2, "p_1550->g_388.f2", print_hash_value);
    transparent_crc(p_1550->g_388.f3, "p_1550->g_388.f3", print_hash_value);
    transparent_crc(p_1550->g_388.f4, "p_1550->g_388.f4", print_hash_value);
    transparent_crc(p_1550->g_388.f5, "p_1550->g_388.f5", print_hash_value);
    transparent_crc(p_1550->g_388.f6, "p_1550->g_388.f6", print_hash_value);
    transparent_crc(p_1550->g_388.f7, "p_1550->g_388.f7", print_hash_value);
    transparent_crc(p_1550->g_392.f0, "p_1550->g_392.f0", print_hash_value);
    transparent_crc(p_1550->g_392.f1, "p_1550->g_392.f1", print_hash_value);
    transparent_crc(p_1550->g_392.f2, "p_1550->g_392.f2", print_hash_value);
    transparent_crc(p_1550->g_392.f3, "p_1550->g_392.f3", print_hash_value);
    transparent_crc(p_1550->g_392.f4, "p_1550->g_392.f4", print_hash_value);
    transparent_crc(p_1550->g_392.f5, "p_1550->g_392.f5", print_hash_value);
    transparent_crc(p_1550->g_392.f6, "p_1550->g_392.f6", print_hash_value);
    transparent_crc(p_1550->g_392.f7, "p_1550->g_392.f7", print_hash_value);
    transparent_crc(p_1550->g_446.f0, "p_1550->g_446.f0", print_hash_value);
    transparent_crc(p_1550->g_446.f1, "p_1550->g_446.f1", print_hash_value);
    transparent_crc(p_1550->g_446.f2, "p_1550->g_446.f2", print_hash_value);
    transparent_crc(p_1550->g_446.f3, "p_1550->g_446.f3", print_hash_value);
    transparent_crc(p_1550->g_446.f4, "p_1550->g_446.f4", print_hash_value);
    transparent_crc(p_1550->g_446.f5, "p_1550->g_446.f5", print_hash_value);
    transparent_crc(p_1550->g_446.f6, "p_1550->g_446.f6", print_hash_value);
    transparent_crc(p_1550->g_446.f7, "p_1550->g_446.f7", print_hash_value);
    transparent_crc(p_1550->g_453.f0, "p_1550->g_453.f0", print_hash_value);
    transparent_crc(p_1550->g_457.f0, "p_1550->g_457.f0", print_hash_value);
    transparent_crc(p_1550->g_457.f1, "p_1550->g_457.f1", print_hash_value);
    transparent_crc(p_1550->g_457.f2, "p_1550->g_457.f2", print_hash_value);
    transparent_crc(p_1550->g_457.f3, "p_1550->g_457.f3", print_hash_value);
    transparent_crc(p_1550->g_457.f4, "p_1550->g_457.f4", print_hash_value);
    transparent_crc(p_1550->g_457.f5, "p_1550->g_457.f5", print_hash_value);
    transparent_crc(p_1550->g_457.f6, "p_1550->g_457.f6", print_hash_value);
    transparent_crc(p_1550->g_457.f7, "p_1550->g_457.f7", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1550->g_463[i][j][k].f0, "p_1550->g_463[i][j][k].f0", print_hash_value);
                transparent_crc(p_1550->g_463[i][j][k].f1, "p_1550->g_463[i][j][k].f1", print_hash_value);
                transparent_crc(p_1550->g_463[i][j][k].f2, "p_1550->g_463[i][j][k].f2", print_hash_value);
                transparent_crc(p_1550->g_463[i][j][k].f3, "p_1550->g_463[i][j][k].f3", print_hash_value);
                transparent_crc(p_1550->g_463[i][j][k].f4, "p_1550->g_463[i][j][k].f4", print_hash_value);
                transparent_crc(p_1550->g_463[i][j][k].f5, "p_1550->g_463[i][j][k].f5", print_hash_value);
                transparent_crc(p_1550->g_463[i][j][k].f6, "p_1550->g_463[i][j][k].f6", print_hash_value);
                transparent_crc(p_1550->g_463[i][j][k].f7, "p_1550->g_463[i][j][k].f7", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1550->g_487[i][j], "p_1550->g_487[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1550->g_490[i].f0, "p_1550->g_490[i].f0", print_hash_value);
        transparent_crc(p_1550->g_490[i].f1, "p_1550->g_490[i].f1", print_hash_value);
        transparent_crc(p_1550->g_490[i].f2, "p_1550->g_490[i].f2", print_hash_value);
        transparent_crc(p_1550->g_490[i].f3, "p_1550->g_490[i].f3", print_hash_value);
        transparent_crc(p_1550->g_490[i].f4, "p_1550->g_490[i].f4", print_hash_value);
        transparent_crc(p_1550->g_490[i].f5, "p_1550->g_490[i].f5", print_hash_value);
        transparent_crc(p_1550->g_490[i].f6, "p_1550->g_490[i].f6", print_hash_value);
        transparent_crc(p_1550->g_490[i].f7, "p_1550->g_490[i].f7", print_hash_value);

    }
    transparent_crc(p_1550->g_502, "p_1550->g_502", print_hash_value);
    transparent_crc(p_1550->g_504.f0, "p_1550->g_504.f0", print_hash_value);
    transparent_crc(p_1550->g_504.f1, "p_1550->g_504.f1", print_hash_value);
    transparent_crc(p_1550->g_504.f2, "p_1550->g_504.f2", print_hash_value);
    transparent_crc(p_1550->g_504.f3, "p_1550->g_504.f3", print_hash_value);
    transparent_crc(p_1550->g_504.f4, "p_1550->g_504.f4", print_hash_value);
    transparent_crc(p_1550->g_504.f5, "p_1550->g_504.f5", print_hash_value);
    transparent_crc(p_1550->g_504.f6, "p_1550->g_504.f6", print_hash_value);
    transparent_crc(p_1550->g_504.f7, "p_1550->g_504.f7", print_hash_value);
    transparent_crc(p_1550->g_525.f0, "p_1550->g_525.f0", print_hash_value);
    transparent_crc(p_1550->g_525.f1, "p_1550->g_525.f1", print_hash_value);
    transparent_crc(p_1550->g_525.f2, "p_1550->g_525.f2", print_hash_value);
    transparent_crc(p_1550->g_525.f3, "p_1550->g_525.f3", print_hash_value);
    transparent_crc(p_1550->g_525.f4, "p_1550->g_525.f4", print_hash_value);
    transparent_crc(p_1550->g_525.f5, "p_1550->g_525.f5", print_hash_value);
    transparent_crc(p_1550->g_525.f6, "p_1550->g_525.f6", print_hash_value);
    transparent_crc(p_1550->g_525.f7, "p_1550->g_525.f7", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1550->g_573[i], "p_1550->g_573[i]", print_hash_value);

    }
    transparent_crc(p_1550->g_588, "p_1550->g_588", print_hash_value);
    transparent_crc(p_1550->g_589.f0, "p_1550->g_589.f0", print_hash_value);
    transparent_crc(p_1550->g_675, "p_1550->g_675", print_hash_value);
    transparent_crc(p_1550->g_677.f0, "p_1550->g_677.f0", print_hash_value);
    transparent_crc(p_1550->g_677.f1, "p_1550->g_677.f1", print_hash_value);
    transparent_crc(p_1550->g_677.f2, "p_1550->g_677.f2", print_hash_value);
    transparent_crc(p_1550->g_677.f3, "p_1550->g_677.f3", print_hash_value);
    transparent_crc(p_1550->g_677.f4, "p_1550->g_677.f4", print_hash_value);
    transparent_crc(p_1550->g_677.f5, "p_1550->g_677.f5", print_hash_value);
    transparent_crc(p_1550->g_677.f6, "p_1550->g_677.f6", print_hash_value);
    transparent_crc(p_1550->g_677.f7, "p_1550->g_677.f7", print_hash_value);
    transparent_crc(p_1550->g_680.f0, "p_1550->g_680.f0", print_hash_value);
    transparent_crc(p_1550->g_680.f1, "p_1550->g_680.f1", print_hash_value);
    transparent_crc(p_1550->g_680.f2, "p_1550->g_680.f2", print_hash_value);
    transparent_crc(p_1550->g_680.f3, "p_1550->g_680.f3", print_hash_value);
    transparent_crc(p_1550->g_680.f4, "p_1550->g_680.f4", print_hash_value);
    transparent_crc(p_1550->g_680.f5, "p_1550->g_680.f5", print_hash_value);
    transparent_crc(p_1550->g_680.f6, "p_1550->g_680.f6", print_hash_value);
    transparent_crc(p_1550->g_680.f7, "p_1550->g_680.f7", print_hash_value);
    transparent_crc(p_1550->g_681.f0, "p_1550->g_681.f0", print_hash_value);
    transparent_crc(p_1550->g_681.f1, "p_1550->g_681.f1", print_hash_value);
    transparent_crc(p_1550->g_681.f2, "p_1550->g_681.f2", print_hash_value);
    transparent_crc(p_1550->g_681.f3, "p_1550->g_681.f3", print_hash_value);
    transparent_crc(p_1550->g_681.f4, "p_1550->g_681.f4", print_hash_value);
    transparent_crc(p_1550->g_681.f5, "p_1550->g_681.f5", print_hash_value);
    transparent_crc(p_1550->g_681.f6, "p_1550->g_681.f6", print_hash_value);
    transparent_crc(p_1550->g_681.f7, "p_1550->g_681.f7", print_hash_value);
    transparent_crc(p_1550->g_688.f0, "p_1550->g_688.f0", print_hash_value);
    transparent_crc(p_1550->g_714.f0, "p_1550->g_714.f0", print_hash_value);
    transparent_crc(p_1550->g_741, "p_1550->g_741", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1550->g_779[i][j], "p_1550->g_779[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1550->g_826, "p_1550->g_826", print_hash_value);
    transparent_crc(p_1550->g_841.f0, "p_1550->g_841.f0", print_hash_value);
    transparent_crc(p_1550->g_841.f1, "p_1550->g_841.f1", print_hash_value);
    transparent_crc(p_1550->g_841.f2, "p_1550->g_841.f2", print_hash_value);
    transparent_crc(p_1550->g_841.f3, "p_1550->g_841.f3", print_hash_value);
    transparent_crc(p_1550->g_841.f4, "p_1550->g_841.f4", print_hash_value);
    transparent_crc(p_1550->g_841.f5, "p_1550->g_841.f5", print_hash_value);
    transparent_crc(p_1550->g_841.f6, "p_1550->g_841.f6", print_hash_value);
    transparent_crc(p_1550->g_841.f7, "p_1550->g_841.f7", print_hash_value);
    transparent_crc(p_1550->g_842.f0, "p_1550->g_842.f0", print_hash_value);
    transparent_crc(p_1550->g_842.f1, "p_1550->g_842.f1", print_hash_value);
    transparent_crc(p_1550->g_842.f2, "p_1550->g_842.f2", print_hash_value);
    transparent_crc(p_1550->g_842.f3, "p_1550->g_842.f3", print_hash_value);
    transparent_crc(p_1550->g_842.f4, "p_1550->g_842.f4", print_hash_value);
    transparent_crc(p_1550->g_842.f5, "p_1550->g_842.f5", print_hash_value);
    transparent_crc(p_1550->g_842.f6, "p_1550->g_842.f6", print_hash_value);
    transparent_crc(p_1550->g_842.f7, "p_1550->g_842.f7", print_hash_value);
    transparent_crc(p_1550->g_843, "p_1550->g_843", print_hash_value);
    transparent_crc(p_1550->g_851, "p_1550->g_851", print_hash_value);
    transparent_crc(p_1550->g_857, "p_1550->g_857", print_hash_value);
    transparent_crc(p_1550->g_860.f0, "p_1550->g_860.f0", print_hash_value);
    transparent_crc(p_1550->g_860.f1, "p_1550->g_860.f1", print_hash_value);
    transparent_crc(p_1550->g_860.f2, "p_1550->g_860.f2", print_hash_value);
    transparent_crc(p_1550->g_860.f3, "p_1550->g_860.f3", print_hash_value);
    transparent_crc(p_1550->g_860.f4, "p_1550->g_860.f4", print_hash_value);
    transparent_crc(p_1550->g_860.f5, "p_1550->g_860.f5", print_hash_value);
    transparent_crc(p_1550->g_860.f6, "p_1550->g_860.f6", print_hash_value);
    transparent_crc(p_1550->g_860.f7, "p_1550->g_860.f7", print_hash_value);
    transparent_crc(p_1550->g_861.f0, "p_1550->g_861.f0", print_hash_value);
    transparent_crc(p_1550->g_861.f1, "p_1550->g_861.f1", print_hash_value);
    transparent_crc(p_1550->g_861.f2, "p_1550->g_861.f2", print_hash_value);
    transparent_crc(p_1550->g_861.f3, "p_1550->g_861.f3", print_hash_value);
    transparent_crc(p_1550->g_861.f4, "p_1550->g_861.f4", print_hash_value);
    transparent_crc(p_1550->g_861.f5, "p_1550->g_861.f5", print_hash_value);
    transparent_crc(p_1550->g_861.f6, "p_1550->g_861.f6", print_hash_value);
    transparent_crc(p_1550->g_861.f7, "p_1550->g_861.f7", print_hash_value);
    transparent_crc(p_1550->g_879.f0, "p_1550->g_879.f0", print_hash_value);
    transparent_crc(p_1550->g_879.f1, "p_1550->g_879.f1", print_hash_value);
    transparent_crc(p_1550->g_879.f2, "p_1550->g_879.f2", print_hash_value);
    transparent_crc(p_1550->g_879.f3, "p_1550->g_879.f3", print_hash_value);
    transparent_crc(p_1550->g_879.f4, "p_1550->g_879.f4", print_hash_value);
    transparent_crc(p_1550->g_879.f5, "p_1550->g_879.f5", print_hash_value);
    transparent_crc(p_1550->g_879.f6, "p_1550->g_879.f6", print_hash_value);
    transparent_crc(p_1550->g_879.f7, "p_1550->g_879.f7", print_hash_value);
    transparent_crc(p_1550->g_929.f0, "p_1550->g_929.f0", print_hash_value);
    transparent_crc(p_1550->g_929.f1, "p_1550->g_929.f1", print_hash_value);
    transparent_crc(p_1550->g_929.f2, "p_1550->g_929.f2", print_hash_value);
    transparent_crc(p_1550->g_929.f3, "p_1550->g_929.f3", print_hash_value);
    transparent_crc(p_1550->g_929.f4, "p_1550->g_929.f4", print_hash_value);
    transparent_crc(p_1550->g_929.f5, "p_1550->g_929.f5", print_hash_value);
    transparent_crc(p_1550->g_929.f6, "p_1550->g_929.f6", print_hash_value);
    transparent_crc(p_1550->g_929.f7, "p_1550->g_929.f7", print_hash_value);
    transparent_crc(p_1550->g_962, "p_1550->g_962", print_hash_value);
    transparent_crc(p_1550->g_990.f0, "p_1550->g_990.f0", print_hash_value);
    transparent_crc(p_1550->g_990.f1, "p_1550->g_990.f1", print_hash_value);
    transparent_crc(p_1550->g_990.f2, "p_1550->g_990.f2", print_hash_value);
    transparent_crc(p_1550->g_990.f3, "p_1550->g_990.f3", print_hash_value);
    transparent_crc(p_1550->g_990.f4, "p_1550->g_990.f4", print_hash_value);
    transparent_crc(p_1550->g_990.f5, "p_1550->g_990.f5", print_hash_value);
    transparent_crc(p_1550->g_990.f6, "p_1550->g_990.f6", print_hash_value);
    transparent_crc(p_1550->g_990.f7, "p_1550->g_990.f7", print_hash_value);
    transparent_crc(p_1550->g_993.f0, "p_1550->g_993.f0", print_hash_value);
    transparent_crc(p_1550->g_993.f1, "p_1550->g_993.f1", print_hash_value);
    transparent_crc(p_1550->g_993.f2, "p_1550->g_993.f2", print_hash_value);
    transparent_crc(p_1550->g_993.f3, "p_1550->g_993.f3", print_hash_value);
    transparent_crc(p_1550->g_993.f4, "p_1550->g_993.f4", print_hash_value);
    transparent_crc(p_1550->g_993.f5, "p_1550->g_993.f5", print_hash_value);
    transparent_crc(p_1550->g_993.f6, "p_1550->g_993.f6", print_hash_value);
    transparent_crc(p_1550->g_993.f7, "p_1550->g_993.f7", print_hash_value);
    transparent_crc(p_1550->g_994.f0, "p_1550->g_994.f0", print_hash_value);
    transparent_crc(p_1550->g_994.f1, "p_1550->g_994.f1", print_hash_value);
    transparent_crc(p_1550->g_994.f2, "p_1550->g_994.f2", print_hash_value);
    transparent_crc(p_1550->g_994.f3, "p_1550->g_994.f3", print_hash_value);
    transparent_crc(p_1550->g_994.f4, "p_1550->g_994.f4", print_hash_value);
    transparent_crc(p_1550->g_994.f5, "p_1550->g_994.f5", print_hash_value);
    transparent_crc(p_1550->g_994.f6, "p_1550->g_994.f6", print_hash_value);
    transparent_crc(p_1550->g_994.f7, "p_1550->g_994.f7", print_hash_value);
    transparent_crc(p_1550->g_1037.f0, "p_1550->g_1037.f0", print_hash_value);
    transparent_crc(p_1550->g_1037.f1, "p_1550->g_1037.f1", print_hash_value);
    transparent_crc(p_1550->g_1037.f2, "p_1550->g_1037.f2", print_hash_value);
    transparent_crc(p_1550->g_1037.f3, "p_1550->g_1037.f3", print_hash_value);
    transparent_crc(p_1550->g_1037.f4, "p_1550->g_1037.f4", print_hash_value);
    transparent_crc(p_1550->g_1037.f5, "p_1550->g_1037.f5", print_hash_value);
    transparent_crc(p_1550->g_1037.f6, "p_1550->g_1037.f6", print_hash_value);
    transparent_crc(p_1550->g_1037.f7, "p_1550->g_1037.f7", print_hash_value);
    transparent_crc(p_1550->g_1057, "p_1550->g_1057", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1550->g_1123[i][j].f0, "p_1550->g_1123[i][j].f0", print_hash_value);
            transparent_crc(p_1550->g_1123[i][j].f1, "p_1550->g_1123[i][j].f1", print_hash_value);
            transparent_crc(p_1550->g_1123[i][j].f2, "p_1550->g_1123[i][j].f2", print_hash_value);
            transparent_crc(p_1550->g_1123[i][j].f3, "p_1550->g_1123[i][j].f3", print_hash_value);
            transparent_crc(p_1550->g_1123[i][j].f4, "p_1550->g_1123[i][j].f4", print_hash_value);
            transparent_crc(p_1550->g_1123[i][j].f5, "p_1550->g_1123[i][j].f5", print_hash_value);
            transparent_crc(p_1550->g_1123[i][j].f6, "p_1550->g_1123[i][j].f6", print_hash_value);
            transparent_crc(p_1550->g_1123[i][j].f7, "p_1550->g_1123[i][j].f7", print_hash_value);

        }
    }
    transparent_crc(p_1550->g_1130, "p_1550->g_1130", print_hash_value);
    transparent_crc(p_1550->g_1169, "p_1550->g_1169", print_hash_value);
    transparent_crc(p_1550->g_1179, "p_1550->g_1179", print_hash_value);
    transparent_crc(p_1550->g_1186.f0, "p_1550->g_1186.f0", print_hash_value);
    transparent_crc(p_1550->g_1186.f1, "p_1550->g_1186.f1", print_hash_value);
    transparent_crc(p_1550->g_1186.f2, "p_1550->g_1186.f2", print_hash_value);
    transparent_crc(p_1550->g_1186.f3, "p_1550->g_1186.f3", print_hash_value);
    transparent_crc(p_1550->g_1186.f4, "p_1550->g_1186.f4", print_hash_value);
    transparent_crc(p_1550->g_1186.f5, "p_1550->g_1186.f5", print_hash_value);
    transparent_crc(p_1550->g_1186.f6, "p_1550->g_1186.f6", print_hash_value);
    transparent_crc(p_1550->g_1186.f7, "p_1550->g_1186.f7", print_hash_value);
    transparent_crc(p_1550->g_1198.f0, "p_1550->g_1198.f0", print_hash_value);
    transparent_crc(p_1550->g_1198.f1, "p_1550->g_1198.f1", print_hash_value);
    transparent_crc(p_1550->g_1198.f2, "p_1550->g_1198.f2", print_hash_value);
    transparent_crc(p_1550->g_1198.f3, "p_1550->g_1198.f3", print_hash_value);
    transparent_crc(p_1550->g_1198.f4, "p_1550->g_1198.f4", print_hash_value);
    transparent_crc(p_1550->g_1198.f5, "p_1550->g_1198.f5", print_hash_value);
    transparent_crc(p_1550->g_1198.f6, "p_1550->g_1198.f6", print_hash_value);
    transparent_crc(p_1550->g_1198.f7, "p_1550->g_1198.f7", print_hash_value);
    transparent_crc(p_1550->g_1224.f0, "p_1550->g_1224.f0", print_hash_value);
    transparent_crc(p_1550->g_1224.f1, "p_1550->g_1224.f1", print_hash_value);
    transparent_crc(p_1550->g_1224.f2, "p_1550->g_1224.f2", print_hash_value);
    transparent_crc(p_1550->g_1224.f3, "p_1550->g_1224.f3", print_hash_value);
    transparent_crc(p_1550->g_1224.f4, "p_1550->g_1224.f4", print_hash_value);
    transparent_crc(p_1550->g_1224.f5, "p_1550->g_1224.f5", print_hash_value);
    transparent_crc(p_1550->g_1224.f6, "p_1550->g_1224.f6", print_hash_value);
    transparent_crc(p_1550->g_1224.f7, "p_1550->g_1224.f7", print_hash_value);
    transparent_crc(p_1550->g_1246, "p_1550->g_1246", print_hash_value);
    transparent_crc(p_1550->g_1354, "p_1550->g_1354", print_hash_value);
    transparent_crc(p_1550->g_1375, "p_1550->g_1375", print_hash_value);
    transparent_crc(p_1550->g_1507, "p_1550->g_1507", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1550->g_1512[i].f0, "p_1550->g_1512[i].f0", print_hash_value);

    }
    transparent_crc(p_1550->v_collective, "p_1550->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
