// ---fake_divergence -g 82,76,1 -l 1,76,1
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


// Seed: 70

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int64_t  f0;
};

union U1 {
   int8_t  f0;
   int8_t  f1;
   volatile int32_t  f2;
};

union U2 {
   int8_t  f0;
};

union U3 {
   struct S0  f0;
};

struct S4 {
    uint16_t g_22[10][5][5];
    int64_t g_30;
    uint32_t g_33[4][9][3];
    volatile uint64_t g_40[10];
    union U2 g_48;
    int32_t g_84;
    int32_t *g_95[7];
    union U1 g_98;
    uint64_t g_109;
    int8_t g_125;
    int32_t g_128[1][2];
    uint64_t g_144;
    uint64_t *g_143;
    union U1 g_164;
    union U1 * volatile g_163;
    union U1 * volatile *g_162;
    int32_t g_169;
    int16_t g_188[2][1][5];
    int16_t g_191;
    uint8_t g_193;
    union U2 *g_257;
    union U2 **g_256;
    int32_t g_283;
    int32_t g_313;
    union U1 g_316[3];
    volatile uint16_t g_360;
    volatile uint16_t g_361;
    volatile uint16_t *g_359[9];
    int64_t * volatile *g_400;
    int64_t * volatile **g_399;
    uint64_t g_492;
    int8_t g_533;
    int32_t g_536;
    union U3 g_540;
    union U3 g_551[10];
    union U3 g_606;
    union U3 g_607;
    union U3 g_608;
    union U3 g_624;
    union U3 g_626;
    union U3 *g_625[6];
    uint8_t g_627[4][10][2];
    volatile union U1 g_695;
    volatile union U1 g_696[4];
    volatile union U1 *g_694[6];
    int32_t g_818;
    uint64_t g_832;
    union U1 g_861;
    uint32_t g_873;
    int64_t *g_914;
    int64_t **g_913[1][4][6];
    int64_t ***g_912;
    uint16_t g_917;
    int32_t g_958;
    union U3 g_1019;
    union U3 g_1021;
    union U3 *g_1020;
    int64_t g_1033[9];
    struct S0 *g_1088;
    uint32_t *g_1098;
    uint32_t g_1107;
    union U1 g_1112;
    union U2 *g_1133;
    uint32_t g_1145;
    struct S0 g_1232;
    union U3 g_1240;
    int32_t **g_1248;
    int32_t ***g_1247;
    int32_t ****g_1246;
    int32_t ****g_1250;
    union U2 g_1403;
    int32_t g_1442;
    uint32_t g_1477;
    uint16_t g_1510;
    volatile uint32_t g_1535;
    volatile uint32_t *g_1534;
    int32_t *g_1539;
    int32_t g_1573;
    volatile union U1 g_1676;
    int8_t g_1764;
    struct S0 g_1790;
    int64_t g_1813;
    uint16_t g_1841[2][10];
    struct S0 g_1864;
    struct S0 * volatile g_1865;
    volatile int32_t g_1884;
    struct S0 g_1888;
    struct S0 * volatile g_1889;
    struct S0 * volatile g_1890;
    int32_t g_1916;
    struct S0 g_1933[8];
    struct S0 g_1935;
    struct S0 g_1936;
    union U1 g_1956;
    int32_t ** volatile g_2076;
    uint8_t g_2114;
    volatile struct S0 g_2115;
    volatile union U1 g_2120;
    volatile struct S0 g_2129[8];
    volatile struct S0 g_2130;
    volatile int8_t g_2143[10][9];
    volatile union U3 g_2199;
    uint32_t g_2200;
    uint8_t *g_2214;
    uint8_t *g_2215[4][8][5];
    struct S0 g_2222;
    union U1 g_2224;
    volatile union U3 g_2228;
    volatile uint64_t g_2240[1][10];
    volatile union U3 g_2257;
    struct S0 g_2282;
    volatile struct S0 g_2283;
    int32_t *g_2290[1][1];
    volatile struct S0 g_2303;
    struct S0 ** volatile g_2362;
    struct S0 ** volatile g_2363;
    union U3 g_2367[3];
    struct S0 g_2375;
    struct S0 g_2389;
    volatile uint32_t g_2390;
    uint64_t *g_2406;
    uint64_t ** volatile g_2405;
    uint64_t ** volatile * volatile g_2407;
    volatile uint64_t *g_2441;
    volatile uint64_t **g_2440;
    volatile uint64_t ** volatile *g_2439;
    volatile struct S0 g_2444;
    volatile union U1 g_2447;
    uint32_t g_2467;
    struct S0 g_2488;
    struct S0 * volatile g_2489;
    uint64_t **g_2493;
    struct S0 g_2494;
    volatile int16_t * volatile *g_2545;
    int32_t * volatile g_2569;
    volatile union U3 g_2582;
    union U1 g_2583;
    int32_t g_2592;
    struct S0 g_2636;
    struct S0 * volatile g_2637;
    union U3 g_2640;
    union U3 g_2657;
    struct S0 g_2660;
    int32_t * volatile g_2711;
    int32_t * volatile g_2712;
    union U2 * volatile *g_2722;
    union U2 * volatile **g_2721[2];
    union U2 * volatile ***g_2720[9][3][4];
    volatile union U3 g_2739[7];
    struct S0 g_2778;
    uint32_t * volatile * volatile g_2792;
    volatile int32_t *g_2794;
    volatile int32_t ** volatile g_2795;
    int32_t *g_2800;
    int32_t ** volatile g_2810;
    union U1 g_2816;
    uint8_t **g_2844[9];
    uint8_t *** volatile g_2843;
    volatile int32_t g_2855;
    volatile struct S0 g_2865;
    volatile struct S0 * volatile g_2866;
    volatile struct S0 g_2868[3][9];
    uint32_t *g_2874;
    uint32_t **g_2873[4][8][3];
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
int16_t  func_1(struct S4 * p_2876);
int16_t  func_3(union U2  p_4, int32_t  p_5, int64_t  p_6, int16_t  p_7, struct S4 * p_2876);
union U2  func_8(uint32_t  p_9, int32_t  p_10, struct S4 * p_2876);
uint8_t  func_16(int64_t  p_17, int64_t  p_18, int32_t  p_19, struct S4 * p_2876);
union U3  func_20(int32_t  p_21, struct S4 * p_2876);
int32_t  func_23(int64_t  p_24, uint64_t  p_25, uint32_t  p_26, uint16_t  p_27, struct S4 * p_2876);
int32_t  func_36(uint64_t  p_37, uint32_t  p_38, int32_t  p_39, struct S4 * p_2876);
int8_t  func_43(union U2  p_44, uint32_t  p_45, int16_t  p_46, uint32_t * p_47, struct S4 * p_2876);
int64_t  func_49(union U2  p_50, struct S4 * p_2876);
union U2  func_51(int32_t  p_52, uint64_t  p_53, int64_t * p_54, int64_t  p_55, struct S4 * p_2876);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2876->g_22 p_2876->g_1813 p_2876->g_1888 p_2876->g_1865 p_2876->g_958 p_2876->g_2303 p_2876->g_143 p_2876->g_144 p_2876->g_1098 p_2876->g_873 p_2876->g_1510 p_2876->g_1020 p_2876->g_1021 p_2876->g_1248 p_2876->g_1021.f0.f0 p_2876->g_1916 p_2876->g_2214 p_2876->g_627 p_2876->g_1145 p_2876->g_2363 p_2876->g_125 p_2876->g_2367 p_2876->g_98.f0 p_2876->g_1246 p_2876->g_1247 p_2876->g_95 p_2876->g_2375 p_2876->g_1088 p_2876->g_2389 p_2876->g_2390 p_2876->g_2076 p_2876->g_162 p_2876->g_2405 p_2876->g_2407 p_2876->g_1477 p_2876->g_1403.f0 p_2876->g_1573 p_2876->g_2143 p_2876->g_188 p_2876->g_2439 p_2876->g_2444 p_2876->g_2447 p_2876->g_1956.f0 p_2876->g_832 p_2876->g_2467 p_2876->g_2224.f1 p_2876->g_2406 p_2876->g_626.f0.f0 p_2876->g_2447.f0 p_2876->g_2488 p_2876->g_2489 p_2876->g_2494 p_2876->g_30 p_2876->g_2290 p_2876->g_2367.f0.f0 p_2876->g_191 p_2876->g_128 p_2876->g_861.f1 p_2876->g_2545 p_2876->g_1841 p_2876->g_1442 p_2876->g_48.f0 p_2876->g_2569 p_2876->g_1250 p_2876->g_533 p_2876->g_316.f0 p_2876->g_2582 p_2876->g_2583 p_2876->g_2592 p_2876->g_1764 p_2876->g_2636 p_2876->g_2637 p_2876->g_1107 p_2876->g_2640 p_2876->g_2657 p_2876->g_256 p_2876->g_257 p_2876->g_2660 p_2876->g_2200 p_2876->g_1112.f0 p_2876->g_48 p_2876->g_818 p_2876->g_2712 p_2876->g_2720 p_2876->g_193 p_2876->g_1033 p_2876->g_2739 p_2876->g_696.f0 p_2876->g_283 p_2876->g_2778 p_2876->g_164.f0 p_2876->g_2792 p_2876->g_2794 p_2876->g_2795 p_2876->g_2800 p_2876->g_1884 p_2876->g_2816 p_2876->g_2120.f0 p_2876->g_2440 p_2876->g_2441 p_2876->g_2843 p_2876->g_2855 p_2876->g_2865 p_2876->g_40
 * writes: p_2876->g_30 p_2876->g_33 p_2876->g_1813 p_2876->g_607.f0 p_2876->g_958 p_2876->g_873 p_2876->g_1477 p_2876->g_1250 p_2876->g_2129 p_2876->g_164.f0 p_2876->g_1510 p_2876->g_95 p_2876->g_84 p_2876->g_1916 p_2876->g_627 p_2876->g_533 p_2876->g_1088 p_2876->g_22 p_2876->g_1936 p_2876->g_188 p_2876->g_1764 p_2876->g_163 p_2876->g_2405 p_2876->g_1403.f0 p_2876->g_1573 p_2876->g_1933 p_2876->g_2224.f1 p_2876->g_144 p_2876->g_492 p_2876->g_626.f0 p_2876->g_2493 p_2876->g_1841 p_2876->g_191 p_2876->g_128 p_2876->g_861.f1 p_2876->g_48.f0 p_2876->g_1248 p_2876->g_2488 p_2876->g_1107 p_2876->g_818 p_2876->g_1020 p_2876->g_832 p_2876->g_2592 p_2876->g_193 p_2876->g_2114 p_2876->g_283 p_2876->g_125 p_2876->g_1112.f0 p_2876->g_606.f0.f0 p_2876->g_861.f2 p_2876->g_2792 p_2876->g_2794 p_2876->g_1884 p_2876->g_1145 p_2876->g_2844 p_2876->g_2868 p_2876->g_2873
 */
int16_t  func_1(struct S4 * p_2876)
{ /* block id: 4 */
    uint32_t l_11[8][9] = {{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL}};
    int32_t l_12 = (-1L);
    uint32_t l_13 = 1UL;
    uint32_t *l_2709[9] = {&p_2876->g_2467,&p_2876->g_2467,&p_2876->g_2467,&p_2876->g_2467,&p_2876->g_2467,&p_2876->g_2467,&p_2876->g_2467,&p_2876->g_2467,&p_2876->g_2467};
    int32_t l_2710 = 0x2373062CL;
    int32_t l_2772 = 0x53433975L;
    uint16_t *l_2773[3];
    int32_t *l_2802 = &l_12;
    uint64_t *l_2834 = &p_2876->g_109;
    uint32_t l_2857 = 0x3A1C13C5L;
    uint64_t l_2860 = 3UL;
    uint8_t l_2875[3];
    int i, j;
    for (i = 0; i < 3; i++)
        l_2773[i] = &p_2876->g_1510;
    for (i = 0; i < 3; i++)
        l_2875[i] = 0x4FL;
    l_2772 |= (safe_unary_minus_func_int16_t_s(func_3(func_8((l_12 = l_11[3][3]), ((l_13 , 0x67L) & (((l_11[3][3] , 0L) , (l_2710 = (safe_mul_func_uint8_t_u_u(func_16(((func_20(p_2876->g_22[4][2][0], p_2876) , ((void*)0 == (*p_2876->g_256))) || l_13), l_11[0][0], l_13, p_2876), 0x69L)))) , 5L)), p_2876), p_2876->g_1033[8], l_11[3][3], p_2876->g_1033[8], p_2876)));
lbl_2842:
    (***p_2876->g_1246) = &l_2710;
    if (((void*)0 == l_2773[2]))
    { /* block id: 1297 */
        uint64_t l_2799 = 0x22E5099DB4FF48FBL;
lbl_2796:
        for (p_2876->g_30 = 28; (p_2876->g_30 >= 11); --p_2876->g_30)
        { /* block id: 1300 */
            for (p_2876->g_191 = (-25); (p_2876->g_191 <= (-13)); p_2876->g_191 = safe_add_func_int32_t_s_s(p_2876->g_191, 7))
            { /* block id: 1303 */
                (*p_2876->g_2489) = p_2876->g_2778;
            }
            return l_2772;
        }
        for (p_2876->g_1916 = 0; (p_2876->g_1916 >= (-20)); p_2876->g_1916 = safe_sub_func_uint16_t_u_u(p_2876->g_1916, 1))
        { /* block id: 1310 */
            uint16_t l_2785 = 65531UL;
            int8_t *l_2786 = (void*)0;
            int8_t *l_2787 = &p_2876->g_316[0].f1;
            int8_t *l_2788 = &p_2876->g_2224.f0;
            int8_t *l_2789 = &p_2876->g_164.f0;
            l_12 = (safe_rshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u(l_11[3][3], ((*l_2789) |= l_2785))), 2));
            for (p_2876->g_1112.f0 = 0; (p_2876->g_1112.f0 != 26); p_2876->g_1112.f0++)
            { /* block id: 1315 */
                if ((*p_2876->g_2569))
                    break;
            }
            if (l_11[3][3])
            { /* block id: 1318 */
                for (p_2876->g_873 = 0; p_2876->g_873 < 10; p_2876->g_873 += 1)
                {
                    for (p_2876->g_606.f0.f0 = 0; p_2876->g_606.f0.f0 < 5; p_2876->g_606.f0.f0 += 1)
                    {
                        for (p_2876->g_861.f2 = 0; p_2876->g_861.f2 < 5; p_2876->g_861.f2 += 1)
                        {
                            p_2876->g_22[p_2876->g_873][p_2876->g_606.f0.f0][p_2876->g_861.f2] = 0x4B6AL;
                        }
                    }
                }
            }
            else
            { /* block id: 1320 */
                uint32_t * volatile * volatile *l_2793 = (void*)0;
                p_2876->g_2792 = p_2876->g_2792;
                (*p_2876->g_2795) = p_2876->g_2794;
                if (p_2876->g_125)
                    goto lbl_2796;
                (**p_2876->g_2795) = l_12;
            }
        }
        for (l_13 = 0; (l_13 == 40); ++l_13)
        { /* block id: 1329 */
            return l_2799;
        }
    }
    else
    { /* block id: 1332 */
        int32_t *l_2801[10][8] = {{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710},{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710},{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710},{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710},{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710},{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710},{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710},{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710},{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710},{&p_2876->g_84,&p_2876->g_169,&p_2876->g_2592,(void*)0,&p_2876->g_128[0][1],&p_2876->g_1916,&p_2876->g_128[0][0],&l_2710}};
        int i, j;
        (*p_2876->g_1248) = p_2876->g_2800;
        l_2802 = l_2801[3][6];
    }
    for (p_2876->g_958 = (-27); (p_2876->g_958 > (-5)); p_2876->g_958 = safe_add_func_uint16_t_u_u(p_2876->g_958, 6))
    { /* block id: 1338 */
        uint64_t l_2817 = 18446744073709551615UL;
        uint64_t *l_2835[5][3][1] = {{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}}};
        int32_t l_2840 = 0x6660C84FL;
        int16_t l_2851 = (-1L);
        int i, j, k;
        for (p_2876->g_1145 = 0; (p_2876->g_1145 > 48); p_2876->g_1145 = safe_add_func_int32_t_s_s(p_2876->g_1145, 1))
        { /* block id: 1341 */
            int64_t l_2836 = 0x7AF391591260C1BAL;
            uint32_t l_2837 = 4294967293UL;
            int32_t l_2856 = 0x7356DD9FL;
            int32_t l_2859 = 0x7B257E01L;
            for (p_2876->g_492 = (-29); (p_2876->g_492 != 15); p_2876->g_492 = safe_add_func_int64_t_s_s(p_2876->g_492, 5))
            { /* block id: 1344 */
                int32_t *l_2809 = &p_2876->g_84;
                int32_t **l_2811 = &l_2809;
                int32_t l_2841 = 6L;
                (*l_2811) = ((***p_2876->g_1246) = l_2809);
                if ((**p_2876->g_2795))
                { /* block id: 1347 */
                    int16_t *l_2838 = &p_2876->g_191;
                    int32_t l_2839[10][8][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
                    uint32_t l_2849[6][7][6] = {{{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L}},{{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L}},{{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L}},{{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L}},{{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L}},{{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L},{4294967295UL,0xDA229CF5L,4294967295UL,0xDA229CF5L,4294967295UL,0x5CF5ED68L}}};
                    int i, j, k;
                    if (((safe_add_func_uint64_t_u_u(((l_2840 = (((*p_2876->g_1246) == (void*)0) | ((*p_2876->g_2214) = ((((((*l_2809) = ((((safe_sub_func_uint32_t_u_u((p_2876->g_2816 , (l_2817 || (p_2876->g_1916 , (safe_add_func_uint32_t_u_u((safe_add_func_int64_t_s_s((safe_mod_func_int16_t_s_s(((*l_2838) = ((safe_mul_func_uint16_t_u_u(((-1L) && (safe_div_func_int32_t_s_s(((*p_2876->g_143) || ((safe_rshift_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u((*p_2876->g_2214), (safe_rshift_func_uint16_t_u_u((l_2834 != l_2835[1][0][0]), l_2836)))) ^ 1L), 8)) , l_2837)), 0x15EBD66FL))), l_2817)) == (*p_2876->g_2794))), 0x21B2L)), l_2839[5][6][0])), 0xB0DEE711L))))), 0x67655906L)) > (*p_2876->g_1098)) && 18446744073709551615UL) & GROUP_DIVERGE(0, 1))) && (*p_2876->g_2569)) && 249UL) & l_2837) && l_2836)))) < p_2876->g_1841[1][8]), 0xA2D760CCEB4EB793L)) | (*p_2876->g_143)))
                    { /* block id: 1352 */
                        (*p_2876->g_2794) ^= l_2836;
                    }
                    else
                    { /* block id: 1354 */
                        l_2839[5][6][0] = (p_2876->g_2120.f0 | ((void*)0 == (*p_2876->g_2440)));
                        return l_2841;
                    }
                    (*l_2811) = &l_2840;
                    if (p_2876->g_1956.f0)
                        goto lbl_2842;
                    for (p_2876->g_2592 = 0; (p_2876->g_2592 <= 1); p_2876->g_2592 += 1)
                    { /* block id: 1362 */
                        int8_t l_2854[7] = {0x0DL,0x0DL,0x0DL,0x0DL,0x0DL,0x0DL,0x0DL};
                        int32_t *l_2858[2][10] = {{&p_2876->g_1916,&p_2876->g_169,&p_2876->g_128[0][1],&p_2876->g_169,&p_2876->g_1916,&p_2876->g_1916,&p_2876->g_169,&p_2876->g_128[0][1],&p_2876->g_169,&p_2876->g_1916},{&p_2876->g_1916,&p_2876->g_169,&p_2876->g_128[0][1],&p_2876->g_169,&p_2876->g_1916,&p_2876->g_1916,&p_2876->g_169,&p_2876->g_128[0][1],&p_2876->g_169,&p_2876->g_1916}};
                        int i, j;
                        (*p_2876->g_2843) = &p_2876->g_2215[2][1][4];
                        l_2856 = (safe_rshift_func_uint16_t_u_s(((safe_sub_func_int32_t_s_s(p_2876->g_1841[p_2876->g_2592][(p_2876->g_2592 + 4)], (((((l_2849[5][3][1] != ((l_2837 | (safe_unary_minus_func_int16_t_s((l_2851 | l_2840)))) >= (((*l_2809) && FAKE_DIVERGE(p_2876->global_1_offset, get_global_id(1), 10)) & (((((*p_2876->g_1098) >= (((!l_2854[5]) , p_2876->g_1112.f0) , p_2876->g_2855)) > (*l_2809)) | p_2876->g_1764) == (-10L))))) & (*l_2809)) & 1UL) < p_2876->g_1510) , (*p_2876->g_1098)))) ^ 1L), 6));
                        if (l_2857)
                            break;
                        l_2860--;
                    }
                }
                else
                { /* block id: 1368 */
                    int32_t *l_2869[5];
                    uint32_t *l_2872 = &p_2876->g_33[3][1][0];
                    uint32_t **l_2871 = &l_2872;
                    uint32_t ***l_2870 = &l_2871;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_2869[i] = &p_2876->g_169;
                    for (p_2876->g_533 = 23; (p_2876->g_533 < (-14)); --p_2876->g_533)
                    { /* block id: 1371 */
                        volatile struct S0 *l_2867[8] = {&p_2876->g_2444,&p_2876->g_2444,&p_2876->g_2444,&p_2876->g_2444,&p_2876->g_2444,&p_2876->g_2444,&p_2876->g_2444,&p_2876->g_2444};
                        int i;
                        p_2876->g_2868[2][3] = p_2876->g_2865;
                    }
                    (**p_2876->g_1247) = l_2869[3];
                    p_2876->g_2792 = (p_2876->g_2873[0][6][2] = ((*l_2870) = (void*)0));
                    return l_2840;
                }
            }
            return l_2875[2];
        }
        l_2802 = ((***p_2876->g_1246) = &l_2840);
    }
    return p_2876->g_40[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_2876->g_1098 p_2876->g_873 p_2876->g_2739 p_2876->g_696.f0 p_2876->g_143 p_2876->g_283 p_2876->g_144 p_2876->g_125 p_2876->g_1764
 * writes: p_2876->g_144 p_2876->g_191 p_2876->g_283 p_2876->g_832 p_2876->g_125 p_2876->g_1764
 */
int16_t  func_3(union U2  p_4, int32_t  p_5, int64_t  p_6, int16_t  p_7, struct S4 * p_2876)
{ /* block id: 1269 */
    int16_t *l_2734 = &p_2876->g_191;
    int32_t l_2738[7][9] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}};
    int32_t l_2748 = (-6L);
    int32_t l_2749 = 0x4C1F376BL;
    uint32_t *l_2760 = &p_2876->g_1477;
    uint64_t **l_2764 = (void*)0;
    int i, j;
    if (((void*)0 == l_2734))
    { /* block id: 1270 */
        uint16_t l_2746 = 0x189FL;
        int64_t *l_2747[10] = {&p_2876->g_30,&p_2876->g_30,&p_2876->g_30,&p_2876->g_30,&p_2876->g_30,&p_2876->g_30,&p_2876->g_30,&p_2876->g_30,&p_2876->g_30,&p_2876->g_30};
        int32_t *l_2757 = (void*)0;
        int32_t l_2768 = 0x5893AA34L;
        int i;
        l_2749 &= (((p_4.f0 >= (safe_mod_func_uint16_t_u_u(5UL, p_6))) | (*p_2876->g_1098)) || ((*l_2734) = (l_2748 |= ((((safe_unary_minus_func_int32_t_s(l_2738[4][0])) , (((l_2738[4][0] = ((p_2876->g_2739[0] , (safe_add_func_uint32_t_u_u((func_51((l_2738[5][0] , ((((((((((*p_2876->g_143) = (p_2876->g_696[3].f0 , (safe_sub_func_int32_t_s_s((safe_mod_func_uint32_t_u_u(l_2746, 0x36EDD16AL)), p_5)))) || 0x7EF147CF64344FA1L) || 0UL) >= 0x0BL) || l_2746) > l_2738[5][7]) == 0UL) > 0x4B40C46AL) == p_4.f0)), p_4.f0, l_2747[7], l_2738[6][0], p_2876) , (*p_2876->g_1098)), 2L))) >= 18446744073709551610UL)) >= p_6) && p_5)) & p_7) > p_5))));
        for (p_2876->g_283 = (-25); (p_2876->g_283 != (-19)); p_2876->g_283 = safe_add_func_uint8_t_u_u(p_2876->g_283, 6))
        { /* block id: 1278 */
            int32_t l_2752 = 1L;
            int8_t *l_2761 = &p_2876->g_1112.f1;
            int8_t *l_2762 = (void*)0;
            int8_t *l_2763 = &p_2876->g_125;
            uint64_t **l_2766 = &p_2876->g_2406;
            uint64_t ***l_2765 = &l_2766;
            uint32_t **l_2767 = (void*)0;
            l_2752 = ((l_2738[2][6] > p_6) != 0x39C78702L);
            if (l_2746)
                continue;
            l_2768 = ((safe_mod_func_int32_t_s_s((safe_div_func_int8_t_s_s((-1L), ((l_2757 == ((((*l_2763) |= (~(safe_add_func_uint64_t_u_u((*p_2876->g_143), ((p_2876->g_832 = 0x1ECA556BB5DA25B0L) , (l_2760 == l_2757)))))) < (!((((l_2764 == ((*l_2765) = &p_2876->g_2406)) , l_2767) == (void*)0) || l_2752))) , l_2760)) , 0x7DL))), 0xC6ABBD1EL)) & (-4L));
            for (p_2876->g_1764 = 0; (p_2876->g_1764 < 20); p_2876->g_1764++)
            { /* block id: 1287 */
                return p_6;
            }
        }
    }
    else
    { /* block id: 1291 */
        int8_t l_2771 = 1L;
        return l_2771;
    }
    return l_2738[4][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_2876->g_2214 p_2876->g_627 p_2876->g_2712 p_2876->g_2720 p_2876->g_193 p_2876->g_818 p_2876->g_256 p_2876->g_257 p_2876->g_48
 * writes: p_2876->g_627 p_2876->g_818 p_2876->g_193 p_2876->g_48.f0 p_2876->g_2114
 */
union U2  func_8(uint32_t  p_9, int32_t  p_10, struct S4 * p_2876)
{ /* block id: 1260 */
    int32_t *l_2717 = &p_2876->g_313;
    union U2 ***l_2719[1];
    union U2 ****l_2718 = &l_2719[0];
    uint8_t *l_2723 = (void*)0;
    uint8_t *l_2724 = (void*)0;
    uint8_t *l_2725 = &p_2876->g_193;
    int8_t *l_2728 = (void*)0;
    int8_t *l_2729 = &p_2876->g_48.f0;
    uint8_t *l_2730 = &p_2876->g_2114;
    int32_t l_2731 = (-9L);
    int32_t *l_2732[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t l_2733 = (-6L);
    int i;
    for (i = 0; i < 1; i++)
        l_2719[i] = &p_2876->g_256;
    (*p_2876->g_2712) = (0x7DL && ((*p_2876->g_2214) ^= (&p_2876->g_1088 != &p_2876->g_2637)));
    l_2733 |= ((*p_2876->g_2712) |= ((safe_mul_func_uint8_t_u_u((*p_2876->g_2214), (((*l_2730) = (safe_rshift_func_uint8_t_u_u((+(l_2717 == l_2717)), (((((l_2718 != p_2876->g_2720[7][0][0]) , l_2717) == (void*)0) , ((!(++(*l_2725))) ^ ((*l_2729) = ((p_9 <= p_9) || 0x2B6CL)))) & p_9)))) > p_9))) ^ l_2731));
    return (****l_2718);
}


/* ------------------------------------------ */
/* 
 * reads : p_2876->g_1098 p_2876->g_873 p_2876->g_2660 p_2876->g_832 p_2876->g_2200 p_2876->g_1442 p_2876->g_1112.f0 p_2876->g_256 p_2876->g_257 p_2876->g_48 p_2876->g_818 p_2876->g_128 p_2876->g_143 p_2876->g_2545 p_2876->g_2363 p_2876->g_1088 p_2876->g_2214 p_2876->g_627 p_2876->g_2592
 * writes: p_2876->g_22 p_2876->g_818 p_2876->g_1020 p_2876->g_144 p_2876->g_832 p_2876->g_627 p_2876->g_30 p_2876->g_2592
 */
uint8_t  func_16(int64_t  p_17, int64_t  p_18, int32_t  p_19, struct S4 * p_2876)
{ /* block id: 1241 */
    int8_t l_2662[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
    int16_t *l_2663[3];
    int32_t l_2664 = (-1L);
    uint64_t **l_2676 = &p_2876->g_2406;
    uint64_t ***l_2675 = &l_2676;
    uint16_t *l_2677 = &p_2876->g_22[4][2][0];
    int32_t *l_2686 = &p_2876->g_128[0][1];
    int i;
    for (i = 0; i < 3; i++)
        l_2663[i] = &p_2876->g_188[0][0][4];
    if ((((*l_2677) = (safe_mod_func_int64_t_s_s((((*p_2876->g_1098) < (p_2876->g_2660 , (safe_unary_minus_func_int16_t_s((l_2664 = l_2662[0]))))) > (safe_mod_func_int32_t_s_s(0x1B9D93DDL, (safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_2876->local_0_offset, get_local_id(0), 10), ((p_2876->g_832 , (safe_mod_func_uint16_t_u_u((1L & (safe_rshift_func_uint16_t_u_s((0x1328L != p_2876->g_2200), (safe_add_func_int16_t_s_s((l_2675 == &l_2676), p_2876->g_1442))))), p_19))) == 1L)))))), 1L))) | p_17))
    { /* block id: 1244 */
        union U2 ***l_2680 = &p_2876->g_256;
        int32_t *l_2681 = (void*)0;
        int32_t l_2682 = 0x50EF06B9L;
        int32_t l_2683 = 5L;
        int32_t *l_2684 = &p_2876->g_818;
        union U3 **l_2685 = &p_2876->g_1020;
        (*l_2684) &= ((safe_mod_func_int64_t_s_s(((((((((p_17 , ((void*)0 != l_2680)) && (p_19 <= p_2876->g_1112.f0)) , ((***l_2680) , 0L)) ^ 0xE67E0B156CA18C92L) ^ (((l_2682 = 0x0CC018EAL) && 0x094A6F49L) | 0x229AL)) <= l_2683) , p_18) >= p_17), p_19)) & l_2662[7]);
        (*l_2685) = &p_2876->g_551[5];
        l_2686 = &l_2682;
    }
    else
    { /* block id: 1249 */
        int64_t l_2693 = 2L;
        uint64_t *l_2694 = &p_2876->g_832;
        int16_t **l_2697 = &l_2663[2];
        uint32_t l_2702[6][5] = {{0x7073D15BL,4294967286UL,0x62F77178L,0x0296E589L,2UL},{0x7073D15BL,4294967286UL,0x62F77178L,0x0296E589L,2UL},{0x7073D15BL,4294967286UL,0x62F77178L,0x0296E589L,2UL},{0x7073D15BL,4294967286UL,0x62F77178L,0x0296E589L,2UL},{0x7073D15BL,4294967286UL,0x62F77178L,0x0296E589L,2UL},{0x7073D15BL,4294967286UL,0x62F77178L,0x0296E589L,2UL}};
        int64_t *l_2703 = &p_2876->g_30;
        int32_t *l_2704 = &p_2876->g_2592;
        int32_t *l_2705[10];
        uint32_t l_2706[3][8] = {{0xDBB2FC4EL,0xDBB2FC4EL,4UL,0xE45F0CDBL,0UL,0xE45F0CDBL,4UL,0xDBB2FC4EL},{0xDBB2FC4EL,0xDBB2FC4EL,4UL,0xE45F0CDBL,0UL,0xE45F0CDBL,4UL,0xDBB2FC4EL},{0xDBB2FC4EL,0xDBB2FC4EL,4UL,0xE45F0CDBL,0UL,0xE45F0CDBL,4UL,0xDBB2FC4EL}};
        int i, j;
        for (i = 0; i < 10; i++)
            l_2705[i] = (void*)0;
        (*l_2704) &= (1UL & ((l_2664 ^= (((*l_2703) = (safe_add_func_uint64_t_u_u((*l_2686), (safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s((((*l_2694) = ((*p_2876->g_143) = l_2693)) | (safe_lshift_func_int8_t_s_u((((*l_2686) , (p_2876->g_2545 == l_2697)) && (safe_rshift_func_uint8_t_u_u(((*p_2876->g_2214) ^= (((p_18 || ((*p_2876->g_2363) != (void*)0)) != l_2702[5][2]) < p_17)), p_19))), p_19))), 0)), 9))))) , p_18)) <= 0x9F31C14BD06E44B8L));
        --l_2706[1][5];
    }
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_2876->g_22 p_2876->g_1888 p_2876->g_1865 p_2876->g_2303 p_2876->g_143 p_2876->g_144 p_2876->g_1098 p_2876->g_873 p_2876->g_1510 p_2876->g_1020 p_2876->g_1021 p_2876->g_1248 p_2876->g_1021.f0.f0 p_2876->g_1916 p_2876->g_2214 p_2876->g_627 p_2876->g_1145 p_2876->g_2363 p_2876->g_125 p_2876->g_2367 p_2876->g_98.f0 p_2876->g_1246 p_2876->g_1247 p_2876->g_95 p_2876->g_2375 p_2876->g_1088 p_2876->g_2389 p_2876->g_2390 p_2876->g_2076 p_2876->g_162 p_2876->g_2405 p_2876->g_2407 p_2876->g_1403.f0 p_2876->g_2143 p_2876->g_188 p_2876->g_2439 p_2876->g_2444 p_2876->g_2447 p_2876->g_1956.f0 p_2876->g_832 p_2876->g_2467 p_2876->g_2224.f1 p_2876->g_2406 p_2876->g_626.f0.f0 p_2876->g_2447.f0 p_2876->g_2488 p_2876->g_2489 p_2876->g_2494 p_2876->g_30 p_2876->g_2290 p_2876->g_2367.f0.f0 p_2876->g_191 p_2876->g_128 p_2876->g_861.f1 p_2876->g_2545 p_2876->g_1841 p_2876->g_1442 p_2876->g_48.f0 p_2876->g_2569 p_2876->g_1250 p_2876->g_1573 p_2876->g_533 p_2876->g_316.f0 p_2876->g_2582 p_2876->g_2583 p_2876->g_2592 p_2876->g_1764 p_2876->g_2636 p_2876->g_2637 p_2876->g_1107 p_2876->g_2640 p_2876->g_2657 p_2876->g_1813 p_2876->g_958 p_2876->g_1477
 * writes: p_2876->g_30 p_2876->g_33 p_2876->g_1813 p_2876->g_607.f0 p_2876->g_958 p_2876->g_873 p_2876->g_1477 p_2876->g_1250 p_2876->g_2129 p_2876->g_164.f0 p_2876->g_1510 p_2876->g_95 p_2876->g_84 p_2876->g_1916 p_2876->g_627 p_2876->g_533 p_2876->g_1088 p_2876->g_22 p_2876->g_1936 p_2876->g_188 p_2876->g_1764 p_2876->g_163 p_2876->g_2405 p_2876->g_1403.f0 p_2876->g_1573 p_2876->g_1933 p_2876->g_2224.f1 p_2876->g_144 p_2876->g_492 p_2876->g_626.f0 p_2876->g_2493 p_2876->g_1841 p_2876->g_191 p_2876->g_128 p_2876->g_861.f1 p_2876->g_48.f0 p_2876->g_1248 p_2876->g_2488 p_2876->g_1107
 */
union U3  func_20(int32_t  p_21, struct S4 * p_2876)
{ /* block id: 6 */
    uint32_t l_28 = 4294967291UL;
    int64_t l_31 = 0x6C165AAE70C30F14L;
    int32_t l_2325 = 0x6EE6EF27L;
    int32_t *****l_2338 = &p_2876->g_1246;
    union U3 *l_2422 = &p_2876->g_2367[1];
    int16_t *l_2460 = &p_2876->g_188[1][0][3];
    int16_t **l_2459 = &l_2460;
    uint32_t l_2468[9] = {0xB246FD36L,0xD69B74CCL,0xB246FD36L,0xB246FD36L,0xD69B74CCL,0xB246FD36L,0xB246FD36L,0xD69B74CCL,0xB246FD36L};
    union U2 l_2503[3] = {{8L},{8L},{8L}};
    int16_t l_2565 = 0x69C7L;
    int32_t *l_2641 = &p_2876->g_1916;
    int32_t *l_2642 = (void*)0;
    int32_t *l_2643 = &l_2325;
    int32_t *l_2644 = (void*)0;
    int32_t *l_2645 = &l_2325;
    int32_t *l_2646 = &p_2876->g_128[0][0];
    int32_t *l_2647 = &p_2876->g_1916;
    int32_t l_2648 = 0x6AB16A9EL;
    int32_t *l_2649 = &p_2876->g_84;
    int32_t *l_2650 = &l_2325;
    int32_t l_2651[7];
    int32_t *l_2652[1][6][6] = {{{&l_2651[6],&p_2876->g_84,&p_2876->g_84,&l_2651[6],&l_2325,&l_2648},{&l_2651[6],&p_2876->g_84,&p_2876->g_84,&l_2651[6],&l_2325,&l_2648},{&l_2651[6],&p_2876->g_84,&p_2876->g_84,&l_2651[6],&l_2325,&l_2648},{&l_2651[6],&p_2876->g_84,&p_2876->g_84,&l_2651[6],&l_2325,&l_2648},{&l_2651[6],&p_2876->g_84,&p_2876->g_84,&l_2651[6],&l_2325,&l_2648},{&l_2651[6],&p_2876->g_84,&p_2876->g_84,&l_2651[6],&l_2325,&l_2648}}};
    int8_t l_2653 = 0x06L;
    uint32_t l_2654 = 0xCA7F3272L;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_2651[i] = 1L;
    if (p_2876->g_22[4][2][2])
    { /* block id: 7 */
        int64_t *l_29 = &p_2876->g_30;
        uint32_t *l_32[8];
        int32_t l_2300[1];
        uint8_t l_2402 = 0UL;
        uint32_t l_2417 = 9UL;
        union U3 *l_2420[10] = {&p_2876->g_624,(void*)0,&p_2876->g_624,&p_2876->g_624,(void*)0,&p_2876->g_624,&p_2876->g_624,(void*)0,&p_2876->g_624,&p_2876->g_624};
        union U2 **l_2448 = &p_2876->g_257;
        int16_t **l_2457 = (void*)0;
        uint64_t **l_2492[2][9][7] = {{{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143}},{{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143},{&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,&p_2876->g_143,(void*)0,&p_2876->g_143,&p_2876->g_143}}};
        int32_t l_2520 = 0x759D4F59L;
        int32_t **l_2623[8][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int8_t l_2632 = (-1L);
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_32[i] = &p_2876->g_33[1][2][1];
        for (i = 0; i < 1; i++)
            l_2300[i] = 0x22E4D686L;
lbl_2548:
        if (func_23(((*l_29) = l_28), l_31, (p_2876->g_33[1][2][1] = p_2876->g_22[2][2][2]), p_2876->g_22[4][2][0], p_2876))
        { /* block id: 1056 */
            uint32_t l_2317 = 0UL;
            int32_t l_2326[3];
            int32_t l_2374 = 0x7818DF06L;
            int64_t *l_2384 = (void*)0;
            int i;
            for (i = 0; i < 3; i++)
                l_2326[i] = 0x5E614F1CL;
            for (p_2876->g_958 = 0; (p_2876->g_958 != 12); p_2876->g_958 = safe_add_func_int8_t_s_s(p_2876->g_958, 5))
            { /* block id: 1059 */
                int32_t l_2323 = 0x5CBD40C6L;
                uint8_t *l_2361 = &p_2876->g_627[1][1][1];
                int64_t l_2370 = 0x1ACAC9A85D743792L;
                union U1 *l_2397[1][6] = {{&p_2876->g_164,&p_2876->g_2224,&p_2876->g_164,&p_2876->g_164,&p_2876->g_2224,&p_2876->g_164}};
                int32_t l_2398[7][8][4] = {{{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L}},{{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L}},{{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L}},{{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L}},{{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L}},{{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L}},{{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L},{0x1E77E910L,0x743F99E3L,1L,0x6B0921E0L}}};
                int i, j, k;
                for (p_2876->g_873 = 0; (p_2876->g_873 <= 2); p_2876->g_873 += 1)
                { /* block id: 1062 */
                    int32_t *l_2301[1][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int32_t *****l_2302 = &p_2876->g_1250;
                    volatile struct S0 *l_2304 = &p_2876->g_2129[4];
                    int i, j;
                    for (p_2876->g_1477 = 0; (p_2876->g_1477 <= 5); p_2876->g_1477 += 1)
                    { /* block id: 1065 */
                        int8_t l_2299[2][8][1] = {{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}}};
                        int i, j, k;
                        l_2300[0] ^= l_2299[0][3][0];
                    }
                    l_2300[0] &= 0x3F3FB56DL;
                    l_2300[0] = (((*l_2302) = &p_2876->g_1247) != &p_2876->g_1247);
                    (*l_2304) = p_2876->g_2303;
                    for (p_2876->g_164.f0 = 0; (p_2876->g_164.f0 <= 2); p_2876->g_164.f0 += 1)
                    { /* block id: 1074 */
                        int8_t l_2322 = 0x2BL;
                        uint64_t *l_2324[1];
                        uint16_t *l_2327 = &p_2876->g_1510;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_2324[i] = (void*)0;
                        l_2326[1] = (((safe_sub_func_uint8_t_u_u(0xD6L, (safe_mod_func_int16_t_s_s(((!(~(safe_add_func_int64_t_s_s(((l_2300[0] | ((safe_mod_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(l_2300[0], (l_2317 = 0x33L))), (((*p_2876->g_143) <= ((((safe_add_func_uint32_t_u_u((FAKE_DIVERGE(p_2876->local_0_offset, get_local_id(0), 10) , p_21), (((*l_2327) ^= (4294967287UL > ((safe_sub_func_int32_t_s_s((((l_2325 = (l_2322 , (0x6ACF6A21E68D7B95L ^ l_2323))) , &p_2876->g_694[p_2876->g_164.f0]) != &p_2876->g_694[4]), l_2326[2])) , (*p_2876->g_1098)))) >= 9L))) == (*p_2876->g_143)) , (*p_2876->g_1098)) >= l_2322)) > p_21))) && l_2300[0]), (-1L))) || l_31)) & l_2300[0]), p_21)))) , p_21), p_21)))) == p_21) , p_21);
                        return (*p_2876->g_1020);
                    }
                }
                (*p_2876->g_1248) = &l_2326[2];
                for (p_2876->g_84 = 27; (p_2876->g_84 <= 23); --p_2876->g_84)
                { /* block id: 1085 */
                    int32_t *l_2343 = &p_2876->g_1916;
                    (*l_2343) |= (safe_sub_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s(((p_21 && (0x9413L >= (safe_mul_func_uint16_t_u_u(l_2325, (((p_21 , (l_2326[2] = (safe_lshift_func_int16_t_s_u(((void*)0 == l_2338), 7)))) < p_21) > 0x736E722EFD26F87DL))))) < (((safe_div_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(p_21, p_21)), l_2317)) || p_21) == 0L)), p_2876->g_1021.f0.f0)) > p_21), p_21));
                }
                for (p_2876->g_873 = 10; (p_2876->g_873 >= 46); ++p_2876->g_873)
                { /* block id: 1091 */
                    int8_t l_2358 = 0x39L;
                    uint32_t *l_2364 = &p_2876->g_1145;
                    int64_t l_2373 = 0L;
                    int32_t l_2393 = 0x5F2E7F45L;
                    int32_t l_2399 = 6L;
                    int32_t l_2400 = 0x58282420L;
                    int32_t l_2401 = 0x2CCFF5D8L;
                    l_2326[2] = (~(((safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((*p_2876->g_2214) ^= l_2323), l_2326[2])), p_21)) & (safe_add_func_int8_t_s_s((+(~(p_21 , p_21))), (safe_sub_func_int32_t_s_s((l_2300[0] < ((safe_add_func_int64_t_s_s((p_2876->g_1145 > (safe_mul_func_int8_t_s_s((p_21 <= FAKE_DIVERGE(p_2876->group_0_offset, get_group_id(0), 10)), ((p_21 & 0x4743CBE7L) , p_21)))), l_2358)) , p_21)), l_2358))))) > l_2317));
                    for (p_2876->g_533 = (-24); (p_2876->g_533 != (-14)); p_2876->g_533 = safe_add_func_int16_t_s_s(p_2876->g_533, 2))
                    { /* block id: 1096 */
                        int32_t *l_2371 = &l_2326[1];
                        uint16_t *l_2372[8][2] = {{&p_2876->g_1510,&p_2876->g_1510},{&p_2876->g_1510,&p_2876->g_1510},{&p_2876->g_1510,&p_2876->g_1510},{&p_2876->g_1510,&p_2876->g_1510},{&p_2876->g_1510,&p_2876->g_1510},{&p_2876->g_1510,&p_2876->g_1510},{&p_2876->g_1510,&p_2876->g_1510},{&p_2876->g_1510,&p_2876->g_1510}};
                        int i, j;
                        (*p_2876->g_2363) = (((void*)0 == l_2361) , &p_2876->g_1936);
                        l_2374 ^= (((((p_21 <= (((void*)0 == l_2364) || (p_21 >= ((((((p_2876->g_125 , (*p_2876->g_1098)) <= ((p_2876->g_2367[1] , (safe_mod_func_uint64_t_u_u((!(l_2370 >= (p_2876->g_22[6][0][3] = ((((*l_2371) = ((p_21 > (-4L)) ^ 18446744073709551615UL)) < p_21) || p_21)))), p_21))) != (*p_2876->g_2214))) && (*l_2371)) != l_2358) & l_2358) == p_21)))) && p_21) < p_2876->g_98.f0) & p_2876->g_125) && l_2373);
                        (****l_2338) = (***p_2876->g_1246);
                        (*p_2876->g_1088) = p_2876->g_2375;
                    }
                    for (l_2323 = 0; (l_2323 != (-15)); l_2323 = safe_sub_func_int32_t_s_s(l_2323, 5))
                    { /* block id: 1106 */
                        int64_t *l_2382 = &l_2373;
                        int32_t l_2383 = 0L;
                        int16_t *l_2391 = (void*)0;
                        int16_t *l_2392 = &p_2876->g_188[0][0][1];
                        l_2393 ^= (l_2300[0] = ((+l_2323) != ((((safe_sub_func_int8_t_s_s((safe_div_func_uint64_t_u_u((l_2382 == (l_2383 , l_2384)), 0x0B44E548A583ADDDL)), p_21)) && (safe_div_func_int16_t_s_s(((*l_2392) = ((l_2383 | ((((safe_div_func_uint8_t_u_u(((((l_2370 > (l_2326[2] &= ((p_2876->g_2389 , p_21) & (*p_2876->g_143)))) == p_21) , p_2876->g_2390) == 247UL), p_21)) , 0UL) || l_2317) != 0x0260L)) <= (*p_2876->g_2214))), 0xBFC4L))) & (*p_2876->g_1098)) ^ p_21)));
                    }
                    for (p_2876->g_1764 = 0; (p_2876->g_1764 < (-30)); p_2876->g_1764 = safe_sub_func_uint32_t_u_u(p_2876->g_1764, 9))
                    { /* block id: 1114 */
                        int32_t *l_2396[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_2396[i] = &l_2300[0];
                        (*p_2876->g_2076) = l_2396[2];
                        (*p_2876->g_162) = l_2397[0][0];
                        l_2402++;
                    }
                }
            }
            return (*p_2876->g_1020);
        }
        else
        { /* block id: 1122 */
            int32_t *l_2414[1];
            union U3 **l_2421 = (void*)0;
            union U3 **l_2423 = &l_2420[6];
            int i;
            for (i = 0; i < 1; i++)
                l_2414[i] = &p_2876->g_1916;
            (*p_2876->g_2407) = p_2876->g_2405;
            for (p_2876->g_1477 = 21; (p_2876->g_1477 >= 16); p_2876->g_1477 = safe_sub_func_int32_t_s_s(p_2876->g_1477, 4))
            { /* block id: 1126 */
                uint32_t l_2410 = 1UL;
                int32_t l_2415[9][10] = {{7L,9L,5L,0x136784AAL,9L,0x136784AAL,5L,9L,7L,7L},{7L,9L,5L,0x136784AAL,9L,0x136784AAL,5L,9L,7L,7L},{7L,9L,5L,0x136784AAL,9L,0x136784AAL,5L,9L,7L,7L},{7L,9L,5L,0x136784AAL,9L,0x136784AAL,5L,9L,7L,7L},{7L,9L,5L,0x136784AAL,9L,0x136784AAL,5L,9L,7L,7L},{7L,9L,5L,0x136784AAL,9L,0x136784AAL,5L,9L,7L,7L},{7L,9L,5L,0x136784AAL,9L,0x136784AAL,5L,9L,7L,7L},{7L,9L,5L,0x136784AAL,9L,0x136784AAL,5L,9L,7L,7L},{7L,9L,5L,0x136784AAL,9L,0x136784AAL,5L,9L,7L,7L}};
                int i, j;
                if (l_2410)
                { /* block id: 1127 */
                    int32_t l_2413[10][6] = {{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L},{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L},{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L},{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L},{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L},{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L},{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L},{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L},{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L},{0x76F95704L,0x76F95704L,1L,0x47710823L,0L,0x47710823L}};
                    int i, j;
                    l_2325 &= (safe_sub_func_uint16_t_u_u(p_21, l_2413[2][3]));
                    l_2414[0] = (*p_2876->g_2076);
                }
                else
                { /* block id: 1130 */
                    int64_t l_2416[6] = {1L,1L,1L,1L,1L,1L};
                    int i;
                    l_2417--;
                }
            }
            (*l_2423) = (l_2422 = l_2420[0]);
        }
        for (p_2876->g_1403.f0 = 0; (p_2876->g_1403.f0 <= 0); p_2876->g_1403.f0 += 1)
        { /* block id: 1139 */
            uint8_t l_2426 = 0x16L;
            int16_t ***l_2458 = &l_2457;
            int32_t l_2486[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int32_t l_2533 = 0x5DC6B923L;
            int64_t *l_2546 = &l_31;
            uint16_t *l_2558 = &p_2876->g_22[4][2][0];
            uint8_t **l_2568 = &p_2876->g_2215[0][1][3];
            int i;
            for (p_2876->g_1573 = 0; (p_2876->g_1573 <= 0); p_2876->g_1573 += 1)
            { /* block id: 1142 */
                int32_t l_2437[7] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
                uint16_t l_2442 = 65527UL;
                uint64_t l_2443 = 3UL;
                int i, j;
                if (p_2876->g_2143[(p_2876->g_1403.f0 + 5)][(p_2876->g_1403.f0 + 4)])
                    break;
                for (p_2876->g_1916 = 0; (p_2876->g_1916 <= 2); p_2876->g_1916 += 1)
                { /* block id: 1146 */
                    int32_t l_2438 = 1L;
                    int i, j;
                    l_2443 |= ((((p_2876->g_2143[(p_2876->g_1916 + 6)][(p_2876->g_1403.f0 + 1)] , 0x18A5969036799731L) , l_2402) ^ (safe_mul_func_uint8_t_u_u((0x3BL || l_2426), ((+(p_2876->g_188[0][0][1] |= (0xF5C0L < ((void*)0 == &p_2876->g_125)))) | (safe_add_func_uint16_t_u_u((safe_mod_func_int8_t_s_s((safe_add_func_int8_t_s_s(((((safe_mod_func_uint16_t_u_u(((p_21 < l_2437[0]) > p_21), l_2438)) , p_2876->g_2439) != (void*)0) < l_2426), 0x1BL)), l_2442)), l_2437[4])))))) && 0xB68038A4L);
                    p_2876->g_1933[(p_2876->g_1403.f0 + 3)] = p_2876->g_2444;
                    if (p_21)
                        break;
                }
                return (*p_2876->g_1020);
            }
            l_2468[2] = ((safe_mod_func_int32_t_s_s(l_2426, (((p_2876->g_2447 , (l_2448 != (void*)0)) != ((safe_mul_func_uint16_t_u_u(0xB692L, (safe_add_func_uint16_t_u_u((((**l_2459) ^= (safe_div_func_int32_t_s_s((func_51((p_21 ^ (safe_add_func_uint32_t_u_u((((*l_2458) = l_2457) == l_2459), (safe_rshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((safe_div_func_uint8_t_u_u(p_21, p_2876->g_1956.f0)) & l_2426), 14)), FAKE_DIVERGE(p_2876->global_1_offset, get_global_id(1), 10)))))), p_21, &l_31, p_2876->g_832, p_2876) , (-1L)), l_2426))) > l_2426), p_21)))) >= p_2876->g_2467)) ^ 0xC036L))) == l_2426);
            for (p_2876->g_2224.f1 = 0; (p_2876->g_2224.f1 >= 0); p_2876->g_2224.f1 -= 1)
            { /* block id: 1159 */
                uint64_t l_2484 = 18446744073709551609UL;
                uint64_t **l_2495 = (void*)0;
                int32_t l_2527[10] = {0x61B2B984L,0x61B2B984L,0x61B2B984L,0x61B2B984L,0x61B2B984L,0x61B2B984L,0x61B2B984L,0x61B2B984L,0x61B2B984L,0x61B2B984L};
                int32_t l_2532 = 0x3F622E66L;
                int i;
                for (p_2876->g_30 = 0; (p_2876->g_30 <= 0); p_2876->g_30 += 1)
                { /* block id: 1162 */
                    int32_t l_2473 = 0x58D203C0L;
                    int8_t l_2485[9][4][1] = {{{0x39L},{0x39L},{0x39L},{0x39L}},{{0x39L},{0x39L},{0x39L},{0x39L}},{{0x39L},{0x39L},{0x39L},{0x39L}},{{0x39L},{0x39L},{0x39L},{0x39L}},{{0x39L},{0x39L},{0x39L},{0x39L}},{{0x39L},{0x39L},{0x39L},{0x39L}},{{0x39L},{0x39L},{0x39L},{0x39L}},{{0x39L},{0x39L},{0x39L},{0x39L}},{{0x39L},{0x39L},{0x39L},{0x39L}}};
                    union U2 *l_2506 = &l_2503[1];
                    int i, j, k;
                    if (((*p_2876->g_1020) , ((safe_div_func_int64_t_s_s(((p_2876->g_2143[(p_2876->g_2224.f1 + 4)][(p_2876->g_1403.f0 + 4)] < (safe_sub_func_uint64_t_u_u((l_2473 >= (l_2420[3] == (void*)0)), (*p_2876->g_143)))) && (safe_mul_func_int16_t_s_s(((~p_21) > (((((((safe_rshift_func_int16_t_s_s((!(((safe_mod_func_uint64_t_u_u((((*p_2876->g_2406) = (((safe_rshift_func_uint8_t_u_s((safe_add_func_int64_t_s_s(((*p_2876->g_143) || ((((*p_2876->g_143) = p_21) & p_21) , p_21)), 0x35FBADEB306F5664L)), 7)) && l_2484) && l_2485[0][1][0])) , (*p_2876->g_143)), p_21)) , p_21) > p_21)), p_2876->g_626.f0.f0)) ^ 0x28L) , p_21) ^ p_21) & 0x1847L) ^ l_2300[0]) ^ p_21)), p_21))), FAKE_DIVERGE(p_2876->group_0_offset, get_group_id(0), 10))) && p_2876->g_2447.f0)))
                    { /* block id: 1165 */
                        union U1 *l_2487 = &p_2876->g_98;
                        uint64_t **l_2491 = (void*)0;
                        uint64_t ***l_2490 = &l_2491;
                        l_2486[7] ^= p_21;
                        (*p_2876->g_162) = l_2487;
                        (*p_2876->g_2489) = p_2876->g_2488;
                        (*l_2490) = &p_2876->g_143;
                    }
                    else
                    { /* block id: 1170 */
                        int16_t l_2502 = (-9L);
                        uint16_t *l_2519 = &p_2876->g_1841[1][8];
                        int16_t *l_2521 = &p_2876->g_191;
                        int32_t *l_2522 = &p_2876->g_128[0][0];
                        int i, j;
                        l_2325 = (((p_2876->g_2493 = l_2492[1][0][1]) != (p_2876->g_2494 , l_2495)) <= (safe_mod_func_int32_t_s_s((((*p_2876->g_2406) = 0x7114A749859C59CCL) , (((!(safe_div_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u(((0L | l_2502) || 0x17L), 1UL)) , (*p_2876->g_143)), 18446744073709551615UL))) , l_2503[2]) , 0L)), l_2485[8][3][0])));
                        (*l_2522) &= ((l_2486[7] = ((safe_add_func_int16_t_s_s((((void*)0 == l_2506) == p_21), (safe_mod_func_int32_t_s_s((safe_sub_func_int16_t_s_s(((*l_2521) |= ((FAKE_DIVERGE(p_2876->local_0_offset, get_local_id(0), 10) < (((**p_2876->g_1247) = p_2876->g_2290[p_2876->g_30][p_2876->g_30]) != p_2876->g_2290[p_2876->g_1403.f0][p_2876->g_30])) != ((**l_2459) = (!(((((((l_2520 = ((((safe_mul_func_uint16_t_u_u((0x032CL ^ (safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s((((p_21 <= p_2876->g_2367[1].f0.f0) & ((l_2300[0] = ((*l_2519) = (((l_2503[2] , p_21) & p_2876->g_2224.f1) != p_21))) > 9UL)) || p_21), l_2502)), (-9L)))), 0xCD78L)) & FAKE_DIVERGE(p_2876->group_1_offset, get_group_id(1), 10)) || (-1L)) || 0L)) , l_2486[7]) , l_2417) , 2UL) & p_2876->g_188[1][0][0]) , l_2426) < (*p_2876->g_1098)))))), 0x5990L)), l_2402)))) , p_21)) < GROUP_DIVERGE(1, 1));
                        (***p_2876->g_1246) = (void*)0;
                        (*l_2522) = ((&p_2876->g_125 == &p_2876->g_2143[3][3]) <= ((((((~(p_21 , (((*p_2876->g_143) = (safe_lshift_func_int8_t_s_u(p_21, l_2485[5][2][0]))) , (l_2527[8] ^= GROUP_DIVERGE(0, 1))))) < (safe_rshift_func_int8_t_s_u(((((safe_rshift_func_int16_t_s_u(((0x5798F22EEF7B6F0DL > (l_32[1] != &p_2876->g_1145)) < (l_2484 || 0x9DE5L)), l_2532)) & l_2533) , (*l_2522)) >= 0x1D273B48L), 7))) == 246UL) != 0xE4L) | 0UL) <= p_21));
                    }
                }
            }
            if (l_2300[0])
                continue;
            for (p_2876->g_861.f1 = 1; (p_2876->g_861.f1 <= 8); p_2876->g_861.f1 += 1)
            { /* block id: 1192 */
                int32_t l_2540 = 1L;
                uint16_t *l_2547 = &p_2876->g_1841[1][8];
                uint32_t l_2567 = 2UL;
                uint32_t *l_2591[2][8][7] = {{{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107}},{{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107},{&l_2417,&l_2417,&l_2417,&l_2417,&p_2876->g_1107,&p_2876->g_1107,&p_2876->g_1107}}};
                uint32_t **l_2590 = &l_2591[1][1][2];
                uint8_t l_2613 = 0x99L;
                int i, j, k;
                if (((safe_mod_func_int16_t_s_s(((+(((safe_add_func_uint16_t_u_u(p_2876->g_2143[(p_2876->g_861.f1 + 1)][(p_2876->g_1403.f0 + 2)], ((*l_2460) = (safe_mul_func_int8_t_s_s((l_2540 || (0x4CL && ((safe_sub_func_int8_t_s_s(((!(l_2426 , (p_21 ^ (((*l_2547) ^= (safe_div_func_uint8_t_u_u(((p_21 || l_2300[0]) == ((func_51(l_2426, (p_2876->g_2545 == l_2457), l_2546, l_2520, p_2876) , (void*)0) != p_2876->g_2290[p_2876->g_1403.f0][p_2876->g_1403.f0])), 1UL))) && l_2540)))) == FAKE_DIVERGE(p_2876->group_1_offset, get_group_id(1), 10)), p_21)) == (-1L)))), p_2876->g_1442))))) , 0x06AE417EEC50449DL) || 0x4E2CD45D71CE4669L)) ^ l_2426), p_21)) , (-1L)))
                { /* block id: 1195 */
                    uint8_t l_2570[3][10][8] = {{{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L}},{{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L}},{{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L},{8UL,0x79L,249UL,1UL,1UL,8UL,1UL,0x67L}}};
                    int32_t l_2571[8][5] = {{1L,(-6L),(-7L),0x396D471FL,(-1L)},{1L,(-6L),(-7L),0x396D471FL,(-1L)},{1L,(-6L),(-7L),0x396D471FL,(-1L)},{1L,(-6L),(-7L),0x396D471FL,(-1L)},{1L,(-6L),(-7L),0x396D471FL,(-1L)},{1L,(-6L),(-7L),0x396D471FL,(-1L)},{1L,(-6L),(-7L),0x396D471FL,(-1L)},{1L,(-6L),(-7L),0x396D471FL,(-1L)}};
                    int i, j, k;
                    for (p_2876->g_48.f0 = 6; (p_2876->g_48.f0 >= 2); p_2876->g_48.f0 -= 1)
                    { /* block id: 1198 */
                        int64_t l_2549 = (-1L);
                        int32_t *l_2566[7] = {&p_2876->g_169,(void*)0,&p_2876->g_169,&p_2876->g_169,(void*)0,&p_2876->g_169,&p_2876->g_169};
                        int i;
                        if (p_2876->g_98.f0)
                            goto lbl_2548;
                        l_2567 &= (((l_2549 , &p_21) == &p_21) , ((l_2520 & (0UL ^ (safe_rshift_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s((((void*)0 == l_2558) , (0L <= ((((safe_div_func_int16_t_s_s(((safe_add_func_int8_t_s_s(((p_21 > 2L) == 0xEAL), p_21)) < p_21), 65526UL)) < 0x3B47730BL) | p_21) <= (*p_2876->g_1098)))), 18446744073709551608UL)), p_21)), l_2402)), 6)))) ^ l_2565));
                    }
                    if (((void*)0 == l_2568))
                    { /* block id: 1202 */
                        (*p_2876->g_2569) |= p_21;
                        l_2571[0][0] ^= (l_2570[2][7][1] = (p_21 | 0x4CD8L));
                    }
                    else
                    { /* block id: 1206 */
                        if (p_21)
                            break;
                        (***p_2876->g_1250) = (**p_2876->g_1247);
                    }
                }
                else
                { /* block id: 1210 */
                    int64_t l_2607 = 0x2948E14FD381CBF7L;
                    uint32_t *l_2633 = &p_2876->g_33[1][2][1];
                    int8_t *l_2634[5][7][6] = {{{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0}},{{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0}},{{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0}},{{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0}},{{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0},{&p_2876->g_1403.f0,&p_2876->g_1403.f0,&p_2876->g_316[0].f0,(void*)0,&p_2876->g_125,(void*)0}}};
                    int32_t l_2635 = 0x3207F95CL;
                    int i, j, k;
                    for (p_2876->g_1573 = 0; (p_2876->g_1573 >= 0); p_2876->g_1573 -= 1)
                    { /* block id: 1213 */
                        uint8_t l_2593 = 1UL;
                        int32_t **l_2606 = (void*)0;
                        int32_t l_2612 = 0x18E8B90DL;
                        l_2540 &= (safe_mul_func_uint8_t_u_u((p_2876->g_533 == ((~p_21) != ((safe_mul_func_int8_t_s_s((((p_21 , (safe_rshift_func_uint16_t_u_s(p_21, (safe_mul_func_uint16_t_u_u((((((l_2486[7] = (safe_mul_func_int16_t_s_s((p_2876->g_316[0].f0 ^ (((p_2876->g_2582 , (p_2876->g_2583 , (((*p_2876->g_2214) | (safe_rshift_func_int8_t_s_u((safe_add_func_int16_t_s_s((safe_add_func_uint64_t_u_u((~(l_2558 == (void*)0)), l_2402)), p_21)), l_2300[0]))) & p_2876->g_128[0][0]))) , l_2590) == (void*)0)), 65535UL))) != p_2876->g_2592) ^ 0x62A730B8L) | p_21) != 255UL), 0x65FBL))))) != p_21) & l_2593), (-5L))) < l_2533))), p_21));
                        (****l_2338) = (***p_2876->g_1250);
                        l_2300[0] &= (((*p_2876->g_2214) = (((0x4944L | (safe_add_func_uint16_t_u_u((l_2426 != (+(p_2876->g_2143[(p_2876->g_861.f1 + 1)][(p_2876->g_1403.f0 + 2)] , (safe_mul_func_int8_t_s_s(p_21, p_21))))), (safe_div_func_uint64_t_u_u((safe_add_func_uint32_t_u_u((((safe_sub_func_uint32_t_u_u((((((safe_lshift_func_int8_t_s_u(((**p_2876->g_1250) != (l_2606 = (void*)0)), l_2607)) || ((*l_2546) = (safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u(((+(l_2612 || p_21)) ^ 0x2FL), 5)), 0x763CBF6B38829E77L)))) != l_2607) , (void*)0) == &p_2876->g_873), 4294967295UL)) < l_2486[4]) | l_2426), (*p_2876->g_1098))), 1L))))) || GROUP_DIVERGE(1, 1)) > l_2613)) & p_21);
                        if ((*p_2876->g_2569))
                            continue;
                    }
                    l_2635 &= (l_2486[6] ^= ((safe_add_func_uint16_t_u_u(((GROUP_DIVERGE(1, 1) <= p_21) > (l_2540 &= ((safe_unary_minus_func_int16_t_s((safe_sub_func_uint64_t_u_u((((*p_2876->g_1098)--) > (safe_add_func_int32_t_s_s((l_2623[2][5][0] == ((**p_2876->g_1250) = (**p_2876->g_1246))), (((safe_add_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(((safe_mul_func_uint16_t_u_u(((safe_sub_func_uint8_t_u_u(l_2567, (((p_2876->g_188[1][0][0] && (l_2632 <= (*p_2876->g_2214))) , l_2633) == l_32[5]))) ^ p_21), 0L)) && p_2876->g_1764), p_21)), 0L)) && (*p_2876->g_2214)) || 3L)))), p_2876->g_2143[(p_2876->g_861.f1 + 1)][(p_2876->g_1403.f0 + 2)])))) , 0x14L))), 4UL)) | p_21));
                }
                (*p_2876->g_2637) = p_2876->g_2636;
            }
        }
    }
    else
    { /* block id: 1232 */
        for (p_2876->g_1107 = 0; (p_2876->g_1107 != 27); p_2876->g_1107 = safe_add_func_uint8_t_u_u(p_2876->g_1107, 4))
        { /* block id: 1235 */
            return p_2876->g_2640;
        }
    }
    l_2654++;
    return p_2876->g_2657;
}


/* ------------------------------------------ */
/* 
 * reads : p_2876->g_1813 p_2876->g_1888 p_2876->g_1865
 * writes: p_2876->g_1813 p_2876->g_607.f0
 */
int32_t  func_23(int64_t  p_24, uint64_t  p_25, uint32_t  p_26, uint16_t  p_27, struct S4 * p_2876)
{ /* block id: 10 */
    uint64_t l_85 = 0xFBD8D123FB1128C1L;
    uint32_t *l_1073 = (void*)0;
    union U1 *l_1875 = &p_2876->g_316[0];
    int32_t l_1883 = 0x20C9E7E5L;
    uint16_t l_1885[2][1][4];
    uint32_t *l_1914 = (void*)0;
    uint32_t **l_1913 = &l_1914;
    uint16_t l_1915 = 8UL;
    int64_t ***l_1947 = &p_2876->g_913[0][0][2];
    int16_t l_2036 = 0L;
    int8_t l_2061 = 0x76L;
    int32_t l_2068[8][3] = {{0x323D1BCAL,0x3034D006L,0x323D1BCAL},{0x323D1BCAL,0x3034D006L,0x323D1BCAL},{0x323D1BCAL,0x3034D006L,0x323D1BCAL},{0x323D1BCAL,0x3034D006L,0x323D1BCAL},{0x323D1BCAL,0x3034D006L,0x323D1BCAL},{0x323D1BCAL,0x3034D006L,0x323D1BCAL},{0x323D1BCAL,0x3034D006L,0x323D1BCAL},{0x323D1BCAL,0x3034D006L,0x323D1BCAL}};
    uint32_t l_2128 = 0xDDF9D14FL;
    int16_t l_2173[8][5][6] = {{{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L}},{{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L}},{{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L}},{{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L}},{{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L}},{{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L}},{{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L}},{{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L},{(-7L),0x0E6BL,4L,0x5E8AL,0L,0x4F56L}}};
    uint32_t *l_2246 = &p_2876->g_1107;
    uint32_t **l_2245 = &l_2246;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 4; k++)
                l_1885[i][j][k] = 65535UL;
        }
    }
    for (p_26 = 0; (p_26 != 11); p_26++)
    { /* block id: 13 */
        uint8_t l_82[7] = {0xDAL,0x97L,0xDAL,0xDAL,0x97L,0xDAL,0xDAL};
        int32_t *l_83 = &p_2876->g_84;
        int i;
        (1 + 1);
    }
    for (p_2876->g_1813 = 0; (p_2876->g_1813 <= (-1)); p_2876->g_1813--)
    { /* block id: 905 */
        int32_t *l_1878 = (void*)0;
        int32_t *l_1879 = &p_2876->g_128[0][0];
        int32_t *l_1880 = (void*)0;
        int32_t *l_1881 = &p_2876->g_169;
        int32_t *l_1882[10] = {&p_2876->g_818,&p_2876->g_128[0][0],(void*)0,&p_2876->g_128[0][0],&p_2876->g_818,&p_2876->g_818,&p_2876->g_128[0][0],(void*)0,&p_2876->g_128[0][0],&p_2876->g_818};
        struct S0 *l_1891[5][4] = {{(void*)0,&p_2876->g_1240.f0,(void*)0,&p_2876->g_1240.f0},{(void*)0,&p_2876->g_1240.f0,(void*)0,&p_2876->g_1240.f0},{(void*)0,&p_2876->g_1240.f0,(void*)0,&p_2876->g_1240.f0},{(void*)0,&p_2876->g_1240.f0,(void*)0,&p_2876->g_1240.f0},{(void*)0,&p_2876->g_1240.f0,(void*)0,&p_2876->g_1240.f0}};
        uint32_t **l_1912 = &p_2876->g_1098;
        int64_t l_1927 = 6L;
        union U1 **l_1932[8] = {&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875};
        int32_t *****l_1981 = (void*)0;
        uint8_t l_2018 = 249UL;
        int8_t l_2039 = 4L;
        int64_t ****l_2096 = &l_1947;
        union U3 *l_2193 = &p_2876->g_540;
        union U1 **l_2201[6][9] = {{&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875},{&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875},{&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875},{&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875},{&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875},{&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875,&l_1875}};
        int i, j;
        --l_1885[0][0][3];
        (*p_2876->g_1865) = p_2876->g_1888;
    }
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_2876->g_1864 p_2876->g_1865 p_2876->g_1250 p_2876->g_1247 p_2876->g_1248
 * writes: p_2876->g_164.f1 p_2876->g_607.f0 p_2876->g_95
 */
int32_t  func_36(uint64_t  p_37, uint32_t  p_38, int32_t  p_39, struct S4 * p_2876)
{ /* block id: 892 */
    uint32_t l_1855 = 0x4F466FC2L;
    int32_t *l_1866 = &p_2876->g_128[0][0];
    int32_t l_1867 = 0x227DF1DAL;
    int32_t *l_1868 = &p_2876->g_128[0][0];
    int32_t *l_1869 = &l_1867;
    int32_t *l_1870 = &p_2876->g_128[0][0];
    int32_t *l_1871[4];
    uint8_t l_1872 = 0x4BL;
    int i;
    for (i = 0; i < 4; i++)
        l_1871[i] = &p_2876->g_128[0][0];
    (*p_2876->g_1865) = ((safe_lshift_func_int8_t_s_s((p_2876->g_164.f1 = ((safe_rshift_func_uint8_t_u_u((4294967295UL || (l_1855 <= ((safe_sub_func_int32_t_s_s(1L, l_1855)) , (((-8L) > ((safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((l_1855 ^ l_1855) <= ((safe_mul_func_int16_t_s_s(0x47B3L, l_1855)) > (-2L))), p_38)), 0x0BL)) , l_1855)) <= l_1855)))), 3)) | GROUP_DIVERGE(0, 1))), p_39)) , p_2876->g_1864);
    --l_1872;
    (***p_2876->g_1250) = &p_39;
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_2876->g_33 p_2876->g_193 p_2876->g_169 p_2876->g_144 p_2876->g_22 p_2876->g_492 p_2876->g_1088 p_2876->g_818 p_2876->g_128 p_2876->g_873 p_2876->g_257 p_2876->g_48 p_2876->g_48.f0 p_2876->g_256 p_2876->g_1145 p_2876->g_164.f0 p_2876->g_188 p_2876->g_109 p_2876->g_627 p_2876->g_1107 p_2876->g_283 p_2876->g_533 p_2876->g_861.f0 p_2876->g_917 p_2876->g_313 p_2876->g_1033 p_2876->g_84 p_2876->g_125 p_2876->g_1248 p_2876->g_1403 p_2876->g_832 p_2876->g_1112.f0 p_2876->g_1442 p_2876->g_1250 p_2876->g_1247 p_2876->g_1477 p_2876->g_1403.f0 p_2876->g_1510 p_2876->g_1534 p_2876->g_1539 p_2876->g_98.f0 p_2876->g_1573
 * writes: p_2876->g_256 p_2876->g_144 p_2876->g_109 p_2876->g_22 p_2876->g_128 p_2876->g_818 p_2876->g_1088 p_2876->g_1098 p_2876->g_1107 p_2876->g_873 p_2876->g_1133 p_2876->g_1145 p_2876->g_30 p_2876->g_191 p_2876->g_48.f0 p_2876->g_861.f0 p_2876->g_533 p_2876->g_625 p_2876->g_1246 p_2876->g_1250 p_2876->g_912 p_2876->g_188 p_2876->g_917 p_2876->g_313 p_2876->g_193 p_2876->g_125 p_2876->g_95 p_2876->g_1477 p_2876->g_958 p_2876->g_627 p_2876->g_1510 p_2876->g_84 p_2876->g_1112.f1 p_2876->g_169
 */
int8_t  func_43(union U2  p_44, uint32_t  p_45, int16_t  p_46, uint32_t * p_47, struct S4 * p_2876)
{ /* block id: 527 */
    uint64_t l_1074 = 0x6BB591F988B61812L;
    union U2 ***l_1075 = &p_2876->g_256;
    uint16_t *l_1078 = &p_2876->g_22[4][2][0];
    int8_t *l_1081[9][4][5] = {{{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0}},{{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0}},{{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0}},{{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0}},{{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0}},{{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0}},{{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0}},{{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0}},{{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0},{(void*)0,&p_2876->g_164.f0,&p_2876->g_48.f0,&p_2876->g_861.f0,&p_2876->g_164.f0}}};
    uint64_t *l_1082 = (void*)0;
    uint64_t *l_1083 = &p_2876->g_144;
    uint64_t *l_1084 = &p_2876->g_109;
    int32_t *l_1085 = &p_2876->g_128[0][1];
    int32_t *l_1086 = (void*)0;
    int32_t *l_1087 = &p_2876->g_818;
    struct S0 **l_1089 = &p_2876->g_1088;
    uint32_t *l_1100 = (void*)0;
    uint32_t **l_1099 = &l_1100;
    uint32_t *l_1105 = (void*)0;
    uint32_t *l_1106 = &p_2876->g_1107;
    union U1 *l_1111[4];
    union U1 **l_1110 = &l_1111[0];
    uint32_t *l_1113 = &p_2876->g_873;
    int16_t l_1118 = 0L;
    int32_t l_1140 = 5L;
    int32_t l_1143 = 0x1E8632CDL;
    uint8_t l_1197 = 0xEFL;
    union U3 *l_1239[9];
    int64_t ***l_1258 = &p_2876->g_913[0][0][2];
    int32_t l_1288 = (-1L);
    int32_t l_1291 = 0x04B107A3L;
    int64_t l_1309 = 0x0AE439C0939869D5L;
    uint16_t l_1366 = 65529UL;
    uint32_t l_1437[2][7][1] = {{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}};
    int32_t l_1452[6][9] = {{(-2L),0L,3L,1L,0x7CE39A2DL,(-2L),1L,1L,1L},{(-2L),0L,3L,1L,0x7CE39A2DL,(-2L),1L,1L,1L},{(-2L),0L,3L,1L,0x7CE39A2DL,(-2L),1L,1L,1L},{(-2L),0L,3L,1L,0x7CE39A2DL,(-2L),1L,1L,1L},{(-2L),0L,3L,1L,0x7CE39A2DL,(-2L),1L,1L,1L},{(-2L),0L,3L,1L,0x7CE39A2DL,(-2L),1L,1L,1L}};
    uint32_t l_1453 = 0xE8CF5123L;
    uint32_t *l_1490[8][4] = {{(void*)0,&p_2876->g_33[0][5][1],&p_2876->g_33[1][2][1],&p_2876->g_33[0][5][1]},{(void*)0,&p_2876->g_33[0][5][1],&p_2876->g_33[1][2][1],&p_2876->g_33[0][5][1]},{(void*)0,&p_2876->g_33[0][5][1],&p_2876->g_33[1][2][1],&p_2876->g_33[0][5][1]},{(void*)0,&p_2876->g_33[0][5][1],&p_2876->g_33[1][2][1],&p_2876->g_33[0][5][1]},{(void*)0,&p_2876->g_33[0][5][1],&p_2876->g_33[1][2][1],&p_2876->g_33[0][5][1]},{(void*)0,&p_2876->g_33[0][5][1],&p_2876->g_33[1][2][1],&p_2876->g_33[0][5][1]},{(void*)0,&p_2876->g_33[0][5][1],&p_2876->g_33[1][2][1],&p_2876->g_33[0][5][1]},{(void*)0,&p_2876->g_33[0][5][1],&p_2876->g_33[1][2][1],&p_2876->g_33[0][5][1]}};
    int8_t l_1523[9] = {6L,6L,6L,6L,6L,6L,6L,6L,6L};
    uint32_t l_1648 = 0UL;
    uint32_t l_1679 = 1UL;
    uint64_t l_1704 = 18446744073709551609UL;
    uint64_t l_1811 = 0x8782F0CEB4205153L;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_1111[i] = &p_2876->g_1112;
    for (i = 0; i < 9; i++)
        l_1239[i] = &p_2876->g_1240;
lbl_1255:
    (*l_1087) = ((((*l_1085) = ((l_1074 && (p_2876->g_33[2][3][2] , p_2876->g_193)) , (+(((*l_1078) ^= (((((*l_1075) = &p_2876->g_257) != &p_2876->g_257) , (((l_1078 == &p_2876->g_22[8][0][3]) , 0L) >= (FAKE_DIVERGE(p_2876->local_1_offset, get_local_id(1), 10) >= ((*l_1084) = ((*l_1083) ^= ((p_44.f0 &= (safe_mul_func_uint8_t_u_u(l_1074, l_1074))) , p_2876->g_169)))))) > 1L)) , p_45)))) | FAKE_DIVERGE(p_2876->global_2_offset, get_global_id(2), 10)) < p_2876->g_492);
    (*l_1089) = p_2876->g_1088;
    if ((((*l_1113) ^= (((((safe_add_func_int8_t_s_s(p_46, ((((safe_div_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((p_44.f0 &= ((p_2876->g_1098 = p_47) != ((*l_1099) = l_1085))) | p_45), ((*l_1083) |= (0x33L ^ (safe_rshift_func_uint8_t_u_s(((safe_mod_func_uint64_t_u_u(((*l_1087) ^= (((*l_1106) = (!(0x45A6L || 65533UL))) , GROUP_DIVERGE(2, 1))), ((*l_1085) &= p_46))) <= GROUP_DIVERGE(0, 1)), 1)))))), (safe_sub_func_int64_t_s_s(((p_45 < GROUP_DIVERGE(2, 1)) < 0x8A08ADD43F7C5110L), l_1074)))), p_45)) , p_44.f0) > 0xEA7CL) , 1L))) <= 1L) , (void*)0) == l_1110) , GROUP_DIVERGE(1, 1))) & p_45))
    { /* block id: 544 */
        int64_t l_1126 = 1L;
        int32_t l_1139 = 0x7F3AEEE6L;
        int32_t l_1141 = 1L;
        uint16_t l_1155 = 0UL;
        int32_t l_1235 = 1L;
        int32_t ****l_1249 = &p_2876->g_1247;
        uint64_t l_1292 = 1UL;
        int32_t l_1295 = 0x1692DAA4L;
        int16_t *l_1331 = &p_2876->g_191;
        uint32_t l_1368 = 0x4F833E50L;
        int64_t ****l_1369 = &l_1258;
        union U2 l_1372 = {0L};
        uint32_t l_1397[9][1] = {{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL}};
        int32_t *l_1489 = &l_1141;
        int32_t l_1520 = (-2L);
        int32_t l_1521 = 0L;
        int32_t l_1522 = (-4L);
        uint32_t l_1524[2][10] = {{0xD359CAB3L,0UL,0x714BBDD4L,4294967291UL,0UL,4294967291UL,0x714BBDD4L,0UL,0xD359CAB3L,0xD359CAB3L},{0xD359CAB3L,0UL,0x714BBDD4L,4294967291UL,0UL,4294967291UL,0x714BBDD4L,0UL,0xD359CAB3L,0xD359CAB3L}};
        int i, j;
lbl_1473:
        for (p_2876->g_144 = 0; (p_2876->g_144 == 58); p_2876->g_144 = safe_add_func_uint8_t_u_u(p_2876->g_144, 1))
        { /* block id: 547 */
            int64_t ****l_1119 = &p_2876->g_912;
            uint16_t *l_1122[7][7][5] = {{{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]}},{{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]}},{{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]}},{{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]}},{{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]}},{{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]}},{{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]},{&p_2876->g_22[4][2][0],&p_2876->g_22[3][2][1],(void*)0,&p_2876->g_917,&p_2876->g_22[4][4][0]}}};
            int32_t l_1127 = 0x19155FD2L;
            int32_t l_1144 = 0x2D1CFF30L;
            uint8_t l_1151 = 0x15L;
            int32_t *l_1154 = &l_1143;
            struct S0 *l_1221 = (void*)0;
            uint64_t l_1254 = 2UL;
            int32_t l_1286 = 0x0D87F4D1L;
            int32_t l_1289[9][4][2] = {{{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L}},{{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L}},{{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L}},{{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L}},{{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L}},{{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L}},{{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L}},{{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L}},{{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L},{0L,0x044AA9D6L}}};
            int16_t l_1296 = 0x6D13L;
            uint32_t l_1346 = 4294967295UL;
            int i, j, k;
            for (p_45 = 24; (p_45 > 33); p_45 = safe_add_func_int16_t_s_s(p_45, 9))
            { /* block id: 550 */
                uint8_t l_1125[10] = {0UL,0xF4L,0x87L,0xF4L,0UL,0UL,0xF4L,0x87L,0xF4L,0UL};
                int32_t l_1136 = 1L;
                int32_t l_1142 = 0x1FADFF75L;
                int i;
                if ((((!l_1118) ^ ((l_1119 != &p_2876->g_912) ^ (safe_lshift_func_uint16_t_u_u((l_1122[1][5][3] == (void*)0), (safe_div_func_uint32_t_u_u(l_1125[3], p_44.f0)))))) ^ ((*p_2876->g_257) , l_1126)))
                { /* block id: 551 */
                    (*l_1087) ^= (-1L);
                    l_1127 = 0x1E90DE8CL;
                }
                else
                { /* block id: 554 */
                    uint64_t l_1134 = 0UL;
                    int32_t *l_1135 = &p_2876->g_84;
                    int32_t l_1137[8] = {1L,(-1L),1L,1L,(-1L),1L,1L,(-1L)};
                    int i;
                    if (((*l_1087) = l_1125[3]))
                    { /* block id: 556 */
                        union U2 **l_1130 = &p_2876->g_257;
                        union U2 *l_1132 = &p_2876->g_48;
                        union U2 **l_1131[4][3][1] = {{{&l_1132},{&l_1132},{&l_1132}},{{&l_1132},{&l_1132},{&l_1132}},{{&l_1132},{&l_1132},{&l_1132}},{{&l_1132},{&l_1132},{&l_1132}}};
                        int i, j, k;
                        (*l_1087) = (p_46 , (((**l_1099) ^= ((void*)0 == &p_2876->g_257)) >= ((*l_1113) = (((p_2876->g_48.f0 < ((l_1127 == ((!(((l_1130 == (void*)0) & ((**l_1075) == (p_2876->g_1133 = (*p_2876->g_256)))) || p_44.f0)) <= p_45)) < 4294967295UL)) < (-1L)) >= l_1134))));
                        if (p_45)
                            break;
                    }
                    else
                    { /* block id: 562 */
                        int32_t *l_1138[8] = {&l_1137[7],&l_1137[7],&l_1137[7],&l_1137[7],&l_1137[7],&l_1137[7],&l_1137[7],&l_1137[7]};
                        int i;
                        l_1135 = (void*)0;
                        (*l_1085) ^= p_44.f0;
                        p_2876->g_1145--;
                        l_1139 = (l_1144 && GROUP_DIVERGE(1, 1));
                    }
                }
                for (l_1142 = 7; (l_1142 <= 10); ++l_1142)
                { /* block id: 571 */
                    int32_t *l_1150[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1150[i] = &l_1139;
                    if (l_1144)
                        break;
                    l_1151++;
                    l_1154 = &p_2876->g_128[0][1];
                }
            }
            if (l_1155)
            { /* block id: 577 */
                int16_t *l_1157 = &p_2876->g_188[0][0][1];
                int16_t **l_1156 = &l_1157;
                int32_t l_1179 = 0x50BD0E05L;
                uint8_t l_1190 = 254UL;
                struct S0 *l_1231 = &p_2876->g_1232;
                int32_t l_1233 = 0L;
                uint8_t l_1236 = 249UL;
                int32_t ****l_1251[5];
                union U2 l_1271 = {0x60L};
                int16_t l_1287[7][10][3] = {{{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L}},{{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L}},{{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L}},{{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L}},{{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L}},{{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L}},{{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L},{0x1761L,0x13A6L,0x3A00L}}};
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_1251[i] = &p_2876->g_1247;
                (*l_1087) ^= ((*l_1154) = (~(&p_2876->g_188[1][0][0] == ((*l_1156) = &p_2876->g_191))));
                for (l_1126 = 5; (l_1126 != (-20)); l_1126--)
                { /* block id: 583 */
                    int64_t *l_1168 = &p_2876->g_30;
                    int32_t l_1175 = 0x6BDE5F11L;
                    int32_t *l_1178[5] = {&p_2876->g_536,&p_2876->g_536,&p_2876->g_536,&p_2876->g_536,&p_2876->g_536};
                    int32_t l_1198 = 2L;
                    uint8_t *l_1261 = &l_1151;
                    int16_t *l_1270 = &p_2876->g_188[1][0][0];
                    int i;
                    (*l_1085) = (p_44.f0 != (safe_add_func_int32_t_s_s(((0x048B2EEEL > (p_46 != (((safe_lshift_func_uint8_t_u_s(((((l_1179 = (safe_div_func_int8_t_s_s(((safe_div_func_int64_t_s_s(((*l_1087) = ((*l_1168) = 0x53595DB29B1186A1L)), p_45)) < (safe_mul_func_int8_t_s_s(((p_45 , (safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((l_1175 ^ p_45), (safe_add_func_uint16_t_u_u(7UL, p_2876->g_164.f0)))), p_2876->g_188[1][0][0]))) > 5L), l_1126))), 0x3BL))) , p_46) == FAKE_DIVERGE(p_2876->local_0_offset, get_local_id(0), 10)) | GROUP_DIVERGE(1, 1)), 3)) >= p_2876->g_109) , p_2876->g_33[1][2][1]))) <= p_2876->g_188[1][0][0]), p_45)));
                    if (l_1126)
                        continue;
                    if (((l_1198 = (safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s((safe_sub_func_int32_t_s_s(p_44.f0, (((((p_2876->g_48.f0 = ((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_2876->local_1_offset, get_local_id(1), 10), ((safe_mul_func_int16_t_s_s(((*l_1157) = p_44.f0), (((((void*)0 != p_47) > ((l_1190 , l_1175) & (safe_div_func_int16_t_s_s(p_2876->g_627[3][4][0], ((safe_mod_func_uint64_t_u_u((((*l_1154) | ((safe_sub_func_uint64_t_u_u(0xDD8746A7D50A971CL, l_1139)) <= l_1141)) != p_44.f0), 0x01D859EEE4794BF1L)) ^ FAKE_DIVERGE(p_2876->local_1_offset, get_local_id(1), 10)))))) | 0xDDL) > 0UL))) , FAKE_DIVERGE(p_2876->global_0_offset, get_global_id(0), 10)))) < GROUP_DIVERGE(0, 1))) || l_1197) <= p_45) ^ 0x6A6BE4E5L) > p_2876->g_1107))), 14)), 4UL))) | 0x57L))
                    { /* block id: 592 */
                        struct S0 **l_1222 = &l_1221;
                        int32_t *l_1234[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1234[i] = &p_2876->g_169;
                        l_1144 = (safe_lshift_func_int8_t_s_u(((safe_mul_func_int16_t_s_s((((((p_2876->g_533 |= (p_45 ^ (0x48ADL != (l_1233 = (l_1141 = (safe_rshift_func_int8_t_s_s((safe_div_func_int32_t_s_s((l_1198 &= ((safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((--(*l_1100)), ((safe_rshift_func_uint16_t_u_s(0UL, 11)) , ((safe_sub_func_uint64_t_u_u(p_2876->g_283, p_45)) > ((safe_rshift_func_int8_t_s_u((p_2876->g_861.f0 = (l_1179 = 0x2EL)), (safe_add_func_int16_t_s_s(((((*l_1222) = ((*l_1089) = l_1221)) == (((safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(p_46, (p_44.f0 = (safe_sub_func_uint16_t_u_u(p_2876->g_627[2][1][0], p_2876->g_22[2][4][2]))))), p_2876->g_193)), 0xBF3AL)) ^ l_1175) , l_1231)) || 0x12310C0BL), p_2876->g_48.f0)))) , (-1L)))))), l_1141)) == l_1175)), p_46)), 6))))))) , l_1126) , (-1L)) > p_46) ^ 0x414C2650463AFF69L), l_1155)) & p_46), p_2876->g_188[1][0][0]));
                        l_1236--;
                        l_1198 = (p_44 , (+(*l_1087)));
                        (*l_1087) = 0x34214946L;
                    }
                    else
                    { /* block id: 607 */
                        union U3 **l_1241[5] = {&p_2876->g_1020,&p_2876->g_1020,&p_2876->g_1020,&p_2876->g_1020,&p_2876->g_1020};
                        int32_t **l_1244 = &p_2876->g_95[1];
                        int32_t ***l_1243 = &l_1244;
                        int32_t ****l_1242 = &l_1243;
                        int32_t *****l_1245[4][6] = {{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242}};
                        int i, j;
                        p_2876->g_625[4] = l_1239[7];
                        l_1179 = l_1179;
                        (*l_1087) = (0UL > (4UL | (((p_2876->g_1246 = l_1242) == (l_1251[4] = (p_2876->g_1250 = l_1249))) , (65530UL && ((p_44.f0 ^ ((9L > ((safe_mod_func_int64_t_s_s(((p_44 , p_44.f0) < l_1175), l_1254)) >= 0UL)) & 4294967295UL)) || 0x16L)))));
                        if (p_2876->g_164.f0)
                            goto lbl_1255;
                    }
                    (*l_1087) |= (l_1144 = ((safe_mod_func_uint32_t_u_u((((&p_2876->g_400 == ((*l_1119) = l_1258)) , ((safe_mul_func_uint8_t_u_u(((*l_1261) = ((void*)0 == l_1251[4])), (safe_add_func_uint16_t_u_u(((safe_add_func_int32_t_s_s(((*l_1154) |= ((-1L) || (((safe_rshift_func_int16_t_s_u(((*l_1270) = ((*l_1157) = (p_45 | ((~p_46) | ((safe_lshift_func_int8_t_s_u(p_2876->g_144, 2)) , p_45))))), p_44.f0)) , p_47) != &p_2876->g_33[1][2][1]))), p_45)) | GROUP_DIVERGE(1, 1)), 0x7E3AL)))) , 0xF788828E2686CE28L)) != 0x7236AC1941B3BFEFL), 0x462336FEL)) <= p_2876->g_492));
                }
                for (p_2876->g_861.f0 = 0; (p_2876->g_861.f0 <= 3); p_2876->g_861.f0 += 1)
                { /* block id: 626 */
                    int8_t l_1274 = 0x29L;
                    int64_t *l_1275[8] = {&l_1126,&l_1126,&l_1126,&l_1126,&l_1126,&l_1126,&l_1126,&l_1126};
                    int32_t l_1276 = 0x6B1BF23BL;
                    int32_t *****l_1281[5][2] = {{(void*)0,&l_1251[4]},{(void*)0,&l_1251[4]},{(void*)0,&l_1251[4]},{(void*)0,&l_1251[4]},{(void*)0,&l_1251[4]}};
                    int i, j;
                    (*l_1085) = (((p_2876->g_1250 = ((l_1271 , (safe_mul_func_uint32_t_u_u(((***l_1075) , p_2876->g_533), ((l_1276 = l_1274) == (safe_mul_func_uint16_t_u_u((--p_2876->g_917), 0xABC6L)))))) , l_1251[4])) != &p_2876->g_1247) , ((*l_1085) >= (p_45 < p_44.f0)));
                    for (p_2876->g_313 = 0; (p_2876->g_313 <= 3); p_2876->g_313 += 1)
                    { /* block id: 633 */
                        int32_t *l_1282 = (void*)0;
                        int16_t l_1283 = 0x75A5L;
                        int8_t l_1284 = (-1L);
                        int32_t l_1285 = 0x4F7C509EL;
                        int32_t l_1290 = 0x00C8068FL;
                        l_1282 = &l_1140;
                        --l_1292;
                        (*l_1087) = p_45;
                        return p_45;
                    }
                }
            }
            else
            { /* block id: 640 */
                uint8_t *l_1310 = &p_2876->g_193;
                int32_t l_1311 = (-10L);
                if (((*l_1154) = ((((p_44 , l_1295) != l_1296) , ((safe_mod_func_uint8_t_u_u(((((safe_lshift_func_int8_t_s_u(0x52L, (*l_1154))) < ((safe_mod_func_int8_t_s_s(p_2876->g_1033[8], ((*l_1310) = (safe_mod_func_uint8_t_u_u((4UL >= (((*l_1087) = (safe_add_func_uint32_t_u_u(p_44.f0, (safe_mul_func_int16_t_s_s(p_45, l_1309))))) != p_46)), 8UL))))) > l_1311)) || (*l_1154)) ^ (*l_1154)), p_2876->g_313)) ^ (-5L))) <= GROUP_DIVERGE(0, 1))))
                { /* block id: 644 */
                    int16_t *l_1324 = &l_1296;
                    int32_t l_1332 = 0L;
                    (*l_1087) = ((safe_div_func_uint16_t_u_u((safe_add_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(((++(*l_1084)) | (((~((*l_1324) |= 1L)) ^ 0x7DDCL) < 0UL)), ((*l_1154) = 0x79L))), (safe_mod_func_uint16_t_u_u(p_46, 0x5125L)))) != (safe_rshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((l_1331 == (func_51(p_46, l_1332, &l_1126, l_1311, p_2876) , (void*)0)), 3)), 3))), p_2876->g_84)), p_2876->g_125)) <= p_2876->g_283);
                    if (p_46)
                        break;
                }
                else
                { /* block id: 650 */
                    for (p_2876->g_873 = 2; (p_2876->g_873 <= 8); p_2876->g_873 += 1)
                    { /* block id: 653 */
                        int32_t l_1333 = 0x0A574440L;
                        (*l_1087) = l_1333;
                        (*l_1087) |= p_45;
                    }
                }
            }
            (*l_1087) |= (((safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s(2UL, 15)), (safe_mod_func_uint32_t_u_u(p_2876->g_33[1][2][1], (((*l_1154) >= ((&p_2876->g_257 != &p_2876->g_1133) || ((*l_1331) = (safe_mod_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((*l_1085) , (0xC2L & l_1346)), FAKE_DIVERGE(p_2876->local_2_offset, get_local_id(2), 10))), ((p_46 < p_45) | p_2876->g_627[2][1][0])))))) || p_44.f0))))), 65526UL)) == (*l_1154)) ^ 0xED0D225CB80191BEL);
        }
        if (p_46)
        { /* block id: 662 */
            uint8_t l_1389[6];
            int32_t l_1449[1];
            int16_t l_1450 = 0x7BA5L;
            int64_t l_1451 = 0x7AC68A825C30CE04L;
            int i;
            for (i = 0; i < 6; i++)
                l_1389[i] = 0xE5L;
            for (i = 0; i < 1; i++)
                l_1449[i] = 0x76535837L;
            for (p_2876->g_125 = 0; (p_2876->g_125 < (-28)); p_2876->g_125 = safe_sub_func_uint8_t_u_u(p_2876->g_125, 6))
            { /* block id: 665 */
                int32_t l_1353[6] = {7L,0L,7L,7L,0L,7L};
                int32_t l_1367 = (-1L);
                int i;
                (*p_2876->g_1248) = p_47;
                (*l_1087) = ((*l_1085) = ((((p_44.f0 && (p_2876->g_533 = ((safe_div_func_uint64_t_u_u(((*l_1084) = (safe_mul_func_int8_t_s_s((-1L), FAKE_DIVERGE(p_2876->local_2_offset, get_local_id(2), 10)))), l_1353[2])) , (GROUP_DIVERGE(1, 1) || ((safe_div_func_int8_t_s_s((((safe_sub_func_int8_t_s_s(p_44.f0, (safe_div_func_int64_t_s_s(((l_1367 &= (safe_rshift_func_int16_t_s_u((((***l_1075) , (p_2876->g_188[1][0][0] != (((~(((1L ^ (safe_div_func_int8_t_s_s((p_45 , (safe_lshift_func_int16_t_s_s(l_1366, 11))), 0xE9L))) == GROUP_DIVERGE(2, 1)) > 0x2742F762L)) , l_1353[0]) | l_1353[1]))) != p_46), 5))) >= (-9L)), p_44.f0)))) , l_1367) , l_1368), p_2876->g_313)) && p_44.f0))))) == (*l_1085)) , l_1369) == &l_1258));
                (*l_1087) |= (p_46 , (safe_add_func_int8_t_s_s(((!(l_1372 , ((safe_div_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(p_46, (safe_rshift_func_uint8_t_u_s((p_45 != (((p_46 && (((safe_div_func_int8_t_s_s(((safe_mod_func_int32_t_s_s((((l_1353[2] && (safe_mod_func_uint16_t_u_u(((*l_1078)++), (p_46 | ((0x00L && p_2876->g_193) != p_44.f0))))) & p_44.f0) ^ 1UL), p_44.f0)) == 0x6B4198C9L), GROUP_DIVERGE(2, 1))) <= p_46) == 1L)) != l_1389[1]) < p_2876->g_917)), p_2876->g_533)))) , 0x7E58L), 1L)) , GROUP_DIVERGE(1, 1)))) & p_44.f0), p_45)));
            }
            for (p_44.f0 = 0; (p_44.f0 >= 13); p_44.f0 = safe_add_func_int8_t_s_s(p_44.f0, 5))
            { /* block id: 677 */
                uint32_t **l_1394 = &l_1105;
                int32_t l_1402[1];
                uint8_t *l_1418 = &p_2876->g_193;
                int16_t *l_1419 = (void*)0;
                int16_t *l_1420 = &p_2876->g_188[0][0][4];
                uint8_t *l_1441 = &l_1197;
                int i;
                for (i = 0; i < 1; i++)
                    l_1402[i] = 0x26C64FD1L;
                if (((safe_mul_func_uint16_t_u_u((&p_45 != ((*l_1394) = l_1105)), (safe_div_func_uint64_t_u_u(p_44.f0, l_1397[6][0])))) | (safe_div_func_int16_t_s_s(((*l_1420) ^= ((*l_1331) = ((safe_sub_func_int64_t_s_s((l_1402[0] >= 0x6F82BFB4L), (+((-9L) & ((p_2876->g_1403 , (safe_rshift_func_uint8_t_u_s(((*l_1418) |= ((safe_add_func_int64_t_s_s(((safe_mul_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((((safe_rshift_func_int16_t_s_u((safe_add_func_int16_t_s_s((safe_div_func_uint8_t_u_u(p_2876->g_48.f0, p_2876->g_832)), p_44.f0)), 8)) || p_45) != p_46) , p_2876->g_33[3][5][2]), p_2876->g_169)), p_2876->g_1112.f0)) & p_2876->g_873), l_1402[0])) , p_45)), l_1402[0]))) < p_45))))) , p_46))), p_44.f0))))
                { /* block id: 682 */
                    int64_t l_1421 = (-6L);
                    int32_t *l_1422 = &p_2876->g_818;
                    int32_t *l_1423 = &l_1235;
                    int32_t *l_1424 = &l_1288;
                    int32_t *l_1425 = &l_1402[0];
                    int32_t *l_1426 = (void*)0;
                    int32_t *l_1427 = &l_1141;
                    int32_t *l_1428 = (void*)0;
                    int32_t *l_1429 = (void*)0;
                    int32_t *l_1430 = &l_1291;
                    int32_t *l_1431 = &p_2876->g_128[0][1];
                    int32_t *l_1432 = &p_2876->g_169;
                    int32_t *l_1433 = &l_1402[0];
                    int32_t *l_1434 = &l_1288;
                    int32_t *l_1435 = &l_1140;
                    int32_t *l_1436[5][5][1] = {{{&l_1235},{&l_1235},{&l_1235},{&l_1235},{&l_1235}},{{&l_1235},{&l_1235},{&l_1235},{&l_1235},{&l_1235}},{{&l_1235},{&l_1235},{&l_1235},{&l_1235},{&l_1235}},{{&l_1235},{&l_1235},{&l_1235},{&l_1235},{&l_1235}},{{&l_1235},{&l_1235},{&l_1235},{&l_1235},{&l_1235}}};
                    uint8_t **l_1440[8][3][8] = {{{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418}},{{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418}},{{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418}},{{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418}},{{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418}},{{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418}},{{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418}},{{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,(void*)0,&l_1418,(void*)0,&l_1418,&l_1418,&l_1418,&l_1418}}};
                    int i, j, k;
                    l_1437[0][1][0]++;
                    (*l_1087) = ((((*l_1420) = (&p_2876->g_627[2][1][0] != (l_1441 = l_1418))) & ((0x4DB9D485766106D3L | (((~(((*l_1418) = (~p_2876->g_33[1][2][1])) , 0x778EL)) || (p_45 >= (p_45 < (&p_2876->g_1033[8] == &p_2876->g_1033[5])))) & 0xED39L)) , p_45)) || p_2876->g_1442);
                }
                else
                { /* block id: 688 */
                    int32_t *l_1443 = &l_1402[0];
                    int32_t *l_1444 = (void*)0;
                    int32_t *l_1445 = &l_1143;
                    int32_t *l_1446 = (void*)0;
                    int32_t *l_1447 = &l_1402[0];
                    int32_t *l_1448[2][1][9] = {{{(void*)0,&p_2876->g_818,(void*)0,(void*)0,&p_2876->g_818,(void*)0,(void*)0,&p_2876->g_818,(void*)0}},{{(void*)0,&p_2876->g_818,(void*)0,(void*)0,&p_2876->g_818,(void*)0,(void*)0,&p_2876->g_818,(void*)0}}};
                    int i, j, k;
                    ++l_1453;
                    (*l_1445) &= 0x4AE4F496L;
                    if (p_44.f0)
                        break;
                }
            }
        }
        else
        { /* block id: 694 */
            int8_t l_1465 = (-1L);
            int32_t l_1474 = 0L;
            union U2 l_1493 = {0x67L};
            int16_t l_1498 = 0x36D4L;
            int32_t l_1506 = 0x42BDB40CL;
            int32_t l_1516 = 0x3E1C6A95L;
            int32_t l_1518 = 4L;
            int32_t l_1519[3];
            int32_t *l_1527 = &l_1516;
            uint32_t l_1529 = 4294967287UL;
            int32_t l_1533 = 0x56F44453L;
            int i;
            for (i = 0; i < 3; i++)
                l_1519[i] = (-8L);
            if (l_1235)
            { /* block id: 695 */
                int64_t *l_1495 = &p_2876->g_30;
                int32_t l_1499 = (-7L);
                int32_t l_1504 = 0x2EC5AB63L;
                int32_t l_1509[3];
                int8_t l_1513 = (-2L);
                int32_t l_1528 = 0L;
                int i;
                for (i = 0; i < 3; i++)
                    l_1509[i] = 0x185D2A8AL;
                if ((safe_mod_func_int64_t_s_s(1L, p_46)))
                { /* block id: 696 */
                    if (l_1366)
                        goto lbl_1255;
                }
                else
                { /* block id: 698 */
                    uint8_t l_1470 = 0x13L;
                    int32_t *l_1475 = &p_2876->g_818;
                    int32_t *l_1476[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1476[i] = (void*)0;
                    for (p_2876->g_917 = 29; (p_2876->g_917 >= 38); ++p_2876->g_917)
                    { /* block id: 701 */
                        int32_t *l_1460 = (void*)0;
                        int32_t *l_1461 = &l_1452[4][4];
                        int32_t *l_1462 = &l_1141;
                        int32_t *l_1463 = &l_1288;
                        int32_t *l_1464 = &p_2876->g_818;
                        int32_t *l_1466 = (void*)0;
                        int32_t *l_1467 = &l_1141;
                        int32_t *l_1468 = &l_1141;
                        int32_t *l_1469[5] = {&l_1143,&l_1143,&l_1143,&l_1143,&l_1143};
                        int i;
                        l_1470--;
                        if (p_2876->g_917)
                            goto lbl_1473;
                        (***p_2876->g_1250) = l_1460;
                    }
                    p_2876->g_1477++;
                }
                for (p_2876->g_818 = 0; (p_2876->g_818 <= 8); p_2876->g_818 += 1)
                { /* block id: 710 */
                    int32_t l_1488 = 0x7894FF75L;
                    int32_t *l_1494 = &p_2876->g_958;
                    uint8_t *l_1496 = &l_1197;
                    uint8_t *l_1497 = &p_2876->g_627[2][1][0];
                    int32_t l_1505 = (-1L);
                    int32_t l_1507 = 0x4BB59452L;
                    int32_t l_1508[5][10] = {{1L,(-7L),0x41AF3E72L,(-7L),1L,1L,(-7L),0x41AF3E72L,(-7L),1L},{1L,(-7L),0x41AF3E72L,(-7L),1L,1L,(-7L),0x41AF3E72L,(-7L),1L},{1L,(-7L),0x41AF3E72L,(-7L),1L,1L,(-7L),0x41AF3E72L,(-7L),1L},{1L,(-7L),0x41AF3E72L,(-7L),1L,1L,(-7L),0x41AF3E72L,(-7L),1L},{1L,(-7L),0x41AF3E72L,(-7L),1L,1L,(-7L),0x41AF3E72L,(-7L),1L}};
                    int8_t *l_1538 = &p_2876->g_533;
                    int i, j;
                    if (p_45)
                        break;
                    if (((p_45 != ((*l_1497) = ((*l_1496) = (safe_add_func_int8_t_s_s(p_44.f0, (safe_lshift_func_int8_t_s_s((safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_s(((!p_46) && l_1488), (l_1489 != p_47))), (((func_51(((l_1490[0][2] != (void*)0) == ((*l_1331) = (safe_add_func_int16_t_s_s((((*l_1494) = ((l_1493 , p_2876->g_169) >= p_2876->g_533)) , p_45), 1UL)))), p_2876->g_1403.f0, l_1495, p_44.f0, p_2876) , l_1488) ^ l_1474) , p_44.f0))), p_2876->g_109))))))) > l_1498))
                    { /* block id: 716 */
                        int32_t *l_1500 = &l_1474;
                        int32_t *l_1501 = &p_2876->g_128[0][1];
                        int32_t *l_1502 = &l_1139;
                        int32_t *l_1503[6][4] = {{(void*)0,&p_2876->g_169,&l_1143,&l_1452[3][3]},{(void*)0,&p_2876->g_169,&l_1143,&l_1452[3][3]},{(void*)0,&p_2876->g_169,&l_1143,&l_1452[3][3]},{(void*)0,&p_2876->g_169,&l_1143,&l_1452[3][3]},{(void*)0,&p_2876->g_169,&l_1143,&l_1452[3][3]},{(void*)0,&p_2876->g_169,&l_1143,&l_1452[3][3]}};
                        int i, j;
                        p_2876->g_1510++;
                    }
                    else
                    { /* block id: 718 */
                        int32_t *l_1514[5];
                        int32_t l_1515 = 0x05814A69L;
                        int64_t l_1517 = (-1L);
                        int i;
                        for (i = 0; i < 5; i++)
                            l_1514[i] = (void*)0;
                        l_1524[1][5]++;
                        l_1527 = &l_1505;
                        --l_1529;
                        (*l_1527) |= ((((safe_unary_minus_func_uint64_t_u(l_1533)) || (((65535UL > (((void*)0 == p_2876->g_1534) <= (~((*l_1083) = (safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2876->global_1_offset, get_global_id(1), 10), 6)))))) , l_1538) == (void*)0)) & 65529UL) | p_46);
                    }
                    for (l_1291 = 0; (l_1291 <= 5); l_1291 += 1)
                    { /* block id: 727 */
                        int i, j;
                        (*l_1489) = l_1452[l_1291][(l_1291 + 2)];
                        if (p_44.f0)
                            goto lbl_1473;
                    }
                }
            }
            else
            { /* block id: 732 */
                (***l_1249) = p_2876->g_1539;
                for (l_1295 = 24; (l_1295 > (-16)); l_1295--)
                { /* block id: 736 */
                    (*p_2876->g_1248) = p_47;
                    return p_2876->g_861.f0;
                }
                for (l_1288 = 0; (l_1288 >= 0); l_1288 -= 1)
                { /* block id: 742 */
                    return p_2876->g_98.f0;
                }
                if (l_1493.f0)
                    goto lbl_1473;
            }
        }
    }
    else
    { /* block id: 748 */
        int32_t *l_1542 = &l_1143;
        int32_t *l_1543 = &l_1143;
        int32_t l_1544 = (-8L);
        int32_t *l_1545 = &p_2876->g_169;
        int32_t *l_1546 = (void*)0;
        int32_t *l_1547 = &p_2876->g_128[0][1];
        int32_t *l_1548 = &p_2876->g_128[0][0];
        int32_t *l_1549 = (void*)0;
        int32_t *l_1550 = &p_2876->g_818;
        int32_t *l_1551 = &l_1544;
        int32_t *l_1552 = &p_2876->g_128[0][0];
        int32_t *l_1553 = &p_2876->g_818;
        int32_t *l_1554 = &l_1288;
        int32_t *l_1555[1];
        uint32_t l_1556 = 4294967295UL;
        int64_t *l_1575 = (void*)0;
        int32_t l_1611 = 0x23B4039AL;
        int i;
        for (i = 0; i < 1; i++)
            l_1555[i] = (void*)0;
        --l_1556;
        (*p_2876->g_1248) = p_47;
        for (l_1366 = 0; (l_1366 == 51); l_1366++)
        { /* block id: 753 */
            int16_t *l_1563 = &p_2876->g_188[0][0][3];
            int32_t l_1574 = 1L;
            uint16_t *l_1576 = &p_2876->g_917;
            int32_t l_1594 = 0x6DAE540AL;
            int32_t l_1595 = 0L;
            int32_t l_1596 = 0L;
            int32_t l_1597[7];
            int i;
            for (i = 0; i < 7; i++)
                l_1597[i] = 0x57815916L;
            (*l_1548) = ((((safe_sub_func_uint16_t_u_u(((*l_1576) ^= (((((*l_1563) = p_2876->g_1033[5]) <= 3L) , (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), 4))) , ((***l_1075) , (safe_unary_minus_func_uint16_t_u((&p_2876->g_492 != (((safe_rshift_func_uint16_t_u_u(((*l_1078) = p_45), 7)) & ((safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((p_2876->g_1573 || ((func_51(l_1574, (!(247UL ^ (5L && 65534UL))), l_1575, l_1574, p_2876) , l_1574) >= p_46)), 6)), 0x54L)) <= p_45)) , &p_2876->g_492))))))), 65535UL)) >= p_2876->g_873) | p_45) , 0x048C82ABL);
            for (p_2876->g_84 = 1; (p_2876->g_84 <= 5); p_2876->g_84 += 1)
            { /* block id: 760 */
                int32_t l_1577 = 0x06B8D561L;
                uint8_t *l_1586 = &l_1197;
                int32_t l_1591 = 1L;
                int32_t l_1592 = 0x200869D4L;
                int32_t l_1593 = 0L;
                int32_t l_1598 = (-1L);
                int32_t l_1599 = 1L;
                int32_t l_1600 = 0x763F4384L;
                int32_t l_1601 = 9L;
                int32_t l_1602 = 0x72697EC5L;
                int32_t l_1603 = 0x2659B855L;
                int32_t l_1604 = 0x69ED5FA3L;
                int32_t l_1605 = 0x00A96B98L;
                int32_t l_1606 = 0x33C15C49L;
                int32_t l_1607[8] = {(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)};
                uint64_t l_1608 = 18446744073709551615UL;
                int i, j;
                l_1577 |= l_1452[p_2876->g_84][p_2876->g_84];
                l_1577 ^= ((safe_rshift_func_uint16_t_u_u(((*l_1576) ^= (((safe_mod_func_uint8_t_u_u(p_44.f0, ((safe_mod_func_uint32_t_u_u((--(**l_1099)), p_44.f0)) || p_2876->g_627[0][6][0]))) < ((*l_1586) &= 255UL)) != 8UL)), (p_2876->g_33[1][2][1] != ((((safe_mul_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((void*)0 == l_1258), 0x1A94L)), 0L)) < 0x35E1EC78B1F5E520L) & 1UL) & 0xCE31D15A697D7703L)))) | 0x6EF5L);
                ++l_1608;
                for (p_2876->g_1112.f1 = 8; (p_2876->g_1112.f1 >= 3); p_2876->g_1112.f1 -= 1)
                { /* block id: 769 */
                    if (l_1602)
                        break;
                    (*l_1548) ^= ((*l_1545) = (l_1611 >= ((p_44.f0 , p_45) ^ 5UL)));
                }
            }
            if (l_1596)
                break;
        }
    }
    for (p_2876->g_1510 = 0; (p_2876->g_1510 <= 4); p_2876->g_1510 += 1)
    { /* block id: 780 */
        union U3 **l_1612 = (void*)0;
        union U3 **l_1613 = (void*)0;
        int32_t *l_1614 = &l_1452[4][4];
        int32_t l_1615[3];
        int32_t *l_1616 = (void*)0;
        int32_t *l_1617 = &l_1291;
        int32_t *l_1618[10][10][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        int32_t l_1619 = 1L;
        uint64_t l_1620 = 0x8AE5DDB867E0E2D6L;
        uint64_t *l_1647 = (void*)0;
        int64_t ***l_1667 = &p_2876->g_913[0][0][2];
        int64_t *l_1707[2];
        int64_t *l_1708[8][5] = {{&p_2876->g_30,&p_2876->g_30,&l_1309,&p_2876->g_30,(void*)0},{&p_2876->g_30,&p_2876->g_30,&l_1309,&p_2876->g_30,(void*)0},{&p_2876->g_30,&p_2876->g_30,&l_1309,&p_2876->g_30,(void*)0},{&p_2876->g_30,&p_2876->g_30,&l_1309,&p_2876->g_30,(void*)0},{&p_2876->g_30,&p_2876->g_30,&l_1309,&p_2876->g_30,(void*)0},{&p_2876->g_30,&p_2876->g_30,&l_1309,&p_2876->g_30,(void*)0},{&p_2876->g_30,&p_2876->g_30,&l_1309,&p_2876->g_30,(void*)0},{&p_2876->g_30,&p_2876->g_30,&l_1309,&p_2876->g_30,(void*)0}};
        struct S0 *l_1789 = &p_2876->g_1790;
        uint32_t l_1820[6][10][4] = {{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}}};
        uint32_t **l_1848 = &p_2876->g_1098;
        uint8_t l_1850 = 254UL;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1615[i] = 0x22D404DAL;
        for (i = 0; i < 2; i++)
            l_1707[i] = (void*)0;
        p_2876->g_625[5] = l_1239[7];
        --l_1620;
    }
    return p_2876->g_33[1][2][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_2876->g_22 p_2876->g_84 p_2876->g_48 p_2876->g_109 p_2876->g_98.f0 p_2876->g_33 p_2876->g_30 p_2876->g_128 p_2876->g_144 p_2876->g_125 p_2876->g_162 p_2876->g_143 p_2876->g_169 p_2876->g_48.f0 p_2876->g_359 p_2876->g_193 p_2876->g_191 p_2876->g_313 p_2876->g_399 p_2876->g_95 p_2876->g_492 p_2876->g_316.f0 p_2876->g_283 p_2876->g_533 p_2876->g_627 p_2876->g_188 p_2876->g_694 p_2876->g_625 p_2876->g_536 p_2876->g_873 p_2876->g_832 p_2876->g_861.f0 p_2876->g_818 p_2876->g_257 p_2876->g_164.f0 p_2876->g_958 p_2876->g_256 p_2876->g_1020
 * writes: p_2876->g_84 p_2876->g_95 p_2876->g_109 p_2876->g_98.f0 p_2876->g_125 p_2876->g_128 p_2876->g_143 p_2876->g_22 p_2876->g_30 p_2876->g_169 p_2876->g_144 p_2876->g_188 p_2876->g_193 p_2876->g_492 p_2876->g_536 p_2876->g_283 p_2876->g_625 p_2876->g_533 p_2876->g_627 p_2876->g_191 p_2876->g_912 p_2876->g_917 p_2876->g_316.f0 p_2876->g_958 p_2876->g_1033 p_2876->g_316.f1
 */
int64_t  func_49(union U2  p_50, struct S4 * p_2876)
{ /* block id: 17 */
    uint32_t l_87 = 4294967295UL;
    uint64_t *l_145[1][4] = {{&p_2876->g_144,&p_2876->g_144,&p_2876->g_144,&p_2876->g_144}};
    uint32_t l_190 = 8UL;
    int32_t *l_202 = &p_2876->g_84;
    uint8_t l_212 = 254UL;
    union U2 **l_279 = &p_2876->g_257;
    int32_t l_287 = 0x5F986D55L;
    union U1 *l_315 = &p_2876->g_316[0];
    union U1 **l_314 = &l_315;
    int64_t ***l_372 = (void*)0;
    uint8_t l_391 = 0xD8L;
    int32_t l_420 = 0x5608A87DL;
    int32_t l_421 = 0x4B54E30DL;
    int32_t l_423 = 0x44B01157L;
    int32_t l_424 = 6L;
    int32_t l_426[6][1][7] = {{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}}};
    uint64_t l_429 = 0xE303131CCC5579FFL;
    int64_t l_496 = 0x237E8DDB5E0FFBB8L;
    int32_t l_498[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
    uint32_t l_686[5] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    union U3 **l_725 = &p_2876->g_625[3];
    union U2 ***l_731 = &l_279;
    union U2 ****l_730 = &l_731;
    uint8_t l_768 = 251UL;
    uint64_t *l_899 = &p_2876->g_492;
    uint64_t **l_898 = &l_899;
    int64_t ****l_911[7];
    uint32_t l_915 = 1UL;
    uint16_t *l_916 = &p_2876->g_917;
    int32_t *l_918 = &l_423;
    uint64_t **l_1034 = &l_899;
    int32_t l_1069 = 0x3FC12438L;
    int64_t l_1072 = 1L;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_911[i] = (void*)0;
    if ((l_87 && l_87))
    { /* block id: 18 */
        return p_50.f0;
    }
    else
    { /* block id: 20 */
        uint32_t l_96 = 0x95356471L;
        int32_t l_123 = 0x4BF7460FL;
        union U2 *l_138 = &p_2876->g_48;
        int64_t l_166 = 6L;
        uint32_t l_185 = 0x07D318FBL;
        int32_t *l_235 = (void*)0;
        uint16_t l_236 = 65526UL;
        int32_t l_254[1];
        uint16_t *l_358 = &l_236;
        int64_t ***l_385 = (void*)0;
        int8_t *l_390 = (void*)0;
        int32_t l_422[10][2] = {{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L}};
        int16_t *l_485 = &p_2876->g_188[1][0][0];
        uint64_t **l_486 = &l_145[0][1];
        uint32_t *l_490 = (void*)0;
        uint32_t **l_489 = &l_490;
        uint64_t *l_491 = &p_2876->g_492;
        uint32_t l_495 = 4294967288UL;
        uint32_t l_499 = 0x62D61DDBL;
        uint64_t l_504 = 18446744073709551607UL;
        int32_t **l_517 = &p_2876->g_95[6];
        union U3 *l_539 = &p_2876->g_540;
        union U3 *l_623 = &p_2876->g_624;
        uint32_t l_647 = 0x30787627L;
        int32_t l_672 = 0L;
        union U2 **l_683 = &p_2876->g_257;
        int8_t l_685 = 0x29L;
        int i, j;
        for (i = 0; i < 1; i++)
            l_254[i] = 0x4F4879BBL;
lbl_628:
        if ((((~0UL) != l_87) || (safe_rshift_func_int16_t_s_u((((p_2876->g_22[4][2][0] | (p_2876->g_84 >= (p_2876->g_48 , (p_2876->g_84 & (safe_mod_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(0xD6D9707EL, 0x0EDB61D1L)), 0x5E64L)))))) <= p_2876->g_84) <= 0UL), 5))))
        { /* block id: 21 */
            int32_t *l_94 = &p_2876->g_84;
            uint16_t l_165 = 1UL;
            int8_t *l_174 = &p_2876->g_164.f1;
            int64_t *l_186 = &p_2876->g_30;
            int64_t *l_187 = &l_166;
            int8_t l_189 = 0x0AL;
            int32_t l_274[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            union U2 **l_278 = &p_2876->g_257;
            int i;
            for (p_2876->g_84 = 0; (p_2876->g_84 <= 4); p_2876->g_84 += 1)
            { /* block id: 24 */
                uint16_t l_132 = 2UL;
                int32_t *l_137 = &l_123;
                for (p_50.f0 = 0; (p_50.f0 <= 4); p_50.f0 += 1)
                { /* block id: 27 */
                    union U1 *l_97 = &p_2876->g_98;
                    uint64_t l_118 = 0xAC8F595BA468D3B5L;
                    p_2876->g_95[6] = l_94;
                    if (l_96)
                        continue;
                    for (l_96 = 0; (l_96 <= 4); l_96 += 1)
                    { /* block id: 32 */
                        union U1 **l_99 = &l_97;
                        uint64_t *l_108 = &p_2876->g_109;
                        int8_t *l_119 = &p_2876->g_98.f0;
                        int8_t *l_124 = &p_2876->g_125;
                        int32_t *l_126 = (void*)0;
                        int32_t *l_127 = &p_2876->g_128[0][0];
                        int32_t *l_129 = &p_2876->g_128[0][0];
                        int32_t *l_130 = &p_2876->g_128[0][0];
                        int32_t *l_131[10][7][3] = {{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}},{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}},{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}},{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}},{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}},{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}},{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}},{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}},{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}},{{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]},{&p_2876->g_128[0][1],(void*)0,&p_2876->g_128[0][0]}}};
                        int i, j, k;
                        (*l_99) = l_97;
                        (*l_127) = (((*l_124) = (((l_123 = ((p_2876->g_22[(l_96 + 4)][l_96][p_50.f0] != (8UL & (safe_rshift_func_int16_t_s_u(p_2876->g_22[(p_2876->g_84 + 3)][p_50.f0][p_50.f0], 13)))) == ((safe_sub_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s(((safe_mul_func_int8_t_s_s(((p_2876->g_22[p_2876->g_84][p_50.f0][p_2876->g_84] == ((*l_108) &= l_87)) | ((safe_sub_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((0x52L <= ((*l_119) &= (safe_rshift_func_int8_t_s_s(l_118, 2)))), (safe_rshift_func_int8_t_s_u((safe_unary_minus_func_uint64_t_u(((l_87 <= 1UL) && l_96))), 6)))), p_50.f0)) >= p_50.f0), p_50.f0)) , p_2876->g_33[1][8][1])), p_2876->g_33[0][5][1])) <= p_2876->g_22[4][2][0]), p_2876->g_22[p_2876->g_84][p_50.f0][p_2876->g_84])) < l_96), p_2876->g_84)) <= l_118))) != l_87) && p_2876->g_98.f0)) != p_2876->g_30);
                        l_132++;
                    }
                }
                if (l_132)
                    break;
                if (l_132)
                    continue;
                (*l_137) &= (safe_rshift_func_uint8_t_u_u(l_132, 3));
                for (p_2876->g_109 = 0; (p_2876->g_109 <= 4); p_2876->g_109 += 1)
                { /* block id: 47 */
                    union U2 **l_139[7];
                    int32_t l_140 = (-1L);
                    uint64_t *l_142 = &p_2876->g_109;
                    uint64_t **l_141[8][4] = {{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142}};
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_139[i] = &l_138;
                    l_138 = l_138;
                    (*l_137) = ((l_140 , (p_2876->g_143 = &p_2876->g_109)) != l_145[0][1]);
                    for (l_96 = 0; (l_96 <= 4); l_96 += 1)
                    { /* block id: 53 */
                        int64_t *l_167 = &p_2876->g_30;
                        int32_t *l_168 = &p_2876->g_169;
                        int i, j, k;
                        (*l_137) = ((*l_168) |= (safe_mod_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((((((((p_50.f0 , ((p_2876->g_128[0][0] > (safe_add_func_int64_t_s_s((((((*l_167) = (((safe_mul_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((0x1E2EL || (p_2876->g_22[l_96][p_2876->g_109][p_2876->g_84] = p_2876->g_144)), (safe_div_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((p_2876->g_125 , p_2876->g_128[0][0]), p_2876->g_33[3][3][0])), (safe_mod_func_int8_t_s_s(((p_2876->g_162 != (void*)0) & (*p_2876->g_143)), l_165)))))), l_166)) == p_2876->g_33[1][2][1]) , (-1L))) , GROUP_DIVERGE(2, 1)) > p_50.f0) && l_140), (*p_2876->g_143)))) > 0x1F78L)) , GROUP_DIVERGE(2, 1)) || 1UL) > 0x22L) <= p_2876->g_33[1][4][2]) >= p_2876->g_128[0][0]) <= l_140), 2)), l_123)));
                        (*l_137) = p_50.f0;
                    }
                }
            }
            for (l_165 = (-27); (l_165 != 5); l_165++)
            { /* block id: 64 */
                (*l_94) ^= l_87;
            }
        }
        else
        { /* block id: 149 */
            int64_t *l_350 = &p_2876->g_30;
            int64_t **l_349[2][9] = {{&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350},{&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350}};
            uint32_t l_355 = 0xE5636584L;
            int64_t **l_371 = (void*)0;
            int64_t ***l_370[7][6][2] = {{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}}};
            int32_t *l_410 = &p_2876->g_169;
            int32_t l_416 = (-1L);
            int32_t l_418 = (-3L);
            int32_t l_419 = 0x4CBC7F95L;
            int32_t l_425 = 0L;
            int32_t l_427 = 0L;
            int32_t l_428 = 0x380FDBBEL;
            uint8_t l_480 = 255UL;
            int i, j, k;
            for (p_2876->g_169 = 0; (p_2876->g_169 <= 0); p_2876->g_169 += 1)
            { /* block id: 152 */
                int64_t **l_354 = &l_350;
                uint16_t *l_357 = (void*)0;
                int32_t l_373 = 0L;
                int32_t l_394 = 0x4EAD715FL;
                for (p_2876->g_84 = 0; (p_2876->g_84 <= 0); p_2876->g_84 += 1)
                { /* block id: 155 */
                    int8_t l_338 = 0x6DL;
                    union U2 **l_374 = &p_2876->g_257;
                    uint32_t *l_392 = (void*)0;
                    int32_t l_393 = 0x4039C909L;
                    int32_t *l_405[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_405[i] = (void*)0;
                    for (p_2876->g_144 = 0; (p_2876->g_144 <= 6); p_2876->g_144 += 1)
                    { /* block id: 158 */
                        int32_t *l_335 = &p_2876->g_128[0][1];
                        int64_t ***l_351 = &l_349[0][0];
                        int64_t **l_353 = (void*)0;
                        int64_t ***l_352 = &l_353;
                        uint16_t *l_356 = &p_2876->g_22[4][3][0];
                        int32_t *l_375[3][9] = {{&p_2876->g_84,(void*)0,&l_373,(void*)0,&p_2876->g_84,&p_2876->g_84,(void*)0,&l_373,(void*)0},{&p_2876->g_84,(void*)0,&l_373,(void*)0,&p_2876->g_84,&p_2876->g_84,(void*)0,&l_373,(void*)0},{&p_2876->g_84,(void*)0,&l_373,(void*)0,&p_2876->g_84,&p_2876->g_84,(void*)0,&l_373,(void*)0}};
                        int i, j;
                        (*l_335) &= (-10L);
                        l_338 = (safe_div_func_uint32_t_u_u(1UL, l_254[p_2876->g_169]));
                        l_373 = ((((*l_335) = ((((((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2876->global_1_offset, get_global_id(1), 10), l_254[p_2876->g_169])) == (safe_mod_func_uint16_t_u_u(((((l_358 = (((*l_356) &= ((safe_add_func_int8_t_s_s(p_2876->g_48.f0, (((*l_352) = ((*l_351) = l_349[0][6])) == l_354))) <= l_355)) , (l_357 = l_356))) != p_2876->g_359[2]) & ((safe_div_func_int32_t_s_s((safe_div_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((safe_add_func_uint64_t_u_u(p_50.f0, (l_370[5][4][0] == l_372))), p_50.f0)), p_50.f0)), GROUP_DIVERGE(1, 1))) == (-1L))) <= 0x22723015230D3935L), l_338))), l_338)), p_2876->g_144)) , l_373) != p_50.f0) , l_374) != (void*)0) >= GROUP_DIVERGE(0, 1))) , p_50.f0) | p_50.f0);
                        l_373 &= p_50.f0;
                    }
                    l_394 |= ((safe_unary_minus_func_uint32_t_u((l_393 ^= ((p_2876->g_33[1][2][1] , 0L) && ((((((*p_2876->g_143) >= ((-2L) > ((((safe_div_func_int16_t_s_s(((safe_div_func_int16_t_s_s(((func_51(p_2876->g_144, (safe_mod_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u((((func_51(p_50.f0, ((p_50.f0 || ((p_2876->g_30 = (l_385 == ((((p_2876->g_188[0][0][3] = (l_373 = (safe_mul_func_int8_t_s_s((safe_div_func_uint8_t_u_u(0x34L, p_50.f0)), p_2876->g_193)))) < FAKE_DIVERGE(p_2876->global_2_offset, get_global_id(2), 10)) , l_355) , &l_354))) > (*l_202))) || FAKE_DIVERGE(p_2876->global_2_offset, get_global_id(2), 10)), p_2876->g_143, p_50.f0, p_2876) , l_390) != &p_2876->g_125) < p_50.f0), p_2876->g_191)) != 0x3DC60F20L), 0xB4L)), p_2876->g_143, l_355, p_2876) , &p_2876->g_125) == &p_2876->g_125), l_338)) , (*l_202)), p_2876->g_313)) & 0UL) | 2L) || 0xEE1288F30DE17C3CL))) && l_391) >= p_2876->g_144) & 2L) | 0UL))))) == 1UL);
                    l_287 &= ((safe_lshift_func_int8_t_s_s((p_50.f0 ^ (safe_mod_func_int32_t_s_s((p_2876->g_399 == ((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((*l_358) = (l_373 > l_355)), p_50.f0)), ((p_2876->g_169 | 0x026EL) == p_50.f0))) , &p_2876->g_400)), l_373))), l_394)) , p_50.f0);
                    if (l_420)
                        goto lbl_919;
                }
                return p_50.f0;
            }
            (*l_410) &= (safe_div_func_int64_t_s_s((safe_add_func_int8_t_s_s(((*l_202) |= p_50.f0), p_2876->g_33[1][2][1])), (*p_2876->g_143)));
            for (l_87 = 0; (l_87 > 20); ++l_87)
            { /* block id: 184 */
                int32_t *l_413 = (void*)0;
                int32_t *l_414 = &p_2876->g_128[0][1];
                int32_t *l_415[6][1][4] = {{{(void*)0,&p_2876->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2876->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2876->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2876->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2876->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2876->g_128[0][0],(void*)0,(void*)0}}};
                int8_t l_417 = (-2L);
                uint32_t *l_434 = &l_96;
                int16_t *l_441 = &p_2876->g_188[1][0][3];
                uint8_t *l_454 = &l_212;
                uint32_t l_471 = 0x0225A25EL;
                int i, j, k;
                --l_429;
                (*l_410) = (safe_add_func_uint16_t_u_u((((p_2876->g_193 = (((~p_50.f0) & ((((*l_434) = p_50.f0) , &p_2876->g_257) == (void*)0)) >= 0x1F22A46FL)) , p_50.f0) | ((&l_87 == p_2876->g_95[6]) | (1L <= 0xEFA7F4F8L))), p_50.f0));
                (*l_414) = ((((safe_mul_func_int16_t_s_s(((((((((safe_lshift_func_int16_t_s_s(((*l_441) = (FAKE_DIVERGE(p_2876->local_1_offset, get_local_id(1), 10) > (p_50.f0 > p_50.f0))), 7)) , ((((*p_2876->g_143) < (safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(7UL, ((safe_mul_func_uint8_t_u_u(p_50.f0, ((safe_div_func_int16_t_s_s(((void*)0 == &l_138), ((*l_441) = (-1L)))) && (--(*l_454))))) & (((void*)0 == &p_2876->g_30) , 0L)))), p_2876->g_313)) & p_2876->g_109) || p_50.f0), p_50.f0)), 9))) && 0x6AL) & 0x2CE783B011D3ADA1L)) , p_2876->g_109) , p_50.f0) <= p_50.f0) || 0x76L) , (-5L)) , p_50.f0), (*l_202))) , p_50.f0) <= (*l_414)) >= p_50.f0);
                l_418 ^= (((*l_202) = (safe_rshift_func_uint8_t_u_s(((*l_454) = GROUP_DIVERGE(2, 1)), 2))) , ((safe_rshift_func_int8_t_s_u(((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_u(((*l_202) = (((*l_350) &= (safe_div_func_int16_t_s_s((+(safe_mul_func_int8_t_s_s(p_50.f0, (safe_mod_func_uint8_t_u_u((l_471 | ((*l_414) & ((-1L) <= (*l_202)))), (safe_sub_func_int64_t_s_s(p_50.f0, ((*p_2876->g_143) = 0xCFEB89E98831C462L)))))))), ((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s((-1L), 5)), (safe_rshift_func_int16_t_s_s((p_50 , p_50.f0), p_50.f0)))) && l_480)))) ^ 1L)), p_50.f0)), 3)) , (*l_410)), p_50.f0)) , 0x3A6F66E0L));
            }
        }
        if (((safe_add_func_uint64_t_u_u(((&p_2876->g_188[0][0][2] == (l_485 = l_358)) ^ (((0x5E66L != ((((*l_486) = &l_429) == &p_2876->g_144) <= (((*l_202) = (safe_lshift_func_uint16_t_u_s((((*l_489) = p_2876->g_95[1]) == ((++(*l_491)) , &l_190)), ((*l_202) && (9L != 4294967288UL))))) , 1UL))) == l_495) <= p_2876->g_316[0].f0)), 0xAB802EFAD0987D97L)) & l_496))
        { /* block id: 206 */
            int32_t *l_497[4];
            int32_t **l_516 = &l_202;
            int32_t ***l_515[7][5][4] = {{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}}};
            uint32_t l_518 = 0xD0A2C06CL;
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_497[i] = &l_423;
            l_499++;
            if ((safe_lshift_func_int8_t_s_u(l_504, (safe_add_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(((*l_202) ^= ((p_50.f0 , &l_497[1]) == &l_497[1])), p_50.f0)), (p_50.f0 | (safe_rshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s(((*l_485) = p_2876->g_283), 14)) != ((l_517 = &l_202) != (p_50.f0 , &l_202))), 6)), 3))))))))
            { /* block id: 211 */
                (*l_202) |= l_518;
lbl_557:
                (**l_517) &= 0L;
                (*l_517) = (void*)0;
                return p_50.f0;
            }
            else
            { /* block id: 216 */
                (**l_516) = (*l_202);
            }
            (*l_202) = p_50.f0;
            if (((**l_516) = (safe_rshift_func_uint16_t_u_s(p_2876->g_125, 1))))
            { /* block id: 221 */
                int32_t *l_521 = &l_420;
                union U3 **l_541 = (void*)0;
                union U3 **l_542 = &l_539;
                for (p_2876->g_492 = 0; (p_2876->g_492 <= 8); p_2876->g_492 += 1)
                { /* block id: 224 */
                    int32_t l_522 = 0x2FB8C85CL;
                    int32_t l_523 = 0x35DA3D85L;
                    l_202 = l_521;
                    if (p_50.f0)
                        continue;
                    if (p_50.f0)
                        continue;
                    if ((*l_521))
                        continue;
                    for (l_236 = 0; (l_236 <= 0); l_236 += 1)
                    { /* block id: 231 */
                        uint32_t *l_532[1][4][7] = {{{&l_190,&l_185,&l_190,&l_190,&l_185,&l_190,&l_190},{&l_190,&l_185,&l_190,&l_190,&l_185,&l_190,&l_190},{&l_190,&l_185,&l_190,&l_190,&l_185,&l_190,&l_190},{&l_190,&l_185,&l_190,&l_190,&l_185,&l_190,&l_190}}};
                        int i, j, k;
                        (1 + 1);
                    }
                }
                (*l_542) = l_539;
                (*l_516) = &p_2876->g_84;
                return (**l_517);
            }
            else
            { /* block id: 244 */
                uint8_t l_554[5] = {0xCCL,0xCCL,0xCCL,0xCCL,0xCCL};
                int i;
                for (p_2876->g_98.f0 = 3; (p_2876->g_98.f0 >= 0); p_2876->g_98.f0 -= 1)
                { /* block id: 247 */
                    uint16_t l_547 = 0x0D8EL;
                    union U3 **l_548 = (void*)0;
                    union U3 *l_550 = &p_2876->g_551[5];
                    union U3 **l_549 = &l_550;
                    int32_t l_552[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_552[i] = 0x506EB005L;
                    if ((safe_mod_func_int8_t_s_s((p_50.f0 != p_50.f0), 0x7EL)))
                    { /* block id: 248 */
                        int i;
                        if (p_50.f0)
                            break;
                        if (p_50.f0)
                            break;
                        if (p_50.f0)
                            break;
                        (**l_517) = (safe_sub_func_uint16_t_u_u(l_547, (*l_202)));
                    }
                    else
                    { /* block id: 253 */
                        return p_2876->g_193;
                    }
                    (*l_549) = (l_539 = (void*)0);
                    if ((l_552[6] |= l_547))
                    { /* block id: 259 */
                        int32_t l_553 = 0x4036CAB5L;
                        int i;
                        ++l_554[4];
                        p_2876->g_95[1] = (*l_517);
                    }
                    else
                    { /* block id: 262 */
                        uint32_t l_558 = 0xA29A350AL;
                        if (p_2876->g_313)
                            goto lbl_557;
                        (*l_202) ^= l_558;
                    }
                }
            }
        }
        else
        { /* block id: 268 */
            int32_t l_583 = 0x6ECF7A15L;
            int32_t **l_617 = (void*)0;
            int16_t l_621 = (-1L);
            int64_t *l_622 = &p_2876->g_30;
            int32_t *l_632 = &l_424;
            int32_t *l_633 = &p_2876->g_128[0][0];
            int32_t *l_634 = &l_423;
            int32_t *l_635 = (void*)0;
            int32_t *l_636 = &p_2876->g_169;
            int32_t *l_637 = (void*)0;
            int32_t *l_638 = &p_2876->g_169;
            int32_t *l_639 = &l_426[2][0][3];
            int32_t *l_640 = &l_422[3][1];
            int32_t l_641 = 0x2EBDF094L;
            int32_t *l_642[3][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            uint32_t l_643 = 0xB8A3C272L;
            int64_t l_646 = 0x15BBD0758725E32BL;
            int8_t *l_662 = (void*)0;
            int8_t *l_663 = (void*)0;
            int8_t *l_664 = &p_2876->g_125;
            uint8_t *l_665 = &p_2876->g_627[3][5][1];
            union U2 **l_679 = &l_138;
            uint8_t l_698 = 0x29L;
            int i, j;
            for (p_2876->g_492 = 14; (p_2876->g_492 > 58); ++p_2876->g_492)
            { /* block id: 271 */
                uint32_t l_582 = 0UL;
                uint8_t *l_584 = &l_391;
                int32_t *l_585 = &l_424;
                uint64_t *l_602 = &p_2876->g_492;
                (*l_202) = (p_2876->g_48.f0 ^ (((((*l_584) = (safe_mul_func_uint16_t_u_u(p_2876->g_533, ((*l_358) = (p_50.f0 | (safe_lshift_func_uint8_t_u_u(((*l_314) != (void*)0), ((safe_lshift_func_uint8_t_u_u(p_2876->g_492, 3)) && (safe_div_func_uint16_t_u_u((((safe_div_func_int8_t_s_s((((((p_50.f0 != (safe_div_func_int8_t_s_s(((safe_unary_minus_func_uint8_t_u((safe_rshift_func_int16_t_s_u((safe_add_func_int64_t_s_s((safe_mul_func_int8_t_s_s(l_582, 0x43L)), 18446744073709551615UL)), (*l_202))))) >= p_50.f0), l_583))) & p_2876->g_22[0][1][3]) ^ (-1L)) > p_50.f0) & p_50.f0), p_50.f0)) < p_2876->g_144) , 0x94B8L), l_582)))))))))) ^ p_50.f0) , (void*)0) != &l_138));
                l_585 = l_585;
                for (p_50.f0 = 0; (p_50.f0 < (-6)); p_50.f0--)
                { /* block id: 278 */
                    int32_t **l_618 = &p_2876->g_95[2];
                    for (p_2876->g_536 = 27; (p_2876->g_536 > (-3)); p_2876->g_536 = safe_sub_func_int64_t_s_s(p_2876->g_536, 4))
                    { /* block id: 281 */
                        union U3 *l_605[8] = {&p_2876->g_607,&p_2876->g_608,&p_2876->g_607,&p_2876->g_607,&p_2876->g_608,&p_2876->g_607,&p_2876->g_607,&p_2876->g_608};
                        union U3 **l_609 = (void*)0;
                        union U3 **l_610 = &l_539;
                        int32_t ***l_619 = &l_517;
                        int32_t *l_620 = &p_2876->g_283;
                        int i;
                        (*l_202) = (safe_div_func_int64_t_s_s(((*l_622) |= (safe_mul_func_int8_t_s_s((((safe_div_func_int32_t_s_s((safe_div_func_uint16_t_u_u((1L || (safe_mod_func_int16_t_s_s((safe_sub_func_int8_t_s_s((((l_602 == l_491) , GROUP_DIVERGE(1, 1)) , (safe_mul_func_int8_t_s_s((!((((((*l_610) = l_605[0]) == (p_2876->g_625[3] = (func_51((~((((*l_620) = (safe_div_func_uint64_t_u_u((~((safe_div_func_uint16_t_u_u(p_2876->g_22[7][3][1], (p_2876->g_22[4][2][0] && ((*l_358) = ((safe_mod_func_uint16_t_u_u(((l_617 == ((*l_619) = l_618)) <= (func_51((((*l_585) || 1UL) <= 1L), (*p_2876->g_143), &p_2876->g_30, p_50.f0, p_2876) , (*p_2876->g_143))), p_50.f0)) < 1UL))))) | (*l_585))), p_50.f0))) , 1L) < p_50.f0)), l_621, l_622, p_50.f0, p_2876) , l_623))) , p_50.f0) & (*l_585)) > p_50.f0)), p_2876->g_627[2][1][0]))), (*l_585))), p_50.f0))), p_50.f0)), p_50.f0)) < p_50.f0) <= 2L), 8UL))), GROUP_DIVERGE(1, 1)));
                    }
                    (*l_202) |= 0x25DA7DB1L;
                    if (p_2876->g_283)
                        goto lbl_628;
                }
                for (p_2876->g_533 = 3; (p_2876->g_533 == 24); ++p_2876->g_533)
                { /* block id: 295 */
                    int32_t *l_631 = &l_424;
                    (*l_517) = l_631;
                }
            }
            l_643++;
            l_647--;
            if ((p_50.f0 & (p_50.f0 == ((safe_lshift_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_s(((safe_lshift_func_int8_t_s_u(p_2876->g_169, 4)) & (safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(((p_50.f0 , (p_2876->g_22[4][2][0] <= (*l_633))) & ((*l_664) = (-8L))), p_50.f0)), ((((*l_665) ^= 250UL) ^ GROUP_DIVERGE(1, 1)) != 0x506F4C6965A7039DL)))), (*l_202))) > 1L), p_2876->g_188[1][0][0])) < p_2876->g_30), 7)) , 8L))))
            { /* block id: 303 */
                union U2 **l_680 = &l_138;
                union U2 ***l_681 = (void*)0;
                union U2 ***l_682 = &l_680;
                int32_t l_684 = 7L;
                int32_t l_691 = 1L;
                union U2 l_719 = {7L};
                (*l_634) = ((*l_639) = ((*l_638) = (((*l_202) = (safe_lshift_func_uint8_t_u_s(((safe_sub_func_int64_t_s_s((0x55L | ((0xA86B30C439706E02L <= (safe_rshift_func_uint8_t_u_s((l_672 && ((((safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(p_50.f0, (((p_50.f0 || (l_679 != (l_683 = ((*l_682) = l_680)))) < l_684) < ((1UL != (*l_202)) , 0x67L)))), p_50.f0)) < l_685) != 1UL) , p_50.f0)), p_2876->g_22[2][4][1]))) , 1UL)), l_684)) >= 0x16E5F2DFL), 5))) , (*l_202))));
                --l_686[4];
                if (((*l_202) = (((p_2876->g_191 , (((*l_202) >= p_50.f0) || p_2876->g_316[0].f0)) && ((p_50.f0 != 0x480FE4BEA779115CL) , (((*l_202) <= ((*l_632) = (((*l_665) &= ((+p_50.f0) , p_50.f0)) >= l_691))) , 0x1F7A876C0083C60EL))) & p_50.f0)))
                { /* block id: 314 */
                    int32_t l_697 = 1L;
                    (*l_517) = (*l_517);
                    if ((safe_rshift_func_int8_t_s_u((((*l_485) ^= (p_2876->g_694[2] != (void*)0)) < p_50.f0), ((*l_665) = GROUP_DIVERGE(0, 1)))))
                    { /* block id: 318 */
                        l_698++;
                    }
                    else
                    { /* block id: 320 */
                        return p_50.f0;
                    }
                    for (l_166 = 0; (l_166 <= (-24)); l_166 = safe_sub_func_int16_t_s_s(l_166, 3))
                    { /* block id: 325 */
                        return p_50.f0;
                    }
                }
                else
                { /* block id: 328 */
                    union U2 ***l_717 = &l_279;
                    int32_t l_720 = (-10L);
                    for (l_391 = 3; (l_391 < 20); l_391 = safe_add_func_int32_t_s_s(l_391, 2))
                    { /* block id: 331 */
                        uint64_t **l_705[1];
                        union U2 ****l_718 = &l_681;
                        int32_t l_723 = 0x03970C67L;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_705[i] = &p_2876->g_143;
                        (*l_632) &= (((void*)0 == l_705[0]) || (safe_lshift_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(((*l_358) = ((safe_sub_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u((&p_2876->g_257 != &p_2876->g_257), (safe_unary_minus_func_int8_t_s((safe_add_func_int64_t_s_s((l_717 != ((*l_718) = &p_2876->g_256)), 0x5DB19A18F6CE6401L)))))) == (l_719 , ((-1L) > GROUP_DIVERGE(0, 1)))), p_50.f0)) ^ GROUP_DIVERGE(1, 1))), l_720)), 10)));
                        p_2876->g_95[6] = ((safe_rshift_func_uint16_t_u_u(((*l_202) && l_723), 13)) , &p_2876->g_128[0][1]);
                        (*l_633) ^= (safe_unary_minus_func_uint32_t_u(9UL));
                        if (p_50.f0)
                            continue;
                    }
                }
            }
            else
            { /* block id: 340 */
                return p_2876->g_492;
            }
        }
        (*l_517) = &l_426[4][0][6];
    }
    if (((l_725 != l_725) | (safe_mod_func_int32_t_s_s(((safe_sub_func_int32_t_s_s((-1L), ((p_50.f0 , l_730) != &l_731))) ^ ((safe_mod_func_int16_t_s_s((0xECD9L & (*l_202)), p_2876->g_313)) , 7L)), 1L))))
    { /* block id: 346 */
        uint8_t l_736 = 1UL;
        for (p_2876->g_30 = 0; (p_2876->g_30 >= (-22)); p_2876->g_30--)
        { /* block id: 349 */
            uint8_t l_737 = 0x9CL;
            if (l_736)
                break;
            for (p_2876->g_533 = 0; (p_2876->g_533 <= 0); p_2876->g_533 += 1)
            { /* block id: 353 */
                int i, j;
                (*l_725) = (*l_725);
                l_737--;
                for (p_2876->g_536 = 0; (p_2876->g_536 >= 0); p_2876->g_536 -= 1)
                { /* block id: 358 */
                    int32_t **l_740 = &p_2876->g_95[6];
                    int i, j, k;
                    (*l_740) = &l_424;
                    if (p_2876->g_188[(p_2876->g_536 + 1)][p_2876->g_536][(p_2876->g_533 + 4)])
                        continue;
                    (*l_202) = 0x14D2A246L;
                    for (l_736 = 0; (l_736 <= 0); l_736 += 1)
                    { /* block id: 364 */
                        return l_736;
                    }
                }
            }
            for (p_2876->g_191 = 0; p_2876->g_191 < 10; p_2876->g_191 += 1)
            {
                for (l_421 = 0; l_421 < 5; l_421 += 1)
                {
                    for (p_2876->g_533 = 0; p_2876->g_533 < 5; p_2876->g_533 += 1)
                    {
                        p_2876->g_22[p_2876->g_191][l_421][p_2876->g_533] = 0UL;
                    }
                }
            }
        }
        (*l_202) = (safe_sub_func_uint16_t_u_u(l_736, 0UL));
    }
    else
    { /* block id: 372 */
        int32_t *l_743[4][4] = {{&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4]},{&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4]},{&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4]},{&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4]}};
        int32_t *l_770 = &l_287;
        uint32_t l_812 = 0xD2D4E2ABL;
        uint64_t *l_849 = &p_2876->g_144;
        int64_t l_870 = 0x62884301535C494EL;
        int32_t **l_874[2];
        uint32_t l_880[4];
        int i, j;
        for (i = 0; i < 2; i++)
            l_874[i] = (void*)0;
        for (i = 0; i < 4; i++)
            l_880[i] = 0x5A34FD13L;
        for (l_190 = 0; (l_190 <= 4); l_190 += 1)
        { /* block id: 375 */
            int64_t l_760 = 6L;
            int32_t l_766 = 0x455073B3L;
            int32_t l_771 = 0x71B046E6L;
            int32_t l_772 = (-1L);
            int32_t l_780 = 1L;
            int32_t l_785 = 0L;
            uint16_t l_789 = 0xD11BL;
            uint16_t *l_799 = &p_2876->g_22[6][0][2];
            int32_t l_827 = 0x6A7C0925L;
            int32_t l_831 = (-2L);
            for (l_423 = 0; (l_423 <= 4); l_423 += 1)
            { /* block id: 378 */
                uint8_t *l_754 = &p_2876->g_627[2][1][0];
                uint32_t *l_759[4][6][1] = {{{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]}},{{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]}},{{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]}},{{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]}}};
                int64_t *l_765 = &l_496;
                int64_t **l_764 = &l_765;
                int64_t ***l_763 = &l_764;
                int16_t *l_767 = &p_2876->g_191;
                int32_t l_775 = 0x6903D5F6L;
                int32_t l_778 = 0L;
                int32_t l_782[1][9][8] = {{{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L}}};
                int i, j, k;
                l_743[3][1] = &p_2876->g_169;
                (*l_202) = ((p_50.f0 == ((safe_div_func_int16_t_s_s(((*l_767) = (safe_lshift_func_int8_t_s_s(0L, (safe_add_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_u((p_2876->g_193 <= (safe_mul_func_uint8_t_u_u(((*l_754)--), ((safe_add_func_int32_t_s_s((-2L), (p_50.f0 , (l_760 = p_50.f0)))) > (safe_sub_func_uint32_t_u_u(4294967295UL, (l_763 == (((p_50.f0 , p_50.f0) >= 4294967294UL) , &p_2876->g_400)))))))), p_50.f0)) != l_766), FAKE_DIVERGE(p_2876->group_2_offset, get_group_id(2), 10)))))), l_766)) > 1UL)) < l_768);
                for (l_391 = 0; (l_391 <= 4); l_391 += 1)
                { /* block id: 386 */
                    int32_t *l_769 = &l_766;
                    int32_t l_773 = (-2L);
                    int32_t l_774 = 1L;
                    int32_t l_776 = 0x30A8B52FL;
                    int32_t l_779 = 0L;
                    int64_t l_781 = 8L;
                    int32_t l_783[10] = {(-1L),0x3385A753L,(-1L),(-1L),0x3385A753L,(-1L),(-1L),0x3385A753L,(-1L),(-1L)};
                    uint64_t l_786 = 0xD9149116C9976120L;
                    int i;
                    (*l_725) = p_2876->g_625[3];
                    for (p_2876->g_109 = 0; (p_2876->g_109 <= 4); p_2876->g_109 += 1)
                    { /* block id: 390 */
                        int32_t l_777[1][3];
                        int16_t l_784 = 0x4F3AL;
                        int32_t *l_792[6][5][6] = {{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_777[i][j] = 1L;
                        }
                        l_770 = l_769;
                        ++l_786;
                        ++l_789;
                        l_792[2][3][4] = &p_2876->g_128[0][0];
                    }
                }
            }
        }
        (*l_202) &= (((p_2876->g_492 = l_870) , &l_426[2][0][3]) == &p_2876->g_128[0][0]);
        p_2876->g_95[3] = ((safe_mul_func_int16_t_s_s((p_50.f0 , ((void*)0 != (*l_314))), ((p_2876->g_873 , &l_145[0][2]) != (void*)0))) , &l_424);
        for (l_424 = 0; (l_424 > 21); l_424 = safe_add_func_int32_t_s_s(l_424, 6))
        { /* block id: 443 */
            union U2 l_877 = {0x69L};
            int64_t *l_881 = &p_2876->g_30;
            uint32_t **l_884 = (void*)0;
            int32_t l_889 = 1L;
            if (p_50.f0)
                break;
            (*l_202) = (l_889 |= ((l_877 , (safe_lshift_func_uint16_t_u_s(((((*l_881) = l_880[2]) , (((*p_2876->g_143) = (!(*p_2876->g_143))) , ((safe_add_func_uint8_t_u_u(((void*)0 == l_884), p_2876->g_144)) , (-1L)))) <= (safe_lshift_func_uint16_t_u_s(((p_50.f0 & (safe_sub_func_uint8_t_u_u((*l_202), 255UL))) , p_50.f0), 9))), p_50.f0))) , p_50.f0));
            for (l_420 = 2; (l_420 >= 0); l_420 -= 1)
            { /* block id: 451 */
                int i;
                (*l_202) &= (l_686[(l_420 + 1)] , (((func_51(p_2876->g_832, (l_877 , l_686[(l_420 + 1)]), &p_2876->g_30, (((safe_mul_func_int16_t_s_s(p_2876->g_109, (p_2876->g_627[2][1][0] > (p_50.f0 <= p_50.f0)))) | p_50.f0) <= p_50.f0), p_2876) , l_877.f0) <= 0x7CB79479F377F6A5L) <= p_50.f0));
                return p_2876->g_313;
            }
        }
    }
lbl_919:
    (*l_918) |= ((safe_mul_func_int8_t_s_s((((safe_div_func_int8_t_s_s(((*l_202) , ((((*l_916) = (safe_mod_func_int8_t_s_s(0L, ((((((*l_202) >= ((*l_202) < (p_2876->g_22[1][4][2] |= ((((*l_898) = &p_2876->g_492) != &p_2876->g_492) || (safe_add_func_int8_t_s_s(0x05L, (safe_div_func_int8_t_s_s((!(safe_unary_minus_func_uint16_t_u((*l_202)))), (safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_u(((safe_mul_func_uint8_t_u_u(((p_2876->g_912 = (void*)0) == &p_2876->g_913[0][0][2]), (*l_202))) && 1L), p_2876->g_316[0].f0)), 0x0A4498F9L)))))))))) <= l_915) <= p_2876->g_861.f0) || (*l_202)) , p_2876->g_873)))) == 0x6922L) == 0xD47236A9L)), p_50.f0)) , p_50.f0) | p_50.f0), 0x32L)) && p_50.f0);
    if (p_50.f0)
    { /* block id: 463 */
        int64_t l_924[3];
        uint64_t **l_925 = &p_2876->g_143;
        uint64_t *l_926 = (void*)0;
        union U2 ***l_927 = &l_279;
        int32_t l_937[6][7][6] = {{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}}};
        uint32_t *l_938 = (void*)0;
        uint32_t *l_939 = &l_686[1];
        int8_t *l_940 = &p_2876->g_316[0].f0;
        int32_t **l_944[9] = {&l_202,&l_202,&l_202,&l_202,&l_202,&l_202,&l_202,&l_202,&l_202};
        int32_t ***l_943 = &l_944[7];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_924[i] = (-6L);
        (*l_202) |= (safe_div_func_int32_t_s_s(p_50.f0, (~(safe_mul_func_uint8_t_u_u(l_924[2], ((*l_940) = (p_2876->g_188[1][0][0] && (((*l_939) = ((((*l_925) = &l_429) == l_926) & (0x0ED2E18871BA9771L ^ (l_937[0][0][3] = ((((((l_927 != ((((p_2876->g_109 = (safe_sub_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((p_2876->g_188[1][0][0] ^ (((safe_unary_minus_func_uint64_t_u((safe_mul_func_int16_t_s_s(((GROUP_DIVERGE(2, 1) && ((safe_rshift_func_int8_t_s_s((*l_918), 5)) != FAKE_DIVERGE(p_2876->local_0_offset, get_local_id(0), 10))) > p_2876->g_818), p_2876->g_533)))) , 7L) , p_50.f0)), p_50.f0)), p_50.f0))) && 0xFAF1FED2E646AAE3L) , (*p_2876->g_257)) , &p_2876->g_256)) >= l_924[0]) > p_2876->g_873) || 4294967295UL) & l_924[1]) < (*l_918)))))) , 0x68L))))))));
        if (((*l_314) == (void*)0))
        { /* block id: 470 */
            int32_t **l_941 = &l_202;
            (*l_941) = &l_426[2][0][5];
        }
        else
        { /* block id: 472 */
            int32_t ***l_946 = &l_944[7];
            int32_t ****l_945 = &l_946;
            int32_t *l_955 = (void*)0;
            int32_t *l_956 = (void*)0;
            int32_t *l_957 = &p_2876->g_958;
            int16_t *l_959 = &p_2876->g_191;
            int8_t l_976 = (-1L);
            union U2 ***l_982 = &l_279;
            int32_t l_997[1][1][5];
            uint64_t l_1003[7][1];
            union U3 *l_1018 = &p_2876->g_1019;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 5; k++)
                        l_997[i][j][k] = 0x06C10AF8L;
                }
            }
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1003[i][j] = 6UL;
            }
            if ((safe_unary_minus_func_int16_t_s(((*l_959) = ((((*l_939) = (l_943 != ((*l_945) = &l_944[3]))) >= ((safe_mod_func_int32_t_s_s(((-9L) > ((((*l_957) |= (p_50.f0 ^ (((safe_rshift_func_int8_t_s_u((safe_mod_func_int64_t_s_s(((p_50.f0 && ((safe_mul_func_uint16_t_u_u(((void*)0 != &p_2876->g_625[5]), (&p_2876->g_917 != (void*)0))) >= p_2876->g_98.f0)) | p_50.f0), 0xF9FC1AB4A8BA55CDL)), p_2876->g_164.f0)) != p_2876->g_627[0][1][0]) , p_2876->g_627[2][1][0]))) , (void*)0) != (void*)0)), p_50.f0)) ^ 0x641951696AF9FA07L)) > FAKE_DIVERGE(p_2876->local_2_offset, get_local_id(2), 10))))))
            { /* block id: 477 */
                int16_t l_975 = 0x574AL;
                int32_t ****l_987 = &l_943;
                int32_t l_998 = 0x43516343L;
                int32_t l_999 = 0x388EB381L;
                int32_t l_1000 = (-3L);
                int32_t l_1002[10][9][2] = {{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}}};
                int i, j, k;
                for (p_2876->g_492 = 0; (p_2876->g_492 < 2); ++p_2876->g_492)
                { /* block id: 480 */
                    int16_t l_972 = 0L;
                    int32_t ****l_995 = &l_946;
                    int32_t l_1001[5][4] = {{0x427881F7L,0x427881F7L,0L,0x63E04FE9L},{0x427881F7L,0x427881F7L,0L,0x63E04FE9L},{0x427881F7L,0x427881F7L,0L,0x63E04FE9L},{0x427881F7L,0x427881F7L,0L,0x63E04FE9L},{0x427881F7L,0x427881F7L,0L,0x63E04FE9L}};
                    int i, j;
                    if (((((*l_940) &= (safe_lshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s((&p_2876->g_95[6] != &p_2876->g_95[1]), (safe_mod_func_uint16_t_u_u((p_50.f0 >= (((((safe_div_func_int8_t_s_s((p_2876->g_313 , (safe_rshift_func_int8_t_s_s(p_50.f0, (l_972 , ((+(+(safe_rshift_func_int8_t_s_s(p_50.f0, 4)))) == (p_2876->g_536 <= ((*l_918) = (0x63L ^ FAKE_DIVERGE(p_2876->local_1_offset, get_local_id(1), 10))))))))), p_50.f0)) , (*p_2876->g_256)) != (*p_2876->g_256)) ^ p_2876->g_188[1][0][3]) < l_975)), p_2876->g_188[0][0][3])))), p_2876->g_193))) & p_50.f0) > 0x01L))
                    { /* block id: 483 */
                        (*l_918) = l_976;
                    }
                    else
                    { /* block id: 485 */
                        uint8_t *l_977 = &l_768;
                        int32_t l_994 = 1L;
                        int32_t l_996 = 0L;
                        (*l_918) ^= ((void*)0 == l_977);
                        (*l_202) = ((~(((safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(((void*)0 != l_982), (((safe_div_func_uint64_t_u_u((*l_202), (l_996 ^= (safe_add_func_uint64_t_u_u(((l_987 != (((0x33210701C4FF5BACL >= (safe_add_func_uint32_t_u_u((9UL || (safe_add_func_int32_t_s_s(0x6AC8ADC5L, ((safe_div_func_int16_t_s_s(l_994, 0x48B2L)) & p_2876->g_128[0][1])))), p_50.f0))) , l_994) , l_995)) , p_50.f0), p_50.f0))))) == p_50.f0) == l_975))), (*p_2876->g_143))) & p_2876->g_191) & p_50.f0)) , p_50.f0);
                        (*l_202) = ((*l_918) = 0x3D80CEE9L);
                        --l_1003[4][0];
                    }
                }
            }
            else
            { /* block id: 494 */
                int32_t l_1022[10] = {(-8L),0x6DCA343BL,(-8L),(-8L),0x6DCA343BL,(-8L),(-8L),0x6DCA343BL,(-8L),(-8L)};
                int i;
                l_918 = (((safe_add_func_int64_t_s_s(p_50.f0, (safe_div_func_int8_t_s_s((p_2876->g_33[1][2][1] & (((((((*l_918) = ((*p_2876->g_143)++)) <= (safe_lshift_func_int8_t_s_s((247UL & (((void*)0 != &p_2876->g_625[3]) , (((safe_sub_func_int32_t_s_s(p_50.f0, ((safe_lshift_func_int16_t_s_s(((((*l_725) = l_1018) != p_2876->g_1020) , p_2876->g_193), p_50.f0)) , p_50.f0))) ^ p_2876->g_873) , 7L))), 0))) ^ p_50.f0) >= 0x5AB7L) , (*p_2876->g_143)) != l_1022[7])), 0x3CL)))) && (*l_202)) , &p_2876->g_128[0][0]);
            }
            (*l_918) ^= p_50.f0;
            return p_50.f0;
        }
    }
    else
    { /* block id: 503 */
        uint8_t l_1025 = 0x43L;
        uint64_t **l_1026 = &l_899;
        int64_t *l_1032 = &p_2876->g_1033[8];
        int16_t *l_1035 = (void*)0;
        int16_t *l_1036[1][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t **l_1037 = &l_918;
        int32_t l_1050[10] = {0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L};
        int i, j;
        (*l_1037) = (((*l_918) || ((FAKE_DIVERGE(p_2876->local_0_offset, get_local_id(0), 10) | (p_2876->g_22[4][2][0] == (safe_add_func_int64_t_s_s(l_1025, ((((*l_202) &= (((*l_918) = 0x7A326867L) != (l_1026 != (((*l_1032) = (safe_unary_minus_func_uint8_t_u((((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(l_1025, p_2876->g_492)), GROUP_DIVERGE(2, 1))) <= (p_2876->g_22[4][2][0] == ((p_2876->g_861.f0 != 255UL) ^ p_2876->g_536))) , 246UL)))) , l_1034)))) | 6UL) , 18446744073709551615UL))))) , p_50.f0)) , (void*)0);
        (*l_202) = 1L;
        for (p_2876->g_30 = 0; (p_2876->g_30 < (-8)); p_2876->g_30--)
        { /* block id: 511 */
            int16_t l_1042[4][4][10] = {{{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL}},{{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL}},{{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL}},{{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL}}};
            int32_t *l_1045 = &p_2876->g_958;
            int64_t *l_1046 = &p_2876->g_30;
            int32_t l_1047 = 0x5A6504DEL;
            int8_t *l_1068 = (void*)0;
            int32_t *l_1070 = (void*)0;
            int32_t *l_1071 = &l_420;
            int i, j, k;
            if ((safe_add_func_uint64_t_u_u(l_1042[3][2][7], ((0x8AF2L >= (safe_div_func_uint32_t_u_u(4294967295UL, 4294967286UL))) == (((4294967295UL > ((FAKE_DIVERGE(p_2876->global_2_offset, get_global_id(2), 10) , (p_50.f0 >= 0x42B7569BD76A737DL)) & ((((*l_1045) = 0x6C1B4422L) , l_1046) != l_1046))) == 1UL) || p_50.f0)))))
            { /* block id: 513 */
                if (p_50.f0)
                    break;
            }
            else
            { /* block id: 515 */
                int32_t *l_1048 = &p_2876->g_84;
                int32_t *l_1049[9][8][1] = {{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}}};
                uint32_t l_1051 = 0UL;
                int i, j, k;
                l_1051--;
            }
            (*l_1071) |= ((p_2876->g_33[2][6][1] & (+0UL)) >= (((l_1042[3][2][7] && (1L < (-1L))) > ((safe_mod_func_int64_t_s_s(((*l_202) = ((safe_mod_func_uint16_t_u_u(((l_1047 = (((p_2876->g_316[0].f1 = ((safe_mul_func_int8_t_s_s(((p_50.f0 != 0x28F4332AL) , (GROUP_DIVERGE(0, 1) , (safe_lshift_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((GROUP_DIVERGE(1, 1) || (p_50.f0 , (*l_202))), (-1L))), (*l_202))))), p_2876->g_818)) & p_50.f0)) ^ (-7L)) >= 0UL)) > p_50.f0), (*l_202))) <= p_50.f0)), p_50.f0)) ^ l_1069)) , 0L));
            if (l_1072)
                continue;
            if (p_50.f0)
                continue;
        }
    }
    return p_50.f0;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
union U2  func_51(int32_t  p_52, uint64_t  p_53, int64_t * p_54, int64_t  p_55, struct S4 * p_2876)
{ /* block id: 15 */
    union U2 l_86 = {-1L};
    return l_86;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_2877;
    struct S4* p_2876 = &c_2877;
    struct S4 c_2878 = {
        {{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}}}, // p_2876->g_22
        (-4L), // p_2876->g_30
        {{{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL}},{{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL}},{{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL}},{{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL}}}, // p_2876->g_33
        {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}, // p_2876->g_40
        {0L}, // p_2876->g_48
        0x0D6E721EL, // p_2876->g_84
        {&p_2876->g_84,&p_2876->g_84,&p_2876->g_84,&p_2876->g_84,&p_2876->g_84,&p_2876->g_84,&p_2876->g_84}, // p_2876->g_95
        {0x2CL}, // p_2876->g_98
        0UL, // p_2876->g_109
        (-4L), // p_2876->g_125
        {{7L,7L}}, // p_2876->g_128
        0x9A96AD4EA75E2C04L, // p_2876->g_144
        &p_2876->g_144, // p_2876->g_143
        {8L}, // p_2876->g_164
        &p_2876->g_164, // p_2876->g_163
        &p_2876->g_163, // p_2876->g_162
        5L, // p_2876->g_169
        {{{0x3B30L,0x3B30L,0x3B30L,0x3B30L,0x3B30L}},{{0x3B30L,0x3B30L,0x3B30L,0x3B30L,0x3B30L}}}, // p_2876->g_188
        6L, // p_2876->g_191
        0UL, // p_2876->g_193
        &p_2876->g_48, // p_2876->g_257
        &p_2876->g_257, // p_2876->g_256
        0x4367E731L, // p_2876->g_283
        0x4196BDB2L, // p_2876->g_313
        {{0x79L},{0x79L},{0x79L}}, // p_2876->g_316
        1UL, // p_2876->g_360
        0x50BBL, // p_2876->g_361
        {&p_2876->g_360,&p_2876->g_360,&p_2876->g_360,&p_2876->g_360,&p_2876->g_360,&p_2876->g_360,&p_2876->g_360,&p_2876->g_360,&p_2876->g_360}, // p_2876->g_359
        (void*)0, // p_2876->g_400
        &p_2876->g_400, // p_2876->g_399
        18446744073709551612UL, // p_2876->g_492
        1L, // p_2876->g_533
        (-6L), // p_2876->g_536
        {{0x3FA337508E9E75B3L}}, // p_2876->g_540
        {{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}}}, // p_2876->g_551
        {{0x4A549E4FBF5BA8C1L}}, // p_2876->g_606
        {{0x62B8467F0B249E15L}}, // p_2876->g_607
        {{0x6CF98BE9E815057BL}}, // p_2876->g_608
        {{6L}}, // p_2876->g_624
        {{0x541DA835EF8C339CL}}, // p_2876->g_626
        {&p_2876->g_626,&p_2876->g_626,&p_2876->g_626,&p_2876->g_626,&p_2876->g_626,&p_2876->g_626}, // p_2876->g_625
        {{{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL}},{{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL}},{{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL}},{{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL}}}, // p_2876->g_627
        {-2L}, // p_2876->g_695
        {{0x06L},{0x06L},{0x06L},{0x06L}}, // p_2876->g_696
        {&p_2876->g_695,&p_2876->g_695,&p_2876->g_695,&p_2876->g_695,&p_2876->g_695,&p_2876->g_695}, // p_2876->g_694
        0L, // p_2876->g_818
        0x12793A4132389025L, // p_2876->g_832
        {0x40L}, // p_2876->g_861
        0x3AD9C336L, // p_2876->g_873
        (void*)0, // p_2876->g_914
        {{{(void*)0,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914},{(void*)0,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914},{(void*)0,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914},{(void*)0,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914,&p_2876->g_914}}}, // p_2876->g_913
        &p_2876->g_913[0][0][2], // p_2876->g_912
        65535UL, // p_2876->g_917
        4L, // p_2876->g_958
        {{0x1DF8122826E6C138L}}, // p_2876->g_1019
        {{0x47A5E1EDF98D9785L}}, // p_2876->g_1021
        &p_2876->g_1021, // p_2876->g_1020
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_2876->g_1033
        (void*)0, // p_2876->g_1088
        &p_2876->g_873, // p_2876->g_1098
        0xAC1653BCL, // p_2876->g_1107
        {0x09L}, // p_2876->g_1112
        (void*)0, // p_2876->g_1133
        4294967295UL, // p_2876->g_1145
        {-5L}, // p_2876->g_1232
        {{0x2EB6D6E0F706484BL}}, // p_2876->g_1240
        &p_2876->g_95[6], // p_2876->g_1248
        &p_2876->g_1248, // p_2876->g_1247
        &p_2876->g_1247, // p_2876->g_1246
        &p_2876->g_1247, // p_2876->g_1250
        {0x4CL}, // p_2876->g_1403
        0x428F6E87L, // p_2876->g_1442
        0x6BA13AEEL, // p_2876->g_1477
        65531UL, // p_2876->g_1510
        4294967293UL, // p_2876->g_1535
        &p_2876->g_1535, // p_2876->g_1534
        (void*)0, // p_2876->g_1539
        (-1L), // p_2876->g_1573
        {1L}, // p_2876->g_1676
        2L, // p_2876->g_1764
        {0x58E6CDACE8972FC5L}, // p_2876->g_1790
        0x0EF1D6B8AA83FABDL, // p_2876->g_1813
        {{65527UL,0x24D4L,0x6EC9L,0xB0C5L,0x24D4L,0xB0C5L,0x6EC9L,0x24D4L,65527UL,65527UL},{65527UL,0x24D4L,0x6EC9L,0xB0C5L,0x24D4L,0xB0C5L,0x6EC9L,0x24D4L,65527UL,65527UL}}, // p_2876->g_1841
        {-3L}, // p_2876->g_1864
        &p_2876->g_607.f0, // p_2876->g_1865
        0x738DB8A9L, // p_2876->g_1884
        {-1L}, // p_2876->g_1888
        (void*)0, // p_2876->g_1889
        (void*)0, // p_2876->g_1890
        1L, // p_2876->g_1916
        {{-1L},{6L},{-1L},{-1L},{6L},{-1L},{-1L},{6L}}, // p_2876->g_1933
        {0x1AA15FFBF5F68E98L}, // p_2876->g_1935
        {0x33EE02C6BDD295F6L}, // p_2876->g_1936
        {0L}, // p_2876->g_1956
        &p_2876->g_95[6], // p_2876->g_2076
        0x5BL, // p_2876->g_2114
        {-9L}, // p_2876->g_2115
        {0x15L}, // p_2876->g_2120
        {{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L}}, // p_2876->g_2129
        {0x37989F2823213DDAL}, // p_2876->g_2130
        {{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL}}, // p_2876->g_2143
        {{0x763805F52A438E60L}}, // p_2876->g_2199
        0xC557894AL, // p_2876->g_2200
        &p_2876->g_627[2][1][0], // p_2876->g_2214
        {{{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]}},{{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]}},{{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]}},{{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]},{&p_2876->g_2114,&p_2876->g_193,&p_2876->g_627[0][4][1],&p_2876->g_627[2][1][0],&p_2876->g_627[2][1][0]}}}, // p_2876->g_2215
        {9L}, // p_2876->g_2222
        {4L}, // p_2876->g_2224
        {{4L}}, // p_2876->g_2228
        {{1UL,0xDD7538749649901EL,1UL,1UL,0xDD7538749649901EL,1UL,1UL,0xDD7538749649901EL,1UL,1UL}}, // p_2876->g_2240
        {{-1L}}, // p_2876->g_2257
        {0x26D841ADF634814EL}, // p_2876->g_2282
        {0x6229B707B2C17715L}, // p_2876->g_2283
        {{&p_2876->g_536}}, // p_2876->g_2290
        {0x6200F53F63F4B3FEL}, // p_2876->g_2303
        (void*)0, // p_2876->g_2362
        &p_2876->g_1088, // p_2876->g_2363
        {{{0x1F88768C0D647973L}},{{0x1F88768C0D647973L}},{{0x1F88768C0D647973L}}}, // p_2876->g_2367
        {0x645787043C6D9DC3L}, // p_2876->g_2375
        {0x4F57F8E0E8DC3311L}, // p_2876->g_2389
        0xB8E342A3L, // p_2876->g_2390
        &p_2876->g_492, // p_2876->g_2406
        &p_2876->g_2406, // p_2876->g_2405
        &p_2876->g_2405, // p_2876->g_2407
        (void*)0, // p_2876->g_2441
        &p_2876->g_2441, // p_2876->g_2440
        &p_2876->g_2440, // p_2876->g_2439
        {0x52BD235381FEA14FL}, // p_2876->g_2444
        {0x3EL}, // p_2876->g_2447
        4294967292UL, // p_2876->g_2467
        {0x4EF0979E9612D309L}, // p_2876->g_2488
        &p_2876->g_626.f0, // p_2876->g_2489
        &p_2876->g_143, // p_2876->g_2493
        {-6L}, // p_2876->g_2494
        (void*)0, // p_2876->g_2545
        &p_2876->g_128[0][0], // p_2876->g_2569
        {{0x072AB6398BD21CD0L}}, // p_2876->g_2582
        {-9L}, // p_2876->g_2583
        (-1L), // p_2876->g_2592
        {0L}, // p_2876->g_2636
        &p_2876->g_2488, // p_2876->g_2637
        {{9L}}, // p_2876->g_2640
        {{1L}}, // p_2876->g_2657
        {6L}, // p_2876->g_2660
        (void*)0, // p_2876->g_2711
        &p_2876->g_818, // p_2876->g_2712
        &p_2876->g_1133, // p_2876->g_2722
        {&p_2876->g_2722,&p_2876->g_2722}, // p_2876->g_2721
        {{{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0}},{{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0}},{{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0}},{{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0}},{{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0}},{{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0}},{{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0}},{{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0}},{{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0},{&p_2876->g_2721[0],&p_2876->g_2721[0],&p_2876->g_2721[0],(void*)0}}}, // p_2876->g_2720
        {{{0L}},{{0L}},{{0L}},{{0L}},{{0L}},{{0L}},{{0L}}}, // p_2876->g_2739
        {6L}, // p_2876->g_2778
        (void*)0, // p_2876->g_2792
        &p_2876->g_1884, // p_2876->g_2794
        &p_2876->g_2794, // p_2876->g_2795
        &p_2876->g_169, // p_2876->g_2800
        (void*)0, // p_2876->g_2810
        {0L}, // p_2876->g_2816
        {&p_2876->g_2215[3][4][2],&p_2876->g_2215[3][4][2],&p_2876->g_2215[3][4][2],&p_2876->g_2215[3][4][2],&p_2876->g_2215[3][4][2],&p_2876->g_2215[3][4][2],&p_2876->g_2215[3][4][2],&p_2876->g_2215[3][4][2],&p_2876->g_2215[3][4][2]}, // p_2876->g_2844
        &p_2876->g_2844[0], // p_2876->g_2843
        (-1L), // p_2876->g_2855
        {0x6B2D0E900BF07323L}, // p_2876->g_2865
        (void*)0, // p_2876->g_2866
        {{{0x03F666F6977A39AFL},{0x03F666F6977A39AFL},{1L},{0x5699A1A3D53107FDL},{-5L},{-7L},{0x7121C24CDAFE37FDL},{0x51E883CB384338FEL},{0x7121C24CDAFE37FDL}},{{0x03F666F6977A39AFL},{0x03F666F6977A39AFL},{1L},{0x5699A1A3D53107FDL},{-5L},{-7L},{0x7121C24CDAFE37FDL},{0x51E883CB384338FEL},{0x7121C24CDAFE37FDL}},{{0x03F666F6977A39AFL},{0x03F666F6977A39AFL},{1L},{0x5699A1A3D53107FDL},{-5L},{-7L},{0x7121C24CDAFE37FDL},{0x51E883CB384338FEL},{0x7121C24CDAFE37FDL}}}, // p_2876->g_2868
        &p_2876->g_33[0][0][1], // p_2876->g_2874
        {{{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874}},{{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874}},{{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874}},{{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874},{&p_2876->g_2874,(void*)0,&p_2876->g_2874}}}, // p_2876->g_2873
        sequence_input[get_global_id(0)], // p_2876->global_0_offset
        sequence_input[get_global_id(1)], // p_2876->global_1_offset
        sequence_input[get_global_id(2)], // p_2876->global_2_offset
        sequence_input[get_local_id(0)], // p_2876->local_0_offset
        sequence_input[get_local_id(1)], // p_2876->local_1_offset
        sequence_input[get_local_id(2)], // p_2876->local_2_offset
        sequence_input[get_group_id(0)], // p_2876->group_0_offset
        sequence_input[get_group_id(1)], // p_2876->group_1_offset
        sequence_input[get_group_id(2)], // p_2876->group_2_offset
    };
    c_2877 = c_2878;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2876);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2876->g_22[i][j][k], "p_2876->g_22[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2876->g_30, "p_2876->g_30", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2876->g_33[i][j][k], "p_2876->g_33[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2876->g_40[i], "p_2876->g_40[i]", print_hash_value);

    }
    transparent_crc(p_2876->g_48.f0, "p_2876->g_48.f0", print_hash_value);
    transparent_crc(p_2876->g_84, "p_2876->g_84", print_hash_value);
    transparent_crc(p_2876->g_98.f0, "p_2876->g_98.f0", print_hash_value);
    transparent_crc(p_2876->g_109, "p_2876->g_109", print_hash_value);
    transparent_crc(p_2876->g_125, "p_2876->g_125", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2876->g_128[i][j], "p_2876->g_128[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2876->g_144, "p_2876->g_144", print_hash_value);
    transparent_crc(p_2876->g_164.f0, "p_2876->g_164.f0", print_hash_value);
    transparent_crc(p_2876->g_169, "p_2876->g_169", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2876->g_188[i][j][k], "p_2876->g_188[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2876->g_191, "p_2876->g_191", print_hash_value);
    transparent_crc(p_2876->g_193, "p_2876->g_193", print_hash_value);
    transparent_crc(p_2876->g_283, "p_2876->g_283", print_hash_value);
    transparent_crc(p_2876->g_313, "p_2876->g_313", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2876->g_316[i].f0, "p_2876->g_316[i].f0", print_hash_value);

    }
    transparent_crc(p_2876->g_360, "p_2876->g_360", print_hash_value);
    transparent_crc(p_2876->g_361, "p_2876->g_361", print_hash_value);
    transparent_crc(p_2876->g_492, "p_2876->g_492", print_hash_value);
    transparent_crc(p_2876->g_533, "p_2876->g_533", print_hash_value);
    transparent_crc(p_2876->g_536, "p_2876->g_536", print_hash_value);
    transparent_crc(p_2876->g_540.f0.f0, "p_2876->g_540.f0.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2876->g_551[i].f0.f0, "p_2876->g_551[i].f0.f0", print_hash_value);

    }
    transparent_crc(p_2876->g_606.f0.f0, "p_2876->g_606.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_607.f0.f0, "p_2876->g_607.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_608.f0.f0, "p_2876->g_608.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_624.f0.f0, "p_2876->g_624.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_626.f0.f0, "p_2876->g_626.f0.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2876->g_627[i][j][k], "p_2876->g_627[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2876->g_695.f0, "p_2876->g_695.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2876->g_696[i].f0, "p_2876->g_696[i].f0", print_hash_value);

    }
    transparent_crc(p_2876->g_818, "p_2876->g_818", print_hash_value);
    transparent_crc(p_2876->g_832, "p_2876->g_832", print_hash_value);
    transparent_crc(p_2876->g_873, "p_2876->g_873", print_hash_value);
    transparent_crc(p_2876->g_917, "p_2876->g_917", print_hash_value);
    transparent_crc(p_2876->g_958, "p_2876->g_958", print_hash_value);
    transparent_crc(p_2876->g_1019.f0.f0, "p_2876->g_1019.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_1021.f0.f0, "p_2876->g_1021.f0.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2876->g_1033[i], "p_2876->g_1033[i]", print_hash_value);

    }
    transparent_crc(p_2876->g_1107, "p_2876->g_1107", print_hash_value);
    transparent_crc(p_2876->g_1112.f0, "p_2876->g_1112.f0", print_hash_value);
    transparent_crc(p_2876->g_1145, "p_2876->g_1145", print_hash_value);
    transparent_crc(p_2876->g_1232.f0, "p_2876->g_1232.f0", print_hash_value);
    transparent_crc(p_2876->g_1240.f0.f0, "p_2876->g_1240.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_1403.f0, "p_2876->g_1403.f0", print_hash_value);
    transparent_crc(p_2876->g_1442, "p_2876->g_1442", print_hash_value);
    transparent_crc(p_2876->g_1477, "p_2876->g_1477", print_hash_value);
    transparent_crc(p_2876->g_1510, "p_2876->g_1510", print_hash_value);
    transparent_crc(p_2876->g_1535, "p_2876->g_1535", print_hash_value);
    transparent_crc(p_2876->g_1573, "p_2876->g_1573", print_hash_value);
    transparent_crc(p_2876->g_1676.f0, "p_2876->g_1676.f0", print_hash_value);
    transparent_crc(p_2876->g_1764, "p_2876->g_1764", print_hash_value);
    transparent_crc(p_2876->g_1790.f0, "p_2876->g_1790.f0", print_hash_value);
    transparent_crc(p_2876->g_1813, "p_2876->g_1813", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2876->g_1841[i][j], "p_2876->g_1841[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2876->g_1864.f0, "p_2876->g_1864.f0", print_hash_value);
    transparent_crc(p_2876->g_1884, "p_2876->g_1884", print_hash_value);
    transparent_crc(p_2876->g_1888.f0, "p_2876->g_1888.f0", print_hash_value);
    transparent_crc(p_2876->g_1916, "p_2876->g_1916", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2876->g_1933[i].f0, "p_2876->g_1933[i].f0", print_hash_value);

    }
    transparent_crc(p_2876->g_1935.f0, "p_2876->g_1935.f0", print_hash_value);
    transparent_crc(p_2876->g_1936.f0, "p_2876->g_1936.f0", print_hash_value);
    transparent_crc(p_2876->g_1956.f0, "p_2876->g_1956.f0", print_hash_value);
    transparent_crc(p_2876->g_2114, "p_2876->g_2114", print_hash_value);
    transparent_crc(p_2876->g_2115.f0, "p_2876->g_2115.f0", print_hash_value);
    transparent_crc(p_2876->g_2120.f0, "p_2876->g_2120.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2876->g_2129[i].f0, "p_2876->g_2129[i].f0", print_hash_value);

    }
    transparent_crc(p_2876->g_2130.f0, "p_2876->g_2130.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2876->g_2143[i][j], "p_2876->g_2143[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2876->g_2199.f0.f0, "p_2876->g_2199.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_2200, "p_2876->g_2200", print_hash_value);
    transparent_crc(p_2876->g_2222.f0, "p_2876->g_2222.f0", print_hash_value);
    transparent_crc(p_2876->g_2228.f0.f0, "p_2876->g_2228.f0.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2876->g_2240[i][j], "p_2876->g_2240[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2876->g_2257.f0.f0, "p_2876->g_2257.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_2282.f0, "p_2876->g_2282.f0", print_hash_value);
    transparent_crc(p_2876->g_2283.f0, "p_2876->g_2283.f0", print_hash_value);
    transparent_crc(p_2876->g_2303.f0, "p_2876->g_2303.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2876->g_2367[i].f0.f0, "p_2876->g_2367[i].f0.f0", print_hash_value);

    }
    transparent_crc(p_2876->g_2375.f0, "p_2876->g_2375.f0", print_hash_value);
    transparent_crc(p_2876->g_2389.f0, "p_2876->g_2389.f0", print_hash_value);
    transparent_crc(p_2876->g_2390, "p_2876->g_2390", print_hash_value);
    transparent_crc(p_2876->g_2444.f0, "p_2876->g_2444.f0", print_hash_value);
    transparent_crc(p_2876->g_2447.f0, "p_2876->g_2447.f0", print_hash_value);
    transparent_crc(p_2876->g_2467, "p_2876->g_2467", print_hash_value);
    transparent_crc(p_2876->g_2488.f0, "p_2876->g_2488.f0", print_hash_value);
    transparent_crc(p_2876->g_2494.f0, "p_2876->g_2494.f0", print_hash_value);
    transparent_crc(p_2876->g_2582.f0.f0, "p_2876->g_2582.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_2583.f0, "p_2876->g_2583.f0", print_hash_value);
    transparent_crc(p_2876->g_2592, "p_2876->g_2592", print_hash_value);
    transparent_crc(p_2876->g_2636.f0, "p_2876->g_2636.f0", print_hash_value);
    transparent_crc(p_2876->g_2640.f0.f0, "p_2876->g_2640.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_2657.f0.f0, "p_2876->g_2657.f0.f0", print_hash_value);
    transparent_crc(p_2876->g_2660.f0, "p_2876->g_2660.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2876->g_2739[i].f0.f0, "p_2876->g_2739[i].f0.f0", print_hash_value);

    }
    transparent_crc(p_2876->g_2778.f0, "p_2876->g_2778.f0", print_hash_value);
    transparent_crc(p_2876->g_2816.f0, "p_2876->g_2816.f0", print_hash_value);
    transparent_crc(p_2876->g_2855, "p_2876->g_2855", print_hash_value);
    transparent_crc(p_2876->g_2865.f0, "p_2876->g_2865.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2876->g_2868[i][j].f0, "p_2876->g_2868[i][j].f0", print_hash_value);

        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
