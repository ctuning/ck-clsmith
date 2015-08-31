// ---fake_divergence -g 1,1,1 -l 1,1,1
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


// Seed: 119

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int8_t * volatile  f0;
   int32_t  f1;
   uint64_t  f2;
   int8_t  f3;
};

union U1 {
   uint32_t  f0;
   int16_t  f1;
};

struct S2 {
    uint32_t g_10;
    volatile union U1 g_41;
    int8_t g_43;
    int8_t *g_52;
    int8_t **g_51;
    int32_t g_54[3];
    int32_t *g_61;
    int32_t ** volatile g_60;
    VECTOR(uint16_t, 8) g_103;
    VECTOR(uint16_t, 4) g_104;
    uint32_t g_115[4][1][8];
    int32_t g_124;
    int32_t * volatile g_123;
    uint8_t g_132;
    int32_t * volatile g_158;
    volatile VECTOR(uint32_t, 4) g_199;
    VECTOR(uint16_t, 4) g_201;
    VECTOR(int16_t, 2) g_209;
    VECTOR(int16_t, 4) g_214;
    VECTOR(int16_t, 2) g_215;
    uint32_t g_225;
    int32_t g_228[7];
    VECTOR(int32_t, 2) g_236;
    volatile VECTOR(uint16_t, 16) g_245;
    VECTOR(uint16_t, 8) g_246;
    uint32_t g_254;
    int32_t g_255;
    int32_t * volatile g_281;
    int32_t **g_292;
    volatile VECTOR(int32_t, 16) g_294;
    int32_t g_295[8][5];
    union U0 g_296[7][3];
    uint16_t *g_308;
    VECTOR(int64_t, 2) g_339;
    int32_t * volatile g_367;
    VECTOR(int64_t, 16) g_381;
    volatile VECTOR(uint16_t, 8) g_391;
    VECTOR(uint16_t, 16) g_397;
    uint64_t g_434;
    volatile uint64_t g_439;
    volatile uint64_t *g_438[5][9][5];
    volatile uint64_t **g_437;
    volatile uint64_t *** volatile g_440[9];
    volatile VECTOR(int64_t, 8) g_448;
    volatile VECTOR(int64_t, 4) g_449;
    uint64_t *g_476;
    uint64_t **g_475;
    uint64_t ***g_474[1];
    volatile VECTOR(int64_t, 16) g_491;
    VECTOR(uint64_t, 4) g_500;
    int64_t g_507[10][6];
    volatile uint32_t g_519[6];
    volatile VECTOR(uint16_t, 2) g_531;
    VECTOR(uint8_t, 2) g_548;
    VECTOR(uint8_t, 2) g_554;
    VECTOR(int16_t, 16) g_561;
    volatile VECTOR(int16_t, 2) g_562;
    volatile union U0 g_585;
    volatile VECTOR(int32_t, 16) g_586;
    volatile VECTOR(uint32_t, 8) g_616;
    volatile VECTOR(uint32_t, 4) g_621;
    VECTOR(uint8_t, 8) g_640;
    VECTOR(int8_t, 2) g_641;
    int32_t * volatile g_649;
    union U0 *g_652;
    union U0 ** volatile g_651;
    uint8_t *g_658;
    uint8_t **g_657;
    uint8_t *** volatile g_656;
    uint64_t g_659[1][10];
    VECTOR(uint16_t, 4) g_669;
    VECTOR(uint16_t, 8) g_670;
    volatile VECTOR(int8_t, 8) g_677;
    volatile VECTOR(int8_t, 8) g_678;
    VECTOR(uint8_t, 8) g_691;
    volatile VECTOR(uint8_t, 4) g_693;
    uint64_t g_718;
    union U1 g_720;
    int64_t * volatile *g_729;
    int32_t * volatile g_750;
    union U0 g_756;
    volatile int64_t *g_758;
    volatile int64_t * volatile *g_757;
    VECTOR(uint8_t, 4) g_781;
    int64_t *g_827;
    int64_t **g_826[2][8][7];
    union U1 g_902;
    union U1 *g_901;
    volatile VECTOR(int64_t, 8) g_911;
    volatile VECTOR(uint32_t, 16) g_945;
    VECTOR(int8_t, 8) g_960;
    VECTOR(int8_t, 4) g_970;
    VECTOR(int8_t, 2) g_997;
    VECTOR(int32_t, 16) g_1010;
    int16_t *g_1020;
    VECTOR(int16_t, 2) g_1039;
    volatile VECTOR(int16_t, 16) g_1040;
    VECTOR(int16_t, 8) g_1043;
    VECTOR(uint32_t, 2) g_1051;
    VECTOR(int8_t, 2) g_1072;
    uint32_t g_1078;
    int8_t *g_1084;
    int8_t **g_1083;
    volatile VECTOR(int32_t, 4) g_1089;
    VECTOR(int32_t, 4) g_1091;
    VECTOR(int32_t, 16) g_1093;
    volatile VECTOR(int32_t, 16) g_1094;
    VECTOR(uint32_t, 8) g_1097;
    volatile VECTOR(int16_t, 4) g_1099;
    uint8_t * volatile * volatile g_1111[5];
    uint8_t * volatile * volatile *g_1110;
    uint8_t * volatile * volatile * volatile *g_1109[6];
    VECTOR(int32_t, 4) g_1116;
    VECTOR(uint16_t, 16) g_1123;
    int32_t * volatile g_1194;
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
uint32_t  func_1(struct S2 * p_1215);
uint16_t  func_3(int8_t * p_4, int32_t  p_5, int32_t  p_6, int64_t  p_7, struct S2 * p_1215);
int8_t * func_8(uint64_t  p_9, struct S2 * p_1215);
int8_t ** func_11(int64_t  p_12, uint64_t  p_13, struct S2 * p_1215);
int64_t  func_14(int8_t * p_15, uint16_t  p_16, struct S2 * p_1215);
uint16_t  func_23(int8_t ** p_24, int8_t  p_25, struct S2 * p_1215);
int8_t ** func_26(int8_t * p_27, int8_t ** p_28, int32_t  p_29, int8_t  p_30, struct S2 * p_1215);
int8_t * func_31(uint64_t  p_32, uint64_t  p_33, uint16_t  p_34, struct S2 * p_1215);
uint64_t  func_35(int8_t * p_36, int8_t ** p_37, uint64_t  p_38, int8_t ** p_39, uint32_t  p_40, struct S2 * p_1215);
int32_t  func_46(union U1  p_47, int8_t ** p_48, int64_t  p_49, struct S2 * p_1215);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1215->g_10 p_1215->g_41 p_1215->g_43 p_1215->g_51 p_1215->g_60 p_1215->g_61 p_1215->g_54 p_1215->g_103 p_1215->g_104 p_1215->g_115 p_1215->g_52 p_1215->g_123 p_1215->g_132 p_1215->g_158 p_1215->g_124 p_1215->g_199 p_1215->g_201 p_1215->g_209 p_1215->g_214 p_1215->g_215 p_1215->g_281 p_1215->g_228 p_1215->g_296 p_1215->g_292 p_1215->g_308 p_1215->g_246 p_1215->g_245 p_1215->g_236 p_1215->g_367 p_1215->g_437 p_1215->g_254 p_1215->g_474 p_1215->g_339 p_1215->g_397 p_1215->g_491 p_1215->g_500 p_1215->g_507 p_1215->g_519 p_1215->g_585 p_1215->g_586 p_1215->g_295 p_1215->g_476 p_1215->g_616 p_1215->g_621 p_1215->g_640 p_1215->g_641 p_1215->g_548 p_1215->g_475 p_1215->g_434 p_1215->g_649 p_1215->g_651 p_1215->g_656 p_1215->g_659 p_1215->g_669 p_1215->g_670 p_1215->g_677 p_1215->g_678 p_1215->g_691 p_1215->g_693 p_1215->g_729 p_1215->g_750 p_1215->g_756 p_1215->g_757 p_1215->g_652 p_1215->g_720.f0 p_1215->g_781 p_1215->g_826 p_1215->g_294 p_1215->g_911 p_1215->g_1010 p_1215->g_718 p_1215->g_1072 p_1215->g_1078 p_1215->g_381 p_1215->g_1089 p_1215->g_1091 p_1215->g_1093 p_1215->g_1094 p_1215->g_902.f0 p_1215->g_1097 p_1215->g_1099 p_1215->g_1109 p_1215->g_1116 p_1215->g_1123 p_1215->g_448
 * writes: p_1215->g_61 p_1215->g_43 p_1215->g_54 p_1215->g_115 p_1215->g_124 p_1215->g_132 p_1215->g_104 p_1215->g_225 p_1215->g_228 p_1215->g_51 p_1215->g_292 p_1215->g_295 p_1215->g_103 p_1215->g_296.f3 p_1215->g_437 p_1215->g_474 p_1215->g_507 p_1215->g_236 p_1215->g_519 p_1215->g_434 p_1215->g_296.f2 p_1215->g_652 p_1215->g_657 p_1215->g_718 p_1215->g_720.f0 p_1215->g_254 p_1215->g_397 p_1215->g_720.f1 p_1215->g_669 p_1215->g_826 p_1215->g_901 p_1215->g_1020 p_1215->g_1078 p_1215->g_1083 p_1215->g_902.f0
 */
uint32_t  func_1(struct S2 * p_1215)
{ /* block id: 4 */
    uint64_t l_2 = 1UL;
    VECTOR(int8_t, 4) l_1073 = (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, (-5L)), (-5L));
    int8_t **l_1081[2][8] = {{(void*)0,&p_1215->g_52,(void*)0,(void*)0,&p_1215->g_52,(void*)0,(void*)0,&p_1215->g_52},{(void*)0,&p_1215->g_52,(void*)0,(void*)0,&p_1215->g_52,(void*)0,(void*)0,&p_1215->g_52}};
    int8_t ***l_1082[3][8][1];
    uint64_t l_1085 = 18446744073709551610UL;
    uint64_t l_1086 = 0x5DB3E7FE9A262B1FL;
    int32_t *l_1113 = &p_1215->g_54[2];
    int64_t *l_1119 = (void*)0;
    int64_t *l_1120[2];
    int64_t *l_1140 = &p_1215->g_507[7][5];
    int64_t **l_1139 = &l_1140;
    int64_t ***l_1138 = &l_1139;
    uint64_t *l_1141 = &l_1086;
    uint8_t *l_1142 = (void*)0;
    uint8_t *l_1143 = (void*)0;
    uint8_t *l_1144 = (void*)0;
    uint8_t *l_1145 = (void*)0;
    uint8_t *l_1146[2][4][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    int32_t l_1147 = (-4L);
    int32_t l_1148 = (-1L);
    uint32_t l_1167 = 0x4F460DD1L;
    int16_t l_1168 = 0x75EFL;
    union U1 *l_1170[2][7];
    int32_t l_1184 = 0x2B5CF32DL;
    int32_t l_1185 = 0x1679AFE6L;
    int32_t l_1186 = 0x15432B66L;
    uint16_t l_1187[6] = {0xAF91L,0x6A1EL,0xAF91L,0xAF91L,0x6A1EL,0xAF91L};
    uint16_t l_1204 = 0x38AAL;
    int32_t *l_1207[10] = {&l_1186,(void*)0,&l_1186,&l_1186,(void*)0,&l_1186,&l_1186,(void*)0,&l_1186,&l_1186};
    int16_t l_1208 = 0L;
    int64_t l_1209 = (-1L);
    int32_t l_1210 = 0x46AEAAD5L;
    int32_t l_1211[4][3] = {{0x71DEE900L,0x3B6DF8B0L,0x71DEE900L},{0x71DEE900L,0x3B6DF8B0L,0x71DEE900L},{0x71DEE900L,0x3B6DF8B0L,0x71DEE900L},{0x71DEE900L,0x3B6DF8B0L,0x71DEE900L}};
    VECTOR(uint64_t, 16) l_1212 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xAEFAF2A6AF3E5694L), 0xAEFAF2A6AF3E5694L), 0xAEFAF2A6AF3E5694L, 0UL, 0xAEFAF2A6AF3E5694L, (VECTOR(uint64_t, 2))(0UL, 0xAEFAF2A6AF3E5694L), (VECTOR(uint64_t, 2))(0UL, 0xAEFAF2A6AF3E5694L), 0UL, 0xAEFAF2A6AF3E5694L, 0UL, 0xAEFAF2A6AF3E5694L);
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 1; k++)
                l_1082[i][j][k] = &l_1081[0][6];
        }
    }
    for (i = 0; i < 2; i++)
        l_1120[i] = (void*)0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
            l_1170[i][j] = &p_1215->g_902;
    }
    (*l_1113) = (l_2 | func_3(func_8(p_1215->g_10, p_1215), (safe_mod_func_uint64_t_u_u(((((VECTOR(int64_t, 16))(1L, (safe_lshift_func_uint16_t_u_s((+(((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 4))((!((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(p_1215->g_1072.xxyxxyyxxxxxxxyx)).even && ((VECTOR(int8_t, 2))(l_1073.xx)).yyyyyxxx))).lo))).zyzzxxyx, ((VECTOR(uint8_t, 4))(0x39L, (((((p_1215->g_641.x , (safe_mod_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_u((--p_1215->g_1078), 7)) , (((p_1215->g_729 == (void*)0) > l_2) > (l_1073.z , ((p_1215->g_1083 = l_1081[0][1]) != &p_1215->g_52)))), l_1073.w))) , l_1085) < l_1073.w) <= p_1215->g_381.s6) != l_1073.z), 0xBEL, 0UL)).wxxywwww))).s3424100464472456, ((VECTOR(int16_t, 16))(0x1C51L))))).sd6, ((VECTOR(int16_t, 2))(0x0E8EL))))).yxyy || ((VECTOR(int16_t, 4))(0x3BCFL))))).w >= 0x00DAL), ((VECTOR(uint16_t, 2))(0x479AL)), 0x497AL)).xwwwwzwwxzwyxzyx << ((VECTOR(uint16_t, 16))(2UL))))).sf , p_1215->g_500.z) | l_2) == l_1085)), l_2)), l_1073.w, l_1086, ((VECTOR(int64_t, 4))(0x4A49A53DC7043CA8L)), ((VECTOR(int64_t, 4))(0x6CA432CA5DA9ECF4L)), ((VECTOR(int64_t, 4))(0x0C8DA433CF10C3D2L)))).sa | l_2) && l_1086), 0x58E74C4E44E5C215L)), l_1073.x, l_1073.x, p_1215));
    (*l_1113) = 0x5DE8833AL;
    if ((((*l_1113) > (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(p_1215->g_1116.xwxy)).z, (safe_rshift_func_int8_t_s_s((((*p_1215->g_52) = ((((l_1119 = l_1119) != l_1120[1]) && ((safe_mul_func_uint16_t_u_u(p_1215->g_214.w, ((VECTOR(uint16_t, 8))(p_1215->g_1123.s4342f8ca)).s0)) , (*l_1113))) ^ ((VECTOR(int64_t, 4))(0x4D7ADE45D415D651L, 6L, 0x105AB37B87C171BAL, 0x16841F8257923DF1L)).x)) != (safe_mul_func_uint8_t_u_u(((safe_div_func_uint32_t_u_u(0x20452DE7L, (safe_mul_func_int16_t_s_s((*l_1113), (safe_mul_func_uint8_t_u_u((l_1147 = ((safe_rshift_func_uint8_t_u_s(((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))((!(safe_rshift_func_int8_t_s_u((0x7208661BL & (((*l_1141) = ((*p_1215->g_476) = ((void*)0 == l_1138))) , (*l_1113))), 6))), (-1L), 7L, (-3L))), ((VECTOR(int8_t, 4))((-1L)))))).x, (*l_1113))) < 0UL), (*l_1113))) ^ 0L)), l_1148)))))) , (*l_1113)), 1L))), (*l_1113)))))) | (*l_1113)))
    { /* block id: 353 */
        uint16_t l_1152 = 3UL;
        int16_t *l_1158 = &p_1215->g_720.f1;
        uint64_t ***l_1161 = &p_1215->g_475;
        uint16_t **l_1164 = &p_1215->g_308;
        int64_t l_1165 = 0x6FC6CA76D9EF0995L;
        int32_t l_1166 = 0x7E5A38F9L;
        union U1 **l_1169[10] = {&p_1215->g_901,&p_1215->g_901,(void*)0,&p_1215->g_901,&p_1215->g_901,&p_1215->g_901,&p_1215->g_901,(void*)0,&p_1215->g_901,&p_1215->g_901};
        int i;
        for (l_1085 = (-17); (l_1085 == 11); ++l_1085)
        { /* block id: 356 */
            uint8_t l_1151 = 0UL;
            if (l_1151)
            { /* block id: 357 */
                return l_1151;
            }
            else
            { /* block id: 359 */
                return l_1151;
            }
        }
        l_1170[1][2] = (((*l_1113) || (l_1168 |= (~(l_1152 && (safe_unary_minus_func_int64_t_s((((((safe_div_func_uint8_t_u_u((l_1166 &= (((safe_mul_func_int16_t_s_s(((*l_1158) = l_1152), ((((safe_mul_func_uint8_t_u_u((((l_1161 == (void*)0) | (((***l_1161) = ((*l_1141) |= ((safe_mod_func_uint8_t_u_u((*l_1113), 0x55L)) , (((void*)0 == l_1164) , 0xBC672D80E47FB963L)))) >= 0UL)) || (*l_1113)), GROUP_DIVERGE(0, 1))) ^ l_1165) , &p_1215->g_656) != &p_1215->g_656))) | l_1152) , 0x93L)), (**p_1215->g_51))) == l_1165) , l_1167) == 9L) != GROUP_DIVERGE(0, 1)))))))) , &p_1215->g_902);
    }
    else
    { /* block id: 369 */
        uint32_t l_1175 = 0x279BB022L;
        int32_t l_1183[8][4] = {{0x1462997FL,0x1462997FL,0x43B9941AL,1L},{0x1462997FL,0x1462997FL,0x43B9941AL,1L},{0x1462997FL,0x1462997FL,0x43B9941AL,1L},{0x1462997FL,0x1462997FL,0x43B9941AL,1L},{0x1462997FL,0x1462997FL,0x43B9941AL,1L},{0x1462997FL,0x1462997FL,0x43B9941AL,1L},{0x1462997FL,0x1462997FL,0x43B9941AL,1L},{0x1462997FL,0x1462997FL,0x43B9941AL,1L}};
        VECTOR(uint16_t, 8) l_1193 = (VECTOR(uint16_t, 8))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0xD819L), 0xD819L), 0xD819L, 7UL, 0xD819L);
        int32_t *l_1198 = &l_1147;
        int32_t *l_1199 = &l_1147;
        int32_t *l_1200 = &l_1183[1][3];
        int32_t *l_1201 = &l_1185;
        int32_t *l_1202 = &l_1183[1][3];
        int32_t *l_1203[1][3];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 3; j++)
                l_1203[i][j] = &l_1184;
        }
        if ((safe_mul_func_int8_t_s_s((-2L), 0L)))
        { /* block id: 370 */
            int32_t *l_1176 = (void*)0;
            int32_t *l_1177 = &p_1215->g_54[2];
            int32_t *l_1178 = &p_1215->g_54[2];
            int32_t *l_1179 = &l_1148;
            int32_t *l_1180 = &p_1215->g_124;
            int32_t *l_1181 = &l_1147;
            int32_t *l_1182[3][3] = {{&l_1148,&l_1148,&l_1148},{&l_1148,&l_1148,&l_1148},{&l_1148,&l_1148,&l_1148}};
            int i, j;
            for (p_1215->g_43 = 7; (p_1215->g_43 > (-1)); p_1215->g_43 = safe_sub_func_int16_t_s_s(p_1215->g_43, 7))
            { /* block id: 373 */
                if (l_1175)
                    break;
            }
            ++l_1187[2];
        }
        else
        { /* block id: 377 */
            return p_1215->g_103.s5;
        }
        for (p_1215->g_434 = 0; (p_1215->g_434 == 44); p_1215->g_434++)
        { /* block id: 382 */
            int32_t l_1192 = 0x264EB898L;
            int32_t *l_1195 = &l_1183[1][3];
            (*p_1215->g_281) = (l_1192 > l_1175);
            (*l_1195) |= (((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1193.s74)), 0x6E39L, 7UL)).xxwwzxwx, (uint16_t)FAKE_DIVERGE(p_1215->local_1_offset, get_local_id(1), 10)))).s3 >= (*l_1113));
            (*l_1195) ^= ((*l_1113) |= (safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1215->group_2_offset, get_group_id(2), 10), 7)));
        }
        ++l_1204;
    }
    --l_1212.s6;
    return p_1215->g_448.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1215->g_1089 p_1215->g_1091 p_1215->g_1093 p_1215->g_1094 p_1215->g_902.f0 p_1215->g_51 p_1215->g_52 p_1215->g_43 p_1215->g_1097 p_1215->g_1099 p_1215->g_1109 p_1215->g_54 p_1215->g_292
 * writes: p_1215->g_902.f0 p_1215->g_43 p_1215->g_54 p_1215->g_61
 */
uint16_t  func_3(int8_t * p_4, int32_t  p_5, int32_t  p_6, int64_t  p_7, struct S2 * p_1215)
{ /* block id: 334 */
    VECTOR(int32_t, 4) l_1090 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0L), 0L);
    VECTOR(int32_t, 8) l_1092 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0AD5FFA0L), 0x0AD5FFA0L), 0x0AD5FFA0L, 0L, 0x0AD5FFA0L);
    VECTOR(int32_t, 8) l_1095 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x1D4CC284L), 0x1D4CC284L), 0x1D4CC284L, 6L, 0x1D4CC284L);
    uint32_t *l_1096 = &p_1215->g_902.f0;
    VECTOR(int16_t, 2) l_1098 = (VECTOR(int16_t, 2))(1L, 0x6439L);
    VECTOR(int16_t, 4) l_1100 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x04BEL), 0x04BEL);
    VECTOR(int16_t, 4) l_1101 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L);
    uint8_t ***l_1108 = &p_1215->g_657;
    uint8_t ****l_1107[3];
    uint8_t *****l_1106 = &l_1107[0];
    int32_t *l_1112 = &p_1215->g_54[2];
    int i;
    for (i = 0; i < 3; i++)
        l_1107[i] = &l_1108;
    for (p_7 = 0; (p_7 < (-18)); p_7--)
    { /* block id: 337 */
        return p_5;
    }
    (*p_1215->g_292) = ((((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(p_1215->g_1089.xyzzyxxyzxzxwzyx)).s469b || ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(l_1090.zxzxxwxy)) < ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(p_1215->g_1091.zywx)), ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(0x39D05373L, 0x1F1396BAL)).xxyxxxyyxyxyxyxx & ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(0x47BB25FEL, (-1L))), ((VECTOR(int32_t, 2))(l_1092.s07)), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(p_1215->g_1093.see08)).xzyzxwyyxxzywzxx != ((VECTOR(int32_t, 2))(0x55BFFAEEL, 0x79D4EB93L)).xyyyyxxyxyxyyyyx))).even, ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(p_1215->g_1094.sc87dd147)).lo, ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_1095.s36)).xyxy != ((VECTOR(int32_t, 8))((((VECTOR(uint64_t, 2))(0xB6B77C9C1671E953L, 18446744073709551611UL)).lo < ((((*l_1096) |= 4294967287UL) , ((*p_1215->g_52) = (**p_1215->g_51))) != (p_6 > ((VECTOR(uint32_t, 8))(p_1215->g_1097.s66754547)).s4))), ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 16))(l_1098.xxyxyxxyyyyyyyyx)).hi, ((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 16))(p_1215->g_1099.xyxyyxwxxxxwwwyx)).even, (int16_t)(&p_1215->g_115[1][0][3] != l_1096))))))).s3634364010411150 && ((VECTOR(int16_t, 16))(l_1100.yxzwwyxwxzyzwxyx))))) <= ((VECTOR(int16_t, 16))(l_1101.yyzwzyxwxxzwxwwz))))).hi != ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 8))(p_5, ((((safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_s((((*l_1106) = (void*)0) == p_1215->g_1109[3]), 3)), 8)) ^ ((((*l_1112) = ((void*)0 == &p_1215->g_652)) & p_6) > p_6)) & p_6) | 4294967292UL), ((VECTOR(int16_t, 2))(0L)), 0x5AF6L, 0x4D25L, 9L, 0x360EL)).s15, ((VECTOR(int16_t, 2))((-7L)))))).xyxyxxxy))).s31, ((VECTOR(uint16_t, 2))(0x8368L))))), p_6, 0x438064DEL, (*l_1112), 0L, 0x14FA8D98L)).hi))).lo && ((VECTOR(int32_t, 2))(1L))))).yxyyxyyxxyxxyxxx, ((VECTOR(int32_t, 16))(0x66EFCFB3L))))).s101c, ((VECTOR(int32_t, 4))(0x6D045E0DL))))).lo, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0x7EAD12C3L))))).xyyyxxxx, ((VECTOR(int32_t, 8))(0x121F4558L))))).s67 > ((VECTOR(int32_t, 2))(0x19B101DFL))))), 0x12AF0994L, (-7L))).wzzxwywy && ((VECTOR(int32_t, 8))((-1L)))))).s3313655151074765, ((VECTOR(int32_t, 16))((-1L)))))).sd14a))).wzzzxyzx))).s35 && ((VECTOR(int32_t, 2))(0x7DA04ECFL)))))))) || ((VECTOR(int32_t, 2))(0x5D1AADE1L))))).xxxy && ((VECTOR(int32_t, 4))(0x3D1F7329L))))).wzwwxywwxywwywzw))).s80e1, ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 4))((-4L))))))))).lo, ((VECTOR(int32_t, 2))(0x22760057L)), ((VECTOR(int32_t, 2))(9L))))).yyyy >= ((VECTOR(int32_t, 4))(0x001DDBBAL))))) ^ ((VECTOR(int32_t, 4))(0x2679F6B3L))))).zwyzxzzxwxwwxzzw && ((VECTOR(int32_t, 16))(0x5B11C86CL))))).lo, ((VECTOR(int32_t, 8))((-1L)))))).s05 && ((VECTOR(int32_t, 2))(1L))))).xxxxyxyx))).odd))).even, ((VECTOR(int32_t, 2))((-2L))), ((VECTOR(int32_t, 2))(0x3F267502L))))).hi ^ p_6) , l_1096);
    return p_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_1215->g_41 p_1215->g_43 p_1215->g_51 p_1215->g_10 p_1215->g_60 p_1215->g_61 p_1215->g_54 p_1215->g_103 p_1215->g_104 p_1215->g_115 p_1215->g_52 p_1215->g_123 p_1215->g_132 p_1215->g_158 p_1215->g_124 p_1215->g_199 p_1215->g_201 p_1215->g_209 p_1215->g_214 p_1215->g_215 p_1215->g_281 p_1215->g_228 p_1215->g_296 p_1215->g_292 p_1215->g_308 p_1215->g_246 p_1215->g_245 p_1215->g_236 p_1215->g_367 p_1215->g_437 p_1215->g_254 p_1215->g_474 p_1215->g_339 p_1215->g_397 p_1215->g_491 p_1215->g_500 p_1215->g_507 p_1215->g_519 p_1215->g_585 p_1215->g_586 p_1215->g_295 p_1215->g_476 p_1215->g_616 p_1215->g_621 p_1215->g_640 p_1215->g_641 p_1215->g_548 p_1215->g_475 p_1215->g_434 p_1215->g_649 p_1215->g_651 p_1215->g_656 p_1215->g_659 p_1215->g_669 p_1215->g_670 p_1215->g_677 p_1215->g_678 p_1215->g_691 p_1215->g_693 p_1215->g_729 p_1215->g_750 p_1215->g_756 p_1215->g_757 p_1215->g_652 p_1215->g_720.f0 p_1215->g_781 p_1215->g_826 p_1215->g_294 p_1215->g_911 p_1215->g_1010 p_1215->g_718
 * writes: p_1215->g_61 p_1215->g_43 p_1215->g_54 p_1215->g_115 p_1215->g_124 p_1215->g_132 p_1215->g_104 p_1215->g_225 p_1215->g_228 p_1215->g_51 p_1215->g_292 p_1215->g_295 p_1215->g_103 p_1215->g_296.f3 p_1215->g_437 p_1215->g_474 p_1215->g_507 p_1215->g_236 p_1215->g_519 p_1215->g_434 p_1215->g_296.f2 p_1215->g_652 p_1215->g_657 p_1215->g_718 p_1215->g_720.f0 p_1215->g_254 p_1215->g_397 p_1215->g_720.f1 p_1215->g_669 p_1215->g_826 p_1215->g_901 p_1215->g_1020
 */
int8_t * func_8(uint64_t  p_9, struct S2 * p_1215)
{ /* block id: 5 */
    int8_t *l_42 = &p_1215->g_43;
    union U1 l_50 = {4294967287UL};
    uint16_t l_184 = 9UL;
    int8_t ***l_231 = &p_1215->g_51;
    int32_t *l_1065 = (void*)0;
    (*l_231) = func_11(func_14(((((safe_sub_func_uint8_t_u_u(((((safe_add_func_uint32_t_u_u((((safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), func_23(((*l_231) = func_26(func_31((((func_35((p_1215->g_41 , l_42), &l_42, (safe_add_func_uint32_t_u_u(p_1215->g_43, func_46(l_50, p_1215->g_51, (l_42 == l_42), p_1215))), &l_42, p_1215->g_10, p_1215) == 0L) <= 0xF9L) , p_1215->g_104.z), p_9, p_1215->g_103.s0, p_1215), &l_42, l_184, p_9, p_1215)), l_184, p_1215))) && 249UL) >= p_9), 4294967293UL)) >= 0x2F93L) , (void*)0) != p_1215->g_52), 0x75L)) != 0x1CL) <= 0x5608L) , (**l_231)), p_9, p_1215), p_9, p_1215);
    (*p_1215->g_292) = l_1065;
    (*p_1215->g_292) = (*p_1215->g_292);
    return (**l_231);
}


/* ------------------------------------------ */
/* 
 * reads : p_1215->g_292 p_1215->g_756 p_1215->g_649 p_1215->g_124 p_1215->g_757 p_1215->g_651 p_1215->g_652 p_1215->g_720.f0 p_1215->g_52 p_1215->g_43 p_1215->g_781 p_1215->g_659 p_1215->g_61 p_1215->g_254 p_1215->g_123 p_1215->g_669 p_1215->g_296 p_1215->g_826 p_1215->g_670 p_1215->g_103 p_1215->g_104 p_1215->g_51 p_1215->g_281 p_1215->g_54 p_1215->g_236 p_1215->g_294 p_1215->g_911 p_1215->g_339 p_1215->g_132 p_1215->g_1010 p_1215->g_158 p_1215->g_750 p_1215->g_718
 * writes: p_1215->g_61 p_1215->g_652 p_1215->g_720.f0 p_1215->g_132 p_1215->g_254 p_1215->g_397 p_1215->g_124 p_1215->g_720.f1 p_1215->g_669 p_1215->g_826 p_1215->g_115 p_1215->g_54 p_1215->g_901 p_1215->g_43 p_1215->g_236 p_1215->g_1020 p_1215->g_225
 */
int8_t ** func_11(int64_t  p_12, uint64_t  p_13, struct S2 * p_1215)
{ /* block id: 212 */
    int32_t *l_753[4][7][7] = {{{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0}},{{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0}},{{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0}},{{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0},{(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0],(void*)0,(void*)0}}};
    int64_t *l_760 = (void*)0;
    int64_t **l_759 = &l_760;
    uint32_t *l_761 = &p_1215->g_720.f0;
    int32_t ***l_764[1][9][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    uint8_t *l_765 = &p_1215->g_132;
    union U0 *l_770 = &p_1215->g_296[3][0];
    int64_t l_804 = 1L;
    VECTOR(uint32_t, 8) l_883 = (VECTOR(uint32_t, 8))(0x96E8FF6BL, (VECTOR(uint32_t, 4))(0x96E8FF6BL, (VECTOR(uint32_t, 2))(0x96E8FF6BL, 0xCAA91574L), 0xCAA91574L), 0xCAA91574L, 0x96E8FF6BL, 0xCAA91574L);
    VECTOR(int64_t, 8) l_915 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-6L)), (-6L)), (-6L), 0L, (-6L));
    VECTOR(uint32_t, 2) l_917 = (VECTOR(uint32_t, 2))(1UL, 0xCE938055L);
    uint64_t l_920[8] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    uint64_t l_1005 = 0UL;
    int8_t **l_1031 = &p_1215->g_52;
    int8_t l_1032 = 0x08L;
    union U1 l_1052 = {0x71F51710L};
    int i, j, k;
    for (p_12 = 0; (p_12 <= 22); ++p_12)
    { /* block id: 215 */
        (*p_1215->g_292) = l_753[0][6][6];
    }
    if (((safe_rshift_func_int8_t_s_s((((p_1215->g_756 , ((*l_765) = (((((p_12 != (((*p_1215->g_649) | (p_1215->g_757 == l_759)) || (((*p_1215->g_651) = (*p_1215->g_651)) == (void*)0))) < ((*l_761)++)) , &p_1215->g_60) != l_764[0][7][0]) , p_13))) <= (*p_1215->g_52)) && p_12), p_13)) >= 0x6F06L))
    { /* block id: 221 */
        union U0 **l_771 = &p_1215->g_652;
        VECTOR(int32_t, 16) l_778 = (VECTOR(int32_t, 16))(0x286CB034L, (VECTOR(int32_t, 4))(0x286CB034L, (VECTOR(int32_t, 2))(0x286CB034L, 0x1F1D4879L), 0x1F1D4879L), 0x1F1D4879L, 0x286CB034L, 0x1F1D4879L, (VECTOR(int32_t, 2))(0x286CB034L, 0x1F1D4879L), (VECTOR(int32_t, 2))(0x286CB034L, 0x1F1D4879L), 0x286CB034L, 0x1F1D4879L, 0x286CB034L, 0x1F1D4879L);
        VECTOR(int64_t, 8) l_784 = (VECTOR(int64_t, 8))(0x4818674CDE8CEE76L, (VECTOR(int64_t, 4))(0x4818674CDE8CEE76L, (VECTOR(int64_t, 2))(0x4818674CDE8CEE76L, 0x7308B9F2DD5AA5EDL), 0x7308B9F2DD5AA5EDL), 0x7308B9F2DD5AA5EDL, 0x4818674CDE8CEE76L, 0x7308B9F2DD5AA5EDL);
        uint8_t *l_785[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_786 = 0x195A47A9L;
        int32_t l_787 = (-1L);
        int32_t l_788 = 0x315E358CL;
        int32_t *l_789 = (void*)0;
        uint32_t l_809 = 0UL;
        uint32_t l_860 = 4294967295UL;
        union U1 *l_899 = &p_1215->g_720;
        uint64_t *l_974 = &l_920[4];
        VECTOR(uint64_t, 8) l_985 = (VECTOR(uint64_t, 8))(5UL, (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 1UL), 1UL), 1UL, 5UL, 1UL);
        int16_t *l_1017 = (void*)0;
        VECTOR(int16_t, 4) l_1045 = (VECTOR(int16_t, 4))(0x5291L, (VECTOR(int16_t, 2))(0x5291L, 0x46BDL), 0x46BDL);
        int32_t **l_1046 = &p_1215->g_61;
        int32_t *l_1059 = (void*)0;
        uint8_t l_1061[10] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
        int i;
        l_788 ^= (l_787 = (safe_sub_func_int32_t_s_s((((((safe_lshift_func_uint16_t_u_u((!((p_12 , l_770) == ((*l_771) = (*p_1215->g_651)))), 15)) != (safe_div_func_uint8_t_u_u(((+(safe_mul_func_int8_t_s_s(0x18L, (l_786 = ((safe_div_func_int16_t_s_s((&p_1215->g_292 != (((VECTOR(int32_t, 8))(l_778.s73420377)).s7 , &p_1215->g_292)), l_778.sb)) != (+((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(p_1215->g_781.xz)).even, 6)) >= (safe_mul_func_uint8_t_u_u(((*l_765) = p_13), (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(l_784.s2447267403072131)).s49 ^ ((VECTOR(int64_t, 16))((-7L), 0x511C335A004EE0E0L, 0x6334D691D7142F8AL, ((VECTOR(int64_t, 8))(0x5E38007A847073D1L)), ((VECTOR(int64_t, 4))(0x7DA1A1937B630296L)), 0x09176E8764BAD157L)).s5f))), p_1215->g_659[0][4], ((VECTOR(int64_t, 4))(0x62F771783C0D5782L)), 0x24636CF44A599B4DL)).s2 < 0xC8C301E39432F39FL)))))))))) < p_13), p_13))) <= 8L) , (*p_1215->g_52)) != p_13), p_12)));
        (*p_1215->g_292) = l_789;
        (*p_1215->g_292) = (*p_1215->g_292);
        for (p_1215->g_254 = 0; (p_1215->g_254 != 50); p_1215->g_254++)
        { /* block id: 231 */
            uint8_t ***l_794 = &p_1215->g_657;
            int16_t l_795 = 0L;
            VECTOR(uint16_t, 8) l_805 = (VECTOR(uint16_t, 8))(0x6E25L, (VECTOR(uint16_t, 4))(0x6E25L, (VECTOR(uint16_t, 2))(0x6E25L, 0x4204L), 0x4204L), 0x4204L, 0x6E25L, 0x4204L);
            uint16_t *l_806 = (void*)0;
            int32_t l_819 = (-9L);
            int64_t *l_872 = &p_1215->g_507[9][4];
            int16_t l_931 = 0x1EE5L;
            VECTOR(uint16_t, 2) l_992 = (VECTOR(uint16_t, 2))(0xAB45L, 0x6A75L);
            uint16_t *l_1044 = (void*)0;
            int32_t l_1060 = 0L;
            int i;
            if (((*p_1215->g_123) ^= ((((*l_765) = p_13) , 0x26C2FCABL) && (safe_mod_func_uint64_t_u_u(((l_794 != ((((((l_795 , (safe_rshift_func_int16_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s((((-3L) || 0L) == ((((safe_sub_func_uint16_t_u_u(l_804, ((VECTOR(uint16_t, 4))(l_805.s6230)).y)) || ((VECTOR(int64_t, 4))(0L, (-1L), 1L, 0L)).z) > ((p_1215->g_397.s5 = l_795) >= (safe_add_func_uint8_t_u_u(p_12, p_13)))) & p_13)), p_13)), p_12)), 1))) != 0UL) , 0L) ^ p_12) != p_13) , l_794)) < l_809), p_12)))))
            { /* block id: 235 */
                int16_t l_815 = 1L;
                int32_t l_823 = 0x53279A22L;
                int32_t l_835[1];
                int64_t *l_871 = (void*)0;
                int64_t l_892 = (-6L);
                VECTOR(uint8_t, 4) l_950 = (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 247UL), 247UL);
                union U1 l_998 = {4294967295UL};
                VECTOR(uint32_t, 4) l_1011 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x4C9B36CDL), 0x4C9B36CDL);
                int i;
                for (i = 0; i < 1; i++)
                    l_835[i] = (-8L);
                for (p_1215->g_720.f1 = 0; (p_1215->g_720.f1 == 26); p_1215->g_720.f1 = safe_add_func_uint8_t_u_u(p_1215->g_720.f1, 4))
                { /* block id: 238 */
                    uint32_t l_814 = 4294967295UL;
                    int32_t l_836 = (-1L);
                    union U1 l_853 = {0x51BFAD1DL};
                    VECTOR(int64_t, 4) l_912 = (VECTOR(int64_t, 4))(9L, (VECTOR(int64_t, 2))(9L, 0x58DCCE8F8478343FL), 0x58DCCE8F8478343FL);
                    VECTOR(int8_t, 8) l_957 = (VECTOR(int8_t, 8))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x27L), 0x27L), 0x27L, (-7L), 0x27L);
                    VECTOR(int8_t, 4) l_958 = (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, (-1L)), (-1L));
                    int32_t l_975[9][3][6] = {{{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)}},{{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)}},{{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)}},{{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)}},{{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)}},{{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)}},{{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)}},{{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)}},{{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)},{(-5L),3L,(-5L),(-5L),3L,(-5L)}}};
                    int i, j, k;
                    for (l_795 = (-6); (l_795 == (-9)); l_795 = safe_sub_func_uint32_t_u_u(l_795, 1))
                    { /* block id: 241 */
                        uint16_t *l_818 = (void*)0;
                        uint16_t *l_820[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t l_821 = 0x1A2A7D36L;
                        int32_t l_822 = 1L;
                        int64_t ***l_828 = (void*)0;
                        int64_t ***l_829 = &p_1215->g_826[0][2][6];
                        uint32_t *l_834[6][6] = {{&p_1215->g_115[0][0][2],(void*)0,&p_1215->g_115[2][0][0],(void*)0,&p_1215->g_115[0][0][2],&p_1215->g_115[0][0][2]},{&p_1215->g_115[0][0][2],(void*)0,&p_1215->g_115[2][0][0],(void*)0,&p_1215->g_115[0][0][2],&p_1215->g_115[0][0][2]},{&p_1215->g_115[0][0][2],(void*)0,&p_1215->g_115[2][0][0],(void*)0,&p_1215->g_115[0][0][2],&p_1215->g_115[0][0][2]},{&p_1215->g_115[0][0][2],(void*)0,&p_1215->g_115[2][0][0],(void*)0,&p_1215->g_115[0][0][2],&p_1215->g_115[0][0][2]},{&p_1215->g_115[0][0][2],(void*)0,&p_1215->g_115[2][0][0],(void*)0,&p_1215->g_115[0][0][2],&p_1215->g_115[0][0][2]},{&p_1215->g_115[0][0][2],(void*)0,&p_1215->g_115[2][0][0],(void*)0,&p_1215->g_115[0][0][2],&p_1215->g_115[0][0][2]}};
                        int i, j;
                        l_836 = (l_814 | (((l_815 |= l_805.s7) != (l_794 != (void*)0)) || (safe_sub_func_int32_t_s_s(((p_1215->g_115[1][0][3] = (l_835[0] = ((((++p_1215->g_669.x) , ((*l_770) , ((*l_829) = p_1215->g_826[0][7][1]))) != (((!(safe_div_func_uint64_t_u_u((0x07D8F6FD5EF13CCCL && (safe_add_func_int16_t_s_s(((l_823 = p_13) >= 0x5114F6CBL), (-1L)))), p_1215->g_670.s3))) , p_1215->g_103.s6) , (void*)0)) && p_1215->g_104.y))) != p_1215->g_103.s4), p_13))));
                        l_821 = (safe_sub_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s((((safe_mul_func_uint16_t_u_u((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(p_1215->g_209.y, (safe_mod_func_uint64_t_u_u(((**p_1215->g_475) |= p_13), (safe_add_func_uint64_t_u_u((l_853 , (safe_add_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((0xAC31L && 0x376BL), (safe_mod_func_uint16_t_u_u(65528UL, (l_860 , (~(safe_mod_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_u(((((safe_rshift_func_uint16_t_u_u((0xD065AA1DL & (0UL != 0L)), l_795)) != 0x450BF329L) , p_13) >= p_1215->g_246.s3), 0)) | p_13), 7UL)))))))), GROUP_DIVERGE(1, 1)))), 0x38675B46FFBBCCA5L)))), ((VECTOR(uint32_t, 2))(1UL)), l_835[0], ((VECTOR(uint32_t, 2))(0x641E240FL)), 4294967289UL)).s25 + ((VECTOR(uint32_t, 2))(4294967294UL))))).xxyyxyxyyyxyyyxx))).se077 + ((VECTOR(uint32_t, 4))(0x3B814A3FL))))) * ((VECTOR(uint32_t, 4))(0xBA63C885L))))).w ^ 0x33596828L), p_13)) || (**p_1215->g_51)) < 65535UL), 0)) & p_12), 8L));
                        (*p_1215->g_281) = (((((safe_mul_func_uint16_t_u_u((l_819 = ((safe_lshift_func_int8_t_s_u((l_871 != (l_872 = &p_1215->g_507[8][5])), (((safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_sub_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((*l_765) = ((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),VECTOR(uint8_t, 16),((VECTOR(uint8_t, 8))(1UL, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))((~(((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 8))(l_883.s03704667)).even, ((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),uint32_t,((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(4294967295UL, 0xBE2EE6B2L)) ^ ((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),uint32_t,((VECTOR(uint32_t, 8))((~((VECTOR(uint32_t, 4))((safe_rshift_func_uint16_t_u_s(((safe_add_func_uint32_t_u_u((((p_13 > (p_1215->g_254 , p_12)) ^ (safe_rshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u(((l_892 , 0xBDBA2E1C135709D8L) != ((safe_mod_func_int8_t_s_s((safe_mod_func_uint32_t_u_u(l_821, 0x22E5099DL)), 3L)) || p_13)), 12)), FAKE_DIVERGE(p_1215->local_2_offset, get_local_id(2), 10)))) | 0x74C420BF0B743B2EL), 0x25FE6A46L)) | p_1215->g_554.x), 14)), ((VECTOR(uint32_t, 2))(0x3605A373L)), 0x14CB4343L)).wyxxxwzz))).s2645335131210425, (uint32_t)p_13, (uint32_t)p_1215->g_254))).s67))).xyyxyxxx, ((VECTOR(uint32_t, 8))(4294967295UL))))), (uint32_t)l_821, (uint32_t)p_1215->g_225))).s04, ((VECTOR(uint32_t, 2))(0xF3201D88L))))).xyxy))).y != p_13)), 0UL, 0xDCL, ((VECTOR(uint8_t, 4))(0x9AL)), 0x47L)).s00 + ((VECTOR(uint8_t, 2))(0x23L))))), ((VECTOR(uint8_t, 4))(1UL)), 0xA6L)).s0753643264031304, ((VECTOR(uint8_t, 16))(255UL)), ((VECTOR(uint8_t, 16))(1UL))))).s4), (*p_1215->g_52))), 2UL)), GROUP_DIVERGE(1, 1))), p_13)) | p_13) , 0x6DL))) & l_853.f0)), 0x4EB6L)) >= GROUP_DIVERGE(1, 1)) && p_12) || 0UL) , 0L);
                        (*p_1215->g_292) = (*p_1215->g_292);
                    }
                    for (l_795 = 0; (l_795 > 27); ++l_795)
                    { /* block id: 259 */
                        union U1 **l_900[6];
                        int32_t l_903[2];
                        uint8_t l_904[7] = {0xDEL,0xDEL,0xDEL,0xDEL,0xDEL,0xDEL,0xDEL};
                        int i;
                        for (i = 0; i < 6; i++)
                            l_900[i] = &l_899;
                        for (i = 0; i < 2; i++)
                            l_903[i] = (-5L);
                        p_1215->g_901 = l_899;
                        ++l_904[5];
                        l_789 = &l_819;
                        if (l_836)
                            break;
                    }
                    for (l_853.f1 = 0; (l_853.f1 >= 0); l_853.f1 = safe_add_func_uint64_t_u_u(l_853.f1, 6))
                    { /* block id: 267 */
                        VECTOR(int32_t, 8) l_913 = (VECTOR(int32_t, 8))(0x755FBBC4L, (VECTOR(int32_t, 4))(0x755FBBC4L, (VECTOR(int32_t, 2))(0x755FBBC4L, 0x23CACB1CL), 0x23CACB1CL), 0x23CACB1CL, 0x755FBBC4L, 0x23CACB1CL);
                        VECTOR(uint32_t, 16) l_914 = (VECTOR(uint32_t, 16))(0x91FCDBC6L, (VECTOR(uint32_t, 4))(0x91FCDBC6L, (VECTOR(uint32_t, 2))(0x91FCDBC6L, 1UL), 1UL), 1UL, 0x91FCDBC6L, 1UL, (VECTOR(uint32_t, 2))(0x91FCDBC6L, 1UL), (VECTOR(uint32_t, 2))(0x91FCDBC6L, 1UL), 0x91FCDBC6L, 1UL, 0x91FCDBC6L, 1UL);
                        uint16_t **l_916 = &l_806;
                        int32_t l_921 = 0x230AD072L;
                        int i;
                        l_921 |= (safe_mul_func_uint16_t_u_u((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(0x11B8E63925F67655L, (((VECTOR(int64_t, 4))(p_1215->g_911.s5041)).w >= p_12), 0x1BE5DB8F760B5484L, 0x45A8430E660C84F4L)), 0x2E3CC8B078581074L, 0x1EBA3437C1A2D760L, 0x6B4EB793B39148E7L, (-4L), (-6L), (((VECTOR(uint64_t, 2))(7UL, 0UL)).odd || 0x2052153A0C1F5395L), 0x3284278B6F61B5EAL, 0x0D0DF4E493A8532DL, 0x08D99642095380A3L, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(l_912.yxwxzwyw)).s15 == ((VECTOR(int64_t, 4))((-1L), 1L, 0x7E8170B809860AF2L, 0x68E4051A31968981L)).even))).yxxyyxxxyyxxxxxy && ((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 16))(l_913.s0547632354756560)), ((VECTOR(uint32_t, 4))(l_914.sc13e)).zyxwwyzzyyzxyxyw)))))).s20 ^ ((VECTOR(int64_t, 16))(l_915.s2605721136163675)).s3a))), 0x1B8B67C9A0DBB690L)).s9d | ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))((-1L), p_12, (-5L), 1L)), 0x42CB54B18D69F43FL, ((((((*l_916) = p_1215->g_308) != p_1215->g_308) < (l_819 = p_13)) == ((VECTOR(uint16_t, 8))(0x4655L, ((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 4))((((VECTOR(uint32_t, 4))(l_917.xyyx)).w == (safe_lshift_func_int16_t_s_s((p_13 | p_12), 7))), ((VECTOR(uint16_t, 2))(65535UL)), 8UL)).hi, ((VECTOR(uint16_t, 2))(1UL)), ((VECTOR(uint16_t, 2))(0UL))))), p_12, l_835[0], ((VECTOR(uint16_t, 2))(0x1D59L)), 65535UL)).s6) <= l_805.s1), 0x28D35778CB3812B7L, 0L)).s20))).yxxyxxxyyyyyxyyx, ((VECTOR(int64_t, 16))(0x74E4A23C3A1CA330L))))).odd && ((VECTOR(int64_t, 8))(0x70B1E820C57CF916L)))))))).s44 && ((VECTOR(int64_t, 2))(0x25F356DD9F11ACE5L))))).hi & 4UL), l_920[4]));
                        if (p_12)
                            continue;
                        if (l_914.s5)
                            break;
                    }
                    for (l_786 = 20; (l_786 != (-4)); l_786--)
                    { /* block id: 276 */
                        uint32_t l_934[10][9][2] = {{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}},{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}},{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}},{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}},{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}},{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}},{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}},{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}},{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}},{{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L},{0xA8FBF6C8L,0x69A935F6L}}};
                        VECTOR(int8_t, 8) l_959 = (VECTOR(int8_t, 8))(0x2BL, (VECTOR(int8_t, 4))(0x2BL, (VECTOR(int8_t, 2))(0x2BL, 0x6BL), 0x6BL), 0x6BL, 0x2BL, 0x6BL);
                        int32_t l_967 = 1L;
                        int i, j, k;
                        l_975[3][1][4] ^= (safe_add_func_uint32_t_u_u(l_823, (safe_add_func_int16_t_s_s((safe_unary_minus_func_int32_t_s((safe_rshift_func_int8_t_s_u(l_931, (safe_rshift_func_int8_t_s_u(((*p_1215->g_52) = l_934[1][8][1]), ((VECTOR(uint8_t, 4))((+((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(0x13L, 1UL)).yyxxxyyx + ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(1UL, 0x5CL)), 0x84L, 0x4AL)), (uint8_t)p_12))).odd, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(247UL, 255UL, 0xC1L, ((VECTOR(uint8_t, 4))((((-1L) ^ (!(safe_add_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(p_1215->g_945.s5a7a)).z, ((((((((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 8))(l_950.wxwwzwxy)).s2465460441041007, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_957.s50)), 8L, (-5L), ((VECTOR(int8_t, 2))(l_958.xw)), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(l_959.s24705076)).s07 == ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(p_1215->g_960.s27)) < ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(0x5BL, (safe_mod_func_int64_t_s_s(((safe_lshift_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((l_967 = FAKE_DIVERGE(p_1215->global_2_offset, get_global_id(2), 10)), 0xEBL)), GROUP_DIVERGE(0, 1))) && l_958.y), (safe_lshift_func_int16_t_s_u(p_1215->g_115[1][0][3], 14)))), 5L, 0x2AL, 0x4EL, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((-7L), (-6L))).xxxy >= ((VECTOR(int8_t, 8))(p_1215->g_970.xzyzxwyz)).odd)))))), 2L, 1L, (safe_div_func_uint64_t_u_u((safe_unary_minus_func_uint64_t_u(((**p_1215->g_475) = (**p_1215->g_475)))), GROUP_DIVERGE(1, 1))), (-8L), ((VECTOR(int8_t, 2))(9L)), l_836, 0x7FL, l_957.s4, 1L, (-1L), 0x11L)).s17 < ((VECTOR(int8_t, 2))((-1L)))))), ((VECTOR(int8_t, 2))(0x72L)), (-2L), ((VECTOR(int8_t, 2))(1L)), 0L, 0x22L, (-2L), (-6L))).s52 != ((VECTOR(int8_t, 2))(0x76L))))).xxxx, (int8_t)0x2CL, (int8_t)p_13))).lo && ((VECTOR(int8_t, 2))(0x1EL))))))))))), p_13, p_13, 0x49L, 1L, ((VECTOR(int8_t, 2))(1L)), 0x55L, 0x5FL)).s60))).xyyyxyxy >> ((VECTOR(uint8_t, 8))(8))))) - ((VECTOR(uint8_t, 8))(0xCDL))))).even, ((VECTOR(uint8_t, 4))(1UL))))).zxwwwxww - ((VECTOR(uint8_t, 8))(0UL))))).lo | ((VECTOR(uint8_t, 4))(6UL))))).even))).xxyyyxxyyxxyxyxx ^ ((VECTOR(uint8_t, 16))(0xF6L)))))))).even, ((VECTOR(uint8_t, 8))(0xBBL))))).s50, ((VECTOR(uint8_t, 2))(0x7EL))))).yxxyxyxxxxyxxxxx + ((VECTOR(uint8_t, 16))(0x71L))))).sd3 + ((VECTOR(uint8_t, 2))(0x29L))))), ((VECTOR(uint8_t, 2))(0UL))))).yyyx, (uint16_t)p_13))).wyyxxywyywzwwxwx, ((VECTOR(uint16_t, 16))(0xD1FAL))))).s4 , p_13) && p_13) != 0x18D3L) , l_974) != l_871) <= 4L))), p_1215->g_507[9][4])))) | l_958.x), ((VECTOR(uint8_t, 2))(0x14L)), 0xACL)), 0x12L, p_12, l_819, l_836, 0x4DL, GROUP_DIVERGE(2, 1), l_814, 0xE1L, 1UL)).sbf << ((VECTOR(uint8_t, 2))(1UL))))) << ((VECTOR(uint8_t, 2))(0xFCL)))))))), 1UL, 0x21L)).yxxzwwyx))).hi))).z)))))), l_934[1][8][1]))));
                    }
                }
                for (p_1215->g_720.f1 = 0; (p_1215->g_720.f1 <= (-15)); p_1215->g_720.f1 = safe_sub_func_int8_t_s_s(p_1215->g_720.f1, 9))
                { /* block id: 285 */
                    int32_t l_982 = (-1L);
                    int64_t *l_988 = &p_1215->g_507[1][2];
                    uint16_t *l_989[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int16_t *l_1019 = &p_1215->g_902.f1;
                    uint8_t ***l_1029 = (void*)0;
                    int32_t l_1030[9] = {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)};
                    int i;
                    p_1215->g_236.y ^= (*p_1215->g_281);
                    if (((((void*)0 != l_871) <= (l_819 |= ((((safe_mod_func_uint8_t_u_u(((*l_765) = ((VECTOR(uint8_t, 8))(1UL, 0xDDL, ((VECTOR(uint8_t, 2))(246UL, 0UL)), 6UL, 0xCAL, 0UL, 0x85L)).s6), (((p_12 ^ (((safe_div_func_int64_t_s_s(l_982, ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(l_985.s05)).xyyyxyxx + ((VECTOR(uint64_t, 4))(0xE610B5ED63B5AC4CL, 0x24A9A8D5F2D24D47L, 0x3D29EF8237DE9876L, 0UL)).wwzzxxyy))).s7)) ^ (safe_rshift_func_uint8_t_u_u(l_815, ((p_13 , l_871) == l_988)))) > ((0x9042EE5FL <= p_1215->g_294.s1) , p_1215->g_911.s4))) < p_13) ^ p_13))) ^ 0x16CA2804L) ^ p_12) || p_13))) & 2UL))
                    { /* block id: 289 */
                        l_819 = (((VECTOR(uint16_t, 16))(65535UL, ((safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(l_992.xy)).odd, 1)) , (p_1215->g_397.se = (0UL || ((safe_add_func_uint16_t_u_u(p_1215->g_245.s8, ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(0x57C0L, 0x1AA0L, ((VECTOR(int16_t, 2))(0L, 8L)), ((safe_mul_func_int16_t_s_s((l_815 ^ ((**p_1215->g_51) = ((VECTOR(int8_t, 4))(p_1215->g_997.xyyx)).x)), (l_998 , (l_982 , (safe_rshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_s(p_12, 2)), (l_892 && ((p_1215->g_124 && (p_1215->g_124 |= ((l_823 < 0x6BDA5EABL) || FAKE_DIVERGE(p_1215->local_2_offset, get_local_id(2), 10)))) , l_982)))))))) || p_12), (-9L), ((VECTOR(int16_t, 2))(0x33BAL)), l_992.y, ((VECTOR(int16_t, 4))(4L)), p_1215->g_339.y, 1L, 1L)).s6b || ((VECTOR(int16_t, 2))(0x08C2L))))).yyyxyxyy && ((VECTOR(int16_t, 8))((-7L)))))).lo))).w)) , 0x9EB8236A59C0A3A8L)))), ((VECTOR(uint16_t, 4))(0x3EA7L)), 65535UL, 1UL, 65535UL, ((VECTOR(uint16_t, 2))(0UL)), 0x2A31L, 0xB0B5L, p_13, 0UL, 65534UL)).s5 == p_1215->g_236.x);
                    }
                    else
                    { /* block id: 294 */
                        int16_t *l_1007 = &l_795;
                        int64_t **l_1008 = &l_871;
                        int32_t l_1009 = 0L;
                        int16_t **l_1016 = &l_1007;
                        int16_t **l_1018[6][7] = {{&l_1017,(void*)0,&l_1017,&l_1017,&l_1017,(void*)0,&l_1017},{&l_1017,(void*)0,&l_1017,&l_1017,&l_1017,(void*)0,&l_1017},{&l_1017,(void*)0,&l_1017,&l_1017,&l_1017,(void*)0,&l_1017},{&l_1017,(void*)0,&l_1017,&l_1017,&l_1017,(void*)0,&l_1017},{&l_1017,(void*)0,&l_1017,&l_1017,&l_1017,(void*)0,&l_1017},{&l_1017,(void*)0,&l_1017,&l_1017,&l_1017,(void*)0,&l_1017}};
                        uint32_t *l_1026 = &p_1215->g_225;
                        uint8_t ***l_1027 = &p_1215->g_657;
                        uint8_t ****l_1028 = &l_1027;
                        int i, j;
                        l_1005 = (safe_mul_func_uint8_t_u_u((l_982 == p_12), (**p_1215->g_51)));
                        if (p_12)
                            continue;
                        l_1009 = ((((*l_1007) = (safe_unary_minus_func_uint64_t_u(0x466B92C48EACCCD0L))) || (((*l_1008) = &p_1215->g_507[9][4]) == (void*)0)) , (l_835[0] = 0x63283F5FL));
                        (*p_1215->g_158) = ((((VECTOR(int32_t, 16))(p_1215->g_1010.s920ff2b9860cbf3b)).s4 <= (-8L)) & ((l_835[0] = (l_950.w & (((VECTOR(uint32_t, 4))(l_1011.zzxx)).x > p_13))) >= (FAKE_DIVERGE(p_1215->local_0_offset, get_local_id(0), 10) && ((safe_mod_func_int8_t_s_s((((*l_1028) = (((*l_1026) = ((((((*l_1016) = &l_815) != (p_1215->g_1020 = (l_1019 = l_1017))) >= (safe_mul_func_uint16_t_u_u(l_992.x, FAKE_DIVERGE(p_1215->global_1_offset, get_global_id(1), 10)))) >= ((safe_mod_func_int8_t_s_s((((p_12 > (safe_unary_minus_func_int16_t_s(((l_982 , &p_1215->g_827) != &p_1215->g_758)))) || p_13) , (-1L)), p_1215->g_339.x)) | p_1215->g_132)) != p_1215->g_1010.s6)) , l_1027)) != l_1029), l_992.x)) == 18446744073709551615UL))));
                    }
                    l_1030[0] = p_13;
                    if (l_805.s2)
                        break;
                }
                (*p_1215->g_158) = ((VECTOR(int32_t, 2))(0x2D5C5BCEL, 1L)).hi;
            }
            else
            { /* block id: 313 */
                return l_1031;
            }
            (*p_1215->g_750) = ((VECTOR(int32_t, 16))(2L, (l_1032 & (safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(((*p_1215->g_476) = (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(p_1215->g_1039.xyxx)) >= ((VECTOR(int16_t, 16))(p_13, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(0x2143L, 0x7176L)).xyxxxxxy))) && ((VECTOR(int16_t, 2))(p_1215->g_1040.sce)).yxyyxxyx))), (((safe_mul_func_uint8_t_u_u((l_992.y ^ 0x24L), p_12)) & p_12) > 0xCEL), ((VECTOR(int16_t, 4))(0x08C4L, ((VECTOR(int16_t, 2))(0x1EADL, 0L)), 1L)), 0x6F9AL, (-6L))).sd0e3))).hi || ((VECTOR(int16_t, 8))(p_1215->g_1043.s07340215)).s30))).hi, (p_1215->g_397.sa = l_992.x)))), (((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(0L, 0L)).yxxxxyyxxyyyyxyx && ((VECTOR(int16_t, 16))(l_1045.xyzxwxxwzywwxyzz))))).sc < p_1215->g_103.s1))), p_12))), ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 8))(2L)), 1L, (*p_1215->g_367), 0x41A6CA73L, 0x2B0A11AEL)).s2;
            l_1046 = &l_789;
            p_1215->g_54[2] &= ((safe_rshift_func_int8_t_s_s((p_12 , (((p_1215->g_718 , (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0x3D7BDD3CL, 0xC5962AF2L)), ((VECTOR(uint32_t, 4))(0x7D1608E0L, ((VECTOR(uint32_t, 8))((+((VECTOR(uint32_t, 8))(p_1215->g_1051.yyyyxxxx))))).s1, 0x8319AB4BL, 0UL)), 0x83F9D2D8L, 0x13FC4E20L)).s2 >= (p_12 >= ((**l_771) , (l_1052 , ((VECTOR(uint64_t, 2))(0x21D3B4DA226FE924L, 0x772CE095D4730732L)).even))))) == (safe_sub_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((p_12 == ((l_1060 = (l_819 |= (safe_mod_func_uint16_t_u_u((((void*)0 != l_1059) & (&p_1215->g_308 == &p_1215->g_308)), p_12)))) == l_1061[4])), p_12)), l_805.s0))) , p_12)), 5)) != FAKE_DIVERGE(p_1215->group_0_offset, get_group_id(0), 10));
        }
    }
    else
    { /* block id: 324 */
        uint64_t l_1062 = 0x0F7E75731D831375L;
        ++l_1062;
    }
    return &p_1215->g_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_1215->g_43 p_1215->g_367 p_1215->g_215 p_1215->g_54 p_1215->g_123 p_1215->g_124 p_1215->g_437 p_1215->g_51 p_1215->g_52 p_1215->g_292 p_1215->g_254 p_1215->g_474 p_1215->g_339 p_1215->g_397 p_1215->g_491 p_1215->g_60 p_1215->g_61 p_1215->g_500 p_1215->g_245 p_1215->g_507 p_1215->g_236 p_1215->g_519 p_1215->g_296 p_1215->g_115 p_1215->g_585 p_1215->g_586 p_1215->g_295 p_1215->g_476 p_1215->g_132 p_1215->g_246 p_1215->g_201 p_1215->g_616 p_1215->g_621 p_1215->g_640 p_1215->g_641 p_1215->g_548 p_1215->g_475 p_1215->g_434 p_1215->g_649 p_1215->g_651 p_1215->g_656 p_1215->g_659 p_1215->g_669 p_1215->g_670 p_1215->g_677 p_1215->g_678 p_1215->g_691 p_1215->g_693 p_1215->g_729 p_1215->g_750
 * writes: p_1215->g_43 p_1215->g_54 p_1215->g_225 p_1215->g_124 p_1215->g_437 p_1215->g_61 p_1215->g_474 p_1215->g_132 p_1215->g_507 p_1215->g_236 p_1215->g_519 p_1215->g_115 p_1215->g_104 p_1215->g_434 p_1215->g_296.f2 p_1215->g_652 p_1215->g_657 p_1215->g_103 p_1215->g_718
 */
int64_t  func_14(int8_t * p_15, uint16_t  p_16, struct S2 * p_1215)
{ /* block id: 96 */
    VECTOR(int64_t, 8) l_340 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-9L)), (-9L)), (-9L), 0L, (-9L));
    int32_t l_347 = 0x29017054L;
    int32_t l_356 = 0x7161AC99L;
    int32_t l_360[2];
    int32_t l_361 = 0x65955A8EL;
    uint8_t *l_364 = &p_1215->g_132;
    VECTOR(uint16_t, 4) l_390 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 9UL), 9UL);
    uint64_t *l_433[8] = {&p_1215->g_434,&p_1215->g_434,&p_1215->g_434,&p_1215->g_434,&p_1215->g_434,&p_1215->g_434,&p_1215->g_434,&p_1215->g_434};
    int16_t *l_489 = (void*)0;
    VECTOR(int64_t, 8) l_492 = (VECTOR(int64_t, 8))(0x1DADB81A0B44E548L, (VECTOR(int64_t, 4))(0x1DADB81A0B44E548L, (VECTOR(int64_t, 2))(0x1DADB81A0B44E548L, 1L), 1L), 1L, 0x1DADB81A0B44E548L, 1L);
    VECTOR(int16_t, 8) l_530 = (VECTOR(int16_t, 8))(0x5C93L, (VECTOR(int16_t, 4))(0x5C93L, (VECTOR(int16_t, 2))(0x5C93L, 0x04AAL), 0x04AAL), 0x04AAL, 0x5C93L, 0x04AAL);
    VECTOR(uint16_t, 8) l_532 = (VECTOR(uint16_t, 8))(0xE6C5L, (VECTOR(uint16_t, 4))(0xE6C5L, (VECTOR(uint16_t, 2))(0xE6C5L, 0xE774L), 0xE774L), 0xE774L, 0xE6C5L, 0xE774L);
    VECTOR(uint8_t, 16) l_550 = (VECTOR(uint8_t, 16))(0xE0L, (VECTOR(uint8_t, 4))(0xE0L, (VECTOR(uint8_t, 2))(0xE0L, 3UL), 3UL), 3UL, 0xE0L, 3UL, (VECTOR(uint8_t, 2))(0xE0L, 3UL), (VECTOR(uint8_t, 2))(0xE0L, 3UL), 0xE0L, 3UL, 0xE0L, 3UL);
    VECTOR(uint8_t, 8) l_551 = (VECTOR(uint8_t, 8))(0xE2L, (VECTOR(uint8_t, 4))(0xE2L, (VECTOR(uint8_t, 2))(0xE2L, 0x19L), 0x19L), 0x19L, 0xE2L, 0x19L);
    VECTOR(int32_t, 2) l_559 = (VECTOR(int32_t, 2))(0x6C2916E5L, 0x180DDA3BL);
    VECTOR(int32_t, 16) l_560 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, (-1L)), (-1L)), (-1L), 2L, (-1L), (VECTOR(int32_t, 2))(2L, (-1L)), (VECTOR(int32_t, 2))(2L, (-1L)), 2L, (-1L), 2L, (-1L));
    VECTOR(uint64_t, 4) l_576 = (VECTOR(uint64_t, 4))(0xE1C81B3E8127FF60L, (VECTOR(uint64_t, 2))(0xE1C81B3E8127FF60L, 5UL), 5UL);
    int32_t l_600 = (-1L);
    VECTOR(int8_t, 8) l_642 = (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 5L), 5L), 5L, (-9L), 5L);
    VECTOR(uint8_t, 4) l_692 = (VECTOR(uint8_t, 4))(0x40L, (VECTOR(uint8_t, 2))(0x40L, 0xB8L), 0xB8L);
    union U1 *l_719 = &p_1215->g_720;
    VECTOR(int8_t, 2) l_739 = (VECTOR(int8_t, 2))((-5L), 0x60L);
    int i;
    for (i = 0; i < 2; i++)
        l_360[i] = 3L;
    for (p_1215->g_43 = (-12); (p_1215->g_43 > 12); p_1215->g_43++)
    { /* block id: 99 */
        int16_t l_334[2];
        uint16_t *l_345 = (void*)0;
        uint16_t *l_346 = (void*)0;
        uint64_t *l_359 = &p_1215->g_296[2][1].f2;
        uint8_t *l_363 = &p_1215->g_132;
        uint8_t **l_362 = &l_363;
        int8_t *l_365[4];
        uint16_t l_366 = 0UL;
        VECTOR(int64_t, 8) l_380 = (VECTOR(int64_t, 8))(0x24C5310A4CB2ACADL, (VECTOR(int64_t, 4))(0x24C5310A4CB2ACADL, (VECTOR(int64_t, 2))(0x24C5310A4CB2ACADL, 0x35AC1FF841659D98L), 0x35AC1FF841659D98L), 0x35AC1FF841659D98L, 0x24C5310A4CB2ACADL, 0x35AC1FF841659D98L);
        VECTOR(uint16_t, 4) l_396 = (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0UL), 0UL);
        VECTOR(int16_t, 8) l_403 = (VECTOR(int16_t, 8))(0x4435L, (VECTOR(int16_t, 4))(0x4435L, (VECTOR(int16_t, 2))(0x4435L, 1L), 1L), 1L, 0x4435L, 1L);
        int16_t l_408 = 0x7066L;
        VECTOR(int8_t, 8) l_456 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x0AL), 0x0AL), 0x0AL, (-1L), 0x0AL);
        int32_t l_472 = 0x0C0D6479L;
        uint64_t ***l_473 = (void*)0;
        VECTOR(int64_t, 16) l_493 = (VECTOR(int64_t, 16))(0x148250D47651B413L, (VECTOR(int64_t, 4))(0x148250D47651B413L, (VECTOR(int64_t, 2))(0x148250D47651B413L, 0x2B6F458647AEF45DL), 0x2B6F458647AEF45DL), 0x2B6F458647AEF45DL, 0x148250D47651B413L, 0x2B6F458647AEF45DL, (VECTOR(int64_t, 2))(0x148250D47651B413L, 0x2B6F458647AEF45DL), (VECTOR(int64_t, 2))(0x148250D47651B413L, 0x2B6F458647AEF45DL), 0x148250D47651B413L, 0x2B6F458647AEF45DL, 0x148250D47651B413L, 0x2B6F458647AEF45DL);
        VECTOR(uint64_t, 16) l_499 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x0260D5B5291838DFL), 0x0260D5B5291838DFL), 0x0260D5B5291838DFL, 0UL, 0x0260D5B5291838DFL, (VECTOR(uint64_t, 2))(0UL, 0x0260D5B5291838DFL), (VECTOR(uint64_t, 2))(0UL, 0x0260D5B5291838DFL), 0UL, 0x0260D5B5291838DFL, 0UL, 0x0260D5B5291838DFL);
        VECTOR(uint16_t, 8) l_533 = (VECTOR(uint16_t, 8))(0x9703L, (VECTOR(uint16_t, 4))(0x9703L, (VECTOR(uint16_t, 2))(0x9703L, 1UL), 1UL), 1UL, 0x9703L, 1UL);
        VECTOR(uint8_t, 16) l_549 = (VECTOR(uint8_t, 16))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0x8DL), 0x8DL), 0x8DL, 3UL, 0x8DL, (VECTOR(uint8_t, 2))(3UL, 0x8DL), (VECTOR(uint8_t, 2))(3UL, 0x8DL), 3UL, 0x8DL, 3UL, 0x8DL);
        int64_t *l_565 = (void*)0;
        int32_t l_568 = 0x72545D5FL;
        int16_t l_595 = 0x6380L;
        VECTOR(int16_t, 4) l_604 = (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 0x64FDL), 0x64FDL);
        VECTOR(int16_t, 4) l_605 = (VECTOR(int16_t, 4))(0x3B59L, (VECTOR(int16_t, 2))(0x3B59L, 2L), 2L);
        VECTOR(int32_t, 2) l_672 = (VECTOR(int32_t, 2))((-1L), 0x166A396DL);
        VECTOR(uint8_t, 16) l_675 = (VECTOR(uint8_t, 16))(0x11L, (VECTOR(uint8_t, 4))(0x11L, (VECTOR(uint8_t, 2))(0x11L, 9UL), 9UL), 9UL, 0x11L, 9UL, (VECTOR(uint8_t, 2))(0x11L, 9UL), (VECTOR(uint8_t, 2))(0x11L, 9UL), 0x11L, 9UL, 0x11L, 9UL);
        VECTOR(int8_t, 8) l_676 = (VECTOR(int8_t, 8))(0x36L, (VECTOR(int8_t, 4))(0x36L, (VECTOR(int8_t, 2))(0x36L, 0x2EL), 0x2EL), 0x2EL, 0x36L, 0x2EL);
        VECTOR(int8_t, 4) l_679 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 8L), 8L);
        VECTOR(int8_t, 4) l_680 = (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 6L), 6L);
        VECTOR(int8_t, 8) l_681 = (VECTOR(int8_t, 8))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), (-6L)), (-6L)), (-6L), (-8L), (-6L));
        VECTOR(uint8_t, 2) l_684 = (VECTOR(uint8_t, 2))(0x46L, 1UL);
        uint64_t l_696[6] = {0xD0F05DE709DAADF0L,0xA3815870F8C7052BL,0xD0F05DE709DAADF0L,0xD0F05DE709DAADF0L,0xA3815870F8C7052BL,0xD0F05DE709DAADF0L};
        int64_t *l_731 = &p_1215->g_507[7][4];
        int64_t **l_730 = &l_731;
        int64_t ***l_732 = &l_730;
        VECTOR(uint8_t, 8) l_735 = (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0x9AL), 0x9AL), 0x9AL, 9UL, 0x9AL);
        VECTOR(uint8_t, 8) l_738 = (VECTOR(uint8_t, 8))(0xA5L, (VECTOR(uint8_t, 4))(0xA5L, (VECTOR(uint8_t, 2))(0xA5L, 0x65L), 0x65L), 0x65L, 0xA5L, 0x65L);
        uint8_t l_740 = 0UL;
        VECTOR(int64_t, 2) l_741 = (VECTOR(int64_t, 2))(0x12F2D42228D5ACEFL, 1L);
        int i;
        for (i = 0; i < 2; i++)
            l_334[i] = 0x3C2FL;
        for (i = 0; i < 4; i++)
            l_365[i] = &p_1215->g_296[2][1].f3;
        (*p_1215->g_367) = (safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s((l_334[1] >= (safe_div_func_int64_t_s_s((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_1215->g_339.xx)), 1L, 0x5656C1BF361C28E8L)).even && ((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 2))(l_340.s24)).xyxy, (int64_t)((l_360[0] = (safe_mul_func_uint16_t_u_u((l_347 = (safe_rshift_func_uint8_t_u_u(p_1215->g_214.y, 1))), (safe_div_func_uint8_t_u_u((p_1215->g_339.y >= (p_1215->g_41 , ((((((*l_362) = func_31((safe_rshift_func_int8_t_s_u((!(safe_sub_func_uint32_t_u_u(((void*)0 != p_15), ((safe_sub_func_int16_t_s_s(l_356, (safe_rshift_func_int16_t_s_s((l_360[0] |= (((*l_359) = ((void*)0 != &l_356)) && p_16)), p_16)))) != l_361)))), 5)), l_356, l_334[1], p_1215)) == l_364) == 252UL) | l_340.s5) | p_16))), 0x3DL))))) != 0UL)))).hi))).xyxxxyxy < ((VECTOR(int64_t, 8))(0x5A6935B74068643FL))))).s5, p_16)), l_366))), p_16)), l_334[1]));
        for (l_347 = 0; (l_347 != 25); l_347 = safe_add_func_int64_t_s_s(l_347, 1))
        { /* block id: 108 */
            int64_t l_374 = 3L;
            VECTOR(int32_t, 4) l_409 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-6L)), (-6L));
            int8_t ***l_416 = &p_1215->g_51;
            uint32_t l_459[2][2][8] = {{{0xB305B458L,0UL,0xC4743CBEL,0xACC1E1EDL,4294967289UL,0xB305B458L,0xACC1E1EDL,1UL},{0xB305B458L,0UL,0xC4743CBEL,0xACC1E1EDL,4294967289UL,0xB305B458L,0xACC1E1EDL,1UL}},{{0xB305B458L,0UL,0xC4743CBEL,0xACC1E1EDL,4294967289UL,0xB305B458L,0xACC1E1EDL,1UL},{0xB305B458L,0UL,0xC4743CBEL,0xACC1E1EDL,4294967289UL,0xB305B458L,0xACC1E1EDL,1UL}}};
            int32_t *l_464 = &p_1215->g_54[2];
            VECTOR(int64_t, 16) l_501 = (VECTOR(int64_t, 16))(0x791B15A70C796404L, (VECTOR(int64_t, 4))(0x791B15A70C796404L, (VECTOR(int64_t, 2))(0x791B15A70C796404L, 1L), 1L), 1L, 0x791B15A70C796404L, 1L, (VECTOR(int64_t, 2))(0x791B15A70C796404L, 1L), (VECTOR(int64_t, 2))(0x791B15A70C796404L, 1L), 0x791B15A70C796404L, 1L, 0x791B15A70C796404L, 1L);
            uint8_t l_502 = 255UL;
            uint32_t l_516 = 4294967295UL;
            int i, j, k;
            for (p_1215->g_225 = 0; (p_1215->g_225 >= 10); ++p_1215->g_225)
            { /* block id: 111 */
                VECTOR(int64_t, 4) l_379 = (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 0x16F3A13FBFF31416L), 0x16F3A13FBFF31416L);
                VECTOR(uint16_t, 8) l_398 = (VECTOR(uint16_t, 8))(0x19B8L, (VECTOR(uint16_t, 4))(0x19B8L, (VECTOR(uint16_t, 2))(0x19B8L, 0xCDF7L), 0xCDF7L), 0xCDF7L, 0x19B8L, 0xCDF7L);
                int32_t *l_410 = (void*)0;
                int i;
                p_1215->g_54[0] &= (((((safe_mul_func_int8_t_s_s(l_374, (safe_add_func_int32_t_s_s(0x4D3E321AL, p_16)))) , (p_1215->g_215.y , 4UL)) >= ((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 4))((p_16 || (l_409.z = (((*l_359) = GROUP_DIVERGE(0, 1)) & ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 16))(l_379.xwyywzzzywwxwwzx)).s1771))) && ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(l_380.s2451)) == ((VECTOR(int64_t, 4))((-1L), ((VECTOR(int64_t, 2))((-10L), 0x0FAD16AAD5CEF3F4L)), 3L))))) && ((VECTOR(int64_t, 4))(p_1215->g_381.sdeb0))))), (int64_t)(safe_mul_func_int16_t_s_s((((safe_add_func_uint8_t_u_u((((((*p_15) & (safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 2))(65535UL, 0x030BL)).yyxyyyxyxyxyxyxx, ((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 2))(l_390.zy)), ((VECTOR(uint16_t, 4))(p_1215->g_391.s7036)).even))).yxyxyyxxyyxyyxyy))).sfee3, ((VECTOR(uint16_t, 16))(0xFE96L, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(l_396.xwzz)).xxwyzyywyxyzwzwz << ((VECTOR(uint16_t, 16))(p_1215->g_397.s47bc0f4c300d561f))))).s33))) + ((VECTOR(uint16_t, 8))(l_398.s57133256)).s51))), 65526UL, ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))((p_1215->g_104.w++), ((VECTOR(uint16_t, 4))(0x0CC3L, ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(0UL, ((VECTOR(uint8_t, 4))(((((VECTOR(int16_t, 16))(l_403.s0447526226540176)).sc || ((safe_rshift_func_uint8_t_u_s((((safe_div_func_uint64_t_u_u(l_379.z, l_366)) , l_379.x) != 9L), (*p_1215->g_52))) ^ 0x68622E75C981B6B1L)) <= 0UL), p_16, 0xFBL, 1UL)), ((VECTOR(uint8_t, 2))(0xCAL)), 0x6BL)) + ((VECTOR(uint8_t, 8))(0x6AL))))).s3464340207115370, ((VECTOR(uint8_t, 16))(0x71L))))), ((VECTOR(uint8_t, 16))(0x0CL))))).s5e, ((VECTOR(uint8_t, 2))(252UL))))), 0x5BAAL)), l_380.s6, 6UL, 0x59DCL)).s10, ((VECTOR(uint16_t, 2))(0xFC9CL))))), ((VECTOR(uint16_t, 2))(0x1C3DL)), 65535UL, 0x3641L, ((VECTOR(uint16_t, 2))(0xDE53L)), l_408, 0x665AL, 0xF050L, 1UL)).saf44))).hi, (uint16_t)0xA6B5L))).yyxyxyyy + ((VECTOR(uint16_t, 8))(1UL))))).s1, 0))) >= (*p_1215->g_52)) & p_1215->g_124) | p_16), l_408)) == l_398.s1) ^ l_366), 1L)))))))).w))), 0x49L, 0x3BL, 0L)).w, FAKE_DIVERGE(p_1215->group_2_offset, get_group_id(2), 10))) , 1UL)) >= l_380.s5) , p_16);
                if (p_16)
                    continue;
            }
            for (l_374 = 0; (l_374 != 9); l_374 = safe_add_func_int64_t_s_s(l_374, 8))
            { /* block id: 120 */
                uint64_t l_413 = 0xC222ED12D54F6AACL;
                union U1 l_458 = {2UL};
                int32_t l_460 = 0x10364BC2L;
                int32_t **l_465 = &l_464;
                uint64_t ****l_477 = &p_1215->g_474[0];
                VECTOR(uint32_t, 8) l_480 = (VECTOR(uint32_t, 8))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967287UL, 4294967295UL);
                int16_t *l_487 = &l_334[0];
                int16_t **l_488 = &l_487;
                VECTOR(int64_t, 16) l_490 = (VECTOR(int64_t, 16))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 0x7F82DB6B2C28FD2FL), 0x7F82DB6B2C28FD2FL), 0x7F82DB6B2C28FD2FL, 4L, 0x7F82DB6B2C28FD2FL, (VECTOR(int64_t, 2))(4L, 0x7F82DB6B2C28FD2FL), (VECTOR(int64_t, 2))(4L, 0x7F82DB6B2C28FD2FL), 4L, 0x7F82DB6B2C28FD2FL, 4L, 0x7F82DB6B2C28FD2FL);
                VECTOR(int64_t, 16) l_494 = (VECTOR(int64_t, 16))(0x723C9A92FA40C6E4L, (VECTOR(int64_t, 4))(0x723C9A92FA40C6E4L, (VECTOR(int64_t, 2))(0x723C9A92FA40C6E4L, 1L), 1L), 1L, 0x723C9A92FA40C6E4L, 1L, (VECTOR(int64_t, 2))(0x723C9A92FA40C6E4L, 1L), (VECTOR(int64_t, 2))(0x723C9A92FA40C6E4L, 1L), 0x723C9A92FA40C6E4L, 1L, 0x723C9A92FA40C6E4L, 1L);
                int64_t *l_505 = (void*)0;
                int64_t *l_506 = &p_1215->g_507[9][4];
                int i;
                if (p_16)
                { /* block id: 121 */
                    return l_413;
                }
                else
                { /* block id: 123 */
                    uint64_t l_430[7][1];
                    int32_t ***l_450[1][2][4] = {{{&p_1215->g_292,(void*)0,&p_1215->g_292,&p_1215->g_292},{&p_1215->g_292,(void*)0,&p_1215->g_292,&p_1215->g_292}}};
                    VECTOR(int8_t, 4) l_457 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x33L), 0x33L);
                    uint32_t l_463 = 0xBCB76E40L;
                    int i, j, k;
                    for (i = 0; i < 7; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_430[i][j] = 0xE5DC526AD30FCC5BL;
                    }
                    if ((safe_rshift_func_int8_t_s_s((l_416 == (void*)0), (*p_15))))
                    { /* block id: 124 */
                        int32_t *l_417 = &l_360[0];
                        int32_t *l_418 = &l_360[0];
                        int32_t *l_419 = &p_1215->g_54[0];
                        int32_t *l_420 = &p_1215->g_124;
                        int32_t *l_421 = &p_1215->g_54[1];
                        int32_t *l_422 = (void*)0;
                        int32_t l_423 = 7L;
                        int32_t *l_424 = (void*)0;
                        int32_t *l_425 = &p_1215->g_124;
                        int32_t *l_426 = &l_423;
                        int32_t *l_427 = &l_356;
                        int32_t *l_428 = (void*)0;
                        int32_t *l_429[5][9] = {{&l_356,&p_1215->g_54[0],(void*)0,(void*)0,(void*)0,&p_1215->g_54[0],&l_356,&l_356,&l_423},{&l_356,&p_1215->g_54[0],(void*)0,(void*)0,(void*)0,&p_1215->g_54[0],&l_356,&l_356,&l_423},{&l_356,&p_1215->g_54[0],(void*)0,(void*)0,(void*)0,&p_1215->g_54[0],&l_356,&l_356,&l_423},{&l_356,&p_1215->g_54[0],(void*)0,(void*)0,(void*)0,&p_1215->g_54[0],&l_356,&l_356,&l_423},{&l_356,&p_1215->g_54[0],(void*)0,(void*)0,(void*)0,&p_1215->g_54[0],&l_356,&l_356,&l_423}};
                        int i, j;
                        ++l_430[2][0];
                    }
                    else
                    { /* block id: 126 */
                        (*p_1215->g_123) &= (&l_430[1][0] != l_433[7]);
                    }
                    if (l_360[0])
                        break;
                    for (l_408 = 0; (l_408 == (-8)); --l_408)
                    { /* block id: 132 */
                        volatile uint64_t ***l_441 = &p_1215->g_437;
                        int16_t *l_461 = (void*)0;
                        uint8_t l_462 = 251UL;
                        (*l_441) = p_1215->g_437;
                        l_409.w = ((((safe_rshift_func_uint16_t_u_s(0UL, (l_356 |= l_413))) == (safe_div_func_uint64_t_u_u((1L > (p_16 , (**p_1215->g_51))), ((safe_div_func_int64_t_s_s(0x4B9D2F506E87625FL, ((VECTOR(int64_t, 2))(0x375D71700494A7C0L, 1L)).hi)) | ((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))(p_1215->g_448.s27411715)), ((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 2))(p_1215->g_449.wx)).xxxy, (int64_t)((l_450[0][0][2] == ((safe_sub_func_int16_t_s_s((p_1215->g_209.y = (safe_unary_minus_func_uint32_t_u((safe_mul_func_int8_t_s_s((l_460 = ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_456.s4344)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(1L, 1L)), 0L, 0x6BL)), ((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))(l_457.zzxywxyzxwwxxwyw)).s78, ((VECTOR(int8_t, 4))(0x44L, (l_458 , l_459[1][0][4]), 0x12L, 0x05L)).lo))).xxxyxyxy, (int8_t)(*p_15)))), (int8_t)(*p_15)))))).sc614, ((VECTOR(int8_t, 4))(0x33L)), ((VECTOR(int8_t, 4))(0x77L))))).z), (*p_1215->g_52)))))), l_462)) , &p_1215->g_60)) <= l_463)))).zwyzxwyw))).s10, ((VECTOR(int64_t, 2))(0x6CF1FEEF1FF588B5L))))).odd)))) || (*p_15)) < 0xA807L);
                    }
                    l_464 = l_464;
                }
                (*l_465) = ((*p_1215->g_292) = &l_360[0]);
                (*p_1215->g_367) |= ((safe_rshift_func_int8_t_s_u((**p_1215->g_51), (safe_add_func_uint32_t_u_u(p_1215->g_254, (safe_mul_func_uint8_t_u_u((l_472 > (l_473 != ((*l_477) = p_1215->g_474[0]))), ((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(l_480.s54)).yyxyyxxx + ((VECTOR(uint32_t, 2))(4294967288UL, 0x2B1A47F8L)).yyyyyyxx))).s4 , ((safe_rshift_func_uint8_t_u_s((255UL < (safe_rshift_func_int16_t_s_u(p_1215->g_339.y, ((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xFFL, 250UL)), ((((*l_488) = l_487) != l_489) && l_360[0]), ((VECTOR(uint8_t, 2))(247UL)), 0x7FL, 254UL, 4UL)).even + ((VECTOR(uint8_t, 4))(254UL))))).xwwxxzww, ((VECTOR(uint8_t, 8))(0UL))))).s1))), l_360[1])) , p_16)) & FAKE_DIVERGE(p_1215->local_2_offset, get_local_id(2), 10)))))))) > p_1215->g_397.s5);
                p_1215->g_236.y ^= (((*l_506) |= ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(l_490.s0e)) && ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))(p_1215->g_491.s32)).yxyyyxxyyxyxyyyx, ((VECTOR(int64_t, 2))(0x52B31FE95C398C03L, 0L)).xyxyyxxxyxyyxyxx))) && ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_492.s2555)), ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(3L, 1L)), 0L, 0x2EF406DD5FB56047L)), ((VECTOR(int64_t, 8))(l_493.s9d6f7713)).hi))) && ((VECTOR(int64_t, 2))(l_494.scf)).yyyx))))).even ^ ((VECTOR(int64_t, 2))((-1L), (-1L))).xxxy))).xyzzxzxyxwywwzxw))).s50))).xyyy, (int64_t)(((*p_1215->g_292) = (*p_1215->g_60)) == (void*)0)))), ((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),int64_t,((VECTOR(int64_t, 16))(((safe_add_func_uint32_t_u_u(((p_16 , ((**l_465) == ((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 16))(l_499.sff79ad8f9ed591bf)).lo, ((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 4))(p_1215->g_500.ywzz)).odd, ((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 2))(l_501.s5f)).xxyyxyxy))).s30))).xyyyyxxy, ((VECTOR(uint64_t, 16))(l_502, 0UL, 0UL, (1L | ((*l_364) = (((safe_add_func_int16_t_s_s(0x4261L, 65526UL)) , 2L) > 0x2FB88624740A91AAL))), 18446744073709551607UL, 0x64A58D5EA78FB86BL, p_16, ((VECTOR(uint64_t, 2))(18446744073709551614UL)), ((VECTOR(uint64_t, 2))(0x6126A05480CBC2F6L)), 1UL, p_16, (**l_465), 0UL, 18446744073709551609UL)).even))).s05 << ((VECTOR(uint64_t, 2))(0x7031996778122E10L))))).xyxx, ((VECTOR(uint64_t, 4))(0x129BCCB9932D405FL))))).z)) <= p_16), 0x6F740F60L)) , (**l_465)), p_16, 0x04BA4D5A8B916194L, p_16, 0x666F7A1EC9CCD4F2L, l_360[0], 0x1D34E3210497F247L, p_1215->g_245.s6, (**l_465), (**l_465), p_16, (-4L), 0x7D8A8FBCF3C83C38L, 0x250C826E0553728DL, 0x20EC59AF8CED8874L, (-1L))).sdad1, (int64_t)1L, (int64_t)p_1215->g_43))))).s0) , p_16);
            }
            (*p_1215->g_292) = l_464;
            for (l_374 = (-16); (l_374 >= 27); l_374 = safe_add_func_uint64_t_u_u(l_374, 8))
            { /* block id: 154 */
                int32_t *l_510 = (void*)0;
                int32_t *l_511 = &l_360[0];
                int32_t *l_512 = &l_360[1];
                int32_t *l_513 = &p_1215->g_54[2];
                int32_t *l_514 = (void*)0;
                int32_t *l_515[10] = {&l_347,&l_472,&l_360[0],&l_472,&l_347,&l_347,&l_472,&l_360[0],&l_472,&l_347};
                int i;
                --l_516;
                p_1215->g_519[4]--;
            }
        }
        if ((l_472 = (safe_sub_func_int64_t_s_s(p_16, (safe_div_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(0xD6FDL, (safe_sub_func_int32_t_s_s(0x64F3FC9CL, (((VECTOR(int16_t, 8))(l_530.s51274320)).s6 == (l_356 = ((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 2))(p_1215->g_531.yy)).xxxxxxyx, ((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 4))(65528UL, 0x8993L, 5UL, 0x7803L)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_532.s34)), 65535UL, 65531UL)), ((VECTOR(uint16_t, 8))(l_533.s24204701)).even))).zywxwyxw, ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(65531UL, 65530UL)).xxyyxyyx * ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(255UL, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(p_1215->g_548.xx)).yyyy + ((VECTOR(uint8_t, 2))(l_549.se8)).yxyy))), ((VECTOR(uint8_t, 2))(0x96L, 1UL)), 0UL)) ^ ((VECTOR(uint8_t, 16))(0x14L, ((VECTOR(uint8_t, 8))(l_550.s76bb867c)), 0UL, ((VECTOR(uint8_t, 2))(l_551.s75)), (l_360[0] = 0x8CL), 0UL, 0xC0L, 0x23L)).hi))).s20, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 4))(p_1215->g_554.yxyy)).xwwwyxxz, (uint8_t)l_549.s8))).odd | ((VECTOR(uint8_t, 2))(255UL, 0xCDL)).yxyy))) + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 2))(0UL, 0x18L))))), (p_1215->g_201.z && (safe_rshift_func_int8_t_s_s(((((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(l_559.yxxy)), ((VECTOR(int32_t, 2))(l_560.s29)).yyxy))).z , ((l_560.s9 = ((p_1215->g_339.y = (((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(p_1215->g_561.s24ebef599fda4e73)).s5b31 == ((VECTOR(int16_t, 2))(p_1215->g_562.yx)).yyyx))), p_1215->g_491.s4, (safe_div_func_int8_t_s_s(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))(0x43L, (-10L))).yxxy, ((VECTOR(int8_t, 16))((l_530.s1 > ((void*)0 != &p_1215->g_437)), ((VECTOR(int8_t, 8))(0x0AL)), ((VECTOR(int8_t, 2))(0x72L)), ((VECTOR(int8_t, 2))((-3L))), (-7L), 0x12L, (-5L))).sdedd))), ((VECTOR(int8_t, 2))(0x32L)), ((VECTOR(int8_t, 4))(0x0CL)), (*p_15), ((VECTOR(int8_t, 2))(1L)), ((VECTOR(int8_t, 2))(0x47L)), (-1L))).sc, 0x33L)), ((VECTOR(int16_t, 4))(0x4945L)), l_472, p_16, (-1L), ((VECTOR(int16_t, 2))(0x0EDDL)), 0x0F50L)).sa <= l_334[0])) != l_550.s6)) , l_549.s2)) , (*p_15)), 6))), ((VECTOR(uint8_t, 8))(1UL)), l_551.s5, 247UL, 0UL, 0UL, 0UL)).lo + ((VECTOR(uint8_t, 8))(252UL))))).even))).odd))).xxyy, ((VECTOR(uint8_t, 4))(0x7AL))))).xxwxyzxzyxzwzzyx, ((VECTOR(uint8_t, 16))(7UL))))) + ((VECTOR(uint16_t, 16))(65535UL))))).even))), ((VECTOR(uint16_t, 8))(65535UL)), ((VECTOR(uint16_t, 8))(0xC70DL))))).lo * ((VECTOR(uint16_t, 4))(1UL))))).lo, ((VECTOR(uint16_t, 2))(0xA214L))))), p_16, ((VECTOR(uint16_t, 8))(0UL)), 65535UL, p_16, ((VECTOR(uint16_t, 2))(0x1D62L)), 2UL)) + ((VECTOR(uint16_t, 16))(1UL))))).sbf + ((VECTOR(uint16_t, 2))(0xA64FL))))), 65531UL, 0x0545L)).xyxxxywwzzzzxzwy ^ ((VECTOR(uint16_t, 16))(0xB0C3L))))).s7140 - ((VECTOR(uint16_t, 4))(0x2B24L))))), (uint16_t)p_1215->g_104.x))).xzzwxxwx))).s0)))))), (*p_15)))))))
        { /* block id: 164 */
            VECTOR(uint8_t, 16) l_594 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x97L), 0x97L), 0x97L, 1UL, 0x97L, (VECTOR(uint8_t, 2))(1UL, 0x97L), (VECTOR(uint8_t, 2))(1UL, 0x97L), 1UL, 0x97L, 1UL, 0x97L);
            int32_t l_598 = 3L;
            uint8_t **l_624 = &l_363;
            int16_t l_635 = 0x4758L;
            int i;
            if (l_408)
            { /* block id: 165 */
                int32_t *l_566 = &l_356;
                VECTOR(uint64_t, 2) l_567 = (VECTOR(uint64_t, 2))(6UL, 0x7672E8F72D78B013L);
                uint32_t *l_569 = &p_1215->g_115[1][0][6];
                uint16_t *l_581 = (void*)0;
                uint16_t *l_582[10];
                VECTOR(int8_t, 2) l_593 = (VECTOR(int8_t, 2))(0x03L, (-1L));
                int64_t l_599 = 0x7536D5171C7C812CL;
                int32_t *l_601[8][9] = {{&l_472,&p_1215->g_54[2],&p_1215->g_124,(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_124,&p_1215->g_54[2],&l_472},{&l_472,&p_1215->g_54[2],&p_1215->g_124,(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_124,&p_1215->g_54[2],&l_472},{&l_472,&p_1215->g_54[2],&p_1215->g_124,(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_124,&p_1215->g_54[2],&l_472},{&l_472,&p_1215->g_54[2],&p_1215->g_124,(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_124,&p_1215->g_54[2],&l_472},{&l_472,&p_1215->g_54[2],&p_1215->g_124,(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_124,&p_1215->g_54[2],&l_472},{&l_472,&p_1215->g_54[2],&p_1215->g_124,(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_124,&p_1215->g_54[2],&l_472},{&l_472,&p_1215->g_54[2],&p_1215->g_124,(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_124,&p_1215->g_54[2],&l_472},{&l_472,&p_1215->g_54[2],&p_1215->g_124,(void*)0,&p_1215->g_54[2],(void*)0,&p_1215->g_124,&p_1215->g_54[2],&l_472}};
                int i, j;
                for (i = 0; i < 10; i++)
                    l_582[i] = (void*)0;
                l_566 = (void*)0;
                l_356 ^= ((*p_1215->g_367) = (((VECTOR(uint64_t, 8))(l_567.xyxyyyyx)).s3 && (((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0L, 0x57L)), 0x1FL, ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 2))(0x56L, 0L)).yyxyyyxx, (int8_t)(p_1215->g_296[2][1] , ((--(*l_569)) > (*p_1215->g_123)))))).s17, (int8_t)((safe_div_func_uint64_t_u_u((l_598 = (safe_div_func_int32_t_s_s((((VECTOR(uint64_t, 2))(l_576.ww)).even , ((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(0L, 0x54D0L)).lo, ((((((safe_mod_func_uint8_t_u_u((((p_1215->g_104.z = 0x2D6BL) == (safe_mul_func_int8_t_s_s((((p_1215->g_585 , ((*l_362) = func_31(((((*p_1215->g_476) = (((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(p_1215->g_586.sf757bb90c01f4ef0)) && ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(p_16, 9L, ((safe_mul_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(l_593.yxxx)).x, ((VECTOR(uint8_t, 8))(l_594.s41b7fb2f)).s3)) != (l_595 != 0UL)), (((l_472 |= (-1L)) == (safe_div_func_int32_t_s_s((*p_1215->g_367), l_594.se))) | p_16))) , p_16), p_16, 1L, p_16, 0x114A7498L, 0x459CC176L)).even, ((VECTOR(int32_t, 4))(9L))))).wyzzwzzwwxxwxyxz))).sc | p_1215->g_295[7][1])) < p_1215->g_132) | p_1215->g_246.s7), p_16, p_16, p_1215))) == &p_1215->g_132) < 5L), 0x3FL))) != p_1215->g_500.y), 0xA9L)) >= p_1215->g_201.x) ^ p_16) , l_595) >= (*p_15)) == (**p_1215->g_51)))) != l_408)), l_594.se))), l_599)) > l_600), (int8_t)(*p_1215->g_52)))), ((VECTOR(int8_t, 2))(0x4AL)), 0x10L)), (-7L), 1L, 0x18L, (-5L), 0x4DL, (*p_15), (-3L), 0L)).lo, ((VECTOR(int8_t, 8))((-1L)))))).s3671063253730040, ((VECTOR(int8_t, 16))(0x1EL))))).sc0 && ((VECTOR(int8_t, 2))(2L))))).lo != 255UL)));
                l_598 = 0x73396B99L;
                return p_1215->g_124;
            }
            else
            { /* block id: 177 */
                uint64_t l_645 = 0xC74E2CD45D71CE46L;
                uint8_t **l_646[7] = {&l_364,&l_363,&l_364,&l_364,&l_363,&l_364,&l_364};
                int i;
                if ((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_604.zwxwzyxz)).s40 && ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(l_605.ywxxxyyw)).s62, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))((7L == (((((safe_div_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_div_func_uint8_t_u_u((((safe_add_func_int64_t_s_s((!(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0xB878AE62L, 0x0A4660B0L)), 4294967295UL, 1UL)).zyxxzzzzyyxzxxwy, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(p_1215->g_616.s6035)), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(p_1215->g_621.ywzwzxyw)).s56 & ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))((l_624 == ((((GROUP_DIVERGE(0, 1) == (safe_sub_func_uint32_t_u_u((safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_s(((((((VECTOR(uint32_t, 16))(l_635, 1UL, 4294967293UL, p_1215->g_54[2], 0xC6B92320L, (((0x73B486FC78488E48L || ((safe_rshift_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(p_1215->g_640.s1475)).x, (0x33L >= (l_598 |= ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(p_1215->g_641.xyxy)).hi > ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(l_642.s73346055)).s22 && ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((*p_15), 0x44L, 0x22L, (safe_lshift_func_uint8_t_u_s(((*l_364) = p_1215->g_500.w), (*p_15))), 0x01L, 0x09L, (**p_1215->g_51), ((VECTOR(int8_t, 4))(0x5BL)), (-1L), 0x6EL, 0L, 0x05L, 0L)).s31e2 <= ((VECTOR(int8_t, 4))((-9L)))))).yyzzyxzwwzxzyxzz))).s03))), (-8L), (-1L))).lo && ((VECTOR(int8_t, 2))(0x38L))))), 0x46L, ((VECTOR(int8_t, 2))(1L)), l_635, 0L, ((VECTOR(int8_t, 8))(0x6CL)), 1L)).s50))).xyxyxxyy && ((VECTOR(int8_t, 8))(0x57L))))).lo > ((VECTOR(int8_t, 4))((-10L)))))).w)))), 1)) && 0x61L)) , 6UL) || p_16), p_16, ((VECTOR(uint32_t, 8))(4294967295UL)), 1UL)).sd , 9UL) > p_1215->g_548.x) ^ l_645) < p_16), 2)), p_16)), 0)), p_16)), 1UL))) || 0x29E1L) > p_1215->g_397.s3) , l_646[5])), 0x35ABF46CL, ((VECTOR(uint32_t, 8))(0x56BA5683L)), ((VECTOR(uint32_t, 2))(0x25350BE3L)), ((VECTOR(uint32_t, 4))(4294967295UL)))).odd, ((VECTOR(uint32_t, 8))(0xBCB212DBL)), ((VECTOR(uint32_t, 8))(0x27B6C1D3L))))).s21, ((VECTOR(uint32_t, 2))(4294967286UL))))).xyxxxxyy + ((VECTOR(uint32_t, 8))(1UL))))).even ^ ((VECTOR(uint32_t, 4))(1UL))))).lo))).yxxx * ((VECTOR(uint32_t, 4))(4294967295UL))))) + ((VECTOR(uint32_t, 4))(0UL))))))).s3407114535665051))).odd * ((VECTOR(uint32_t, 8))(0UL))))).s2 != 4294967289UL)), p_1215->g_640.s4)) >= p_16) | l_594.s9), (*p_15))), 6L)), l_604.x)) >= 4294967295UL) < l_594.sa) < 0x1F4AL) | l_560.sb)), 0x3DBCL, ((VECTOR(int16_t, 4))(2L)), ((VECTOR(int16_t, 4))((-9L))), ((VECTOR(int16_t, 4))((-1L))), 0x037CL, (-1L))).se0, ((VECTOR(int16_t, 2))(1L))))), (-1L), 0x64BEL)) && ((VECTOR(int16_t, 4))(0x6B9BL))))).odd)))))), ((VECTOR(int16_t, 2))(1L)), l_334[1], ((VECTOR(int16_t, 8))(0x2B2DL)), (-1L), (-1L), 0L)).s9, 1UL)))
                { /* block id: 180 */
                    union U0 *l_650 = &p_1215->g_296[2][1];
                    (*p_1215->g_649) |= (safe_sub_func_uint64_t_u_u((**p_1215->g_475), ((*l_359) = (65534UL >= p_16))));
                    (*p_1215->g_651) = l_650;
                    return p_16;
                }
                else
                { /* block id: 185 */
                    uint8_t ***l_655 = &l_646[5];
                    for (l_472 = 1; (l_472 != (-5)); l_472 = safe_sub_func_uint64_t_u_u(l_472, 5))
                    { /* block id: 188 */
                        return p_16;
                    }
                    (*p_1215->g_656) = ((*l_655) = &l_363);
                }
            }
            return p_1215->g_659[0][8];
        }
        else
        { /* block id: 196 */
            uint16_t *l_666[3];
            VECTOR(uint8_t, 16) l_671 = (VECTOR(uint8_t, 16))(0x81L, (VECTOR(uint8_t, 4))(0x81L, (VECTOR(uint8_t, 2))(0x81L, 246UL), 246UL), 246UL, 0x81L, 246UL, (VECTOR(uint8_t, 2))(0x81L, 246UL), (VECTOR(uint8_t, 2))(0x81L, 246UL), 0x81L, 246UL, 0x81L, 246UL);
            int32_t l_697 = 0L;
            int64_t *l_699 = &p_1215->g_507[9][4];
            int64_t **l_698 = &l_699;
            int64_t ***l_700 = &l_698;
            int64_t **l_701 = &l_565;
            int64_t ***l_702 = &l_701;
            union U0 **l_709[4][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
            uint8_t *l_715[9][4][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            uint64_t *l_716 = (void*)0;
            uint64_t *l_717 = &p_1215->g_718;
            union U1 **l_721 = (void*)0;
            union U1 **l_722 = &l_719;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_666[i] = (void*)0;
            p_1215->g_124 &= ((safe_mod_func_uint64_t_u_u((0x4CD8415DL != (l_360[1] = (((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 8))((p_1215->g_103.s4 = p_16), 65535UL, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_1215->g_669.wz)), 0x9AE3L, 65530UL)) + ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 4))(p_1215->g_670.s4336)).odd, ((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),uint8_t,((VECTOR(uint8_t, 16))(l_671.s944c5a24c052d250)), (uint8_t)((((VECTOR(int32_t, 4))(l_672.xyyy)).x <= p_16) , (((((p_16 <= (l_568 &= ((VECTOR(int8_t, 2))((-1L), (-2L))).lo)) , l_565) != l_359) , p_16) ^ p_1215->g_659[0][5])), (uint8_t)((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(0x1FL, ((VECTOR(uint8_t, 4))(l_675.sd80d)), ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 8))(l_676.s50342312)), ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(p_1215->g_677.s25)).yxyx && ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(p_1215->g_678.s07641512)).s3762106451127003 > ((VECTOR(int8_t, 16))(l_679.yxyzzywxwyxzxwwx))))).s72 == ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_680.yyyw)), 1L, 5L, 0x2CL, (-5L))).s56))).yyyyyyxyxyyyyyyx && ((VECTOR(int8_t, 8))(l_681.s14166671)).s4273601720075254))).sd27e))).zwwwyxwy))).s27, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 8))(l_684.xyyxyxyx)), ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 2))(0xA9L, 0UL)).xyyx, ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 4))(p_1215->g_691.s2677)).wwyzxzxxwywywwxz, ((VECTOR(uint8_t, 2))((~((VECTOR(uint8_t, 4))(l_692.zxyx)).even))).xxxxxyxyxxyyyxyy))).s3598))).even + ((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 2))(255UL, 0x73L)), ((VECTOR(uint8_t, 2))(p_1215->g_693.zy)), ((VECTOR(uint8_t, 8))((safe_rshift_func_uint16_t_u_s((l_533.s2 < l_696[2]), 1)), 0x81L, l_492.s0, 246UL, l_361, 0xC5L, 7UL, 0x3EL)).s74))).yyxyyxyyxxyyyxyy, ((VECTOR(uint8_t, 16))(0x03L))))).s80))).yxyyyyyy - ((VECTOR(uint8_t, 8))(246UL))))).even + ((VECTOR(uint8_t, 4))(255UL))))).hi, (uint8_t)l_533.s5))).yxyxxxxx, ((VECTOR(uint8_t, 8))(0UL))))).odd, ((VECTOR(uint8_t, 4))(255UL)), ((VECTOR(uint8_t, 4))(248UL))))).wzxwyyyxwzxzywyy - ((VECTOR(uint8_t, 16))(253UL))))).s07))), 0x8BL)) + ((VECTOR(uint8_t, 8))(0xDFL))))).s4))), ((VECTOR(uint8_t, 16))(0x1CL))))).s30, ((VECTOR(uint16_t, 2))(0x38EFL))))).yyxx))), 4UL, 0x54C1L)).s7, p_1215->g_500.x)) > l_671.s7) == p_16))), l_697)) ^ l_671.sf);
            (*l_700) = l_698;
            (*l_702) = l_701;
            (*l_722) = ((0x8829E77470A64B02L > (p_16 && l_680.y)) , (((*l_717) = (+(((VECTOR(uint64_t, 2))(0x6444DE7EC44BC734L, 0x88834C03A364F5C6L)).lo && (safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int16_t_s_u((0x782BL || (l_709[2][1] == (void*)0)), 1)), ((l_559.x = FAKE_DIVERGE(p_1215->local_1_offset, get_local_id(1), 10)) < (p_1215->g_548.y , (safe_unary_minus_func_int8_t_s(((((safe_sub_func_int64_t_s_s((-5L), (safe_lshift_func_int16_t_s_u((-1L), p_1215->g_519[1])))) , 0x7BB7A411L) , p_15) == l_715[6][0][0]))))))), 9UL))))) , l_719));
        }
        (*p_1215->g_750) |= (safe_lshift_func_uint16_t_u_s((GROUP_DIVERGE(2, 1) , (safe_add_func_int8_t_s_s((safe_add_func_int16_t_s_s((p_1215->g_729 == ((*l_732) = l_730)), (&p_1215->g_367 == &p_1215->g_158))), ((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(l_735.s30240355)).s47 + ((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(l_738.s1330)).hi + ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(0UL, ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(l_739.yxxxyxyxxxyxyxyy)).even == ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))((l_560.s2 = (l_740 | (((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(l_741.yxyxyxyyxxyxyyxy)).odd ^ ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 2))((-1L), 0x1C8FBFB19B19FF4EL)).yyyxyyyx))) && ((VECTOR(int64_t, 2))(0L, 0x70BA2A6A25668F2CL)).xyyxxyxx))) && ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(7L, 0x0346E492E1F1FE3BL)), (safe_sub_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_u(((l_533.s1 , (safe_mod_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(0x21L, (0x07FA7021L ^ 0x790B58C4L))), p_16))) ^ l_492.s2), p_16)) >= p_1215->g_507[9][4]), 0x68L)), 0x152D5436CFC587BBL, p_16, ((VECTOR(int64_t, 2))(0x2A1E3E21213E3FF6L)), p_1215->g_669.y, ((VECTOR(int64_t, 8))(0L)))).even))))))))).hi, ((VECTOR(uint64_t, 4))(7UL))))).x | l_396.z))), (-1L), (*p_15), 0x41L, (**p_1215->g_51), 0x6EL, 0x45L, 0x76L)).s0244631521745367 || ((VECTOR(int8_t, 16))(0x20L))))).lo))).s27, ((VECTOR(int8_t, 2))(0x32L))))), 246UL)) | ((VECTOR(uint8_t, 4))(0xA9L))))).even))).xxxyyyyyxxyyyxyy, ((VECTOR(uint8_t, 16))(246UL))))).scf))).xyxyyxxxxyyxyyxy))).s8))), p_16));
    }
    return p_1215->g_246.s3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1215->g_124 p_1215->g_281 p_1215->g_228 p_1215->g_132 p_1215->g_296 p_1215->g_292 p_1215->g_308 p_1215->g_246 p_1215->g_245 p_1215->g_103 p_1215->g_51 p_1215->g_52 p_1215->g_43 p_1215->g_115 p_1215->g_236 p_1215->g_123
 * writes: p_1215->g_124 p_1215->g_54 p_1215->g_292 p_1215->g_295 p_1215->g_61 p_1215->g_103 p_1215->g_115 p_1215->g_296.f3
 */
uint16_t  func_23(int8_t ** p_24, int8_t  p_25, struct S2 * p_1215)
{ /* block id: 66 */
    int64_t l_253 = 0x4233E80B92BDCCD8L;
    VECTOR(int64_t, 8) l_256 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x770D77458279E18DL), 0x770D77458279E18DL), 0x770D77458279E18DL, 0L, 0x770D77458279E18DL);
    int32_t l_261[6][9][4] = {{{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)}},{{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)}},{{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)}},{{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)}},{{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)}},{{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)},{4L,5L,0x53AC29C5L,(-1L)}}};
    VECTOR(int8_t, 2) l_320 = (VECTOR(int8_t, 2))(1L, 0x15L);
    VECTOR(int32_t, 16) l_325 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x2D2E1EDEL), 0x2D2E1EDEL), 0x2D2E1EDEL, (-6L), 0x2D2E1EDEL, (VECTOR(int32_t, 2))((-6L), 0x2D2E1EDEL), (VECTOR(int32_t, 2))((-6L), 0x2D2E1EDEL), (-6L), 0x2D2E1EDEL, (-6L), 0x2D2E1EDEL);
    int32_t *l_326[8][4] = {{&l_261[5][2][3],&l_261[5][2][3],&l_261[1][8][3],(void*)0},{&l_261[5][2][3],&l_261[5][2][3],&l_261[1][8][3],(void*)0},{&l_261[5][2][3],&l_261[5][2][3],&l_261[1][8][3],(void*)0},{&l_261[5][2][3],&l_261[5][2][3],&l_261[1][8][3],(void*)0},{&l_261[5][2][3],&l_261[5][2][3],&l_261[1][8][3],(void*)0},{&l_261[5][2][3],&l_261[5][2][3],&l_261[1][8][3],(void*)0},{&l_261[5][2][3],&l_261[5][2][3],&l_261[1][8][3],(void*)0},{&l_261[5][2][3],&l_261[5][2][3],&l_261[1][8][3],(void*)0}};
    int8_t l_327[8][3][1] = {{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}}};
    int i, j, k;
    for (p_1215->g_124 = (-19); (p_1215->g_124 <= (-26)); --p_1215->g_124)
    { /* block id: 69 */
        int8_t **l_249 = &p_1215->g_52;
        uint16_t *l_250 = (void*)0;
        uint16_t *l_251 = (void*)0;
        uint16_t *l_252 = (void*)0;
        uint16_t *l_262 = (void*)0;
        uint16_t *l_263 = (void*)0;
        uint16_t *l_264 = (void*)0;
        uint16_t *l_265 = (void*)0;
        uint16_t *l_266 = (void*)0;
        uint16_t *l_267 = (void*)0;
        uint16_t *l_268 = (void*)0;
        int32_t l_269 = 8L;
        uint16_t *l_270 = (void*)0;
        uint16_t *l_271 = (void*)0;
        uint16_t *l_272 = (void*)0;
        int32_t l_275 = 6L;
        uint16_t *l_276[10][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t l_277 = 0x05DB8910L;
        int16_t l_280[9] = {0x3BD7L,0x2EBEL,0x3BD7L,0x3BD7L,0x2EBEL,0x3BD7L,0x3BD7L,0x2EBEL,0x3BD7L};
        int32_t *l_282 = &l_275;
        VECTOR(int32_t, 8) l_293 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x59156C5DL), 0x59156C5DL), 0x59156C5DL, (-6L), 0x59156C5DL);
        union U0 *l_303 = (void*)0;
        int i, j;
        (*p_1215->g_281) = (safe_div_func_int32_t_s_s(((VECTOR(int32_t, 8))(p_1215->g_236.xyxxyxxx)).s6, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(1UL, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x8439L, 0xF58DL)), 65527UL, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(p_1215->g_245.s73d85c89df7efae8)).sf2ce + ((VECTOR(uint16_t, 2))(1UL, 0x9DCFL)).yxyx))), 65535UL)).s16 ^ ((VECTOR(uint16_t, 2))(p_1215->g_246.s03))))), 4UL)) + ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))((l_253 = ((void*)0 == l_249)), ((VECTOR(uint16_t, 2))(65535UL, 0x337BL)), 65535UL, 5UL, 0xB9FAL, 0xDF2EL, 65535UL, 0xC49AL, (((((p_1215->g_255 = (p_1215->g_254 = (((1L > (p_1215->g_10 <= p_1215->g_103.s3)) < ((void*)0 != (*p_24))) >= p_25))) >= (((VECTOR(int64_t, 16))(l_256.s1627260275002463)).s8 | ((((**p_1215->g_51) = (safe_add_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((++p_1215->g_201.x), (--p_1215->g_104.z))), 1UL))) != l_280[8]) , 18446744073709551606UL))) != l_280[7]) <= l_269) >= p_25), 65535UL, ((VECTOR(uint16_t, 4))(0UL)), 1UL)) + ((VECTOR(uint16_t, 16))(1UL))))).s8014))), 65528UL, ((VECTOR(uint16_t, 2))(0x2D1DL)), 6UL)).odd, ((VECTOR(uint16_t, 4))(1UL))))).xwwzzxxw, ((VECTOR(uint32_t, 8))(0xC9D51296L))))).s7232553451340115 + ((VECTOR(uint32_t, 16))(0x51EAA6B1L))))).s91fa + ((VECTOR(uint32_t, 4))(4294967294UL))))).x));
        (*l_282) |= l_261[1][8][3];
        if ((safe_div_func_int16_t_s_s((255UL > p_1215->g_228[4]), (FAKE_DIVERGE(p_1215->group_1_offset, get_group_id(1), 10) || ((safe_lshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s(0x78EF1150L, (p_1215->g_132 || (safe_mod_func_uint32_t_u_u((((safe_unary_minus_func_uint16_t_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x49B6L, 65535UL)), 0x6735L, 65532UL, 0x68ECL, 0xDB27L, 0UL, 0x5200L)).s7)) ^ (p_25 , (+(((p_1215->g_292 = &p_1215->g_61) != (void*)0) , ((!(p_1215->g_295[7][1] = ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(l_293.s7466164174070343)), ((VECTOR(int32_t, 4))(p_1215->g_294.s8775)).wwyxxxxxwwxxyyzz))).sc)) , (p_1215->g_296[2][1] , ((safe_sub_func_int32_t_s_s((safe_mod_func_uint16_t_u_u(((FAKE_DIVERGE(p_1215->global_0_offset, get_global_id(0), 10) | (+0x81382A7E13622BCAL)) || 0UL), 0x2976L)), p_25)) || p_25))))))) | GROUP_DIVERGE(0, 1)), (-1L)))))), 5)) <= l_253)))))
        { /* block id: 80 */
            union U0 **l_304 = &l_303;
            (*l_304) = l_303;
        }
        else
        { /* block id: 82 */
            int32_t *l_305 = &p_1215->g_124;
            uint32_t *l_315 = &p_1215->g_115[1][0][3];
            int8_t *l_323 = (void*)0;
            int8_t *l_324 = &p_1215->g_296[2][1].f3;
            (*p_1215->g_292) = l_305;
            (*l_282) = l_261[1][8][3];
            (*p_1215->g_292) = &l_261[0][7][0];
            (*p_1215->g_292) = ((((safe_add_func_int64_t_s_s(((void*)0 != p_1215->g_308), p_1215->g_246.s7)) , (safe_mul_func_uint8_t_u_u(p_25, ((p_1215->g_245.sf || (p_1215->g_103.s2--)) >= (safe_mod_func_int64_t_s_s(((**p_1215->g_51) < ((*l_324) = (((++(*l_315)) && ((safe_lshift_func_int16_t_s_u(((p_25 , (p_25 ^ ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))((-1L), 0x45L)).xxxx, ((VECTOR(int8_t, 16))(l_320.yxxyxxxyxyxyxxxx)).scc9b))) ^ ((VECTOR(int8_t, 16))(((safe_rshift_func_int8_t_s_u((l_261[1][8][3] = (**p_24)), 0)) < p_25), ((VECTOR(int8_t, 8))(0x16L)), ((VECTOR(int8_t, 2))(4L)), ((VECTOR(int8_t, 2))(0x4BL)), (-1L), 0x0BL, (-1L))).sca07))).lo, ((VECTOR(int8_t, 2))((-1L))), ((VECTOR(int8_t, 2))(1L))))).lo)) , p_1215->g_236.x), GROUP_DIVERGE(1, 1))) == (*l_282))) != (**p_24)))), GROUP_DIVERGE(1, 1))))))) || (*p_1215->g_123)) , (void*)0);
        }
    }
    l_327[3][2][0] = ((VECTOR(int32_t, 2))(l_325.s2d)).even;
    (*p_1215->g_281) = p_25;
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_1215->g_61 p_1215->g_124 p_1215->g_43 p_1215->g_199 p_1215->g_201 p_1215->g_209 p_1215->g_214 p_1215->g_215 p_1215->g_115
 * writes: p_1215->g_124 p_1215->g_115 p_1215->g_225 p_1215->g_228
 */
int8_t ** func_26(int8_t * p_27, int8_t ** p_28, int32_t  p_29, int8_t  p_30, struct S2 * p_1215)
{ /* block id: 51 */
    VECTOR(uint16_t, 2) l_202 = (VECTOR(uint16_t, 2))(65531UL, 0xE790L);
    VECTOR(uint16_t, 4) l_205 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 2UL), 2UL);
    VECTOR(uint16_t, 2) l_208 = (VECTOR(uint16_t, 2))(0x1E72L, 65529UL);
    VECTOR(uint16_t, 16) l_212 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x73D2L), 0x73D2L), 0x73D2L, 0UL, 0x73D2L, (VECTOR(uint16_t, 2))(0UL, 0x73D2L), (VECTOR(uint16_t, 2))(0UL, 0x73D2L), 0UL, 0x73D2L, 0UL, 0x73D2L);
    VECTOR(int16_t, 4) l_213 = (VECTOR(int16_t, 4))(0x5F3FL, (VECTOR(int16_t, 2))(0x5F3FL, 0x4E37L), 0x4E37L);
    VECTOR(int16_t, 16) l_216 = (VECTOR(int16_t, 16))(0x60F8L, (VECTOR(int16_t, 4))(0x60F8L, (VECTOR(int16_t, 2))(0x60F8L, 0x2D1BL), 0x2D1BL), 0x2D1BL, 0x60F8L, 0x2D1BL, (VECTOR(int16_t, 2))(0x60F8L, 0x2D1BL), (VECTOR(int16_t, 2))(0x60F8L, 0x2D1BL), 0x60F8L, 0x2D1BL, 0x60F8L, 0x2D1BL);
    int32_t l_229 = 0x297216EBL;
    int8_t **l_230 = &p_1215->g_52;
    int i;
    for (p_29 = (-9); (p_29 >= 0); p_29 = safe_add_func_int8_t_s_s(p_29, 2))
    { /* block id: 54 */
        VECTOR(uint16_t, 16) l_200 = (VECTOR(uint16_t, 16))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 0x98B7L), 0x98B7L), 0x98B7L, 9UL, 0x98B7L, (VECTOR(uint16_t, 2))(9UL, 0x98B7L), (VECTOR(uint16_t, 2))(9UL, 0x98B7L), 9UL, 0x98B7L, 9UL, 0x98B7L);
        VECTOR(uint32_t, 4) l_219 = (VECTOR(uint32_t, 4))(0x02CFC97FL, (VECTOR(uint32_t, 2))(0x02CFC97FL, 7UL), 7UL);
        VECTOR(uint32_t, 4) l_220 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xA94B1C12L), 0xA94B1C12L);
        int32_t l_221 = 1L;
        uint32_t *l_222 = (void*)0;
        uint32_t *l_223 = (void*)0;
        uint32_t *l_224 = &p_1215->g_115[1][0][3];
        uint32_t *l_226 = (void*)0;
        uint32_t *l_227[5][3][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int i, j, k;
        (*p_1215->g_61) |= (-4L);
        (*p_1215->g_61) |= (safe_div_func_int8_t_s_s((safe_mul_func_int16_t_s_s((l_229 = (p_1215->g_43 > ((safe_sub_func_uint8_t_u_u((((VECTOR(uint32_t, 8))(5UL, 1UL, 4294967295UL, ((VECTOR(uint32_t, 4))((+((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 4))(0xB99627D3L, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(p_1215->g_199.yxzw)).hi + ((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(0x59F90F6DL, ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 16))(l_200.s40b1378d5e2c2b43)), ((VECTOR(uint16_t, 2))(p_1215->g_201.xy)).yyyxyyyyxyyyyyxx, ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 8))(p_1215->g_201.x, ((VECTOR(uint16_t, 2))(9UL, 65530UL)), 65535UL, 0x746AL, 0x0941L, 65529UL, 0xBB75L)).s0016512470045427, ((VECTOR(uint16_t, 16))(l_202.yxyyxxxyxxyyyxyx)))))))), ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(65535UL, 5UL)).yxyxyxxyyxyxyyyx + ((VECTOR(uint16_t, 2))(l_205.ww)).yxxyyyxxxyyyxyyx)))))).sd1, ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 2))(0x6993L, 0x8227L)).yyxxxxxxyxyyyyyy, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(l_208.xyyx)).wzxwxyyy >> ((VECTOR(uint16_t, 8))(16))))).s4577525460207440, ((VECTOR(uint16_t, 2))(1UL, 0x786DL)).xyyyyxyxxxxxyxyy))).s88))), ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 2))(0x41E5L, 0x0E47L)).xxyyxxyxyyyyyyyx, ((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 16))(p_1215->g_209.xxyxyxxxxyxyxyxx)).lo, ((VECTOR(int16_t, 2))(0x4D10L, (-2L))).yyyyyxyx))).s0016001715702531, ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(l_212.sfb577810f05b0942)).s14, ((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_213.yzxw)), ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(p_1215->g_214.zxyz)).wwywyxyz & ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(p_1215->g_215.xyxxxyxx)).hi && ((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 4))(l_216.s4079)), (int16_t)(p_30 <= ((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 16))(0x79D16ADDL, ((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(l_219.xz)).yxyxyxxx, ((VECTOR(uint32_t, 16))(l_220.xzwywyxzzxxzyxyx)).even, ((VECTOR(uint32_t, 2))(0xC17A0307L, 0xC695775BL)).yyxyxyyx))), (p_1215->g_228[4] = (((((l_221 = FAKE_DIVERGE(p_1215->group_2_offset, get_group_id(2), 10)) ^ (p_30 , 0x33L)) , (p_30 || (p_1215->g_225 = (((((*l_224) ^= p_30) | l_212.s9) | l_200.sb) || 4294967292UL)))) > p_30) ^ 3L)), ((VECTOR(uint32_t, 4))(0x230D1EB5L)), 0xF5C30DC2L, 0xB0BDB32CL)).hi))).s02 + ((VECTOR(uint32_t, 2))(2UL))))).yyyyyxyx))).s0), (int16_t)0x536DL)))))).yyzyxxxx))).s61 && ((VECTOR(int16_t, 2))(0x432DL))))).yxyy ^ ((VECTOR(int16_t, 4))(0x142DL))))))).s3735357002356237 <= ((VECTOR(int16_t, 16))(0x4D01L))))).sac))), ((VECTOR(uint16_t, 2))(65526UL))))).xxyx - ((VECTOR(uint16_t, 4))(65535UL))))).hi, ((VECTOR(uint16_t, 2))(0x45B8L)), ((VECTOR(uint16_t, 2))(0xDF31L))))).yyyxyxxxyyxyxxyy))).s52))).lo, ((VECTOR(uint32_t, 4))(0xE60972ECL)), 0xB4344EF4L, 4294967295UL, p_1215->g_115[1][0][3], ((VECTOR(uint32_t, 4))(7UL)), 0xAB522A35L, 4294967286UL, 6UL)).odd, ((VECTOR(uint32_t, 8))(0x98B309F7L))))).s06))), 4294967293UL)).ywzzxyzyzwzwxxzy + ((VECTOR(uint32_t, 16))(4294967292UL))))).even + ((VECTOR(uint32_t, 8))(7UL))))).odd))), 0x955CC557L)).s0 , 0xADL), l_220.w)) >= p_30))), l_213.x)), l_219.w));
        if ((*p_1215->g_61))
            continue;
    }
    return l_230;
}


/* ------------------------------------------ */
/* 
 * reads : p_1215->g_60
 * writes: p_1215->g_61
 */
int8_t * func_31(uint64_t  p_32, uint64_t  p_33, uint16_t  p_34, struct S2 * p_1215)
{ /* block id: 48 */
    int32_t *l_181 = &p_1215->g_124;
    int32_t **l_182[4][2] = {{&l_181,&p_1215->g_61},{&l_181,&p_1215->g_61},{&l_181,&p_1215->g_61},{&l_181,&p_1215->g_61}};
    int8_t *l_183 = &p_1215->g_43;
    int i, j;
    (*p_1215->g_60) = l_181;
    return l_183;
}


/* ------------------------------------------ */
/* 
 * reads : p_1215->g_10 p_1215->g_60 p_1215->g_61 p_1215->g_54 p_1215->g_103 p_1215->g_104 p_1215->g_115 p_1215->g_52 p_1215->g_43 p_1215->g_51 p_1215->g_123 p_1215->g_132 p_1215->g_158
 * writes: p_1215->g_61 p_1215->g_43 p_1215->g_54 p_1215->g_115 p_1215->g_124 p_1215->g_132 p_1215->g_104
 */
uint64_t  func_35(int8_t * p_36, int8_t ** p_37, uint64_t  p_38, int8_t ** p_39, uint32_t  p_40, struct S2 * p_1215)
{ /* block id: 9 */
    int16_t l_59 = 3L;
    int8_t **l_64 = &p_1215->g_52;
    int8_t ***l_65 = &l_64;
    int32_t *l_69 = &p_1215->g_54[2];
    uint64_t l_74 = 0UL;
    VECTOR(uint16_t, 2) l_89 = (VECTOR(uint16_t, 2))(0UL, 0xAF57L);
    int32_t **l_144 = &p_1215->g_61;
    int32_t l_163 = 0x5C5D4B51L;
    int32_t l_168 = 0x22B33F4AL;
    int32_t l_171 = 0x6A7537CAL;
    int32_t l_172 = 0x4DEADA25L;
    int32_t l_173 = 1L;
    int8_t l_174 = 0x59L;
    int32_t l_175 = 0x19461F97L;
    int32_t l_176 = 0L;
    int32_t l_177 = 0x2B639741L;
    int i;
    (*p_1215->g_60) = ((p_1215->g_10 , 0xF40E302F92BF7C62L) , (p_40 , (l_59 , &p_1215->g_54[2])));
    if (((safe_mul_func_int8_t_s_s(((*p_36) = ((VECTOR(int8_t, 2))((-1L), 9L)).odd), 0x0AL)) < (((*l_65) = l_64) == (void*)0)))
    { /* block id: 13 */
        VECTOR(uint16_t, 4) l_92 = (VECTOR(uint16_t, 4))(0x8E40L, (VECTOR(uint16_t, 2))(0x8E40L, 0x0504L), 0x0504L);
        int8_t ***l_122 = &l_64;
        uint8_t *l_131 = &p_1215->g_132;
        uint32_t *l_135 = &p_1215->g_115[3][0][1];
        uint32_t l_136 = 0UL;
        VECTOR(int32_t, 8) l_137 = (VECTOR(int32_t, 8))(0x0D4F074CL, (VECTOR(int32_t, 4))(0x0D4F074CL, (VECTOR(int32_t, 2))(0x0D4F074CL, 0x65F0A685L), 0x65F0A685L), 0x65F0A685L, 0x0D4F074CL, 0x65F0A685L);
        VECTOR(int32_t, 16) l_138 = (VECTOR(int32_t, 16))(0x7E1C85B5L, (VECTOR(int32_t, 4))(0x7E1C85B5L, (VECTOR(int32_t, 2))(0x7E1C85B5L, 0x7ED00A94L), 0x7ED00A94L), 0x7ED00A94L, 0x7E1C85B5L, 0x7ED00A94L, (VECTOR(int32_t, 2))(0x7E1C85B5L, 0x7ED00A94L), (VECTOR(int32_t, 2))(0x7E1C85B5L, 0x7ED00A94L), 0x7E1C85B5L, 0x7ED00A94L, 0x7E1C85B5L, 0x7ED00A94L);
        VECTOR(int32_t, 16) l_139 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
        int32_t **l_143 = &p_1215->g_61;
        int32_t ***l_142 = &l_143;
        int32_t ***l_145 = &l_144;
        int i;
        for (l_59 = 0; (l_59 >= 12); l_59 = safe_add_func_uint32_t_u_u(l_59, 4))
        { /* block id: 16 */
            int32_t **l_68 = &p_1215->g_61;
            (*l_68) = (*p_1215->g_60);
            if ((**p_1215->g_60))
                break;
            (*l_68) = l_69;
        }
        for (p_38 = 0; (p_38 < 44); p_38++)
        { /* block id: 23 */
            uint32_t *l_114 = &p_1215->g_115[1][0][3];
            (*p_1215->g_123) = ((((FAKE_DIVERGE(p_1215->local_1_offset, get_local_id(1), 10) & l_74) != ((+((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((safe_div_func_int32_t_s_s((safe_mod_func_int16_t_s_s((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(l_89.xx)) - ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(l_92.xzwxwyyzzyzzxxwy)).sca48 + ((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(0xD076L, ((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 2))(65532UL, 0x212AL)).xxxyxyxy, ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),uint16_t,((VECTOR(uint16_t, 8))((safe_sub_func_uint16_t_u_u(65535UL, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 4))(p_1215->g_103.s4311)).lo, ((VECTOR(uint16_t, 16))(p_1215->g_104.xywzxwxxyxzyzxwz)).sb9))).yxxxxxxyyyxyxyxy))).s5158, (uint16_t)(safe_mod_func_int16_t_s_s((l_92.x && (safe_unary_minus_func_uint64_t_u(FAKE_DIVERGE(p_1215->global_2_offset, get_global_id(2), 10)))), (safe_mul_func_uint8_t_u_u(((((((safe_mod_func_uint32_t_u_u(((safe_add_func_int8_t_s_s((0L != ((((*p_1215->g_61) = 0x4284727EL) > (((*l_114) ^= 3UL) >= p_38)) >= p_1215->g_104.y)), (safe_lshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u(p_38, 9)) <= p_40), (*p_1215->g_52))), 7)))) > p_1215->g_104.y), p_38)) , 0x0AC9A06BL) , &p_1215->g_51) == l_122) ^ p_1215->g_104.z) < 0xB56EB578CF177654L), p_40))))))) + ((VECTOR(uint16_t, 4))(65535UL))))).hi + ((VECTOR(uint16_t, 2))(65535UL))))).xxyxyyxy | ((VECTOR(uint16_t, 8))(0x3F61L))))).hi * ((VECTOR(uint16_t, 4))(65535UL))))).z)), 65530UL, 0xBA07L, l_92.y, ((VECTOR(uint16_t, 4))(5UL)))).lo, (uint16_t)p_1215->g_54[1], (uint16_t)l_92.x))).hi, ((VECTOR(uint16_t, 2))(0xE1D1L))))).xyyxxxxx))), ((VECTOR(uint16_t, 2))(0x7C81L)), 65535UL, ((VECTOR(uint16_t, 4))(0x3343L)))).sc8 + ((VECTOR(uint16_t, 2))(0x2F20L))))), ((VECTOR(uint16_t, 2))(65535UL)), ((VECTOR(uint16_t, 2))(0x8B94L)), 1UL, 65535UL)).lo, (uint16_t)l_92.z)))))).lo))) + ((VECTOR(uint16_t, 2))(1UL))))).xyyy + ((VECTOR(uint16_t, 4))(0xAFCFL))))).z >= GROUP_DIVERGE(0, 1)), p_1215->g_43)), 1UL)), p_1215->g_43)), p_1215->g_104.x)) , p_40)) != 0x169A1B29E641F7FFL)) && p_1215->g_54[2]) > (**p_1215->g_51));
            return (*l_69);
        }
        (*l_69) &= ((safe_add_func_int8_t_s_s((safe_mul_func_uint32_t_u_u(((*l_135) = (safe_lshift_func_int8_t_s_u((**p_1215->g_51), ((*l_131)--)))), (l_136 >= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-1L), 1L)), 0x096EA0D3L, ((VECTOR(int32_t, 2))(l_137.s55)), ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(l_138.s82f86c40)).s6513353330607564, ((VECTOR(int32_t, 4))(0x2FC0BA81L, ((VECTOR(int32_t, 2))(l_139.s4f)), 1L)).zyxxwyzywwzxzwww))).s9, 0x33823A47L, 0x46725D52L)).s7))), (**p_1215->g_51))) != ((((safe_lshift_func_int8_t_s_u((*p_1215->g_52), 6)) < ((((*l_142) = &l_69) == ((*l_145) = l_144)) != 1L)) <= (safe_mul_func_int8_t_s_s((safe_mod_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1215->global_1_offset, get_global_id(1), 10), 9)) <= (p_1215->g_104.z <= 0L)), p_40)), (**p_37)))) , 0xB6L));
    }
    else
    { /* block id: 34 */
        return p_1215->g_115[1][0][1];
    }
    if (((*p_1215->g_61) = 0x0161F38FL))
    { /* block id: 38 */
        uint16_t *l_152[4][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t *l_157 = (void*)0;
        int i, j;
        (*p_1215->g_158) = ((**l_144) = ((++p_1215->g_104.z) != (safe_add_func_int8_t_s_s((**p_1215->g_51), (**l_144)))));
    }
    else
    { /* block id: 42 */
        int32_t *l_159 = &p_1215->g_124;
        int32_t **l_160 = &l_69;
        int32_t *l_161 = &p_1215->g_54[1];
        int32_t *l_162 = (void*)0;
        int32_t *l_164 = (void*)0;
        int32_t *l_165 = &p_1215->g_54[1];
        int32_t *l_166 = &p_1215->g_54[2];
        int32_t *l_167 = &l_163;
        int32_t *l_169 = &l_163;
        int32_t *l_170[1];
        uint32_t l_178 = 4UL;
        int i;
        for (i = 0; i < 1; i++)
            l_170[i] = &p_1215->g_54[2];
        (*l_160) = ((*l_144) = l_159);
        --l_178;
    }
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_46(union U1  p_47, int8_t ** p_48, int64_t  p_49, struct S2 * p_1215)
{ /* block id: 6 */
    int32_t *l_53[10][3][4] = {{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}},{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}},{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}},{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}},{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}},{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}},{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}},{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}},{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}},{{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]},{&p_1215->g_54[2],(void*)0,&p_1215->g_54[2],&p_1215->g_54[0]}}};
    int32_t l_55 = (-8L);
    uint32_t l_56 = 0x4EF461E6L;
    int i, j, k;
    ++l_56;
    return p_49;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1216;
    struct S2* p_1215 = &c_1216;
    struct S2 c_1217 = {
        4294967290UL, // p_1215->g_10
        {0xA907865EL}, // p_1215->g_41
        0x22L, // p_1215->g_43
        &p_1215->g_43, // p_1215->g_52
        &p_1215->g_52, // p_1215->g_51
        {1L,1L,1L}, // p_1215->g_54
        (void*)0, // p_1215->g_61
        &p_1215->g_61, // p_1215->g_60
        (VECTOR(uint16_t, 8))(0x3D70L, (VECTOR(uint16_t, 4))(0x3D70L, (VECTOR(uint16_t, 2))(0x3D70L, 0x02A6L), 0x02A6L), 0x02A6L, 0x3D70L, 0x02A6L), // p_1215->g_103
        (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0x7622L), 0x7622L), // p_1215->g_104
        {{{0xD8E0A4D0L,4294967295UL,4294967295UL,0xD8E0A4D0L,0x0D964AFFL,4294967286UL,4294967286UL,0x0D964AFFL}},{{0xD8E0A4D0L,4294967295UL,4294967295UL,0xD8E0A4D0L,0x0D964AFFL,4294967286UL,4294967286UL,0x0D964AFFL}},{{0xD8E0A4D0L,4294967295UL,4294967295UL,0xD8E0A4D0L,0x0D964AFFL,4294967286UL,4294967286UL,0x0D964AFFL}},{{0xD8E0A4D0L,4294967295UL,4294967295UL,0xD8E0A4D0L,0x0D964AFFL,4294967286UL,4294967286UL,0x0D964AFFL}}}, // p_1215->g_115
        (-2L), // p_1215->g_124
        &p_1215->g_124, // p_1215->g_123
        0UL, // p_1215->g_132
        &p_1215->g_124, // p_1215->g_158
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x52229734L), 0x52229734L), // p_1215->g_199
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), // p_1215->g_201
        (VECTOR(int16_t, 2))(0x33D2L, 0x3296L), // p_1215->g_209
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4F89L), 0x4F89L), // p_1215->g_214
        (VECTOR(int16_t, 2))(0L, 1L), // p_1215->g_215
        1UL, // p_1215->g_225
        {0x3A0864FAL,0x3A0864FAL,0x3A0864FAL,0x3A0864FAL,0x3A0864FAL,0x3A0864FAL,0x3A0864FAL}, // p_1215->g_228
        (VECTOR(int32_t, 2))(0x1D47E159L, (-5L)), // p_1215->g_236
        (VECTOR(uint16_t, 16))(0xAD85L, (VECTOR(uint16_t, 4))(0xAD85L, (VECTOR(uint16_t, 2))(0xAD85L, 0UL), 0UL), 0UL, 0xAD85L, 0UL, (VECTOR(uint16_t, 2))(0xAD85L, 0UL), (VECTOR(uint16_t, 2))(0xAD85L, 0UL), 0xAD85L, 0UL, 0xAD85L, 0UL), // p_1215->g_245
        (VECTOR(uint16_t, 8))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0x4ABCL), 0x4ABCL), 0x4ABCL, 6UL, 0x4ABCL), // p_1215->g_246
        1UL, // p_1215->g_254
        (-1L), // p_1215->g_255
        &p_1215->g_54[2], // p_1215->g_281
        &p_1215->g_61, // p_1215->g_292
        (VECTOR(int32_t, 16))(0x2ECA1874L, (VECTOR(int32_t, 4))(0x2ECA1874L, (VECTOR(int32_t, 2))(0x2ECA1874L, 1L), 1L), 1L, 0x2ECA1874L, 1L, (VECTOR(int32_t, 2))(0x2ECA1874L, 1L), (VECTOR(int32_t, 2))(0x2ECA1874L, 1L), 0x2ECA1874L, 1L, 0x2ECA1874L, 1L), // p_1215->g_294
        {{(-8L),0L,1L,0x7A9871E9L,0L},{(-8L),0L,1L,0x7A9871E9L,0L},{(-8L),0L,1L,0x7A9871E9L,0L},{(-8L),0L,1L,0x7A9871E9L,0L},{(-8L),0L,1L,0x7A9871E9L,0L},{(-8L),0L,1L,0x7A9871E9L,0L},{(-8L),0L,1L,0x7A9871E9L,0L},{(-8L),0L,1L,0x7A9871E9L,0L}}, // p_1215->g_295
        {{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}}}, // p_1215->g_296
        (void*)0, // p_1215->g_308
        (VECTOR(int64_t, 2))(1L, 0x28D60DA0D2046FB5L), // p_1215->g_339
        &p_1215->g_54[2], // p_1215->g_367
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_1215->g_381
        (VECTOR(uint16_t, 8))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0xB9F1L), 0xB9F1L), 0xB9F1L, 7UL, 0xB9F1L), // p_1215->g_391
        (VECTOR(uint16_t, 16))(0xE76AL, (VECTOR(uint16_t, 4))(0xE76AL, (VECTOR(uint16_t, 2))(0xE76AL, 5UL), 5UL), 5UL, 0xE76AL, 5UL, (VECTOR(uint16_t, 2))(0xE76AL, 5UL), (VECTOR(uint16_t, 2))(0xE76AL, 5UL), 0xE76AL, 5UL, 0xE76AL, 5UL), // p_1215->g_397
        18446744073709551612UL, // p_1215->g_434
        1UL, // p_1215->g_439
        {{{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0}},{{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0}},{{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0}},{{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0}},{{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0},{(void*)0,&p_1215->g_439,&p_1215->g_439,(void*)0,(void*)0}}}, // p_1215->g_438
        &p_1215->g_438[3][7][1], // p_1215->g_437
        {&p_1215->g_437,&p_1215->g_437,&p_1215->g_437,&p_1215->g_437,&p_1215->g_437,&p_1215->g_437,&p_1215->g_437,&p_1215->g_437,&p_1215->g_437}, // p_1215->g_440
        (VECTOR(int64_t, 8))(0x6F87D08B27AF8601L, (VECTOR(int64_t, 4))(0x6F87D08B27AF8601L, (VECTOR(int64_t, 2))(0x6F87D08B27AF8601L, 0L), 0L), 0L, 0x6F87D08B27AF8601L, 0L), // p_1215->g_448
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x22CDB9D1300FD188L), 0x22CDB9D1300FD188L), // p_1215->g_449
        &p_1215->g_434, // p_1215->g_476
        &p_1215->g_476, // p_1215->g_475
        {&p_1215->g_475}, // p_1215->g_474
        (VECTOR(int64_t, 16))(0x2B3FE876338F6B5BL, (VECTOR(int64_t, 4))(0x2B3FE876338F6B5BL, (VECTOR(int64_t, 2))(0x2B3FE876338F6B5BL, 1L), 1L), 1L, 0x2B3FE876338F6B5BL, 1L, (VECTOR(int64_t, 2))(0x2B3FE876338F6B5BL, 1L), (VECTOR(int64_t, 2))(0x2B3FE876338F6B5BL, 1L), 0x2B3FE876338F6B5BL, 1L, 0x2B3FE876338F6B5BL, 1L), // p_1215->g_491
        (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0xBB1AC241B8F03B49L), 0xBB1AC241B8F03B49L), // p_1215->g_500
        {{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL},{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL},{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL},{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL},{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL},{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL},{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL},{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL},{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL},{0x4DAC24CFE45AFF6BL,0x4FE22ABEFA54B886L,0x46AABB0B7A0F989DL,0x4DAC24CFE45AFF6BL,0x282DF5194B031B8EL,0x46AABB0B7A0F989DL}}, // p_1215->g_507
        {4294967295UL,6UL,4294967295UL,4294967295UL,6UL,4294967295UL}, // p_1215->g_519
        (VECTOR(uint16_t, 2))(0x3EBFL, 0x78FBL), // p_1215->g_531
        (VECTOR(uint8_t, 2))(0xA1L, 0x91L), // p_1215->g_548
        (VECTOR(uint8_t, 2))(0x6FL, 4UL), // p_1215->g_554
        (VECTOR(int16_t, 16))(0x3680L, (VECTOR(int16_t, 4))(0x3680L, (VECTOR(int16_t, 2))(0x3680L, (-1L)), (-1L)), (-1L), 0x3680L, (-1L), (VECTOR(int16_t, 2))(0x3680L, (-1L)), (VECTOR(int16_t, 2))(0x3680L, (-1L)), 0x3680L, (-1L), 0x3680L, (-1L)), // p_1215->g_561
        (VECTOR(int16_t, 2))(0x026AL, (-7L)), // p_1215->g_562
        {0}, // p_1215->g_585
        (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x170294C4L), 0x170294C4L), 0x170294C4L, 5L, 0x170294C4L, (VECTOR(int32_t, 2))(5L, 0x170294C4L), (VECTOR(int32_t, 2))(5L, 0x170294C4L), 5L, 0x170294C4L, 5L, 0x170294C4L), // p_1215->g_586
        (VECTOR(uint32_t, 8))(0x22A451C0L, (VECTOR(uint32_t, 4))(0x22A451C0L, (VECTOR(uint32_t, 2))(0x22A451C0L, 6UL), 6UL), 6UL, 0x22A451C0L, 6UL), // p_1215->g_616
        (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x3FE06C80L), 0x3FE06C80L), // p_1215->g_621
        (VECTOR(uint8_t, 8))(0x03L, (VECTOR(uint8_t, 4))(0x03L, (VECTOR(uint8_t, 2))(0x03L, 0x6FL), 0x6FL), 0x6FL, 0x03L, 0x6FL), // p_1215->g_640
        (VECTOR(int8_t, 2))((-1L), 7L), // p_1215->g_641
        &p_1215->g_124, // p_1215->g_649
        &p_1215->g_296[6][0], // p_1215->g_652
        &p_1215->g_652, // p_1215->g_651
        (void*)0, // p_1215->g_658
        &p_1215->g_658, // p_1215->g_657
        &p_1215->g_657, // p_1215->g_656
        {{0x58C691411C61B8A3L,0x58C691411C61B8A3L,0x58C691411C61B8A3L,0x58C691411C61B8A3L,0x58C691411C61B8A3L,0x58C691411C61B8A3L,0x58C691411C61B8A3L,0x58C691411C61B8A3L,0x58C691411C61B8A3L,0x58C691411C61B8A3L}}, // p_1215->g_659
        (VECTOR(uint16_t, 4))(0x35F1L, (VECTOR(uint16_t, 2))(0x35F1L, 0xC242L), 0xC242L), // p_1215->g_669
        (VECTOR(uint16_t, 8))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 0xA3FAL), 0xA3FAL), 0xA3FAL, 9UL, 0xA3FAL), // p_1215->g_670
        (VECTOR(int8_t, 8))(0x0CL, (VECTOR(int8_t, 4))(0x0CL, (VECTOR(int8_t, 2))(0x0CL, 1L), 1L), 1L, 0x0CL, 1L), // p_1215->g_677
        (VECTOR(int8_t, 8))(0x2CL, (VECTOR(int8_t, 4))(0x2CL, (VECTOR(int8_t, 2))(0x2CL, 0x05L), 0x05L), 0x05L, 0x2CL, 0x05L), // p_1215->g_678
        (VECTOR(uint8_t, 8))(0xE4L, (VECTOR(uint8_t, 4))(0xE4L, (VECTOR(uint8_t, 2))(0xE4L, 0xDAL), 0xDAL), 0xDAL, 0xE4L, 0xDAL), // p_1215->g_691
        (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0x1CL), 0x1CL), // p_1215->g_693
        18446744073709551611UL, // p_1215->g_718
        {0UL}, // p_1215->g_720
        (void*)0, // p_1215->g_729
        &p_1215->g_54[0], // p_1215->g_750
        {0}, // p_1215->g_756
        (void*)0, // p_1215->g_758
        &p_1215->g_758, // p_1215->g_757
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 1UL), 1UL), // p_1215->g_781
        (void*)0, // p_1215->g_827
        {{{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0}},{{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0},{(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0,&p_1215->g_827,(void*)0}}}, // p_1215->g_826
        {1UL}, // p_1215->g_902
        &p_1215->g_902, // p_1215->g_901
        (VECTOR(int64_t, 8))(0x6AC28B9268C257B0L, (VECTOR(int64_t, 4))(0x6AC28B9268C257B0L, (VECTOR(int64_t, 2))(0x6AC28B9268C257B0L, 0x3E5371A20C08E42FL), 0x3E5371A20C08E42FL), 0x3E5371A20C08E42FL, 0x6AC28B9268C257B0L, 0x3E5371A20C08E42FL), // p_1215->g_911
        (VECTOR(uint32_t, 16))(0xCBD60273L, (VECTOR(uint32_t, 4))(0xCBD60273L, (VECTOR(uint32_t, 2))(0xCBD60273L, 1UL), 1UL), 1UL, 0xCBD60273L, 1UL, (VECTOR(uint32_t, 2))(0xCBD60273L, 1UL), (VECTOR(uint32_t, 2))(0xCBD60273L, 1UL), 0xCBD60273L, 1UL, 0xCBD60273L, 1UL), // p_1215->g_945
        (VECTOR(int8_t, 8))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, (-1L)), (-1L)), (-1L), 0x05L, (-1L)), // p_1215->g_960
        (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x42L), 0x42L), // p_1215->g_970
        (VECTOR(int8_t, 2))(0x4EL, 4L), // p_1215->g_997
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L)), // p_1215->g_1010
        &p_1215->g_902.f1, // p_1215->g_1020
        (VECTOR(int16_t, 2))((-2L), (-2L)), // p_1215->g_1039
        (VECTOR(int16_t, 16))(0x2A32L, (VECTOR(int16_t, 4))(0x2A32L, (VECTOR(int16_t, 2))(0x2A32L, 0x2192L), 0x2192L), 0x2192L, 0x2A32L, 0x2192L, (VECTOR(int16_t, 2))(0x2A32L, 0x2192L), (VECTOR(int16_t, 2))(0x2A32L, 0x2192L), 0x2A32L, 0x2192L, 0x2A32L, 0x2192L), // p_1215->g_1040
        (VECTOR(int16_t, 8))(0x504BL, (VECTOR(int16_t, 4))(0x504BL, (VECTOR(int16_t, 2))(0x504BL, 0x0E18L), 0x0E18L), 0x0E18L, 0x504BL, 0x0E18L), // p_1215->g_1043
        (VECTOR(uint32_t, 2))(0UL, 4294967291UL), // p_1215->g_1051
        (VECTOR(int8_t, 2))(0x38L, 0x1DL), // p_1215->g_1072
        0xA3645F4EL, // p_1215->g_1078
        (void*)0, // p_1215->g_1084
        &p_1215->g_1084, // p_1215->g_1083
        (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 1L), 1L), // p_1215->g_1089
        (VECTOR(int32_t, 4))(0x05FBD6C4L, (VECTOR(int32_t, 2))(0x05FBD6C4L, 0L), 0L), // p_1215->g_1091
        (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x79648C80L), 0x79648C80L), 0x79648C80L, (-4L), 0x79648C80L, (VECTOR(int32_t, 2))((-4L), 0x79648C80L), (VECTOR(int32_t, 2))((-4L), 0x79648C80L), (-4L), 0x79648C80L, (-4L), 0x79648C80L), // p_1215->g_1093
        (VECTOR(int32_t, 16))(0x2C15461BL, (VECTOR(int32_t, 4))(0x2C15461BL, (VECTOR(int32_t, 2))(0x2C15461BL, 1L), 1L), 1L, 0x2C15461BL, 1L, (VECTOR(int32_t, 2))(0x2C15461BL, 1L), (VECTOR(int32_t, 2))(0x2C15461BL, 1L), 0x2C15461BL, 1L, 0x2C15461BL, 1L), // p_1215->g_1094
        (VECTOR(uint32_t, 8))(0x398EEE92L, (VECTOR(uint32_t, 4))(0x398EEE92L, (VECTOR(uint32_t, 2))(0x398EEE92L, 0x00F2B9EFL), 0x00F2B9EFL), 0x00F2B9EFL, 0x398EEE92L, 0x00F2B9EFL), // p_1215->g_1097
        (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x3B2AL), 0x3B2AL), // p_1215->g_1099
        {&p_1215->g_658,&p_1215->g_658,&p_1215->g_658,&p_1215->g_658,&p_1215->g_658}, // p_1215->g_1111
        &p_1215->g_1111[2], // p_1215->g_1110
        {&p_1215->g_1110,&p_1215->g_1110,&p_1215->g_1110,&p_1215->g_1110,&p_1215->g_1110,&p_1215->g_1110}, // p_1215->g_1109
        (VECTOR(int32_t, 4))(0x774E3C25L, (VECTOR(int32_t, 2))(0x774E3C25L, 0x4D0A2758L), 0x4D0A2758L), // p_1215->g_1116
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 7UL), 7UL), 7UL, 0UL, 7UL, (VECTOR(uint16_t, 2))(0UL, 7UL), (VECTOR(uint16_t, 2))(0UL, 7UL), 0UL, 7UL, 0UL, 7UL), // p_1215->g_1123
        (void*)0, // p_1215->g_1194
        sequence_input[get_global_id(0)], // p_1215->global_0_offset
        sequence_input[get_global_id(1)], // p_1215->global_1_offset
        sequence_input[get_global_id(2)], // p_1215->global_2_offset
        sequence_input[get_local_id(0)], // p_1215->local_0_offset
        sequence_input[get_local_id(1)], // p_1215->local_1_offset
        sequence_input[get_local_id(2)], // p_1215->local_2_offset
        sequence_input[get_group_id(0)], // p_1215->group_0_offset
        sequence_input[get_group_id(1)], // p_1215->group_1_offset
        sequence_input[get_group_id(2)], // p_1215->group_2_offset
    };
    c_1216 = c_1217;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1215);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1215->g_10, "p_1215->g_10", print_hash_value);
    transparent_crc(p_1215->g_41.f0, "p_1215->g_41.f0", print_hash_value);
    transparent_crc(p_1215->g_43, "p_1215->g_43", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1215->g_54[i], "p_1215->g_54[i]", print_hash_value);

    }
    transparent_crc(p_1215->g_103.s0, "p_1215->g_103.s0", print_hash_value);
    transparent_crc(p_1215->g_103.s1, "p_1215->g_103.s1", print_hash_value);
    transparent_crc(p_1215->g_103.s2, "p_1215->g_103.s2", print_hash_value);
    transparent_crc(p_1215->g_103.s3, "p_1215->g_103.s3", print_hash_value);
    transparent_crc(p_1215->g_103.s4, "p_1215->g_103.s4", print_hash_value);
    transparent_crc(p_1215->g_103.s5, "p_1215->g_103.s5", print_hash_value);
    transparent_crc(p_1215->g_103.s6, "p_1215->g_103.s6", print_hash_value);
    transparent_crc(p_1215->g_103.s7, "p_1215->g_103.s7", print_hash_value);
    transparent_crc(p_1215->g_104.x, "p_1215->g_104.x", print_hash_value);
    transparent_crc(p_1215->g_104.y, "p_1215->g_104.y", print_hash_value);
    transparent_crc(p_1215->g_104.z, "p_1215->g_104.z", print_hash_value);
    transparent_crc(p_1215->g_104.w, "p_1215->g_104.w", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1215->g_115[i][j][k], "p_1215->g_115[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1215->g_124, "p_1215->g_124", print_hash_value);
    transparent_crc(p_1215->g_132, "p_1215->g_132", print_hash_value);
    transparent_crc(p_1215->g_199.x, "p_1215->g_199.x", print_hash_value);
    transparent_crc(p_1215->g_199.y, "p_1215->g_199.y", print_hash_value);
    transparent_crc(p_1215->g_199.z, "p_1215->g_199.z", print_hash_value);
    transparent_crc(p_1215->g_199.w, "p_1215->g_199.w", print_hash_value);
    transparent_crc(p_1215->g_201.x, "p_1215->g_201.x", print_hash_value);
    transparent_crc(p_1215->g_201.y, "p_1215->g_201.y", print_hash_value);
    transparent_crc(p_1215->g_201.z, "p_1215->g_201.z", print_hash_value);
    transparent_crc(p_1215->g_201.w, "p_1215->g_201.w", print_hash_value);
    transparent_crc(p_1215->g_209.x, "p_1215->g_209.x", print_hash_value);
    transparent_crc(p_1215->g_209.y, "p_1215->g_209.y", print_hash_value);
    transparent_crc(p_1215->g_214.x, "p_1215->g_214.x", print_hash_value);
    transparent_crc(p_1215->g_214.y, "p_1215->g_214.y", print_hash_value);
    transparent_crc(p_1215->g_214.z, "p_1215->g_214.z", print_hash_value);
    transparent_crc(p_1215->g_214.w, "p_1215->g_214.w", print_hash_value);
    transparent_crc(p_1215->g_215.x, "p_1215->g_215.x", print_hash_value);
    transparent_crc(p_1215->g_215.y, "p_1215->g_215.y", print_hash_value);
    transparent_crc(p_1215->g_225, "p_1215->g_225", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1215->g_228[i], "p_1215->g_228[i]", print_hash_value);

    }
    transparent_crc(p_1215->g_236.x, "p_1215->g_236.x", print_hash_value);
    transparent_crc(p_1215->g_236.y, "p_1215->g_236.y", print_hash_value);
    transparent_crc(p_1215->g_245.s0, "p_1215->g_245.s0", print_hash_value);
    transparent_crc(p_1215->g_245.s1, "p_1215->g_245.s1", print_hash_value);
    transparent_crc(p_1215->g_245.s2, "p_1215->g_245.s2", print_hash_value);
    transparent_crc(p_1215->g_245.s3, "p_1215->g_245.s3", print_hash_value);
    transparent_crc(p_1215->g_245.s4, "p_1215->g_245.s4", print_hash_value);
    transparent_crc(p_1215->g_245.s5, "p_1215->g_245.s5", print_hash_value);
    transparent_crc(p_1215->g_245.s6, "p_1215->g_245.s6", print_hash_value);
    transparent_crc(p_1215->g_245.s7, "p_1215->g_245.s7", print_hash_value);
    transparent_crc(p_1215->g_245.s8, "p_1215->g_245.s8", print_hash_value);
    transparent_crc(p_1215->g_245.s9, "p_1215->g_245.s9", print_hash_value);
    transparent_crc(p_1215->g_245.sa, "p_1215->g_245.sa", print_hash_value);
    transparent_crc(p_1215->g_245.sb, "p_1215->g_245.sb", print_hash_value);
    transparent_crc(p_1215->g_245.sc, "p_1215->g_245.sc", print_hash_value);
    transparent_crc(p_1215->g_245.sd, "p_1215->g_245.sd", print_hash_value);
    transparent_crc(p_1215->g_245.se, "p_1215->g_245.se", print_hash_value);
    transparent_crc(p_1215->g_245.sf, "p_1215->g_245.sf", print_hash_value);
    transparent_crc(p_1215->g_246.s0, "p_1215->g_246.s0", print_hash_value);
    transparent_crc(p_1215->g_246.s1, "p_1215->g_246.s1", print_hash_value);
    transparent_crc(p_1215->g_246.s2, "p_1215->g_246.s2", print_hash_value);
    transparent_crc(p_1215->g_246.s3, "p_1215->g_246.s3", print_hash_value);
    transparent_crc(p_1215->g_246.s4, "p_1215->g_246.s4", print_hash_value);
    transparent_crc(p_1215->g_246.s5, "p_1215->g_246.s5", print_hash_value);
    transparent_crc(p_1215->g_246.s6, "p_1215->g_246.s6", print_hash_value);
    transparent_crc(p_1215->g_246.s7, "p_1215->g_246.s7", print_hash_value);
    transparent_crc(p_1215->g_254, "p_1215->g_254", print_hash_value);
    transparent_crc(p_1215->g_255, "p_1215->g_255", print_hash_value);
    transparent_crc(p_1215->g_294.s0, "p_1215->g_294.s0", print_hash_value);
    transparent_crc(p_1215->g_294.s1, "p_1215->g_294.s1", print_hash_value);
    transparent_crc(p_1215->g_294.s2, "p_1215->g_294.s2", print_hash_value);
    transparent_crc(p_1215->g_294.s3, "p_1215->g_294.s3", print_hash_value);
    transparent_crc(p_1215->g_294.s4, "p_1215->g_294.s4", print_hash_value);
    transparent_crc(p_1215->g_294.s5, "p_1215->g_294.s5", print_hash_value);
    transparent_crc(p_1215->g_294.s6, "p_1215->g_294.s6", print_hash_value);
    transparent_crc(p_1215->g_294.s7, "p_1215->g_294.s7", print_hash_value);
    transparent_crc(p_1215->g_294.s8, "p_1215->g_294.s8", print_hash_value);
    transparent_crc(p_1215->g_294.s9, "p_1215->g_294.s9", print_hash_value);
    transparent_crc(p_1215->g_294.sa, "p_1215->g_294.sa", print_hash_value);
    transparent_crc(p_1215->g_294.sb, "p_1215->g_294.sb", print_hash_value);
    transparent_crc(p_1215->g_294.sc, "p_1215->g_294.sc", print_hash_value);
    transparent_crc(p_1215->g_294.sd, "p_1215->g_294.sd", print_hash_value);
    transparent_crc(p_1215->g_294.se, "p_1215->g_294.se", print_hash_value);
    transparent_crc(p_1215->g_294.sf, "p_1215->g_294.sf", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1215->g_295[i][j], "p_1215->g_295[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1215->g_339.x, "p_1215->g_339.x", print_hash_value);
    transparent_crc(p_1215->g_339.y, "p_1215->g_339.y", print_hash_value);
    transparent_crc(p_1215->g_381.s0, "p_1215->g_381.s0", print_hash_value);
    transparent_crc(p_1215->g_381.s1, "p_1215->g_381.s1", print_hash_value);
    transparent_crc(p_1215->g_381.s2, "p_1215->g_381.s2", print_hash_value);
    transparent_crc(p_1215->g_381.s3, "p_1215->g_381.s3", print_hash_value);
    transparent_crc(p_1215->g_381.s4, "p_1215->g_381.s4", print_hash_value);
    transparent_crc(p_1215->g_381.s5, "p_1215->g_381.s5", print_hash_value);
    transparent_crc(p_1215->g_381.s6, "p_1215->g_381.s6", print_hash_value);
    transparent_crc(p_1215->g_381.s7, "p_1215->g_381.s7", print_hash_value);
    transparent_crc(p_1215->g_381.s8, "p_1215->g_381.s8", print_hash_value);
    transparent_crc(p_1215->g_381.s9, "p_1215->g_381.s9", print_hash_value);
    transparent_crc(p_1215->g_381.sa, "p_1215->g_381.sa", print_hash_value);
    transparent_crc(p_1215->g_381.sb, "p_1215->g_381.sb", print_hash_value);
    transparent_crc(p_1215->g_381.sc, "p_1215->g_381.sc", print_hash_value);
    transparent_crc(p_1215->g_381.sd, "p_1215->g_381.sd", print_hash_value);
    transparent_crc(p_1215->g_381.se, "p_1215->g_381.se", print_hash_value);
    transparent_crc(p_1215->g_381.sf, "p_1215->g_381.sf", print_hash_value);
    transparent_crc(p_1215->g_391.s0, "p_1215->g_391.s0", print_hash_value);
    transparent_crc(p_1215->g_391.s1, "p_1215->g_391.s1", print_hash_value);
    transparent_crc(p_1215->g_391.s2, "p_1215->g_391.s2", print_hash_value);
    transparent_crc(p_1215->g_391.s3, "p_1215->g_391.s3", print_hash_value);
    transparent_crc(p_1215->g_391.s4, "p_1215->g_391.s4", print_hash_value);
    transparent_crc(p_1215->g_391.s5, "p_1215->g_391.s5", print_hash_value);
    transparent_crc(p_1215->g_391.s6, "p_1215->g_391.s6", print_hash_value);
    transparent_crc(p_1215->g_391.s7, "p_1215->g_391.s7", print_hash_value);
    transparent_crc(p_1215->g_397.s0, "p_1215->g_397.s0", print_hash_value);
    transparent_crc(p_1215->g_397.s1, "p_1215->g_397.s1", print_hash_value);
    transparent_crc(p_1215->g_397.s2, "p_1215->g_397.s2", print_hash_value);
    transparent_crc(p_1215->g_397.s3, "p_1215->g_397.s3", print_hash_value);
    transparent_crc(p_1215->g_397.s4, "p_1215->g_397.s4", print_hash_value);
    transparent_crc(p_1215->g_397.s5, "p_1215->g_397.s5", print_hash_value);
    transparent_crc(p_1215->g_397.s6, "p_1215->g_397.s6", print_hash_value);
    transparent_crc(p_1215->g_397.s7, "p_1215->g_397.s7", print_hash_value);
    transparent_crc(p_1215->g_397.s8, "p_1215->g_397.s8", print_hash_value);
    transparent_crc(p_1215->g_397.s9, "p_1215->g_397.s9", print_hash_value);
    transparent_crc(p_1215->g_397.sa, "p_1215->g_397.sa", print_hash_value);
    transparent_crc(p_1215->g_397.sb, "p_1215->g_397.sb", print_hash_value);
    transparent_crc(p_1215->g_397.sc, "p_1215->g_397.sc", print_hash_value);
    transparent_crc(p_1215->g_397.sd, "p_1215->g_397.sd", print_hash_value);
    transparent_crc(p_1215->g_397.se, "p_1215->g_397.se", print_hash_value);
    transparent_crc(p_1215->g_397.sf, "p_1215->g_397.sf", print_hash_value);
    transparent_crc(p_1215->g_434, "p_1215->g_434", print_hash_value);
    transparent_crc(p_1215->g_439, "p_1215->g_439", print_hash_value);
    transparent_crc(p_1215->g_448.s0, "p_1215->g_448.s0", print_hash_value);
    transparent_crc(p_1215->g_448.s1, "p_1215->g_448.s1", print_hash_value);
    transparent_crc(p_1215->g_448.s2, "p_1215->g_448.s2", print_hash_value);
    transparent_crc(p_1215->g_448.s3, "p_1215->g_448.s3", print_hash_value);
    transparent_crc(p_1215->g_448.s4, "p_1215->g_448.s4", print_hash_value);
    transparent_crc(p_1215->g_448.s5, "p_1215->g_448.s5", print_hash_value);
    transparent_crc(p_1215->g_448.s6, "p_1215->g_448.s6", print_hash_value);
    transparent_crc(p_1215->g_448.s7, "p_1215->g_448.s7", print_hash_value);
    transparent_crc(p_1215->g_449.x, "p_1215->g_449.x", print_hash_value);
    transparent_crc(p_1215->g_449.y, "p_1215->g_449.y", print_hash_value);
    transparent_crc(p_1215->g_449.z, "p_1215->g_449.z", print_hash_value);
    transparent_crc(p_1215->g_449.w, "p_1215->g_449.w", print_hash_value);
    transparent_crc(p_1215->g_491.s0, "p_1215->g_491.s0", print_hash_value);
    transparent_crc(p_1215->g_491.s1, "p_1215->g_491.s1", print_hash_value);
    transparent_crc(p_1215->g_491.s2, "p_1215->g_491.s2", print_hash_value);
    transparent_crc(p_1215->g_491.s3, "p_1215->g_491.s3", print_hash_value);
    transparent_crc(p_1215->g_491.s4, "p_1215->g_491.s4", print_hash_value);
    transparent_crc(p_1215->g_491.s5, "p_1215->g_491.s5", print_hash_value);
    transparent_crc(p_1215->g_491.s6, "p_1215->g_491.s6", print_hash_value);
    transparent_crc(p_1215->g_491.s7, "p_1215->g_491.s7", print_hash_value);
    transparent_crc(p_1215->g_491.s8, "p_1215->g_491.s8", print_hash_value);
    transparent_crc(p_1215->g_491.s9, "p_1215->g_491.s9", print_hash_value);
    transparent_crc(p_1215->g_491.sa, "p_1215->g_491.sa", print_hash_value);
    transparent_crc(p_1215->g_491.sb, "p_1215->g_491.sb", print_hash_value);
    transparent_crc(p_1215->g_491.sc, "p_1215->g_491.sc", print_hash_value);
    transparent_crc(p_1215->g_491.sd, "p_1215->g_491.sd", print_hash_value);
    transparent_crc(p_1215->g_491.se, "p_1215->g_491.se", print_hash_value);
    transparent_crc(p_1215->g_491.sf, "p_1215->g_491.sf", print_hash_value);
    transparent_crc(p_1215->g_500.x, "p_1215->g_500.x", print_hash_value);
    transparent_crc(p_1215->g_500.y, "p_1215->g_500.y", print_hash_value);
    transparent_crc(p_1215->g_500.z, "p_1215->g_500.z", print_hash_value);
    transparent_crc(p_1215->g_500.w, "p_1215->g_500.w", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1215->g_507[i][j], "p_1215->g_507[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1215->g_519[i], "p_1215->g_519[i]", print_hash_value);

    }
    transparent_crc(p_1215->g_531.x, "p_1215->g_531.x", print_hash_value);
    transparent_crc(p_1215->g_531.y, "p_1215->g_531.y", print_hash_value);
    transparent_crc(p_1215->g_548.x, "p_1215->g_548.x", print_hash_value);
    transparent_crc(p_1215->g_548.y, "p_1215->g_548.y", print_hash_value);
    transparent_crc(p_1215->g_554.x, "p_1215->g_554.x", print_hash_value);
    transparent_crc(p_1215->g_554.y, "p_1215->g_554.y", print_hash_value);
    transparent_crc(p_1215->g_561.s0, "p_1215->g_561.s0", print_hash_value);
    transparent_crc(p_1215->g_561.s1, "p_1215->g_561.s1", print_hash_value);
    transparent_crc(p_1215->g_561.s2, "p_1215->g_561.s2", print_hash_value);
    transparent_crc(p_1215->g_561.s3, "p_1215->g_561.s3", print_hash_value);
    transparent_crc(p_1215->g_561.s4, "p_1215->g_561.s4", print_hash_value);
    transparent_crc(p_1215->g_561.s5, "p_1215->g_561.s5", print_hash_value);
    transparent_crc(p_1215->g_561.s6, "p_1215->g_561.s6", print_hash_value);
    transparent_crc(p_1215->g_561.s7, "p_1215->g_561.s7", print_hash_value);
    transparent_crc(p_1215->g_561.s8, "p_1215->g_561.s8", print_hash_value);
    transparent_crc(p_1215->g_561.s9, "p_1215->g_561.s9", print_hash_value);
    transparent_crc(p_1215->g_561.sa, "p_1215->g_561.sa", print_hash_value);
    transparent_crc(p_1215->g_561.sb, "p_1215->g_561.sb", print_hash_value);
    transparent_crc(p_1215->g_561.sc, "p_1215->g_561.sc", print_hash_value);
    transparent_crc(p_1215->g_561.sd, "p_1215->g_561.sd", print_hash_value);
    transparent_crc(p_1215->g_561.se, "p_1215->g_561.se", print_hash_value);
    transparent_crc(p_1215->g_561.sf, "p_1215->g_561.sf", print_hash_value);
    transparent_crc(p_1215->g_562.x, "p_1215->g_562.x", print_hash_value);
    transparent_crc(p_1215->g_562.y, "p_1215->g_562.y", print_hash_value);
    transparent_crc(p_1215->g_586.s0, "p_1215->g_586.s0", print_hash_value);
    transparent_crc(p_1215->g_586.s1, "p_1215->g_586.s1", print_hash_value);
    transparent_crc(p_1215->g_586.s2, "p_1215->g_586.s2", print_hash_value);
    transparent_crc(p_1215->g_586.s3, "p_1215->g_586.s3", print_hash_value);
    transparent_crc(p_1215->g_586.s4, "p_1215->g_586.s4", print_hash_value);
    transparent_crc(p_1215->g_586.s5, "p_1215->g_586.s5", print_hash_value);
    transparent_crc(p_1215->g_586.s6, "p_1215->g_586.s6", print_hash_value);
    transparent_crc(p_1215->g_586.s7, "p_1215->g_586.s7", print_hash_value);
    transparent_crc(p_1215->g_586.s8, "p_1215->g_586.s8", print_hash_value);
    transparent_crc(p_1215->g_586.s9, "p_1215->g_586.s9", print_hash_value);
    transparent_crc(p_1215->g_586.sa, "p_1215->g_586.sa", print_hash_value);
    transparent_crc(p_1215->g_586.sb, "p_1215->g_586.sb", print_hash_value);
    transparent_crc(p_1215->g_586.sc, "p_1215->g_586.sc", print_hash_value);
    transparent_crc(p_1215->g_586.sd, "p_1215->g_586.sd", print_hash_value);
    transparent_crc(p_1215->g_586.se, "p_1215->g_586.se", print_hash_value);
    transparent_crc(p_1215->g_586.sf, "p_1215->g_586.sf", print_hash_value);
    transparent_crc(p_1215->g_616.s0, "p_1215->g_616.s0", print_hash_value);
    transparent_crc(p_1215->g_616.s1, "p_1215->g_616.s1", print_hash_value);
    transparent_crc(p_1215->g_616.s2, "p_1215->g_616.s2", print_hash_value);
    transparent_crc(p_1215->g_616.s3, "p_1215->g_616.s3", print_hash_value);
    transparent_crc(p_1215->g_616.s4, "p_1215->g_616.s4", print_hash_value);
    transparent_crc(p_1215->g_616.s5, "p_1215->g_616.s5", print_hash_value);
    transparent_crc(p_1215->g_616.s6, "p_1215->g_616.s6", print_hash_value);
    transparent_crc(p_1215->g_616.s7, "p_1215->g_616.s7", print_hash_value);
    transparent_crc(p_1215->g_621.x, "p_1215->g_621.x", print_hash_value);
    transparent_crc(p_1215->g_621.y, "p_1215->g_621.y", print_hash_value);
    transparent_crc(p_1215->g_621.z, "p_1215->g_621.z", print_hash_value);
    transparent_crc(p_1215->g_621.w, "p_1215->g_621.w", print_hash_value);
    transparent_crc(p_1215->g_640.s0, "p_1215->g_640.s0", print_hash_value);
    transparent_crc(p_1215->g_640.s1, "p_1215->g_640.s1", print_hash_value);
    transparent_crc(p_1215->g_640.s2, "p_1215->g_640.s2", print_hash_value);
    transparent_crc(p_1215->g_640.s3, "p_1215->g_640.s3", print_hash_value);
    transparent_crc(p_1215->g_640.s4, "p_1215->g_640.s4", print_hash_value);
    transparent_crc(p_1215->g_640.s5, "p_1215->g_640.s5", print_hash_value);
    transparent_crc(p_1215->g_640.s6, "p_1215->g_640.s6", print_hash_value);
    transparent_crc(p_1215->g_640.s7, "p_1215->g_640.s7", print_hash_value);
    transparent_crc(p_1215->g_641.x, "p_1215->g_641.x", print_hash_value);
    transparent_crc(p_1215->g_641.y, "p_1215->g_641.y", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1215->g_659[i][j], "p_1215->g_659[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1215->g_669.x, "p_1215->g_669.x", print_hash_value);
    transparent_crc(p_1215->g_669.y, "p_1215->g_669.y", print_hash_value);
    transparent_crc(p_1215->g_669.z, "p_1215->g_669.z", print_hash_value);
    transparent_crc(p_1215->g_669.w, "p_1215->g_669.w", print_hash_value);
    transparent_crc(p_1215->g_670.s0, "p_1215->g_670.s0", print_hash_value);
    transparent_crc(p_1215->g_670.s1, "p_1215->g_670.s1", print_hash_value);
    transparent_crc(p_1215->g_670.s2, "p_1215->g_670.s2", print_hash_value);
    transparent_crc(p_1215->g_670.s3, "p_1215->g_670.s3", print_hash_value);
    transparent_crc(p_1215->g_670.s4, "p_1215->g_670.s4", print_hash_value);
    transparent_crc(p_1215->g_670.s5, "p_1215->g_670.s5", print_hash_value);
    transparent_crc(p_1215->g_670.s6, "p_1215->g_670.s6", print_hash_value);
    transparent_crc(p_1215->g_670.s7, "p_1215->g_670.s7", print_hash_value);
    transparent_crc(p_1215->g_677.s0, "p_1215->g_677.s0", print_hash_value);
    transparent_crc(p_1215->g_677.s1, "p_1215->g_677.s1", print_hash_value);
    transparent_crc(p_1215->g_677.s2, "p_1215->g_677.s2", print_hash_value);
    transparent_crc(p_1215->g_677.s3, "p_1215->g_677.s3", print_hash_value);
    transparent_crc(p_1215->g_677.s4, "p_1215->g_677.s4", print_hash_value);
    transparent_crc(p_1215->g_677.s5, "p_1215->g_677.s5", print_hash_value);
    transparent_crc(p_1215->g_677.s6, "p_1215->g_677.s6", print_hash_value);
    transparent_crc(p_1215->g_677.s7, "p_1215->g_677.s7", print_hash_value);
    transparent_crc(p_1215->g_678.s0, "p_1215->g_678.s0", print_hash_value);
    transparent_crc(p_1215->g_678.s1, "p_1215->g_678.s1", print_hash_value);
    transparent_crc(p_1215->g_678.s2, "p_1215->g_678.s2", print_hash_value);
    transparent_crc(p_1215->g_678.s3, "p_1215->g_678.s3", print_hash_value);
    transparent_crc(p_1215->g_678.s4, "p_1215->g_678.s4", print_hash_value);
    transparent_crc(p_1215->g_678.s5, "p_1215->g_678.s5", print_hash_value);
    transparent_crc(p_1215->g_678.s6, "p_1215->g_678.s6", print_hash_value);
    transparent_crc(p_1215->g_678.s7, "p_1215->g_678.s7", print_hash_value);
    transparent_crc(p_1215->g_691.s0, "p_1215->g_691.s0", print_hash_value);
    transparent_crc(p_1215->g_691.s1, "p_1215->g_691.s1", print_hash_value);
    transparent_crc(p_1215->g_691.s2, "p_1215->g_691.s2", print_hash_value);
    transparent_crc(p_1215->g_691.s3, "p_1215->g_691.s3", print_hash_value);
    transparent_crc(p_1215->g_691.s4, "p_1215->g_691.s4", print_hash_value);
    transparent_crc(p_1215->g_691.s5, "p_1215->g_691.s5", print_hash_value);
    transparent_crc(p_1215->g_691.s6, "p_1215->g_691.s6", print_hash_value);
    transparent_crc(p_1215->g_691.s7, "p_1215->g_691.s7", print_hash_value);
    transparent_crc(p_1215->g_693.x, "p_1215->g_693.x", print_hash_value);
    transparent_crc(p_1215->g_693.y, "p_1215->g_693.y", print_hash_value);
    transparent_crc(p_1215->g_693.z, "p_1215->g_693.z", print_hash_value);
    transparent_crc(p_1215->g_693.w, "p_1215->g_693.w", print_hash_value);
    transparent_crc(p_1215->g_718, "p_1215->g_718", print_hash_value);
    transparent_crc(p_1215->g_781.x, "p_1215->g_781.x", print_hash_value);
    transparent_crc(p_1215->g_781.y, "p_1215->g_781.y", print_hash_value);
    transparent_crc(p_1215->g_781.z, "p_1215->g_781.z", print_hash_value);
    transparent_crc(p_1215->g_781.w, "p_1215->g_781.w", print_hash_value);
    transparent_crc(p_1215->g_902.f0, "p_1215->g_902.f0", print_hash_value);
    transparent_crc(p_1215->g_911.s0, "p_1215->g_911.s0", print_hash_value);
    transparent_crc(p_1215->g_911.s1, "p_1215->g_911.s1", print_hash_value);
    transparent_crc(p_1215->g_911.s2, "p_1215->g_911.s2", print_hash_value);
    transparent_crc(p_1215->g_911.s3, "p_1215->g_911.s3", print_hash_value);
    transparent_crc(p_1215->g_911.s4, "p_1215->g_911.s4", print_hash_value);
    transparent_crc(p_1215->g_911.s5, "p_1215->g_911.s5", print_hash_value);
    transparent_crc(p_1215->g_911.s6, "p_1215->g_911.s6", print_hash_value);
    transparent_crc(p_1215->g_911.s7, "p_1215->g_911.s7", print_hash_value);
    transparent_crc(p_1215->g_945.s0, "p_1215->g_945.s0", print_hash_value);
    transparent_crc(p_1215->g_945.s1, "p_1215->g_945.s1", print_hash_value);
    transparent_crc(p_1215->g_945.s2, "p_1215->g_945.s2", print_hash_value);
    transparent_crc(p_1215->g_945.s3, "p_1215->g_945.s3", print_hash_value);
    transparent_crc(p_1215->g_945.s4, "p_1215->g_945.s4", print_hash_value);
    transparent_crc(p_1215->g_945.s5, "p_1215->g_945.s5", print_hash_value);
    transparent_crc(p_1215->g_945.s6, "p_1215->g_945.s6", print_hash_value);
    transparent_crc(p_1215->g_945.s7, "p_1215->g_945.s7", print_hash_value);
    transparent_crc(p_1215->g_945.s8, "p_1215->g_945.s8", print_hash_value);
    transparent_crc(p_1215->g_945.s9, "p_1215->g_945.s9", print_hash_value);
    transparent_crc(p_1215->g_945.sa, "p_1215->g_945.sa", print_hash_value);
    transparent_crc(p_1215->g_945.sb, "p_1215->g_945.sb", print_hash_value);
    transparent_crc(p_1215->g_945.sc, "p_1215->g_945.sc", print_hash_value);
    transparent_crc(p_1215->g_945.sd, "p_1215->g_945.sd", print_hash_value);
    transparent_crc(p_1215->g_945.se, "p_1215->g_945.se", print_hash_value);
    transparent_crc(p_1215->g_945.sf, "p_1215->g_945.sf", print_hash_value);
    transparent_crc(p_1215->g_960.s0, "p_1215->g_960.s0", print_hash_value);
    transparent_crc(p_1215->g_960.s1, "p_1215->g_960.s1", print_hash_value);
    transparent_crc(p_1215->g_960.s2, "p_1215->g_960.s2", print_hash_value);
    transparent_crc(p_1215->g_960.s3, "p_1215->g_960.s3", print_hash_value);
    transparent_crc(p_1215->g_960.s4, "p_1215->g_960.s4", print_hash_value);
    transparent_crc(p_1215->g_960.s5, "p_1215->g_960.s5", print_hash_value);
    transparent_crc(p_1215->g_960.s6, "p_1215->g_960.s6", print_hash_value);
    transparent_crc(p_1215->g_960.s7, "p_1215->g_960.s7", print_hash_value);
    transparent_crc(p_1215->g_970.x, "p_1215->g_970.x", print_hash_value);
    transparent_crc(p_1215->g_970.y, "p_1215->g_970.y", print_hash_value);
    transparent_crc(p_1215->g_970.z, "p_1215->g_970.z", print_hash_value);
    transparent_crc(p_1215->g_970.w, "p_1215->g_970.w", print_hash_value);
    transparent_crc(p_1215->g_997.x, "p_1215->g_997.x", print_hash_value);
    transparent_crc(p_1215->g_997.y, "p_1215->g_997.y", print_hash_value);
    transparent_crc(p_1215->g_1010.s0, "p_1215->g_1010.s0", print_hash_value);
    transparent_crc(p_1215->g_1010.s1, "p_1215->g_1010.s1", print_hash_value);
    transparent_crc(p_1215->g_1010.s2, "p_1215->g_1010.s2", print_hash_value);
    transparent_crc(p_1215->g_1010.s3, "p_1215->g_1010.s3", print_hash_value);
    transparent_crc(p_1215->g_1010.s4, "p_1215->g_1010.s4", print_hash_value);
    transparent_crc(p_1215->g_1010.s5, "p_1215->g_1010.s5", print_hash_value);
    transparent_crc(p_1215->g_1010.s6, "p_1215->g_1010.s6", print_hash_value);
    transparent_crc(p_1215->g_1010.s7, "p_1215->g_1010.s7", print_hash_value);
    transparent_crc(p_1215->g_1010.s8, "p_1215->g_1010.s8", print_hash_value);
    transparent_crc(p_1215->g_1010.s9, "p_1215->g_1010.s9", print_hash_value);
    transparent_crc(p_1215->g_1010.sa, "p_1215->g_1010.sa", print_hash_value);
    transparent_crc(p_1215->g_1010.sb, "p_1215->g_1010.sb", print_hash_value);
    transparent_crc(p_1215->g_1010.sc, "p_1215->g_1010.sc", print_hash_value);
    transparent_crc(p_1215->g_1010.sd, "p_1215->g_1010.sd", print_hash_value);
    transparent_crc(p_1215->g_1010.se, "p_1215->g_1010.se", print_hash_value);
    transparent_crc(p_1215->g_1010.sf, "p_1215->g_1010.sf", print_hash_value);
    transparent_crc(p_1215->g_1039.x, "p_1215->g_1039.x", print_hash_value);
    transparent_crc(p_1215->g_1039.y, "p_1215->g_1039.y", print_hash_value);
    transparent_crc(p_1215->g_1040.s0, "p_1215->g_1040.s0", print_hash_value);
    transparent_crc(p_1215->g_1040.s1, "p_1215->g_1040.s1", print_hash_value);
    transparent_crc(p_1215->g_1040.s2, "p_1215->g_1040.s2", print_hash_value);
    transparent_crc(p_1215->g_1040.s3, "p_1215->g_1040.s3", print_hash_value);
    transparent_crc(p_1215->g_1040.s4, "p_1215->g_1040.s4", print_hash_value);
    transparent_crc(p_1215->g_1040.s5, "p_1215->g_1040.s5", print_hash_value);
    transparent_crc(p_1215->g_1040.s6, "p_1215->g_1040.s6", print_hash_value);
    transparent_crc(p_1215->g_1040.s7, "p_1215->g_1040.s7", print_hash_value);
    transparent_crc(p_1215->g_1040.s8, "p_1215->g_1040.s8", print_hash_value);
    transparent_crc(p_1215->g_1040.s9, "p_1215->g_1040.s9", print_hash_value);
    transparent_crc(p_1215->g_1040.sa, "p_1215->g_1040.sa", print_hash_value);
    transparent_crc(p_1215->g_1040.sb, "p_1215->g_1040.sb", print_hash_value);
    transparent_crc(p_1215->g_1040.sc, "p_1215->g_1040.sc", print_hash_value);
    transparent_crc(p_1215->g_1040.sd, "p_1215->g_1040.sd", print_hash_value);
    transparent_crc(p_1215->g_1040.se, "p_1215->g_1040.se", print_hash_value);
    transparent_crc(p_1215->g_1040.sf, "p_1215->g_1040.sf", print_hash_value);
    transparent_crc(p_1215->g_1043.s0, "p_1215->g_1043.s0", print_hash_value);
    transparent_crc(p_1215->g_1043.s1, "p_1215->g_1043.s1", print_hash_value);
    transparent_crc(p_1215->g_1043.s2, "p_1215->g_1043.s2", print_hash_value);
    transparent_crc(p_1215->g_1043.s3, "p_1215->g_1043.s3", print_hash_value);
    transparent_crc(p_1215->g_1043.s4, "p_1215->g_1043.s4", print_hash_value);
    transparent_crc(p_1215->g_1043.s5, "p_1215->g_1043.s5", print_hash_value);
    transparent_crc(p_1215->g_1043.s6, "p_1215->g_1043.s6", print_hash_value);
    transparent_crc(p_1215->g_1043.s7, "p_1215->g_1043.s7", print_hash_value);
    transparent_crc(p_1215->g_1051.x, "p_1215->g_1051.x", print_hash_value);
    transparent_crc(p_1215->g_1051.y, "p_1215->g_1051.y", print_hash_value);
    transparent_crc(p_1215->g_1072.x, "p_1215->g_1072.x", print_hash_value);
    transparent_crc(p_1215->g_1072.y, "p_1215->g_1072.y", print_hash_value);
    transparent_crc(p_1215->g_1078, "p_1215->g_1078", print_hash_value);
    transparent_crc(p_1215->g_1089.x, "p_1215->g_1089.x", print_hash_value);
    transparent_crc(p_1215->g_1089.y, "p_1215->g_1089.y", print_hash_value);
    transparent_crc(p_1215->g_1089.z, "p_1215->g_1089.z", print_hash_value);
    transparent_crc(p_1215->g_1089.w, "p_1215->g_1089.w", print_hash_value);
    transparent_crc(p_1215->g_1091.x, "p_1215->g_1091.x", print_hash_value);
    transparent_crc(p_1215->g_1091.y, "p_1215->g_1091.y", print_hash_value);
    transparent_crc(p_1215->g_1091.z, "p_1215->g_1091.z", print_hash_value);
    transparent_crc(p_1215->g_1091.w, "p_1215->g_1091.w", print_hash_value);
    transparent_crc(p_1215->g_1093.s0, "p_1215->g_1093.s0", print_hash_value);
    transparent_crc(p_1215->g_1093.s1, "p_1215->g_1093.s1", print_hash_value);
    transparent_crc(p_1215->g_1093.s2, "p_1215->g_1093.s2", print_hash_value);
    transparent_crc(p_1215->g_1093.s3, "p_1215->g_1093.s3", print_hash_value);
    transparent_crc(p_1215->g_1093.s4, "p_1215->g_1093.s4", print_hash_value);
    transparent_crc(p_1215->g_1093.s5, "p_1215->g_1093.s5", print_hash_value);
    transparent_crc(p_1215->g_1093.s6, "p_1215->g_1093.s6", print_hash_value);
    transparent_crc(p_1215->g_1093.s7, "p_1215->g_1093.s7", print_hash_value);
    transparent_crc(p_1215->g_1093.s8, "p_1215->g_1093.s8", print_hash_value);
    transparent_crc(p_1215->g_1093.s9, "p_1215->g_1093.s9", print_hash_value);
    transparent_crc(p_1215->g_1093.sa, "p_1215->g_1093.sa", print_hash_value);
    transparent_crc(p_1215->g_1093.sb, "p_1215->g_1093.sb", print_hash_value);
    transparent_crc(p_1215->g_1093.sc, "p_1215->g_1093.sc", print_hash_value);
    transparent_crc(p_1215->g_1093.sd, "p_1215->g_1093.sd", print_hash_value);
    transparent_crc(p_1215->g_1093.se, "p_1215->g_1093.se", print_hash_value);
    transparent_crc(p_1215->g_1093.sf, "p_1215->g_1093.sf", print_hash_value);
    transparent_crc(p_1215->g_1094.s0, "p_1215->g_1094.s0", print_hash_value);
    transparent_crc(p_1215->g_1094.s1, "p_1215->g_1094.s1", print_hash_value);
    transparent_crc(p_1215->g_1094.s2, "p_1215->g_1094.s2", print_hash_value);
    transparent_crc(p_1215->g_1094.s3, "p_1215->g_1094.s3", print_hash_value);
    transparent_crc(p_1215->g_1094.s4, "p_1215->g_1094.s4", print_hash_value);
    transparent_crc(p_1215->g_1094.s5, "p_1215->g_1094.s5", print_hash_value);
    transparent_crc(p_1215->g_1094.s6, "p_1215->g_1094.s6", print_hash_value);
    transparent_crc(p_1215->g_1094.s7, "p_1215->g_1094.s7", print_hash_value);
    transparent_crc(p_1215->g_1094.s8, "p_1215->g_1094.s8", print_hash_value);
    transparent_crc(p_1215->g_1094.s9, "p_1215->g_1094.s9", print_hash_value);
    transparent_crc(p_1215->g_1094.sa, "p_1215->g_1094.sa", print_hash_value);
    transparent_crc(p_1215->g_1094.sb, "p_1215->g_1094.sb", print_hash_value);
    transparent_crc(p_1215->g_1094.sc, "p_1215->g_1094.sc", print_hash_value);
    transparent_crc(p_1215->g_1094.sd, "p_1215->g_1094.sd", print_hash_value);
    transparent_crc(p_1215->g_1094.se, "p_1215->g_1094.se", print_hash_value);
    transparent_crc(p_1215->g_1094.sf, "p_1215->g_1094.sf", print_hash_value);
    transparent_crc(p_1215->g_1097.s0, "p_1215->g_1097.s0", print_hash_value);
    transparent_crc(p_1215->g_1097.s1, "p_1215->g_1097.s1", print_hash_value);
    transparent_crc(p_1215->g_1097.s2, "p_1215->g_1097.s2", print_hash_value);
    transparent_crc(p_1215->g_1097.s3, "p_1215->g_1097.s3", print_hash_value);
    transparent_crc(p_1215->g_1097.s4, "p_1215->g_1097.s4", print_hash_value);
    transparent_crc(p_1215->g_1097.s5, "p_1215->g_1097.s5", print_hash_value);
    transparent_crc(p_1215->g_1097.s6, "p_1215->g_1097.s6", print_hash_value);
    transparent_crc(p_1215->g_1097.s7, "p_1215->g_1097.s7", print_hash_value);
    transparent_crc(p_1215->g_1099.x, "p_1215->g_1099.x", print_hash_value);
    transparent_crc(p_1215->g_1099.y, "p_1215->g_1099.y", print_hash_value);
    transparent_crc(p_1215->g_1099.z, "p_1215->g_1099.z", print_hash_value);
    transparent_crc(p_1215->g_1099.w, "p_1215->g_1099.w", print_hash_value);
    transparent_crc(p_1215->g_1116.x, "p_1215->g_1116.x", print_hash_value);
    transparent_crc(p_1215->g_1116.y, "p_1215->g_1116.y", print_hash_value);
    transparent_crc(p_1215->g_1116.z, "p_1215->g_1116.z", print_hash_value);
    transparent_crc(p_1215->g_1116.w, "p_1215->g_1116.w", print_hash_value);
    transparent_crc(p_1215->g_1123.s0, "p_1215->g_1123.s0", print_hash_value);
    transparent_crc(p_1215->g_1123.s1, "p_1215->g_1123.s1", print_hash_value);
    transparent_crc(p_1215->g_1123.s2, "p_1215->g_1123.s2", print_hash_value);
    transparent_crc(p_1215->g_1123.s3, "p_1215->g_1123.s3", print_hash_value);
    transparent_crc(p_1215->g_1123.s4, "p_1215->g_1123.s4", print_hash_value);
    transparent_crc(p_1215->g_1123.s5, "p_1215->g_1123.s5", print_hash_value);
    transparent_crc(p_1215->g_1123.s6, "p_1215->g_1123.s6", print_hash_value);
    transparent_crc(p_1215->g_1123.s7, "p_1215->g_1123.s7", print_hash_value);
    transparent_crc(p_1215->g_1123.s8, "p_1215->g_1123.s8", print_hash_value);
    transparent_crc(p_1215->g_1123.s9, "p_1215->g_1123.s9", print_hash_value);
    transparent_crc(p_1215->g_1123.sa, "p_1215->g_1123.sa", print_hash_value);
    transparent_crc(p_1215->g_1123.sb, "p_1215->g_1123.sb", print_hash_value);
    transparent_crc(p_1215->g_1123.sc, "p_1215->g_1123.sc", print_hash_value);
    transparent_crc(p_1215->g_1123.sd, "p_1215->g_1123.sd", print_hash_value);
    transparent_crc(p_1215->g_1123.se, "p_1215->g_1123.se", print_hash_value);
    transparent_crc(p_1215->g_1123.sf, "p_1215->g_1123.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
