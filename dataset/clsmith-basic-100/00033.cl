// ---fake_divergence -g 13,1,160 -l 13,1,1
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


// Seed: 33

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
};

struct S1 {
    int32_t g_3[8];
    int32_t g_5;
    int32_t g_35[1][7];
    int32_t g_36;
    struct S0 g_40[6][4][4];
    struct S0 * volatile g_39;
    uint32_t g_78[3];
    int32_t g_110[4][4][5];
    int32_t *g_109[8][10];
    int64_t g_125;
    int64_t g_137[7][10][3];
    uint32_t g_149;
    int8_t g_151;
    int32_t g_154;
    int32_t * volatile g_153;
    uint8_t g_156;
    int32_t ** volatile g_157;
    struct S0 g_165;
    uint32_t g_172;
    volatile int8_t g_199;
    int32_t ** volatile g_213;
    int32_t ** volatile g_214[6][8];
    int32_t ** volatile g_215;
    int8_t *g_227;
    int8_t **g_226;
    int8_t ***g_225;
    int32_t * volatile g_235;
    volatile uint64_t g_248[9];
    uint8_t g_294;
    uint64_t g_312;
    uint16_t *g_328[8];
    struct S0 *g_336;
    struct S0 ** volatile g_335;
    int64_t g_342;
    uint32_t g_354;
    uint64_t g_400;
    uint32_t **g_422;
    int32_t g_468;
    int32_t g_470[2];
    int32_t g_534;
    volatile uint16_t g_537[4][2];
    uint8_t *g_539;
    int32_t g_548;
    volatile int8_t * volatile g_614[3];
    int32_t * volatile g_672[9];
    int32_t * volatile g_673;
    int32_t g_694;
    int64_t g_724;
    volatile int8_t **g_749;
    uint32_t *** volatile g_776;
    struct S0 * volatile g_779;
    int32_t * volatile g_819;
    struct S0 * volatile g_821;
    volatile uint32_t g_835[2];
    int32_t ** volatile g_903;
    uint8_t g_926;
    int16_t g_942;
    int32_t *g_965[9][7];
    int64_t g_993;
    int32_t ** volatile g_1052;
    int32_t ** volatile g_1053;
    int32_t ** volatile g_1054;
    volatile uint32_t g_1105;
    volatile uint32_t *g_1104[7];
    volatile uint32_t * volatile * volatile g_1103;
    volatile uint32_t * volatile * volatile * volatile g_1106;
    uint8_t g_1142;
    uint32_t g_1150;
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
int16_t  func_1(struct S1 * p_1165);
uint64_t  func_23(int64_t  p_24, struct S1 * p_1165);
int32_t  func_27(uint8_t  p_28, int32_t * p_29, struct S1 * p_1165);
int32_t * func_30(int32_t * p_31, uint64_t  p_32, int32_t * p_33, int32_t * p_34, struct S1 * p_1165);
int16_t  func_52(struct S0 * p_53, int64_t  p_54, struct S0 * p_55, struct S1 * p_1165);
int64_t  func_57(struct S0 * p_58, int32_t * p_59, uint32_t  p_60, struct S0 * p_61, struct S1 * p_1165);
struct S0 * func_62(uint16_t  p_63, int64_t  p_64, uint64_t  p_65, struct S0  p_66, struct S0 * p_67, struct S1 * p_1165);
int32_t  func_82(uint64_t  p_83, struct S0 * p_84, int32_t * p_85, int32_t * p_86, int32_t * p_87, struct S1 * p_1165);
int32_t * func_90(int8_t  p_91, struct S0 * p_92, struct S0 * p_93, struct S1 * p_1165);
int32_t  func_98(uint32_t  p_99, uint32_t  p_100, int32_t  p_101, int64_t  p_102, struct S1 * p_1165);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1165->g_3 p_1165->g_5 p_1165->g_1106 p_1165->g_1103 p_1165->g_1104 p_1165->g_1105 p_1165->g_1150 p_1165->g_342 p_1165->g_694 p_1165->g_137 p_1165->g_40.f0 p_1165->g_548 p_1165->g_248
 * writes: p_1165->g_3 p_1165->g_5 p_1165->g_1150 p_1165->g_400 p_1165->g_942 p_1165->g_137 p_1165->g_548
 */
int16_t  func_1(struct S1 * p_1165)
{ /* block id: 4 */
    int64_t l_2[7] = {(-1L),0x4CB03629AA810D21L,(-1L),(-1L),0x4CB03629AA810D21L,(-1L),(-1L)};
    int32_t l_12 = 0x62E4ED38L;
    int32_t l_1141 = 0x25ADD570L;
    uint8_t *l_1143[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint16_t *l_1155 = (void*)0;
    uint16_t *l_1156[9] = {&p_1165->g_165.f0,&p_1165->g_165.f0,&p_1165->g_165.f0,&p_1165->g_165.f0,&p_1165->g_165.f0,&p_1165->g_165.f0,&p_1165->g_165.f0,&p_1165->g_165.f0,&p_1165->g_165.f0};
    uint64_t *l_1161 = (void*)0;
    int16_t *l_1162 = &p_1165->g_942;
    int64_t *l_1163 = &p_1165->g_137[4][3][2];
    int32_t *l_1164 = &p_1165->g_548;
    int i;
    for (p_1165->g_3[6] = 0; (p_1165->g_3[6] <= 6); p_1165->g_3[6] += 1)
    { /* block id: 7 */
        int32_t *l_4[1][2][2];
        uint8_t *l_1139 = &p_1165->g_926;
        int32_t l_1140 = 0x2C5145CEL;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 2; k++)
                    l_4[i][j][k] = &p_1165->g_5;
            }
        }
        p_1165->g_5 |= 0x52250DB8L;
        if (l_2[p_1165->g_3[6]])
            break;
    }
    (*l_1164) &= ((((void*)0 != l_1143[3]) || (((*l_1163) = (((void*)0 != &p_1165->g_342) && ((safe_sub_func_uint8_t_u_u((l_12 = ((***p_1165->g_1106) & (safe_add_func_uint64_t_u_u((((safe_sub_func_uint8_t_u_u((p_1165->g_1150--), (((0x0AC57510L <= ((safe_mul_func_uint16_t_u_u((l_1141 = 0x013FL), ((*l_1162) = (((0x096D3AED06EAD9C9L != (p_1165->g_400 = ((safe_mod_func_uint8_t_u_u((0UL || p_1165->g_342), 0x31L)) > l_12))) , l_2[1]) != l_2[4])))) ^ l_12)) > l_12) == p_1165->g_694))) == 0x5BFACFD8L) | p_1165->g_137[1][8][0]), l_12)))), 248UL)) || l_1141))) != p_1165->g_40[2][1][1].f0)) == l_2[1]);
    return p_1165->g_248[0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_23(int64_t  p_24, struct S1 * p_1165)
{ /* block id: 509 */
    uint64_t l_1137 = 0UL;
    int32_t l_1138[7];
    int i;
    for (i = 0; i < 7; i++)
        l_1138[i] = 2L;
    l_1138[2] &= (safe_lshift_func_int16_t_s_s(l_1137, 0));
    return p_24;
}


/* ------------------------------------------ */
/* 
 * reads : p_1165->g_926 p_1165->g_110
 * writes: p_1165->g_926 p_1165->g_109
 */
int32_t  func_27(uint8_t  p_28, int32_t * p_29, struct S1 * p_1165)
{ /* block id: 500 */
    int32_t *l_1132 = &p_1165->g_110[1][2][0];
    int32_t **l_1133 = &l_1132;
    int32_t **l_1134 = &p_1165->g_109[2][7];
    for (p_1165->g_926 = 9; (p_1165->g_926 == 35); p_1165->g_926++)
    { /* block id: 503 */
        int32_t **l_1131 = &p_1165->g_109[3][1];
        (*l_1131) = p_29;
    }
    (*l_1134) = ((*l_1133) = l_1132);
    return (**l_1133);
}


/* ------------------------------------------ */
/* 
 * reads : p_1165->g_36 p_1165->g_39 p_1165->g_149 p_1165->g_724 p_1165->g_926 p_1165->g_5 p_1165->g_294 p_1165->g_993 p_1165->g_226 p_1165->g_227 p_1165->g_151 p_1165->g_942 p_1165->g_137 p_1165->g_821 p_1165->g_165 p_1165->g_40 p_1165->g_336 p_1165->g_110 p_1165->g_35 p_1165->g_172 p_1165->g_154 p_1165->g_3 p_1165->g_400 p_1165->g_673 p_1165->g_548 p_1165->g_1054 p_1165->g_335 p_1165->g_694 p_1165->g_109 p_1165->g_1103 p_1165->g_1106 p_1165->g_1104 p_1165->g_1105 p_1165->g_354
 * writes: p_1165->g_36 p_1165->g_40 p_1165->g_149 p_1165->g_926 p_1165->g_151 p_1165->g_225 p_1165->g_354 p_1165->g_165.f0 p_1165->g_172 p_1165->g_226 p_1165->g_312 p_1165->g_400 p_1165->g_548 p_1165->g_109 p_1165->g_336 p_1165->g_1103 p_1165->g_942 p_1165->g_993
 */
int32_t * func_30(int32_t * p_31, uint64_t  p_32, int32_t * p_33, int32_t * p_34, struct S1 * p_1165)
{ /* block id: 11 */
    int8_t l_51 = 7L;
    int32_t l_949 = 1L;
    int32_t *l_958[2];
    uint32_t ***l_1012 = &p_1165->g_422;
    uint16_t *l_1037 = &p_1165->g_40[2][1][1].f0;
    int16_t l_1038[2][2][9] = {{{(-1L),0x2800L,(-1L),(-1L),0x2800L,(-1L),(-1L),0x2800L,(-1L)},{(-1L),0x2800L,(-1L),(-1L),0x2800L,(-1L),(-1L),0x2800L,(-1L)}},{{(-1L),0x2800L,(-1L),(-1L),0x2800L,(-1L),(-1L),0x2800L,(-1L)},{(-1L),0x2800L,(-1L),(-1L),0x2800L,(-1L),(-1L),0x2800L,(-1L)}}};
    struct S0 *l_1093 = &p_1165->g_165;
    int16_t *l_1119 = &l_1038[0][0][6];
    int16_t *l_1120 = &p_1165->g_942;
    uint32_t *l_1126 = &p_1165->g_172;
    uint32_t **l_1125 = &l_1126;
    int64_t *l_1127 = &p_1165->g_993;
    uint32_t l_1128 = 8UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_958[i] = &p_1165->g_110[1][2][0];
    for (p_32 = 0; (p_32 <= 0); p_32 += 1)
    { /* block id: 14 */
        struct S0 *l_56 = &p_1165->g_40[2][1][1];
        int32_t l_79 = 0L;
        int32_t *l_183 = &p_1165->g_36;
        int32_t *l_962[8][4][2] = {{{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949}},{{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949}},{{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949}},{{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949}},{{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949}},{{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949}},{{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949}},{{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949},{&p_1165->g_36,&l_949}}};
        int i, j, k;
        for (p_1165->g_36 = 0; (p_1165->g_36 <= 0); p_1165->g_36 += 1)
        { /* block id: 17 */
            struct S0 l_37 = {0x5476L};
            struct S0 *l_38 = (void*)0;
            uint16_t *l_77 = &l_37.f0;
            int16_t *l_941[1][7];
            int32_t **l_948 = (void*)0;
            int32_t ***l_947 = &l_948;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 7; j++)
                    l_941[i][j] = &p_1165->g_942;
            }
            (*p_1165->g_39) = l_37;
        }
        for (p_1165->g_149 = 0; (p_1165->g_149 <= 0); p_1165->g_149 += 1)
        { /* block id: 437 */
            return p_33;
        }
    }
    if ((p_1165->g_724 <= p_32))
    { /* block id: 441 */
        uint32_t l_992 = 0UL;
        int32_t l_1013 = (-1L);
        int8_t **l_1031 = &p_1165->g_227;
        int32_t l_1041 = 0x7A7813D9L;
        int32_t l_1042 = 0x6A5633F5L;
        int16_t l_1045 = 9L;
        int32_t l_1047 = (-7L);
        uint64_t l_1048 = 0x4470ABDDC5EEED7DL;
        for (p_1165->g_926 = (-10); (p_1165->g_926 <= 26); ++p_1165->g_926)
        { /* block id: 444 */
            int32_t **l_979 = &l_958[1];
            int8_t ***l_1004 = &p_1165->g_226;
            struct S0 l_1039 = {0x9BB2L};
            int64_t l_1040 = 0x1EF5CDB1A668662DL;
            int32_t l_1043 = 1L;
            int32_t l_1044 = 0x3F0E6E00L;
            int32_t l_1046[1][1][6] = {{{7L,0L,7L,7L,0L,7L}}};
            int i, j, k;
            (*l_979) = (void*)0;
            if (((safe_div_func_uint32_t_u_u((((((safe_lshift_func_int8_t_s_s(((*p_31) , ((safe_lshift_func_uint8_t_u_s(p_32, ((**p_1165->g_226) ^= (safe_add_func_int8_t_s_s((((safe_sub_func_uint32_t_u_u(p_1165->g_294, (((((((safe_mul_func_uint16_t_u_u(1UL, p_1165->g_926)) , l_992) < p_32) >= (((((&p_1165->g_942 != &p_1165->g_942) >= (*p_33)) < 9UL) & p_1165->g_993) >= FAKE_DIVERGE(p_1165->local_2_offset, get_local_id(2), 10))) , p_1165->g_724) , 0x4DL) | p_32))) , l_992) == FAKE_DIVERGE(p_1165->local_1_offset, get_local_id(1), 10)), p_32))))) ^ p_32)), l_992)) <= p_1165->g_942) , p_1165->g_137[1][8][0]) , p_34) != p_33), 5UL)) || p_32))
            { /* block id: 447 */
                for (p_1165->g_36 = (-4); (p_1165->g_36 <= 6); p_1165->g_36++)
                { /* block id: 450 */
                    return p_31;
                }
                if (l_992)
                    break;
                if ((*p_33))
                    continue;
            }
            else
            { /* block id: 455 */
                uint32_t *l_998 = &p_1165->g_172;
                int8_t ****l_1003 = &p_1165->g_225;
                int32_t l_1005[5][4] = {{0x64664205L,0L,0x64664205L,0x64664205L},{0x64664205L,0L,0x64664205L,0x64664205L},{0x64664205L,0L,0x64664205L,0x64664205L},{0x64664205L,0L,0x64664205L,0x64664205L},{0x64664205L,0L,0x64664205L,0x64664205L}};
                uint16_t *l_1006 = &p_1165->g_165.f0;
                struct S0 l_1007[3][1] = {{{65527UL}},{{65527UL}},{{65527UL}}};
                int i, j;
                if ((((((safe_mod_func_uint32_t_u_u(0xB54D881BL, (((((void*)0 != l_998) ^ (p_32 && ((*l_1006) = ((*p_1165->g_821) , (safe_sub_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(((l_1005[2][0] = ((((*l_1003) = (void*)0) != l_1004) > (p_1165->g_354 = 0x506754A1L))) ^ (p_33 == p_34)), p_32)), (*p_33))))))) | 0UL) , (-1L)))) == (**p_1165->g_226)) == 0x48758BF3L) != p_32) | p_32))
                { /* block id: 460 */
                    struct S0 *l_1016 = &p_1165->g_40[2][1][1];
                    int8_t **l_1030 = (void*)0;
                    (*p_1165->g_336) = (l_1007[0][0] , (*p_1165->g_39));
                    if ((((safe_sub_func_int64_t_s_s((safe_mod_func_int8_t_s_s((p_1165->g_110[2][3][2] ^ ((void*)0 != l_1012)), 1L)), ((-10L) < (p_1165->g_35[0][5] && (~p_32))))) ^ (l_1013 = l_992)) , ((~(safe_lshift_func_int8_t_s_s(((+((l_1005[2][0] == (*p_33)) , l_1005[4][0])) > 0x4EF4CFD0L), 0))) ^ 0x72046047DF2DB464L)))
                    { /* block id: 463 */
                        (*l_979) = func_90((&l_51 != (void*)0), &l_1007[0][0], (p_32 , l_1016), p_1165);
                    }
                    else
                    { /* block id: 465 */
                        uint64_t *l_1034 = &p_1165->g_312;
                        int32_t l_1035[4] = {1L,1L,1L,1L};
                        uint64_t *l_1036 = &p_1165->g_400;
                        int i;
                        (*p_1165->g_673) |= (safe_mul_func_uint8_t_u_u(((&p_1165->g_248[7] == (void*)0) && ((**p_1165->g_226) , ((safe_div_func_uint8_t_u_u(((((*l_1036) ^= ((((*l_1034) = ((safe_sub_func_int8_t_s_s((((((*l_998)++) , (((((*l_1006) = ((safe_sub_func_uint32_t_u_u(0x5D0CFFF9L, ((0UL > (safe_mod_func_uint8_t_u_u(((safe_unary_minus_func_uint32_t_u(9UL)) > (((*l_1004) = l_1030) == l_1031)), (((safe_add_func_int16_t_s_s((~(GROUP_DIVERGE(1, 1) == (1UL > l_1005[2][0]))), 0x4953L)) , 0x7800E74AL) & 4294967294UL)))) , GROUP_DIVERGE(2, 1)))) , 65535UL)) , 6L) || p_1165->g_154) ^ p_32)) || p_1165->g_3[6]) == (-3L)), p_32)) ^ 0x32B1A636L)) | p_1165->g_724) >= l_1035[0])) , l_1006) == l_1037), l_1005[1][3])) || l_1013))), 255UL));
                        l_1038[0][0][3] = (*p_31);
                        return p_33;
                    }
                    (*l_979) = p_34;
                }
                else
                { /* block id: 476 */
                    (*p_1165->g_336) = l_1039;
                }
                l_1048++;
            }
            if (l_992)
                break;
        }
    }
    else
    { /* block id: 483 */
        uint8_t l_1051 = 0x5DL;
        int32_t l_1059 = (-1L);
        uint32_t l_1060 = 0x4143BE35L;
        uint32_t *l_1086 = &p_1165->g_172;
        uint32_t **l_1085 = &l_1086;
        struct S0 **l_1094 = &p_1165->g_336;
        struct S0 *l_1096 = &p_1165->g_165;
        struct S0 **l_1095 = &l_1096;
        struct S0 *l_1098 = (void*)0;
        struct S0 **l_1097 = &l_1098;
        uint16_t *l_1099[7][5] = {{(void*)0,&p_1165->g_165.f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_165.f0,(void*)0},{(void*)0,&p_1165->g_165.f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_165.f0,(void*)0},{(void*)0,&p_1165->g_165.f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_165.f0,(void*)0},{(void*)0,&p_1165->g_165.f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_165.f0,(void*)0},{(void*)0,&p_1165->g_165.f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_165.f0,(void*)0},{(void*)0,&p_1165->g_165.f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_165.f0,(void*)0},{(void*)0,&p_1165->g_165.f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_165.f0,(void*)0}};
        uint32_t l_1100[7] = {1UL,4294967289UL,1UL,1UL,4294967289UL,1UL,1UL};
        int32_t **l_1101 = (void*)0;
        int32_t **l_1102 = &l_958[1];
        int i, j;
        l_1051 &= 5L;
        (*p_1165->g_1054) = &l_949;
        (*l_1102) = func_90((safe_rshift_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(((l_1060--) == (safe_sub_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(p_1165->g_110[1][2][0], (safe_rshift_func_uint16_t_u_s((safe_div_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(p_32, ((safe_mul_func_int16_t_s_s((((((safe_div_func_int32_t_s_s((l_1051 , ((-8L) ^ (((void*)0 != l_1085) ^ ((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((l_1093 == ((*l_1097) = ((*l_1095) = ((*l_1094) = (*p_1165->g_335))))), 0)), ((void*)0 != l_1099[0][0]))), GROUP_DIVERGE(2, 1))) == (-3L))))), l_1059)) >= (*p_34)) == p_32) , 0x51B4D6F3A16ACDBDL) , p_1165->g_993), 9UL)) ^ p_32))), p_32)), 0xA71D9C55040C7674L)), p_1165->g_694)))), l_1051)), p_32)), 1)), l_1100[1]))), p_32)) ^ 0x2171F452L), p_1165->g_151)), l_1093, &p_1165->g_40[2][1][1], p_1165);
        (*l_1102) = (*p_1165->g_1054);
    }
    (*p_1165->g_1106) = p_1165->g_1103;
    l_1128 |= (safe_mul_func_int8_t_s_s((safe_mod_func_int16_t_s_s((((((~p_32) == (p_32 ^ ((safe_sub_func_int64_t_s_s(((*l_1127) = (safe_sub_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((*l_1120) = ((*l_1119) = ((~(safe_rshift_func_uint16_t_u_s((p_32 && 0x8721L), 3))) & 18446744073709551610UL))), (~(((p_32 == 1UL) <= ((((((safe_add_func_int8_t_s_s(0x59L, ((safe_rshift_func_int16_t_s_u((((*l_1125) = func_90((**p_1165->g_226), l_1093, l_1093, p_1165)) != p_33), p_32)) != (*p_34)))) >= 0x48L) != p_1165->g_151) <= p_32) ^ (**p_1165->g_1103)) < 0x7D3934FCL)) , (-7L))))), 251UL))), p_1165->g_354)) > p_1165->g_151))) || 0x4A3441DBE9B4EF75L) & 0x2C27C47D6CA21129L) < FAKE_DIVERGE(p_1165->local_1_offset, get_local_id(1), 10)), p_32)), 5L));
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_1165->g_39 p_1165->g_40 p_1165->g_342 p_1165->g_36 p_1165->g_165.f0 p_1165->g_422 p_1165->g_151 p_1165->g_110 p_1165->g_78 p_1165->g_534 p_1165->g_336 p_1165->g_537 p_1165->g_154 p_1165->g_548 p_1165->g_227 p_1165->g_5 p_1165->g_335 p_1165->g_156 p_1165->g_153 p_1165->g_312 p_1165->g_149 p_1165->g_614 p_1165->g_470 p_1165->g_673 p_1165->g_328 p_1165->g_226 p_1165->g_3 p_1165->g_468 p_1165->g_235 p_1165->g_199 p_1165->g_749 p_1165->g_724 p_1165->g_776 p_1165->g_779
 * writes: p_1165->g_165.f0 p_1165->g_110 p_1165->g_354 p_1165->g_534 p_1165->g_539 p_1165->g_548 p_1165->g_156 p_1165->g_154 p_1165->g_312 p_1165->g_342 p_1165->g_694 p_1165->g_470 p_1165->g_151 p_1165->g_724 p_1165->g_109 p_1165->g_468 p_1165->g_422 p_1165->g_165 p_1165->g_672
 */
int16_t  func_52(struct S0 * p_53, int64_t  p_54, struct S0 * p_55, struct S1 * p_1165)
{ /* block id: 229 */
    int16_t l_507 = 0x39DAL;
    int16_t l_508 = 1L;
    uint64_t *l_510[3][3][8] = {{{(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0,(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0},{(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0,(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0},{(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0,(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0}},{{(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0,(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0},{(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0,(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0},{(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0,(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0}},{{(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0,(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0},{(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0,(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0},{(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0,(void*)0,&p_1165->g_312,&p_1165->g_312,(void*)0}}};
    int32_t l_531 = 1L;
    uint8_t *l_538 = &p_1165->g_156;
    uint32_t l_569 = 0xEDB9D203L;
    int8_t l_594 = 0x36L;
    int32_t l_601 = 0x0B2B9C01L;
    int32_t l_604 = 0x49ABAE0BL;
    uint16_t l_606 = 1UL;
    uint32_t *l_661 = &p_1165->g_172;
    uint32_t **l_660 = &l_661;
    uint16_t *l_680 = (void*)0;
    uint16_t *l_681 = &l_606;
    int32_t *l_692 = &p_1165->g_534;
    int32_t *l_693 = &p_1165->g_694;
    struct S0 *l_699 = &p_1165->g_40[2][1][1];
    int32_t l_721 = 0x527E344CL;
    int32_t l_722 = 0L;
    int32_t l_723 = 1L;
    int32_t l_725 = (-1L);
    int32_t l_726 = (-9L);
    uint32_t l_727[6] = {4294967295UL,1UL,4294967295UL,4294967295UL,1UL,4294967295UL};
    int8_t ***l_773 = &p_1165->g_226;
    int32_t *l_822 = &l_531;
    uint8_t l_852[8] = {1UL,3UL,1UL,1UL,3UL,1UL,1UL,3UL};
    uint16_t l_878 = 0x6749L;
    int32_t l_918 = 2L;
    int32_t l_919 = 0x64ABE04EL;
    int32_t l_920 = (-5L);
    int32_t l_921 = 0x38660569L;
    int32_t l_922 = 0x6D94DC67L;
    int32_t l_923 = 2L;
    int32_t l_924 = 0x71454C90L;
    int32_t l_925[6] = {8L,0x26A50774L,8L,8L,0x26A50774L,8L};
    int8_t l_931 = 0L;
    int16_t l_932 = 0x2121L;
    uint16_t l_938[10] = {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL};
    int i, j, k;
    if ((l_507 <= l_508))
    { /* block id: 230 */
        struct S0 l_509 = {0x1F65L};
        uint64_t *l_511 = (void*)0;
        struct S0 l_512 = {3UL};
        uint8_t l_513 = 0x5AL;
        uint16_t *l_526 = &p_1165->g_165.f0;
        int32_t *l_532 = &p_1165->g_110[1][2][0];
        uint8_t *l_540 = &p_1165->g_294;
        struct S0 *l_550 = &p_1165->g_40[5][1][2];
        int8_t **l_566[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_571 = 0x128196A5L;
        int32_t l_600[3][9] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}};
        int i, j;
        l_509 = (*p_1165->g_39);
        (*l_532) ^= ((((((l_510[2][2][1] != l_511) , l_512) , (!((!l_513) & p_1165->g_342))) >= (safe_lshift_func_uint16_t_u_u(l_507, 5))) , (safe_add_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((p_1165->g_36 != (((--(*l_526)) >= ((l_531 &= (0xEB909D2FL & (p_1165->g_422 == (void*)0))) | p_54)) & 0L)), FAKE_DIVERGE(p_1165->global_2_offset, get_global_id(2), 10))), GROUP_DIVERGE(1, 1))) > p_54), p_54))) <= p_1165->g_151);
        for (l_531 = 0; (l_531 <= 2); l_531 += 1)
        { /* block id: 237 */
            int i;
            if (p_1165->g_78[l_531])
                break;
            for (p_1165->g_354 = 0; (p_1165->g_354 <= 5); p_1165->g_354 += 1)
            { /* block id: 241 */
                int32_t *l_533[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t *l_547 = &p_1165->g_548;
                int i;
                (*l_547) &= ((p_1165->g_534 &= ((void*)0 == &p_53)) , (~(safe_mul_func_int8_t_s_s(((*p_1165->g_336) , (p_1165->g_537[3][0] < ((((p_1165->g_539 = l_538) == (l_540 = (void*)0)) ^ ((*l_532) < (safe_rshift_func_uint16_t_u_s((safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u(p_54, 7)), p_1165->g_154)), 15)))) <= (*l_532)))), 0L))));
            }
        }
        for (p_54 = 0; (p_54 <= 2); p_54 += 1)
        { /* block id: 250 */
            struct S0 *l_549 = &l_512;
            struct S0 *l_551 = &p_1165->g_165;
            uint8_t *l_567 = (void*)0;
            int32_t l_568 = 0x0C608893L;
            int32_t *l_570[3];
            int i;
            for (i = 0; i < 3; i++)
                l_570[i] = &p_1165->g_154;
            l_532 = func_90((*p_1165->g_227), l_549, (l_551 = l_550), p_1165);
            l_571 &= (safe_add_func_int16_t_s_s((((safe_mod_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s(((safe_add_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((((safe_rshift_func_int8_t_s_u(((safe_lshift_func_uint16_t_u_u(((*l_532) & ((*p_1165->g_335) != p_53)), 7)) <= ((void*)0 == l_566[3])), 6)) ^ (((void*)0 != l_526) < (l_567 != l_538))) & p_54), 1)), GROUP_DIVERGE(2, 1))) , l_568), 7)), 1L)) < FAKE_DIVERGE(p_1165->group_1_offset, get_group_id(1), 10)) , l_569), (*l_532)));
            for (p_1165->g_156 = 0; (p_1165->g_156 <= 2); p_1165->g_156 += 1)
            { /* block id: 256 */
                uint16_t l_597[3];
                int32_t l_602 = 0x2F3A357CL;
                int32_t l_605 = (-1L);
                int i;
                for (i = 0; i < 3; i++)
                    l_597[i] = 0UL;
                (*l_549) = (*p_1165->g_39);
                for (l_568 = 2; (l_568 >= 0); l_568 -= 1)
                { /* block id: 260 */
                    int32_t l_588[9] = {0x3A6A12D6L,0x3A6A12D6L,0x3A6A12D6L,0x3A6A12D6L,0x3A6A12D6L,0x3A6A12D6L,0x3A6A12D6L,0x3A6A12D6L,0x3A6A12D6L};
                    int32_t l_599 = 0x41A5559FL;
                    int32_t l_603 = 0x4D1374F7L;
                    int i;
                    (*p_1165->g_153) &= (safe_lshift_func_uint16_t_u_u(p_54, 15));
                    for (l_513 = 0; (l_513 <= 7); l_513 += 1)
                    { /* block id: 264 */
                        int i;
                        l_531 &= p_54;
                        if (l_507)
                            continue;
                        l_570[p_1165->g_156] = (void*)0;
                    }
                    for (p_1165->g_312 = 0; (p_1165->g_312 <= 2); p_1165->g_312 += 1)
                    { /* block id: 271 */
                        int16_t *l_591 = &l_508;
                        int32_t l_595[4][7] = {{(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)},{(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)},{(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)},{(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)}};
                        uint32_t *l_596[2];
                        int32_t l_598 = 4L;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_596[i] = &p_1165->g_354;
                        l_599 &= (safe_lshift_func_uint8_t_u_s((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_u((&p_1165->g_214[5][2] == (void*)0), (((safe_add_func_uint32_t_u_u((((l_595[2][1] = (safe_add_func_int8_t_s_s(((p_54 >= ((l_597[0] = (((safe_lshift_func_int8_t_s_s(l_588[8], ((*p_53) , (safe_sub_func_int16_t_s_s(0x7330L, ((*l_591) = ((((void*)0 == l_591) != (safe_sub_func_uint16_t_u_u(((l_510[p_54][l_568][(p_54 + 3)] == &p_1165->g_125) >= 0x7A338142L), l_594))) , l_595[2][3]))))))) & 1UL) , p_54)) == 0x009C00DCL)) < l_531), p_54))) , l_597[0]) < p_1165->g_149), l_598)) >= (*p_1165->g_227)) , p_1165->g_40[2][1][1].f0))) & 1UL), p_54)), l_507)), 3));
                        ++l_606;
                    }
                }
            }
        }
    }
    else
    { /* block id: 281 */
        uint32_t l_631 = 0x3222BAB8L;
        int32_t l_639 = 1L;
        int32_t *l_650 = (void*)0;
        uint32_t **l_662[7][8][4] = {{{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661}},{{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661}},{{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661}},{{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661}},{{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661}},{{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661}},{{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661},{&l_661,&l_661,&l_661,&l_661}}};
        uint16_t l_670 = 0UL;
        int i, j, k;
        for (l_508 = 0; (l_508 != 8); l_508++)
        { /* block id: 284 */
            int8_t *l_613[9][2][6] = {{{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0},{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0}},{{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0},{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0}},{{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0},{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0}},{{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0},{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0}},{{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0},{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0}},{{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0},{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0}},{{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0},{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0}},{{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0},{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0}},{{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0},{&p_1165->g_151,&p_1165->g_151,&l_594,(void*)0,&l_594,(void*)0}}};
            int32_t *l_638 = &p_1165->g_110[3][0][3];
            int i, j, k;
            (*l_638) |= (safe_rshift_func_int8_t_s_s(((l_613[3][1][1] != p_1165->g_614[0]) == (safe_div_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s(0x4CL, 3)) ^ (safe_add_func_int16_t_s_s((p_1165->g_470[0] || 0x401A959CD2323B83L), (safe_div_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), 2)) <= 0x9DC8L), (((safe_sub_func_int16_t_s_s((+l_631), ((0xD6CC2D5CED613B56L & (safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u((p_54 , l_604), l_604)) < 0x788017C8L), p_54)), 7))) < l_606))) >= p_54) || FAKE_DIVERGE(p_1165->group_0_offset, get_group_id(0), 10))))))), 0xD0L)), p_54)), p_54))), 0));
        }
        l_639 ^= l_601;
        for (p_54 = (-30); (p_54 >= 25); p_54 = safe_add_func_int64_t_s_s(p_54, 9))
        { /* block id: 290 */
            int32_t *l_651 = &p_1165->g_534;
            int64_t *l_669 = &p_1165->g_342;
            int32_t l_671 = 0L;
            (*p_1165->g_673) |= (safe_rshift_func_int16_t_s_s(((((((*l_538) ^= ((((safe_rshift_func_uint8_t_u_u(p_54, (safe_div_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((l_507 && GROUP_DIVERGE(0, 1)), (l_650 != l_651))), (safe_lshift_func_int16_t_s_u(l_631, (safe_div_func_uint32_t_u_u(((+(safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((-1L), (l_660 == l_662[4][5][2]))), (safe_mul_func_uint16_t_u_u((((*l_669) = ((l_639 ^= (l_604 = (safe_sub_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((void*)0 != &p_1165->g_137[1][8][0]), l_569)), 1UL)))) && p_1165->g_470[0])) , p_54), p_54))))) >= l_601), l_569)))))))) <= p_54) > GROUP_DIVERGE(0, 1)) & l_606)) >= p_54) | l_670) > (*p_1165->g_227)) > GROUP_DIVERGE(1, 1)), l_671));
        }
    }
    if (((safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u((p_54 , (((*l_693) = ((*l_692) = (0x3EF1937B12415AA8L > ((((safe_mul_func_uint8_t_u_u(((++(*l_681)) > (((+0x54L) < ((&l_508 == p_1165->g_328[6]) <= (safe_rshift_func_int16_t_s_u((((((l_508 ^ ((safe_mul_func_uint8_t_u_u((&l_660 == &l_660), (safe_rshift_func_uint8_t_u_s(((((safe_mod_func_uint32_t_u_u(p_54, p_54)) > 0UL) < 0x0F3F9D09L) != l_569), 0)))) , 0x18D8L)) , 2L) <= (-1L)) <= l_601) != p_54), 2)))) || (-1L))), GROUP_DIVERGE(1, 1))) <= 0xD2L) == 2UL) && l_569)))) , l_531)), 12)), 4)) ^ l_604))
    { /* block id: 301 */
        int64_t l_702 = 1L;
        int32_t l_708 = 1L;
        int32_t l_709 = (-1L);
        int32_t l_717 = 0x4B0684D9L;
        int32_t l_718[1];
        int8_t **l_750 = &p_1165->g_227;
        int8_t l_930 = 1L;
        int i;
        for (i = 0; i < 1; i++)
            l_718[i] = 0x2BFFEF60L;
        for (l_569 = 0; (l_569 <= 1); l_569 += 1)
        { /* block id: 304 */
            int32_t *l_707 = (void*)0;
            int32_t *l_710 = &p_1165->g_548;
            struct S0 *l_711 = &p_1165->g_40[2][1][1];
            int32_t l_714 = 1L;
            int16_t l_715 = 8L;
            int32_t l_716 = 7L;
            int32_t l_719[1][8] = {{4L,4L,4L,4L,4L,4L,4L,4L}};
            int32_t l_720[6][5][8] = {{{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L}},{{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L}},{{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L}},{{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L}},{{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L}},{{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L},{1L,0x36264F3DL,0x64685B93L,7L,7L,0x64685B93L,0x36264F3DL,1L}}};
            uint8_t *l_737[6][4];
            int32_t l_738 = 0x5AC03CE9L;
            uint32_t l_751 = 0UL;
            int64_t *l_752[6] = {&l_702,&p_1165->g_137[1][8][1],&l_702,&l_702,&p_1165->g_137[1][8][1],&l_702};
            int32_t **l_753 = &p_1165->g_109[0][2];
            int i, j, k;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 4; j++)
                    l_737[i][j] = (void*)0;
            }
            if ((((safe_mul_func_int16_t_s_s((((p_54 || l_507) & (safe_div_func_int8_t_s_s(((0x3CL | (0x27L == ((l_531 = 0x52L) >= ((l_699 != ((safe_mod_func_uint32_t_u_u(((((FAKE_DIVERGE(p_1165->local_1_offset, get_local_id(1), 10) || (l_702 , (((((((*l_710) &= ((((FAKE_DIVERGE(p_1165->group_2_offset, get_group_id(2), 10) , (safe_sub_func_int16_t_s_s(((p_54 > (safe_mul_func_uint16_t_u_u((((l_709 |= (l_708 &= p_54)) ^ p_1165->g_110[1][2][0]) != GROUP_DIVERGE(1, 1)), p_54))) || 0x54L), FAKE_DIVERGE(p_1165->global_2_offset, get_global_id(2), 10)))) > 18446744073709551615UL) | 1L) == p_54)) || l_709) || l_702) , 0xF1CDC9C0L) && p_1165->g_78[2]) && l_709))) ^ (**p_1165->g_226)) <= l_702) , 0xD520934CL), p_54)) , l_711)) < (*p_1165->g_227))))) & FAKE_DIVERGE(p_1165->group_2_offset, get_group_id(2), 10)), GROUP_DIVERGE(2, 1)))) && 0x48L), p_1165->g_3[6])) , (void*)0) == (void*)0))
            { /* block id: 309 */
                int32_t *l_712 = &l_708;
                int32_t *l_713[10][5] = {{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]},{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]},{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]},{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]},{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]},{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]},{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]},{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]},{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]},{&p_1165->g_3[6],&l_708,&l_531,&l_708,&p_1165->g_3[6]}};
                int i, j;
                l_727[0]--;
            }
            else
            { /* block id: 311 */
                int8_t ***l_730[10];
                int i;
                for (i = 0; i < 10; i++)
                    l_730[i] = &p_1165->g_226;
                for (l_726 = 0; (l_726 <= 1); l_726 += 1)
                { /* block id: 314 */
                    (*l_710) ^= ((void*)0 == l_730[7]);
                }
                if ((*l_710))
                    break;
            }
            (*l_710) = (l_725 , ((safe_mul_func_int16_t_s_s(p_54, ((((p_1165->g_470[l_569] = (((0xD7EBEA15895A123CL < p_1165->g_342) > ((((safe_lshift_func_int8_t_s_u((l_723 = 1L), 4)) , (*l_710)) || ((void*)0 == l_737[5][0])) > ((((((l_707 != l_692) != GROUP_DIVERGE(0, 1)) , l_708) , 1UL) <= p_54) >= 0x00467361L))) , (-7L))) , p_1165->g_468) || (*p_1165->g_235)) , 0UL))) <= p_1165->g_534));
            (*l_753) = func_90((((*l_538) = l_738) & ((safe_mul_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_u((((-6L) ^ (safe_mod_func_int64_t_s_s((((*p_1165->g_227) = l_708) , (-10L)), (p_1165->g_724 ^= ((safe_div_func_int32_t_s_s(((~(p_1165->g_199 == ((safe_add_func_int8_t_s_s((p_1165->g_749 == ((*l_710) , l_750)), l_751)) , l_709))) , l_727[0]), p_1165->g_470[1])) == p_54))))) & l_718[0]), 4)) >= 0xD0DD86396E173CC5L), p_54)) , l_726)), p_55, &p_1165->g_165, p_1165);
        }
lbl_936:
        for (l_507 = (-3); (l_507 == (-2)); l_507 = safe_add_func_uint64_t_u_u(l_507, 5))
        { /* block id: 329 */
            int64_t *l_758[7][2] = {{&l_702,&l_702},{&l_702,&l_702},{&l_702,&l_702},{&l_702,&l_702},{&l_702,&l_702},{&l_702,&l_702},{&l_702,&l_702}};
            int64_t *l_759[7] = {&p_1165->g_137[0][9][2],&p_1165->g_724,&p_1165->g_137[0][9][2],&p_1165->g_137[0][9][2],&p_1165->g_724,&p_1165->g_137[0][9][2],&p_1165->g_137[0][9][2]};
            int32_t *l_760 = &l_723;
            int16_t *l_801 = &l_507;
            int32_t l_908 = (-1L);
            int32_t l_910 = 0x7CA00FC4L;
            int32_t l_914[2];
            int i, j;
            for (i = 0; i < 2; i++)
                l_914[i] = (-8L);
            (*l_760) ^= ((safe_mul_func_uint16_t_u_u((+((*p_1165->g_39) , ((0UL < (0x1885L == (p_54 || (&p_54 == (l_758[1][1] = &p_54))))) == ((0x6989L != l_709) <= (l_717 = (((248UL != p_54) == l_718[0]) <= (-6L))))))), p_1165->g_149)) ^ 0xA4L);
            if (p_54)
                break;
            for (p_1165->g_468 = 8; (p_1165->g_468 >= 3); p_1165->g_468 -= 1)
            { /* block id: 336 */
                int8_t l_761 = 0x45L;
                uint16_t *l_768 = &p_1165->g_165.f0;
                int i;
                l_761 = ((-4L) <= l_594);
                (*l_760) = ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(((*l_768) = (--(*l_681))), (*l_760))), 3)) ^ (((safe_lshift_func_uint8_t_u_s((p_1165->g_5 , ((safe_mul_func_int8_t_s_s((**p_1165->g_226), ((((l_773 == (l_569 , &l_750)) & (safe_add_func_int8_t_s_s(p_54, ((void*)0 != &l_761)))) >= 7L) , GROUP_DIVERGE(1, 1)))) & p_54)), 1)) || p_54) | 0xFF2B480BA8C76A24L));
                (*p_1165->g_776) = p_1165->g_422;
                for (p_1165->g_724 = 8; (p_1165->g_724 >= 0); p_1165->g_724 -= 1)
                { /* block id: 344 */
                    struct S0 l_780 = {0x3E34L};
                    int i;
                    (*p_1165->g_779) = ((safe_add_func_int32_t_s_s(1L, (~(*p_1165->g_235)))) , (*p_53));
                    if (l_726)
                        goto lbl_936;
                    p_1165->g_672[p_1165->g_724] = func_90((l_780 , 0L), (*p_1165->g_335), p_53, p_1165);
                }
            }
        }
        return p_54;
    }
    else
    { /* block id: 406 */
        int32_t *l_937[10][4][6] = {{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}},{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}},{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}},{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}},{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}},{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}},{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}},{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}},{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}},{{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]},{&l_723,&l_922,&p_1165->g_154,&p_1165->g_36,(void*)0,&p_1165->g_110[1][2][0]}}};
        int i, j, k;
        ++l_938[3];
        return p_54;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1165->g_153 p_1165->g_154 p_1165->g_215 p_1165->g_165.f0 p_1165->g_3 p_1165->g_156 p_1165->g_110 p_1165->g_235 p_1165->g_248 p_1165->g_172 p_1165->g_5 p_1165->g_36 p_1165->g_151 p_1165->g_40.f0 p_1165->g_78 p_1165->g_294 p_1165->g_227 p_1165->g_137 p_1165->g_226 p_1165->g_328 p_1165->g_335 p_1165->g_35 p_1165->g_312 p_1165->g_336 p_1165->g_40 p_1165->g_149 p_1165->g_422 p_1165->g_125 p_1165->g_468
 * writes: p_1165->g_125 p_1165->g_154 p_1165->g_109 p_1165->g_225 p_1165->g_110 p_1165->g_248 p_1165->g_156 p_1165->g_151 p_1165->g_165.f0 p_1165->g_294 p_1165->g_312 p_1165->g_149 p_1165->g_336 p_1165->g_354 p_1165->g_172 p_1165->g_400 p_1165->g_422 p_1165->g_468 p_1165->g_470
 */
int64_t  func_57(struct S0 * p_58, int32_t * p_59, uint32_t  p_60, struct S0 * p_61, struct S1 * p_1165)
{ /* block id: 76 */
    struct S0 *l_189 = &p_1165->g_40[1][3][0];
    int32_t l_190 = (-9L);
    int32_t l_198 = 0x04AB980BL;
    int32_t l_200 = 0x58F1DAB9L;
    int32_t l_201 = 0x3EA239ECL;
    int32_t l_202 = 0x4ED69A39L;
    int32_t l_203[5][5][3] = {{{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL}},{{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL}},{{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL}},{{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL}},{{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL},{(-1L),1L,0x733F460CL}}};
    int32_t l_402[5] = {0x09A0926DL,0x09A0926DL,0x09A0926DL,0x09A0926DL,0x09A0926DL};
    int32_t l_500 = 8L;
    int16_t l_506 = (-1L);
    int i, j, k;
lbl_483:
    for (p_1165->g_125 = 0; (p_1165->g_125 <= 1); p_1165->g_125++)
    { /* block id: 79 */
        uint32_t l_188[6][9][4] = {{{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL}},{{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL}},{{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL}},{{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL}},{{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL}},{{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL},{0xCD78FEB2L,0xD0B5B8E1L,0x138D89CAL,0x138D89CAL}}};
        int32_t *l_191 = &l_190;
        int32_t *l_192 = &p_1165->g_154;
        int32_t *l_193 = &p_1165->g_110[1][2][0];
        int32_t *l_194 = &p_1165->g_110[3][2][4];
        int32_t *l_195 = &p_1165->g_154;
        int32_t *l_196 = &p_1165->g_110[0][0][1];
        int32_t *l_197[5][1] = {{&l_190},{&l_190},{&l_190},{&l_190},{&l_190}};
        uint16_t l_204 = 0UL;
        int i, j, k;
        (*p_1165->g_153) ^= (l_190 = (safe_lshift_func_int16_t_s_u((!(l_188[3][5][1] <= (p_58 != l_189))), 2)));
        ++l_204;
    }
    if ((*p_1165->g_153))
    { /* block id: 84 */
        int8_t *l_208[5][4][8] = {{{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151}},{{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151}},{{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151}},{{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151}},{{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151},{&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151,&p_1165->g_151}}};
        int8_t **l_207[5] = {&l_208[0][2][0],&l_208[0][2][0],&l_208[0][2][0],&l_208[0][2][0],&l_208[0][2][0]};
        int8_t ***l_209 = &l_207[2];
        int8_t **l_211 = &l_208[0][2][0];
        int8_t ***l_210[10][10][2] = {{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}},{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}},{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}},{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}},{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}},{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}},{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}},{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}},{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}},{{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211},{&l_211,&l_211}}};
        int8_t **l_212 = &l_208[0][2][0];
        int i, j, k;
        l_212 = ((*l_209) = l_207[4]);
        (*p_1165->g_215) = &l_201;
    }
    else
    { /* block id: 88 */
        int8_t *l_224 = &p_1165->g_151;
        int8_t **l_223[4];
        int8_t ***l_222[4];
        int32_t *l_233 = (void*)0;
        int32_t *l_234 = &l_202;
        int32_t *l_236 = (void*)0;
        int32_t *l_237 = &l_201;
        int32_t *l_238 = &l_200;
        int32_t *l_239 = (void*)0;
        int32_t *l_240 = &l_201;
        int32_t *l_241 = (void*)0;
        int32_t *l_242 = &p_1165->g_154;
        int32_t *l_243 = &l_198;
        int32_t *l_244 = &l_203[2][4][0];
        int32_t *l_245 = &p_1165->g_110[0][3][4];
        int32_t *l_246 = &l_198;
        int32_t *l_247[10][8][3] = {{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}},{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}},{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}},{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}},{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}},{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}},{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}},{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}},{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}},{{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]},{&p_1165->g_110[0][1][4],&p_1165->g_110[2][0][1],&l_203[2][4][0]}}};
        uint8_t l_304[7] = {0xD4L,1UL,0xD4L,0xD4L,1UL,0xD4L,0xD4L};
        uint32_t *l_366 = &p_1165->g_172;
        int16_t l_431 = (-1L);
        int32_t l_449 = (-4L);
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_223[i] = &l_224;
        for (i = 0; i < 4; i++)
            l_222[i] = &l_223[3];
        (*p_1165->g_235) = (safe_mul_func_int16_t_s_s((l_200 , (p_1165->g_165.f0 == (safe_sub_func_int32_t_s_s((p_1165->g_3[1] & (safe_lshift_func_uint16_t_u_u(((!p_1165->g_154) >= ((p_1165->g_225 = l_222[0]) != ((0x1E712BC0L & (p_1165->g_156 , (safe_rshift_func_int8_t_s_s((-1L), (safe_sub_func_int8_t_s_s((safe_unary_minus_func_int32_t_s(((*l_234) = 0x70659C4BL))), 9L)))))) , &p_1165->g_226))), 2))), p_1165->g_110[1][2][0])))), FAKE_DIVERGE(p_1165->local_2_offset, get_local_id(2), 10)));
        ++p_1165->g_248[3];
        for (l_198 = 0; (l_198 <= (-30)); --l_198)
        { /* block id: 95 */
            int32_t **l_256 = &l_237;
            int32_t ***l_255 = &l_256;
            (*l_244) |= (8UL == ((*l_237) &= ((*l_242) ^= (((safe_sub_func_int32_t_s_s(((((*l_255) = &p_1165->g_109[0][8]) == (void*)0) < (p_60 || (safe_sub_func_uint32_t_u_u(0UL, (p_1165->g_172 != FAKE_DIVERGE(p_1165->local_2_offset, get_local_id(2), 10)))))), ((safe_add_func_int8_t_s_s(((-1L) ^ (((safe_sub_func_uint16_t_u_u((0L > p_1165->g_248[0]), GROUP_DIVERGE(2, 1))) | (*p_59)) & p_1165->g_172)), p_60)) | 255UL))) > p_60) ^ p_1165->g_151))));
        }
        for (p_1165->g_156 = 16; (p_1165->g_156 > 60); p_1165->g_156 = safe_add_func_uint16_t_u_u(p_1165->g_156, 1))
        { /* block id: 103 */
            uint32_t l_282 = 0xD79D5BB6L;
            int32_t l_283 = (-1L);
            struct S0 l_343 = {1UL};
            int32_t l_357 = 1L;
            int64_t l_403[7][9][4] = {{{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L}},{{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L}},{{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L}},{{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L}},{{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L}},{{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L}},{{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L},{(-1L),0x0F0CB5B05CEEE61DL,0x7A7EF48C939FA1EDL,6L}}};
            int32_t l_429 = 9L;
            int32_t l_433 = (-7L);
            int32_t l_434 = 0x3CC4977DL;
            int32_t l_435 = 1L;
            int32_t l_436 = 0x65E37722L;
            int64_t l_437 = 0x4C3E3F015E4CC733L;
            int32_t l_440 = 0x6F63FB04L;
            int32_t l_442 = (-7L);
            int32_t l_443 = 0x214CC78DL;
            int32_t l_444[6] = {6L,(-5L),6L,6L,(-5L),6L};
            int32_t l_475 = 0x76EA62D8L;
            int64_t l_476[8][7] = {{8L,0x3E2722EB1247E888L,(-1L),0x2E41583ADF3B2034L,0x3E2722EB1247E888L,0x2E41583ADF3B2034L,(-1L)},{8L,0x3E2722EB1247E888L,(-1L),0x2E41583ADF3B2034L,0x3E2722EB1247E888L,0x2E41583ADF3B2034L,(-1L)},{8L,0x3E2722EB1247E888L,(-1L),0x2E41583ADF3B2034L,0x3E2722EB1247E888L,0x2E41583ADF3B2034L,(-1L)},{8L,0x3E2722EB1247E888L,(-1L),0x2E41583ADF3B2034L,0x3E2722EB1247E888L,0x2E41583ADF3B2034L,(-1L)},{8L,0x3E2722EB1247E888L,(-1L),0x2E41583ADF3B2034L,0x3E2722EB1247E888L,0x2E41583ADF3B2034L,(-1L)},{8L,0x3E2722EB1247E888L,(-1L),0x2E41583ADF3B2034L,0x3E2722EB1247E888L,0x2E41583ADF3B2034L,(-1L)},{8L,0x3E2722EB1247E888L,(-1L),0x2E41583ADF3B2034L,0x3E2722EB1247E888L,0x2E41583ADF3B2034L,(-1L)},{8L,0x3E2722EB1247E888L,(-1L),0x2E41583ADF3B2034L,0x3E2722EB1247E888L,0x2E41583ADF3B2034L,(-1L)}};
            int i, j, k;
            for (l_198 = 0; (l_198 < (-23)); l_198 = safe_sub_func_uint8_t_u_u(l_198, 8))
            { /* block id: 106 */
                struct S0 l_276 = {1UL};
                int8_t *l_303[1];
                int32_t l_309 = 1L;
                uint16_t *l_329 = &p_1165->g_165.f0;
                int i;
                for (i = 0; i < 1; i++)
                    l_303[i] = &p_1165->g_151;
                for (p_1165->g_151 = 0; (p_1165->g_151 != 12); p_1165->g_151 = safe_add_func_uint16_t_u_u(p_1165->g_151, 8))
                { /* block id: 109 */
                    uint16_t l_281 = 0xEA3CL;
                    uint16_t *l_330[2][7][4] = {{{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0}},{{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0},{&p_1165->g_40[2][1][1].f0,&l_276.f0,&l_276.f0,&p_1165->g_40[2][1][1].f0}}};
                    int i, j, k;
                    (*l_240) |= 3L;
                    for (p_1165->g_125 = 24; (p_1165->g_125 < (-6)); p_1165->g_125 = safe_sub_func_int64_t_s_s(p_1165->g_125, 4))
                    { /* block id: 113 */
                        struct S0 **l_273 = &l_189;
                        (*l_244) = ((*p_1165->g_235) != (safe_sub_func_uint16_t_u_u(((((((*l_273) = &p_1165->g_165) != ((safe_add_func_int8_t_s_s(1L, GROUP_DIVERGE(0, 1))) , (l_276 , (void*)0))) <= (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1165->group_1_offset, get_group_id(1), 10), (safe_rshift_func_uint16_t_u_s((p_60 >= ((((l_200 | p_1165->g_40[2][1][1].f0) > l_281) <= 0x00F7FE14L) != p_1165->g_110[1][2][0])), p_60))))) & l_282) & p_1165->g_78[2]), p_60)));
                        if (l_276.f0)
                            continue;
                        if (l_281)
                            break;
                        if (l_282)
                            continue;
                    }
                    if ((l_283 , 0x64B51136L))
                    { /* block id: 120 */
                        uint16_t *l_286 = &p_1165->g_165.f0;
                        uint8_t *l_293 = &p_1165->g_294;
                        uint64_t *l_310 = (void*)0;
                        uint64_t *l_311 = &p_1165->g_312;
                        int32_t l_313 = 0x4F4CE645L;
                        (*l_242) = ((*l_245) &= ((safe_rshift_func_int16_t_s_s((((*l_286)--) && p_1165->g_36), 8)) || ((((l_200 = (~(((-8L) > ((*l_240) |= ((safe_mod_func_int16_t_s_s((l_276.f0 <= ((safe_mod_func_uint8_t_u_u(((*l_293)++), (safe_div_func_int32_t_s_s((safe_add_func_int8_t_s_s(((safe_add_func_uint16_t_u_u((+(((void*)0 != l_303[0]) | (l_281 != p_1165->g_151))), l_304[3])) <= ((*l_311) = ((safe_rshift_func_uint8_t_u_s((((safe_mul_func_uint16_t_u_u((l_309 ^= 0x771FL), l_198)) > 0x05L) == p_1165->g_248[3]), (*p_1165->g_227))) , 18446744073709551610UL))), p_1165->g_137[1][8][0])), l_313)))) ^ 1UL)), p_60)) , (*l_242)))) >= l_276.f0))) > (**p_1165->g_226)) > 0x05L) | l_198)));
                        (*l_240) = (*p_59);
                        return p_60;
                    }
                    else
                    { /* block id: 131 */
                        int32_t **l_314 = &l_246;
                        uint32_t *l_317 = &p_1165->g_149;
                        (*l_314) = (void*)0;
                        (*l_237) = ((safe_mod_func_uint32_t_u_u(((*l_317) = p_1165->g_248[3]), ((safe_div_func_int16_t_s_s(p_60, (safe_add_func_int32_t_s_s(((p_60 & ((safe_lshift_func_int16_t_s_s(l_198, 4)) > (safe_lshift_func_uint16_t_u_u(0x8641L, 2)))) | l_309), (l_281 >= (4294967292UL < (l_190 > 18446744073709551611UL))))))) || (**p_1165->g_226)))) == p_1165->g_5);
                        (*l_234) ^= (p_1165->g_328[6] != (l_330[0][0][0] = l_329));
                    }
                    for (l_282 = 0; (l_282 <= 6); l_282 = safe_add_func_int8_t_s_s(l_282, 1))
                    { /* block id: 140 */
                        return p_1165->g_3[5];
                    }
                }
            }
            for (l_202 = 0; (l_202 <= (-2)); l_202 = safe_sub_func_int64_t_s_s(l_202, 5))
            { /* block id: 147 */
                int64_t *l_341[6];
                uint32_t *l_348 = &p_1165->g_149;
                uint32_t *l_353 = &p_1165->g_354;
                uint64_t *l_355 = &p_1165->g_312;
                uint8_t *l_356 = &l_304[3];
                int i;
                for (i = 0; i < 6; i++)
                    l_341[i] = &p_1165->g_342;
                (*l_238) = (*l_240);
                (*p_1165->g_335) = &p_1165->g_40[2][1][1];
                l_357 ^= (safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((l_190 ^= (-2L)) , 18446744073709551615UL) , (l_343 , ((*l_356) = (safe_add_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(((*l_355) ^= (l_200 ^ ((((((*l_348) = p_60) ^ ((((safe_sub_func_uint16_t_u_u(l_202, ((+l_202) ^ (GROUP_DIVERGE(0, 1) ^ ((safe_sub_func_uint8_t_u_u((((*p_59) & ((*l_353) = p_1165->g_35[0][4])) , 250UL), p_60)) > p_60))))) , p_60) < p_60) && 2L)) < FAKE_DIVERGE(p_1165->global_1_offset, get_global_id(1), 10)) | 255UL) , (-9L)))), l_283)), p_60))))), l_202)), l_198));
            }
            for (p_1165->g_154 = 0; (p_1165->g_154 < (-21)); p_1165->g_154 = safe_sub_func_uint32_t_u_u(p_1165->g_154, 1))
            { /* block id: 159 */
                uint32_t *l_365[6];
                uint32_t **l_364[8][2] = {{&l_365[1],&l_365[1]},{&l_365[1],&l_365[1]},{&l_365[1],&l_365[1]},{&l_365[1],&l_365[1]},{&l_365[1],&l_365[1]},{&l_365[1],&l_365[1]},{&l_365[1],&l_365[1]},{&l_365[1],&l_365[1]}};
                int i, j;
                for (i = 0; i < 6; i++)
                    l_365[i] = (void*)0;
                (*l_240) ^= (((safe_div_func_uint32_t_u_u(0UL, (safe_lshift_func_int16_t_s_u(0x74C2L, (!((0xE64901A23591AC7BL ^ (-7L)) >= ((**p_1165->g_335) , (((&p_1165->g_172 != (l_366 = &p_60)) != (safe_mod_func_uint8_t_u_u(((p_1165->g_40[2][1][1].f0 < (((FAKE_DIVERGE(p_1165->group_1_offset, get_group_id(1), 10) && 0x46L) , &p_1165->g_248[3]) != &p_1165->g_248[3])) , p_1165->g_154), l_190))) > l_202)))))))) >= p_1165->g_294) <= 0x39C1B163CED819CAL);
            }
            for (p_1165->g_172 = 28; (p_1165->g_172 <= 27); p_1165->g_172 = safe_sub_func_int32_t_s_s(p_1165->g_172, 1))
            { /* block id: 165 */
                uint32_t l_375[5][10][5] = {{{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL}},{{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL}},{{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL}},{{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL}},{{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL},{4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL}}};
                int32_t **l_382[5][1];
                int32_t l_450 = 0x5859497FL;
                uint8_t l_452 = 9UL;
                struct S0 **l_474 = &p_1165->g_336;
                uint32_t l_477 = 4294967290UL;
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_382[i][j] = &l_234;
                }
                for (p_60 = 21; (p_60 < 31); p_60 = safe_add_func_uint64_t_u_u(p_60, 1))
                { /* block id: 168 */
                    uint32_t l_397 = 0x1C2312C8L;
                    uint8_t *l_398 = &l_304[3];
                    uint8_t *l_399[6][2][1] = {{{&p_1165->g_294},{&p_1165->g_294}},{{&p_1165->g_294},{&p_1165->g_294}},{{&p_1165->g_294},{&p_1165->g_294}},{{&p_1165->g_294},{&p_1165->g_294}},{{&p_1165->g_294},{&p_1165->g_294}},{{&p_1165->g_294},{&p_1165->g_294}}};
                    int32_t l_401[6][2][1] = {{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}}};
                    int32_t l_404 = 0x37613B25L;
                    int32_t l_430 = 0x4535FCEEL;
                    int32_t l_432 = 0x2553A903L;
                    int32_t l_438 = 0x31091726L;
                    int32_t l_439 = 0x792D49F4L;
                    int32_t l_441 = 0x4958400CL;
                    int32_t l_445 = 0x5C6C04AAL;
                    int32_t l_446 = 6L;
                    int32_t l_447 = 0x7CCF454EL;
                    int32_t l_448 = (-7L);
                    int32_t l_451 = 5L;
                    int i, j, k;
                    for (p_1165->g_125 = 0; (p_1165->g_125 <= 27); ++p_1165->g_125)
                    { /* block id: 171 */
                        l_375[1][4][0]--;
                    }
                    l_404 = ((*l_238) ^= ((((p_1165->g_294 && l_375[1][4][0]) | (((safe_add_func_int64_t_s_s((safe_add_func_uint32_t_u_u(p_1165->g_110[2][0][1], p_60)), (((void*)0 == l_382[2][0]) < (p_1165->g_3[6] == (safe_lshift_func_uint8_t_u_s((p_60 != ((l_201 = (safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((safe_div_func_uint64_t_u_u(((safe_mod_func_uint32_t_u_u((((safe_div_func_int8_t_s_s((safe_div_func_int32_t_s_s((l_401[1][0][0] = (+((((p_1165->g_400 = ((*l_398) |= (l_203[2][4][0] || l_397))) != 8L) || 0L) , (-7L)))), GROUP_DIVERGE(0, 1))), p_60)) || p_60) < (*p_59)), 4294967295UL)) == 0x11F52AC1L), (*l_245))) > l_397), 0x6771L)), p_1165->g_312))) , l_397)), l_203[2][4][0])))))) , p_1165->g_137[3][2][0]) != p_1165->g_151)) , l_402[2]) != l_403[5][7][2]));
                    if ((&p_1165->g_172 == &p_1165->g_172))
                    { /* block id: 180 */
                        uint32_t *l_415 = &l_397;
                        uint32_t *l_416 = &p_1165->g_354;
                        uint32_t *l_417 = &p_1165->g_149;
                        uint32_t ***l_423 = &p_1165->g_422;
                        int64_t *l_424 = &p_1165->g_125;
                        int32_t l_425 = 0x4858D862L;
                        l_425 = (safe_div_func_int64_t_s_s(((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_u((p_60 | (&p_1165->g_172 != &p_1165->g_172)), l_343.f0)) && (safe_rshift_func_int16_t_s_s(((((((safe_sub_func_uint32_t_u_u(((*l_417) ^= ((*l_416) = ((*l_415) = 0x6D5D58CCL))), (((safe_rshift_func_uint8_t_u_s((p_1165->g_294++), 5)) , ((*l_423) = p_1165->g_422)) != ((**p_1165->g_335) , &l_366)))) ^ ((*l_424) &= (0x74B7L == 2L))) , (*p_1165->g_235)) != p_60) , p_60) ^ 1UL), p_60))), p_1165->g_137[3][5][1])) <= 0x4068L), p_1165->g_165.f0));
                        (*l_234) = 1L;
                    }
                    else
                    { /* block id: 189 */
                        int32_t *l_426 = (void*)0;
                        int32_t l_427 = 2L;
                        int32_t l_428[4] = {0x47E56548L,0x47E56548L,0x47E56548L,0x47E56548L};
                        int i;
                        l_426 = &l_201;
                        l_452--;
                    }
                }
                for (l_436 = 0; (l_436 <= 3); l_436 += 1)
                { /* block id: 196 */
                    int32_t *l_467 = &p_1165->g_468;
                    int32_t *l_469 = &p_1165->g_470[0];
                    int16_t *l_473 = &l_431;
                    int i, j, k;
                    p_59 = func_90((safe_mod_func_uint64_t_u_u(p_1165->g_110[l_436][l_436][(l_436 + 1)], (safe_lshift_func_int16_t_s_u(((safe_lshift_func_int8_t_s_u(p_1165->g_110[l_436][l_436][(l_436 + 1)], (safe_lshift_func_int16_t_s_u(((*l_473) = ((safe_lshift_func_uint8_t_u_u(p_1165->g_110[l_436][l_436][(l_436 + 1)], 1)) , (((((*l_244) = ((safe_add_func_int8_t_s_s((((*l_469) = ((*l_467) ^= p_1165->g_248[0])) , (*l_242)), ((*l_224) = ((void*)0 == &p_1165->g_40[2][1][0])))) > (safe_add_func_uint16_t_u_u(((&p_1165->g_342 == (void*)0) , 65535UL), GROUP_DIVERGE(0, 1))))) & 0xD61DA5F9L) == p_1165->g_312) , p_1165->g_468))), 4)))) > p_60), p_60)))), &p_1165->g_40[2][1][1], p_61, p_1165);
                    (*l_234) = (l_474 != (void*)0);
                }
                ++l_477;
                if ((*p_59))
                    continue;
            }
        }
    }
    for (l_202 = 5; (l_202 >= 1); l_202 -= 1)
    { /* block id: 212 */
        uint32_t l_480 = 4294967286UL;
        int32_t l_487 = 0x498B5E9BL;
        int32_t l_488 = 0x6F8F58EDL;
        int32_t l_489 = 0L;
        int32_t l_499 = 0L;
        int32_t l_501 = 0x757915E8L;
        uint8_t l_502 = 0x29L;
        ++l_480;
        if ((*p_59))
            break;
        if (l_198)
            goto lbl_483;
        for (l_201 = 0; (l_201 <= 5); l_201 += 1)
        { /* block id: 218 */
            return p_60;
        }
        for (l_201 = 5; (l_201 >= 0); l_201 -= 1)
        { /* block id: 223 */
            int32_t *l_484 = (void*)0;
            int32_t *l_485 = &p_1165->g_154;
            int32_t *l_486 = (void*)0;
            int32_t *l_490 = (void*)0;
            int32_t *l_491 = &p_1165->g_110[1][2][0];
            int32_t *l_492 = &p_1165->g_110[1][1][1];
            int32_t *l_493 = &p_1165->g_154;
            int32_t *l_494 = &l_200;
            int32_t *l_495 = &p_1165->g_110[1][2][0];
            int32_t *l_496 = &p_1165->g_110[2][2][3];
            int32_t *l_497 = (void*)0;
            int32_t *l_498[4][9][2] = {{{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488}},{{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488}},{{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488}},{{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488},{(void*)0,&l_488}}};
            int32_t **l_505 = &l_498[0][0][0];
            int i, j, k;
            l_502--;
            (*l_505) = (void*)0;
        }
    }
    return l_506;
}


/* ------------------------------------------ */
/* 
 * reads : p_1165->g_5 p_1165->g_78 p_1165->g_3 p_1165->g_110 p_1165->g_36 p_1165->g_35 p_1165->g_125 p_1165->g_137 p_1165->g_40.f0 p_1165->g_149 p_1165->g_153 p_1165->g_154 p_1165->g_156 p_1165->g_39 p_1165->g_40 p_1165->g_172
 * writes: p_1165->g_109 p_1165->g_125 p_1165->g_137 p_1165->g_149 p_1165->g_151 p_1165->g_154 p_1165->g_156 p_1165->g_165 p_1165->g_110
 */
struct S0 * func_62(uint16_t  p_63, int64_t  p_64, uint64_t  p_65, struct S0  p_66, struct S0 * p_67, struct S1 * p_1165)
{ /* block id: 21 */
    int32_t *l_89 = &p_1165->g_5;
    int32_t l_155 = 5L;
    int32_t **l_158 = &p_1165->g_109[2][6];
    uint32_t l_161[1];
    struct S0 l_166 = {0xE05FL};
    int64_t *l_177 = (void*)0;
    int i;
    for (i = 0; i < 1; i++)
        l_161[i] = 0xFE33FEA8L;
    for (p_66.f0 = 0; (p_66.f0 <= 5); p_66.f0 = safe_add_func_int16_t_s_s(p_66.f0, 7))
    { /* block id: 24 */
        uint64_t l_88 = 0xFAD3287B7884FD30L;
        int64_t *l_136 = &p_1165->g_137[1][8][0];
        int32_t *l_138[10][2] = {{&p_1165->g_3[6],&p_1165->g_3[6]},{&p_1165->g_3[6],&p_1165->g_3[6]},{&p_1165->g_3[6],&p_1165->g_3[6]},{&p_1165->g_3[6],&p_1165->g_3[6]},{&p_1165->g_3[6],&p_1165->g_3[6]},{&p_1165->g_3[6],&p_1165->g_3[6]},{&p_1165->g_3[6],&p_1165->g_3[6]},{&p_1165->g_3[6],&p_1165->g_3[6]},{&p_1165->g_3[6],&p_1165->g_3[6]},{&p_1165->g_3[6],&p_1165->g_3[6]}};
        int i, j;
        p_1165->g_156 &= (l_155 |= func_82(l_88, &p_1165->g_40[3][3][3], l_89, func_90((safe_unary_minus_func_uint8_t_u(((safe_rshift_func_int8_t_s_s(0x03L, 7)) <= (p_63 & 4L)))), &p_1165->g_40[2][1][1], ((((*l_136) &= (safe_unary_minus_func_uint64_t_u(((((*l_89) , func_98((safe_sub_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(l_88, 0x4EB4B622L)), p_1165->g_78[2])), p_1165->g_78[2], p_1165->g_78[2], p_1165->g_3[7], p_1165)) || l_88) & FAKE_DIVERGE(p_1165->global_2_offset, get_global_id(2), 10))))) && 1L) , (void*)0), p_1165), l_138[1][0], p_1165));
    }
    (*l_158) = &p_1165->g_3[6];
    for (p_64 = 0; (p_64 == 14); p_64++)
    { /* block id: 61 */
        struct S0 *l_164[6] = {&p_1165->g_165,&p_1165->g_165,&p_1165->g_165,&p_1165->g_165,&p_1165->g_165,&p_1165->g_165};
        int i;
        l_166 = (p_1165->g_165 = (p_66 = ((l_161[0] >= (safe_lshift_func_int16_t_s_u(p_63, 1))) , (*p_1165->g_39))));
    }
    if ((safe_mul_func_int16_t_s_s((p_64 > GROUP_DIVERGE(2, 1)), (safe_unary_minus_func_int32_t_s((0x2DDED739L || 4294967292UL))))))
    { /* block id: 66 */
        return &p_1165->g_40[5][0][0];
    }
    else
    { /* block id: 68 */
        uint32_t l_170[3];
        uint32_t *l_171[3];
        int32_t l_173 = 0x5A2CE011L;
        int32_t *l_176 = &p_1165->g_110[1][2][3];
        int64_t *l_182 = &p_1165->g_125;
        int i;
        for (i = 0; i < 3; i++)
            l_170[i] = 0xC2D1DE3EL;
        for (i = 0; i < 3; i++)
            l_171[i] = &p_1165->g_172;
        l_170[0] &= (*l_89);
        (*l_176) ^= ((l_173 = l_170[0]) , (safe_rshift_func_int8_t_s_u(0x44L, 7)));
        (*l_176) = (p_1165->g_149 == ((*l_182) |= (((void*)0 == l_177) == (((safe_unary_minus_func_uint8_t_u(((safe_add_func_int32_t_s_s(p_65, ((void*)0 == l_177))) ^ p_1165->g_172))) , (*l_89)) <= (safe_unary_minus_func_uint8_t_u(((p_65 | 0x49L) >= 6L)))))));
    }
    return &p_1165->g_40[2][1][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1165->g_125 p_1165->g_137 p_1165->g_40.f0 p_1165->g_149 p_1165->g_78 p_1165->g_110 p_1165->g_5 p_1165->g_153 p_1165->g_154
 * writes: p_1165->g_149 p_1165->g_151 p_1165->g_154
 */
int32_t  func_82(uint64_t  p_83, struct S0 * p_84, int32_t * p_85, int32_t * p_86, int32_t * p_87, struct S1 * p_1165)
{ /* block id: 45 */
    int32_t l_141 = 0x7D216E5EL;
    uint32_t *l_148 = &p_1165->g_149;
    int8_t *l_150 = &p_1165->g_151;
    uint64_t l_152 = 18446744073709551615UL;
    for (p_83 = 0; (p_83 <= 53); p_83 = safe_add_func_uint32_t_u_u(p_83, 1))
    { /* block id: 48 */
        return l_141;
    }
    (*p_1165->g_153) ^= (((p_1165->g_125 < ((safe_mul_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(((void*)0 != p_87), (0x152ABA5EL > 0x15793E41L))) , 0x6AEBL), (6UL & (p_1165->g_137[1][8][0] || ((((((safe_mod_func_int8_t_s_s(((*l_150) = ((((*l_148) |= p_1165->g_40[2][1][1].f0) == 0x26C4C03FL) | l_141)), 0x47L)) <= p_1165->g_78[2]) == 0x9094L) < p_1165->g_110[1][2][0]) == (*p_85)) ^ l_141))))) , p_1165->g_137[1][9][1])) == l_152) , (*p_86));
    return (*p_85);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_90(int8_t  p_91, struct S0 * p_92, struct S0 * p_93, struct S1 * p_1165)
{ /* block id: 43 */
    return &p_1165->g_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1165->g_3 p_1165->g_110 p_1165->g_36 p_1165->g_78 p_1165->g_35 p_1165->g_125
 * writes: p_1165->g_109 p_1165->g_125
 */
int32_t  func_98(uint32_t  p_99, uint32_t  p_100, int32_t  p_101, int64_t  p_102, struct S1 * p_1165)
{ /* block id: 25 */
    int32_t *l_107 = (void*)0;
    int32_t **l_108 = (void*)0;
    struct S0 *l_123 = (void*)0;
    int64_t *l_124 = &p_1165->g_125;
    int32_t l_126 = 0x1626E4E1L;
    int32_t *l_127 = (void*)0;
    uint32_t l_131 = 4294967295UL;
    p_1165->g_109[0][2] = l_107;
    p_101 = ((p_1165->g_3[6] , ((p_1165->g_110[3][1][0] | (safe_mul_func_int16_t_s_s((safe_mod_func_int64_t_s_s((((*l_124) = (safe_rshift_func_uint8_t_u_s((((((safe_mul_func_int16_t_s_s((-1L), p_1165->g_36)) , ((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1165->local_0_offset, get_local_id(0), 10), (safe_div_func_int64_t_s_s((((!(((0x2D71L | (((+p_1165->g_78[2]) , &p_1165->g_40[5][2][3]) == l_123)) < (0x1CL && p_101)) , 0xED61D3EEL)) || p_1165->g_110[2][0][0]) , p_1165->g_36), 0x845370BFA85FE053L)))) , l_123)) != (void*)0) ^ FAKE_DIVERGE(p_1165->global_2_offset, get_global_id(2), 10)) && p_1165->g_35[0][4]), 0))) | p_1165->g_78[2]), p_100)), p_1165->g_36))) && p_1165->g_125)) , l_126);
    for (p_100 = (-14); (p_100 != 42); ++p_100)
    { /* block id: 31 */
        int32_t *l_130 = &p_1165->g_110[3][3][2];
        l_130 = &p_101;
        for (p_102 = 0; p_102 < 8; p_102 += 1)
        {
            for (p_99 = 0; p_99 < 10; p_99 += 1)
            {
                p_1165->g_109[p_102][p_99] = &p_1165->g_36;
            }
        }
        --l_131;
        for (p_101 = 0; (p_101 < (-25)); p_101 = safe_sub_func_int16_t_s_s(p_101, 9))
        { /* block id: 37 */
            if (p_99)
                break;
        }
    }
    return p_99;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1166;
    struct S1* p_1165 = &c_1166;
    struct S1 c_1167 = {
        {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)}, // p_1165->g_3
        0x69FB1C03L, // p_1165->g_5
        {{0x0B1B9B96L,0x069A3E2BL,0x0B1B9B96L,0x0B1B9B96L,0x069A3E2BL,0x0B1B9B96L,0x0B1B9B96L}}, // p_1165->g_35
        (-3L), // p_1165->g_36
        {{{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}}},{{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}}},{{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}}},{{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}}},{{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}}},{{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}},{{0xE34DL},{0UL},{0x0076L},{0UL}}}}, // p_1165->g_40
        &p_1165->g_40[2][1][1], // p_1165->g_39
        {0xE8B95DE1L,0xE8B95DE1L,0xE8B95DE1L}, // p_1165->g_78
        {{{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L}},{{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L}},{{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L}},{{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L},{(-6L),6L,6L,(-6L),0x2C55B158L}}}, // p_1165->g_110
        {{&p_1165->g_3[3],&p_1165->g_5,&p_1165->g_3[2],(void*)0,&p_1165->g_36,&p_1165->g_36,(void*)0,&p_1165->g_3[2],&p_1165->g_5,&p_1165->g_3[3]},{&p_1165->g_3[3],&p_1165->g_5,&p_1165->g_3[2],(void*)0,&p_1165->g_36,&p_1165->g_36,(void*)0,&p_1165->g_3[2],&p_1165->g_5,&p_1165->g_3[3]},{&p_1165->g_3[3],&p_1165->g_5,&p_1165->g_3[2],(void*)0,&p_1165->g_36,&p_1165->g_36,(void*)0,&p_1165->g_3[2],&p_1165->g_5,&p_1165->g_3[3]},{&p_1165->g_3[3],&p_1165->g_5,&p_1165->g_3[2],(void*)0,&p_1165->g_36,&p_1165->g_36,(void*)0,&p_1165->g_3[2],&p_1165->g_5,&p_1165->g_3[3]},{&p_1165->g_3[3],&p_1165->g_5,&p_1165->g_3[2],(void*)0,&p_1165->g_36,&p_1165->g_36,(void*)0,&p_1165->g_3[2],&p_1165->g_5,&p_1165->g_3[3]},{&p_1165->g_3[3],&p_1165->g_5,&p_1165->g_3[2],(void*)0,&p_1165->g_36,&p_1165->g_36,(void*)0,&p_1165->g_3[2],&p_1165->g_5,&p_1165->g_3[3]},{&p_1165->g_3[3],&p_1165->g_5,&p_1165->g_3[2],(void*)0,&p_1165->g_36,&p_1165->g_36,(void*)0,&p_1165->g_3[2],&p_1165->g_5,&p_1165->g_3[3]},{&p_1165->g_3[3],&p_1165->g_5,&p_1165->g_3[2],(void*)0,&p_1165->g_36,&p_1165->g_36,(void*)0,&p_1165->g_3[2],&p_1165->g_5,&p_1165->g_3[3]}}, // p_1165->g_109
        0x142222B01ECF65DDL, // p_1165->g_125
        {{{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L}},{{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L}},{{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L}},{{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L}},{{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L}},{{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L}},{{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L},{0L,0L,0x665F5ADEA466AC14L}}}, // p_1165->g_137
        0x045B8B10L, // p_1165->g_149
        0x04L, // p_1165->g_151
        0x2979A3CFL, // p_1165->g_154
        &p_1165->g_154, // p_1165->g_153
        0x67L, // p_1165->g_156
        (void*)0, // p_1165->g_157
        {2UL}, // p_1165->g_165
        0UL, // p_1165->g_172
        7L, // p_1165->g_199
        (void*)0, // p_1165->g_213
        {{&p_1165->g_109[0][2],&p_1165->g_109[1][3],&p_1165->g_109[0][2],(void*)0,&p_1165->g_109[1][3],(void*)0,&p_1165->g_109[0][2],&p_1165->g_109[1][3]},{&p_1165->g_109[0][2],&p_1165->g_109[1][3],&p_1165->g_109[0][2],(void*)0,&p_1165->g_109[1][3],(void*)0,&p_1165->g_109[0][2],&p_1165->g_109[1][3]},{&p_1165->g_109[0][2],&p_1165->g_109[1][3],&p_1165->g_109[0][2],(void*)0,&p_1165->g_109[1][3],(void*)0,&p_1165->g_109[0][2],&p_1165->g_109[1][3]},{&p_1165->g_109[0][2],&p_1165->g_109[1][3],&p_1165->g_109[0][2],(void*)0,&p_1165->g_109[1][3],(void*)0,&p_1165->g_109[0][2],&p_1165->g_109[1][3]},{&p_1165->g_109[0][2],&p_1165->g_109[1][3],&p_1165->g_109[0][2],(void*)0,&p_1165->g_109[1][3],(void*)0,&p_1165->g_109[0][2],&p_1165->g_109[1][3]},{&p_1165->g_109[0][2],&p_1165->g_109[1][3],&p_1165->g_109[0][2],(void*)0,&p_1165->g_109[1][3],(void*)0,&p_1165->g_109[0][2],&p_1165->g_109[1][3]}}, // p_1165->g_214
        &p_1165->g_109[0][2], // p_1165->g_215
        &p_1165->g_151, // p_1165->g_227
        &p_1165->g_227, // p_1165->g_226
        &p_1165->g_226, // p_1165->g_225
        &p_1165->g_110[1][2][0], // p_1165->g_235
        {18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL}, // p_1165->g_248
        248UL, // p_1165->g_294
        0x46D186151A2CAB43L, // p_1165->g_312
        {&p_1165->g_40[2][1][1].f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_40[2][1][1].f0,&p_1165->g_40[2][1][1].f0}, // p_1165->g_328
        &p_1165->g_40[2][1][1], // p_1165->g_336
        &p_1165->g_336, // p_1165->g_335
        0L, // p_1165->g_342
        0xC06B6127L, // p_1165->g_354
        1UL, // p_1165->g_400
        (void*)0, // p_1165->g_422
        0x397824BCL, // p_1165->g_468
        {0x2F308298L,0x2F308298L}, // p_1165->g_470
        0x1C2C91EDL, // p_1165->g_534
        {{0x56E3L,0x56E3L},{0x56E3L,0x56E3L},{0x56E3L,0x56E3L},{0x56E3L,0x56E3L}}, // p_1165->g_537
        (void*)0, // p_1165->g_539
        0x412A54AFL, // p_1165->g_548
        {&p_1165->g_199,&p_1165->g_199,&p_1165->g_199}, // p_1165->g_614
        {&p_1165->g_154,&p_1165->g_154,&p_1165->g_154,&p_1165->g_154,&p_1165->g_154,&p_1165->g_154,&p_1165->g_154,&p_1165->g_154,&p_1165->g_154}, // p_1165->g_672
        &p_1165->g_548, // p_1165->g_673
        (-2L), // p_1165->g_694
        0x57CE6CD0D21892D2L, // p_1165->g_724
        (void*)0, // p_1165->g_749
        &p_1165->g_422, // p_1165->g_776
        &p_1165->g_165, // p_1165->g_779
        &p_1165->g_110[1][2][0], // p_1165->g_819
        &p_1165->g_165, // p_1165->g_821
        {1UL,1UL}, // p_1165->g_835
        &p_1165->g_109[4][4], // p_1165->g_903
        253UL, // p_1165->g_926
        0x3950L, // p_1165->g_942
        {{&p_1165->g_468,&p_1165->g_468,(void*)0,(void*)0,&p_1165->g_470[0],&p_1165->g_470[0],&p_1165->g_470[0]},{&p_1165->g_468,&p_1165->g_468,(void*)0,(void*)0,&p_1165->g_470[0],&p_1165->g_470[0],&p_1165->g_470[0]},{&p_1165->g_468,&p_1165->g_468,(void*)0,(void*)0,&p_1165->g_470[0],&p_1165->g_470[0],&p_1165->g_470[0]},{&p_1165->g_468,&p_1165->g_468,(void*)0,(void*)0,&p_1165->g_470[0],&p_1165->g_470[0],&p_1165->g_470[0]},{&p_1165->g_468,&p_1165->g_468,(void*)0,(void*)0,&p_1165->g_470[0],&p_1165->g_470[0],&p_1165->g_470[0]},{&p_1165->g_468,&p_1165->g_468,(void*)0,(void*)0,&p_1165->g_470[0],&p_1165->g_470[0],&p_1165->g_470[0]},{&p_1165->g_468,&p_1165->g_468,(void*)0,(void*)0,&p_1165->g_470[0],&p_1165->g_470[0],&p_1165->g_470[0]},{&p_1165->g_468,&p_1165->g_468,(void*)0,(void*)0,&p_1165->g_470[0],&p_1165->g_470[0],&p_1165->g_470[0]},{&p_1165->g_468,&p_1165->g_468,(void*)0,(void*)0,&p_1165->g_470[0],&p_1165->g_470[0],&p_1165->g_470[0]}}, // p_1165->g_965
        (-4L), // p_1165->g_993
        (void*)0, // p_1165->g_1052
        (void*)0, // p_1165->g_1053
        &p_1165->g_109[5][5], // p_1165->g_1054
        0x83BD4317L, // p_1165->g_1105
        {&p_1165->g_1105,&p_1165->g_1105,&p_1165->g_1105,&p_1165->g_1105,&p_1165->g_1105,&p_1165->g_1105,&p_1165->g_1105}, // p_1165->g_1104
        &p_1165->g_1104[1], // p_1165->g_1103
        &p_1165->g_1103, // p_1165->g_1106
        251UL, // p_1165->g_1142
        0x70BA0F9BL, // p_1165->g_1150
        sequence_input[get_global_id(0)], // p_1165->global_0_offset
        sequence_input[get_global_id(1)], // p_1165->global_1_offset
        sequence_input[get_global_id(2)], // p_1165->global_2_offset
        sequence_input[get_local_id(0)], // p_1165->local_0_offset
        sequence_input[get_local_id(1)], // p_1165->local_1_offset
        sequence_input[get_local_id(2)], // p_1165->local_2_offset
        sequence_input[get_group_id(0)], // p_1165->group_0_offset
        sequence_input[get_group_id(1)], // p_1165->group_1_offset
        sequence_input[get_group_id(2)], // p_1165->group_2_offset
    };
    c_1166 = c_1167;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1165);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1165->g_3[i], "p_1165->g_3[i]", print_hash_value);

    }
    transparent_crc(p_1165->g_5, "p_1165->g_5", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1165->g_35[i][j], "p_1165->g_35[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1165->g_36, "p_1165->g_36", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1165->g_40[i][j][k].f0, "p_1165->g_40[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1165->g_78[i], "p_1165->g_78[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1165->g_110[i][j][k], "p_1165->g_110[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1165->g_125, "p_1165->g_125", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1165->g_137[i][j][k], "p_1165->g_137[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1165->g_149, "p_1165->g_149", print_hash_value);
    transparent_crc(p_1165->g_151, "p_1165->g_151", print_hash_value);
    transparent_crc(p_1165->g_154, "p_1165->g_154", print_hash_value);
    transparent_crc(p_1165->g_156, "p_1165->g_156", print_hash_value);
    transparent_crc(p_1165->g_165.f0, "p_1165->g_165.f0", print_hash_value);
    transparent_crc(p_1165->g_172, "p_1165->g_172", print_hash_value);
    transparent_crc(p_1165->g_199, "p_1165->g_199", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1165->g_248[i], "p_1165->g_248[i]", print_hash_value);

    }
    transparent_crc(p_1165->g_294, "p_1165->g_294", print_hash_value);
    transparent_crc(p_1165->g_312, "p_1165->g_312", print_hash_value);
    transparent_crc(p_1165->g_342, "p_1165->g_342", print_hash_value);
    transparent_crc(p_1165->g_354, "p_1165->g_354", print_hash_value);
    transparent_crc(p_1165->g_400, "p_1165->g_400", print_hash_value);
    transparent_crc(p_1165->g_468, "p_1165->g_468", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1165->g_470[i], "p_1165->g_470[i]", print_hash_value);

    }
    transparent_crc(p_1165->g_534, "p_1165->g_534", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1165->g_537[i][j], "p_1165->g_537[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1165->g_548, "p_1165->g_548", print_hash_value);
    transparent_crc(p_1165->g_694, "p_1165->g_694", print_hash_value);
    transparent_crc(p_1165->g_724, "p_1165->g_724", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1165->g_835[i], "p_1165->g_835[i]", print_hash_value);

    }
    transparent_crc(p_1165->g_926, "p_1165->g_926", print_hash_value);
    transparent_crc(p_1165->g_942, "p_1165->g_942", print_hash_value);
    transparent_crc(p_1165->g_993, "p_1165->g_993", print_hash_value);
    transparent_crc(p_1165->g_1105, "p_1165->g_1105", print_hash_value);
    transparent_crc(p_1165->g_1142, "p_1165->g_1142", print_hash_value);
    transparent_crc(p_1165->g_1150, "p_1165->g_1150", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
