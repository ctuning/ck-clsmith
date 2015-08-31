// ---fake_divergence -g 22,4,75 -l 1,4,1
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


// Seed: 108

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int8_t * f0;
};

struct S1 {
    int8_t g_10;
    int16_t g_13;
    volatile int16_t g_22;
    volatile int16_t *g_21;
    int32_t g_30;
    volatile int32_t g_33;
    volatile VECTOR(int32_t, 8) g_34;
    int32_t g_35;
    int16_t *g_44;
    volatile VECTOR(int64_t, 2) g_50;
    volatile VECTOR(int16_t, 4) g_59;
    VECTOR(int16_t, 16) g_63;
    VECTOR(int16_t, 8) g_64;
    volatile VECTOR(int8_t, 8) g_67;
    VECTOR(int8_t, 4) g_69;
    VECTOR(int8_t, 2) g_70;
    int64_t g_77[2][3][1];
    volatile VECTOR(int32_t, 2) g_109;
    int32_t g_115;
    uint64_t g_117;
    uint64_t g_119;
    volatile VECTOR(int16_t, 16) g_128;
    union U0 g_132;
    int8_t *g_133;
    uint16_t g_137;
    int32_t g_157;
    int32_t * volatile g_156[2][5][9];
    int32_t * volatile g_158;
    int64_t g_185;
    int32_t g_187[3][4];
    VECTOR(int32_t, 16) g_219;
    VECTOR(int32_t, 16) g_220;
    int16_t g_280[9];
    VECTOR(uint64_t, 8) g_322;
    volatile VECTOR(int32_t, 2) g_336;
    VECTOR(int32_t, 4) g_338;
    VECTOR(int32_t, 8) g_339;
    VECTOR(int32_t, 2) g_353;
    VECTOR(int32_t, 4) g_354;
    volatile VECTOR(int32_t, 4) g_355;
    VECTOR(int16_t, 8) g_358;
    int32_t g_362;
    int32_t ***g_363;
    volatile VECTOR(int16_t, 2) g_366;
    volatile VECTOR(int16_t, 16) g_369;
    VECTOR(int16_t, 8) g_370;
    int16_t g_390[6];
    uint16_t *g_399;
    VECTOR(int32_t, 4) g_442;
    volatile VECTOR(int32_t, 4) g_447;
    volatile VECTOR(int32_t, 2) g_448;
    VECTOR(int32_t, 4) g_452;
    volatile VECTOR(int32_t, 4) g_455;
    volatile int32_t g_459;
    int64_t g_461;
    VECTOR(uint8_t, 8) g_475;
    VECTOR(uint8_t, 2) g_476;
    volatile VECTOR(uint8_t, 8) g_483;
    union U0 *g_494;
    union U0 ** volatile g_493[7][10][3];
    volatile VECTOR(int16_t, 2) g_529;
    int32_t *g_556;
    int32_t **g_555;
    int32_t *** volatile g_554;
    uint8_t *g_567[6][9][4];
    volatile int16_t g_577;
    volatile VECTOR(int32_t, 2) g_606;
    uint32_t g_647;
    VECTOR(int8_t, 16) g_676;
    VECTOR(int8_t, 16) g_677;
    int32_t * volatile * volatile * volatile *g_679[6];
    volatile VECTOR(uint32_t, 4) g_711;
    volatile VECTOR(int32_t, 2) g_714;
    int64_t **g_722;
    int64_t *** volatile g_721;
    union U0 ** volatile g_753;
    int32_t *g_757;
    int32_t ** volatile g_756;
    int16_t * volatile *g_784;
    int16_t * volatile ** volatile g_783;
    VECTOR(int16_t, 4) g_797;
    int32_t ***g_849;
    VECTOR(uint8_t, 4) g_861;
    VECTOR(int32_t, 16) g_884;
    volatile VECTOR(int64_t, 2) g_887;
    VECTOR(int32_t, 4) g_939;
    VECTOR(uint32_t, 8) g_950;
    VECTOR(uint8_t, 16) g_968;
    VECTOR(uint8_t, 8) g_969;
    volatile VECTOR(uint8_t, 4) g_970;
    VECTOR(uint32_t, 8) g_998;
    VECTOR(int32_t, 4) g_1004;
    volatile VECTOR(int32_t, 8) g_1005;
    VECTOR(int32_t, 4) g_1006;
    VECTOR(int32_t, 8) g_1009;
    volatile VECTOR(uint8_t, 16) g_1014;
    uint8_t g_1040;
    int32_t ** volatile g_1051[7];
    volatile VECTOR(uint8_t, 16) g_1058;
    volatile VECTOR(uint8_t, 16) g_1071;
    VECTOR(uint8_t, 4) g_1074;
    volatile uint16_t *** volatile g_1081;
    VECTOR(uint32_t, 16) g_1102;
    volatile VECTOR(int16_t, 16) g_1112;
    uint64_t g_1120;
    int32_t ** volatile g_1123[6][2];
    int32_t ** volatile g_1125;
    int32_t ** volatile g_1126;
    VECTOR(uint8_t, 2) g_1137;
    int32_t *g_1148;
    volatile VECTOR(uint16_t, 4) g_1155;
    volatile VECTOR(int64_t, 8) g_1169;
    int32_t * volatile g_1187;
    int32_t * volatile g_1188;
    VECTOR(int16_t, 4) g_1193;
    VECTOR(uint16_t, 8) g_1223;
    union U0 **g_1232;
    union U0 *** volatile g_1231;
    volatile VECTOR(int8_t, 2) g_1245;
    volatile VECTOR(int8_t, 16) g_1246;
    volatile VECTOR(int8_t, 8) g_1250;
    VECTOR(int8_t, 4) g_1260;
    volatile VECTOR(int8_t, 2) g_1263;
    int32_t ** volatile g_1276;
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
int32_t  func_1(struct S1 * p_1316);
uint8_t  func_4(uint16_t  p_5, union U0  p_6, int8_t * p_7, struct S1 * p_1316);
VECTOR(int16_t, 4)  func_23(uint16_t  p_24, int16_t * p_25, int8_t * p_26, int8_t * p_27, struct S1 * p_1316);
int32_t * func_39(int16_t * p_40, int8_t * p_41, int16_t * p_42, int8_t * p_43, struct S1 * p_1316);
uint64_t  func_79(int8_t * p_80, int32_t * p_81, uint32_t  p_82, uint32_t  p_83, int16_t * p_84, struct S1 * p_1316);
int8_t * func_85(int32_t * p_86, uint64_t  p_87, int16_t  p_88, struct S1 * p_1316);
int32_t * func_89(int8_t * p_90, uint32_t  p_91, uint16_t  p_92, int32_t * p_93, struct S1 * p_1316);
int8_t * func_94(int8_t * p_95, struct S1 * p_1316);
int8_t * func_96(int8_t * p_97, union U0  p_98, int8_t * p_99, int64_t  p_100, union U0  p_101, struct S1 * p_1316);
union U0  func_103(int16_t ** p_104, int8_t  p_105, uint32_t  p_106, int16_t * p_107, int32_t  p_108, struct S1 * p_1316);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1316->g_10 p_1316->g_21 p_1316->g_22 p_1316->g_30 p_1316->g_35 p_1316->g_1169 p_1316->g_399 p_1316->g_1148 p_1316->g_157 p_1316->g_137 p_1316->g_115 p_1316->g_494 p_1316->g_132 p_1316->g_1193 p_1316->g_362 p_1316->g_998 p_1316->g_1223 p_1316->g_1231 p_1316->g_1245 p_1316->g_1246 p_1316->g_1250 p_1316->g_1260 p_1316->g_1263 p_1316->g_1276 p_1316->g_128 p_1316->g_884 p_1316->g_475
 * writes: p_1316->g_13 p_1316->g_30 p_1316->g_35 p_1316->g_137 p_1316->g_1120 p_1316->g_157 p_1316->g_115 p_1316->g_362 p_1316->g_998 p_1316->g_1232 p_1316->g_70 p_1316->g_1148 p_1316->g_757
 */
int32_t  func_1(struct S1 * p_1316)
{ /* block id: 4 */
    int8_t *l_11 = &p_1316->g_10;
    int16_t *l_12 = &p_1316->g_13;
    int32_t l_20 = (-1L);
    union U0 l_1310 = {0};
    int32_t *l_1311 = (void*)0;
    int32_t *l_1312 = (void*)0;
    int32_t *l_1313 = (void*)0;
    int32_t l_1314[7] = {0x4885E365L,0x4885E365L,0x4885E365L,0x4885E365L,0x4885E365L,0x4885E365L,0x4885E365L};
    int32_t **l_1315 = &p_1316->g_757;
    int i;
    l_1314[1] |= (safe_mul_func_uint8_t_u_u(func_4((((safe_rshift_func_int16_t_s_s(p_1316->g_10, ((*l_12) = (l_11 == (void*)0)))) | (safe_add_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((safe_sub_func_int8_t_s_s(l_20, ((((VECTOR(int16_t, 4))((~((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(((void*)0 != p_1316->g_21), ((VECTOR(int16_t, 2))(0x0502L, 0x79E3L)), (-1L))).xwyzzxyy | ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))((!((VECTOR(int16_t, 4))(func_23(p_1316->g_22, l_12, &p_1316->g_10, &p_1316->g_10, p_1316)))))).wwyyyywxyxzxzyzy && ((VECTOR(int16_t, 16))(4L))))).hi))).s47, ((VECTOR(int16_t, 2))(0x6918L))))).yyxy))).w , l_20) == l_20))), 1UL)), l_20))) , 1UL), l_1310, &p_1316->g_10, p_1316), 0x25L));
    l_1313 = ((*l_1315) = (void*)0);
    return p_1316->g_475.s3;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_4(uint16_t  p_5, union U0  p_6, int8_t * p_7, struct S1 * p_1316)
{ /* block id: 423 */
    return p_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1316->g_30 p_1316->g_35 p_1316->g_10 p_1316->g_1169 p_1316->g_399 p_1316->g_1148 p_1316->g_157 p_1316->g_137 p_1316->g_115 p_1316->g_494 p_1316->g_132 p_1316->g_1193 p_1316->g_362 p_1316->g_998 p_1316->g_21 p_1316->g_22 p_1316->g_1223 p_1316->g_1231 p_1316->g_1245 p_1316->g_1246 p_1316->g_1250 p_1316->g_1260 p_1316->g_1263 p_1316->g_1276 p_1316->g_128 p_1316->g_884
 * writes: p_1316->g_30 p_1316->g_35 p_1316->g_137 p_1316->g_1120 p_1316->g_157 p_1316->g_115 p_1316->g_362 p_1316->g_998 p_1316->g_1232 p_1316->g_70 p_1316->g_1148
 */
VECTOR(int16_t, 4)  func_23(uint16_t  p_24, int16_t * p_25, int8_t * p_26, int8_t * p_27, struct S1 * p_1316)
{ /* block id: 6 */
    uint16_t l_52 = 65533UL;
    VECTOR(int16_t, 8) l_60 = (VECTOR(int16_t, 8))(0x6287L, (VECTOR(int16_t, 4))(0x6287L, (VECTOR(int16_t, 2))(0x6287L, 0x6E3BL), 0x6E3BL), 0x6E3BL, 0x6287L, 0x6E3BL);
    VECTOR(int16_t, 16) l_62 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x2BE4L), 0x2BE4L), 0x2BE4L, (-1L), 0x2BE4L, (VECTOR(int16_t, 2))((-1L), 0x2BE4L), (VECTOR(int16_t, 2))((-1L), 0x2BE4L), (-1L), 0x2BE4L, (-1L), 0x2BE4L);
    VECTOR(int16_t, 4) l_65 = (VECTOR(int16_t, 4))(0x65B2L, (VECTOR(int16_t, 2))(0x65B2L, 0x7019L), 0x7019L);
    uint64_t *l_1176[8][10][3] = {{{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117}},{{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117}},{{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117}},{{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117}},{{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117}},{{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117}},{{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117}},{{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117},{&p_1316->g_117,(void*)0,&p_1316->g_117}}};
    union U0 **l_1190 = &p_1316->g_494;
    VECTOR(uint32_t, 16) l_1196 = (VECTOR(uint32_t, 16))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 0xA34B3E8BL), 0xA34B3E8BL), 0xA34B3E8BL, 8UL, 0xA34B3E8BL, (VECTOR(uint32_t, 2))(8UL, 0xA34B3E8BL), (VECTOR(uint32_t, 2))(8UL, 0xA34B3E8BL), 8UL, 0xA34B3E8BL, 8UL, 0xA34B3E8BL);
    uint32_t *l_1197 = (void*)0;
    uint32_t *l_1198 = (void*)0;
    int32_t l_1199 = (-1L);
    VECTOR(uint16_t, 8) l_1228 = (VECTOR(uint16_t, 8))(0xDF0EL, (VECTOR(uint16_t, 4))(0xDF0EL, (VECTOR(uint16_t, 2))(0xDF0EL, 9UL), 9UL), 9UL, 0xDF0EL, 9UL);
    uint32_t l_1229 = 0x00178998L;
    VECTOR(int8_t, 2) l_1242 = (VECTOR(int8_t, 2))(0x58L, 0L);
    VECTOR(int8_t, 16) l_1244 = (VECTOR(int8_t, 16))(0x28L, (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 9L), 9L), 9L, 0x28L, 9L, (VECTOR(int8_t, 2))(0x28L, 9L), (VECTOR(int8_t, 2))(0x28L, 9L), 0x28L, 9L, 0x28L, 9L);
    VECTOR(int8_t, 2) l_1247 = (VECTOR(int8_t, 2))(1L, 0x51L);
    VECTOR(int8_t, 16) l_1249 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int8_t, 2))(1L, 1L), (VECTOR(int8_t, 2))(1L, 1L), 1L, 1L, 1L, 1L);
    VECTOR(int8_t, 4) l_1252 = (VECTOR(int8_t, 4))(0x4AL, (VECTOR(int8_t, 2))(0x4AL, 1L), 1L);
    VECTOR(int8_t, 16) l_1265 = (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 1L), 1L), 1L, 6L, 1L, (VECTOR(int8_t, 2))(6L, 1L), (VECTOR(int8_t, 2))(6L, 1L), 6L, 1L, 6L, 1L);
    VECTOR(int32_t, 16) l_1281 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int32_t, 2))(0L, 1L), (VECTOR(int32_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
    VECTOR(int16_t, 8) l_1309 = (VECTOR(int16_t, 8))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, (-3L)), (-3L)), (-3L), 3L, (-3L));
    int i, j, k;
    for (p_24 = (-30); (p_24 > 19); p_24++)
    { /* block id: 9 */
        int8_t *l_46 = &p_1316->g_10;
        VECTOR(int16_t, 2) l_58 = (VECTOR(int16_t, 2))(1L, 0x0DEBL);
        VECTOR(int16_t, 4) l_61 = (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), (-1L)), (-1L));
        int32_t l_71 = 0x3986BC5AL;
        int64_t *l_1164 = &p_1316->g_77[1][1][0];
        union U0 **l_1192 = &p_1316->g_494;
        union U0 ***l_1191 = &l_1192;
        int i;
        for (p_1316->g_30 = 0; (p_1316->g_30 <= (-7)); p_1316->g_30--)
        { /* block id: 12 */
            int32_t l_38 = (-7L);
            VECTOR(int64_t, 2) l_51 = (VECTOR(int64_t, 2))(8L, 0L);
            VECTOR(int8_t, 4) l_66 = (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, (-3L)), (-3L));
            int16_t l_1168 = (-4L);
            VECTOR(int64_t, 16) l_1170 = (VECTOR(int64_t, 16))(0x0097CE2279E89C27L, (VECTOR(int64_t, 4))(0x0097CE2279E89C27L, (VECTOR(int64_t, 2))(0x0097CE2279E89C27L, 0L), 0L), 0L, 0x0097CE2279E89C27L, 0L, (VECTOR(int64_t, 2))(0x0097CE2279E89C27L, 0L), (VECTOR(int64_t, 2))(0x0097CE2279E89C27L, 0L), 0x0097CE2279E89C27L, 0L, 0x0097CE2279E89C27L, 0L);
            int32_t l_1173 = (-5L);
            uint64_t *l_1175 = (void*)0;
            uint64_t **l_1174[8][7] = {{&l_1175,&l_1175,(void*)0,(void*)0,&l_1175,(void*)0,(void*)0},{&l_1175,&l_1175,(void*)0,(void*)0,&l_1175,(void*)0,(void*)0},{&l_1175,&l_1175,(void*)0,(void*)0,&l_1175,(void*)0,(void*)0},{&l_1175,&l_1175,(void*)0,(void*)0,&l_1175,(void*)0,(void*)0},{&l_1175,&l_1175,(void*)0,(void*)0,&l_1175,(void*)0,(void*)0},{&l_1175,&l_1175,(void*)0,(void*)0,&l_1175,(void*)0,(void*)0},{&l_1175,&l_1175,(void*)0,(void*)0,&l_1175,(void*)0,(void*)0},{&l_1175,&l_1175,(void*)0,(void*)0,&l_1175,(void*)0,(void*)0}};
            int32_t *l_1189 = &p_1316->g_115;
            int i, j;
            for (p_1316->g_35 = (-21); (p_1316->g_35 != (-28)); p_1316->g_35--)
            { /* block id: 15 */
                int16_t **l_45[2];
                VECTOR(int64_t, 16) l_49 = (VECTOR(int64_t, 16))(0x23E24B13B1067DCCL, (VECTOR(int64_t, 4))(0x23E24B13B1067DCCL, (VECTOR(int64_t, 2))(0x23E24B13B1067DCCL, 0x12E7BAA9D707D8EBL), 0x12E7BAA9D707D8EBL), 0x12E7BAA9D707D8EBL, 0x23E24B13B1067DCCL, 0x12E7BAA9D707D8EBL, (VECTOR(int64_t, 2))(0x23E24B13B1067DCCL, 0x12E7BAA9D707D8EBL), (VECTOR(int64_t, 2))(0x23E24B13B1067DCCL, 0x12E7BAA9D707D8EBL), 0x23E24B13B1067DCCL, 0x12E7BAA9D707D8EBL, 0x23E24B13B1067DCCL, 0x12E7BAA9D707D8EBL);
                VECTOR(int8_t, 4) l_68 = (VECTOR(int8_t, 4))(0x7DL, (VECTOR(int8_t, 2))(0x7DL, 1L), 1L);
                int8_t *l_72 = (void*)0;
                VECTOR(int16_t, 2) l_1165 = (VECTOR(int16_t, 2))((-10L), 1L);
                int i;
                for (i = 0; i < 2; i++)
                    l_45[i] = &p_1316->g_44;
                if (l_38)
                    break;
            }
            (*p_1316->g_1148) ^= ((*p_26) , (((VECTOR(uint16_t, 2))(1UL, 1UL)).odd | ((l_71 > (((safe_add_func_uint8_t_u_u((0x84L != ((p_1316->g_1120 = (l_1168 , (((((VECTOR(int64_t, 2))(p_1316->g_1169.s35)).odd && ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_1170.sd268)), 9L, (safe_mul_func_uint8_t_u_u((l_1173 ^= p_24), (((l_1176[2][2][0] = (void*)0) != &p_1316->g_119) == (safe_mod_func_uint16_t_u_u(((*p_1316->g_399) = (l_65.z & (safe_rshift_func_int8_t_s_u(l_58.x, 1)))), l_60.s7))))), (-1L), p_24, ((VECTOR(int64_t, 8))(0x1E23167F38BFA64EL)))).even && ((VECTOR(int64_t, 8))((-9L)))))).s6) , 0x6F451A30L) , l_1170.sf))) >= 0x440B239909C6FA01L)), (*p_26))) > 3L) , (-3L))) >= FAKE_DIVERGE(p_1316->group_1_offset, get_group_id(1), 10))));
            (*l_1189) &= ((*p_1316->g_1148) = ((safe_sub_func_int16_t_s_s((l_61.x == (*p_1316->g_399)), GROUP_DIVERGE(0, 1))) <= (safe_add_func_uint64_t_u_u(0x3A1F2B207BC709A3L, (safe_mul_func_int8_t_s_s((*p_27), p_24))))));
        }
        (*p_1316->g_1148) = (((*p_1316->g_494) , l_1190) != ((*l_1191) = l_1190));
        return p_1316->g_1193.zwwx;
    }
    if ((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(l_1196.s3913)).y, (l_1199 = l_65.x))))
    { /* block id: 392 */
        for (p_1316->g_362 = 0; (p_1316->g_362 <= 1); p_1316->g_362 = safe_add_func_uint8_t_u_u(p_1316->g_362, 2))
        { /* block id: 395 */
            if (l_1196.sd)
                break;
        }
    }
    else
    { /* block id: 398 */
        uint16_t l_1216[2][1][9] = {{{7UL,65526UL,7UL,7UL,65526UL,7UL,7UL,65526UL,7UL}},{{7UL,65526UL,7UL,7UL,65526UL,7UL,7UL,65526UL,7UL}}};
        uint32_t *l_1217[8][5] = {{(void*)0,&p_1316->g_647,&p_1316->g_647,(void*)0,&p_1316->g_647},{(void*)0,&p_1316->g_647,&p_1316->g_647,(void*)0,&p_1316->g_647},{(void*)0,&p_1316->g_647,&p_1316->g_647,(void*)0,&p_1316->g_647},{(void*)0,&p_1316->g_647,&p_1316->g_647,(void*)0,&p_1316->g_647},{(void*)0,&p_1316->g_647,&p_1316->g_647,(void*)0,&p_1316->g_647},{(void*)0,&p_1316->g_647,&p_1316->g_647,(void*)0,&p_1316->g_647},{(void*)0,&p_1316->g_647,&p_1316->g_647,(void*)0,&p_1316->g_647},{(void*)0,&p_1316->g_647,&p_1316->g_647,(void*)0,&p_1316->g_647}};
        VECTOR(uint16_t, 16) l_1222 = (VECTOR(uint16_t, 16))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0x6E63L), 0x6E63L), 0x6E63L, 65533UL, 0x6E63L, (VECTOR(uint16_t, 2))(65533UL, 0x6E63L), (VECTOR(uint16_t, 2))(65533UL, 0x6E63L), 65533UL, 0x6E63L, 65533UL, 0x6E63L);
        int8_t l_1230 = 0x61L;
        VECTOR(int8_t, 2) l_1251 = (VECTOR(int8_t, 2))(8L, 0x43L);
        VECTOR(int8_t, 16) l_1253 = (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), (-4L)), (-4L)), (-4L), (-8L), (-4L), (VECTOR(int8_t, 2))((-8L), (-4L)), (VECTOR(int8_t, 2))((-8L), (-4L)), (-8L), (-4L), (-8L), (-4L));
        VECTOR(int8_t, 2) l_1261 = (VECTOR(int8_t, 2))(0x45L, 3L);
        union U0 *l_1262 = &p_1316->g_132;
        VECTOR(int8_t, 8) l_1266 = (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x02L), 0x02L), 0x02L, (-9L), 0x02L);
        uint16_t l_1307 = 65535UL;
        int i, j, k;
        if (((p_24 != (p_24 ^ (safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s(0x34015D99L, (safe_div_func_int16_t_s_s(l_52, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(65526UL, 0UL)), ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((safe_mul_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s(l_1216[1][0][8], 6)) ^ (p_1316->g_998.s3 |= FAKE_DIVERGE(p_1316->group_2_offset, get_group_id(2), 10))), (+(FAKE_DIVERGE(p_1316->global_2_offset, get_global_id(2), 10) , ((safe_sub_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))((0x7959L ^ (*p_1316->g_21)), 3UL, ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 4))(0x9AL, 1UL, 246UL, 1UL)), ((VECTOR(uint8_t, 4))(((((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 8))(l_1222.s632e2971)), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(p_1316->g_1223.s21)).yxyx & ((VECTOR(uint16_t, 16))(((safe_add_func_int64_t_s_s((safe_div_func_uint8_t_u_u((((VECTOR(uint16_t, 4))(l_1228.s6032)).w ^ l_1229), 0x5AL)), l_1196.s9)) , l_52), ((VECTOR(uint16_t, 8))(0xC247L)), 1UL, (*p_1316->g_399), 5UL, ((VECTOR(uint16_t, 2))(0UL)), 0xD6CDL, 7UL)).sbd3c))).wxzzwzyx))).hi, ((VECTOR(uint16_t, 4))(65535UL))))).w == (*p_1316->g_21)) != l_1216[1][0][8]), ((VECTOR(uint8_t, 2))(0xE4L)), 0x40L))))), ((VECTOR(uint8_t, 4))(0x74L))))), 247UL, 0x79L)).even, ((VECTOR(uint8_t, 4))(0x87L))))).ywyyzzwy & ((VECTOR(uint8_t, 8))(0x11L))))).hi ^ ((VECTOR(uint8_t, 4))(0x9FL))))).w, 5)) ^ l_1230), p_24)) & 4294967295UL))))), ((VECTOR(uint16_t, 2))(0UL)), 0x60E5L)).even + ((VECTOR(uint16_t, 2))(0x3336L))))).hi, GROUP_DIVERGE(0, 1), ((VECTOR(uint16_t, 8))(0x3B01L)), 0x8F84L, 0x8343L, 65527UL, 65533UL)).sff << ((VECTOR(uint16_t, 2))(8UL))))).lo)))), p_24)))) ^ l_60.s3))
        { /* block id: 400 */
            (*p_1316->g_1231) = &p_1316->g_494;
        }
        else
        { /* block id: 402 */
            int64_t l_1237 = (-1L);
            int16_t *l_1238[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_1239 = 0L;
            VECTOR(int8_t, 2) l_1243 = (VECTOR(int8_t, 2))(1L, 1L);
            VECTOR(int8_t, 16) l_1248 = (VECTOR(int8_t, 16))(0x22L, (VECTOR(int8_t, 4))(0x22L, (VECTOR(int8_t, 2))(0x22L, 4L), 4L), 4L, 0x22L, 4L, (VECTOR(int8_t, 2))(0x22L, 4L), (VECTOR(int8_t, 2))(0x22L, 4L), 0x22L, 4L, 0x22L, 4L);
            VECTOR(int8_t, 4) l_1264 = (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x25L), 0x25L);
            VECTOR(int8_t, 4) l_1267 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L));
            int8_t *l_1268 = (void*)0;
            int8_t *l_1269 = (void*)0;
            int8_t *l_1270 = &l_1230;
            int i;
            (*p_1316->g_1148) = (safe_add_func_int16_t_s_s((l_1239 = (safe_rshift_func_uint16_t_u_s(l_1237, 13))), (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(l_1242.yx)) && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(l_1243.xyxxyxyyxyxxyxyx)).s4f97 && ((VECTOR(int8_t, 2))((-1L), (-1L))).xyyy))) ^ ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))(l_1244.sdf)).yyyy, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(0x72L, 0x0CL, 1L, ((VECTOR(int8_t, 2))(0x6CL, 0L)), 0x7EL, (-6L), (p_1316->g_70.x = 0x33L), ((VECTOR(int8_t, 8))(p_1316->g_1245.xxyxxxyx)))).s2499 && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(0L, (-8L))).yxxx ^ ((VECTOR(int8_t, 8))(p_1316->g_1246.sfa6cece2)).lo)))))).hi, ((VECTOR(int8_t, 2))(l_1247.xy))))), 3L, 0x07L))))), ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(l_1248.s2e6d)).lo, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(0x17L, (-1L), 5L, 2L, 0x3BL, ((VECTOR(int8_t, 2))(l_1249.s1b)), 0x02L)) >= ((VECTOR(int8_t, 4))(p_1316->g_1250.s2075)).xyxwxxxy))).s32 & ((VECTOR(int8_t, 16))(l_1251.xyxxyxxyxxyxxxyx)).sd4)))))), ((VECTOR(int8_t, 4))(l_1252.zxyy)), 0L, ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))((-1L), ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 4))(l_1253.s86a9)).even, (int8_t)(safe_div_func_int32_t_s_s(l_1251.x, (safe_sub_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))((-1L), ((VECTOR(int8_t, 4))(p_1316->g_1260.wxzx)), 0x7AL, ((VECTOR(int8_t, 4))(l_1261.xxxx)), ((*l_1190) != l_1262), 7L, (-1L), ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(0x15L, ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 2))(p_1316->g_1263.xx)).yxxxxyyx, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_1264.xz)), 0x2CL, (*p_27), 0x2EL, ((VECTOR(int8_t, 8))(l_1265.s62ce3f98)), 0x0BL, 0x3CL, 1L)).s6a22 != ((VECTOR(int8_t, 16))(l_1266.s1627626441257163)).s4cd9))).zywxzwww))), (((*l_1270) = ((VECTOR(int8_t, 4))(l_1267.wxyy)).x) || l_1243.x), ((VECTOR(int8_t, 2))(0L, 7L)), ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))((*p_27), 0x20L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x5BL, 0x77L)), 0x4CL, 0x6CL)), 0x24L, ((VECTOR(int8_t, 8))(3L)), 1L)).s40c5, ((VECTOR(int8_t, 4))(0L))))))).s26, ((VECTOR(int8_t, 2))((-9L))), ((VECTOR(int8_t, 2))((-5L)))))), 0x7DL)) && ((VECTOR(int8_t, 16))(0x41L))))).even && ((VECTOR(int8_t, 8))(0x51L))))).s6 != l_1253.s5), 0)) , 0x6BF1L), p_24)))), (int8_t)l_1264.z))), (-6L))).even, ((VECTOR(int8_t, 2))(0x2EL)), ((VECTOR(int8_t, 2))(0x21L))))), 0x74L, 3L)), ((VECTOR(int8_t, 4))(0x33L))))) != ((VECTOR(int8_t, 4))(0x44L))))) && ((VECTOR(int8_t, 4))(0x52L))))).odd, ((VECTOR(int8_t, 2))(1L))))), (*p_26), 1L, (-4L))).s6f12))).odd))).odd, GROUP_DIVERGE(1, 1)))));
            l_1199 = p_24;
        }
        for (p_24 = 0; (p_24 < 32); p_24 = safe_add_func_int32_t_s_s(p_24, 8))
        { /* block id: 411 */
            uint16_t l_1306 = 65535UL;
            int32_t l_1308 = (-1L);
            for (l_1230 = 0; (l_1230 <= (-26)); l_1230 = safe_sub_func_int32_t_s_s(l_1230, 5))
            { /* block id: 414 */
                int32_t *l_1275 = &p_1316->g_30;
                (*p_1316->g_1276) = l_1275;
            }
            if (l_1253.sf)
                continue;
            (*p_1316->g_1148) ^= (safe_lshift_func_int8_t_s_s(((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(l_1281.s042ea5da95467871)) && ((VECTOR(int32_t, 8))(((!(safe_add_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(0x35117576L, GROUP_DIVERGE(2, 1))), (safe_mod_func_uint16_t_u_u((p_24 && p_24), (safe_sub_func_uint16_t_u_u(l_65.z, ((safe_add_func_uint64_t_u_u(l_1281.sc, (safe_mod_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(0x34L, ((*p_26) >= (p_24 > ((safe_mod_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s((l_1308 = ((((((safe_mod_func_int16_t_s_s((safe_div_func_int16_t_s_s(p_24, 5UL)), (*p_1316->g_21))) , p_1316->g_128.sa) , l_1306) , p_24) | p_24) == l_1307)), 0xFAL)), 0)), (*p_1316->g_399))) , (-10L)))))), l_1266.s4)))) < 0L)))))))) == l_1261.y), ((VECTOR(int32_t, 4))(3L)), p_24, 1L, 0x77B4D23EL)).s6546316220102067))).se, p_24)) & p_1316->g_884.sb), (*p_26)));
        }
    }
    return l_1309.s2540;
}


/* ------------------------------------------ */
/* 
 * reads : p_1316->g_77 p_1316->g_34 p_1316->g_109 p_1316->g_50 p_1316->g_67 p_1316->g_70 p_1316->g_10 p_1316->g_63 p_1316->g_117 p_1316->g_128 p_1316->g_132 p_1316->g_133 p_1316->g_137 p_1316->g_158 p_1316->g_157 p_1316->g_69 p_1316->g_35 p_1316->g_185 p_1316->g_187 p_1316->g_115 p_1316->g_64 p_1316->g_219 p_1316->g_220 p_1316->g_30 p_1316->g_21 p_1316->g_22 p_1316->g_280 p_1316->g_336 p_1316->g_338 p_1316->g_339 p_1316->g_353 p_1316->g_354 p_1316->g_355 p_1316->g_358 p_1316->g_363 p_1316->g_366 p_1316->g_369 p_1316->g_370 p_1316->g_119 p_1316->g_33 p_1316->g_322 p_1316->g_442 p_1316->g_447 p_1316->g_448 p_1316->g_452 p_1316->g_455 p_1316->g_399 p_1316->g_459 p_1316->g_461 p_1316->g_475 p_1316->g_476 p_1316->g_483 p_1316->g_390 p_1316->g_529 p_1316->g_554 p_1316->g_494 p_1316->g_606 p_1316->g_555 p_1316->g_556 p_1316->g_647 p_1316->g_676 p_1316->g_677 p_1316->g_679 p_1316->g_711 p_1316->g_714 p_1316->g_721 p_1316->g_753 p_1316->g_362 p_1316->g_756 p_1316->g_567 p_1316->g_783 p_1316->g_797 p_1316->g_784 p_1316->g_44 p_1316->g_861 p_1316->g_884 p_1316->g_887 p_1316->g_939 p_1316->g_950 p_1316->g_968 p_1316->g_969 p_1316->g_970 p_1316->g_998 p_1316->g_1004 p_1316->g_1005 p_1316->g_1006 p_1316->g_1009 p_1316->g_1014 p_1316->g_1040 p_1316->g_1058 p_1316->g_1071 p_1316->g_1074 p_1316->g_1081 p_1316->g_1102 p_1316->g_1112 p_1316->g_1120 p_1316->g_1126 p_1316->g_1137 p_1316->g_757 p_1316->g_1148
 * writes: p_1316->g_77 p_1316->g_115 p_1316->g_117 p_1316->g_119 p_1316->g_137 p_1316->g_157 p_1316->g_63 p_1316->g_185 p_1316->g_187 p_1316->g_70 p_1316->g_158 p_1316->g_362 p_1316->g_390 p_1316->g_280 p_1316->g_399 p_1316->g_69 p_1316->g_461 p_1316->g_370 p_1316->g_555 p_1316->g_567 p_1316->g_132 p_1316->g_556 p_1316->g_647 p_1316->g_722 p_1316->g_494 p_1316->g_757 p_1316->g_133 p_1316->g_849 p_1316->g_363 p_1316->g_358
 */
int32_t * func_39(int16_t * p_40, int8_t * p_41, int16_t * p_42, int8_t * p_43, struct S1 * p_1316)
{ /* block id: 19 */
    VECTOR(int64_t, 16) l_75 = (VECTOR(int64_t, 16))(0x05BA9186717EFFEBL, (VECTOR(int64_t, 4))(0x05BA9186717EFFEBL, (VECTOR(int64_t, 2))(0x05BA9186717EFFEBL, 0x2B9CE03596026DF2L), 0x2B9CE03596026DF2L), 0x2B9CE03596026DF2L, 0x05BA9186717EFFEBL, 0x2B9CE03596026DF2L, (VECTOR(int64_t, 2))(0x05BA9186717EFFEBL, 0x2B9CE03596026DF2L), (VECTOR(int64_t, 2))(0x05BA9186717EFFEBL, 0x2B9CE03596026DF2L), 0x05BA9186717EFFEBL, 0x2B9CE03596026DF2L, 0x05BA9186717EFFEBL, 0x2B9CE03596026DF2L);
    int64_t *l_76 = &p_1316->g_77[1][2][0];
    VECTOR(uint64_t, 4) l_78 = (VECTOR(uint64_t, 4))(0xC12F6744ED4C97A6L, (VECTOR(uint64_t, 2))(0xC12F6744ED4C97A6L, 1UL), 1UL);
    int8_t *l_102[6] = {(void*)0,&p_1316->g_10,(void*)0,(void*)0,&p_1316->g_10,(void*)0};
    int32_t *l_114[3];
    uint64_t *l_116 = &p_1316->g_117;
    uint64_t *l_118 = &p_1316->g_119;
    int8_t **l_823 = &p_1316->g_133;
    int16_t *l_1052 = (void*)0;
    int16_t *l_1053[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint16_t l_1054 = 65535UL;
    VECTOR(uint8_t, 2) l_1057 = (VECTOR(uint8_t, 2))(8UL, 0UL);
    VECTOR(uint8_t, 8) l_1063 = (VECTOR(uint8_t, 8))(0x48L, (VECTOR(uint8_t, 4))(0x48L, (VECTOR(uint8_t, 2))(0x48L, 251UL), 251UL), 251UL, 0x48L, 251UL);
    VECTOR(uint8_t, 16) l_1066 = (VECTOR(uint8_t, 16))(0x76L, (VECTOR(uint8_t, 4))(0x76L, (VECTOR(uint8_t, 2))(0x76L, 0x60L), 0x60L), 0x60L, 0x76L, 0x60L, (VECTOR(uint8_t, 2))(0x76L, 0x60L), (VECTOR(uint8_t, 2))(0x76L, 0x60L), 0x76L, 0x60L, 0x76L, 0x60L);
    VECTOR(uint8_t, 8) l_1075 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x4FL), 0x4FL), 0x4FL, 1UL, 0x4FL);
    VECTOR(uint8_t, 2) l_1076 = (VECTOR(uint8_t, 2))(0UL, 1UL);
    VECTOR(uint8_t, 16) l_1077 = (VECTOR(uint8_t, 16))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 246UL), 246UL), 246UL, 8UL, 246UL, (VECTOR(uint8_t, 2))(8UL, 246UL), (VECTOR(uint8_t, 2))(8UL, 246UL), 8UL, 246UL, 8UL, 246UL);
    VECTOR(uint8_t, 2) l_1078 = (VECTOR(uint8_t, 2))(0x75L, 1UL);
    uint16_t **l_1083[2][9];
    uint16_t ***l_1082 = &l_1083[1][7];
    VECTOR(uint32_t, 2) l_1090 = (VECTOR(uint32_t, 2))(6UL, 0x542F6824L);
    int64_t l_1101 = 0L;
    VECTOR(int16_t, 2) l_1111 = (VECTOR(int16_t, 2))(0x1993L, (-1L));
    VECTOR(int16_t, 16) l_1113 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x7FD4L), 0x7FD4L), 0x7FD4L, (-1L), 0x7FD4L, (VECTOR(int16_t, 2))((-1L), 0x7FD4L), (VECTOR(int16_t, 2))((-1L), 0x7FD4L), (-1L), 0x7FD4L, (-1L), 0x7FD4L);
    int8_t **l_1116 = &l_102[5];
    int8_t *l_1118 = &p_1316->g_10;
    int8_t **l_1117 = &l_1118;
    uint16_t l_1119 = 65531UL;
    uint8_t l_1121 = 0x1AL;
    uint32_t l_1122 = 0x89D23285L;
    int32_t **l_1124 = (void*)0;
    uint32_t l_1133 = 7UL;
    VECTOR(uint8_t, 8) l_1136 = (VECTOR(uint8_t, 8))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x59L), 0x59L), 0x59L, 4UL, 0x59L);
    uint32_t l_1144 = 0xE092A0EFL;
    uint16_t l_1145 = 1UL;
    int64_t l_1146 = 0L;
    uint64_t l_1147 = 0x434FEF0418A6FBCFL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_114[i] = &p_1316->g_115;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
            l_1083[i][j] = &p_1316->g_399;
    }
    l_1054 &= ((((safe_sub_func_int64_t_s_s(((*l_76) ^= ((VECTOR(int64_t, 16))(l_75.sd4ce2787ff9e38bd)).s6), p_1316->g_34.s4)) <= 0x5B1EAD21L) , (p_1316->g_358.s0 = (((VECTOR(uint64_t, 4))(0UL, ((VECTOR(uint64_t, 4))(l_78.ywyw)).w, 0x1A3ACD9B7196FBADL, 0x8C809647BF50803CL)).w <= func_79(func_85(func_89(((*l_823) = func_94(func_96(l_102[5], func_103((((*l_118) = ((*l_116) = ((~(-1L)) || ((0xDFL & l_78.y) | ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(p_1316->g_109.xx)).xyyx && ((VECTOR(int32_t, 8))((p_1316->g_115 = (l_78.w | ((((0x46544C23B8D9BCA3L == (safe_lshift_func_int16_t_s_s((safe_add_func_uint64_t_u_u(p_1316->g_50.x, 18446744073709551615UL)), 11))) & 0x35L) != l_75.s8) && p_1316->g_67.s3))), 0x09FD49C4L, p_1316->g_70.y, 0x24C0CEF9L, ((VECTOR(int32_t, 2))(1L)), 5L, 0L)).odd))).xwyywzyx, ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 8))((-7L)))))).s1754256336720162, ((VECTOR(int32_t, 16))(0x4D72531CL))))).s41, ((VECTOR(int32_t, 2))(0x2464987AL)), ((VECTOR(int32_t, 2))((-8L)))))) == ((VECTOR(int32_t, 2))(0x46D51E7DL))))), ((VECTOR(int32_t, 2))(0x7C478769L))))).odd)))) , (void*)0), (*p_41), p_1316->g_63.s8, p_40, p_1316->g_77[1][2][0], p_1316), p_1316->g_133, p_1316->g_70.y, p_1316->g_132, p_1316), p_1316)), p_1316->g_476.y, p_1316->g_797.y, l_114[1], p_1316), p_1316->g_475.s7, p_1316->g_64.s2, p_1316), l_114[1], p_1316->g_861.x, p_1316->g_442.w, p_1316->g_44, p_1316)))) , (*p_1316->g_158));
    l_114[0] = func_89(&p_1316->g_10, (((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 4))(l_1057.xxxy)).xywyyyzy, ((VECTOR(uint8_t, 2))(p_1316->g_1058.s2b)).xyxxyxxx, ((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(246UL, 255UL))))).yxyyxxxyxyyxxyxy + ((VECTOR(uint8_t, 4))(0x0FL, ((VECTOR(uint8_t, 2))(l_1063.s14)), 0xAFL)).wzwwzyyxwzzxwwyy))) + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(l_1066.s99)).yyxxxxxyyxxyxxyx - ((VECTOR(uint8_t, 2))(1UL, 255UL)).yxxyxxxyxxxxyxxy)))))).odd, ((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(0x05L, 0x4FL)).xyyyyyyxyyyxxxxy - ((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 8))(p_1316->g_1071.s9b7384e2)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(p_1316->g_1074.xyzwyzwzzxzzxxwx)).s04 + ((VECTOR(uint8_t, 16))((-((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 8))(l_1075.s57133354)).s4106346623020454, ((VECTOR(uint8_t, 4))(l_1076.xxyy)).ywwzxyzyyzywxxyz)))))).s1a))).yxxyyxyx))) - ((VECTOR(uint8_t, 16))(l_1077.s5ab353807dd6adcd)).odd))).even))).zwzxxywxywzxxyxx))), ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))(l_1078.xyxyyyyx)), ((VECTOR(uint8_t, 2))(1UL, 1UL)).xyxyyxyx))).s2544211512302220))).hi, (uint8_t)(safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 4))((p_1316->g_1081 == l_1082), ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))((~((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),uint32_t,((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(0x0DB26773L, 0xC0B5FE6CL)).yyxxxxxy, ((VECTOR(uint32_t, 2))(l_1090.yx)).xxyxyxyy, ((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),uint32_t,((VECTOR(uint32_t, 2))(1UL, 0x631E6637L)).xxyx, (uint32_t)((safe_add_func_uint16_t_u_u((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 2))(0x33A94270L, 0x2020BE77L)).yxxxyxxyyyxxyyyx))).lo ^ ((VECTOR(uint32_t, 8))(4294967295UL, 0xE705A478L, l_1101, ((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 4))(p_1316->g_1102.sd7cb)), (uint32_t)p_1316->g_67.s3))), 0xAE76CDDFL))))), ((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(4294967295UL, 0xA2C1DD7AL)).xxyxxxxy, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(0x7ADFA4C4L, 0UL)).yyyy + ((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 8))(4294967294UL, p_1316->g_711.x, (safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(l_1111.xy)) && ((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 4))((~((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 16))(p_1316->g_1112.sbdb8e95db9fc8cca)).hi, ((VECTOR(int16_t, 2))((-10L), 0x16B7L)).yyxyyxyy))).s5), ((VECTOR(int16_t, 2))(8L, 0x21E2L)), (-1L))).wxzwwyzw, ((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 4))(5L, (-1L), 0x6DBBL, 0L)).zwwyxyyw, ((VECTOR(int16_t, 2))(l_1113.s67)).xyyyxxyy))).s3722011341626610, ((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 16))(((safe_mul_func_uint8_t_u_u((((*l_823) != (p_41 = ((*l_1117) = ((*l_1116) = p_41)))) | (*p_1316->g_399)), 0x3DL)) <= p_1316->g_1014.sb), 0x2671L, ((VECTOR(int16_t, 2))((-1L))), (*p_1316->g_21), 0x3C18L, 3L, 0x4AD3L, ((VECTOR(int16_t, 4))(0x6E2CL)), 0L, ((VECTOR(int16_t, 2))(0x78E1L)), 0x71C6L)).sac5b, ((VECTOR(int16_t, 4))(0x318FL))))).ywzwyzxxywzxwwxx))).lo, ((VECTOR(int16_t, 8))((-1L)))))).s00))).xxyyyxyy && ((VECTOR(int16_t, 8))(0x52EAL))))).s7, (*p_1316->g_399))), p_1316->g_70.y, ((VECTOR(uint32_t, 4))(0x0F1AB96FL)))).s5223444670631444, ((VECTOR(uint32_t, 16))(0x2F494028L)), ((VECTOR(uint32_t, 16))(0xBDEEABCFL))))) + ((VECTOR(uint32_t, 16))(0UL))))).sa63e - ((VECTOR(uint32_t, 4))(4294967295UL))))).zxyxzxxz, ((VECTOR(uint32_t, 8))(0UL)), ((VECTOR(uint32_t, 8))(0x4004C132L))))).s40, ((VECTOR(uint32_t, 2))(0x1F83CC34L))))).xxyx))).wzwzwxwz, ((VECTOR(uint32_t, 8))(8UL)))))))).s22 + ((VECTOR(uint32_t, 2))(0x7589F46CL))))), 0xEB618BB5L, 4294967292UL))))).yywzzxwwzyzwzwxz, ((VECTOR(uint32_t, 16))(4294967295UL)), ((VECTOR(uint32_t, 16))(0xD0DBC24DL))))).hi + ((VECTOR(uint32_t, 8))(0x7B2C0A47L))))).s1222024213073247 + ((VECTOR(uint32_t, 16))(0x51980BBDL))))).sc && l_1119), 1UL)) < p_1316->g_1120), (uint32_t)p_1316->g_970.y))) - ((VECTOR(uint32_t, 4))(1UL))))).lo, ((VECTOR(uint32_t, 2))(0xBE7B4B98L))))).xyxy, ((VECTOR(uint32_t, 4))(0xD981D3A9L))))).ywxwwyyx))).s74, ((VECTOR(uint32_t, 2))(0x566ED5E0L)), ((VECTOR(uint32_t, 2))(4294967295UL))))).yyxx << ((VECTOR(uint32_t, 4))(32))))).odd, (uint32_t)0x09E0826DL, (uint32_t)l_1121))).yyxyyxxx, ((VECTOR(uint32_t, 8))(0x3D51405CL))))) - ((VECTOR(uint32_t, 8))(0xD6542CDDL))))) + ((VECTOR(uint32_t, 8))(4UL))))).s2624015156657707))).s25 | ((VECTOR(uint32_t, 2))(0xA076E21DL))))), 0x5A20012AL)).w, (-7L))), (uint8_t)GROUP_DIVERGE(1, 1)))))))))).hi + ((VECTOR(uint8_t, 4))(1UL))))).w , 7UL), l_1122, &p_1316->g_157, p_1316);
    (*p_1316->g_1126) = l_114[1];
    (*p_1316->g_757) = (safe_lshift_func_uint8_t_u_u((((2UL > 0x248AL) <= (p_1316->g_354.y ^ ((*l_76) = (0xF324FED4L < ((safe_add_func_int8_t_s_s((((((((l_1133 , (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(0x31L, ((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 4))(0UL, ((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 4))(l_1136.s2422)), ((VECTOR(uint8_t, 8))(p_1316->g_1137.xyyxyyxy)).even))).z, 0x8DL, 0xE9L)).zwzyxwzx, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(247UL, (p_1316->g_369.s9 || (safe_rshift_func_uint16_t_u_u(((((*p_1316->g_399) <= 0x1061L) == (-4L)) , (*p_1316->g_399)), (*p_1316->g_399)))), ((VECTOR(uint8_t, 8))(255UL)), ((VECTOR(uint8_t, 4))(0xD5L)), 1UL, 0x03L)).odd + ((VECTOR(uint8_t, 8))(248UL))))) + ((VECTOR(uint8_t, 8))(1UL)))))))), l_1144, ((VECTOR(uint8_t, 4))(1UL)), 251UL, 0xD8L)).s8, (*p_41)))) != l_1145) , l_1146) , (void*)0) == &p_1316->g_137) , p_1316->g_455.z) <= 6UL), (*p_41))) & l_1147))))) , 0xB1L), GROUP_DIVERGE(1, 1)));
    return p_1316->g_1148;
}


/* ------------------------------------------ */
/* 
 * reads : p_1316->g_219
 * writes:
 */
uint64_t  func_79(int8_t * p_80, int32_t * p_81, uint32_t  p_82, uint32_t  p_83, int16_t * p_84, struct S1 * p_1316)
{ /* block id: 356 */
    int64_t l_1048 = (-1L);
    int8_t *l_1049 = (void*)0;
    int32_t *l_1050 = (void*)0;
    l_1050 = (l_1048 , p_81);
    return p_1316->g_219.s3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1316->g_784 p_1316->g_44 p_1316->g_21 p_1316->g_22 p_1316->g_861 p_1316->g_455 p_1316->g_399 p_1316->g_115 p_1316->g_647 p_1316->g_884 p_1316->g_77 p_1316->g_887 p_1316->g_461 p_1316->g_452 p_1316->g_353 p_1316->g_132 p_1316->g_606 p_1316->g_939 p_1316->g_475 p_1316->g_137 p_1316->g_63 p_1316->g_950 p_1316->g_968 p_1316->g_969 p_1316->g_970 p_1316->g_529 p_1316->g_158 p_1316->g_157 p_1316->g_128 p_1316->g_998 p_1316->g_1004 p_1316->g_1005 p_1316->g_1006 p_1316->g_1009 p_1316->g_1014 p_1316->g_756 p_1316->g_1040
 * writes: p_1316->g_137 p_1316->g_115 p_1316->g_647 p_1316->g_69 p_1316->g_461 p_1316->g_117 p_1316->g_363 p_1316->g_757 p_1316->g_556
 */
int8_t * func_85(int32_t * p_86, uint64_t  p_87, int16_t  p_88, struct S1 * p_1316)
{ /* block id: 300 */
    int32_t l_859 = 0x433CC3AEL;
    int32_t ****l_868 = &p_1316->g_363;
    int32_t ****l_869 = &p_1316->g_363;
    int8_t *l_870 = (void*)0;
    int64_t *l_889 = &p_1316->g_461;
    int64_t **l_888 = &l_889;
    int32_t l_890 = (-1L);
    int8_t l_891 = 1L;
    int16_t **l_905[8] = {&p_1316->g_44,&p_1316->g_44,&p_1316->g_44,&p_1316->g_44,&p_1316->g_44,&p_1316->g_44,&p_1316->g_44,&p_1316->g_44};
    VECTOR(uint32_t, 8) l_949 = (VECTOR(uint32_t, 8))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0x8978128CL), 0x8978128CL), 0x8978128CL, 2UL, 0x8978128CL);
    VECTOR(uint8_t, 8) l_965 = (VECTOR(uint8_t, 8))(0xEBL, (VECTOR(uint8_t, 4))(0xEBL, (VECTOR(uint8_t, 2))(0xEBL, 255UL), 255UL), 255UL, 0xEBL, 255UL);
    VECTOR(uint8_t, 8) l_978 = (VECTOR(uint8_t, 8))(0x84L, (VECTOR(uint8_t, 4))(0x84L, (VECTOR(uint8_t, 2))(0x84L, 0xD8L), 0xD8L), 0xD8L, 0x84L, 0xD8L);
    VECTOR(int32_t, 8) l_1001 = (VECTOR(int32_t, 8))(0x43008A28L, (VECTOR(int32_t, 4))(0x43008A28L, (VECTOR(int32_t, 2))(0x43008A28L, 0x4A1C21E8L), 0x4A1C21E8L), 0x4A1C21E8L, 0x43008A28L, 0x4A1C21E8L);
    VECTOR(int32_t, 4) l_1007 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x201E4077L), 0x201E4077L);
    int32_t l_1015 = 0x670F2ABCL;
    VECTOR(int64_t, 2) l_1019 = (VECTOR(int64_t, 2))(0x4830EDBA3F97D467L, 0L);
    int32_t l_1028 = 3L;
    int8_t *l_1047 = (void*)0;
    int i;
    if ((((l_859 |= p_88) >= (p_87 , ((*p_1316->g_784) != (*p_1316->g_784)))) != (*p_1316->g_21)))
    { /* block id: 302 */
        int32_t **l_860 = (void*)0;
        int32_t l_862 = 0x3A2C8481L;
        int32_t ****l_867 = &p_1316->g_363;
        p_86 = ((((*p_1316->g_399) = ((((VECTOR(int64_t, 2))(0x72304381AF4F5486L, 1L)).hi ^ ((((void*)0 != l_860) && ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 4))(p_1316->g_861.xwyw)).lo, ((VECTOR(uint8_t, 2))(251UL, 0x23L))))).hi) == l_862)) | (((((safe_sub_func_uint8_t_u_u((p_88 < (safe_mul_func_uint8_t_u_u(((l_868 = l_867) != l_869), p_88))), 0xB3L)) >= ((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 4))(0x032333776666A1F6L, (7UL != p_1316->g_455.y), 0x83D90C95BF023CCCL, 0x6F9555787C98B5E5L)).yyzzwzxz, ((VECTOR(uint64_t, 8))(0UL))))).s5) , 0x24BAL) & GROUP_DIVERGE(1, 1)) , l_862))) <= l_862) , (void*)0);
    }
    else
    { /* block id: 306 */
        int8_t *l_871[7][9][4] = {{{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10}},{{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10}},{{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10}},{{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10}},{{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10}},{{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10}},{{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10},{(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10}}};
        uint32_t *l_878 = &p_1316->g_647;
        VECTOR(int32_t, 16) l_883 = (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-1L)), (-1L)), (-1L), (-3L), (-1L), (VECTOR(int32_t, 2))((-3L), (-1L)), (VECTOR(int32_t, 2))((-3L), (-1L)), (-3L), (-1L), (-3L), (-1L));
        int32_t l_944[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
        VECTOR(uint64_t, 4) l_952 = (VECTOR(uint64_t, 4))(0xA31721B66AEC2027L, (VECTOR(uint64_t, 2))(0xA31721B66AEC2027L, 0x7FAD6C2522FF17F6L), 0x7FAD6C2522FF17F6L);
        VECTOR(uint8_t, 4) l_959 = (VECTOR(uint8_t, 4))(0x72L, (VECTOR(uint8_t, 2))(0x72L, 0UL), 0UL);
        VECTOR(uint8_t, 2) l_960 = (VECTOR(uint8_t, 2))(0UL, 250UL);
        VECTOR(int32_t, 4) l_1002 = (VECTOR(int32_t, 4))(0x1DA48221L, (VECTOR(int32_t, 2))(0x1DA48221L, 0x2A3A0E9AL), 0x2A3A0E9AL);
        VECTOR(int32_t, 8) l_1003 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x2C48E861L), 0x2C48E861L), 0x2C48E861L, 1L, 0x2C48E861L);
        VECTOR(int32_t, 4) l_1008 = (VECTOR(int32_t, 4))(0x012F4802L, (VECTOR(int32_t, 2))(0x012F4802L, 0x6296ED0EL), 0x6296ED0EL);
        int32_t **l_1016 = &p_1316->g_556;
        int16_t l_1020 = 0x603BL;
        int32_t *l_1023 = (void*)0;
        int32_t *l_1024 = (void*)0;
        int32_t *l_1025 = (void*)0;
        int32_t *l_1026 = (void*)0;
        int32_t *l_1027 = (void*)0;
        int32_t *l_1029 = (void*)0;
        int32_t *l_1030 = &l_1028;
        int32_t *l_1031 = (void*)0;
        int32_t *l_1032 = &p_1316->g_157;
        int32_t *l_1033 = (void*)0;
        int32_t *l_1034 = (void*)0;
        int32_t *l_1035 = &l_1028;
        int32_t *l_1036[5][7][6] = {{{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028}},{{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028}},{{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028}},{{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028}},{{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028},{(void*)0,(void*)0,&p_1316->g_157,(void*)0,(void*)0,&l_1028}}};
        uint32_t l_1037 = 0xB288035FL;
        int i, j, k;
        (*p_86) |= (l_870 == l_871[6][2][0]);
        if ((safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s(((p_88 || p_88) , ((l_890 = (p_1316->g_69.z = ((safe_div_func_uint32_t_u_u(((*l_878)--), 1L)) <= (safe_rshift_func_int8_t_s_u(p_87, (((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(l_883.sb96d333bdb6b517f)).hi && ((VECTOR(int32_t, 8))(p_1316->g_884.sf29cd292))))).s1 < p_1316->g_77[1][2][0]) == ((safe_add_func_int64_t_s_s((l_883.sb , ((VECTOR(int64_t, 2))(p_1316->g_887.xx)).hi), ((l_888 == (void*)0) <= l_883.sb))) ^ 0xC4ECL)) ^ 0x79L)))))) || p_87)), p_88)), l_883.s0)))
        { /* block id: 311 */
            int8_t *l_892 = &p_1316->g_10;
            l_891 |= (*p_86);
            return l_892;
        }
        else
        { /* block id: 314 */
            uint32_t l_900 = 0xAD880813L;
            int8_t *l_907 = (void*)0;
            int32_t **l_922 = &p_1316->g_757;
            int32_t ***l_921 = &l_922;
            int32_t l_945 = 0x28BC4942L;
            VECTOR(int16_t, 2) l_973 = (VECTOR(int16_t, 2))((-10L), 8L);
            int i;
            for (p_87 = 22; (p_87 == 2); --p_87)
            { /* block id: 317 */
                uint32_t l_895 = 1UL;
                int32_t l_896 = 0x7457E47CL;
                int32_t *l_897 = (void*)0;
                int32_t *l_898 = &l_890;
                int32_t *l_899[2];
                int16_t *l_906 = (void*)0;
                int32_t ***l_923 = (void*)0;
                VECTOR(int32_t, 2) l_938 = (VECTOR(int32_t, 2))(5L, 6L);
                int i;
                for (i = 0; i < 2; i++)
                    l_899[i] = (void*)0;
                l_895 &= (*p_86);
                --l_900;
                for (p_1316->g_461 = (-2); (p_1316->g_461 < 21); p_1316->g_461 = safe_add_func_uint32_t_u_u(p_1316->g_461, 5))
                { /* block id: 322 */
                    (*p_86) = (func_103(l_905[0], p_1316->g_452.y, p_1316->g_353.y, l_906, (*p_86), p_1316) , 0x539BF2E9L);
                    return l_907;
                }
                (*p_86) = (((safe_rshift_func_uint16_t_u_s((((p_88 = (((safe_div_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s(((*l_898) |= ((safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((safe_sub_func_int32_t_s_s((~(*p_86)), (safe_rshift_func_int16_t_s_u(((((l_921 != ((*l_869) = l_923)) , (l_883.sb || (safe_sub_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((p_87 || l_883.s6), p_1316->g_606.x)), 2)), (((((safe_add_func_int64_t_s_s((safe_lshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u(p_87, (safe_div_func_uint8_t_u_u((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(0x0590D5C8L, 0x66B84C73L)) | ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 2))(l_938.yx)).yxxyyyyyxyyyyyyy, ((VECTOR(int32_t, 8))(p_1316->g_939.yxzywyzw)).s5077137015404375))).s4c <= ((VECTOR(int32_t, 4))((safe_rshift_func_int16_t_s_u((safe_div_func_uint8_t_u_u((p_1316->g_475.s3 , 0x49L), p_87)), 15)), ((VECTOR(int32_t, 2))((-1L))), 0x07BF90BAL)).even))).yxyxxyxx || ((VECTOR(int32_t, 8))(2L))))), ((VECTOR(int32_t, 2))(0x7F76D427L)), 0L, ((VECTOR(int32_t, 4))(5L)), 0L)).s02, (int32_t)l_944[0]))), (-1L), 0x127D2DE2L)).lo, (int32_t)0x25312A87L)))))).xyxxxxxxyxxyyxxy && ((VECTOR(int32_t, 16))(8L))))).sa < 1UL), 0x43L)))), l_944[0])), 1UL)) & 0xBC55L) && (*p_1316->g_399)) > 0x0EL) ^ p_1316->g_63.s8))))) ^ 0xBB48L) < l_883.sf), FAKE_DIVERGE(p_1316->global_0_offset, get_global_id(0), 10))))), 12)), l_945)) | 4L)))), 1UL)) >= (*p_1316->g_399)) & p_88)) && 0x689AL) ^ p_87), 3)) , 0xCFAACCD6L) <= 0x9E6057E8L);
                if (p_1316->g_115)
                    goto lbl_946;
            }
lbl_946:
            (*p_86) = (*p_86);
            if (l_890)
                goto lbl_979;
lbl_979:
            (*p_86) = (safe_div_func_int16_t_s_s(((((*l_878) = ((VECTOR(uint32_t, 4))(l_949.s0101)).y) ^ ((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(uint32_t, 2))(p_1316->g_950.s60)).yyxyyyyx, ((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 16))((safe_unary_minus_func_uint64_t_u(l_944[5])), (((*l_889) = p_88) ^ ((VECTOR(uint64_t, 16))(0xBCA60F5DED8517A6L, p_88, ((VECTOR(uint64_t, 2))(l_952.yy)), (safe_mul_func_int16_t_s_s((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))((safe_lshift_func_uint16_t_u_u(p_87, (*p_1316->g_399))), ((VECTOR(uint8_t, 4))((-((VECTOR(uint8_t, 4))(l_959.yxwy))))), 0x26L, 9UL, 0xDAL)).s1556001313002046, ((VECTOR(uint8_t, 16))(l_960.yyyxyyxxxyyxyyxx)), ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 4))(l_965.s0510)).hi, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))(p_1316->g_968.s3b46)).even, ((VECTOR(uint8_t, 2))(255UL, 255UL)), ((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(p_1316->g_969.s55216062)).s3164143715124162, ((VECTOR(uint8_t, 16))(p_1316->g_970.wywxzzzwxywxwyyz)), ((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 16))(255UL, ((p_88 == (safe_sub_func_uint8_t_u_u((p_1316->g_529.x & (((VECTOR(int16_t, 2))(l_973.xx)).odd == (-3L))), ((safe_div_func_int8_t_s_s((safe_add_func_int16_t_s_s((((((VECTOR(uint8_t, 16))(l_978.s4142073607743050)).s3 ^ (0x33L ^ 7L)) ^ p_88) , 0L), l_960.y)), p_88)) , p_88)))) > 4L), ((VECTOR(uint8_t, 8))(0xBEL)), ((VECTOR(uint8_t, 2))(1UL)), p_87, 0UL, 249UL, 0xC1L)).sbbfa, ((VECTOR(uint8_t, 4))(255UL))))).zzwyyyxxwywxwzzz))).s21))).yyxxxxxy + ((VECTOR(uint8_t, 8))(255UL))))).s03))).xyxyxxxyyxyyyyxx + ((VECTOR(uint8_t, 16))(0x60L))))).sd7 + ((VECTOR(uint8_t, 2))(255UL))))).xyyyxxxyxyxyxyxx ^ ((VECTOR(uint8_t, 16))(0x76L)))))))).sf3))) + ((VECTOR(uint8_t, 2))(1UL))))).even != 0x1BL), 0x2FAAL)), p_88, l_952.z, 0x98C4DD86142D2E41L, ((VECTOR(uint64_t, 8))(0xD0FA765412498D54L)))).sa), 1UL, 1UL, 1UL, 0x46DD48C3L, ((VECTOR(uint32_t, 4))(0x600EB299L)), ((VECTOR(uint32_t, 2))(4294967295UL)), 4294967295UL, 4294967290UL, 0xB6978360L, 0x61CD9401L)).s86, ((VECTOR(uint32_t, 2))(1UL))))).xyyyxxxx))).s2) != p_1316->g_77[1][1][0]), l_952.w));
            (*p_86) = ((safe_lshift_func_uint16_t_u_u(((*p_1316->g_158) || p_1316->g_128.s1), 10)) < (safe_sub_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(65533UL, (safe_mod_func_uint64_t_u_u(p_88, (safe_lshift_func_int8_t_s_s((0x3D5CL != (safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_1316->local_0_offset, get_local_id(0), 10), p_1316->g_63.sa))), (safe_lshift_func_int16_t_s_s((!1L), 12)))))))), (safe_add_func_uint16_t_u_u(((*p_1316->g_399) = (p_87 != ((VECTOR(uint8_t, 2))(4UL, 0x01L)).even)), (safe_div_func_uint16_t_u_u(0xE2A7L, p_87)))))));
        }
        l_1028 ^= ((((VECTOR(uint32_t, 16))(p_1316->g_998.s0633105274137252)).s4 , ((*p_1316->g_784) != ((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(l_1001.s2063)), (int32_t)((VECTOR(int32_t, 2))(0x390B91AEL, 1L)).lo))).yxzwzyxw && ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(l_1002.wxxzwzzy)) >= ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(l_1003.s24776276)).s5270344166632244 && ((VECTOR(int32_t, 4))(p_1316->g_1004.xyxw)).xywxxwxxyyzxzyzz))).lo))).s22, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(1L, 0x294F0AF9L)).xyyx, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(p_1316->g_1005.s0340562454427274)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1316->g_1006.wxwz)), ((*p_86) = ((VECTOR(int32_t, 8))(l_1007.xwzyxyxz)).s4), ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_1008.zzxz)).zxxwwzyz ^ ((VECTOR(int32_t, 2))(p_1316->g_1009.s45)).yyyxxxyy))), 4L, 0x22EA691FL, 0x577C59EFL)), ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))((safe_lshift_func_int16_t_s_u(((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(p_1316->g_1014.sae77c2eb)).hi, ((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(l_1015, 9UL, (((*l_1016) = func_89(&l_891, p_87, p_87, ((*p_1316->g_756) = p_86), p_1316)) != &l_1015), ((safe_sub_func_int64_t_s_s((l_1020 = ((**l_888) = ((VECTOR(int64_t, 2))(l_1019.yx)).even)), ((VECTOR(uint64_t, 16))(abs(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 2))(8L, 0x3A526179019C0531L)), ((VECTOR(int64_t, 16))(((safe_mul_func_uint16_t_u_u(p_87, (*p_1316->g_21))) != (*p_1316->g_399)), 0x369A4311F878B5CCL, ((VECTOR(int64_t, 8))((-3L))), 0x713B906AE1D83AD7L, l_890, ((VECTOR(int64_t, 4))(1L)))).s3d)))))), ((VECTOR(int64_t, 2))(0x13C3A1D1F6855178L))))), (-6L), 0x69D2CD103FB12C05L)).zwyyywxx || ((VECTOR(int64_t, 8))(0x464525E9659E063DL))))).s7063043153624610))).s9)) ^ (*p_86)), ((VECTOR(uint8_t, 2))(1UL)), ((VECTOR(uint8_t, 4))(255UL)), ((VECTOR(uint8_t, 4))(255UL)), 1UL, 0xEAL)).even, ((VECTOR(uint8_t, 8))(0x76L))))).lo))).even, ((VECTOR(uint8_t, 2))(0x20L))))).xyxyyyyx))).s0, p_87)) || p_87), 10)), ((VECTOR(int32_t, 4))((-7L))), 1L, 0x73684156L, 0x734E815BL)).even && ((VECTOR(int32_t, 4))((-1L)))))).lo, ((VECTOR(int32_t, 2))(0x6C9EE572L)), ((VECTOR(int32_t, 2))(1L))))), (-10L), (-5L))), ((VECTOR(int32_t, 4))(0x136F74EBL))))).yywwyzxyyyywzwwz))).sa2b1))).even))).xyxxxxyy))).s6773514417060344 && ((VECTOR(int32_t, 16))(0x2920D775L))))).s05 && ((VECTOR(int32_t, 2))(0x1FAEB8AEL))))).odd, p_87)) , (*p_1316->g_784)))) || l_883.s1);
        l_1037--;
    }
    l_1028 = p_1316->g_1040;
    for (l_891 = 0; (l_891 <= 12); l_891 = safe_add_func_int32_t_s_s(l_891, 9))
    { /* block id: 351 */
        int32_t l_1045 = 0x4E09B8F9L;
        int32_t **l_1046 = &p_1316->g_757;
        l_1045 |= (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))((-1L), 0x24AEE69F0D797D18L, 0x5F28D43C596BA7C7L, (-1L))).z, ((VECTOR(int64_t, 2))(0x64C33D8BEED7643CL, (-1L))).hi));
        (*l_1046) = &l_1045;
    }
    return l_1047;
}


/* ------------------------------------------ */
/* 
 * reads : p_1316->g_399 p_1316->g_137 p_1316->g_358 p_1316->g_21 p_1316->g_22 p_1316->g_115
 * writes: p_1316->g_115 p_1316->g_849 p_1316->g_185 p_1316->g_137 p_1316->g_157
 */
int32_t * func_89(int8_t * p_90, uint32_t  p_91, uint16_t  p_92, int32_t * p_93, struct S1 * p_1316)
{ /* block id: 292 */
    int32_t *l_824 = (void*)0;
    int32_t *l_825 = &p_1316->g_115;
    int32_t *l_826 = (void*)0;
    int32_t *l_827 = &p_1316->g_157;
    int32_t *l_828 = (void*)0;
    int32_t l_829 = 0x7B406133L;
    int32_t *l_830 = (void*)0;
    VECTOR(int32_t, 8) l_831 = (VECTOR(int32_t, 8))(0x370CDA4AL, (VECTOR(int32_t, 4))(0x370CDA4AL, (VECTOR(int32_t, 2))(0x370CDA4AL, 4L), 4L), 4L, 0x370CDA4AL, 4L);
    int32_t *l_832[5];
    uint8_t l_833 = 1UL;
    VECTOR(int16_t, 8) l_842 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-9L)), (-9L)), (-9L), 0L, (-9L));
    int32_t ***l_848 = &p_1316->g_555;
    int32_t ****l_847[10][1];
    int64_t *l_852 = &p_1316->g_185;
    int64_t l_855[3];
    uint8_t l_856 = 0x05L;
    int16_t **l_857 = &p_1316->g_44;
    uint32_t l_858[2];
    int i, j;
    for (i = 0; i < 5; i++)
        l_832[i] = (void*)0;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_847[i][j] = &l_848;
    }
    for (i = 0; i < 3; i++)
        l_855[i] = (-5L);
    for (i = 0; i < 2; i++)
        l_858[i] = 0xCF239867L;
    (*p_93) = 1L;
    --l_833;
    (*p_93) = (safe_div_func_int32_t_s_s((((safe_div_func_int64_t_s_s((safe_div_func_uint16_t_u_u(((*p_1316->g_399) = (((((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 4))(l_842.s0630)).wxwxxwyy, ((VECTOR(int16_t, 8))((p_92 >= ((safe_mod_func_uint64_t_u_u((safe_div_func_int64_t_s_s(0x4821D1D21C06B1BCL, ((*p_1316->g_399) , (((((p_1316->g_849 = (void*)0) != &p_1316->g_555) > ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(0L, (((safe_rshift_func_uint16_t_u_s((0xF2763C4ACEBD6D7FL || ((VECTOR(int64_t, 8))(((*l_852) = (-2L)), ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 16))((p_91 != (safe_mul_func_int16_t_s_s((-4L), (-1L)))), 0x0351184C3A2C5B55L, 0x6DBE51E2A42B9798L, ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 8))((-1L))), 0x73904F22E7448B61L, (-1L), (-5L))).s22, ((VECTOR(int64_t, 2))((-4L)))))), ((VECTOR(int64_t, 4))(0x03B6DA7E48F4D4F1L)), 0L)).s7), 0)) <= 0x308A845F4FED235AL) > 0xDA23L), 1L, ((VECTOR(int64_t, 2))((-1L))), 0x2696BFEBD215B004L, 0L, 0x1AD6ECAFDA1C0AA4L)).s7726763003441630 ^ ((VECTOR(int64_t, 16))(0x6E0979A739E13702L))))).s8) >= p_1316->g_358.s0) ^ GROUP_DIVERGE(2, 1))))), GROUP_DIVERGE(0, 1))) == (*p_1316->g_21))), l_855[2], 0x2F34L, (*l_825), 0x2CD0L, l_856, 1L, 0x40B9L))))).lo == ((VECTOR(int16_t, 4))((-1L)))))).even, ((VECTOR(int16_t, 2))(1L))))).yxyy & ((VECTOR(int16_t, 4))(0x4674L))))).yywwyxzzyzwwyxzz, ((VECTOR(int16_t, 16))(1L))))).sa != 65529UL) , p_92), (*l_825), ((VECTOR(int16_t, 2))(0x1598L)), p_91, ((VECTOR(int16_t, 2))(0x2670L)), 0x4B59L)).s5, 0x7842L, 0x5452L, 0x3D0CL, ((VECTOR(int16_t, 4))(0x54C8L)))).s77, ((VECTOR(int16_t, 2))((-1L)))))).xyxy, ((VECTOR(int16_t, 4))(0x0957L)), ((VECTOR(int16_t, 4))(1L))))).z , l_857) == &p_1316->g_21) && 8L)), p_91)), 0x999E56F36C614B2FL)) != l_858[1]) ^ p_92), 8L));
    return p_93;
}


/* ------------------------------------------ */
/* 
 * reads : p_1316->g_158 p_1316->g_157 p_1316->g_109 p_1316->g_77 p_1316->g_64 p_1316->g_219 p_1316->g_220 p_1316->g_30 p_1316->g_10 p_1316->g_70 p_1316->g_21 p_1316->g_22 p_1316->g_187 p_1316->g_280 p_1316->g_69 p_1316->g_336 p_1316->g_338 p_1316->g_339 p_1316->g_63 p_1316->g_132 p_1316->g_353 p_1316->g_354 p_1316->g_355 p_1316->g_358 p_1316->g_363 p_1316->g_366 p_1316->g_369 p_1316->g_370 p_1316->g_119 p_1316->g_33 p_1316->g_322 p_1316->g_442 p_1316->g_447 p_1316->g_448 p_1316->g_452 p_1316->g_455 p_1316->g_399 p_1316->g_137 p_1316->g_459 p_1316->g_461 p_1316->g_475 p_1316->g_476 p_1316->g_483 p_1316->g_390 p_1316->g_115 p_1316->g_529 p_1316->g_554 p_1316->g_494 p_1316->g_606 p_1316->g_555 p_1316->g_556 p_1316->g_647 p_1316->g_128 p_1316->g_117 p_1316->g_676 p_1316->g_677 p_1316->g_679 p_1316->g_711 p_1316->g_714 p_1316->g_721 p_1316->g_753 p_1316->g_362 p_1316->g_756 p_1316->g_567 p_1316->g_783
 * writes: p_1316->g_119 p_1316->g_157 p_1316->g_63 p_1316->g_70 p_1316->g_158 p_1316->g_117 p_1316->g_362 p_1316->g_390 p_1316->g_280 p_1316->g_137 p_1316->g_399 p_1316->g_77 p_1316->g_69 p_1316->g_461 p_1316->g_370 p_1316->g_115 p_1316->g_555 p_1316->g_567 p_1316->g_132 p_1316->g_556 p_1316->g_647 p_1316->g_722 p_1316->g_494 p_1316->g_757
 */
int8_t * func_94(int8_t * p_95, struct S1 * p_1316)
{ /* block id: 59 */
    int32_t *l_191 = &p_1316->g_157;
    int32_t **l_190 = &l_191;
    uint8_t l_217 = 0x1EL;
    int32_t l_236 = 8L;
    int8_t *l_238 = &p_1316->g_10;
    int32_t l_241 = 0L;
    uint16_t *l_243 = (void*)0;
    uint16_t **l_242 = &l_243;
    int32_t l_266 = 0x3EDB0BF4L;
    int32_t l_267 = 0x480A9839L;
    int32_t l_268 = 7L;
    int32_t l_269 = 0x63FB895AL;
    int32_t l_270 = 6L;
    int32_t l_271[2][1];
    VECTOR(int8_t, 8) l_297 = (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 8L), 8L), 8L, (-9L), 8L);
    VECTOR(int16_t, 4) l_333 = (VECTOR(int16_t, 4))(0x6545L, (VECTOR(int16_t, 2))(0x6545L, 0x317CL), 0x317CL);
    uint32_t l_351 = 0x5C3F8E32L;
    VECTOR(int32_t, 2) l_360 = (VECTOR(int32_t, 2))(0x5054A6CFL, 0x5B6AFC40L);
    uint16_t *l_398[2];
    uint16_t *l_400 = &p_1316->g_137;
    VECTOR(int32_t, 2) l_451 = (VECTOR(int32_t, 2))(0x58FF2DBAL, (-1L));
    VECTOR(int32_t, 16) l_453 = (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 1L), 1L), 1L, 4L, 1L, (VECTOR(int32_t, 2))(4L, 1L), (VECTOR(int32_t, 2))(4L, 1L), 4L, 1L, 4L, 1L);
    VECTOR(int32_t, 8) l_454 = (VECTOR(int32_t, 8))(0x3F3DE983L, (VECTOR(int32_t, 4))(0x3F3DE983L, (VECTOR(int32_t, 2))(0x3F3DE983L, 0L), 0L), 0L, 0x3F3DE983L, 0L);
    int16_t l_460 = 0x2CD3L;
    VECTOR(uint8_t, 16) l_477 = (VECTOR(uint8_t, 16))(0x8DL, (VECTOR(uint8_t, 4))(0x8DL, (VECTOR(uint8_t, 2))(0x8DL, 0xE3L), 0xE3L), 0xE3L, 0x8DL, 0xE3L, (VECTOR(uint8_t, 2))(0x8DL, 0xE3L), (VECTOR(uint8_t, 2))(0x8DL, 0xE3L), 0x8DL, 0xE3L, 0x8DL, 0xE3L);
    VECTOR(int8_t, 8) l_480 = (VECTOR(int8_t, 8))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x0BL), 0x0BL), 0x0BL, 4L, 0x0BL);
    VECTOR(uint8_t, 16) l_484 = (VECTOR(uint8_t, 16))(0x4CL, (VECTOR(uint8_t, 4))(0x4CL, (VECTOR(uint8_t, 2))(0x4CL, 0x68L), 0x68L), 0x68L, 0x4CL, 0x68L, (VECTOR(uint8_t, 2))(0x4CL, 0x68L), (VECTOR(uint8_t, 2))(0x4CL, 0x68L), 0x4CL, 0x68L, 0x4CL, 0x68L);
    uint32_t l_489 = 0x9784323EL;
    int32_t *l_490 = (void*)0;
    VECTOR(uint16_t, 16) l_491 = (VECTOR(uint16_t, 16))(0x5A58L, (VECTOR(uint16_t, 4))(0x5A58L, (VECTOR(uint16_t, 2))(0x5A58L, 0xBDCEL), 0xBDCEL), 0xBDCEL, 0x5A58L, 0xBDCEL, (VECTOR(uint16_t, 2))(0x5A58L, 0xBDCEL), (VECTOR(uint16_t, 2))(0x5A58L, 0xBDCEL), 0x5A58L, 0xBDCEL, 0x5A58L, 0xBDCEL);
    union U0 *l_497 = &p_1316->g_132;
    int64_t l_520 = 0x48E2D593A734AEC9L;
    int16_t l_521 = 0x40A3L;
    uint8_t l_522 = 1UL;
    VECTOR(int16_t, 4) l_527 = (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 1L), 1L);
    VECTOR(int16_t, 2) l_528 = (VECTOR(int16_t, 2))((-8L), 0x3818L);
    VECTOR(int8_t, 16) l_544 = (VECTOR(int8_t, 16))(0x4DL, (VECTOR(int8_t, 4))(0x4DL, (VECTOR(int8_t, 2))(0x4DL, (-1L)), (-1L)), (-1L), 0x4DL, (-1L), (VECTOR(int8_t, 2))(0x4DL, (-1L)), (VECTOR(int8_t, 2))(0x4DL, (-1L)), 0x4DL, (-1L), 0x4DL, (-1L));
    int32_t l_548 = 1L;
    int32_t ***l_571 = (void*)0;
    VECTOR(int8_t, 16) l_678 = (VECTOR(int8_t, 16))(0x55L, (VECTOR(int8_t, 4))(0x55L, (VECTOR(int8_t, 2))(0x55L, 0x3FL), 0x3FL), 0x3FL, 0x55L, 0x3FL, (VECTOR(int8_t, 2))(0x55L, 0x3FL), (VECTOR(int8_t, 2))(0x55L, 0x3FL), 0x55L, 0x3FL, 0x55L, 0x3FL);
    uint8_t l_751 = 0x89L;
    uint64_t *l_762[3][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t *l_781[10][9] = {{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236},{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236},{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236},{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236},{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236},{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236},{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236},{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236},{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236},{&l_236,&l_269,&l_269,&l_236,&l_270,&p_1316->g_157,&p_1316->g_157,&l_270,&l_236}};
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_271[i][j] = 1L;
    }
    for (i = 0; i < 2; i++)
        l_398[i] = (void*)0;
    if ((*p_1316->g_158))
    { /* block id: 60 */
        int8_t *l_189 = (void*)0;
        return l_189;
    }
    else
    { /* block id: 62 */
        int32_t **l_192 = &l_191;
        int32_t ***l_193 = &l_192;
        uint64_t *l_194 = &p_1316->g_119;
        uint16_t *l_195 = &p_1316->g_137;
        VECTOR(int32_t, 2) l_218 = (VECTOR(int32_t, 2))((-1L), 9L);
        VECTOR(int16_t, 4) l_222 = (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 1L), 1L);
        VECTOR(int16_t, 2) l_223 = (VECTOR(int16_t, 2))(1L, 0x173DL);
        VECTOR(int16_t, 8) l_250 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
        int32_t l_255 = (-1L);
        uint16_t l_274 = 0x875BL;
        int16_t l_299[6][8] = {{0x5675L,0x098CL,1L,0x098CL,0x5675L,0x5675L,0x098CL,1L},{0x5675L,0x098CL,1L,0x098CL,0x5675L,0x5675L,0x098CL,1L},{0x5675L,0x098CL,1L,0x098CL,0x5675L,0x5675L,0x098CL,1L},{0x5675L,0x098CL,1L,0x098CL,0x5675L,0x5675L,0x098CL,1L},{0x5675L,0x098CL,1L,0x098CL,0x5675L,0x5675L,0x098CL,1L},{0x5675L,0x098CL,1L,0x098CL,0x5675L,0x5675L,0x098CL,1L}};
        uint16_t l_300[4][9][7] = {{{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL}},{{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL}},{{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL}},{{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL},{0UL,0xEED9L,8UL,0xA136L,0xEED9L,0xA136L,8UL}}};
        VECTOR(int32_t, 16) l_301 = (VECTOR(int32_t, 16))(0x71629423L, (VECTOR(int32_t, 4))(0x71629423L, (VECTOR(int32_t, 2))(0x71629423L, 0x532961FFL), 0x532961FFL), 0x532961FFL, 0x71629423L, 0x532961FFL, (VECTOR(int32_t, 2))(0x71629423L, 0x532961FFL), (VECTOR(int32_t, 2))(0x71629423L, 0x532961FFL), 0x71629423L, 0x532961FFL, 0x71629423L, 0x532961FFL);
        VECTOR(uint64_t, 16) l_323 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 0UL, 18446744073709551615UL, 0UL, 18446744073709551615UL);
        VECTOR(int32_t, 8) l_337 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), (-1L)), (-1L)), (-1L), (-9L), (-1L));
        int16_t **l_343 = &p_1316->g_44;
        int16_t **l_346[3];
        VECTOR(int16_t, 8) l_367 = (VECTOR(int16_t, 8))(0x083BL, (VECTOR(int16_t, 4))(0x083BL, (VECTOR(int16_t, 2))(0x083BL, (-1L)), (-1L)), (-1L), 0x083BL, (-1L));
        uint32_t l_383 = 0x45671FF4L;
        uint32_t l_384[7][2][5] = {{{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL},{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL}},{{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL},{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL}},{{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL},{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL}},{{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL},{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL}},{{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL},{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL}},{{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL},{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL}},{{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL},{0x0552BD86L,1UL,1UL,0x0552BD86L,0x443D511CL}}};
        int32_t *l_392 = &p_1316->g_362;
        VECTOR(uint8_t, 4) l_395 = (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x67L), 0x67L);
        VECTOR(int32_t, 2) l_443 = (VECTOR(int32_t, 2))(0x32252C98L, 0x4C30519CL);
        VECTOR(int32_t, 4) l_444 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x090846A1L), 0x090846A1L);
        VECTOR(int32_t, 16) l_445 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x54274481L), 0x54274481L), 0x54274481L, (-1L), 0x54274481L, (VECTOR(int32_t, 2))((-1L), 0x54274481L), (VECTOR(int32_t, 2))((-1L), 0x54274481L), (-1L), 0x54274481L, (-1L), 0x54274481L);
        VECTOR(int32_t, 4) l_446 = (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x36BD1643L), 0x36BD1643L);
        VECTOR(int32_t, 4) l_449 = (VECTOR(int32_t, 4))(0x13B89491L, (VECTOR(int32_t, 2))(0x13B89491L, (-9L)), (-9L));
        VECTOR(int32_t, 8) l_450 = (VECTOR(int32_t, 8))(0x79EBA8FFL, (VECTOR(int32_t, 4))(0x79EBA8FFL, (VECTOR(int32_t, 2))(0x79EBA8FFL, 5L), 5L), 5L, 0x79EBA8FFL, 5L);
        uint32_t l_458 = 0x59D491A4L;
        int32_t l_462 = 0x083F46C0L;
        int32_t *l_463 = &l_255;
        int32_t *l_464 = &l_241;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_346[i] = &p_1316->g_44;
        if (((VECTOR(int32_t, 8))((l_190 == ((*l_193) = l_192)), 0x50E69D74L, (-10L), ((0x61L == ((p_1316->g_109.x , ((*l_194) = 18446744073709551606UL)) == ((void*)0 == l_195))) & p_1316->g_77[0][1][0]), ((VECTOR(int32_t, 2))(0x7DE68C30L, 0x012EFD5CL)), 0x0B337628L, 0x646FBA31L)).s6)
        { /* block id: 65 */
            int32_t *l_204 = &p_1316->g_30;
            VECTOR(int16_t, 8) l_221 = (VECTOR(int16_t, 8))(0x3E8CL, (VECTOR(int16_t, 4))(0x3E8CL, (VECTOR(int16_t, 2))(0x3E8CL, 1L), 1L), 1L, 0x3E8CL, 1L);
            int8_t *l_237 = &p_1316->g_10;
            int16_t *l_239[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            uint32_t l_240 = 1UL;
            uint16_t ***l_244 = &l_242;
            int32_t l_264 = 0x1783EAC6L;
            int32_t l_265[5];
            int8_t l_272[5] = {(-9L),(-9L),(-9L),(-9L),(-9L)};
            uint32_t l_330 = 0x471B65A9L;
            int i;
            for (i = 0; i < 5; i++)
                l_265[i] = 0x23F01E32L;
lbl_247:
            l_241 ^= ((safe_sub_func_uint32_t_u_u(p_1316->g_64.s4, (((((safe_sub_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(((((((void*)0 == &p_1316->g_137) , l_204) != &p_1316->g_35) <= (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(1L, (safe_add_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((p_1316->g_70.y &= ((safe_rshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s((p_1316->g_63.s4 = ((VECTOR(int16_t, 4))(l_217, (((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((-1L), 0x55CD4BFFL, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_218.xyxx)), 0x71DB39C2L, 0x388169B9L, 0x40F99576L, 0x3E55CF61L)) || ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(p_1316->g_219.scc)).yyyxyxxy, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((~((VECTOR(int32_t, 8))(p_1316->g_220.s8e078209)).s1717722361524565))).even == ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(l_221.s3557375361373362)).lo, ((VECTOR(int16_t, 4))(l_222.zxzx)).zxyzxwxw, ((VECTOR(int16_t, 8))(l_223.xyyxxxyx))))).s1415033044721075 && ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))(((*l_191) = (safe_div_func_int16_t_s_s(((**l_192) < (safe_sub_func_int32_t_s_s(((safe_mod_func_uint8_t_u_u(((safe_add_func_int8_t_s_s(((((safe_add_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((p_1316->g_219.sb || (*l_204)) && l_236), p_1316->g_10)), (*p_95))) > 7UL) , l_237) == l_238), (*p_95))) < 0x54L), 0x19L)) , (**l_192)), 7UL))), (***l_193)))), ((VECTOR(int16_t, 8))(0x3C11L)), 9L, 0L, ((VECTOR(int16_t, 4))(0x5CC8L)), (-1L))).s8c, ((VECTOR(int16_t, 2))(0x70A0L))))).xyyxxyxxyyyxxyxx))).sc2 && ((VECTOR(int16_t, 2))(0L))))), ((VECTOR(uint16_t, 2))(65526UL))))).yyyyyyyy, ((VECTOR(int32_t, 8))(0x408B3C05L)), ((VECTOR(int32_t, 8))(0x57BF4523L)))))))) & ((VECTOR(int32_t, 8))(9L))))).s57, (int32_t)(*l_204)))).yxxy, ((VECTOR(int32_t, 4))((-6L)))))).xzzxxxwy)))))).s2, 1L, ((VECTOR(int32_t, 2))(0x2EC7BEB2L)), 0x6C267DE7L, 0L)).s01 && ((VECTOR(int32_t, 2))(0x38E72FACL))))).hi | 1L), 0x56AAL, 1L)).z), (*l_204))), 7)) <= 3L)), FAKE_DIVERGE(p_1316->global_0_offset, get_global_id(0), 10))), 0L)) , (**l_192)), p_1316->g_220.sd)), (-1L), 0x01L)).yzxywyyz && ((VECTOR(int8_t, 8))(0x11L))))).s46, ((VECTOR(int8_t, 2))(9L))))), (int8_t)5L))).even, (*p_95)))) ^ (*l_204)), (*p_95))), (*l_204))), (-7L))) == (*l_204)) ^ 0xA0L) , 0x2B8D20E8FBAA2C01L) == l_240))) >= FAKE_DIVERGE(p_1316->group_2_offset, get_group_id(2), 10));
            (*l_244) = l_242;
            for (l_236 = 0; (l_236 != (-30)); l_236 = safe_sub_func_int16_t_s_s(l_236, 6))
            { /* block id: 73 */
                p_1316->g_158 = (*l_190);
                if (l_217)
                    goto lbl_247;
            }
            if ((safe_div_func_int32_t_s_s(((l_241 = ((((((***l_193) ^= (*l_204)) < ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 4))(l_250.s3760)).odd, ((VECTOR(int16_t, 16))((safe_mod_func_uint8_t_u_u((*l_204), (safe_lshift_func_uint8_t_u_u((1L & ((((l_255 , ((safe_rshift_func_int16_t_s_s(0x202FL, (+(*l_204)))) , ((safe_lshift_func_int8_t_s_s((*l_204), 6)) , p_95))) == p_95) > FAKE_DIVERGE(p_1316->group_2_offset, get_group_id(2), 10)) | (*p_1316->g_21))), FAKE_DIVERGE(p_1316->local_1_offset, get_local_id(1), 10))))), (-1L), (*p_1316->g_21), 7L, ((VECTOR(int16_t, 8))(3L)), ((VECTOR(int16_t, 4))(8L)))).s5a))).lo) <= p_1316->g_70.y) <= 0x36035E0CL) & p_1316->g_187[2][3])) && (**l_192)), 0x528EB46AL)))
            { /* block id: 79 */
                int32_t *l_260 = (void*)0;
                int32_t *l_261 = (void*)0;
                int32_t *l_262 = (void*)0;
                int32_t *l_263[2];
                VECTOR(int16_t, 16) l_273 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int16_t, 2))(0L, 0L), (VECTOR(int16_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
                VECTOR(int8_t, 2) l_331 = (VECTOR(int8_t, 2))(0x18L, 0x56L);
                int i;
                for (i = 0; i < 2; i++)
                    l_263[i] = &l_236;
                l_274--;
                (*l_192) = (void*)0;
                for (l_236 = (-20); (l_236 == 7); l_236 = safe_add_func_int32_t_s_s(l_236, 7))
                { /* block id: 84 */
                    uint8_t l_287 = 248UL;
                    int8_t *l_310[8][10] = {{(void*)0,(void*)0,&l_272[0],&l_272[0],&l_272[0],(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10,&l_272[0]},{(void*)0,(void*)0,&l_272[0],&l_272[0],&l_272[0],(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10,&l_272[0]},{(void*)0,(void*)0,&l_272[0],&l_272[0],&l_272[0],(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10,&l_272[0]},{(void*)0,(void*)0,&l_272[0],&l_272[0],&l_272[0],(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10,&l_272[0]},{(void*)0,(void*)0,&l_272[0],&l_272[0],&l_272[0],(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10,&l_272[0]},{(void*)0,(void*)0,&l_272[0],&l_272[0],&l_272[0],(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10,&l_272[0]},{(void*)0,(void*)0,&l_272[0],&l_272[0],&l_272[0],(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10,&l_272[0]},{(void*)0,(void*)0,&l_272[0],&l_272[0],&l_272[0],(void*)0,(void*)0,&p_1316->g_10,&p_1316->g_10,&l_272[0]}};
                    int32_t l_328[4][9] = {{1L,1L,0L,(-5L),(-3L),(-5L),0L,1L,1L},{1L,1L,0L,(-5L),(-3L),(-5L),0L,1L,1L},{1L,1L,0L,(-5L),(-3L),(-5L),0L,1L,1L},{1L,1L,0L,(-5L),(-3L),(-5L),0L,1L,1L}};
                    int32_t **l_329 = (void*)0;
                    int i, j;
                    if ((FAKE_DIVERGE(p_1316->global_2_offset, get_global_id(2), 10) , 0x53A32646L))
                    { /* block id: 85 */
                        int32_t l_279 = 0L;
                        if (l_279)
                            break;
                        (*p_1316->g_158) = l_279;
                        if (p_1316->g_280[2])
                            break;
                    }
                    else
                    { /* block id: 89 */
                        int8_t l_296 = 6L;
                        VECTOR(int32_t, 8) l_298 = (VECTOR(int32_t, 8))(0x5B931081L, (VECTOR(int32_t, 4))(0x5B931081L, (VECTOR(int32_t, 2))(0x5B931081L, 1L), 1L), 1L, 0x5B931081L, 1L);
                        int8_t **l_311 = &l_310[0][5];
                        int i;
                        p_1316->g_157 ^= (safe_lshift_func_int8_t_s_u((safe_div_func_int8_t_s_s((((safe_add_func_uint16_t_u_u(l_287, (((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((safe_add_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s((*p_1316->g_21), ((-6L) < (*p_95)))) , l_296), ((VECTOR(int8_t, 16))(l_297.s7325125322731072)).s2)), l_287)), ((VECTOR(int32_t, 2))((-1L), 0x72840813L)), 0x063B415AL)).wxzxxxxw && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(l_298.s6354)), ((VECTOR(int32_t, 4))((-1L), (253UL & ((VECTOR(uint8_t, 4))(0x3EL, 253UL, 0x77L, 0x43L)).x), 0x4739A51EL, (-4L)))))).zwyxwwywyyxzwyzx < ((VECTOR(int32_t, 2))((-1L), 1L)).xyyyyyyyyyxyxyyx))).lo))).s1, l_299[5][1])) > l_287) < (*p_95)))) <= (*p_95)) | (*l_204)), 5UL)), 5));
                        l_300[3][2][1] |= l_287;
                        l_265[3] = ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 16))(l_301.sb1c195e6e49509f3)).s6b, (int32_t)(safe_mod_func_int16_t_s_s(((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(0x0947L, 0x3642L)).yyxxyyxx, ((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((-1L), ((safe_mul_func_int8_t_s_s(((((safe_sub_func_uint64_t_u_u(((((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 2))(0x883D9349L, 8UL))))).hi , &l_243) == ((((*l_311) = l_310[1][8]) != p_95) , &l_195)), (((safe_add_func_uint64_t_u_u(p_1316->g_50.y, FAKE_DIVERGE(p_1316->group_0_offset, get_group_id(0), 10))) ^ l_287) , ((VECTOR(uint64_t, 2))(18446744073709551612UL, 0xDFC19357EF358BECL)).lo))) >= ((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(int32_t, 4))(((((*l_193) = (*l_193)) == ((((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))((~((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 8))(p_1316->g_322.s22053005)).s16, ((VECTOR(uint64_t, 2))(5UL, 0x19F843F08F745A5FL)), ((VECTOR(uint64_t, 8))(l_323.s52a9bc05)).s37))).xyxxxxyxxxyyyyxy + ((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 8))(((*l_194) &= ((l_298.s7 >= (safe_sub_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_s(((l_328[2][4] = p_1316->g_187[1][3]) || (*l_204)), 5)) & (-1L)), 0UL))) , p_1316->g_280[2])), ((VECTOR(uint64_t, 2))(0UL)), ((VECTOR(uint64_t, 4))(6UL)), 0xEB4B3A25EF68E0F3L)).s7406462316302600, (uint64_t)p_1316->g_70.y)))))).s6a & ((VECTOR(uint64_t, 2))(0UL))))).xyyxxyyyyxxyyxxx))).hi + ((VECTOR(uint64_t, 8))(0x1EB6A8FB614299B8L))))) + ((VECTOR(uint64_t, 8))(2UL))))).odd)))))).x == 0x06623E423A54D176L) , l_329)) , p_1316->g_30), ((VECTOR(int32_t, 2))((-5L))), 0x1EE43947L)), ((VECTOR(int32_t, 4))(0L))))).x, p_1316->g_10)) >= l_330)) < l_331.x) & p_1316->g_322.s3), (*l_204))) >= p_1316->g_157), 0L, (-5L))).hi == ((VECTOR(int8_t, 2))(0x6DL))))).yyyyxyyx, ((VECTOR(int8_t, 8))(0x3FL)), ((VECTOR(int8_t, 8))(0L))))).odd && ((VECTOR(int8_t, 4))(0L))))).hi, ((VECTOR(int8_t, 2))(0x59L))))).yxyxxyxxxyyxxxxx, ((VECTOR(uint8_t, 16))(0x65L))))).lo & ((VECTOR(int16_t, 8))((-2L)))))).s2766340135012067, (int16_t)l_296, (int16_t)(*l_204)))).hi))).s2, (*l_204))) == 0x56EC75AEL), 0xC42FL)), (int32_t)0x74E35550L))).yxxx || ((VECTOR(int32_t, 4))((-1L)))))).x;
                        l_298.s0 = (*p_1316->g_158);
                    }
                    if ((*p_1316->g_158))
                        break;
                    (*l_190) = &p_1316->g_35;
                }
                (*l_192) = (**l_193);
            }
            else
            { /* block id: 103 */
                uint8_t l_332[4][1];
                int i, j;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_332[i][j] = 252UL;
                }
                (**l_190) = (l_332[3][0] || ((VECTOR(int16_t, 4))(l_333.wzyz)).x);
                return p_95;
            }
        }
        else
        { /* block id: 107 */
            int32_t l_340 = 1L;
            int16_t **l_342[3][10] = {{(void*)0,&p_1316->g_44,(void*)0,(void*)0,&p_1316->g_44,(void*)0,(void*)0,&p_1316->g_44,(void*)0,(void*)0},{(void*)0,&p_1316->g_44,(void*)0,(void*)0,&p_1316->g_44,(void*)0,(void*)0,&p_1316->g_44,(void*)0,(void*)0},{(void*)0,&p_1316->g_44,(void*)0,(void*)0,&p_1316->g_44,(void*)0,(void*)0,&p_1316->g_44,(void*)0,(void*)0}};
            int16_t ***l_341[7][10][3] = {{{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0}},{{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0}},{{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0}},{{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0}},{{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0}},{{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0}},{{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0},{&l_342[1][2],&l_342[2][7],(void*)0}}};
            int8_t *l_347 = (void*)0;
            int8_t *l_348 = (void*)0;
            int8_t *l_349 = (void*)0;
            int8_t *l_350 = (void*)0;
            uint64_t l_352 = 18446744073709551615UL;
            VECTOR(int16_t, 8) l_359 = (VECTOR(int16_t, 8))(0x185DL, (VECTOR(int16_t, 4))(0x185DL, (VECTOR(int16_t, 2))(0x185DL, 0x3A32L), 0x3A32L), 0x3A32L, 0x185DL, 0x3A32L);
            int32_t *l_361 = &p_1316->g_362;
            int32_t ****l_364 = &l_193;
            VECTOR(int16_t, 8) l_365 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x0445L), 0x0445L), 0x0445L, (-1L), 0x0445L);
            VECTOR(int16_t, 16) l_368 = (VECTOR(int16_t, 16))(0x6DFAL, (VECTOR(int16_t, 4))(0x6DFAL, (VECTOR(int16_t, 2))(0x6DFAL, 0x36FFL), 0x36FFL), 0x36FFL, 0x6DFAL, 0x36FFL, (VECTOR(int16_t, 2))(0x6DFAL, 0x36FFL), (VECTOR(int16_t, 2))(0x6DFAL, 0x36FFL), 0x6DFAL, 0x36FFL, 0x6DFAL, 0x36FFL);
            VECTOR(int16_t, 4) l_371 = (VECTOR(int16_t, 4))(0x43B9L, (VECTOR(int16_t, 2))(0x43B9L, 0x6E45L), 0x6E45L);
            VECTOR(int16_t, 16) l_372 = (VECTOR(int16_t, 16))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 0L), 0L), 0L, (-6L), 0L, (VECTOR(int16_t, 2))((-6L), 0L), (VECTOR(int16_t, 2))((-6L), 0L), (-6L), 0L, (-6L), 0L);
            uint8_t *l_387 = (void*)0;
            uint8_t *l_388 = (void*)0;
            uint8_t *l_389[8][2] = {{&l_217,(void*)0},{&l_217,(void*)0},{&l_217,(void*)0},{&l_217,(void*)0},{&l_217,(void*)0},{&l_217,(void*)0},{&l_217,(void*)0},{&l_217,(void*)0}};
            int32_t *l_391 = &l_270;
            VECTOR(uint8_t, 2) l_396 = (VECTOR(uint8_t, 2))(8UL, 5UL);
            uint16_t **l_397[10][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int64_t *l_401 = &p_1316->g_77[1][1][0];
            int32_t l_420[7];
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_420[i] = 1L;
            (**l_192) = (safe_mod_func_uint8_t_u_u((~((p_1316->g_69.y > (((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(p_1316->g_336.xxxy)).wzxzzyxwzwzwyxzw, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x52DF5830L, 0x3F36CBF5L)), (-1L), 0x6F519B21L)).wxwwwyzywywxzzzw, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(l_337.s43747343)).s57 | ((VECTOR(int32_t, 16))(p_1316->g_338.wzxzwxzwzyzyxxzw)).s59))), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))(p_1316->g_339.s53)).xxyxyxyy))).s32 ^ ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(1L, 0x470671ACL, (((l_340 != (**l_190)) | ((func_103((l_343 = &p_1316->g_44), (safe_mul_func_uint8_t_u_u((((void*)0 == l_346[0]) , (**l_190)), (l_351 = (*p_95)))), p_1316->g_63.s2, &p_1316->g_280[3], l_352, p_1316) , GROUP_DIVERGE(0, 1)) > GROUP_DIVERGE(1, 1))) != (*l_191)), ((VECTOR(int32_t, 4))(1L)), 0x78CEC9F2L, ((VECTOR(int32_t, 2))(0L)), 0x5BB7C56CL, ((VECTOR(int32_t, 2))(0x33A6073AL)), (**l_192), 0x118D950DL, 0x4236DA1EL)).s71 <= ((VECTOR(int32_t, 2))(0x58943598L))))).xxxy && ((VECTOR(int32_t, 4))((-1L)))))), ((VECTOR(int32_t, 4))(0x0535DA6DL))))).zxwzxyyz >= ((VECTOR(int32_t, 8))(0x6A6EB077L))))), 5L, 0x4B07B7CAL, 9L, (*p_1316->g_158), 0x332522DAL, ((VECTOR(int32_t, 2))(0x61C68E80L)), 3L)) ^ ((VECTOR(int32_t, 16))(0x79EFB793L))))).lo < ((VECTOR(int32_t, 8))(1L))))).lo && ((VECTOR(int32_t, 4))((-8L)))))).hi)))))).yxyyxxyxyyyyxyxx))).s5be1 ^ ((VECTOR(int32_t, 4))(5L))))).xzwwxxwzxzwzzxzz))).s1 , (***l_193))) || 0x742BL)), (**l_190)));
            (*l_391) = ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(p_1316->g_353.yyyyxyyx)).s42 >= ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 2))(p_1316->g_354.xz)).yyxyxxyxxyyyxxyx, ((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((**l_192), 0x4102A155L, 1L, 0x5C578D27L)), (-2L), 0x146B111DL, (-1L), (-2L))).lo, ((VECTOR(int32_t, 8))(p_1316->g_355.yxxwxzxx)).even))).yywzwxzyxzzwywxx, (int32_t)(((*l_195) = (((safe_rshift_func_int8_t_s_s((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(((**l_192) = 0x301DL), ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))(p_1316->g_358.s10))))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(l_359.s1410466240663540)).sf2 >= ((VECTOR(int16_t, 2))(0x69DCL, (-1L)))))), 0x23F6L, (-1L))), 0x1EF8L)) & ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(((((*l_361) = ((VECTOR(int32_t, 8))(l_360.xyxyyyyy)).s4) , &l_192) == ((*l_364) = p_1316->g_363)), ((VECTOR(int16_t, 2))(l_365.s15)), 0x2880L, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(p_1316->g_366.yx)).yyyyxxxxyxyyyxyx == ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(l_367.s7771)).even, ((VECTOR(int16_t, 2))(l_368.s42))))).xxyxxxxxxxxxyyxy))) & ((VECTOR(int16_t, 2))(0x5DF2L, (-1L))).yxxxyyxyxyxyxxyx))) && ((VECTOR(int16_t, 8))(p_1316->g_369.sd7f635dc)).s0520642771735517))).sc, 0x53CBL, (-4L), 0L)).s03 && ((VECTOR(int16_t, 16))(p_1316->g_370.s0072420767350551)).s42))), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_371.zzwywzyz)).s36 & ((VECTOR(int16_t, 8))(l_372.se624f9b1)).s16))), (p_1316->g_280[1] ^= (FAKE_DIVERGE(p_1316->local_0_offset, get_local_id(0), 10) > (((safe_sub_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((p_1316->g_390[0] = ((((safe_mul_func_int8_t_s_s(((-2L) ^ (safe_rshift_func_uint8_t_u_s((safe_sub_func_int8_t_s_s(((l_384[5][1][1] = l_383) || ((VECTOR(int8_t, 2))(1L, 0x07L)).hi), ((safe_add_func_uint16_t_u_u((((*l_194) ^= FAKE_DIVERGE(p_1316->local_1_offset, get_local_id(1), 10)) & p_1316->g_338.w), 0x5EE5L)) != p_1316->g_33))), 0))), p_1316->g_370.s3)) , p_1316->g_363) != p_1316->g_363) , p_1316->g_338.x)), GROUP_DIVERGE(2, 1))), p_1316->g_358.s4)) > p_1316->g_353.x) >= p_1316->g_358.s4))), ((VECTOR(int16_t, 2))((-1L))), 0x0FD9L))))).s7 >= p_1316->g_322.s5), (*p_95))) >= 4294967295UL) > p_1316->g_64.s7)) || 0x6F3EL))))))).s67cf && ((VECTOR(int32_t, 4))(0x6BF01C10L))))).wzxyxwzz, ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))(1L))))).s52 | ((VECTOR(int32_t, 2))(0x2AB8874AL))))).yxyyxxyy))).s63))).hi;
            (*l_192) = (*l_190);
            if ((((*l_401) &= (((&p_1316->g_362 == ((p_1316->g_370.s5 <= ((VECTOR(int32_t, 2))(1L, 0x7A5B43B9L)).hi) , l_392)) , (safe_sub_func_uint8_t_u_u(((*l_391) , ((*l_242) != (*l_242))), ((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 16))(l_395.wwzxxyzxwxxxzzzx)).s3a95, ((VECTOR(uint8_t, 2))(1UL, 248UL)).xxxx))).ywwxyxzw & ((VECTOR(uint8_t, 4))(l_396.xyxx)).xyzxxwxw))).s5340541645342257))).s7))) < ((p_1316->g_399 = (l_398[0] = &p_1316->g_137)) == (l_400 = (*l_242))))) , ((**l_190) , (**l_192))))
            { /* block id: 125 */
                int32_t *l_402 = &l_270;
                (*l_192) = l_402;
                (**l_190) = (((VECTOR(uint32_t, 2))(3UL, 4294967289UL)).lo , (&p_1316->g_362 == ((safe_mod_func_uint8_t_u_u((**l_192), (((*l_361) = ((safe_add_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((p_1316->g_390[3] = (*l_402)) < (0L == ((*l_391) >= (safe_unary_minus_func_uint16_t_u((**l_192)))))), 5)), (*l_402))) || (+0x80F7652B92FFAEF2L))) , (p_1316->g_69.z = ((VECTOR(int8_t, 4))((safe_add_func_int64_t_s_s((safe_add_func_uint64_t_u_u(((safe_div_func_int8_t_s_s(((func_103(&p_1316->g_44, (*l_391), (**l_192), &p_1316->g_280[2], (**l_190), p_1316) , (*l_191)) ^ 0x15FAL), 5L)) == 6L), (-8L))), 0x4D5CD3B374265206L)), ((VECTOR(int8_t, 2))(3L)), 0x00L)).z)))) , (void*)0)));
                return p_95;
            }
            else
            { /* block id: 132 */
                VECTOR(int8_t, 8) l_421 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x09L), 0x09L), 0x09L, (-1L), 0x09L);
                int32_t l_422 = (-1L);
                int32_t l_423 = 0L;
                int i;
                for (l_351 = 0; (l_351 != 14); ++l_351)
                { /* block id: 135 */
                    int32_t *l_418 = &l_268;
                    int32_t *l_419[6] = {&l_271[1][0],&l_271[1][0],&l_271[1][0],&l_271[1][0],&l_271[1][0],&l_271[1][0]};
                    uint8_t l_424 = 0x7EL;
                    int i;
                    l_424--;
                    return &p_1316->g_10;
                }
                if (p_1316->g_157)
                    goto lbl_427;
lbl_427:
                (*l_192) = (*l_190);
                (*l_192) = (*l_192);
            }
        }
        (*l_464) ^= (safe_add_func_int64_t_s_s(p_1316->g_77[1][2][0], ((((((0L | p_1316->g_70.y) >= (((*l_463) ^= (l_271[1][0] == ((safe_mod_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((safe_div_func_int16_t_s_s((safe_sub_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s(0L, (0x1EA6L < (+(p_1316->g_461 ^= ((!(((((VECTOR(int32_t, 4))(p_1316->g_442.wxyz)).z , FAKE_DIVERGE(p_1316->local_0_offset, get_local_id(0), 10)) ^ (~(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_443.yxxx)).wzzyzzzz & ((VECTOR(int32_t, 16))(0x4F81BAA2L, ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(l_444.wzxw)).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_445.s75)), 0x37B329CEL, 0x20FE6A10L)).hi))), ((VECTOR(int32_t, 2))(0x0BEC256EL, 0L)), 1L, 0x1088CE8FL, 1L, 0x6907B63CL)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(l_446.wyxyxwxwxwzxyzyz)).sf2, ((VECTOR(int32_t, 16))(p_1316->g_447.zxzxywwyzxxyywyx)).s59))), 0x64ECBFB7L, 0x4CDF3C00L)), 0L, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(0x0329290EL, 0x2DBC4C0DL, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(p_1316->g_448.xxyxyxxx)).odd, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(l_449.ywxyywxy)).s2212457636306061 && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(l_450.s0120)).hi >= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_451.xxxx)).xxxzzwwx, ((VECTOR(int32_t, 8))(p_1316->g_452.zwzxwxxy))))).even, ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((-1L), 0x1C29EEFFL)).yxyxxxyxyxyyyyyy && ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(l_453.s549a)).odd, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(l_454.s0715153661337066)).s2d0f && ((VECTOR(int32_t, 16))(p_1316->g_455.yxxyzxzxxxwyxwyx)).s0f35))), (safe_mul_func_int16_t_s_s(l_297.s7, ((((((void*)0 != (*l_192)) != 0x3A0E2B92L) <= (*p_1316->g_399)) <= l_458) && (*p_1316->g_158)))), l_333.w, (-1L), 0x3BB585D4L, ((VECTOR(int32_t, 4))(0L)), p_1316->g_459, ((VECTOR(int32_t, 2))((-1L))), (-7L))).scc))).xxyy && ((VECTOR(int32_t, 4))(0L))))).zzxyyzxy, ((VECTOR(int32_t, 8))((-10L)))))).s3326675271216017))).hi, ((VECTOR(int32_t, 8))(0x11C58282L))))).lo))), l_460, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(4L)), (-1L), ((VECTOR(int32_t, 4))(0x7263B851L)), (-3L), 0L)).sa0))).yyyxyyxxyyyxxxyx))).even, ((VECTOR(int32_t, 8))(1L))))).s6051504353625072, ((VECTOR(int32_t, 16))(0L))))).sd1b8, ((VECTOR(int32_t, 4))(0x2C728E87L)), ((VECTOR(int32_t, 4))(0x0A1252EBL))))).hi, ((VECTOR(int32_t, 2))(0x490CEA32L))))), ((VECTOR(int32_t, 4))(0x3BD44850L)), 0x6ED09632L, ((VECTOR(int32_t, 4))(7L)), 1L, 0x27F15407L, 0x7A006A4FL, (-4L), 0L)).s17ad < ((VECTOR(int32_t, 4))((-1L)))))), ((VECTOR(int32_t, 4))((-3L))), ((VECTOR(int32_t, 2))(0x2D3D898AL)), (*p_1316->g_158), (*p_1316->g_158), ((VECTOR(int32_t, 2))((-1L))), 0x06A7A96AL, 0x63482E6BL)).s68, ((VECTOR(int32_t, 2))(4L))))) >= ((VECTOR(int32_t, 2))((-4L)))))).yxyy))).ywxxywzyxwwwyzyw < ((VECTOR(int32_t, 16))(0x6214503CL))))).sc5, (int32_t)(*p_1316->g_158)))).xyxx, ((VECTOR(int32_t, 4))(0x7B6DCFB0L))))), 0x2E298E86L, ((VECTOR(int32_t, 4))(4L)), ((VECTOR(int32_t, 2))(0x329FC8A7L)), ((VECTOR(int32_t, 2))(1L)), 1L)).sad, ((VECTOR(int32_t, 2))(0x7499EA39L)), ((VECTOR(int32_t, 2))(1L))))), 5L)).odd, ((VECTOR(int32_t, 8))(0x7A743C48L))))), l_217, ((VECTOR(int32_t, 2))(0x51E5F61DL)), ((VECTOR(int32_t, 4))((-1L))))).even))).s2556025433570515, ((VECTOR(int32_t, 16))((-6L)))))).s5 >= (-4L)))) && (*p_95))) >= 0x2660BC41L)))))) & l_462), (*p_95))), (*p_1316->g_399))), l_270)), 1L)) < l_351), 0x2BDDAD598D01A36AL)) , p_1316->g_461))) , p_1316->g_354.y)) > (-2L)) ^ 0x6882120FL) , (void*)0) != (void*)0)));
    }
    l_271[0][0] &= (safe_add_func_int8_t_s_s(((safe_sub_func_int32_t_s_s((0x254E882AF702D878L & (safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 2))(p_1316->g_475.s47)).xxxxyyxx, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(p_1316->g_476.xxxy)), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(0xC3L, 254UL, 1UL, 0UL)) ^ ((VECTOR(uint8_t, 4))(l_477.s0cb8))))), (((safe_mod_func_int32_t_s_s(0x5375A3A4L, (((p_1316->g_119 >= l_453.s3) < ((((VECTOR(int8_t, 2))(l_480.s07)).even | ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(p_1316->g_483.s3460)).lo + ((VECTOR(uint8_t, 2))(l_484.see))))).hi) | (0x262DL >= 0x3176L))) , ((safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(l_270, ((l_266 || 0x71A22107735A14F7L) == (-3L)))), p_1316->g_390[3])) || GROUP_DIVERGE(0, 1))))) >= l_266) && l_267), 0x91L, 0x93L, 0x0AL, 1UL, 0xB4L, 0UL, 247UL)).lo))).s74 - ((VECTOR(uint8_t, 2))(0x43L))))).xyxyyxxy, ((VECTOR(uint8_t, 8))(0x04L)), ((VECTOR(uint8_t, 8))(0x78L))))).s0264360721056164 << ((VECTOR(uint8_t, 16))(0x0DL))))).s1, p_1316->g_64.s2))), 1UL)) || l_489), p_1316->g_476.x));
    if (((((VECTOR(uint16_t, 16))(l_491.s53ff3435e34954c5)).s6 , &p_1316->g_362) == &p_1316->g_362))
    { /* block id: 149 */
        int32_t *l_492 = &l_267;
        union U0 **l_495 = (void*)0;
        union U0 **l_496[2][6][1] = {{{&p_1316->g_494},{&p_1316->g_494},{&p_1316->g_494},{&p_1316->g_494},{&p_1316->g_494},{&p_1316->g_494}},{{&p_1316->g_494},{&p_1316->g_494},{&p_1316->g_494},{&p_1316->g_494},{&p_1316->g_494},{&p_1316->g_494}}};
        VECTOR(int32_t, 8) l_498 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
        int i, j, k;
        l_492 = (*l_190);
        l_497 = (p_1316->g_355.y , &p_1316->g_132);
        l_236 &= ((VECTOR(int32_t, 2))(l_498.s72)).hi;
    }
    else
    { /* block id: 153 */
        int32_t *l_499 = (void*)0;
        int32_t *l_500 = (void*)0;
        int32_t *l_501 = &p_1316->g_115;
        int32_t *l_502 = &l_270;
        int32_t l_503 = 0x4C35DA2FL;
        int32_t *l_504 = &l_270;
        int32_t *l_505 = &l_271[1][0];
        int32_t *l_506 = (void*)0;
        int32_t *l_507 = &l_271[1][0];
        int32_t *l_508 = (void*)0;
        int32_t *l_509 = &l_270;
        int32_t l_510 = 0x2A53512CL;
        int32_t *l_511 = (void*)0;
        int32_t *l_512 = &l_510;
        int32_t *l_513 = (void*)0;
        int32_t *l_514 = (void*)0;
        int32_t *l_515 = &l_236;
        int32_t *l_516 = (void*)0;
        int32_t *l_517 = &l_269;
        int32_t *l_518[4] = {&l_271[0][0],&l_271[0][0],&l_271[0][0],&l_271[0][0]};
        int32_t l_519 = (-10L);
        VECTOR(int16_t, 16) l_530 = (VECTOR(int16_t, 16))(0x6633L, (VECTOR(int16_t, 4))(0x6633L, (VECTOR(int16_t, 2))(0x6633L, 9L), 9L), 9L, 0x6633L, 9L, (VECTOR(int16_t, 2))(0x6633L, 9L), (VECTOR(int16_t, 2))(0x6633L, 9L), 0x6633L, 9L, 0x6633L, 9L);
        int64_t *l_547 = &p_1316->g_461;
        uint16_t l_549 = 0x66A8L;
        int16_t *l_550 = (void*)0;
        int16_t *l_551[8][7] = {{&p_1316->g_390[2],(void*)0,(void*)0,(void*)0,&p_1316->g_280[2],(void*)0,(void*)0},{&p_1316->g_390[2],(void*)0,(void*)0,(void*)0,&p_1316->g_280[2],(void*)0,(void*)0},{&p_1316->g_390[2],(void*)0,(void*)0,(void*)0,&p_1316->g_280[2],(void*)0,(void*)0},{&p_1316->g_390[2],(void*)0,(void*)0,(void*)0,&p_1316->g_280[2],(void*)0,(void*)0},{&p_1316->g_390[2],(void*)0,(void*)0,(void*)0,&p_1316->g_280[2],(void*)0,(void*)0},{&p_1316->g_390[2],(void*)0,(void*)0,(void*)0,&p_1316->g_280[2],(void*)0,(void*)0},{&p_1316->g_390[2],(void*)0,(void*)0,(void*)0,&p_1316->g_280[2],(void*)0,(void*)0},{&p_1316->g_390[2],(void*)0,(void*)0,(void*)0,&p_1316->g_280[2],(void*)0,(void*)0}};
        int32_t ***l_572[1][8];
        union U0 l_573 = {0};
        uint32_t l_578 = 4294967295UL;
        int8_t **l_586[6][4] = {{&p_1316->g_133,&p_1316->g_133,&p_1316->g_133,&p_1316->g_133},{&p_1316->g_133,&p_1316->g_133,&p_1316->g_133,&p_1316->g_133},{&p_1316->g_133,&p_1316->g_133,&p_1316->g_133,&p_1316->g_133},{&p_1316->g_133,&p_1316->g_133,&p_1316->g_133,&p_1316->g_133},{&p_1316->g_133,&p_1316->g_133,&p_1316->g_133,&p_1316->g_133},{&p_1316->g_133,&p_1316->g_133,&p_1316->g_133,&p_1316->g_133}};
        VECTOR(int8_t, 16) l_588 = (VECTOR(int8_t, 16))(0x14L, (VECTOR(int8_t, 4))(0x14L, (VECTOR(int8_t, 2))(0x14L, 0x39L), 0x39L), 0x39L, 0x14L, 0x39L, (VECTOR(int8_t, 2))(0x14L, 0x39L), (VECTOR(int8_t, 2))(0x14L, 0x39L), 0x14L, 0x39L, 0x14L, 0x39L);
        int32_t l_603 = 0x37E15BDBL;
        int64_t l_627[3][8] = {{0x24E97C0794FB87F0L,0x2EAA6D6E852F3EECL,0x3FD7B40417A1EFCAL,0x2EAA6D6E852F3EECL,0x24E97C0794FB87F0L,0x24E97C0794FB87F0L,0x2EAA6D6E852F3EECL,0x3FD7B40417A1EFCAL},{0x24E97C0794FB87F0L,0x2EAA6D6E852F3EECL,0x3FD7B40417A1EFCAL,0x2EAA6D6E852F3EECL,0x24E97C0794FB87F0L,0x24E97C0794FB87F0L,0x2EAA6D6E852F3EECL,0x3FD7B40417A1EFCAL},{0x24E97C0794FB87F0L,0x2EAA6D6E852F3EECL,0x3FD7B40417A1EFCAL,0x2EAA6D6E852F3EECL,0x24E97C0794FB87F0L,0x24E97C0794FB87F0L,0x2EAA6D6E852F3EECL,0x3FD7B40417A1EFCAL}};
        VECTOR(int64_t, 2) l_690 = (VECTOR(int64_t, 2))(0x04FA0719CA8CCC86L, 0x03632157365BB490L);
        int32_t ***l_717 = &l_190;
        int32_t l_732 = 0x39F42801L;
        VECTOR(int64_t, 8) l_740 = (VECTOR(int64_t, 8))(5L, (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 0x406E1598091A14BEL), 0x406E1598091A14BEL), 0x406E1598091A14BEL, 5L, 0x406E1598091A14BEL);
        VECTOR(int8_t, 4) l_765 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 3L), 3L);
        VECTOR(uint16_t, 4) l_766 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 1UL), 1UL);
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 8; j++)
                l_572[i][j] = &p_1316->g_555;
        }
        l_522--;
        (*l_501) = ((safe_rshift_func_uint16_t_u_u(((p_1316->g_370.s1 |= ((VECTOR(int16_t, 8))((*l_501), ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(0x1501L, 0x6989L)).xyxx > ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x52EAL, 0x4A9BL)) && ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_527.zzywzxwy)), 0L, 0x1E05L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_528.xy)), 0L, 6L)), 0x34D5L, 0x457DL)) && ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(p_1316->g_529.xyyxxyxyxyyxyyxy)).odd || ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(l_530.s4f24)).wzxwxzzzyzyxwywy && ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(5L, ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 8))((*p_1316->g_21), 0x7A4CL, 0x6FEAL, 0x6ED2L, ((safe_mod_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1316->group_0_offset, get_group_id(0), 10), 12)), (((safe_mod_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((*p_1316->g_399), (*p_1316->g_399))), (*p_95))) | (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1316->global_1_offset, get_global_id(1), 10), (safe_add_func_uint16_t_u_u((safe_unary_minus_func_int8_t_s(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))((~((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 4))(l_544.s4f1e)), ((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(((safe_rshift_func_int16_t_s_s((!(((*l_502) &= ((((*l_547) |= 0x32E9C1F4ECCB2CEBL) <= p_1316->g_220.s6) || ((0x58L > p_1316->g_459) ^ (*l_517)))) != l_548)), 10)) || (*l_509)), ((VECTOR(int8_t, 2))(0L)), ((VECTOR(int8_t, 8))(0x2CL)), 1L, (*l_507), (*p_95), 0x72L, (-5L))) | ((VECTOR(int8_t, 16))(0x24L))))).even, ((VECTOR(int8_t, 8))((-10L)))))).even, ((VECTOR(int8_t, 4))(0x09L))))), ((VECTOR(int8_t, 4))((-1L)))))).yxwwyyyw | ((VECTOR(int8_t, 8))(0x0FL))))).s50))).yyyyyxxyyyyxxxyy && ((VECTOR(int8_t, 16))((-4L)))))).sedf8, ((VECTOR(int8_t, 4))(0L))))), 0x2CL, ((VECTOR(int8_t, 8))(0x48L)), (-1L), 0x7AL, (-2L))).sf04c, ((VECTOR(int8_t, 4))((-1L)))))).y)), GROUP_DIVERGE(1, 1)))))) & 0xDBL))) || l_549), 0x2B8AL, 0x6BB1L, (-9L)))))).s63 > ((VECTOR(int16_t, 2))(1L))))), 0x5F8DL, 0x4015L)).hi, ((VECTOR(int16_t, 2))((-6L))), ((VECTOR(int16_t, 2))(0x2A3EL))))), 0x5C9BL, 0x3E63L)).lo == ((VECTOR(int16_t, 2))(0L))))).xyxx, ((VECTOR(int16_t, 4))(0x0869L))))), 0x6DDFL, 0x0FC5L, 0x3921L)).hi))), 0x03E2L, ((VECTOR(int16_t, 2))(0x356CL)), (*p_1316->g_21), ((VECTOR(int16_t, 2))(1L)), 1L, ((VECTOR(int16_t, 2))(0x4F9CL)), ((VECTOR(int16_t, 2))(0x6F28L)), 0x60A0L)).saea4, ((VECTOR(int16_t, 4))(0x6EB2L))))).odd, ((VECTOR(int16_t, 2))(0L))))).xxxxyxxyxxxxxyyx | ((VECTOR(int16_t, 16))(0L)))))))).scb4a, ((VECTOR(int16_t, 4))(1L))))).yywzzwxwzwxywwzx && ((VECTOR(int16_t, 16))(0x0DE8L))))).sad92, ((VECTOR(int16_t, 4))(3L))))).hi && ((VECTOR(int16_t, 2))(4L))))).yyyyxyxx))).s7647574020475214))).s8a, ((VECTOR(int16_t, 2))(0x13ABL)), ((VECTOR(int16_t, 2))(0x671CL))))), (int16_t)(*l_504))))))).yxxy > ((VECTOR(int16_t, 4))(1L))))).zwxzwwxyzzywxzxz && ((VECTOR(int16_t, 16))((-2L)))))).s95 == ((VECTOR(int16_t, 2))(2L))))).xxyxxyxxyyyyyxyy && ((VECTOR(int16_t, 16))(0x6E69L))))).odd < ((VECTOR(int16_t, 8))(0x05FDL))))).hi))), ((VECTOR(int16_t, 2))(0x532DL)), 0L)).s7) && (*p_1316->g_21)), (*p_1316->g_399))) >= 0UL);
        if (((VECTOR(int32_t, 2))(0x3362EBB6L, 0x15481592L)).even)
        { /* block id: 159 */
            int32_t *l_553 = &p_1316->g_187[1][3];
            int32_t **l_552 = &l_553;
            uint8_t *l_566 = (void*)0;
            uint8_t **l_565[6][1] = {{&l_566},{&l_566},{&l_566},{&l_566},{&l_566},{&l_566}};
            int32_t l_570[9][4][4] = {{{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L}},{{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L}},{{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L}},{{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L}},{{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L}},{{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L}},{{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L}},{{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L}},{{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L},{0x02408A46L,0x02408A46L,(-8L),9L}}};
            int32_t l_574 = (-1L);
            int32_t **l_575[1];
            int8_t l_576 = (-10L);
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_575[i] = &l_509;
            (*p_1316->g_554) = l_552;
            (*l_512) = (((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 16))((safe_add_func_int8_t_s_s((((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((!((VECTOR(int8_t, 8))(0x14L, (safe_mul_func_uint16_t_u_u((((p_1316->g_567[4][4][2] = (void*)0) == (void*)0) | ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(l_570[7][1][3], 0xA9E512C6L, ((VECTOR(uint32_t, 2))(4294967295UL, 0x7FA5E4FEL)), (l_571 != l_572[0][3]), 4294967290UL, (0x756C3EC8L && (((*p_1316->g_494) = l_573) , p_1316->g_187[0][1])), (*l_515), ((VECTOR(uint32_t, 8))(4UL)))).s943d + ((VECTOR(uint32_t, 4))(4294967295UL))))).x), 0xFDD9L)), (-1L), 0x22L, ((VECTOR(int8_t, 4))(0x48L)))).s6454220271653645))).s09 && ((VECTOR(int8_t, 2))(0x1DL))))).lo, 0x05L)) , l_574) != l_570[6][2][1]), (*p_95))), l_570[7][1][3], (-1L), ((VECTOR(int16_t, 4))(0x1544L)), ((VECTOR(int16_t, 2))(0x1F6AL)), (*p_1316->g_21), (-1L), l_574, l_570[1][1][2], ((VECTOR(int16_t, 2))(1L)), (-1L))).s9, (*p_1316->g_399))) , (void*)0) != l_575[0]);
            l_578--;
        }
        else
        { /* block id: 165 */
            uint32_t l_585 = 0x4E89C42FL;
            VECTOR(int16_t, 8) l_599 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-7L)), (-7L)), (-7L), 0L, (-7L));
            uint64_t *l_602 = &p_1316->g_119;
            int32_t l_604 = (-1L);
            VECTOR(int32_t, 4) l_671 = (VECTOR(int32_t, 4))(0x7F670654L, (VECTOR(int32_t, 2))(0x7F670654L, 4L), 4L);
            int32_t l_695 = 0x7D390449L;
            int32_t l_697 = 0x19C79F3FL;
            int32_t l_698[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
            uint8_t l_705 = 0x54L;
            int8_t l_734 = 0x7BL;
            VECTOR(int64_t, 16) l_741 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int64_t, 2))(1L, (-1L)), (VECTOR(int64_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
            union U0 **l_752 = (void*)0;
            int i;
            if (((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(((safe_mul_func_int8_t_s_s((*p_95), (safe_mod_func_uint32_t_u_u((l_585 > (&p_95 == l_586[2][0])), ((*l_507) = ((-1L) || ((safe_unary_minus_func_int16_t_s((l_604 = (((VECTOR(int8_t, 16))(l_588.s537d7cd85cb9a83a)).s1 ^ (safe_div_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint64_t_u_u((((*l_602) = (FAKE_DIVERGE(p_1316->global_2_offset, get_global_id(2), 10) < ((safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 16))(l_599.s5355756202153765)).s5, 5)) >= ((&p_1316->g_363 == ((p_1316->g_322.s5 ^ (safe_rshift_func_uint8_t_u_u(247UL, 6))) , &p_1316->g_363)) & 5L)))) != 0x2DD90035978D2E11L), l_599.s3)) || (*p_1316->g_21)), 255UL)), l_603)), p_1316->g_220.s8)))))) != l_585))))))) && 0x2EF7L), 0x69375C22L, ((VECTOR(int32_t, 8))(1L)), (-7L), (-1L), l_585, ((VECTOR(int32_t, 2))((-3L))), 7L)).lo && ((VECTOR(int32_t, 8))((-1L)))))), ((VECTOR(int32_t, 8))(0x74328A59L))))).s5)
            { /* block id: 169 */
                uint16_t l_605 = 1UL;
                int16_t **l_616 = &l_551[0][1];
                int16_t ***l_615[10] = {&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616};
                int32_t l_621 = 0x6F0DB3BDL;
                int32_t l_622 = 0x5C44726EL;
                uint8_t l_623 = 246UL;
                int16_t l_626 = 0L;
                int8_t l_648 = 0x18L;
                VECTOR(int8_t, 16) l_664 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int8_t, 2))(0L, 0L), (VECTOR(int8_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
                int32_t l_699 = 1L;
                int32_t l_702 = (-1L);
                int i;
                l_605 ^= (*p_1316->g_158);
                (*l_517) |= ((VECTOR(int32_t, 16))(p_1316->g_606.yyyyyyyyxyxxyyyy)).sd;
                if ((((safe_mul_func_int16_t_s_s((*p_1316->g_21), (safe_div_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(0x7405L, 6)), (((+(((safe_sub_func_uint16_t_u_u(1UL, (((l_615[9] != (void*)0) , ((*p_1316->g_555) = (*p_1316->g_555))) == (void*)0))) > ((*p_1316->g_399) >= (safe_mod_func_uint64_t_u_u(l_605, l_605)))) <= (-3L))) >= p_1316->g_353.x) ^ 0xA6E0L))))) <= 4294967290UL) > (*p_95)))
                { /* block id: 173 */
                    for (l_351 = 29; (l_351 == 50); ++l_351)
                    { /* block id: 176 */
                        (*l_517) ^= (l_605 ^ (*p_1316->g_21));
                    }
                    (*l_501) &= 0L;
                    l_623++;
                    if ((l_599.s0 != ((*p_95) <= l_626)))
                    { /* block id: 181 */
                        (*l_509) = ((VECTOR(int32_t, 2))((~((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x214D8211L, (-6L))), 0x304B8AEDL, (-6L))).even))).lo;
                    }
                    else
                    { /* block id: 183 */
                        l_604 = 0x03A2EEEDL;
                        (*l_502) = ((*l_505) = l_627[1][4]);
                    }
                }
                else
                { /* block id: 188 */
                    int32_t l_642 = 0x675556B7L;
                    (*l_505) ^= (safe_mul_func_int16_t_s_s(l_626, l_623));
                    for (l_548 = 0; (l_548 > 29); l_548 = safe_add_func_int16_t_s_s(l_548, 4))
                    { /* block id: 192 */
                        union U0 l_643 = {0};
                        int32_t l_645 = 9L;
                        uint32_t *l_646[10] = {&l_585,&p_1316->g_647,&l_585,&l_585,&p_1316->g_647,&l_585,&l_585,&p_1316->g_647,&l_585,&l_585};
                        int i;
                        (*l_190) = (void*)0;
                        (*l_515) &= ((safe_lshift_func_int16_t_s_u(((((*p_1316->g_399) == (safe_div_func_uint32_t_u_u((p_1316->g_647 &= ((*p_95) ^ (FAKE_DIVERGE(p_1316->group_0_offset, get_group_id(0), 10) ^ (safe_lshift_func_int8_t_s_s(0x5AL, (l_645 = (safe_sub_func_int16_t_s_s((((((safe_add_func_uint8_t_u_u(l_642, (l_643 , 1UL))) , ((l_585 , (safe_unary_minus_func_int64_t_s(p_1316->g_137))) > (!(((l_642 = ((VECTOR(int64_t, 8))((-1L), ((*l_517) < 0x667DL), l_585, 1L, ((VECTOR(int64_t, 2))((-3L))), 0L, 0x2E15C4BAD4CDFA73L)).s2) , (void*)0) == &l_549)))) != p_1316->g_30) | FAKE_DIVERGE(p_1316->global_0_offset, get_global_id(0), 10)) ^ l_604), l_626)))))))), p_1316->g_119))) >= l_648) & 1L), 2)) && l_621);
                    }
                    for (l_489 = 25; (l_489 < 45); ++l_489)
                    { /* block id: 201 */
                        uint8_t l_651 = 255UL;
                        if ((*l_507))
                            break;
                        ++l_651;
                        if (l_651)
                            continue;
                    }
                    (*l_507) = l_621;
                }
                if ((safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((safe_sub_func_uint8_t_u_u((l_622 |= l_623), (p_1316->g_128.sd && (safe_mod_func_uint16_t_u_u((((VECTOR(int8_t, 8))((~((VECTOR(int8_t, 4))(0L, (-10L), 0x04L, 0x19L)).zyyxyzyz))).s1 , 0x9376L), 0xE20CL))))) > (((4294967295UL < ((safe_sub_func_uint32_t_u_u(p_1316->g_117, (l_604 , (((VECTOR(int8_t, 4))(0x17L, ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(l_664.sd8313c7d)).s25 && ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(0x2AL, ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(0x4AL, 0x05L, (-5L), 0x17L, ((VECTOR(int8_t, 2))(1L)), (*p_95), 0x52L, ((VECTOR(int8_t, 8))(0x4EL)))).s71, ((VECTOR(int8_t, 2))(0x08L)), ((VECTOR(int8_t, 2))(0x1BL))))), 0x6CL, 0x6BL, (-8L), (-1L), 0x40L)).s2450147605655427 || ((VECTOR(int8_t, 16))(0x75L))))).s76, ((VECTOR(int8_t, 2))(0x16L)), ((VECTOR(int8_t, 2))(0x68L))))) && ((VECTOR(int8_t, 2))(0x4BL))))).yyxxyxxyxxyyyyyy, ((VECTOR(int8_t, 16))(0x05L))))).scc))), ((VECTOR(int8_t, 2))(0L))))), (-1L))).x || l_623)))) > GROUP_DIVERGE(0, 1))) , 4UL) | FAKE_DIVERGE(p_1316->global_2_offset, get_global_id(2), 10))), 0x2040L)), l_599.s4)))
                { /* block id: 209 */
                    uint64_t l_668 = 0UL;
                    int32_t l_684 = 0x49A82DC2L;
                    int32_t l_688 = 9L;
                    int32_t l_696 = 1L;
                    int32_t l_701 = (-9L);
                    int32_t l_703 = (-4L);
                    int64_t **l_719 = &l_547;
                    for (l_241 = 0; (l_241 >= (-2)); l_241--)
                    { /* block id: 212 */
                        uint32_t l_667 = 0xCA0DB47BL;
                        (*l_512) &= ((void*)0 == (*p_1316->g_554));
                        (*l_512) |= l_667;
                    }
                    if ((l_668 && (((0x38E7L ^ 0x2DDAL) , l_668) ^ (l_684 = (safe_div_func_int64_t_s_s((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((+l_599.s5), 0x39EA6987L, (-5L), 0x04455897L)).yzzwwxww || ((VECTOR(int32_t, 8))(l_671.zxwxxxzz))))).s5 , (safe_rshift_func_int16_t_s_s(((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(p_1316->g_676.s6ecf6b1ed4d7146f)).s90 | ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(p_1316->g_677.scc3525df32ee3e05))))).even, ((VECTOR(int8_t, 2))(l_678.s9e)).xxyxyxyx))).s33))).even, ((((l_622 = (p_1316->g_679[5] != ((((VECTOR(uint64_t, 2))(0x62C1A3DC8BC0AF0BL, 18446744073709551615UL)).hi & (++(*l_602))) , &p_1316->g_363))) || (0x0158B924L ^ (safe_div_func_int64_t_s_s((~l_605), p_1316->g_322.s5)))) <= l_664.s5) == (*p_95)))) || l_668), 1))), l_668))))))
                    { /* block id: 219 */
                        int64_t l_685 = 0x12FACABEE43A0A2AL;
                        int32_t l_689 = 1L;
                        int32_t l_691 = 0x110A1835L;
                        int32_t l_692 = 0x3C1B1089L;
                        int32_t l_693 = 2L;
                        int32_t l_694 = 1L;
                        int32_t l_700 = 0x343A6767L;
                        int32_t l_704 = 0x596185C9L;
                        (*l_509) ^= l_685;
                        (*l_515) = (safe_mod_func_int32_t_s_s(l_684, GROUP_DIVERGE(0, 1)));
                        l_705--;
                    }
                    else
                    { /* block id: 223 */
                        uint32_t l_710 = 4294967295UL;
                        uint32_t *l_718 = &l_489;
                        int64_t ***l_720 = (void*)0;
                        (*p_1316->g_721) = (((*l_718) = (safe_mul_func_uint8_t_u_u(l_699, ((((l_710 & ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_1316->g_711.xy)), 4294967295UL, 0UL)), (p_1316->g_676.s5 ^ ((*l_504) &= (((l_710 < (safe_div_func_int32_t_s_s(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 2))(p_1316->g_714.xx)).xyyy, (int32_t)(safe_div_func_int32_t_s_s(((7L & ((void*)0 != &p_1316->g_137)) & 1UL), p_1316->g_22)), (int32_t)l_605))).wzzxxzzxxxxwzxxx, ((VECTOR(int32_t, 16))(0L)), ((VECTOR(int32_t, 16))(0x4DE8FE9AL))))).s7, FAKE_DIVERGE(p_1316->global_1_offset, get_global_id(1), 10)))) , l_717) == (void*)0))), 0xA6A5F5FEL, 0x681CE3E5L, ((VECTOR(uint32_t, 8))(0x6B37D610L)), 1UL)).sf) , GROUP_DIVERGE(0, 1)) , (*p_1316->g_399)) <= FAKE_DIVERGE(p_1316->global_0_offset, get_global_id(0), 10))))) , l_719);
                    }
                    for (l_702 = 0; (l_702 < (-3)); l_702 = safe_sub_func_uint8_t_u_u(l_702, 1))
                    { /* block id: 230 */
                        return &p_1316->g_10;
                    }
                }
                else
                { /* block id: 233 */
                    (**l_717) = (**l_717);
                }
            }
            else
            { /* block id: 236 */
                int32_t l_725 = (-9L);
                int32_t l_726 = (-9L);
                int32_t l_727 = (-4L);
                int16_t l_728[4];
                int32_t l_729 = 1L;
                int32_t l_730 = 0x418B9FD6L;
                int8_t l_731 = 0x77L;
                int32_t l_733[5] = {1L,1L,1L,1L,1L};
                uint32_t l_735 = 0UL;
                int i;
                for (i = 0; i < 4; i++)
                    l_728[i] = 0x2459L;
                --l_735;
            }
            (*l_509) = (safe_sub_func_int8_t_s_s((0x10F50261L ^ (*p_1316->g_158)), (((*p_95) && (((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 8))((*l_505), 0x33D465DD8A20FF6DL, (((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(l_740.s7306)).zwyzzwywyxxxzxyz && ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(l_741.sc305eaf0)).odd || ((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(0x26FEF22CC16E96BBL, (-2L))).yyxyxyxyyyyxyyxy == ((VECTOR(int64_t, 16))((((void*)0 != (*l_717)) ^ ((safe_add_func_int16_t_s_s((255UL && (safe_mod_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u((*l_504))), 7)) == ((((((9L && l_751) & p_1316->g_677.s2) > l_671.y) ^ (*p_1316->g_399)) == l_698[2]) <= 247UL)) && (*p_95)), 0xA6L))), 0UL)) <= l_734)), l_741.s7, ((VECTOR(int64_t, 4))((-1L))), 0x78C5B76C10477B7AL, 0x3E40DA82B15B6487L, 0x55B29FBFB7C0DC03L, 0x0D2373E247FBBF98L, 0L, l_734, p_1316->g_220.s1, 0x0A6CF6CC39FE1E1CL, 0x0485C123657145DCL, 0x652E8B42290CAA0DL))))).even, ((VECTOR(int64_t, 8))(9L))))).odd))), ((VECTOR(int64_t, 4))(0x40B513B3F3233DF0L)), ((VECTOR(int64_t, 4))((-8L)))))).yxxywxzyzwwxywww))).odd ^ ((VECTOR(int64_t, 8))(0x3E337F43BCB26CAEL))))).lo, ((VECTOR(int64_t, 4))(0x70A45381B3F03029L))))), ((VECTOR(int64_t, 4))(0x109D5D204EC75097L)), ((VECTOR(int64_t, 4))(0x57D4CE0CC969D10DL))))).hi, ((VECTOR(int64_t, 2))(3L))))).odd >= 7UL), GROUP_DIVERGE(0, 1), 18446744073709551615UL, (*l_501), 0x0DC81C8047CBDAA3L, 1UL)), (uint64_t)18446744073709551615UL))).s0 > (-3L))) ^ (*p_1316->g_399))));
            (*p_1316->g_753) = l_497;
        }
        for (p_1316->g_362 = 5; (p_1316->g_362 > (-28)); --p_1316->g_362)
        { /* block id: 244 */
            VECTOR(uint16_t, 2) l_769 = (VECTOR(uint16_t, 2))(0xF22BL, 0xDAE3L);
            int32_t l_772 = 8L;
            VECTOR(uint64_t, 8) l_808 = (VECTOR(uint64_t, 8))(0x3AEBF19857010753L, (VECTOR(uint64_t, 4))(0x3AEBF19857010753L, (VECTOR(uint64_t, 2))(0x3AEBF19857010753L, 0UL), 0UL), 0UL, 0x3AEBF19857010753L, 0UL);
            VECTOR(uint64_t, 8) l_809 = (VECTOR(uint64_t, 8))(0x815E7856C9F076FCL, (VECTOR(uint64_t, 4))(0x815E7856C9F076FCL, (VECTOR(uint64_t, 2))(0x815E7856C9F076FCL, 1UL), 1UL), 1UL, 0x815E7856C9F076FCL, 1UL);
            int i;
            (*p_1316->g_756) = ((**l_717) = (*l_190));
            l_772 |= ((safe_sub_func_uint8_t_u_u((1UL >= (*p_1316->g_399)), (safe_mul_func_uint16_t_u_u((*p_1316->g_399), ((void*)0 != l_762[1][4]))))) && (((((safe_add_func_int8_t_s_s(1L, ((VECTOR(int8_t, 8))(l_765.xyxzywyx)).s2)) > (&p_1316->g_722 != (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(0x56F4L, (-1L), 4L, 0x0E5BL)), 1L, ((VECTOR(int16_t, 2))(2L, 0x6207L)), 0x5583L)).odd, ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 4))(0x7F90L, ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))(l_766.ywwwzwxxxwzwwxwx)).s76, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(65535UL, 0x3D39L)).yyxx - ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(l_769.xx)).xyxxyxxy ^ ((VECTOR(uint16_t, 8))(l_769.y, 0x2026L, ((VECTOR(uint16_t, 2))(0x32A0L, 0xC9C3L)), 1UL, ((VECTOR(uint16_t, 2))(0x7198L, 5UL)), 0xD082L))))).even))).hi))), 65526UL)).wxywwxzxwzwxwzzx, ((VECTOR(uint16_t, 8))(1UL, 65532UL, 0UL, (safe_mul_func_uint16_t_u_u((*p_1316->g_399), 0xE7B2L)), (*p_1316->g_399), 65530UL, 0xFC15L, 65527UL)).s5706753264742106))), ((VECTOR(uint16_t, 16))(0x2985L))))).scd06, ((VECTOR(uint16_t, 4))(1UL)))))))), ((VECTOR(int32_t, 2))(0x0E0AA484L)), (-9L), 0x6594E5F3L)).s4 , &p_1316->g_722))) == 5L) <= l_769.x) && l_769.y));
            (**l_717) = (*l_190);
            for (l_751 = 0; (l_751 < 60); ++l_751)
            { /* block id: 251 */
                uint16_t l_775 = 1UL;
                int32_t **l_794 = &p_1316->g_556;
                uint32_t l_812 = 0x863736F3L;
                int32_t l_822 = (-1L);
                (**l_717) = (*l_190);
                l_775++;
                for (l_548 = (-23); (l_548 >= (-27)); l_548 = safe_sub_func_int32_t_s_s(l_548, 3))
                { /* block id: 256 */
                    VECTOR(int32_t, 16) l_780 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x015B630CL), 0x015B630CL), 0x015B630CL, (-6L), 0x015B630CL, (VECTOR(int32_t, 2))((-6L), 0x015B630CL), (VECTOR(int32_t, 2))((-6L), 0x015B630CL), (-6L), 0x015B630CL, (-6L), 0x015B630CL);
                    int32_t *l_782 = &l_270;
                    int i;
                    (*l_504) = ((VECTOR(int32_t, 8))(l_780.sb745e87c)).s3;
                    if ((l_775 & (*l_515)))
                    { /* block id: 258 */
                        (*l_501) |= ((void*)0 != p_1316->g_567[4][4][2]);
                    }
                    else
                    { /* block id: 260 */
                        (*l_190) = l_781[2][8];
                        (*l_509) = ((*p_95) == (-1L));
                        (**l_717) = (*l_190);
                        l_782 = (**l_717);
                    }
                    l_781[2][8] = ((**l_717) = (void*)0);
                    (*l_505) ^= (p_1316->g_783 != (void*)0);
                }
                if ((l_772 < l_775))
                { /* block id: 270 */
                    uint64_t l_785 = 1UL;
                    int32_t *l_793 = &p_1316->g_30;
                    l_785--;
                    for (l_603 = 0; (l_603 == 9); l_603 = safe_add_func_uint32_t_u_u(l_603, 5))
                    { /* block id: 274 */
                        VECTOR(int8_t, 4) l_792 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x02L), 0x02L);
                        int i;
                        l_772 ^= (safe_add_func_uint8_t_u_u(0x95L, ((VECTOR(int8_t, 4))(l_792.zzyx)).w));
                        (*l_190) = l_793;
                    }
                    (*p_1316->g_554) = l_794;
                }
                else
                { /* block id: 279 */
                    int64_t **l_798 = (void*)0;
                    int64_t **l_799 = &l_547;
                    int32_t l_800 = 0x197BCCD7L;
                    int8_t *l_821 = (void*)0;
                    (*l_502) = (safe_sub_func_uint8_t_u_u((((~((VECTOR(int16_t, 8))(p_1316->g_797.zwwwzwzz)).s1) == 0UL) <= (((*l_799) = &l_627[1][4]) == &l_520)), (l_800 = (*p_95))));
                    (*l_501) = (l_775 ^ ((*l_512) |= (safe_lshift_func_uint16_t_u_u(0x74C1L, (((safe_unary_minus_func_uint8_t_u(255UL)) > ((*l_502) < (~(((VECTOR(int32_t, 2))(0x61F33678L, 9L)).hi | (((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 8))(0x0DB5D9173560D312L, p_1316->g_355.y, ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 2))(l_808.s74)).yxyx, ((VECTOR(uint64_t, 4))(l_809.s4200)), ((VECTOR(uint64_t, 8))((safe_mul_func_uint16_t_u_u((0x5DC54BFD29E8D00BL ^ l_812), (p_1316->g_475.s4 >= ((l_822 = ((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1316->global_2_offset, get_global_id(2), 10), (safe_sub_func_int16_t_s_s((((((safe_sub_func_uint64_t_u_u((0UL && p_1316->g_369.s3), l_800)) < 5L) , l_800) , l_821) == &p_1316->g_10), 1UL)))) == l_800)) >= l_769.x)))), ((VECTOR(uint64_t, 4))(0xEE5B527B950FC433L)), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 0UL)).hi))), 0x71C77FE698051A7BL, 0xDA6519B39CAA554FL)).s1431722063233221, ((VECTOR(uint64_t, 16))(0xE391ADD9B912252AL)), ((VECTOR(uint64_t, 16))(18446744073709551607UL))))).s2a << ((VECTOR(uint64_t, 2))(64))))).xxyxxxxy, ((VECTOR(uint64_t, 8))(0x558DDBB8DDF11FDEL)), ((VECTOR(uint64_t, 8))(18446744073709551615UL))))) + ((VECTOR(uint64_t, 8))(0x5C36B0AB5C1BB2A5L))))).odd, ((VECTOR(uint64_t, 4))(0x8696ED6F27BCE922L))))).w == p_1316->g_442.x))))) && (*p_95))))));
                }
            }
        }
    }
    return p_95;
}


/* ------------------------------------------ */
/* 
 * reads : p_1316->g_137 p_1316->g_158 p_1316->g_157 p_1316->g_10 p_1316->g_77 p_1316->g_63 p_1316->g_69 p_1316->g_35 p_1316->g_109 p_1316->g_185 p_1316->g_187 p_1316->g_115
 * writes: p_1316->g_137 p_1316->g_77 p_1316->g_115 p_1316->g_157 p_1316->g_63 p_1316->g_117 p_1316->g_185 p_1316->g_187
 */
int8_t * func_96(int8_t * p_97, union U0  p_98, int8_t * p_99, int64_t  p_100, union U0  p_101, struct S1 * p_1316)
{ /* block id: 35 */
    uint16_t *l_136 = &p_1316->g_137;
    uint64_t *l_146 = &p_1316->g_117;
    int32_t *l_151 = &p_1316->g_35;
    int32_t *l_153 = &p_1316->g_35;
    int32_t **l_152 = &l_153;
    int32_t *l_154 = (void*)0;
    int32_t *l_155 = &p_1316->g_115;
    int32_t *l_159[3][2][10] = {{{(void*)0,&p_1316->g_115,(void*)0,&p_1316->g_30,(void*)0,(void*)0,&p_1316->g_30,&p_1316->g_35,&p_1316->g_30,(void*)0},{(void*)0,&p_1316->g_115,(void*)0,&p_1316->g_30,(void*)0,(void*)0,&p_1316->g_30,&p_1316->g_35,&p_1316->g_30,(void*)0}},{{(void*)0,&p_1316->g_115,(void*)0,&p_1316->g_30,(void*)0,(void*)0,&p_1316->g_30,&p_1316->g_35,&p_1316->g_30,(void*)0},{(void*)0,&p_1316->g_115,(void*)0,&p_1316->g_30,(void*)0,(void*)0,&p_1316->g_30,&p_1316->g_35,&p_1316->g_30,(void*)0}},{{(void*)0,&p_1316->g_115,(void*)0,&p_1316->g_30,(void*)0,(void*)0,&p_1316->g_30,&p_1316->g_35,&p_1316->g_30,(void*)0},{(void*)0,&p_1316->g_115,(void*)0,&p_1316->g_30,(void*)0,(void*)0,&p_1316->g_30,&p_1316->g_35,&p_1316->g_30,(void*)0}}};
    uint8_t l_160[1];
    int8_t *l_188 = &p_1316->g_10;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_160[i] = 1UL;
    (*p_1316->g_158) = ((safe_div_func_uint16_t_u_u(((*l_136)--), (safe_add_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), p_100)))) & (safe_lshift_func_int16_t_s_s(((p_1316->g_77[1][2][0] = 1L) || ((safe_mod_func_int8_t_s_s((-6L), (((*l_155) = ((l_146 == l_146) || (safe_rshift_func_int8_t_s_s(1L, (safe_mod_func_int32_t_s_s((l_151 != (l_154 = ((*l_152) = l_151))), GROUP_DIVERGE(0, 1))))))) && 9UL))) , 7L)), 1)));
    if (p_100)
        goto lbl_163;
lbl_163:
    l_160[0]++;
    for (p_1316->g_157 = 29; (p_1316->g_157 > (-6)); --p_1316->g_157)
    { /* block id: 46 */
        int8_t l_178 = 1L;
        int32_t l_183 = 1L;
        int64_t *l_184 = &p_1316->g_185;
        int32_t l_186 = 0x136F0B84L;
        p_1316->g_187[0][1] |= (l_186 = (p_1316->g_10 == (safe_mod_func_int64_t_s_s(((*l_184) ^= (safe_lshift_func_int16_t_s_u((((*l_146) = (((((VECTOR(uint16_t, 4))(1UL, (&p_1316->g_22 == (void*)0), 0x22A0L, 0UL)).w , ((safe_div_func_uint64_t_u_u((((safe_lshift_func_uint8_t_u_u(253UL, ((safe_add_func_int32_t_s_s(p_100, ((((safe_mul_func_int16_t_s_s((&p_1316->g_10 == ((p_1316->g_63.se = ((l_178 == (l_183 = (safe_mod_func_uint64_t_u_u((safe_add_func_int32_t_s_s(((*l_155) = ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(p_100, l_178, ((VECTOR(int32_t, 2))(0x1B71C95EL)), ((VECTOR(int32_t, 2))(4L)), 0x2B2746C7L, (-10L))).s55, ((VECTOR(int32_t, 2))((-9L)))))).even), 0UL)), p_1316->g_77[0][1][0])))) <= p_1316->g_63.s0)) , &l_178)), FAKE_DIVERGE(p_1316->global_1_offset, get_global_id(1), 10))) || p_100) || p_1316->g_69.x) == (**l_152)))) ^ p_100))) >= 0x61L) && 0x15A487C2L), p_1316->g_109.x)) > p_100)) ^ FAKE_DIVERGE(p_1316->local_1_offset, get_local_id(1), 10)) || 0x61679470L)) >= l_178), 1))), 18446744073709551615UL))));
        (*l_155) = 0L;
        (*l_155) |= (l_186 = ((void*)0 != p_99));
    }
    return l_188;
}


/* ------------------------------------------ */
/* 
 * reads : p_1316->g_117 p_1316->g_128 p_1316->g_132
 * writes: p_1316->g_117
 */
union U0  func_103(int16_t ** p_104, int8_t  p_105, uint32_t  p_106, int16_t * p_107, int32_t  p_108, struct S1 * p_1316)
{ /* block id: 24 */
    VECTOR(int16_t, 4) l_127 = (VECTOR(int16_t, 4))(0x2773L, (VECTOR(int16_t, 2))(0x2773L, 1L), 1L);
    VECTOR(int64_t, 16) l_129 = (VECTOR(int64_t, 16))(0x4393FB47EBAEA5EAL, (VECTOR(int64_t, 4))(0x4393FB47EBAEA5EAL, (VECTOR(int64_t, 2))(0x4393FB47EBAEA5EAL, (-1L)), (-1L)), (-1L), 0x4393FB47EBAEA5EAL, (-1L), (VECTOR(int64_t, 2))(0x4393FB47EBAEA5EAL, (-1L)), (VECTOR(int64_t, 2))(0x4393FB47EBAEA5EAL, (-1L)), 0x4393FB47EBAEA5EAL, (-1L), 0x4393FB47EBAEA5EAL, (-1L));
    int i;
    for (p_1316->g_117 = 0; (p_1316->g_117 != 42); p_1316->g_117++)
    { /* block id: 27 */
        int64_t l_124 = 0L;
        if ((safe_div_func_int64_t_s_s(((l_124 , &p_1316->g_10) != &p_105), (safe_sub_func_int16_t_s_s((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(l_127.wwwxyxwxzzwwzxzz)).odd < ((VECTOR(int16_t, 8))(p_1316->g_128.s06cf207f))))).s5 < 0x2C1BL), (9UL < ((VECTOR(int64_t, 8))(1L, 5L, ((VECTOR(int64_t, 4))(l_129.sa8e6)), 0x140A49417E072EDAL, 0x78BA2E113F5BBDA6L)).s6))))))
        { /* block id: 28 */
            union U0 l_130 = {0};
            return l_130;
        }
        else
        { /* block id: 30 */
            union U0 l_131 = {0};
            return l_131;
        }
    }
    return p_1316->g_132;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1317;
    struct S1* p_1316 = &c_1317;
    struct S1 c_1318 = {
        (-1L), // p_1316->g_10
        0x213EL, // p_1316->g_13
        (-3L), // p_1316->g_22
        &p_1316->g_22, // p_1316->g_21
        0x2F5A260DL, // p_1316->g_30
        (-9L), // p_1316->g_33
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x054668DAL), 0x054668DAL), 0x054668DAL, 1L, 0x054668DAL), // p_1316->g_34
        (-3L), // p_1316->g_35
        (void*)0, // p_1316->g_44
        (VECTOR(int64_t, 2))(5L, 0x42657A772BE76DCBL), // p_1316->g_50
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), // p_1316->g_59
        (VECTOR(int16_t, 16))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x48A1L), 0x48A1L), 0x48A1L, (-5L), 0x48A1L, (VECTOR(int16_t, 2))((-5L), 0x48A1L), (VECTOR(int16_t, 2))((-5L), 0x48A1L), (-5L), 0x48A1L, (-5L), 0x48A1L), // p_1316->g_63
        (VECTOR(int16_t, 8))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0x59E8L), 0x59E8L), 0x59E8L, (-9L), 0x59E8L), // p_1316->g_64
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x31L), 0x31L), 0x31L, 1L, 0x31L), // p_1316->g_67
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x08L), 0x08L), // p_1316->g_69
        (VECTOR(int8_t, 2))(0x30L, 0L), // p_1316->g_70
        {{{(-9L)},{(-9L)},{(-9L)}},{{(-9L)},{(-9L)},{(-9L)}}}, // p_1316->g_77
        (VECTOR(int32_t, 2))(0L, 0L), // p_1316->g_109
        1L, // p_1316->g_115
        18446744073709551611UL, // p_1316->g_117
        0x69C7970BCD743813L, // p_1316->g_119
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0BF1L), 0x0BF1L), 0x0BF1L, 1L, 0x0BF1L, (VECTOR(int16_t, 2))(1L, 0x0BF1L), (VECTOR(int16_t, 2))(1L, 0x0BF1L), 1L, 0x0BF1L, 1L, 0x0BF1L), // p_1316->g_128
        {0}, // p_1316->g_132
        (void*)0, // p_1316->g_133
        3UL, // p_1316->g_137
        0x6B62B2D3L, // p_1316->g_157
        {{{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157},{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157},{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157},{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157},{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157}},{{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157},{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157},{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157},{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157},{&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157,&p_1316->g_157}}}, // p_1316->g_156
        &p_1316->g_157, // p_1316->g_158
        0x335087B765648319L, // p_1316->g_185
        {{(-1L),0x7951488DL,5L,0x7951488DL},{(-1L),0x7951488DL,5L,0x7951488DL},{(-1L),0x7951488DL,5L,0x7951488DL}}, // p_1316->g_187
        (VECTOR(int32_t, 16))(0x2656022EL, (VECTOR(int32_t, 4))(0x2656022EL, (VECTOR(int32_t, 2))(0x2656022EL, (-9L)), (-9L)), (-9L), 0x2656022EL, (-9L), (VECTOR(int32_t, 2))(0x2656022EL, (-9L)), (VECTOR(int32_t, 2))(0x2656022EL, (-9L)), 0x2656022EL, (-9L), 0x2656022EL, (-9L)), // p_1316->g_219
        (VECTOR(int32_t, 16))(0x3CBD6449L, (VECTOR(int32_t, 4))(0x3CBD6449L, (VECTOR(int32_t, 2))(0x3CBD6449L, 7L), 7L), 7L, 0x3CBD6449L, 7L, (VECTOR(int32_t, 2))(0x3CBD6449L, 7L), (VECTOR(int32_t, 2))(0x3CBD6449L, 7L), 0x3CBD6449L, 7L, 0x3CBD6449L, 7L), // p_1316->g_220
        {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)}, // p_1316->g_280
        (VECTOR(uint64_t, 8))(0xC30FAA53490F24C3L, (VECTOR(uint64_t, 4))(0xC30FAA53490F24C3L, (VECTOR(uint64_t, 2))(0xC30FAA53490F24C3L, 1UL), 1UL), 1UL, 0xC30FAA53490F24C3L, 1UL), // p_1316->g_322
        (VECTOR(int32_t, 2))(1L, 0L), // p_1316->g_336
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x4A774B48L), 0x4A774B48L), // p_1316->g_338
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x343BF57CL), 0x343BF57CL), 0x343BF57CL, (-1L), 0x343BF57CL), // p_1316->g_339
        (VECTOR(int32_t, 2))(0x338B5462L, 0x13F11F2BL), // p_1316->g_353
        (VECTOR(int32_t, 4))(0x1E1F8F8FL, (VECTOR(int32_t, 2))(0x1E1F8F8FL, 0x637E399AL), 0x637E399AL), // p_1316->g_354
        (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0L), 0L), // p_1316->g_355
        (VECTOR(int16_t, 8))(0x2401L, (VECTOR(int16_t, 4))(0x2401L, (VECTOR(int16_t, 2))(0x2401L, (-1L)), (-1L)), (-1L), 0x2401L, (-1L)), // p_1316->g_358
        0x482B1340L, // p_1316->g_362
        (void*)0, // p_1316->g_363
        (VECTOR(int16_t, 2))((-2L), 0x6CE4L), // p_1316->g_366
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x15BDL), 0x15BDL), 0x15BDL, (-1L), 0x15BDL, (VECTOR(int16_t, 2))((-1L), 0x15BDL), (VECTOR(int16_t, 2))((-1L), 0x15BDL), (-1L), 0x15BDL, (-1L), 0x15BDL), // p_1316->g_369
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L), // p_1316->g_370
        {0x6B34L,0x6B34L,0x6B34L,0x6B34L,0x6B34L,0x6B34L}, // p_1316->g_390
        &p_1316->g_137, // p_1316->g_399
        (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0L), 0L), // p_1316->g_442
        (VECTOR(int32_t, 4))(0x5A75284BL, (VECTOR(int32_t, 2))(0x5A75284BL, (-8L)), (-8L)), // p_1316->g_447
        (VECTOR(int32_t, 2))(0x1D13AD6FL, 0x09A67368L), // p_1316->g_448
        (VECTOR(int32_t, 4))(0x4B565816L, (VECTOR(int32_t, 2))(0x4B565816L, (-1L)), (-1L)), // p_1316->g_452
        (VECTOR(int32_t, 4))(0x354BA32AL, (VECTOR(int32_t, 2))(0x354BA32AL, 9L), 9L), // p_1316->g_455
        0x0B8F3544L, // p_1316->g_459
        0x622A03E4C647F975L, // p_1316->g_461
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 5UL), 5UL), 5UL, 1UL, 5UL), // p_1316->g_475
        (VECTOR(uint8_t, 2))(255UL, 0x05L), // p_1316->g_476
        (VECTOR(uint8_t, 8))(0x8DL, (VECTOR(uint8_t, 4))(0x8DL, (VECTOR(uint8_t, 2))(0x8DL, 255UL), 255UL), 255UL, 0x8DL, 255UL), // p_1316->g_483
        &p_1316->g_132, // p_1316->g_494
        {{{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494}},{{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494}},{{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494}},{{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494}},{{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494}},{{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494}},{{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494},{&p_1316->g_494,&p_1316->g_494,&p_1316->g_494}}}, // p_1316->g_493
        (VECTOR(int16_t, 2))((-2L), 1L), // p_1316->g_529
        &p_1316->g_187[1][3], // p_1316->g_556
        &p_1316->g_556, // p_1316->g_555
        &p_1316->g_555, // p_1316->g_554
        {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1316->g_567
        (-1L), // p_1316->g_577
        (VECTOR(int32_t, 2))(0x01C7EA1AL, 0x6D9F1BDFL), // p_1316->g_606
        0x3952808DL, // p_1316->g_647
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x53L), 0x53L), 0x53L, (-1L), 0x53L, (VECTOR(int8_t, 2))((-1L), 0x53L), (VECTOR(int8_t, 2))((-1L), 0x53L), (-1L), 0x53L, (-1L), 0x53L), // p_1316->g_676
        (VECTOR(int8_t, 16))(0x15L, (VECTOR(int8_t, 4))(0x15L, (VECTOR(int8_t, 2))(0x15L, (-1L)), (-1L)), (-1L), 0x15L, (-1L), (VECTOR(int8_t, 2))(0x15L, (-1L)), (VECTOR(int8_t, 2))(0x15L, (-1L)), 0x15L, (-1L), 0x15L, (-1L)), // p_1316->g_677
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1316->g_679
        (VECTOR(uint32_t, 4))(0x8E6D9FC4L, (VECTOR(uint32_t, 2))(0x8E6D9FC4L, 0x60A928ADL), 0x60A928ADL), // p_1316->g_711
        (VECTOR(int32_t, 2))(0x289F6FD9L, 5L), // p_1316->g_714
        (void*)0, // p_1316->g_722
        &p_1316->g_722, // p_1316->g_721
        &p_1316->g_494, // p_1316->g_753
        (void*)0, // p_1316->g_757
        &p_1316->g_757, // p_1316->g_756
        &p_1316->g_44, // p_1316->g_784
        &p_1316->g_784, // p_1316->g_783
        (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, (-4L)), (-4L)), // p_1316->g_797
        (void*)0, // p_1316->g_849
        (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 1UL), 1UL), // p_1316->g_861
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x20919C5BL), 0x20919C5BL), 0x20919C5BL, (-1L), 0x20919C5BL, (VECTOR(int32_t, 2))((-1L), 0x20919C5BL), (VECTOR(int32_t, 2))((-1L), 0x20919C5BL), (-1L), 0x20919C5BL, (-1L), 0x20919C5BL), // p_1316->g_884
        (VECTOR(int64_t, 2))((-4L), 0x0724EBB0E23E74EFL), // p_1316->g_887
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 6L), 6L), // p_1316->g_939
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL), // p_1316->g_950
        (VECTOR(uint8_t, 16))(0xB9L, (VECTOR(uint8_t, 4))(0xB9L, (VECTOR(uint8_t, 2))(0xB9L, 0xB2L), 0xB2L), 0xB2L, 0xB9L, 0xB2L, (VECTOR(uint8_t, 2))(0xB9L, 0xB2L), (VECTOR(uint8_t, 2))(0xB9L, 0xB2L), 0xB9L, 0xB2L, 0xB9L, 0xB2L), // p_1316->g_968
        (VECTOR(uint8_t, 8))(0x05L, (VECTOR(uint8_t, 4))(0x05L, (VECTOR(uint8_t, 2))(0x05L, 3UL), 3UL), 3UL, 0x05L, 3UL), // p_1316->g_969
        (VECTOR(uint8_t, 4))(0x63L, (VECTOR(uint8_t, 2))(0x63L, 0x2BL), 0x2BL), // p_1316->g_970
        (VECTOR(uint32_t, 8))(0x343FAAC5L, (VECTOR(uint32_t, 4))(0x343FAAC5L, (VECTOR(uint32_t, 2))(0x343FAAC5L, 0UL), 0UL), 0UL, 0x343FAAC5L, 0UL), // p_1316->g_998
        (VECTOR(int32_t, 4))(0x7189DC15L, (VECTOR(int32_t, 2))(0x7189DC15L, 1L), 1L), // p_1316->g_1004
        (VECTOR(int32_t, 8))(0x40E711C4L, (VECTOR(int32_t, 4))(0x40E711C4L, (VECTOR(int32_t, 2))(0x40E711C4L, 5L), 5L), 5L, 0x40E711C4L, 5L), // p_1316->g_1005
        (VECTOR(int32_t, 4))(0x6890A336L, (VECTOR(int32_t, 2))(0x6890A336L, 0x5D7EAB80L), 0x5D7EAB80L), // p_1316->g_1006
        (VECTOR(int32_t, 8))(0x74356D6CL, (VECTOR(int32_t, 4))(0x74356D6CL, (VECTOR(int32_t, 2))(0x74356D6CL, 7L), 7L), 7L, 0x74356D6CL, 7L), // p_1316->g_1009
        (VECTOR(uint8_t, 16))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0x29L), 0x29L), 0x29L, 250UL, 0x29L, (VECTOR(uint8_t, 2))(250UL, 0x29L), (VECTOR(uint8_t, 2))(250UL, 0x29L), 250UL, 0x29L, 250UL, 0x29L), // p_1316->g_1014
        1UL, // p_1316->g_1040
        {&p_1316->g_757,&p_1316->g_757,&p_1316->g_757,&p_1316->g_757,&p_1316->g_757,&p_1316->g_757,&p_1316->g_757}, // p_1316->g_1051
        (VECTOR(uint8_t, 16))(0x17L, (VECTOR(uint8_t, 4))(0x17L, (VECTOR(uint8_t, 2))(0x17L, 0xF9L), 0xF9L), 0xF9L, 0x17L, 0xF9L, (VECTOR(uint8_t, 2))(0x17L, 0xF9L), (VECTOR(uint8_t, 2))(0x17L, 0xF9L), 0x17L, 0xF9L, 0x17L, 0xF9L), // p_1316->g_1058
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL), 255UL, 0UL, 255UL, (VECTOR(uint8_t, 2))(0UL, 255UL), (VECTOR(uint8_t, 2))(0UL, 255UL), 0UL, 255UL, 0UL, 255UL), // p_1316->g_1071
        (VECTOR(uint8_t, 4))(0x4EL, (VECTOR(uint8_t, 2))(0x4EL, 0xD2L), 0xD2L), // p_1316->g_1074
        (void*)0, // p_1316->g_1081
        (VECTOR(uint32_t, 16))(0x66BBD50EL, (VECTOR(uint32_t, 4))(0x66BBD50EL, (VECTOR(uint32_t, 2))(0x66BBD50EL, 0xDFED2333L), 0xDFED2333L), 0xDFED2333L, 0x66BBD50EL, 0xDFED2333L, (VECTOR(uint32_t, 2))(0x66BBD50EL, 0xDFED2333L), (VECTOR(uint32_t, 2))(0x66BBD50EL, 0xDFED2333L), 0x66BBD50EL, 0xDFED2333L, 0x66BBD50EL, 0xDFED2333L), // p_1316->g_1102
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x09D9L), 0x09D9L), 0x09D9L, (-1L), 0x09D9L, (VECTOR(int16_t, 2))((-1L), 0x09D9L), (VECTOR(int16_t, 2))((-1L), 0x09D9L), (-1L), 0x09D9L, (-1L), 0x09D9L), // p_1316->g_1112
        7UL, // p_1316->g_1120
        {{&p_1316->g_757,&p_1316->g_757},{&p_1316->g_757,&p_1316->g_757},{&p_1316->g_757,&p_1316->g_757},{&p_1316->g_757,&p_1316->g_757},{&p_1316->g_757,&p_1316->g_757},{&p_1316->g_757,&p_1316->g_757}}, // p_1316->g_1123
        (void*)0, // p_1316->g_1125
        &p_1316->g_757, // p_1316->g_1126
        (VECTOR(uint8_t, 2))(0x80L, 250UL), // p_1316->g_1137
        &p_1316->g_157, // p_1316->g_1148
        (VECTOR(uint16_t, 4))(0x9B90L, (VECTOR(uint16_t, 2))(0x9B90L, 1UL), 1UL), // p_1316->g_1155
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_1316->g_1169
        (void*)0, // p_1316->g_1187
        (void*)0, // p_1316->g_1188
        (VECTOR(int16_t, 4))(0x68D8L, (VECTOR(int16_t, 2))(0x68D8L, 1L), 1L), // p_1316->g_1193
        (VECTOR(uint16_t, 8))(0xEAF8L, (VECTOR(uint16_t, 4))(0xEAF8L, (VECTOR(uint16_t, 2))(0xEAF8L, 5UL), 5UL), 5UL, 0xEAF8L, 5UL), // p_1316->g_1223
        (void*)0, // p_1316->g_1232
        &p_1316->g_1232, // p_1316->g_1231
        (VECTOR(int8_t, 2))(0L, 2L), // p_1316->g_1245
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int8_t, 2))(1L, 1L), (VECTOR(int8_t, 2))(1L, 1L), 1L, 1L, 1L, 1L), // p_1316->g_1246
        (VECTOR(int8_t, 8))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 2L), 2L), 2L, 5L, 2L), // p_1316->g_1250
        (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), (-1L)), (-1L)), // p_1316->g_1260
        (VECTOR(int8_t, 2))(0L, (-3L)), // p_1316->g_1263
        &p_1316->g_1148, // p_1316->g_1276
        sequence_input[get_global_id(0)], // p_1316->global_0_offset
        sequence_input[get_global_id(1)], // p_1316->global_1_offset
        sequence_input[get_global_id(2)], // p_1316->global_2_offset
        sequence_input[get_local_id(0)], // p_1316->local_0_offset
        sequence_input[get_local_id(1)], // p_1316->local_1_offset
        sequence_input[get_local_id(2)], // p_1316->local_2_offset
        sequence_input[get_group_id(0)], // p_1316->group_0_offset
        sequence_input[get_group_id(1)], // p_1316->group_1_offset
        sequence_input[get_group_id(2)], // p_1316->group_2_offset
    };
    c_1317 = c_1318;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1316);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1316->g_10, "p_1316->g_10", print_hash_value);
    transparent_crc(p_1316->g_13, "p_1316->g_13", print_hash_value);
    transparent_crc(p_1316->g_22, "p_1316->g_22", print_hash_value);
    transparent_crc(p_1316->g_30, "p_1316->g_30", print_hash_value);
    transparent_crc(p_1316->g_33, "p_1316->g_33", print_hash_value);
    transparent_crc(p_1316->g_34.s0, "p_1316->g_34.s0", print_hash_value);
    transparent_crc(p_1316->g_34.s1, "p_1316->g_34.s1", print_hash_value);
    transparent_crc(p_1316->g_34.s2, "p_1316->g_34.s2", print_hash_value);
    transparent_crc(p_1316->g_34.s3, "p_1316->g_34.s3", print_hash_value);
    transparent_crc(p_1316->g_34.s4, "p_1316->g_34.s4", print_hash_value);
    transparent_crc(p_1316->g_34.s5, "p_1316->g_34.s5", print_hash_value);
    transparent_crc(p_1316->g_34.s6, "p_1316->g_34.s6", print_hash_value);
    transparent_crc(p_1316->g_34.s7, "p_1316->g_34.s7", print_hash_value);
    transparent_crc(p_1316->g_35, "p_1316->g_35", print_hash_value);
    transparent_crc(p_1316->g_50.x, "p_1316->g_50.x", print_hash_value);
    transparent_crc(p_1316->g_50.y, "p_1316->g_50.y", print_hash_value);
    transparent_crc(p_1316->g_59.x, "p_1316->g_59.x", print_hash_value);
    transparent_crc(p_1316->g_59.y, "p_1316->g_59.y", print_hash_value);
    transparent_crc(p_1316->g_59.z, "p_1316->g_59.z", print_hash_value);
    transparent_crc(p_1316->g_59.w, "p_1316->g_59.w", print_hash_value);
    transparent_crc(p_1316->g_63.s0, "p_1316->g_63.s0", print_hash_value);
    transparent_crc(p_1316->g_63.s1, "p_1316->g_63.s1", print_hash_value);
    transparent_crc(p_1316->g_63.s2, "p_1316->g_63.s2", print_hash_value);
    transparent_crc(p_1316->g_63.s3, "p_1316->g_63.s3", print_hash_value);
    transparent_crc(p_1316->g_63.s4, "p_1316->g_63.s4", print_hash_value);
    transparent_crc(p_1316->g_63.s5, "p_1316->g_63.s5", print_hash_value);
    transparent_crc(p_1316->g_63.s6, "p_1316->g_63.s6", print_hash_value);
    transparent_crc(p_1316->g_63.s7, "p_1316->g_63.s7", print_hash_value);
    transparent_crc(p_1316->g_63.s8, "p_1316->g_63.s8", print_hash_value);
    transparent_crc(p_1316->g_63.s9, "p_1316->g_63.s9", print_hash_value);
    transparent_crc(p_1316->g_63.sa, "p_1316->g_63.sa", print_hash_value);
    transparent_crc(p_1316->g_63.sb, "p_1316->g_63.sb", print_hash_value);
    transparent_crc(p_1316->g_63.sc, "p_1316->g_63.sc", print_hash_value);
    transparent_crc(p_1316->g_63.sd, "p_1316->g_63.sd", print_hash_value);
    transparent_crc(p_1316->g_63.se, "p_1316->g_63.se", print_hash_value);
    transparent_crc(p_1316->g_63.sf, "p_1316->g_63.sf", print_hash_value);
    transparent_crc(p_1316->g_64.s0, "p_1316->g_64.s0", print_hash_value);
    transparent_crc(p_1316->g_64.s1, "p_1316->g_64.s1", print_hash_value);
    transparent_crc(p_1316->g_64.s2, "p_1316->g_64.s2", print_hash_value);
    transparent_crc(p_1316->g_64.s3, "p_1316->g_64.s3", print_hash_value);
    transparent_crc(p_1316->g_64.s4, "p_1316->g_64.s4", print_hash_value);
    transparent_crc(p_1316->g_64.s5, "p_1316->g_64.s5", print_hash_value);
    transparent_crc(p_1316->g_64.s6, "p_1316->g_64.s6", print_hash_value);
    transparent_crc(p_1316->g_64.s7, "p_1316->g_64.s7", print_hash_value);
    transparent_crc(p_1316->g_67.s0, "p_1316->g_67.s0", print_hash_value);
    transparent_crc(p_1316->g_67.s1, "p_1316->g_67.s1", print_hash_value);
    transparent_crc(p_1316->g_67.s2, "p_1316->g_67.s2", print_hash_value);
    transparent_crc(p_1316->g_67.s3, "p_1316->g_67.s3", print_hash_value);
    transparent_crc(p_1316->g_67.s4, "p_1316->g_67.s4", print_hash_value);
    transparent_crc(p_1316->g_67.s5, "p_1316->g_67.s5", print_hash_value);
    transparent_crc(p_1316->g_67.s6, "p_1316->g_67.s6", print_hash_value);
    transparent_crc(p_1316->g_67.s7, "p_1316->g_67.s7", print_hash_value);
    transparent_crc(p_1316->g_69.x, "p_1316->g_69.x", print_hash_value);
    transparent_crc(p_1316->g_69.y, "p_1316->g_69.y", print_hash_value);
    transparent_crc(p_1316->g_69.z, "p_1316->g_69.z", print_hash_value);
    transparent_crc(p_1316->g_69.w, "p_1316->g_69.w", print_hash_value);
    transparent_crc(p_1316->g_70.x, "p_1316->g_70.x", print_hash_value);
    transparent_crc(p_1316->g_70.y, "p_1316->g_70.y", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1316->g_77[i][j][k], "p_1316->g_77[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1316->g_109.x, "p_1316->g_109.x", print_hash_value);
    transparent_crc(p_1316->g_109.y, "p_1316->g_109.y", print_hash_value);
    transparent_crc(p_1316->g_115, "p_1316->g_115", print_hash_value);
    transparent_crc(p_1316->g_117, "p_1316->g_117", print_hash_value);
    transparent_crc(p_1316->g_119, "p_1316->g_119", print_hash_value);
    transparent_crc(p_1316->g_128.s0, "p_1316->g_128.s0", print_hash_value);
    transparent_crc(p_1316->g_128.s1, "p_1316->g_128.s1", print_hash_value);
    transparent_crc(p_1316->g_128.s2, "p_1316->g_128.s2", print_hash_value);
    transparent_crc(p_1316->g_128.s3, "p_1316->g_128.s3", print_hash_value);
    transparent_crc(p_1316->g_128.s4, "p_1316->g_128.s4", print_hash_value);
    transparent_crc(p_1316->g_128.s5, "p_1316->g_128.s5", print_hash_value);
    transparent_crc(p_1316->g_128.s6, "p_1316->g_128.s6", print_hash_value);
    transparent_crc(p_1316->g_128.s7, "p_1316->g_128.s7", print_hash_value);
    transparent_crc(p_1316->g_128.s8, "p_1316->g_128.s8", print_hash_value);
    transparent_crc(p_1316->g_128.s9, "p_1316->g_128.s9", print_hash_value);
    transparent_crc(p_1316->g_128.sa, "p_1316->g_128.sa", print_hash_value);
    transparent_crc(p_1316->g_128.sb, "p_1316->g_128.sb", print_hash_value);
    transparent_crc(p_1316->g_128.sc, "p_1316->g_128.sc", print_hash_value);
    transparent_crc(p_1316->g_128.sd, "p_1316->g_128.sd", print_hash_value);
    transparent_crc(p_1316->g_128.se, "p_1316->g_128.se", print_hash_value);
    transparent_crc(p_1316->g_128.sf, "p_1316->g_128.sf", print_hash_value);
    transparent_crc(p_1316->g_137, "p_1316->g_137", print_hash_value);
    transparent_crc(p_1316->g_157, "p_1316->g_157", print_hash_value);
    transparent_crc(p_1316->g_185, "p_1316->g_185", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1316->g_187[i][j], "p_1316->g_187[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1316->g_219.s0, "p_1316->g_219.s0", print_hash_value);
    transparent_crc(p_1316->g_219.s1, "p_1316->g_219.s1", print_hash_value);
    transparent_crc(p_1316->g_219.s2, "p_1316->g_219.s2", print_hash_value);
    transparent_crc(p_1316->g_219.s3, "p_1316->g_219.s3", print_hash_value);
    transparent_crc(p_1316->g_219.s4, "p_1316->g_219.s4", print_hash_value);
    transparent_crc(p_1316->g_219.s5, "p_1316->g_219.s5", print_hash_value);
    transparent_crc(p_1316->g_219.s6, "p_1316->g_219.s6", print_hash_value);
    transparent_crc(p_1316->g_219.s7, "p_1316->g_219.s7", print_hash_value);
    transparent_crc(p_1316->g_219.s8, "p_1316->g_219.s8", print_hash_value);
    transparent_crc(p_1316->g_219.s9, "p_1316->g_219.s9", print_hash_value);
    transparent_crc(p_1316->g_219.sa, "p_1316->g_219.sa", print_hash_value);
    transparent_crc(p_1316->g_219.sb, "p_1316->g_219.sb", print_hash_value);
    transparent_crc(p_1316->g_219.sc, "p_1316->g_219.sc", print_hash_value);
    transparent_crc(p_1316->g_219.sd, "p_1316->g_219.sd", print_hash_value);
    transparent_crc(p_1316->g_219.se, "p_1316->g_219.se", print_hash_value);
    transparent_crc(p_1316->g_219.sf, "p_1316->g_219.sf", print_hash_value);
    transparent_crc(p_1316->g_220.s0, "p_1316->g_220.s0", print_hash_value);
    transparent_crc(p_1316->g_220.s1, "p_1316->g_220.s1", print_hash_value);
    transparent_crc(p_1316->g_220.s2, "p_1316->g_220.s2", print_hash_value);
    transparent_crc(p_1316->g_220.s3, "p_1316->g_220.s3", print_hash_value);
    transparent_crc(p_1316->g_220.s4, "p_1316->g_220.s4", print_hash_value);
    transparent_crc(p_1316->g_220.s5, "p_1316->g_220.s5", print_hash_value);
    transparent_crc(p_1316->g_220.s6, "p_1316->g_220.s6", print_hash_value);
    transparent_crc(p_1316->g_220.s7, "p_1316->g_220.s7", print_hash_value);
    transparent_crc(p_1316->g_220.s8, "p_1316->g_220.s8", print_hash_value);
    transparent_crc(p_1316->g_220.s9, "p_1316->g_220.s9", print_hash_value);
    transparent_crc(p_1316->g_220.sa, "p_1316->g_220.sa", print_hash_value);
    transparent_crc(p_1316->g_220.sb, "p_1316->g_220.sb", print_hash_value);
    transparent_crc(p_1316->g_220.sc, "p_1316->g_220.sc", print_hash_value);
    transparent_crc(p_1316->g_220.sd, "p_1316->g_220.sd", print_hash_value);
    transparent_crc(p_1316->g_220.se, "p_1316->g_220.se", print_hash_value);
    transparent_crc(p_1316->g_220.sf, "p_1316->g_220.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1316->g_280[i], "p_1316->g_280[i]", print_hash_value);

    }
    transparent_crc(p_1316->g_322.s0, "p_1316->g_322.s0", print_hash_value);
    transparent_crc(p_1316->g_322.s1, "p_1316->g_322.s1", print_hash_value);
    transparent_crc(p_1316->g_322.s2, "p_1316->g_322.s2", print_hash_value);
    transparent_crc(p_1316->g_322.s3, "p_1316->g_322.s3", print_hash_value);
    transparent_crc(p_1316->g_322.s4, "p_1316->g_322.s4", print_hash_value);
    transparent_crc(p_1316->g_322.s5, "p_1316->g_322.s5", print_hash_value);
    transparent_crc(p_1316->g_322.s6, "p_1316->g_322.s6", print_hash_value);
    transparent_crc(p_1316->g_322.s7, "p_1316->g_322.s7", print_hash_value);
    transparent_crc(p_1316->g_336.x, "p_1316->g_336.x", print_hash_value);
    transparent_crc(p_1316->g_336.y, "p_1316->g_336.y", print_hash_value);
    transparent_crc(p_1316->g_338.x, "p_1316->g_338.x", print_hash_value);
    transparent_crc(p_1316->g_338.y, "p_1316->g_338.y", print_hash_value);
    transparent_crc(p_1316->g_338.z, "p_1316->g_338.z", print_hash_value);
    transparent_crc(p_1316->g_338.w, "p_1316->g_338.w", print_hash_value);
    transparent_crc(p_1316->g_339.s0, "p_1316->g_339.s0", print_hash_value);
    transparent_crc(p_1316->g_339.s1, "p_1316->g_339.s1", print_hash_value);
    transparent_crc(p_1316->g_339.s2, "p_1316->g_339.s2", print_hash_value);
    transparent_crc(p_1316->g_339.s3, "p_1316->g_339.s3", print_hash_value);
    transparent_crc(p_1316->g_339.s4, "p_1316->g_339.s4", print_hash_value);
    transparent_crc(p_1316->g_339.s5, "p_1316->g_339.s5", print_hash_value);
    transparent_crc(p_1316->g_339.s6, "p_1316->g_339.s6", print_hash_value);
    transparent_crc(p_1316->g_339.s7, "p_1316->g_339.s7", print_hash_value);
    transparent_crc(p_1316->g_353.x, "p_1316->g_353.x", print_hash_value);
    transparent_crc(p_1316->g_353.y, "p_1316->g_353.y", print_hash_value);
    transparent_crc(p_1316->g_354.x, "p_1316->g_354.x", print_hash_value);
    transparent_crc(p_1316->g_354.y, "p_1316->g_354.y", print_hash_value);
    transparent_crc(p_1316->g_354.z, "p_1316->g_354.z", print_hash_value);
    transparent_crc(p_1316->g_354.w, "p_1316->g_354.w", print_hash_value);
    transparent_crc(p_1316->g_355.x, "p_1316->g_355.x", print_hash_value);
    transparent_crc(p_1316->g_355.y, "p_1316->g_355.y", print_hash_value);
    transparent_crc(p_1316->g_355.z, "p_1316->g_355.z", print_hash_value);
    transparent_crc(p_1316->g_355.w, "p_1316->g_355.w", print_hash_value);
    transparent_crc(p_1316->g_358.s0, "p_1316->g_358.s0", print_hash_value);
    transparent_crc(p_1316->g_358.s1, "p_1316->g_358.s1", print_hash_value);
    transparent_crc(p_1316->g_358.s2, "p_1316->g_358.s2", print_hash_value);
    transparent_crc(p_1316->g_358.s3, "p_1316->g_358.s3", print_hash_value);
    transparent_crc(p_1316->g_358.s4, "p_1316->g_358.s4", print_hash_value);
    transparent_crc(p_1316->g_358.s5, "p_1316->g_358.s5", print_hash_value);
    transparent_crc(p_1316->g_358.s6, "p_1316->g_358.s6", print_hash_value);
    transparent_crc(p_1316->g_358.s7, "p_1316->g_358.s7", print_hash_value);
    transparent_crc(p_1316->g_362, "p_1316->g_362", print_hash_value);
    transparent_crc(p_1316->g_366.x, "p_1316->g_366.x", print_hash_value);
    transparent_crc(p_1316->g_366.y, "p_1316->g_366.y", print_hash_value);
    transparent_crc(p_1316->g_369.s0, "p_1316->g_369.s0", print_hash_value);
    transparent_crc(p_1316->g_369.s1, "p_1316->g_369.s1", print_hash_value);
    transparent_crc(p_1316->g_369.s2, "p_1316->g_369.s2", print_hash_value);
    transparent_crc(p_1316->g_369.s3, "p_1316->g_369.s3", print_hash_value);
    transparent_crc(p_1316->g_369.s4, "p_1316->g_369.s4", print_hash_value);
    transparent_crc(p_1316->g_369.s5, "p_1316->g_369.s5", print_hash_value);
    transparent_crc(p_1316->g_369.s6, "p_1316->g_369.s6", print_hash_value);
    transparent_crc(p_1316->g_369.s7, "p_1316->g_369.s7", print_hash_value);
    transparent_crc(p_1316->g_369.s8, "p_1316->g_369.s8", print_hash_value);
    transparent_crc(p_1316->g_369.s9, "p_1316->g_369.s9", print_hash_value);
    transparent_crc(p_1316->g_369.sa, "p_1316->g_369.sa", print_hash_value);
    transparent_crc(p_1316->g_369.sb, "p_1316->g_369.sb", print_hash_value);
    transparent_crc(p_1316->g_369.sc, "p_1316->g_369.sc", print_hash_value);
    transparent_crc(p_1316->g_369.sd, "p_1316->g_369.sd", print_hash_value);
    transparent_crc(p_1316->g_369.se, "p_1316->g_369.se", print_hash_value);
    transparent_crc(p_1316->g_369.sf, "p_1316->g_369.sf", print_hash_value);
    transparent_crc(p_1316->g_370.s0, "p_1316->g_370.s0", print_hash_value);
    transparent_crc(p_1316->g_370.s1, "p_1316->g_370.s1", print_hash_value);
    transparent_crc(p_1316->g_370.s2, "p_1316->g_370.s2", print_hash_value);
    transparent_crc(p_1316->g_370.s3, "p_1316->g_370.s3", print_hash_value);
    transparent_crc(p_1316->g_370.s4, "p_1316->g_370.s4", print_hash_value);
    transparent_crc(p_1316->g_370.s5, "p_1316->g_370.s5", print_hash_value);
    transparent_crc(p_1316->g_370.s6, "p_1316->g_370.s6", print_hash_value);
    transparent_crc(p_1316->g_370.s7, "p_1316->g_370.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1316->g_390[i], "p_1316->g_390[i]", print_hash_value);

    }
    transparent_crc(p_1316->g_442.x, "p_1316->g_442.x", print_hash_value);
    transparent_crc(p_1316->g_442.y, "p_1316->g_442.y", print_hash_value);
    transparent_crc(p_1316->g_442.z, "p_1316->g_442.z", print_hash_value);
    transparent_crc(p_1316->g_442.w, "p_1316->g_442.w", print_hash_value);
    transparent_crc(p_1316->g_447.x, "p_1316->g_447.x", print_hash_value);
    transparent_crc(p_1316->g_447.y, "p_1316->g_447.y", print_hash_value);
    transparent_crc(p_1316->g_447.z, "p_1316->g_447.z", print_hash_value);
    transparent_crc(p_1316->g_447.w, "p_1316->g_447.w", print_hash_value);
    transparent_crc(p_1316->g_448.x, "p_1316->g_448.x", print_hash_value);
    transparent_crc(p_1316->g_448.y, "p_1316->g_448.y", print_hash_value);
    transparent_crc(p_1316->g_452.x, "p_1316->g_452.x", print_hash_value);
    transparent_crc(p_1316->g_452.y, "p_1316->g_452.y", print_hash_value);
    transparent_crc(p_1316->g_452.z, "p_1316->g_452.z", print_hash_value);
    transparent_crc(p_1316->g_452.w, "p_1316->g_452.w", print_hash_value);
    transparent_crc(p_1316->g_455.x, "p_1316->g_455.x", print_hash_value);
    transparent_crc(p_1316->g_455.y, "p_1316->g_455.y", print_hash_value);
    transparent_crc(p_1316->g_455.z, "p_1316->g_455.z", print_hash_value);
    transparent_crc(p_1316->g_455.w, "p_1316->g_455.w", print_hash_value);
    transparent_crc(p_1316->g_459, "p_1316->g_459", print_hash_value);
    transparent_crc(p_1316->g_461, "p_1316->g_461", print_hash_value);
    transparent_crc(p_1316->g_475.s0, "p_1316->g_475.s0", print_hash_value);
    transparent_crc(p_1316->g_475.s1, "p_1316->g_475.s1", print_hash_value);
    transparent_crc(p_1316->g_475.s2, "p_1316->g_475.s2", print_hash_value);
    transparent_crc(p_1316->g_475.s3, "p_1316->g_475.s3", print_hash_value);
    transparent_crc(p_1316->g_475.s4, "p_1316->g_475.s4", print_hash_value);
    transparent_crc(p_1316->g_475.s5, "p_1316->g_475.s5", print_hash_value);
    transparent_crc(p_1316->g_475.s6, "p_1316->g_475.s6", print_hash_value);
    transparent_crc(p_1316->g_475.s7, "p_1316->g_475.s7", print_hash_value);
    transparent_crc(p_1316->g_476.x, "p_1316->g_476.x", print_hash_value);
    transparent_crc(p_1316->g_476.y, "p_1316->g_476.y", print_hash_value);
    transparent_crc(p_1316->g_483.s0, "p_1316->g_483.s0", print_hash_value);
    transparent_crc(p_1316->g_483.s1, "p_1316->g_483.s1", print_hash_value);
    transparent_crc(p_1316->g_483.s2, "p_1316->g_483.s2", print_hash_value);
    transparent_crc(p_1316->g_483.s3, "p_1316->g_483.s3", print_hash_value);
    transparent_crc(p_1316->g_483.s4, "p_1316->g_483.s4", print_hash_value);
    transparent_crc(p_1316->g_483.s5, "p_1316->g_483.s5", print_hash_value);
    transparent_crc(p_1316->g_483.s6, "p_1316->g_483.s6", print_hash_value);
    transparent_crc(p_1316->g_483.s7, "p_1316->g_483.s7", print_hash_value);
    transparent_crc(p_1316->g_529.x, "p_1316->g_529.x", print_hash_value);
    transparent_crc(p_1316->g_529.y, "p_1316->g_529.y", print_hash_value);
    transparent_crc(p_1316->g_577, "p_1316->g_577", print_hash_value);
    transparent_crc(p_1316->g_606.x, "p_1316->g_606.x", print_hash_value);
    transparent_crc(p_1316->g_606.y, "p_1316->g_606.y", print_hash_value);
    transparent_crc(p_1316->g_647, "p_1316->g_647", print_hash_value);
    transparent_crc(p_1316->g_676.s0, "p_1316->g_676.s0", print_hash_value);
    transparent_crc(p_1316->g_676.s1, "p_1316->g_676.s1", print_hash_value);
    transparent_crc(p_1316->g_676.s2, "p_1316->g_676.s2", print_hash_value);
    transparent_crc(p_1316->g_676.s3, "p_1316->g_676.s3", print_hash_value);
    transparent_crc(p_1316->g_676.s4, "p_1316->g_676.s4", print_hash_value);
    transparent_crc(p_1316->g_676.s5, "p_1316->g_676.s5", print_hash_value);
    transparent_crc(p_1316->g_676.s6, "p_1316->g_676.s6", print_hash_value);
    transparent_crc(p_1316->g_676.s7, "p_1316->g_676.s7", print_hash_value);
    transparent_crc(p_1316->g_676.s8, "p_1316->g_676.s8", print_hash_value);
    transparent_crc(p_1316->g_676.s9, "p_1316->g_676.s9", print_hash_value);
    transparent_crc(p_1316->g_676.sa, "p_1316->g_676.sa", print_hash_value);
    transparent_crc(p_1316->g_676.sb, "p_1316->g_676.sb", print_hash_value);
    transparent_crc(p_1316->g_676.sc, "p_1316->g_676.sc", print_hash_value);
    transparent_crc(p_1316->g_676.sd, "p_1316->g_676.sd", print_hash_value);
    transparent_crc(p_1316->g_676.se, "p_1316->g_676.se", print_hash_value);
    transparent_crc(p_1316->g_676.sf, "p_1316->g_676.sf", print_hash_value);
    transparent_crc(p_1316->g_677.s0, "p_1316->g_677.s0", print_hash_value);
    transparent_crc(p_1316->g_677.s1, "p_1316->g_677.s1", print_hash_value);
    transparent_crc(p_1316->g_677.s2, "p_1316->g_677.s2", print_hash_value);
    transparent_crc(p_1316->g_677.s3, "p_1316->g_677.s3", print_hash_value);
    transparent_crc(p_1316->g_677.s4, "p_1316->g_677.s4", print_hash_value);
    transparent_crc(p_1316->g_677.s5, "p_1316->g_677.s5", print_hash_value);
    transparent_crc(p_1316->g_677.s6, "p_1316->g_677.s6", print_hash_value);
    transparent_crc(p_1316->g_677.s7, "p_1316->g_677.s7", print_hash_value);
    transparent_crc(p_1316->g_677.s8, "p_1316->g_677.s8", print_hash_value);
    transparent_crc(p_1316->g_677.s9, "p_1316->g_677.s9", print_hash_value);
    transparent_crc(p_1316->g_677.sa, "p_1316->g_677.sa", print_hash_value);
    transparent_crc(p_1316->g_677.sb, "p_1316->g_677.sb", print_hash_value);
    transparent_crc(p_1316->g_677.sc, "p_1316->g_677.sc", print_hash_value);
    transparent_crc(p_1316->g_677.sd, "p_1316->g_677.sd", print_hash_value);
    transparent_crc(p_1316->g_677.se, "p_1316->g_677.se", print_hash_value);
    transparent_crc(p_1316->g_677.sf, "p_1316->g_677.sf", print_hash_value);
    transparent_crc(p_1316->g_711.x, "p_1316->g_711.x", print_hash_value);
    transparent_crc(p_1316->g_711.y, "p_1316->g_711.y", print_hash_value);
    transparent_crc(p_1316->g_711.z, "p_1316->g_711.z", print_hash_value);
    transparent_crc(p_1316->g_711.w, "p_1316->g_711.w", print_hash_value);
    transparent_crc(p_1316->g_714.x, "p_1316->g_714.x", print_hash_value);
    transparent_crc(p_1316->g_714.y, "p_1316->g_714.y", print_hash_value);
    transparent_crc(p_1316->g_797.x, "p_1316->g_797.x", print_hash_value);
    transparent_crc(p_1316->g_797.y, "p_1316->g_797.y", print_hash_value);
    transparent_crc(p_1316->g_797.z, "p_1316->g_797.z", print_hash_value);
    transparent_crc(p_1316->g_797.w, "p_1316->g_797.w", print_hash_value);
    transparent_crc(p_1316->g_861.x, "p_1316->g_861.x", print_hash_value);
    transparent_crc(p_1316->g_861.y, "p_1316->g_861.y", print_hash_value);
    transparent_crc(p_1316->g_861.z, "p_1316->g_861.z", print_hash_value);
    transparent_crc(p_1316->g_861.w, "p_1316->g_861.w", print_hash_value);
    transparent_crc(p_1316->g_884.s0, "p_1316->g_884.s0", print_hash_value);
    transparent_crc(p_1316->g_884.s1, "p_1316->g_884.s1", print_hash_value);
    transparent_crc(p_1316->g_884.s2, "p_1316->g_884.s2", print_hash_value);
    transparent_crc(p_1316->g_884.s3, "p_1316->g_884.s3", print_hash_value);
    transparent_crc(p_1316->g_884.s4, "p_1316->g_884.s4", print_hash_value);
    transparent_crc(p_1316->g_884.s5, "p_1316->g_884.s5", print_hash_value);
    transparent_crc(p_1316->g_884.s6, "p_1316->g_884.s6", print_hash_value);
    transparent_crc(p_1316->g_884.s7, "p_1316->g_884.s7", print_hash_value);
    transparent_crc(p_1316->g_884.s8, "p_1316->g_884.s8", print_hash_value);
    transparent_crc(p_1316->g_884.s9, "p_1316->g_884.s9", print_hash_value);
    transparent_crc(p_1316->g_884.sa, "p_1316->g_884.sa", print_hash_value);
    transparent_crc(p_1316->g_884.sb, "p_1316->g_884.sb", print_hash_value);
    transparent_crc(p_1316->g_884.sc, "p_1316->g_884.sc", print_hash_value);
    transparent_crc(p_1316->g_884.sd, "p_1316->g_884.sd", print_hash_value);
    transparent_crc(p_1316->g_884.se, "p_1316->g_884.se", print_hash_value);
    transparent_crc(p_1316->g_884.sf, "p_1316->g_884.sf", print_hash_value);
    transparent_crc(p_1316->g_887.x, "p_1316->g_887.x", print_hash_value);
    transparent_crc(p_1316->g_887.y, "p_1316->g_887.y", print_hash_value);
    transparent_crc(p_1316->g_939.x, "p_1316->g_939.x", print_hash_value);
    transparent_crc(p_1316->g_939.y, "p_1316->g_939.y", print_hash_value);
    transparent_crc(p_1316->g_939.z, "p_1316->g_939.z", print_hash_value);
    transparent_crc(p_1316->g_939.w, "p_1316->g_939.w", print_hash_value);
    transparent_crc(p_1316->g_950.s0, "p_1316->g_950.s0", print_hash_value);
    transparent_crc(p_1316->g_950.s1, "p_1316->g_950.s1", print_hash_value);
    transparent_crc(p_1316->g_950.s2, "p_1316->g_950.s2", print_hash_value);
    transparent_crc(p_1316->g_950.s3, "p_1316->g_950.s3", print_hash_value);
    transparent_crc(p_1316->g_950.s4, "p_1316->g_950.s4", print_hash_value);
    transparent_crc(p_1316->g_950.s5, "p_1316->g_950.s5", print_hash_value);
    transparent_crc(p_1316->g_950.s6, "p_1316->g_950.s6", print_hash_value);
    transparent_crc(p_1316->g_950.s7, "p_1316->g_950.s7", print_hash_value);
    transparent_crc(p_1316->g_968.s0, "p_1316->g_968.s0", print_hash_value);
    transparent_crc(p_1316->g_968.s1, "p_1316->g_968.s1", print_hash_value);
    transparent_crc(p_1316->g_968.s2, "p_1316->g_968.s2", print_hash_value);
    transparent_crc(p_1316->g_968.s3, "p_1316->g_968.s3", print_hash_value);
    transparent_crc(p_1316->g_968.s4, "p_1316->g_968.s4", print_hash_value);
    transparent_crc(p_1316->g_968.s5, "p_1316->g_968.s5", print_hash_value);
    transparent_crc(p_1316->g_968.s6, "p_1316->g_968.s6", print_hash_value);
    transparent_crc(p_1316->g_968.s7, "p_1316->g_968.s7", print_hash_value);
    transparent_crc(p_1316->g_968.s8, "p_1316->g_968.s8", print_hash_value);
    transparent_crc(p_1316->g_968.s9, "p_1316->g_968.s9", print_hash_value);
    transparent_crc(p_1316->g_968.sa, "p_1316->g_968.sa", print_hash_value);
    transparent_crc(p_1316->g_968.sb, "p_1316->g_968.sb", print_hash_value);
    transparent_crc(p_1316->g_968.sc, "p_1316->g_968.sc", print_hash_value);
    transparent_crc(p_1316->g_968.sd, "p_1316->g_968.sd", print_hash_value);
    transparent_crc(p_1316->g_968.se, "p_1316->g_968.se", print_hash_value);
    transparent_crc(p_1316->g_968.sf, "p_1316->g_968.sf", print_hash_value);
    transparent_crc(p_1316->g_969.s0, "p_1316->g_969.s0", print_hash_value);
    transparent_crc(p_1316->g_969.s1, "p_1316->g_969.s1", print_hash_value);
    transparent_crc(p_1316->g_969.s2, "p_1316->g_969.s2", print_hash_value);
    transparent_crc(p_1316->g_969.s3, "p_1316->g_969.s3", print_hash_value);
    transparent_crc(p_1316->g_969.s4, "p_1316->g_969.s4", print_hash_value);
    transparent_crc(p_1316->g_969.s5, "p_1316->g_969.s5", print_hash_value);
    transparent_crc(p_1316->g_969.s6, "p_1316->g_969.s6", print_hash_value);
    transparent_crc(p_1316->g_969.s7, "p_1316->g_969.s7", print_hash_value);
    transparent_crc(p_1316->g_970.x, "p_1316->g_970.x", print_hash_value);
    transparent_crc(p_1316->g_970.y, "p_1316->g_970.y", print_hash_value);
    transparent_crc(p_1316->g_970.z, "p_1316->g_970.z", print_hash_value);
    transparent_crc(p_1316->g_970.w, "p_1316->g_970.w", print_hash_value);
    transparent_crc(p_1316->g_998.s0, "p_1316->g_998.s0", print_hash_value);
    transparent_crc(p_1316->g_998.s1, "p_1316->g_998.s1", print_hash_value);
    transparent_crc(p_1316->g_998.s2, "p_1316->g_998.s2", print_hash_value);
    transparent_crc(p_1316->g_998.s3, "p_1316->g_998.s3", print_hash_value);
    transparent_crc(p_1316->g_998.s4, "p_1316->g_998.s4", print_hash_value);
    transparent_crc(p_1316->g_998.s5, "p_1316->g_998.s5", print_hash_value);
    transparent_crc(p_1316->g_998.s6, "p_1316->g_998.s6", print_hash_value);
    transparent_crc(p_1316->g_998.s7, "p_1316->g_998.s7", print_hash_value);
    transparent_crc(p_1316->g_1004.x, "p_1316->g_1004.x", print_hash_value);
    transparent_crc(p_1316->g_1004.y, "p_1316->g_1004.y", print_hash_value);
    transparent_crc(p_1316->g_1004.z, "p_1316->g_1004.z", print_hash_value);
    transparent_crc(p_1316->g_1004.w, "p_1316->g_1004.w", print_hash_value);
    transparent_crc(p_1316->g_1005.s0, "p_1316->g_1005.s0", print_hash_value);
    transparent_crc(p_1316->g_1005.s1, "p_1316->g_1005.s1", print_hash_value);
    transparent_crc(p_1316->g_1005.s2, "p_1316->g_1005.s2", print_hash_value);
    transparent_crc(p_1316->g_1005.s3, "p_1316->g_1005.s3", print_hash_value);
    transparent_crc(p_1316->g_1005.s4, "p_1316->g_1005.s4", print_hash_value);
    transparent_crc(p_1316->g_1005.s5, "p_1316->g_1005.s5", print_hash_value);
    transparent_crc(p_1316->g_1005.s6, "p_1316->g_1005.s6", print_hash_value);
    transparent_crc(p_1316->g_1005.s7, "p_1316->g_1005.s7", print_hash_value);
    transparent_crc(p_1316->g_1006.x, "p_1316->g_1006.x", print_hash_value);
    transparent_crc(p_1316->g_1006.y, "p_1316->g_1006.y", print_hash_value);
    transparent_crc(p_1316->g_1006.z, "p_1316->g_1006.z", print_hash_value);
    transparent_crc(p_1316->g_1006.w, "p_1316->g_1006.w", print_hash_value);
    transparent_crc(p_1316->g_1009.s0, "p_1316->g_1009.s0", print_hash_value);
    transparent_crc(p_1316->g_1009.s1, "p_1316->g_1009.s1", print_hash_value);
    transparent_crc(p_1316->g_1009.s2, "p_1316->g_1009.s2", print_hash_value);
    transparent_crc(p_1316->g_1009.s3, "p_1316->g_1009.s3", print_hash_value);
    transparent_crc(p_1316->g_1009.s4, "p_1316->g_1009.s4", print_hash_value);
    transparent_crc(p_1316->g_1009.s5, "p_1316->g_1009.s5", print_hash_value);
    transparent_crc(p_1316->g_1009.s6, "p_1316->g_1009.s6", print_hash_value);
    transparent_crc(p_1316->g_1009.s7, "p_1316->g_1009.s7", print_hash_value);
    transparent_crc(p_1316->g_1014.s0, "p_1316->g_1014.s0", print_hash_value);
    transparent_crc(p_1316->g_1014.s1, "p_1316->g_1014.s1", print_hash_value);
    transparent_crc(p_1316->g_1014.s2, "p_1316->g_1014.s2", print_hash_value);
    transparent_crc(p_1316->g_1014.s3, "p_1316->g_1014.s3", print_hash_value);
    transparent_crc(p_1316->g_1014.s4, "p_1316->g_1014.s4", print_hash_value);
    transparent_crc(p_1316->g_1014.s5, "p_1316->g_1014.s5", print_hash_value);
    transparent_crc(p_1316->g_1014.s6, "p_1316->g_1014.s6", print_hash_value);
    transparent_crc(p_1316->g_1014.s7, "p_1316->g_1014.s7", print_hash_value);
    transparent_crc(p_1316->g_1014.s8, "p_1316->g_1014.s8", print_hash_value);
    transparent_crc(p_1316->g_1014.s9, "p_1316->g_1014.s9", print_hash_value);
    transparent_crc(p_1316->g_1014.sa, "p_1316->g_1014.sa", print_hash_value);
    transparent_crc(p_1316->g_1014.sb, "p_1316->g_1014.sb", print_hash_value);
    transparent_crc(p_1316->g_1014.sc, "p_1316->g_1014.sc", print_hash_value);
    transparent_crc(p_1316->g_1014.sd, "p_1316->g_1014.sd", print_hash_value);
    transparent_crc(p_1316->g_1014.se, "p_1316->g_1014.se", print_hash_value);
    transparent_crc(p_1316->g_1014.sf, "p_1316->g_1014.sf", print_hash_value);
    transparent_crc(p_1316->g_1040, "p_1316->g_1040", print_hash_value);
    transparent_crc(p_1316->g_1058.s0, "p_1316->g_1058.s0", print_hash_value);
    transparent_crc(p_1316->g_1058.s1, "p_1316->g_1058.s1", print_hash_value);
    transparent_crc(p_1316->g_1058.s2, "p_1316->g_1058.s2", print_hash_value);
    transparent_crc(p_1316->g_1058.s3, "p_1316->g_1058.s3", print_hash_value);
    transparent_crc(p_1316->g_1058.s4, "p_1316->g_1058.s4", print_hash_value);
    transparent_crc(p_1316->g_1058.s5, "p_1316->g_1058.s5", print_hash_value);
    transparent_crc(p_1316->g_1058.s6, "p_1316->g_1058.s6", print_hash_value);
    transparent_crc(p_1316->g_1058.s7, "p_1316->g_1058.s7", print_hash_value);
    transparent_crc(p_1316->g_1058.s8, "p_1316->g_1058.s8", print_hash_value);
    transparent_crc(p_1316->g_1058.s9, "p_1316->g_1058.s9", print_hash_value);
    transparent_crc(p_1316->g_1058.sa, "p_1316->g_1058.sa", print_hash_value);
    transparent_crc(p_1316->g_1058.sb, "p_1316->g_1058.sb", print_hash_value);
    transparent_crc(p_1316->g_1058.sc, "p_1316->g_1058.sc", print_hash_value);
    transparent_crc(p_1316->g_1058.sd, "p_1316->g_1058.sd", print_hash_value);
    transparent_crc(p_1316->g_1058.se, "p_1316->g_1058.se", print_hash_value);
    transparent_crc(p_1316->g_1058.sf, "p_1316->g_1058.sf", print_hash_value);
    transparent_crc(p_1316->g_1071.s0, "p_1316->g_1071.s0", print_hash_value);
    transparent_crc(p_1316->g_1071.s1, "p_1316->g_1071.s1", print_hash_value);
    transparent_crc(p_1316->g_1071.s2, "p_1316->g_1071.s2", print_hash_value);
    transparent_crc(p_1316->g_1071.s3, "p_1316->g_1071.s3", print_hash_value);
    transparent_crc(p_1316->g_1071.s4, "p_1316->g_1071.s4", print_hash_value);
    transparent_crc(p_1316->g_1071.s5, "p_1316->g_1071.s5", print_hash_value);
    transparent_crc(p_1316->g_1071.s6, "p_1316->g_1071.s6", print_hash_value);
    transparent_crc(p_1316->g_1071.s7, "p_1316->g_1071.s7", print_hash_value);
    transparent_crc(p_1316->g_1071.s8, "p_1316->g_1071.s8", print_hash_value);
    transparent_crc(p_1316->g_1071.s9, "p_1316->g_1071.s9", print_hash_value);
    transparent_crc(p_1316->g_1071.sa, "p_1316->g_1071.sa", print_hash_value);
    transparent_crc(p_1316->g_1071.sb, "p_1316->g_1071.sb", print_hash_value);
    transparent_crc(p_1316->g_1071.sc, "p_1316->g_1071.sc", print_hash_value);
    transparent_crc(p_1316->g_1071.sd, "p_1316->g_1071.sd", print_hash_value);
    transparent_crc(p_1316->g_1071.se, "p_1316->g_1071.se", print_hash_value);
    transparent_crc(p_1316->g_1071.sf, "p_1316->g_1071.sf", print_hash_value);
    transparent_crc(p_1316->g_1074.x, "p_1316->g_1074.x", print_hash_value);
    transparent_crc(p_1316->g_1074.y, "p_1316->g_1074.y", print_hash_value);
    transparent_crc(p_1316->g_1074.z, "p_1316->g_1074.z", print_hash_value);
    transparent_crc(p_1316->g_1074.w, "p_1316->g_1074.w", print_hash_value);
    transparent_crc(p_1316->g_1102.s0, "p_1316->g_1102.s0", print_hash_value);
    transparent_crc(p_1316->g_1102.s1, "p_1316->g_1102.s1", print_hash_value);
    transparent_crc(p_1316->g_1102.s2, "p_1316->g_1102.s2", print_hash_value);
    transparent_crc(p_1316->g_1102.s3, "p_1316->g_1102.s3", print_hash_value);
    transparent_crc(p_1316->g_1102.s4, "p_1316->g_1102.s4", print_hash_value);
    transparent_crc(p_1316->g_1102.s5, "p_1316->g_1102.s5", print_hash_value);
    transparent_crc(p_1316->g_1102.s6, "p_1316->g_1102.s6", print_hash_value);
    transparent_crc(p_1316->g_1102.s7, "p_1316->g_1102.s7", print_hash_value);
    transparent_crc(p_1316->g_1102.s8, "p_1316->g_1102.s8", print_hash_value);
    transparent_crc(p_1316->g_1102.s9, "p_1316->g_1102.s9", print_hash_value);
    transparent_crc(p_1316->g_1102.sa, "p_1316->g_1102.sa", print_hash_value);
    transparent_crc(p_1316->g_1102.sb, "p_1316->g_1102.sb", print_hash_value);
    transparent_crc(p_1316->g_1102.sc, "p_1316->g_1102.sc", print_hash_value);
    transparent_crc(p_1316->g_1102.sd, "p_1316->g_1102.sd", print_hash_value);
    transparent_crc(p_1316->g_1102.se, "p_1316->g_1102.se", print_hash_value);
    transparent_crc(p_1316->g_1102.sf, "p_1316->g_1102.sf", print_hash_value);
    transparent_crc(p_1316->g_1112.s0, "p_1316->g_1112.s0", print_hash_value);
    transparent_crc(p_1316->g_1112.s1, "p_1316->g_1112.s1", print_hash_value);
    transparent_crc(p_1316->g_1112.s2, "p_1316->g_1112.s2", print_hash_value);
    transparent_crc(p_1316->g_1112.s3, "p_1316->g_1112.s3", print_hash_value);
    transparent_crc(p_1316->g_1112.s4, "p_1316->g_1112.s4", print_hash_value);
    transparent_crc(p_1316->g_1112.s5, "p_1316->g_1112.s5", print_hash_value);
    transparent_crc(p_1316->g_1112.s6, "p_1316->g_1112.s6", print_hash_value);
    transparent_crc(p_1316->g_1112.s7, "p_1316->g_1112.s7", print_hash_value);
    transparent_crc(p_1316->g_1112.s8, "p_1316->g_1112.s8", print_hash_value);
    transparent_crc(p_1316->g_1112.s9, "p_1316->g_1112.s9", print_hash_value);
    transparent_crc(p_1316->g_1112.sa, "p_1316->g_1112.sa", print_hash_value);
    transparent_crc(p_1316->g_1112.sb, "p_1316->g_1112.sb", print_hash_value);
    transparent_crc(p_1316->g_1112.sc, "p_1316->g_1112.sc", print_hash_value);
    transparent_crc(p_1316->g_1112.sd, "p_1316->g_1112.sd", print_hash_value);
    transparent_crc(p_1316->g_1112.se, "p_1316->g_1112.se", print_hash_value);
    transparent_crc(p_1316->g_1112.sf, "p_1316->g_1112.sf", print_hash_value);
    transparent_crc(p_1316->g_1120, "p_1316->g_1120", print_hash_value);
    transparent_crc(p_1316->g_1137.x, "p_1316->g_1137.x", print_hash_value);
    transparent_crc(p_1316->g_1137.y, "p_1316->g_1137.y", print_hash_value);
    transparent_crc(p_1316->g_1155.x, "p_1316->g_1155.x", print_hash_value);
    transparent_crc(p_1316->g_1155.y, "p_1316->g_1155.y", print_hash_value);
    transparent_crc(p_1316->g_1155.z, "p_1316->g_1155.z", print_hash_value);
    transparent_crc(p_1316->g_1155.w, "p_1316->g_1155.w", print_hash_value);
    transparent_crc(p_1316->g_1169.s0, "p_1316->g_1169.s0", print_hash_value);
    transparent_crc(p_1316->g_1169.s1, "p_1316->g_1169.s1", print_hash_value);
    transparent_crc(p_1316->g_1169.s2, "p_1316->g_1169.s2", print_hash_value);
    transparent_crc(p_1316->g_1169.s3, "p_1316->g_1169.s3", print_hash_value);
    transparent_crc(p_1316->g_1169.s4, "p_1316->g_1169.s4", print_hash_value);
    transparent_crc(p_1316->g_1169.s5, "p_1316->g_1169.s5", print_hash_value);
    transparent_crc(p_1316->g_1169.s6, "p_1316->g_1169.s6", print_hash_value);
    transparent_crc(p_1316->g_1169.s7, "p_1316->g_1169.s7", print_hash_value);
    transparent_crc(p_1316->g_1193.x, "p_1316->g_1193.x", print_hash_value);
    transparent_crc(p_1316->g_1193.y, "p_1316->g_1193.y", print_hash_value);
    transparent_crc(p_1316->g_1193.z, "p_1316->g_1193.z", print_hash_value);
    transparent_crc(p_1316->g_1193.w, "p_1316->g_1193.w", print_hash_value);
    transparent_crc(p_1316->g_1223.s0, "p_1316->g_1223.s0", print_hash_value);
    transparent_crc(p_1316->g_1223.s1, "p_1316->g_1223.s1", print_hash_value);
    transparent_crc(p_1316->g_1223.s2, "p_1316->g_1223.s2", print_hash_value);
    transparent_crc(p_1316->g_1223.s3, "p_1316->g_1223.s3", print_hash_value);
    transparent_crc(p_1316->g_1223.s4, "p_1316->g_1223.s4", print_hash_value);
    transparent_crc(p_1316->g_1223.s5, "p_1316->g_1223.s5", print_hash_value);
    transparent_crc(p_1316->g_1223.s6, "p_1316->g_1223.s6", print_hash_value);
    transparent_crc(p_1316->g_1223.s7, "p_1316->g_1223.s7", print_hash_value);
    transparent_crc(p_1316->g_1245.x, "p_1316->g_1245.x", print_hash_value);
    transparent_crc(p_1316->g_1245.y, "p_1316->g_1245.y", print_hash_value);
    transparent_crc(p_1316->g_1246.s0, "p_1316->g_1246.s0", print_hash_value);
    transparent_crc(p_1316->g_1246.s1, "p_1316->g_1246.s1", print_hash_value);
    transparent_crc(p_1316->g_1246.s2, "p_1316->g_1246.s2", print_hash_value);
    transparent_crc(p_1316->g_1246.s3, "p_1316->g_1246.s3", print_hash_value);
    transparent_crc(p_1316->g_1246.s4, "p_1316->g_1246.s4", print_hash_value);
    transparent_crc(p_1316->g_1246.s5, "p_1316->g_1246.s5", print_hash_value);
    transparent_crc(p_1316->g_1246.s6, "p_1316->g_1246.s6", print_hash_value);
    transparent_crc(p_1316->g_1246.s7, "p_1316->g_1246.s7", print_hash_value);
    transparent_crc(p_1316->g_1246.s8, "p_1316->g_1246.s8", print_hash_value);
    transparent_crc(p_1316->g_1246.s9, "p_1316->g_1246.s9", print_hash_value);
    transparent_crc(p_1316->g_1246.sa, "p_1316->g_1246.sa", print_hash_value);
    transparent_crc(p_1316->g_1246.sb, "p_1316->g_1246.sb", print_hash_value);
    transparent_crc(p_1316->g_1246.sc, "p_1316->g_1246.sc", print_hash_value);
    transparent_crc(p_1316->g_1246.sd, "p_1316->g_1246.sd", print_hash_value);
    transparent_crc(p_1316->g_1246.se, "p_1316->g_1246.se", print_hash_value);
    transparent_crc(p_1316->g_1246.sf, "p_1316->g_1246.sf", print_hash_value);
    transparent_crc(p_1316->g_1250.s0, "p_1316->g_1250.s0", print_hash_value);
    transparent_crc(p_1316->g_1250.s1, "p_1316->g_1250.s1", print_hash_value);
    transparent_crc(p_1316->g_1250.s2, "p_1316->g_1250.s2", print_hash_value);
    transparent_crc(p_1316->g_1250.s3, "p_1316->g_1250.s3", print_hash_value);
    transparent_crc(p_1316->g_1250.s4, "p_1316->g_1250.s4", print_hash_value);
    transparent_crc(p_1316->g_1250.s5, "p_1316->g_1250.s5", print_hash_value);
    transparent_crc(p_1316->g_1250.s6, "p_1316->g_1250.s6", print_hash_value);
    transparent_crc(p_1316->g_1250.s7, "p_1316->g_1250.s7", print_hash_value);
    transparent_crc(p_1316->g_1260.x, "p_1316->g_1260.x", print_hash_value);
    transparent_crc(p_1316->g_1260.y, "p_1316->g_1260.y", print_hash_value);
    transparent_crc(p_1316->g_1260.z, "p_1316->g_1260.z", print_hash_value);
    transparent_crc(p_1316->g_1260.w, "p_1316->g_1260.w", print_hash_value);
    transparent_crc(p_1316->g_1263.x, "p_1316->g_1263.x", print_hash_value);
    transparent_crc(p_1316->g_1263.y, "p_1316->g_1263.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
