// ---fake_divergence -g 77,67,1 -l 11,1,1
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


// Seed: 92

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   int64_t  f1;
   int64_t  f2;
   uint16_t  f3;
   volatile uint64_t  f4;
   volatile int32_t  f5;
};

union U1 {
   volatile uint32_t  f0;
   int16_t  f1;
};

struct S2 {
    int32_t g_3;
    int32_t g_4;
    volatile int32_t g_5;
    volatile int32_t g_6[1];
    volatile int32_t g_7[5][9];
    volatile int32_t g_8;
    int32_t g_9[8];
    int32_t g_11;
    int32_t * volatile g_66;
    int32_t * volatile g_67;
    int32_t g_69;
    int32_t * volatile g_70;
    int32_t g_72;
    int32_t * volatile g_71;
    uint16_t g_98;
    volatile uint16_t g_103;
    volatile int8_t g_113[2];
    int32_t g_118;
    uint64_t g_137;
    int64_t g_145;
    struct S0 g_146;
    volatile int8_t g_158;
    volatile uint64_t g_190;
    volatile uint64_t * volatile g_189;
    volatile uint16_t g_198;
    volatile uint16_t g_199;
    volatile uint16_t g_200;
    volatile uint16_t g_201;
    volatile uint16_t g_202;
    volatile uint16_t *g_197[7][4];
    volatile uint16_t **g_196;
    uint8_t g_230;
    int32_t g_265[5];
    uint16_t g_288[8];
    int16_t g_292;
    union U1 g_320[7][6][3];
    uint64_t *g_340;
    uint64_t **g_339;
    uint32_t g_343;
    struct S0 g_350;
    int32_t * volatile g_354;
    volatile union U1 g_356;
    int32_t *g_403;
    int32_t ** volatile g_402;
    struct S0 g_405;
    int32_t ** volatile g_411;
    struct S0 g_412;
    struct S0 * volatile g_413;
    volatile struct S0 g_426;
    int32_t ** volatile g_428[4];
    union U1 g_434;
    int8_t g_440[8][8][4];
    uint32_t g_442;
    volatile uint16_t *** volatile g_443;
    struct S0 g_480;
    struct S0 * volatile g_481;
    struct S0 * volatile g_491;
    struct S0 * volatile g_492;
    int32_t * volatile g_493[5];
    int32_t * volatile g_494;
    uint64_t g_500;
    uint16_t *g_514[4];
    uint16_t **g_513;
    uint16_t ***g_512;
    volatile struct S0 **g_523;
    int32_t ** volatile g_525;
    struct S0 g_616;
    struct S0 *g_615;
    struct S0 ** volatile g_614;
    struct S0 ** volatile *g_613;
    volatile union U1 g_655;
    uint16_t *g_656;
    struct S0 g_715[2];
    uint64_t ***g_754[5][2][1];
    struct S0 **g_759;
    struct S0 ***g_758[2][8];
    int8_t *g_766[6];
    int8_t ** volatile g_765[3][4][4];
    int32_t ** volatile g_769;
    volatile union U1 g_791;
    int8_t g_859[10];
    volatile int32_t g_860[9][3];
    volatile uint64_t g_886[9];
    int32_t ** volatile g_919;
    int32_t ** volatile g_967[4];
    int32_t ** volatile g_968[3];
    int32_t ** volatile g_969;
    int32_t g_972;
    int32_t g_986;
    int32_t ** volatile g_1062;
    int32_t ** volatile g_1063;
    int32_t * volatile g_1071;
    union U1 *g_1090;
    int32_t * volatile g_1107;
    int32_t * volatile g_1121;
    uint8_t g_1137[5];
    int32_t * volatile g_1140[4][6][2];
    int32_t * volatile g_1141;
    struct S0 g_1142[3];
    struct S0 g_1155;
    int32_t g_1162;
    uint32_t g_1213;
    uint32_t g_1225;
    union U1 g_1232;
    union U1 *g_1231;
    union U1 ** volatile g_1240;
    union U1 ** volatile g_1288;
    union U1 ** volatile g_1289;
    union U1 ** volatile g_1290[3];
    union U1 ** volatile g_1291;
    uint32_t g_1309;
    int32_t * volatile g_1345[10][6];
    int32_t * volatile g_1346[3];
    volatile int32_t g_1367;
    int32_t * volatile g_1398[3][7];
    int32_t * volatile g_1399[9];
    volatile struct S0 g_1420;
    volatile uint32_t * volatile g_1439;
    volatile uint32_t * volatile *g_1438;
    volatile struct S0 g_1443;
    volatile struct S0 g_1541;
    volatile struct S0 g_1542[10];
    struct S0 g_1562;
    int32_t ** volatile g_1602;
    int32_t ** volatile g_1621;
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
int8_t  func_1(struct S2 * p_1623);
uint64_t  func_48(uint16_t  p_49, int32_t * p_50, uint32_t  p_51, int32_t * p_52, struct S2 * p_1623);
uint32_t  func_53(int64_t  p_54, struct S2 * p_1623);
union U1  func_59(int32_t * p_60, int32_t  p_61, uint8_t  p_62, struct S2 * p_1623);
int32_t * func_63(int32_t  p_64, struct S2 * p_1623);
int32_t  func_73(int64_t  p_74, struct S2 * p_1623);
int64_t  func_76(int32_t * p_77, struct S2 * p_1623);
int32_t * func_78(int32_t  p_79, struct S2 * p_1623);
struct S0  func_80(int32_t * p_81, int64_t  p_82, int32_t * p_83, struct S2 * p_1623);
uint32_t  func_84(uint32_t  p_85, int32_t * p_86, uint64_t  p_87, int32_t * p_88, struct S2 * p_1623);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1623->g_3 p_1623->g_11 p_1623->g_69 p_1623->g_71 p_1623->g_8 p_1623->g_103 p_1623->g_98 p_1623->g_9 p_1623->g_72 p_1623->g_118 p_1623->g_113 p_1623->g_145 p_1623->g_146 p_1623->g_189 p_1623->g_196 p_1623->g_198 p_1623->g_230 p_1623->g_197 p_1623->g_7 p_1623->g_190 p_1623->g_4 p_1623->g_5 p_1623->g_199 p_1623->g_320 p_1623->g_265 p_1623->g_481 p_1623->g_350 p_1623->g_492 p_1623->g_494 p_1623->g_715.f2 p_1623->g_1071 p_1623->g_343 p_1623->g_656 p_1623->g_480.f0 p_1623->g_405.f2 p_1623->g_402 p_1623->g_403 p_1623->g_480.f1 p_1623->g_1121 p_1623->g_986 p_1623->g_715.f3 p_1623->g_1137 p_1623->g_1142 p_1623->g_613 p_1623->g_614 p_1623->g_615 p_1623->g_1155 p_1623->g_616.f2 p_1623->g_1063 p_1623->g_1213 p_1623->g_426.f5 p_1623->g_525 p_1623->g_1225 p_1623->g_1231 p_1623->g_201 p_1623->g_1232 p_1623->g_1162 p_1623->g_1240 p_1623->g_440 p_1623->g_411 p_1623->g_339 p_1623->g_340 p_1623->g_137 p_1623->g_292 p_1623->g_412.f2 p_1623->g_480.f2 p_1623->g_1309 p_1623->g_859 p_1623->g_405.f4 p_1623->g_1367 p_1623->g_886 p_1623->g_1420 p_1623->g_1438 p_1623->g_1443 p_1623->g_616 p_1623->g_759 p_1623->g_1541 p_1623->g_919
 * writes: p_1623->g_3 p_1623->g_4 p_1623->g_9 p_1623->g_11 p_1623->g_69 p_1623->g_72 p_1623->g_98 p_1623->g_103 p_1623->g_118 p_1623->g_137 p_1623->g_145 p_1623->g_146.f3 p_1623->g_146.f1 p_1623->g_230 p_1623->g_146 p_1623->g_67 p_1623->g_7 p_1623->g_265 p_1623->g_288 p_1623->g_292 p_1623->g_350.f2 p_1623->g_412.f1 p_1623->g_1090 p_1623->g_343 p_1623->g_1137 p_1623->g_480.f3 p_1623->g_616 p_1623->g_412.f3 p_1623->g_412 p_1623->g_1155.f1 p_1623->g_766 p_1623->g_1213 p_1623->g_1225 p_1623->g_1162 p_1623->g_1231 p_1623->g_1142.f1 p_1623->g_320.f1 p_1623->g_440 p_1623->g_1155.f3 p_1623->g_403 p_1623->g_480.f1 p_1623->g_1309 p_1623->g_350.f0 p_1623->g_405.f2 p_1623->g_1542 p_1623->g_1562 p_1623->g_480.f0
 */
int8_t  func_1(struct S2 * p_1623)
{ /* block id: 4 */
    uint8_t l_2[5][3] = {{0UL,0x50L,249UL},{0UL,0x50L,249UL},{0UL,0x50L,249UL},{0UL,0x50L,249UL},{0UL,0x50L,249UL}};
    int32_t *l_1545 = &p_1623->g_4;
    int i, j;
    for (p_1623->g_3 = 0; (p_1623->g_3 <= 2); p_1623->g_3 += 1)
    { /* block id: 7 */
        int8_t l_56 = 0x6AL;
        int32_t l_1544 = 0x65DDF543L;
        uint64_t *l_1560 = &p_1623->g_137;
        uint64_t l_1561 = 0x1F29AB4C7B549205L;
        int32_t *l_1563 = &p_1623->g_1162;
        uint64_t **l_1597 = &p_1623->g_340;
        if (l_2[4][2])
            break;
        for (p_1623->g_4 = 2; (p_1623->g_4 >= 0); p_1623->g_4 -= 1)
        { /* block id: 11 */
            uint64_t l_45 = 0x4AEDF2FFA36FE543L;
            int32_t l_1548 = 3L;
            uint32_t *l_1549[5] = {&p_1623->g_1225,&p_1623->g_1225,&p_1623->g_1225,&p_1623->g_1225,&p_1623->g_1225};
            int i, j;
            for (p_1623->g_9[5] = 0; (p_1623->g_9[5] <= 2); p_1623->g_9[5] += 1)
            { /* block id: 14 */
                int32_t *l_10 = &p_1623->g_11;
                int32_t *l_12 = &p_1623->g_11;
                int32_t *l_13 = &p_1623->g_11;
                int32_t *l_14 = &p_1623->g_11;
                int32_t *l_15 = &p_1623->g_11;
                int32_t *l_16 = &p_1623->g_11;
                int32_t *l_17 = &p_1623->g_11;
                int32_t *l_18 = &p_1623->g_11;
                int32_t *l_19 = &p_1623->g_11;
                int32_t *l_20 = &p_1623->g_11;
                int32_t *l_21 = &p_1623->g_11;
                int32_t *l_22 = (void*)0;
                int32_t *l_23 = &p_1623->g_11;
                int32_t *l_24 = &p_1623->g_11;
                int32_t *l_25 = &p_1623->g_11;
                int32_t *l_26 = &p_1623->g_11;
                int32_t *l_27 = &p_1623->g_11;
                int32_t *l_28 = &p_1623->g_11;
                int32_t *l_29 = (void*)0;
                int32_t *l_30 = (void*)0;
                int32_t *l_31 = &p_1623->g_11;
                int32_t *l_32 = &p_1623->g_11;
                int32_t *l_33 = &p_1623->g_11;
                int32_t *l_34 = &p_1623->g_11;
                int32_t *l_35 = &p_1623->g_11;
                int32_t *l_36 = &p_1623->g_11;
                int32_t *l_37 = &p_1623->g_11;
                int32_t *l_38 = &p_1623->g_11;
                int32_t *l_39 = &p_1623->g_11;
                int32_t *l_40 = &p_1623->g_11;
                int32_t *l_41 = &p_1623->g_11;
                int32_t *l_42 = &p_1623->g_11;
                int32_t *l_43 = (void*)0;
                int32_t *l_44 = &p_1623->g_11;
                int16_t *l_1543 = (void*)0;
                int i, j;
                ++l_45;
                (*l_12) |= l_2[p_1623->g_3][p_1623->g_3];
                for (l_45 = 0; (l_45 <= 2); l_45 += 1)
                { /* block id: 19 */
                    int32_t *l_1450[10] = {&p_1623->g_3,(void*)0,&p_1623->g_3,&p_1623->g_3,(void*)0,&p_1623->g_3,&p_1623->g_3,(void*)0,&p_1623->g_3,&p_1623->g_3};
                    int i;
                    for (p_1623->g_11 = 2; (p_1623->g_11 >= 0); p_1623->g_11 -= 1)
                    { /* block id: 22 */
                        int64_t l_55 = 0x3DB817BB5C02AC6AL;
                        (**p_1623->g_759) = (((func_48(p_1623->g_3, &p_1623->g_11, func_53((l_55 , (&p_1623->g_9[5] != (l_56 , &p_1623->g_3))), p_1623), l_1450[8], p_1623) && l_45) >= 0x2FL) , (*p_1623->g_615));
                    }
                    if (l_2[3][2])
                    { /* block id: 622 */
                        int64_t *l_1539 = &p_1623->g_1155.f1;
                        int64_t **l_1538[10][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                        int64_t ***l_1540 = &l_1538[6][0];
                        int i, j;
                        (*l_1540) = l_1538[6][0];
                        (*l_32) = l_2[3][2];
                    }
                    else
                    { /* block id: 625 */
                        return l_56;
                    }
                    p_1623->g_1542[1] = p_1623->g_1541;
                }
                l_1544 ^= (l_1543 != (void*)0);
            }
            p_1623->g_1562 = func_80(l_1545, (4294967295UL != (safe_mod_func_uint32_t_u_u((--p_1623->g_1225), (safe_lshift_func_int16_t_s_s((safe_add_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((((**p_1623->g_339) &= (safe_mod_func_uint8_t_u_u(l_2[(p_1623->g_3 + 1)][p_1623->g_3], (func_59((*p_1623->g_919), l_2[(p_1623->g_4 + 2)][p_1623->g_3], (&p_1623->g_500 == (((&l_45 != l_1560) || l_1561) , (void*)0)), p_1623) , FAKE_DIVERGE(p_1623->global_1_offset, get_global_id(1), 10))))) && 0x0FB9C78915264A92L), l_56)) ^ p_1623->g_146.f3), p_1623->g_265[2])), l_2[(p_1623->g_3 + 1)][p_1623->g_3]))))), &l_1544, p_1623);
            l_1563 = (void*)0;
            (*p_1623->g_615) = (**p_1623->g_614);
        }
        for (p_1623->g_480.f0 = 0; (p_1623->g_480.f0 <= 2); p_1623->g_480.f0 += 1)
        { /* block id: 640 */
            int32_t l_1594 = 0x79AF8337L;
            int32_t *l_1595 = (void*)0;
            int32_t *l_1596[5];
            uint64_t l_1598 = 18446744073709551615UL;
            int16_t *l_1599 = &p_1623->g_434.f1;
            uint8_t *l_1600 = &p_1623->g_1137[1];
            uint8_t *l_1601 = &p_1623->g_230;
            int i, j;
            for (i = 0; i < 5; i++)
                l_1596[i] = &p_1623->g_69;
            (1 + 1);
        }
        for (p_1623->g_1225 = (-3); (p_1623->g_1225 < 12); p_1623->g_1225 = safe_add_func_int16_t_s_s(p_1623->g_1225, 8))
        { /* block id: 653 */
            uint32_t l_1607[8][2][10] = {{{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL},{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL}},{{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL},{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL}},{{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL},{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL}},{{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL},{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL}},{{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL},{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL}},{{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL},{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL}},{{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL},{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL}},{{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL},{4294967286UL,0xBC2783E6L,0xB1AA2CAAL,4294967295UL,0x8C07837EL,4294967290UL,0x8B082E02L,2UL,0x778C2098L,0x7B0C3A5DL}}};
            int32_t l_1615 = 0x51A18A01L;
            int i, j, k;
            (1 + 1);
        }
    }
    return (*l_1545);
}


/* ------------------------------------------ */
/* 
 * reads : p_1623->g_350.f0 p_1623->g_405.f2 p_1623->g_1240 p_1623->g_1231 p_1623->g_403 p_1623->g_3 p_1623->g_340 p_1623->g_137 p_1623->g_1162 p_1623->g_614 p_1623->g_615 p_1623->g_189 p_1623->g_190
 * writes: p_1623->g_350.f0 p_1623->g_405.f2 p_1623->g_1309 p_1623->g_1162
 */
uint64_t  func_48(uint16_t  p_49, int32_t * p_50, uint32_t  p_51, int32_t * p_52, struct S2 * p_1623)
{ /* block id: 598 */
    uint8_t l_1451[7][3] = {{0x11L,0x11L,0x63L},{0x11L,0x11L,0x63L},{0x11L,0x11L,0x63L},{0x11L,0x11L,0x63L},{0x11L,0x11L,0x63L},{0x11L,0x11L,0x63L},{0x11L,0x11L,0x63L}};
    int32_t l_1455 = 3L;
    int32_t l_1463 = (-1L);
    int32_t l_1464 = 0L;
    int32_t l_1465 = 0x028925A9L;
    int32_t l_1466 = 0x370E4ED2L;
    int32_t l_1467 = 0x1AF8A309L;
    int32_t l_1468 = (-5L);
    int32_t l_1469[9][5] = {{0x2BBBCE6EL,0x2BBBCE6EL,0x40DE5D28L,(-1L),(-1L)},{0x2BBBCE6EL,0x2BBBCE6EL,0x40DE5D28L,(-1L),(-1L)},{0x2BBBCE6EL,0x2BBBCE6EL,0x40DE5D28L,(-1L),(-1L)},{0x2BBBCE6EL,0x2BBBCE6EL,0x40DE5D28L,(-1L),(-1L)},{0x2BBBCE6EL,0x2BBBCE6EL,0x40DE5D28L,(-1L),(-1L)},{0x2BBBCE6EL,0x2BBBCE6EL,0x40DE5D28L,(-1L),(-1L)},{0x2BBBCE6EL,0x2BBBCE6EL,0x40DE5D28L,(-1L),(-1L)},{0x2BBBCE6EL,0x2BBBCE6EL,0x40DE5D28L,(-1L),(-1L)},{0x2BBBCE6EL,0x2BBBCE6EL,0x40DE5D28L,(-1L),(-1L)}};
    uint32_t l_1472[5] = {0xBED8EC05L,0xBED8EC05L,0xBED8EC05L,0xBED8EC05L,0xBED8EC05L};
    union U1 **l_1479 = &p_1623->g_1090;
    int32_t *l_1496 = &p_1623->g_1162;
    int32_t *l_1497 = &l_1467;
    int32_t *l_1498 = &p_1623->g_69;
    int32_t *l_1499 = &l_1467;
    int32_t *l_1500 = &l_1464;
    int32_t *l_1501 = &l_1455;
    int32_t *l_1502 = &l_1455;
    int32_t *l_1503 = &l_1464;
    int32_t *l_1504 = &l_1467;
    int32_t *l_1505 = &p_1623->g_69;
    int32_t *l_1506 = &l_1463;
    int32_t *l_1507 = (void*)0;
    int32_t *l_1508 = (void*)0;
    int32_t *l_1509 = (void*)0;
    int32_t *l_1510 = (void*)0;
    int32_t *l_1511 = &p_1623->g_72;
    int32_t *l_1512 = &l_1463;
    int32_t *l_1513 = &l_1467;
    int32_t *l_1514 = &l_1465;
    int32_t *l_1515 = (void*)0;
    int32_t *l_1516 = &l_1465;
    int32_t *l_1517 = &l_1466;
    int32_t *l_1518 = (void*)0;
    int32_t *l_1519 = (void*)0;
    int32_t *l_1520 = &l_1469[1][0];
    int32_t *l_1521 = &l_1466;
    int32_t *l_1522 = &l_1455;
    int32_t *l_1523 = (void*)0;
    int32_t *l_1524 = (void*)0;
    int32_t *l_1525 = (void*)0;
    int32_t *l_1526 = &p_1623->g_69;
    int32_t *l_1527 = &l_1466;
    int32_t *l_1528 = &l_1468;
    int32_t *l_1529 = &l_1455;
    int32_t *l_1530 = &l_1466;
    int32_t *l_1531 = &l_1464;
    int32_t *l_1532 = &l_1469[7][3];
    int32_t *l_1533[10][9] = {{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455},{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455},{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455},{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455},{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455},{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455},{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455},{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455},{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455},{&p_1623->g_9[0],&l_1464,&l_1468,&l_1469[2][2],&l_1468,&l_1464,&p_1623->g_9[0],&l_1469[0][0],&l_1455}};
    int8_t l_1534 = 0x31L;
    uint16_t l_1535 = 0x496AL;
    int i, j;
    l_1451[0][1]--;
    if (l_1451[0][1])
    { /* block id: 600 */
        int32_t *l_1454 = &p_1623->g_69;
        int32_t *l_1456 = &l_1455;
        int32_t *l_1457 = &l_1455;
        int32_t *l_1458 = &l_1455;
        int32_t *l_1459 = &p_1623->g_72;
        int32_t *l_1460 = &p_1623->g_69;
        int32_t *l_1461 = &p_1623->g_1162;
        int32_t *l_1462[3];
        int32_t l_1470 = 8L;
        int32_t l_1471 = 1L;
        union U1 **l_1478 = &p_1623->g_1231;
        int i;
        for (i = 0; i < 3; i++)
            l_1462[i] = &p_1623->g_1162;
        l_1472[0]--;
        for (p_1623->g_350.f0 = 18; (p_1623->g_350.f0 > 25); p_1623->g_350.f0 = safe_add_func_uint16_t_u_u(p_1623->g_350.f0, 2))
        { /* block id: 604 */
            union U1 **l_1477 = &p_1623->g_1090;
            l_1479 = (l_1478 = l_1477);
        }
        for (p_1623->g_405.f2 = 2; (p_1623->g_405.f2 <= 8); ++p_1623->g_405.f2)
        { /* block id: 610 */
            int32_t l_1494[5][3][2] = {{{0L,(-2L)},{0L,(-2L)},{0L,(-2L)}},{{0L,(-2L)},{0L,(-2L)},{0L,(-2L)}},{{0L,(-2L)},{0L,(-2L)},{0L,(-2L)}},{{0L,(-2L)},{0L,(-2L)},{0L,(-2L)}},{{0L,(-2L)},{0L,(-2L)},{0L,(-2L)}}};
            int i, j, k;
            (*l_1461) &= (safe_sub_func_int32_t_s_s((((safe_rshift_func_int8_t_s_s(9L, p_49)) || ((p_51 , (void*)0) != (*p_1623->g_1240))) <= ((safe_mod_func_int32_t_s_s(((safe_sub_func_uint16_t_u_u(((255UL == FAKE_DIVERGE(p_1623->group_1_offset, get_group_id(1), 10)) > (((+((l_1472[3] ^ (safe_lshift_func_uint16_t_u_s(((*l_1456) = ((p_1623->g_1309 = ((safe_div_func_int64_t_s_s((p_51 > (*p_1623->g_403)), (*p_1623->g_340))) >= (*p_1623->g_403))) & 0x34168EB7L)), 12))) && p_51)) , 5UL) | l_1494[4][1][0])), p_51)) <= p_49), (-1L))) || (*p_1623->g_340))), p_1623->g_405.f2));
        }
    }
    else
    { /* block id: 615 */
        struct S0 *l_1495 = &p_1623->g_1155;
        l_1495 = (*p_1623->g_614);
    }
    l_1535++;
    return (*p_1623->g_189);
}


/* ------------------------------------------ */
/* 
 * reads : p_1623->g_69 p_1623->g_71 p_1623->g_8 p_1623->g_103 p_1623->g_98 p_1623->g_9 p_1623->g_72 p_1623->g_118 p_1623->g_11 p_1623->g_113 p_1623->g_3 p_1623->g_145 p_1623->g_146 p_1623->g_189 p_1623->g_196 p_1623->g_198 p_1623->g_230 p_1623->g_197 p_1623->g_7 p_1623->g_190 p_1623->g_4 p_1623->g_5 p_1623->g_199 p_1623->g_320 p_1623->g_265 p_1623->g_481 p_1623->g_350 p_1623->g_492 p_1623->g_494 p_1623->g_715.f2 p_1623->g_1071 p_1623->g_343 p_1623->g_656 p_1623->g_480.f0 p_1623->g_405.f2 p_1623->g_402 p_1623->g_403 p_1623->g_480.f1 p_1623->g_1121 p_1623->g_986 p_1623->g_715.f3 p_1623->g_1137 p_1623->g_1142 p_1623->g_613 p_1623->g_614 p_1623->g_615 p_1623->g_1155 p_1623->g_616.f2 p_1623->g_1063 p_1623->g_1213 p_1623->g_426.f5 p_1623->g_525 p_1623->g_1225 p_1623->g_1231 p_1623->g_201 p_1623->g_1232 p_1623->g_1162 p_1623->g_1240 p_1623->g_440 p_1623->g_411 p_1623->g_339 p_1623->g_340 p_1623->g_137 p_1623->g_292 p_1623->g_412.f2 p_1623->g_480.f2 p_1623->g_1309 p_1623->g_859 p_1623->g_405.f4 p_1623->g_1367 p_1623->g_886 p_1623->g_1420 p_1623->g_1438 p_1623->g_1443
 * writes: p_1623->g_69 p_1623->g_72 p_1623->g_98 p_1623->g_103 p_1623->g_118 p_1623->g_137 p_1623->g_145 p_1623->g_146.f3 p_1623->g_146.f1 p_1623->g_230 p_1623->g_146 p_1623->g_67 p_1623->g_7 p_1623->g_265 p_1623->g_288 p_1623->g_292 p_1623->g_350.f2 p_1623->g_412.f1 p_1623->g_1090 p_1623->g_343 p_1623->g_1137 p_1623->g_480.f3 p_1623->g_616 p_1623->g_412.f3 p_1623->g_412 p_1623->g_1155.f1 p_1623->g_766 p_1623->g_1213 p_1623->g_1225 p_1623->g_1162 p_1623->g_1231 p_1623->g_1142.f1 p_1623->g_320.f1 p_1623->g_440 p_1623->g_1155.f3 p_1623->g_403 p_1623->g_480.f1 p_1623->g_1309
 */
uint32_t  func_53(int64_t  p_54, struct S2 * p_1623)
{ /* block id: 23 */
    uint8_t l_1228[4][10] = {{0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L},{0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L},{0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L},{0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L}};
    uint16_t *l_1233 = &p_1623->g_715[0].f0;
    int8_t *l_1234 = &p_1623->g_440[3][1][1];
    uint64_t l_1235 = 0UL;
    int32_t l_1257 = 0L;
    int32_t l_1258 = 1L;
    int32_t l_1259[2];
    int32_t l_1283 = 0L;
    uint16_t l_1285 = 5UL;
    uint32_t *l_1301[4] = {&p_1623->g_343,&p_1623->g_343,&p_1623->g_343,&p_1623->g_343};
    uint16_t ****l_1315[9] = {&p_1623->g_512,&p_1623->g_512,&p_1623->g_512,&p_1623->g_512,&p_1623->g_512,&p_1623->g_512,&p_1623->g_512,&p_1623->g_512,&p_1623->g_512};
    uint16_t *****l_1314[3];
    uint64_t **l_1339 = &p_1623->g_340;
    uint32_t l_1394 = 0UL;
    struct S0 **l_1431 = &p_1623->g_615;
    uint16_t l_1447[9][4][3] = {{{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L}},{{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L}},{{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L}},{{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L}},{{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L}},{{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L}},{{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L}},{{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L}},{{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L},{0x3D0EL,0xEFCFL,0xA2D9L}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1259[i] = 7L;
    for (i = 0; i < 3; i++)
        l_1314[i] = &l_1315[0];
    for (p_54 = 24; (p_54 <= (-2)); p_54 = safe_sub_func_uint16_t_u_u(p_54, 2))
    { /* block id: 26 */
        int16_t l_65 = (-1L);
        uint32_t *l_1224[4][7][9] = {{{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,&p_1623->g_1225,(void*)0,(void*)0}}};
        int32_t *l_1238 = &p_1623->g_1162;
        int32_t l_1239 = 0x63234AABL;
        int32_t l_1260 = 0L;
        int32_t l_1263 = 0x76A8BE5EL;
        int32_t l_1264 = (-1L);
        int32_t l_1272 = (-1L);
        int32_t l_1273 = 0x0B2E11A8L;
        int32_t l_1274 = 0x2F2CAFF7L;
        uint8_t l_1275 = 1UL;
        int64_t l_1279 = 0x343EE29528C5BF90L;
        int32_t l_1280 = 0x76D84699L;
        int32_t l_1281 = 1L;
        int32_t l_1282 = 1L;
        int32_t l_1284[10][1][3] = {{{0x296A1BAAL,4L,0x296A1BAAL}},{{0x296A1BAAL,4L,0x296A1BAAL}},{{0x296A1BAAL,4L,0x296A1BAAL}},{{0x296A1BAAL,4L,0x296A1BAAL}},{{0x296A1BAAL,4L,0x296A1BAAL}},{{0x296A1BAAL,4L,0x296A1BAAL}},{{0x296A1BAAL,4L,0x296A1BAAL}},{{0x296A1BAAL,4L,0x296A1BAAL}},{{0x296A1BAAL,4L,0x296A1BAAL}},{{0x296A1BAAL,4L,0x296A1BAAL}}};
        int16_t l_1302 = (-1L);
        int32_t l_1364 = 1L;
        uint16_t *****l_1365 = &l_1315[4];
        uint64_t ***l_1366 = &p_1623->g_339;
        union U1 *l_1406 = &p_1623->g_320[1][1][1];
        int8_t l_1446 = 0x51L;
        int i, j, k;
        if ((l_1239 = ((*l_1238) |= (((func_59(func_63(l_65, p_1623), ((--p_1623->g_1225) , (((((l_1228[1][5] == ((safe_add_func_int64_t_s_s(((((void*)0 != p_1623->g_1231) , (((0x3D14C9F0E0B4CE21L & (~((void*)0 != l_1233))) , l_1234) != (void*)0)) || 1L), p_1623->g_1142[2].f2)) && l_1228[1][5])) != p_54) ^ FAKE_DIVERGE(p_1623->local_1_offset, get_local_id(1), 10)) || l_1235) , 0x5E227A79L)), l_65, p_1623) , p_54) & (-8L)) > l_65))))
        { /* block id: 505 */
            uint32_t l_1247[5][5][4] = {{{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL}},{{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL}},{{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL}},{{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL}},{{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL}}};
            uint16_t ***l_1248 = &p_1623->g_513;
            int32_t l_1253[4] = {0x46D2EF77L,0x46D2EF77L,0x46D2EF77L,0x46D2EF77L};
            int i, j, k;
            (*p_1623->g_1240) = &p_1623->g_1232;
            if ((1L < (safe_mul_func_uint32_t_u_u((safe_add_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(0x78L, (l_1247[4][3][2] == 65535UL))), GROUP_DIVERGE(2, 1))), ((void*)0 == l_1248)))))
            { /* block id: 507 */
                int64_t l_1255 = 0x136FB34C04DE72AFL;
                int32_t l_1256 = 5L;
                int32_t l_1261 = 5L;
                int32_t l_1262 = 0x110B1B0CL;
                int32_t l_1265 = 0x2C266E17L;
                int32_t l_1266[7];
                uint16_t l_1267 = 4UL;
                int i;
                for (i = 0; i < 7; i++)
                    l_1266[i] = (-1L);
                for (p_1623->g_146.f1 = 2; (p_1623->g_146.f1 >= 0); p_1623->g_146.f1 -= 1)
                { /* block id: 510 */
                    int32_t *l_1249 = &l_1239;
                    int32_t *l_1250 = (void*)0;
                    int32_t *l_1251 = &l_1239;
                    int32_t *l_1252 = &p_1623->g_69;
                    int32_t *l_1254[9][10][1] = {{{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]}},{{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]}},{{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]}},{{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]}},{{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]}},{{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]}},{{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]}},{{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]}},{{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]},{&l_1253[0]}}};
                    int i, j, k;
                    ++l_1267;
                }
            }
            else
            { /* block id: 513 */
                int32_t *l_1270 = &l_1259[1];
                int32_t *l_1271[3][7] = {{&l_1253[1],(void*)0,&p_1623->g_9[5],&p_1623->g_4,(void*)0,&p_1623->g_4,&p_1623->g_9[5]},{&l_1253[1],(void*)0,&p_1623->g_9[5],&p_1623->g_4,(void*)0,&p_1623->g_4,&p_1623->g_9[5]},{&l_1253[1],(void*)0,&p_1623->g_9[5],&p_1623->g_4,(void*)0,&p_1623->g_4,&p_1623->g_9[5]}};
                int i, j;
                l_1275++;
                if (p_54)
                { /* block id: 515 */
                    return p_1623->g_440[7][2][0];
                }
                else
                { /* block id: 517 */
                    return p_1623->g_1142[2].f1;
                }
            }
        }
        else
        { /* block id: 521 */
            int32_t **l_1278[2][6];
            union U1 **l_1292 = &p_1623->g_1090;
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 6; j++)
                    l_1278[i][j] = &p_1623->g_403;
            }
            l_1238 = (void*)0;
            --l_1285;
            (*l_1292) = (*p_1623->g_1240);
        }
        if (((-10L) > ((**p_1623->g_411) != ((p_1623->g_265[4] && p_54) != ((0x9051EE59A08264A5L || ((**p_1623->g_339)--)) <= ((safe_mul_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(0x6E65D68067D562DEL, (((((safe_mod_func_uint64_t_u_u(((((((l_1259[1] | ((p_54 , (((l_65 <= (-6L)) || p_1623->g_9[5]) , l_1301[2])) != l_1301[2])) || (-1L)) || 0x6309L) > p_54) , l_1302) == 0UL), p_1623->g_292)) , 0xA0L) != p_54) == p_1623->g_412.f2) == p_1623->g_480.f2))), 0xD7EBL)) ^ 0x347EL))))))
        { /* block id: 527 */
            uint64_t l_1320 = 18446744073709551609UL;
            uint32_t l_1343 = 0x19BF6243L;
            uint8_t l_1344 = 1UL;
            int32_t l_1350 = 1L;
            uint32_t l_1375[5];
            int32_t l_1379 = 0x33A74922L;
            int32_t l_1380 = 5L;
            int32_t l_1383 = (-6L);
            int32_t l_1384 = 1L;
            int32_t l_1385 = 0x376FF834L;
            int32_t l_1386 = 0L;
            int32_t l_1387 = (-1L);
            int32_t l_1388 = 1L;
            int32_t l_1389 = 0x060B5C25L;
            int32_t l_1390 = 0x30E67DF2L;
            int32_t l_1391 = 5L;
            int32_t l_1392 = 0x2173FA68L;
            int32_t l_1393 = 0x46B710F7L;
            int i;
            for (i = 0; i < 5; i++)
                l_1375[i] = 0xCBB36BBAL;
            if ((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(((p_54 == 8L) <= (p_54 >= (((safe_sub_func_int64_t_s_s((p_1623->g_1309 == (safe_div_func_int32_t_s_s(((**p_1623->g_411) , ((safe_mod_func_uint32_t_u_u(((l_1314[1] = l_1314[1]) == (void*)0), ((safe_lshift_func_uint16_t_u_s((p_54 | ((safe_rshift_func_uint16_t_u_s(p_54, 7)) , p_54)), 3)) | (-6L)))) != 1L)), GROUP_DIVERGE(2, 1)))), 0L)) & p_54) & GROUP_DIVERGE(2, 1)))), l_1320)), p_1623->g_859[2])))
            { /* block id: 529 */
                int32_t *l_1321 = &l_1284[9][0][1];
                int32_t *l_1322 = &l_1274;
                (*l_1322) |= ((*l_1321) |= (**p_1623->g_402));
                return p_54;
            }
            else
            { /* block id: 533 */
                uint64_t l_1332 = 0UL;
                uint64_t **l_1340 = &p_1623->g_340;
                int32_t l_1341 = 7L;
                int32_t l_1356[4] = {1L,1L,1L,1L};
                int i;
                for (p_1623->g_343 = (-13); (p_1623->g_343 == 25); p_1623->g_343++)
                { /* block id: 536 */
                    uint64_t l_1327[4][8][2] = {{{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L}},{{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L}},{{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L}},{{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L},{18446744073709551615UL,0x9832683499781C26L}}};
                    int32_t l_1351 = 5L;
                    uint16_t l_1352 = 0x0117L;
                    uint16_t *****l_1363 = &l_1315[5];
                    uint8_t *l_1368 = &p_1623->g_1137[1];
                    int32_t l_1381 = 1L;
                    int32_t l_1382[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
                    int i, j, k;
                    for (l_1275 = 0; (l_1275 > 56); l_1275 = safe_add_func_int32_t_s_s(l_1275, 4))
                    { /* block id: 539 */
                        int32_t *l_1328 = &p_1623->g_11;
                        int64_t *l_1331 = &p_1623->g_1142[2].f1;
                        int16_t *l_1342 = &p_1623->g_320[4][4][2].f1;
                        int32_t l_1347 = (-2L);
                        l_1327[2][3][1] = l_1228[1][5];
                        l_1332 = ((l_1320 > (((*l_1331) = ((&p_1623->g_766[1] == (func_80(l_1328, (((void*)0 == (*p_1623->g_525)) , ((*l_1331) = (((**p_1623->g_339) != l_1327[2][3][1]) <= (safe_lshift_func_uint8_t_u_s((p_1623->g_146.f4 , 0xFCL), 1))))), &p_1623->g_72, p_1623) , &p_1623->g_766[2])) >= l_1327[2][3][1])) <= (*l_1328))) != p_54);
                        p_1623->g_69 &= ((safe_add_func_int64_t_s_s((((p_54 <= (safe_rshift_func_uint8_t_u_s(0xD6L, (p_1623->g_11 >= ((((0x4935L >= (((*l_1342) = ((safe_div_func_int16_t_s_s((-7L), ((l_1341 &= ((l_1339 == l_1340) <= p_1623->g_405.f4)) ^ GROUP_DIVERGE(0, 1)))) != (GROUP_DIVERGE(2, 1) && l_1320))) > l_1343)) , l_1344) >= 0x7FL) == (*p_1623->g_403)))))) ^ l_1327[2][3][1]) , p_54), FAKE_DIVERGE(p_1623->group_0_offset, get_group_id(0), 10))) == 1UL);
                        l_1347 = ((void*)0 != &p_1623->g_972);
                    }
                    if ((safe_mod_func_uint32_t_u_u((++l_1352), (safe_unary_minus_func_int8_t_s(((((~((((p_54 < ((*l_1368) = (((l_1341 != GROUP_DIVERGE(2, 1)) , ((*l_1234) = l_1356[0])) && (0x74565574D212A7A7L | (safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((safe_rshift_func_uint8_t_u_u((p_54 != ((l_1363 != ((((((*p_1623->g_340) = l_1364) == ((l_1350 ^= p_54) && ((0x0B18L >= 1L) ^ l_1228[3][3]))) , (*p_1623->g_339)) == (*l_1340)) , l_1365)) ^ l_1356[0])), 3)) , (void*)0) != l_1366), l_1343)), p_1623->g_1367)))))) && 1UL) , p_54) || p_54)) <= 0xC664B502FA32A3D8L) , p_54) , 1L))))))
                    { /* block id: 554 */
                        int32_t *l_1369 = (void*)0;
                        int32_t *l_1370 = &p_1623->g_72;
                        int32_t *l_1371 = &l_1257;
                        int32_t *l_1372 = &l_1239;
                        int32_t *l_1373 = &p_1623->g_1162;
                        int32_t *l_1374[8][7] = {{&p_1623->g_9[3],&l_1239,&l_1274,&l_1273,&l_1274,&p_1623->g_9[3],&l_1273},{&p_1623->g_9[3],&l_1239,&l_1274,&l_1273,&l_1274,&p_1623->g_9[3],&l_1273},{&p_1623->g_9[3],&l_1239,&l_1274,&l_1273,&l_1274,&p_1623->g_9[3],&l_1273},{&p_1623->g_9[3],&l_1239,&l_1274,&l_1273,&l_1274,&p_1623->g_9[3],&l_1273},{&p_1623->g_9[3],&l_1239,&l_1274,&l_1273,&l_1274,&p_1623->g_9[3],&l_1273},{&p_1623->g_9[3],&l_1239,&l_1274,&l_1273,&l_1274,&p_1623->g_9[3],&l_1273},{&p_1623->g_9[3],&l_1239,&l_1274,&l_1273,&l_1274,&p_1623->g_9[3],&l_1273},{&p_1623->g_9[3],&l_1239,&l_1274,&l_1273,&l_1274,&p_1623->g_9[3],&l_1273}};
                        int i, j;
                        l_1375[3]++;
                        if (p_54)
                            break;
                        return l_1375[3];
                    }
                    else
                    { /* block id: 558 */
                        int32_t *l_1378[5][8][1] = {{{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281}},{{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281}},{{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281}},{{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281}},{{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281},{&l_1281}}};
                        int32_t **l_1397 = &l_1378[1][0][0];
                        int i, j, k;
                        l_1394++;
                        (*l_1397) = (void*)0;
                    }
                }
                for (p_1623->g_1155.f3 = 0; (p_1623->g_1155.f3 <= 1); p_1623->g_1155.f3 += 1)
                { /* block id: 565 */
                    int32_t l_1418[10] = {0x17E93E67L,0x17E93E67L,0x17E93E67L,0x17E93E67L,0x17E93E67L,0x17E93E67L,0x17E93E67L,0x17E93E67L,0x17E93E67L,0x17E93E67L};
                    int32_t l_1419 = 1L;
                    int64_t *l_1432[8] = {&p_1623->g_145,&p_1623->g_480.f1,&p_1623->g_145,&p_1623->g_145,&p_1623->g_480.f1,&p_1623->g_145,&p_1623->g_145,&p_1623->g_480.f1};
                    struct S0 **l_1433 = &p_1623->g_615;
                    int32_t *l_1440 = &l_1281;
                    int i;
                    for (p_1623->g_146.f0 = 0; (p_1623->g_146.f0 <= 1); p_1623->g_146.f0 += 1)
                    { /* block id: 568 */
                        int32_t *l_1400 = &l_1388;
                        int32_t **l_1405 = &l_1238;
                        union U1 **l_1407 = &p_1623->g_1090;
                        int i, j, k;
                        (*l_1400) ^= l_1259[p_1623->g_146.f0];
                        l_1419 ^= (safe_div_func_int64_t_s_s(((!((((safe_mul_func_uint16_t_u_u((p_1623->g_288[(p_1623->g_1155.f3 + 1)] = (((func_80(((*l_1405) = &l_1280), ((((((*l_1407) = l_1406) != (*p_1623->g_1240)) , (((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((p_1623->g_886[3] == (safe_add_func_uint8_t_u_u(0xBCL, (p_54 < (safe_mul_func_uint64_t_u_u(p_54, (((safe_add_func_int32_t_s_s((l_1257 < 0x66F7L), l_1418[3])) > p_54) == (*p_1623->g_656)))))))), l_1418[3])), l_1391)) | p_54) == p_54)) < p_54) && p_1623->g_3), &l_1390, p_1623) , 0x082178FDL) , p_1623->g_1155.f3) | p_54)), 0x46C5L)) && 0x7DL) >= l_1418[0]) , (*p_1623->g_403))) != l_1279), 0x784A51FAB7A5C83FL));
                        (*p_1623->g_402) = (*p_1623->g_1063);
                        (*p_1623->g_615) = p_1623->g_1420;
                    }
                    (*l_1440) ^= (safe_rshift_func_int8_t_s_s((0x5560L & (((safe_rshift_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u((((l_1341 &= ((l_1259[p_1623->g_1155.f3] || ((safe_mod_func_int8_t_s_s((((safe_rshift_func_int16_t_s_u(((((p_54 , l_1431) == ((p_1623->g_480.f1 |= 9L) , l_1433)) >= (((safe_lshift_func_int8_t_s_u(((*l_1234) = (safe_mul_func_int8_t_s_s((p_1623->g_146.f4 == (p_1623->g_1438 == (void*)0)), l_1379))), 2)) < (-1L)) == 0x393E4683L)) | l_1391), 13)) , 0x5CBEL) < 0xBF7DL), 0xD3L)) || l_1344)) <= l_1356[0])) == 1UL) && (-2L)), 4)), FAKE_DIVERGE(p_1623->local_0_offset, get_local_id(0), 10))) > 0x56L) > p_54)), l_1332));
                    (*l_1440) &= p_54;
                    for (p_1623->g_1309 = 0; (p_1623->g_1309 <= 1); p_1623->g_1309 += 1)
                    { /* block id: 584 */
                        int i, j, k;
                        (*l_1440) = (safe_rshift_func_uint8_t_u_s(p_1623->g_1420.f1, l_1257));
                        if (p_54)
                            break;
                        return p_1623->g_1367;
                    }
                }
            }
        }
        else
        { /* block id: 591 */
            int32_t l_1444 = 0x4FCA58B5L;
            int32_t *l_1445[1];
            int i;
            for (i = 0; i < 1; i++)
                l_1445[i] = &l_1263;
            (*p_1623->g_615) = p_1623->g_1443;
            ++l_1447[0][1][2];
        }
        if (l_1235)
            continue;
    }
    return p_1623->g_480.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1623->g_201 p_1623->g_1071 p_1623->g_1231 p_1623->g_1232
 * writes: p_1623->g_72
 */
union U1  func_59(int32_t * p_60, int32_t  p_61, uint8_t  p_62, struct S2 * p_1623)
{ /* block id: 499 */
    uint16_t l_1236[5] = {65534UL,65534UL,65534UL,65534UL,65534UL};
    int32_t *l_1237[9][2];
    int i, j;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
            l_1237[i][j] = &p_1623->g_72;
    }
    (*p_1623->g_1071) = (p_1623->g_201 && (0x4A44E6403FFFB5B6L & (l_1236[0] = 6UL)));
    return (*p_1623->g_1231);
}


/* ------------------------------------------ */
/* 
 * reads : p_1623->g_69 p_1623->g_71 p_1623->g_8 p_1623->g_103 p_1623->g_98 p_1623->g_9 p_1623->g_72 p_1623->g_118 p_1623->g_11 p_1623->g_113 p_1623->g_3 p_1623->g_145 p_1623->g_146 p_1623->g_189 p_1623->g_196 p_1623->g_198 p_1623->g_230 p_1623->g_197 p_1623->g_7 p_1623->g_190 p_1623->g_4 p_1623->g_5 p_1623->g_199 p_1623->g_292 p_1623->g_320 p_1623->g_265 p_1623->g_350.f2 p_1623->g_481 p_1623->g_350 p_1623->g_492 p_1623->g_494 p_1623->g_715.f2 p_1623->g_1071 p_1623->g_343 p_1623->g_656 p_1623->g_480.f0 p_1623->g_405.f2 p_1623->g_402 p_1623->g_403 p_1623->g_480.f1 p_1623->g_1121 p_1623->g_986 p_1623->g_715.f3 p_1623->g_1137 p_1623->g_480.f3 p_1623->g_1142 p_1623->g_613 p_1623->g_614 p_1623->g_615 p_1623->g_616.f0 p_1623->g_1155 p_1623->g_616.f2 p_1623->g_1063 p_1623->g_1213 p_1623->g_426.f5 p_1623->g_525
 * writes: p_1623->g_69 p_1623->g_72 p_1623->g_98 p_1623->g_103 p_1623->g_118 p_1623->g_137 p_1623->g_145 p_1623->g_146.f3 p_1623->g_146.f1 p_1623->g_230 p_1623->g_146 p_1623->g_67 p_1623->g_7 p_1623->g_265 p_1623->g_288 p_1623->g_292 p_1623->g_350.f2 p_1623->g_412.f1 p_1623->g_1090 p_1623->g_343 p_1623->g_1137 p_1623->g_480.f3 p_1623->g_616 p_1623->g_412.f3 p_1623->g_412 p_1623->g_1155.f1 p_1623->g_766 p_1623->g_1213
 */
int32_t * func_63(int32_t  p_64, struct S2 * p_1623)
{ /* block id: 27 */
    int32_t *l_68 = &p_1623->g_69;
    uint64_t l_75 = 0xB567DFB9DB650F83L;
    uint16_t *l_97 = &p_1623->g_98;
    int32_t l_1108 = 0x1BA236F6L;
    int32_t l_1173 = (-1L);
    uint64_t **l_1195 = &p_1623->g_340;
    uint8_t *l_1199[10][9][2] = {{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}},{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}},{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}},{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}},{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}},{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}},{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}},{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}},{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}},{{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]},{&p_1623->g_230,&p_1623->g_1137[2]}}};
    uint16_t ***l_1218 = (void*)0;
    int i, j, k;
    (*l_68) ^= ((-1L) < p_64);
    (*p_1623->g_71) = ((*l_68) = (!(*l_68)));
    (*p_1623->g_1071) = ((*l_68) = func_73((l_75 | func_76(func_78(((((*l_68) &= p_64) || ((func_80(&p_1623->g_9[5], (((func_84((*l_68), l_68, (((*l_97) = (safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(0x6858L, p_64)), (safe_lshift_func_int16_t_s_u((+(!(0x97682755L <= ((safe_mul_func_uint8_t_u_u(p_64, 0x40L)) >= p_1623->g_8)))), 11))))) <= (*l_68)), l_68, p_1623) <= p_1623->g_9[5]) && 65528UL) >= p_64), l_68, p_1623) , &p_1623->g_11) == &p_1623->g_11)) , (*l_68)), p_1623), p_1623)), p_1623));
    if ((safe_div_func_int8_t_s_s(p_64, p_1623->g_343)))
    { /* block id: 435 */
        uint32_t l_1078 = 4294967295UL;
        int64_t *l_1085 = &p_1623->g_412.f1;
        int32_t l_1086 = 0x794BC010L;
        int32_t *l_1087 = &l_1086;
        union U1 *l_1089 = &p_1623->g_320[4][4][2];
        union U1 **l_1088[9];
        int i;
        for (i = 0; i < 9; i++)
            l_1088[i] = &l_1089;
        l_1086 &= (safe_lshift_func_uint16_t_u_s(((safe_add_func_uint32_t_u_u(l_1078, (safe_mul_func_int16_t_s_s((!1L), (p_64 , (((0x0F50C959L >= (*l_68)) , ((*l_1085) = ((((((l_1078 <= ((*l_97) = 0xE89BL)) & (((safe_mod_func_int8_t_s_s(0x16L, (safe_rshift_func_uint16_t_u_u((*p_1623->g_656), p_64)))) & 0x7F07CEB7L) & p_1623->g_350.f1)) ^ p_1623->g_405.f2) , 0x583E6537L) ^ (**p_1623->g_402)) > p_1623->g_146.f0))) > 0x609671E5BEB4A2CFL)))))) , p_64), p_64));
        l_1087 = func_78(p_1623->g_350.f0, p_1623);
        p_1623->g_1090 = (void*)0;
    }
    else
    { /* block id: 441 */
        uint32_t l_1135[4][2] = {{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}};
        int32_t l_1148 = 0x03F4A8F3L;
        int32_t l_1168 = (-3L);
        int32_t l_1172[3];
        int8_t *l_1210 = &p_1623->g_859[2];
        int i, j;
        for (i = 0; i < 3; i++)
            l_1172[i] = 0x48B1387AL;
        for (p_1623->g_230 = (-17); (p_1623->g_230 > 8); p_1623->g_230 = safe_add_func_int8_t_s_s(p_1623->g_230, 2))
        { /* block id: 444 */
            int32_t l_1105 = 1L;
            int32_t *l_1106 = (void*)0;
            struct S0 ***l_1134 = &p_1623->g_759;
            l_1108 ^= (~((safe_sub_func_uint8_t_u_u((p_64 & p_64), 4UL)) & (safe_lshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u((safe_add_func_int64_t_s_s(0x0BBDC3991E7AE273L, (p_64 >= ((safe_div_func_uint16_t_u_u(0x2441L, (-1L))) | (((safe_rshift_func_uint8_t_u_s(((!((*l_68) = 0x5E7E9604L)) < 0x44585481L), 1)) > l_1105) == 0xB0L))))), p_64)), 1))));
            for (p_1623->g_69 = 4; (p_1623->g_69 >= 0); p_1623->g_69 -= 1)
            { /* block id: 449 */
                uint8_t *l_1136 = &p_1623->g_1137[1];
                int64_t l_1138 = 0x61D741026C142261L;
                int32_t *l_1139 = (void*)0;
                int i, j;
                p_1623->g_7[p_1623->g_69][(p_1623->g_69 + 2)] |= p_1623->g_265[p_1623->g_69];
                (*p_1623->g_1121) ^= (safe_sub_func_uint8_t_u_u(p_1623->g_480.f1, (safe_div_func_int8_t_s_s((safe_add_func_uint16_t_u_u((((((l_97 != (void*)0) < (safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_u((*l_68), 5)), (0x68967707L | (p_64 & p_64))))) == (safe_div_func_int8_t_s_s(((p_1623->g_343 = 0x3941FF1AL) , (*l_68)), p_1623->g_230))) < (-7L)) | 0UL), p_64)), GROUP_DIVERGE(1, 1)))));
                p_64 = (((*l_1136) |= (((safe_sub_func_int32_t_s_s(0x05D26577L, (safe_mul_func_int16_t_s_s(((safe_add_func_uint16_t_u_u((0L < 0x2FC41136F22A9F22L), (safe_add_func_uint64_t_u_u((safe_add_func_int16_t_s_s(((safe_div_func_uint32_t_u_u(((((p_1623->g_103 , p_64) | (((void*)0 == l_1134) || ((((p_1623->g_986 > (0x1295676EL != p_1623->g_715[0].f3)) == 0xD3BBL) , (*p_1623->g_403)) ^ p_64))) > 0x9B6DE3FCCBC4D15FL) && p_1623->g_146.f5), 0x53204A55L)) & l_1135[0][1]), l_1135[0][1])), (*l_68))))) , 0L), l_1135[0][0])))) == (*l_68)) || p_64)) & l_1138);
                for (p_1623->g_480.f3 = 0; (p_1623->g_480.f3 <= 4); p_1623->g_480.f3 += 1)
                { /* block id: 457 */
                    (***p_1623->g_613) = p_1623->g_1142[2];
                    return l_1139;
                }
            }
        }
        for (p_1623->g_98 = 27; (p_1623->g_98 < 56); p_1623->g_98 = safe_add_func_uint8_t_u_u(p_1623->g_98, 3))
        { /* block id: 465 */
            (*l_68) |= p_64;
        }
        for (p_1623->g_616.f0 = 0; (p_1623->g_616.f0 <= 4); p_1623->g_616.f0 += 1)
        { /* block id: 470 */
            int64_t l_1160[8] = {(-1L),8L,(-1L),(-1L),8L,(-1L),(-1L),8L};
            int32_t l_1161 = 0L;
            int32_t l_1163 = 0L;
            int32_t l_1166[10][3][8] = {{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}},{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}},{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}},{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}},{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}},{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}},{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}},{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}},{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}},{{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L},{0x2D9407ADL,6L,0L,0x50A375F0L,4L,0x50A375F0L,0L,6L}}};
            uint64_t **l_1196 = &p_1623->g_340;
            int64_t *l_1197[7] = {&p_1623->g_405.f1,&p_1623->g_405.f1,&p_1623->g_405.f1,&p_1623->g_405.f1,&p_1623->g_405.f1,&p_1623->g_405.f1,&p_1623->g_405.f1};
            int32_t l_1198 = 0x53778ED5L;
            int16_t *l_1200 = &p_1623->g_292;
            struct S0 *l_1201 = &p_1623->g_412;
            uint8_t *l_1202 = &p_1623->g_1137[1];
            uint8_t l_1209 = 2UL;
            int8_t **l_1211 = &p_1623->g_766[1];
            uint32_t *l_1212[10] = {&p_1623->g_1213,&p_1623->g_1213,&p_1623->g_1213,&p_1623->g_1213,&p_1623->g_1213,&p_1623->g_1213,&p_1623->g_1213,&p_1623->g_1213,&p_1623->g_1213,&p_1623->g_1213};
            int64_t l_1223 = 0x46F0FCB471839AC0L;
            int i, j, k;
            for (p_1623->g_230 = 0; (p_1623->g_230 <= 4); p_1623->g_230 += 1)
            { /* block id: 473 */
                uint8_t l_1152 = 0x77L;
                int32_t l_1164 = (-6L);
                int32_t l_1165 = 0x60122F17L;
                int32_t l_1167 = (-6L);
                int32_t l_1169 = 0L;
                int32_t l_1170 = 0x0F37ACDFL;
                int32_t l_1171 = 0x5C31025BL;
                for (p_1623->g_72 = 3; (p_1623->g_72 >= 0); p_1623->g_72 -= 1)
                { /* block id: 476 */
                    int32_t *l_1145 = &l_1108;
                    int32_t *l_1146 = &p_1623->g_69;
                    int32_t *l_1147 = &l_1108;
                    int32_t *l_1149 = (void*)0;
                    int32_t *l_1150 = &p_1623->g_69;
                    int32_t *l_1151[8][2] = {{&p_1623->g_72,&p_1623->g_3},{&p_1623->g_72,&p_1623->g_3},{&p_1623->g_72,&p_1623->g_3},{&p_1623->g_72,&p_1623->g_3},{&p_1623->g_72,&p_1623->g_3},{&p_1623->g_72,&p_1623->g_3},{&p_1623->g_72,&p_1623->g_3},{&p_1623->g_72,&p_1623->g_3}};
                    int i, j;
                    ++l_1152;
                    (*p_1623->g_492) = p_1623->g_1155;
                }
                for (p_1623->g_412.f3 = 0; (p_1623->g_412.f3 <= 4); p_1623->g_412.f3 += 1)
                { /* block id: 482 */
                    int32_t *l_1156 = (void*)0;
                    int32_t *l_1157 = (void*)0;
                    int32_t *l_1158 = &p_1623->g_72;
                    int32_t *l_1159[8] = {&p_1623->g_4,(void*)0,&p_1623->g_4,&p_1623->g_4,(void*)0,&p_1623->g_4,&p_1623->g_4,(void*)0};
                    uint32_t l_1174 = 0xBCA62AD2L;
                    int i;
                    l_1174++;
                }
            }
            (*l_1201) = func_80(&l_1168, ((safe_sub_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s(((*l_1200) = ((FAKE_DIVERGE(p_1623->global_2_offset, get_global_id(2), 10) == (safe_sub_func_uint32_t_u_u((*l_68), (safe_mul_func_int8_t_s_s((((((((safe_lshift_func_int8_t_s_u((-9L), p_1623->g_616.f2)) <= p_64) > 0x3D084C2B6EB516CEL) , (safe_sub_func_int32_t_s_s((p_64 < (+(safe_lshift_func_int8_t_s_s((safe_add_func_int64_t_s_s(8L, (!(l_1198 = (((safe_rshift_func_int16_t_s_s(0x2242L, l_1161)) , l_1195) != l_1196))))), 3)))), (*p_1623->g_403)))) , l_1199[0][5][0]) != &p_1623->g_230) <= p_64), FAKE_DIVERGE(p_1623->local_0_offset, get_local_id(0), 10)))))) , 0x2E9EL)), p_64)) , GROUP_DIVERGE(1, 1)), p_64)) , p_1623->g_1142[2].f3), (*p_1623->g_1063), p_1623);
            l_1161 ^= (!(((((p_1623->g_1155.f1 = (l_1166[7][0][4] = p_64)) , l_1202) != l_1202) , (safe_mul_func_uint16_t_u_u((((safe_mod_func_uint32_t_u_u(((safe_sub_func_int8_t_s_s((l_1209 >= (((((p_1623->g_1213 &= (l_1202 != ((*l_1211) = l_1210))) , (safe_add_func_int32_t_s_s((((safe_rshift_func_uint16_t_u_u((l_1218 != ((safe_add_func_int32_t_s_s((((safe_rshift_func_uint16_t_u_s(((p_1623->g_230 = p_1623->g_146.f0) || (((((*l_68) & (*p_1623->g_656)) , 1L) == p_64) , p_64)), 15)) == (*l_68)) ^ 0x00L), l_1223)) , (void*)0)), p_64)) != 0x0857832CL) == p_1623->g_480.f0), 4294967286UL))) != l_1168) ^ p_1623->g_426.f5) > FAKE_DIVERGE(p_1623->local_1_offset, get_local_id(1), 10))), l_1172[1])) != 5L), 0x2DAE9F18L)) | 0L) ^ 0x61L), 0L))) & p_64));
        }
    }
    return (*p_1623->g_525);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_73(int64_t  p_74, struct S2 * p_1623)
{ /* block id: 429 */
    int32_t *l_1069 = (void*)0;
    int32_t *l_1070[9][1][6] = {{{&p_1623->g_9[6],&p_1623->g_9[5],&p_1623->g_3,&p_1623->g_9[5],&p_1623->g_9[5],&p_1623->g_9[6]}},{{&p_1623->g_9[6],&p_1623->g_9[5],&p_1623->g_3,&p_1623->g_9[5],&p_1623->g_9[5],&p_1623->g_9[6]}},{{&p_1623->g_9[6],&p_1623->g_9[5],&p_1623->g_3,&p_1623->g_9[5],&p_1623->g_9[5],&p_1623->g_9[6]}},{{&p_1623->g_9[6],&p_1623->g_9[5],&p_1623->g_3,&p_1623->g_9[5],&p_1623->g_9[5],&p_1623->g_9[6]}},{{&p_1623->g_9[6],&p_1623->g_9[5],&p_1623->g_3,&p_1623->g_9[5],&p_1623->g_9[5],&p_1623->g_9[6]}},{{&p_1623->g_9[6],&p_1623->g_9[5],&p_1623->g_3,&p_1623->g_9[5],&p_1623->g_9[5],&p_1623->g_9[6]}},{{&p_1623->g_9[6],&p_1623->g_9[5],&p_1623->g_3,&p_1623->g_9[5],&p_1623->g_9[5],&p_1623->g_9[6]}},{{&p_1623->g_9[6],&p_1623->g_9[5],&p_1623->g_3,&p_1623->g_9[5],&p_1623->g_9[5],&p_1623->g_9[6]}},{{&p_1623->g_9[6],&p_1623->g_9[5],&p_1623->g_3,&p_1623->g_9[5],&p_1623->g_9[5],&p_1623->g_9[6]}}};
    int i, j, k;
    l_1069 = l_1069;
    l_1070[3][0][1] = l_1069;
    return p_74;
}


/* ------------------------------------------ */
/* 
 * reads : p_1623->g_69 p_1623->g_350.f2 p_1623->g_481 p_1623->g_350 p_1623->g_492 p_1623->g_494 p_1623->g_715.f2
 * writes: p_1623->g_69 p_1623->g_350.f2 p_1623->g_146 p_1623->g_72
 */
int64_t  func_76(int32_t * p_77, struct S2 * p_1623)
{ /* block id: 132 */
    uint16_t *l_336 = &p_1623->g_288[6];
    int32_t l_349 = 0L;
    int16_t l_352 = 0x16C1L;
    uint64_t **l_353[6];
    int32_t l_384 = (-3L);
    int32_t l_386 = 0x04A26DB0L;
    int32_t l_387 = 1L;
    int32_t l_393 = 0L;
    int32_t l_394[2];
    int32_t l_395 = 0x37B662EEL;
    int8_t *l_537[7] = {&p_1623->g_440[1][3][2],&p_1623->g_440[1][3][2],&p_1623->g_440[1][3][2],&p_1623->g_440[1][3][2],&p_1623->g_440[1][3][2],&p_1623->g_440[1][3][2],&p_1623->g_440[1][3][2]};
    struct S0 *l_612 = &p_1623->g_405;
    struct S0 **l_611 = &l_612;
    struct S0 ***l_610 = &l_611;
    int8_t l_672 = 0x4FL;
    uint32_t l_684 = 0x97C6443AL;
    int32_t l_691 = 1L;
    uint16_t ***l_710 = &p_1623->g_513;
    int32_t l_732[2];
    int32_t *l_743 = &l_394[0];
    int32_t l_854 = 0L;
    int8_t l_870 = (-8L);
    uint64_t ****l_949 = (void*)0;
    int8_t l_960[4] = {0x62L,0x62L,0x62L,0x62L};
    int16_t l_1057[5] = {1L,1L,1L,1L,1L};
    int i;
    for (i = 0; i < 6; i++)
        l_353[i] = &p_1623->g_340;
    for (i = 0; i < 2; i++)
        l_394[i] = 0x52F254E2L;
    for (i = 0; i < 2; i++)
        l_732[i] = 3L;
    for (p_1623->g_69 = 0; (p_1623->g_69 > 13); p_1623->g_69 = safe_add_func_uint64_t_u_u(p_1623->g_69, 6))
    { /* block id: 135 */
        uint64_t ***l_341 = &p_1623->g_339;
        uint32_t *l_342 = &p_1623->g_343;
        int32_t l_344 = (-1L);
        int32_t l_345 = 1L;
        int32_t l_388 = 0x2B1EB8AEL;
        int32_t l_389[2];
        int8_t *l_439 = &p_1623->g_440[3][1][1];
        uint32_t l_488 = 0x38B8C027L;
        int i;
        for (i = 0; i < 2; i++)
            l_389[i] = 0L;
        (1 + 1);
    }
    for (p_1623->g_350.f2 = 3; (p_1623->g_350.f2 >= 0); p_1623->g_350.f2 -= 1)
    { /* block id: 228 */
        int64_t l_495 = 0x586601E1C603E43AL;
        uint8_t l_509 = 0x1EL;
        uint16_t *l_524 = &p_1623->g_288[1];
        int32_t l_642 = 0x6D372D56L;
        int32_t l_644 = (-3L);
        uint32_t l_652 = 0xEA187FBDL;
        uint64_t l_740 = 0xC9F80A6772AD93B8L;
        struct S0 ***l_761 = &l_611;
        uint8_t l_808 = 5UL;
        int32_t l_864[5][6][6] = {{{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L}},{{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L}},{{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L}},{{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L}},{{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L},{0x75B0EB44L,0x75B0EB44L,0x5D6A1490L,9L,7L,0x3174A267L}}};
        int64_t l_902 = 2L;
        uint64_t l_923 = 0x2591501145EF7AA3L;
        int32_t l_930 = 8L;
        uint32_t l_939 = 3UL;
        uint64_t ****l_951[3][10][1] = {{{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]}},{{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]}},{{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]},{&p_1623->g_754[2][0][0]}}};
        int32_t l_1006 = 4L;
        uint32_t l_1066 = 4294967288UL;
        int i, j, k;
        (*p_1623->g_492) = (*p_1623->g_481);
        (*p_1623->g_494) = l_394[0];
    }
    return p_1623->g_715[0].f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_1623->g_69 p_1623->g_72 p_1623->g_145 p_1623->g_189 p_1623->g_196 p_1623->g_198 p_1623->g_146.f3 p_1623->g_230 p_1623->g_71 p_1623->g_118 p_1623->g_9 p_1623->g_11 p_1623->g_113 p_1623->g_3 p_1623->g_146 p_1623->g_197 p_1623->g_7 p_1623->g_190 p_1623->g_4 p_1623->g_5 p_1623->g_199 p_1623->g_292 p_1623->g_320 p_1623->g_265
 * writes: p_1623->g_146.f3 p_1623->g_137 p_1623->g_146.f1 p_1623->g_69 p_1623->g_230 p_1623->g_72 p_1623->g_118 p_1623->g_98 p_1623->g_145 p_1623->g_146 p_1623->g_67 p_1623->g_7 p_1623->g_265 p_1623->g_288 p_1623->g_292
 */
int32_t * func_78(int32_t  p_79, struct S2 * p_1623)
{ /* block id: 50 */
    int32_t *l_147 = (void*)0;
    int32_t *l_148 = &p_1623->g_72;
    int32_t *l_149 = &p_1623->g_72;
    int32_t *l_150 = &p_1623->g_69;
    int32_t *l_151 = &p_1623->g_72;
    int32_t *l_152 = &p_1623->g_69;
    int32_t *l_153 = &p_1623->g_72;
    int32_t l_154[1];
    int32_t *l_155 = &p_1623->g_69;
    int32_t *l_156 = &l_154[0];
    int32_t *l_157[7] = {&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]};
    int8_t l_159 = 0x18L;
    int32_t l_160 = 0x0333103EL;
    int8_t l_161 = 3L;
    int32_t l_162[8][7] = {{0x1866361AL,0x1866361AL,0x129FC7D4L,0L,1L,0L,0x129FC7D4L},{0x1866361AL,0x1866361AL,0x129FC7D4L,0L,1L,0L,0x129FC7D4L},{0x1866361AL,0x1866361AL,0x129FC7D4L,0L,1L,0L,0x129FC7D4L},{0x1866361AL,0x1866361AL,0x129FC7D4L,0L,1L,0L,0x129FC7D4L},{0x1866361AL,0x1866361AL,0x129FC7D4L,0L,1L,0L,0x129FC7D4L},{0x1866361AL,0x1866361AL,0x129FC7D4L,0L,1L,0L,0x129FC7D4L},{0x1866361AL,0x1866361AL,0x129FC7D4L,0L,1L,0L,0x129FC7D4L},{0x1866361AL,0x1866361AL,0x129FC7D4L,0L,1L,0L,0x129FC7D4L}};
    uint32_t l_163 = 0x78D22342L;
    uint64_t *l_188 = (void*)0;
    uint16_t *l_215 = (void*)0;
    uint16_t **l_217 = &l_215;
    uint16_t ***l_216 = &l_217;
    uint64_t *l_233 = &p_1623->g_137;
    int8_t *l_321 = &l_161;
    int i, j;
    for (i = 0; i < 1; i++)
        l_154[i] = 0x38069DB7L;
lbl_293:
    ++l_163;
    if ((*l_155))
    { /* block id: 52 */
        int16_t l_172 = 0x7912L;
        uint16_t *l_192 = (void*)0;
        uint16_t **l_191 = &l_192;
        int32_t l_203 = (-1L);
        uint64_t *l_211 = (void*)0;
        uint16_t ***l_218 = (void*)0;
        uint64_t **l_231 = (void*)0;
        uint64_t **l_232 = (void*)0;
        int32_t **l_234[5][9][5] = {{{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147}},{{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147}},{{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147}},{{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147}},{{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147},{&l_153,&l_153,&l_153,&l_153,&l_147}}};
        struct S0 *l_235 = &p_1623->g_146;
        int i, j, k;
        for (p_1623->g_146.f3 = 15; (p_1623->g_146.f3 <= 1); p_1623->g_146.f3 = safe_sub_func_uint16_t_u_u(p_1623->g_146.f3, 9))
        { /* block id: 55 */
            uint16_t *l_171[10][8][3] = {{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}},{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}},{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}},{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}},{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}},{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}},{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}},{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}},{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}},{{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0},{&p_1623->g_146.f3,(void*)0,(void*)0}}};
            uint16_t **l_170 = &l_171[0][3][0];
            uint64_t *l_187 = &p_1623->g_137;
            uint16_t ***l_193 = &l_191;
            uint16_t **l_195 = &l_192;
            uint16_t ***l_194 = &l_195;
            int i, j, k;
            l_203 &= (safe_lshift_func_int8_t_s_u((((((*l_170) = (void*)0) == (void*)0) , l_172) & ((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_s(((*l_151) , (safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((((safe_sub_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((((*l_187) = p_1623->g_145) <= ((p_79 , (l_188 != p_1623->g_189)) < (((*l_194) = ((*l_193) = l_191)) != p_1623->g_196))), 0)), (-7L))) <= 1L) & p_79), 15)), GROUP_DIVERGE(2, 1)))))), 15)) , 1UL), 0x58L)) , 0x6579FFB8CE056BAFL)), 2));
            return &p_1623->g_3;
        }
        for (p_79 = 26; (p_79 >= 24); p_79--)
        { /* block id: 65 */
            int64_t *l_206 = &p_1623->g_146.f1;
            uint16_t *l_214 = &p_1623->g_98;
            int32_t l_221 = 0x39FBA44AL;
            int32_t **l_228 = &l_157[6];
            uint8_t *l_229 = &p_1623->g_230;
            (*l_152) = ((((*l_206) = p_79) , ((void*)0 == &p_1623->g_190)) <= (safe_sub_func_uint16_t_u_u(((safe_div_func_int16_t_s_s(p_1623->g_198, (((l_211 != (((safe_lshift_func_uint8_t_u_s(((l_214 == l_215) > p_79), 3)) || ((((((l_218 = l_216) != &l_217) || p_79) <= p_79) == 0x9AL) >= 0L)) , l_188)) & 0x2EL) || 8UL))) == 5UL), 0L)));
            (*p_1623->g_71) |= (safe_add_func_int32_t_s_s((*l_152), ((l_221 , (safe_rshift_func_uint16_t_u_u(((&p_1623->g_190 != l_211) == (-6L)), 13))) ^ (safe_mod_func_uint16_t_u_u((FAKE_DIVERGE(p_1623->local_0_offset, get_local_id(0), 10) > ((safe_add_func_int16_t_s_s(p_1623->g_146.f3, (((*l_228) = &p_1623->g_9[3]) != &l_203))) <= ((*l_229) |= (p_79 < l_172)))), p_79)))));
        }
        (*l_151) |= ((l_188 = &p_1623->g_137) == l_233);
        (*l_235) = func_80(&p_1623->g_3, p_79, (l_150 = &p_1623->g_9[4]), p_1623);
    }
    else
    { /* block id: 77 */
        int8_t l_238 = 0x16L;
        uint16_t *l_249 = &p_1623->g_146.f0;
        for (p_1623->g_146.f2 = 2; (p_1623->g_146.f2 <= 6); p_1623->g_146.f2 += 1)
        { /* block id: 80 */
            uint16_t *l_239 = &p_1623->g_98;
            int32_t l_270 = 0x39829F15L;
            uint64_t **l_308 = (void*)0;
            if ((safe_mod_func_uint16_t_u_u((*l_156), ((*l_239) = l_238))))
            { /* block id: 82 */
                int32_t **l_240[4][4] = {{&l_156,&l_156,&l_156,&l_156},{&l_156,&l_156,&l_156,&l_156},{&l_156,&l_156,&l_156,&l_156},{&l_156,&l_156,&l_156,&l_156}};
                int i, j;
                p_1623->g_67 = (void*)0;
            }
            else
            { /* block id: 84 */
                uint8_t l_272 = 3UL;
                for (l_163 = 1; (l_163 <= 4); l_163 += 1)
                { /* block id: 87 */
                    int32_t l_271 = 0x2462603DL;
                    int i, j;
                    if (((safe_div_func_uint16_t_u_u(((safe_add_func_int32_t_s_s((safe_add_func_int8_t_s_s((safe_div_func_int8_t_s_s(0x18L, (l_162[(p_1623->g_146.f2 + 1)][p_1623->g_146.f2] || ((void*)0 == l_233)))), (((0L || ((*p_1623->g_196) == l_249)) , (void*)0) != (void*)0))), 0x1F0AA9D2L)) & p_1623->g_7[l_163][p_1623->g_146.f2]), p_1623->g_118)) & FAKE_DIVERGE(p_1623->group_2_offset, get_group_id(2), 10)))
                    { /* block id: 88 */
                        uint64_t **l_258 = &l_188;
                        int i, j;
                        l_162[(l_163 + 1)][p_1623->g_146.f2] = (safe_lshift_func_uint8_t_u_s((((*p_1623->g_189) >= p_79) == p_79), 0));
                        p_1623->g_7[l_163][(l_163 + 2)] = 9L;
                        (*l_152) = ((safe_rshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s(l_162[(l_163 + 1)][p_1623->g_146.f2], ((((safe_add_func_uint16_t_u_u(((*l_153) = 0xF464L), ((p_79 >= ((((p_1623->g_69 & ((((*l_258) = &p_1623->g_137) != ((((((safe_rshift_func_uint16_t_u_s(((safe_mod_func_int16_t_s_s((((safe_sub_func_uint64_t_u_u((((p_79 | (p_1623->g_265[4] = 0x35EDL)) != (l_271 = (safe_sub_func_int64_t_s_s(((0xC345CE31L != (safe_lshift_func_uint16_t_u_s(((p_79 & p_79) , p_1623->g_7[l_163][(l_163 + 2)]), l_270))) , p_1623->g_146.f4), l_238)))) , l_238), 18446744073709551615UL)) > p_1623->g_4) == p_79), p_1623->g_4)) , 0xE814L), p_1623->g_9[5])) , l_272) > 0x5E46L) || 0x13B3B70A786B7301L) <= 0x750D2932L) , &p_1623->g_190)) && p_79)) <= 1L) ^ p_1623->g_146.f3) < p_79)) <= p_1623->g_146.f3))) >= p_79) & p_79) || p_1623->g_11))), l_238)) , p_79);
                    }
                    else
                    { /* block id: 96 */
                        uint8_t *l_287 = &p_1623->g_230;
                        int16_t *l_291[4][7] = {{&p_1623->g_292,&p_1623->g_292,&p_1623->g_292,(void*)0,&p_1623->g_292,&p_1623->g_292,&p_1623->g_292},{&p_1623->g_292,&p_1623->g_292,&p_1623->g_292,(void*)0,&p_1623->g_292,&p_1623->g_292,&p_1623->g_292},{&p_1623->g_292,&p_1623->g_292,&p_1623->g_292,(void*)0,&p_1623->g_292,&p_1623->g_292,&p_1623->g_292},{&p_1623->g_292,&p_1623->g_292,&p_1623->g_292,(void*)0,&p_1623->g_292,&p_1623->g_292,&p_1623->g_292}};
                        int i, j;
                        (*l_152) &= (safe_add_func_int64_t_s_s((safe_mul_func_int64_t_s_s(l_271, ((void*)0 != &p_1623->g_66))), ((p_1623->g_5 , ((safe_mod_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u(1UL, 7)) ^ p_79), GROUP_DIVERGE(1, 1))) , (safe_rshift_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s((l_162[(p_1623->g_146.f2 + 1)][p_1623->g_146.f2] = ((p_1623->g_288[2] = (+((*l_287) = (safe_rshift_func_uint8_t_u_u(l_270, p_79))))) , (safe_mod_func_int8_t_s_s(p_79, GROUP_DIVERGE(0, 1))))), p_79)) >= (*p_1623->g_189)), l_238)))) && p_1623->g_199)));
                        if (p_1623->g_72)
                            goto lbl_293;
                    }
                    (*l_148) = ((safe_mod_func_uint8_t_u_u(l_270, 0x64L)) | 1UL);
                }
                for (p_1623->g_292 = 0; (p_1623->g_292 <= 4); p_1623->g_292 += 1)
                { /* block id: 107 */
                    (*l_156) &= ((*l_148) = 0x2BB72122L);
                }
            }
            for (l_238 = 5; (l_238 >= 0); l_238 -= 1)
            { /* block id: 114 */
                int16_t *l_302 = &p_1623->g_292;
                uint64_t **l_305 = (void*)0;
                uint16_t **l_314 = &l_239;
                int i, j;
                (*l_149) &= (safe_mod_func_int16_t_s_s((l_162[(l_238 + 1)][p_1623->g_146.f2] , (safe_lshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s(p_1623->g_5, ((*l_302) = p_1623->g_146.f3))), (safe_add_func_int32_t_s_s(((void*)0 == l_302), ((p_79 , l_305) == ((safe_mod_func_uint8_t_u_u((FAKE_DIVERGE(p_1623->local_1_offset, get_local_id(1), 10) && l_238), (p_79 || l_270))) , l_308))))))), 0x85F2L));
                for (p_1623->g_145 = 0; (p_1623->g_145 != 10); p_1623->g_145++)
                { /* block id: 119 */
                    uint16_t **l_312[3][6][6] = {{{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249}},{{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249}},{{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249},{(void*)0,&l_249,&l_215,&l_249,&l_249,&l_249}}};
                    uint16_t ***l_311 = &l_312[2][4][5];
                    int i, j, k;
                    (*l_148) ^= (((*l_216) = (*l_216)) != ((((*l_311) = &l_239) != ((safe_unary_minus_func_int16_t_s((-10L))) , l_314)) , (*l_311)));
                }
            }
        }
        (*l_156) = (l_215 != l_249);
    }
    (*l_152) ^= (safe_unary_minus_func_int64_t_s((safe_rshift_func_uint8_t_u_s(((((*l_233) = GROUP_DIVERGE(0, 1)) , ((safe_rshift_func_uint16_t_u_u((p_1623->g_320[4][4][2] , GROUP_DIVERGE(1, 1)), 0)) & 4294967287UL)) <= ((((*l_321) ^= p_1623->g_265[4]) <= 0x96L) > p_1623->g_265[4])), 0))));
    return &p_1623->g_69;
}


/* ------------------------------------------ */
/* 
 * reads : p_1623->g_71 p_1623->g_72 p_1623->g_118 p_1623->g_69 p_1623->g_11 p_1623->g_113 p_1623->g_9 p_1623->g_3 p_1623->g_145 p_1623->g_146
 * writes: p_1623->g_69 p_1623->g_118 p_1623->g_98 p_1623->g_137 p_1623->g_72 p_1623->g_145
 */
struct S0  func_80(int32_t * p_81, int64_t  p_82, int32_t * p_83, struct S2 * p_1623)
{ /* block id: 37 */
    int32_t *l_106 = &p_1623->g_69;
    int32_t *l_107 = &p_1623->g_69;
    int32_t *l_108 = &p_1623->g_69;
    int32_t *l_109 = (void*)0;
    int32_t *l_110 = &p_1623->g_72;
    int32_t *l_111[4];
    int64_t l_112[3][9][9] = {{{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)}},{{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)}},{{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)},{(-6L),1L,1L,(-6L),6L,0x537032A699B7D335L,0x011C8EEA47A0FBCEL,6L,(-1L)}}};
    uint32_t l_114 = 5UL;
    uint32_t l_117 = 0xAC0B4975L;
    uint32_t l_123 = 5UL;
    uint16_t *l_125 = &p_1623->g_98;
    uint64_t *l_136 = &p_1623->g_137;
    uint16_t **l_140 = &l_125;
    uint16_t *l_142 = (void*)0;
    uint16_t **l_141 = &l_142;
    uint16_t *l_143 = &p_1623->g_98;
    uint32_t l_144 = 0x30205D3DL;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_111[i] = &p_1623->g_72;
    l_114++;
    p_1623->g_118 ^= (l_117 = ((*l_107) = (*p_1623->g_71)));
    p_1623->g_145 ^= ((*l_108) = (((*l_110) = (safe_div_func_uint8_t_u_u((18446744073709551615UL == (l_123 & (((*l_125) = (p_82 >= ((*p_1623->g_71) , (safe_unary_minus_func_uint16_t_u((0xF9A41DA2L <= 4294967295UL)))))) , (!(safe_sub_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((((((safe_sub_func_int32_t_s_s((*p_83), (((safe_lshift_func_uint16_t_u_u((((+(safe_sub_func_uint64_t_u_u(((*l_136) = p_1623->g_11), (safe_sub_func_int64_t_s_s((((*l_141) = ((*l_140) = &p_1623->g_98)) != l_143), p_1623->g_113[0]))))) , (*l_140)) == (void*)0), 12)) ^ l_144) <= p_1623->g_9[5]))) || 0x57FB89E6L) > p_82) , p_1623->g_3) >= 0xC71BL) ^ p_82), p_82)), p_82)))))), p_82))) || 0x2930F337L));
    return p_1623->g_146;
}


/* ------------------------------------------ */
/* 
 * reads : p_1623->g_69 p_1623->g_103 p_1623->g_98
 * writes: p_1623->g_69 p_1623->g_103
 */
uint32_t  func_84(uint32_t  p_85, int32_t * p_86, uint64_t  p_87, int32_t * p_88, struct S2 * p_1623)
{ /* block id: 33 */
    int32_t *l_99 = &p_1623->g_69;
    int32_t *l_100[4];
    int32_t l_101 = 0x30255DAFL;
    int32_t l_102 = 2L;
    int i;
    for (i = 0; i < 4; i++)
        l_100[i] = &p_1623->g_72;
    (*p_88) = (*p_86);
    ++p_1623->g_103;
    return p_1623->g_98;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1624;
    struct S2* p_1623 = &c_1624;
    struct S2 c_1625 = {
        0x22A3B3F3L, // p_1623->g_3
        0x488EB987L, // p_1623->g_4
        0x2FA9B64FL, // p_1623->g_5
        {0x6F5D870AL}, // p_1623->g_6
        {{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL},{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL},{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL},{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL},{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL}}, // p_1623->g_7
        (-1L), // p_1623->g_8
        {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)}, // p_1623->g_9
        0x7B1A0949L, // p_1623->g_11
        (void*)0, // p_1623->g_66
        (void*)0, // p_1623->g_67
        1L, // p_1623->g_69
        (void*)0, // p_1623->g_70
        0x393DB2A2L, // p_1623->g_72
        &p_1623->g_72, // p_1623->g_71
        0xFA81L, // p_1623->g_98
        0UL, // p_1623->g_103
        {(-3L),(-3L)}, // p_1623->g_113
        3L, // p_1623->g_118
        0xA2F3BF82D50EB43AL, // p_1623->g_137
        0x5992523FAAA289D6L, // p_1623->g_145
        {65535UL,0x31D02B38FC1FC836L,0x13BA542B8B1C4E8FL,1UL,0x2CD46ABB7C243BE0L,-1L}, // p_1623->g_146
        (-4L), // p_1623->g_158
        0x094950BB044F218FL, // p_1623->g_190
        &p_1623->g_190, // p_1623->g_189
        1UL, // p_1623->g_198
        65535UL, // p_1623->g_199
        0x8EA8L, // p_1623->g_200
        65531UL, // p_1623->g_201
        0x2921L, // p_1623->g_202
        {{&p_1623->g_199,&p_1623->g_199,(void*)0,&p_1623->g_198},{&p_1623->g_199,&p_1623->g_199,(void*)0,&p_1623->g_198},{&p_1623->g_199,&p_1623->g_199,(void*)0,&p_1623->g_198},{&p_1623->g_199,&p_1623->g_199,(void*)0,&p_1623->g_198},{&p_1623->g_199,&p_1623->g_199,(void*)0,&p_1623->g_198},{&p_1623->g_199,&p_1623->g_199,(void*)0,&p_1623->g_198},{&p_1623->g_199,&p_1623->g_199,(void*)0,&p_1623->g_198}}, // p_1623->g_197
        &p_1623->g_197[3][0], // p_1623->g_196
        250UL, // p_1623->g_230
        {0x75FFA152L,0x75FFA152L,0x75FFA152L,0x75FFA152L,0x75FFA152L}, // p_1623->g_265
        {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL}, // p_1623->g_288
        (-1L), // p_1623->g_292
        {{{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}}},{{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}}},{{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}}},{{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}}},{{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}}},{{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}}},{{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}},{{0UL},{0x6582651CL},{1UL}}}}, // p_1623->g_320
        &p_1623->g_137, // p_1623->g_340
        &p_1623->g_340, // p_1623->g_339
        0x1359E41FL, // p_1623->g_343
        {0xEBE0L,0x56E44AAF0699D71EL,-5L,0x45B0L,0xD36144FC5C497394L,0x5E61AE06L}, // p_1623->g_350
        (void*)0, // p_1623->g_354
        {0xBA01E006L}, // p_1623->g_356
        &p_1623->g_3, // p_1623->g_403
        &p_1623->g_403, // p_1623->g_402
        {0x8FB2L,1L,0L,0x10E4L,0x9051D85E34ABE529L,0x796501CBL}, // p_1623->g_405
        &p_1623->g_403, // p_1623->g_411
        {65526UL,-9L,0x5AA03DC31E78DDC9L,0xA29DL,18446744073709551615UL,-2L}, // p_1623->g_412
        &p_1623->g_350, // p_1623->g_413
        {1UL,1L,0x0FF9E5C04D81C507L,0UL,0x3EDB47F715C8DBECL,-1L}, // p_1623->g_426
        {&p_1623->g_403,&p_1623->g_403,&p_1623->g_403,&p_1623->g_403}, // p_1623->g_428
        {4UL}, // p_1623->g_434
        {{{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L}},{{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L}},{{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L}},{{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L}},{{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L}},{{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L}},{{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L}},{{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L}}}, // p_1623->g_440
        1UL, // p_1623->g_442
        &p_1623->g_196, // p_1623->g_443
        {0xFD34L,-1L,0x64534A2DFF289923L,65532UL,18446744073709551607UL,1L}, // p_1623->g_480
        &p_1623->g_350, // p_1623->g_481
        (void*)0, // p_1623->g_491
        &p_1623->g_146, // p_1623->g_492
        {&p_1623->g_69,&p_1623->g_69,&p_1623->g_69,&p_1623->g_69,&p_1623->g_69}, // p_1623->g_493
        &p_1623->g_72, // p_1623->g_494
        0x72A2F2D8FCC2C713L, // p_1623->g_500
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1623->g_514
        &p_1623->g_514[2], // p_1623->g_513
        &p_1623->g_513, // p_1623->g_512
        (void*)0, // p_1623->g_523
        &p_1623->g_403, // p_1623->g_525
        {0x32FBL,0x4DFBB7C80D599113L,0x3450ACAC6BBC1B2CL,0x3A35L,0x25D105892BE2FEE4L,-4L}, // p_1623->g_616
        &p_1623->g_616, // p_1623->g_615
        &p_1623->g_615, // p_1623->g_614
        &p_1623->g_614, // p_1623->g_613
        {0x556A0C08L}, // p_1623->g_655
        &p_1623->g_480.f0, // p_1623->g_656
        {{0x7ABCL,0x1B7A8D2AC723CC68L,-1L,65534UL,3UL,-1L},{0x7ABCL,0x1B7A8D2AC723CC68L,-1L,65534UL,3UL,-1L}}, // p_1623->g_715
        {{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}}}, // p_1623->g_754
        &p_1623->g_615, // p_1623->g_759
        {{(void*)0,&p_1623->g_759,(void*)0,(void*)0,&p_1623->g_759,(void*)0,(void*)0,&p_1623->g_759},{(void*)0,&p_1623->g_759,(void*)0,(void*)0,&p_1623->g_759,(void*)0,(void*)0,&p_1623->g_759}}, // p_1623->g_758
        {&p_1623->g_440[6][3][1],&p_1623->g_440[6][3][1],&p_1623->g_440[6][3][1],&p_1623->g_440[6][3][1],&p_1623->g_440[6][3][1],&p_1623->g_440[6][3][1]}, // p_1623->g_766
        {{{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]},{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]},{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]},{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]}},{{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]},{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]},{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]},{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]}},{{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]},{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]},{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]},{(void*)0,&p_1623->g_766[0],&p_1623->g_766[5],&p_1623->g_766[1]}}}, // p_1623->g_765
        &p_1623->g_403, // p_1623->g_769
        {0xFDD4B001L}, // p_1623->g_791
        {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L}, // p_1623->g_859
        {{0x60386138L,9L,9L},{0x60386138L,9L,9L},{0x60386138L,9L,9L},{0x60386138L,9L,9L},{0x60386138L,9L,9L},{0x60386138L,9L,9L},{0x60386138L,9L,9L},{0x60386138L,9L,9L},{0x60386138L,9L,9L}}, // p_1623->g_860
        {0xDB50E0787AE767AAL,0xDB50E0787AE767AAL,0xDB50E0787AE767AAL,0xDB50E0787AE767AAL,0xDB50E0787AE767AAL,0xDB50E0787AE767AAL,0xDB50E0787AE767AAL,0xDB50E0787AE767AAL,0xDB50E0787AE767AAL}, // p_1623->g_886
        &p_1623->g_403, // p_1623->g_919
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1623->g_967
        {&p_1623->g_403,&p_1623->g_403,&p_1623->g_403}, // p_1623->g_968
        (void*)0, // p_1623->g_969
        (-5L), // p_1623->g_972
        0x0D92F3A5L, // p_1623->g_986
        (void*)0, // p_1623->g_1062
        &p_1623->g_403, // p_1623->g_1063
        &p_1623->g_72, // p_1623->g_1071
        &p_1623->g_320[3][5][2], // p_1623->g_1090
        (void*)0, // p_1623->g_1107
        &p_1623->g_72, // p_1623->g_1121
        {1UL,1UL,1UL,1UL,1UL}, // p_1623->g_1137
        {{{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]}},{{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]}},{{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]}},{{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]},{&p_1623->g_72,&p_1623->g_9[4]}}}, // p_1623->g_1140
        (void*)0, // p_1623->g_1141
        {{65535UL,-1L,0x46343130551AAD5CL,0x0F08L,18446744073709551606UL,0x19D71370L},{65535UL,-1L,0x46343130551AAD5CL,0x0F08L,18446744073709551606UL,0x19D71370L},{65535UL,-1L,0x46343130551AAD5CL,0x0F08L,18446744073709551606UL,0x19D71370L}}, // p_1623->g_1142
        {8UL,7L,0x720FAC45536E615BL,0UL,0x1B570B463C1D7666L,1L}, // p_1623->g_1155
        0x368BEE06L, // p_1623->g_1162
        0xC8FF036DL, // p_1623->g_1213
        0UL, // p_1623->g_1225
        {4294967292UL}, // p_1623->g_1232
        &p_1623->g_1232, // p_1623->g_1231
        &p_1623->g_1231, // p_1623->g_1240
        (void*)0, // p_1623->g_1288
        (void*)0, // p_1623->g_1289
        {(void*)0,(void*)0,(void*)0}, // p_1623->g_1290
        (void*)0, // p_1623->g_1291
        0xA5D3F762L, // p_1623->g_1309
        {{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3},{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3},{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3},{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3},{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3},{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3},{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3},{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3},{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3},{&p_1623->g_69,&p_1623->g_1162,&p_1623->g_1162,&p_1623->g_69,&p_1623->g_69,&p_1623->g_3}}, // p_1623->g_1345
        {(void*)0,(void*)0,(void*)0}, // p_1623->g_1346
        2L, // p_1623->g_1367
        {{&p_1623->g_4,&p_1623->g_11,&p_1623->g_72,(void*)0,&p_1623->g_11,(void*)0,&p_1623->g_72},{&p_1623->g_4,&p_1623->g_11,&p_1623->g_72,(void*)0,&p_1623->g_11,(void*)0,&p_1623->g_72},{&p_1623->g_4,&p_1623->g_11,&p_1623->g_72,(void*)0,&p_1623->g_11,(void*)0,&p_1623->g_72}}, // p_1623->g_1398
        {&p_1623->g_72,&p_1623->g_72,&p_1623->g_72,&p_1623->g_72,&p_1623->g_72,&p_1623->g_72,&p_1623->g_72,&p_1623->g_72,&p_1623->g_72}, // p_1623->g_1399
        {65526UL,0x380D58B7C51D5E78L,-1L,0x14D3L,1UL,0L}, // p_1623->g_1420
        (void*)0, // p_1623->g_1439
        &p_1623->g_1439, // p_1623->g_1438
        {65528UL,-1L,0x438BB9B8F1C0DF8CL,0xFF2CL,0x3F71CD7954CF7D8AL,0x110E018EL}, // p_1623->g_1443
        {0x8933L,0x59208ED22D64382EL,0x5ED33F30BA891DE0L,65535UL,0x6BEADEC997528B8AL,0x466AB92EL}, // p_1623->g_1541
        {{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L},{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L},{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L},{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L},{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L},{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L},{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L},{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L},{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L},{1UL,1L,-7L,0x98C9L,0x23AA9821D565DF83L,0L}}, // p_1623->g_1542
        {5UL,6L,0x54209DF982B2D625L,65535UL,0x8728BCCC415817E3L,-7L}, // p_1623->g_1562
        &p_1623->g_403, // p_1623->g_1602
        &p_1623->g_403, // p_1623->g_1621
        sequence_input[get_global_id(0)], // p_1623->global_0_offset
        sequence_input[get_global_id(1)], // p_1623->global_1_offset
        sequence_input[get_global_id(2)], // p_1623->global_2_offset
        sequence_input[get_local_id(0)], // p_1623->local_0_offset
        sequence_input[get_local_id(1)], // p_1623->local_1_offset
        sequence_input[get_local_id(2)], // p_1623->local_2_offset
        sequence_input[get_group_id(0)], // p_1623->group_0_offset
        sequence_input[get_group_id(1)], // p_1623->group_1_offset
        sequence_input[get_group_id(2)], // p_1623->group_2_offset
    };
    c_1624 = c_1625;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1623);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1623->g_3, "p_1623->g_3", print_hash_value);
    transparent_crc(p_1623->g_4, "p_1623->g_4", print_hash_value);
    transparent_crc(p_1623->g_5, "p_1623->g_5", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1623->g_6[i], "p_1623->g_6[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1623->g_7[i][j], "p_1623->g_7[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1623->g_8, "p_1623->g_8", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1623->g_9[i], "p_1623->g_9[i]", print_hash_value);

    }
    transparent_crc(p_1623->g_11, "p_1623->g_11", print_hash_value);
    transparent_crc(p_1623->g_69, "p_1623->g_69", print_hash_value);
    transparent_crc(p_1623->g_72, "p_1623->g_72", print_hash_value);
    transparent_crc(p_1623->g_98, "p_1623->g_98", print_hash_value);
    transparent_crc(p_1623->g_103, "p_1623->g_103", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1623->g_113[i], "p_1623->g_113[i]", print_hash_value);

    }
    transparent_crc(p_1623->g_118, "p_1623->g_118", print_hash_value);
    transparent_crc(p_1623->g_137, "p_1623->g_137", print_hash_value);
    transparent_crc(p_1623->g_145, "p_1623->g_145", print_hash_value);
    transparent_crc(p_1623->g_146.f0, "p_1623->g_146.f0", print_hash_value);
    transparent_crc(p_1623->g_146.f1, "p_1623->g_146.f1", print_hash_value);
    transparent_crc(p_1623->g_146.f2, "p_1623->g_146.f2", print_hash_value);
    transparent_crc(p_1623->g_146.f3, "p_1623->g_146.f3", print_hash_value);
    transparent_crc(p_1623->g_146.f4, "p_1623->g_146.f4", print_hash_value);
    transparent_crc(p_1623->g_146.f5, "p_1623->g_146.f5", print_hash_value);
    transparent_crc(p_1623->g_158, "p_1623->g_158", print_hash_value);
    transparent_crc(p_1623->g_190, "p_1623->g_190", print_hash_value);
    transparent_crc(p_1623->g_198, "p_1623->g_198", print_hash_value);
    transparent_crc(p_1623->g_199, "p_1623->g_199", print_hash_value);
    transparent_crc(p_1623->g_200, "p_1623->g_200", print_hash_value);
    transparent_crc(p_1623->g_201, "p_1623->g_201", print_hash_value);
    transparent_crc(p_1623->g_202, "p_1623->g_202", print_hash_value);
    transparent_crc(p_1623->g_230, "p_1623->g_230", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1623->g_265[i], "p_1623->g_265[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1623->g_288[i], "p_1623->g_288[i]", print_hash_value);

    }
    transparent_crc(p_1623->g_292, "p_1623->g_292", print_hash_value);
    transparent_crc(p_1623->g_343, "p_1623->g_343", print_hash_value);
    transparent_crc(p_1623->g_350.f0, "p_1623->g_350.f0", print_hash_value);
    transparent_crc(p_1623->g_350.f1, "p_1623->g_350.f1", print_hash_value);
    transparent_crc(p_1623->g_350.f2, "p_1623->g_350.f2", print_hash_value);
    transparent_crc(p_1623->g_350.f3, "p_1623->g_350.f3", print_hash_value);
    transparent_crc(p_1623->g_350.f4, "p_1623->g_350.f4", print_hash_value);
    transparent_crc(p_1623->g_350.f5, "p_1623->g_350.f5", print_hash_value);
    transparent_crc(p_1623->g_356.f0, "p_1623->g_356.f0", print_hash_value);
    transparent_crc(p_1623->g_405.f0, "p_1623->g_405.f0", print_hash_value);
    transparent_crc(p_1623->g_405.f1, "p_1623->g_405.f1", print_hash_value);
    transparent_crc(p_1623->g_405.f2, "p_1623->g_405.f2", print_hash_value);
    transparent_crc(p_1623->g_405.f3, "p_1623->g_405.f3", print_hash_value);
    transparent_crc(p_1623->g_405.f4, "p_1623->g_405.f4", print_hash_value);
    transparent_crc(p_1623->g_405.f5, "p_1623->g_405.f5", print_hash_value);
    transparent_crc(p_1623->g_412.f0, "p_1623->g_412.f0", print_hash_value);
    transparent_crc(p_1623->g_412.f1, "p_1623->g_412.f1", print_hash_value);
    transparent_crc(p_1623->g_412.f2, "p_1623->g_412.f2", print_hash_value);
    transparent_crc(p_1623->g_412.f3, "p_1623->g_412.f3", print_hash_value);
    transparent_crc(p_1623->g_412.f4, "p_1623->g_412.f4", print_hash_value);
    transparent_crc(p_1623->g_412.f5, "p_1623->g_412.f5", print_hash_value);
    transparent_crc(p_1623->g_426.f0, "p_1623->g_426.f0", print_hash_value);
    transparent_crc(p_1623->g_426.f1, "p_1623->g_426.f1", print_hash_value);
    transparent_crc(p_1623->g_426.f2, "p_1623->g_426.f2", print_hash_value);
    transparent_crc(p_1623->g_426.f3, "p_1623->g_426.f3", print_hash_value);
    transparent_crc(p_1623->g_426.f4, "p_1623->g_426.f4", print_hash_value);
    transparent_crc(p_1623->g_426.f5, "p_1623->g_426.f5", print_hash_value);
    transparent_crc(p_1623->g_434.f0, "p_1623->g_434.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1623->g_440[i][j][k], "p_1623->g_440[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1623->g_442, "p_1623->g_442", print_hash_value);
    transparent_crc(p_1623->g_480.f0, "p_1623->g_480.f0", print_hash_value);
    transparent_crc(p_1623->g_480.f1, "p_1623->g_480.f1", print_hash_value);
    transparent_crc(p_1623->g_480.f2, "p_1623->g_480.f2", print_hash_value);
    transparent_crc(p_1623->g_480.f3, "p_1623->g_480.f3", print_hash_value);
    transparent_crc(p_1623->g_480.f4, "p_1623->g_480.f4", print_hash_value);
    transparent_crc(p_1623->g_480.f5, "p_1623->g_480.f5", print_hash_value);
    transparent_crc(p_1623->g_500, "p_1623->g_500", print_hash_value);
    transparent_crc(p_1623->g_616.f0, "p_1623->g_616.f0", print_hash_value);
    transparent_crc(p_1623->g_616.f1, "p_1623->g_616.f1", print_hash_value);
    transparent_crc(p_1623->g_616.f2, "p_1623->g_616.f2", print_hash_value);
    transparent_crc(p_1623->g_616.f3, "p_1623->g_616.f3", print_hash_value);
    transparent_crc(p_1623->g_616.f4, "p_1623->g_616.f4", print_hash_value);
    transparent_crc(p_1623->g_616.f5, "p_1623->g_616.f5", print_hash_value);
    transparent_crc(p_1623->g_655.f0, "p_1623->g_655.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1623->g_715[i].f0, "p_1623->g_715[i].f0", print_hash_value);
        transparent_crc(p_1623->g_715[i].f1, "p_1623->g_715[i].f1", print_hash_value);
        transparent_crc(p_1623->g_715[i].f2, "p_1623->g_715[i].f2", print_hash_value);
        transparent_crc(p_1623->g_715[i].f3, "p_1623->g_715[i].f3", print_hash_value);
        transparent_crc(p_1623->g_715[i].f4, "p_1623->g_715[i].f4", print_hash_value);
        transparent_crc(p_1623->g_715[i].f5, "p_1623->g_715[i].f5", print_hash_value);

    }
    transparent_crc(p_1623->g_791.f0, "p_1623->g_791.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1623->g_859[i], "p_1623->g_859[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1623->g_860[i][j], "p_1623->g_860[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1623->g_886[i], "p_1623->g_886[i]", print_hash_value);

    }
    transparent_crc(p_1623->g_972, "p_1623->g_972", print_hash_value);
    transparent_crc(p_1623->g_986, "p_1623->g_986", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1623->g_1137[i], "p_1623->g_1137[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1623->g_1142[i].f0, "p_1623->g_1142[i].f0", print_hash_value);
        transparent_crc(p_1623->g_1142[i].f1, "p_1623->g_1142[i].f1", print_hash_value);
        transparent_crc(p_1623->g_1142[i].f2, "p_1623->g_1142[i].f2", print_hash_value);
        transparent_crc(p_1623->g_1142[i].f3, "p_1623->g_1142[i].f3", print_hash_value);
        transparent_crc(p_1623->g_1142[i].f4, "p_1623->g_1142[i].f4", print_hash_value);
        transparent_crc(p_1623->g_1142[i].f5, "p_1623->g_1142[i].f5", print_hash_value);

    }
    transparent_crc(p_1623->g_1155.f0, "p_1623->g_1155.f0", print_hash_value);
    transparent_crc(p_1623->g_1155.f1, "p_1623->g_1155.f1", print_hash_value);
    transparent_crc(p_1623->g_1155.f2, "p_1623->g_1155.f2", print_hash_value);
    transparent_crc(p_1623->g_1155.f3, "p_1623->g_1155.f3", print_hash_value);
    transparent_crc(p_1623->g_1155.f4, "p_1623->g_1155.f4", print_hash_value);
    transparent_crc(p_1623->g_1155.f5, "p_1623->g_1155.f5", print_hash_value);
    transparent_crc(p_1623->g_1162, "p_1623->g_1162", print_hash_value);
    transparent_crc(p_1623->g_1213, "p_1623->g_1213", print_hash_value);
    transparent_crc(p_1623->g_1225, "p_1623->g_1225", print_hash_value);
    transparent_crc(p_1623->g_1232.f0, "p_1623->g_1232.f0", print_hash_value);
    transparent_crc(p_1623->g_1309, "p_1623->g_1309", print_hash_value);
    transparent_crc(p_1623->g_1367, "p_1623->g_1367", print_hash_value);
    transparent_crc(p_1623->g_1420.f0, "p_1623->g_1420.f0", print_hash_value);
    transparent_crc(p_1623->g_1420.f1, "p_1623->g_1420.f1", print_hash_value);
    transparent_crc(p_1623->g_1420.f2, "p_1623->g_1420.f2", print_hash_value);
    transparent_crc(p_1623->g_1420.f3, "p_1623->g_1420.f3", print_hash_value);
    transparent_crc(p_1623->g_1420.f4, "p_1623->g_1420.f4", print_hash_value);
    transparent_crc(p_1623->g_1420.f5, "p_1623->g_1420.f5", print_hash_value);
    transparent_crc(p_1623->g_1443.f0, "p_1623->g_1443.f0", print_hash_value);
    transparent_crc(p_1623->g_1443.f1, "p_1623->g_1443.f1", print_hash_value);
    transparent_crc(p_1623->g_1443.f2, "p_1623->g_1443.f2", print_hash_value);
    transparent_crc(p_1623->g_1443.f3, "p_1623->g_1443.f3", print_hash_value);
    transparent_crc(p_1623->g_1443.f4, "p_1623->g_1443.f4", print_hash_value);
    transparent_crc(p_1623->g_1443.f5, "p_1623->g_1443.f5", print_hash_value);
    transparent_crc(p_1623->g_1541.f0, "p_1623->g_1541.f0", print_hash_value);
    transparent_crc(p_1623->g_1541.f1, "p_1623->g_1541.f1", print_hash_value);
    transparent_crc(p_1623->g_1541.f2, "p_1623->g_1541.f2", print_hash_value);
    transparent_crc(p_1623->g_1541.f3, "p_1623->g_1541.f3", print_hash_value);
    transparent_crc(p_1623->g_1541.f4, "p_1623->g_1541.f4", print_hash_value);
    transparent_crc(p_1623->g_1541.f5, "p_1623->g_1541.f5", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1623->g_1542[i].f0, "p_1623->g_1542[i].f0", print_hash_value);
        transparent_crc(p_1623->g_1542[i].f1, "p_1623->g_1542[i].f1", print_hash_value);
        transparent_crc(p_1623->g_1542[i].f2, "p_1623->g_1542[i].f2", print_hash_value);
        transparent_crc(p_1623->g_1542[i].f3, "p_1623->g_1542[i].f3", print_hash_value);
        transparent_crc(p_1623->g_1542[i].f4, "p_1623->g_1542[i].f4", print_hash_value);
        transparent_crc(p_1623->g_1542[i].f5, "p_1623->g_1542[i].f5", print_hash_value);

    }
    transparent_crc(p_1623->g_1562.f0, "p_1623->g_1562.f0", print_hash_value);
    transparent_crc(p_1623->g_1562.f1, "p_1623->g_1562.f1", print_hash_value);
    transparent_crc(p_1623->g_1562.f2, "p_1623->g_1562.f2", print_hash_value);
    transparent_crc(p_1623->g_1562.f3, "p_1623->g_1562.f3", print_hash_value);
    transparent_crc(p_1623->g_1562.f4, "p_1623->g_1562.f4", print_hash_value);
    transparent_crc(p_1623->g_1562.f5, "p_1623->g_1562.f5", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
