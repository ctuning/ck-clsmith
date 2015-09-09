// ---atomic_reductions ---fake_divergence -g 75,17,1 -l 25,1,1
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


// Seed: 40

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

union U1 {
   volatile int8_t * volatile  f0;
   int64_t  f1;
   volatile int8_t  f2;
   uint64_t  f3;
};

struct S2 {
    int32_t g_2;
    int16_t g_5[7];
    volatile int32_t g_6[8];
    volatile int32_t g_7;
    volatile int32_t g_8;
    int32_t g_9;
    volatile int32_t g_11;
    int32_t g_12;
    int8_t g_17;
    int32_t g_53;
    int8_t g_69[2];
    uint32_t g_70;
    uint64_t g_96;
    union U1 g_104;
    union U1 g_106;
    volatile union U1 *g_114;
    union U0 g_115;
    union U1 g_117;
    int64_t g_131[2];
    uint8_t g_150[9];
    int32_t g_154[6][8];
    uint16_t g_157;
    uint32_t g_169;
    uint32_t g_178;
    int16_t *g_179[8][3];
    union U1 g_197;
    uint32_t g_216[4];
    uint8_t g_235;
    int64_t g_275;
    int16_t g_278;
    int16_t g_283;
    int32_t g_286[3];
    int32_t *g_307;
    int8_t g_321;
    int16_t g_327;
    uint16_t g_345;
    int32_t g_374;
    uint16_t g_385;
    union U1 g_427;
    uint64_t *g_491;
    uint64_t **g_490;
    uint64_t g_551;
    union U1 g_583;
    union U1 g_602[2][6][2];
    uint16_t g_641;
    uint16_t *g_709;
    uint16_t **g_708;
    uint8_t g_728[4][1];
    int32_t g_742;
    int64_t g_744;
    int64_t g_746[4][7];
    int32_t *g_766[1];
    uint64_t ***g_819;
    union U0 *g_881[7];
    union U0 **g_880;
    union U0 ***g_879[8];
    uint64_t * volatile *g_902;
    uint64_t * volatile * volatile *g_901;
    uint64_t * volatile * volatile **g_900[10][3];
    int32_t *g_921;
    union U1 g_955;
    union U1 g_957[1];
    union U1 *g_956;
    union U1 g_967[5];
    union U1 g_968[10][3];
    union U1 g_969;
    union U1 g_973;
    uint32_t g_993[6];
    int32_t g_1022;
    int8_t g_1048[10];
    uint16_t g_1403;
    union U1 g_1457[1][5][8];
    uint8_t *g_1491;
    uint8_t **g_1490;
    uint8_t ***g_1489;
    uint64_t *****g_1521;
    uint8_t g_1531;
    uint32_t g_1544;
    int32_t ** volatile g_1547;
    int32_t ** volatile g_1548;
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
int16_t  func_1(struct S2 * p_1558);
int8_t  func_20(union U0  p_21, int32_t  p_22, int16_t  p_23, struct S2 * p_1558);
union U0  func_24(int8_t * p_25, int32_t  p_26, uint32_t  p_27, int64_t  p_28, int8_t * p_29, struct S2 * p_1558);
int8_t * func_30(uint64_t  p_31, int64_t  p_32, struct S2 * p_1558);
uint16_t  func_35(uint32_t  p_36, uint8_t  p_37, int8_t * p_38, uint32_t  p_39, struct S2 * p_1558);
int8_t * func_42(uint32_t  p_43, int32_t  p_44, struct S2 * p_1558);
uint64_t  func_47(int32_t  p_48, int8_t * p_49, int8_t * p_50, struct S2 * p_1558);
uint8_t  func_75(uint32_t  p_76, int32_t * p_77, int32_t * p_78, uint16_t  p_79, struct S2 * p_1558);
uint16_t  func_84(int64_t  p_85, struct S2 * p_1558);
int32_t  func_91(int8_t * p_92, int8_t * p_93, int32_t * p_94, struct S2 * p_1558);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1558->g_2 p_1558->g_6 p_1558->g_1547 p_1558->g_921 p_1558->g_1548 p_1558->g_819 p_1558->g_490 p_1558->g_491 p_1558->g_96 p_1558->g_53
 * writes: p_1558->g_2 p_1558->g_9 p_1558->g_7 p_1558->g_12 p_1558->g_921 p_1558->g_766 p_1558->g_53
 */
int16_t  func_1(struct S2 * p_1558)
{ /* block id: 4 */
    int32_t l_13 = 0x55228033L;
    int8_t *l_16 = &p_1558->g_17;
    int32_t l_1545 = 0x7138D6F6L;
    uint16_t l_1551 = 0x2751L;
    int32_t *l_1557 = &p_1558->g_53;
    for (p_1558->g_2 = (-14); (p_1558->g_2 == 21); p_1558->g_2 = safe_add_func_int64_t_s_s(p_1558->g_2, 8))
    { /* block id: 7 */
        int8_t *l_41 = (void*)0;
        int32_t l_1046 = 0x20F4B3A8L;
        int32_t *l_1552 = (void*)0;
        int32_t *l_1553 = (void*)0;
        int32_t *l_1554 = &p_1558->g_9;
        for (p_1558->g_9 = 0; (p_1558->g_9 <= 6); p_1558->g_9 += 1)
        { /* block id: 10 */
            volatile int32_t *l_10[5][9] = {{&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3]},{&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3]},{&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3]},{&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3]},{&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3],&p_1558->g_6[3]}};
            int32_t l_796 = 9L;
            int8_t *l_1542 = &p_1558->g_17;
            int i, j;
            p_1558->g_7 = p_1558->g_6[5];
            for (p_1558->g_12 = 6; (p_1558->g_12 >= 1); p_1558->g_12 -= 1)
            { /* block id: 14 */
                uint16_t l_40 = 65535UL;
                int8_t *l_1047 = &p_1558->g_1048[1];
                int8_t **l_1541[6];
                uint32_t *l_1543[10][9] = {{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544},{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544},{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544},{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544},{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544},{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544},{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544},{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544},{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544},{&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544,&p_1558->g_1544,(void*)0,&p_1558->g_1544,&p_1558->g_1544}};
                int32_t l_1546[3][10] = {{0x19E09D47L,6L,(-5L),0x4F4DBE85L,0x46390786L,0x19E09D47L,0x4F4DBE85L,0x597687D2L,0x4F4DBE85L,0x19E09D47L},{0x19E09D47L,6L,(-5L),0x4F4DBE85L,0x46390786L,0x19E09D47L,0x4F4DBE85L,0x597687D2L,0x4F4DBE85L,0x19E09D47L},{0x19E09D47L,6L,(-5L),0x4F4DBE85L,0x46390786L,0x19E09D47L,0x4F4DBE85L,0x597687D2L,0x4F4DBE85L,0x19E09D47L}};
                int i, j;
                for (i = 0; i < 6; i++)
                    l_1541[i] = &l_41;
                (1 + 1);
            }
            if (l_1046)
                break;
            (*p_1558->g_1547) = &l_1545;
        }
        (*p_1558->g_1548) = (*p_1558->g_1547);
        (*l_1554) = (safe_lshift_func_int16_t_s_u(0x2C28L, (l_1046 <= l_1551)));
    }
    (*l_1557) |= (~((safe_lshift_func_int8_t_s_s((18446744073709551610UL && (***p_1558->g_819)), l_1551)) <= FAKE_DIVERGE(p_1558->group_0_offset, get_group_id(0), 10)));
    return (*l_1557);
}


/* ------------------------------------------ */
/* 
 * reads : p_1558->g_12 p_1558->g_490 p_1558->g_491 p_1558->g_96 p_1558->g_744 p_1558->g_114 p_1558->g_709 p_1558->g_157 p_1558->g_728 p_1558->g_69 p_1558->g_9 p_1558->g_216 p_1558->g_641 p_1558->g_286 p_1558->g_901 p_1558->g_902 p_1558->g_150 p_1558->g_746 p_1558->g_708 p_1558->g_345 p_1558->g_131 p_1558->g_178 p_1558->g_70 p_1558->g_321 p_1558->g_1048 p_1558->g_993 p_1558->g_283 p_1558->g_235 p_1558->g_1489 p_1558->g_1491 p_1558->g_17 p_1558->g_5 p_1558->g_385 p_1558->g_53
 * writes: p_1558->g_744 p_1558->g_286 p_1558->g_53 p_1558->g_327 p_1558->g_374 p_1558->g_742 p_1558->g_96 p_1558->g_321 p_1558->g_728 p_1558->g_1022 p_1558->g_197.f1 p_1558->g_150 p_1558->g_1403 p_1558->g_157 p_1558->g_283 p_1558->g_69 p_1558->g_114 p_1558->g_956 p_1558->g_746 p_1558->g_1489 p_1558->g_17 p_1558->g_1521 p_1558->g_5 p_1558->g_1531
 */
int8_t  func_20(union U0  p_21, int32_t  p_22, int16_t  p_23, struct S2 * p_1558)
{ /* block id: 560 */
    int32_t l_1230 = (-1L);
    int32_t l_1274 = 3L;
    int32_t l_1276 = 2L;
    int32_t l_1279 = 6L;
    int32_t l_1280 = 0x5A8165EAL;
    int32_t l_1284 = 1L;
    int32_t l_1286[4];
    int16_t l_1289 = 1L;
    uint16_t l_1296 = 1UL;
    union U1 **l_1303 = &p_1558->g_956;
    int32_t *l_1328[2];
    int32_t l_1377 = 0x0597061EL;
    uint32_t l_1409 = 0UL;
    union U0 l_1433 = {0xBC83A3E3L};
    uint32_t l_1454 = 0x70068133L;
    union U1 *l_1456 = &p_1558->g_1457[0][2][6];
    uint16_t l_1474 = 0xCC2FL;
    uint64_t l_1475[4][1][8] = {{{0xE2585D5A7ECF2592L,8UL,0xBBBB60476915002FL,8UL,0xE2585D5A7ECF2592L,0xE2585D5A7ECF2592L,8UL,0xBBBB60476915002FL}},{{0xE2585D5A7ECF2592L,8UL,0xBBBB60476915002FL,8UL,0xE2585D5A7ECF2592L,0xE2585D5A7ECF2592L,8UL,0xBBBB60476915002FL}},{{0xE2585D5A7ECF2592L,8UL,0xBBBB60476915002FL,8UL,0xE2585D5A7ECF2592L,0xE2585D5A7ECF2592L,8UL,0xBBBB60476915002FL}},{{0xE2585D5A7ECF2592L,8UL,0xBBBB60476915002FL,8UL,0xE2585D5A7ECF2592L,0xE2585D5A7ECF2592L,8UL,0xBBBB60476915002FL}}};
    int64_t *l_1476 = &p_1558->g_746[0][4];
    uint64_t l_1477[7] = {0x6EF690C692F7D67AL,0x6EF690C692F7D67AL,0x6EF690C692F7D67AL,0x6EF690C692F7D67AL,0x6EF690C692F7D67AL,0x6EF690C692F7D67AL,0x6EF690C692F7D67AL};
    uint64_t ****l_1520 = &p_1558->g_819;
    uint64_t *****l_1519 = &l_1520;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_1286[i] = 0x43F03868L;
    for (i = 0; i < 2; i++)
        l_1328[i] = &l_1230;
    for (p_22 = 0; (p_22 >= 0); p_22 -= 1)
    { /* block id: 563 */
        uint8_t *l_1236[2];
        uint8_t **l_1235 = &l_1236[1];
        uint8_t **l_1237 = (void*)0;
        uint8_t *l_1239 = &p_1558->g_150[5];
        uint8_t **l_1238 = &l_1239;
        int32_t l_1240 = (-1L);
        int32_t l_1278 = 0x505C3AF8L;
        int32_t l_1281 = 0x32EA99ABL;
        int32_t l_1282 = 1L;
        int32_t l_1283 = 0x69B73166L;
        int32_t l_1285[8][5] = {{0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L)}};
        uint32_t *l_1332 = &p_1558->g_70;
        int32_t l_1385 = 0x5D9436B7L;
        uint64_t ****l_1406 = &p_1558->g_819;
        int i, j;
        for (i = 0; i < 2; i++)
            l_1236[i] = (void*)0;
        if (((safe_add_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((((0UL <= l_1230) | (safe_add_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s((l_1230 , (((*l_1235) = &p_1558->g_728[1][0]) == ((*l_1238) = func_42(p_1558->g_12, (p_21.f0 , p_23), p_1558)))), l_1240)) != p_22), p_1558->g_728[1][0]))) , 0x4CD0EC139CB199ABL), 18446744073709551615UL)), l_1230)) | l_1240))
        { /* block id: 566 */
            uint64_t l_1241[8][1] = {{0xE4F326C7E7D670EAL},{0xE4F326C7E7D670EAL},{0xE4F326C7E7D670EAL},{0xE4F326C7E7D670EAL},{0xE4F326C7E7D670EAL},{0xE4F326C7E7D670EAL},{0xE4F326C7E7D670EAL},{0xE4F326C7E7D670EAL}};
            int8_t *l_1249[10][2] = {{(void*)0,&p_1558->g_321},{(void*)0,&p_1558->g_321},{(void*)0,&p_1558->g_321},{(void*)0,&p_1558->g_321},{(void*)0,&p_1558->g_321},{(void*)0,&p_1558->g_321},{(void*)0,&p_1558->g_321},{(void*)0,&p_1558->g_321},{(void*)0,&p_1558->g_321},{(void*)0,&p_1558->g_321}};
            int32_t *l_1250 = &p_1558->g_53;
            int i, j;
            l_1241[0][0]--;
            (*l_1250) = (safe_lshift_func_int8_t_s_s((l_1230 = (safe_unary_minus_func_uint8_t_u((safe_rshift_func_int16_t_s_s(p_21.f0, 14))))), 0));
        }
        else
        { /* block id: 570 */
            int8_t l_1264 = 0x1AL;
            int32_t l_1277 = (-7L);
            int32_t l_1287 = 0x653ECEB6L;
            int32_t l_1291 = (-1L);
            int32_t l_1293 = 0x2EDFE73AL;
            uint32_t l_1329 = 0UL;
            int64_t l_1436 = 1L;
            for (p_1558->g_327 = 0; (p_1558->g_327 <= 1); ++p_1558->g_327)
            { /* block id: 573 */
                int16_t l_1253[8][10] = {{0x378AL,0x15BDL,0L,0x1A4BL,0x15BDL,0x1A4BL,0L,0x15BDL,0x378AL,0x378AL},{0x378AL,0x15BDL,0L,0x1A4BL,0x15BDL,0x1A4BL,0L,0x15BDL,0x378AL,0x378AL},{0x378AL,0x15BDL,0L,0x1A4BL,0x15BDL,0x1A4BL,0L,0x15BDL,0x378AL,0x378AL},{0x378AL,0x15BDL,0L,0x1A4BL,0x15BDL,0x1A4BL,0L,0x15BDL,0x378AL,0x378AL},{0x378AL,0x15BDL,0L,0x1A4BL,0x15BDL,0x1A4BL,0L,0x15BDL,0x378AL,0x378AL},{0x378AL,0x15BDL,0L,0x1A4BL,0x15BDL,0x1A4BL,0L,0x15BDL,0x378AL,0x378AL},{0x378AL,0x15BDL,0L,0x1A4BL,0x15BDL,0x1A4BL,0L,0x15BDL,0x378AL,0x378AL},{0x378AL,0x15BDL,0L,0x1A4BL,0x15BDL,0x1A4BL,0L,0x15BDL,0x378AL,0x378AL}};
                int32_t l_1267 = (-6L);
                int8_t l_1275[5];
                int16_t l_1288 = (-1L);
                int32_t l_1292 = 0x08AA646CL;
                int32_t l_1294 = 0L;
                uint64_t ***l_1308[7][9] = {{&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490},{&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490},{&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490},{&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490},{&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490},{&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490},{&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490,&p_1558->g_490}};
                int32_t *l_1316 = &l_1285[4][2];
                union U0 l_1341 = {0xBD3DB916L};
                int8_t *l_1347 = &p_1558->g_69[1];
                int8_t **l_1346 = &l_1347;
                int i, j;
                for (i = 0; i < 5; i++)
                    l_1275[i] = 1L;
                for (p_1558->g_374 = 1; (p_1558->g_374 >= 0); p_1558->g_374 -= 1)
                { /* block id: 576 */
                    int32_t *l_1268 = (void*)0;
                    int32_t *l_1269 = &p_1558->g_286[0];
                    int i;
                    (*l_1269) ^= ((((p_21 , p_1558->g_69[(p_22 + 1)]) ^ l_1240) & p_1558->g_9) , (l_1267 = (+((l_1230 ^ l_1253[3][2]) , (safe_div_func_uint8_t_u_u(1UL, ((((safe_mod_func_int32_t_s_s((((safe_add_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(l_1264, ((safe_mod_func_uint32_t_u_u(p_1558->g_216[3], l_1253[2][8])) || l_1264))), (-5L))), p_1558->g_744)) , 0UL) | 0x6375621EL), 6L)) & p_1558->g_641) | p_22) | l_1230)))))));
                    for (p_1558->g_53 = 2; (p_1558->g_53 >= 0); p_1558->g_53 -= 1)
                    { /* block id: 581 */
                        return p_22;
                    }
                }
                for (p_1558->g_742 = 0; (p_1558->g_742 == (-1)); p_1558->g_742--)
                { /* block id: 587 */
                    int32_t *l_1272 = &p_1558->g_286[2];
                    int32_t *l_1273[3];
                    int64_t l_1290 = 5L;
                    int32_t l_1295 = 0x643B0F46L;
                    int8_t *l_1313 = &p_1558->g_321;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1273[i] = &p_1558->g_286[2];
                    l_1296--;
                    l_1286[1] = (safe_add_func_uint32_t_u_u((p_23 && (safe_mul_func_uint16_t_u_u((l_1303 != (void*)0), (safe_add_func_int8_t_s_s(((p_1558->g_728[2][0] = (p_23 && (((*l_1313) = ((safe_add_func_int64_t_s_s((((void*)0 == l_1308[6][3]) > (safe_rshift_func_int8_t_s_s((l_1294 != (safe_sub_func_int32_t_s_s((GROUP_DIVERGE(2, 1) >= (((***p_1558->g_901) = GROUP_DIVERGE(2, 1)) , (*l_1272))), 1UL))), l_1267))), 0x0FC3245E5A12DFE1L)) , 7L)) ^ l_1276))) | GROUP_DIVERGE(0, 1)), l_1292))))), 1UL));
                }
                (*l_1316) = (0x2583C056L && 0UL);
                for (p_1558->g_1022 = 0; (p_1558->g_1022 > (-17)); p_1558->g_1022 = safe_sub_func_int64_t_s_s(p_1558->g_1022, 9))
                { /* block id: 597 */
                    uint32_t l_1324 = 4294967295UL;
                    int16_t *l_1348 = &l_1253[2][5];
                    int64_t *l_1349[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    (*l_1316) ^= p_23;
                    for (l_1240 = 5; (l_1240 >= 2); l_1240 -= 1)
                    { /* block id: 601 */
                        int32_t *l_1323[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t **l_1327[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i, j;
                        (*l_1316) ^= ((safe_mod_func_int32_t_s_s(0x4FA1C702L, (safe_mul_func_uint16_t_u_u(p_1558->g_150[(l_1240 + 2)], FAKE_DIVERGE(p_1558->local_0_offset, get_local_id(0), 10))))) == (p_1558->g_746[(p_22 + 2)][l_1240] , p_1558->g_96));
                        l_1324--;
                        l_1328[0] = &p_1558->g_12;
                        l_1329 = p_21.f0;
                    }
                    l_1293 &= (l_1287 != ((*l_1316) == ((p_22 == (((((p_1558->g_197.f1 = ((((safe_lshift_func_int16_t_s_s(((!(l_1332 != l_1328[1])) , ((*l_1348) ^= ((l_1277 = 0x4014F4B6L) < (((((safe_rshift_func_int16_t_s_u((((safe_rshift_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_mul_func_int16_t_s_s((l_1341 , ((safe_mod_func_uint32_t_u_u(4294967287UL, ((safe_lshift_func_int8_t_s_s(((void*)0 == l_1346), 7)) && GROUP_DIVERGE(2, 1)))) < (**p_1558->g_708))), (**p_1558->g_708))), 1UL)), (*l_1316))) > 0x5A99L) >= p_1558->g_345), 1)) && p_21.f0) , 1L) == p_21.f0) == 8L)))), l_1324)) == p_23) ^ 0x60L) , p_22)) , 5L) <= p_21.f0) & p_21.f0) > l_1324)) ^ p_23)));
                }
            }
            for (l_1329 = 0; (l_1329 <= 1); l_1329 += 1)
            { /* block id: 615 */
                int64_t l_1378 = 0x5CCC9D6A29E7A75CL;
                int8_t l_1379 = 0x76L;
                uint64_t ****l_1408[2];
                int32_t l_1410 = 0x0BB1CFB3L;
                int32_t l_1412 = 0x79E16AF3L;
                int i;
                for (i = 0; i < 2; i++)
                    l_1408[i] = &p_1558->g_819;
                for (l_1293 = 3; (l_1293 <= 8); l_1293 += 1)
                { /* block id: 618 */
                    int16_t *l_1376 = &p_1558->g_283;
                    int32_t l_1386[9];
                    int32_t l_1390 = 0x6C8ACF9FL;
                    uint8_t l_1413 = 255UL;
                    int32_t l_1432 = 0x6ABCF05EL;
                    int8_t *l_1434 = (void*)0;
                    int8_t *l_1435 = &p_1558->g_69[1];
                    volatile union U1 **l_1437 = (void*)0;
                    volatile union U1 **l_1438 = &p_1558->g_114;
                    uint32_t l_1453[3][5][2] = {{{4294967292UL,4294967288UL},{4294967292UL,4294967288UL},{4294967292UL,4294967288UL},{4294967292UL,4294967288UL},{4294967292UL,4294967288UL}},{{4294967292UL,4294967288UL},{4294967292UL,4294967288UL},{4294967292UL,4294967288UL},{4294967292UL,4294967288UL},{4294967292UL,4294967288UL}},{{4294967292UL,4294967288UL},{4294967292UL,4294967288UL},{4294967292UL,4294967288UL},{4294967292UL,4294967288UL},{4294967292UL,4294967288UL}}};
                    int i, j, k;
                    for (i = 0; i < 9; i++)
                        l_1386[i] = 0x4AB18CCDL;
                    if ((safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(0UL, 3)), 13)), ((safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((1L ^ (safe_sub_func_uint32_t_u_u(((safe_lshift_func_uint16_t_u_u((p_1558->g_131[l_1329] == (safe_mul_func_int16_t_s_s((safe_div_func_int16_t_s_s(((p_23 = 4L) | (p_1558->g_150[(p_22 + 4)] ^ ((0x36L == (--p_1558->g_728[p_22][p_22])) , ((safe_rshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s((safe_rshift_func_int16_t_s_u((18446744073709551614UL <= (p_22 && (((((void*)0 == l_1376) || p_1558->g_131[l_1329]) > 0x2B24097E72257FFBL) ^ l_1377))), p_22)), (-5L))), p_22)) && p_1558->g_178)))), l_1378)), FAKE_DIVERGE(p_1558->group_0_offset, get_group_id(0), 10)))), 4)) < 0x1E78A3A51D6550C9L), 4294967295UL))), (-1L))), 9)) < l_1379))))
                    { /* block id: 621 */
                        uint32_t l_1382 = 0x33910D76L;
                        int32_t l_1387 = 0x12854DD6L;
                        l_1291 = (l_1387 = (safe_mod_func_int64_t_s_s((4294967295UL && p_21.f0), (p_1558->g_131[l_1329] , (l_1386[3] |= (((l_1382 > (-3L)) || ((l_1277 && 1UL) || (safe_add_func_uint32_t_u_u((((7UL >= 1UL) , p_22) >= l_1385), p_1558->g_70)))) , p_1558->g_728[0][0]))))));
                        l_1387 = p_22;
                    }
                    else
                    { /* block id: 626 */
                        uint64_t *****l_1407 = &l_1406;
                        int32_t l_1411 = 0x7239CB6AL;
                        int i, j;
                        l_1390 &= (safe_div_func_uint16_t_u_u(65527UL, l_1386[6]));
                        l_1410 ^= ((safe_sub_func_uint16_t_u_u(((*p_1558->g_709) = ((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(0x003BL, (((safe_mul_func_int16_t_s_s((((safe_mod_func_int64_t_s_s((((((p_1558->g_150[(p_22 + 4)] = ((p_23 , (void*)0) != &p_1558->g_169)) > (((((p_1558->g_1403 = (safe_rshift_func_uint16_t_u_u(p_1558->g_728[p_22][p_22], 4))) , (safe_sub_func_uint8_t_u_u((~(((*l_1407) = ((p_23 & ((2UL | 8L) || ((-1L) || p_23))) , l_1406)) != l_1408[1])), p_1558->g_641))) >= p_1558->g_728[p_22][p_22]) , l_1386[3]) || (-1L))) <= (**p_1558->g_708)) , p_1558->g_641) > p_21.f0), (-1L))) || 5L) != p_23), l_1378)) || (*p_1558->g_709)) , p_23))), 0x34D7L)) | 0L)), l_1409)) & l_1378);
                        ++l_1413;
                        if (p_22)
                            continue;
                    }
                    l_1277 |= ((l_1291 = (l_1410 , (l_1287 = (safe_lshift_func_int8_t_s_u((((safe_lshift_func_int8_t_s_u((p_21.f0 && ((0x6D0710030FBB366DL == (p_22 , (((l_1386[3] ^= (l_1390 = (--(**l_1238)))) & (p_1558->g_1048[1] , (((safe_sub_func_uint32_t_u_u(p_21.f0, 0xE2651636L)) , 0UL) < ((safe_div_func_int8_t_s_s((((((*l_1435) = ((((*l_1376) = (safe_lshift_func_uint8_t_u_u((l_1432 = (safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((-1L), p_22)), l_1412))), 5))) , l_1433) , 9L)) <= 0xF6L) <= 0L) || l_1436), p_21.f0)) || p_23)))) <= p_1558->g_993[2]))) >= l_1378)), 5)) || p_23) , p_1558->g_150[(p_22 + 4)]), GROUP_DIVERGE(1, 1)))))) > l_1293);
                    (*l_1438) = p_1558->g_114;
                    for (l_1264 = 0; (l_1264 <= 2); l_1264 += 1)
                    { /* block id: 648 */
                        int64_t l_1446[6][7][5] = {{{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL}},{{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL}},{{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL}},{{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL}},{{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL}},{{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL},{0x6BC147619BD79CF3L,(-2L),0x751E131E5DCE7371L,(-9L),0x187E11A818BFA57BL}}};
                        int32_t l_1455 = (-7L);
                        int i, j, k;
                        l_1455 |= (l_1412 &= (safe_unary_minus_func_int8_t_s(((*l_1435) = (((((safe_div_func_uint8_t_u_u(((~((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((1L ^ p_23), 0x34D0A237L)), l_1446[0][1][0])) != ((&p_1558->g_70 != (void*)0) ^ ((safe_mod_func_uint32_t_u_u(p_22, (safe_mul_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(p_22, p_23)) || p_23), l_1453[0][0][0])))) || p_1558->g_286[2])))) < 0x0AC5L), l_1379)) && l_1454) || p_22) | 1L) == l_1453[0][0][0])))));
                    }
                }
                for (l_1291 = 1; (l_1291 >= 0); l_1291 -= 1)
                { /* block id: 656 */
                    int i;
                    l_1385 = p_1558->g_131[l_1329];
                    return p_1558->g_641;
                }
                if (p_1558->g_131[(p_22 + 1)])
                    continue;
            }
        }
    }
    if (((((*l_1303) = l_1456) == ((((p_1558->g_283 > ((safe_rshift_func_uint16_t_u_u(p_22, (+(!(safe_mod_func_int8_t_s_s(0x1EL, (safe_div_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(p_23, p_1558->g_96)), FAKE_DIVERGE(p_1558->global_2_offset, get_global_id(2), 10))))))))) , (GROUP_DIVERGE(1, 1) < (0xB1L ^ ((safe_lshift_func_int16_t_s_s((((((*l_1476) ^= ((((safe_add_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u(((safe_mul_func_int16_t_s_s(((l_1474 && (+(l_1475[0][0][2] ^= p_23))) & p_21.f0), 0x6148L)) < p_23), 10)), p_22)) , 0x5B1C0402L) & 0x50F2F05EL) & (*p_1558->g_491))) | p_1558->g_69[0]) <= (**p_1558->g_708)) , 0x7CE7L), 4)) || (-3L)))))) , 4L) && l_1477[2]) , p_1558->g_114)) ^ p_22))
    { /* block id: 667 */
        int16_t l_1478 = 0x2372L;
        int32_t l_1480 = 0x7CC26A54L;
        int32_t l_1482 = 3L;
        int32_t l_1484 = 0x728E25ADL;
        uint8_t l_1486 = 0xE0L;
        uint8_t ****l_1492 = &p_1558->g_1489;
        uint8_t ***l_1493 = &p_1558->g_1490;
        int32_t l_1498 = 1L;
        for (l_1454 = 0; (l_1454 <= 6); l_1454 += 1)
        { /* block id: 670 */
            int16_t l_1479 = 0L;
            int32_t l_1481 = 1L;
            int32_t l_1483 = 0x46C2A7A7L;
            int32_t l_1485 = (-1L);
            l_1486--;
            l_1482 &= ((p_23 && p_1558->g_235) ^ (-7L));
            if (l_1481)
                break;
        }
        l_1498 ^= ((((*l_1492) = p_1558->g_1489) != l_1493) ^ (safe_sub_func_int16_t_s_s((p_1558->g_216[3] > (((*p_1558->g_1491) |= (l_1328[0] != (p_23 , &p_1558->g_993[2]))) | (safe_sub_func_uint16_t_u_u((p_23 | 1UL), (*p_1558->g_709))))), (*p_1558->g_709))));
    }
    else
    { /* block id: 678 */
        int16_t l_1505[6][7] = {{0x2C4AL,0x6675L,0x2C4AL,0x2C4AL,0x6675L,0x2C4AL,0x2C4AL},{0x2C4AL,0x6675L,0x2C4AL,0x2C4AL,0x6675L,0x2C4AL,0x2C4AL},{0x2C4AL,0x6675L,0x2C4AL,0x2C4AL,0x6675L,0x2C4AL,0x2C4AL},{0x2C4AL,0x6675L,0x2C4AL,0x2C4AL,0x6675L,0x2C4AL,0x2C4AL},{0x2C4AL,0x6675L,0x2C4AL,0x2C4AL,0x6675L,0x2C4AL,0x2C4AL},{0x2C4AL,0x6675L,0x2C4AL,0x2C4AL,0x6675L,0x2C4AL,0x2C4AL}};
        int32_t l_1516 = 0x1A486CFBL;
        uint64_t *****l_1517 = (void*)0;
        int32_t l_1532 = 0L;
        int32_t l_1535 = (-1L);
        int i, j;
        if (p_22)
        { /* block id: 679 */
            int8_t l_1501 = 1L;
            for (p_1558->g_283 = (-7); (p_1558->g_283 != (-15)); p_1558->g_283--)
            { /* block id: 682 */
                int32_t l_1502 = 9L;
                int32_t l_1503[6] = {2L,2L,2L,2L,2L,2L};
                int i;
                for (p_23 = 0; (p_23 >= 0); p_23 -= 1)
                { /* block id: 685 */
                    uint8_t l_1504 = 1UL;
                    l_1501 ^= p_23;
                    for (p_1558->g_17 = 0; (p_1558->g_17 <= 0); p_1558->g_17 += 1)
                    { /* block id: 689 */
                        int32_t l_1506 = 0L;
                        l_1502 = (-3L);
                        l_1503[2] = p_22;
                        l_1505[4][2] |= (18446744073709551607UL > l_1504);
                        l_1506 &= (p_22 || l_1504);
                    }
                }
            }
        }
        else
        { /* block id: 697 */
            uint32_t *l_1510 = (void*)0;
            uint32_t **l_1509 = &l_1510;
            int32_t l_1511 = 0x5F920E2FL;
            uint64_t ******l_1518 = &l_1517;
            int16_t *l_1522 = &p_1558->g_5[1];
            int8_t *l_1533 = &p_1558->g_17;
            int8_t *l_1534 = &p_1558->g_69[1];
            int16_t *l_1536[8][10][3] = {{{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283}},{{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283}},{{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283}},{{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283}},{{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283}},{{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283}},{{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283}},{{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283},{&p_1558->g_283,&l_1505[4][2],&p_1558->g_283}}};
            uint16_t l_1537 = 7UL;
            int32_t *l_1540 = &p_1558->g_286[2];
            int i, j, k;
            l_1511 = ((safe_mul_func_int16_t_s_s(((void*)0 == l_1509), ((*p_1558->g_709) = l_1511))) & (safe_sub_func_int16_t_s_s((l_1537 |= (((((((*l_1534) = (((safe_lshift_func_int8_t_s_s((((l_1516 = p_23) == (((*l_1522) ^= (((*l_1518) = l_1517) == (p_1558->g_1521 = l_1519))) != l_1511)) == (~((((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), ((*l_1533) = (safe_rshift_func_int8_t_s_s(0x1DL, (safe_sub_func_int8_t_s_s((safe_add_func_int32_t_s_s((l_1532 &= (p_1558->g_1531 = ((((+1L) , 1UL) , 0x2BF978B5L) | l_1511))), 0xF2AC08ECL)), GROUP_DIVERGE(2, 1)))))))) <= p_21.f0) == 1L) & p_1558->g_385))), p_1558->g_53)) , p_22) | p_21.f0)) | p_22) & l_1511) >= p_22) , l_1535) != p_23)), l_1535)));
            for (l_1516 = 0; (l_1516 != (-4)); --l_1516)
            { /* block id: 711 */
                l_1540 = &p_1558->g_286[2];
                if (p_22)
                    continue;
            }
            (*l_1540) ^= p_23;
        }
        return p_22;
    }
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1558->g_742 p_1558->g_709 p_1558->g_157 p_1558->g_1048 p_1558->g_708 p_1558->g_902 p_1558->g_491 p_1558->g_385 p_1558->g_286 p_1558->g_235 p_1558->g_17 p_1558->g_490 p_1558->g_96 p_1558->g_69 p_1558->g_131 p_1558->g_12 p_1558->g_921 p_1558->g_880 p_1558->g_327 p_1558->g_283 p_1558->g_115
 * writes: p_1558->g_742 p_1558->g_286 p_1558->g_307 p_1558->g_157 p_1558->g_709 p_1558->g_744 p_1558->g_96 p_1558->g_746 p_1558->g_921 p_1558->g_283 p_1558->g_216 p_1558->g_235 p_1558->g_881 p_1558->g_327 p_1558->g_766 p_1558->g_5
 */
union U0  func_24(int8_t * p_25, int32_t  p_26, uint32_t  p_27, int64_t  p_28, int8_t * p_29, struct S2 * p_1558)
{ /* block id: 455 */
    int8_t l_1056 = 0x3BL;
    int32_t l_1057 = 0x1CF7B9B9L;
    int32_t l_1059 = 0x684143A6L;
    int32_t l_1060 = 0x6AFA98A4L;
    uint16_t *l_1073 = &p_1558->g_157;
    int32_t l_1093 = (-4L);
    int32_t l_1095 = 0x582C4548L;
    int32_t l_1096 = 0L;
    int32_t l_1099 = 0x20AF98A5L;
    int32_t l_1101 = 0x29951DF9L;
    union U0 l_1132 = {0UL};
    uint32_t l_1145[2];
    uint32_t l_1147 = 2UL;
    uint8_t *l_1177 = &p_1558->g_235;
    int32_t l_1215 = (-4L);
    int8_t l_1216 = 1L;
    int32_t l_1217 = (-1L);
    int32_t l_1218 = (-8L);
    int32_t l_1219[8][6][2] = {{{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L}},{{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L}},{{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L}},{{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L}},{{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L}},{{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L}},{{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L}},{{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L},{0x1FEFDC2BL,0x01D827F6L}}};
    uint32_t l_1225[5][3][6] = {{{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL}},{{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL}},{{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL}},{{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL}},{{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL},{0x0B17006DL,0x0DB8B40DL,4294967295UL,0UL,3UL,3UL}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1145[i] = 1UL;
    if (p_27)
    { /* block id: 456 */
        int64_t l_1054[4] = {0L,0L,0L,0L};
        int32_t l_1058 = (-1L);
        uint32_t l_1061 = 9UL;
        int i;
        for (p_1558->g_742 = 0; (p_1558->g_742 != (-25)); p_1558->g_742 = safe_sub_func_int8_t_s_s(p_1558->g_742, 6))
        { /* block id: 459 */
            int32_t *l_1051 = &p_1558->g_286[2];
            int32_t *l_1052 = (void*)0;
            int32_t *l_1053[3][4] = {{&p_1558->g_53,&p_1558->g_53,&p_1558->g_53,&p_1558->g_53},{&p_1558->g_53,&p_1558->g_53,&p_1558->g_53,&p_1558->g_53},{&p_1558->g_53,&p_1558->g_53,&p_1558->g_53,&p_1558->g_53}};
            int8_t l_1055 = (-1L);
            int i, j;
            (*l_1051) = 0x3317F02FL;
            ++l_1061;
            if (p_28)
                break;
        }
        if (p_28)
        { /* block id: 464 */
            int32_t *l_1064 = &p_1558->g_742;
            (*l_1064) = p_27;
        }
        else
        { /* block id: 466 */
            int32_t **l_1065 = &p_1558->g_307;
            (*l_1065) = (void*)0;
        }
    }
    else
    { /* block id: 469 */
        int64_t l_1066 = (-2L);
        int32_t l_1091 = (-1L);
        int32_t l_1092[3][9] = {{(-1L),0x417F04E5L,0x417F04E5L,(-1L),(-1L),0x417F04E5L,0x417F04E5L,(-1L),(-1L)},{(-1L),0x417F04E5L,0x417F04E5L,(-1L),(-1L),0x417F04E5L,0x417F04E5L,(-1L),(-1L)},{(-1L),0x417F04E5L,0x417F04E5L,(-1L),(-1L),0x417F04E5L,0x417F04E5L,(-1L),(-1L)}};
        union U0 *l_1133 = &p_1558->g_115;
        uint16_t *l_1142 = &p_1558->g_385;
        int32_t l_1144 = 0x38F2EC97L;
        uint32_t *l_1161 = &p_1558->g_70;
        uint32_t l_1178[10] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
        uint32_t **l_1189 = (void*)0;
        int32_t *l_1214[2];
        uint64_t l_1220 = 18446744073709551614UL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_1214[i] = &l_1095;
        if ((l_1066 = 0x1011D929L))
        { /* block id: 471 */
            uint16_t *l_1074 = &p_1558->g_157;
            int32_t l_1090 = 0x50E6C466L;
            int32_t l_1094[4][8][6] = {{{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)}},{{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)}},{{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)}},{{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)},{0L,6L,(-8L),0x2C6EDFD2L,0x76F5F46BL,(-1L)}}};
            uint16_t l_1105 = 65527UL;
            uint64_t l_1146[3][8] = {{1UL,18446744073709551615UL,1UL,1UL,18446744073709551615UL,1UL,1UL,18446744073709551615UL},{1UL,18446744073709551615UL,1UL,1UL,18446744073709551615UL,1UL,1UL,18446744073709551615UL},{1UL,18446744073709551615UL,1UL,1UL,18446744073709551615UL,1UL,1UL,18446744073709551615UL}};
            uint8_t *l_1176 = &p_1558->g_728[0][0];
            union U0 *l_1179 = &p_1558->g_115;
            int i, j, k;
            for (p_26 = 0; (p_26 <= (-9)); p_26--)
            { /* block id: 474 */
                int64_t *l_1075 = &p_1558->g_744;
                int32_t l_1076 = 0x5CB407D2L;
                int32_t l_1081 = 0x368A1316L;
                int64_t *l_1084 = &p_1558->g_746[3][3];
                int32_t l_1097 = 0L;
                int32_t l_1098 = 0x5FDCECE5L;
                int32_t l_1100 = 0x5ABEA3D5L;
                int32_t l_1102 = 0x3A5A9F95L;
                int32_t l_1103 = (-1L);
                int32_t l_1104[8];
                union U0 *l_1111 = (void*)0;
                int8_t *l_1165[8][5][3] = {{{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]}},{{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]}},{{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]}},{{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]}},{{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]}},{{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]}},{{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]}},{{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]},{(void*)0,&l_1056,&p_1558->g_69[0]}}};
                int i, j, k;
                for (i = 0; i < 8; i++)
                    l_1104[i] = 0x5D8F0CC8L;
                if (((((l_1076 = ((*l_1075) = ((++(*p_1558->g_709)) , (p_26 | (((safe_mul_func_int8_t_s_s((*p_29), p_1558->g_1048[1])) , l_1073) != ((*p_1558->g_708) = l_1074)))))) != ((*l_1084) = (safe_lshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_s((l_1081 | ((((safe_div_func_int64_t_s_s((((**p_1558->g_902) = l_1057) ^ (((7L == ((p_26 , l_1060) >= p_1558->g_385)) ^ 0x07BCL) ^ p_1558->g_286[2])), 0x07C775FC924D01FBL)) , l_1081) < l_1057) >= p_26)), 10)), 0)))) <= l_1066) | GROUP_DIVERGE(2, 1)))
                { /* block id: 481 */
                    int32_t *l_1085 = &p_1558->g_53;
                    int32_t *l_1086 = &l_1059;
                    int32_t *l_1087 = &l_1060;
                    int32_t *l_1088 = &l_1081;
                    int32_t *l_1089[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1089[i] = &l_1059;
                    l_1105--;
                    for (l_1096 = 0; (l_1096 == 12); l_1096 = safe_add_func_int8_t_s_s(l_1096, 1))
                    { /* block id: 485 */
                        int32_t **l_1110[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1110[i] = &p_1558->g_766[0];
                        p_1558->g_921 = &l_1091;
                    }
                    for (l_1076 = 0; l_1076 < 3; l_1076 += 1)
                    {
                        for (p_1558->g_283 = 0; p_1558->g_283 < 9; p_1558->g_283 += 1)
                        {
                            l_1092[l_1076][p_1558->g_283] = 0x24C140C4L;
                        }
                    }
                    l_1111 = (void*)0;
                }
                else
                { /* block id: 490 */
                    int32_t *l_1143 = &l_1076;
                    uint32_t *l_1148 = &p_1558->g_216[0];
                    union U0 l_1149 = {0xE0195E11L};
                    int32_t **l_1151 = &p_1558->g_921;
                    uint32_t **l_1162 = &l_1161;
                    if (p_28)
                        break;
                    if ((((*l_1148) = ((safe_add_func_int8_t_s_s(((safe_mod_func_uint16_t_u_u(((*l_1074)++), ((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), ((safe_rshift_func_uint16_t_u_u((((((+((p_26 , 1L) && ((safe_lshift_func_uint8_t_u_s(((safe_sub_func_int32_t_s_s((safe_mod_func_int64_t_s_s(((*l_1084) = ((+((safe_mod_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((p_26 != ((l_1132 , (l_1133 != l_1133)) != (p_28 != l_1103))), (safe_div_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((l_1057 = (safe_lshift_func_uint16_t_u_u(((safe_sub_func_uint8_t_u_u((((((*l_1143) = (((l_1142 = (*p_1558->g_708)) != (void*)0) == l_1094[3][3][2])) == l_1066) && p_1558->g_235) < l_1144), p_27)) , 8UL), 14))) , p_1558->g_17), 0xA7L)), 0x3AL)))), p_26)) == p_27)) != (**p_1558->g_490))), l_1145[0])), l_1096)) | l_1146[2][1]), l_1102)) ^ p_1558->g_1048[1]))) | l_1147) > 0x44L) ^ GROUP_DIVERGE(2, 1)) , p_28), 7)) , 0x776AA988AB9B3D5CL))) & p_27))) , (*p_25)), 0x36L)) , p_1558->g_157)) , 1L))
                    { /* block id: 498 */
                        return l_1149;
                    }
                    else
                    { /* block id: 500 */
                        int32_t **l_1150[8] = {&p_1558->g_921,&p_1558->g_766[0],&p_1558->g_921,&p_1558->g_921,&p_1558->g_766[0],&p_1558->g_921,&p_1558->g_921,&p_1558->g_766[0]};
                        int i;
                        p_1558->g_921 = &l_1094[0][2][3];
                    }
                    (*l_1151) = &p_1558->g_2;
                    (*l_1151) = ((safe_unary_minus_func_int16_t_s(((safe_lshift_func_uint8_t_u_s(((*l_1177) |= ((safe_div_func_uint8_t_u_u(0x85L, (safe_mod_func_uint32_t_u_u(((l_1081 = (safe_add_func_int8_t_s_s((((*l_1162) = l_1161) == (void*)0), (safe_lshift_func_uint16_t_u_u(((((~((void*)0 != l_1165[7][3][2])) & (safe_mod_func_uint64_t_u_u((l_1092[2][6] = ((((safe_mod_func_int8_t_s_s((((*l_1073)--) & (safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((!(((*p_25) , p_1558->g_131[1]) ^ ((l_1098 , p_28) <= l_1092[0][2]))), l_1144)), (*p_29)))), 0x42L)) , (-1L)) , l_1176) == l_1177)), GROUP_DIVERGE(0, 1)))) < FAKE_DIVERGE(p_1558->global_2_offset, get_global_id(2), 10)) >= l_1178[9]), 4))))) , 0x609BEF51L), p_1558->g_12)))) && 3L)), 3)) , 1L))) , (*l_1151));
                }
            }
            if ((((*p_1558->g_880) = l_1179) != &l_1132))
            { /* block id: 513 */
                uint32_t l_1183 = 0xDBB34A3DL;
                for (p_1558->g_327 = 0; (p_1558->g_327 > (-12)); p_1558->g_327 = safe_sub_func_int64_t_s_s(p_1558->g_327, 1))
                { /* block id: 516 */
                    int32_t **l_1182 = &p_1558->g_766[0];
                    int32_t *l_1184 = &l_1094[0][2][3];
                    (*l_1182) = &l_1094[3][2][2];
                    (*l_1184) = l_1183;
                }
            }
            else
            { /* block id: 520 */
                int32_t *l_1185 = &l_1101;
                (*l_1185) = 0L;
                for (p_1558->g_283 = 17; (p_1558->g_283 < (-16)); p_1558->g_283 = safe_sub_func_uint32_t_u_u(p_1558->g_283, 9))
                { /* block id: 524 */
                    int32_t **l_1188 = &p_1558->g_307;
                    (*l_1188) = l_1185;
                    (*l_1188) = &p_1558->g_2;
                }
            }
        }
        else
        { /* block id: 529 */
            uint32_t *l_1191 = &p_1558->g_178;
            uint32_t **l_1190[3][2] = {{&l_1191,&l_1191},{&l_1191,&l_1191},{&l_1191,&l_1191}};
            int32_t *l_1192 = &l_1060;
            int i, j;
lbl_1212:
            l_1190[1][0] = l_1189;
            (*l_1192) = l_1092[2][8];
            for (p_1558->g_327 = 0; (p_1558->g_327 <= 7); p_1558->g_327 += 1)
            { /* block id: 534 */
                uint32_t l_1198[8] = {0x11A6C76BL,0x11A6C76BL,0x11A6C76BL,0x11A6C76BL,0x11A6C76BL,0x11A6C76BL,0x11A6C76BL,0x11A6C76BL};
                int32_t l_1203[1][7];
                uint64_t **l_1210 = (void*)0;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 7; j++)
                        l_1203[i][j] = (-7L);
                }
                if (p_26)
                { /* block id: 535 */
                    int32_t *l_1193 = &l_1096;
                    int32_t *l_1194 = (void*)0;
                    int32_t *l_1195 = &l_1060;
                    int32_t l_1196 = 0x477AAF1EL;
                    int32_t l_1197 = (-1L);
                    int16_t *l_1204 = &p_1558->g_5[1];
                    uint8_t l_1205 = 0x8FL;
                    uint64_t **l_1211 = &p_1558->g_491;
                    if (l_1145[0])
                        break;
                    --l_1198[4];
                    if ((0x1A6735B759E1376AL < ((safe_rshift_func_int16_t_s_s((l_1203[0][2] = l_1198[4]), ((*l_1204) = (-9L)))) < (*l_1192))))
                    { /* block id: 540 */
                        return (*l_1133);
                    }
                    else
                    { /* block id: 542 */
                        if (l_1205)
                            break;
                        (*l_1195) = (safe_add_func_uint8_t_u_u(((0x7FCD6ADF23E256D1L <= (*p_1558->g_491)) >= 1L), (safe_mul_func_int16_t_s_s(p_27, ((l_1210 != (l_1211 = l_1211)) >= FAKE_DIVERGE(p_1558->local_1_offset, get_local_id(1), 10))))));
                        return (*l_1133);
                    }
                }
                else
                { /* block id: 548 */
                    int64_t l_1213 = 0x48092A656FC7C300L;
                    if (p_1558->g_157)
                        goto lbl_1212;
                    l_1213 &= (FAKE_DIVERGE(p_1558->group_1_offset, get_group_id(1), 10) >= 0x125E61EE2B42EF6EL);
                    return (*l_1133);
                }
            }
        }
        --l_1220;
        return l_1132;
    }
    l_1225[3][2][2] = (safe_sub_func_uint16_t_u_u(0x5E7BL, (**p_1558->g_708)));
    return l_1132;
}


/* ------------------------------------------ */
/* 
 * reads : p_1558->g_709 p_1558->g_157 p_1558->g_169 p_1558->g_374 p_1558->g_286 p_1558->g_69 p_1558->g_746 p_1558->g_53 p_1558->g_728 p_1558->g_278 p_1558->g_742 p_1558->g_491 p_1558->g_96 p_1558->g_150 p_1558->g_9 p_1558->g_154 p_1558->g_708 p_1558->g_115 p_1558->g_879 p_1558->g_900 p_1558->g_70 p_1558->g_744 p_1558->g_901 p_1558->g_902 p_1558->g_766 p_1558->g_956 p_1558->g_178 p_1558->g_385 p_1558->g_641 p_1558->g_819 p_1558->g_490 p_1558->g_131
 * writes: p_1558->g_157 p_1558->g_53 p_1558->g_286 p_1558->g_819 p_1558->g_131 p_1558->g_744 p_1558->g_278 p_1558->g_742 p_1558->g_766 p_1558->g_96 p_1558->g_307 p_1558->g_921 p_1558->g_150 p_1558->g_385 p_1558->g_956 p_1558->g_321 p_1558->g_993
 */
int8_t * func_30(uint64_t  p_31, int64_t  p_32, struct S2 * p_1558)
{ /* block id: 348 */
    uint32_t l_799 = 1UL;
    int32_t l_806 = 0x5C7813FCL;
    int32_t l_807 = 0x0E67CC74L;
    int32_t *l_808 = &p_1558->g_53;
    int32_t *l_809 = &p_1558->g_286[2];
    int16_t l_828 = 0L;
    uint16_t **l_837 = &p_1558->g_709;
    union U0 *l_845[6] = {&p_1558->g_115,&p_1558->g_115,&p_1558->g_115,&p_1558->g_115,&p_1558->g_115,&p_1558->g_115};
    union U0 **l_844 = &l_845[5];
    uint64_t **l_847 = &p_1558->g_491;
    uint32_t l_910 = 0x51AD6AEDL;
    int16_t l_915 = 0x6621L;
    uint8_t *l_924 = (void*)0;
    uint8_t **l_923 = &l_924;
    int32_t l_936[4] = {0x219410B7L,0x219410B7L,0x219410B7L,0x219410B7L};
    int16_t l_1007 = 0x5347L;
    int32_t l_1015 = 0x31C526D6L;
    int8_t l_1021 = 6L;
    int8_t l_1024 = 0x35L;
    int64_t *l_1039 = (void*)0;
    int64_t **l_1038 = &l_1039;
    int8_t *l_1043 = &p_1558->g_17;
    int8_t **l_1042 = &l_1043;
    int32_t l_1044[5];
    int64_t l_1045 = 7L;
    int i;
    for (i = 0; i < 5; i++)
        l_1044[i] = 1L;
    if (((*l_809) &= ((safe_mul_func_uint16_t_u_u(l_799, ((*p_1558->g_709)--))) , ((*l_808) = (l_807 |= (((safe_rshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s((l_806 = ((~((l_799 , ((0xA3L > 0x07L) ^ p_1558->g_169)) || p_1558->g_374)) | (l_799 | (p_31 != 0x23L)))), l_799)), 1)) && FAKE_DIVERGE(p_1558->local_1_offset, get_local_id(1), 10)) , p_32))))))
    { /* block id: 354 */
        int64_t *l_812[3];
        uint64_t ***l_817 = (void*)0;
        uint64_t ****l_818[8][3][9] = {{{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817}},{{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817}},{{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817}},{{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817}},{{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817}},{{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817}},{{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817}},{{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817},{(void*)0,(void*)0,&l_817,(void*)0,&l_817,&l_817,&l_817,&l_817,&l_817}}};
        int32_t l_826 = (-1L);
        int64_t l_827 = 7L;
        int16_t *l_829 = &p_1558->g_278;
        int32_t *l_830 = &p_1558->g_742;
        union U0 **l_846 = &l_845[3];
        int8_t *l_874 = &p_1558->g_69[0];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_812[i] = (void*)0;
        (*l_830) ^= ((*l_808) = (((*l_829) |= ((p_1558->g_744 = (((safe_add_func_int32_t_s_s(((FAKE_DIVERGE(p_1558->global_0_offset, get_global_id(0), 10) , (((p_1558->g_69[0] , ((void*)0 != l_812[2])) && (p_31 , ((safe_mul_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s(((p_1558->g_746[1][4] != ((p_1558->g_131[0] = (((p_1558->g_819 = l_817) != (void*)0) , (safe_mul_func_uint8_t_u_u((((safe_mod_func_int8_t_s_s((((safe_lshift_func_uint16_t_u_s(0x80D0L, l_826)) , 0x4218L) >= p_32), l_827)) < p_31) || 7UL), (*l_808))))) != 4UL)) != p_1558->g_728[3][0]), 1)) | l_828), p_31)) < l_826))) && GROUP_DIVERGE(0, 1))) & p_31), 0xD15C8534L)) , p_31) <= (*l_809))) >= 18446744073709551615UL)) < 0x1AE5L));
        (*l_830) |= (safe_add_func_int64_t_s_s((safe_add_func_int64_t_s_s((safe_lshift_func_int8_t_s_s(p_31, 3)), ((&p_1558->g_709 != l_837) & (((safe_mod_func_int32_t_s_s((p_31 , (safe_rshift_func_int8_t_s_s(((*p_1558->g_491) == ((-10L) <= (l_844 == l_846))), ((l_847 == &p_1558->g_491) && 0L)))), 0x286D62B1L)) > p_1558->g_150[3]) > 0x9032DD5BD1ECD6E2L)))), 1L));
        (*l_830) = ((safe_lshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_u(p_31, 2)), 2)) != (0x3E172FA3L == ((~(p_1558->g_9 || p_1558->g_154[1][5])) > (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), 15)), ((**p_1558->g_708)--))), (safe_rshift_func_int8_t_s_u(((safe_add_func_int16_t_s_s((safe_mod_func_int8_t_s_s((0UL & (p_1558->g_150[5] < (safe_rshift_func_int16_t_s_s((p_1558->g_115 , (safe_mod_func_int32_t_s_s(((safe_div_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), FAKE_DIVERGE(p_1558->global_0_offset, get_global_id(0), 10))) | (((safe_rshift_func_int16_t_s_s(p_32, 15)) & (((*l_808) , 253UL) != p_1558->g_278)) , p_1558->g_746[3][2])), p_32))), 2)))), p_32)), 0x1461L)) | (*l_809)), (*l_830))))))));
        return l_874;
    }
    else
    { /* block id: 365 */
        int32_t *l_875 = &p_1558->g_53;
        int32_t **l_876 = &p_1558->g_766[0];
        uint32_t l_908 = 4294967293UL;
        uint64_t ****l_909 = (void*)0;
        int32_t l_932[9][7][4] = {{{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L}},{{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L}},{{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L}},{{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L}},{{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L}},{{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L}},{{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L}},{{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L}},{{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L},{0x2B09CE81L,0x2B09CE81L,0x28301E1FL,0x109BBC87L}}};
        uint8_t **l_963 = (void*)0;
        int i, j, k;
lbl_922:
        (*l_808) |= ((*l_809) = ((**p_1558->g_708) > (*l_809)));
        (*l_876) = l_875;
        for (l_828 = 6; (l_828 >= 0); l_828 -= 1)
        { /* block id: 371 */
            int32_t l_911 = 0x1711A3E1L;
            int32_t *l_918 = &l_807;
            uint8_t **l_926 = &l_924;
            int32_t l_931 = 0x44ADCC2DL;
            int32_t l_933 = 5L;
            int32_t l_934 = 0x20557002L;
            int32_t l_935 = 1L;
            int32_t l_937 = 3L;
            int32_t l_939 = 0x518C414EL;
            uint32_t l_940 = 0x9B8D6A44L;
            (*l_875) ^= 1L;
            for (p_1558->g_53 = 0; (p_1558->g_53 <= 0); p_1558->g_53 += 1)
            { /* block id: 375 */
                int64_t *l_907 = (void*)0;
                uint8_t ***l_925[2];
                int32_t l_928[10][6][2] = {{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}}};
                union U1 *l_954 = &p_1558->g_955;
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_925[i] = &l_923;
                if ((safe_mul_func_int64_t_s_s(((void*)0 == p_1558->g_879[7]), (((safe_mod_func_int64_t_s_s(p_1558->g_728[p_1558->g_53][p_1558->g_53], (safe_div_func_uint32_t_u_u((safe_add_func_int64_t_s_s((((FAKE_DIVERGE(p_1558->global_2_offset, get_global_id(2), 10) >= 0x49FAL) >= (safe_add_func_int8_t_s_s((((safe_add_func_uint8_t_u_u((((+((safe_rshift_func_uint8_t_u_u((((0xB1L < (((-1L) > ((safe_div_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_s((p_1558->g_900[7][0] != (((safe_mod_func_uint16_t_u_u(((**l_837) |= ((p_31 | (safe_sub_func_int64_t_s_s(((p_1558->g_131[1] = (-2L)) >= 0x115FC6067853D481L), l_908))) <= p_31)), p_31)) == p_32) , l_909)), l_910)), 4)), l_911)) >= 0L)) ^ 0xD87A47C7L)) && p_1558->g_70) != 4294967290UL), l_911)) <= 8UL)) < 0x6942F04AL) , 1UL), (*l_809))) <= p_1558->g_728[p_1558->g_53][p_1558->g_53]) , p_1558->g_744), p_1558->g_744))) ^ p_1558->g_728[p_1558->g_53][p_1558->g_53]), l_911)), p_32)))) , p_31) < 0x2BDEL))))
                { /* block id: 378 */
                    for (l_910 = 0; (l_910 <= 6); l_910 += 1)
                    { /* block id: 381 */
                        int32_t *l_914 = &p_1558->g_742;
                        (*l_809) ^= (safe_rshift_func_int16_t_s_s(p_31, 4));
                        (*l_809) = p_1558->g_728[p_1558->g_53][p_1558->g_53];
                        (*l_876) = l_914;
                    }
                }
                else
                { /* block id: 386 */
                    int32_t *l_919 = &p_1558->g_742;
                    if (l_915)
                    { /* block id: 387 */
                        (*l_876) = ((--(***p_1558->g_901)) , &p_1558->g_12);
                    }
                    else
                    { /* block id: 390 */
                        int32_t **l_920[9][3][7] = {{{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808}},{{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808}},{{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808}},{{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808}},{{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808}},{{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808}},{{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808}},{{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808}},{{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808},{(void*)0,(void*)0,&l_919,&l_809,&l_919,&l_809,&l_808}}};
                        int i, j, k;
                        (*l_809) ^= ((-1L) < (*l_875));
                        (*l_876) = (l_918 = (*l_876));
                        p_1558->g_921 = (p_1558->g_307 = ((*l_876) = l_919));
                        return &p_1558->g_17;
                    }
                    for (l_915 = 0; (l_915 <= 6); l_915 += 1)
                    { /* block id: 401 */
                        if (p_1558->g_742)
                            goto lbl_922;
                        if (p_32)
                            break;
                    }
                    if ((*l_919))
                        continue;
                }
                l_926 = l_923;
                for (p_31 = 0; (p_31 <= 6); p_31 += 1)
                { /* block id: 410 */
                    int32_t *l_927 = &p_1558->g_742;
                    int32_t *l_929 = &l_928[9][0][0];
                    int32_t *l_930[4][6][7] = {{{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2}},{{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2}},{{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2}},{{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2},{&l_807,(void*)0,&l_928[0][3][0],(void*)0,(void*)0,&p_1558->g_12,&p_1558->g_2}}};
                    int8_t l_938 = (-1L);
                    uint8_t **l_945 = (void*)0;
                    uint32_t *l_962 = &l_940;
                    int i, j, k;
                    ++l_940;
                    (*l_927) &= (safe_add_func_uint32_t_u_u(((l_945 == ((+((*l_809) = ((safe_lshift_func_uint8_t_u_s((((safe_rshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((*l_918) = p_1558->g_154[(p_1558->g_53 + 3)][l_828]), ((*l_962) = ((l_954 == ((1L & l_928[9][3][1]) , p_1558->g_956)) && ((((safe_div_func_uint8_t_u_u((--p_1558->g_150[3]), p_1558->g_53)) , (!(+((((((l_928[9][3][1] = (+p_32)) != (*l_875)) & (-5L)) && (*l_809)) == p_1558->g_178) != FAKE_DIVERGE(p_1558->local_0_offset, get_local_id(0), 10))))) , &l_845[2]) != (void*)0))))), 10)), 4)) >= 18446744073709551613UL) & p_32), 7)) <= p_1558->g_728[p_1558->g_53][p_1558->g_53]))) , l_963)) & 0x83BB6E26L), (-9L)));
                    if (p_32)
                        break;
                }
            }
        }
    }
    for (p_1558->g_385 = 0; (p_1558->g_385 <= 8); p_1558->g_385 += 1)
    { /* block id: 425 */
        union U1 *l_966[10] = {&p_1558->g_968[6][1],&p_1558->g_969,&p_1558->g_968[6][1],&p_1558->g_968[6][1],&p_1558->g_969,&p_1558->g_968[6][1],&p_1558->g_968[6][1],&p_1558->g_969,&p_1558->g_968[6][1],&p_1558->g_968[6][1]};
        union U1 **l_970 = &p_1558->g_956;
        union U1 *l_972 = &p_1558->g_973;
        union U1 **l_971 = &l_972;
        int64_t *l_987 = &p_1558->g_744;
        int64_t **l_986 = &l_987;
        uint16_t *l_990 = &p_1558->g_157;
        int8_t *l_991 = &p_1558->g_321;
        uint32_t *l_992 = &p_1558->g_993[2];
        int32_t l_995 = 0x40C3F476L;
        int32_t l_1008 = (-10L);
        int32_t l_1016 = (-8L);
        int32_t l_1017 = (-1L);
        int32_t l_1018 = 0x0DFFE061L;
        int32_t l_1019[6][6][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
        int32_t l_1025 = 0L;
        uint32_t l_1026 = 0UL;
        int i, j, k;
        if ((safe_mod_func_int64_t_s_s(((((*l_970) = l_966[6]) == ((*l_971) = (void*)0)) && (p_1558->g_150[p_1558->g_385] != ((((safe_div_func_int8_t_s_s((((*l_992) = (safe_mod_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(p_1558->g_150[p_1558->g_385], ((*l_991) = (safe_add_func_uint16_t_u_u(0x8D3BL, (safe_lshift_func_int8_t_s_s((((void*)0 == l_986) < (safe_mul_func_int64_t_s_s(1L, ((p_32 , (*p_1558->g_708)) != l_990)))), 0))))))), 0x8BEEL)), p_1558->g_70))) , p_1558->g_9), 7UL)) || p_32) && 1L) , p_32))), p_1558->g_641)))
        { /* block id: 430 */
            int32_t *l_994[2][2];
            uint32_t l_996 = 0x0DF0DF93L;
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 2; j++)
                    l_994[i][j] = &l_936[2];
            }
            l_996--;
            l_1008 &= (((+((**p_1558->g_819) != (**p_1558->g_819))) == (p_1558->g_374 | ((((safe_add_func_int64_t_s_s(((*l_987) = (p_1558->g_131[1] |= p_1558->g_744)), (safe_div_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((((safe_sub_func_int16_t_s_s((+((l_990 == (void*)0) < ((*l_809) = ((((void*)0 != (*l_837)) && l_995) || (*l_808))))), 65533UL)) > p_31) == (*l_808)), p_32)), (*l_808))))) || p_31) < 0x3486L) != p_32))) | l_1007);
            for (l_1008 = 8; (l_1008 >= 1); l_1008 -= 1)
            { /* block id: 438 */
                int32_t *l_1009 = &p_1558->g_9;
                int32_t **l_1010 = &l_808;
                int8_t *l_1011 = &p_1558->g_69[0];
                (*l_1010) = l_1009;
                return l_1011;
            }
        }
        else
        { /* block id: 442 */
            int32_t **l_1012 = &p_1558->g_766[0];
            int32_t *l_1013 = &l_1008;
            int32_t *l_1014[3];
            int32_t l_1020 = (-1L);
            int64_t l_1023 = (-3L);
            int32_t **l_1029 = &l_1013;
            int i;
            for (i = 0; i < 3; i++)
                l_1014[i] = &l_995;
            (*l_1012) = &p_1558->g_9;
            if (p_31)
                continue;
            l_1026--;
            (*l_1029) = ((*l_1012) = &p_1558->g_9);
        }
        (*l_808) = (safe_lshift_func_int16_t_s_s((((safe_div_func_int16_t_s_s((l_1019[5][0][0] = p_32), (safe_add_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(((void*)0 != l_1038), (&l_924 == &l_924))), (((((safe_lshift_func_uint16_t_u_s((*l_809), ((GROUP_DIVERGE(0, 1) || (((((void*)0 == (*p_1558->g_819)) , (!((*l_987) = (((void*)0 == l_1042) , 0x084DE3AEF2662DA1L)))) && p_31) && (*l_809))) <= 0x0A9B5DBDL))) , 1L) || 0x62B560FEB580C61EL) | l_1044[1]) & 0x4C4ECC4238DC8FA6L))))) && p_31) != (*l_808)), 12));
        if (l_1045)
            break;
    }
    return &p_1558->g_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_1558->g_5 p_1558->g_70 p_1558->g_53 p_1558->g_114 p_1558->g_115 p_1558->g_96 p_1558->g_17 p_1558->g_131 p_1558->g_69 p_1558->g_154 p_1558->g_115.f0 p_1558->g_169 p_1558->g_12 p_1558->g_104.f3 p_1558->g_9 p_1558->g_178 p_1558->g_216 p_1558->g_150 p_1558->g_235 p_1558->g_157 p_1558->g_286 p_1558->g_321 p_1558->g_2 p_1558->g_278 p_1558->g_327 p_1558->g_374 p_1558->g_275 p_1558->g_345 p_1558->g_385 p_1558->g_283 p_1558->g_490 p_1558->g_728 p_1558->g_746 p_1558->g_491 p_1558->g_744 p_1558->g_709 p_1558->g_708 p_1558->g_551
 * writes: p_1558->g_70 p_1558->g_96 p_1558->g_53 p_1558->g_69 p_1558->g_131 p_1558->g_5 p_1558->g_104.f3 p_1558->g_150 p_1558->g_154 p_1558->g_157 p_1558->g_169 p_1558->g_178 p_1558->g_179 p_1558->g_216 p_1558->g_17 p_1558->g_235 p_1558->g_283 p_1558->g_286 p_1558->g_278 p_1558->g_307 p_1558->g_327 p_1558->g_345 p_1558->g_385 p_1558->g_275 p_1558->g_321 p_1558->g_602.f3 p_1558->g_742 p_1558->g_744 p_1558->g_746 p_1558->g_766 p_1558->g_551
 */
uint16_t  func_35(uint32_t  p_36, uint8_t  p_37, int8_t * p_38, uint32_t  p_39, struct S2 * p_1558)
{ /* block id: 15 */
    union U0 l_740 = {0x258105D8L};
    int16_t *l_776 = &p_1558->g_5[2];
    int16_t *l_777 = &p_1558->g_278;
    uint64_t *l_780 = &p_1558->g_117.f3;
    uint64_t *l_781 = (void*)0;
    uint64_t *l_782 = &p_1558->g_106.f3;
    uint64_t *l_783 = (void*)0;
    uint64_t *l_784 = &p_1558->g_117.f3;
    int32_t l_785[2][1][7] = {{{0x30EE689AL,(-6L),0x0ACCC10CL,(-6L),0x30EE689AL,0x30EE689AL,(-6L)}},{{0x30EE689AL,(-6L),0x0ACCC10CL,(-6L),0x30EE689AL,0x30EE689AL,(-6L)}}};
    uint64_t *l_786 = &p_1558->g_551;
    int64_t **l_789 = (void*)0;
    int64_t *l_792[1][9][1] = {{{&p_1558->g_131[0]},{&p_1558->g_131[0]},{&p_1558->g_131[0]},{&p_1558->g_131[0]},{&p_1558->g_131[0]},{&p_1558->g_131[0]},{&p_1558->g_131[0]},{&p_1558->g_131[0]},{&p_1558->g_131[0]}}};
    int64_t **l_791[4][4][9] = {{{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]}},{{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]}},{{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]}},{{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]},{&l_792[0][8][0],(void*)0,&l_792[0][6][0],&l_792[0][4][0],&l_792[0][7][0],&l_792[0][4][0],&l_792[0][6][0],(void*)0,&l_792[0][8][0]}}};
    int64_t ***l_790 = &l_791[0][3][8];
    int32_t *l_793[3];
    int8_t l_794 = 0x09L;
    int16_t l_795[10][5] = {{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_793[i] = &p_1558->g_286[2];
    for (p_37 = 1; (p_37 <= 6); p_37 += 1)
    { /* block id: 18 */
        int8_t *l_51 = &p_1558->g_17;
        int32_t *l_741 = &p_1558->g_742;
        int64_t *l_743 = &p_1558->g_744;
        int64_t *l_745 = &p_1558->g_746[1][4];
        int8_t **l_763 = (void*)0;
        int8_t **l_764[2][2];
        int32_t **l_765[9][5][2] = {{{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307}},{{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307}},{{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307}},{{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307}},{{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307}},{{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307}},{{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307}},{{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307}},{{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307},{(void*)0,&p_1558->g_307}}};
        int16_t *l_767 = (void*)0;
        int16_t *l_768 = &p_1558->g_327;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 2; j++)
                l_764[i][j] = &l_51;
        }
        (*l_741) = (((*l_768) = (p_1558->g_5[p_37] , (&p_1558->g_12 != (p_1558->g_766[0] = (((p_38 = func_42((safe_add_func_uint64_t_u_u(func_47(p_36, l_51, l_51, p_1558), ((*l_745) ^= ((*l_743) = (p_39 != (safe_mul_func_int16_t_s_s((((l_740 , ((*l_741) = 6L)) , p_37) , 3L), p_37))))))), l_740.f0, p_1558)) == (void*)0) , (void*)0))))) > p_1558->g_9);
        atomic_min(&p_1558->g_atomic_reduction[get_linear_group_id()], 0x137BDF65L + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1558->v_collective += p_1558->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    }
    l_795[3][3] = (l_794 = ((**p_1558->g_708) , (safe_div_func_int8_t_s_s(((((safe_unary_minus_func_uint64_t_u(((**p_1558->g_490) = (**p_1558->g_490)))) > (safe_sub_func_uint8_t_u_u(((safe_mod_func_uint32_t_u_u(((GROUP_DIVERGE(1, 1) <= (l_776 == (l_777 = (void*)0))) , 0x70F24B66L), ((safe_sub_func_uint16_t_u_u(p_39, ((--(*l_786)) & ((l_789 == ((*l_790) = l_789)) || (l_785[0][0][0] == l_785[1][0][4]))))) ^ p_1558->g_154[3][5]))) != l_785[0][0][0]), p_1558->g_744))) > p_1558->g_9) & 0x010FL), p_1558->g_385))));
    return (*p_1558->g_709);
}


/* ------------------------------------------ */
/* 
 * reads : p_1558->g_12 p_1558->g_490 p_1558->g_491 p_1558->g_96 p_1558->g_744 p_1558->g_114 p_1558->g_709 p_1558->g_157
 * writes: p_1558->g_744 p_1558->g_286
 */
int8_t * func_42(uint32_t  p_43, int32_t  p_44, struct S2 * p_1558)
{ /* block id: 330 */
    int64_t *l_755 = &p_1558->g_744;
    int32_t l_758 = 0x534DCB29L;
    uint8_t *l_759 = (void*)0;
    uint8_t *l_760 = (void*)0;
    int32_t l_761 = 0x1ED3C136L;
    int32_t *l_762 = &p_1558->g_286[1];
    (*l_762) = (((((safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u(65532UL, ((9UL & p_1558->g_12) || (safe_sub_func_uint8_t_u_u(((((**p_1558->g_490) & ((255UL > (safe_rshift_func_uint8_t_u_u((((*l_755) |= (-9L)) && FAKE_DIVERGE(p_1558->group_2_offset, get_group_id(2), 10)), (safe_mod_func_int8_t_s_s(((l_758 = ((l_758 , &p_1558->g_746[3][2]) != (((p_1558->g_114 == (void*)0) == 0xDDL) , &p_1558->g_131[1]))) < p_44), 0x8DL))))) && 0x7F2A28210E46619DL)) , l_758) == l_761), (-1L)))))), l_761)) >= l_761) || (*p_1558->g_709)) >= p_44) && 1UL);
    return &p_1558->g_321;
}


/* ------------------------------------------ */
/* 
 * reads : p_1558->g_70 p_1558->g_53 p_1558->g_96 p_1558->g_114 p_1558->g_115 p_1558->g_17 p_1558->g_131 p_1558->g_5 p_1558->g_69 p_1558->g_154 p_1558->g_115.f0 p_1558->g_169 p_1558->g_12 p_1558->g_104.f3 p_1558->g_9 p_1558->g_178 p_1558->g_216 p_1558->g_150 p_1558->g_235 p_1558->g_157 p_1558->g_286 p_1558->g_321 p_1558->g_2 p_1558->g_278 p_1558->g_327 p_1558->g_374 p_1558->g_275 p_1558->g_345 p_1558->g_385 p_1558->g_283 p_1558->g_490 p_1558->g_728
 * writes: p_1558->g_70 p_1558->g_96 p_1558->g_53 p_1558->g_69 p_1558->g_131 p_1558->g_5 p_1558->g_104.f3 p_1558->g_150 p_1558->g_154 p_1558->g_157 p_1558->g_169 p_1558->g_178 p_1558->g_179 p_1558->g_216 p_1558->g_17 p_1558->g_235 p_1558->g_283 p_1558->g_286 p_1558->g_278 p_1558->g_307 p_1558->g_327 p_1558->g_345 p_1558->g_385 p_1558->g_275 p_1558->g_321 p_1558->g_602.f3
 */
uint64_t  func_47(int32_t  p_48, int8_t * p_49, int8_t * p_50, struct S2 * p_1558)
{ /* block id: 19 */
    int32_t *l_52 = &p_1558->g_53;
    int32_t l_54 = 0x18791B16L;
    int32_t *l_55 = (void*)0;
    int32_t *l_56 = &p_1558->g_53;
    int32_t *l_57 = &l_54;
    int32_t *l_58 = &l_54;
    int32_t *l_59 = (void*)0;
    int32_t *l_60 = &l_54;
    int32_t *l_61 = &p_1558->g_53;
    int32_t *l_62 = (void*)0;
    int32_t *l_63 = &p_1558->g_53;
    int32_t *l_64 = (void*)0;
    int32_t *l_65 = &p_1558->g_53;
    int32_t *l_66 = (void*)0;
    int32_t *l_67 = &p_1558->g_53;
    int32_t *l_68[6];
    uint8_t *l_727 = &p_1558->g_728[3][0];
    uint16_t l_729 = 0xD26AL;
    uint64_t *l_730 = (void*)0;
    uint64_t *l_731 = &p_1558->g_602[1][1][0].f3;
    int32_t *l_736[7][9][3] = {{{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53}},{{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53}},{{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53}},{{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53}},{{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53}},{{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53}},{{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53},{&p_1558->g_286[2],&p_1558->g_53,&p_1558->g_53}}};
    int32_t **l_737 = &l_65;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_68[i] = &l_54;
    --p_1558->g_70;
    (*l_52) = ((safe_lshift_func_int16_t_s_s((*l_60), 15)) || func_75((safe_lshift_func_uint8_t_u_s((safe_mod_func_int64_t_s_s((p_48 == func_84((*l_56), p_1558)), (safe_div_func_int8_t_s_s((safe_div_func_uint16_t_u_u(p_1558->g_9, (+(-7L)))), (safe_mod_func_uint16_t_u_u(((((!((*l_731) = ((safe_sub_func_uint64_t_u_u((p_48 && (safe_mod_func_uint16_t_u_u((safe_div_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_s((safe_div_func_int8_t_s_s((!(l_727 != &p_1558->g_728[0][0])), (-4L))), p_1558->g_728[3][0])) >= p_48) & p_1558->g_728[3][0]), p_1558->g_115.f0)), l_729))), p_1558->g_728[3][0])) <= 3UL))) & p_48) > 1UL) & p_1558->g_115.f0), p_1558->g_728[0][0])))))), 2)), &l_54, &p_1558->g_12, p_48, p_1558));
    (*l_737) = l_736[0][6][0];
    return p_48;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_75(uint32_t  p_76, int32_t * p_77, int32_t * p_78, uint16_t  p_79, struct S2 * p_1558)
{ /* block id: 321 */
    uint32_t l_732 = 2UL;
    uint32_t l_735 = 1UL;
    l_732++;
    return l_735;
}


/* ------------------------------------------ */
/* 
 * reads : p_1558->g_114 p_1558->g_115 p_1558->g_96 p_1558->g_17 p_1558->g_53 p_1558->g_131 p_1558->g_5 p_1558->g_69 p_1558->g_154 p_1558->g_115.f0 p_1558->g_169 p_1558->g_12 p_1558->g_104.f3 p_1558->g_9 p_1558->g_178 p_1558->g_216 p_1558->g_150 p_1558->g_235 p_1558->g_70 p_1558->g_157 p_1558->g_286 p_1558->g_321 p_1558->g_2 p_1558->g_278 p_1558->g_327 p_1558->g_374 p_1558->g_275 p_1558->g_345 p_1558->g_385 p_1558->g_283 p_1558->g_490
 * writes: p_1558->g_96 p_1558->g_53 p_1558->g_70 p_1558->g_69 p_1558->g_131 p_1558->g_5 p_1558->g_104.f3 p_1558->g_150 p_1558->g_154 p_1558->g_157 p_1558->g_169 p_1558->g_178 p_1558->g_179 p_1558->g_216 p_1558->g_17 p_1558->g_235 p_1558->g_283 p_1558->g_286 p_1558->g_278 p_1558->g_307 p_1558->g_327 p_1558->g_345 p_1558->g_385 p_1558->g_275 p_1558->g_321
 */
uint16_t  func_84(int64_t  p_85, struct S2 * p_1558)
{ /* block id: 21 */
    uint64_t *l_95 = &p_1558->g_96;
    int32_t *l_97[3][4][3] = {{{(void*)0,(void*)0,&p_1558->g_9},{(void*)0,(void*)0,&p_1558->g_9},{(void*)0,(void*)0,&p_1558->g_9},{(void*)0,(void*)0,&p_1558->g_9}},{{(void*)0,(void*)0,&p_1558->g_9},{(void*)0,(void*)0,&p_1558->g_9},{(void*)0,(void*)0,&p_1558->g_9},{(void*)0,(void*)0,&p_1558->g_9}},{{(void*)0,(void*)0,&p_1558->g_9},{(void*)0,(void*)0,&p_1558->g_9},{(void*)0,(void*)0,&p_1558->g_9},{(void*)0,(void*)0,&p_1558->g_9}}};
    int64_t l_359 = 1L;
    uint64_t l_372 = 0xDAD0AC494E0BCCA2L;
    int16_t l_446 = 0x1752L;
    int64_t l_493[7][9] = {{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L}};
    uint32_t l_495 = 1UL;
    union U0 *l_539 = &p_1558->g_115;
    union U0 **l_538 = &l_539;
    uint16_t l_642 = 9UL;
    int i, j, k;
lbl_390:
    p_1558->g_327 = (p_1558->g_286[0] = (safe_div_func_int8_t_s_s((safe_div_func_uint32_t_u_u((safe_unary_minus_func_uint8_t_u(0xF5L)), func_91(&p_1558->g_69[0], (((*l_95) = FAKE_DIVERGE(p_1558->group_2_offset, get_group_id(2), 10)) , (void*)0), l_97[1][0][0], p_1558))), p_1558->g_321)));
    for (p_1558->g_157 = 0; (p_1558->g_157 <= 8); p_1558->g_157 += 1)
    { /* block id: 117 */
        uint32_t l_328 = 4294967295UL;
        int32_t l_347 = 0x16F0B774L;
        int32_t l_348 = 0x0BFADAF8L;
        uint64_t l_349 = 0UL;
        int16_t *l_363 = &p_1558->g_278;
        uint32_t *l_373 = &p_1558->g_70;
        uint32_t *l_375 = &l_328;
        int64_t *l_376 = (void*)0;
        int64_t *l_377 = &p_1558->g_131[1];
        int32_t *l_378[1];
        int32_t **l_379 = &l_97[2][3][2];
        uint64_t **l_380 = &l_95;
        uint16_t *l_381 = &p_1558->g_345;
        uint16_t *l_384[1][3][10] = {{{&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385},{&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385},{&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385,&p_1558->g_385}}};
        int32_t *l_386 = &p_1558->g_2;
        int16_t l_394[2];
        uint8_t l_398 = 0x27L;
        int8_t *l_403 = &p_1558->g_321;
        int32_t l_447[8] = {0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL};
        int8_t l_448 = 0x54L;
        union U0 *l_464 = &p_1558->g_115;
        uint64_t ***l_492 = &l_380;
        int8_t *l_494 = &p_1558->g_17;
        uint64_t l_514 = 9UL;
        union U0 **l_542 = &l_539;
        uint32_t l_660 = 1UL;
        int32_t l_662 = 0x26516586L;
        uint32_t l_694 = 4294967289UL;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_378[i] = (void*)0;
        for (i = 0; i < 2; i++)
            l_394[i] = 0x32CDL;
        for (p_1558->g_278 = 3; (p_1558->g_278 <= 8); p_1558->g_278 += 1)
        { /* block id: 120 */
            int32_t l_343 = 0x595743C3L;
            uint16_t *l_344 = &p_1558->g_345;
            int16_t *l_346 = &p_1558->g_327;
            int32_t **l_360 = &p_1558->g_307;
            int i;
            p_1558->g_53 |= ((FAKE_DIVERGE(p_1558->global_0_offset, get_global_id(0), 10) , (p_1558->g_286[2] ^= l_328)) >= (safe_mul_func_uint16_t_u_u(((p_1558->g_69[0] <= ((safe_sub_func_uint32_t_u_u(((l_348 ^= (p_85 ^ ((safe_lshift_func_int8_t_s_u(p_1558->g_2, 1)) || (p_1558->g_69[0] , ((*l_95) |= (((safe_sub_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((&p_1558->g_96 != ((0x64D6B0D7L > ((((((*l_346) ^= (((*l_344) = (safe_rshift_func_int16_t_s_s(((p_1558->g_150[p_1558->g_278] = (safe_div_func_int64_t_s_s(((0x20L & (((p_1558->g_9 != l_328) < FAKE_DIVERGE(p_1558->group_1_offset, get_group_id(1), 10)) == 0x89L)) ^ p_85), p_1558->g_69[0]))) ^ p_1558->g_178), l_343))) | 1L)) < p_85) & l_347) >= p_85) , l_347)) , l_95)), p_1558->g_321)), p_85)) , p_85) | p_85)))))) || p_1558->g_216[3]), p_85)) != l_349)) & p_85), p_1558->g_70)));
            for (p_1558->g_283 = 8; (p_1558->g_283 >= 0); p_1558->g_283 -= 1)
            { /* block id: 130 */
                union U0 l_358[7] = {{2UL},{4294967288UL},{2UL},{2UL},{4294967288UL},{2UL},{2UL}};
                int i;
                p_1558->g_286[2] = (safe_sub_func_uint8_t_u_u((((safe_add_func_uint64_t_u_u((p_1558->g_69[0] && (safe_add_func_int16_t_s_s(((safe_lshift_func_int16_t_s_u((((*l_344) = (p_1558->g_69[0] != 0xBBL)) || ((~((void*)0 == &p_1558->g_235)) & p_85)), 10)) <= l_349), ((((((!(l_358[1] , 0x5BBA301228ECA0DBL)) && l_359) > l_358[1].f0) ^ p_85) && l_358[1].f0) && p_1558->g_286[2])))), 18446744073709551612UL)) , p_85) == p_1558->g_131[0]), FAKE_DIVERGE(p_1558->group_0_offset, get_group_id(0), 10)));
            }
            (*l_360) = l_97[0][3][2];
        }
        (*l_379) = (l_378[0] = (((((*l_377) = (((safe_lshift_func_uint16_t_u_u(p_85, (p_85 ^ ((*l_363) = p_85)))) , p_85) > (safe_div_func_int16_t_s_s((safe_mul_func_int16_t_s_s((0x12C6DBBEL & ((*l_375) |= (((((((safe_mod_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(4294967291UL, ((*l_373) = (p_1558->g_131[1] || (((p_85 == l_347) <= p_1558->g_216[3]) , l_372))))), p_85)) == 0x7A25ABAAL) > 65528UL) | p_1558->g_150[6]) , p_1558->g_374) , p_1558->g_53) , p_1558->g_169))), p_1558->g_275)), p_1558->g_345)))) ^ l_347) >= (-1L)) , &p_1558->g_286[0]));
        if (((~(p_85 > p_1558->g_96)) < (p_1558->g_385 = ((&p_1558->g_96 == ((*l_380) = &l_372)) , ((*l_381)++)))))
        { /* block id: 145 */
            int16_t l_387 = 0x3780L;
            int32_t *l_389 = &l_348;
            int32_t l_392[3][2] = {{0x5C6A7CF2L,0x5C6A7CF2L},{0x5C6A7CF2L,0x5C6A7CF2L},{0x5C6A7CF2L,0x5C6A7CF2L}};
            int i, j;
            for (p_1558->g_345 = 3; (p_1558->g_345 <= 8); p_1558->g_345 += 1)
            { /* block id: 148 */
                uint64_t l_388 = 0UL;
                int32_t l_391 = 0x638C486AL;
                int16_t l_393 = 0x73BAL;
                int32_t l_397 = 0x5C992468L;
                (*l_379) = l_386;
                l_388 = (p_1558->g_286[2] = (0x548239F17EEFC131L ^ l_387));
                for (l_387 = 8; (l_387 >= 1); l_387 -= 1)
                { /* block id: 154 */
                    int8_t l_395[9][8] = {{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L}};
                    int32_t l_396 = (-1L);
                    int i, j;
                    for (p_1558->g_275 = 2; (p_1558->g_275 >= 0); p_1558->g_275 -= 1)
                    { /* block id: 157 */
                        int i;
                        return p_1558->g_286[p_1558->g_275];
                    }
                    l_389 = l_97[1][1][1];
                    if (p_1558->g_345)
                        goto lbl_390;
                    --l_398;
                }
                for (l_328 = 2; (l_328 <= 8); l_328 += 1)
                { /* block id: 166 */
                    l_389 = &l_392[1][1];
                }
            }
            for (l_387 = 7; (l_387 >= 0); l_387 -= 1)
            { /* block id: 172 */
                int16_t l_404 = (-6L);
                union U1 *l_426 = &p_1558->g_427;
                int32_t **l_445[8] = {&l_378[0],&l_97[1][0][0],&l_378[0],&l_378[0],&l_97[1][0][0],&l_378[0],&l_378[0],&l_97[1][0][0]};
                int i;
                for (p_1558->g_235 = 0; (p_1558->g_235 <= 0); p_1558->g_235 += 1)
                { /* block id: 175 */
                    int64_t l_413 = (-8L);
                    for (l_347 = 0; (l_347 <= 0); l_347 += 1)
                    { /* block id: 178 */
                        l_392[0][0] |= (safe_lshift_func_uint8_t_u_s(((void*)0 == l_403), 6));
                    }
                    l_404 = p_85;
                    l_392[1][0] = (safe_mul_func_uint16_t_u_u(((safe_add_func_int16_t_s_s(((*l_363) = p_85), GROUP_DIVERGE(1, 1))) ^ (((safe_div_func_uint64_t_u_u(((safe_add_func_int8_t_s_s(p_85, l_413)) < (safe_lshift_func_int16_t_s_s((safe_div_func_int16_t_s_s(((safe_sub_func_int32_t_s_s((safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((p_1558->g_114 == l_426), ((safe_lshift_func_uint8_t_u_s((((safe_add_func_int16_t_s_s((((*l_373) = (safe_mul_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(p_85, (safe_add_func_int64_t_s_s((safe_div_func_int32_t_s_s(((safe_mod_func_int64_t_s_s(p_1558->g_286[2], (safe_unary_minus_func_uint8_t_u((safe_mul_func_uint8_t_u_u(p_1558->g_385, 0x01L)))))) > p_1558->g_154[3][2]), p_85)), p_1558->g_131[1])))) || 0L), p_85))) < p_1558->g_286[2]), GROUP_DIVERGE(1, 1))) , l_445[6]) != (void*)0), p_1558->g_150[3])) < l_446))), 0)), p_1558->g_2)), p_1558->g_286[2])) > l_447[4]), l_448)), p_85))), p_1558->g_53)) , p_1558->g_2) <= p_1558->g_2)), 1UL));
                }
            }
            return p_1558->g_286[2];
        }
        else
        { /* block id: 188 */
            uint16_t l_457 = 65535UL;
            uint8_t *l_458 = &p_1558->g_235;
            int32_t l_461 = 0x68B36FBCL;
            for (l_328 = 0; (l_328 <= 8); l_328 += 1)
            { /* block id: 191 */
                uint64_t l_456 = 0x2EF1E78B4661D7D3L;
                int32_t l_462 = 0L;
                int64_t l_463[5][9] = {{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL},{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL},{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL},{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL},{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL}};
                union U0 **l_465 = (void*)0;
                union U0 **l_466 = &l_464;
                int i, j;
                l_462 |= ((safe_add_func_uint32_t_u_u((((safe_add_func_int64_t_s_s(9L, (safe_sub_func_uint32_t_u_u(p_1558->g_235, (l_457 = (l_456 = (((*l_403) = 0x78L) <= (safe_unary_minus_func_int32_t_s(p_85))))))))) < (&p_1558->g_150[3] != l_458)) ^ p_1558->g_283), (p_1558->g_169--))) >= ((p_1558->g_70 , l_461) , p_85));
                for (p_1558->g_321 = 2; (p_1558->g_321 >= 0); p_1558->g_321 -= 1)
                { /* block id: 199 */
                    for (p_1558->g_178 = 0; (p_1558->g_178 <= 2); p_1558->g_178 += 1)
                    { /* block id: 202 */
                        int i;
                        l_463[2][0] = p_1558->g_286[p_1558->g_321];
                    }
                }
                (*l_466) = l_464;
            }
        }
        p_1558->g_286[2] ^= (safe_div_func_int32_t_s_s((p_1558->g_53 = (safe_unary_minus_func_uint32_t_u(((p_1558->g_150[p_1558->g_157] = ((*l_386) == ((*l_494) |= ((((safe_div_func_int8_t_s_s(((*l_403) = p_85), (safe_rshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1558->local_1_offset, get_local_id(1), 10), (safe_lshift_func_uint8_t_u_s(0UL, 6)))), 0)))) <= (safe_mod_func_int16_t_s_s((((p_85 || (safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((safe_rshift_func_int8_t_s_s(p_1558->g_216[3], (GROUP_DIVERGE(1, 1) ^ (safe_sub_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s((((*l_386) , 0x18L) <= (safe_sub_func_uint8_t_u_u((((*l_492) = p_1558->g_490) == &l_95), 0x64L))), 15)) || p_85), 8UL))))) , 1UL)))) > (*l_386)) , l_493[4][1]), p_1558->g_278))) != p_85) ^ 0L)))) >= p_1558->g_9)))), 9L));
        for (p_1558->g_169 = 3; (p_1558->g_169 <= 8); p_1558->g_169 += 1)
        { /* block id: 217 */
            int16_t l_498 = 0x4CA4L;
            int32_t l_521 = 0x534D6E84L;
            int16_t l_590 = (-1L);
            int8_t l_648 = 1L;
            uint16_t *l_665 = &l_642;
            int32_t *l_695 = &l_521;
            int i;
            if (l_495)
                break;
        }
    }
    return p_85;
}


/* ------------------------------------------ */
/* 
 * reads : p_1558->g_96 p_1558->g_114 p_1558->g_115 p_1558->g_17 p_1558->g_53 p_1558->g_131 p_1558->g_5 p_1558->g_69 p_1558->g_154 p_1558->g_115.f0 p_1558->g_169 p_1558->g_12 p_1558->g_104.f3 p_1558->g_9 p_1558->g_178 p_1558->g_216 p_1558->g_150 p_1558->g_235 p_1558->g_70 p_1558->g_157 p_1558->g_286
 * writes: p_1558->g_96 p_1558->g_53 p_1558->g_70 p_1558->g_69 p_1558->g_131 p_1558->g_5 p_1558->g_104.f3 p_1558->g_150 p_1558->g_154 p_1558->g_157 p_1558->g_169 p_1558->g_178 p_1558->g_179 p_1558->g_216 p_1558->g_17 p_1558->g_235 p_1558->g_283 p_1558->g_286 p_1558->g_278 p_1558->g_307
 */
int32_t  func_91(int8_t * p_92, int8_t * p_93, int32_t * p_94, struct S2 * p_1558)
{ /* block id: 23 */
    uint64_t l_100 = 18446744073709551615UL;
    union U1 *l_105 = &p_1558->g_106;
    int32_t l_111[8][4] = {{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL}};
    int32_t l_208 = 0x268D69DEL;
    uint16_t *l_213 = &p_1558->g_157;
    int64_t *l_276 = &p_1558->g_275;
    int8_t l_320 = 0x3FL;
    int i, j;
    for (p_1558->g_96 = 0; (p_1558->g_96 > 56); p_1558->g_96 = safe_add_func_int8_t_s_s(p_1558->g_96, 9))
    { /* block id: 26 */
        union U1 *l_103 = &p_1558->g_104;
        int32_t l_133 = (-1L);
        uint64_t *l_134 = &p_1558->g_96;
        union U0 l_172 = {7UL};
        uint16_t *l_214 = &p_1558->g_157;
        int32_t l_291[7] = {0x68EFFDFDL,0x089CFB0AL,0x68EFFDFDL,0x68EFFDFDL,0x089CFB0AL,0x68EFFDFDL,0x68EFFDFDL};
        int32_t *l_303[7][10] = {{&p_1558->g_53,(void*)0,(void*)0,&p_1558->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_1558->g_12,&l_133},{&p_1558->g_53,(void*)0,(void*)0,&p_1558->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_1558->g_12,&l_133},{&p_1558->g_53,(void*)0,(void*)0,&p_1558->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_1558->g_12,&l_133},{&p_1558->g_53,(void*)0,(void*)0,&p_1558->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_1558->g_12,&l_133},{&p_1558->g_53,(void*)0,(void*)0,&p_1558->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_1558->g_12,&l_133},{&p_1558->g_53,(void*)0,(void*)0,&p_1558->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_1558->g_12,&l_133},{&p_1558->g_53,(void*)0,(void*)0,&p_1558->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_1558->g_12,&l_133}};
        uint16_t l_323 = 0UL;
        int32_t l_326 = 4L;
        int i, j;
        if (l_100)
            break;
        for (p_1558->g_53 = 0; (p_1558->g_53 != (-11)); p_1558->g_53 = safe_sub_func_uint64_t_u_u(p_1558->g_53, 8))
        { /* block id: 30 */
            union U1 *l_116 = &p_1558->g_117;
            int32_t l_128 = (-4L);
            int16_t *l_151 = &p_1558->g_5[3];
            int64_t *l_166[4] = {&p_1558->g_131[1],&p_1558->g_131[1],&p_1558->g_131[1],&p_1558->g_131[1]};
            int32_t l_212[7][2] = {{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L}};
            uint8_t l_236 = 254UL;
            int64_t l_297 = 0x50FCE14DB3FF0B44L;
            int8_t l_299 = 0x4EL;
            int i, j;
            l_105 = l_103;
            for (p_1558->g_70 = (-7); (p_1558->g_70 > 19); p_1558->g_70 = safe_add_func_int64_t_s_s(p_1558->g_70, 9))
            { /* block id: 34 */
                int32_t *l_110 = (void*)0;
                int32_t **l_109 = &l_110;
                int64_t *l_129 = (void*)0;
                int64_t *l_130 = &p_1558->g_131[1];
                int16_t *l_132 = &p_1558->g_5[1];
                uint32_t l_280 = 4294967291UL;
                int32_t l_293 = 0x09A84692L;
                int32_t l_294 = 0L;
                int32_t l_298[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_298[i] = 0x7ABC6312L;
                (*l_109) = &p_1558->g_53;
                if (l_111[0][2])
                    continue;
                if ((safe_rshift_func_int16_t_s_s((((*p_92) = (p_1558->g_114 != (p_1558->g_115 , l_116))) < (((((((l_133 = (safe_sub_func_int16_t_s_s(((p_1558->g_96 , (safe_add_func_int16_t_s_s(((*l_132) = (0L && (((*l_130) |= ((((safe_sub_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((l_128 | p_1558->g_17), (0L | l_111[0][2]))), l_100)), l_111[0][2])) > l_128) != (**l_109)) & 0x45L)) >= 0x2F772B8ADFEA0260L))), l_133))) && 0x3A7432CFE06C7929L), 0xDC7DL))) && p_1558->g_5[4]) >= p_1558->g_53) || (*l_110)) , l_128) , l_134) != l_129)), 7)))
                { /* block id: 41 */
                    int32_t l_143 = (-4L);
                    union U0 l_146 = {0xA1FF75AEL};
                    uint8_t *l_149[2][6] = {{&p_1558->g_150[8],&p_1558->g_150[3],&p_1558->g_150[8],&p_1558->g_150[8],&p_1558->g_150[3],&p_1558->g_150[8]},{&p_1558->g_150[8],&p_1558->g_150[3],&p_1558->g_150[8],&p_1558->g_150[8],&p_1558->g_150[3],&p_1558->g_150[8]}};
                    int16_t *l_152 = &p_1558->g_5[1];
                    int8_t *l_153[1];
                    int32_t l_177 = 0L;
                    uint64_t *l_192 = (void*)0;
                    uint64_t *l_193 = &p_1558->g_104.f3;
                    union U1 *l_196 = &p_1558->g_197;
                    int64_t *l_209 = &p_1558->g_106.f1;
                    int64_t *l_210 = &p_1558->g_197.f1;
                    int64_t *l_211 = &p_1558->g_104.f1;
                    int32_t *l_215 = &l_143;
                    uint32_t *l_217 = &p_1558->g_169;
                    int32_t *l_218 = (void*)0;
                    int32_t *l_219 = &l_133;
                    int32_t *l_220 = &l_177;
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_153[i] = (void*)0;
                    if (((((safe_sub_func_uint8_t_u_u(l_111[2][0], (*p_92))) && 7UL) >= (safe_lshift_func_int8_t_s_s((p_1558->g_154[1][5] &= ((safe_lshift_func_int16_t_s_u(((~(safe_rshift_func_int8_t_s_s((l_143 < (safe_div_func_uint16_t_u_u(l_128, (((((&p_1558->g_69[0] == (((l_146 , ((((((p_1558->g_150[3] = ((p_1558->g_104.f3 = ((l_143 , ((safe_sub_func_uint16_t_u_u(l_146.f0, l_128)) & p_1558->g_131[1])) , l_111[5][0])) < l_111[2][1])) >= p_1558->g_17) > l_128) , (void*)0) == &p_94) | (*l_110))) || l_146.f0) , (void*)0)) < l_146.f0) , l_151) != l_152) & p_1558->g_69[0])))), 1))) & 0x77E7L), p_1558->g_17)) != 0UL)), 2))) && p_1558->g_131[1]))
                    { /* block id: 45 */
                        int32_t *l_155 = &l_143;
                        uint16_t *l_156[4] = {&p_1558->g_157,&p_1558->g_157,&p_1558->g_157,&p_1558->g_157};
                        int64_t **l_167 = &l_129;
                        uint32_t *l_168 = &p_1558->g_169;
                        int i;
                        (*l_155) = l_146.f0;
                        if (l_133)
                            continue;
                        (*l_109) = p_94;
                        (*l_155) = ((p_1558->g_179[0][1] = ((((p_1558->g_157 = (*l_155)) | (safe_sub_func_uint16_t_u_u((((safe_mod_func_uint64_t_u_u(((*l_155) , (safe_sub_func_int32_t_s_s((p_1558->g_115.f0 & (safe_mul_func_int8_t_s_s((((*l_155) < (((l_166[1] != ((*l_167) = l_134)) > (--(*l_168))) ^ GROUP_DIVERGE(1, 1))) , (l_172 , p_1558->g_12)), (((p_1558->g_178 = ((l_177 = (((safe_mod_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((*p_92) = (4294967291UL <= p_1558->g_115.f0)), 9UL)), 1L)) , l_146.f0) , p_1558->g_69[0])) , 0UL)) && p_1558->g_154[1][5]) != l_143)))), p_1558->g_115.f0))), l_111[0][2])) , p_1558->g_115.f0) , 0x6ACAL), l_133))) || l_172.f0) , &p_1558->g_5[4])) != &p_1558->g_5[3]);
                    }
                    else
                    { /* block id: 57 */
                        return (*l_110);
                    }
                    (*l_220) ^= ((*l_219) = (safe_mul_func_int16_t_s_s((GROUP_DIVERGE(0, 1) , l_133), (safe_div_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(((*l_217) = (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((p_1558->g_150[3] = ((l_111[7][0] | ((--(*l_193)) , (p_1558->g_216[3] = ((*l_215) = (l_196 != ((safe_add_func_uint16_t_u_u(((l_196 != (void*)0) || ((safe_div_func_uint64_t_u_u(18446744073709551608UL, (((safe_add_func_int32_t_s_s((((0x36F8L | p_1558->g_9) || ((((l_212[2][1] &= (safe_lshift_func_uint8_t_u_u((safe_div_func_int16_t_s_s((((l_208 = (+((l_172.f0 | 65535UL) <= p_1558->g_154[1][5]))) || l_100) && 0x335AL), l_133)), 6))) , l_213) == l_214) , l_146.f0)) > p_1558->g_154[0][5]), 0xE1D0A500L)) < 0x7DL) , p_1558->g_12))) , l_212[6][1])), l_146.f0)) , l_196)))))) != l_111[2][0])), GROUP_DIVERGE(2, 1))), 1)) && 0x29L), l_128))), FAKE_DIVERGE(p_1558->global_0_offset, get_global_id(0), 10))), 1L)))));
                }
                else
                { /* block id: 69 */
                    int32_t **l_224 = &l_110;
                    int32_t l_287 = (-6L);
                    int32_t l_292 = (-1L);
                    int32_t l_295 = 0x7047D995L;
                    int32_t l_296[6][5] = {{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L}};
                    int i, j;
                    for (p_1558->g_178 = 0; (p_1558->g_178 <= 1); p_1558->g_178 += 1)
                    { /* block id: 72 */
                        int32_t l_225 = 0x070758ACL;
                        int8_t *l_234 = &p_1558->g_17;
                        int i;
                        (*l_109) = &p_1558->g_9;
                        p_1558->g_235 = (safe_mul_func_int8_t_s_s(p_1558->g_131[p_1558->g_178], ((safe_unary_minus_func_uint32_t_u((l_212[2][1] = FAKE_DIVERGE(p_1558->local_1_offset, get_local_id(1), 10)))) || ((((((l_224 == (void*)0) < (l_225 ^= p_1558->g_5[(p_1558->g_178 + 1)])) > (safe_div_func_int8_t_s_s((safe_add_func_int8_t_s_s(((*l_234) |= (safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(((0xA9L == (0x0A11L & ((p_1558->g_69[p_1558->g_178] & 0x2E5DL) , p_1558->g_69[p_1558->g_178]))) ^ l_128), 13)), 4))), 0xEDL)), p_1558->g_12))) == GROUP_DIVERGE(2, 1)) , p_1558->g_5[(p_1558->g_178 + 2)]) , 65535UL))));
                        l_236 = p_1558->g_69[0];
                    }
                    if ((safe_unary_minus_func_int32_t_s(l_128)))
                    { /* block id: 80 */
                        uint64_t *l_250 = (void*)0;
                        uint64_t *l_251 = &l_100;
                        int64_t *l_274[9] = {&p_1558->g_275,&p_1558->g_275,&p_1558->g_275,&p_1558->g_275,&p_1558->g_275,&p_1558->g_275,&p_1558->g_275,&p_1558->g_275,&p_1558->g_275};
                        int64_t **l_273 = &l_274[0];
                        int16_t *l_277[7] = {&p_1558->g_278,&p_1558->g_278,&p_1558->g_278,&p_1558->g_278,&p_1558->g_278,&p_1558->g_278,&p_1558->g_278};
                        int32_t l_279 = (-7L);
                        uint8_t *l_281 = &p_1558->g_235;
                        uint32_t *l_282 = &p_1558->g_169;
                        int32_t l_284[7][4] = {{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L}};
                        int32_t *l_285[4];
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_285[i] = &p_1558->g_286[2];
                        l_287 |= (((((*p_92) = (p_1558->g_17 |= ((p_1558->g_216[1] != (safe_mul_func_uint16_t_u_u(((((0x0F9E0A5FCD0D6B2CL & (safe_add_func_uint16_t_u_u((!(safe_add_func_uint64_t_u_u(0xD76B04D158891A74L, (safe_lshift_func_uint16_t_u_s(((0xB8A72973L && (((p_1558->g_283 = ((*l_282) &= (safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((((*l_251) &= 0xA24BEC2C41774F4BL) || ((safe_add_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((*l_281) ^= ((safe_lshift_func_uint16_t_u_s(((safe_sub_func_uint64_t_u_u((l_111[0][2] = ((FAKE_DIVERGE(p_1558->group_0_offset, get_group_id(0), 10) < (safe_mod_func_int64_t_s_s(((safe_div_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(((safe_unary_minus_func_int64_t_s(((((0x24B0658D7BDA1314L == ((*l_130) = (safe_mul_func_int16_t_s_s(((*l_151) = 5L), ((p_1558->g_216[1] , (safe_mul_func_int16_t_s_s((l_279 = (((*l_273) = l_166[1]) == l_276)), (*l_110)))) <= (**l_224)))))) && (-2L)) > (*l_110)) <= l_133))) , p_1558->g_154[1][4]), p_1558->g_150[1])), l_280)) > p_1558->g_150[4]), p_1558->g_69[1]))) | (-9L))), l_100)) >= FAKE_DIVERGE(p_1558->global_2_offset, get_global_id(2), 10)), 10)) && (**l_224))), 0x54L)), p_1558->g_70)) || 0UL)), (*l_110))), l_212[2][1])))) == 4294967287UL) && l_279)) , 1UL), l_284[0][0]))))), l_208))) > GROUP_DIVERGE(2, 1)) & 0xFDL) >= l_208), 0UL))) | (**l_224)))) >= FAKE_DIVERGE(p_1558->group_2_offset, get_group_id(2), 10)) , p_1558->g_115.f0) == 0x31L);
                    }
                    else
                    { /* block id: 93 */
                        int16_t l_288 = 1L;
                        int32_t l_289 = 0x52DB29B3L;
                        int32_t *l_290[7] = {&l_111[6][0],&l_111[6][3],&l_111[6][0],&l_111[6][0],&l_111[6][3],&l_111[6][0],&l_111[6][0]};
                        uint32_t l_300 = 4294967295UL;
                        int i;
                        l_288 &= (**l_224);
                        p_1558->g_286[1] = l_288;
                        l_300++;
                    }
                }
            }
        }
        l_303[0][7] = (void*)0;
        for (p_1558->g_278 = (-25); (p_1558->g_278 < 22); p_1558->g_278 = safe_add_func_uint32_t_u_u(p_1558->g_278, 8))
        { /* block id: 104 */
            int32_t **l_306 = (void*)0;
            union U0 l_314[2][4] = {{{0xEC370606L},{0x169B05E9L},{0xEC370606L},{0xEC370606L}},{{0xEC370606L},{0x169B05E9L},{0xEC370606L},{0xEC370606L}}};
            int32_t l_319 = 0x5E127DB2L;
            int32_t l_322 = (-2L);
            int i, j;
            p_1558->g_307 = p_94;
            p_1558->g_286[2] ^= (((void*)0 == &p_1558->g_150[6]) && ((safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s((l_111[0][2] ^ l_208), ((l_314[0][2] , (p_1558->g_157--)) & (-1L)))), ((l_100 != 7UL) ^ (+(safe_rshift_func_uint8_t_u_s(6UL, l_100)))))), 1L)) & 0x448EL));
            l_323++;
            l_326 = p_1558->g_150[0];
        }
    }
    return l_100;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_1559;
    struct S2* p_1558 = &c_1559;
    struct S2 c_1560 = {
        0x54EA6801L, // p_1558->g_2
        {7L,0x594BL,7L,7L,0x594BL,7L,7L}, // p_1558->g_5
        {0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L}, // p_1558->g_6
        (-1L), // p_1558->g_7
        (-2L), // p_1558->g_8
        0L, // p_1558->g_9
        0x15761BE3L, // p_1558->g_11
        0x65741311L, // p_1558->g_12
        0x29L, // p_1558->g_17
        0x1CDE89C6L, // p_1558->g_53
        {0x57L,0x57L}, // p_1558->g_69
        0x9421A0E5L, // p_1558->g_70
        0x0705E7732C352423L, // p_1558->g_96
        {0}, // p_1558->g_104
        {0}, // p_1558->g_106
        (void*)0, // p_1558->g_114
        {3UL}, // p_1558->g_115
        {0}, // p_1558->g_117
        {2L,2L}, // p_1558->g_131
        {0UL,0x91L,0UL,0UL,0x91L,0UL,0UL,0x91L,0UL}, // p_1558->g_150
        {{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L}}, // p_1558->g_154
        0xE9D5L, // p_1558->g_157
        0x02F2754EL, // p_1558->g_169
        0x7C90A92FL, // p_1558->g_178
        {{&p_1558->g_5[2],&p_1558->g_5[0],&p_1558->g_5[1]},{&p_1558->g_5[2],&p_1558->g_5[0],&p_1558->g_5[1]},{&p_1558->g_5[2],&p_1558->g_5[0],&p_1558->g_5[1]},{&p_1558->g_5[2],&p_1558->g_5[0],&p_1558->g_5[1]},{&p_1558->g_5[2],&p_1558->g_5[0],&p_1558->g_5[1]},{&p_1558->g_5[2],&p_1558->g_5[0],&p_1558->g_5[1]},{&p_1558->g_5[2],&p_1558->g_5[0],&p_1558->g_5[1]},{&p_1558->g_5[2],&p_1558->g_5[0],&p_1558->g_5[1]}}, // p_1558->g_179
        {0}, // p_1558->g_197
        {4294967286UL,4294967286UL,4294967286UL,4294967286UL}, // p_1558->g_216
        0x74L, // p_1558->g_235
        (-10L), // p_1558->g_275
        0x6AC8L, // p_1558->g_278
        (-7L), // p_1558->g_283
        {0L,0L,0L}, // p_1558->g_286
        (void*)0, // p_1558->g_307
        0x6EL, // p_1558->g_321
        0x26EBL, // p_1558->g_327
        65529UL, // p_1558->g_345
        0x27D5EBDEL, // p_1558->g_374
        65535UL, // p_1558->g_385
        {0}, // p_1558->g_427
        &p_1558->g_96, // p_1558->g_491
        &p_1558->g_491, // p_1558->g_490
        8UL, // p_1558->g_551
        {0}, // p_1558->g_583
        {{{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}}}}, // p_1558->g_602
        0x3CCEL, // p_1558->g_641
        &p_1558->g_157, // p_1558->g_709
        &p_1558->g_709, // p_1558->g_708
        {{255UL},{255UL},{255UL},{255UL}}, // p_1558->g_728
        0x2EF2A58EL, // p_1558->g_742
        4L, // p_1558->g_744
        {{0x322214866651B048L,0x6815B61A18E34519L,1L,0x6815B61A18E34519L,0x322214866651B048L,0x322214866651B048L,0x6815B61A18E34519L},{0x322214866651B048L,0x6815B61A18E34519L,1L,0x6815B61A18E34519L,0x322214866651B048L,0x322214866651B048L,0x6815B61A18E34519L},{0x322214866651B048L,0x6815B61A18E34519L,1L,0x6815B61A18E34519L,0x322214866651B048L,0x322214866651B048L,0x6815B61A18E34519L},{0x322214866651B048L,0x6815B61A18E34519L,1L,0x6815B61A18E34519L,0x322214866651B048L,0x322214866651B048L,0x6815B61A18E34519L}}, // p_1558->g_746
        {&p_1558->g_286[1]}, // p_1558->g_766
        &p_1558->g_490, // p_1558->g_819
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1558->g_881
        &p_1558->g_881[3], // p_1558->g_880
        {(void*)0,&p_1558->g_880,(void*)0,(void*)0,&p_1558->g_880,(void*)0,(void*)0,&p_1558->g_880}, // p_1558->g_879
        &p_1558->g_491, // p_1558->g_902
        &p_1558->g_902, // p_1558->g_901
        {{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901},{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901},{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901},{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901},{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901},{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901},{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901},{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901},{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901},{&p_1558->g_901,&p_1558->g_901,&p_1558->g_901}}, // p_1558->g_900
        (void*)0, // p_1558->g_921
        {0}, // p_1558->g_955
        {{0}}, // p_1558->g_957
        &p_1558->g_957[0], // p_1558->g_956
        {{0},{0},{0},{0},{0}}, // p_1558->g_967
        {{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}}}, // p_1558->g_968
        {0}, // p_1558->g_969
        {0}, // p_1558->g_973
        {0x8E323DAEL,9UL,0x8E323DAEL,0x8E323DAEL,9UL,0x8E323DAEL}, // p_1558->g_993
        0x543A683AL, // p_1558->g_1022
        {1L,0x2FL,1L,1L,0x2FL,1L,1L,0x2FL,1L,1L}, // p_1558->g_1048
        1UL, // p_1558->g_1403
        {{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}}}, // p_1558->g_1457
        &p_1558->g_150[3], // p_1558->g_1491
        &p_1558->g_1491, // p_1558->g_1490
        &p_1558->g_1490, // p_1558->g_1489
        (void*)0, // p_1558->g_1521
        0x70L, // p_1558->g_1531
        0UL, // p_1558->g_1544
        &p_1558->g_921, // p_1558->g_1547
        &p_1558->g_766[0], // p_1558->g_1548
        0, // p_1558->v_collective
        sequence_input[get_global_id(0)], // p_1558->global_0_offset
        sequence_input[get_global_id(1)], // p_1558->global_1_offset
        sequence_input[get_global_id(2)], // p_1558->global_2_offset
        sequence_input[get_local_id(0)], // p_1558->local_0_offset
        sequence_input[get_local_id(1)], // p_1558->local_1_offset
        sequence_input[get_local_id(2)], // p_1558->local_2_offset
        sequence_input[get_group_id(0)], // p_1558->group_0_offset
        sequence_input[get_group_id(1)], // p_1558->group_1_offset
        sequence_input[get_group_id(2)], // p_1558->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1559 = c_1560;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1558);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1558->g_2, "p_1558->g_2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1558->g_5[i], "p_1558->g_5[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1558->g_6[i], "p_1558->g_6[i]", print_hash_value);

    }
    transparent_crc(p_1558->g_7, "p_1558->g_7", print_hash_value);
    transparent_crc(p_1558->g_8, "p_1558->g_8", print_hash_value);
    transparent_crc(p_1558->g_9, "p_1558->g_9", print_hash_value);
    transparent_crc(p_1558->g_11, "p_1558->g_11", print_hash_value);
    transparent_crc(p_1558->g_12, "p_1558->g_12", print_hash_value);
    transparent_crc(p_1558->g_17, "p_1558->g_17", print_hash_value);
    transparent_crc(p_1558->g_53, "p_1558->g_53", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1558->g_69[i], "p_1558->g_69[i]", print_hash_value);

    }
    transparent_crc(p_1558->g_70, "p_1558->g_70", print_hash_value);
    transparent_crc(p_1558->g_96, "p_1558->g_96", print_hash_value);
    transparent_crc(p_1558->g_115.f0, "p_1558->g_115.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1558->g_131[i], "p_1558->g_131[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1558->g_150[i], "p_1558->g_150[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1558->g_154[i][j], "p_1558->g_154[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1558->g_157, "p_1558->g_157", print_hash_value);
    transparent_crc(p_1558->g_169, "p_1558->g_169", print_hash_value);
    transparent_crc(p_1558->g_178, "p_1558->g_178", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1558->g_216[i], "p_1558->g_216[i]", print_hash_value);

    }
    transparent_crc(p_1558->g_235, "p_1558->g_235", print_hash_value);
    transparent_crc(p_1558->g_275, "p_1558->g_275", print_hash_value);
    transparent_crc(p_1558->g_278, "p_1558->g_278", print_hash_value);
    transparent_crc(p_1558->g_283, "p_1558->g_283", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1558->g_286[i], "p_1558->g_286[i]", print_hash_value);

    }
    transparent_crc(p_1558->g_321, "p_1558->g_321", print_hash_value);
    transparent_crc(p_1558->g_327, "p_1558->g_327", print_hash_value);
    transparent_crc(p_1558->g_345, "p_1558->g_345", print_hash_value);
    transparent_crc(p_1558->g_374, "p_1558->g_374", print_hash_value);
    transparent_crc(p_1558->g_385, "p_1558->g_385", print_hash_value);
    transparent_crc(p_1558->g_551, "p_1558->g_551", print_hash_value);
    transparent_crc(p_1558->g_641, "p_1558->g_641", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1558->g_728[i][j], "p_1558->g_728[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1558->g_742, "p_1558->g_742", print_hash_value);
    transparent_crc(p_1558->g_744, "p_1558->g_744", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1558->g_746[i][j], "p_1558->g_746[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1558->g_993[i], "p_1558->g_993[i]", print_hash_value);

    }
    transparent_crc(p_1558->g_1022, "p_1558->g_1022", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1558->g_1048[i], "p_1558->g_1048[i]", print_hash_value);

    }
    transparent_crc(p_1558->g_1403, "p_1558->g_1403", print_hash_value);
    transparent_crc(p_1558->g_1531, "p_1558->g_1531", print_hash_value);
    transparent_crc(p_1558->g_1544, "p_1558->g_1544", print_hash_value);
    transparent_crc(p_1558->v_collective, "p_1558->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
