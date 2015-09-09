// ---fake_divergence -g 98,79,1 -l 1,1,1
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


// Seed: 19

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    volatile int8_t g_14;
    volatile uint64_t g_16;
    int32_t g_41;
    uint64_t g_48;
    int32_t g_71;
    volatile int32_t * volatile *g_81;
    uint32_t g_98[8][7];
    int64_t g_102;
    int8_t g_104;
    int32_t g_116;
    int32_t *g_115;
    uint8_t g_119;
    int16_t g_124;
    uint8_t g_138;
    uint32_t g_167;
    int32_t g_186;
    uint16_t g_208[8];
    uint8_t g_228;
    uint64_t g_242;
    uint8_t g_275;
    uint64_t *g_297[9];
    int16_t g_326;
    int32_t g_350[2][9][7];
    uint64_t g_384;
    int16_t *g_388;
    int16_t * volatile *g_387;
    uint32_t g_417;
    int16_t g_445;
    uint16_t g_491;
    int32_t g_599;
    int64_t *g_614;
    int64_t g_654;
    uint64_t *g_666;
    uint64_t * volatile *g_665;
    int64_t g_675;
    volatile uint32_t *g_692;
    volatile uint32_t **g_691;
    uint64_t **g_695[4][8];
    uint64_t ***g_694[2];
    uint32_t g_716;
    uint8_t g_756;
    int64_t g_878;
    uint64_t ****g_999;
    int32_t **g_1053;
    int32_t ***g_1052[7];
    uint64_t *****g_1080;
    uint32_t g_1120;
    int32_t * volatile g_1225;
    int8_t g_1269;
    uint64_t * volatile **g_1294;
    uint64_t * volatile ***g_1293;
    uint64_t * volatile *** volatile *g_1292;
    uint64_t * volatile *** volatile **g_1291[1][10][4];
    uint64_t * volatile *** volatile *** volatile g_1290;
    uint32_t *g_1298;
    uint32_t **g_1297;
    uint32_t g_1306;
    uint32_t g_1380[4];
    int32_t g_1381;
    volatile uint32_t g_1659;
    volatile uint32_t *g_1658;
    volatile uint32_t ** volatile g_1657;
    uint64_t ******g_1699;
    int64_t g_1724;
    int32_t *g_1768;
    int32_t * volatile * volatile g_1767;
    int32_t *g_1938[10];
    int32_t ** volatile g_1937;
    uint32_t *g_2005[2];
    uint32_t **g_2004;
    uint32_t *** volatile g_2003[7];
    int32_t ** volatile g_2010;
    int32_t ** volatile g_2011[9];
    int32_t ** volatile g_2012;
    volatile uint64_t g_2057;
    volatile uint64_t *g_2056;
    volatile uint64_t **g_2055;
    volatile uint64_t ** volatile *g_2054;
    uint8_t g_2086;
    volatile uint64_t **** volatile **g_2113;
    volatile uint64_t **** volatile ***g_2112[1][7][6];
    volatile uint64_t **** volatile ****g_2111;
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
int32_t  func_1(struct S0 * p_2146);
int32_t * func_20(int32_t * p_21, int32_t * p_22, struct S0 * p_2146);
int32_t * func_23(uint32_t  p_24, int32_t * p_25, uint8_t  p_26, uint32_t  p_27, struct S0 * p_2146);
int64_t  func_33(int32_t  p_34, struct S0 * p_2146);
int32_t  func_42(uint64_t  p_43, int64_t  p_44, int32_t  p_45, uint32_t  p_46, struct S0 * p_2146);
int16_t  func_54(int32_t ** p_55, int32_t ** p_56, struct S0 * p_2146);
int32_t ** func_58(int8_t  p_59, int32_t  p_60, uint64_t  p_61, struct S0 * p_2146);
int32_t ** func_66(int32_t * p_67, struct S0 * p_2146);
int32_t * func_72(int32_t  p_73, struct S0 * p_2146);
int32_t  func_74(int32_t  p_75, int32_t * p_76, struct S0 * p_2146);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2146->g_3
 * writes: p_2146->g_3
 */
int32_t  func_1(struct S0 * p_2146)
{ /* block id: 4 */
    int32_t *l_2[6] = {&p_2146->g_3,&p_2146->g_3,&p_2146->g_3,&p_2146->g_3,&p_2146->g_3,&p_2146->g_3};
    uint32_t l_8[6][10][4] = {{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}}};
    int16_t l_11 = 0x1C2EL;
    int32_t *l_1641 = (void*)0;
    uint32_t l_1972 = 0x7DACF724L;
    uint32_t l_1980 = 0xE61F7327L;
    uint32_t l_2025 = 4294967295UL;
    uint32_t **l_2038 = (void*)0;
    uint32_t **l_2063 = &p_2146->g_2005[0];
    uint32_t l_2070[7][5] = {{4294967289UL,0x8FE19BE1L,4294967289UL,4294967289UL,0x8FE19BE1L},{4294967289UL,0x8FE19BE1L,4294967289UL,4294967289UL,0x8FE19BE1L},{4294967289UL,0x8FE19BE1L,4294967289UL,4294967289UL,0x8FE19BE1L},{4294967289UL,0x8FE19BE1L,4294967289UL,4294967289UL,0x8FE19BE1L},{4294967289UL,0x8FE19BE1L,4294967289UL,4294967289UL,0x8FE19BE1L},{4294967289UL,0x8FE19BE1L,4294967289UL,4294967289UL,0x8FE19BE1L},{4294967289UL,0x8FE19BE1L,4294967289UL,4294967289UL,0x8FE19BE1L}};
    int64_t l_2082[10] = {0x0B9B80995AFD9305L,2L,0x0B9B80995AFD9305L,0x0B9B80995AFD9305L,2L,0x0B9B80995AFD9305L,0x0B9B80995AFD9305L,2L,0x0B9B80995AFD9305L,0x0B9B80995AFD9305L};
    uint32_t l_2083 = 1UL;
    uint64_t ******l_2109 = &p_2146->g_1080;
    uint32_t l_2122 = 0x5B0AE68EL;
    int64_t l_2138 = (-1L);
    int8_t l_2139 = 0x2BL;
    int32_t l_2145 = 0x04BDE13CL;
    int i, j, k;
    p_2146->g_3 = 0x2876E6BAL;
lbl_7:
    for (p_2146->g_3 = 0; (p_2146->g_3 <= 5); p_2146->g_3 += 1)
    { /* block id: 8 */
        int32_t l_4 = (-1L);
        int i;
        l_4 = l_4;
    }
    for (p_2146->g_3 = 23; (p_2146->g_3 < (-13)); p_2146->g_3 = safe_sub_func_uint64_t_u_u(p_2146->g_3, 1))
    { /* block id: 13 */
        if (p_2146->g_3)
            goto lbl_7;
        if (l_8[1][8][2])
            continue;
    }
    for (p_2146->g_3 = 0; (p_2146->g_3 >= 14); p_2146->g_3 = safe_add_func_uint8_t_u_u(p_2146->g_3, 8))
    { /* block id: 19 */
        int32_t l_15[6][9][4] = {{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}}};
        int32_t l_30 = 0x26FBAAEEL;
        int32_t l_49 = 0x405D4008L;
        int32_t l_1199 = 0x090C249EL;
        uint8_t *l_1965 = &p_2146->g_228;
        uint64_t l_1971 = 0x2C160F2D8CE64250L;
        uint32_t *l_1997 = (void*)0;
        int32_t *l_2061 = &l_15[1][5][0];
        int16_t l_2081 = 3L;
        uint64_t *****l_2133 = &p_2146->g_999;
        int i, j, k;
        (1 + 1);
    }
    return l_2145;
}


/* ------------------------------------------ */
/* 
 * reads : p_2146->g_491 p_2146->g_116 p_2146->g_1657 p_2146->g_1225 p_2146->g_350 p_2146->g_1053 p_2146->g_878 p_2146->g_1381 p_2146->g_186 p_2146->g_384 p_2146->g_1120 p_2146->g_1380 p_2146->g_665 p_2146->g_666 p_2146->g_102 p_2146->g_1298 p_2146->g_98 p_2146->g_16 p_2146->g_104 p_2146->g_228 p_2146->g_71 p_2146->g_1269 p_2146->g_756 p_2146->g_208 p_2146->g_654 p_2146->g_675 p_2146->g_599 p_2146->g_1290 p_2146->g_1297 p_2146->g_716 p_2146->g_242 p_2146->g_1306 p_2146->g_445 p_2146->g_1291 p_2146->g_326 p_2146->g_388 p_2146->g_124 p_2146->g_387 p_2146->g_275 p_2146->g_119 p_2146->g_1292 p_2146->g_417 p_2146->g_14 p_2146->g_167 p_2146->g_3 p_2146->g_115 p_2146->g_41 p_2146->g_1767 p_2146->g_1768 p_2146->g_1293 p_2146->g_1294 p_2146->g_1724 p_2146->g_1937
 * writes: p_2146->g_491 p_2146->g_116 p_2146->g_124 p_2146->g_102 p_2146->g_115 p_2146->g_878 p_2146->g_208 p_2146->g_1380 p_2146->g_1381 p_2146->g_1699 p_2146->g_384 p_2146->g_119 p_2146->g_350 p_2146->g_138 p_2146->g_71 p_2146->g_1269 p_2146->g_104 p_2146->g_1724 p_2146->g_756 p_2146->g_417 p_2146->g_388 p_2146->g_48 p_2146->g_675 p_2146->g_326 p_2146->g_1297 p_2146->g_1306 p_2146->g_167 p_2146->g_228 p_2146->g_242 p_2146->g_98 p_2146->g_1052 p_2146->g_297 p_2146->g_445 p_2146->g_186 p_2146->g_654 p_2146->g_614 p_2146->g_716 p_2146->g_275 p_2146->g_1938
 */
int32_t * func_20(int32_t * p_21, int32_t * p_22, struct S0 * p_2146)
{ /* block id: 872 */
    uint32_t l_1654 = 0x776FF48BL;
    volatile uint32_t ** volatile l_1660[6];
    uint64_t *l_1683 = &p_2146->g_384;
    uint64_t ****l_1708 = &p_2146->g_694[1];
    uint32_t l_1710 = 0x00764111L;
    int32_t *l_1733[9];
    uint32_t *l_1734 = &p_2146->g_98[4][2];
    int16_t *l_1749 = &p_2146->g_445;
    uint64_t ******l_1750 = &p_2146->g_1080;
    int64_t l_1752 = 0x16FDA4BE4A4830CCL;
    int32_t l_1800 = 8L;
    uint8_t l_1839 = 0x3FL;
    uint8_t l_1850[5][5][10] = {{{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L}},{{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L}},{{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L}},{{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L}},{{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L},{250UL,0x9AL,0x86L,7UL,255UL,0x3BL,251UL,0x5FL,4UL,0x85L}}};
    uint32_t l_1853 = 1UL;
    uint64_t *******l_1910 = &p_2146->g_1699;
    int64_t l_1931 = 0L;
    uint64_t l_1934 = 0x88B4120D4919609AL;
    uint32_t l_1943 = 4294967287UL;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1660[i] = &p_2146->g_1658;
    for (i = 0; i < 9; i++)
        l_1733[i] = &p_2146->g_350[1][6][3];
lbl_1780:
    for (p_2146->g_491 = (-16); (p_2146->g_491 != 47); p_2146->g_491++)
    { /* block id: 875 */
        uint64_t l_1666 = 1UL;
        int8_t *l_1720 = &p_2146->g_1269;
        int8_t *l_1721 = &p_2146->g_104;
        uint8_t *l_1729 = &p_2146->g_756;
        uint32_t *l_1732 = &p_2146->g_417;
        int16_t **l_1737 = &p_2146->g_388;
        int16_t *l_1739 = (void*)0;
        int16_t **l_1738 = &l_1739;
        int16_t *l_1744 = &p_2146->g_445;
        for (p_2146->g_116 = (-14); (p_2146->g_116 >= 21); p_2146->g_116 = safe_add_func_int16_t_s_s(p_2146->g_116, 1))
        { /* block id: 878 */
            int32_t *l_1646 = &p_2146->g_350[0][1][3];
            int32_t *l_1647 = (void*)0;
            int32_t *l_1648 = &p_2146->g_71;
            int32_t *l_1649 = (void*)0;
            int32_t *l_1650 = &p_2146->g_350[1][6][3];
            int32_t *l_1651 = &p_2146->g_350[0][3][6];
            int32_t *l_1652 = &p_2146->g_1381;
            int32_t *l_1653 = &p_2146->g_350[1][6][3];
            uint64_t l_1661 = 0UL;
            uint32_t l_1687 = 1UL;
            ++l_1654;
            for (p_2146->g_124 = 2; (p_2146->g_124 <= 6); p_2146->g_124 += 1)
            { /* block id: 882 */
                l_1660[5] = p_2146->g_1657;
                for (p_2146->g_102 = 6; (p_2146->g_102 >= 1); p_2146->g_102 -= 1)
                { /* block id: 886 */
                    int i;
                    if (l_1661)
                    { /* block id: 887 */
                        if ((*p_2146->g_1225))
                            break;
                        return p_21;
                    }
                    else
                    { /* block id: 890 */
                        p_22 = p_21;
                        (*p_2146->g_1053) = l_1648;
                    }
                }
            }
            for (p_2146->g_878 = 17; (p_2146->g_878 < 2); --p_2146->g_878)
            { /* block id: 898 */
                uint64_t *l_1684 = &p_2146->g_242;
                uint16_t *l_1685 = &p_2146->g_208[0];
                int32_t l_1686 = 0x61DEE7BBL;
                uint64_t ******l_1697 = &p_2146->g_1080;
                uint64_t *******l_1698[7];
                int8_t *l_1709[6][1];
                uint8_t *l_1711 = &p_2146->g_138;
                int i, j;
                for (i = 0; i < 7; i++)
                    l_1698[i] = &l_1697;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_1709[i][j] = &p_2146->g_1269;
                }
                (*l_1652) = (safe_div_func_uint64_t_u_u((((l_1666 & (FAKE_DIVERGE(p_2146->local_2_offset, get_local_id(2), 10) || (*l_1652))) < (safe_rshift_func_int8_t_s_u(p_2146->g_186, 7))) <= ((l_1666 <= (safe_lshift_func_uint8_t_u_u(p_2146->g_384, 5))) && (safe_mod_func_int64_t_s_s(((p_2146->g_1380[3] &= ((safe_mod_func_int16_t_s_s((9UL || (((*l_1685) = (safe_rshift_func_uint16_t_u_s((safe_sub_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u((((((safe_add_func_int32_t_s_s((-5L), FAKE_DIVERGE(p_2146->global_2_offset, get_global_id(2), 10))) , l_1683) == l_1684) >= (-1L)) <= 0x4D0D366D90FC251CL), (*l_1650))), 0x1B61L)), 1))) == l_1686)), l_1687)) & p_2146->g_1120)) < 4294967286UL), 0x054FD641553FAEA2L)))), 0x1271A3F59250373AL));
                (*l_1648) &= ((((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 0x15L)) == (safe_unary_minus_func_uint16_t_u((((l_1666 , (l_1686 <= ((*l_1711) = ((((*l_1646) = ((safe_mod_func_uint32_t_u_u(((((safe_mod_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s(((*l_1685) = ((p_2146->g_1699 = l_1697) != (void*)0)), (safe_rshift_func_int8_t_s_s(((--(**p_2146->g_665)) < (safe_rshift_func_uint16_t_u_s(((p_2146->g_102 , (safe_lshift_func_int16_t_s_u(((l_1708 != (void*)0) & (p_2146->g_119 = ((*p_2146->g_1298) , l_1654))), p_2146->g_16))) != 0L), 12))), 0)))) && (*l_1651)), p_2146->g_104)) , (void*)0) == &p_2146->g_692) , l_1654), 0x62FD5664L)) | 0x28E4L)) <= l_1710) == l_1666)))) || p_2146->g_384) & 0UL)))) | p_2146->g_228) | 0L);
                (*l_1646) |= 0x568B4DDAL;
            }
        }
        (*p_2146->g_1225) = ((((((safe_sub_func_int64_t_s_s((safe_mod_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(255UL, ((((safe_add_func_int8_t_s_s(((*l_1721) = ((*l_1720) |= 0L)), ((safe_lshift_func_int8_t_s_s((p_2146->g_1724 = p_2146->g_1380[3]), 0)) , l_1654))) <= (safe_div_func_uint8_t_u_u(1UL, (safe_div_func_uint8_t_u_u((5UL < (((*l_1729) ^= (l_1660[5] == (void*)0)) == ((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), l_1710)) | 0xFE5E7776L))), p_2146->g_208[0]))))) , 0x1593DE99F3EEDDCDL) , l_1666))), l_1666)), 0x50B21AD7D148F9AFL)) <= GROUP_DIVERGE(0, 1)) | l_1666) <= l_1666) & p_2146->g_654) != 0xFAD2B16EL);
        (*p_2146->g_1053) = func_23(((*l_1732) = l_1710), l_1733[7], (p_22 == l_1734), ((safe_sub_func_uint32_t_u_u((0xA298L | l_1666), (((*l_1738) = ((*l_1737) = &p_2146->g_326)) == (((safe_mod_func_uint16_t_u_u((((safe_mul_func_int16_t_s_s(0x0438L, (l_1666 , p_2146->g_675))) > FAKE_DIVERGE(p_2146->global_0_offset, get_global_id(0), 10)) == 0xA75197BBL), l_1666)) , p_2146->g_1269) , l_1744)))) <= p_2146->g_599), p_2146);
        return (*p_2146->g_1053);
    }
    if (((safe_mod_func_int16_t_s_s((safe_sub_func_int16_t_s_s(p_2146->g_326, ((*l_1749) = (5UL || 0x9CL)))), 1UL)) && p_2146->g_116))
    { /* block id: 924 */
        int32_t l_1751 = 8L;
        int32_t l_1776 = 1L;
        uint64_t **l_1793 = &l_1683;
        int32_t l_1856 = 0L;
        int32_t l_1858 = 0x1816D858L;
        int32_t l_1865 = 1L;
        int32_t l_1867 = 0x388583B4L;
        int32_t l_1868 = 0x4D09751CL;
        int32_t l_1869[5][6] = {{0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L},{0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L},{0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L},{0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L},{0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L,0x5316BA94L}};
        int16_t l_1871 = (-1L);
        uint16_t l_1872 = 5UL;
        int16_t **l_1881 = &l_1749;
        int32_t l_1924 = 0x4C62FA7EL;
        int32_t ***l_1929 = &p_2146->g_1053;
        int32_t l_1932 = (-1L);
        int32_t l_1933 = 0x2B1BEAE1L;
        int i, j;
        if ((l_1751 = (l_1750 == (void*)0)))
        { /* block id: 926 */
            int8_t l_1757 = (-2L);
            int8_t *l_1758 = (void*)0;
            int8_t *l_1759 = &p_2146->g_1269;
            int32_t l_1762 = 0x0C7F3FCFL;
            int32_t *l_1766 = &p_2146->g_41;
            int32_t **l_1765[6][6][4] = {{{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766}},{{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766}},{{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766}},{{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766}},{{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766}},{{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766},{&l_1766,&l_1766,&l_1766,&l_1766}}};
            uint8_t *l_1775[6] = {&p_2146->g_275,&p_2146->g_275,&p_2146->g_275,&p_2146->g_275,&p_2146->g_275,&p_2146->g_275};
            int i, j, k;
            l_1762 = (FAKE_DIVERGE(p_2146->group_0_offset, get_group_id(0), 10) & (l_1752 > ((safe_lshift_func_int16_t_s_u((~0x62C1L), (FAKE_DIVERGE(p_2146->group_2_offset, get_group_id(2), 10) < (safe_mul_func_uint16_t_u_u(1UL, (((*l_1759) ^= (l_1757 = 0x63L)) != ((~(safe_rshift_func_uint16_t_u_s(l_1762, (safe_mod_func_uint64_t_u_u(((l_1765[4][1][2] == p_2146->g_1767) , (((l_1776 |= (safe_sub_func_uint16_t_u_u(65533UL, (safe_sub_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((l_1751 | FAKE_DIVERGE(p_2146->local_2_offset, get_local_id(2), 10)), 3)), p_2146->g_124))))) < p_2146->g_716) < p_2146->g_104)), l_1751))))) , (-1L)))))))) && GROUP_DIVERGE(1, 1))));
            return p_22;
        }
        else
        { /* block id: 932 */
            uint32_t l_1796 = 0xD5E8E8FEL;
            int64_t *l_1799 = &p_2146->g_1724;
            int32_t l_1816[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
            int32_t l_1819 = 3L;
            int8_t *l_1848 = &p_2146->g_104;
            int64_t l_1857 = 0x30BC349B145A3517L;
            int16_t l_1870[9][6][4] = {{{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL}},{{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL}},{{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL}},{{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL}},{{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL}},{{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL}},{{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL}},{{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL}},{{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL},{0x76FDL,0x2D14L,0x72D9L,0x18FAL}}};
            int i, j, k;
            for (l_1751 = 17; (l_1751 > 18); l_1751++)
            { /* block id: 935 */
                int32_t *l_1779 = &l_1776;
                l_1779 = (*p_2146->g_1053);
                if (p_2146->g_491)
                    goto lbl_1780;
            }
            if ((safe_sub_func_int64_t_s_s((safe_add_func_int64_t_s_s(((*l_1799) = (safe_rshift_func_uint16_t_u_s(((safe_sub_func_int8_t_s_s(((**p_2146->g_1767) , (safe_lshift_func_uint16_t_u_s(0xB8F3L, 12))), l_1751)) , (safe_sub_func_int64_t_s_s(0x7178AB116C0E899EL, (l_1793 == ((safe_rshift_func_int16_t_s_s(l_1796, 5)) , l_1793))))), ((+0xA1BB27C0F2DB9F27L) & (((safe_rshift_func_uint16_t_u_s(((((l_1776 < l_1751) || l_1751) || p_2146->g_1380[3]) && 0x745907BBL), l_1751)) , 0x47ECF497ED79E303L) , l_1796))))), l_1751)), l_1796)))
            { /* block id: 940 */
                int32_t l_1817 = 0x7CA52B96L;
                int32_t l_1851 = 2L;
                int32_t l_1852 = 0x22164516L;
                for (p_2146->g_186 = 0; (p_2146->g_186 <= 1); p_2146->g_186 += 1)
                { /* block id: 943 */
                    uint64_t *******l_1808 = &l_1750;
                    int32_t l_1813 = 0x4446AEC1L;
                    int32_t l_1849[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1849[i] = 9L;
                    (*p_2146->g_1053) = p_21;
                    if (l_1800)
                    { /* block id: 945 */
                        uint8_t l_1807 = 0UL;
                        uint64_t *l_1818 = &p_2146->g_242;
                        uint32_t *l_1820 = &p_2146->g_716;
                        (*p_2146->g_1225) |= (safe_rshift_func_int16_t_s_s((p_2146->g_167 > ((((*l_1820) &= ((((((+((*l_1818) = ((**l_1793) &= (((safe_add_func_uint8_t_u_u(((((l_1807 , l_1808) == &l_1750) , (safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((0x14L <= (l_1813 , l_1807)), 0x4E6E1158L)), (safe_mul_func_uint8_t_u_u(((l_1816[1] = 3L) & l_1817), l_1807))))) , 0UL), l_1807)) & l_1813) && 0x15F9BFA1L)))) & p_2146->g_654) >= l_1751) , 0xD973015DL) , l_1819) & 4294967293UL)) , &p_2146->g_491) == (void*)0)), 5));
                    }
                    else
                    { /* block id: 951 */
                        l_1813 = l_1776;
                        if (l_1751)
                            break;
                    }
                    (*p_2146->g_1053) = p_21;
                    l_1851 ^= (safe_add_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u((safe_add_func_int8_t_s_s(l_1816[1], (safe_mod_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), ((safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint64_t_u_u((l_1751 ^ GROUP_DIVERGE(0, 1)), l_1839)), 14)), 2)) , (0x66D2L == (safe_div_func_uint32_t_u_u((0x58L != (((safe_sub_func_int16_t_s_s(0x42EBL, ((+l_1813) == (safe_mod_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(((l_1849[2] ^= ((l_1848 != l_1848) & l_1813)) < 6L), 2)), l_1751))))) ^ l_1817) | 0x481E63D305C8DC3EL)), 0x11612B35L)))))) | (*****p_2146->g_1292)), l_1813)))), l_1813)) != 0x21L), l_1850[0][0][8])) && l_1817), p_2146->g_116));
                    for (p_2146->g_326 = 0; (p_2146->g_326 <= 1); p_2146->g_326 += 1)
                    { /* block id: 960 */
                        int i, j;
                        (*p_2146->g_1053) = &l_1776;
                        l_1853++;
                        l_1776 |= p_2146->g_98[(p_2146->g_326 + 6)][(p_2146->g_186 + 4)];
                    }
                }
            }
            else
            { /* block id: 966 */
                int32_t l_1859[7][10] = {{1L,1L,0x42A1EF48L,1L,0x573A5786L,1L,0x232699F1L,0x1C5CBA0EL,1L,7L},{1L,1L,0x42A1EF48L,1L,0x573A5786L,1L,0x232699F1L,0x1C5CBA0EL,1L,7L},{1L,1L,0x42A1EF48L,1L,0x573A5786L,1L,0x232699F1L,0x1C5CBA0EL,1L,7L},{1L,1L,0x42A1EF48L,1L,0x573A5786L,1L,0x232699F1L,0x1C5CBA0EL,1L,7L},{1L,1L,0x42A1EF48L,1L,0x573A5786L,1L,0x232699F1L,0x1C5CBA0EL,1L,7L},{1L,1L,0x42A1EF48L,1L,0x573A5786L,1L,0x232699F1L,0x1C5CBA0EL,1L,7L},{1L,1L,0x42A1EF48L,1L,0x573A5786L,1L,0x232699F1L,0x1C5CBA0EL,1L,7L}};
                int16_t l_1860 = 0x5A69L;
                int32_t l_1861 = (-3L);
                int32_t l_1862 = (-9L);
                int32_t l_1863 = 0x1A254FEFL;
                int32_t l_1864 = 0x3F5C508FL;
                int32_t l_1866[8] = {3L,1L,3L,3L,1L,3L,3L,1L};
                int8_t *l_1894 = &p_2146->g_1269;
                int i, j;
                l_1872++;
                l_1862 = (safe_lshift_func_int8_t_s_u((safe_mod_func_int8_t_s_s(((*l_1894) = ((GROUP_DIVERGE(1, 1) != ((safe_sub_func_uint8_t_u_u((((l_1881 == &p_2146->g_388) < (safe_lshift_func_uint8_t_u_s((p_2146->g_275 = (safe_mod_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(l_1860, ((*l_1799) &= 0x0E02EEDA25CF2E49L))), l_1866[5]))), 1))) <= (safe_lshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u((((*l_1749) |= (p_2146->g_104 && (safe_lshift_func_uint8_t_u_u((((*l_1848) = (0x68B1129BL | (((*p_2146->g_1225) , (((0UL | l_1816[1]) , 0x2AD3L) < l_1870[7][5][1])) != l_1867))) | p_2146->g_599), 2)))) || l_1857), l_1857)), 4))), 0x51L)) , l_1859[3][1])) ^ l_1866[5])), 0x39L)), 3));
            }
        }
        for (p_2146->g_445 = (-13); (p_2146->g_445 <= (-30)); p_2146->g_445 = safe_sub_func_int8_t_s_s(p_2146->g_445, 6))
        { /* block id: 978 */
            int8_t l_1905 = 0L;
            uint64_t *******l_1908 = &p_2146->g_1699;
            int32_t l_1922 = 0L;
            int32_t l_1930[5][2] = {{(-5L),0x0B5FCC66L},{(-5L),0x0B5FCC66L},{(-5L),0x0B5FCC66L},{(-5L),0x0B5FCC66L},{(-5L),0x0B5FCC66L}};
            int i, j;
            (1 + 1);
        }
        (*p_2146->g_1937) = ((**l_1929) = &l_1800);
    }
    else
    { /* block id: 1001 */
        uint32_t l_1939 = 1UL;
        int32_t l_1942 = (-1L);
        --l_1939;
        p_21 = p_21;
        (*p_2146->g_1225) = (l_1942 &= 0x33F8A11CL);
    }
    l_1943 = (*p_2146->g_1225);
    for (l_1654 = 29; (l_1654 < 51); l_1654++)
    { /* block id: 1010 */
        (*p_2146->g_1053) = (void*)0;
    }
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_2146->g_98 p_2146->g_756 p_2146->g_1120 p_2146->g_675 p_2146->g_1225 p_2146->g_350 p_2146->g_878 p_2146->g_666 p_2146->g_384 p_2146->g_1269 p_2146->g_1290 p_2146->g_1297 p_2146->g_716 p_2146->g_242 p_2146->g_1306 p_2146->g_445 p_2146->g_116 p_2146->g_1291 p_2146->g_16 p_2146->g_228 p_2146->g_326 p_2146->g_388 p_2146->g_124 p_2146->g_1053 p_2146->g_119 p_2146->g_1380 p_2146->g_387 p_2146->g_275 p_2146->g_186 p_2146->g_71 p_2146->g_1292 p_2146->g_1298 p_2146->g_417 p_2146->g_14 p_2146->g_208 p_2146->g_104 p_2146->g_167 p_2146->g_3 p_2146->g_102 p_2146->g_599 p_2146->g_654 p_2146->g_115 p_2146->g_41 p_2146->g_48
 * writes: p_2146->g_756 p_2146->g_48 p_2146->g_350 p_2146->g_675 p_2146->g_326 p_2146->g_116 p_2146->g_384 p_2146->g_1297 p_2146->g_124 p_2146->g_1306 p_2146->g_167 p_2146->g_119 p_2146->g_388 p_2146->g_208 p_2146->g_228 p_2146->g_115 p_2146->g_242 p_2146->g_878 p_2146->g_98 p_2146->g_1052 p_2146->g_297 p_2146->g_445 p_2146->g_1380 p_2146->g_186 p_2146->g_71 p_2146->g_654 p_2146->g_614 p_2146->g_104
 */
int32_t * func_23(uint32_t  p_24, int32_t * p_25, uint8_t  p_26, uint32_t  p_27, struct S0 * p_2146)
{ /* block id: 624 */
    uint8_t *l_1206[6];
    int32_t l_1215 = 0x4D69FB21L;
    int32_t l_1216 = 1L;
    int8_t l_1223 = (-10L);
    int32_t ***l_1263[9][3] = {{&p_2146->g_1053,&p_2146->g_1053,&p_2146->g_1053},{&p_2146->g_1053,&p_2146->g_1053,&p_2146->g_1053},{&p_2146->g_1053,&p_2146->g_1053,&p_2146->g_1053},{&p_2146->g_1053,&p_2146->g_1053,&p_2146->g_1053},{&p_2146->g_1053,&p_2146->g_1053,&p_2146->g_1053},{&p_2146->g_1053,&p_2146->g_1053,&p_2146->g_1053},{&p_2146->g_1053,&p_2146->g_1053,&p_2146->g_1053},{&p_2146->g_1053,&p_2146->g_1053,&p_2146->g_1053},{&p_2146->g_1053,&p_2146->g_1053,&p_2146->g_1053}};
    uint32_t l_1268[1];
    int16_t l_1305 = 5L;
    int32_t *l_1308 = &l_1215;
    int16_t l_1323 = 1L;
    int8_t l_1327 = 9L;
    uint32_t l_1399[6];
    uint64_t *l_1431 = &p_2146->g_384;
    uint64_t *l_1433[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t ***l_1443 = (void*)0;
    int16_t l_1449 = 0x6097L;
    uint32_t l_1502 = 0x4D1AA6B8L;
    int8_t l_1525 = (-6L);
    int32_t l_1526 = 0x486FD658L;
    uint32_t l_1533 = 9UL;
    int64_t l_1543[7] = {0x19623DF90E1B0E2BL,(-5L),0x19623DF90E1B0E2BL,0x19623DF90E1B0E2BL,(-5L),0x19623DF90E1B0E2BL,0x19623DF90E1B0E2BL};
    uint64_t ***l_1575 = &p_2146->g_695[1][7];
    int i, j;
    for (i = 0; i < 6; i++)
        l_1206[i] = &p_2146->g_228;
    for (i = 0; i < 1; i++)
        l_1268[i] = 0UL;
    for (i = 0; i < 6; i++)
        l_1399[i] = 0xBBA0A3A5L;
    if (((0xE41B036ECB707089L < (p_2146->g_98[7][0] == ((safe_div_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((p_27 > (safe_add_func_uint8_t_u_u((FAKE_DIVERGE(p_2146->local_1_offset, get_local_id(1), 10) >= (p_2146->g_756 |= ((void*)0 == p_25))), p_26))), 3)), p_27)) , (((safe_rshift_func_int16_t_s_u((l_1216 &= ((safe_mul_func_uint8_t_u_u(((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((p_2146->g_1120 || (p_2146->g_675 ^ p_24)), 11)), (-6L))) & l_1215), 6L)) || l_1215)), p_27)) | FAKE_DIVERGE(p_2146->global_1_offset, get_global_id(1), 10)) , p_24)))) < p_2146->g_1120))
    { /* block id: 627 */
        uint32_t l_1245 = 0UL;
        int32_t l_1273 = 0L;
        uint64_t ******l_1338 = &p_2146->g_1080;
        int32_t l_1383[1];
        uint16_t l_1388 = 1UL;
        uint64_t *l_1432 = (void*)0;
        uint32_t *l_1438[8];
        int32_t ****l_1441 = (void*)0;
        int32_t ****l_1442 = &l_1263[5][1];
        int32_t *l_1444 = (void*)0;
        int32_t *l_1445 = &p_2146->g_116;
        int i;
        for (i = 0; i < 1; i++)
            l_1383[i] = 1L;
        for (i = 0; i < 8; i++)
            l_1438[i] = &p_2146->g_167;
lbl_1402:
        for (p_2146->g_48 = (-12); (p_2146->g_48 <= 26); p_2146->g_48 = safe_add_func_uint8_t_u_u(p_2146->g_48, 7))
        { /* block id: 630 */
            int16_t l_1219 = 6L;
            int32_t **l_1220 = (void*)0;
            int32_t *l_1224 = &l_1215;
            uint64_t l_1238 = 0x2182AF7FC26F7DF6L;
            uint32_t l_1265 = 0x01AEAEC7L;
            int32_t l_1267 = 0x45C473C0L;
            uint64_t *****l_1319 = &p_2146->g_999;
            int32_t l_1322 = 7L;
            int32_t *l_1328 = &p_2146->g_350[1][6][3];
            (*p_2146->g_1225) |= ((*l_1224) = ((l_1215 == (0xD4D6640AE5BA3F1CL == ((l_1219 , p_27) && 7UL))) , ((l_1220 == (void*)0) & (safe_sub_func_int32_t_s_s(3L, l_1223)))));
            for (p_2146->g_675 = 0; (p_2146->g_675 == 3); p_2146->g_675 = safe_add_func_int16_t_s_s(p_2146->g_675, 7))
            { /* block id: 635 */
                int8_t l_1271 = 0x2EL;
                uint64_t ******l_1296 = &p_2146->g_1080;
                uint64_t *******l_1295 = &l_1296;
                uint16_t l_1304[3][7] = {{0xDE51L,0xDBBCL,0x6FFCL,0xDBBCL,0xDE51L,0xDE51L,0xDBBCL},{0xDE51L,0xDBBCL,0x6FFCL,0xDBBCL,0xDE51L,0xDE51L,0xDBBCL},{0xDE51L,0xDBBCL,0x6FFCL,0xDBBCL,0xDE51L,0xDE51L,0xDBBCL}};
                int32_t *l_1307 = &l_1215;
                int32_t *l_1309 = &p_2146->g_350[1][5][5];
                uint8_t l_1310[8] = {0x7EL,0x7EL,0x7EL,0x7EL,0x7EL,0x7EL,0x7EL,0x7EL};
                int i, j;
                for (p_2146->g_326 = (-13); (p_2146->g_326 < (-17)); p_2146->g_326 = safe_sub_func_int32_t_s_s(p_2146->g_326, 1))
                { /* block id: 638 */
                    int64_t l_1270[8];
                    int32_t *l_1272 = &p_2146->g_3;
                    int i;
                    for (i = 0; i < 8; i++)
                        l_1270[i] = 0x0C75639E65253312L;
                    for (p_2146->g_116 = (-13); (p_2146->g_116 != 1); p_2146->g_116 = safe_add_func_int64_t_s_s(p_2146->g_116, 9))
                    { /* block id: 641 */
                        int64_t l_1260 = (-8L);
                        int16_t *l_1264 = &l_1219;
                        uint16_t l_1266 = 0xB5C0L;
                        l_1270[6] ^= ((p_24 , ((!(safe_div_func_uint8_t_u_u((safe_div_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(l_1238, ((safe_div_func_int32_t_s_s((safe_sub_func_int32_t_s_s((l_1268[0] &= ((safe_lshift_func_int16_t_s_s(((((((l_1245 >= (safe_add_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u((p_2146->g_878 <= (safe_mod_func_uint8_t_u_u((p_26 == 0L), (safe_rshift_func_int16_t_s_u(((*l_1264) = ((+(safe_add_func_uint32_t_u_u((safe_sub_func_int64_t_s_s(((p_26 < (++(*p_2146->g_666))) ^ (((((l_1260 && (safe_mod_func_uint64_t_u_u(l_1245, p_24))) && 18446744073709551612UL) , l_1263[2][2]) != (void*)0) <= p_26)), l_1260)), (*p_2146->g_1225)))) > 0xAFF0E959L)), 6))))), l_1265)) > l_1266), 0xF5L))) || (*p_2146->g_1225)) , 0x138799827D3416E5L) , l_1260) | p_27) , p_24), 7)) <= l_1267)), (-10L))), FAKE_DIVERGE(p_2146->global_1_offset, get_global_id(1), 10))) != 2UL))), p_24)), p_2146->g_1269))) , (*l_1224))) == p_24);
                        if (l_1271)
                            break;
                        p_25 = l_1272;
                    }
                    l_1273 |= l_1271;
                }
                if (p_26)
                    continue;
                for (p_2146->g_756 = 1; (p_2146->g_756 < 35); p_2146->g_756 = safe_add_func_int8_t_s_s(p_2146->g_756, 4))
                { /* block id: 654 */
                    uint32_t ***l_1299 = &p_2146->g_1297;
                    p_25 = ((safe_add_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((l_1305 ^= (safe_lshift_func_int8_t_s_u(((((~p_24) , (safe_rshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((safe_add_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((p_2146->g_1290 != l_1295), ((((((*l_1299) = p_2146->g_1297) == &p_2146->g_1298) , (safe_unary_minus_func_int32_t_s(((safe_unary_minus_func_uint16_t_u(((safe_lshift_func_int16_t_s_u(0L, (0x1DCD9881L <= l_1273))) , p_2146->g_716))) ^ 0L)))) <= 0x62D8FDB6L) == p_2146->g_242))), p_24)), p_27)), l_1271))) >= 0x77C130BBL) & l_1273), l_1304[2][4]))), GROUP_DIVERGE(2, 1))), p_2146->g_1306)) , l_1307);
                    return l_1309;
                }
                for (l_1267 = 6; (l_1267 >= 0); l_1267 -= 1)
                { /* block id: 662 */
                    uint32_t **l_1320[4][2];
                    int i, j;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_1320[i][j] = &p_2146->g_1298;
                    }
                    (*l_1309) = ((void*)0 == p_25);
                    if ((*l_1307))
                        break;
                    for (p_2146->g_756 = 0; (p_2146->g_756 <= 6); p_2146->g_756 += 1)
                    { /* block id: 667 */
                        int32_t l_1326 = 2L;
                        if (l_1310[7])
                            break;
                        (*l_1308) ^= ((((safe_add_func_int16_t_s_s(0x1066L, (p_2146->g_124 = (safe_sub_func_uint64_t_u_u(p_26, ((((safe_div_func_uint32_t_u_u((safe_add_func_uint64_t_u_u(((void*)0 != l_1319), (((((((void*)0 != l_1320[2][1]) , (((safe_unary_minus_func_uint8_t_u(l_1322)) != (l_1323 != (safe_lshift_func_uint8_t_u_s(p_2146->g_445, 2)))) || FAKE_DIVERGE(p_2146->group_0_offset, get_group_id(0), 10))) || p_26) || (*p_2146->g_1225)) , (*l_1309)) <= l_1326))), 0x42A51F7DL)) == p_26) != 0x4B5FL) , 0x448B67C835A2A5F9L)))))) == p_27) == 0x61E0L) & p_26);
                        if (l_1327)
                            break;
                        return l_1328;
                    }
                }
            }
        }
        for (p_2146->g_384 = 0; (p_2146->g_384 <= 1); p_2146->g_384 += 1)
        { /* block id: 679 */
            uint16_t l_1359[6][10] = {{0x2B46L,0UL,0UL,65534UL,0UL,0UL,0x2B46L,0x20F9L,0x6007L,0x6007L},{0x2B46L,0UL,0UL,65534UL,0UL,0UL,0x2B46L,0x20F9L,0x6007L,0x6007L},{0x2B46L,0UL,0UL,65534UL,0UL,0UL,0x2B46L,0x20F9L,0x6007L,0x6007L},{0x2B46L,0UL,0UL,65534UL,0UL,0UL,0x2B46L,0x20F9L,0x6007L,0x6007L},{0x2B46L,0UL,0UL,65534UL,0UL,0UL,0x2B46L,0x20F9L,0x6007L,0x6007L},{0x2B46L,0UL,0UL,65534UL,0UL,0UL,0x2B46L,0x20F9L,0x6007L,0x6007L}};
            int32_t l_1382 = 0x367DC3FDL;
            uint16_t l_1398 = 5UL;
            int64_t **l_1406[1];
            uint16_t l_1422 = 0xF048L;
            int i, j;
            for (i = 0; i < 1; i++)
                l_1406[i] = &p_2146->g_614;
            for (p_2146->g_1306 = 0; p_2146->g_1306 < 9; p_2146->g_1306 += 1)
            {
                for (p_2146->g_167 = 0; p_2146->g_167 < 3; p_2146->g_167 += 1)
                {
                    l_1263[p_2146->g_1306][p_2146->g_167] = (void*)0;
                }
            }
            for (p_2146->g_119 = 0; (p_2146->g_119 <= 3); p_2146->g_119 += 1)
            { /* block id: 683 */
                uint16_t *l_1335 = &p_2146->g_208[6];
                uint64_t *******l_1339 = &l_1338;
                int32_t l_1340 = (-1L);
                uint64_t l_1385 = 0xF8CE6753C12C769CL;
                int i, j;
                (*l_1308) = ((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2146->global_1_offset, get_global_id(1), 10), (l_1340 = ((safe_rshift_func_uint8_t_u_u(p_24, 3)) , ((safe_sub_func_int8_t_s_s(((p_2146->g_388 = &p_2146->g_124) != (void*)0), (((*l_1335) = (7UL || p_2146->g_878)) < (p_2146->g_116 & (1L == l_1245))))) > (((safe_add_func_int16_t_s_s((((((*l_1339) = l_1338) == (*p_2146->g_1290)) || p_2146->g_16) , (*l_1308)), (-7L))) , p_27) , p_26)))))) >= (-1L));
                for (p_27 = 0; (p_27 <= 0); p_27 += 1)
                { /* block id: 691 */
                    return p_25;
                }
                l_1273 = (safe_unary_minus_func_int8_t_s(0x6DL));
                for (p_2146->g_228 = 0; (p_2146->g_228 <= 0); p_2146->g_228 += 1)
                { /* block id: 697 */
                    uint32_t l_1368 = 0x3B8E8C73L;
                    int64_t *l_1397 = &p_2146->g_878;
                    int i, j, k;
                    if (l_1268[p_2146->g_228])
                        break;
                    if ((((p_26 = ((((safe_add_func_uint32_t_u_u(((void*)0 == &p_2146->g_654), (3UL >= (p_2146->g_350[p_2146->g_228][(p_2146->g_384 + 7)][(p_2146->g_384 + 5)] || (safe_add_func_uint32_t_u_u(p_2146->g_350[p_2146->g_384][(p_2146->g_384 + 1)][(p_2146->g_384 + 4)], (safe_mod_func_int64_t_s_s(((safe_sub_func_int32_t_s_s((safe_mod_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(p_2146->g_350[p_2146->g_384][(p_2146->g_384 + 6)][p_2146->g_384], (safe_lshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((p_2146->g_208[3] = p_26), 14)), ((safe_unary_minus_func_uint32_t_u(l_1273)) == (~p_2146->g_326)))))), (*p_2146->g_388))), l_1359[3][9])) ^ l_1340), GROUP_DIVERGE(1, 1))))))))) > 9UL) < p_26) & 0UL)) ^ l_1340) == GROUP_DIVERGE(1, 1)))
                    { /* block id: 701 */
                        int32_t *l_1360 = &p_2146->g_3;
                        (*p_2146->g_1053) = l_1360;
                    }
                    else
                    { /* block id: 703 */
                        uint8_t l_1365 = 250UL;
                        uint64_t *l_1379 = &p_2146->g_242;
                        int32_t l_1384 = (-1L);
                        int i, j, k;
                        p_2146->g_350[(p_2146->g_228 + 1)][(p_2146->g_119 + 4)][(p_2146->g_384 + 3)] ^= ((safe_mul_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u(5UL, l_1365)) <= (safe_div_func_uint32_t_u_u(l_1368, (~(((safe_lshift_func_uint16_t_u_s((safe_add_func_int32_t_s_s((safe_add_func_uint32_t_u_u(p_2146->g_116, 0x63780FCCL)), (safe_sub_func_uint32_t_u_u(p_27, ((l_1273 = (safe_add_func_uint64_t_u_u(((*l_1379) = 18446744073709551606UL), ((0x640DC51CL && p_27) , p_2146->g_1380[3])))) ^ (**p_2146->g_387)))))), 12)) | p_2146->g_98[3][0]) & p_24))))), p_2146->g_275)) >= 1UL);
                        (*p_2146->g_1053) = (void*)0;
                        --l_1385;
                        ++l_1388;
                    }
                    if (((*l_1308) = (((((*l_1397) = (p_2146->g_350[p_2146->g_384][(p_2146->g_384 + 6)][p_2146->g_384] , ((safe_sub_func_int8_t_s_s(p_26, (safe_lshift_func_int16_t_s_u((*l_1308), (p_2146->g_208[0] = (p_24 , p_2146->g_186)))))) >= ((safe_div_func_uint8_t_u_u(p_2146->g_71, l_1359[2][1])) > (-1L))))) , (l_1398 , 0xBF69CA52L)) , (void*)0) == (**p_2146->g_1290))))
                    { /* block id: 714 */
                        l_1340 = (-1L);
                    }
                    else
                    { /* block id: 716 */
                        l_1399[1]++;
                        if (p_2146->g_116)
                            goto lbl_1402;
                        return p_25;
                    }
                }
                for (l_1223 = 0; (l_1223 <= 3); l_1223 += 1)
                { /* block id: 724 */
                    int64_t l_1403 = (-5L);
                    int64_t **l_1407 = (void*)0;
                    if (((++(*p_2146->g_1298)) , (((l_1406[0] != l_1407) <= ((-10L) >= p_2146->g_228)) <= (safe_div_func_int64_t_s_s(((safe_div_func_uint8_t_u_u((+(l_1403 < 0UL)), (safe_div_func_int16_t_s_s(((safe_mod_func_int64_t_s_s((safe_sub_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(((FAKE_DIVERGE(p_2146->local_0_offset, get_local_id(0), 10) | (((p_26 != l_1403) & (safe_lshift_func_uint8_t_u_s((l_1422 ^ 0xC4B554C5F033D7F3L), 6))) != p_2146->g_186)) ^ (*p_2146->g_388)), l_1340)), 0x497C7F113A206CE5L)), p_27)) == GROUP_DIVERGE(2, 1)), p_2146->g_417)))) | 255UL), l_1383[0])))))
                    { /* block id: 726 */
                        return p_25;
                    }
                    else
                    { /* block id: 728 */
                        return p_25;
                    }
                }
            }
        }
        (*p_2146->g_1053) = p_25;
        (*l_1445) ^= (safe_div_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((safe_sub_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(((((l_1432 = l_1431) == (l_1433[3] = l_1431)) < (safe_lshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s(((l_1383[0] = FAKE_DIVERGE(p_2146->global_1_offset, get_global_id(1), 10)) >= p_2146->g_384), ((((((p_26 <= ((((safe_div_func_uint64_t_u_u(((p_2146->g_1052[4] = ((*l_1442) = &p_2146->g_1053)) != l_1443), p_27)) , &p_2146->g_599) == p_25) > 1UL)) <= 0L) < 0x29A53334L) < GROUP_DIVERGE(1, 1)) | p_26) ^ p_26))), 0))) | p_24), (*l_1308))), 0UL)) ^ p_2146->g_14), p_24)), p_2146->g_71));
    }
    else
    { /* block id: 741 */
        int16_t l_1448 = (-1L);
        uint16_t *l_1450[9][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int64_t l_1451 = 0x33764026B80AC719L;
        uint64_t **l_1458 = &p_2146->g_297[6];
        int16_t *l_1461[8][1][9] = {{{(void*)0,(void*)0,&p_2146->g_124,(void*)0,(void*)0,(void*)0,(void*)0,&p_2146->g_124,(void*)0}},{{(void*)0,(void*)0,&p_2146->g_124,(void*)0,(void*)0,(void*)0,(void*)0,&p_2146->g_124,(void*)0}},{{(void*)0,(void*)0,&p_2146->g_124,(void*)0,(void*)0,(void*)0,(void*)0,&p_2146->g_124,(void*)0}},{{(void*)0,(void*)0,&p_2146->g_124,(void*)0,(void*)0,(void*)0,(void*)0,&p_2146->g_124,(void*)0}},{{(void*)0,(void*)0,&p_2146->g_124,(void*)0,(void*)0,(void*)0,(void*)0,&p_2146->g_124,(void*)0}},{{(void*)0,(void*)0,&p_2146->g_124,(void*)0,(void*)0,(void*)0,(void*)0,&p_2146->g_124,(void*)0}},{{(void*)0,(void*)0,&p_2146->g_124,(void*)0,(void*)0,(void*)0,(void*)0,&p_2146->g_124,(void*)0}},{{(void*)0,(void*)0,&p_2146->g_124,(void*)0,(void*)0,(void*)0,(void*)0,&p_2146->g_124,(void*)0}}};
        int32_t l_1476 = (-6L);
        int32_t l_1510 = 0x705A36B6L;
        int32_t l_1512[5] = {4L,4L,4L,4L,4L};
        uint64_t l_1516 = 18446744073709551615UL;
        int32_t *l_1524 = &p_2146->g_350[0][1][4];
        int i, j, k;
        if ((safe_rshift_func_int16_t_s_u((GROUP_DIVERGE(0, 1) & (p_2146->g_445 = ((l_1448 <= (((l_1449 != (*l_1308)) < (--p_2146->g_208[4])) , ((safe_add_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s((((*l_1458) = &p_2146->g_48) != &p_2146->g_48), 3)), (p_2146->g_228 | ((1L | (safe_rshift_func_int16_t_s_u((((void*)0 != &p_2146->g_208[3]) >= 0x82FED0BD46D55489L), l_1451))) > 1UL)))) || 1L))) || p_2146->g_350[1][6][3]))), 5)))
        { /* block id: 745 */
            uint64_t l_1465 = 0UL;
            int32_t l_1499 = 0L;
            for (l_1451 = 0; (l_1451 == (-3)); l_1451--)
            { /* block id: 748 */
                int32_t l_1464 = 0x49D157ABL;
                int64_t *l_1475[10];
                int16_t **l_1501 = &l_1461[4][0][2];
                int i;
                for (i = 0; i < 10; i++)
                    l_1475[i] = &p_2146->g_102;
                l_1465--;
                for (p_2146->g_445 = 0; (p_2146->g_445 <= (-17)); p_2146->g_445--)
                { /* block id: 752 */
                    uint64_t l_1470[2];
                    int32_t *l_1472 = &p_2146->g_186;
                    int32_t **l_1471 = &l_1472;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1470[i] = 18446744073709551611UL;
                    l_1476 = ((*l_1308) = ((((void*)0 == p_25) > ((&p_2146->g_41 != ((*l_1471) = p_25)) && (safe_mul_func_int16_t_s_s(l_1465, (l_1475[0] != (((l_1263[2][2] != (void*)0) < l_1470[1]) , &l_1451)))))) , 0L));
                    (*p_2146->g_1053) = (void*)0;
                    if (l_1470[1])
                        continue;
                }
                for (p_24 = (-17); (p_24 != 4); p_24 = safe_add_func_int32_t_s_s(p_24, 5))
                { /* block id: 761 */
                    uint64_t l_1489 = 18446744073709551615UL;
                    int32_t l_1492[10][2][6] = {{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}},{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}},{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}},{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}},{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}},{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}},{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}},{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}},{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}},{{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L},{(-7L),(-7L),0x1136320DL,(-7L),(-7L),1L}}};
                    int16_t **l_1500 = &p_2146->g_388;
                    uint64_t ***l_1503 = &l_1458;
                    uint32_t *l_1504 = &p_2146->g_1380[3];
                    uint32_t l_1505 = 0x55E48BEDL;
                    int i, j, k;
                    (*l_1308) |= ((2UL & ((safe_lshift_func_uint8_t_u_s((((safe_rshift_func_int8_t_s_s(p_2146->g_104, 1)) == (safe_mul_func_int8_t_s_s(((((((safe_mul_func_int8_t_s_s((((*p_2146->g_1225) <= ((*l_1504) ^= (safe_lshift_func_uint8_t_u_s((l_1492[2][0][0] = (!((l_1489 > p_2146->g_167) , (p_2146->g_228++)))), (safe_add_func_uint16_t_u_u((safe_div_func_int8_t_s_s(((0x29628828L == (((((safe_rshift_func_int8_t_s_s((+((l_1499 = l_1464) && (l_1500 == l_1501))), 7)) ^ l_1502) ^ GROUP_DIVERGE(1, 1)) , (void*)0) == l_1503)) & l_1465), 0x4DL)), p_26)))))) || l_1505), p_24)) <= 0L) , l_1464) < 0xD9FFL) | l_1464) || l_1465), 0xC8L))) == p_24), p_24)) == p_26)) , l_1464);
                }
            }
        }
        else
        { /* block id: 769 */
            int16_t l_1507 = (-1L);
            int32_t l_1508 = (-1L);
            int32_t l_1509[4] = {0x7589AF62L,0x7589AF62L,0x7589AF62L,0x7589AF62L};
            int64_t *l_1523 = &p_2146->g_654;
            int i;
            for (p_2146->g_445 = 0; (p_2146->g_445 <= 0); p_2146->g_445 += 1)
            { /* block id: 772 */
                int32_t l_1511 = 0x580FDDBAL;
                int32_t l_1513 = 1L;
                int32_t l_1514 = 0x58057850L;
                int32_t l_1515 = 0x146DFEAEL;
                uint8_t l_1527[5][1][8] = {{{1UL,0x01L,0x01L,1UL,1UL,0x01L,0x01L,1UL}},{{1UL,0x01L,0x01L,1UL,1UL,0x01L,0x01L,1UL}},{{1UL,0x01L,0x01L,1UL,1UL,0x01L,0x01L,1UL}},{{1UL,0x01L,0x01L,1UL,1UL,0x01L,0x01L,1UL}},{{1UL,0x01L,0x01L,1UL,1UL,0x01L,0x01L,1UL}}};
                int32_t l_1539 = 1L;
                int32_t l_1540 = (-5L);
                int32_t l_1541[5][4][2] = {{{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L}},{{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L}},{{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L}},{{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L}},{{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L},{0x13C5A9F8L,0x13C5A9F8L}}};
                int i, j, k;
                l_1507 = (safe_unary_minus_func_int8_t_s(((GROUP_DIVERGE(1, 1) != 0x4971851B8217EC69L) , (l_1268[p_2146->g_445] > 0L))));
                l_1516--;
                l_1524 = p_25;
                ++l_1527[0][0][6];
                for (p_2146->g_384 = 0; (p_2146->g_384 <= 0); p_2146->g_384 += 1)
                { /* block id: 781 */
                    int64_t l_1530 = 0x095E9578BFAF0387L;
                    int32_t l_1531 = 1L;
                    int32_t l_1532[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_1532[i] = 0x41E53EF3L;
                    l_1533--;
                    for (p_2146->g_124 = 0; (p_2146->g_124 >= 0); p_2146->g_124 -= 1)
                    { /* block id: 785 */
                        int32_t l_1536 = 0x2E719B3FL;
                        int32_t l_1537 = 0x11B7486CL;
                        int32_t l_1538[3][9] = {{(-9L),0x6926CACEL,(-2L),0x6926CACEL,(-9L),(-9L),0x6926CACEL,(-2L),0x6926CACEL},{(-9L),0x6926CACEL,(-2L),0x6926CACEL,(-9L),(-9L),0x6926CACEL,(-2L),0x6926CACEL},{(-9L),0x6926CACEL,(-2L),0x6926CACEL,(-9L),(-9L),0x6926CACEL,(-2L),0x6926CACEL}};
                        int8_t l_1542 = (-2L);
                        uint64_t l_1544 = 0x5867B481C08D4A38L;
                        int i, j;
                        ++l_1544;
                        return p_25;
                    }
                    for (l_1305 = 0; (l_1305 >= 0); l_1305 -= 1)
                    { /* block id: 791 */
                        (*l_1308) = (l_1532[4] = (*p_2146->g_1225));
                    }
                }
            }
            (*l_1308) = (-9L);
        }
        (*l_1308) = (*p_2146->g_1225);
    }
    (*p_2146->g_1053) = p_25;
    for (p_2146->g_242 = (-1); (p_2146->g_242 != 32); ++p_2146->g_242)
    { /* block id: 804 */
        uint32_t l_1558 = 9UL;
        int64_t *l_1576 = &p_2146->g_675;
        int32_t l_1579 = 0x600D5AEFL;
        int32_t l_1611 = 0x432A9046L;
        uint8_t l_1635 = 0x1FL;
        for (p_2146->g_186 = 0; (p_2146->g_186 > (-21)); p_2146->g_186 = safe_sub_func_uint8_t_u_u(p_2146->g_186, 1))
        { /* block id: 807 */
            int16_t l_1551[5][4] = {{0x5847L,3L,0x2129L,3L},{0x5847L,3L,0x2129L,3L},{0x5847L,3L,0x2129L,3L},{0x5847L,3L,0x2129L,3L},{0x5847L,3L,0x2129L,3L}};
            int32_t l_1559[1][2][6] = {{{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L}}};
            int32_t *l_1573 = (void*)0;
            int32_t l_1613[5] = {0x06B3F175L,0x06B3F175L,0x06B3F175L,0x06B3F175L,0x06B3F175L};
            uint16_t l_1618 = 65527UL;
            int i, j, k;
            if (p_24)
                break;
            if ((*p_2146->g_1225))
                break;
            l_1551[4][2] |= p_27;
            for (p_2146->g_878 = 0; (p_2146->g_878 < 25); p_2146->g_878 = safe_add_func_int64_t_s_s(p_2146->g_878, 2))
            { /* block id: 813 */
                int32_t l_1578 = (-5L);
                uint8_t l_1584 = 0x38L;
                int64_t **l_1591 = (void*)0;
                int16_t *l_1592[3][9][9] = {{{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0}},{{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0}},{{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0},{(void*)0,(void*)0,&p_2146->g_445,&l_1449,&l_1449,&l_1449,&p_2146->g_445,&l_1449,(void*)0}}};
                int32_t l_1608[2][2][8] = {{{0x7D343B2CL,0x6110A529L,0x7D343B2CL,0x7D343B2CL,0x6110A529L,0x7D343B2CL,0x7D343B2CL,0x6110A529L},{0x7D343B2CL,0x6110A529L,0x7D343B2CL,0x7D343B2CL,0x6110A529L,0x7D343B2CL,0x7D343B2CL,0x6110A529L}},{{0x7D343B2CL,0x6110A529L,0x7D343B2CL,0x7D343B2CL,0x6110A529L,0x7D343B2CL,0x7D343B2CL,0x6110A529L},{0x7D343B2CL,0x6110A529L,0x7D343B2CL,0x7D343B2CL,0x6110A529L,0x7D343B2CL,0x7D343B2CL,0x6110A529L}}};
                uint64_t **l_1631[3][10][8] = {{{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]}},{{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]}},{{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]},{(void*)0,&p_2146->g_297[4],&p_2146->g_297[6],&p_2146->g_297[8],(void*)0,&p_2146->g_297[2],&p_2146->g_297[7],&p_2146->g_297[1]}}};
                uint64_t l_1637 = 0xFFF04483252D3D8AL;
                int32_t *l_1640 = &p_2146->g_71;
                int i, j, k;
                for (p_2146->g_675 = 0; (p_2146->g_675 < 21); p_2146->g_675 = safe_add_func_int8_t_s_s(p_2146->g_675, 1))
                { /* block id: 816 */
                    return p_25;
                }
                for (p_2146->g_71 = 0; (p_2146->g_71 == (-14)); p_2146->g_71 = safe_sub_func_uint8_t_u_u(p_2146->g_71, 7))
                { /* block id: 821 */
                    int32_t l_1562 = (-1L);
                    uint64_t ***l_1574 = (void*)0;
                    int64_t **l_1577[1][1][6] = {{{&p_2146->g_614,&p_2146->g_614,&p_2146->g_614,&p_2146->g_614,&p_2146->g_614,&p_2146->g_614}}};
                    int i, j, k;
                    l_1559[0][1][5] = l_1558;
                    for (p_2146->g_654 = (-9); (p_2146->g_654 != 13); p_2146->g_654++)
                    { /* block id: 825 */
                        (*l_1308) = l_1562;
                    }
                    l_1579 = ((*l_1308) = (l_1558 ^ (((safe_rshift_func_uint8_t_u_u(((((safe_mod_func_uint8_t_u_u((p_26 = ((p_2146->g_614 = (p_2146->g_756 , (((!l_1551[4][2]) ^ ((+(l_1551[2][2] < (((safe_div_func_uint32_t_u_u((p_2146->g_3 && p_2146->g_98[4][5]), (p_2146->g_242 && (safe_mul_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u(p_2146->g_104, (((((l_1573 == p_25) || 0x0B34C33A73EC69F9L) , l_1574) != l_1575) && (*l_1308)))) && (*l_1308)), 0x24L))))) | p_2146->g_102) < p_2146->g_599))) > l_1562)) , l_1576))) == (void*)0)), 0x0CL)) , l_1578) <= 2L) >= 0x15BC2B848E5A6985L), 4)) != 0x7D41L) , l_1578)));
                }
                if ((safe_mod_func_int16_t_s_s((p_2146->g_445 &= ((((p_2146->g_1380[1] ^= (safe_add_func_int64_t_s_s((l_1584 == ((0x17D195CE4D452E71L <= (safe_add_func_uint16_t_u_u((!p_26), (p_26 ^ (safe_mul_func_int16_t_s_s(5L, (((safe_sub_func_uint32_t_u_u(p_2146->g_124, (l_1591 == (void*)0))) && (1UL == l_1558)) ^ p_27))))))) > p_27)), p_27))) || 1UL) || p_26) < p_27)), GROUP_DIVERGE(2, 1))))
                { /* block id: 835 */
                    uint32_t l_1595 = 4294967286UL;
                    int32_t l_1614 = 0x5BC1249BL;
                    int32_t l_1617 = 0x1BC2FBABL;
                    l_1608[1][1][2] ^= (FAKE_DIVERGE(p_2146->global_1_offset, get_global_id(1), 10) ^ (safe_add_func_uint64_t_u_u((((0x09B9L && l_1595) & p_2146->g_1380[3]) & ((safe_div_func_uint16_t_u_u(((l_1578 &= (safe_rshift_func_int16_t_s_u(p_27, l_1551[0][0]))) == (safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s((((((safe_mul_func_int8_t_s_s((((((safe_sub_func_int32_t_s_s(l_1595, p_24)) , (p_24 < (l_1579 ^= (((*l_1576) = (p_26 > p_24)) , 0x17L)))) , 0x1FL) <= p_2146->g_654) ^ 9UL), l_1558)) != GROUP_DIVERGE(0, 1)) & l_1595) <= p_24) , 0x66L), p_24)), l_1551[4][2]))), l_1584)) >= FAKE_DIVERGE(p_2146->global_1_offset, get_global_id(1), 10))), 0xCD8241971D175C47L)));
                    for (p_2146->g_756 = 0; (p_2146->g_756 <= 1); p_2146->g_756 = safe_add_func_uint8_t_u_u(p_2146->g_756, 1))
                    { /* block id: 842 */
                        int8_t l_1612[2];
                        int32_t l_1615 = 5L;
                        int32_t l_1616 = 2L;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1612[i] = 0x65L;
                        ++l_1618;
                        return p_25;
                    }
                }
                else
                { /* block id: 846 */
                    uint32_t l_1632 = 0UL;
                    int32_t l_1636 = 0x556AC9DCL;
                    (*p_2146->g_1053) = (*p_2146->g_1053);
                    if ((((safe_lshift_func_uint16_t_u_s((((((safe_rshift_func_int8_t_s_s(p_24, 3)) != l_1584) , (safe_div_func_uint64_t_u_u((+5UL), (safe_mul_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u(((0x8018L | (l_1631[0][9][2] == &p_2146->g_297[6])) <= p_2146->g_41), (~p_2146->g_16))) | ((p_24 &= (p_2146->g_208[0] >= 0x98AEA648L)) , p_26)), GROUP_DIVERGE(2, 1)))))) >= 0x2AL) && l_1578), p_27)) > l_1551[2][3]) == p_27))
                    { /* block id: 849 */
                        if (p_26)
                            break;
                    }
                    else
                    { /* block id: 851 */
                        (*p_2146->g_1225) = (((*l_1308) = p_24) != p_2146->g_1269);
                        ++l_1632;
                        l_1636 = l_1635;
                        if (l_1637)
                            break;
                    }
                    l_1579 |= (((safe_sub_func_int32_t_s_s(l_1613[1], l_1608[1][1][2])) , p_27) || l_1637);
                    for (p_2146->g_104 = 0; (p_2146->g_104 <= 3); p_2146->g_104 += 1)
                    { /* block id: 861 */
                        (*p_2146->g_1053) = l_1640;
                    }
                }
            }
        }
        (*p_2146->g_1053) = p_25;
    }
    (*p_2146->g_1053) = (*p_2146->g_1053);
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_2146->g_119 p_2146->g_716 p_2146->g_654 p_2146->g_104 p_2146->g_756 p_2146->g_350 p_2146->g_208 p_2146->g_71 p_2146->g_41 p_2146->g_98 p_2146->g_115 p_2146->g_228 p_2146->g_167 p_2146->g_999 p_2146->g_694 p_2146->g_48 p_2146->g_417 p_2146->g_491 p_2146->g_116 p_2146->g_242 p_2146->g_665 p_2146->g_666 p_2146->g_1120 p_2146->g_326 p_2146->g_1053 p_2146->g_3 p_2146->g_675 p_2146->g_124 p_2146->g_102 p_2146->g_186 p_2146->g_599
 * writes: p_2146->g_119 p_2146->g_716 p_2146->g_654 p_2146->g_104 p_2146->g_756 p_2146->g_350 p_2146->g_115 p_2146->g_71 p_2146->g_228 p_2146->g_102 p_2146->g_186 p_2146->g_98 p_2146->g_999 p_2146->g_48 p_2146->g_417 p_2146->g_1080 p_2146->g_445 p_2146->g_384 p_2146->g_1120 p_2146->g_275 p_2146->g_116 p_2146->g_326 p_2146->g_138
 */
int64_t  func_33(int32_t  p_34, struct S0 * p_2146)
{ /* block id: 401 */
    uint32_t l_839 = 0xF13AC31BL;
    uint32_t *l_854 = &p_2146->g_167;
    uint8_t *l_860 = &p_2146->g_138;
    uint64_t *l_913[8];
    int32_t l_914 = 0x4B0FB925L;
    int32_t l_915 = (-1L);
    int32_t l_916 = 0L;
    uint64_t l_917 = 1UL;
    int32_t l_944[8] = {0L,(-10L),0L,0L,(-10L),0L,0L,(-10L)};
    uint8_t l_959 = 255UL;
    uint64_t l_969 = 5UL;
    int32_t *l_1008[5][1][10] = {{{(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0}},{{(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0}},{{(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0}},{{(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0}},{{(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0,&p_2146->g_350[0][4][5],(void*)0,(void*)0}}};
    uint32_t l_1009[10][5][5] = {{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}},{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}},{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}},{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}},{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}},{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}},{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}},{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}},{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}},{{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL},{4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL}}};
    int32_t l_1055[4][3][8] = {{{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L},{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L},{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L}},{{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L},{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L},{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L}},{{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L},{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L},{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L}},{{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L},{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L},{0x009AE5C8L,0x51947F6AL,0x324CD7A9L,(-1L),0x324CD7A9L,0x51947F6AL,0x009AE5C8L,0L}}};
    int32_t l_1057 = 3L;
    int32_t *l_1074 = &p_2146->g_71;
    uint32_t l_1098 = 1UL;
    uint64_t ******l_1150 = (void*)0;
    int16_t l_1152 = 7L;
    int32_t l_1197 = 0x52CEBEDCL;
    int32_t l_1198 = (-1L);
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_913[i] = &p_2146->g_48;
    for (p_2146->g_119 = 0; (p_2146->g_119 <= 1); p_2146->g_119 += 1)
    { /* block id: 404 */
        uint32_t l_824 = 0x5E8C2370L;
        int32_t l_838 = 0x2216956CL;
        int32_t l_863[8] = {0x05085743L,0x05085743L,0x05085743L,0x05085743L,0x05085743L,0x05085743L,0x05085743L,0x05085743L};
        uint32_t l_879 = 3UL;
        int32_t *l_960 = (void*)0;
        int32_t *l_961 = &p_2146->g_116;
        int16_t l_962 = 0L;
        int32_t *l_963 = &l_863[3];
        int32_t *l_964 = (void*)0;
        int32_t *l_965 = (void*)0;
        int32_t *l_966 = (void*)0;
        int32_t *l_967 = &l_944[4];
        int32_t *l_968[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t *l_973 = (void*)0;
        uint64_t ****l_1000[7];
        int i;
        for (i = 0; i < 7; i++)
            l_1000[i] = &p_2146->g_694[1];
        for (p_2146->g_716 = 0; (p_2146->g_716 <= 1); p_2146->g_716 += 1)
        { /* block id: 407 */
            int64_t l_836 = 0x018DE84F82A1B7FFL;
            int32_t l_837[3][4] = {{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)}};
            int32_t **l_842 = (void*)0;
            int32_t **l_843 = (void*)0;
            int32_t **l_844 = (void*)0;
            int32_t **l_845 = &p_2146->g_115;
            int32_t l_925 = 0x43D70432L;
            int i, j;
            --l_824;
            for (p_2146->g_654 = 2; (p_2146->g_654 <= 7); p_2146->g_654 += 1)
            { /* block id: 411 */
                int16_t l_831[7] = {0x5E49L,0x5E49L,0x5E49L,0x5E49L,0x5E49L,0x5E49L,0x5E49L};
                int32_t l_832 = 0x2DED13FBL;
                int32_t l_833 = 1L;
                int32_t l_834 = 0x1D48DD57L;
                int32_t l_835 = 0x71238DD0L;
                int i;
                for (p_2146->g_104 = 7; (p_2146->g_104 >= 0); p_2146->g_104 -= 1)
                { /* block id: 414 */
                    int32_t *l_828 = (void*)0;
                    int32_t *l_829 = &p_2146->g_71;
                    int32_t *l_830[4] = {&p_2146->g_350[1][1][6],&p_2146->g_350[1][1][6],&p_2146->g_350[1][1][6],&p_2146->g_350[1][1][6]};
                    int i;
                    for (p_2146->g_756 = 0; (p_2146->g_756 <= 1); p_2146->g_756 += 1)
                    { /* block id: 417 */
                        int32_t *l_827 = &p_2146->g_350[1][2][2];
                        (*l_827) ^= 0x1A701B4EL;
                    }
                    l_839++;
                }
            }
            if (p_2146->g_208[(p_2146->g_119 + 5)])
                continue;
            (*l_845) = &p_2146->g_71;
            for (p_2146->g_654 = 1; (p_2146->g_654 >= 0); p_2146->g_654 -= 1)
            { /* block id: 427 */
                uint8_t *l_859[6][1];
                int16_t l_861 = 0x15FFL;
                int32_t *l_862[3][6][2] = {{{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]}},{{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]}},{{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]},{&p_2146->g_350[1][6][3],&l_837[2][2]}}};
                uint8_t l_882 = 1UL;
                uint8_t l_936 = 2UL;
                uint8_t l_956 = 0x7AL;
                int i, j, k;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_859[i][j] = (void*)0;
                }
                l_863[3] &= ((*p_2146->g_115) = (safe_lshift_func_uint16_t_u_u((((safe_add_func_uint32_t_u_u(p_2146->g_350[p_2146->g_716][(p_2146->g_654 + 1)][(p_2146->g_716 + 4)], ((((safe_sub_func_int16_t_s_s((l_824 > (safe_sub_func_int16_t_s_s(0x5804L, (p_34 , p_34)))), ((l_854 == &p_2146->g_167) & (((safe_add_func_uint16_t_u_u((safe_mod_func_int16_t_s_s(((l_838 &= 0xE3L) == (l_839 , p_34)), p_2146->g_71)), p_2146->g_41)) , l_860) == (void*)0)))) <= p_34) || p_2146->g_98[4][1]) == 2UL))) | p_34) && l_861), 9)));
            }
        }
        --l_969;
        for (p_2146->g_756 = 0; (p_2146->g_756 <= 1); p_2146->g_756 += 1)
        { /* block id: 495 */
            int32_t l_972 = 0x6008822DL;
            int i;
            l_972 = p_2146->g_208[(p_2146->g_756 + 6)];
            for (l_916 = 1; (l_916 >= 0); l_916 -= 1)
            { /* block id: 499 */
                int i;
                return p_2146->g_208[(p_2146->g_119 + 3)];
            }
        }
        for (p_2146->g_228 = 2; (p_2146->g_228 <= 7); p_2146->g_228 += 1)
        { /* block id: 505 */
            uint64_t l_996[7] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL};
            uint64_t ***l_1002 = &p_2146->g_695[1][6];
            int i;
            for (l_969 = 0; (l_969 <= 1); l_969 += 1)
            { /* block id: 508 */
                int i;
                if (p_2146->g_208[p_2146->g_228])
                    break;
            }
            for (l_962 = 0; (l_962 <= 3); l_962 += 1)
            { /* block id: 513 */
                int64_t *l_976 = &p_2146->g_102;
                int i, j, k;
                (1 + 1);
            }
            for (p_2146->g_102 = 0; p_2146->g_102 < 8; p_2146->g_102 += 1)
            {
                for (p_2146->g_186 = 0; p_2146->g_186 < 7; p_2146->g_186 += 1)
                {
                    p_2146->g_98[p_2146->g_102][p_2146->g_186] = 0xDAB1EC0BL;
                }
            }
            for (l_914 = 1; (l_914 >= 0); l_914 -= 1)
            { /* block id: 522 */
                int32_t **l_985 = &l_965;
                uint64_t ***l_995[7] = {&p_2146->g_695[1][6],&p_2146->g_695[2][5],&p_2146->g_695[1][6],&p_2146->g_695[1][6],&p_2146->g_695[2][5],&p_2146->g_695[1][6],&p_2146->g_695[1][6]};
                uint64_t *****l_1001 = &l_1000[6];
                uint16_t l_1003 = 5UL;
                int i, j, k;
                (*l_985) = &p_2146->g_350[p_2146->g_119][(l_914 + 6)][(l_914 + 1)];
                (*l_967) = (safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_u(p_2146->g_208[(l_914 + 3)], (GROUP_DIVERGE(1, 1) > ((safe_sub_func_uint64_t_u_u((safe_unary_minus_func_uint64_t_u(6UL)), (safe_mod_func_int8_t_s_s((((0x40L <= ((void*)0 != l_860)) , (((*l_963) = (p_2146->g_350[p_2146->g_119][(p_2146->g_119 + 7)][(p_2146->g_119 + 2)] && ((void*)0 == &l_863[3]))) && (((void*)0 != l_995[1]) , 0xD58BE35EL))) || l_996[6]), (-10L))))) <= p_34)))), p_2146->g_167));
                if (p_34)
                    continue;
                (*l_967) = ((&p_2146->g_654 != (void*)0) <= ((p_2146->g_716 , ((void*)0 != &p_2146->g_491)) || (((0x15A15286L > ((p_2146->g_999 = &p_2146->g_694[1]) == ((*l_1001) = l_1000[6]))) , (((FAKE_DIVERGE(p_2146->local_2_offset, get_local_id(2), 10) < (((l_1002 = l_1002) == (*p_2146->g_999)) && FAKE_DIVERGE(p_2146->group_2_offset, get_group_id(2), 10))) | 1UL) == l_1003)) >= 0x90E6263CL)));
            }
        }
    }
    l_1009[9][2][2] |= (safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), l_914)), p_34));
    if ((!0x42F059D8L))
    { /* block id: 535 */
        int64_t l_1056 = 0L;
        int32_t *l_1058 = &p_2146->g_116;
        int32_t l_1061 = (-5L);
        int32_t l_1062 = (-6L);
        int32_t l_1065 = 1L;
        int32_t l_1069[5] = {0x7FC3490DL,0x7FC3490DL,0x7FC3490DL,0x7FC3490DL,0x7FC3490DL};
        int8_t l_1109 = 1L;
        uint16_t *l_1147 = (void*)0;
        int16_t *l_1170 = (void*)0;
        int16_t *l_1171 = &p_2146->g_326;
        int i;
        for (p_2146->g_48 = 0; (p_2146->g_48 >= 56); ++p_2146->g_48)
        { /* block id: 538 */
            int32_t l_1026 = 0x433162B2L;
            int32_t **l_1051 = &l_1008[0][0][8];
            int32_t ***l_1050 = &l_1051;
            int32_t l_1066 = (-5L);
            int32_t l_1068 = 1L;
            int32_t l_1070 = 0x16BDA395L;
            int32_t l_1106 = 0L;
            int32_t l_1107 = (-1L);
            int32_t l_1113 = 9L;
            int32_t l_1118[4];
            uint64_t ******l_1148[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint64_t *******l_1149 = (void*)0;
            int16_t l_1151 = (-8L);
            int i;
            for (i = 0; i < 4; i++)
                l_1118[i] = (-10L);
            for (p_2146->g_417 = 2; (p_2146->g_417 <= 6); p_2146->g_417 += 1)
            { /* block id: 541 */
                uint64_t l_1022 = 18446744073709551615UL;
                uint16_t *l_1023 = &p_2146->g_208[5];
                int16_t *l_1027 = &p_2146->g_445;
                uint16_t *l_1047 = &p_2146->g_491;
                int32_t ****l_1054 = &p_2146->g_1052[5];
                int32_t l_1059 = 0x38114491L;
                int32_t l_1060 = 0x1DA27C74L;
                int32_t l_1063 = 1L;
                int32_t l_1064 = 0x6C3BFF5EL;
                int32_t l_1067[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                uint32_t l_1071[9][8][3] = {{{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L}},{{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L}},{{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L}},{{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L}},{{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L}},{{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L}},{{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L}},{{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L}},{{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L},{0x2C30D643L,0x2C30D643L,0x9AF3C773L}}};
                int i, j, k;
                (*l_1051) = l_1058;
                l_1071[4][6][0]++;
                if (p_34)
                { /* block id: 550 */
                    int16_t l_1075[6][8] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
                    int i, j;
                    (*l_1051) = l_1074;
                    for (l_1062 = 6; (l_1062 >= 0); l_1062 -= 1)
                    { /* block id: 554 */
                        int i;
                        l_944[p_2146->g_417] &= 7L;
                        return l_1075[4][5];
                    }
                    if ((+0x69A39CCBL))
                    { /* block id: 558 */
                        return l_1075[5][6];
                    }
                    else
                    { /* block id: 560 */
                        uint64_t *****l_1078 = (void*)0;
                        uint64_t ******l_1079 = &l_1078;
                        (*l_1074) &= (~(((p_2146->g_1080 = ((*l_1079) = l_1078)) != (p_2146->g_491 , &p_2146->g_999)) || (0x02102F0D7BC28EB5L == (~p_34))));
                    }
                }
                else
                { /* block id: 565 */
                    uint64_t l_1093[10][9][2] = {{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}},{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}},{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}},{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}},{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}},{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}},{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}},{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}},{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}},{{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL},{0UL,0x989687F0C83981FEL}}};
                    int32_t l_1094 = 0x10C9A20DL;
                    int32_t l_1095[10][5][5] = {{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}},{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}},{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}},{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}},{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}},{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}},{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}},{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}},{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}},{{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL},{0x671E9140L,0x1C15B222L,0x77DB352EL,1L,0x518FD14BL}}};
                    int i, j, k;
                    if (((safe_rshift_func_uint8_t_u_s((p_34 , ((((((**p_2146->g_665) = ((((~(safe_add_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(p_34, (0xC973F773L == (safe_mul_func_uint16_t_u_u(0x0D95L, p_2146->g_167))))), 1UL))) < ((l_1094 = (safe_mod_func_uint64_t_u_u((((GROUP_DIVERGE(0, 1) && ((0x2924B8E2L >= 0xA17EB532L) , (safe_lshift_func_int16_t_s_u(((*l_1027) = (0xED33A0569C92D8B6L > l_1093[4][7][0])), 15)))) >= 0x8FFE1660L) , GROUP_DIVERGE(1, 1)), (*l_1058)))) , p_2146->g_242)) , 0xABL) == 0x63L)) >= p_2146->g_98[3][4]) == 0UL) , 65535UL) != p_34)), p_2146->g_167)) != 3UL))
                    { /* block id: 569 */
                        if (p_34)
                            break;
                    }
                    else
                    { /* block id: 571 */
                        int64_t l_1096 = 4L;
                        int16_t l_1097 = 0L;
                        l_1098--;
                    }
                    for (l_917 = 0; (l_917 <= 0); l_917 += 1)
                    { /* block id: 576 */
                        int i, j, k;
                        return l_1071[(p_2146->g_417 + 2)][p_2146->g_417][(l_917 + 1)];
                    }
                }
                if (p_34)
                    continue;
                for (l_839 = 0; (l_839 <= 0); l_839 += 1)
                { /* block id: 583 */
                    int32_t l_1103 = 0x32258458L;
                    for (p_2146->g_384 = 0; (p_2146->g_384 <= 6); p_2146->g_384 += 1)
                    { /* block id: 586 */
                        int32_t l_1101 = 6L;
                        int32_t l_1102 = 0x60F4060BL;
                        int32_t l_1104 = 6L;
                        int32_t l_1105 = 0x573A0FABL;
                        int32_t l_1108 = 0x4FFFA966L;
                        int32_t l_1110 = 0x71DB9C1EL;
                        int32_t l_1111 = 0x680D46EBL;
                        int32_t l_1112 = (-1L);
                        int32_t l_1114 = 1L;
                        int32_t l_1115 = 0x1FB5F9A6L;
                        int32_t l_1116 = 0L;
                        int32_t l_1117 = 0x5095B9CBL;
                        int32_t l_1119 = 0x70C61475L;
                        int i, j, k;
                        --p_2146->g_1120;
                    }
                }
            }
            if (((*l_1074) = (safe_mul_func_int16_t_s_s((-9L), p_2146->g_326))))
            { /* block id: 592 */
                if (p_34)
                    break;
            }
            else
            { /* block id: 594 */
                for (p_2146->g_275 = 0; (p_2146->g_275 <= 4); p_2146->g_275 += 1)
                { /* block id: 597 */
                    return p_34;
                }
            }
            (*p_2146->g_1053) = &l_1065;
        }
        l_1062 ^= ((*l_1074) = (p_2146->g_756 || (safe_rshift_func_uint16_t_u_u(((((*l_1058) |= p_2146->g_350[1][8][4]) <= ((safe_add_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u((safe_add_func_int32_t_s_s((-9L), (l_1069[1] ^= (safe_div_func_uint64_t_u_u(((safe_mod_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u((((safe_mul_func_int16_t_s_s(((*l_1171) ^= ((254UL || (!((0x4D67L || (&l_1056 == &p_2146->g_675)) >= (*l_1074)))) && ((p_2146->g_41 , l_1058) == l_1058))), (*l_1074))) , p_34) , p_2146->g_3))), p_34)) , 0x18A54301EDFCBB4CL), p_34))))), 4)), 0x32CDDD34L)) <= p_2146->g_675)) ^ (-1L)), 11))));
        for (l_1061 = 1; (l_1061 >= 0); l_1061 -= 1)
        { /* block id: 611 */
            (*p_2146->g_1053) = &l_1069[0];
            return p_34;
        }
        l_1058 = &l_1062;
    }
    else
    { /* block id: 616 */
        int32_t *l_1176 = &p_2146->g_599;
        int32_t l_1177 = 0x616B73E4L;
        int16_t *l_1196 = &l_1152;
        l_1198 = (((~(safe_sub_func_uint16_t_u_u((p_2146->g_124 , (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (l_1008[3][0][6] != l_1176)))), ((((void*)0 == &l_1152) & (0x438EL == l_1177)) < (safe_sub_func_int8_t_s_s((safe_div_func_int8_t_s_s((~(safe_add_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((((**p_2146->g_665) = (((!((FAKE_DIVERGE(p_2146->group_0_offset, get_group_id(0), 10) == (((*l_860) = ((safe_sub_func_int8_t_s_s(((((p_2146->g_102 != ((((safe_sub_func_int16_t_s_s(((*l_1196) &= (safe_lshift_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(0x5F85CC7AL, FAKE_DIVERGE(p_2146->global_2_offset, get_global_id(2), 10))), 14))), 65527UL)) | p_2146->g_48) && p_34) , p_34)) == p_34) , l_1177) && p_2146->g_186), p_34)) & (-9L))) | l_1177)) , l_1177)) & l_1197) , 0x3A189C47956570F7L)) < p_34), 7)), 8L)), p_2146->g_599))), 0x47L)), 3L)))))) <= p_34) || 9L);
        (*p_2146->g_1053) = &l_916;
    }
    return (*l_1074);
}


/* ------------------------------------------ */
/* 
 * reads : p_2146->g_3 p_2146->g_48 p_2146->g_81 p_2146->g_71 p_2146->g_98 p_2146->g_102 p_2146->g_116 p_2146->g_119 p_2146->g_115 p_2146->g_104 p_2146->g_167 p_2146->g_186 p_2146->g_124 p_2146->g_228 p_2146->g_208 p_2146->g_242 p_2146->g_275 p_2146->g_326 p_2146->g_491 p_2146->g_384 p_2146->g_350 p_2146->g_138 p_2146->g_445 p_2146->g_417 p_2146->g_654 p_2146->g_599 p_2146->g_665 p_2146->g_666 p_2146->g_675 p_2146->g_691 p_2146->g_694 p_2146->g_716 p_2146->g_614 p_2146->g_756
 * writes: p_2146->g_48 p_2146->g_71 p_2146->g_98 p_2146->g_102 p_2146->g_115 p_2146->g_119 p_2146->g_104 p_2146->g_124 p_2146->g_116 p_2146->g_138 p_2146->g_167 p_2146->g_186 p_2146->g_208 p_2146->g_228 p_2146->g_242 p_2146->g_275 p_2146->g_297 p_2146->g_445 p_2146->g_491 p_2146->g_350 p_2146->g_384 p_2146->g_599 p_2146->g_614 p_2146->g_654 p_2146->g_694 p_2146->g_756 p_2146->g_695
 */
int32_t  func_42(uint64_t  p_43, int64_t  p_44, int32_t  p_45, uint32_t  p_46, struct S0 * p_2146)
{ /* block id: 32 */
    int32_t **l_57 = (void*)0;
    int32_t **l_279 = &p_2146->g_115;
    int32_t ***l_278 = &l_279;
    int64_t l_280[9][4][7] = {{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}}};
    int16_t *l_449 = &p_2146->g_445;
    int32_t l_467 = 7L;
    int32_t l_520[7] = {1L,1L,1L,1L,1L,1L,1L};
    uint32_t l_584 = 1UL;
    int32_t *l_596[4];
    int64_t *l_615 = (void*)0;
    uint64_t **l_667 = &p_2146->g_666;
    uint64_t l_723 = 0UL;
    int8_t l_754 = 1L;
    uint32_t l_759 = 0xB2178D5EL;
    uint8_t l_804 = 0xE2L;
    uint32_t *l_806 = &p_2146->g_98[1][5];
    uint32_t **l_805 = &l_806;
    uint64_t **l_812 = &p_2146->g_297[8];
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_596[i] = (void*)0;
    if (((p_2146->g_3 >= (p_46 <= p_43)) == (((*l_278) = ((safe_mul_func_int16_t_s_s((+((255UL ^ GROUP_DIVERGE(1, 1)) || 18446744073709551615UL)), ((*l_449) = func_54(l_57, func_58((safe_div_func_uint64_t_u_u((7L ^ (safe_div_func_int64_t_s_s((((*l_278) = func_66(&p_2146->g_3, p_2146)) == p_2146->g_81), p_43))), p_2146->g_3)), l_280[3][2][2], p_2146->g_3, p_2146), p_2146)))) , (void*)0)) != (void*)0)))
    { /* block id: 207 */
        int8_t l_453[6] = {0L,0x76L,0L,0L,0x76L,0L};
        int32_t l_464 = 5L;
        int32_t l_465 = 0x7D4C5F5DL;
        int32_t l_466 = 1L;
        uint32_t l_489[3];
        uint64_t *l_559[10][9] = {{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384},{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384},{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384},{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384},{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384},{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384},{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384},{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384},{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384},{(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384,(void*)0,(void*)0,&p_2146->g_384,&p_2146->g_384,&p_2146->g_384}};
        int32_t l_739 = 1L;
        int64_t l_789[9][4] = {{0x73458DAC97AF0D13L,0x73458DAC97AF0D13L,(-1L),0x614F4ECA2671C6DFL},{0x73458DAC97AF0D13L,0x73458DAC97AF0D13L,(-1L),0x614F4ECA2671C6DFL},{0x73458DAC97AF0D13L,0x73458DAC97AF0D13L,(-1L),0x614F4ECA2671C6DFL},{0x73458DAC97AF0D13L,0x73458DAC97AF0D13L,(-1L),0x614F4ECA2671C6DFL},{0x73458DAC97AF0D13L,0x73458DAC97AF0D13L,(-1L),0x614F4ECA2671C6DFL},{0x73458DAC97AF0D13L,0x73458DAC97AF0D13L,(-1L),0x614F4ECA2671C6DFL},{0x73458DAC97AF0D13L,0x73458DAC97AF0D13L,(-1L),0x614F4ECA2671C6DFL},{0x73458DAC97AF0D13L,0x73458DAC97AF0D13L,(-1L),0x614F4ECA2671C6DFL},{0x73458DAC97AF0D13L,0x73458DAC97AF0D13L,(-1L),0x614F4ECA2671C6DFL}};
        int32_t l_793[5][1][9] = {{{0x194527B4L,(-1L),0x3B292604L,(-1L),0x194527B4L,0x194527B4L,(-1L),0x3B292604L,(-1L)}},{{0x194527B4L,(-1L),0x3B292604L,(-1L),0x194527B4L,0x194527B4L,(-1L),0x3B292604L,(-1L)}},{{0x194527B4L,(-1L),0x3B292604L,(-1L),0x194527B4L,0x194527B4L,(-1L),0x3B292604L,(-1L)}},{{0x194527B4L,(-1L),0x3B292604L,(-1L),0x194527B4L,0x194527B4L,(-1L),0x3B292604L,(-1L)}},{{0x194527B4L,(-1L),0x3B292604L,(-1L),0x194527B4L,0x194527B4L,(-1L),0x3B292604L,(-1L)}}};
        uint32_t l_796 = 4294967295UL;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_489[i] = 0UL;
lbl_600:
        for (p_2146->g_275 = 0; (p_2146->g_275 <= 1); p_2146->g_275 += 1)
        { /* block id: 210 */
            int16_t l_452 = 0L;
            int32_t *l_454 = &p_2146->g_116;
            int32_t *l_455 = &p_2146->g_350[1][6][3];
            int32_t *l_456 = &p_2146->g_71;
            int32_t *l_457 = &p_2146->g_116;
            int32_t *l_458 = &p_2146->g_116;
            int32_t *l_459 = &p_2146->g_71;
            int32_t *l_460 = &p_2146->g_350[1][6][3];
            int32_t *l_461 = &p_2146->g_71;
            int32_t *l_462 = &p_2146->g_71;
            int32_t *l_463[2];
            uint32_t l_468 = 0UL;
            int i;
            for (i = 0; i < 2; i++)
                l_463[i] = &p_2146->g_350[1][6][3];
            p_2146->g_116 &= (safe_div_func_int32_t_s_s(l_452, 0xEC679FACL));
            l_468--;
            return p_2146->g_167;
        }
        for (p_43 = 9; (p_43 <= 51); p_43++)
        { /* block id: 217 */
            int32_t l_481 = 5L;
            int32_t l_488 = 0x61C65C00L;
            uint64_t *l_515 = &p_2146->g_242;
            uint8_t l_595 = 0x4EL;
            int32_t *l_597[8] = {&p_2146->g_186,&p_2146->g_186,&p_2146->g_186,&p_2146->g_186,&p_2146->g_186,&p_2146->g_186,&p_2146->g_186,&p_2146->g_186};
            uint32_t l_693 = 4294967289UL;
            int16_t **l_736 = &l_449;
            int32_t l_753 = 0x300AA638L;
            int32_t l_755 = 8L;
            int32_t *l_762 = (void*)0;
            int32_t l_794[5];
            int i;
            for (i = 0; i < 5; i++)
                l_794[i] = 0x7A59C2F8L;
            if ((0x8CL >= ((l_465 <= (((safe_div_func_uint8_t_u_u(((4294967292UL && p_2146->g_102) & ((safe_lshift_func_int16_t_s_s(p_2146->g_186, (((safe_lshift_func_uint8_t_u_s((l_488 |= (((((safe_sub_func_uint16_t_u_u(((l_481 & (safe_add_func_uint64_t_u_u((l_481 < l_464), (safe_rshift_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s((((void*)0 == l_449) , p_2146->g_326), p_2146->g_208[7])) , p_46), 4))))) <= p_44), l_481)) != l_453[3]) || 0x09C78555L) && 0x0AA1DE2095CA8796L) < p_45)), 2)) & l_489[1]) < l_464))) || 0xB21F53E24415D568L)), p_43)) , l_466) && 0x9099L)) || FAKE_DIVERGE(p_2146->local_1_offset, get_local_id(1), 10))))
            { /* block id: 219 */
                int32_t *l_490 = &p_2146->g_350[0][2][0];
                uint32_t *l_495 = (void*)0;
                uint32_t **l_494 = &l_495;
                int32_t *l_496 = &p_2146->g_116;
                ++p_2146->g_491;
                (*l_496) &= (((void*)0 != l_494) , ((*l_490) = 0L));
            }
            else
            { /* block id: 223 */
                uint32_t l_522 = 1UL;
                int32_t l_557 = 0x5ECB3922L;
                int32_t *l_563 = (void*)0;
                for (p_2146->g_71 = 0; (p_2146->g_71 <= 8); p_2146->g_71 += 1)
                { /* block id: 226 */
                    int16_t l_521 = 0L;
                    int32_t l_523 = 1L;
                    uint32_t l_524 = 0UL;
                    int32_t l_551 = 5L;
                    for (p_2146->g_384 = 0; (p_2146->g_384 <= 2); p_2146->g_384 += 1)
                    { /* block id: 229 */
                        int32_t *l_525 = (void*)0;
                        int32_t *l_526 = &p_2146->g_186;
                        int32_t **l_527 = &p_2146->g_115;
                        uint16_t *l_536 = (void*)0;
                        uint16_t *l_537 = &p_2146->g_491;
                        uint16_t *l_542 = &p_2146->g_208[0];
                        int32_t *l_550[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        l_524 = ((((safe_rshift_func_int8_t_s_s((l_489[p_2146->g_384] > (safe_lshift_func_uint8_t_u_s(p_43, ((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_2146->local_0_offset, get_local_id(0), 10), (p_46 , ((((safe_rshift_func_int16_t_s_u((l_523 = ((*l_449) = (safe_div_func_int32_t_s_s(p_44, ((safe_rshift_func_uint8_t_u_s((((safe_lshift_func_int16_t_s_u((safe_sub_func_uint64_t_u_u(7UL, (safe_rshift_func_int16_t_s_s((-1L), (((((((l_515 == ((safe_add_func_int32_t_s_s(((++(*l_515)) && ((p_46 > (!((!((((p_2146->g_119 , p_46) ^ l_520[4]) | l_521) != p_2146->g_186)) == 0x03EBL))) <= p_45)), p_43)) , (void*)0)) == p_46) != p_2146->g_102) | GROUP_DIVERGE(1, 1)) , l_453[2]) != l_522) & p_44))))), p_44)) <= 0x5246L) , GROUP_DIVERGE(1, 1)), 7)) && 0x76CAL))))), 8)) , p_2146->g_350[0][7][5]) , p_45) , l_481)))) < FAKE_DIVERGE(p_2146->global_0_offset, get_global_id(0), 10))))), 1)) || 1L) | 0L) | 0xC5DC76EEL);
                        (*l_527) = &l_488;
                        l_551 |= ((safe_add_func_int16_t_s_s((safe_mod_func_int16_t_s_s(l_481, ((p_43 > ((l_523 = (((l_488 >= ((safe_sub_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u(((*l_537) = FAKE_DIVERGE(p_2146->global_1_offset, get_global_id(1), 10)), (safe_mod_func_int64_t_s_s(0L, (p_45 , 0x30A822D42B85DC91L))))), ((safe_add_func_uint16_t_u_u(((*l_542) = p_45), (safe_unary_minus_func_int64_t_s(((safe_div_func_uint32_t_u_u((((safe_add_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((l_464 && (p_2146->g_138 > l_488)), p_44)), p_46)) == 7L) > (-1L)), l_481)) & p_2146->g_445))))) , 0x76F64FF203BADEFEL))) || p_45)) >= p_2146->g_167) | (**l_527))) & 5L)) ^ 0xD368L))), (-1L))) < p_2146->g_3);
                    }
                }
                p_2146->g_71 = l_522;
                for (p_44 = 0; (p_44 <= 24); p_44 = safe_add_func_uint32_t_u_u(p_44, 5))
                { /* block id: 245 */
                    int32_t *l_556 = &p_2146->g_71;
                    uint64_t **l_558 = &l_515;
                    int32_t **l_560 = &l_556;
                    (*l_556) &= (safe_add_func_int8_t_s_s((l_557 = ((((p_2146->g_115 = l_556) == (void*)0) , (void*)0) != (void*)0)), ((FAKE_DIVERGE(p_2146->global_1_offset, get_global_id(1), 10) , ((*l_558) = l_515)) != l_559[1][7])));
                    if ((*p_2146->g_115))
                        break;
                    (*l_560) = l_556;
                    for (l_464 = 0; (l_464 != 0); l_464 = safe_add_func_uint32_t_u_u(l_464, 2))
                    { /* block id: 254 */
                        return p_2146->g_275;
                    }
                }
                l_563 = (l_488 , &p_2146->g_3);
            }
            if (l_489[1])
            { /* block id: 260 */
                uint64_t *l_573[9][8] = {{&p_2146->g_242,&p_2146->g_242,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_242},{&p_2146->g_242,&p_2146->g_242,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_242},{&p_2146->g_242,&p_2146->g_242,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_242},{&p_2146->g_242,&p_2146->g_242,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_242},{&p_2146->g_242,&p_2146->g_242,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_242},{&p_2146->g_242,&p_2146->g_242,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_242},{&p_2146->g_242,&p_2146->g_242,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_242},{&p_2146->g_242,&p_2146->g_242,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_242},{&p_2146->g_242,&p_2146->g_242,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_384,&p_2146->g_242,&p_2146->g_242}};
                int32_t l_577 = (-1L);
                int32_t **l_677 = (void*)0;
                int32_t **l_678 = (void*)0;
                int32_t **l_679[9][3][1] = {{{&p_2146->g_115},{&p_2146->g_115},{&p_2146->g_115}},{{&p_2146->g_115},{&p_2146->g_115},{&p_2146->g_115}},{{&p_2146->g_115},{&p_2146->g_115},{&p_2146->g_115}},{{&p_2146->g_115},{&p_2146->g_115},{&p_2146->g_115}},{{&p_2146->g_115},{&p_2146->g_115},{&p_2146->g_115}},{{&p_2146->g_115},{&p_2146->g_115},{&p_2146->g_115}},{{&p_2146->g_115},{&p_2146->g_115},{&p_2146->g_115}},{{&p_2146->g_115},{&p_2146->g_115},{&p_2146->g_115}},{{&p_2146->g_115},{&p_2146->g_115},{&p_2146->g_115}}};
                int i, j, k;
                for (p_2146->g_186 = (-26); (p_2146->g_186 > (-1)); ++p_2146->g_186)
                { /* block id: 263 */
                    uint32_t **l_570 = (void*)0;
                    int32_t l_574 = 0L;
                    uint8_t *l_578 = (void*)0;
                    uint8_t *l_579 = &p_2146->g_275;
                    uint16_t l_601 = 0xC8EFL;
                    if ((0x0C84L <= (safe_add_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_u(((void*)0 != l_570), ((*l_579) = ((safe_lshift_func_int16_t_s_u((l_559[3][6] != l_573[6][6]), (l_574 > p_43))) == ((safe_lshift_func_int16_t_s_u(l_577, 6)) , p_43))))) & 0x3BF3BE16L), 0x48729774A751B289L))))
                    { /* block id: 265 */
                        int32_t *l_580 = (void*)0;
                        int32_t *l_581 = &l_481;
                        int32_t *l_582 = &l_467;
                        int32_t *l_583[4] = {&l_481,&l_481,&l_481,&l_481};
                        uint16_t *l_589 = (void*)0;
                        uint16_t *l_590 = &p_2146->g_208[7];
                        int32_t *l_598 = &p_2146->g_599;
                        int i;
                        l_584++;
                        l_577 = 0L;
                        (*l_581) = (((*l_598) = ((safe_mul_func_uint16_t_u_u(((((l_574 >= 0UL) != (p_2146->g_104 , (((((*l_590) = 65535UL) >= (safe_add_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u(p_44, p_2146->g_116)), ((l_595 , l_596[3]) == l_597[0])))) , GROUP_DIVERGE(1, 1)) & 0x282494DBL))) && p_2146->g_326) && p_2146->g_186), l_488)) , p_44)) , 1L);
                        return p_43;
                    }
                    else
                    { /* block id: 272 */
                        if (p_2146->g_104)
                            goto lbl_600;
                        return l_601;
                    }
                }
                for (p_2146->g_116 = (-27); (p_2146->g_116 > (-2)); p_2146->g_116++)
                { /* block id: 279 */
                    uint8_t l_604 = 255UL;
                    int64_t *l_613 = &l_280[3][2][2];
                    int64_t **l_612[4][8] = {{(void*)0,&l_613,&l_613,&l_613,&l_613,&l_613,(void*)0,&l_613},{(void*)0,&l_613,&l_613,&l_613,&l_613,&l_613,(void*)0,&l_613},{(void*)0,&l_613,&l_613,&l_613,&l_613,&l_613,(void*)0,&l_613},{(void*)0,&l_613,&l_613,&l_613,&l_613,&l_613,(void*)0,&l_613}};
                    int8_t *l_620 = &l_453[2];
                    uint16_t *l_643[6][10][4] = {{{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]}},{{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]}},{{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]}},{{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]}},{{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]}},{{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]},{&p_2146->g_208[0],&p_2146->g_208[0],&p_2146->g_208[4],&p_2146->g_208[4]}}};
                    int i, j, k;
                    if (l_604)
                    { /* block id: 280 */
                        p_2146->g_115 = &l_577;
                        if (l_466)
                            break;
                        if (p_45)
                            break;
                    }
                    else
                    { /* block id: 284 */
                        int32_t *l_605 = &l_520[2];
                        (*l_605) &= (-10L);
                    }
                    l_488 = ((safe_lshift_func_int16_t_s_u((+(safe_rshift_func_int16_t_s_u((l_488 >= ((l_615 = (p_2146->g_614 = (void*)0)) != (void*)0)), ((((safe_mul_func_int16_t_s_s((((p_2146->g_119 != (safe_sub_func_uint32_t_u_u((0x6FL == l_604), (GROUP_DIVERGE(0, 1) , (((*l_620) ^= ((p_43 == (0x5E292E1FL && (1UL || 65535UL))) < p_46)) <= l_604))))) > p_46) & 65535UL), p_2146->g_98[3][0])) != p_2146->g_275) == p_2146->g_350[1][8][0]) , p_2146->g_138)))), 12)) , l_481);
                    if (((((((p_2146->g_417 <= ((safe_lshift_func_int8_t_s_u(((safe_sub_func_uint64_t_u_u(((+(safe_div_func_int32_t_s_s((l_515 == l_573[6][6]), (safe_div_func_int16_t_s_s((-1L), (safe_add_func_int32_t_s_s((safe_unary_minus_func_int16_t_s(((safe_div_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_2146->global_2_offset, get_global_id(2), 10), (safe_unary_minus_func_uint16_t_u((safe_mul_func_int8_t_s_s((!(-10L)), (safe_sub_func_int8_t_s_s((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), ((((l_577 = GROUP_DIVERGE(2, 1)) || (((safe_mod_func_uint64_t_u_u((((p_2146->g_654 |= (safe_sub_func_uint8_t_u_u((p_45 < (((((safe_rshift_func_uint16_t_u_u(p_44, 15)) > p_46) == ((safe_lshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((0x74E9L < p_2146->g_186) , 0xA5BFDEDE55616D72L), p_43)), 13)) <= 0x598D92024A39DC0AL)) || 0x44C9L) || p_2146->g_116)), p_2146->g_98[4][1]))) , p_2146->g_350[1][6][3]) , l_577), p_44)) <= p_2146->g_71) , 5UL)) & p_2146->g_384) , 0xFA2FD428L))), p_2146->g_138)))))))), GROUP_DIVERGE(2, 1))) && GROUP_DIVERGE(0, 1)))), p_2146->g_491))))))) || 1UL), 0x58F47A48975C498EL)) , 0x6FL), p_43)) , l_577)) & l_481) | p_46) , p_2146->g_445) && p_2146->g_599) | 4294967295UL))
                    { /* block id: 293 */
                        p_2146->g_115 = &p_2146->g_71;
                    }
                    else
                    { /* block id: 295 */
                        int64_t **l_660 = &l_613;
                        uint64_t ***l_668 = &l_667;
                        int8_t l_669[8][2] = {{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}};
                        int32_t *l_670[1][3];
                        int8_t *l_676 = (void*)0;
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_670[i][j] = &l_577;
                        }
                        p_2146->g_350[1][5][2] ^= (safe_mod_func_int64_t_s_s(((safe_unary_minus_func_uint64_t_u(((((safe_rshift_func_uint16_t_u_u(((void*)0 != l_660), 11)) && (((p_2146->g_104 = ((*l_620) = (((l_488 = ((((l_481 = (0L ^ (safe_mod_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u((~GROUP_DIVERGE(1, 1)), ((p_2146->g_665 != ((*l_668) = l_667)) >= l_669[1][1]))) & p_2146->g_98[7][3]), p_2146->g_417)))) && (safe_sub_func_int64_t_s_s((safe_sub_func_uint16_t_u_u((0UL ^ (**p_2146->g_665)), p_2146->g_675)), 0x759E827AB3BDDB73L))) , p_44) >= p_44)) & p_46) || 65532UL))) | p_2146->g_116) ^ FAKE_DIVERGE(p_2146->group_2_offset, get_group_id(2), 10))) , p_46) ^ 1UL))) == 0x8002L), 18446744073709551608UL));
                        if (p_2146->g_119)
                            continue;
                        l_465 = p_44;
                    }
                }
                p_2146->g_115 = &l_481;
                return p_46;
            }
            else
            { /* block id: 308 */
                uint8_t *l_686 = &p_2146->g_228;
                int32_t l_699 = 0x1B969DCEL;
                int32_t l_717 = 0x3139EAE2L;
                uint32_t *l_740 = &l_693;
                if (((safe_div_func_int64_t_s_s(((l_466 ^ (18446744073709551608UL || (FAKE_DIVERGE(p_2146->global_0_offset, get_global_id(0), 10) , ((void*)0 != &p_2146->g_186)))) || l_595), ((((((safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u(((*l_449) = (l_489[1] >= ((--(*l_686)) > ((safe_add_func_uint32_t_u_u(((p_2146->g_691 != (void*)0) ^ 1UL), p_45)) , l_481)))), p_46)), 5)) | p_2146->g_384) >= 0x6FE1D7FAADC17418L) | (-1L)) <= p_43) && p_44))) >= l_693))
                { /* block id: 311 */
                    uint64_t ****l_696 = &p_2146->g_694[1];
                    uint64_t ***l_698 = &l_667;
                    uint64_t ****l_697 = &l_698;
                    if (((((*l_686) = 1UL) && (((*l_696) = p_2146->g_694[1]) == ((*l_697) = (p_45 , &p_2146->g_695[1][6])))) >= l_699))
                    { /* block id: 315 */
                        uint32_t l_700 = 4294967295UL;
                        if (p_46)
                            break;
                        if (l_700)
                            break;
                    }
                    else
                    { /* block id: 318 */
                        int32_t **l_701 = &p_2146->g_115;
                        int32_t *l_718 = (void*)0;
                        int32_t *l_719 = &l_717;
                        if (p_2146->g_48)
                            goto lbl_600;
                        l_699 ^= l_453[1];
                        (*l_701) = &l_488;
                        (*l_719) = (safe_div_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s(((((safe_mod_func_int64_t_s_s(6L, ((*p_2146->g_614) = ((p_44 = (((**l_701) = (*p_2146->g_115)) || (safe_add_func_uint32_t_u_u(((safe_add_func_int32_t_s_s(((safe_sub_func_int32_t_s_s(l_481, (l_693 == 4294967286UL))) > (l_699 = l_453[4])), (safe_rshift_func_uint16_t_u_u(p_2146->g_716, p_44)))) != p_44), 4294967294UL)))) | l_717)))) < p_46) < p_43) > p_2146->g_71), 1)) && 0x18B4E166L), p_2146->g_3));
                    }
                    for (p_44 = 3; (p_44 >= 0); p_44 -= 1)
                    { /* block id: 330 */
                        int32_t *l_720 = &p_2146->g_116;
                        l_720 = &l_464;
                    }
                    return p_2146->g_242;
                }
                else
                { /* block id: 334 */
                    int16_t l_724 = 6L;
                    int32_t **l_725 = (void*)0;
                    l_699 &= (l_723 |= (safe_div_func_int32_t_s_s(p_45, 0xDD01520AL)));
                    p_2146->g_115 = &p_2146->g_116;
                    for (l_584 = 0; (l_584 > 42); ++l_584)
                    { /* block id: 341 */
                        if (p_44)
                            break;
                        if ((*p_2146->g_115))
                            break;
                        (*p_2146->g_115) |= (safe_div_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_u(p_2146->g_242, 0)) , ((l_488 || (((safe_mod_func_int32_t_s_s((l_736 == &p_2146->g_388), (safe_rshift_func_uint8_t_u_s((((0x49B1E919A7B2DF01L > GROUP_DIVERGE(1, 1)) , (void*)0) == l_736), p_44)))) > ((l_739 , 1UL) >= 0x1A3B7ACDL)) == (*p_2146->g_614))) != 1L)), p_45));
                    }
                    if ((*p_2146->g_115))
                        continue;
                }
                (*p_2146->g_115) ^= (l_740 == (void*)0);
            }
            for (l_467 = 3; (l_467 >= 0); l_467 -= 1)
            { /* block id: 352 */
                int32_t *l_741 = &l_739;
                int32_t *l_742 = &p_2146->g_350[0][7][0];
                int32_t *l_743 = &l_520[1];
                int32_t *l_744 = &p_2146->g_116;
                int32_t *l_745 = &l_739;
                int32_t *l_746 = (void*)0;
                int32_t *l_747 = &p_2146->g_350[1][6][3];
                int32_t *l_748 = &l_481;
                int32_t *l_749 = &l_520[4];
                int32_t *l_750 = &p_2146->g_350[1][1][2];
                int32_t *l_751 = &p_2146->g_350[1][6][3];
                int32_t *l_752[9][8] = {{&l_464,&l_464,&l_465,&l_488,&p_2146->g_350[1][6][3],&l_488,&l_465,&l_464},{&l_464,&l_464,&l_465,&l_488,&p_2146->g_350[1][6][3],&l_488,&l_465,&l_464},{&l_464,&l_464,&l_465,&l_488,&p_2146->g_350[1][6][3],&l_488,&l_465,&l_464},{&l_464,&l_464,&l_465,&l_488,&p_2146->g_350[1][6][3],&l_488,&l_465,&l_464},{&l_464,&l_464,&l_465,&l_488,&p_2146->g_350[1][6][3],&l_488,&l_465,&l_464},{&l_464,&l_464,&l_465,&l_488,&p_2146->g_350[1][6][3],&l_488,&l_465,&l_464},{&l_464,&l_464,&l_465,&l_488,&p_2146->g_350[1][6][3],&l_488,&l_465,&l_464},{&l_464,&l_464,&l_465,&l_488,&p_2146->g_350[1][6][3],&l_488,&l_465,&l_464},{&l_464,&l_464,&l_465,&l_488,&p_2146->g_350[1][6][3],&l_488,&l_465,&l_464}};
                uint64_t **l_768 = &l_559[6][0];
                int i, j;
                --p_2146->g_756;
                if (p_44)
                    break;
                for (p_2146->g_119 = 0; (p_2146->g_119 <= 3); p_2146->g_119 += 1)
                { /* block id: 357 */
                    int i, j, k;
                    l_759--;
                    (*l_750) = (-1L);
                    if (l_280[(p_2146->g_119 + 5)][l_467][(l_467 + 2)])
                        continue;
                }
                (*l_747) |= p_43;
                for (p_2146->g_756 = 0; (p_2146->g_756 <= 3); p_2146->g_756 += 1)
                { /* block id: 365 */
                    int32_t *l_765[1][5];
                    uint64_t ****l_782[4] = {&p_2146->g_694[0],&p_2146->g_694[0],&p_2146->g_694[0],&p_2146->g_694[0]};
                    int32_t l_786 = 0x5D304CF9L;
                    int32_t l_787 = (-1L);
                    int32_t l_790[4];
                    int32_t l_791 = 0x053D19DFL;
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_765[i][j] = (void*)0;
                    }
                    for (i = 0; i < 4; i++)
                        l_790[i] = 0x7E885E69L;
                    l_762 = &p_2146->g_116;
                    for (p_2146->g_116 = 3; (p_2146->g_116 >= 0); p_2146->g_116 -= 1)
                    { /* block id: 369 */
                        uint64_t ***l_769 = &p_2146->g_695[1][6];
                        int8_t *l_772 = &l_754;
                        uint64_t **l_781 = &p_2146->g_297[7];
                        uint16_t *l_783 = (void*)0;
                        uint16_t *l_784 = &p_2146->g_491;
                        int32_t **l_785 = &l_752[5][7];
                        int32_t l_788 = 0x70731108L;
                        int32_t l_792 = (-5L);
                        int32_t l_795[7] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
                        int i, j, k;
                        (*l_745) ^= (safe_sub_func_uint8_t_u_u(l_280[(p_2146->g_756 + 5)][p_2146->g_756][l_467], ((((void*)0 == l_765[0][4]) == ((safe_div_func_int16_t_s_s(l_280[(p_2146->g_756 + 4)][p_2146->g_756][(p_2146->g_116 + 2)], (((((*l_769) = l_768) != ((((*l_772) = (safe_rshift_func_int16_t_s_u(l_280[l_467][p_2146->g_756][(p_2146->g_756 + 2)], 6))) > (*l_750)) , &l_559[5][0])) < ((((safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(0x809A70E5L, l_489[0])), 255UL)) && 0x610D1DF9L) | l_280[(p_2146->g_756 + 4)][p_2146->g_756][(p_2146->g_116 + 2)]) <= 0x077B943A44863D77L)) , (-1L)))) > p_43)) != p_2146->g_228)));
                        (*l_748) ^= (0x2FD1L < (safe_add_func_int32_t_s_s((((*l_784) = (safe_sub_func_uint32_t_u_u((0x64L && (((void*)0 != l_781) , (p_46 <= (&p_2146->g_694[1] == l_782[2])))), 0x508DE389L))) <= p_45), (*l_762))));
                        (*l_785) = &p_2146->g_116;
                        ++l_796;
                    }
                    if ((*l_744))
                        continue;
                }
            }
            if ((*p_2146->g_115))
                break;
        }
    }
    else
    { /* block id: 383 */
        int32_t *l_799 = &p_2146->g_350[1][6][2];
        int32_t *l_800 = &p_2146->g_350[1][6][3];
        int32_t **l_801[7] = {&l_800,&l_799,&l_800,&l_800,&l_799,&l_800,&l_800};
        int32_t *l_802 = &p_2146->g_71;
        uint32_t *l_803 = &p_2146->g_167;
        int16_t *l_807 = &p_2146->g_124;
        int i;
        l_800 = (l_799 = (void*)0);
        l_802 = &p_2146->g_116;
        p_2146->g_115 = &p_2146->g_350[0][0][0];
        p_2146->g_115 = ((0L || (0UL && (((*l_803) = p_2146->g_675) , l_804))) , func_72((l_805 == (((void*)0 != l_807) , &p_2146->g_692)), p_2146));
    }
    for (p_2146->g_654 = 0; (p_2146->g_654 <= (-5)); --p_2146->g_654)
    { /* block id: 393 */
        uint64_t ***l_813 = &l_812;
        uint64_t **l_815[8] = {&p_2146->g_297[2],&p_2146->g_297[2],&p_2146->g_297[2],&p_2146->g_297[2],&p_2146->g_297[2],&p_2146->g_297[2],&p_2146->g_297[2],&p_2146->g_297[2]};
        uint64_t ***l_814 = &l_815[5];
        uint8_t *l_819 = (void*)0;
        uint8_t *l_820[7] = {&p_2146->g_119,&p_2146->g_119,&p_2146->g_119,&p_2146->g_119,&p_2146->g_119,&p_2146->g_119,&p_2146->g_119};
        int32_t *l_823 = &l_520[5];
        int i;
        p_2146->g_116 = ((*l_823) |= (safe_mul_func_int16_t_s_s((p_2146->g_71 , (((((*l_813) = l_812) == ((*l_814) = &p_2146->g_297[6])) , &l_804) == &l_804)), (safe_unary_minus_func_uint64_t_u((p_45 , (safe_lshift_func_uint8_t_u_u((--p_2146->g_756), 2))))))));
    }
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_2146->g_116
 * writes: p_2146->g_297 p_2146->g_116
 */
int16_t  func_54(int32_t ** p_55, int32_t ** p_56, struct S0 * p_2146)
{ /* block id: 149 */
    uint64_t *l_296[4];
    int32_t *l_298 = &p_2146->g_116;
    int16_t *l_313 = &p_2146->g_124;
    uint8_t *l_327 = &p_2146->g_275;
    uint16_t *l_328 = &p_2146->g_208[5];
    int8_t *l_329[5][4] = {{&p_2146->g_104,&p_2146->g_104,&p_2146->g_104,&p_2146->g_104},{&p_2146->g_104,&p_2146->g_104,&p_2146->g_104,&p_2146->g_104},{&p_2146->g_104,&p_2146->g_104,&p_2146->g_104,&p_2146->g_104},{&p_2146->g_104,&p_2146->g_104,&p_2146->g_104,&p_2146->g_104},{&p_2146->g_104,&p_2146->g_104,&p_2146->g_104,&p_2146->g_104}};
    int32_t l_330 = 0x526DE1A9L;
    int32_t *l_331 = &p_2146->g_71;
    uint32_t l_351[10] = {0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L};
    int16_t *l_368 = &p_2146->g_326;
    uint16_t l_386 = 65531UL;
    int32_t l_408[10] = {5L,7L,(-1L),7L,5L,5L,7L,(-1L),7L,5L};
    int i, j;
    for (i = 0; i < 4; i++)
        l_296[i] = &p_2146->g_48;
    (*l_298) &= ((p_2146->g_297[6] = l_296[2]) != (void*)0);
    return (*l_298);
}


/* ------------------------------------------ */
/* 
 * reads : p_2146->g_116
 * writes: p_2146->g_116
 */
int32_t ** func_58(int8_t  p_59, int32_t  p_60, uint64_t  p_61, struct S0 * p_2146)
{ /* block id: 144 */
    uint32_t l_283 = 4294967295UL;
    int32_t *l_286 = &p_2146->g_116;
    uint64_t *l_289 = &p_2146->g_48;
    uint32_t *l_295 = &p_2146->g_98[3][0];
    uint32_t **l_294 = &l_295;
    (*l_286) |= ((((*l_294) = &p_2146->g_98[3][0]) != (void*)0) > p_59);
    return &p_2146->g_115;
}


/* ------------------------------------------ */
/* 
 * reads : p_2146->g_48 p_2146->g_81 p_2146->g_71 p_2146->g_98 p_2146->g_3 p_2146->g_102 p_2146->g_116 p_2146->g_119 p_2146->g_115 p_2146->g_104 p_2146->g_167 p_2146->g_186 p_2146->g_124 p_2146->g_228 p_2146->g_208 p_2146->g_242 p_2146->g_275
 * writes: p_2146->g_48 p_2146->g_71 p_2146->g_98 p_2146->g_102 p_2146->g_115 p_2146->g_119 p_2146->g_104 p_2146->g_124 p_2146->g_116 p_2146->g_138 p_2146->g_167 p_2146->g_186 p_2146->g_208 p_2146->g_228 p_2146->g_242 p_2146->g_275
 */
int32_t ** func_66(int32_t * p_67, struct S0 * p_2146)
{ /* block id: 33 */
    uint64_t l_70[9][5] = {{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL}};
    uint32_t l_106[1];
    int32_t *l_107[8][2][8] = {{{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0},{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0}},{{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0},{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0}},{{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0},{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0}},{{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0},{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0}},{{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0},{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0}},{{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0},{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0}},{{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0},{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0}},{{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0},{&p_2146->g_71,&p_2146->g_71,(void*)0,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,&p_2146->g_71,(void*)0}}};
    int64_t *l_238 = &p_2146->g_102;
    uint32_t *l_243[3];
    int32_t **l_270 = (void*)0;
    int32_t l_274 = 1L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_106[i] = 0xF7C0E051L;
    for (i = 0; i < 3; i++)
        l_243[i] = &p_2146->g_98[3][0];
    for (p_2146->g_48 = 28; (p_2146->g_48 <= 60); ++p_2146->g_48)
    { /* block id: 36 */
        int32_t l_92 = 0L;
        int32_t l_105 = 0x4A4F5E2AL;
        int8_t *l_233 = &p_2146->g_104;
        int64_t *l_234 = (void*)0;
        int64_t **l_235 = &l_234;
        int64_t *l_237 = &p_2146->g_102;
        int64_t **l_236 = &l_237;
        int32_t **l_266 = (void*)0;
        for (p_2146->g_71 = 4; (p_2146->g_71 >= 0); p_2146->g_71 -= 1)
        { /* block id: 39 */
            uint32_t *l_97 = &p_2146->g_98[3][0];
            int64_t *l_101 = &p_2146->g_102;
            int8_t *l_103[5][10][1] = {{{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104}},{{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104}},{{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104}},{{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104}},{{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104},{&p_2146->g_104}}};
            int32_t **l_223 = &p_2146->g_115;
            int i, j, k;
            (*l_223) = func_72(((+func_74(((safe_div_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((void*)0 != p_2146->g_81), 8)), (((safe_rshift_func_int16_t_s_u((~(safe_mul_func_int8_t_s_s(l_70[(p_2146->g_71 + 2)][p_2146->g_71], p_2146->g_48))), 4)) , ((safe_sub_func_int8_t_s_s((((safe_sub_func_int8_t_s_s((l_105 &= ((safe_rshift_func_int16_t_s_s(l_92, l_70[(p_2146->g_71 + 2)][p_2146->g_71])) & ((((*l_101) ^= ((~(safe_lshift_func_uint16_t_u_u(l_70[(p_2146->g_71 + 2)][p_2146->g_71], (((safe_rshift_func_int8_t_s_s(((((--(*l_97)) , &p_67) != &p_67) && p_2146->g_71), 7)) >= p_2146->g_3) , l_92)))) , p_2146->g_3)) == p_2146->g_71) >= l_92))), (-5L))) & (*p_67)) & l_70[7][4]), p_2146->g_48)) >= p_2146->g_3)) && 0x85202676B60554FBL))) && l_106[0]), l_107[0][0][0], p_2146)) , p_2146->g_119), p_2146);
            l_105 = 0x31F63CB3L;
            (*l_223) = l_107[0][0][0];
        }
        if ((safe_mod_func_int16_t_s_s(0x32CDL, (safe_mul_func_int16_t_s_s((p_2146->g_48 < ((((*l_236) = ((p_2146->g_228--) , ((*l_235) = ((safe_rshift_func_int8_t_s_s(((l_233 == (void*)0) & 0UL), (l_105 , (-1L)))) , l_234)))) == l_238) > p_2146->g_104)), l_92)))))
        { /* block id: 113 */
            uint32_t l_240 = 4294967288UL;
            int32_t l_241 = 6L;
            for (p_2146->g_116 = 0; (p_2146->g_116 <= 4); p_2146->g_116 += 1)
            { /* block id: 116 */
                int64_t l_239 = 0x7B6CD3ABC8045654L;
                for (p_2146->g_167 = 0; (p_2146->g_167 <= 6); p_2146->g_167 += 1)
                { /* block id: 119 */
                    l_239 = (-1L);
                }
            }
            l_241 &= (((p_2146->g_186 , l_92) , p_2146->g_208[0]) > l_240);
            if (p_2146->g_242)
                continue;
            p_2146->g_116 = (l_243[2] != (void*)0);
        }
        else
        { /* block id: 126 */
            int64_t l_264 = 0x3EBE0A84230E6226L;
            uint16_t *l_271[4][10][5] = {{{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]}},{{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]}},{{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]}},{{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]},{&p_2146->g_208[7],&p_2146->g_208[2],&p_2146->g_208[0],(void*)0,&p_2146->g_208[0]}}};
            int32_t l_272 = 1L;
            int32_t l_273 = (-1L);
            int i, j, k;
            for (p_2146->g_242 = 0; (p_2146->g_242 != 8); p_2146->g_242 = safe_add_func_uint8_t_u_u(p_2146->g_242, 2))
            { /* block id: 129 */
                uint32_t l_265 = 5UL;
                int32_t ***l_267 = &l_266;
                int32_t **l_269 = &l_107[5][1][6];
                int32_t ***l_268[1][2][8] = {{{&l_269,&l_269,&l_269,&l_269,&l_269,&l_269,&l_269,&l_269},{&l_269,&l_269,&l_269,&l_269,&l_269,&l_269,&l_269,&l_269}}};
                int i, j, k;
                l_105 = (safe_lshift_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((((safe_mul_func_uint16_t_u_u((&p_2146->g_115 != (l_270 = ((*l_267) = ((((((safe_add_func_uint64_t_u_u((p_2146->g_228 | (safe_sub_func_int32_t_s_s((l_92 & (((safe_add_func_uint32_t_u_u(0xF64CF5CFL, ((p_2146->g_167 <= (p_2146->g_119 && p_2146->g_116)) > ((0L && ((((safe_div_func_uint32_t_u_u(((safe_mod_func_int64_t_s_s(((((((*l_233) = ((FAKE_DIVERGE(p_2146->global_1_offset, get_global_id(1), 10) , l_264) , p_2146->g_208[0])) | 255UL) && 7UL) && l_92) && 0x954C1D8A302A7C8BL), p_2146->g_71)) == p_2146->g_242), 1L)) , (-3L)) , l_265) & p_2146->g_71)) >= p_2146->g_71)))) , l_266) == &p_67)), 4294967295UL))), 0x0878E13C531C8147L)) && l_265) <= p_2146->g_98[3][0]) , p_2146->g_98[1][0]) , l_265) , (void*)0)))), FAKE_DIVERGE(p_2146->global_0_offset, get_global_id(0), 10))) , p_2146->g_71) < l_264), 18446744073709551615UL)), p_2146->g_208[0]));
            }
            if ((*p_67))
                break;
            l_273 = (p_2146->g_242 > (p_2146->g_228 | (l_272 = 65526UL)));
        }
        p_2146->g_71 = 0x09B40156L;
    }
    p_2146->g_275--;
    return &p_2146->g_115;
}


/* ------------------------------------------ */
/* 
 * reads : p_2146->g_119 p_2146->g_116 p_2146->g_115 p_2146->g_3 p_2146->g_167 p_2146->g_104 p_2146->g_48 p_2146->g_71 p_2146->g_186 p_2146->g_124 p_2146->g_98 p_2146->g_102 p_2146->g_350
 * writes: p_2146->g_119 p_2146->g_104 p_2146->g_116 p_2146->g_167 p_2146->g_138 p_2146->g_186 p_2146->g_124 p_2146->g_208
 */
int32_t * func_72(int32_t  p_73, struct S0 * p_2146)
{ /* block id: 59 */
    int16_t l_148[9][5][4] = {{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}}};
    uint64_t l_151 = 0UL;
    uint32_t *l_154 = &p_2146->g_98[3][0];
    uint32_t *l_155 = &p_2146->g_98[4][4];
    uint8_t *l_156 = &p_2146->g_119;
    int8_t *l_157 = (void*)0;
    int8_t *l_158 = &p_2146->g_104;
    int32_t *l_159[8][3] = {{(void*)0,&p_2146->g_116,(void*)0},{(void*)0,&p_2146->g_116,(void*)0},{(void*)0,&p_2146->g_116,(void*)0},{(void*)0,&p_2146->g_116,(void*)0},{(void*)0,&p_2146->g_116,(void*)0},{(void*)0,&p_2146->g_116,(void*)0},{(void*)0,&p_2146->g_116,(void*)0},{(void*)0,&p_2146->g_116,(void*)0}};
    uint32_t *l_166 = &p_2146->g_167;
    uint8_t *l_172 = &p_2146->g_138;
    int64_t l_183 = 8L;
    int16_t l_184 = 0L;
    int32_t *l_185 = &p_2146->g_186;
    int i, j, k;
lbl_195:
    p_2146->g_116 |= ((safe_add_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u(((*l_158) = (safe_mod_func_uint8_t_u_u(((*l_156) ^= ((((safe_add_func_int32_t_s_s(((l_148[4][2][3] > (p_73 , 0x9534L)) , (safe_div_func_int64_t_s_s(p_73, l_151))), (safe_rshift_func_int16_t_s_u(((l_154 != ((&p_2146->g_124 == &l_148[4][2][3]) , l_155)) > p_73), 6)))) ^ l_148[4][2][3]) || l_148[4][2][3]) >= l_151)), l_148[4][3][3]))), 1)) <= l_148[4][2][3]), l_151)) == l_151);
    for (l_151 = (-16); (l_151 <= 6); ++l_151)
    { /* block id: 65 */
        uint32_t l_162 = 0UL;
        l_162 = (*p_2146->g_115);
        p_2146->g_116 = (-7L);
    }
    if (((((~(safe_div_func_uint32_t_u_u((safe_unary_minus_func_int16_t_s(((++(*l_166)) || (safe_div_func_int16_t_s_s(((((*l_172) = (((((void*)0 == &p_2146->g_81) || 6UL) < p_2146->g_104) == ((*l_156) = 0xE8L))) != p_73) | (((*l_185) = ((safe_mod_func_int32_t_s_s(p_73, (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_mod_func_int16_t_s_s(p_73, (safe_sub_func_int32_t_s_s(l_183, p_2146->g_48)))), l_184)), 6UL)))) != p_73)) , 1L)), p_2146->g_71))))), 0xCE45A5E4L))) != p_73) | 0UL) , p_73))
    { /* block id: 73 */
        uint8_t l_200 = 0xCBL;
        uint32_t l_209[7][5][6] = {{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}}};
        int32_t *l_220 = (void*)0;
        int i, j, k;
        for (p_2146->g_104 = 0; (p_2146->g_104 == 23); ++p_2146->g_104)
        { /* block id: 76 */
            int8_t l_203[4][8][1] = {{{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL}},{{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL}},{{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL}},{{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL}}};
            int32_t *l_221 = &p_2146->g_116;
            int i, j, k;
            for (l_184 = 0; (l_184 == (-1)); l_184 = safe_sub_func_int64_t_s_s(l_184, 1))
            { /* block id: 79 */
                for (p_2146->g_186 = (-22); (p_2146->g_186 <= (-9)); p_2146->g_186++)
                { /* block id: 82 */
                    for (p_2146->g_124 = (-12); (p_2146->g_124 != 27); p_2146->g_124 = safe_add_func_uint32_t_u_u(p_2146->g_124, 5))
                    { /* block id: 85 */
                        if (p_73)
                            break;
                    }
                }
                if (p_73)
                    break;
                if (p_2146->g_124)
                    goto lbl_195;
            }
            for (l_183 = (-29); (l_183 != 27); ++l_183)
            { /* block id: 94 */
                uint16_t *l_206 = (void*)0;
                uint16_t *l_207[6];
                int32_t l_218 = 1L;
                int32_t **l_219 = &l_159[1][2];
                int i;
                for (i = 0; i < 6; i++)
                    l_207[i] = &p_2146->g_208[0];
                (*l_219) = (((*l_172) = (((safe_sub_func_uint16_t_u_u((0x7C10FBB080F592F2L ^ l_200), (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), l_203[3][5][0])))) > (((((0x4479DD2C8B667AFDL == (0x7CB7L || (l_209[6][2][0] = (p_2146->g_208[5] = l_200)))) == (GROUP_DIVERGE(1, 1) <= (safe_lshift_func_int16_t_s_u((safe_add_func_int16_t_s_s(((void*)0 != &p_73), ((safe_rshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s((p_2146->g_124 < p_2146->g_98[3][0]), p_2146->g_116)), 2)) <= l_203[3][5][0]))), p_2146->g_167)))) < p_73) == 6UL) > p_2146->g_102)) ^ l_218)) , (void*)0);
                l_221 = l_220;
            }
        }
    }
    else
    { /* block id: 102 */
        int32_t *l_222 = (void*)0;
        return l_222;
    }
    return l_166;
}


/* ------------------------------------------ */
/* 
 * reads : p_2146->g_102 p_2146->g_116 p_2146->g_119 p_2146->g_115 p_2146->g_48 p_2146->g_71 p_2146->g_3 p_2146->g_104 p_2146->g_98
 * writes: p_2146->g_115 p_2146->g_119 p_2146->g_104 p_2146->g_124 p_2146->g_116 p_2146->g_138
 */
int32_t  func_74(int32_t  p_75, int32_t * p_76, struct S0 * p_2146)
{ /* block id: 43 */
    int32_t **l_112 = (void*)0;
    int32_t *l_114 = &p_2146->g_71;
    int32_t **l_113[2][3] = {{&l_114,&l_114,&l_114},{&l_114,&l_114,&l_114}};
    uint32_t l_117 = 0UL;
    uint8_t *l_118 = &p_2146->g_119;
    int8_t *l_122 = &p_2146->g_104;
    int16_t *l_123 = &p_2146->g_124;
    uint32_t *l_136 = &p_2146->g_98[3][2];
    int i, j;
    p_2146->g_116 = (safe_rshift_func_uint16_t_u_s((p_2146->g_102 == (+0x11538544L)), ((*l_123) = ((((((safe_mod_func_uint8_t_u_u((((p_2146->g_115 = &p_2146->g_3) == (void*)0) <= l_117), 0x79L)) | (p_2146->g_116 , (--(*l_118)))) , ((*l_122) = (((p_2146->g_116 < ((void*)0 == p_2146->g_115)) >= p_2146->g_116) || 0x06E0L))) != p_2146->g_48) != 0x317AL) && (*l_114)))));
    p_75 = 0x59E6926EL;
    for (p_2146->g_116 = 20; (p_2146->g_116 == (-7)); p_2146->g_116--)
    { /* block id: 52 */
        int32_t ***l_133 = (void*)0;
        int32_t ***l_134 = (void*)0;
        int32_t ***l_135 = &l_112;
        uint8_t *l_137 = &p_2146->g_138;
        int32_t l_139 = 0x51EDEC69L;
        l_139 &= (((safe_mod_func_uint32_t_u_u((safe_div_func_uint64_t_u_u((0L != ((p_2146->g_3 , ((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_2146->local_2_offset, get_local_id(2), 10), ((((((*l_137) = ((*l_118) |= (((((*l_135) = &l_114) == (((l_136 == (void*)0) ^ p_75) , &p_76)) ^ p_2146->g_104) != p_2146->g_71))) | GROUP_DIVERGE(2, 1)) , FAKE_DIVERGE(p_2146->local_0_offset, get_local_id(0), 10)) && 0x2D296291L) & p_75))) < p_2146->g_98[3][0])) ^ 0x32BD85DC1642A789L)), p_75)), 1L)) , p_75) <= 0xAAFF4E996E1C0719L);
    }
    return p_75;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2147;
    struct S0* p_2146 = &c_2147;
    struct S0 c_2148 = {
        (-1L), // p_2146->g_3
        0x23L, // p_2146->g_14
        6UL, // p_2146->g_16
        8L, // p_2146->g_41
        3UL, // p_2146->g_48
        0x2410957FL, // p_2146->g_71
        (void*)0, // p_2146->g_81
        {{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL}}, // p_2146->g_98
        (-1L), // p_2146->g_102
        0x26L, // p_2146->g_104
        0x288E96A6L, // p_2146->g_116
        &p_2146->g_116, // p_2146->g_115
        1UL, // p_2146->g_119
        1L, // p_2146->g_124
        0xF4L, // p_2146->g_138
        4294967291UL, // p_2146->g_167
        (-2L), // p_2146->g_186
        {0xA7B4L,65533UL,0xA7B4L,0xA7B4L,65533UL,0xA7B4L,0xA7B4L,65533UL}, // p_2146->g_208
        253UL, // p_2146->g_228
        0xDA799F3D6BF1367DL, // p_2146->g_242
        0x42L, // p_2146->g_275
        {&p_2146->g_48,&p_2146->g_48,&p_2146->g_48,&p_2146->g_48,&p_2146->g_48,&p_2146->g_48,&p_2146->g_48,&p_2146->g_48,&p_2146->g_48}, // p_2146->g_297
        (-1L), // p_2146->g_326
        {{{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L}},{{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L}}}, // p_2146->g_350
        0x9AEBAA60117410A8L, // p_2146->g_384
        (void*)0, // p_2146->g_388
        &p_2146->g_388, // p_2146->g_387
        0x4721575FL, // p_2146->g_417
        0x7025L, // p_2146->g_445
        1UL, // p_2146->g_491
        0x72543281L, // p_2146->g_599
        &p_2146->g_102, // p_2146->g_614
        (-4L), // p_2146->g_654
        &p_2146->g_384, // p_2146->g_666
        &p_2146->g_666, // p_2146->g_665
        0x4DA35EF6E6E9056AL, // p_2146->g_675
        (void*)0, // p_2146->g_692
        &p_2146->g_692, // p_2146->g_691
        {{&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666},{&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666},{&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666},{&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666,&p_2146->g_666}}, // p_2146->g_695
        {&p_2146->g_695[1][6],&p_2146->g_695[1][6]}, // p_2146->g_694
        4294967295UL, // p_2146->g_716
        0xF7L, // p_2146->g_756
        (-10L), // p_2146->g_878
        &p_2146->g_694[1], // p_2146->g_999
        &p_2146->g_115, // p_2146->g_1053
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2146->g_1052
        &p_2146->g_999, // p_2146->g_1080
        1UL, // p_2146->g_1120
        &p_2146->g_350[1][6][3], // p_2146->g_1225
        0x75L, // p_2146->g_1269
        &p_2146->g_665, // p_2146->g_1294
        &p_2146->g_1294, // p_2146->g_1293
        &p_2146->g_1293, // p_2146->g_1292
        {{{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292},{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292},{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292},{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292},{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292},{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292},{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292},{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292},{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292},{&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292,&p_2146->g_1292}}}, // p_2146->g_1291
        &p_2146->g_1291[0][4][3], // p_2146->g_1290
        &p_2146->g_98[5][4], // p_2146->g_1298
        &p_2146->g_1298, // p_2146->g_1297
        0UL, // p_2146->g_1306
        {0x8AA9446EL,0x8AA9446EL,0x8AA9446EL,0x8AA9446EL}, // p_2146->g_1380
        0x18B99DA3L, // p_2146->g_1381
        0UL, // p_2146->g_1659
        &p_2146->g_1659, // p_2146->g_1658
        &p_2146->g_1658, // p_2146->g_1657
        &p_2146->g_1080, // p_2146->g_1699
        (-7L), // p_2146->g_1724
        &p_2146->g_41, // p_2146->g_1768
        &p_2146->g_1768, // p_2146->g_1767
        {&p_2146->g_71,&p_2146->g_116,&p_2146->g_71,&p_2146->g_71,&p_2146->g_116,&p_2146->g_71,&p_2146->g_71,&p_2146->g_116,&p_2146->g_71,&p_2146->g_71}, // p_2146->g_1938
        &p_2146->g_1938[6], // p_2146->g_1937
        {&p_2146->g_1306,&p_2146->g_1306}, // p_2146->g_2005
        &p_2146->g_2005[0], // p_2146->g_2004
        {&p_2146->g_2004,&p_2146->g_2004,&p_2146->g_2004,&p_2146->g_2004,&p_2146->g_2004,&p_2146->g_2004,&p_2146->g_2004}, // p_2146->g_2003
        (void*)0, // p_2146->g_2010
        {&p_2146->g_1938[6],&p_2146->g_1938[1],&p_2146->g_1938[6],&p_2146->g_1938[6],&p_2146->g_1938[1],&p_2146->g_1938[6],&p_2146->g_1938[6],&p_2146->g_1938[1],&p_2146->g_1938[6]}, // p_2146->g_2011
        &p_2146->g_1938[6], // p_2146->g_2012
        1UL, // p_2146->g_2057
        &p_2146->g_2057, // p_2146->g_2056
        &p_2146->g_2056, // p_2146->g_2055
        &p_2146->g_2055, // p_2146->g_2054
        251UL, // p_2146->g_2086
        (void*)0, // p_2146->g_2113
        {{{&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113},{&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113},{&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113},{&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113},{&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113},{&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113},{&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113,&p_2146->g_2113}}}, // p_2146->g_2112
        &p_2146->g_2112[0][0][1], // p_2146->g_2111
        sequence_input[get_global_id(0)], // p_2146->global_0_offset
        sequence_input[get_global_id(1)], // p_2146->global_1_offset
        sequence_input[get_global_id(2)], // p_2146->global_2_offset
        sequence_input[get_local_id(0)], // p_2146->local_0_offset
        sequence_input[get_local_id(1)], // p_2146->local_1_offset
        sequence_input[get_local_id(2)], // p_2146->local_2_offset
        sequence_input[get_group_id(0)], // p_2146->group_0_offset
        sequence_input[get_group_id(1)], // p_2146->group_1_offset
        sequence_input[get_group_id(2)], // p_2146->group_2_offset
    };
    c_2147 = c_2148;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2146);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2146->g_3, "p_2146->g_3", print_hash_value);
    transparent_crc(p_2146->g_14, "p_2146->g_14", print_hash_value);
    transparent_crc(p_2146->g_16, "p_2146->g_16", print_hash_value);
    transparent_crc(p_2146->g_41, "p_2146->g_41", print_hash_value);
    transparent_crc(p_2146->g_48, "p_2146->g_48", print_hash_value);
    transparent_crc(p_2146->g_71, "p_2146->g_71", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2146->g_98[i][j], "p_2146->g_98[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2146->g_102, "p_2146->g_102", print_hash_value);
    transparent_crc(p_2146->g_104, "p_2146->g_104", print_hash_value);
    transparent_crc(p_2146->g_116, "p_2146->g_116", print_hash_value);
    transparent_crc(p_2146->g_119, "p_2146->g_119", print_hash_value);
    transparent_crc(p_2146->g_124, "p_2146->g_124", print_hash_value);
    transparent_crc(p_2146->g_138, "p_2146->g_138", print_hash_value);
    transparent_crc(p_2146->g_167, "p_2146->g_167", print_hash_value);
    transparent_crc(p_2146->g_186, "p_2146->g_186", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2146->g_208[i], "p_2146->g_208[i]", print_hash_value);

    }
    transparent_crc(p_2146->g_228, "p_2146->g_228", print_hash_value);
    transparent_crc(p_2146->g_242, "p_2146->g_242", print_hash_value);
    transparent_crc(p_2146->g_275, "p_2146->g_275", print_hash_value);
    transparent_crc(p_2146->g_326, "p_2146->g_326", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2146->g_350[i][j][k], "p_2146->g_350[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2146->g_384, "p_2146->g_384", print_hash_value);
    transparent_crc(p_2146->g_417, "p_2146->g_417", print_hash_value);
    transparent_crc(p_2146->g_445, "p_2146->g_445", print_hash_value);
    transparent_crc(p_2146->g_491, "p_2146->g_491", print_hash_value);
    transparent_crc(p_2146->g_599, "p_2146->g_599", print_hash_value);
    transparent_crc(p_2146->g_654, "p_2146->g_654", print_hash_value);
    transparent_crc(p_2146->g_675, "p_2146->g_675", print_hash_value);
    transparent_crc(p_2146->g_716, "p_2146->g_716", print_hash_value);
    transparent_crc(p_2146->g_756, "p_2146->g_756", print_hash_value);
    transparent_crc(p_2146->g_878, "p_2146->g_878", print_hash_value);
    transparent_crc(p_2146->g_1120, "p_2146->g_1120", print_hash_value);
    transparent_crc(p_2146->g_1269, "p_2146->g_1269", print_hash_value);
    transparent_crc(p_2146->g_1306, "p_2146->g_1306", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2146->g_1380[i], "p_2146->g_1380[i]", print_hash_value);

    }
    transparent_crc(p_2146->g_1381, "p_2146->g_1381", print_hash_value);
    transparent_crc(p_2146->g_1659, "p_2146->g_1659", print_hash_value);
    transparent_crc(p_2146->g_1724, "p_2146->g_1724", print_hash_value);
    transparent_crc(p_2146->g_2057, "p_2146->g_2057", print_hash_value);
    transparent_crc(p_2146->g_2086, "p_2146->g_2086", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
