// --atomics 56 ---fake_divergence -g 42,11,7 -l 2,1,1
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


// Seed: 115

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int64_t  f0;
};

struct S1 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    int32_t g_4;
    int32_t g_8;
    int32_t g_77[3];
    int8_t g_82;
    volatile int8_t g_84[3];
    volatile int8_t *g_83;
    volatile int32_t * volatile *g_91;
    volatile int32_t * volatile g_93;
    int16_t g_97;
    uint16_t g_99;
    int16_t *g_117;
    uint64_t g_119;
    int32_t g_139;
    int32_t * volatile g_138;
    uint32_t g_144;
    int32_t *g_146;
    int32_t ** volatile g_145;
    int64_t g_185;
    int8_t g_200;
    int8_t g_215;
    volatile union U0 g_224[2];
    uint8_t g_274[6];
    uint8_t g_282;
    int8_t *g_310[1][6];
    int64_t g_335;
    volatile union U0 g_377;
    uint64_t g_399;
    uint16_t *g_407;
    uint16_t **g_406;
    uint16_t *** volatile g_405;
    int64_t *g_482[8];
    union U0 g_518;
    union U0 *g_520;
    union U0 ** volatile g_519;
    int32_t *g_551;
    int32_t g_569;
    uint32_t g_600;
    uint32_t g_627;
    union U0 **g_641;
    volatile uint32_t g_669[6];
    union U0 g_696[1][3][7];
    uint16_t ***g_756;
    int32_t g_792;
    uint32_t g_794;
    uint32_t g_827;
    uint32_t *g_833[2];
    uint32_t **g_832;
    union U0 g_931;
    int32_t g_1009[7];
    volatile uint64_t g_1010;
    int32_t ** volatile g_1039[10];
    int32_t ** volatile g_1040[9];
    int32_t ** volatile g_1041;
    int8_t g_1056;
    int32_t ** volatile g_1127;
    int32_t * volatile g_1160[7][6][6];
    int32_t * volatile g_1161[3][5][6];
    uint32_t g_1189;
    int16_t **g_1212;
    int16_t ***g_1211;
    int16_t ***g_1216;
    uint16_t g_1224;
    int32_t ** volatile g_1239;
    int32_t *g_1274;
    uint64_t g_1297;
    uint32_t g_1328[8];
    int32_t **g_1338[9][5];
    volatile union U0 g_1383;
    int32_t ***g_1397[8];
    uint16_t g_1414;
    int32_t * volatile g_1429;
    volatile int8_t ** volatile g_1461[10][1][5];
    volatile int8_t ** volatile * volatile g_1460;
    int32_t * volatile g_1689;
    int8_t **g_1744;
    int8_t ***g_1743;
    int32_t * volatile g_1768;
    int32_t ** volatile g_1769;
    uint32_t *g_1775[8];
    int32_t * volatile g_1816;
    volatile union U0 g_1840;
    union U0 g_1854;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S1 * p_1861);
int64_t  func_19(uint32_t  p_20, int32_t  p_21, uint8_t  p_22, struct S1 * p_1861);
int32_t * func_26(uint32_t  p_27, int32_t * p_28, struct S1 * p_1861);
uint32_t  func_29(int32_t * p_30, int32_t * p_31, struct S1 * p_1861);
int32_t * func_32(int32_t  p_33, struct S1 * p_1861);
uint32_t  func_34(int32_t * p_35, struct S1 * p_1861);
int32_t  func_36(uint8_t  p_37, int32_t * p_38, int32_t * p_39, int32_t * p_40, struct S1 * p_1861);
int32_t * func_41(uint8_t  p_42, int32_t * p_43, struct S1 * p_1861);
int32_t  func_46(uint16_t  p_47, int32_t * p_48, struct S1 * p_1861);
int32_t  func_66(int64_t  p_67, int64_t  p_68, int32_t * p_69, uint64_t  p_70, uint64_t  p_71, struct S1 * p_1861);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1861->g_4 p_1861->g_8 p_1861->g_93 p_1861->g_2 p_1861->g_146 p_1861->g_407 p_1861->g_99 p_1861->g_1854 p_1861->g_84 p_1861->g_827
 * writes: p_1861->g_4 p_1861->g_8
 */
uint64_t  func_1(struct S1 * p_1861)
{ /* block id: 4 */
    uint64_t l_7[6][3][5] = {{{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL}},{{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL}},{{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL}},{{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL}},{{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL}},{{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL},{1UL,1UL,0x6887E08A11015AA9L,0x1F13B01D91E66C61L,1UL}}};
    int32_t l_1767 = 0x498D450CL;
    uint16_t *l_1808[10][4] = {{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_1224,(void*)0}};
    int64_t l_1825 = 0x4E580A6BDC604C5FL;
    int64_t **l_1843 = &p_1861->g_482[0];
    int8_t *l_1857 = &p_1861->g_200;
    int32_t l_1860 = 9L;
    int i, j, k;
    for (p_1861->g_4 = 0; (p_1861->g_4 < (-18)); p_1861->g_4 = safe_sub_func_int16_t_s_s(p_1861->g_4, 7))
    { /* block id: 7 */
        uint64_t l_1761[7][7][5] = {{{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL}},{{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL}},{{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL}},{{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL}},{{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL}},{{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL}},{{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL},{18446744073709551615UL,0x5273854F1CF4335AL,0x466C74AB68AB3802L,0x73590559FE2C199DL,18446744073709551608UL}}};
        int32_t l_1764 = 0x71006698L;
        uint32_t l_1765[4][8][7] = {{{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL}},{{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL}},{{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL}},{{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL},{0xEC13FDA2L,4294967295UL,0xEEDAC56AL,0xC8894B1BL,4294967295UL,1UL,4294967295UL}}};
        int64_t l_1805 = 0x3AB4C45B8677BE80L;
        uint16_t *l_1809 = &p_1861->g_1414;
        int32_t l_1819 = 0x6705DE83L;
        int32_t l_1824 = 0x3BC1A7E7L;
        uint32_t l_1827 = 0xF65E88A3L;
        int i, j, k;
        for (p_1861->g_8 = 0; (p_1861->g_8 <= 2); p_1861->g_8 += 1)
        { /* block id: 10 */
            uint32_t *l_1762[2];
            int32_t l_1763 = 0L;
            int8_t *l_1766[9][3][9] = {{{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056}},{{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056}},{{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056}},{{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056}},{{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056}},{{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056}},{{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056}},{{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056}},{{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056},{&p_1861->g_1056,&p_1861->g_215,&p_1861->g_215,&p_1861->g_1056,(void*)0,&p_1861->g_1056,&p_1861->g_215,&p_1861->g_1056,&p_1861->g_1056}}};
            union U0 **l_1814 = &p_1861->g_520;
            int32_t l_1822 = 0x631E56C5L;
            int32_t l_1826 = (-1L);
            int32_t l_1832 = 0x4A57955EL;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_1762[i] = &p_1861->g_1189;
            (1 + 1);
        }
    }
    (*p_1861->g_146) |= (*p_1861->g_93);
    l_1860 &= (safe_div_func_uint64_t_u_u(((1UL || (*p_1861->g_407)) >= (safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((p_1861->g_1854 , (safe_add_func_uint64_t_u_u(p_1861->g_84[1], ((l_1857 != (void*)0) ^ (l_7[5][1][1] > GROUP_DIVERGE(0, 1)))))), (l_1767 < (((((-1L) >= l_1825) , 0x535CC1ABL) , l_1767) <= 18446744073709551606UL)))), 0x5CFDL))), p_1861->g_827));
    return p_1861->g_84[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1861->g_8 p_1861->g_3 p_1861->g_4 p_1861->g_77 p_1861->g_83 p_1861->g_91 p_1861->g_93 p_1861->g_2 p_1861->g_82 p_1861->g_138 p_1861->g_139 p_1861->g_119 p_1861->g_84 p_1861->g_145 p_1861->g_97 p_1861->g_146 p_1861->g_117 p_1861->g_406 p_1861->g_407 p_1861->g_99 p_1861->g_274 p_1861->g_551 p_1861->g_569 p_1861->g_519 p_1861->g_520 p_1861->g_627 p_1861->g_399 p_1861->g_669 p_1861->g_832 p_1861->g_833 p_1861->g_1216 p_1861->g_1212 p_1861->g_1383 p_1861->g_792 p_1861->g_1211 p_1861->g_1414 p_1861->g_1239 p_1861->g_1429 p_1861->g_1189 p_1861->g_827 p_1861->g_641 p_1861->g_1460 p_1861->g_1274 p_1861->g_1328 p_1861->g_1161 p_1861->g_1689 p_1861->g_1461
 * writes: p_1861->g_3 p_1861->g_77 p_1861->g_82 p_1861->g_2 p_1861->g_97 p_1861->g_99 p_1861->g_117 p_1861->g_119 p_1861->g_139 p_1861->g_144 p_1861->g_146 p_1861->g_185 p_1861->g_310 p_1861->g_138 p_1861->g_569 p_1861->g_518.f0 p_1861->g_407 p_1861->g_600 p_1861->g_200 p_1861->g_627 p_1861->g_641 p_1861->g_399 p_1861->g_274 p_1861->g_669 p_1861->g_1338 p_1861->g_282 p_1861->g_1397 p_1861->g_1212 p_1861->g_520 p_1861->g_1274 p_1861->g_827 p_1861->g_1743 p_1861->g_1414
 */
int64_t  func_19(uint32_t  p_20, int32_t  p_21, uint8_t  p_22, struct S1 * p_1861)
{ /* block id: 11 */
    int32_t l_25[7][2] = {{0x64BC795CL,0x64BC795CL},{0x64BC795CL,0x64BC795CL},{0x64BC795CL,0x64BC795CL},{0x64BC795CL,0x64BC795CL},{0x64BC795CL,0x64BC795CL},{0x64BC795CL,0x64BC795CL},{0x64BC795CL,0x64BC795CL}};
    int32_t *l_51 = (void*)0;
    int32_t *l_94 = &p_1861->g_77[1];
    int32_t l_95 = 9L;
    int16_t *l_96 = &p_1861->g_97;
    uint16_t *l_98 = &p_1861->g_99;
    int8_t *l_112 = &p_1861->g_82;
    int32_t **l_550[5];
    int32_t *l_1699 = &p_1861->g_8;
    int32_t *l_1756 = &p_1861->g_77[1];
    int i, j;
    for (i = 0; i < 5; i++)
        l_550[i] = &l_51;
    for (p_1861->g_3 = 0; p_1861->g_3 < 7; p_1861->g_3 += 1)
    {
        for (p_22 = 0; p_22 < 2; p_22 += 1)
        {
            l_25[p_1861->g_3][p_22] = 0x6E311378L;
        }
    }
    (*p_1861->g_145) = func_26(func_29(func_32(p_22, p_1861), func_32((func_34(func_32(func_36(l_25[4][0], ((*p_1861->g_145) = func_41((((*l_112) = (safe_add_func_int32_t_s_s(func_46((l_25[5][1] , (safe_lshift_func_uint16_t_u_u((&p_1861->g_8 != l_51), ((*l_98) = ((((*l_96) = ((l_95 = (safe_lshift_func_int8_t_s_u(((((safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((((l_94 = func_32(((((safe_mod_func_uint32_t_u_u(((safe_mod_func_uint16_t_u_u(((l_25[5][1] >= (p_1861->g_8 & (safe_rshift_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((*l_94) = func_66((((p_1861->g_8 ^ 18446744073709551615UL) & l_25[2][1]) >= l_25[5][1]), p_20, &p_1861->g_8, p_1861->g_3, p_1861->g_4, p_1861)), p_1861->g_4)), 2)))) > p_20), p_21)) == p_1861->g_4), p_22)) , p_1861->g_4) && p_1861->g_77[1]) <= 1UL), p_1861)) == (void*)0) , 0x52F7L), 15)), 18446744073709551609UL)) != 1L) < p_21) , 0x68L), p_22))) > p_21)) , p_21) == 0x1C81172E912FB0E7L))))), &l_25[6][1], p_1861), p_22))) , p_20), &p_1861->g_8, p_1861)), p_1861->g_551, &p_1861->g_4, p_1861), p_1861), p_1861) , 0x65FD151CL), p_1861), p_1861), l_1699, p_1861);
    l_1756 = &p_21;
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1861->g_832 p_1861->g_833 p_1861->g_1216 p_1861->g_1212 p_1861->g_117 p_1861->g_1429 p_1861->g_77 p_1861->g_97 p_1861->g_1414 p_1861->g_1460 p_1861->g_1461 p_1861->g_8 p_1861->g_99
 * writes: p_1861->g_827 p_1861->g_97 p_1861->g_77 p_1861->g_1743 p_1861->g_1414 p_1861->g_146
 */
int32_t * func_26(uint32_t  p_27, int32_t * p_28, struct S1 * p_1861)
{ /* block id: 1030 */
    int64_t l_1700 = 0x455F4AB2D2A99AF7L;
    int32_t *l_1701[3];
    int32_t l_1702 = 4L;
    uint32_t l_1703 = 0x61DEE7BBL;
    int8_t *l_1732 = &p_1861->g_82;
    int8_t *l_1733[1][9][9] = {{{(void*)0,&p_1861->g_215,&p_1861->g_200,&p_1861->g_200,&p_1861->g_200,&p_1861->g_215,(void*)0,&p_1861->g_1056,&p_1861->g_215},{(void*)0,&p_1861->g_215,&p_1861->g_200,&p_1861->g_200,&p_1861->g_200,&p_1861->g_215,(void*)0,&p_1861->g_1056,&p_1861->g_215},{(void*)0,&p_1861->g_215,&p_1861->g_200,&p_1861->g_200,&p_1861->g_200,&p_1861->g_215,(void*)0,&p_1861->g_1056,&p_1861->g_215},{(void*)0,&p_1861->g_215,&p_1861->g_200,&p_1861->g_200,&p_1861->g_200,&p_1861->g_215,(void*)0,&p_1861->g_1056,&p_1861->g_215},{(void*)0,&p_1861->g_215,&p_1861->g_200,&p_1861->g_200,&p_1861->g_200,&p_1861->g_215,(void*)0,&p_1861->g_1056,&p_1861->g_215},{(void*)0,&p_1861->g_215,&p_1861->g_200,&p_1861->g_200,&p_1861->g_200,&p_1861->g_215,(void*)0,&p_1861->g_1056,&p_1861->g_215},{(void*)0,&p_1861->g_215,&p_1861->g_200,&p_1861->g_200,&p_1861->g_200,&p_1861->g_215,(void*)0,&p_1861->g_1056,&p_1861->g_215},{(void*)0,&p_1861->g_215,&p_1861->g_200,&p_1861->g_200,&p_1861->g_200,&p_1861->g_215,(void*)0,&p_1861->g_1056,&p_1861->g_215},{(void*)0,&p_1861->g_215,&p_1861->g_200,&p_1861->g_200,&p_1861->g_200,&p_1861->g_215,(void*)0,&p_1861->g_1056,&p_1861->g_215}}};
    int8_t **l_1734 = &l_1733[0][7][8];
    int16_t l_1735 = 0x4FC1L;
    uint64_t l_1736 = 0x1309827C5BD9660FL;
    int8_t ***l_1742 = &l_1734;
    int8_t ****l_1741[5];
    int32_t l_1745 = (-1L);
    uint16_t *l_1750 = &p_1861->g_1414;
    uint8_t *l_1752 = &p_1861->g_274[4];
    uint8_t **l_1751 = &l_1752;
    uint8_t ***l_1753 = &l_1751;
    int32_t l_1754 = 0L;
    int32_t **l_1755 = &p_1861->g_146;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1701[i] = &p_1861->g_139;
    for (i = 0; i < 5; i++)
        l_1741[i] = &l_1742;
    ++l_1703;
    l_1736 = (safe_add_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((safe_mod_func_int16_t_s_s((safe_add_func_uint8_t_u_u((((*p_1861->g_1429) ^= (((**p_1861->g_832) = FAKE_DIVERGE(p_1861->global_1_offset, get_global_id(1), 10)) < (safe_lshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((((p_27 , (p_27 ^ ((safe_add_func_uint16_t_u_u(((4L & ((safe_add_func_int32_t_s_s((((***p_1861->g_1216) = p_27) , (l_1735 = (GROUP_DIVERGE(2, 1) == (safe_sub_func_int8_t_s_s((((void*)0 != (*p_1861->g_1212)) < (p_27 ^ ((safe_mod_func_int8_t_s_s((safe_sub_func_int64_t_s_s((l_1732 == ((*l_1734) = l_1733[0][7][8])), 0x41D23063DB4608ABL)), 1L)) > p_27))), 1UL))))), p_27)) >= p_27)) & p_27), p_27)) != p_27))) <= p_27) >= 4294967295UL) <= 6UL), p_27)), 0)))) != 0x0D884DA5L), p_27)), p_27)) , (*p_1861->g_117)), 11)), p_27));
    (*l_1755) = func_32((((safe_sub_func_int32_t_s_s((p_1861->g_77[2] &= (((((safe_div_func_int64_t_s_s((((p_1861->g_1743 = &l_1734) == (void*)0) < l_1745), (safe_mod_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((((*l_1750) |= p_27) && (~((((*l_1753) = l_1751) != (l_1754 , &l_1752)) , (((((((GROUP_DIVERGE(1, 1) , (*p_1861->g_117)) < ((((*p_1861->g_1460) == (*l_1742)) && (***p_1861->g_1216)) >= p_27)) ^ 0x1CL) >= (*p_28)) , 0x72L) <= 1UL) <= p_27)))) & p_27), (***p_1861->g_1216))), p_1861->g_99)))) && 0L) < (*p_28)) , (**p_1861->g_1212)) != p_27)), p_27)) < 0x6EL) != (-1L)), p_1861);
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_1861->g_1689 p_1861->g_77
 * writes: p_1861->g_77
 */
uint32_t  func_29(int32_t * p_30, int32_t * p_31, struct S1 * p_1861)
{ /* block id: 1025 */
    int8_t l_1688 = 0x06L;
    int32_t *l_1690 = (void*)0;
    int32_t *l_1691 = &p_1861->g_77[0];
    int32_t *l_1692 = &p_1861->g_77[1];
    int32_t *l_1693 = &p_1861->g_792;
    int32_t *l_1694 = &p_1861->g_792;
    int32_t *l_1695[3];
    uint64_t l_1696 = 18446744073709551606UL;
    int i;
    for (i = 0; i < 3; i++)
        l_1695[i] = &p_1861->g_139;
    (*p_1861->g_1689) |= (l_1688 = (+(safe_add_func_int16_t_s_s(5L, (&p_1861->g_519 != &p_1861->g_519)))));
    l_1696--;
    return (*l_1691);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_32(int32_t  p_33, struct S1 * p_1861)
{ /* block id: 13 */
    return &p_1861->g_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1861->g_4 p_1861->g_832 p_1861->g_833 p_1861->g_1216 p_1861->g_1212 p_1861->g_117 p_1861->g_97 p_1861->g_3 p_1861->g_1383 p_1861->g_406 p_1861->g_274 p_1861->g_83 p_1861->g_84 p_1861->g_792 p_1861->g_1211 p_1861->g_1414 p_1861->g_1239 p_1861->g_551 p_1861->g_2 p_1861->g_1429 p_1861->g_99 p_1861->g_1189 p_1861->g_827 p_1861->g_77 p_1861->g_641 p_1861->g_1460 p_1861->g_1274 p_1861->g_1328 p_1861->g_1161 p_1861->g_569
 * writes: p_1861->g_1338 p_1861->g_282 p_1861->g_1397 p_1861->g_407 p_1861->g_274 p_1861->g_1212 p_1861->g_77 p_1861->g_99 p_1861->g_520 p_1861->g_1274
 */
uint32_t  func_34(int32_t * p_35, struct S1 * p_1861)
{ /* block id: 741 */
    int32_t **l_1336 = &p_1861->g_1274;
    int32_t ***l_1337[9][10] = {{&l_1336,&l_1336,(void*)0,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336},{&l_1336,&l_1336,(void*)0,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336},{&l_1336,&l_1336,(void*)0,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336},{&l_1336,&l_1336,(void*)0,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336},{&l_1336,&l_1336,(void*)0,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336},{&l_1336,&l_1336,(void*)0,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336},{&l_1336,&l_1336,(void*)0,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336},{&l_1336,&l_1336,(void*)0,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336},{&l_1336,&l_1336,(void*)0,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336,&l_1336}};
    int32_t l_1339 = (-4L);
    int32_t *l_1361 = &p_1861->g_569;
    int32_t l_1366 = (-4L);
    uint16_t *l_1401 = (void*)0;
    int32_t l_1403 = 0x735C9592L;
    int32_t *l_1424 = &l_1366;
    uint32_t *l_1426[6];
    uint32_t **l_1425 = &l_1426[0];
    uint8_t l_1448 = 0xDAL;
    int16_t **l_1468[7] = {&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117};
    int i, j;
    for (i = 0; i < 6; i++)
        l_1426[i] = &p_1861->g_600;
    p_1861->g_1338[4][3] = l_1336;
    if (((((l_1339 <= ((safe_unary_minus_func_uint64_t_u((safe_lshift_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((safe_div_func_uint8_t_u_u((l_1339 & ((safe_sub_func_int32_t_s_s((*p_35), (safe_mod_func_uint8_t_u_u(((safe_sub_func_int32_t_s_s((safe_div_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_u(((((safe_mul_func_uint16_t_u_u((safe_add_func_int8_t_s_s(((void*)0 != l_1361), (safe_mul_func_int32_t_s_s((*p_35), ((*p_1861->g_832) == l_1361))))), ((safe_sub_func_uint16_t_u_u(((l_1366 >= 0x83L) , l_1339), l_1366)) > l_1366))) && 0x36892E6CL) <= 0x4090B07DL) < (***p_1861->g_1216)), l_1339)) >= l_1339), l_1366)), l_1366)) ^ GROUP_DIVERGE(1, 1)), 0x24L)))) < p_1861->g_3)), l_1339)), l_1339)), l_1366)))) | 0x1A7EA625L)) , l_1339) , 9L) & FAKE_DIVERGE(p_1861->global_2_offset, get_global_id(2), 10)))
    { /* block id: 743 */
        int32_t ***l_1371 = &l_1336;
        int32_t l_1389 = 0x5CB91A91L;
        int32_t l_1390 = 0x5B122C30L;
        uint16_t *l_1400 = (void*)0;
        uint8_t *l_1402 = &p_1861->g_274[5];
        int64_t *l_1404[1];
        uint32_t l_1405 = 1UL;
        int16_t **l_1411 = &p_1861->g_117;
        union U0 *l_1453 = &p_1861->g_696[0][0][1];
        int32_t *l_1469 = &l_1403;
        int8_t l_1470 = 0L;
        int32_t *l_1471 = &p_1861->g_77[1];
        int i;
        for (i = 0; i < 1; i++)
            l_1404[i] = &p_1861->g_185;
        if ((safe_div_func_uint32_t_u_u(((((l_1366 = ((l_1339 = (safe_div_func_int32_t_s_s((l_1371 == ((safe_mul_func_int8_t_s_s((~(+((safe_unary_minus_func_int32_t_s(((safe_add_func_uint16_t_u_u(0x5F32L, (safe_mul_func_int16_t_s_s(((((((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1861->local_2_offset, get_local_id(2), 10), (p_1861->g_1383 , (((*p_35) | (((*l_1402) ^= ((safe_rshift_func_int16_t_s_u((l_1390 |= (safe_unary_minus_func_int16_t_s((safe_rshift_func_uint8_t_u_u((p_1861->g_282 = l_1389), GROUP_DIVERGE(0, 1)))))), (safe_add_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(((safe_lshift_func_int16_t_s_s(((GROUP_DIVERGE(2, 1) || ((l_1337[2][4] = (p_1861->g_1397[6] = l_1371)) != (void*)0)) || ((safe_rshift_func_int8_t_s_u(((((*p_1861->g_406) = l_1400) == l_1401) | l_1339), 4)) == l_1339)), l_1389)) , 255UL), l_1366)), l_1366)))) , 0x1CL)) && (*p_1861->g_83))) & 4L)))) ^ l_1389) || l_1390) || l_1390) > 0L) != l_1339), l_1403)))) & FAKE_DIVERGE(p_1861->group_0_offset, get_group_id(0), 10)))) != l_1389))), p_1861->g_792)) , &p_1861->g_1338[4][3])), 0x67D25706L))) && l_1390)) , l_1389) > l_1405) != l_1403), GROUP_DIVERGE(2, 1))))
        { /* block id: 752 */
            int8_t l_1410[8][2][3] = {{{0L,0x5BL,0L},{0L,0x5BL,0L}},{{0L,0x5BL,0L},{0L,0x5BL,0L}},{{0L,0x5BL,0L},{0L,0x5BL,0L}},{{0L,0x5BL,0L},{0L,0x5BL,0L}},{{0L,0x5BL,0L},{0L,0x5BL,0L}},{{0L,0x5BL,0L},{0L,0x5BL,0L}},{{0L,0x5BL,0L},{0L,0x5BL,0L}},{{0L,0x5BL,0L},{0L,0x5BL,0L}}};
            int32_t l_1420 = 0x1833D62EL;
            int32_t **l_1423[4][2] = {{&p_1861->g_146,&p_1861->g_146},{&p_1861->g_146,&p_1861->g_146},{&p_1861->g_146,&p_1861->g_146},{&p_1861->g_146,&p_1861->g_146}};
            int i, j, k;
            l_1420 |= (safe_mod_func_int32_t_s_s((((((safe_rshift_func_uint8_t_u_u(((l_1390 = l_1410[6][1][2]) & (*p_1861->g_83)), (((*p_1861->g_1211) = (*p_1861->g_1211)) == l_1411))) <= (((safe_div_func_int64_t_s_s((l_1389 = p_1861->g_1414), (safe_rshift_func_int16_t_s_u((safe_unary_minus_func_uint32_t_u((safe_rshift_func_int16_t_s_s(l_1366, 8)))), l_1405)))) != (0xD4L <= l_1405)) && l_1403)) ^ FAKE_DIVERGE(p_1861->global_1_offset, get_global_id(1), 10)) && 0L) , (-1L)), FAKE_DIVERGE(p_1861->global_1_offset, get_global_id(1), 10)));
            l_1424 = (p_35 = (*p_1861->g_1239));
            return p_1861->g_2;
        }
        else
        { /* block id: 761 */
            uint32_t **l_1427 = &l_1426[0];
            int32_t *l_1428 = (void*)0;
            uint16_t *l_1447 = &p_1861->g_1414;
            (*p_1861->g_1429) = (((*l_1424) = (l_1425 == l_1427)) | l_1389);
            if ((atomic_inc(&p_1861->g_atomic_input[56 * get_linear_group_id() + 21]) == 8))
            { /* block id: 765 */
                uint8_t l_1430 = 255UL;
                int32_t l_1432[9][7][4] = {{{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L}},{{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L}},{{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L}},{{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L}},{{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L}},{{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L}},{{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L}},{{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L}},{{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L},{0x1D0DB046L,0x0F4D1CB6L,(-1L),0x7A1A9C48L}}};
                int32_t *l_1431 = &l_1432[1][0][3];
                int32_t *l_1433 = &l_1432[1][0][3];
                int32_t *l_1434[9][1][3];
                int i, j, k;
                for (i = 0; i < 9; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 3; k++)
                            l_1434[i][j][k] = &l_1432[4][0][3];
                    }
                }
                l_1434[6][0][2] = (l_1433 = ((l_1430 = (-6L)) , l_1431));
                unsigned int result = 0;
                result += l_1430;
                int l_1432_i0, l_1432_i1, l_1432_i2;
                for (l_1432_i0 = 0; l_1432_i0 < 9; l_1432_i0++) {
                    for (l_1432_i1 = 0; l_1432_i1 < 7; l_1432_i1++) {
                        for (l_1432_i2 = 0; l_1432_i2 < 4; l_1432_i2++) {
                            result += l_1432[l_1432_i0][l_1432_i1][l_1432_i2];
                        }
                    }
                }
                atomic_add(&p_1861->g_special_values[56 * get_linear_group_id() + 21], result);
            }
            else
            { /* block id: 769 */
                (1 + 1);
            }
            for (p_1861->g_99 = 13; (p_1861->g_99 == 5); p_1861->g_99--)
            { /* block id: 774 */
                uint32_t l_1444 = 0x5A3BECF9L;
                (*l_1424) = (safe_mul_func_uint16_t_u_u(((l_1390 > p_1861->g_1189) || ((void*)0 == &p_1861->g_569)), (safe_unary_minus_func_int32_t_s(((safe_mul_func_int16_t_s_s((((**p_1861->g_832) > ((*p_1861->g_1429) ^= ((void*)0 != p_35))) ^ l_1444), (((safe_rshift_func_int8_t_s_u(((void*)0 != l_1447), 6)) , 0x56EFL) ^ (***p_1861->g_1211)))) == l_1444)))));
                (*l_1424) = (-5L);
                if ((*p_35))
                    continue;
            }
        }
        --l_1448;
        (*l_1471) ^= ((safe_mul_func_uint8_t_u_u((((*p_1861->g_641) = l_1453) == (void*)0), ((((*l_1424) = (safe_mod_func_int64_t_s_s((*l_1424), (safe_lshift_func_uint8_t_u_u((((~((safe_lshift_func_uint16_t_u_s(((void*)0 == p_1861->g_1460), 3)) >= ((((**l_1371) = (**l_1371)) != (l_1469 = func_32(((safe_add_func_int32_t_s_s((safe_div_func_uint64_t_u_u(((l_1405 >= (safe_mul_func_uint16_t_u_u((((*p_1861->g_1211) == l_1468[5]) , 1UL), FAKE_DIVERGE(p_1861->local_1_offset, get_local_id(1), 10)))) | 0x001832C1L), 1L)), FAKE_DIVERGE(p_1861->global_1_offset, get_global_id(1), 10))) ^ 0xC783L), p_1861))) < l_1405))) >= 0x0559L) , 0x5FL), 4))))) && (*l_1424)) , (-6L)))) ^ l_1470);
    }
    else
    { /* block id: 787 */
        int16_t l_1472 = (-10L);
        return l_1472;
    }
    if ((atomic_inc(&p_1861->l_atomic_input[41]) == 3))
    { /* block id: 791 */
        int32_t l_1473 = (-5L);
        uint16_t l_1474[8][1][5] = {{{0x2A6DL,0x1008L,65535UL,0x1008L,0x2A6DL}},{{0x2A6DL,0x1008L,65535UL,0x1008L,0x2A6DL}},{{0x2A6DL,0x1008L,65535UL,0x1008L,0x2A6DL}},{{0x2A6DL,0x1008L,65535UL,0x1008L,0x2A6DL}},{{0x2A6DL,0x1008L,65535UL,0x1008L,0x2A6DL}},{{0x2A6DL,0x1008L,65535UL,0x1008L,0x2A6DL}},{{0x2A6DL,0x1008L,65535UL,0x1008L,0x2A6DL}},{{0x2A6DL,0x1008L,65535UL,0x1008L,0x2A6DL}}};
        uint64_t l_1475 = 0x58EEA4635D3BDB44L;
        uint32_t l_1476 = 0UL;
        int32_t l_1478 = (-5L);
        int32_t *l_1477 = &l_1478;
        uint32_t l_1479 = 4294967291UL;
        int8_t l_1480 = 0x4DL;
        int32_t *l_1684 = &l_1478;
        int32_t *l_1685[6] = {&l_1478,&l_1478,&l_1478,&l_1478,&l_1478,&l_1478};
        int i, j, k;
        l_1477 = ((((l_1473 , l_1474[4][0][4]) , l_1475) , l_1476) , (void*)0);
        if ((l_1480 &= l_1479))
        { /* block id: 794 */
            int32_t l_1481[5];
            int32_t *l_1558 = (void*)0;
            uint32_t l_1559[10][4] = {{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L},{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L},{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L},{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L},{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L},{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L},{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L},{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L},{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L},{0x7F4F6643L,0xEED35BE8L,0xC1D67D8CL,0x2957B124L}};
            int32_t l_1560 = 0L;
            int8_t l_1561[6][10][3] = {{{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)}},{{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)}},{{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)}},{{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)}},{{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)}},{{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)},{(-9L),0x5FL,(-5L)}}};
            union U0 l_1563 = {-1L};/* VOLATILE GLOBAL l_1563 */
            union U0 *l_1562[3][8][9] = {{{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0}},{{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0}},{{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0},{&l_1563,(void*)0,&l_1563,(void*)0,&l_1563,&l_1563,(void*)0,&l_1563,(void*)0}}};
            union U0 *l_1564[6] = {(void*)0,&l_1563,(void*)0,(void*)0,&l_1563,(void*)0};
            union U0 *l_1565[6] = {&l_1563,&l_1563,&l_1563,&l_1563,&l_1563,&l_1563};
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_1481[i] = 4L;
            for (l_1481[0] = 0; (l_1481[0] != (-22)); l_1481[0] = safe_sub_func_int32_t_s_s(l_1481[0], 9))
            { /* block id: 797 */
                uint64_t l_1484[3][3];
                int32_t l_1485 = 0L;
                uint32_t l_1489 = 4294967295UL;
                int8_t l_1490 = 2L;
                int32_t *l_1491[1];
                int32_t *l_1492 = &l_1485;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_1484[i][j] = 0xEF29E9CB424FE9F4L;
                }
                for (i = 0; i < 1; i++)
                    l_1491[i] = (void*)0;
                l_1478 = l_1484[2][2];
                l_1477 = (void*)0;
                if (l_1485)
                { /* block id: 800 */
                    int16_t l_1486[5][3][9] = {{{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L}},{{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L}},{{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L}},{{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L}},{{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L},{1L,0x422EL,(-4L),(-1L),0x7272L,(-9L),1L,(-1L),0x6612L}}};
                    int i, j, k;
                    l_1478 &= l_1486[1][2][6];
                }
                else
                { /* block id: 802 */
                    int64_t l_1487 = 0L;
                    int16_t l_1488 = (-1L);
                    l_1488 |= l_1487;
                }
                l_1492 = (l_1477 = (l_1489 , (l_1490 , l_1491[0])));
            }
            for (l_1481[0] = 0; (l_1481[0] <= 2); l_1481[0] += 1)
            { /* block id: 810 */
                int32_t l_1493 = 0x48D9D714L;
                int32_t l_1494[10] = {1L,(-6L),1L,1L,(-6L),1L,1L,(-6L),1L,1L};
                uint32_t l_1495 = 4294967295UL;
                uint64_t l_1524[1][4][5] = {{{18446744073709551615UL,0x5B4F3BE358281FF3L,0x31BBF8E17423DF31L,0x5B4F3BE358281FF3L,18446744073709551615UL},{18446744073709551615UL,0x5B4F3BE358281FF3L,0x31BBF8E17423DF31L,0x5B4F3BE358281FF3L,18446744073709551615UL},{18446744073709551615UL,0x5B4F3BE358281FF3L,0x31BBF8E17423DF31L,0x5B4F3BE358281FF3L,18446744073709551615UL},{18446744073709551615UL,0x5B4F3BE358281FF3L,0x31BBF8E17423DF31L,0x5B4F3BE358281FF3L,18446744073709551615UL}}};
                int i, j, k;
                l_1495--;
                for (l_1495 = 0; (l_1495 <= 2); l_1495 += 1)
                { /* block id: 814 */
                    int32_t l_1498[3][3][5];
                    uint32_t l_1506 = 0UL;
                    uint16_t l_1507 = 0x923CL;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 3; j++)
                        {
                            for (k = 0; k < 5; k++)
                                l_1498[i][j][k] = 0L;
                        }
                    }
                    for (l_1498[0][1][1] = 2; (l_1498[0][1][1] >= 0); l_1498[0][1][1] -= 1)
                    { /* block id: 817 */
                        uint64_t l_1499 = 0xA844FB64662DCEF9L;
                        uint8_t l_1500 = 0UL;
                        int64_t l_1503[2];
                        int32_t l_1505[7][6][6] = {{{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L}},{{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L}},{{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L}},{{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L}},{{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L}},{{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L}},{{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L},{(-1L),0x76AE1DA9L,(-1L),2L,1L,0x11F6BD38L}}};
                        int32_t *l_1504[10] = {&l_1505[4][5][0],&l_1505[4][5][0],&l_1505[4][5][0],&l_1505[4][5][0],&l_1505[4][5][0],&l_1505[4][5][0],&l_1505[4][5][0],&l_1505[4][5][0],&l_1505[4][5][0],&l_1505[4][5][0]};
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_1503[i] = 0x6FEB49E62651B72BL;
                        l_1499 = p_1861->g_1328[l_1495];
                        ++l_1500;
                        l_1494[0] = l_1503[1];
                        l_1477 = l_1504[1];
                    }
                    for (l_1498[0][1][1] = 2; (l_1498[0][1][1] >= 0); l_1498[0][1][1] -= 1)
                    { /* block id: 825 */
                        l_1477 = (void*)0;
                    }
                    l_1494[0] = l_1506;
                    l_1507 |= 0x7959D05AL;
                    for (l_1507 = 0; (l_1507 <= 2); l_1507 += 1)
                    { /* block id: 832 */
                        int16_t l_1508[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1508[i] = 0L;
                        l_1494[2] ^= (l_1498[1][0][0] = l_1508[0]);
                    }
                }
                for (l_1494[0] = 2; (l_1494[0] >= 0); l_1494[0] -= 1)
                { /* block id: 839 */
                    int8_t l_1509 = (-1L);
                    int8_t l_1510 = (-1L);
                    uint32_t l_1511 = 4294967295UL;
                    uint64_t l_1512 = 0xE2F0CA1AF740362BL;
                    l_1478 = l_1509;
                    l_1511 &= l_1510;
                    l_1512--;
                    for (l_1512 = 0; (l_1512 <= 2); l_1512 += 1)
                    { /* block id: 845 */
                        int32_t l_1516 = 0x0B5BF2CCL;
                        int32_t * volatile l_1515[7];
                        int32_t l_1517 = 0x0CB8D922L;
                        uint32_t l_1518 = 0xB8EB7A28L;
                        int32_t *l_1521[9];
                        int32_t *l_1522 = &l_1516;
                        int32_t *l_1523[9][10] = {{&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516},{&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516},{&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516},{&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516},{&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516},{&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516},{&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516},{&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516},{&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516,&l_1516}};
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_1515[i] = &l_1516;
                        for (i = 0; i < 9; i++)
                            l_1521[i] = &l_1516;
                        l_1478 |= 0x6144AA9CL;
                        l_1515[3] = p_1861->g_1161[l_1481[0]][(l_1512 + 1)][(l_1512 + 1)];
                        l_1478 ^= l_1517;
                        l_1523[5][9] = (l_1522 = (l_1521[8] = ((l_1518 , (++l_1474[4][0][4])) , (l_1477 = (void*)0))));
                    }
                }
                l_1478 = l_1524[0][1][1];
                for (l_1524[0][3][0] = 0; (l_1524[0][3][0] <= 2); l_1524[0][3][0] += 1)
                { /* block id: 859 */
                    int32_t l_1525[5][9] = {{0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL},{0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL},{0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL},{0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL},{0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL,0x0FED343CL,0x539B3AAAL,0x0FED343CL}};
                    uint16_t l_1531[3][3];
                    int16_t l_1532 = 0x45BFL;
                    int32_t l_1533 = (-3L);
                    uint16_t l_1534 = 0x2FBDL;
                    int64_t l_1535 = 1L;
                    union U0 l_1536 = {0x6DCBE79654C3B806L};/* VOLATILE GLOBAL l_1536 */
                    int32_t *l_1537[6];
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_1531[i][j] = 0xFABCL;
                    }
                    for (i = 0; i < 6; i++)
                        l_1537[i] = &l_1533;
                    for (l_1525[3][7] = 2; (l_1525[3][7] >= 0); l_1525[3][7] -= 1)
                    { /* block id: 862 */
                        uint8_t l_1526[9] = {0x55L,0x55L,0x55L,0x55L,0x55L,0x55L,0x55L,0x55L,0x55L};
                        int16_t l_1527 = 0x75F9L;
                        int32_t l_1529 = (-7L);
                        int32_t *l_1528 = &l_1529;
                        int32_t *l_1530 = &l_1529;
                        int i;
                        l_1527 ^= l_1526[7];
                        l_1477 = l_1528;
                        l_1477 = l_1530;
                        (*l_1477) = 0x1550FA9DL;
                    }
                    l_1537[1] = (l_1531[0][0] , ((l_1532 , ((l_1534 = (l_1533 , 0x97L)) , (l_1535 , l_1536))) , (void*)0));
                    for (l_1525[1][1] = 0; (l_1525[1][1] <= 2); l_1525[1][1] += 1)
                    { /* block id: 872 */
                        uint8_t l_1538 = 254UL;
                        uint32_t l_1539 = 4294967287UL;
                        int32_t l_1541 = 0L;
                        int32_t *l_1540[8][9][3] = {{{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541}},{{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541}},{{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541}},{{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541}},{{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541}},{{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541}},{{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541}},{{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541},{&l_1541,&l_1541,&l_1541}}};
                        int32_t *l_1542[9] = {&l_1541,&l_1541,&l_1541,&l_1541,&l_1541,&l_1541,&l_1541,&l_1541,&l_1541};
                        int8_t l_1543 = (-9L);
                        int16_t l_1544 = 0x350BL;
                        int32_t *l_1545[8] = {&l_1541,&l_1541,&l_1541,&l_1541,&l_1541,&l_1541,&l_1541,&l_1541};
                        int32_t *l_1546 = &l_1541;
                        int i, j, k;
                        l_1537[2] = (l_1542[1] = ((l_1538 , 0x0347005A07A17E61L) , (l_1540[6][3][0] = (l_1539 , (l_1477 = (void*)0)))));
                        l_1537[1] = ((l_1543 = 1L) , (void*)0);
                        l_1537[1] = ((l_1544 , (l_1473 = 0x7394EB6EL)) , l_1545[7]);
                        l_1546 = (void*)0;
                    }
                    for (l_1525[3][7] = 2; (l_1525[3][7] >= 0); l_1525[3][7] -= 1)
                    { /* block id: 885 */
                        uint64_t l_1547 = 18446744073709551607UL;
                        l_1547 |= 0x6D88D523L;
                        l_1537[1] = (void*)0;
                    }
                    for (l_1534 = 0; (l_1534 <= 2); l_1534 += 1)
                    { /* block id: 891 */
                        int16_t l_1550[8][9] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}};
                        uint8_t l_1551[1][3][4] = {{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}}};
                        int64_t l_1552 = 0x23836E2CA3A0F6D5L;
                        int32_t l_1553 = 0x17FE4777L;
                        int64_t l_1554 = (-10L);
                        uint64_t l_1555 = 0x38243C0B6011D76CL;
                        int32_t l_1556 = (-1L);
                        uint32_t l_1557 = 4294967294UL;
                        int i, j, k;
                        l_1554 |= (l_1553 = ((l_1550[5][1] = (++l_1475)) , (l_1552 = l_1551[0][1][3])));
                        l_1557 = (l_1556 = l_1555);
                    }
                }
            }
            l_1477 = l_1558;
            l_1565[2] = ((l_1560 = l_1559[3][2]) , (l_1564[1] = (l_1561[2][8][2] , l_1562[2][1][0])));
        }
        else
        { /* block id: 906 */
            int32_t l_1566[4];
            uint8_t l_1626 = 255UL;
            uint16_t l_1629 = 65527UL;
            uint32_t l_1630 = 0xD80C32A9L;
            int64_t l_1631 = 0x69459948AC4561F2L;
            int i;
            for (i = 0; i < 4; i++)
                l_1566[i] = (-6L);
            for (l_1566[1] = (-22); (l_1566[1] < 29); ++l_1566[1])
            { /* block id: 909 */
                int32_t l_1569 = (-3L);
                int32_t l_1591 = 0L;
                uint64_t l_1592 = 0x7522D7A88CAFFE68L;
                uint32_t l_1625 = 1UL;
                for (l_1569 = (-3); (l_1569 != 23); l_1569 = safe_add_func_int16_t_s_s(l_1569, 5))
                { /* block id: 912 */
                    uint8_t l_1572[7][2][2] = {{{251UL,251UL},{251UL,251UL}},{{251UL,251UL},{251UL,251UL}},{{251UL,251UL},{251UL,251UL}},{{251UL,251UL},{251UL,251UL}},{{251UL,251UL},{251UL,251UL}},{{251UL,251UL},{251UL,251UL}},{{251UL,251UL},{251UL,251UL}}};
                    int32_t l_1588 = 3L;
                    uint32_t l_1589 = 4UL;
                    uint8_t l_1590[10][6][4] = {{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}},{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}},{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}},{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}},{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}},{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}},{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}},{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}},{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}},{{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL},{0xCEL,0xAAL,0xD5L,0x6FL}}};
                    int i, j, k;
                    --l_1572[0][0][0];
                    for (l_1572[5][0][0] = 0; (l_1572[5][0][0] <= 0); l_1572[5][0][0] += 1)
                    { /* block id: 916 */
                        uint16_t l_1575 = 0x1157L;
                        int8_t l_1576[5];
                        int32_t l_1577 = 0x44E46E41L;
                        int32_t l_1578 = (-1L);
                        int32_t l_1580[3][10][2] = {{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}}};
                        int32_t * volatile l_1579 = &l_1580[1][1][1];/* VOLATILE GLOBAL l_1579 */
                        int32_t l_1581 = (-2L);
                        uint32_t l_1582 = 0x6154D18EL;
                        uint32_t l_1583 = 4294967292UL;
                        uint8_t *l_1587 = (void*)0;
                        uint8_t **l_1586[10][3];
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                            l_1576[i] = 0L;
                        for (i = 0; i < 10; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_1586[i][j] = &l_1587;
                        }
                        l_1579 = ((((l_1576[1] = l_1575) , l_1577) , GROUP_DIVERGE(1, 1)) , (l_1578 , p_1861->g_1161[(l_1572[5][0][0] + 1)][l_1572[5][0][0]][l_1572[5][0][0]]));
                        l_1477 = (void*)0;
                        l_1478 = (l_1581 , (l_1582 , ((l_1583--) , (-1L))));
                        l_1586[5][0] = l_1586[5][0];
                    }
                    l_1589 = (l_1588 = 0L);
                    l_1478 = l_1590[2][1][3];
                }
                l_1478 = 0x7F06A28DL;
                if ((l_1592 = (l_1478 &= ((l_1591 , 5L) , 0L))))
                { /* block id: 931 */
                    uint32_t l_1593 = 9UL;
                    uint8_t l_1594 = 0x5DL;
                    uint16_t l_1595 = 0x4BC7L;
                    int32_t l_1597 = 0x24986572L;
                    int32_t *l_1596 = &l_1597;
                    uint8_t l_1598 = 1UL;
                    uint32_t l_1599 = 4294967291UL;
                    l_1478 = (l_1594 &= (l_1593 , 0x642EE42CL));
                    l_1596 = (l_1595 , (l_1477 = (void*)0));
                    l_1478 = (GROUP_DIVERGE(0, 1) , (l_1569 = l_1598));
                    if (l_1599)
                    { /* block id: 938 */
                        int32_t l_1601[7] = {0x36925F97L,0x36925F97L,0x36925F97L,0x36925F97L,0x36925F97L,0x36925F97L,0x36925F97L};
                        int32_t *l_1600 = &l_1601[0];
                        int i;
                        l_1596 = l_1600;
                        (*l_1596) ^= 0L;
                    }
                    else
                    { /* block id: 941 */
                        int32_t l_1603[7][1][3] = {{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}}};
                        int32_t *l_1602 = &l_1603[6][0][0];
                        int16_t l_1604 = (-1L);
                        int32_t l_1605 = 8L;
                        uint8_t l_1606 = 0x08L;
                        uint16_t l_1607 = 1UL;
                        uint32_t l_1608 = 0xFAA3A492L;
                        uint16_t l_1609 = 1UL;
                        int i, j, k;
                        l_1477 = l_1602;
                        l_1478 &= ((*l_1477) = 9L);
                        l_1596 = (void*)0;
                        (*l_1477) ^= (((l_1604 , l_1605) , (l_1606 , l_1607)) , (l_1608 , (l_1609 , 0x747AD811L)));
                    }
                }
                else
                { /* block id: 948 */
                    uint32_t l_1610 = 0x94FA6503L;
                    uint16_t l_1611 = 0xEC5EL;
                    int32_t l_1613 = 0x2A1753BEL;
                    int32_t *l_1612 = &l_1613;
                    int32_t *l_1614[2];
                    union U0 l_1623 = {-1L};/* VOLATILE GLOBAL l_1623 */
                    union U0 *l_1622[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    union U0 *l_1624 = &l_1623;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1614[i] = &l_1613;
                    l_1614[1] = (l_1477 = ((l_1611 = l_1610) , l_1612));
                    for (l_1613 = 0; (l_1613 <= 18); l_1613 = safe_add_func_uint8_t_u_u(l_1613, 5))
                    { /* block id: 954 */
                        uint32_t l_1617 = 0x9CA80233L;
                        uint64_t l_1618[8][2] = {{18446744073709551612UL,0UL},{18446744073709551612UL,0UL},{18446744073709551612UL,0UL},{18446744073709551612UL,0UL},{18446744073709551612UL,0UL},{18446744073709551612UL,0UL},{18446744073709551612UL,0UL},{18446744073709551612UL,0UL}};
                        int32_t l_1621 = 0x0EDDB7A2L;
                        int i, j;
                        l_1617 = 0x76683072L;
                        l_1618[2][1]--;
                        l_1621 = l_1621;
                    }
                    l_1624 = l_1622[4];
                }
                l_1478 &= l_1625;
            }
            ++l_1626;
            l_1566[0] = l_1629;
            if ((l_1630 , l_1631))
            { /* block id: 965 */
                int32_t l_1632[9][9][3] = {{{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L}},{{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L}},{{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L}},{{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L}},{{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L}},{{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L}},{{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L}},{{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L}},{{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L},{0x6AFA0995L,(-1L),0x577DBF45L}}};
                int i, j, k;
                for (l_1632[1][6][1] = 14; (l_1632[1][6][1] > (-15)); l_1632[1][6][1] = safe_sub_func_uint16_t_u_u(l_1632[1][6][1], 1))
                { /* block id: 968 */
                    union U0 l_1635 = {0x75365603080F8CB2L};/* VOLATILE GLOBAL l_1635 */
                    uint32_t l_1636 = 4294967295UL;
                    int32_t l_1638 = 0x315BE4B1L;
                    int32_t *l_1637 = &l_1638;
                    int32_t *l_1639[4][8][8] = {{{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638}},{{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638}},{{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638}},{{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638},{(void*)0,&l_1638,&l_1638,&l_1638,(void*)0,(void*)0,&l_1638,&l_1638}}};
                    int32_t *l_1640 = &l_1638;
                    uint64_t l_1641 = 18446744073709551615UL;
                    int i, j, k;
                    l_1640 = ((l_1635 , (l_1636 , 4UL)) , (l_1639[0][1][1] = (l_1477 = l_1637)));
                    if ((l_1641 , 0x274C167DL))
                    { /* block id: 972 */
                        uint8_t l_1642 = 255UL;
                        uint32_t l_1643 = 0x6E3A5095L;
                        int64_t l_1644 = 0L;
                        (*l_1637) ^= ((((FAKE_DIVERGE(p_1861->group_0_offset, get_group_id(0), 10) , l_1642) , l_1643) , l_1644) , 0x3D131346L);
                    }
                    else
                    { /* block id: 974 */
                        int32_t *l_1645 = (void*)0;
                        int32_t l_1647 = (-10L);
                        int32_t *l_1646[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        l_1637 = (l_1640 = (l_1646[3] = (l_1477 = l_1645)));
                    }
                    l_1477 = (void*)0;
                    for (l_1636 = (-2); (l_1636 >= 45); l_1636 = safe_add_func_uint32_t_u_u(l_1636, 8))
                    { /* block id: 983 */
                        int16_t l_1650 = (-8L);
                        uint32_t l_1651 = 0xBAB71939L;
                        uint32_t l_1652[5];
                        uint32_t l_1653 = 4294967293UL;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_1652[i] = 4294967293UL;
                        l_1653 = (l_1650 , (l_1652[1] &= l_1651));
                    }
                }
            }
            else
            { /* block id: 988 */
                int32_t l_1654 = 0L;
                for (l_1654 = 0; (l_1654 != 16); l_1654 = safe_add_func_int32_t_s_s(l_1654, 7))
                { /* block id: 991 */
                    int64_t l_1657 = 9L;
                    uint16_t l_1658 = 0x5F1DL;
                    uint8_t l_1659 = 0x26L;
                    uint32_t l_1663 = 0x9083D322L;
                    int64_t l_1664 = 0L;
                    uint64_t l_1665 = 0x6D9479D96D63C722L;
                    int32_t l_1666 = 7L;
                    int8_t l_1667[6][2] = {{0x3FL,(-1L)},{0x3FL,(-1L)},{0x3FL,(-1L)},{0x3FL,(-1L)},{0x3FL,(-1L)},{0x3FL,(-1L)}};
                    int32_t l_1670 = 0x4BD056BFL;
                    int16_t l_1671 = 8L;
                    int i, j;
                    l_1658 = (l_1566[0] |= l_1657);
                    l_1566[1] |= l_1659;
                    for (l_1659 = (-7); (l_1659 < 23); l_1659 = safe_add_func_int8_t_s_s(l_1659, 9))
                    { /* block id: 997 */
                        int16_t l_1662 = 0x4F3EL;
                        l_1566[1] = l_1662;
                    }
                    l_1478 &= (l_1663 , (l_1671 &= ((l_1664 , ((l_1665 , (l_1480 = l_1666)) , (l_1667[4][0] , ((++l_1479) , (l_1474[4][0][4] = l_1670))))) , (-1L))));
                }
                for (l_1654 = (-9); (l_1654 <= (-15)); --l_1654)
                { /* block id: 1008 */
                    uint32_t l_1674 = 4294967295UL;
                    int32_t l_1678 = 0x304BC56DL;
                    int32_t *l_1677 = &l_1678;
                    --l_1674;
                    l_1477 = l_1677;
                }
                for (l_1654 = (-15); (l_1654 != 13); l_1654++)
                { /* block id: 1014 */
                    int32_t l_1682 = 1L;
                    int32_t *l_1681[5];
                    int32_t *l_1683 = &l_1682;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1681[i] = &l_1682;
                    l_1683 = (l_1477 = l_1681[0]);
                }
            }
        }
        l_1685[2] = l_1684;
        unsigned int result = 0;
        result += l_1473;
        int l_1474_i0, l_1474_i1, l_1474_i2;
        for (l_1474_i0 = 0; l_1474_i0 < 8; l_1474_i0++) {
            for (l_1474_i1 = 0; l_1474_i1 < 1; l_1474_i1++) {
                for (l_1474_i2 = 0; l_1474_i2 < 5; l_1474_i2++) {
                    result += l_1474[l_1474_i0][l_1474_i1][l_1474_i2];
                }
            }
        }
        result += l_1475;
        result += l_1476;
        result += l_1478;
        result += l_1479;
        result += l_1480;
        atomic_add(&p_1861->l_special_values[41], result);
    }
    else
    { /* block id: 1021 */
        (1 + 1);
    }
    return p_1861->g_569;
}


/* ------------------------------------------ */
/* 
 * reads : p_1861->g_139 p_1861->g_145 p_1861->g_569 p_1861->g_519 p_1861->g_520 p_1861->g_77 p_1861->g_406 p_1861->g_274 p_1861->g_117 p_1861->g_97 p_1861->g_627 p_1861->g_99 p_1861->g_2 p_1861->g_399 p_1861->g_146 p_1861->g_4 p_1861->g_119 p_1861->g_82 p_1861->g_669
 * writes: p_1861->g_139 p_1861->g_146 p_1861->g_138 p_1861->g_569 p_1861->g_77 p_1861->g_119 p_1861->g_82 p_1861->g_518.f0 p_1861->g_144 p_1861->g_407 p_1861->g_600 p_1861->g_200 p_1861->g_97 p_1861->g_627 p_1861->g_99 p_1861->g_641 p_1861->g_399 p_1861->g_274 p_1861->g_669
 */
int32_t  func_36(uint8_t  p_37, int32_t * p_38, int32_t * p_39, int32_t * p_40, struct S1 * p_1861)
{ /* block id: 302 */
    uint8_t l_561[2][8] = {{251UL,0xC8L,251UL,251UL,0xC8L,251UL,251UL,0xC8L},{251UL,0xC8L,251UL,251UL,0xC8L,251UL,251UL,0xC8L}};
    int32_t l_574 = 1L;
    int32_t l_575 = 0x7EEB8E14L;
    int32_t l_576[1][9];
    int16_t l_577 = (-1L);
    int16_t l_579 = 0x133AL;
    uint64_t l_581 = 0x746C52E970126CAAL;
    uint16_t *l_594[2][2][5] = {{{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,&p_1861->g_99},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,&p_1861->g_99}},{{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,&p_1861->g_99},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,&p_1861->g_99}}};
    union U0 **l_602 = &p_1861->g_520;
    int8_t *l_607 = &p_1861->g_200;
    int32_t l_625[2][7];
    int64_t *l_657 = &p_1861->g_335;
    int64_t **l_708 = &p_1861->g_482[5];
    uint64_t l_739 = 8UL;
    int64_t l_759 = 0x2F07F562C7910104L;
    uint32_t *l_804 = &p_1861->g_627;
    int16_t l_842[6] = {0x71D0L,0x6C43L,0x71D0L,0x71D0L,0x6C43L,0x71D0L};
    union U0 *l_930 = &p_1861->g_931;
    uint8_t *l_1094 = (void*)0;
    uint64_t l_1102 = 18446744073709551615UL;
    int32_t l_1196 = (-1L);
    int32_t l_1197 = 0x492DDF83L;
    int16_t ***l_1215[1][9] = {{(void*)0,&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,(void*)0}};
    int64_t l_1238 = 6L;
    int64_t l_1298 = (-10L);
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
            l_576[i][j] = 0L;
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
            l_625[i][j] = 2L;
    }
    for (p_1861->g_139 = 0; (p_1861->g_139 <= 0); p_1861->g_139 += 1)
    { /* block id: 305 */
        int32_t **l_552[10] = {(void*)0,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,(void*)0,(void*)0,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,(void*)0};
        uint32_t *l_553 = &p_1861->g_144;
        uint32_t **l_554 = (void*)0;
        uint32_t **l_555 = &l_553;
        uint8_t *l_560 = (void*)0;
        int32_t *l_568 = &p_1861->g_569;
        uint32_t *l_573 = &p_1861->g_144;
        uint32_t **l_572 = &l_573;
        int8_t l_578[1];
        int64_t l_580 = 0x6EB468899961C87EL;
        int32_t *l_588 = &l_574;
        union U0 **l_642[9] = {&p_1861->g_520,&p_1861->g_520,&p_1861->g_520,&p_1861->g_520,&p_1861->g_520,&p_1861->g_520,&p_1861->g_520,&p_1861->g_520,&p_1861->g_520};
        int64_t *l_658 = &p_1861->g_335;
        int i;
        for (i = 0; i < 1; i++)
            l_578[i] = 0x56L;
        p_1861->g_138 = ((*p_1861->g_145) = (void*)0);
        (*p_38) &= (((*l_555) = l_553) != ((*l_572) = func_32(((safe_mul_func_uint16_t_u_u(p_37, ((0x2377L == (safe_mul_func_int8_t_s_s((p_37 < (l_561[0][7]--)), ((safe_add_func_int16_t_s_s((p_37 >= 0UL), (((*l_568) ^= (safe_sub_func_int8_t_s_s(p_37, p_37))) , ((safe_rshift_func_uint8_t_u_u((((*p_1861->g_519) == (void*)0) && 1L), 6)) || 0x4ACA250692174E76L)))) && FAKE_DIVERGE(p_1861->group_0_offset, get_group_id(0), 10))))) > 0x0495L))) , l_561[0][7]), p_1861)));
        if ((*p_38))
            continue;
        l_581--;
        for (p_1861->g_119 = 0; (p_1861->g_119 <= 0); p_1861->g_119 += 1)
        { /* block id: 317 */
            int16_t **l_596 = &p_1861->g_117;
            int16_t **l_598[9][4] = {{&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117},{&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117},{&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117},{&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117},{&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117},{&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117},{&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117},{&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117},{&p_1861->g_117,&p_1861->g_117,&p_1861->g_117,&p_1861->g_117}};
            int32_t l_616 = 0x6104229DL;
            uint32_t *l_626[4][6][10] = {{{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627}},{{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627}},{{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627}},{{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627},{&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627,&p_1861->g_627}}};
            uint32_t l_656 = 0x571FA353L;
            int32_t l_666 = 0x3B5B6D57L;
            int32_t l_667[6][10] = {{(-6L),(-6L),(-2L),(-2L),0x0BA44002L,0x67673C8CL,0x3BCD14B2L,0x2D82C4BCL,0x3BCD14B2L,0x67673C8CL},{(-6L),(-6L),(-2L),(-2L),0x0BA44002L,0x67673C8CL,0x3BCD14B2L,0x2D82C4BCL,0x3BCD14B2L,0x67673C8CL},{(-6L),(-6L),(-2L),(-2L),0x0BA44002L,0x67673C8CL,0x3BCD14B2L,0x2D82C4BCL,0x3BCD14B2L,0x67673C8CL},{(-6L),(-6L),(-2L),(-2L),0x0BA44002L,0x67673C8CL,0x3BCD14B2L,0x2D82C4BCL,0x3BCD14B2L,0x67673C8CL},{(-6L),(-6L),(-2L),(-2L),0x0BA44002L,0x67673C8CL,0x3BCD14B2L,0x2D82C4BCL,0x3BCD14B2L,0x67673C8CL},{(-6L),(-6L),(-2L),(-2L),0x0BA44002L,0x67673C8CL,0x3BCD14B2L,0x2D82C4BCL,0x3BCD14B2L,0x67673C8CL}};
            int8_t l_668 = 0x66L;
            int i, j, k;
            (*p_38) = (*p_38);
            for (p_1861->g_82 = 0; (p_1861->g_82 >= 0); p_1861->g_82 -= 1)
            { /* block id: 321 */
                int8_t *l_589 = &p_1861->g_200;
                int16_t **l_595 = &p_1861->g_117;
                int16_t ***l_597 = &l_595;
                uint32_t *l_599[6] = {&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600};
                int32_t l_601 = 0x3AB382D2L;
                int i;
                for (p_37 = 0; (p_37 <= 0); p_37 += 1)
                { /* block id: 324 */
                    uint64_t l_584 = 18446744073709551615UL;
                    int16_t l_587 = 0x0D01L;
                    l_584++;
                    if (l_587)
                        break;
                }
                for (p_1861->g_518.f0 = 0; p_1861->g_518.f0 < 10; p_1861->g_518.f0 += 1)
                {
                    l_552[p_1861->g_518.f0] = &p_1861->g_146;
                }
                for (p_1861->g_144 = 0; (p_1861->g_144 <= 0); p_1861->g_144 += 1)
                { /* block id: 331 */
                    p_39 = l_588;
                }
                (*p_1861->g_145) = (((l_589 != (void*)0) < (safe_add_func_uint64_t_u_u((!((((l_561[0][6] >= (safe_mul_func_uint8_t_u_u(p_37, (((l_576[0][8] ^= ((((*p_1861->g_406) = l_594[0][0][4]) != (void*)0) , (p_1861->g_600 = ((p_37 , ((*l_597) = (l_596 = l_595))) == l_598[2][3])))) , l_601) >= p_37)))) , 0x184BF27DL) , (void*)0) != l_602)), FAKE_DIVERGE(p_1861->global_1_offset, get_global_id(1), 10)))) , (void*)0);
            }
            if (l_579)
                continue;
            (*p_1861->g_145) = func_32((((safe_mul_func_int16_t_s_s(((*p_1861->g_117) |= (((safe_lshift_func_uint8_t_u_s(((void*)0 == l_607), 5)) <= ((*l_588) = (safe_sub_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_1861->local_0_offset, get_local_id(0), 10), (safe_sub_func_int64_t_s_s(p_37, (((l_576[0][4] , (l_575 = (0xD1A3L > (safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1861->local_1_offset, get_local_id(1), 10), ((+l_616) <= (safe_div_func_int64_t_s_s((safe_mod_func_int8_t_s_s((p_1861->g_274[4] | ((((safe_rshift_func_int8_t_s_s(((*l_607) = l_576[0][5]), ((safe_add_func_uint64_t_u_u(l_561[0][7], GROUP_DIVERGE(1, 1))) , (-1L)))) >= 0x1B41L) != p_37) | l_625[1][6])), FAKE_DIVERGE(p_1861->global_1_offset, get_global_id(1), 10))), 0x472B68E144C2216CL)))))))) , p_1861->g_139) < l_616))))), (*p_38))))) <= 0x67FFCBC2C4985605L)), l_576[0][3])) | p_37) , p_37), p_1861);
            for (p_1861->g_627 = 0; (p_1861->g_627 <= 0); p_1861->g_627 += 1)
            { /* block id: 349 */
                uint32_t l_628 = 0x7AC7C935L;
                int64_t *l_663 = &l_580;
                int32_t l_664 = 6L;
                int32_t l_665[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_665[i] = (-1L);
                for (p_1861->g_99 = 0; (p_1861->g_99 <= 0); p_1861->g_99 += 1)
                { /* block id: 352 */
                    uint64_t l_629 = 18446744073709551608UL;
                    union U0 ***l_640[8] = {&l_602,&l_602,&l_602,&l_602,&l_602,&l_602,&l_602,&l_602};
                    uint64_t *l_647 = &p_1861->g_399;
                    uint8_t *l_650 = (void*)0;
                    uint8_t *l_651 = (void*)0;
                    int i;
                    if (l_628)
                        break;
                    if (l_625[1][6])
                        break;
                    (*p_38) = (l_629 ^ (safe_sub_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1861->local_1_offset, get_local_id(1), 10), ((safe_mul_func_uint16_t_u_u((((0x3DC271791B76DA3CL > (((p_37 = (p_1861->g_274[4] = ((safe_lshift_func_uint16_t_u_s(((safe_add_func_uint32_t_u_u(((p_1861->g_641 = &p_1861->g_520) != l_642[0]), l_625[0][6])) > p_1861->g_2), ((safe_rshift_func_uint8_t_u_s(((p_37 < (safe_add_func_int8_t_s_s(((-10L) || (++(*l_647))), p_37))) != GROUP_DIVERGE(0, 1)), 3)) >= p_37))) > l_629))) != l_616) , 0x7C22005E14CFEF80L)) <= (*p_1861->g_146)) < l_629), (*l_588))) & l_561[0][7]))), p_1861->g_119)));
                    if (l_628)
                        break;
                }
                (*p_38) = ((*l_588) ^= (safe_sub_func_int64_t_s_s((l_561[0][7] < (&p_1861->g_600 == ((p_1861->g_274[3] = (((*l_663) = ((((l_616 , (safe_mod_func_uint32_t_u_u(((((l_656 <= (l_616 && ((FAKE_DIVERGE(p_1861->group_0_offset, get_group_id(0), 10) , l_657) != l_658))) | (((p_1861->g_82 , (((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((l_656 ^ (-6L)), 4)), GROUP_DIVERGE(0, 1))) , 1L) || p_37)) , p_37) ^ (*p_1861->g_117))) < p_37) < 0x21L), l_628))) , p_37) != p_37) < l_656)) | 18446744073709551615UL)) , p_38))), p_1861->g_77[0])));
                (*p_1861->g_145) = func_32(l_628, p_1861);
                ++p_1861->g_669[3];
            }
        }
    }
    for (p_1861->g_97 = 0; (p_1861->g_97 < (-16)); p_1861->g_97 = safe_sub_func_int16_t_s_s(p_1861->g_97, 2))
    { /* block id: 373 */
        union U0 *l_687 = &p_1861->g_518;
        int32_t l_691 = 0x1DA5BAA0L;
        int32_t l_697 = 0x28F67B22L;
        uint32_t *l_717[10] = {&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600,&p_1861->g_600};
        int8_t **l_726 = (void*)0;
        int32_t l_767 = 0x55AA334BL;
        int32_t l_768 = 0x3BD99170L;
        int32_t l_770[5] = {8L,8L,8L,8L,8L};
        int32_t l_1007 = 1L;
        uint32_t l_1076 = 7UL;
        uint8_t *l_1093 = &p_1861->g_274[4];
        uint16_t *l_1097[2][4][10] = {{{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,(void*)0,&p_1861->g_99},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,(void*)0,&p_1861->g_99},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,(void*)0,&p_1861->g_99},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,(void*)0,&p_1861->g_99}},{{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,(void*)0,&p_1861->g_99},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,(void*)0,&p_1861->g_99},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,(void*)0,&p_1861->g_99},{&p_1861->g_99,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,&p_1861->g_99,(void*)0,&p_1861->g_99,(void*)0,&p_1861->g_99}}};
        uint16_t l_1157 = 0xB56DL;
        int8_t l_1190[5][10];
        int16_t ***l_1214[5][6][6] = {{{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0}},{{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0}},{{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0}},{{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0}},{{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0},{&p_1861->g_1212,(void*)0,(void*)0,&p_1861->g_1212,&p_1861->g_1212,(void*)0}}};
        int32_t *l_1299 = &p_1861->g_77[1];
        uint64_t l_1307 = 0x9483A03A987C0E2AL;
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 10; j++)
                l_1190[i][j] = (-3L);
        }
        l_576[0][5] = (safe_rshift_func_uint16_t_u_u(p_37, 12));
    }
    for (p_37 = 0; (p_37 <= 13); p_37++)
    { /* block id: 737 */
        uint32_t l_1335 = 0x1879CA40L;
        return l_1335;
    }
    return l_581;
}


/* ------------------------------------------ */
/* 
 * reads : p_1861->g_4 p_1861->g_8 p_1861->g_93 p_1861->g_82 p_1861->g_77 p_1861->g_138 p_1861->g_139 p_1861->g_119 p_1861->g_84 p_1861->g_145 p_1861->g_97 p_1861->g_2 p_1861->g_146 p_1861->g_117 p_1861->g_406 p_1861->g_407 p_1861->g_99 p_1861->g_83 p_1861->g_274
 * writes: p_1861->g_117 p_1861->g_119 p_1861->g_77 p_1861->g_2 p_1861->g_82 p_1861->g_139 p_1861->g_144 p_1861->g_146 p_1861->g_97 p_1861->g_185 p_1861->g_310
 */
int32_t * func_41(uint8_t  p_42, int32_t * p_43, struct S1 * p_1861)
{ /* block id: 44 */
    int16_t *l_116 = &p_1861->g_97;
    int16_t **l_115[9][3] = {{&l_116,&l_116,&l_116},{&l_116,&l_116,&l_116},{&l_116,&l_116,&l_116},{&l_116,&l_116,&l_116},{&l_116,&l_116,&l_116},{&l_116,&l_116,&l_116},{&l_116,&l_116,&l_116},{&l_116,&l_116,&l_116},{&l_116,&l_116,&l_116}};
    uint64_t *l_118 = &p_1861->g_119;
    int32_t l_122 = 0x2213CC13L;
    int32_t l_169 = (-1L);
    int32_t l_170[4];
    uint16_t l_171 = 0x393DL;
    int32_t **l_198[6] = {&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146};
    int64_t l_206 = 0L;
    uint32_t l_227 = 0UL;
    int32_t l_317 = 6L;
    uint16_t *l_404 = &p_1861->g_99;
    uint16_t **l_403 = &l_404;
    uint8_t l_413 = 0x49L;
    int16_t l_467 = (-1L);
    uint32_t l_512 = 0x98493944L;
    union U0 *l_517[9] = {&p_1861->g_518,&p_1861->g_518,&p_1861->g_518,&p_1861->g_518,&p_1861->g_518,&p_1861->g_518,&p_1861->g_518,&p_1861->g_518,&p_1861->g_518};
    uint8_t l_545 = 0xE8L;
    int8_t *l_546 = &p_1861->g_82;
    int8_t **l_547 = &p_1861->g_310[0][3];
    int64_t l_548[1][4][9] = {{{8L,1L,8L,8L,1L,8L,8L,1L,8L},{8L,1L,8L,8L,1L,8L,8L,1L,8L},{8L,1L,8L,8L,1L,8L,8L,1L,8L},{8L,1L,8L,8L,1L,8L,8L,1L,8L}}};
    int32_t *l_549 = &p_1861->g_77[1];
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_170[i] = 0x4DB2FC5BL;
    if (((1L > (0xCE37L <= (safe_lshift_func_int8_t_s_u((((*l_118) = ((((p_1861->g_117 = &p_1861->g_97) != &p_1861->g_97) < p_42) > 0x69L)) && (p_42 | 0x7B7EL)), (safe_sub_func_uint8_t_u_u(p_1861->g_4, 0xCCL)))))) | l_122))
    { /* block id: 47 */
        int32_t *l_123[1];
        int i;
        for (i = 0; i < 1; i++)
            l_123[i] = &p_1861->g_77[1];
        (*p_1861->g_93) = (p_1861->g_77[1] = (*p_43));
        if ((atomic_inc(&p_1861->l_atomic_input[6]) == 8))
        { /* block id: 51 */
            int8_t l_124 = 1L;
            int32_t l_125 = 3L;
            uint8_t l_126 = 250UL;
            int64_t l_129[6][10] = {{0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L,0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L},{0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L,0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L},{0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L,0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L},{0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L,0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L},{0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L,0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L},{0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L,0x415474206E045289L,1L,(-1L),1L,0x415474206E045289L}};
            uint16_t l_130 = 0xE23EL;
            int32_t l_132[7][8] = {{0L,0x60450DFDL,(-1L),(-10L),0L,0L,(-10L),(-1L)},{0L,0x60450DFDL,(-1L),(-10L),0L,0L,(-10L),(-1L)},{0L,0x60450DFDL,(-1L),(-10L),0L,0L,(-10L),(-1L)},{0L,0x60450DFDL,(-1L),(-10L),0L,0L,(-10L),(-1L)},{0L,0x60450DFDL,(-1L),(-10L),0L,0L,(-10L),(-1L)},{0L,0x60450DFDL,(-1L),(-10L),0L,0L,(-10L),(-1L)},{0L,0x60450DFDL,(-1L),(-10L),0L,0L,(-10L),(-1L)}};
            int32_t *l_131 = &l_132[1][4];
            int32_t *l_133 = &l_132[1][4];
            int32_t *l_134 = &l_132[1][4];
            int64_t l_135 = 0x4B7113991646DB42L;
            int i, j;
            l_125 = l_124;
            l_126++;
            l_134 = ((l_130 = (l_129[4][4] , GROUP_DIVERGE(0, 1))) , (l_133 = l_131));
            l_135 = 1L;
            unsigned int result = 0;
            result += l_124;
            result += l_125;
            result += l_126;
            int l_129_i0, l_129_i1;
            for (l_129_i0 = 0; l_129_i0 < 6; l_129_i0++) {
                for (l_129_i1 = 0; l_129_i1 < 10; l_129_i1++) {
                    result += l_129[l_129_i0][l_129_i1];
                }
            }
            result += l_130;
            int l_132_i0, l_132_i1;
            for (l_132_i0 = 0; l_132_i0 < 7; l_132_i0++) {
                for (l_132_i1 = 0; l_132_i1 < 8; l_132_i1++) {
                    result += l_132[l_132_i0][l_132_i1];
                }
            }
            result += l_135;
            atomic_add(&p_1861->l_special_values[6], result);
        }
        else
        { /* block id: 58 */
            (1 + 1);
        }
    }
    else
    { /* block id: 61 */
        int32_t *l_147 = (void*)0;
        int32_t l_158 = 0x4AB7E174L;
        int32_t l_160[2];
        uint32_t l_161 = 4294967287UL;
        int32_t *l_166 = &p_1861->g_139;
        int32_t *l_167 = &l_122;
        int32_t *l_168[1][10][3] = {{{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]},{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]},{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]},{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]},{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]},{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]},{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]},{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]},{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]},{&p_1861->g_8,&p_1861->g_8,&p_1861->g_77[1]}}};
        int64_t *l_184 = &p_1861->g_185;
        int32_t **l_186 = &l_147;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_160[i] = 1L;
        for (p_1861->g_82 = (-27); (p_1861->g_82 == 26); p_1861->g_82 = safe_add_func_uint16_t_u_u(p_1861->g_82, 1))
        { /* block id: 64 */
            uint8_t l_149 = 0UL;
            int32_t *l_165[1][1][7];
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 7; k++)
                        l_165[i][j][k] = &l_160[1];
                }
            }
            for (l_122 = 0; (l_122 <= 2); l_122 += 1)
            { /* block id: 67 */
                int i;
                (*p_1861->g_138) &= (p_1861->g_77[l_122] = p_1861->g_77[l_122]);
                for (p_1861->g_119 = 0; (p_1861->g_119 <= 2); p_1861->g_119 += 1)
                { /* block id: 72 */
                    uint32_t *l_142 = (void*)0;
                    uint32_t *l_143[8][6][3] = {{{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144}},{{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144}},{{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144}},{{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144}},{{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144}},{{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144}},{{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144}},{{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144},{&p_1861->g_144,&p_1861->g_144,&p_1861->g_144}}};
                    int32_t **l_148 = &l_147;
                    int i, j, k;
                    (*p_1861->g_145) = ((p_1861->g_144 = (safe_lshift_func_int16_t_s_u(p_1861->g_84[p_1861->g_119], 7))) , &p_1861->g_77[l_122]);
                    (*l_148) = l_147;
                    --l_149;
                }
                for (p_1861->g_97 = 0; (p_1861->g_97 <= 2); p_1861->g_97 += 1)
                { /* block id: 80 */
                    int8_t l_152 = 0x1BL;
                    int32_t l_159[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_159[i] = 0x18C0EBE4L;
                    for (p_1861->g_139 = 2; (p_1861->g_139 >= 0); p_1861->g_139 -= 1)
                    { /* block id: 83 */
                        int32_t *l_153 = &p_1861->g_77[1];
                        int32_t *l_154 = &p_1861->g_77[l_122];
                        int32_t *l_155 = &p_1861->g_77[l_122];
                        int32_t *l_156 = &p_1861->g_77[p_1861->g_97];
                        int32_t *l_157[7][5] = {{&p_1861->g_77[p_1861->g_97],&p_1861->g_4,&p_1861->g_4,&p_1861->g_77[0],&l_122},{&p_1861->g_77[p_1861->g_97],&p_1861->g_4,&p_1861->g_4,&p_1861->g_77[0],&l_122},{&p_1861->g_77[p_1861->g_97],&p_1861->g_4,&p_1861->g_4,&p_1861->g_77[0],&l_122},{&p_1861->g_77[p_1861->g_97],&p_1861->g_4,&p_1861->g_4,&p_1861->g_77[0],&l_122},{&p_1861->g_77[p_1861->g_97],&p_1861->g_4,&p_1861->g_4,&p_1861->g_77[0],&l_122},{&p_1861->g_77[p_1861->g_97],&p_1861->g_4,&p_1861->g_4,&p_1861->g_77[0],&l_122},{&p_1861->g_77[p_1861->g_97],&p_1861->g_4,&p_1861->g_4,&p_1861->g_77[0],&l_122}};
                        int i, j;
                        l_161--;
                        (*l_154) = (-1L);
                    }
                }
            }
            for (p_42 = 0; (p_42 <= 2); p_42 += 1)
            { /* block id: 91 */
                int32_t *l_164[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_164[i] = (void*)0;
                l_164[4] = func_32(p_42, p_1861);
            }
            if ((*p_1861->g_93))
                break;
            l_122 = ((*p_1861->g_146) != ((void*)0 == &p_1861->g_99));
        }
        l_171++;
        (*l_166) &= (!((safe_div_func_int16_t_s_s((+p_42), (safe_div_func_uint64_t_u_u(p_42, ((0x2CL <= (safe_sub_func_uint16_t_u_u(((l_171 > ((*p_43) && 0x7A57FA40L)) < p_42), ((*p_1861->g_117) ^= (safe_sub_func_uint64_t_u_u((safe_sub_func_int8_t_s_s(0L, (((*l_184) = l_122) , FAKE_DIVERGE(p_1861->local_1_offset, get_local_id(1), 10)))), 0x28A79E9157D21545L)))))) || 1L))))) || (*p_1861->g_117)));
        (*l_186) = p_43;
    }
    for (p_1861->g_82 = (-30); (p_1861->g_82 < 17); p_1861->g_82 = safe_add_func_uint64_t_u_u(p_1861->g_82, 3))
    { /* block id: 105 */
        int32_t l_201 = 0x072E5875L;
        int8_t *l_214 = &p_1861->g_215;
        uint32_t *l_231[1][2];
        int32_t l_233 = 1L;
        int32_t l_235 = (-1L);
        int32_t l_236[3];
        uint32_t l_268 = 0x3CC25A29L;
        int32_t **l_280 = &p_1861->g_146;
        int16_t **l_344[3][4][10] = {{{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116},{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116},{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116},{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116}},{{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116},{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116},{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116},{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116}},{{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116},{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116},{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116},{&l_116,&l_116,&l_116,&l_116,&l_116,&l_116,&p_1861->g_117,(void*)0,&p_1861->g_117,&l_116}}};
        int64_t l_364 = 0x3A8C9BF9A9C39393L;
        int64_t l_431[7][10] = {{0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L,0x708695BF94B92C20L,(-5L),0x708695BF94B92C20L,0x4F840EB2EE292054L,0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L},{0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L,0x708695BF94B92C20L,(-5L),0x708695BF94B92C20L,0x4F840EB2EE292054L,0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L},{0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L,0x708695BF94B92C20L,(-5L),0x708695BF94B92C20L,0x4F840EB2EE292054L,0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L},{0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L,0x708695BF94B92C20L,(-5L),0x708695BF94B92C20L,0x4F840EB2EE292054L,0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L},{0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L,0x708695BF94B92C20L,(-5L),0x708695BF94B92C20L,0x4F840EB2EE292054L,0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L},{0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L,0x708695BF94B92C20L,(-5L),0x708695BF94B92C20L,0x4F840EB2EE292054L,0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L},{0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L,0x708695BF94B92C20L,(-5L),0x708695BF94B92C20L,0x4F840EB2EE292054L,0x05ED16C95CC9CF7EL,0x05ED16C95CC9CF7EL,0x4F840EB2EE292054L}};
        uint32_t l_444 = 4294967295UL;
        int32_t *l_447 = &p_1861->g_139;
        uint32_t l_455 = 1UL;
        int32_t *l_459[7] = {&l_122,&l_170[2],&l_122,&l_122,&l_170[2],&l_122,&l_122};
        int32_t *l_460 = (void*)0;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
                l_231[i][j] = &l_227;
        }
        for (i = 0; i < 3; i++)
            l_236[i] = 0x04230E62L;
        (1 + 1);
    }
    if ((atomic_inc(&p_1861->g_atomic_input[56 * get_linear_group_id() + 29]) == 3))
    { /* block id: 287 */
        int32_t l_521 = 1L;
        for (l_521 = 11; (l_521 != (-11)); l_521 = safe_sub_func_uint16_t_u_u(l_521, 2))
        { /* block id: 290 */
            uint32_t l_524 = 0xEB228C7FL;
            l_524++;
        }
        unsigned int result = 0;
        result += l_521;
        atomic_add(&p_1861->g_special_values[56 * get_linear_group_id() + 29], result);
    }
    else
    { /* block id: 293 */
        (1 + 1);
    }
    p_1861->g_139 &= ((safe_sub_func_int16_t_s_s((p_42 <= (safe_sub_func_int16_t_s_s((!(p_42 && (p_42 <= ((((safe_mod_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((**p_1861->g_406) < (&p_1861->g_97 != &p_1861->g_97)), 7)), (safe_sub_func_int32_t_s_s(((((*l_547) = (l_546 = ((p_1861->g_77[1] ^= (1L ^ ((((65530UL ^ ((safe_rshift_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(p_42, (*p_1861->g_83))), 0xB388L)) < p_42) == p_42), 7)) && p_42)) != 0x1207AB82F4EA6779L) , l_545) , p_1861->g_274[1]))) , (void*)0))) != &p_1861->g_200) != (*p_43)), 0x62B01447L)))) , p_42) & p_42) >= p_42)))), 1UL))), p_42)) && l_548[0][3][8]);
    return l_549;
}


/* ------------------------------------------ */
/* 
 * reads : p_1861->g_8 p_1861->g_3 p_1861->g_93
 * writes: p_1861->g_82 p_1861->g_2
 */
int32_t  func_46(uint16_t  p_47, int32_t * p_48, struct S1 * p_1861)
{ /* block id: 37 */
    int32_t *l_100[1][6][1] = {{{&p_1861->g_77[0]},{&p_1861->g_77[0]},{&p_1861->g_77[0]},{&p_1861->g_77[0]},{&p_1861->g_77[0]},{&p_1861->g_77[0]}}};
    uint32_t l_101 = 0UL;
    int8_t *l_106 = &p_1861->g_82;
    int16_t l_109 = 0x033FL;
    int32_t l_110 = 0x25C3DAF8L;
    int16_t l_111[4] = {(-3L),(-3L),(-3L),(-3L)};
    int i, j, k;
    l_101--;
    l_110 ^= ((((((safe_add_func_int16_t_s_s((l_106 == (void*)0), ((safe_mul_func_int8_t_s_s((p_1861->g_82 = p_47), (p_1861->g_8 || p_1861->g_8))) & l_109))) , &p_48) != (((0x988D8264474F4469L || p_47) , p_47) , &p_48)) == 0x19BBL) == p_47) > p_1861->g_3);
    (*p_1861->g_93) = 0x5C7329A4L;
    return l_111[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1861->g_77 p_1861->g_8 p_1861->g_83 p_1861->g_4 p_1861->g_91 p_1861->g_93 p_1861->g_2
 * writes: p_1861->g_77 p_1861->g_82 p_1861->g_2
 */
int32_t  func_66(int64_t  p_67, int64_t  p_68, int32_t * p_69, uint64_t  p_70, uint64_t  p_71, struct S1 * p_1861)
{ /* block id: 15 */
    int32_t *l_89 = &p_1861->g_4;
    volatile int32_t * volatile *l_92[4][1];
    int i, j;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
            l_92[i][j] = &p_1861->g_93;
    }
    for (p_71 = 0; (p_71 == 39); p_71++)
    { /* block id: 18 */
        int32_t l_78 = (-4L);
        for (p_68 = (-22); (p_68 < 1); p_68 = safe_add_func_uint32_t_u_u(p_68, 3))
        { /* block id: 21 */
            int32_t *l_76 = &p_1861->g_77[1];
            int8_t *l_81 = &p_1861->g_82;
            int32_t **l_90 = &l_76;
            (*l_76) = 0x7A6FBAAEL;
            if ((*l_76))
                continue;
            p_1861->g_77[1] &= (((l_78 < l_78) > (((*p_69) >= (safe_lshift_func_int8_t_s_s((-1L), ((*l_81) = p_68)))) >= ((void*)0 == p_1861->g_83))) && (safe_mod_func_uint64_t_u_u((safe_add_func_uint8_t_u_u((l_89 != ((*l_90) = p_69)), 0xCFL)), (*l_89))));
        }
    }
    l_92[2][0] = p_1861->g_91;
    (*p_1861->g_93) &= 2L;
    return (*p_1861->g_93);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[56];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 56; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[56];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 56; i++)
            l_special_values[i] = 0;
    struct S1 c_1862;
    struct S1* p_1861 = &c_1862;
    struct S1 c_1863 = {
        1L, // p_1861->g_2
        (-9L), // p_1861->g_3
        0x36444696L, // p_1861->g_4
        0x5F6F9781L, // p_1861->g_8
        {(-2L),(-2L),(-2L)}, // p_1861->g_77
        (-1L), // p_1861->g_82
        {0x23L,0x23L,0x23L}, // p_1861->g_84
        &p_1861->g_84[1], // p_1861->g_83
        (void*)0, // p_1861->g_91
        &p_1861->g_2, // p_1861->g_93
        0L, // p_1861->g_97
        0x8738L, // p_1861->g_99
        &p_1861->g_97, // p_1861->g_117
        0x90C650DF9A620E0AL, // p_1861->g_119
        0x0102DB9AL, // p_1861->g_139
        &p_1861->g_139, // p_1861->g_138
        0x741CDB46L, // p_1861->g_144
        &p_1861->g_4, // p_1861->g_146
        &p_1861->g_146, // p_1861->g_145
        0x5037CA2DBAE0E419L, // p_1861->g_185
        0x2FL, // p_1861->g_200
        0x3CL, // p_1861->g_215
        {{-1L},{-1L}}, // p_1861->g_224
        {255UL,255UL,255UL,255UL,255UL,255UL}, // p_1861->g_274
        0x55L, // p_1861->g_282
        {{&p_1861->g_215,&p_1861->g_215,&p_1861->g_215,&p_1861->g_215,&p_1861->g_215,&p_1861->g_215}}, // p_1861->g_310
        0L, // p_1861->g_335
        {-1L}, // p_1861->g_377
        0x6D756E5C62E34A5FL, // p_1861->g_399
        &p_1861->g_99, // p_1861->g_407
        &p_1861->g_407, // p_1861->g_406
        &p_1861->g_406, // p_1861->g_405
        {&p_1861->g_185,(void*)0,&p_1861->g_185,&p_1861->g_185,(void*)0,&p_1861->g_185,&p_1861->g_185,(void*)0}, // p_1861->g_482
        {0x76A5B6E45505299AL}, // p_1861->g_518
        (void*)0, // p_1861->g_520
        &p_1861->g_520, // p_1861->g_519
        (void*)0, // p_1861->g_551
        0L, // p_1861->g_569
        0x05032808L, // p_1861->g_600
        0x0BC56A84L, // p_1861->g_627
        &p_1861->g_520, // p_1861->g_641
        {0xDEDBEDCDL,0xDEDBEDCDL,0xDEDBEDCDL,0xDEDBEDCDL,0xDEDBEDCDL,0xDEDBEDCDL}, // p_1861->g_669
        {{{{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L}},{{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L}},{{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L}}}}, // p_1861->g_696
        &p_1861->g_406, // p_1861->g_756
        4L, // p_1861->g_792
        0x029B21FEL, // p_1861->g_794
        0UL, // p_1861->g_827
        {&p_1861->g_827,&p_1861->g_827}, // p_1861->g_833
        &p_1861->g_833[0], // p_1861->g_832
        {0x090729F0D75CC3C8L}, // p_1861->g_931
        {0x1C6E51F7L,0x2E09693FL,0x1C6E51F7L,0x1C6E51F7L,0x2E09693FL,0x1C6E51F7L,0x1C6E51F7L}, // p_1861->g_1009
        0x895A81569EC80339L, // p_1861->g_1010
        {&p_1861->g_551,&p_1861->g_551,&p_1861->g_551,&p_1861->g_551,&p_1861->g_551,&p_1861->g_551,&p_1861->g_551,&p_1861->g_551,&p_1861->g_551,&p_1861->g_551}, // p_1861->g_1039
        {&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146,&p_1861->g_146}, // p_1861->g_1040
        (void*)0, // p_1861->g_1041
        0x0BL, // p_1861->g_1056
        (void*)0, // p_1861->g_1127
        {{{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139}},{{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139}},{{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139}},{{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139}},{{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139}},{{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139}},{{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_4,&p_1861->g_139,&p_1861->g_139,&p_1861->g_4,&p_1861->g_139}}}, // p_1861->g_1160
        {{{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139}},{{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139}},{{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139},{&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139,&p_1861->g_139}}}, // p_1861->g_1161
        4294967295UL, // p_1861->g_1189
        &p_1861->g_117, // p_1861->g_1212
        &p_1861->g_1212, // p_1861->g_1211
        &p_1861->g_1212, // p_1861->g_1216
        6UL, // p_1861->g_1224
        &p_1861->g_551, // p_1861->g_1239
        &p_1861->g_1009[3], // p_1861->g_1274
        18446744073709551608UL, // p_1861->g_1297
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_1861->g_1328
        {{&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274},{&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274},{&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274},{&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274},{&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274},{&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274},{&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274},{&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274},{&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274,&p_1861->g_1274}}, // p_1861->g_1338
        {0x35DBE85C774F61B1L}, // p_1861->g_1383
        {&p_1861->g_1338[2][0],&p_1861->g_1338[2][0],&p_1861->g_1338[2][0],&p_1861->g_1338[2][0],&p_1861->g_1338[2][0],&p_1861->g_1338[2][0],&p_1861->g_1338[2][0],&p_1861->g_1338[2][0]}, // p_1861->g_1397
        0x77EFL, // p_1861->g_1414
        &p_1861->g_77[0], // p_1861->g_1429
        {{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}},{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}},{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}},{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}},{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}},{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}},{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}},{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}},{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}},{{&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83,&p_1861->g_83}}}, // p_1861->g_1461
        &p_1861->g_1461[6][0][4], // p_1861->g_1460
        &p_1861->g_77[0], // p_1861->g_1689
        &p_1861->g_310[0][3], // p_1861->g_1744
        &p_1861->g_1744, // p_1861->g_1743
        &p_1861->g_139, // p_1861->g_1768
        &p_1861->g_146, // p_1861->g_1769
        {&p_1861->g_827,&p_1861->g_144,&p_1861->g_827,&p_1861->g_827,&p_1861->g_144,&p_1861->g_827,&p_1861->g_827,&p_1861->g_144}, // p_1861->g_1775
        &p_1861->g_77[1], // p_1861->g_1816
        {-9L}, // p_1861->g_1840
        {0x380D24146FF33191L}, // p_1861->g_1854
        sequence_input[get_global_id(0)], // p_1861->global_0_offset
        sequence_input[get_global_id(1)], // p_1861->global_1_offset
        sequence_input[get_global_id(2)], // p_1861->global_2_offset
        sequence_input[get_local_id(0)], // p_1861->local_0_offset
        sequence_input[get_local_id(1)], // p_1861->local_1_offset
        sequence_input[get_local_id(2)], // p_1861->local_2_offset
        sequence_input[get_group_id(0)], // p_1861->group_0_offset
        sequence_input[get_group_id(1)], // p_1861->group_1_offset
        sequence_input[get_group_id(2)], // p_1861->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1862 = c_1863;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1861);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1861->g_2, "p_1861->g_2", print_hash_value);
    transparent_crc(p_1861->g_3, "p_1861->g_3", print_hash_value);
    transparent_crc(p_1861->g_4, "p_1861->g_4", print_hash_value);
    transparent_crc(p_1861->g_8, "p_1861->g_8", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1861->g_77[i], "p_1861->g_77[i]", print_hash_value);

    }
    transparent_crc(p_1861->g_82, "p_1861->g_82", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1861->g_84[i], "p_1861->g_84[i]", print_hash_value);

    }
    transparent_crc(p_1861->g_97, "p_1861->g_97", print_hash_value);
    transparent_crc(p_1861->g_99, "p_1861->g_99", print_hash_value);
    transparent_crc(p_1861->g_119, "p_1861->g_119", print_hash_value);
    transparent_crc(p_1861->g_139, "p_1861->g_139", print_hash_value);
    transparent_crc(p_1861->g_144, "p_1861->g_144", print_hash_value);
    transparent_crc(p_1861->g_185, "p_1861->g_185", print_hash_value);
    transparent_crc(p_1861->g_200, "p_1861->g_200", print_hash_value);
    transparent_crc(p_1861->g_215, "p_1861->g_215", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1861->g_224[i].f0, "p_1861->g_224[i].f0", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1861->g_274[i], "p_1861->g_274[i]", print_hash_value);

    }
    transparent_crc(p_1861->g_282, "p_1861->g_282", print_hash_value);
    transparent_crc(p_1861->g_335, "p_1861->g_335", print_hash_value);
    transparent_crc(p_1861->g_377.f0, "p_1861->g_377.f0", print_hash_value);
    transparent_crc(p_1861->g_399, "p_1861->g_399", print_hash_value);
    transparent_crc(p_1861->g_518.f0, "p_1861->g_518.f0", print_hash_value);
    transparent_crc(p_1861->g_569, "p_1861->g_569", print_hash_value);
    transparent_crc(p_1861->g_600, "p_1861->g_600", print_hash_value);
    transparent_crc(p_1861->g_627, "p_1861->g_627", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1861->g_669[i], "p_1861->g_669[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1861->g_696[i][j][k].f0, "p_1861->g_696[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1861->g_792, "p_1861->g_792", print_hash_value);
    transparent_crc(p_1861->g_794, "p_1861->g_794", print_hash_value);
    transparent_crc(p_1861->g_827, "p_1861->g_827", print_hash_value);
    transparent_crc(p_1861->g_931.f0, "p_1861->g_931.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1861->g_1009[i], "p_1861->g_1009[i]", print_hash_value);

    }
    transparent_crc(p_1861->g_1010, "p_1861->g_1010", print_hash_value);
    transparent_crc(p_1861->g_1056, "p_1861->g_1056", print_hash_value);
    transparent_crc(p_1861->g_1189, "p_1861->g_1189", print_hash_value);
    transparent_crc(p_1861->g_1224, "p_1861->g_1224", print_hash_value);
    transparent_crc(p_1861->g_1297, "p_1861->g_1297", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1861->g_1328[i], "p_1861->g_1328[i]", print_hash_value);

    }
    transparent_crc(p_1861->g_1383.f0, "p_1861->g_1383.f0", print_hash_value);
    transparent_crc(p_1861->g_1414, "p_1861->g_1414", print_hash_value);
    transparent_crc(p_1861->g_1840.f0, "p_1861->g_1840.f0", print_hash_value);
    transparent_crc(p_1861->g_1854.f0, "p_1861->g_1854.f0", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 56; i++)
            transparent_crc(p_1861->g_special_values[i + 56 * get_linear_group_id()], "p_1861->g_special_values[i + 56 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 56; i++)
            transparent_crc(p_1861->l_special_values[i], "p_1861->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
