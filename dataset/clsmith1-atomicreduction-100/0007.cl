// ---atomic_reductions ---fake_divergence -g 56,5,9 -l 4,1,9
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
    union U0 g_742;
    union U0 g_743;
    union U0 g_744[7];
    union U0 *g_741[1][8];
    union U0 **g_740;
    int32_t **g_768;
    int32_t ***g_767;
    union U0 g_779;
    uint16_t g_786;
    volatile uint8_t g_789[2];
    volatile uint8_t *g_788[10][6];
    volatile uint8_t ** volatile g_787;
    uint32_t g_809;
    uint8_t *g_846;
    uint8_t ** volatile g_845;
    uint8_t ** volatile *g_844;
    int64_t ** volatile *g_856;
    uint16_t *g_906;
    uint16_t **g_905;
    union U0 g_910;
    volatile int32_t **g_943;
    union U2 ** volatile g_950;
    int32_t ** volatile g_959;
    uint32_t g_972;
    volatile union U0 g_1035;
    volatile uint32_t g_1069;
    int32_t ** volatile g_1095;
    volatile union U1 g_1104;
    volatile union U1 *g_1103;
    volatile union U1 * volatile * volatile g_1102;
    volatile union U1 * volatile * volatile * volatile g_1101;
    int32_t *g_1117[5][10];
    int32_t **g_1116[3][7];
    union U0 g_1141;
    int32_t g_1143[7][7][4];
    int16_t g_1176;
    int64_t g_1179[4][4][7];
    int16_t g_1180;
    int32_t g_1181;
    uint16_t g_1182;
    int32_t ** volatile g_1185;
    int32_t * volatile g_1201;
    volatile union U0 g_1221;
    int8_t *g_1238;
    uint64_t g_1311[1][1][8];
    int32_t ** volatile g_1350[6];
    int16_t g_1403[4][9][5];
    uint64_t g_1430;
    uint64_t g_1431;
    volatile union U2 g_1458;
    volatile union U2 *g_1457;
    volatile union U2 **g_1456;
    volatile union U2 ***g_1455;
    uint64_t *g_1483;
    uint64_t **g_1482;
    volatile int64_t g_1509;
    int64_t g_1516;
    volatile uint16_t g_1636;
    int8_t *** volatile g_1657;
    int8_t **g_1659;
    int8_t *** volatile g_1658[1];
    int32_t ** volatile g_1820;
    uint32_t *g_1823;
    uint32_t *g_1838;
    int32_t * volatile g_1897;
    uint16_t g_1903;
    int32_t ** volatile g_1920;
    uint8_t g_1937;
    uint8_t **g_1992;
    uint8_t ***g_1991[4][2];
    int32_t g_2021;
    int64_t g_2029;
    volatile uint32_t g_2030[5][4][2];
    int32_t ** volatile g_2048;
    union U0 g_2074;
    union U2 ** volatile g_2130;
    volatile union U1 ** volatile g_2157[8];
    volatile union U1 ** volatile *g_2156;
    int32_t * volatile g_2195;
    volatile uint32_t ** volatile g_2205;
    int32_t g_2213;
    volatile int16_t g_2253;
    volatile union U1 g_2335;
    int32_t ** volatile g_2365;
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
int16_t  func_1(struct S3 * p_2366);
int32_t  func_25(int8_t * p_26, int32_t  p_27, struct S3 * p_2366);
int8_t * func_28(uint32_t  p_29, struct S3 * p_2366);
uint32_t  func_30(int32_t  p_31, uint64_t  p_32, struct S3 * p_2366);
int64_t  func_38(uint32_t  p_39, int32_t * p_40, int32_t  p_41, union U2  p_42, struct S3 * p_2366);
int32_t * func_47(int8_t * p_48, int64_t  p_49, uint8_t  p_50, int32_t  p_51, struct S3 * p_2366);
uint64_t  func_62(uint8_t * p_63, int8_t  p_64, struct S3 * p_2366);
uint8_t * func_65(int8_t * p_66, union U1  p_67, struct S3 * p_2366);
union U0  func_68(int32_t  p_69, int32_t * p_70, uint32_t  p_71, int32_t  p_72, uint16_t  p_73, struct S3 * p_2366);
uint32_t  func_78(int32_t * p_79, int8_t  p_80, int64_t * p_81, uint64_t  p_82, int32_t  p_83, struct S3 * p_2366);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2366->g_3 p_2366->g_2 p_2366->g_22 p_2366->g_230.f1 p_2366->g_789 p_2366->g_905 p_2366->g_906 p_2366->g_786 p_2366->g_1238 p_2366->g_487 p_2366->g_488 p_2366->g_44 p_2366->g_458.f0 p_2366->g_2021 p_2366->g_1838 p_2366->g_2195 p_2366->g_2205 p_2366->g_1516 p_2366->g_1483 p_2366->g_1430 p_2366->g_846 p_2366->g_2213 p_2366->g_524 p_2366->g_331 p_2366->g_4 p_2366->g_153 p_2366->g_6 p_2366->g_856 p_2366->g_844 p_2366->g_845 p_2366->g_377 p_2366->g_104 p_2366->g_105 p_2366->g_2253 p_2366->g_1482 p_2366->g_1403 p_2366->g_1509 p_2366->g_309.f0 p_2366->g_1102 p_2366->g_1103 p_2366->g_1104 p_2366->g_1823 p_2366->g_674 p_2366->g_381 p_2366->g_1903 p_2366->g_1920 p_2366->g_57 p_2366->g_630 p_2366->g_2048 p_2366->g_959 p_2366->g_8 p_2366->g_2365 p_2366->g_21 p_2366->g_379
 * writes: p_2366->g_3 p_2366->g_4 p_2366->g_6 p_2366->g_5 p_2366->g_8 p_2366->g_22 p_2366->g_230.f1 p_2366->g_786 p_2366->g_1238 p_2366->g_674 p_2366->g_11 p_2366->g_1430 p_2366->g_377 p_2366->g_2021 p_2366->g_1937 p_2366->g_21 p_2366->g_1431 p_2366->g_105 p_2366->g_905 p_2366->g_331 p_2366->g_1516 p_2366->g_2029
 */
int16_t  func_1(struct S3 * p_2366)
{ /* block id: 4 */
    uint8_t l_956[5][8] = {{0x86L,0xA8L,0xA8L,0x86L,0x86L,0xA8L,0xA8L,0x86L},{0x86L,0xA8L,0xA8L,0x86L,0x86L,0xA8L,0xA8L,0x86L},{0x86L,0xA8L,0xA8L,0x86L,0x86L,0xA8L,0xA8L,0x86L},{0x86L,0xA8L,0xA8L,0x86L,0x86L,0xA8L,0xA8L,0x86L},{0x86L,0xA8L,0xA8L,0x86L,0x86L,0xA8L,0xA8L,0x86L}};
    int8_t **l_2183 = &p_2366->g_1238;
    uint16_t **l_2188 = &p_2366->g_906;
    union U1 *l_2211 = &p_2366->g_230;
    union U2 l_2226[3] = {{9L},{9L},{9L}};
    int32_t l_2227 = 7L;
    int32_t l_2232 = (-10L);
    int32_t l_2267 = 1L;
    int32_t l_2268[1];
    uint32_t l_2316 = 4294967291UL;
    uint8_t l_2317[9] = {0xF6L,0xF6L,0xF6L,0xF6L,0xF6L,0xF6L,0xF6L,0xF6L,0xF6L};
    uint32_t l_2332[10][7] = {{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL},{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL},{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL},{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL},{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL},{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL},{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL},{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL},{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL},{0xAFD5020EL,0UL,0UL,0x0149283EL,0x6DDA1FE4L,0x0149283EL,0UL}};
    int i, j;
    for (i = 0; i < 1; i++)
        l_2268[i] = (-1L);
    for (p_2366->g_3[0] = 3; (p_2366->g_3[0] >= 0); p_2366->g_3[0] -= 1)
    { /* block id: 7 */
        int8_t *l_7[5][2][3] = {{{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8}},{{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8}},{{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8}},{{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8}},{{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8}}};
        int32_t l_54 = 1L;
        int32_t ****l_2200 = (void*)0;
        int16_t l_2260 = 0L;
        int32_t l_2264 = 1L;
        int32_t l_2266 = 0x0A4869FFL;
        uint32_t l_2269 = 4294967295UL;
        uint32_t *l_2315 = &p_2366->g_526;
        uint32_t **l_2314 = &l_2315;
        uint8_t l_2318 = 0UL;
        uint32_t l_2350[8][4] = {{0x90461228L,0x90461228L,0x804DAEF8L,0x82FEBB66L},{0x90461228L,0x90461228L,0x804DAEF8L,0x82FEBB66L},{0x90461228L,0x90461228L,0x804DAEF8L,0x82FEBB66L},{0x90461228L,0x90461228L,0x804DAEF8L,0x82FEBB66L},{0x90461228L,0x90461228L,0x804DAEF8L,0x82FEBB66L},{0x90461228L,0x90461228L,0x804DAEF8L,0x82FEBB66L},{0x90461228L,0x90461228L,0x804DAEF8L,0x82FEBB66L},{0x90461228L,0x90461228L,0x804DAEF8L,0x82FEBB66L}};
        int i, j, k;
        for (p_2366->g_4[1][4][0] = 3; (p_2366->g_4[1][4][0] >= 0); p_2366->g_4[1][4][0] -= 1)
        { /* block id: 10 */
            int16_t l_12 = 0L;
            int32_t l_16 = 0x5070FEEAL;
            int32_t l_19[6] = {0L,0x1915E308L,0L,0L,0x1915E308L,0L};
            uint16_t **l_2319 = &p_2366->g_906;
            int8_t l_2321 = (-1L);
            uint32_t l_2345[4];
            uint32_t *l_2354 = &l_2332[4][2];
            int16_t l_2363 = 0x6FEEL;
            int32_t *l_2364 = &l_2268[0];
            int i;
            for (i = 0; i < 4; i++)
                l_2345[i] = 4294967295UL;
            for (p_2366->g_6 = 0; (p_2366->g_6 <= 3); p_2366->g_6 += 1)
            { /* block id: 13 */
                int8_t *l_9[2];
                int32_t l_33 = 0x0EEBEB99L;
                union U2 l_960 = {0L};
                uint8_t **l_2210 = &p_2366->g_846;
                union U1 *l_2212 = (void*)0;
                int32_t *l_2228 = &l_33;
                int16_t *l_2229 = &p_2366->g_21;
                uint8_t l_2252 = 1UL;
                int64_t l_2254 = 0x193719CF72DB3476L;
                int32_t l_2259 = 0L;
                int32_t l_2265[4] = {0x5330289DL,0x5330289DL,0x5330289DL,0x5330289DL};
                int i;
                for (i = 0; i < 2; i++)
                    l_9[i] = &p_2366->g_8;
                p_2366->g_5 = (l_7[0][1][0] == l_9[0]);
                for (p_2366->g_8 = 0; (p_2366->g_8 <= 1); p_2366->g_8 += 1)
                { /* block id: 17 */
                    int32_t *l_10 = &p_2366->g_11;
                    int32_t *l_13 = &p_2366->g_11;
                    int32_t *l_14 = &p_2366->g_11;
                    int32_t *l_15[2][2];
                    int64_t *l_36 = &p_2366->g_37[1];
                    uint64_t *l_43 = &p_2366->g_44;
                    uint8_t *l_55 = (void*)0;
                    uint8_t *l_56 = &p_2366->g_57;
                    union U1 l_627[4][1] = {{{65535UL}},{{65535UL}},{{65535UL}},{{65535UL}}};
                    uint64_t l_957 = 0xA694EFEFB57F6C2BL;
                    int64_t *l_1627 = (void*)0;
                    int64_t *l_1628 = &p_2366->g_1179[1][2][6];
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_15[i][j] = &p_2366->g_11;
                    }
                    if (p_2366->g_2[p_2366->g_3[0]])
                        break;
                    --p_2366->g_22[0][0][3];
                }
                for (p_2366->g_230.f1 = 0; (p_2366->g_230.f1 <= 1); p_2366->g_230.f1 += 1)
                { /* block id: 1086 */
                    int32_t *l_2182 = &l_19[1];
                    int32_t *l_2214 = &p_2366->g_2021;
                    int i;
                    (*l_2182) ^= (p_2366->g_2[p_2366->g_3[0]] & FAKE_DIVERGE(p_2366->group_1_offset, get_group_id(1), 10));
                    (*p_2366->g_2195) = (l_2183 == ((p_2366->g_789[p_2366->g_230.f1] && ((*p_2366->g_1838) = (safe_rshift_func_uint16_t_u_u((safe_div_func_int32_t_s_s(((*l_2182) = (((l_2188 == (void*)0) | ((**p_2366->g_905) ^= (+65530UL))) || ((((((((*l_2183) = (*l_2183)) == l_7[0][1][0]) & (safe_add_func_uint8_t_u_u((((safe_mod_func_uint64_t_u_u((FAKE_DIVERGE(p_2366->global_1_offset, get_global_id(1), 10) < ((safe_add_func_uint64_t_u_u(0x1A631D2784A4188CL, 6L)) ^ (**p_2366->g_487))), GROUP_DIVERGE(0, 1))) , (**p_2366->g_905)) & (**p_2366->g_905)), l_19[1]))) ^ 0L) ^ (*p_2366->g_488)) > 0x6CA1L) , p_2366->g_458.f0))), 0x8150A40FL)), p_2366->g_2021)))) , &l_9[1]));
                    (*l_2214) ^= ((*l_2182) = ((safe_lshift_func_int8_t_s_u((l_960.f0 || ((((safe_add_func_int32_t_s_s((l_54 >= (l_2200 != &p_2366->g_767)), (((safe_rshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((void*)0 != p_2366->g_2205), p_2366->g_1516)), ((*p_2366->g_846) = (l_33 , ((safe_lshift_func_int16_t_s_u(((((--(*p_2366->g_1483)) , ((l_2210 == (void*)0) , l_2211)) != l_2212) && 0xCEL), 12)) ^ 0x763CC25B84161E42L))))) >= p_2366->g_2213) ^ 0x0C42AC63L))) == 0x7158A5C2L) , 6UL) <= l_12)), 5)) <= l_16));
                    for (p_2366->g_1937 = 0; (p_2366->g_1937 <= 3); p_2366->g_1937 += 1)
                    { /* block id: 1099 */
                        l_16 ^= (**p_2366->g_524);
                        (*l_2182) &= 7L;
                        if ((*p_2366->g_153))
                            break;
                    }
                }
                if ((((safe_lshift_func_uint16_t_u_u(0x4B1FL, 1)) | p_2366->g_2[p_2366->g_3[0]]) | (safe_rshift_func_int8_t_s_s(0x0FL, (l_2232 = ((safe_lshift_func_uint8_t_u_u(((((safe_div_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_s(((*l_2229) = (safe_unary_minus_func_int32_t_s(((*l_2228) = (l_2227 ^= ((l_2226[1] , &p_2366->g_1483) != (void*)0)))))), 12)) && 3L), (safe_div_func_int8_t_s_s((((void*)0 != p_2366->g_856) <= l_16), l_956[2][4])))) != 0xDA0543076A0DB767L) , 1L) , 4UL), (***p_2366->g_844))) ^ 0x1877L))))))
                { /* block id: 1109 */
                    uint16_t l_2241 = 0x4110L;
                    int32_t l_2255 = 0x32161CE6L;
                    (*l_2228) = (((*p_2366->g_104) <= l_19[4]) != ((l_2255 |= (safe_mod_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_s(((safe_lshift_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((~l_956[3][5]), GROUP_DIVERGE(1, 1))), l_2241)) > ((safe_div_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((l_2241 >= ((safe_mod_func_int8_t_s_s(((((((l_2241 != (((safe_add_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(5UL, l_956[1][0])), 0UL)) | l_54) & 0xCBB4L)) , (-10L)) , (-1L)) ^ 0x1431AA63L) >= (*p_2366->g_488)) | (*p_2366->g_104)), FAKE_DIVERGE(p_2366->group_0_offset, get_group_id(0), 10))) > l_2252)), l_2241)) & l_956[1][0]) > p_2366->g_2253), l_2254)) && (*l_2228))), l_16)) || (*p_2366->g_488)), 0x335CE69AL))) ^ l_2241));
                }
                else
                { /* block id: 1112 */
                    int32_t *l_2256 = &l_19[1];
                    int32_t *l_2257 = &p_2366->g_11;
                    int32_t *l_2258[1];
                    uint16_t l_2261[3][10] = {{65529UL,0UL,1UL,0UL,65529UL,65529UL,0UL,1UL,0UL,65529UL},{65529UL,0UL,1UL,0UL,65529UL,65529UL,0UL,1UL,0UL,65529UL},{65529UL,0UL,1UL,0UL,65529UL,65529UL,0UL,1UL,0UL,65529UL}};
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_2258[i] = &l_54;
                    l_2261[2][8]++;
                    --l_2269;
                }
            }
            for (p_2366->g_1431 = 0; (p_2366->g_1431 <= 3); p_2366->g_1431 += 1)
            { /* block id: 1119 */
                int32_t l_2288 = 0x0CE2040EL;
                uint16_t ***l_2320[3];
                int32_t *l_2322 = &p_2366->g_2213;
                int32_t l_2330 = 0x7F37576DL;
                int8_t *l_2336[9][6] = {{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8},{&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8,&p_2366->g_8}};
                int i, j;
                for (i = 0; i < 3; i++)
                    l_2320[i] = (void*)0;
                (*p_2366->g_153) = (safe_sub_func_uint32_t_u_u(0UL, (safe_mod_func_uint16_t_u_u((safe_div_func_uint8_t_u_u(((safe_add_func_int64_t_s_s((safe_div_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s((((&p_2366->g_1838 != ((**p_2366->g_1482) , &p_2366->g_1823)) & (safe_rshift_func_uint8_t_u_u((0x4933AEB0EC205DFDL ^ (safe_lshift_func_int16_t_s_u((((**p_2366->g_487) || ((l_2288 != (safe_add_func_int16_t_s_s(p_2366->g_1403[0][2][4], p_2366->g_1509))) || 0x19L)) , 0x571FL), (*p_2366->g_906)))), l_2288))) ^ (*p_2366->g_846)), l_2288)) > l_2288), 0x286F650F65B8B17AL)), l_19[1])) == (*p_2366->g_104)), 0x21L)), p_2366->g_309.f0))));
                (*p_2366->g_1920) = (((safe_add_func_uint16_t_u_u(l_2288, ((**p_2366->g_1102) , (safe_add_func_int16_t_s_s((l_2288 ^ (l_2188 != (p_2366->g_905 = (((((void*)0 == &p_2366->g_844) > l_2288) | (safe_lshift_func_uint16_t_u_s(((l_2318 |= (safe_rshift_func_uint16_t_u_u((((((safe_rshift_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s(((((((safe_add_func_int64_t_s_s(((*p_2366->g_104) = (safe_lshift_func_uint16_t_u_u(((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(((*p_2366->g_846) = ((safe_mod_func_int32_t_s_s(((((safe_div_func_uint64_t_u_u(((**p_2366->g_487) != ((void*)0 == l_2314)), (*p_2366->g_488))) , l_19[4]) < (*p_2366->g_906)) ^ 1L), l_2316)) != (*p_2366->g_104))), l_2317[2])), (*p_2366->g_1823))) & l_2288), 15))), 0x57A4AA792C693FE5L)) == (*p_2366->g_488)) , 0x06C6L) == (*p_2366->g_906)) ^ (*p_2366->g_1838)) , l_2317[7]))), l_2232)) || (-5L)) | l_2317[5]) , 0x28L) < l_2288), (**p_2366->g_905)))) == l_2288), p_2366->g_381))) , l_2319)))), p_2366->g_1903))))) || l_2321) , l_2322);
                for (p_2366->g_1516 = 0; (p_2366->g_1516 <= 3); p_2366->g_1516 += 1)
                { /* block id: 1128 */
                    int32_t l_2331 = (-5L);
                    int32_t *l_2351 = &l_2330;
                    for (l_2227 = 0; (l_2227 <= 3); l_2227 += 1)
                    { /* block id: 1131 */
                        int32_t l_2323 = 1L;
                        int32_t *l_2324 = (void*)0;
                        int32_t *l_2325 = &p_2366->g_1143[6][3][1];
                        int32_t *l_2326 = &l_19[1];
                        int32_t *l_2327 = &l_19[4];
                        int32_t *l_2328 = &l_2264;
                        int32_t *l_2329[8][7] = {{&p_2366->g_1143[4][0][3],&p_2366->g_4[6][4][0],&p_2366->g_1143[2][5][3],&p_2366->g_2213,&p_2366->g_4[6][4][0],&p_2366->g_2213,&p_2366->g_1143[2][5][3]},{&p_2366->g_1143[4][0][3],&p_2366->g_4[6][4][0],&p_2366->g_1143[2][5][3],&p_2366->g_2213,&p_2366->g_4[6][4][0],&p_2366->g_2213,&p_2366->g_1143[2][5][3]},{&p_2366->g_1143[4][0][3],&p_2366->g_4[6][4][0],&p_2366->g_1143[2][5][3],&p_2366->g_2213,&p_2366->g_4[6][4][0],&p_2366->g_2213,&p_2366->g_1143[2][5][3]},{&p_2366->g_1143[4][0][3],&p_2366->g_4[6][4][0],&p_2366->g_1143[2][5][3],&p_2366->g_2213,&p_2366->g_4[6][4][0],&p_2366->g_2213,&p_2366->g_1143[2][5][3]},{&p_2366->g_1143[4][0][3],&p_2366->g_4[6][4][0],&p_2366->g_1143[2][5][3],&p_2366->g_2213,&p_2366->g_4[6][4][0],&p_2366->g_2213,&p_2366->g_1143[2][5][3]},{&p_2366->g_1143[4][0][3],&p_2366->g_4[6][4][0],&p_2366->g_1143[2][5][3],&p_2366->g_2213,&p_2366->g_4[6][4][0],&p_2366->g_2213,&p_2366->g_1143[2][5][3]},{&p_2366->g_1143[4][0][3],&p_2366->g_4[6][4][0],&p_2366->g_1143[2][5][3],&p_2366->g_2213,&p_2366->g_4[6][4][0],&p_2366->g_2213,&p_2366->g_1143[2][5][3]},{&p_2366->g_1143[4][0][3],&p_2366->g_4[6][4][0],&p_2366->g_1143[2][5][3],&p_2366->g_2213,&p_2366->g_4[6][4][0],&p_2366->g_2213,&p_2366->g_1143[2][5][3]}};
                        int i, j;
                        --l_2332[2][5];
                    }
                }
                for (p_2366->g_2029 = 0; (p_2366->g_2029 <= 3); p_2366->g_2029 += 1)
                { /* block id: 1141 */
                    int16_t l_2355[10] = {5L,(-1L),(-1L),(-1L),5L,5L,(-1L),(-1L),(-1L),5L};
                    uint64_t ***l_2360 = &p_2366->g_1482;
                    uint64_t ****l_2361 = (void*)0;
                    uint64_t ****l_2362 = &l_2360;
                    int i;
                    l_2364 = (l_2322 = ((safe_add_func_uint16_t_u_u(((((((l_2227 , (((*l_2314) = l_2354) == (((l_2355[5] || (safe_lshift_func_int16_t_s_u(((*p_2366->g_104) , l_2268[0]), l_956[1][0]))) && 1L) , ((safe_mul_func_uint16_t_u_u((((*l_2362) = l_2360) != (void*)0), p_2366->g_57)) , (void*)0)))) == 0x49C9483D831EC180L) != (*l_2322)) < l_2355[5]) <= l_2321) , l_2363), 0x10F6L)) , (*p_2366->g_630)));
                    if ((**p_2366->g_2048))
                        break;
                }
            }
            (**p_2366->g_959) = 0x78FB0E94L;
            for (p_2366->g_8 = 3; (p_2366->g_8 >= 0); p_2366->g_8 -= 1)
            { /* block id: 1152 */
                (*p_2366->g_2365) = (*p_2366->g_630);
                return p_2366->g_21;
            }
        }
    }
    return p_2366->g_379;
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_906 p_2366->g_786 p_2366->g_2021 p_2366->g_1143
 * writes: p_2366->g_2021 p_2366->g_1143
 */
int32_t  func_25(int8_t * p_26, int32_t  p_27, struct S3 * p_2366)
{ /* block id: 1076 */
    uint32_t l_2171 = 0xEB77BD81L;
    uint64_t **l_2174 = (void*)0;
    uint64_t ***l_2175 = &l_2174;
    uint8_t ***l_2176 = &p_2366->g_1992;
    int64_t l_2177[5][9] = {{0x6537B93FC86E067EL,0x6537B93FC86E067EL,(-5L),0x51C904A2A2AF9B53L,0x6A5EBC05423A454DL,0x51C904A2A2AF9B53L,(-5L),0x6537B93FC86E067EL,0x6537B93FC86E067EL},{0x6537B93FC86E067EL,0x6537B93FC86E067EL,(-5L),0x51C904A2A2AF9B53L,0x6A5EBC05423A454DL,0x51C904A2A2AF9B53L,(-5L),0x6537B93FC86E067EL,0x6537B93FC86E067EL},{0x6537B93FC86E067EL,0x6537B93FC86E067EL,(-5L),0x51C904A2A2AF9B53L,0x6A5EBC05423A454DL,0x51C904A2A2AF9B53L,(-5L),0x6537B93FC86E067EL,0x6537B93FC86E067EL},{0x6537B93FC86E067EL,0x6537B93FC86E067EL,(-5L),0x51C904A2A2AF9B53L,0x6A5EBC05423A454DL,0x51C904A2A2AF9B53L,(-5L),0x6537B93FC86E067EL,0x6537B93FC86E067EL},{0x6537B93FC86E067EL,0x6537B93FC86E067EL,(-5L),0x51C904A2A2AF9B53L,0x6A5EBC05423A454DL,0x51C904A2A2AF9B53L,(-5L),0x6537B93FC86E067EL,0x6537B93FC86E067EL}};
    int32_t *l_2178 = &p_2366->g_2021;
    int32_t *l_2179 = &p_2366->g_1143[3][6][1];
    int32_t **l_2180[2];
    int32_t *l_2181 = &p_2366->g_1143[3][6][1];
    int i, j;
    for (i = 0; i < 2; i++)
        l_2180[i] = &p_2366->g_331[0][0];
    (*l_2179) ^= (safe_add_func_uint64_t_u_u(((*p_2366->g_906) || ((safe_mul_func_int8_t_s_s((l_2171 , ((((safe_mul_func_uint16_t_u_u(((((*l_2175) = l_2174) == &p_2366->g_1483) ^ p_27), l_2171)) != ((*l_2178) &= ((((((p_27 >= ((void*)0 == l_2176)) | p_27) || p_27) < p_27) | l_2177[1][3]) >= 0x2735L))) || (-5L)) == p_27)), 0x2AL)) , 0x693BL)), 1L));
    l_2181 = (void*)0;
    return (*l_2179);
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_905 p_2366->g_906 p_2366->g_786 p_2366->g_488 p_2366->g_1431 p_2366->g_44 p_2366->g_846 p_2366->g_377 p_2366->g_11 p_2366->g_105 p_2366->g_1182 p_2366->g_845 p_2366->g_1403 p_2366->g_17 p_2366->g_1659 p_2366->g_1238 p_2366->g_959 p_2366->g_524 p_2366->g_1516 p_2366->g_2030 p_2366->g_2048 p_2366->g_1897 p_2366->g_381 p_2366->g_645 p_2366->g_844 p_2366->g_1143 p_2366->g_2074 p_2366->g_165 p_2366->g_104 p_2366->g_86 p_2366->g_809 p_2366->g_1179 p_2366->g_2130 p_2366->g_309 p_2366->g_37 p_2366->g_2156 p_2366->g_1201 p_2366->g_856 p_2366->g_663 p_2366->g_1104.f0
 * writes: p_2366->g_1431 p_2366->g_44 p_2366->g_11 p_2366->g_105 p_2366->g_1903 p_2366->g_2 p_2366->g_1403 p_2366->g_153 p_2366->g_331 p_2366->g_1991 p_2366->g_2030 p_2366->g_1143 p_2366->g_18 p_2366->g_786 p_2366->g_165 p_2366->g_846 p_2366->g_311
 */
int8_t * func_28(uint32_t  p_29, struct S3 * p_2366)
{ /* block id: 975 */
    int16_t *l_1940 = &p_2366->g_1403[3][0][3];
    int16_t *l_1942[1];
    int16_t **l_1941 = &l_1942[0];
    uint64_t *l_1949[6] = {&p_2366->g_1311[0][0][4],&p_2366->g_1311[0][0][4],&p_2366->g_1311[0][0][4],&p_2366->g_1311[0][0][4],&p_2366->g_1311[0][0][4],&p_2366->g_1311[0][0][4]};
    int32_t l_1950 = 0x60CB97C0L;
    int32_t l_1957 = 0x7A0A7086L;
    int32_t *l_1958 = &p_2366->g_11;
    int32_t ***l_1961 = &p_2366->g_1116[1][2];
    int32_t l_1998[9][2][9] = {{{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)},{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)}},{{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)},{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)}},{{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)},{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)}},{{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)},{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)}},{{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)},{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)}},{{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)},{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)}},{{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)},{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)}},{{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)},{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)}},{{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)},{0x2F35A271L,0x49C4B2C9L,(-9L),(-9L),0x49C4B2C9L,0x2F35A271L,(-3L),(-1L),(-1L)}}};
    uint64_t l_2023 = 0x93D7C05EB8092810L;
    int64_t l_2044 = 1L;
    uint16_t ***l_2086 = &p_2366->g_905;
    int8_t *l_2099[9];
    union U2 *l_2129 = &p_2366->g_309;
    union U1 **l_2152 = &p_2366->g_469[0][0];
    union U1 ***l_2151 = &l_2152;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1942[i] = (void*)0;
    for (i = 0; i < 9; i++)
        l_2099[i] = (void*)0;
    (*l_1958) &= ((safe_lshift_func_uint8_t_u_s(p_29, (l_1940 != ((*l_1941) = &p_2366->g_1403[3][1][3])))) == ((safe_add_func_int16_t_s_s(((!(**p_2366->g_905)) >= (safe_sub_func_uint8_t_u_u(0xC6L, 0xCEL))), (safe_add_func_uint32_t_u_u(((l_1950 ^= ((*p_2366->g_488) &= 0x0B3385642B86B6EFL)) ^ FAKE_DIVERGE(p_2366->local_1_offset, get_local_id(1), 10)), ((((((+(safe_div_func_uint16_t_u_u(65526UL, (safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s((((*p_2366->g_846) <= (*p_2366->g_846)) >= 0xBBE26AF1L), l_1957)), 6))))) || p_29) != (**p_2366->g_905)) || l_1957) && 0x5432L) | 0x37D2F2FDL))))) , p_29));
    (*l_1958) &= (safe_lshift_func_int16_t_s_u(((void*)0 != l_1961), 3));
    for (p_2366->g_105 = 28; (p_2366->g_105 <= (-14)); p_2366->g_105 = safe_sub_func_uint16_t_u_u(p_2366->g_105, 3))
    { /* block id: 983 */
        int32_t l_1966 = (-1L);
        int32_t l_2001 = (-9L);
        int32_t l_2002 = 0L;
        int32_t l_2004 = 0x38762AC0L;
        int32_t l_2006[2][3][3] = {{{0x54C5443CL,0x54C5443CL,0x54C5443CL},{0x54C5443CL,0x54C5443CL,0x54C5443CL},{0x54C5443CL,0x54C5443CL,0x54C5443CL}},{{0x54C5443CL,0x54C5443CL,0x54C5443CL},{0x54C5443CL,0x54C5443CL,0x54C5443CL},{0x54C5443CL,0x54C5443CL,0x54C5443CL}}};
        int64_t **l_2042 = (void*)0;
        union U1 l_2100[9][10] = {{{3UL},{0UL},{0x6D15L},{0xF862L},{0x7EA2L},{0UL},{65530UL},{0UL},{0x899BL},{0x09A9L}},{{3UL},{0UL},{0x6D15L},{0xF862L},{0x7EA2L},{0UL},{65530UL},{0UL},{0x899BL},{0x09A9L}},{{3UL},{0UL},{0x6D15L},{0xF862L},{0x7EA2L},{0UL},{65530UL},{0UL},{0x899BL},{0x09A9L}},{{3UL},{0UL},{0x6D15L},{0xF862L},{0x7EA2L},{0UL},{65530UL},{0UL},{0x899BL},{0x09A9L}},{{3UL},{0UL},{0x6D15L},{0xF862L},{0x7EA2L},{0UL},{65530UL},{0UL},{0x899BL},{0x09A9L}},{{3UL},{0UL},{0x6D15L},{0xF862L},{0x7EA2L},{0UL},{65530UL},{0UL},{0x899BL},{0x09A9L}},{{3UL},{0UL},{0x6D15L},{0xF862L},{0x7EA2L},{0UL},{65530UL},{0UL},{0x899BL},{0x09A9L}},{{3UL},{0UL},{0x6D15L},{0xF862L},{0x7EA2L},{0UL},{65530UL},{0UL},{0x899BL},{0x09A9L}},{{3UL},{0UL},{0x6D15L},{0xF862L},{0x7EA2L},{0UL},{65530UL},{0UL},{0x899BL},{0x09A9L}}};
        uint8_t *l_2119 = &p_2366->g_377[1];
        int32_t *l_2123 = &p_2366->g_381;
        union U2 l_2155 = {0x3369L};
        int i, j, k;
        for (p_2366->g_1903 = 0; (p_2366->g_1903 != 6); p_2366->g_1903 = safe_add_func_int8_t_s_s(p_2366->g_1903, 4))
        { /* block id: 986 */
            int64_t *l_1967 = &p_2366->g_2[3];
            int32_t l_1968[4][8] = {{0x206065F2L,7L,0x55598A95L,0x3A3813E0L,0x2A2CA710L,0x206065F2L,0x3A3813E0L,0x0C1B616BL},{0x206065F2L,7L,0x55598A95L,0x3A3813E0L,0x2A2CA710L,0x206065F2L,0x3A3813E0L,0x0C1B616BL},{0x206065F2L,7L,0x55598A95L,0x3A3813E0L,0x2A2CA710L,0x206065F2L,0x3A3813E0L,0x0C1B616BL},{0x206065F2L,7L,0x55598A95L,0x3A3813E0L,0x2A2CA710L,0x206065F2L,0x3A3813E0L,0x0C1B616BL}};
            int64_t l_1981 = 0x16E4AE6EC67F3A6BL;
            uint32_t l_2041 = 0xEB9A496BL;
            int32_t l_2067 = 0x36934789L;
            int8_t *l_2121[6];
            union U2 *l_2128[1];
            int32_t *l_2154 = &l_1998[8][0][1];
            uint64_t l_2161 = 1UL;
            int i, j;
            for (i = 0; i < 6; i++)
                l_2121[i] = &p_2366->g_8;
            for (i = 0; i < 1; i++)
                l_2128[i] = &p_2366->g_309;
            if (((((*l_1940) &= ((l_1966 , (((*l_1967) = 0x714DF77CBFDD6498L) , p_29)) <= ((*l_1958) = (l_1968[2][0] , (safe_rshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(((1UL != p_29) != (((safe_add_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(((safe_sub_func_int64_t_s_s(p_29, (FAKE_DIVERGE(p_2366->local_2_offset, get_local_id(2), 10) >= ((safe_mul_func_int16_t_s_s(p_2366->g_1182, 0xBBF4L)) , (**p_2366->g_845))))) & 0UL), 0x5F5692BD29671F1EL)), l_1966)) != (*l_1958)) , l_1981)), l_1966)), 3)))))) && (*l_1958)) & (**p_2366->g_905)))
            { /* block id: 990 */
                uint32_t l_1984 = 0x57E95F64L;
                uint8_t **l_1989 = &p_2366->g_846;
                uint8_t ***l_1988 = &l_1989;
                int32_t l_1997 = 0x38C0632BL;
                int32_t l_1999 = 0x3CA6F5D4L;
                int32_t l_2000 = (-1L);
                int32_t l_2003 = 0x74F58305L;
                int32_t l_2009 = 3L;
                int32_t l_2011 = 0x26C6404DL;
                int32_t l_2015 = 0x14D7034AL;
                int32_t l_2016 = 5L;
                int32_t l_2017 = 3L;
                int32_t l_2019 = 0x0F1CD69EL;
                int32_t l_2020[2][5] = {{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)}};
                union U2 l_2055 = {0L};
                uint32_t *l_2060 = &p_2366->g_526;
                int i, j;
                for (l_1957 = 0; (l_1957 <= 15); l_1957++)
                { /* block id: 993 */
                    int32_t *l_1985 = &l_1950;
                    uint8_t ***l_1990[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_2005 = 1L;
                    int32_t l_2007 = 0x05C87E2EL;
                    int32_t l_2008 = 0L;
                    int32_t l_2010 = (-1L);
                    int32_t l_2012 = 1L;
                    int32_t l_2013 = 1L;
                    int32_t l_2018[9] = {0x2390666AL,0x2390666AL,0x2390666AL,0x2390666AL,0x2390666AL,0x2390666AL,0x2390666AL,0x2390666AL,0x2390666AL};
                    int32_t l_2022 = 0x5AF4F0EBL;
                    int i;
                    l_1985 = ((p_2366->g_17 < p_29) , func_47((*p_2366->g_1659), (*l_1958), (*p_2366->g_846), l_1984, p_2366));
                    if (((p_2366->g_1516 == (safe_add_func_int32_t_s_s(((p_29 == FAKE_DIVERGE(p_2366->local_0_offset, get_local_id(0), 10)) || p_29), (!(l_1988 == (p_2366->g_1991[2][1] = l_1990[4])))))) >= ((*l_1958) ^= l_1966)))
                    { /* block id: 997 */
                        int32_t *l_1993 = &l_1968[2][0];
                        int32_t *l_1994 = (void*)0;
                        int32_t *l_1995 = &l_1968[2][0];
                        int32_t *l_1996[5][1] = {{&l_1968[1][4]},{&l_1968[1][4]},{&l_1968[1][4]},{&l_1968[1][4]},{&l_1968[1][4]}};
                        int8_t l_2014[1][10] = {{(-4L),0x34L,(-4L),(-4L),0x34L,(-4L),(-4L),0x34L,(-4L),(-4L)}};
                        int i, j;
                        --l_2023;
                        if (p_29)
                            continue;
                    }
                    else
                    { /* block id: 1000 */
                        int32_t *l_2026 = &l_2018[5];
                        int32_t *l_2027 = &l_2019;
                        int32_t *l_2028[7] = {&p_2366->g_2021,&p_2366->g_2021,&p_2366->g_2021,&p_2366->g_2021,&p_2366->g_2021,&p_2366->g_2021,&p_2366->g_2021};
                        int64_t ***l_2043 = &l_2042;
                        int i;
                        --p_2366->g_2030[4][2][0];
                        if (p_29)
                            break;
                        (*l_2026) ^= ((((*p_2366->g_488) && (safe_lshift_func_uint8_t_u_s(((safe_lshift_func_uint8_t_u_u((p_29 || l_2006[1][2][2]), (**p_2366->g_845))) ^ ((safe_lshift_func_uint16_t_u_u((*l_2027), (safe_sub_func_uint64_t_u_u(18446744073709551608UL, ((l_2001 , &p_2366->g_104) != ((*l_2043) = (((l_2016 ^= (((p_29 != l_2041) >= p_29) == l_1984)) ^ l_2020[0][1]) , l_2042))))))) , p_29)), 5))) , l_2044) | 4294967287UL);
                    }
                    for (l_1984 = 12; (l_1984 != 49); l_1984++)
                    { /* block id: 1009 */
                        int32_t *l_2047 = &l_2008;
                        (*p_2366->g_2048) = l_2047;
                        (*l_2047) = l_2009;
                        if (p_29)
                            break;
                        (*p_2366->g_1897) = 0x4AD94989L;
                    }
                }
                (*l_1958) = ((p_29 < (*l_1958)) && p_29);
                for (p_2366->g_18 = 4; (p_2366->g_18 >= 1); p_2366->g_18 -= 1)
                { /* block id: 1019 */
                    uint32_t **l_2061 = &l_2060;
                    int32_t l_2066 = 0L;
                    int32_t *l_2068[3][9] = {{(void*)0,(void*)0,&l_2011,(void*)0,(void*)0,(void*)0,(void*)0,&l_2011,(void*)0},{(void*)0,(void*)0,&l_2011,(void*)0,(void*)0,(void*)0,(void*)0,&l_2011,(void*)0},{(void*)0,(void*)0,&l_2011,(void*)0,(void*)0,(void*)0,(void*)0,&l_2011,(void*)0}};
                    int i, j;
                    l_2001 &= (safe_div_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u(p_29, (p_29 | ((l_2067 = (l_2055 , ((safe_mul_func_uint8_t_u_u(255UL, (((p_2366->g_381 , ((**p_2366->g_905) = (((*p_2366->g_645) <= (((*l_2061) = l_2060) == (void*)0)) | (l_1968[0][6] |= (safe_lshift_func_int8_t_s_u((+((safe_lshift_func_int16_t_s_s(((((((((((p_29 <= 0x705EL) & 0x7E86L) >= p_29) & 0x04L) || p_29) ^ p_29) >= l_2066) ^ (*p_2366->g_488)) || FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10)) < p_29), 3)) , l_2016)), p_29)))))) == GROUP_DIVERGE(2, 1)) == 1L))) & 1UL))) & p_29)))), l_2020[0][3])), 0xE6L));
                    if ((*l_1958))
                        continue;
                }
                for (l_1950 = 1; (l_1950 >= 0); l_1950 -= 1)
                { /* block id: 1029 */
                    uint8_t **l_2069 = (void*)0;
                    int64_t *l_2081 = &p_2366->g_2[1];
                    uint16_t ***l_2087[3];
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_2087[i] = &p_2366->g_905;
                    l_2006[l_1950][l_1950][l_1950] |= (l_2069 != (*p_2366->g_844));
                    for (l_2000 = 0; (l_2000 <= 3); l_2000 += 1)
                    { /* block id: 1033 */
                        uint16_t *l_2082 = (void*)0;
                        uint16_t *l_2083 = &p_2366->g_165;
                        uint16_t *l_2084[10][9] = {{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0},{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0},{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0},{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0},{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0},{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0},{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0},{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0},{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0},{&p_2366->g_1182,(void*)0,(void*)0,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,&p_2366->g_1903,(void*)0,(void*)0}};
                        uint16_t ***l_2085 = &p_2366->g_905;
                        int i, j, k;
                        p_2366->g_1143[(l_1950 + 3)][l_2000][l_2000] = (safe_add_func_int8_t_s_s(p_2366->g_1143[(l_2000 + 3)][(l_2000 + 2)][(l_1950 + 2)], ((safe_sub_func_uint16_t_u_u((*p_2366->g_906), l_1966)) | (p_2366->g_2074 , ((safe_div_func_uint64_t_u_u((~((+((safe_div_func_int32_t_s_s((p_29 , (safe_mod_func_uint16_t_u_u((l_2006[l_1950][l_1950][l_1950] ^= ((((*l_2083) |= (GROUP_DIVERGE(1, 1) == (l_2020[0][1] < ((void*)0 == l_2081)))) && (*l_1958)) > p_29)), l_2067))), 4294967295UL)) != (**p_2366->g_905))) | p_29)), (*p_2366->g_104))) == l_1997)))));
                        (*l_1958) = (l_2085 != (l_2087[1] = l_2086));
                        if (p_29)
                            continue;
                        atomic_add(&p_2366->l_atomic_reduction[0], (safe_lshift_func_int8_t_s_s(((-4L) < (0x0DC34B03E5E2BCA4L >= (safe_rshift_func_uint16_t_u_u(((l_2006[l_1950][l_1950][l_1950] ^= (safe_unary_minus_func_int64_t_s((*p_2366->g_104)))) || 0x02L), 7)))), (((*l_2083) |= FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10)) && (0xBAL >= (safe_lshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(l_2002, (l_1966 != p_29))), 0)))))));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_2366->v_collective += p_2366->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    }
                }
            }
            else
            { /* block id: 1045 */
                uint8_t l_2117 = 1UL;
                int32_t l_2118 = 0x582BE5E3L;
                int32_t l_2120 = 0x6D0CE8B5L;
                l_2120 ^= (safe_mul_func_int16_t_s_s((((**p_2366->g_844) = (*p_2366->g_845)) == ((safe_add_func_int64_t_s_s((l_2118 |= ((p_29 , ((((l_2002 = ((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 15)), ((safe_mod_func_int8_t_s_s((p_29 == 0x66EDB2B0423C1866L), ((*l_1958) ^= FAKE_DIVERGE(p_2366->group_1_offset, get_group_id(1), 10)))) == (safe_sub_func_uint16_t_u_u(0x3C9BL, (safe_sub_func_int16_t_s_s(0x00D5L, (~(safe_mod_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((l_2117 , p_2366->g_809), (**p_2366->g_905))) == 0x4C0BA972L) | p_2366->g_1179[1][2][6]), p_29)))))))))) | p_29)) <= GROUP_DIVERGE(0, 1)) && 0x3BL) != 9L)) , 0x7C54409EFDA9F7B7L)), l_2117)) , l_2119)), 0x876BL));
                return l_2121[3];
            }
            if (((safe_unary_minus_func_int64_t_s((l_2123 != l_2123))) >= (safe_sub_func_uint8_t_u_u(((void*)0 != l_1967), (safe_add_func_int8_t_s_s(0x61L, FAKE_DIVERGE(p_2366->group_2_offset, get_group_id(2), 10)))))))
            { /* block id: 1053 */
                int8_t *l_2131 = (void*)0;
                (*p_2366->g_2130) = (l_2129 = l_2128[0]);
                return l_2131;
            }
            else
            { /* block id: 1057 */
                int8_t *l_2132 = &p_2366->g_8;
                int32_t l_2137 = 0x02857D9FL;
                int32_t **l_2153[8][7][4] = {{{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958}},{{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958}},{{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958}},{{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958}},{{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958}},{{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958}},{{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958}},{{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958},{&p_2366->g_331[0][0],&l_1958,&p_2366->g_153,&l_1958}}};
                int i, j, k;
                l_2154 = func_47(l_2132, (l_2006[1][1][0] = (safe_mul_func_int8_t_s_s(p_29, ((((safe_rshift_func_int16_t_s_s(((***p_2366->g_844) <= (((p_2366->g_309 , (l_2137 ^ (((-6L) > ((*l_1958) &= (safe_mul_func_int16_t_s_s(0x5C09L, (safe_unary_minus_func_int16_t_s(((safe_mul_func_uint8_t_u_u((p_2366->g_1143[5][0][0] , (safe_mod_func_uint16_t_u_u((((safe_mod_func_int32_t_s_s(((safe_mod_func_uint32_t_u_u((l_2067 = (safe_mul_func_int16_t_s_s((l_2137 , l_2137), 0x4D62L))), l_1966)) | l_2041), l_1981)) , l_2151) == &l_2152), 0x37D9L))), p_29)) <= p_2366->g_37[1]))))))) ^ (-1L)))) && (*l_1958)) , (*l_1958))), 2)) , (void*)0) == l_2153[1][5][2]) != p_29)))), p_29, l_2004, p_2366);
                if ((l_2155 , p_29))
                { /* block id: 1062 */
                    union U1 *l_2158 = &l_2100[8][2];
                    l_2002 ^= ((l_2006[1][1][0] , (p_29 > ((*p_2366->g_1201) |= (((void*)0 == p_2366->g_2156) > 0xBC9DA09434D880E8L)))) || ((((void*)0 != &p_2366->g_905) & (p_2366->g_856 != ((((*p_2366->g_104) < p_29) == FAKE_DIVERGE(p_2366->global_1_offset, get_global_id(1), 10)) , p_2366->g_856))) >= p_2366->g_663));
                    (*l_1958) &= p_29;
                    l_2158 = l_2158;
                    (*l_1958) = (safe_lshift_func_uint16_t_u_s(l_2161, p_2366->g_1104.f0));
                }
                else
                { /* block id: 1068 */
                    uint32_t l_2162 = 0xE669C7B3L;
                    l_2162--;
                }
            }
        }
    }
    (*l_1958) |= (safe_mul_func_int16_t_s_s(1L, p_29));
    return l_2099[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_1456 p_2366->g_1457 p_2366->g_309 p_2366->g_1101 p_2366->g_1102 p_2366->g_1103 p_2366->g_1104 p_2366->g_1636 p_2366->g_1430 p_2366->g_906 p_2366->g_786 p_2366->g_104 p_2366->g_86 p_2366->g_105 p_2366->g_118 p_2366->g_11 p_2366->g_740 p_2366->g_741 p_2366->g_905 p_2366->g_1143 p_2366->g_1516 p_2366->g_1180 p_2366->g_1179 p_2366->g_1311 p_2366->g_846 p_2366->g_377 p_2366->g_165 p_2366->g_743.f0 p_2366->g_212 p_2366->g_663 p_2366->g_1201 p_2366->g_230.f1 p_2366->g_339 p_2366->g_487 p_2366->g_488 p_2366->g_1431 p_2366->g_1455 p_2366->g_845 p_2366->g_959 p_2366->g_524 p_2366->g_1820 p_2366->g_526 p_2366->g_844 p_2366->g_1185 p_2366->g_1897 p_2366->g_767 p_2366->g_768 p_2366->g_1181 p_2366->g_645 p_2366->g_1903 p_2366->g_856 p_2366->g_1182 p_2366->g_1920 p_2366->g_18 p_2366->g_1937 p_2366->g_809 p_2366->g_230.f0
 * writes: p_2366->g_230 p_2366->g_11 p_2366->g_809 p_2366->g_1516 p_2366->g_488 p_2366->g_741 p_2366->g_786 p_2366->g_1143 p_2366->g_1180 p_2366->g_377 p_2366->g_165 p_2366->g_663 p_2366->g_118 p_2366->g_331 p_2366->g_674 p_2366->g_153 p_2366->g_526 p_2366->g_1823 p_2366->g_86 p_2366->g_105 p_2366->g_1838 p_2366->g_381 p_2366->g_339 p_2366->g_1181 p_2366->g_57
 */
uint32_t  func_30(int32_t  p_31, uint64_t  p_32, struct S3 * p_2366)
{ /* block id: 787 */
    union U2 *l_1631 = &p_2366->g_309;
    int32_t l_1632[3];
    union U1 *l_1634 = (void*)0;
    union U1 *l_1635 = &p_2366->g_230;
    uint64_t *l_1644 = &p_2366->g_1431;
    uint64_t *l_1648 = (void*)0;
    uint32_t l_1724 = 1UL;
    uint32_t l_1813 = 0x2CE2A7C1L;
    int8_t *l_1824 = &p_2366->g_8;
    uint16_t **l_1883 = &p_2366->g_906;
    int32_t l_1898[3][3];
    uint32_t l_1917[6][6][7] = {{{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L}},{{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L}},{{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L}},{{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L}},{{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L}},{{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L},{4294967295UL,0x6DE0184DL,4294967295UL,0UL,4294967292UL,4294967289UL,0xE3D97867L}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1632[i] = 1L;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
            l_1898[i][j] = 0L;
    }
lbl_1879:
    if ((safe_lshift_func_int8_t_s_s((!(p_31 || ((((*p_2366->g_1456) == l_1631) > (((*l_1631) , l_1632[2]) == ((safe_unary_minus_func_uint64_t_u(((&p_2366->g_959 == (void*)0) & (((*l_1635) = (***p_2366->g_1101)) , l_1632[2])))) > p_31))) > l_1632[0]))), p_32)))
    { /* block id: 789 */
        union U1 **l_1640 = (void*)0;
        union U1 ***l_1639 = &l_1640;
        int32_t *l_1641 = &p_2366->g_11;
        (*l_1641) |= ((~p_2366->g_1636) , ((safe_sub_func_uint64_t_u_u(((((p_2366->g_1430 && (l_1632[0] & ((*p_2366->g_906) && ((*p_2366->g_1101) == ((*l_1639) = &p_2366->g_469[8][0]))))) , p_31) < ((l_1632[2] && ((((*p_2366->g_104) | (*p_2366->g_104)) && 4UL) , p_2366->g_118)) , 247UL)) && 0xED66E3613BE5123BL), l_1632[2])) == p_31));
    }
    else
    { /* block id: 792 */
lbl_1819:
        l_1632[2] = p_32;
    }
    for (p_2366->g_809 = 2; (p_2366->g_809 <= 7); p_2366->g_809 += 1)
    { /* block id: 797 */
        uint64_t *l_1642 = &p_2366->g_1311[0][0][4];
        int16_t *l_1649[8][1][5] = {{{&p_2366->g_379,(void*)0,&p_2366->g_379,&p_2366->g_379,(void*)0}},{{&p_2366->g_379,(void*)0,&p_2366->g_379,&p_2366->g_379,(void*)0}},{{&p_2366->g_379,(void*)0,&p_2366->g_379,&p_2366->g_379,(void*)0}},{{&p_2366->g_379,(void*)0,&p_2366->g_379,&p_2366->g_379,(void*)0}},{{&p_2366->g_379,(void*)0,&p_2366->g_379,&p_2366->g_379,(void*)0}},{{&p_2366->g_379,(void*)0,&p_2366->g_379,&p_2366->g_379,(void*)0}},{{&p_2366->g_379,(void*)0,&p_2366->g_379,&p_2366->g_379,(void*)0}},{{&p_2366->g_379,(void*)0,&p_2366->g_379,&p_2366->g_379,(void*)0}}};
        int32_t l_1654 = (-2L);
        uint64_t l_1666 = 0xC973321A917CBE5AL;
        uint8_t ****l_1700 = (void*)0;
        int8_t *l_1701 = &p_2366->g_8;
        int32_t l_1749[6][2];
        uint64_t l_1764 = 0xCDB997A9AEFD9767L;
        union U1 l_1786[9] = {{65535UL},{65535UL},{65535UL},{65535UL},{65535UL},{65535UL},{65535UL},{65535UL},{65535UL}};
        int32_t *l_1808 = &l_1654;
        union U2 *l_1884 = &p_2366->g_309;
        int32_t ***l_1885 = (void*)0;
        uint32_t **l_1887 = (void*)0;
        int64_t **l_1913[4];
        int64_t ***l_1912 = &l_1913[1];
        uint32_t l_1922 = 3UL;
        union U1 *l_1924 = (void*)0;
        int i, j, k;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 2; j++)
                l_1749[i][j] = 0x0F1497C9L;
        }
        for (i = 0; i < 4; i++)
            l_1913[i] = &p_2366->g_104;
        for (p_2366->g_1516 = 3; (p_2366->g_1516 >= 0); p_2366->g_1516 -= 1)
        { /* block id: 800 */
            uint64_t **l_1643 = &l_1642;
            uint64_t **l_1645 = &l_1644;
            uint64_t *l_1647 = &p_2366->g_44;
            uint64_t **l_1646[4];
            int64_t **l_1678 = (void*)0;
            int32_t l_1698 = 0x4226A0B8L;
            int32_t l_1752 = (-1L);
            int32_t l_1755 = 0x40F8BD42L;
            int32_t l_1758 = 0x0577AF4DL;
            int32_t l_1759 = 0x7F1B2C49L;
            int32_t l_1760 = 0x00E82073L;
            int32_t l_1761 = 0x5E17483BL;
            int32_t l_1762[6] = {(-1L),0L,(-1L),(-1L),0L,(-1L)};
            int32_t l_1763 = 1L;
            union U1 **l_1802 = &l_1634;
            union U1 ***l_1801 = &l_1802;
            uint16_t l_1837 = 65533UL;
            uint16_t **l_1882 = &p_2366->g_906;
            int i;
            for (i = 0; i < 4; i++)
                l_1646[i] = &l_1647;
            if (l_1632[2])
                break;
            if ((((FAKE_DIVERGE(p_2366->global_1_offset, get_global_id(1), 10) < (((*l_1643) = l_1642) != (l_1648 = (p_2366->g_488 = ((*l_1645) = l_1644))))) , l_1649[0][0][3]) == (void*)0))
            { /* block id: 806 */
                int32_t *l_1655 = &p_2366->g_1143[2][0][3];
                (*l_1655) ^= (safe_rshift_func_uint8_t_u_s((safe_mod_func_uint16_t_u_u((((*p_2366->g_740) = (*p_2366->g_740)) != (void*)0), (l_1654 = ((**p_2366->g_905) = (**p_2366->g_905))))), 5));
            }
            else
            { /* block id: 811 */
                int8_t **l_1656 = &p_2366->g_1238;
                int32_t l_1663[10] = {(-2L),0x49EE1A42L,(-2L),(-2L),0x49EE1A42L,(-2L),(-2L),0x49EE1A42L,(-2L),(-2L)};
                int32_t l_1697[4][2];
                union U1 l_1702 = {0x71D7L};
                int8_t l_1723[7][8][2] = {{{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL}},{{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL}},{{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL}},{{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL}},{{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL}},{{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL}},{{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL},{0x4DL,0x7AL}}};
                int8_t l_1725 = 0x10L;
                int64_t l_1726 = 0x255A63E9721B321AL;
                uint32_t l_1773 = 4294967290UL;
                union U1 **l_1800 = &l_1634;
                union U1 ***l_1799 = &l_1800;
                uint32_t l_1816 = 4294967294UL;
                int i, j, k;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_1697[i][j] = 1L;
                }
                for (p_2366->g_1180 = 3; (p_2366->g_1180 >= 0); p_2366->g_1180 -= 1)
                { /* block id: 814 */
                    int8_t **l_1661[5][4][3] = {{{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238}},{{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238}},{{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238}},{{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238}},{{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238},{&p_2366->g_1238,&p_2366->g_1238,&p_2366->g_1238}}};
                    int64_t **l_1679 = &p_2366->g_104;
                    int32_t l_1699[9][5] = {{9L,0L,0L,9L,9L},{9L,0L,0L,9L,9L},{9L,0L,0L,9L,9L},{9L,0L,0L,9L,9L},{9L,0L,0L,9L,9L},{9L,0L,0L,9L,9L},{9L,0L,0L,9L,9L},{9L,0L,0L,9L,9L},{9L,0L,0L,9L,9L}};
                    int32_t *l_1727[4][6] = {{&p_2366->g_4[9][3][1],&p_2366->g_4[9][3][1],(void*)0,(void*)0,&l_1654,(void*)0},{&p_2366->g_4[9][3][1],&p_2366->g_4[9][3][1],(void*)0,(void*)0,&l_1654,(void*)0},{&p_2366->g_4[9][3][1],&p_2366->g_4[9][3][1],(void*)0,(void*)0,&l_1654,(void*)0},{&p_2366->g_4[9][3][1],&p_2366->g_4[9][3][1],(void*)0,(void*)0,&l_1654,(void*)0}};
                    int i, j, k;
                    if (p_2366->g_1179[p_2366->g_1516][p_2366->g_1516][p_2366->g_1180])
                    { /* block id: 815 */
                        int8_t ***l_1660[7] = {(void*)0,&l_1656,(void*)0,(void*)0,&l_1656,(void*)0,(void*)0};
                        int i, j, k;
                        p_31 |= p_2366->g_1143[(p_2366->g_1516 + 1)][(p_2366->g_1516 + 3)][p_2366->g_1516];
                        l_1661[3][1][1] = l_1656;
                    }
                    else
                    { /* block id: 818 */
                        int32_t *l_1662[9][9] = {{&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6,&p_2366->g_11,&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6},{&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6,&p_2366->g_11,&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6},{&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6,&p_2366->g_11,&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6},{&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6,&p_2366->g_11,&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6},{&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6,&p_2366->g_11,&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6},{&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6,&p_2366->g_11,&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6},{&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6,&p_2366->g_11,&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6},{&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6,&p_2366->g_11,&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6},{&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6,&p_2366->g_11,&p_2366->g_11,&p_2366->g_6,&p_2366->g_4[1][4][0],&p_2366->g_6}};
                        uint16_t *l_1691 = &p_2366->g_165;
                        int32_t *l_1694 = (void*)0;
                        int32_t *l_1695 = (void*)0;
                        int32_t *l_1696 = &p_2366->g_230.f3;
                        int i, j;
                        l_1663[5] = 4L;
                        l_1699[7][2] = (safe_sub_func_int32_t_s_s((p_2366->g_1311[0][0][7] | (l_1666 || (safe_lshift_func_uint16_t_u_s(((safe_unary_minus_func_int64_t_s(p_32)) & (safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(((*p_2366->g_906) = (**p_2366->g_905)), (safe_rshift_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((l_1654 ^= (~(l_1678 != l_1679))), (--(*p_2366->g_846)))) < ((((safe_div_func_int32_t_s_s((p_31 = ((safe_rshift_func_uint8_t_u_s(((l_1697[1][1] = ((*l_1696) = (safe_lshift_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_u((l_1663[5] ^= (safe_unary_minus_func_uint64_t_u(((--(*l_1691)) & p_31)))), 2)) | p_31), 7)))) , (p_31 != p_31)), 0)) && l_1666)), FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10))) > p_2366->g_1179[p_2366->g_1516][p_2366->g_1516][p_2366->g_1180]) < p_32) || l_1698)), 12)))), 4))), p_2366->g_743.f0)))), p_2366->g_1179[p_2366->g_1516][p_2366->g_1516][p_2366->g_1180]));
                        p_31 ^= (l_1700 == &p_2366->g_844);
                    }
                    l_1632[2] = (p_2366->g_212[(p_2366->g_1180 + 1)] , p_31);
                    if (p_32)
                        continue;
                    for (p_2366->g_663 = 3; (p_2366->g_663 >= 0); p_2366->g_663 -= 1)
                    { /* block id: 835 */
                        int i, j, k;
                        return p_2366->g_1179[p_2366->g_663][p_2366->g_663][(p_2366->g_1180 + 3)];
                    }
                }
                for (p_2366->g_230.f0 = 0; (p_2366->g_230.f0 <= 7); p_2366->g_230.f0 += 1)
                { /* block id: 841 */
                    int16_t l_1743[3][3][3] = {{{(-1L),8L,(-1L)},{(-1L),8L,(-1L)},{(-1L),8L,(-1L)}},{{(-1L),8L,(-1L)},{(-1L),8L,(-1L)},{(-1L),8L,(-1L)}},{{(-1L),8L,(-1L)},{(-1L),8L,(-1L)},{(-1L),8L,(-1L)}}};
                    int32_t l_1750 = 1L;
                    int32_t l_1751 = 0x1D7236E9L;
                    int32_t l_1753 = (-1L);
                    int32_t l_1754 = 0x6A9B6313L;
                    int32_t l_1756 = 4L;
                    int32_t l_1757[9][7][4] = {{{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L}},{{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L}},{{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L}},{{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L}},{{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L}},{{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L}},{{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L}},{{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L}},{{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L},{0x21F81BA5L,0x2F1D4D7EL,0x4A0966DCL,0L}}};
                    int32_t *l_1767 = &l_1759;
                    int i, j, k;
                    for (p_2366->g_118 = 2; (p_2366->g_118 <= 7); p_2366->g_118 += 1)
                    { /* block id: 844 */
                        int32_t **l_1728 = &p_2366->g_331[0][0];
                        int32_t *l_1729 = &p_2366->g_1143[p_2366->g_1516][(p_2366->g_1516 + 1)][p_2366->g_1516];
                        int32_t *l_1730 = &p_2366->g_1143[p_2366->g_1516][(p_2366->g_1516 + 1)][p_2366->g_1516];
                        int32_t *l_1731 = &l_1663[5];
                        int32_t *l_1732 = &l_1698;
                        int32_t *l_1733 = &l_1663[1];
                        int32_t *l_1734 = &l_1654;
                        int32_t *l_1735 = &l_1698;
                        int32_t *l_1736 = &l_1698;
                        int32_t *l_1737 = &l_1698;
                        int32_t *l_1738 = &p_2366->g_1143[3][6][1];
                        int32_t *l_1739 = &l_1654;
                        int32_t *l_1740 = &l_1697[1][1];
                        int32_t *l_1741 = &p_2366->g_11;
                        int32_t *l_1742 = &l_1698;
                        int32_t *l_1744 = &l_1632[2];
                        int32_t *l_1745 = &l_1632[2];
                        int32_t *l_1746 = &l_1663[9];
                        int32_t *l_1747[4];
                        int32_t l_1748 = 0x3505535DL;
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_1747[i] = (void*)0;
                        (*l_1728) = &p_2366->g_1143[p_2366->g_1516][(p_2366->g_1516 + 1)][p_2366->g_1516];
                        if (p_2366->g_1179[p_2366->g_1516][p_2366->g_1516][(p_2366->g_1516 + 1)])
                            break;
                        l_1764--;
                    }
                    (*l_1767) |= (*p_2366->g_1201);
                }
                if (l_1698)
                { /* block id: 851 */
                    int32_t **l_1768 = &p_2366->g_331[0][0];
                    (*l_1768) = (void*)0;
                }
                else
                { /* block id: 853 */
                    int32_t *l_1769 = &l_1697[1][1];
                    int32_t *l_1770 = &l_1749[2][0];
                    int32_t *l_1771 = &l_1698;
                    int32_t *l_1772[1][10];
                    uint16_t **l_1787 = (void*)0;
                    int8_t l_1812 = (-1L);
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 10; j++)
                            l_1772[i][j] = &l_1654;
                    }
                    ++l_1773;
                    for (p_2366->g_230.f1 = 0; (p_2366->g_230.f1 <= 3); p_2366->g_230.f1 += 1)
                    { /* block id: 857 */
                        uint32_t *l_1792 = &p_2366->g_674;
                        int i, j, k;
                        (*l_1770) |= (p_31 = p_2366->g_1179[p_2366->g_230.f1][p_2366->g_230.f1][(p_2366->g_230.f1 + 3)]);
                        (*l_1769) |= (p_2366->g_1143[p_2366->g_230.f1][p_2366->g_230.f1][p_2366->g_1516] & (p_2366->g_339 , (safe_lshift_func_uint16_t_u_s(p_32, 4))));
                        (*l_1770) = (safe_mod_func_int16_t_s_s((l_1663[4] = (safe_div_func_int8_t_s_s(((l_1749[5][1] , (!p_2366->g_377[4])) || (((safe_mul_func_uint8_t_u_u(((*p_2366->g_846) &= (((0UL >= (safe_sub_func_int32_t_s_s((0x71932091A2F7C114L < (((*l_1792) = (((((l_1786[6] , l_1787) != &p_2366->g_906) == p_32) == (safe_add_func_int64_t_s_s((safe_mul_func_int16_t_s_s(l_1759, l_1764)), GROUP_DIVERGE(0, 1)))) , 0xFD5E66D8L)) , (**p_2366->g_487))), l_1749[5][1]))) <= p_31) | p_31)), l_1697[2][0])) | (*l_1769)) , 0xEF1F0D95L)), l_1759))), 0x5F79L));
                    }
                    if (((p_31 > (l_1632[1] , l_1761)) != (((((safe_sub_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u((((65528UL != (((l_1755 ^ (safe_mul_func_int16_t_s_s(((1UL < ((*l_1771) |= ((p_2366->g_212[(p_2366->g_1516 + 2)] , (void*)0) == (*p_2366->g_1455)))) | 0xAD0BDDAA2AC9032FL), 0x2BFEL))) , l_1799) == l_1801)) >= 0x71L) && 0x11C16DF9125E1BFBL), 0xF319L)) && GROUP_DIVERGE(2, 1)), FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10))) & 1L) == (*p_2366->g_488)) != l_1663[0]) == (*p_2366->g_488))))
                    { /* block id: 867 */
                        uint32_t l_1811 = 0x36C049C1L;
                        l_1808 = func_47(l_1701, (safe_add_func_uint64_t_u_u(4UL, (safe_unary_minus_func_uint8_t_u(((**p_2366->g_845) = p_31))))), p_2366->g_663, ((safe_lshift_func_int16_t_s_s(p_2366->g_1143[3][1][2], 7)) & l_1723[3][0][1]), p_2366);
                        l_1811 |= (safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_2366->group_0_offset, get_group_id(0), 10), (*p_2366->g_104)));
                        --l_1813;
                    }
                    else
                    { /* block id: 872 */
                        l_1816--;
                    }
                    if (p_2366->g_1516)
                        goto lbl_1819;
                }
            }
            (*p_2366->g_1820) = &l_1749[5][1];
            for (p_2366->g_526 = 0; (p_2366->g_526 <= 3); p_2366->g_526 += 1)
            { /* block id: 881 */
                int32_t l_1847 = 0x65BD8666L;
                int32_t l_1848 = 3L;
                int32_t l_1849 = (-1L);
                int32_t l_1851 = 0x1EBE28CCL;
                uint16_t ***l_1881[10];
                int i;
                for (i = 0; i < 10; i++)
                    l_1881[i] = &p_2366->g_905;
                for (p_2366->g_118 = 0; (p_2366->g_118 <= 3); p_2366->g_118 += 1)
                { /* block id: 884 */
                    uint32_t *l_1822[7] = {&p_2366->g_809,&p_2366->g_809,&p_2366->g_809,&p_2366->g_809,&p_2366->g_809,&p_2366->g_809,&p_2366->g_809};
                    uint32_t **l_1821[10][6][3] = {{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}},{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}},{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}},{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}},{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}},{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}},{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}},{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}},{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}},{{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]},{(void*)0,&l_1822[6],&l_1822[1]}}};
                    int32_t *l_1836 = &l_1755;
                    int32_t l_1850 = 4L;
                    uint32_t l_1861 = 0x3DDAF7A6L;
                    int8_t *l_1868 = &p_2366->g_8;
                    uint64_t l_1871[6] = {0UL,0UL,0UL,0UL,0UL,0UL};
                    int i, j, k;
                    if (((p_2366->g_1823 = l_1808) != (p_2366->g_1838 = func_47(l_1824, p_2366->g_1179[p_2366->g_526][p_2366->g_526][(p_2366->g_1516 + 3)], ((((((0x18L ^ (((((safe_rshift_func_uint8_t_u_s((++(***p_2366->g_844)), 7)) && (p_2366->g_1143[(p_2366->g_1516 + 3)][p_2366->g_1516][p_2366->g_118] = p_2366->g_1143[(p_2366->g_1516 + 3)][p_2366->g_1516][p_2366->g_118])) | (safe_lshift_func_int8_t_s_s((p_31 < (safe_mod_func_int64_t_s_s(((safe_unary_minus_func_uint32_t_u(((l_1752 , ((*p_2366->g_104) ^= (0xC5F8BAB19E9E809CL && (FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10) == (+(!(safe_sub_func_int32_t_s_s(((*l_1836) &= p_2366->g_1179[p_2366->g_526][p_2366->g_526][(p_2366->g_1516 + 3)]), 0x1E78242EL)))))))) ^ p_31))) <= p_32), p_32))), 7))) , p_31) < 18446744073709551615UL)) && 4L) <= l_1752) | l_1759) , (-3L)) && 1L), l_1837, p_2366))))
                    { /* block id: 891 */
                        int32_t *l_1845 = &p_2366->g_11;
                        int32_t *l_1846[8] = {&p_2366->g_4[1][4][0],&p_2366->g_4[4][3][0],&p_2366->g_4[1][4][0],&p_2366->g_4[1][4][0],&p_2366->g_4[4][3][0],&p_2366->g_4[1][4][0],&p_2366->g_4[1][4][0],&p_2366->g_4[4][3][0]};
                        uint8_t l_1852[9] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
                        int i;
                        (*l_1836) = (~((safe_mod_func_int32_t_s_s(((*l_1845) |= (safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(p_2366->g_165, (!((l_1644 != &p_32) , (p_31 | 0x021AL))))), ((*l_1836) < (*l_1836))))), (p_2366->g_526 , 4294967290UL))) >= 0x5717L));
                        l_1852[6]++;
                    }
                    else
                    { /* block id: 895 */
                        union U1 l_1874 = {0x0C21L};
                        (*l_1836) = ((**p_2366->g_905) || (p_32 <= (safe_mul_func_uint8_t_u_u((((9L != (safe_div_func_uint8_t_u_u(0x08L, 0x19L))) <= FAKE_DIVERGE(p_2366->local_0_offset, get_local_id(0), 10)) | (!(safe_rshift_func_int8_t_s_s(l_1861, 2)))), (safe_sub_func_uint32_t_u_u((0UL != (((safe_add_func_int16_t_s_s(0x63C0L, (safe_rshift_func_uint16_t_u_u((**p_2366->g_905), p_31)))) && GROUP_DIVERGE(2, 1)) || p_32)), p_31))))));
                        (*l_1836) = (*p_2366->g_1201);
                        l_1808 = func_47(l_1868, (0x71603F7D47EF8578L == (safe_add_func_int16_t_s_s(((((5L < l_1871[5]) != (p_32 <= (safe_rshift_func_uint8_t_u_u(p_32, (l_1874 , (0x30D6E4E398526421L & (p_32 < 0UL))))))) && l_1724) && p_32), (**p_2366->g_905)))), (*p_2366->g_846), p_31, p_2366);
                        if (l_1874.f0)
                            goto lbl_1879;
                    }
                }
                l_1749[0][0] = ((l_1882 = ((safe_unary_minus_func_uint16_t_u(p_32)) , (void*)0)) != l_1883);
            }
        }
        l_1884 = l_1884;
        for (p_2366->g_381 = 0; (p_2366->g_381 <= 6); p_2366->g_381 += 1)
        { /* block id: 909 */
            union U0 ***l_1894 = &p_2366->g_740;
            union U0 ***l_1896 = &p_2366->g_740;
            int32_t l_1901 = 0x68DEF7E8L;
            int32_t l_1918[7][1];
            union U1 *l_1923 = (void*)0;
            int32_t l_1929 = 0x44505AF7L;
            int32_t l_1930 = 0x516A45A2L;
            int32_t l_1931[8][2][8] = {{{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)},{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)}},{{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)},{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)}},{{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)},{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)}},{{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)},{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)}},{{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)},{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)}},{{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)},{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)}},{{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)},{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)}},{{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)},{(-1L),1L,0x76AF746AL,1L,2L,(-1L),(-7L),(-2L)}}};
            uint32_t **l_1936 = (void*)0;
            int i, j, k;
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1918[i][j] = 0x6B1EC6C0L;
            }
            for (p_2366->g_339 = 0; (p_2366->g_339 >= 0); p_2366->g_339 -= 1)
            { /* block id: 912 */
                uint8_t l_1889 = 249UL;
                int32_t **l_1900[7] = {&l_1808,&l_1808,&l_1808,&l_1808,&l_1808,&l_1808,&l_1808};
                int i;
                for (p_2366->g_1181 = 6; (p_2366->g_1181 >= 0); p_2366->g_1181 -= 1)
                { /* block id: 915 */
                    union U1 l_1895 = {0xBBFBL};
                    int32_t **l_1899 = &p_2366->g_331[0][0];
                    int i, j;
                    if ((&p_2366->g_330[(p_2366->g_339 + 7)][p_2366->g_1181] != l_1885))
                    { /* block id: 916 */
                        int32_t *l_1886 = &p_2366->g_6;
                        (*p_2366->g_1185) = l_1886;
                        p_31 ^= (l_1887 != (void*)0);
                        p_31 &= l_1724;
                    }
                    else
                    { /* block id: 920 */
                        int32_t l_1888 = (-1L);
                        union U0 ***l_1893 = &p_2366->g_740;
                        union U0 ****l_1892[2][9] = {{&l_1893,&l_1893,&l_1893,&l_1893,&l_1893,&l_1893,&l_1893,&l_1893,&l_1893},{&l_1893,&l_1893,&l_1893,&l_1893,&l_1893,&l_1893,&l_1893,&l_1893,&l_1893}};
                        int i, j;
                        l_1888 = ((void*)0 == &p_2366->g_809);
                        l_1889++;
                        p_31 = p_32;
                        (*p_2366->g_1897) = ((l_1894 = &p_2366->g_740) != (l_1895 , l_1896));
                    }
                    l_1898[1][2] = ((l_1898[1][2] , p_31) <= ((*p_2366->g_767) == (l_1900[6] = l_1899)));
                    return p_2366->g_1181;
                }
            }
            for (p_2366->g_86 = 0; (p_2366->g_86 <= 0); p_2366->g_86 += 1)
            { /* block id: 934 */
                return p_32;
            }
            (*p_2366->g_645) = l_1901;
            for (p_2366->g_230.f0 = 0; (p_2366->g_230.f0 <= 0); p_2366->g_230.f0 += 1)
            { /* block id: 940 */
                uint32_t l_1902 = 1UL;
                int64_t **l_1907 = &p_2366->g_106[8][3][0];
                int32_t *l_1925[10][2][9] = {{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}},{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}},{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}},{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}},{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}},{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}},{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}},{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}},{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}},{{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0},{&l_1898[0][1],&p_2366->g_4[6][2][1],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[6][2][1],&l_1898[0][1],(void*)0,&l_1632[2],(void*)0}}};
                int i, j, k;
                for (p_2366->g_339 = 0; (p_2366->g_339 <= 0); p_2366->g_339 += 1)
                { /* block id: 943 */
                    int8_t l_1916 = 1L;
                    if (l_1902)
                        break;
                    if ((3L <= ((void*)0 != &p_31)))
                    { /* block id: 945 */
                        if (p_2366->g_1903)
                            break;
                        if (p_31)
                            continue;
                    }
                    else
                    { /* block id: 948 */
                        int32_t l_1906 = 1L;
                        int32_t l_1919 = 7L;
                        int32_t **l_1921 = &p_2366->g_153;
                        l_1919 = (p_32 >= (((((p_2366->g_674 = (((safe_add_func_uint32_t_u_u(((l_1906 || ((((void*)0 == l_1907) < (((((safe_mod_func_int16_t_s_s(((safe_add_func_uint16_t_u_u(((p_2366->g_856 != l_1912) > l_1906), (safe_lshift_func_uint8_t_u_u((0x4E3AF701L >= ((+p_2366->g_1182) , 0UL)), l_1916)))) , p_32), l_1917[4][2][5])) == 18446744073709551615UL) , p_32) , p_32) , (*p_2366->g_104))) && l_1906)) , p_31), p_31)) > l_1918[5][0]) < 0x071081B27067D5B4L)) , (-6L)) != 3L) , p_32) > 0xEB6BL));
                        (*p_2366->g_1920) = &p_31;
                        (*l_1921) = &p_31;
                    }
                    for (p_2366->g_118 = 0; (p_2366->g_118 <= 7); p_2366->g_118 += 1)
                    { /* block id: 956 */
                        int32_t *l_1926 = &l_1901;
                        l_1922 &= l_1916;
                        l_1924 = l_1923;
                        if (p_32)
                            break;
                        l_1926 = l_1925[3][1][3];
                    }
                }
            }
            for (p_2366->g_57 = 0; (p_2366->g_57 <= 0); p_2366->g_57 += 1)
            { /* block id: 966 */
                int32_t *l_1927 = &l_1632[2];
                int32_t *l_1928[9] = {&p_2366->g_3[0],&p_2366->g_4[4][0][0],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[4][0][0],&p_2366->g_3[0],&p_2366->g_3[0],&p_2366->g_4[4][0][0],&p_2366->g_3[0]};
                uint32_t l_1932 = 4294967295UL;
                uint32_t **l_1935 = &p_2366->g_1823;
                int i;
                l_1932++;
                (*l_1927) &= ((p_31 , &p_2366->g_1838) != (l_1936 = l_1935));
            }
        }
        return p_2366->g_18;
    }
    return p_2366->g_1937;
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_809 p_2366->g_487 p_2366->g_488 p_2366->g_44 p_2366->g_972 p_2366->g_379 p_2366->g_674 p_2366->g_786 p_2366->g_118 p_2366->g_846 p_2366->g_377 p_2366->g_86 p_2366->g_630 p_2366->g_1035 p_2366->g_104 p_2366->g_740 p_2366->g_741 p_2366->g_17 p_2366->g_230.f3 p_2366->g_381 p_2366->g_905 p_2366->g_906 p_2366->g_1069 p_2366->g_789 p_2366->g_4 p_2366->g_845 p_2366->g_11 p_2366->g_1095 p_2366->g_1101 p_2366->g_1116 p_2366->g_959 p_2366->g_524 p_2366->g_663 p_2366->g_20 p_2366->g_1143 p_2366->g_910.f0 p_2366->g_526 p_2366->g_1182 p_2366->g_1185
 * writes: p_2366->g_809 p_2366->g_674 p_2366->g_786 p_2366->g_118 p_2366->g_11 p_2366->g_972 p_2366->g_331 p_2366->g_86 p_2366->g_105 p_2366->g_2 p_2366->g_230.f3 p_2366->g_381 p_2366->g_741 p_2366->g_153 p_2366->g_44 p_2366->g_1182
 */
int64_t  func_38(uint32_t  p_39, int32_t * p_40, int32_t  p_41, union U2  p_42, struct S3 * p_2366)
{ /* block id: 505 */
    uint32_t l_961 = 0x0A344BC6L;
    int32_t l_993 = 0x492E42FBL;
    int32_t l_995 = (-1L);
    int32_t l_998[3];
    uint8_t **l_1043 = &p_2366->g_846;
    uint8_t ***l_1042 = &l_1043;
    uint8_t l_1135 = 0x52L;
    union U1 l_1156 = {0x03E2L};
    int32_t ***l_1167 = &p_2366->g_768;
    int32_t l_1178[2];
    uint64_t *l_1245 = &p_2366->g_118;
    uint64_t **l_1320[5][8] = {{&p_2366->g_488,&p_2366->g_488,(void*)0,(void*)0,(void*)0,&p_2366->g_488,&p_2366->g_488,&p_2366->g_488},{&p_2366->g_488,&p_2366->g_488,(void*)0,(void*)0,(void*)0,&p_2366->g_488,&p_2366->g_488,&p_2366->g_488},{&p_2366->g_488,&p_2366->g_488,(void*)0,(void*)0,(void*)0,&p_2366->g_488,&p_2366->g_488,&p_2366->g_488},{&p_2366->g_488,&p_2366->g_488,(void*)0,(void*)0,(void*)0,&p_2366->g_488,&p_2366->g_488,&p_2366->g_488},{&p_2366->g_488,&p_2366->g_488,(void*)0,(void*)0,(void*)0,&p_2366->g_488,&p_2366->g_488,&p_2366->g_488}};
    int32_t *l_1342 = &l_1178[0];
    int64_t **l_1379 = &p_2366->g_106[8][3][0];
    int16_t l_1504 = 0x0FB6L;
    int16_t l_1514 = 0x1E19L;
    int16_t l_1520[10] = {6L,6L,6L,6L,6L,6L,6L,6L,6L,6L};
    union U2 l_1550 = {-7L};
    int32_t *l_1585 = &p_2366->g_381;
    int32_t *l_1619 = (void*)0;
    int32_t *l_1620 = (void*)0;
    int32_t *l_1621 = &l_998[2];
    int32_t *l_1622[7];
    int64_t l_1623 = 0x11901E7ED52EFB20L;
    uint16_t l_1624[1];
    int i, j;
    for (i = 0; i < 3; i++)
        l_998[i] = 0x71044A06L;
    for (i = 0; i < 2; i++)
        l_1178[i] = 0x584F9EF1L;
    for (i = 0; i < 7; i++)
        l_1622[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_1624[i] = 0UL;
    l_961++;
    for (p_2366->g_809 = 15; (p_2366->g_809 < 30); p_2366->g_809 = safe_add_func_int8_t_s_s(p_2366->g_809, 1))
    { /* block id: 509 */
        uint32_t *l_975 = &p_2366->g_674;
        int32_t l_976 = 1L;
        int32_t l_977 = 0x0CA09141L;
        int32_t l_997 = 2L;
        uint32_t l_1026 = 4294967287UL;
        uint8_t ***l_1029 = (void*)0;
        l_977 ^= ((**p_2366->g_487) ^ ((safe_mod_func_uint8_t_u_u((((((-9L) ^ (l_976 = (((safe_mul_func_int16_t_s_s(0x0AD3L, ((safe_mod_func_int32_t_s_s(p_2366->g_972, (safe_add_func_uint32_t_u_u(0x92BA9CB9L, (((*l_975) = ((p_39 >= p_39) == (p_2366->g_379 >= 246UL))) != p_39))))) ^ l_961))) ^ 0x0662L) < 0x4681L))) != 4UL) >= p_2366->g_809) && (-1L)), l_961)) && l_961));
        if (l_961)
            break;
        for (p_2366->g_674 = 0; (p_2366->g_674 >= 30); p_2366->g_674++)
        { /* block id: 516 */
            int16_t l_994[4];
            int32_t l_996 = 0L;
            int i;
            for (i = 0; i < 4; i++)
                l_994[i] = (-6L);
            for (p_2366->g_786 = 0; (p_2366->g_786 <= 1); p_2366->g_786 += 1)
            { /* block id: 519 */
                uint64_t l_1024 = 3UL;
                int32_t l_1027 = 0x1F2713AAL;
                union U0 *l_1039[9] = {&p_2366->g_743,&p_2366->g_743,&p_2366->g_743,&p_2366->g_743,&p_2366->g_743,&p_2366->g_743,&p_2366->g_743,&p_2366->g_743,&p_2366->g_743};
                int i;
                for (p_2366->g_118 = 0; (p_2366->g_118 <= 1); p_2366->g_118 += 1)
                { /* block id: 522 */
                    int32_t *l_980 = (void*)0;
                    int32_t *l_981 = &l_976;
                    int32_t *l_982 = &l_976;
                    int32_t *l_983 = (void*)0;
                    int32_t *l_984 = &l_977;
                    int32_t *l_985 = &l_977;
                    int32_t *l_986 = (void*)0;
                    int32_t *l_987 = (void*)0;
                    int32_t *l_988 = &p_2366->g_11;
                    int32_t *l_989 = &l_976;
                    int32_t *l_990 = &l_976;
                    int32_t *l_991 = &p_2366->g_11;
                    int32_t *l_992[1];
                    uint64_t l_999 = 18446744073709551615UL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_992[i] = &p_2366->g_11;
                    --l_999;
                    for (l_995 = 0; (l_995 <= 1); l_995 += 1)
                    { /* block id: 526 */
                        uint64_t l_1010 = 0x1A70DBB2AA8EF4B3L;
                        uint64_t *l_1023[10][7] = {{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999},{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999},{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999},{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999},{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999},{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999},{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999},{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999},{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999},{(void*)0,&l_1010,&l_999,&p_2366->g_44,(void*)0,&p_2366->g_44,&l_999}};
                        uint32_t *l_1025 = &p_2366->g_972;
                        int i, j;
                        (*l_982) |= (safe_rshift_func_int8_t_s_u((safe_mod_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u((safe_mod_func_int64_t_s_s(l_1010, (safe_div_func_int64_t_s_s((((safe_mul_func_int8_t_s_s(((safe_div_func_int32_t_s_s((((((p_39 || (safe_rshift_func_int16_t_s_u(p_41, ((**p_2366->g_487) <= ((*p_2366->g_488) == (safe_mod_func_int8_t_s_s(0x11L, GROUP_DIVERGE(0, 1)))))))) > (safe_mod_func_int8_t_s_s((((*l_1025) |= ((0UL >= ((*l_991) = ((l_1024 = 1UL) , 1L))) , p_41)) == p_42.f0), p_41))) > l_1010) <= l_1026) > l_961), l_1010)) > 4294967295UL), (*p_2366->g_846))) | p_2366->g_86) | 0x6BL), (-9L))))), 3)), l_1027)), GROUP_DIVERGE(0, 1)));
                    }
                }
                for (l_995 = 2; (l_995 >= 0); l_995 -= 1)
                { /* block id: 535 */
                    int32_t *l_1028 = &l_997;
                    uint8_t ****l_1030 = &l_1029;
                    int64_t *l_1036 = &p_2366->g_2[1];
                    int16_t *l_1040 = &l_994[0];
                    int64_t *l_1041[5][3] = {{&p_2366->g_339,&p_2366->g_663,&p_2366->g_339},{&p_2366->g_339,&p_2366->g_663,&p_2366->g_339},{&p_2366->g_339,&p_2366->g_663,&p_2366->g_339},{&p_2366->g_339,&p_2366->g_663,&p_2366->g_339},{&p_2366->g_339,&p_2366->g_663,&p_2366->g_339}};
                    int32_t *l_1044 = (void*)0;
                    int32_t *l_1045 = (void*)0;
                    int32_t *l_1046 = &l_976;
                    int i, j, k;
                    (*l_1028) &= (-1L);
                    (*p_2366->g_630) = p_40;
                    (*l_1046) &= (((*l_1030) = l_1029) != ((((l_993 = (safe_sub_func_int8_t_s_s((((*l_1036) = (safe_rshift_func_uint8_t_u_s((0L & (p_2366->g_1035 , ((*p_2366->g_104) = 0x76B41034260EBE10L))), p_39))) , (safe_mul_func_int16_t_s_s((p_42 , ((*l_1040) |= ((*p_2366->g_740) != l_1039[4]))), 0x24BFL))), p_42.f0))) != (*l_1028)) == p_2366->g_17) , l_1042));
                }
            }
            return l_997;
        }
        for (p_2366->g_230.f3 = 19; (p_2366->g_230.f3 < (-3)); p_2366->g_230.f3--)
        { /* block id: 550 */
            uint32_t l_1059 = 5UL;
            for (p_2366->g_381 = 6; (p_2366->g_381 > 20); p_2366->g_381 = safe_add_func_uint8_t_u_u(p_2366->g_381, 9))
            { /* block id: 553 */
                int8_t l_1051 = 2L;
                int32_t *l_1052 = &l_998[2];
                int32_t *l_1053 = &l_998[2];
                int32_t l_1054[6] = {1L,0x6D969425L,1L,1L,0x6D969425L,1L};
                int32_t *l_1055 = &p_2366->g_11;
                int32_t *l_1056 = &l_1054[1];
                int32_t *l_1057 = &l_998[2];
                int32_t *l_1058 = &l_998[2];
                union U1 l_1062 = {65535UL};
                int i;
                --l_1059;
                atomic_and(&p_2366->l_atomic_reduction[0], ((l_1062 , (--(**p_2366->g_905))) < ((safe_mod_func_uint32_t_u_u((~(!(safe_add_func_uint64_t_u_u(p_2366->g_1069, 0x4052CBB47984B5A2L)))), ((*l_975) &= ((-3L) && p_42.f0)))) || p_41)) + get_linear_global_id());
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_2366->v_collective += p_2366->l_atomic_reduction[0];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
        }
    }
    for (p_2366->g_381 = 1; (p_2366->g_381 >= 0); p_2366->g_381 -= 1)
    { /* block id: 563 */
        int64_t l_1091 = 0x33D26FC7F589ECB1L;
        int32_t l_1092 = 0L;
        union U1 **l_1106 = &p_2366->g_469[0][0];
        union U1 ***l_1105[8];
        int32_t ***l_1169 = (void*)0;
        int8_t *l_1171 = &p_2366->g_8;
        int32_t l_1177[1];
        int16_t l_1211 = 0x0228L;
        union U0 **l_1236[6][10][4] = {{{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]}},{{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]}},{{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]}},{{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]}},{{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]}},{{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]},{&p_2366->g_741[0][4],&p_2366->g_741[0][4],&p_2366->g_741[0][0],&p_2366->g_741[0][4]}}};
        int8_t l_1281 = 0x58L;
        int32_t **l_1372 = &p_2366->g_1117[2][1];
        int64_t l_1380[1][8][7] = {{{(-3L),1L,1L,(-3L),0x2D1952515C4FDFF3L,0x36ED8C70F3C628E7L,0x4A59D6D408EECB6DL},{(-3L),1L,1L,(-3L),0x2D1952515C4FDFF3L,0x36ED8C70F3C628E7L,0x4A59D6D408EECB6DL},{(-3L),1L,1L,(-3L),0x2D1952515C4FDFF3L,0x36ED8C70F3C628E7L,0x4A59D6D408EECB6DL},{(-3L),1L,1L,(-3L),0x2D1952515C4FDFF3L,0x36ED8C70F3C628E7L,0x4A59D6D408EECB6DL},{(-3L),1L,1L,(-3L),0x2D1952515C4FDFF3L,0x36ED8C70F3C628E7L,0x4A59D6D408EECB6DL},{(-3L),1L,1L,(-3L),0x2D1952515C4FDFF3L,0x36ED8C70F3C628E7L,0x4A59D6D408EECB6DL},{(-3L),1L,1L,(-3L),0x2D1952515C4FDFF3L,0x36ED8C70F3C628E7L,0x4A59D6D408EECB6DL},{(-3L),1L,1L,(-3L),0x2D1952515C4FDFF3L,0x36ED8C70F3C628E7L,0x4A59D6D408EECB6DL}}};
        uint64_t *l_1425[2];
        union U2 l_1464 = {-1L};
        int32_t l_1521 = 0x3715CF35L;
        uint8_t l_1522[5];
        int64_t **l_1527 = &p_2366->g_104;
        uint8_t l_1582 = 0x84L;
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_1105[i] = &l_1106;
        for (i = 0; i < 1; i++)
            l_1177[i] = 0L;
        for (i = 0; i < 2; i++)
            l_1425[i] = &p_2366->g_118;
        for (i = 0; i < 5; i++)
            l_1522[i] = 0xEFL;
        for (p_2366->g_118 = 0; (p_2366->g_118 <= 1); p_2366->g_118 += 1)
        { /* block id: 566 */
            union U0 *l_1070 = &p_2366->g_779;
            int32_t l_1082[1];
            int8_t *l_1096 = (void*)0;
            union U1 l_1155 = {0x53D2L};
            uint64_t **l_1166[8][10][3] = {{{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488}},{{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488}},{{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488}},{{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488}},{{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488}},{{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488}},{{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488}},{{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488},{&p_2366->g_488,(void*)0,&p_2366->g_488}}};
            int32_t l_1175 = 1L;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1082[i] = 0x4E93F9BCL;
            (*p_2366->g_740) = l_1070;
            for (p_41 = 2; (p_41 >= 0); p_41 -= 1)
            { /* block id: 570 */
                int32_t *l_1071 = &l_993;
                union U1 l_1087 = {8UL};
                union U0 *l_1140 = &p_2366->g_1141;
                union U0 ***l_1148 = &p_2366->g_740;
                int8_t l_1163[9] = {4L,4L,4L,4L,4L,4L,4L,4L,4L};
                int16_t *l_1164[8][1] = {{&p_2366->g_379},{&p_2366->g_379},{&p_2366->g_379},{&p_2366->g_379},{&p_2366->g_379},{&p_2366->g_379},{&p_2366->g_379},{&p_2366->g_379}};
                uint32_t *l_1165 = &p_2366->g_972;
                int32_t ****l_1168 = &l_1167;
                int32_t *l_1170 = &l_998[2];
                int i, j;
                if ((((*l_1071) ^= (-4L)) && (safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(((((((safe_rshift_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(0x79F8L, 0x5E4CL)) , (safe_rshift_func_uint8_t_u_s((((&p_2366->g_469[6][0] == (((0x4674AD7CL != ((p_2366->g_789[p_2366->g_381] > (l_998[p_2366->g_118] ^ l_998[p_2366->g_381])) ^ (*l_1071))) ^ 65535UL) , (void*)0)) > p_39) | l_995), p_2366->g_4[8][5][1]))), l_998[2])) > p_42.f0) ^ l_1082[0]) >= p_39) , (*l_1071)) >= 0x74967807L), 15)), 2))))
                { /* block id: 572 */
                    union U1 *l_1088[5];
                    int32_t l_1093[8];
                    uint16_t l_1094 = 65535UL;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1088[i] = &l_1087;
                    for (i = 0; i < 8; i++)
                        l_1093[i] = 0L;
                    l_1094 = (((**p_2366->g_845) | ((((safe_rshift_func_int8_t_s_s(p_2366->g_4[1][4][0], (((((safe_div_func_int8_t_s_s(((l_1087 = ((p_41 | (*p_2366->g_488)) , l_1087)) , ((safe_rshift_func_uint8_t_u_u(p_42.f0, 5)) > (l_1091 = p_41))), 4UL)) & l_1092) >= l_1092) <= l_1093[3]) <= p_42.f0))) <= p_2366->g_11) ^ (*p_2366->g_846)) != (*l_1071))) , l_1091);
                }
                else
                { /* block id: 576 */
                    union U1 l_1107[1] = {{7UL}};
                    int32_t **l_1118 = &p_2366->g_1117[2][3];
                    int32_t **l_1119 = &p_2366->g_1117[3][9];
                    int32_t *l_1122 = &l_1092;
                    uint32_t l_1142 = 6UL;
                    int i;
                    (*p_2366->g_1095) = p_40;
                    for (p_2366->g_786 = 1; (p_2366->g_786 <= 6); p_2366->g_786 += 1)
                    { /* block id: 580 */
                        union U1 l_1108 = {65535UL};
                        uint32_t *l_1120 = &p_2366->g_809;
                        int32_t l_1121[7][5] = {{0x53EB0869L,0L,0x30177493L,0L,0x53EB0869L},{0x53EB0869L,0L,0x30177493L,0L,0x53EB0869L},{0x53EB0869L,0L,0x30177493L,0L,0x53EB0869L},{0x53EB0869L,0L,0x30177493L,0L,0x53EB0869L},{0x53EB0869L,0L,0x30177493L,0L,0x53EB0869L},{0x53EB0869L,0L,0x30177493L,0L,0x53EB0869L},{0x53EB0869L,0L,0x30177493L,0L,0x53EB0869L}};
                        int i, j;
                        l_993 = ((l_1122 = func_47(l_1096, (safe_rshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s(((p_42.f0 | (p_2366->g_1101 != l_1105[1])) , ((l_1108 = (l_1087 = l_1107[0])) , 0x6ED95BACL)), ((*l_1120) |= ((safe_div_func_int16_t_s_s((((~(p_42.f0 == (safe_unary_minus_func_int64_t_s((((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10), ((l_1118 = ((safe_lshift_func_int16_t_s_s(l_1107[0].f0, 7)) , p_2366->g_1116[0][4])) != l_1119))) & 0x9952L) < l_1082[0]))))) && l_995) < (*p_2366->g_488)), FAKE_DIVERGE(p_2366->group_0_offset, get_group_id(0), 10))) , 0x0747E507L)))), p_39)), l_1121[6][2], (*l_1071), p_2366)) != &l_998[p_2366->g_381]);
                        (*l_1071) = (safe_lshift_func_int16_t_s_s(p_2366->g_663, (((safe_add_func_uint64_t_u_u((l_998[2] ^ (*p_2366->g_846)), ((*p_2366->g_488) = ((safe_lshift_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(9UL, (+l_1135))), ((((((((void*)0 == &p_2366->g_488) > ((safe_mod_func_uint32_t_u_u(p_2366->g_20[1][2], (safe_lshift_func_int16_t_s_u(p_42.f0, 13)))) > 0x139DF13CL)) , l_1070) != l_1140) != l_1091) ^ FAKE_DIVERGE(p_2366->local_2_offset, get_local_id(2), 10)) || l_1082[0]))), 4)) ^ l_1142), p_2366->g_674)) && l_1108.f0)))) , GROUP_DIVERGE(0, 1)) <= p_42.f0)));
                        p_40 = p_40;
                        if (p_2366->g_1143[3][6][1])
                            break;
                    }
                    if ((*l_1071))
                        break;
                }
                (*l_1170) = (safe_rshift_func_int16_t_s_s((p_42.f0 = (l_1082[0] = (((*l_1168) = ((safe_lshift_func_int8_t_s_s((((l_1148 != (void*)0) >= p_42.f0) && (safe_mod_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u(((((((safe_add_func_int32_t_s_s((((((*l_1165) = ((((l_1156 = l_1155) , (safe_mul_func_int8_t_s_s(((((p_42.f0 < (l_993 = (((((*p_2366->g_906)++) | (((0UL | p_42.f0) || l_1163[7]) <= l_1091)) & 248UL) != l_995))) < 0x30L) > p_2366->g_910.f0) <= 0L), 0x6DL))) > 0x76D2B071L) && (*p_2366->g_906))) , (void*)0) == l_1166[6][9][1]) , p_41), l_998[1])) | GROUP_DIVERGE(1, 1)) | p_42.f0) == l_961) || (*p_2366->g_906)) >= 0x3954L), p_39)) >= l_1082[0]), 0xF499B014L))), p_2366->g_526)) , l_1167)) != l_1169))), 12));
                if (l_998[2])
                    break;
            }
            l_1082[0] = p_2366->g_789[p_2366->g_381];
            (*p_2366->g_1185) = func_47(l_1171, p_2366->g_20[(p_2366->g_118 + 5)][(p_2366->g_381 + 1)], (safe_unary_minus_func_uint8_t_u((l_998[p_2366->g_381] > (safe_add_func_uint16_t_u_u(((((*p_2366->g_488) >= ((++p_2366->g_1182) , ((*p_2366->g_488) < ((((p_41 ^ (((l_961 < (l_1156 , (&l_1043 != (void*)0))) | 5L) < (*p_2366->g_846))) , &p_2366->g_311) != (void*)0) >= p_39)))) != 0x3F8998080A8647A9L) ^ (*p_2366->g_488)), p_2366->g_118))))), p_39, p_2366);
        }
    }
    --l_1624[0];
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_959 p_2366->g_524
 * writes: p_2366->g_153 p_2366->g_331
 */
int32_t * func_47(int8_t * p_48, int64_t  p_49, uint8_t  p_50, int32_t  p_51, struct S3 * p_2366)
{ /* block id: 501 */
    int32_t *l_958[9][5][4] = {{{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]}},{{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]}},{{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]}},{{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]}},{{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]}},{{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]}},{{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]}},{{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]}},{{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]},{&p_2366->g_3[0],&p_2366->g_6,&p_2366->g_3[0],&p_2366->g_3[0]}}};
    int i, j, k;
    (*p_2366->g_959) = l_958[8][4][1];
    (*p_2366->g_524) = l_958[0][3][3];
    return l_958[3][1][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_645 p_2366->g_488 p_2366->g_44
 * writes: p_2366->g_11
 */
uint64_t  func_62(uint8_t * p_63, int8_t  p_64, struct S3 * p_2366)
{ /* block id: 324 */
    int32_t l_644 = 0x037B1F0DL;
    uint32_t l_654[8][6] = {{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL},{1UL,0x84489062L,4294967295UL,0x84489062L,1UL,1UL}};
    uint16_t l_655 = 65526UL;
    uint16_t *l_658 = &p_2366->g_165;
    uint16_t **l_657 = &l_658;
    union U2 l_659 = {0x25E7L};
    int32_t *l_662[2];
    union U2 *l_672 = &l_659;
    uint32_t *l_673 = &p_2366->g_674;
    union U0 *l_684 = &p_2366->g_290;
    union U0 **l_683[10];
    union U0 ***l_685 = &l_683[1];
    int64_t *l_688 = (void*)0;
    int64_t *l_689 = &p_2366->g_663;
    int16_t *l_690[8];
    uint64_t l_751 = 0x30806D77B3C3E270L;
    int32_t l_780 = 0x376161B2L;
    uint64_t l_898 = 0xA59E8593B52B46F4L;
    union U1 l_915 = {65533UL};
    int32_t *l_928[6] = {&p_2366->g_381,(void*)0,&p_2366->g_381,&p_2366->g_381,(void*)0,&p_2366->g_381};
    int8_t l_945[2][5] = {{6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L}};
    uint32_t l_953 = 0x218FB0D0L;
    int i, j;
    for (i = 0; i < 2; i++)
        l_662[i] = &p_2366->g_11;
    for (i = 0; i < 10; i++)
        l_683[i] = &l_684;
    for (i = 0; i < 8; i++)
        l_690[i] = (void*)0;
    (*p_2366->g_645) = (0x3B3DACE6L | l_644);
    return (*p_2366->g_488);
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_11 p_2366->g_630 p_2366->g_632 p_2366->g_44
 * writes: p_2366->g_11 p_2366->g_331 p_2366->g_153 p_2366->g_44
 */
uint8_t * func_65(int8_t * p_66, union U1  p_67, struct S3 * p_2366)
{ /* block id: 305 */
    int32_t *l_628 = &p_2366->g_11;
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
        (*p_2366->g_630) = l_628;
    }
    else
    { /* block id: 309 */
        int32_t *l_631 = (void*)0;
        (*p_2366->g_632) = l_631;
    }
    for (p_67.f2 = 0; (p_67.f2 <= 9); p_67.f2 = safe_add_func_uint8_t_u_u(p_67.f2, 7))
    { /* block id: 314 */
        int32_t *l_635 = &p_2366->g_11;
        int32_t *l_636[10] = {&p_2366->g_11,&p_2366->g_11,&p_2366->g_11,&p_2366->g_11,&p_2366->g_11,&p_2366->g_11,&p_2366->g_11,&p_2366->g_11,&p_2366->g_11,&p_2366->g_11};
        int i;
        l_639[4]++;
        if (p_67.f2)
            continue;
    }
    for (p_2366->g_44 = 0; (p_2366->g_44 >= 12); p_2366->g_44 = safe_add_func_int32_t_s_s(p_2366->g_44, 2))
    { /* block id: 320 */
        return &p_2366->g_377[1];
    }
    return &p_2366->g_377[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_17 p_2366->g_18 p_2366->g_6 p_2366->g_3 p_2366->g_11 p_2366->g_4 p_2366->g_44 p_2366->g_20 p_2366->g_118 p_2366->g_22 p_2366->g_86 p_2366->g_5 p_2366->g_154 p_2366->g_165 p_2366->g_2 p_2366->g_212 p_2366->g_221 p_2366->g_230 p_2366->g_104 p_2366->g_230.f0 p_2366->g_290 p_2366->g_57 p_2366->g_153 p_2366->g_105 p_2366->g_339 p_2366->g_379 p_2366->g_331 p_2366->g_309.f0 p_2366->g_398 p_2366->g_21 p_2366->g_377 p_2366->g_230.f1 p_2366->g_458 p_2366->g_309 p_2366->g_487 p_2366->g_492 p_2366->g_492.f0 p_2366->g_524 p_2366->g_526 p_2366->g_488 p_2366->g_558 p_2366->g_212.f0
 * writes: p_2366->g_17 p_2366->g_86 p_2366->g_104 p_2366->g_106 p_2366->g_118 p_2366->g_11 p_2366->g_44 p_2366->g_153 p_2366->g_165 p_2366->g_57 p_2366->g_18 p_2366->g_230.f0 p_2366->g_21 p_2366->g_377 p_2366->g_230.f1 p_2366->g_379 p_2366->g_311 p_2366->g_469 p_2366->g_331 p_2366->g_381
 */
union U0  func_68(int32_t  p_69, int32_t * p_70, uint32_t  p_71, int32_t  p_72, uint16_t  p_73, struct S3 * p_2366)
{ /* block id: 24 */
    int32_t *l_84 = &p_2366->g_4[1][4][0];
    uint8_t *l_143 = (void*)0;
    int32_t l_155 = (-1L);
    int32_t l_159[2][9][2] = {{{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL}},{{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL},{0x5456252AL,0x5456252AL}}};
    uint64_t *l_196 = &p_2366->g_44;
    uint64_t **l_195 = &l_196;
    uint8_t l_278 = 0x5FL;
    int16_t l_294 = 0x0E65L;
    int8_t l_296 = (-1L);
    int64_t l_340[3][9] = {{3L,3L,3L,3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L,3L,3L,3L}};
    union U2 *l_388[2][6][9] = {{{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309}},{{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309},{&p_2366->g_309,&p_2366->g_309,(void*)0,(void*)0,(void*)0,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309,&p_2366->g_309}}};
    int64_t *l_417[2];
    int64_t **l_430 = &p_2366->g_106[4][2][1];
    int64_t ***l_429 = &l_430;
    uint64_t l_499 = 0UL;
    int8_t l_514 = 5L;
    int32_t l_515 = 0L;
    union U1 *l_517 = &p_2366->g_230;
    uint16_t l_580 = 0xE1D3L;
    uint64_t *l_583 = &p_2366->g_118;
    int32_t l_623 = 0x25DCBE47L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_417[i] = &l_340[0][2];
    for (p_2366->g_17 = 0; (p_2366->g_17 <= 0); p_2366->g_17 += 1)
    { /* block id: 27 */
        int64_t *l_85 = &p_2366->g_86;
        int32_t l_91 = 0x1A4EABE0L;
        uint8_t *l_144 = &p_2366->g_57;
        uint64_t *l_149[10] = {&p_2366->g_44,&p_2366->g_44,&p_2366->g_44,&p_2366->g_44,&p_2366->g_44,&p_2366->g_44,&p_2366->g_44,&p_2366->g_44,&p_2366->g_44,&p_2366->g_44};
        uint64_t **l_148[2][8] = {{&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2]},{&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2],&l_149[2]}};
        int32_t l_157[4] = {(-2L),(-2L),(-2L),(-2L)};
        int32_t l_189[8][2][1] = {{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}},{{2L},{2L}}};
        int32_t **l_202 = &p_2366->g_153;
        int64_t l_282 = 6L;
        uint32_t l_297[8][7] = {{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL},{4294967286UL,0UL,4294967288UL,1UL,4294967288UL,0UL,4294967286UL}};
        int32_t *l_303[9][6] = {{&l_189[7][1][0],(void*)0,(void*)0,&p_2366->g_4[4][3][0],(void*)0,&p_2366->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_2366->g_4[4][3][0],(void*)0,&p_2366->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_2366->g_4[4][3][0],(void*)0,&p_2366->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_2366->g_4[4][3][0],(void*)0,&p_2366->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_2366->g_4[4][3][0],(void*)0,&p_2366->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_2366->g_4[4][3][0],(void*)0,&p_2366->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_2366->g_4[4][3][0],(void*)0,&p_2366->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_2366->g_4[4][3][0],(void*)0,&p_2366->g_4[4][3][0]},{&l_189[7][1][0],(void*)0,(void*)0,&p_2366->g_4[4][3][0],(void*)0,&p_2366->g_4[4][3][0]}};
        uint32_t l_304 = 0x611A5F4CL;
        union U2 *l_308 = &p_2366->g_309;
        int32_t l_346 = 0x0CE73A03L;
        union U0 *l_432 = &p_2366->g_290;
        union U0 **l_431 = &l_432;
        int i, j, k;
        if ((p_2366->g_18 ^ (safe_sub_func_int16_t_s_s((((((((((safe_mul_func_uint8_t_u_u(1UL, p_2366->g_6)) > (func_78(l_84, p_73, l_85, (p_2366->g_3[0] != (safe_add_func_int8_t_s_s(0x00L, ((!((safe_div_func_uint64_t_u_u((((void*)0 == &p_2366->g_8) & 18446744073709551612UL), p_69)) , p_2366->g_11)) != l_91)))), (*l_84), p_2366) , 0L)) & 0x5964L) & (-1L)) <= p_2366->g_44) != (*l_84)) || p_2366->g_20[1][2]) >= p_72) <= p_2366->g_4[6][3][1]), 0x0314L))))
        { /* block id: 30 */
            int32_t *l_93[7][1][3] = {{{(void*)0,&p_2366->g_4[8][0][0],&p_2366->g_3[0]}},{{(void*)0,&p_2366->g_4[8][0][0],&p_2366->g_3[0]}},{{(void*)0,&p_2366->g_4[8][0][0],&p_2366->g_3[0]}},{{(void*)0,&p_2366->g_4[8][0][0],&p_2366->g_3[0]}},{{(void*)0,&p_2366->g_4[8][0][0],&p_2366->g_3[0]}},{{(void*)0,&p_2366->g_4[8][0][0],&p_2366->g_3[0]}},{{(void*)0,&p_2366->g_4[8][0][0],&p_2366->g_3[0]}}};
            uint64_t *l_96 = &p_2366->g_44;
            int64_t l_232[7][3] = {{3L,3L,0L},{3L,3L,0L},{3L,3L,0L},{3L,3L,0L},{3L,3L,0L},{3L,3L,0L},{3L,3L,0L}};
            uint32_t l_285[10];
            int i, j, k;
            for (i = 0; i < 10; i++)
                l_285[i] = 0x32B7D9B0L;
            p_69 &= 0x7E8BA164L;
            for (p_2366->g_86 = 0; (p_2366->g_86 <= 0); p_2366->g_86 += 1)
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
                if (((safe_div_func_int64_t_s_s(((l_96 == ((*l_98) = l_97[1][3])) != (((((safe_mul_func_uint16_t_u_u((3UL || GROUP_DIVERGE(2, 1)), 0x299DL)) <= p_73) , ((safe_mul_func_int8_t_s_s(p_2366->g_4[0][2][1], 0x55L)) != ((p_2366->g_106[8][3][0] = (p_2366->g_104 = &p_2366->g_86)) == (void*)0))) && 0xBB9AL) , 0x55L)), 0x6C7AF4A4090D02F7L)) | l_91))
                { /* block id: 38 */
                    int32_t **l_108[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_108[i] = (void*)0;
                    l_93[3][0][1] = l_84;
                }
                else
                { /* block id: 40 */
                    uint64_t *l_117 = &p_2366->g_118;
                    int32_t l_145 = 0x2E7AF9F9L;
                    l_147 &= (safe_rshift_func_uint16_t_u_s(((((*p_70) > (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(((l_91 = ((safe_div_func_uint64_t_u_u(((++(*l_117)) , GROUP_DIVERGE(1, 1)), (l_121[0] = l_121[0]))) ^ (safe_mul_func_int8_t_s_s(((((safe_add_func_uint64_t_u_u((safe_mod_func_int16_t_s_s((((safe_mul_func_uint8_t_u_u(((8UL ^ ((safe_mul_func_int16_t_s_s(((((p_2366->g_11 ^= 0L) , ((p_72 || ((--(*l_96)) ^ (p_2366->g_11 == 0x14615860L))) , 0x39D5B4B6L)) , (safe_div_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_u((l_143 == l_144), l_134)), p_71)), (*p_70)))) | l_91), GROUP_DIVERGE(0, 1))) ^ l_145)) || p_73), (-5L))) | l_146[5]) >= p_2366->g_22[0][0][3]), p_73)), p_69)) && p_73) != 18446744073709551615UL) | p_72), l_146[5])))) >= (*l_84)), (*l_84))), 249UL))) >= FAKE_DIVERGE(p_2366->group_0_offset, get_group_id(0), 10)) , 0x8CF9L), p_2366->g_86));
                    p_70 = &p_2366->g_4[1][4][0];
                }
                if ((p_2366->g_5 , (((void*)0 != l_148[0][0]) < p_2366->g_6)))
                { /* block id: 49 */
                    for (p_2366->g_118 = 0; (p_2366->g_118 <= 4); p_2366->g_118 += 1)
                    { /* block id: 52 */
                        int32_t **l_150 = &l_93[3][0][1];
                        int i, j, k;
                        (*l_150) = l_93[(p_2366->g_86 + 5)][p_2366->g_17][p_2366->g_86];
                        if (p_2366->g_22[p_2366->g_86][p_2366->g_118][p_2366->g_118])
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
                        int64_t **l_177 = &p_2366->g_106[2][0][0];
                        int64_t ***l_178 = &l_103[2];
                        int16_t *l_187 = (void*)0;
                        int16_t *l_188[5] = {&p_2366->g_21,&p_2366->g_21,&p_2366->g_21,&p_2366->g_21,&p_2366->g_21};
                        int i, j, k;
                        (*p_2366->g_154) = l_93[(p_2366->g_86 + 2)][p_2366->g_86][l_91];
                        --p_2366->g_165;
                        l_189[3][0][0] |= ((safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u((0UL ^ ((0x448CFC1C320AB5C3L && (safe_rshift_func_uint8_t_u_u((safe_mod_func_int16_t_s_s(((+p_2366->g_22[p_2366->g_17][(p_2366->g_86 + 4)][(p_2366->g_17 + 3)]) && (safe_unary_minus_func_uint16_t_u(((((((((*l_178) = l_177) != &p_2366->g_106[8][3][0]) == (l_157[0] = (safe_rshift_func_uint8_t_u_s((safe_div_func_uint32_t_u_u(((*p_70) >= (safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((p_73 = 0xF68BL), (&l_155 == &l_161))), p_2366->g_3[0]))), 4294967295UL)), (*l_84))))) & p_2366->g_118) , 0UL) <= p_2366->g_20[8][1]) ^ 5L)))), l_156)), GROUP_DIVERGE(1, 1)))) >= l_158)), (-8L))), 8UL)) > p_2366->g_2[0]);
                        if ((*l_84))
                            continue;
                    }
                    p_69 = (safe_rshift_func_uint8_t_u_s(0UL, (safe_lshift_func_int16_t_s_u(p_72, ((l_98 = l_194) != l_195)))));
                }
                for (p_73 = 0; (p_73 <= 2); p_73 += 1)
                { /* block id: 73 */
                    p_69 = ((p_2366->g_106[3][1][1] = l_149[3]) != (void*)0);
                    l_91 &= (safe_lshift_func_uint8_t_u_u(0x9FL, l_121[0]));
                }
            }
            for (l_91 = 2; (l_91 >= 0); l_91 -= 1)
            { /* block id: 81 */
                int16_t l_201 = 0x3CC8L;
                int64_t *l_219 = &p_2366->g_86;
                int64_t **l_220 = &p_2366->g_104;
                int16_t l_222 = 0x3A00L;
                int32_t l_259 = 0L;
                int32_t l_284[9] = {0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL,0x22DB01ACL};
                int i;
                l_222 = (((safe_mul_func_uint16_t_u_u(0x151BL, (l_201 > (FAKE_DIVERGE(p_2366->global_2_offset, get_global_id(2), 10) > ((&p_2366->g_153 == l_202) == (safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2366->global_1_offset, get_global_id(1), 10), (safe_mod_func_int64_t_s_s((safe_sub_func_uint16_t_u_u((p_2366->g_4[1][4][0] , (((safe_lshift_func_uint16_t_u_u(l_201, 11)) != (safe_unary_minus_func_int8_t_s(((p_2366->g_212[0] , ((safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((((safe_rshift_func_int8_t_s_s(((0x606FL <= (((*l_220) = l_219) == l_149[2])) & p_2366->g_221), 2)) > 0x12L) && p_2366->g_22[0][3][3]), l_201)), 11)) , l_143)) == l_143)))) <= 65535UL)), p_73)), (-1L)))))))))) & p_73) , (*p_70));
                if ((*p_70))
                    continue;
                if ((*p_70))
                { /* block id: 85 */
                    uint64_t l_227 = 18446744073709551615UL;
                    int32_t l_231 = 2L;
                    for (p_2366->g_57 = 0; (p_2366->g_57 <= 0); p_2366->g_57 += 1)
                    { /* block id: 88 */
                        (*l_202) = &p_69;
                    }
                    l_231 = (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(((l_227 || (safe_add_func_uint16_t_u_u((((void*)0 != &l_227) <= (p_2366->g_230 , (p_2366->g_57 = p_72))), 65532UL))) > p_73), 4)), p_2366->g_22[0][0][3]));
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
                    for (p_2366->g_86 = 0; (p_2366->g_86 <= 2); p_2366->g_86 += 1)
                    { /* block id: 101 */
                        int32_t l_258 = 7L;
                        uint64_t *l_262 = &p_2366->g_118;
                        uint8_t *l_275 = &p_2366->g_57;
                        int32_t l_279[1][4][9] = {{{1L,4L,0x0F1E4706L,(-1L),4L,(-1L),0x0F1E4706L,4L,1L},{1L,4L,0x0F1E4706L,(-1L),4L,(-1L),0x0F1E4706L,4L,1L},{1L,4L,0x0F1E4706L,(-1L),4L,(-1L),0x0F1E4706L,4L,1L},{1L,4L,0x0F1E4706L,(-1L),4L,(-1L),0x0F1E4706L,4L,1L}}};
                        uint16_t *l_280[1][10][6] = {{{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0},{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0},{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0},{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0},{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0},{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0},{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0},{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0},{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0},{&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0,&p_2366->g_230.f0}}};
                        int16_t *l_281 = &p_2366->g_18;
                        int i, j, k;
                        l_259 &= (p_2366->g_22[p_2366->g_17][(p_2366->g_17 + 3)][p_2366->g_17] == (safe_add_func_uint32_t_u_u(0x8909F1A7L, (((safe_add_func_int16_t_s_s((safe_div_func_uint8_t_u_u((1UL | (safe_div_func_int64_t_s_s(p_73, (safe_sub_func_uint32_t_u_u((((((((((18446744073709551608UL <= GROUP_DIVERGE(0, 1)) < p_73) == (safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(p_71, 11)), (((safe_add_func_uint64_t_u_u(((((safe_lshift_func_uint16_t_u_s(((l_255 , (safe_add_func_uint8_t_u_u(((void*)0 == &p_2366->g_153), GROUP_DIVERGE(1, 1)))) ^ l_255.f0), 11)) == 9UL) == p_2366->g_6) < 1UL), p_69)) , &p_2366->g_105) == (void*)0)))) > (*p_2366->g_104)) || p_2366->g_86) & 0L) ^ l_258) , l_258) || p_69), l_258))))), p_73)), 0x6C84L)) && l_258) >= 3L))));
                        l_282 = ((safe_rshift_func_int16_t_s_u(((*l_281) = (p_2366->g_3[0] == (p_2366->g_165 = ((p_69 = (l_279[0][2][2] &= (p_71 >= ((((!(((**l_195) = (l_262 != (void*)0)) == (((((safe_mul_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(((safe_add_func_int8_t_s_s((((((safe_mod_func_int64_t_s_s(((((safe_div_func_uint16_t_u_u(((l_275 != ((safe_rshift_func_int8_t_s_s(((-1L) >= (((0x177A25CE23C8D7FFL <= ((*p_70) == p_2366->g_3[0])) , l_201) & 0x17L)), p_2366->g_22[0][1][3])) , l_143)) >= 1L), l_201)) >= p_72) , l_196) == (void*)0), p_72)) && 0L) || p_2366->g_221) , p_2366->g_118) > 0x7B0FL), p_69)) & l_258), 0x8DF6ADCC6596B18BL)), l_278)) < 0x05L) , p_69) != p_71) <= l_255.f0))) , &p_69) == (void*)0) || p_69)))) , p_69)))), p_73)) >= l_255.f0);
                        --l_285[8];
                    }
                    for (p_2366->g_230.f0 = 0; (p_2366->g_230.f0 <= 7); p_2366->g_230.f0 += 1)
                    { /* block id: 113 */
                        union U0 *l_289 = &p_2366->g_290;
                        union U0 **l_288 = &l_289;
                        int i;
                        (*l_202) = &l_159[1][4][1];
                        (*l_288) = (void*)0;
                        (*l_202) = &p_69;
                        if (l_285[(p_2366->g_230.f0 + 1)])
                            break;
                    }
                    for (p_2366->g_18 = 0; (p_2366->g_18 <= 2); p_2366->g_18 += 1)
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
                return p_2366->g_290;
            }
        }
        l_304++;
        for (p_2366->g_57 = 0; (p_2366->g_57 <= 2); p_2366->g_57 += 1)
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
                l_455[i] = &p_2366->g_118;
            if ((*p_70))
                break;
            for (p_2366->g_86 = 2; (p_2366->g_86 >= 0); p_2366->g_86 -= 1)
            { /* block id: 146 */
                uint32_t l_328 = 0xE2BD67CFL;
                int32_t l_337 = 5L;
                int32_t l_347 = 0x4797B08FL;
                int8_t l_348 = 0x21L;
                int32_t l_349 = 0x7F7343FEL;
                uint16_t l_352 = 0UL;
                int32_t *l_355[1][7][7] = {{{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349},{&l_349,(void*)0,(void*)0,&l_349,&l_157[3],&l_349,&l_349}}};
                uint32_t *l_376[10][10] = {{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0},{&l_297[5][6],(void*)0,(void*)0,(void*)0,(void*)0,&l_297[5][6],&l_328,&l_297[1][1],(void*)0,(void*)0}};
                uint8_t *l_378[4][6] = {{(void*)0,&l_278,&p_2366->g_57,(void*)0,&p_2366->g_57,&l_278},{(void*)0,&l_278,&p_2366->g_57,(void*)0,&p_2366->g_57,&l_278},{(void*)0,&l_278,&p_2366->g_57,(void*)0,&p_2366->g_57,&l_278},{(void*)0,&l_278,&p_2366->g_57,(void*)0,&p_2366->g_57,&l_278}};
                int32_t *l_380[9][4] = {{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381}};
                int16_t *l_382 = &p_2366->g_379;
                union U2 *l_397 = &p_2366->g_309;
                int16_t l_413[5][2][6] = {{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}},{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}},{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}},{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}},{{0x274FL,(-6L),0L,0L,0x6527L,0L},{0x274FL,(-6L),0L,0L,0x6527L,0L}}};
                int64_t *l_415 = &l_282;
                uint64_t l_450 = 0x9ECE949759AFA7BBL;
                int i, j, k;
                for (p_2366->g_165 = 0; (p_2366->g_165 <= 2); p_2366->g_165 += 1)
                { /* block id: 149 */
                    union U2 *l_312[6];
                    uint8_t *l_322 = &p_2366->g_230.f1;
                    uint8_t *l_323 = &p_2366->g_309.f1;
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
                        l_312[i] = &p_2366->g_309;
                    for (p_2366->g_21 = 0; (p_2366->g_21 <= 2); p_2366->g_21 += 1)
                    { /* block id: 152 */
                        volatile int32_t l_307 = 0L;/* VOLATILE GLOBAL l_307 */
                        int i, j, k;
                        l_307 = p_2366->g_22[p_2366->g_17][p_2366->g_57][(p_2366->g_57 + 1)];
                        l_312[4] = l_308;
                    }
                    (*l_202) = &p_69;
                    (*p_2366->g_153) = 0x6500A1E0L;
                    if ((0x67B7C12FL ^ (((safe_lshift_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) > ((*l_84) != ((*l_327) ^= ((*p_70) <= (255UL == (safe_mul_func_int16_t_s_s((!p_2366->g_44), (((safe_unary_minus_func_uint8_t_u((l_324 ^= (FAKE_DIVERGE(p_2366->global_1_offset, get_global_id(1), 10) | (9UL ^ (0x2317L < (safe_mod_func_int8_t_s_s(p_2366->g_22[0][0][3], (+(p_73 ^ (*p_70))))))))))) & FAKE_DIVERGE(p_2366->local_2_offset, get_local_id(2), 10)) > (**l_202))))))))), 1)) != l_328) ^ l_329)))
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
                if ((safe_div_func_int16_t_s_s(((*l_382) = (safe_mod_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((safe_add_func_int16_t_s_s((((l_336[0][4] = (((safe_mul_func_int8_t_s_s((safe_sub_func_int8_t_s_s((-10L), (p_2366->g_230.f1 = ((p_2366->g_20[6][0] , GROUP_DIVERGE(0, 1)) != (p_69 || ((GROUP_DIVERGE(1, 1) , (-8L)) >= (p_2366->g_377[1] = (safe_lshift_func_uint8_t_u_u((p_72 | ((safe_mul_func_uint8_t_u_u((p_72 | (safe_add_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u((p_2366->g_105 | p_2366->g_11), 7L)), 18446744073709551608UL))), p_2366->g_339)) <= (*p_2366->g_104))), 6))))))))), 0x4BL)) == (*p_70)) != p_2366->g_379)) , p_72) < p_2366->g_339), GROUP_DIVERGE(2, 1))), 2)), (*l_84)))), p_2366->g_3[0])))
                { /* block id: 175 */
                    uint32_t l_383 = 0x2F84F1ECL;
                    union U2 **l_389[8][1][1];
                    int32_t **l_392 = &p_2366->g_331[0][0];
                    int i, j, k;
                    for (i = 0; i < 8; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_389[i][j][k] = &p_2366->g_311;
                        }
                    }
                    l_383 = ((p_72 && 0x9374L) | 0x99L);
                    p_69 = ((p_2366->g_118 , (*l_84)) <= (safe_rshift_func_int16_t_s_s((+(((((p_2366->g_377[5] = p_73) == (safe_lshift_func_int16_t_s_s(p_2366->g_221, 8))) < (l_336[1][1] < (p_69 < (((((p_2366->g_311 = l_388[0][3][5]) != (((safe_div_func_uint8_t_u_u((l_334 ^= ((&l_84 != l_392) , p_2366->g_379)), 7UL)) ^ p_2366->g_105) , l_388[0][3][8])) , (**l_392)) && p_2366->g_4[1][4][0]) != p_2366->g_309.f0)))) == p_72) && (**l_392))), l_335[1][0][2])));
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
                    if (((p_71 ^ (((*l_396) = (void*)0) != l_397)) == (((p_2366->g_398 != (safe_lshift_func_uint8_t_u_u(((l_404 &= (safe_rshift_func_int8_t_s_u((l_334 = 0L), 4))) , ((safe_add_func_int16_t_s_s(((((p_2366->g_21 >= (safe_add_func_int64_t_s_s(((*l_414) = ((*p_70) < ((((((2L & ((safe_div_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(p_71, l_335[4][0][1])), (*l_84))) , l_413[3][1][3])) || p_2366->g_57) & p_69) | p_73) <= 6UL) != p_2366->g_6))), p_69))) && 18446744073709551612UL) >= (*p_2366->g_104)) >= 0x22AE26D85EE7B512L), p_71)) , p_2366->g_377[1])), 1))) , l_404) && 0x7CL)))
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
                        l_334 |= ((l_417[0] = l_415) != ((safe_mod_func_uint8_t_u_u((l_420 , (p_2366->g_230.f1 |= (p_2366->g_309.f0 >= (((safe_rshift_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u((~(p_2366->g_379 > (((((safe_add_func_uint8_t_u_u(((void*)0 != l_429), ((void*)0 != l_431))) && (safe_add_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s((l_404 = ((safe_lshift_func_int8_t_s_s(p_2366->g_377[1], l_404)) , p_73)), p_69)) < GROUP_DIVERGE(2, 1)), 0L))) > p_71) && p_2366->g_4[1][4][0]) < p_2366->g_86))), 2L)) < FAKE_DIVERGE(p_2366->local_1_offset, get_local_id(1), 10)), l_439)) && p_72) | l_440)))), p_72)) , (void*)0));
                        ++l_450;
                    }
                    else
                    { /* block id: 202 */
                        p_69 ^= (safe_div_func_int64_t_s_s(((~1UL) == ((*l_382) = p_71)), ((((void*)0 == l_455[1]) , (safe_lshift_func_uint16_t_u_s(((0L < 0xD8F5L) == (&p_2366->g_381 == &p_2366->g_381)), 8))) ^ ((p_2366->g_44 = GROUP_DIVERGE(2, 1)) ^ p_2366->g_105))));
                        return p_2366->g_458;
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
                    if (((p_2366->g_118 = FAKE_DIVERGE(p_2366->group_2_offset, get_group_id(2), 10)) , l_462))
                    { /* block id: 219 */
                        uint8_t l_464 = 1UL;
                        ++l_464;
                    }
                    else
                    { /* block id: 221 */
                        union U1 *l_467[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        union U1 **l_468[6][4][3] = {{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}},{{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]},{&l_467[1],&l_467[1],&l_467[1]}}};
                        int32_t *l_470[10][9][2] = {{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}},{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}},{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}},{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}},{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}},{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}},{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}},{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}},{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}},{{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]},{&l_189[3][0][0],&p_2366->g_3[0]}}};
                        int i, j, k;
                        p_2366->g_469[8][0] = l_467[1];
                        if (l_336[4][4])
                            break;
                        (*l_202) = l_470[0][2][1];
                    }
                    l_336[0][1] &= (safe_rshift_func_int16_t_s_u(((safe_add_func_uint8_t_u_u(((&p_73 == ((*l_475) = (void*)0)) == ((((*l_478) = &l_388[0][3][5]) == (void*)0) & ((safe_lshift_func_int8_t_s_s((p_2366->g_44 <= ((+(l_482 == (((*l_308) , (safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((p_2366->g_20[2][0] | ((((p_70 != (void*)0) ^ p_2366->g_44) <= 0x44L) , p_72)), 6)), (*l_84)))) , (void*)0))) != (*p_70))), l_335[1][0][1])) , p_73))), 0x9CL)) , l_439), p_73));
                    if (l_420.f1)
                        break;
                }
            }
            for (l_459.f2 = 0; (l_459.f2 <= 2); l_459.f2 += 1)
            { /* block id: 234 */
                int32_t l_491 = 0x3EEFCBBAL;
                for (p_2366->g_21 = 2; (p_2366->g_21 >= 0); p_2366->g_21 -= 1)
                { /* block id: 237 */
                    int64_t l_489 = 0x19E28945E321BE75L;
                    int32_t *l_490 = &l_336[4][1];
                    l_336[3][5] ^= ((*l_84) > ((*p_70) ^ (+((void*)0 == p_2366->g_487))));
                    for (l_420.f0 = 5; (l_420.f0 >= 1); l_420.f0 -= 1)
                    { /* block id: 241 */
                        l_489 = 0x4151D04EL;
                    }
                    (*l_202) = l_490;
                    l_491 = (l_334 = ((*p_2366->g_153) = (-9L)));
                }
                return p_2366->g_492;
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
        union U1 *l_516 = &p_2366->g_230;
        int32_t l_535 = 0x6D7338EDL;
        uint32_t l_538[7] = {0UL,2UL,0UL,0UL,2UL,0UL,0UL};
        int64_t **l_541[9][8][1] = {{{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]}},{{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]}},{{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]}},{{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]}},{{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]}},{{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]}},{{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]}},{{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]}},{{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]},{&p_2366->g_106[8][3][0]}}};
        int i, j, k;
        ++l_499;
        l_515 &= ((*l_498) ^= ((((safe_add_func_uint16_t_u_u((((p_69 > (safe_rshift_func_uint16_t_u_u(((safe_add_func_int16_t_s_s(p_2366->g_492.f0, 0x53B9L)) < (((safe_lshift_func_int8_t_s_u(p_2366->g_86, p_2366->g_105)) != (&p_2366->g_381 == (l_514 , (void*)0))) == 0x27L)), 5))) <= p_2366->g_4[1][4][0]) != 0x769FL), (*l_494))) > 0UL) != p_2366->g_86) > (*p_2366->g_104)));
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
            for (p_2366->g_118 = 0; (p_2366->g_118 < 1); p_2366->g_118 = safe_add_func_int64_t_s_s(p_2366->g_118, 4))
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
                int32_t *l_578 = &p_2366->g_11;
                int32_t *l_579[1];
                uint64_t *l_584 = &p_2366->g_118;
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
                    (*p_2366->g_524) = l_523;
                    (*l_495) = ((*l_498) = (l_525[1] | p_2366->g_526));
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
                    for (p_2366->g_17 = 0; (p_2366->g_17 < (-11)); p_2366->g_17 = safe_sub_func_int16_t_s_s(p_2366->g_17, 1))
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
                    (*l_498) = ((&p_2366->g_104 == (p_73 , l_541[4][3][0])) || ((++(*p_2366->g_488)) || (((l_544 != l_545) != (safe_rshift_func_uint8_t_u_s(p_2366->g_44, 2))) , ((((!(safe_mul_func_int16_t_s_s((p_69 > (safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(((p_2366->g_3[0] && (((*l_557) = l_554) != &p_2366->g_377[5])) , 0x34L), p_69)), p_73))), l_522))) , 0UL) >= 6UL) & 0x56L))));
                    return p_2366->g_558;
                }
                l_580++;
                (*l_564) = ((~(l_583 == l_584)) >= (((*l_566) & p_73) & ((safe_mul_func_uint8_t_u_u(((&p_70 != ((*l_593) = ((safe_mod_func_int64_t_s_s(((safe_mul_func_int8_t_s_s((l_525[3] && p_2366->g_212[0].f0), (safe_lshift_func_uint8_t_u_u(0UL, 3)))) != ((p_72 , l_522) > (-1L))), p_73)) , (void*)0))) >= 1UL), p_69)) | 0x18EA8DF4L)));
                (*l_595) = &l_159[1][3][0];
            }
            for (p_2366->g_381 = 0; (p_2366->g_381 <= 1); p_2366->g_381 += 1)
            { /* block id: 289 */
                int32_t l_596[10] = {0x37B484E7L,1L,0x37B484E7L,0x37B484E7L,1L,0x37B484E7L,0x37B484E7L,1L,0x37B484E7L,0x37B484E7L};
                int32_t l_597 = 0x0EF48B12L;
                int32_t *l_598 = &l_155;
                int32_t *l_599 = &p_2366->g_11;
                int32_t *l_600[2][10][3] = {{{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572}},{{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572},{&l_569,(void*)0,&l_572}}};
                int i, j, k;
                l_601[4][2]--;
                (*l_598) &= 0x000B7603L;
                for (p_2366->g_230.f0 = 0; (p_2366->g_230.f0 <= 1); p_2366->g_230.f0 += 1)
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
        int32_t *l_611 = &p_2366->g_11;
        int32_t *l_612 = &l_155;
        int32_t *l_613 = &l_155;
        int32_t *l_614 = &p_2366->g_11;
        int32_t *l_615 = &l_155;
        int32_t *l_616 = &p_2366->g_11;
        int32_t *l_617 = (void*)0;
        int32_t *l_618 = &p_2366->g_11;
        int32_t *l_619 = &l_155;
        int32_t *l_620 = &l_155;
        int32_t *l_621 = &p_2366->g_11;
        int32_t *l_622[3];
        uint32_t l_624[6][7] = {{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL},{0x395A9F4DL,0x6BFF1704L,0UL,0UL,0x6BFF1704L,0UL,0UL}};
        int i, j;
        for (i = 0; i < 3; i++)
            l_622[i] = &l_159[1][8][1];
        ++l_624[1][5];
    }
    return p_2366->g_558;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_78(int32_t * p_79, int8_t  p_80, int64_t * p_81, uint64_t  p_82, int32_t  p_83, struct S3 * p_2366)
{ /* block id: 28 */
    int32_t l_92[9] = {(-7L),0x4B84AAFBL,(-7L),(-7L),0x4B84AAFBL,(-7L),(-7L),0x4B84AAFBL,(-7L)};
    int i;
    return l_92[7];
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S3 c_2367;
    struct S3* p_2366 = &c_2367;
    struct S3 c_2368 = {
        {0x2B5934215E1ABE8FL,0x2B5934215E1ABE8FL,0x2B5934215E1ABE8FL,0x2B5934215E1ABE8FL}, // p_2366->g_2
        {0x678DC2A8L}, // p_2366->g_3
        {{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}},{{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L},{0x23CCDE6BL,0L}}}, // p_2366->g_4
        0x2CA335C2L, // p_2366->g_5
        (-10L), // p_2366->g_6
        1L, // p_2366->g_8
        0x11B05987L, // p_2366->g_11
        0x3533B016L, // p_2366->g_17
        (-5L), // p_2366->g_18
        {{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L},{(-3L),0x47FCL,0L}}, // p_2366->g_20
        0x04A5L, // p_2366->g_21
        {{{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL},{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL},{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL},{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL},{0x9123EBAA2DF500C3L,9UL,0x9123EBAA2DF500C3L,0x9123EBAA2DF500C3L,9UL}}}, // p_2366->g_22
        {4L,4L,4L,4L}, // p_2366->g_37
        0xC8A73D9AAD11CF51L, // p_2366->g_44
        0xE1L, // p_2366->g_57
        0L, // p_2366->g_86
        0x746EBA213425B464L, // p_2366->g_105
        &p_2366->g_105, // p_2366->g_104
        {{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}},{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}},{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}},{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}},{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}},{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}},{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}},{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}},{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}},{{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0},{&p_2366->g_86,(void*)0,(void*)0}}}, // p_2366->g_106
        (void*)0, // p_2366->g_107
        0UL, // p_2366->g_118
        &p_2366->g_6, // p_2366->g_153
        {&p_2366->g_153,&p_2366->g_153}, // p_2366->g_152
        &p_2366->g_153, // p_2366->g_154
        0UL, // p_2366->g_165
        {{0L},{0x57401777L},{0L},{0L},{0x57401777L},{0L},{0L},{0x57401777L}}, // p_2366->g_212
        0x49FB170E3E7A4D66L, // p_2366->g_221
        {0xF2CEL}, // p_2366->g_230
        {-10L}, // p_2366->g_290
        {0x22E9L}, // p_2366->g_309
        &p_2366->g_309, // p_2366->g_311
        {{{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311}},{{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311}},{{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311},{&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311,&p_2366->g_311}}}, // p_2366->g_310
        {{&p_2366->g_4[7][1][0]}}, // p_2366->g_331
        {{&p_2366->g_331[0][0],(void*)0,(void*)0,&p_2366->g_331[0][0],(void*)0,&p_2366->g_331[0][0],(void*)0},{&p_2366->g_331[0][0],(void*)0,(void*)0,&p_2366->g_331[0][0],(void*)0,&p_2366->g_331[0][0],(void*)0},{&p_2366->g_331[0][0],(void*)0,(void*)0,&p_2366->g_331[0][0],(void*)0,&p_2366->g_331[0][0],(void*)0},{&p_2366->g_331[0][0],(void*)0,(void*)0,&p_2366->g_331[0][0],(void*)0,&p_2366->g_331[0][0],(void*)0},{&p_2366->g_331[0][0],(void*)0,(void*)0,&p_2366->g_331[0][0],(void*)0,&p_2366->g_331[0][0],(void*)0},{&p_2366->g_331[0][0],(void*)0,(void*)0,&p_2366->g_331[0][0],(void*)0,&p_2366->g_331[0][0],(void*)0},{&p_2366->g_331[0][0],(void*)0,(void*)0,&p_2366->g_331[0][0],(void*)0,&p_2366->g_331[0][0],(void*)0},{&p_2366->g_331[0][0],(void*)0,(void*)0,&p_2366->g_331[0][0],(void*)0,&p_2366->g_331[0][0],(void*)0},{&p_2366->g_331[0][0],(void*)0,(void*)0,&p_2366->g_331[0][0],(void*)0,&p_2366->g_331[0][0],(void*)0}}, // p_2366->g_330
        0x72295453A7C282B3L, // p_2366->g_339
        {0xCDL,0xCDL,0xCDL,0xCDL,0xCDL,0xCDL}, // p_2366->g_377
        (-9L), // p_2366->g_379
        (-9L), // p_2366->g_381
        2UL, // p_2366->g_398
        {-1L}, // p_2366->g_458
        {{&p_2366->g_230},{&p_2366->g_230},{&p_2366->g_230},{&p_2366->g_230},{&p_2366->g_230},{&p_2366->g_230},{&p_2366->g_230},{&p_2366->g_230},{&p_2366->g_230},{&p_2366->g_230}}, // p_2366->g_469
        &p_2366->g_44, // p_2366->g_488
        &p_2366->g_488, // p_2366->g_487
        {0x47627C1DL}, // p_2366->g_492
        &p_2366->g_331[0][0], // p_2366->g_524
        1UL, // p_2366->g_526
        {0x45A000BCL}, // p_2366->g_558
        (void*)0, // p_2366->g_629
        &p_2366->g_331[0][0], // p_2366->g_630
        &p_2366->g_153, // p_2366->g_632
        &p_2366->g_11, // p_2366->g_645
        0x44726740B872139CL, // p_2366->g_663
        0xC2D113C5L, // p_2366->g_674
        {-1L}, // p_2366->g_718
        {0x31FD32FFL}, // p_2366->g_742
        {0L}, // p_2366->g_743
        {{0x2362A300L},{0x23B83DE2L},{0x2362A300L},{0x2362A300L},{0x23B83DE2L},{0x2362A300L},{0x2362A300L}}, // p_2366->g_744
        {{&p_2366->g_742,&p_2366->g_742,&p_2366->g_742,&p_2366->g_742,&p_2366->g_742,&p_2366->g_742,&p_2366->g_742,&p_2366->g_742}}, // p_2366->g_741
        &p_2366->g_741[0][4], // p_2366->g_740
        (void*)0, // p_2366->g_768
        &p_2366->g_768, // p_2366->g_767
        {0x049327B3L}, // p_2366->g_779
        65535UL, // p_2366->g_786
        {0xC6L,0xC6L}, // p_2366->g_789
        {{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]},{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]},{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]},{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]},{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]},{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]},{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]},{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]},{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]},{(void*)0,&p_2366->g_789[0],(void*)0,&p_2366->g_789[1],(void*)0,&p_2366->g_789[0]}}, // p_2366->g_788
        &p_2366->g_788[9][5], // p_2366->g_787
        0x896AC6EDL, // p_2366->g_809
        &p_2366->g_377[0], // p_2366->g_846
        &p_2366->g_846, // p_2366->g_845
        &p_2366->g_845, // p_2366->g_844
        (void*)0, // p_2366->g_856
        &p_2366->g_786, // p_2366->g_906
        &p_2366->g_906, // p_2366->g_905
        {0L}, // p_2366->g_910
        (void*)0, // p_2366->g_943
        &p_2366->g_311, // p_2366->g_950
        &p_2366->g_153, // p_2366->g_959
        0UL, // p_2366->g_972
        {0x696E0450L}, // p_2366->g_1035
        9UL, // p_2366->g_1069
        &p_2366->g_331[0][0], // p_2366->g_1095
        {65527UL}, // p_2366->g_1104
        &p_2366->g_1104, // p_2366->g_1103
        &p_2366->g_1103, // p_2366->g_1102
        &p_2366->g_1102, // p_2366->g_1101
        {{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381},{&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381,&p_2366->g_381}}, // p_2366->g_1117
        {{&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3]},{&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3]},{&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3],&p_2366->g_1117[2][3]}}, // p_2366->g_1116
        {0x6E37205FL}, // p_2366->g_1141
        {{{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L}},{{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L}},{{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L}},{{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L}},{{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L}},{{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L}},{{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L},{1L,1L,(-4L),0x0C656B23L}}}, // p_2366->g_1143
        (-2L), // p_2366->g_1176
        {{{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL}},{{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL}},{{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL}},{{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL},{1L,2L,0x637FF3366C5C2DBBL,0x08F44435BDF86BDAL,(-4L),(-8L),0x4CDDB942998ADE0AL}}}, // p_2366->g_1179
        0x3C79L, // p_2366->g_1180
        (-9L), // p_2366->g_1181
        0UL, // p_2366->g_1182
        &p_2366->g_153, // p_2366->g_1185
        &p_2366->g_11, // p_2366->g_1201
        {0x55189A1DL}, // p_2366->g_1221
        (void*)0, // p_2366->g_1238
        {{{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}}}, // p_2366->g_1311
        {&p_2366->g_331[0][0],&p_2366->g_331[0][0],&p_2366->g_331[0][0],&p_2366->g_331[0][0],&p_2366->g_331[0][0],&p_2366->g_331[0][0]}, // p_2366->g_1350
        {{{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L}},{{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L}},{{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L}},{{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L},{0x7D8FL,(-1L),(-1L),0x4493L,1L}}}, // p_2366->g_1403
        0x5706FF875A732768L, // p_2366->g_1430
        0xD050C42E194B11B0L, // p_2366->g_1431
        {0x6AC6L}, // p_2366->g_1458
        &p_2366->g_1458, // p_2366->g_1457
        &p_2366->g_1457, // p_2366->g_1456
        &p_2366->g_1456, // p_2366->g_1455
        &p_2366->g_1430, // p_2366->g_1483
        &p_2366->g_1483, // p_2366->g_1482
        0x54C4B9D8E4A68911L, // p_2366->g_1509
        0x040B568A6F5A4F55L, // p_2366->g_1516
        1UL, // p_2366->g_1636
        (void*)0, // p_2366->g_1657
        &p_2366->g_1238, // p_2366->g_1659
        {&p_2366->g_1659}, // p_2366->g_1658
        &p_2366->g_331[0][0], // p_2366->g_1820
        &p_2366->g_674, // p_2366->g_1823
        &p_2366->g_674, // p_2366->g_1838
        &p_2366->g_1143[3][6][1], // p_2366->g_1897
        0x4A0BL, // p_2366->g_1903
        &p_2366->g_331[0][0], // p_2366->g_1920
        247UL, // p_2366->g_1937
        (void*)0, // p_2366->g_1992
        {{&p_2366->g_1992,&p_2366->g_1992},{&p_2366->g_1992,&p_2366->g_1992},{&p_2366->g_1992,&p_2366->g_1992},{&p_2366->g_1992,&p_2366->g_1992}}, // p_2366->g_1991
        (-10L), // p_2366->g_2021
        0x65C576665DE6AF59L, // p_2366->g_2029
        {{{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL}},{{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL}},{{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL}},{{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL}},{{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL},{0x7FAE14E2L,0x3AB3DB0EL}}}, // p_2366->g_2030
        &p_2366->g_331[0][0], // p_2366->g_2048
        {1L}, // p_2366->g_2074
        &p_2366->g_311, // p_2366->g_2130
        {&p_2366->g_1103,(void*)0,&p_2366->g_1103,&p_2366->g_1103,(void*)0,&p_2366->g_1103,&p_2366->g_1103,(void*)0}, // p_2366->g_2157
        &p_2366->g_2157[4], // p_2366->g_2156
        &p_2366->g_11, // p_2366->g_2195
        (void*)0, // p_2366->g_2205
        0x36FC8C08L, // p_2366->g_2213
        (-8L), // p_2366->g_2253
        {0xB9EEL}, // p_2366->g_2335
        &p_2366->g_331[0][0], // p_2366->g_2365
        0, // p_2366->v_collective
        sequence_input[get_global_id(0)], // p_2366->global_0_offset
        sequence_input[get_global_id(1)], // p_2366->global_1_offset
        sequence_input[get_global_id(2)], // p_2366->global_2_offset
        sequence_input[get_local_id(0)], // p_2366->local_0_offset
        sequence_input[get_local_id(1)], // p_2366->local_1_offset
        sequence_input[get_local_id(2)], // p_2366->local_2_offset
        sequence_input[get_group_id(0)], // p_2366->group_0_offset
        sequence_input[get_group_id(1)], // p_2366->group_1_offset
        sequence_input[get_group_id(2)], // p_2366->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_2367 = c_2368;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2366);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2366->g_2[i], "p_2366->g_2[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2366->g_3[i], "p_2366->g_3[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2366->g_4[i][j][k], "p_2366->g_4[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2366->g_5, "p_2366->g_5", print_hash_value);
    transparent_crc(p_2366->g_6, "p_2366->g_6", print_hash_value);
    transparent_crc(p_2366->g_8, "p_2366->g_8", print_hash_value);
    transparent_crc(p_2366->g_11, "p_2366->g_11", print_hash_value);
    transparent_crc(p_2366->g_17, "p_2366->g_17", print_hash_value);
    transparent_crc(p_2366->g_18, "p_2366->g_18", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2366->g_20[i][j], "p_2366->g_20[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2366->g_21, "p_2366->g_21", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2366->g_22[i][j][k], "p_2366->g_22[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2366->g_37[i], "p_2366->g_37[i]", print_hash_value);

    }
    transparent_crc(p_2366->g_44, "p_2366->g_44", print_hash_value);
    transparent_crc(p_2366->g_57, "p_2366->g_57", print_hash_value);
    transparent_crc(p_2366->g_86, "p_2366->g_86", print_hash_value);
    transparent_crc(p_2366->g_105, "p_2366->g_105", print_hash_value);
    transparent_crc(p_2366->g_118, "p_2366->g_118", print_hash_value);
    transparent_crc(p_2366->g_165, "p_2366->g_165", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2366->g_212[i].f0, "p_2366->g_212[i].f0", print_hash_value);

    }
    transparent_crc(p_2366->g_221, "p_2366->g_221", print_hash_value);
    transparent_crc(p_2366->g_290.f0, "p_2366->g_290.f0", print_hash_value);
    transparent_crc(p_2366->g_309.f0, "p_2366->g_309.f0", print_hash_value);
    transparent_crc(p_2366->g_339, "p_2366->g_339", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2366->g_377[i], "p_2366->g_377[i]", print_hash_value);

    }
    transparent_crc(p_2366->g_379, "p_2366->g_379", print_hash_value);
    transparent_crc(p_2366->g_381, "p_2366->g_381", print_hash_value);
    transparent_crc(p_2366->g_398, "p_2366->g_398", print_hash_value);
    transparent_crc(p_2366->g_458.f0, "p_2366->g_458.f0", print_hash_value);
    transparent_crc(p_2366->g_492.f0, "p_2366->g_492.f0", print_hash_value);
    transparent_crc(p_2366->g_526, "p_2366->g_526", print_hash_value);
    transparent_crc(p_2366->g_558.f0, "p_2366->g_558.f0", print_hash_value);
    transparent_crc(p_2366->g_663, "p_2366->g_663", print_hash_value);
    transparent_crc(p_2366->g_674, "p_2366->g_674", print_hash_value);
    transparent_crc(p_2366->g_718.f0, "p_2366->g_718.f0", print_hash_value);
    transparent_crc(p_2366->g_742.f0, "p_2366->g_742.f0", print_hash_value);
    transparent_crc(p_2366->g_743.f0, "p_2366->g_743.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2366->g_744[i].f0, "p_2366->g_744[i].f0", print_hash_value);

    }
    transparent_crc(p_2366->g_779.f0, "p_2366->g_779.f0", print_hash_value);
    transparent_crc(p_2366->g_786, "p_2366->g_786", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2366->g_789[i], "p_2366->g_789[i]", print_hash_value);

    }
    transparent_crc(p_2366->g_809, "p_2366->g_809", print_hash_value);
    transparent_crc(p_2366->g_910.f0, "p_2366->g_910.f0", print_hash_value);
    transparent_crc(p_2366->g_972, "p_2366->g_972", print_hash_value);
    transparent_crc(p_2366->g_1035.f0, "p_2366->g_1035.f0", print_hash_value);
    transparent_crc(p_2366->g_1069, "p_2366->g_1069", print_hash_value);
    transparent_crc(p_2366->g_1104.f0, "p_2366->g_1104.f0", print_hash_value);
    transparent_crc(p_2366->g_1141.f0, "p_2366->g_1141.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2366->g_1143[i][j][k], "p_2366->g_1143[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2366->g_1176, "p_2366->g_1176", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2366->g_1179[i][j][k], "p_2366->g_1179[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2366->g_1180, "p_2366->g_1180", print_hash_value);
    transparent_crc(p_2366->g_1181, "p_2366->g_1181", print_hash_value);
    transparent_crc(p_2366->g_1182, "p_2366->g_1182", print_hash_value);
    transparent_crc(p_2366->g_1221.f0, "p_2366->g_1221.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_2366->g_1311[i][j][k], "p_2366->g_1311[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2366->g_1403[i][j][k], "p_2366->g_1403[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2366->g_1430, "p_2366->g_1430", print_hash_value);
    transparent_crc(p_2366->g_1431, "p_2366->g_1431", print_hash_value);
    transparent_crc(p_2366->g_1458.f0, "p_2366->g_1458.f0", print_hash_value);
    transparent_crc(p_2366->g_1509, "p_2366->g_1509", print_hash_value);
    transparent_crc(p_2366->g_1516, "p_2366->g_1516", print_hash_value);
    transparent_crc(p_2366->g_1636, "p_2366->g_1636", print_hash_value);
    transparent_crc(p_2366->g_1903, "p_2366->g_1903", print_hash_value);
    transparent_crc(p_2366->g_1937, "p_2366->g_1937", print_hash_value);
    transparent_crc(p_2366->g_2021, "p_2366->g_2021", print_hash_value);
    transparent_crc(p_2366->g_2029, "p_2366->g_2029", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2366->g_2030[i][j][k], "p_2366->g_2030[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2366->g_2074.f0, "p_2366->g_2074.f0", print_hash_value);
    transparent_crc(p_2366->g_2213, "p_2366->g_2213", print_hash_value);
    transparent_crc(p_2366->g_2253, "p_2366->g_2253", print_hash_value);
    transparent_crc(p_2366->g_2335.f0, "p_2366->g_2335.f0", print_hash_value);
    transparent_crc(p_2366->v_collective, "p_2366->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
