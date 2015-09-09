// ---fake_divergence -g 25,79,4 -l 1,1,1
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


// Seed: 124

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   uint64_t  f1;
   uint32_t  f2;
   uint32_t  f3;
};

union U1 {
   volatile int8_t  f0;
   int32_t  f1;
   int16_t  f2;
   int16_t  f3;
   volatile int8_t  f4;
};

struct S2 {
    int32_t g_4;
    int64_t g_15;
    volatile int32_t g_23;
    int32_t g_24;
    int32_t *g_41;
    int32_t ** volatile g_40[6];
    int8_t g_54[3][1];
    int32_t g_75[7][10];
    int32_t **g_83;
    int16_t g_108[6];
    uint32_t g_110;
    uint8_t g_111[2];
    uint32_t *g_119;
    uint16_t g_130[7];
    volatile int32_t **g_139;
    volatile int32_t ***g_138;
    volatile int32_t ****g_137[6];
    uint64_t g_147[8];
    int16_t g_149;
    uint16_t g_179[5];
    uint16_t g_189;
    union U1 g_191[6][5][5];
    uint8_t *g_195[5][10];
    int64_t g_200[8];
    volatile uint8_t g_209;
    volatile uint8_t *g_208;
    volatile uint8_t **g_207;
    int64_t g_222[1][9];
    union U1 g_238;
    union U1 * volatile g_237;
    union U1 * volatile *g_236;
    uint64_t g_241[1][4];
    uint32_t ** volatile g_248;
    uint32_t ** volatile *g_247;
    int32_t g_249;
    uint16_t g_250;
    uint16_t g_265;
    volatile uint16_t g_268;
    volatile uint16_t *g_267;
    volatile uint16_t * volatile *g_266;
    uint64_t *g_280[6][6][7];
    uint64_t **g_279;
    int64_t g_281;
    uint32_t g_360[6][7][6];
    int8_t *g_372;
    int8_t **g_371;
    uint32_t g_386;
    int64_t g_398;
    uint32_t g_401;
    uint16_t **g_407;
    uint16_t ***g_406;
    union U0 g_425[3][10];
    union U0 *g_502;
    uint8_t g_508;
    union U1 g_519;
    union U1 g_520;
    union U1 g_521[9][7];
    union U1 g_522;
    union U1 g_523;
    union U1 g_524;
    union U1 *g_518[7][7][2];
    uint32_t g_557;
    int64_t g_677;
    uint8_t g_842[7];
    uint32_t **g_909;
    uint32_t ***g_908;
    union U0 ** volatile *g_931;
    int32_t *g_936;
    int32_t **g_935;
    uint32_t ****g_987;
    uint32_t g_1000;
    int8_t g_1035;
    int64_t g_1111;
    int32_t g_1138[9][9];
    int8_t g_1208;
    uint16_t ****g_1211;
    uint16_t *****g_1210[5];
    int16_t g_1252;
    int32_t g_1440[2];
    uint16_t g_1557;
    int64_t *g_1571;
    uint64_t g_1578;
    uint32_t g_1603;
    union U1 g_1610;
    union U1 g_1612;
    uint16_t g_1615;
    volatile int32_t g_1640;
    volatile int32_t *g_1639;
    uint32_t g_1705;
    int16_t g_1847;
    uint16_t g_1931;
    uint8_t g_1948;
    int64_t *g_2022;
    int64_t **g_2021;
    union U1 g_2101;
    union U1 **g_2128;
    uint64_t g_2191;
    union U1 g_2292;
    int32_t g_2346;
    int32_t *g_2345;
    int32_t **g_2344;
    volatile int64_t g_2379;
    volatile int64_t *g_2378;
    volatile int64_t * volatile *g_2377;
    volatile int64_t * volatile * volatile *g_2376;
    union U1 g_2557[2];
    int16_t g_2589;
    volatile int32_t g_2608;
    union U1 g_2697;
    union U1 g_2699;
    uint8_t g_2710;
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
int64_t  func_1(struct S2 * p_2754);
uint64_t  func_19(int32_t * p_20, int32_t * p_21, struct S2 * p_2754);
union U0  func_25(int32_t * p_26, union U0  p_27, uint8_t  p_28, int32_t * p_29, uint64_t  p_30, struct S2 * p_2754);
int32_t * func_31(int64_t  p_32, uint32_t  p_33, int32_t * p_34, uint32_t  p_35, struct S2 * p_2754);
int32_t * func_43(int64_t  p_44, int32_t ** p_45, int32_t ** p_46, int32_t * p_47, struct S2 * p_2754);
int8_t  func_49(int32_t * p_50, int32_t  p_51, int32_t * p_52, struct S2 * p_2754);
int64_t  func_57(int64_t  p_58, uint32_t  p_59, int64_t  p_60, struct S2 * p_2754);
int64_t  func_61(uint64_t  p_62, int32_t ** p_63, uint8_t  p_64, int32_t * p_65, struct S2 * p_2754);
int8_t  func_68(int32_t ** p_69, int32_t ** p_70, struct S2 * p_2754);
int8_t  func_73(int32_t * p_74, struct S2 * p_2754);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2754->g_4 p_2754->g_266 p_2754->g_267 p_2754->g_268 p_2754->g_2022 p_2754->g_398 p_2754->g_2021 p_2754->g_936 p_2754->g_41 p_2754->g_371 p_2754->g_372 p_2754->g_54 p_2754->g_519.f2 p_2754->g_24 p_2754->g_987 p_2754->g_908 p_2754->g_1571 p_2754->g_1111 p_2754->g_200 p_2754->g_281 p_2754->g_1138
 * writes: p_2754->g_4 p_2754->g_15 p_2754->g_398 p_2754->g_1440 p_2754->g_24 p_2754->g_524.f2 p_2754->g_519.f2 p_2754->g_200 p_2754->g_189 p_2754->g_1138
 */
int64_t  func_1(struct S2 * p_2754)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_3 = &p_2754->g_4;
    int32_t *l_5 = &p_2754->g_4;
    int32_t *l_6 = &p_2754->g_4;
    int32_t *l_7 = &p_2754->g_4;
    int32_t *l_8 = &p_2754->g_4;
    int32_t *l_9 = &p_2754->g_4;
    int32_t *l_10 = (void*)0;
    int32_t *l_11 = &p_2754->g_4;
    int32_t l_12 = 4L;
    int32_t *l_13 = &p_2754->g_4;
    int32_t *l_14[2][1];
    uint32_t l_16 = 0xB3E713E1L;
    int64_t *l_2750[9][1][1] = {{{&p_2754->g_281}},{{&p_2754->g_281}},{{&p_2754->g_281}},{{&p_2754->g_281}},{{&p_2754->g_281}},{{&p_2754->g_281}},{{&p_2754->g_281}},{{&p_2754->g_281}},{{&p_2754->g_281}}};
    int16_t l_2751 = (-8L);
    uint16_t *l_2752 = (void*)0;
    uint16_t *l_2753 = &p_2754->g_189;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_14[i][j] = &l_12;
    }
    --l_16;
    p_2754->g_1138[2][3] ^= (((func_19(&l_12, &l_12, p_2754) , 0UL) ^ (((void*)0 == (*p_2754->g_987)) != ((*p_2754->g_1571) , 0x59L))) | (safe_mod_func_uint16_t_u_u(((*l_2753) = (safe_add_func_int8_t_s_s(((p_2754->g_200[1] ^= 2L) > l_2751), (*p_2754->g_372)))), p_2754->g_281)));
    return (*p_2754->g_2022);
}


/* ------------------------------------------ */
/* 
 * reads : p_2754->g_4 p_2754->g_266 p_2754->g_267 p_2754->g_268 p_2754->g_2022 p_2754->g_398 p_2754->g_2021 p_2754->g_936 p_2754->g_41 p_2754->g_371 p_2754->g_372 p_2754->g_54 p_2754->g_519.f2 p_2754->g_24
 * writes: p_2754->g_4 p_2754->g_15 p_2754->g_398 p_2754->g_1440 p_2754->g_24 p_2754->g_524.f2 p_2754->g_519.f2
 */
uint64_t  func_19(int32_t * p_20, int32_t * p_21, struct S2 * p_2754)
{ /* block id: 6 */
    uint16_t l_22[5][10] = {{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL},{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL},{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL},{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL},{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL}};
    uint8_t **l_2496 = &p_2754->g_195[2][9];
    int32_t l_2498 = 1L;
    int32_t **l_2517[5];
    union U0 *l_2527 = &p_2754->g_425[0][8];
    uint8_t l_2665 = 246UL;
    int32_t l_2670 = (-1L);
    int32_t **l_2690 = &p_2754->g_41;
    int16_t l_2722 = 0L;
    int8_t l_2724 = (-1L);
    int i, j;
    for (i = 0; i < 5; i++)
        l_2517[i] = &p_2754->g_936;
    for (p_2754->g_4 = 3; (p_2754->g_4 >= 0); p_2754->g_4 -= 1)
    { /* block id: 9 */
        uint32_t l_37 = 0x50C19791L;
        int32_t **l_2480 = &p_2754->g_2345;
        uint8_t **l_2497[5];
        int32_t l_2500 = 0L;
        uint32_t l_2501[2][8][4] = {{{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L}},{{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L},{0x79F8BB0BL,0x79F8BB0BL,0x647ECC4EL,0x3D330409L}}};
        union U0 *l_2528[4] = {&p_2754->g_425[1][9],&p_2754->g_425[1][9],&p_2754->g_425[1][9],&p_2754->g_425[1][9]};
        uint32_t l_2556[8][5][2] = {{{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL}},{{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL}},{{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL}},{{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL}},{{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL}},{{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL}},{{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL}},{{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL},{0x4926BE9FL,0x4926BE9FL}}};
        uint32_t l_2576 = 0xFB3C1BBDL;
        int32_t l_2577 = (-6L);
        int32_t l_2581[10][5][5];
        int32_t *l_2621 = &p_2754->g_1440[1];
        int32_t l_2639 = 0x261A062BL;
        int8_t l_2668 = 0x17L;
        uint32_t *l_2671[10];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_2497[i] = (void*)0;
        for (i = 0; i < 10; i++)
        {
            for (j = 0; j < 5; j++)
            {
                for (k = 0; k < 5; k++)
                    l_2581[i][j][k] = (-7L);
            }
        }
        for (i = 0; i < 10; i++)
            l_2671[i] = &l_37;
        for (p_2754->g_15 = 4; (p_2754->g_15 >= 0); p_2754->g_15 -= 1)
        { /* block id: 12 */
            union U0 l_2471 = {8UL};
            int32_t *l_2472 = &p_2754->g_4;
            uint16_t *l_2499 = &p_2754->g_265;
            union U1 **l_2504 = &p_2754->g_518[0][0][1];
            uint16_t ******l_2511 = &p_2754->g_1210[0];
            uint32_t l_2535 = 0UL;
            int32_t l_2567 = 0x312260BEL;
            int32_t l_2582 = (-1L);
            int32_t l_2584 = (-3L);
            int32_t l_2585 = 0x1DAFDED2L;
            int32_t l_2587 = 0x2E9A4786L;
            int32_t l_2591 = 1L;
            int32_t l_2592 = 0x6D5AB3F1L;
            int32_t l_2594 = 0x76A3B66CL;
            int32_t l_2595[9][6] = {{(-1L),0x604008ABL,0x3615D574L,(-1L),0x2EB027B7L,0x3615D574L},{(-1L),0x604008ABL,0x3615D574L,(-1L),0x2EB027B7L,0x3615D574L},{(-1L),0x604008ABL,0x3615D574L,(-1L),0x2EB027B7L,0x3615D574L},{(-1L),0x604008ABL,0x3615D574L,(-1L),0x2EB027B7L,0x3615D574L},{(-1L),0x604008ABL,0x3615D574L,(-1L),0x2EB027B7L,0x3615D574L},{(-1L),0x604008ABL,0x3615D574L,(-1L),0x2EB027B7L,0x3615D574L},{(-1L),0x604008ABL,0x3615D574L,(-1L),0x2EB027B7L,0x3615D574L},{(-1L),0x604008ABL,0x3615D574L,(-1L),0x2EB027B7L,0x3615D574L},{(-1L),0x604008ABL,0x3615D574L,(-1L),0x2EB027B7L,0x3615D574L}};
            int8_t l_2669 = (-5L);
            int i, j;
            (1 + 1);
        }
        (*p_21) |= ((((*l_2621) = (((**p_2754->g_2021) = ((**p_2754->g_266) , (*p_2754->g_2022))) || (**p_2754->g_2021))) < ((*p_2754->g_41) = (*p_2754->g_936))) < (safe_rshift_func_int8_t_s_u((**p_2754->g_371), 5)));
        for (p_2754->g_524.f2 = 3; (p_2754->g_524.f2 >= 0); p_2754->g_524.f2 -= 1)
        { /* block id: 1373 */
            uint8_t l_2676 = 254UL;
            return l_2676;
        }
    }
    for (p_2754->g_519.f2 = (-7); (p_2754->g_519.f2 != 12); ++p_2754->g_519.f2)
    { /* block id: 1379 */
        int16_t l_2681 = (-10L);
        int32_t l_2691 = (-5L);
        union U1 *l_2698 = &p_2754->g_2699;
        int32_t l_2711 = 0x773592ECL;
        int32_t l_2720[4][8] = {{0x075777F3L,0x49C978F6L,0x3AB92601L,0x49C978F6L,0x075777F3L,0x075777F3L,0x49C978F6L,0x3AB92601L},{0x075777F3L,0x49C978F6L,0x3AB92601L,0x49C978F6L,0x075777F3L,0x075777F3L,0x49C978F6L,0x3AB92601L},{0x075777F3L,0x49C978F6L,0x3AB92601L,0x49C978F6L,0x075777F3L,0x075777F3L,0x49C978F6L,0x3AB92601L},{0x075777F3L,0x49C978F6L,0x3AB92601L,0x49C978F6L,0x075777F3L,0x075777F3L,0x49C978F6L,0x3AB92601L}};
        int i, j;
        (1 + 1);
    }
    return (**l_2690);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
union U0  func_25(int32_t * p_26, union U0  p_27, uint8_t  p_28, int32_t * p_29, uint64_t  p_30, struct S2 * p_2754)
{ /* block id: 1277 */
    union U0 l_2473 = {1UL};
    return l_2473;
}


/* ------------------------------------------ */
/* 
 * reads : p_2754->g_23 p_2754->g_130 p_2754->g_119 p_2754->g_110 p_2754->g_1138 p_2754->g_371 p_2754->g_372 p_2754->g_54 p_2754->g_1639 p_2754->g_1640 p_2754->g_83 p_2754->g_935 p_2754->g_41 p_2754->g_1111 p_2754->g_936 p_2754->g_4 p_2754->g_75
 * writes: p_2754->g_54 p_2754->g_265 p_2754->g_1847 p_2754->g_130 p_2754->g_842 p_2754->g_1138 p_2754->g_1640 p_2754->g_41 p_2754->g_936 p_2754->g_1111 p_2754->g_75
 */
int32_t * func_31(int64_t  p_32, uint32_t  p_33, int32_t * p_34, uint32_t  p_35, struct S2 * p_2754)
{ /* block id: 17 */
    uint8_t l_53[7] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL};
    int32_t *l_2470 = &p_2754->g_75[5][3];
    int i;
    for (p_32 = 0; (p_32 <= (-29)); p_32 = safe_sub_func_int64_t_s_s(p_32, 7))
    { /* block id: 20 */
        int32_t **l_42[6];
        int i;
        for (i = 0; i < 6; i++)
            l_42[i] = (void*)0;
        p_34 = &p_2754->g_4;
        for (p_35 = 0; (p_35 <= 5); p_35 += 1)
        { /* block id: 24 */
            int32_t l_48[1][5];
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 5; j++)
                    l_48[i][j] = (-1L);
            }
            (*p_2754->g_935) = ((*p_2754->g_83) = func_43(p_2754->g_23, l_42[p_35], &p_2754->g_41, ((l_48[0][2] , func_49(&l_48[0][2], (p_2754->g_54[0][0] = l_53[4]), p_34, p_2754)) , p_34), p_2754));
            (**p_2754->g_83) &= 0x212508C2L;
        }
        for (p_2754->g_1111 = 0; (p_2754->g_1111 != 2); ++p_2754->g_1111)
        { /* block id: 1270 */
            return l_2470;
        }
    }
    (*p_2754->g_1639) = ((*l_2470) &= (*p_2754->g_936));
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_2754->g_265 p_2754->g_1847 p_2754->g_130 p_2754->g_119 p_2754->g_110 p_2754->g_1138 p_2754->g_371 p_2754->g_372 p_2754->g_54 p_2754->g_1639 p_2754->g_1640
 * writes: p_2754->g_265 p_2754->g_1847 p_2754->g_130 p_2754->g_842 p_2754->g_1138 p_2754->g_1640
 */
int32_t * func_43(int64_t  p_44, int32_t ** p_45, int32_t ** p_46, int32_t * p_47, struct S2 * p_2754)
{ /* block id: 1243 */
    int32_t *l_2433 = &p_2754->g_1138[2][3];
    uint64_t *l_2449 = &p_2754->g_241[0][3];
    int16_t l_2464 = 0x7D8AL;
    int64_t ***l_2467 = &p_2754->g_2021;
lbl_2466:
    for (p_2754->g_265 = 28; (p_2754->g_265 != 8); --p_2754->g_265)
    { /* block id: 1246 */
        return l_2433;
    }
    for (p_2754->g_1847 = 24; (p_2754->g_1847 < 23); --p_2754->g_1847)
    { /* block id: 1251 */
        uint16_t *l_2440 = &p_2754->g_130[1];
        uint8_t *l_2456 = &p_2754->g_842[6];
        int32_t l_2461 = 0x69A9F0C5L;
        int32_t l_2465 = 0L;
        (*p_2754->g_1639) |= (safe_mul_func_int16_t_s_s((l_2465 = ((((safe_rshift_func_uint16_t_u_u((++(*l_2440)), 12)) , ((*p_2754->g_119) == (safe_mod_func_int32_t_s_s(((safe_lshift_func_int8_t_s_s(((*l_2433) = (safe_mod_func_uint16_t_u_u(((*l_2440) = ((((void*)0 != l_2449) ^ ((safe_div_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(((((safe_rshift_func_uint8_t_u_s(((*l_2456) = 0x31L), 6)) & ((-5L) <= p_44)) , (safe_mul_func_int8_t_s_s(p_44, (*l_2433)))) > (l_2461 = (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_2754->global_0_offset, get_global_id(0), 10), 6)))), (safe_rshift_func_uint8_t_u_u((l_2464 || (*p_2754->g_119)), p_44)))), 1L)) || p_44)) > 1L)), (-10L)))), (**p_2754->g_371))) < 0L), 0x0EFFFDDCL)))) & l_2465) >= 0xBD45427CL)), 6L));
        if (p_2754->g_110)
            goto lbl_2466;
        (*l_2433) = (((l_2465 , &p_2754->g_2021) != (l_2467 = &p_2754->g_2021)) || GROUP_DIVERGE(1, 1));
    }
    return l_2433;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_49(int32_t * p_50, int32_t  p_51, int32_t * p_52, struct S2 * p_2754)
{ /* block id: 26 */
    union U0 *l_929 = &p_2754->g_425[0][9];
    union U0 **l_928 = &l_929;
    union U0 ***l_927[1][5] = {{&l_928,&l_928,&l_928,&l_928,&l_928}};
    int32_t l_930 = 0L;
    int32_t l_2150[1];
    uint16_t *l_2163 = &p_2754->g_1557;
    uint16_t **l_2162[5][8] = {{&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163},{&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163},{&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163},{&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163},{&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163,&l_2163}};
    int64_t *l_2164 = &p_2754->g_1111;
    uint32_t ***l_2217 = &p_2754->g_909;
    uint32_t *****l_2230 = &p_2754->g_987;
    int32_t l_2244 = 0x3D0A9B1AL;
    uint16_t l_2245 = 1UL;
    uint16_t ******l_2299 = &p_2754->g_1210[1];
    int16_t *l_2320 = &p_2754->g_2101.f3;
    union U1 ***l_2341 = &p_2754->g_2128;
    int8_t **l_2429 = (void*)0;
    int8_t ***l_2430 = &l_2429;
    int i, j;
    for (i = 0; i < 1; i++)
        l_2150[i] = 1L;
    for (p_51 = 0; (p_51 >= 0); p_51 -= 1)
    { /* block id: 29 */
        int64_t l_934[4][5] = {{(-1L),1L,(-1L),(-1L),1L},{(-1L),1L,(-1L),(-1L),1L},{(-1L),1L,(-1L),(-1L),1L},{(-1L),1L,(-1L),(-1L),1L}};
        int32_t l_937 = 0L;
        uint16_t *l_2159 = &p_2754->g_130[1];
        uint16_t **l_2158 = &l_2159;
        uint16_t ***l_2160 = (void*)0;
        uint16_t ***l_2161[6];
        int64_t *l_2187 = &p_2754->g_1111;
        int8_t *l_2209 = &p_2754->g_54[2][0];
        int32_t l_2241 = (-1L);
        int32_t l_2243[6][2] = {{0x27F01DB3L,0x27F01DB3L},{0x27F01DB3L,0x27F01DB3L},{0x27F01DB3L,0x27F01DB3L},{0x27F01DB3L,0x27F01DB3L},{0x27F01DB3L,0x27F01DB3L},{0x27F01DB3L,0x27F01DB3L}};
        union U0 l_2330 = {0x749C664CL};
        uint32_t ****l_2334 = &l_2217;
        int8_t l_2366 = 0x24L;
        int32_t *l_2394 = (void*)0;
        int i, j;
        for (i = 0; i < 6; i++)
            l_2161[i] = (void*)0;
        (1 + 1);
    }
    (*l_2430) = l_2429;
    return p_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_2754->g_1000 p_2754->g_1138 p_2754->g_909 p_2754->g_119 p_2754->g_110 p_2754->g_24 p_2754->g_249
 * writes: p_2754->g_1000 p_2754->g_1138 p_2754->g_1440 p_2754->g_249
 */
int64_t  func_57(int64_t  p_58, uint32_t  p_59, int64_t  p_60, struct S2 * p_2754)
{ /* block id: 1079 */
    uint8_t l_2147 = 0x75L;
    for (p_2754->g_1000 = 25; (p_2754->g_1000 >= 14); --p_2754->g_1000)
    { /* block id: 1082 */
        int32_t *l_2132 = &p_2754->g_1138[2][3];
        int32_t *l_2133 = &p_2754->g_1440[0];
        int32_t *l_2134 = &p_2754->g_249;
        int32_t l_2135 = 9L;
        int32_t *l_2136 = &p_2754->g_249;
        int32_t *l_2137 = &p_2754->g_1440[1];
        int32_t *l_2138 = &p_2754->g_1138[8][8];
        int32_t *l_2139 = &l_2135;
        int32_t *l_2140 = &p_2754->g_1138[0][4];
        int32_t *l_2141 = &p_2754->g_1138[2][3];
        int32_t l_2142 = 1L;
        int32_t *l_2143 = &p_2754->g_75[5][6];
        int32_t *l_2144 = (void*)0;
        int32_t *l_2145 = &l_2142;
        int32_t *l_2146[3];
        int i;
        for (i = 0; i < 3; i++)
            l_2146[i] = (void*)0;
        (*l_2134) |= ((*l_2133) = (((*l_2132) ^= p_59) >= (**p_2754->g_909)));
        l_2147--;
    }
    return p_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_2754->g_935 p_2754->g_524.f2 p_2754->g_200 p_2754->g_842 p_2754->g_75 p_2754->g_130 p_2754->g_908 p_2754->g_909 p_2754->g_119 p_2754->g_110 p_2754->g_24 p_2754->g_249 p_2754->g_1000 p_2754->g_425 p_2754->g_222 p_2754->g_2022 p_2754->g_398
 * writes: p_2754->g_522.f3 p_2754->g_524.f2 p_2754->g_936 p_2754->g_502 p_2754->g_75 p_2754->g_222 p_2754->g_520.f3 p_2754->g_179 p_2754->g_987 p_2754->g_249 p_2754->g_520.f1 p_2754->g_842 p_2754->g_519.f3 p_2754->g_523.f3 p_2754->g_1000 p_2754->g_508
 */
int64_t  func_61(uint64_t  p_62, int32_t ** p_63, uint8_t  p_64, int32_t * p_65, struct S2 * p_2754)
{ /* block id: 438 */
    int32_t l_939 = 2L;
    int32_t l_947 = 0x143B8D4FL;
    int32_t l_948[7] = {0x68603D08L,0x68603D08L,0x68603D08L,0x68603D08L,0x68603D08L,0x68603D08L,0x68603D08L};
    union U0 *l_960 = &p_2754->g_425[2][4];
    uint32_t ****l_988 = &p_2754->g_908;
    uint32_t *l_1011 = (void*)0;
    uint32_t *l_1012 = (void*)0;
    uint32_t *l_1013 = &p_2754->g_401;
    uint32_t ***l_1026 = &p_2754->g_909;
    uint8_t *l_1027 = (void*)0;
    uint8_t *l_1028 = (void*)0;
    uint8_t *l_1029 = &p_2754->g_842[3];
    uint64_t *l_1032 = &p_2754->g_425[0][8].f1;
    uint64_t *l_1033 = &p_2754->g_147[1];
    int8_t *l_1034 = &p_2754->g_1035;
    int16_t l_1036 = 8L;
    uint64_t l_1037[1][9] = {{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}};
    int64_t *l_1038 = &p_2754->g_222[0][2];
    int16_t *l_1139 = &p_2754->g_522.f3;
    uint32_t l_1209[1][3][9] = {{{0xFAE4166DL,0UL,4294967295UL,0UL,0xFAE4166DL,0xFAE4166DL,0UL,4294967295UL,0UL},{0xFAE4166DL,0UL,4294967295UL,0UL,0xFAE4166DL,0xFAE4166DL,0UL,4294967295UL,0UL},{0xFAE4166DL,0UL,4294967295UL,0UL,0xFAE4166DL,0xFAE4166DL,0UL,4294967295UL,0UL}}};
    int32_t l_1276 = 0L;
    uint32_t l_1315 = 4294967289UL;
    uint16_t ****l_1343[5] = {&p_2754->g_406,&p_2754->g_406,&p_2754->g_406,&p_2754->g_406,&p_2754->g_406};
    uint8_t **l_1360[2][1];
    uint8_t ***l_1359[2][7][4] = {{{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0}},{{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0},{(void*)0,&l_1360[0][0],&l_1360[0][0],(void*)0}}};
    int16_t l_1426 = 0x1AA1L;
    int32_t l_1467[10] = {0L,1L,(-1L),1L,0L,0L,1L,(-1L),1L,0L};
    uint64_t l_1582 = 6UL;
    int16_t l_1660 = 0x645DL;
    int32_t *l_1664[1][9][7] = {{{&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3],&p_2754->g_1440[0],&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3]},{&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3],&p_2754->g_1440[0],&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3]},{&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3],&p_2754->g_1440[0],&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3]},{&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3],&p_2754->g_1440[0],&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3]},{&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3],&p_2754->g_1440[0],&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3]},{&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3],&p_2754->g_1440[0],&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3]},{&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3],&p_2754->g_1440[0],&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3]},{&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3],&p_2754->g_1440[0],&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3]},{&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3],&p_2754->g_1440[0],&p_2754->g_1440[0],&p_2754->g_1138[2][3],&p_2754->g_1138[2][3]}}};
    uint64_t l_1771 = 18446744073709551610UL;
    int64_t l_1795 = 0x22E1D9522AC78AD9L;
    int8_t l_1798 = 0x7FL;
    uint8_t l_1816 = 251UL;
    int32_t ***l_1821[3];
    int32_t ***l_1844 = (void*)0;
    uint16_t l_1846 = 0x41A7L;
    uint16_t *****l_1898 = &l_1343[1];
    uint32_t l_1901 = 0x7C05DAD8L;
    union U0 l_1921 = {4294967286UL};
    int32_t l_1930 = 0x3F8E5C4BL;
    uint16_t l_1999 = 0x2569L;
    int16_t l_2030 = 0x5691L;
    uint64_t l_2048 = 18446744073709551613UL;
    union U1 **l_2063[4];
    uint8_t l_2068 = 0xC1L;
    uint32_t *l_2097 = (void*)0;
    uint32_t **l_2096[8][7] = {{&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097},{&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097},{&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097},{&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097},{&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097},{&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097},{&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097},{&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097,&l_2097}};
    union U0 **l_2124 = &l_960;
    union U0 ***l_2123 = &l_2124;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_1360[i][j] = &l_1028;
    }
    for (i = 0; i < 3; i++)
        l_1821[i] = &p_2754->g_935;
    for (i = 0; i < 4; i++)
        l_2063[i] = &p_2754->g_518[6][6][1];
    l_939 &= (safe_unary_minus_func_int16_t_s(p_64));
    for (p_2754->g_522.f3 = (-26); (p_2754->g_522.f3 >= (-17)); p_2754->g_522.f3 = safe_add_func_uint64_t_u_u(p_2754->g_522.f3, 5))
    { /* block id: 442 */
        int32_t *l_942 = &p_2754->g_249;
        int32_t *l_943 = &l_939;
        int32_t *l_944 = &p_2754->g_249;
        int32_t *l_945 = &p_2754->g_75[3][3];
        int32_t *l_946[1][1][5] = {{{&p_2754->g_75[3][3],&p_2754->g_75[3][3],&p_2754->g_75[3][3],&p_2754->g_75[3][3],&p_2754->g_75[3][3]}}};
        int32_t l_949 = 0x5A735A44L;
        uint64_t l_950 = 0x43091E52F0D1DCCBL;
        union U0 *l_977 = &p_2754->g_425[0][7];
        int i, j, k;
        --l_950;
        for (p_2754->g_524.f2 = 0; (p_2754->g_524.f2 <= 4); p_2754->g_524.f2 += 1)
        { /* block id: 446 */
            union U0 *l_957 = &p_2754->g_425[1][5];
            int64_t *l_961 = &p_2754->g_222[0][2];
            int32_t l_996[3][9] = {{(-1L),0L,0x3D8BABBBL,0x601A6C34L,0x3D8BABBBL,0L,(-1L),0x5BF0C63DL,0x7EEEE297L},{(-1L),0L,0x3D8BABBBL,0x601A6C34L,0x3D8BABBBL,0L,(-1L),0x5BF0C63DL,0x7EEEE297L},{(-1L),0L,0x3D8BABBBL,0x601A6C34L,0x3D8BABBBL,0L,(-1L),0x5BF0C63DL,0x7EEEE297L}};
            int i, j;
            for (l_939 = 0; (l_939 <= 4); l_939 += 1)
            { /* block id: 449 */
                union U0 **l_958 = &p_2754->g_502;
                union U0 **l_959[7] = {&l_957,(void*)0,&l_957,&l_957,(void*)0,&l_957,&l_957};
                int i, j;
                (*p_2754->g_935) = &p_2754->g_75[l_939][l_939];
                p_2754->g_75[p_2754->g_524.f2][(p_2754->g_524.f2 + 3)] = (safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(0xBEFC55A1L, ((((void*)0 != p_65) >= (((((&l_949 != p_65) != ((l_960 = ((*l_958) = l_957)) == l_957)) , (void*)0) == &p_2754->g_406) == p_2754->g_200[(p_2754->g_524.f2 + 1)])) & 0x4C8F657AE1E37635L))), p_2754->g_842[(l_939 + 2)]));
                return p_2754->g_75[3][7];
            }
            if ((((*l_961) = p_2754->g_200[p_2754->g_524.f2]) || (safe_add_func_int16_t_s_s(p_2754->g_842[(p_2754->g_524.f2 + 1)], (*l_943)))))
            { /* block id: 457 */
                return p_62;
            }
            else
            { /* block id: 459 */
                int32_t l_989 = 0L;
                for (p_2754->g_520.f3 = 0; (p_2754->g_520.f3 <= 4); p_2754->g_520.f3 += 1)
                { /* block id: 462 */
                    uint16_t l_970 = 0x5832L;
                    union U0 **l_972 = &l_957;
                    union U0 ***l_971 = &l_972;
                    uint32_t l_984 = 0xE4E9C3A7L;
                    int32_t l_990 = 1L;
                    for (l_947 = 0; (l_947 <= 4); l_947 += 1)
                    { /* block id: 465 */
                        uint32_t ****l_986 = (void*)0;
                        uint32_t *****l_985[6];
                        int i, j;
                        for (i = 0; i < 6; i++)
                            l_985[i] = &l_986;
                        l_990 = ((*l_942) = (safe_sub_func_uint16_t_u_u((p_2754->g_179[0] = (safe_mul_func_int16_t_s_s(p_2754->g_130[l_947], p_64))), (((((*l_945) &= l_970) <= (l_971 != (void*)0)) != (~((((((safe_add_func_int32_t_s_s((safe_lshift_func_int16_t_s_u(((l_977 = l_960) == (void*)0), 12)), (safe_rshift_func_int16_t_s_u((((((p_2754->g_987 = ((safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((p_62 >= (***p_2754->g_908)), l_984)), l_970)) , (void*)0)) == l_988) < l_984) > 4L) ^ GROUP_DIVERGE(2, 1)), 1)))) >= 7UL) || p_2754->g_249) <= p_64) <= l_948[3]) <= 4UL))) || l_989))));
                    }
                }
                for (p_2754->g_520.f1 = 0; p_2754->g_520.f1 < 7; p_2754->g_520.f1 += 1)
                {
                    p_2754->g_842[p_2754->g_520.f1] = 0UL;
                }
            }
            for (p_2754->g_519.f3 = 1; (p_2754->g_519.f3 <= 5); p_2754->g_519.f3 += 1)
            { /* block id: 478 */
                uint8_t l_991 = 255UL;
                int32_t l_995 = 0x40C09EBAL;
                int32_t l_997 = 0x5F0F4103L;
                int32_t l_998[3];
                uint8_t *l_1005 = (void*)0;
                uint8_t *l_1006 = &p_2754->g_508;
                int i;
                for (i = 0; i < 3; i++)
                    l_998[i] = 0x1DD996B0L;
                if (l_991)
                    break;
                for (p_2754->g_523.f3 = 0; (p_2754->g_523.f3 <= 4); p_2754->g_523.f3 += 1)
                { /* block id: 482 */
                    uint64_t l_994 = 3UL;
                    int32_t l_999 = 0L;
                    int i;
                    (*l_942) = ((!(safe_rshift_func_int16_t_s_s(l_939, 10))) , l_994);
                    p_2754->g_1000--;
                    (*p_2754->g_935) = &l_996[1][0];
                }
                (*l_943) = ((safe_rshift_func_int8_t_s_u((FAKE_DIVERGE(p_2754->group_0_offset, get_group_id(0), 10) > ((*l_960) , ((*l_1006) = (l_948[2] , l_998[2])))), 7)) || (l_995 == ((*l_961) ^= p_64)));
            }
        }
    }
    return (*p_2754->g_2022);
}


/* ------------------------------------------ */
/* 
 * reads : p_2754->g_41 p_2754->g_75 p_2754->g_24 p_2754->g_83 p_2754->g_111 p_2754->g_425.f0 p_2754->g_119 p_2754->g_110 p_2754->g_518 p_2754->g_249 p_2754->g_222 p_2754->g_281 p_2754->g_130 p_2754->g_557 p_2754->g_523.f2 p_2754->g_238.f3 p_2754->g_524.f2 p_2754->g_508 p_2754->g_241 p_2754->g_522.f2 p_2754->g_54 p_2754->g_360 p_2754->g_179 p_2754->g_250 p_2754->g_207 p_2754->g_208 p_2754->g_372 p_2754->g_371 p_2754->g_15 p_2754->g_842 p_2754->g_265 p_2754->g_908 p_2754->g_398 p_2754->g_4
 * writes: p_2754->g_75 p_2754->g_83 p_2754->g_41 p_2754->g_502 p_2754->g_111 p_2754->g_508 p_2754->g_110 p_2754->g_249 p_2754->g_222 p_2754->g_557 p_2754->g_523.f2 p_2754->g_524.f2 p_2754->g_522.f2 p_2754->g_238.f3 p_2754->g_406 p_2754->g_179 p_2754->g_119 p_2754->g_250 p_2754->g_842 p_2754->g_908 p_2754->g_130
 */
int8_t  func_68(int32_t ** p_69, int32_t ** p_70, struct S2 * p_2754)
{ /* block id: 30 */
    uint16_t l_893 = 65529UL;
    int32_t l_896[5];
    uint8_t *l_897 = &p_2754->g_842[5];
    int16_t *l_902[4];
    int8_t ***l_903 = &p_2754->g_371;
    int8_t *l_904 = (void*)0;
    int32_t *l_905 = &l_896[3];
    uint32_t ****l_910 = &p_2754->g_908;
    uint16_t *l_911 = &p_2754->g_130[1];
    uint16_t l_924 = 0xF2D7L;
    int32_t *l_925[9] = {&p_2754->g_75[4][5],&p_2754->g_75[4][5],&p_2754->g_75[4][5],&p_2754->g_75[4][5],&p_2754->g_75[4][5],&p_2754->g_75[4][5],&p_2754->g_75[4][5],&p_2754->g_75[4][5],&p_2754->g_75[4][5]};
    int i;
    for (i = 0; i < 5; i++)
        l_896[i] = (-1L);
    for (i = 0; i < 4; i++)
        l_902[i] = &p_2754->g_108[4];
    (*l_905) = (safe_rshift_func_int8_t_s_u(func_73(((!0x693C254FL) , (*p_70)), p_2754), ((((safe_add_func_uint16_t_u_u(l_893, ((((((safe_div_func_uint8_t_u_u((--(*l_897)), 1UL)) >= (+(safe_lshift_func_uint16_t_u_s(p_2754->g_265, 13)))) , (void*)0) == l_902[3]) & (l_903 == &p_2754->g_371)) , p_2754->g_281))) , l_904) == (**l_903)) , l_896[1])));
    if (p_2754->g_24)
        goto lbl_926;
    (*l_905) ^= (*p_2754->g_41);
lbl_926:
    p_2754->g_75[3][3] &= (safe_rshift_func_int16_t_s_s((l_924 = ((((*l_910) = p_2754->g_908) != (((*l_905) != ((FAKE_DIVERGE(p_2754->global_0_offset, get_global_id(0), 10) , ((((*l_905) == p_2754->g_398) != GROUP_DIVERGE(2, 1)) & (((*l_911) = ((&p_2754->g_241[0][3] != &p_2754->g_241[0][3]) != (*l_905))) , (*l_905)))) , ((safe_mul_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u((safe_add_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s(((safe_sub_func_int16_t_s_s((((((safe_mod_func_uint8_t_u_u((*l_905), (-5L))) , &p_2754->g_267) != &l_911) , GROUP_DIVERGE(0, 1)) || 255UL), 0x7A47L)) , (*l_905)), 0)), 249UL)), p_2754->g_179[4])) != 250UL), 0x7B3DL)) || p_2754->g_4))) , &p_2754->g_909)) , (*l_905))), 7));
    (*l_905) = 0x7F4519BEL;
    return (*p_2754->g_372);
}


/* ------------------------------------------ */
/* 
 * reads : p_2754->g_75 p_2754->g_41 p_2754->g_24 p_2754->g_83 p_2754->g_111 p_2754->g_425.f0 p_2754->g_119 p_2754->g_110 p_2754->g_518 p_2754->g_249 p_2754->g_222 p_2754->g_281 p_2754->g_130 p_2754->g_557 p_2754->g_523.f2 p_2754->g_238.f3 p_2754->g_524.f2 p_2754->g_508 p_2754->g_241 p_2754->g_522.f2 p_2754->g_54 p_2754->g_360 p_2754->g_179 p_2754->g_250 p_2754->g_207 p_2754->g_208 p_2754->g_372 p_2754->g_371 p_2754->g_15
 * writes: p_2754->g_75 p_2754->g_83 p_2754->g_41 p_2754->g_502 p_2754->g_111 p_2754->g_508 p_2754->g_110 p_2754->g_249 p_2754->g_222 p_2754->g_557 p_2754->g_523.f2 p_2754->g_524.f2 p_2754->g_522.f2 p_2754->g_238.f3 p_2754->g_406 p_2754->g_179 p_2754->g_119 p_2754->g_250
 */
int8_t  func_73(int32_t * p_74, struct S2 * p_2754)
{ /* block id: 31 */
    uint32_t l_78 = 0x82152669L;
    int32_t *l_89[8][1][2] = {{{&p_2754->g_75[0][8],&p_2754->g_24}},{{&p_2754->g_75[0][8],&p_2754->g_24}},{{&p_2754->g_75[0][8],&p_2754->g_24}},{{&p_2754->g_75[0][8],&p_2754->g_24}},{{&p_2754->g_75[0][8],&p_2754->g_24}},{{&p_2754->g_75[0][8],&p_2754->g_24}},{{&p_2754->g_75[0][8],&p_2754->g_24}},{{&p_2754->g_75[0][8],&p_2754->g_24}}};
    uint8_t *l_164 = &p_2754->g_111[0];
    union U1 *l_190 = &p_2754->g_191[4][0][4];
    int32_t **l_242 = &l_89[5][0][1];
    int32_t l_274 = 0L;
    uint64_t l_320[10] = {0x9372414C672D6932L,0xEAFF5E016AE771B1L,0x9372414C672D6932L,0x9372414C672D6932L,0xEAFF5E016AE771B1L,0x9372414C672D6932L,0x9372414C672D6932L,0xEAFF5E016AE771B1L,0x9372414C672D6932L,0x9372414C672D6932L};
    uint32_t l_357[7][9][3] = {{{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L}},{{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L}},{{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L}},{{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L}},{{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L}},{{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L}},{{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L},{0x6BD690EFL,1UL,0xEB1A95B7L}}};
    uint16_t ***l_409 = &p_2754->g_407;
    uint64_t ***l_470 = &p_2754->g_279;
    uint32_t l_537 = 1UL;
    union U0 l_542 = {0x98DB5B80L};
    uint32_t *l_776[9][5] = {{&p_2754->g_110,&p_2754->g_110,(void*)0,&p_2754->g_401,(void*)0},{&p_2754->g_110,&p_2754->g_110,(void*)0,&p_2754->g_401,(void*)0},{&p_2754->g_110,&p_2754->g_110,(void*)0,&p_2754->g_401,(void*)0},{&p_2754->g_110,&p_2754->g_110,(void*)0,&p_2754->g_401,(void*)0},{&p_2754->g_110,&p_2754->g_110,(void*)0,&p_2754->g_401,(void*)0},{&p_2754->g_110,&p_2754->g_110,(void*)0,&p_2754->g_401,(void*)0},{&p_2754->g_110,&p_2754->g_110,(void*)0,&p_2754->g_401,(void*)0},{&p_2754->g_110,&p_2754->g_110,(void*)0,&p_2754->g_401,(void*)0},{&p_2754->g_110,&p_2754->g_110,(void*)0,&p_2754->g_401,(void*)0}};
    uint32_t **l_783[9];
    uint8_t l_805 = 0x94L;
    uint16_t l_852[10][9] = {{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL},{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL},{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL},{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL},{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL},{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL},{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL},{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL},{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL},{0xADD5L,0xB58CL,0xB58CL,0xADD5L,0UL,0xBD71L,65532UL,0x727DL,3UL}};
    int32_t l_873 = 1L;
    uint32_t l_888 = 0x87C9BBCEL;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_783[i] = &l_776[7][2];
    for (p_2754->g_75[3][3] = 0; (p_2754->g_75[3][3] > (-6)); --p_2754->g_75[3][3])
    { /* block id: 34 */
        int32_t **l_80[6][10] = {{&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41},{&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41},{&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41},{&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41},{&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41},{&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41,(void*)0,&p_2754->g_41,&p_2754->g_41}};
        int32_t ***l_79 = &l_80[1][8];
        int32_t **l_82 = &p_2754->g_41;
        int32_t ***l_81[1][7][8] = {{{&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82},{&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82},{&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82},{&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82},{&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82},{&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82},{&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82}}};
        uint32_t l_92 = 5UL;
        uint8_t *l_105 = (void*)0;
        uint8_t *l_106 = (void*)0;
        uint8_t *l_107[9];
        uint32_t *l_109 = &p_2754->g_110;
        int32_t l_239[3][4][10] = {{{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L},{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L},{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L},{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L}},{{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L},{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L},{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L},{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L}},{{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L},{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L},{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L},{0L,6L,0x7E292FD3L,0L,6L,0x671808FFL,0x671808FFL,6L,0L,0x7E292FD3L}}};
        uint32_t **l_246 = (void*)0;
        uint32_t ***l_245 = &l_246;
        int16_t l_271 = 0x3741L;
        int32_t *l_356 = &p_2754->g_75[2][0];
        uint32_t *l_385 = &p_2754->g_386;
        union U0 l_394 = {5UL};
        uint16_t ****l_426 = (void*)0;
        uint32_t l_441 = 0x8FB2FC89L;
        uint32_t l_456 = 0x6792C2E9L;
        uint64_t l_462 = 1UL;
        uint32_t l_495[8][2] = {{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL},{4294967287UL,1UL}};
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_107[i] = (void*)0;
        l_78 = 1L;
        p_2754->g_83 = ((*l_79) = &p_2754->g_41);
    }
    (*l_242) = (*l_242);
    if ((*p_2754->g_41))
    { /* block id: 227 */
        int32_t *l_496 = &p_2754->g_75[1][2];
        uint32_t l_497 = 4294967287UL;
        union U0 *l_500 = &p_2754->g_425[0][8];
        union U0 **l_501[8][9][3] = {{{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500}},{{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500}},{{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500}},{{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500}},{{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500}},{{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500}},{{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500}},{{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500},{(void*)0,&l_500,&l_500}}};
        uint8_t *l_507 = &p_2754->g_508;
        int32_t l_511 = (-3L);
        uint16_t ***l_525 = &p_2754->g_407;
        int8_t l_526 = (-9L);
        uint8_t l_535 = 1UL;
        uint64_t *l_536[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t l_555 = 0x1D8A4A2BF40700C9L;
        int32_t l_556 = 0L;
        int16_t *l_581 = (void*)0;
        uint32_t **l_586 = &p_2754->g_119;
        int16_t l_603 = 1L;
        int32_t *l_605[3];
        uint32_t l_645 = 1UL;
        int32_t l_656 = (-5L);
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_605[i] = &p_2754->g_4;
        (*p_2754->g_83) = l_496;
        p_2754->g_249 ^= ((l_497 && (safe_div_func_uint16_t_u_u((((p_2754->g_502 = l_500) != &p_2754->g_425[0][8]) , 0xD60CL), ((safe_mul_func_uint8_t_u_u(((*l_507) = ((*l_164)--)), (safe_mul_func_int16_t_s_s(p_2754->g_425[0][8].f0, l_511)))) , (((*p_2754->g_119)++) & (safe_rshift_func_int8_t_s_u((((safe_div_func_uint8_t_u_u((((p_2754->g_518[0][0][1] == (void*)0) , 4294967295UL) , (*l_496)), 255UL)) , (void*)0) != l_525), l_526))))))) ^ 0UL);
        p_2754->g_557 ^= (safe_add_func_uint8_t_u_u((*l_496), ((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (*p_2754->g_41))) != (p_2754->g_75[3][3] | ((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((l_535 & (l_537 = (*l_496))), (safe_mod_func_int8_t_s_s(((((safe_mul_func_uint8_t_u_u((l_542 , ((((void*)0 != &l_501[2][6][0]) | ((safe_add_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s(((safe_div_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_u((((p_2754->g_222[0][8] ^= 0x437AFDBE4B196181L) != l_555) | (**p_2754->g_83)), (*l_496))) | p_2754->g_281), 0xA2EED5A8BE222EF4L)) >= 0L), (*l_496))), p_2754->g_249)), 0x5B75L)) , 65533UL), (*l_496))) & p_2754->g_130[5])) >= l_556)), (*l_496))) != 7UL) >= 5L) | 252UL), 8L)))), p_2754->g_111[0])) == (*l_496))))));
        for (p_2754->g_523.f2 = 0; (p_2754->g_523.f2 != 25); ++p_2754->g_523.f2)
        { /* block id: 239 */
            int32_t l_560 = (-9L);
            int32_t l_561 = 0x04C44B8DL;
            uint64_t l_567 = 0xBE359ECBBD05030BL;
            int64_t *l_601 = &p_2754->g_222[0][2];
            int32_t l_602[8][6][5] = {{{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L}},{{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L}},{{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L}},{{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L}},{{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L}},{{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L}},{{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L}},{{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L},{0x25A241DAL,(-1L),(-1L),3L,0x392794F2L}}};
            uint32_t l_624[3][7] = {{1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL}};
            union U0 **l_660 = &l_500;
            uint16_t ****l_672 = &l_525;
            uint32_t ***l_684 = &l_586;
            uint32_t *l_708 = &l_542.f2;
            uint32_t *l_709 = &l_645;
            int8_t *l_718 = &l_526;
            int i, j, k;
            for (p_2754->g_524.f2 = 0; (p_2754->g_524.f2 <= 2); p_2754->g_524.f2 += 1)
            { /* block id: 242 */
                uint16_t l_562 = 1UL;
                int16_t *l_582 = &p_2754->g_149;
                uint64_t **l_585 = &p_2754->g_280[0][4][6];
                l_562--;
                if ((*p_74))
                    break;
                for (p_2754->g_522.f2 = 2; (p_2754->g_522.f2 >= 0); p_2754->g_522.f2 -= 1)
                { /* block id: 247 */
                    uint32_t l_583 = 4294967295UL;
                    uint32_t l_584[10][1] = {{0xE6A0846AL},{0xE6A0846AL},{0xE6A0846AL},{0xE6A0846AL},{0xE6A0846AL},{0xE6A0846AL},{0xE6A0846AL},{0xE6A0846AL},{0xE6A0846AL},{0xE6A0846AL}};
                    int32_t *l_604[7] = {&p_2754->g_75[4][9],&p_2754->g_75[4][9],&p_2754->g_75[4][9],&p_2754->g_75[4][9],&p_2754->g_75[4][9],&p_2754->g_75[4][9],&p_2754->g_75[4][9]};
                    int i, j;
                    (1 + 1);
                }
            }
        }
    }
    else
    { /* block id: 314 */
        uint64_t l_730 = 18446744073709551615UL;
        int32_t l_741 = (-1L);
        int64_t l_750 = 0x727E86DC89E04C08L;
        int32_t l_757 = (-10L);
        int32_t l_758 = 0x08E0F10EL;
        int32_t l_760 = 9L;
        int32_t l_761[9] = {0x21632EFBL,0x21632EFBL,0x21632EFBL,0x21632EFBL,0x21632EFBL,0x21632EFBL,0x21632EFBL,0x21632EFBL,0x21632EFBL};
        uint32_t ***l_784 = &l_783[6];
        uint16_t *l_795 = &p_2754->g_189;
        uint16_t l_884[8][7][1] = {{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}};
        int i, j, k;
        for (p_2754->g_238.f3 = (-15); (p_2754->g_238.f3 <= (-27)); p_2754->g_238.f3 = safe_sub_func_uint16_t_u_u(p_2754->g_238.f3, 8))
        { /* block id: 317 */
            int16_t l_739 = 0x4596L;
            int32_t l_744 = 1L;
            int32_t l_751 = 0x151DF64CL;
            int32_t l_753 = (-5L);
            int32_t l_755[2];
            int32_t *l_766 = &p_2754->g_75[3][3];
            int i;
            for (i = 0; i < 2; i++)
                l_755[i] = (-1L);
            for (p_2754->g_524.f2 = 0; (p_2754->g_524.f2 <= 0); p_2754->g_524.f2 += 1)
            { /* block id: 320 */
                uint8_t l_740 = 0xF6L;
                int32_t l_746 = 0x1C9F6E71L;
                int32_t l_747[6][4] = {{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}};
                int i, j;
                for (p_2754->g_522.f2 = 0; (p_2754->g_522.f2 <= 0); p_2754->g_522.f2 += 1)
                { /* block id: 323 */
                    int8_t **l_733 = &p_2754->g_372;
                    uint16_t *l_738[10][6][4] = {{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}},{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}},{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}},{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}},{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}},{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}},{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}},{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}},{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}},{{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189},{&p_2754->g_265,&p_2754->g_265,&p_2754->g_189,&p_2754->g_189}}};
                    int32_t l_745 = 0x279A03B0L;
                    int32_t l_748 = 0L;
                    int32_t l_749 = 0L;
                    int32_t l_754[9][4];
                    union U0 l_765 = {0x048EADF7L};
                    int i, j, k;
                    for (i = 0; i < 9; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_754[i][j] = 0x31F9AFB3L;
                    }
                    for (p_2754->g_508 = 0; (p_2754->g_508 <= 0); p_2754->g_508 += 1)
                    { /* block id: 326 */
                        uint16_t ****l_727[10] = {&p_2754->g_406,&p_2754->g_406,&p_2754->g_406,&p_2754->g_406,&p_2754->g_406,&p_2754->g_406,&p_2754->g_406,&p_2754->g_406,&p_2754->g_406,&p_2754->g_406};
                        uint16_t l_742 = 0xB7A8L;
                        int32_t l_743 = 0L;
                        int32_t l_752 = (-1L);
                        int32_t l_756[2][9] = {{0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L},{0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L,0x62DB98C7L}};
                        int8_t l_759 = 9L;
                        uint32_t l_762[7][9];
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                        {
                            for (j = 0; j < 9; j++)
                                l_762[i][j] = 0xFF89FDD4L;
                        }
                        l_743 &= (l_742 &= (safe_rshift_func_int8_t_s_s((safe_div_func_int32_t_s_s((safe_add_func_int64_t_s_s((l_409 != (p_2754->g_406 = (void*)0)), (~(((safe_add_func_int16_t_s_s(p_2754->g_241[p_2754->g_524.f2][(p_2754->g_508 + 2)], (((p_2754->g_54[(p_2754->g_508 + 2)][p_2754->g_522.f2] != ((++l_730) , p_2754->g_54[(p_2754->g_524.f2 + 1)][p_2754->g_524.f2])) , l_733) != (void*)0))) & (safe_add_func_int32_t_s_s(p_2754->g_360[(p_2754->g_508 + 5)][(p_2754->g_522.f2 + 4)][(p_2754->g_522.f2 + 5)], ((((p_2754->g_179[4]++) < (((void*)0 == l_738[8][4][0]) && l_739)) == l_740) == l_741)))) < 0xEAL)))), 0x09D1A56AL)), l_741)));
                        l_744 = 0x34451284L;
                        if (p_2754->g_241[p_2754->g_524.f2][(p_2754->g_508 + 2)])
                            continue;
                        ++l_762[6][3];
                    }
                    for (p_2754->g_508 = 0; (p_2754->g_508 <= 0); p_2754->g_508 += 1)
                    { /* block id: 338 */
                        uint32_t **l_775[6][8] = {{&p_2754->g_119,&p_2754->g_119,(void*)0,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119},{&p_2754->g_119,&p_2754->g_119,(void*)0,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119},{&p_2754->g_119,&p_2754->g_119,(void*)0,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119},{&p_2754->g_119,&p_2754->g_119,(void*)0,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119},{&p_2754->g_119,&p_2754->g_119,(void*)0,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119},{&p_2754->g_119,&p_2754->g_119,(void*)0,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119,&p_2754->g_119}};
                        int i, j;
                        l_766 = (l_765 , l_766);
                        (*l_766) = ((safe_mod_func_uint16_t_u_u(p_2754->g_241[p_2754->g_524.f2][(p_2754->g_508 + 1)], ((**p_2754->g_83) && ((safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(0L, ((safe_add_func_int16_t_s_s((((+(((1UL & ((l_761[6] , ((p_2754->g_119 = p_74) != l_776[7][2])) > ((safe_add_func_uint16_t_u_u((--p_2754->g_250), ((*p_2754->g_207) != &l_740))) , (*l_766)))) > FAKE_DIVERGE(p_2754->group_1_offset, get_group_id(1), 10)) < p_2754->g_130[1])) , l_740) < 3UL), l_754[8][3])) && GROUP_DIVERGE(1, 1)))), (*p_2754->g_372))) || p_2754->g_241[p_2754->g_524.f2][(p_2754->g_508 + 1)])))) <= (*l_766));
                        p_2754->g_75[3][3] = 0x6547C22FL;
                    }
                    if ((**p_2754->g_83))
                        continue;
                }
            }
        }
lbl_798:
        p_74 = &l_758;
        if ((((l_761[1] || 0x30L) , (safe_lshift_func_uint8_t_u_u(((((*l_784) = l_783[6]) == &p_2754->g_119) == (**p_2754->g_371)), (safe_div_func_uint8_t_u_u((((((safe_add_func_int16_t_s_s(((safe_div_func_uint16_t_u_u(l_741, l_758)) && (safe_sub_func_uint8_t_u_u((l_164 == (((l_757 = (safe_mod_func_uint64_t_u_u(0UL, p_2754->g_75[4][4]))) | 0x9D3FL) , (void*)0)), GROUP_DIVERGE(2, 1)))), 0x5054L)) < l_761[1]) , l_795) != l_795) > l_761[1]), GROUP_DIVERGE(1, 1)))))) == (-1L)))
        { /* block id: 352 */
            (*p_74) = (p_2754->g_15 ^ ((safe_mul_func_uint8_t_u_u(0xD8L, l_741)) , p_2754->g_75[6][6]));
            return (**p_2754->g_371);
        }
        else
        { /* block id: 355 */
            uint32_t l_812 = 0xF87CA5BCL;
            int32_t l_833[3];
            int32_t l_874 = 0x76488936L;
            int i;
            for (i = 0; i < 3; i++)
                l_833[i] = 1L;
            if (p_2754->g_281)
                goto lbl_798;
            for (p_2754->g_557 = 0; (p_2754->g_557 <= 1); p_2754->g_557 += 1)
            { /* block id: 359 */
                uint32_t l_806 = 4294967295UL;
                int32_t l_827[5];
                int32_t l_831 = 0x4AA3EFD8L;
                int16_t *l_845[1][8] = {{&p_2754->g_524.f3,&p_2754->g_524.f3,&p_2754->g_524.f3,&p_2754->g_524.f3,&p_2754->g_524.f3,&p_2754->g_524.f3,&p_2754->g_524.f3,&p_2754->g_524.f3}};
                uint64_t *l_850 = &p_2754->g_147[2];
                union U1 *l_862 = (void*)0;
                uint64_t l_864 = 0x582F185165050A78L;
                union U0 l_869 = {0x3D9906FFL};
                uint32_t **l_872 = &l_776[4][4];
                int i, j;
                for (i = 0; i < 5; i++)
                    l_827[i] = 0x2B072005L;
                p_2754->g_75[6][0] |= ((*p_74) = l_757);
            }
        }
    }
    ++l_888;
    return (*p_2754->g_372);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_2755;
    struct S2* p_2754 = &c_2755;
    struct S2 c_2756 = {
        0x4EEA2A3BL, // p_2754->g_4
        1L, // p_2754->g_15
        0x37F4A7D2L, // p_2754->g_23
        0x57B1A094L, // p_2754->g_24
        &p_2754->g_24, // p_2754->g_41
        {&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,&p_2754->g_41,&p_2754->g_41}, // p_2754->g_40
        {{0x36L},{0x36L},{0x36L}}, // p_2754->g_54
        {{(-1L),(-4L),0x2A25C95EL,1L,8L,8L,1L,0x2A25C95EL,(-4L),(-1L)},{(-1L),(-4L),0x2A25C95EL,1L,8L,8L,1L,0x2A25C95EL,(-4L),(-1L)},{(-1L),(-4L),0x2A25C95EL,1L,8L,8L,1L,0x2A25C95EL,(-4L),(-1L)},{(-1L),(-4L),0x2A25C95EL,1L,8L,8L,1L,0x2A25C95EL,(-4L),(-1L)},{(-1L),(-4L),0x2A25C95EL,1L,8L,8L,1L,0x2A25C95EL,(-4L),(-1L)},{(-1L),(-4L),0x2A25C95EL,1L,8L,8L,1L,0x2A25C95EL,(-4L),(-1L)},{(-1L),(-4L),0x2A25C95EL,1L,8L,8L,1L,0x2A25C95EL,(-4L),(-1L)}}, // p_2754->g_75
        &p_2754->g_41, // p_2754->g_83
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_2754->g_108
        0x2EB7B5DCL, // p_2754->g_110
        {1UL,1UL}, // p_2754->g_111
        &p_2754->g_110, // p_2754->g_119
        {5UL,5UL,5UL,5UL,5UL,5UL,5UL}, // p_2754->g_130
        (void*)0, // p_2754->g_139
        &p_2754->g_139, // p_2754->g_138
        {&p_2754->g_138,&p_2754->g_138,&p_2754->g_138,&p_2754->g_138,&p_2754->g_138,&p_2754->g_138}, // p_2754->g_137
        {0x8F7DD28A493C9A84L,0x8F7DD28A493C9A84L,0x8F7DD28A493C9A84L,0x8F7DD28A493C9A84L,0x8F7DD28A493C9A84L,0x8F7DD28A493C9A84L,0x8F7DD28A493C9A84L,0x8F7DD28A493C9A84L}, // p_2754->g_147
        0L, // p_2754->g_149
        {1UL,1UL,1UL,1UL,1UL}, // p_2754->g_179
        3UL, // p_2754->g_189
        {{{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}}},{{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}}},{{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}}},{{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}}},{{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}}},{{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}},{{0L},{0x5CL},{-7L},{-7L},{0x5CL}}}}, // p_2754->g_191
        {{&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0]},{&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0]},{&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0]},{&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0]},{&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],(void*)0,&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0],&p_2754->g_111[0]}}, // p_2754->g_195
        {0L,0L,0L,0L,0L,0L,0L,0L}, // p_2754->g_200
        0xD8L, // p_2754->g_209
        &p_2754->g_209, // p_2754->g_208
        &p_2754->g_208, // p_2754->g_207
        {{0x615FCF3D8B4343CAL,0x615FCF3D8B4343CAL,0x615FCF3D8B4343CAL,0x615FCF3D8B4343CAL,0x615FCF3D8B4343CAL,0x615FCF3D8B4343CAL,0x615FCF3D8B4343CAL,0x615FCF3D8B4343CAL,0x615FCF3D8B4343CAL}}, // p_2754->g_222
        {1L}, // p_2754->g_238
        &p_2754->g_238, // p_2754->g_237
        &p_2754->g_237, // p_2754->g_236
        {{0UL,0UL,0UL,0UL}}, // p_2754->g_241
        &p_2754->g_119, // p_2754->g_248
        &p_2754->g_248, // p_2754->g_247
        1L, // p_2754->g_249
        65532UL, // p_2754->g_250
        0xB687L, // p_2754->g_265
        0xAF96L, // p_2754->g_268
        &p_2754->g_268, // p_2754->g_267
        &p_2754->g_267, // p_2754->g_266
        {{{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]}},{{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]}},{{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]}},{{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]}},{{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]}},{{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]},{&p_2754->g_147[0],&p_2754->g_147[4],&p_2754->g_147[2],&p_2754->g_147[5],&p_2754->g_147[5],&p_2754->g_147[0],&p_2754->g_147[5]}}}, // p_2754->g_280
        &p_2754->g_280[0][4][6], // p_2754->g_279
        0x3A915A7FF40A6262L, // p_2754->g_281
        {{{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL}},{{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL}},{{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL}},{{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL}},{{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL}},{{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL},{0x4C23DCB5L,0x656E355FL,4294967293UL,0x00B51BC1L,0x86651155L,0x3DDA98BCL}}}, // p_2754->g_360
        &p_2754->g_54[0][0], // p_2754->g_372
        &p_2754->g_372, // p_2754->g_371
        0x741B580FL, // p_2754->g_386
        1L, // p_2754->g_398
        0x13A93473L, // p_2754->g_401
        (void*)0, // p_2754->g_407
        &p_2754->g_407, // p_2754->g_406
        {{{0UL},{4294967293UL},{0x85154EB0L},{4294967293UL},{0UL},{0UL},{4294967293UL},{0x85154EB0L},{4294967293UL},{0UL}},{{0UL},{4294967293UL},{0x85154EB0L},{4294967293UL},{0UL},{0UL},{4294967293UL},{0x85154EB0L},{4294967293UL},{0UL}},{{0UL},{4294967293UL},{0x85154EB0L},{4294967293UL},{0UL},{0UL},{4294967293UL},{0x85154EB0L},{4294967293UL},{0UL}}}, // p_2754->g_425
        (void*)0, // p_2754->g_502
        1UL, // p_2754->g_508
        {9L}, // p_2754->g_519
        {4L}, // p_2754->g_520
        {{{-9L},{4L},{2L},{6L},{0x08L},{0x08L},{6L}},{{-9L},{4L},{2L},{6L},{0x08L},{0x08L},{6L}},{{-9L},{4L},{2L},{6L},{0x08L},{0x08L},{6L}},{{-9L},{4L},{2L},{6L},{0x08L},{0x08L},{6L}},{{-9L},{4L},{2L},{6L},{0x08L},{0x08L},{6L}},{{-9L},{4L},{2L},{6L},{0x08L},{0x08L},{6L}},{{-9L},{4L},{2L},{6L},{0x08L},{0x08L},{6L}},{{-9L},{4L},{2L},{6L},{0x08L},{0x08L},{6L}},{{-9L},{4L},{2L},{6L},{0x08L},{0x08L},{6L}}}, // p_2754->g_521
        {-1L}, // p_2754->g_522
        {0x4CL}, // p_2754->g_523
        {0x35L}, // p_2754->g_524
        {{{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520}},{{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520}},{{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520}},{{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520}},{{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520}},{{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520}},{{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520},{(void*)0,&p_2754->g_520}}}, // p_2754->g_518
        1UL, // p_2754->g_557
        0x008D53B86C0C9EAFL, // p_2754->g_677
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_2754->g_842
        &p_2754->g_119, // p_2754->g_909
        &p_2754->g_909, // p_2754->g_908
        (void*)0, // p_2754->g_931
        &p_2754->g_4, // p_2754->g_936
        &p_2754->g_936, // p_2754->g_935
        &p_2754->g_908, // p_2754->g_987
        0xC6757C58L, // p_2754->g_1000
        (-1L), // p_2754->g_1035
        0L, // p_2754->g_1111
        {{0x0EB3E1F0L,(-2L),0x15B80189L,(-8L),0x00CA3CFEL,0x0EB3E1F0L,(-8L),(-1L),(-8L)},{0x0EB3E1F0L,(-2L),0x15B80189L,(-8L),0x00CA3CFEL,0x0EB3E1F0L,(-8L),(-1L),(-8L)},{0x0EB3E1F0L,(-2L),0x15B80189L,(-8L),0x00CA3CFEL,0x0EB3E1F0L,(-8L),(-1L),(-8L)},{0x0EB3E1F0L,(-2L),0x15B80189L,(-8L),0x00CA3CFEL,0x0EB3E1F0L,(-8L),(-1L),(-8L)},{0x0EB3E1F0L,(-2L),0x15B80189L,(-8L),0x00CA3CFEL,0x0EB3E1F0L,(-8L),(-1L),(-8L)},{0x0EB3E1F0L,(-2L),0x15B80189L,(-8L),0x00CA3CFEL,0x0EB3E1F0L,(-8L),(-1L),(-8L)},{0x0EB3E1F0L,(-2L),0x15B80189L,(-8L),0x00CA3CFEL,0x0EB3E1F0L,(-8L),(-1L),(-8L)},{0x0EB3E1F0L,(-2L),0x15B80189L,(-8L),0x00CA3CFEL,0x0EB3E1F0L,(-8L),(-1L),(-8L)},{0x0EB3E1F0L,(-2L),0x15B80189L,(-8L),0x00CA3CFEL,0x0EB3E1F0L,(-8L),(-1L),(-8L)}}, // p_2754->g_1138
        0x35L, // p_2754->g_1208
        (void*)0, // p_2754->g_1211
        {&p_2754->g_1211,&p_2754->g_1211,&p_2754->g_1211,&p_2754->g_1211,&p_2754->g_1211}, // p_2754->g_1210
        0L, // p_2754->g_1252
        {0x43597EE6L,0x43597EE6L}, // p_2754->g_1440
        0x0BAFL, // p_2754->g_1557
        &p_2754->g_1111, // p_2754->g_1571
        18446744073709551615UL, // p_2754->g_1578
        0xBC1E295FL, // p_2754->g_1603
        {0x23L}, // p_2754->g_1610
        {-1L}, // p_2754->g_1612
        0UL, // p_2754->g_1615
        (-9L), // p_2754->g_1640
        &p_2754->g_1640, // p_2754->g_1639
        0x67AAF233L, // p_2754->g_1705
        8L, // p_2754->g_1847
        0x5C5BL, // p_2754->g_1931
        0x73L, // p_2754->g_1948
        &p_2754->g_398, // p_2754->g_2022
        &p_2754->g_2022, // p_2754->g_2021
        {0x59L}, // p_2754->g_2101
        &p_2754->g_518[5][1][1], // p_2754->g_2128
        0xAB1F78890230D763L, // p_2754->g_2191
        {0x62L}, // p_2754->g_2292
        2L, // p_2754->g_2346
        &p_2754->g_2346, // p_2754->g_2345
        &p_2754->g_2345, // p_2754->g_2344
        0L, // p_2754->g_2379
        &p_2754->g_2379, // p_2754->g_2378
        &p_2754->g_2378, // p_2754->g_2377
        &p_2754->g_2377, // p_2754->g_2376
        {{0x2CL},{0x2CL}}, // p_2754->g_2557
        0x75AAL, // p_2754->g_2589
        0x7D3D67E3L, // p_2754->g_2608
        {-10L}, // p_2754->g_2697
        {3L}, // p_2754->g_2699
        0x38L, // p_2754->g_2710
        sequence_input[get_global_id(0)], // p_2754->global_0_offset
        sequence_input[get_global_id(1)], // p_2754->global_1_offset
        sequence_input[get_global_id(2)], // p_2754->global_2_offset
        sequence_input[get_local_id(0)], // p_2754->local_0_offset
        sequence_input[get_local_id(1)], // p_2754->local_1_offset
        sequence_input[get_local_id(2)], // p_2754->local_2_offset
        sequence_input[get_group_id(0)], // p_2754->group_0_offset
        sequence_input[get_group_id(1)], // p_2754->group_1_offset
        sequence_input[get_group_id(2)], // p_2754->group_2_offset
    };
    c_2755 = c_2756;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2754);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2754->g_4, "p_2754->g_4", print_hash_value);
    transparent_crc(p_2754->g_15, "p_2754->g_15", print_hash_value);
    transparent_crc(p_2754->g_23, "p_2754->g_23", print_hash_value);
    transparent_crc(p_2754->g_24, "p_2754->g_24", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2754->g_54[i][j], "p_2754->g_54[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2754->g_75[i][j], "p_2754->g_75[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2754->g_108[i], "p_2754->g_108[i]", print_hash_value);

    }
    transparent_crc(p_2754->g_110, "p_2754->g_110", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2754->g_111[i], "p_2754->g_111[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2754->g_130[i], "p_2754->g_130[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2754->g_147[i], "p_2754->g_147[i]", print_hash_value);

    }
    transparent_crc(p_2754->g_149, "p_2754->g_149", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2754->g_179[i], "p_2754->g_179[i]", print_hash_value);

    }
    transparent_crc(p_2754->g_189, "p_2754->g_189", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2754->g_191[i][j][k].f0, "p_2754->g_191[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2754->g_200[i], "p_2754->g_200[i]", print_hash_value);

    }
    transparent_crc(p_2754->g_209, "p_2754->g_209", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2754->g_222[i][j], "p_2754->g_222[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2754->g_238.f0, "p_2754->g_238.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_2754->g_241[i][j], "p_2754->g_241[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2754->g_249, "p_2754->g_249", print_hash_value);
    transparent_crc(p_2754->g_250, "p_2754->g_250", print_hash_value);
    transparent_crc(p_2754->g_265, "p_2754->g_265", print_hash_value);
    transparent_crc(p_2754->g_268, "p_2754->g_268", print_hash_value);
    transparent_crc(p_2754->g_281, "p_2754->g_281", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2754->g_360[i][j][k], "p_2754->g_360[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2754->g_386, "p_2754->g_386", print_hash_value);
    transparent_crc(p_2754->g_398, "p_2754->g_398", print_hash_value);
    transparent_crc(p_2754->g_401, "p_2754->g_401", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2754->g_425[i][j].f0, "p_2754->g_425[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2754->g_508, "p_2754->g_508", print_hash_value);
    transparent_crc(p_2754->g_520.f0, "p_2754->g_520.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2754->g_521[i][j].f0, "p_2754->g_521[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2754->g_522.f0, "p_2754->g_522.f0", print_hash_value);
    transparent_crc(p_2754->g_523.f0, "p_2754->g_523.f0", print_hash_value);
    transparent_crc(p_2754->g_557, "p_2754->g_557", print_hash_value);
    transparent_crc(p_2754->g_677, "p_2754->g_677", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2754->g_842[i], "p_2754->g_842[i]", print_hash_value);

    }
    transparent_crc(p_2754->g_1000, "p_2754->g_1000", print_hash_value);
    transparent_crc(p_2754->g_1035, "p_2754->g_1035", print_hash_value);
    transparent_crc(p_2754->g_1111, "p_2754->g_1111", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2754->g_1138[i][j], "p_2754->g_1138[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2754->g_1208, "p_2754->g_1208", print_hash_value);
    transparent_crc(p_2754->g_1252, "p_2754->g_1252", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2754->g_1440[i], "p_2754->g_1440[i]", print_hash_value);

    }
    transparent_crc(p_2754->g_1557, "p_2754->g_1557", print_hash_value);
    transparent_crc(p_2754->g_1578, "p_2754->g_1578", print_hash_value);
    transparent_crc(p_2754->g_1603, "p_2754->g_1603", print_hash_value);
    transparent_crc(p_2754->g_1610.f0, "p_2754->g_1610.f0", print_hash_value);
    transparent_crc(p_2754->g_1612.f0, "p_2754->g_1612.f0", print_hash_value);
    transparent_crc(p_2754->g_1615, "p_2754->g_1615", print_hash_value);
    transparent_crc(p_2754->g_1640, "p_2754->g_1640", print_hash_value);
    transparent_crc(p_2754->g_1705, "p_2754->g_1705", print_hash_value);
    transparent_crc(p_2754->g_1847, "p_2754->g_1847", print_hash_value);
    transparent_crc(p_2754->g_1931, "p_2754->g_1931", print_hash_value);
    transparent_crc(p_2754->g_1948, "p_2754->g_1948", print_hash_value);
    transparent_crc(p_2754->g_2101.f0, "p_2754->g_2101.f0", print_hash_value);
    transparent_crc(p_2754->g_2191, "p_2754->g_2191", print_hash_value);
    transparent_crc(p_2754->g_2292.f0, "p_2754->g_2292.f0", print_hash_value);
    transparent_crc(p_2754->g_2346, "p_2754->g_2346", print_hash_value);
    transparent_crc(p_2754->g_2379, "p_2754->g_2379", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2754->g_2557[i].f0, "p_2754->g_2557[i].f0", print_hash_value);

    }
    transparent_crc(p_2754->g_2589, "p_2754->g_2589", print_hash_value);
    transparent_crc(p_2754->g_2608, "p_2754->g_2608", print_hash_value);
    transparent_crc(p_2754->g_2697.f0, "p_2754->g_2697.f0", print_hash_value);
    transparent_crc(p_2754->g_2699.f0, "p_2754->g_2699.f0", print_hash_value);
    transparent_crc(p_2754->g_2710, "p_2754->g_2710", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
