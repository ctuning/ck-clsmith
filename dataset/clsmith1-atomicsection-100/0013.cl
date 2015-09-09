// --atomics 96 ---fake_divergence -g 27,16,4 -l 9,1,2
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


// Seed: 13

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int32_t  f0;
   volatile int32_t  f1;
   uint32_t  f2;
};

union U1 {
   int64_t  f0;
   volatile uint64_t  f1;
   uint64_t  f2;
};

struct S2 {
    volatile uint8_t g_2;
    volatile int32_t g_3;
    int32_t g_4;
    int32_t g_9;
    uint64_t g_16[7];
    volatile int8_t g_40;
    volatile uint8_t g_41;
    int64_t g_55;
    uint8_t g_69;
    uint32_t g_74[7][9][4];
    int32_t *g_95;
    int32_t **g_94[8];
    int32_t g_98;
    uint64_t g_183;
    union U0 g_185;
    union U0 *g_184;
    int64_t g_200[4][5];
    int64_t *g_203;
    uint16_t g_205;
    int8_t g_215;
    uint64_t g_219;
    uint16_t g_226;
    int8_t g_228;
    int32_t g_229;
    uint64_t g_230[7][2];
    int16_t g_253[7];
    int8_t g_258;
    int32_t g_259;
    int16_t g_278;
    union U0 g_303[9];
    union U0 **g_326;
    union U0 **g_327;
    int64_t g_353;
    int32_t **g_420;
    uint32_t g_465[3];
    union U0 g_470;
    int32_t g_533;
    volatile int8_t *g_571;
    volatile int8_t **g_570;
    int32_t g_643;
    uint64_t g_661;
    int64_t g_684;
    uint32_t g_708[10][4][6];
    union U0 g_715[6][9][4];
    union U0 g_761;
    int32_t *g_765;
    uint32_t g_773;
    int8_t g_870;
    uint64_t g_871;
    uint32_t *g_914;
    int64_t g_994;
    int32_t * volatile g_1000;
    volatile union U0 g_1053;
    union U1 g_1078[5][1][5];
    union U1 *g_1077;
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
uint32_t  func_1(struct S2 * p_1150);
int32_t * func_25(int16_t  p_26, struct S2 * p_1150);
int64_t  func_47(uint64_t  p_48, int32_t * p_49, uint64_t  p_50, struct S2 * p_1150);
uint16_t  func_81(int32_t  p_82, int32_t ** p_83, int32_t ** p_84, struct S2 * p_1150);
int32_t ** func_85(int32_t ** p_86, int32_t  p_87, int32_t * p_88, uint32_t  p_89, int64_t  p_90, struct S2 * p_1150);
int32_t ** func_91(uint32_t  p_92, int32_t ** p_93, struct S2 * p_1150);
int32_t * func_99(int64_t  p_100, struct S2 * p_1150);
int16_t  func_102(uint32_t  p_103, int32_t * p_104, struct S2 * p_1150);
uint32_t  func_105(uint32_t  p_106, int16_t  p_107, struct S2 * p_1150);
int32_t  func_174(int32_t ** p_175, int64_t * p_176, int32_t * p_177, struct S2 * p_1150);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1150->g_4 p_1150->g_2 p_1150->g_16 p_1150->g_9
 * writes: p_1150->g_2 p_1150->g_4 p_1150->g_16
 */
uint32_t  func_1(struct S2 * p_1150)
{ /* block id: 4 */
    int8_t l_14 = 0x20L;
    int32_t *l_53 = &p_1150->g_9;
    uint8_t l_1032 = 0UL;
    int32_t l_1064 = 0x3D8B12C2L;
    uint16_t l_1075 = 0x5441L;
    p_1150->g_2 = 0x142A1E94L;
    for (p_1150->g_4 = 15; (p_1150->g_4 >= (-24)); p_1150->g_4 = safe_sub_func_uint64_t_u_u(p_1150->g_4, 6))
    { /* block id: 8 */
        int32_t *l_7 = (void*)0;
        int32_t *l_8 = &p_1150->g_9;
        int32_t *l_10 = &p_1150->g_9;
        int32_t *l_11 = &p_1150->g_9;
        int32_t *l_12 = &p_1150->g_9;
        int32_t *l_13 = &p_1150->g_9;
        int32_t *l_15[6][1][2] = {{{&p_1150->g_9,&p_1150->g_9}},{{&p_1150->g_9,&p_1150->g_9}},{{&p_1150->g_9,&p_1150->g_9}},{{&p_1150->g_9,&p_1150->g_9}},{{&p_1150->g_9,&p_1150->g_9}},{{&p_1150->g_9,&p_1150->g_9}}};
        int32_t **l_44 = &l_13;
        int64_t *l_54 = &p_1150->g_55;
        uint16_t l_77[1][1];
        int16_t *l_1059 = &p_1150->g_253[1];
        int32_t l_1063 = 1L;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_77[i][j] = 0x2792L;
        }
        if (p_1150->g_2)
            break;
        --p_1150->g_16[3];
    }
    if ((atomic_inc(&p_1150->l_atomic_input[64]) == 6))
    { /* block id: 644 */
        uint16_t l_1082 = 1UL;
        int8_t l_1083 = 0x7EL;
        uint8_t l_1084 = 0xB5L;
        uint64_t l_1085[1];
        uint16_t l_1086[3][10][8] = {{{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL}},{{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL}},{{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL},{65527UL,1UL,1UL,65531UL,0UL,1UL,0UL,6UL}}};
        int64_t l_1087 = 0x6ACC109E524C528BL;
        uint8_t l_1088[5];
        uint64_t l_1089[3];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1085[i] = 18446744073709551612UL;
        for (i = 0; i < 5; i++)
            l_1088[i] = 0x84L;
        for (i = 0; i < 3; i++)
            l_1089[i] = 18446744073709551615UL;
        l_1085[0] = (l_1084 = (l_1082 , l_1083));
        l_1087 = l_1086[0][3][6];
        l_1089[0] = (l_1088[3] ^= 0x21702962L);
        for (l_1088[3] = 0; (l_1088[3] <= 4); l_1088[3] += 1)
        { /* block id: 652 */
            int32_t l_1090 = 0x1B9740F7L;
            uint8_t l_1147 = 0x93L;
            int32_t l_1148 = 7L;
            int16_t l_1149 = 0x7E70L;
            for (l_1090 = 0; (l_1090 <= 4); l_1090 += 1)
            { /* block id: 655 */
                int32_t l_1091 = 0x6CE45E4AL;
                uint8_t l_1092[6][6][3] = {{{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL}},{{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL}},{{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL}},{{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL}},{{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL}},{{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL},{1UL,0xC3L,251UL}}};
                uint64_t l_1095[2][8] = {{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}};
                int32_t l_1097 = 0x1D6CCC6EL;
                int32_t *l_1096[10][7] = {{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097},{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097},{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097},{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097},{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097},{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097},{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097},{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097},{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097},{&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097,&l_1097}};
                int32_t *l_1098 = (void*)0;
                int i, j, k;
                ++l_1092[0][5][2];
                l_1098 = (l_1095[1][4] , l_1096[3][2]);
            }
            for (l_1090 = 4; (l_1090 >= 0); l_1090 -= 1)
            { /* block id: 661 */
                int32_t l_1099 = 0L;
                uint16_t l_1120 = 65533UL;
                for (l_1099 = 0; (l_1099 <= 4); l_1099 += 1)
                { /* block id: 664 */
                    union U0 l_1101 = {0x3C9CB8B2L};/* VOLATILE GLOBAL l_1101 */
                    union U0 *l_1100 = &l_1101;
                    union U0 *l_1102 = &l_1101;
                    uint64_t l_1106[8][5] = {{18446744073709551613UL,0x1B5A2C2A5681B3ABL,0xBEA556C209C348BBL,0x1B5A2C2A5681B3ABL,18446744073709551613UL},{18446744073709551613UL,0x1B5A2C2A5681B3ABL,0xBEA556C209C348BBL,0x1B5A2C2A5681B3ABL,18446744073709551613UL},{18446744073709551613UL,0x1B5A2C2A5681B3ABL,0xBEA556C209C348BBL,0x1B5A2C2A5681B3ABL,18446744073709551613UL},{18446744073709551613UL,0x1B5A2C2A5681B3ABL,0xBEA556C209C348BBL,0x1B5A2C2A5681B3ABL,18446744073709551613UL},{18446744073709551613UL,0x1B5A2C2A5681B3ABL,0xBEA556C209C348BBL,0x1B5A2C2A5681B3ABL,18446744073709551613UL},{18446744073709551613UL,0x1B5A2C2A5681B3ABL,0xBEA556C209C348BBL,0x1B5A2C2A5681B3ABL,18446744073709551613UL},{18446744073709551613UL,0x1B5A2C2A5681B3ABL,0xBEA556C209C348BBL,0x1B5A2C2A5681B3ABL,18446744073709551613UL},{18446744073709551613UL,0x1B5A2C2A5681B3ABL,0xBEA556C209C348BBL,0x1B5A2C2A5681B3ABL,18446744073709551613UL}};
                    int i, j;
                    l_1102 = ((l_1083 = 0x44L) , l_1100);
                    for (l_1101.f2 = 0; (l_1101.f2 <= 4); l_1101.f2 += 1)
                    { /* block id: 669 */
                        uint32_t l_1103 = 0UL;
                        ++l_1103;
                    }
                    if (l_1106[6][2])
                    { /* block id: 672 */
                        int32_t l_1108 = 0x3672DE64L;
                        int32_t *l_1107 = &l_1108;
                        int32_t *l_1109 = &l_1108;
                        l_1109 = l_1107;
                    }
                    else
                    { /* block id: 674 */
                        int16_t l_1110 = 0x0706L;
                        uint32_t l_1111 = 0x37307060L;
                        int32_t l_1114 = (-1L);
                        int8_t l_1115 = 0x08L;
                        uint64_t l_1116[8] = {18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL};
                        uint8_t l_1119 = 0xE2L;
                        int i;
                        l_1111++;
                        ++l_1116[0];
                        l_1101.f1 = l_1119;
                    }
                }
                l_1120 ^= (-3L);
                for (l_1099 = 0; (l_1099 <= 6); l_1099 += 1)
                { /* block id: 683 */
                    int32_t l_1121 = 0x06E2EF3FL;
                    uint32_t l_1144 = 0x8103D878L;
                    for (l_1121 = 0; (l_1121 <= 3); l_1121 += 1)
                    { /* block id: 686 */
                        int32_t l_1122 = (-1L);
                        uint32_t l_1123 = 0x13E5F57DL;
                        uint32_t l_1126 = 4294967290UL;
                        union U1 l_1127[6][5][7] = {{{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}}},{{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}}},{{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}}},{{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}}},{{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}}},{{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}},{{0x288FC5ED87175563L},{0x7B02EC2C42E2675CL},{4L},{-7L},{0x0E37277ED6C51D2BL},{0x758ECAE5EC885D89L},{0L}}}};
                        uint16_t l_1128 = 0x201AL;
                        int8_t l_1129 = 0L;
                        int16_t l_1130 = 0x3947L;
                        uint32_t l_1131[7] = {0x2DBCA007L,0x87C9D015L,0x2DBCA007L,0x2DBCA007L,0x87C9D015L,0x2DBCA007L,0x2DBCA007L};
                        uint16_t l_1132 = 1UL;
                        uint64_t l_1133 = 0xF21B36FBB96DC80BL;
                        int32_t *l_1134 = (void*)0;
                        int32_t l_1136 = 0x3D23C5CEL;
                        int32_t *l_1135[8] = {&l_1136,&l_1136,&l_1136,&l_1136,&l_1136,&l_1136,&l_1136,&l_1136};
                        int i, j, k;
                        l_1123++;
                        l_1126 |= p_1150->g_16[(l_1121 + 3)];
                        l_1132 |= (l_1131[6] = (l_1130 |= (l_1127[2][1][4] , (l_1129 = l_1128))));
                        l_1135[2] = (l_1133 , l_1134);
                    }
                    for (l_1121 = 3; (l_1121 >= 0); l_1121 -= 1)
                    { /* block id: 697 */
                        uint32_t l_1137 = 0xC723DB0DL;
                        int64_t l_1138[8];
                        int32_t l_1139 = 0x58C3BA5EL;
                        int64_t l_1140[9];
                        uint64_t l_1141 = 18446744073709551612UL;
                        int i;
                        for (i = 0; i < 8; i++)
                            l_1138[i] = (-1L);
                        for (i = 0; i < 9; i++)
                            l_1140[i] = (-3L);
                        l_1138[3] = l_1137;
                        ++l_1141;
                    }
                    --l_1144;
                }
            }
            l_1148 = l_1147;
            l_1090 = l_1149;
        }
        unsigned int result = 0;
        result += l_1082;
        result += l_1083;
        result += l_1084;
        int l_1085_i0;
        for (l_1085_i0 = 0; l_1085_i0 < 1; l_1085_i0++) {
            result += l_1085[l_1085_i0];
        }
        int l_1086_i0, l_1086_i1, l_1086_i2;
        for (l_1086_i0 = 0; l_1086_i0 < 3; l_1086_i0++) {
            for (l_1086_i1 = 0; l_1086_i1 < 10; l_1086_i1++) {
                for (l_1086_i2 = 0; l_1086_i2 < 8; l_1086_i2++) {
                    result += l_1086[l_1086_i0][l_1086_i1][l_1086_i2];
                }
            }
        }
        result += l_1087;
        int l_1088_i0;
        for (l_1088_i0 = 0; l_1088_i0 < 5; l_1088_i0++) {
            result += l_1088[l_1088_i0];
        }
        int l_1089_i0;
        for (l_1089_i0 = 0; l_1089_i0 < 3; l_1089_i0++) {
            result += l_1089[l_1089_i0];
        }
        atomic_add(&p_1150->l_special_values[64], result);
    }
    else
    { /* block id: 707 */
        (1 + 1);
    }
    return (*l_53);
}


/* ------------------------------------------ */
/* 
 * reads : p_1150->g_41
 * writes: p_1150->g_41
 */
int32_t * func_25(int16_t  p_26, struct S2 * p_1150)
{ /* block id: 11 */
    int32_t *l_27 = (void*)0;
    int32_t *l_28 = (void*)0;
    int32_t *l_29 = (void*)0;
    int32_t *l_30 = &p_1150->g_9;
    int32_t *l_31 = &p_1150->g_9;
    int32_t *l_32 = (void*)0;
    int32_t *l_33 = &p_1150->g_9;
    int32_t *l_34 = &p_1150->g_9;
    int32_t *l_35 = &p_1150->g_9;
    int32_t *l_36 = &p_1150->g_9;
    int32_t *l_37 = (void*)0;
    int32_t *l_38 = &p_1150->g_9;
    int32_t *l_39[3][7] = {{&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9},{&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9},{&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9,&p_1150->g_9}};
    int i, j;
    --p_1150->g_41;
    return l_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_1150->g_69 p_1150->g_16 p_1150->g_4
 * writes: p_1150->g_69
 */
int64_t  func_47(uint64_t  p_48, int32_t * p_49, uint64_t  p_50, struct S2 * p_1150)
{ /* block id: 16 */
    for (p_50 = 0; (p_50 <= 4); ++p_50)
    { /* block id: 19 */
        int32_t *l_58 = (void*)0;
        int32_t *l_59 = &p_1150->g_9;
        int32_t *l_60 = (void*)0;
        int32_t *l_61 = &p_1150->g_9;
        int32_t *l_62 = &p_1150->g_9;
        int32_t *l_63 = &p_1150->g_9;
        int32_t l_64 = (-5L);
        int32_t *l_65 = &p_1150->g_9;
        int32_t *l_66 = &l_64;
        int32_t *l_67 = &p_1150->g_9;
        int32_t *l_68[10] = {&l_64,&l_64,&l_64,&l_64,&l_64,&l_64,&l_64,&l_64,&l_64,&l_64};
        int i;
        --p_1150->g_69;
        for (p_1150->g_69 = 0; (p_1150->g_69 <= 16); p_1150->g_69 = safe_add_func_uint64_t_u_u(p_1150->g_69, 2))
        { /* block id: 23 */
            return p_1150->g_16[1];
        }
    }
    return p_1150->g_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1150->g_226 p_1150->g_259 p_1150->g_715 p_1150->g_9 p_1150->g_200 p_1150->g_69 p_1150->g_98 p_1150->g_761.f0 p_1150->g_353 p_1150->g_684 p_1150->g_55 p_1150->g_420 p_1150->g_95 p_1150->g_228 p_1150->g_661 p_1150->g_205 p_1150->g_74 p_1150->g_1000 p_1150->g_40
 * writes: p_1150->g_226 p_1150->g_259 p_1150->g_69 p_1150->g_41 p_1150->g_98 p_1150->g_761.f0 p_1150->g_353 p_1150->g_684 p_1150->g_200 p_1150->g_661 p_1150->g_205 p_1150->g_708 p_1150->g_229
 */
uint16_t  func_81(int32_t  p_82, int32_t ** p_83, int32_t ** p_84, struct S2 * p_1150)
{ /* block id: 436 */
    uint64_t l_716 = 18446744073709551615UL;
    int32_t *l_733 = (void*)0;
    uint8_t l_747 = 0xE9L;
    int16_t l_750 = (-10L);
    int32_t l_776 = 4L;
    int32_t l_783 = 0x1A062BE9L;
    int32_t l_784 = (-2L);
    int32_t l_785 = 0x575469B9L;
    int32_t l_788 = 0x434408CFL;
    int64_t l_789 = 0x38DAA43D093C79A1L;
    int16_t l_790[9][9][2] = {{{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L}},{{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L}},{{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L}},{{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L}},{{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L}},{{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L}},{{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L}},{{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L}},{{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L},{0x747EL,0L}}};
    int32_t l_791 = 0x10DFBF71L;
    int32_t l_792 = 0x0D64F991L;
    int32_t l_793 = (-1L);
    int32_t l_794 = 8L;
    int32_t l_795 = (-5L);
    int32_t l_796[2];
    uint64_t *l_827 = (void*)0;
    uint16_t *l_844[8][1][9] = {{{&p_1150->g_205,&p_1150->g_205,&p_1150->g_205,&p_1150->g_226,(void*)0,&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_205,&p_1150->g_205,&p_1150->g_205,&p_1150->g_226,(void*)0,&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_205,&p_1150->g_205,&p_1150->g_205,&p_1150->g_226,(void*)0,&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_205,&p_1150->g_205,&p_1150->g_205,&p_1150->g_226,(void*)0,&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_205,&p_1150->g_205,&p_1150->g_205,&p_1150->g_226,(void*)0,&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_205,&p_1150->g_205,&p_1150->g_205,&p_1150->g_226,(void*)0,&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_205,&p_1150->g_205,&p_1150->g_205,&p_1150->g_226,(void*)0,&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_205,&p_1150->g_205,&p_1150->g_205,&p_1150->g_226,(void*)0,&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}}};
    uint16_t *l_845[8][6][4] = {{{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}},{{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205},{&p_1150->g_226,&p_1150->g_205,&p_1150->g_205,&p_1150->g_205}}};
    int32_t l_874[2];
    uint32_t l_996 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_796[i] = 0L;
    for (i = 0; i < 2; i++)
        l_874[i] = 9L;
    for (p_1150->g_226 = (-24); (p_1150->g_226 > 55); p_1150->g_226 = safe_add_func_int16_t_s_s(p_1150->g_226, 9))
    { /* block id: 439 */
        uint8_t *l_724 = &p_1150->g_69;
        int32_t l_732 = 1L;
        union U0 *l_740 = (void*)0;
        int32_t *l_746 = &p_1150->g_643;
        uint32_t l_748 = 3UL;
        for (p_82 = 5; (p_82 < (-10)); p_82 = safe_sub_func_uint64_t_u_u(p_82, 7))
        { /* block id: 442 */
            int32_t *l_714 = &p_1150->g_259;
            int32_t l_719 = 0x385DAE5CL;
            uint8_t *l_731 = &p_1150->g_69;
            union U0 *l_749 = &p_1150->g_715[5][0][3];
            int32_t l_753[10];
            uint64_t *l_774 = &p_1150->g_230[5][1];
            int64_t *l_775 = &p_1150->g_200[2][3];
            int8_t *l_777 = &p_1150->g_215;
            int i;
            for (i = 0; i < 10; i++)
                l_753[i] = 0L;
            (*l_714) |= 0x6672FFFBL;
            (*l_714) = (p_1150->g_715[5][0][3] , l_716);
        }
        if ((**p_84))
            continue;
        return p_1150->g_200[1][3];
    }
    for (p_1150->g_69 = 10; (p_1150->g_69 <= 53); p_1150->g_69 = safe_add_func_uint8_t_u_u(p_1150->g_69, 3))
    { /* block id: 479 */
        int8_t l_780 = 7L;
        int16_t l_781 = 0x5E12L;
        int32_t *l_782[7] = {&p_1150->g_98,&p_1150->g_98,&p_1150->g_98,&p_1150->g_98,&p_1150->g_98,&p_1150->g_98,&p_1150->g_98};
        int8_t l_786 = 7L;
        int8_t l_787 = 0x09L;
        uint8_t l_797 = 0xD6L;
        int8_t l_831 = 0L;
        int8_t l_855 = 1L;
        int64_t *l_890 = &p_1150->g_353;
        int i;
        l_781 ^= l_780;
        --l_797;
        for (p_1150->g_41 = 0; p_1150->g_41 < 2; p_1150->g_41 += 1)
        {
            l_796[p_1150->g_41] = 1L;
        }
        for (p_1150->g_98 = (-6); (p_1150->g_98 < (-7)); p_1150->g_98 = safe_sub_func_int32_t_s_s(p_1150->g_98, 9))
        { /* block id: 485 */
            uint16_t *l_843 = &p_1150->g_226;
            int32_t l_858 = 0L;
            int32_t l_881 = (-9L);
            uint32_t *l_913 = &p_1150->g_465[1];
            for (p_1150->g_761.f0 = 0; (p_1150->g_761.f0 < (-26)); --p_1150->g_761.f0)
            { /* block id: 488 */
                uint32_t l_804 = 0x5BB78334L;
                int32_t l_832 = 4L;
                int16_t *l_848 = &l_750;
                uint64_t l_860 = 0xE670E0AD224220FBL;
                int64_t *l_889 = &p_1150->g_353;
                int16_t *l_915 = &l_790[2][6][0];
                (1 + 1);
            }
        }
    }
    for (p_1150->g_353 = (-5); (p_1150->g_353 < 15); p_1150->g_353 = safe_add_func_int8_t_s_s(p_1150->g_353, 2))
    { /* block id: 548 */
        uint32_t l_956 = 0UL;
        uint64_t *l_957 = &p_1150->g_661;
        int32_t l_965 = 0x2E41E91FL;
        int32_t *l_987 = &p_1150->g_98;
        int64_t *l_992 = (void*)0;
        int64_t *l_993[7];
        uint32_t *l_995 = &p_1150->g_708[3][3][0];
        int32_t l_997 = 0L;
        uint64_t l_998 = 9UL;
        int32_t *l_999 = (void*)0;
        int i;
        for (i = 0; i < 7; i++)
            l_993[i] = &p_1150->g_994;
        for (l_792 = 14; (l_792 < (-6)); l_792--)
        { /* block id: 551 */
            int8_t l_964 = 0x46L;
            int32_t *l_966[5][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
            int i, j;
            for (p_1150->g_684 = 0; (p_1150->g_684 <= 3); p_1150->g_684 += 1)
            { /* block id: 554 */
                int i, j;
                if ((atomic_inc(&p_1150->l_atomic_input[1]) == 7))
                { /* block id: 556 */
                    int32_t *l_922 = (void*)0;
                    int32_t l_924[4][3][4] = {{{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}},{{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}},{{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}},{{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}}};
                    int32_t *l_923 = &l_924[0][0][3];
                    uint8_t l_925[7][5][7] = {{{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL}},{{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL}},{{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL}},{{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL}},{{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL}},{{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL}},{{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL},{0UL,3UL,1UL,0x26L,0x77L,0xFFL,0UL}}};
                    int i, j, k;
                    l_923 = l_922;
                    ++l_925[2][3][6];
                    for (l_924[0][0][3] = 3; (l_924[0][0][3] >= 0); l_924[0][0][3] -= 1)
                    { /* block id: 561 */
                        uint16_t l_928 = 0x33B4L;
                        uint64_t l_931[7] = {6UL,6UL,6UL,6UL,6UL,6UL,6UL};
                        uint64_t l_932 = 1UL;
                        int32_t l_933 = 0x474ACD73L;
                        int8_t l_934 = 0x2BL;
                        uint64_t l_935 = 0UL;
                        int i, j;
                        --l_928;
                        l_931[3] |= p_1150->g_200[l_924[0][0][3]][(p_1150->g_684 + 1)];
                        l_933 &= l_932;
                        --l_935;
                    }
                    for (l_924[0][0][3] = 3; (l_924[0][0][3] >= 0); l_924[0][0][3] -= 1)
                    { /* block id: 569 */
                        int64_t l_938 = 0x15642A04EB4D74CDL;
                        int32_t l_939 = (-1L);
                        uint8_t l_940 = 0UL;
                        uint8_t l_943 = 0x2EL;
                        int16_t l_944 = 5L;
                        uint32_t l_945[1][1];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_945[i][j] = 0x664C543BL;
                        }
                        l_940++;
                        l_939 &= l_943;
                        l_945[0][0]--;
                    }
                    unsigned int result = 0;
                    int l_924_i0, l_924_i1, l_924_i2;
                    for (l_924_i0 = 0; l_924_i0 < 4; l_924_i0++) {
                        for (l_924_i1 = 0; l_924_i1 < 3; l_924_i1++) {
                            for (l_924_i2 = 0; l_924_i2 < 4; l_924_i2++) {
                                result += l_924[l_924_i0][l_924_i1][l_924_i2];
                            }
                        }
                    }
                    int l_925_i0, l_925_i1, l_925_i2;
                    for (l_925_i0 = 0; l_925_i0 < 7; l_925_i0++) {
                        for (l_925_i1 = 0; l_925_i1 < 5; l_925_i1++) {
                            for (l_925_i2 = 0; l_925_i2 < 7; l_925_i2++) {
                                result += l_925[l_925_i0][l_925_i1][l_925_i2];
                            }
                        }
                    }
                    atomic_add(&p_1150->l_special_values[1], result);
                }
                else
                { /* block id: 574 */
                    (1 + 1);
                }
                l_796[1] &= (safe_rshift_func_uint8_t_u_u((((((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(l_956, 5)), 0)) <= ((void*)0 != l_957)) == (p_1150->g_200[p_1150->g_684][(p_1150->g_684 + 1)] = (!l_956))) && 0x27027C251699F406L) >= (0x31A16C6DL == (l_965 = (+(safe_sub_func_uint8_t_u_u((p_1150->g_55 < (((-7L) == (((safe_div_func_int16_t_s_s((safe_div_func_uint16_t_u_u((l_964 >= FAKE_DIVERGE(p_1150->global_1_offset, get_global_id(1), 10)), p_1150->g_226)), l_964)) , l_956) > l_956)) ^ FAKE_DIVERGE(p_1150->group_1_offset, get_group_id(1), 10))), 0x7BL)))))), 3));
                (*p_84) = (*p_1150->g_420);
                return p_1150->g_228;
            }
            l_965 = 0x41E80CB0L;
        }
        (*p_1150->g_1000) = ((&l_791 != &l_795) >= (l_785 ^= (((((safe_div_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((safe_add_func_int32_t_s_s(((((p_82 & (((((*l_995) = (p_1150->g_353 | (0x5E213A1EL && (!(0xEC28B0D8B7B4F344L ^ (((safe_rshift_func_uint16_t_u_s(((((((p_1150->g_205 |= (safe_div_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((((l_965 = (((safe_mod_func_int32_t_s_s(((*l_987) |= ((((*l_957)++) , l_733) == &p_1150->g_465[0])), (safe_mod_func_uint32_t_u_u((((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1150->local_1_offset, get_local_id(1), 10), 1L)) != (**p_84)) && 3UL), l_784)))) && 0UL) == p_82)) , p_1150->g_228) >= GROUP_DIVERGE(1, 1)), p_82)), p_82)), p_82)) >= p_82), p_1150->g_9))) != 1UL) == 253UL) , p_82) , p_1150->g_74[5][7][2]) ^ (**p_84)), 11)) , p_1150->g_761.f0) != p_82)))))) , l_996) && FAKE_DIVERGE(p_1150->local_0_offset, get_local_id(0), 10)) >= (-1L))) , 0x5C09395FB7DD0B4FL) | p_1150->g_55) != l_997), FAKE_DIVERGE(p_1150->global_0_offset, get_global_id(0), 10))), 14)), p_1150->g_228)) <= 0x1EADC1D5L) || l_998) , FAKE_DIVERGE(p_1150->group_0_offset, get_group_id(0), 10)) && l_791)));
    }
    return p_1150->g_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_1150->g_55 p_1150->g_420 p_1150->g_95 p_1150->g_9 p_1150->g_98 p_1150->g_228 p_1150->g_230 p_1150->g_465 p_1150->g_229 p_1150->g_69 p_1150->g_203 p_1150->g_200 p_1150->g_278 p_1150->g_253 p_1150->g_205 p_1150->g_74 p_1150->g_215 p_1150->g_185.f2 p_1150->g_570 p_1150->g_259 p_1150->g_303.f0 p_1150->g_353 p_1150->g_185.f0 p_1150->g_4 p_1150->g_226 p_1150->g_643 p_1150->g_533
 * writes: p_1150->g_228 p_1150->g_465 p_1150->g_226 p_1150->g_69 p_1150->g_278 p_1150->g_185.f2 p_1150->g_74 p_1150->g_55 p_1150->g_303.f2 p_1150->g_258 p_1150->g_420 p_1150->g_95 p_1150->g_259 p_1150->g_219 p_1150->g_643 p_1150->g_205 p_1150->g_533 p_1150->g_94
 */
int32_t ** func_85(int32_t ** p_86, int32_t  p_87, int32_t * p_88, uint32_t  p_89, int64_t  p_90, struct S2 * p_1150)
{ /* block id: 265 */
    int32_t **l_455[1][9][2] = {{{&p_1150->g_95,&p_1150->g_95},{&p_1150->g_95,&p_1150->g_95},{&p_1150->g_95,&p_1150->g_95},{&p_1150->g_95,&p_1150->g_95},{&p_1150->g_95,&p_1150->g_95},{&p_1150->g_95,&p_1150->g_95},{&p_1150->g_95,&p_1150->g_95},{&p_1150->g_95,&p_1150->g_95},{&p_1150->g_95,&p_1150->g_95}}};
    int8_t *l_459[8][6][5] = {{{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0}},{{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0}},{{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0}},{{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0}},{{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0}},{{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0}},{{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0}},{{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0},{&p_1150->g_258,(void*)0,&p_1150->g_258,&p_1150->g_258,(void*)0}}};
    int8_t **l_458 = &l_459[7][0][1];
    int8_t *l_460 = &p_1150->g_228;
    uint32_t *l_461 = &p_1150->g_303[8].f2;
    uint32_t *l_462 = (void*)0;
    uint32_t *l_463 = &p_1150->g_303[8].f2;
    uint32_t *l_464[10][9][2] = {{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}},{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}},{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}},{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}},{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}},{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}},{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}},{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}},{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}},{{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]},{&p_1150->g_465[0],&p_1150->g_465[1]}}};
    uint32_t l_466 = 6UL;
    int16_t l_482[6] = {0x7AC2L,0x7AC2L,0x7AC2L,0x7AC2L,0x7AC2L,0x7AC2L};
    int16_t *l_483 = &p_1150->g_253[5];
    int16_t l_491 = 0x6E2CL;
    uint64_t l_658[1][4][9] = {{{0xD6C2DA7C6736B843L,4UL,0x2A61244BAEDCE72FL,4UL,0xD6C2DA7C6736B843L,0xD6C2DA7C6736B843L,4UL,0x2A61244BAEDCE72FL,4UL},{0xD6C2DA7C6736B843L,4UL,0x2A61244BAEDCE72FL,4UL,0xD6C2DA7C6736B843L,0xD6C2DA7C6736B843L,4UL,0x2A61244BAEDCE72FL,4UL},{0xD6C2DA7C6736B843L,4UL,0x2A61244BAEDCE72FL,4UL,0xD6C2DA7C6736B843L,0xD6C2DA7C6736B843L,4UL,0x2A61244BAEDCE72FL,4UL},{0xD6C2DA7C6736B843L,4UL,0x2A61244BAEDCE72FL,4UL,0xD6C2DA7C6736B843L,0xD6C2DA7C6736B843L,4UL,0x2A61244BAEDCE72FL,4UL}}};
    union U0 **l_705[2][9] = {{&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184},{&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184,&p_1150->g_184}};
    int i, j, k;
    if ((safe_mod_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((((safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(((safe_mod_func_uint8_t_u_u((((((safe_rshift_func_uint16_t_u_s(((p_1150->g_465[1] ^= (p_1150->g_55 > ((safe_mod_func_int16_t_s_s((safe_rshift_func_int16_t_s_u((safe_unary_minus_func_uint8_t_u((safe_unary_minus_func_uint64_t_u(((l_455[0][8][1] == l_455[0][3][1]) , (safe_sub_func_int32_t_s_s((-1L), (((*l_460) |= (((**p_1150->g_420) ^ (((*l_458) = &p_1150->g_258) == &p_1150->g_228)) >= (p_1150->g_98 == 1UL))) | p_90)))))))), p_87)), p_90)) , p_1150->g_230[5][1]))) , l_466), p_1150->g_230[5][1])) && 0x3C24L) , p_87) <= (-6L)) >= 0L), p_1150->g_55)) != p_1150->g_229), p_87)) , 0L), p_87)) != p_1150->g_229), p_90)), p_1150->g_69)) == p_89) , (*p_1150->g_203)), 0UL)), p_1150->g_200[1][3])) , p_1150->g_69), 0x25L)))
    { /* block id: 269 */
        union U0 *l_469 = &p_1150->g_470;
        int32_t l_478[7] = {0x36362F67L,1L,0x36362F67L,0x36362F67L,1L,0x36362F67L,0x36362F67L};
        int8_t *l_489[3];
        uint8_t l_534 = 0x34L;
        int64_t **l_554[5];
        int32_t l_580 = 0x2BAB25EDL;
        int i;
        for (i = 0; i < 3; i++)
            l_489[i] = &p_1150->g_228;
        for (i = 0; i < 5; i++)
            l_554[i] = &p_1150->g_203;
        if ((&p_1150->g_219 == &p_1150->g_219))
        { /* block id: 270 */
            uint16_t l_477 = 0UL;
            uint16_t *l_479[9] = {&p_1150->g_226,&p_1150->g_226,&p_1150->g_226,&p_1150->g_226,&p_1150->g_226,&p_1150->g_226,&p_1150->g_226,&p_1150->g_226,&p_1150->g_226};
            int32_t l_484 = 1L;
            int32_t l_485 = (-1L);
            int i;
            l_485 = ((~(l_484 = ((safe_mul_func_int8_t_s_s(((void*)0 == l_469), (safe_add_func_int8_t_s_s((-8L), (safe_mul_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_u((l_477 ^ (p_1150->g_226 = l_478[2])), 7)) == l_477) , (safe_add_func_uint16_t_u_u((p_89 ^ l_482[4]), (&l_482[4] == l_483)))), p_1150->g_230[1][0])))))) , l_478[3]))) >= (-1L));
        }
        else
        { /* block id: 274 */
            uint8_t l_486 = 0xA8L;
            int32_t l_490 = 0L;
            int32_t **l_494 = &p_1150->g_95;
            union U0 *l_495 = (void*)0;
            ++l_486;
            if ((l_490 = (((p_1150->g_229 , l_489[1]) != l_489[1]) , (**p_86))))
            { /* block id: 277 */
                l_478[2] ^= l_491;
            }
            else
            { /* block id: 279 */
                int8_t l_496 = 1L;
                uint16_t l_497[4][3][5] = {{{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L},{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L},{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L}},{{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L},{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L},{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L}},{{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L},{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L},{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L}},{{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L},{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L},{0xD736L,0xD132L,0xA4C4L,0x5E80L,0xA4C4L}}};
                int32_t l_514 = 0x010FE987L;
                int32_t **l_556[5][10][5] = {{{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0}},{{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0}},{{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0}},{{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0}},{{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0},{(void*)0,&p_1150->g_95,&p_1150->g_95,(void*)0,(void*)0}}};
                int i, j, k;
                for (p_1150->g_69 = 10; (p_1150->g_69 >= 50); p_1150->g_69++)
                { /* block id: 282 */
                    return l_494;
                }
                l_496 = (0x7C8806660C0FA19BL != ((void*)0 != l_495));
                ++l_497[0][1][4];
                for (p_1150->g_278 = 0; (p_1150->g_278 <= 1); p_1150->g_278 += 1)
                { /* block id: 289 */
                    int8_t *l_500 = &p_1150->g_228;
                    int32_t l_517[6] = {0L,0L,0L,0L,0L,0L};
                    int32_t l_535[3][10][3] = {{{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL}},{{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL}},{{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL},{0x64D2A393L,0x41767305L,0x7776368CL}}};
                    int i, j, k;
                    for (p_1150->g_185.f2 = 0; (p_1150->g_185.f2 <= 4); p_1150->g_185.f2 += 1)
                    { /* block id: 292 */
                        uint32_t *l_503 = &p_1150->g_74[5][7][2];
                        int i, j;
                        l_478[0] = ((p_1150->g_230[(p_1150->g_278 + 4)][p_1150->g_278] >= ((((l_500 == &p_1150->g_215) & (((*l_503) = (p_1150->g_253[p_1150->g_278] , (++p_89))) >= ((safe_lshift_func_int8_t_s_u((safe_rshift_func_int8_t_s_u((&p_1150->g_215 != &p_1150->g_215), p_1150->g_230[5][1])), FAKE_DIVERGE(p_1150->global_1_offset, get_global_id(1), 10))) >= (((safe_lshift_func_uint8_t_u_u(p_1150->g_205, 2)) < (0x5A100ECBL & 4294967288UL)) != 0xCE5A530EC9842BE1L)))) && 0x6A12L) != p_1150->g_230[5][1])) , (*p_88));
                    }
                    for (p_1150->g_55 = 4; (p_1150->g_55 >= 0); p_1150->g_55 -= 1)
                    { /* block id: 299 */
                        int32_t *l_532[6][9][4] = {{{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533}},{{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533}},{{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533}},{{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533}},{{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533}},{{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533},{&p_1150->g_533,&p_1150->g_533,(void*)0,&p_1150->g_533}}};
                        int32_t l_546 = 1L;
                        uint32_t *l_547 = &p_1150->g_74[5][7][2];
                        uint16_t *l_555 = &l_497[3][0][1];
                        int i, j, k;
                        l_535[1][0][2] = (safe_sub_func_int32_t_s_s(((l_534 |= ((safe_add_func_uint32_t_u_u((((*l_461) = ((--p_1150->g_465[1]) , (l_517[3] |= p_1150->g_230[(p_1150->g_278 + 5)][p_1150->g_278]))) , (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_s((safe_add_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u(((&l_460 != (void*)0) > p_90), GROUP_DIVERGE(1, 1))) & (&p_1150->g_74[5][3][0] == ((**l_494) , &p_89))), ((p_90 || ((safe_mul_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((safe_sub_func_int32_t_s_s((l_514 = (**l_494)), FAKE_DIVERGE(p_1150->local_1_offset, get_local_id(1), 10))) >= 0x63D0FC5B45B3B842L), 1UL)), p_90)) >= (**p_86))) >= 0x7EL))), l_497[0][1][4])), l_496))), (**l_494))) , p_1150->g_74[5][7][2])) , (**l_494)), p_1150->g_230[(p_1150->g_278 + 5)][p_1150->g_278]));
                        l_490 ^= (safe_div_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1150->local_0_offset, get_local_id(0), 10), ((*l_555) = ((safe_rshift_func_uint8_t_u_s((l_478[2] < (l_514 = p_1150->g_215)), p_1150->g_185.f2)) && ((safe_add_func_uint32_t_u_u((+(safe_mod_func_uint32_t_u_u(((*l_547) = (l_546 = (p_1150->g_215 | 0x1F93L))), (((((*l_460) = p_90) & (safe_mul_func_int16_t_s_s((safe_div_func_int8_t_s_s((p_1150->g_258 = (6UL < (p_89 > ((void*)0 != l_554[2])))), l_496)), p_90))) > l_478[1]) , (*p_88))))), (**l_494))) >= FAKE_DIVERGE(p_1150->group_1_offset, get_group_id(1), 10)))))), (*p_1150->g_203)));
                        l_556[1][0][1] = (void*)0;
                    }
                }
            }
        }
        l_580 &= (safe_add_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_u((safe_unary_minus_func_int64_t_s((*p_1150->g_203))), 8)) || (safe_add_func_int16_t_s_s(((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((safe_sub_func_int16_t_s_s(p_1150->g_55, ((((FAKE_DIVERGE(p_1150->group_0_offset, get_group_id(0), 10) , p_1150->g_570) == &l_459[7][0][1]) >= l_478[2]) && (safe_lshift_func_int8_t_s_u((((safe_mod_func_int16_t_s_s(((safe_div_func_uint32_t_u_u((l_478[2] = p_1150->g_278), (((void*)0 == &p_89) & (safe_mod_func_int16_t_s_s((((0L != p_87) ^ 0x11L) , p_1150->g_228), p_89))))) , 4L), 1UL)) | l_534) || p_87), p_89))))), 7)), p_87)) && (**p_1150->g_420)), 0UL))), p_87));
    }
    else
    { /* block id: 320 */
        uint8_t l_592[4] = {1UL,1UL,1UL,1UL};
        int32_t *l_618 = (void*)0;
        int32_t l_648 = (-3L);
        uint32_t l_649 = 5UL;
        uint64_t *l_679 = &p_1150->g_183;
        uint32_t l_706 = 1UL;
        int i;
        for (l_466 = 0; (l_466 <= 7); l_466 += 1)
        { /* block id: 323 */
            uint32_t l_581 = 4294967295UL;
            int32_t *l_619[1];
            uint32_t *l_623 = (void*)0;
            int32_t *l_647[9] = {&p_1150->g_229,&p_1150->g_229,&p_1150->g_229,&p_1150->g_229,&p_1150->g_229,&p_1150->g_229,&p_1150->g_229,&p_1150->g_229,&p_1150->g_229};
            int i;
            for (i = 0; i < 1; i++)
                l_619[i] = &p_1150->g_259;
            ++l_581;
            (*p_86) = func_99((*p_1150->g_203), p_1150);
            for (p_1150->g_259 = 2; (p_1150->g_259 >= 0); p_1150->g_259 -= 1)
            { /* block id: 328 */
                int32_t l_584 = 0x1E76DC58L;
                int32_t l_617 = (-1L);
                int32_t **l_646 = &l_618;
                int i;
                for (p_1150->g_226 = 0; (p_1150->g_226 <= 2); p_1150->g_226 += 1)
                { /* block id: 331 */
                    int i;
                    (*p_86) = (*p_86);
                }
                l_584 = p_1150->g_253[(p_1150->g_259 + 4)];
                if ((safe_lshift_func_uint8_t_u_u((((p_89 != (0xAAL != p_1150->g_303[8].f0)) || ((safe_unary_minus_func_uint8_t_u(((+0xD59BL) < (safe_sub_func_int16_t_s_s(0x676EL, (safe_mul_func_int16_t_s_s(((((p_89 && 0x7D7AL) <= (((p_1150->g_215 || p_1150->g_465[0]) > GROUP_DIVERGE(2, 1)) >= 18446744073709551615UL)) , 0xEFF69A7AL) , p_1150->g_200[1][3]), p_1150->g_353))))))) , l_592[0])) < p_1150->g_253[(p_1150->g_259 + 4)]), 3)))
                { /* block id: 335 */
                    uint64_t *l_597[3];
                    int8_t *l_614 = &p_1150->g_215;
                    int32_t l_644 = 5L;
                    int32_t l_645 = 0x54F1593CL;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_597[i] = (void*)0;
                    if (((((safe_mod_func_uint16_t_u_u((((safe_mod_func_int64_t_s_s((l_581 ^ ((((p_1150->g_219 = p_1150->g_253[6]) , (l_592[0] && ((p_1150->g_278 || 0x7F788755L) <= ((-8L) | (safe_add_func_int32_t_s_s(((((safe_div_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u((safe_sub_func_int8_t_s_s((+(p_89 >= p_1150->g_465[2])), (safe_add_func_uint8_t_u_u((p_90 & 0x32A7F12F0929CF4DL), (-1L))))), p_1150->g_259)) | (*p_88)), (-1L))) ^ p_1150->g_185.f0) <= 0x60ECL) , (*p_1150->g_95)), p_90)))))) , 7UL) < (**p_1150->g_420))), (*p_1150->g_203))) & l_584) > p_1150->g_253[4]), 7UL)) , p_1150->g_253[(p_1150->g_259 + 4)]) , l_592[0]) == (**p_1150->g_420)))
                    { /* block id: 337 */
                        l_617 ^= (((((safe_mod_func_int32_t_s_s((**p_86), (((safe_lshift_func_int16_t_s_u((safe_div_func_uint8_t_u_u((((*l_458) = &p_1150->g_215) != (l_584 , l_614)), 247UL)), ((safe_sub_func_uint32_t_u_u(p_1150->g_4, p_1150->g_253[(p_1150->g_259 + 4)])) && ((void*)0 != &p_1150->g_230[5][1])))) && 6UL) || p_89))) & l_592[0]) != 4294967295UL) || (*p_1150->g_95)) && (*p_1150->g_203));
                    }
                    else
                    { /* block id: 340 */
                        if ((**p_1150->g_420))
                            break;
                        (*p_1150->g_420) = l_618;
                        (*p_86) = l_619[0];
                    }
                    for (p_1150->g_228 = 0; (p_1150->g_228 <= 2); p_1150->g_228 += 1)
                    { /* block id: 347 */
                        uint32_t *l_634 = &p_1150->g_74[5][0][3];
                        int32_t l_637 = 0x6A3A3E78L;
                        int32_t l_642 = 0x76C0BA6CL;
                        l_617 = (safe_unary_minus_func_int8_t_s((((safe_mod_func_uint16_t_u_u((((l_623 == p_88) ^ (safe_sub_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((-4L), (safe_div_func_uint16_t_u_u((((l_645 = (safe_div_func_int8_t_s_s((p_89 || ((safe_mod_func_uint32_t_u_u((--(*l_634)), (*p_88))) || (l_644 &= (0L | (((l_637 | ((safe_div_func_int8_t_s_s(((p_1150->g_643 |= ((safe_mod_func_int32_t_s_s(0x37C9CAB4L, (l_642 & p_1150->g_226))) ^ p_1150->g_465[2])) && 0x68F094A0L), p_89)) || p_89)) , 6UL) > 0x236650BFL))))), p_89))) <= (*p_88)) && p_1150->g_228), p_87)))), 0x6A31C2294AE1FE19L))) , 0xBAD9L), p_1150->g_4)) , p_1150->g_230[5][1]) , p_90)));
                    }
                    for (p_1150->g_205 = 0; (p_1150->g_205 <= 6); p_1150->g_205 += 1)
                    { /* block id: 356 */
                        (*p_86) = (*p_86);
                    }
                    l_645 = (*p_1150->g_95);
                }
                else
                { /* block id: 360 */
                    return &p_1150->g_95;
                }
                l_647[6] = (void*)0;
            }
        }
        --l_649;
        for (p_1150->g_533 = 3; (p_1150->g_533 >= 0); p_1150->g_533 -= 1)
        { /* block id: 369 */
            int32_t **l_652 = &p_1150->g_95;
            p_1150->g_94[5] = l_652;
            for (p_1150->g_205 = 0; (p_1150->g_205 <= 4); p_1150->g_205 += 1)
            { /* block id: 373 */
                return l_455[0][8][1];
            }
        }
        for (p_87 = 18; (p_87 > 11); p_87 = safe_sub_func_uint16_t_u_u(p_87, 7))
        { /* block id: 379 */
            int8_t l_662 = 1L;
            int32_t *l_687 = (void*)0;
            int16_t *l_698 = &p_1150->g_253[5];
            uint16_t l_707 = 65534UL;
            (*p_86) = (void*)0;
            for (p_1150->g_185.f2 = 0; (p_1150->g_185.f2 <= 3); p_1150->g_185.f2 += 1)
            { /* block id: 383 */
                int32_t l_655 = 0x59DE3B46L;
                int32_t l_709 = 0x599383DAL;
                (1 + 1);
            }
        }
    }
    return &p_1150->g_95;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1150->g_98
 */
int32_t ** func_91(uint32_t  p_92, int32_t ** p_93, struct S2 * p_1150)
{ /* block id: 30 */
    int8_t l_96 = 0x1AL;
    int32_t *l_97 = &p_1150->g_98;
    (*l_97) = l_96;
    return &p_1150->g_95;
}


/* ------------------------------------------ */
/* 
 * reads : p_1150->g_95 p_1150->g_9 p_1150->g_74 p_1150->g_69 p_1150->g_259
 * writes: p_1150->g_420 p_1150->g_258
 */
int32_t * func_99(int64_t  p_100, struct S2 * p_1150)
{ /* block id: 258 */
    int32_t **l_419 = &p_1150->g_95;
    int32_t ***l_418[9][3][1] = {{{&p_1150->g_94[2]},{&p_1150->g_94[2]},{&p_1150->g_94[2]}},{{&p_1150->g_94[2]},{&p_1150->g_94[2]},{&p_1150->g_94[2]}},{{&p_1150->g_94[2]},{&p_1150->g_94[2]},{&p_1150->g_94[2]}},{{&p_1150->g_94[2]},{&p_1150->g_94[2]},{&p_1150->g_94[2]}},{{&p_1150->g_94[2]},{&p_1150->g_94[2]},{&p_1150->g_94[2]}},{{&p_1150->g_94[2]},{&p_1150->g_94[2]},{&p_1150->g_94[2]}},{{&p_1150->g_94[2]},{&p_1150->g_94[2]},{&p_1150->g_94[2]}},{{&p_1150->g_94[2]},{&p_1150->g_94[2]},{&p_1150->g_94[2]}},{{&p_1150->g_94[2]},{&p_1150->g_94[2]},{&p_1150->g_94[2]}}};
    int32_t **l_421[1][1];
    int64_t l_426 = 0L;
    int8_t *l_427 = &p_1150->g_258;
    uint32_t l_428 = 0x9D558FB9L;
    uint32_t l_429 = 0x20B3168FL;
    uint64_t l_430 = 0x5A4C0ACDB966C624L;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_421[i][j] = &p_1150->g_95;
    }
    l_430 = ((safe_lshift_func_uint8_t_u_u(((((safe_lshift_func_uint16_t_u_s((((p_100 != ((p_1150->g_420 = &p_1150->g_95) != (l_421[0][0] = &p_1150->g_95))) > 0xAAL) , (((FAKE_DIVERGE(p_1150->local_0_offset, get_local_id(0), 10) > (((p_100 > (((safe_add_func_uint32_t_u_u(((-1L) >= ((l_428 &= ((safe_lshift_func_int8_t_s_u(((*l_427) = ((0x145EC1ACL >= ((((l_426 == (*p_1150->g_95)) && p_100) & 1L) <= 8L)) <= p_1150->g_74[2][8][1])), 2)) , p_100)) || l_429)), 4294967286UL)) ^ (-7L)) > p_100)) || 0x3DC50E2713057B1DL) < p_1150->g_69)) < 0x2DL) >= 0xAC5EE7571C81D83FL)), p_100)) , p_100) >= p_100) == FAKE_DIVERGE(p_1150->group_2_offset, get_group_id(2), 10)), p_100)) , 0x60F6D924L);
    return (*l_419);
}


/* ------------------------------------------ */
/* 
 * reads : p_1150->g_229 p_1150->g_4
 * writes: p_1150->g_229
 */
int16_t  func_102(uint32_t  p_103, int32_t * p_104, struct S2 * p_1150)
{ /* block id: 175 */
    int8_t l_319 = 0x3DL;
    union U0 **l_324 = &p_1150->g_184;
    int32_t l_332 = 1L;
    int32_t l_338 = 7L;
    int32_t **l_349 = &p_1150->g_95;
    int32_t l_389 = 0x237127C9L;
    int32_t l_390 = 0x4530274EL;
    int32_t l_391 = 0x08155D4BL;
    int32_t l_392[7][1] = {{0x21E2A7ABL},{0x21E2A7ABL},{0x21E2A7ABL},{0x21E2A7ABL},{0x21E2A7ABL},{0x21E2A7ABL},{0x21E2A7ABL}};
    uint32_t l_393 = 0xAC8CD26BL;
    int i, j;
    for (p_1150->g_229 = 3; (p_1150->g_229 >= 0); p_1150->g_229 -= 1)
    { /* block id: 178 */
        int32_t l_290[5][8] = {{1L,0x70963314L,1L,1L,0x70963314L,1L,1L,0x70963314L},{1L,0x70963314L,1L,1L,0x70963314L,1L,1L,0x70963314L},{1L,0x70963314L,1L,1L,0x70963314L,1L,1L,0x70963314L},{1L,0x70963314L,1L,1L,0x70963314L,1L,1L,0x70963314L},{1L,0x70963314L,1L,1L,0x70963314L,1L,1L,0x70963314L}};
        int16_t *l_318[1][2];
        int16_t l_336 = 0x137AL;
        int32_t l_350 = 0x105AB772L;
        int8_t *l_370 = &l_319;
        int8_t *l_371 = &p_1150->g_258;
        int32_t *l_372 = &p_1150->g_185.f0;
        int32_t l_384 = 0x60B815D6L;
        int32_t l_387 = 1L;
        int32_t l_388[7] = {0x5110BC2DL,0x5F753EB7L,0x5110BC2DL,0x5110BC2DL,0x5F753EB7L,0x5110BC2DL,0x5110BC2DL};
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
                l_318[i][j] = (void*)0;
        }
        (1 + 1);
    }
    return p_1150->g_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1150->g_74 p_1150->g_55 p_1150->g_95 p_1150->g_9 p_1150->g_4 p_1150->g_184 p_1150->g_185.f0 p_1150->g_205 p_1150->g_183 p_1150->g_226 p_1150->g_228 p_1150->g_219 p_1150->g_259 p_1150->g_203 p_1150->g_200 p_1150->g_258
 * writes: p_1150->g_74 p_1150->g_55 p_1150->g_183 p_1150->g_184 p_1150->g_185.f0 p_1150->g_203 p_1150->g_205 p_1150->g_215 p_1150->g_219 p_1150->g_226 p_1150->g_228 p_1150->g_229 p_1150->g_230 p_1150->g_258 p_1150->g_253 p_1150->g_278
 */
uint32_t  func_105(uint32_t  p_106, int16_t  p_107, struct S2 * p_1150)
{ /* block id: 33 */
    int32_t **l_178[8][1];
    int64_t *l_179[2][6][1] = {{{&p_1150->g_55},{&p_1150->g_55},{&p_1150->g_55},{&p_1150->g_55},{&p_1150->g_55},{&p_1150->g_55}},{{&p_1150->g_55},{&p_1150->g_55},{&p_1150->g_55},{&p_1150->g_55},{&p_1150->g_55},{&p_1150->g_55}}};
    int32_t *l_180 = &p_1150->g_4;
    uint8_t l_260 = 0xB4L;
    int i, j, k;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
            l_178[i][j] = &p_1150->g_95;
    }
    if ((atomic_inc(&p_1150->g_atomic_input[96 * get_linear_group_id() + 71]) == 8))
    { /* block id: 35 */
        uint32_t l_109[6][5][8] = {{{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL}},{{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL}},{{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL}},{{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL}},{{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL}},{{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL},{1UL,3UL,0xA538DB7DL,3UL,1UL,1UL,3UL,0xA538DB7DL}}};
        int16_t l_110 = 7L;
        int16_t l_171[9] = {8L,8L,8L,8L,8L,8L,8L,8L,8L};
        int16_t l_172 = 1L;
        int16_t l_173 = 0x12DFL;
        int i, j, k;
        l_110 |= l_109[2][3][0];
        for (l_110 = 0; (l_110 != 7); l_110 = safe_add_func_int16_t_s_s(l_110, 7))
        { /* block id: 39 */
            int32_t l_113 = 0x277B6811L;
            for (l_113 = (-14); (l_113 == 18); l_113++)
            { /* block id: 42 */
                int32_t l_116 = 0x6654CDFFL;
                for (l_116 = 0; (l_116 == (-2)); --l_116)
                { /* block id: 45 */
                    int32_t l_119 = 0x1E25F8A0L;
                    int32_t l_120 = 0x0B3473E5L;
                    int32_t l_121 = (-5L);
                    int32_t *l_127 = &l_119;
                    int32_t *l_128 = &l_121;
                    for (l_119 = 0; l_119 < 7; l_119 += 1)
                    {
                        for (l_120 = 0; l_120 < 9; l_120 += 1)
                        {
                            for (l_121 = 0; l_121 < 4; l_121 += 1)
                            {
                                p_1150->g_74[l_119][l_120][l_121] = 0UL;
                            }
                        }
                    }
                    for (l_120 = 1; (l_120 <= 4); l_120 += 1)
                    { /* block id: 49 */
                        int32_t l_123 = 0x2720855CL;
                        int32_t *l_122[10] = {&l_123,&l_123,&l_123,&l_123,&l_123,&l_123,&l_123,&l_123,&l_123,&l_123};
                        int32_t *l_124[3];
                        int32_t *l_125 = (void*)0;
                        int32_t *l_126 = &l_123;
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_124[i] = &l_123;
                        l_124[0] = l_122[7];
                        l_126 = (l_109[l_120][l_120][l_120] , l_125);
                    }
                    l_128 = l_127;
                }
            }
            for (l_113 = 2; (l_113 == (-19)); l_113 = safe_sub_func_int16_t_s_s(l_113, 4))
            { /* block id: 58 */
                int32_t l_131 = 0x72286FB9L;
                uint16_t l_147[8][1] = {{0xBCCDL},{0xBCCDL},{0xBCCDL},{0xBCCDL},{0xBCCDL},{0xBCCDL},{0xBCCDL},{0xBCCDL}};
                int i, j;
                for (l_131 = 0; (l_131 >= (-27)); l_131 = safe_sub_func_int16_t_s_s(l_131, 6))
                { /* block id: 61 */
                    int32_t l_134 = (-1L);
                    uint32_t l_135[5];
                    int16_t l_145 = 0L;
                    int16_t l_146 = 0x68C7L;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_135[i] = 0UL;
                    l_135[3] |= l_134;
                    for (l_135[3] = 0; (l_135[3] <= 3); l_135[3] += 1)
                    { /* block id: 65 */
                        uint32_t l_136 = 4294967288UL;
                        uint32_t l_139 = 0x0E0CC22EL;
                        int32_t l_141[4];
                        int32_t *l_140 = &l_141[0];
                        int32_t *l_142 = (void*)0;
                        int32_t *l_143[9][6][4] = {{{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]}},{{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]}},{{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]}},{{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]}},{{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]}},{{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]}},{{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]}},{{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]}},{{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]},{&l_141[0],&l_141[0],&l_141[3],&l_141[3]}}};
                        int16_t l_144[7];
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_141[i] = 0x0F001985L;
                        for (i = 0; i < 7; i++)
                            l_144[i] = (-8L);
                        l_136--;
                        l_139 ^= ((p_1150->g_74[l_135[3]][(l_135[3] + 4)][l_135[3]] , l_109[l_135[3]][(l_135[3] + 1)][l_135[3]]) , (l_109[l_135[3]][l_135[3]][(l_135[3] + 3)] , 1L));
                        l_143[6][2][0] = (l_142 = l_140);
                        l_144[3] |= 0x67933A92L;
                    }
                    l_146 = l_145;
                }
                l_131 = l_147[7][0];
                for (l_147[2][0] = 0; (l_147[2][0] <= 3); l_147[2][0] += 1)
                { /* block id: 77 */
                    int16_t l_148 = 0x6AD6L;
                    int32_t l_149 = (-8L);
                    int32_t l_150 = 0x5B8F82D9L;
                    uint32_t l_151 = 0UL;
                    int32_t l_154 = 0x424FD1E6L;
                    uint64_t l_155[2][5] = {{0xA6180E031660C04CL,0x9F8BFC011B9A2A75L,0xA6180E031660C04CL,0xA6180E031660C04CL,0x9F8BFC011B9A2A75L},{0xA6180E031660C04CL,0x9F8BFC011B9A2A75L,0xA6180E031660C04CL,0xA6180E031660C04CL,0x9F8BFC011B9A2A75L}};
                    int16_t l_156 = 0x3080L;
                    int i, j;
                    l_151--;
                    l_155[1][1] = l_154;
                    l_131 ^= l_156;
                    for (l_148 = 0; (l_148 <= 3); l_148 += 1)
                    { /* block id: 83 */
                        uint32_t l_157 = 4294967293UL;
                        int8_t l_158 = 5L;
                        int64_t l_159 = 0x6AAC493E54A6601AL;
                        int32_t l_160[3][4] = {{0L,1L,(-1L),1L},{0L,1L,(-1L),1L},{0L,1L,(-1L),1L}};
                        uint16_t l_161 = 0x2051L;
                        uint32_t l_164 = 4294967293UL;
                        uint32_t l_165 = 0UL;
                        int i, j;
                        l_150 = (l_158 = l_157);
                        l_161++;
                        l_150 &= (l_165 = l_164);
                    }
                }
            }
            for (l_113 = 24; (l_113 > 3); --l_113)
            { /* block id: 94 */
                uint8_t l_168[4] = {255UL,255UL,255UL,255UL};
                int8_t l_169[8][6] = {{5L,0x02L,(-1L),5L,0x02L,5L},{5L,0x02L,(-1L),5L,0x02L,5L},{5L,0x02L,(-1L),5L,0x02L,5L},{5L,0x02L,(-1L),5L,0x02L,5L},{5L,0x02L,(-1L),5L,0x02L,5L},{5L,0x02L,(-1L),5L,0x02L,5L},{5L,0x02L,(-1L),5L,0x02L,5L},{5L,0x02L,(-1L),5L,0x02L,5L}};
                int64_t l_170 = 1L;
                int i, j;
                l_170 = (l_169[2][1] = l_168[2]);
            }
        }
        l_173 ^= (l_171[0] , l_172);
        unsigned int result = 0;
        int l_109_i0, l_109_i1, l_109_i2;
        for (l_109_i0 = 0; l_109_i0 < 6; l_109_i0++) {
            for (l_109_i1 = 0; l_109_i1 < 5; l_109_i1++) {
                for (l_109_i2 = 0; l_109_i2 < 8; l_109_i2++) {
                    result += l_109[l_109_i0][l_109_i1][l_109_i2];
                }
            }
        }
        result += l_110;
        int l_171_i0;
        for (l_171_i0 = 0; l_171_i0 < 9; l_171_i0++) {
            result += l_171[l_171_i0];
        }
        result += l_172;
        result += l_173;
        atomic_add(&p_1150->g_special_values[96 * get_linear_group_id() + 71], result);
    }
    else
    { /* block id: 100 */
        (1 + 1);
    }
    p_1150->g_183 = func_174(l_178[0][0], l_179[0][5][0], l_180, p_1150);
    p_1150->g_184 = p_1150->g_184;
    for (p_107 = (-3); (p_107 == 15); p_107 = safe_add_func_int16_t_s_s(p_107, 1))
    { /* block id: 115 */
        int32_t *l_188 = (void*)0;
        int64_t *l_201 = &p_1150->g_200[1][3];
        int32_t l_239[10] = {0x418909AFL,0x418909AFL,0x418909AFL,0x418909AFL,0x418909AFL,0x418909AFL,0x418909AFL,0x418909AFL,0x418909AFL,0x418909AFL};
        int16_t l_251 = 0x3C26L;
        int32_t l_256[3];
        int i;
        for (i = 0; i < 3; i++)
            l_256[i] = 1L;
        l_188 = l_188;
        for (p_1150->g_55 = 8; (p_1150->g_55 != (-23)); p_1150->g_55 = safe_sub_func_uint8_t_u_u(p_1150->g_55, 5))
        { /* block id: 119 */
            uint8_t l_231 = 0x70L;
            int32_t *l_233 = (void*)0;
            int32_t l_244 = 0x5C038C3FL;
            int32_t l_245 = 0L;
            int32_t l_246 = 0x54926839L;
            int32_t l_252 = 0x6D6BEC31L;
            int32_t l_255[3][6] = {{(-5L),6L,(-5L),(-5L),6L,(-5L)},{(-5L),6L,(-5L),(-5L),6L,(-5L)},{(-5L),6L,(-5L),(-5L),6L,(-5L)}};
            int32_t l_279 = (-3L);
            int i, j;
            for (p_1150->g_185.f0 = 24; (p_1150->g_185.f0 <= (-12)); p_1150->g_185.f0 = safe_sub_func_uint16_t_u_u(p_1150->g_185.f0, 7))
            { /* block id: 122 */
                int32_t *l_224 = &p_1150->g_4;
                int32_t l_232 = 0x6E4CFC64L;
                int32_t l_237 = (-6L);
                int32_t l_241 = (-1L);
                int32_t l_242 = 0x333C25ECL;
                int32_t l_243[5];
                uint32_t l_280[9] = {4294967295UL,0x971EB0DDL,4294967295UL,4294967295UL,0x971EB0DDL,4294967295UL,4294967295UL,0x971EB0DDL,4294967295UL};
                int i;
                for (i = 0; i < 5; i++)
                    l_243[i] = (-9L);
                for (p_106 = (-6); (p_106 != 44); p_106 = safe_add_func_uint32_t_u_u(p_106, 3))
                { /* block id: 125 */
                    int32_t *l_225 = &p_1150->g_9;
                    int32_t l_236[10][2] = {{0x299ECA85L,4L},{0x299ECA85L,4L},{0x299ECA85L,4L},{0x299ECA85L,4L},{0x299ECA85L,4L},{0x299ECA85L,4L},{0x299ECA85L,4L},{0x299ECA85L,4L},{0x299ECA85L,4L},{0x299ECA85L,4L}};
                    int8_t l_257 = (-1L);
                    int i, j;
                    if ((&p_1150->g_95 != &l_180))
                    { /* block id: 126 */
                        if (p_107)
                            break;
                    }
                    else
                    { /* block id: 128 */
                        int64_t *l_199 = &p_1150->g_200[1][3];
                        int64_t **l_202[4][5][9] = {{{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]}},{{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]}},{{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]}},{{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]},{&l_201,&l_179[0][5][0],&l_201,&l_179[0][5][0],&l_179[1][4][0],(void*)0,&l_179[1][3][0],(void*)0,&l_179[0][5][0]}}};
                        uint16_t *l_204 = &p_1150->g_205;
                        int8_t *l_214 = &p_1150->g_215;
                        uint64_t *l_218 = &p_1150->g_219;
                        int8_t *l_227[2];
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_227[i] = &p_1150->g_228;
                        l_231 &= (((((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(((l_199 = (void*)0) != (p_1150->g_203 = l_201)), ((*l_204)--))), 3)) <= p_1150->g_74[5][0][2]) , 0x6CL) > (p_1150->g_230[5][1] = (safe_rshift_func_int8_t_s_s((p_1150->g_229 = ((safe_mul_func_uint8_t_u_u(p_107, (safe_rshift_func_int8_t_s_u(((*l_214) = (-7L)), 1)))) < (safe_lshift_func_uint16_t_u_u((p_1150->g_9 && (((*l_218) = p_1150->g_183) , (safe_rshift_func_int8_t_s_u((p_1150->g_228 &= (safe_sub_func_uint16_t_u_u((p_1150->g_226 ^= (l_224 == l_225)), p_1150->g_185.f0))), 6)))), FAKE_DIVERGE(p_1150->group_0_offset, get_group_id(0), 10))))), p_107)))) , p_106);
                        l_232 &= (-1L);
                        l_188 = (void*)0;
                    }
                    l_233 = l_225;
                    for (p_1150->g_219 = 1; (p_1150->g_219 > 51); p_1150->g_219++)
                    { /* block id: 145 */
                        int8_t l_238 = 2L;
                        int32_t l_240 = 0x4F922F53L;
                        int32_t l_247[2][1];
                        uint8_t l_248 = 0x1AL;
                        int16_t l_254[5];
                        uint16_t *l_269 = &p_1150->g_205;
                        int8_t *l_272 = (void*)0;
                        int8_t *l_273 = &p_1150->g_258;
                        int16_t *l_274 = &l_254[1];
                        int16_t *l_275 = (void*)0;
                        int16_t *l_276 = &l_251;
                        int16_t *l_277 = &p_1150->g_278;
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_247[i][j] = 1L;
                        }
                        for (i = 0; i < 5; i++)
                            l_254[i] = 0x0F0BL;
                        l_248--;
                        --l_260;
                        if ((*l_233))
                            break;
                        l_236[4][1] = (&l_247[1][0] != ((safe_div_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((((*l_277) = (((safe_add_func_uint16_t_u_u(((0x06CBL >= ((*l_269) = p_1150->g_259)) <= ((p_106 < FAKE_DIVERGE(p_1150->global_2_offset, get_global_id(2), 10)) > ((((((*l_276) = (p_1150->g_253[5] = ((*l_274) = ((safe_lshift_func_int8_t_s_u((*l_233), (((~(*l_224)) != (0xAAL != FAKE_DIVERGE(p_1150->local_2_offset, get_local_id(2), 10))) == (0x2B7EL || (((*l_273) |= (p_106 || (*p_1150->g_203))) ^ (*l_224)))))) > GROUP_DIVERGE(2, 1))))) | 0x2F2FL) , p_1150->g_200[1][3]) , p_106) != 255UL))), 0x362BL)) < (-1L)) || 0x1EC7C2ADL)) ^ 1L) <= 0UL), p_107)), (*l_225))) , &l_239[3]));
                    }
                }
                l_244 &= p_107;
                l_280[2]++;
            }
        }
        if ((atomic_inc(&p_1150->g_atomic_input[96 * get_linear_group_id() + 69]) == 5))
        { /* block id: 163 */
            int32_t l_283 = 0x40653759L;
            uint32_t l_284 = 1UL;
            uint64_t l_285 = 0xB824F0A6F1ECEA66L;
            int64_t l_286 = 0x146A8EDB6B819464L;
            uint16_t l_287 = 65528UL;
            uint8_t l_288 = 5UL;
            int64_t l_289 = 0x7DA681A5B53C98BDL;
            l_289 &= (l_288 = (l_287 = ((l_286 = ((l_284 = l_283) , l_285)) , 0x2F9BEAD8L)));
            unsigned int result = 0;
            result += l_283;
            result += l_284;
            result += l_285;
            result += l_286;
            result += l_287;
            result += l_288;
            result += l_289;
            atomic_add(&p_1150->g_special_values[96 * get_linear_group_id() + 69], result);
        }
        else
        { /* block id: 169 */
            (1 + 1);
        }
        if ((*p_1150->g_95))
            break;
    }
    return p_1150->g_200[1][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1150->g_55 p_1150->g_95 p_1150->g_9 p_1150->g_4
 * writes: p_1150->g_55
 */
int32_t  func_174(int32_t ** p_175, int64_t * p_176, int32_t * p_177, struct S2 * p_1150)
{ /* block id: 103 */
    for (p_1150->g_55 = 0; (p_1150->g_55 >= (-1)); p_1150->g_55--)
    { /* block id: 106 */
        if ((**p_175))
            break;
        if ((*p_177))
            continue;
    }
    return (*p_1150->g_95);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[96];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 96; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[96];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 96; i++)
            l_special_values[i] = 0;
    struct S2 c_1151;
    struct S2* p_1150 = &c_1151;
    struct S2 c_1152 = {
        5UL, // p_1150->g_2
        0x10E164CAL, // p_1150->g_3
        (-1L), // p_1150->g_4
        (-1L), // p_1150->g_9
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1150->g_16
        2L, // p_1150->g_40
        6UL, // p_1150->g_41
        0x279C83BDEEF3AA79L, // p_1150->g_55
        0UL, // p_1150->g_69
        {{{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L}},{{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L}},{{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L}},{{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L}},{{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L}},{{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L}},{{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L},{0x556AD515L,4294967295UL,0x4FD8ED9CL,0xFAF4B059L}}}, // p_1150->g_74
        &p_1150->g_9, // p_1150->g_95
        {&p_1150->g_95,&p_1150->g_95,&p_1150->g_95,&p_1150->g_95,&p_1150->g_95,&p_1150->g_95,&p_1150->g_95,&p_1150->g_95}, // p_1150->g_94
        0x5F50B00AL, // p_1150->g_98
        18446744073709551610UL, // p_1150->g_183
        {0x437587FDL}, // p_1150->g_185
        &p_1150->g_185, // p_1150->g_184
        {{0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L},{0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L},{0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L},{0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L,0x1E14A8CDCF8F5F89L}}, // p_1150->g_200
        &p_1150->g_200[1][3], // p_1150->g_203
        7UL, // p_1150->g_205
        0x70L, // p_1150->g_215
        0x2A1A335962A1803DL, // p_1150->g_219
        65526UL, // p_1150->g_226
        (-1L), // p_1150->g_228
        0x78E5C4BBL, // p_1150->g_229
        {{0xE79F7EB3699347C1L,0xE79F7EB3699347C1L},{0xE79F7EB3699347C1L,0xE79F7EB3699347C1L},{0xE79F7EB3699347C1L,0xE79F7EB3699347C1L},{0xE79F7EB3699347C1L,0xE79F7EB3699347C1L},{0xE79F7EB3699347C1L,0xE79F7EB3699347C1L},{0xE79F7EB3699347C1L,0xE79F7EB3699347C1L},{0xE79F7EB3699347C1L,0xE79F7EB3699347C1L}}, // p_1150->g_230
        {(-3L),(-2L),(-3L),(-3L),(-2L),(-3L),(-3L)}, // p_1150->g_253
        0x30L, // p_1150->g_258
        0x1646E88CL, // p_1150->g_259
        0L, // p_1150->g_278
        {{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L}}, // p_1150->g_303
        &p_1150->g_184, // p_1150->g_326
        (void*)0, // p_1150->g_327
        0L, // p_1150->g_353
        (void*)0, // p_1150->g_420
        {4294967295UL,4294967295UL,4294967295UL}, // p_1150->g_465
        {0x682F50FBL}, // p_1150->g_470
        (-8L), // p_1150->g_533
        (void*)0, // p_1150->g_571
        &p_1150->g_571, // p_1150->g_570
        0L, // p_1150->g_643
        1UL, // p_1150->g_661
        1L, // p_1150->g_684
        {{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}},{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}},{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}},{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}},{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}},{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}},{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}},{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}},{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}},{{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L},{0UL,0x3B0DC92AL,0xE3B025E4L,0xBF45C3AAL,0UL,0x29E570C7L}}}, // p_1150->g_708
        {{{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}}},{{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}}},{{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}}},{{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}}},{{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}}},{{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}},{{0x6B25B68FL},{-1L},{0x5BA74554L},{-6L}}}}, // p_1150->g_715
        {0L}, // p_1150->g_761
        &p_1150->g_533, // p_1150->g_765
        4294967295UL, // p_1150->g_773
        0L, // p_1150->g_870
        6UL, // p_1150->g_871
        &p_1150->g_773, // p_1150->g_914
        (-1L), // p_1150->g_994
        &p_1150->g_229, // p_1150->g_1000
        {7L}, // p_1150->g_1053
        {{{{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L}}},{{{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L}}},{{{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L}}},{{{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L}}},{{{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L},{0x1487D66E45A89541L}}}}, // p_1150->g_1078
        &p_1150->g_1078[4][0][4], // p_1150->g_1077
        sequence_input[get_global_id(0)], // p_1150->global_0_offset
        sequence_input[get_global_id(1)], // p_1150->global_1_offset
        sequence_input[get_global_id(2)], // p_1150->global_2_offset
        sequence_input[get_local_id(0)], // p_1150->local_0_offset
        sequence_input[get_local_id(1)], // p_1150->local_1_offset
        sequence_input[get_local_id(2)], // p_1150->local_2_offset
        sequence_input[get_group_id(0)], // p_1150->group_0_offset
        sequence_input[get_group_id(1)], // p_1150->group_1_offset
        sequence_input[get_group_id(2)], // p_1150->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1151 = c_1152;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1150);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1150->g_2, "p_1150->g_2", print_hash_value);
    transparent_crc(p_1150->g_3, "p_1150->g_3", print_hash_value);
    transparent_crc(p_1150->g_4, "p_1150->g_4", print_hash_value);
    transparent_crc(p_1150->g_9, "p_1150->g_9", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1150->g_16[i], "p_1150->g_16[i]", print_hash_value);

    }
    transparent_crc(p_1150->g_40, "p_1150->g_40", print_hash_value);
    transparent_crc(p_1150->g_41, "p_1150->g_41", print_hash_value);
    transparent_crc(p_1150->g_55, "p_1150->g_55", print_hash_value);
    transparent_crc(p_1150->g_69, "p_1150->g_69", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1150->g_74[i][j][k], "p_1150->g_74[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1150->g_98, "p_1150->g_98", print_hash_value);
    transparent_crc(p_1150->g_183, "p_1150->g_183", print_hash_value);
    transparent_crc(p_1150->g_185.f0, "p_1150->g_185.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1150->g_200[i][j], "p_1150->g_200[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1150->g_205, "p_1150->g_205", print_hash_value);
    transparent_crc(p_1150->g_215, "p_1150->g_215", print_hash_value);
    transparent_crc(p_1150->g_219, "p_1150->g_219", print_hash_value);
    transparent_crc(p_1150->g_226, "p_1150->g_226", print_hash_value);
    transparent_crc(p_1150->g_228, "p_1150->g_228", print_hash_value);
    transparent_crc(p_1150->g_229, "p_1150->g_229", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1150->g_230[i][j], "p_1150->g_230[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1150->g_253[i], "p_1150->g_253[i]", print_hash_value);

    }
    transparent_crc(p_1150->g_258, "p_1150->g_258", print_hash_value);
    transparent_crc(p_1150->g_259, "p_1150->g_259", print_hash_value);
    transparent_crc(p_1150->g_278, "p_1150->g_278", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1150->g_303[i].f0, "p_1150->g_303[i].f0", print_hash_value);

    }
    transparent_crc(p_1150->g_353, "p_1150->g_353", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1150->g_465[i], "p_1150->g_465[i]", print_hash_value);

    }
    transparent_crc(p_1150->g_470.f0, "p_1150->g_470.f0", print_hash_value);
    transparent_crc(p_1150->g_533, "p_1150->g_533", print_hash_value);
    transparent_crc(p_1150->g_643, "p_1150->g_643", print_hash_value);
    transparent_crc(p_1150->g_661, "p_1150->g_661", print_hash_value);
    transparent_crc(p_1150->g_684, "p_1150->g_684", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1150->g_708[i][j][k], "p_1150->g_708[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1150->g_715[i][j][k].f0, "p_1150->g_715[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1150->g_761.f0, "p_1150->g_761.f0", print_hash_value);
    transparent_crc(p_1150->g_773, "p_1150->g_773", print_hash_value);
    transparent_crc(p_1150->g_870, "p_1150->g_870", print_hash_value);
    transparent_crc(p_1150->g_871, "p_1150->g_871", print_hash_value);
    transparent_crc(p_1150->g_994, "p_1150->g_994", print_hash_value);
    transparent_crc(p_1150->g_1053.f0, "p_1150->g_1053.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1150->g_1078[i][j][k].f0, "p_1150->g_1078[i][j][k].f0", print_hash_value);

            }
        }
    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 96; i++)
            transparent_crc(p_1150->g_special_values[i + 96 * get_linear_group_id()], "p_1150->g_special_values[i + 96 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 96; i++)
            transparent_crc(p_1150->l_special_values[i], "p_1150->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
