// ---atomic_reductions ---fake_divergence -g 47,20,8 -l 1,10,4
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


// Seed: 93

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
};

struct S1 {
    volatile int32_t g_2;
    volatile int32_t g_3[2];
    int32_t g_4;
    int32_t g_7[4];
    uint8_t g_17;
    uint64_t g_31;
    uint64_t g_35[10];
    int32_t g_51;
    uint32_t g_62;
    uint64_t g_88;
    volatile int32_t *g_102;
    volatile int32_t **g_101;
    uint8_t g_124;
    int8_t g_154[2][2];
    int8_t g_156;
    int32_t *g_165;
    int32_t **g_164;
    int64_t g_188;
    uint32_t g_190;
    struct S0 g_234;
    struct S0 * volatile g_233;
    int32_t **** volatile g_248;
    struct S0 * volatile g_265;
    uint16_t g_284[1];
    uint16_t g_297;
    uint8_t *g_303[1];
    uint8_t **g_302[6];
    int32_t ***g_319;
    int32_t ****g_318;
    int32_t ****g_321;
    int8_t g_355[2][5][5];
    int64_t *g_401;
    int64_t **g_400[4];
    int32_t g_435;
    uint16_t g_437;
    volatile uint16_t g_456;
    int32_t *g_516[7][10];
    uint32_t *g_534;
    int16_t g_644;
    uint32_t g_684[8][9][3];
    int16_t g_715;
    int64_t g_718;
    uint8_t *** volatile g_807[6];
    struct S0 g_821;
    struct S0 g_822;
    uint32_t g_823[2][7];
    uint8_t g_856;
    uint64_t g_942;
    int32_t * volatile g_1016;
    int16_t *g_1063;
    int16_t **g_1062[3];
    int16_t *** volatile g_1061;
    volatile uint32_t g_1145;
    volatile uint32_t * volatile g_1144;
    volatile uint32_t * volatile *g_1143[4][7][6];
    volatile uint32_t * volatile **g_1142;
    uint32_t g_1196;
    uint32_t g_1197;
    int8_t *g_1217[9];
    int8_t * volatile *g_1216;
    uint16_t **g_1222;
    uint16_t *** volatile g_1221;
    struct S0 *g_1281;
    struct S0 ** volatile g_1280;
    struct S0 ** volatile * volatile g_1279;
    volatile struct S0 g_1296;
    volatile struct S0 * volatile g_1295;
    volatile struct S0 * volatile *g_1294;
    volatile struct S0 * volatile * volatile *g_1293[10][5][5];
    int32_t g_1416;
    volatile int8_t g_1463;
    int64_t g_1495[5];
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
uint8_t  func_1(struct S1 * p_1505);
int32_t  func_8(uint32_t  p_9, int32_t  p_10, int32_t  p_11, uint16_t  p_12, struct S1 * p_1505);
uint64_t  func_18(uint32_t  p_19, int8_t  p_20, int16_t  p_21, int32_t  p_22, struct S1 * p_1505);
uint32_t  func_23(uint32_t  p_24, struct S1 * p_1505);
int16_t  func_36(int16_t  p_37, struct S1 * p_1505);
uint64_t  func_40(uint8_t  p_41, int16_t  p_42, uint64_t * p_43, uint64_t  p_44, int64_t  p_45, struct S1 * p_1505);
uint64_t * func_47(int32_t  p_48, struct S1 * p_1505);
int64_t  func_68(uint64_t * p_69, struct S1 * p_1505);
int64_t  func_75(uint16_t  p_76, int64_t  p_77, int32_t  p_78, int32_t ** p_79, uint64_t  p_80, struct S1 * p_1505);
int64_t  func_91(int16_t  p_92, int32_t ** p_93, int32_t  p_94, int32_t  p_95, int16_t  p_96, struct S1 * p_1505);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1505->g_4 p_1505->g_2 p_1505->g_31 p_1505->g_1279 p_1505->g_1280 p_1505->g_1281 p_1505->g_164 p_1505->g_165 p_1505->g_821 p_1505->g_1063 p_1505->g_101 p_1505->g_102 p_1505->g_1216 p_1505->g_1217 p_1505->g_1144 p_1505->g_1145 p_1505->g_35 p_1505->g_62 p_1505->g_88 p_1505->g_7 p_1505->g_51 p_1505->g_124 p_1505->g_3 p_1505->g_156 p_1505->g_154 p_1505->g_190 p_1505->g_233 p_1505->g_297 p_1505->g_284 p_1505->g_435 p_1505->g_456 p_1505->g_437 p_1505->g_234.f0 p_1505->g_401 p_1505->g_188 p_1505->g_715 p_1505->g_718 p_1505->g_684 p_1505->g_234 p_1505->g_355 p_1505->g_265 p_1505->g_823 p_1505->g_856 p_1505->g_822.f0 p_1505->g_318 p_1505->g_319 p_1505->g_942 p_1505->g_644 p_1505->g_1142 p_1505->g_1061 p_1505->g_1062 p_1505->g_1221 p_1505->g_1197 p_1505->g_1222 p_1505->g_1293 p_1505->g_1016 p_1505->g_1416 p_1505->g_1463 p_1505->g_1495
 * writes: p_1505->g_4 p_1505->g_2 p_1505->g_7 p_1505->g_17 p_1505->g_31 p_1505->g_318 p_1505->g_165 p_1505->g_1196 p_1505->g_644 p_1505->g_355 p_1505->g_62 p_1505->g_88 p_1505->g_124 p_1505->g_156 p_1505->g_51 p_1505->g_188 p_1505->g_190 p_1505->g_234 p_1505->g_102 p_1505->g_154 p_1505->g_3 p_1505->g_435 p_1505->g_516 p_1505->g_534 p_1505->g_456 p_1505->g_302 p_1505->g_437 p_1505->g_684 p_1505->g_715 p_1505->g_718 p_1505->g_284 p_1505->g_821 p_1505->g_822 p_1505->g_856 p_1505->g_321 p_1505->g_942 p_1505->g_297 p_1505->g_1197 p_1505->g_1222 p_1505->g_35
 */
uint8_t  func_1(struct S1 * p_1505)
{ /* block id: 4 */
    int16_t l_16 = 8L;
    uint8_t l_1405 = 0x7FL;
    struct S0 l_1432[7][2] = {{{0x34773861E8BDD6CAL},{0x34773861E8BDD6CAL}},{{0x34773861E8BDD6CAL},{0x34773861E8BDD6CAL}},{{0x34773861E8BDD6CAL},{0x34773861E8BDD6CAL}},{{0x34773861E8BDD6CAL},{0x34773861E8BDD6CAL}},{{0x34773861E8BDD6CAL},{0x34773861E8BDD6CAL}},{{0x34773861E8BDD6CAL},{0x34773861E8BDD6CAL}},{{0x34773861E8BDD6CAL},{0x34773861E8BDD6CAL}}};
    int32_t l_1438 = (-8L);
    int64_t **l_1452 = &p_1505->g_401;
    int32_t l_1490 = 0x3437166AL;
    int i, j;
    for (p_1505->g_4 = 0; (p_1505->g_4 > (-3)); --p_1505->g_4)
    { /* block id: 7 */
        int32_t l_29 = 0x4512DC6DL;
        uint64_t *l_34 = &p_1505->g_35[7];
        int32_t l_1373 = 0x373F9269L;
        int32_t l_1425 = (-1L);
        int32_t *l_1434 = (void*)0;
        struct S0 **l_1462 = &p_1505->g_1281;
        int64_t **l_1464[5][5] = {{&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401},{&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401},{&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401},{&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401},{&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401}};
        int i, j;
        p_1505->g_2 |= (-10L);
        for (p_1505->g_7[0] = 1; (p_1505->g_7[0] >= 0); p_1505->g_7[0] -= 1)
        { /* block id: 11 */
            uint64_t l_13 = 0x2BFBD3AEB59008CFL;
            uint64_t *l_30 = &p_1505->g_31;
            int32_t l_1401 = 0x2737B108L;
            int32_t l_1404 = 0x5DA4A6D5L;
            int32_t l_1478 = 4L;
            if (func_8((l_13 && (safe_rshift_func_int8_t_s_u((p_1505->g_17 = (l_13 & l_16)), (0x0B92280643B8A277L > (+func_18(func_23((safe_add_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((FAKE_DIVERGE(p_1505->local_1_offset, get_local_id(1), 10) >= (++(*l_30))), (l_34 == &p_1505->g_35[7]))), l_16)), p_1505), l_1373, l_13, l_29, p_1505)))))), p_1505->g_823[0][6], l_29, p_1505->g_823[0][6], p_1505))
            { /* block id: 715 */
                uint64_t l_1421 = 2UL;
                int16_t *l_1424[7] = {&p_1505->g_715,&p_1505->g_715,&p_1505->g_715,&p_1505->g_715,&p_1505->g_715,&p_1505->g_715,&p_1505->g_715};
                uint32_t *l_1430 = (void*)0;
                uint32_t *l_1431 = &p_1505->g_190;
                int32_t l_1481 = (-3L);
                int32_t l_1485 = 0L;
                uint16_t l_1492[9][4] = {{0x9810L,0x04DAL,6UL,0x1305L},{0x9810L,0x04DAL,6UL,0x1305L},{0x9810L,0x04DAL,6UL,0x1305L},{0x9810L,0x04DAL,6UL,0x1305L},{0x9810L,0x04DAL,6UL,0x1305L},{0x9810L,0x04DAL,6UL,0x1305L},{0x9810L,0x04DAL,6UL,0x1305L},{0x9810L,0x04DAL,6UL,0x1305L},{0x9810L,0x04DAL,6UL,0x1305L}};
                int i, j;
                for (p_1505->g_822.f0 = 0; (p_1505->g_822.f0 <= 1); p_1505->g_822.f0 += 1)
                { /* block id: 718 */
                    int8_t **l_1412 = &p_1505->g_1217[3];
                    for (l_16 = 0; (l_16 <= 1); l_16 += 1)
                    { /* block id: 721 */
                        (*p_1505->g_164) = (void*)0;
                        if (l_1401)
                            break;
                    }
                    for (p_1505->g_435 = 1; (p_1505->g_435 >= 0); p_1505->g_435 -= 1)
                    { /* block id: 727 */
                        int8_t ***l_1413 = &l_1412;
                        int32_t l_1419[9];
                        uint32_t *l_1420 = &p_1505->g_190;
                        int i;
                        for (i = 0; i < 9; i++)
                            l_1419[i] = (-1L);
                        p_1505->g_3[p_1505->g_435] |= (l_13 || (safe_mul_func_int16_t_s_s(l_1401, l_1404)));
                        if ((*p_1505->g_1016))
                            break;
                        if (l_16)
                            break;
                        (*p_1505->g_102) = (((l_1405 && ((((safe_sub_func_uint64_t_u_u(p_1505->g_684[0][8][0], (safe_lshift_func_int8_t_s_u((-1L), (safe_div_func_int16_t_s_s((((&p_1505->g_1217[2] == ((*l_1413) = l_1412)) , (safe_sub_func_int16_t_s_s((***p_1505->g_1061), (~((p_1505->g_1416 && 0x4FL) != (((*l_1420) = ((safe_lshift_func_int16_t_s_s(l_1419[1], l_1373)) <= l_1401)) ^ l_1419[1])))))) & 0x8AABCEB4L), 0x26BBL)))))) && l_1421) != 1UL) != l_29)) & 0x35098B50L) && FAKE_DIVERGE(p_1505->local_0_offset, get_local_id(0), 10));
                    }
                }
                if (((safe_div_func_uint32_t_u_u((l_1404 = (l_29 = ((l_16 || (***p_1505->g_1061)) && (l_16 && 0x9480L)))), l_13)) | (((l_1425 |= l_16) < 0x6799L) , (((safe_mod_func_uint32_t_u_u(l_1405, ((*l_1431) = (safe_add_func_uint32_t_u_u(((&p_1505->g_1217[2] != (void*)0) < 0L), p_1505->g_822.f0))))) < l_16) < GROUP_DIVERGE(2, 1)))))
                { /* block id: 740 */
                    uint32_t l_1435[7][8] = {{0xB5B94F3DL,4294967295UL,0x456A4065L,0xB5B94F3DL,0xE02DBC93L,0x456A4065L,0x456A4065L,0xE02DBC93L},{0xB5B94F3DL,4294967295UL,0x456A4065L,0xB5B94F3DL,0xE02DBC93L,0x456A4065L,0x456A4065L,0xE02DBC93L},{0xB5B94F3DL,4294967295UL,0x456A4065L,0xB5B94F3DL,0xE02DBC93L,0x456A4065L,0x456A4065L,0xE02DBC93L},{0xB5B94F3DL,4294967295UL,0x456A4065L,0xB5B94F3DL,0xE02DBC93L,0x456A4065L,0x456A4065L,0xE02DBC93L},{0xB5B94F3DL,4294967295UL,0x456A4065L,0xB5B94F3DL,0xE02DBC93L,0x456A4065L,0x456A4065L,0xE02DBC93L},{0xB5B94F3DL,4294967295UL,0x456A4065L,0xB5B94F3DL,0xE02DBC93L,0x456A4065L,0x456A4065L,0xE02DBC93L},{0xB5B94F3DL,4294967295UL,0x456A4065L,0xB5B94F3DL,0xE02DBC93L,0x456A4065L,0x456A4065L,0xE02DBC93L}};
                    int32_t l_1491 = (-6L);
                    int i, j;
                    if ((**p_1505->g_101))
                    { /* block id: 741 */
                        int32_t *l_1433 = &p_1505->g_4;
                        l_1434 = (l_1432[4][1] , l_1433);
                        (*p_1505->g_102) = (((((*p_1505->g_401) = l_1435[1][0]) < (0x3B8CL >= ((safe_sub_func_int32_t_s_s((GROUP_DIVERGE(2, 1) , (8L == (!l_1438))), (safe_mul_func_int16_t_s_s((l_1401 , (((l_1401 , &p_1505->g_319) == (void*)0) != (*p_1505->g_1016))), FAKE_DIVERGE(p_1505->group_1_offset, get_group_id(1), 10))))) <= (*p_1505->g_1063)))) , 0xDA24AF44L) <= 0x439C489AL);
                        (*p_1505->g_164) = l_1431;
                        if ((*l_1434))
                            break;
                    }
                    else
                    { /* block id: 747 */
                        uint32_t l_1451 = 0x46ADE41BL;
                        struct S0 **l_1461 = &p_1505->g_1281;
                        int32_t l_1465 = (-1L);
                        uint16_t *l_1479[9] = {(void*)0,&p_1505->g_297,(void*)0,(void*)0,&p_1505->g_297,(void*)0,(void*)0,&p_1505->g_297,(void*)0};
                        uint32_t *l_1480 = &p_1505->g_1196;
                        int32_t *l_1482 = &l_1425;
                        int i;
                        (*p_1505->g_102) = (safe_add_func_int16_t_s_s((((((*p_1505->g_401) & p_1505->g_154[0][0]) && ((safe_div_func_uint64_t_u_u(((*l_34) &= (~(0xEB9582D36EB2325FL < (safe_sub_func_uint8_t_u_u((((*p_1505->g_401) | ((safe_add_func_uint32_t_u_u((safe_add_func_int8_t_s_s(((l_1451 |= 0x4AC349AADF1F6851L) != ((((l_1452 != (((safe_lshift_func_int8_t_s_u(0x18L, ((((safe_rshift_func_int16_t_s_u((safe_sub_func_uint64_t_u_u(0x1DB67DEA573643A6L, ((safe_lshift_func_uint16_t_u_s((l_1461 == l_1462), (*p_1505->g_1063))) < 0x1A2BL))), FAKE_DIVERGE(p_1505->group_2_offset, get_group_id(2), 10))) | l_1421) < l_1405) | (*p_1505->g_102)))) , p_1505->g_1463) , l_1464[1][1])) , p_1505->g_31) , p_1505->g_1197) > p_1505->g_822.f0)), 0x4CL)), p_1505->g_88)) , 3L)) & 0x53C9L), FAKE_DIVERGE(p_1505->local_2_offset, get_local_id(2), 10)))))), l_1435[1][0])) , (**p_1505->g_101))) == l_1465) < 0UL), l_1435[2][3]));
                        (*l_1482) ^= ((0x1EL == ((l_1432[4][1].f0 , &l_1421) == (void*)0)) ^ (safe_mul_func_int16_t_s_s((*p_1505->g_1063), (safe_lshift_func_uint16_t_u_u(((((***p_1505->g_1061) && (safe_mod_func_int32_t_s_s((*p_1505->g_1016), ((((safe_sub_func_int8_t_s_s(((((*l_1480) = (l_1438 >= (+(p_1505->g_297 = (((((**p_1505->g_1216) = (-5L)) , l_1478) , l_1404) || l_1421))))) , l_1421) ^ 0x18L), GROUP_DIVERGE(0, 1))) || 0x70A94455L) , l_1481) | 0UL)))) == 0x6FL) || l_1435[1][0]), 0)))));
                        (*p_1505->g_1281) = (**l_1462);
                    }
                    for (l_1438 = 0; (l_1438 <= 29); l_1438++)
                    { /* block id: 759 */
                        int32_t *l_1486 = (void*)0;
                        int32_t *l_1487 = &l_29;
                        int32_t *l_1488 = &p_1505->g_51;
                        int32_t *l_1489[3][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int i, j;
                        ++l_1492[5][2];
                        return p_1505->g_1495[3];
                    }
                    return l_1435[4][6];
                }
                else
                { /* block id: 764 */
                    (*p_1505->g_102) |= 0x7FBB4428L;
                    for (p_1505->g_31 = 0; p_1505->g_31 < 8; p_1505->g_31 += 1)
                    {
                        for (p_1505->g_2 = 0; p_1505->g_2 < 9; p_1505->g_2 += 1)
                        {
                            for (p_1505->g_435 = 0; p_1505->g_435 < 3; p_1505->g_435 += 1)
                            {
                                p_1505->g_684[p_1505->g_31][p_1505->g_2][p_1505->g_435] = 4294967290UL;
                            }
                        }
                    }
                }
            }
            else
            { /* block id: 768 */
                int32_t *l_1496[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_1496[i] = &l_1425;
                l_1425 &= (**p_1505->g_101);
            }
        }
        for (l_1438 = 23; (l_1438 < 29); l_1438 = safe_add_func_int32_t_s_s(l_1438, 7))
        { /* block id: 774 */
            uint8_t l_1499 = 1UL;
            int32_t *l_1500 = &l_1425;
            uint16_t *l_1501 = &p_1505->g_284[0];
            int64_t l_1504 = 1L;
            (**p_1505->g_101) &= l_1499;
            (*l_1500) |= (GROUP_DIVERGE(2, 1) != (l_1490 , (***p_1505->g_1061)));
            (**p_1505->g_101) = (((++(*l_1501)) | (*p_1505->g_1063)) == (p_1505->g_190 = l_1504));
            (*p_1505->g_164) = (*p_1505->g_164);
        }
        (**l_1462) = (**l_1462);
    }
    return l_1405;
}


/* ------------------------------------------ */
/* 
 * reads : p_1505->g_164 p_1505->g_1063 p_1505->g_101 p_1505->g_102 p_1505->g_2 p_1505->g_35 p_1505->g_188
 * writes: p_1505->g_165 p_1505->g_644 p_1505->g_2 p_1505->g_188
 */
int32_t  func_8(uint32_t  p_9, int32_t  p_10, int32_t  p_11, uint16_t  p_12, struct S1 * p_1505)
{ /* block id: 689 */
    int32_t *l_1390 = (void*)0;
    (*p_1505->g_164) = l_1390;
    for (p_12 = (-13); (p_12 == 59); p_12 = safe_add_func_uint8_t_u_u(p_12, 9))
    { /* block id: 693 */
        uint32_t l_1393 = 0x0315202DL;
        struct S0 l_1398 = {0x368380E579E17BC1L};
        ++l_1393;
        for (p_11 = 6; (p_11 <= (-20)); p_11 = safe_sub_func_uint32_t_u_u(p_11, 2))
        { /* block id: 697 */
            l_1398 = l_1398;
            (**p_1505->g_101) ^= ((p_12 & p_11) || ((*p_1505->g_1063) = p_10));
            for (p_10 = 0; (p_10 <= 9); p_10 += 1)
            { /* block id: 703 */
                int i;
                return p_1505->g_35[p_10];
            }
            l_1390 = (void*)0;
        }
        for (p_1505->g_188 = (-3); (p_1505->g_188 != (-3)); p_1505->g_188++)
        { /* block id: 710 */
            (*p_1505->g_164) = l_1390;
        }
    }
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1505->g_51
 * writes: p_1505->g_51
 */
uint64_t  func_18(uint32_t  p_19, int8_t  p_20, int16_t  p_21, int32_t  p_22, struct S1 * p_1505)
{ /* block id: 680 */
    int32_t *l_1374 = &p_1505->g_51;
    int32_t *l_1375 = &p_1505->g_51;
    int32_t *l_1376 = &p_1505->g_51;
    int32_t *l_1377 = &p_1505->g_51;
    int32_t *l_1378 = &p_1505->g_51;
    int32_t *l_1379[8][9] = {{&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_51,&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_51},{&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_51,&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_51},{&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_51,&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_51},{&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_51,&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_51},{&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_51,&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_51},{&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_51,&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_51},{&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_51,&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_51},{&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_51,&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[3],&p_1505->g_7[0],&p_1505->g_51}};
    int8_t l_1380 = 0x2DL;
    uint16_t l_1381 = 1UL;
    int64_t l_1384 = (-1L);
    uint32_t l_1385 = 0UL;
    int i, j;
    --l_1381;
    ++l_1385;
    for (p_1505->g_51 = (-14); (p_1505->g_51 != (-21)); --p_1505->g_51)
    { /* block id: 685 */
        atomic_and(&p_1505->g_atomic_reduction[get_linear_group_id()], (*l_1374) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1505->v_collective += p_1505->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    }
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1505->g_35 p_1505->g_62 p_1505->g_31 p_1505->g_88 p_1505->g_7 p_1505->g_101 p_1505->g_102 p_1505->g_2 p_1505->g_51 p_1505->g_124 p_1505->g_3 p_1505->g_156 p_1505->g_164 p_1505->g_154 p_1505->g_190 p_1505->g_165 p_1505->g_233 p_1505->g_4 p_1505->g_297 p_1505->g_284 p_1505->g_435 p_1505->g_456 p_1505->g_437 p_1505->g_234.f0 p_1505->g_401 p_1505->g_188 p_1505->g_715 p_1505->g_718 p_1505->g_684 p_1505->g_234 p_1505->g_355 p_1505->g_265 p_1505->g_821.f0 p_1505->g_823 p_1505->g_856 p_1505->g_822.f0 p_1505->g_318 p_1505->g_319 p_1505->g_942 p_1505->g_644 p_1505->g_1142 p_1505->g_1145 p_1505->g_1061 p_1505->g_1062 p_1505->g_1063 p_1505->g_1216 p_1505->g_1221 p_1505->g_1197 p_1505->g_1222 p_1505->g_1279 p_1505->g_1217 p_1505->g_1293 p_1505->g_1281 p_1505->g_821 p_1505->g_1280 p_1505->g_1196 p_1505->g_1144
 * writes: p_1505->g_62 p_1505->g_31 p_1505->g_88 p_1505->g_124 p_1505->g_156 p_1505->g_51 p_1505->g_188 p_1505->g_190 p_1505->g_234 p_1505->g_102 p_1505->g_165 p_1505->g_154 p_1505->g_3 p_1505->g_2 p_1505->g_435 p_1505->g_516 p_1505->g_534 p_1505->g_456 p_1505->g_302 p_1505->g_437 p_1505->g_684 p_1505->g_644 p_1505->g_715 p_1505->g_718 p_1505->g_284 p_1505->g_821 p_1505->g_822 p_1505->g_355 p_1505->g_856 p_1505->g_321 p_1505->g_942 p_1505->g_297 p_1505->g_1196 p_1505->g_1197 p_1505->g_1222 p_1505->g_35 p_1505->g_318
 */
uint32_t  func_23(uint32_t  p_24, struct S1 * p_1505)
{ /* block id: 14 */
    uint32_t l_1326 = 0x655EA479L;
    uint32_t l_1327 = 0UL;
    struct S0 *l_1332 = (void*)0;
    uint32_t *l_1341 = &p_1505->g_1196;
    int32_t ****l_1342 = &p_1505->g_319;
    int32_t *****l_1343 = &p_1505->g_318;
    int8_t ***l_1344 = (void*)0;
    int32_t l_1345 = 2L;
    uint32_t l_1355 = 0x98F0CAE0L;
    int32_t **l_1358 = (void*)0;
    int32_t **l_1359 = &p_1505->g_165;
    int32_t **l_1360 = &p_1505->g_165;
    int32_t **l_1361 = &p_1505->g_165;
    int32_t *l_1362 = &p_1505->g_51;
    int32_t **l_1363 = &p_1505->g_165;
    int32_t **l_1364 = (void*)0;
    int32_t *l_1365[10][10][2] = {{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}},{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}},{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}},{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}},{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}},{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}},{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}},{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}},{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}},{{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0},{&p_1505->g_51,(void*)0}}};
    int32_t **l_1366 = &p_1505->g_516[5][9];
    int32_t **l_1367 = &p_1505->g_165;
    int32_t **l_1368 = &p_1505->g_516[6][7];
    int32_t **l_1369 = (void*)0;
    int32_t *l_1370 = &p_1505->g_51;
    int32_t *l_1371[1];
    uint8_t l_1372 = 252UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1371[i] = &p_1505->g_51;
    atomic_sub(&p_1505->g_atomic_reduction[get_linear_group_id()], (((8L & func_36(p_24, p_1505)) & (0x494CL > (p_24 & ((l_1326 & FAKE_DIVERGE(p_1505->global_0_offset, get_global_id(0), 10)) != l_1327)))) && 0xA6L));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1505->v_collective += p_1505->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if ((safe_mod_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(l_1327, ((l_1332 == (((safe_mul_func_uint8_t_u_u(255UL, l_1327)) >= (((safe_div_func_uint64_t_u_u((safe_div_func_uint16_t_u_u(p_24, ((l_1341 == l_1341) || (((*l_1343) = l_1342) == &p_1505->g_319)))), p_24)) , (void*)0) != l_1344)) , (**p_1505->g_1279))) != l_1345))), p_24)))
    { /* block id: 657 */
        int32_t *l_1346 = &p_1505->g_51;
        (*p_1505->g_164) = l_1346;
        (*p_1505->g_164) = (*p_1505->g_164);
    }
    else
    { /* block id: 660 */
        for (p_1505->g_1196 = 0; (p_1505->g_1196 >= 30); ++p_1505->g_1196)
        { /* block id: 663 */
            for (p_1505->g_644 = 20; (p_1505->g_644 >= 17); p_1505->g_644 = safe_sub_func_uint64_t_u_u(p_1505->g_644, 6))
            { /* block id: 666 */
                if (p_24)
                    break;
                return p_24;
            }
        }
    }
    l_1372 |= ((+0x71L) && (p_24 == (safe_mod_func_uint8_t_u_u((p_24 == ((*p_1505->g_1063) = ((***p_1505->g_1279) , (p_24 != 1L)))), ((safe_mul_func_uint8_t_u_u(l_1355, ((**p_1505->g_1216) = (((safe_mod_func_int32_t_s_s((((l_1370 = (l_1365[2][9][0] = (l_1362 = l_1341))) == (*p_1505->g_101)) , p_24), p_24)) && 0x450EL) >= p_24)))) , p_24)))));
    (*l_1359) = (void*)0;
    return (*p_1505->g_1144);
}


/* ------------------------------------------ */
/* 
 * reads : p_1505->g_35 p_1505->g_62 p_1505->g_31 p_1505->g_88 p_1505->g_7 p_1505->g_101 p_1505->g_102 p_1505->g_2 p_1505->g_51 p_1505->g_124 p_1505->g_3 p_1505->g_156 p_1505->g_164 p_1505->g_154 p_1505->g_190 p_1505->g_165 p_1505->g_233 p_1505->g_4 p_1505->g_297 p_1505->g_284 p_1505->g_435 p_1505->g_456 p_1505->g_437 p_1505->g_234.f0 p_1505->g_401 p_1505->g_188 p_1505->g_715 p_1505->g_718 p_1505->g_684 p_1505->g_234 p_1505->g_355 p_1505->g_265 p_1505->g_821.f0 p_1505->g_823 p_1505->g_856 p_1505->g_822.f0 p_1505->g_318 p_1505->g_319 p_1505->g_942 p_1505->g_644 p_1505->g_1142 p_1505->g_1145 p_1505->g_1061 p_1505->g_1062 p_1505->g_1063 p_1505->g_1216 p_1505->g_1221 p_1505->g_1197 p_1505->g_1222 p_1505->g_1279 p_1505->g_1217 p_1505->g_1293 p_1505->g_1281 p_1505->g_821 p_1505->g_1280
 * writes: p_1505->g_62 p_1505->g_31 p_1505->g_88 p_1505->g_124 p_1505->g_156 p_1505->g_51 p_1505->g_188 p_1505->g_190 p_1505->g_234 p_1505->g_102 p_1505->g_165 p_1505->g_154 p_1505->g_3 p_1505->g_2 p_1505->g_435 p_1505->g_516 p_1505->g_534 p_1505->g_456 p_1505->g_302 p_1505->g_437 p_1505->g_684 p_1505->g_644 p_1505->g_715 p_1505->g_718 p_1505->g_284 p_1505->g_821 p_1505->g_822 p_1505->g_355 p_1505->g_856 p_1505->g_321 p_1505->g_942 p_1505->g_297 p_1505->g_1196 p_1505->g_1197 p_1505->g_1222 p_1505->g_35
 */
int16_t  func_36(int16_t  p_37, struct S1 * p_1505)
{ /* block id: 15 */
    int32_t l_46 = 0x5E37D660L;
    int32_t ****l_827 = &p_1505->g_319;
    uint16_t *l_828 = &p_1505->g_297;
    uint16_t l_1194 = 0xD07FL;
    uint8_t l_1220 = 253UL;
    uint16_t l_1284[2][5][10] = {{{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL}},{{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL}}};
    int i, j, k;
    if ((safe_div_func_uint64_t_u_u(func_40(p_1505->g_35[7], l_46, func_47(l_46, p_1505), (safe_add_func_int32_t_s_s(((void*)0 != l_827), (&p_1505->g_297 == l_828))), ((safe_div_func_uint8_t_u_u(((safe_unary_minus_func_int16_t_s(((((p_1505->g_297 & p_1505->g_35[4]) | p_1505->g_355[0][4][3]) >= p_37) > 8L))) && p_37), (-6L))) | l_46), p_1505), 18446744073709551612UL)))
    { /* block id: 574 */
        int32_t ***l_1115 = &p_1505->g_164;
        int32_t *l_1119 = &p_1505->g_4;
        int32_t l_1132 = (-1L);
        int8_t l_1139 = 0x04L;
        uint16_t *l_1212 = &p_1505->g_284[0];
        uint8_t l_1215 = 4UL;
        int8_t * volatile *l_1219 = &p_1505->g_1217[2];
        uint32_t **l_1302 = &p_1505->g_534;
        int32_t *l_1303 = &p_1505->g_51;
        for (p_1505->g_437 = 17; (p_1505->g_437 >= 27); p_1505->g_437++)
        { /* block id: 577 */
            int32_t ***l_1116[9][3];
            uint32_t ***l_1146 = (void*)0;
            uint8_t *l_1159 = (void*)0;
            uint8_t *l_1160 = &p_1505->g_856;
            uint8_t *l_1167 = &p_1505->g_124;
            struct S0 l_1205 = {4UL};
            struct S0 *l_1259 = &p_1505->g_821;
            struct S0 **l_1258 = &l_1259;
            struct S0 ***l_1257 = &l_1258;
            int32_t *****l_1285[5];
            int i, j;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 3; j++)
                    l_1116[i][j] = &p_1505->g_164;
            }
            for (i = 0; i < 5; i++)
                l_1285[i] = &p_1505->g_318;
            (**p_1505->g_101) = (l_1115 != l_1116[6][2]);
            for (p_1505->g_942 = 22; (p_1505->g_942 > 56); ++p_1505->g_942)
            { /* block id: 581 */
                uint32_t l_1124 = 0xD6E6AB4FL;
                int32_t l_1130 = (-1L);
                int32_t l_1131 = 0x4218D10EL;
                int32_t l_1133[7] = {0x04C2DD9EL,1L,0x04C2DD9EL,0x04C2DD9EL,1L,0x04C2DD9EL,0x04C2DD9EL};
                int i;
                (*p_1505->g_164) = l_1119;
                if (((p_1505->g_718 != ((*p_1505->g_233) , ((*l_828) ^= (safe_mul_func_int8_t_s_s(8L, ((((0x4EL < (p_37 || p_37)) , (*l_1119)) != 5L) , ((safe_sub_func_uint32_t_u_u((p_37 < 0x79L), (*p_1505->g_165))) , p_1505->g_435))))))) & 0x121EF335L))
                { /* block id: 584 */
                    l_1124--;
                }
                else
                { /* block id: 586 */
                    (*p_1505->g_102) = 4L;
                    (**l_1115) = (**l_1115);
                    if (p_37)
                    { /* block id: 589 */
                        uint64_t l_1127 = 0UL;
                        l_1127--;
                    }
                    else
                    { /* block id: 591 */
                        uint8_t l_1134 = 1UL;
                        l_1134--;
                        (*p_1505->g_102) = (safe_div_func_int64_t_s_s(0x22C0B225BC28A63EL, 0xF74EE210987BB96BL));
                        if ((**p_1505->g_101))
                            break;
                    }
                    return p_37;
                }
                (*p_1505->g_164) = (**l_1115);
                if (l_1139)
                    continue;
            }
            if ((p_37 > ((safe_mul_func_uint8_t_u_u(((((p_1505->g_1142 != l_1146) | p_37) > (((safe_lshift_func_int16_t_s_u((((((safe_sub_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(((*l_1167) = ((safe_mul_func_int8_t_s_s(p_1505->g_124, ((--(*l_1160)) != (((safe_add_func_int8_t_s_s((0x4FL == p_1505->g_437), ((safe_lshift_func_int16_t_s_u(((4L <= 6UL) != p_1505->g_1145), 15)) || (**p_1505->g_101)))) ^ (*l_1119)) == 1UL)))) == p_1505->g_284[0])), p_37)) , p_37), (-4L))), FAKE_DIVERGE(p_1505->global_1_offset, get_global_id(1), 10))) && (*p_1505->g_102)) >= 65535UL) >= p_37) , (-1L)), 13)) && p_1505->g_188) || 0xFC4551A188FF8E80L)) < p_37), 0x19L)) <= l_46)))
            { /* block id: 603 */
                int32_t l_1177 = (-1L);
                uint32_t *l_1195 = &p_1505->g_1196;
                uint16_t *l_1198 = &p_1505->g_284[0];
                l_1132 &= ((-1L) >= (((*l_1167)++) | (safe_unary_minus_func_int64_t_s((((safe_sub_func_int16_t_s_s((((p_1505->g_7[0] && (((safe_mod_func_int16_t_s_s((*l_1119), (safe_div_func_int64_t_s_s(l_1177, (p_1505->g_154[0][0] | FAKE_DIVERGE(p_1505->group_0_offset, get_group_id(0), 10)))))) > (safe_div_func_uint64_t_u_u(((p_1505->g_355[0][4][1] , ((safe_add_func_uint16_t_u_u(((*l_1198) = ((*l_828) = ((p_1505->g_1197 = ((*l_1195) = ((safe_mod_func_int16_t_s_s((-1L), (safe_div_func_int8_t_s_s((((((safe_add_func_uint32_t_u_u((~(0L <= ((~(safe_mul_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u((l_1177 == l_1177), p_1505->g_188)) < 0x0C5BL), p_1505->g_355[1][2][0]))) > p_37))), 0UL)) == 0x42A7L) | p_1505->g_4) , p_37) <= 0x38L), l_1194)))) , p_1505->g_823[0][6]))) , p_1505->g_35[7]))), (***p_1505->g_1061))) < p_37)) , GROUP_DIVERGE(0, 1)), (*p_1505->g_401)))) | p_37)) > p_37) , (-5L)), p_37)) != 7L) , 0x4BB16AF140ADA3D6L)))));
            }
            else
            { /* block id: 610 */
                uint16_t *l_1201 = &l_1194;
                int32_t l_1213 = 0x7C35887DL;
                int8_t * volatile **l_1218[4][10] = {{&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216},{&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216},{&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216},{&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216,&p_1505->g_1216}};
                int32_t *****l_1276 = &p_1505->g_321;
                int i, j;
                for (p_1505->g_715 = 2; (p_1505->g_715 > 21); ++p_1505->g_715)
                { /* block id: 613 */
                    int8_t *l_1202 = &l_1139;
                    struct S0 *l_1206 = &p_1505->g_821;
                    int32_t l_1211[6] = {0x36A35B6EL,0x4F53A880L,0x36A35B6EL,0x36A35B6EL,0x4F53A880L,0x36A35B6EL};
                    int32_t l_1214 = 5L;
                    int i;
                    l_1215 ^= (l_1214 |= ((((((l_1201 != ((((*l_1202) = (0x795579A5FB22913DL > p_1505->g_821.f0)) , (safe_mod_func_uint64_t_u_u((0x04FA43F692F03AF1L >= (((*l_1206) = l_1205) , 0UL)), (safe_add_func_uint64_t_u_u((safe_mod_func_uint8_t_u_u(l_1211[5], (GROUP_DIVERGE(2, 1) ^ (p_1505->g_3[1] & ((l_1212 != &p_1505->g_297) , p_37))))), (*p_1505->g_401)))))) , (void*)0)) != l_1213) <= l_1211[5]) >= 0x03L) , (***p_1505->g_1061)) > p_37));
                }
                l_1219 = p_1505->g_1216;
                for (p_1505->g_297 = 0; (p_1505->g_297 <= 3); p_1505->g_297 += 1)
                { /* block id: 622 */
                    uint16_t l_1229 = 0xB94FL;
                    int32_t *****l_1277 = &l_827;
                    uint64_t *l_1278 = &p_1505->g_35[7];
                    uint64_t *l_1282 = (void*)0;
                    uint64_t *l_1283 = &p_1505->g_31;
                    if ((p_37 & 18446744073709551612UL))
                    { /* block id: 623 */
                        if (l_1220)
                            break;
                        (*p_1505->g_1221) = &l_1212;
                    }
                    else
                    { /* block id: 626 */
                        int32_t l_1234 = 0x513B4500L;
                        (**p_1505->g_101) |= (((safe_add_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) > ((safe_mul_func_int8_t_s_s(l_1229, p_37)) >= p_37)), (safe_rshift_func_int8_t_s_s((((safe_sub_func_uint32_t_u_u(l_1234, ((safe_div_func_uint64_t_u_u(((~(safe_lshift_func_uint16_t_u_u(((*l_1201) = 0xA54BL), (safe_add_func_int32_t_s_s(((p_1505->g_1197 > l_1229) && (safe_mul_func_int8_t_s_s(p_37, (!p_37)))), p_37))))) , 8UL), p_37)) != 0x0EL))) , 0x2CL) <= p_37), 1)))) >= p_37) | l_1234);
                        return p_37;
                    }
                    l_1132 |= ((((*l_1283) &= (((l_1213 > (safe_sub_func_uint16_t_u_u(((safe_div_func_int32_t_s_s(((p_37 , ((**p_1505->g_1222) > (safe_rshift_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((((safe_mul_func_int8_t_s_s((&p_1505->g_1216 == &p_1505->g_1216), (safe_lshift_func_int8_t_s_u((!((safe_rshift_func_uint8_t_u_s(((l_1257 == ((safe_mul_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(4UL, 0x3A477647L)), (safe_mod_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(((*l_1278) = ((safe_mod_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s((GROUP_DIVERGE(1, 1) > (((safe_div_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((*p_1505->g_1063), p_37)), p_37)) , l_1276) == l_1277)), 12)) , 1L), p_37)) != p_37)), p_1505->g_644)), 249UL)))) , p_1505->g_1279)) & (-1L)), 2)) , p_37)), p_37)))) | 9UL) & 0xEA16L), (**p_1505->g_1216))) == p_37), 3)))) && (*p_1505->g_1063)), l_1213)) , (***p_1505->g_1221)), (*l_1119)))) , p_37) >= 0x16L)) ^ l_1284[1][3][3]) , (-1L));
                    if ((*p_1505->g_102))
                        continue;
                    for (p_1505->g_435 = 0; (p_1505->g_435 <= 1); p_1505->g_435 += 1)
                    { /* block id: 637 */
                        uint32_t *l_1292[6] = {&p_1505->g_190,&p_1505->g_190,&p_1505->g_190,&p_1505->g_190,&p_1505->g_190,&p_1505->g_190};
                        int32_t **l_1297 = &p_1505->g_165;
                        int32_t **l_1298 = (void*)0;
                        uint32_t **l_1300[7] = {&p_1505->g_534,&p_1505->g_534,&p_1505->g_534,&p_1505->g_534,&p_1505->g_534,&p_1505->g_534,&p_1505->g_534};
                        uint32_t ***l_1299[10][10] = {{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]},{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]},{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]},{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]},{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]},{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]},{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]},{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]},{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]},{&l_1300[1],&l_1300[1],&l_1300[0],&l_1300[3],(void*)0,&l_1300[1],&l_1300[3],&l_1300[4],&l_1300[3],&l_1300[1]}};
                        uint32_t **l_1301 = &p_1505->g_534;
                        int i, j, k;
                        atomic_or(&p_1505->l_atomic_reduction[0], ((!(p_1505->g_3[p_1505->g_435] | ((*p_1505->g_401) = (((((((((void*)0 == l_1285[3]) && (safe_lshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u((**p_1505->g_1222), ((p_1505->g_684[3][6][0] = p_37) || (((!(((((p_37 > p_1505->g_35[5]) != (p_1505->g_1293[4][4][1] != &p_1505->g_1294)) && (*l_1119)) ^ (*l_1119)) < FAKE_DIVERGE(p_1505->group_2_offset, get_group_id(2), 10))) , l_1297) != l_1298)))), 2))) <= GROUP_DIVERGE(1, 1)) , p_37) < GROUP_DIVERGE(2, 1)) == p_37) != p_37) , (*p_1505->g_401))))) == 0L));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1505->v_collective += p_1505->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        l_1302 = (l_1301 = &p_1505->g_534);
                        (**l_1115) = l_1303;
                        (*p_1505->g_1281) = (((0x66B1CAFAD81F28B3L >= ((safe_div_func_int16_t_s_s((safe_sub_func_int16_t_s_s((***p_1505->g_1061), ((((safe_sub_func_uint8_t_u_u(0xE9L, (safe_add_func_int32_t_s_s(p_37, (((safe_add_func_uint64_t_u_u(((safe_div_func_int32_t_s_s((safe_add_func_int32_t_s_s((safe_lshift_func_int16_t_s_s((+((((((*p_1505->g_401) = (-1L)) ^ 0x2181D5A438A85FADL) , (safe_sub_func_uint32_t_u_u((p_37 == (((((*p_1505->g_1281) , ((safe_add_func_uint64_t_u_u(((safe_rshift_func_int8_t_s_s(1L, 4)) , FAKE_DIVERGE(p_1505->global_1_offset, get_global_id(1), 10)), p_37)) && (*l_1119))) , 0UL) | p_37) , (*p_1505->g_165))), (**l_1297)))) , p_1505->g_190) , 0L)), 1)), (**l_1297))), (*l_1303))) != 0x6C4EA8CEL), (***l_1115))) || (***l_1115)) && 0x0552BC2B869198BCL))))) >= 0x604C77CA1D01ADCCL) , 8UL) | (*p_1505->g_165)))), p_37)) , p_37)) == (*p_1505->g_1063)) , (***p_1505->g_1279));
                    }
                }
            }
        }
        (**p_1505->g_101) = p_37;
    }
    else
    { /* block id: 651 */
        (*p_1505->g_102) &= l_1194;
    }
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_1505->g_7 p_1505->g_164 p_1505->g_31 p_1505->g_88 p_1505->g_124 p_1505->g_355 p_1505->g_401 p_1505->g_188 p_1505->g_101 p_1505->g_102 p_1505->g_2 p_1505->g_856 p_1505->g_435 p_1505->g_821.f0 p_1505->g_3 p_1505->g_822.f0 p_1505->g_318 p_1505->g_319 p_1505->g_233 p_1505->g_234 p_1505->g_35 p_1505->g_823 p_1505->g_154 p_1505->g_51 p_1505->g_156 p_1505->g_942 p_1505->g_718 p_1505->g_437 p_1505->g_684 p_1505->g_644
 * writes: p_1505->g_31 p_1505->g_165 p_1505->g_355 p_1505->g_154 p_1505->g_156 p_1505->g_124 p_1505->g_88 p_1505->g_2 p_1505->g_435 p_1505->g_188 p_1505->g_234 p_1505->g_821 p_1505->g_822 p_1505->g_856 p_1505->g_321 p_1505->g_715 p_1505->g_284 p_1505->g_644
 */
uint64_t  func_40(uint8_t  p_41, int16_t  p_42, uint64_t * p_43, uint64_t  p_44, int64_t  p_45, struct S1 * p_1505)
{ /* block id: 404 */
    int32_t *l_832 = &p_1505->g_7[0];
    int32_t l_861 = 1L;
    int32_t l_869 = 0x08AD99A7L;
    int32_t l_872 = 0x5371650AL;
    int32_t l_873 = 0x2532FCDDL;
    int32_t ***l_896 = &p_1505->g_164;
    int64_t **l_901 = (void*)0;
    uint32_t *l_924 = (void*)0;
    int32_t l_948 = 1L;
    uint8_t **l_953[1][9] = {{&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0]}};
    uint32_t l_1101[5] = {0x855F1488L,0x855F1488L,0x855F1488L,0x855F1488L,0x855F1488L};
    int i, j;
lbl_836:
    l_832 = l_832;
    for (p_1505->g_31 = 0; (p_1505->g_31 >= 51); p_1505->g_31 = safe_add_func_int16_t_s_s(p_1505->g_31, 1))
    { /* block id: 408 */
        int32_t l_841[9][10] = {{0x33FBC2A6L,2L,1L,(-1L),0x63690CFBL,(-1L),1L,2L,0x33FBC2A6L,1L},{0x33FBC2A6L,2L,1L,(-1L),0x63690CFBL,(-1L),1L,2L,0x33FBC2A6L,1L},{0x33FBC2A6L,2L,1L,(-1L),0x63690CFBL,(-1L),1L,2L,0x33FBC2A6L,1L},{0x33FBC2A6L,2L,1L,(-1L),0x63690CFBL,(-1L),1L,2L,0x33FBC2A6L,1L},{0x33FBC2A6L,2L,1L,(-1L),0x63690CFBL,(-1L),1L,2L,0x33FBC2A6L,1L},{0x33FBC2A6L,2L,1L,(-1L),0x63690CFBL,(-1L),1L,2L,0x33FBC2A6L,1L},{0x33FBC2A6L,2L,1L,(-1L),0x63690CFBL,(-1L),1L,2L,0x33FBC2A6L,1L},{0x33FBC2A6L,2L,1L,(-1L),0x63690CFBL,(-1L),1L,2L,0x33FBC2A6L,1L},{0x33FBC2A6L,2L,1L,(-1L),0x63690CFBL,(-1L),1L,2L,0x33FBC2A6L,1L}};
        int32_t *****l_884 = (void*)0;
        int32_t ******l_883[3];
        uint16_t l_935 = 65528UL;
        int16_t *l_974 = &p_1505->g_644;
        uint32_t **l_1019 = &l_924;
        uint32_t ***l_1018 = &l_1019;
        struct S0 l_1059[2] = {{0x2FD2A498BE10DE9AL},{0x2FD2A498BE10DE9AL}};
        int i, j;
        for (i = 0; i < 3; i++)
            l_883[i] = &l_884;
        if ((*l_832))
        { /* block id: 409 */
            int32_t *l_835 = &p_1505->g_51;
            l_835 = ((*p_1505->g_164) = (void*)0);
            if (p_1505->g_31)
                goto lbl_836;
        }
        else
        { /* block id: 413 */
            int8_t *l_839 = &p_1505->g_355[0][4][2];
            int8_t *l_840 = &p_1505->g_154[0][1];
            int32_t l_846 = 0x15ADEB19L;
            uint8_t *l_847 = &p_1505->g_124;
            int32_t *l_854 = &p_1505->g_435;
            int32_t *l_855 = &l_846;
            uint64_t l_862 = 0x7FDDAB8654BCE496L;
            int64_t l_868 = (-2L);
            int32_t l_870 = 8L;
            int32_t l_871[8][6][5] = {{{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L}},{{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L}},{{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L}},{{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L}},{{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L}},{{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L}},{{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L}},{{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L},{0x15E00B38L,6L,(-1L),0x15E00B38L,0x6FD513E1L}}};
            uint16_t l_874 = 0xA0F5L;
            int8_t l_973 = 0x18L;
            int i, j, k;
            (**p_1505->g_101) ^= ((((safe_mod_func_int8_t_s_s(((*l_840) = (p_42 , ((*l_839) = 0L))), (p_1505->g_156 = l_841[5][1]))) , (safe_mul_func_uint8_t_u_u(((~(p_44 || (safe_mul_func_int8_t_s_s((1UL >= (l_846 != l_846)), (((*p_43) = ((((1L == ((*l_847) |= ((((*p_43) & l_841[1][7]) <= (*l_832)) , l_841[5][1]))) != 0x0ECFD0A086253901L) != GROUP_DIVERGE(1, 1)) | p_1505->g_355[0][4][2])) || (*p_1505->g_401)))))) ^ 0UL), 0UL))) < p_42) | 0xE494L);
            if ((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_s((((0xD669L < ((((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1505->global_1_offset, get_global_id(1), 10), 11)) == (((*l_854) = l_841[5][1]) , (((*l_855) = 0x4E8B8109L) ^ l_841[5][1]))) || p_1505->g_856) && p_1505->g_435)) >= (((*p_1505->g_401) = (safe_rshift_func_int16_t_s_s((safe_div_func_int8_t_s_s(l_841[5][9], (p_42 & ((((l_861 = ((p_45 > 0x4A84L) == GROUP_DIVERGE(0, 1))) <= l_862) , (*l_832)) == (*l_832))))), 3))) > 0x31260953AA16DF84L)) && p_1505->g_821.f0), l_841[5][1])) || (*l_855)), p_1505->g_3[1])))
            { /* block id: 424 */
                int32_t *l_863 = &l_841[5][1];
                int32_t *l_864 = &l_846;
                int32_t *l_865 = (void*)0;
                int32_t l_866 = 1L;
                int32_t *l_867[7] = {&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[0],&p_1505->g_4,&p_1505->g_7[0],&p_1505->g_7[0]};
                int i;
                l_874--;
            }
            else
            { /* block id: 426 */
                int32_t **l_885 = &p_1505->g_516[2][7];
                int32_t **l_886 = &p_1505->g_165;
                uint32_t l_895 = 0x28DB5B6AL;
                int16_t l_897 = 1L;
                struct S0 l_900 = {7UL};
                struct S0 *l_903[9] = {&p_1505->g_822,&p_1505->g_822,&p_1505->g_822,&p_1505->g_822,&p_1505->g_822,&p_1505->g_822,&p_1505->g_822,&p_1505->g_822,&p_1505->g_822};
                struct S0 **l_902 = &l_903[0];
                int i;
                (**p_1505->g_101) = ((((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_u(((*l_847) = (p_1505->g_7[1] , (safe_sub_func_int16_t_s_s((l_883[0] == (void*)0), (l_885 != (l_886 = &l_855)))))), ((safe_sub_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u(0x6AL, (safe_mul_func_uint8_t_u_u(((~((safe_mul_func_int16_t_s_s(p_1505->g_822.f0, l_895)) , ((((l_896 == (*p_1505->g_318)) , 1L) , 0x7243118DFFEB6029L) , p_44))) == (*l_855)), 0xF0L)))), p_42)) | 0x4E36A468256AA5AAL))), 6)) > (*p_1505->g_102)) & l_897) , (-1L));
                for (p_1505->g_124 = 0; (p_1505->g_124 == 15); p_1505->g_124++)
                { /* block id: 432 */
                    int64_t l_904 = (-6L);
                    if ((l_900 , ((*l_855) = ((void*)0 != l_901))))
                    { /* block id: 434 */
                        (**p_1505->g_101) = ((*l_855) |= (l_902 == &p_1505->g_233));
                        if (l_904)
                            break;
                    }
                    else
                    { /* block id: 438 */
                        (*p_1505->g_102) &= ((*l_855) = 1L);
                    }
                    (**l_902) = (*p_1505->g_233);
                    if (p_42)
                        continue;
                }
            }
            (*p_1505->g_102) &= p_45;
            for (p_1505->g_856 = 0; (p_1505->g_856 < 33); p_1505->g_856 = safe_add_func_int64_t_s_s(p_1505->g_856, 1))
            { /* block id: 449 */
                int32_t l_928 = (-7L);
                int64_t l_932 = 1L;
                int32_t l_933 = 0x2DC542D5L;
                int32_t l_934[4][5][5] = {{{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L}},{{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L}},{{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L}},{{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L},{1L,0x6D8A20D9L,1L,1L,0x6D8A20D9L}}};
                int16_t *l_947[8][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                uint8_t **l_954 = &p_1505->g_303[0];
                int i, j, k;
                for (l_862 = 2; (l_862 <= 9); l_862 += 1)
                { /* block id: 452 */
                    uint32_t l_927 = 0x38B17867L;
                    int8_t l_931 = 3L;
                    int i;
                    if (((safe_lshift_func_uint8_t_u_s(((FAKE_DIVERGE(p_1505->group_0_offset, get_group_id(0), 10) , ((safe_div_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u(4UL)), ((*l_840) |= (((((safe_div_func_uint16_t_u_u(((p_1505->g_35[l_862] <= (safe_rshift_func_uint8_t_u_s(((safe_add_func_uint16_t_u_u(p_1505->g_35[l_862], FAKE_DIVERGE(p_1505->group_2_offset, get_group_id(2), 10))) >= (*p_43)), (((safe_sub_func_int64_t_s_s(2L, ((GROUP_DIVERGE(0, 1) & (safe_sub_func_int32_t_s_s((((void*)0 != l_924) , ((*l_855) |= 0L)), ((((safe_mul_func_int16_t_s_s((p_1505->g_822.f0 == p_1505->g_35[l_862]), p_1505->g_188)) ^ 4294967295UL) && l_927) ^ 0x44L)))) > 0x3CL))) || 1L) >= (*p_1505->g_401))))) , p_1505->g_823[0][6]), l_928)) , (void*)0) == (void*)0) , p_1505->g_435) != 0x2AA2L)))), p_1505->g_51)) < 0x66D0L)) , 7UL), 7)) >= 0x182B4C6DL))
                    { /* block id: 455 */
                        struct S0 *l_930 = &p_1505->g_821;
                        struct S0 **l_929 = &l_930;
                        (*l_929) = &p_1505->g_821;
                    }
                    else
                    { /* block id: 457 */
                        (**p_1505->g_101) &= ((((-1L) != (*p_43)) != l_931) == (GROUP_DIVERGE(2, 1) && p_1505->g_156));
                    }
                    (*p_1505->g_102) = p_41;
                }
                l_935--;
                if ((18446744073709551606UL | (((*l_855) = (+(safe_div_func_int64_t_s_s((safe_add_func_uint8_t_u_u(p_1505->g_942, (safe_rshift_func_int8_t_s_u(((((safe_add_func_uint8_t_u_u(((((p_1505->g_321 = &l_896) == &p_1505->g_319) >= ((p_42 ^ 1UL) | (l_948 ^= p_1505->g_435))) != ((((safe_div_func_int16_t_s_s((p_1505->g_715 = (safe_div_func_uint32_t_u_u(p_44, (**p_1505->g_101)))), p_41)) , l_953[0][1]) != l_954) , p_44)), 0x29L)) && p_1505->g_718) , p_45) < 0UL), 7)))), p_1505->g_437)))) | p_1505->g_718)))
                { /* block id: 467 */
                    if ((p_42 <= ((*l_855) |= p_44)))
                    { /* block id: 469 */
                        (**p_1505->g_101) = ((++(*p_43)) < (*l_832));
                    }
                    else
                    { /* block id: 472 */
                        uint16_t *l_969[2][1][6] = {{{&l_874,&l_935,&l_874,&l_874,&l_935,&l_874}},{{&l_874,&l_935,&l_874,&l_874,&l_935,&l_874}}};
                        int32_t l_972 = 0x7137C6C0L;
                        int i, j, k;
                        l_973 |= (safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((p_44 , 0xBEL), (safe_mod_func_uint64_t_u_u(p_1505->g_156, (((p_44 == ((safe_sub_func_int64_t_s_s((safe_lshift_func_int8_t_s_s((p_1505->g_684[0][8][0] <= 0xD9L), 6)), ((((safe_lshift_func_int8_t_s_u(5L, 0)) == ((p_1505->g_284[0] = 0UL) || (safe_mul_func_int8_t_s_s(p_45, (-6L))))) <= l_928) , 0x5CE71FE352CB559BL))) , p_42)) , (*l_855)) ^ l_972))))), p_45));
                    }
                }
                else
                { /* block id: 476 */
                    for (l_869 = 3; (l_869 >= 0); l_869 -= 1)
                    { /* block id: 479 */
                        int i, j, k;
                        (*p_1505->g_102) |= l_871[(l_869 + 1)][l_869][l_869];
                        if (l_948)
                            goto lbl_836;
                        if (l_871[(l_869 + 1)][l_869][l_869])
                            continue;
                    }
                    for (l_846 = 3; (l_846 >= 0); l_846 -= 1)
                    { /* block id: 486 */
                        int i, j, k;
                        return l_934[l_846][l_846][l_846];
                    }
                    return p_1505->g_2;
                }
            }
        }
        (**p_1505->g_101) &= (0L > ((*l_974) ^= (p_45 <= p_41)));
    }
    (**p_1505->g_101) = ((safe_lshift_func_int8_t_s_u((*l_832), 0)) , ((safe_rshift_func_uint8_t_u_u((l_869 = (p_41 = 0xAEL)), 4)) | 0x2FD1EF5FL));
    return p_1505->g_718;
}


/* ------------------------------------------ */
/* 
 * reads : p_1505->g_62 p_1505->g_35 p_1505->g_31 p_1505->g_88 p_1505->g_7 p_1505->g_101 p_1505->g_102 p_1505->g_2 p_1505->g_51 p_1505->g_124 p_1505->g_3 p_1505->g_156 p_1505->g_164 p_1505->g_154 p_1505->g_190 p_1505->g_165 p_1505->g_233 p_1505->g_4 p_1505->g_297 p_1505->g_284 p_1505->g_435 p_1505->g_456 p_1505->g_437 p_1505->g_234.f0 p_1505->g_401 p_1505->g_188 p_1505->g_715 p_1505->g_718 p_1505->g_684 p_1505->g_234 p_1505->g_355 p_1505->g_265 p_1505->g_821.f0 p_1505->g_823
 * writes: p_1505->g_62 p_1505->g_31 p_1505->g_88 p_1505->g_124 p_1505->g_156 p_1505->g_51 p_1505->g_188 p_1505->g_190 p_1505->g_234 p_1505->g_102 p_1505->g_165 p_1505->g_154 p_1505->g_3 p_1505->g_2 p_1505->g_435 p_1505->g_516 p_1505->g_534 p_1505->g_456 p_1505->g_302 p_1505->g_437 p_1505->g_684 p_1505->g_644 p_1505->g_715 p_1505->g_718 p_1505->g_284 p_1505->g_821 p_1505->g_822
 */
uint64_t * func_47(int32_t  p_48, struct S1 * p_1505)
{ /* block id: 16 */
    int32_t *l_49 = (void*)0;
    int32_t *l_50 = &p_1505->g_51;
    int32_t *l_52 = (void*)0;
    int32_t *l_53 = &p_1505->g_51;
    int32_t *l_54 = &p_1505->g_51;
    int32_t *l_55 = (void*)0;
    int32_t *l_56 = &p_1505->g_51;
    int32_t l_57 = 0x1717C264L;
    int32_t *l_58 = &p_1505->g_51;
    int32_t *l_59 = &l_57;
    int32_t *l_60[6];
    int32_t l_61[4] = {0x4D34437FL,0x4D34437FL,0x4D34437FL,0x4D34437FL};
    int32_t **l_65 = &l_52;
    uint64_t *l_824 = &p_1505->g_88;
    int i;
    for (i = 0; i < 6; i++)
        l_60[i] = &p_1505->g_51;
    p_1505->g_62--;
    l_65 = &l_60[0];
    (*l_59) = (p_1505->g_35[7] , ((safe_div_func_int64_t_s_s(func_68(&p_1505->g_31, p_1505), 0x143C514E5337F4F9L)) == p_1505->g_823[0][6]));
    return l_824;
}


/* ------------------------------------------ */
/* 
 * reads : p_1505->g_31 p_1505->g_88 p_1505->g_7 p_1505->g_101 p_1505->g_102 p_1505->g_2 p_1505->g_51 p_1505->g_124 p_1505->g_35 p_1505->g_3 p_1505->g_156 p_1505->g_164 p_1505->g_62 p_1505->g_154 p_1505->g_190 p_1505->g_165 p_1505->g_233 p_1505->g_4 p_1505->g_297 p_1505->g_284 p_1505->g_435 p_1505->g_456 p_1505->g_437 p_1505->g_234.f0 p_1505->g_401 p_1505->g_188 p_1505->g_715 p_1505->g_718 p_1505->g_684 p_1505->g_234 p_1505->g_355 p_1505->g_265 p_1505->g_821.f0
 * writes: p_1505->g_31 p_1505->g_88 p_1505->g_124 p_1505->g_156 p_1505->g_51 p_1505->g_188 p_1505->g_190 p_1505->g_234 p_1505->g_102 p_1505->g_165 p_1505->g_154 p_1505->g_3 p_1505->g_2 p_1505->g_435 p_1505->g_516 p_1505->g_534 p_1505->g_62 p_1505->g_456 p_1505->g_302 p_1505->g_437 p_1505->g_684 p_1505->g_644 p_1505->g_715 p_1505->g_718 p_1505->g_284 p_1505->g_821 p_1505->g_822
 */
int64_t  func_68(uint64_t * p_69, struct S1 * p_1505)
{ /* block id: 19 */
    uint8_t l_74 = 6UL;
    int32_t *l_100 = &p_1505->g_7[1];
    int32_t **l_99 = &l_100;
    uint16_t l_545 = 0x254FL;
    int32_t **l_546[2];
    uint32_t l_810 = 0xEC09602BL;
    struct S0 *l_815[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    struct S0 **l_814 = &l_815[3];
    int i;
    for (i = 0; i < 2; i++)
        l_546[i] = &l_100;
    for (p_1505->g_31 = 25; (p_1505->g_31 != 6); --p_1505->g_31)
    { /* block id: 22 */
        uint64_t *l_87 = &p_1505->g_88;
        int32_t *l_98 = (void*)0;
        int32_t **l_97[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t *l_544 = &p_1505->g_234.f0;
        int i;
        l_810 = ((safe_lshift_func_int16_t_s_u(0x49D4L, l_74)) > func_75(((safe_rshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((l_74 , ((safe_add_func_uint64_t_u_u(((*l_87)--), (((((*l_544) = (GROUP_DIVERGE(1, 1) >= func_91(p_1505->g_7[0], l_97[5], l_74, ((((7L || (((l_74 , l_99) != p_1505->g_101) != 65535UL)) , (*p_69)) & (*l_100)) , (*p_1505->g_102)), p_1505->g_7[0], p_1505))) > (*p_69)) >= 0x2E305990L) , l_545))) , &l_98)) == &l_100), (**l_99))), (*l_100))) , 0x5962L), p_1505->g_297, (**l_99), l_546[0], (*p_69), p_1505));
        return (*p_1505->g_401);
    }
    for (l_545 = 0; (l_545 <= 3); l_545 += 1)
    { /* block id: 374 */
        int16_t *l_811 = &p_1505->g_715;
        struct S0 *l_813 = &p_1505->g_234;
        struct S0 **l_812 = &l_813;
        struct S0 ***l_816 = (void*)0;
        struct S0 ***l_817 = (void*)0;
        struct S0 ***l_818 = &l_814;
        if (((((*l_811) = 0x1A7DL) , l_812) == ((*l_818) = l_814)))
        { /* block id: 377 */
            uint64_t l_820 = 1UL;
            for (p_1505->g_62 = 0; (p_1505->g_62 <= 3); p_1505->g_62 += 1)
            { /* block id: 380 */
                int64_t l_819 = 0x540A11BCB901A0E0L;
                if (l_819)
                    break;
                return l_820;
            }
            p_1505->g_822 = (p_1505->g_821 = ((*l_813) = (*p_1505->g_265)));
            for (p_1505->g_821.f0 = 0; (p_1505->g_821.f0 <= 3); p_1505->g_821.f0 += 1)
            { /* block id: 389 */
                return (*p_1505->g_401);
            }
            return (*p_1505->g_401);
        }
        else
        { /* block id: 393 */
            for (p_1505->g_88 = 0; (p_1505->g_88 <= 3); p_1505->g_88 += 1)
            { /* block id: 396 */
                return (**l_99);
            }
        }
    }
    return (*l_100);
}


/* ------------------------------------------ */
/* 
 * reads : p_1505->g_102 p_1505->g_2 p_1505->g_7 p_1505->g_284 p_1505->g_101 p_1505->g_51 p_1505->g_35 p_1505->g_190 p_1505->g_154 p_1505->g_435 p_1505->g_456 p_1505->g_164 p_1505->g_124 p_1505->g_437 p_1505->g_88 p_1505->g_234.f0 p_1505->g_401 p_1505->g_188 p_1505->g_715 p_1505->g_297 p_1505->g_718 p_1505->g_31 p_1505->g_684 p_1505->g_234 p_1505->g_355
 * writes: p_1505->g_2 p_1505->g_154 p_1505->g_62 p_1505->g_190 p_1505->g_124 p_1505->g_165 p_1505->g_456 p_1505->g_302 p_1505->g_437 p_1505->g_88 p_1505->g_234.f0 p_1505->g_188 p_1505->g_684 p_1505->g_102 p_1505->g_644 p_1505->g_715 p_1505->g_718 p_1505->g_234 p_1505->g_284
 */
int64_t  func_75(uint16_t  p_76, int64_t  p_77, int32_t  p_78, int32_t ** p_79, uint64_t  p_80, struct S1 * p_1505)
{ /* block id: 246 */
    uint16_t l_556 = 0x9B80L;
    int32_t *l_567 = &p_1505->g_7[0];
    int32_t **l_568 = (void*)0;
    int32_t **l_569[9][9] = {{&p_1505->g_165,&l_567,&p_1505->g_516[6][7],&p_1505->g_165,(void*)0,(void*)0,&p_1505->g_165,&p_1505->g_516[6][7],&l_567},{&p_1505->g_165,&l_567,&p_1505->g_516[6][7],&p_1505->g_165,(void*)0,(void*)0,&p_1505->g_165,&p_1505->g_516[6][7],&l_567},{&p_1505->g_165,&l_567,&p_1505->g_516[6][7],&p_1505->g_165,(void*)0,(void*)0,&p_1505->g_165,&p_1505->g_516[6][7],&l_567},{&p_1505->g_165,&l_567,&p_1505->g_516[6][7],&p_1505->g_165,(void*)0,(void*)0,&p_1505->g_165,&p_1505->g_516[6][7],&l_567},{&p_1505->g_165,&l_567,&p_1505->g_516[6][7],&p_1505->g_165,(void*)0,(void*)0,&p_1505->g_165,&p_1505->g_516[6][7],&l_567},{&p_1505->g_165,&l_567,&p_1505->g_516[6][7],&p_1505->g_165,(void*)0,(void*)0,&p_1505->g_165,&p_1505->g_516[6][7],&l_567},{&p_1505->g_165,&l_567,&p_1505->g_516[6][7],&p_1505->g_165,(void*)0,(void*)0,&p_1505->g_165,&p_1505->g_516[6][7],&l_567},{&p_1505->g_165,&l_567,&p_1505->g_516[6][7],&p_1505->g_165,(void*)0,(void*)0,&p_1505->g_165,&p_1505->g_516[6][7],&l_567},{&p_1505->g_165,&l_567,&p_1505->g_516[6][7],&p_1505->g_165,(void*)0,(void*)0,&p_1505->g_165,&p_1505->g_516[6][7],&l_567}};
    int32_t *l_570 = &p_1505->g_51;
    int8_t *l_571 = (void*)0;
    int8_t *l_572 = &p_1505->g_154[0][1];
    uint32_t l_573 = 0xA0E7638FL;
    uint32_t **l_575 = (void*)0;
    uint32_t ***l_574 = &l_575;
    uint32_t l_581 = 0x2BC0E846L;
    uint32_t *l_584[3];
    uint8_t *l_591 = &p_1505->g_124;
    uint8_t l_592 = 0UL;
    int32_t l_719[7][1] = {{1L},{1L},{1L},{1L},{1L},{1L},{1L}};
    int16_t *l_731[1][5][7] = {{{&p_1505->g_715,&p_1505->g_644,&p_1505->g_644,&p_1505->g_715,&p_1505->g_715,&p_1505->g_644,&p_1505->g_644},{&p_1505->g_715,&p_1505->g_644,&p_1505->g_644,&p_1505->g_715,&p_1505->g_715,&p_1505->g_644,&p_1505->g_644},{&p_1505->g_715,&p_1505->g_644,&p_1505->g_644,&p_1505->g_715,&p_1505->g_715,&p_1505->g_644,&p_1505->g_644},{&p_1505->g_715,&p_1505->g_644,&p_1505->g_644,&p_1505->g_715,&p_1505->g_715,&p_1505->g_644,&p_1505->g_644},{&p_1505->g_715,&p_1505->g_644,&p_1505->g_644,&p_1505->g_715,&p_1505->g_715,&p_1505->g_644,&p_1505->g_644}}};
    int32_t l_732[9] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
    int64_t l_743 = 0x776FA897E18EF3CBL;
    int32_t *l_744[9][1][6] = {{{&p_1505->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1505->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1505->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1505->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1505->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1505->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1505->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1505->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1505->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    struct S0 l_764 = {0x6BFE50928A072572L};
    uint16_t l_765[2];
    int64_t **l_804 = &p_1505->g_401;
    int32_t l_806 = 0L;
    uint8_t **l_809[5][3][3] = {{{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591}},{{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591}},{{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591}},{{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591}},{{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591},{&l_591,&l_591,&l_591}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_584[i] = &p_1505->g_190;
    for (i = 0; i < 2; i++)
        l_765[i] = 65535UL;
    (*p_1505->g_102) |= (safe_rshift_func_int8_t_s_s((-1L), 6));
lbl_682:
    (*l_574) = ((safe_sub_func_uint32_t_u_u((safe_mod_func_int32_t_s_s(((safe_add_func_uint32_t_u_u(p_78, (**p_79))) | ((*l_572) = ((safe_unary_minus_func_uint8_t_u(l_556)) && (safe_sub_func_int64_t_s_s((safe_mod_func_int8_t_s_s((((l_556 >= (((safe_div_func_uint64_t_u_u(18446744073709551615UL, (safe_mul_func_int8_t_s_s(((+(safe_rshift_func_int16_t_s_u(((void*)0 == &p_1505->g_456), 15))) != ((l_556 , (((l_570 = l_567) == (void*)0) , l_570)) != &p_1505->g_190)), 254UL)))) , p_1505->g_284[0]) , (*l_567))) < (**p_1505->g_101)) < 249UL), p_80)), 0xE3D8CE3F368FF23EL))))), l_573)), 5UL)) , (void*)0);
    if ((((safe_add_func_int16_t_s_s((((((safe_mod_func_int32_t_s_s(1L, (**p_79))) >= (*l_570)) < (((safe_unary_minus_func_int16_t_s(p_77)) || ((p_1505->g_62 = p_1505->g_35[1]) , (l_581 < (((*l_570) && (safe_mul_func_int8_t_s_s(((--p_1505->g_190) != (safe_div_func_uint16_t_u_u(((((safe_add_func_int8_t_s_s(1L, ((*l_591) = 0UL))) == p_76) , p_1505->g_154[0][1]) | p_80), p_1505->g_284[0]))), l_592))) >= p_1505->g_7[0])))) & 6UL)) != (**p_79)) | 0x40B7E1F8L), p_1505->g_435)) & p_80) == 0x43C3B335L))
    { /* block id: 254 */
        uint8_t l_605 = 1UL;
        int8_t l_606 = 0x02L;
        int32_t *l_607 = &p_1505->g_7[0];
        int32_t l_620 = 3L;
        (**p_1505->g_101) ^= (((!p_1505->g_7[3]) , (-1L)) , (((((*l_567) , (&p_1505->g_35[7] != &p_1505->g_88)) == (safe_add_func_uint64_t_u_u((safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_u((((-5L) > ((safe_rshift_func_uint8_t_u_s((safe_div_func_int8_t_s_s((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1505->local_1_offset, get_local_id(1), 10), (((l_605 <= (l_605 <= 0x3E0619F5L)) , 0x6700268388516687L) >= l_605))), l_606)), 5)) , p_76)) , p_77), 4)), 2UL)), 0x083EEAE3F7EE79F2L))) , p_76) | p_77));
        (*p_79) = l_607;
        for (l_581 = 16; (l_581 == 18); ++l_581)
        { /* block id: 259 */
            int64_t l_610 = 0x39AA4927AB9E3AE8L;
            int32_t *l_619 = &p_1505->g_7[0];
            (*p_1505->g_164) = ((l_610 , (((p_77 != (l_610 >= p_1505->g_456)) | (safe_lshift_func_uint16_t_u_u(p_76, 14))) == (safe_sub_func_uint8_t_u_u((p_1505->g_154[0][1] || ((0xBFL || (safe_add_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(p_76, 8)), (((*l_607) , (*l_567)) , p_78)))) | (*l_607))), p_80)))) , l_619);
        }
        l_620 = (&p_1505->g_318 == (void*)0);
    }
    else
    { /* block id: 263 */
        int32_t *l_647 = (void*)0;
        uint8_t ***l_680 = &p_1505->g_302[0];
        int32_t l_697 = 6L;
        int32_t l_722[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
        int i;
        if ((**p_79))
        { /* block id: 264 */
            int64_t **l_642 = &p_1505->g_401;
            int32_t l_645[10];
            struct S0 l_649[8][5] = {{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}}};
            int32_t l_674[10] = {(-10L),0x2507C46AL,(-10L),(-10L),0x2507C46AL,(-10L),(-10L),0x2507C46AL,(-10L),(-10L)};
            int32_t *l_678 = &l_674[7];
            uint64_t *l_685 = (void*)0;
            int i, j;
            for (i = 0; i < 10; i++)
                l_645[i] = 4L;
            for (p_1505->g_456 = 0; p_1505->g_456 < 6; p_1505->g_456 += 1)
            {
                p_1505->g_302[p_1505->g_456] = &p_1505->g_303[0];
            }
            for (p_1505->g_124 = 0; (p_1505->g_124 == 53); p_1505->g_124++)
            { /* block id: 268 */
                return p_80;
            }
            for (p_1505->g_437 = 0; (p_1505->g_437 > 20); p_1505->g_437 = safe_add_func_uint64_t_u_u(p_1505->g_437, 5))
            { /* block id: 273 */
                (*p_1505->g_102) ^= 1L;
                return p_76;
            }
            for (p_78 = (-6); (p_78 >= (-4)); ++p_78)
            { /* block id: 279 */
                int32_t l_673[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
                int32_t *l_681 = &l_673[1];
                int32_t *****l_687 = &p_1505->g_318;
                int32_t ******l_686 = &l_687;
                int i;
                for (p_76 = 0; (p_76 < 22); p_76 = safe_add_func_int64_t_s_s(p_76, 6))
                { /* block id: 282 */
                    uint32_t l_639 = 0x29E609BFL;
                    int16_t *l_643 = &p_1505->g_644;
                    int32_t l_646[6][10][4] = {{{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL}},{{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL}},{{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL}},{{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL}},{{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL}},{{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL},{0L,0x7AFD677AL,0x3C9CE864L,0x4913A7EFL}}};
                    struct S0 l_670[6][1] = {{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}}};
                    uint8_t ***l_679 = &p_1505->g_302[0];
                    int i, j, k;
                    (1 + 1);
                }
                if (p_1505->g_124)
                    goto lbl_682;
                for (p_1505->g_88 = 2; (p_1505->g_88 <= 6); p_1505->g_88 += 1)
                { /* block id: 307 */
                    int i, j;
                    if ((*l_678))
                        break;
                    for (p_1505->g_234.f0 = 0; (p_1505->g_234.f0 <= 6); p_1505->g_234.f0 += 1)
                    { /* block id: 311 */
                        uint16_t l_683 = 2UL;
                        uint64_t *l_692 = &l_649[6][2].f0;
                        (**p_1505->g_101) = (p_80 >= (**p_79));
                        (**p_1505->g_101) = ((((p_1505->g_684[0][8][0] = (((*p_1505->g_401) = l_683) > (-8L))) , 0x3F8E983EL) , GROUP_DIVERGE(0, 1)) != ((((((((void*)0 != l_685) | (((*l_678) > ((void*)0 != l_686)) , (((safe_sub_func_uint32_t_u_u(((safe_sub_func_uint8_t_u_u((!(~((((((*l_692) = ((p_77 > 0x5A13BBF6B9375220L) <= p_77)) != 1UL) == p_76) && p_80) ^ p_77))), FAKE_DIVERGE(p_1505->group_0_offset, get_group_id(0), 10))) >= 0x40ECB1B15CFB78B6L), p_77)) | p_76) && (-6L)))) <= (*l_678)) >= 0x7FL) && (**p_79)) <= 0x45A2L) , 0L));
                        (*p_1505->g_101) = (*p_1505->g_101);
                    }
                }
            }
        }
        else
        { /* block id: 321 */
            uint32_t *l_706 = &p_1505->g_684[0][8][0];
            uint32_t **l_707 = (void*)0;
            uint32_t **l_708 = &l_584[0];
            int16_t *l_713 = &p_1505->g_644;
            int16_t *l_714[5] = {&p_1505->g_715,&p_1505->g_715,&p_1505->g_715,&p_1505->g_715,&p_1505->g_715};
            int32_t l_716 = 0L;
            int64_t *l_717 = &p_1505->g_718;
            struct S0 *l_720 = &p_1505->g_234;
            struct S0 **l_721 = &l_720;
            int i;
            (**p_1505->g_101) ^= (((safe_mul_func_uint16_t_u_u(((0x2DL <= (safe_mod_func_int16_t_s_s(l_697, GROUP_DIVERGE(0, 1)))) > (((safe_mod_func_uint16_t_u_u((((void*)0 == &p_1505->g_401) && ((safe_div_func_uint64_t_u_u(((safe_mod_func_int8_t_s_s(((*l_572) ^= (safe_mod_func_int64_t_s_s(((*l_717) &= (((*p_1505->g_401) = 0x6322950BA31B443AL) , (((*p_1505->g_401) = (((*l_706) = (p_1505->g_284[0] != (l_706 == ((*l_708) = l_706)))) && (p_78 ^= (((p_1505->g_715 &= ((safe_add_func_int16_t_s_s((((*l_713) = (safe_rshift_func_int16_t_s_s(p_1505->g_188, 10))) , p_76), p_76)) > p_1505->g_284[0])) != p_1505->g_297) > l_716)))) < p_1505->g_88))), (*l_570)))), 1UL)) | p_77), 0x601B1EC13D85B29DL)) ^ p_80)), p_1505->g_31)) , p_80) ^ (-3L))), GROUP_DIVERGE(2, 1))) , l_719[5][0]) || p_1505->g_297);
            (*l_721) = l_720;
        }
        (*p_1505->g_164) = ((*p_79) = (void*)0);
        (*p_1505->g_102) = (l_697 = (p_78 ^= (l_722[7] &= (FAKE_DIVERGE(p_1505->group_1_offset, get_group_id(1), 10) , l_697))));
    }
    if (((safe_rshift_func_uint16_t_u_u(0UL, 10)) & (safe_rshift_func_int8_t_s_s(((*l_570) , (safe_sub_func_int32_t_s_s(p_76, (p_1505->g_684[0][8][0] = (((*l_567) && (safe_lshift_func_int16_t_s_s(((p_1505->g_715 = (p_76 , (p_1505->g_644 = 9L))) > (+((((((((l_732[4] && ((safe_rshift_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1505->global_1_offset, get_global_id(1), 10), 1)) | (FAKE_DIVERGE(p_1505->global_2_offset, get_global_id(2), 10) > ((((GROUP_DIVERGE(2, 1) | ((((safe_rshift_func_int16_t_s_s(((safe_mod_func_uint16_t_u_u(((l_743 & (*l_570)) | p_77), GROUP_DIVERGE(1, 1))) | FAKE_DIVERGE(p_1505->local_0_offset, get_local_id(0), 10)), 1)) > 1L) == GROUP_DIVERGE(0, 1)) || 0xD4BAC6FCL)) > p_80) || p_1505->g_2) > p_76))) >= (*l_570)) >= p_76) == p_1505->g_234.f0), p_77)), 7)) & (*l_567))) > p_1505->g_684[0][8][0]) && p_76) < (*l_570)) ^ p_78) | (-1L)) != 0x6E30937BAFB3A529L) , (*l_570)))), 7))) | (*l_570)))))), p_1505->g_88))))
    { /* block id: 344 */
        int64_t **l_753[4];
        uint32_t **l_759 = &l_584[0];
        int32_t l_760 = 3L;
        int32_t l_767 = (-8L);
        int i;
        for (i = 0; i < 4; i++)
            l_753[i] = &p_1505->g_401;
        (*p_79) = l_744[7][0][1];
        for (p_1505->g_718 = 19; (p_1505->g_718 != (-17)); p_1505->g_718 = safe_sub_func_uint32_t_u_u(p_1505->g_718, 1))
        { /* block id: 348 */
            int64_t l_756[4][1] = {{0x39034A512C38CC9FL},{0x39034A512C38CC9FL},{0x39034A512C38CC9FL},{0x39034A512C38CC9FL}};
            int32_t l_766 = 1L;
            int i, j;
            (*p_1505->g_164) = (*p_79);
            (**p_1505->g_101) ^= ((safe_sub_func_int64_t_s_s(((*p_1505->g_401) ^= ((!(safe_add_func_uint16_t_u_u(((((l_766 = ((safe_sub_func_uint16_t_u_u((l_753[0] != ((safe_sub_func_uint16_t_u_u((!l_756[1][0]), ((*l_570) >= (((safe_mul_func_uint8_t_u_u(0x78L, (((l_760 = (((*l_574) = l_759) == (void*)0)) <= (safe_unary_minus_func_uint32_t_u(0xD32EC9A9L))) != ((p_78 & ((safe_mul_func_uint8_t_u_u(((l_764 , 0x1E8FL) & p_80), l_756[3][0])) ^ 0x0FC86447DEBB6259L)) | 0xADFAL)))) , p_1505->g_190) == 0x0296L)))) , &p_1505->g_401)), l_765[1])) | FAKE_DIVERGE(p_1505->global_1_offset, get_global_id(1), 10))) == 249UL) || p_80) , p_78), p_76))) ^ FAKE_DIVERGE(p_1505->global_0_offset, get_global_id(0), 10))), 0x49E6E63BB965E66FL)) || l_760);
            l_767 &= (l_764 , l_760);
        }
    }
    else
    { /* block id: 357 */
        uint8_t *l_770[3];
        int32_t l_771 = 0x6296F005L;
        struct S0 l_772 = {0x7B6145C2EE356553L};
        struct S0 *l_773 = &p_1505->g_234;
        uint8_t **l_791[7][1][7] = {{{&p_1505->g_303[0],&l_770[0],&p_1505->g_303[0],(void*)0,&l_770[0],(void*)0,&p_1505->g_303[0]}},{{&p_1505->g_303[0],&l_770[0],&p_1505->g_303[0],(void*)0,&l_770[0],(void*)0,&p_1505->g_303[0]}},{{&p_1505->g_303[0],&l_770[0],&p_1505->g_303[0],(void*)0,&l_770[0],(void*)0,&p_1505->g_303[0]}},{{&p_1505->g_303[0],&l_770[0],&p_1505->g_303[0],(void*)0,&l_770[0],(void*)0,&p_1505->g_303[0]}},{{&p_1505->g_303[0],&l_770[0],&p_1505->g_303[0],(void*)0,&l_770[0],(void*)0,&p_1505->g_303[0]}},{{&p_1505->g_303[0],&l_770[0],&p_1505->g_303[0],(void*)0,&l_770[0],(void*)0,&p_1505->g_303[0]}},{{&p_1505->g_303[0],&l_770[0],&p_1505->g_303[0],(void*)0,&l_770[0],(void*)0,&p_1505->g_303[0]}}};
        uint16_t *l_805[5];
        uint8_t ***l_808[6];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_770[i] = &l_592;
        for (i = 0; i < 5; i++)
            l_805[i] = &l_765[1];
        for (i = 0; i < 6; i++)
            l_808[i] = &p_1505->g_302[0];
        (*l_773) = ((p_77 > (l_771 = ((*l_591)++))) , l_772);
        (**p_1505->g_101) ^= ((safe_lshift_func_int16_t_s_s((p_1505->g_715 &= ((0x67775545C3341D8EL || (p_77 < ((p_1505->g_284[0] |= (((((safe_mod_func_uint64_t_u_u(0x41423C5A9E207EEDL, ((safe_mul_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_s((safe_mod_func_int32_t_s_s((((((((safe_mod_func_int16_t_s_s((6UL && (safe_unary_minus_func_int64_t_s((safe_mul_func_int8_t_s_s(((&l_592 != (l_591 = &l_592)) ^ 0L), (safe_mod_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((safe_lshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(p_80, ((*l_773) , p_80))), l_772.f0)), 14)) & GROUP_DIVERGE(0, 1)) < l_772.f0), p_76)), 0x99L)), l_772.f0))))))), 0xD7A8L)) != p_78) , 0x2864L) < 9L) , p_1505->g_154[0][1]) || 0x1C14D779L) <= l_772.f0), (-9L))), p_76)) | l_771), (*l_567))) | l_771))) , 0x604EL) , l_804) != l_804) && (*l_567))) , l_806))) , p_1505->g_355[0][4][2])), 12)) || p_1505->g_190);
        p_78 &= l_771;
        l_809[3][2][2] = &p_1505->g_303[0];
    }
    return (*p_1505->g_401);
}


/* ------------------------------------------ */
/* 
 * reads : p_1505->g_51 p_1505->g_124 p_1505->g_101 p_1505->g_102 p_1505->g_2 p_1505->g_35 p_1505->g_7 p_1505->g_3 p_1505->g_156 p_1505->g_164 p_1505->g_62 p_1505->g_154 p_1505->g_190 p_1505->g_31 p_1505->g_165 p_1505->g_233 p_1505->g_4 p_1505->g_297 p_1505->g_284
 * writes: p_1505->g_124 p_1505->g_156 p_1505->g_51 p_1505->g_188 p_1505->g_190 p_1505->g_234 p_1505->g_102 p_1505->g_165 p_1505->g_154 p_1505->g_3 p_1505->g_2 p_1505->g_435 p_1505->g_516 p_1505->g_534
 */
int64_t  func_91(int16_t  p_92, int32_t ** p_93, int32_t  p_94, int32_t  p_95, int16_t  p_96, struct S1 * p_1505)
{ /* block id: 24 */
    uint8_t l_115 = 250UL;
    uint64_t *l_118 = &p_1505->g_35[7];
    int16_t l_127[2];
    int32_t **l_166 = &p_1505->g_165;
    int32_t l_179 = 0x440C0AAEL;
    uint32_t l_228 = 0x1BCF4990L;
    int32_t l_251 = 0x43E13164L;
    struct S0 l_264 = {0UL};
    uint32_t l_299[6] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    int32_t ****l_320 = &p_1505->g_319;
    int8_t l_388 = 0x77L;
    int32_t l_390 = 0x71052CF5L;
    int32_t l_392 = 0x7AE984D9L;
    int32_t l_393 = 0x69DF3D12L;
    int32_t l_394 = 0L;
    uint8_t l_434 = 0x0AL;
    int64_t **l_457 = &p_1505->g_401;
    uint16_t l_458 = 0xB8D6L;
    struct S0 **l_477 = (void*)0;
    int32_t l_483 = 1L;
    uint32_t l_506 = 3UL;
    int32_t *l_517 = &l_394;
    uint8_t *l_529 = &l_115;
    uint32_t *l_533 = &p_1505->g_190;
    uint32_t **l_532[9];
    uint32_t *l_537[8] = {&p_1505->g_190,&p_1505->g_190,&p_1505->g_190,&p_1505->g_190,&p_1505->g_190,&p_1505->g_190,&p_1505->g_190,&p_1505->g_190};
    int16_t *l_538 = &l_127[1];
    uint64_t *l_539 = &l_264.f0;
    int i;
    for (i = 0; i < 2; i++)
        l_127[i] = (-3L);
    for (i = 0; i < 9; i++)
        l_532[i] = &l_533;
lbl_518:
    for (p_94 = 11; (p_94 >= 27); p_94 = safe_add_func_uint64_t_u_u(p_94, 1))
    { /* block id: 27 */
        uint64_t *l_119 = (void*)0;
        int32_t l_120 = 0x523CF742L;
        uint64_t l_203 = 0x41D115FE2047E026L;
        int32_t **l_231 = &p_1505->g_165;
        int32_t ***l_250 = (void*)0;
        int32_t ****l_249[5];
        int64_t *l_254[8] = {&p_1505->g_188,&p_1505->g_188,&p_1505->g_188,&p_1505->g_188,&p_1505->g_188,&p_1505->g_188,&p_1505->g_188,&p_1505->g_188};
        int16_t l_294 = 0L;
        int32_t l_326 = 0x46670F88L;
        struct S0 *l_340 = &p_1505->g_234;
        int32_t *l_359 = &l_120;
        uint64_t l_430 = 0xFB62C209327271CBL;
        uint16_t *l_511[2];
        int i;
        for (i = 0; i < 5; i++)
            l_249[i] = &l_250;
        for (i = 0; i < 2; i++)
            l_511[i] = &l_458;
        for (p_92 = 0; (p_92 < (-6)); p_92 = safe_sub_func_int16_t_s_s(p_92, 2))
        { /* block id: 30 */
            uint8_t *l_123 = &p_1505->g_124;
            int32_t l_128[8][8] = {{(-1L),(-1L),1L,0x57AA0E73L,1L,(-1L),(-1L),1L},{(-1L),(-1L),1L,0x57AA0E73L,1L,(-1L),(-1L),1L},{(-1L),(-1L),1L,0x57AA0E73L,1L,(-1L),(-1L),1L},{(-1L),(-1L),1L,0x57AA0E73L,1L,(-1L),(-1L),1L},{(-1L),(-1L),1L,0x57AA0E73L,1L,(-1L),(-1L),1L},{(-1L),(-1L),1L,0x57AA0E73L,1L,(-1L),(-1L),1L},{(-1L),(-1L),1L,0x57AA0E73L,1L,(-1L),(-1L),1L},{(-1L),(-1L),1L,0x57AA0E73L,1L,(-1L),(-1L),1L}};
            int32_t l_155 = 0x78029A73L;
            uint32_t *l_202 = &p_1505->g_190;
            struct S0 l_232 = {0x5C6CDFC5EED3F469L};
            int64_t **l_311[10][7] = {{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]},{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]},{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]},{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]},{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]},{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]},{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]},{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]},{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]},{&l_254[5],&l_254[3],&l_254[4],&l_254[3],(void*)0,(void*)0,&l_254[3]}};
            int32_t *****l_325[5];
            int32_t l_500 = 1L;
            int32_t l_503 = 0x592E97ACL;
            int i, j;
            for (i = 0; i < 5; i++)
                l_325[i] = (void*)0;
            if ((safe_lshift_func_uint16_t_u_u((l_128[7][5] = (safe_mul_func_uint16_t_u_u(((safe_div_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(((0xB12CL | ((l_115 <= ((p_1505->g_51 , (safe_mod_func_uint8_t_u_u((l_120 |= (((p_94 , l_118) != l_119) > p_96)), (safe_sub_func_uint8_t_u_u((((*l_123) ^= 0x14L) , ((*l_123)++)), ((p_96 != p_92) & (**p_1505->g_101))))))) | p_1505->g_35[7])) || p_1505->g_7[0])) ^ l_127[1]), p_1505->g_35[7])), p_1505->g_35[7])) || 0x7157DACBL), 0x7241L))), p_1505->g_7[0])))
            { /* block id: 35 */
                int8_t *l_153[7];
                int32_t l_163 = 0x34B12E90L;
                uint8_t l_193 = 0xFFL;
                int32_t *l_263 = &l_179;
                int32_t ****l_291 = &l_250;
                int32_t l_298 = 0x31715504L;
                uint32_t l_333[9][2] = {{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL}};
                struct S0 *l_342 = &l_232;
                int i, j;
                for (i = 0; i < 7; i++)
                    l_153[i] = &p_1505->g_154[0][1];
                if (((safe_rshift_func_int16_t_s_u((safe_sub_func_uint8_t_u_u((--(*l_123)), (+GROUP_DIVERGE(2, 1)))), (safe_add_func_uint16_t_u_u(l_128[1][6], (safe_mul_func_uint16_t_u_u(((safe_div_func_int32_t_s_s(((safe_add_func_uint8_t_u_u(((~(safe_sub_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s(p_96, p_1505->g_7[0])), 1)), (safe_add_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s((l_155 = p_1505->g_3[0]), 0)) >= (p_1505->g_156 &= p_95)), p_94))))) , (safe_lshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s((((safe_mod_func_int16_t_s_s(((l_163 >= ((l_166 = p_1505->g_164) != p_93)) & p_92), p_1505->g_35[7])) == p_1505->g_51) <= p_96), p_1505->g_35[7])), p_92))), p_1505->g_35[4])) || p_95), l_163)) , p_1505->g_62), 0UL)))))) || FAKE_DIVERGE(p_1505->local_1_offset, get_local_id(1), 10)))
                { /* block id: 40 */
                    uint64_t l_180[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_180[i] = 18446744073709551613UL;
                    for (p_1505->g_51 = 21; (p_1505->g_51 > (-16)); p_1505->g_51--)
                    { /* block id: 43 */
                        int32_t *l_169 = &l_120;
                        int32_t *l_170 = &l_128[6][1];
                        int32_t *l_171 = (void*)0;
                        int32_t *l_172 = &l_128[1][3];
                        int32_t *l_173 = &l_163;
                        int32_t *l_174 = &l_155;
                        int32_t *l_175 = &l_128[5][1];
                        int32_t *l_176 = &l_163;
                        int32_t *l_177 = &l_163;
                        int32_t *l_178[2][2];
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_178[i][j] = &l_128[7][5];
                        }
                        l_180[0]--;
                        return l_120;
                    }
                    for (p_96 = 0; (p_96 <= 1); p_96 += 1)
                    { /* block id: 49 */
                        int64_t *l_187 = &p_1505->g_188;
                        uint32_t *l_189 = &p_1505->g_190;
                        int32_t *l_194[5][6][4] = {{{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51}},{{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51}},{{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51}},{{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51}},{{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51},{&p_1505->g_51,&l_155,&p_1505->g_51,&p_1505->g_51}}};
                        int i, j, k;
                        p_95 |= (+((safe_div_func_uint16_t_u_u(l_180[(p_96 + 2)], 65526UL)) ^ (safe_add_func_int64_t_s_s(((*l_187) = p_1505->g_154[0][1]), ((((((0x77B429FFL && ((*l_189) &= FAKE_DIVERGE(p_1505->local_0_offset, get_local_id(0), 10))) , (((safe_div_func_uint32_t_u_u(p_1505->g_31, ((p_92 | l_120) && (l_128[0][3] ^= ((void*)0 != (*p_1505->g_101)))))) | l_120) == 0x55L)) , l_193) != p_1505->g_2) , p_96) , p_1505->g_35[7])))));
                    }
                }
                else
                { /* block id: 55 */
                    uint8_t *l_197[3][4] = {{&p_1505->g_124,&l_115,&p_1505->g_124,&p_1505->g_124},{&p_1505->g_124,&l_115,&p_1505->g_124,&p_1505->g_124},{&p_1505->g_124,&l_115,&p_1505->g_124,&p_1505->g_124}};
                    uint32_t l_205 = 4294967287UL;
                    int i, j;
                    if ((((((safe_add_func_uint8_t_u_u(((l_197[2][0] == (void*)0) != (((l_193 ^ p_1505->g_7[2]) >= (**p_1505->g_164)) | ((safe_sub_func_uint32_t_u_u((safe_add_func_int64_t_s_s((l_120 > (&p_1505->g_124 != l_197[1][3])), 18446744073709551615UL)), l_193)) && p_1505->g_124))), p_1505->g_35[7])) && p_95) , (void*)0) == l_202) < GROUP_DIVERGE(2, 1)))
                    { /* block id: 56 */
                        return l_203;
                    }
                    else
                    { /* block id: 58 */
                        int32_t *l_204[7][9][2] = {{{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]}},{{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]}},{{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]}},{{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]}},{{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]}},{{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]}},{{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]},{(void*)0,&p_1505->g_7[0]}}};
                        int i, j, k;
                        l_205--;
                        if (l_203)
                            continue;
                    }
                    if ((0x78FA292BBD1EA290L > ((safe_div_func_int8_t_s_s((l_163 = (safe_lshift_func_uint8_t_u_s((((*p_1505->g_165) == 0x65D7B44CL) >= ((safe_div_func_uint8_t_u_u(0xDDL, (safe_sub_func_uint32_t_u_u(0x3D5C9858L, (p_92 < (safe_rshift_func_uint8_t_u_u(((*l_123) = ((safe_sub_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(p_1505->g_3[1], (((p_95 <= (l_128[7][5] >= 0x454C0729L)) < p_1505->g_62) || l_163))), l_228)) <= l_205), l_128[5][0])) > l_128[1][4])), l_128[5][6]))))))) >= p_95)), 0))), l_128[4][3])) < l_128[7][5])))
                    { /* block id: 64 */
                        int32_t ***l_229 = &l_166;
                        int32_t ***l_230 = (void*)0;
                        l_231 = ((*l_229) = p_93);
                        return p_96;
                    }
                    else
                    { /* block id: 68 */
                        (*p_1505->g_233) = l_232;
                        (*p_1505->g_101) = (*p_1505->g_101);
                    }
                }
                for (l_163 = 0; (l_163 <= 1); l_163 += 1)
                { /* block id: 75 */
                    int64_t *l_237 = &p_1505->g_188;
                    int32_t ***l_245 = &p_1505->g_164;
                    int32_t ****l_244 = &l_245;
                    struct S0 *l_328 = &l_264;
                    struct S0 **l_327 = &l_328;
                    struct S0 *l_341[1];
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_341[i] = (void*)0;
                    (1 + 1);
                }
                (*l_166) = (*l_166);
                (*p_1505->g_164) = &p_95;
            }
            else
            { /* block id: 121 */
                uint16_t l_345 = 1UL;
                int32_t l_356 = 6L;
                for (l_120 = 1; (l_120 >= 0); l_120 -= 1)
                { /* block id: 124 */
                    int8_t *l_346 = &p_1505->g_156;
                    int32_t l_353 = 0x263AFEBCL;
                    int8_t *l_354[7][5] = {{(void*)0,&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],(void*)0,(void*)0},{(void*)0,&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],(void*)0,(void*)0},{(void*)0,&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],(void*)0,(void*)0},{(void*)0,&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],(void*)0,(void*)0},{(void*)0,&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],(void*)0,(void*)0},{(void*)0,&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],(void*)0,(void*)0},{(void*)0,&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],(void*)0,(void*)0}};
                    int i, j;
                    p_1505->g_3[l_120] = ((-2L) || (p_1505->g_3[l_120] , (l_356 &= ((((p_1505->g_3[l_120] != (((safe_add_func_int8_t_s_s(((*l_346) = (p_1505->g_154[l_120][l_120] = (~((l_345 |= p_1505->g_154[l_120][l_120]) | (-5L))))), (((safe_div_func_int8_t_s_s(p_1505->g_4, (-1L))) != ((safe_mul_func_int16_t_s_s((((safe_rshift_func_uint8_t_u_u(((void*)0 == &p_93), 6)) && p_1505->g_35[7]) && p_92), p_1505->g_297)) <= l_353)) || (**p_1505->g_164)))) , (*p_1505->g_165)) | 0x706C16CDL)) == 0x3FE0DA037CBB907DL) > 0xA23CL) && 0x12015246862467D1L))));
                    (*p_1505->g_102) = (p_1505->g_51 = (safe_rshift_func_uint16_t_u_u(p_1505->g_154[l_120][l_120], 9)));
                }
                (*l_231) = (l_359 = (*p_1505->g_164));
            }
            for (p_1505->g_156 = 0; (p_1505->g_156 != 22); p_1505->g_156 = safe_add_func_int16_t_s_s(p_1505->g_156, 6))
            { /* block id: 138 */
                int8_t l_370 = 1L;
                int32_t **l_373[5] = {&l_359,&l_359,&l_359,&l_359,&l_359};
                struct S0 l_374[3][10] = {{{18446744073709551615UL},{1UL},{18446744073709551615UL},{18446744073709551615UL},{1UL},{18446744073709551615UL},{18446744073709551615UL},{1UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{1UL},{18446744073709551615UL},{18446744073709551615UL},{1UL},{18446744073709551615UL},{18446744073709551615UL},{1UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{1UL},{18446744073709551615UL},{18446744073709551615UL},{1UL},{18446744073709551615UL},{18446744073709551615UL},{1UL},{18446744073709551615UL},{18446744073709551615UL}}};
                int16_t *l_377 = (void*)0;
                int8_t *l_378[3][8];
                uint32_t l_395 = 1UL;
                struct S0 **l_478[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int64_t l_497 = 0x725DF65DA8DEC17CL;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 8; j++)
                        l_378[i][j] = &p_1505->g_154[0][0];
                }
                (1 + 1);
            }
            for (p_1505->g_435 = 0; (p_1505->g_435 <= 3); ++p_1505->g_435)
            { /* block id: 210 */
                int32_t l_512 = 1L;
                for (l_251 = 0; (l_251 <= 1); l_251 += 1)
                { /* block id: 213 */
                    int i;
                    (**p_1505->g_101) = l_127[l_251];
                    (*p_1505->g_102) |= p_96;
                    for (l_264.f0 = 0; (l_264.f0 <= 1); l_264.f0 += 1)
                    { /* block id: 218 */
                        uint8_t l_513 = 5UL;
                        (*p_1505->g_102) |= ((p_1505->g_284[0] , l_511[0]) != &p_1505->g_284[0]);
                        l_513++;
                    }
                }
                l_517 = (p_1505->g_516[6][7] = ((*p_1505->g_164) = &p_94));
            }
            if (p_94)
                goto lbl_518;
            l_340 = l_340;
        }
        if ((*p_1505->g_102))
            continue;
    }
    (**p_1505->g_101) |= 0x0F04890FL;
    (**p_1505->g_101) &= (safe_sub_func_uint32_t_u_u(((safe_add_func_uint8_t_u_u((((p_92 & (-3L)) , 6UL) != (safe_mul_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(((*l_529) = (safe_lshift_func_int16_t_s_s(p_95, 15))), ((((((safe_div_func_uint64_t_u_u(((p_1505->g_534 = &l_228) == &p_1505->g_190), ((*l_539) |= (safe_add_func_int64_t_s_s(0x4C29D45515B2318EL, (((*l_538) = (l_537[1] != (void*)0)) < p_1505->g_284[0])))))) <= (**l_166)) | 1L) != 1L) >= p_1505->g_154[0][1]) , (*l_517)))), p_96))), 0x5FL)) < p_95), (-5L)));
    for (p_1505->g_124 = 0; (p_1505->g_124 > 26); p_1505->g_124 = safe_add_func_uint64_t_u_u(p_1505->g_124, 3))
    { /* block id: 240 */
        int32_t *l_542 = &l_393;
        uint16_t l_543 = 1UL;
        (*p_1505->g_164) = l_542;
        return l_543;
    }
    return p_94;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S1 c_1506;
    struct S1* p_1505 = &c_1506;
    struct S1 c_1507 = {
        0x7BC75286L, // p_1505->g_2
        {3L,3L}, // p_1505->g_3
        1L, // p_1505->g_4
        {1L,1L,1L,1L}, // p_1505->g_7
        255UL, // p_1505->g_17
        0xF4B3F4B14151C8B9L, // p_1505->g_31
        {0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL}, // p_1505->g_35
        0L, // p_1505->g_51
        0x380B773BL, // p_1505->g_62
        5UL, // p_1505->g_88
        &p_1505->g_2, // p_1505->g_102
        &p_1505->g_102, // p_1505->g_101
        1UL, // p_1505->g_124
        {{0x54L,0x54L},{0x54L,0x54L}}, // p_1505->g_154
        0x21L, // p_1505->g_156
        &p_1505->g_7[1], // p_1505->g_165
        &p_1505->g_165, // p_1505->g_164
        0x1050E94D9BCEA6A7L, // p_1505->g_188
        0x8D307443L, // p_1505->g_190
        {1UL}, // p_1505->g_234
        &p_1505->g_234, // p_1505->g_233
        (void*)0, // p_1505->g_248
        &p_1505->g_234, // p_1505->g_265
        {0xC4C5L}, // p_1505->g_284
        65535UL, // p_1505->g_297
        {&p_1505->g_124}, // p_1505->g_303
        {&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0],&p_1505->g_303[0]}, // p_1505->g_302
        (void*)0, // p_1505->g_319
        &p_1505->g_319, // p_1505->g_318
        &p_1505->g_319, // p_1505->g_321
        {{{0x10L,1L,0x6EL,1L,0x67L},{0x10L,1L,0x6EL,1L,0x67L},{0x10L,1L,0x6EL,1L,0x67L},{0x10L,1L,0x6EL,1L,0x67L},{0x10L,1L,0x6EL,1L,0x67L}},{{0x10L,1L,0x6EL,1L,0x67L},{0x10L,1L,0x6EL,1L,0x67L},{0x10L,1L,0x6EL,1L,0x67L},{0x10L,1L,0x6EL,1L,0x67L},{0x10L,1L,0x6EL,1L,0x67L}}}, // p_1505->g_355
        &p_1505->g_188, // p_1505->g_401
        {&p_1505->g_401,&p_1505->g_401,&p_1505->g_401,&p_1505->g_401}, // p_1505->g_400
        1L, // p_1505->g_435
        0x2FBCL, // p_1505->g_437
        0x858CL, // p_1505->g_456
        {{(void*)0,&p_1505->g_7[0],&p_1505->g_7[3],(void*)0,&p_1505->g_7[3],&p_1505->g_7[0],(void*)0,&p_1505->g_7[1],(void*)0,(void*)0},{(void*)0,&p_1505->g_7[0],&p_1505->g_7[3],(void*)0,&p_1505->g_7[3],&p_1505->g_7[0],(void*)0,&p_1505->g_7[1],(void*)0,(void*)0},{(void*)0,&p_1505->g_7[0],&p_1505->g_7[3],(void*)0,&p_1505->g_7[3],&p_1505->g_7[0],(void*)0,&p_1505->g_7[1],(void*)0,(void*)0},{(void*)0,&p_1505->g_7[0],&p_1505->g_7[3],(void*)0,&p_1505->g_7[3],&p_1505->g_7[0],(void*)0,&p_1505->g_7[1],(void*)0,(void*)0},{(void*)0,&p_1505->g_7[0],&p_1505->g_7[3],(void*)0,&p_1505->g_7[3],&p_1505->g_7[0],(void*)0,&p_1505->g_7[1],(void*)0,(void*)0},{(void*)0,&p_1505->g_7[0],&p_1505->g_7[3],(void*)0,&p_1505->g_7[3],&p_1505->g_7[0],(void*)0,&p_1505->g_7[1],(void*)0,(void*)0},{(void*)0,&p_1505->g_7[0],&p_1505->g_7[3],(void*)0,&p_1505->g_7[3],&p_1505->g_7[0],(void*)0,&p_1505->g_7[1],(void*)0,(void*)0}}, // p_1505->g_516
        &p_1505->g_190, // p_1505->g_534
        9L, // p_1505->g_644
        {{{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL}},{{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL}},{{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL}},{{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL}},{{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL}},{{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL}},{{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL}},{{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL},{1UL,0xC18062C5L,4294967295UL}}}, // p_1505->g_684
        6L, // p_1505->g_715
        0x68FAC71E3F3366F0L, // p_1505->g_718
        {&p_1505->g_302[0],&p_1505->g_302[0],&p_1505->g_302[0],&p_1505->g_302[0],&p_1505->g_302[0],&p_1505->g_302[0]}, // p_1505->g_807
        {0UL}, // p_1505->g_821
        {18446744073709551615UL}, // p_1505->g_822
        {{0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL},{0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL,0xF91D8DFAL}}, // p_1505->g_823
        0x32L, // p_1505->g_856
        0UL, // p_1505->g_942
        &p_1505->g_51, // p_1505->g_1016
        &p_1505->g_644, // p_1505->g_1063
        {&p_1505->g_1063,&p_1505->g_1063,&p_1505->g_1063}, // p_1505->g_1062
        &p_1505->g_1062[0], // p_1505->g_1061
        1UL, // p_1505->g_1145
        &p_1505->g_1145, // p_1505->g_1144
        {{{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0}},{{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0}},{{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0}},{{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0},{&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,&p_1505->g_1144,(void*)0}}}, // p_1505->g_1143
        &p_1505->g_1143[2][0][1], // p_1505->g_1142
        4294967287UL, // p_1505->g_1196
        0x7B48A486L, // p_1505->g_1197
        {&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2],&p_1505->g_355[0][4][2]}, // p_1505->g_1217
        &p_1505->g_1217[2], // p_1505->g_1216
        (void*)0, // p_1505->g_1222
        &p_1505->g_1222, // p_1505->g_1221
        &p_1505->g_821, // p_1505->g_1281
        &p_1505->g_1281, // p_1505->g_1280
        &p_1505->g_1280, // p_1505->g_1279
        {18446744073709551606UL}, // p_1505->g_1296
        &p_1505->g_1296, // p_1505->g_1295
        &p_1505->g_1295, // p_1505->g_1294
        {{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}},{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}},{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}},{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}},{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}},{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}},{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}},{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}},{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}},{{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294},{&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294,&p_1505->g_1294}}}, // p_1505->g_1293
        0x09D2B6C5L, // p_1505->g_1416
        (-4L), // p_1505->g_1463
        {0x73E644FF17540E38L,0x73E644FF17540E38L,0x73E644FF17540E38L,0x73E644FF17540E38L,0x73E644FF17540E38L}, // p_1505->g_1495
        0, // p_1505->v_collective
        sequence_input[get_global_id(0)], // p_1505->global_0_offset
        sequence_input[get_global_id(1)], // p_1505->global_1_offset
        sequence_input[get_global_id(2)], // p_1505->global_2_offset
        sequence_input[get_local_id(0)], // p_1505->local_0_offset
        sequence_input[get_local_id(1)], // p_1505->local_1_offset
        sequence_input[get_local_id(2)], // p_1505->local_2_offset
        sequence_input[get_group_id(0)], // p_1505->group_0_offset
        sequence_input[get_group_id(1)], // p_1505->group_1_offset
        sequence_input[get_group_id(2)], // p_1505->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1506 = c_1507;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1505);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1505->g_2, "p_1505->g_2", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1505->g_3[i], "p_1505->g_3[i]", print_hash_value);

    }
    transparent_crc(p_1505->g_4, "p_1505->g_4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1505->g_7[i], "p_1505->g_7[i]", print_hash_value);

    }
    transparent_crc(p_1505->g_17, "p_1505->g_17", print_hash_value);
    transparent_crc(p_1505->g_31, "p_1505->g_31", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1505->g_35[i], "p_1505->g_35[i]", print_hash_value);

    }
    transparent_crc(p_1505->g_51, "p_1505->g_51", print_hash_value);
    transparent_crc(p_1505->g_62, "p_1505->g_62", print_hash_value);
    transparent_crc(p_1505->g_88, "p_1505->g_88", print_hash_value);
    transparent_crc(p_1505->g_124, "p_1505->g_124", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1505->g_154[i][j], "p_1505->g_154[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1505->g_156, "p_1505->g_156", print_hash_value);
    transparent_crc(p_1505->g_188, "p_1505->g_188", print_hash_value);
    transparent_crc(p_1505->g_190, "p_1505->g_190", print_hash_value);
    transparent_crc(p_1505->g_234.f0, "p_1505->g_234.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1505->g_284[i], "p_1505->g_284[i]", print_hash_value);

    }
    transparent_crc(p_1505->g_297, "p_1505->g_297", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1505->g_355[i][j][k], "p_1505->g_355[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1505->g_435, "p_1505->g_435", print_hash_value);
    transparent_crc(p_1505->g_437, "p_1505->g_437", print_hash_value);
    transparent_crc(p_1505->g_456, "p_1505->g_456", print_hash_value);
    transparent_crc(p_1505->g_644, "p_1505->g_644", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1505->g_684[i][j][k], "p_1505->g_684[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1505->g_715, "p_1505->g_715", print_hash_value);
    transparent_crc(p_1505->g_718, "p_1505->g_718", print_hash_value);
    transparent_crc(p_1505->g_821.f0, "p_1505->g_821.f0", print_hash_value);
    transparent_crc(p_1505->g_822.f0, "p_1505->g_822.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1505->g_823[i][j], "p_1505->g_823[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1505->g_856, "p_1505->g_856", print_hash_value);
    transparent_crc(p_1505->g_942, "p_1505->g_942", print_hash_value);
    transparent_crc(p_1505->g_1145, "p_1505->g_1145", print_hash_value);
    transparent_crc(p_1505->g_1196, "p_1505->g_1196", print_hash_value);
    transparent_crc(p_1505->g_1197, "p_1505->g_1197", print_hash_value);
    transparent_crc(p_1505->g_1296.f0, "p_1505->g_1296.f0", print_hash_value);
    transparent_crc(p_1505->g_1416, "p_1505->g_1416", print_hash_value);
    transparent_crc(p_1505->g_1463, "p_1505->g_1463", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1505->g_1495[i], "p_1505->g_1495[i]", print_hash_value);

    }
    transparent_crc(p_1505->v_collective, "p_1505->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
