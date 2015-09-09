// --atomics 98 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 10,43,19 -l 2,1,1
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{1,0}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{1,0}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 27

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int64_t  f0;
   int64_t  f1;
   uint32_t  f2;
   volatile int32_t  f3;
   uint64_t  f4;
   uint64_t  f5;
   volatile uint32_t  f6;
   uint8_t  f7;
   int16_t  f8;
};

union U1 {
   int32_t  f0;
   int64_t  f1;
   struct S0  f2;
   volatile int32_t  f3;
};

union U2 {
   volatile uint16_t  f0;
   volatile int32_t  f1;
   volatile int64_t  f2;
   struct S0  f3;
};

union U3 {
   volatile int64_t  f0;
   uint64_t  f1;
   int64_t  f2;
   int64_t  f3;
};

struct S4 {
    VECTOR(uint8_t, 2) g_26;
    int32_t g_29;
    int32_t *g_28;
    uint8_t g_48;
    VECTOR(int8_t, 16) g_49;
    volatile VECTOR(int16_t, 8) g_79;
    volatile VECTOR(int16_t, 4) g_80;
    union U3 g_88;
    volatile VECTOR(uint8_t, 16) g_100;
    uint8_t g_113;
    int32_t *g_115;
    int32_t ** volatile g_114[4][9][5];
    int32_t ** volatile g_116[6];
    int32_t ** volatile g_117;
    volatile struct S0 g_123;
    uint32_t g_127;
    volatile struct S0 g_128;
    int32_t ** volatile g_131;
    uint32_t *g_152[1][9][6];
    uint32_t **g_151;
    uint32_t *** volatile g_150;
    volatile struct S0 g_157;
    volatile struct S0 g_158;
    int16_t g_181;
    volatile union U3 g_184;
    int32_t ** volatile g_185;
    struct S0 g_226;
    union U2 g_238;
    uint16_t g_246;
    struct S0 g_249;
    uint16_t g_257;
    volatile struct S0 * volatile g_278;
    volatile struct S0 g_316;
    volatile struct S0 * volatile g_317;
    int32_t ** volatile g_324;
    struct S0 g_345[10];
    struct S0 * volatile g_346[5];
    int32_t g_469;
    uint8_t *g_470;
    union U3 g_471;
    volatile struct S0 g_473;
    volatile struct S0 *g_472[6][2];
    volatile VECTOR(int64_t, 4) g_488;
    VECTOR(int64_t, 4) g_489;
    union U1 g_491;
    union U1 *g_490;
    volatile struct S0 g_505;
    volatile VECTOR(uint32_t, 2) g_529;
    volatile union U1 g_561[4];
    uint32_t g_583;
    volatile VECTOR(int8_t, 2) g_615;
    volatile struct S0 ** volatile g_626;
    volatile union U2 g_652[2];
    int32_t g_654;
    uint16_t *g_686;
    uint16_t **g_685;
    volatile VECTOR(uint8_t, 8) g_701;
    VECTOR(uint16_t, 8) g_702;
    volatile VECTOR(uint8_t, 4) g_707;
    volatile VECTOR(uint8_t, 8) g_708;
    uint32_t g_714[9];
    int16_t g_715[5][6];
    uint32_t g_717;
    uint32_t g_719;
    volatile union U1 g_720;
    VECTOR(uint32_t, 4) g_727;
    uint32_t *g_757;
    uint32_t *g_758[3][3];
    struct S0 g_768;
    uint32_t g_771;
    volatile struct S0 g_776;
    volatile struct S0 g_777;
    uint32_t g_799[2];
    union U3 g_850;
    volatile VECTOR(uint64_t, 8) g_865;
    VECTOR(int32_t, 4) g_872;
    VECTOR(uint16_t, 16) g_912;
    VECTOR(uint16_t, 8) g_913;
    VECTOR(uint16_t, 4) g_915;
    VECTOR(int8_t, 16) g_917;
    struct S0 g_920[4][6];
    struct S0 g_922;
    struct S0 g_923;
    struct S0 g_924;
    struct S0 g_925;
    VECTOR(int8_t, 16) g_926;
    volatile union U3 g_934;
    int32_t *g_943[1][8];
    volatile VECTOR(uint64_t, 16) g_944;
    VECTOR(int16_t, 8) g_988;
    volatile VECTOR(uint16_t, 2) g_999;
    VECTOR(int8_t, 4) g_1011;
    VECTOR(int8_t, 16) g_1012;
    uint64_t * volatile g_1037;
    VECTOR(uint8_t, 16) g_1042;
    int32_t g_1064[2];
    int32_t **g_1068;
    int32_t *** volatile g_1067[7][5][1];
    int32_t *** volatile g_1070;
    volatile struct S0 g_1081;
    volatile struct S0 * volatile g_1082;
    volatile struct S0 g_1084;
    struct S0 g_1087;
    struct S0 g_1088[7][2][6];
    volatile VECTOR(int32_t, 8) g_1096;
    volatile VECTOR(uint32_t, 4) g_1112;
    VECTOR(int8_t, 2) g_1135;
    int64_t *g_1148;
    int64_t **g_1147;
    VECTOR(int16_t, 8) g_1163;
    uint32_t ***g_1171;
    uint64_t * volatile *g_1181[7][1];
    uint64_t * volatile ** volatile g_1180;
    int64_t *g_1189;
    int64_t **g_1188;
    union U3 g_1200;
    volatile union U2 g_1202;
    volatile VECTOR(uint64_t, 2) g_1215;
    VECTOR(uint32_t, 4) g_1216;
    volatile VECTOR(int8_t, 16) g_1233;
    VECTOR(uint8_t, 8) g_1235;
    int32_t ** volatile g_1251[2][6][3];
    uint32_t g_1253;
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
    uint32_t tid;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S4 * p_1254);
int32_t * func_2(uint64_t  p_3, int32_t * p_4, int16_t  p_5, int32_t * p_6, struct S4 * p_1254);
int32_t * func_8(int32_t * p_9, uint8_t  p_10, struct S4 * p_1254);
int32_t * func_11(int32_t * p_12, int64_t  p_13, uint32_t  p_14, int32_t * p_15, int32_t * p_16, struct S4 * p_1254);
int32_t * func_17(int64_t  p_18, struct S4 * p_1254);
struct S0  func_19(int64_t  p_20, uint32_t  p_21, int32_t * p_22, int32_t * p_23, int32_t * p_24, struct S4 * p_1254);
int32_t * func_30(int16_t  p_31, int32_t * p_32, uint8_t * p_33, int64_t  p_34, struct S4 * p_1254);
int16_t  func_35(int32_t  p_36, struct S4 * p_1254);
struct S0  func_37(int32_t * p_38, uint32_t  p_39, uint64_t  p_40, struct S4 * p_1254);
int32_t * func_41(uint64_t  p_42, uint8_t * p_43, uint8_t * p_44, uint32_t  p_45, int64_t  p_46, struct S4 * p_1254);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1254->g_comm_values p_1254->l_comm_values p_1254->g_28 p_1254->g_29 p_1254->g_49 p_1254->g_48 p_1254->g_79 p_1254->g_80 p_1254->g_88 p_1254->g_100 p_1254->g_113 p_1254->g_117 p_1254->g_123 p_1254->g_128 p_1254->g_131 p_1254->g_150 p_1254->g_88.f3 p_1254->g_157 p_1254->g_184 p_1254->g_185 p_1254->g_127 p_1254->g_158 p_1254->g_226 p_1254->g_238 p_1254->g_246 p_1254->g_181 p_1254->g_249 p_1254->g_238.f3.f2 p_1254->g_278 p_1254->g_316 p_1254->g_317 p_1254->g_324 p_1254->g_345 p_1254->g_238.f3.f0 p_1254->g_470 p_1254->g_471 p_1254->g_472 p_1254->g_488 p_1254->g_489 p_1254->g_490 p_1254->g_238.f3.f7 p_1254->g_473.f1 p_1254->g_561 p_1254->g_115 p_1254->g_469 p_1254->g_184.f0 p_1254->g_505.f6 p_1254->g_685 p_1254->g_701 p_1254->g_702 p_1254->g_707 p_1254->g_708 p_1254->g_715 p_1254->g_720 p_1254->g_727 p_1254->g_505.f7 p_1254->g_686 p_1254->g_257 p_1254->g_771 p_1254->g_776 p_1254->g_799 p_1254->g_88.f2 p_1254->g_583 p_1254->g_850 p_1254->g_865 p_1254->g_654 p_1254->g_872 p_1254->g_719 p_1254->g_720.f0 p_1254->g_717 p_1254->g_714 p_1254->g_912 p_1254->g_913 p_1254->g_915 p_1254->g_917 p_1254->g_926 p_1254->g_934 p_1254->g_924.f4 p_1254->g_944 p_1254->g_924.f7 p_1254->g_923.f1 p_1254->g_920 p_1254->g_652 p_1254->g_988 p_1254->g_922.f4 p_1254->g_999 p_1254->g_1011 p_1254->g_1012 p_1254->g_922.f5 p_1254->g_923.f0 p_1254->g_1037 p_1254->g_1064 p_1254->g_768.f4 p_1254->g_1081 p_1254->g_1087 p_1254->g_925.f5 p_1254->g_1096 p_1254->g_1112 p_1254->g_768.f7 p_1254->g_1135 p_1254->g_1147 p_1254->g_924.f1 p_1254->g_923.f8 p_1254->g_1068 p_1254->g_1163 p_1254->g_1200 p_1254->g_1202 p_1254->g_1189 p_1254->g_1148 p_1254->g_922.f1 p_1254->g_1215 p_1254->g_1216 p_1254->g_1233 p_1254->g_1235 p_1254->g_561.f0 p_1254->g_1253
 * writes: p_1254->g_26 p_1254->g_29 p_1254->g_88.f2 p_1254->g_113 p_1254->g_115 p_1254->g_127 p_1254->g_123 p_1254->g_151 p_1254->g_88.f3 p_1254->g_48 p_1254->g_158 p_1254->g_128 p_1254->g_246 p_1254->g_226.f4 p_1254->g_157 p_1254->g_226.f1 p_1254->g_257 p_1254->g_238.f3.f7 p_1254->g_238.f3.f2 p_1254->g_249.f4 p_1254->g_249.f5 p_1254->g_249.f8 p_1254->g_249 p_1254->g_238.f3.f0 p_1254->g_49 p_1254->g_226.f0 p_1254->g_469 p_1254->g_505 p_1254->g_345.f8 p_1254->g_226.f8 p_1254->g_583 p_1254->g_714 p_1254->g_715 p_1254->g_717 p_1254->g_719 p_1254->g_470 p_1254->g_152 p_1254->g_226.f7 p_1254->g_757 p_1254->g_758 p_1254->g_771 p_1254->g_777 p_1254->g_799 p_1254->g_238.f3.f5 p_1254->g_943 p_1254->g_917 p_1254->g_923.f1 p_1254->g_923.f4 p_1254->g_923.f0 p_1254->g_226.f2 p_1254->g_1084 p_1254->g_490 p_1254->g_1088 p_1254->g_925.f5 p_1254->g_924.f0 p_1254->g_768.f7 p_1254->g_1171 p_1254->g_1087.f0 p_1254->g_561.f2 p_1254->g_1188 p_1254->g_345.f0 p_1254->g_28
 */
int32_t  func_1(struct S4 * p_1254)
{ /* block id: 4 */
    uint32_t l_7 = 0x813A3DBCL;
    uint8_t *l_1125 = (void*)0;
    uint8_t *l_1126 = (void*)0;
    uint8_t *l_1127[8] = {&p_1254->g_923.f7,(void*)0,&p_1254->g_923.f7,&p_1254->g_923.f7,(void*)0,&p_1254->g_923.f7,&p_1254->g_923.f7,(void*)0};
    int32_t l_1128 = (-1L);
    int32_t l_1129 = 0x2EE2F35FL;
    int32_t l_1130 = 0x75190B46L;
    int32_t l_1131 = 0x72EAD7E2L;
    int64_t l_1132 = 0x139F67C1C29C1537L;
    uint32_t *l_1140 = &p_1254->g_924.f2;
    VECTOR(int32_t, 16) l_1141 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 1L), 1L), 1L, (-6L), 1L, (VECTOR(int32_t, 2))((-6L), 1L), (VECTOR(int32_t, 2))((-6L), 1L), (-6L), 1L, (-6L), 1L);
    VECTOR(int32_t, 2) l_1142 = (VECTOR(int32_t, 2))(0x0D656165L, 0x6ED88A23L);
    uint64_t l_1149 = 0xDF4324CE122A3A9FL;
    int32_t **l_1252 = &p_1254->g_943[0][2];
    int i;
    (*l_1252) = ((*p_1254->g_1068) = func_2(l_7, ((*p_1254->g_1068) = func_8(func_11(func_17(p_1254->g_comm_values[p_1254->tid], p_1254), (safe_mod_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((safe_mod_func_int32_t_s_s(((safe_add_func_int32_t_s_s((safe_add_func_uint8_t_u_u((+(p_1254->g_768.f7++)), ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0L, 0x5BL)).xyxyyyxxxxyyyyyx)).sb824)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_1254->g_1135.yyyx)))).zxxwwzxzwyzxxzzw)).s35)).xxxyyxxyxxxxyyyy))))))).sdf74))))), (int8_t)l_1131, (int8_t)((safe_rshift_func_uint8_t_u_u((((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(0L, 0x1E667CF3L)).xxxyyxyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0x410DAEB3L, (safe_mul_func_uint16_t_u_u((l_1140 != (void*)0), 65535UL)), 0x02AFCD92L, 0x338A8410L, ((VECTOR(int32_t, 4))(l_1141.sfc79))))))))).s65, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_1142.yxyxxyyyxyxxxxxy)).even)).s26, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((((safe_rshift_func_int16_t_s_u((((((safe_mul_func_uint16_t_u_u(l_1142.y, (((0x3D13F878L < l_1128) > 18446744073709551615UL) , 0xFDD1L))) != l_1141.s4) < p_1254->g_489.w) , p_1254->g_1147) == &p_1254->g_1148), 12)) ^ 0x234EL) != l_1130), l_1149, 0x5E80DBFCL, 0x51A4EB98L)).yyywxyyw, ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))((-2L)))))).hi)).even, ((VECTOR(int32_t, 2))((-3L))))))))).hi < p_1254->g_924.f1), 5)) != GROUP_DIVERGE(2, 1))))).zyyyywyxyyyxzzxw, ((VECTOR(int8_t, 16))(0x15L)))))))).lo)), ((VECTOR(int8_t, 8))(1L)), ((VECTOR(int8_t, 8))((-10L)))))).s6)), p_1254->g_923.f8)) == l_1131), 0xB02CBA07L)), 3UL)), l_1141.se)), p_1254->g_comm_values[p_1254->tid], &l_1131, &l_1129, p_1254), l_1141.sa, p_1254)), l_1149, &p_1254->g_1064[0], p_1254));
    return p_1254->g_1253;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_2(uint64_t  p_3, int32_t * p_4, int16_t  p_5, int32_t * p_6, struct S4 * p_1254)
{ /* block id: 557 */
    int32_t *l_1238 = &p_1254->g_1064[0];
    int32_t *l_1239 = &p_1254->g_1064[0];
    int32_t *l_1240 = (void*)0;
    int32_t l_1241 = 1L;
    int32_t *l_1242 = &p_1254->g_1064[0];
    VECTOR(int32_t, 16) l_1243 = (VECTOR(int32_t, 16))(0x623D5EAFL, (VECTOR(int32_t, 4))(0x623D5EAFL, (VECTOR(int32_t, 2))(0x623D5EAFL, 0x78C27FB7L), 0x78C27FB7L), 0x78C27FB7L, 0x623D5EAFL, 0x78C27FB7L, (VECTOR(int32_t, 2))(0x623D5EAFL, 0x78C27FB7L), (VECTOR(int32_t, 2))(0x623D5EAFL, 0x78C27FB7L), 0x623D5EAFL, 0x78C27FB7L, 0x623D5EAFL, 0x78C27FB7L);
    int32_t *l_1244 = (void*)0;
    int32_t *l_1245 = (void*)0;
    int32_t *l_1246 = &p_1254->g_469;
    int32_t *l_1247[2];
    uint8_t l_1248 = 255UL;
    int i;
    for (i = 0; i < 2; i++)
        l_1247[i] = &p_1254->g_469;
    l_1248++;
    return p_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1254->g_1163 p_1254->g_316.f6 p_1254->g_470 p_1254->g_1037 p_1254->g_768.f4 p_1254->g_1135 p_1254->g_comm_values p_1254->g_1087.f0 p_1254->g_29 p_1254->g_278 p_1254->g_157 p_1254->g_88 p_1254->g_1068 p_1254->g_28 p_1254->g_226.f7 p_1254->g_48 p_1254->g_1200 p_1254->g_1202 p_1254->g_1189 p_1254->g_181 p_1254->g_1147 p_1254->g_1148 p_1254->g_922.f1 p_1254->g_1215 p_1254->g_1216 p_1254->g_1233 p_1254->g_1235 p_1254->g_324 p_1254->g_115 p_1254->g_150 p_1254->g_184 p_1254->g_185 p_1254->g_128.f6 p_1254->g_127 p_1254->g_49 p_1254->g_158 p_1254->g_226 p_1254->g_238 p_1254->g_246 p_1254->g_123 p_1254->g_249 p_1254->g_316 p_1254->g_317 p_1254->g_345 p_1254->g_561.f0
 * writes: p_1254->g_1171 p_1254->g_226.f7 p_1254->g_48 p_1254->g_1087.f0 p_1254->g_29 p_1254->g_561.f2 p_1254->g_1188 p_1254->g_345.f0 p_1254->g_151 p_1254->g_88.f3 p_1254->g_158 p_1254->g_115 p_1254->g_128 p_1254->g_246 p_1254->g_226.f4 p_1254->g_157 p_1254->g_226.f1 p_1254->g_257 p_1254->g_238.f3.f7 p_1254->g_238.f3.f2 p_1254->g_249.f4 p_1254->g_249.f5 p_1254->g_249.f8
 */
int32_t * func_8(int32_t * p_9, uint8_t  p_10, struct S4 * p_1254)
{ /* block id: 523 */
    int8_t l_1153 = 0x06L;
    uint32_t l_1154[6] = {0x0872868BL,0x1D498AC9L,0x0872868BL,0x0872868BL,0x1D498AC9L,0x0872868BL};
    union U1 *l_1157 = &p_1254->g_491;
    VECTOR(uint8_t, 16) l_1160 = (VECTOR(uint8_t, 16))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 255UL), 255UL), 255UL, 248UL, 255UL, (VECTOR(uint8_t, 2))(248UL, 255UL), (VECTOR(uint8_t, 2))(248UL, 255UL), 248UL, 255UL, 248UL, 255UL);
    VECTOR(int16_t, 8) l_1164 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    uint32_t ***l_1170 = &p_1254->g_151;
    uint32_t ****l_1169[8][6] = {{&l_1170,(void*)0,&l_1170,&l_1170,&l_1170,(void*)0},{&l_1170,(void*)0,&l_1170,&l_1170,&l_1170,(void*)0},{&l_1170,(void*)0,&l_1170,&l_1170,&l_1170,(void*)0},{&l_1170,(void*)0,&l_1170,&l_1170,&l_1170,(void*)0},{&l_1170,(void*)0,&l_1170,&l_1170,&l_1170,(void*)0},{&l_1170,(void*)0,&l_1170,&l_1170,&l_1170,(void*)0},{&l_1170,(void*)0,&l_1170,&l_1170,&l_1170,(void*)0},{&l_1170,(void*)0,&l_1170,&l_1170,&l_1170,(void*)0}};
    uint32_t ***l_1172 = &p_1254->g_151;
    int32_t l_1173 = 0x40D906CFL;
    VECTOR(int16_t, 4) l_1174 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x570CL), 0x570CL);
    int8_t l_1175 = (-1L);
    int32_t l_1176 = 0x5B06DD2BL;
    int16_t *l_1196 = &p_1254->g_345[9].f8;
    VECTOR(int8_t, 16) l_1198 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x4EL), 0x4EL), 0x4EL, 1L, 0x4EL, (VECTOR(int8_t, 2))(1L, 0x4EL), (VECTOR(int8_t, 2))(1L, 0x4EL), 1L, 0x4EL, 1L, 0x4EL);
    union U1 **l_1225 = &p_1254->g_490;
    int8_t *l_1230 = (void*)0;
    int8_t **l_1229[7];
    VECTOR(uint8_t, 16) l_1232 = (VECTOR(uint8_t, 16))(0x66L, (VECTOR(uint8_t, 4))(0x66L, (VECTOR(uint8_t, 2))(0x66L, 0UL), 0UL), 0UL, 0x66L, 0UL, (VECTOR(uint8_t, 2))(0x66L, 0UL), (VECTOR(uint8_t, 2))(0x66L, 0UL), 0x66L, 0UL, 0x66L, 0UL);
    VECTOR(int8_t, 16) l_1234 = (VECTOR(int8_t, 16))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 9L), 9L), 9L, (-7L), 9L, (VECTOR(int8_t, 2))((-7L), 9L), (VECTOR(int8_t, 2))((-7L), 9L), (-7L), 9L, (-7L), 9L);
    int i, j;
    for (i = 0; i < 7; i++)
        l_1229[i] = &l_1230;
    if (((l_1153 <= l_1154[0]) , ((VECTOR(int32_t, 4))((l_1176 ^= (safe_mod_func_int16_t_s_s((((FAKE_DIVERGE(p_1254->group_0_offset, get_group_id(0), 10) , l_1157) != &p_1254->g_561[1]) | FAKE_DIVERGE(p_1254->local_2_offset, get_local_id(2), 10)), ((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(l_1160.sd17db8bdacff4231)).sc, ((((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 4))(0L, (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))(p_1254->g_1163.s4007534567251173)).saa, ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 4))(l_1164.s6325)).odd, (int16_t)(l_1173 = (safe_lshift_func_uint8_t_u_s(((safe_sub_func_int8_t_s_s(p_1254->g_316.f6, ((*p_1254->g_470) = ((p_1254->g_1171 = &p_1254->g_151) != l_1172)))) || (*p_1254->g_1037)), 4))))))))).even, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(l_1174.wyzxzxyw)).s6, ((VECTOR(int16_t, 2))((-5L), 4L)), l_1153, p_1254->g_1135.y, p_1254->g_comm_values[p_1254->tid], 1L, 0x1057L)).s4177200124400224)).seb)).lo)), 5L, 0x0BL)), (int8_t)l_1160.s5, (int8_t)p_10))).w , 4UL) || 1L))) , l_1175)))), ((VECTOR(int32_t, 2))(0x74E0B17EL)), 0x6C643045L)).z))
    { /* block id: 528 */
        int16_t l_1182 = 0x6E8AL;
        VECTOR(uint32_t, 8) l_1193 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x18F9D244L), 0x18F9D244L), 0x18F9D244L, 4294967295UL, 0x18F9D244L);
        int64_t l_1197 = 0x27740D653E79CDF6L;
        int i;
        for (p_1254->g_1087.f0 = 1; (p_1254->g_1087.f0 <= (-18)); p_1254->g_1087.f0 = safe_sub_func_uint8_t_u_u(p_1254->g_1087.f0, 5))
        { /* block id: 531 */
            uint16_t l_1179 = 1UL;
            (1 + 1);
        }
        for (p_1254->g_29 = 0; (p_1254->g_29 > 4); p_1254->g_29 = safe_add_func_int64_t_s_s(p_1254->g_29, 4))
        { /* block id: 539 */
            volatile struct S0 *l_1185 = &p_1254->g_561[1].f2;
            int64_t *l_1187[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int64_t **l_1186 = &l_1187[0];
            int32_t *l_1190 = &l_1173;
            int32_t *l_1191 = &p_1254->g_1064[0];
            int32_t *l_1192[4][3] = {{(void*)0,&p_1254->g_469,(void*)0},{(void*)0,&p_1254->g_469,(void*)0},{(void*)0,&p_1254->g_469,(void*)0},{(void*)0,&p_1254->g_469,(void*)0}};
            int i, j;
            (*l_1185) = (*p_1254->g_278);
            p_1254->g_1188 = l_1186;
            l_1193.s6--;
            l_1197 = (p_1254->g_88 , (l_1193.s3 || ((l_1196 == (void*)0) <= 0UL)));
        }
        (**p_1254->g_1068) = l_1175;
    }
    else
    { /* block id: 546 */
        struct S0 *l_1199 = &p_1254->g_1088[6][1][2];
        VECTOR(int16_t, 2) l_1201 = (VECTOR(int16_t, 2))(1L, 1L);
        union U1 **l_1223[10];
        union U1 ***l_1224[5] = {&l_1223[5],&l_1223[5],&l_1223[5],&l_1223[5],&l_1223[5]};
        int8_t ***l_1231 = &l_1229[4];
        uint32_t **l_1236 = &p_1254->g_152[0][6][2];
        int32_t l_1237 = 7L;
        int i;
        for (i = 0; i < 10; i++)
            l_1223[i] = &p_1254->g_490;
        l_1199 = ((0x71L >= (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_1198.s03b2ff43)).s5264220122636144)).s6129)).x , (*p_1254->g_470))) , l_1199);
        atomic_min(&p_1254->g_atomic_reduction[get_linear_group_id()], (p_10 | (((((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 2))(0x7725L, (-3L))).yxxx))).xxzwzwzz, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 4))((p_1254->g_1200 , (+p_10)), ((VECTOR(int16_t, 2))(l_1201.xy)), 7L)).wzwywwzy, ((VECTOR(int16_t, 4))((p_1254->g_1202 , (safe_sub_func_int64_t_s_s(0x588F2E129568CA89L, (safe_sub_func_int32_t_s_s(0x7A564018L, ((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((((*p_1254->g_470) = (((*p_1254->g_1189) = p_10) , (safe_rshift_func_int8_t_s_u((&p_1254->g_1189 != (l_1154[0] , &p_1254->g_1189)), (*p_1254->g_470))))) | p_1254->g_181), (**p_1254->g_1147))), 3)), l_1164.s4)) != 0x5D8792CFL)))))), ((VECTOR(int16_t, 2))(0x05CBL)), 0x684CL)).xxwxxxww, ((VECTOR(int16_t, 8))((-7L)))))).lo)).yzxzyxzz))).s5 >= 0x7BD9L) , l_1160.sa) , FAKE_DIVERGE(p_1254->group_0_offset, get_group_id(0), 10))) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1254->v_collective += p_1254->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        l_1237 ^= (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 8))(p_1254->g_1215.xxyyyxyy)).s5603254775261544, ((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(p_1254->g_1216.ywwwxyyzzzyyzwwy)).even)).even)).xyyyywzwwxxxyxwz))).s90)), 0x04AE598FL, 4294967290UL)).hi)))), ((func_37(((safe_div_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(4294967291UL, ((((l_1225 = l_1223[6]) != &l_1157) <= (l_1160.s6 , ((VECTOR(int16_t, 16))(l_1201.y, 0x61DEL, (safe_mul_func_int16_t_s_s(((safe_unary_minus_func_int16_t_s((((*l_1231) = l_1229[4]) == &l_1230))) <= ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 4))(l_1232.sdd11)).ywxwxzxw, ((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 2))(p_1254->g_1233.s0f)).yxxx, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_1234.s704cbfe6)).s03)).xxyyxxxy)).lo))).xzxwwwwx, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 8))(0x67L, 0xD5L, 255UL, ((VECTOR(uint8_t, 2))(251UL, 0x63L)), ((VECTOR(uint8_t, 2))(p_1254->g_1235.s16)), 0x1BL))))).lo)))), 0x1BL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(255UL, (0x7253F617L >= ((void*)0 != l_1236)), ((VECTOR(uint8_t, 2))(1UL)), ((VECTOR(uint8_t, 2))(0x5FL)), 252UL, 0xF7L)).s10)), 0x71L))))).s64)).hi), 0L)), 0x03B1L, ((VECTOR(int16_t, 2))(0x1C83L)), p_10, 0x0839L, 0x67AEL, p_10, l_1234.s9, ((VECTOR(int16_t, 4))(0L)), 0x6600L)).s1)) , 0x618FC1B2L))), FAKE_DIVERGE(p_1254->local_1_offset, get_local_id(1), 10))) < l_1201.x), p_10)) , (*p_1254->g_324)), l_1201.y, l_1174.x, p_1254) , l_1201.y) > l_1154[5]), 0xB83BA3D1L, 1UL, 4294967295UL, 7UL, 5UL)).hi))).odd)), ((VECTOR(uint32_t, 4))(0x118158A2L)), 0x7FCF08B1L, 0x96310FD5L)).s6557276412167557)).odd, (uint32_t)p_1254->g_561[1].f0))).s6106305744411217, ((VECTOR(uint32_t, 16))(0xAC2E1069L))))), ((VECTOR(uint64_t, 16))(0x71A48F843DF5B802L))))), ((VECTOR(uint64_t, 16))(1UL))))).se2)).yxyy, ((VECTOR(uint64_t, 4))(0x83BF179B943AACF9L))))).xyxyyzzw)).s1 <= l_1234.sf);
    }
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1254->g_1068 p_1254->g_28
 * writes: p_1254->g_29
 */
int32_t * func_11(int32_t * p_12, int64_t  p_13, uint32_t  p_14, int32_t * p_15, int32_t * p_16, struct S4 * p_1254)
{ /* block id: 519 */
    union U2 *l_1151 = &p_1254->g_238;
    union U2 **l_1150 = &l_1151;
    int32_t *l_1152 = (void*)0;
    (**p_1254->g_1068) = 0x5AC478D0L;
    (*l_1150) = &p_1254->g_238;
    return l_1152;
}


/* ------------------------------------------ */
/* 
 * reads : p_1254->l_comm_values p_1254->g_28 p_1254->g_29 p_1254->g_49 p_1254->g_48 p_1254->g_comm_values p_1254->g_79 p_1254->g_80 p_1254->g_88 p_1254->g_100 p_1254->g_113 p_1254->g_117 p_1254->g_123 p_1254->g_128 p_1254->g_131 p_1254->g_150 p_1254->g_88.f3 p_1254->g_157 p_1254->g_184 p_1254->g_185 p_1254->g_127 p_1254->g_158 p_1254->g_226 p_1254->g_238 p_1254->g_246 p_1254->g_181 p_1254->g_249 p_1254->g_238.f3.f2 p_1254->g_278 p_1254->g_316 p_1254->g_317 p_1254->g_324 p_1254->g_345 p_1254->g_238.f3.f0 p_1254->g_470 p_1254->g_471 p_1254->g_472 p_1254->g_488 p_1254->g_489 p_1254->g_490 p_1254->g_238.f3.f7 p_1254->g_473.f1 p_1254->g_561 p_1254->g_115 p_1254->g_469 p_1254->g_184.f0 p_1254->g_505.f6 p_1254->g_685 p_1254->g_701 p_1254->g_702 p_1254->g_707 p_1254->g_708 p_1254->g_715 p_1254->g_720 p_1254->g_727 p_1254->g_505.f7 p_1254->g_686 p_1254->g_257 p_1254->g_771 p_1254->g_776 p_1254->g_799 p_1254->g_88.f2 p_1254->g_583 p_1254->g_850 p_1254->g_865 p_1254->g_654 p_1254->g_872 p_1254->g_719 p_1254->g_720.f0 p_1254->g_717 p_1254->g_714 p_1254->g_912 p_1254->g_913 p_1254->g_915 p_1254->g_917 p_1254->g_926 p_1254->g_934 p_1254->g_924.f4 p_1254->g_944 p_1254->g_924.f7 p_1254->g_923.f1 p_1254->g_920 p_1254->g_652 p_1254->g_988 p_1254->g_922.f4 p_1254->g_999 p_1254->g_1011 p_1254->g_1012 p_1254->g_922.f5 p_1254->g_923.f0 p_1254->g_1037 p_1254->g_1064 p_1254->g_768.f4 p_1254->g_1081 p_1254->g_1087 p_1254->g_925.f5 p_1254->g_1096 p_1254->g_1112
 * writes: p_1254->g_26 p_1254->g_29 p_1254->g_88.f2 p_1254->g_113 p_1254->g_115 p_1254->g_127 p_1254->g_123 p_1254->g_151 p_1254->g_88.f3 p_1254->g_48 p_1254->g_158 p_1254->g_128 p_1254->g_246 p_1254->g_226.f4 p_1254->g_157 p_1254->g_226.f1 p_1254->g_257 p_1254->g_238.f3.f7 p_1254->g_238.f3.f2 p_1254->g_249.f4 p_1254->g_249.f5 p_1254->g_249.f8 p_1254->g_249 p_1254->g_238.f3.f0 p_1254->g_49 p_1254->g_226.f0 p_1254->g_469 p_1254->g_505 p_1254->g_345.f8 p_1254->g_226.f8 p_1254->g_583 p_1254->g_714 p_1254->g_715 p_1254->g_717 p_1254->g_719 p_1254->g_470 p_1254->g_152 p_1254->g_226.f7 p_1254->g_757 p_1254->g_758 p_1254->g_771 p_1254->g_777 p_1254->g_799 p_1254->g_238.f3.f5 p_1254->g_943 p_1254->g_917 p_1254->g_923.f1 p_1254->g_923.f4 p_1254->g_923.f0 p_1254->g_226.f2 p_1254->g_1084 p_1254->g_490 p_1254->g_1088 p_1254->g_925.f5 p_1254->g_924.f0
 */
int32_t * func_17(int64_t  p_18, struct S4 * p_1254)
{ /* block id: 5 */
    uint8_t *l_25 = (void*)0;
    int32_t l_27 = 0x7844BA92L;
    int32_t *l_468[7] = {&p_1254->g_469,&p_1254->g_469,&p_1254->g_469,&p_1254->g_469,&p_1254->g_469,&p_1254->g_469,&p_1254->g_469};
    VECTOR(uint16_t, 2) l_1097 = (VECTOR(uint16_t, 2))(65526UL, 0xAE22L);
    int16_t l_1099 = 0x12EDL;
    int8_t l_1108 = 1L;
    VECTOR(int32_t, 4) l_1114 = (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-5L)), (-5L));
    int i;
    p_1254->g_1088[1][0][5] = func_19(((p_1254->g_26.y = p_1254->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1254->tid, 2))]) , l_27), l_27, p_1254->g_28, func_30(func_35(p_18, p_1254), l_468[4], p_1254->g_470, p_18, p_1254), p_1254->g_28, p_1254);
    for (p_1254->g_925.f5 = 0; (p_1254->g_925.f5 != 37); p_1254->g_925.f5++)
    { /* block id: 502 */
        uint32_t l_1091 = 0xACEC22B4L;
        VECTOR(int32_t, 4) l_1102 = (VECTOR(int32_t, 4))(0x3B150FDCL, (VECTOR(int32_t, 2))(0x3B150FDCL, 0x25FBAF3AL), 0x25FBAF3AL);
        VECTOR(int16_t, 4) l_1103 = (VECTOR(int16_t, 4))(0x5B3DL, (VECTOR(int16_t, 2))(0x5B3DL, 0x4C43L), 0x4C43L);
        int i;
        l_1091--;
        for (p_1254->g_249.f7 = 0; (p_1254->g_249.f7 == 51); p_1254->g_249.f7++)
        { /* block id: 506 */
            int16_t *l_1098 = &p_1254->g_715[2][1];
            uint32_t *l_1100 = (void*)0;
            uint32_t *l_1101 = &l_1091;
            VECTOR(int64_t, 16) l_1104 = (VECTOR(int64_t, 16))(0x386CF2AE2754ABDCL, (VECTOR(int64_t, 4))(0x386CF2AE2754ABDCL, (VECTOR(int64_t, 2))(0x386CF2AE2754ABDCL, 0x284992083FD6E142L), 0x284992083FD6E142L), 0x284992083FD6E142L, 0x386CF2AE2754ABDCL, 0x284992083FD6E142L, (VECTOR(int64_t, 2))(0x386CF2AE2754ABDCL, 0x284992083FD6E142L), (VECTOR(int64_t, 2))(0x386CF2AE2754ABDCL, 0x284992083FD6E142L), 0x386CF2AE2754ABDCL, 0x284992083FD6E142L, 0x386CF2AE2754ABDCL, 0x284992083FD6E142L);
            int64_t *l_1106 = &p_1254->g_768.f1;
            int64_t **l_1105[6];
            int64_t *l_1107[5];
            int64_t *l_1109 = &p_1254->g_924.f0;
            int32_t l_1113 = 1L;
            int i;
            for (i = 0; i < 6; i++)
                l_1105[i] = &l_1106;
            for (i = 0; i < 5; i++)
                l_1107[i] = &p_1254->g_1087.f1;
            (*p_1254->g_28) = ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(p_1254->g_1096.s02444540)).hi, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))((((VECTOR(uint16_t, 16))(l_1097.yxxyxyxxyyyxyyyy)).s8 == ((*l_1098) |= 0x6C17L)), ((*l_1101) = l_1099), 0xFC628445L, 0xEBCBCF10L)), ((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(l_1102.yxxzxzzw)).s4266170107422537, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))((p_18 >= (((VECTOR(uint16_t, 8))(((((((VECTOR(int16_t, 4))((l_1102.x , p_18), ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 8))(l_1103.wxxwzxxz)), ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(0x27BFL, ((*l_1098) = (((*l_1109) = (p_1254->g_238 , (((((((VECTOR(int64_t, 8))(l_1104.s8733bf50)).s1 == (l_1105[0] != &l_1106)) , l_1107[4]) != (void*)0) , (-6L)) > l_1108))) , p_18)), ((VECTOR(int16_t, 2))(1L)), ((VECTOR(int16_t, 2))((-1L))), 1L, ((VECTOR(int16_t, 8))(0x19E3L)), (-7L))))).sc0, ((VECTOR(int16_t, 2))((-7L)))))).xxxxyxxx, ((VECTOR(int16_t, 8))(0x4B55L))))).s50, ((VECTOR(int16_t, 2))(0x7A05L))))), 0x02EEL)).y > p_18) || 4294967291UL) , 0x2C45FA79C963639BL) < p_18), GROUP_DIVERGE(0, 1), ((VECTOR(uint16_t, 4))(0x6A9AL)), 1UL, 65529UL)).s2 , p_18)), p_18, 0x4AA06B21L, ((VECTOR(int32_t, 2))(0x6FD7A2E6L)), (-5L), ((VECTOR(int32_t, 8))(0x685665EAL)), (-8L), 1L)).sff, ((VECTOR(int32_t, 2))(1L))))).yxyxxxyyxxyyxyyx))), ((VECTOR(int32_t, 16))(0L))))).s3660, ((VECTOR(uint32_t, 4))(0x54DA7D47L))))).xwyxxzzy)).s0 && p_18) ^ p_1254->g_249.f4) >= p_18) && l_1104.s6), ((VECTOR(int32_t, 4))(1L)), ((VECTOR(int32_t, 2))(1L)), (-2L))).s30, ((VECTOR(int32_t, 2))(0x0B8B63ADL)), ((VECTOR(int32_t, 2))(0L))))).yxyx, (int32_t)l_1091)))))).w;
            atomic_or(&p_1254->l_atomic_reduction[0], (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(p_1254->g_1112.zyzzwzzz)).s0, (p_18 , (l_1113 = 0x6AB49CDDL)))));
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1254->v_collective += p_1254->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            (*p_1254->g_28) = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_1114.ww)).yyyyxxyy)).s3;
        }
    }
    return l_468[4];
}


/* ------------------------------------------ */
/* 
 * reads : p_1254->g_999 p_1254->g_226.f8 p_1254->g_583 p_1254->g_1011 p_1254->g_1012 p_1254->g_917 p_1254->g_922.f5 p_1254->g_157.f7 p_1254->g_923.f0 p_1254->g_685 p_1254->g_686 p_1254->g_246 p_1254->g_1037 p_1254->g_1064 p_1254->g_470 p_1254->g_226.f7 p_1254->g_48 p_1254->g_28 p_1254->g_29 p_1254->g_768.f4 p_1254->g_719 p_1254->g_1081 p_1254->g_1087
 * writes: p_1254->g_923.f4 p_1254->g_583 p_1254->g_917 p_1254->g_923.f0 p_1254->g_226.f2 p_1254->g_29 p_1254->g_943 p_1254->g_1084 p_1254->g_490
 */
struct S0  func_19(int64_t  p_20, uint32_t  p_21, int32_t * p_22, int32_t * p_23, int32_t * p_24, struct S4 * p_1254)
{ /* block id: 464 */
    VECTOR(int16_t, 16) l_998 = (VECTOR(int16_t, 16))(0x73B4L, (VECTOR(int16_t, 4))(0x73B4L, (VECTOR(int16_t, 2))(0x73B4L, 0x6FCEL), 0x6FCEL), 0x6FCEL, 0x73B4L, 0x6FCEL, (VECTOR(int16_t, 2))(0x73B4L, 0x6FCEL), (VECTOR(int16_t, 2))(0x73B4L, 0x6FCEL), 0x73B4L, 0x6FCEL, 0x73B4L, 0x6FCEL);
    VECTOR(uint64_t, 4) l_1004 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL);
    uint64_t *l_1005 = (void*)0;
    uint64_t *l_1006 = &p_1254->g_923.f4;
    VECTOR(uint32_t, 8) l_1007 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967286UL), 4294967286UL), 4294967286UL, 4294967295UL, 4294967286UL);
    int16_t *l_1008[10][6] = {{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8},{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8},{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8},{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8},{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8},{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8},{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8},{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8},{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8},{&p_1254->g_715[4][2],&p_1254->g_226.f8,&p_1254->g_226.f8,&p_1254->g_715[4][2],&p_1254->g_345[9].f8,&p_1254->g_226.f8}};
    int32_t l_1009[9] = {0x0CB39939L,0x0CB39939L,0x0CB39939L,0x0CB39939L,0x0CB39939L,0x0CB39939L,0x0CB39939L,0x0CB39939L,0x0CB39939L};
    uint32_t *l_1010 = &p_1254->g_583;
    int64_t l_1023[6] = {1L,0x54C9AFF8921C0F0EL,1L,1L,0x54C9AFF8921C0F0EL,1L};
    int8_t *l_1026 = (void*)0;
    int32_t l_1027 = 0L;
    uint8_t l_1028 = 0x2BL;
    int32_t l_1029 = 0x6D5FB4EEL;
    int32_t l_1030 = 0x0544BD03L;
    int32_t l_1031 = (-1L);
    int32_t l_1032 = 0x60B07A11L;
    VECTOR(int16_t, 16) l_1051 = (VECTOR(int16_t, 16))(0x4670L, (VECTOR(int16_t, 4))(0x4670L, (VECTOR(int16_t, 2))(0x4670L, 0x73E0L), 0x73E0L), 0x73E0L, 0x4670L, 0x73E0L, (VECTOR(int16_t, 2))(0x4670L, 0x73E0L), (VECTOR(int16_t, 2))(0x4670L, 0x73E0L), 0x4670L, 0x73E0L, 0x4670L, 0x73E0L);
    int64_t *l_1060 = &p_1254->g_923.f1;
    int32_t **l_1072 = &p_1254->g_943[0][3];
    union U1 *l_1085[1];
    union U1 **l_1086 = &p_1254->g_490;
    int i, j;
    for (i = 0; i < 1; i++)
        l_1085[i] = (void*)0;
    l_1032 ^= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_998.s1e)).xxyyyyyyyxyyyxxx)).lo, ((VECTOR(uint16_t, 2))(p_1254->g_999.yy)).xyxyxxxx))).hi)), (l_1031 = (((safe_mod_func_uint64_t_u_u((safe_mod_func_uint8_t_u_u(((((0UL | ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(0x2FF1L, 0x146CL, 6L, 0x007CL)).even)).xxyxyxxxxyyxyxyx)).s24)).odd) > ((VECTOR(uint64_t, 8))(l_1004.ywwzyywy)).s5) ^ ((*l_1006) = FAKE_DIVERGE(p_1254->local_0_offset, get_local_id(0), 10))) || ((VECTOR(uint32_t, 16))(l_1007.s7762466320054072)).se), ((((l_1030 = (l_1029 &= ((((250UL >= ((l_1009[2] = p_1254->g_226.f8) && (((*l_1010) &= p_20) != (((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_1254->g_1011.wxzzyzww)).s7202512164004351)).s3 != (((VECTOR(int8_t, 16))(p_1254->g_1012.s031f994e5548d713)).s0 , (safe_add_func_int64_t_s_s(((safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(((safe_lshift_func_int8_t_s_u((safe_mod_func_uint32_t_u_u(p_21, l_1023[0])), 1)) == p_20), 10)), (p_1254->g_917.sc ^= (safe_lshift_func_int16_t_s_s(p_20, p_20))))) | 0xC21CA4A4L), p_1254->g_922.f5))))))) && p_21) > l_1027) ^ l_1028))) != FAKE_DIVERGE(p_1254->global_1_offset, get_global_id(1), 10)) | p_1254->g_157.f7) && 0x3DL))), 0x02606C9B37900D6AL)) , l_1009[2]) || l_1007.s5)), ((VECTOR(int32_t, 2))(0x0CB02D98L)), 7L)).s7;
    for (p_1254->g_923.f0 = 0; (p_1254->g_923.f0 < 7); p_1254->g_923.f0 = safe_add_func_int16_t_s_s(p_1254->g_923.f0, 4))
    { /* block id: 475 */
        int16_t **l_1052 = &l_1008[6][3];
        int32_t l_1053 = 7L;
        int64_t *l_1059 = (void*)0;
        int64_t **l_1058[10] = {&l_1059,(void*)0,&l_1059,(void*)0,&l_1059,&l_1059,(void*)0,&l_1059,(void*)0,&l_1059};
        int16_t *l_1061 = &p_1254->g_491.f2.f8;
        int32_t l_1062 = (-1L);
        uint32_t *l_1063 = &p_1254->g_226.f2;
        int i;
        (*p_22) = ((**p_1254->g_685) <= ((safe_rshift_func_uint16_t_u_s((p_1254->g_1037 != (((*l_1063) = (1L || (safe_sub_func_int32_t_s_s(((safe_lshift_func_uint16_t_u_s((l_1062 = (254UL & ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(p_1254->g_1042.sa3f9)), 1UL, ((GROUP_DIVERGE(0, 1) , (safe_rshift_func_uint16_t_u_s((p_1254->g_913.s6 = (safe_div_func_uint64_t_u_u(((safe_mod_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((((VECTOR(int16_t, 2))(l_1051.s8e)).hi & ((*l_1061) = ((((*l_1052) = l_1008[0][3]) != ((l_1053 == p_21) , (void*)0)) > (safe_mod_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u(((l_1060 = &p_20) == &l_1023[0]), p_20)), p_1254->g_920[2][1].f4))))), p_1254->g_799[1])), 0xDE07L)) , 0xDEC7B48120998386L), 4L))), 3))) , 0xC6L), (*p_1254->g_470), 1UL, ((VECTOR(uint8_t, 8))(0xBAL)))).s0)), p_20)) == 0x0A55L), (-6L))))) , l_1006)), p_1254->g_1064[0])) != (*p_1254->g_470)));
        for (l_1028 = 0; (l_1028 >= 33); ++l_1028)
        { /* block id: 485 */
            int32_t ***l_1069 = (void*)0;
            int32_t ***l_1071[6];
            int i;
            for (i = 0; i < 6; i++)
                l_1071[i] = &p_1254->g_1068;
            l_1072 = &p_1254->g_943[0][3];
            if ((*p_1254->g_28))
            { /* block id: 487 */
                int32_t *l_1073 = &p_1254->g_469;
                (*l_1072) = l_1073;
            }
            else
            { /* block id: 489 */
                int8_t **l_1076 = &l_1026;
                volatile struct S0 *l_1083[3][7][9] = {{{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777}},{{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777}},{{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777},{&p_1254->g_777,&p_1254->g_316,(void*)0,&p_1254->g_776,&p_1254->g_123,&p_1254->g_157,&p_1254->g_777,&p_1254->g_473,&p_1254->g_777}}};
                int i, j, k;
                (*p_1254->g_28) = (-1L);
                (*p_22) &= (((safe_mul_func_uint8_t_u_u((((((*l_1076) = l_1026) != p_1254->g_470) & 0x2B519991AE1AC891L) == p_21), (p_20 , (((safe_sub_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((*p_1254->g_1037), p_1254->g_719)), (*p_1254->g_686))) , (((&p_1254->g_714[1] == (void*)0) < p_20) != (*p_1254->g_1037))) , (-3L))))) <= 0xBF0F2629L) && (*p_1254->g_470));
                p_1254->g_1084 = p_1254->g_1081;
            }
        }
    }
    (*l_1086) = l_1085[0];
    return p_1254->g_1087;
}


/* ------------------------------------------ */
/* 
 * reads : p_1254->g_471 p_1254->g_472 p_1254->g_249.f8 p_1254->g_488 p_1254->g_489 p_1254->g_470 p_1254->g_226.f7 p_1254->g_490 p_1254->g_28 p_1254->g_278 p_1254->g_157 p_1254->l_comm_values p_1254->g_88 p_1254->g_79 p_1254->g_comm_values p_1254->g_49 p_1254->g_113 p_1254->g_117 p_1254->g_123 p_1254->g_48 p_1254->g_128 p_1254->g_131 p_1254->g_29 p_1254->g_238.f3.f7 p_1254->g_345.f1 p_1254->g_226.f1 p_1254->g_226.f5 p_1254->g_249.f2 p_1254->g_345.f5 p_1254->g_345.f4 p_1254->g_316.f7 p_1254->g_473.f1 p_1254->g_561 p_1254->g_324 p_1254->g_115 p_1254->g_469 p_1254->g_249.f7 p_1254->g_184.f0 p_1254->g_505.f6 p_1254->g_249.f3 p_1254->g_150 p_1254->g_184 p_1254->g_185 p_1254->g_127 p_1254->g_158 p_1254->g_226 p_1254->g_238 p_1254->g_246 p_1254->g_181 p_1254->g_249 p_1254->g_316 p_1254->g_317 p_1254->g_345 p_1254->g_685 p_1254->g_701 p_1254->g_702 p_1254->g_707 p_1254->g_708 p_1254->g_715 p_1254->g_720 p_1254->g_727 p_1254->g_505.f7 p_1254->g_686 p_1254->g_257 p_1254->g_771 p_1254->g_776 p_1254->g_799 p_1254->g_88.f2 p_1254->g_583 p_1254->g_850 p_1254->g_865 p_1254->g_654 p_1254->g_872 p_1254->g_719 p_1254->g_720.f0 p_1254->g_717 p_1254->g_714 p_1254->g_912 p_1254->g_913 p_1254->g_915 p_1254->g_917 p_1254->g_926 p_1254->g_934 p_1254->g_924.f4 p_1254->g_944 p_1254->g_924.f7 p_1254->g_923.f1 p_1254->g_920 p_1254->g_652 p_1254->g_988 p_1254->g_922.f4
 * writes: p_1254->g_29 p_1254->g_88.f2 p_1254->g_113 p_1254->g_115 p_1254->g_127 p_1254->g_123 p_1254->g_238.f3.f7 p_1254->g_49 p_1254->g_226.f0 p_1254->g_469 p_1254->g_246 p_1254->g_151 p_1254->g_88.f3 p_1254->g_48 p_1254->g_158 p_1254->g_128 p_1254->g_226.f4 p_1254->g_157 p_1254->g_226.f1 p_1254->g_257 p_1254->g_238.f3.f2 p_1254->g_249.f4 p_1254->g_249.f5 p_1254->g_249.f8 p_1254->g_505 p_1254->g_345.f8 p_1254->g_226.f8 p_1254->g_583 p_1254->g_714 p_1254->g_715 p_1254->g_717 p_1254->g_719 p_1254->g_470 p_1254->g_152 p_1254->g_238.f3.f0 p_1254->g_226.f7 p_1254->g_757 p_1254->g_758 p_1254->g_771 p_1254->g_777 p_1254->g_799 p_1254->g_238.f3.f5 p_1254->g_943 p_1254->g_917 p_1254->g_923.f1
 */
int32_t * func_30(int16_t  p_31, int32_t * p_32, uint8_t * p_33, int64_t  p_34, struct S4 * p_1254)
{ /* block id: 246 */
    uint8_t l_475 = 251UL;
    int32_t l_476 = 0L;
    int32_t l_487 = 1L;
    VECTOR(int64_t, 4) l_503 = (VECTOR(int64_t, 4))(0x2E4421EA41BF49EEL, (VECTOR(int64_t, 2))(0x2E4421EA41BF49EEL, 4L), 4L);
    int64_t l_504 = 0x48AF70EDCB6B958FL;
    uint8_t l_509 = 255UL;
    int64_t l_512 = 1L;
    int32_t ***l_544[2];
    VECTOR(int8_t, 8) l_600 = (VECTOR(int8_t, 8))(0x37L, (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, 0x0EL), 0x0EL), 0x0EL, 0x37L, 0x0EL);
    VECTOR(int32_t, 8) l_636 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x6A48EDD8L), 0x6A48EDD8L), 0x6A48EDD8L, (-1L), 0x6A48EDD8L);
    VECTOR(int32_t, 4) l_640 = (VECTOR(int32_t, 4))(0x5961961EL, (VECTOR(int32_t, 2))(0x5961961EL, 2L), 2L);
    VECTOR(uint8_t, 16) l_651 = (VECTOR(uint8_t, 16))(0x48L, (VECTOR(uint8_t, 4))(0x48L, (VECTOR(uint8_t, 2))(0x48L, 4UL), 4UL), 4UL, 0x48L, 4UL, (VECTOR(uint8_t, 2))(0x48L, 4UL), (VECTOR(uint8_t, 2))(0x48L, 4UL), 0x48L, 4UL, 0x48L, 4UL);
    int8_t *l_675 = (void*)0;
    int32_t *l_682 = (void*)0;
    uint16_t *l_684 = (void*)0;
    uint16_t **l_683 = &l_684;
    VECTOR(int8_t, 4) l_700 = (VECTOR(int8_t, 4))(0x62L, (VECTOR(int8_t, 2))(0x62L, 0x14L), 0x14L);
    uint16_t l_734 = 0UL;
    VECTOR(int32_t, 4) l_823 = (VECTOR(int32_t, 4))(0x4134EB17L, (VECTOR(int32_t, 2))(0x4134EB17L, (-1L)), (-1L));
    VECTOR(int32_t, 16) l_824 = (VECTOR(int32_t, 16))(0x132CCB3BL, (VECTOR(int32_t, 4))(0x132CCB3BL, (VECTOR(int32_t, 2))(0x132CCB3BL, 0x1F8E599AL), 0x1F8E599AL), 0x1F8E599AL, 0x132CCB3BL, 0x1F8E599AL, (VECTOR(int32_t, 2))(0x132CCB3BL, 0x1F8E599AL), (VECTOR(int32_t, 2))(0x132CCB3BL, 0x1F8E599AL), 0x132CCB3BL, 0x1F8E599AL, 0x132CCB3BL, 0x1F8E599AL);
    int32_t l_832 = 0x2F98F529L;
    VECTOR(uint16_t, 2) l_914 = (VECTOR(uint16_t, 2))(0x4322L, 65534UL);
    struct S0 *l_919 = &p_1254->g_920[2][1];
    struct S0 *l_921[9] = {&p_1254->g_922,&p_1254->g_922,&p_1254->g_922,&p_1254->g_922,&p_1254->g_922,&p_1254->g_922,&p_1254->g_922,&p_1254->g_922,&p_1254->g_922};
    VECTOR(int8_t, 2) l_927 = (VECTOR(int8_t, 2))(0x65L, 0x16L);
    uint32_t **l_928 = (void*)0;
    VECTOR(uint16_t, 4) l_933 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65534UL), 65534UL);
    VECTOR(int16_t, 4) l_989 = (VECTOR(int16_t, 4))(0x0789L, (VECTOR(int16_t, 2))(0x0789L, 0x5FD6L), 0x5FD6L);
    uint32_t l_996 = 0x1AE4DAE1L;
    int32_t l_997[7];
    int i;
    for (i = 0; i < 2; i++)
        l_544[i] = (void*)0;
    for (i = 0; i < 7; i++)
        l_997[i] = 0x0740C35CL;
    if ((((p_1254->g_471 , (void*)0) == p_1254->g_472[2][1]) < ((((safe_unary_minus_func_int64_t_s((-1L))) == (p_31 || (l_476 = l_475))) == (safe_rshift_func_int8_t_s_u(p_1254->g_249.f8, 6))) , (l_475 && p_34))))
    { /* block id: 248 */
        VECTOR(uint64_t, 8) l_482 = (VECTOR(uint64_t, 8))(0x92DA3D276FB51250L, (VECTOR(uint64_t, 4))(0x92DA3D276FB51250L, (VECTOR(uint64_t, 2))(0x92DA3D276FB51250L, 18446744073709551612UL), 18446744073709551612UL), 18446744073709551612UL, 0x92DA3D276FB51250L, 18446744073709551612UL);
        uint32_t **l_496 = &p_1254->g_152[0][5][5];
        int16_t l_506 = 0x3639L;
        uint32_t ***l_507 = &p_1254->g_151;
        uint32_t ***l_508 = &l_496;
        uint64_t *l_510 = &p_1254->g_249.f4;
        uint8_t *l_511 = (void*)0;
        int32_t **l_513 = &p_1254->g_115;
        int i;
        if ((atomic_inc(&p_1254->l_atomic_input[91]) == 4))
        { /* block id: 250 */
            int8_t l_479 = 0L;
            l_479 = 1L;
            unsigned int result = 0;
            result += l_479;
            atomic_add(&p_1254->l_special_values[91], result);
        }
        else
        { /* block id: 252 */
            (1 + 1);
        }
        (*p_1254->g_28) = ((l_476 == p_31) >= (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 16))(18446744073709551611UL, 0x593E5CD5F99EA8BEL, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 2))(l_482.s74)).xyxxyyxy, (uint64_t)0x1C89510DF5F2C6E6L))))).s24)).yxxxyyyy)), (safe_div_func_uint32_t_u_u((safe_div_func_int32_t_s_s((l_487 = p_34), (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(p_1254->g_488.xw)), 0L, l_482.s0, 0x5AB1590D81DB8E63L, ((VECTOR(int64_t, 8))(0x1239E4C25550BE23L, 0x0AB41198A7259D17L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(p_1254->g_489.xzyx)).zzxwzwzwzywxzyzw)).sdb64)), 0x03E1EA2D2B395F15L, 0x055A89708E79A07BL)), ((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 2))(0x78619DBB064BC4B1L, 0x7852254829F57648L)), (int64_t)0x276D6BD85C51256DL))), 6L)).s02)).even || (((*p_1254->g_470) , (((~(l_482.s7 && 0xAE9FB83CL)) || 0x27A9L) , (void*)0)) != p_1254->g_490)))), 4294967295UL)), 0x9DDC1AEFD7A86D68L, 7UL, 0x19B02A5201A1F931L, 1UL, 0x955B9A4366699F95L)).sd326, ((VECTOR(uint64_t, 4))(0xB1E092393038B475L))))).z, p_31)));
        (*l_513) = func_41((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((-8L), (-1L))).yxyx)).y , ((((*p_1254->g_278) , p_32) == p_32) && l_509)), &l_509, l_511, p_31, l_512, p_1254);
    }
    else
    { /* block id: 263 */
        uint16_t *l_525 = (void*)0;
        int32_t l_526 = 0x2528D225L;
        VECTOR(uint64_t, 4) l_530 = (VECTOR(uint64_t, 4))(0x5DA6CDEE51947397L, (VECTOR(uint64_t, 2))(0x5DA6CDEE51947397L, 1UL), 1UL);
        uint64_t l_535 = 9UL;
        uint8_t *l_536[3];
        int32_t l_552 = 0L;
        int32_t **l_608 = &p_1254->g_115;
        int32_t ***l_607 = &l_608;
        volatile struct S0 *l_628 = &p_1254->g_505;
        VECTOR(int32_t, 16) l_635 = (VECTOR(int32_t, 16))(0x2774B564L, (VECTOR(int32_t, 4))(0x2774B564L, (VECTOR(int32_t, 2))(0x2774B564L, 1L), 1L), 1L, 0x2774B564L, 1L, (VECTOR(int32_t, 2))(0x2774B564L, 1L), (VECTOR(int32_t, 2))(0x2774B564L, 1L), 0x2774B564L, 1L, 0x2774B564L, 1L);
        VECTOR(int32_t, 2) l_637 = (VECTOR(int32_t, 2))((-6L), 0x1D285C5CL);
        int16_t *l_687 = (void*)0;
        int32_t l_694 = (-1L);
        int16_t *l_695 = &p_1254->g_226.f8;
        VECTOR(int64_t, 2) l_749 = (VECTOR(int64_t, 2))(0x5F03D2E485A48244L, 7L);
        VECTOR(uint16_t, 4) l_849 = (VECTOR(uint16_t, 4))(0x8116L, (VECTOR(uint16_t, 2))(0x8116L, 0xA795L), 0xA795L);
        int32_t l_866 = 0x3B445D0CL;
        VECTOR(uint32_t, 16) l_878 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xED4820BAL), 0xED4820BAL), 0xED4820BAL, 1UL, 0xED4820BAL, (VECTOR(uint32_t, 2))(1UL, 0xED4820BAL), (VECTOR(uint32_t, 2))(1UL, 0xED4820BAL), 1UL, 0xED4820BAL, 1UL, 0xED4820BAL);
        int64_t l_889 = 5L;
        VECTOR(uint16_t, 8) l_916 = (VECTOR(uint16_t, 8))(65527UL, (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 65526UL), 65526UL), 65526UL, 65527UL, 65526UL);
        struct S0 *l_935 = &p_1254->g_249;
        VECTOR(int8_t, 8) l_951 = (VECTOR(int8_t, 8))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x03L), 0x03L), 0x03L, 0x05L, 0x03L);
        int32_t l_977 = 0L;
        VECTOR(uint8_t, 2) l_992 = (VECTOR(uint8_t, 2))(8UL, 0x2AL);
        uint32_t *l_993 = (void*)0;
        uint32_t *l_994 = &p_1254->g_714[1];
        int32_t l_995 = 1L;
        int i;
        for (i = 0; i < 3; i++)
            l_536[i] = &p_1254->g_345[9].f7;
        for (p_1254->g_238.f3.f7 = 0; (p_1254->g_238.f3.f7 != 12); p_1254->g_238.f3.f7 = safe_add_func_int32_t_s_s(p_1254->g_238.f3.f7, 6))
        { /* block id: 266 */
            uint16_t l_524 = 0x5D96L;
            int32_t **l_537 = &p_1254->g_115;
            VECTOR(int32_t, 8) l_562 = (VECTOR(int32_t, 8))(0x0C0BBC75L, (VECTOR(int32_t, 4))(0x0C0BBC75L, (VECTOR(int32_t, 2))(0x0C0BBC75L, 0x3CB1EC3FL), 0x3CB1EC3FL), 0x3CB1EC3FL, 0x0C0BBC75L, 0x3CB1EC3FL);
            VECTOR(int8_t, 4) l_576 = (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, (-1L)), (-1L));
            uint32_t *l_584[7][6] = {{&p_1254->g_226.f2,&p_1254->g_249.f2,&p_1254->g_249.f2,(void*)0,&p_1254->g_249.f2,&p_1254->g_249.f2},{&p_1254->g_226.f2,&p_1254->g_249.f2,&p_1254->g_249.f2,(void*)0,&p_1254->g_249.f2,&p_1254->g_249.f2},{&p_1254->g_226.f2,&p_1254->g_249.f2,&p_1254->g_249.f2,(void*)0,&p_1254->g_249.f2,&p_1254->g_249.f2},{&p_1254->g_226.f2,&p_1254->g_249.f2,&p_1254->g_249.f2,(void*)0,&p_1254->g_249.f2,&p_1254->g_249.f2},{&p_1254->g_226.f2,&p_1254->g_249.f2,&p_1254->g_249.f2,(void*)0,&p_1254->g_249.f2,&p_1254->g_249.f2},{&p_1254->g_226.f2,&p_1254->g_249.f2,&p_1254->g_249.f2,(void*)0,&p_1254->g_249.f2,&p_1254->g_249.f2},{&p_1254->g_226.f2,&p_1254->g_249.f2,&p_1254->g_249.f2,(void*)0,&p_1254->g_249.f2,&p_1254->g_249.f2}};
            int32_t l_588 = (-1L);
            uint16_t *l_639 = &p_1254->g_246;
            VECTOR(uint32_t, 2) l_653 = (VECTOR(uint32_t, 2))(7UL, 4294967295UL);
            VECTOR(uint64_t, 8) l_660 = (VECTOR(uint64_t, 8))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 0UL), 0UL), 0UL, 2UL, 0UL);
            VECTOR(int16_t, 4) l_672 = (VECTOR(int16_t, 4))(0x49A4L, (VECTOR(int16_t, 2))(0x49A4L, 4L), 4L);
            int i, j;
            (*p_1254->g_28) &= ((((safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((l_526 = (p_34 < (safe_lshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((~FAKE_DIVERGE(p_1254->global_1_offset, get_global_id(1), 10)) , (l_524 != (l_525 == (void*)0))), ((l_526 >= ((((VECTOR(uint32_t, 2))(p_1254->g_529.yy)).hi || (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_530.yy)))).hi > p_1254->g_345[9].f1)) | ((((((((safe_rshift_func_int8_t_s_s((p_1254->g_226.f1 <= (p_1254->g_226.f5 <= ((safe_lshift_func_int8_t_s_u((p_1254->g_49.s9 = p_1254->g_226.f7), (*p_1254->g_470))) != p_1254->g_249.f2))), l_535)) != 18446744073709551613UL) , l_503.y) < 7UL) == l_524) != (*p_33)) ^ p_1254->g_113) , (*p_1254->g_470)))) & p_1254->g_345[9].f5))), p_31)))), 3)), p_34)) ^ p_34) | 0x5B6297055115F97BL) , p_34);
            (*l_537) = func_41(p_1254->g_345[9].f4, l_536[2], &p_1254->g_113, p_1254->g_316.f7, p_1254->g_249.f8, p_1254);
            for (p_1254->g_226.f0 = 0; (p_1254->g_226.f0 != 21); p_1254->g_226.f0 = safe_add_func_int8_t_s_s(p_1254->g_226.f0, 1))
            { /* block id: 273 */
                int8_t *l_549 = (void*)0;
                int32_t l_553 = 0x632F0C7FL;
                int8_t *l_554 = (void*)0;
                int8_t *l_555 = (void*)0;
                int8_t *l_556 = (void*)0;
                int8_t *l_557 = (void*)0;
                int8_t *l_558 = (void*)0;
                int8_t *l_559[6][5];
                int32_t l_560 = 0x780D6293L;
                uint16_t **l_638 = &l_525;
                uint32_t l_655 = 0x50E9EFA1L;
                VECTOR(int32_t, 2) l_665 = (VECTOR(int32_t, 2))(0x5880665AL, 7L);
                int16_t *l_670 = &p_1254->g_181;
                VECTOR(int16_t, 2) l_671 = (VECTOR(int16_t, 2))(0x3C1FL, (-5L));
                VECTOR(int16_t, 16) l_673 = (VECTOR(int16_t, 16))(0x2C3EL, (VECTOR(int16_t, 4))(0x2C3EL, (VECTOR(int16_t, 2))(0x2C3EL, 0x4EB2L), 0x4EB2L), 0x4EB2L, 0x2C3EL, 0x4EB2L, (VECTOR(int16_t, 2))(0x2C3EL, 0x4EB2L), (VECTOR(int16_t, 2))(0x2C3EL, 0x4EB2L), 0x2C3EL, 0x4EB2L, 0x2C3EL, 0x4EB2L);
                uint64_t *l_674 = &p_1254->g_345[9].f4;
                int i, j;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_559[i][j] = (void*)0;
                }
                if ((safe_rshift_func_int8_t_s_s((l_560 ^= ((safe_sub_func_uint16_t_u_u((0xDAD10256L ^ (l_544[1] == (void*)0)), (safe_mul_func_int8_t_s_s((l_526 |= (safe_mul_func_int16_t_s_s(p_1254->g_489.w, l_530.x))), (l_552 = (safe_sub_func_uint16_t_u_u(p_1254->g_473.f1, (p_33 != &p_1254->g_113)))))))) >= ((l_553 &= (*p_33)) ^ l_530.y))), 6)))
                { /* block id: 278 */
                    VECTOR(int32_t, 2) l_563 = (VECTOR(int32_t, 2))(0x7D54A065L, 0x05B5FD8EL);
                    VECTOR(int8_t, 16) l_577 = (VECTOR(int8_t, 16))(0x77L, (VECTOR(int8_t, 4))(0x77L, (VECTOR(int8_t, 2))(0x77L, 0x1EL), 0x1EL), 0x1EL, 0x77L, 0x1EL, (VECTOR(int8_t, 2))(0x77L, 0x1EL), (VECTOR(int8_t, 2))(0x77L, 0x1EL), 0x77L, 0x1EL, 0x77L, 0x1EL);
                    uint32_t *l_582 = &p_1254->g_583;
                    int16_t *l_585 = &p_1254->g_345[9].f8;
                    int16_t *l_586 = (void*)0;
                    int16_t *l_587 = &p_1254->g_249.f8;
                    int i;
                    l_588 ^= (p_1254->g_561[1] , ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(3L, 0L, 0x26ADD889L, ((VECTOR(int32_t, 2))((-8L), (-1L))), ((VECTOR(int32_t, 2))(l_562.s27)), (-4L))).s05, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))((-1L), (-4L))).yyxy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_563.yyxyyxyxxxyxxxxx)).sdc)).yyxy))).xzxxzxwzzwxwyyzy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))((-1L), ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((*l_587) |= (safe_lshift_func_int16_t_s_s(((safe_mod_func_int64_t_s_s((((*l_585) &= ((l_560 = (p_1254->g_488.x | ((((((safe_rshift_func_int16_t_s_s((((*l_582) = (p_32 == (p_1254->g_115 = (((p_1254->g_345[9].f4 >= (p_34 | ((safe_lshift_func_uint16_t_u_u((+(safe_rshift_func_uint8_t_u_s((&p_1254->g_48 == (void*)0), (p_1254->g_49.s2 = (l_526 = p_31))))), (((safe_div_func_int8_t_s_s(((((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(l_576.zxzy)).lo, ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_577.s83)), 0L, 7L))))).ywywwxzx, ((VECTOR(int8_t, 8))((((*p_1254->g_28) = ((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(0x183CD14E550E922DL, (((safe_add_func_uint32_t_u_u(l_577.se, l_577.s3)) , p_1254->g_226.f1) || p_1254->g_249.f5), ((VECTOR(uint64_t, 2))(18446744073709551609UL)), ((VECTOR(uint64_t, 4))(0x9B1E0D65594852B3L)))).s4, p_31)) , 0x678F2A15L)) , 1L), 0x6DL, 0L, 1L, 0x31L, 0x24L, 0x66L, (-7L)))))).s40, ((VECTOR(int8_t, 2))(0x79L)))))))).odd != (*p_33)) & l_552), (*p_1254->g_470))) , 1L) ^ 0x0446D807L))) != p_31))) & (-6L)) , (*l_537))))) && p_1254->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1254->tid, 2))]), p_1254->g_489.x)) | p_1254->g_345[9].f1) , p_32) != l_584[3][1]) == 0xA3EBBB9302741917L) , l_553))) , 1L)) > l_553), p_1254->g_345[9].f0)) || p_1254->g_128.f5), 7))), 0x3B7DL, p_1254->g_473.f2, ((VECTOR(int16_t, 2))(0x6B47L)), p_1254->g_345[9].f8, 0x1DD9L, 1L)).odd)).xyyzyzyz)).hi, ((VECTOR(int16_t, 4))((-1L)))))), ((VECTOR(uint16_t, 4))(0xB336L))))), 0x7C3AD940L, 0x01C74F76L, 6L)).s06))), (-2L), (-1L))).yywxzxzzywywyyzx))).s2fe1))))).wxxwzyzzzwyyzxzw)).s2a, ((VECTOR(int32_t, 2))(0L))))).xxyxyxxyyyxyyyyy)).sa8, (int32_t)(-1L), (int32_t)p_31))).lo);
                    return (*p_1254->g_324);
                }
                else
                { /* block id: 289 */
                    uint16_t l_589 = 0x1311L;
                    VECTOR(int8_t, 8) l_601 = (VECTOR(int8_t, 8))(0x30L, (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, (-1L)), (-1L)), (-1L), 0x30L, (-1L));
                    VECTOR(int8_t, 4) l_602 = (VECTOR(int8_t, 4))(0x0EL, (VECTOR(int8_t, 2))(0x0EL, 0x18L), 0x18L);
                    VECTOR(int8_t, 8) l_609 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x32L), 0x32L), 0x32L, (-2L), 0x32L);
                    VECTOR(uint8_t, 8) l_622 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x77L), 0x77L), 0x77L, 1UL, 0x77L);
                    int32_t l_625[9][4][1] = {{{0x322F8656L},{0x322F8656L},{0x322F8656L},{0x322F8656L}},{{0x322F8656L},{0x322F8656L},{0x322F8656L},{0x322F8656L}},{{0x322F8656L},{0x322F8656L},{0x322F8656L},{0x322F8656L}},{{0x322F8656L},{0x322F8656L},{0x322F8656L},{0x322F8656L}},{{0x322F8656L},{0x322F8656L},{0x322F8656L},{0x322F8656L}},{{0x322F8656L},{0x322F8656L},{0x322F8656L},{0x322F8656L}},{{0x322F8656L},{0x322F8656L},{0x322F8656L},{0x322F8656L}},{{0x322F8656L},{0x322F8656L},{0x322F8656L},{0x322F8656L}},{{0x322F8656L},{0x322F8656L},{0x322F8656L},{0x322F8656L}}};
                    int64_t l_629[3];
                    uint8_t l_631 = 0x55L;
                    int32_t *l_634 = (void*)0;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_629[i] = 0x15FEFB5861FBD624L;
                    --l_589;
                    for (l_476 = 11; (l_476 < 18); l_476 = safe_add_func_uint32_t_u_u(l_476, 9))
                    { /* block id: 293 */
                        uint16_t *l_614 = (void*)0;
                        (*p_1254->g_28) ^= ((p_1254->g_128.f5 >= 0x1AL) != (safe_mul_func_uint8_t_u_u((*p_1254->g_470), 0xA7L)));
                        p_1254->g_469 &= ((*p_1254->g_28) = (0x0C4DEB429E6664E6L | (safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))((safe_mod_func_int16_t_s_s(0L, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x3D5EL, 0x6550L)).yxyxyxyy)).s7)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))(l_600.s43)), ((VECTOR(int8_t, 4))(l_601.s1663)).even))).yxyyxxyy, ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(0L, ((VECTOR(int8_t, 2))(l_602.zy)), (safe_add_func_int16_t_s_s((((VECTOR(int8_t, 8))((safe_lshift_func_int16_t_s_u(l_602.x, (&p_1254->g_185 == l_607))), (-5L), ((VECTOR(int8_t, 4))(l_609.s7267)), 0x60L, 2L)).s2 | (++(*p_1254->g_470))), (safe_lshift_func_uint16_t_u_u((p_1254->g_246 = (~FAKE_DIVERGE(p_1254->global_0_offset, get_global_id(0), 10))), 2)))), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(p_1254->g_615.yy)))))), 0x64L, ((VECTOR(int8_t, 8))(0x21L, (FAKE_DIVERGE(p_1254->local_2_offset, get_local_id(2), 10) != (safe_div_func_int64_t_s_s(((!(safe_mul_func_int8_t_s_s(4L, (0x34C6519CL == (safe_add_func_int16_t_s_s(p_31, p_1254->g_316.f8)))))) , p_31), p_1254->g_249.f2))), (-1L), 0x55L, 0L, 0x30L, 0x3FL, 0x67L)), 0x54L)).lo)).lo, ((VECTOR(int8_t, 4))(0x78L))))), ((VECTOR(int8_t, 4))(4L))))).wxxwxzxyyyyzzyxw, ((VECTOR(int8_t, 16))(1L)), ((VECTOR(int8_t, 16))((-1L)))))).hi))).s56)), 0L, 0L, ((VECTOR(int8_t, 2))(0x2EL)), 9L)).hi)).w, 7))));
                    }
                    if (p_34)
                    { /* block id: 300 */
                        (*p_1254->g_28) = (((VECTOR(uint8_t, 4))(l_622.s2663)).y > (l_625[1][0][0] = (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 2))((-2L), 0x31L)).lo, 1))));
                        return (*p_1254->g_117);
                    }
                    else
                    { /* block id: 304 */
                        volatile struct S0 **l_627[7][5] = {{(void*)0,(void*)0,&p_1254->g_472[2][1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1254->g_472[2][1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1254->g_472[2][1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1254->g_472[2][1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1254->g_472[2][1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1254->g_472[2][1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1254->g_472[2][1],(void*)0,(void*)0}};
                        int32_t l_630 = 0x5AB8304DL;
                        int i, j;
                        if (p_34)
                            break;
                        l_628 = &p_1254->g_158;
                        l_631++;
                    }
                    (*l_537) = l_634;
                }
                (*p_1254->g_28) = ((~p_34) == (+((((p_34 ^ ((p_1254->g_246 = (((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(0x20962DB4L, ((VECTOR(int32_t, 2))((-1L), 0x3A918D28L)), (-5L))).lo, ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(l_635.sb001d14e)).even, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 16))(l_636.s1637057527076706)).sed, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_637.xx))))))), (int32_t)(((*l_638) = &p_1254->g_257) != (l_639 = &l_524))))), ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 8))(l_640.wxywyywx)).s1220303567646412, ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(0x7F11466AL, (safe_rshift_func_uint16_t_u_s(((*p_33) & (safe_div_func_uint32_t_u_u((0x5AL && (safe_mod_func_uint8_t_u_u((+(((safe_sub_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_651.s60d8d43f716d1432)).sa4)).even, (((*l_628) , ((p_1254->g_652[0] , ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_653.yxyx)).xxxzwwxzxyzyzxyz)).s7) || ((p_34 < (*p_1254->g_470)) , p_1254->g_654))) < 9L))) || p_1254->g_473.f4), 0x6B12L)) , p_1254->g_80.x) < (-6L))), (*p_33)))), FAKE_DIVERGE(p_1254->group_2_offset, get_group_id(2), 10)))), 0)), 0L, 0x6BC0B1B1L)).xyyyzyzz, ((VECTOR(int32_t, 8))(0x712641ADL)), ((VECTOR(int32_t, 8))(0x6FD184DEL))))))).s4004055143436373)), ((VECTOR(int32_t, 16))(0x0BA5728CL))))), ((VECTOR(int32_t, 16))(0x73EBD5A5L))))).sbe)).xyxx, ((VECTOR(int32_t, 4))(0x77ADAFCBL))))).even))).xyyy))).xwxzwxxzyyxyzxwy)).s579b, ((VECTOR(int32_t, 4))((-7L)))))).lo))).odd && p_31)) < 0xB71FL)) && l_655) | p_1254->g_249.f7) , p_1254->g_184.f0)));
                (*l_537) = func_41(p_31, ((safe_mul_func_int8_t_s_s((0UL != ((((safe_mod_func_int64_t_s_s((-10L), ((VECTOR(uint64_t, 4))(l_660.s3743)).y)) || ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(18446744073709551606UL, ((*l_674) = (p_1254->g_489.w > (safe_div_func_uint64_t_u_u(((p_1254->g_470 != (((safe_sub_func_int32_t_s_s((((void*)0 != l_628) ^ ((VECTOR(int32_t, 2))(l_665.xy)).hi), (safe_mul_func_uint16_t_u_u(((*l_639)--), (((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 16))(0x77D0L, ((*l_670) = p_31), 0x3DBDL, (-1L), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(l_671.xxyxyyxx)))).odd, ((VECTOR(int16_t, 16))(8L, 0x6AB3L, ((VECTOR(int16_t, 8))(l_672.yzzwxyww)), 0x5C5BL, 0x69B5L, 0L, ((VECTOR(int16_t, 2))(l_673.s6f)), 0L)).s2df6))).ywwwyxxz)), 0x752FL, (-6L), 1L, (-7L))).se0b0, (int16_t)(p_1254->g_469 | p_31)))).w != p_34))))) , p_34) , p_33)) ^ p_34), p_34)))), 0x3DBC574229E7C53DL, 0x33F197106B5BD5FBL)))).z) , p_1254->g_470) == l_675)), 1L)) , p_33), &p_1254->g_113, p_1254->g_505.f6, p_1254->g_345[9].f5, p_1254);
            }
            if (p_34)
                continue;
        }
        (*l_628) = func_37(func_41(p_31, p_33, p_33, p_31, ((safe_rshift_func_uint8_t_u_s((*p_1254->g_470), 5)) >= ((safe_rshift_func_uint8_t_u_s((*p_1254->g_470), (safe_mul_func_int8_t_s_s(p_1254->g_249.f3, ((l_682 = p_32) != (*l_608)))))) & 0x2B3391936700696FL)), p_1254), p_31, p_1254->g_249.f2, p_1254);
        if (((p_1254->g_345[9].f8 = (l_683 != p_1254->g_685)) == ((*l_695) = (((p_34 = (safe_div_func_uint64_t_u_u(1UL, (safe_sub_func_int32_t_s_s((0x1BFEA1B1L >= ((safe_rshift_func_uint16_t_u_s(p_34, 15)) == ((void*)0 == &p_31))), p_34))))) > l_694) && GROUP_DIVERGE(2, 1)))))
        { /* block id: 327 */
            VECTOR(uint16_t, 4) l_703 = (VECTOR(uint16_t, 4))(0x567CL, (VECTOR(uint16_t, 2))(0x567CL, 1UL), 1UL);
            uint32_t *l_706 = &p_1254->g_583;
            uint32_t *l_713 = &p_1254->g_714[1];
            uint32_t *l_716 = &p_1254->g_717;
            uint32_t *l_718 = &p_1254->g_719;
            uint32_t **l_729 = &p_1254->g_152[0][2][1];
            int32_t l_733[1][1][3];
            int64_t l_738[8][1];
            VECTOR(int64_t, 4) l_760 = (VECTOR(int64_t, 4))(0x70F7AA96EF2FC1E5L, (VECTOR(int64_t, 2))(0x70F7AA96EF2FC1E5L, 0x01E7AD95CBCA1F08L), 0x01E7AD95CBCA1F08L);
            struct S0 *l_767[10];
            int32_t l_778 = 0x168E1E6DL;
            int16_t l_796 = 0x0A87L;
            int32_t l_798 = 0L;
            uint16_t *l_810[1];
            int32_t l_821 = 0x771E1FD2L;
            uint16_t l_841 = 65531UL;
            int32_t l_844[5];
            int64_t l_871[9][2] = {{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}};
            VECTOR(int8_t, 2) l_918 = (VECTOR(int8_t, 2))(0L, 1L);
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_733[i][j][k] = 0x187502C3L;
                }
            }
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 1; j++)
                    l_738[i][j] = 0x1F21017781B56E6FL;
            }
            for (i = 0; i < 10; i++)
                l_767[i] = &p_1254->g_768;
            for (i = 0; i < 1; i++)
                l_810[i] = (void*)0;
            for (i = 0; i < 5; i++)
                l_844[i] = 0x1A7634D7L;
            if ((((safe_add_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 16))(l_700.wywzwyzzzzwyyywy)).s3e, ((VECTOR(uint8_t, 16))(252UL, 0x2AL, 0x0AL, ((VECTOR(uint8_t, 4))(0xD5L, 0x0BL, 0x13L, 255UL)), 255UL, ((VECTOR(uint8_t, 8))(0xC2L, ((VECTOR(uint8_t, 4))(0x73L, 255UL, 6UL, 255UL)), ((VECTOR(uint8_t, 2))(p_1254->g_701.s00)), 0x8EL)))).sd4))), (int16_t)((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 4))(p_1254->g_702.s0506)), ((VECTOR(uint16_t, 4))(l_703.wwzz))))).hi)).hi == ((8L || (((*l_706) = 1UL) < ((*l_718) = ((((((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 16))(p_1254->g_707.xzzyzyyzxwzywwwy)).sfeb8, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(p_1254->g_708.s1727)).odd)))).yyxy)), (p_34 != (((*l_716) = (p_34 > (p_34 ^ ((-3L) || (safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((*l_695) = ((p_1254->g_715[2][1] |= ((*l_713) = ((((-2L) & 0x1AE7L) & p_1254->g_226.f0) | l_703.y))) | p_1254->g_345[9].f7)))))))) > 7L)), ((VECTOR(uint8_t, 2))(0xACL)), ((VECTOR(uint8_t, 8))(1UL)), 7UL)).s1f55))), ((VECTOR(uint8_t, 4))(1UL))))).y || 0x00L) < 0UL) != 0x5D3CL) & p_34)))) <= (-1L))) >= l_703.w)))).even && 0x0CD2L), p_34)) != (-10L)) != l_703.z), p_31)) , p_1254->g_720) , 0L))
            { /* block id: 334 */
                uint8_t **l_728 = &p_1254->g_470;
                uint32_t *l_731 = &p_1254->g_249.f2;
                uint32_t **l_730 = &l_731;
                int32_t l_732 = 0L;
                VECTOR(int64_t, 8) l_759 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x49C0FA8FC43725E8L), 0x49C0FA8FC43725E8L), 0x49C0FA8FC43725E8L, (-1L), 0x49C0FA8FC43725E8L);
                uint32_t *l_766 = &p_1254->g_714[1];
                int32_t l_782 = 0x53DDAF80L;
                int32_t l_784 = 0x0817AE43L;
                int32_t l_785 = 0x3087B427L;
                int32_t l_790 = (-1L);
                int32_t l_791[7][1][1];
                VECTOR(int32_t, 8) l_811 = (VECTOR(int32_t, 8))(0x168E7617L, (VECTOR(int32_t, 4))(0x168E7617L, (VECTOR(int32_t, 2))(0x168E7617L, 0x25D9E596L), 0x25D9E596L), 0x25D9E596L, 0x168E7617L, 0x25D9E596L);
                uint64_t *l_867 = (void*)0;
                uint64_t *l_868 = (void*)0;
                uint64_t *l_869 = (void*)0;
                uint64_t *l_870 = &p_1254->g_238.f3.f5;
                int i, j, k;
                for (i = 0; i < 7; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_791[i][j][k] = 1L;
                    }
                }
                l_733[0][0][0] = ((*p_33) & (safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((p_1254->g_316.f1 || (safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(0xE41AE07EL, (&p_31 != &p_1254->g_715[2][1]), ((VECTOR(uint32_t, 4))(p_1254->g_727.wzxx)), ((VECTOR(uint32_t, 8))(((((*l_730) = ((*l_729) = func_41(p_1254->g_505.f7, ((*l_728) = &p_1254->g_48), &p_1254->g_113, (l_729 == &p_1254->g_152[0][7][1]), p_1254->g_249.f5, p_1254))) == p_32) , 0x47FC6766L), 0x5C07C6BBL, 6UL, ((VECTOR(uint32_t, 2))(0xB80A3BC1L)), 0UL, 0xDC963154L, 0x36A9119BL)), 0UL, 0xC507FF90L)))).s0 , (-6L))))), l_732)), 0)));
                if (l_734)
                { /* block id: 339 */
                    int32_t l_737 = 0x369C7815L;
                    uint32_t *l_765 = &p_1254->g_714[4];
                    int32_t l_780 = 0x60D518B8L;
                    int32_t l_781 = 0x541B48F0L;
                    VECTOR(int32_t, 2) l_783 = (VECTOR(int32_t, 2))(0x7A635A24L, 5L);
                    int i;
                    if ((((**p_1254->g_685) ^= ((VECTOR(uint16_t, 2))(1UL, 8UL)).lo) != l_733[0][0][0]))
                    { /* block id: 341 */
                        uint32_t *l_735 = (void*)0;
                        uint32_t *l_736[6] = {&p_1254->g_491.f2.f2,&p_1254->g_491.f2.f2,&p_1254->g_491.f2.f2,&p_1254->g_491.f2.f2,&p_1254->g_491.f2.f2,&p_1254->g_491.f2.f2};
                        int64_t *l_750[10];
                        int32_t l_755 = 0x63D8DCD3L;
                        uint32_t **l_756[8][4][5] = {{{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706}},{{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706}},{{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706}},{{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706}},{{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706}},{{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706}},{{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706}},{{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706},{&l_713,&l_706,&l_718,&l_716,&l_706}}};
                        int32_t l_769[2];
                        int i, j, k;
                        for (i = 0; i < 10; i++)
                            l_750[i] = (void*)0;
                        for (i = 0; i < 2; i++)
                            l_769[i] = 4L;
                        (*l_608) = p_32;
                        (*p_1254->g_278) = ((l_737 |= 7UL) , func_37(p_32, l_738[7][0], ((safe_add_func_int8_t_s_s(0x5AL, (safe_div_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((((((**p_1254->g_685) = (safe_add_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), p_1254->g_316.f2)), (((p_1254->g_238.f3.f0 = ((VECTOR(int64_t, 2))(l_749.xx)).odd) , ((safe_sub_func_int16_t_s_s(p_34, (((GROUP_DIVERGE(1, 1) == ((*p_33) &= GROUP_DIVERGE(0, 1))) >= 7L) >= ((safe_sub_func_int32_t_s_s(((l_755 = FAKE_DIVERGE(p_1254->local_1_offset, get_local_id(1), 10)) , (((p_1254->g_758[2][1] = (p_1254->g_757 = p_32)) == (l_766 = (((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 4))(l_759.s4617)).xyyyxzzx, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_760.zzwzyzwxzxwwxyyw)).s7c)), (safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u(p_1254->g_49.sb, 2)), p_1254->g_113)), p_31, (-1L), (-5L), 0x56E470EFFF85E37DL, l_755, p_31, 0x27E7D5AD5F8A8219L, ((VECTOR(int64_t, 4))(0x2B645935C056A271L)), 6L, 0x6D5FB0ACA50A41D8L)), ((VECTOR(int64_t, 16))(0L))))).odd)), ((VECTOR(int64_t, 8))((-10L)))))).s43))), 0x799E0C5D738E26D3L, 0x4706ADEDB1C86FE6L)).hi, ((VECTOR(int64_t, 2))(0x7A354CD68D0958A8L))))), 0L, 0x7561EF11AF5ED3BBL)))).xxzzwxzzzzyxzxwy)).se5, (int64_t)0L, (int64_t)p_1254->g_249.f0))).hi , l_765))) < p_1254->g_345[9].f5)), p_1254->g_345[9].f5)) , l_759.s0)))) , l_767[9])) != (void*)0)))) || (*p_1254->g_686)) , p_31) >= l_769[1]), p_1254->g_257)), p_34)))) && 0x48L), p_1254));
                    }
                    else
                    { /* block id: 352 */
                        int32_t l_770 = 1L;
                        l_770 ^= 0x0A656475L;
                    }
                    (*p_1254->g_28) = l_759.s0;
                    p_1254->g_771--;
                    for (p_1254->g_246 = (-20); (p_1254->g_246 <= 51); p_1254->g_246++)
                    { /* block id: 359 */
                        VECTOR(int32_t, 4) l_779 = (VECTOR(int32_t, 4))(0x33C8AEBDL, (VECTOR(int32_t, 2))(0x33C8AEBDL, 0x58E70812L), 0x58E70812L);
                        int32_t l_786 = 0x7A7F9484L;
                        int32_t l_787 = 0x0BDAA7FCL;
                        int32_t l_788 = (-4L);
                        int32_t l_789 = 0L;
                        VECTOR(int32_t, 8) l_792 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 8L), 8L), 8L, (-1L), 8L);
                        uint64_t l_793 = 0x2A124775F95917BFL;
                        int32_t l_797 = 0x0E1D8345L;
                        int i;
                        p_1254->g_777 = p_1254->g_776;
                        ++l_793;
                        p_1254->g_799[0]--;
                        (*p_1254->g_28) = (safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((l_788 == ((*l_765) = (safe_mul_func_uint8_t_u_u(((*p_33) && (((((void*)0 != p_33) && ((*p_1254->g_685) == l_810[0])) ^ ((p_34 <= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_811.s42040230)).s65)).odd) > (safe_mul_func_int8_t_s_s(0x39L, (safe_div_func_uint16_t_u_u((p_1254->g_257 = ((l_703.y >= l_787) || 0x793B5C9DL)), 5L)))))) > p_1254->g_158.f7)), (*p_33))))), p_1254->g_181)), l_791[4][0][0]));
                    }
                }
                else
                { /* block id: 367 */
                    int32_t *l_816 = &l_733[0][0][2];
                    return (*p_1254->g_324);
                }
                for (p_1254->g_88.f2 = 0; (p_1254->g_88.f2 < (-27)); p_1254->g_88.f2 = safe_sub_func_int64_t_s_s(p_1254->g_88.f2, 6))
                { /* block id: 372 */
                    int32_t l_830 = 1L;
                    int32_t l_831 = 0x6AED8253L;
                    int32_t l_833 = 0x51C5972FL;
                    int32_t l_834 = 0x2AF03B98L;
                    int32_t l_835 = 0x400B10DFL;
                    int32_t l_836 = 0x6C012163L;
                    int32_t l_837 = (-5L);
                    int32_t l_838 = 0x51E6B0B8L;
                    int32_t l_839 = 0x161F13A1L;
                    int32_t l_840[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_840[i] = (-2L);
                    for (p_1254->g_583 = 0; (p_1254->g_583 < 27); p_1254->g_583 = safe_add_func_uint64_t_u_u(p_1254->g_583, 5))
                    { /* block id: 375 */
                        VECTOR(int32_t, 8) l_822 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x11F0D9CEL), 0x11F0D9CEL), 0x11F0D9CEL, 0L, 0x11F0D9CEL);
                        int16_t l_829 = 1L;
                        int i;
                        (*p_1254->g_28) |= ((VECTOR(int32_t, 4))(0x5E59EB0DL, ((VECTOR(int32_t, 2))(0x7A24D97AL, 5L)), 1L)).w;
                        l_830 |= ((l_821 != ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_822.s6736531543507077)).s7db3)).odd, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_823.wzyw)).ywzxyzwz)).s7277423771662111)).sc44b)))).even, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_824.s06)).xyyyyyxx)).s77))).xxyxyyyx, ((VECTOR(int32_t, 2))(0x06CAA077L, 1L)).xxxyxxyy))).s2) >= (+(safe_rshift_func_int8_t_s_u((safe_sub_func_uint32_t_u_u((l_829 |= l_790), l_798)), 6))));
                        ++l_841;
                    }
                    l_844[2] &= (((p_31 || l_733[0][0][0]) || l_837) < p_1254->g_505.f7);
                }
                l_871[8][1] = (((*l_870) = (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(0xD12E9EA93BD99E37L, p_1254->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1254->tid, 2))], 18446744073709551615UL, (safe_lshift_func_uint8_t_u_s((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(l_849.xw)).odd, ((*l_695) |= ((((((p_1254->g_850 , (safe_sub_func_uint8_t_u_u((safe_div_func_int32_t_s_s(l_798, (safe_sub_func_uint64_t_u_u(p_1254->g_226.f5, (safe_div_func_int8_t_s_s((safe_mod_func_int8_t_s_s(0x66L, (*p_1254->g_470))), 0xFFL)))))), (safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(p_1254->g_865.s3060)).z, ((*p_33) > (l_784 |= (((*p_1254->g_28) ^ l_866) & p_1254->g_226.f1))))), 0xA0C2DE7DL))))) , p_32) == (void*)0) || p_31) != 0xDF0FF7D7L) == p_34)))), 7)), ((VECTOR(uint64_t, 2))(0xCC981CEDF7D1C8E7L)), 0x59AC6546341BF06CL, ((VECTOR(uint64_t, 2))(1UL)), 0x2454C5BD1B9AEA50L, p_1254->g_157.f2, 0x10134697866D9A23L, 0x0C951CE730387AE7L, 0x2D6FCCC43FF3EBEBL, 18446744073709551615UL, 18446744073709551611UL)).s60)).xxxy, ((VECTOR(uint64_t, 4))(18446744073709551614UL)), ((VECTOR(uint64_t, 4))(0x5576F29AA8F92F8CL))))), ((VECTOR(uint64_t, 4))(0x5DDAFEE0DB73BB77L))))), ((VECTOR(uint64_t, 4))(18446744073709551614UL))))).hi)).even && l_811.s1)) && p_1254->g_654);
            }
            else
            { /* block id: 387 */
                uint32_t l_890 = 1UL;
                (*p_1254->g_28) = (!((VECTOR(int32_t, 8))(p_1254->g_872.ywzxwyzw)).s2);
                for (l_798 = 21; (l_798 <= (-22)); --l_798)
                { /* block id: 391 */
                    int16_t l_875 = (-10L);
                    (*p_1254->g_28) ^= l_875;
                }
                if (((((safe_lshift_func_uint16_t_u_s((((p_1254->g_257 | (((*l_695) = (((*p_33) < (*p_1254->g_470)) <= p_1254->g_707.y)) >= (GROUP_DIVERGE(1, 1) >= (((VECTOR(uint32_t, 4))(l_878.sa9d6)).z , (safe_mod_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), ((safe_sub_func_int16_t_s_s((safe_add_func_uint64_t_u_u(0UL, (((*l_718) &= GROUP_DIVERGE(2, 1)) ^ p_34))), 65527UL)) & p_1254->g_249.f7))), (((!(safe_mod_func_int32_t_s_s(((*l_607) == (void*)0), l_889))) ^ GROUP_DIVERGE(2, 1)) , (*p_1254->g_28)))))))) , &p_1254->g_491) != (void*)0), l_890)) , (void*)0) == &p_1254->g_799[0]) >= l_890))
                { /* block id: 396 */
                    uint16_t l_902 = 65530UL;
                    int32_t l_903 = (-1L);
                    for (l_552 = 0; (l_552 <= 25); l_552 = safe_add_func_uint32_t_u_u(l_552, 6))
                    { /* block id: 399 */
                        int32_t l_893 = 1L;
                        (*p_1254->g_28) |= l_893;
                        l_903 = ((VECTOR(int32_t, 4))((l_844[2] | ((VECTOR(int8_t, 2))(0x36L, 1L)).hi), ((*p_1254->g_28) = (0x27L && (safe_add_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((p_31 , l_890), (-3L))), (safe_rshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(p_1254->g_720.f0, (*p_1254->g_470))), l_902)))))), 0x428FDAABL, 7L)).w;
                    }
                    for (p_1254->g_717 = 1; (p_1254->g_717 < 14); p_1254->g_717 = safe_add_func_int16_t_s_s(p_1254->g_717, 3))
                    { /* block id: 406 */
                        return (*l_608);
                    }
                    (*p_1254->g_28) &= ((*p_1254->g_470) > (safe_div_func_int32_t_s_s((safe_lshift_func_int16_t_s_u(p_1254->g_158.f6, 3)), ((*l_706) ^= ((((safe_mod_func_int16_t_s_s(p_1254->g_714[1], ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))(p_1254->g_912.s3158fd09264edff2)).s76, ((VECTOR(uint16_t, 8))(p_1254->g_913.s50525164)).s54))).xyyyxxyx, ((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(l_914.yxyxxxxy)), ((VECTOR(uint16_t, 2))(p_1254->g_915.xw)).xxxyxxyy))))).lo, (uint16_t)((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_916.s7505)).yzwwwxyw)).s3367636477570230, ((VECTOR(uint16_t, 8))(0x56F9L, 0x74B1L, 9UL, 0x78AFL, (((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(p_1254->g_917.s4e)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_918.yy)), 0L, (l_919 != l_921[5]), ((VECTOR(int8_t, 4))(p_1254->g_926.sfd87)))), (int8_t)((*p_1254->g_686) ^ (&p_1254->g_686 != &l_525))))).s44))))).xyxx)), ((VECTOR(int8_t, 4))(p_31, ((VECTOR(int8_t, 2))(0x79L)), (-1L))), 0x26L, 0x09L, 0x68L, 0x4FL, 0L, ((VECTOR(int8_t, 2))((-10L))), (-5L))).s653b, ((VECTOR(int8_t, 4))(4L))))).xwxxzxwwyyxzzyzy, ((VECTOR(int8_t, 16))(1L))))).s1 >= 1L), 65535UL, 0x0355L, 0UL)).s0131306262200226))).s0))).wxzywwzz))).s03)), ((VECTOR(uint16_t, 2))(65528UL))))).xxyx)).y)) > l_902) || p_1254->g_345[9].f0) && p_1254->g_719)))));
                }
                else
                { /* block id: 411 */
                    uint32_t **l_929 = &p_1254->g_152[0][6][2];
                    uint32_t ***l_930 = &l_929;
                    uint8_t *l_936[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    if ((((p_31 | ((((VECTOR(int8_t, 8))((-1L), ((VECTOR(int8_t, 4))(l_927.yxyy)), ((VECTOR(int8_t, 2))((-8L), 4L)), 0x45L)).s0 & FAKE_DIVERGE(p_1254->local_1_offset, get_local_id(1), 10)) & (((p_34 | ((*l_716) = ((*l_718) = FAKE_DIVERGE(p_1254->local_2_offset, get_local_id(2), 10)))) , l_928) != ((*l_930) = l_929)))) < (safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 8))(l_933.xywywxxw)).s7, (~(((FAKE_DIVERGE(p_1254->global_1_offset, get_global_id(1), 10) >= (p_1254->g_934 , (l_935 == (FAKE_DIVERGE(p_1254->group_2_offset, get_group_id(2), 10) , l_767[3])))) < ((((*p_33) ^ (((p_33 != l_936[6]) == (**p_1254->g_685)) , (*p_1254->g_470))) , p_1254->g_924.f4) , l_890)) , l_871[8][1]))))) && (*p_1254->g_470)))
                    { /* block id: 415 */
                        (**l_607) = p_32;
                    }
                    else
                    { /* block id: 417 */
                        uint8_t l_937[2][9] = {{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}};
                        int i, j;
                        --l_937[1][4];
                        (**l_607) = &l_733[0][0][0];
                    }
                    (*p_1254->g_28) &= l_703.z;
                }
            }
        }
        else
        { /* block id: 424 */
            int16_t l_940 = (-1L);
            l_940 |= (-5L);
            if ((safe_mod_func_int32_t_s_s(p_31, p_34)))
            { /* block id: 426 */
                p_1254->g_943[0][2] = (*p_1254->g_185);
            }
            else
            { /* block id: 428 */
                uint32_t *l_947[6] = {&p_1254->g_717,(void*)0,&p_1254->g_717,&p_1254->g_717,(void*)0,&p_1254->g_717};
                int32_t l_948[6] = {1L,1L,1L,1L,1L,1L};
                int8_t *l_954 = (void*)0;
                uint8_t l_955 = 8UL;
                int i;
                l_955 |= (((VECTOR(uint64_t, 8))(p_1254->g_944.s9e9dd3a3)).s6 >= (safe_mul_func_int8_t_s_s(((((l_948[0] |= 1UL) && (safe_mod_func_int64_t_s_s(((((((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 8))(l_951.s52005472)), (int8_t)(p_1254->g_917.s4 = (p_1254->g_924.f7 >= ((((safe_div_func_uint8_t_u_u(l_948[0], (*p_1254->g_470))) == (*p_1254->g_470)) >= p_1254->g_799[1]) ^ (p_1254->g_226.f1 <= (**p_1254->g_685)))))))).s0 != ((VECTOR(uint8_t, 2))(0x07L, 0x2BL)).even) && (((p_34 = 8L) , l_940) , p_1254->g_715[3][3])) >= 18446744073709551606UL) < l_940), p_31))) == p_31) , 0x13L), p_31)));
            }
            for (p_1254->g_923.f1 = (-19); (p_1254->g_923.f1 != (-9)); p_1254->g_923.f1++)
            { /* block id: 436 */
                if ((atomic_inc(&p_1254->g_atomic_input[98 * get_linear_group_id() + 66]) == 6))
                { /* block id: 438 */
                    int32_t l_958 = 0x6FFC3510L;
                    int8_t l_975 = 0x32L;
                    int32_t l_976 = 0x3840F29FL;
                    for (l_958 = 23; (l_958 >= 25); ++l_958)
                    { /* block id: 441 */
                        uint32_t l_961 = 0x94D9FD0FL;
                        int64_t l_962 = (-5L);
                        int32_t l_963 = 0x7FE3FF07L;
                        uint32_t l_964[7][6] = {{0x71BC571BL,0xA1EB9BD4L,0x0138C84BL,2UL,4294967289UL,0x71BC571BL},{0x71BC571BL,0xA1EB9BD4L,0x0138C84BL,2UL,4294967289UL,0x71BC571BL},{0x71BC571BL,0xA1EB9BD4L,0x0138C84BL,2UL,4294967289UL,0x71BC571BL},{0x71BC571BL,0xA1EB9BD4L,0x0138C84BL,2UL,4294967289UL,0x71BC571BL},{0x71BC571BL,0xA1EB9BD4L,0x0138C84BL,2UL,4294967289UL,0x71BC571BL},{0x71BC571BL,0xA1EB9BD4L,0x0138C84BL,2UL,4294967289UL,0x71BC571BL},{0x71BC571BL,0xA1EB9BD4L,0x0138C84BL,2UL,4294967289UL,0x71BC571BL}};
                        int32_t l_965 = 0x67E9D92CL;
                        int i, j;
                        l_962 ^= (l_961 = 1L);
                        l_965 &= ((VECTOR(int32_t, 8))(0L, 0x2E4A2194L, (l_964[3][0] = l_963), ((VECTOR(int32_t, 2))((-10L), (-1L))), 0L, 0x112EB40AL, 0x39E1D474L)).s2;
                    }
                    for (l_958 = 12; (l_958 == 7); --l_958)
                    { /* block id: 449 */
                        int32_t l_969 = 0L;
                        int32_t *l_968[5] = {&l_969,&l_969,&l_969,&l_969,&l_969};
                        int32_t *l_970 = &l_969;
                        int64_t l_971 = 1L;
                        struct S0 l_972 = {4L,-3L,4294967295UL,0x6A5B89DCL,0x53577A994652C3DDL,7UL,0x20F6053DL,255UL,0x1825L};/* VOLATILE GLOBAL l_972 */
                        int32_t l_973 = 0L;
                        uint32_t l_974 = 0xCE90E200L;
                        int i;
                        l_970 = l_968[1];
                        l_972 = (l_971 , l_972);
                        l_974 = l_973;
                    }
                    l_976 = l_975;
                    unsigned int result = 0;
                    result += l_958;
                    result += l_975;
                    result += l_976;
                    atomic_add(&p_1254->g_special_values[98 * get_linear_group_id() + 66], result);
                }
                else
                { /* block id: 455 */
                    (1 + 1);
                }
            }
        }
        (*l_608) = (((*l_919) , p_1254->g_652[0]) , func_41(((((((l_977 | ((*l_994) = (((p_31 != (safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s((((((safe_lshift_func_int16_t_s_u(p_1254->g_226.f6, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(p_1254->g_988.s52660110)))).hi, ((VECTOR(int16_t, 16))(l_989.wwwzzzwxyxyzzxww)).s2c9d))))).ywxywxxwxwwyyxxy)).s4403))).yxyzwyyxxwzxxzxw)).sd)) != ((safe_div_func_uint32_t_u_u((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(l_992.xxxyxxyy)))).s3 < (+(*p_1254->g_470))), (*p_1254->g_28))) == (((5UL || 1UL) >= (**p_1254->g_685)) | p_1254->g_922.f4))) != (*p_1254->g_28)) >= p_31) && 0x7B635811L), p_34)), p_1254->g_872.y)), 4))) == 0x4C44L) < p_1254->g_702.s6))) < 0x1403L) > l_995) & p_1254->g_719) , l_996) && 1UL), p_33, &p_1254->g_48, l_997[1], p_34, p_1254));
    }
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_1254->g_29 p_1254->g_49 p_1254->g_48 p_1254->g_comm_values p_1254->l_comm_values p_1254->g_79 p_1254->g_80 p_1254->g_28 p_1254->g_88 p_1254->g_100 p_1254->g_113 p_1254->g_117 p_1254->g_123 p_1254->g_128 p_1254->g_131 p_1254->g_150 p_1254->g_88.f3 p_1254->g_157 p_1254->g_184 p_1254->g_185 p_1254->g_127 p_1254->g_158 p_1254->g_226 p_1254->g_238 p_1254->g_246 p_1254->g_181 p_1254->g_249 p_1254->g_238.f3.f2 p_1254->g_278 p_1254->g_316 p_1254->g_317 p_1254->g_324 p_1254->g_345 p_1254->g_238.f3.f0
 * writes: p_1254->g_29 p_1254->g_88.f2 p_1254->g_113 p_1254->g_115 p_1254->g_127 p_1254->g_123 p_1254->g_151 p_1254->g_88.f3 p_1254->g_48 p_1254->g_158 p_1254->g_128 p_1254->g_246 p_1254->g_226.f4 p_1254->g_157 p_1254->g_226.f1 p_1254->g_257 p_1254->g_238.f3.f7 p_1254->g_238.f3.f2 p_1254->g_249.f4 p_1254->g_249.f5 p_1254->g_249.f8 p_1254->g_249 p_1254->g_238.f3.f0
 */
int16_t  func_35(int32_t  p_36, struct S4 * p_1254)
{ /* block id: 7 */
    uint8_t *l_47 = &p_1254->g_48;
    int32_t l_50[2];
    int64_t *l_53 = (void*)0;
    int64_t *l_54 = (void*)0;
    int64_t *l_55 = (void*)0;
    int64_t *l_56 = (void*)0;
    int64_t *l_57[1][7][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_58 = 0x5E5A1AE2L;
    int32_t l_59 = 0x160DD4F9L;
    int32_t l_62[4][8] = {{2L,2L,7L,0x6971521FL,(-1L),0x6971521FL,7L,2L},{2L,2L,7L,0x6971521FL,(-1L),0x6971521FL,7L,2L},{2L,2L,7L,0x6971521FL,(-1L),0x6971521FL,7L,2L},{2L,2L,7L,0x6971521FL,(-1L),0x6971521FL,7L,2L}};
    struct S0 *l_347 = &p_1254->g_249;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_50[i] = 0L;
    (*l_347) = func_37(func_41(p_1254->g_29, l_47, l_47, (((l_50[0] = ((VECTOR(int8_t, 8))(p_1254->g_49.s0f55f5dd)).s2) ^ (safe_rshift_func_int16_t_s_u((-4L), 4))) ^ ((l_59 = (l_58 = p_1254->g_48)) > (safe_mod_func_int8_t_s_s((l_62[2][6] = ((0x6FL < l_62[2][6]) | 0x0A0DL)), ((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 16))((safe_mul_func_uint16_t_u_u(p_1254->g_comm_values[p_1254->tid], 65532UL)), ((VECTOR(int8_t, 4))(0x77L)), ((VECTOR(int8_t, 8))(0x30L)), p_36, 1L, 1L)), (int8_t)4L, (int8_t)p_1254->g_49.sb))).sb)))), p_36, p_1254), p_1254->g_49.sa, p_36, p_1254);
    if (l_58)
    { /* block id: 138 */
        uint32_t l_354 = 0x1C3A4AA9L;
        for (p_1254->g_226.f1 = (-13); (p_1254->g_226.f1 < (-16)); --p_1254->g_226.f1)
        { /* block id: 141 */
            int32_t *l_352[7] = {&l_58,&l_58,&l_58,&l_58,&l_58,&l_58,&l_58};
            int i;
            for (p_1254->g_48 = 0; (p_1254->g_48 >= 55); p_1254->g_48 = safe_add_func_int16_t_s_s(p_1254->g_48, 3))
            { /* block id: 144 */
                int32_t *l_353[5][6][5] = {{{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59}},{{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59}},{{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59}},{{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59}},{{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59},{(void*)0,&l_58,(void*)0,(void*)0,&l_59}}};
                int i, j, k;
                l_353[0][1][4] = l_352[1];
            }
            return l_354;
        }
        if ((atomic_inc(&p_1254->g_atomic_input[98 * get_linear_group_id() + 70]) == 7))
        { /* block id: 150 */
            uint32_t l_355[10] = {0xEFB62527L,1UL,1UL,1UL,0xEFB62527L,0xEFB62527L,1UL,1UL,1UL,0xEFB62527L};
            VECTOR(int8_t, 4) l_358 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x30L), 0x30L);
            uint32_t l_359 = 1UL;
            int i;
            l_355[7]++;
            if ((l_358.w , l_359))
            { /* block id: 152 */
                uint32_t l_360 = 0xDE54534AL;
                l_360--;
            }
            else
            { /* block id: 154 */
                int32_t l_364[6] = {0x794967EFL,0x794967EFL,0x794967EFL,0x794967EFL,0x794967EFL,0x794967EFL};
                int32_t *l_363 = &l_364[1];
                int32_t *l_365 = &l_364[1];
                int32_t *l_366 = &l_364[4];
                int32_t **l_369[9] = {&l_363,&l_365,&l_363,&l_363,&l_365,&l_363,&l_363,&l_365,&l_363};
                int32_t **l_370 = (void*)0;
                int32_t **l_371 = &l_366;
                int32_t *l_372 = &l_364[1];
                int32_t *l_373 = (void*)0;
                int32_t *l_374 = (void*)0;
                int i;
                l_366 = (l_365 = (((VECTOR(int64_t, 2))(3L, (-1L))).hi , l_363));
                l_371 = ((l_355[3]--) , (l_370 = l_369[8]));
                l_374 = (l_373 = l_372);
            }
            unsigned int result = 0;
            int l_355_i0;
            for (l_355_i0 = 0; l_355_i0 < 10; l_355_i0++) {
                result += l_355[l_355_i0];
            }
            result += l_358.w;
            result += l_358.z;
            result += l_358.y;
            result += l_358.x;
            result += l_359;
            atomic_add(&p_1254->g_special_values[98 * get_linear_group_id() + 70], result);
        }
        else
        { /* block id: 163 */
            (1 + 1);
        }
    }
    else
    { /* block id: 166 */
        int8_t l_377[10] = {0x2CL,0L,0x00L,0L,0x2CL,0x2CL,0L,0x00L,0L,0x2CL};
        int i;
        for (p_1254->g_238.f3.f0 = (-5); (p_1254->g_238.f3.f0 == (-16)); p_1254->g_238.f3.f0 = safe_sub_func_int32_t_s_s(p_1254->g_238.f3.f0, 7))
        { /* block id: 169 */
            (*l_347) = (*p_1254->g_317);
            l_377[5] ^= ((*p_1254->g_28) &= ((VECTOR(int32_t, 2))(0x0ECBADB9L, (-1L))).odd);
        }
    }
    if ((atomic_inc(&p_1254->l_atomic_input[89]) == 6))
    { /* block id: 176 */
        int16_t l_378 = 0L;
        uint8_t l_379 = 246UL;
        int8_t l_380 = (-3L);
        l_380 &= (l_379 = l_378);
        for (l_378 = (-22); (l_378 == 21); l_378 = safe_add_func_uint32_t_u_u(l_378, 4))
        { /* block id: 181 */
            int32_t l_383 = (-9L);
            VECTOR(uint64_t, 8) l_403 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 7UL), 7UL), 7UL, 1UL, 7UL);
            int32_t l_404 = 0x72FCCFF0L;
            uint8_t l_405 = 0x6BL;
            int32_t l_406 = 1L;
            int32_t l_407 = 6L;
            VECTOR(int32_t, 8) l_408 = (VECTOR(int32_t, 8))(0x27618F35L, (VECTOR(int32_t, 4))(0x27618F35L, (VECTOR(int32_t, 2))(0x27618F35L, (-1L)), (-1L)), (-1L), 0x27618F35L, (-1L));
            uint64_t l_409[10][10] = {{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL},{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL},{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL},{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL},{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL},{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL},{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL},{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL},{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL},{1UL,0x6D07593F388E80A6L,18446744073709551607UL,1UL,18446744073709551608UL,18446744073709551607UL,18446744073709551607UL,18446744073709551608UL,1UL,18446744073709551607UL}};
            VECTOR(int32_t, 16) l_410 = (VECTOR(int32_t, 16))(0x1E70F5A6L, (VECTOR(int32_t, 4))(0x1E70F5A6L, (VECTOR(int32_t, 2))(0x1E70F5A6L, (-1L)), (-1L)), (-1L), 0x1E70F5A6L, (-1L), (VECTOR(int32_t, 2))(0x1E70F5A6L, (-1L)), (VECTOR(int32_t, 2))(0x1E70F5A6L, (-1L)), 0x1E70F5A6L, (-1L), 0x1E70F5A6L, (-1L));
            VECTOR(int32_t, 2) l_411 = (VECTOR(int32_t, 2))((-4L), 0x3CFCFAB1L);
            int64_t l_412 = (-1L);
            VECTOR(int32_t, 2) l_413 = (VECTOR(int32_t, 2))(3L, 0x327602ACL);
            VECTOR(int32_t, 8) l_414 = (VECTOR(int32_t, 8))(0x3C842F62L, (VECTOR(int32_t, 4))(0x3C842F62L, (VECTOR(int32_t, 2))(0x3C842F62L, 0x56498523L), 0x56498523L), 0x56498523L, 0x3C842F62L, 0x56498523L);
            VECTOR(int32_t, 2) l_415 = (VECTOR(int32_t, 2))((-1L), 0x2813B4BEL);
            VECTOR(int32_t, 8) l_416 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x168A3CB5L), 0x168A3CB5L), 0x168A3CB5L, 5L, 0x168A3CB5L);
            int32_t l_417 = 8L;
            VECTOR(int32_t, 8) l_418 = (VECTOR(int32_t, 8))(0x53A0E3ADL, (VECTOR(int32_t, 4))(0x53A0E3ADL, (VECTOR(int32_t, 2))(0x53A0E3ADL, (-1L)), (-1L)), (-1L), 0x53A0E3ADL, (-1L));
            int32_t *l_467 = (void*)0;
            int i, j;
            for (l_383 = 0; (l_383 == (-18)); l_383--)
            { /* block id: 184 */
                int32_t l_386 = 1L;
                uint16_t l_398 = 65527UL;
                uint32_t l_399 = 0UL;
                uint32_t l_400 = 0xD18A18D5L;
                for (l_386 = (-30); (l_386 == 3); l_386 = safe_add_func_uint8_t_u_u(l_386, 1))
                { /* block id: 187 */
                    int32_t l_390 = 4L;
                    int32_t *l_389 = &l_390;
                    int32_t *l_391 = &l_390;
                    int32_t *l_392 = &l_390;
                    uint64_t l_393 = 1UL;
                    uint64_t l_396 = 0xDE0F3F6539726885L;
                    int64_t l_397[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_397[i] = (-1L);
                    l_392 = (l_391 = l_389);
                    l_393--;
                    l_397[1] ^= l_396;
                }
                l_399 = l_398;
                l_400++;
            }
            if ((((VECTOR(uint64_t, 4))(l_403.s2723)).y , ((l_404 &= 0x5B2EA5CCF06F8918L) , ((VECTOR(int32_t, 16))(l_405, 0x75ABCADEL, ((VECTOR(int32_t, 2))(1L, 0L)), 0x2114D73DL, l_406, ((VECTOR(int32_t, 8))(0x1544BC81L, l_407, (l_409[8][4] &= ((VECTOR(int32_t, 8))(l_408.s74501672)).s0), ((VECTOR(int32_t, 2))(3L, 0x5B749AE1L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 16))(l_410.s8a5500e37b86ac15)).hi, ((VECTOR(int32_t, 4))(1L, 0x700C3F3DL, 0x3690B354L, 0x59C34C96L)).zwyyyxxx, ((VECTOR(int32_t, 16))(l_411.xyxyxxxxyyxxxxxy)).hi))), ((VECTOR(int32_t, 8))((l_412 |= (-1L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_413.xxxyyxyy)), ((VECTOR(int32_t, 8))(l_414.s43024413)), ((VECTOR(int32_t, 2))(l_415.yy)).yxxxyyyx))).s51)), 0x26162FA0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_416.s6653)), l_417, ((VECTOR(int32_t, 4))(l_418.s6210)), 1L, (-8L), 0x6449D265L, 0x7FC2D330L, 0x6B65BF17L, 0x00899438L, 0x66FE1C57L)))).s57)), 0L, 0x59F0471CL))))).s30)), 0x0BA22E45L)), 0x12ABD3FDL, 0x5C3A6399L)).s4)))
            { /* block id: 199 */
                int8_t l_419 = 0L;
                uint32_t l_420 = 4294967289UL;
                struct S0 l_421 = {-1L,0L,0x3C9A607AL,0L,0x3C7F4FB8F7673C76L,0x90130198BB20C371L,0x6E4435F6L,0xB0L,6L};/* VOLATILE GLOBAL l_421 */
                struct S0 l_422 = {-7L,0L,1UL,-1L,0xF58ACEE184CC509CL,0x65A285A87CB39303L,0x595C9A93L,0xDEL,-6L};/* VOLATILE GLOBAL l_422 */
                struct S0 l_423 = {8L,1L,0x3D5467F3L,-1L,0x2B0D896D9F8EAEBAL,0xA833647FE1232D19L,4UL,0xB4L,-10L};/* VOLATILE GLOBAL l_423 */
                int8_t l_424 = 0x53L;
                int16_t l_425 = 0x2154L;
                uint16_t l_426 = 0x7CD8L;
                VECTOR(int8_t, 8) l_427 = (VECTOR(int8_t, 8))(0x4EL, (VECTOR(int8_t, 4))(0x4EL, (VECTOR(int8_t, 2))(0x4EL, (-2L)), (-2L)), (-2L), 0x4EL, (-2L));
                uint64_t l_428[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_428[i] = 0UL;
                l_423 = (((l_420 |= (l_419 = 0x7817A4A9L)) , l_421) , l_422);
                l_426 &= ((l_425 |= l_424) , 0x5BEC9AC9L);
                if ((l_411.x ^= (((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(0x55L, (-8L))), ((VECTOR(int8_t, 8))(l_427.s04075055)).s07))).even , l_428[1])))
                { /* block id: 206 */
                    uint8_t *l_430 = (void*)0;
                    uint8_t **l_429 = &l_430;
                    uint8_t **l_431[5][3][2] = {{{&l_430,&l_430},{&l_430,&l_430},{&l_430,&l_430}},{{&l_430,&l_430},{&l_430,&l_430},{&l_430,&l_430}},{{&l_430,&l_430},{&l_430,&l_430},{&l_430,&l_430}},{{&l_430,&l_430},{&l_430,&l_430},{&l_430,&l_430}},{{&l_430,&l_430},{&l_430,&l_430},{&l_430,&l_430}}};
                    uint16_t l_432 = 65526UL;
                    union U1 l_445[3] = {{0x50789F4DL},{0x50789F4DL},{0x50789F4DL}};
                    union U1 *l_444 = &l_445[2];
                    union U1 *l_446 = &l_445[2];
                    int i, j, k;
                    l_431[2][1][1] = l_429;
                    ++l_432;
                    for (l_432 = 0; (l_432 != 27); l_432 = safe_add_func_uint16_t_u_u(l_432, 2))
                    { /* block id: 211 */
                        uint32_t l_437 = 4UL;
                        uint32_t l_440 = 0UL;
                        int32_t l_442 = 1L;
                        int32_t *l_441 = &l_442;
                        int32_t *l_443 = &l_442;
                        l_437++;
                        l_423.f3 &= l_440;
                        l_443 = l_441;
                    }
                    l_446 = l_444;
                }
                else
                { /* block id: 217 */
                    int32_t l_447 = 0x16B6253FL;
                    for (l_447 = 0; (l_447 >= (-28)); --l_447)
                    { /* block id: 220 */
                        int64_t l_450 = 0L;
                        int32_t l_452 = (-5L);
                        int32_t *l_451 = &l_452;
                        int32_t *l_453 = (void*)0;
                        int32_t *l_454[2][5][9] = {{{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452}},{{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,(void*)0,(void*)0,(void*)0,&l_452}}};
                        int i, j, k;
                        l_418.s4 |= l_450;
                        l_454[0][0][8] = (l_453 = l_451);
                    }
                }
            }
            else
            { /* block id: 226 */
                int32_t l_455 = 0x1E88674AL;
                int32_t *l_465 = &l_455;
                uint32_t l_466 = 2UL;
                for (l_455 = 7; (l_455 > (-17)); l_455 = safe_sub_func_uint64_t_u_u(l_455, 6))
                { /* block id: 229 */
                    union U2 l_458[10] = {{0xF309L},{0xA3D7L},{0x2F01L},{0xA3D7L},{0xF309L},{0xF309L},{0xA3D7L},{0x2F01L},{0xA3D7L},{0xF309L}};
                    VECTOR(int32_t, 2) l_459 = (VECTOR(int32_t, 2))(0x798BB139L, 6L);
                    uint64_t l_460[3];
                    uint16_t l_461 = 1UL;
                    uint32_t l_462 = 9UL;
                    uint32_t l_463[5][10] = {{0x8F059976L,0x30EED070L,4294967290UL,0UL,0x30EED070L,0UL,4294967290UL,0x30EED070L,0x8F059976L,0x8F059976L},{0x8F059976L,0x30EED070L,4294967290UL,0UL,0x30EED070L,0UL,4294967290UL,0x30EED070L,0x8F059976L,0x8F059976L},{0x8F059976L,0x30EED070L,4294967290UL,0UL,0x30EED070L,0UL,4294967290UL,0x30EED070L,0x8F059976L,0x8F059976L},{0x8F059976L,0x30EED070L,4294967290UL,0UL,0x30EED070L,0UL,4294967290UL,0x30EED070L,0x8F059976L,0x8F059976L},{0x8F059976L,0x30EED070L,4294967290UL,0UL,0x30EED070L,0UL,4294967290UL,0x30EED070L,0x8F059976L,0x8F059976L}};
                    int64_t l_464[5][6][4] = {{{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L}},{{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L}},{{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L}},{{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L}},{{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L},{0x28B8791A8EF8E600L,(-6L),(-6L),0x28B8791A8EF8E600L}}};
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_460[i] = 0xCDE0D88B2AFB2BD3L;
                    l_415.y = ((l_458[2] , l_459.y) , (l_411.y |= l_460[0]));
                    l_418.s5 = (l_461 , l_462);
                    l_414.s6 = 0x6DBB8EB9L;
                    l_464[4][1][0] |= (l_408.s5 = l_463[3][7]);
                }
                l_465 = (void*)0;
                l_416.s2 = l_466;
            }
            l_467 = l_467;
        }
        unsigned int result = 0;
        result += l_378;
        result += l_379;
        result += l_380;
        atomic_add(&p_1254->l_special_values[89], result);
    }
    else
    { /* block id: 242 */
        (1 + 1);
    }
    return l_62[2][6];
}


/* ------------------------------------------ */
/* 
 * reads : p_1254->g_150 p_1254->g_88.f3 p_1254->g_157 p_1254->g_comm_values p_1254->g_184 p_1254->g_185 p_1254->g_128.f6 p_1254->g_127 p_1254->g_49 p_1254->g_28 p_1254->g_29 p_1254->g_158 p_1254->g_48 p_1254->g_226 p_1254->g_238 p_1254->g_246 p_1254->g_181 p_1254->g_123 p_1254->g_249 p_1254->g_238.f3.f2 p_1254->g_278 p_1254->g_316 p_1254->g_317 p_1254->g_324 p_1254->g_345
 * writes: p_1254->g_151 p_1254->g_88.f3 p_1254->g_48 p_1254->g_158 p_1254->g_115 p_1254->g_29 p_1254->g_128 p_1254->g_246 p_1254->g_226.f4 p_1254->g_157 p_1254->g_226.f1 p_1254->g_257 p_1254->g_238.f3.f7 p_1254->g_238.f3.f2 p_1254->g_249.f4 p_1254->g_249.f5 p_1254->g_249.f8
 */
struct S0  func_37(int32_t * p_38, uint32_t  p_39, uint64_t  p_40, struct S4 * p_1254)
{ /* block id: 44 */
    uint32_t *l_149 = (void*)0;
    uint32_t **l_148 = &l_149;
    VECTOR(uint32_t, 4) l_175 = (VECTOR(uint32_t, 4))(0x5B91FC28L, (VECTOR(uint32_t, 2))(0x5B91FC28L, 0xEC44A5C8L), 0xEC44A5C8L);
    uint32_t l_182 = 0x08C1B6F5L;
    int32_t l_191 = 7L;
    VECTOR(int32_t, 8) l_197 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x270069E6L), 0x270069E6L), 0x270069E6L, 0L, 0x270069E6L);
    uint8_t l_204 = 0UL;
    uint32_t l_221 = 0x02A27E15L;
    VECTOR(uint64_t, 16) l_304 = (VECTOR(uint64_t, 16))(0xB8265AA5542373D3L, (VECTOR(uint64_t, 4))(0xB8265AA5542373D3L, (VECTOR(uint64_t, 2))(0xB8265AA5542373D3L, 0x14C03FEAD032E2A2L), 0x14C03FEAD032E2A2L), 0x14C03FEAD032E2A2L, 0xB8265AA5542373D3L, 0x14C03FEAD032E2A2L, (VECTOR(uint64_t, 2))(0xB8265AA5542373D3L, 0x14C03FEAD032E2A2L), (VECTOR(uint64_t, 2))(0xB8265AA5542373D3L, 0x14C03FEAD032E2A2L), 0xB8265AA5542373D3L, 0x14C03FEAD032E2A2L, 0xB8265AA5542373D3L, 0x14C03FEAD032E2A2L);
    int8_t l_310 = 0x13L;
    int64_t l_327 = (-3L);
    VECTOR(int32_t, 4) l_344 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x4F424DB9L), 0x4F424DB9L);
    int i;
    (*p_1254->g_150) = l_148;
    for (p_1254->g_88.f3 = 0; (p_1254->g_88.f3 >= (-23)); p_1254->g_88.f3--)
    { /* block id: 48 */
        uint8_t l_167 = 0xC9L;
        VECTOR(int16_t, 2) l_174 = (VECTOR(int16_t, 2))(0x65EAL, 0x092AL);
        int32_t l_193 = 3L;
        int32_t l_198 = (-9L);
        int32_t l_199 = 0x3A7BC0B3L;
        int32_t l_200 = 0x7B7E5595L;
        int32_t l_201 = 0L;
        int32_t l_202 = 0x4C00055AL;
        int32_t l_203 = 0x1E87C2F6L;
        uint32_t ***l_262[4][2][9] = {{{&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148,&p_1254->g_151,(void*)0,&l_148,&l_148},{&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148,&p_1254->g_151,(void*)0,&l_148,&l_148}},{{&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148,&p_1254->g_151,(void*)0,&l_148,&l_148},{&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148,&p_1254->g_151,(void*)0,&l_148,&l_148}},{{&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148,&p_1254->g_151,(void*)0,&l_148,&l_148},{&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148,&p_1254->g_151,(void*)0,&l_148,&l_148}},{{&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148,&p_1254->g_151,(void*)0,&l_148,&l_148},{&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148,&p_1254->g_151,(void*)0,&l_148,&l_148}}};
        uint32_t ***l_293 = (void*)0;
        VECTOR(uint64_t, 2) l_311 = (VECTOR(uint64_t, 2))(1UL, 4UL);
        int i, j, k;
        for (p_1254->g_48 = 0; (p_1254->g_48 > 10); p_1254->g_48 = safe_add_func_int64_t_s_s(p_1254->g_48, 6))
        { /* block id: 51 */
            VECTOR(int16_t, 2) l_172 = (VECTOR(int16_t, 2))((-3L), 1L);
            VECTOR(int16_t, 16) l_173 = (VECTOR(int16_t, 16))(0x0480L, (VECTOR(int16_t, 4))(0x0480L, (VECTOR(int16_t, 2))(0x0480L, 0L), 0L), 0L, 0x0480L, 0L, (VECTOR(int16_t, 2))(0x0480L, 0L), (VECTOR(int16_t, 2))(0x0480L, 0L), 0x0480L, 0L, 0x0480L, 0L);
            int16_t *l_180[8][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int32_t l_183 = 0x5BC6972FL;
            int i, j, k;
            p_1254->g_158 = p_1254->g_157;
            l_183 = (safe_add_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 4))(0L, 1L, 0x01F7L, 0x2D2BL)).odd, ((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(0x1DL, (safe_sub_func_uint16_t_u_u((p_1254->g_123.f3 | ((p_1254->g_181 &= (((((!p_1254->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1254->tid, 2))]) <= (safe_mod_func_int32_t_s_s(0x7F4A1F30L, l_167))) || p_1254->g_29) == p_1254->g_113) != ((safe_sub_func_int8_t_s_s((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_172.yyxxxyxyxyyxyxyy)).s31)).yyxxyyyy, ((VECTOR(int16_t, 8))(l_173.sa6d3bb09)), ((VECTOR(int16_t, 8))(l_174.xxxxxxyx))))).s5627712653153671)).sd ^ ((-7L) == ((((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_175.wwzw)).lo)).yxxy, ((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 8))(0xD8BCE761L, 0x1F5B546AL, (safe_mod_func_int64_t_s_s((((safe_sub_func_int32_t_s_s((FAKE_DIVERGE(p_1254->local_1_offset, get_local_id(1), 10) , (0x5958L ^ p_40)), l_167)) || 0xB9E58762193DFA98L) | 9UL), 0x1EFD839D0093E75EL)), ((VECTOR(uint32_t, 2))(4UL)), ((VECTOR(uint32_t, 2))(0xD5845017L)), 0x15EA6D58L)).lo, ((VECTOR(uint32_t, 4))(6UL)), ((VECTOR(uint32_t, 4))(0xEA14511DL)))))))).x , FAKE_DIVERGE(p_1254->group_0_offset, get_group_id(0), 10)) , p_1254->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1254->tid, 2))]))), 249UL)) >= p_1254->g_49.s2))) || 1L)), l_173.sf)), 0x23L, 0x70L)).yzzxwyzw))).s72, ((VECTOR(uint8_t, 2))(0xDDL))))).yxyyyyyxyxyxxxxy, ((VECTOR(int16_t, 16))(0x4B88L))))).sda))), p_1254->g_123.f2, 2L, ((VECTOR(int16_t, 4))(0x05FDL)), l_173.s8, 0x32CAL, 0x6F6BL, 7L, 0L, l_182, 1L, 1L)).s87, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))(0x4063L))))).yxyxyxyxxxyxyxyy, ((VECTOR(int16_t, 16))(0x07FAL))))).s2, 12)), p_1254->g_comm_values[p_1254->tid]));
            (*p_1254->g_185) = (p_1254->g_184 , p_38);
        }
        for (p_39 = 0; (p_39 != 20); p_39 = safe_add_func_uint8_t_u_u(p_39, 1))
        { /* block id: 59 */
            int32_t **l_190 = &p_1254->g_115;
            int64_t l_192 = 0x0473E9E374AD17EFL;
            int32_t *l_194 = &p_1254->g_29;
            int32_t *l_195 = (void*)0;
            int32_t *l_196[3];
            int i;
            for (i = 0; i < 3; i++)
                l_196[i] = &l_191;
            (*p_1254->g_28) &= (safe_add_func_uint64_t_u_u((p_40 <= p_1254->g_128.f6), (p_1254->g_127 != p_1254->g_49.sd)));
            (*l_190) = (void*)0;
            l_204--;
        }
        for (l_191 = 0; (l_191 > 10); ++l_191)
        { /* block id: 66 */
            if (l_182)
                break;
            p_1254->g_128 = p_1254->g_158;
        }
        for (p_1254->g_48 = 19; (p_1254->g_48 < 14); --p_1254->g_48)
        { /* block id: 72 */
            uint32_t l_211 = 1UL;
            int32_t l_218 = 7L;
            int32_t l_219 = 0x0869CC9FL;
            int32_t l_220 = 0L;
            VECTOR(int32_t, 2) l_227 = (VECTOR(int32_t, 2))(0x19AB779BL, 0x2552F691L);
            uint8_t *l_232 = &p_1254->g_48;
            uint32_t ***l_294 = &p_1254->g_151;
            int i;
            (*p_1254->g_28) = l_211;
            for (l_167 = 0; (l_167 <= 54); ++l_167)
            { /* block id: 76 */
                int32_t *l_214 = &l_202;
                int32_t *l_215 = &l_201;
                int32_t *l_216 = (void*)0;
                int32_t *l_217[9][10][2] = {{{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193}},{{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193}},{{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193}},{{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193}},{{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193}},{{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193}},{{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193}},{{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193}},{{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193},{&l_193,&l_193}}};
                int16_t l_254 = 0x6DEFL;
                uint32_t ***l_270 = &p_1254->g_151;
                uint32_t ****l_269 = &l_270;
                int i, j, k;
                ++l_221;
                for (l_218 = 0; (l_218 <= (-24)); l_218--)
                { /* block id: 80 */
                    return p_1254->g_226;
                }
                if (((VECTOR(int32_t, 4))(l_227.yyyx)).y)
                { /* block id: 83 */
                    int32_t **l_234 = &l_217[8][8][0];
                    int32_t ***l_233 = &l_234;
                    int8_t l_235 = 0x49L;
                    uint16_t *l_245 = &p_1254->g_246;
                    uint64_t *l_247 = &p_1254->g_226.f4;
                    uint32_t ***l_260[5][10] = {{&p_1254->g_151,(void*)0,&l_148,&l_148,(void*)0,&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148},{&p_1254->g_151,(void*)0,&l_148,&l_148,(void*)0,&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148},{&p_1254->g_151,(void*)0,&l_148,&l_148,(void*)0,&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148},{&p_1254->g_151,(void*)0,&l_148,&l_148,(void*)0,&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148},{&p_1254->g_151,(void*)0,&l_148,&l_148,(void*)0,&l_148,&l_148,(void*)0,&p_1254->g_151,&l_148}};
                    int i, j;
                    l_235 = (p_39 == (((void*)0 == l_232) <= (&p_1254->g_28 != ((*l_233) = &l_216))));
                    if (((safe_lshift_func_int8_t_s_s((p_1254->g_238 , ((((*l_214) = ((p_40 != (safe_div_func_int64_t_s_s((p_1254->g_158.f2 >= (((*l_247) = (0x5AEDL > (safe_rshift_func_uint8_t_u_s(255UL, (safe_mul_func_uint16_t_u_u(((*l_245) ^= p_1254->g_29), 0L)))))) , p_40)), (-4L)))) , (*l_215))) & p_1254->g_181) , p_1254->g_246)), 0)) != 0x9F43FD421B84FCDDL))
                    { /* block id: 89 */
                        volatile struct S0 *l_248 = &p_1254->g_157;
                        (*l_248) = p_1254->g_123;
                    }
                    else
                    { /* block id: 91 */
                        return p_1254->g_249;
                    }
                    for (p_1254->g_226.f1 = 0; (p_1254->g_226.f1 != (-6)); p_1254->g_226.f1 = safe_sub_func_uint32_t_u_u(p_1254->g_226.f1, 2))
                    { /* block id: 96 */
                        uint32_t *l_255 = (void*)0;
                        uint32_t *l_256[2][5] = {{&l_221,&l_221,&l_221,&l_221,&l_221},{&l_221,&l_221,&l_221,&l_221,&l_221}};
                        uint32_t ****l_261 = (void*)0;
                        int32_t l_271 = 0x6566AD81L;
                        uint8_t *l_272 = &p_1254->g_238.f3.f7;
                        int i, j;
                        (*p_1254->g_28) &= (p_1254->g_158.f3 != (((safe_add_func_int64_t_s_s((p_39 ^ ((p_1254->g_257 = l_254) , (!p_39))), (safe_rshift_func_uint16_t_u_u(((!5L) != (l_260[4][8] != (l_262[1][0][7] = &l_148))), (safe_mul_func_uint8_t_u_u(((*l_272) = (safe_rshift_func_int8_t_s_s((((safe_mod_func_uint32_t_u_u(((void*)0 != l_269), l_271)) & l_271) > 0x35D1E971L), l_182))), p_1254->g_226.f4)))))) > 0x1FL) , p_39));
                    }
                }
                else
                { /* block id: 102 */
                    uint32_t l_273 = 0xAAEB1A12L;
                    (*p_1254->g_28) |= l_191;
                    ++l_273;
                }
                for (p_1254->g_238.f3.f2 = 0; (p_1254->g_238.f3.f2 < 1); p_1254->g_238.f3.f2 = safe_add_func_int8_t_s_s(p_1254->g_238.f3.f2, 1))
                { /* block id: 108 */
                    uint64_t l_297 = 0xF4274A601570E2E7L;
                    uint64_t *l_305 = &p_1254->g_249.f4;
                    uint32_t ***l_308 = &l_148;
                    int8_t *l_309 = (void*)0;
                    uint64_t *l_312 = &p_1254->g_249.f5;
                    int64_t *l_313 = (void*)0;
                    int64_t *l_314 = &p_1254->g_226.f1;
                    int16_t *l_315 = &p_1254->g_249.f8;
                    (*p_1254->g_278) = p_1254->g_158;
                    (*l_214) &= ((safe_mul_func_uint8_t_u_u((((*l_315) |= (safe_sub_func_int64_t_s_s(((*l_314) = ((((safe_add_func_uint16_t_u_u(((((p_1254->g_226.f4 = ((*l_312) = (l_175.z == (safe_sub_func_int16_t_s_s(((safe_sub_func_int64_t_s_s((+p_1254->g_157.f8), (safe_sub_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((l_293 != l_294) > ((safe_div_func_uint64_t_u_u(p_39, l_297)) , (safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((l_220 &= ((safe_sub_func_uint64_t_u_u(((*l_305) = ((VECTOR(uint64_t, 16))(l_304.se359c76478585a0b)).s3), l_182)) != (safe_sub_func_int16_t_s_s(((void*)0 != l_308), l_174.y)))) & 7L) & p_1254->g_226.f2), 0xE4L)), 0UL)))), GROUP_DIVERGE(0, 1))), l_310)))) && l_227.y), l_311.x))))) & p_40) == 254UL) >= (*p_1254->g_28)), FAKE_DIVERGE(p_1254->local_0_offset, get_local_id(0), 10))) && GROUP_DIVERGE(0, 1)) != 0x2761FFCBL) ^ 1UL)), l_197.s2))) == p_40), p_40)) || l_227.y);
                    (*p_1254->g_317) = (FAKE_DIVERGE(p_1254->global_1_offset, get_global_id(1), 10) , (p_1254->g_238 , p_1254->g_316));
                    for (l_199 = 0; (l_199 > (-11)); l_199 = safe_sub_func_int8_t_s_s(l_199, 3))
                    { /* block id: 120 */
                        (*l_214) |= p_39;
                    }
                }
            }
            (*p_1254->g_28) |= (safe_mul_func_uint32_t_u_u(p_40, (l_193 > (7L >= (safe_mod_func_uint32_t_u_u(0xAFF6640FL, l_202))))));
        }
    }
    if ((l_191 = 1L))
    { /* block id: 129 */
        int8_t l_325 = 1L;
        int32_t *l_326 = (void*)0;
        int32_t *l_328 = &p_1254->g_29;
        int32_t *l_329 = &l_191;
        int32_t *l_330 = (void*)0;
        int32_t *l_331 = &l_191;
        int32_t *l_332 = &p_1254->g_29;
        int32_t l_333[7];
        int32_t *l_334 = &l_333[5];
        int32_t *l_335 = &p_1254->g_29;
        int32_t *l_336 = &l_333[4];
        int32_t *l_337 = &l_333[5];
        int32_t *l_338 = &l_333[2];
        int32_t *l_339[3];
        uint16_t l_340[7];
        int i;
        for (i = 0; i < 7; i++)
            l_333[i] = 5L;
        for (i = 0; i < 3; i++)
            l_339[i] = (void*)0;
        for (i = 0; i < 7; i++)
            l_340[i] = 0x2184L;
        (*p_1254->g_324) = p_38;
        l_340[2]--;
    }
    else
    { /* block id: 132 */
        int32_t **l_343 = &p_1254->g_115;
        (*l_343) = (void*)0;
        (*p_1254->g_28) ^= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_344.yyxyxzzzzxxywwyy)).s3f99)))))).x;
    }
    return p_1254->g_345[9];
}


/* ------------------------------------------ */
/* 
 * reads : p_1254->l_comm_values p_1254->g_79 p_1254->g_80 p_1254->g_28 p_1254->g_88 p_1254->g_comm_values p_1254->g_49 p_1254->g_100 p_1254->g_48 p_1254->g_113 p_1254->g_117 p_1254->g_123 p_1254->g_128 p_1254->g_131 p_1254->g_29
 * writes: p_1254->g_29 p_1254->g_88.f2 p_1254->g_113 p_1254->g_115 p_1254->g_127 p_1254->g_123
 */
int32_t * func_41(uint64_t  p_42, uint8_t * p_43, uint8_t * p_44, uint32_t  p_45, int64_t  p_46, struct S4 * p_1254)
{ /* block id: 12 */
    VECTOR(int32_t, 8) l_67 = (VECTOR(int32_t, 8))(0x1DE470D1L, (VECTOR(int32_t, 4))(0x1DE470D1L, (VECTOR(int32_t, 2))(0x1DE470D1L, (-8L)), (-8L)), (-8L), 0x1DE470D1L, (-8L));
    VECTOR(int32_t, 8) l_68 = (VECTOR(int32_t, 8))(0x20838156L, (VECTOR(int32_t, 4))(0x20838156L, (VECTOR(int32_t, 2))(0x20838156L, (-1L)), (-1L)), (-1L), 0x20838156L, (-1L));
    VECTOR(int16_t, 16) l_73 = (VECTOR(int16_t, 16))(0x4FA7L, (VECTOR(int16_t, 4))(0x4FA7L, (VECTOR(int16_t, 2))(0x4FA7L, (-1L)), (-1L)), (-1L), 0x4FA7L, (-1L), (VECTOR(int16_t, 2))(0x4FA7L, (-1L)), (VECTOR(int16_t, 2))(0x4FA7L, (-1L)), 0x4FA7L, (-1L), 0x4FA7L, (-1L));
    VECTOR(int16_t, 2) l_78 = (VECTOR(int16_t, 2))((-9L), (-6L));
    VECTOR(int16_t, 2) l_81 = (VECTOR(int16_t, 2))(5L, 0x407AL);
    uint32_t l_95 = 4294967295UL;
    int64_t *l_96 = &p_1254->g_88.f2;
    VECTOR(uint8_t, 16) l_99 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x6DL), 0x6DL), 0x6DL, 1UL, 0x6DL, (VECTOR(uint8_t, 2))(1UL, 0x6DL), (VECTOR(uint8_t, 2))(1UL, 0x6DL), 1UL, 0x6DL, 1UL, 0x6DL);
    VECTOR(uint16_t, 2) l_102 = (VECTOR(uint16_t, 2))(0xDFF9L, 0UL);
    uint8_t *l_105 = (void*)0;
    uint16_t l_120[10][2][4] = {{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}},{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}},{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}},{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}},{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}},{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}},{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}},{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}},{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}},{{0x63F1L,6UL,0x63F1L,0x63F1L},{0x63F1L,6UL,0x63F1L,0x63F1L}}};
    int32_t *l_132[3];
    uint32_t *l_140 = &p_1254->g_127;
    uint32_t *l_142 = &p_1254->g_127;
    uint32_t **l_141[3][1][4] = {{{&l_142,&l_142,&l_142,&l_142}},{{&l_142,&l_142,&l_142,&l_142}},{{&l_142,&l_142,&l_142,&l_142}}};
    uint32_t *l_143 = &p_1254->g_127;
    int64_t l_144[4];
    uint8_t l_145 = 5UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_132[i] = (void*)0;
    for (i = 0; i < 4; i++)
        l_144[i] = 0x6D74FDE4B572696FL;
    if (((((safe_add_func_uint32_t_u_u((p_45 == p_1254->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1254->tid, 2))]), ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_67.s74046227)).s24, ((VECTOR(int32_t, 2))(l_68.s62))))).even)) == (safe_div_func_int32_t_s_s((((+(safe_rshift_func_int8_t_s_s((((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 16))(l_73.s946680ae02f11925)), ((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x72E4L, 0x0E2CL)).yxyxxyyxyyyxyyxx)).sca, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((-1L), ((VECTOR(int16_t, 2))(0x61F3L, 0x1E3FL)).even, (-1L), 6L, ((safe_div_func_uint8_t_u_u(0x00L, l_67.s5)) | (0x7D996F0491844C38L > p_1254->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1254->tid, 2))])), 0x7EA8L, 0x1EDDL, (-3L))).s23)).xxyyxyxxxyyxyyyy, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_78.yx)).xyyxyyyxyyyxyxyy)).odd, ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1254->g_79.s51)), 0x7F38L, 0x47D5L)), ((VECTOR(int16_t, 2))(0x204BL, (-1L))).xyxy, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(p_1254->g_80.xwwxxyxw)))).lo))).wyyzxxyx))).s07)).xxxyyxxyyxyxxyyx))))).lo)).s41, ((VECTOR(int16_t, 4))(l_81.xyyx)).hi))).yyyyxxyxyxxyxxyx))).s2 || (((*p_1254->g_28) = l_68.s2) < (safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(((p_1254->g_88 , ((safe_rshift_func_int8_t_s_u((safe_add_func_int32_t_s_s((((*l_96) = ((safe_mul_func_int8_t_s_s((l_95 & p_1254->g_79.s0), 0x9CL)) != p_1254->g_comm_values[p_1254->tid])) > 6L), l_68.s7)), l_73.sc)) != p_1254->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1254->tid, 2))])) && p_45), p_1254->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1254->tid, 2))])), p_1254->g_49.s0)), 0x8A3CL)))), p_1254->g_49.s0))) & l_81.y) , p_46), p_42))) >= p_46) , l_81.y))
    { /* block id: 15 */
        VECTOR(uint8_t, 2) l_101 = (VECTOR(uint8_t, 2))(0xDFL, 0x05L);
        VECTOR(uint16_t, 16) l_103 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x6C24L), 0x6C24L), 0x6C24L, 1UL, 0x6C24L, (VECTOR(uint16_t, 2))(1UL, 0x6C24L), (VECTOR(uint16_t, 2))(1UL, 0x6C24L), 1UL, 0x6C24L, 1UL, 0x6C24L);
        VECTOR(uint16_t, 8) l_104 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65529UL), 65529UL), 65529UL, 0UL, 65529UL);
        int32_t *l_110 = (void*)0;
        int32_t *l_111 = (void*)0;
        int32_t *l_112[8];
        uint32_t *l_126 = &p_1254->g_127;
        volatile struct S0 *l_129 = &p_1254->g_123;
        int i;
        for (i = 0; i < 8; i++)
            l_112[i] = (void*)0;
        p_1254->g_113 ^= ((*p_1254->g_28) = (((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_99.s77)), 255UL, 249UL)).wzxzzwzzwzzzxyzy)).sb7)))).xxyx, ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(p_1254->g_80.y, ((VECTOR(uint8_t, 4))(p_1254->g_100.s2180)), 0xC2L, 8UL, 0x4CL)))).lo)).even, ((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_101.yx)).xyxyxyyyxyyyyxxy)).s70cd))).odd)))))).yxyx))).zyywyzzxwzzzywxy, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))((+p_46), p_1254->g_80.z, 0xA448L, 5UL)), ((VECTOR(uint16_t, 2))(l_102.yy)), ((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))(l_103.sa69b921a34f7b726)).s758d, ((VECTOR(uint16_t, 8))(l_104.s37236103)).even))), ((void*)0 == l_105), (safe_sub_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((l_68.s4 = p_1254->g_48), 2)), ((p_1254->g_100.sc < (0x7246L || ((p_1254->g_49.s7 <= l_81.y) != p_46))) , p_1254->g_comm_values[p_1254->tid]))), 0xF98BL, ((VECTOR(uint16_t, 2))(0x21C5L)), 0UL))))).odd)).s0641152764121111))).lo, ((VECTOR(uint16_t, 8))(7UL))))).s4, p_42)) == GROUP_DIVERGE(0, 1)) & l_102.y));
        (*p_1254->g_117) = l_111;
        for (p_46 = 0; (p_46 > (-29)); p_46--)
        { /* block id: 22 */
            --l_120[6][1][3];
        }
        (*l_129) = (((void*)0 != &p_1254->g_28) , ((((VECTOR(uint32_t, 2))(4294967295UL, 0x308598B8L)).odd , ((*l_126) = ((p_1254->g_123 , (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), p_46))) | p_1254->g_48))) , p_1254->g_128));
    }
    else
    { /* block id: 27 */
        int32_t *l_130 = (void*)0;
        (*p_1254->g_131) = l_130;
        return l_132[2];
    }
    for (l_95 = (-4); (l_95 >= 15); l_95++)
    { /* block id: 33 */
        for (p_1254->g_29 = 0; (p_1254->g_29 >= (-19)); p_1254->g_29 = safe_sub_func_uint64_t_u_u(p_1254->g_29, 7))
        { /* block id: 36 */
            uint16_t l_137 = 0x5D7FL;
            l_137++;
        }
    }
    (*p_1254->g_28) |= (l_140 == (l_143 = &p_1254->g_127));
    l_145++;
    return l_142;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[98];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 98; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[98];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 98; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S4 c_1255;
    struct S4* p_1254 = &c_1255;
    struct S4 c_1256 = {
        (VECTOR(uint8_t, 2))(0x33L, 1UL), // p_1254->g_26
        0L, // p_1254->g_29
        &p_1254->g_29, // p_1254->g_28
        255UL, // p_1254->g_48
        (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 1L), 1L), 1L, (-8L), 1L, (VECTOR(int8_t, 2))((-8L), 1L), (VECTOR(int8_t, 2))((-8L), 1L), (-8L), 1L, (-8L), 1L), // p_1254->g_49
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-8L)), (-8L)), (-8L), 1L, (-8L)), // p_1254->g_79
        (VECTOR(int16_t, 4))(0x0D17L, (VECTOR(int16_t, 2))(0x0D17L, 0x1D64L), 0x1D64L), // p_1254->g_80
        {1L}, // p_1254->g_88
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xF7L), 0xF7L), 0xF7L, 1UL, 0xF7L, (VECTOR(uint8_t, 2))(1UL, 0xF7L), (VECTOR(uint8_t, 2))(1UL, 0xF7L), 1UL, 0xF7L, 1UL, 0xF7L), // p_1254->g_100
        0x46L, // p_1254->g_113
        &p_1254->g_29, // p_1254->g_115
        {{{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115}},{{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115}},{{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115}},{{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115},{(void*)0,(void*)0,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115}}}, // p_1254->g_114
        {&p_1254->g_115,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115,&p_1254->g_115}, // p_1254->g_116
        &p_1254->g_115, // p_1254->g_117
        {1L,0x68B728ABA7F53FFDL,0xD0FC9738L,-7L,0xCB88E3999123B753L,0x5FD3911739D61DCCL,0x4C161D2AL,0UL,0x71C6L}, // p_1254->g_123
        4294967289UL, // p_1254->g_127
        {3L,0x166428F1AC0AFFF8L,0xD5190A73L,0x4A90BE27L,1UL,0x9072AC36249A0EE2L,0xFB557DD5L,252UL,-1L}, // p_1254->g_128
        &p_1254->g_115, // p_1254->g_131
        {{{&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127},{&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127},{&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127},{&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127},{&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127},{&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127},{&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127},{&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127},{&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127,&p_1254->g_127}}}, // p_1254->g_152
        &p_1254->g_152[0][6][2], // p_1254->g_151
        &p_1254->g_151, // p_1254->g_150
        {0x1C0F3DC88A89D9E5L,0L,0xF8C6D496L,0x2275FDE8L,0x951EB4032FCF99E5L,0x69F7D501D7207EEBL,0xDB9A0D01L,1UL,0x0B4EL}, // p_1254->g_157
        {1L,-7L,4294967290UL,-7L,18446744073709551613UL,6UL,0x18C9A287L,249UL,1L}, // p_1254->g_158
        1L, // p_1254->g_181
        {3L}, // p_1254->g_184
        &p_1254->g_115, // p_1254->g_185
        {0x33D1823C8F109721L,0x61DF5B5C36C2FBB7L,4294967293UL,0x1E00B8E3L,0x6A125EDF4A1A8C06L,0xBA161EB52917DDB6L,0xEE2D5EA7L,6UL,1L}, // p_1254->g_226
        {0x9084L}, // p_1254->g_238
        0x2166L, // p_1254->g_246
        {9L,1L,0xB18EEED5L,1L,0x4F20A68EE7861D33L,0UL,4294967295UL,0UL,0x732DL}, // p_1254->g_249
        1UL, // p_1254->g_257
        &p_1254->g_157, // p_1254->g_278
        {0x3D759E20A06D1FA8L,-3L,0x698A8ED6L,-1L,18446744073709551615UL,0xC2D5EB0FD19336BBL,6UL,248UL,0x4991L}, // p_1254->g_316
        &p_1254->g_157, // p_1254->g_317
        &p_1254->g_115, // p_1254->g_324
        {{0L,0x0C00DA8C9CCD45A1L,0x0B9DC22EL,0x5F77E550L,0x2F52B4E11A21F51AL,2UL,4294967292UL,255UL,-3L},{0x446F5B73D2A1732AL,0x2C825BAB80C9E654L,8UL,-1L,0xDDCE5BE1131A0242L,0xF4D44ACA6DD656D7L,3UL,0UL,2L},{0x63C4D4F22A72F8DAL,-3L,9UL,0L,0x4C03271070EACEDEL,0UL,0UL,255UL,0x08C4L},{0x446F5B73D2A1732AL,0x2C825BAB80C9E654L,8UL,-1L,0xDDCE5BE1131A0242L,0xF4D44ACA6DD656D7L,3UL,0UL,2L},{0L,0x0C00DA8C9CCD45A1L,0x0B9DC22EL,0x5F77E550L,0x2F52B4E11A21F51AL,2UL,4294967292UL,255UL,-3L},{0L,0x0C00DA8C9CCD45A1L,0x0B9DC22EL,0x5F77E550L,0x2F52B4E11A21F51AL,2UL,4294967292UL,255UL,-3L},{0x446F5B73D2A1732AL,0x2C825BAB80C9E654L,8UL,-1L,0xDDCE5BE1131A0242L,0xF4D44ACA6DD656D7L,3UL,0UL,2L},{0x63C4D4F22A72F8DAL,-3L,9UL,0L,0x4C03271070EACEDEL,0UL,0UL,255UL,0x08C4L},{0x446F5B73D2A1732AL,0x2C825BAB80C9E654L,8UL,-1L,0xDDCE5BE1131A0242L,0xF4D44ACA6DD656D7L,3UL,0UL,2L},{0L,0x0C00DA8C9CCD45A1L,0x0B9DC22EL,0x5F77E550L,0x2F52B4E11A21F51AL,2UL,4294967292UL,255UL,-3L}}, // p_1254->g_345
        {&p_1254->g_226,&p_1254->g_226,&p_1254->g_226,&p_1254->g_226,&p_1254->g_226}, // p_1254->g_346
        0x2026F2DEL, // p_1254->g_469
        &p_1254->g_226.f7, // p_1254->g_470
        {1L}, // p_1254->g_471
        {-6L,0x41C53491C5E82730L,0UL,9L,0UL,0x4B0E1A48C93D1613L,4294967289UL,0xF5L,0x64B7L}, // p_1254->g_473
        {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}, // p_1254->g_472
        (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 0x14F6FFF1AA903200L), 0x14F6FFF1AA903200L), // p_1254->g_488
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 8L), 8L), // p_1254->g_489
        {0x64B56530L}, // p_1254->g_491
        &p_1254->g_491, // p_1254->g_490
        {1L,0x790D501E037A9F9DL,0UL,0x7D877B9BL,18446744073709551612UL,18446744073709551610UL,0xBF29FDE2L,1UL,0x77CFL}, // p_1254->g_505
        (VECTOR(uint32_t, 2))(4294967289UL, 0xCCE7BEA4L), // p_1254->g_529
        {{0x76FAD5FEL},{0x76FAD5FEL},{0x76FAD5FEL},{0x76FAD5FEL}}, // p_1254->g_561
        1UL, // p_1254->g_583
        (VECTOR(int8_t, 2))(0x6FL, 0x74L), // p_1254->g_615
        (void*)0, // p_1254->g_626
        {{0UL},{0UL}}, // p_1254->g_652
        0L, // p_1254->g_654
        &p_1254->g_246, // p_1254->g_686
        &p_1254->g_686, // p_1254->g_685
        (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL), // p_1254->g_701
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xAF4EL), 0xAF4EL), 0xAF4EL, 65535UL, 0xAF4EL), // p_1254->g_702
        (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 0x20L), 0x20L), // p_1254->g_707
        (VECTOR(uint8_t, 8))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0x5CL), 0x5CL), 0x5CL, 3UL, 0x5CL), // p_1254->g_708
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1254->g_714
        {{9L,9L,0L,(-4L),0x65A4L,(-4L)},{9L,9L,0L,(-4L),0x65A4L,(-4L)},{9L,9L,0L,(-4L),0x65A4L,(-4L)},{9L,9L,0L,(-4L),0x65A4L,(-4L)},{9L,9L,0L,(-4L),0x65A4L,(-4L)}}, // p_1254->g_715
        0xD66C9ADCL, // p_1254->g_717
        4294967293UL, // p_1254->g_719
        {0x4A776616L}, // p_1254->g_720
        (VECTOR(uint32_t, 4))(0xBD5068ECL, (VECTOR(uint32_t, 2))(0xBD5068ECL, 0xCFBB4CE4L), 0xCFBB4CE4L), // p_1254->g_727
        (void*)0, // p_1254->g_757
        {{&p_1254->g_583,&p_1254->g_583,&p_1254->g_583},{&p_1254->g_583,&p_1254->g_583,&p_1254->g_583},{&p_1254->g_583,&p_1254->g_583,&p_1254->g_583}}, // p_1254->g_758
        {8L,0x0034419A2C90F786L,0xFEBC0E6AL,9L,0x8A910D416C4BB716L,0UL,0x6089FA30L,255UL,0L}, // p_1254->g_768
        0UL, // p_1254->g_771
        {0x112B1A22A14C7FA3L,0x09E530FEE69FBCB8L,0x1DB447F2L,0x1184A4AAL,0x9968A10302AE495CL,18446744073709551615UL,4294967295UL,0xE1L,0x7543L}, // p_1254->g_776
        {-9L,5L,0x0AF1689AL,-1L,0x87BAE8E2933ADED5L,1UL,4294967295UL,0x9DL,0x3945L}, // p_1254->g_777
        {4294967295UL,4294967295UL}, // p_1254->g_799
        {6L}, // p_1254->g_850
        (VECTOR(uint64_t, 8))(3UL, (VECTOR(uint64_t, 4))(3UL, (VECTOR(uint64_t, 2))(3UL, 7UL), 7UL), 7UL, 3UL, 7UL), // p_1254->g_865
        (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, (-1L)), (-1L)), // p_1254->g_872
        (VECTOR(uint16_t, 16))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 2UL), 2UL), 2UL, 9UL, 2UL, (VECTOR(uint16_t, 2))(9UL, 2UL), (VECTOR(uint16_t, 2))(9UL, 2UL), 9UL, 2UL, 9UL, 2UL), // p_1254->g_912
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 5UL), 5UL), 5UL, 0UL, 5UL), // p_1254->g_913
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 1UL), 1UL), // p_1254->g_915
        (VECTOR(int8_t, 16))(0x18L, (VECTOR(int8_t, 4))(0x18L, (VECTOR(int8_t, 2))(0x18L, 0x10L), 0x10L), 0x10L, 0x18L, 0x10L, (VECTOR(int8_t, 2))(0x18L, 0x10L), (VECTOR(int8_t, 2))(0x18L, 0x10L), 0x18L, 0x10L, 0x18L, 0x10L), // p_1254->g_917
        {{{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{0x48FC728CDAF75452L,-1L,0xAACBF6CBL,0x6D30288CL,0x8DCAA59406495CBBL,18446744073709551615UL,0x13F11264L,0x83L,-4L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{0x48FC728CDAF75452L,-1L,0xAACBF6CBL,0x6D30288CL,0x8DCAA59406495CBBL,18446744073709551615UL,0x13F11264L,0x83L,-4L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L}},{{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{0x48FC728CDAF75452L,-1L,0xAACBF6CBL,0x6D30288CL,0x8DCAA59406495CBBL,18446744073709551615UL,0x13F11264L,0x83L,-4L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{0x48FC728CDAF75452L,-1L,0xAACBF6CBL,0x6D30288CL,0x8DCAA59406495CBBL,18446744073709551615UL,0x13F11264L,0x83L,-4L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L}},{{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{0x48FC728CDAF75452L,-1L,0xAACBF6CBL,0x6D30288CL,0x8DCAA59406495CBBL,18446744073709551615UL,0x13F11264L,0x83L,-4L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{0x48FC728CDAF75452L,-1L,0xAACBF6CBL,0x6D30288CL,0x8DCAA59406495CBBL,18446744073709551615UL,0x13F11264L,0x83L,-4L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L}},{{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{0x48FC728CDAF75452L,-1L,0xAACBF6CBL,0x6D30288CL,0x8DCAA59406495CBBL,18446744073709551615UL,0x13F11264L,0x83L,-4L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L},{0x48FC728CDAF75452L,-1L,0xAACBF6CBL,0x6D30288CL,0x8DCAA59406495CBBL,18446744073709551615UL,0x13F11264L,0x83L,-4L},{1L,3L,0x853845CDL,0x6796833AL,0UL,18446744073709551615UL,0xBFE8A57BL,0x0EL,1L}}}, // p_1254->g_920
        {0x316A6FAD8BEEFD16L,0x57F4D9F0792AE348L,4294967290UL,4L,0xA848CAD8F39792AFL,18446744073709551611UL,0x564EBA2EL,248UL,-4L}, // p_1254->g_922
        {-1L,1L,9UL,0L,18446744073709551609UL,1UL,4UL,0UL,5L}, // p_1254->g_923
        {0x5E4A4E106CE5CE47L,0x43061ED5F2E2F46DL,1UL,0x26574416L,1UL,0x0961FD830D9672F6L,0x477346F8L,0xD1L,0x5B79L}, // p_1254->g_924
        {9L,6L,1UL,0x7BE8825FL,0xB0A6C45761EA3887L,1UL,4294967286UL,254UL,0L}, // p_1254->g_925
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x66L), 0x66L), 0x66L, 0L, 0x66L, (VECTOR(int8_t, 2))(0L, 0x66L), (VECTOR(int8_t, 2))(0L, 0x66L), 0L, 0x66L, 0L, 0x66L), // p_1254->g_926
        {0x746C831D544ABAFBL}, // p_1254->g_934
        {{&p_1254->g_29,&p_1254->g_29,&p_1254->g_29,&p_1254->g_29,&p_1254->g_29,&p_1254->g_29,&p_1254->g_29,&p_1254->g_29}}, // p_1254->g_943
        (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 0UL, 18446744073709551615UL, 0UL, 18446744073709551615UL), // p_1254->g_944
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_1254->g_988
        (VECTOR(uint16_t, 2))(9UL, 0xC761L), // p_1254->g_999
        (VECTOR(int8_t, 4))(0x53L, (VECTOR(int8_t, 2))(0x53L, (-1L)), (-1L)), // p_1254->g_1011
        (VECTOR(int8_t, 16))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-9L)), (-9L)), (-9L), (-3L), (-9L), (VECTOR(int8_t, 2))((-3L), (-9L)), (VECTOR(int8_t, 2))((-3L), (-9L)), (-3L), (-9L), (-3L), (-9L)), // p_1254->g_1012
        &p_1254->g_768.f4, // p_1254->g_1037
        (VECTOR(uint8_t, 16))(0x3BL, (VECTOR(uint8_t, 4))(0x3BL, (VECTOR(uint8_t, 2))(0x3BL, 0x1FL), 0x1FL), 0x1FL, 0x3BL, 0x1FL, (VECTOR(uint8_t, 2))(0x3BL, 0x1FL), (VECTOR(uint8_t, 2))(0x3BL, 0x1FL), 0x3BL, 0x1FL, 0x3BL, 0x1FL), // p_1254->g_1042
        {0x22224A06L,0x22224A06L}, // p_1254->g_1064
        &p_1254->g_28, // p_1254->g_1068
        {{{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068}},{{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068}},{{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068}},{{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068}},{{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068}},{{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068}},{{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068},{&p_1254->g_1068}}}, // p_1254->g_1067
        (void*)0, // p_1254->g_1070
        {-1L,1L,0x72F4067FL,4L,0x9A765A8A34DD6A6CL,1UL,0x2FAFA4A4L,0x3EL,1L}, // p_1254->g_1081
        (void*)0, // p_1254->g_1082
        {0x411888908B70427DL,0x5A36613D38757C74L,1UL,1L,0x0B50E97A9E489B2FL,0UL,0x6D3F7BA3L,1UL,0L}, // p_1254->g_1084
        {1L,-1L,6UL,1L,0UL,0xC0B9A7D2A9697756L,4294967295UL,0x51L,0L}, // p_1254->g_1087
        {{{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}},{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}}},{{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}},{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}}},{{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}},{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}}},{{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}},{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}}},{{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}},{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}}},{{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}},{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}}},{{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}},{{-1L,0x67877372A957C197L,0x14DCBF60L,0x6D4C13CEL,0x8156819F546BCA7DL,18446744073709551614UL,0UL,0x0BL,0x2996L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x63CFD3D2BE033EDFL,0x3A21A2A85530895BL,4294967295UL,0x5EE1C360L,0x3B0574FF9D16C087L,0x00D6113C774E9E16L,0x6EC46AE8L,0UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L},{0x70DA330812950109L,0x2BF4CF3F06AC79C7L,4294967286UL,-1L,0x251B0D60EFE2A41EL,18446744073709551615UL,4294967295UL,255UL,-1L},{0x182FF70C5CE985DAL,0x02F68B823075882FL,0x57EFDB5BL,0x349D4A02L,18446744073709551606UL,0UL,0x5C219B19L,0x5FL,0L}}}}, // p_1254->g_1088
        (VECTOR(int32_t, 8))(0x20E329BBL, (VECTOR(int32_t, 4))(0x20E329BBL, (VECTOR(int32_t, 2))(0x20E329BBL, 3L), 3L), 3L, 0x20E329BBL, 3L), // p_1254->g_1096
        (VECTOR(uint32_t, 4))(0x2319C43DL, (VECTOR(uint32_t, 2))(0x2319C43DL, 0x0547FE89L), 0x0547FE89L), // p_1254->g_1112
        (VECTOR(int8_t, 2))(0L, (-1L)), // p_1254->g_1135
        &p_1254->g_922.f1, // p_1254->g_1148
        &p_1254->g_1148, // p_1254->g_1147
        (VECTOR(int16_t, 8))(0x05F0L, (VECTOR(int16_t, 4))(0x05F0L, (VECTOR(int16_t, 2))(0x05F0L, 0x1584L), 0x1584L), 0x1584L, 0x05F0L, 0x1584L), // p_1254->g_1163
        &p_1254->g_151, // p_1254->g_1171
        {{&p_1254->g_1037},{&p_1254->g_1037},{&p_1254->g_1037},{&p_1254->g_1037},{&p_1254->g_1037},{&p_1254->g_1037},{&p_1254->g_1037}}, // p_1254->g_1181
        &p_1254->g_1181[1][0], // p_1254->g_1180
        &p_1254->g_345[9].f0, // p_1254->g_1189
        &p_1254->g_1189, // p_1254->g_1188
        {1L}, // p_1254->g_1200
        {65533UL}, // p_1254->g_1202
        (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), // p_1254->g_1215
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x4412DB47L), 0x4412DB47L), // p_1254->g_1216
        (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x59L), 0x59L), 0x59L, (-8L), 0x59L, (VECTOR(int8_t, 2))((-8L), 0x59L), (VECTOR(int8_t, 2))((-8L), 0x59L), (-8L), 0x59L, (-8L), 0x59L), // p_1254->g_1233
        (VECTOR(uint8_t, 8))(0x0AL, (VECTOR(uint8_t, 4))(0x0AL, (VECTOR(uint8_t, 2))(0x0AL, 0x97L), 0x97L), 0x97L, 0x0AL, 0x97L), // p_1254->g_1235
        {{{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0}},{{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0},{&p_1254->g_943[0][4],&p_1254->g_943[0][4],(void*)0}}}, // p_1254->g_1251
        0UL, // p_1254->g_1253
        0, // p_1254->v_collective
        sequence_input[get_global_id(0)], // p_1254->global_0_offset
        sequence_input[get_global_id(1)], // p_1254->global_1_offset
        sequence_input[get_global_id(2)], // p_1254->global_2_offset
        sequence_input[get_local_id(0)], // p_1254->local_0_offset
        sequence_input[get_local_id(1)], // p_1254->local_1_offset
        sequence_input[get_local_id(2)], // p_1254->local_2_offset
        sequence_input[get_group_id(0)], // p_1254->group_0_offset
        sequence_input[get_group_id(1)], // p_1254->group_1_offset
        sequence_input[get_group_id(2)], // p_1254->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_1254->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1255 = c_1256;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1254);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1254->g_26.x, "p_1254->g_26.x", print_hash_value);
    transparent_crc(p_1254->g_26.y, "p_1254->g_26.y", print_hash_value);
    transparent_crc(p_1254->g_29, "p_1254->g_29", print_hash_value);
    transparent_crc(p_1254->g_48, "p_1254->g_48", print_hash_value);
    transparent_crc(p_1254->g_49.s0, "p_1254->g_49.s0", print_hash_value);
    transparent_crc(p_1254->g_49.s1, "p_1254->g_49.s1", print_hash_value);
    transparent_crc(p_1254->g_49.s2, "p_1254->g_49.s2", print_hash_value);
    transparent_crc(p_1254->g_49.s3, "p_1254->g_49.s3", print_hash_value);
    transparent_crc(p_1254->g_49.s4, "p_1254->g_49.s4", print_hash_value);
    transparent_crc(p_1254->g_49.s5, "p_1254->g_49.s5", print_hash_value);
    transparent_crc(p_1254->g_49.s6, "p_1254->g_49.s6", print_hash_value);
    transparent_crc(p_1254->g_49.s7, "p_1254->g_49.s7", print_hash_value);
    transparent_crc(p_1254->g_49.s8, "p_1254->g_49.s8", print_hash_value);
    transparent_crc(p_1254->g_49.s9, "p_1254->g_49.s9", print_hash_value);
    transparent_crc(p_1254->g_49.sa, "p_1254->g_49.sa", print_hash_value);
    transparent_crc(p_1254->g_49.sb, "p_1254->g_49.sb", print_hash_value);
    transparent_crc(p_1254->g_49.sc, "p_1254->g_49.sc", print_hash_value);
    transparent_crc(p_1254->g_49.sd, "p_1254->g_49.sd", print_hash_value);
    transparent_crc(p_1254->g_49.se, "p_1254->g_49.se", print_hash_value);
    transparent_crc(p_1254->g_49.sf, "p_1254->g_49.sf", print_hash_value);
    transparent_crc(p_1254->g_79.s0, "p_1254->g_79.s0", print_hash_value);
    transparent_crc(p_1254->g_79.s1, "p_1254->g_79.s1", print_hash_value);
    transparent_crc(p_1254->g_79.s2, "p_1254->g_79.s2", print_hash_value);
    transparent_crc(p_1254->g_79.s3, "p_1254->g_79.s3", print_hash_value);
    transparent_crc(p_1254->g_79.s4, "p_1254->g_79.s4", print_hash_value);
    transparent_crc(p_1254->g_79.s5, "p_1254->g_79.s5", print_hash_value);
    transparent_crc(p_1254->g_79.s6, "p_1254->g_79.s6", print_hash_value);
    transparent_crc(p_1254->g_79.s7, "p_1254->g_79.s7", print_hash_value);
    transparent_crc(p_1254->g_80.x, "p_1254->g_80.x", print_hash_value);
    transparent_crc(p_1254->g_80.y, "p_1254->g_80.y", print_hash_value);
    transparent_crc(p_1254->g_80.z, "p_1254->g_80.z", print_hash_value);
    transparent_crc(p_1254->g_80.w, "p_1254->g_80.w", print_hash_value);
    transparent_crc(p_1254->g_100.s0, "p_1254->g_100.s0", print_hash_value);
    transparent_crc(p_1254->g_100.s1, "p_1254->g_100.s1", print_hash_value);
    transparent_crc(p_1254->g_100.s2, "p_1254->g_100.s2", print_hash_value);
    transparent_crc(p_1254->g_100.s3, "p_1254->g_100.s3", print_hash_value);
    transparent_crc(p_1254->g_100.s4, "p_1254->g_100.s4", print_hash_value);
    transparent_crc(p_1254->g_100.s5, "p_1254->g_100.s5", print_hash_value);
    transparent_crc(p_1254->g_100.s6, "p_1254->g_100.s6", print_hash_value);
    transparent_crc(p_1254->g_100.s7, "p_1254->g_100.s7", print_hash_value);
    transparent_crc(p_1254->g_100.s8, "p_1254->g_100.s8", print_hash_value);
    transparent_crc(p_1254->g_100.s9, "p_1254->g_100.s9", print_hash_value);
    transparent_crc(p_1254->g_100.sa, "p_1254->g_100.sa", print_hash_value);
    transparent_crc(p_1254->g_100.sb, "p_1254->g_100.sb", print_hash_value);
    transparent_crc(p_1254->g_100.sc, "p_1254->g_100.sc", print_hash_value);
    transparent_crc(p_1254->g_100.sd, "p_1254->g_100.sd", print_hash_value);
    transparent_crc(p_1254->g_100.se, "p_1254->g_100.se", print_hash_value);
    transparent_crc(p_1254->g_100.sf, "p_1254->g_100.sf", print_hash_value);
    transparent_crc(p_1254->g_113, "p_1254->g_113", print_hash_value);
    transparent_crc(p_1254->g_123.f0, "p_1254->g_123.f0", print_hash_value);
    transparent_crc(p_1254->g_123.f1, "p_1254->g_123.f1", print_hash_value);
    transparent_crc(p_1254->g_123.f2, "p_1254->g_123.f2", print_hash_value);
    transparent_crc(p_1254->g_123.f3, "p_1254->g_123.f3", print_hash_value);
    transparent_crc(p_1254->g_123.f4, "p_1254->g_123.f4", print_hash_value);
    transparent_crc(p_1254->g_123.f5, "p_1254->g_123.f5", print_hash_value);
    transparent_crc(p_1254->g_123.f6, "p_1254->g_123.f6", print_hash_value);
    transparent_crc(p_1254->g_123.f7, "p_1254->g_123.f7", print_hash_value);
    transparent_crc(p_1254->g_123.f8, "p_1254->g_123.f8", print_hash_value);
    transparent_crc(p_1254->g_127, "p_1254->g_127", print_hash_value);
    transparent_crc(p_1254->g_128.f0, "p_1254->g_128.f0", print_hash_value);
    transparent_crc(p_1254->g_128.f1, "p_1254->g_128.f1", print_hash_value);
    transparent_crc(p_1254->g_128.f2, "p_1254->g_128.f2", print_hash_value);
    transparent_crc(p_1254->g_128.f3, "p_1254->g_128.f3", print_hash_value);
    transparent_crc(p_1254->g_128.f4, "p_1254->g_128.f4", print_hash_value);
    transparent_crc(p_1254->g_128.f5, "p_1254->g_128.f5", print_hash_value);
    transparent_crc(p_1254->g_128.f6, "p_1254->g_128.f6", print_hash_value);
    transparent_crc(p_1254->g_128.f7, "p_1254->g_128.f7", print_hash_value);
    transparent_crc(p_1254->g_128.f8, "p_1254->g_128.f8", print_hash_value);
    transparent_crc(p_1254->g_157.f0, "p_1254->g_157.f0", print_hash_value);
    transparent_crc(p_1254->g_157.f1, "p_1254->g_157.f1", print_hash_value);
    transparent_crc(p_1254->g_157.f2, "p_1254->g_157.f2", print_hash_value);
    transparent_crc(p_1254->g_157.f3, "p_1254->g_157.f3", print_hash_value);
    transparent_crc(p_1254->g_157.f4, "p_1254->g_157.f4", print_hash_value);
    transparent_crc(p_1254->g_157.f5, "p_1254->g_157.f5", print_hash_value);
    transparent_crc(p_1254->g_157.f6, "p_1254->g_157.f6", print_hash_value);
    transparent_crc(p_1254->g_157.f7, "p_1254->g_157.f7", print_hash_value);
    transparent_crc(p_1254->g_157.f8, "p_1254->g_157.f8", print_hash_value);
    transparent_crc(p_1254->g_158.f0, "p_1254->g_158.f0", print_hash_value);
    transparent_crc(p_1254->g_158.f1, "p_1254->g_158.f1", print_hash_value);
    transparent_crc(p_1254->g_158.f2, "p_1254->g_158.f2", print_hash_value);
    transparent_crc(p_1254->g_158.f3, "p_1254->g_158.f3", print_hash_value);
    transparent_crc(p_1254->g_158.f4, "p_1254->g_158.f4", print_hash_value);
    transparent_crc(p_1254->g_158.f5, "p_1254->g_158.f5", print_hash_value);
    transparent_crc(p_1254->g_158.f6, "p_1254->g_158.f6", print_hash_value);
    transparent_crc(p_1254->g_158.f7, "p_1254->g_158.f7", print_hash_value);
    transparent_crc(p_1254->g_158.f8, "p_1254->g_158.f8", print_hash_value);
    transparent_crc(p_1254->g_181, "p_1254->g_181", print_hash_value);
    transparent_crc(p_1254->g_184.f0, "p_1254->g_184.f0", print_hash_value);
    transparent_crc(p_1254->g_226.f0, "p_1254->g_226.f0", print_hash_value);
    transparent_crc(p_1254->g_226.f1, "p_1254->g_226.f1", print_hash_value);
    transparent_crc(p_1254->g_226.f2, "p_1254->g_226.f2", print_hash_value);
    transparent_crc(p_1254->g_226.f3, "p_1254->g_226.f3", print_hash_value);
    transparent_crc(p_1254->g_226.f4, "p_1254->g_226.f4", print_hash_value);
    transparent_crc(p_1254->g_226.f5, "p_1254->g_226.f5", print_hash_value);
    transparent_crc(p_1254->g_226.f6, "p_1254->g_226.f6", print_hash_value);
    transparent_crc(p_1254->g_226.f7, "p_1254->g_226.f7", print_hash_value);
    transparent_crc(p_1254->g_226.f8, "p_1254->g_226.f8", print_hash_value);
    transparent_crc(p_1254->g_238.f0, "p_1254->g_238.f0", print_hash_value);
    transparent_crc(p_1254->g_246, "p_1254->g_246", print_hash_value);
    transparent_crc(p_1254->g_249.f0, "p_1254->g_249.f0", print_hash_value);
    transparent_crc(p_1254->g_249.f1, "p_1254->g_249.f1", print_hash_value);
    transparent_crc(p_1254->g_249.f2, "p_1254->g_249.f2", print_hash_value);
    transparent_crc(p_1254->g_249.f3, "p_1254->g_249.f3", print_hash_value);
    transparent_crc(p_1254->g_249.f4, "p_1254->g_249.f4", print_hash_value);
    transparent_crc(p_1254->g_249.f5, "p_1254->g_249.f5", print_hash_value);
    transparent_crc(p_1254->g_249.f6, "p_1254->g_249.f6", print_hash_value);
    transparent_crc(p_1254->g_249.f7, "p_1254->g_249.f7", print_hash_value);
    transparent_crc(p_1254->g_249.f8, "p_1254->g_249.f8", print_hash_value);
    transparent_crc(p_1254->g_257, "p_1254->g_257", print_hash_value);
    transparent_crc(p_1254->g_316.f0, "p_1254->g_316.f0", print_hash_value);
    transparent_crc(p_1254->g_316.f1, "p_1254->g_316.f1", print_hash_value);
    transparent_crc(p_1254->g_316.f2, "p_1254->g_316.f2", print_hash_value);
    transparent_crc(p_1254->g_316.f3, "p_1254->g_316.f3", print_hash_value);
    transparent_crc(p_1254->g_316.f4, "p_1254->g_316.f4", print_hash_value);
    transparent_crc(p_1254->g_316.f5, "p_1254->g_316.f5", print_hash_value);
    transparent_crc(p_1254->g_316.f6, "p_1254->g_316.f6", print_hash_value);
    transparent_crc(p_1254->g_316.f7, "p_1254->g_316.f7", print_hash_value);
    transparent_crc(p_1254->g_316.f8, "p_1254->g_316.f8", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1254->g_345[i].f0, "p_1254->g_345[i].f0", print_hash_value);
        transparent_crc(p_1254->g_345[i].f1, "p_1254->g_345[i].f1", print_hash_value);
        transparent_crc(p_1254->g_345[i].f2, "p_1254->g_345[i].f2", print_hash_value);
        transparent_crc(p_1254->g_345[i].f3, "p_1254->g_345[i].f3", print_hash_value);
        transparent_crc(p_1254->g_345[i].f4, "p_1254->g_345[i].f4", print_hash_value);
        transparent_crc(p_1254->g_345[i].f5, "p_1254->g_345[i].f5", print_hash_value);
        transparent_crc(p_1254->g_345[i].f6, "p_1254->g_345[i].f6", print_hash_value);
        transparent_crc(p_1254->g_345[i].f7, "p_1254->g_345[i].f7", print_hash_value);
        transparent_crc(p_1254->g_345[i].f8, "p_1254->g_345[i].f8", print_hash_value);

    }
    transparent_crc(p_1254->g_469, "p_1254->g_469", print_hash_value);
    transparent_crc(p_1254->g_471.f0, "p_1254->g_471.f0", print_hash_value);
    transparent_crc(p_1254->g_473.f0, "p_1254->g_473.f0", print_hash_value);
    transparent_crc(p_1254->g_473.f1, "p_1254->g_473.f1", print_hash_value);
    transparent_crc(p_1254->g_473.f2, "p_1254->g_473.f2", print_hash_value);
    transparent_crc(p_1254->g_473.f3, "p_1254->g_473.f3", print_hash_value);
    transparent_crc(p_1254->g_473.f4, "p_1254->g_473.f4", print_hash_value);
    transparent_crc(p_1254->g_473.f5, "p_1254->g_473.f5", print_hash_value);
    transparent_crc(p_1254->g_473.f6, "p_1254->g_473.f6", print_hash_value);
    transparent_crc(p_1254->g_473.f7, "p_1254->g_473.f7", print_hash_value);
    transparent_crc(p_1254->g_473.f8, "p_1254->g_473.f8", print_hash_value);
    transparent_crc(p_1254->g_488.x, "p_1254->g_488.x", print_hash_value);
    transparent_crc(p_1254->g_488.y, "p_1254->g_488.y", print_hash_value);
    transparent_crc(p_1254->g_488.z, "p_1254->g_488.z", print_hash_value);
    transparent_crc(p_1254->g_488.w, "p_1254->g_488.w", print_hash_value);
    transparent_crc(p_1254->g_489.x, "p_1254->g_489.x", print_hash_value);
    transparent_crc(p_1254->g_489.y, "p_1254->g_489.y", print_hash_value);
    transparent_crc(p_1254->g_489.z, "p_1254->g_489.z", print_hash_value);
    transparent_crc(p_1254->g_489.w, "p_1254->g_489.w", print_hash_value);
    transparent_crc(p_1254->g_491.f0, "p_1254->g_491.f0", print_hash_value);
    transparent_crc(p_1254->g_505.f0, "p_1254->g_505.f0", print_hash_value);
    transparent_crc(p_1254->g_505.f1, "p_1254->g_505.f1", print_hash_value);
    transparent_crc(p_1254->g_505.f2, "p_1254->g_505.f2", print_hash_value);
    transparent_crc(p_1254->g_505.f3, "p_1254->g_505.f3", print_hash_value);
    transparent_crc(p_1254->g_505.f4, "p_1254->g_505.f4", print_hash_value);
    transparent_crc(p_1254->g_505.f5, "p_1254->g_505.f5", print_hash_value);
    transparent_crc(p_1254->g_505.f6, "p_1254->g_505.f6", print_hash_value);
    transparent_crc(p_1254->g_505.f7, "p_1254->g_505.f7", print_hash_value);
    transparent_crc(p_1254->g_505.f8, "p_1254->g_505.f8", print_hash_value);
    transparent_crc(p_1254->g_529.x, "p_1254->g_529.x", print_hash_value);
    transparent_crc(p_1254->g_529.y, "p_1254->g_529.y", print_hash_value);
    transparent_crc(p_1254->g_583, "p_1254->g_583", print_hash_value);
    transparent_crc(p_1254->g_615.x, "p_1254->g_615.x", print_hash_value);
    transparent_crc(p_1254->g_615.y, "p_1254->g_615.y", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1254->g_652[i].f0, "p_1254->g_652[i].f0", print_hash_value);

    }
    transparent_crc(p_1254->g_654, "p_1254->g_654", print_hash_value);
    transparent_crc(p_1254->g_701.s0, "p_1254->g_701.s0", print_hash_value);
    transparent_crc(p_1254->g_701.s1, "p_1254->g_701.s1", print_hash_value);
    transparent_crc(p_1254->g_701.s2, "p_1254->g_701.s2", print_hash_value);
    transparent_crc(p_1254->g_701.s3, "p_1254->g_701.s3", print_hash_value);
    transparent_crc(p_1254->g_701.s4, "p_1254->g_701.s4", print_hash_value);
    transparent_crc(p_1254->g_701.s5, "p_1254->g_701.s5", print_hash_value);
    transparent_crc(p_1254->g_701.s6, "p_1254->g_701.s6", print_hash_value);
    transparent_crc(p_1254->g_701.s7, "p_1254->g_701.s7", print_hash_value);
    transparent_crc(p_1254->g_702.s0, "p_1254->g_702.s0", print_hash_value);
    transparent_crc(p_1254->g_702.s1, "p_1254->g_702.s1", print_hash_value);
    transparent_crc(p_1254->g_702.s2, "p_1254->g_702.s2", print_hash_value);
    transparent_crc(p_1254->g_702.s3, "p_1254->g_702.s3", print_hash_value);
    transparent_crc(p_1254->g_702.s4, "p_1254->g_702.s4", print_hash_value);
    transparent_crc(p_1254->g_702.s5, "p_1254->g_702.s5", print_hash_value);
    transparent_crc(p_1254->g_702.s6, "p_1254->g_702.s6", print_hash_value);
    transparent_crc(p_1254->g_702.s7, "p_1254->g_702.s7", print_hash_value);
    transparent_crc(p_1254->g_707.x, "p_1254->g_707.x", print_hash_value);
    transparent_crc(p_1254->g_707.y, "p_1254->g_707.y", print_hash_value);
    transparent_crc(p_1254->g_707.z, "p_1254->g_707.z", print_hash_value);
    transparent_crc(p_1254->g_707.w, "p_1254->g_707.w", print_hash_value);
    transparent_crc(p_1254->g_708.s0, "p_1254->g_708.s0", print_hash_value);
    transparent_crc(p_1254->g_708.s1, "p_1254->g_708.s1", print_hash_value);
    transparent_crc(p_1254->g_708.s2, "p_1254->g_708.s2", print_hash_value);
    transparent_crc(p_1254->g_708.s3, "p_1254->g_708.s3", print_hash_value);
    transparent_crc(p_1254->g_708.s4, "p_1254->g_708.s4", print_hash_value);
    transparent_crc(p_1254->g_708.s5, "p_1254->g_708.s5", print_hash_value);
    transparent_crc(p_1254->g_708.s6, "p_1254->g_708.s6", print_hash_value);
    transparent_crc(p_1254->g_708.s7, "p_1254->g_708.s7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1254->g_714[i], "p_1254->g_714[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1254->g_715[i][j], "p_1254->g_715[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1254->g_717, "p_1254->g_717", print_hash_value);
    transparent_crc(p_1254->g_719, "p_1254->g_719", print_hash_value);
    transparent_crc(p_1254->g_720.f0, "p_1254->g_720.f0", print_hash_value);
    transparent_crc(p_1254->g_727.x, "p_1254->g_727.x", print_hash_value);
    transparent_crc(p_1254->g_727.y, "p_1254->g_727.y", print_hash_value);
    transparent_crc(p_1254->g_727.z, "p_1254->g_727.z", print_hash_value);
    transparent_crc(p_1254->g_727.w, "p_1254->g_727.w", print_hash_value);
    transparent_crc(p_1254->g_768.f0, "p_1254->g_768.f0", print_hash_value);
    transparent_crc(p_1254->g_768.f1, "p_1254->g_768.f1", print_hash_value);
    transparent_crc(p_1254->g_768.f2, "p_1254->g_768.f2", print_hash_value);
    transparent_crc(p_1254->g_768.f3, "p_1254->g_768.f3", print_hash_value);
    transparent_crc(p_1254->g_768.f4, "p_1254->g_768.f4", print_hash_value);
    transparent_crc(p_1254->g_768.f5, "p_1254->g_768.f5", print_hash_value);
    transparent_crc(p_1254->g_768.f6, "p_1254->g_768.f6", print_hash_value);
    transparent_crc(p_1254->g_768.f7, "p_1254->g_768.f7", print_hash_value);
    transparent_crc(p_1254->g_768.f8, "p_1254->g_768.f8", print_hash_value);
    transparent_crc(p_1254->g_771, "p_1254->g_771", print_hash_value);
    transparent_crc(p_1254->g_776.f0, "p_1254->g_776.f0", print_hash_value);
    transparent_crc(p_1254->g_776.f1, "p_1254->g_776.f1", print_hash_value);
    transparent_crc(p_1254->g_776.f2, "p_1254->g_776.f2", print_hash_value);
    transparent_crc(p_1254->g_776.f3, "p_1254->g_776.f3", print_hash_value);
    transparent_crc(p_1254->g_776.f4, "p_1254->g_776.f4", print_hash_value);
    transparent_crc(p_1254->g_776.f5, "p_1254->g_776.f5", print_hash_value);
    transparent_crc(p_1254->g_776.f6, "p_1254->g_776.f6", print_hash_value);
    transparent_crc(p_1254->g_776.f7, "p_1254->g_776.f7", print_hash_value);
    transparent_crc(p_1254->g_776.f8, "p_1254->g_776.f8", print_hash_value);
    transparent_crc(p_1254->g_777.f0, "p_1254->g_777.f0", print_hash_value);
    transparent_crc(p_1254->g_777.f1, "p_1254->g_777.f1", print_hash_value);
    transparent_crc(p_1254->g_777.f2, "p_1254->g_777.f2", print_hash_value);
    transparent_crc(p_1254->g_777.f3, "p_1254->g_777.f3", print_hash_value);
    transparent_crc(p_1254->g_777.f4, "p_1254->g_777.f4", print_hash_value);
    transparent_crc(p_1254->g_777.f5, "p_1254->g_777.f5", print_hash_value);
    transparent_crc(p_1254->g_777.f6, "p_1254->g_777.f6", print_hash_value);
    transparent_crc(p_1254->g_777.f7, "p_1254->g_777.f7", print_hash_value);
    transparent_crc(p_1254->g_777.f8, "p_1254->g_777.f8", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1254->g_799[i], "p_1254->g_799[i]", print_hash_value);

    }
    transparent_crc(p_1254->g_850.f0, "p_1254->g_850.f0", print_hash_value);
    transparent_crc(p_1254->g_865.s0, "p_1254->g_865.s0", print_hash_value);
    transparent_crc(p_1254->g_865.s1, "p_1254->g_865.s1", print_hash_value);
    transparent_crc(p_1254->g_865.s2, "p_1254->g_865.s2", print_hash_value);
    transparent_crc(p_1254->g_865.s3, "p_1254->g_865.s3", print_hash_value);
    transparent_crc(p_1254->g_865.s4, "p_1254->g_865.s4", print_hash_value);
    transparent_crc(p_1254->g_865.s5, "p_1254->g_865.s5", print_hash_value);
    transparent_crc(p_1254->g_865.s6, "p_1254->g_865.s6", print_hash_value);
    transparent_crc(p_1254->g_865.s7, "p_1254->g_865.s7", print_hash_value);
    transparent_crc(p_1254->g_872.x, "p_1254->g_872.x", print_hash_value);
    transparent_crc(p_1254->g_872.y, "p_1254->g_872.y", print_hash_value);
    transparent_crc(p_1254->g_872.z, "p_1254->g_872.z", print_hash_value);
    transparent_crc(p_1254->g_872.w, "p_1254->g_872.w", print_hash_value);
    transparent_crc(p_1254->g_912.s0, "p_1254->g_912.s0", print_hash_value);
    transparent_crc(p_1254->g_912.s1, "p_1254->g_912.s1", print_hash_value);
    transparent_crc(p_1254->g_912.s2, "p_1254->g_912.s2", print_hash_value);
    transparent_crc(p_1254->g_912.s3, "p_1254->g_912.s3", print_hash_value);
    transparent_crc(p_1254->g_912.s4, "p_1254->g_912.s4", print_hash_value);
    transparent_crc(p_1254->g_912.s5, "p_1254->g_912.s5", print_hash_value);
    transparent_crc(p_1254->g_912.s6, "p_1254->g_912.s6", print_hash_value);
    transparent_crc(p_1254->g_912.s7, "p_1254->g_912.s7", print_hash_value);
    transparent_crc(p_1254->g_912.s8, "p_1254->g_912.s8", print_hash_value);
    transparent_crc(p_1254->g_912.s9, "p_1254->g_912.s9", print_hash_value);
    transparent_crc(p_1254->g_912.sa, "p_1254->g_912.sa", print_hash_value);
    transparent_crc(p_1254->g_912.sb, "p_1254->g_912.sb", print_hash_value);
    transparent_crc(p_1254->g_912.sc, "p_1254->g_912.sc", print_hash_value);
    transparent_crc(p_1254->g_912.sd, "p_1254->g_912.sd", print_hash_value);
    transparent_crc(p_1254->g_912.se, "p_1254->g_912.se", print_hash_value);
    transparent_crc(p_1254->g_912.sf, "p_1254->g_912.sf", print_hash_value);
    transparent_crc(p_1254->g_913.s0, "p_1254->g_913.s0", print_hash_value);
    transparent_crc(p_1254->g_913.s1, "p_1254->g_913.s1", print_hash_value);
    transparent_crc(p_1254->g_913.s2, "p_1254->g_913.s2", print_hash_value);
    transparent_crc(p_1254->g_913.s3, "p_1254->g_913.s3", print_hash_value);
    transparent_crc(p_1254->g_913.s4, "p_1254->g_913.s4", print_hash_value);
    transparent_crc(p_1254->g_913.s5, "p_1254->g_913.s5", print_hash_value);
    transparent_crc(p_1254->g_913.s6, "p_1254->g_913.s6", print_hash_value);
    transparent_crc(p_1254->g_913.s7, "p_1254->g_913.s7", print_hash_value);
    transparent_crc(p_1254->g_915.x, "p_1254->g_915.x", print_hash_value);
    transparent_crc(p_1254->g_915.y, "p_1254->g_915.y", print_hash_value);
    transparent_crc(p_1254->g_915.z, "p_1254->g_915.z", print_hash_value);
    transparent_crc(p_1254->g_915.w, "p_1254->g_915.w", print_hash_value);
    transparent_crc(p_1254->g_917.s0, "p_1254->g_917.s0", print_hash_value);
    transparent_crc(p_1254->g_917.s1, "p_1254->g_917.s1", print_hash_value);
    transparent_crc(p_1254->g_917.s2, "p_1254->g_917.s2", print_hash_value);
    transparent_crc(p_1254->g_917.s3, "p_1254->g_917.s3", print_hash_value);
    transparent_crc(p_1254->g_917.s4, "p_1254->g_917.s4", print_hash_value);
    transparent_crc(p_1254->g_917.s5, "p_1254->g_917.s5", print_hash_value);
    transparent_crc(p_1254->g_917.s6, "p_1254->g_917.s6", print_hash_value);
    transparent_crc(p_1254->g_917.s7, "p_1254->g_917.s7", print_hash_value);
    transparent_crc(p_1254->g_917.s8, "p_1254->g_917.s8", print_hash_value);
    transparent_crc(p_1254->g_917.s9, "p_1254->g_917.s9", print_hash_value);
    transparent_crc(p_1254->g_917.sa, "p_1254->g_917.sa", print_hash_value);
    transparent_crc(p_1254->g_917.sb, "p_1254->g_917.sb", print_hash_value);
    transparent_crc(p_1254->g_917.sc, "p_1254->g_917.sc", print_hash_value);
    transparent_crc(p_1254->g_917.sd, "p_1254->g_917.sd", print_hash_value);
    transparent_crc(p_1254->g_917.se, "p_1254->g_917.se", print_hash_value);
    transparent_crc(p_1254->g_917.sf, "p_1254->g_917.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1254->g_920[i][j].f0, "p_1254->g_920[i][j].f0", print_hash_value);
            transparent_crc(p_1254->g_920[i][j].f1, "p_1254->g_920[i][j].f1", print_hash_value);
            transparent_crc(p_1254->g_920[i][j].f2, "p_1254->g_920[i][j].f2", print_hash_value);
            transparent_crc(p_1254->g_920[i][j].f3, "p_1254->g_920[i][j].f3", print_hash_value);
            transparent_crc(p_1254->g_920[i][j].f4, "p_1254->g_920[i][j].f4", print_hash_value);
            transparent_crc(p_1254->g_920[i][j].f5, "p_1254->g_920[i][j].f5", print_hash_value);
            transparent_crc(p_1254->g_920[i][j].f6, "p_1254->g_920[i][j].f6", print_hash_value);
            transparent_crc(p_1254->g_920[i][j].f7, "p_1254->g_920[i][j].f7", print_hash_value);
            transparent_crc(p_1254->g_920[i][j].f8, "p_1254->g_920[i][j].f8", print_hash_value);

        }
    }
    transparent_crc(p_1254->g_922.f0, "p_1254->g_922.f0", print_hash_value);
    transparent_crc(p_1254->g_922.f1, "p_1254->g_922.f1", print_hash_value);
    transparent_crc(p_1254->g_922.f2, "p_1254->g_922.f2", print_hash_value);
    transparent_crc(p_1254->g_922.f3, "p_1254->g_922.f3", print_hash_value);
    transparent_crc(p_1254->g_922.f4, "p_1254->g_922.f4", print_hash_value);
    transparent_crc(p_1254->g_922.f5, "p_1254->g_922.f5", print_hash_value);
    transparent_crc(p_1254->g_922.f6, "p_1254->g_922.f6", print_hash_value);
    transparent_crc(p_1254->g_922.f7, "p_1254->g_922.f7", print_hash_value);
    transparent_crc(p_1254->g_922.f8, "p_1254->g_922.f8", print_hash_value);
    transparent_crc(p_1254->g_923.f0, "p_1254->g_923.f0", print_hash_value);
    transparent_crc(p_1254->g_923.f1, "p_1254->g_923.f1", print_hash_value);
    transparent_crc(p_1254->g_923.f2, "p_1254->g_923.f2", print_hash_value);
    transparent_crc(p_1254->g_923.f3, "p_1254->g_923.f3", print_hash_value);
    transparent_crc(p_1254->g_923.f4, "p_1254->g_923.f4", print_hash_value);
    transparent_crc(p_1254->g_923.f5, "p_1254->g_923.f5", print_hash_value);
    transparent_crc(p_1254->g_923.f6, "p_1254->g_923.f6", print_hash_value);
    transparent_crc(p_1254->g_923.f7, "p_1254->g_923.f7", print_hash_value);
    transparent_crc(p_1254->g_923.f8, "p_1254->g_923.f8", print_hash_value);
    transparent_crc(p_1254->g_924.f0, "p_1254->g_924.f0", print_hash_value);
    transparent_crc(p_1254->g_924.f1, "p_1254->g_924.f1", print_hash_value);
    transparent_crc(p_1254->g_924.f2, "p_1254->g_924.f2", print_hash_value);
    transparent_crc(p_1254->g_924.f3, "p_1254->g_924.f3", print_hash_value);
    transparent_crc(p_1254->g_924.f4, "p_1254->g_924.f4", print_hash_value);
    transparent_crc(p_1254->g_924.f5, "p_1254->g_924.f5", print_hash_value);
    transparent_crc(p_1254->g_924.f6, "p_1254->g_924.f6", print_hash_value);
    transparent_crc(p_1254->g_924.f7, "p_1254->g_924.f7", print_hash_value);
    transparent_crc(p_1254->g_924.f8, "p_1254->g_924.f8", print_hash_value);
    transparent_crc(p_1254->g_925.f0, "p_1254->g_925.f0", print_hash_value);
    transparent_crc(p_1254->g_925.f1, "p_1254->g_925.f1", print_hash_value);
    transparent_crc(p_1254->g_925.f2, "p_1254->g_925.f2", print_hash_value);
    transparent_crc(p_1254->g_925.f3, "p_1254->g_925.f3", print_hash_value);
    transparent_crc(p_1254->g_925.f4, "p_1254->g_925.f4", print_hash_value);
    transparent_crc(p_1254->g_925.f5, "p_1254->g_925.f5", print_hash_value);
    transparent_crc(p_1254->g_925.f6, "p_1254->g_925.f6", print_hash_value);
    transparent_crc(p_1254->g_925.f7, "p_1254->g_925.f7", print_hash_value);
    transparent_crc(p_1254->g_925.f8, "p_1254->g_925.f8", print_hash_value);
    transparent_crc(p_1254->g_926.s0, "p_1254->g_926.s0", print_hash_value);
    transparent_crc(p_1254->g_926.s1, "p_1254->g_926.s1", print_hash_value);
    transparent_crc(p_1254->g_926.s2, "p_1254->g_926.s2", print_hash_value);
    transparent_crc(p_1254->g_926.s3, "p_1254->g_926.s3", print_hash_value);
    transparent_crc(p_1254->g_926.s4, "p_1254->g_926.s4", print_hash_value);
    transparent_crc(p_1254->g_926.s5, "p_1254->g_926.s5", print_hash_value);
    transparent_crc(p_1254->g_926.s6, "p_1254->g_926.s6", print_hash_value);
    transparent_crc(p_1254->g_926.s7, "p_1254->g_926.s7", print_hash_value);
    transparent_crc(p_1254->g_926.s8, "p_1254->g_926.s8", print_hash_value);
    transparent_crc(p_1254->g_926.s9, "p_1254->g_926.s9", print_hash_value);
    transparent_crc(p_1254->g_926.sa, "p_1254->g_926.sa", print_hash_value);
    transparent_crc(p_1254->g_926.sb, "p_1254->g_926.sb", print_hash_value);
    transparent_crc(p_1254->g_926.sc, "p_1254->g_926.sc", print_hash_value);
    transparent_crc(p_1254->g_926.sd, "p_1254->g_926.sd", print_hash_value);
    transparent_crc(p_1254->g_926.se, "p_1254->g_926.se", print_hash_value);
    transparent_crc(p_1254->g_926.sf, "p_1254->g_926.sf", print_hash_value);
    transparent_crc(p_1254->g_934.f0, "p_1254->g_934.f0", print_hash_value);
    transparent_crc(p_1254->g_944.s0, "p_1254->g_944.s0", print_hash_value);
    transparent_crc(p_1254->g_944.s1, "p_1254->g_944.s1", print_hash_value);
    transparent_crc(p_1254->g_944.s2, "p_1254->g_944.s2", print_hash_value);
    transparent_crc(p_1254->g_944.s3, "p_1254->g_944.s3", print_hash_value);
    transparent_crc(p_1254->g_944.s4, "p_1254->g_944.s4", print_hash_value);
    transparent_crc(p_1254->g_944.s5, "p_1254->g_944.s5", print_hash_value);
    transparent_crc(p_1254->g_944.s6, "p_1254->g_944.s6", print_hash_value);
    transparent_crc(p_1254->g_944.s7, "p_1254->g_944.s7", print_hash_value);
    transparent_crc(p_1254->g_944.s8, "p_1254->g_944.s8", print_hash_value);
    transparent_crc(p_1254->g_944.s9, "p_1254->g_944.s9", print_hash_value);
    transparent_crc(p_1254->g_944.sa, "p_1254->g_944.sa", print_hash_value);
    transparent_crc(p_1254->g_944.sb, "p_1254->g_944.sb", print_hash_value);
    transparent_crc(p_1254->g_944.sc, "p_1254->g_944.sc", print_hash_value);
    transparent_crc(p_1254->g_944.sd, "p_1254->g_944.sd", print_hash_value);
    transparent_crc(p_1254->g_944.se, "p_1254->g_944.se", print_hash_value);
    transparent_crc(p_1254->g_944.sf, "p_1254->g_944.sf", print_hash_value);
    transparent_crc(p_1254->g_988.s0, "p_1254->g_988.s0", print_hash_value);
    transparent_crc(p_1254->g_988.s1, "p_1254->g_988.s1", print_hash_value);
    transparent_crc(p_1254->g_988.s2, "p_1254->g_988.s2", print_hash_value);
    transparent_crc(p_1254->g_988.s3, "p_1254->g_988.s3", print_hash_value);
    transparent_crc(p_1254->g_988.s4, "p_1254->g_988.s4", print_hash_value);
    transparent_crc(p_1254->g_988.s5, "p_1254->g_988.s5", print_hash_value);
    transparent_crc(p_1254->g_988.s6, "p_1254->g_988.s6", print_hash_value);
    transparent_crc(p_1254->g_988.s7, "p_1254->g_988.s7", print_hash_value);
    transparent_crc(p_1254->g_999.x, "p_1254->g_999.x", print_hash_value);
    transparent_crc(p_1254->g_999.y, "p_1254->g_999.y", print_hash_value);
    transparent_crc(p_1254->g_1011.x, "p_1254->g_1011.x", print_hash_value);
    transparent_crc(p_1254->g_1011.y, "p_1254->g_1011.y", print_hash_value);
    transparent_crc(p_1254->g_1011.z, "p_1254->g_1011.z", print_hash_value);
    transparent_crc(p_1254->g_1011.w, "p_1254->g_1011.w", print_hash_value);
    transparent_crc(p_1254->g_1012.s0, "p_1254->g_1012.s0", print_hash_value);
    transparent_crc(p_1254->g_1012.s1, "p_1254->g_1012.s1", print_hash_value);
    transparent_crc(p_1254->g_1012.s2, "p_1254->g_1012.s2", print_hash_value);
    transparent_crc(p_1254->g_1012.s3, "p_1254->g_1012.s3", print_hash_value);
    transparent_crc(p_1254->g_1012.s4, "p_1254->g_1012.s4", print_hash_value);
    transparent_crc(p_1254->g_1012.s5, "p_1254->g_1012.s5", print_hash_value);
    transparent_crc(p_1254->g_1012.s6, "p_1254->g_1012.s6", print_hash_value);
    transparent_crc(p_1254->g_1012.s7, "p_1254->g_1012.s7", print_hash_value);
    transparent_crc(p_1254->g_1012.s8, "p_1254->g_1012.s8", print_hash_value);
    transparent_crc(p_1254->g_1012.s9, "p_1254->g_1012.s9", print_hash_value);
    transparent_crc(p_1254->g_1012.sa, "p_1254->g_1012.sa", print_hash_value);
    transparent_crc(p_1254->g_1012.sb, "p_1254->g_1012.sb", print_hash_value);
    transparent_crc(p_1254->g_1012.sc, "p_1254->g_1012.sc", print_hash_value);
    transparent_crc(p_1254->g_1012.sd, "p_1254->g_1012.sd", print_hash_value);
    transparent_crc(p_1254->g_1012.se, "p_1254->g_1012.se", print_hash_value);
    transparent_crc(p_1254->g_1012.sf, "p_1254->g_1012.sf", print_hash_value);
    transparent_crc(p_1254->g_1042.s0, "p_1254->g_1042.s0", print_hash_value);
    transparent_crc(p_1254->g_1042.s1, "p_1254->g_1042.s1", print_hash_value);
    transparent_crc(p_1254->g_1042.s2, "p_1254->g_1042.s2", print_hash_value);
    transparent_crc(p_1254->g_1042.s3, "p_1254->g_1042.s3", print_hash_value);
    transparent_crc(p_1254->g_1042.s4, "p_1254->g_1042.s4", print_hash_value);
    transparent_crc(p_1254->g_1042.s5, "p_1254->g_1042.s5", print_hash_value);
    transparent_crc(p_1254->g_1042.s6, "p_1254->g_1042.s6", print_hash_value);
    transparent_crc(p_1254->g_1042.s7, "p_1254->g_1042.s7", print_hash_value);
    transparent_crc(p_1254->g_1042.s8, "p_1254->g_1042.s8", print_hash_value);
    transparent_crc(p_1254->g_1042.s9, "p_1254->g_1042.s9", print_hash_value);
    transparent_crc(p_1254->g_1042.sa, "p_1254->g_1042.sa", print_hash_value);
    transparent_crc(p_1254->g_1042.sb, "p_1254->g_1042.sb", print_hash_value);
    transparent_crc(p_1254->g_1042.sc, "p_1254->g_1042.sc", print_hash_value);
    transparent_crc(p_1254->g_1042.sd, "p_1254->g_1042.sd", print_hash_value);
    transparent_crc(p_1254->g_1042.se, "p_1254->g_1042.se", print_hash_value);
    transparent_crc(p_1254->g_1042.sf, "p_1254->g_1042.sf", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1254->g_1064[i], "p_1254->g_1064[i]", print_hash_value);

    }
    transparent_crc(p_1254->g_1081.f0, "p_1254->g_1081.f0", print_hash_value);
    transparent_crc(p_1254->g_1081.f1, "p_1254->g_1081.f1", print_hash_value);
    transparent_crc(p_1254->g_1081.f2, "p_1254->g_1081.f2", print_hash_value);
    transparent_crc(p_1254->g_1081.f3, "p_1254->g_1081.f3", print_hash_value);
    transparent_crc(p_1254->g_1081.f4, "p_1254->g_1081.f4", print_hash_value);
    transparent_crc(p_1254->g_1081.f5, "p_1254->g_1081.f5", print_hash_value);
    transparent_crc(p_1254->g_1081.f6, "p_1254->g_1081.f6", print_hash_value);
    transparent_crc(p_1254->g_1081.f7, "p_1254->g_1081.f7", print_hash_value);
    transparent_crc(p_1254->g_1081.f8, "p_1254->g_1081.f8", print_hash_value);
    transparent_crc(p_1254->g_1084.f0, "p_1254->g_1084.f0", print_hash_value);
    transparent_crc(p_1254->g_1084.f1, "p_1254->g_1084.f1", print_hash_value);
    transparent_crc(p_1254->g_1084.f2, "p_1254->g_1084.f2", print_hash_value);
    transparent_crc(p_1254->g_1084.f3, "p_1254->g_1084.f3", print_hash_value);
    transparent_crc(p_1254->g_1084.f4, "p_1254->g_1084.f4", print_hash_value);
    transparent_crc(p_1254->g_1084.f5, "p_1254->g_1084.f5", print_hash_value);
    transparent_crc(p_1254->g_1084.f6, "p_1254->g_1084.f6", print_hash_value);
    transparent_crc(p_1254->g_1084.f7, "p_1254->g_1084.f7", print_hash_value);
    transparent_crc(p_1254->g_1084.f8, "p_1254->g_1084.f8", print_hash_value);
    transparent_crc(p_1254->g_1087.f0, "p_1254->g_1087.f0", print_hash_value);
    transparent_crc(p_1254->g_1087.f1, "p_1254->g_1087.f1", print_hash_value);
    transparent_crc(p_1254->g_1087.f2, "p_1254->g_1087.f2", print_hash_value);
    transparent_crc(p_1254->g_1087.f3, "p_1254->g_1087.f3", print_hash_value);
    transparent_crc(p_1254->g_1087.f4, "p_1254->g_1087.f4", print_hash_value);
    transparent_crc(p_1254->g_1087.f5, "p_1254->g_1087.f5", print_hash_value);
    transparent_crc(p_1254->g_1087.f6, "p_1254->g_1087.f6", print_hash_value);
    transparent_crc(p_1254->g_1087.f7, "p_1254->g_1087.f7", print_hash_value);
    transparent_crc(p_1254->g_1087.f8, "p_1254->g_1087.f8", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1254->g_1088[i][j][k].f0, "p_1254->g_1088[i][j][k].f0", print_hash_value);
                transparent_crc(p_1254->g_1088[i][j][k].f1, "p_1254->g_1088[i][j][k].f1", print_hash_value);
                transparent_crc(p_1254->g_1088[i][j][k].f2, "p_1254->g_1088[i][j][k].f2", print_hash_value);
                transparent_crc(p_1254->g_1088[i][j][k].f3, "p_1254->g_1088[i][j][k].f3", print_hash_value);
                transparent_crc(p_1254->g_1088[i][j][k].f4, "p_1254->g_1088[i][j][k].f4", print_hash_value);
                transparent_crc(p_1254->g_1088[i][j][k].f5, "p_1254->g_1088[i][j][k].f5", print_hash_value);
                transparent_crc(p_1254->g_1088[i][j][k].f6, "p_1254->g_1088[i][j][k].f6", print_hash_value);
                transparent_crc(p_1254->g_1088[i][j][k].f7, "p_1254->g_1088[i][j][k].f7", print_hash_value);
                transparent_crc(p_1254->g_1088[i][j][k].f8, "p_1254->g_1088[i][j][k].f8", print_hash_value);

            }
        }
    }
    transparent_crc(p_1254->g_1096.s0, "p_1254->g_1096.s0", print_hash_value);
    transparent_crc(p_1254->g_1096.s1, "p_1254->g_1096.s1", print_hash_value);
    transparent_crc(p_1254->g_1096.s2, "p_1254->g_1096.s2", print_hash_value);
    transparent_crc(p_1254->g_1096.s3, "p_1254->g_1096.s3", print_hash_value);
    transparent_crc(p_1254->g_1096.s4, "p_1254->g_1096.s4", print_hash_value);
    transparent_crc(p_1254->g_1096.s5, "p_1254->g_1096.s5", print_hash_value);
    transparent_crc(p_1254->g_1096.s6, "p_1254->g_1096.s6", print_hash_value);
    transparent_crc(p_1254->g_1096.s7, "p_1254->g_1096.s7", print_hash_value);
    transparent_crc(p_1254->g_1112.x, "p_1254->g_1112.x", print_hash_value);
    transparent_crc(p_1254->g_1112.y, "p_1254->g_1112.y", print_hash_value);
    transparent_crc(p_1254->g_1112.z, "p_1254->g_1112.z", print_hash_value);
    transparent_crc(p_1254->g_1112.w, "p_1254->g_1112.w", print_hash_value);
    transparent_crc(p_1254->g_1135.x, "p_1254->g_1135.x", print_hash_value);
    transparent_crc(p_1254->g_1135.y, "p_1254->g_1135.y", print_hash_value);
    transparent_crc(p_1254->g_1163.s0, "p_1254->g_1163.s0", print_hash_value);
    transparent_crc(p_1254->g_1163.s1, "p_1254->g_1163.s1", print_hash_value);
    transparent_crc(p_1254->g_1163.s2, "p_1254->g_1163.s2", print_hash_value);
    transparent_crc(p_1254->g_1163.s3, "p_1254->g_1163.s3", print_hash_value);
    transparent_crc(p_1254->g_1163.s4, "p_1254->g_1163.s4", print_hash_value);
    transparent_crc(p_1254->g_1163.s5, "p_1254->g_1163.s5", print_hash_value);
    transparent_crc(p_1254->g_1163.s6, "p_1254->g_1163.s6", print_hash_value);
    transparent_crc(p_1254->g_1163.s7, "p_1254->g_1163.s7", print_hash_value);
    transparent_crc(p_1254->g_1200.f0, "p_1254->g_1200.f0", print_hash_value);
    transparent_crc(p_1254->g_1202.f0, "p_1254->g_1202.f0", print_hash_value);
    transparent_crc(p_1254->g_1215.x, "p_1254->g_1215.x", print_hash_value);
    transparent_crc(p_1254->g_1215.y, "p_1254->g_1215.y", print_hash_value);
    transparent_crc(p_1254->g_1216.x, "p_1254->g_1216.x", print_hash_value);
    transparent_crc(p_1254->g_1216.y, "p_1254->g_1216.y", print_hash_value);
    transparent_crc(p_1254->g_1216.z, "p_1254->g_1216.z", print_hash_value);
    transparent_crc(p_1254->g_1216.w, "p_1254->g_1216.w", print_hash_value);
    transparent_crc(p_1254->g_1233.s0, "p_1254->g_1233.s0", print_hash_value);
    transparent_crc(p_1254->g_1233.s1, "p_1254->g_1233.s1", print_hash_value);
    transparent_crc(p_1254->g_1233.s2, "p_1254->g_1233.s2", print_hash_value);
    transparent_crc(p_1254->g_1233.s3, "p_1254->g_1233.s3", print_hash_value);
    transparent_crc(p_1254->g_1233.s4, "p_1254->g_1233.s4", print_hash_value);
    transparent_crc(p_1254->g_1233.s5, "p_1254->g_1233.s5", print_hash_value);
    transparent_crc(p_1254->g_1233.s6, "p_1254->g_1233.s6", print_hash_value);
    transparent_crc(p_1254->g_1233.s7, "p_1254->g_1233.s7", print_hash_value);
    transparent_crc(p_1254->g_1233.s8, "p_1254->g_1233.s8", print_hash_value);
    transparent_crc(p_1254->g_1233.s9, "p_1254->g_1233.s9", print_hash_value);
    transparent_crc(p_1254->g_1233.sa, "p_1254->g_1233.sa", print_hash_value);
    transparent_crc(p_1254->g_1233.sb, "p_1254->g_1233.sb", print_hash_value);
    transparent_crc(p_1254->g_1233.sc, "p_1254->g_1233.sc", print_hash_value);
    transparent_crc(p_1254->g_1233.sd, "p_1254->g_1233.sd", print_hash_value);
    transparent_crc(p_1254->g_1233.se, "p_1254->g_1233.se", print_hash_value);
    transparent_crc(p_1254->g_1233.sf, "p_1254->g_1233.sf", print_hash_value);
    transparent_crc(p_1254->g_1235.s0, "p_1254->g_1235.s0", print_hash_value);
    transparent_crc(p_1254->g_1235.s1, "p_1254->g_1235.s1", print_hash_value);
    transparent_crc(p_1254->g_1235.s2, "p_1254->g_1235.s2", print_hash_value);
    transparent_crc(p_1254->g_1235.s3, "p_1254->g_1235.s3", print_hash_value);
    transparent_crc(p_1254->g_1235.s4, "p_1254->g_1235.s4", print_hash_value);
    transparent_crc(p_1254->g_1235.s5, "p_1254->g_1235.s5", print_hash_value);
    transparent_crc(p_1254->g_1235.s6, "p_1254->g_1235.s6", print_hash_value);
    transparent_crc(p_1254->g_1235.s7, "p_1254->g_1235.s7", print_hash_value);
    transparent_crc(p_1254->g_1253, "p_1254->g_1253", print_hash_value);
    transparent_crc(p_1254->v_collective, "p_1254->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 98; i++)
            transparent_crc(p_1254->g_special_values[i + 98 * get_linear_group_id()], "p_1254->g_special_values[i + 98 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 98; i++)
            transparent_crc(p_1254->l_special_values[i], "p_1254->l_special_values[i]", print_hash_value);
    transparent_crc(p_1254->l_comm_values[get_linear_local_id()], "p_1254->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1254->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_1254->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
