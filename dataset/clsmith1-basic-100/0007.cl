// ---fake_divergence -g 56,5,9 -l 4,1,9
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


// Seed: 7

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
   int8_t  f1;
   volatile int8_t * f2;
   int8_t * f3;
   volatile int32_t  f4;
};

union U1 {
   uint16_t  f0;
   uint8_t  f1;
   uint32_t  f2;
   int32_t  f3;
};

union U2 {
   int16_t  f0;
   uint8_t  f1;
};

struct S3 {
    int64_t g_2[4];
    int32_t g_3[1];
    int32_t g_4[10][6][2];
    volatile int32_t g_5;
    int32_t g_6;
    int8_t g_8;
    int32_t g_11;
    int32_t g_17;
    int16_t g_18;
    volatile int16_t g_20[10][3];
    int16_t g_21;
    volatile uint64_t g_22[1][5][5];
    int64_t g_37[4];
    uint64_t g_44;
    uint8_t g_57;
    int64_t g_86;
    int64_t g_105;
    int64_t *g_104;
    int64_t *g_106[10][7][3];
    int32_t ** volatile g_107;
    uint64_t g_118;
    int32_t *g_153;
    int32_t ** volatile g_152[2];
    int32_t ** volatile g_154;
    uint16_t g_165;
    volatile union U0 g_212[8];
    volatile uint64_t g_221;
    union U1 g_230;
    union U0 g_290;
    union U2 g_309;
    union U2 *g_311;
    union U2 ** volatile g_310[3][10][5];
    int32_t *g_331[1][1];
    int32_t ** volatile g_330[9][7];
    int64_t g_339;
    uint8_t g_377[6];
    int16_t g_379;
    int32_t g_381;
    volatile uint32_t g_398;
    union U0 g_458;
    union U1 *g_469[10][1];
    uint64_t *g_488;
    uint64_t * volatile * volatile g_487;
    union U0 g_492;
    int32_t ** volatile g_524;
    uint32_t g_526;
    union U0 g_558;
    int32_t ** volatile g_629;
    int32_t ** volatile g_630;
    int32_t ** volatile g_632;
    int32_t * volatile g_645;
    int64_t g_663;
    uint32_t g_674;
    volatile union U0 g_718;
    union U0 g_739;
    union U0 g_740;
    union U0 g_741[7];
    union U0 *g_738[1][8];
    union U0 **g_737;
    union U0 g_754[9][3][8];
    int32_t *g_781;
    uint8_t *g_847;
    uint8_t * volatile *g_846;
    volatile int16_t g_857;
    uint16_t *g_877;
    uint16_t **g_876;
    union U0 g_883;
    int64_t * volatile *g_909[7];
    int64_t * volatile **g_908;
    volatile union U2 g_942[2][10][1];
    volatile union U2 * volatile g_941;
    volatile union U2 * volatile *g_940;
    volatile union U2 * volatile **g_939;
    uint32_t g_943;
    uint32_t g_974[6];
    int64_t g_1006;
    int32_t ** volatile g_1061;
    int32_t ** volatile g_1062;
    int32_t ** volatile g_1063;
    union U1 *g_1081;
    union U1 ** volatile g_1080;
    uint32_t *g_1083;
    uint32_t * volatile *g_1082;
    uint16_t ***g_1121[8][6];
    volatile uint64_t * volatile g_1148;
    volatile uint64_t * volatile *g_1147;
    volatile uint64_t * volatile **g_1146[2];
    int8_t *g_1165;
    union U1 ** volatile g_1190;
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
int16_t  func_1(struct S3 * p_1214);
int32_t  func_25(int8_t * p_26, int32_t  p_27, struct S3 * p_1214);
int8_t * func_28(uint32_t  p_29, struct S3 * p_1214);
uint32_t  func_30(int32_t  p_31, uint64_t  p_32, struct S3 * p_1214);
int64_t  func_38(uint32_t  p_39, int32_t * p_40, int32_t  p_41, union U2  p_42, struct S3 * p_1214);
int32_t * func_47(int8_t * p_48, int64_t  p_49, uint8_t  p_50, int32_t  p_51, struct S3 * p_1214);
uint64_t  func_62(uint8_t * p_63, int8_t  p_64, struct S3 * p_1214);
uint8_t * func_65(int8_t * p_66, union U1  p_67, struct S3 * p_1214);
union U0  func_68(int32_t  p_69, int32_t * p_70, uint32_t  p_71, int32_t  p_72, uint16_t  p_73, struct S3 * p_1214);
uint32_t  func_78(int32_t * p_79, int8_t  p_80, int64_t * p_81, uint64_t  p_82, int32_t  p_83, struct S3 * p_1214);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1214->g_3 p_1214->g_2 p_1214->g_22 p_1214->g_6 p_1214->g_488 p_1214->g_44 p_1214->g_57 p_1214->g_4 p_1214->g_377 p_1214->g_104 p_1214->g_153 p_1214->g_632 p_1214->g_846 p_1214->g_847 p_1214->g_741.f0 p_1214->g_1080 p_1214->g_1082 p_1214->g_674 p_1214->g_17 p_1214->g_876 p_1214->g_877 p_1214->g_165 p_1214->g_943 p_1214->g_105 p_1214->g_487 p_1214->g_21 p_1214->g_781 p_1214->g_630 p_1214->g_331 p_1214->g_20 p_1214->g_1146 p_1214->g_11 p_1214->g_754 p_1214->g_526 p_1214->g_663 p_1214->g_974 p_1214->g_1190 p_1214->g_740.f0
 * writes: p_1214->g_3 p_1214->g_4 p_1214->g_6 p_1214->g_5 p_1214->g_8 p_1214->g_22 p_1214->g_17 p_1214->g_18 p_1214->g_44 p_1214->g_57 p_1214->g_105 p_1214->g_21 p_1214->g_86 p_1214->g_469 p_1214->g_1081 p_1214->g_1082 p_1214->g_165 p_1214->g_377 p_1214->g_1121 p_1214->g_781 p_1214->g_11 p_1214->g_663 p_1214->g_526 p_1214->g_1165 p_1214->g_674
 */
int16_t  func_1(struct S3 * p_1214)
{ /* block id: 4 */
    uint32_t l_1007[1][7] = {{0x08EC562DL,0x08EC562DL,0x08EC562DL,0x08EC562DL,0x08EC562DL,0x08EC562DL,0x08EC562DL}};
    int32_t l_1065 = 0x2610DD36L;
    int32_t l_1067 = (-1L);
    uint8_t l_1068 = 0xE2L;
    union U1 l_1094 = {7UL};
    int i, j;
    for (p_1214->g_3[0] = 3; (p_1214->g_3[0] >= 0); p_1214->g_3[0] -= 1)
    { /* block id: 7 */
        int8_t *l_7[5][2][3] = {{{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8},{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8}},{{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8},{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8}},{{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8},{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8}},{{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8},{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8}},{{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8},{&p_1214->g_8,&p_1214->g_8,&p_1214->g_8}}};
        int32_t l_54 = 1L;
        int32_t l_1066[8][7] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
        int64_t l_1169 = 0L;
        int i, j, k;
        for (p_1214->g_4[1][4][0] = 3; (p_1214->g_4[1][4][0] >= 0); p_1214->g_4[1][4][0] -= 1)
        { /* block id: 10 */
            int16_t l_12 = 0L;
            int32_t l_16 = 0x5070FEEAL;
            int32_t l_19[6] = {0L,0x1915E308L,0L,0L,0x1915E308L,0L};
            union U2 l_1087[8][4][7] = {{{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}}},{{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}}},{{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}}},{{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}}},{{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}}},{{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}}},{{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}}},{{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}},{{-1L},{2L},{0x4A7DL},{-10L},{-7L},{0x4697L},{6L}}}};
            uint32_t l_1150[5][7] = {{1UL,0xC9C07FD3L,0UL,0xC9C07FD3L,1UL,1UL,0xC9C07FD3L},{1UL,0xC9C07FD3L,0UL,0xC9C07FD3L,1UL,1UL,0xC9C07FD3L},{1UL,0xC9C07FD3L,0UL,0xC9C07FD3L,1UL,1UL,0xC9C07FD3L},{1UL,0xC9C07FD3L,0UL,0xC9C07FD3L,1UL,1UL,0xC9C07FD3L},{1UL,0xC9C07FD3L,0UL,0xC9C07FD3L,1UL,1UL,0xC9C07FD3L}};
            int8_t l_1152 = 0x32L;
            int32_t *l_1163 = &p_1214->g_3[0];
            int i, j, k;
            for (p_1214->g_6 = 0; (p_1214->g_6 <= 3); p_1214->g_6 += 1)
            { /* block id: 13 */
                int8_t *l_9[2];
                int32_t l_33 = 0x0EEBEB99L;
                int32_t *l_1064[10] = {&l_33,&l_33,&l_33,&l_33,&l_33,&l_33,&l_33,&l_33,&l_33,&l_33};
                int i;
                for (i = 0; i < 2; i++)
                    l_9[i] = &p_1214->g_8;
                p_1214->g_5 = (l_7[0][1][0] == l_9[0]);
                for (p_1214->g_8 = 0; (p_1214->g_8 <= 1); p_1214->g_8 += 1)
                { /* block id: 17 */
                    int32_t *l_10 = &p_1214->g_11;
                    int32_t *l_13 = &p_1214->g_11;
                    int32_t *l_14 = &p_1214->g_11;
                    int32_t *l_15[2][2];
                    int64_t *l_36 = &p_1214->g_37[1];
                    uint64_t *l_43 = &p_1214->g_44;
                    uint8_t *l_55 = (void*)0;
                    uint8_t *l_56 = &p_1214->g_57;
                    union U1 l_627[4][1] = {{{65535UL}},{{65535UL}},{{65535UL}},{{65535UL}}};
                    int64_t *l_1005 = &p_1214->g_1006;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_15[i][j] = &p_1214->g_11;
                    }
                    if (p_1214->g_2[p_1214->g_3[0]])
                        break;
                    --p_1214->g_22[0][0][3];
                }
                for (p_1214->g_17 = 3; (p_1214->g_17 >= 0); p_1214->g_17 -= 1)
                { /* block id: 564 */
                    int i;
                    return p_1214->g_2[p_1214->g_6];
                }
                l_1068++;
            }
            for (p_1214->g_18 = 0; (p_1214->g_18 >= 0); p_1214->g_18 -= 1)
            { /* block id: 571 */
                uint8_t *l_1075 = &p_1214->g_57;
                int i;
                (*p_1214->g_153) = ((--(*p_1214->g_488)) != (+((*p_1214->g_104) = ((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1214->global_0_offset, get_global_id(0), 10), ((*l_1075)++))) && p_1214->g_377[p_1214->g_4[1][4][0]]))));
            }
            (**p_1214->g_632) = 0x011D233EL;
            for (p_1214->g_17 = 3; (p_1214->g_17 >= 0); p_1214->g_17 -= 1)
            { /* block id: 580 */
                uint16_t l_1105[7];
                int32_t l_1109[1];
                int32_t l_1113 = 0x6E1CEAEFL;
                union U0 **l_1145 = &p_1214->g_738[0][1];
                int i;
                for (i = 0; i < 7; i++)
                    l_1105[i] = 0x39A5L;
                for (i = 0; i < 1; i++)
                    l_1109[i] = 0L;
                for (p_1214->g_21 = 6; (p_1214->g_21 >= 0); p_1214->g_21 -= 1)
                { /* block id: 583 */
                    uint8_t l_1078 = 1UL;
                    uint8_t *l_1108 = &l_1087[7][2][1].f1;
                    uint8_t *l_1110[6] = {&l_1087[7][2][1].f1,&l_1087[7][2][1].f1,&l_1087[7][2][1].f1,&l_1087[7][2][1].f1,&l_1087[7][2][1].f1,&l_1087[7][2][1].f1};
                    int32_t **l_1126 = &p_1214->g_781;
                    uint64_t ***l_1149 = (void*)0;
                    union U2 *l_1168 = &p_1214->g_309;
                    uint32_t *l_1176 = (void*)0;
                    int i;
                    for (p_1214->g_86 = 0; (p_1214->g_86 <= 3); p_1214->g_86 += 1)
                    { /* block id: 586 */
                        union U1 **l_1079 = &p_1214->g_469[0][0];
                        uint32_t * volatile **l_1084 = &p_1214->g_1082;
                        (*p_1214->g_1080) = ((*l_1079) = (((0xCAL || (((void*)0 != (*p_1214->g_846)) ^ 0x4ADC86D2L)) , (l_1078 && p_1214->g_741[4].f0)) , (void*)0));
                        (*l_1084) = p_1214->g_1082;
                    }
                    if (((!p_1214->g_674) , ((safe_sub_func_uint8_t_u_u((l_1087[7][2][1] , (safe_div_func_int16_t_s_s((safe_div_func_uint32_t_u_u((safe_mod_func_int16_t_s_s(l_54, (-9L))), (l_1094 , p_1214->g_17))), ((safe_add_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((--(**p_1214->g_876)), 5)), ((safe_rshift_func_uint8_t_u_u((p_1214->g_377[1] |= (l_1109[0] ^= (safe_lshift_func_uint16_t_u_u((l_1065 = (++l_1105[3])), l_1078)))), (safe_div_func_uint8_t_u_u(l_1113, p_1214->g_22[0][2][0])))) > 2UL))) , 2L)))), 1UL)) & p_1214->g_2[0])))
                    { /* block id: 596 */
                        uint32_t l_1118 = 7UL;
                        int16_t *l_1119 = &l_1087[7][2][1].f0;
                        uint16_t ***l_1120[1];
                        int8_t l_1151 = 0x3FL;
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_1120[i] = &p_1214->g_876;
                        l_1066[(p_1214->g_21 + 1)][p_1214->g_21] ^= (((safe_add_func_int32_t_s_s(((void*)0 != &p_1214->g_153), ((((safe_rshift_func_int16_t_s_s((((((FAKE_DIVERGE(p_1214->global_2_offset, get_global_id(2), 10) < l_1078) ^ ((((*l_1119) &= (l_1118 | l_54)) > ((l_1120[0] == (p_1214->g_1121[6][4] = &p_1214->g_876)) ^ (safe_lshift_func_int8_t_s_u((l_1068 | ((safe_div_func_int16_t_s_s(p_1214->g_943, p_1214->g_2[2])) != 0x17CE4E6B158F9C0FL)), 6)))) != 5L)) > 0x17L) , l_1126) != &p_1214->g_781), 1)) >= p_1214->g_44) , (*p_1214->g_104)) || (**p_1214->g_487)))) != l_54) > 0x82L);
                        (*l_1126) = (*l_1126);
                        if ((**p_1214->g_630))
                            continue;
                        (*l_1126) = func_47(&p_1214->g_8, l_1066[3][3], (safe_add_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s(p_1214->g_20[6][1], (l_19[1] = ((safe_div_func_int32_t_s_s(((safe_mod_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_div_func_uint8_t_u_u(l_19[1], (safe_add_func_int32_t_s_s((safe_div_func_int8_t_s_s(((l_1065 , (&p_1214->g_738[0][2] != l_1145)) , ((0x79B4L == ((((*p_1214->g_488) < 0x61E4B9BF50AD7678L) , p_1214->g_1146[0]) == l_1149)) || l_1150[0][6])), l_1151)), GROUP_DIVERGE(0, 1))))), 0)), 4UL)) & l_1113), p_1214->g_377[1])) || l_1109[0])))) < l_16), p_1214->g_377[4])), l_1152)), (*p_1214->g_781), p_1214);
                    }
                    else
                    { /* block id: 604 */
                        int8_t **l_1164[5];
                        uint32_t *l_1171 = &p_1214->g_674;
                        uint32_t **l_1170 = &l_1171;
                        uint32_t **l_1172 = (void*)0;
                        uint32_t **l_1173 = (void*)0;
                        uint32_t *l_1175 = (void*)0;
                        uint32_t **l_1174[1];
                        int i, j;
                        for (i = 0; i < 5; i++)
                            l_1164[i] = (void*)0;
                        for (i = 0; i < 1; i++)
                            l_1174[i] = &l_1175;
                        (*p_1214->g_153) |= (safe_mod_func_uint16_t_u_u(0xC9DCL, (safe_sub_func_int32_t_s_s(((safe_div_func_int32_t_s_s(3L, (safe_lshift_func_uint8_t_u_s((((safe_rshift_func_int8_t_s_u((l_1163 == ((*l_1126) = func_47((l_7[0][1][0] = (p_1214->g_1165 = &p_1214->g_8)), (((safe_add_func_int16_t_s_s((((l_1176 = ((*l_1170) = func_47(&p_1214->g_8, (*p_1214->g_104), (+((&p_1214->g_381 == &p_1214->g_381) || (l_1168 == &l_1087[7][2][1]))), l_1169, p_1214))) != (void*)0) > l_1113), l_1066[3][6])) | l_1078) == l_1105[5]), l_1109[0], (*l_1163), p_1214))), 3)) , (void*)0) != &p_1214->g_847), 0)))) > l_1109[0]), p_1214->g_974[2]))));
                        if (l_1066[p_1214->g_21][(p_1214->g_17 + 2)])
                            continue;
                        if ((**p_1214->g_632))
                            continue;
                    }
                }
            }
        }
        for (p_1214->g_57 = 0; (p_1214->g_57 <= 3); p_1214->g_57 += 1)
        { /* block id: 619 */
            int8_t **l_1202 = &l_7[0][1][0];
            int32_t l_1212 = 1L;
            int32_t l_1213[10][10] = {{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL},{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL},{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL},{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL},{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL},{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL},{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL},{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL},{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL},{0x25AF5D6BL,5L,0x19679275L,0x409522D9L,2L,0x25AF5D6BL,0x409522D9L,0x640AD725L,0x409522D9L,0x25AF5D6BL}};
            int i, j;
            if (p_1214->g_2[p_1214->g_57])
            { /* block id: 620 */
                int32_t l_1184[10] = {6L,0x7E25B4B4L,6L,6L,0x7E25B4B4L,6L,6L,0x7E25B4B4L,6L,6L};
                int32_t l_1185 = 0x36348540L;
                union U2 l_1195 = {-1L};
                int i;
                for (p_1214->g_105 = 0; (p_1214->g_105 <= 0); p_1214->g_105 += 1)
                { /* block id: 623 */
                    uint32_t l_1186 = 4294967292UL;
                    int32_t **l_1197 = &p_1214->g_153;
                    int32_t ***l_1196 = &l_1197;
                    int i;
                    if (p_1214->g_2[p_1214->g_3[0]])
                        break;
                    for (l_1067 = 0; (l_1067 <= 3); l_1067 += 1)
                    { /* block id: 627 */
                        int32_t *l_1177 = &p_1214->g_4[2][1][1];
                        int32_t *l_1178 = &p_1214->g_6;
                        int32_t *l_1179 = &p_1214->g_11;
                        int32_t *l_1180 = &l_1066[3][3];
                        int32_t *l_1181 = (void*)0;
                        int32_t *l_1182 = &l_1066[3][3];
                        int32_t *l_1183[2][1][5];
                        union U1 **l_1189 = (void*)0;
                        int32_t ****l_1198 = &l_1196;
                        uint32_t *l_1199 = (void*)0;
                        uint32_t *l_1200 = (void*)0;
                        uint32_t *l_1201 = &l_1186;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 5; k++)
                                    l_1183[i][j][k] = &p_1214->g_6;
                            }
                        }
                        --l_1186;
                        (*p_1214->g_1190) = &l_1094;
                        (*l_1178) = (l_1185 = (safe_mul_func_uint32_t_u_u((*l_1178), (((safe_sub_func_uint32_t_u_u(((*l_1201) &= ((l_1195 , (void*)0) != ((*l_1198) = ((!p_1214->g_2[p_1214->g_3[0]]) , l_1196)))), ((l_1066[3][3] < ((void*)0 == l_1202)) & l_1068))) || (*p_1214->g_877)) < p_1214->g_20[0][1]))));
                        if ((**p_1214->g_632))
                            break;
                    }
                }
            }
            else
            { /* block id: 637 */
                uint32_t *l_1205 = &p_1214->g_674;
                int i;
                (*p_1214->g_781) ^= ((safe_sub_func_uint32_t_u_u((p_1214->g_2[p_1214->g_57] && p_1214->g_2[p_1214->g_3[0]]), ((((*l_1205) |= p_1214->g_740.f0) > (safe_rshift_func_uint8_t_u_u(9UL, 7))) >= (l_1213[6][2] ^= ((p_1214->g_2[p_1214->g_57] & (safe_lshift_func_int8_t_s_u((l_1212 = (safe_div_func_uint64_t_u_u(p_1214->g_2[p_1214->g_3[0]], ((l_1066[1][2] == p_1214->g_526) & p_1214->g_2[p_1214->g_3[0]])))), 1))) , 0UL))))) <= 0L);
                return p_1214->g_2[p_1214->g_57];
            }
            for (l_1094.f1 = 0; (l_1094.f1 <= 3); l_1094.f1 += 1)
            { /* block id: 646 */
                return l_1066[2][2];
            }
            return p_1214->g_2[p_1214->g_57];
        }
    }
    return l_1065;
}


/* ------------------------------------------ */
/* 
 * reads : p_1214->g_5 p_1214->g_781 p_1214->g_165 p_1214->g_11 p_1214->g_737 p_1214->g_1063
 * writes: p_1214->g_11 p_1214->g_165 p_1214->g_674 p_1214->g_86 p_1214->g_738 p_1214->g_487 p_1214->g_331
 */
int32_t  func_25(int8_t * p_26, int32_t  p_27, struct S3 * p_1214)
{ /* block id: 541 */
    int32_t l_1048 = 0x37C0316FL;
    (*p_1214->g_781) = (l_1048 | (safe_unary_minus_func_uint16_t_u(((4UL == 0UL) & (safe_mod_func_int8_t_s_s(p_1214->g_5, (+(-1L))))))));
    for (p_1214->g_165 = 0; (p_1214->g_165 != 50); ++p_1214->g_165)
    { /* block id: 545 */
        for (p_1214->g_674 = 0; (p_1214->g_674 <= 48); p_1214->g_674 = safe_add_func_int16_t_s_s(p_1214->g_674, 1))
        { /* block id: 548 */
            union U0 *l_1058 = &p_1214->g_754[2][1][6];
            uint64_t **l_1060 = &p_1214->g_488;
            uint64_t ***l_1059[10] = {&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060,&l_1060};
            int i;
            for (p_1214->g_86 = 0; (p_1214->g_86 >= 26); ++p_1214->g_86)
            { /* block id: 551 */
                (*p_1214->g_781) |= (p_27 & p_27);
            }
            (*p_1214->g_737) = l_1058;
            p_1214->g_487 = &p_1214->g_488;
            (*p_1214->g_1063) = &p_27;
        }
    }
    return l_1048;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1214->g_212
 */
int8_t * func_28(uint32_t  p_29, struct S3 * p_1214)
{ /* block id: 538 */
    for (p_29 = 0; p_29 < 8; p_29 += 1)
    {
        union U0 tmp = {{-2L}};
        p_1214->g_212[p_29] = tmp;
    }
    return &p_1214->g_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1214->g_57 p_1214->g_526 p_1214->g_377 p_1214->g_37 p_1214->g_877 p_1214->g_165 p_1214->g_487 p_1214->g_488 p_1214->g_44 p_1214->g_846 p_1214->g_847 p_1214->g_974 p_1214->g_105 p_1214->g_781 p_1214->g_939 p_1214->g_940 p_1214->g_941 p_1214->g_942 p_1214->g_11 p_1214->g_2
 * writes: p_1214->g_876 p_1214->g_57 p_1214->g_526 p_1214->g_377 p_1214->g_165 p_1214->g_105 p_1214->g_17 p_1214->g_11
 */
uint32_t  func_30(int32_t  p_31, uint64_t  p_32, struct S3 * p_1214)
{ /* block id: 512 */
    uint16_t **l_1012[3];
    uint16_t ***l_1013 = &p_1214->g_876;
    uint8_t *l_1014 = &p_1214->g_57;
    uint32_t *l_1017 = &p_1214->g_526;
    int32_t **l_1018 = (void*)0;
    int32_t **l_1019 = (void*)0;
    int32_t *l_1021 = &p_1214->g_17;
    int32_t **l_1020 = &l_1021;
    int32_t l_1022 = (-9L);
    uint8_t *l_1023 = &p_1214->g_230.f1;
    uint8_t *l_1024 = &p_1214->g_377[1];
    union U1 *l_1029 = &p_1214->g_230;
    int32_t *l_1034 = &p_1214->g_11;
    uint64_t *l_1046 = (void*)0;
    int i;
    for (i = 0; i < 3; i++)
        l_1012[i] = &p_1214->g_877;
    p_31 = (safe_add_func_int8_t_s_s((((((*l_1017) ^= (p_32 == (safe_rshift_func_uint8_t_u_u(((p_32 , l_1012[1]) == ((*l_1013) = &p_1214->g_877)), ((*l_1014)--))))) , &p_1214->g_17) == ((*l_1020) = l_1017)) ^ ((--(*l_1024)) != ((l_1014 == ((safe_add_func_uint64_t_u_u((l_1022 ^ (((*p_1214->g_877) ^= (((l_1029 != l_1029) || p_1214->g_37[1]) , 0x82CDL)) == 65534UL)), (**p_1214->g_487))) , (*p_1214->g_846))) , p_32))), p_1214->g_974[1]));
    for (p_1214->g_105 = 0; (p_1214->g_105 > (-27)); p_1214->g_105 = safe_sub_func_int8_t_s_s(p_1214->g_105, 3))
    { /* block id: 522 */
        for (p_1214->g_17 = 0; (p_1214->g_17 >= 18); p_1214->g_17 = safe_add_func_uint16_t_u_u(p_1214->g_17, 9))
        { /* block id: 525 */
            union U1 **l_1037 = &p_1214->g_469[3][0];
            int32_t l_1043 = 0x6290A8CDL;
            int32_t *l_1047 = &l_1022;
            (*p_1214->g_781) = p_31;
            l_1034 = (void*)0;
            for (p_32 = 0; (p_32 > 51); p_32++)
            { /* block id: 530 */
                return p_31;
            }
            (*l_1047) = ((*p_1214->g_781) ^= ((!((FAKE_DIVERGE(p_1214->local_2_offset, get_local_id(2), 10) , (((((***p_1214->g_939) , (*p_1214->g_488)) != p_31) > (p_1214->g_377[1] & GROUP_DIVERGE(0, 1))) , l_1037)) != (void*)0)) | (((safe_unary_minus_func_uint16_t_u((safe_rshift_func_int8_t_s_u(((safe_mod_func_uint8_t_u_u(l_1043, GROUP_DIVERGE(1, 1))) , (safe_mod_func_int32_t_s_s(((void*)0 == l_1046), l_1022))), 5)))) || 0x7378A1BC329E8798L) || GROUP_DIVERGE(0, 1))));
        }
    }
    return p_1214->g_2[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1214->g_3 p_1214->g_674 p_1214->g_11 p_1214->g_165 p_1214->g_718.f0 p_1214->g_118 p_1214->g_377 p_1214->g_781 p_1214->g_104 p_1214->g_17 p_1214->g_4 p_1214->g_309.f1 p_1214->g_630 p_1214->g_632 p_1214->g_754 p_1214->g_488 p_1214->g_44 p_1214->g_57 p_1214->g_526 p_1214->g_663 p_1214->g_487 p_1214->g_230.f1
 * writes: p_1214->g_377 p_1214->g_230.f0 p_1214->g_674 p_1214->g_309.f1 p_1214->g_11 p_1214->g_86 p_1214->g_105 p_1214->g_739.f1 p_1214->g_331 p_1214->g_153 p_1214->g_44 p_1214->g_18 p_1214->g_663 p_1214->g_526 p_1214->g_165 p_1214->g_230.f1
 */
int64_t  func_38(uint32_t  p_39, int32_t * p_40, int32_t  p_41, union U2  p_42, struct S3 * p_1214)
{ /* block id: 397 */
    uint8_t l_782 = 0xE1L;
    union U0 ***l_783[5][7] = {{&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737},{&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737},{&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737},{&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737},{&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737,&p_1214->g_737}};
    union U0 ***l_784[4][4] = {{&p_1214->g_737,&p_1214->g_737,(void*)0,&p_1214->g_737},{&p_1214->g_737,&p_1214->g_737,(void*)0,&p_1214->g_737},{&p_1214->g_737,&p_1214->g_737,(void*)0,&p_1214->g_737},{&p_1214->g_737,&p_1214->g_737,(void*)0,&p_1214->g_737}};
    int32_t l_785 = 4L;
    uint16_t l_786 = 0xD129L;
    int16_t l_800[6][8] = {{0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL},{0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL},{0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL},{0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL},{0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL},{0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL,0x1C9CL}};
    union U2 l_809 = {0x142BL};
    int8_t *l_834[7] = {&p_1214->g_739.f1,(void*)0,&p_1214->g_739.f1,&p_1214->g_739.f1,(void*)0,&p_1214->g_739.f1,&p_1214->g_739.f1};
    union U1 l_837 = {0x9E90L};
    int8_t l_910[2][5] = {{6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L}};
    uint64_t **l_919 = (void*)0;
    int32_t l_992 = 0L;
    int32_t l_996 = 0x70D2671FL;
    int32_t l_997 = 0x23B8FEF3L;
    int64_t l_1004 = 1L;
    int i, j;
    l_786 = (p_1214->g_3[0] , (l_785 = (l_782 <= (l_783[1][3] != l_784[3][2]))));
    for (l_782 = 0; (l_782 <= 2); l_782 += 1)
    { /* block id: 402 */
        uint32_t *l_789 = &p_1214->g_526;
        uint8_t *l_790 = &p_1214->g_377[4];
        uint16_t *l_791 = &p_1214->g_230.f0;
        uint32_t *l_796 = &p_1214->g_674;
        uint8_t *l_799 = &p_1214->g_309.f1;
        uint32_t **l_822 = (void*)0;
        uint32_t **l_823 = &l_796;
        uint32_t **l_824 = (void*)0;
        uint32_t *l_826 = &p_1214->g_674;
        uint32_t **l_825 = &l_826;
        uint32_t *l_828[8][1][6] = {{{&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674}},{{&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674}},{{&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674}},{{&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674}},{{&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674}},{{&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674}},{{&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674}},{{&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674,&p_1214->g_674}}};
        uint32_t **l_827 = &l_828[5][0][5];
        int32_t l_831 = 1L;
        int8_t *l_832 = &p_1214->g_739.f1;
        int32_t *l_833[10][5][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        union U1 l_835 = {0x6C14L};
        int16_t *l_836[1][8];
        int32_t **l_838 = &l_833[5][3][0];
        uint8_t l_873 = 0xD9L;
        uint64_t *l_889 = &p_1214->g_44;
        union U2 **l_938 = &p_1214->g_311;
        union U2 ***l_937 = &l_938;
        uint8_t l_957 = 0x4FL;
        int32_t *l_958 = &p_1214->g_3[0];
        uint8_t l_977[2];
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 8; j++)
                l_836[i][j] = &p_1214->g_18;
        }
        for (i = 0; i < 2; i++)
            l_977[i] = 0x32L;
        (*p_40) = (safe_div_func_uint16_t_u_u(((*l_791) = (((void*)0 != l_789) == ((*l_790) = FAKE_DIVERGE(p_1214->group_2_offset, get_group_id(2), 10)))), (safe_mul_func_uint8_t_u_u(((*l_799) = (safe_sub_func_uint32_t_u_u((++(*l_796)), (*p_40)))), l_800[0][6]))));
        l_785 &= (safe_mod_func_int32_t_s_s(((((*l_832) = (safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_u((safe_add_func_uint8_t_u_u((l_809 , ((*l_799) = (safe_rshift_func_int8_t_s_u((+(safe_add_func_int16_t_s_s((safe_div_func_int64_t_s_s(((*p_1214->g_104) = (((safe_mod_func_int8_t_s_s((p_1214->g_165 || (((((p_1214->g_718.f0 != (safe_div_func_uint16_t_u_u(p_1214->g_118, ((safe_div_func_uint8_t_u_u((((((*l_825) = ((*l_823) = l_789)) != ((*l_827) = &p_1214->g_674)) > ((*l_791) = 0UL)) , ((*l_790) = (FAKE_DIVERGE(p_1214->local_1_offset, get_local_id(1), 10) <= ((l_809.f0 < (+(safe_sub_func_uint32_t_u_u((p_41 && p_39), p_1214->g_377[1])))) ^ l_831)))), 0x25L)) & (*p_1214->g_781))))) != l_831) , l_831) > p_39) >= 0xF75424179A94AC45L)), l_786)) != 5L) ^ 254UL)), l_831)), p_1214->g_17))), p_42.f0)))), 0x7CL)), GROUP_DIVERGE(1, 1))), p_1214->g_4[1][4][0]))) && l_831) && l_809.f0), p_1214->g_4[7][5][1]));
        l_833[0][2][0] = p_40;
        (*l_838) = (p_1214->g_309.f1 , func_47(func_65((l_832 = func_65(func_65(l_834[3], l_835, p_1214), l_835, p_1214)), (((+p_41) , ((((~(p_1214->g_18 = (p_42.f0 = ((void*)0 != &l_782)))) & 0x5EB0L) < l_800[0][6]) , l_800[0][6])) , l_837), p_1214), p_41, p_41, p_39, p_1214));
        for (p_1214->g_230.f1 = 0; (p_1214->g_230.f1 <= 2); p_1214->g_230.f1 += 1)
        { /* block id: 424 */
            uint16_t *l_848 = &p_1214->g_165;
            union U1 l_858 = {65535UL};
            int32_t l_866 = 0x421205D7L;
            uint64_t l_896 = 0x8420BFC07571FBF9L;
            uint64_t **l_913 = &l_889;
            int64_t l_975 = 1L;
            uint16_t ***l_981 = &p_1214->g_876;
            int32_t l_995[9];
            int i, j;
            for (i = 0; i < 9; i++)
                l_995[i] = 0x3013BFDDL;
            (1 + 1);
        }
    }
    for (p_1214->g_44 = 0; (p_1214->g_44 <= 2); p_1214->g_44 += 1)
    { /* block id: 507 */
        return l_1004;
    }
    return l_910[0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1214->g_17 p_1214->g_754 p_1214->g_488 p_1214->g_44 p_1214->g_11 p_1214->g_663 p_1214->g_57 p_1214->g_526 p_1214->g_3 p_1214->g_165 p_1214->g_377 p_1214->g_487 p_1214->g_781
 * writes: p_1214->g_44 p_1214->g_11 p_1214->g_663 p_1214->g_526 p_1214->g_165
 */
int32_t * func_47(int8_t * p_48, int64_t  p_49, uint8_t  p_50, int32_t  p_51, struct S3 * p_1214)
{ /* block id: 382 */
    uint16_t *l_755 = &p_1214->g_165;
    uint8_t *l_756[2][1];
    uint16_t **l_763 = (void*)0;
    uint16_t *l_765 = &p_1214->g_165;
    uint16_t **l_764 = &l_765;
    int32_t *l_766 = &p_1214->g_11;
    int32_t l_767[9] = {0x306EB1ADL,0x306EB1ADL,0x306EB1ADL,0x306EB1ADL,0x306EB1ADL,0x306EB1ADL,0x306EB1ADL,0x306EB1ADL,0x306EB1ADL};
    uint32_t *l_773[4][8][2] = {{{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526}},{{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526}},{{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526}},{{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526},{&p_1214->g_526,&p_1214->g_526}}};
    int32_t *l_780 = &l_767[8];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_756[i][j] = &p_1214->g_57;
    }
    l_767[3] = ((*l_766) &= (p_51 = ((((FAKE_DIVERGE(p_1214->group_2_offset, get_group_id(2), 10) > p_1214->g_17) , (p_1214->g_754[2][1][6] , l_755)) != ((*l_764) = (((&p_50 != l_756[0][0]) == ((((*p_1214->g_488)--) == FAKE_DIVERGE(p_1214->local_2_offset, get_local_id(2), 10)) | (p_51 >= (safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), 2))))) , &p_1214->g_165))) == 65535UL)));
    for (p_1214->g_663 = 0; (p_1214->g_663 <= 16); ++p_1214->g_663)
    { /* block id: 390 */
        int8_t l_770 = 0x28L;
        l_770 ^= 0x4ADF3829L;
    }
    (*l_780) &= (((((((((~((p_1214->g_526 ^= (safe_rshift_func_int8_t_s_u(p_1214->g_57, (*l_766)))) , (*l_766))) < p_49) & ((safe_div_func_uint16_t_u_u(((*l_765) |= (safe_rshift_func_int16_t_s_s((*l_766), (((safe_mul_func_uint8_t_u_u((p_50 > ((l_756[0][0] != p_48) , p_1214->g_3[0])), 0x06L)) | (*l_766)) & (*l_766))))), p_1214->g_377[3])) || p_1214->g_663)) || 0xCAL) , (void*)0) != (*p_1214->g_487)) >= 0x2DB1D1974534EB82L) , p_49) & (*l_766));
    return p_1214->g_781;
}


/* ------------------------------------------ */
/* 
 * reads : p_1214->g_645 p_1214->g_104 p_1214->g_86 p_1214->g_105 p_1214->g_663 p_1214->g_339 p_1214->g_309.f0 p_1214->g_379 p_1214->g_377 p_1214->g_18 p_1214->g_381 p_1214->g_3 p_1214->g_8 p_1214->g_718 p_1214->g_230.f0 p_1214->g_526 p_1214->g_22 p_1214->g_2 p_1214->g_737 p_1214->g_524 p_1214->g_331 p_1214->g_488 p_1214->g_44 p_1214->g_630
 * writes: p_1214->g_11 p_1214->g_663 p_1214->g_674 p_1214->g_86 p_1214->g_105 p_1214->g_165 p_1214->g_21 p_1214->g_230.f0 p_1214->g_526 p_1214->g_331 p_1214->g_153
 */
uint64_t  func_62(uint8_t * p_63, int8_t  p_64, struct S3 * p_1214)
{ /* block id: 324 */
    int32_t l_644 = 0x037B1F0DL;
    uint32_t l_654[8][6] = {{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL}};
    uint16_t l_655 = 65526UL;
    uint16_t *l_658 = &p_1214->g_165;
    uint16_t **l_657 = &l_658;
    union U2 l_659 = {0x25E7L};
    int32_t *l_662[2];
    union U2 *l_672 = &l_659;
    uint32_t *l_673 = &p_1214->g_674;
    union U0 *l_684 = &p_1214->g_290;
    union U0 **l_683[10];
    union U0 ***l_685 = &l_683[1];
    int64_t *l_688 = (void*)0;
    int64_t *l_689 = &p_1214->g_663;
    int16_t *l_690[8];
    int32_t **l_753[10][9] = {{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0},{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0},{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0},{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0},{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0},{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0},{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0},{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0},{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0},{(void*)0,&p_1214->g_153,(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_153,(void*)0}};
    int i, j;
    for (i = 0; i < 2; i++)
        l_662[i] = &p_1214->g_11;
    for (i = 0; i < 10; i++)
        l_683[i] = &l_684;
    for (i = 0; i < 8; i++)
        l_690[i] = (void*)0;
lbl_723:
    (*p_1214->g_645) = (0x3B3DACE6L | l_644);
    p_1214->g_663 &= ((safe_mul_func_uint16_t_u_u((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u((((safe_mod_func_uint8_t_u_u(l_654[1][1], l_655)) == (*p_1214->g_104)) , (l_644 = (((safe_unary_minus_func_int16_t_s((l_657 != (l_659 , &l_658)))) & 4294967295UL) & (0UL != (safe_lshift_func_int16_t_s_s((!(-1L)), 9)))))), 7)), l_659.f0)), 0x4F09L)) > p_64);
    if (((((p_1214->g_21 = (((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_s((((-6L) < (((*l_672) = l_659) , (0xF9F0B485L != ((*l_673) = GROUP_DIVERGE(0, 1))))) && (safe_lshift_func_int8_t_s_s((((0x436FL != ((((*p_1214->g_645) = (safe_rshift_func_int16_t_s_s((p_64 <= (safe_sub_func_int64_t_s_s(((*p_1214->g_104) = (*p_1214->g_104)), ((((*l_685) = l_683[1]) == &l_684) <= ((((((*l_689) = ((safe_mod_func_int16_t_s_s(((((*l_658) = p_64) == p_64) <= p_64), p_64)) == p_64)) | (-1L)) < p_1214->g_339) , p_64) >= p_64))))), p_64))) || p_64) != p_64)) < 6UL) , p_1214->g_663), p_1214->g_309.f0))), p_1214->g_379)), (*p_63))) == p_1214->g_18), FAKE_DIVERGE(p_1214->global_0_offset, get_global_id(0), 10))), p_1214->g_381)) , 0xAA4CL) , 0x27B0L)) , p_1214->g_3[0]) , p_1214->g_8) >= 0x2A5EL))
    { /* block id: 336 */
        uint32_t l_691 = 4294967295UL;
        int32_t *l_696[1];
        union U1 **l_707 = &p_1214->g_469[7][0];
        uint16_t l_716 = 0xE6F1L;
        uint8_t l_717 = 0xE6L;
        int32_t **l_750[10];
        int i;
        for (i = 0; i < 1; i++)
            l_696[i] = &p_1214->g_4[1][4][0];
        for (i = 0; i < 10; i++)
            l_750[i] = &l_696[0];
        l_691++;
        for (l_655 = 0; (l_655 <= 0); l_655 += 1)
        { /* block id: 340 */
            int32_t l_694 = 0x14220C9BL;
            uint32_t *l_695 = &l_691;
            int32_t l_719 = (-4L);
            l_719 &= (l_694 = (p_1214->g_718 , 0x6E31D489L));
            for (p_1214->g_230.f0 = 0; (p_1214->g_230.f0 <= 7); p_1214->g_230.f0 += 1)
            { /* block id: 348 */
                uint64_t l_736[8][3][7] = {{{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL}},{{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL}},{{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL}},{{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL}},{{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL}},{{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL}},{{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL}},{{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL},{0xFB309C2B7932EB40L,18446744073709551610UL,0x83C397AE45CC2850L,0x23359640CB94EADEL,1UL,1UL,0x23359640CB94EADEL}}};
                int32_t l_747 = 1L;
                int32_t l_748 = (-1L);
                int32_t l_749 = 0x31139941L;
                int i, j, k;
                for (l_691 = 0; (l_691 <= 0); l_691 += 1)
                { /* block id: 351 */
                    uint32_t l_720 = 0xA7F73502L;
                    union U0 **l_742[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_742[i] = &p_1214->g_738[0][2];
                    l_720++;
                    for (p_1214->g_526 = 0; (p_1214->g_526 <= 7); p_1214->g_526 += 1)
                    { /* block id: 355 */
                        int i, j, k;
                        if (p_1214->g_105)
                            goto lbl_723;
                        l_749 = (((*l_673) = ((-8L) < p_1214->g_22[l_655][(l_691 + 4)][(l_655 + 2)])) < (safe_add_func_int8_t_s_s(p_1214->g_2[l_655], (((~l_720) != ((safe_add_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_s((safe_mod_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s((((l_736[7][1][1] = p_64) , (p_1214->g_737 == ((*l_685) = l_742[1]))) | (*p_1214->g_104)), 5)), 1)) ^ ((**l_657) = ((safe_sub_func_uint32_t_u_u((~(l_748 |= ((((!(!((l_747 &= (safe_rshift_func_int8_t_s_u(((-1L) || l_720), (*p_63)))) < p_64))) | p_1214->g_3[0]) <= p_64) || (-10L)))), p_1214->g_2[l_655])) >= GROUP_DIVERGE(1, 1)))), 0x7CL)), 2)) , p_1214->g_3[0]), p_64)) , FAKE_DIVERGE(p_1214->local_2_offset, get_local_id(2), 10))) < p_64))));
                        return p_64;
                    }
                }
                for (p_1214->g_86 = 0; (p_1214->g_86 >= 0); p_1214->g_86 -= 1)
                { /* block id: 369 */
                    int i, j, k;
                    return p_1214->g_22[p_1214->g_86][(p_1214->g_86 + 4)][(p_1214->g_86 + 1)];
                }
            }
        }
        l_662[1] = &l_644;
    }
    else
    { /* block id: 375 */
        int32_t **l_751 = &p_1214->g_331[0][0];
        int32_t **l_752 = &p_1214->g_153;
        (*l_752) = ((*l_751) = (*p_1214->g_524));
        return (*p_1214->g_488);
    }
    (*p_1214->g_630) = &l_644;
    return p_64;
}


/* ------------------------------------------ */
/* 
 * reads : p_1214->g_11 p_1214->g_630 p_1214->g_632 p_1214->g_44
 * writes: p_1214->g_11 p_1214->g_331 p_1214->g_153 p_1214->g_44
 */
uint8_t * func_65(int8_t * p_66, union U1  p_67, struct S3 * p_1214)
{ /* block id: 305 */
    int32_t *l_628 = &p_1214->g_11;
    int32_t l_637 = 0x716C3C0DL;
    int32_t l_638[3][1];
    uint8_t l_639[9] = {2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL};
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_638[i][j] = 2L;
    }
    if (((*l_628) ^= p_67.f0))
    { /* block id: 307 */
        (*p_1214->g_630) = l_628;
    }
    else
    { /* block id: 309 */
        int32_t *l_631 = (void*)0;
        (*p_1214->g_632) = l_631;
    }
    for (p_67.f2 = 0; (p_67.f2 <= 9); p_67.f2 = safe_add_func_uint8_t_u_u(p_67.f2, 7))
    { /* block id: 314 */
        int32_t *l_635 = &p_1214->g_11;
        int32_t *l_636[10] = {&p_1214->g_11,&p_1214->g_11,&p_1214->g_11,&p_1214->g_11,&p_1214->g_11,&p_1214->g_11,&p_1214->g_11,&p_1214->g_11,&p_1214->g_11,&p_1214->g_11};
        int i;
        l_639[4]++;
        if (p_67.f2)
            continue;
    }
    for (p_1214->g_44 = 0; (p_1214->g_44 >= 12); p_1214->g_44 = safe_add_func_int32_t_s_s(p_1214->g_44, 2))
    { /* block id: 320 */
        return &p_1214->g_377[1];
    }
    return &p_1214->g_377[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1214->g_17 p_1214->g_18 p_1214->g_6 p_1214->g_3 p_1214->g_11 p_1214->g_4 p_1214->g_44 p_1214->g_20 p_1214->g_118 p_1214->g_22 p_1214->g_86 p_1214->g_5 p_1214->g_154 p_1214->g_165 p_1214->g_2 p_1214->g_212 p_1214->g_221 p_1214->g_230 p_1214->g_104 p_1214->g_230.f0 p_1214->g_290 p_1214->g_57 p_1214->g_153 p_1214->g_105 p_1214->g_339 p_1214->g_379 p_1214->g_331 p_1214->g_309.f0 p_1214->g_398 p_1214->g_21 p_1214->g_377 p_1214->g_230.f1 p_1214->g_458 p_1214->g_309 p_1214->g_487 p_1214->g_492 p_1214->g_492.f0 p_1214->g_524 p_1214->g_526 p_1214->g_488 p_1214->g_558 p_1214->g_212.f0
 * writes: p_1214->g_17 p_1214->g_86 p_1214->g_104 p_1214->g_106 p_1214->g_118 p_1214->g_11 p_1214->g_44 p_1214->g_153 p_1214->g_165 p_1214->g_57 p_1214->g_18 p_1214->g_230.f0 p_1214->g_21 p_1214->g_377 p_1214->g_230.f1 p_1214->g_379 p_1214->g_311 p_1214->g_469 p_1214->g_331 p_1214->g_381
 */
union U0  func_68(int32_t  p_69, int32_t * p_70, uint32_t  p_71, int32_t  p_72, uint16_t  p_73, struct S3 * p_1214)
{ /* block id: 24 */
    int32_t *l_84 = &p_1214->g_4[1][4][0];
    uint8_t *l_143 = (void*)0;
    int32_t l_155 = (-1L);
    int32_t l_159[2][9][2] = {{{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL}},{{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL}}};
    uint64_t *l_196 = &p_1214->g_44;
    uint64_t **l_195 = &l_196;
    uint8_t l_278 = 0x5FL;
    int16_t l_294 = 0x0E65L;
    int8_t l_296 = (-1L);
    int64_t l_340[3][9] = {{3L,3L,3L,3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L,3L,3L,3L}};
    union U2 *l_388[2][6][9] = {{{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309}},{{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309},{&p_1214->g_309,&p_1214->g_309,(void*)0,(void*)0,(void*)0,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309,&p_1214->g_309}}};
    int64_t *l_417[2];
    int64_t **l_430 = &p_1214->g_106[4][2][1];
    int64_t ***l_429 = &l_430;
    uint64_t l_499 = 0UL;
    int8_t l_514 = 5L;
    int32_t l_515 = 0L;
    union U1 *l_517 = &p_1214->g_230;
    uint16_t l_580 = 0xE1D3L;
    uint64_t *l_583 = &p_1214->g_118;
    int32_t l_623 = 0x25DCBE47L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_417[i] = &l_340[0][2];
    for (p_1214->g_17 = 0; (p_1214->g_17 <= 0); p_1214->g_17 += 1)
    { /* block id: 27 */
        int64_t *l_85 = &p_1214->g_86;
        int32_t l_91 = 0x1A4EABE0L;
        uint8_t *l_144 = &p_1214->g_57;
        uint64_t *l_149[10] = {&p_1214->g_44,&p_1214->g_44,&p_1214->g_44,&p_1214->g_44,&p_1214->g_44,&p_1214->g_44,&p_1214->g_44,&p_1214->g_44,&p_1214->g_44,&p_1214->g_44};
        uint64_t **l_148[2][8] = {{&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2]},{&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2]}};
        int32_t l_157[4] = {(-2L),(-2L),(-2L),(-2L)};
        int32_t l_189[8][2][1] = {{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}}};
        int32_t **l_202 = &p_1214->g_153;
        int64_t l_282 = 6L;
        uint32_t l_297[8][7] = {{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL}};
        int32_t *l_303[9][6] = {{&l_189[7][1][0],(void*)0,(void*)0,&p_1214->g_4[4][3][0],(void*)0,&p_1214->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_1214->g_4[4][3][0],(void*)0,&p_1214->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_1214->g_4[4][3][0],(void*)0,&p_1214->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_1214->g_4[4][3][0],(void*)0,&p_1214->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_1214->g_4[4][3][0],(void*)0,&p_1214->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_1214->g_4[4][3][0],(void*)0,&p_1214->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_1214->g_4[4][3][0],(void*)0,&p_1214->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_1214->g_4[4][3][0],(void*)0,&p_1214->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_1214->g_4[4][3][0],(void*)0,&p_1214->g_4[4][3][0]}};
        uint32_t l_304 = 0x611A5F4CL;
        union U2 *l_308 = &p_1214->g_309;
        int32_t l_346 = 0x0CE73A03L;
        union U0 *l_432 = &p_1214->g_290;
        union U0 **l_431 = &l_432;
        int i, j, k;
        if ((p_1214->g_18 ^ (safe_sub_func_int16_t_s_s((((((((((safe_mul_func_uint8_t_u_u(1UL, p_1214->g_6)) > (func_78(l_84, p_73, l_85, (p_1214->g_3[0] != (safe_add_func_int8_t_s_s(0x00L, ((!((safe_div_func_uint64_t_u_u((((void*)0 == &p_1214->g_8) & 18446744073709551612UL), p_69)) , p_1214->g_11)) != l_91)))), (*l_84), p_1214) , 0L)) & 0x5964L) & (-1L)) <= p_1214->g_44) != (*l_84)) || p_1214->g_20[1][2]) >= p_72) <= p_1214->g_4[6][3][1]), 0x0314L))))
        { /* block id: 30 */
            int32_t *l_93[7][1][3] = {{{(void*)0,&p_1214->g_4[8][0][0],&p_1214->g_3[0]}},{{(void*)0,&p_1214->g_4[8][0][0],&p_1214->g_3[0]}},{{(void*)0,&p_1214->g_4[8][0][0],&p_1214->g_3[0]}},{{(void*)0,&p_1214->g_4[8][0][0],&p_1214->g_3[0]}},{{(void*)0,&p_1214->g_4[8][0][0],&p_1214->g_3[0]}},{{(void*)0,&p_1214->g_4[8][0][0],&p_1214->g_3[0]}},{{(void*)0,&p_1214->g_4[8][0][0],&p_1214->g_3[0]}}};
            uint64_t *l_96 = &p_1214->g_44;
            int64_t l_232[7][3] = {{3L,3L,0L},{3L,3L,0L},{3L,3L,0L},{3L,3L,0L},{3L,3L,0L},{3L,3L,0L},{3L,3L,0L}};
            uint32_t l_285[10];
            int i, j, k;
            for (i = 0; i < 10; i++)
                l_285[i] = 0x32B7D9B0L;
            p_69 &= 0x7E8BA164L;
            for (p_1214->g_86 = 0; (p_1214->g_86 <= 0); p_1214->g_86 += 1)
            { /* block id: 34 */
                uint64_t *l_97[2][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                uint64_t **l_98 = &l_97[0][2];
                int64_t **l_103[5] = {&l_85,&l_85,&l_85,&l_85,&l_85};
                int32_t l_121[1];
                int32_t l_134 = 0x6788166BL;
                uint32_t l_146[9] = {1UL,0xEA337768L,1UL,1UL,0xEA337768L,1UL,1UL,0xEA337768L,1UL};
                int32_t l_147 = 6L;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_121[i] = 0x4C3DE63DL;
                if (((safe_div_func_int64_t_s_s(((l_96 == ((*l_98) = l_97[1][3])) != (((((safe_mul_func_uint16_t_u_u((3UL || GROUP_DIVERGE(2, 1)), 0x299DL)) <= p_73) , ((safe_mul_func_int8_t_s_s(p_1214->g_4[0][2][1], 0x55L)) != ((p_1214->g_106[8][3][0] = (p_1214->g_104 = &p_1214->g_86)) == (void*)0))) && 0xBB9AL) , 0x55L)), 0x6C7AF4A4090D02F7L)) | l_91))
                { /* block id: 38 */
                    int32_t **l_108[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_108[i] = (void*)0;
                    l_93[3][0][1] = l_84;
                }
                else
                { /* block id: 40 */
                    uint64_t *l_117 = &p_1214->g_118;
                    int32_t l_145 = 0x2E7AF9F9L;
                    l_147 &= (safe_rshift_func_uint16_t_u_s(((((*p_70) > (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(((l_91 = ((safe_div_func_uint64_t_u_u(((++(*l_117)) , GROUP_DIVERGE(1, 1)), (l_121[0] = l_121[0]))) ^ (safe_mul_func_int8_t_s_s(((((safe_add_func_uint64_t_u_u((safe_mod_func_int16_t_s_s((((safe_mul_func_uint8_t_u_u(((8UL ^ ((safe_mul_func_int16_t_s_s(((((p_1214->g_11 ^= 0L) , ((p_72 || ((--(*l_96)) ^ (p_1214->g_11 == 0x14615860L))) , 0x39D5B4B6L)) , (safe_div_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_u((l_143 == l_144), l_134)), p_71)), (*p_70)))) | l_91), GROUP_DIVERGE(0, 1))) ^ l_145)) || p_73), (-5L))) | l_146[5]) >= p_1214->g_22[0][0][3]), p_73)), p_69)) && p_73) != 18446744073709551615UL) | p_72), l_146[5])))) >= (*l_84)), (*l_84))), 249UL))) >= FAKE_DIVERGE(p_1214->group_0_offset, get_group_id(0), 10)) , 0x8CF9L), p_1214->g_86));
                    p_70 = &p_1214->g_4[1][4][0];
                }
                if ((p_1214->g_5 , (((void*)0 != l_148[0][0]) < p_1214->g_6)))
                { /* block id: 49 */
                    for (p_1214->g_118 = 0; (p_1214->g_118 <= 4); p_1214->g_118 += 1)
                    { /* block id: 52 */
                        int32_t **l_150 = &l_93[3][0][1];
                        int i, j, k;
                        (*l_150) = l_93[(p_1214->g_86 + 5)][p_1214->g_17][p_1214->g_86];
                        if (p_1214->g_22[p_1214->g_86][p_1214->g_118][p_1214->g_118])
                            break;
                    }
                }
                else
                { /* block id: 56 */
                    int32_t l_156 = 0L;
                    int32_t l_158 = 0x4BF27C86L;
                    int32_t l_161 = 0x1127033AL;
                    int32_t l_163[3];
                    uint64_t **l_194 = &l_149[1];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_163[i] = 2L;
                    for (l_91 = 0; (l_91 <= 2); l_91 += 1)
                    { /* block id: 59 */
                        int32_t **l_151 = (void*)0;
                        int32_t l_160 = 0x05619517L;
                        int32_t l_162 = 0x28CF20DEL;
                        int32_t l_164 = 4L;
                        int64_t **l_177 = &p_1214->g_106[2][0][0];
                        int64_t ***l_178 = &l_103[2];
                        int16_t *l_187 = (void*)0;
                        int16_t *l_188[5] = {&p_1214->g_21,&p_1214->g_21,&p_1214->g_21,&p_1214->g_21,&p_1214->g_21};
                        int i, j, k;
                        (*p_1214->g_154) = l_93[(p_1214->g_86 + 2)][p_1214->g_86][l_91];
                        --p_1214->g_165;
                        l_189[3][0][0] |= ((safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u((0UL ^ ((0x448CFC1C320AB5C3L && (safe_rshift_func_uint8_t_u_u((safe_mod_func_int16_t_s_s(((+p_1214->g_22[p_1214->g_17][(p_1214->g_86 + 4)][(p_1214->g_17 + 3)]) && (safe_unary_minus_func_uint16_t_u(((((((((*l_178) = l_177) != &p_1214->g_106[8][3][0]) == (l_157[0] = (safe_rshift_func_uint8_t_u_s((safe_div_func_uint32_t_u_u(((*p_70) >= (safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((p_73 = 0xF68BL), (&l_155 == &l_161))), p_1214->g_3[0]))), 4294967295UL)), (*l_84))))) & p_1214->g_118) , 0UL) <= p_1214->g_20[8][1]) ^ 5L)))), l_156)), GROUP_DIVERGE(1, 1)))) >= l_158)), (-8L))), 8UL)) > p_1214->g_2[0]);
                        if ((*l_84))
                            continue;
                    }
                    p_69 = (safe_rshift_func_uint8_t_u_s(0UL, (safe_lshift_func_int16_t_s_u(p_72, ((l_98 = l_194) != l_195)))));
                }
                for (p_73 = 0; (p_73 <= 2); p_73 += 1)
                { /* block id: 73 */
                    p_69 = ((p_1214->g_106[3][1][1] = l_149[3]) != (void*)0);
                    l_91 &= (safe_lshift_func_uint8_t_u_u(0x9FL, l_121[0]));
                }
            }
            for (l_91 = 2; (l_91 >= 0); l_91 -= 1)
            { /* block id: 81 */
                int16_t l_201 = 0x3CC8L;
                int64_t *l_219 = &p_1214->g_86;
                int64_t **l_220 = &p_1214->g_104;
                int16_t l_222 = 0x3A00L;
                int32_t l_259 = 0L;
                int32_t l_284[9] = {0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL};
                int i;
                l_222 = (((safe_mul_func_uint16_t_u_u(0x151BL, (l_201 > (FAKE_DIVERGE(p_1214->global_2_offset, get_global_id(2), 10) > ((&p_1214->g_153 == l_202) == (safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1214->global_1_offset, get_global_id(1), 10), (safe_mod_func_int64_t_s_s((safe_sub_func_uint16_t_u_u((p_1214->g_4[1][4][0] , (((safe_lshift_func_uint16_t_u_u(l_201, 11)) != (safe_unary_minus_func_int8_t_s(((p_1214->g_212[0] , ((safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((((safe_rshift_func_int8_t_s_s(((0x606FL <= (((*l_220) = l_219) == l_149[2])) & p_1214->g_221), 2)) > 0x12L) && p_1214->g_22[0][3][3]), l_201)), 11)) , l_143)) == l_143)))) <= 65535UL)), p_73)), (-1L)))))))))) & p_73) , (*p_70));
                if ((*p_70))
                    continue;
                if ((*p_70))
                { /* block id: 85 */
                    uint64_t l_227 = 18446744073709551615UL;
                    int32_t l_231 = 2L;
                    for (p_1214->g_57 = 0; (p_1214->g_57 <= 0); p_1214->g_57 += 1)
                    { /* block id: 88 */
                        (*l_202) = &p_69;
                    }
                    l_231 = (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(((l_227 || (safe_add_func_uint16_t_u_u((((void*)0 != &l_227) <= (p_1214->g_230 , (p_1214->g_57 = p_72))), 65532UL))) > p_73), 4)), p_1214->g_22[0][0][3]));
                }
                else
                { /* block id: 93 */
                    union U1 l_255 = {65532UL};
                    int32_t l_283[8] = {8L,8L,8L,8L,8L,8L,8L,8L};
                    int64_t l_293[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_293[i] = 0x6DD34601BA04E9CBL;
                    if (l_232[4][0])
                    { /* block id: 94 */
                        uint8_t l_233 = 5UL;
                        if (l_233)
                            break;
                    }
                    else
                    { /* block id: 96 */
                        uint64_t l_234[4][1] = {{1UL},{1UL},{1UL},{1UL}};
                        int i, j;
                        l_234[2][0]--;
                    }
                    for (p_1214->g_86 = 0; (p_1214->g_86 <= 2); p_1214->g_86 += 1)
                    { /* block id: 101 */
                        int32_t l_258 = 7L;
                        uint64_t *l_262 = &p_1214->g_118;
                        uint8_t *l_275 = &p_1214->g_57;
                        int32_t l_279[1][4][9] = {{{1L,4L,0x0F1E4706L,(-1L),4L,(-1L),0x0F1E4706L,4L,1L},{1L,4L,0x0F1E4706L,(-1L),4L,(-1L),0x0F1E4706L,4L,1L},{1L,4L,0x0F1E4706L,(-1L),4L,(-1L),0x0F1E4706L,4L,1L},{1L,4L,0x0F1E4706L,(-1L),4L,(-1L),0x0F1E4706L,4L,1L}}};
                        uint16_t *l_280[1][10][6] = {{{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0},{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0},{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0},{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0},{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0},{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0},{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0},{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0},{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0},{&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0,&p_1214->g_230.f0}}};
                        int16_t *l_281 = &p_1214->g_18;
                        int i, j, k;
                        l_259 &= (p_1214->g_22[p_1214->g_17][(p_1214->g_17 + 3)][p_1214->g_17] == (safe_add_func_uint32_t_u_u(0x8909F1A7L, (((safe_add_func_int16_t_s_s((safe_div_func_uint8_t_u_u((1UL | (safe_div_func_int64_t_s_s(p_73, (safe_sub_func_uint32_t_u_u((((((((((18446744073709551608UL <= GROUP_DIVERGE(0, 1)) < p_73) == (safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(p_71, 11)), (((safe_add_func_uint64_t_u_u(((((safe_lshift_func_uint16_t_u_s(((l_255 , (safe_add_func_uint8_t_u_u(((void*)0 == &p_1214->g_153), GROUP_DIVERGE(1, 1)))) ^ l_255.f0), 11)) == 9UL) == p_1214->g_6) < 1UL), p_69)) , &p_1214->g_105) == (void*)0)))) > (*p_1214->g_104)) || p_1214->g_86) & 0L) ^ l_258) , l_258) || p_69), l_258))))), p_73)), 0x6C84L)) && l_258) >= 3L))));
                        l_282 = ((safe_rshift_func_int16_t_s_u(((*l_281) = (p_1214->g_3[0] == (p_1214->g_165 = ((p_69 = (l_279[0][2][2] &= (p_71 >= ((((!(((**l_195) = (l_262 != (void*)0)) == (((((safe_mul_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(((safe_add_func_int8_t_s_s((((((safe_mod_func_int64_t_s_s(((((safe_div_func_uint16_t_u_u(((l_275 != ((safe_rshift_func_int8_t_s_s(((-1L) >= (((0x177A25CE23C8D7FFL <= ((*p_70) == p_1214->g_3[0])) , l_201) & 0x17L)), p_1214->g_22[0][1][3])) , l_143)) >= 1L), l_201)) >= p_72) , l_196) == (void*)0), p_72)) && 0L) || p_1214->g_221) , p_1214->g_118) > 0x7B0FL), p_69)) & l_258), 0x8DF6ADCC6596B18BL)), l_278)) < 0x05L) , p_69) != p_71) <= l_255.f0))) , &p_69) == (void*)0) || p_69)))) , p_69)))), p_73)) >= l_255.f0);
                        --l_285[8];
                    }
                    for (p_1214->g_230.f0 = 0; (p_1214->g_230.f0 <= 7); p_1214->g_230.f0 += 1)
                    { /* block id: 113 */
                        union U0 *l_289 = &p_1214->g_290;
                        union U0 **l_288 = &l_289;
                        int i;
                        (*l_202) = &l_159[1][4][1];
                        (*l_288) = (void*)0;
                        (*l_202) = &p_69;
                        if (l_285[(p_1214->g_230.f0 + 1)])
                            break;
                    }
                    for (p_1214->g_18 = 0; (p_1214->g_18 <= 2); p_1214->g_18 += 1)
                    { /* block id: 121 */
                        uint64_t l_291 = 0x43C5D142CD6622B3L;
                        int32_t l_292 = 1L;
                        l_292 = (l_291 = (p_69 = (l_155 = (*p_70))));
                        l_293[1] = (*l_84);
                    }
                }
            }
        }
        else
        { /* block id: 130 */
            int32_t *l_295[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            l_297[1][1]--;
            for (p_69 = 0; (p_69 <= 2); p_69 += 1)
            { /* block id: 134 */
                uint16_t l_300 = 0xB0E7L;
                --l_300;
                return p_1214->g_290;
            }
        }
        l_304++;
        for (p_1214->g_57 = 0; (p_1214->g_57 <= 2); p_1214->g_57 += 1)
        { /* block id: 142 */
            int32_t l_324 = 8L;
            int32_t l_334 = 0x262265C8L;
            int64_t l_335[6][1][3] = {{{0L,0L,0L}},{{0L,0L,0L}},{{0L,0L,0L}},{{0L,0L,0L}},{{0L,0L,0L}},{{0L,0L,0L}}};
            int32_t l_336[5][9] = {{0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL},{0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL},{0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL},{0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL},{0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL,0x23AEB33CL,4L,0x23AEB33CL}};
            union U2 l_420 = {0L};
            int16_t l_439 = 8L;
            uint64_t *l_455[2];
            union U1 l_459 = {65535UL};
            union U2 *l_461 = (void*)0;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_455[i] = &p_1214->g_118;
            if ((*p_70))
                break;
            for (p_1214->g_86 = 2; (p_1214->g_86 >= 0); p_1214->g_86 -= 1)
            { /* block id: 146 */
                uint32_t l_328 = 0xE2BD67CFL;
                int32_t l_337 = 5L;
                int32_t l_347 = 0x4797B08FL;
                int8_t l_348 = 0x21L;
                int32_t l_349 = 0x7F7343FEL;
                uint16_t l_352 = 0UL;
                int32_t *l_355[1][7][7] = {{{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349}}};
                uint32_t *l_376[10][10] = {{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0}};
                uint8_t *l_378[4][6] = {{(void*)0,&l_278,&p_1214->g_57,(void*)0,&p_1214->g_57,&l_278},{(void*)0,&l_278,&p_1214->g_57,(void*)0,&p_1214->g_57,&l_278},{(void*)0,&l_278,&p_1214->g_57,(void*)0,&p_1214->g_57,&l_278},{(void*)0,&l_278,&p_1214->g_57,(void*)0,&p_1214->g_57,&l_278}};
                int32_t *l_380[9][4] = {{&p_1214->g_381,&p_1214->g_381,&p_1214->g_381,&p_1214->g_381},{&p_1214->g_381,&p_1214->g_381,&p_1214->g_381,&p_1214->g_381},{&p_1214->g_381,&p_1214->g_381,&p_1214->g_381,&p_1214->g_381},{&p_1214->g_381,&p_1214->g_381,&p_1214->g_381,&p_1214->g_381},{&p_1214->g_381,&p_1214->g_381,&p_1214->g_381,&p_1214->g_381},{&p_1214->g_381,&p_1214->g_381,&p_1214->g_381,&p_1214->g_381},{&p_1214->g_381,&p_1214->g_381,&p_1214->g_381,&p_1214->g_381},{&p_1214->g_381,&p_1214->g_381,&p_1214->g_381,&p_1214->g_381},{&p_1214->g_381,&p_1214->g_381,&p_1214->g_381,&p_1214->g_381}};
                int16_t *l_382 = &p_1214->g_379;
                union U2 *l_397 = &p_1214->g_309;
                int16_t l_413[5][2][6] = {{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}},{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}},{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}},{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}},{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}}};
                int64_t *l_415 = &l_282;
                uint64_t l_450 = 0x9ECE949759AFA7BBL;
                int i, j, k;
                for (p_1214->g_165 = 0; (p_1214->g_165 <= 2); p_1214->g_165 += 1)
                { /* block id: 149 */
                    union U2 *l_312[6];
                    uint8_t *l_322 = &p_1214->g_230.f1;
                    uint8_t *l_323 = &p_1214->g_309.f1;
                    uint32_t *l_325 = (void*)0;
                    uint32_t *l_326 = (void*)0;
                    uint32_t *l_327 = &l_297[1][1];
                    int32_t l_329 = 0L;
                    int32_t *l_333 = &l_157[2];
                    int32_t l_338 = 0x7AF1566BL;
                    int32_t l_341 = 0x37E3A844L;
                    int32_t l_342 = 0x339DF72BL;
                    int32_t l_343 = 0L;
                    int32_t l_344 = 0x0CCCCA58L;
                    int32_t l_345 = (-10L);
                    int32_t l_350 = 0x7D003DA3L;
                    int32_t l_351 = 0L;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_312[i] = &p_1214->g_309;
                    for (p_1214->g_21 = 0; (p_1214->g_21 <= 2); p_1214->g_21 += 1)
                    { /* block id: 152 */
                        volatile int32_t l_307 = 0L;/* VOLATILE GLOBAL l_307 */
                        int i, j, k;
                        l_307 = p_1214->g_22[p_1214->g_17][p_1214->g_57][(p_1214->g_57 + 1)];
                        l_312[4] = l_308;
                    }
                    (*l_202) = &p_69;
                    (*p_1214->g_153) = 0x6500A1E0L;
                    if ((0x67B7C12FL ^ (((safe_lshift_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) > ((*l_84) != ((*l_327) ^= ((*p_70) <= (255UL == (safe_mul_func_int16_t_s_s((!p_1214->g_44), (((safe_unary_minus_func_uint8_t_u((l_324 ^= (FAKE_DIVERGE(p_1214->global_1_offset, get_global_id(1), 10) | (9UL ^ (0x2317L < (safe_mod_func_int8_t_s_s(p_1214->g_22[0][0][3], (+(p_73 ^ (*p_70))))))))))) & FAKE_DIVERGE(p_1214->local_2_offset, get_local_id(2), 10)) > (**l_202))))))))), 1)) != l_328) ^ l_329)))
                    { /* block id: 160 */
                        int32_t **l_332[7] = {&l_84,&l_303[8][1],&l_84,&l_84,&l_303[8][1],&l_84,&l_84};
                        int i;
                        l_333 = ((*l_202) = (*l_202));
                        l_352++;
                        if (l_335[4][0][2])
                            continue;
                        if ((*p_70))
                            continue;
                    }
                    else
                    { /* block id: 166 */
                        l_355[0][3][1] = &p_69;
                        (*l_202) = &p_69;
                    }
                }
                if ((safe_div_func_int16_t_s_s(((*l_382) = (safe_mod_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((safe_add_func_int16_t_s_s((((l_336[0][4] = (((safe_mul_func_int8_t_s_s((safe_sub_func_int8_t_s_s((-10L), (p_1214->g_230.f1 = ((p_1214->g_20[6][0] , GROUP_DIVERGE(0, 1)) != (p_69 || ((GROUP_DIVERGE(1, 1) , (-8L)) >= (p_1214->g_377[1] = (safe_lshift_func_uint8_t_u_u((p_72 | ((safe_mul_func_uint8_t_u_u((p_72 | (safe_add_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u((p_1214->g_105 | p_1214->g_11), 7L)), 18446744073709551608UL))), p_1214->g_339)) <= (*p_1214->g_104))), 6))))))))), 0x4BL)) == (*p_70)) != p_1214->g_379)) , p_72) < p_1214->g_339), GROUP_DIVERGE(2, 1))), 2)), (*l_84)))), p_1214->g_3[0])))
                { /* block id: 175 */
                    uint32_t l_383 = 0x2F84F1ECL;
                    union U2 **l_389[8][1][1];
                    int32_t **l_392 = &p_1214->g_331[0][0];
                    int i, j, k;
                    for (i = 0; i < 8; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_389[i][j][k] = &p_1214->g_311;
                        }
                    }
                    l_383 = ((p_72 && 0x9374L) | 0x99L);
                    p_69 = ((p_1214->g_118 , (*l_84)) <= (safe_rshift_func_int16_t_s_s((+(((((p_1214->g_377[5] = p_73) == (safe_lshift_func_int16_t_s_s(p_1214->g_221, 8))) < (l_336[1][1] < (p_69 < (((((p_1214->g_311 = l_388[0][3][5]) != (((safe_div_func_uint8_t_u_u((l_334 ^= ((&l_84 != l_392) , p_1214->g_379)), 7UL)) ^ p_1214->g_105) , l_388[0][3][8])) , (**l_392)) && p_1214->g_4[1][4][0]) != p_1214->g_309.f0)))) == p_72) && (**l_392))), l_335[1][0][2])));
                    p_69 = (*p_70);
                }
                else
                { /* block id: 182 */
                    union U2 **l_396 = &l_388[1][5][2];
                    int8_t *l_403[7][2];
                    int32_t l_404 = 0x194A55C7L;
                    int64_t *l_414 = &l_282;
                    int32_t l_444 = 0x3514DCF4L;
                    int32_t l_449 = 0x05DDC664L;
                    int i, j;
                    for (i = 0; i < 7; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_403[i][j] = (void*)0;
                    }
                    if ((*p_70))
                        break;
                    for (l_347 = 0; (l_347 <= 2); l_347 += 1)
                    { /* block id: 186 */
                        uint64_t l_393[4][1];
                        int i, j;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_393[i][j] = 18446744073709551615UL;
                        }
                        if ((*p_70))
                            break;
                        l_393[2][0] = (*p_70);
                        p_70 = &p_69;
                        if ((*p_70))
                            break;
                    }
                    if (((p_71 ^ (((*l_396) = (void*)0) != l_397)) == (((p_1214->g_398 != (safe_lshift_func_uint8_t_u_u(((l_404 &= (safe_rshift_func_int8_t_s_u((l_334 = 0L), 4))) , ((safe_add_func_int16_t_s_s(((((p_1214->g_21 >= (safe_add_func_int64_t_s_s(((*l_414) = ((*p_70) < ((((((2L & ((safe_div_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(p_71, l_335[4][0][1])), (*l_84))) , l_413[3][1][3])) || p_1214->g_57) & p_69) | p_73) <= 6UL) != p_1214->g_6))), p_69))) && 18446744073709551612UL) >= (*p_1214->g_104)) >= 0x22AE26D85EE7B512L), p_71)) , p_1214->g_377[1])), 1))) , l_404) && 0x7CL)))
                    { /* block id: 196 */
                        int64_t **l_416[6];
                        int32_t l_440 = 0L;
                        int32_t l_441 = 0x5D88655BL;
                        int16_t l_442[3][5] = {{0x6A58L,0x6A58L,1L,0x6EA7L,0x5CD4L},{0x6A58L,0x6A58L,1L,0x6EA7L,0x5CD4L},{0x6A58L,0x6A58L,1L,0x6EA7L,0x5CD4L}};
                        int32_t l_443 = (-6L);
                        int32_t l_445 = (-8L);
                        int32_t l_446 = 1L;
                        int32_t l_447 = 0x773A7BC2L;
                        int32_t l_448 = 0x161CEA39L;
                        int i, j;
                        for (i = 0; i < 6; i++)
                            l_416[i] = (void*)0;
                        l_334 |= ((l_417[0] = l_415) != ((safe_mod_func_uint8_t_u_u((l_420 , (p_1214->g_230.f1 |= (p_1214->g_309.f0 >= (((safe_rshift_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u((~(p_1214->g_379 > (((((safe_add_func_uint8_t_u_u(((void*)0 != l_429), ((void*)0 != l_431))) && (safe_add_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s((l_404 = ((safe_lshift_func_int8_t_s_s(p_1214->g_377[1], l_404)) , p_73)), p_69)) < GROUP_DIVERGE(2, 1)), 0L))) > p_71) && p_1214->g_4[1][4][0]) < p_1214->g_86))), 2L)) < FAKE_DIVERGE(p_1214->local_1_offset, get_local_id(1), 10)), l_439)) && p_72) | l_440)))), p_72)) , (void*)0));
                        ++l_450;
                    }
                    else
                    { /* block id: 202 */
                        p_69 ^= (safe_div_func_int64_t_s_s(((~1UL) == ((*l_382) = p_71)), ((((void*)0 == l_455[1]) , (safe_lshift_func_uint16_t_u_s(((0L < 0xD8F5L) == (&p_1214->g_381 == &p_1214->g_381)), 8))) ^ ((p_1214->g_44 = GROUP_DIVERGE(2, 1)) ^ p_1214->g_105))));
                        return p_1214->g_458;
                    }
                    (*l_202) = &l_334;
                }
                for (l_346 = 0; (l_346 <= 2); l_346 += 1)
                { /* block id: 212 */
                    union U2 **l_460 = (void*)0;
                    l_461 = (l_459 , &l_420);
                }
                for (l_420.f1 = 0; (l_420.f1 <= 2); l_420.f1 += 1)
                { /* block id: 217 */
                    uint32_t l_462 = 0xC4D427B1L;
                    int32_t l_463 = 0x5620B831L;
                    uint16_t *l_476 = &l_459.f0;
                    uint16_t **l_475 = &l_476;
                    union U2 ***l_477 = (void*)0;
                    union U2 **l_479 = &l_388[0][3][5];
                    union U2 ***l_478 = &l_479;
                    uint64_t *l_482 = (void*)0;
                    if (((p_1214->g_118 = FAKE_DIVERGE(p_1214->group_2_offset, get_group_id(2), 10)) , l_462))
                    { /* block id: 219 */
                        uint8_t l_464 = 1UL;
                        ++l_464;
                    }
                    else
                    { /* block id: 221 */
                        union U1 *l_467[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        union U1 **l_468[6][4][3] = {{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}}};
                        int32_t *l_470[10][9][2] = {{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}},{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}},{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}},{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}},{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}},{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}},{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}},{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}},{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}},{{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]},{&l_189[3][0][0],&p_1214->g_3[0]}}};
                        int i, j, k;
                        p_1214->g_469[8][0] = l_467[1];
                        if (l_336[4][4])
                            break;
                        (*l_202) = l_470[0][2][1];
                    }
                    l_336[0][1] &= (safe_rshift_func_int16_t_s_u(((safe_add_func_uint8_t_u_u(((&p_73 == ((*l_475) = (void*)0)) == ((((*l_478) = &l_388[0][3][5]) == (void*)0) & ((safe_lshift_func_int8_t_s_s((p_1214->g_44 <= ((+(l_482 == (((*l_308) , (safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((p_1214->g_20[2][0] | ((((p_70 != (void*)0) ^ p_1214->g_44) <= 0x44L) , p_72)), 6)), (*l_84)))) , (void*)0))) != (*p_70))), l_335[1][0][1])) , p_73))), 0x9CL)) , l_439), p_73));
                    if (l_420.f1)
                        break;
                }
            }
            for (l_459.f2 = 0; (l_459.f2 <= 2); l_459.f2 += 1)
            { /* block id: 234 */
                int32_t l_491 = 0x3EEFCBBAL;
                for (p_1214->g_21 = 2; (p_1214->g_21 >= 0); p_1214->g_21 -= 1)
                { /* block id: 237 */
                    int64_t l_489 = 0x19E28945E321BE75L;
                    int32_t *l_490 = &l_336[4][1];
                    l_336[3][5] ^= ((*l_84) > ((*p_70) ^ (+((void*)0 == p_1214->g_487))));
                    for (l_420.f0 = 5; (l_420.f0 >= 1); l_420.f0 -= 1)
                    { /* block id: 241 */
                        l_489 = 0x4151D04EL;
                    }
                    (*l_202) = l_490;
                    l_491 = (l_334 = ((*p_1214->g_153) = (-9L)));
                }
                return p_1214->g_492;
            }
        }
    }
    if ((*p_70))
    { /* block id: 253 */
        int32_t *l_493 = &l_159[0][2][1];
        int32_t *l_494 = &l_159[1][0][0];
        int32_t *l_495 = &l_159[0][2][1];
        int32_t *l_496 = &l_159[0][5][1];
        int32_t *l_497 = (void*)0;
        int32_t *l_498 = &l_155;
        union U1 *l_516 = &p_1214->g_230;
        int32_t l_535 = 0x6D7338EDL;
        uint32_t l_538[7] = {0UL,2UL,0UL,0UL,2UL,0UL,0UL};
        int64_t **l_541[9][8][1] = {{{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]}},{{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]}},{{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]}},{{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]}},{{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]}},{{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]}},{{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]}},{{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]}},{{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]},{&p_1214->g_106[8][3][0]}}};
        int i, j, k;
        ++l_499;
        l_515 &= ((*l_498) ^= ((((safe_add_func_uint16_t_u_u((((p_69 > (safe_rshift_func_uint16_t_u_u(((safe_add_func_int16_t_s_s(p_1214->g_492.f0, 0x53B9L)) < (((safe_lshift_func_int8_t_s_u(p_1214->g_86, p_1214->g_105)) != (&p_1214->g_381 == (l_514 , (void*)0))) == 0x27L)), 5))) <= p_1214->g_4[1][4][0]) != 0x769FL), (*l_494))) > 0UL) != p_1214->g_86) > (*p_1214->g_104)));
        (*l_495) &= (l_516 != l_517);
        for (l_296 = (-22); (l_296 >= (-25)); --l_296)
        { /* block id: 260 */
            uint8_t l_522 = 0x67L;
            int32_t l_525[4];
            int8_t *l_544 = &l_296;
            int32_t l_568 = 0x13DE2546L;
            int32_t l_569 = 1L;
            int32_t l_572 = (-10L);
            int32_t l_573 = (-10L);
            uint16_t l_601[6][6];
            int32_t **l_607 = &l_495;
            int i, j;
            for (i = 0; i < 4; i++)
                l_525[i] = 3L;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 6; j++)
                    l_601[i][j] = 1UL;
            }
            for (p_1214->g_118 = 0; (p_1214->g_118 < 1); p_1214->g_118 = safe_add_func_int64_t_s_s(p_1214->g_118, 4))
            { /* block id: 263 */
                int16_t l_533 = 0x620DL;
                int32_t l_536 = 0L;
                int8_t *l_545 = &l_514;
                int32_t l_559 = 0x224BFFA6L;
                int32_t l_560[4][7][5] = {{{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L}},{{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L}},{{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L}},{{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L},{5L,1L,(-6L),0L,1L}}};
                int32_t *l_561 = &l_159[0][7][1];
                int32_t *l_562 = &l_559;
                int32_t *l_563 = (void*)0;
                int32_t *l_564 = &l_155;
                int32_t *l_565 = &l_560[2][4][1];
                int32_t *l_566 = &l_159[0][2][1];
                int32_t *l_567 = &l_155;
                int32_t *l_570 = (void*)0;
                int32_t *l_571 = &l_569;
                int32_t *l_574 = &l_560[2][5][2];
                int32_t *l_575 = &l_536;
                int32_t *l_576 = (void*)0;
                int32_t *l_577 = &l_572;
                int32_t *l_578 = &p_1214->g_11;
                int32_t *l_579[1];
                uint64_t *l_584 = &p_1214->g_118;
                int32_t **l_594 = &l_498;
                int32_t ***l_593 = &l_594;
                int32_t **l_595 = &l_577;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_579[i] = &l_559;
                if (((*l_498) = (*p_70)))
                { /* block id: 265 */
                    int32_t *l_523 = (void*)0;
                    if (l_522)
                        break;
                    (*p_1214->g_524) = l_523;
                    (*l_495) = ((*l_498) = (l_525[1] | p_1214->g_526));
                }
                else
                { /* block id: 270 */
                    int64_t l_534 = 0L;
                    int32_t l_537[10][9][2] = {{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}}};
                    uint8_t *l_554 = &l_278;
                    uint8_t **l_555 = (void*)0;
                    uint8_t **l_556 = (void*)0;
                    uint8_t **l_557 = &l_554;
                    int i, j, k;
                    for (p_1214->g_17 = 0; (p_1214->g_17 < (-11)); p_1214->g_17 = safe_sub_func_int16_t_s_s(p_1214->g_17, 1))
                    { /* block id: 273 */
                        int32_t *l_529 = &l_159[0][2][1];
                        int32_t *l_530 = &l_155;
                        int32_t *l_531 = &l_155;
                        int32_t *l_532[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_532[i] = &l_159[0][1][0];
                        ++l_538[6];
                        if ((*p_70))
                            break;
                    }
                    (*l_498) = ((&p_1214->g_104 == (p_73 , l_541[4][3][0])) || ((++(*p_1214->g_488)) || (((l_544 != l_545) != (safe_rshift_func_uint8_t_u_s(p_1214->g_44, 2))) , ((((!(safe_mul_func_int16_t_s_s((p_69 > (safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(((p_1214->g_3[0] && (((*l_557) = l_554) != &p_1214->g_377[5])) , 0x34L), p_69)), p_73))), l_522))) , 0UL) >= 6UL) & 0x56L))));
                    return p_1214->g_558;
                }
                l_580++;
                (*l_564) = ((~(l_583 == l_584)) >= (((*l_566) & p_73) & ((safe_mul_func_uint8_t_u_u(((&p_70 != ((*l_593) = ((safe_mod_func_int64_t_s_s(((safe_mul_func_int8_t_s_s((l_525[3] && p_1214->g_212[0].f0), (safe_lshift_func_uint8_t_u_u(0UL, 3)))) != ((p_72 , l_522) > (-1L))), p_73)) , (void*)0))) >= 1UL), p_69)) | 0x18EA8DF4L)));
                (*l_595) = &l_159[1][3][0];
            }
            for (p_1214->g_381 = 0; (p_1214->g_381 <= 1); p_1214->g_381 += 1)
            { /* block id: 289 */
                int32_t l_596[10] = {0x37B484E7L,1L,0x37B484E7L,0x37B484E7L,1L,0x37B484E7L,0x37B484E7L,1L,0x37B484E7L,0x37B484E7L};
                int32_t l_597 = 0x0EF48B12L;
                int32_t *l_598 = &l_155;
                int32_t *l_599 = &p_1214->g_11;
                int32_t *l_600[2][10][3] = {{{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572}},{{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572}}};
                int i, j, k;
                l_601[4][2]--;
                (*l_598) &= 0x000B7603L;
                for (p_1214->g_230.f0 = 0; (p_1214->g_230.f0 <= 1); p_1214->g_230.f0 += 1)
                { /* block id: 294 */
                    uint8_t l_604 = 0x93L;
                    l_604--;
                }
            }
            (*l_607) = &l_535;
            if ((*p_70))
                break;
        }
    }
    else
    { /* block id: 301 */
        int32_t *l_608 = &l_159[0][2][1];
        int32_t *l_609 = (void*)0;
        int32_t *l_610 = &l_159[1][4][1];
        int32_t *l_611 = &p_1214->g_11;
        int32_t *l_612 = &l_155;
        int32_t *l_613 = &l_155;
        int32_t *l_614 = &p_1214->g_11;
        int32_t *l_615 = &l_155;
        int32_t *l_616 = &p_1214->g_11;
        int32_t *l_617 = (void*)0;
        int32_t *l_618 = &p_1214->g_11;
        int32_t *l_619 = &l_155;
        int32_t *l_620 = &l_155;
        int32_t *l_621 = &p_1214->g_11;
        int32_t *l_622[3];
        uint32_t l_624[6][7] = {{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL}};
        int i, j;
        for (i = 0; i < 3; i++)
            l_622[i] = &l_159[1][8][1];
        ++l_624[1][5];
    }
    return p_1214->g_558;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_78(int32_t * p_79, int8_t  p_80, int64_t * p_81, uint64_t  p_82, int32_t  p_83, struct S3 * p_1214)
{ /* block id: 28 */
    int32_t l_92[9] = {(-7L),0x4B84AAFBL,(-7L),(-7L),0x4B84AAFBL,(-7L),(-7L),0x4B84AAFBL,(-7L)};
    int i;
    return l_92[7];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_1215;
    struct S3* p_1214 = &c_1215;
    struct S3 c_1216 = {
        {0x2B5934215E1ABE8FL,0x2B5934215E1ABE8FL,0x2B5934215E1ABE8FL,0x2B5934215E1ABE8FL}, // p_1214->g_2
        {0x678DC2A8L}, // p_1214->g_3
        {{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}}}, // p_1214->g_4
        0x2CA335C2L, // p_1214->g_5
        (-10L), // p_1214->g_6
        1L, // p_1214->g_8
        0x11B05987L, // p_1214->g_11
        0x3533B016L, // p_1214->g_17
        (-5L), // p_1214->g_18
        {{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L}}, // p_1214->g_20
        0x04A5L, // p_1214->g_21
        {{{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL},{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL},{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL},{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL},{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL}}}, // p_1214->g_22
        {4L,4L,4L,4L}, // p_1214->g_37
        0xC8A73D9AAD11CF51L, // p_1214->g_44
        0xE1L, // p_1214->g_57
        0L, // p_1214->g_86
        0x746EBA213425B464L, // p_1214->g_105
        &p_1214->g_105, // p_1214->g_104
        {{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}},{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}},{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}},{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}},{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}},{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}},{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}},{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}},{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}},{{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0},{&p_1214->g_86,(void*)0,(void*)0}}}, // p_1214->g_106
        (void*)0, // p_1214->g_107
        0UL, // p_1214->g_118
        &p_1214->g_6, // p_1214->g_153
        {&p_1214->g_153,&p_1214->g_153}, // p_1214->g_152
        &p_1214->g_153, // p_1214->g_154
        0UL, // p_1214->g_165
        {{0L},{0x57401777L},{0L},{0L},{0x57401777L},{0L},{0L},{0x57401777L}}, // p_1214->g_212
        0x49FB170E3E7A4D66L, // p_1214->g_221
        {0xF2CEL}, // p_1214->g_230
        {-10L}, // p_1214->g_290
        {0x22E9L}, // p_1214->g_309
        &p_1214->g_309, // p_1214->g_311
        {{{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311}},{{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311}},{{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311},{&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311,&p_1214->g_311}}}, // p_1214->g_310
        {{&p_1214->g_4[7][1][0]}}, // p_1214->g_331
        {{&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,&p_1214->g_331[0][0],(void*)0},{&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,&p_1214->g_331[0][0],(void*)0},{&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,&p_1214->g_331[0][0],(void*)0},{&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,&p_1214->g_331[0][0],(void*)0},{&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,&p_1214->g_331[0][0],(void*)0},{&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,&p_1214->g_331[0][0],(void*)0},{&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,&p_1214->g_331[0][0],(void*)0},{&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,&p_1214->g_331[0][0],(void*)0},{&p_1214->g_331[0][0],(void*)0,(void*)0,&p_1214->g_331[0][0],(void*)0,&p_1214->g_331[0][0],(void*)0}}, // p_1214->g_330
        0x72295453A7C282B3L, // p_1214->g_339
        {0xCDL,0xCDL,0xCDL,0xCDL,0xCDL,0xCDL}, // p_1214->g_377
        (-9L), // p_1214->g_379
        (-9L), // p_1214->g_381
        2UL, // p_1214->g_398
        {-1L}, // p_1214->g_458
        {{&p_1214->g_230},{&p_1214->g_230},{&p_1214->g_230},{&p_1214->g_230},{&p_1214->g_230},{&p_1214->g_230},{&p_1214->g_230},{&p_1214->g_230},{&p_1214->g_230},{&p_1214->g_230}}, // p_1214->g_469
        &p_1214->g_44, // p_1214->g_488
        &p_1214->g_488, // p_1214->g_487
        {0x47627C1DL}, // p_1214->g_492
        &p_1214->g_331[0][0], // p_1214->g_524
        1UL, // p_1214->g_526
        {0x45A000BCL}, // p_1214->g_558
        (void*)0, // p_1214->g_629
        &p_1214->g_331[0][0], // p_1214->g_630
        &p_1214->g_153, // p_1214->g_632
        &p_1214->g_11, // p_1214->g_645
        0x44726740B872139CL, // p_1214->g_663
        0xC2D113C5L, // p_1214->g_674
        {-1L}, // p_1214->g_718
        {0x31FD32FFL}, // p_1214->g_739
        {0L}, // p_1214->g_740
        {{0x2362A300L},{0x23B83DE2L},{0x2362A300L},{0x2362A300L},{0x23B83DE2L},{0x2362A300L},{0x2362A300L}}, // p_1214->g_741
        {{&p_1214->g_739,&p_1214->g_739,&p_1214->g_739,&p_1214->g_739,&p_1214->g_739,&p_1214->g_739,&p_1214->g_739,&p_1214->g_739}}, // p_1214->g_738
        &p_1214->g_738[0][4], // p_1214->g_737
        {{{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}}},{{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}}},{{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}}},{{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}}},{{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}}},{{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}}},{{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}}},{{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}}},{{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}},{{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L},{0x23AE59B4L},{0x23AE59B4L},{1L}}}}, // p_1214->g_754
        &p_1214->g_11, // p_1214->g_781
        &p_1214->g_309.f1, // p_1214->g_847
        &p_1214->g_847, // p_1214->g_846
        1L, // p_1214->g_857
        &p_1214->g_165, // p_1214->g_877
        &p_1214->g_877, // p_1214->g_876
        {0L}, // p_1214->g_883
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1214->g_909
        &p_1214->g_909[3], // p_1214->g_908
        {{{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}}},{{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}},{{0x7C5CL}}}}, // p_1214->g_942
        &p_1214->g_942[0][0][0], // p_1214->g_941
        &p_1214->g_941, // p_1214->g_940
        &p_1214->g_940, // p_1214->g_939
        0UL, // p_1214->g_943
        {0x8FFA4681L,0x8FFA4681L,0x8FFA4681L,0x8FFA4681L,0x8FFA4681L,0x8FFA4681L}, // p_1214->g_974
        0x64EC5AD360BD53E8L, // p_1214->g_1006
        (void*)0, // p_1214->g_1061
        (void*)0, // p_1214->g_1062
        &p_1214->g_331[0][0], // p_1214->g_1063
        &p_1214->g_230, // p_1214->g_1081
        &p_1214->g_1081, // p_1214->g_1080
        &p_1214->g_526, // p_1214->g_1083
        &p_1214->g_1083, // p_1214->g_1082
        {{&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876},{&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876},{&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876},{&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876},{&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876},{&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876},{&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876},{&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876,&p_1214->g_876}}, // p_1214->g_1121
        (void*)0, // p_1214->g_1148
        &p_1214->g_1148, // p_1214->g_1147
        {&p_1214->g_1147,&p_1214->g_1147}, // p_1214->g_1146
        (void*)0, // p_1214->g_1165
        &p_1214->g_1081, // p_1214->g_1190
        sequence_input[get_global_id(0)], // p_1214->global_0_offset
        sequence_input[get_global_id(1)], // p_1214->global_1_offset
        sequence_input[get_global_id(2)], // p_1214->global_2_offset
        sequence_input[get_local_id(0)], // p_1214->local_0_offset
        sequence_input[get_local_id(1)], // p_1214->local_1_offset
        sequence_input[get_local_id(2)], // p_1214->local_2_offset
        sequence_input[get_group_id(0)], // p_1214->group_0_offset
        sequence_input[get_group_id(1)], // p_1214->group_1_offset
        sequence_input[get_group_id(2)], // p_1214->group_2_offset
    };
    c_1215 = c_1216;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1214);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1214->g_2[i], "p_1214->g_2[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1214->g_3[i], "p_1214->g_3[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1214->g_4[i][j][k], "p_1214->g_4[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1214->g_5, "p_1214->g_5", print_hash_value);
    transparent_crc(p_1214->g_6, "p_1214->g_6", print_hash_value);
    transparent_crc(p_1214->g_8, "p_1214->g_8", print_hash_value);
    transparent_crc(p_1214->g_11, "p_1214->g_11", print_hash_value);
    transparent_crc(p_1214->g_17, "p_1214->g_17", print_hash_value);
    transparent_crc(p_1214->g_18, "p_1214->g_18", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1214->g_20[i][j], "p_1214->g_20[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1214->g_21, "p_1214->g_21", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1214->g_22[i][j][k], "p_1214->g_22[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1214->g_37[i], "p_1214->g_37[i]", print_hash_value);

    }
    transparent_crc(p_1214->g_44, "p_1214->g_44", print_hash_value);
    transparent_crc(p_1214->g_57, "p_1214->g_57", print_hash_value);
    transparent_crc(p_1214->g_86, "p_1214->g_86", print_hash_value);
    transparent_crc(p_1214->g_105, "p_1214->g_105", print_hash_value);
    transparent_crc(p_1214->g_118, "p_1214->g_118", print_hash_value);
    transparent_crc(p_1214->g_165, "p_1214->g_165", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1214->g_212[i].f0, "p_1214->g_212[i].f0", print_hash_value);

    }
    transparent_crc(p_1214->g_221, "p_1214->g_221", print_hash_value);
    transparent_crc(p_1214->g_230.f0, "p_1214->g_230.f0", print_hash_value);
    transparent_crc(p_1214->g_290.f0, "p_1214->g_290.f0", print_hash_value);
    transparent_crc(p_1214->g_309.f0, "p_1214->g_309.f0", print_hash_value);
    transparent_crc(p_1214->g_339, "p_1214->g_339", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1214->g_377[i], "p_1214->g_377[i]", print_hash_value);

    }
    transparent_crc(p_1214->g_379, "p_1214->g_379", print_hash_value);
    transparent_crc(p_1214->g_381, "p_1214->g_381", print_hash_value);
    transparent_crc(p_1214->g_398, "p_1214->g_398", print_hash_value);
    transparent_crc(p_1214->g_458.f0, "p_1214->g_458.f0", print_hash_value);
    transparent_crc(p_1214->g_492.f0, "p_1214->g_492.f0", print_hash_value);
    transparent_crc(p_1214->g_526, "p_1214->g_526", print_hash_value);
    transparent_crc(p_1214->g_558.f0, "p_1214->g_558.f0", print_hash_value);
    transparent_crc(p_1214->g_663, "p_1214->g_663", print_hash_value);
    transparent_crc(p_1214->g_674, "p_1214->g_674", print_hash_value);
    transparent_crc(p_1214->g_718.f0, "p_1214->g_718.f0", print_hash_value);
    transparent_crc(p_1214->g_739.f0, "p_1214->g_739.f0", print_hash_value);
    transparent_crc(p_1214->g_740.f0, "p_1214->g_740.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1214->g_741[i].f0, "p_1214->g_741[i].f0", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1214->g_754[i][j][k].f0, "p_1214->g_754[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1214->g_857, "p_1214->g_857", print_hash_value);
    transparent_crc(p_1214->g_883.f0, "p_1214->g_883.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1214->g_942[i][j][k].f0, "p_1214->g_942[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1214->g_943, "p_1214->g_943", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1214->g_974[i], "p_1214->g_974[i]", print_hash_value);

    }
    transparent_crc(p_1214->g_1006, "p_1214->g_1006", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
