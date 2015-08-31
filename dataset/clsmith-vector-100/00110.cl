// ---fake_divergence -g 51,1,139 -l 17,1,1
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


// Seed: 110

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint16_t g_4;
    int32_t g_7;
    volatile uint8_t g_15;
    int16_t g_21;
    int32_t g_23;
    int32_t * volatile g_22;
    uint16_t g_36;
    int8_t g_58;
    int8_t g_60;
    int32_t g_61;
    int32_t g_73;
    int8_t g_74;
    int16_t g_75[6];
    int32_t g_76;
    uint64_t g_77;
    uint32_t g_105;
    VECTOR(int32_t, 16) g_116;
    VECTOR(int32_t, 4) g_133;
    VECTOR(uint16_t, 8) g_141;
    VECTOR(int32_t, 2) g_150;
    int64_t g_159[4];
    uint8_t g_172;
    uint32_t *g_185;
    int16_t *g_202;
    int16_t g_220;
    int32_t *g_222;
    int32_t **g_221;
    VECTOR(int8_t, 16) g_227;
    uint16_t *g_258;
    int64_t g_280[6];
    VECTOR(uint32_t, 16) g_309;
    VECTOR(uint32_t, 2) g_319;
    VECTOR(int64_t, 4) g_334;
    VECTOR(int32_t, 4) g_335;
    VECTOR(uint8_t, 8) g_373;
    uint16_t g_385;
    VECTOR(uint32_t, 16) g_399;
    VECTOR(uint32_t, 2) g_400;
    VECTOR(uint32_t, 8) g_401;
    VECTOR(uint32_t, 2) g_402;
    int8_t *g_411;
    int8_t * volatile *g_410[1];
    int32_t g_431;
    int8_t g_433;
    VECTOR(int64_t, 4) g_540;
    VECTOR(uint16_t, 16) g_545;
    VECTOR(int64_t, 16) g_547;
    uint16_t g_579[10];
    VECTOR(int64_t, 16) g_608;
    VECTOR(int16_t, 2) g_615;
    VECTOR(uint16_t, 4) g_628;
    VECTOR(int16_t, 16) g_656;
    uint64_t g_666;
    VECTOR(uint32_t, 2) g_722;
    int64_t g_727;
    VECTOR(int32_t, 4) g_754;
    volatile uint16_t ** volatile *g_761;
    uint64_t *g_762;
    VECTOR(int32_t, 8) g_825;
    uint32_t g_835[6][3][5];
    uint32_t g_912;
    VECTOR(uint8_t, 8) g_919;
    VECTOR(uint8_t, 4) g_920;
    uint64_t g_923;
    VECTOR(int8_t, 2) g_935;
    VECTOR(int8_t, 2) g_967;
    uint8_t * volatile g_996;
    uint8_t * volatile *g_995;
    int32_t * volatile g_1002;
    int32_t * volatile g_1003;
    VECTOR(int8_t, 8) g_1036;
    VECTOR(int8_t, 16) g_1037;
    VECTOR(int8_t, 16) g_1040;
    int32_t * volatile g_1051;
    volatile VECTOR(int8_t, 8) g_1061;
    VECTOR(int8_t, 8) g_1066;
    VECTOR(int64_t, 8) g_1068;
    int32_t * volatile g_1078;
    volatile VECTOR(int32_t, 2) g_1087;
    volatile VECTOR(int32_t, 8) g_1091;
    VECTOR(int32_t, 8) g_1092;
    uint64_t g_1105;
    int32_t *g_1135;
    int32_t ** volatile g_1134;
    volatile int16_t g_1143;
    volatile int16_t *g_1142;
    volatile int16_t **g_1141;
    volatile int16_t ** volatile *g_1140;
    VECTOR(uint8_t, 2) g_1144;
    uint32_t g_1150;
    int32_t * volatile g_1151;
    VECTOR(int8_t, 16) g_1161;
    VECTOR(int64_t, 8) g_1171;
    volatile int8_t g_1178;
    volatile VECTOR(uint16_t, 16) g_1184;
    uint8_t *g_1188;
    VECTOR(int16_t, 8) g_1192;
    VECTOR(int32_t, 2) g_1194;
    VECTOR(int32_t, 8) g_1195;
    VECTOR(int16_t, 2) g_1197;
    volatile VECTOR(int32_t, 16) g_1214;
    VECTOR(uint8_t, 4) g_1229;
    VECTOR(int8_t, 4) g_1257;
    volatile VECTOR(int32_t, 2) g_1262;
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
uint64_t  func_1(struct S0 * p_1272);
int32_t  func_2(int64_t  p_3, struct S0 * p_1272);
int32_t ** func_24(int32_t  p_25, int64_t  p_26, int64_t  p_27, int32_t ** p_28, struct S0 * p_1272);
int32_t ** func_29(uint32_t  p_30, struct S0 * p_1272);
uint32_t  func_37(uint16_t  p_38, uint16_t * p_39, int8_t  p_40, uint16_t * p_41, struct S0 * p_1272);
uint16_t * func_42(int32_t  p_43, struct S0 * p_1272);
int32_t * func_44(int32_t  p_45, int32_t  p_46, uint16_t * p_47, struct S0 * p_1272);
int32_t  func_48(int64_t  p_49, uint64_t  p_50, uint8_t  p_51, int32_t  p_52, uint32_t  p_53, struct S0 * p_1272);
int32_t  func_81(int32_t ** p_82, uint16_t * p_83, uint64_t  p_84, struct S0 * p_1272);
int32_t ** func_85(uint32_t  p_86, uint32_t  p_87, int32_t * p_88, uint8_t  p_89, struct S0 * p_1272);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1272->g_4 p_1272->g_15 p_1272->g_7 p_1272->g_21 p_1272->g_22 p_1272->g_23 p_1272->g_656 p_1272->g_401 p_1272->g_221 p_1272->g_222 p_1272->g_77 p_1272->g_373 p_1272->g_280 p_1272->g_754 p_1272->g_608 p_1272->g_995 p_1272->g_159 p_1272->g_545 p_1272->g_1003 p_1272->g_431 p_1272->g_1051 p_1272->g_1214 p_1272->g_1229 p_1272->g_1135 p_1272->g_1257 p_1272->g_1262 p_1272->g_411 p_1272->g_74 p_1272->g_1092 p_1272->g_1151 p_1272->g_150
 * writes: p_1272->g_15 p_1272->g_7 p_1272->g_21 p_1272->g_23 p_1272->g_36 p_1272->g_159 p_1272->g_77 p_1272->g_222 p_1272->g_401 p_1272->g_923 p_1272->g_431 p_1272->g_60 p_1272->g_220 p_1272->g_221 p_1272->g_4
 */
uint64_t  func_1(struct S0 * p_1272)
{ /* block id: 4 */
    int32_t l_18[4] = {0x061A7160L,0x061A7160L,0x061A7160L,0x061A7160L};
    uint16_t *l_924 = &p_1272->g_579[0];
    int8_t l_1085 = 0x76L;
    VECTOR(int32_t, 2) l_1088 = (VECTOR(int32_t, 2))((-3L), 0x570607A4L);
    uint32_t *l_1095 = &p_1272->g_912;
    uint8_t l_1100 = 0x18L;
    int32_t l_1114 = 0L;
    int16_t l_1119 = 0x34B7L;
    int16_t l_1133[7] = {(-3L),(-1L),(-3L),(-3L),(-1L),(-3L),(-3L)};
    VECTOR(int8_t, 16) l_1258 = (VECTOR(int8_t, 16))(0x08L, (VECTOR(int8_t, 4))(0x08L, (VECTOR(int8_t, 2))(0x08L, (-3L)), (-3L)), (-3L), 0x08L, (-3L), (VECTOR(int8_t, 2))(0x08L, (-3L)), (VECTOR(int8_t, 2))(0x08L, (-3L)), 0x08L, (-3L), 0x08L, (-3L));
    uint64_t *l_1271 = &p_1272->g_77;
    uint64_t **l_1270 = &l_1271;
    int i;
lbl_1213:
    if (func_2(p_1272->g_4, p_1272))
    { /* block id: 8 */
        int32_t *l_19 = &p_1272->g_7;
        int32_t *l_20 = (void*)0;
        uint16_t *l_35 = &p_1272->g_36;
        VECTOR(uint8_t, 16) l_917 = (VECTOR(uint8_t, 16))(0x21L, (VECTOR(uint8_t, 4))(0x21L, (VECTOR(uint8_t, 2))(0x21L, 0UL), 0UL), 0UL, 0x21L, 0UL, (VECTOR(uint8_t, 2))(0x21L, 0UL), (VECTOR(uint8_t, 2))(0x21L, 0UL), 0x21L, 0UL, 0x21L, 0UL);
        VECTOR(uint8_t, 8) l_918 = (VECTOR(uint8_t, 8))(0x22L, (VECTOR(uint8_t, 4))(0x22L, (VECTOR(uint8_t, 2))(0x22L, 0UL), 0UL), 0UL, 0x22L, 0UL);
        uint64_t *l_921 = (void*)0;
        uint64_t *l_922 = &p_1272->g_923;
        int64_t *l_928 = (void*)0;
        int64_t *l_929 = (void*)0;
        int64_t *l_930 = &p_1272->g_159[0];
        int32_t ***l_1076 = &p_1272->g_221;
        int i;
        (*p_1272->g_22) = (p_1272->g_21 |= ((*l_19) &= func_2(l_18[1], p_1272)));
        (*l_1076) = func_24((*p_1272->g_22), (*l_19), p_1272->g_4, func_29((safe_mod_func_int64_t_s_s(((*l_930) = (safe_mod_func_int64_t_s_s((((*l_35) = p_1272->g_23) | (((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 8))(((~func_37(p_1272->g_4, func_42(l_18[1], p_1272), (safe_mod_func_uint64_t_u_u(((*l_922) = (p_1272->g_912 < (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(l_917.sa356)).wxwxzwzz | ((VECTOR(uint8_t, 2))(l_918.s60)).xxxxyyxx))).s02, ((VECTOR(uint8_t, 2))((+((VECTOR(uint8_t, 4))(p_1272->g_919.s6067)).even)))))).xyyyyyxxxyxxyyyy, ((VECTOR(uint8_t, 16))(p_1272->g_920.zzwxxzxzyxzwwyzy))))) + ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 8))(l_18[1], l_18[3], 0xC5L, ((VECTOR(uint8_t, 2))(0UL)), 0x66L, 253UL, 0x46L)), ((VECTOR(uint8_t, 8))(255UL))))).s0467145506627716, ((VECTOR(uint8_t, 16))(0x0CL)))))))).hi | ((VECTOR(uint8_t, 8))(0x59L))))).s2, GROUP_DIVERGE(2, 1))))), p_1272->g_319.x)), l_924, p_1272)) >= l_18[1]), p_1272->g_76, ((VECTOR(uint64_t, 4))(7UL)), 18446744073709551615UL, 0x886A5EC1E9C603B7L)).hi, (uint64_t)0xCD227C92F1AC9C7CL))).ywwyzywy, ((VECTOR(uint64_t, 8))(0x31B10659D1E5BAA8L))))).s5 > p_1272->g_656.s4)), p_1272->g_401.s0))), 0x020845E7B6D75AA4L)), p_1272), p_1272);
        if (p_1272->g_58)
            goto lbl_1213;
    }
    else
    { /* block id: 409 */
        int32_t *l_1077 = (void*)0;
        uint16_t **l_1101 = &l_924;
        int32_t l_1118 = 0x16FF34A5L;
        int32_t l_1120 = (-1L);
        int32_t l_1121 = 0x01411745L;
        int32_t l_1122 = 1L;
        int32_t l_1123 = 0x1EBB2F52L;
        int32_t l_1124 = 1L;
        int32_t l_1125 = 9L;
        int32_t l_1126 = 0x1B2CE355L;
        int32_t l_1127 = 0x28BC114AL;
        int32_t l_1128 = 0x76B70BF2L;
        int32_t l_1129[9][7][4] = {{{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL}},{{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL}},{{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL}},{{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL}},{{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL}},{{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL}},{{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL}},{{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL}},{{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL},{0x422DF1C0L,(-1L),0x3E7E445EL,0x3DB1350FL}}};
        VECTOR(uint8_t, 16) l_1145 = (VECTOR(uint8_t, 16))(0xCDL, (VECTOR(uint8_t, 4))(0xCDL, (VECTOR(uint8_t, 2))(0xCDL, 255UL), 255UL), 255UL, 0xCDL, 255UL, (VECTOR(uint8_t, 2))(0xCDL, 255UL), (VECTOR(uint8_t, 2))(0xCDL, 255UL), 0xCDL, 255UL, 0xCDL, 255UL);
        uint16_t l_1176 = 6UL;
        int16_t **l_1187 = &p_1272->g_202;
        uint8_t *l_1208 = &l_1100;
        int i, j, k;
        (1 + 1);
    }
    if (((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(p_1272->g_1214.s0e80fec39d10dace)).even && ((VECTOR(int32_t, 2))((-1L), (-3L))).xyxyxyxx))).s0)
    { /* block id: 483 */
        uint64_t l_1220 = 9UL;
        for (l_1085 = 0; (l_1085 < 2); l_1085 = safe_add_func_uint16_t_u_u(l_1085, 5))
        { /* block id: 486 */
            int32_t *l_1217 = &l_1114;
            int32_t *l_1218 = (void*)0;
            int32_t *l_1219[5];
            int i;
            for (i = 0; i < 5; i++)
                l_1219[i] = &p_1272->g_61;
            if (p_1272->g_923)
                goto lbl_1213;
            --l_1220;
        }
        return l_1088.x;
    }
    else
    { /* block id: 491 */
        uint16_t **l_1241 = &l_924;
        int32_t *l_1242[3][2][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int i, j, k;
        for (p_1272->g_4 = 0; (p_1272->g_4 == 47); p_1272->g_4 = safe_add_func_uint32_t_u_u(p_1272->g_4, 6))
        { /* block id: 494 */
            VECTOR(uint8_t, 8) l_1230 = (VECTOR(uint8_t, 8))(0x9EL, (VECTOR(uint8_t, 4))(0x9EL, (VECTOR(uint8_t, 2))(0x9EL, 253UL), 253UL), 253UL, 0x9EL, 253UL);
            uint32_t *l_1237 = &p_1272->g_835[5][2][4];
            uint64_t *l_1238 = &p_1272->g_923;
            int i;
            (*p_1272->g_1135) = (safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(p_1272->g_1229.wzwwzxwwxywxxzwx)) + ((VECTOR(uint8_t, 2))(255UL, 0x2EL)).yxxyxyyyyxyyxxxy))), ((VECTOR(uint8_t, 16))(l_1230.s0255337070461747))))).s6, (((safe_rshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(0x72L, 4)), ((&p_1272->g_1141 == (void*)0) <= ((1UL < (l_1237 == &p_1272->g_835[5][2][4])) >= (l_1085 != (l_1238 != ((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), 13)) , &p_1272->g_923))))))) <= 0x24A197BBL) & 0x3AL)));
        }
        (*p_1272->g_221) = l_1242[1][0][3];
    }
    (*p_1272->g_1151) = (((safe_lshift_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(0xFA49L, 0x141BL)).yxyxyxyx + ((VECTOR(uint16_t, 4))(((safe_sub_func_int32_t_s_s((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(8L, 0x05L)), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(0x44L, (-5L), 0x69L, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(p_1272->g_1257.xzzwxxxx)) <= ((VECTOR(int8_t, 8))(l_1258.s3fb34c25))))) <= ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(l_1258.sc, (safe_unary_minus_func_uint32_t_u((l_1095 == (void*)0))), (-8L), 0x15L)).wxzzwwzw, (int8_t)(safe_mod_func_int32_t_s_s((((VECTOR(int32_t, 16))(p_1272->g_1262.xxxxyyyyyyxyxxyx)).se & ((safe_sub_func_uint16_t_u_u(((0x311E66E3L & l_18[1]) , ((safe_lshift_func_int8_t_s_u((l_1133[0] != 0x1C182835L), l_1088.y)) >= (safe_unary_minus_func_uint32_t_u((safe_add_func_int16_t_s_s((~(((*l_1270) = ((0x09L || (*p_1272->g_411)) , &p_1272->g_77)) != &p_1272->g_77)), p_1272->g_1092.s3)))))), l_18[0])) , l_1114)), l_1100))))), ((VECTOR(int8_t, 8))(0L))))).s16, ((VECTOR(int8_t, 2))(2L))))).xyyxyyyy))), (*p_1272->g_411), ((VECTOR(int8_t, 4))(4L)))).s8e >= ((VECTOR(int8_t, 2))((-1L)))))).yyyx, ((VECTOR(int8_t, 4))((-8L))), ((VECTOR(int8_t, 4))(0x34L))))).hi <= ((VECTOR(int8_t, 2))((-2L)))))), 0x2DL, ((VECTOR(int8_t, 2))(5L)), (*p_1272->g_411), l_18[1], l_1088.y, ((VECTOR(int8_t, 2))((-6L))), l_18[1], ((VECTOR(int8_t, 2))((-1L))), (-10L))) | ((VECTOR(int8_t, 16))(1L))))), ((VECTOR(int8_t, 16))(0x27L))))).sa, l_1088.x)), 0xBBCEE31BL)) >= l_18[1]), ((VECTOR(uint16_t, 2))(0x819AL)), 0xF6BCL)).wzyxwywz))) + ((VECTOR(uint16_t, 8))(0UL))))).s4747051465403131 * ((VECTOR(uint16_t, 16))(0x8E72L))))).se, 11)) > l_1114), (*p_1272->g_411))) , l_1258.se) < l_1088.y);
    return p_1272->g_150.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1272->g_15
 * writes: p_1272->g_15
 */
int32_t  func_2(int64_t  p_3, struct S0 * p_1272)
{ /* block id: 5 */
    int16_t l_5 = 1L;
    int32_t *l_6 = &p_1272->g_7;
    int32_t *l_8 = &p_1272->g_7;
    int32_t *l_9 = &p_1272->g_7;
    int32_t l_10 = 0x1B88146CL;
    int32_t l_11 = 0L;
    int32_t l_12 = 3L;
    int32_t *l_13[10][7][3] = {{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}},{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}},{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}},{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}},{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}},{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}},{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}},{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}},{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}},{{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7},{&p_1272->g_7,&l_11,&p_1272->g_7}}};
    int8_t l_14 = (-5L);
    int i, j, k;
    --p_1272->g_15;
    return p_1272->g_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_1272->g_754 p_1272->g_608 p_1272->g_995 p_1272->g_159 p_1272->g_545 p_1272->g_1003 p_1272->g_431 p_1272->g_221 p_1272->g_60 p_1272->g_7 p_1272->g_22 p_1272->g_220 p_1272->g_1036 p_1272->g_1037 p_1272->g_1040 p_1272->g_411 p_1272->g_74 p_1272->g_996 p_1272->g_227 p_1272->g_73 p_1272->g_923 p_1272->g_1051 p_1272->g_23 p_1272->g_1061 p_1272->g_1066 p_1272->g_1068
 * writes: p_1272->g_159 p_1272->g_923 p_1272->g_7 p_1272->g_431 p_1272->g_222 p_1272->g_60 p_1272->g_23 p_1272->g_220 p_1272->g_21
 */
int32_t ** func_24(int32_t  p_25, int64_t  p_26, int64_t  p_27, int32_t ** p_28, struct S0 * p_1272)
{ /* block id: 369 */
    uint32_t l_980 = 1UL;
    int32_t l_988[2];
    int64_t *l_997 = &p_1272->g_159[2];
    uint64_t *l_998 = &p_1272->g_923;
    uint32_t l_999[8] = {0x3BACDA8DL,0x3BACDA8DL,0x3BACDA8DL,0x3BACDA8DL,0x3BACDA8DL,0x3BACDA8DL,0x3BACDA8DL,0x3BACDA8DL};
    uint32_t *l_1000 = &l_999[2];
    uint8_t l_1001[4] = {1UL,1UL,1UL,1UL};
    uint16_t ****l_1004 = (void*)0;
    int32_t **l_1014 = &p_1272->g_222;
    VECTOR(int8_t, 8) l_1035 = (VECTOR(int8_t, 8))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x4BL), 0x4BL), 0x4BL, (-8L), 0x4BL);
    VECTOR(int32_t, 2) l_1054 = (VECTOR(int32_t, 2))(1L, 0x793F9719L);
    int16_t *l_1058 = &p_1272->g_21;
    VECTOR(int8_t, 8) l_1062 = (VECTOR(int8_t, 8))(0x3CL, (VECTOR(int8_t, 4))(0x3CL, (VECTOR(int8_t, 2))(0x3CL, (-1L)), (-1L)), (-1L), 0x3CL, (-1L));
    VECTOR(int8_t, 8) l_1063 = (VECTOR(int8_t, 8))(0x7FL, (VECTOR(int8_t, 4))(0x7FL, (VECTOR(int8_t, 2))(0x7FL, 8L), 8L), 8L, 0x7FL, 8L);
    VECTOR(int8_t, 8) l_1064 = (VECTOR(int8_t, 8))(0x62L, (VECTOR(int8_t, 4))(0x62L, (VECTOR(int8_t, 2))(0x62L, (-3L)), (-3L)), (-3L), 0x62L, (-3L));
    VECTOR(int8_t, 16) l_1065 = (VECTOR(int8_t, 16))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 1L), 1L), 1L, 3L, 1L, (VECTOR(int8_t, 2))(3L, 1L), (VECTOR(int8_t, 2))(3L, 1L), 3L, 1L, 3L, 1L);
    VECTOR(int8_t, 8) l_1067 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
    int8_t l_1069 = (-1L);
    int i;
    for (i = 0; i < 2; i++)
        l_988[i] = (-1L);
    (*p_1272->g_1003) = (p_1272->g_754.z >= (((p_26 != l_980) & (safe_rshift_func_int8_t_s_u(((((*l_1000) = (p_1272->g_608.sd ^ (safe_mod_func_uint64_t_u_u((FAKE_DIVERGE(p_1272->global_1_offset, get_global_id(1), 10) != (((void*)0 != &p_1272->g_220) >= ((*l_998) = (safe_unary_minus_func_uint32_t_u(((safe_sub_func_uint64_t_u_u(((l_988[1] |= p_26) ^ 0x2CCB65C6L), (((((*l_997) ^= (~(safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_div_func_uint8_t_u_u(((void*)0 != p_1272->g_995), l_980)), p_26)), l_980)))) ^ p_1272->g_754.y) == l_980) , p_1272->g_545.sa))) <= 65531UL)))))), l_999[5])))) , l_999[5]) < l_980), l_980))) , l_1001[2]));
    if ((l_988[1] = (-1L)))
    { /* block id: 376 */
        int32_t *l_1005 = &p_1272->g_431;
        int32_t l_1006 = (-7L);
        int32_t *l_1007 = &l_1006;
        int32_t *l_1008 = (void*)0;
        int32_t *l_1009 = (void*)0;
        int32_t *l_1010[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint32_t l_1011 = 0x8CD601ECL;
        int i;
        (*l_1005) ^= ((l_1004 == &p_1272->g_761) , 0x29D6CDCDL);
        l_1011++;
        return l_1014;
    }
    else
    { /* block id: 380 */
        int32_t *l_1015 = (void*)0;
        VECTOR(int8_t, 2) l_1038 = (VECTOR(int8_t, 2))(2L, 0x41L);
        VECTOR(int8_t, 4) l_1039 = (VECTOR(int8_t, 4))(0x75L, (VECTOR(int8_t, 2))(0x75L, 4L), 4L);
        int32_t l_1055 = (-1L);
        int i;
        (*p_1272->g_221) = l_1015;
        for (p_1272->g_60 = 0; (p_1272->g_60 >= (-21)); p_1272->g_60--)
        { /* block id: 384 */
            uint8_t l_1018[1][9][5] = {{{0x5CL,0x5CL,0x91L,1UL,0xBBL},{0x5CL,0x5CL,0x91L,1UL,0xBBL},{0x5CL,0x5CL,0x91L,1UL,0xBBL},{0x5CL,0x5CL,0x91L,1UL,0xBBL},{0x5CL,0x5CL,0x91L,1UL,0xBBL},{0x5CL,0x5CL,0x91L,1UL,0xBBL},{0x5CL,0x5CL,0x91L,1UL,0xBBL},{0x5CL,0x5CL,0x91L,1UL,0xBBL},{0x5CL,0x5CL,0x91L,1UL,0xBBL}}};
            uint64_t *l_1019 = &p_1272->g_77;
            VECTOR(int8_t, 4) l_1024 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 3L), 3L);
            VECTOR(int8_t, 8) l_1032 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x40L), 0x40L), 0x40L, 1L, 0x40L);
            int i, j, k;
            (*p_1272->g_22) = (l_1018[0][3][3] < ((l_997 != l_1019) , (*p_1272->g_1003)));
            for (p_1272->g_220 = (-13); (p_1272->g_220 <= (-16)); p_1272->g_220 = safe_sub_func_int16_t_s_s(p_1272->g_220, 1))
            { /* block id: 388 */
                uint16_t **l_1029 = &p_1272->g_258;
                uint16_t ***l_1028 = &l_1029;
                uint16_t ****l_1027 = &l_1028;
                VECTOR(int8_t, 2) l_1033 = (VECTOR(int8_t, 2))((-1L), 0L);
                VECTOR(int8_t, 4) l_1034 = (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, (-1L)), (-1L));
                int32_t l_1043 = (-1L);
                uint64_t **l_1046 = &p_1272->g_762;
                uint64_t **l_1048 = &p_1272->g_762;
                int i;
                l_1043 = (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 2))(0x1FL, 0L)).xyxyyyyyxyyyxyyy, ((VECTOR(int8_t, 8))(l_1024.xwwywxzz)).s3666130220650552, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((-1L), p_26, 0x7CL, (safe_sub_func_uint16_t_u_u(((void*)0 == l_1027), (safe_add_func_uint64_t_u_u(p_27, 0x6FBAC59CCBE82D46L)))), ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(l_1032.s4560)).lo, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(l_1033.yyxxyyyyxyxxyyyx)).odd >= ((VECTOR(int8_t, 2))(l_1034.wy)).yxyyyxxy))).s36 && ((VECTOR(int8_t, 16))(l_1035.s3344470702522766)).s1e)))))), ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 4))(p_1272->g_1036.s2610)).wwywzyww, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(p_1272->g_1037.sf6f55af0)).s0, 0x15L, ((VECTOR(int8_t, 4))(l_1038.xxxy)), 6L, 1L))))).s7335346404573517 && ((VECTOR(int8_t, 4))(l_1039.yzyz)).xwyyzyyxyxwzxyxy))).sa8 > ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))(p_1272->g_1040.s37)).xxxxxxxxyxxxxxxx, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))((((safe_mul_func_int16_t_s_s((((VECTOR(int8_t, 16))(p_25, (*p_1272->g_411), 0x6BL, (((p_25 , (&l_1001[3] == (*p_1272->g_995))) != p_27) , p_26), 0L, ((VECTOR(int8_t, 8))((-7L))), 2L, (-9L), 1L)).sd <= p_1272->g_227.se), l_1033.x)) < 0x635A679C610CACC6L) != p_1272->g_73), 2L, (-1L), ((VECTOR(int8_t, 4))(1L)), 8L)).s6612772612677204 & ((VECTOR(int8_t, 16))(3L))))), ((VECTOR(int8_t, 16))(0x11L))))).s46)))))).yxyxxyxy && ((VECTOR(int8_t, 8))(0x1BL))))), (-1L), 0x47L)).s6a01 && ((VECTOR(int8_t, 4))((-7L)))))).xzwzwxyyzzxwxwww))).s243f, ((VECTOR(int8_t, 4))((-8L))), ((VECTOR(int8_t, 4))(0x54L))))).y, p_27));
                for (p_1272->g_923 = (-14); (p_1272->g_923 == 11); p_1272->g_923 = safe_add_func_uint32_t_u_u(p_1272->g_923, 9))
                { /* block id: 392 */
                    uint64_t ***l_1047[10] = {&l_1046,&l_1046,&l_1046,&l_1046,&l_1046,&l_1046,&l_1046,&l_1046,&l_1046,&l_1046};
                    int32_t *l_1049 = (void*)0;
                    int32_t *l_1050 = (void*)0;
                    int i;
                    (*p_1272->g_1051) &= (l_1046 == (l_1048 = &p_1272->g_762));
                }
                for (p_27 = (-28); (p_27 != 24); ++p_27)
                { /* block id: 398 */
                    (*p_28) = (void*)0;
                }
            }
        }
        l_1055 |= ((VECTOR(int32_t, 2))(l_1054.yx)).odd;
    }
    l_988[1] = (((safe_add_func_int16_t_s_s(((*l_1058) = l_988[0]), (l_1001[2] != (safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))((-4L), 0x46L)).lo, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_1272->g_1061.s5707)), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(l_1062.s53007215)).s65 == ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))(l_1063.s1047)).yzwwywwz, ((VECTOR(int8_t, 8))(l_1064.s50073620))))) < ((VECTOR(int8_t, 2))(l_1065.s87)).xyxyxyyy))).s1744532262452073, ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))(p_1272->g_1066.s3250750461543124)).s69a4, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 8))(l_1067.s66420054)), ((VECTOR(int8_t, 16))(0x0CL, 0x54L, (-1L), ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((-7L), ((((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 2))(p_1272->g_1068.s72)).xxyyxxxy, (int64_t)((((l_1001[1] , l_1069) , ((((safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_s(p_26, 2)), (+p_25))) && (safe_rshift_func_uint16_t_u_u(p_25, 9))) <= p_27) || GROUP_DIVERGE(2, 1))) , p_28) != &p_1272->g_1002)))).s1416335257206346, ((VECTOR(int64_t, 16))(0x04A80DA255D88259L))))).se , p_25) & p_1272->g_227.s9), (-1L), 0L, 1L, 0x5BL, ((VECTOR(int8_t, 2))(1L)), ((VECTOR(int8_t, 4))(0L)), 0x11L, (-2L), 8L, 2L)).sad4f != ((VECTOR(int8_t, 4))(0x6BL))))).hi, ((VECTOR(int8_t, 2))(0x30L))))).yyyxyxyyxxxyxyyx <= ((VECTOR(int8_t, 16))(1L))))).lo && ((VECTOR(int8_t, 8))(0x4CL))))), 0x02L, (*p_1272->g_411), (*p_1272->g_411), 0x0DL, 0x5FL)).hi))), ((VECTOR(int8_t, 8))(1L))))).s30 && ((VECTOR(int8_t, 2))(1L))))).xyxy))).ywzwyywzwxzwzwwx))).lo, ((VECTOR(int8_t, 8))((-1L)))))), ((VECTOR(int8_t, 4))((-1L))), (-6L), 0x79L, (-3L), 1L)).s78))), 0x20L, 0x4EL)).s5))))) , &p_1272->g_280[4]) != &p_26);
    return &p_1272->g_222;
}


/* ------------------------------------------ */
/* 
 * reads : p_1272->g_77 p_1272->g_935 p_1272->g_221 p_1272->g_222 p_1272->g_373 p_1272->g_967 p_1272->g_280
 * writes: p_1272->g_77 p_1272->g_222 p_1272->g_401
 */
int32_t ** func_29(uint32_t  p_30, struct S0 * p_1272)
{ /* block id: 354 */
    VECTOR(int8_t, 4) l_934 = (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x50L), 0x50L);
    int32_t l_937[9][1] = {{0x04A72626L},{0x04A72626L},{0x04A72626L},{0x04A72626L},{0x04A72626L},{0x04A72626L},{0x04A72626L},{0x04A72626L},{0x04A72626L}};
    int16_t **l_946[3];
    uint8_t *l_950 = &p_1272->g_172;
    uint8_t **l_949 = &l_950;
    uint8_t *l_951 = (void*)0;
    VECTOR(int8_t, 2) l_966 = (VECTOR(int8_t, 2))(0x55L, 0x64L);
    int32_t l_968 = 0x7B10C3B8L;
    uint32_t *l_975[7][4][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    uint8_t l_976 = 0x70L;
    int64_t *l_977[1];
    int32_t l_978 = (-8L);
    int32_t **l_979 = &p_1272->g_222;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_946[i] = &p_1272->g_202;
    for (i = 0; i < 1; i++)
        l_977[i] = (void*)0;
    for (p_1272->g_77 = 0; (p_1272->g_77 == 1); p_1272->g_77++)
    { /* block id: 357 */
        int32_t *l_936[4][7][7] = {{{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23}},{{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23}},{{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23}},{{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23},{&p_1272->g_23,(void*)0,(void*)0,&p_1272->g_61,&p_1272->g_7,(void*)0,&p_1272->g_23}}};
        int i, j, k;
        l_937[0][0] ^= (safe_unary_minus_func_uint64_t_u((((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 8))(l_934.wwxyzyyz)).s0410366014761061, ((VECTOR(int8_t, 4))(p_1272->g_935.yxxx)).xxzxwxzzwwzzzxzw))).s5 < 255UL)));
    }
    (*p_1272->g_221) = &l_937[0][0];
    (*p_1272->g_221) = (*p_1272->g_221);
    l_978 |= ((p_1272->g_77 ^ 7L) > (safe_mul_func_int16_t_s_s(((l_937[0][0] = (safe_lshift_func_uint8_t_u_s((safe_div_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(l_937[4][0], (safe_mul_func_uint16_t_u_u(((0x3B09L < ((p_30 & (safe_mod_func_uint64_t_u_u(p_1272->g_373.s4, p_30))) & 4294967295UL)) <= ((((safe_div_func_int8_t_s_s((l_968 = ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(l_966.yy)).xyxxyxxy < ((VECTOR(int8_t, 8))(p_1272->g_967.yxyxyyyy))))).s4), ((p_1272->g_401.s1 = (safe_div_func_int64_t_s_s((safe_add_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(p_1272->g_280[0], 5)), l_937[0][0])), p_30))) , l_937[0][0]))) , p_30) , p_1272->g_222) != l_975[0][1][2])), p_30)))), l_976)), 3))) >= l_976), l_966.x)));
    return &p_1272->g_222;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_37(uint16_t  p_38, uint16_t * p_39, int8_t  p_40, uint16_t * p_41, struct S0 * p_1272)
{ /* block id: 349 */
    int8_t **l_925 = &p_1272->g_411;
    int8_t ***l_926 = &l_925;
    int32_t l_927 = (-10L);
    (*l_926) = l_925;
    l_927 = l_927;
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_1272->g_21 p_1272->g_4 p_1272->g_7 p_1272->g_77 p_1272->g_75 p_1272->g_23 p_1272->g_61 p_1272->g_105 p_1272->g_73 p_1272->g_76 p_1272->g_58 p_1272->g_133 p_1272->g_150 p_1272->g_116 p_1272->g_221 p_1272->g_222 p_1272->g_159 p_1272->g_202 p_1272->g_220 p_1272->g_172 p_1272->g_628 p_1272->g_280 p_1272->g_411 p_1272->g_666 p_1272->g_74 p_1272->g_547 p_1272->g_431
 * writes: p_1272->g_58 p_1272->g_60 p_1272->g_61 p_1272->g_77 p_1272->g_21 p_1272->g_105 p_1272->g_76 p_1272->g_73 p_1272->g_75 p_1272->g_185 p_1272->g_150 p_1272->g_202 p_1272->g_220 p_1272->g_222 p_1272->g_258 p_1272->g_172 p_1272->g_74 p_1272->g_159 p_1272->g_666 p_1272->g_628 p_1272->g_431
 */
uint16_t * func_42(int32_t  p_43, struct S0 * p_1272)
{ /* block id: 13 */
    int64_t l_54 = 4L;
    int8_t *l_57 = &p_1272->g_58;
    int8_t *l_59 = &p_1272->g_60;
    int16_t l_68 = 0x7D1BL;
    uint16_t *l_80 = &p_1272->g_4;
    int32_t *l_907 = (void*)0;
    int32_t *l_908 = (void*)0;
    int32_t *l_909 = &p_1272->g_431;
    (*p_1272->g_221) = func_44(p_1272->g_21, ((p_1272->g_4 , func_48(p_1272->g_7, l_54, l_54, (safe_add_func_int8_t_s_s(p_1272->g_4, (p_1272->g_61 = ((*l_59) = ((*l_57) = 0x64L))))), (safe_mul_func_uint8_t_u_u(1UL, ((VECTOR(uint8_t, 4))((-((VECTOR(uint8_t, 8))(abs(((VECTOR(int8_t, 8))((safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(l_68, p_43)), 6)), ((VECTOR(int8_t, 4))(1L)), 0L, 1L, (-10L)))))).lo))).z)), p_1272)) , 0x6179BC93L), l_80, p_1272);
    (*l_909) |= l_68;
    return l_80;
}


/* ------------------------------------------ */
/* 
 * reads : p_1272->g_75 p_1272->g_21 p_1272->g_23 p_1272->g_61 p_1272->g_105 p_1272->g_73 p_1272->g_76 p_1272->g_7 p_1272->g_58 p_1272->g_133 p_1272->g_150 p_1272->g_116 p_1272->g_77 p_1272->g_4 p_1272->g_221 p_1272->g_222 p_1272->g_159 p_1272->g_202 p_1272->g_220 p_1272->g_172 p_1272->g_628 p_1272->g_280 p_1272->g_411 p_1272->g_666 p_1272->g_74 p_1272->g_547 p_1272->g_579
 * writes: p_1272->g_21 p_1272->g_105 p_1272->g_76 p_1272->g_73 p_1272->g_77 p_1272->g_75 p_1272->g_185 p_1272->g_150 p_1272->g_202 p_1272->g_220 p_1272->g_222 p_1272->g_258 p_1272->g_61 p_1272->g_172 p_1272->g_74 p_1272->g_159 p_1272->g_58 p_1272->g_666 p_1272->g_628
 */
int32_t * func_44(int32_t  p_45, int32_t  p_46, uint16_t * p_47, struct S0 * p_1272)
{ /* block id: 20 */
    int8_t *l_94[5][1];
    int8_t *l_96 = &p_1272->g_60;
    int8_t **l_95 = &l_96;
    int32_t *l_102 = &p_1272->g_23;
    int32_t **l_101 = &l_102;
    int16_t *l_103 = &p_1272->g_21;
    uint32_t *l_104 = &p_1272->g_105;
    int8_t l_688 = 0x3FL;
    VECTOR(uint32_t, 4) l_723 = (VECTOR(uint32_t, 4))(0x4F99FE86L, (VECTOR(uint32_t, 2))(0x4F99FE86L, 0xFA8FAFE0L), 0xFA8FAFE0L);
    int16_t ***l_728 = (void*)0;
    VECTOR(uint64_t, 2) l_740 = (VECTOR(uint64_t, 2))(0x13AE85B618C37CC5L, 0UL);
    VECTOR(int16_t, 4) l_769 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L);
    uint16_t **l_787 = (void*)0;
    uint16_t ***l_786[7];
    uint32_t l_804 = 4294967294UL;
    VECTOR(int8_t, 4) l_881 = (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, (-1L)), (-1L));
    int32_t l_899 = 1L;
    int32_t l_902 = 8L;
    int32_t *l_906 = &p_1272->g_23;
    int i, j;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_94[i][j] = &p_1272->g_58;
    }
    for (i = 0; i < 7; i++)
        l_786[i] = &l_787;
    if ((func_81(func_85((safe_lshift_func_int8_t_s_s((((*l_104) ^= ((p_1272->g_75[5] >= ((0xBAF9L & (p_45 != (safe_lshift_func_uint8_t_u_u((l_94[3][0] != ((*l_95) = l_94[2][0])), ((safe_div_func_int8_t_s_s(((((safe_mul_func_uint8_t_u_u(p_45, ((l_101 == (void*)0) != ((*l_103) = ((p_1272->g_21 >= (*l_102)) ^ 0x5BL))))) >= 0x59499140L) == 4L) && 0x47C65310EE7DBBECL), 246UL)) , p_1272->g_61))))) ^ (**l_101))) == 0L)) , 1L), p_1272->g_73)), p_1272->g_76, &p_1272->g_7, p_46, p_1272), p_47, (*l_102), p_1272) || p_46))
    { /* block id: 264 */
        int16_t **l_692 = &p_1272->g_202;
        int16_t ***l_691 = &l_692;
        int32_t l_695 = (-1L);
        int32_t *l_696 = (void*)0;
        int32_t *l_697[8][9];
        VECTOR(uint32_t, 16) l_743 = (VECTOR(uint32_t, 16))(0xFBD8BD37L, (VECTOR(uint32_t, 4))(0xFBD8BD37L, (VECTOR(uint32_t, 2))(0xFBD8BD37L, 4294967292UL), 4294967292UL), 4294967292UL, 0xFBD8BD37L, 4294967292UL, (VECTOR(uint32_t, 2))(0xFBD8BD37L, 4294967292UL), (VECTOR(uint32_t, 2))(0xFBD8BD37L, 4294967292UL), 0xFBD8BD37L, 4294967292UL, 0xFBD8BD37L, 4294967292UL);
        uint16_t **l_745 = &p_1272->g_258;
        uint16_t ***l_744 = &l_745;
        uint64_t *l_764 = &p_1272->g_666;
        uint16_t l_767[6] = {65535UL,65535UL,65535UL,65535UL,65535UL,65535UL};
        uint8_t l_768 = 0x95L;
        uint32_t l_805 = 7UL;
        int i, j;
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 9; j++)
                l_697[i][j] = &l_695;
        }
        (*l_101) = (*l_101);
        p_45 = (safe_mod_func_uint16_t_u_u((p_1272->g_172 ^ p_45), (safe_rshift_func_int16_t_s_s(((((safe_div_func_uint32_t_u_u(l_688, (safe_mod_func_int32_t_s_s((~0x6389C3D9L), 0x10A97A89L)))) > (l_691 != (void*)0)) , (((safe_add_func_int32_t_s_s((p_45 || 4294967288UL), 0L)) , l_695) <= p_45)) , p_45), 1))));
        for (l_695 = 0; (l_695 != 11); ++l_695)
        { /* block id: 269 */
            uint8_t l_704 = 0x76L;
            int32_t l_709 = 2L;
            uint32_t l_726[2][8] = {{4294967294UL,0UL,4294967294UL,4294967294UL,0UL,4294967294UL,4294967294UL,0UL},{4294967294UL,0UL,4294967294UL,4294967294UL,0UL,4294967294UL,4294967294UL,0UL}};
            int32_t l_729[8] = {(-7L),0L,(-7L),(-7L),0L,(-7L),(-7L),0L};
            int16_t l_730 = 1L;
            int32_t l_731 = 0L;
            uint16_t ***l_746 = &l_745;
            uint64_t **l_763[7][2][7] = {{{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762},{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762}},{{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762},{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762}},{{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762},{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762}},{{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762},{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762}},{{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762},{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762}},{{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762},{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762}},{{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762},{&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762,&p_1272->g_762}}};
            uint8_t *l_765 = (void*)0;
            uint8_t *l_766 = &p_1272->g_172;
            uint64_t *l_776 = (void*)0;
            uint64_t *l_777 = &p_1272->g_77;
            int64_t **l_782 = (void*)0;
            int64_t **l_783 = (void*)0;
            int64_t *l_785 = &p_1272->g_159[0];
            int64_t **l_784 = &l_785;
            uint16_t ****l_788 = &l_744;
            int64_t *l_803 = &p_1272->g_159[0];
            int i, j, k;
            l_731 = ((l_730 = (p_1272->g_628.w != ((((l_729[0] = (safe_add_func_int16_t_s_s(((p_46 , (p_46 , (l_704 == (((l_728 = (((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 4))(4UL, 4294967290UL, 0x27D8D421L, 0x9625C97CL)).xxxyywywxwxwxzwx << ((VECTOR(uint32_t, 16))(0xBD156CE9L, ((VECTOR(uint32_t, 4))(0x713548ECL, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((*l_102) | (~(((l_709 = (p_45 ^ (GROUP_DIVERGE(1, 1) , (p_46 && FAKE_DIVERGE(p_1272->group_0_offset, get_group_id(0), 10))))) > ((-1L) ^ (safe_mod_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(((p_1272->g_727 ^= ((*p_1272->g_411) &= (((safe_mul_func_int8_t_s_s(((safe_mul_func_int8_t_s_s(((*l_96) ^= (((*l_104) = ((VECTOR(uint32_t, 8))(0x5D559E16L, ((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(p_1272->g_722.yx)).yxyxxyxx << ((VECTOR(uint32_t, 8))(32))))) - ((VECTOR(uint32_t, 4))(1UL, 0x1272F2DEL, 4294967294UL, 0xF1BB5D15L)).wxzxwyzz))), ((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(l_723.wxzxwxwz)).s5012054265752466 & ((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))((((1UL & (**l_101)) , p_46) , 1UL), 0xA7609A8CL, 4294967295UL, p_45, (*l_102), p_45, 0xB97140F0L, 0x2F269E8BL)).s5531652103127261 + ((VECTOR(uint32_t, 16))(0x484EC732L))))).sb6, ((VECTOR(uint32_t, 2))(1UL))))).yxxxyyxyyxyyxxxx))).s60))).xyxyyxyy))).s33, ((VECTOR(uint32_t, 2))(4294967295UL))))), p_1272->g_540.x, ((VECTOR(uint32_t, 2))(0x81C12278L)), 5UL, 1UL)).s3) ^ p_46)), p_1272->g_402.x)) <= (*p_47)), 8UL)) > 1UL) | l_726[0][3]))) , p_1272->g_73), p_1272->g_77)), l_704)))) != l_726[1][0]))) && (**l_101)), ((VECTOR(uint32_t, 2))(7UL)), 4294967287UL)).hi + ((VECTOR(uint32_t, 2))(0x76AB9A74L))))), 0UL)), 3UL, ((VECTOR(uint32_t, 8))(4294967286UL)), 0x8D1FF89EL, 4294967287UL))))).sc , (void*)0)) != &l_692) >= 0x20CCL)))) , 0x4C7FL), (*l_102)))) > l_726[0][6]) ^ 0xE0C1L) && p_1272->g_280[4]))) <= p_46);
            l_729[0] ^= (safe_mul_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 2))(5UL, 2UL)).xyxx, ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(l_740.yy)).yxxxyxxx * ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 16))(l_743.se9f8604e9a7b45b5)).se7, ((VECTOR(uint32_t, 2))(0x5872E82AL, 0xB89852D6L))))), ((((l_746 = l_744) != (void*)0) == p_46) > ((GROUP_DIVERGE(1, 1) < p_1272->g_105) <= ((safe_unary_minus_func_int8_t_s((+((safe_rshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s((-1L), ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(p_1272->g_754.xz)) && ((VECTOR(int32_t, 8))((safe_lshift_func_int16_t_s_s(p_46, (safe_mul_func_uint8_t_u_u(((*l_766) = ((((safe_add_func_uint64_t_u_u((p_1272->g_761 == (void*)0), ((((((l_764 = p_1272->g_762) == &p_1272->g_666) < 0x29DE61691DC29BDAL) , 0x7503L) <= (*p_47)) < p_1272->g_116.s1))) == 8L) | (*l_102)) > p_46)), FAKE_DIVERGE(p_1272->local_0_offset, get_local_id(0), 10))))), 0x44E02551L, (**l_101), 0x7CF1B081L, 1L, p_46, 0x5F8F2205L, 7L)).s34))), ((VECTOR(int32_t, 2))((-1L)))))) | ((VECTOR(int32_t, 2))(0x1277CA44L))))).xyyx, ((VECTOR(int32_t, 4))(0L))))).x)), 6)) & (*l_102))))) <= (*p_1272->g_411)))), ((VECTOR(uint64_t, 2))(18446744073709551613UL)), ((VECTOR(uint64_t, 2))(0x3D9FF12A67D16A28L)), 2UL)).odd, ((VECTOR(uint64_t, 4))(0x29DE344DD47DC3DAL))))).ywwxzxzyzzyxxwyw << ((VECTOR(uint64_t, 16))(64))))).sdb & ((VECTOR(uint64_t, 2))(0x5E1645D636B97C62L))))).yxyxxxxx))).s0222230431401105 + ((VECTOR(uint64_t, 16))(7UL))))).s2f7c, ((VECTOR(uint64_t, 4))(0xD4D5C10B5EE1BDAEL))))).w, l_767[2])), (*p_47)));
            l_709 = ((l_768 < (((VECTOR(int16_t, 16))(l_769.zwzyxyzwxyxzwxxw)).s3 ^ (safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (safe_sub_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((++(*l_777)), (safe_rshift_func_uint8_t_u_s((((&p_1272->g_727 != ((l_729[0] <= 0x34A2E138L) , ((*l_784) = &p_1272->g_727))) , (void*)0) != ((*l_788) = l_786[4])), ((safe_rshift_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u((safe_sub_func_uint64_t_u_u((((((safe_mul_func_int8_t_s_s(((**l_95) |= (safe_sub_func_int64_t_s_s((((*l_103) = (0x63C0DE2E5FA00539L >= ((*l_803) = (safe_sub_func_int8_t_s_s(((*p_1272->g_411) = ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))((p_1272->g_74 || 1UL), (**l_101), (-2L), (-7L))).hi, ((VECTOR(int8_t, 2))(0x49L)), ((VECTOR(int8_t, 2))(0x12L))))), p_46, (*l_102), 1L, ((VECTOR(int8_t, 2))((-1L))), 1L)).s5), l_726[0][3]))))) && 7L), 5L))), (**l_101))) , 0x6C3DL) > 65535UL) <= (-3L)) ^ l_804), l_805)), (*p_47))), p_46)), 11)) , (*l_102)))))), p_45)))))) , p_46);
        }
    }
    else
    { /* block id: 292 */
        int32_t *l_806 = &p_1272->g_61;
        uint32_t l_815 = 0UL;
        VECTOR(int16_t, 8) l_858 = (VECTOR(int16_t, 8))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), (-1L)), (-1L)), (-1L), (-9L), (-1L));
        int32_t *l_861 = (void*)0;
        int32_t l_901 = (-2L);
        int i;
        (*l_806) |= 0x23538521L;
        (*p_1272->g_221) = &p_45;
        if (((void*)0 == (*l_95)))
        { /* block id: 295 */
            int32_t *l_822[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            VECTOR(int64_t, 8) l_849 = (VECTOR(int64_t, 8))(0x455638E0DB266DCBL, (VECTOR(int64_t, 4))(0x455638E0DB266DCBL, (VECTOR(int64_t, 2))(0x455638E0DB266DCBL, (-1L)), (-1L)), (-1L), 0x455638E0DB266DCBL, (-1L));
            VECTOR(int64_t, 4) l_859 = (VECTOR(int64_t, 4))(0x3D80F192B5B0224BL, (VECTOR(int64_t, 2))(0x3D80F192B5B0224BL, 9L), 9L);
            int i;
            for (p_1272->g_666 = 0; (p_1272->g_666 >= 52); p_1272->g_666++)
            { /* block id: 298 */
                int32_t *l_809 = (void*)0;
                int32_t *l_810 = (void*)0;
                int32_t *l_811 = (void*)0;
                int32_t *l_812 = (void*)0;
                int32_t *l_813 = (void*)0;
                int32_t *l_814[5][9][5] = {{{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61}},{{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61}},{{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61}},{{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61}},{{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61},{(void*)0,(void*)0,&p_1272->g_431,&p_1272->g_431,&p_1272->g_61}}};
                int i, j, k;
                --l_815;
                for (l_688 = 0; (l_688 < (-12)); l_688 = safe_sub_func_int32_t_s_s(l_688, 7))
                { /* block id: 302 */
                    uint8_t l_860 = 0x64L;
                    (1 + 1);
                }
                if ((**p_1272->g_221))
                    break;
            }
            (*p_1272->g_221) = &p_45;
            return l_861;
        }
        else
        { /* block id: 330 */
            uint64_t l_862 = 0xE1B525243C60CC78L;
            uint32_t l_885 = 4294967291UL;
            int32_t l_886 = (-1L);
            uint32_t l_903 = 0x3683C20DL;
            (**p_1272->g_221) = l_862;
            for (p_1272->g_74 = 3; (p_1272->g_74 <= (-6)); --p_1272->g_74)
            { /* block id: 334 */
                int32_t l_865 = 0x2EE52EDAL;
                int16_t *l_873 = (void*)0;
                int16_t **l_874 = &l_873;
                int32_t l_884 = (-10L);
                int32_t *l_887 = &l_884;
                int32_t *l_888 = &l_884;
                int32_t *l_889 = &l_886;
                int32_t *l_890 = (void*)0;
                int32_t *l_891 = (void*)0;
                int32_t *l_892 = (void*)0;
                int32_t *l_893 = (void*)0;
                int32_t *l_894 = &l_886;
                int32_t *l_895 = (void*)0;
                int32_t *l_896 = &p_1272->g_61;
                int32_t *l_897 = (void*)0;
                int32_t *l_898 = (void*)0;
                int32_t *l_900[4][9];
                int i, j;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_900[i][j] = &l_886;
                }
                (*p_1272->g_222) = (l_865 <= (safe_div_func_int8_t_s_s(((l_886 = (((void*)0 != &l_102) ^ ((safe_rshift_func_int8_t_s_s(l_862, ((p_1272->g_628.z &= ((VECTOR(uint16_t, 4))(0x5EC8L, 0x5870L, 0x7317L, 0xB446L)).w) > (((safe_unary_minus_func_uint64_t_u(((((safe_lshift_func_int16_t_s_u((&p_1272->g_21 == ((*l_874) = l_873)), 13)) > ((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(l_881.ww)).hi, 6)), (l_884 &= (~(((((*l_102) & (*p_1272->g_222)) > (safe_mod_func_int32_t_s_s((**l_101), (*p_1272->g_222)))) && 0x4DB34CA5E4789536L) , p_1272->g_547.s7))))), p_45)) != 0x708FD421L)) & (*l_102)) , l_885))) , (**l_101)) < l_885)))) && p_1272->g_77))) > 65530UL), (-1L))));
                l_903--;
            }
        }
    }
    return l_906;
}


/* ------------------------------------------ */
/* 
 * reads : p_1272->g_77
 * writes: p_1272->g_77
 */
int32_t  func_48(int64_t  p_49, uint64_t  p_50, uint8_t  p_51, int32_t  p_52, uint32_t  p_53, struct S0 * p_1272)
{ /* block id: 17 */
    int32_t *l_69 = &p_1272->g_61;
    int32_t l_70 = 4L;
    int32_t *l_71 = &l_70;
    int32_t *l_72[8];
    int i;
    for (i = 0; i < 8; i++)
        l_72[i] = (void*)0;
    ++p_1272->g_77;
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_1272->g_222 p_1272->g_221 p_1272->g_7
 * writes: p_1272->g_172 p_1272->g_222
 */
int32_t  func_81(int32_t ** p_82, uint16_t * p_83, uint64_t  p_84, struct S0 * p_1272)
{ /* block id: 108 */
    uint8_t l_266 = 0x58L;
    uint32_t l_269 = 0x6E493B48L;
    int32_t *l_279 = &p_1272->g_7;
    int32_t l_281 = 0x59A3F886L;
    int32_t l_283 = 1L;
    int32_t l_284 = (-10L);
    int32_t l_285 = 0x18894FF6L;
    int32_t l_286[1][10][10] = {{{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L},{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L},{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L},{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L},{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L},{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L},{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L},{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L},{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L},{0L,(-1L),0x603B855AL,0x14D1C14EL,(-5L),(-5L),0x14D1C14EL,0x603B855AL,(-1L),0L}}};
    uint32_t l_287 = 0x6F129DDEL;
    VECTOR(int8_t, 16) l_297 = (VECTOR(int8_t, 16))(0x30L, (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, (-1L)), (-1L)), (-1L), 0x30L, (-1L), (VECTOR(int8_t, 2))(0x30L, (-1L)), (VECTOR(int8_t, 2))(0x30L, (-1L)), 0x30L, (-1L), 0x30L, (-1L));
    VECTOR(uint32_t, 2) l_308 = (VECTOR(uint32_t, 2))(0x364C16A2L, 0x1DB97D27L);
    int16_t l_322[6][6][7] = {{{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L}},{{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L}},{{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L}},{{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L}},{{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L}},{{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L},{0L,1L,0x3383L,0x6166L,0x4436L,0x4436L,0x6166L}}};
    int32_t **l_377[7] = {&p_1272->g_222,&p_1272->g_222,&p_1272->g_222,&p_1272->g_222,&p_1272->g_222,&p_1272->g_222,&p_1272->g_222};
    VECTOR(uint32_t, 16) l_390 = (VECTOR(uint32_t, 16))(0x94AE4D4FL, (VECTOR(uint32_t, 4))(0x94AE4D4FL, (VECTOR(uint32_t, 2))(0x94AE4D4FL, 7UL), 7UL), 7UL, 0x94AE4D4FL, 7UL, (VECTOR(uint32_t, 2))(0x94AE4D4FL, 7UL), (VECTOR(uint32_t, 2))(0x94AE4D4FL, 7UL), 0x94AE4D4FL, 7UL, 0x94AE4D4FL, 7UL);
    VECTOR(uint32_t, 4) l_396 = (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 4294967293UL), 4294967293UL);
    uint16_t l_440 = 0xE5BDL;
    uint64_t l_474 = 3UL;
    uint32_t l_485 = 0x33B2B330L;
    VECTOR(uint8_t, 8) l_492 = (VECTOR(uint8_t, 8))(0x19L, (VECTOR(uint8_t, 4))(0x19L, (VECTOR(uint8_t, 2))(0x19L, 0x62L), 0x62L), 0x62L, 0x19L, 0x62L);
    int32_t l_511[9][3][4] = {{{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)}},{{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)}},{{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)}},{{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)}},{{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)}},{{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)}},{{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)}},{{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)}},{{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)},{(-6L),0x57DCD104L,0x3F81D0E2L,(-3L)}}};
    uint32_t l_548[8][9][3] = {{{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL}},{{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL}},{{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL}},{{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL}},{{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL}},{{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL}},{{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL}},{{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL},{4294967295UL,4UL,4UL}}};
    VECTOR(int16_t, 4) l_558 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0690L), 0x0690L);
    VECTOR(uint32_t, 2) l_561 = (VECTOR(uint32_t, 2))(0x0647A13DL, 0xFFF1458DL);
    VECTOR(uint8_t, 8) l_596 = (VECTOR(uint8_t, 8))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0x96L), 0x96L), 0x96L, 248UL, 0x96L);
    int16_t l_640 = 6L;
    int8_t *l_645 = &p_1272->g_74;
    VECTOR(int32_t, 16) l_681 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 9L), 9L), 9L, (-1L), 9L, (VECTOR(int32_t, 2))((-1L), 9L), (VECTOR(int32_t, 2))((-1L), 9L), (-1L), 9L, (-1L), 9L);
    int i, j, k;
    for (p_1272->g_172 = 0; (p_1272->g_172 < 51); p_1272->g_172 = safe_add_func_int8_t_s_s(p_1272->g_172, 7))
    { /* block id: 111 */
        int32_t *l_265[8][2] = {{&p_1272->g_23,&p_1272->g_23},{&p_1272->g_23,&p_1272->g_23},{&p_1272->g_23,&p_1272->g_23},{&p_1272->g_23,&p_1272->g_23},{&p_1272->g_23,&p_1272->g_23},{&p_1272->g_23,&p_1272->g_23},{&p_1272->g_23,&p_1272->g_23},{&p_1272->g_23,&p_1272->g_23}};
        int i, j;
        (*p_1272->g_221) = (*p_82);
        l_266++;
        l_269--;
    }
    return (*l_279);
}


/* ------------------------------------------ */
/* 
 * reads : p_1272->g_7 p_1272->g_76 p_1272->g_58 p_1272->g_105 p_1272->g_133 p_1272->g_150 p_1272->g_75 p_1272->g_116 p_1272->g_21 p_1272->g_77 p_1272->g_4 p_1272->g_221 p_1272->g_222 p_1272->g_159 p_1272->g_202 p_1272->g_220
 * writes: p_1272->g_76 p_1272->g_73 p_1272->g_77 p_1272->g_75 p_1272->g_105 p_1272->g_185 p_1272->g_150 p_1272->g_21 p_1272->g_202 p_1272->g_220 p_1272->g_222 p_1272->g_258 p_1272->g_61
 */
int32_t ** func_85(uint32_t  p_86, uint32_t  p_87, int32_t * p_88, uint8_t  p_89, struct S0 * p_1272)
{ /* block id: 24 */
    uint64_t l_106 = 18446744073709551606UL;
    VECTOR(int32_t, 2) l_134 = (VECTOR(int32_t, 2))(0x048039CCL, 0L);
    int32_t l_162 = 2L;
    VECTOR(int16_t, 2) l_169 = (VECTOR(int16_t, 2))((-2L), 9L);
    int16_t *l_203 = (void*)0;
    uint16_t l_237 = 0xAA90L;
    VECTOR(int8_t, 8) l_250 = (VECTOR(int8_t, 8))(0x58L, (VECTOR(int8_t, 4))(0x58L, (VECTOR(int8_t, 2))(0x58L, 0x49L), 0x49L), 0x49L, 0x58L, 0x49L);
    VECTOR(int8_t, 4) l_251 = (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, (-6L)), (-6L));
    VECTOR(int8_t, 4) l_252 = (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x74L), 0x74L);
    VECTOR(int8_t, 16) l_253 = (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x5BL), 0x5BL), 0x5BL, (-8L), 0x5BL, (VECTOR(int8_t, 2))((-8L), 0x5BL), (VECTOR(int8_t, 2))((-8L), 0x5BL), (-8L), 0x5BL, (-8L), 0x5BL);
    VECTOR(int8_t, 16) l_254 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int8_t, 2))((-1L), 1L), (VECTOR(int8_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
    VECTOR(int8_t, 16) l_255 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int8_t, 2))((-1L), 1L), (VECTOR(int8_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
    uint16_t *l_257 = &l_237;
    uint16_t **l_256[6] = {&l_257,&l_257,&l_257,&l_257,&l_257,&l_257};
    VECTOR(int8_t, 16) l_259 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x7FL), 0x7FL), 0x7FL, 1L, 0x7FL, (VECTOR(int8_t, 2))(1L, 0x7FL), (VECTOR(int8_t, 2))(1L, 0x7FL), 1L, 0x7FL, 1L, 0x7FL);
    VECTOR(int8_t, 16) l_260 = (VECTOR(int8_t, 16))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x42L), 0x42L), 0x42L, (-9L), 0x42L, (VECTOR(int8_t, 2))((-9L), 0x42L), (VECTOR(int8_t, 2))((-9L), 0x42L), (-9L), 0x42L, (-9L), 0x42L);
    int32_t *l_261 = &p_1272->g_61;
    int i;
    if (((p_86 , (l_106 = (*p_88))) >= FAKE_DIVERGE(p_1272->local_0_offset, get_local_id(0), 10)))
    { /* block id: 26 */
        VECTOR(int32_t, 2) l_115 = (VECTOR(int32_t, 2))(0x3F556C05L, (-7L));
        VECTOR(int32_t, 16) l_129 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 7L), 7L), 7L, 0L, 7L, (VECTOR(int32_t, 2))(0L, 7L), (VECTOR(int32_t, 2))(0L, 7L), 0L, 7L, 0L, 7L);
        VECTOR(int32_t, 8) l_135 = (VECTOR(int32_t, 8))(0x2E8761BCL, (VECTOR(int32_t, 4))(0x2E8761BCL, (VECTOR(int32_t, 2))(0x2E8761BCL, (-10L)), (-10L)), (-10L), 0x2E8761BCL, (-10L));
        VECTOR(int16_t, 2) l_136 = (VECTOR(int16_t, 2))(0x28FEL, 0x1D69L);
        VECTOR(uint64_t, 2) l_175 = (VECTOR(uint64_t, 2))(0x2427BCE4062863D5L, 0UL);
        int32_t *l_176 = (void*)0;
        int16_t l_189 = 1L;
        VECTOR(int32_t, 8) l_204 = (VECTOR(int32_t, 8))(0x20BBD9F0L, (VECTOR(int32_t, 4))(0x20BBD9F0L, (VECTOR(int32_t, 2))(0x20BBD9F0L, 0x160B59D5L), 0x160B59D5L), 0x160B59D5L, 0x20BBD9F0L, 0x160B59D5L);
        VECTOR(uint32_t, 16) l_205 = (VECTOR(uint32_t, 16))(0xC5786C62L, (VECTOR(uint32_t, 4))(0xC5786C62L, (VECTOR(uint32_t, 2))(0xC5786C62L, 4294967287UL), 4294967287UL), 4294967287UL, 0xC5786C62L, 4294967287UL, (VECTOR(uint32_t, 2))(0xC5786C62L, 4294967287UL), (VECTOR(uint32_t, 2))(0xC5786C62L, 4294967287UL), 0xC5786C62L, 4294967287UL, 0xC5786C62L, 4294967287UL);
        int i;
        for (p_1272->g_76 = 0; (p_1272->g_76 <= (-5)); p_1272->g_76 = safe_sub_func_int32_t_s_s(p_1272->g_76, 5))
        { /* block id: 29 */
            uint16_t l_109 = 9UL;
            uint32_t l_154 = 0x80E1D116L;
            VECTOR(uint32_t, 8) l_186 = (VECTOR(uint32_t, 8))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 1UL), 1UL), 1UL, 4294967287UL, 1UL);
            int32_t l_188 = 0x4CC00686L;
            int i;
            l_109--;
            for (p_1272->g_73 = (-16); (p_1272->g_73 > (-5)); p_1272->g_73 = safe_add_func_int8_t_s_s(p_1272->g_73, 1))
            { /* block id: 33 */
                int32_t l_114 = 4L;
                int32_t *l_118 = (void*)0;
                int32_t **l_117 = &l_118;
                int32_t **l_119 = (void*)0;
                int32_t **l_120[8];
                VECTOR(int32_t, 16) l_174 = (VECTOR(int32_t, 16))(0x5C3F510EL, (VECTOR(int32_t, 4))(0x5C3F510EL, (VECTOR(int32_t, 2))(0x5C3F510EL, 0x00449F6AL), 0x00449F6AL), 0x00449F6AL, 0x5C3F510EL, 0x00449F6AL, (VECTOR(int32_t, 2))(0x5C3F510EL, 0x00449F6AL), (VECTOR(int32_t, 2))(0x5C3F510EL, 0x00449F6AL), 0x5C3F510EL, 0x00449F6AL, 0x5C3F510EL, 0x00449F6AL);
                uint32_t l_213 = 1UL;
                int16_t l_228 = (-1L);
                int i;
                for (i = 0; i < 8; i++)
                    l_120[i] = (void*)0;
                if (l_114)
                    break;
                p_88 = ((p_1272->g_58 >= ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(l_115.yxyy)), ((VECTOR(int32_t, 4))(p_1272->g_116.s8485))))).x) , ((*l_117) = (void*)0));
                for (p_1272->g_77 = 20; (p_1272->g_77 == 15); p_1272->g_77 = safe_sub_func_uint32_t_u_u(p_1272->g_77, 2))
                { /* block id: 39 */
                    int16_t *l_151 = &p_1272->g_75[4];
                    VECTOR(int32_t, 4) l_173 = (VECTOR(int32_t, 4))(0x74F6A418L, (VECTOR(int32_t, 2))(0x74F6A418L, 3L), 3L);
                    int i;
                    for (l_114 = 0; (l_114 >= (-5)); --l_114)
                    { /* block id: 42 */
                        if (l_106)
                            break;
                    }
                    if ((safe_lshift_func_uint16_t_u_s(0x7AD6L, (p_1272->g_75[5] = (p_1272->g_105 ^ p_86)))))
                    { /* block id: 46 */
                        VECTOR(int32_t, 2) l_132 = (VECTOR(int32_t, 2))(0x1FA51574L, (-1L));
                        int8_t *l_155 = (void*)0;
                        int8_t *l_156 = &p_1272->g_74;
                        int64_t *l_157 = (void*)0;
                        int64_t *l_158 = &p_1272->g_159[0];
                        uint32_t *l_160 = (void*)0;
                        uint32_t *l_161 = &p_1272->g_105;
                        int8_t *l_170 = &p_1272->g_60;
                        uint8_t *l_171 = &p_1272->g_172;
                        int i;
                        l_162 ^= (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 8))(l_129.sf97b59c6)).s5, (~((*l_161) = ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(abs(((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 16))(3L, 4L, 0L, 0L, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(l_132.xy)).yxxxyyxx <= ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(p_1272->g_133.zywxwwxzyxyzxwxw)).s5f28, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(l_134.yyxx)).wywzzyyyyzzzyzyx, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(0x46AFD119L, (-4L)))))), (-1L), (-2L))).hi ^ ((VECTOR(int32_t, 4))(l_135.s6025)).lo))).xyxx && ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 4))(l_136.yyyy)).zyxwywwwywzzzwxz, ((VECTOR(uint16_t, 2))(0x41C7L, 0xB48CL)).yyxxyxxxxyxyxxxy))).s0da0))).yxyzxzxy && ((VECTOR(int32_t, 16))((safe_sub_func_int32_t_s_s(((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), (((VECTOR(uint16_t, 4))(p_1272->g_141.s4100)).y <= (~(0x7CCFL && ((((safe_mul_func_uint8_t_u_u(p_1272->g_77, p_86)) , (((safe_sub_func_uint8_t_u_u((((*l_158) = ((safe_sub_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x0449A313L, (-1L))), 0L, 1L)) < ((VECTOR(int32_t, 4))(p_1272->g_150.yxxx))))).x && (((((void*)0 == l_151) , 0x8A434C43L) , (((VECTOR(int8_t, 4))(((((((VECTOR(uint64_t, 8))(5UL, 0UL, 6UL, (safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 16))((-7L), 0L, ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(0x0FL, (l_154 , p_87), 1L, 0x1EL)) && ((VECTOR(int8_t, 16))(((*l_156) = 3L), ((VECTOR(int8_t, 4))(0x75L)), 5L, ((VECTOR(int8_t, 8))(0L)), 0x39L, (-1L))).s665e))).wyywwzyz, ((VECTOR(int8_t, 8))(0x02L))))), 0x5DL, p_87, p_1272->g_74, ((VECTOR(int8_t, 2))(0x50L)), 0x10L)).sf, 7)), ((VECTOR(uint64_t, 2))(0x0A444081C4FB29E5L)), 0x6B11A4FFB4B72DBCL, 0x3962AE52791890F0L)).s0 , 1UL) || p_87) && p_86) < 0x0539L), 0x74L, 0x5DL, 0L)).x || GROUP_DIVERGE(1, 1))) & 0x5CF9L)), p_86)), p_1272->g_77)) > p_1272->g_141.s0)) , p_1272->g_133.w), p_89)) & p_1272->g_77) < l_106)) , l_109) <= GROUP_DIVERGE(2, 1))))))) & 0x1D4BL), p_1272->g_141.s5)), 0x024A6B5CL, p_1272->g_141.s4, ((VECTOR(int32_t, 8))(0L)), 1L, ((VECTOR(int32_t, 2))(0x232CF900L)), (-7L), 1L)).lo))).s3727374255260544, ((VECTOR(int32_t, 16))(0x7654C189L))))).s4117, ((VECTOR(int32_t, 4))(0x0604E30FL))))).odd, ((VECTOR(int32_t, 2))(0L))))).yyyyyyyy))), 1L, ((VECTOR(int32_t, 2))(3L)), 0x2F73C685L)).se7))).xyxyyxyy))).even + ((VECTOR(uint32_t, 4))(0x06F248DDL))))).w))));
                        l_176 = ((safe_add_func_int8_t_s_s(p_1272->g_133.y, (l_129.sb ^= ((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(l_169.xyyyyyxxxyyxxyyx)).odd, ((VECTOR(int16_t, 2))((~((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(8L, 1L)), ((VECTOR(int16_t, 2))((~((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(p_86, 0x15FCL, (p_1272->g_75[3] | ((p_1272->g_105 = (p_1272->g_116.s5 <= ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(0x4A42F718L, (((*l_170) ^= ((*l_156) ^= 0x15L)) && ((*l_171) = p_87)), ((VECTOR(int32_t, 4))(l_173.yxzw)), 4L, 0x02CC8EEDL)).s57 && ((VECTOR(int32_t, 8))(l_174.s1b49479a)).s41))).lo)) > (((VECTOR(uint64_t, 8))(l_175.yxyyyyxy)).s7 <= 0x4EE2F412CFCA4276L))), 0x1F7BL, ((VECTOR(int16_t, 2))(0x7118L)), (-1L), 0x081FL)).s1260601766117217 && ((VECTOR(int16_t, 16))(8L))))).lo, ((VECTOR(int16_t, 8))(0x4605L))))).s3745565020445237 && ((VECTOR(int16_t, 16))(0x6FAEL))))).sea))), 0x40DFL, l_132.x, (-9L), 0x1C68L)).s27))).xyyxyxxy, ((VECTOR(int16_t, 8))(5L))))).s00 && ((VECTOR(int16_t, 2))(1L))))).xyyxxyxy > ((VECTOR(int16_t, 8))(0L))))).s6, GROUP_DIVERGE(1, 1))), ((VECTOR(uint16_t, 4))(0x6CB6L)), ((VECTOR(uint16_t, 2))(65535UL)), 0UL)), ((VECTOR(uint16_t, 8))(65534UL))))).s3, p_1272->g_7)) <= l_175.y)))) , (void*)0);
                        if (l_134.y)
                            break;
                    }
                    else
                    { /* block id: 58 */
                        if (l_106)
                            break;
                    }
                }
                if (((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1272->global_2_offset, get_global_id(2), 10), GROUP_DIVERGE(0, 1))) != (safe_rshift_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u(0xBE5DL, (p_89 == 1L))) || (-7L)), 0xD9C584D33C817C74L)), GROUP_DIVERGE(1, 1)))))
                { /* block id: 62 */
                    uint32_t *l_187 = &p_1272->g_105;
                    int32_t l_214 = 0x2C7D101BL;
                    p_1272->g_150.x |= ((p_1272->g_185 = l_176) != (void*)0);
                    l_189 = (l_188 = (p_88 != ((((p_1272->g_75[3] < p_1272->g_116.sc) | 0xBE5EL) != ((*l_187) = ((VECTOR(uint32_t, 2))(l_186.s11)).lo)) , l_176)));
                    for (p_1272->g_21 = 0; (p_1272->g_21 != 0); p_1272->g_21 = safe_add_func_int8_t_s_s(p_1272->g_21, 9))
                    { /* block id: 70 */
                        uint32_t l_212[6];
                        uint64_t *l_215 = (void*)0;
                        uint64_t *l_216 = (void*)0;
                        uint64_t *l_217 = (void*)0;
                        uint64_t *l_218 = (void*)0;
                        uint64_t *l_219[3][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int i, j;
                        for (i = 0; i < 6; i++)
                            l_212[i] = 0xE29FCA54L;
                        p_1272->g_150.y |= (safe_div_func_uint32_t_u_u(((safe_div_func_uint16_t_u_u(((p_1272->g_220 = (p_1272->g_77 |= (safe_mod_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((l_203 = (p_1272->g_202 = (void*)0)) == (void*)0), ((p_87 <= 0xE4L) > (p_87 | ((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_204.s55)), (-5L), 0x2DDF4B60L)).zzzywxxywzyxwzzx, ((VECTOR(uint32_t, 8))(l_205.s5b6f9c3c)).s2201424306535110))).s4)))), (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1272->group_2_offset, get_group_id(2), 10), (0x66DC162CA8FA0F41L == ((safe_sub_func_int8_t_s_s(p_89, (l_169.x < (safe_mod_func_int16_t_s_s(((((-7L) > 0x03L) > p_86) || 0x71ACL), l_212[0]))))) > l_213)))))), l_214)))) | l_212[0]), p_1272->g_4)) & p_1272->g_116.s4), p_87));
                        p_88 = ((*l_117) = &l_188);
                        return p_1272->g_221;
                    }
                }
                else
                { /* block id: 80 */
                    l_188 &= (l_134.y = ((p_1272->g_76 > (p_1272->g_133.w || (&p_1272->g_159[3] == (void*)0))) | l_204.s5));
                    l_228 ^= ((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0x8ADFL, 0x3518L)).lo, p_86)) || (safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_1272->g_227.s63799de7)).s7, 4)));
                    l_188 ^= ((65535UL & (&p_88 != &p_88)) , (l_162 = 0x4657D04DL));
                    if ((**p_1272->g_221))
                        continue;
                }
            }
        }
        return &p_1272->g_222;
    }
    else
    { /* block id: 91 */
        int32_t *l_231 = &l_162;
        int32_t *l_232 = &l_162;
        int32_t *l_233[5][6] = {{(void*)0,&p_1272->g_7,(void*)0,(void*)0,&p_1272->g_7,(void*)0},{(void*)0,&p_1272->g_7,(void*)0,(void*)0,&p_1272->g_7,(void*)0},{(void*)0,&p_1272->g_7,(void*)0,(void*)0,&p_1272->g_7,(void*)0},{(void*)0,&p_1272->g_7,(void*)0,(void*)0,&p_1272->g_7,(void*)0},{(void*)0,&p_1272->g_7,(void*)0,(void*)0,&p_1272->g_7,(void*)0}};
        int64_t l_234 = 1L;
        int16_t l_235 = 0x35BEL;
        int16_t l_236 = (-1L);
        int i, j;
        (*p_1272->g_221) = p_88;
        for (p_1272->g_105 = 22; (p_1272->g_105 <= 41); p_1272->g_105++)
        { /* block id: 95 */
            if ((*p_1272->g_222))
                break;
            return &p_1272->g_222;
        }
        if (p_1272->g_7)
            goto lbl_262;
        l_237++;
        (*l_231) = (((safe_mod_func_int16_t_s_s((safe_div_func_uint64_t_u_u(p_1272->g_159[2], p_1272->g_150.y)), p_86)) <= 1L) ^ p_86);
    }
lbl_262:
    (*l_261) = (safe_mul_func_int16_t_s_s(((*p_1272->g_202) = (*p_1272->g_202)), ((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_250.s3423340262753072)).s0, (((0x7FL && ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(l_251.wx)).xxxxyyyx && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(l_252.ywyy)).odd ^ ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(l_253.sd9)).xxxy && ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(0L, 0x38L, 0x5BL, 1L)).odd, ((VECTOR(int8_t, 16))(l_254.s66704019f7ff7380)).sda))).yxyx))).zwyxwwyxwxzyzwzy && ((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))(0x34L, 0x2DL)).xyxx, ((VECTOR(int8_t, 2))(l_255.s05)).xyxx))).zyzyyxywwwyzyxzw, ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))(0L, (-6L))).xyyxyxxxxxxxxyxy))))))))).sb6))).xxxy && ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(0x0AL, ((p_1272->g_258 = &l_237) != &p_1272->g_4), ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_259.s94)), 0x5CL, ((VECTOR(int8_t, 2))(l_260.s27)), 0L, 0x60L, 0x64L)).s33, ((VECTOR(int8_t, 8))(0x37L, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((-1L), 0x3FL)), ((VECTOR(int8_t, 8))(p_1272->g_105, ((0UL && p_1272->g_4) , (-1L)), (-10L), 2L, (-9L), p_1272->g_220, 0L, 0x5BL)), (-5L), ((VECTOR(int8_t, 4))(0x7CL)), 0x59L)), ((VECTOR(int8_t, 16))(0x5DL)), ((VECTOR(int8_t, 16))(0x72L))))).sd4, ((VECTOR(int8_t, 2))(0x17L)), ((VECTOR(int8_t, 2))(0x70L))))), ((VECTOR(int8_t, 2))(0x67L)), p_86, 5L, (-3L))).s42))).xxxxxyyx >= ((VECTOR(int8_t, 8))(0x78L))))), 0x1EL, 1L, 1L, 0x54L, 1L, 0x34L)) != ((VECTOR(int8_t, 16))(0x46L))))).s1b76))) && ((VECTOR(int8_t, 4))((-1L)))))).xzxzwxzz))).s3) && p_86) && p_87))) , p_89), 14)) == p_87)));
    (*p_1272->g_221) = (void*)0;
    return &p_1272->g_222;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1273;
    struct S0* p_1272 = &c_1273;
    struct S0 c_1274 = {
        0x1621L, // p_1272->g_4
        0x5A60D005L, // p_1272->g_7
        255UL, // p_1272->g_15
        1L, // p_1272->g_21
        7L, // p_1272->g_23
        &p_1272->g_23, // p_1272->g_22
        0x1791L, // p_1272->g_36
        0x74L, // p_1272->g_58
        0x32L, // p_1272->g_60
        0L, // p_1272->g_61
        (-9L), // p_1272->g_73
        0x4BL, // p_1272->g_74
        {(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)}, // p_1272->g_75
        0x351ECC88L, // p_1272->g_76
        1UL, // p_1272->g_77
        7UL, // p_1272->g_105
        (VECTOR(int32_t, 16))(0x4D59534EL, (VECTOR(int32_t, 4))(0x4D59534EL, (VECTOR(int32_t, 2))(0x4D59534EL, (-1L)), (-1L)), (-1L), 0x4D59534EL, (-1L), (VECTOR(int32_t, 2))(0x4D59534EL, (-1L)), (VECTOR(int32_t, 2))(0x4D59534EL, (-1L)), 0x4D59534EL, (-1L), 0x4D59534EL, (-1L)), // p_1272->g_116
        (VECTOR(int32_t, 4))(0x225B6AC9L, (VECTOR(int32_t, 2))(0x225B6AC9L, 0x279E96FCL), 0x279E96FCL), // p_1272->g_133
        (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0x1AB6L), 0x1AB6L), 0x1AB6L, 8UL, 0x1AB6L), // p_1272->g_141
        (VECTOR(int32_t, 2))((-2L), 0x4F833B27L), // p_1272->g_150
        {0x2A2132D04EE4DB16L,0x2A2132D04EE4DB16L,0x2A2132D04EE4DB16L,0x2A2132D04EE4DB16L}, // p_1272->g_159
        6UL, // p_1272->g_172
        &p_1272->g_105, // p_1272->g_185
        &p_1272->g_75[3], // p_1272->g_202
        0x4463L, // p_1272->g_220
        &p_1272->g_7, // p_1272->g_222
        &p_1272->g_222, // p_1272->g_221
        (VECTOR(int8_t, 16))(0x2AL, (VECTOR(int8_t, 4))(0x2AL, (VECTOR(int8_t, 2))(0x2AL, 0x71L), 0x71L), 0x71L, 0x2AL, 0x71L, (VECTOR(int8_t, 2))(0x2AL, 0x71L), (VECTOR(int8_t, 2))(0x2AL, 0x71L), 0x2AL, 0x71L, 0x2AL, 0x71L), // p_1272->g_227
        (void*)0, // p_1272->g_258
        {0x18FFF755FFD0329CL,0x18FFF755FFD0329CL,0x18FFF755FFD0329CL,0x18FFF755FFD0329CL,0x18FFF755FFD0329CL,0x18FFF755FFD0329CL}, // p_1272->g_280
        (VECTOR(uint32_t, 16))(0xFD019646L, (VECTOR(uint32_t, 4))(0xFD019646L, (VECTOR(uint32_t, 2))(0xFD019646L, 4294967295UL), 4294967295UL), 4294967295UL, 0xFD019646L, 4294967295UL, (VECTOR(uint32_t, 2))(0xFD019646L, 4294967295UL), (VECTOR(uint32_t, 2))(0xFD019646L, 4294967295UL), 0xFD019646L, 4294967295UL, 0xFD019646L, 4294967295UL), // p_1272->g_309
        (VECTOR(uint32_t, 2))(0x77EC0581L, 0xF60DE1CBL), // p_1272->g_319
        (VECTOR(int64_t, 4))(0x4D933EFBF385465BL, (VECTOR(int64_t, 2))(0x4D933EFBF385465BL, (-10L)), (-10L)), // p_1272->g_334
        (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, (-2L)), (-2L)), // p_1272->g_335
        (VECTOR(uint8_t, 8))(0xA4L, (VECTOR(uint8_t, 4))(0xA4L, (VECTOR(uint8_t, 2))(0xA4L, 255UL), 255UL), 255UL, 0xA4L, 255UL), // p_1272->g_373
        0x5339L, // p_1272->g_385
        (VECTOR(uint32_t, 16))(0x5939D6A1L, (VECTOR(uint32_t, 4))(0x5939D6A1L, (VECTOR(uint32_t, 2))(0x5939D6A1L, 0x2C07D8D0L), 0x2C07D8D0L), 0x2C07D8D0L, 0x5939D6A1L, 0x2C07D8D0L, (VECTOR(uint32_t, 2))(0x5939D6A1L, 0x2C07D8D0L), (VECTOR(uint32_t, 2))(0x5939D6A1L, 0x2C07D8D0L), 0x5939D6A1L, 0x2C07D8D0L, 0x5939D6A1L, 0x2C07D8D0L), // p_1272->g_399
        (VECTOR(uint32_t, 2))(4294967295UL, 1UL), // p_1272->g_400
        (VECTOR(uint32_t, 8))(0x7C85503FL, (VECTOR(uint32_t, 4))(0x7C85503FL, (VECTOR(uint32_t, 2))(0x7C85503FL, 1UL), 1UL), 1UL, 0x7C85503FL, 1UL), // p_1272->g_401
        (VECTOR(uint32_t, 2))(0x75A12033L, 0x12767AB7L), // p_1272->g_402
        &p_1272->g_74, // p_1272->g_411
        {&p_1272->g_411}, // p_1272->g_410
        1L, // p_1272->g_431
        0x2EL, // p_1272->g_433
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x65C3A02A84565225L), 0x65C3A02A84565225L), // p_1272->g_540
        (VECTOR(uint16_t, 16))(0xAC8CL, (VECTOR(uint16_t, 4))(0xAC8CL, (VECTOR(uint16_t, 2))(0xAC8CL, 2UL), 2UL), 2UL, 0xAC8CL, 2UL, (VECTOR(uint16_t, 2))(0xAC8CL, 2UL), (VECTOR(uint16_t, 2))(0xAC8CL, 2UL), 0xAC8CL, 2UL, 0xAC8CL, 2UL), // p_1272->g_545
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int64_t, 2))(0L, 0L), (VECTOR(int64_t, 2))(0L, 0L), 0L, 0L, 0L, 0L), // p_1272->g_547
        {0x494AL,0x494AL,0x494AL,0x494AL,0x494AL,0x494AL,0x494AL,0x494AL,0x494AL,0x494AL}, // p_1272->g_579
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x6E8FBEFA39EAE0FAL), 0x6E8FBEFA39EAE0FAL), 0x6E8FBEFA39EAE0FAL, (-1L), 0x6E8FBEFA39EAE0FAL, (VECTOR(int64_t, 2))((-1L), 0x6E8FBEFA39EAE0FAL), (VECTOR(int64_t, 2))((-1L), 0x6E8FBEFA39EAE0FAL), (-1L), 0x6E8FBEFA39EAE0FAL, (-1L), 0x6E8FBEFA39EAE0FAL), // p_1272->g_608
        (VECTOR(int16_t, 2))(5L, 0x6C2EL), // p_1272->g_615
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xE9C0L), 0xE9C0L), // p_1272->g_628
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x6FFCL), 0x6FFCL), 0x6FFCL, (-1L), 0x6FFCL, (VECTOR(int16_t, 2))((-1L), 0x6FFCL), (VECTOR(int16_t, 2))((-1L), 0x6FFCL), (-1L), 0x6FFCL, (-1L), 0x6FFCL), // p_1272->g_656
        0xEEACB47B3C885342L, // p_1272->g_666
        (VECTOR(uint32_t, 2))(4UL, 0xE478C822L), // p_1272->g_722
        (-6L), // p_1272->g_727
        (VECTOR(int32_t, 4))(0x498EBABDL, (VECTOR(int32_t, 2))(0x498EBABDL, (-5L)), (-5L)), // p_1272->g_754
        (void*)0, // p_1272->g_761
        (void*)0, // p_1272->g_762
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x04D88774L), 0x04D88774L), 0x04D88774L, 1L, 0x04D88774L), // p_1272->g_825
        {{{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL}},{{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL}},{{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL}},{{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL}},{{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL}},{{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL},{4294967295UL,0x8964755DL,0x903F557BL,1UL,4294967295UL}}}, // p_1272->g_835
        1UL, // p_1272->g_912
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x69L), 0x69L), 0x69L, 0UL, 0x69L), // p_1272->g_919
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), // p_1272->g_920
        18446744073709551615UL, // p_1272->g_923
        (VECTOR(int8_t, 2))(2L, (-2L)), // p_1272->g_935
        (VECTOR(int8_t, 2))(0x12L, (-1L)), // p_1272->g_967
        (void*)0, // p_1272->g_996
        &p_1272->g_996, // p_1272->g_995
        (void*)0, // p_1272->g_1002
        &p_1272->g_7, // p_1272->g_1003
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x55L), 0x55L), 0x55L, 1L, 0x55L), // p_1272->g_1036
        (VECTOR(int8_t, 16))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 6L), 6L), 6L, 4L, 6L, (VECTOR(int8_t, 2))(4L, 6L), (VECTOR(int8_t, 2))(4L, 6L), 4L, 6L, 4L, 6L), // p_1272->g_1037
        (VECTOR(int8_t, 16))(0x50L, (VECTOR(int8_t, 4))(0x50L, (VECTOR(int8_t, 2))(0x50L, 0x68L), 0x68L), 0x68L, 0x50L, 0x68L, (VECTOR(int8_t, 2))(0x50L, 0x68L), (VECTOR(int8_t, 2))(0x50L, 0x68L), 0x50L, 0x68L, 0x50L, 0x68L), // p_1272->g_1040
        &p_1272->g_23, // p_1272->g_1051
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L)), // p_1272->g_1061
        (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 6L), 6L), 6L, (-4L), 6L), // p_1272->g_1066
        (VECTOR(int64_t, 8))((-3L), (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 0x2BDEF335DDF24258L), 0x2BDEF335DDF24258L), 0x2BDEF335DDF24258L, (-3L), 0x2BDEF335DDF24258L), // p_1272->g_1068
        (void*)0, // p_1272->g_1078
        (VECTOR(int32_t, 2))(0x2FAC43EDL, 1L), // p_1272->g_1087
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x3E734157L), 0x3E734157L), 0x3E734157L, (-1L), 0x3E734157L), // p_1272->g_1091
        (VECTOR(int32_t, 8))(0x445163E8L, (VECTOR(int32_t, 4))(0x445163E8L, (VECTOR(int32_t, 2))(0x445163E8L, 0x39565CDFL), 0x39565CDFL), 0x39565CDFL, 0x445163E8L, 0x39565CDFL), // p_1272->g_1092
        0x2D14429D09E0ACD0L, // p_1272->g_1105
        &p_1272->g_431, // p_1272->g_1135
        &p_1272->g_1135, // p_1272->g_1134
        0x0312L, // p_1272->g_1143
        &p_1272->g_1143, // p_1272->g_1142
        &p_1272->g_1142, // p_1272->g_1141
        &p_1272->g_1141, // p_1272->g_1140
        (VECTOR(uint8_t, 2))(0x5DL, 0x0CL), // p_1272->g_1144
        0UL, // p_1272->g_1150
        &p_1272->g_431, // p_1272->g_1151
        (VECTOR(int8_t, 16))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-10L)), (-10L)), (-10L), (-3L), (-10L), (VECTOR(int8_t, 2))((-3L), (-10L)), (VECTOR(int8_t, 2))((-3L), (-10L)), (-3L), (-10L), (-3L), (-10L)), // p_1272->g_1161
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 2L), 2L), 2L, 1L, 2L), // p_1272->g_1171
        0x3CL, // p_1272->g_1178
        (VECTOR(uint16_t, 16))(0x6C39L, (VECTOR(uint16_t, 4))(0x6C39L, (VECTOR(uint16_t, 2))(0x6C39L, 65535UL), 65535UL), 65535UL, 0x6C39L, 65535UL, (VECTOR(uint16_t, 2))(0x6C39L, 65535UL), (VECTOR(uint16_t, 2))(0x6C39L, 65535UL), 0x6C39L, 65535UL, 0x6C39L, 65535UL), // p_1272->g_1184
        (void*)0, // p_1272->g_1188
        (VECTOR(int16_t, 8))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 0x13EEL), 0x13EEL), 0x13EEL, 9L, 0x13EEL), // p_1272->g_1192
        (VECTOR(int32_t, 2))(0x2F7C369AL, 0x660CED93L), // p_1272->g_1194
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 3L), 3L), 3L, 1L, 3L), // p_1272->g_1195
        (VECTOR(int16_t, 2))(0x1216L, 0x2910L), // p_1272->g_1197
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L), // p_1272->g_1214
        (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 1UL), 1UL), // p_1272->g_1229
        (VECTOR(int8_t, 4))(0x62L, (VECTOR(int8_t, 2))(0x62L, 0x0FL), 0x0FL), // p_1272->g_1257
        (VECTOR(int32_t, 2))(0x0D4475B8L, 7L), // p_1272->g_1262
        sequence_input[get_global_id(0)], // p_1272->global_0_offset
        sequence_input[get_global_id(1)], // p_1272->global_1_offset
        sequence_input[get_global_id(2)], // p_1272->global_2_offset
        sequence_input[get_local_id(0)], // p_1272->local_0_offset
        sequence_input[get_local_id(1)], // p_1272->local_1_offset
        sequence_input[get_local_id(2)], // p_1272->local_2_offset
        sequence_input[get_group_id(0)], // p_1272->group_0_offset
        sequence_input[get_group_id(1)], // p_1272->group_1_offset
        sequence_input[get_group_id(2)], // p_1272->group_2_offset
    };
    c_1273 = c_1274;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1272);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1272->g_4, "p_1272->g_4", print_hash_value);
    transparent_crc(p_1272->g_7, "p_1272->g_7", print_hash_value);
    transparent_crc(p_1272->g_15, "p_1272->g_15", print_hash_value);
    transparent_crc(p_1272->g_21, "p_1272->g_21", print_hash_value);
    transparent_crc(p_1272->g_23, "p_1272->g_23", print_hash_value);
    transparent_crc(p_1272->g_36, "p_1272->g_36", print_hash_value);
    transparent_crc(p_1272->g_58, "p_1272->g_58", print_hash_value);
    transparent_crc(p_1272->g_60, "p_1272->g_60", print_hash_value);
    transparent_crc(p_1272->g_61, "p_1272->g_61", print_hash_value);
    transparent_crc(p_1272->g_73, "p_1272->g_73", print_hash_value);
    transparent_crc(p_1272->g_74, "p_1272->g_74", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1272->g_75[i], "p_1272->g_75[i]", print_hash_value);

    }
    transparent_crc(p_1272->g_76, "p_1272->g_76", print_hash_value);
    transparent_crc(p_1272->g_77, "p_1272->g_77", print_hash_value);
    transparent_crc(p_1272->g_105, "p_1272->g_105", print_hash_value);
    transparent_crc(p_1272->g_116.s0, "p_1272->g_116.s0", print_hash_value);
    transparent_crc(p_1272->g_116.s1, "p_1272->g_116.s1", print_hash_value);
    transparent_crc(p_1272->g_116.s2, "p_1272->g_116.s2", print_hash_value);
    transparent_crc(p_1272->g_116.s3, "p_1272->g_116.s3", print_hash_value);
    transparent_crc(p_1272->g_116.s4, "p_1272->g_116.s4", print_hash_value);
    transparent_crc(p_1272->g_116.s5, "p_1272->g_116.s5", print_hash_value);
    transparent_crc(p_1272->g_116.s6, "p_1272->g_116.s6", print_hash_value);
    transparent_crc(p_1272->g_116.s7, "p_1272->g_116.s7", print_hash_value);
    transparent_crc(p_1272->g_116.s8, "p_1272->g_116.s8", print_hash_value);
    transparent_crc(p_1272->g_116.s9, "p_1272->g_116.s9", print_hash_value);
    transparent_crc(p_1272->g_116.sa, "p_1272->g_116.sa", print_hash_value);
    transparent_crc(p_1272->g_116.sb, "p_1272->g_116.sb", print_hash_value);
    transparent_crc(p_1272->g_116.sc, "p_1272->g_116.sc", print_hash_value);
    transparent_crc(p_1272->g_116.sd, "p_1272->g_116.sd", print_hash_value);
    transparent_crc(p_1272->g_116.se, "p_1272->g_116.se", print_hash_value);
    transparent_crc(p_1272->g_116.sf, "p_1272->g_116.sf", print_hash_value);
    transparent_crc(p_1272->g_133.x, "p_1272->g_133.x", print_hash_value);
    transparent_crc(p_1272->g_133.y, "p_1272->g_133.y", print_hash_value);
    transparent_crc(p_1272->g_133.z, "p_1272->g_133.z", print_hash_value);
    transparent_crc(p_1272->g_133.w, "p_1272->g_133.w", print_hash_value);
    transparent_crc(p_1272->g_141.s0, "p_1272->g_141.s0", print_hash_value);
    transparent_crc(p_1272->g_141.s1, "p_1272->g_141.s1", print_hash_value);
    transparent_crc(p_1272->g_141.s2, "p_1272->g_141.s2", print_hash_value);
    transparent_crc(p_1272->g_141.s3, "p_1272->g_141.s3", print_hash_value);
    transparent_crc(p_1272->g_141.s4, "p_1272->g_141.s4", print_hash_value);
    transparent_crc(p_1272->g_141.s5, "p_1272->g_141.s5", print_hash_value);
    transparent_crc(p_1272->g_141.s6, "p_1272->g_141.s6", print_hash_value);
    transparent_crc(p_1272->g_141.s7, "p_1272->g_141.s7", print_hash_value);
    transparent_crc(p_1272->g_150.x, "p_1272->g_150.x", print_hash_value);
    transparent_crc(p_1272->g_150.y, "p_1272->g_150.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1272->g_159[i], "p_1272->g_159[i]", print_hash_value);

    }
    transparent_crc(p_1272->g_172, "p_1272->g_172", print_hash_value);
    transparent_crc(p_1272->g_220, "p_1272->g_220", print_hash_value);
    transparent_crc(p_1272->g_227.s0, "p_1272->g_227.s0", print_hash_value);
    transparent_crc(p_1272->g_227.s1, "p_1272->g_227.s1", print_hash_value);
    transparent_crc(p_1272->g_227.s2, "p_1272->g_227.s2", print_hash_value);
    transparent_crc(p_1272->g_227.s3, "p_1272->g_227.s3", print_hash_value);
    transparent_crc(p_1272->g_227.s4, "p_1272->g_227.s4", print_hash_value);
    transparent_crc(p_1272->g_227.s5, "p_1272->g_227.s5", print_hash_value);
    transparent_crc(p_1272->g_227.s6, "p_1272->g_227.s6", print_hash_value);
    transparent_crc(p_1272->g_227.s7, "p_1272->g_227.s7", print_hash_value);
    transparent_crc(p_1272->g_227.s8, "p_1272->g_227.s8", print_hash_value);
    transparent_crc(p_1272->g_227.s9, "p_1272->g_227.s9", print_hash_value);
    transparent_crc(p_1272->g_227.sa, "p_1272->g_227.sa", print_hash_value);
    transparent_crc(p_1272->g_227.sb, "p_1272->g_227.sb", print_hash_value);
    transparent_crc(p_1272->g_227.sc, "p_1272->g_227.sc", print_hash_value);
    transparent_crc(p_1272->g_227.sd, "p_1272->g_227.sd", print_hash_value);
    transparent_crc(p_1272->g_227.se, "p_1272->g_227.se", print_hash_value);
    transparent_crc(p_1272->g_227.sf, "p_1272->g_227.sf", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1272->g_280[i], "p_1272->g_280[i]", print_hash_value);

    }
    transparent_crc(p_1272->g_309.s0, "p_1272->g_309.s0", print_hash_value);
    transparent_crc(p_1272->g_309.s1, "p_1272->g_309.s1", print_hash_value);
    transparent_crc(p_1272->g_309.s2, "p_1272->g_309.s2", print_hash_value);
    transparent_crc(p_1272->g_309.s3, "p_1272->g_309.s3", print_hash_value);
    transparent_crc(p_1272->g_309.s4, "p_1272->g_309.s4", print_hash_value);
    transparent_crc(p_1272->g_309.s5, "p_1272->g_309.s5", print_hash_value);
    transparent_crc(p_1272->g_309.s6, "p_1272->g_309.s6", print_hash_value);
    transparent_crc(p_1272->g_309.s7, "p_1272->g_309.s7", print_hash_value);
    transparent_crc(p_1272->g_309.s8, "p_1272->g_309.s8", print_hash_value);
    transparent_crc(p_1272->g_309.s9, "p_1272->g_309.s9", print_hash_value);
    transparent_crc(p_1272->g_309.sa, "p_1272->g_309.sa", print_hash_value);
    transparent_crc(p_1272->g_309.sb, "p_1272->g_309.sb", print_hash_value);
    transparent_crc(p_1272->g_309.sc, "p_1272->g_309.sc", print_hash_value);
    transparent_crc(p_1272->g_309.sd, "p_1272->g_309.sd", print_hash_value);
    transparent_crc(p_1272->g_309.se, "p_1272->g_309.se", print_hash_value);
    transparent_crc(p_1272->g_309.sf, "p_1272->g_309.sf", print_hash_value);
    transparent_crc(p_1272->g_319.x, "p_1272->g_319.x", print_hash_value);
    transparent_crc(p_1272->g_319.y, "p_1272->g_319.y", print_hash_value);
    transparent_crc(p_1272->g_334.x, "p_1272->g_334.x", print_hash_value);
    transparent_crc(p_1272->g_334.y, "p_1272->g_334.y", print_hash_value);
    transparent_crc(p_1272->g_334.z, "p_1272->g_334.z", print_hash_value);
    transparent_crc(p_1272->g_334.w, "p_1272->g_334.w", print_hash_value);
    transparent_crc(p_1272->g_335.x, "p_1272->g_335.x", print_hash_value);
    transparent_crc(p_1272->g_335.y, "p_1272->g_335.y", print_hash_value);
    transparent_crc(p_1272->g_335.z, "p_1272->g_335.z", print_hash_value);
    transparent_crc(p_1272->g_335.w, "p_1272->g_335.w", print_hash_value);
    transparent_crc(p_1272->g_373.s0, "p_1272->g_373.s0", print_hash_value);
    transparent_crc(p_1272->g_373.s1, "p_1272->g_373.s1", print_hash_value);
    transparent_crc(p_1272->g_373.s2, "p_1272->g_373.s2", print_hash_value);
    transparent_crc(p_1272->g_373.s3, "p_1272->g_373.s3", print_hash_value);
    transparent_crc(p_1272->g_373.s4, "p_1272->g_373.s4", print_hash_value);
    transparent_crc(p_1272->g_373.s5, "p_1272->g_373.s5", print_hash_value);
    transparent_crc(p_1272->g_373.s6, "p_1272->g_373.s6", print_hash_value);
    transparent_crc(p_1272->g_373.s7, "p_1272->g_373.s7", print_hash_value);
    transparent_crc(p_1272->g_385, "p_1272->g_385", print_hash_value);
    transparent_crc(p_1272->g_399.s0, "p_1272->g_399.s0", print_hash_value);
    transparent_crc(p_1272->g_399.s1, "p_1272->g_399.s1", print_hash_value);
    transparent_crc(p_1272->g_399.s2, "p_1272->g_399.s2", print_hash_value);
    transparent_crc(p_1272->g_399.s3, "p_1272->g_399.s3", print_hash_value);
    transparent_crc(p_1272->g_399.s4, "p_1272->g_399.s4", print_hash_value);
    transparent_crc(p_1272->g_399.s5, "p_1272->g_399.s5", print_hash_value);
    transparent_crc(p_1272->g_399.s6, "p_1272->g_399.s6", print_hash_value);
    transparent_crc(p_1272->g_399.s7, "p_1272->g_399.s7", print_hash_value);
    transparent_crc(p_1272->g_399.s8, "p_1272->g_399.s8", print_hash_value);
    transparent_crc(p_1272->g_399.s9, "p_1272->g_399.s9", print_hash_value);
    transparent_crc(p_1272->g_399.sa, "p_1272->g_399.sa", print_hash_value);
    transparent_crc(p_1272->g_399.sb, "p_1272->g_399.sb", print_hash_value);
    transparent_crc(p_1272->g_399.sc, "p_1272->g_399.sc", print_hash_value);
    transparent_crc(p_1272->g_399.sd, "p_1272->g_399.sd", print_hash_value);
    transparent_crc(p_1272->g_399.se, "p_1272->g_399.se", print_hash_value);
    transparent_crc(p_1272->g_399.sf, "p_1272->g_399.sf", print_hash_value);
    transparent_crc(p_1272->g_400.x, "p_1272->g_400.x", print_hash_value);
    transparent_crc(p_1272->g_400.y, "p_1272->g_400.y", print_hash_value);
    transparent_crc(p_1272->g_401.s0, "p_1272->g_401.s0", print_hash_value);
    transparent_crc(p_1272->g_401.s1, "p_1272->g_401.s1", print_hash_value);
    transparent_crc(p_1272->g_401.s2, "p_1272->g_401.s2", print_hash_value);
    transparent_crc(p_1272->g_401.s3, "p_1272->g_401.s3", print_hash_value);
    transparent_crc(p_1272->g_401.s4, "p_1272->g_401.s4", print_hash_value);
    transparent_crc(p_1272->g_401.s5, "p_1272->g_401.s5", print_hash_value);
    transparent_crc(p_1272->g_401.s6, "p_1272->g_401.s6", print_hash_value);
    transparent_crc(p_1272->g_401.s7, "p_1272->g_401.s7", print_hash_value);
    transparent_crc(p_1272->g_402.x, "p_1272->g_402.x", print_hash_value);
    transparent_crc(p_1272->g_402.y, "p_1272->g_402.y", print_hash_value);
    transparent_crc(p_1272->g_431, "p_1272->g_431", print_hash_value);
    transparent_crc(p_1272->g_433, "p_1272->g_433", print_hash_value);
    transparent_crc(p_1272->g_540.x, "p_1272->g_540.x", print_hash_value);
    transparent_crc(p_1272->g_540.y, "p_1272->g_540.y", print_hash_value);
    transparent_crc(p_1272->g_540.z, "p_1272->g_540.z", print_hash_value);
    transparent_crc(p_1272->g_540.w, "p_1272->g_540.w", print_hash_value);
    transparent_crc(p_1272->g_545.s0, "p_1272->g_545.s0", print_hash_value);
    transparent_crc(p_1272->g_545.s1, "p_1272->g_545.s1", print_hash_value);
    transparent_crc(p_1272->g_545.s2, "p_1272->g_545.s2", print_hash_value);
    transparent_crc(p_1272->g_545.s3, "p_1272->g_545.s3", print_hash_value);
    transparent_crc(p_1272->g_545.s4, "p_1272->g_545.s4", print_hash_value);
    transparent_crc(p_1272->g_545.s5, "p_1272->g_545.s5", print_hash_value);
    transparent_crc(p_1272->g_545.s6, "p_1272->g_545.s6", print_hash_value);
    transparent_crc(p_1272->g_545.s7, "p_1272->g_545.s7", print_hash_value);
    transparent_crc(p_1272->g_545.s8, "p_1272->g_545.s8", print_hash_value);
    transparent_crc(p_1272->g_545.s9, "p_1272->g_545.s9", print_hash_value);
    transparent_crc(p_1272->g_545.sa, "p_1272->g_545.sa", print_hash_value);
    transparent_crc(p_1272->g_545.sb, "p_1272->g_545.sb", print_hash_value);
    transparent_crc(p_1272->g_545.sc, "p_1272->g_545.sc", print_hash_value);
    transparent_crc(p_1272->g_545.sd, "p_1272->g_545.sd", print_hash_value);
    transparent_crc(p_1272->g_545.se, "p_1272->g_545.se", print_hash_value);
    transparent_crc(p_1272->g_545.sf, "p_1272->g_545.sf", print_hash_value);
    transparent_crc(p_1272->g_547.s0, "p_1272->g_547.s0", print_hash_value);
    transparent_crc(p_1272->g_547.s1, "p_1272->g_547.s1", print_hash_value);
    transparent_crc(p_1272->g_547.s2, "p_1272->g_547.s2", print_hash_value);
    transparent_crc(p_1272->g_547.s3, "p_1272->g_547.s3", print_hash_value);
    transparent_crc(p_1272->g_547.s4, "p_1272->g_547.s4", print_hash_value);
    transparent_crc(p_1272->g_547.s5, "p_1272->g_547.s5", print_hash_value);
    transparent_crc(p_1272->g_547.s6, "p_1272->g_547.s6", print_hash_value);
    transparent_crc(p_1272->g_547.s7, "p_1272->g_547.s7", print_hash_value);
    transparent_crc(p_1272->g_547.s8, "p_1272->g_547.s8", print_hash_value);
    transparent_crc(p_1272->g_547.s9, "p_1272->g_547.s9", print_hash_value);
    transparent_crc(p_1272->g_547.sa, "p_1272->g_547.sa", print_hash_value);
    transparent_crc(p_1272->g_547.sb, "p_1272->g_547.sb", print_hash_value);
    transparent_crc(p_1272->g_547.sc, "p_1272->g_547.sc", print_hash_value);
    transparent_crc(p_1272->g_547.sd, "p_1272->g_547.sd", print_hash_value);
    transparent_crc(p_1272->g_547.se, "p_1272->g_547.se", print_hash_value);
    transparent_crc(p_1272->g_547.sf, "p_1272->g_547.sf", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1272->g_579[i], "p_1272->g_579[i]", print_hash_value);

    }
    transparent_crc(p_1272->g_608.s0, "p_1272->g_608.s0", print_hash_value);
    transparent_crc(p_1272->g_608.s1, "p_1272->g_608.s1", print_hash_value);
    transparent_crc(p_1272->g_608.s2, "p_1272->g_608.s2", print_hash_value);
    transparent_crc(p_1272->g_608.s3, "p_1272->g_608.s3", print_hash_value);
    transparent_crc(p_1272->g_608.s4, "p_1272->g_608.s4", print_hash_value);
    transparent_crc(p_1272->g_608.s5, "p_1272->g_608.s5", print_hash_value);
    transparent_crc(p_1272->g_608.s6, "p_1272->g_608.s6", print_hash_value);
    transparent_crc(p_1272->g_608.s7, "p_1272->g_608.s7", print_hash_value);
    transparent_crc(p_1272->g_608.s8, "p_1272->g_608.s8", print_hash_value);
    transparent_crc(p_1272->g_608.s9, "p_1272->g_608.s9", print_hash_value);
    transparent_crc(p_1272->g_608.sa, "p_1272->g_608.sa", print_hash_value);
    transparent_crc(p_1272->g_608.sb, "p_1272->g_608.sb", print_hash_value);
    transparent_crc(p_1272->g_608.sc, "p_1272->g_608.sc", print_hash_value);
    transparent_crc(p_1272->g_608.sd, "p_1272->g_608.sd", print_hash_value);
    transparent_crc(p_1272->g_608.se, "p_1272->g_608.se", print_hash_value);
    transparent_crc(p_1272->g_608.sf, "p_1272->g_608.sf", print_hash_value);
    transparent_crc(p_1272->g_615.x, "p_1272->g_615.x", print_hash_value);
    transparent_crc(p_1272->g_615.y, "p_1272->g_615.y", print_hash_value);
    transparent_crc(p_1272->g_628.x, "p_1272->g_628.x", print_hash_value);
    transparent_crc(p_1272->g_628.y, "p_1272->g_628.y", print_hash_value);
    transparent_crc(p_1272->g_628.z, "p_1272->g_628.z", print_hash_value);
    transparent_crc(p_1272->g_628.w, "p_1272->g_628.w", print_hash_value);
    transparent_crc(p_1272->g_656.s0, "p_1272->g_656.s0", print_hash_value);
    transparent_crc(p_1272->g_656.s1, "p_1272->g_656.s1", print_hash_value);
    transparent_crc(p_1272->g_656.s2, "p_1272->g_656.s2", print_hash_value);
    transparent_crc(p_1272->g_656.s3, "p_1272->g_656.s3", print_hash_value);
    transparent_crc(p_1272->g_656.s4, "p_1272->g_656.s4", print_hash_value);
    transparent_crc(p_1272->g_656.s5, "p_1272->g_656.s5", print_hash_value);
    transparent_crc(p_1272->g_656.s6, "p_1272->g_656.s6", print_hash_value);
    transparent_crc(p_1272->g_656.s7, "p_1272->g_656.s7", print_hash_value);
    transparent_crc(p_1272->g_656.s8, "p_1272->g_656.s8", print_hash_value);
    transparent_crc(p_1272->g_656.s9, "p_1272->g_656.s9", print_hash_value);
    transparent_crc(p_1272->g_656.sa, "p_1272->g_656.sa", print_hash_value);
    transparent_crc(p_1272->g_656.sb, "p_1272->g_656.sb", print_hash_value);
    transparent_crc(p_1272->g_656.sc, "p_1272->g_656.sc", print_hash_value);
    transparent_crc(p_1272->g_656.sd, "p_1272->g_656.sd", print_hash_value);
    transparent_crc(p_1272->g_656.se, "p_1272->g_656.se", print_hash_value);
    transparent_crc(p_1272->g_656.sf, "p_1272->g_656.sf", print_hash_value);
    transparent_crc(p_1272->g_666, "p_1272->g_666", print_hash_value);
    transparent_crc(p_1272->g_722.x, "p_1272->g_722.x", print_hash_value);
    transparent_crc(p_1272->g_722.y, "p_1272->g_722.y", print_hash_value);
    transparent_crc(p_1272->g_727, "p_1272->g_727", print_hash_value);
    transparent_crc(p_1272->g_754.x, "p_1272->g_754.x", print_hash_value);
    transparent_crc(p_1272->g_754.y, "p_1272->g_754.y", print_hash_value);
    transparent_crc(p_1272->g_754.z, "p_1272->g_754.z", print_hash_value);
    transparent_crc(p_1272->g_754.w, "p_1272->g_754.w", print_hash_value);
    transparent_crc(p_1272->g_825.s0, "p_1272->g_825.s0", print_hash_value);
    transparent_crc(p_1272->g_825.s1, "p_1272->g_825.s1", print_hash_value);
    transparent_crc(p_1272->g_825.s2, "p_1272->g_825.s2", print_hash_value);
    transparent_crc(p_1272->g_825.s3, "p_1272->g_825.s3", print_hash_value);
    transparent_crc(p_1272->g_825.s4, "p_1272->g_825.s4", print_hash_value);
    transparent_crc(p_1272->g_825.s5, "p_1272->g_825.s5", print_hash_value);
    transparent_crc(p_1272->g_825.s6, "p_1272->g_825.s6", print_hash_value);
    transparent_crc(p_1272->g_825.s7, "p_1272->g_825.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1272->g_835[i][j][k], "p_1272->g_835[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1272->g_912, "p_1272->g_912", print_hash_value);
    transparent_crc(p_1272->g_919.s0, "p_1272->g_919.s0", print_hash_value);
    transparent_crc(p_1272->g_919.s1, "p_1272->g_919.s1", print_hash_value);
    transparent_crc(p_1272->g_919.s2, "p_1272->g_919.s2", print_hash_value);
    transparent_crc(p_1272->g_919.s3, "p_1272->g_919.s3", print_hash_value);
    transparent_crc(p_1272->g_919.s4, "p_1272->g_919.s4", print_hash_value);
    transparent_crc(p_1272->g_919.s5, "p_1272->g_919.s5", print_hash_value);
    transparent_crc(p_1272->g_919.s6, "p_1272->g_919.s6", print_hash_value);
    transparent_crc(p_1272->g_919.s7, "p_1272->g_919.s7", print_hash_value);
    transparent_crc(p_1272->g_920.x, "p_1272->g_920.x", print_hash_value);
    transparent_crc(p_1272->g_920.y, "p_1272->g_920.y", print_hash_value);
    transparent_crc(p_1272->g_920.z, "p_1272->g_920.z", print_hash_value);
    transparent_crc(p_1272->g_920.w, "p_1272->g_920.w", print_hash_value);
    transparent_crc(p_1272->g_923, "p_1272->g_923", print_hash_value);
    transparent_crc(p_1272->g_935.x, "p_1272->g_935.x", print_hash_value);
    transparent_crc(p_1272->g_935.y, "p_1272->g_935.y", print_hash_value);
    transparent_crc(p_1272->g_967.x, "p_1272->g_967.x", print_hash_value);
    transparent_crc(p_1272->g_967.y, "p_1272->g_967.y", print_hash_value);
    transparent_crc(p_1272->g_1036.s0, "p_1272->g_1036.s0", print_hash_value);
    transparent_crc(p_1272->g_1036.s1, "p_1272->g_1036.s1", print_hash_value);
    transparent_crc(p_1272->g_1036.s2, "p_1272->g_1036.s2", print_hash_value);
    transparent_crc(p_1272->g_1036.s3, "p_1272->g_1036.s3", print_hash_value);
    transparent_crc(p_1272->g_1036.s4, "p_1272->g_1036.s4", print_hash_value);
    transparent_crc(p_1272->g_1036.s5, "p_1272->g_1036.s5", print_hash_value);
    transparent_crc(p_1272->g_1036.s6, "p_1272->g_1036.s6", print_hash_value);
    transparent_crc(p_1272->g_1036.s7, "p_1272->g_1036.s7", print_hash_value);
    transparent_crc(p_1272->g_1037.s0, "p_1272->g_1037.s0", print_hash_value);
    transparent_crc(p_1272->g_1037.s1, "p_1272->g_1037.s1", print_hash_value);
    transparent_crc(p_1272->g_1037.s2, "p_1272->g_1037.s2", print_hash_value);
    transparent_crc(p_1272->g_1037.s3, "p_1272->g_1037.s3", print_hash_value);
    transparent_crc(p_1272->g_1037.s4, "p_1272->g_1037.s4", print_hash_value);
    transparent_crc(p_1272->g_1037.s5, "p_1272->g_1037.s5", print_hash_value);
    transparent_crc(p_1272->g_1037.s6, "p_1272->g_1037.s6", print_hash_value);
    transparent_crc(p_1272->g_1037.s7, "p_1272->g_1037.s7", print_hash_value);
    transparent_crc(p_1272->g_1037.s8, "p_1272->g_1037.s8", print_hash_value);
    transparent_crc(p_1272->g_1037.s9, "p_1272->g_1037.s9", print_hash_value);
    transparent_crc(p_1272->g_1037.sa, "p_1272->g_1037.sa", print_hash_value);
    transparent_crc(p_1272->g_1037.sb, "p_1272->g_1037.sb", print_hash_value);
    transparent_crc(p_1272->g_1037.sc, "p_1272->g_1037.sc", print_hash_value);
    transparent_crc(p_1272->g_1037.sd, "p_1272->g_1037.sd", print_hash_value);
    transparent_crc(p_1272->g_1037.se, "p_1272->g_1037.se", print_hash_value);
    transparent_crc(p_1272->g_1037.sf, "p_1272->g_1037.sf", print_hash_value);
    transparent_crc(p_1272->g_1040.s0, "p_1272->g_1040.s0", print_hash_value);
    transparent_crc(p_1272->g_1040.s1, "p_1272->g_1040.s1", print_hash_value);
    transparent_crc(p_1272->g_1040.s2, "p_1272->g_1040.s2", print_hash_value);
    transparent_crc(p_1272->g_1040.s3, "p_1272->g_1040.s3", print_hash_value);
    transparent_crc(p_1272->g_1040.s4, "p_1272->g_1040.s4", print_hash_value);
    transparent_crc(p_1272->g_1040.s5, "p_1272->g_1040.s5", print_hash_value);
    transparent_crc(p_1272->g_1040.s6, "p_1272->g_1040.s6", print_hash_value);
    transparent_crc(p_1272->g_1040.s7, "p_1272->g_1040.s7", print_hash_value);
    transparent_crc(p_1272->g_1040.s8, "p_1272->g_1040.s8", print_hash_value);
    transparent_crc(p_1272->g_1040.s9, "p_1272->g_1040.s9", print_hash_value);
    transparent_crc(p_1272->g_1040.sa, "p_1272->g_1040.sa", print_hash_value);
    transparent_crc(p_1272->g_1040.sb, "p_1272->g_1040.sb", print_hash_value);
    transparent_crc(p_1272->g_1040.sc, "p_1272->g_1040.sc", print_hash_value);
    transparent_crc(p_1272->g_1040.sd, "p_1272->g_1040.sd", print_hash_value);
    transparent_crc(p_1272->g_1040.se, "p_1272->g_1040.se", print_hash_value);
    transparent_crc(p_1272->g_1040.sf, "p_1272->g_1040.sf", print_hash_value);
    transparent_crc(p_1272->g_1061.s0, "p_1272->g_1061.s0", print_hash_value);
    transparent_crc(p_1272->g_1061.s1, "p_1272->g_1061.s1", print_hash_value);
    transparent_crc(p_1272->g_1061.s2, "p_1272->g_1061.s2", print_hash_value);
    transparent_crc(p_1272->g_1061.s3, "p_1272->g_1061.s3", print_hash_value);
    transparent_crc(p_1272->g_1061.s4, "p_1272->g_1061.s4", print_hash_value);
    transparent_crc(p_1272->g_1061.s5, "p_1272->g_1061.s5", print_hash_value);
    transparent_crc(p_1272->g_1061.s6, "p_1272->g_1061.s6", print_hash_value);
    transparent_crc(p_1272->g_1061.s7, "p_1272->g_1061.s7", print_hash_value);
    transparent_crc(p_1272->g_1066.s0, "p_1272->g_1066.s0", print_hash_value);
    transparent_crc(p_1272->g_1066.s1, "p_1272->g_1066.s1", print_hash_value);
    transparent_crc(p_1272->g_1066.s2, "p_1272->g_1066.s2", print_hash_value);
    transparent_crc(p_1272->g_1066.s3, "p_1272->g_1066.s3", print_hash_value);
    transparent_crc(p_1272->g_1066.s4, "p_1272->g_1066.s4", print_hash_value);
    transparent_crc(p_1272->g_1066.s5, "p_1272->g_1066.s5", print_hash_value);
    transparent_crc(p_1272->g_1066.s6, "p_1272->g_1066.s6", print_hash_value);
    transparent_crc(p_1272->g_1066.s7, "p_1272->g_1066.s7", print_hash_value);
    transparent_crc(p_1272->g_1068.s0, "p_1272->g_1068.s0", print_hash_value);
    transparent_crc(p_1272->g_1068.s1, "p_1272->g_1068.s1", print_hash_value);
    transparent_crc(p_1272->g_1068.s2, "p_1272->g_1068.s2", print_hash_value);
    transparent_crc(p_1272->g_1068.s3, "p_1272->g_1068.s3", print_hash_value);
    transparent_crc(p_1272->g_1068.s4, "p_1272->g_1068.s4", print_hash_value);
    transparent_crc(p_1272->g_1068.s5, "p_1272->g_1068.s5", print_hash_value);
    transparent_crc(p_1272->g_1068.s6, "p_1272->g_1068.s6", print_hash_value);
    transparent_crc(p_1272->g_1068.s7, "p_1272->g_1068.s7", print_hash_value);
    transparent_crc(p_1272->g_1087.x, "p_1272->g_1087.x", print_hash_value);
    transparent_crc(p_1272->g_1087.y, "p_1272->g_1087.y", print_hash_value);
    transparent_crc(p_1272->g_1091.s0, "p_1272->g_1091.s0", print_hash_value);
    transparent_crc(p_1272->g_1091.s1, "p_1272->g_1091.s1", print_hash_value);
    transparent_crc(p_1272->g_1091.s2, "p_1272->g_1091.s2", print_hash_value);
    transparent_crc(p_1272->g_1091.s3, "p_1272->g_1091.s3", print_hash_value);
    transparent_crc(p_1272->g_1091.s4, "p_1272->g_1091.s4", print_hash_value);
    transparent_crc(p_1272->g_1091.s5, "p_1272->g_1091.s5", print_hash_value);
    transparent_crc(p_1272->g_1091.s6, "p_1272->g_1091.s6", print_hash_value);
    transparent_crc(p_1272->g_1091.s7, "p_1272->g_1091.s7", print_hash_value);
    transparent_crc(p_1272->g_1092.s0, "p_1272->g_1092.s0", print_hash_value);
    transparent_crc(p_1272->g_1092.s1, "p_1272->g_1092.s1", print_hash_value);
    transparent_crc(p_1272->g_1092.s2, "p_1272->g_1092.s2", print_hash_value);
    transparent_crc(p_1272->g_1092.s3, "p_1272->g_1092.s3", print_hash_value);
    transparent_crc(p_1272->g_1092.s4, "p_1272->g_1092.s4", print_hash_value);
    transparent_crc(p_1272->g_1092.s5, "p_1272->g_1092.s5", print_hash_value);
    transparent_crc(p_1272->g_1092.s6, "p_1272->g_1092.s6", print_hash_value);
    transparent_crc(p_1272->g_1092.s7, "p_1272->g_1092.s7", print_hash_value);
    transparent_crc(p_1272->g_1105, "p_1272->g_1105", print_hash_value);
    transparent_crc(p_1272->g_1143, "p_1272->g_1143", print_hash_value);
    transparent_crc(p_1272->g_1144.x, "p_1272->g_1144.x", print_hash_value);
    transparent_crc(p_1272->g_1144.y, "p_1272->g_1144.y", print_hash_value);
    transparent_crc(p_1272->g_1150, "p_1272->g_1150", print_hash_value);
    transparent_crc(p_1272->g_1161.s0, "p_1272->g_1161.s0", print_hash_value);
    transparent_crc(p_1272->g_1161.s1, "p_1272->g_1161.s1", print_hash_value);
    transparent_crc(p_1272->g_1161.s2, "p_1272->g_1161.s2", print_hash_value);
    transparent_crc(p_1272->g_1161.s3, "p_1272->g_1161.s3", print_hash_value);
    transparent_crc(p_1272->g_1161.s4, "p_1272->g_1161.s4", print_hash_value);
    transparent_crc(p_1272->g_1161.s5, "p_1272->g_1161.s5", print_hash_value);
    transparent_crc(p_1272->g_1161.s6, "p_1272->g_1161.s6", print_hash_value);
    transparent_crc(p_1272->g_1161.s7, "p_1272->g_1161.s7", print_hash_value);
    transparent_crc(p_1272->g_1161.s8, "p_1272->g_1161.s8", print_hash_value);
    transparent_crc(p_1272->g_1161.s9, "p_1272->g_1161.s9", print_hash_value);
    transparent_crc(p_1272->g_1161.sa, "p_1272->g_1161.sa", print_hash_value);
    transparent_crc(p_1272->g_1161.sb, "p_1272->g_1161.sb", print_hash_value);
    transparent_crc(p_1272->g_1161.sc, "p_1272->g_1161.sc", print_hash_value);
    transparent_crc(p_1272->g_1161.sd, "p_1272->g_1161.sd", print_hash_value);
    transparent_crc(p_1272->g_1161.se, "p_1272->g_1161.se", print_hash_value);
    transparent_crc(p_1272->g_1161.sf, "p_1272->g_1161.sf", print_hash_value);
    transparent_crc(p_1272->g_1171.s0, "p_1272->g_1171.s0", print_hash_value);
    transparent_crc(p_1272->g_1171.s1, "p_1272->g_1171.s1", print_hash_value);
    transparent_crc(p_1272->g_1171.s2, "p_1272->g_1171.s2", print_hash_value);
    transparent_crc(p_1272->g_1171.s3, "p_1272->g_1171.s3", print_hash_value);
    transparent_crc(p_1272->g_1171.s4, "p_1272->g_1171.s4", print_hash_value);
    transparent_crc(p_1272->g_1171.s5, "p_1272->g_1171.s5", print_hash_value);
    transparent_crc(p_1272->g_1171.s6, "p_1272->g_1171.s6", print_hash_value);
    transparent_crc(p_1272->g_1171.s7, "p_1272->g_1171.s7", print_hash_value);
    transparent_crc(p_1272->g_1178, "p_1272->g_1178", print_hash_value);
    transparent_crc(p_1272->g_1184.s0, "p_1272->g_1184.s0", print_hash_value);
    transparent_crc(p_1272->g_1184.s1, "p_1272->g_1184.s1", print_hash_value);
    transparent_crc(p_1272->g_1184.s2, "p_1272->g_1184.s2", print_hash_value);
    transparent_crc(p_1272->g_1184.s3, "p_1272->g_1184.s3", print_hash_value);
    transparent_crc(p_1272->g_1184.s4, "p_1272->g_1184.s4", print_hash_value);
    transparent_crc(p_1272->g_1184.s5, "p_1272->g_1184.s5", print_hash_value);
    transparent_crc(p_1272->g_1184.s6, "p_1272->g_1184.s6", print_hash_value);
    transparent_crc(p_1272->g_1184.s7, "p_1272->g_1184.s7", print_hash_value);
    transparent_crc(p_1272->g_1184.s8, "p_1272->g_1184.s8", print_hash_value);
    transparent_crc(p_1272->g_1184.s9, "p_1272->g_1184.s9", print_hash_value);
    transparent_crc(p_1272->g_1184.sa, "p_1272->g_1184.sa", print_hash_value);
    transparent_crc(p_1272->g_1184.sb, "p_1272->g_1184.sb", print_hash_value);
    transparent_crc(p_1272->g_1184.sc, "p_1272->g_1184.sc", print_hash_value);
    transparent_crc(p_1272->g_1184.sd, "p_1272->g_1184.sd", print_hash_value);
    transparent_crc(p_1272->g_1184.se, "p_1272->g_1184.se", print_hash_value);
    transparent_crc(p_1272->g_1184.sf, "p_1272->g_1184.sf", print_hash_value);
    transparent_crc(p_1272->g_1192.s0, "p_1272->g_1192.s0", print_hash_value);
    transparent_crc(p_1272->g_1192.s1, "p_1272->g_1192.s1", print_hash_value);
    transparent_crc(p_1272->g_1192.s2, "p_1272->g_1192.s2", print_hash_value);
    transparent_crc(p_1272->g_1192.s3, "p_1272->g_1192.s3", print_hash_value);
    transparent_crc(p_1272->g_1192.s4, "p_1272->g_1192.s4", print_hash_value);
    transparent_crc(p_1272->g_1192.s5, "p_1272->g_1192.s5", print_hash_value);
    transparent_crc(p_1272->g_1192.s6, "p_1272->g_1192.s6", print_hash_value);
    transparent_crc(p_1272->g_1192.s7, "p_1272->g_1192.s7", print_hash_value);
    transparent_crc(p_1272->g_1194.x, "p_1272->g_1194.x", print_hash_value);
    transparent_crc(p_1272->g_1194.y, "p_1272->g_1194.y", print_hash_value);
    transparent_crc(p_1272->g_1195.s0, "p_1272->g_1195.s0", print_hash_value);
    transparent_crc(p_1272->g_1195.s1, "p_1272->g_1195.s1", print_hash_value);
    transparent_crc(p_1272->g_1195.s2, "p_1272->g_1195.s2", print_hash_value);
    transparent_crc(p_1272->g_1195.s3, "p_1272->g_1195.s3", print_hash_value);
    transparent_crc(p_1272->g_1195.s4, "p_1272->g_1195.s4", print_hash_value);
    transparent_crc(p_1272->g_1195.s5, "p_1272->g_1195.s5", print_hash_value);
    transparent_crc(p_1272->g_1195.s6, "p_1272->g_1195.s6", print_hash_value);
    transparent_crc(p_1272->g_1195.s7, "p_1272->g_1195.s7", print_hash_value);
    transparent_crc(p_1272->g_1197.x, "p_1272->g_1197.x", print_hash_value);
    transparent_crc(p_1272->g_1197.y, "p_1272->g_1197.y", print_hash_value);
    transparent_crc(p_1272->g_1214.s0, "p_1272->g_1214.s0", print_hash_value);
    transparent_crc(p_1272->g_1214.s1, "p_1272->g_1214.s1", print_hash_value);
    transparent_crc(p_1272->g_1214.s2, "p_1272->g_1214.s2", print_hash_value);
    transparent_crc(p_1272->g_1214.s3, "p_1272->g_1214.s3", print_hash_value);
    transparent_crc(p_1272->g_1214.s4, "p_1272->g_1214.s4", print_hash_value);
    transparent_crc(p_1272->g_1214.s5, "p_1272->g_1214.s5", print_hash_value);
    transparent_crc(p_1272->g_1214.s6, "p_1272->g_1214.s6", print_hash_value);
    transparent_crc(p_1272->g_1214.s7, "p_1272->g_1214.s7", print_hash_value);
    transparent_crc(p_1272->g_1214.s8, "p_1272->g_1214.s8", print_hash_value);
    transparent_crc(p_1272->g_1214.s9, "p_1272->g_1214.s9", print_hash_value);
    transparent_crc(p_1272->g_1214.sa, "p_1272->g_1214.sa", print_hash_value);
    transparent_crc(p_1272->g_1214.sb, "p_1272->g_1214.sb", print_hash_value);
    transparent_crc(p_1272->g_1214.sc, "p_1272->g_1214.sc", print_hash_value);
    transparent_crc(p_1272->g_1214.sd, "p_1272->g_1214.sd", print_hash_value);
    transparent_crc(p_1272->g_1214.se, "p_1272->g_1214.se", print_hash_value);
    transparent_crc(p_1272->g_1214.sf, "p_1272->g_1214.sf", print_hash_value);
    transparent_crc(p_1272->g_1229.x, "p_1272->g_1229.x", print_hash_value);
    transparent_crc(p_1272->g_1229.y, "p_1272->g_1229.y", print_hash_value);
    transparent_crc(p_1272->g_1229.z, "p_1272->g_1229.z", print_hash_value);
    transparent_crc(p_1272->g_1229.w, "p_1272->g_1229.w", print_hash_value);
    transparent_crc(p_1272->g_1257.x, "p_1272->g_1257.x", print_hash_value);
    transparent_crc(p_1272->g_1257.y, "p_1272->g_1257.y", print_hash_value);
    transparent_crc(p_1272->g_1257.z, "p_1272->g_1257.z", print_hash_value);
    transparent_crc(p_1272->g_1257.w, "p_1272->g_1257.w", print_hash_value);
    transparent_crc(p_1272->g_1262.x, "p_1272->g_1262.x", print_hash_value);
    transparent_crc(p_1272->g_1262.y, "p_1272->g_1262.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
