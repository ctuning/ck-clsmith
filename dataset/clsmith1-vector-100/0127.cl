// ---fake_divergence -g 84,85,1 -l 6,5,1
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


// Seed: 127

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int8_t * volatile  f0;
   int32_t  f1;
};

struct S1 {
    int32_t g_3;
    int8_t g_9;
    int64_t g_15;
    uint64_t g_22;
    int32_t g_26;
    int8_t g_27;
    volatile VECTOR(int32_t, 16) g_30;
    int32_t g_44;
    int32_t g_81;
    uint32_t g_88[9];
    uint64_t g_114[8];
    volatile VECTOR(int8_t, 8) g_122;
    VECTOR(uint8_t, 4) g_125;
    VECTOR(int8_t, 4) g_130;
    volatile VECTOR(int8_t, 8) g_135;
    uint64_t g_142;
    int32_t * volatile g_146;
    VECTOR(int32_t, 2) g_149;
    int16_t g_172;
    int16_t g_178;
    volatile VECTOR(int16_t, 4) g_191;
    union U0 g_222;
    union U0 *g_224;
    union U0 ** volatile g_223;
    int32_t ** volatile g_236;
    int32_t *g_238;
    int32_t ** volatile g_237;
    volatile VECTOR(uint8_t, 8) g_279;
    VECTOR(uint8_t, 4) g_280;
    VECTOR(int8_t, 8) g_295;
    VECTOR(int8_t, 8) g_296;
    VECTOR(int8_t, 4) g_304;
    uint16_t g_312;
    uint16_t g_314[5][2][10];
    union U0 ** volatile g_324[2];
    union U0 ** volatile g_325;
    union U0 ** volatile g_326[7][9];
    union U0 ** volatile g_327;
    volatile VECTOR(int8_t, 2) g_353;
    volatile uint8_t *g_402[4];
    int32_t * volatile g_404;
    int32_t * volatile *g_403;
    int32_t * volatile g_413;
    int64_t *g_425;
    int32_t g_427;
    int32_t * volatile g_428;
    int32_t * volatile g_429;
    VECTOR(uint8_t, 16) g_432;
    union U0 ** volatile g_443;
    uint8_t g_451[3][6];
    int64_t g_454[5];
    volatile int32_t g_462;
    volatile int32_t g_464;
    volatile VECTOR(uint16_t, 16) g_505;
    volatile VECTOR(uint16_t, 2) g_507;
    volatile VECTOR(uint16_t, 2) g_508;
    int8_t g_512;
    uint32_t g_520;
    union U0 g_546;
    volatile union U0 g_557[4];
    int32_t *g_562;
    int32_t **g_561;
    int32_t ***g_560;
    uint64_t *g_576;
    int32_t ** volatile g_578;
    volatile VECTOR(uint32_t, 16) g_596;
    volatile VECTOR(int8_t, 8) g_605;
    VECTOR(int8_t, 16) g_608;
    VECTOR(int16_t, 4) g_654;
    volatile VECTOR(int16_t, 16) g_662;
    uint64_t g_680;
    volatile VECTOR(uint8_t, 16) g_682;
    int32_t ** volatile g_690;
    int32_t ** volatile g_691;
    VECTOR(int64_t, 4) g_692;
    volatile VECTOR(int64_t, 4) g_699;
    volatile VECTOR(int32_t, 2) g_713;
    volatile VECTOR(uint32_t, 16) g_723;
    VECTOR(int16_t, 2) g_729;
    VECTOR(int8_t, 2) g_747;
    int64_t *g_756[1][3][8];
    volatile union U0 g_760[5][5];
    union U0 g_763;
    int64_t g_805;
    VECTOR(uint64_t, 16) g_826;
    int16_t *g_862;
    VECTOR(uint32_t, 16) g_869;
    volatile VECTOR(uint32_t, 4) g_870;
    volatile VECTOR(uint16_t, 4) g_878;
    volatile union U0 g_892;
    uint64_t * volatile * volatile * volatile g_900;
    int32_t ** volatile g_909;
    int32_t ** volatile g_910;
    int32_t ** volatile g_911;
    int32_t ** volatile g_912;
    volatile int32_t g_914[4][8][1];
    VECTOR(int64_t, 4) g_925;
    volatile union U0 g_948;
    int32_t **g_962;
    volatile union U0 g_964[7];
    VECTOR(uint32_t, 4) g_969;
    volatile VECTOR(int64_t, 8) g_998;
    VECTOR(uint16_t, 2) g_1008;
    volatile uint32_t g_1013;
    VECTOR(int16_t, 16) g_1031;
    VECTOR(int16_t, 16) g_1032;
    volatile VECTOR(int64_t, 4) g_1072;
    VECTOR(int32_t, 4) g_1075;
    volatile VECTOR(int64_t, 8) g_1076;
    VECTOR(uint8_t, 4) g_1101;
    uint32_t g_1107;
    VECTOR(uint8_t, 8) g_1128;
    VECTOR(uint64_t, 8) g_1158;
    int32_t *g_1172;
    int32_t ** volatile g_1171;
    volatile VECTOR(int64_t, 8) g_1209;
    uint32_t *g_1230;
    volatile uint16_t *g_1232;
    volatile uint16_t ** volatile g_1231;
    uint16_t *g_1234;
    uint16_t **g_1233;
    VECTOR(int8_t, 4) g_1247;
    volatile VECTOR(int8_t, 16) g_1249;
    volatile VECTOR(uint16_t, 8) g_1270;
    VECTOR(int64_t, 16) g_1271;
    volatile union U0 g_1308;
    union U0 g_1322[1];
    volatile VECTOR(uint8_t, 2) g_1341;
    volatile int64_t g_1366;
    VECTOR(int64_t, 8) g_1386;
    int32_t ** volatile g_1406;
    int32_t ** volatile g_1414;
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
int64_t  func_1(struct S1 * p_1415);
int32_t * func_4(int8_t * p_5, int8_t * p_6, int32_t  p_7, struct S1 * p_1415);
uint64_t  func_16(int32_t * p_17, uint64_t  p_18, int32_t * p_19, struct S1 * p_1415);
int32_t * func_23(uint64_t  p_24, struct S1 * p_1415);
int32_t  func_34(int32_t * p_35, struct S1 * p_1415);
int32_t * func_36(int64_t * p_37, uint32_t  p_38, uint32_t  p_39, uint64_t * p_40, struct S1 * p_1415);
uint32_t  func_41(uint64_t  p_42, struct S1 * p_1415);
uint64_t  func_51(int8_t  p_52, int32_t  p_53, int8_t * p_54, int64_t  p_55, int64_t * p_56, struct S1 * p_1415);
uint16_t  func_67(int8_t * p_68, struct S1 * p_1415);
int8_t * func_69(int32_t * p_70, int64_t * p_71, int32_t  p_72, int32_t * p_73, uint32_t  p_74, struct S1 * p_1415);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1415->g_3 p_1415->g_26 p_1415->g_238 p_1415->g_925 p_1415->g_962 p_1415->g_562 p_1415->g_81 p_1415->g_1075 p_1415->g_576 p_1415->g_146 p_1415->g_44 p_1415->g_1076 p_1415->g_1128 p_1415->g_1008 p_1415->g_869 p_1415->g_149 p_1415->g_691 p_1415->g_699 p_1415->g_729 p_1415->g_1158 p_1415->g_114 p_1415->g_88 p_1415->g_425 p_1415->g_125 p_1415->g_914 p_1415->g_1171 p_1415->g_998 p_1415->g_403 p_1415->g_404 p_1415->g_654 p_1415->g_969 p_1415->g_608 p_1415->g_1107 p_1415->g_1209 p_1415->g_605 p_1415->g_130 p_1415->g_1231 p_1415->g_1233 p_1415->g_1247 p_1415->g_1249 p_1415->g_508 p_1415->g_304 p_1415->g_1270 p_1415->g_1271 p_1415->g_9 p_1415->g_1031 p_1415->g_692 p_1415->g_22 p_1415->g_1308 p_1415->g_1322 p_1415->g_1234 p_1415->g_314 p_1415->g_429 p_1415->g_1232 p_1415->g_560 p_1415->g_561 p_1415->g_578 p_1415->g_1406 p_1415->g_142 p_1415->g_1414
 * writes: p_1415->g_3 p_1415->g_15 p_1415->g_22 p_1415->g_26 p_1415->g_27 p_1415->g_44 p_1415->g_114 p_1415->g_451 p_1415->g_1008 p_1415->g_149 p_1415->g_729 p_1415->g_425 p_1415->g_238 p_1415->g_1172 p_1415->g_1107 p_1415->g_312 p_1415->g_130 p_1415->g_1230 p_1415->g_1233 p_1415->g_125 p_1415->g_454 p_1415->g_654 p_1415->g_81
 */
int64_t  func_1(struct S1 * p_1415)
{ /* block id: 4 */
    int32_t *l_2 = &p_1415->g_3;
    int8_t *l_8 = &p_1415->g_9;
    int8_t *l_10 = &p_1415->g_9;
    VECTOR(int32_t, 4) l_13 = (VECTOR(int32_t, 4))(0x27CAD7D7L, (VECTOR(int32_t, 2))(0x27CAD7D7L, 0L), 0L);
    int64_t *l_14 = &p_1415->g_15;
    uint64_t *l_20 = (void*)0;
    uint64_t *l_21 = &p_1415->g_22;
    uint64_t l_1413 = 18446744073709551608UL;
    int i;
    (*l_2) = 0x35F394A2L;
    (*p_1415->g_1414) = func_4(l_8, l_10, ((safe_rshift_func_uint8_t_u_s((((VECTOR(int32_t, 8))(l_13.wwwxxxzx)).s7 , ((~((((*l_14) = (-1L)) , func_16(&p_1415->g_3, ((*l_21) = (*l_2)), func_23((*l_2), p_1415), p_1415)) | (safe_mul_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((((safe_add_func_int64_t_s_s((p_1415->g_88[1] || p_1415->g_142), (-1L))) && l_1413) & 0xA1D0L), 0x3939L)), (*p_1415->g_1234))))) ^ p_1415->g_1247.y)), p_1415->g_1271.sc)) <= l_1413), p_1415);
    return (*l_2);
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_691 p_1415->g_238
 * writes:
 */
int32_t * func_4(int8_t * p_5, int8_t * p_6, int32_t  p_7, struct S1 * p_1415)
{ /* block id: 479 */
    return (*p_1415->g_691);
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_699 p_1415->g_1076 p_1415->g_729 p_1415->g_1158 p_1415->g_576 p_1415->g_114 p_1415->g_88 p_1415->g_425 p_1415->g_125 p_1415->g_26 p_1415->g_914 p_1415->g_1171 p_1415->g_998 p_1415->g_3 p_1415->g_403 p_1415->g_404 p_1415->g_654 p_1415->g_969 p_1415->g_608 p_1415->g_44 p_1415->g_1231 p_1415->g_1233 p_1415->g_146 p_1415->g_1247 p_1415->g_1249 p_1415->g_508 p_1415->g_304 p_1415->g_1270 p_1415->g_1271 p_1415->g_9 p_1415->g_1031 p_1415->g_692 p_1415->g_1008 p_1415->g_22 p_1415->g_1308 p_1415->g_1322 p_1415->g_1234 p_1415->g_314 p_1415->g_429 p_1415->g_1232 p_1415->g_560 p_1415->g_561 p_1415->g_562 p_1415->g_81 p_1415->g_578 p_1415->g_238 p_1415->g_1406 p_1415->g_1107 p_1415->g_1209 p_1415->g_605 p_1415->g_130
 * writes: p_1415->g_729 p_1415->g_3 p_1415->g_44 p_1415->g_15 p_1415->g_425 p_1415->g_238 p_1415->g_1172 p_1415->g_1107 p_1415->g_312 p_1415->g_114 p_1415->g_1230 p_1415->g_1233 p_1415->g_130 p_1415->g_125 p_1415->g_454 p_1415->g_654 p_1415->g_81
 */
uint64_t  func_16(int32_t * p_17, uint64_t  p_18, int32_t * p_19, struct S1 * p_1415)
{ /* block id: 376 */
    VECTOR(int32_t, 4) l_1142 = (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x6495BC7FL), 0x6495BC7FL);
    int64_t *l_1145 = &p_1415->g_454[0];
    VECTOR(uint8_t, 16) l_1148 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 2UL), 2UL), 2UL, 255UL, 2UL, (VECTOR(uint8_t, 2))(255UL, 2UL), (VECTOR(uint8_t, 2))(255UL, 2UL), 255UL, 2UL, 255UL, 2UL);
    int16_t *l_1151 = (void*)0;
    int16_t *l_1152[4][5][9] = {{{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,&p_1415->g_178,&p_1415->g_178,(void*)0,(void*)0}}};
    int32_t l_1153[1];
    int32_t l_1154 = 0x495F314CL;
    VECTOR(uint64_t, 8) l_1157 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xCFE1174037EE9AD5L), 0xCFE1174037EE9AD5L), 0xCFE1174037EE9AD5L, 1UL, 0xCFE1174037EE9AD5L);
    VECTOR(uint32_t, 16) l_1159 = (VECTOR(uint32_t, 16))(0xE26BCA60L, (VECTOR(uint32_t, 4))(0xE26BCA60L, (VECTOR(uint32_t, 2))(0xE26BCA60L, 4UL), 4UL), 4UL, 0xE26BCA60L, 4UL, (VECTOR(uint32_t, 2))(0xE26BCA60L, 4UL), (VECTOR(uint32_t, 2))(0xE26BCA60L, 4UL), 0xE26BCA60L, 4UL, 0xE26BCA60L, 4UL);
    int64_t **l_1166 = &p_1415->g_425;
    uint32_t *l_1167 = (void*)0;
    VECTOR(uint16_t, 16) l_1190 = (VECTOR(uint16_t, 16))(0x86DAL, (VECTOR(uint16_t, 4))(0x86DAL, (VECTOR(uint16_t, 2))(0x86DAL, 65527UL), 65527UL), 65527UL, 0x86DAL, 65527UL, (VECTOR(uint16_t, 2))(0x86DAL, 65527UL), (VECTOR(uint16_t, 2))(0x86DAL, 65527UL), 0x86DAL, 65527UL, 0x86DAL, 65527UL);
    VECTOR(int64_t, 4) l_1210 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x16CD4A5F01DCDFF0L), 0x16CD4A5F01DCDFF0L);
    VECTOR(int64_t, 8) l_1211 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x689F1F89FEA74CEEL), 0x689F1F89FEA74CEEL), 0x689F1F89FEA74CEEL, 0L, 0x689F1F89FEA74CEEL);
    uint32_t l_1225 = 1UL;
    uint8_t l_1333 = 247UL;
    int32_t ***l_1367 = (void*)0;
    VECTOR(uint32_t, 2) l_1376 = (VECTOR(uint32_t, 2))(0x3BECB004L, 1UL);
    VECTOR(int64_t, 16) l_1382 = (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0x3AC1DCFC2293DB73L), 0x3AC1DCFC2293DB73L), 0x3AC1DCFC2293DB73L, (-8L), 0x3AC1DCFC2293DB73L, (VECTOR(int64_t, 2))((-8L), 0x3AC1DCFC2293DB73L), (VECTOR(int64_t, 2))((-8L), 0x3AC1DCFC2293DB73L), (-8L), 0x3AC1DCFC2293DB73L, (-8L), 0x3AC1DCFC2293DB73L);
    VECTOR(int64_t, 4) l_1387 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L));
    uint64_t l_1388 = 7UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1153[i] = 0x5B428FE8L;
    if (((p_1415->g_699.x , ((VECTOR(int32_t, 16))(l_1142.xyxxzxzxxzzywxxz)).sa) , (p_18 ^ (safe_sub_func_int8_t_s_s(((l_1145 = l_1145) != ((*l_1166) = ((0x132F29A2B3A829F7L || (safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_1148.sc3)).yxyxyyyy)).hi)))).x, (safe_sub_func_uint16_t_u_u(p_1415->g_1076.s4, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))((l_1154 = (l_1153[0] = (p_1415->g_729.x &= 1L))), (l_1154 ^= ((((*p_1415->g_425) = (((safe_div_func_int64_t_s_s(l_1142.z, ((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 16))(l_1157.s6244377334160734)).scb, ((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1415->g_1158.s17)), 0x45E6CC8AEBBE6B47L, 0x9B999E3F484B7499L)).odd, (uint64_t)p_18)))))).hi)) == (((*p_19) = (((VECTOR(uint32_t, 16))(l_1159.s148e5a52d3bbc908)).s8 >= (((safe_sub_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((*p_17) = ((((safe_rshift_func_uint16_t_u_u(1UL, l_1157.s7)) , (*p_1415->g_576)) ^ l_1153[0]) & 65535UL)) <= 0xFC6C08A7L), 0x478CL)), p_1415->g_88[6])) < 5UL) , 1UL))) > 0x112E16BFL)) ^ 0x6C6A520DL)) || 1L) , 0x2AF0L)), ((VECTOR(int16_t, 2))((-1L))), 0x2F98L, 0x5B29L, 0x66D9L, p_1415->g_88[1], ((VECTOR(int16_t, 2))(1L)), p_1415->g_125.z, ((VECTOR(int16_t, 4))(0x14BCL)), 0x4AFDL)).hi)), ((VECTOR(int16_t, 8))(0x3277L))))).hi, ((VECTOR(uint16_t, 4))(0xC048L))))))))).w))))) , (void*)0))), p_1415->g_26)))))
    { /* block id: 386 */
        uint32_t *l_1169 = &p_1415->g_88[1];
        uint32_t **l_1168 = &l_1169;
        int32_t **l_1170 = &p_1415->g_238;
        int8_t *l_1173 = (void*)0;
        int64_t l_1179 = 0x49C99E922DBDEB05L;
        int8_t *l_1180[4][9] = {{(void*)0,&p_1415->g_9,(void*)0,&p_1415->g_9,(void*)0,(void*)0,&p_1415->g_9,(void*)0,&p_1415->g_9},{(void*)0,&p_1415->g_9,(void*)0,&p_1415->g_9,(void*)0,(void*)0,&p_1415->g_9,(void*)0,&p_1415->g_9},{(void*)0,&p_1415->g_9,(void*)0,&p_1415->g_9,(void*)0,(void*)0,&p_1415->g_9,(void*)0,&p_1415->g_9},{(void*)0,&p_1415->g_9,(void*)0,&p_1415->g_9,(void*)0,(void*)0,&p_1415->g_9,(void*)0,&p_1415->g_9}};
        int8_t **l_1181 = &l_1180[0][6];
        int64_t l_1182 = 0x7A4E789C344DA71FL;
        VECTOR(uint64_t, 4) l_1240 = (VECTOR(uint64_t, 4))(0x1A4765CCEF347B5EL, (VECTOR(uint64_t, 2))(0x1A4765CCEF347B5EL, 0x85E96DE1595B4A38L), 0x85E96DE1595B4A38L);
        VECTOR(int8_t, 16) l_1243 = (VECTOR(int8_t, 16))(0x1EL, (VECTOR(int8_t, 4))(0x1EL, (VECTOR(int8_t, 2))(0x1EL, 0x2FL), 0x2FL), 0x2FL, 0x1EL, 0x2FL, (VECTOR(int8_t, 2))(0x1EL, 0x2FL), (VECTOR(int8_t, 2))(0x1EL, 0x2FL), 0x1EL, 0x2FL, 0x1EL, 0x2FL);
        uint8_t l_1244 = 0xB5L;
        int8_t l_1246 = 0x5EL;
        uint8_t l_1280 = 0x71L;
        int16_t l_1284 = 0x246CL;
        int32_t l_1285 = 0x53C9574EL;
        int32_t l_1290 = 0x049B2BA4L;
        int32_t l_1292[4];
        VECTOR(int64_t, 16) l_1380 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x5313CACA59F1D20EL), 0x5313CACA59F1D20EL), 0x5313CACA59F1D20EL, 1L, 0x5313CACA59F1D20EL, (VECTOR(int64_t, 2))(1L, 0x5313CACA59F1D20EL), (VECTOR(int64_t, 2))(1L, 0x5313CACA59F1D20EL), 1L, 0x5313CACA59F1D20EL, 1L, 0x5313CACA59F1D20EL);
        uint16_t l_1396 = 0xFA16L;
        uint16_t l_1403 = 0UL;
        int i, j;
        for (i = 0; i < 4; i++)
            l_1292[i] = 0x1AB8FDEAL;
        (*p_1415->g_1171) = ((p_1415->g_914[2][6][0] != ((VECTOR(int32_t, 4))((l_1167 == ((*l_1168) = (void*)0)), (-10L), 1L, 0x5A138E98L)).x) , ((*l_1170) = (void*)0));
        if (((((0x2AL || ((((((l_1173 = (void*)0) != ((*l_1181) = ((&p_1415->g_88[1] == l_1167) , &p_1415->g_512))) > 1UL) , p_1415->g_998.s0) > (*p_17)) && l_1182)) == 0x0E686A01L) & l_1159.sd) <= GROUP_DIVERGE(2, 1)))
        { /* block id: 393 */
            int32_t l_1183[7];
            int32_t l_1216 = 0x2B4EA32FL;
            uint16_t *l_1217 = (void*)0;
            VECTOR(int64_t, 2) l_1277 = (VECTOR(int64_t, 2))(0x735724ED3C3F3343L, 0x01AEAFA4E8E4FC55L);
            int32_t l_1286[7] = {0x747D2A4FL,(-1L),0x747D2A4FL,0x747D2A4FL,(-1L),0x747D2A4FL,0x747D2A4FL};
            int64_t l_1291 = (-4L);
            int32_t l_1319 = 0x2C7491C5L;
            int64_t l_1332 = 0x31098472605D1D12L;
            uint8_t *l_1362 = (void*)0;
            uint64_t *l_1379 = &p_1415->g_114[5];
            VECTOR(int64_t, 4) l_1381 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x0043088F4DA053C5L), 0x0043088F4DA053C5L);
            int i;
            for (i = 0; i < 7; i++)
                l_1183[i] = 0x30B4D0D2L;
lbl_1283:
            (*p_17) = 0L;
            if ((((*p_1415->g_403) != (l_1183[5] , (void*)0)) != (((safe_div_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(p_1415->g_654.z, 2)), p_1415->g_969.y)) , ((((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_1190.s404b)))).hi)).even, (safe_sub_func_int8_t_s_s((0x694B6391D5F7B04FL == ((safe_unary_minus_func_uint8_t_u(((p_1415->g_608.sd ^ ((void*)0 == &p_1415->g_172)) , 5UL))) & p_1415->g_44)), l_1183[1])))) != l_1183[4]) && p_18) >= (*p_1415->g_576))) > 0x563D1600L)))
            { /* block id: 395 */
                for (p_1415->g_1107 = (-1); (p_1415->g_1107 >= 51); p_1415->g_1107 = safe_add_func_uint16_t_u_u(p_1415->g_1107, 2))
                { /* block id: 398 */
                    if ((*p_19))
                        break;
                    for (p_1415->g_312 = (-18); (p_1415->g_312 != 57); p_1415->g_312++)
                    { /* block id: 402 */
                        int32_t *l_1200 = &p_1415->g_44;
                        (*l_1170) = l_1200;
                    }
                }
                (*p_17) = (p_18 != ((((l_1216 = (safe_add_func_uint8_t_u_u(p_18, (safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(0xBDF8L, ((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 8))(1UL, (safe_mul_func_uint8_t_u_u((&p_1415->g_454[1] == (*l_1166)), (p_1415->g_130.x |= (9L & (l_1154 |= ((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 16))(0x1351255F37691348L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(p_1415->g_1209.s5075470454501422)).s1c0e)), ((VECTOR(int64_t, 8))(p_18, (l_1153[0] != (-9L)), 0x6652025A22B2777DL, ((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 2))(3L, 0x0EAD507DD7C21926L)).yyxx, ((VECTOR(int64_t, 8))(l_1210.xzxwxwxz)).lo, ((VECTOR(int64_t, 2))(l_1211.s37)).xxyy))), 0L)).s7, 1L, 1L, (((safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(0xDAL, GROUP_DIVERGE(2, 1))), 65535UL)) < 1L) , p_18), 0x666EEDE7768EC989L, 0x77B6B1EA4B216998L, p_18, 0x2EA4CA1D9128ED87L, (-6L), 0x38AA3FF03B03EC5DL, 0x4BEEB5E36B1A1D44L)).s8, l_1159.sa)) , p_1415->g_605.s3)))))), l_1183[5], 0x0852L, l_1183[0], l_1190.s9, 65534UL, 0x1B47L)), ((VECTOR(uint16_t, 8))(0x931DL))))), 1UL, ((VECTOR(uint16_t, 4))(0x0D1EL)), 1UL, 0xE3F8L)).s4, 5))))) < l_1157.s0) , l_1217) != (void*)0));
            }
            else
            { /* block id: 410 */
                int32_t *l_1218 = &l_1154;
                int32_t *l_1219 = (void*)0;
                int32_t *l_1220 = &l_1153[0];
                int32_t *l_1221 = (void*)0;
                int32_t *l_1222 = &l_1153[0];
                int32_t *l_1223 = (void*)0;
                int32_t *l_1224[5] = {&p_1415->g_3,&p_1415->g_3,&p_1415->g_3,&p_1415->g_3,&p_1415->g_3};
                uint16_t ***l_1235 = &p_1415->g_1233;
                VECTOR(int8_t, 16) l_1248 = (VECTOR(int8_t, 16))(0x4CL, (VECTOR(int8_t, 4))(0x4CL, (VECTOR(int8_t, 2))(0x4CL, 0L), 0L), 0L, 0x4CL, 0L, (VECTOR(int8_t, 2))(0x4CL, 0L), (VECTOR(int8_t, 2))(0x4CL, 0L), 0x4CL, 0L, 0x4CL, 0L);
                VECTOR(int16_t, 4) l_1252 = (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x5946L), 0x5946L);
                uint8_t l_1310 = 247UL;
                uint16_t l_1314[10] = {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL};
                VECTOR(int64_t, 2) l_1354 = (VECTOR(int64_t, 2))((-10L), 0x1B785789DB78361DL);
                VECTOR(int64_t, 8) l_1383 = (VECTOR(int64_t, 8))(0x0572490466C6E727L, (VECTOR(int64_t, 4))(0x0572490466C6E727L, (VECTOR(int64_t, 2))(0x0572490466C6E727L, (-2L)), (-2L)), (-2L), 0x0572490466C6E727L, (-2L));
                int i;
                l_1225--;
                if ((((((*p_1415->g_576)--) || (&p_1415->g_690 == &l_1170)) || (0x47150E667C1AE45BL == ((p_1415->g_1230 = p_19) != l_1169))) >= (l_1216 &= (p_1415->g_1231 != ((*l_1235) = p_1415->g_1233)))))
                { /* block id: 416 */
                    uint8_t l_1245 = 2UL;
                    uint32_t **l_1257 = &p_1415->g_1230;
                    uint32_t l_1266 = 4294967294UL;
                    VECTOR(int64_t, 2) l_1272 = (VECTOR(int64_t, 2))(9L, 0x74AA2270B5964B8FL);
                    int32_t l_1288 = 0x5FD52B15L;
                    int32_t l_1293 = (-4L);
                    int32_t l_1294 = 1L;
                    uint16_t l_1295 = 65535UL;
                    uint64_t **l_1299 = &p_1415->g_576;
                    uint64_t ***l_1298 = &l_1299;
                    int i;
                    l_1216 = (*p_1415->g_146);
                    if ((((safe_mul_func_uint16_t_u_u(l_1225, (((safe_rshift_func_uint8_t_u_u(l_1159.sc, (((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_1240.xzyyxwwywzzyywwx)).s90)).lo < p_18) , (~(safe_rshift_func_int8_t_s_u((l_1153[0] &= ((VECTOR(int8_t, 16))(l_1243.sed3a1b4dda5ede94)).s5), 2)))) >= l_1244))) <= l_1245) > (l_1246 ^= (*p_1415->g_576))))) ^ ((p_1415->g_130.x = ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(6L, 0L, 0x75L, 3L)).wzywxzyz, ((VECTOR(int8_t, 4))(p_1415->g_1247.yyyw)).zzzxzyzy, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_1248.s70)).xxyxxxxyxxyxyxxx)).sf6ce)).zwyyxzxz)).s74)).xxyyxxyy))), ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 2))(p_1415->g_1249.s79)).xyyyyyyyyyyyxxxx, (int8_t)((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x6170L, 1L)))), ((VECTOR(int16_t, 4))(l_1252.wzwx)).hi))).odd, 8)) > ((p_1415->g_508.x , (safe_mod_func_int64_t_s_s(((((safe_mod_func_int32_t_s_s((p_19 == ((*l_1257) = p_19)), p_18)) ^ (*p_17)) | p_18) > l_1179), 0x4B9FC7E252524421L))) != 0x4DA55779L))))).sd2, ((VECTOR(int8_t, 2))(0x42L))))).yyxxxyxx, ((VECTOR(int8_t, 8))((-8L)))))).s7) == p_1415->g_304.w)) ^ p_1415->g_304.w))
                    { /* block id: 422 */
                        VECTOR(int8_t, 16) l_1267 = (VECTOR(int8_t, 16))(0x2EL, (VECTOR(int8_t, 4))(0x2EL, (VECTOR(int8_t, 2))(0x2EL, 0L), 0L), 0L, 0x2EL, 0L, (VECTOR(int8_t, 2))(0x2EL, 0L), (VECTOR(int8_t, 2))(0x2EL, 0L), 0x2EL, 0L, 0x2EL, 0L);
                        uint8_t *l_1281 = (void*)0;
                        uint8_t *l_1282 = (void*)0;
                        int i;
                        (*p_19) = (safe_add_func_int32_t_s_s((((((safe_add_func_int64_t_s_s(0x36A3907E7814C6B2L, (safe_mul_func_uint8_t_u_u((p_1415->g_125.x = ((((l_1245 != (p_18 | (l_1153[0] |= (0x03L >= ((safe_div_func_int8_t_s_s(l_1266, ((((VECTOR(int8_t, 16))(l_1267.sd817a09d04ed6363)).se == (~(safe_add_func_int16_t_s_s((0L > ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(p_1415->g_1270.s53)))).yxyyyxyx)))).lo)).zyxyxyxxwzzzzyzy)).s5), ((((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 8))(p_1415->g_1271.s040ec141)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))((((((VECTOR(int64_t, 4))(l_1272.xyxy)).x | ((p_18 || (((-1L) != ((((safe_add_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (((VECTOR(int64_t, 4))(l_1277.xyxy)).y == ((safe_mul_func_uint8_t_u_u(l_1183[5], p_1415->g_3)) , l_1267.sd)))) & (*p_1415->g_576)), p_18)) || 0x5FCE65D351A2E6EEL) & l_1280) ^ p_1415->g_9)) , p_1415->g_1031.sc)) <= 0x79D0L)) ^ 1UL) > p_1415->g_692.w), (-8L), 0x36A8DF93ACCC8D5BL, 1L)).odd)), 0x2052BB5D06B87F54L, 0x16E6AC076E8FC3DFL)).wywwyzwz))))), ((VECTOR(int64_t, 8))(3L))))).s3 , p_18) , p_1415->g_1008.y))))) || 0L))) != (-1L)))))) & l_1245) , l_1225) && p_18)), p_1415->g_608.s3)))) > p_1415->g_22) < p_1415->g_114[5]) , l_1272.x) && l_1272.x), p_18));
                        if (l_1244)
                            goto lbl_1283;
                        return l_1159.sf;
                    }
                    else
                    { /* block id: 428 */
                        int8_t l_1287 = 0L;
                        int32_t l_1289 = 0L;
                        (*l_1218) = (*p_17);
                        l_1295--;
                    }
                    (*l_1298) = &p_1415->g_576;
                }
                else
                { /* block id: 433 */
                    VECTOR(int16_t, 16) l_1309 = (VECTOR(int16_t, 16))(0x6DD9L, (VECTOR(int16_t, 4))(0x6DD9L, (VECTOR(int16_t, 2))(0x6DD9L, 0L), 0L), 0L, 0x6DD9L, 0L, (VECTOR(int16_t, 2))(0x6DD9L, 0L), (VECTOR(int16_t, 2))(0x6DD9L, 0L), 0x6DD9L, 0L, 0x6DD9L, 0L);
                    int32_t l_1313 = 1L;
                    int i;
                    (*p_17) |= (safe_mod_func_int64_t_s_s(((((*l_1145) = (l_1154 = ((((safe_add_func_int32_t_s_s((p_18 & (-7L)), ((safe_lshift_func_int8_t_s_s((((((((p_1415->g_608.sf & (safe_lshift_func_int16_t_s_u(((p_1415->g_1308 , FAKE_DIVERGE(p_1415->global_1_offset, get_global_id(1), 10)) == ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(0x4DA669CEL, 0x75B31251L, 0x13E0EF5DL, 0x1F19564FL)).hi)).hi), (((-5L) & 1UL) >= ((((l_1211.s0 >= 8UL) <= ((VECTOR(int16_t, 4))(l_1309.s12f4)).z) || ((*l_1168) == (void*)0)) || p_18))))) && l_1142.y) & p_18) , (void*)0) != (void*)0) <= l_1309.sc) > l_1291), 6)) <= (-5L)))) & p_1415->g_304.y) , l_1153[0]) & 0xA5039B2FEB7D32A5L))) & l_1277.y) >= l_1310), (*p_1415->g_576)));
                    l_1313 = (safe_sub_func_int8_t_s_s(l_1309.s2, 249UL));
                    ++l_1314[0];
                    return p_18;
                }
                if (((safe_mod_func_int32_t_s_s((*p_17), (l_1319 || ((safe_div_func_uint64_t_u_u(((*l_1235) == (p_1415->g_1322[0] , (*l_1235))), p_18)) > (18446744073709551609UL > p_18))))) == (safe_mod_func_int8_t_s_s(p_18, p_18))))
                { /* block id: 441 */
                    if (l_1286[1])
                    { /* block id: 442 */
                        (*l_1218) = (-1L);
                    }
                    else
                    { /* block id: 444 */
                        (*l_1170) = p_17;
                    }
                }
                else
                { /* block id: 447 */
                    int64_t l_1325[7][5][7] = {{{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L}},{{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L}},{{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L}},{{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L}},{{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L}},{{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L}},{{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L},{(-9L),0L,0x44786959B5D51235L,2L,(-2L),0L,0x416D14E0E3E826A1L}}};
                    int32_t l_1326 = 0x7942E816L;
                    int32_t l_1327 = (-5L);
                    int32_t l_1328 = (-1L);
                    int32_t l_1329 = 0L;
                    int32_t l_1330 = 0x04737BB9L;
                    int32_t l_1331[5][6] = {{8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L}};
                    uint8_t *l_1361 = &l_1333;
                    uint64_t *l_1363 = (void*)0;
                    uint64_t *l_1364 = (void*)0;
                    uint64_t *l_1365[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i, j, k;
                    --l_1333;
                    (*l_1220) = ((((((safe_div_func_uint32_t_u_u(((l_1216 = (-3L)) || 0x54D9E8E30EFBFE9FL), (safe_unary_minus_func_uint32_t_u((safe_add_func_int64_t_s_s((((void*)0 == p_17) > (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(p_1415->g_1341.yyyyxxxyyxxyxxxx)).lo)).s46, ((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 4))((((((((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))((safe_mod_func_uint64_t_u_u((safe_add_func_int64_t_s_s(((*l_1145) = (safe_add_func_uint16_t_u_u(((p_1415->g_432.s6 ^= (safe_mul_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(p_18, ((*p_1415->g_576) = 0UL))), ((safe_div_func_uint32_t_u_u((!((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 16))(l_1354.yxyyxyyxyxxxxxxy)).even, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((safe_mod_func_int64_t_s_s((safe_sub_func_uint64_t_u_u((p_1415->g_142 = ((safe_sub_func_int8_t_s_s((((p_18 || 0x741B407AL) , l_1361) == l_1362), 0x2DL)) , p_1415->g_1271.sa)), p_18)), p_18)) | l_1286[3]), l_1142.y, p_18, ((VECTOR(int64_t, 2))(0x15B5BFEFD2BE31B5L)), ((VECTOR(int64_t, 8))(0x101E1CA2FE8FDBD6L)), p_18, 0x6A9FE7BA5A761CF1L, 0x1D285830F6695D53L)).sbd)).xxxxxyyy, ((VECTOR(int64_t, 8))(0x7F11B85B23F3960BL))))).s0622614121561565)).s0 && l_1142.x) ^ 0x1BL)), 4294967294UL)) && 0x6657A16EL)))) < GROUP_DIVERGE(0, 1)), p_1415->g_1366))), p_18)), 1L)), l_1326, 0x346BE6AB03528B1FL, 0L, 0L, (-5L), 0x44E0DE9113331253L, 0x2120FB536A96652CL)).lo, ((VECTOR(int64_t, 4))(0x534FC66446D73434L))))).y < p_18) , l_1367) == &l_1170) & p_18) <= l_1332), 1UL, 0xD8L, 0x48L)), ((VECTOR(uint8_t, 4))(0UL))))))).xzyxzxzx, ((VECTOR(uint8_t, 8))(255UL))))).s6724370741065034)).s39c7)).lo)).yxxyxxxy, ((VECTOR(uint8_t, 8))(255UL)), ((VECTOR(uint8_t, 8))(0x49L))))).s55))), 0UL, 0xCDL)).z <= 0L)), p_18)))))) || p_18) , (*p_1415->g_576)) & p_18) , (*p_1415->g_576)) || p_18);
                    (*l_1220) &= (safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(p_18, p_1415->g_1209.s1, 0x7410L, 0x11FDL)).w, ((safe_mul_func_int8_t_s_s((~l_1331[2][3]), (safe_add_func_uint16_t_u_u(p_18, 2L)))) , 1L)));
                    l_1216 ^= (l_1292[2] , ((((*p_19) = (*p_19)) & ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_1376.xyxy)).hi)).odd) == ((p_1415->g_654.z = (safe_lshift_func_int16_t_s_u(((l_1379 != &p_1415->g_114[5]) || ((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 4))(l_1380.s8d5f)).xywwxywwwyyyxxzw, ((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 8))(l_1381.xyxwwxzz)), ((VECTOR(int64_t, 8))(l_1382.sf3bfa5c1))))).s4623726755771011, ((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 2))(l_1383.s12)).xxyx, ((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 4))((-1L), 0x0C831C59D856DC01L, 1L, (-1L))).wzyyzyxyyzxwzywz, ((VECTOR(int64_t, 4))(((--(*l_1361)) , (&p_1415->g_1232 != (void*)0)), 6L, 0x37F2868C9FE1D9A7L, 0x2E48C150D7712963L)).zwzxzxyyzxzzzwww))).s96fe))).zzzzxzwwxxyywyyw)).s98, ((VECTOR(int64_t, 2))(p_1415->g_1386.s77)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_1387.yxzxzzyz)).s2222017164665665)).sfe)), (-5L), 0x34FAD7468C02F73DL, (((**p_1415->g_403) = ((l_1388 >= ((-1L) <= ((l_1328 & FAKE_DIVERGE(p_1415->group_2_offset, get_group_id(2), 10)) >= l_1330))) || p_18)) , l_1380.sa), ((VECTOR(int64_t, 2))(7L)), 0L)).s05))).yyyyxyyyxyyyxyxx))).sdf24))).lo)).lo || p_18) , l_1286[6])), 12))) == (*p_1415->g_1234))));
                }
            }
        }
        else
        { /* block id: 463 */
            int64_t l_1389 = 0x1EE8354BF6C86D9DL;
            int32_t *l_1390 = &p_1415->g_44;
            int32_t *l_1391 = &l_1154;
            int32_t *l_1392 = &l_1153[0];
            int8_t l_1393 = 0x57L;
            int32_t *l_1394 = &p_1415->g_427;
            int32_t *l_1395[3][1];
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1395[i][j] = &l_1153[0];
            }
            l_1396++;
            for (l_1154 = 0; (l_1154 <= (-26)); l_1154 = safe_sub_func_int32_t_s_s(l_1154, 8))
            { /* block id: 467 */
                uint64_t l_1401[6] = {0x65E6E51256F83ACBL,5UL,0x65E6E51256F83ACBL,0x65E6E51256F83ACBL,5UL,0x65E6E51256F83ACBL};
                int32_t l_1402[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                int i;
                (*p_1415->g_146) &= (l_1401[2] | p_18);
                ++l_1403;
                return l_1401[2];
            }
            (*p_19) = (*p_1415->g_429);
        }
    }
    else
    { /* block id: 474 */
        (*p_1415->g_1406) = (((***p_1415->g_560) ^= ((void*)0 != (*p_1415->g_1231))) , (*p_1415->g_578));
    }
    return (*p_1415->g_576);
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_26 p_1415->g_238 p_1415->g_925 p_1415->g_962 p_1415->g_562 p_1415->g_81 p_1415->g_1075 p_1415->g_576 p_1415->g_146 p_1415->g_44 p_1415->g_1076 p_1415->g_1128 p_1415->g_1008 p_1415->g_869 p_1415->g_149 p_1415->g_691
 * writes: p_1415->g_26 p_1415->g_27 p_1415->g_44 p_1415->g_114 p_1415->g_451 p_1415->g_1008 p_1415->g_149
 */
int32_t * func_23(uint64_t  p_24, struct S1 * p_1415)
{ /* block id: 8 */
    int32_t *l_25[8] = {&p_1415->g_26,&p_1415->g_26,&p_1415->g_26,&p_1415->g_26,&p_1415->g_26,&p_1415->g_26,&p_1415->g_26,&p_1415->g_26};
    uint32_t l_31 = 0x6F4ED832L;
    int32_t **l_1120[2];
    int32_t ***l_1119[3];
    int16_t *l_1131 = &p_1415->g_172;
    int16_t l_1138 = 0x0676L;
    uint16_t l_1139 = 65534UL;
    int i;
    for (i = 0; i < 2; i++)
        l_1120[i] = &l_25[1];
    for (i = 0; i < 3; i++)
        l_1119[i] = &l_1120[1];
    p_1415->g_27 = (p_1415->g_26 = 0x718EE85EL);
    for (p_1415->g_26 = 0; (p_1415->g_26 >= (-25)); p_1415->g_26--)
    { /* block id: 13 */
        int64_t l_32 = 8L;
        int32_t l_33 = 0x337672A6L;
        uint64_t *l_1019 = (void*)0;
        int32_t **l_1108 = &l_25[1];
        (*p_1415->g_238) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1415->g_30.sa9c4)), (-1L), (l_31 ^= p_1415->g_9), p_1415->g_30.se, (l_33 &= l_32), func_34((p_24 , func_36(&p_1415->g_15, func_41(p_1415->g_27, p_1415), ((safe_sub_func_int16_t_s_s((6L == ((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x6072A2240038CA5DL, (-9L))).xxxyyyyx)).hi, ((VECTOR(int64_t, 16))(6L, (((p_1415->g_149.x & p_24) != p_1415->g_869.s3) , p_24), l_33, 0x30A9BA624E3F8E39L, 0L, 0x535FB1A6DD13B864L, 0L, 5L, p_24, 0L, ((VECTOR(int64_t, 2))(0x60996CA353EF0F5DL)), 0x29FE85962FEDFEABL, p_24, 0x3BA2A322D12E41F4L, 0x508B57529F969EA4L)).s5ed0))))).zzywzxwyxwxzzwyx)).s1b, ((VECTOR(int64_t, 2))(0x2C0FD11D456D9B93L))))).yyyxyyyxxyyyyxyy, (int64_t)0x401ECEE3023E5CFAL, (int64_t)p_24))).sb), p_24)) , l_33), l_1019, p_1415)), p_1415), 0x51A86F4FL, ((VECTOR(int32_t, 4))(0L)), 9L, 0L)).s0;
        (*l_1108) = &l_33;
    }
    if (((safe_div_func_uint16_t_u_u(((((4294967287UL ^ p_1415->g_925.x) & (&p_1415->g_314[4][0][8] == &p_1415->g_314[4][1][0])) || (safe_mod_func_int64_t_s_s((safe_mul_func_int16_t_s_s((0xC684EFBE19186898L || ((**p_1415->g_962) , ((*p_1415->g_576) = (GROUP_DIVERGE(1, 1) >= ((safe_add_func_int64_t_s_s(p_24, ((p_24 && (l_1119[1] == &l_1120[1])) < p_1415->g_1075.z))) ^ FAKE_DIVERGE(p_1415->group_2_offset, get_group_id(2), 10)))))), 0x3E81L)), p_24))) ^ p_24), 0x320EL)) ^ p_24))
    { /* block id: 365 */
        uint8_t *l_1122 = &p_1415->g_451[0][5];
        VECTOR(uint8_t, 16) l_1127 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x2DL), 0x2DL), 0x2DL, 255UL, 0x2DL, (VECTOR(uint8_t, 2))(255UL, 0x2DL), (VECTOR(uint8_t, 2))(255UL, 0x2DL), 255UL, 0x2DL, 255UL, 0x2DL);
        uint16_t *l_1132[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        (*p_1415->g_146) |= (safe_unary_minus_func_int8_t_s(0x75L));
        p_1415->g_149.y |= (((((*l_1122) = p_24) || (safe_lshift_func_uint16_t_u_u(((+0x4883589AL) == (!p_1415->g_1076.s7)), 3))) == ((((safe_mul_func_uint16_t_u_u((p_1415->g_1008.y |= (((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 4))(l_1127.s8475)).zxwwxyxx, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(p_1415->g_1128.s2670)).lo)), 0x2FL, 0x55L)).wwyxxzxz))).s4366026733464431)).lo)).s0 , (((*p_1415->g_238) = (*p_1415->g_238)) , (FAKE_DIVERGE(p_1415->global_0_offset, get_global_id(0), 10) <= (((safe_div_func_int8_t_s_s(0L, p_24)) , l_1131) != &p_1415->g_178))))), (safe_div_func_int16_t_s_s((safe_sub_func_int32_t_s_s(l_1127.s7, p_1415->g_869.s0)), p_24)))) != p_1415->g_925.x) , 0x5B468EFFF58799A5L) && p_24)) | GROUP_DIVERGE(1, 1));
    }
    else
    { /* block id: 371 */
        int32_t *l_1137 = (void*)0;
        l_1137 = (void*)0;
    }
    l_1139++;
    return (*p_1415->g_691);
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_81 p_1415->g_44 p_1415->g_680 p_1415->g_912 p_1415->g_238 p_1415->g_692 p_1415->g_26 p_1415->g_1072 p_1415->g_1075 p_1415->g_1076 p_1415->g_425 p_1415->g_15 p_1415->g_576 p_1415->g_114 p_1415->g_9 p_1415->g_295 p_1415->g_1101 p_1415->g_451 p_1415->g_1031 p_1415->g_691 p_1415->g_146
 * writes: p_1415->g_81 p_1415->g_44 p_1415->g_680 p_1415->g_88 p_1415->g_15 p_1415->g_172 p_1415->g_608 p_1415->g_451 p_1415->g_1107 p_1415->g_114
 */
int32_t  func_34(int32_t * p_35, struct S1 * p_1415)
{ /* block id: 337 */
    uint8_t l_1047 = 0x3BL;
    int32_t *l_1058 = &p_1415->g_26;
    VECTOR(int16_t, 8) l_1069 = (VECTOR(int16_t, 8))(0x269CL, (VECTOR(int16_t, 4))(0x269CL, (VECTOR(int16_t, 2))(0x269CL, 0L), 0L), 0L, 0x269CL, 0L);
    int32_t *l_1082 = &p_1415->g_26;
    int32_t **l_1083[8][7][4] = {{{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082}},{{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082}},{{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082}},{{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082}},{{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082}},{{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082}},{{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082}},{{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082},{&l_1058,&l_1082,(void*)0,&l_1082}}};
    VECTOR(int16_t, 2) l_1092 = (VECTOR(int16_t, 2))(0x0C3EL, (-5L));
    int16_t *l_1093 = &p_1415->g_172;
    VECTOR(uint8_t, 2) l_1100 = (VECTOR(uint8_t, 2))(0x1DL, 0xE3L);
    int8_t *l_1102 = (void*)0;
    int8_t *l_1103[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_1104 = 0x2FCFF7F5L;
    uint64_t l_1105 = 0xBF664272E001C12DL;
    uint32_t *l_1106 = &p_1415->g_1107;
    int i, j, k;
    for (p_1415->g_81 = (-10); (p_1415->g_81 >= (-22)); p_1415->g_81 = safe_sub_func_int64_t_s_s(p_1415->g_81, 4))
    { /* block id: 340 */
        int32_t *l_1044 = (void*)0;
        int32_t *l_1045 = &p_1415->g_44;
        int32_t *l_1046[8][8][4] = {{{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427}},{{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427}},{{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427}},{{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427}},{{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427}},{{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427}},{{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427}},{{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427},{(void*)0,(void*)0,(void*)0,&p_1415->g_427}}};
        int i, j, k;
        l_1047--;
        (*l_1045) = (*p_35);
        for (p_1415->g_680 = 5; (p_1415->g_680 == 19); ++p_1415->g_680)
        { /* block id: 345 */
            int32_t **l_1059 = &l_1058;
            int16_t **l_1062 = &p_1415->g_862;
            uint32_t *l_1079 = &p_1415->g_88[1];
            uint8_t *l_1080 = (void*)0;
            uint8_t *l_1081 = &l_1047;
            (*l_1059) = ((safe_lshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u(0x1CL, ((0x20551477L || 4UL) > (!(**p_1415->g_912))))), (safe_lshift_func_int8_t_s_s((*l_1045), 3)))) , l_1058);
            (*p_1415->g_238) = ((safe_mod_func_int32_t_s_s(((&p_1415->g_862 != l_1062) > ((*l_1081) = (((+((((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))((safe_sub_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u((((VECTOR(int16_t, 2))(0x4CD1L, 0x5CDFL)).hi <= ((VECTOR(int16_t, 16))(l_1069.s3617556441510450)).s9), (safe_add_func_int32_t_s_s((*p_35), p_1415->g_692.w)))) > ((**l_1059) > ((*l_1058) == ((VECTOR(int64_t, 4))(p_1415->g_1072.wzxz)).y))), 0x1F23E60FL)), (-1L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x71BDAEDCL, 0x59BC4AFFL)))), (safe_div_func_uint64_t_u_u((((((VECTOR(int32_t, 4))(0x2BCB8636L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(p_1415->g_1075.ywwx)))).even)))), 0x1840330DL)).w , ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(p_1415->g_1076.s22006352)).odd)), (int64_t)((*p_1415->g_425) ^= (safe_mod_func_uint16_t_u_u(((((*l_1079) = GROUP_DIVERGE(2, 1)) | (8L < (*l_1045))) && (**l_1059)), GROUP_DIVERGE(1, 1))))))).z) == (*p_1415->g_576)) <= (*l_1058)), (-10L))), ((VECTOR(int32_t, 2))(0x1EEB1ABAL)), 1L)).s4057677626350024, ((VECTOR(int32_t, 16))(5L))))).s49)).hi , p_1415->g_9) <= 0x19CCL)) != (*l_1058)) & 0UL))), (*p_1415->g_238))) & p_1415->g_295.s1);
        }
    }
    p_35 = l_1082;
    (*p_1415->g_238) = (safe_add_func_int32_t_s_s((safe_add_func_int16_t_s_s(((((safe_sub_func_uint8_t_u_u(((*l_1058) >= (GROUP_DIVERGE(0, 1) && ((((*l_1093) = (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 8))(l_1092.yxxxyyyx)).s7, ((*l_1082) , (*l_1058))))) <= (GROUP_DIVERGE(1, 1) <= ((*p_1415->g_238) , ((*p_1415->g_576) &= ((0xF1389707L > (safe_rshift_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s((*l_1058), ((((*l_1106) = (((*l_1082) == (safe_lshift_func_int8_t_s_u(0L, ((p_1415->g_451[2][2] |= ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 16))(l_1100.yxyxxxxxyyxyxyxx)).sdd, ((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0xB9L, 0UL)), 255UL, 250UL)).yxyyzxzz, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(p_1415->g_1101.yzywxwzw)).s4442552367270703)))).hi))).odd))))).z > (p_1415->g_608.se = (*l_1082))), (*l_1082), ((VECTOR(uint8_t, 2))(0x62L)), 1UL, 0x58L, 255UL, 1UL)).s6603444543157702, ((VECTOR(uint8_t, 16))(0UL))))).hi, ((VECTOR(uint8_t, 8))(255UL)), ((VECTOR(uint8_t, 8))(0x34L))))).s6053277712371037, ((VECTOR(uint8_t, 16))(255UL))))).sa8))).even) , l_1104)))) & l_1105)) , p_1415->g_1031.s2) && GROUP_DIVERGE(1, 1)))) , 1UL), 4))) & (*l_1058)))))) > (*l_1082)))), (*l_1058))) != 0x1A46L) < (*l_1058)) , 1L), 0x0A5EL)), (**p_1415->g_691)));
    return (*p_1415->g_146);
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_404 p_1415->g_81 p_1415->g_608 p_1415->g_1031 p_1415->g_1032 p_1415->g_238 p_1415->g_44 p_1415->g_27 p_1415->g_425 p_1415->g_15 p_1415->g_691
 * writes:
 */
int32_t * func_36(int64_t * p_37, uint32_t  p_38, uint32_t  p_39, uint64_t * p_40, struct S1 * p_1415)
{ /* block id: 329 */
    int8_t l_1024 = 8L;
    uint32_t l_1028 = 1UL;
    int32_t l_1036 = (-3L);
    int32_t l_1037 = 0x6EB05F4CL;
    int32_t *l_1041 = &l_1036;
    for (p_38 = 0; (p_38 >= 35); p_38 = safe_add_func_int8_t_s_s(p_38, 2))
    { /* block id: 332 */
        int32_t l_1025 = (-1L);
        uint64_t *l_1033 = (void*)0;
        int32_t l_1034 = 1L;
        int32_t *l_1035[3][3][5] = {{{&p_1415->g_44,&l_1034,&l_1034,&p_1415->g_44,&p_1415->g_44},{&p_1415->g_44,&l_1034,&l_1034,&p_1415->g_44,&p_1415->g_44},{&p_1415->g_44,&l_1034,&l_1034,&p_1415->g_44,&p_1415->g_44}},{{&p_1415->g_44,&l_1034,&l_1034,&p_1415->g_44,&p_1415->g_44},{&p_1415->g_44,&l_1034,&l_1034,&p_1415->g_44,&p_1415->g_44},{&p_1415->g_44,&l_1034,&l_1034,&p_1415->g_44,&p_1415->g_44}},{{&p_1415->g_44,&l_1034,&l_1034,&p_1415->g_44,&p_1415->g_44},{&p_1415->g_44,&l_1034,&l_1034,&p_1415->g_44,&p_1415->g_44},{&p_1415->g_44,&l_1034,&l_1034,&p_1415->g_44,&p_1415->g_44}}};
        uint16_t l_1038[5] = {1UL,1UL,1UL,1UL,1UL};
        int i, j, k;
        l_1034 |= (safe_rshift_func_uint16_t_u_u(((l_1024 <= ((l_1025 != 0x60L) != (safe_mul_func_uint16_t_u_u(((*p_1415->g_404) , l_1028), p_1415->g_608.s0)))) < (((safe_mul_func_int16_t_s_s(((((VECTOR(int16_t, 8))(3L, ((VECTOR(int16_t, 2))(p_1415->g_1031.s6d)), 0x5500L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1415->g_1032.s24)).xyyy)))).s6 , 0x1AAE2137L) != ((((((l_1025 >= (FAKE_DIVERGE(p_1415->group_2_offset, get_group_id(2), 10) && (((-4L) != l_1024) || l_1025))) <= p_38) , l_1033) == p_37) || l_1024) | (*p_1415->g_238))), l_1025)) ^ p_1415->g_27) < (*p_1415->g_425))), 9));
        l_1038[2]--;
    }
    return (*p_1415->g_691);
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_44 p_1415->g_27
 * writes: p_1415->g_44
 */
uint32_t  func_41(uint64_t  p_42, struct S1 * p_1415)
{ /* block id: 16 */
    int32_t *l_43 = &p_1415->g_44;
    VECTOR(int32_t, 16) l_46 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
    int32_t l_58 = 0x30E5DEFAL;
    int8_t *l_59 = &p_1415->g_27;
    int64_t *l_60 = &p_1415->g_15;
    VECTOR(int32_t, 8) l_535 = (VECTOR(int32_t, 8))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), (-4L)), (-4L)), (-4L), (-10L), (-4L));
    uint32_t l_550 = 7UL;
    int32_t *l_577[3][7];
    VECTOR(int16_t, 16) l_614 = (VECTOR(int16_t, 16))(0x73DFL, (VECTOR(int16_t, 4))(0x73DFL, (VECTOR(int16_t, 2))(0x73DFL, (-10L)), (-10L)), (-10L), 0x73DFL, (-10L), (VECTOR(int16_t, 2))(0x73DFL, (-10L)), (VECTOR(int16_t, 2))(0x73DFL, (-10L)), 0x73DFL, (-10L), 0x73DFL, (-10L));
    VECTOR(uint8_t, 4) l_628 = (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 0UL), 0UL);
    uint64_t l_629[2];
    VECTOR(uint32_t, 8) l_655 = (VECTOR(uint32_t, 8))(0xF284201BL, (VECTOR(uint32_t, 4))(0xF284201BL, (VECTOR(uint32_t, 2))(0xF284201BL, 4294967295UL), 4294967295UL), 4294967295UL, 0xF284201BL, 4294967295UL);
    uint16_t *l_665[9][1][6] = {{{&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0]}},{{&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0]}},{{&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0]}},{{&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0]}},{{&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0]}},{{&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0]}},{{&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0]}},{{&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0]}},{{&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0],&p_1415->g_314[4][1][0]}}};
    uint64_t *l_681[8][10][3] = {{{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680}},{{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680}},{{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680}},{{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680}},{{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680}},{{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680}},{{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680}},{{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680},{&p_1415->g_680,&p_1415->g_680,&p_1415->g_680}}};
    uint64_t **l_848 = &l_681[2][9][1];
    uint64_t ***l_847 = &l_848;
    VECTOR(int16_t, 16) l_861 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x35D9L), 0x35D9L), 0x35D9L, 0L, 0x35D9L, (VECTOR(int16_t, 2))(0L, 0x35D9L), (VECTOR(int16_t, 2))(0L, 0x35D9L), 0L, 0x35D9L, 0L, 0x35D9L);
    union U0 **l_866[5][3] = {{&p_1415->g_224,(void*)0,&p_1415->g_224},{&p_1415->g_224,(void*)0,&p_1415->g_224},{&p_1415->g_224,(void*)0,&p_1415->g_224},{&p_1415->g_224,(void*)0,&p_1415->g_224},{&p_1415->g_224,(void*)0,&p_1415->g_224}};
    VECTOR(int32_t, 8) l_896 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 2L), 2L), 2L, (-6L), 2L);
    int32_t l_916 = 0x1F27A7A8L;
    int8_t l_918 = 4L;
    VECTOR(uint32_t, 4) l_979 = (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 4294967295UL), 4294967295UL);
    VECTOR(uint32_t, 16) l_980 = (VECTOR(uint32_t, 16))(0xF025368DL, (VECTOR(uint32_t, 4))(0xF025368DL, (VECTOR(uint32_t, 2))(0xF025368DL, 0x7F961419L), 0x7F961419L), 0x7F961419L, 0xF025368DL, 0x7F961419L, (VECTOR(uint32_t, 2))(0xF025368DL, 0x7F961419L), (VECTOR(uint32_t, 2))(0xF025368DL, 0x7F961419L), 0xF025368DL, 0x7F961419L, 0xF025368DL, 0x7F961419L);
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
            l_577[i][j] = &p_1415->g_81;
    }
    for (i = 0; i < 2; i++)
        l_629[i] = 18446744073709551610UL;
    (*l_43) &= 0x77CD2BABL;
    if (p_1415->g_44)
        goto lbl_45;
lbl_45:
    (*l_43) = p_1415->g_27;
    return (*l_43);
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_26 p_1415->g_88 p_1415->g_81 p_1415->g_15 p_1415->g_27 p_1415->g_114 p_1415->g_122 p_1415->g_3 p_1415->g_125 p_1415->g_130 p_1415->g_135 p_1415->g_9 p_1415->g_146 p_1415->g_44 p_1415->g_149 p_1415->g_172 p_1415->g_30 p_1415->g_238 p_1415->g_295 p_1415->g_296 p_1415->g_304 p_1415->g_314 p_1415->g_223 p_1415->g_224 p_1415->g_327 p_1415->g_237 p_1415->g_402 p_1415->g_403 p_1415->g_413 p_1415->g_429 p_1415->g_425 p_1415->g_443 p_1415->g_142 p_1415->g_451 p_1415->g_454 p_1415->g_191 p_1415->g_432 p_1415->g_427 p_1415->g_505 p_1415->g_507 p_1415->g_508 p_1415->g_280 p_1415->g_512 p_1415->g_312
 * writes: p_1415->g_81 p_1415->g_88 p_1415->g_15 p_1415->g_30 p_1415->g_114 p_1415->g_44 p_1415->g_142 p_1415->g_9 p_1415->g_172 p_1415->g_312 p_1415->g_314 p_1415->g_224 p_1415->g_178 p_1415->g_238 p_1415->g_27 p_1415->g_451 p_1415->g_512 p_1415->g_520
 */
uint64_t  func_51(int8_t  p_52, int32_t  p_53, int8_t * p_54, int64_t  p_55, int64_t * p_56, struct S1 * p_1415)
{ /* block id: 22 */
    uint16_t l_66 = 0xACF2L;
    int32_t *l_75[8][8] = {{&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3},{&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3},{&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3},{&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3},{&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3},{&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3},{&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3},{&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3,&p_1415->g_44,&p_1415->g_3}};
    int64_t *l_77 = &p_1415->g_15;
    int64_t **l_76 = &l_77;
    int64_t *l_79 = &p_1415->g_15;
    int64_t **l_78 = &l_79;
    int32_t *l_80 = &p_1415->g_81;
    uint32_t *l_519[6][6];
    int i, j;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
            l_519[i][j] = &p_1415->g_520;
    }
    p_1415->g_512 &= (safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1415->group_2_offset, get_group_id(2), 10), ((safe_mod_func_uint64_t_u_u((l_66 | func_67(func_69(l_75[6][3], &p_1415->g_15, ((*l_80) = ((((*l_76) = &p_1415->g_15) == ((*l_78) = p_56)) >= 0x5401BC10B1E1499BL)), &p_1415->g_26, p_1415->g_26, p_1415), p_1415)), p_52)) ^ p_1415->g_149.y)));
    (*p_1415->g_413) &= (safe_div_func_uint16_t_u_u(((0xCFC12161C7E946B5L > (safe_sub_func_uint16_t_u_u(65527UL, (--p_1415->g_312)))) >= (-7L)), ((p_1415->g_520 = p_52) , 0x275AL)));
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_27 p_1415->g_402 p_1415->g_403 p_1415->g_295 p_1415->g_413 p_1415->g_149 p_1415->g_314 p_1415->g_9 p_1415->g_114 p_1415->g_429 p_1415->g_425 p_1415->g_443 p_1415->g_142 p_1415->g_451 p_1415->g_454 p_1415->g_191 p_1415->g_130 p_1415->g_432 p_1415->g_44 p_1415->g_427 p_1415->g_505 p_1415->g_507 p_1415->g_508 p_1415->g_280
 * writes: p_1415->g_27 p_1415->g_178 p_1415->g_44 p_1415->g_15 p_1415->g_224 p_1415->g_142 p_1415->g_451 p_1415->g_9
 */
uint16_t  func_67(int8_t * p_68, struct S1 * p_1415)
{ /* block id: 114 */
    VECTOR(int8_t, 2) l_354 = (VECTOR(int8_t, 2))(0x02L, 0x76L);
    VECTOR(int8_t, 4) l_371 = (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 4L), 4L);
    int32_t l_379 = 1L;
    int32_t l_391 = 0x01A6F301L;
    int32_t l_393[3];
    int64_t l_396 = 0x2F46FFD42F1118F1L;
    uint16_t *l_439[8][5][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint16_t *l_440 = &p_1415->g_312;
    int16_t l_441 = 0x1AD3L;
    int64_t l_460[4][3] = {{0x28BE23891D1A3BB5L,0x418BA95F857396FAL,0x28BE23891D1A3BB5L},{0x28BE23891D1A3BB5L,0x418BA95F857396FAL,0x28BE23891D1A3BB5L},{0x28BE23891D1A3BB5L,0x418BA95F857396FAL,0x28BE23891D1A3BB5L},{0x28BE23891D1A3BB5L,0x418BA95F857396FAL,0x28BE23891D1A3BB5L}};
    int64_t l_461 = (-1L);
    int64_t l_463 = 0x22E21727721E3DE3L;
    int64_t l_466[9] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
    VECTOR(uint64_t, 16) l_475 = (VECTOR(uint64_t, 16))(9UL, (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 0xD404538234DBD2DAL), 0xD404538234DBD2DAL), 0xD404538234DBD2DAL, 9UL, 0xD404538234DBD2DAL, (VECTOR(uint64_t, 2))(9UL, 0xD404538234DBD2DAL), (VECTOR(uint64_t, 2))(9UL, 0xD404538234DBD2DAL), 9UL, 0xD404538234DBD2DAL, 9UL, 0xD404538234DBD2DAL);
    VECTOR(uint16_t, 16) l_504 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x5DD8L), 0x5DD8L), 0x5DD8L, 0UL, 0x5DD8L, (VECTOR(uint16_t, 2))(0UL, 0x5DD8L), (VECTOR(uint16_t, 2))(0UL, 0x5DD8L), 0UL, 0x5DD8L, 0UL, 0x5DD8L);
    VECTOR(uint16_t, 2) l_506 = (VECTOR(uint16_t, 2))(65535UL, 0x3FCEL);
    VECTOR(uint8_t, 2) l_510 = (VECTOR(uint8_t, 2))(1UL, 0x37L);
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_393[i] = 1L;
    for (p_1415->g_27 = 0; (p_1415->g_27 > (-20)); p_1415->g_27 = safe_sub_func_uint64_t_u_u(p_1415->g_27, 2))
    { /* block id: 117 */
        VECTOR(int8_t, 2) l_351 = (VECTOR(int8_t, 2))(0x70L, 0x6BL);
        VECTOR(int8_t, 2) l_352 = (VECTOR(int8_t, 2))(0L, 0x6BL);
        int64_t *l_373 = (void*)0;
        int64_t **l_372 = &l_373;
        int8_t l_374 = 0x4BL;
        int32_t l_384 = 0L;
        int32_t l_387 = 1L;
        int32_t l_389 = 1L;
        int32_t l_392 = 0x69BDBF5AL;
        int32_t l_394[8][7] = {{0x3E8F09E2L,0x37523322L,1L,0x0BB10B64L,0L,0x3E8F09E2L,0x0BB10B64L},{0x3E8F09E2L,0x37523322L,1L,0x0BB10B64L,0L,0x3E8F09E2L,0x0BB10B64L},{0x3E8F09E2L,0x37523322L,1L,0x0BB10B64L,0L,0x3E8F09E2L,0x0BB10B64L},{0x3E8F09E2L,0x37523322L,1L,0x0BB10B64L,0L,0x3E8F09E2L,0x0BB10B64L},{0x3E8F09E2L,0x37523322L,1L,0x0BB10B64L,0L,0x3E8F09E2L,0x0BB10B64L},{0x3E8F09E2L,0x37523322L,1L,0x0BB10B64L,0L,0x3E8F09E2L,0x0BB10B64L},{0x3E8F09E2L,0x37523322L,1L,0x0BB10B64L,0L,0x3E8F09E2L,0x0BB10B64L},{0x3E8F09E2L,0x37523322L,1L,0x0BB10B64L,0L,0x3E8F09E2L,0x0BB10B64L}};
        int32_t l_395 = 7L;
        uint32_t l_397 = 0xA8C79D10L;
        int32_t *l_406[1][3];
        int32_t **l_405 = &l_406[0][0];
        VECTOR(int32_t, 2) l_435 = (VECTOR(int32_t, 2))(0x0861449FL, (-1L));
        int32_t l_467 = 0x3A537B69L;
        int16_t l_490 = 0x0499L;
        uint8_t *l_509 = (void*)0;
        int32_t *l_511 = &l_393[1];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 3; j++)
                l_406[i][j] = (void*)0;
        }
        if (((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(8L, ((VECTOR(int8_t, 2))(l_351.xy)), (-1L))).wzyyxzxw, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_352.yyyx)).zyzyxwwz)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(0x10L, (-3L))))), 0x5FL, (-2L))).yyyxzxyzzzzwwzyx)).hi))), (int8_t)((VECTOR(int8_t, 2))(p_1415->g_353.xy)).hi))).s52)).xxxxxyyy, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 4))(6L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))(l_354.xxxyxyyyxyyyxxyx)).sda, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))((safe_lshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u((l_354.x != ((safe_add_func_uint32_t_u_u(0xAA59686BL, 0x6C9633A9L)) & ((safe_mod_func_uint8_t_u_u((0UL != (safe_div_func_int32_t_s_s((safe_add_func_uint16_t_u_u(0UL, ((VECTOR(int16_t, 2))(0x5076L, 1L)).hi)), (0x7C4BFC57L ^ (safe_lshift_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_371.wyxwxxxx)).s0, 2)), 7)))))), ((l_372 != (void*)0) , l_352.y))) , p_1415->g_295.s1))), 0x44L)), 0)), p_1415->g_353.y, (-1L), 0x61L)))).even))), 1L, 8L)).wyzwxzxyxxwywwyy)).s5530))).even)), 0x40L)).ywxwxyxz, ((VECTOR(int8_t, 8))((-1L)))))).s12)))).xyyxyyxx))).s6, 5)) <= l_374))
        { /* block id: 118 */
            int32_t *l_375 = &p_1415->g_44;
            int32_t *l_376 = &p_1415->g_44;
            int32_t *l_377 = (void*)0;
            int32_t l_378 = 5L;
            int32_t *l_380 = &p_1415->g_44;
            int32_t *l_381 = &l_378;
            int32_t *l_382 = (void*)0;
            int32_t *l_383 = &p_1415->g_44;
            int32_t *l_385 = &l_384;
            int32_t *l_386 = &l_379;
            int32_t *l_388 = &p_1415->g_44;
            int32_t *l_390[8][8] = {{&p_1415->g_3,&l_387,(void*)0,(void*)0,&l_387,&p_1415->g_3,&l_387,(void*)0},{&p_1415->g_3,&l_387,(void*)0,(void*)0,&l_387,&p_1415->g_3,&l_387,(void*)0},{&p_1415->g_3,&l_387,(void*)0,(void*)0,&l_387,&p_1415->g_3,&l_387,(void*)0},{&p_1415->g_3,&l_387,(void*)0,(void*)0,&l_387,&p_1415->g_3,&l_387,(void*)0},{&p_1415->g_3,&l_387,(void*)0,(void*)0,&l_387,&p_1415->g_3,&l_387,(void*)0},{&p_1415->g_3,&l_387,(void*)0,(void*)0,&l_387,&p_1415->g_3,&l_387,(void*)0},{&p_1415->g_3,&l_387,(void*)0,(void*)0,&l_387,&p_1415->g_3,&l_387,(void*)0},{&p_1415->g_3,&l_387,(void*)0,(void*)0,&l_387,&p_1415->g_3,&l_387,(void*)0}};
            int i, j;
            l_397--;
        }
        else
        { /* block id: 120 */
            uint8_t l_411 = 255UL;
            int16_t *l_412 = &p_1415->g_178;
            int32_t *l_422 = &l_384;
            int64_t *l_426 = &l_396;
            (*p_1415->g_413) = (safe_mod_func_uint64_t_u_u((((((void*)0 == p_1415->g_402[3]) , 5UL) || ((p_1415->g_403 != l_405) | (+0x72C1L))) , (safe_mod_func_uint32_t_u_u((safe_sub_func_int16_t_s_s(((*l_412) = (l_411 , (-1L))), p_1415->g_295.s1)), l_379))), l_411));
            (*p_1415->g_429) = (safe_mul_func_int16_t_s_s((safe_add_func_int64_t_s_s(((*l_426) &= ((safe_rshift_func_int8_t_s_u(0x21L, 6)) || (safe_rshift_func_int8_t_s_u(((((((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))((((*l_422) = l_354.y) || (-1L)), 0UL, p_1415->g_30.sc, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))((safe_lshift_func_uint8_t_u_u(((p_1415->g_425 = &p_1415->g_15) != l_426), ((((p_1415->g_427 = l_397) , l_379) , &l_422) != (void*)0))), 1UL, GROUP_DIVERGE(2, 1), (*l_422), p_1415->g_114[5], ((VECTOR(uint16_t, 2))(65530UL)), 0UL, 0x840AL, l_387, 0x8FB5L, 2UL, ((VECTOR(uint16_t, 4))(65532UL)))).odd)), ((VECTOR(uint16_t, 2))(1UL)), l_354.x, 0x556FL, 1UL)).lo))).s2 || p_1415->g_149.x) && l_389) > p_1415->g_314[4][1][0]) && 0x38E4E7F8L), p_1415->g_9)))), p_1415->g_114[1])), (-4L)));
        }
        for (l_396 = (-19); (l_396 == 11); l_396 = safe_add_func_int64_t_s_s(l_396, 3))
        { /* block id: 131 */
            int64_t *l_438 = &l_396;
            union U0 *l_442 = &p_1415->g_222;
            int32_t l_448 = 0L;
            int32_t l_449[10] = {0x0308B870L,0x0308B870L,0x0308B870L,0x0308B870L,0x0308B870L,0x0308B870L,0x0308B870L,0x0308B870L,0x0308B870L,0x0308B870L};
            int i;
            l_441 = (((((*p_1415->g_425) = ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))((((VECTOR(uint8_t, 8))(p_1415->g_432.s5588a1d2)).s4 || ((0xAFEBL && ((0x0026F99FF59B3E76L > ((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 8))(l_435.yxxxyxxx)).s3, (((0x1FCBA48C30D0238BL <= 0x44667F89A7C8F02FL) | (safe_lshift_func_uint16_t_u_u(((void*)0 != l_438), (l_439[2][4][3] == l_440)))) && (*p_1415->g_425)))) > p_1415->g_30.s5)) , p_1415->g_142)) != 255UL)), 0x15744315CCBC6AC7L, 0x63007EC2C2CA27F6L, ((VECTOR(int64_t, 4))(0L)), (-1L))), 0L, ((VECTOR(int64_t, 4))(0x7D104B6E8DEEFE1CL)), ((VECTOR(int64_t, 2))(0x412F4DD1709FF2F6L)), (-2L))).s1) <= 18446744073709551614UL) ^ l_435.x) > l_435.y);
            (*p_1415->g_443) = l_442;
            for (p_1415->g_142 = (-7); (p_1415->g_142 <= 33); p_1415->g_142 = safe_add_func_uint64_t_u_u(p_1415->g_142, 1))
            { /* block id: 137 */
                int32_t *l_446 = &l_394[2][0];
                int32_t *l_447[4][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                int32_t l_450 = 0x09218C6DL;
                int i, j;
                ++p_1415->g_451[0][3];
                if (p_1415->g_454[0])
                    break;
            }
        }
        for (l_374 = 28; (l_374 <= (-26)); l_374 = safe_sub_func_int16_t_s_s(l_374, 5))
        { /* block id: 144 */
            int32_t *l_457 = &p_1415->g_44;
            int32_t *l_458 = &l_394[2][0];
            int32_t *l_459[5] = {&l_392,&l_392,&l_392,&l_392,&l_392};
            int32_t l_465 = 0L;
            uint16_t l_468[8][5][6] = {{{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL}},{{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL}},{{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL}},{{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL}},{{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL}},{{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL}},{{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL}},{{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL},{0x85EFL,0xEACBL,0x5DA8L,0x11B9L,65535UL,0x85EFL}}};
            int8_t *l_476 = (void*)0;
            int8_t *l_477 = (void*)0;
            int8_t *l_478 = &p_1415->g_9;
            uint8_t *l_483 = &p_1415->g_451[1][5];
            int i, j, k;
            --l_468[3][2][3];
            (*l_457) = ((l_467 > ((VECTOR(uint8_t, 8))(((((safe_mul_func_int16_t_s_s((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_475.s56174dcc)).s3712647451250066)).sf, l_435.y)), 0x7890L)) , (((*l_478) = (-1L)) > ((l_460[3][2] != (p_1415->g_425 != p_1415->g_425)) > ((+(safe_rshift_func_int8_t_s_u(((((p_1415->g_191.z | ((safe_rshift_func_uint16_t_u_u((((*l_483) = ((VECTOR(uint8_t, 2))(247UL, 1UL)).odd) , (((safe_add_func_uint64_t_u_u(l_379, 18446744073709551609UL)) & 6L) , l_397)), l_393[0])) , FAKE_DIVERGE(p_1415->group_0_offset, get_group_id(0), 10))) >= p_1415->g_130.w) || 3UL) > 4294967292UL), p_1415->g_432.sc))) & (*l_457))))) | p_1415->g_130.z) , GROUP_DIVERGE(0, 1)), l_371.z, 255UL, l_393[0], l_371.z, l_394[1][6], 0x27L, 6UL)).s2) >= p_1415->g_427);
            for (p_1415->g_142 = 0; (p_1415->g_142 > 9); p_1415->g_142 = safe_add_func_int64_t_s_s(p_1415->g_142, 4))
            { /* block id: 151 */
                VECTOR(uint8_t, 4) l_491 = (VECTOR(uint8_t, 4))(0x4CL, (VECTOR(uint8_t, 2))(0x4CL, 255UL), 255UL);
                int i;
                for (l_441 = 0; (l_441 == 27); l_441 = safe_add_func_int32_t_s_s(l_441, 4))
                { /* block id: 154 */
                    ++l_491.x;
                }
            }
            (*l_457) |= l_397;
        }
        (*l_511) ^= ((safe_div_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((~(safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_u(p_1415->g_454[0], 14)), 6))) && ((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 16))(l_504.sf264190854e4a7b9)).odd, ((VECTOR(uint16_t, 16))(p_1415->g_505.sab01bc54444763c8)).even))).even, ((VECTOR(uint16_t, 2))(l_506.xy)).xyyy))), 0x9D18L, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(p_1415->g_507.yxyyxxyx)).lo)), ((VECTOR(uint16_t, 4))(p_1415->g_508.xyxy)), FAKE_DIVERGE(p_1415->group_0_offset, get_group_id(0), 10), 65533UL, 0x94C4L)).s9 >= 65535UL) <= (&l_397 == (((void*)0 != l_509) , &l_397)))), ((VECTOR(int8_t, 16))(((FAKE_DIVERGE(p_1415->local_1_offset, get_local_id(1), 10) && ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_510.yx)), 0x3AL, 1UL)).z) < ((l_389 == ((((*l_372) != &l_463) , l_510.x) , 6UL)) | l_435.x)), ((VECTOR(int8_t, 4))((-8L))), 0x26L, p_1415->g_280.x, 0x79L, 0L, ((VECTOR(int8_t, 2))(0x72L)), 0x3DL, l_352.x, 0x13L, 0L, 1L)).s1)), l_435.x)), 5L)) && l_460[3][1]);
    }
    return l_510.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_88 p_1415->g_81 p_1415->g_15 p_1415->g_27 p_1415->g_26 p_1415->g_114 p_1415->g_122 p_1415->g_3 p_1415->g_125 p_1415->g_130 p_1415->g_135 p_1415->g_9 p_1415->g_146 p_1415->g_44 p_1415->g_149 p_1415->g_172 p_1415->g_30 p_1415->g_238 p_1415->g_295 p_1415->g_296 p_1415->g_304 p_1415->g_314 p_1415->g_223 p_1415->g_224 p_1415->g_327 p_1415->g_237
 * writes: p_1415->g_88 p_1415->g_15 p_1415->g_30 p_1415->g_114 p_1415->g_44 p_1415->g_142 p_1415->g_9 p_1415->g_172 p_1415->g_312 p_1415->g_314 p_1415->g_224 p_1415->g_178 p_1415->g_238
 */
int8_t * func_69(int32_t * p_70, int64_t * p_71, int32_t  p_72, int32_t * p_73, uint32_t  p_74, struct S1 * p_1415)
{ /* block id: 26 */
    uint64_t l_84 = 0x14FAB08463F95669L;
    uint32_t *l_85 = (void*)0;
    uint32_t *l_86 = (void*)0;
    uint32_t *l_87[5] = {&p_1415->g_88[1],&p_1415->g_88[1],&p_1415->g_88[1],&p_1415->g_88[1],&p_1415->g_88[1]};
    VECTOR(int64_t, 2) l_91 = (VECTOR(int64_t, 2))(0L, (-3L));
    int32_t l_94 = 0x1522E61FL;
    VECTOR(int32_t, 4) l_95 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-6L)), (-6L));
    int32_t l_112 = 2L;
    int32_t l_113 = 1L;
    int64_t *l_144[2][5] = {{(void*)0,&p_1415->g_15,(void*)0,(void*)0,&p_1415->g_15},{(void*)0,&p_1415->g_15,(void*)0,(void*)0,&p_1415->g_15}};
    VECTOR(uint8_t, 2) l_158 = (VECTOR(uint8_t, 2))(0UL, 0UL);
    int16_t *l_171 = &p_1415->g_172;
    int16_t *l_177[1][1];
    int64_t l_179 = 0x57621A5245C12D51L;
    uint8_t *l_180 = (void*)0;
    uint8_t *l_181[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int16_t, 4) l_192 = (VECTOR(int16_t, 4))(0x1A8BL, (VECTOR(int16_t, 2))(0x1A8BL, 0x76D1L), 0x76D1L);
    VECTOR(int32_t, 2) l_206 = (VECTOR(int32_t, 2))(0x37D4FFB9L, (-1L));
    VECTOR(uint8_t, 8) l_220 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL);
    VECTOR(uint16_t, 2) l_289 = (VECTOR(uint16_t, 2))(0xAEF8L, 0x3BBAL);
    VECTOR(int8_t, 4) l_297 = (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x6BL), 0x6BL);
    VECTOR(int8_t, 2) l_298 = (VECTOR(int8_t, 2))(0x1CL, 0x02L);
    VECTOR(int8_t, 8) l_299 = (VECTOR(int8_t, 8))(0x65L, (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, 0x00L), 0x00L), 0x00L, 0x65L, 0x00L);
    int32_t **l_333 = (void*)0;
    union U0 *l_341 = &p_1415->g_222;
    VECTOR(uint32_t, 2) l_343 = (VECTOR(uint32_t, 2))(1UL, 0UL);
    int32_t *l_346 = (void*)0;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_177[i][j] = &p_1415->g_178;
    }
    l_95.y = (safe_sub_func_int32_t_s_s(((1UL | (p_1415->g_88[5] &= l_84)) <= ((safe_sub_func_int64_t_s_s(((*p_71) = l_84), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))((-1L), 8L, 0x38F78F014566F38FL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_91.xyyxxxxyxxyyxxyx)).s30)), p_1415->g_81, 1L, (-7L))))).s4)) , (safe_mul_func_int16_t_s_s(p_74, (l_94 = p_1415->g_15))))), p_1415->g_27));
    if (((l_95.y = 252UL) | (safe_mod_func_uint32_t_u_u(l_91.y, (*p_73)))))
    { /* block id: 32 */
        VECTOR(int32_t, 8) l_98 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2A621C2DL), 0x2A621C2DL), 0x2A621C2DL, (-1L), 0x2A621C2DL);
        int32_t *l_99 = (void*)0;
        int32_t *l_100 = (void*)0;
        int32_t *l_101 = (void*)0;
        int32_t *l_102 = &p_1415->g_44;
        int32_t *l_103 = (void*)0;
        int32_t *l_104 = &p_1415->g_44;
        int32_t *l_105 = (void*)0;
        int32_t *l_106 = &l_94;
        int32_t *l_107 = &p_1415->g_44;
        int32_t *l_108 = (void*)0;
        int32_t *l_109 = (void*)0;
        int32_t *l_110 = &p_1415->g_44;
        int32_t *l_111[4] = {&p_1415->g_44,&p_1415->g_44,&p_1415->g_44,&p_1415->g_44};
        VECTOR(uint8_t, 2) l_117 = (VECTOR(uint8_t, 2))(0x6CL, 0x6BL);
        VECTOR(int8_t, 8) l_123 = (VECTOR(int8_t, 8))(0x1CL, (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 0x68L), 0x68L), 0x68L, 0x1CL, 0x68L);
        uint64_t *l_124[2][10][3] = {{{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84}},{{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84},{&l_84,&l_84,&l_84}}};
        VECTOR(uint8_t, 4) l_126 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xBAL), 0xBAL);
        VECTOR(int64_t, 4) l_129 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x628CFD86619B6956L), 0x628CFD86619B6956L);
        VECTOR(int8_t, 8) l_136 = (VECTOR(int8_t, 8))(0x4EL, (VECTOR(int8_t, 4))(0x4EL, (VECTOR(int8_t, 2))(0x4EL, 0x6BL), 0x6BL), 0x6BL, 0x4EL, 0x6BL);
        uint8_t *l_137 = (void*)0;
        uint8_t *l_138 = (void*)0;
        uint8_t *l_139 = (void*)0;
        uint8_t *l_140 = (void*)0;
        uint16_t *l_141[9];
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_141[i] = (void*)0;
        p_1415->g_30.sb = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_98.s74315356)))).s2;
        --p_1415->g_114[5];
        p_1415->g_30.se = ((FAKE_DIVERGE(p_1415->global_0_offset, get_global_id(0), 10) <= (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(l_117.xyxx)))).x && (safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(1L, 0x57L, 0x54L, 1L)).y, (((l_95.x = (safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_1415->g_122.s7161)), ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(0x7AL, (-4L))), ((VECTOR(int8_t, 16))(l_123.s1417667766126267)).s75))), 0L, 0x57L)).s5, 6))) & (((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0xB7L, ((VECTOR(uint8_t, 2))(1UL, 0UL)), 0x54L)).wxxwxwwz)), (uint8_t)p_1415->g_3))).s3570406460564271, ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 2))(0xBDL, 0x9DL)), ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1415->g_125.zz)), 255UL, 0x5CL)).wyxxzzwxzwywyxzx, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_126.yxxy)).even)).yxxyxxyxyyyyyyxy))).s96, ((VECTOR(uint8_t, 2))(0xF0L, 0UL)))))))).xyyyxxxxxyxyxxxy))).s7 && ((-1L) ^ (l_84 == p_72)))) <= l_94))))) , ((p_1415->g_26 != ((safe_div_func_uint16_t_u_u((((VECTOR(int64_t, 2))(l_129.xx)).hi , (p_1415->g_142 = (((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(1L, 8L)), 8L, ((((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_1415->g_130.wyyy)))).wxwzyzwyyzyzywzy)).lo)).s20, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))((0x33153F037E6CEEB8L ^ (((*l_107) = (safe_mul_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(l_95.y, ((VECTOR(int16_t, 2))(0x409CL, 0x6308L)).even)), ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))(p_1415->g_135.s2077)), ((VECTOR(int8_t, 16))(l_136.s5355762476452264)).s1794))).xxyyzyxyxwxwxxzx, ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(0x6FL, (((*l_106) = (l_94 , l_84)) && p_1415->g_125.w), 0x09L, 0x51L)).zzwxxwzx)).s56)).yyxyyxxy, ((VECTOR(int8_t, 8))(0L))))).s1503130265407521))).even, (int8_t)0x7DL, (int8_t)(-2L)))).s2))) ^ p_74)), p_1415->g_135.s6, 0x61L, ((VECTOR(int8_t, 8))((-1L))), 0x23L, ((VECTOR(int8_t, 2))(0x0BL)), (-7L), 0x40L)).sffdf)).hi, ((VECTOR(int8_t, 2))(0x65L))))).odd && GROUP_DIVERGE(1, 1)) < p_1415->g_9), ((VECTOR(int64_t, 2))(0L)), ((VECTOR(int64_t, 4))(0x005E798639D1CF90L)), 0x7BDCD36C6765711EL, 1L, l_95.y, 0L, 0x5DACF7CC7A657793L, 0L)), ((VECTOR(int64_t, 16))(0x568DACC9C74A2BADL))))).s3 > p_1415->g_3))), p_72)) && (*p_73))) | 0x3B07L));
    }
    else
    { /* block id: 40 */
        int64_t *l_143[6] = {&p_1415->g_15,(void*)0,&p_1415->g_15,&p_1415->g_15,(void*)0,&p_1415->g_15};
        int8_t *l_145 = &p_1415->g_9;
        int32_t *l_148[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int32_t **l_147 = &l_148[0][0];
        int i, j;
        (*p_1415->g_146) &= ((!((l_143[2] == l_144[0][2]) | p_74)) && ((*l_145) = ((VECTOR(int8_t, 2))(5L, 0x29L)).hi));
        (*l_147) = p_70;
        (*p_1415->g_146) |= ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))(p_1415->g_149.yxxy)))))))).y;
    }
    if (((safe_mod_func_int8_t_s_s(0x21L, ((safe_div_func_int16_t_s_s(p_72, ((safe_mul_func_uint8_t_u_u(((l_94 = ((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(l_158.yxxy)).z, (safe_add_func_uint8_t_u_u(1UL, (safe_sub_func_uint32_t_u_u(((safe_add_func_int32_t_s_s((safe_mod_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(l_94, ((safe_rshift_func_uint16_t_u_s(p_1415->g_149.y, ((*l_171) = p_1415->g_130.y))) <= (safe_div_func_uint64_t_u_u((l_84 == (safe_sub_func_int32_t_s_s(((((((l_95.y = 0L) >= l_113) | l_179) || 0x4958L) & p_1415->g_9) > p_1415->g_125.w), GROUP_DIVERGE(1, 1)))), (-6L)))))), 1UL)), (*p_1415->g_146))) , 4UL), l_158.x)))))) , p_1415->g_9)) > 0L), p_74)) ^ p_1415->g_88[2]))) | 0x6FL))) && GROUP_DIVERGE(2, 1)))
    { /* block id: 49 */
        uint8_t l_188 = 0x34L;
        VECTOR(int16_t, 8) l_193 = (VECTOR(int16_t, 8))(0x0F5DL, (VECTOR(int16_t, 4))(0x0F5DL, (VECTOR(int16_t, 2))(0x0F5DL, 9L), 9L), 9L, 0x0F5DL, 9L);
        int32_t l_219[8][9] = {{7L,0x0840576BL,0x0F7168B7L,0x31644C7AL,0x5A42983AL,7L,0x31644C7AL,(-1L),0x31644C7AL},{7L,0x0840576BL,0x0F7168B7L,0x31644C7AL,0x5A42983AL,7L,0x31644C7AL,(-1L),0x31644C7AL},{7L,0x0840576BL,0x0F7168B7L,0x31644C7AL,0x5A42983AL,7L,0x31644C7AL,(-1L),0x31644C7AL},{7L,0x0840576BL,0x0F7168B7L,0x31644C7AL,0x5A42983AL,7L,0x31644C7AL,(-1L),0x31644C7AL},{7L,0x0840576BL,0x0F7168B7L,0x31644C7AL,0x5A42983AL,7L,0x31644C7AL,(-1L),0x31644C7AL},{7L,0x0840576BL,0x0F7168B7L,0x31644C7AL,0x5A42983AL,7L,0x31644C7AL,(-1L),0x31644C7AL},{7L,0x0840576BL,0x0F7168B7L,0x31644C7AL,0x5A42983AL,7L,0x31644C7AL,(-1L),0x31644C7AL},{7L,0x0840576BL,0x0F7168B7L,0x31644C7AL,0x5A42983AL,7L,0x31644C7AL,(-1L),0x31644C7AL}};
        int32_t **l_264 = &p_1415->g_238;
        int8_t *l_294 = (void*)0;
        VECTOR(uint64_t, 16) l_307 = (VECTOR(uint64_t, 16))(0xE62A2F74A23E8F82L, (VECTOR(uint64_t, 4))(0xE62A2F74A23E8F82L, (VECTOR(uint64_t, 2))(0xE62A2F74A23E8F82L, 0xCDAF9B95104FE50BL), 0xCDAF9B95104FE50BL), 0xCDAF9B95104FE50BL, 0xE62A2F74A23E8F82L, 0xCDAF9B95104FE50BL, (VECTOR(uint64_t, 2))(0xE62A2F74A23E8F82L, 0xCDAF9B95104FE50BL), (VECTOR(uint64_t, 2))(0xE62A2F74A23E8F82L, 0xCDAF9B95104FE50BL), 0xE62A2F74A23E8F82L, 0xCDAF9B95104FE50BL, 0xE62A2F74A23E8F82L, 0xCDAF9B95104FE50BL);
        uint16_t *l_310 = (void*)0;
        uint16_t *l_311 = &p_1415->g_312;
        uint16_t *l_313 = &p_1415->g_314[4][1][0];
        int32_t *l_315 = (void*)0;
        int32_t *l_316 = &l_113;
        int i, j;
        (*p_1415->g_146) = (-1L);
        for (p_1415->g_44 = 0; (p_1415->g_44 < (-17)); p_1415->g_44--)
        { /* block id: 53 */
            VECTOR(uint8_t, 8) l_211 = (VECTOR(uint8_t, 8))(0xD3L, (VECTOR(uint8_t, 4))(0xD3L, (VECTOR(uint8_t, 2))(0xD3L, 253UL), 253UL), 253UL, 0xD3L, 253UL);
            uint32_t l_218 = 4294967288UL;
            int32_t l_232 = 0L;
            int8_t *l_267 = &p_1415->g_27;
            uint32_t l_269 = 1UL;
            int32_t l_271 = 0x09FCA137L;
            int32_t l_272 = 1L;
            int32_t l_273 = 0x1C36C5F9L;
            int32_t l_274 = (-10L);
            VECTOR(uint32_t, 4) l_275 = (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 0x90099BCDL), 0x90099BCDL);
            VECTOR(uint8_t, 8) l_278 = (VECTOR(uint8_t, 8))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x4CL), 0x4CL), 0x4CL, 4UL, 0x4CL);
            int16_t l_281 = 0L;
            int i;
            (1 + 1);
        }
        (*l_316) &= (((((*l_171) &= (-1L)) , (p_1415->g_30.s4 ^ (+((((+((~(safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(l_289.xyxyyyxyyxxxyyxx)).s4, ((*l_313) &= ((safe_add_func_int64_t_s_s((((((safe_sub_func_uint32_t_u_u(p_74, (*p_1415->g_238))) , ((((void*)0 == l_294) == p_72) , ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))(p_1415->g_295.s07737274)).s55, ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_1415->g_296.s50)).yyxyyxyyyyxxyyyy)).s0749)).hi, ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 8))(l_297.yzyxyyzz)), ((VECTOR(int8_t, 16))(l_298.yxyyxyyxxxyxxxxy)).odd, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 4))(l_299.s1775)).wzzzxzxx, (int8_t)(safe_rshift_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_1415->g_304.wxxyyxxw)).s4, (safe_div_func_uint64_t_u_u((~((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),uint64_t,((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 8))(l_307.s7d17f2e5)).odd, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(6UL, 0xD76849D5BDE55AF2L, 0UL, FAKE_DIVERGE(p_1415->group_2_offset, get_group_id(2), 10), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(0UL, 18446744073709551611UL)))), 0x705FE7717FFE84D3L, 18446744073709551611UL)).s4463260401376721)).s1c08)).even, ((VECTOR(uint64_t, 4))((l_192.x == ((*l_311) = ((safe_sub_func_int8_t_s_s((p_74 && p_72), 3UL)) >= 0x9BC0F6F1L))), 0x863262B0756A2899L, 18446744073709551609UL, 0x1A0963B483D9F478L)).odd))), 9UL, 0xB16EFF2212A0DE9BL)), ((VECTOR(uint64_t, 4))(0xFA5E37D02055A8E9L))))).odd, (uint64_t)p_72, (uint64_t)p_72))).even), 0xE02D6D32D353365DL)))), p_1415->g_26))))).s6011441300532033, ((VECTOR(int8_t, 16))((-1L)))))))).hi))).s7555301632205174, ((VECTOR(int8_t, 16))(0x5EL))))).even, ((VECTOR(int8_t, 8))((-4L)))))).s2771326272440371, ((VECTOR(int8_t, 16))((-1L)))))).s90fd)).hi, ((VECTOR(int8_t, 2))(0x3EL)), ((VECTOR(int8_t, 2))((-5L)))))).xxxyxxyy, ((VECTOR(int8_t, 8))((-6L)))))).s36)))))).odd)) != 0L) , &p_1415->g_142) == &p_1415->g_114[1]), 0x6F619709DF8C5D97L)) >= 1L))))) , l_158.y)) , l_180) != (void*)0) , l_299.s6)))) && p_1415->g_125.z) == p_1415->g_149.x);
    }
    else
    { /* block id: 84 */
        int32_t *l_338 = &p_1415->g_81;
        int32_t **l_337[4] = {&l_338,&l_338,&l_338,&l_338};
        union U0 *l_339 = &p_1415->g_222;
        union U0 **l_340[10][4][4] = {{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}},{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}},{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}},{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}},{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}},{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}},{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}},{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}},{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}},{{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224},{&p_1415->g_224,&l_339,&l_339,&p_1415->g_224}}};
        union U0 *l_342 = (void*)0;
        int32_t l_344 = 0x7233BBE8L;
        int32_t *l_345[1];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_345[i] = &l_113;
        for (p_1415->g_9 = 5; (p_1415->g_9 >= 4); --p_1415->g_9)
        { /* block id: 87 */
            uint64_t l_330 = 8UL;
            int32_t *l_336 = &p_1415->g_81;
            int32_t **l_335 = &l_336;
            for (p_1415->g_312 = (-4); (p_1415->g_312 >= 10); p_1415->g_312 = safe_add_func_uint8_t_u_u(p_1415->g_312, 2))
            { /* block id: 90 */
                uint64_t l_321 = 8UL;
                l_321++;
                (*p_1415->g_327) = (*p_1415->g_223);
            }
            for (p_1415->g_178 = (-19); (p_1415->g_178 < (-12)); ++p_1415->g_178)
            { /* block id: 96 */
                if (l_330)
                    break;
                for (p_1415->g_172 = 0; (p_1415->g_172 > (-11)); --p_1415->g_172)
                { /* block id: 100 */
                    int32_t ***l_334[8][1] = {{&l_333},{&l_333},{&l_333},{&l_333},{&l_333},{&l_333},{&l_333},{&l_333}};
                    int i, j;
                    l_337[0] = (l_335 = l_333);
                }
            }
        }
        (*p_1415->g_238) |= ((((l_341 = l_339) != (l_342 = (*p_1415->g_327))) && ((p_1415->g_88[5] ^= ((VECTOR(uint32_t, 8))(l_343.xxyxxxxy)).s1) <= (*p_73))) ^ l_344);
        l_345[0] = p_70;
    }
    (*p_1415->g_237) = l_346;
    return l_181[5];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1416;
    struct S1* p_1415 = &c_1416;
    struct S1 c_1417 = {
        0L, // p_1415->g_3
        4L, // p_1415->g_9
        0x460EDAC7A8CF1D65L, // p_1415->g_15
        0x2FC257A10DD66408L, // p_1415->g_22
        0x51ACAE7BL, // p_1415->g_26
        0x15L, // p_1415->g_27
        (VECTOR(int32_t, 16))(0x59FABAF1L, (VECTOR(int32_t, 4))(0x59FABAF1L, (VECTOR(int32_t, 2))(0x59FABAF1L, 0x1372625AL), 0x1372625AL), 0x1372625AL, 0x59FABAF1L, 0x1372625AL, (VECTOR(int32_t, 2))(0x59FABAF1L, 0x1372625AL), (VECTOR(int32_t, 2))(0x59FABAF1L, 0x1372625AL), 0x59FABAF1L, 0x1372625AL, 0x59FABAF1L, 0x1372625AL), // p_1415->g_30
        (-1L), // p_1415->g_44
        (-1L), // p_1415->g_81
        {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}, // p_1415->g_88
        {0x81BF5FED851E2D6AL,0x81BF5FED851E2D6AL,0x81BF5FED851E2D6AL,0x81BF5FED851E2D6AL,0x81BF5FED851E2D6AL,0x81BF5FED851E2D6AL,0x81BF5FED851E2D6AL,0x81BF5FED851E2D6AL}, // p_1415->g_114
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x4CL), 0x4CL), 0x4CL, 0L, 0x4CL), // p_1415->g_122
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xB2L), 0xB2L), // p_1415->g_125
        (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), (-5L)), (-5L)), // p_1415->g_130
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x5CL), 0x5CL), 0x5CL, 1L, 0x5CL), // p_1415->g_135
        18446744073709551615UL, // p_1415->g_142
        &p_1415->g_44, // p_1415->g_146
        (VECTOR(int32_t, 2))(9L, 0x5C058660L), // p_1415->g_149
        0x535BL, // p_1415->g_172
        1L, // p_1415->g_178
        (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 1L), 1L), // p_1415->g_191
        {0}, // p_1415->g_222
        (void*)0, // p_1415->g_224
        &p_1415->g_224, // p_1415->g_223
        (void*)0, // p_1415->g_236
        &p_1415->g_44, // p_1415->g_238
        &p_1415->g_238, // p_1415->g_237
        (VECTOR(uint8_t, 8))(0x9FL, (VECTOR(uint8_t, 4))(0x9FL, (VECTOR(uint8_t, 2))(0x9FL, 1UL), 1UL), 1UL, 0x9FL, 1UL), // p_1415->g_279
        (VECTOR(uint8_t, 4))(0x09L, (VECTOR(uint8_t, 2))(0x09L, 248UL), 248UL), // p_1415->g_280
        (VECTOR(int8_t, 8))(0x6DL, (VECTOR(int8_t, 4))(0x6DL, (VECTOR(int8_t, 2))(0x6DL, 0x51L), 0x51L), 0x51L, 0x6DL, 0x51L), // p_1415->g_295
        (VECTOR(int8_t, 8))(0x7DL, (VECTOR(int8_t, 4))(0x7DL, (VECTOR(int8_t, 2))(0x7DL, (-7L)), (-7L)), (-7L), 0x7DL, (-7L)), // p_1415->g_296
        (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x2EL), 0x2EL), // p_1415->g_304
        65535UL, // p_1415->g_312
        {{{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL},{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL}},{{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL},{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL}},{{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL},{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL}},{{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL},{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL}},{{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL},{0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL,0x9EB4L,0xFBEAL,0xFBEAL}}}, // p_1415->g_314
        {&p_1415->g_224,&p_1415->g_224}, // p_1415->g_324
        (void*)0, // p_1415->g_325
        {{&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224},{&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224},{&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224},{&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224},{&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224},{&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224},{&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224,&p_1415->g_224}}, // p_1415->g_326
        &p_1415->g_224, // p_1415->g_327
        (VECTOR(int8_t, 2))(0x4BL, 0x03L), // p_1415->g_353
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1415->g_402
        &p_1415->g_81, // p_1415->g_404
        &p_1415->g_404, // p_1415->g_403
        &p_1415->g_44, // p_1415->g_413
        &p_1415->g_15, // p_1415->g_425
        (-5L), // p_1415->g_427
        (void*)0, // p_1415->g_428
        &p_1415->g_44, // p_1415->g_429
        (VECTOR(uint8_t, 16))(0x9AL, (VECTOR(uint8_t, 4))(0x9AL, (VECTOR(uint8_t, 2))(0x9AL, 0x24L), 0x24L), 0x24L, 0x9AL, 0x24L, (VECTOR(uint8_t, 2))(0x9AL, 0x24L), (VECTOR(uint8_t, 2))(0x9AL, 0x24L), 0x9AL, 0x24L, 0x9AL, 0x24L), // p_1415->g_432
        &p_1415->g_224, // p_1415->g_443
        {{254UL,254UL,254UL,254UL,254UL,254UL},{254UL,254UL,254UL,254UL,254UL,254UL},{254UL,254UL,254UL,254UL,254UL,254UL}}, // p_1415->g_451
        {0x2C414A62730DAC72L,0x2C414A62730DAC72L,0x2C414A62730DAC72L,0x2C414A62730DAC72L,0x2C414A62730DAC72L}, // p_1415->g_454
        0x4FBB4A88L, // p_1415->g_462
        8L, // p_1415->g_464
        (VECTOR(uint16_t, 16))(0x659AL, (VECTOR(uint16_t, 4))(0x659AL, (VECTOR(uint16_t, 2))(0x659AL, 65532UL), 65532UL), 65532UL, 0x659AL, 65532UL, (VECTOR(uint16_t, 2))(0x659AL, 65532UL), (VECTOR(uint16_t, 2))(0x659AL, 65532UL), 0x659AL, 65532UL, 0x659AL, 65532UL), // p_1415->g_505
        (VECTOR(uint16_t, 2))(0x0B6CL, 0x1AF5L), // p_1415->g_507
        (VECTOR(uint16_t, 2))(65535UL, 1UL), // p_1415->g_508
        0x66L, // p_1415->g_512
        0x2DF6F910L, // p_1415->g_520
        {0}, // p_1415->g_546
        {{0},{0},{0},{0}}, // p_1415->g_557
        &p_1415->g_81, // p_1415->g_562
        &p_1415->g_562, // p_1415->g_561
        &p_1415->g_561, // p_1415->g_560
        &p_1415->g_114[7], // p_1415->g_576
        &p_1415->g_238, // p_1415->g_578
        (VECTOR(uint32_t, 16))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 6UL), 6UL), 6UL, 4294967290UL, 6UL, (VECTOR(uint32_t, 2))(4294967290UL, 6UL), (VECTOR(uint32_t, 2))(4294967290UL, 6UL), 4294967290UL, 6UL, 4294967290UL, 6UL), // p_1415->g_596
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x1EL), 0x1EL), 0x1EL, 1L, 0x1EL), // p_1415->g_605
        (VECTOR(int8_t, 16))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x1DL), 0x1DL), 0x1DL, (-5L), 0x1DL, (VECTOR(int8_t, 2))((-5L), 0x1DL), (VECTOR(int8_t, 2))((-5L), 0x1DL), (-5L), 0x1DL, (-5L), 0x1DL), // p_1415->g_608
        (VECTOR(int16_t, 4))(0x2737L, (VECTOR(int16_t, 2))(0x2737L, 1L), 1L), // p_1415->g_654
        (VECTOR(int16_t, 16))(0x027AL, (VECTOR(int16_t, 4))(0x027AL, (VECTOR(int16_t, 2))(0x027AL, 0x5113L), 0x5113L), 0x5113L, 0x027AL, 0x5113L, (VECTOR(int16_t, 2))(0x027AL, 0x5113L), (VECTOR(int16_t, 2))(0x027AL, 0x5113L), 0x027AL, 0x5113L, 0x027AL, 0x5113L), // p_1415->g_662
        0x14ED0D0E054018CAL, // p_1415->g_680
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL, 255UL, 255UL, 255UL), // p_1415->g_682
        &p_1415->g_238, // p_1415->g_690
        &p_1415->g_238, // p_1415->g_691
        (VECTOR(int64_t, 4))(0x2396B7D551E505A2L, (VECTOR(int64_t, 2))(0x2396B7D551E505A2L, 0x240045C2E4B30225L), 0x240045C2E4B30225L), // p_1415->g_692
        (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 0L), 0L), // p_1415->g_699
        (VECTOR(int32_t, 2))(0x5948BB15L, 0x2CD4E59CL), // p_1415->g_713
        (VECTOR(uint32_t, 16))(0x2173011AL, (VECTOR(uint32_t, 4))(0x2173011AL, (VECTOR(uint32_t, 2))(0x2173011AL, 7UL), 7UL), 7UL, 0x2173011AL, 7UL, (VECTOR(uint32_t, 2))(0x2173011AL, 7UL), (VECTOR(uint32_t, 2))(0x2173011AL, 7UL), 0x2173011AL, 7UL, 0x2173011AL, 7UL), // p_1415->g_723
        (VECTOR(int16_t, 2))(0x08E7L, (-1L)), // p_1415->g_729
        (VECTOR(int8_t, 2))(8L, 6L), // p_1415->g_747
        {{{&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0]},{&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0]},{&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0],&p_1415->g_454[0]}}}, // p_1415->g_756
        {{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}}}, // p_1415->g_760
        {0}, // p_1415->g_763
        0L, // p_1415->g_805
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL), // p_1415->g_826
        (void*)0, // p_1415->g_862
        (VECTOR(uint32_t, 16))(0x451B1A6DL, (VECTOR(uint32_t, 4))(0x451B1A6DL, (VECTOR(uint32_t, 2))(0x451B1A6DL, 0xAD538431L), 0xAD538431L), 0xAD538431L, 0x451B1A6DL, 0xAD538431L, (VECTOR(uint32_t, 2))(0x451B1A6DL, 0xAD538431L), (VECTOR(uint32_t, 2))(0x451B1A6DL, 0xAD538431L), 0x451B1A6DL, 0xAD538431L, 0x451B1A6DL, 0xAD538431L), // p_1415->g_869
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x558A4E0AL), 0x558A4E0AL), // p_1415->g_870
        (VECTOR(uint16_t, 4))(0xCA80L, (VECTOR(uint16_t, 2))(0xCA80L, 0xBBFAL), 0xBBFAL), // p_1415->g_878
        {0}, // p_1415->g_892
        (void*)0, // p_1415->g_900
        (void*)0, // p_1415->g_909
        (void*)0, // p_1415->g_910
        (void*)0, // p_1415->g_911
        &p_1415->g_238, // p_1415->g_912
        {{{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)}},{{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)}},{{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)}},{{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)}}}, // p_1415->g_914
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x2B83B145A87D8CBCL), 0x2B83B145A87D8CBCL), // p_1415->g_925
        {0}, // p_1415->g_948
        &p_1415->g_562, // p_1415->g_962
        {{0},{0},{0},{0},{0},{0},{0}}, // p_1415->g_964
        (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), // p_1415->g_969
        (VECTOR(int64_t, 8))(0x0E55469AC60980BEL, (VECTOR(int64_t, 4))(0x0E55469AC60980BEL, (VECTOR(int64_t, 2))(0x0E55469AC60980BEL, (-1L)), (-1L)), (-1L), 0x0E55469AC60980BEL, (-1L)), // p_1415->g_998
        (VECTOR(uint16_t, 2))(0x3E3FL, 1UL), // p_1415->g_1008
        0x4945EEDAL, // p_1415->g_1013
        (VECTOR(int16_t, 16))(0x21FAL, (VECTOR(int16_t, 4))(0x21FAL, (VECTOR(int16_t, 2))(0x21FAL, 0x31FFL), 0x31FFL), 0x31FFL, 0x21FAL, 0x31FFL, (VECTOR(int16_t, 2))(0x21FAL, 0x31FFL), (VECTOR(int16_t, 2))(0x21FAL, 0x31FFL), 0x21FAL, 0x31FFL, 0x21FAL, 0x31FFL), // p_1415->g_1031
        (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x47FBL), 0x47FBL), 0x47FBL, (-10L), 0x47FBL, (VECTOR(int16_t, 2))((-10L), 0x47FBL), (VECTOR(int16_t, 2))((-10L), 0x47FBL), (-10L), 0x47FBL, (-10L), 0x47FBL), // p_1415->g_1032
        (VECTOR(int64_t, 4))(0x6E8DA0E9440C9F64L, (VECTOR(int64_t, 2))(0x6E8DA0E9440C9F64L, 0x615CAEB34AAD1788L), 0x615CAEB34AAD1788L), // p_1415->g_1072
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x3AFCD251L), 0x3AFCD251L), // p_1415->g_1075
        (VECTOR(int64_t, 8))(0x06A657FF2C1CA786L, (VECTOR(int64_t, 4))(0x06A657FF2C1CA786L, (VECTOR(int64_t, 2))(0x06A657FF2C1CA786L, 0x003188EAAA1CCECCL), 0x003188EAAA1CCECCL), 0x003188EAAA1CCECCL, 0x06A657FF2C1CA786L, 0x003188EAAA1CCECCL), // p_1415->g_1076
        (VECTOR(uint8_t, 4))(0x42L, (VECTOR(uint8_t, 2))(0x42L, 4UL), 4UL), // p_1415->g_1101
        0x62CC5B12L, // p_1415->g_1107
        (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0x6DL), 0x6DL), 0x6DL, 6UL, 0x6DL), // p_1415->g_1128
        (VECTOR(uint64_t, 8))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 0UL), 0UL), 0UL, 2UL, 0UL), // p_1415->g_1158
        &p_1415->g_427, // p_1415->g_1172
        &p_1415->g_1172, // p_1415->g_1171
        (VECTOR(int64_t, 8))((-3L), (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 5L), 5L), 5L, (-3L), 5L), // p_1415->g_1209
        &p_1415->g_1107, // p_1415->g_1230
        (void*)0, // p_1415->g_1232
        &p_1415->g_1232, // p_1415->g_1231
        &p_1415->g_314[2][1][5], // p_1415->g_1234
        &p_1415->g_1234, // p_1415->g_1233
        (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, 0x04L), 0x04L), // p_1415->g_1247
        (VECTOR(int8_t, 16))(0x0AL, (VECTOR(int8_t, 4))(0x0AL, (VECTOR(int8_t, 2))(0x0AL, 1L), 1L), 1L, 0x0AL, 1L, (VECTOR(int8_t, 2))(0x0AL, 1L), (VECTOR(int8_t, 2))(0x0AL, 1L), 0x0AL, 1L, 0x0AL, 1L), // p_1415->g_1249
        (VECTOR(uint16_t, 8))(0xB2BCL, (VECTOR(uint16_t, 4))(0xB2BCL, (VECTOR(uint16_t, 2))(0xB2BCL, 0x49A2L), 0x49A2L), 0x49A2L, 0xB2BCL, 0x49A2L), // p_1415->g_1270
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 4L), 4L), 4L, 0L, 4L, (VECTOR(int64_t, 2))(0L, 4L), (VECTOR(int64_t, 2))(0L, 4L), 0L, 4L, 0L, 4L), // p_1415->g_1271
        {0}, // p_1415->g_1308
        {{0}}, // p_1415->g_1322
        (VECTOR(uint8_t, 2))(0xADL, 251UL), // p_1415->g_1341
        0x255F8E3A230A8830L, // p_1415->g_1366
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x2A007A91A922AF2DL), 0x2A007A91A922AF2DL), 0x2A007A91A922AF2DL, (-1L), 0x2A007A91A922AF2DL), // p_1415->g_1386
        &p_1415->g_238, // p_1415->g_1406
        &p_1415->g_238, // p_1415->g_1414
        sequence_input[get_global_id(0)], // p_1415->global_0_offset
        sequence_input[get_global_id(1)], // p_1415->global_1_offset
        sequence_input[get_global_id(2)], // p_1415->global_2_offset
        sequence_input[get_local_id(0)], // p_1415->local_0_offset
        sequence_input[get_local_id(1)], // p_1415->local_1_offset
        sequence_input[get_local_id(2)], // p_1415->local_2_offset
        sequence_input[get_group_id(0)], // p_1415->group_0_offset
        sequence_input[get_group_id(1)], // p_1415->group_1_offset
        sequence_input[get_group_id(2)], // p_1415->group_2_offset
    };
    c_1416 = c_1417;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1415);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1415->g_3, "p_1415->g_3", print_hash_value);
    transparent_crc(p_1415->g_9, "p_1415->g_9", print_hash_value);
    transparent_crc(p_1415->g_15, "p_1415->g_15", print_hash_value);
    transparent_crc(p_1415->g_22, "p_1415->g_22", print_hash_value);
    transparent_crc(p_1415->g_26, "p_1415->g_26", print_hash_value);
    transparent_crc(p_1415->g_27, "p_1415->g_27", print_hash_value);
    transparent_crc(p_1415->g_30.s0, "p_1415->g_30.s0", print_hash_value);
    transparent_crc(p_1415->g_30.s1, "p_1415->g_30.s1", print_hash_value);
    transparent_crc(p_1415->g_30.s2, "p_1415->g_30.s2", print_hash_value);
    transparent_crc(p_1415->g_30.s3, "p_1415->g_30.s3", print_hash_value);
    transparent_crc(p_1415->g_30.s4, "p_1415->g_30.s4", print_hash_value);
    transparent_crc(p_1415->g_30.s5, "p_1415->g_30.s5", print_hash_value);
    transparent_crc(p_1415->g_30.s6, "p_1415->g_30.s6", print_hash_value);
    transparent_crc(p_1415->g_30.s7, "p_1415->g_30.s7", print_hash_value);
    transparent_crc(p_1415->g_30.s8, "p_1415->g_30.s8", print_hash_value);
    transparent_crc(p_1415->g_30.s9, "p_1415->g_30.s9", print_hash_value);
    transparent_crc(p_1415->g_30.sa, "p_1415->g_30.sa", print_hash_value);
    transparent_crc(p_1415->g_30.sb, "p_1415->g_30.sb", print_hash_value);
    transparent_crc(p_1415->g_30.sc, "p_1415->g_30.sc", print_hash_value);
    transparent_crc(p_1415->g_30.sd, "p_1415->g_30.sd", print_hash_value);
    transparent_crc(p_1415->g_30.se, "p_1415->g_30.se", print_hash_value);
    transparent_crc(p_1415->g_30.sf, "p_1415->g_30.sf", print_hash_value);
    transparent_crc(p_1415->g_44, "p_1415->g_44", print_hash_value);
    transparent_crc(p_1415->g_81, "p_1415->g_81", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1415->g_88[i], "p_1415->g_88[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1415->g_114[i], "p_1415->g_114[i]", print_hash_value);

    }
    transparent_crc(p_1415->g_122.s0, "p_1415->g_122.s0", print_hash_value);
    transparent_crc(p_1415->g_122.s1, "p_1415->g_122.s1", print_hash_value);
    transparent_crc(p_1415->g_122.s2, "p_1415->g_122.s2", print_hash_value);
    transparent_crc(p_1415->g_122.s3, "p_1415->g_122.s3", print_hash_value);
    transparent_crc(p_1415->g_122.s4, "p_1415->g_122.s4", print_hash_value);
    transparent_crc(p_1415->g_122.s5, "p_1415->g_122.s5", print_hash_value);
    transparent_crc(p_1415->g_122.s6, "p_1415->g_122.s6", print_hash_value);
    transparent_crc(p_1415->g_122.s7, "p_1415->g_122.s7", print_hash_value);
    transparent_crc(p_1415->g_125.x, "p_1415->g_125.x", print_hash_value);
    transparent_crc(p_1415->g_125.y, "p_1415->g_125.y", print_hash_value);
    transparent_crc(p_1415->g_125.z, "p_1415->g_125.z", print_hash_value);
    transparent_crc(p_1415->g_125.w, "p_1415->g_125.w", print_hash_value);
    transparent_crc(p_1415->g_130.x, "p_1415->g_130.x", print_hash_value);
    transparent_crc(p_1415->g_130.y, "p_1415->g_130.y", print_hash_value);
    transparent_crc(p_1415->g_130.z, "p_1415->g_130.z", print_hash_value);
    transparent_crc(p_1415->g_130.w, "p_1415->g_130.w", print_hash_value);
    transparent_crc(p_1415->g_135.s0, "p_1415->g_135.s0", print_hash_value);
    transparent_crc(p_1415->g_135.s1, "p_1415->g_135.s1", print_hash_value);
    transparent_crc(p_1415->g_135.s2, "p_1415->g_135.s2", print_hash_value);
    transparent_crc(p_1415->g_135.s3, "p_1415->g_135.s3", print_hash_value);
    transparent_crc(p_1415->g_135.s4, "p_1415->g_135.s4", print_hash_value);
    transparent_crc(p_1415->g_135.s5, "p_1415->g_135.s5", print_hash_value);
    transparent_crc(p_1415->g_135.s6, "p_1415->g_135.s6", print_hash_value);
    transparent_crc(p_1415->g_135.s7, "p_1415->g_135.s7", print_hash_value);
    transparent_crc(p_1415->g_142, "p_1415->g_142", print_hash_value);
    transparent_crc(p_1415->g_149.x, "p_1415->g_149.x", print_hash_value);
    transparent_crc(p_1415->g_149.y, "p_1415->g_149.y", print_hash_value);
    transparent_crc(p_1415->g_172, "p_1415->g_172", print_hash_value);
    transparent_crc(p_1415->g_178, "p_1415->g_178", print_hash_value);
    transparent_crc(p_1415->g_191.x, "p_1415->g_191.x", print_hash_value);
    transparent_crc(p_1415->g_191.y, "p_1415->g_191.y", print_hash_value);
    transparent_crc(p_1415->g_191.z, "p_1415->g_191.z", print_hash_value);
    transparent_crc(p_1415->g_191.w, "p_1415->g_191.w", print_hash_value);
    transparent_crc(p_1415->g_279.s0, "p_1415->g_279.s0", print_hash_value);
    transparent_crc(p_1415->g_279.s1, "p_1415->g_279.s1", print_hash_value);
    transparent_crc(p_1415->g_279.s2, "p_1415->g_279.s2", print_hash_value);
    transparent_crc(p_1415->g_279.s3, "p_1415->g_279.s3", print_hash_value);
    transparent_crc(p_1415->g_279.s4, "p_1415->g_279.s4", print_hash_value);
    transparent_crc(p_1415->g_279.s5, "p_1415->g_279.s5", print_hash_value);
    transparent_crc(p_1415->g_279.s6, "p_1415->g_279.s6", print_hash_value);
    transparent_crc(p_1415->g_279.s7, "p_1415->g_279.s7", print_hash_value);
    transparent_crc(p_1415->g_280.x, "p_1415->g_280.x", print_hash_value);
    transparent_crc(p_1415->g_280.y, "p_1415->g_280.y", print_hash_value);
    transparent_crc(p_1415->g_280.z, "p_1415->g_280.z", print_hash_value);
    transparent_crc(p_1415->g_280.w, "p_1415->g_280.w", print_hash_value);
    transparent_crc(p_1415->g_295.s0, "p_1415->g_295.s0", print_hash_value);
    transparent_crc(p_1415->g_295.s1, "p_1415->g_295.s1", print_hash_value);
    transparent_crc(p_1415->g_295.s2, "p_1415->g_295.s2", print_hash_value);
    transparent_crc(p_1415->g_295.s3, "p_1415->g_295.s3", print_hash_value);
    transparent_crc(p_1415->g_295.s4, "p_1415->g_295.s4", print_hash_value);
    transparent_crc(p_1415->g_295.s5, "p_1415->g_295.s5", print_hash_value);
    transparent_crc(p_1415->g_295.s6, "p_1415->g_295.s6", print_hash_value);
    transparent_crc(p_1415->g_295.s7, "p_1415->g_295.s7", print_hash_value);
    transparent_crc(p_1415->g_296.s0, "p_1415->g_296.s0", print_hash_value);
    transparent_crc(p_1415->g_296.s1, "p_1415->g_296.s1", print_hash_value);
    transparent_crc(p_1415->g_296.s2, "p_1415->g_296.s2", print_hash_value);
    transparent_crc(p_1415->g_296.s3, "p_1415->g_296.s3", print_hash_value);
    transparent_crc(p_1415->g_296.s4, "p_1415->g_296.s4", print_hash_value);
    transparent_crc(p_1415->g_296.s5, "p_1415->g_296.s5", print_hash_value);
    transparent_crc(p_1415->g_296.s6, "p_1415->g_296.s6", print_hash_value);
    transparent_crc(p_1415->g_296.s7, "p_1415->g_296.s7", print_hash_value);
    transparent_crc(p_1415->g_304.x, "p_1415->g_304.x", print_hash_value);
    transparent_crc(p_1415->g_304.y, "p_1415->g_304.y", print_hash_value);
    transparent_crc(p_1415->g_304.z, "p_1415->g_304.z", print_hash_value);
    transparent_crc(p_1415->g_304.w, "p_1415->g_304.w", print_hash_value);
    transparent_crc(p_1415->g_312, "p_1415->g_312", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1415->g_314[i][j][k], "p_1415->g_314[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1415->g_353.x, "p_1415->g_353.x", print_hash_value);
    transparent_crc(p_1415->g_353.y, "p_1415->g_353.y", print_hash_value);
    transparent_crc(p_1415->g_427, "p_1415->g_427", print_hash_value);
    transparent_crc(p_1415->g_432.s0, "p_1415->g_432.s0", print_hash_value);
    transparent_crc(p_1415->g_432.s1, "p_1415->g_432.s1", print_hash_value);
    transparent_crc(p_1415->g_432.s2, "p_1415->g_432.s2", print_hash_value);
    transparent_crc(p_1415->g_432.s3, "p_1415->g_432.s3", print_hash_value);
    transparent_crc(p_1415->g_432.s4, "p_1415->g_432.s4", print_hash_value);
    transparent_crc(p_1415->g_432.s5, "p_1415->g_432.s5", print_hash_value);
    transparent_crc(p_1415->g_432.s6, "p_1415->g_432.s6", print_hash_value);
    transparent_crc(p_1415->g_432.s7, "p_1415->g_432.s7", print_hash_value);
    transparent_crc(p_1415->g_432.s8, "p_1415->g_432.s8", print_hash_value);
    transparent_crc(p_1415->g_432.s9, "p_1415->g_432.s9", print_hash_value);
    transparent_crc(p_1415->g_432.sa, "p_1415->g_432.sa", print_hash_value);
    transparent_crc(p_1415->g_432.sb, "p_1415->g_432.sb", print_hash_value);
    transparent_crc(p_1415->g_432.sc, "p_1415->g_432.sc", print_hash_value);
    transparent_crc(p_1415->g_432.sd, "p_1415->g_432.sd", print_hash_value);
    transparent_crc(p_1415->g_432.se, "p_1415->g_432.se", print_hash_value);
    transparent_crc(p_1415->g_432.sf, "p_1415->g_432.sf", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1415->g_451[i][j], "p_1415->g_451[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1415->g_454[i], "p_1415->g_454[i]", print_hash_value);

    }
    transparent_crc(p_1415->g_462, "p_1415->g_462", print_hash_value);
    transparent_crc(p_1415->g_464, "p_1415->g_464", print_hash_value);
    transparent_crc(p_1415->g_505.s0, "p_1415->g_505.s0", print_hash_value);
    transparent_crc(p_1415->g_505.s1, "p_1415->g_505.s1", print_hash_value);
    transparent_crc(p_1415->g_505.s2, "p_1415->g_505.s2", print_hash_value);
    transparent_crc(p_1415->g_505.s3, "p_1415->g_505.s3", print_hash_value);
    transparent_crc(p_1415->g_505.s4, "p_1415->g_505.s4", print_hash_value);
    transparent_crc(p_1415->g_505.s5, "p_1415->g_505.s5", print_hash_value);
    transparent_crc(p_1415->g_505.s6, "p_1415->g_505.s6", print_hash_value);
    transparent_crc(p_1415->g_505.s7, "p_1415->g_505.s7", print_hash_value);
    transparent_crc(p_1415->g_505.s8, "p_1415->g_505.s8", print_hash_value);
    transparent_crc(p_1415->g_505.s9, "p_1415->g_505.s9", print_hash_value);
    transparent_crc(p_1415->g_505.sa, "p_1415->g_505.sa", print_hash_value);
    transparent_crc(p_1415->g_505.sb, "p_1415->g_505.sb", print_hash_value);
    transparent_crc(p_1415->g_505.sc, "p_1415->g_505.sc", print_hash_value);
    transparent_crc(p_1415->g_505.sd, "p_1415->g_505.sd", print_hash_value);
    transparent_crc(p_1415->g_505.se, "p_1415->g_505.se", print_hash_value);
    transparent_crc(p_1415->g_505.sf, "p_1415->g_505.sf", print_hash_value);
    transparent_crc(p_1415->g_507.x, "p_1415->g_507.x", print_hash_value);
    transparent_crc(p_1415->g_507.y, "p_1415->g_507.y", print_hash_value);
    transparent_crc(p_1415->g_508.x, "p_1415->g_508.x", print_hash_value);
    transparent_crc(p_1415->g_508.y, "p_1415->g_508.y", print_hash_value);
    transparent_crc(p_1415->g_512, "p_1415->g_512", print_hash_value);
    transparent_crc(p_1415->g_520, "p_1415->g_520", print_hash_value);
    transparent_crc(p_1415->g_596.s0, "p_1415->g_596.s0", print_hash_value);
    transparent_crc(p_1415->g_596.s1, "p_1415->g_596.s1", print_hash_value);
    transparent_crc(p_1415->g_596.s2, "p_1415->g_596.s2", print_hash_value);
    transparent_crc(p_1415->g_596.s3, "p_1415->g_596.s3", print_hash_value);
    transparent_crc(p_1415->g_596.s4, "p_1415->g_596.s4", print_hash_value);
    transparent_crc(p_1415->g_596.s5, "p_1415->g_596.s5", print_hash_value);
    transparent_crc(p_1415->g_596.s6, "p_1415->g_596.s6", print_hash_value);
    transparent_crc(p_1415->g_596.s7, "p_1415->g_596.s7", print_hash_value);
    transparent_crc(p_1415->g_596.s8, "p_1415->g_596.s8", print_hash_value);
    transparent_crc(p_1415->g_596.s9, "p_1415->g_596.s9", print_hash_value);
    transparent_crc(p_1415->g_596.sa, "p_1415->g_596.sa", print_hash_value);
    transparent_crc(p_1415->g_596.sb, "p_1415->g_596.sb", print_hash_value);
    transparent_crc(p_1415->g_596.sc, "p_1415->g_596.sc", print_hash_value);
    transparent_crc(p_1415->g_596.sd, "p_1415->g_596.sd", print_hash_value);
    transparent_crc(p_1415->g_596.se, "p_1415->g_596.se", print_hash_value);
    transparent_crc(p_1415->g_596.sf, "p_1415->g_596.sf", print_hash_value);
    transparent_crc(p_1415->g_605.s0, "p_1415->g_605.s0", print_hash_value);
    transparent_crc(p_1415->g_605.s1, "p_1415->g_605.s1", print_hash_value);
    transparent_crc(p_1415->g_605.s2, "p_1415->g_605.s2", print_hash_value);
    transparent_crc(p_1415->g_605.s3, "p_1415->g_605.s3", print_hash_value);
    transparent_crc(p_1415->g_605.s4, "p_1415->g_605.s4", print_hash_value);
    transparent_crc(p_1415->g_605.s5, "p_1415->g_605.s5", print_hash_value);
    transparent_crc(p_1415->g_605.s6, "p_1415->g_605.s6", print_hash_value);
    transparent_crc(p_1415->g_605.s7, "p_1415->g_605.s7", print_hash_value);
    transparent_crc(p_1415->g_608.s0, "p_1415->g_608.s0", print_hash_value);
    transparent_crc(p_1415->g_608.s1, "p_1415->g_608.s1", print_hash_value);
    transparent_crc(p_1415->g_608.s2, "p_1415->g_608.s2", print_hash_value);
    transparent_crc(p_1415->g_608.s3, "p_1415->g_608.s3", print_hash_value);
    transparent_crc(p_1415->g_608.s4, "p_1415->g_608.s4", print_hash_value);
    transparent_crc(p_1415->g_608.s5, "p_1415->g_608.s5", print_hash_value);
    transparent_crc(p_1415->g_608.s6, "p_1415->g_608.s6", print_hash_value);
    transparent_crc(p_1415->g_608.s7, "p_1415->g_608.s7", print_hash_value);
    transparent_crc(p_1415->g_608.s8, "p_1415->g_608.s8", print_hash_value);
    transparent_crc(p_1415->g_608.s9, "p_1415->g_608.s9", print_hash_value);
    transparent_crc(p_1415->g_608.sa, "p_1415->g_608.sa", print_hash_value);
    transparent_crc(p_1415->g_608.sb, "p_1415->g_608.sb", print_hash_value);
    transparent_crc(p_1415->g_608.sc, "p_1415->g_608.sc", print_hash_value);
    transparent_crc(p_1415->g_608.sd, "p_1415->g_608.sd", print_hash_value);
    transparent_crc(p_1415->g_608.se, "p_1415->g_608.se", print_hash_value);
    transparent_crc(p_1415->g_608.sf, "p_1415->g_608.sf", print_hash_value);
    transparent_crc(p_1415->g_654.x, "p_1415->g_654.x", print_hash_value);
    transparent_crc(p_1415->g_654.y, "p_1415->g_654.y", print_hash_value);
    transparent_crc(p_1415->g_654.z, "p_1415->g_654.z", print_hash_value);
    transparent_crc(p_1415->g_654.w, "p_1415->g_654.w", print_hash_value);
    transparent_crc(p_1415->g_662.s0, "p_1415->g_662.s0", print_hash_value);
    transparent_crc(p_1415->g_662.s1, "p_1415->g_662.s1", print_hash_value);
    transparent_crc(p_1415->g_662.s2, "p_1415->g_662.s2", print_hash_value);
    transparent_crc(p_1415->g_662.s3, "p_1415->g_662.s3", print_hash_value);
    transparent_crc(p_1415->g_662.s4, "p_1415->g_662.s4", print_hash_value);
    transparent_crc(p_1415->g_662.s5, "p_1415->g_662.s5", print_hash_value);
    transparent_crc(p_1415->g_662.s6, "p_1415->g_662.s6", print_hash_value);
    transparent_crc(p_1415->g_662.s7, "p_1415->g_662.s7", print_hash_value);
    transparent_crc(p_1415->g_662.s8, "p_1415->g_662.s8", print_hash_value);
    transparent_crc(p_1415->g_662.s9, "p_1415->g_662.s9", print_hash_value);
    transparent_crc(p_1415->g_662.sa, "p_1415->g_662.sa", print_hash_value);
    transparent_crc(p_1415->g_662.sb, "p_1415->g_662.sb", print_hash_value);
    transparent_crc(p_1415->g_662.sc, "p_1415->g_662.sc", print_hash_value);
    transparent_crc(p_1415->g_662.sd, "p_1415->g_662.sd", print_hash_value);
    transparent_crc(p_1415->g_662.se, "p_1415->g_662.se", print_hash_value);
    transparent_crc(p_1415->g_662.sf, "p_1415->g_662.sf", print_hash_value);
    transparent_crc(p_1415->g_680, "p_1415->g_680", print_hash_value);
    transparent_crc(p_1415->g_682.s0, "p_1415->g_682.s0", print_hash_value);
    transparent_crc(p_1415->g_682.s1, "p_1415->g_682.s1", print_hash_value);
    transparent_crc(p_1415->g_682.s2, "p_1415->g_682.s2", print_hash_value);
    transparent_crc(p_1415->g_682.s3, "p_1415->g_682.s3", print_hash_value);
    transparent_crc(p_1415->g_682.s4, "p_1415->g_682.s4", print_hash_value);
    transparent_crc(p_1415->g_682.s5, "p_1415->g_682.s5", print_hash_value);
    transparent_crc(p_1415->g_682.s6, "p_1415->g_682.s6", print_hash_value);
    transparent_crc(p_1415->g_682.s7, "p_1415->g_682.s7", print_hash_value);
    transparent_crc(p_1415->g_682.s8, "p_1415->g_682.s8", print_hash_value);
    transparent_crc(p_1415->g_682.s9, "p_1415->g_682.s9", print_hash_value);
    transparent_crc(p_1415->g_682.sa, "p_1415->g_682.sa", print_hash_value);
    transparent_crc(p_1415->g_682.sb, "p_1415->g_682.sb", print_hash_value);
    transparent_crc(p_1415->g_682.sc, "p_1415->g_682.sc", print_hash_value);
    transparent_crc(p_1415->g_682.sd, "p_1415->g_682.sd", print_hash_value);
    transparent_crc(p_1415->g_682.se, "p_1415->g_682.se", print_hash_value);
    transparent_crc(p_1415->g_682.sf, "p_1415->g_682.sf", print_hash_value);
    transparent_crc(p_1415->g_692.x, "p_1415->g_692.x", print_hash_value);
    transparent_crc(p_1415->g_692.y, "p_1415->g_692.y", print_hash_value);
    transparent_crc(p_1415->g_692.z, "p_1415->g_692.z", print_hash_value);
    transparent_crc(p_1415->g_692.w, "p_1415->g_692.w", print_hash_value);
    transparent_crc(p_1415->g_699.x, "p_1415->g_699.x", print_hash_value);
    transparent_crc(p_1415->g_699.y, "p_1415->g_699.y", print_hash_value);
    transparent_crc(p_1415->g_699.z, "p_1415->g_699.z", print_hash_value);
    transparent_crc(p_1415->g_699.w, "p_1415->g_699.w", print_hash_value);
    transparent_crc(p_1415->g_713.x, "p_1415->g_713.x", print_hash_value);
    transparent_crc(p_1415->g_713.y, "p_1415->g_713.y", print_hash_value);
    transparent_crc(p_1415->g_723.s0, "p_1415->g_723.s0", print_hash_value);
    transparent_crc(p_1415->g_723.s1, "p_1415->g_723.s1", print_hash_value);
    transparent_crc(p_1415->g_723.s2, "p_1415->g_723.s2", print_hash_value);
    transparent_crc(p_1415->g_723.s3, "p_1415->g_723.s3", print_hash_value);
    transparent_crc(p_1415->g_723.s4, "p_1415->g_723.s4", print_hash_value);
    transparent_crc(p_1415->g_723.s5, "p_1415->g_723.s5", print_hash_value);
    transparent_crc(p_1415->g_723.s6, "p_1415->g_723.s6", print_hash_value);
    transparent_crc(p_1415->g_723.s7, "p_1415->g_723.s7", print_hash_value);
    transparent_crc(p_1415->g_723.s8, "p_1415->g_723.s8", print_hash_value);
    transparent_crc(p_1415->g_723.s9, "p_1415->g_723.s9", print_hash_value);
    transparent_crc(p_1415->g_723.sa, "p_1415->g_723.sa", print_hash_value);
    transparent_crc(p_1415->g_723.sb, "p_1415->g_723.sb", print_hash_value);
    transparent_crc(p_1415->g_723.sc, "p_1415->g_723.sc", print_hash_value);
    transparent_crc(p_1415->g_723.sd, "p_1415->g_723.sd", print_hash_value);
    transparent_crc(p_1415->g_723.se, "p_1415->g_723.se", print_hash_value);
    transparent_crc(p_1415->g_723.sf, "p_1415->g_723.sf", print_hash_value);
    transparent_crc(p_1415->g_729.x, "p_1415->g_729.x", print_hash_value);
    transparent_crc(p_1415->g_729.y, "p_1415->g_729.y", print_hash_value);
    transparent_crc(p_1415->g_747.x, "p_1415->g_747.x", print_hash_value);
    transparent_crc(p_1415->g_747.y, "p_1415->g_747.y", print_hash_value);
    transparent_crc(p_1415->g_805, "p_1415->g_805", print_hash_value);
    transparent_crc(p_1415->g_826.s0, "p_1415->g_826.s0", print_hash_value);
    transparent_crc(p_1415->g_826.s1, "p_1415->g_826.s1", print_hash_value);
    transparent_crc(p_1415->g_826.s2, "p_1415->g_826.s2", print_hash_value);
    transparent_crc(p_1415->g_826.s3, "p_1415->g_826.s3", print_hash_value);
    transparent_crc(p_1415->g_826.s4, "p_1415->g_826.s4", print_hash_value);
    transparent_crc(p_1415->g_826.s5, "p_1415->g_826.s5", print_hash_value);
    transparent_crc(p_1415->g_826.s6, "p_1415->g_826.s6", print_hash_value);
    transparent_crc(p_1415->g_826.s7, "p_1415->g_826.s7", print_hash_value);
    transparent_crc(p_1415->g_826.s8, "p_1415->g_826.s8", print_hash_value);
    transparent_crc(p_1415->g_826.s9, "p_1415->g_826.s9", print_hash_value);
    transparent_crc(p_1415->g_826.sa, "p_1415->g_826.sa", print_hash_value);
    transparent_crc(p_1415->g_826.sb, "p_1415->g_826.sb", print_hash_value);
    transparent_crc(p_1415->g_826.sc, "p_1415->g_826.sc", print_hash_value);
    transparent_crc(p_1415->g_826.sd, "p_1415->g_826.sd", print_hash_value);
    transparent_crc(p_1415->g_826.se, "p_1415->g_826.se", print_hash_value);
    transparent_crc(p_1415->g_826.sf, "p_1415->g_826.sf", print_hash_value);
    transparent_crc(p_1415->g_869.s0, "p_1415->g_869.s0", print_hash_value);
    transparent_crc(p_1415->g_869.s1, "p_1415->g_869.s1", print_hash_value);
    transparent_crc(p_1415->g_869.s2, "p_1415->g_869.s2", print_hash_value);
    transparent_crc(p_1415->g_869.s3, "p_1415->g_869.s3", print_hash_value);
    transparent_crc(p_1415->g_869.s4, "p_1415->g_869.s4", print_hash_value);
    transparent_crc(p_1415->g_869.s5, "p_1415->g_869.s5", print_hash_value);
    transparent_crc(p_1415->g_869.s6, "p_1415->g_869.s6", print_hash_value);
    transparent_crc(p_1415->g_869.s7, "p_1415->g_869.s7", print_hash_value);
    transparent_crc(p_1415->g_869.s8, "p_1415->g_869.s8", print_hash_value);
    transparent_crc(p_1415->g_869.s9, "p_1415->g_869.s9", print_hash_value);
    transparent_crc(p_1415->g_869.sa, "p_1415->g_869.sa", print_hash_value);
    transparent_crc(p_1415->g_869.sb, "p_1415->g_869.sb", print_hash_value);
    transparent_crc(p_1415->g_869.sc, "p_1415->g_869.sc", print_hash_value);
    transparent_crc(p_1415->g_869.sd, "p_1415->g_869.sd", print_hash_value);
    transparent_crc(p_1415->g_869.se, "p_1415->g_869.se", print_hash_value);
    transparent_crc(p_1415->g_869.sf, "p_1415->g_869.sf", print_hash_value);
    transparent_crc(p_1415->g_870.x, "p_1415->g_870.x", print_hash_value);
    transparent_crc(p_1415->g_870.y, "p_1415->g_870.y", print_hash_value);
    transparent_crc(p_1415->g_870.z, "p_1415->g_870.z", print_hash_value);
    transparent_crc(p_1415->g_870.w, "p_1415->g_870.w", print_hash_value);
    transparent_crc(p_1415->g_878.x, "p_1415->g_878.x", print_hash_value);
    transparent_crc(p_1415->g_878.y, "p_1415->g_878.y", print_hash_value);
    transparent_crc(p_1415->g_878.z, "p_1415->g_878.z", print_hash_value);
    transparent_crc(p_1415->g_878.w, "p_1415->g_878.w", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1415->g_914[i][j][k], "p_1415->g_914[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1415->g_925.x, "p_1415->g_925.x", print_hash_value);
    transparent_crc(p_1415->g_925.y, "p_1415->g_925.y", print_hash_value);
    transparent_crc(p_1415->g_925.z, "p_1415->g_925.z", print_hash_value);
    transparent_crc(p_1415->g_925.w, "p_1415->g_925.w", print_hash_value);
    transparent_crc(p_1415->g_969.x, "p_1415->g_969.x", print_hash_value);
    transparent_crc(p_1415->g_969.y, "p_1415->g_969.y", print_hash_value);
    transparent_crc(p_1415->g_969.z, "p_1415->g_969.z", print_hash_value);
    transparent_crc(p_1415->g_969.w, "p_1415->g_969.w", print_hash_value);
    transparent_crc(p_1415->g_998.s0, "p_1415->g_998.s0", print_hash_value);
    transparent_crc(p_1415->g_998.s1, "p_1415->g_998.s1", print_hash_value);
    transparent_crc(p_1415->g_998.s2, "p_1415->g_998.s2", print_hash_value);
    transparent_crc(p_1415->g_998.s3, "p_1415->g_998.s3", print_hash_value);
    transparent_crc(p_1415->g_998.s4, "p_1415->g_998.s4", print_hash_value);
    transparent_crc(p_1415->g_998.s5, "p_1415->g_998.s5", print_hash_value);
    transparent_crc(p_1415->g_998.s6, "p_1415->g_998.s6", print_hash_value);
    transparent_crc(p_1415->g_998.s7, "p_1415->g_998.s7", print_hash_value);
    transparent_crc(p_1415->g_1008.x, "p_1415->g_1008.x", print_hash_value);
    transparent_crc(p_1415->g_1008.y, "p_1415->g_1008.y", print_hash_value);
    transparent_crc(p_1415->g_1013, "p_1415->g_1013", print_hash_value);
    transparent_crc(p_1415->g_1031.s0, "p_1415->g_1031.s0", print_hash_value);
    transparent_crc(p_1415->g_1031.s1, "p_1415->g_1031.s1", print_hash_value);
    transparent_crc(p_1415->g_1031.s2, "p_1415->g_1031.s2", print_hash_value);
    transparent_crc(p_1415->g_1031.s3, "p_1415->g_1031.s3", print_hash_value);
    transparent_crc(p_1415->g_1031.s4, "p_1415->g_1031.s4", print_hash_value);
    transparent_crc(p_1415->g_1031.s5, "p_1415->g_1031.s5", print_hash_value);
    transparent_crc(p_1415->g_1031.s6, "p_1415->g_1031.s6", print_hash_value);
    transparent_crc(p_1415->g_1031.s7, "p_1415->g_1031.s7", print_hash_value);
    transparent_crc(p_1415->g_1031.s8, "p_1415->g_1031.s8", print_hash_value);
    transparent_crc(p_1415->g_1031.s9, "p_1415->g_1031.s9", print_hash_value);
    transparent_crc(p_1415->g_1031.sa, "p_1415->g_1031.sa", print_hash_value);
    transparent_crc(p_1415->g_1031.sb, "p_1415->g_1031.sb", print_hash_value);
    transparent_crc(p_1415->g_1031.sc, "p_1415->g_1031.sc", print_hash_value);
    transparent_crc(p_1415->g_1031.sd, "p_1415->g_1031.sd", print_hash_value);
    transparent_crc(p_1415->g_1031.se, "p_1415->g_1031.se", print_hash_value);
    transparent_crc(p_1415->g_1031.sf, "p_1415->g_1031.sf", print_hash_value);
    transparent_crc(p_1415->g_1032.s0, "p_1415->g_1032.s0", print_hash_value);
    transparent_crc(p_1415->g_1032.s1, "p_1415->g_1032.s1", print_hash_value);
    transparent_crc(p_1415->g_1032.s2, "p_1415->g_1032.s2", print_hash_value);
    transparent_crc(p_1415->g_1032.s3, "p_1415->g_1032.s3", print_hash_value);
    transparent_crc(p_1415->g_1032.s4, "p_1415->g_1032.s4", print_hash_value);
    transparent_crc(p_1415->g_1032.s5, "p_1415->g_1032.s5", print_hash_value);
    transparent_crc(p_1415->g_1032.s6, "p_1415->g_1032.s6", print_hash_value);
    transparent_crc(p_1415->g_1032.s7, "p_1415->g_1032.s7", print_hash_value);
    transparent_crc(p_1415->g_1032.s8, "p_1415->g_1032.s8", print_hash_value);
    transparent_crc(p_1415->g_1032.s9, "p_1415->g_1032.s9", print_hash_value);
    transparent_crc(p_1415->g_1032.sa, "p_1415->g_1032.sa", print_hash_value);
    transparent_crc(p_1415->g_1032.sb, "p_1415->g_1032.sb", print_hash_value);
    transparent_crc(p_1415->g_1032.sc, "p_1415->g_1032.sc", print_hash_value);
    transparent_crc(p_1415->g_1032.sd, "p_1415->g_1032.sd", print_hash_value);
    transparent_crc(p_1415->g_1032.se, "p_1415->g_1032.se", print_hash_value);
    transparent_crc(p_1415->g_1032.sf, "p_1415->g_1032.sf", print_hash_value);
    transparent_crc(p_1415->g_1072.x, "p_1415->g_1072.x", print_hash_value);
    transparent_crc(p_1415->g_1072.y, "p_1415->g_1072.y", print_hash_value);
    transparent_crc(p_1415->g_1072.z, "p_1415->g_1072.z", print_hash_value);
    transparent_crc(p_1415->g_1072.w, "p_1415->g_1072.w", print_hash_value);
    transparent_crc(p_1415->g_1075.x, "p_1415->g_1075.x", print_hash_value);
    transparent_crc(p_1415->g_1075.y, "p_1415->g_1075.y", print_hash_value);
    transparent_crc(p_1415->g_1075.z, "p_1415->g_1075.z", print_hash_value);
    transparent_crc(p_1415->g_1075.w, "p_1415->g_1075.w", print_hash_value);
    transparent_crc(p_1415->g_1076.s0, "p_1415->g_1076.s0", print_hash_value);
    transparent_crc(p_1415->g_1076.s1, "p_1415->g_1076.s1", print_hash_value);
    transparent_crc(p_1415->g_1076.s2, "p_1415->g_1076.s2", print_hash_value);
    transparent_crc(p_1415->g_1076.s3, "p_1415->g_1076.s3", print_hash_value);
    transparent_crc(p_1415->g_1076.s4, "p_1415->g_1076.s4", print_hash_value);
    transparent_crc(p_1415->g_1076.s5, "p_1415->g_1076.s5", print_hash_value);
    transparent_crc(p_1415->g_1076.s6, "p_1415->g_1076.s6", print_hash_value);
    transparent_crc(p_1415->g_1076.s7, "p_1415->g_1076.s7", print_hash_value);
    transparent_crc(p_1415->g_1101.x, "p_1415->g_1101.x", print_hash_value);
    transparent_crc(p_1415->g_1101.y, "p_1415->g_1101.y", print_hash_value);
    transparent_crc(p_1415->g_1101.z, "p_1415->g_1101.z", print_hash_value);
    transparent_crc(p_1415->g_1101.w, "p_1415->g_1101.w", print_hash_value);
    transparent_crc(p_1415->g_1107, "p_1415->g_1107", print_hash_value);
    transparent_crc(p_1415->g_1128.s0, "p_1415->g_1128.s0", print_hash_value);
    transparent_crc(p_1415->g_1128.s1, "p_1415->g_1128.s1", print_hash_value);
    transparent_crc(p_1415->g_1128.s2, "p_1415->g_1128.s2", print_hash_value);
    transparent_crc(p_1415->g_1128.s3, "p_1415->g_1128.s3", print_hash_value);
    transparent_crc(p_1415->g_1128.s4, "p_1415->g_1128.s4", print_hash_value);
    transparent_crc(p_1415->g_1128.s5, "p_1415->g_1128.s5", print_hash_value);
    transparent_crc(p_1415->g_1128.s6, "p_1415->g_1128.s6", print_hash_value);
    transparent_crc(p_1415->g_1128.s7, "p_1415->g_1128.s7", print_hash_value);
    transparent_crc(p_1415->g_1158.s0, "p_1415->g_1158.s0", print_hash_value);
    transparent_crc(p_1415->g_1158.s1, "p_1415->g_1158.s1", print_hash_value);
    transparent_crc(p_1415->g_1158.s2, "p_1415->g_1158.s2", print_hash_value);
    transparent_crc(p_1415->g_1158.s3, "p_1415->g_1158.s3", print_hash_value);
    transparent_crc(p_1415->g_1158.s4, "p_1415->g_1158.s4", print_hash_value);
    transparent_crc(p_1415->g_1158.s5, "p_1415->g_1158.s5", print_hash_value);
    transparent_crc(p_1415->g_1158.s6, "p_1415->g_1158.s6", print_hash_value);
    transparent_crc(p_1415->g_1158.s7, "p_1415->g_1158.s7", print_hash_value);
    transparent_crc(p_1415->g_1209.s0, "p_1415->g_1209.s0", print_hash_value);
    transparent_crc(p_1415->g_1209.s1, "p_1415->g_1209.s1", print_hash_value);
    transparent_crc(p_1415->g_1209.s2, "p_1415->g_1209.s2", print_hash_value);
    transparent_crc(p_1415->g_1209.s3, "p_1415->g_1209.s3", print_hash_value);
    transparent_crc(p_1415->g_1209.s4, "p_1415->g_1209.s4", print_hash_value);
    transparent_crc(p_1415->g_1209.s5, "p_1415->g_1209.s5", print_hash_value);
    transparent_crc(p_1415->g_1209.s6, "p_1415->g_1209.s6", print_hash_value);
    transparent_crc(p_1415->g_1209.s7, "p_1415->g_1209.s7", print_hash_value);
    transparent_crc(p_1415->g_1247.x, "p_1415->g_1247.x", print_hash_value);
    transparent_crc(p_1415->g_1247.y, "p_1415->g_1247.y", print_hash_value);
    transparent_crc(p_1415->g_1247.z, "p_1415->g_1247.z", print_hash_value);
    transparent_crc(p_1415->g_1247.w, "p_1415->g_1247.w", print_hash_value);
    transparent_crc(p_1415->g_1249.s0, "p_1415->g_1249.s0", print_hash_value);
    transparent_crc(p_1415->g_1249.s1, "p_1415->g_1249.s1", print_hash_value);
    transparent_crc(p_1415->g_1249.s2, "p_1415->g_1249.s2", print_hash_value);
    transparent_crc(p_1415->g_1249.s3, "p_1415->g_1249.s3", print_hash_value);
    transparent_crc(p_1415->g_1249.s4, "p_1415->g_1249.s4", print_hash_value);
    transparent_crc(p_1415->g_1249.s5, "p_1415->g_1249.s5", print_hash_value);
    transparent_crc(p_1415->g_1249.s6, "p_1415->g_1249.s6", print_hash_value);
    transparent_crc(p_1415->g_1249.s7, "p_1415->g_1249.s7", print_hash_value);
    transparent_crc(p_1415->g_1249.s8, "p_1415->g_1249.s8", print_hash_value);
    transparent_crc(p_1415->g_1249.s9, "p_1415->g_1249.s9", print_hash_value);
    transparent_crc(p_1415->g_1249.sa, "p_1415->g_1249.sa", print_hash_value);
    transparent_crc(p_1415->g_1249.sb, "p_1415->g_1249.sb", print_hash_value);
    transparent_crc(p_1415->g_1249.sc, "p_1415->g_1249.sc", print_hash_value);
    transparent_crc(p_1415->g_1249.sd, "p_1415->g_1249.sd", print_hash_value);
    transparent_crc(p_1415->g_1249.se, "p_1415->g_1249.se", print_hash_value);
    transparent_crc(p_1415->g_1249.sf, "p_1415->g_1249.sf", print_hash_value);
    transparent_crc(p_1415->g_1270.s0, "p_1415->g_1270.s0", print_hash_value);
    transparent_crc(p_1415->g_1270.s1, "p_1415->g_1270.s1", print_hash_value);
    transparent_crc(p_1415->g_1270.s2, "p_1415->g_1270.s2", print_hash_value);
    transparent_crc(p_1415->g_1270.s3, "p_1415->g_1270.s3", print_hash_value);
    transparent_crc(p_1415->g_1270.s4, "p_1415->g_1270.s4", print_hash_value);
    transparent_crc(p_1415->g_1270.s5, "p_1415->g_1270.s5", print_hash_value);
    transparent_crc(p_1415->g_1270.s6, "p_1415->g_1270.s6", print_hash_value);
    transparent_crc(p_1415->g_1270.s7, "p_1415->g_1270.s7", print_hash_value);
    transparent_crc(p_1415->g_1271.s0, "p_1415->g_1271.s0", print_hash_value);
    transparent_crc(p_1415->g_1271.s1, "p_1415->g_1271.s1", print_hash_value);
    transparent_crc(p_1415->g_1271.s2, "p_1415->g_1271.s2", print_hash_value);
    transparent_crc(p_1415->g_1271.s3, "p_1415->g_1271.s3", print_hash_value);
    transparent_crc(p_1415->g_1271.s4, "p_1415->g_1271.s4", print_hash_value);
    transparent_crc(p_1415->g_1271.s5, "p_1415->g_1271.s5", print_hash_value);
    transparent_crc(p_1415->g_1271.s6, "p_1415->g_1271.s6", print_hash_value);
    transparent_crc(p_1415->g_1271.s7, "p_1415->g_1271.s7", print_hash_value);
    transparent_crc(p_1415->g_1271.s8, "p_1415->g_1271.s8", print_hash_value);
    transparent_crc(p_1415->g_1271.s9, "p_1415->g_1271.s9", print_hash_value);
    transparent_crc(p_1415->g_1271.sa, "p_1415->g_1271.sa", print_hash_value);
    transparent_crc(p_1415->g_1271.sb, "p_1415->g_1271.sb", print_hash_value);
    transparent_crc(p_1415->g_1271.sc, "p_1415->g_1271.sc", print_hash_value);
    transparent_crc(p_1415->g_1271.sd, "p_1415->g_1271.sd", print_hash_value);
    transparent_crc(p_1415->g_1271.se, "p_1415->g_1271.se", print_hash_value);
    transparent_crc(p_1415->g_1271.sf, "p_1415->g_1271.sf", print_hash_value);
    transparent_crc(p_1415->g_1341.x, "p_1415->g_1341.x", print_hash_value);
    transparent_crc(p_1415->g_1341.y, "p_1415->g_1341.y", print_hash_value);
    transparent_crc(p_1415->g_1366, "p_1415->g_1366", print_hash_value);
    transparent_crc(p_1415->g_1386.s0, "p_1415->g_1386.s0", print_hash_value);
    transparent_crc(p_1415->g_1386.s1, "p_1415->g_1386.s1", print_hash_value);
    transparent_crc(p_1415->g_1386.s2, "p_1415->g_1386.s2", print_hash_value);
    transparent_crc(p_1415->g_1386.s3, "p_1415->g_1386.s3", print_hash_value);
    transparent_crc(p_1415->g_1386.s4, "p_1415->g_1386.s4", print_hash_value);
    transparent_crc(p_1415->g_1386.s5, "p_1415->g_1386.s5", print_hash_value);
    transparent_crc(p_1415->g_1386.s6, "p_1415->g_1386.s6", print_hash_value);
    transparent_crc(p_1415->g_1386.s7, "p_1415->g_1386.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
