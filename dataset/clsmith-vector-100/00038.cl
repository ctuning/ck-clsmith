// ---fake_divergence -g 1,1,9733 -l 1,1,1
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


// Seed: 38

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    int32_t g_3;
    int32_t g_11[9][8];
    int32_t * volatile g_10[1];
    volatile VECTOR(uint16_t, 4) g_13;
    VECTOR(uint8_t, 4) g_29;
    uint32_t g_72;
    VECTOR(int64_t, 2) g_79;
    VECTOR(int16_t, 2) g_97;
    int16_t g_99;
    int16_t g_147;
    uint64_t g_153;
    int32_t g_168[10];
    int32_t *g_171;
    int32_t **g_170;
    uint32_t g_177;
    int64_t g_179;
    volatile int16_t g_199;
    volatile int16_t *g_198[9][2];
    volatile int16_t **g_197[6][10];
    uint8_t *g_213;
    int64_t *g_227;
    VECTOR(uint16_t, 8) g_230;
    VECTOR(int32_t, 16) g_246;
    uint32_t g_253;
    uint64_t g_258;
    int64_t g_261;
    VECTOR(uint16_t, 2) g_277;
    VECTOR(uint64_t, 8) g_287;
    uint8_t *g_297[8][6][5];
    uint8_t *g_298;
    uint16_t g_302;
    uint16_t *g_301;
    VECTOR(int32_t, 4) g_303;
    VECTOR(int8_t, 2) g_309;
    VECTOR(uint16_t, 16) g_319;
    VECTOR(uint8_t, 4) g_322;
    uint64_t g_358;
    volatile VECTOR(uint8_t, 4) g_381;
    VECTOR(int8_t, 8) g_391;
    VECTOR(int8_t, 16) g_397;
    volatile VECTOR(uint32_t, 4) g_416;
    VECTOR(int16_t, 16) g_440;
    VECTOR(uint16_t, 4) g_443;
    VECTOR(uint16_t, 16) g_446;
    VECTOR(uint8_t, 2) g_453;
    volatile VECTOR(uint16_t, 2) g_455;
    VECTOR(int32_t, 2) g_488;
    VECTOR(int32_t, 2) g_491;
    volatile VECTOR(int32_t, 16) g_492;
    volatile VECTOR(uint64_t, 2) g_509;
    int32_t *g_533;
    int32_t ** volatile g_532;
    volatile uint32_t * volatile *g_534;
    volatile VECTOR(int8_t, 4) g_541;
    volatile VECTOR(uint8_t, 8) g_569;
    VECTOR(int8_t, 16) g_571;
    VECTOR(int8_t, 8) g_573;
    VECTOR(int8_t, 8) g_577;
    VECTOR(int8_t, 8) g_579;
    volatile int32_t *g_593;
    volatile int32_t ** volatile g_594;
    volatile int32_t *g_598[7];
    volatile VECTOR(int8_t, 4) g_605;
    volatile VECTOR(uint16_t, 2) g_617;
    VECTOR(uint16_t, 16) g_655;
    uint32_t g_664;
    VECTOR(uint8_t, 8) g_689;
    VECTOR(int16_t, 4) g_692;
    VECTOR(int64_t, 8) g_699;
    VECTOR(int64_t, 2) g_700;
    VECTOR(int64_t, 2) g_702;
    volatile int8_t g_726;
    VECTOR(uint32_t, 16) g_808;
    volatile VECTOR(uint32_t, 4) g_809;
    VECTOR(int32_t, 4) g_813;
    VECTOR(int8_t, 2) g_815;
    VECTOR(int8_t, 16) g_818;
    VECTOR(uint8_t, 8) g_819;
    VECTOR(int8_t, 4) g_833;
    int32_t g_847;
    volatile int32_t * volatile g_851;
    volatile int32_t * volatile * volatile g_852;
    VECTOR(int16_t, 2) g_869;
    VECTOR(uint16_t, 4) g_876;
    VECTOR(uint16_t, 8) g_878;
    uint32_t *g_922;
    uint32_t **g_921;
    VECTOR(uint8_t, 8) g_942;
    volatile VECTOR(uint8_t, 8) g_950;
    VECTOR(uint8_t, 2) g_955;
    VECTOR(uint8_t, 4) g_963;
    volatile VECTOR(uint8_t, 16) g_967;
    volatile VECTOR(int32_t, 2) g_990;
    VECTOR(int32_t, 2) g_991;
    VECTOR(int32_t, 8) g_995;
    volatile VECTOR(int32_t, 2) g_1000;
    VECTOR(int32_t, 16) g_1001;
    volatile VECTOR(int32_t, 8) g_1003;
    VECTOR(int32_t, 8) g_1006;
    volatile VECTOR(int32_t, 16) g_1007;
    volatile VECTOR(int32_t, 4) g_1009;
    int32_t ** volatile g_1017;
    VECTOR(int64_t, 16) g_1042;
    VECTOR(int8_t, 2) g_1065;
    volatile VECTOR(int8_t, 2) g_1067;
    VECTOR(int16_t, 4) g_1088;
    volatile VECTOR(int16_t, 16) g_1089;
    volatile int32_t ** volatile g_1108;
    volatile VECTOR(uint16_t, 4) g_1115;
    volatile VECTOR(int8_t, 4) g_1127;
    int16_t *g_1145[3];
    int16_t **g_1144[8][5][2];
    int16_t **g_1146;
    int64_t **g_1175;
    volatile VECTOR(int32_t, 2) g_1179;
    VECTOR(uint8_t, 16) g_1184;
    volatile VECTOR(uint8_t, 16) g_1185;
    VECTOR(uint8_t, 2) g_1198;
    VECTOR(uint8_t, 4) g_1203;
    VECTOR(uint8_t, 4) g_1209;
    VECTOR(uint8_t, 2) g_1210;
    int64_t g_1226;
    VECTOR(int32_t, 2) g_1228;
    uint8_t g_1241;
    VECTOR(int8_t, 16) g_1258;
    uint8_t g_1261;
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
uint16_t  func_1(struct S0 * p_1262);
uint16_t  func_16(int32_t * p_17, uint64_t  p_18, struct S0 * p_1262);
uint64_t  func_19(uint64_t  p_20, int32_t * p_21, int32_t * p_22, struct S0 * p_1262);
int32_t  func_52(int64_t  p_53, int32_t  p_54, uint8_t * p_55, uint8_t * p_56, struct S0 * p_1262);
uint8_t * func_57(uint64_t  p_58, uint8_t * p_59, int32_t  p_60, uint32_t  p_61, int32_t  p_62, struct S0 * p_1262);
uint8_t * func_64(int32_t * p_65, uint8_t  p_66, int8_t  p_67, int32_t * p_68, struct S0 * p_1262);
int32_t  func_75(uint64_t * p_76, struct S0 * p_1262);
VECTOR(uint32_t, 8)  func_103(int64_t  p_104, int32_t * p_105, struct S0 * p_1262);
int32_t  func_112(int16_t  p_113, struct S0 * p_1262);
int32_t  func_114(uint32_t  p_115, uint64_t * p_116, int16_t  p_117, int64_t  p_118, int32_t  p_119, struct S0 * p_1262);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1262->g_3 p_1262->g_258 p_1262->g_1226 p_1262->g_1228 p_1262->g_921 p_1262->g_922 p_1262->g_1067 p_1262->g_594 p_1262->g_593 p_1262->g_2 p_1262->g_1241 p_1262->g_171 p_1262->g_11 p_1262->g_689 p_1262->g_253 p_1262->g_301 p_1262->g_302 p_1262->g_1258 p_1262->g_13 p_1262->g_533 p_1262->g_391
 * writes: p_1262->g_3 p_1262->g_258 p_1262->g_147 p_1262->g_253 p_1262->g_168 p_1262->g_1261 p_1262->g_11 p_1262->g_2
 */
uint16_t  func_1(struct S0 * p_1262)
{ /* block id: 4 */
    VECTOR(uint16_t, 8) l_1114 = (VECTOR(uint16_t, 8))(0x1213L, (VECTOR(uint16_t, 4))(0x1213L, (VECTOR(uint16_t, 2))(0x1213L, 0UL), 0UL), 0UL, 0x1213L, 0UL);
    int16_t *l_1124 = &p_1262->g_147;
    int16_t **l_1123 = &l_1124;
    VECTOR(int8_t, 8) l_1126 = (VECTOR(int8_t, 8))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 3L), 3L), 3L, 8L, 3L);
    uint32_t **l_1135 = &p_1262->g_922;
    int64_t **l_1187 = &p_1262->g_227;
    int64_t ***l_1186 = &l_1187;
    VECTOR(uint8_t, 4) l_1191 = (VECTOR(uint8_t, 4))(0x49L, (VECTOR(uint8_t, 2))(0x49L, 0x3BL), 0x3BL);
    VECTOR(uint8_t, 16) l_1204 = (VECTOR(uint8_t, 16))(0x8FL, (VECTOR(uint8_t, 4))(0x8FL, (VECTOR(uint8_t, 2))(0x8FL, 4UL), 4UL), 4UL, 0x8FL, 4UL, (VECTOR(uint8_t, 2))(0x8FL, 4UL), (VECTOR(uint8_t, 2))(0x8FL, 4UL), 0x8FL, 4UL, 0x8FL, 4UL);
    int32_t *l_1212[3];
    VECTOR(int32_t, 8) l_1227 = (VECTOR(int32_t, 8))(0x6DEF4278L, (VECTOR(int32_t, 4))(0x6DEF4278L, (VECTOR(int32_t, 2))(0x6DEF4278L, 1L), 1L), 1L, 0x6DEF4278L, 1L);
    VECTOR(uint32_t, 16) l_1245 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967291UL), 4294967291UL), 4294967291UL, 1UL, 4294967291UL, (VECTOR(uint32_t, 2))(1UL, 4294967291UL), (VECTOR(uint32_t, 2))(1UL, 4294967291UL), 1UL, 4294967291UL, 1UL, 4294967291UL);
    uint64_t *l_1256[8];
    int i;
    for (i = 0; i < 3; i++)
        l_1212[i] = (void*)0;
    for (i = 0; i < 8; i++)
        l_1256[i] = &p_1262->g_258;
    for (p_1262->g_3 = 0; (p_1262->g_3 >= (-15)); p_1262->g_3 = safe_sub_func_uint8_t_u_u(p_1262->g_3, 9))
    { /* block id: 7 */
        return p_1262->g_3;
    }
    if (p_1262->g_3)
        goto lbl_1215;
    if (p_1262->g_3)
        goto lbl_1215;
lbl_1215:
    for (p_1262->g_3 = 29; (p_1262->g_3 >= 8); p_1262->g_3 = safe_sub_func_uint32_t_u_u(p_1262->g_3, 3))
    { /* block id: 12 */
        int64_t l_8[7] = {0x72FA4AD744D0289AL,7L,0x72FA4AD744D0289AL,0x72FA4AD744D0289AL,7L,0x72FA4AD744D0289AL,0x72FA4AD744D0289AL};
        int32_t *l_23 = (void*)0;
        VECTOR(uint16_t, 4) l_1113 = (VECTOR(uint16_t, 4))(0xCAA1L, (VECTOR(uint16_t, 2))(0xCAA1L, 0xAFE4L), 0xAFE4L);
        VECTOR(int8_t, 2) l_1128 = (VECTOR(int8_t, 2))((-4L), 6L);
        int32_t l_1147 = 0x538AA7F1L;
        int64_t *l_1157 = &p_1262->g_179;
        int32_t l_1168 = 0L;
        uint32_t l_1169[4][7] = {{0x1A0CA01DL,0x1F915C76L,4294967289UL,0x1F915C76L,0x1A0CA01DL,0x1A0CA01DL,0x1F915C76L},{0x1A0CA01DL,0x1F915C76L,4294967289UL,0x1F915C76L,0x1A0CA01DL,0x1A0CA01DL,0x1F915C76L},{0x1A0CA01DL,0x1F915C76L,4294967289UL,0x1F915C76L,0x1A0CA01DL,0x1A0CA01DL,0x1F915C76L},{0x1A0CA01DL,0x1F915C76L,4294967289UL,0x1F915C76L,0x1A0CA01DL,0x1A0CA01DL,0x1F915C76L}};
        int64_t ***l_1188 = (void*)0;
        int i, j;
        (1 + 1);
    }
    for (p_1262->g_258 = 0; (p_1262->g_258 > 42); p_1262->g_258 = safe_add_func_int16_t_s_s(p_1262->g_258, 5))
    { /* block id: 395 */
        uint32_t l_1233 = 0UL;
        uint32_t l_1240 = 4294967295UL;
        int32_t l_1242 = 0x2819A73EL;
        VECTOR(uint32_t, 16) l_1246 = (VECTOR(uint32_t, 16))(0x6EEA4571L, (VECTOR(uint32_t, 4))(0x6EEA4571L, (VECTOR(uint32_t, 2))(0x6EEA4571L, 0UL), 0UL), 0UL, 0x6EEA4571L, 0UL, (VECTOR(uint32_t, 2))(0x6EEA4571L, 0UL), (VECTOR(uint32_t, 2))(0x6EEA4571L, 0UL), 0x6EEA4571L, 0UL, 0x6EEA4571L, 0UL);
        uint32_t *l_1247 = &p_1262->g_253;
        uint64_t *l_1257[3][5];
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 5; j++)
                l_1257[i][j] = &p_1262->g_153;
        }
        l_1242 = ((&l_1187 != &p_1262->g_1175) & (safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((safe_rshift_func_uint16_t_u_s(((safe_mod_func_int32_t_s_s((((((((((**l_1123) = p_1262->g_1226) || (((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(0x3C19B122L, (-5L), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_1227.s34)).xyyy && ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(0x6A6C4079L, ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 8))(p_1262->g_1228.xxyyxyxy)).s7322076665250247, ((VECTOR(int32_t, 16))((-2L), (safe_sub_func_uint64_t_u_u(((void*)0 != (*p_1262->g_921)), ((safe_lshift_func_uint16_t_u_s((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(0x15A6L, (-1L), (-9L), (l_1233 & (safe_sub_func_int64_t_s_s(0x70AADEF55ECEC6D0L, (safe_mul_func_int8_t_s_s((l_1233 , (safe_mod_func_uint64_t_u_u(p_1262->g_1067.y, l_1240))), GROUP_DIVERGE(2, 1)))))), 1L, 0x0BA6L, 6L, 0x4C54L)).hi < ((VECTOR(int16_t, 4))(0L))))).y == l_1240), 14)) > l_1240))), ((VECTOR(int32_t, 2))(0x4D4A9B04L)), ((VECTOR(int32_t, 8))(6L)), ((VECTOR(int32_t, 4))(0L))))))).sa, 0x10CA9677L, ((VECTOR(int32_t, 4))((-1L))), 1L, 0x35C1D284L, 0x24C3E490L, (**p_1262->g_594), ((VECTOR(int32_t, 4))(0x08421699L)), 6L)).s12fa, ((VECTOR(int32_t, 4))((-6L))))))))), 0x5F6E9F27L, (-1L))) && ((VECTOR(int32_t, 8))((-9L)))))).s6061574520006154 == ((VECTOR(int32_t, 16))(0x3722B2E7L))))).s5b && ((VECTOR(int32_t, 2))(2L))))).odd != p_1262->g_1241)) == 0L) , (void*)0) == (void*)0) < l_1240) ^ l_1233) , (*p_1262->g_171)), p_1262->g_689.s3)) && l_1240), 14)) > 0x6DL))));
        (*p_1262->g_171) &= (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(l_1245.sc756dc57)) + ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 8))(l_1246.sd7297f16)).s66, ((VECTOR(uint32_t, 16))(((*l_1247)++), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((p_1262->g_1261 = ((((1UL != l_1233) <= ((safe_sub_func_int64_t_s_s(((l_1242 = (l_1256[1] == (l_1257[2][2] = l_1256[7]))) <= ((*p_1262->g_533) = ((*p_1262->g_301) ^ (0UL ^ (((((VECTOR(int8_t, 8))(p_1262->g_1258.s42eb7a89)).s2 >= ((((l_1240 >= ((*l_1247)++)) || ((void*)0 != &p_1262->g_726)) | l_1246.sb) , 0xB8L)) && p_1262->g_13.w) < l_1240))))), p_1262->g_391.s1)) > l_1246.sf)) , (-4L)) ^ (*p_1262->g_301))), 0xFA372F72L, 4294967294UL, l_1242, ((VECTOR(uint32_t, 4))(4294967295UL)))).even * ((VECTOR(uint32_t, 4))(0xAA1F1CA1L))))), 0x69A9E8B7L, 0xA3C3F66BL, 7UL, l_1246.se, 0x22D9BE48L, 0xD749AAC2L, ((VECTOR(uint32_t, 4))(4294967295UL)), 1UL)).sef))).xyxxyxxx | ((VECTOR(uint32_t, 8))(0x24EF81A5L))))).odd | ((VECTOR(uint32_t, 4))(0UL))))).even, ((VECTOR(uint32_t, 2))(0xAC72D7B3L))))).xxxxyyxy))), 0x908CA427L, ((VECTOR(uint32_t, 4))(0x827EE4C6L)), ((VECTOR(uint32_t, 2))(0xBFF4703FL)), 0xA71EB7B1L)).s0 >= 0L);
        (*p_1262->g_593) ^= l_1242;
    }
    return (*p_1262->g_301);
}


/* ------------------------------------------ */
/* 
 * reads : p_1262->g_29 p_1262->g_168 p_1262->g_99 p_1262->g_1065 p_1262->g_1067 p_1262->g_309 p_1262->g_533 p_1262->g_97 p_1262->g_573 p_1262->g_170 p_1262->g_171 p_1262->g_11 p_1262->g_253 p_1262->g_1088 p_1262->g_1089 p_1262->g_391 p_1262->g_594 p_1262->g_593 p_1262->g_1108 p_1262->g_301 p_1262->g_302
 * writes: p_1262->g_29 p_1262->g_99 p_1262->g_571 p_1262->g_261 p_1262->g_11 p_1262->g_253 p_1262->g_598
 */
uint16_t  func_16(int32_t * p_17, uint64_t  p_18, struct S0 * p_1262)
{ /* block id: 18 */
    uint8_t *l_27 = (void*)0;
    uint8_t *l_28 = (void*)0;
    uint8_t *l_30 = (void*)0;
    int32_t l_31 = 0x0CFB9963L;
    uint8_t *l_32 = (void*)0;
    uint8_t *l_33 = (void*)0;
    uint8_t *l_34 = (void*)0;
    uint8_t *l_35 = (void*)0;
    uint8_t *l_36 = (void*)0;
    int32_t l_37 = 0x4E288A3DL;
    uint8_t *l_38 = (void*)0;
    uint8_t *l_39 = (void*)0;
    uint8_t *l_40 = (void*)0;
    uint8_t *l_41 = (void*)0;
    uint8_t *l_42[4];
    VECTOR(int32_t, 2) l_43 = (VECTOR(int32_t, 2))(0x6C165AAEL, 0L);
    uint32_t **l_931 = &p_1262->g_922;
    int32_t *l_932 = &p_1262->g_168[0];
    VECTOR(uint8_t, 2) l_941 = (VECTOR(uint8_t, 2))(0x77L, 255UL);
    VECTOR(uint8_t, 8) l_948 = (VECTOR(uint8_t, 8))(0x79L, (VECTOR(uint8_t, 4))(0x79L, (VECTOR(uint8_t, 2))(0x79L, 0xABL), 0xABL), 0xABL, 0x79L, 0xABL);
    VECTOR(uint8_t, 8) l_956 = (VECTOR(uint8_t, 8))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 0UL), 0UL), 0UL, 5UL, 0UL);
    int32_t l_958[7] = {0x485F7D8AL,0x36D6E0F7L,0x485F7D8AL,0x485F7D8AL,0x36D6E0F7L,0x485F7D8AL,0x485F7D8AL};
    uint32_t l_959 = 0x8B22C3A7L;
    VECTOR(uint8_t, 2) l_962 = (VECTOR(uint8_t, 2))(247UL, 0xD3L);
    VECTOR(int32_t, 4) l_999 = (VECTOR(int32_t, 4))(0x225624AAL, (VECTOR(int32_t, 2))(0x225624AAL, 0x7B0DE9A1L), 0x7B0DE9A1L);
    VECTOR(int32_t, 16) l_1008 = (VECTOR(int32_t, 16))(0x0EE9BD8CL, (VECTOR(int32_t, 4))(0x0EE9BD8CL, (VECTOR(int32_t, 2))(0x0EE9BD8CL, 0x53B473B3L), 0x53B473B3L), 0x53B473B3L, 0x0EE9BD8CL, 0x53B473B3L, (VECTOR(int32_t, 2))(0x0EE9BD8CL, 0x53B473B3L), (VECTOR(int32_t, 2))(0x0EE9BD8CL, 0x53B473B3L), 0x0EE9BD8CL, 0x53B473B3L, 0x0EE9BD8CL, 0x53B473B3L);
    int8_t l_1015 = 6L;
    VECTOR(int64_t, 8) l_1040 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-6L)), (-6L)), (-6L), 1L, (-6L));
    VECTOR(int8_t, 16) l_1068 = (VECTOR(int8_t, 16))(0x37L, (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, 0x54L), 0x54L), 0x54L, 0x37L, 0x54L, (VECTOR(int8_t, 2))(0x37L, 0x54L), (VECTOR(int8_t, 2))(0x37L, 0x54L), 0x37L, 0x54L, 0x37L, 0x54L);
    uint64_t *l_1084[2];
    int i;
    for (i = 0; i < 4; i++)
        l_42[i] = (void*)0;
    for (i = 0; i < 2; i++)
        l_1084[i] = &p_1262->g_153;
lbl_1048:
    for (p_18 = 4; (p_18 == 31); ++p_18)
    { /* block id: 21 */
        return p_18;
    }
    if (((p_1262->g_29.z++) && 0x32L))
    { /* block id: 25 */
        VECTOR(uint32_t, 16) l_49 = (VECTOR(uint32_t, 16))(0x22BB76E0L, (VECTOR(uint32_t, 4))(0x22BB76E0L, (VECTOR(uint32_t, 2))(0x22BB76E0L, 0UL), 0UL), 0UL, 0x22BB76E0L, 0UL, (VECTOR(uint32_t, 2))(0x22BB76E0L, 0UL), (VECTOR(uint32_t, 2))(0x22BB76E0L, 0UL), 0x22BB76E0L, 0UL, 0x22BB76E0L, 0UL);
        int32_t *l_63 = &l_31;
        VECTOR(int16_t, 8) l_910 = (VECTOR(int16_t, 8))(0x5D0DL, (VECTOR(int16_t, 4))(0x5D0DL, (VECTOR(int16_t, 2))(0x5D0DL, 0x2BFAL), 0x2BFAL), 0x2BFAL, 0x5D0DL, 0x2BFAL);
        VECTOR(uint16_t, 4) l_915 = (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0xDF6EL), 0xDF6EL);
        VECTOR(uint8_t, 2) l_947 = (VECTOR(uint8_t, 2))(0x62L, 250UL);
        VECTOR(uint32_t, 2) l_989 = (VECTOR(uint32_t, 2))(0xF236AC19L, 0xB3BFEF2DL);
        int32_t l_1020 = (-1L);
        int32_t l_1021 = 0x41692DAAL;
        int32_t l_1022 = 0x100C60E2L;
        int32_t l_1023 = 0x61C52A96L;
        int32_t l_1024 = 1L;
        int32_t l_1025 = 0x1C969617L;
        int32_t l_1027 = (-1L);
        int32_t l_1028 = 0x03D8D3E2L;
        int32_t l_1029 = (-1L);
        int32_t l_1030 = 0x74135ECEL;
        int i;
        for (l_37 = 21; (l_37 <= (-19)); --l_37)
        { /* block id: 28 */
            int32_t *l_48[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint64_t *l_71[4];
            uint8_t **l_324[6][10] = {{&l_40,&l_34,&l_34,&l_40,&p_1262->g_297[7][4][0],&l_32,&l_32,&p_1262->g_297[7][4][0],&l_40,&l_34},{&l_40,&l_34,&l_34,&l_40,&p_1262->g_297[7][4][0],&l_32,&l_32,&p_1262->g_297[7][4][0],&l_40,&l_34},{&l_40,&l_34,&l_34,&l_40,&p_1262->g_297[7][4][0],&l_32,&l_32,&p_1262->g_297[7][4][0],&l_40,&l_34},{&l_40,&l_34,&l_34,&l_40,&p_1262->g_297[7][4][0],&l_32,&l_32,&p_1262->g_297[7][4][0],&l_40,&l_34},{&l_40,&l_34,&l_34,&l_40,&p_1262->g_297[7][4][0],&l_32,&l_32,&p_1262->g_297[7][4][0],&l_40,&l_34},{&l_40,&l_34,&l_34,&l_40,&p_1262->g_297[7][4][0],&l_32,&l_32,&p_1262->g_297[7][4][0],&l_40,&l_34}};
            VECTOR(uint16_t, 16) l_916 = (VECTOR(uint16_t, 16))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0xF2C3L), 0xF2C3L), 0xF2C3L, 65532UL, 0xF2C3L, (VECTOR(uint16_t, 2))(65532UL, 0xF2C3L), (VECTOR(uint16_t, 2))(65532UL, 0xF2C3L), 65532UL, 0xF2C3L, 65532UL, 0xF2C3L);
            VECTOR(uint16_t, 2) l_925 = (VECTOR(uint16_t, 2))(0xC6AAL, 0x4498L);
            VECTOR(uint8_t, 16) l_949 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x92L), 0x92L), 0x92L, 0UL, 0x92L, (VECTOR(uint8_t, 2))(0UL, 0x92L), (VECTOR(uint8_t, 2))(0UL, 0x92L), 0UL, 0x92L, 0UL, 0x92L);
            VECTOR(uint8_t, 16) l_964 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), 255UL, 1UL, 255UL, (VECTOR(uint8_t, 2))(1UL, 255UL), (VECTOR(uint8_t, 2))(1UL, 255UL), 1UL, 255UL, 1UL, 255UL);
            VECTOR(uint8_t, 2) l_968 = (VECTOR(uint8_t, 2))(252UL, 0xF8L);
            VECTOR(uint8_t, 2) l_971 = (VECTOR(uint8_t, 2))(0x89L, 1UL);
            int16_t *l_983[1][9][4] = {{{&p_1262->g_99,&p_1262->g_99,&p_1262->g_99,&p_1262->g_99},{&p_1262->g_99,&p_1262->g_99,&p_1262->g_99,&p_1262->g_99},{&p_1262->g_99,&p_1262->g_99,&p_1262->g_99,&p_1262->g_99},{&p_1262->g_99,&p_1262->g_99,&p_1262->g_99,&p_1262->g_99},{&p_1262->g_99,&p_1262->g_99,&p_1262->g_99,&p_1262->g_99},{&p_1262->g_99,&p_1262->g_99,&p_1262->g_99,&p_1262->g_99},{&p_1262->g_99,&p_1262->g_99,&p_1262->g_99,&p_1262->g_99},{&p_1262->g_99,&p_1262->g_99,&p_1262->g_99,&p_1262->g_99},{&p_1262->g_99,&p_1262->g_99,&p_1262->g_99,&p_1262->g_99}}};
            int16_t **l_982 = &l_983[0][1][2];
            VECTOR(int32_t, 16) l_992 = (VECTOR(int32_t, 16))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 1L), 1L), 1L, 3L, 1L, (VECTOR(int32_t, 2))(3L, 1L), (VECTOR(int32_t, 2))(3L, 1L), 3L, 1L, 3L, 1L);
            VECTOR(int32_t, 2) l_993 = (VECTOR(int32_t, 2))((-7L), 0x0B5568DAL);
            VECTOR(int32_t, 16) l_996 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x30470A72L), 0x30470A72L), 0x30470A72L, 0L, 0x30470A72L, (VECTOR(int32_t, 2))(0L, 0x30470A72L), (VECTOR(int32_t, 2))(0L, 0x30470A72L), 0L, 0x30470A72L, 0L, 0x30470A72L);
            int32_t l_1026 = (-1L);
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_71[i] = (void*)0;
            l_49.sf--;
        }
        return (*l_932);
    }
    else
    { /* block id: 322 */
        uint32_t l_1064 = 1UL;
        VECTOR(int8_t, 16) l_1066 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x69L), 0x69L), 0x69L, (-1L), 0x69L, (VECTOR(int8_t, 2))((-1L), 0x69L), (VECTOR(int8_t, 2))((-1L), 0x69L), (-1L), 0x69L, (-1L), 0x69L);
        int32_t l_1077 = 1L;
        VECTOR(uint16_t, 4) l_1091 = (VECTOR(uint16_t, 4))(0xC452L, (VECTOR(uint16_t, 2))(0xC452L, 7UL), 7UL);
        VECTOR(uint16_t, 4) l_1092 = (VECTOR(uint16_t, 4))(0x18C7L, (VECTOR(uint16_t, 2))(0x18C7L, 0x5E4AL), 0x5E4AL);
        int i;
        if (p_18)
            goto lbl_1048;
        for (p_1262->g_99 = 26; (p_1262->g_99 >= 9); p_1262->g_99 = safe_sub_func_uint8_t_u_u(p_1262->g_99, 6))
        { /* block id: 326 */
            uint64_t l_1055 = 0x912040575E7806C9L;
            int64_t *l_1078 = (void*)0;
            int64_t *l_1079 = (void*)0;
            int64_t *l_1080 = &p_1262->g_261;
            int32_t l_1081[9][6][3] = {{{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL}},{{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL}},{{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL}},{{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL}},{{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL}},{{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL}},{{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL}},{{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL}},{{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL},{0x11254E3EL,7L,0x3FB7F08EL}}};
            VECTOR(uint16_t, 8) l_1090 = (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0UL), 0UL), 0UL, 8UL, 0UL);
            VECTOR(int8_t, 2) l_1095 = (VECTOR(int8_t, 2))(0x0FL, 0x01L);
            int i, j, k;
            (**p_1262->g_170) &= ((safe_mod_func_uint16_t_u_u(((((VECTOR(uint8_t, 4))(0UL, ((VECTOR(uint8_t, 2))(3UL, 254UL)), 1UL)).z == ((safe_sub_func_uint8_t_u_u(((p_18 <= l_1055) || 1UL), p_18)) , (safe_div_func_int64_t_s_s((l_1081[3][1][0] ^= ((*l_1080) = (safe_mod_func_int8_t_s_s(((l_1064 &= (0L | (safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 2))(0x619FL, 5L)).odd, 2)))) == 0L), (p_1262->g_571.s1 = ((((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(p_1262->g_1065.yx)), ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))((~((VECTOR(int8_t, 16))(l_1066.s941e962cd3811423)).odd))), ((VECTOR(int8_t, 2))((-1L), 0x1EL)).yxyxyxxx))).s53))).xxxxyyxyxyxyyxxy, ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(p_1262->g_1067.xxxyyyxx)), ((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 4))(0x36L, 0x1AL, 0x5CL, 0x76L)).wyzzzwxyzyxywzzz, ((VECTOR(int8_t, 4))(l_1068.sdb9d)).xxywzzyxzywwyzxx))).odd))).s2502034631164310))).s0 || (l_1077 |= (safe_sub_func_uint8_t_u_u(p_18, (((safe_add_func_uint8_t_u_u((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(p_18, l_1066.s1, 0x9042FB30DC3177F8L, 0x89FDED39D306625DL)).yyyzxwyywzxyxyyx + ((VECTOR(uint64_t, 16))(0x718D8F03C1CF397BL))))).s7 | 0L), 0UL)) || l_1066.sc) , p_1262->g_309.y))))) ^ (*p_1262->g_533))))))), p_1262->g_97.y)))) ^ 0xF4F9DE811240EA1EL), p_1262->g_573.s5)) <= p_18);
            for (p_1262->g_253 = 3; (p_1262->g_253 < 46); p_1262->g_253 = safe_add_func_int64_t_s_s(p_1262->g_253, 1))
            { /* block id: 335 */
                VECTOR(int16_t, 2) l_1087 = (VECTOR(int16_t, 2))(0x0364L, 1L);
                int16_t *l_1104 = (void*)0;
                int16_t *l_1105[1][5];
                uint16_t l_1107[2];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_1105[i][j] = (void*)0;
                }
                for (i = 0; i < 2; i++)
                    l_1107[i] = 0x8E88L;
                (**p_1262->g_170) = (!((void*)0 == l_1084[0]));
                l_1077 &= ((**p_1262->g_170) |= ((VECTOR(int32_t, 8))((-3L), (safe_mul_func_uint8_t_u_u((&p_1262->g_852 == (void*)0), ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))((((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(l_1087.xyyxyxxxyxyyyyxx)).s1e >= ((VECTOR(int16_t, 2))(p_1262->g_1088.xy))))).xyyxyyyy, ((VECTOR(int16_t, 16))(p_1262->g_1089.sfba5328db309b58e)).lo))).s5406220001350022, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 4))(0x887FL, (*l_932), 0xCF19L, 0xD9C9L)).hi, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 8))(l_1090.s33260047)).s76, ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 8))(1UL, 0x813FL, ((VECTOR(uint16_t, 16))(l_1091.yzzwwzwxwzyxwywz)).s3, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1092.wz)), 0x77B5L, 1UL)), 1UL)).s2637246020254304, (uint16_t)((p_18 | (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 16))(l_1095.xyyxyxxyyyyxxxyy)).even, ((VECTOR(uint8_t, 2))(253UL, 255UL)).yyyyyyyy))).s2, ((255UL >= (safe_div_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((safe_add_func_int16_t_s_s((l_1081[4][3][1] |= (*l_932)), 0xB02BL)), ((safe_unary_minus_func_uint8_t_u(l_1087.y)) <= ((*l_1080) = p_18)))), 3)), 1L))) , FAKE_DIVERGE(p_1262->group_1_offset, get_group_id(1), 10))))) == 0x5EC1B9E37930DA7CL), (uint16_t)l_1087.x))).s56))), FAKE_DIVERGE(p_1262->local_1_offset, get_local_id(1), 10), l_1107[0], 7UL, p_18, 0UL, 8UL)).s47))).xyxxyxyxxxyyyyyx, ((VECTOR(uint16_t, 16))(65535UL))))).sb ^ p_1262->g_391.s4), 0L, 9L, l_1090.s6, ((VECTOR(int8_t, 8))(0x7BL)), ((VECTOR(int8_t, 4))(0x35L)))).even, ((VECTOR(int8_t, 8))((-10L)))))).s0)), ((VECTOR(int32_t, 4))(0x5BDF6FAFL)), (-2L), (-1L))).s0);
            }
        }
        (*p_1262->g_1108) = (*p_1262->g_594);
    }
    for (p_18 = 0; (p_18 == 51); p_18++)
    { /* block id: 347 */
        return (*p_1262->g_301);
    }
    return (*l_932);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1262->g_10
 */
uint64_t  func_19(uint64_t  p_20, int32_t * p_21, int32_t * p_22, struct S0 * p_1262)
{ /* block id: 15 */
    int32_t *l_24 = &p_1262->g_11[4][0];
    p_1262->g_10[0] = l_24;
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1262->g_851 p_1262->g_852 p_1262->g_153 p_1262->g_261 p_1262->g_302 p_1262->g_533 p_1262->g_168 p_1262->g_13 p_1262->g_869 p_1262->g_876 p_1262->g_878 p_1262->g_819 p_1262->g_443 p_1262->g_391 p_1262->g_702 p_1262->g_170 p_1262->g_171
 * writes: p_1262->g_598 p_1262->g_153 p_1262->g_261 p_1262->g_302 p_1262->g_168 p_1262->g_171
 */
int32_t  func_52(int64_t  p_53, int32_t  p_54, uint8_t * p_55, uint8_t * p_56, struct S0 * p_1262)
{ /* block id: 245 */
    int32_t **l_857 = (void*)0;
    VECTOR(int16_t, 16) l_870 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int16_t, 2))(0L, 1L), (VECTOR(int16_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
    uint32_t *l_874[5][9][2] = {{{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253}}};
    uint8_t *l_899 = (void*)0;
    uint8_t *l_900 = (void*)0;
    uint8_t *l_901 = (void*)0;
    uint8_t *l_902 = (void*)0;
    uint8_t *l_903 = (void*)0;
    uint8_t *l_904[2][9];
    VECTOR(int32_t, 4) l_905 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x1DD8746AL), 0x1DD8746AL);
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
            l_904[i][j] = (void*)0;
    }
    for (p_54 = 0; (p_54 <= 17); p_54 = safe_add_func_uint8_t_u_u(p_54, 9))
    { /* block id: 248 */
        uint32_t l_873 = 4294967293UL;
        uint32_t *l_875 = (void*)0;
        VECTOR(uint16_t, 16) l_877 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xB1EDL), 0xB1EDL), 0xB1EDL, 1UL, 0xB1EDL, (VECTOR(uint16_t, 2))(1UL, 0xB1EDL), (VECTOR(uint16_t, 2))(1UL, 0xB1EDL), 1UL, 0xB1EDL, 1UL, 0xB1EDL);
        int32_t l_893[1][1][5];
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 5; k++)
                    l_893[i][j][k] = 0x1CF724F3L;
            }
        }
        (*p_1262->g_852) = p_1262->g_851;
        for (p_1262->g_153 = 0; (p_1262->g_153 >= 55); p_1262->g_153 = safe_add_func_int8_t_s_s(p_1262->g_153, 4))
        { /* block id: 252 */
            uint8_t l_858 = 0UL;
            int32_t l_861 = 0x51D83DCEL;
            uint8_t *l_892[8][8][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
            int32_t l_894 = 0x57443F07L;
            uint32_t l_895 = 0UL;
            int i, j, k;
            if (p_54)
                break;
            for (p_1262->g_261 = 0; (p_1262->g_261 != 12); p_1262->g_261 = safe_add_func_int32_t_s_s(p_1262->g_261, 7))
            { /* block id: 256 */
                uint32_t l_862 = 0x2CCBED69L;
                l_858 = (l_857 != &p_1262->g_593);
                for (p_1262->g_302 = 0; (p_1262->g_302 <= 28); p_1262->g_302 = safe_add_func_uint8_t_u_u(p_1262->g_302, 5))
                { /* block id: 260 */
                    if (l_861)
                        break;
                    l_862 = (*p_1262->g_533);
                }
                if (p_54)
                    goto lbl_896;
            }
            (*p_1262->g_533) = ((((safe_sub_func_int64_t_s_s((p_1262->g_13.y < (((((safe_rshift_func_int16_t_s_u(0L, ((((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(p_1262->g_869.yyyy)).xxzwwwyw && ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 2))(l_870.s44)).yyyxyxyxxyyyxxyx, ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(0x4165L, ((VECTOR(int16_t, 2))(0x632EL, 0x2B0BL)), 0L)), 2L, p_54, 0L, (-3L))).s7526116050106625 == ((VECTOR(int16_t, 4))(0x3168L, 0x04F2L, 0x66FFL, 2L)).zxzyzxyzzxzyxxxz))).s08ad, ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((((l_873 || (l_874[0][5][0] != l_875)) & (((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 2))(p_1262->g_876.yy)).yyxyyyxyyxxyxxyx, ((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 2))(l_877.s4f)).yxxx))).xzyyyyxwzywxyyww, ((VECTOR(uint16_t, 4))(p_1262->g_878.s7527)).zzyxwxxwywxyzzxx))).s6 < (!((l_893[0][0][1] ^= (((p_53 == (safe_add_func_int32_t_s_s((safe_sub_func_int8_t_s_s((l_861 = p_1262->g_819.s0), (safe_mod_func_uint64_t_u_u((safe_mod_func_int32_t_s_s(((((safe_unary_minus_func_int8_t_s(((safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(p_53, p_53)), p_54)) & 0x3FL))) <= p_53) && p_1262->g_443.y) < 0x05L), 4294967289UL)), l_858)))), FAKE_DIVERGE(p_1262->global_0_offset, get_global_id(0), 10)))) ^ p_54) ^ 0x68L)) > p_1262->g_391.s2)))) > l_877.s7), ((VECTOR(int16_t, 8))(0x526AL)), 0x00F2L, 0x7272L, ((VECTOR(int16_t, 4))(4L)), 0L)).s0eeb && ((VECTOR(int16_t, 4))(0x65F1L))))).yxwwzwxwwxxzwzwx, ((VECTOR(int16_t, 16))(0x11E2L))))).s4e4f, ((VECTOR(int16_t, 4))(0x11D8L))))), ((VECTOR(int16_t, 4))(0x53C8L))))).ywwxwxywxwyxwzxx))).odd, ((VECTOR(int16_t, 8))(0L))))).s62 == ((VECTOR(int16_t, 2))((-1L)))))).xyyx, ((VECTOR(int16_t, 4))(0x7FF7L))))).wwwyzwxx))).even, ((VECTOR(int16_t, 4))((-1L)))))).x, 1L)) , p_54) & p_53) & l_858))) ^ 1L) && p_1262->g_819.s0) , p_1262->g_702.y) , l_858)), l_894)) >= (-1L)) , (-9L)) || l_895);
            if (p_53)
                continue;
        }
    }
lbl_896:
    (*p_1262->g_170) = (void*)0;
    (*p_1262->g_170) = (((FAKE_DIVERGE(p_1262->global_1_offset, get_global_id(1), 10) & p_53) <= (safe_div_func_uint8_t_u_u((l_905.w &= l_870.s0), 255UL))) , (*p_1262->g_170));
    return l_870.sa;
}


/* ------------------------------------------ */
/* 
 * reads : p_1262->g_287 p_1262->g_358 p_1262->g_13 p_1262->g_253 p_1262->g_258 p_1262->g_322 p_1262->g_381 p_1262->g_391 p_1262->g_168 p_1262->g_397 p_1262->g_309 p_1262->g_416 p_1262->g_440 p_1262->g_443 p_1262->g_446 p_1262->g_453 p_1262->g_455 p_1262->g_319 p_1262->g_488 p_1262->g_491 p_1262->g_492 p_1262->g_509 p_1262->g_177 p_1262->g_179 p_1262->g_297 p_1262->g_170 p_1262->g_532 p_1262->g_171 p_1262->g_534 p_1262->g_541 p_1262->g_533 p_1262->g_569 p_1262->g_571 p_1262->g_573 p_1262->g_577 p_1262->g_579 p_1262->g_593 p_1262->g_594 p_1262->g_598 p_1262->g_230 p_1262->g_664 p_1262->g_2 p_1262->g_689 p_1262->g_692 p_1262->g_699 p_1262->g_700 p_1262->g_702 p_1262->g_726 p_1262->g_808 p_1262->g_809 p_1262->g_813 p_1262->g_815 p_1262->g_818 p_1262->g_819 p_1262->g_833 p_1262->g_153 p_1262->g_213
 * writes: p_1262->g_287 p_1262->g_358 p_1262->g_168 p_1262->g_79 p_1262->g_261 p_1262->g_179 p_1262->g_171 p_1262->g_533 p_1262->g_593 p_1262->g_598 p_1262->g_258 p_1262->g_443 p_1262->g_2 p_1262->g_301 p_1262->g_253 p_1262->g_847
 */
uint8_t * func_57(uint64_t  p_58, uint8_t * p_59, int32_t  p_60, uint32_t  p_61, int32_t  p_62, struct S0 * p_1262)
{ /* block id: 112 */
    int16_t l_325 = 8L;
    int8_t l_333 = 0x64L;
    int32_t l_353 = (-1L);
    int32_t l_355 = (-9L);
    int32_t l_356 = 0x461B7E0BL;
    VECTOR(int8_t, 8) l_386 = (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x6DL), 0x6DL), 0x6DL, 6L, 0x6DL);
    VECTOR(int8_t, 2) l_387 = (VECTOR(int8_t, 2))(1L, 0x59L);
    VECTOR(uint64_t, 8) l_402 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xD9628E17E25F3A32L), 0xD9628E17E25F3A32L), 0xD9628E17E25F3A32L, 1UL, 0xD9628E17E25F3A32L);
    VECTOR(uint8_t, 4) l_426 = (VECTOR(uint8_t, 4))(0x10L, (VECTOR(uint8_t, 2))(0x10L, 0x1DL), 0x1DL);
    VECTOR(uint8_t, 2) l_427 = (VECTOR(uint8_t, 2))(0x11L, 0xAFL);
    VECTOR(uint16_t, 2) l_463 = (VECTOR(uint16_t, 2))(65527UL, 0UL);
    VECTOR(int32_t, 16) l_485 = (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), (-1L)), (-1L)), (-1L), (-2L), (-1L), (VECTOR(int32_t, 2))((-2L), (-1L)), (VECTOR(int32_t, 2))((-2L), (-1L)), (-2L), (-1L), (-2L), (-1L));
    VECTOR(int32_t, 8) l_489 = (VECTOR(int32_t, 8))(0x76F11CBEL, (VECTOR(int32_t, 4))(0x76F11CBEL, (VECTOR(int32_t, 2))(0x76F11CBEL, 9L), 9L), 9L, 0x76F11CBEL, 9L);
    VECTOR(int32_t, 2) l_493 = (VECTOR(int32_t, 2))((-1L), 0x69E75B3FL);
    VECTOR(int32_t, 4) l_494 = (VECTOR(int32_t, 4))(0x0716E29FL, (VECTOR(int32_t, 2))(0x0716E29FL, (-1L)), (-1L));
    VECTOR(int32_t, 2) l_496 = (VECTOR(int32_t, 2))(0x40B6F4E3L, 0x7FCB2510L);
    VECTOR(int16_t, 16) l_537 = (VECTOR(int16_t, 16))(0x66E0L, (VECTOR(int16_t, 4))(0x66E0L, (VECTOR(int16_t, 2))(0x66E0L, 0x28CCL), 0x28CCL), 0x28CCL, 0x66E0L, 0x28CCL, (VECTOR(int16_t, 2))(0x66E0L, 0x28CCL), (VECTOR(int16_t, 2))(0x66E0L, 0x28CCL), 0x66E0L, 0x28CCL, 0x66E0L, 0x28CCL);
    VECTOR(int8_t, 4) l_540 = (VECTOR(int8_t, 4))(0x6BL, (VECTOR(int8_t, 2))(0x6BL, 0x09L), 0x09L);
    int32_t l_552 = 0x3B859089L;
    int32_t l_553 = 0x10529FD7L;
    int32_t l_554[1][5][3] = {{{0x4F5147CAL,0x4F5147CAL,0x4F5147CAL},{0x4F5147CAL,0x4F5147CAL,0x4F5147CAL},{0x4F5147CAL,0x4F5147CAL,0x4F5147CAL},{0x4F5147CAL,0x4F5147CAL,0x4F5147CAL},{0x4F5147CAL,0x4F5147CAL,0x4F5147CAL}}};
    VECTOR(uint8_t, 4) l_565 = (VECTOR(uint8_t, 4))(0x9FL, (VECTOR(uint8_t, 2))(0x9FL, 255UL), 255UL);
    VECTOR(int8_t, 8) l_570 = (VECTOR(int8_t, 8))(0x65L, (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, (-1L)), (-1L)), (-1L), 0x65L, (-1L));
    VECTOR(int8_t, 16) l_572 = (VECTOR(int8_t, 16))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x0EL), 0x0EL), 0x0EL, 7L, 0x0EL, (VECTOR(int8_t, 2))(7L, 0x0EL), (VECTOR(int8_t, 2))(7L, 0x0EL), 7L, 0x0EL, 7L, 0x0EL);
    VECTOR(int8_t, 8) l_574 = (VECTOR(int8_t, 8))(0x07L, (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 0x63L), 0x63L), 0x63L, 0x07L, 0x63L);
    VECTOR(int8_t, 4) l_578 = (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x40L), 0x40L);
    VECTOR(int8_t, 8) l_580 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
    VECTOR(int8_t, 2) l_581 = (VECTOR(int8_t, 2))(2L, 0x49L);
    VECTOR(int8_t, 2) l_582 = (VECTOR(int8_t, 2))((-1L), 0x1FL);
    int32_t *l_595 = (void*)0;
    VECTOR(int8_t, 2) l_606 = (VECTOR(int8_t, 2))(1L, 0x4DL);
    uint64_t *l_614 = &p_1262->g_153;
    uint64_t *l_618[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint16_t l_648 = 1UL;
    VECTOR(int16_t, 4) l_690 = (VECTOR(int16_t, 4))(0x42C7L, (VECTOR(int16_t, 2))(0x42C7L, 1L), 1L);
    VECTOR(int64_t, 16) l_698 = (VECTOR(int64_t, 16))(0x78743E642423EF83L, (VECTOR(int64_t, 4))(0x78743E642423EF83L, (VECTOR(int64_t, 2))(0x78743E642423EF83L, 0L), 0L), 0L, 0x78743E642423EF83L, 0L, (VECTOR(int64_t, 2))(0x78743E642423EF83L, 0L), (VECTOR(int64_t, 2))(0x78743E642423EF83L, 0L), 0x78743E642423EF83L, 0L, 0x78743E642423EF83L, 0L);
    VECTOR(int64_t, 4) l_701 = (VECTOR(int64_t, 4))(0x7BE607D0237C4255L, (VECTOR(int64_t, 2))(0x7BE607D0237C4255L, (-8L)), (-8L));
    uint32_t l_750 = 0x4A767918L;
    int8_t l_758 = 0L;
    int32_t l_770 = 0x65021484L;
    VECTOR(uint64_t, 16) l_838 = (VECTOR(uint64_t, 16))(0x3F62D4214E873DF8L, (VECTOR(uint64_t, 4))(0x3F62D4214E873DF8L, (VECTOR(uint64_t, 2))(0x3F62D4214E873DF8L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x3F62D4214E873DF8L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x3F62D4214E873DF8L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x3F62D4214E873DF8L, 18446744073709551615UL), 0x3F62D4214E873DF8L, 18446744073709551615UL, 0x3F62D4214E873DF8L, 18446744073709551615UL);
    int i, j, k;
lbl_558:
    l_325 = 0x6D8D9A0EL;
lbl_792:
    for (p_62 = 0; (p_62 >= (-6)); --p_62)
    { /* block id: 116 */
        uint8_t l_328 = 255UL;
        VECTOR(int64_t, 8) l_342 = (VECTOR(int64_t, 8))(0x5BE37E3313D937E2L, (VECTOR(int64_t, 4))(0x5BE37E3313D937E2L, (VECTOR(int64_t, 2))(0x5BE37E3313D937E2L, (-1L)), (-1L)), (-1L), 0x5BE37E3313D937E2L, (-1L));
        int32_t l_354 = 0x715DCCE0L;
        int32_t l_357 = (-8L);
        uint16_t l_369[1][10];
        int16_t l_371 = 1L;
        VECTOR(int8_t, 16) l_392 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 7L), 7L), 7L, 0L, 7L, (VECTOR(int8_t, 2))(0L, 7L), (VECTOR(int8_t, 2))(0L, 7L), 0L, 7L, 0L, 7L);
        uint32_t l_404 = 0UL;
        uint8_t *l_411 = &l_328;
        VECTOR(uint8_t, 4) l_419 = (VECTOR(uint8_t, 4))(0x14L, (VECTOR(uint8_t, 2))(0x14L, 255UL), 255UL);
        VECTOR(uint16_t, 4) l_451 = (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0x3A37L), 0x3A37L);
        VECTOR(uint8_t, 8) l_454 = (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0xF6L), 0xF6L), 0xF6L, 9UL, 0xF6L);
        VECTOR(int32_t, 16) l_486 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 1L), 1L), 1L, (-8L), 1L, (VECTOR(int32_t, 2))((-8L), 1L), (VECTOR(int32_t, 2))((-8L), 1L), (-8L), 1L, (-8L), 1L);
        VECTOR(int32_t, 2) l_487 = (VECTOR(int32_t, 2))(0L, (-8L));
        VECTOR(int32_t, 2) l_490 = (VECTOR(int32_t, 2))(0x01321F90L, 0x234AC26EL);
        VECTOR(int32_t, 2) l_549 = (VECTOR(int32_t, 2))(0x06E6DF0AL, 0x01C155F2L);
        uint64_t l_555 = 0xA0D0AFB91178E9E6L;
        VECTOR(uint8_t, 8) l_563 = (VECTOR(uint8_t, 8))(0xC1L, (VECTOR(uint8_t, 4))(0xC1L, (VECTOR(uint8_t, 2))(0xC1L, 0x31L), 0x31L), 0x31L, 0xC1L, 0x31L);
        VECTOR(uint8_t, 8) l_564 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x7AL), 0x7AL), 0x7AL, 255UL, 0x7AL);
        VECTOR(uint8_t, 4) l_566 = (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0xBFL), 0xBFL);
        uint16_t **l_575 = &p_1262->g_301;
        VECTOR(int8_t, 16) l_576 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x58L), 0x58L), 0x58L, (-1L), 0x58L, (VECTOR(int8_t, 2))((-1L), 0x58L), (VECTOR(int8_t, 2))((-1L), 0x58L), (-1L), 0x58L, (-1L), 0x58L);
        VECTOR(int8_t, 8) l_583 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x1FL), 0x1FL), 0x1FL, (-2L), 0x1FL);
        VECTOR(int8_t, 8) l_584 = (VECTOR(int8_t, 8))(0x70L, (VECTOR(int8_t, 4))(0x70L, (VECTOR(int8_t, 2))(0x70L, 0x3CL), 0x3CL), 0x3CL, 0x70L, 0x3CL);
        int32_t l_589 = 0x3649DC82L;
        int8_t *l_590[7][7] = {{&l_333,&l_333,&l_333,&l_333,&l_333,&l_333,&l_333},{&l_333,&l_333,&l_333,&l_333,&l_333,&l_333,&l_333},{&l_333,&l_333,&l_333,&l_333,&l_333,&l_333,&l_333},{&l_333,&l_333,&l_333,&l_333,&l_333,&l_333,&l_333},{&l_333,&l_333,&l_333,&l_333,&l_333,&l_333,&l_333},{&l_333,&l_333,&l_333,&l_333,&l_333,&l_333,&l_333},{&l_333,&l_333,&l_333,&l_333,&l_333,&l_333,&l_333}};
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 10; j++)
                l_369[i][j] = 0UL;
        }
        if (l_328)
        { /* block id: 117 */
            uint64_t l_329 = 3UL;
            uint64_t *l_332[1][5];
            int32_t l_351[2][2];
            uint8_t *l_352[2][7] = {{(void*)0,(void*)0,(void*)0,&l_328,(void*)0,&l_328,(void*)0},{(void*)0,(void*)0,(void*)0,&l_328,(void*)0,&l_328,(void*)0}};
            int32_t l_370 = 1L;
            int32_t *l_372 = &p_1262->g_168[4];
            VECTOR(int64_t, 8) l_388 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x0759CF608735E89DL), 0x0759CF608735E89DL), 0x0759CF608735E89DL, 1L, 0x0759CF608735E89DL);
            int16_t *l_396 = &l_325;
            int16_t **l_395 = &l_396;
            VECTOR(uint64_t, 4) l_403 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xAD12F69573B8F1B8L), 0xAD12F69573B8F1B8L);
            uint8_t l_407 = 0xCAL;
            uint64_t l_408 = 0xA9C5E4597391EED8L;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 5; j++)
                    l_332[i][j] = (void*)0;
            }
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 2; j++)
                    l_351[i][j] = 0x7FF7BD51L;
            }
            (*l_372) = ((l_329 & (l_355 = (safe_mod_func_uint16_t_u_u((&l_329 != &l_329), (((++p_1262->g_287.s3) != (safe_mul_func_uint16_t_u_u(0x77BCL, ((p_62 , (safe_lshift_func_int8_t_s_s(p_60, 4))) || (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_342.s46)), 0x2094E8B0BB53F86AL, 0x42B468A3FCDE8412L)).x, (safe_mod_func_uint64_t_u_u((((safe_div_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((l_370 = ((safe_lshift_func_uint8_t_u_u(((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 4))(((++p_1262->g_358) != l_353), (safe_sub_func_int32_t_s_s((safe_mod_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((l_351[1][1] = (safe_rshift_func_uint16_t_u_s((p_1262->g_13.w > l_369[0][4]), 2))) <= l_329), 3L)), p_60)), p_58)), 0x7795B5A58DA103A0L, 0L)).xywzzwyxyywzzwzw, ((VECTOR(int64_t, 16))((-1L)))))).even != ((VECTOR(int64_t, 8))(1L))))).s71 && ((VECTOR(int64_t, 2))((-8L)))))).odd == 0x8B882118681D0E41L) || 0x88L), 5)) | 0x833303D4C543D130L)) && l_342.s0), p_1262->g_253)), GROUP_DIVERGE(0, 1))) ^ p_1262->g_258) != l_329), p_61)))))))) ^ p_1262->g_322.z))))) & l_371);
            for (l_370 = 0; (l_370 == (-3)); l_370 = safe_sub_func_uint64_t_u_u(l_370, 9))
            { /* block id: 126 */
                (*l_372) = p_58;
            }
            l_357 ^= ((safe_mul_func_uint8_t_u_u(((safe_div_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(p_1262->g_381.xy)).lo, (safe_mul_func_int8_t_s_s((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 2))(l_386.s65)).yyyyxxyy, ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(l_387.xx)), ((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 2))(0L, 5L)).yyxxyyyy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(1L, 0x05L)), (((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(l_388.s66)).yyxy && ((VECTOR(int64_t, 4))((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 4))(5L, ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(p_1262->g_391.s0556001277170377)).sa2, ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))(l_392.s92e75aac)).even, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(0x41L, 0x1EL)).xyxyyxyxyyyxxyxx && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 16))(p_1262->g_168[2], l_353, (safe_sub_func_int32_t_s_s(((void*)0 == l_395), GROUP_DIVERGE(1, 1))), ((VECTOR(int8_t, 2))(p_1262->g_397.s8b)), 0x31L, 2L, (l_387.y , (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(l_402.s3433)).yxxwzywz << ((VECTOR(uint64_t, 2))(l_403.wz)).yxxxyxxx))).s5, p_61))), (l_404 >= (safe_lshift_func_int16_t_s_s(0x118DL, 5))), 0L, (*l_372), l_353, p_1262->g_309.x, 0x0BL, 0x44L, 0L)).s69, ((VECTOR(int8_t, 2))(0L))))).xyyyyyyxxxxxxyxy, ((VECTOR(int8_t, 16))(0x6FL)), ((VECTOR(int8_t, 16))((-6L)))))).sa9a9 && ((VECTOR(int8_t, 4))(0x26L))))).wxyzxyzxzyyxwwyy))).s221c))).wzxzxzyx, ((VECTOR(int8_t, 8))((-10L)))))).s44 && ((VECTOR(int8_t, 2))(7L))))).xyyy, ((VECTOR(int8_t, 4))(0x72L))))) != ((VECTOR(int8_t, 4))(5L))))).xwwxwwwx && ((VECTOR(int8_t, 8))(0x77L))))).even, ((VECTOR(int8_t, 4))(0x3BL))))).even, ((VECTOR(int8_t, 2))((-1L))), ((VECTOR(int8_t, 2))((-1L)))))), ((VECTOR(int8_t, 2))(0x73L))))), 4L)).x, (*l_372))), 0x081F2127D038F0C9L, 0x6B5A29B97A563718L, 0x34DCD79D700DF9D8L))))).even, ((VECTOR(int64_t, 2))(0x17862E5233B3F651L)), ((VECTOR(int64_t, 2))(5L))))).yyyyyyxxyyxyxxxy > ((VECTOR(int64_t, 16))((-1L)))))).s1 | l_404), 0x25L, ((VECTOR(int8_t, 8))(0x01L)), 0x43L, ((VECTOR(int8_t, 2))(0x3EL)), 2L)).hi))).s43))).xxyxxxxyyyyyxyyy))).hi))).s77 && ((VECTOR(int8_t, 2))(3L))))).odd, l_392.s7)), 0UL)))), 0x78761772L)) && l_407), p_61)) < l_408);
            for (p_60 = 0; (p_60 <= (-21)); --p_60)
            { /* block id: 132 */
                return p_59;
            }
        }
        else
        { /* block id: 135 */
            uint64_t l_452 = 0x6F4A3E529422D7DDL;
            VECTOR(uint16_t, 8) l_462 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 6UL), 6UL), 6UL, 0UL, 6UL);
            uint8_t *l_466[7][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int32_t l_467 = (-1L);
            VECTOR(int64_t, 16) l_484 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
            VECTOR(int32_t, 2) l_495 = (VECTOR(int32_t, 2))((-4L), 0x4C8CCC8CL);
            int64_t *l_514 = (void*)0;
            int64_t *l_515 = (void*)0;
            int64_t *l_516 = (void*)0;
            int64_t *l_517 = (void*)0;
            int64_t *l_518[2];
            int32_t l_527 = (-3L);
            VECTOR(int8_t, 8) l_538 = (VECTOR(int8_t, 8))(0x70L, (VECTOR(int8_t, 4))(0x70L, (VECTOR(int8_t, 2))(0x70L, (-3L)), (-3L)), (-3L), 0x70L, (-3L));
            VECTOR(int8_t, 8) l_539 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
            uint32_t l_548 = 0x9254E20BL;
            int32_t *l_550 = &p_1262->g_168[7];
            int32_t *l_551[6][8] = {{&p_1262->g_3,&p_1262->g_11[3][6],&l_467,&p_1262->g_11[3][6],&p_1262->g_3,&p_1262->g_3,&p_1262->g_11[3][6],&l_467},{&p_1262->g_3,&p_1262->g_11[3][6],&l_467,&p_1262->g_11[3][6],&p_1262->g_3,&p_1262->g_3,&p_1262->g_11[3][6],&l_467},{&p_1262->g_3,&p_1262->g_11[3][6],&l_467,&p_1262->g_11[3][6],&p_1262->g_3,&p_1262->g_3,&p_1262->g_11[3][6],&l_467},{&p_1262->g_3,&p_1262->g_11[3][6],&l_467,&p_1262->g_11[3][6],&p_1262->g_3,&p_1262->g_3,&p_1262->g_11[3][6],&l_467},{&p_1262->g_3,&p_1262->g_11[3][6],&l_467,&p_1262->g_11[3][6],&p_1262->g_3,&p_1262->g_3,&p_1262->g_11[3][6],&l_467},{&p_1262->g_3,&p_1262->g_11[3][6],&l_467,&p_1262->g_11[3][6],&p_1262->g_3,&p_1262->g_3,&p_1262->g_11[3][6],&l_467}};
            int i, j;
            for (i = 0; i < 2; i++)
                l_518[i] = (void*)0;
            l_354 ^= (((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(0UL, 0UL, 0xA9B56FADL, 0UL)).xzywyxzz + ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(p_1262->g_416.ywwzyxwx)).hi + ((VECTOR(uint32_t, 2))(0xC619768BL, 0x63A5F474L)).yxyx))).xzyxyxzx))), ((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((-1L), 0x2854C023L)) && ((VECTOR(int32_t, 8))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 2))(0xEBL, 7UL)).xxyxxyxxxxyyxxxy, ((VECTOR(uint8_t, 8))(l_419.ywxywxwz)).s7255702252256034))).s7c + ((VECTOR(uint8_t, 4))(((*l_411) = (l_419.w < 0x7AL)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(1UL, 0UL)).xxyyyxxyxxxxyyyy + ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(0x8EL, 0UL)).yyxx * ((VECTOR(uint8_t, 16))(l_426.xwzyyxyyzxyzwzwy)).s9886))).xzxzwzwwzxwzxzzx))).sf3 - ((VECTOR(uint8_t, 8))(l_427.xxyxyyyx)).s03))), 9UL)).even))).lo ^ ((safe_sub_func_int8_t_s_s(((p_1262->g_79.x = ((safe_mul_func_int8_t_s_s((((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xE8D6A05840F3624FL)).xyxy + ((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xCE392085BA5771FBL)).xxyx))).zwyzyyxywyzxyywz, ((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 8))(((((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(p_1262->g_440.s57b8db2ac31543de)).s1, FAKE_DIVERGE(p_1262->local_0_offset, get_local_id(0), 10))) , (l_369[0][4] <= l_427.y)) >= 0x54L) >= ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 2))(p_1262->g_443.yw)).yxxyyyxyxyyxxyyy, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(p_1262->g_446.s08df0b291b26c7d9)).s05 * ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(l_451.zxyy)) + ((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(0xBDL, 0xB4L)).xyyyxxyxyyxyyyxy | ((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 8))(l_452, l_402.s2, 0xE7L, 7UL, 0x52L, 0x2BL, 1UL, 1UL)).s2241473251060756, (uint8_t)l_452)))))).s45, ((VECTOR(uint8_t, 2))(p_1262->g_453.yy))))).xxyxxyxyxyyyyyxy, ((VECTOR(uint8_t, 4))(l_454.s7551)).wzywywyyyzzzzxzw))).s4c42))).xzzxyzzx, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(p_1262->g_455.yx)), ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(l_462.s5743)).wwzwyxxywwywywzw + ((VECTOR(uint16_t, 4))(l_463.yyxx)).xyxzywwyzzxxzzxw))).s8a + ((VECTOR(uint16_t, 8))(((safe_mul_func_uint8_t_u_u((l_467 ^= FAKE_DIVERGE(p_1262->local_0_offset, get_local_id(0), 10)), (+(safe_div_func_uint64_t_u_u(((((VECTOR(int16_t, 8))((p_60 == 0x59L), 0x3CC7L, (-4L), 0x7099L, 1L, l_462.s0, 0x5D5BL, 7L)).s0 || l_462.s4) && p_62), GROUP_DIVERGE(1, 1)))))) > p_1262->g_319.s3), 0x3060L, 1UL, p_60, 0UL, ((VECTOR(uint16_t, 2))(65530UL)), 0xECBFL)).s56))) + ((VECTOR(uint16_t, 2))(0x6731L))))), 65535UL, ((VECTOR(uint16_t, 4))(65529UL)), 0x1B06L, 0x4234L, 0x56F1L, 65526UL, ((VECTOR(uint16_t, 2))(0UL)), 65535UL)).lo))) + ((VECTOR(uint16_t, 8))(0xDDE8L))))).s50))), 0x3B6AL, 0x9083L)).xxwyywwzwwyyxwyw))).s1c + ((VECTOR(uint16_t, 2))(0xC421L))))), ((VECTOR(uint16_t, 2))(1UL))))).yyyyyyyyyxyyxyyy, ((VECTOR(uint16_t, 16))(0xB58CL))))).s6), ((VECTOR(uint32_t, 2))(1UL)), l_452, 1UL, ((VECTOR(uint32_t, 2))(0x9A144EB3L)), 4294967290UL)).s20, ((VECTOR(uint32_t, 2))(0xEFFAAB6FL))))), 18446744073709551615UL, 0x9F880AFE2C6A5E0BL)).lo, ((VECTOR(uint64_t, 2))(0UL))))) | ((VECTOR(uint64_t, 2))(0UL))))).xxyxyyxxyyyxxxxy, ((VECTOR(uint64_t, 16))(7UL)))))))).s2a + ((VECTOR(uint64_t, 2))(1UL))))).yxyyxxyy | ((VECTOR(uint64_t, 8))(0xAD04C6B851FF5F0DL))))), 0xE9CBE9C67E829E37L, p_1262->g_440.s1, 0xA3EBFDBB4E8DAF15L, 0x1EB24FDA752FC2C8L, ((VECTOR(uint64_t, 2))(0x506A090BFB9DA927L)), 0x5B717DFBCF3777CEL, 0x4451D8E2A6DAEB1DL)), ((VECTOR(uint64_t, 16))(18446744073709551614UL))))).s06, ((VECTOR(uint64_t, 2))(0UL)), ((VECTOR(uint64_t, 2))(0xAD77C4FEF02BC8DEL))))).xyxx + ((VECTOR(uint64_t, 4))(0x778F308D577884ACL))))).z, 18446744073709551612UL, ((VECTOR(uint64_t, 4))(0xB39A8504BD5C5098L)), 1UL, 4UL)).s1352331420722603, ((VECTOR(uint64_t, 16))(0x2A204C592010763FL))))).lo | ((VECTOR(uint64_t, 8))(18446744073709551611UL))))).s3 > l_419.y) && p_58) < 0x33CCL), 0x3CL)) <= 8UL)) ^ 0x42DD38DEFA6D99CBL), l_386.s7)) <= GROUP_DIVERGE(0, 1))), 0L, p_60, (-1L), l_369[0][7], p_58, (-5L), 0x323673B6L)).s06)))))).yxyxyxxx))).s4 | 0x4021798CL);
            if ((safe_sub_func_int64_t_s_s((5L == ((p_1262->g_261 = (+(-2L))) > ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(1UL, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(0xBC84A8FF0D8EE929L, ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(l_484.sd70d)) ^ ((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(l_485.sf6)).xyxxxxyxyyyyyxxy ^ ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(l_486.sfbe3afb8c85cb003)).s27b8 && ((VECTOR(int32_t, 2))(0x5A3D8559L, 3L)).xyxx))).even && ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_487.yyxxyyxyyyxyyxyx)).s92, ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(0x6855E92BL, ((VECTOR(int32_t, 2))((~((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 16))(p_1262->g_488.yyxyxyyxxyxxyxxx)), ((VECTOR(int32_t, 4))(l_489.s4722)).xwxxwwxzwyxwywwy))) ^ ((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_490.yy)), 1L, 8L)).zzzxxxxxxwyzzywz, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(p_1262->g_491.xy)), ((VECTOR(int32_t, 8))(p_1262->g_492.s455e5eff)).s30))).yyyxyxyxyxxxxxyx)))))).s99))), (-1L))).xyzwzyww))).s0656470573555133, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(0x72CEDA15L, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_493.xyyyyxyx)).hi && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_494.yyzy)), ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 2))(0x6A2AC250L, 0x6D5C908CL)).xxyyyxyx, ((VECTOR(int32_t, 16))(l_495.xyyyyxyyxxxyyyxy)).odd))).odd, ((VECTOR(int32_t, 2))(1L, 0x51B0D8ECL)).xyxy))))).s44))).xxxxyyxyxxyyyxxx && ((VECTOR(int32_t, 4))(l_496.yyyx)).zyxwzwyxwyzxxywz))).s7a90))).even > ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((safe_mul_func_uint8_t_u_u((((((safe_mul_func_int16_t_s_s((l_495.x > p_60), ((&p_59 == &p_1262->g_213) == ((p_1262->g_79.x = ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 16))(0x6CAB5059050B0422L, 0x7B80693F713122B8L, 0x2B9A82DE8E09D254L, ((safe_sub_func_uint16_t_u_u((l_467 &= ((safe_mod_func_uint64_t_u_u((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(p_1262->g_509.xxyxxyxy)).s06 + ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 16))((p_60 , (safe_rshift_func_uint8_t_u_s(((void*)0 == &p_1262->g_171), p_1262->g_391.s5))), 0x2552297DL, ((VECTOR(uint32_t, 8))(0UL)), l_419.w, 1UL, l_342.s0, 0xD53A53AFL, 0xFE3251A9L, 4294967286UL)).odd, ((VECTOR(uint32_t, 8))(0UL))))).hi))).wywxwwyx + ((VECTOR(uint64_t, 8))(0xD7B3FAEF98773F74L))))).s55))).hi , l_484.s9), p_62)) || p_58)), 0x8CCEL)) == (-10L)), 6L, 0x5CF5D54B680A2508L, 0x4E1930AB9D75E16DL, ((VECTOR(int64_t, 4))(0x7CEBD42A0296D7E4L)), 0x7F1E3C5FF8E88032L, 0x4F7AE74353DB959AL, p_60, 3L, 5L)), ((VECTOR(int64_t, 16))(0x2D524DE3EECF7A15L)), ((VECTOR(int64_t, 16))(0x0F6E1B43BD7CD793L))))).odd && ((VECTOR(int64_t, 8))((-1L)))))) > ((VECTOR(int64_t, 8))(0x3DC688BD7B905F5EL))))).s5) != 0L)))) >= l_426.z) ^ p_1262->g_177) | p_62) , l_452), l_357)), ((VECTOR(int32_t, 2))(0x30EBEF4FL)), 0x62E1FA35L)).hi && ((VECTOR(int32_t, 2))((-1L)))))), 0x4953AD18L, 6L)).xxwzzxzz, ((VECTOR(int32_t, 8))(0x123B36E4L))))).s67))) >= ((VECTOR(int32_t, 2))(7L))))), 0x41EEEAB2L)).odd & ((VECTOR(int32_t, 2))(0x09BA3C34L))))).yyxx, ((VECTOR(int32_t, 4))(0L))))) && ((VECTOR(int32_t, 4))(0L))))).wwzwyzyyyyyxyzzz))).s92, ((VECTOR(int32_t, 2))(9L)))))))).xyyxyyyyxxxxyxyx))) < ((VECTOR(int32_t, 16))(0x7BF5BA8CL)))))))), ((VECTOR(uint32_t, 16))(4294967295UL))))).sa1bd)))))) + ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).xxzwwxwz, (uint64_t)l_325))) + ((VECTOR(uint64_t, 8))(0xBE9E815057B03C9AL))))).even, ((VECTOR(uint64_t, 4))(1UL)), ((VECTOR(uint64_t, 4))(4UL))))).xzwxxxxx))) + ((VECTOR(uint64_t, 8))(0x21FEF71C7BBE912FL))))).s2, 0UL, 1UL, 0xA42F33D47361511FL)).yxyywxxw, ((VECTOR(uint64_t, 8))(0x2588F8D0C9F737CCL))))).s04))), 0x7DBA68786671C865L)) + ((VECTOR(uint64_t, 4))(0xDC5C98F52B23430CL))))), ((VECTOR(uint64_t, 2))(0x62B4E7914ECA7F1FL)), 6UL)).s6355624252264353 * ((VECTOR(uint64_t, 16))(0x0080DD95200551D2L))))).even + ((VECTOR(uint64_t, 8))(18446744073709551613UL))))).s2)), l_462.s7)))
            { /* block id: 143 */
                uint32_t *l_520 = &l_404;
                uint32_t **l_519 = &l_520;
                uint32_t l_521 = 1UL;
                int32_t *l_524 = &l_357;
                int32_t *l_525 = &l_354;
                int32_t *l_526[3];
                uint8_t l_528 = 0x35L;
                int i;
                for (i = 0; i < 3; i++)
                    l_526[i] = &l_355;
                l_521 = (p_61 , (((*l_519) = &p_1262->g_253) == &l_404));
                for (p_1262->g_179 = 0; (p_1262->g_179 <= 5); p_1262->g_179 = safe_add_func_uint16_t_u_u(p_1262->g_179, 9))
                { /* block id: 148 */
                    return p_1262->g_297[3][1][1];
                }
                l_528++;
            }
            else
            { /* block id: 152 */
                int32_t *l_531 = &p_1262->g_168[1];
                (*p_1262->g_532) = ((*p_1262->g_170) = (p_1262->g_287.s6 , l_531));
                (*p_1262->g_170) = &l_467;
                if ((**p_1262->g_170))
                    break;
                (*p_1262->g_171) ^= (((p_1262->g_534 != ((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_537.s1bff)), 0L, (l_462.s7 <= 0x5AL), 0x3119L, 2L)).s21 && ((VECTOR(int16_t, 4))((-1L), ((0x48L && ((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 2))(0x7BL, 0x57L)).xxyyyyxyyxxyxxyy, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))(l_538.s7703)), ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))(l_539.s62)).xxxy, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(l_540.xzwx)).lo ^ ((VECTOR(int8_t, 16))(0x4CL, 7L, (-3L), 0x04L, ((VECTOR(int8_t, 8))(p_1262->g_541.zxxxzwxx)), ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(0x77L, 0x21L)), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((0x2A8C8ED6L | (((l_386.s2 ^ 6UL) & ((safe_mod_func_uint32_t_u_u(((safe_mod_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u((p_62 != (((VECTOR(int64_t, 8))((((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(0L, 0x09L)).yyxy, ((VECTOR(int8_t, 4))(0x21L, p_58, 0x48L, 4L)), ((VECTOR(int8_t, 4))(0x4CL))))), ((VECTOR(int8_t, 4))(0L))))).y ^ l_495.x), (-8L), (-1L), 1L, ((VECTOR(int64_t, 2))(0x3922299CACBBA9CBL)), 0x366C5BFD4BDF5021L, 0x76F7029DE197F4FBL)).s0 , l_548)), 65535UL)), 0x3C0EL)) >= p_62), (*l_531))) & 0x06L)) , p_58)), (-2L), 0x39L, 0x79L)), 0x12L, ((VECTOR(int8_t, 4))(0x0DL)), ((VECTOR(int8_t, 4))(1L)), ((VECTOR(int8_t, 2))(0x4EL)), 1L)), ((VECTOR(int8_t, 16))((-1L)))))).s4133, ((VECTOR(int8_t, 4))(0x36L)), ((VECTOR(int8_t, 4))(8L))))).lo > ((VECTOR(int8_t, 2))(0x05L)))))))), (-1L), (-1L))).s5b))).yxyx)))))).even, ((VECTOR(int8_t, 2))(0L))))).xyyx && ((VECTOR(int8_t, 4))(0x36L))))).yxxxzwzxywwzyzyx))).s5) | p_1262->g_491.y), 0L, 0L)).even))).xxxy, ((VECTOR(int16_t, 4))((-5L)))))).x, p_62)) , p_1262->g_534)) , (void*)0) == (void*)0);
            }
            l_555++;
        }
        l_354 &= ((*p_1262->g_533) = (-1L));
        if (l_555)
            goto lbl_558;
        (*p_1262->g_533) ^= ((p_58 == ((l_552 |= ((l_554[0][2][1] = (safe_mul_func_uint8_t_u_u((((l_333 <= ((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(0x67L, 0xFAL)) * ((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(l_563.s20)).xxyy, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(l_564.s25)) & ((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 4))(l_565.wxwy)).yyxywyww, ((VECTOR(uint8_t, 4))(l_566.wwzw)).wwxzxwww))).s62))).yxyyyyyy | ((VECTOR(uint8_t, 2))(1UL, 255UL)).yyxyxyxy))).lo))).lo))).lo, ((VECTOR(uint8_t, 4))((+((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(p_1262->g_569.s6140)).hi | ((VECTOR(uint8_t, 8))(abs(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(l_570.s4317434645167623)) >= ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(p_1262->g_571.s0d)).yyyxyyyyxxyyyyxx == ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 4))(l_572.sa2c0)).yxzxxwxy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_1262->g_573.s2611)), ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 16))(l_574.s2356556631075610)).s0b, ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(((l_575 = &p_1262->g_301) != (void*)0), (-2L), 0x60L, 0x7BL)).hi, ((VECTOR(int8_t, 2))(l_576.s17))))).xyyxxxxxyxxyxxxx, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(0x74L, l_451.z, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(p_1262->g_577.s3437)).odd && ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))((-6L), (-1L))), ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(l_578.xxywxxwx)).hi <= ((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 8))(p_1262->g_579.s35406500)).lo, ((VECTOR(int8_t, 16))(l_580.s2264405470536260)).s319a)))))).lo)))))), 0L, 0x75L, 0x52L, 0x45L)), ((VECTOR(int8_t, 2))(6L, 1L)), ((VECTOR(int8_t, 4))(p_61, ((VECTOR(int8_t, 2))(0x50L, (-6L))), 0L)), 0x03L, (-6L)))))).even, ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(l_581.yyyyyxxy)).s4062267310762321 && ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(l_582.xxxy)).wxyyxzzwwxwxwwyz && ((VECTOR(int8_t, 8))(l_583.s55547535)).s2002267727206330)))))).sc4 < ((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 2))((-1L), 0x0AL)).xyyyxxxxyyxyxyyy, ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(l_584.s3732)).z, (l_584.s6 | ((safe_lshift_func_uint8_t_u_u((((GROUP_DIVERGE(2, 1) > l_583.s1) , (safe_add_func_uint64_t_u_u((l_463.y != l_589), p_58))) , 0x09L), l_427.x)) , p_58)), (-1L), 0x31L)), (int8_t)4L, (int8_t)p_61))).yxyzwxzxzywzzywx))).sf5))).yyxx, (int8_t)0x01L))).ywwwwyyyzzwyxxyw < ((VECTOR(int8_t, 16))(1L))))).sf96e, ((VECTOR(int8_t, 4))((-8L))), ((VECTOR(int8_t, 4))(1L))))).yyzxyxzz))).s67))), (-1L), (-3L))), ((VECTOR(int8_t, 8))((-8L)))))).s6175144521654204)))))).sb9, ((VECTOR(int8_t, 2))(0x79L))))).yyyxyyxy))).s02))).yyyy + ((VECTOR(uint8_t, 4))(0x90L))))).hi, ((VECTOR(uint8_t, 2))(246UL))))), 1UL, 0x95L, ((VECTOR(uint8_t, 2))(0xCFL)), 0x23L, 0xBBL)).hi))), 249UL, ((VECTOR(uint8_t, 4))(0xFFL)), 0xF9L, 0x38L, 0xE9L, 0UL, 0x98L, 0x7FL)).lo, ((VECTOR(uint8_t, 8))(0UL))))).s42 ^ ((VECTOR(uint8_t, 2))(0xF6L))))), 0x57L, 0x63L)).xwxxxwzxwzzwwyyy, ((VECTOR(uint8_t, 16))(0xC3L))))).s8) , p_60) || l_583.s3), (-1L)))) , l_583.s1)) , p_1262->g_13.x)) > 65535UL);
    }
    if (l_581.y)
    { /* block id: 169 */
        uint16_t l_613 = 0x8DC5L;
        int32_t l_623[4];
        int i;
        for (i = 0; i < 4; i++)
            l_623[i] = 0x2A9E6782L;
        for (p_62 = 28; (p_62 >= 18); p_62--)
        { /* block id: 172 */
            int32_t ***l_616 = &p_1262->g_170;
            int32_t l_637 = (-8L);
            VECTOR(int32_t, 2) l_640 = (VECTOR(int32_t, 2))(0x52A246B6L, (-1L));
            int32_t l_641 = 0L;
            uint32_t l_642 = 1UL;
            int32_t l_666 = 2L;
            int i;
            (*p_1262->g_594) = p_1262->g_593;
            l_595 = (*p_1262->g_532);
            for (l_355 = (-14); (l_355 <= (-13)); l_355 = safe_add_func_uint32_t_u_u(l_355, 9))
            { /* block id: 177 */
                volatile int32_t **l_599 = &p_1262->g_598[6];
                VECTOR(int8_t, 2) l_604 = (VECTOR(int8_t, 2))((-5L), 0x02L);
                uint8_t *l_621 = (void*)0;
                int32_t l_622 = 0x294415D7L;
                uint8_t *l_624 = (void*)0;
                uint8_t *l_625 = (void*)0;
                uint8_t *l_626 = (void*)0;
                uint8_t *l_627 = (void*)0;
                uint8_t *l_628 = (void*)0;
                uint8_t *l_629 = (void*)0;
                uint8_t *l_630 = (void*)0;
                uint8_t *l_631 = (void*)0;
                uint8_t *l_632 = (void*)0;
                uint8_t *l_633 = (void*)0;
                uint8_t *l_634[6][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                int32_t l_635 = 1L;
                int32_t l_636 = (-10L);
                int32_t l_638 = 0x72E2D64FL;
                VECTOR(int32_t, 16) l_639 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-4L)), (-4L)), (-4L), 0L, (-4L), (VECTOR(int32_t, 2))(0L, (-4L)), (VECTOR(int32_t, 2))(0L, (-4L)), 0L, (-4L), 0L, (-4L));
                int64_t **l_647 = &p_1262->g_227;
                uint64_t l_667 = 0x0BD34D7BBE1A70D0L;
                int i, j;
                if (p_58)
                    break;
                (*l_599) = p_1262->g_598[6];
                if ((safe_sub_func_uint8_t_u_u(((((safe_rshift_func_int16_t_s_s((FAKE_DIVERGE(p_1262->global_0_offset, get_global_id(0), 10) != (~(~((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(4L, 0x7DL)).hi, 0x4EL, 0x04L, ((**l_599) > 1L), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))(l_604.xy)), ((VECTOR(int8_t, 8))(p_1262->g_605.xzyzzwxz)).s30))), 0x14L, 0x18L)), ((VECTOR(int8_t, 8))(l_606.yxxxxyyy)))).even, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))((!((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(0x0FL, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))((safe_add_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(((((VECTOR(int16_t, 2))((-1L), 0x0891L)).hi > l_613) <= ((l_614 == (((safe_unary_minus_func_uint16_t_u(p_62)) >= ((l_616 == &p_1262->g_532) >= ((VECTOR(uint16_t, 4))(p_1262->g_617.xyxx)).w)) , l_618[2])) & (safe_add_func_uint8_t_u_u((l_642++), (safe_add_func_int64_t_s_s((((*l_647) = &p_1262->g_261) == (void*)0), l_639.sf)))))), l_648)), p_60)) , 65529UL) , l_623[2]), l_639.se)), p_61, ((VECTOR(int8_t, 2))(0L)), ((VECTOR(int8_t, 4))(8L)))), ((VECTOR(int8_t, 8))(0x71L))))).s35 && ((VECTOR(int8_t, 2))(0x20L))))), 0L, ((VECTOR(int8_t, 8))(0x63L)), ((VECTOR(int8_t, 4))(9L)))).s25 && ((VECTOR(int8_t, 2))(0x74L))))).xxxxxyxyyxxxxxxy))).s4c, ((VECTOR(int8_t, 2))(0x7FL))))), 3L, 0L)).wyxxywwz))).s16 | ((VECTOR(int8_t, 2))(0x1FL))))).even))), 7)) & p_58) || (-7L)) == 0x41EDL), p_1262->g_230.s7)))
                { /* block id: 182 */
                    uint32_t l_665 = 0x114194FEL;
                    for (p_1262->g_258 = 20; (p_1262->g_258 != 12); p_1262->g_258 = safe_sub_func_int8_t_s_s(p_1262->g_258, 2))
                    { /* block id: 185 */
                        uint16_t *l_658 = (void*)0;
                        uint16_t *l_659 = &l_613;
                        int32_t l_662[6] = {0x4EBD0719L,0x4EBD0719L,0x4EBD0719L,0x4EBD0719L,0x4EBD0719L,0x4EBD0719L};
                        int32_t ***l_663[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_663[i] = &p_1262->g_170;
                        l_666 |= ((((((p_1262->g_446.s5 > ((*l_595) & ((safe_add_func_uint16_t_u_u(((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(p_1262->g_655.sf5386b96)).s4, (p_1262->g_443.w &= (((safe_rshift_func_uint16_t_u_s((((*l_659) = 1UL) , (~((safe_mod_func_uint8_t_u_u(l_623[3], l_662[5])) , (&p_1262->g_532 != l_663[2])))), (p_1262->g_664 > ((0xE715616CL && (*p_1262->g_593)) ^ 0x55C4L)))) ^ p_62) , 65530UL)))) , l_613), 6UL)) , 4294967290UL))) ^ l_665) < l_623[2]) >= p_58) <= (*l_595)) == p_62);
                        l_667++;
                        (**l_599) |= p_61;
                        (*p_1262->g_533) |= 0x6F1B21F8L;
                    }
                }
                else
                { /* block id: 193 */
                    return p_59;
                }
            }
        }
        (*p_1262->g_170) = &l_554[0][0][2];
    }
    else
    { /* block id: 199 */
        VECTOR(uint16_t, 8) l_691 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xACB6L), 0xACB6L), 0xACB6L, 1UL, 0xACB6L);
        VECTOR(int32_t, 16) l_693 = (VECTOR(int32_t, 16))(0x4D88B42FL, (VECTOR(int32_t, 4))(0x4D88B42FL, (VECTOR(int32_t, 2))(0x4D88B42FL, 0x7E732EA7L), 0x7E732EA7L), 0x7E732EA7L, 0x4D88B42FL, 0x7E732EA7L, (VECTOR(int32_t, 2))(0x4D88B42FL, 0x7E732EA7L), (VECTOR(int32_t, 2))(0x4D88B42FL, 0x7E732EA7L), 0x4D88B42FL, 0x7E732EA7L, 0x4D88B42FL, 0x7E732EA7L);
        int64_t l_757[3][1][10] = {{{0L,1L,(-1L),1L,1L,1L,(-1L),1L,0L,0L}},{{0L,1L,(-1L),1L,1L,1L,(-1L),1L,0L,0L}},{{0L,1L,(-1L),1L,1L,1L,(-1L),1L,0L,0L}}};
        uint8_t *l_767 = (void*)0;
        VECTOR(int8_t, 4) l_816 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x6CL), 0x6CL);
        VECTOR(int8_t, 8) l_817 = (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x3FL), 0x3FL), 0x3FL, 6L, 0x3FL);
        VECTOR(int32_t, 2) l_821 = (VECTOR(int32_t, 2))((-7L), 0L);
        uint64_t l_845 = 9UL;
        int i, j, k;
        for (l_553 = (-13); (l_553 == 7); l_553++)
        { /* block id: 202 */
            VECTOR(int16_t, 4) l_682 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x2EE2L), 0x2EE2L);
            uint8_t *l_715 = (void*)0;
            uint8_t *l_716 = (void*)0;
            uint8_t *l_717 = (void*)0;
            uint8_t *l_718 = (void*)0;
            uint8_t *l_719 = (void*)0;
            uint8_t *l_720 = (void*)0;
            int32_t l_721 = (-1L);
            uint64_t l_722[10][3][1] = {{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}}};
            uint32_t *l_725[9][7][3] = {{{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253}},{{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253},{&p_1262->g_253,&p_1262->g_253,&p_1262->g_253}}};
            uint32_t **l_724 = &l_725[3][5][1];
            uint32_t ***l_723 = &l_724;
            int32_t l_733 = 0x5A7328C4L;
            int16_t l_742 = 0L;
            int32_t l_743 = 0x348A7AE0L;
            int32_t l_744 = 0L;
            int32_t l_745 = 0x4C199243L;
            int32_t l_746 = 0x152EDC50L;
            int32_t l_747 = 0x49DD6CE7L;
            int32_t l_748[3];
            uint32_t l_787[6][3][3] = {{{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL}},{{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL}},{{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL}},{{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL}},{{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL}},{{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL},{0xEFDC745CL,0xEFDC745CL,0xEFDC745CL}}};
            int16_t *l_791[2][1];
            int16_t **l_790 = &l_791[1][0];
            int16_t l_799 = 7L;
            uint32_t l_800 = 0x0E3F3F44L;
            VECTOR(int32_t, 4) l_801 = (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 3L), 3L);
            VECTOR(uint64_t, 8) l_839 = (VECTOR(uint64_t, 8))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0x6375B707773A1621L), 0x6375B707773A1621L), 0x6375B707773A1621L, 18446744073709551613UL, 0x6375B707773A1621L);
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_748[i] = (-3L);
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 1; j++)
                    l_791[i][j] = (void*)0;
            }
            if ((safe_mul_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(p_60, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(65535UL, 7UL)) >> ((VECTOR(uint16_t, 2))(16))))).xxyy | ((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 16))(l_682.zzyywyxzywwxzwww)).hi))) + ((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(((p_1262->g_492.s2 , (-7L)) , (((((((((l_693.s0 = ((*p_1262->g_533) | ((safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s((((VECTOR(uint8_t, 4))(p_1262->g_689.s3353)).w , (((VECTOR(int16_t, 8))(l_690.wxwyxxww)).s4 > (~((VECTOR(uint16_t, 8))(l_691.s76651135)).s1))), ((VECTOR(int16_t, 4))(p_1262->g_692.xzwy)).x)), p_61)) == l_691.s2))) , (p_1262->g_301 = (void*)0)) != &l_648) == (safe_mul_func_int16_t_s_s(((safe_sub_func_uint8_t_u_u((!(((*l_723) = (((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))((!((VECTOR(int64_t, 4))((!((VECTOR(int64_t, 8))(l_698.s14e4718f)).lo)))))).odd > ((VECTOR(int64_t, 8))(p_1262->g_699.s23777343)).s61))).xyyxyyyyyxxxxxxy, ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(p_1262->g_700.xxyxyxxyxxxxyxyy)) | ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 16))(l_701.xxwwxwyxzwzxwwxz)).hi, ((VECTOR(int64_t, 16))(p_1262->g_702.yxxxyxxxyyxyyxyy)).odd))).s3005176555740134, ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 4))((((safe_sub_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((safe_sub_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((l_721 = ((safe_mul_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((((-4L) > FAKE_DIVERGE(p_1262->local_0_offset, get_local_id(0), 10)) ^ l_682.w), FAKE_DIVERGE(p_1262->group_0_offset, get_group_id(0), 10))), 0xFA89L)) && l_682.w)) != p_58), l_722[1][0][0])), FAKE_DIVERGE(p_1262->group_1_offset, get_group_id(1), 10))) || p_62), (**p_1262->g_532))), l_682.x)) , (-2L)) || 0x6535A75CL), l_722[0][1][0], 3L, 4L)).lo, ((VECTOR(int64_t, 2))((-1L)))))).xxxy | ((VECTOR(int64_t, 4))(0x4490784E8718A14FL))))).xzzxxzxy < ((VECTOR(int64_t, 8))(0x5E1C63D47A6ABF00L))))), ((VECTOR(int64_t, 8))((-1L)))))).s1261664004703745))).lo >= ((VECTOR(int64_t, 8))((-9L)))))).s5420455775114360)))))).sb , (void*)0)) == (void*)0)), 255UL)) && (**p_1262->g_532)), 0x3120L))) & p_61) <= 0x6F883C20BA3ABBE5L) < 0UL) , p_1262->g_726) || l_721)), 0x2277L, 0xB150L, 65528UL)) << ((VECTOR(uint16_t, 4))(0x3EE8L))))).xwzzxzxzxzzyyxwy))).even))), ((VECTOR(uint16_t, 8))(65531UL))))).odd & ((VECTOR(uint16_t, 4))(65529UL))))).wxxywyzw + ((VECTOR(uint16_t, 8))(65535UL))))).s2477162040135376, ((VECTOR(uint16_t, 16))(65533UL))))).s18f2))) | ((VECTOR(uint16_t, 4))(65527UL))))).y)) >= l_691.s3), (-4L))))
            { /* block id: 207 */
                uint8_t l_729 = 0x5DL;
                uint32_t ***l_732 = (void*)0;
                int32_t l_734[1][4] = {{0x2F36245CL,0x2F36245CL,0x2F36245CL,0x2F36245CL}};
                int32_t *l_735 = &p_1262->g_168[0];
                int32_t *l_736 = (void*)0;
                int32_t *l_737 = (void*)0;
                int32_t *l_738 = &p_1262->g_168[8];
                int32_t *l_739 = &l_733;
                int32_t *l_740 = &l_734[0][0];
                int32_t *l_741[1][9][5] = {{{&l_355,&l_355,&l_721,&l_734[0][1],(void*)0},{&l_355,&l_355,&l_721,&l_734[0][1],(void*)0},{&l_355,&l_355,&l_721,&l_734[0][1],(void*)0},{&l_355,&l_355,&l_721,&l_734[0][1],(void*)0},{&l_355,&l_355,&l_721,&l_734[0][1],(void*)0},{&l_355,&l_355,&l_721,&l_734[0][1],(void*)0},{&l_355,&l_355,&l_721,&l_734[0][1],(void*)0},{&l_355,&l_355,&l_721,&l_734[0][1],(void*)0},{&l_355,&l_355,&l_721,&l_734[0][1],(void*)0}}};
                int8_t l_749 = 0L;
                int i, j, k;
                (*p_1262->g_533) |= ((safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1262->group_1_offset, get_group_id(1), 10) | (~(l_729++))), ((void*)0 != l_732))) , l_733);
                l_750++;
                for (p_1262->g_253 = 0; (p_1262->g_253 <= 26); p_1262->g_253++)
                { /* block id: 213 */
                    int32_t l_755[2];
                    int32_t l_756 = 5L;
                    int32_t l_759 = (-9L);
                    uint8_t l_760 = 0xFFL;
                    int32_t l_763[2][2][7] = {{{(-6L),0x5A5231A5L,(-6L),(-6L),0x5A5231A5L,(-6L),(-6L)},{(-6L),0x5A5231A5L,(-6L),(-6L),0x5A5231A5L,(-6L),(-6L)}},{{(-6L),0x5A5231A5L,(-6L),(-6L),0x5A5231A5L,(-6L),(-6L)},{(-6L),0x5A5231A5L,(-6L),(-6L),0x5A5231A5L,(-6L),(-6L)}}};
                    uint8_t l_764 = 0x20L;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_755[i] = (-5L);
                    l_760--;
                    ++l_764;
                    return l_767;
                }
            }
            else
            { /* block id: 218 */
                VECTOR(uint8_t, 16) l_771 = (VECTOR(uint8_t, 16))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 7UL), 7UL), 7UL, 253UL, 7UL, (VECTOR(uint8_t, 2))(253UL, 7UL), (VECTOR(uint8_t, 2))(253UL, 7UL), 253UL, 7UL, 253UL, 7UL);
                int32_t *l_772 = &l_733;
                int32_t *l_773 = (void*)0;
                int32_t *l_774 = &p_1262->g_168[0];
                int32_t *l_775 = &l_355;
                int32_t *l_776 = &p_1262->g_168[1];
                int32_t *l_777 = &l_745;
                int32_t *l_778 = &p_1262->g_168[0];
                int32_t *l_779 = (void*)0;
                int32_t *l_780 = &l_745;
                int32_t *l_781 = (void*)0;
                int32_t *l_782 = &l_747;
                int32_t l_783[5][7] = {{(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)},{(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)},{(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)},{(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)},{(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)}};
                int32_t *l_784 = &l_721;
                int32_t *l_785 = &l_746;
                int32_t *l_786[9][8] = {{(void*)0,(void*)0,&l_733,(void*)0,(void*)0,(void*)0,&l_733,(void*)0},{(void*)0,(void*)0,&l_733,(void*)0,(void*)0,(void*)0,&l_733,(void*)0},{(void*)0,(void*)0,&l_733,(void*)0,(void*)0,(void*)0,&l_733,(void*)0},{(void*)0,(void*)0,&l_733,(void*)0,(void*)0,(void*)0,&l_733,(void*)0},{(void*)0,(void*)0,&l_733,(void*)0,(void*)0,(void*)0,&l_733,(void*)0},{(void*)0,(void*)0,&l_733,(void*)0,(void*)0,(void*)0,&l_733,(void*)0},{(void*)0,(void*)0,&l_733,(void*)0,(void*)0,(void*)0,&l_733,(void*)0},{(void*)0,(void*)0,&l_733,(void*)0,(void*)0,(void*)0,&l_733,(void*)0},{(void*)0,(void*)0,&l_733,(void*)0,(void*)0,(void*)0,&l_733,(void*)0}};
                int i, j;
                (*p_1262->g_533) = (safe_mul_func_uint8_t_u_u(l_770, ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(0x9BL, 250UL)).yyyyxyxy, ((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))(l_771.se8557447ce32cba8)).se8))).xyxxxxyx))).s2));
                ++l_787[4][2][2];
                (**p_1262->g_532) = (l_790 == (p_1262->g_689.s6 , &l_791[0][0]));
            }
            if (p_1262->g_358)
                goto lbl_792;
            if (((safe_mul_func_uint8_t_u_u((safe_div_func_int16_t_s_s((p_1262->g_453.x | (p_62 == p_61)), (((((*l_790) != (void*)0) , ((GROUP_DIVERGE(2, 1) < (safe_lshift_func_int8_t_s_s((p_61 & ((p_58 != l_746) < l_648)), p_1262->g_168[5]))) || l_693.s9)) , p_61) || 0x3724L))), 0x59L)) > l_799))
            { /* block id: 224 */
                (*p_1262->g_593) = ((*p_1262->g_533) = 0x700236B8L);
            }
            else
            { /* block id: 227 */
                uint32_t l_812 = 0UL;
                int32_t l_814 = 0x3DEB1A96L;
                VECTOR(uint8_t, 16) l_820 = (VECTOR(uint8_t, 16))(0x62L, (VECTOR(uint8_t, 4))(0x62L, (VECTOR(uint8_t, 2))(0x62L, 0x8AL), 0x8AL), 0x8AL, 0x62L, 0x8AL, (VECTOR(uint8_t, 2))(0x62L, 0x8AL), (VECTOR(uint8_t, 2))(0x62L, 0x8AL), 0x62L, 0x8AL, 0x62L, 0x8AL);
                uint64_t *l_822 = &p_1262->g_358;
                int64_t *l_842[2][2];
                int32_t *l_846[9][9][3] = {{{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847}},{{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847}},{{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847}},{{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847}},{{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847}},{{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847}},{{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847}},{{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847}},{{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847},{(void*)0,(void*)0,&p_1262->g_847}}};
                int32_t *l_848[5];
                int i, j, k;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_842[i][j] = (void*)0;
                }
                for (i = 0; i < 5; i++)
                    l_848[i] = &l_554[0][1][2];
                if (l_800)
                    break;
                (*p_1262->g_533) = ((((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))(l_801.wxwz)).yzyzywyx, (int32_t)(safe_div_func_uint64_t_u_u(l_693.s0, 0xF366D36CC956893EL))))).s5 || ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(p_1262->g_808.s386b0abb)).lo + ((VECTOR(uint32_t, 4))(p_1262->g_809.zxyz))))), ((p_1262->g_569.s7 >= ((((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))((-6L), (-1L))).yxxxyxxyxyyyxyyx || ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(0L, (-1L))).yxxyyxxy, ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(7L, 0L)), l_812, 1L, ((VECTOR(int8_t, 4))(0x40L, ((0x276EC2CEA7A32686L ^ (((VECTOR(int32_t, 2))(p_1262->g_813.yy)).lo <= (*p_1262->g_533))) > (l_801.y = ((l_814 ^= 0UL) > ((VECTOR(int32_t, 2))((-3L), 0x5502CDCEL)).even))), 1L, 0x07L)))).hi, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))(p_1262->g_815.yyxxxyxx)).s24, ((VECTOR(int8_t, 16))(l_816.xwyzzyxxxxwyywwy)).sde))).xxxx))).xxzzywyw))).s62, ((VECTOR(int8_t, 8))(l_817.s46262077)).s46))).xxxyxyxxxyyyxyyy, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 2))((-6L), 0L)).yyyy, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(p_1262->g_818.sbf)).yxxxxyyxyyxyxxxy != ((VECTOR(int8_t, 8))(0L, (-1L), 0x71L, (((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 4))(p_1262->g_819.s7765)).xywywxyw, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_820.s5594)), ((VECTOR(uint8_t, 2))(6UL, 255UL)), ((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 2))(255UL, 1UL)).xxxx, ((VECTOR(uint8_t, 16))(p_62, (((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(l_821.yxxyyyxxyyxxyyxx)).s0af9, ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))((l_822 == &p_1262->g_258), ((VECTOR(int32_t, 2))(0x665D4244L)), 0x4DB06460L, ((VECTOR(int32_t, 8))(0x50354FAEL)), 0x52CA3925L, 0x59C24D08L, 0x7F36E2CCL, 0L)), ((VECTOR(int32_t, 16))(0L))))).sf806))).x , p_62), 0UL, 0UL, l_817.s3, ((VECTOR(uint8_t, 4))(2UL)), ((VECTOR(uint8_t, 4))(0xC8L)), 0x6CL, 0x44L, 247UL)).sbb66, ((VECTOR(uint8_t, 4))(0x2DL))))), 0xC0L, 0xD0L, p_60, 0x44L, 0x67L, 0x7EL)).even))).even, ((VECTOR(uint16_t, 4))(0UL))))).y ^ p_58), ((VECTOR(int8_t, 2))(0x41L)), 0x34L, 0x5BL)).s5265045610517343))).s9738, ((VECTOR(int8_t, 4))(1L))))).hi, ((VECTOR(int8_t, 2))(0x4FL))))).xxxyxxxxyxyxyxxx))).s6e24, ((VECTOR(int8_t, 4))((-1L)))))).yzxzwwxw && ((VECTOR(int8_t, 8))(4L))))).s50, ((VECTOR(int8_t, 2))(0x01L))))).xxyy && ((VECTOR(int8_t, 4))((-10L)))))).wwxxzzyzxyzyxzxw))).s738c && ((VECTOR(int8_t, 4))(0x0DL))))).xyzxzwxz, ((VECTOR(int8_t, 8))(0x1EL)), ((VECTOR(int8_t, 8))((-2L)))))).s5 >= p_58) <= GROUP_DIVERGE(0, 1))) , 3UL), p_1262->g_319.s4, 4294967295UL, 4294967295UL)).s0023675651064154 + ((VECTOR(uint32_t, 16))(6UL))))).se) < l_742);
                l_748[1] &= ((safe_rshift_func_uint8_t_u_u(((((safe_sub_func_uint64_t_u_u((safe_rshift_func_int16_t_s_u((l_814 = (safe_div_func_uint8_t_u_u((l_801.x &= (safe_div_func_uint8_t_u_u(((&l_325 == (void*)0) > 0xF18EL), l_820.s8))), ((VECTOR(int8_t, 16))(p_1262->g_833.zxxxwxxwzxwxxxzy)).s5))), 12)), (safe_rshift_func_int16_t_s_s((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(l_838.sbe3bce27)).s62 + ((VECTOR(uint64_t, 8))(l_839.s26045620)).s62))), 0x3D0BF69CBCD3069AL, 0xF3ACB1BA3727CBCCL)).y != p_1262->g_153), 1)))) ^ ((safe_add_func_uint32_t_u_u((((l_745 = ((VECTOR(int64_t, 2))((-1L), 1L)).odd) , ((p_1262->g_847 = (safe_div_func_int16_t_s_s(l_845, (0L ^ p_1262->g_509.y)))) , 0x679C1F4CL)) >= (*p_1262->g_533)), p_1262->g_440.s4)) != FAKE_DIVERGE(p_1262->group_1_offset, get_group_id(1), 10))) > p_1262->g_230.s0) >= 0x470EL), p_60)) == 4L);
                return p_1262->g_297[6][2][4];
            }
            (*p_1262->g_593) |= (l_747 |= 0x4BE4CAC3L);
        }
    }
    (*p_1262->g_533) = p_58;
    return p_1262->g_213;
}


/* ------------------------------------------ */
/* 
 * reads : p_1262->g_79 p_1262->g_97 p_1262->g_72 p_1262->g_29 p_1262->g_99 p_1262->g_11 p_1262->g_170 p_1262->g_171 p_1262->g_168 p_1262->g_179 p_1262->g_197 p_1262->g_213 p_1262->g_261 p_1262->g_230 p_1262->g_277
 * writes: p_1262->g_147 p_1262->g_177 p_1262->g_179 p_1262->g_168 p_1262->g_99 p_1262->g_153 p_1262->g_171 p_1262->g_230
 */
uint8_t * func_64(int32_t * p_65, uint8_t  p_66, int8_t  p_67, int32_t * p_68, struct S0 * p_1262)
{ /* block id: 31 */
    uint8_t *l_86 = (void*)0;
    uint8_t *l_87 = (void*)0;
    int32_t l_92 = 0x068B84F8L;
    VECTOR(int16_t, 8) l_93 = (VECTOR(int16_t, 8))(0x7A87L, (VECTOR(int16_t, 4))(0x7A87L, (VECTOR(int16_t, 2))(0x7A87L, 1L), 1L), 1L, 0x7A87L, 1L);
    VECTOR(int16_t, 2) l_94 = (VECTOR(int16_t, 2))(0x21D2L, (-1L));
    VECTOR(int16_t, 4) l_95 = (VECTOR(int16_t, 4))(0x6275L, (VECTOR(int16_t, 2))(0x6275L, 1L), 1L);
    VECTOR(int16_t, 16) l_96 = (VECTOR(int16_t, 16))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, (-4L)), (-4L)), (-4L), 9L, (-4L), (VECTOR(int16_t, 2))(9L, (-4L)), (VECTOR(int16_t, 2))(9L, (-4L)), 9L, (-4L), 9L, (-4L));
    int16_t *l_98[5][3];
    int32_t l_100 = 0x1E4501C6L;
    int64_t *l_176 = (void*)0;
    int64_t *l_178 = &p_1262->g_179;
    int32_t *l_188 = &p_1262->g_168[0];
    int32_t l_207[8] = {(-10L),0x3E8E71EEL,(-10L),(-10L),0x3E8E71EEL,(-10L),(-10L),0x3E8E71EEL};
    uint32_t l_304 = 0xED4EA07CL;
    int i, j;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
            l_98[i][j] = &p_1262->g_99;
    }
    (*l_188) = (l_92 = func_75(((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(p_1262->g_79.yxyyxyxy)).lo >= ((VECTOR(int64_t, 16))(((safe_add_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((p_66++), 0L)), 5)), (safe_mod_func_uint16_t_u_u(l_92, (l_100 ^= ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 2))(l_93.s34)).yxxx, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(l_94.yxxx)) && ((VECTOR(int16_t, 16))(l_95.zxzwwzwzxxxywwwz)).s6313))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(l_96.s563cfc51)).s72, ((VECTOR(int16_t, 4))(p_1262->g_97.xyxy)).odd))), 0x6EC4L, 0x7C4FL)))).hi))).y))))) >= ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 8))(func_103(((*l_178) = (l_94.y || (((VECTOR(int64_t, 4))((safe_lshift_func_int8_t_s_u((p_67 != (safe_mul_func_uint16_t_u_u(0x09DFL, (func_112(p_1262->g_79.x, p_1262) ^ ((p_1262->g_177 = (l_93.s3 , (l_176 != (void*)0))) == l_95.y))))), FAKE_DIVERGE(p_1262->group_2_offset, get_group_id(2), 10))), ((VECTOR(int64_t, 2))((-1L))), 7L)).y > 2L))), (*p_1262->g_170), p_1262))).lo, ((VECTOR(uint32_t, 4))(4294967295UL)), ((VECTOR(uint32_t, 4))(0UL))))), ((VECTOR(uint32_t, 4))(0xAF0B7D57L))))).even + ((VECTOR(uint32_t, 2))(0x09790A85L))))).hi), p_66, 7L, 1L, ((VECTOR(int64_t, 4))(0x1409A7C3C3C14CB0L)), (-10L), 0x2F6B5376D6D69B0FL, p_66, l_100, (-1L), l_94.y, 0x6E90E1A3B808F384L, 0x3AD31088CC242C42L)).saf91))).wzyxzwyzyxzzzxww || ((VECTOR(int64_t, 16))(0x0B299F902AB11CDFL))))).sf, l_92)) , l_176), p_1262));
    for (p_1262->g_179 = 0; (p_1262->g_179 <= 13); p_1262->g_179++)
    { /* block id: 63 */
        int64_t l_204 = 0x641E5C071142A211L;
        int32_t l_205 = 0x05EC3D7BL;
        int32_t l_206 = 0x3D68D924L;
        int32_t l_208 = 0L;
        VECTOR(uint16_t, 2) l_222 = (VECTOR(uint16_t, 2))(0x43E1L, 0x4FFCL);
        VECTOR(int32_t, 2) l_244 = (VECTOR(int32_t, 2))(0L, 0x0A506252L);
        int16_t *l_259 = &p_1262->g_147;
        int32_t **l_264 = &l_188;
        int i;
        for (p_1262->g_99 = (-27); (p_1262->g_99 > 21); p_1262->g_99++)
        { /* block id: 66 */
            int32_t l_203 = 2L;
            int32_t l_209 = (-2L);
            int32_t *l_245 = &l_205;
            uint32_t *l_251 = (void*)0;
            uint32_t *l_252 = &p_1262->g_253;
            int16_t *l_260 = (void*)0;
            int32_t *l_262 = (void*)0;
            int32_t *l_263 = &l_203;
            for (p_1262->g_153 = 0; (p_1262->g_153 <= 52); p_1262->g_153++)
            { /* block id: 69 */
                uint8_t l_210 = 0x45L;
                if ((**p_1262->g_170))
                { /* block id: 70 */
                    volatile int16_t **l_200 = &p_1262->g_198[4][0];
                    for (p_67 = 0; (p_67 > (-28)); p_67--)
                    { /* block id: 73 */
                        l_200 = p_1262->g_197[3][3];
                    }
                }
                else
                { /* block id: 76 */
                    int8_t l_201 = 0x72L;
                    int32_t *l_202[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_202[i] = &p_1262->g_168[0];
                    ++l_210;
                    return p_1262->g_213;
                }
                for (l_92 = 0; (l_92 < (-29)); l_92 = safe_sub_func_uint32_t_u_u(l_92, 4))
                { /* block id: 82 */
                    (*p_1262->g_170) = &l_207[0];
                }
            }
            if (l_203)
                break;
            (*l_263) = (safe_mod_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(l_222.xy)).yxxyyyxyxyxyxyyx | ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))((safe_mod_func_int16_t_s_s(((void*)0 == p_1262->g_227), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 16))(p_1262->g_230.s0011547527101267)).s2e03, ((VECTOR(uint16_t, 16))(65532UL, (((safe_add_func_int16_t_s_s((safe_unary_minus_func_int64_t_s((((safe_sub_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(p_1262->g_79.x, l_209)), (p_66 = (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))(l_244.yxxxxxxyyyxyyyxy)), ((VECTOR(int32_t, 16))(0x369338E5L, ((VECTOR(int32_t, 4))(7L, (l_244.y = ((*l_245) = ((*l_188) = (*l_188)))), (-1L), (-1L))), ((VECTOR(int32_t, 8))(p_1262->g_246.s6a75c1b2)), (safe_mul_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_u(((((*l_252) ^= GROUP_DIVERGE(2, 1)) != (safe_sub_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u(1L, 4)) < ((void*)0 == &p_1262->g_170)), p_67))) & (*p_65)), 15)) || p_1262->g_177) > l_222.y), l_244.y)), 0x656E5C89L, 0x4B69C616L))))).lo == ((VECTOR(int32_t, 8))(0x2BD4F305L))))).s3, (*p_68))), p_67)), 8))))) > p_1262->g_258) && (*p_65)))), p_67)) , l_259) == l_260), 0x0A9BL, ((VECTOR(uint16_t, 4))(0UL)), 1UL, 0UL, 2UL, ((VECTOR(uint16_t, 2))(1UL)), 1UL, 1UL, 1UL, 65535UL)).s1df3))) * ((VECTOR(uint16_t, 4))(0x46A6L))))).w)), ((VECTOR(uint16_t, 2))(65526UL)), 65535UL)).xxwzxwwx + ((VECTOR(uint16_t, 8))(0x2EDEL))))).s4150164246505136))).sa6, ((VECTOR(uint16_t, 2))(65530UL))))).yxxxxxyxyxyxxyxy + ((VECTOR(uint16_t, 16))(9UL))))).s8, p_67)) & p_67), p_1262->g_261));
        }
        (*l_264) = ((*p_1262->g_170) = (*p_1262->g_170));
    }
    for (p_67 = (-19); (p_67 < 24); p_67 = safe_add_func_uint32_t_u_u(p_67, 7))
    { /* block id: 99 */
        VECTOR(int8_t, 16) l_267 = (VECTOR(int8_t, 16))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x01L), 0x01L), 0x01L, (-10L), 0x01L, (VECTOR(int8_t, 2))((-10L), 0x01L), (VECTOR(int8_t, 2))((-10L), 0x01L), (-10L), 0x01L, (-10L), 0x01L);
        VECTOR(int8_t, 16) l_268 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
        uint16_t *l_278[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        uint8_t **l_296[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint16_t **l_299 = (void*)0;
        uint16_t **l_300[2];
        VECTOR(int8_t, 4) l_310 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x09L), 0x09L);
        uint32_t *l_311[3][2];
        int32_t l_323 = 0x176E453CL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_300[i] = (void*)0;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_311[i][j] = &l_304;
        }
        if ((((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(l_267.s1a)).xxyy != ((VECTOR(int8_t, 8))(l_268.s2e0e2086)).hi))).y != (l_268.sb >= (((+(safe_sub_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_add_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((*l_188), p_67)), (((p_1262->g_230.s4 &= ((VECTOR(uint16_t, 16))(p_1262->g_277.xyxxxxxyyyxyxxyy)).s4) , (safe_add_func_int32_t_s_s((*p_1262->g_171), (*l_188)))) <= ((safe_mod_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s((((VECTOR(uint64_t, 2))(p_1262->g_287.s01)).odd <= (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),uint64_t,((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 16))((((((p_1262->g_213 != (p_1262->g_298 = (p_1262->g_297[4][0][4] = l_86))) , l_278[3]) != (p_1262->g_301 = l_278[3])) , (void*)0) == (void*)0), 0x3D6CBAA1622A05F7L, 0x8A7D496F539C1A3CL, p_1262->g_147, GROUP_DIVERGE(2, 1), p_1262->g_97.x, 0UL, ((VECTOR(uint64_t, 8))(0UL)), 5UL)).s4f15, ((VECTOR(uint64_t, 4))(3UL))))) + ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).hi, ((VECTOR(uint64_t, 2))(0x0CB8604469D86212L))))).yxxxyxxx + ((VECTOR(uint64_t, 8))(0x0C4B63F0CFF1CAF1L))))).s0252374323201344 >> ((VECTOR(uint64_t, 16))(64))))).s96, (uint64_t)FAKE_DIVERGE(p_1262->group_2_offset, get_group_id(2), 10), (uint64_t)l_268.sd))).even, (*l_188)))), (*l_188))) < p_1262->g_72), p_1262->g_277.x)) > 1UL), p_66)) , 9UL)))), p_1262->g_79.y)), p_1262->g_168[3]))) >= (*l_188)) != 0x6D85L))) <= l_267.s6) >= 1L))
        { /* block id: 104 */
            l_304 ^= ((VECTOR(int32_t, 16))(p_1262->g_303.yxyzywzyzxwzwxyx)).s3;
        }
        else
        { /* block id: 106 */
            int16_t l_314 = (-2L);
            l_323 |= ((!(l_268.s1 == (safe_sub_func_int64_t_s_s((((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(p_1262->g_309.xyyx)).xwzxywyxxwzxzyxz && ((VECTOR(int8_t, 8))(l_310.yxxzwzxy)).s7102452766236144))), (int8_t)(l_311[2][0] == (p_67 , &p_1262->g_253))))).s9, (safe_mod_func_uint32_t_u_u(((l_314 , ((safe_mul_func_int16_t_s_s((l_314 , ((l_314 , (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_1262->g_319.s83b7)), ((VECTOR(uint16_t, 2))(1UL, 0UL)), 65532UL, 0xB84FL)), ((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(p_1262->g_322.xyxz)) | ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(l_268.s3, ((((0UL && p_1262->g_303.z) | (*p_65)) | 0x1BC29E1DL) | p_67), ((VECTOR(uint8_t, 4))(0xCFL)), ((VECTOR(uint8_t, 4))(8UL)), p_67, ((VECTOR(uint8_t, 2))(0x7DL)), 0x40L, 0x78L, 0xD6L)), ((VECTOR(uint8_t, 16))(0x86L))))).sd26a))).hi, (uint8_t)l_314))).yxyy, ((VECTOR(uint8_t, 4))(0UL))))).even + ((VECTOR(uint8_t, 2))(3UL))))).yxxxyyxxxyyyyyyx, ((VECTOR(uint8_t, 16))(255UL))))).even))).s7, 0x69EEL))) >= 7L)), (*l_188))) != p_66)) != FAKE_DIVERGE(p_1262->local_1_offset, get_local_id(1), 10)), (*p_1262->g_171))))) , p_66) == 0x36EF01899CD92F0EL), p_66)))) < p_67);
        }
    }
    return l_87;
}


/* ------------------------------------------ */
/* 
 * reads : p_1262->g_168
 * writes:
 */
int32_t  func_75(uint64_t * p_76, struct S0 * p_1262)
{ /* block id: 56 */
    int8_t l_181 = 0x06L;
    int32_t l_182 = 7L;
    int32_t *l_183 = &p_1262->g_168[8];
    int32_t *l_184[7][1][3] = {{{&p_1262->g_168[1],&p_1262->g_168[1],&p_1262->g_168[1]}},{{&p_1262->g_168[1],&p_1262->g_168[1],&p_1262->g_168[1]}},{{&p_1262->g_168[1],&p_1262->g_168[1],&p_1262->g_168[1]}},{{&p_1262->g_168[1],&p_1262->g_168[1],&p_1262->g_168[1]}},{{&p_1262->g_168[1],&p_1262->g_168[1],&p_1262->g_168[1]}},{{&p_1262->g_168[1],&p_1262->g_168[1],&p_1262->g_168[1]}},{{&p_1262->g_168[1],&p_1262->g_168[1],&p_1262->g_168[1]}}};
    uint32_t l_185[5] = {0UL,0UL,0UL,0UL,0UL};
    int i, j, k;
    ++l_185[3];
    return (*l_183);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
VECTOR(uint32_t, 8)  func_103(int64_t  p_104, int32_t * p_105, struct S0 * p_1262)
{ /* block id: 54 */
    VECTOR(uint32_t, 4) l_180 = (VECTOR(uint32_t, 4))(0x0B172291L, (VECTOR(uint32_t, 2))(0x0B172291L, 0x732750AFL), 0x732750AFL);
    int i;
    return l_180.wzyzzwww;
}


/* ------------------------------------------ */
/* 
 * reads : p_1262->g_72 p_1262->g_29 p_1262->g_99 p_1262->g_11 p_1262->g_79 p_1262->g_170 p_1262->g_171
 * writes: p_1262->g_147
 */
int32_t  func_112(int16_t  p_113, struct S0 * p_1262)
{ /* block id: 34 */
    VECTOR(uint8_t, 2) l_120 = (VECTOR(uint8_t, 2))(0x54L, 0UL);
    VECTOR(uint8_t, 2) l_121 = (VECTOR(uint8_t, 2))(0UL, 0x63L);
    VECTOR(uint8_t, 4) l_124 = (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 255UL), 255UL);
    uint8_t *l_129 = (void*)0;
    uint8_t *l_130 = (void*)0;
    uint8_t *l_131 = (void*)0;
    uint8_t *l_132[7][9][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_133 = 8L;
    int32_t l_134 = 0x79A04B77L;
    VECTOR(uint8_t, 16) l_135 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
    VECTOR(uint8_t, 2) l_136 = (VECTOR(uint8_t, 2))(255UL, 1UL);
    VECTOR(uint8_t, 2) l_137 = (VECTOR(uint8_t, 2))(0xECL, 0x54L);
    VECTOR(uint8_t, 8) l_138 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xD3L), 0xD3L), 0xD3L, 1UL, 0xD3L);
    VECTOR(uint8_t, 16) l_141 = (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0xCCL), 0xCCL), 0xCCL, 4UL, 0xCCL, (VECTOR(uint8_t, 2))(4UL, 0xCCL), (VECTOR(uint8_t, 2))(4UL, 0xCCL), 4UL, 0xCCL, 4UL, 0xCCL);
    VECTOR(uint8_t, 16) l_144 = (VECTOR(uint8_t, 16))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0x4EL), 0x4EL), 0x4EL, 9UL, 0x4EL, (VECTOR(uint8_t, 2))(9UL, 0x4EL), (VECTOR(uint8_t, 2))(9UL, 0x4EL), 9UL, 0x4EL, 9UL, 0x4EL);
    int64_t *l_145[7][1];
    int32_t l_146 = 0x5D89A0F2L;
    uint64_t *l_152 = &p_1262->g_153;
    int32_t *l_175 = &l_134;
    int i, j, k;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
            l_145[i][j] = (void*)0;
    }
    (*l_175) = func_114((((((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 8))(l_120.yxxyyyxy)).s14, ((VECTOR(uint8_t, 2))(l_121.yy)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(l_124.zyyzzzxw)).odd + ((VECTOR(uint8_t, 8))(p_1262->g_72, ((VECTOR(uint8_t, 4))(p_113, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 2))(0UL, 0x22L)).yyxx, ((VECTOR(uint8_t, 2))(1UL, 254UL)).xyxx))).ywzzxyyxzwyzyzwx, (uint8_t)(l_134 |= (l_133 = 0x09L))))).s8e, ((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(l_135.sba)).xxxyyyyx, ((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 2))(l_136.yx)).yyyxxyyy)))))).s77, ((VECTOR(uint8_t, 16))(l_137.xxyyyxyyxxxxyyyy)).s6c))) + ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(l_138.s51)).xyxyxyyx, (uint8_t)((safe_lshift_func_int8_t_s_s(p_1262->g_29.w, p_1262->g_99)) & p_113)))).lo, ((VECTOR(uint8_t, 4))(l_141.s10bf))))), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))(0xF8L, GROUP_DIVERGE(1, 1), ((VECTOR(uint8_t, 4))(l_144.s65d6)), ((VECTOR(uint8_t, 8))(2UL, ((FAKE_DIVERGE(p_1262->global_1_offset, get_global_id(1), 10) , (p_1262->g_147 = (l_146 &= p_113))) , ((0UL | (((safe_add_func_int64_t_s_s(((((safe_rshift_func_int8_t_s_s((((p_1262->g_29.w <= FAKE_DIVERGE(p_1262->local_2_offset, get_local_id(2), 10)) == p_1262->g_11[6][4]) == p_1262->g_79.x), 7)) >= 0L) > p_1262->g_79.y) ^ (-7L)), (-8L))) == p_113) == GROUP_DIVERGE(0, 1))) <= l_124.w)), 0x48L, 0x85L, 0x8BL, GROUP_DIVERGE(1, 1), 0xC1L, 0UL)), 0x2DL, 0xCEL)).s19, ((VECTOR(uint8_t, 2))(0x1DL)), ((VECTOR(uint8_t, 2))(0UL))))).yyxxyxyxyxxyyxyy + ((VECTOR(uint8_t, 16))(0x4EL))))).s01, ((VECTOR(uint8_t, 2))(0x7BL))))), 0UL, 253UL, ((VECTOR(uint8_t, 4))(1UL)))), p_113, ((VECTOR(uint8_t, 2))(0x35L)), ((VECTOR(uint8_t, 4))(0x15L)), 0x37L)).sc942))).hi))), 255UL, 255UL)).odd + ((VECTOR(uint8_t, 2))(0xDFL))))), 2UL)), ((VECTOR(uint8_t, 2))(0x97L)), 0x7AL)).odd))), l_133, 255UL, p_1262->g_29.x, GROUP_DIVERGE(2, 1), 0x6AL, 0x2CL, 0xEAL, l_137.x, ((VECTOR(uint8_t, 2))(1UL)), 0x39L, 0x94L)).sc9 | ((VECTOR(uint8_t, 2))(6UL)))))))).hi != l_138.s0) & l_138.s6) & 1UL), l_152, p_1262->g_11[6][4], l_120.y, l_141.s3, p_1262);
    (*l_175) ^= p_113;
    (*l_175) = (-1L);
    return p_113;
}


/* ------------------------------------------ */
/* 
 * reads : p_1262->g_170 p_1262->g_11 p_1262->g_171
 * writes:
 */
int32_t  func_114(uint32_t  p_115, uint64_t * p_116, int16_t  p_117, int64_t  p_118, int32_t  p_119, struct S0 * p_1262)
{ /* block id: 39 */
    VECTOR(uint64_t, 2) l_160 = (VECTOR(uint64_t, 2))(4UL, 8UL);
    VECTOR(uint32_t, 8) l_165 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xEA09826EL), 0xEA09826EL), 0xEA09826EL, 0UL, 0xEA09826EL);
    int32_t **l_166 = (void*)0;
    int32_t *l_167 = &p_1262->g_168[0];
    VECTOR(uint32_t, 16) l_169 = (VECTOR(uint32_t, 16))(0x6CC3F753L, (VECTOR(uint32_t, 4))(0x6CC3F753L, (VECTOR(uint32_t, 2))(0x6CC3F753L, 0x1B8EB1A2L), 0x1B8EB1A2L), 0x1B8EB1A2L, 0x6CC3F753L, 0x1B8EB1A2L, (VECTOR(uint32_t, 2))(0x6CC3F753L, 0x1B8EB1A2L), (VECTOR(uint32_t, 2))(0x6CC3F753L, 0x1B8EB1A2L), 0x6CC3F753L, 0x1B8EB1A2L, 0x6CC3F753L, 0x1B8EB1A2L);
    int32_t ***l_172[2];
    int32_t **l_173 = &p_1262->g_171;
    int i;
    for (i = 0; i < 2; i++)
        l_172[i] = &p_1262->g_170;
    if ((safe_add_func_int16_t_s_s((safe_add_func_int8_t_s_s(((safe_mod_func_int64_t_s_s(p_115, ((VECTOR(uint64_t, 4))(l_160.xyyx)).y)) == (((VECTOR(uint32_t, 8))(0xC53A199AL, 4UL, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(l_165.s36)).yyxy + ((VECTOR(uint32_t, 8))(4294967295UL, 0UL, ((l_167 = &p_1262->g_11[4][7]) != ((65532UL || (-2L)) , &p_1262->g_11[4][6])), ((VECTOR(uint32_t, 4))(0x4706FC58L, 4294967295UL, 5UL, 0UL)), 1UL)).hi))).lo + ((VECTOR(uint32_t, 8))(l_169.sbff11e01)).s36))), 0x33768AC4L, 0x0B747BEBL, 1UL, 0x075437D3L)).s2 && (((VECTOR(int64_t, 2))(0x33D4A04D2973C7F1L, 0x5924D1F9F7833619L)).hi , (((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))((p_116 == p_116), ((l_173 = p_1262->g_170) == (void*)0), 0L, ((VECTOR(int32_t, 4))(0x0DBC920AL)), 0x30DE8B86L)), ((VECTOR(int32_t, 8))(5L))))).even, ((VECTOR(int32_t, 4))(0x7675B375L)), ((VECTOR(int32_t, 4))(1L))))).yyxxwxzz, ((VECTOR(int32_t, 8))(0L))))) || ((VECTOR(int32_t, 8))(0x356AC2CDL))))).s32, ((VECTOR(int32_t, 2))(1L))))), p_119, (-9L), (-4L), ((VECTOR(int32_t, 2))(0x167B42B6L)), (-1L))).hi, ((VECTOR(int32_t, 4))(0x49B8F6F5L)), ((VECTOR(int32_t, 4))(0x2905C28BL))))).z , p_118)))), p_1262->g_11[1][5])), 65535UL)))
    { /* block id: 42 */
        uint64_t l_174[2][9][5];
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 9; j++)
            {
                for (k = 0; k < 5; k++)
                    l_174[i][j][k] = 0xFB5AA6BA308FB7BDL;
            }
        }
        l_174[0][8][2] ^= (**p_1262->g_170);
        return p_118;
    }
    else
    { /* block id: 45 */
        return (**p_1262->g_170);
    }
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1263;
    struct S0* p_1262 = &c_1263;
    struct S0 c_1264 = {
        0L, // p_1262->g_2
        (-3L), // p_1262->g_3
        {{0x0678E045L,0L,1L,0x5E97312BL,(-1L),0x0F59172DL,(-3L),(-5L)},{0x0678E045L,0L,1L,0x5E97312BL,(-1L),0x0F59172DL,(-3L),(-5L)},{0x0678E045L,0L,1L,0x5E97312BL,(-1L),0x0F59172DL,(-3L),(-5L)},{0x0678E045L,0L,1L,0x5E97312BL,(-1L),0x0F59172DL,(-3L),(-5L)},{0x0678E045L,0L,1L,0x5E97312BL,(-1L),0x0F59172DL,(-3L),(-5L)},{0x0678E045L,0L,1L,0x5E97312BL,(-1L),0x0F59172DL,(-3L),(-5L)},{0x0678E045L,0L,1L,0x5E97312BL,(-1L),0x0F59172DL,(-3L),(-5L)},{0x0678E045L,0L,1L,0x5E97312BL,(-1L),0x0F59172DL,(-3L),(-5L)},{0x0678E045L,0L,1L,0x5E97312BL,(-1L),0x0F59172DL,(-3L),(-5L)}}, // p_1262->g_11
        {&p_1262->g_11[6][4]}, // p_1262->g_10
        (VECTOR(uint16_t, 4))(0x7A02L, (VECTOR(uint16_t, 2))(0x7A02L, 0xE9A9L), 0xE9A9L), // p_1262->g_13
        (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0x45L), 0x45L), // p_1262->g_29
        6UL, // p_1262->g_72
        (VECTOR(int64_t, 2))((-5L), (-1L)), // p_1262->g_79
        (VECTOR(int16_t, 2))(0x3A56L, 0x4248L), // p_1262->g_97
        (-7L), // p_1262->g_99
        0x65BFL, // p_1262->g_147
        1UL, // p_1262->g_153
        {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)}, // p_1262->g_168
        &p_1262->g_11[6][4], // p_1262->g_171
        &p_1262->g_171, // p_1262->g_170
        1UL, // p_1262->g_177
        0x26210D50EA701576L, // p_1262->g_179
        4L, // p_1262->g_199
        {{&p_1262->g_199,&p_1262->g_199},{&p_1262->g_199,&p_1262->g_199},{&p_1262->g_199,&p_1262->g_199},{&p_1262->g_199,&p_1262->g_199},{&p_1262->g_199,&p_1262->g_199},{&p_1262->g_199,&p_1262->g_199},{&p_1262->g_199,&p_1262->g_199},{&p_1262->g_199,&p_1262->g_199},{&p_1262->g_199,&p_1262->g_199}}, // p_1262->g_198
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1262->g_197
        (void*)0, // p_1262->g_213
        (void*)0, // p_1262->g_227
        (VECTOR(uint16_t, 8))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0x6FB3L), 0x6FB3L), 0x6FB3L, 65526UL, 0x6FB3L), // p_1262->g_230
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x1FE27C90L), 0x1FE27C90L), 0x1FE27C90L, 1L, 0x1FE27C90L, (VECTOR(int32_t, 2))(1L, 0x1FE27C90L), (VECTOR(int32_t, 2))(1L, 0x1FE27C90L), 1L, 0x1FE27C90L, 1L, 0x1FE27C90L), // p_1262->g_246
        4294967295UL, // p_1262->g_253
        0x7B89F79B3D012A6AL, // p_1262->g_258
        0x21F575689219BA98L, // p_1262->g_261
        (VECTOR(uint16_t, 2))(0xDBB7L, 0xDC5EL), // p_1262->g_277
        (VECTOR(uint64_t, 8))(18446744073709551610UL, (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 18446744073709551612UL), 18446744073709551612UL), 18446744073709551612UL, 18446744073709551610UL, 18446744073709551612UL), // p_1262->g_287
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1262->g_297
        (void*)0, // p_1262->g_298
        0x0051L, // p_1262->g_302
        &p_1262->g_302, // p_1262->g_301
        (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0L), 0L), // p_1262->g_303
        (VECTOR(int8_t, 2))(0x5CL, 1L), // p_1262->g_309
        (VECTOR(uint16_t, 16))(0x1A9DL, (VECTOR(uint16_t, 4))(0x1A9DL, (VECTOR(uint16_t, 2))(0x1A9DL, 0x7E32L), 0x7E32L), 0x7E32L, 0x1A9DL, 0x7E32L, (VECTOR(uint16_t, 2))(0x1A9DL, 0x7E32L), (VECTOR(uint16_t, 2))(0x1A9DL, 0x7E32L), 0x1A9DL, 0x7E32L, 0x1A9DL, 0x7E32L), // p_1262->g_319
        (VECTOR(uint8_t, 4))(0x0EL, (VECTOR(uint8_t, 2))(0x0EL, 0UL), 0UL), // p_1262->g_322
        0x6088D385EC10DF3AL, // p_1262->g_358
        (VECTOR(uint8_t, 4))(0xB2L, (VECTOR(uint8_t, 2))(0xB2L, 0xC1L), 0xC1L), // p_1262->g_381
        (VECTOR(int8_t, 8))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x7AL), 0x7AL), 0x7AL, 4L, 0x7AL), // p_1262->g_391
        (VECTOR(int8_t, 16))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x14L), 0x14L), 0x14L, (-10L), 0x14L, (VECTOR(int8_t, 2))((-10L), 0x14L), (VECTOR(int8_t, 2))((-10L), 0x14L), (-10L), 0x14L, (-10L), 0x14L), // p_1262->g_397
        (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 0x77D7B087L), 0x77D7B087L), // p_1262->g_416
        (VECTOR(int16_t, 16))(0x2664L, (VECTOR(int16_t, 4))(0x2664L, (VECTOR(int16_t, 2))(0x2664L, 0x04A8L), 0x04A8L), 0x04A8L, 0x2664L, 0x04A8L, (VECTOR(int16_t, 2))(0x2664L, 0x04A8L), (VECTOR(int16_t, 2))(0x2664L, 0x04A8L), 0x2664L, 0x04A8L, 0x2664L, 0x04A8L), // p_1262->g_440
        (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0x627EL), 0x627EL), // p_1262->g_443
        (VECTOR(uint16_t, 16))(0xBC2FL, (VECTOR(uint16_t, 4))(0xBC2FL, (VECTOR(uint16_t, 2))(0xBC2FL, 65535UL), 65535UL), 65535UL, 0xBC2FL, 65535UL, (VECTOR(uint16_t, 2))(0xBC2FL, 65535UL), (VECTOR(uint16_t, 2))(0xBC2FL, 65535UL), 0xBC2FL, 65535UL, 0xBC2FL, 65535UL), // p_1262->g_446
        (VECTOR(uint8_t, 2))(0x0FL, 250UL), // p_1262->g_453
        (VECTOR(uint16_t, 2))(0x5EA8L, 0UL), // p_1262->g_455
        (VECTOR(int32_t, 2))(0x63F547D0L, 0x4C370EE3L), // p_1262->g_488
        (VECTOR(int32_t, 2))(1L, 0x3B575B7BL), // p_1262->g_491
        (VECTOR(int32_t, 16))(0x51605E5CL, (VECTOR(int32_t, 4))(0x51605E5CL, (VECTOR(int32_t, 2))(0x51605E5CL, 0L), 0L), 0L, 0x51605E5CL, 0L, (VECTOR(int32_t, 2))(0x51605E5CL, 0L), (VECTOR(int32_t, 2))(0x51605E5CL, 0L), 0x51605E5CL, 0L, 0x51605E5CL, 0L), // p_1262->g_492
        (VECTOR(uint64_t, 2))(0x00F0D4FE460E97DBL, 0xC6CB872FA29A350AL), // p_1262->g_509
        &p_1262->g_168[0], // p_1262->g_533
        &p_1262->g_533, // p_1262->g_532
        (void*)0, // p_1262->g_534
        (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-9L)), (-9L)), // p_1262->g_541
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 253UL), 253UL), 253UL, 0UL, 253UL), // p_1262->g_569
        (VECTOR(int8_t, 16))(0x6BL, (VECTOR(int8_t, 4))(0x6BL, (VECTOR(int8_t, 2))(0x6BL, 1L), 1L), 1L, 0x6BL, 1L, (VECTOR(int8_t, 2))(0x6BL, 1L), (VECTOR(int8_t, 2))(0x6BL, 1L), 0x6BL, 1L, 0x6BL, 1L), // p_1262->g_571
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 5L), 5L), 5L, 1L, 5L), // p_1262->g_573
        (VECTOR(int8_t, 8))(0x1AL, (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, (-4L)), (-4L)), (-4L), 0x1AL, (-4L)), // p_1262->g_577
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x54L), 0x54L), 0x54L, 0L, 0x54L), // p_1262->g_579
        &p_1262->g_2, // p_1262->g_593
        &p_1262->g_593, // p_1262->g_594
        {&p_1262->g_2,&p_1262->g_2,&p_1262->g_2,&p_1262->g_2,&p_1262->g_2,&p_1262->g_2,&p_1262->g_2}, // p_1262->g_598
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x42L), 0x42L), // p_1262->g_605
        (VECTOR(uint16_t, 2))(0UL, 1UL), // p_1262->g_617
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), (VECTOR(uint16_t, 2))(0UL, 65535UL), 0UL, 65535UL, 0UL, 65535UL), // p_1262->g_655
        6UL, // p_1262->g_664
        (VECTOR(uint8_t, 8))(0xB7L, (VECTOR(uint8_t, 4))(0xB7L, (VECTOR(uint8_t, 2))(0xB7L, 251UL), 251UL), 251UL, 0xB7L, 251UL), // p_1262->g_689
        (VECTOR(int16_t, 4))(0x2424L, (VECTOR(int16_t, 2))(0x2424L, 0x0AE5L), 0x0AE5L), // p_1262->g_692
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L), // p_1262->g_699
        (VECTOR(int64_t, 2))(1L, 0x30B9ED5DF6999A58L), // p_1262->g_700
        (VECTOR(int64_t, 2))(0x63F5869917F1A260L, 0x53DF1A2B71F6391DL), // p_1262->g_702
        0L, // p_1262->g_726
        (VECTOR(uint32_t, 16))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0UL), 0UL), 0UL, 2UL, 0UL, (VECTOR(uint32_t, 2))(2UL, 0UL), (VECTOR(uint32_t, 2))(2UL, 0UL), 2UL, 0UL, 2UL, 0UL), // p_1262->g_808
        (VECTOR(uint32_t, 4))(0xE5AB7ECCL, (VECTOR(uint32_t, 2))(0xE5AB7ECCL, 1UL), 1UL), // p_1262->g_809
        (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x034FBAB4L), 0x034FBAB4L), // p_1262->g_813
        (VECTOR(int8_t, 2))(1L, 0L), // p_1262->g_815
        (VECTOR(int8_t, 16))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x6AL), 0x6AL), 0x6AL, 0x05L, 0x6AL, (VECTOR(int8_t, 2))(0x05L, 0x6AL), (VECTOR(int8_t, 2))(0x05L, 0x6AL), 0x05L, 0x6AL, 0x05L, 0x6AL), // p_1262->g_818
        (VECTOR(uint8_t, 8))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 5UL), 5UL), 5UL, 5UL, 5UL), // p_1262->g_819
        (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x53L), 0x53L), // p_1262->g_833
        0x47A93175L, // p_1262->g_847
        (void*)0, // p_1262->g_851
        &p_1262->g_598[5], // p_1262->g_852
        (VECTOR(int16_t, 2))(0L, 0x328BL), // p_1262->g_869
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 8UL), 8UL), // p_1262->g_876
        (VECTOR(uint16_t, 8))(2UL, (VECTOR(uint16_t, 4))(2UL, (VECTOR(uint16_t, 2))(2UL, 0xD4EDL), 0xD4EDL), 0xD4EDL, 2UL, 0xD4EDL), // p_1262->g_878
        (void*)0, // p_1262->g_922
        &p_1262->g_922, // p_1262->g_921
        (VECTOR(uint8_t, 8))(0xFFL, (VECTOR(uint8_t, 4))(0xFFL, (VECTOR(uint8_t, 2))(0xFFL, 251UL), 251UL), 251UL, 0xFFL, 251UL), // p_1262->g_942
        (VECTOR(uint8_t, 8))(0xF8L, (VECTOR(uint8_t, 4))(0xF8L, (VECTOR(uint8_t, 2))(0xF8L, 2UL), 2UL), 2UL, 0xF8L, 2UL), // p_1262->g_950
        (VECTOR(uint8_t, 2))(0UL, 1UL), // p_1262->g_955
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), // p_1262->g_963
        (VECTOR(uint8_t, 16))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 255UL), 255UL), 255UL, 246UL, 255UL, (VECTOR(uint8_t, 2))(246UL, 255UL), (VECTOR(uint8_t, 2))(246UL, 255UL), 246UL, 255UL, 246UL, 255UL), // p_1262->g_967
        (VECTOR(int32_t, 2))(0x2579902BL, (-1L)), // p_1262->g_990
        (VECTOR(int32_t, 2))((-7L), 0x72E11148L), // p_1262->g_991
        (VECTOR(int32_t, 8))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0L), 0L), 0L, (-10L), 0L), // p_1262->g_995
        (VECTOR(int32_t, 2))(0x7D79BAB2L, 0x069EAAB4L), // p_1262->g_1000
        (VECTOR(int32_t, 16))(0x793CF7DBL, (VECTOR(int32_t, 4))(0x793CF7DBL, (VECTOR(int32_t, 2))(0x793CF7DBL, 0x0AD4E277L), 0x0AD4E277L), 0x0AD4E277L, 0x793CF7DBL, 0x0AD4E277L, (VECTOR(int32_t, 2))(0x793CF7DBL, 0x0AD4E277L), (VECTOR(int32_t, 2))(0x793CF7DBL, 0x0AD4E277L), 0x793CF7DBL, 0x0AD4E277L, 0x793CF7DBL, 0x0AD4E277L), // p_1262->g_1001
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 8L), 8L), 8L, 1L, 8L), // p_1262->g_1003
        (VECTOR(int32_t, 8))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), (-2L)), (-2L)), (-2L), (-5L), (-2L)), // p_1262->g_1006
        (VECTOR(int32_t, 16))(0x1DB643BEL, (VECTOR(int32_t, 4))(0x1DB643BEL, (VECTOR(int32_t, 2))(0x1DB643BEL, 0x65FB71BBL), 0x65FB71BBL), 0x65FB71BBL, 0x1DB643BEL, 0x65FB71BBL, (VECTOR(int32_t, 2))(0x1DB643BEL, 0x65FB71BBL), (VECTOR(int32_t, 2))(0x1DB643BEL, 0x65FB71BBL), 0x1DB643BEL, 0x65FB71BBL, 0x1DB643BEL, 0x65FB71BBL), // p_1262->g_1007
        (VECTOR(int32_t, 4))(0x6BDB7E53L, (VECTOR(int32_t, 2))(0x6BDB7E53L, 0x548BEBB0L), 0x548BEBB0L), // p_1262->g_1009
        (void*)0, // p_1262->g_1017
        (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), (-4L)), (-4L)), (-4L), (-8L), (-4L), (VECTOR(int64_t, 2))((-8L), (-4L)), (VECTOR(int64_t, 2))((-8L), (-4L)), (-8L), (-4L), (-8L), (-4L)), // p_1262->g_1042
        (VECTOR(int8_t, 2))(1L, 0x2AL), // p_1262->g_1065
        (VECTOR(int8_t, 2))(0x73L, 0x40L), // p_1262->g_1067
        (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 0x369DL), 0x369DL), // p_1262->g_1088
        (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), (-8L)), (-8L)), (-8L), (-10L), (-8L), (VECTOR(int16_t, 2))((-10L), (-8L)), (VECTOR(int16_t, 2))((-10L), (-8L)), (-10L), (-8L), (-10L), (-8L)), // p_1262->g_1089
        &p_1262->g_598[6], // p_1262->g_1108
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x2EB7L), 0x2EB7L), // p_1262->g_1115
        (VECTOR(int8_t, 4))(0x3DL, (VECTOR(int8_t, 2))(0x3DL, (-1L)), (-1L)), // p_1262->g_1127
        {&p_1262->g_147,&p_1262->g_147,&p_1262->g_147}, // p_1262->g_1145
        {{{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]}},{{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]}},{{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]}},{{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]}},{{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]}},{{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]}},{{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]}},{{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]},{&p_1262->g_1145[2],&p_1262->g_1145[1]}}}, // p_1262->g_1144
        (void*)0, // p_1262->g_1146
        &p_1262->g_227, // p_1262->g_1175
        (VECTOR(int32_t, 2))(1L, 1L), // p_1262->g_1179
        (VECTOR(uint8_t, 16))(0xDCL, (VECTOR(uint8_t, 4))(0xDCL, (VECTOR(uint8_t, 2))(0xDCL, 246UL), 246UL), 246UL, 0xDCL, 246UL, (VECTOR(uint8_t, 2))(0xDCL, 246UL), (VECTOR(uint8_t, 2))(0xDCL, 246UL), 0xDCL, 246UL, 0xDCL, 246UL), // p_1262->g_1184
        (VECTOR(uint8_t, 16))(0x35L, (VECTOR(uint8_t, 4))(0x35L, (VECTOR(uint8_t, 2))(0x35L, 251UL), 251UL), 251UL, 0x35L, 251UL, (VECTOR(uint8_t, 2))(0x35L, 251UL), (VECTOR(uint8_t, 2))(0x35L, 251UL), 0x35L, 251UL, 0x35L, 251UL), // p_1262->g_1185
        (VECTOR(uint8_t, 2))(253UL, 0UL), // p_1262->g_1198
        (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0xE7L), 0xE7L), // p_1262->g_1203
        (VECTOR(uint8_t, 4))(0x20L, (VECTOR(uint8_t, 2))(0x20L, 0xD4L), 0xD4L), // p_1262->g_1209
        (VECTOR(uint8_t, 2))(0xCBL, 0x77L), // p_1262->g_1210
        0x6B8D5612879F0323L, // p_1262->g_1226
        (VECTOR(int32_t, 2))(0x03E807C2L, 0L), // p_1262->g_1228
        255UL, // p_1262->g_1241
        (VECTOR(int8_t, 16))(0x63L, (VECTOR(int8_t, 4))(0x63L, (VECTOR(int8_t, 2))(0x63L, 0x38L), 0x38L), 0x38L, 0x63L, 0x38L, (VECTOR(int8_t, 2))(0x63L, 0x38L), (VECTOR(int8_t, 2))(0x63L, 0x38L), 0x63L, 0x38L, 0x63L, 0x38L), // p_1262->g_1258
        0x9EL, // p_1262->g_1261
        sequence_input[get_global_id(0)], // p_1262->global_0_offset
        sequence_input[get_global_id(1)], // p_1262->global_1_offset
        sequence_input[get_global_id(2)], // p_1262->global_2_offset
        sequence_input[get_local_id(0)], // p_1262->local_0_offset
        sequence_input[get_local_id(1)], // p_1262->local_1_offset
        sequence_input[get_local_id(2)], // p_1262->local_2_offset
        sequence_input[get_group_id(0)], // p_1262->group_0_offset
        sequence_input[get_group_id(1)], // p_1262->group_1_offset
        sequence_input[get_group_id(2)], // p_1262->group_2_offset
    };
    c_1263 = c_1264;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1262);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1262->g_2, "p_1262->g_2", print_hash_value);
    transparent_crc(p_1262->g_3, "p_1262->g_3", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1262->g_11[i][j], "p_1262->g_11[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1262->g_13.x, "p_1262->g_13.x", print_hash_value);
    transparent_crc(p_1262->g_13.y, "p_1262->g_13.y", print_hash_value);
    transparent_crc(p_1262->g_13.z, "p_1262->g_13.z", print_hash_value);
    transparent_crc(p_1262->g_13.w, "p_1262->g_13.w", print_hash_value);
    transparent_crc(p_1262->g_29.x, "p_1262->g_29.x", print_hash_value);
    transparent_crc(p_1262->g_29.y, "p_1262->g_29.y", print_hash_value);
    transparent_crc(p_1262->g_29.z, "p_1262->g_29.z", print_hash_value);
    transparent_crc(p_1262->g_29.w, "p_1262->g_29.w", print_hash_value);
    transparent_crc(p_1262->g_72, "p_1262->g_72", print_hash_value);
    transparent_crc(p_1262->g_79.x, "p_1262->g_79.x", print_hash_value);
    transparent_crc(p_1262->g_79.y, "p_1262->g_79.y", print_hash_value);
    transparent_crc(p_1262->g_97.x, "p_1262->g_97.x", print_hash_value);
    transparent_crc(p_1262->g_97.y, "p_1262->g_97.y", print_hash_value);
    transparent_crc(p_1262->g_99, "p_1262->g_99", print_hash_value);
    transparent_crc(p_1262->g_147, "p_1262->g_147", print_hash_value);
    transparent_crc(p_1262->g_153, "p_1262->g_153", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1262->g_168[i], "p_1262->g_168[i]", print_hash_value);

    }
    transparent_crc(p_1262->g_177, "p_1262->g_177", print_hash_value);
    transparent_crc(p_1262->g_179, "p_1262->g_179", print_hash_value);
    transparent_crc(p_1262->g_199, "p_1262->g_199", print_hash_value);
    transparent_crc(p_1262->g_230.s0, "p_1262->g_230.s0", print_hash_value);
    transparent_crc(p_1262->g_230.s1, "p_1262->g_230.s1", print_hash_value);
    transparent_crc(p_1262->g_230.s2, "p_1262->g_230.s2", print_hash_value);
    transparent_crc(p_1262->g_230.s3, "p_1262->g_230.s3", print_hash_value);
    transparent_crc(p_1262->g_230.s4, "p_1262->g_230.s4", print_hash_value);
    transparent_crc(p_1262->g_230.s5, "p_1262->g_230.s5", print_hash_value);
    transparent_crc(p_1262->g_230.s6, "p_1262->g_230.s6", print_hash_value);
    transparent_crc(p_1262->g_230.s7, "p_1262->g_230.s7", print_hash_value);
    transparent_crc(p_1262->g_246.s0, "p_1262->g_246.s0", print_hash_value);
    transparent_crc(p_1262->g_246.s1, "p_1262->g_246.s1", print_hash_value);
    transparent_crc(p_1262->g_246.s2, "p_1262->g_246.s2", print_hash_value);
    transparent_crc(p_1262->g_246.s3, "p_1262->g_246.s3", print_hash_value);
    transparent_crc(p_1262->g_246.s4, "p_1262->g_246.s4", print_hash_value);
    transparent_crc(p_1262->g_246.s5, "p_1262->g_246.s5", print_hash_value);
    transparent_crc(p_1262->g_246.s6, "p_1262->g_246.s6", print_hash_value);
    transparent_crc(p_1262->g_246.s7, "p_1262->g_246.s7", print_hash_value);
    transparent_crc(p_1262->g_246.s8, "p_1262->g_246.s8", print_hash_value);
    transparent_crc(p_1262->g_246.s9, "p_1262->g_246.s9", print_hash_value);
    transparent_crc(p_1262->g_246.sa, "p_1262->g_246.sa", print_hash_value);
    transparent_crc(p_1262->g_246.sb, "p_1262->g_246.sb", print_hash_value);
    transparent_crc(p_1262->g_246.sc, "p_1262->g_246.sc", print_hash_value);
    transparent_crc(p_1262->g_246.sd, "p_1262->g_246.sd", print_hash_value);
    transparent_crc(p_1262->g_246.se, "p_1262->g_246.se", print_hash_value);
    transparent_crc(p_1262->g_246.sf, "p_1262->g_246.sf", print_hash_value);
    transparent_crc(p_1262->g_253, "p_1262->g_253", print_hash_value);
    transparent_crc(p_1262->g_258, "p_1262->g_258", print_hash_value);
    transparent_crc(p_1262->g_261, "p_1262->g_261", print_hash_value);
    transparent_crc(p_1262->g_277.x, "p_1262->g_277.x", print_hash_value);
    transparent_crc(p_1262->g_277.y, "p_1262->g_277.y", print_hash_value);
    transparent_crc(p_1262->g_287.s0, "p_1262->g_287.s0", print_hash_value);
    transparent_crc(p_1262->g_287.s1, "p_1262->g_287.s1", print_hash_value);
    transparent_crc(p_1262->g_287.s2, "p_1262->g_287.s2", print_hash_value);
    transparent_crc(p_1262->g_287.s3, "p_1262->g_287.s3", print_hash_value);
    transparent_crc(p_1262->g_287.s4, "p_1262->g_287.s4", print_hash_value);
    transparent_crc(p_1262->g_287.s5, "p_1262->g_287.s5", print_hash_value);
    transparent_crc(p_1262->g_287.s6, "p_1262->g_287.s6", print_hash_value);
    transparent_crc(p_1262->g_287.s7, "p_1262->g_287.s7", print_hash_value);
    transparent_crc(p_1262->g_302, "p_1262->g_302", print_hash_value);
    transparent_crc(p_1262->g_303.x, "p_1262->g_303.x", print_hash_value);
    transparent_crc(p_1262->g_303.y, "p_1262->g_303.y", print_hash_value);
    transparent_crc(p_1262->g_303.z, "p_1262->g_303.z", print_hash_value);
    transparent_crc(p_1262->g_303.w, "p_1262->g_303.w", print_hash_value);
    transparent_crc(p_1262->g_309.x, "p_1262->g_309.x", print_hash_value);
    transparent_crc(p_1262->g_309.y, "p_1262->g_309.y", print_hash_value);
    transparent_crc(p_1262->g_319.s0, "p_1262->g_319.s0", print_hash_value);
    transparent_crc(p_1262->g_319.s1, "p_1262->g_319.s1", print_hash_value);
    transparent_crc(p_1262->g_319.s2, "p_1262->g_319.s2", print_hash_value);
    transparent_crc(p_1262->g_319.s3, "p_1262->g_319.s3", print_hash_value);
    transparent_crc(p_1262->g_319.s4, "p_1262->g_319.s4", print_hash_value);
    transparent_crc(p_1262->g_319.s5, "p_1262->g_319.s5", print_hash_value);
    transparent_crc(p_1262->g_319.s6, "p_1262->g_319.s6", print_hash_value);
    transparent_crc(p_1262->g_319.s7, "p_1262->g_319.s7", print_hash_value);
    transparent_crc(p_1262->g_319.s8, "p_1262->g_319.s8", print_hash_value);
    transparent_crc(p_1262->g_319.s9, "p_1262->g_319.s9", print_hash_value);
    transparent_crc(p_1262->g_319.sa, "p_1262->g_319.sa", print_hash_value);
    transparent_crc(p_1262->g_319.sb, "p_1262->g_319.sb", print_hash_value);
    transparent_crc(p_1262->g_319.sc, "p_1262->g_319.sc", print_hash_value);
    transparent_crc(p_1262->g_319.sd, "p_1262->g_319.sd", print_hash_value);
    transparent_crc(p_1262->g_319.se, "p_1262->g_319.se", print_hash_value);
    transparent_crc(p_1262->g_319.sf, "p_1262->g_319.sf", print_hash_value);
    transparent_crc(p_1262->g_322.x, "p_1262->g_322.x", print_hash_value);
    transparent_crc(p_1262->g_322.y, "p_1262->g_322.y", print_hash_value);
    transparent_crc(p_1262->g_322.z, "p_1262->g_322.z", print_hash_value);
    transparent_crc(p_1262->g_322.w, "p_1262->g_322.w", print_hash_value);
    transparent_crc(p_1262->g_358, "p_1262->g_358", print_hash_value);
    transparent_crc(p_1262->g_381.x, "p_1262->g_381.x", print_hash_value);
    transparent_crc(p_1262->g_381.y, "p_1262->g_381.y", print_hash_value);
    transparent_crc(p_1262->g_381.z, "p_1262->g_381.z", print_hash_value);
    transparent_crc(p_1262->g_381.w, "p_1262->g_381.w", print_hash_value);
    transparent_crc(p_1262->g_391.s0, "p_1262->g_391.s0", print_hash_value);
    transparent_crc(p_1262->g_391.s1, "p_1262->g_391.s1", print_hash_value);
    transparent_crc(p_1262->g_391.s2, "p_1262->g_391.s2", print_hash_value);
    transparent_crc(p_1262->g_391.s3, "p_1262->g_391.s3", print_hash_value);
    transparent_crc(p_1262->g_391.s4, "p_1262->g_391.s4", print_hash_value);
    transparent_crc(p_1262->g_391.s5, "p_1262->g_391.s5", print_hash_value);
    transparent_crc(p_1262->g_391.s6, "p_1262->g_391.s6", print_hash_value);
    transparent_crc(p_1262->g_391.s7, "p_1262->g_391.s7", print_hash_value);
    transparent_crc(p_1262->g_397.s0, "p_1262->g_397.s0", print_hash_value);
    transparent_crc(p_1262->g_397.s1, "p_1262->g_397.s1", print_hash_value);
    transparent_crc(p_1262->g_397.s2, "p_1262->g_397.s2", print_hash_value);
    transparent_crc(p_1262->g_397.s3, "p_1262->g_397.s3", print_hash_value);
    transparent_crc(p_1262->g_397.s4, "p_1262->g_397.s4", print_hash_value);
    transparent_crc(p_1262->g_397.s5, "p_1262->g_397.s5", print_hash_value);
    transparent_crc(p_1262->g_397.s6, "p_1262->g_397.s6", print_hash_value);
    transparent_crc(p_1262->g_397.s7, "p_1262->g_397.s7", print_hash_value);
    transparent_crc(p_1262->g_397.s8, "p_1262->g_397.s8", print_hash_value);
    transparent_crc(p_1262->g_397.s9, "p_1262->g_397.s9", print_hash_value);
    transparent_crc(p_1262->g_397.sa, "p_1262->g_397.sa", print_hash_value);
    transparent_crc(p_1262->g_397.sb, "p_1262->g_397.sb", print_hash_value);
    transparent_crc(p_1262->g_397.sc, "p_1262->g_397.sc", print_hash_value);
    transparent_crc(p_1262->g_397.sd, "p_1262->g_397.sd", print_hash_value);
    transparent_crc(p_1262->g_397.se, "p_1262->g_397.se", print_hash_value);
    transparent_crc(p_1262->g_397.sf, "p_1262->g_397.sf", print_hash_value);
    transparent_crc(p_1262->g_416.x, "p_1262->g_416.x", print_hash_value);
    transparent_crc(p_1262->g_416.y, "p_1262->g_416.y", print_hash_value);
    transparent_crc(p_1262->g_416.z, "p_1262->g_416.z", print_hash_value);
    transparent_crc(p_1262->g_416.w, "p_1262->g_416.w", print_hash_value);
    transparent_crc(p_1262->g_440.s0, "p_1262->g_440.s0", print_hash_value);
    transparent_crc(p_1262->g_440.s1, "p_1262->g_440.s1", print_hash_value);
    transparent_crc(p_1262->g_440.s2, "p_1262->g_440.s2", print_hash_value);
    transparent_crc(p_1262->g_440.s3, "p_1262->g_440.s3", print_hash_value);
    transparent_crc(p_1262->g_440.s4, "p_1262->g_440.s4", print_hash_value);
    transparent_crc(p_1262->g_440.s5, "p_1262->g_440.s5", print_hash_value);
    transparent_crc(p_1262->g_440.s6, "p_1262->g_440.s6", print_hash_value);
    transparent_crc(p_1262->g_440.s7, "p_1262->g_440.s7", print_hash_value);
    transparent_crc(p_1262->g_440.s8, "p_1262->g_440.s8", print_hash_value);
    transparent_crc(p_1262->g_440.s9, "p_1262->g_440.s9", print_hash_value);
    transparent_crc(p_1262->g_440.sa, "p_1262->g_440.sa", print_hash_value);
    transparent_crc(p_1262->g_440.sb, "p_1262->g_440.sb", print_hash_value);
    transparent_crc(p_1262->g_440.sc, "p_1262->g_440.sc", print_hash_value);
    transparent_crc(p_1262->g_440.sd, "p_1262->g_440.sd", print_hash_value);
    transparent_crc(p_1262->g_440.se, "p_1262->g_440.se", print_hash_value);
    transparent_crc(p_1262->g_440.sf, "p_1262->g_440.sf", print_hash_value);
    transparent_crc(p_1262->g_443.x, "p_1262->g_443.x", print_hash_value);
    transparent_crc(p_1262->g_443.y, "p_1262->g_443.y", print_hash_value);
    transparent_crc(p_1262->g_443.z, "p_1262->g_443.z", print_hash_value);
    transparent_crc(p_1262->g_443.w, "p_1262->g_443.w", print_hash_value);
    transparent_crc(p_1262->g_446.s0, "p_1262->g_446.s0", print_hash_value);
    transparent_crc(p_1262->g_446.s1, "p_1262->g_446.s1", print_hash_value);
    transparent_crc(p_1262->g_446.s2, "p_1262->g_446.s2", print_hash_value);
    transparent_crc(p_1262->g_446.s3, "p_1262->g_446.s3", print_hash_value);
    transparent_crc(p_1262->g_446.s4, "p_1262->g_446.s4", print_hash_value);
    transparent_crc(p_1262->g_446.s5, "p_1262->g_446.s5", print_hash_value);
    transparent_crc(p_1262->g_446.s6, "p_1262->g_446.s6", print_hash_value);
    transparent_crc(p_1262->g_446.s7, "p_1262->g_446.s7", print_hash_value);
    transparent_crc(p_1262->g_446.s8, "p_1262->g_446.s8", print_hash_value);
    transparent_crc(p_1262->g_446.s9, "p_1262->g_446.s9", print_hash_value);
    transparent_crc(p_1262->g_446.sa, "p_1262->g_446.sa", print_hash_value);
    transparent_crc(p_1262->g_446.sb, "p_1262->g_446.sb", print_hash_value);
    transparent_crc(p_1262->g_446.sc, "p_1262->g_446.sc", print_hash_value);
    transparent_crc(p_1262->g_446.sd, "p_1262->g_446.sd", print_hash_value);
    transparent_crc(p_1262->g_446.se, "p_1262->g_446.se", print_hash_value);
    transparent_crc(p_1262->g_446.sf, "p_1262->g_446.sf", print_hash_value);
    transparent_crc(p_1262->g_453.x, "p_1262->g_453.x", print_hash_value);
    transparent_crc(p_1262->g_453.y, "p_1262->g_453.y", print_hash_value);
    transparent_crc(p_1262->g_455.x, "p_1262->g_455.x", print_hash_value);
    transparent_crc(p_1262->g_455.y, "p_1262->g_455.y", print_hash_value);
    transparent_crc(p_1262->g_488.x, "p_1262->g_488.x", print_hash_value);
    transparent_crc(p_1262->g_488.y, "p_1262->g_488.y", print_hash_value);
    transparent_crc(p_1262->g_491.x, "p_1262->g_491.x", print_hash_value);
    transparent_crc(p_1262->g_491.y, "p_1262->g_491.y", print_hash_value);
    transparent_crc(p_1262->g_492.s0, "p_1262->g_492.s0", print_hash_value);
    transparent_crc(p_1262->g_492.s1, "p_1262->g_492.s1", print_hash_value);
    transparent_crc(p_1262->g_492.s2, "p_1262->g_492.s2", print_hash_value);
    transparent_crc(p_1262->g_492.s3, "p_1262->g_492.s3", print_hash_value);
    transparent_crc(p_1262->g_492.s4, "p_1262->g_492.s4", print_hash_value);
    transparent_crc(p_1262->g_492.s5, "p_1262->g_492.s5", print_hash_value);
    transparent_crc(p_1262->g_492.s6, "p_1262->g_492.s6", print_hash_value);
    transparent_crc(p_1262->g_492.s7, "p_1262->g_492.s7", print_hash_value);
    transparent_crc(p_1262->g_492.s8, "p_1262->g_492.s8", print_hash_value);
    transparent_crc(p_1262->g_492.s9, "p_1262->g_492.s9", print_hash_value);
    transparent_crc(p_1262->g_492.sa, "p_1262->g_492.sa", print_hash_value);
    transparent_crc(p_1262->g_492.sb, "p_1262->g_492.sb", print_hash_value);
    transparent_crc(p_1262->g_492.sc, "p_1262->g_492.sc", print_hash_value);
    transparent_crc(p_1262->g_492.sd, "p_1262->g_492.sd", print_hash_value);
    transparent_crc(p_1262->g_492.se, "p_1262->g_492.se", print_hash_value);
    transparent_crc(p_1262->g_492.sf, "p_1262->g_492.sf", print_hash_value);
    transparent_crc(p_1262->g_509.x, "p_1262->g_509.x", print_hash_value);
    transparent_crc(p_1262->g_509.y, "p_1262->g_509.y", print_hash_value);
    transparent_crc(p_1262->g_541.x, "p_1262->g_541.x", print_hash_value);
    transparent_crc(p_1262->g_541.y, "p_1262->g_541.y", print_hash_value);
    transparent_crc(p_1262->g_541.z, "p_1262->g_541.z", print_hash_value);
    transparent_crc(p_1262->g_541.w, "p_1262->g_541.w", print_hash_value);
    transparent_crc(p_1262->g_569.s0, "p_1262->g_569.s0", print_hash_value);
    transparent_crc(p_1262->g_569.s1, "p_1262->g_569.s1", print_hash_value);
    transparent_crc(p_1262->g_569.s2, "p_1262->g_569.s2", print_hash_value);
    transparent_crc(p_1262->g_569.s3, "p_1262->g_569.s3", print_hash_value);
    transparent_crc(p_1262->g_569.s4, "p_1262->g_569.s4", print_hash_value);
    transparent_crc(p_1262->g_569.s5, "p_1262->g_569.s5", print_hash_value);
    transparent_crc(p_1262->g_569.s6, "p_1262->g_569.s6", print_hash_value);
    transparent_crc(p_1262->g_569.s7, "p_1262->g_569.s7", print_hash_value);
    transparent_crc(p_1262->g_571.s0, "p_1262->g_571.s0", print_hash_value);
    transparent_crc(p_1262->g_571.s1, "p_1262->g_571.s1", print_hash_value);
    transparent_crc(p_1262->g_571.s2, "p_1262->g_571.s2", print_hash_value);
    transparent_crc(p_1262->g_571.s3, "p_1262->g_571.s3", print_hash_value);
    transparent_crc(p_1262->g_571.s4, "p_1262->g_571.s4", print_hash_value);
    transparent_crc(p_1262->g_571.s5, "p_1262->g_571.s5", print_hash_value);
    transparent_crc(p_1262->g_571.s6, "p_1262->g_571.s6", print_hash_value);
    transparent_crc(p_1262->g_571.s7, "p_1262->g_571.s7", print_hash_value);
    transparent_crc(p_1262->g_571.s8, "p_1262->g_571.s8", print_hash_value);
    transparent_crc(p_1262->g_571.s9, "p_1262->g_571.s9", print_hash_value);
    transparent_crc(p_1262->g_571.sa, "p_1262->g_571.sa", print_hash_value);
    transparent_crc(p_1262->g_571.sb, "p_1262->g_571.sb", print_hash_value);
    transparent_crc(p_1262->g_571.sc, "p_1262->g_571.sc", print_hash_value);
    transparent_crc(p_1262->g_571.sd, "p_1262->g_571.sd", print_hash_value);
    transparent_crc(p_1262->g_571.se, "p_1262->g_571.se", print_hash_value);
    transparent_crc(p_1262->g_571.sf, "p_1262->g_571.sf", print_hash_value);
    transparent_crc(p_1262->g_573.s0, "p_1262->g_573.s0", print_hash_value);
    transparent_crc(p_1262->g_573.s1, "p_1262->g_573.s1", print_hash_value);
    transparent_crc(p_1262->g_573.s2, "p_1262->g_573.s2", print_hash_value);
    transparent_crc(p_1262->g_573.s3, "p_1262->g_573.s3", print_hash_value);
    transparent_crc(p_1262->g_573.s4, "p_1262->g_573.s4", print_hash_value);
    transparent_crc(p_1262->g_573.s5, "p_1262->g_573.s5", print_hash_value);
    transparent_crc(p_1262->g_573.s6, "p_1262->g_573.s6", print_hash_value);
    transparent_crc(p_1262->g_573.s7, "p_1262->g_573.s7", print_hash_value);
    transparent_crc(p_1262->g_577.s0, "p_1262->g_577.s0", print_hash_value);
    transparent_crc(p_1262->g_577.s1, "p_1262->g_577.s1", print_hash_value);
    transparent_crc(p_1262->g_577.s2, "p_1262->g_577.s2", print_hash_value);
    transparent_crc(p_1262->g_577.s3, "p_1262->g_577.s3", print_hash_value);
    transparent_crc(p_1262->g_577.s4, "p_1262->g_577.s4", print_hash_value);
    transparent_crc(p_1262->g_577.s5, "p_1262->g_577.s5", print_hash_value);
    transparent_crc(p_1262->g_577.s6, "p_1262->g_577.s6", print_hash_value);
    transparent_crc(p_1262->g_577.s7, "p_1262->g_577.s7", print_hash_value);
    transparent_crc(p_1262->g_579.s0, "p_1262->g_579.s0", print_hash_value);
    transparent_crc(p_1262->g_579.s1, "p_1262->g_579.s1", print_hash_value);
    transparent_crc(p_1262->g_579.s2, "p_1262->g_579.s2", print_hash_value);
    transparent_crc(p_1262->g_579.s3, "p_1262->g_579.s3", print_hash_value);
    transparent_crc(p_1262->g_579.s4, "p_1262->g_579.s4", print_hash_value);
    transparent_crc(p_1262->g_579.s5, "p_1262->g_579.s5", print_hash_value);
    transparent_crc(p_1262->g_579.s6, "p_1262->g_579.s6", print_hash_value);
    transparent_crc(p_1262->g_579.s7, "p_1262->g_579.s7", print_hash_value);
    transparent_crc(p_1262->g_605.x, "p_1262->g_605.x", print_hash_value);
    transparent_crc(p_1262->g_605.y, "p_1262->g_605.y", print_hash_value);
    transparent_crc(p_1262->g_605.z, "p_1262->g_605.z", print_hash_value);
    transparent_crc(p_1262->g_605.w, "p_1262->g_605.w", print_hash_value);
    transparent_crc(p_1262->g_617.x, "p_1262->g_617.x", print_hash_value);
    transparent_crc(p_1262->g_617.y, "p_1262->g_617.y", print_hash_value);
    transparent_crc(p_1262->g_655.s0, "p_1262->g_655.s0", print_hash_value);
    transparent_crc(p_1262->g_655.s1, "p_1262->g_655.s1", print_hash_value);
    transparent_crc(p_1262->g_655.s2, "p_1262->g_655.s2", print_hash_value);
    transparent_crc(p_1262->g_655.s3, "p_1262->g_655.s3", print_hash_value);
    transparent_crc(p_1262->g_655.s4, "p_1262->g_655.s4", print_hash_value);
    transparent_crc(p_1262->g_655.s5, "p_1262->g_655.s5", print_hash_value);
    transparent_crc(p_1262->g_655.s6, "p_1262->g_655.s6", print_hash_value);
    transparent_crc(p_1262->g_655.s7, "p_1262->g_655.s7", print_hash_value);
    transparent_crc(p_1262->g_655.s8, "p_1262->g_655.s8", print_hash_value);
    transparent_crc(p_1262->g_655.s9, "p_1262->g_655.s9", print_hash_value);
    transparent_crc(p_1262->g_655.sa, "p_1262->g_655.sa", print_hash_value);
    transparent_crc(p_1262->g_655.sb, "p_1262->g_655.sb", print_hash_value);
    transparent_crc(p_1262->g_655.sc, "p_1262->g_655.sc", print_hash_value);
    transparent_crc(p_1262->g_655.sd, "p_1262->g_655.sd", print_hash_value);
    transparent_crc(p_1262->g_655.se, "p_1262->g_655.se", print_hash_value);
    transparent_crc(p_1262->g_655.sf, "p_1262->g_655.sf", print_hash_value);
    transparent_crc(p_1262->g_664, "p_1262->g_664", print_hash_value);
    transparent_crc(p_1262->g_689.s0, "p_1262->g_689.s0", print_hash_value);
    transparent_crc(p_1262->g_689.s1, "p_1262->g_689.s1", print_hash_value);
    transparent_crc(p_1262->g_689.s2, "p_1262->g_689.s2", print_hash_value);
    transparent_crc(p_1262->g_689.s3, "p_1262->g_689.s3", print_hash_value);
    transparent_crc(p_1262->g_689.s4, "p_1262->g_689.s4", print_hash_value);
    transparent_crc(p_1262->g_689.s5, "p_1262->g_689.s5", print_hash_value);
    transparent_crc(p_1262->g_689.s6, "p_1262->g_689.s6", print_hash_value);
    transparent_crc(p_1262->g_689.s7, "p_1262->g_689.s7", print_hash_value);
    transparent_crc(p_1262->g_692.x, "p_1262->g_692.x", print_hash_value);
    transparent_crc(p_1262->g_692.y, "p_1262->g_692.y", print_hash_value);
    transparent_crc(p_1262->g_692.z, "p_1262->g_692.z", print_hash_value);
    transparent_crc(p_1262->g_692.w, "p_1262->g_692.w", print_hash_value);
    transparent_crc(p_1262->g_699.s0, "p_1262->g_699.s0", print_hash_value);
    transparent_crc(p_1262->g_699.s1, "p_1262->g_699.s1", print_hash_value);
    transparent_crc(p_1262->g_699.s2, "p_1262->g_699.s2", print_hash_value);
    transparent_crc(p_1262->g_699.s3, "p_1262->g_699.s3", print_hash_value);
    transparent_crc(p_1262->g_699.s4, "p_1262->g_699.s4", print_hash_value);
    transparent_crc(p_1262->g_699.s5, "p_1262->g_699.s5", print_hash_value);
    transparent_crc(p_1262->g_699.s6, "p_1262->g_699.s6", print_hash_value);
    transparent_crc(p_1262->g_699.s7, "p_1262->g_699.s7", print_hash_value);
    transparent_crc(p_1262->g_700.x, "p_1262->g_700.x", print_hash_value);
    transparent_crc(p_1262->g_700.y, "p_1262->g_700.y", print_hash_value);
    transparent_crc(p_1262->g_702.x, "p_1262->g_702.x", print_hash_value);
    transparent_crc(p_1262->g_702.y, "p_1262->g_702.y", print_hash_value);
    transparent_crc(p_1262->g_726, "p_1262->g_726", print_hash_value);
    transparent_crc(p_1262->g_808.s0, "p_1262->g_808.s0", print_hash_value);
    transparent_crc(p_1262->g_808.s1, "p_1262->g_808.s1", print_hash_value);
    transparent_crc(p_1262->g_808.s2, "p_1262->g_808.s2", print_hash_value);
    transparent_crc(p_1262->g_808.s3, "p_1262->g_808.s3", print_hash_value);
    transparent_crc(p_1262->g_808.s4, "p_1262->g_808.s4", print_hash_value);
    transparent_crc(p_1262->g_808.s5, "p_1262->g_808.s5", print_hash_value);
    transparent_crc(p_1262->g_808.s6, "p_1262->g_808.s6", print_hash_value);
    transparent_crc(p_1262->g_808.s7, "p_1262->g_808.s7", print_hash_value);
    transparent_crc(p_1262->g_808.s8, "p_1262->g_808.s8", print_hash_value);
    transparent_crc(p_1262->g_808.s9, "p_1262->g_808.s9", print_hash_value);
    transparent_crc(p_1262->g_808.sa, "p_1262->g_808.sa", print_hash_value);
    transparent_crc(p_1262->g_808.sb, "p_1262->g_808.sb", print_hash_value);
    transparent_crc(p_1262->g_808.sc, "p_1262->g_808.sc", print_hash_value);
    transparent_crc(p_1262->g_808.sd, "p_1262->g_808.sd", print_hash_value);
    transparent_crc(p_1262->g_808.se, "p_1262->g_808.se", print_hash_value);
    transparent_crc(p_1262->g_808.sf, "p_1262->g_808.sf", print_hash_value);
    transparent_crc(p_1262->g_809.x, "p_1262->g_809.x", print_hash_value);
    transparent_crc(p_1262->g_809.y, "p_1262->g_809.y", print_hash_value);
    transparent_crc(p_1262->g_809.z, "p_1262->g_809.z", print_hash_value);
    transparent_crc(p_1262->g_809.w, "p_1262->g_809.w", print_hash_value);
    transparent_crc(p_1262->g_813.x, "p_1262->g_813.x", print_hash_value);
    transparent_crc(p_1262->g_813.y, "p_1262->g_813.y", print_hash_value);
    transparent_crc(p_1262->g_813.z, "p_1262->g_813.z", print_hash_value);
    transparent_crc(p_1262->g_813.w, "p_1262->g_813.w", print_hash_value);
    transparent_crc(p_1262->g_815.x, "p_1262->g_815.x", print_hash_value);
    transparent_crc(p_1262->g_815.y, "p_1262->g_815.y", print_hash_value);
    transparent_crc(p_1262->g_818.s0, "p_1262->g_818.s0", print_hash_value);
    transparent_crc(p_1262->g_818.s1, "p_1262->g_818.s1", print_hash_value);
    transparent_crc(p_1262->g_818.s2, "p_1262->g_818.s2", print_hash_value);
    transparent_crc(p_1262->g_818.s3, "p_1262->g_818.s3", print_hash_value);
    transparent_crc(p_1262->g_818.s4, "p_1262->g_818.s4", print_hash_value);
    transparent_crc(p_1262->g_818.s5, "p_1262->g_818.s5", print_hash_value);
    transparent_crc(p_1262->g_818.s6, "p_1262->g_818.s6", print_hash_value);
    transparent_crc(p_1262->g_818.s7, "p_1262->g_818.s7", print_hash_value);
    transparent_crc(p_1262->g_818.s8, "p_1262->g_818.s8", print_hash_value);
    transparent_crc(p_1262->g_818.s9, "p_1262->g_818.s9", print_hash_value);
    transparent_crc(p_1262->g_818.sa, "p_1262->g_818.sa", print_hash_value);
    transparent_crc(p_1262->g_818.sb, "p_1262->g_818.sb", print_hash_value);
    transparent_crc(p_1262->g_818.sc, "p_1262->g_818.sc", print_hash_value);
    transparent_crc(p_1262->g_818.sd, "p_1262->g_818.sd", print_hash_value);
    transparent_crc(p_1262->g_818.se, "p_1262->g_818.se", print_hash_value);
    transparent_crc(p_1262->g_818.sf, "p_1262->g_818.sf", print_hash_value);
    transparent_crc(p_1262->g_819.s0, "p_1262->g_819.s0", print_hash_value);
    transparent_crc(p_1262->g_819.s1, "p_1262->g_819.s1", print_hash_value);
    transparent_crc(p_1262->g_819.s2, "p_1262->g_819.s2", print_hash_value);
    transparent_crc(p_1262->g_819.s3, "p_1262->g_819.s3", print_hash_value);
    transparent_crc(p_1262->g_819.s4, "p_1262->g_819.s4", print_hash_value);
    transparent_crc(p_1262->g_819.s5, "p_1262->g_819.s5", print_hash_value);
    transparent_crc(p_1262->g_819.s6, "p_1262->g_819.s6", print_hash_value);
    transparent_crc(p_1262->g_819.s7, "p_1262->g_819.s7", print_hash_value);
    transparent_crc(p_1262->g_833.x, "p_1262->g_833.x", print_hash_value);
    transparent_crc(p_1262->g_833.y, "p_1262->g_833.y", print_hash_value);
    transparent_crc(p_1262->g_833.z, "p_1262->g_833.z", print_hash_value);
    transparent_crc(p_1262->g_833.w, "p_1262->g_833.w", print_hash_value);
    transparent_crc(p_1262->g_847, "p_1262->g_847", print_hash_value);
    transparent_crc(p_1262->g_869.x, "p_1262->g_869.x", print_hash_value);
    transparent_crc(p_1262->g_869.y, "p_1262->g_869.y", print_hash_value);
    transparent_crc(p_1262->g_876.x, "p_1262->g_876.x", print_hash_value);
    transparent_crc(p_1262->g_876.y, "p_1262->g_876.y", print_hash_value);
    transparent_crc(p_1262->g_876.z, "p_1262->g_876.z", print_hash_value);
    transparent_crc(p_1262->g_876.w, "p_1262->g_876.w", print_hash_value);
    transparent_crc(p_1262->g_878.s0, "p_1262->g_878.s0", print_hash_value);
    transparent_crc(p_1262->g_878.s1, "p_1262->g_878.s1", print_hash_value);
    transparent_crc(p_1262->g_878.s2, "p_1262->g_878.s2", print_hash_value);
    transparent_crc(p_1262->g_878.s3, "p_1262->g_878.s3", print_hash_value);
    transparent_crc(p_1262->g_878.s4, "p_1262->g_878.s4", print_hash_value);
    transparent_crc(p_1262->g_878.s5, "p_1262->g_878.s5", print_hash_value);
    transparent_crc(p_1262->g_878.s6, "p_1262->g_878.s6", print_hash_value);
    transparent_crc(p_1262->g_878.s7, "p_1262->g_878.s7", print_hash_value);
    transparent_crc(p_1262->g_942.s0, "p_1262->g_942.s0", print_hash_value);
    transparent_crc(p_1262->g_942.s1, "p_1262->g_942.s1", print_hash_value);
    transparent_crc(p_1262->g_942.s2, "p_1262->g_942.s2", print_hash_value);
    transparent_crc(p_1262->g_942.s3, "p_1262->g_942.s3", print_hash_value);
    transparent_crc(p_1262->g_942.s4, "p_1262->g_942.s4", print_hash_value);
    transparent_crc(p_1262->g_942.s5, "p_1262->g_942.s5", print_hash_value);
    transparent_crc(p_1262->g_942.s6, "p_1262->g_942.s6", print_hash_value);
    transparent_crc(p_1262->g_942.s7, "p_1262->g_942.s7", print_hash_value);
    transparent_crc(p_1262->g_950.s0, "p_1262->g_950.s0", print_hash_value);
    transparent_crc(p_1262->g_950.s1, "p_1262->g_950.s1", print_hash_value);
    transparent_crc(p_1262->g_950.s2, "p_1262->g_950.s2", print_hash_value);
    transparent_crc(p_1262->g_950.s3, "p_1262->g_950.s3", print_hash_value);
    transparent_crc(p_1262->g_950.s4, "p_1262->g_950.s4", print_hash_value);
    transparent_crc(p_1262->g_950.s5, "p_1262->g_950.s5", print_hash_value);
    transparent_crc(p_1262->g_950.s6, "p_1262->g_950.s6", print_hash_value);
    transparent_crc(p_1262->g_950.s7, "p_1262->g_950.s7", print_hash_value);
    transparent_crc(p_1262->g_955.x, "p_1262->g_955.x", print_hash_value);
    transparent_crc(p_1262->g_955.y, "p_1262->g_955.y", print_hash_value);
    transparent_crc(p_1262->g_963.x, "p_1262->g_963.x", print_hash_value);
    transparent_crc(p_1262->g_963.y, "p_1262->g_963.y", print_hash_value);
    transparent_crc(p_1262->g_963.z, "p_1262->g_963.z", print_hash_value);
    transparent_crc(p_1262->g_963.w, "p_1262->g_963.w", print_hash_value);
    transparent_crc(p_1262->g_967.s0, "p_1262->g_967.s0", print_hash_value);
    transparent_crc(p_1262->g_967.s1, "p_1262->g_967.s1", print_hash_value);
    transparent_crc(p_1262->g_967.s2, "p_1262->g_967.s2", print_hash_value);
    transparent_crc(p_1262->g_967.s3, "p_1262->g_967.s3", print_hash_value);
    transparent_crc(p_1262->g_967.s4, "p_1262->g_967.s4", print_hash_value);
    transparent_crc(p_1262->g_967.s5, "p_1262->g_967.s5", print_hash_value);
    transparent_crc(p_1262->g_967.s6, "p_1262->g_967.s6", print_hash_value);
    transparent_crc(p_1262->g_967.s7, "p_1262->g_967.s7", print_hash_value);
    transparent_crc(p_1262->g_967.s8, "p_1262->g_967.s8", print_hash_value);
    transparent_crc(p_1262->g_967.s9, "p_1262->g_967.s9", print_hash_value);
    transparent_crc(p_1262->g_967.sa, "p_1262->g_967.sa", print_hash_value);
    transparent_crc(p_1262->g_967.sb, "p_1262->g_967.sb", print_hash_value);
    transparent_crc(p_1262->g_967.sc, "p_1262->g_967.sc", print_hash_value);
    transparent_crc(p_1262->g_967.sd, "p_1262->g_967.sd", print_hash_value);
    transparent_crc(p_1262->g_967.se, "p_1262->g_967.se", print_hash_value);
    transparent_crc(p_1262->g_967.sf, "p_1262->g_967.sf", print_hash_value);
    transparent_crc(p_1262->g_990.x, "p_1262->g_990.x", print_hash_value);
    transparent_crc(p_1262->g_990.y, "p_1262->g_990.y", print_hash_value);
    transparent_crc(p_1262->g_991.x, "p_1262->g_991.x", print_hash_value);
    transparent_crc(p_1262->g_991.y, "p_1262->g_991.y", print_hash_value);
    transparent_crc(p_1262->g_995.s0, "p_1262->g_995.s0", print_hash_value);
    transparent_crc(p_1262->g_995.s1, "p_1262->g_995.s1", print_hash_value);
    transparent_crc(p_1262->g_995.s2, "p_1262->g_995.s2", print_hash_value);
    transparent_crc(p_1262->g_995.s3, "p_1262->g_995.s3", print_hash_value);
    transparent_crc(p_1262->g_995.s4, "p_1262->g_995.s4", print_hash_value);
    transparent_crc(p_1262->g_995.s5, "p_1262->g_995.s5", print_hash_value);
    transparent_crc(p_1262->g_995.s6, "p_1262->g_995.s6", print_hash_value);
    transparent_crc(p_1262->g_995.s7, "p_1262->g_995.s7", print_hash_value);
    transparent_crc(p_1262->g_1000.x, "p_1262->g_1000.x", print_hash_value);
    transparent_crc(p_1262->g_1000.y, "p_1262->g_1000.y", print_hash_value);
    transparent_crc(p_1262->g_1001.s0, "p_1262->g_1001.s0", print_hash_value);
    transparent_crc(p_1262->g_1001.s1, "p_1262->g_1001.s1", print_hash_value);
    transparent_crc(p_1262->g_1001.s2, "p_1262->g_1001.s2", print_hash_value);
    transparent_crc(p_1262->g_1001.s3, "p_1262->g_1001.s3", print_hash_value);
    transparent_crc(p_1262->g_1001.s4, "p_1262->g_1001.s4", print_hash_value);
    transparent_crc(p_1262->g_1001.s5, "p_1262->g_1001.s5", print_hash_value);
    transparent_crc(p_1262->g_1001.s6, "p_1262->g_1001.s6", print_hash_value);
    transparent_crc(p_1262->g_1001.s7, "p_1262->g_1001.s7", print_hash_value);
    transparent_crc(p_1262->g_1001.s8, "p_1262->g_1001.s8", print_hash_value);
    transparent_crc(p_1262->g_1001.s9, "p_1262->g_1001.s9", print_hash_value);
    transparent_crc(p_1262->g_1001.sa, "p_1262->g_1001.sa", print_hash_value);
    transparent_crc(p_1262->g_1001.sb, "p_1262->g_1001.sb", print_hash_value);
    transparent_crc(p_1262->g_1001.sc, "p_1262->g_1001.sc", print_hash_value);
    transparent_crc(p_1262->g_1001.sd, "p_1262->g_1001.sd", print_hash_value);
    transparent_crc(p_1262->g_1001.se, "p_1262->g_1001.se", print_hash_value);
    transparent_crc(p_1262->g_1001.sf, "p_1262->g_1001.sf", print_hash_value);
    transparent_crc(p_1262->g_1003.s0, "p_1262->g_1003.s0", print_hash_value);
    transparent_crc(p_1262->g_1003.s1, "p_1262->g_1003.s1", print_hash_value);
    transparent_crc(p_1262->g_1003.s2, "p_1262->g_1003.s2", print_hash_value);
    transparent_crc(p_1262->g_1003.s3, "p_1262->g_1003.s3", print_hash_value);
    transparent_crc(p_1262->g_1003.s4, "p_1262->g_1003.s4", print_hash_value);
    transparent_crc(p_1262->g_1003.s5, "p_1262->g_1003.s5", print_hash_value);
    transparent_crc(p_1262->g_1003.s6, "p_1262->g_1003.s6", print_hash_value);
    transparent_crc(p_1262->g_1003.s7, "p_1262->g_1003.s7", print_hash_value);
    transparent_crc(p_1262->g_1006.s0, "p_1262->g_1006.s0", print_hash_value);
    transparent_crc(p_1262->g_1006.s1, "p_1262->g_1006.s1", print_hash_value);
    transparent_crc(p_1262->g_1006.s2, "p_1262->g_1006.s2", print_hash_value);
    transparent_crc(p_1262->g_1006.s3, "p_1262->g_1006.s3", print_hash_value);
    transparent_crc(p_1262->g_1006.s4, "p_1262->g_1006.s4", print_hash_value);
    transparent_crc(p_1262->g_1006.s5, "p_1262->g_1006.s5", print_hash_value);
    transparent_crc(p_1262->g_1006.s6, "p_1262->g_1006.s6", print_hash_value);
    transparent_crc(p_1262->g_1006.s7, "p_1262->g_1006.s7", print_hash_value);
    transparent_crc(p_1262->g_1007.s0, "p_1262->g_1007.s0", print_hash_value);
    transparent_crc(p_1262->g_1007.s1, "p_1262->g_1007.s1", print_hash_value);
    transparent_crc(p_1262->g_1007.s2, "p_1262->g_1007.s2", print_hash_value);
    transparent_crc(p_1262->g_1007.s3, "p_1262->g_1007.s3", print_hash_value);
    transparent_crc(p_1262->g_1007.s4, "p_1262->g_1007.s4", print_hash_value);
    transparent_crc(p_1262->g_1007.s5, "p_1262->g_1007.s5", print_hash_value);
    transparent_crc(p_1262->g_1007.s6, "p_1262->g_1007.s6", print_hash_value);
    transparent_crc(p_1262->g_1007.s7, "p_1262->g_1007.s7", print_hash_value);
    transparent_crc(p_1262->g_1007.s8, "p_1262->g_1007.s8", print_hash_value);
    transparent_crc(p_1262->g_1007.s9, "p_1262->g_1007.s9", print_hash_value);
    transparent_crc(p_1262->g_1007.sa, "p_1262->g_1007.sa", print_hash_value);
    transparent_crc(p_1262->g_1007.sb, "p_1262->g_1007.sb", print_hash_value);
    transparent_crc(p_1262->g_1007.sc, "p_1262->g_1007.sc", print_hash_value);
    transparent_crc(p_1262->g_1007.sd, "p_1262->g_1007.sd", print_hash_value);
    transparent_crc(p_1262->g_1007.se, "p_1262->g_1007.se", print_hash_value);
    transparent_crc(p_1262->g_1007.sf, "p_1262->g_1007.sf", print_hash_value);
    transparent_crc(p_1262->g_1009.x, "p_1262->g_1009.x", print_hash_value);
    transparent_crc(p_1262->g_1009.y, "p_1262->g_1009.y", print_hash_value);
    transparent_crc(p_1262->g_1009.z, "p_1262->g_1009.z", print_hash_value);
    transparent_crc(p_1262->g_1009.w, "p_1262->g_1009.w", print_hash_value);
    transparent_crc(p_1262->g_1042.s0, "p_1262->g_1042.s0", print_hash_value);
    transparent_crc(p_1262->g_1042.s1, "p_1262->g_1042.s1", print_hash_value);
    transparent_crc(p_1262->g_1042.s2, "p_1262->g_1042.s2", print_hash_value);
    transparent_crc(p_1262->g_1042.s3, "p_1262->g_1042.s3", print_hash_value);
    transparent_crc(p_1262->g_1042.s4, "p_1262->g_1042.s4", print_hash_value);
    transparent_crc(p_1262->g_1042.s5, "p_1262->g_1042.s5", print_hash_value);
    transparent_crc(p_1262->g_1042.s6, "p_1262->g_1042.s6", print_hash_value);
    transparent_crc(p_1262->g_1042.s7, "p_1262->g_1042.s7", print_hash_value);
    transparent_crc(p_1262->g_1042.s8, "p_1262->g_1042.s8", print_hash_value);
    transparent_crc(p_1262->g_1042.s9, "p_1262->g_1042.s9", print_hash_value);
    transparent_crc(p_1262->g_1042.sa, "p_1262->g_1042.sa", print_hash_value);
    transparent_crc(p_1262->g_1042.sb, "p_1262->g_1042.sb", print_hash_value);
    transparent_crc(p_1262->g_1042.sc, "p_1262->g_1042.sc", print_hash_value);
    transparent_crc(p_1262->g_1042.sd, "p_1262->g_1042.sd", print_hash_value);
    transparent_crc(p_1262->g_1042.se, "p_1262->g_1042.se", print_hash_value);
    transparent_crc(p_1262->g_1042.sf, "p_1262->g_1042.sf", print_hash_value);
    transparent_crc(p_1262->g_1065.x, "p_1262->g_1065.x", print_hash_value);
    transparent_crc(p_1262->g_1065.y, "p_1262->g_1065.y", print_hash_value);
    transparent_crc(p_1262->g_1067.x, "p_1262->g_1067.x", print_hash_value);
    transparent_crc(p_1262->g_1067.y, "p_1262->g_1067.y", print_hash_value);
    transparent_crc(p_1262->g_1088.x, "p_1262->g_1088.x", print_hash_value);
    transparent_crc(p_1262->g_1088.y, "p_1262->g_1088.y", print_hash_value);
    transparent_crc(p_1262->g_1088.z, "p_1262->g_1088.z", print_hash_value);
    transparent_crc(p_1262->g_1088.w, "p_1262->g_1088.w", print_hash_value);
    transparent_crc(p_1262->g_1089.s0, "p_1262->g_1089.s0", print_hash_value);
    transparent_crc(p_1262->g_1089.s1, "p_1262->g_1089.s1", print_hash_value);
    transparent_crc(p_1262->g_1089.s2, "p_1262->g_1089.s2", print_hash_value);
    transparent_crc(p_1262->g_1089.s3, "p_1262->g_1089.s3", print_hash_value);
    transparent_crc(p_1262->g_1089.s4, "p_1262->g_1089.s4", print_hash_value);
    transparent_crc(p_1262->g_1089.s5, "p_1262->g_1089.s5", print_hash_value);
    transparent_crc(p_1262->g_1089.s6, "p_1262->g_1089.s6", print_hash_value);
    transparent_crc(p_1262->g_1089.s7, "p_1262->g_1089.s7", print_hash_value);
    transparent_crc(p_1262->g_1089.s8, "p_1262->g_1089.s8", print_hash_value);
    transparent_crc(p_1262->g_1089.s9, "p_1262->g_1089.s9", print_hash_value);
    transparent_crc(p_1262->g_1089.sa, "p_1262->g_1089.sa", print_hash_value);
    transparent_crc(p_1262->g_1089.sb, "p_1262->g_1089.sb", print_hash_value);
    transparent_crc(p_1262->g_1089.sc, "p_1262->g_1089.sc", print_hash_value);
    transparent_crc(p_1262->g_1089.sd, "p_1262->g_1089.sd", print_hash_value);
    transparent_crc(p_1262->g_1089.se, "p_1262->g_1089.se", print_hash_value);
    transparent_crc(p_1262->g_1089.sf, "p_1262->g_1089.sf", print_hash_value);
    transparent_crc(p_1262->g_1115.x, "p_1262->g_1115.x", print_hash_value);
    transparent_crc(p_1262->g_1115.y, "p_1262->g_1115.y", print_hash_value);
    transparent_crc(p_1262->g_1115.z, "p_1262->g_1115.z", print_hash_value);
    transparent_crc(p_1262->g_1115.w, "p_1262->g_1115.w", print_hash_value);
    transparent_crc(p_1262->g_1127.x, "p_1262->g_1127.x", print_hash_value);
    transparent_crc(p_1262->g_1127.y, "p_1262->g_1127.y", print_hash_value);
    transparent_crc(p_1262->g_1127.z, "p_1262->g_1127.z", print_hash_value);
    transparent_crc(p_1262->g_1127.w, "p_1262->g_1127.w", print_hash_value);
    transparent_crc(p_1262->g_1179.x, "p_1262->g_1179.x", print_hash_value);
    transparent_crc(p_1262->g_1179.y, "p_1262->g_1179.y", print_hash_value);
    transparent_crc(p_1262->g_1184.s0, "p_1262->g_1184.s0", print_hash_value);
    transparent_crc(p_1262->g_1184.s1, "p_1262->g_1184.s1", print_hash_value);
    transparent_crc(p_1262->g_1184.s2, "p_1262->g_1184.s2", print_hash_value);
    transparent_crc(p_1262->g_1184.s3, "p_1262->g_1184.s3", print_hash_value);
    transparent_crc(p_1262->g_1184.s4, "p_1262->g_1184.s4", print_hash_value);
    transparent_crc(p_1262->g_1184.s5, "p_1262->g_1184.s5", print_hash_value);
    transparent_crc(p_1262->g_1184.s6, "p_1262->g_1184.s6", print_hash_value);
    transparent_crc(p_1262->g_1184.s7, "p_1262->g_1184.s7", print_hash_value);
    transparent_crc(p_1262->g_1184.s8, "p_1262->g_1184.s8", print_hash_value);
    transparent_crc(p_1262->g_1184.s9, "p_1262->g_1184.s9", print_hash_value);
    transparent_crc(p_1262->g_1184.sa, "p_1262->g_1184.sa", print_hash_value);
    transparent_crc(p_1262->g_1184.sb, "p_1262->g_1184.sb", print_hash_value);
    transparent_crc(p_1262->g_1184.sc, "p_1262->g_1184.sc", print_hash_value);
    transparent_crc(p_1262->g_1184.sd, "p_1262->g_1184.sd", print_hash_value);
    transparent_crc(p_1262->g_1184.se, "p_1262->g_1184.se", print_hash_value);
    transparent_crc(p_1262->g_1184.sf, "p_1262->g_1184.sf", print_hash_value);
    transparent_crc(p_1262->g_1185.s0, "p_1262->g_1185.s0", print_hash_value);
    transparent_crc(p_1262->g_1185.s1, "p_1262->g_1185.s1", print_hash_value);
    transparent_crc(p_1262->g_1185.s2, "p_1262->g_1185.s2", print_hash_value);
    transparent_crc(p_1262->g_1185.s3, "p_1262->g_1185.s3", print_hash_value);
    transparent_crc(p_1262->g_1185.s4, "p_1262->g_1185.s4", print_hash_value);
    transparent_crc(p_1262->g_1185.s5, "p_1262->g_1185.s5", print_hash_value);
    transparent_crc(p_1262->g_1185.s6, "p_1262->g_1185.s6", print_hash_value);
    transparent_crc(p_1262->g_1185.s7, "p_1262->g_1185.s7", print_hash_value);
    transparent_crc(p_1262->g_1185.s8, "p_1262->g_1185.s8", print_hash_value);
    transparent_crc(p_1262->g_1185.s9, "p_1262->g_1185.s9", print_hash_value);
    transparent_crc(p_1262->g_1185.sa, "p_1262->g_1185.sa", print_hash_value);
    transparent_crc(p_1262->g_1185.sb, "p_1262->g_1185.sb", print_hash_value);
    transparent_crc(p_1262->g_1185.sc, "p_1262->g_1185.sc", print_hash_value);
    transparent_crc(p_1262->g_1185.sd, "p_1262->g_1185.sd", print_hash_value);
    transparent_crc(p_1262->g_1185.se, "p_1262->g_1185.se", print_hash_value);
    transparent_crc(p_1262->g_1185.sf, "p_1262->g_1185.sf", print_hash_value);
    transparent_crc(p_1262->g_1198.x, "p_1262->g_1198.x", print_hash_value);
    transparent_crc(p_1262->g_1198.y, "p_1262->g_1198.y", print_hash_value);
    transparent_crc(p_1262->g_1203.x, "p_1262->g_1203.x", print_hash_value);
    transparent_crc(p_1262->g_1203.y, "p_1262->g_1203.y", print_hash_value);
    transparent_crc(p_1262->g_1203.z, "p_1262->g_1203.z", print_hash_value);
    transparent_crc(p_1262->g_1203.w, "p_1262->g_1203.w", print_hash_value);
    transparent_crc(p_1262->g_1209.x, "p_1262->g_1209.x", print_hash_value);
    transparent_crc(p_1262->g_1209.y, "p_1262->g_1209.y", print_hash_value);
    transparent_crc(p_1262->g_1209.z, "p_1262->g_1209.z", print_hash_value);
    transparent_crc(p_1262->g_1209.w, "p_1262->g_1209.w", print_hash_value);
    transparent_crc(p_1262->g_1210.x, "p_1262->g_1210.x", print_hash_value);
    transparent_crc(p_1262->g_1210.y, "p_1262->g_1210.y", print_hash_value);
    transparent_crc(p_1262->g_1226, "p_1262->g_1226", print_hash_value);
    transparent_crc(p_1262->g_1228.x, "p_1262->g_1228.x", print_hash_value);
    transparent_crc(p_1262->g_1228.y, "p_1262->g_1228.y", print_hash_value);
    transparent_crc(p_1262->g_1241, "p_1262->g_1241", print_hash_value);
    transparent_crc(p_1262->g_1258.s0, "p_1262->g_1258.s0", print_hash_value);
    transparent_crc(p_1262->g_1258.s1, "p_1262->g_1258.s1", print_hash_value);
    transparent_crc(p_1262->g_1258.s2, "p_1262->g_1258.s2", print_hash_value);
    transparent_crc(p_1262->g_1258.s3, "p_1262->g_1258.s3", print_hash_value);
    transparent_crc(p_1262->g_1258.s4, "p_1262->g_1258.s4", print_hash_value);
    transparent_crc(p_1262->g_1258.s5, "p_1262->g_1258.s5", print_hash_value);
    transparent_crc(p_1262->g_1258.s6, "p_1262->g_1258.s6", print_hash_value);
    transparent_crc(p_1262->g_1258.s7, "p_1262->g_1258.s7", print_hash_value);
    transparent_crc(p_1262->g_1258.s8, "p_1262->g_1258.s8", print_hash_value);
    transparent_crc(p_1262->g_1258.s9, "p_1262->g_1258.s9", print_hash_value);
    transparent_crc(p_1262->g_1258.sa, "p_1262->g_1258.sa", print_hash_value);
    transparent_crc(p_1262->g_1258.sb, "p_1262->g_1258.sb", print_hash_value);
    transparent_crc(p_1262->g_1258.sc, "p_1262->g_1258.sc", print_hash_value);
    transparent_crc(p_1262->g_1258.sd, "p_1262->g_1258.sd", print_hash_value);
    transparent_crc(p_1262->g_1258.se, "p_1262->g_1258.se", print_hash_value);
    transparent_crc(p_1262->g_1258.sf, "p_1262->g_1258.sf", print_hash_value);
    transparent_crc(p_1262->g_1261, "p_1262->g_1261", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
