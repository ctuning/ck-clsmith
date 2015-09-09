// ---fake_divergence -g 12,82,10 -l 12,1,2
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


// Seed: 74

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    uint16_t g_11;
    uint8_t g_76;
    uint8_t g_80[5];
    uint32_t g_81[3][10];
    volatile VECTOR(uint8_t, 2) g_84;
    uint64_t g_87;
    int32_t g_89[7][3];
    int32_t ** volatile g_93;
    int32_t *g_95;
    int32_t ** volatile g_94;
    int8_t g_106;
    volatile VECTOR(int32_t, 16) g_117;
    int32_t g_120;
    int16_t g_128;
    VECTOR(int32_t, 2) g_137;
    int16_t g_140;
    int32_t g_144;
    volatile VECTOR(int8_t, 8) g_149;
    volatile int8_t *g_148;
    volatile int8_t **g_147;
    volatile VECTOR(int32_t, 8) g_158;
    int32_t * volatile g_163[1][1][5];
    uint64_t * volatile *g_185;
    int64_t g_198;
    VECTOR(uint32_t, 16) g_204;
    uint16_t g_238;
    volatile VECTOR(uint32_t, 4) g_264;
    uint64_t g_290;
    int64_t *g_299;
    int64_t **g_298;
    int64_t **g_304;
    uint32_t g_318;
    int32_t ** volatile g_319;
    int64_t ***g_327;
    VECTOR(int32_t, 8) g_351;
    int64_t g_359;
    int32_t ** volatile g_360;
    volatile VECTOR(int16_t, 4) g_366;
    volatile int8_t *** volatile g_370;
    VECTOR(uint32_t, 8) g_403;
    VECTOR(int8_t, 8) g_404;
    volatile VECTOR(int16_t, 8) g_491;
    VECTOR(uint16_t, 8) g_492;
    int32_t ** volatile g_506;
    volatile int8_t g_531;
    int32_t ** volatile g_543;
    VECTOR(uint16_t, 8) g_550;
    uint32_t *g_559;
    uint32_t **g_558;
    uint32_t *** volatile g_557;
    int32_t ** volatile g_560;
    VECTOR(int32_t, 2) g_569;
    VECTOR(int32_t, 16) g_571;
    VECTOR(int32_t, 2) g_574;
    int8_t g_593[10];
    VECTOR(int16_t, 4) g_624;
    VECTOR(int16_t, 2) g_630;
    volatile VECTOR(int16_t, 4) g_631;
    volatile VECTOR(int16_t, 4) g_634;
    volatile VECTOR(int16_t, 16) g_641;
    int32_t **g_659;
    int32_t *** volatile g_658;
    VECTOR(int64_t, 8) g_684;
    VECTOR(int8_t, 4) g_685;
    volatile VECTOR(uint32_t, 8) g_718;
    volatile VECTOR(int8_t, 4) g_745;
    volatile VECTOR(int16_t, 4) g_749;
    int8_t g_757;
    volatile VECTOR(int32_t, 2) g_789;
    uint32_t * volatile *g_846;
    uint32_t * volatile * volatile * volatile g_845;
    int32_t g_857;
    uint8_t g_870;
    VECTOR(int32_t, 2) g_891;
    uint8_t g_921;
    int32_t *g_936;
    int32_t ** volatile g_935;
    VECTOR(uint16_t, 16) g_956;
    VECTOR(int16_t, 4) g_961;
    int32_t * volatile g_970;
    uint8_t *g_1055;
    uint8_t * volatile * volatile g_1054[7][7];
    int32_t * volatile g_1060;
    int32_t * volatile g_1062[5][1][7];
    int32_t ** volatile g_1064[4];
    int32_t *g_1106;
    VECTOR(int64_t, 2) g_1123;
    volatile VECTOR(int64_t, 16) g_1124;
    VECTOR(int64_t, 4) g_1127;
    volatile VECTOR(int64_t, 16) g_1136;
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
int64_t  func_1(struct S0 * p_1137);
int32_t * func_20(int64_t  p_21, int32_t  p_22, int64_t  p_23, int32_t  p_24, struct S0 * p_1137);
int32_t * func_25(int32_t  p_26, int32_t * p_27, int32_t * p_28, int32_t * p_29, struct S0 * p_1137);
uint8_t  func_34(int32_t  p_35, int16_t  p_36, int32_t * p_37, int32_t * p_38, int32_t  p_39, struct S0 * p_1137);
int16_t  func_41(int32_t * p_42, int32_t * p_43, uint32_t  p_44, int32_t * p_45, uint64_t  p_46, struct S0 * p_1137);
int32_t * func_47(int32_t * p_48, struct S0 * p_1137);
int32_t * func_49(int32_t * p_50, int32_t * p_51, int32_t * p_52, int32_t * p_53, struct S0 * p_1137);
int32_t * func_54(int32_t  p_55, uint16_t  p_56, struct S0 * p_1137);
uint64_t  func_57(int32_t * p_58, int32_t * p_59, int32_t  p_60, struct S0 * p_1137);
int32_t * func_62(int32_t * p_63, uint8_t  p_64, uint8_t  p_65, uint32_t  p_66, uint64_t  p_67, struct S0 * p_1137);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1137->g_11 p_1137->g_3 p_1137->g_76 p_1137->g_81 p_1137->g_84 p_1137->g_94 p_1137->g_80 p_1137->g_117 p_1137->g_87 p_1137->g_89 p_1137->g_137 p_1137->g_144 p_1137->g_147 p_1137->g_158 p_1137->g_140 p_1137->g_149 p_1137->g_185 p_1137->g_204 p_1137->g_106 p_1137->g_198 p_1137->g_95 p_1137->g_264 p_1137->g_238 p_1137->g_290 p_1137->g_403 p_1137->g_404 p_1137->g_351 p_1137->g_327 p_1137->g_370 p_1137->g_299 p_1137->g_492 p_1137->g_120 p_1137->g_658 p_1137->g_319 p_1137->g_659 p_1137->g_624 p_1137->g_641 p_1137->g_684 p_1137->g_685 p_1137->g_571 p_1137->g_543 p_1137->g_630 p_1137->g_718 p_1137->g_304 p_1137->g_745 p_1137->g_749 p_1137->g_757 p_1137->g_298 p_1137->g_789 p_1137->g_569 p_1137->g_634 p_1137->g_558 p_1137->g_559 p_1137->g_845 p_1137->g_857 p_1137->g_870 p_1137->g_318 p_1137->g_935 p_1137->g_128 p_1137->g_574 p_1137->g_956 p_1137->g_961 p_1137->g_970 p_1137->g_359 p_1137->g_921 p_1137->g_1054 p_1137->g_560 p_1137->g_891 p_1137->g_1106 p_1137->g_1055 p_1137->g_1123 p_1137->g_1124 p_1137->g_1127 p_1137->g_1136
 * writes: p_1137->g_11 p_1137->g_3 p_1137->g_76 p_1137->g_80 p_1137->g_81 p_1137->g_87 p_1137->g_89 p_1137->g_95 p_1137->g_106 p_1137->g_120 p_1137->g_128 p_1137->g_140 p_1137->g_144 p_1137->g_198 p_1137->g_290 p_1137->g_238 p_1137->g_304 p_1137->g_492 p_1137->g_659 p_1137->g_624 p_1137->g_630 p_1137->g_593 p_1137->g_857 p_1137->g_757 p_1137->g_870 p_1137->g_318 p_1137->g_936 p_1137->g_359
 */
int64_t  func_1(struct S0 * p_1137)
{ /* block id: 4 */
    int32_t *l_2 = &p_1137->g_3;
    int32_t *l_4 = (void*)0;
    int32_t *l_5 = &p_1137->g_3;
    int32_t *l_6 = &p_1137->g_3;
    int32_t *l_7 = (void*)0;
    int32_t *l_8 = &p_1137->g_3;
    int32_t l_9 = 0x22A149CEL;
    int32_t *l_10[5][6] = {{&l_9,&p_1137->g_3,&p_1137->g_3,&l_9,&l_9,&p_1137->g_3},{&l_9,&p_1137->g_3,&p_1137->g_3,&l_9,&l_9,&p_1137->g_3},{&l_9,&p_1137->g_3,&p_1137->g_3,&l_9,&l_9,&p_1137->g_3},{&l_9,&p_1137->g_3,&p_1137->g_3,&l_9,&l_9,&p_1137->g_3},{&l_9,&p_1137->g_3,&p_1137->g_3,&l_9,&l_9,&p_1137->g_3}};
    uint32_t l_938 = 4294967295UL;
    int16_t l_1038 = 0x111DL;
    int i, j;
    ++p_1137->g_11;
    for (p_1137->g_3 = 23; (p_1137->g_3 < 29); p_1137->g_3 = safe_add_func_uint8_t_u_u(p_1137->g_3, 6))
    { /* block id: 8 */
        uint16_t l_40[9];
        int32_t *l_594 = &p_1137->g_3;
        int16_t l_937 = 0x6BB4L;
        uint16_t l_1058[2][4][1] = {{{0x980AL},{0x980AL},{0x980AL},{0x980AL}},{{0x980AL},{0x980AL},{0x980AL},{0x980AL}}};
        int32_t l_1107 = 0x76D4D154L;
        int32_t l_1108 = 0x6A5DF6D8L;
        int32_t l_1109 = (-1L);
        int32_t l_1110 = 2L;
        uint64_t l_1111 = 1UL;
        VECTOR(int64_t, 2) l_1114 = (VECTOR(int64_t, 2))(0x7DDDAA8FDD9F1031L, 0x7F6CD93C16C118C3L);
        uint8_t *l_1131 = &p_1137->g_80[2];
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_40[i] = 0x6C8CL;
        for (p_1137->g_11 = (-14); (p_1137->g_11 > 1); p_1137->g_11++)
        { /* block id: 11 */
            int32_t *l_61 = &l_9;
            int32_t *l_940[4];
            uint32_t *l_1039 = &p_1137->g_81[2][0];
            int64_t l_1040 = 0x07BC99FDA6526EC4L;
            int32_t **l_1057 = &l_5;
            int i;
            for (i = 0; i < 4; i++)
                l_940[i] = (void*)0;
            if ((safe_rshift_func_int8_t_s_u((((*l_1057) = func_20((p_1137->g_3 >= 0x04255EBDL), ((GROUP_DIVERGE(1, 1) | ((p_1137->g_11 , ((*l_1057) = func_25((p_1137->g_3 || ((((*l_1039) = ((safe_lshift_func_uint16_t_u_s(p_1137->g_3, 14)) , (((!(safe_mul_func_uint8_t_u_u(func_34(l_40[3], func_41(func_47(func_49(func_54((p_1137->g_3 , (func_57((l_61 = &p_1137->g_3), func_62((l_40[3] , &p_1137->g_3), p_1137->g_3, p_1137->g_3, l_40[3], p_1137->g_3, p_1137), l_40[1], p_1137) , 0x11B1EA92L)), l_40[4], p_1137), &p_1137->g_3, l_594, &p_1137->g_3, p_1137), p_1137), &p_1137->g_3, l_937, &p_1137->g_3, l_938, p_1137), l_940[3], l_594, (*l_594), p_1137), 0x10L))) ^ l_1038) != 0x7504L))) , l_1040) | (*l_594))), &p_1137->g_3, &p_1137->g_3, &p_1137->g_3, p_1137))) == (void*)0)) , 0x1275B18EL), l_1058[1][3][0], (*l_594), p_1137)) != &p_1137->g_3), p_1137->g_204.s7)))
            { /* block id: 470 */
                (*l_1057) = (void*)0;
                (*l_1057) = (void*)0;
            }
            else
            { /* block id: 473 */
                (*l_1057) = (*l_1057);
                return p_1137->g_264.y;
            }
            return p_1137->g_749.z;
        }
        ++l_1111;
        l_1108 = (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_1114.xxxyxyyx)))).s63)).xyxxxxxyxxyxxxyx)).s1a)).lo && (safe_sub_func_int32_t_s_s((*l_594), ((safe_lshift_func_uint8_t_u_s((*p_1137->g_1055), ((safe_div_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((*l_594), ((((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 2))((-1L), (-2L))).yyyyyyxx, ((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 16))(p_1137->g_1123.yxyxyxyyyyyxxyyy)).s96, ((VECTOR(int64_t, 16))(p_1137->g_1124.s482a7641ebaf10b5)).sd5))).yxxyxxyx, ((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 4))(1L, ((*p_1137->g_299) = (safe_lshift_func_int8_t_s_s(2L, 1))), 0x4508487364C0E855L, 1L)), ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((-1L), 0x72A4CE703AE63BF9L)), ((VECTOR(int64_t, 2))(p_1137->g_1127.xy)).hi, (safe_unary_minus_func_int8_t_s((((safe_rshift_func_int8_t_s_u((*l_594), ((*l_1131)--))) , ((((((safe_rshift_func_uint16_t_u_s((*l_594), 11)) , (*l_6)) >= (l_1110 = (((VECTOR(int64_t, 16))(p_1137->g_1136.se4a620378bd6315d)).sa == FAKE_DIVERGE(p_1137->group_0_offset, get_group_id(0), 10)))) != (((*l_594) >= (p_1137->g_11 ^ (*l_594))) , 1UL)) > (*l_594)) >= 1L)) , 0x7DL))), (*p_1137->g_299), 0L, 0x78B5FDCD93A29356L, (-10L))).lo)).lo, ((VECTOR(int64_t, 2))(0x1DAE16926C21356DL)), ((VECTOR(int64_t, 2))(0x4DD59B69FE943390L))))).xxyy, ((VECTOR(int64_t, 4))((-1L))))))))).ywwzwyzw))).s3 & p_1137->g_574.x) , GROUP_DIVERGE(2, 1)))), p_1137->g_630.y)) < 0x53E9L))) <= p_1137->g_574.x))));
        return p_1137->g_81[0][5];
    }
    return (*l_6);
}


/* ------------------------------------------ */
/* 
 * reads : p_1137->g_560 p_1137->g_749 p_1137->g_299 p_1137->g_198 p_1137->g_140 p_1137->g_492 p_1137->g_137 p_1137->g_891 p_1137->g_1106
 * writes: p_1137->g_95 p_1137->g_238 p_1137->g_492 p_1137->g_144
 */
int32_t * func_20(int64_t  p_21, int32_t  p_22, int64_t  p_23, int32_t  p_24, struct S0 * p_1137)
{ /* block id: 456 */
    uint8_t l_1059 = 255UL;
    int32_t *l_1061 = (void*)0;
    VECTOR(int32_t, 4) l_1063 = (VECTOR(int32_t, 4))(0x0C7A358DL, (VECTOR(int32_t, 2))(0x0C7A358DL, 0x21F147EEL), 0x21F147EEL);
    int32_t ***l_1091 = &p_1137->g_659;
    int32_t ****l_1092 = &l_1091;
    int32_t ***l_1093 = &p_1137->g_659;
    uint16_t *l_1094 = &p_1137->g_238;
    int64_t l_1101 = 5L;
    int16_t l_1102 = 4L;
    uint16_t *l_1103 = (void*)0;
    uint16_t *l_1104[8];
    int32_t *l_1105 = &p_1137->g_144;
    int i;
    for (i = 0; i < 8; i++)
        l_1104[i] = (void*)0;
    p_24 = l_1059;
    if (((VECTOR(int32_t, 8))(l_1063.zwyyxzzy)).s0)
    { /* block id: 458 */
        int32_t **l_1065 = &l_1061;
        (*l_1065) = l_1061;
    }
    else
    { /* block id: 460 */
        int32_t **l_1066 = &l_1061;
        (*p_1137->g_560) = ((*l_1066) = (void*)0);
    }
    (*l_1105) = (safe_mul_func_uint16_t_u_u((((safe_sub_func_uint16_t_u_u(p_1137->g_749.y, (safe_mul_func_int16_t_s_s((l_1063.y >= (safe_div_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u((0x651ADC8D7EE381AAL != (*p_1137->g_299)), FAKE_DIVERGE(p_1137->group_1_offset, get_group_id(1), 10))) , (((safe_lshift_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((safe_sub_func_int64_t_s_s((FAKE_DIVERGE(p_1137->local_2_offset, get_local_id(2), 10) & (safe_add_func_int16_t_s_s(p_1137->g_140, (((*l_1092) = l_1091) != l_1093)))), p_21)), ((*l_1094) = FAKE_DIVERGE(p_1137->group_1_offset, get_group_id(1), 10)))), 5)) | (safe_add_func_uint16_t_u_u((p_1137->g_492.s0 ^= (((safe_add_func_int64_t_s_s(((safe_rshift_func_int16_t_s_s(((*p_1137->g_299) ^ p_24), l_1101)) , l_1102), 0x14DD5C6FF0367029L)) && 0x0E777AB3L) ^ p_22)), p_1137->g_137.x))) <= 0x8CFC9E7FL)), 5)), 1L)), 4)), 255UL))), p_21)))) && p_21) , 0x7B8EL), p_1137->g_891.x));
    return p_1137->g_1106;
}


/* ------------------------------------------ */
/* 
 * reads : p_1137->g_106 p_1137->g_238 p_1137->g_140 p_1137->g_1054
 * writes: p_1137->g_106 p_1137->g_238 p_1137->g_140
 */
int32_t * func_25(int32_t  p_26, int32_t * p_27, int32_t * p_28, int32_t * p_29, struct S0 * p_1137)
{ /* block id: 438 */
    int32_t *l_1043 = &p_1137->g_3;
    int32_t l_1048 = 7L;
    for (p_1137->g_106 = 14; (p_1137->g_106 == (-7)); p_1137->g_106 = safe_sub_func_int8_t_s_s(p_1137->g_106, 8))
    { /* block id: 441 */
        return l_1043;
    }
    for (p_1137->g_238 = (-4); (p_1137->g_238 <= 49); p_1137->g_238++)
    { /* block id: 446 */
        int32_t l_1046 = 0x26D7665DL;
        int32_t *l_1047 = &l_1046;
        uint32_t l_1049 = 1UL;
        uint8_t * volatile * volatile l_1056 = &p_1137->g_1055;/* VOLATILE GLOBAL l_1056 */
        l_1049--;
        for (p_1137->g_140 = 0; (p_1137->g_140 == (-6)); p_1137->g_140 = safe_sub_func_uint8_t_u_u(p_1137->g_140, 4))
        { /* block id: 450 */
            l_1056 = p_1137->g_1054[6][5];
        }
    }
    return &p_1137->g_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1137->g_106 p_1137->g_128 p_1137->g_76 p_1137->g_574 p_1137->g_140 p_1137->g_641 p_1137->g_3 p_1137->g_403 p_1137->g_970 p_1137->g_144 p_1137->g_264 p_1137->g_757 p_1137->g_80 p_1137->g_84 p_1137->g_492 p_1137->g_94 p_1137->g_87 p_1137->g_921 p_1137->g_956 p_1137->g_961 p_1137->g_359
 * writes: p_1137->g_76 p_1137->g_140 p_1137->g_144 p_1137->g_359 p_1137->g_87 p_1137->g_757 p_1137->g_95 p_1137->g_81
 */
uint8_t  func_34(int32_t  p_35, int16_t  p_36, int32_t * p_37, int32_t * p_38, int32_t  p_39, struct S0 * p_1137)
{ /* block id: 365 */
    int32_t *l_941[10][9][2] = {{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}},{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}},{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}},{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}},{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}},{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}},{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}},{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}},{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}},{{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144},{&p_1137->g_144,&p_1137->g_144}}};
    VECTOR(int64_t, 4) l_952 = (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0x14657465442347D5L), 0x14657465442347D5L);
    uint8_t *l_953 = &p_1137->g_76;
    VECTOR(int16_t, 2) l_959 = (VECTOR(int16_t, 2))(0L, 0L);
    VECTOR(int16_t, 2) l_960 = (VECTOR(int16_t, 2))(0x5BDFL, 0x117CL);
    int16_t *l_966 = (void*)0;
    int16_t *l_967 = &p_1137->g_140;
    int32_t **l_968 = &p_1137->g_95;
    int32_t **l_969 = &l_941[8][6][1];
    uint8_t **l_978 = &l_953;
    int64_t *l_987 = (void*)0;
    int i, j, k;
lbl_1037:
    p_39 |= 0x546FA395L;
    (*p_1137->g_970) = (safe_div_func_int16_t_s_s((p_1137->g_106 , (safe_mod_func_int64_t_s_s((((*l_969) = (((((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_u(((*l_953) |= ((((VECTOR(int64_t, 16))(l_952.wxwyyyxyzxwzzywx)).s1 < p_1137->g_128) , 0UL)), p_1137->g_574.x)) != ((p_39 , ((safe_sub_func_int64_t_s_s((((VECTOR(uint16_t, 2))(p_1137->g_956.s70)).lo != p_36), (safe_rshift_func_uint16_t_u_s((p_35 , ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 4))(l_959.yxyx)).xwxywyxw, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 8))(l_960.xyyxxyyy)).s5401564465663474, ((VECTOR(int16_t, 16))(p_1137->g_961.wyxzxwzyxxzywxxz))))).sbf05)).yzxxxwwz))))).s1), 13)))) != (safe_div_func_int16_t_s_s((safe_div_func_int16_t_s_s(((*l_967) |= 0L), p_36)), p_1137->g_641.s7)))) && 0x50B5L)) != p_35), 1)), p_1137->g_3)) , p_1137->g_403.s2) >= 0x9FL) && (*p_38)) , l_941[3][8][0])) == &p_39), p_35))), p_1137->g_574.x));
    for (p_1137->g_359 = (-22); (p_1137->g_359 > (-10)); ++p_1137->g_359)
    { /* block id: 373 */
        uint32_t l_973 = 0xDC192871L;
        uint8_t **l_976[6] = {&l_953,&l_953,&l_953,&l_953,&l_953,&l_953};
        VECTOR(int32_t, 4) l_989 = (VECTOR(int32_t, 4))(0x73BD7164L, (VECTOR(int32_t, 2))(0x73BD7164L, 2L), 2L);
        VECTOR(int64_t, 4) l_995 = (VECTOR(int64_t, 4))(0x167DDF64A2F8319AL, (VECTOR(int64_t, 2))(0x167DDF64A2F8319AL, 0x4D87136F53840C82L), 0x4D87136F53840C82L);
        uint64_t l_1007[7][4] = {{0x54D229F1B5C54672L,0x03CBD87B30A3159BL,18446744073709551613UL,0x03CBD87B30A3159BL},{0x54D229F1B5C54672L,0x03CBD87B30A3159BL,18446744073709551613UL,0x03CBD87B30A3159BL},{0x54D229F1B5C54672L,0x03CBD87B30A3159BL,18446744073709551613UL,0x03CBD87B30A3159BL},{0x54D229F1B5C54672L,0x03CBD87B30A3159BL,18446744073709551613UL,0x03CBD87B30A3159BL},{0x54D229F1B5C54672L,0x03CBD87B30A3159BL,18446744073709551613UL,0x03CBD87B30A3159BL},{0x54D229F1B5C54672L,0x03CBD87B30A3159BL,18446744073709551613UL,0x03CBD87B30A3159BL},{0x54D229F1B5C54672L,0x03CBD87B30A3159BL,18446744073709551613UL,0x03CBD87B30A3159BL}};
        int32_t l_1019 = 1L;
        int32_t l_1036 = 4L;
        int i, j;
        ++l_973;
        if ((*p_1137->g_970))
        { /* block id: 375 */
            uint8_t ***l_977[1][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int i, j;
            l_978 = l_976[2];
            (*l_969) = &p_35;
        }
        else
        { /* block id: 378 */
            uint64_t l_981 = 0xB3D9BC1F68F2BA68L;
            uint16_t l_999 = 0x470AL;
            int32_t l_1004 = 1L;
            int16_t l_1005 = 0L;
            int32_t l_1006 = (-1L);
            VECTOR(uint64_t, 16) l_1024 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x63C71536263FCA85L), 0x63C71536263FCA85L), 0x63C71536263FCA85L, 18446744073709551615UL, 0x63C71536263FCA85L, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x63C71536263FCA85L), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x63C71536263FCA85L), 18446744073709551615UL, 0x63C71536263FCA85L, 18446744073709551615UL, 0x63C71536263FCA85L);
            int i;
            for (p_1137->g_87 = 0; (p_1137->g_87 > 27); ++p_1137->g_87)
            { /* block id: 381 */
                VECTOR(int32_t, 8) l_988 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 3L), 3L), 3L, 1L, 3L);
                int i;
                if (l_981)
                { /* block id: 382 */
                    VECTOR(int64_t, 2) l_994 = (VECTOR(int64_t, 2))(0x26C62DC46549ED8BL, 4L);
                    uint64_t *l_997 = &p_1137->g_290;
                    uint64_t **l_996 = &l_997;
                    int i;
                    if ((safe_rshift_func_uint16_t_u_s((((FAKE_DIVERGE(p_1137->global_2_offset, get_global_id(2), 10) , ((((**l_978) = ((((safe_unary_minus_func_uint16_t_u((safe_mod_func_int32_t_s_s(((void*)0 == l_987), ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(l_988.s10)).xyyyxxxyxxxyxxxy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_989.zywzwyyz)).s13)).yxxxyxxxxyxyyyxx, ((VECTOR(int32_t, 4))((GROUP_DIVERGE(0, 1) , (p_1137->g_550.s7 != p_36)), 1L, 0x3D1B991DL, 0L)).xwwyxwxzwxywwwxw))), ((VECTOR(int32_t, 2))(0x317CD725L, 0x577DCE81L)).yxxyxxxxyyxyxxxx))).s1)))) , p_39) || (((((((safe_sub_func_int8_t_s_s(((safe_mul_func_int8_t_s_s(((((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 2))(l_994.yy)).xxyxxyyy))).even, ((VECTOR(int64_t, 2))(l_995.xx)).xxxx))).z ^ (l_994.y , p_39)) && 0x7DL), p_35)) < l_989.y), p_1137->g_264.y)) , p_39) , l_994.y) <= 0xE288FE60L) , 0x09467797L) || (*p_38)) && p_1137->g_757)) , p_1137->g_80[2])) , l_989.x) , p_35)) , p_1137->g_84.x) , p_1137->g_492.s7), p_35)))
                    { /* block id: 384 */
                        if ((*p_38))
                            break;
                    }
                    else
                    { /* block id: 386 */
                        uint64_t ***l_998 = &l_996;
                        (*l_998) = l_996;
                        p_37 = (void*)0;
                        if ((*p_38))
                            continue;
                    }
                    if (l_988.s0)
                        continue;
                    return l_989.y;
                }
                else
                { /* block id: 393 */
                    p_39 ^= l_999;
                    p_35 &= 1L;
                }
                for (p_1137->g_140 = 0; (p_1137->g_140 != (-12)); p_1137->g_140 = safe_sub_func_int64_t_s_s(p_1137->g_140, 3))
                { /* block id: 399 */
                    int32_t *l_1014 = &l_1006;
                    for (p_1137->g_757 = 7; (p_1137->g_757 == (-29)); p_1137->g_757 = safe_sub_func_uint32_t_u_u(p_1137->g_757, 4))
                    { /* block id: 402 */
                        --l_1007[5][3];
                    }
                    for (l_1005 = 0; (l_1005 >= 22); l_1005 = safe_add_func_int64_t_s_s(l_1005, 1))
                    { /* block id: 407 */
                        l_988.s1 = (safe_lshift_func_int16_t_s_u((-1L), 5));
                        l_989.y = 7L;
                        if (l_988.s7)
                            break;
                        p_37 = ((*p_1137->g_94) = l_1014);
                    }
                }
            }
            if ((((*l_953) = ((safe_sub_func_int8_t_s_s(p_39, 0UL)) | (0L <= ((VECTOR(int8_t, 16))((safe_add_func_uint32_t_u_u((p_39 >= l_973), ((p_39 != ((p_39 | l_1019) ^ l_1006)) , l_995.w))), ((VECTOR(int8_t, 2))(0L)), 0x47L, p_39, p_36, ((VECTOR(int8_t, 2))(0x74L)), l_1004, ((VECTOR(int8_t, 4))(0x01L)), p_39, 0x25L, 0x3FL)).sf))) , 0x3D7A611FL))
            { /* block id: 417 */
                VECTOR(uint16_t, 8) l_1020 = (VECTOR(uint16_t, 8))(0xE6CBL, (VECTOR(uint16_t, 4))(0xE6CBL, (VECTOR(uint16_t, 2))(0xE6CBL, 1UL), 1UL), 1UL, 0xE6CBL, 1UL);
                int32_t *l_1021[6][4];
                int i, j;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_1021[i][j] = &p_1137->g_3;
                }
                p_39 = ((((VECTOR(uint16_t, 8))(l_1020.s55767730)).s3 | ((*l_967) |= l_1020.s6)) || (!p_39));
                (*l_968) = ((*l_969) = l_1021[5][2]);
            }
            else
            { /* block id: 422 */
                uint32_t *l_1025[4] = {&l_973,&l_973,&l_973,&l_973};
                int32_t l_1026 = 1L;
                int8_t *l_1029 = (void*)0;
                int32_t l_1032 = 0x097C47EEL;
                uint32_t *l_1033 = (void*)0;
                uint32_t *l_1034 = (void*)0;
                uint32_t *l_1035 = &p_1137->g_81[0][9];
                int i;
                l_1036 ^= (+(safe_div_func_int32_t_s_s(((0x313F6B25L <= ((p_1137->g_757 = (l_1004 >= p_39)) <= 0L)) < ((VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL)).hi), ((*l_1035) = ((((((VECTOR(uint64_t, 4))(l_1024.sa869)).x <= (p_1137->g_87 |= ((l_1026 &= 1UL) , FAKE_DIVERGE(p_1137->group_1_offset, get_group_id(1), 10)))) && (safe_mod_func_int8_t_s_s(p_36, (0x3AL && (l_989.x = p_35))))) <= ((safe_lshift_func_int16_t_s_u(((*l_967) &= 0x05CAL), l_1032)) != l_1032)) , p_35)))));
                p_35 = ((*p_38) && l_1026);
            }
            if (p_35)
                goto lbl_1037;
            return p_36;
        }
    }
    return p_1137->g_921;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_41(int32_t * p_42, int32_t * p_43, uint32_t  p_44, int32_t * p_45, uint64_t  p_46, struct S0 * p_1137)
{ /* block id: 363 */
    uint16_t l_939 = 65535UL;
    return l_939;
}


/* ------------------------------------------ */
/* 
 * reads : p_1137->g_140 p_1137->g_634 p_1137->g_624 p_1137->g_89 p_1137->g_80 p_1137->g_106 p_1137->g_558 p_1137->g_559 p_1137->g_3 p_1137->g_845 p_1137->g_144 p_1137->g_117 p_1137->g_857 p_1137->g_87 p_1137->g_757 p_1137->g_870 p_1137->g_318 p_1137->g_571 p_1137->g_76 p_1137->g_264 p_1137->g_319 p_1137->g_95 p_1137->g_94 p_1137->g_935
 * writes: p_1137->g_140 p_1137->g_144 p_1137->g_857 p_1137->g_87 p_1137->g_757 p_1137->g_870 p_1137->g_318 p_1137->g_76 p_1137->g_198 p_1137->g_95 p_1137->g_936
 */
int32_t * func_47(int32_t * p_48, struct S0 * p_1137)
{ /* block id: 263 */
    int32_t l_797 = 1L;
    int32_t *l_798[6][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_799 = 0x4E041F8EL;
    int64_t *l_808 = &p_1137->g_198;
    int32_t *l_819 = (void*)0;
    int i, j;
    if ((l_799 &= l_797))
    { /* block id: 265 */
        int64_t *l_809 = &p_1137->g_359;
        uint8_t *l_810 = (void*)0;
        uint8_t *l_811[5][8] = {{&p_1137->g_76,&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2]},{&p_1137->g_76,&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2]},{&p_1137->g_76,&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2]},{&p_1137->g_76,&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2]},{&p_1137->g_76,&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2],&p_1137->g_80[2]}};
        VECTOR(int32_t, 16) l_816 = (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-8L)), (-8L)), (-8L), (-7L), (-8L), (VECTOR(int32_t, 2))((-7L), (-8L)), (VECTOR(int32_t, 2))((-7L), (-8L)), (-7L), (-8L), (-7L), (-8L));
        VECTOR(int64_t, 16) l_817 = (VECTOR(int64_t, 16))(0x7F4A2889508750E6L, (VECTOR(int64_t, 4))(0x7F4A2889508750E6L, (VECTOR(int64_t, 2))(0x7F4A2889508750E6L, 0x02BD07609F085CC1L), 0x02BD07609F085CC1L), 0x02BD07609F085CC1L, 0x7F4A2889508750E6L, 0x02BD07609F085CC1L, (VECTOR(int64_t, 2))(0x7F4A2889508750E6L, 0x02BD07609F085CC1L), (VECTOR(int64_t, 2))(0x7F4A2889508750E6L, 0x02BD07609F085CC1L), 0x7F4A2889508750E6L, 0x02BD07609F085CC1L, 0x7F4A2889508750E6L, 0x02BD07609F085CC1L);
        uint16_t *l_818 = &p_1137->g_238;
        int32_t *l_820 = (void*)0;
        uint64_t l_821[3];
        int8_t l_832 = 5L;
        int i, j;
        for (i = 0; i < 3; i++)
            l_821[i] = 0UL;
lbl_853:
        l_820 = l_819;
        l_821[0] = (0UL > ((void*)0 == &l_819));
        for (p_1137->g_140 = 0; (p_1137->g_140 != (-12)); p_1137->g_140 = safe_sub_func_uint64_t_u_u(p_1137->g_140, 6))
        { /* block id: 272 */
            uint16_t l_826 = 65530UL;
            int32_t l_827 = 0x2E36DFE0L;
            VECTOR(int16_t, 4) l_835 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x6FB1L), 0x6FB1L);
            uint32_t ***l_844 = &p_1137->g_558;
            int32_t l_852 = 0x33302FB7L;
            VECTOR(int32_t, 8) l_855 = (VECTOR(int32_t, 8))(0x0476C3E0L, (VECTOR(int32_t, 4))(0x0476C3E0L, (VECTOR(int32_t, 2))(0x0476C3E0L, 0x5F9A5AE1L), 0x5F9A5AE1L), 0x5F9A5AE1L, 0x0476C3E0L, 0x5F9A5AE1L);
            int64_t l_863 = 0x7503246E85209914L;
            int i;
            l_827 &= ((safe_rshift_func_uint8_t_u_s((+FAKE_DIVERGE(p_1137->local_0_offset, get_local_id(0), 10)), l_826)) >= 0UL);
            l_816.s4 = ((safe_lshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(p_1137->g_634.y, (l_832 < (p_1137->g_624.x == p_1137->g_89[6][0])))), (0xC7L || ((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_835.zxyyyzwyzwyzyyzz)).sa7)).hi, 4)) , (l_835.z == (safe_lshift_func_int16_t_s_s((l_835.x , ((p_1137->g_80[2] ^ ((VECTOR(uint8_t, 8))((0UL != p_1137->g_106), 255UL, ((VECTOR(uint8_t, 4))(0x2BL)), 253UL, 0x3BL)).s3) , 0x25B2L)), l_826))))))) , 0x7A74E2B0L);
            for (l_827 = (-3); (l_827 != (-21)); l_827 = safe_sub_func_uint32_t_u_u(l_827, 6))
            { /* block id: 277 */
                int32_t l_854 = 0x3CEE13A8L;
                l_816.s1 &= (safe_unary_minus_func_int64_t_s(((void*)0 == (*p_1137->g_558))));
                if ((l_816.s8 ^= (*p_48)))
                { /* block id: 280 */
                    uint64_t l_847[2][7][5] = {{{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL}},{{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL},{1UL,18446744073709551613UL,5UL,1UL,5UL}}};
                    int i, j, k;
                    if ((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(2L, (-8L))).yyyxxxxy)).s0167103614534342)).s3 & 0L))
                    { /* block id: 281 */
                        uint32_t *l_842 = (void*)0;
                        uint32_t **l_841 = &l_842;
                        uint32_t ***l_843 = &l_841;
                        (*l_843) = l_841;
                        return p_48;
                    }
                    else
                    { /* block id: 284 */
                        l_847[0][0][2] |= (l_844 == p_1137->g_845);
                        return p_48;
                    }
                }
                else
                { /* block id: 288 */
                    int32_t *l_856[8];
                    int32_t l_860 = 0x348A443DL;
                    int i;
                    for (i = 0; i < 8; i++)
                        l_856[i] = &p_1137->g_857;
                    for (p_1137->g_144 = 0; (p_1137->g_144 > (-6)); --p_1137->g_144)
                    { /* block id: 291 */
                        return l_820;
                    }
                    if ((safe_add_func_uint32_t_u_u(((l_852 = l_827) | p_1137->g_117.sa), l_827)))
                    { /* block id: 295 */
                        if (p_1137->g_144)
                            goto lbl_853;
                    }
                    else
                    { /* block id: 297 */
                        return p_48;
                    }
                    l_852 = (((l_854 == (((p_1137->g_857 ^= ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(l_855.s50)).yyxx, ((VECTOR(int32_t, 2))(1L, 0x51895008L)).yyyy))).y) , (safe_mul_func_uint8_t_u_u((l_821[1] && l_826), 0x3CL))) == 0xBF29FB87C4AAE0F7L)) != l_860) >= (l_860 >= (l_827 & (safe_mod_func_int32_t_s_s(l_863, l_863)))));
                }
                if ((*p_48))
                    continue;
                for (p_1137->g_87 = (-19); (p_1137->g_87 < 22); p_1137->g_87 = safe_add_func_uint64_t_u_u(p_1137->g_87, 7))
                { /* block id: 306 */
                    int16_t l_868[5] = {3L,3L,3L,3L,3L};
                    int32_t l_869[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_869[i] = 0x17D07423L;
                    if (l_827)
                        goto lbl_853;
                    for (p_1137->g_757 = 19; (p_1137->g_757 < 8); --p_1137->g_757)
                    { /* block id: 310 */
                        return p_48;
                    }
                    p_1137->g_870++;
                    if ((*p_48))
                        break;
                }
            }
        }
    }
    else
    { /* block id: 318 */
        int16_t l_886[6] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
        uint32_t l_887 = 0x9F498876L;
        int32_t l_890 = 4L;
        VECTOR(uint8_t, 16) l_896 = (VECTOR(uint8_t, 16))(251UL, (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 0x6EL), 0x6EL), 0x6EL, 251UL, 0x6EL, (VECTOR(uint8_t, 2))(251UL, 0x6EL), (VECTOR(uint8_t, 2))(251UL, 0x6EL), 251UL, 0x6EL, 251UL, 0x6EL);
        int i;
        for (p_1137->g_318 = (-14); (p_1137->g_318 >= 43); p_1137->g_318 = safe_add_func_uint32_t_u_u(p_1137->g_318, 3))
        { /* block id: 321 */
            uint16_t l_875 = 1UL;
            uint8_t *l_876 = &p_1137->g_76;
            VECTOR(int32_t, 8) l_885 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x41EDB7ABL), 0x41EDB7ABL), 0x41EDB7ABL, (-1L), 0x41EDB7ABL);
            int16_t *l_888 = (void*)0;
            int16_t *l_889[2];
            int32_t *l_925 = (void*)0;
            int i;
            for (i = 0; i < 2; i++)
                l_889[i] = &p_1137->g_128;
            if ((((*l_876) = l_875) && ((safe_mod_func_uint8_t_u_u(((((*p_48) <= (p_1137->g_571.s7 | p_1137->g_106)) != l_875) | (l_890 = (safe_mul_func_int8_t_s_s((((safe_mod_func_int8_t_s_s((((safe_div_func_int32_t_s_s((*p_48), (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_885.s75774232)).odd)).xyzxywxx)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))((-1L), (l_885.s4 & l_885.s4), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x12450F75L, (-1L))))), (((((&p_1137->g_560 != (void*)0) , l_886[0]) && l_875) , l_886[3]) ^ 0x31DD1C27162177B0L), (*p_48), 0L, 0x03C3C6A9L)))))).s3 , l_886[1]))) & l_875) | l_887), l_887)) & 0x14L) >= 0x0315AD35L), l_885.s1)))), l_885.s7)) == l_885.s0)))
            { /* block id: 324 */
                int16_t l_895 = 0x24CFL;
                int8_t **l_919 = (void*)0;
                if (((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(0L, 0x4BBA82C7L)).yyxxyxyyxyxyyxxx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(p_1137->g_891.yyyyxyxxyyyyxxxx)).even)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-7L), 1L)), 0x7C591944L, 0x5052A1B9L)).xwzyzwww))).s4732043432352777))))).s1)
                { /* block id: 325 */
                    int32_t l_894 = (-9L);
                    for (p_1137->g_198 = 0; (p_1137->g_198 < 24); p_1137->g_198 = safe_add_func_uint64_t_u_u(p_1137->g_198, 8))
                    { /* block id: 328 */
                        int32_t l_901 = 6L;
                        int32_t l_902 = 6L;
                        l_895 ^= l_894;
                        if ((*p_48))
                            break;
                        l_902 &= ((l_894 = (((l_887 <= (!((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_896.s1303)).even)))).yxxx)).wxwywwywwwxyxwyw)).sb)) < (safe_div_func_int32_t_s_s(0x4CB60C0DL, (-1L)))) < (safe_lshift_func_uint8_t_u_u(((*l_876) |= 0x2BL), 6)))) != l_901);
                    }
                }
                else
                { /* block id: 335 */
                    uint8_t l_905[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_905[i] = 255UL;
                    for (p_1137->g_144 = 0; (p_1137->g_144 <= (-3)); --p_1137->g_144)
                    { /* block id: 338 */
                        uint16_t l_906[7];
                        int8_t *l_918 = &p_1137->g_757;
                        int8_t **l_917 = &l_918;
                        uint8_t **l_920 = &l_876;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_906[i] = 0x2AF2L;
                        l_905[0] = (*p_48);
                        --l_906[5];
                        l_885.s4 = (safe_rshift_func_int8_t_s_s((GROUP_DIVERGE(1, 1) & (*p_48)), ((!0x4360L) & ((safe_div_func_int64_t_s_s((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((-1L), 0x091FL, ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 8))((p_1137->g_921 = (safe_add_func_int16_t_s_s(((((((*p_1137->g_298) != (*p_1137->g_298)) , ((safe_sub_func_uint64_t_u_u((l_917 == l_919), (((((*l_920) = l_876) != &l_905[0]) < ((void*)0 != p_48)) == p_1137->g_149.s4))) & l_895)) > l_895) | p_1137->g_571.s5) == (*p_48)), l_906[5]))), p_1137->g_571.s4, l_885.s3, l_906[6], 0x5832L, ((VECTOR(int16_t, 2))(4L)), (-1L))).s53, ((VECTOR(int16_t, 2))(1L))))), l_885.s5, ((VECTOR(int16_t, 2))(0x1222L)), (-8L))).s03)), 0x54C7L, 4L)).x , l_885.s2), l_905[0])) , p_1137->g_264.y))));
                    }
                }
            }
            else
            { /* block id: 346 */
                int32_t **l_922 = &p_1137->g_95;
                int32_t **l_934 = (void*)0;
                (*l_922) = &l_890;
                for (l_875 = 0; (l_875 != 44); l_875 = safe_add_func_int16_t_s_s(l_875, 9))
                { /* block id: 350 */
                    (**l_922) = (**p_1137->g_319);
                }
                (*p_1137->g_935) = ((*l_922) = (*p_1137->g_94));
            }
        }
        return p_48;
    }
    return l_798[3][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1137->g_81 p_1137->g_299 p_1137->g_198 p_1137->g_492 p_1137->g_120 p_1137->g_658 p_1137->g_319 p_1137->g_95 p_1137->g_3 p_1137->g_659 p_1137->g_624 p_1137->g_641 p_1137->g_684 p_1137->g_685 p_1137->g_403 p_1137->g_571 p_1137->g_106 p_1137->g_543 p_1137->g_80 p_1137->g_87 p_1137->g_89 p_1137->g_76 p_1137->g_11 p_1137->g_144 p_1137->g_238 p_1137->g_630 p_1137->g_718 p_1137->g_137 p_1137->g_327 p_1137->g_304 p_1137->g_290 p_1137->g_745 p_1137->g_749 p_1137->g_117 p_1137->g_351 p_1137->g_757 p_1137->g_298 p_1137->g_789 p_1137->g_569
 * writes: p_1137->g_81 p_1137->g_492 p_1137->g_120 p_1137->g_659 p_1137->g_95 p_1137->g_624 p_1137->g_106 p_1137->g_76 p_1137->g_80 p_1137->g_87 p_1137->g_89 p_1137->g_144 p_1137->g_630 p_1137->g_593 p_1137->g_198
 */
int32_t * func_49(int32_t * p_50, int32_t * p_51, int32_t * p_52, int32_t * p_53, struct S0 * p_1137)
{ /* block id: 204 */
    uint32_t *l_595 = &p_1137->g_81[0][9];
    int32_t l_598 = 0x02F67365L;
    int64_t ***l_605[8][3][8] = {{{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298}},{{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298}},{{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298}},{{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298}},{{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298}},{{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298}},{{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298}},{{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298},{&p_1137->g_298,&p_1137->g_298,&p_1137->g_298,&p_1137->g_304,&p_1137->g_304,&p_1137->g_298,&p_1137->g_304,&p_1137->g_298}}};
    uint16_t *l_608[5] = {&p_1137->g_238,&p_1137->g_238,&p_1137->g_238,&p_1137->g_238,&p_1137->g_238};
    int32_t l_609 = 0x421B0F50L;
    int32_t l_610 = 0x6D2080D9L;
    int32_t l_611 = 1L;
    int32_t l_612 = (-1L);
    int64_t *****l_617 = (void*)0;
    int64_t ****l_619[3][3][5] = {{{&l_605[4][0][5],&l_605[4][0][6],&l_605[4][0][5],&l_605[4][0][5],&l_605[4][0][6]},{&l_605[4][0][5],&l_605[4][0][6],&l_605[4][0][5],&l_605[4][0][5],&l_605[4][0][6]},{&l_605[4][0][5],&l_605[4][0][6],&l_605[4][0][5],&l_605[4][0][5],&l_605[4][0][6]}},{{&l_605[4][0][5],&l_605[4][0][6],&l_605[4][0][5],&l_605[4][0][5],&l_605[4][0][6]},{&l_605[4][0][5],&l_605[4][0][6],&l_605[4][0][5],&l_605[4][0][5],&l_605[4][0][6]},{&l_605[4][0][5],&l_605[4][0][6],&l_605[4][0][5],&l_605[4][0][5],&l_605[4][0][6]}},{{&l_605[4][0][5],&l_605[4][0][6],&l_605[4][0][5],&l_605[4][0][5],&l_605[4][0][6]},{&l_605[4][0][5],&l_605[4][0][6],&l_605[4][0][5],&l_605[4][0][5],&l_605[4][0][6]},{&l_605[4][0][5],&l_605[4][0][6],&l_605[4][0][5],&l_605[4][0][5],&l_605[4][0][6]}}};
    int64_t *****l_618 = &l_619[1][0][2];
    int32_t l_655[4][1][6] = {{{1L,0x4AB1A014L,1L,1L,0x4AB1A014L,1L}},{{1L,0x4AB1A014L,1L,1L,0x4AB1A014L,1L}},{{1L,0x4AB1A014L,1L,1L,0x4AB1A014L,1L}},{{1L,0x4AB1A014L,1L,1L,0x4AB1A014L,1L}}};
    uint8_t l_661[1][5] = {{0x90L,0x90L,0x90L,0x90L,0x90L}};
    uint16_t *l_669 = &p_1137->g_11;
    uint64_t *l_692 = &p_1137->g_87;
    uint64_t **l_691 = &l_692;
    VECTOR(int16_t, 8) l_747 = (VECTOR(int16_t, 8))(0x04CBL, (VECTOR(int16_t, 4))(0x04CBL, (VECTOR(int16_t, 2))(0x04CBL, (-1L)), (-1L)), (-1L), 0x04CBL, (-1L));
    int32_t l_761[2][2][4] = {{{(-2L),0x58389AEFL,0x58389AEFL,(-2L)},{(-2L),0x58389AEFL,0x58389AEFL,(-2L)}},{{(-2L),0x58389AEFL,0x58389AEFL,(-2L)},{(-2L),0x58389AEFL,0x58389AEFL,(-2L)}}};
    int32_t *l_777[4][7] = {{&l_761[1][0][2],&l_598,&l_612,(void*)0,&l_598,(void*)0,&l_612},{&l_761[1][0][2],&l_598,&l_612,(void*)0,&l_598,(void*)0,&l_612},{&l_761[1][0][2],&l_598,&l_612,(void*)0,&l_598,(void*)0,&l_612},{&l_761[1][0][2],&l_598,&l_612,(void*)0,&l_598,(void*)0,&l_612}};
    uint32_t l_778 = 0UL;
    VECTOR(int32_t, 8) l_787 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x3C4F1B0CL), 0x3C4F1B0CL), 0x3C4F1B0CL, 5L, 0x3C4F1B0CL);
    VECTOR(int32_t, 4) l_788 = (VECTOR(int32_t, 4))(0x41EF2F9BL, (VECTOR(int32_t, 2))(0x41EF2F9BL, (-6L)), (-6L));
    uint8_t l_792 = 0x6BL;
    VECTOR(int32_t, 4) l_793 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 4L), 4L);
    int32_t l_794 = 0x53DEDA9EL;
    uint64_t l_795 = 1UL;
    uint8_t l_796 = 0xC1L;
    int i, j, k;
    if ((((*l_595)++) | (l_598 , (safe_mul_func_int8_t_s_s(((safe_add_func_uint32_t_u_u((~(safe_add_func_int64_t_s_s((*p_1137->g_299), (&p_1137->g_298 != l_605[7][0][7])))), (l_598 && ((safe_lshift_func_uint16_t_u_s((++p_1137->g_492.s1), 11)) != (safe_rshift_func_int8_t_s_u(l_609, ((((*l_618) = &l_605[4][1][2]) == (void*)0) || ((l_610 |= (safe_lshift_func_int8_t_s_u(l_612, l_598))) != 0x344D8A2DF3D10E32L)))))))) , l_611), 0x09L)))))
    { /* block id: 209 */
        VECTOR(int16_t, 8) l_632 = (VECTOR(int16_t, 8))(0x6571L, (VECTOR(int16_t, 4))(0x6571L, (VECTOR(int16_t, 2))(0x6571L, 1L), 1L), 1L, 0x6571L, 1L);
        VECTOR(int16_t, 16) l_633 = (VECTOR(int16_t, 16))(0x5B2DL, (VECTOR(int16_t, 4))(0x5B2DL, (VECTOR(int16_t, 2))(0x5B2DL, 5L), 5L), 5L, 0x5B2DL, 5L, (VECTOR(int16_t, 2))(0x5B2DL, 5L), (VECTOR(int16_t, 2))(0x5B2DL, 5L), 0x5B2DL, 5L, 0x5B2DL, 5L);
        VECTOR(int16_t, 4) l_642 = (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x35B3L), 0x35B3L);
        uint32_t **l_653 = &p_1137->g_559;
        int32_t l_657 = 0L;
        int32_t *l_660[8][8][4] = {{{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3}},{{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3}},{{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3}},{{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3}},{{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3}},{{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3}},{{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3}},{{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3},{(void*)0,&l_612,(void*)0,&p_1137->g_3}}};
        VECTOR(int16_t, 4) l_666 = (VECTOR(int16_t, 4))(0x203DL, (VECTOR(int16_t, 2))(0x203DL, 0x3A8BL), 0x3A8BL);
        int16_t *l_676 = (void*)0;
        int16_t *l_677[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        uint8_t *l_678 = &l_661[0][3];
        uint8_t *l_679 = &p_1137->g_80[3];
        uint64_t *l_690 = (void*)0;
        uint64_t **l_689 = &l_690;
        uint64_t ***l_688 = &l_689;
        uint32_t l_703 = 4294967295UL;
        int32_t l_729 = (-1L);
        int64_t l_756 = 0x34E4FFFB267C231CL;
        uint32_t l_762 = 0x38BDC7E4L;
        int i, j, k;
        for (p_1137->g_120 = (-20); (p_1137->g_120 >= 18); ++p_1137->g_120)
        { /* block id: 212 */
            int32_t l_629 = 0x69786E2EL;
            uint32_t **l_654 = &l_595;
            int16_t l_656[3][6][8] = {{{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L}},{{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L}},{{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L},{(-1L),0x6FEEL,0x58D5L,0x2F46L,(-6L),(-6L),0L,0L}}};
            int i, j, k;
            l_657 |= ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(p_1137->g_624.xx)).xxxxyxxx, (int16_t)(~(safe_rshift_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((l_629 ^ 65532UL), ((((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 2))(p_1137->g_630.xx)).yxxyyyyx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(p_1137->g_631.zzyzwxxxxxyxzwzw)).sbb08)).wywxyxyx))).s7735477607634367)).lo, ((VECTOR(int16_t, 8))(9L, 0x710CL, p_1137->g_351.s1, 0L, 0L, 0x6E04L, 0x022CL, (-10L))), ((VECTOR(int16_t, 8))(1L, ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(0L, 0x5871L)), ((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_632.s70207445)).hi)))).xzwyyzyzwyyyywxy, ((VECTOR(int16_t, 8))(l_633.saccc940d)).s1272610347044753))).s97, ((VECTOR(int16_t, 16))(p_1137->g_634.xwwxxxyxyyywxxxz)).s35))), ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))((safe_lshift_func_uint16_t_u_u((safe_div_func_int32_t_s_s(l_609, (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 16))(p_1137->g_641.s5ef7a9dddc051f6a)).s7b00, (int16_t)(l_610 ^= 0x649EL)))), ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 2))(0x41F5L, 8L)).xxyy, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(l_642.zyzxywzz)))).hi))), ((VECTOR(int16_t, 2))(0x1710L, 0x12B7L)).xyxy))).y, ((safe_add_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_u((((((safe_sub_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_s(p_1137->g_76, 5)) && ((**p_1137->g_298) < l_642.x)) <= (0x1C1DE216L || FAKE_DIVERGE(p_1137->global_1_offset, get_global_id(1), 10))), p_1137->g_630.y)), 0x412178B5L)) , p_1137->g_81[0][9]) , 0x63L) , l_653) != l_654), 13)) , l_655[3][0][5]) ^ l_629), l_656[1][0][6])) | l_655[0][0][0]))))), l_656[2][0][3])), 3L, 0x04AAL, (-5L), 0x12CDL, 1L, (-7L), 2L)).even)).lo, ((VECTOR(int16_t, 2))(1L))))), ((VECTOR(int16_t, 2))(0x7E38L)), 0x7840L))))).s0 != l_656[1][0][6]) >= (-5L)))), l_642.y)))))).even, ((VECTOR(uint16_t, 4))(0x48E2L))))).w;
            if (l_655[3][0][5])
                break;
            (*p_1137->g_658) = &p_51;
            if ((**p_1137->g_319))
                continue;
        }
        l_661[0][3]--;
        (*p_1137->g_659) = &l_657;
        if (((((safe_rshift_func_int8_t_s_s((FAKE_DIVERGE(p_1137->global_2_offset, get_global_id(2), 10) , ((((VECTOR(int16_t, 2))(l_666.xz)).lo <= (safe_lshift_func_int16_t_s_s((&p_1137->g_238 != (p_1137->g_624.x , l_669)), 1))) || (!(safe_rshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((safe_sub_func_int16_t_s_s((p_1137->g_624.y = p_1137->g_641.s2), ((((l_678 = l_678) == l_679) , ((safe_lshift_func_int16_t_s_u((l_598 &= ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(2L, 0x2F3EL)).yyyyyyxy)).s0), (((l_611 &= (safe_rshift_func_uint8_t_u_s((((VECTOR(int64_t, 16))(p_1137->g_684.s0214705543037400)).s4 & l_610), ((VECTOR(int8_t, 4))(p_1137->g_685.zwwx)).z))) == (safe_lshift_func_uint8_t_u_s((((*l_688) = (void*)0) != l_691), 4))) , p_1137->g_403.s5))) ^ GROUP_DIVERGE(2, 1))) | 0L))) , p_1137->g_571.s8), p_1137->g_571.sf)), 7))))), 0)) ^ FAKE_DIVERGE(p_1137->group_0_offset, get_group_id(0), 10)) > l_661[0][3]) != 6L))
        { /* block id: 226 */
            uint16_t l_695[5][2][2] = {{{0xD999L,65535UL},{0xD999L,65535UL}},{{0xD999L,65535UL},{0xD999L,65535UL}},{{0xD999L,65535UL},{0xD999L,65535UL}},{{0xD999L,65535UL},{0xD999L,65535UL}},{{0xD999L,65535UL},{0xD999L,65535UL}}};
            uint32_t l_704 = 4UL;
            int32_t *l_706 = &l_611;
            int i, j, k;
            for (p_1137->g_106 = 0; (p_1137->g_106 == (-10)); --p_1137->g_106)
            { /* block id: 229 */
                int32_t *l_705 = &l_657;
                l_598 = (-7L);
                l_705 = (l_660[1][1][0] = func_62((*p_1137->g_543), l_609, l_695[3][1][1], p_1137->g_80[4], (((~(safe_mul_func_uint16_t_u_u(((safe_unary_minus_func_int64_t_s(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x686AED786EC970E2L, 0x3EC0736736888AA6L)), 0x7929E588E4E4D09AL, 0x22C3E0E9BA9C94D0L)).zwzzwxwwyxyyyyyz)).sd)) ^ p_1137->g_120), (((safe_div_func_uint32_t_u_u(((((--(*l_595)) && (+0x73889FDEL)) & (((VECTOR(int64_t, 16))(0x50021FA4D966C7F7L, l_695[3][1][1], l_655[0][0][3], 5L, l_703, 0x48A687DF934459B1L, 0x337F2E654A63D87FL, 0x51D2AFB907FF16ABL, ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 2))(0x5E232B4F95DC0257L)), ((VECTOR(int64_t, 4))(1L)))).sf <= 0x87F0027E7821F060L)) & l_704), GROUP_DIVERGE(1, 1))) & 0x0E45BA00F2ACA538L) ^ p_1137->g_87)))) & GROUP_DIVERGE(1, 1)) && p_1137->g_89[1][2]), p_1137));
            }
            (*p_1137->g_659) = l_706;
        }
        else
        { /* block id: 236 */
            uint8_t l_717 = 1UL;
            VECTOR(int16_t, 8) l_746 = (VECTOR(int16_t, 8))(0x5B6AL, (VECTOR(int16_t, 4))(0x5B6AL, (VECTOR(int16_t, 2))(0x5B6AL, 0x547BL), 0x547BL), 0x547BL, 0x5B6AL, 0x547BL);
            int32_t l_755 = 0x0FC6A85DL;
            int32_t l_759 = (-1L);
            int32_t l_760[7] = {0L,(-5L),0L,0L,(-5L),0L,0L};
            int i;
            for (p_1137->g_144 = 0; (p_1137->g_144 == (-17)); p_1137->g_144 = safe_sub_func_uint8_t_u_u(p_1137->g_144, 4))
            { /* block id: 239 */
                uint32_t ***l_716[10][3] = {{&l_653,(void*)0,&l_653},{&l_653,(void*)0,&l_653},{&l_653,(void*)0,&l_653},{&l_653,(void*)0,&l_653},{&l_653,(void*)0,&l_653},{&l_653,(void*)0,&l_653},{&l_653,(void*)0,&l_653},{&l_653,(void*)0,&l_653},{&l_653,(void*)0,&l_653},{&l_653,(void*)0,&l_653}};
                int32_t l_732[1][3];
                VECTOR(int16_t, 2) l_748 = (VECTOR(int16_t, 2))((-9L), 0x09ABL);
                VECTOR(int16_t, 16) l_750 = (VECTOR(int16_t, 16))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 0x1CC6L), 0x1CC6L), 0x1CC6L, 3L, 0x1CC6L, (VECTOR(int16_t, 2))(3L, 0x1CC6L), (VECTOR(int16_t, 2))(3L, 0x1CC6L), 3L, 0x1CC6L, 3L, 0x1CC6L);
                uint16_t l_758 = 0x679BL;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_732[i][j] = 0x5FE9484DL;
                }
                l_598 = (safe_add_func_int8_t_s_s((p_1137->g_238 & (safe_unary_minus_func_int32_t_s((*p_50)))), (((((~(safe_div_func_int32_t_s_s((((*l_595)++) >= (((void*)0 != l_716[9][2]) <= (l_717 , (p_1137->g_630.x ^= p_1137->g_624.w)))), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(p_1137->g_718.s21)).xyyxyxxx)).s1))) & ((*l_678) &= (safe_add_func_int16_t_s_s((1L | FAKE_DIVERGE(p_1137->global_0_offset, get_global_id(0), 10)), ((safe_sub_func_uint16_t_u_u((l_717 >= (safe_div_func_uint64_t_u_u(((*l_692) ^= (safe_mod_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((*p_1137->g_299), (*p_1137->g_299))), p_1137->g_492.s3))), FAKE_DIVERGE(p_1137->local_0_offset, get_local_id(0), 10)))), l_729)) | l_717))))) && (*p_52)) < p_1137->g_137.y) < p_1137->g_492.s0)));
                l_759 = ((((safe_mul_func_uint16_t_u_u((l_732[0][1] & ((void*)0 == (*p_1137->g_327))), (safe_add_func_int64_t_s_s(l_732[0][1], (safe_div_func_int64_t_s_s(((**p_1137->g_298) = ((l_611 = (safe_sub_func_int16_t_s_s((safe_div_func_int32_t_s_s(l_717, l_661[0][0])), ((safe_sub_func_uint32_t_u_u((((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))((safe_sub_func_uint64_t_u_u((p_1137->g_290 == p_1137->g_81[0][9]), ((((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 4))((-7L), 8L, 1L, 6L)).zyxyxyyxwywzzzww, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x118CL, 6L)).xyxxxyyx)).s3353432611016273)).s5c)).xyyy)).yywwzxwxxyxyxxzz))).even, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 8))(p_1137->g_745.ywwzyyyz)).s27, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x3CL, 249UL)).xxxx)).hi))).yyyyyxxy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_746.s72524755)).hi)).zywyxzzx))).s35, ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(l_747.s5042)), ((VECTOR(int16_t, 8))(l_748.xyxyxyyy)).hi))).hi, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(p_1137->g_749.ww))))))).yxyyxyxy, ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 16))(l_750.sca064400eae0fc15)).sca, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(0L, (l_755 = (safe_add_func_int8_t_s_s((p_1137->g_593[7] = (safe_div_func_uint16_t_u_u(p_1137->g_117.s3, 0xA8C1L))), p_1137->g_351.s3))), l_655[0][0][2], 0x78ABL, 1L, 0x6794L, 0L, l_610, 1L, (-1L), ((VECTOR(int16_t, 2))((-5L))), ((VECTOR(int16_t, 2))(4L)), 2L, (-1L))).s4263)).wwyxzwzxxxxyzywz, ((VECTOR(int16_t, 16))(9L))))).s03, ((VECTOR(int16_t, 2))(0x1580L))))).xyxxyyxy)).s07))).xyyyxxyy))).s7335763312264721)).sc8)).xxyxxyyx)).s14)), (int16_t)0x1A0EL))).hi && p_1137->g_80[0]) < (-8L)))), l_756, l_755, ((VECTOR(uint32_t, 2))(0UL)), 0x8EF9C6C5L, 0x2D0609A9L, 0x0AC02688L)).s67)).yxxy)))).odd)).hi , 4294967289UL), 0x299E5AF0L)) != p_1137->g_757)))) <= p_1137->g_87)), 0x24D96B137CA6A647L)))))) || FAKE_DIVERGE(p_1137->group_2_offset, get_group_id(2), 10)) , l_611) > l_758);
                l_762--;
            }
            l_760[3] = (*p_1137->g_95);
        }
    }
    else
    { /* block id: 254 */
        int64_t l_769[1][7];
        int32_t *l_776[3];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 7; j++)
                l_769[i][j] = 0x260BE0434E4C0581L;
        }
        for (i = 0; i < 3; i++)
            l_776[i] = &p_1137->g_144;
        l_611 |= ((safe_mod_func_int16_t_s_s(((l_610 = ((safe_add_func_uint16_t_u_u(((l_769[0][1] ^ (safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((l_598 | FAKE_DIVERGE(p_1137->local_1_offset, get_local_id(1), 10)), 12)), 0x3A85C0F9L))) , 0xF674L), (l_610 >= (~(((!(l_769[0][1] ^ (0x2F839B87L || (l_761[1][1][0] = (safe_mul_func_uint8_t_u_u(4UL, l_612)))))) <= 0x7FF760CD66FFD75EL) < (***p_1137->g_658)))))) != FAKE_DIVERGE(p_1137->group_2_offset, get_group_id(2), 10))) == (-1L)), p_1137->g_684.s0)) == 4UL);
    }
    l_778++;
    l_777[1][1] = func_62(p_50, (safe_rshift_func_int16_t_s_s((safe_sub_func_int8_t_s_s((((0x33L != 1L) , ((+((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1137->group_2_offset, get_group_id(2), 10), 4)) && 18446744073709551614UL)) ^ ((VECTOR(int32_t, 8))(0x001E29F2L, ((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 4))(l_787.s5004)), 0x2315D6B7L, 0x27AACDE3L, 0x169EB933L)).s5, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(l_788.wwwyyyyyxxzxwwxx)).even, ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(p_1137->g_789.xyxyxyxyxxyxxyyy)).s6547, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x564A0756L, 1L)), (safe_lshift_func_int16_t_s_s(l_792, 15)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_793.zxzw)).wwywyyxxwwwyyxxz)).sb70b)), 0L, ((VECTOR(int32_t, 4))((((2L != 0x9AL) ^ 0x69032ABDABA153EEL) || 0UL), 0x59ABE11CL, 0L, 7L)), 0x5F4E9688L, 0x43D014FBL, 0x017FDD50L, 0x03D8F395L)).s2786))).xxwzxzwy))).s14, ((VECTOR(int32_t, 2))((-5L))), ((VECTOR(int32_t, 2))((-4L)))))).xxyyyxxxyxyxxxxx, ((VECTOR(int32_t, 16))((-7L)))))).s27, (int32_t)(*p_53), (int32_t)(*p_50)))).xxxy)), 1L, 0x5650A0D1L)).s2)) > p_1137->g_569.y), p_1137->g_757)), 11)), p_1137->g_624.y, l_794, l_795, p_1137);
    l_796 |= (0xA9L == 0x28L);
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_1137->g_238 p_1137->g_327 p_1137->g_370 p_1137->g_147 p_1137->g_140 p_1137->g_76 p_1137->g_95 p_1137->g_3 p_1137->g_87 p_1137->g_106
 * writes: p_1137->g_238 p_1137->g_304 p_1137->g_140 p_1137->g_87 p_1137->g_106
 */
int32_t * func_54(int32_t  p_55, uint16_t  p_56, struct S0 * p_1137)
{ /* block id: 131 */
    int32_t *l_423[8] = {&p_1137->g_144,&p_1137->g_144,&p_1137->g_144,&p_1137->g_144,&p_1137->g_144,&p_1137->g_144,&p_1137->g_144,&p_1137->g_144};
    uint32_t l_424 = 4294967286UL;
    int64_t **l_436 = &p_1137->g_299;
    int64_t ****l_460[9] = {&p_1137->g_327,&p_1137->g_327,&p_1137->g_327,&p_1137->g_327,&p_1137->g_327,&p_1137->g_327,&p_1137->g_327,&p_1137->g_327,&p_1137->g_327};
    VECTOR(int8_t, 4) l_467 = (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, (-9L)), (-9L));
    int8_t *l_475 = &p_1137->g_106;
    int8_t **l_474 = &l_475;
    VECTOR(int32_t, 4) l_524 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L);
    int32_t **l_561 = &p_1137->g_95;
    int i;
    l_424++;
    for (p_1137->g_238 = 0; (p_1137->g_238 <= 30); p_1137->g_238++)
    { /* block id: 135 */
        int64_t ****l_439 = &p_1137->g_327;
        int64_t l_440 = 0x61CD64EC881B5132L;
        int32_t l_448 = 1L;
        int32_t l_449 = 0L;
        VECTOR(int8_t, 16) l_466 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x71L), 0x71L), 0x71L, 1L, 0x71L, (VECTOR(int8_t, 2))(1L, 0x71L), (VECTOR(int8_t, 2))(1L, 0x71L), 1L, 0x71L, 1L, 0x71L);
        VECTOR(int8_t, 4) l_468 = (VECTOR(int8_t, 4))(0x6BL, (VECTOR(int8_t, 2))(0x6BL, 0x49L), 0x49L);
        VECTOR(int64_t, 16) l_483 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
        uint32_t l_529 = 0x51A63987L;
        int32_t **l_564 = &l_423[5];
        VECTOR(int16_t, 16) l_579 = (VECTOR(int16_t, 16))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x3A2DL), 0x3A2DL), 0x3A2DL, (-5L), 0x3A2DL, (VECTOR(int16_t, 2))((-5L), 0x3A2DL), (VECTOR(int16_t, 2))((-5L), 0x3A2DL), (-5L), 0x3A2DL, (-5L), 0x3A2DL);
        int i;
        if (p_55)
        { /* block id: 136 */
            uint16_t l_429 = 65535UL;
            int16_t *l_445 = (void*)0;
            int16_t *l_446 = &p_1137->g_140;
            int16_t l_447 = 0x7F73L;
            int64_t l_450[5][3] = {{(-8L),0x037C5EFBEAD01E0DL,(-8L)},{(-8L),0x037C5EFBEAD01E0DL,(-8L)},{(-8L),0x037C5EFBEAD01E0DL,(-8L)},{(-8L),0x037C5EFBEAD01E0DL,(-8L)},{(-8L),0x037C5EFBEAD01E0DL,(-8L)}};
            int i, j;
            ++l_429;
            l_448 = (safe_sub_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s(((((l_436 == ((*p_1137->g_327) = (void*)0)) == (safe_add_func_int16_t_s_s((((l_439 != l_439) == l_429) <= 1L), (l_440 , p_55)))) | ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(0x69L, 0x4FL, (safe_mod_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((*l_446) ^= (((void*)0 != (*p_1137->g_370)) & p_55)), p_1137->g_76)), l_440)), ((VECTOR(int8_t, 4))((-1L))), (-1L))).s07)).even) < l_447), l_429)) == l_440), p_55));
            l_450[2][2] = (l_449 &= (l_448 = (*p_1137->g_95)));
        }
        else
        { /* block id: 144 */
            uint32_t l_453 = 0xEDE35C37L;
            uint32_t l_482[8][8][4] = {{{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL}},{{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL}},{{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL}},{{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL}},{{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL}},{{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL}},{{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL}},{{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL},{0UL,0xB6A10253L,0x177D214BL,4294967294UL}}};
            int64_t l_530 = 0x3D0278A24DA53F6CL;
            VECTOR(int32_t, 4) l_570 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x387A4F4DL), 0x387A4F4DL);
            int32_t l_592 = 0x7E969883L;
            int i, j, k;
            for (p_1137->g_87 = (-14); (p_1137->g_87 >= 36); p_1137->g_87 = safe_add_func_uint16_t_u_u(p_1137->g_87, 7))
            { /* block id: 147 */
                l_453 = p_55;
            }
            for (p_1137->g_106 = 29; (p_1137->g_106 == 6); --p_1137->g_106)
            { /* block id: 152 */
                VECTOR(int8_t, 4) l_465 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 9L), 9L);
                int8_t *l_473 = (void*)0;
                int8_t **l_472 = &l_473;
                int16_t l_478 = (-7L);
                int32_t l_479 = 1L;
                uint32_t l_490 = 1UL;
                VECTOR(int8_t, 8) l_499 = (VECTOR(int8_t, 8))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, (-4L)), (-4L)), (-4L), 3L, (-4L));
                VECTOR(int32_t, 4) l_532 = (VECTOR(int32_t, 4))(0x3565B3F2L, (VECTOR(int32_t, 2))(0x3565B3F2L, 0L), 0L);
                uint16_t *l_533 = (void*)0;
                uint16_t *l_534 = (void*)0;
                uint16_t *l_535 = (void*)0;
                uint16_t *l_536 = (void*)0;
                uint16_t *l_537 = (void*)0;
                uint16_t *l_538 = (void*)0;
                uint16_t *l_539[4];
                VECTOR(int32_t, 16) l_572 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 1L), 1L), 1L, (-10L), 1L, (VECTOR(int32_t, 2))((-10L), 1L), (VECTOR(int32_t, 2))((-10L), 1L), (-10L), 1L, (-10L), 1L);
                VECTOR(int32_t, 2) l_573 = (VECTOR(int32_t, 2))(0x351997BFL, (-7L));
                int64_t l_591 = 0x629B2F83FB655FB7L;
                int i;
                for (i = 0; i < 4; i++)
                    l_539[i] = (void*)0;
                (1 + 1);
            }
        }
    }
    return (*l_561);
}


/* ------------------------------------------ */
/* 
 * reads : p_1137->g_94 p_1137->g_80 p_1137->g_76 p_1137->g_117 p_1137->g_87 p_1137->g_3 p_1137->g_89 p_1137->g_137 p_1137->g_144 p_1137->g_147 p_1137->g_81 p_1137->g_158 p_1137->g_140 p_1137->g_149 p_1137->g_185 p_1137->g_11 p_1137->g_204 p_1137->g_106 p_1137->g_198 p_1137->g_95 p_1137->g_264 p_1137->g_238 p_1137->g_84 p_1137->g_290 p_1137->g_403 p_1137->g_404 p_1137->g_351
 * writes: p_1137->g_95 p_1137->g_76 p_1137->g_106 p_1137->g_120 p_1137->g_128 p_1137->g_140 p_1137->g_144 p_1137->g_87 p_1137->g_81 p_1137->g_80 p_1137->g_89 p_1137->g_198 p_1137->g_290
 */
uint64_t  func_57(int32_t * p_58, int32_t * p_59, int32_t  p_60, struct S0 * p_1137)
{ /* block id: 25 */
    VECTOR(int32_t, 16) l_91 = (VECTOR(int32_t, 16))(0x44B0CEC9L, (VECTOR(int32_t, 4))(0x44B0CEC9L, (VECTOR(int32_t, 2))(0x44B0CEC9L, (-6L)), (-6L)), (-6L), 0x44B0CEC9L, (-6L), (VECTOR(int32_t, 2))(0x44B0CEC9L, (-6L)), (VECTOR(int32_t, 2))(0x44B0CEC9L, (-6L)), 0x44B0CEC9L, (-6L), 0x44B0CEC9L, (-6L));
    int64_t l_121 = 5L;
    int8_t *l_125 = &p_1137->g_106;
    uint64_t *l_154 = (void*)0;
    VECTOR(int8_t, 8) l_175 = (VECTOR(int8_t, 8))(0x1AL, (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, 0x15L), 0x15L), 0x15L, 0x1AL, 0x15L);
    uint32_t *l_189 = (void*)0;
    VECTOR(int32_t, 8) l_216 = (VECTOR(int32_t, 8))(0x1AEFDAD2L, (VECTOR(int32_t, 4))(0x1AEFDAD2L, (VECTOR(int32_t, 2))(0x1AEFDAD2L, 0x3AFCB356L), 0x3AFCB356L), 0x3AFCB356L, 0x1AEFDAD2L, 0x3AFCB356L);
    int32_t l_239 = 6L;
    int32_t l_240 = (-8L);
    VECTOR(uint32_t, 8) l_255 = (VECTOR(uint32_t, 8))(4294967291UL, (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 0UL), 0UL), 0UL, 4294967291UL, 0UL);
    VECTOR(int64_t, 16) l_256 = (VECTOR(int64_t, 16))(0x1ACBE982E7F53028L, (VECTOR(int64_t, 4))(0x1ACBE982E7F53028L, (VECTOR(int64_t, 2))(0x1ACBE982E7F53028L, 0x49ECE6E98DB74E30L), 0x49ECE6E98DB74E30L), 0x49ECE6E98DB74E30L, 0x1ACBE982E7F53028L, 0x49ECE6E98DB74E30L, (VECTOR(int64_t, 2))(0x1ACBE982E7F53028L, 0x49ECE6E98DB74E30L), (VECTOR(int64_t, 2))(0x1ACBE982E7F53028L, 0x49ECE6E98DB74E30L), 0x1ACBE982E7F53028L, 0x49ECE6E98DB74E30L, 0x1ACBE982E7F53028L, 0x49ECE6E98DB74E30L);
    VECTOR(uint8_t, 4) l_261 = (VECTOR(uint8_t, 4))(0xB4L, (VECTOR(uint8_t, 2))(0xB4L, 0UL), 0UL);
    uint8_t *l_275[7][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int8_t **l_281[5];
    int8_t ***l_280 = &l_281[0];
    int64_t *l_287 = &p_1137->g_198;
    int64_t **l_286 = &l_287;
    uint64_t *l_288 = (void*)0;
    uint64_t *l_289[3];
    int8_t l_293 = 0L;
    int32_t l_294 = 0L;
    uint32_t l_295[8];
    int64_t **l_305 = &l_287;
    VECTOR(uint8_t, 4) l_344 = (VECTOR(uint8_t, 4))(0xDEL, (VECTOR(uint8_t, 2))(0xDEL, 0x6BL), 0x6BL);
    int32_t l_377 = 0x10F68CB7L;
    uint64_t l_378[2][4] = {{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}};
    uint32_t l_390[10];
    uint8_t l_397 = 6UL;
    uint32_t l_400 = 1UL;
    VECTOR(int32_t, 2) l_402 = (VECTOR(int32_t, 2))(0x6FD42F38L, (-1L));
    VECTOR(uint8_t, 4) l_405 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL);
    int8_t l_410 = (-2L);
    uint32_t l_413 = 0xC822394BL;
    uint32_t l_415 = 0x487C5DDDL;
    int8_t l_419 = (-1L);
    uint32_t l_420[8][8][4] = {{{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L}},{{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L}},{{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L}},{{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L}},{{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L}},{{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L}},{{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L}},{{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L},{0UL,4294967288UL,0x152E0C03L,0x09C0F3B6L}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_281[i] = &l_125;
    for (i = 0; i < 3; i++)
        l_289[i] = &p_1137->g_290;
    for (i = 0; i < 8; i++)
        l_295[i] = 8UL;
    for (i = 0; i < 10; i++)
        l_390[i] = 0UL;
    if (((VECTOR(int32_t, 16))(l_91.s91981f0b5f9d9d8a)).sd)
    { /* block id: 26 */
        int32_t *l_92 = (void*)0;
        uint8_t *l_102 = &p_1137->g_76;
        int8_t *l_105 = &p_1137->g_106;
        uint16_t l_141 = 65535UL;
        VECTOR(int32_t, 4) l_174 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L);
        uint64_t *l_192[2][1][9] = {{{&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87}},{{&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87,&p_1137->g_87}}};
        int64_t *l_196 = &l_121;
        int64_t *l_197[1];
        int32_t **l_199 = &p_1137->g_95;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_197[i] = &p_1137->g_198;
        (*p_1137->g_94) = l_92;
        if ((p_60 > (p_60 >= ((safe_mod_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(2L, ((*l_105) = (safe_div_func_uint8_t_u_u(p_1137->g_80[3], ((*l_102)++)))))), (safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 4))((safe_mul_func_uint8_t_u_u(246UL, p_60)), 0x52L, (-3L), 0x70L)).w, 2)))) && (safe_mul_func_uint8_t_u_u(((l_91.sb , ((safe_sub_func_int16_t_s_s((safe_sub_func_int16_t_s_s((l_91.sc > ((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 8))(p_1137->g_117.s4f5abe08)).s0710011732650042, ((VECTOR(int32_t, 2))(0L, 0x30BE999AL)).xxxxyyxyyyxxxyyy))).hi)).s3 == (p_1137->g_120 = ((((safe_div_func_int64_t_s_s(0x30D2C86D4C770407L, p_1137->g_87)) <= (-8L)) <= p_1137->g_3) == 0x7AL))) != p_60)), p_60)), l_121)) & 0x1A71B093L)) ^ p_60), 0xD0L))))))
        { /* block id: 31 */
            uint32_t l_122 = 4294967286UL;
            int8_t **l_126 = &l_105;
            int16_t *l_127 = &p_1137->g_128;
            int32_t l_138[2];
            int16_t *l_139 = &p_1137->g_140;
            int32_t *l_142 = (void*)0;
            int32_t *l_143[5] = {&p_1137->g_144,&p_1137->g_144,&p_1137->g_144,&p_1137->g_144,&p_1137->g_144};
            int i;
            for (i = 0; i < 2; i++)
                l_138[i] = 7L;
            p_1137->g_144 |= ((!1UL) || (((l_91.s9 , (((*l_127) = (((*l_102) &= (l_122++)) & ((l_125 = l_102) != ((*l_126) = &p_1137->g_106)))) < ((*l_139) = (safe_lshift_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(p_1137->g_89[1][0], 2)) | ((safe_mul_func_int16_t_s_s((safe_add_func_int8_t_s_s((p_58 != (void*)0), ((((VECTOR(int32_t, 8))(p_1137->g_137.xxyxyxyy)).s7 > (l_91.s6 > l_91.se)) & p_1137->g_117.s3))), p_60)) >= p_60)), l_138[1]))))) , l_141) == p_1137->g_137.y));
        }
        else
        { /* block id: 39 */
            uint64_t *l_152[5][9][5] = {{{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0}},{{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0}},{{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0}},{{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0}},{{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0},{&p_1137->g_87,(void*)0,&p_1137->g_87,&p_1137->g_87,(void*)0}}};
            uint64_t **l_153 = &l_152[0][5][0];
            int64_t *l_157 = &l_121;
            int32_t l_161 = 0x09F941FDL;
            int32_t *l_162 = (void*)0;
            int32_t *l_164 = &p_1137->g_144;
            int i, j, k;
            (*l_164) = (((*l_102) = (((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(((((((p_60 , p_1137->g_147) != (void*)0) , (safe_mod_func_int64_t_s_s((((p_1137->g_81[0][5] , ((((*l_153) = l_152[0][5][0]) == l_154) || ((safe_sub_func_int64_t_s_s(((*l_157) &= p_60), ((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 4))(p_1137->g_158.s6067)), (int32_t)(-5L), (int32_t)(safe_div_func_int16_t_s_s(0L, p_60))))).yywxzywx, ((VECTOR(uint32_t, 8))(8UL))))).s2)) | p_1137->g_76))) , p_60) != p_60), (-1L)))) > p_1137->g_80[2]) , p_60) >= p_60), p_60, ((VECTOR(int8_t, 2))((-1L))), ((VECTOR(int8_t, 4))(0x0AL)), 0L, ((VECTOR(int8_t, 2))(0L)), 8L, (-1L), (-1L), 0x51L, (-1L))).s4, 0x01L)) || l_161) && l_121)) & p_60);
        }
        for (p_60 = 14; (p_60 < 21); p_60 = safe_add_func_uint16_t_u_u(p_60, 3))
        { /* block id: 47 */
            VECTOR(int32_t, 16) l_173 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x37E2C827L), 0x37E2C827L), 0x37E2C827L, (-6L), 0x37E2C827L, (VECTOR(int32_t, 2))((-6L), 0x37E2C827L), (VECTOR(int32_t, 2))((-6L), 0x37E2C827L), (-6L), 0x37E2C827L, (-6L), 0x37E2C827L);
            int64_t *l_176 = &l_121;
            uint64_t *l_186 = &p_1137->g_87;
            uint32_t *l_187 = &p_1137->g_81[0][1];
            int32_t *l_188 = (void*)0;
            int i;
            l_91.sc = (safe_add_func_uint64_t_u_u(p_1137->g_140, ((safe_mod_func_int32_t_s_s((((*l_176) = (~((safe_div_func_uint32_t_u_u(p_1137->g_149.s7, ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x6EE4F3F7L, 4L)).yxyyyyxy)), ((VECTOR(int32_t, 2))(l_173.sc0)).yxyyxyxy, ((VECTOR(int32_t, 16))(l_174.wzwzxxxwxywwyyxw)).odd))).s0)) | ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_175.s4327757006734203)).even)).s6))) & 0x592668A2AEEF2259L), (safe_lshift_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), ((!(safe_div_func_int16_t_s_s((-1L), (l_173.s6 & ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))((-10L), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(5L, 1L)).yxxy, ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))((-1L), (safe_sub_func_int16_t_s_s(p_1137->g_89[1][2], (((*l_186) ^= ((void*)0 != p_1137->g_185)) >= ((((VECTOR(uint32_t, 2))(1UL, 0x52628C69L)).hi | ((*l_187) = FAKE_DIVERGE(p_1137->group_2_offset, get_group_id(2), 10))) != (((p_1137->g_76 < 1UL) , &p_1137->g_144) != (void*)0))))), 0x1366B1B6L, 0L)).hi, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0L))))).xxxy))).wwxzzwzy)), 0L, ((VECTOR(int32_t, 4))((-1L))), 1L, 0x3B026917L)), ((VECTOR(int32_t, 16))(0x68902DFEL)), ((VECTOR(int32_t, 16))((-4L)))))).s5)))) == p_60))) == 0x28338463L), l_173.s6)))) && p_1137->g_144)));
        }
        (*l_199) = func_62(p_59, p_60, ((l_189 != &p_1137->g_81[0][9]) , (l_91.s4 ^= (safe_sub_func_uint8_t_u_u(((void*)0 == l_192[0][0][4]), (safe_add_func_int8_t_s_s(((safe_unary_minus_func_uint64_t_u((((l_174.x = ((*l_196) = (+p_1137->g_149.s1))) | 0x45193B0A3500CD51L) , (((&l_105 == &l_125) , l_175.s4) < p_1137->g_137.y)))) < p_60), 0x03L)))))), p_1137->g_80[2], p_60, p_1137);
    }
    else
    { /* block id: 57 */
        uint8_t *l_207[7][1] = {{&p_1137->g_80[1]},{&p_1137->g_80[1]},{&p_1137->g_80[1]},{&p_1137->g_80[1]},{&p_1137->g_80[1]},{&p_1137->g_80[1]},{&p_1137->g_80[1]}};
        int64_t l_208 = 4L;
        int32_t l_209[10][7] = {{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L},{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L},{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L},{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L},{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L},{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L},{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L},{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L},{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L},{5L,0L,0L,0x78804B5BL,0x182E622AL,(-1L),8L}};
        int64_t *l_221 = (void*)0;
        int64_t *l_222 = &p_1137->g_198;
        int32_t *l_223 = (void*)0;
        int32_t *l_224[5];
        uint16_t *l_237[4][4][3] = {{{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238}},{{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238}},{{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238}},{{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238},{&p_1137->g_238,&p_1137->g_238,&p_1137->g_238}}};
        uint32_t *l_241 = &p_1137->g_81[1][2];
        int8_t l_246 = 0x3BL;
        int32_t **l_247[7];
        int32_t *l_248 = &l_239;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_224[i] = (void*)0;
        for (i = 0; i < 7; i++)
            l_247[i] = &p_1137->g_95;
        l_91.sd = ((safe_mul_func_uint16_t_u_u((((safe_add_func_int32_t_s_s(l_175.s4, ((void*)0 != l_154))) < ((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(p_1137->g_204.s28a0d4a109fdd9fc)).odd)), ((safe_lshift_func_uint8_t_u_u((p_1137->g_106 , (p_1137->g_80[2]--)), ((safe_mul_func_uint8_t_u_u(l_121, ((safe_lshift_func_int8_t_s_u(p_60, 4)) | 4294967295UL))) <= (((VECTOR(int32_t, 16))(l_216.s2715215245250340)).sc > 0L)))) > 5UL), 0x59ADB9C4L, 0xB515C9F2L, 0x54FC8DD5L, 4294967288UL, ((VECTOR(uint32_t, 2))(0xF961AB1BL)), 0x27B40A88L)).s72))).xyyyxxxy)).s7 && (-2L)) != 0xEE52D582L)) > p_1137->g_137.y), l_121)) <= p_1137->g_198);
        l_248 = func_62(func_62(((2L | (0L < (safe_lshift_func_uint8_t_u_s(((safe_rshift_func_uint8_t_u_s(((+(l_216.s3 = (l_91.sf &= (l_208 == ((*l_222) = (l_209[9][2] = (&p_1137->g_163[0][0][0] != &p_1137->g_163[0][0][4]))))))) ^ (safe_lshift_func_uint16_t_u_s((safe_div_func_int64_t_s_s(((safe_add_func_uint16_t_u_u((((p_1137->g_106 = ((VECTOR(int8_t, 16))((safe_mod_func_uint32_t_u_u(((safe_mod_func_int32_t_s_s((l_240 = (safe_lshift_func_uint16_t_u_u((l_239 = 0x2BE2L), 6))), ((*l_241) &= p_1137->g_149.s6))) ^ (safe_add_func_uint8_t_u_u((safe_add_func_int8_t_s_s(p_1137->g_80[0], (((*p_1137->g_95) > p_1137->g_204.s1) & p_60))), p_1137->g_204.s8))), 4294967295UL)), ((VECTOR(int8_t, 4))(0x10L)), 3L, l_175.s7, ((VECTOR(int8_t, 4))((-1L))), 0x65L, 8L, ((VECTOR(int8_t, 2))(0x36L)), 6L)).se) < 0L) | 0xC0L), 1L)) && l_175.s6), GROUP_DIVERGE(0, 1))), 1))), 2)) >= 0x53055AC8L), 2)))) , (*p_1137->g_94)), p_60, p_1137->g_204.s6, p_60, p_1137->g_89[1][2], p_1137), p_1137->g_204.s9, p_60, l_175.s5, l_246, p_1137);
    }
    if ((safe_div_func_uint32_t_u_u(((safe_sub_func_int8_t_s_s(((p_1137->g_290 &= (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_255.s76174132)))).s34, ((VECTOR(uint32_t, 2))(3UL, 0UL))))).lo, (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_256.sde83)), (safe_mul_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(65535UL, 65535UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_261.yzyxyxxx)).s23)).xxyxxxyxyxxxxxxy)).s73, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((l_175.s7 , (safe_rshift_func_uint8_t_u_u((((VECTOR(uint32_t, 2))(p_1137->g_264.xy)).hi == ((((VECTOR(uint16_t, 4))((safe_sub_func_uint32_t_u_u((safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_u(((safe_add_func_int16_t_s_s((((((((l_216.s0 = ((l_91.s6 = ((l_240 = (+((VECTOR(uint8_t, 4))(0xDEL, 2UL, 1UL, 255UL)).z)) != ((safe_rshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_s(((((*l_280) = &l_125) == (l_255.s2 , ((p_1137->g_238 >= (safe_mod_func_int16_t_s_s((p_60 , 0L), (safe_mul_func_uint8_t_u_u((+((((*l_286) = &p_1137->g_198) == &l_121) & p_1137->g_3)), p_1137->g_137.x))))) , (void*)0))) | (*p_1137->g_95)), l_91.s1)), 5)) == 4294967288UL))) , p_60)) , l_175.s2) >= 4L) != 0UL) | 0xB4L) < 0xE8DCDA37L) & (*p_1137->g_95)), 1UL)) != l_256.s6), 4)), FAKE_DIVERGE(p_1137->local_2_offset, get_local_id(2), 10))), FAKE_DIVERGE(p_1137->global_1_offset, get_global_id(1), 10))), p_60, 1UL, 1UL)).z ^ 0x018EL) , 0xDB8C9FC6L)), 2))) & 0x08EB28AE3A1A5540L), ((VECTOR(uint8_t, 2))(1UL)), 1UL)).hi))))).yyxx)), 7UL, 1UL)).lo, ((VECTOR(uint16_t, 4))(65526UL))))).z, 65535UL)) , 0xFDEBL), 1L)), ((VECTOR(int64_t, 4))((-7L))), 0x27F8506E6F45A59EL, p_1137->g_84.y, 0L, p_1137->g_158.s7, l_261.z, 0L, 1L)).s5557)).z > p_60)))) , p_60), 1L)) >= p_1137->g_204.sd), l_239)))
    { /* block id: 76 */
        int32_t *l_291[3];
        int8_t l_292 = 2L;
        int64_t ***l_300 = &l_286;
        int64_t ***l_301 = (void*)0;
        int64_t **l_303 = &l_287;
        int64_t ***l_302[6] = {&l_303,&l_303,&l_303,&l_303,&l_303,&l_303};
        int8_t ***l_308[2][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint16_t *l_313 = &p_1137->g_238;
        int32_t l_333[7] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
        int i, j;
        for (i = 0; i < 3; i++)
            l_291[i] = &l_240;
        ++l_295[7];
    }
    else
    { /* block id: 124 */
        int32_t l_401[10][10] = {{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L},{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L},{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L},{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L},{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L},{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L},{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L},{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L},{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L},{0x6C7C1968L,3L,(-4L),0x351946FFL,(-10L),(-10L),0x351946FFL,(-4L),3L,0x6C7C1968L}};
        uint32_t *l_414 = &p_1137->g_318;
        int32_t l_416 = 0L;
        int32_t l_417 = (-5L);
        int32_t *l_418[1][2][6];
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 6; k++)
                    l_418[i][j][k] = &l_294;
            }
        }
        l_400 = 1L;
        l_416 = ((l_401[8][3] , ((VECTOR(int32_t, 4))(0x69538FD0L, ((VECTOR(int32_t, 2))(l_402.yx)), 3L)).x) != ((*p_59) ^ ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_1137->g_403.s67)), 0UL, 0x898F2601L)), ((VECTOR(uint32_t, 4))((((l_294 = ((VECTOR(int8_t, 4))(p_1137->g_404.s0124)).w) || ((VECTOR(uint8_t, 2))(l_405.xz)).odd) != (((safe_mod_func_int16_t_s_s((l_410 == (((safe_add_func_uint32_t_u_u(l_401[3][5], ((p_59 == (l_413 , l_414)) != (l_401[9][9] != ((**p_1137->g_94) , l_415))))) == FAKE_DIVERGE(p_1137->local_2_offset, get_local_id(2), 10)) <= p_60)), p_1137->g_140)) ^ p_1137->g_89[0][1]) >= p_1137->g_351.s7)), 0x3E5AE96CL, 0x3D57967BL, 0x11D27A37L)))).s1));
        ++l_420[2][3][1];
    }
    return p_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_1137->g_76 p_1137->g_3 p_1137->g_81 p_1137->g_84 p_1137->g_11
 * writes: p_1137->g_76 p_1137->g_80 p_1137->g_81 p_1137->g_87 p_1137->g_89
 */
int32_t * func_62(int32_t * p_63, uint8_t  p_64, uint8_t  p_65, uint32_t  p_66, uint64_t  p_67, struct S0 * p_1137)
{ /* block id: 13 */
    int32_t *l_69 = &p_1137->g_3;
    int32_t **l_68[8] = {&l_69,&l_69,&l_69,&l_69,&l_69,&l_69,&l_69,&l_69};
    uint8_t *l_74 = (void*)0;
    uint8_t *l_75 = &p_1137->g_76;
    uint8_t *l_79 = &p_1137->g_80[2];
    VECTOR(uint8_t, 4) l_85 = (VECTOR(uint8_t, 4))(0xF9L, (VECTOR(uint8_t, 2))(0xF9L, 0x51L), 0x51L);
    uint64_t *l_86 = &p_1137->g_87;
    uint8_t l_88 = 0x98L;
    int i;
    p_63 = &p_1137->g_3;
lbl_90:
    p_1137->g_81[0][9] = (safe_mod_func_uint8_t_u_u((++p_65), ((*l_79) = (++(*l_75)))));
    p_1137->g_89[1][2] = (((*l_69) < p_1137->g_81[0][9]) , (((safe_add_func_uint64_t_u_u(((*l_86) = (p_67 = (((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 2))(p_1137->g_84.xy)), ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(l_85.ywywxxwwzzywwwwx)).lo)).s02)), 6UL, 0xB6L)).xzxzyyyx, (uint8_t)((7L < 0xA7B9L) ^ ((void*)0 == &p_1137->g_3))))).s07))).hi == (((((*l_75) = (&l_69 == (void*)0)) > p_1137->g_11) <= p_66) , p_66)))), 18446744073709551615UL)) , l_88) >= p_66));
    if (p_65)
        goto lbl_90;
    return &p_1137->g_3;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1138;
    struct S0* p_1137 = &c_1138;
    struct S0 c_1139 = {
        4L, // p_1137->g_3
        0xD915L, // p_1137->g_11
        255UL, // p_1137->g_76
        {0x30L,0x30L,0x30L,0x30L,0x30L}, // p_1137->g_80
        {{0UL,0xF9B03714L,4294967294UL,0xF9B03714L,0UL,0UL,0xF9B03714L,4294967294UL,0xF9B03714L,0UL},{0UL,0xF9B03714L,4294967294UL,0xF9B03714L,0UL,0UL,0xF9B03714L,4294967294UL,0xF9B03714L,0UL},{0UL,0xF9B03714L,4294967294UL,0xF9B03714L,0UL,0UL,0xF9B03714L,4294967294UL,0xF9B03714L,0UL}}, // p_1137->g_81
        (VECTOR(uint8_t, 2))(254UL, 0UL), // p_1137->g_84
        0x1D8B2D29C6149AF4L, // p_1137->g_87
        {{0x1B33B75CL,0x39BE056EL,0x1B33B75CL},{0x1B33B75CL,0x39BE056EL,0x1B33B75CL},{0x1B33B75CL,0x39BE056EL,0x1B33B75CL},{0x1B33B75CL,0x39BE056EL,0x1B33B75CL},{0x1B33B75CL,0x39BE056EL,0x1B33B75CL},{0x1B33B75CL,0x39BE056EL,0x1B33B75CL},{0x1B33B75CL,0x39BE056EL,0x1B33B75CL}}, // p_1137->g_89
        (void*)0, // p_1137->g_93
        &p_1137->g_3, // p_1137->g_95
        &p_1137->g_95, // p_1137->g_94
        0x5AL, // p_1137->g_106
        (VECTOR(int32_t, 16))(0x62F62330L, (VECTOR(int32_t, 4))(0x62F62330L, (VECTOR(int32_t, 2))(0x62F62330L, 8L), 8L), 8L, 0x62F62330L, 8L, (VECTOR(int32_t, 2))(0x62F62330L, 8L), (VECTOR(int32_t, 2))(0x62F62330L, 8L), 0x62F62330L, 8L, 0x62F62330L, 8L), // p_1137->g_117
        (-1L), // p_1137->g_120
        0x1ADEL, // p_1137->g_128
        (VECTOR(int32_t, 2))(0x5E7E0673L, 0x4D688670L), // p_1137->g_137
        1L, // p_1137->g_140
        0x04500A6BL, // p_1137->g_144
        (VECTOR(int8_t, 8))(0x61L, (VECTOR(int8_t, 4))(0x61L, (VECTOR(int8_t, 2))(0x61L, 0x6FL), 0x6FL), 0x6FL, 0x61L, 0x6FL), // p_1137->g_149
        (void*)0, // p_1137->g_148
        &p_1137->g_148, // p_1137->g_147
        (VECTOR(int32_t, 8))(0x4A65C328L, (VECTOR(int32_t, 4))(0x4A65C328L, (VECTOR(int32_t, 2))(0x4A65C328L, 0x6B0EF2B8L), 0x6B0EF2B8L), 0x6B0EF2B8L, 0x4A65C328L, 0x6B0EF2B8L), // p_1137->g_158
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1137->g_163
        (void*)0, // p_1137->g_185
        0x1DDD8C5885194D58L, // p_1137->g_198
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967291UL), 4294967291UL), 4294967291UL, 4294967295UL, 4294967291UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967291UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967291UL), 4294967295UL, 4294967291UL, 4294967295UL, 4294967291UL), // p_1137->g_204
        0xE1E6L, // p_1137->g_238
        (VECTOR(uint32_t, 4))(0x4B36488EL, (VECTOR(uint32_t, 2))(0x4B36488EL, 0xBA9483A5L), 0xBA9483A5L), // p_1137->g_264
        0xE1AD130623DA9A9FL, // p_1137->g_290
        &p_1137->g_198, // p_1137->g_299
        &p_1137->g_299, // p_1137->g_298
        (void*)0, // p_1137->g_304
        1UL, // p_1137->g_318
        &p_1137->g_95, // p_1137->g_319
        &p_1137->g_304, // p_1137->g_327
        (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x09346069L), 0x09346069L), 0x09346069L, 6L, 0x09346069L), // p_1137->g_351
        0x42F2ACE395418106L, // p_1137->g_359
        (void*)0, // p_1137->g_360
        (VECTOR(int16_t, 4))(0x303CL, (VECTOR(int16_t, 2))(0x303CL, 1L), 1L), // p_1137->g_366
        &p_1137->g_147, // p_1137->g_370
        (VECTOR(uint32_t, 8))(0x7155A935L, (VECTOR(uint32_t, 4))(0x7155A935L, (VECTOR(uint32_t, 2))(0x7155A935L, 0x474C6900L), 0x474C6900L), 0x474C6900L, 0x7155A935L, 0x474C6900L), // p_1137->g_403
        (VECTOR(int8_t, 8))(0x19L, (VECTOR(int8_t, 4))(0x19L, (VECTOR(int8_t, 2))(0x19L, 1L), 1L), 1L, 0x19L, 1L), // p_1137->g_404
        (VECTOR(int16_t, 8))(0x14B9L, (VECTOR(int16_t, 4))(0x14B9L, (VECTOR(int16_t, 2))(0x14B9L, 1L), 1L), 1L, 0x14B9L, 1L), // p_1137->g_491
        (VECTOR(uint16_t, 8))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0x2CECL), 0x2CECL), 0x2CECL, 65529UL, 0x2CECL), // p_1137->g_492
        &p_1137->g_95, // p_1137->g_506
        0L, // p_1137->g_531
        &p_1137->g_95, // p_1137->g_543
        (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0xAA56L), 0xAA56L), 0xAA56L, 8UL, 0xAA56L), // p_1137->g_550
        (void*)0, // p_1137->g_559
        &p_1137->g_559, // p_1137->g_558
        &p_1137->g_558, // p_1137->g_557
        &p_1137->g_95, // p_1137->g_560
        (VECTOR(int32_t, 2))((-9L), 0x3DB2B7EAL), // p_1137->g_569
        (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0L), 0L), 0L, 8L, 0L, (VECTOR(int32_t, 2))(8L, 0L), (VECTOR(int32_t, 2))(8L, 0L), 8L, 0L, 8L, 0L), // p_1137->g_571
        (VECTOR(int32_t, 2))((-8L), 0x0165D1BEL), // p_1137->g_574
        {0x43L,0x43L,0x43L,0x43L,0x43L,0x43L,0x43L,0x43L,0x43L,0x43L}, // p_1137->g_593
        (VECTOR(int16_t, 4))(0x78DBL, (VECTOR(int16_t, 2))(0x78DBL, 0L), 0L), // p_1137->g_624
        (VECTOR(int16_t, 2))(0x34D3L, 0x3428L), // p_1137->g_630
        (VECTOR(int16_t, 4))(0x36CEL, (VECTOR(int16_t, 2))(0x36CEL, 0x40C9L), 0x40C9L), // p_1137->g_631
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-10L)), (-10L)), // p_1137->g_634
        (VECTOR(int16_t, 16))(0x0FCEL, (VECTOR(int16_t, 4))(0x0FCEL, (VECTOR(int16_t, 2))(0x0FCEL, 1L), 1L), 1L, 0x0FCEL, 1L, (VECTOR(int16_t, 2))(0x0FCEL, 1L), (VECTOR(int16_t, 2))(0x0FCEL, 1L), 0x0FCEL, 1L, 0x0FCEL, 1L), // p_1137->g_641
        &p_1137->g_95, // p_1137->g_659
        &p_1137->g_659, // p_1137->g_658
        (VECTOR(int64_t, 8))(0x318B4A7C3DE9FD28L, (VECTOR(int64_t, 4))(0x318B4A7C3DE9FD28L, (VECTOR(int64_t, 2))(0x318B4A7C3DE9FD28L, 0x678B6CCB8E1EE941L), 0x678B6CCB8E1EE941L), 0x678B6CCB8E1EE941L, 0x318B4A7C3DE9FD28L, 0x678B6CCB8E1EE941L), // p_1137->g_684
        (VECTOR(int8_t, 4))(0x08L, (VECTOR(int8_t, 2))(0x08L, 0L), 0L), // p_1137->g_685
        (VECTOR(uint32_t, 8))(0x69E0D693L, (VECTOR(uint32_t, 4))(0x69E0D693L, (VECTOR(uint32_t, 2))(0x69E0D693L, 0x4E6439E1L), 0x4E6439E1L), 0x4E6439E1L, 0x69E0D693L, 0x4E6439E1L), // p_1137->g_718
        (VECTOR(int8_t, 4))(0x36L, (VECTOR(int8_t, 2))(0x36L, 0L), 0L), // p_1137->g_745
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x3207L), 0x3207L), // p_1137->g_749
        0x38L, // p_1137->g_757
        (VECTOR(int32_t, 2))(0x4454F0BCL, 7L), // p_1137->g_789
        &p_1137->g_559, // p_1137->g_846
        &p_1137->g_846, // p_1137->g_845
        0x4304B48AL, // p_1137->g_857
        0xEFL, // p_1137->g_870
        (VECTOR(int32_t, 2))((-1L), 0x2CB1027AL), // p_1137->g_891
        9UL, // p_1137->g_921
        (void*)0, // p_1137->g_936
        &p_1137->g_936, // p_1137->g_935
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 3UL), 3UL), 3UL, 0UL, 3UL, (VECTOR(uint16_t, 2))(0UL, 3UL), (VECTOR(uint16_t, 2))(0UL, 3UL), 0UL, 3UL, 0UL, 3UL), // p_1137->g_956
        (VECTOR(int16_t, 4))(0x1B4DL, (VECTOR(int16_t, 2))(0x1B4DL, 1L), 1L), // p_1137->g_961
        &p_1137->g_144, // p_1137->g_970
        &p_1137->g_870, // p_1137->g_1055
        {{&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055},{&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055},{&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055},{&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055},{&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055},{&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055},{&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055,&p_1137->g_1055}}, // p_1137->g_1054
        (void*)0, // p_1137->g_1060
        {{{(void*)0,&p_1137->g_144,&p_1137->g_3,&p_1137->g_144,(void*)0,(void*)0,&p_1137->g_144}},{{(void*)0,&p_1137->g_144,&p_1137->g_3,&p_1137->g_144,(void*)0,(void*)0,&p_1137->g_144}},{{(void*)0,&p_1137->g_144,&p_1137->g_3,&p_1137->g_144,(void*)0,(void*)0,&p_1137->g_144}},{{(void*)0,&p_1137->g_144,&p_1137->g_3,&p_1137->g_144,(void*)0,(void*)0,&p_1137->g_144}},{{(void*)0,&p_1137->g_144,&p_1137->g_3,&p_1137->g_144,(void*)0,(void*)0,&p_1137->g_144}}}, // p_1137->g_1062
        {&p_1137->g_95,&p_1137->g_95,&p_1137->g_95,&p_1137->g_95}, // p_1137->g_1064
        (void*)0, // p_1137->g_1106
        (VECTOR(int64_t, 2))((-4L), 5L), // p_1137->g_1123
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int64_t, 2))(0L, (-1L)), (VECTOR(int64_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L)), // p_1137->g_1124
        (VECTOR(int64_t, 4))(0x00851B75EE3D8B10L, (VECTOR(int64_t, 2))(0x00851B75EE3D8B10L, 0x0A020EE29ABB893DL), 0x0A020EE29ABB893DL), // p_1137->g_1127
        (VECTOR(int64_t, 16))(0x4613129792627331L, (VECTOR(int64_t, 4))(0x4613129792627331L, (VECTOR(int64_t, 2))(0x4613129792627331L, 1L), 1L), 1L, 0x4613129792627331L, 1L, (VECTOR(int64_t, 2))(0x4613129792627331L, 1L), (VECTOR(int64_t, 2))(0x4613129792627331L, 1L), 0x4613129792627331L, 1L, 0x4613129792627331L, 1L), // p_1137->g_1136
        sequence_input[get_global_id(0)], // p_1137->global_0_offset
        sequence_input[get_global_id(1)], // p_1137->global_1_offset
        sequence_input[get_global_id(2)], // p_1137->global_2_offset
        sequence_input[get_local_id(0)], // p_1137->local_0_offset
        sequence_input[get_local_id(1)], // p_1137->local_1_offset
        sequence_input[get_local_id(2)], // p_1137->local_2_offset
        sequence_input[get_group_id(0)], // p_1137->group_0_offset
        sequence_input[get_group_id(1)], // p_1137->group_1_offset
        sequence_input[get_group_id(2)], // p_1137->group_2_offset
    };
    c_1138 = c_1139;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1137);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1137->g_3, "p_1137->g_3", print_hash_value);
    transparent_crc(p_1137->g_11, "p_1137->g_11", print_hash_value);
    transparent_crc(p_1137->g_76, "p_1137->g_76", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1137->g_80[i], "p_1137->g_80[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1137->g_81[i][j], "p_1137->g_81[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1137->g_84.x, "p_1137->g_84.x", print_hash_value);
    transparent_crc(p_1137->g_84.y, "p_1137->g_84.y", print_hash_value);
    transparent_crc(p_1137->g_87, "p_1137->g_87", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1137->g_89[i][j], "p_1137->g_89[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1137->g_106, "p_1137->g_106", print_hash_value);
    transparent_crc(p_1137->g_117.s0, "p_1137->g_117.s0", print_hash_value);
    transparent_crc(p_1137->g_117.s1, "p_1137->g_117.s1", print_hash_value);
    transparent_crc(p_1137->g_117.s2, "p_1137->g_117.s2", print_hash_value);
    transparent_crc(p_1137->g_117.s3, "p_1137->g_117.s3", print_hash_value);
    transparent_crc(p_1137->g_117.s4, "p_1137->g_117.s4", print_hash_value);
    transparent_crc(p_1137->g_117.s5, "p_1137->g_117.s5", print_hash_value);
    transparent_crc(p_1137->g_117.s6, "p_1137->g_117.s6", print_hash_value);
    transparent_crc(p_1137->g_117.s7, "p_1137->g_117.s7", print_hash_value);
    transparent_crc(p_1137->g_117.s8, "p_1137->g_117.s8", print_hash_value);
    transparent_crc(p_1137->g_117.s9, "p_1137->g_117.s9", print_hash_value);
    transparent_crc(p_1137->g_117.sa, "p_1137->g_117.sa", print_hash_value);
    transparent_crc(p_1137->g_117.sb, "p_1137->g_117.sb", print_hash_value);
    transparent_crc(p_1137->g_117.sc, "p_1137->g_117.sc", print_hash_value);
    transparent_crc(p_1137->g_117.sd, "p_1137->g_117.sd", print_hash_value);
    transparent_crc(p_1137->g_117.se, "p_1137->g_117.se", print_hash_value);
    transparent_crc(p_1137->g_117.sf, "p_1137->g_117.sf", print_hash_value);
    transparent_crc(p_1137->g_120, "p_1137->g_120", print_hash_value);
    transparent_crc(p_1137->g_128, "p_1137->g_128", print_hash_value);
    transparent_crc(p_1137->g_137.x, "p_1137->g_137.x", print_hash_value);
    transparent_crc(p_1137->g_137.y, "p_1137->g_137.y", print_hash_value);
    transparent_crc(p_1137->g_140, "p_1137->g_140", print_hash_value);
    transparent_crc(p_1137->g_144, "p_1137->g_144", print_hash_value);
    transparent_crc(p_1137->g_149.s0, "p_1137->g_149.s0", print_hash_value);
    transparent_crc(p_1137->g_149.s1, "p_1137->g_149.s1", print_hash_value);
    transparent_crc(p_1137->g_149.s2, "p_1137->g_149.s2", print_hash_value);
    transparent_crc(p_1137->g_149.s3, "p_1137->g_149.s3", print_hash_value);
    transparent_crc(p_1137->g_149.s4, "p_1137->g_149.s4", print_hash_value);
    transparent_crc(p_1137->g_149.s5, "p_1137->g_149.s5", print_hash_value);
    transparent_crc(p_1137->g_149.s6, "p_1137->g_149.s6", print_hash_value);
    transparent_crc(p_1137->g_149.s7, "p_1137->g_149.s7", print_hash_value);
    transparent_crc(p_1137->g_158.s0, "p_1137->g_158.s0", print_hash_value);
    transparent_crc(p_1137->g_158.s1, "p_1137->g_158.s1", print_hash_value);
    transparent_crc(p_1137->g_158.s2, "p_1137->g_158.s2", print_hash_value);
    transparent_crc(p_1137->g_158.s3, "p_1137->g_158.s3", print_hash_value);
    transparent_crc(p_1137->g_158.s4, "p_1137->g_158.s4", print_hash_value);
    transparent_crc(p_1137->g_158.s5, "p_1137->g_158.s5", print_hash_value);
    transparent_crc(p_1137->g_158.s6, "p_1137->g_158.s6", print_hash_value);
    transparent_crc(p_1137->g_158.s7, "p_1137->g_158.s7", print_hash_value);
    transparent_crc(p_1137->g_198, "p_1137->g_198", print_hash_value);
    transparent_crc(p_1137->g_204.s0, "p_1137->g_204.s0", print_hash_value);
    transparent_crc(p_1137->g_204.s1, "p_1137->g_204.s1", print_hash_value);
    transparent_crc(p_1137->g_204.s2, "p_1137->g_204.s2", print_hash_value);
    transparent_crc(p_1137->g_204.s3, "p_1137->g_204.s3", print_hash_value);
    transparent_crc(p_1137->g_204.s4, "p_1137->g_204.s4", print_hash_value);
    transparent_crc(p_1137->g_204.s5, "p_1137->g_204.s5", print_hash_value);
    transparent_crc(p_1137->g_204.s6, "p_1137->g_204.s6", print_hash_value);
    transparent_crc(p_1137->g_204.s7, "p_1137->g_204.s7", print_hash_value);
    transparent_crc(p_1137->g_204.s8, "p_1137->g_204.s8", print_hash_value);
    transparent_crc(p_1137->g_204.s9, "p_1137->g_204.s9", print_hash_value);
    transparent_crc(p_1137->g_204.sa, "p_1137->g_204.sa", print_hash_value);
    transparent_crc(p_1137->g_204.sb, "p_1137->g_204.sb", print_hash_value);
    transparent_crc(p_1137->g_204.sc, "p_1137->g_204.sc", print_hash_value);
    transparent_crc(p_1137->g_204.sd, "p_1137->g_204.sd", print_hash_value);
    transparent_crc(p_1137->g_204.se, "p_1137->g_204.se", print_hash_value);
    transparent_crc(p_1137->g_204.sf, "p_1137->g_204.sf", print_hash_value);
    transparent_crc(p_1137->g_238, "p_1137->g_238", print_hash_value);
    transparent_crc(p_1137->g_264.x, "p_1137->g_264.x", print_hash_value);
    transparent_crc(p_1137->g_264.y, "p_1137->g_264.y", print_hash_value);
    transparent_crc(p_1137->g_264.z, "p_1137->g_264.z", print_hash_value);
    transparent_crc(p_1137->g_264.w, "p_1137->g_264.w", print_hash_value);
    transparent_crc(p_1137->g_290, "p_1137->g_290", print_hash_value);
    transparent_crc(p_1137->g_318, "p_1137->g_318", print_hash_value);
    transparent_crc(p_1137->g_351.s0, "p_1137->g_351.s0", print_hash_value);
    transparent_crc(p_1137->g_351.s1, "p_1137->g_351.s1", print_hash_value);
    transparent_crc(p_1137->g_351.s2, "p_1137->g_351.s2", print_hash_value);
    transparent_crc(p_1137->g_351.s3, "p_1137->g_351.s3", print_hash_value);
    transparent_crc(p_1137->g_351.s4, "p_1137->g_351.s4", print_hash_value);
    transparent_crc(p_1137->g_351.s5, "p_1137->g_351.s5", print_hash_value);
    transparent_crc(p_1137->g_351.s6, "p_1137->g_351.s6", print_hash_value);
    transparent_crc(p_1137->g_351.s7, "p_1137->g_351.s7", print_hash_value);
    transparent_crc(p_1137->g_359, "p_1137->g_359", print_hash_value);
    transparent_crc(p_1137->g_366.x, "p_1137->g_366.x", print_hash_value);
    transparent_crc(p_1137->g_366.y, "p_1137->g_366.y", print_hash_value);
    transparent_crc(p_1137->g_366.z, "p_1137->g_366.z", print_hash_value);
    transparent_crc(p_1137->g_366.w, "p_1137->g_366.w", print_hash_value);
    transparent_crc(p_1137->g_403.s0, "p_1137->g_403.s0", print_hash_value);
    transparent_crc(p_1137->g_403.s1, "p_1137->g_403.s1", print_hash_value);
    transparent_crc(p_1137->g_403.s2, "p_1137->g_403.s2", print_hash_value);
    transparent_crc(p_1137->g_403.s3, "p_1137->g_403.s3", print_hash_value);
    transparent_crc(p_1137->g_403.s4, "p_1137->g_403.s4", print_hash_value);
    transparent_crc(p_1137->g_403.s5, "p_1137->g_403.s5", print_hash_value);
    transparent_crc(p_1137->g_403.s6, "p_1137->g_403.s6", print_hash_value);
    transparent_crc(p_1137->g_403.s7, "p_1137->g_403.s7", print_hash_value);
    transparent_crc(p_1137->g_404.s0, "p_1137->g_404.s0", print_hash_value);
    transparent_crc(p_1137->g_404.s1, "p_1137->g_404.s1", print_hash_value);
    transparent_crc(p_1137->g_404.s2, "p_1137->g_404.s2", print_hash_value);
    transparent_crc(p_1137->g_404.s3, "p_1137->g_404.s3", print_hash_value);
    transparent_crc(p_1137->g_404.s4, "p_1137->g_404.s4", print_hash_value);
    transparent_crc(p_1137->g_404.s5, "p_1137->g_404.s5", print_hash_value);
    transparent_crc(p_1137->g_404.s6, "p_1137->g_404.s6", print_hash_value);
    transparent_crc(p_1137->g_404.s7, "p_1137->g_404.s7", print_hash_value);
    transparent_crc(p_1137->g_491.s0, "p_1137->g_491.s0", print_hash_value);
    transparent_crc(p_1137->g_491.s1, "p_1137->g_491.s1", print_hash_value);
    transparent_crc(p_1137->g_491.s2, "p_1137->g_491.s2", print_hash_value);
    transparent_crc(p_1137->g_491.s3, "p_1137->g_491.s3", print_hash_value);
    transparent_crc(p_1137->g_491.s4, "p_1137->g_491.s4", print_hash_value);
    transparent_crc(p_1137->g_491.s5, "p_1137->g_491.s5", print_hash_value);
    transparent_crc(p_1137->g_491.s6, "p_1137->g_491.s6", print_hash_value);
    transparent_crc(p_1137->g_491.s7, "p_1137->g_491.s7", print_hash_value);
    transparent_crc(p_1137->g_492.s0, "p_1137->g_492.s0", print_hash_value);
    transparent_crc(p_1137->g_492.s1, "p_1137->g_492.s1", print_hash_value);
    transparent_crc(p_1137->g_492.s2, "p_1137->g_492.s2", print_hash_value);
    transparent_crc(p_1137->g_492.s3, "p_1137->g_492.s3", print_hash_value);
    transparent_crc(p_1137->g_492.s4, "p_1137->g_492.s4", print_hash_value);
    transparent_crc(p_1137->g_492.s5, "p_1137->g_492.s5", print_hash_value);
    transparent_crc(p_1137->g_492.s6, "p_1137->g_492.s6", print_hash_value);
    transparent_crc(p_1137->g_492.s7, "p_1137->g_492.s7", print_hash_value);
    transparent_crc(p_1137->g_531, "p_1137->g_531", print_hash_value);
    transparent_crc(p_1137->g_550.s0, "p_1137->g_550.s0", print_hash_value);
    transparent_crc(p_1137->g_550.s1, "p_1137->g_550.s1", print_hash_value);
    transparent_crc(p_1137->g_550.s2, "p_1137->g_550.s2", print_hash_value);
    transparent_crc(p_1137->g_550.s3, "p_1137->g_550.s3", print_hash_value);
    transparent_crc(p_1137->g_550.s4, "p_1137->g_550.s4", print_hash_value);
    transparent_crc(p_1137->g_550.s5, "p_1137->g_550.s5", print_hash_value);
    transparent_crc(p_1137->g_550.s6, "p_1137->g_550.s6", print_hash_value);
    transparent_crc(p_1137->g_550.s7, "p_1137->g_550.s7", print_hash_value);
    transparent_crc(p_1137->g_569.x, "p_1137->g_569.x", print_hash_value);
    transparent_crc(p_1137->g_569.y, "p_1137->g_569.y", print_hash_value);
    transparent_crc(p_1137->g_571.s0, "p_1137->g_571.s0", print_hash_value);
    transparent_crc(p_1137->g_571.s1, "p_1137->g_571.s1", print_hash_value);
    transparent_crc(p_1137->g_571.s2, "p_1137->g_571.s2", print_hash_value);
    transparent_crc(p_1137->g_571.s3, "p_1137->g_571.s3", print_hash_value);
    transparent_crc(p_1137->g_571.s4, "p_1137->g_571.s4", print_hash_value);
    transparent_crc(p_1137->g_571.s5, "p_1137->g_571.s5", print_hash_value);
    transparent_crc(p_1137->g_571.s6, "p_1137->g_571.s6", print_hash_value);
    transparent_crc(p_1137->g_571.s7, "p_1137->g_571.s7", print_hash_value);
    transparent_crc(p_1137->g_571.s8, "p_1137->g_571.s8", print_hash_value);
    transparent_crc(p_1137->g_571.s9, "p_1137->g_571.s9", print_hash_value);
    transparent_crc(p_1137->g_571.sa, "p_1137->g_571.sa", print_hash_value);
    transparent_crc(p_1137->g_571.sb, "p_1137->g_571.sb", print_hash_value);
    transparent_crc(p_1137->g_571.sc, "p_1137->g_571.sc", print_hash_value);
    transparent_crc(p_1137->g_571.sd, "p_1137->g_571.sd", print_hash_value);
    transparent_crc(p_1137->g_571.se, "p_1137->g_571.se", print_hash_value);
    transparent_crc(p_1137->g_571.sf, "p_1137->g_571.sf", print_hash_value);
    transparent_crc(p_1137->g_574.x, "p_1137->g_574.x", print_hash_value);
    transparent_crc(p_1137->g_574.y, "p_1137->g_574.y", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1137->g_593[i], "p_1137->g_593[i]", print_hash_value);

    }
    transparent_crc(p_1137->g_624.x, "p_1137->g_624.x", print_hash_value);
    transparent_crc(p_1137->g_624.y, "p_1137->g_624.y", print_hash_value);
    transparent_crc(p_1137->g_624.z, "p_1137->g_624.z", print_hash_value);
    transparent_crc(p_1137->g_624.w, "p_1137->g_624.w", print_hash_value);
    transparent_crc(p_1137->g_630.x, "p_1137->g_630.x", print_hash_value);
    transparent_crc(p_1137->g_630.y, "p_1137->g_630.y", print_hash_value);
    transparent_crc(p_1137->g_631.x, "p_1137->g_631.x", print_hash_value);
    transparent_crc(p_1137->g_631.y, "p_1137->g_631.y", print_hash_value);
    transparent_crc(p_1137->g_631.z, "p_1137->g_631.z", print_hash_value);
    transparent_crc(p_1137->g_631.w, "p_1137->g_631.w", print_hash_value);
    transparent_crc(p_1137->g_634.x, "p_1137->g_634.x", print_hash_value);
    transparent_crc(p_1137->g_634.y, "p_1137->g_634.y", print_hash_value);
    transparent_crc(p_1137->g_634.z, "p_1137->g_634.z", print_hash_value);
    transparent_crc(p_1137->g_634.w, "p_1137->g_634.w", print_hash_value);
    transparent_crc(p_1137->g_641.s0, "p_1137->g_641.s0", print_hash_value);
    transparent_crc(p_1137->g_641.s1, "p_1137->g_641.s1", print_hash_value);
    transparent_crc(p_1137->g_641.s2, "p_1137->g_641.s2", print_hash_value);
    transparent_crc(p_1137->g_641.s3, "p_1137->g_641.s3", print_hash_value);
    transparent_crc(p_1137->g_641.s4, "p_1137->g_641.s4", print_hash_value);
    transparent_crc(p_1137->g_641.s5, "p_1137->g_641.s5", print_hash_value);
    transparent_crc(p_1137->g_641.s6, "p_1137->g_641.s6", print_hash_value);
    transparent_crc(p_1137->g_641.s7, "p_1137->g_641.s7", print_hash_value);
    transparent_crc(p_1137->g_641.s8, "p_1137->g_641.s8", print_hash_value);
    transparent_crc(p_1137->g_641.s9, "p_1137->g_641.s9", print_hash_value);
    transparent_crc(p_1137->g_641.sa, "p_1137->g_641.sa", print_hash_value);
    transparent_crc(p_1137->g_641.sb, "p_1137->g_641.sb", print_hash_value);
    transparent_crc(p_1137->g_641.sc, "p_1137->g_641.sc", print_hash_value);
    transparent_crc(p_1137->g_641.sd, "p_1137->g_641.sd", print_hash_value);
    transparent_crc(p_1137->g_641.se, "p_1137->g_641.se", print_hash_value);
    transparent_crc(p_1137->g_641.sf, "p_1137->g_641.sf", print_hash_value);
    transparent_crc(p_1137->g_684.s0, "p_1137->g_684.s0", print_hash_value);
    transparent_crc(p_1137->g_684.s1, "p_1137->g_684.s1", print_hash_value);
    transparent_crc(p_1137->g_684.s2, "p_1137->g_684.s2", print_hash_value);
    transparent_crc(p_1137->g_684.s3, "p_1137->g_684.s3", print_hash_value);
    transparent_crc(p_1137->g_684.s4, "p_1137->g_684.s4", print_hash_value);
    transparent_crc(p_1137->g_684.s5, "p_1137->g_684.s5", print_hash_value);
    transparent_crc(p_1137->g_684.s6, "p_1137->g_684.s6", print_hash_value);
    transparent_crc(p_1137->g_684.s7, "p_1137->g_684.s7", print_hash_value);
    transparent_crc(p_1137->g_685.x, "p_1137->g_685.x", print_hash_value);
    transparent_crc(p_1137->g_685.y, "p_1137->g_685.y", print_hash_value);
    transparent_crc(p_1137->g_685.z, "p_1137->g_685.z", print_hash_value);
    transparent_crc(p_1137->g_685.w, "p_1137->g_685.w", print_hash_value);
    transparent_crc(p_1137->g_718.s0, "p_1137->g_718.s0", print_hash_value);
    transparent_crc(p_1137->g_718.s1, "p_1137->g_718.s1", print_hash_value);
    transparent_crc(p_1137->g_718.s2, "p_1137->g_718.s2", print_hash_value);
    transparent_crc(p_1137->g_718.s3, "p_1137->g_718.s3", print_hash_value);
    transparent_crc(p_1137->g_718.s4, "p_1137->g_718.s4", print_hash_value);
    transparent_crc(p_1137->g_718.s5, "p_1137->g_718.s5", print_hash_value);
    transparent_crc(p_1137->g_718.s6, "p_1137->g_718.s6", print_hash_value);
    transparent_crc(p_1137->g_718.s7, "p_1137->g_718.s7", print_hash_value);
    transparent_crc(p_1137->g_745.x, "p_1137->g_745.x", print_hash_value);
    transparent_crc(p_1137->g_745.y, "p_1137->g_745.y", print_hash_value);
    transparent_crc(p_1137->g_745.z, "p_1137->g_745.z", print_hash_value);
    transparent_crc(p_1137->g_745.w, "p_1137->g_745.w", print_hash_value);
    transparent_crc(p_1137->g_749.x, "p_1137->g_749.x", print_hash_value);
    transparent_crc(p_1137->g_749.y, "p_1137->g_749.y", print_hash_value);
    transparent_crc(p_1137->g_749.z, "p_1137->g_749.z", print_hash_value);
    transparent_crc(p_1137->g_749.w, "p_1137->g_749.w", print_hash_value);
    transparent_crc(p_1137->g_757, "p_1137->g_757", print_hash_value);
    transparent_crc(p_1137->g_789.x, "p_1137->g_789.x", print_hash_value);
    transparent_crc(p_1137->g_789.y, "p_1137->g_789.y", print_hash_value);
    transparent_crc(p_1137->g_857, "p_1137->g_857", print_hash_value);
    transparent_crc(p_1137->g_870, "p_1137->g_870", print_hash_value);
    transparent_crc(p_1137->g_891.x, "p_1137->g_891.x", print_hash_value);
    transparent_crc(p_1137->g_891.y, "p_1137->g_891.y", print_hash_value);
    transparent_crc(p_1137->g_921, "p_1137->g_921", print_hash_value);
    transparent_crc(p_1137->g_956.s0, "p_1137->g_956.s0", print_hash_value);
    transparent_crc(p_1137->g_956.s1, "p_1137->g_956.s1", print_hash_value);
    transparent_crc(p_1137->g_956.s2, "p_1137->g_956.s2", print_hash_value);
    transparent_crc(p_1137->g_956.s3, "p_1137->g_956.s3", print_hash_value);
    transparent_crc(p_1137->g_956.s4, "p_1137->g_956.s4", print_hash_value);
    transparent_crc(p_1137->g_956.s5, "p_1137->g_956.s5", print_hash_value);
    transparent_crc(p_1137->g_956.s6, "p_1137->g_956.s6", print_hash_value);
    transparent_crc(p_1137->g_956.s7, "p_1137->g_956.s7", print_hash_value);
    transparent_crc(p_1137->g_956.s8, "p_1137->g_956.s8", print_hash_value);
    transparent_crc(p_1137->g_956.s9, "p_1137->g_956.s9", print_hash_value);
    transparent_crc(p_1137->g_956.sa, "p_1137->g_956.sa", print_hash_value);
    transparent_crc(p_1137->g_956.sb, "p_1137->g_956.sb", print_hash_value);
    transparent_crc(p_1137->g_956.sc, "p_1137->g_956.sc", print_hash_value);
    transparent_crc(p_1137->g_956.sd, "p_1137->g_956.sd", print_hash_value);
    transparent_crc(p_1137->g_956.se, "p_1137->g_956.se", print_hash_value);
    transparent_crc(p_1137->g_956.sf, "p_1137->g_956.sf", print_hash_value);
    transparent_crc(p_1137->g_961.x, "p_1137->g_961.x", print_hash_value);
    transparent_crc(p_1137->g_961.y, "p_1137->g_961.y", print_hash_value);
    transparent_crc(p_1137->g_961.z, "p_1137->g_961.z", print_hash_value);
    transparent_crc(p_1137->g_961.w, "p_1137->g_961.w", print_hash_value);
    transparent_crc(p_1137->g_1123.x, "p_1137->g_1123.x", print_hash_value);
    transparent_crc(p_1137->g_1123.y, "p_1137->g_1123.y", print_hash_value);
    transparent_crc(p_1137->g_1124.s0, "p_1137->g_1124.s0", print_hash_value);
    transparent_crc(p_1137->g_1124.s1, "p_1137->g_1124.s1", print_hash_value);
    transparent_crc(p_1137->g_1124.s2, "p_1137->g_1124.s2", print_hash_value);
    transparent_crc(p_1137->g_1124.s3, "p_1137->g_1124.s3", print_hash_value);
    transparent_crc(p_1137->g_1124.s4, "p_1137->g_1124.s4", print_hash_value);
    transparent_crc(p_1137->g_1124.s5, "p_1137->g_1124.s5", print_hash_value);
    transparent_crc(p_1137->g_1124.s6, "p_1137->g_1124.s6", print_hash_value);
    transparent_crc(p_1137->g_1124.s7, "p_1137->g_1124.s7", print_hash_value);
    transparent_crc(p_1137->g_1124.s8, "p_1137->g_1124.s8", print_hash_value);
    transparent_crc(p_1137->g_1124.s9, "p_1137->g_1124.s9", print_hash_value);
    transparent_crc(p_1137->g_1124.sa, "p_1137->g_1124.sa", print_hash_value);
    transparent_crc(p_1137->g_1124.sb, "p_1137->g_1124.sb", print_hash_value);
    transparent_crc(p_1137->g_1124.sc, "p_1137->g_1124.sc", print_hash_value);
    transparent_crc(p_1137->g_1124.sd, "p_1137->g_1124.sd", print_hash_value);
    transparent_crc(p_1137->g_1124.se, "p_1137->g_1124.se", print_hash_value);
    transparent_crc(p_1137->g_1124.sf, "p_1137->g_1124.sf", print_hash_value);
    transparent_crc(p_1137->g_1127.x, "p_1137->g_1127.x", print_hash_value);
    transparent_crc(p_1137->g_1127.y, "p_1137->g_1127.y", print_hash_value);
    transparent_crc(p_1137->g_1127.z, "p_1137->g_1127.z", print_hash_value);
    transparent_crc(p_1137->g_1127.w, "p_1137->g_1127.w", print_hash_value);
    transparent_crc(p_1137->g_1136.s0, "p_1137->g_1136.s0", print_hash_value);
    transparent_crc(p_1137->g_1136.s1, "p_1137->g_1136.s1", print_hash_value);
    transparent_crc(p_1137->g_1136.s2, "p_1137->g_1136.s2", print_hash_value);
    transparent_crc(p_1137->g_1136.s3, "p_1137->g_1136.s3", print_hash_value);
    transparent_crc(p_1137->g_1136.s4, "p_1137->g_1136.s4", print_hash_value);
    transparent_crc(p_1137->g_1136.s5, "p_1137->g_1136.s5", print_hash_value);
    transparent_crc(p_1137->g_1136.s6, "p_1137->g_1136.s6", print_hash_value);
    transparent_crc(p_1137->g_1136.s7, "p_1137->g_1136.s7", print_hash_value);
    transparent_crc(p_1137->g_1136.s8, "p_1137->g_1136.s8", print_hash_value);
    transparent_crc(p_1137->g_1136.s9, "p_1137->g_1136.s9", print_hash_value);
    transparent_crc(p_1137->g_1136.sa, "p_1137->g_1136.sa", print_hash_value);
    transparent_crc(p_1137->g_1136.sb, "p_1137->g_1136.sb", print_hash_value);
    transparent_crc(p_1137->g_1136.sc, "p_1137->g_1136.sc", print_hash_value);
    transparent_crc(p_1137->g_1136.sd, "p_1137->g_1136.sd", print_hash_value);
    transparent_crc(p_1137->g_1136.se, "p_1137->g_1136.se", print_hash_value);
    transparent_crc(p_1137->g_1136.sf, "p_1137->g_1136.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
