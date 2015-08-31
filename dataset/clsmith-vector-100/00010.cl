// ---fake_divergence -g 1,1,2315 -l 1,1,1
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


// Seed: 10

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint8_t  f0;
};

union U1 {
   volatile uint32_t  f0;
};

union U2 {
   int8_t * volatile  f0;
};

union U3 {
   int8_t * volatile  f0;
   int8_t * volatile  f1;
   uint32_t  f2;
   uint32_t  f3;
   volatile int64_t  f4;
};

union U4 {
   int8_t  f0;
   volatile int32_t  f1;
};

union U5 {
   int8_t * f0;
};

struct S6 {
    int32_t g_3;
    volatile uint64_t g_5;
    int8_t g_19[8][2];
    uint16_t g_26;
    int32_t g_28;
    int32_t g_35;
    int32_t * volatile g_34;
    volatile VECTOR(int32_t, 4) g_66;
    volatile uint32_t g_67;
    union U4 *g_77;
    union U4 g_88;
    VECTOR(int16_t, 8) g_98;
    uint64_t g_106;
    uint8_t g_112;
    volatile VECTOR(uint32_t, 16) g_121;
    volatile VECTOR(uint32_t, 4) g_124;
    VECTOR(uint64_t, 16) g_155;
    VECTOR(uint64_t, 16) g_162;
    union U5 g_168;
    uint32_t g_170;
    volatile union U1 g_177;
    union U1 g_180;
    VECTOR(int8_t, 4) g_197;
    volatile VECTOR(int16_t, 16) g_206;
    union U2 g_237;
    union U2 *g_239;
    int32_t g_259;
    volatile VECTOR(int8_t, 4) g_278;
    VECTOR(uint8_t, 4) g_294;
    VECTOR(uint8_t, 2) g_302;
    VECTOR(uint8_t, 4) g_306;
    VECTOR(uint8_t, 4) g_310;
    VECTOR(uint8_t, 8) g_313;
    VECTOR(uint8_t, 16) g_314;
    union U0 g_330;
    union U0 * volatile g_329;
    union U0 * volatile * volatile g_331;
    union U2 g_339;
    volatile VECTOR(uint32_t, 4) g_360;
    VECTOR(int16_t, 2) g_367;
    int8_t g_386[8];
    int32_t *g_399[7];
    int32_t ** volatile g_398;
    VECTOR(int32_t, 2) g_407;
    VECTOR(int32_t, 2) g_408;
    VECTOR(uint32_t, 2) g_411;
    volatile VECTOR(uint32_t, 8) g_417;
    union U3 g_438;
    union U2 * volatile *g_440;
    union U2 * volatile * volatile * volatile g_439;
    volatile uint64_t ** volatile g_447;
    volatile uint64_t g_450;
    volatile uint64_t * volatile g_449;
    volatile uint64_t * volatile *g_448;
    int16_t *g_471;
    union U4 ** volatile g_479;
    volatile VECTOR(uint8_t, 8) g_488;
    VECTOR(int64_t, 2) g_497;
    uint64_t **g_522;
    uint64_t *g_524;
    uint64_t **g_523;
    VECTOR(uint32_t, 16) g_543;
    int32_t * volatile g_551;
    int32_t * volatile g_552;
    union U1 g_558[1];
    union U4 g_562;
    int32_t * volatile g_569;
    union U1 g_574;
    union U4 g_594;
    union U4 g_595;
    union U4 g_596;
    union U4 g_597;
    union U4 g_598;
    union U4 g_599;
    union U4 g_600;
    union U4 g_601;
    union U4 g_602;
    union U4 g_603;
    union U4 g_604;
    union U4 g_605;
    union U4 g_606;
    union U4 g_607;
    union U4 g_608;
    union U4 g_609[10][8][3];
    union U4 g_610;
    union U4 g_611;
    union U4 g_612;
    union U4 g_613;
    union U4 g_614;
    union U4 g_615;
    union U4 g_616;
    union U4 g_617[6];
    union U4 g_618;
    union U4 g_619;
    union U4 g_620;
    union U4 g_621;
    union U4 g_622;
    union U4 g_623;
    union U4 g_624[7][2];
    union U4 g_625;
    union U4 g_626;
    union U4 g_627;
    union U4 g_628;
    union U4 g_629;
    union U4 g_630;
    union U4 g_631;
    union U4 g_632;
    union U4 g_633[8];
    union U4 g_634;
    union U4 g_635;
    union U4 g_636;
    union U4 g_637[6][3][2];
    int32_t * volatile g_644;
    int32_t * volatile g_679;
    uint32_t *g_682;
    VECTOR(int64_t, 2) g_687;
    volatile VECTOR(int32_t, 16) g_699;
    VECTOR(int8_t, 4) g_712;
    VECTOR(uint8_t, 16) g_743;
    union U2 g_764;
    volatile union U1 *g_796;
    volatile union U1 ** volatile g_795;
    volatile union U3 g_815[7][10];
    VECTOR(int64_t, 2) g_818;
    VECTOR(int64_t, 4) g_819;
    VECTOR(int64_t, 4) g_820;
    int32_t ** volatile g_824;
    VECTOR(int64_t, 8) g_833;
    VECTOR(int16_t, 2) g_834;
    union U5 *g_887;
    union U4 g_889;
    VECTOR(int32_t, 16) g_893;
    volatile VECTOR(uint16_t, 8) g_912;
    volatile VECTOR(uint16_t, 4) g_968;
    VECTOR(uint16_t, 8) g_978;
    int32_t g_987;
    volatile union U4 g_988;
    VECTOR(int32_t, 2) g_992;
    VECTOR(int32_t, 4) g_993;
    union U4 g_1005;
    volatile int64_t g_1018;
    volatile int64_t *g_1017;
    volatile int64_t ** volatile g_1016;
    volatile int64_t ** volatile * volatile g_1019;
    union U2 **g_1039;
    union U2 ***g_1038;
    int64_t **g_1047;
    int64_t ** volatile *g_1046;
    union U1 g_1049;
    VECTOR(uint16_t, 2) g_1058;
    uint8_t g_1075;
    uint32_t g_1087;
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
int32_t  func_1(struct S6 * p_1090);
int16_t  func_10(int8_t * p_11, int32_t * p_12, int8_t * p_13, struct S6 * p_1090);
int8_t * func_14(uint8_t  p_15, int32_t * p_16, int8_t * p_17, struct S6 * p_1090);
int32_t * func_20(uint8_t  p_21, int64_t  p_22, struct S6 * p_1090);
int64_t  func_23(uint8_t  p_24, struct S6 * p_1090);
int32_t * func_36(int8_t * p_37, uint64_t  p_38, struct S6 * p_1090);
union U5  func_47(int32_t * p_48, union U5  p_49, int32_t  p_50, uint64_t  p_51, int16_t  p_52, struct S6 * p_1090);
int32_t * func_53(int16_t  p_54, struct S6 * p_1090);
int64_t  func_55(uint32_t  p_56, int8_t * p_57, int32_t * p_58, int8_t  p_59, struct S6 * p_1090);
union U4 * func_72(uint16_t  p_73, union U4 * p_74, int8_t * p_75, int32_t * p_76, struct S6 * p_1090);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1090->g_5 p_1090->g_3 p_1090->g_19 p_1090->g_26 p_1090->g_887 p_1090->g_168 p_1090->g_1046 p_1090->g_598.f0 p_1090->g_367 p_1090->g_610.f0 p_1090->g_612.f0 p_1090->g_820 p_1090->g_313 p_1090->g_28 p_1090->g_819
 * writes: p_1090->g_5 p_1090->g_28 p_1090->g_367 p_1090->g_3
 */
int32_t  func_1(struct S6 * p_1090)
{ /* block id: 4 */
    int32_t *l_2 = &p_1090->g_3;
    int32_t *l_4[9] = {&p_1090->g_3,(void*)0,&p_1090->g_3,&p_1090->g_3,(void*)0,&p_1090->g_3,&p_1090->g_3,(void*)0,&p_1090->g_3};
    int8_t *l_18 = &p_1090->g_19[0][0];
    union U1 *l_1048 = &p_1090->g_1049;
    int i;
    --p_1090->g_5;
    (*l_2) = (safe_lshift_func_int16_t_s_s(func_10(func_14(p_1090->g_3, l_4[4], l_18, p_1090), func_20(p_1090->g_5, func_23(p_1090->g_19[0][0], p_1090), p_1090), ((((((((*p_1090->g_887) , p_1090->g_1046) == (void*)0) > 7UL) , (void*)0) != l_1048) && 0x7621421EL) , (void*)0), p_1090), p_1090->g_819.x));
    return (*l_2);
}


/* ------------------------------------------ */
/* 
 * reads : p_1090->g_1058 p_1090->g_479 p_1090->g_77 p_1090->g_28 p_1090->g_3 p_1090->g_408 p_1090->g_1075 p_1090->g_598.f0 p_1090->g_367 p_1090->g_610.f0 p_1090->g_612.f0 p_1090->g_820 p_1090->g_313 p_1090->g_206 p_1090->g_629.f0 p_1090->g_19
 * writes: p_1090->g_28 p_1090->g_3 p_1090->g_834 p_1090->g_367 p_1090->g_1087 p_1090->g_19
 */
int16_t  func_10(int8_t * p_11, int32_t * p_12, int8_t * p_13, struct S6 * p_1090)
{ /* block id: 325 */
    int32_t l_1054[7][8][4] = {{{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L}},{{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L}},{{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L}},{{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L}},{{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L}},{{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L}},{{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L},{1L,1L,0x437F1A6AL,0x3EFBE213L}}};
    union U0 l_1055 = {255UL};
    VECTOR(int32_t, 8) l_1059 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 7L), 7L), 7L, 1L, 7L);
    VECTOR(int32_t, 2) l_1060 = (VECTOR(int32_t, 2))(0L, 5L);
    VECTOR(int32_t, 4) l_1061 = (VECTOR(int32_t, 4))(0x503246E8L, (VECTOR(int32_t, 2))(0x503246E8L, 3L), 3L);
    VECTOR(int32_t, 16) l_1062 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
    VECTOR(int32_t, 8) l_1063 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x61D38C45L), 0x61D38C45L), 0x61D38C45L, 0L, 0x61D38C45L);
    int32_t *l_1064 = (void*)0;
    int32_t *l_1065 = (void*)0;
    int32_t *l_1066 = &p_1090->g_3;
    VECTOR(int16_t, 2) l_1067 = (VECTOR(int16_t, 2))((-4L), 0x1FACL);
    VECTOR(int16_t, 16) l_1068 = (VECTOR(int16_t, 16))(0x4659L, (VECTOR(int16_t, 4))(0x4659L, (VECTOR(int16_t, 2))(0x4659L, 0x2FF2L), 0x2FF2L), 0x2FF2L, 0x4659L, 0x2FF2L, (VECTOR(int16_t, 2))(0x4659L, 0x2FF2L), (VECTOR(int16_t, 2))(0x4659L, 0x2FF2L), 0x4659L, 0x2FF2L, 0x4659L, 0x2FF2L);
    VECTOR(int16_t, 8) l_1069 = (VECTOR(int16_t, 8))(0x50CAL, (VECTOR(int16_t, 4))(0x50CAL, (VECTOR(int16_t, 2))(0x50CAL, 1L), 1L), 1L, 0x50CAL, 1L);
    int16_t *l_1070 = (void*)0;
    int16_t *l_1071 = (void*)0;
    int8_t l_1074 = (-8L);
    int16_t *l_1076[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_1077[1][8];
    VECTOR(int32_t, 2) l_1084 = (VECTOR(int32_t, 2))(0x3D6707F4L, 0x7469D264L);
    VECTOR(int32_t, 4) l_1085 = (VECTOR(int32_t, 4))(0x15B84E65L, (VECTOR(int32_t, 2))(0x15B84E65L, 1L), 1L);
    uint32_t *l_1086 = &p_1090->g_1087;
    union U5 l_1088 = {0};
    uint32_t l_1089 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
            l_1077[i][j] = 0x7287FE07L;
    }
    l_1054[6][6][2] = (safe_add_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((l_1054[6][6][2] <= ((l_1055 , ((((p_1090->g_367.y &= (((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 4))(p_1090->g_1058.xxxx))))) + ((VECTOR(uint16_t, 8))(((*p_1090->g_479) != ((((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_1059.s03402443)), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(l_1060.xx)).xyxyxyxxyxxxyyxy, ((VECTOR(int32_t, 8))(l_1061.yyxzwyxy)).s3546703361763535, ((VECTOR(int32_t, 8))(l_1062.s3a2d0323)).s4775205614353173))).sc8ee && ((VECTOR(int32_t, 4))((-8L), 0x249B8936L, 1L, 0L))))).wyzzwwyx))), 0L, (l_1061.x || l_1059.s7), (l_1061.x , ((*l_1066) = ((*p_12) &= ((VECTOR(int32_t, 16))(l_1063.s7561633237235011)).s1))), 0x447F545AL, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 2))(l_1067.xy)), ((VECTOR(int16_t, 16))(l_1068.s39846e9a2641c105)).s65))), 1L, (-1L))), (-4L), 8L, 0x68CDL, (-1L), 0x6A1CL, ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 16))(l_1069.s6256230052334733)).s9cc4, ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((*l_1066), (-1L), ((((p_1090->g_834.y = (*l_1066)) > (safe_mod_func_uint8_t_u_u(0x2CL, (*l_1066)))) || 0x5A9D9CC2L) <= (-9L)), 0x17D0L, ((VECTOR(int16_t, 8))(1L)), ((VECTOR(int16_t, 2))(0x4CC7L)), 1L, 0x2D3FL)).s3e0e == ((VECTOR(int16_t, 4))(0x27D9L))))).hi, (int16_t)(*l_1066)))).yxxx))), p_1090->g_408.y, 0L, (-4L))).sbd >= ((VECTOR(int16_t, 2))(4L))))).xyxx, ((VECTOR(int16_t, 4))((-1L)))))).zwwywyzxyxzzzzyy, ((VECTOR(uint16_t, 16))(65535UL))))).sa704 && ((VECTOR(int32_t, 4))((-3L)))))))).s0 && 0xA13F9C63L) | l_1061.w) ^ l_1074) , (void*)0)), p_1090->g_1075, 0xE474L, 7UL, GROUP_DIVERGE(0, 1), (*l_1066), 0x5012L, 4UL)).hi))).x != p_1090->g_598.f0)) | p_1090->g_610.f0) ^ p_1090->g_612.f0) <= 2UL)) > p_1090->g_820.x)) > 0x32ED6E303C3C6A93L), 0xFE17E00AL)), l_1077[0][7]));
    (*p_12) = ((*l_1066) = ((safe_mul_func_int16_t_s_s(p_1090->g_313.s4, (safe_add_func_uint8_t_u_u(p_1090->g_28, 3L)))) ^ ((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(l_1084.yyxxyxxyxxxxyyxx)).even && ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_1085.yzwz)), (((*l_1086) = FAKE_DIVERGE(p_1090->group_1_offset, get_group_id(1), 10)) , (((&p_1090->g_1087 != (((*p_11) &= ((0x1643L == p_1090->g_206.s0) < ((l_1055 , (0L | (l_1088 , FAKE_DIVERGE(p_1090->global_0_offset, get_global_id(0), 10)))) | p_1090->g_629.f0))) , &p_1090->g_1087)) != (*l_1066)) <= 1L)), l_1089, 9L, 0L))))).s30 & ((VECTOR(int32_t, 2))(0x2702EB03L))))).yyyy, ((VECTOR(int32_t, 4))(0x3B85835FL))))), ((VECTOR(int32_t, 2))(0x7F174ECFL)), (-8L), (-7L), 0x385E7603L, ((VECTOR(int32_t, 4))(6L)), ((VECTOR(int32_t, 2))(0x6B0AB90AL)), (-6L))).sf, (*l_1066))) <= (*p_12))));
    return (*l_1066);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_14(uint8_t  p_15, int32_t * p_16, int8_t * p_17, struct S6 * p_1090)
{ /* block id: 6 */
    return &p_1090->g_19[1][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1090->g_26
 * writes: p_1090->g_28
 */
int32_t * func_20(uint8_t  p_21, int64_t  p_22, struct S6 * p_1090)
{ /* block id: 14 */
    int32_t *l_27 = &p_1090->g_28;
    int8_t *l_39 = &p_1090->g_19[0][0];
    union U2 **l_1036 = &p_1090->g_239;
    union U2 ***l_1035 = &l_1036;
    int16_t l_1040 = 0x4D72L;
    int32_t l_1042 = 0x6BE1AA25L;
    int32_t *l_1045 = &p_1090->g_28;
    (*l_27) = p_1090->g_26;
    for (p_22 = 0; (p_22 < (-13)); p_22--)
    { /* block id: 18 */
        int32_t *l_33 = &p_1090->g_28;
        union U2 **l_1034 = &p_1090->g_239;
        union U2 ***l_1033 = &l_1034;
        int32_t **l_1044 = &l_27;
        for (p_1090->g_28 = 0; (p_1090->g_28 == 2); ++p_1090->g_28)
        { /* block id: 21 */
            int8_t *l_512 = &p_1090->g_19[0][0];
            VECTOR(int8_t, 2) l_513 = (VECTOR(int8_t, 2))(0x1CL, (-6L));
            int32_t *l_1021 = &p_1090->g_28;
            int i;
            (1 + 1);
        }
        (*l_1044) = (void*)0;
    }
    return l_1045;
}


/* ------------------------------------------ */
/* 
 * reads : p_1090->g_19 p_1090->g_26
 * writes:
 */
int64_t  func_23(uint8_t  p_24, struct S6 * p_1090)
{ /* block id: 8 */
    if (p_1090->g_19[0][0])
    { /* block id: 9 */
        int8_t l_25[1];
        int i;
        for (i = 0; i < 1; i++)
            l_25[i] = 0x2BL;
        return l_25[0];
    }
    else
    { /* block id: 11 */
        return p_1090->g_26;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1090->g_398 p_1090->g_399 p_1090->g_19 p_1090->g_569 p_1090->g_574 p_1090->g_471 p_1090->g_644 p_1090->g_628.f0 p_1090->g_28 p_1090->g_302 p_1090->g_795 p_1090->g_605.f0 p_1090->g_627.f0 p_1090->g_330 p_1090->g_815 p_1090->g_106 p_1090->g_77 p_1090->g_34 p_1090->g_88.f0 p_1090->g_35 p_1090->g_26 p_1090->g_177 p_1090->g_180 p_1090->g_155 p_1090->g_162 p_1090->g_3 p_1090->g_98 p_1090->g_66 p_1090->g_329 p_1090->g_339 p_1090->g_313 p_1090->g_197 p_1090->g_330.f0 p_1090->g_278 p_1090->g_306 p_1090->g_411 p_1090->g_168 p_1090->g_449 p_1090->g_450 p_1090->g_479 p_1090->g_824 p_1090->g_743 p_1090->g_820 p_1090->g_294 p_1090->g_616.f0 p_1090->g_614.f0 p_1090->g_408 p_1090->g_889 p_1090->g_912 p_1090->g_367 p_1090->g_180.f0 p_1090->g_634.f0 p_1090->g_687 p_1090->g_623.f0 p_1090->g_968 p_1090->g_978 p_1090->g_112 p_1090->g_615.f0 p_1090->g_602.f0 p_1090->g_887 p_1090->g_407 p_1090->g_988 p_1090->g_992 p_1090->g_993 p_1090->g_599.f0 p_1090->g_617.f0 p_1090->g_1016 p_1090->g_1019 p_1090->g_543 p_1090->g_558 p_1090->g_562 p_1090->g_170 p_1090->g_699 p_1090->g_712 p_1090->g_682 p_1090->g_386 p_1090->g_611.f0 p_1090->g_607.f0
 * writes: p_1090->g_88.f0 p_1090->g_522 p_1090->g_523 p_1090->g_26 p_1090->g_19 p_1090->g_330.f0 p_1090->g_35 p_1090->g_112 p_1090->g_259 p_1090->g_682 p_1090->g_623.f0 p_1090->g_607.f0 p_1090->g_601.f0 p_1090->g_302 p_1090->g_313 p_1090->g_438.f2 p_1090->g_106 p_1090->g_239 p_1090->g_329 p_1090->g_386 p_1090->g_367 p_1090->g_399 p_1090->g_411 p_1090->g_471 p_1090->g_77 p_1090->g_622.f0 p_1090->g_887 p_1090->g_407 p_1090->g_1016 p_1090->g_310
 */
int32_t * func_36(int8_t * p_37, uint64_t  p_38, struct S6 * p_1090)
{ /* block id: 151 */
    int32_t l_515 = 0x32498A66L;
    uint64_t **l_525 = &p_1090->g_524;
    VECTOR(uint16_t, 2) l_532 = (VECTOR(uint16_t, 2))(0xAF59L, 0xDCB6L);
    VECTOR(uint64_t, 16) l_556 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 1UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 1UL, 18446744073709551615UL, 1UL, 18446744073709551615UL);
    union U0 l_561 = {0x81L};
    int32_t l_568 = 0x51998991L;
    union U4 *l_638 = (void*)0;
    int16_t l_668[9][6] = {{0L,0x190BL,0x54B5L,0L,(-1L),0L},{0L,0x190BL,0x54B5L,0L,(-1L),0L},{0L,0x190BL,0x54B5L,0L,(-1L),0L},{0L,0x190BL,0x54B5L,0L,(-1L),0L},{0L,0x190BL,0x54B5L,0L,(-1L),0L},{0L,0x190BL,0x54B5L,0L,(-1L),0L},{0L,0x190BL,0x54B5L,0L,(-1L),0L},{0L,0x190BL,0x54B5L,0L,(-1L),0L},{0L,0x190BL,0x54B5L,0L,(-1L),0L}};
    int32_t l_672 = 0x29850814L;
    VECTOR(uint8_t, 4) l_691 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xAFL), 0xAFL);
    int16_t l_693 = (-1L);
    VECTOR(int32_t, 4) l_698 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-4L)), (-4L));
    union U0 *l_768 = &p_1090->g_330;
    union U0 **l_767[1][1];
    int32_t *l_777[4][1];
    VECTOR(int16_t, 8) l_842 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x7D23L), 0x7D23L), 0x7D23L, 0L, 0x7D23L);
    uint8_t *l_891 = &l_561.f0;
    int16_t *l_955 = &l_668[6][5];
    VECTOR(uint16_t, 16) l_971 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x2E51L), 0x2E51L), 0x2E51L, 65535UL, 0x2E51L, (VECTOR(uint16_t, 2))(65535UL, 0x2E51L), (VECTOR(uint16_t, 2))(65535UL, 0x2E51L), 65535UL, 0x2E51L, 65535UL, 0x2E51L);
    VECTOR(int16_t, 4) l_982 = (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x702CL), 0x702CL);
    VECTOR(uint8_t, 4) l_1006 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xF7L), 0xF7L);
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_767[i][j] = &l_768;
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
            l_777[i][j] = (void*)0;
    }
lbl_868:
    if (l_515)
    { /* block id: 152 */
        uint64_t *l_520 = &p_1090->g_106;
        uint64_t **l_519 = &l_520;
        int32_t l_526 = 0x557EA804L;
        VECTOR(uint32_t, 4) l_544 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x8C9AF755L), 0x8C9AF755L);
        uint8_t *l_549 = &p_1090->g_330.f0;
        int32_t *l_550 = &p_1090->g_35;
        int32_t *l_553 = &l_526;
        int i;
lbl_540:
        for (p_1090->g_88.f0 = 0; (p_1090->g_88.f0 > 22); p_1090->g_88.f0++)
        { /* block id: 155 */
            uint32_t l_518[4][4][9] = {{{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L}},{{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L}},{{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L}},{{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L},{4294967292UL,4294967293UL,4294967293UL,4294967292UL,4294967292UL,0xC79237FCL,0x454D6D26L,0xD9CE495DL,0xA9A726B9L}}};
            uint64_t ***l_521[7];
            VECTOR(uint16_t, 16) l_531 = (VECTOR(uint16_t, 16))(0x9941L, (VECTOR(uint16_t, 4))(0x9941L, (VECTOR(uint16_t, 2))(0x9941L, 0x5E31L), 0x5E31L), 0x5E31L, 0x9941L, 0x5E31L, (VECTOR(uint16_t, 2))(0x9941L, 0x5E31L), (VECTOR(uint16_t, 2))(0x9941L, 0x5E31L), 0x9941L, 0x5E31L, 0x9941L, 0x5E31L);
            int32_t l_537[10][5][4] = {{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}},{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}},{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}},{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}},{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}},{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}},{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}},{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}},{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}},{{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L},{0x549D6662L,0x3CC00707L,(-1L),0x6EED34C4L}}};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_521[i] = (void*)0;
            if (((l_518[3][1][7] && (((p_1090->g_523 = (p_1090->g_522 = l_519)) == l_525) == l_526)) || ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(0xC4EFL, 65530UL)).yyxxyxyxyyyyxyxy >> ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 2))(0xD53EL, 0xE13EL)), ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(l_531.s484b6a1025375059)).lo + ((VECTOR(uint16_t, 4))(l_532.xyxy)).xyxxyyyz))).s57))).xyyxyyxxxxxyxyxy))).s6))
            { /* block id: 158 */
                int32_t *l_533 = &l_515;
                (*l_533) = l_515;
                if (l_526)
                    goto lbl_540;
                return (*p_1090->g_398);
            }
            else
            { /* block id: 161 */
                for (p_1090->g_26 = 21; (p_1090->g_26 <= 7); --p_1090->g_26)
                { /* block id: 164 */
                    int32_t *l_536[10][6][4] = {{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}},{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}},{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}},{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}},{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}},{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}},{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}},{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}},{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}},{{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3},{(void*)0,&l_515,&p_1090->g_35,&p_1090->g_3}}};
                    volatile union U1 *l_539 = &p_1090->g_177;
                    volatile union U1 **l_538 = &l_539;
                    int i, j, k;
                    if (l_531.sd)
                        break;
                    l_537[0][1][0] ^= 1L;
                    (*l_538) = &p_1090->g_177;
                }
                return (*p_1090->g_398);
            }
        }
        (*l_553) = ((*l_550) = (((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(4294967287UL, ((VECTOR(uint32_t, 2))(p_1090->g_543.s44)), 0x1E087BC6L)) - ((VECTOR(uint32_t, 16))(l_544.yzywxwyyxyzwzxxz)).sb302))).y , ((safe_rshift_func_uint8_t_u_u(255UL, 0)) != ((*l_549) = (safe_mul_func_int16_t_s_s((((*p_37) || ((*p_37) = l_544.y)) > 1L), p_38))))));
    }
    else
    { /* block id: 177 */
        uint8_t *l_557[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_567 = 0L;
        union U4 *l_593[5][8][3] = {{{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627}},{{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627}},{{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627}},{{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627}},{{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627},{&p_1090->g_632,&p_1090->g_625,&p_1090->g_627}}};
        int32_t l_666[6][3] = {{0x5AEB840FL,0x5AEB840FL,1L},{0x5AEB840FL,0x5AEB840FL,1L},{0x5AEB840FL,0x5AEB840FL,1L},{0x5AEB840FL,0x5AEB840FL,1L},{0x5AEB840FL,0x5AEB840FL,1L},{0x5AEB840FL,0x5AEB840FL,1L}};
        uint32_t *l_680 = (void*)0;
        VECTOR(int64_t, 8) l_688 = (VECTOR(int64_t, 8))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 2L), 2L), 2L, (-8L), 2L);
        int64_t *l_719 = (void*)0;
        union U2 *l_734 = &p_1090->g_237;
        int i, j, k;
lbl_723:
        (*p_1090->g_569) = (l_568 = (safe_mul_func_int8_t_s_s((*p_37), ((VECTOR(uint8_t, 16))(0x01L, ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 16))((((VECTOR(uint64_t, 16))((+((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_556.s48)), (0x1DL != (l_515 = 252UL)), (p_1090->g_558[0] , FAKE_DIVERGE(p_1090->local_2_offset, get_local_id(2), 10)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 16))(0xECE045F61FA55F0BL, 0x0E66F5D27322B1B3L, 1UL, (safe_mul_func_int8_t_s_s(((l_561 , (!((p_1090->g_562 , (safe_div_func_uint16_t_u_u(((2L & (safe_add_func_int64_t_s_s(l_567, ((l_567 , 2UL) < FAKE_DIVERGE(p_1090->group_1_offset, get_group_id(1), 10))))) < l_561.f0), l_567))) < l_567))) <= GROUP_DIVERGE(2, 1)), 247UL)), ((VECTOR(uint64_t, 4))(0xF980F8B31BF5A8A4L)), ((VECTOR(uint64_t, 2))(0x415BB31A8B881383L)), ((VECTOR(uint64_t, 4))(0xEA5194F2B2DFB52CL)), 6UL, 0xA0B3DECF9B49952EL)).s3f, ((VECTOR(uint64_t, 2))(0x5095ECB763ED9C73L)), ((VECTOR(uint64_t, 2))(0x2177D60509E7B3C2L))))), 0x233674AA4E4E4B63L, 18446744073709551613UL)))).s6263043335027022))).s4 || l_532.x), p_1090->g_408.x, ((VECTOR(uint8_t, 2))(0xAAL)), 247UL, 255UL, ((VECTOR(uint8_t, 2))(1UL)), 1UL, p_38, 9UL, 6UL, 246UL, 0x8CL, 254UL, 249UL)).lo, ((VECTOR(uint8_t, 8))(253UL))))), ((VECTOR(uint8_t, 4))(9UL)), 0UL, 0x59L, 0xC5L)).s1)));
        for (p_1090->g_112 = (-1); (p_1090->g_112 <= 12); ++p_1090->g_112)
        { /* block id: 183 */
            VECTOR(uint64_t, 8) l_578 = (VECTOR(uint64_t, 8))(0x53433DBEE1D9DC84L, (VECTOR(uint64_t, 4))(0x53433DBEE1D9DC84L, (VECTOR(uint64_t, 2))(0x53433DBEE1D9DC84L, 9UL), 9UL), 9UL, 0x53433DBEE1D9DC84L, 9UL);
            VECTOR(uint8_t, 8) l_588 = (VECTOR(uint8_t, 8))(0x69L, (VECTOR(uint8_t, 4))(0x69L, (VECTOR(uint8_t, 2))(0x69L, 1UL), 1UL), 1UL, 0x69L, 1UL);
            int32_t l_665 = (-5L);
            int32_t l_667 = (-3L);
            int32_t l_669 = 0x2B68DECBL;
            int32_t l_671 = 0x6043E052L;
            int8_t l_676 = 0x1CL;
            int32_t *l_677 = (void*)0;
            int32_t *l_678 = (void*)0;
            int i;
            for (p_1090->g_259 = (-24); (p_1090->g_259 < 15); p_1090->g_259 = safe_add_func_int16_t_s_s(p_1090->g_259, 8))
            { /* block id: 186 */
                uint64_t **l_575 = (void*)0;
                uint64_t ***l_576 = &p_1090->g_522;
                VECTOR(uint64_t, 2) l_577 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551613UL);
                int32_t l_641 = 0x01E53C5DL;
                int32_t l_670[8] = {1L,4L,1L,1L,4L,1L,1L,4L};
                uint64_t l_673[2][3] = {{0UL,0UL,0UL},{0UL,0UL,0UL}};
                int i, j;
                if ((((p_1090->g_574 , &p_1090->g_449) == ((*l_576) = l_575)) & ((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 2))(l_577.xy)).xxyyyyxyyxxxyyyx, ((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 16))(l_578.s0406757502044627)).s6c, ((VECTOR(uint64_t, 8))(0xF8C23E367270A554L, (l_577.y ^ (safe_sub_func_uint64_t_u_u((safe_unary_minus_func_int32_t_s((safe_mod_func_int16_t_s_s((((safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(((((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 4))(1UL, 0x35L, 9UL, 5UL)).lo, ((VECTOR(uint8_t, 8))(l_588.s50221041)).s62))).even != (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((((l_593[1][1][1] = p_1090->g_77) == l_638) & (l_641 = ((safe_add_func_uint64_t_u_u(((((void*)0 != l_557[0]) >= l_568) , p_38), 8UL)) && p_1090->g_411.x))), p_1090->g_630.f0)), l_577.x))) < p_1090->g_497.x), p_1090->g_628.f0)), p_38)) || l_588.s2) != 1UL), 0x7B66L)))), l_578.s3))), GROUP_DIVERGE(2, 1), p_38, p_38, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 18446744073709551611UL)).s54))).xxxyxxyyyyxyyxxy))).s2))
                { /* block id: 190 */
                    int32_t *l_642 = &l_568;
                    return (*p_1090->g_398);
                }
                else
                { /* block id: 192 */
                    int32_t *l_643 = &l_567;
                    int32_t *l_645 = (void*)0;
                    int32_t *l_646 = &l_515;
                    int32_t *l_647 = (void*)0;
                    int32_t *l_648 = &p_1090->g_35;
                    int32_t *l_649 = &l_567;
                    int32_t l_650 = 0x5AD28D07L;
                    int32_t *l_651 = (void*)0;
                    int32_t *l_652 = (void*)0;
                    int32_t *l_653 = &l_641;
                    int32_t *l_654 = &p_1090->g_35;
                    int32_t *l_655 = &l_641;
                    int32_t *l_656 = &l_515;
                    int32_t *l_657 = (void*)0;
                    int32_t *l_658 = (void*)0;
                    int32_t *l_659 = &p_1090->g_35;
                    int32_t *l_660 = &p_1090->g_35;
                    int32_t *l_661 = &l_641;
                    int32_t *l_662 = (void*)0;
                    int32_t *l_663 = &l_641;
                    int32_t *l_664[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_664[i] = (void*)0;
                    (*p_1090->g_644) = ((*l_643) ^= ((void*)0 != p_1090->g_471));
                    l_673[0][1]++;
                }
            }
            l_671 ^= l_676;
        }
        if (l_666[5][1])
        { /* block id: 200 */
            uint32_t **l_681[8][5] = {{&l_680,(void*)0,(void*)0,&l_680,&l_680},{&l_680,(void*)0,(void*)0,&l_680,&l_680},{&l_680,(void*)0,(void*)0,&l_680,&l_680},{&l_680,(void*)0,(void*)0,&l_680,&l_680},{&l_680,(void*)0,(void*)0,&l_680,&l_680},{&l_680,(void*)0,(void*)0,&l_680,&l_680},{&l_680,(void*)0,(void*)0,&l_680,&l_680},{&l_680,(void*)0,(void*)0,&l_680,&l_680}};
            int32_t l_692 = 1L;
            int64_t *l_694 = (void*)0;
            int64_t *l_695 = (void*)0;
            int64_t *l_696 = (void*)0;
            int32_t l_697 = 0x05FF6FFAL;
            VECTOR(uint16_t, 2) l_717 = (VECTOR(uint16_t, 2))(4UL, 0x92DBL);
            int i, j;
            if ((((p_1090->g_628.f0 , l_680) != (p_1090->g_682 = p_1090->g_399[0])) || ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 4))((l_568 = ((l_697 ^= (l_692 = ((((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(0x7B163843A48D94DAL, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(1L, 0x7E620C6D19BF99EFL)), 0x5D6A42E785630AF4L, 0x3C3E7F4C0E93E1DAL)), ((VECTOR(int64_t, 2))(0x0E18A1DE136C1CB9L, 0x718DD9C06D436744L)), 0x0589A47ED59C6EC1L)) & ((VECTOR(int64_t, 16))(p_1090->g_687.yyyyyyyyyyyyyxyy)).odd))).s0137316310131156, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 16))(0x06F04A992F65230AL, p_38, ((VECTOR(int64_t, 2))(l_688.s64)), (safe_rshift_func_int8_t_s_u((l_557[1] != &p_1090->g_112), (((((VECTOR(uint8_t, 4))(l_691.xyyx)).z | ((p_38 | ((GROUP_DIVERGE(1, 1) && FAKE_DIVERGE(p_1090->global_1_offset, get_global_id(1), 10)) & ((l_692 , (void*)0) != &p_1090->g_523))) || p_1090->g_294.x)) , l_532.x) | l_567))), p_38, l_693, p_1090->g_170, 0L, p_1090->g_170, l_692, (-1L), ((VECTOR(int64_t, 4))(0x0F85B2D7C13ACCC9L)))).s40, ((VECTOR(int64_t, 2))(8L))))).yxxyxyxyxxxyyyyy))).s3a6d + ((VECTOR(uint64_t, 4))(0UL))))).lo + ((VECTOR(uint64_t, 2))(18446744073709551615UL))))), ((VECTOR(uint64_t, 2))(0x03B80854915B880AL))))).lo & 18446744073709551614UL) != l_668[0][2]))) | p_38)), ((VECTOR(int64_t, 2))(0x41F5E18E46D165E1L)), (-1L))).lo, (int64_t)p_38))), ((VECTOR(int64_t, 2))(0L)), ((VECTOR(int64_t, 2))((-1L)))))).xxxy, ((VECTOR(int64_t, 4))(0x101012B78325DE83L))))), ((VECTOR(int64_t, 4))((-7L)))))), ((VECTOR(int64_t, 4))((-4L)))))).w))
            { /* block id: 205 */
                int64_t *l_718 = (void*)0;
                int32_t *l_720 = &l_568;
                l_692 = ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(l_698.wwyz)).even, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(p_1090->g_699.s8d)) < ((VECTOR(int32_t, 8))(((safe_mod_func_int8_t_s_s(((safe_div_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((((*l_720) = (safe_mul_func_uint8_t_u_u((p_1090->g_310.w = (safe_div_func_int8_t_s_s((p_38 <= p_38), ((((VECTOR(int8_t, 8))(p_1090->g_712.wzwyxzzy)).s7 & ((safe_lshift_func_uint16_t_u_s(65533UL, (safe_rshift_func_int16_t_s_u(l_697, ((VECTOR(uint16_t, 2))(l_717.yx)).lo)))) ^ (l_718 != l_719))) || l_688.s0)))), ((VECTOR(uint8_t, 16))(0xD1L, ((*p_1090->g_682) == p_38), 249UL, 9UL, ((VECTOR(uint8_t, 8))(0x44L)), 4UL, 0x03L, 0xADL, 0UL)).sc))) == (*p_1090->g_682)) ^ 0UL), l_692)), p_1090->g_386[1])), l_556.s9)) || 0x03L), p_1090->g_611.f0)) , p_38), 1L, ((VECTOR(int32_t, 4))((-9L))), (-1L), (-6L))).s31)))))).odd;
            }
            else
            { /* block id: 209 */
                uint16_t l_731 = 0xD547L;
                for (p_1090->g_623.f0 = 0; (p_1090->g_623.f0 != 28); p_1090->g_623.f0 = safe_add_func_int64_t_s_s(p_1090->g_623.f0, 1))
                { /* block id: 212 */
                    int32_t *l_724 = &l_567;
                    int32_t *l_725 = &l_568;
                    int32_t l_726[6] = {(-6L),0x39DD90E2L,(-6L),(-6L),0x39DD90E2L,(-6L)};
                    int32_t *l_727 = &l_726[1];
                    int32_t *l_728 = &p_1090->g_35;
                    int32_t *l_729 = &p_1090->g_35;
                    int32_t *l_730[8][3] = {{&l_726[1],(void*)0,(void*)0},{&l_726[1],(void*)0,(void*)0},{&l_726[1],(void*)0,(void*)0},{&l_726[1],(void*)0,(void*)0},{&l_726[1],(void*)0,(void*)0},{&l_726[1],(void*)0,(void*)0},{&l_726[1],(void*)0,(void*)0},{&l_726[1],(void*)0,(void*)0}};
                    int i, j;
                    if (p_1090->g_28)
                        goto lbl_723;
                    l_731--;
                }
            }
            return (*p_1090->g_398);
        }
        else
        { /* block id: 218 */
            int64_t l_735 = 0x1FA1572AFF130359L;
            l_735 &= (p_38 || (l_734 == (void*)0));
        }
    }
    for (p_1090->g_607.f0 = 0; (p_1090->g_607.f0 < (-22)); p_1090->g_607.f0 = safe_sub_func_uint64_t_u_u(p_1090->g_607.f0, 5))
    { /* block id: 224 */
        VECTOR(uint8_t, 8) l_740 = (VECTOR(uint8_t, 8))(0x7FL, (VECTOR(uint8_t, 4))(0x7FL, (VECTOR(uint8_t, 2))(0x7FL, 0xE5L), 0xE5L), 0xE5L, 0x7FL, 0xE5L);
        int32_t *l_756 = (void*)0;
        int32_t *l_757[9][8][3] = {{{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35}},{{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35}},{{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35}},{{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35}},{{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35}},{{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35}},{{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35}},{{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35}},{{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35},{&p_1090->g_28,&l_568,&p_1090->g_35}}};
        int32_t l_758 = 0x03AB8899L;
        uint32_t l_805 = 0xBAB821E5L;
        union U0 *l_871 = &p_1090->g_330;
        union U5 *l_886 = &p_1090->g_168;
        VECTOR(uint16_t, 16) l_958 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint16_t, 2))(0UL, 1UL), (VECTOR(uint16_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
        int64_t l_983 = 0x186D1E446FBBD9F4L;
        int i, j, k;
        if ((((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(l_740.s50130026)).s3140722255605661 >> ((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(p_1090->g_743.s00)).xyyxyxyxyxxyxxyy + ((VECTOR(uint8_t, 4))(1UL, ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 4))(0x33L, 9L, 0x59L, 0x53L)).hi, ((VECTOR(int8_t, 8))(0x5FL, l_672, ((*p_37) = ((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(2L, 0x273874EBL, ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(((safe_lshift_func_uint16_t_u_u(p_1090->g_497.y, 11)) , (+(safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(0x0ED2L, FAKE_DIVERGE(p_1090->local_1_offset, get_local_id(1), 10))), ((void*)0 != &p_1090->g_168))))), (l_758 = ((safe_lshift_func_int8_t_s_u((*p_37), p_38)) , ((((safe_rshift_func_uint8_t_u_s((safe_mod_func_int32_t_s_s(((p_1090->g_438 , (p_38 && 0x09F7C35B07568155L)) || 0x3E5BL), 4294967295UL)), (*p_37))) && GROUP_DIVERGE(2, 1)) & 0x83A6L) && p_38))), ((VECTOR(int32_t, 4))(9L)), 0x20768F8FL, ((VECTOR(int32_t, 2))(0x4442C510L)), ((VECTOR(int32_t, 2))(1L)), 0x787B618BL, ((VECTOR(int32_t, 4))(0x62504412L)))).se354, ((VECTOR(int32_t, 4))(0x11246A3CL)), ((VECTOR(int32_t, 4))((-2L)))))), 0x2133FCC3L, 0x4A3E3336L)).lo ^ ((VECTOR(int32_t, 4))((-3L)))))).even && ((VECTOR(int32_t, 2))(0L))))).even || p_38) , 3L)), 1L, 0L, p_1090->g_609[8][6][1].f0, 0x46L, (-10L))).s01))), 255UL)).zyyzzwyyxxxzyyxy))).lo, ((VECTOR(uint8_t, 8))(6UL)), ((VECTOR(uint8_t, 8))(0x4EL))))).s5010073357350710))).s98, ((VECTOR(uint8_t, 2))(248UL))))).xxyxxxxy, ((VECTOR(uint8_t, 8))(0x09L))))).s3 ^ 1UL))
        { /* block id: 227 */
            uint8_t l_759[9] = {0x42L,0x42L,0x42L,0x42L,0x42L,0x42L,0x42L,0x42L,0x42L};
            union U0 *l_766 = &l_561;
            union U0 **l_765 = &l_766;
            int64_t *l_773 = (void*)0;
            int64_t *l_774[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_811 = (-8L);
            int64_t l_823 = 1L;
            uint16_t *l_827 = &p_1090->g_26;
            int64_t l_848 = 0x7A37CF840D1BC8F7L;
            VECTOR(int32_t, 2) l_892 = (VECTOR(int32_t, 2))((-3L), 0x6CE5DB70L);
            uint16_t l_939[2];
            VECTOR(uint32_t, 8) l_957 = (VECTOR(uint32_t, 8))(0x9E61E85CL, (VECTOR(uint32_t, 4))(0x9E61E85CL, (VECTOR(uint32_t, 2))(0x9E61E85CL, 0xC2028D24L), 0xC2028D24L), 0xC2028D24L, 0x9E61E85CL, 0xC2028D24L);
            VECTOR(uint16_t, 4) l_981 = (VECTOR(uint16_t, 4))(0x78D9L, (VECTOR(uint16_t, 2))(0x78D9L, 1UL), 1UL);
            uint8_t l_984 = 0x66L;
            union U4 *l_991 = &p_1090->g_596;
            union U4 *l_1004 = &p_1090->g_1005;
            uint64_t l_1015 = 0x14188632031E562DL;
            int i;
            for (i = 0; i < 2; i++)
                l_939[i] = 0xFD12L;
            if ((l_759[3] & (safe_add_func_int32_t_s_s((l_759[2] < 0x850AE21FL), (safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 16))((p_1090->g_764 , (l_765 == l_767[0][0])), ((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 2))(0xE4L, 1UL)).yyxxxyxx))), 255UL, 0UL, 0x27L, (safe_lshift_func_uint16_t_u_s(((l_698.z = ((3UL | (safe_div_func_int32_t_s_s(p_38, ((p_1090->g_687.y = p_1090->g_124.z) && FAKE_DIVERGE(p_1090->global_0_offset, get_global_id(0), 10))))) ^ (-3L))) != p_38), 1)), 0x90L, 0xB5L, 253UL)).s0, p_1090->g_302.y))))))
            { /* block id: 230 */
                uint64_t l_806 = 0xA2BAB33E438630F5L;
                uint32_t l_812 = 0x2B5BA94AL;
                for (p_1090->g_601.f0 = 0; (p_1090->g_601.f0 < (-2)); p_1090->g_601.f0 = safe_sub_func_uint16_t_u_u(p_1090->g_601.f0, 1))
                { /* block id: 233 */
                    uint8_t *l_788 = (void*)0;
                    uint8_t *l_789 = (void*)0;
                    uint8_t *l_790 = (void*)0;
                    uint8_t *l_791 = (void*)0;
                    uint8_t *l_792 = (void*)0;
                    int32_t l_797 = (-4L);
                    int32_t l_800 = 0x00814DFBL;
                    union U5 l_807[1] = {{0}};
                    uint32_t *l_808 = (void*)0;
                    uint32_t *l_809 = &p_1090->g_438.f2;
                    uint16_t *l_810[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    l_777[0][0] = (void*)0;
                    l_812 = (safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((((safe_sub_func_uint16_t_u_u((l_811 = (safe_add_func_uint32_t_u_u(((*l_809) = (!(((((void*)0 == &p_1090->g_329) , (((safe_mul_func_uint8_t_u_u((p_1090->g_313.s0 = ((++p_1090->g_302.x) , ((+(l_797 = (p_1090->g_795 == &p_1090->g_796))) | ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(0L, 0L, 0x6A4AL, 0x0769L, 0x5693L, (safe_mul_func_uint16_t_u_u(l_800, (p_1090->g_386[5] , (((l_800 > ((GROUP_DIVERGE(1, 1) & (((safe_rshift_func_int16_t_s_s(6L, (safe_sub_func_int8_t_s_s(l_805, 0xD1L)))) != l_806) , 0x015F253BL)) == p_38)) == 0x781BL) && 0x7ED2L)))), (-4L), 8L)).s1260213243616002 && ((VECTOR(int16_t, 16))(0L))))), ((VECTOR(uint16_t, 16))(0x8783L))))).s6))), p_1090->g_605.f0)) , l_807[0]) , 0x0CC5L)) & l_806) == (-1L)))), l_759[6]))), 0x6C7BL)) <= p_1090->g_627.f0) | p_38), 0x8AF8L)), p_38));
                }
            }
            else
            { /* block id: 242 */
                uint64_t *l_816 = (void*)0;
                uint64_t *l_817 = &p_1090->g_106;
                int32_t l_821 = (-10L);
                int32_t *l_822 = &p_1090->g_259;
                uint16_t *l_828 = &p_1090->g_26;
                union U0 *l_872 = (void*)0;
                int32_t l_883[5][9][5] = {{{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L}},{{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L}},{{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L}},{{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L}},{{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L},{0x39BCDED8L,6L,0x3B438BDCL,(-8L),0x2E5F5584L}}};
                VECTOR(uint8_t, 16) l_946 = (VECTOR(uint8_t, 16))(0x08L, (VECTOR(uint8_t, 4))(0x08L, (VECTOR(uint8_t, 2))(0x08L, 1UL), 1UL), 1UL, 0x08L, 1UL, (VECTOR(uint8_t, 2))(0x08L, 1UL), (VECTOR(uint8_t, 2))(0x08L, 1UL), 0x08L, 1UL, 0x08L, 1UL);
                VECTOR(uint16_t, 8) l_961 = (VECTOR(uint16_t, 8))(0x4448L, (VECTOR(uint16_t, 4))(0x4448L, (VECTOR(uint16_t, 2))(0x4448L, 65533UL), 65533UL), 65533UL, 0x4448L, 65533UL);
                union U4 **l_989 = (void*)0;
                union U4 **l_990[1][9][7] = {{{&l_638,&p_1090->g_77,(void*)0,&p_1090->g_77,(void*)0,&p_1090->g_77,&l_638},{&l_638,&p_1090->g_77,(void*)0,&p_1090->g_77,(void*)0,&p_1090->g_77,&l_638},{&l_638,&p_1090->g_77,(void*)0,&p_1090->g_77,(void*)0,&p_1090->g_77,&l_638},{&l_638,&p_1090->g_77,(void*)0,&p_1090->g_77,(void*)0,&p_1090->g_77,&l_638},{&l_638,&p_1090->g_77,(void*)0,&p_1090->g_77,(void*)0,&p_1090->g_77,&l_638},{&l_638,&p_1090->g_77,(void*)0,&p_1090->g_77,(void*)0,&p_1090->g_77,&l_638},{&l_638,&p_1090->g_77,(void*)0,&p_1090->g_77,(void*)0,&p_1090->g_77,&l_638},{&l_638,&p_1090->g_77,(void*)0,&p_1090->g_77,(void*)0,&p_1090->g_77,&l_638},{&l_638,&p_1090->g_77,(void*)0,&p_1090->g_77,(void*)0,&p_1090->g_77,&l_638}}};
                uint32_t *l_1013 = (void*)0;
                uint32_t *l_1014[6][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                int i, j, k;
                (*p_1090->g_824) = func_53(((l_811 & 1UL) > (((p_38 , (safe_add_func_uint64_t_u_u(((*l_768) , ((*l_817) ^= (0x7777L == (p_1090->g_815[2][9] , p_38)))), ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_1090->g_818.yyxx)), 0x28C1D6770E94E6E6L, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(p_1090->g_819.wxxyzxxxwwzwyzxz)).s1b != ((VECTOR(int64_t, 2))(p_1090->g_820.yz))))), 0x180060AAAA78AB35L)).s3, ((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 2))(0x46794F604D52E69AL, 0x4C4829A51126E392L)), (int64_t)l_821))), 0x4263BB18ABA0CC45L)) && ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 2))(0x6651450FE1BF6ADBL, 0x3D7E3B922ECF21C8L)).xxyxxyyxyxyyyyyx, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(((*l_822) = (p_1090->g_818.x < l_821)), p_1090->g_601.f0, (-1L), l_823, (-4L), ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 2))((-4L))), 0x48EF9C6CL)).s5592 & ((VECTOR(int32_t, 4))((-1L)))))).xyzyzzxz, ((VECTOR(int32_t, 8))(0x0268867BL))))).s6035476763571307, ((VECTOR(uint32_t, 16))(0xBB4CAA29L))))).odd, ((VECTOR(int64_t, 8))(0x5AF02EA0CB122B46L))))).odd && ((VECTOR(int64_t, 4))((-7L)))))).xzwxxzxwwwzyyywz))).odd <= ((VECTOR(int64_t, 8))(0x3AE3551F59823AD1L))))).odd))).x))) & 0x37CAL) < p_38)), p_1090);
                if ((l_811 = (safe_div_func_uint8_t_u_u(((~((*p_37) &= (l_827 != l_828))) >= ((safe_div_func_int64_t_s_s(p_38, (*p_1090->g_449))) >= p_38)), (((((void*)0 == &p_1090->g_523) >= (safe_div_func_uint32_t_u_u((p_1090->g_743.s1 && ((((VECTOR(int64_t, 8))(p_1090->g_833.s10024476)).s4 || (p_38 & p_38)) <= l_759[1])), p_38))) <= 1L) ^ p_1090->g_820.w)))))
                { /* block id: 248 */
                    VECTOR(uint8_t, 4) l_835 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 4UL), 4UL);
                    union U4 *l_851 = (void*)0;
                    union U4 **l_852 = &l_638;
                    int32_t l_857 = 0x3B40C5ECL;
                    VECTOR(int64_t, 8) l_858 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x22DEEF94759D2D4BL), 0x22DEEF94759D2D4BL), 0x22DEEF94759D2D4BL, 1L, 0x22DEEF94759D2D4BL);
                    int32_t l_863 = 0x0ABBBB3FL;
                    int i;
                    l_863 |= ((+(l_835.x = ((VECTOR(int16_t, 2))(p_1090->g_834.yy)).hi)) ^ ((safe_add_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(((*p_37) = (safe_mod_func_int8_t_s_s(((((VECTOR(int16_t, 2))(l_842.s52)).odd | (0x0DL || ((safe_mul_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u((safe_add_func_uint8_t_u_u((l_848 | (safe_mul_func_int16_t_s_s((((*l_852) = l_851) == ((safe_mod_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(l_857, p_38)), ((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 2))(l_858.s34)).yyyxxyyxyxyxxyyx, (int64_t)p_38))).s6)) , (*p_1090->g_479))), ((safe_mod_func_int32_t_s_s(((((safe_mul_func_uint16_t_u_u((p_38 || (5L && p_38)), p_38)) | 0x3FL) | p_1090->g_743.sa) | p_38), p_38)) & p_38)))), 0x64L)))), p_38)) >= p_38))) > l_848), 0xACL))), l_759[3])), p_1090->g_294.x)) != p_38));
                    l_863 = (safe_add_func_int32_t_s_s(0x34037A3FL, l_835.z));
                    if ((*p_1090->g_569))
                        break;
                }
                else
                { /* block id: 255 */
                    uint8_t *l_888 = &l_561.f0;
                    uint8_t **l_890[8][4] = {{&l_888,(void*)0,(void*)0,&l_888},{&l_888,(void*)0,(void*)0,&l_888},{&l_888,(void*)0,(void*)0,&l_888},{&l_888,(void*)0,(void*)0,&l_888},{&l_888,(void*)0,(void*)0,&l_888},{&l_888,(void*)0,(void*)0,&l_888},{&l_888,(void*)0,(void*)0,&l_888},{&l_888,(void*)0,(void*)0,&l_888}};
                    uint32_t *l_895 = &p_1090->g_438.f2;
                    uint32_t *l_896 = &p_1090->g_438.f2;
                    int32_t l_897 = 1L;
                    uint32_t *l_898 = (void*)0;
                    uint32_t *l_899[7][8][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
                    int16_t l_902 = 0x79BFL;
                    int32_t l_903 = 1L;
                    VECTOR(uint16_t, 4) l_975 = (VECTOR(uint16_t, 4))(0x1761L, (VECTOR(uint16_t, 2))(0x1761L, 65535UL), 65535UL);
                    int i, j, k;
                    for (p_38 = 0; (p_38 < 22); p_38++)
                    { /* block id: 258 */
                        int32_t l_875 = 6L;
                        uint32_t l_882 = 1UL;
                        if (p_38)
                            break;
                        if (l_848)
                            goto lbl_868;
                        (*p_1090->g_34) = (safe_rshift_func_int8_t_s_u((((GROUP_DIVERGE(0, 1) && (p_1090->g_26 = (((*l_765) = l_871) == l_872))) == (((safe_div_func_uint16_t_u_u((FAKE_DIVERGE(p_1090->global_1_offset, get_global_id(1), 10) & p_1090->g_616.f0), p_38)) || ((l_875 &= (0x96L & p_38)) & (((safe_rshift_func_uint16_t_u_u(((18446744073709551606UL == p_1090->g_614.f0) , (((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(0x087ED49CL, 0x6ADC7B65L)).yxxxyxxxxxxyyxxx + ((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 16))(0xEFAB19D7L, 4294967288UL, 0UL, l_882, 1UL, 0xC67CEAC9L, l_759[0], 0x1C662578L, 0x0A70FCD6L, ((VECTOR(uint32_t, 4))(0UL)), l_882, 0xC07CE051L, 4294967292UL)).lo, ((VECTOR(uint32_t, 8))(0x71269C6AL))))).s5271470641576733))).sd5cb, ((VECTOR(uint32_t, 4))(4294967292UL)), ((VECTOR(uint32_t, 4))(0x9FBC8C3FL))))) - ((VECTOR(uint32_t, 4))(0x15FE75C8L))))), ((VECTOR(uint32_t, 4))(4294967290UL))))).y , GROUP_DIVERGE(1, 1))), l_848)) && FAKE_DIVERGE(p_1090->global_2_offset, get_global_id(2), 10)) > p_38))) | p_38)) , l_883[3][0][2]), 3));
                    }
                    for (p_1090->g_622.f0 = 8; (p_1090->g_622.f0 > (-12)); --p_1090->g_622.f0)
                    { /* block id: 268 */
                        if (l_759[7])
                            break;
                    }
                    p_1090->g_887 = l_886;
                    if ((((void*)0 == l_888) && (p_1090->g_408.x && ((((((VECTOR(uint32_t, 2))(0x64909332L, 0x64079B37L)).hi && ((((l_822 = &p_1090->g_259) == ((p_1090->g_889 , (((l_891 = (void*)0) != (void*)0) != ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(l_892.xx)) > ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(p_1090->g_893.sfb)).xxyx, ((VECTOR(int32_t, 16))((((***p_1090->g_439) , (safe_unary_minus_func_uint32_t_u(((*l_896) = (--p_1090->g_411.y))))) == (((((*p_37) = l_821) | p_1090->g_833.s1) > l_902) ^ 0x4886L)), 0x4279873CL, 0x2B32DB21L, 0x7116C28FL, l_903, (-9L), 0x405C9C42L, l_903, p_38, ((VECTOR(int32_t, 2))(0x32F69BC4L)), p_38, ((VECTOR(int32_t, 2))(0x315D6B75L)), 0x7AACDE36L, 1L)).seb93, ((VECTOR(int32_t, 4))(0L))))).lo))).yxxx, ((VECTOR(int32_t, 4))(0x3F34C5E0L)), ((VECTOR(int32_t, 4))((-2L)))))), p_38, 0x6F2F9B58L, 0x77719D11L, 0x20F308A1L)).s5423301114454703 || ((VECTOR(int32_t, 16))(0x02490FABL))))).sc)) , l_895)) || l_883[3][1][2]) && l_903)) && (*p_37)) , l_892.x) , p_38))))
                    { /* block id: 277 */
                        int8_t l_917 = 0x17L;
                        int32_t l_918[3][3][7] = {{{0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL},{0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL},{0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL}},{{0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL},{0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL},{0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL}},{{0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL},{0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL},{0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL,0x4528E18CL}}};
                        int16_t *l_921 = &l_693;
                        VECTOR(uint8_t, 2) l_930 = (VECTOR(uint8_t, 2))(1UL, 0x5CL);
                        int i, j, k;
                        l_918[1][2][0] = ((((((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 4))(GROUP_DIVERGE(1, 1), 250UL, 1UL, 0x82L))))).w, l_903)) ^ l_759[3]) && ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_1090->g_912.s43)), 0UL, 0UL)).hi, (uint16_t)7UL, (uint16_t)((*p_37) || ((safe_sub_func_uint16_t_u_u(p_1090->g_197.z, (p_1090->g_367.x , p_38))) <= (safe_lshift_func_int16_t_s_u(p_38, 5))))))).yyyy, (uint16_t)(((l_899[1][0][1] == (void*)0) && p_1090->g_180.f0) & GROUP_DIVERGE(1, 1))))).xywzxyyw + ((VECTOR(uint16_t, 8))(0xA435L))))).s70 * ((VECTOR(uint16_t, 2))(0x1986L))))), p_38, l_823, ((VECTOR(uint16_t, 4))(0x3BBAL)))).s7675116727570702 + ((VECTOR(uint16_t, 16))(0x1A6DL))))).s2) >= l_917) > p_38) , 0L);
                        l_939[1] = (safe_lshift_func_int8_t_s_s((l_892.x |= ((((p_1090->g_408.x >= (l_883[1][4][1] , ((*l_921) ^= p_1090->g_605.f0))) , ((*l_817) ^= (safe_mul_func_int8_t_s_s(((*p_37) = (0x5D70F0F7L && (((safe_mul_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s((((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 2))(9L, 2L)).xxxyyyxyxyyyxyxy, (int32_t)(safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(l_930.yyxyxxxxxxyyyxyx)).sf, l_930.y)), (int32_t)(safe_div_func_int8_t_s_s(((0x54A8298546CED6D7L & 0UL) , (*p_37)), ((((safe_mod_func_int8_t_s_s((safe_rshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s((0xF320D634F68241A5L || p_38), p_38)), 11)), p_38)) != (*p_37)) & (*p_37)) , (-2L))))))).sb > p_38), 0x62L)) < p_38), (*p_37))) ^ 9L) <= 0xFCL))), 0x5BL)))) | p_1090->g_634.f0) >= l_883[3][3][3])), l_897));
                        return (*p_1090->g_824);
                    }
                    else
                    { /* block id: 285 */
                        uint32_t l_956 = 1UL;
                        VECTOR(uint16_t, 4) l_972 = (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0xEC7DL), 0xEC7DL);
                        int32_t **l_985 = &l_757[2][1][1];
                        int32_t *l_986 = &p_1090->g_987;
                        int i;
                        p_1090->g_407.y ^= ((((((safe_mod_func_int32_t_s_s(((l_902 == ((~((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(l_946.sed134dfa)).s03 & ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(1UL, 0xD0L, 4UL, 0x9DL)), ((VECTOR(uint8_t, 4))(1UL, 0x46L, 247UL, 0UL)))) << ((VECTOR(uint8_t, 8))(8))))).s65))) + ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 8))(0UL, 1UL, 253UL, ((safe_sub_func_uint32_t_u_u(((((*l_985) = func_53((((safe_sub_func_uint64_t_u_u((safe_sub_func_int16_t_s_s(p_1090->g_687.y, ((l_955 == &l_902) , (p_1090->g_306.w >= 0x05CABA9853DDE5E5L)))), (l_956 && ((VECTOR(uint32_t, 8))(l_957.s24704624)).s7))) == (((((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(0x2DC1L, ((VECTOR(uint16_t, 4))(l_958.sdca2)), p_1090->g_623.f0, 0x10ABL, 1UL)).hi, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(l_961.s50)) ^ ((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(p_1090->g_968.yyxzyzyz)).s5004317470650042 >> ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_971.s069fadf2)), ((VECTOR(uint16_t, 2))(l_972.xx)).hi, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 2))(0xBBE0L, 1UL)).yxxyxxxxxxxxxyxy))).s64 + ((VECTOR(uint16_t, 2))(l_975.yx))))), 0xB740L, 65535UL)), ((VECTOR(uint16_t, 2))(0UL, 4UL)), 5UL)).s7b93 + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 8))(0x3D55L, ((VECTOR(uint16_t, 2))(8UL, 0x11AFL)), 65535UL, 0UL, ((VECTOR(uint16_t, 4))(p_1090->g_978.s7015)).x, 1UL, 65532UL)).s2761276220364366, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(0UL, ((VECTOR(uint16_t, 2))(l_981.yy)), 65535UL, 0x53D4L, 65535UL, 0xC306L, 65526UL)).s50 + ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(int16_t, 4))(l_982.wwzz)).wyxxxwwxxwxwyzzx, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(0x7C81L, ((VECTOR(int16_t, 4))(8L)), 0x1236L, (-2L), 0x53A5L)).s2205523341646310 && ((VECTOR(int16_t, 16))((-3L)))))).sa1 <= ((VECTOR(int16_t, 2))(0x7C35L))))), p_1090->g_112, 1L, ((VECTOR(int16_t, 4))(1L)))).s2470071745271302))).sa, l_983, p_38, ((VECTOR(uint16_t, 2))(65535UL)), 65535UL, 0x582EL, 0xB30DL)), 65535UL, 0xAB11L, ((VECTOR(uint16_t, 4))(0xD00BL)), 65535UL, 65530UL)).s2b))).yxxyxyxyyyyxxxyx))).sa2 + ((VECTOR(uint16_t, 2))(0x8F75L))))).yxyy))).wxxwyxzxzxwzyyzx))).s08 + ((VECTOR(uint16_t, 2))(2UL))))).xxxy))).zwyyzwwy, ((VECTOR(uint16_t, 8))(65535UL))))).s0277466134776222 + ((VECTOR(uint16_t, 16))(0UL))))), ((VECTOR(uint16_t, 16))(0xD778L))))).s9b))).yxxxxyyyxyyxxxyx >> ((VECTOR(uint16_t, 16))(0xEEE7L))))).sf0, ((VECTOR(uint16_t, 2))(1UL))))).odd, FAKE_DIVERGE(p_1090->local_0_offset, get_local_id(0), 10), ((VECTOR(uint16_t, 2))(0xF622L)), p_1090->g_615.f0, l_972.z, 0UL, ((VECTOR(uint16_t, 4))(1UL)), 65527UL, 1UL, 0xC690L, 0x7377L, 0x83C1L)).s6d06))).x > p_38) || l_975.w) & l_984)) , l_956), p_1090)) != &l_672) < (-9L)), (-6L))) , p_1090->g_26), p_1090->g_602.f0, p_1090->g_820.x, 0x54L, 6UL)).s76, (uint8_t)p_38)))))).odd) <= l_975.y)) && p_1090->g_294.y), GROUP_DIVERGE(2, 1))) && l_946.sb) , (*p_1090->g_887)) , (*p_1090->g_887)) , &p_1090->g_259) != l_986);
                        (*l_985) = (*l_985);
                    }
                }
                l_821 ^= (((((p_1090->g_988 , (((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(((l_991 = ((*p_1090->g_479) = (*p_1090->g_479))) == (void*)0), 0x00537F80L, 1L, 0x041F8E24L)).yxwxyzxwxwyxzxwy, ((VECTOR(int32_t, 4))(p_1090->g_992.xxyx)).wzyyywxzzwyyzyzw))).sd9 && ((VECTOR(int32_t, 2))(p_1090->g_993.yx))))).even > (((safe_rshift_func_uint8_t_u_s((safe_mod_func_int32_t_s_s(((safe_add_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_s((&l_693 != (void*)0), (((((l_1004 = l_638) != ((p_1090->g_411.y = ((((((VECTOR(uint8_t, 4))(l_1006.xxwy)).y >= (safe_lshift_func_int16_t_s_s(0L, (((*l_955) = (safe_mod_func_int64_t_s_s((((void*)0 == &p_1090->g_26) > (-7L)), p_1090->g_599.f0))) | 0L)))) != 65535UL) & p_1090->g_617[4].f0) >= p_38)) , l_638)) | p_38) > p_38) , p_38))) == 0xCB82L), 2)), l_961.s2)) < l_848), l_883[4][5][2])), 3)) || l_1015) , 4294967294UL))) | 0x6C90064604945C82L) , p_38) <= 8UL) < 0x24A2L);
            }
            if (p_38)
                continue;
        }
        else
        { /* block id: 299 */
            (*p_1090->g_1019) = p_1090->g_1016;
        }
    }
    return (*p_1090->g_398);
}


/* ------------------------------------------ */
/* 
 * reads : p_1090->g_488 p_1090->g_34 p_1090->g_497 p_1090->g_77 p_1090->g_19 p_1090->g_88.f0 p_1090->g_35 p_1090->g_26 p_1090->g_177 p_1090->g_180 p_1090->g_155 p_1090->g_106 p_1090->g_162 p_1090->g_28 p_1090->g_3 p_1090->g_98 p_1090->g_66 p_1090->g_329 p_1090->g_339 p_1090->g_302 p_1090->g_313 p_1090->g_197 p_1090->g_330.f0 p_1090->g_278 p_1090->g_306 p_1090->g_398 p_1090->g_411 p_1090->g_168 p_1090->g_471 p_1090->g_449 p_1090->g_450 p_1090->g_399 p_1090->g_479
 * writes: p_1090->g_35 p_1090->g_26 p_1090->g_106 p_1090->g_239 p_1090->g_112 p_1090->g_259 p_1090->g_329 p_1090->g_386 p_1090->g_367 p_1090->g_399 p_1090->g_411 p_1090->g_471 p_1090->g_77 p_1090->g_330.f0
 */
union U5  func_47(int32_t * p_48, union U5  p_49, int32_t  p_50, uint64_t  p_51, int16_t  p_52, struct S6 * p_1090)
{ /* block id: 133 */
    union U4 *l_480 = &p_1090->g_88;
    union U4 **l_481 = &l_480;
    int64_t l_484 = 0L;
    VECTOR(uint8_t, 16) l_487 = (VECTOR(uint8_t, 16))(0xDDL, (VECTOR(uint8_t, 4))(0xDDL, (VECTOR(uint8_t, 2))(0xDDL, 0xC9L), 0xC9L), 0xC9L, 0xDDL, 0xC9L, (VECTOR(uint8_t, 2))(0xDDL, 0xC9L), (VECTOR(uint8_t, 2))(0xDDL, 0xC9L), 0xDDL, 0xC9L, 0xDDL, 0xC9L);
    VECTOR(uint8_t, 8) l_491 = (VECTOR(uint8_t, 8))(0x1AL, (VECTOR(uint8_t, 4))(0x1AL, (VECTOR(uint8_t, 2))(0x1AL, 0x44L), 0x44L), 0x44L, 0x1AL, 0x44L);
    int32_t *l_492[7][3][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    VECTOR(int32_t, 2) l_493 = (VECTOR(int32_t, 2))(2L, 0x58CF302FL);
    int8_t l_506 = 0x72L;
    uint8_t *l_509 = &p_1090->g_330.f0;
    VECTOR(int64_t, 2) l_510 = (VECTOR(int64_t, 2))(0x5B4ACF8A823FC7EBL, 0x31DAE6E7C3A4338FL);
    int i, j, k;
    (*l_481) = l_480;
lbl_494:
    (*p_1090->g_34) = (safe_rshift_func_int8_t_s_u((l_484 == (1UL < (+l_484))), ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_487.sa7)).yxxyxyyx + ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1090->g_488.s01)), 0x59L, 0x99L)).wxxzzwwy))).s41, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_491.s40)).yyyyxyyx >> ((VECTOR(uint8_t, 8))(8))))).s05))).hi));
    if ((p_50 != ((-10L) > ((VECTOR(int32_t, 16))(l_493.xyxyyyxxyyxyxyyy)).s2)))
    { /* block id: 136 */
        int32_t *l_495 = &p_1090->g_28;
        if (l_484)
            goto lbl_494;
        l_492[6][2][1] = l_495;
    }
    else
    { /* block id: 139 */
        VECTOR(int64_t, 16) l_496 = (VECTOR(int64_t, 16))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0x662F95350170BC4BL), 0x662F95350170BC4BL), 0x662F95350170BC4BL, 6L, 0x662F95350170BC4BL, (VECTOR(int64_t, 2))(6L, 0x662F95350170BC4BL), (VECTOR(int64_t, 2))(6L, 0x662F95350170BC4BL), 6L, 0x662F95350170BC4BL, 6L, 0x662F95350170BC4BL);
        VECTOR(int64_t, 8) l_498 = (VECTOR(int64_t, 8))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0x48A30E8444EC7A1EL), 0x48A30E8444EC7A1EL), 0x48A30E8444EC7A1EL, (-5L), 0x48A30E8444EC7A1EL);
        int64_t *l_499[7][1] = {{&l_484},{&l_484},{&l_484},{&l_484},{&l_484},{&l_484},{&l_484}};
        int32_t l_500 = 0x6C273527L;
        int16_t *l_501 = (void*)0;
        int16_t *l_502 = (void*)0;
        int32_t **l_503[1];
        int i, j;
        for (i = 0; i < 1; i++)
            l_503[i] = &p_1090->g_399[6];
        p_48 = ((*p_1090->g_398) = func_53((p_52 |= ((l_500 = ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(l_496.s4d4fd9cd517aa8b8)) >= ((VECTOR(int64_t, 4))(0L, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(p_1090->g_497.yyxxyxyyxyyxxxyy)).sfe ^ ((VECTOR(int64_t, 2))(l_498.s07))))), (-8L))).zzzxywyzyxyxxzzx))).s2) <= p_50)), p_1090));
        (*l_481) = (*l_481);
    }
    l_510.y &= (safe_lshift_func_uint16_t_u_u(l_506, (safe_rshift_func_uint16_t_u_u((p_50 >= ((*l_509) = GROUP_DIVERGE(2, 1))), 9))));
    return p_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_1090->g_77 p_1090->g_34 p_1090->g_28 p_1090->g_3 p_1090->g_98 p_1090->g_19 p_1090->g_66 p_1090->g_5 p_1090->g_112 p_1090->g_35 p_1090->g_121 p_1090->g_124 p_1090->g_155 p_1090->g_162 p_1090->g_168 p_1090->g_88.f0 p_1090->g_170 p_1090->g_26 p_1090->g_177 p_1090->g_180 p_1090->g_106 p_1090->g_197 p_1090->g_206 p_1090->g_278 p_1090->g_294 p_1090->g_302 p_1090->g_306 p_1090->g_310 p_1090->g_313 p_1090->g_314 p_1090->g_329 p_1090->g_339 p_1090->g_330.f0 p_1090->g_360 p_1090->g_367 p_1090->g_398 p_1090->g_259 p_1090->g_407 p_1090->g_408 p_1090->g_411 p_1090->g_417 p_1090->g_237 p_1090->g_438 p_1090->g_439 p_1090->g_447 p_1090->g_448 p_1090->g_471 p_1090->g_449 p_1090->g_450 p_1090->g_399 p_1090->g_479
 * writes: p_1090->g_35 p_1090->g_106 p_1090->g_112 p_1090->g_26 p_1090->g_88.f0 p_1090->g_239 p_1090->g_259 p_1090->g_329 p_1090->g_386 p_1090->g_367 p_1090->g_399 p_1090->g_411 p_1090->g_471 p_1090->g_77
 */
int32_t * func_53(int16_t  p_54, struct S6 * p_1090)
{ /* block id: 30 */
    VECTOR(int32_t, 16) l_70 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
    int32_t l_71 = 0x0839CA31L;
    int32_t *l_79 = (void*)0;
    int32_t **l_78 = &l_79;
    int8_t *l_80 = &p_1090->g_19[5][0];
    union U4 *l_85 = (void*)0;
    int i;
    l_71 &= ((VECTOR(int32_t, 8))(l_70.sd8b2d29c)).s6;
    (*p_1090->g_479) = func_72((+p_54), p_1090->g_77, func_14(l_70.s1, ((*l_78) = &l_71), l_80, p_1090), ((safe_div_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((l_85 != (void*)0), (p_54 , 0x9D8AL))), 4UL)) , &p_1090->g_28), p_1090);
    return (*p_1090->g_398);
}


/* ------------------------------------------ */
/* 
 * reads : p_1090->g_28 p_1090->g_67 p_1090->g_35
 * writes: p_1090->g_35 p_1090->g_67
 */
int64_t  func_55(uint32_t  p_56, int8_t * p_57, int32_t * p_58, int8_t  p_59, struct S6 * p_1090)
{ /* block id: 25 */
    int16_t l_60 = (-1L);
    int32_t *l_61 = &p_1090->g_35;
    int32_t *l_62 = &p_1090->g_35;
    int32_t *l_63 = &p_1090->g_35;
    int32_t *l_64 = &p_1090->g_35;
    int32_t *l_65[4];
    int i;
    for (i = 0; i < 4; i++)
        l_65[i] = &p_1090->g_35;
    (*l_61) = (l_60 = (*p_58));
    --p_1090->g_67;
    return (*l_61);
}


/* ------------------------------------------ */
/* 
 * reads : p_1090->g_34 p_1090->g_28 p_1090->g_3 p_1090->g_98 p_1090->g_19 p_1090->g_66 p_1090->g_5 p_1090->g_112 p_1090->g_35 p_1090->g_121 p_1090->g_124 p_1090->g_155 p_1090->g_162 p_1090->g_168 p_1090->g_88.f0 p_1090->g_170 p_1090->g_26 p_1090->g_177 p_1090->g_180 p_1090->g_106 p_1090->g_197 p_1090->g_206 p_1090->g_278 p_1090->g_294 p_1090->g_302 p_1090->g_306 p_1090->g_310 p_1090->g_313 p_1090->g_314 p_1090->g_329 p_1090->g_339 p_1090->g_330.f0 p_1090->g_360 p_1090->g_367 p_1090->g_398 p_1090->g_259 p_1090->g_407 p_1090->g_408 p_1090->g_411 p_1090->g_417 p_1090->g_237 p_1090->g_438 p_1090->g_439 p_1090->g_447 p_1090->g_448 p_1090->g_471 p_1090->g_449 p_1090->g_450 p_1090->g_399
 * writes: p_1090->g_35 p_1090->g_106 p_1090->g_112 p_1090->g_26 p_1090->g_88.f0 p_1090->g_239 p_1090->g_259 p_1090->g_329 p_1090->g_386 p_1090->g_367 p_1090->g_399 p_1090->g_411 p_1090->g_471
 */
union U4 * func_72(uint16_t  p_73, union U4 * p_74, int8_t * p_75, int32_t * p_76, struct S6 * p_1090)
{ /* block id: 33 */
    int32_t *l_86[7][8][4] = {{{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28}},{{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28}},{{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28}},{{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28}},{{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28}},{{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28}},{{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28},{&p_1090->g_35,&p_1090->g_3,&p_1090->g_28,&p_1090->g_28}}};
    union U4 *l_87 = &p_1090->g_88;
    VECTOR(int64_t, 16) l_89 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int64_t, 2))(1L, 1L), (VECTOR(int64_t, 2))(1L, 1L), 1L, 1L, 1L, 1L);
    VECTOR(int64_t, 16) l_90 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x2390401A71B0934BL), 0x2390401A71B0934BL), 0x2390401A71B0934BL, (-1L), 0x2390401A71B0934BL, (VECTOR(int64_t, 2))((-1L), 0x2390401A71B0934BL), (VECTOR(int64_t, 2))((-1L), 0x2390401A71B0934BL), (-1L), 0x2390401A71B0934BL, (-1L), 0x2390401A71B0934BL);
    VECTOR(int8_t, 2) l_93 = (VECTOR(int8_t, 2))((-1L), 0L);
    VECTOR(int8_t, 2) l_94 = (VECTOR(int8_t, 2))(0x34L, 0L);
    VECTOR(int16_t, 2) l_97 = (VECTOR(int16_t, 2))((-1L), 6L);
    VECTOR(int16_t, 2) l_99 = (VECTOR(int16_t, 2))(0x352CL, 0x3C6AL);
    VECTOR(int16_t, 4) l_100 = (VECTOR(int16_t, 4))(0x5A8FL, (VECTOR(int16_t, 2))(0x5A8FL, (-1L)), (-1L));
    VECTOR(int16_t, 16) l_101 = (VECTOR(int16_t, 16))(0x0EAEL, (VECTOR(int16_t, 4))(0x0EAEL, (VECTOR(int16_t, 2))(0x0EAEL, (-2L)), (-2L)), (-2L), 0x0EAEL, (-2L), (VECTOR(int16_t, 2))(0x0EAEL, (-2L)), (VECTOR(int16_t, 2))(0x0EAEL, (-2L)), 0x0EAEL, (-2L), 0x0EAEL, (-2L));
    VECTOR(int16_t, 4) l_104 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L);
    int16_t *l_105[8][6][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    uint8_t *l_111 = &p_1090->g_112;
    VECTOR(uint32_t, 8) l_119 = (VECTOR(uint32_t, 8))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0xCD61EF54L), 0xCD61EF54L), 0xCD61EF54L, 4294967286UL, 0xCD61EF54L);
    VECTOR(uint32_t, 16) l_120 = (VECTOR(uint32_t, 16))(0x0E43E29BL, (VECTOR(uint32_t, 4))(0x0E43E29BL, (VECTOR(uint32_t, 2))(0x0E43E29BL, 1UL), 1UL), 1UL, 0x0E43E29BL, 1UL, (VECTOR(uint32_t, 2))(0x0E43E29BL, 1UL), (VECTOR(uint32_t, 2))(0x0E43E29BL, 1UL), 0x0E43E29BL, 1UL, 0x0E43E29BL, 1UL);
    VECTOR(uint16_t, 4) l_133 = (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0x642EL), 0x642EL);
    VECTOR(uint16_t, 16) l_134 = (VECTOR(uint16_t, 16))(0xD8BBL, (VECTOR(uint16_t, 4))(0xD8BBL, (VECTOR(uint16_t, 2))(0xD8BBL, 0x11CEL), 0x11CEL), 0x11CEL, 0xD8BBL, 0x11CEL, (VECTOR(uint16_t, 2))(0xD8BBL, 0x11CEL), (VECTOR(uint16_t, 2))(0xD8BBL, 0x11CEL), 0xD8BBL, 0x11CEL, 0xD8BBL, 0x11CEL);
    VECTOR(uint16_t, 8) l_137 = (VECTOR(uint16_t, 8))(0xBCE8L, (VECTOR(uint16_t, 4))(0xBCE8L, (VECTOR(uint16_t, 2))(0xBCE8L, 0x64C3L), 0x64C3L), 0x64C3L, 0xBCE8L, 0x64C3L);
    VECTOR(uint8_t, 16) l_142 = (VECTOR(uint8_t, 16))(0xC1L, (VECTOR(uint8_t, 4))(0xC1L, (VECTOR(uint8_t, 2))(0xC1L, 6UL), 6UL), 6UL, 0xC1L, 6UL, (VECTOR(uint8_t, 2))(0xC1L, 6UL), (VECTOR(uint8_t, 2))(0xC1L, 6UL), 0xC1L, 6UL, 0xC1L, 6UL);
    VECTOR(uint8_t, 2) l_143 = (VECTOR(uint8_t, 2))(0x27L, 255UL);
    VECTOR(uint64_t, 2) l_152 = (VECTOR(uint64_t, 2))(0xB58D0A975BA9DFC4L, 0xCD221595F4C982E6L);
    VECTOR(uint64_t, 2) l_156 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xBBE2DA87B3A4D1CBL);
    VECTOR(uint64_t, 8) l_159 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), 0UL, 18446744073709551615UL, 0UL);
    VECTOR(uint64_t, 2) l_163 = (VECTOR(uint64_t, 2))(0x656563EE52D58216L, 3UL);
    VECTOR(uint64_t, 16) l_164 = (VECTOR(uint64_t, 16))(0x78B1CBCA9DBBE3BBL, (VECTOR(uint64_t, 4))(0x78B1CBCA9DBBE3BBL, (VECTOR(uint64_t, 2))(0x78B1CBCA9DBBE3BBL, 0x78705FF088BA0BCDL), 0x78705FF088BA0BCDL), 0x78705FF088BA0BCDL, 0x78B1CBCA9DBBE3BBL, 0x78705FF088BA0BCDL, (VECTOR(uint64_t, 2))(0x78B1CBCA9DBBE3BBL, 0x78705FF088BA0BCDL), (VECTOR(uint64_t, 2))(0x78B1CBCA9DBBE3BBL, 0x78705FF088BA0BCDL), 0x78B1CBCA9DBBE3BBL, 0x78705FF088BA0BCDL, 0x78B1CBCA9DBBE3BBL, 0x78705FF088BA0BCDL);
    int32_t l_169 = 0x436AE91AL;
    uint8_t l_205 = 0xBCL;
    uint64_t l_212[5] = {0x41DCC9798B304DB0L,0x41DCC9798B304DB0L,0x41DCC9798B304DB0L,0x41DCC9798B304DB0L,0x41DCC9798B304DB0L};
    uint64_t **l_225 = (void*)0;
    uint64_t *l_228 = &p_1090->g_106;
    uint64_t **l_227 = &l_228;
    uint8_t l_231 = 0xC7L;
    union U2 *l_236 = &p_1090->g_237;
    union U0 **l_340 = (void*)0;
    uint64_t l_389 = 0xA5185A5B5BE6EF71L;
    VECTOR(int8_t, 8) l_392 = (VECTOR(int8_t, 8))(0x0FL, (VECTOR(int8_t, 4))(0x0FL, (VECTOR(int8_t, 2))(0x0FL, 0x01L), 0x01L), 0x01L, 0x0FL, 0x01L);
    uint64_t l_404 = 0xC7AB59A8D9B2F9ECL;
    VECTOR(uint32_t, 8) l_412 = (VECTOR(uint32_t, 8))(0xFCE8534AL, (VECTOR(uint32_t, 4))(0xFCE8534AL, (VECTOR(uint32_t, 2))(0xFCE8534AL, 4294967294UL), 4294967294UL), 4294967294UL, 0xFCE8534AL, 4294967294UL);
    VECTOR(int64_t, 16) l_434 = (VECTOR(int64_t, 16))(0x649E2B52312FD2C4L, (VECTOR(int64_t, 4))(0x649E2B52312FD2C4L, (VECTOR(int64_t, 2))(0x649E2B52312FD2C4L, 1L), 1L), 1L, 0x649E2B52312FD2C4L, 1L, (VECTOR(int64_t, 2))(0x649E2B52312FD2C4L, 1L), (VECTOR(int64_t, 2))(0x649E2B52312FD2C4L, 1L), 0x649E2B52312FD2C4L, 1L, 0x649E2B52312FD2C4L, 1L);
    int i, j, k;
    (*p_1090->g_34) = (-1L);
    (*p_1090->g_34) = ((l_87 == (((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(0x45L, 0x0BL)), ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 16))(0x2CL, 1L, 0x6AL, ((((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(l_89.s2d)).xxyxxxyxxyyyxxxy > ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(l_90.sfc)), 0x1F7CAE9FC7D00C9FL, ((VECTOR(int64_t, 4))(((~(p_1090->g_28 , FAKE_DIVERGE(p_1090->local_1_offset, get_local_id(1), 10))) > ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(((FAKE_DIVERGE(p_1090->local_1_offset, get_local_id(1), 10) > p_73) && (0x30L | GROUP_DIVERGE(0, 1))), (l_87 == (((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))((-3L), 0x5FL)).xyyxyyyy != ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(l_93.yx)).xxyx >= ((VECTOR(int8_t, 8))(l_94.yxxyyyyx)).hi))).yzwzyxxy, (int8_t)(FAKE_DIVERGE(p_1090->global_2_offset, get_global_id(2), 10) < p_1090->g_3), (int8_t)(1L == (safe_add_func_int16_t_s_s(p_73, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_97.yyyxxyxy)).s16 && ((VECTOR(int16_t, 8))(p_1090->g_98.s60660533)).s67))) ^ ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((-2L), (-1L))), 0x04B1L, 1L)), ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x028EL, 0x0F39L)), 0x0420L, 0x207DL)).hi != ((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 4))(l_99.xxyy)).ywywzxwxxwyxxzww, ((VECTOR(int16_t, 8))(l_100.zxwzwxzy)).s6135065420353762))).se6))).xxxyyxxxyyyyyxxy && ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(0x43ACL, (-7L))).xyxyyxyyxyxxxyxy && ((VECTOR(int16_t, 16))(l_101.s85b7ff5a80fc2ddd)))))))).sae5f))).lo, (int16_t)((((safe_lshift_func_int16_t_s_s((p_1090->g_106 = ((VECTOR(int16_t, 2))(l_104.zy)).odd), (safe_div_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_u(((*l_111) = ((p_1090->g_19[0][0] <= 1UL) <= p_1090->g_3)), p_1090->g_66.x)) > 0L), GROUP_DIVERGE(1, 1))))) == (-1L)) < p_1090->g_19[2][0]) || p_1090->g_19[7][1]))))))).even)))))).s3434617211454663, ((VECTOR(int8_t, 16))(0x51L)), ((VECTOR(int8_t, 16))(6L))))).even))).s2462011526511602, ((VECTOR(int8_t, 16))(0x22L))))).s2 , (void*)0)), 0UL, 0x39L, ((VECTOR(uint8_t, 4))(0x8DL)))).s56, ((VECTOR(uint8_t, 2))(0x00L))))).yyxyxyyyxxxyxyxx, ((VECTOR(uint8_t, 16))(3UL))))).s1e + ((VECTOR(uint8_t, 2))(0x48L))))).yyxxyxxy, ((VECTOR(uint8_t, 8))(0xFDL))))).lo, ((VECTOR(uint8_t, 4))(0x2DL))))).hi ^ ((VECTOR(uint8_t, 2))(1UL)))))))), ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 4))(0x1EL)))).s3), 0L, 0x2947B03055D87510L, 1L)), 0L)).s71 >= ((VECTOR(int64_t, 2))(4L))))), 0x60E50EEE4F3F7408L, p_1090->g_5, 5L, ((VECTOR(int64_t, 4))(0x027C01AD3E3C3B74L)), p_1090->g_98.s4, 0x349BFD98B40E0213L, (-7L), (-1L), p_1090->g_3, 0x0A2AEEF22598743DL, 1L))))).sf , p_1090->g_98.s0) > 65535UL) , p_73) & (*p_75)), p_1090->g_112, ((VECTOR(int8_t, 4))(0x5AL)), (*p_75), p_1090->g_35, 1L, 0L, p_1090->g_28, 0x15L, 0L)), ((VECTOR(int8_t, 16))(0x2CL)), ((VECTOR(int8_t, 16))(5L))))).saf, ((VECTOR(int8_t, 2))((-1L)))))).lo , (void*)0)) <= 2L);
    (*p_1090->g_34) = 4L;
    if (((safe_add_func_int8_t_s_s((0x366BL == (p_1090->g_26 = (((((safe_mul_func_int8_t_s_s((*p_75), (((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL)).yyyyyyxxxxyxxyyx + ((VECTOR(uint32_t, 16))(l_119.s3334645026331276))))).hi, ((VECTOR(uint32_t, 16))(l_120.scab240058932948f)).lo, ((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 2))(p_1090->g_121.s40)).xxyxyxxyyxyxxyxy, ((VECTOR(uint32_t, 8))((+((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(p_1090->g_124.wy)).xxyy + ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(4294967286UL, 0UL)), 0x58820E65L, 0xF55FBD20L)).ywxxyyyw >> ((VECTOR(uint32_t, 8))(32))))).odd - ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(1UL, 0UL)), ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(l_133.wxwyyzyywyxwwxzw)).even + ((VECTOR(uint16_t, 4))(l_134.s538c)).xxyzxwxz))).s44, ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(l_137.s35)).xxxyyxyxyyyyxxyy + ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(5UL, 0xF2D7L)), (safe_div_func_uint64_t_u_u((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(l_142.se6)).yxyyyyxy, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_143.xx)), 255UL, 1UL)).yyywxwyw))).odd, (uint8_t)((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(0UL, 0xC6L)).xxyy, ((VECTOR(uint8_t, 2))(0xD8L, 1UL)).xyyx))).x))).z, (safe_lshift_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(0x4C0B326BL, (p_1090->g_35 = (~(safe_add_func_uint16_t_u_u(((void*)0 != p_75), ((safe_sub_func_uint8_t_u_u(((((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 8))(l_152.xxxxxyyx)), ((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(p_1090->g_155.s16)).xxyyyxxyyxyyyyyy + ((VECTOR(uint64_t, 4))(l_156.yxyx)).wyxxyyxxwwxwxxxy))).odd, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(l_159.s2522332743356271)).sd215 + ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(0UL, 0xC12B71802269A315L)).yxyyyxxy + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 2))(p_1090->g_162.s72)).xyyyxxxy, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 16))(l_163.yyyxyxyxyyxyxxyy)).odd, ((VECTOR(uint64_t, 8))(l_164.sd2221dae))))), 0x54FD3AA2E64E466CL, 0xBB9CBAC53C36080EL, 0UL, 1UL, (+(((safe_rshift_func_int16_t_s_u((safe_unary_minus_func_uint8_t_u((((0L == GROUP_DIVERGE(2, 1)) , p_1090->g_168) , (p_1090->g_88.f0 != (p_75 != p_75))))), 6)) >= l_169) ^ (*p_76))), 18446744073709551615UL, 0x3BB65FF730B3DA9CL, 6UL)).lo))).s5223507654064302 | ((VECTOR(uint64_t, 16))(0UL))))).hi))).hi))), p_1090->g_88.f0, 0x7212886F20A964B1L, 0x7E2E7F7A6C36F7E9L, 0UL))))), ((VECTOR(uint64_t, 8))(18446744073709551610UL))))).s5 <= p_1090->g_170) & p_1090->g_28), 0x63L)) <= 2L))))))), 7)))), p_1090->g_3)), 0xA022L, 0UL, p_73, 0xA03AL, 0x9BECL)).s7454612750201300))).s2438, (uint16_t)p_73))).odd, ((VECTOR(uint16_t, 2))(1UL)))))))), 0x9D2B6AF6L, 4294967292UL, 2UL, 4294967294UL)).hi + ((VECTOR(uint32_t, 4))(0UL))))).ywyyyxzx & ((VECTOR(uint32_t, 8))(3UL))))).even))).even ^ ((VECTOR(uint32_t, 2))(0x3A20F636L))))).yxyy))).zywxwzzz))).s5364610671622622, ((VECTOR(uint32_t, 16))(0xEF458370L))))).s00c0, ((VECTOR(uint32_t, 4))(5UL))))).zxzxwxxw))).s3 == 0xAFEE0E12L))) == p_73) ^ p_1090->g_88.f0) && p_1090->g_35) , FAKE_DIVERGE(p_1090->global_1_offset, get_global_id(1), 10)))), 1UL)) < 0x11629920L))
    { /* block id: 41 */
        return p_74;
    }
    else
    { /* block id: 43 */
        int16_t *l_181 = (void*)0;
        uint64_t *l_186 = &p_1090->g_106;
        int32_t l_193 = 1L;
        VECTOR(int8_t, 4) l_204 = (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x13L), 0x13L);
        VECTOR(int16_t, 4) l_207 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x5DE9L), 0x5DE9L);
        int32_t l_230 = 0x1EE38925L;
        union U2 *l_284 = &p_1090->g_237;
        VECTOR(uint8_t, 8) l_297 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xB5L), 0xB5L), 0xB5L, 255UL, 0xB5L);
        VECTOR(uint8_t, 16) l_301 = (VECTOR(uint8_t, 16))(0x5DL, (VECTOR(uint8_t, 4))(0x5DL, (VECTOR(uint8_t, 2))(0x5DL, 0x90L), 0x90L), 0x90L, 0x5DL, 0x90L, (VECTOR(uint8_t, 2))(0x5DL, 0x90L), (VECTOR(uint8_t, 2))(0x5DL, 0x90L), 0x5DL, 0x90L, 0x5DL, 0x90L);
        VECTOR(uint8_t, 16) l_305 = (VECTOR(uint8_t, 16))(0x42L, (VECTOR(uint8_t, 4))(0x42L, (VECTOR(uint8_t, 2))(0x42L, 0xB8L), 0xB8L), 0xB8L, 0x42L, 0xB8L, (VECTOR(uint8_t, 2))(0x42L, 0xB8L), (VECTOR(uint8_t, 2))(0x42L, 0xB8L), 0x42L, 0xB8L, 0x42L, 0xB8L);
        VECTOR(uint8_t, 2) l_309 = (VECTOR(uint8_t, 2))(0xE9L, 0x03L);
        VECTOR(uint8_t, 2) l_355 = (VECTOR(uint8_t, 2))(0xDCL, 0xA8L);
        int32_t l_430[3][1][1];
        VECTOR(int64_t, 16) l_441 = (VECTOR(int64_t, 16))(0x18703DD7E3B0A91AL, (VECTOR(int64_t, 4))(0x18703DD7E3B0A91AL, (VECTOR(int64_t, 2))(0x18703DD7E3B0A91AL, 0x716BC840CF9CB1E7L), 0x716BC840CF9CB1E7L), 0x716BC840CF9CB1E7L, 0x18703DD7E3B0A91AL, 0x716BC840CF9CB1E7L, (VECTOR(int64_t, 2))(0x18703DD7E3B0A91AL, 0x716BC840CF9CB1E7L), (VECTOR(int64_t, 2))(0x18703DD7E3B0A91AL, 0x716BC840CF9CB1E7L), 0x18703DD7E3B0A91AL, 0x716BC840CF9CB1E7L, 0x18703DD7E3B0A91AL, 0x716BC840CF9CB1E7L);
        int64_t l_456 = (-9L);
        union U4 *l_468 = &p_1090->g_88;
        int16_t **l_470 = &l_105[6][0][1];
        uint16_t *l_472 = &p_1090->g_26;
        int32_t l_477[6] = {0x321D2B17L,0x321D2B17L,0x321D2B17L,0x321D2B17L,0x321D2B17L,0x321D2B17L};
        uint32_t l_478 = 0x83B507E3L;
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 1; k++)
                    l_430[i][j][k] = (-2L);
            }
        }
        if ((safe_sub_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(p_1090->g_26, (p_1090->g_19[0][0] == (safe_add_func_int16_t_s_s((p_1090->g_177 , (safe_mod_func_uint16_t_u_u((p_1090->g_180 , (l_181 == (void*)0)), (p_1090->g_155.s6 , p_73)))), ((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u(((((*l_186)--) == (safe_mul_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((p_1090->g_162.s5 && l_193), (*p_76))), p_73))) != 0x0957E858L), 5)), (*p_76))) , 1UL)))))), p_1090->g_28)))
        { /* block id: 45 */
            uint8_t l_194 = 1UL;
            uint64_t *l_210 = (void*)0;
            int8_t *l_211 = &p_1090->g_88.f0;
            int8_t *l_213 = (void*)0;
            int8_t *l_214 = (void*)0;
            int8_t *l_215 = (void*)0;
            int8_t *l_216 = (void*)0;
            int8_t *l_217 = (void*)0;
            int8_t *l_218 = (void*)0;
            int8_t *l_219 = (void*)0;
            int8_t *l_220 = (void*)0;
            int8_t *l_221 = (void*)0;
            int8_t *l_222 = (void*)0;
            int8_t *l_223[1][7] = {{&p_1090->g_19[0][0],&p_1090->g_19[0][0],&p_1090->g_19[0][0],&p_1090->g_19[0][0],&p_1090->g_19[0][0],&p_1090->g_19[0][0],&p_1090->g_19[0][0]}};
            int32_t l_224[5][3] = {{0x571DA718L,0x571DA718L,0x571DA718L},{0x571DA718L,0x571DA718L,0x571DA718L},{0x571DA718L,0x571DA718L,0x571DA718L},{0x571DA718L,0x571DA718L,0x571DA718L},{0x571DA718L,0x571DA718L,0x571DA718L}};
            VECTOR(uint32_t, 16) l_293 = (VECTOR(uint32_t, 16))(0xD4AB566CL, (VECTOR(uint32_t, 4))(0xD4AB566CL, (VECTOR(uint32_t, 2))(0xD4AB566CL, 4294967288UL), 4294967288UL), 4294967288UL, 0xD4AB566CL, 4294967288UL, (VECTOR(uint32_t, 2))(0xD4AB566CL, 4294967288UL), (VECTOR(uint32_t, 2))(0xD4AB566CL, 4294967288UL), 0xD4AB566CL, 4294967288UL, 0xD4AB566CL, 4294967288UL);
            VECTOR(uint8_t, 16) l_300 = (VECTOR(uint8_t, 16))(0xCEL, (VECTOR(uint8_t, 4))(0xCEL, (VECTOR(uint8_t, 2))(0xCEL, 0xD2L), 0xD2L), 0xD2L, 0xCEL, 0xD2L, (VECTOR(uint8_t, 2))(0xCEL, 0xD2L), (VECTOR(uint8_t, 2))(0xCEL, 0xD2L), 0xCEL, 0xD2L, 0xCEL, 0xD2L);
            int32_t l_322 = 1L;
            int32_t l_354 = (-1L);
            int i, j;
            if ((((l_194 & (l_224[3][1] = (~(safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_1090->g_197.zxzwzxyw)).s3, ((safe_add_func_int32_t_s_s(((safe_sub_func_int64_t_s_s((safe_mul_func_int16_t_s_s(((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_204.yw)), ((p_1090->g_197.y == (*p_75)) == (((FAKE_DIVERGE(p_1090->local_1_offset, get_local_id(1), 10) > l_205) && ((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 4))((-1L), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(p_1090->g_206.saff0f177)).s05 && ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(l_207.zxzx)).odd ^ ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(0x6EF7L, 0L)).xyxx ^ ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 2))((-1L), 0x18DBL)).yyyyxxxxyxxxxxyx, ((VECTOR(int16_t, 4))((((*l_211) ^= (safe_mul_func_uint8_t_u_u((0x00B2586082183CB4L > ((((void*)0 == l_210) ^ ((((l_194 , 0x77L) && 5L) > p_73) , l_194)) == GROUP_DIVERGE(1, 1))), 0x5BL))) , l_194), ((VECTOR(int16_t, 2))(0x5540L)), 9L)).wwzxzywwzzwywyxz))).s9b, ((VECTOR(int16_t, 2))(5L))))), 0x6130L, 0x794DL))))).odd))).yxyx != ((VECTOR(int16_t, 4))(0L))))).odd))) | ((VECTOR(int16_t, 2))((-1L)))))), 0x37EAL)).wwxyxzzzwxyzyyzx, ((VECTOR(int16_t, 16))(0x7751L))))).sddde < ((VECTOR(int16_t, 4))((-4L)))))).yyzwywwy <= ((VECTOR(int16_t, 8))(0x7BB2L))))).s0 > p_1090->g_162.s5) != p_1090->g_35)) & 0x1AD130623DA9A9F9L)), (-1L), ((VECTOR(int8_t, 4))(0x01L)))) && ((VECTOR(int8_t, 8))(0L))))).s12 && ((VECTOR(int8_t, 2))(0x7EL))))).yxxyxxxx && ((VECTOR(int8_t, 8))(1L))))).s5 && 8L) <= l_193), p_1090->g_3)), p_1090->g_98.s6)) <= l_212[3]), l_194)) <= 0x29311118A623C689L)))))) | (-9L)) && (*p_75)))
            { /* block id: 48 */
                uint64_t ***l_226[2];
                VECTOR(int32_t, 16) l_229 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x41CA1425L), 0x41CA1425L), 0x41CA1425L, 0L, 0x41CA1425L, (VECTOR(int32_t, 2))(0L, 0x41CA1425L), (VECTOR(int32_t, 2))(0L, 0x41CA1425L), 0L, 0x41CA1425L, 0L, 0x41CA1425L);
                int i;
                for (i = 0; i < 2; i++)
                    l_226[i] = &l_225;
                l_227 = l_225;
                --l_231;
            }
            else
            { /* block id: 51 */
                int32_t l_262 = 0x5434C744L;
                union U4 **l_266[6][1] = {{&l_87},{&l_87},{&l_87},{&l_87},{&l_87},{&l_87}};
                VECTOR(uint8_t, 2) l_277 = (VECTOR(uint8_t, 2))(255UL, 0x3BL);
                VECTOR(int8_t, 16) l_279 = (VECTOR(int8_t, 16))(0x3CL, (VECTOR(int8_t, 4))(0x3CL, (VECTOR(int8_t, 2))(0x3CL, 0L), 0L), 0L, 0x3CL, 0L, (VECTOR(int8_t, 2))(0x3CL, 0L), (VECTOR(int8_t, 2))(0x3CL, 0L), 0x3CL, 0L, 0x3CL, 0L);
                uint32_t *l_321[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint8_t l_353 = 1UL;
                union U2 **l_362 = &l_284;
                union U2 ***l_361 = &l_362;
                int i, j;
                for (l_205 = 11; (l_205 <= 23); ++l_205)
                { /* block id: 54 */
                    union U2 **l_238 = (void*)0;
                    uint16_t *l_246 = &p_1090->g_26;
                    uint16_t *l_258[4][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    uint8_t *l_260 = &l_205;
                    int32_t l_261 = 0x62A8E0DAL;
                    int i, j;
                    p_1090->g_239 = l_236;
                    (*p_1090->g_34) ^= 0x472EFAD2L;
                    if ((safe_div_func_uint16_t_u_u(0x04F7L, (p_1090->g_98.s5 || (safe_mul_func_int16_t_s_s((l_193 = ((safe_rshift_func_uint16_t_u_s((--(*l_246)), 4)) == 0xBFL)), (((safe_mul_func_uint8_t_u_u(((*l_111) = 0x81L), (safe_add_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u(((*p_75) || ((l_261 = ((safe_lshift_func_uint16_t_u_s((p_1090->g_259 = 65529UL), p_73)) & ((l_260 == p_75) <= l_194))) , p_73)))), p_73)))) <= 0L) && l_262)))))))
                    { /* block id: 62 */
                        int32_t **l_265 = &l_86[5][0][0];
                        (*l_265) = ((--(*l_186)) , p_76);
                        if (l_262)
                            break;
                    }
                    else
                    { /* block id: 66 */
                        l_266[0][0] = &p_74;
                    }
                    if ((*p_76))
                        continue;
                }
                if ((safe_rshift_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(((l_322 = (((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(0xE3L, 0x9DL, 0xE7L, 246UL)).ywwzyxwwxzxwywwz * ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_277.xy)), 0x3EL, 0xDEL)).xywyyzwzwywxzywz + ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((*l_111) ^= ((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(p_1090->g_278.ww)).xxyyyxxy, ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))(0x77L, (-1L), ((VECTOR(int8_t, 8))(l_279.s71308a2a)), (safe_div_func_uint32_t_u_u((l_224[1][2] &= (((safe_sub_func_int8_t_s_s(((p_1090->g_66.y , l_284) != (((safe_add_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_add_func_uint64_t_u_u(l_277.x, ((VECTOR(int64_t, 2))(0x0DE1B7BDB6203BAEL, 0x02E60B7A04B4920CL)).hi)), ((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1090->local_2_offset, get_local_id(2), 10), (!((VECTOR(uint32_t, 2))(l_293.sc9)).lo))) , ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(p_1090->g_294.zwyyzzyx)) | ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(l_297.s71727163)).s4564434007766660 + ((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(l_279.s8, ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 16))(l_300.sd91674e7248802f0)).sb2, ((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 2))(0x81L, 0x1BL)).xxyyyxyy, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(l_301.sfa34)) & ((VECTOR(uint8_t, 16))(p_1090->g_302.xyyyyxxxxyxyxyxx)).sca96))).zzwzzzyx, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))(l_305.se23b)).lo, ((VECTOR(uint8_t, 2))(0x6CL, 7UL)), ((VECTOR(uint8_t, 4))(p_1090->g_306.zzxy)).lo))).yxyxxxxyxxyxxyyy + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 2))(l_309.xx)).xxyxyxyy, ((VECTOR(uint8_t, 16))(0UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(p_1090->g_310.xyywzwwzwxzyxxzy)).sae ^ ((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(p_1090->g_313.s7112662052156162)).hi >> ((VECTOR(uint8_t, 8))(p_1090->g_314.sad544ba3))))), 1UL, 0xF5L, p_1090->g_35, 255UL, (l_293.s8 | (safe_mul_func_uint16_t_u_u((p_1090->g_26 ^= (safe_div_func_uint32_t_u_u((l_181 != (((safe_rshift_func_int16_t_s_u(p_1090->g_310.x, 4)) != 4L) , l_105[7][5][2])), 0x0291D3B1L))), l_293.sf))), ((VECTOR(uint8_t, 2))(3UL)), 0UL)).s06, (uint8_t)p_1090->g_294.x))))))))), ((VECTOR(uint8_t, 2))(0xD0L)), ((VECTOR(uint8_t, 2))(0UL))))) & ((VECTOR(uint8_t, 2))(0xBFL))))), 2UL, 0xBFL)), 0x02L, 1UL, ((VECTOR(uint8_t, 4))(0xABL)), 250UL, GROUP_DIVERGE(0, 1), ((VECTOR(uint8_t, 2))(0x68L)), 0x5AL)).lo, ((VECTOR(uint8_t, 8))(247UL))))) + ((VECTOR(uint8_t, 8))(250UL))))).s5543433345175314))).lo))).s47))), 0xAAL, GROUP_DIVERGE(1, 1), p_73, p_73, p_73, ((VECTOR(uint8_t, 4))(0UL)), FAKE_DIVERGE(p_1090->local_1_offset, get_local_id(1), 10), 0x44L, 248UL, 252UL)).hi, (uint8_t)p_73))).lo, ((VECTOR(uint8_t, 4))(0UL))))) + ((VECTOR(uint8_t, 4))(1UL))))).wywyzxzz))).s5360052550012323))).s3e, (uint8_t)255UL, (uint8_t)l_293.sc))), ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(0xABL))))).xyxxxxyx))).s0))), l_279.se)) , p_1090->g_168) , (void*)0)), p_73)) , 246UL) && l_305.s5)), 0x0FBA80B2L)), 0x58L, ((VECTOR(int8_t, 2))(0x38L)), 0x3BL, (-6L))).odd, ((VECTOR(int8_t, 8))(0x30L)))))))), ((VECTOR(int8_t, 8))(0x6EL))))).s3), ((VECTOR(uint8_t, 2))(0xDAL)), 0xE6L)), 0UL, 0x4AL, 0x9FL, 251UL)).s7202223467037232)))))).s5 <= p_73)) && p_73), p_1090->g_28)), p_1090->g_3)), GROUP_DIVERGE(0, 1))))
                { /* block id: 75 */
                    if ((safe_lshift_func_int16_t_s_s(p_1090->g_66.x, 9)))
                    { /* block id: 76 */
                        l_230 = (safe_lshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u(((l_279.s0 >= ((VECTOR(uint32_t, 2))(7UL, 0x8A191D69L)).odd) || 65535UL), 3)), 8));
                        return &p_1090->g_88;
                    }
                    else
                    { /* block id: 79 */
                        p_1090->g_329 = p_1090->g_329;
                        return l_87;
                    }
                }
                else
                { /* block id: 83 */
                    uint32_t l_332 = 0UL;
                    --l_332;
                    l_354 ^= (safe_mod_func_uint64_t_u_u((safe_div_func_uint8_t_u_u(((((p_1090->g_339 , l_340) != (void*)0) <= ((((safe_sub_func_uint64_t_u_u(((0x604FL >= (l_193 = p_1090->g_302.x)) | (safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_u(((+p_1090->g_162.s2) & (((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 8))((((safe_mul_func_uint16_t_u_u(l_300.se, (safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(0x4AL, (safe_rshift_func_int8_t_s_u((*p_75), (0x1597L < 0x8AC8L))), ((VECTOR(int8_t, 4))(4L)), 0x05L, 0x1AL)).s6, l_353)))) <= 0x5241B77E60A7B765L) || l_297.s4), 0x35C8L, p_1090->g_88.f0, 0x2E77L, 0x73B2L, ((VECTOR(int16_t, 2))((-5L))), (-1L))), ((VECTOR(int16_t, 8))(0x025BL))))), (int16_t)p_73))), ((VECTOR(int16_t, 8))(0L)), ((VECTOR(int16_t, 8))(0L))))).s6 > p_1090->g_313.s7)), p_1090->g_313.s7)), l_279.s7))), 0x6707567DA4C62781L)) || 1UL) , l_277.x) | p_1090->g_197.y)) && p_1090->g_330.f0), 7L)), p_1090->g_313.s2));
                    (*p_1090->g_34) ^= l_332;
                }
                l_230 ^= (((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 16))(l_355.xyxyxyxyxyyxxyxy)).se5, (uint8_t)((safe_mod_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(0x4E6DL, 1UL, (!p_1090->g_88.f0), 65528UL, ((((VECTOR(uint32_t, 16))(p_1090->g_360.wyxxyxyzwwzwzyyw)).s7 == l_277.x) || (((l_300.s2 && ((((*l_361) = &l_284) != (p_73 , &l_236)) < (safe_lshift_func_uint8_t_u_u(((((**l_227) = (safe_sub_func_uint8_t_u_u(((p_73 && p_73) && ((VECTOR(int16_t, 8))(p_1090->g_367.xyxxxxyy)).s3), (*p_75)))) | 0x7AAF14233DAA163FL) != 0xE1AFL), l_277.x)))) <= l_293.sc) | p_1090->g_124.x)), ((VECTOR(uint16_t, 2))(0x2086L)), p_1090->g_19[0][0], l_293.s3, p_1090->g_310.y, 65526UL, ((VECTOR(uint16_t, 2))(0xA5A2L)), ((VECTOR(uint16_t, 2))(0UL)), 0x5AF2L)).s2, p_1090->g_310.z)), 0xF17592A3L)) > p_1090->g_302.y), (uint8_t)l_355.x))), ((VECTOR(uint8_t, 2))(255UL))))).odd != (-5L));
            }
        }
        else
        { /* block id: 93 */
            int8_t *l_384 = (void*)0;
            int8_t *l_385 = (void*)0;
            int16_t l_390 = (-5L);
            VECTOR(int8_t, 2) l_391 = (VECTOR(int8_t, 2))(1L, 0x15L);
            int32_t *l_397 = &p_1090->g_35;
            int i;
            (*p_1090->g_34) = (((safe_sub_func_uint32_t_u_u(p_1090->g_19[0][0], (((safe_sub_func_int32_t_s_s((safe_div_func_uint32_t_u_u(((((*p_75) , ((safe_sub_func_uint32_t_u_u((p_1090->g_278.z != (!(safe_div_func_int32_t_s_s((safe_add_func_int16_t_s_s((p_1090->g_367.y = (safe_lshift_func_uint8_t_u_s(((((((safe_lshift_func_int8_t_s_u((p_1090->g_386[1] = (p_1090->g_98.s7 , ((void*)0 == &l_236))), (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(l_389, ((VECTOR(int8_t, 4))(l_390, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(l_391.xyxyxyyyxxyxyyxx)).hi > ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(0x49L, 1L)).yyxyyyxyxyxxxyxx != ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 2))(l_392.s73)).xyyyyyxy))).s2451360764633275))).odd))), 0x06L, 0L, (*p_75), ((VECTOR(int8_t, 2))((-1L))), (-9L), 1L, 0x14L)).s99 && ((VECTOR(int8_t, 2))(0x1AL))))), 0L)), (-7L), 2L, (*p_75), 0x13L, ((VECTOR(int8_t, 2))(0x60L)), 0L, 0L, p_1090->g_197.w, 0x03L, 0x31L)).s4465 | ((VECTOR(int8_t, 4))((-1L)))))), 0x5FL, 1L, (*p_75), 0x21L, 1L, ((VECTOR(int8_t, 2))(0x74L)), 9L, ((VECTOR(int8_t, 2))((-1L))), 0x24L, 0L)).s6f && ((VECTOR(int8_t, 2))(0L))))), ((VECTOR(int8_t, 2))(8L))))).odd, 0x5DL)))) >= 65529UL) | 0x0CL) < (*p_75)) , (void*)0) == &p_1090->g_106), 5))), p_73)), 4294967293UL)))), p_1090->g_306.x)) && l_391.y)) >= (*p_76)) & p_1090->g_3), (*p_76))), 7UL)) | 1UL) , (*p_76)))) >= l_391.y) <= p_73);
            for (p_1090->g_112 = 6; (p_1090->g_112 >= 39); ++p_1090->g_112)
            { /* block id: 99 */
                uint8_t l_420 = 0UL;
                VECTOR(int64_t, 2) l_435 = (VECTOR(int64_t, 2))(0x033F922F7AC46286L, 0x0491E1E1CBC77511L);
                union U2 **l_437 = (void*)0;
                union U2 ***l_436 = &l_437;
                int32_t *l_446 = (void*)0;
                int i;
                for (l_390 = 0; (l_390 == 13); ++l_390)
                { /* block id: 102 */
                    VECTOR(uint32_t, 16) l_421 = (VECTOR(uint32_t, 16))(0x10B5BA87L, (VECTOR(uint32_t, 4))(0x10B5BA87L, (VECTOR(uint32_t, 2))(0x10B5BA87L, 1UL), 1UL), 1UL, 0x10B5BA87L, 1UL, (VECTOR(uint32_t, 2))(0x10B5BA87L, 1UL), (VECTOR(uint32_t, 2))(0x10B5BA87L, 1UL), 0x10B5BA87L, 1UL, 0x10B5BA87L, 1UL);
                    int32_t l_428 = (-5L);
                    uint32_t l_431 = 4UL;
                    int i;
                    (*p_1090->g_398) = l_397;
                    for (p_1090->g_259 = 4; (p_1090->g_259 != (-18)); p_1090->g_259--)
                    { /* block id: 106 */
                        int8_t l_402 = (-1L);
                        int32_t l_403 = 0x1FE362A4L;
                        VECTOR(uint32_t, 4) l_418 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xA3AD03C1L), 0xA3AD03C1L);
                        VECTOR(uint32_t, 4) l_419 = (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 0xC65B7E57L), 0xC65B7E57L);
                        uint32_t l_429 = 0x5F493DF0L;
                        int i;
                        --l_404;
                        l_430[0][0][0] ^= ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(p_1090->g_407.xyyxyxxx)) & ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(0x1B5EA594L, (-6L))) || ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(0x76865ED9L, 1L)).xyxx && ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1090->g_408.yy)), (-1L), (-1L))).wxzwzyxx & ((VECTOR(int32_t, 4))((FAKE_DIVERGE(p_1090->local_0_offset, get_local_id(0), 10) && ((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(max(((VECTOR(uint32_t, 16))(p_1090->g_411.xxyyyxyyxxyxxxyx)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(l_412.s7113)) | ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(p_1090->g_417.s70)).xxyyxyyxyyxyxyyy + ((VECTOR(uint32_t, 16))(l_418.yxxywxxyxwxyzxxx))))).s6d7a + ((VECTOR(uint32_t, 8))(l_419.xwzxywww)).even)))))), 9UL, l_420, 0x2D2998B6L, 0xEEE98826L)).s7654327715606264))).sc265 + ((VECTOR(uint32_t, 2))(l_421.s0d)).yxxy))).wywwyxzw, ((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 16))(p_73, ((l_207.w , (*l_284)) , (safe_mul_func_uint8_t_u_u(p_73, (p_1090->g_386[7] = ((l_428 = (0x2FL | ((safe_div_func_int16_t_s_s(((safe_add_func_int16_t_s_s(p_73, (-3L))) <= ((0x4D896458L ^ (*p_1090->g_34)) ^ l_418.y)), p_73)) , 0x28L))) >= l_429))))), 0x48CCL, 0UL, 65532UL, ((VECTOR(uint16_t, 2))(0x3006L)), 0x4B48L, 65535UL, l_403, 1UL, 6UL, FAKE_DIVERGE(p_1090->global_2_offset, get_global_id(2), 10), 65534UL, 0xEF1EL, 65534UL)).hi, ((VECTOR(uint16_t, 8))(0x263DL)))))))).even, (uint32_t)p_1090->g_417.s2))).z), ((VECTOR(int32_t, 2))(0x2C3D8E2BL)), 0x399FCCAAL)).xxzyzxxx))).odd))).even))).xxyyyyxy))).lo != ((VECTOR(int32_t, 4))(0x60870154L))))).zxxxxyxy && ((VECTOR(int32_t, 8))(0x6EE2FA31L))))).s5;
                        if (l_431)
                            continue;
                        (*l_397) |= (l_421.s0 ^ 18446744073709551610UL);
                    }
                }
                (*l_397) &= (safe_sub_func_uint64_t_u_u((p_73 == ((void*)0 == p_76)), ((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 16))(l_434.s87c43a5b179aacc9)).odd, ((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 16))(l_435.yyyyxxyyxyyxyyyx)), (int64_t)(l_436 == (p_1090->g_438 , p_1090->g_439))))).lo))).even, ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(l_441.sfda4)), ((VECTOR(int64_t, 8))(1L, (~(safe_add_func_uint64_t_u_u((safe_sub_func_int8_t_s_s((l_446 != (void*)0), (p_1090->g_447 != p_1090->g_448))), p_73))), ((VECTOR(int64_t, 4))(0L)), 0x72D37621463A6208L, 0L)).lo))), ((VECTOR(int64_t, 4))(6L))))), ((VECTOR(int64_t, 4))(0x520296A351DA55F1L))))).y));
                for (l_404 = 0; (l_404 <= 49); l_404 = safe_add_func_uint32_t_u_u(l_404, 8))
                { /* block id: 118 */
                    uint64_t l_455 = 0x867F8A7A63DD0CF8L;
                    uint32_t *l_457 = (void*)0;
                    uint32_t *l_458 = &p_1090->g_438.f3;
                    uint32_t *l_459 = (void*)0;
                    uint32_t *l_460 = (void*)0;
                    union U4 *l_469 = &p_1090->g_88;
                    l_430[0][0][0] &= (safe_rshift_func_int16_t_s_s(((l_455 | (((l_456 == (p_1090->g_411.y++)) == ((*l_397) & 1UL)) < (safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_s((!(safe_unary_minus_func_uint32_t_u(GROUP_DIVERGE(0, 1)))), ((p_1090->g_168 , (-8L)) > (((l_468 == l_469) & (-6L)) >= (*p_75))))), (-1L))))) , 1L), l_455));
                }
            }
        }
        l_478 &= ((((p_75 != ((((*l_470) = l_105[6][2][1]) == (p_1090->g_471 = p_1090->g_471)) , &p_1090->g_19[2][1])) & ((((*l_472)--) != (((((*p_1090->g_449) <= p_1090->g_313.s0) <= (p_73 , ((safe_mul_func_int8_t_s_s(l_477[1], 255UL)) < 0xDB9889D1834C7ABAL))) < l_297.s5) <= p_1090->g_155.sf)) || (*p_1090->g_449))) <= p_1090->g_197.x) == p_1090->g_330.f0);
        l_430[1][0][0] = (**p_1090->g_398);
    }
    return l_87;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S6 c_1091;
    struct S6* p_1090 = &c_1091;
    struct S6 c_1092 = {
        0L, // p_1090->g_3
        1UL, // p_1090->g_5
        {{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}}, // p_1090->g_19
        0x004DL, // p_1090->g_26
        0x15B45BEAL, // p_1090->g_28
        0x48C5CECCL, // p_1090->g_35
        &p_1090->g_35, // p_1090->g_34
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x210AB9CAL), 0x210AB9CAL), // p_1090->g_66
        0UL, // p_1090->g_67
        (void*)0, // p_1090->g_77
        {2L}, // p_1090->g_88
        (VECTOR(int16_t, 8))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x1260L), 0x1260L), 0x1260L, (-4L), 0x1260L), // p_1090->g_98
        0x6F7154ECD3A2B226L, // p_1090->g_106
        0xB0L, // p_1090->g_112
        (VECTOR(uint32_t, 16))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 0xD1F54078L), 0xD1F54078L), 0xD1F54078L, 4294967289UL, 0xD1F54078L, (VECTOR(uint32_t, 2))(4294967289UL, 0xD1F54078L), (VECTOR(uint32_t, 2))(4294967289UL, 0xD1F54078L), 4294967289UL, 0xD1F54078L, 4294967289UL, 0xD1F54078L), // p_1090->g_121
        (VECTOR(uint32_t, 4))(0xE9C46A30L, (VECTOR(uint32_t, 2))(0xE9C46A30L, 0x7F311488L), 0x7F311488L), // p_1090->g_124
        (VECTOR(uint64_t, 16))(0xBDAB2CB753E4B6F5L, (VECTOR(uint64_t, 4))(0xBDAB2CB753E4B6F5L, (VECTOR(uint64_t, 2))(0xBDAB2CB753E4B6F5L, 3UL), 3UL), 3UL, 0xBDAB2CB753E4B6F5L, 3UL, (VECTOR(uint64_t, 2))(0xBDAB2CB753E4B6F5L, 3UL), (VECTOR(uint64_t, 2))(0xBDAB2CB753E4B6F5L, 3UL), 0xBDAB2CB753E4B6F5L, 3UL, 0xBDAB2CB753E4B6F5L, 3UL), // p_1090->g_155
        (VECTOR(uint64_t, 16))(0xD5CAA8788541AD1FL, (VECTOR(uint64_t, 4))(0xD5CAA8788541AD1FL, (VECTOR(uint64_t, 2))(0xD5CAA8788541AD1FL, 0x61AB1BAC27B40A88L), 0x61AB1BAC27B40A88L), 0x61AB1BAC27B40A88L, 0xD5CAA8788541AD1FL, 0x61AB1BAC27B40A88L, (VECTOR(uint64_t, 2))(0xD5CAA8788541AD1FL, 0x61AB1BAC27B40A88L), (VECTOR(uint64_t, 2))(0xD5CAA8788541AD1FL, 0x61AB1BAC27B40A88L), 0xD5CAA8788541AD1FL, 0x61AB1BAC27B40A88L, 0xD5CAA8788541AD1FL, 0x61AB1BAC27B40A88L), // p_1090->g_162
        {0}, // p_1090->g_168
        0UL, // p_1090->g_170
        {0xF5B41CB9L}, // p_1090->g_177
        {0x3894EB69L}, // p_1090->g_180
        (VECTOR(int8_t, 4))(0x6AL, (VECTOR(int8_t, 2))(0x6AL, 0x05L), 0x05L), // p_1090->g_197
        (VECTOR(int16_t, 16))(2L, (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 0x20CEL), 0x20CEL), 0x20CEL, 2L, 0x20CEL, (VECTOR(int16_t, 2))(2L, 0x20CEL), (VECTOR(int16_t, 2))(2L, 0x20CEL), 2L, 0x20CEL, 2L, 0x20CEL), // p_1090->g_206
        {0}, // p_1090->g_237
        &p_1090->g_237, // p_1090->g_239
        (-1L), // p_1090->g_259
        (VECTOR(int8_t, 4))(0x67L, (VECTOR(int8_t, 2))(0x67L, 0x36L), 0x36L), // p_1090->g_278
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x73L), 0x73L), // p_1090->g_294
        (VECTOR(uint8_t, 2))(0x6DL, 0x23L), // p_1090->g_302
        (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0x06L), 0x06L), // p_1090->g_306
        (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 253UL), 253UL), // p_1090->g_310
        (VECTOR(uint8_t, 8))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 1UL), 1UL), 1UL, 253UL, 1UL), // p_1090->g_313
        (VECTOR(uint8_t, 16))(0xCFL, (VECTOR(uint8_t, 4))(0xCFL, (VECTOR(uint8_t, 2))(0xCFL, 0xE7L), 0xE7L), 0xE7L, 0xCFL, 0xE7L, (VECTOR(uint8_t, 2))(0xCFL, 0xE7L), (VECTOR(uint8_t, 2))(0xCFL, 0xE7L), 0xCFL, 0xE7L, 0xCFL, 0xE7L), // p_1090->g_314
        {0x1EL}, // p_1090->g_330
        &p_1090->g_330, // p_1090->g_329
        (void*)0, // p_1090->g_331
        {0}, // p_1090->g_339
        (VECTOR(uint32_t, 4))(0xBD0EFD84L, (VECTOR(uint32_t, 2))(0xBD0EFD84L, 4294967295UL), 4294967295UL), // p_1090->g_360
        (VECTOR(int16_t, 2))(0x3D82L, 0L), // p_1090->g_367
        {0x03L,0x03L,0x03L,0x03L,0x03L,0x03L,0x03L,0x03L}, // p_1090->g_386
        {&p_1090->g_3,&p_1090->g_28,&p_1090->g_3,&p_1090->g_3,&p_1090->g_28,&p_1090->g_3,&p_1090->g_3}, // p_1090->g_399
        &p_1090->g_399[0], // p_1090->g_398
        (VECTOR(int32_t, 2))(0L, 0x1CAD8E44L), // p_1090->g_407
        (VECTOR(int32_t, 2))(0x02CCF61EL, 0x3BAE1B13L), // p_1090->g_408
        (VECTOR(uint32_t, 2))(1UL, 0xBC14AD73L), // p_1090->g_411
        (VECTOR(uint32_t, 8))(0xD2FAF113L, (VECTOR(uint32_t, 4))(0xD2FAF113L, (VECTOR(uint32_t, 2))(0xD2FAF113L, 0x4E3F7094L), 0x4E3F7094L), 0x4E3F7094L, 0xD2FAF113L, 0x4E3F7094L), // p_1090->g_417
        {0}, // p_1090->g_438
        &p_1090->g_239, // p_1090->g_440
        &p_1090->g_440, // p_1090->g_439
        (void*)0, // p_1090->g_447
        1UL, // p_1090->g_450
        &p_1090->g_450, // p_1090->g_449
        &p_1090->g_449, // p_1090->g_448
        (void*)0, // p_1090->g_471
        &p_1090->g_77, // p_1090->g_479
        (VECTOR(uint8_t, 8))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x29L), 0x29L), 0x29L, 4UL, 0x29L), // p_1090->g_488
        (VECTOR(int64_t, 2))((-4L), 0L), // p_1090->g_497
        (void*)0, // p_1090->g_522
        (void*)0, // p_1090->g_524
        &p_1090->g_524, // p_1090->g_523
        (VECTOR(uint32_t, 16))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 5UL), 5UL), 5UL, 4294967292UL, 5UL, (VECTOR(uint32_t, 2))(4294967292UL, 5UL), (VECTOR(uint32_t, 2))(4294967292UL, 5UL), 4294967292UL, 5UL, 4294967292UL, 5UL), // p_1090->g_543
        (void*)0, // p_1090->g_551
        (void*)0, // p_1090->g_552
        {{0x182F7136L}}, // p_1090->g_558
        {0x32L}, // p_1090->g_562
        &p_1090->g_35, // p_1090->g_569
        {1UL}, // p_1090->g_574
        {0x1EL}, // p_1090->g_594
        {0x5EL}, // p_1090->g_595
        {0x71L}, // p_1090->g_596
        {0x69L}, // p_1090->g_597
        {-1L}, // p_1090->g_598
        {0x16L}, // p_1090->g_599
        {0x6DL}, // p_1090->g_600
        {0x0FL}, // p_1090->g_601
        {0x5CL}, // p_1090->g_602
        {-2L}, // p_1090->g_603
        {-6L}, // p_1090->g_604
        {0x62L}, // p_1090->g_605
        {9L}, // p_1090->g_606
        {4L}, // p_1090->g_607
        {-1L}, // p_1090->g_608
        {{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}},{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}},{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}},{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}},{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}},{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}},{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}},{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}},{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}},{{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}},{{-1L},{0x4CL},{0L}}}}, // p_1090->g_609
        {0x06L}, // p_1090->g_610
        {0x24L}, // p_1090->g_611
        {0x6FL}, // p_1090->g_612
        {0x06L}, // p_1090->g_613
        {1L}, // p_1090->g_614
        {0L}, // p_1090->g_615
        {0x48L}, // p_1090->g_616
        {{-9L},{-6L},{-9L},{-9L},{-6L},{-9L}}, // p_1090->g_617
        {1L}, // p_1090->g_618
        {-1L}, // p_1090->g_619
        {0x31L}, // p_1090->g_620
        {0x15L}, // p_1090->g_621
        {-1L}, // p_1090->g_622
        {0x6DL}, // p_1090->g_623
        {{{0x0AL},{0x0AL}},{{0x0AL},{0x0AL}},{{0x0AL},{0x0AL}},{{0x0AL},{0x0AL}},{{0x0AL},{0x0AL}},{{0x0AL},{0x0AL}},{{0x0AL},{0x0AL}}}, // p_1090->g_624
        {0x1CL}, // p_1090->g_625
        {3L}, // p_1090->g_626
        {-5L}, // p_1090->g_627
        {0x00L}, // p_1090->g_628
        {0x73L}, // p_1090->g_629
        {3L}, // p_1090->g_630
        {3L}, // p_1090->g_631
        {0x61L}, // p_1090->g_632
        {{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L}}, // p_1090->g_633
        {-1L}, // p_1090->g_634
        {0x11L}, // p_1090->g_635
        {0L}, // p_1090->g_636
        {{{{1L},{0x08L}},{{1L},{0x08L}},{{1L},{0x08L}}},{{{1L},{0x08L}},{{1L},{0x08L}},{{1L},{0x08L}}},{{{1L},{0x08L}},{{1L},{0x08L}},{{1L},{0x08L}}},{{{1L},{0x08L}},{{1L},{0x08L}},{{1L},{0x08L}}},{{{1L},{0x08L}},{{1L},{0x08L}},{{1L},{0x08L}}},{{{1L},{0x08L}},{{1L},{0x08L}},{{1L},{0x08L}}}}, // p_1090->g_637
        &p_1090->g_35, // p_1090->g_644
        (void*)0, // p_1090->g_679
        &p_1090->g_438.f2, // p_1090->g_682
        (VECTOR(int64_t, 2))(0x44D8A2DF3D10E326L, 0x52C31764B132D293L), // p_1090->g_687
        (VECTOR(int32_t, 16))(0x20021BD5L, (VECTOR(int32_t, 4))(0x20021BD5L, (VECTOR(int32_t, 2))(0x20021BD5L, 0x477F7A81L), 0x477F7A81L), 0x477F7A81L, 0x20021BD5L, 0x477F7A81L, (VECTOR(int32_t, 2))(0x20021BD5L, 0x477F7A81L), (VECTOR(int32_t, 2))(0x20021BD5L, 0x477F7A81L), 0x20021BD5L, 0x477F7A81L, 0x20021BD5L, 0x477F7A81L), // p_1090->g_699
        (VECTOR(int8_t, 4))(0x0CL, (VECTOR(int8_t, 2))(0x0CL, (-1L)), (-1L)), // p_1090->g_712
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xEEL), 0xEEL), 0xEEL, 255UL, 0xEEL, (VECTOR(uint8_t, 2))(255UL, 0xEEL), (VECTOR(uint8_t, 2))(255UL, 0xEEL), 255UL, 0xEEL, 255UL, 0xEEL), // p_1090->g_743
        {0}, // p_1090->g_764
        (void*)0, // p_1090->g_796
        &p_1090->g_796, // p_1090->g_795
        {{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}}}, // p_1090->g_815
        (VECTOR(int64_t, 2))(0L, 0x7EF6AFFCED971432L), // p_1090->g_818
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L), // p_1090->g_819
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-9L)), (-9L)), // p_1090->g_820
        &p_1090->g_399[3], // p_1090->g_824
        (VECTOR(int64_t, 8))(0x71317546F7287667L, (VECTOR(int64_t, 4))(0x71317546F7287667L, (VECTOR(int64_t, 2))(0x71317546F7287667L, 0x39FD5EFAC1DF3A7FL), 0x39FD5EFAC1DF3A7FL), 0x39FD5EFAC1DF3A7FL, 0x71317546F7287667L, 0x39FD5EFAC1DF3A7FL), // p_1090->g_833
        (VECTOR(int16_t, 2))(0x24B1L, (-1L)), // p_1090->g_834
        &p_1090->g_168, // p_1090->g_887
        {0x05L}, // p_1090->g_889
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int32_t, 2))(0L, (-1L)), (VECTOR(int32_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L)), // p_1090->g_893
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x73A4L), 0x73A4L), 0x73A4L, 65535UL, 0x73A4L), // p_1090->g_912
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xF2CBL), 0xF2CBL), // p_1090->g_968
        (VECTOR(uint16_t, 8))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0x29DBL), 0x29DBL), 0x29DBL, 65531UL, 0x29DBL), // p_1090->g_978
        1L, // p_1090->g_987
        {0L}, // p_1090->g_988
        (VECTOR(int32_t, 2))((-1L), 1L), // p_1090->g_992
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-9L)), (-9L)), // p_1090->g_993
        {0x65L}, // p_1090->g_1005
        0x25DE57A74E2B00C2L, // p_1090->g_1018
        &p_1090->g_1018, // p_1090->g_1017
        &p_1090->g_1017, // p_1090->g_1016
        &p_1090->g_1016, // p_1090->g_1019
        (void*)0, // p_1090->g_1039
        &p_1090->g_1039, // p_1090->g_1038
        (void*)0, // p_1090->g_1047
        &p_1090->g_1047, // p_1090->g_1046
        {0xE64A5E4CL}, // p_1090->g_1049
        (VECTOR(uint16_t, 2))(1UL, 0xAEF8L), // p_1090->g_1058
        1UL, // p_1090->g_1075
        0UL, // p_1090->g_1087
        sequence_input[get_global_id(0)], // p_1090->global_0_offset
        sequence_input[get_global_id(1)], // p_1090->global_1_offset
        sequence_input[get_global_id(2)], // p_1090->global_2_offset
        sequence_input[get_local_id(0)], // p_1090->local_0_offset
        sequence_input[get_local_id(1)], // p_1090->local_1_offset
        sequence_input[get_local_id(2)], // p_1090->local_2_offset
        sequence_input[get_group_id(0)], // p_1090->group_0_offset
        sequence_input[get_group_id(1)], // p_1090->group_1_offset
        sequence_input[get_group_id(2)], // p_1090->group_2_offset
    };
    c_1091 = c_1092;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1090);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1090->g_3, "p_1090->g_3", print_hash_value);
    transparent_crc(p_1090->g_5, "p_1090->g_5", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1090->g_19[i][j], "p_1090->g_19[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1090->g_26, "p_1090->g_26", print_hash_value);
    transparent_crc(p_1090->g_28, "p_1090->g_28", print_hash_value);
    transparent_crc(p_1090->g_35, "p_1090->g_35", print_hash_value);
    transparent_crc(p_1090->g_66.x, "p_1090->g_66.x", print_hash_value);
    transparent_crc(p_1090->g_66.y, "p_1090->g_66.y", print_hash_value);
    transparent_crc(p_1090->g_66.z, "p_1090->g_66.z", print_hash_value);
    transparent_crc(p_1090->g_66.w, "p_1090->g_66.w", print_hash_value);
    transparent_crc(p_1090->g_67, "p_1090->g_67", print_hash_value);
    transparent_crc(p_1090->g_88.f0, "p_1090->g_88.f0", print_hash_value);
    transparent_crc(p_1090->g_98.s0, "p_1090->g_98.s0", print_hash_value);
    transparent_crc(p_1090->g_98.s1, "p_1090->g_98.s1", print_hash_value);
    transparent_crc(p_1090->g_98.s2, "p_1090->g_98.s2", print_hash_value);
    transparent_crc(p_1090->g_98.s3, "p_1090->g_98.s3", print_hash_value);
    transparent_crc(p_1090->g_98.s4, "p_1090->g_98.s4", print_hash_value);
    transparent_crc(p_1090->g_98.s5, "p_1090->g_98.s5", print_hash_value);
    transparent_crc(p_1090->g_98.s6, "p_1090->g_98.s6", print_hash_value);
    transparent_crc(p_1090->g_98.s7, "p_1090->g_98.s7", print_hash_value);
    transparent_crc(p_1090->g_106, "p_1090->g_106", print_hash_value);
    transparent_crc(p_1090->g_112, "p_1090->g_112", print_hash_value);
    transparent_crc(p_1090->g_121.s0, "p_1090->g_121.s0", print_hash_value);
    transparent_crc(p_1090->g_121.s1, "p_1090->g_121.s1", print_hash_value);
    transparent_crc(p_1090->g_121.s2, "p_1090->g_121.s2", print_hash_value);
    transparent_crc(p_1090->g_121.s3, "p_1090->g_121.s3", print_hash_value);
    transparent_crc(p_1090->g_121.s4, "p_1090->g_121.s4", print_hash_value);
    transparent_crc(p_1090->g_121.s5, "p_1090->g_121.s5", print_hash_value);
    transparent_crc(p_1090->g_121.s6, "p_1090->g_121.s6", print_hash_value);
    transparent_crc(p_1090->g_121.s7, "p_1090->g_121.s7", print_hash_value);
    transparent_crc(p_1090->g_121.s8, "p_1090->g_121.s8", print_hash_value);
    transparent_crc(p_1090->g_121.s9, "p_1090->g_121.s9", print_hash_value);
    transparent_crc(p_1090->g_121.sa, "p_1090->g_121.sa", print_hash_value);
    transparent_crc(p_1090->g_121.sb, "p_1090->g_121.sb", print_hash_value);
    transparent_crc(p_1090->g_121.sc, "p_1090->g_121.sc", print_hash_value);
    transparent_crc(p_1090->g_121.sd, "p_1090->g_121.sd", print_hash_value);
    transparent_crc(p_1090->g_121.se, "p_1090->g_121.se", print_hash_value);
    transparent_crc(p_1090->g_121.sf, "p_1090->g_121.sf", print_hash_value);
    transparent_crc(p_1090->g_124.x, "p_1090->g_124.x", print_hash_value);
    transparent_crc(p_1090->g_124.y, "p_1090->g_124.y", print_hash_value);
    transparent_crc(p_1090->g_124.z, "p_1090->g_124.z", print_hash_value);
    transparent_crc(p_1090->g_124.w, "p_1090->g_124.w", print_hash_value);
    transparent_crc(p_1090->g_155.s0, "p_1090->g_155.s0", print_hash_value);
    transparent_crc(p_1090->g_155.s1, "p_1090->g_155.s1", print_hash_value);
    transparent_crc(p_1090->g_155.s2, "p_1090->g_155.s2", print_hash_value);
    transparent_crc(p_1090->g_155.s3, "p_1090->g_155.s3", print_hash_value);
    transparent_crc(p_1090->g_155.s4, "p_1090->g_155.s4", print_hash_value);
    transparent_crc(p_1090->g_155.s5, "p_1090->g_155.s5", print_hash_value);
    transparent_crc(p_1090->g_155.s6, "p_1090->g_155.s6", print_hash_value);
    transparent_crc(p_1090->g_155.s7, "p_1090->g_155.s7", print_hash_value);
    transparent_crc(p_1090->g_155.s8, "p_1090->g_155.s8", print_hash_value);
    transparent_crc(p_1090->g_155.s9, "p_1090->g_155.s9", print_hash_value);
    transparent_crc(p_1090->g_155.sa, "p_1090->g_155.sa", print_hash_value);
    transparent_crc(p_1090->g_155.sb, "p_1090->g_155.sb", print_hash_value);
    transparent_crc(p_1090->g_155.sc, "p_1090->g_155.sc", print_hash_value);
    transparent_crc(p_1090->g_155.sd, "p_1090->g_155.sd", print_hash_value);
    transparent_crc(p_1090->g_155.se, "p_1090->g_155.se", print_hash_value);
    transparent_crc(p_1090->g_155.sf, "p_1090->g_155.sf", print_hash_value);
    transparent_crc(p_1090->g_162.s0, "p_1090->g_162.s0", print_hash_value);
    transparent_crc(p_1090->g_162.s1, "p_1090->g_162.s1", print_hash_value);
    transparent_crc(p_1090->g_162.s2, "p_1090->g_162.s2", print_hash_value);
    transparent_crc(p_1090->g_162.s3, "p_1090->g_162.s3", print_hash_value);
    transparent_crc(p_1090->g_162.s4, "p_1090->g_162.s4", print_hash_value);
    transparent_crc(p_1090->g_162.s5, "p_1090->g_162.s5", print_hash_value);
    transparent_crc(p_1090->g_162.s6, "p_1090->g_162.s6", print_hash_value);
    transparent_crc(p_1090->g_162.s7, "p_1090->g_162.s7", print_hash_value);
    transparent_crc(p_1090->g_162.s8, "p_1090->g_162.s8", print_hash_value);
    transparent_crc(p_1090->g_162.s9, "p_1090->g_162.s9", print_hash_value);
    transparent_crc(p_1090->g_162.sa, "p_1090->g_162.sa", print_hash_value);
    transparent_crc(p_1090->g_162.sb, "p_1090->g_162.sb", print_hash_value);
    transparent_crc(p_1090->g_162.sc, "p_1090->g_162.sc", print_hash_value);
    transparent_crc(p_1090->g_162.sd, "p_1090->g_162.sd", print_hash_value);
    transparent_crc(p_1090->g_162.se, "p_1090->g_162.se", print_hash_value);
    transparent_crc(p_1090->g_162.sf, "p_1090->g_162.sf", print_hash_value);
    transparent_crc(p_1090->g_170, "p_1090->g_170", print_hash_value);
    transparent_crc(p_1090->g_177.f0, "p_1090->g_177.f0", print_hash_value);
    transparent_crc(p_1090->g_180.f0, "p_1090->g_180.f0", print_hash_value);
    transparent_crc(p_1090->g_197.x, "p_1090->g_197.x", print_hash_value);
    transparent_crc(p_1090->g_197.y, "p_1090->g_197.y", print_hash_value);
    transparent_crc(p_1090->g_197.z, "p_1090->g_197.z", print_hash_value);
    transparent_crc(p_1090->g_197.w, "p_1090->g_197.w", print_hash_value);
    transparent_crc(p_1090->g_206.s0, "p_1090->g_206.s0", print_hash_value);
    transparent_crc(p_1090->g_206.s1, "p_1090->g_206.s1", print_hash_value);
    transparent_crc(p_1090->g_206.s2, "p_1090->g_206.s2", print_hash_value);
    transparent_crc(p_1090->g_206.s3, "p_1090->g_206.s3", print_hash_value);
    transparent_crc(p_1090->g_206.s4, "p_1090->g_206.s4", print_hash_value);
    transparent_crc(p_1090->g_206.s5, "p_1090->g_206.s5", print_hash_value);
    transparent_crc(p_1090->g_206.s6, "p_1090->g_206.s6", print_hash_value);
    transparent_crc(p_1090->g_206.s7, "p_1090->g_206.s7", print_hash_value);
    transparent_crc(p_1090->g_206.s8, "p_1090->g_206.s8", print_hash_value);
    transparent_crc(p_1090->g_206.s9, "p_1090->g_206.s9", print_hash_value);
    transparent_crc(p_1090->g_206.sa, "p_1090->g_206.sa", print_hash_value);
    transparent_crc(p_1090->g_206.sb, "p_1090->g_206.sb", print_hash_value);
    transparent_crc(p_1090->g_206.sc, "p_1090->g_206.sc", print_hash_value);
    transparent_crc(p_1090->g_206.sd, "p_1090->g_206.sd", print_hash_value);
    transparent_crc(p_1090->g_206.se, "p_1090->g_206.se", print_hash_value);
    transparent_crc(p_1090->g_206.sf, "p_1090->g_206.sf", print_hash_value);
    transparent_crc(p_1090->g_259, "p_1090->g_259", print_hash_value);
    transparent_crc(p_1090->g_278.x, "p_1090->g_278.x", print_hash_value);
    transparent_crc(p_1090->g_278.y, "p_1090->g_278.y", print_hash_value);
    transparent_crc(p_1090->g_278.z, "p_1090->g_278.z", print_hash_value);
    transparent_crc(p_1090->g_278.w, "p_1090->g_278.w", print_hash_value);
    transparent_crc(p_1090->g_294.x, "p_1090->g_294.x", print_hash_value);
    transparent_crc(p_1090->g_294.y, "p_1090->g_294.y", print_hash_value);
    transparent_crc(p_1090->g_294.z, "p_1090->g_294.z", print_hash_value);
    transparent_crc(p_1090->g_294.w, "p_1090->g_294.w", print_hash_value);
    transparent_crc(p_1090->g_302.x, "p_1090->g_302.x", print_hash_value);
    transparent_crc(p_1090->g_302.y, "p_1090->g_302.y", print_hash_value);
    transparent_crc(p_1090->g_306.x, "p_1090->g_306.x", print_hash_value);
    transparent_crc(p_1090->g_306.y, "p_1090->g_306.y", print_hash_value);
    transparent_crc(p_1090->g_306.z, "p_1090->g_306.z", print_hash_value);
    transparent_crc(p_1090->g_306.w, "p_1090->g_306.w", print_hash_value);
    transparent_crc(p_1090->g_310.x, "p_1090->g_310.x", print_hash_value);
    transparent_crc(p_1090->g_310.y, "p_1090->g_310.y", print_hash_value);
    transparent_crc(p_1090->g_310.z, "p_1090->g_310.z", print_hash_value);
    transparent_crc(p_1090->g_310.w, "p_1090->g_310.w", print_hash_value);
    transparent_crc(p_1090->g_313.s0, "p_1090->g_313.s0", print_hash_value);
    transparent_crc(p_1090->g_313.s1, "p_1090->g_313.s1", print_hash_value);
    transparent_crc(p_1090->g_313.s2, "p_1090->g_313.s2", print_hash_value);
    transparent_crc(p_1090->g_313.s3, "p_1090->g_313.s3", print_hash_value);
    transparent_crc(p_1090->g_313.s4, "p_1090->g_313.s4", print_hash_value);
    transparent_crc(p_1090->g_313.s5, "p_1090->g_313.s5", print_hash_value);
    transparent_crc(p_1090->g_313.s6, "p_1090->g_313.s6", print_hash_value);
    transparent_crc(p_1090->g_313.s7, "p_1090->g_313.s7", print_hash_value);
    transparent_crc(p_1090->g_314.s0, "p_1090->g_314.s0", print_hash_value);
    transparent_crc(p_1090->g_314.s1, "p_1090->g_314.s1", print_hash_value);
    transparent_crc(p_1090->g_314.s2, "p_1090->g_314.s2", print_hash_value);
    transparent_crc(p_1090->g_314.s3, "p_1090->g_314.s3", print_hash_value);
    transparent_crc(p_1090->g_314.s4, "p_1090->g_314.s4", print_hash_value);
    transparent_crc(p_1090->g_314.s5, "p_1090->g_314.s5", print_hash_value);
    transparent_crc(p_1090->g_314.s6, "p_1090->g_314.s6", print_hash_value);
    transparent_crc(p_1090->g_314.s7, "p_1090->g_314.s7", print_hash_value);
    transparent_crc(p_1090->g_314.s8, "p_1090->g_314.s8", print_hash_value);
    transparent_crc(p_1090->g_314.s9, "p_1090->g_314.s9", print_hash_value);
    transparent_crc(p_1090->g_314.sa, "p_1090->g_314.sa", print_hash_value);
    transparent_crc(p_1090->g_314.sb, "p_1090->g_314.sb", print_hash_value);
    transparent_crc(p_1090->g_314.sc, "p_1090->g_314.sc", print_hash_value);
    transparent_crc(p_1090->g_314.sd, "p_1090->g_314.sd", print_hash_value);
    transparent_crc(p_1090->g_314.se, "p_1090->g_314.se", print_hash_value);
    transparent_crc(p_1090->g_314.sf, "p_1090->g_314.sf", print_hash_value);
    transparent_crc(p_1090->g_330.f0, "p_1090->g_330.f0", print_hash_value);
    transparent_crc(p_1090->g_360.x, "p_1090->g_360.x", print_hash_value);
    transparent_crc(p_1090->g_360.y, "p_1090->g_360.y", print_hash_value);
    transparent_crc(p_1090->g_360.z, "p_1090->g_360.z", print_hash_value);
    transparent_crc(p_1090->g_360.w, "p_1090->g_360.w", print_hash_value);
    transparent_crc(p_1090->g_367.x, "p_1090->g_367.x", print_hash_value);
    transparent_crc(p_1090->g_367.y, "p_1090->g_367.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1090->g_386[i], "p_1090->g_386[i]", print_hash_value);

    }
    transparent_crc(p_1090->g_407.x, "p_1090->g_407.x", print_hash_value);
    transparent_crc(p_1090->g_407.y, "p_1090->g_407.y", print_hash_value);
    transparent_crc(p_1090->g_408.x, "p_1090->g_408.x", print_hash_value);
    transparent_crc(p_1090->g_408.y, "p_1090->g_408.y", print_hash_value);
    transparent_crc(p_1090->g_411.x, "p_1090->g_411.x", print_hash_value);
    transparent_crc(p_1090->g_411.y, "p_1090->g_411.y", print_hash_value);
    transparent_crc(p_1090->g_417.s0, "p_1090->g_417.s0", print_hash_value);
    transparent_crc(p_1090->g_417.s1, "p_1090->g_417.s1", print_hash_value);
    transparent_crc(p_1090->g_417.s2, "p_1090->g_417.s2", print_hash_value);
    transparent_crc(p_1090->g_417.s3, "p_1090->g_417.s3", print_hash_value);
    transparent_crc(p_1090->g_417.s4, "p_1090->g_417.s4", print_hash_value);
    transparent_crc(p_1090->g_417.s5, "p_1090->g_417.s5", print_hash_value);
    transparent_crc(p_1090->g_417.s6, "p_1090->g_417.s6", print_hash_value);
    transparent_crc(p_1090->g_417.s7, "p_1090->g_417.s7", print_hash_value);
    transparent_crc(p_1090->g_450, "p_1090->g_450", print_hash_value);
    transparent_crc(p_1090->g_488.s0, "p_1090->g_488.s0", print_hash_value);
    transparent_crc(p_1090->g_488.s1, "p_1090->g_488.s1", print_hash_value);
    transparent_crc(p_1090->g_488.s2, "p_1090->g_488.s2", print_hash_value);
    transparent_crc(p_1090->g_488.s3, "p_1090->g_488.s3", print_hash_value);
    transparent_crc(p_1090->g_488.s4, "p_1090->g_488.s4", print_hash_value);
    transparent_crc(p_1090->g_488.s5, "p_1090->g_488.s5", print_hash_value);
    transparent_crc(p_1090->g_488.s6, "p_1090->g_488.s6", print_hash_value);
    transparent_crc(p_1090->g_488.s7, "p_1090->g_488.s7", print_hash_value);
    transparent_crc(p_1090->g_497.x, "p_1090->g_497.x", print_hash_value);
    transparent_crc(p_1090->g_497.y, "p_1090->g_497.y", print_hash_value);
    transparent_crc(p_1090->g_543.s0, "p_1090->g_543.s0", print_hash_value);
    transparent_crc(p_1090->g_543.s1, "p_1090->g_543.s1", print_hash_value);
    transparent_crc(p_1090->g_543.s2, "p_1090->g_543.s2", print_hash_value);
    transparent_crc(p_1090->g_543.s3, "p_1090->g_543.s3", print_hash_value);
    transparent_crc(p_1090->g_543.s4, "p_1090->g_543.s4", print_hash_value);
    transparent_crc(p_1090->g_543.s5, "p_1090->g_543.s5", print_hash_value);
    transparent_crc(p_1090->g_543.s6, "p_1090->g_543.s6", print_hash_value);
    transparent_crc(p_1090->g_543.s7, "p_1090->g_543.s7", print_hash_value);
    transparent_crc(p_1090->g_543.s8, "p_1090->g_543.s8", print_hash_value);
    transparent_crc(p_1090->g_543.s9, "p_1090->g_543.s9", print_hash_value);
    transparent_crc(p_1090->g_543.sa, "p_1090->g_543.sa", print_hash_value);
    transparent_crc(p_1090->g_543.sb, "p_1090->g_543.sb", print_hash_value);
    transparent_crc(p_1090->g_543.sc, "p_1090->g_543.sc", print_hash_value);
    transparent_crc(p_1090->g_543.sd, "p_1090->g_543.sd", print_hash_value);
    transparent_crc(p_1090->g_543.se, "p_1090->g_543.se", print_hash_value);
    transparent_crc(p_1090->g_543.sf, "p_1090->g_543.sf", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1090->g_558[i].f0, "p_1090->g_558[i].f0", print_hash_value);

    }
    transparent_crc(p_1090->g_562.f0, "p_1090->g_562.f0", print_hash_value);
    transparent_crc(p_1090->g_574.f0, "p_1090->g_574.f0", print_hash_value);
    transparent_crc(p_1090->g_594.f0, "p_1090->g_594.f0", print_hash_value);
    transparent_crc(p_1090->g_595.f0, "p_1090->g_595.f0", print_hash_value);
    transparent_crc(p_1090->g_596.f0, "p_1090->g_596.f0", print_hash_value);
    transparent_crc(p_1090->g_597.f0, "p_1090->g_597.f0", print_hash_value);
    transparent_crc(p_1090->g_598.f0, "p_1090->g_598.f0", print_hash_value);
    transparent_crc(p_1090->g_599.f0, "p_1090->g_599.f0", print_hash_value);
    transparent_crc(p_1090->g_600.f0, "p_1090->g_600.f0", print_hash_value);
    transparent_crc(p_1090->g_601.f0, "p_1090->g_601.f0", print_hash_value);
    transparent_crc(p_1090->g_602.f0, "p_1090->g_602.f0", print_hash_value);
    transparent_crc(p_1090->g_603.f0, "p_1090->g_603.f0", print_hash_value);
    transparent_crc(p_1090->g_604.f0, "p_1090->g_604.f0", print_hash_value);
    transparent_crc(p_1090->g_605.f0, "p_1090->g_605.f0", print_hash_value);
    transparent_crc(p_1090->g_606.f0, "p_1090->g_606.f0", print_hash_value);
    transparent_crc(p_1090->g_607.f0, "p_1090->g_607.f0", print_hash_value);
    transparent_crc(p_1090->g_608.f0, "p_1090->g_608.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1090->g_609[i][j][k].f0, "p_1090->g_609[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1090->g_610.f0, "p_1090->g_610.f0", print_hash_value);
    transparent_crc(p_1090->g_611.f0, "p_1090->g_611.f0", print_hash_value);
    transparent_crc(p_1090->g_612.f0, "p_1090->g_612.f0", print_hash_value);
    transparent_crc(p_1090->g_613.f0, "p_1090->g_613.f0", print_hash_value);
    transparent_crc(p_1090->g_614.f0, "p_1090->g_614.f0", print_hash_value);
    transparent_crc(p_1090->g_615.f0, "p_1090->g_615.f0", print_hash_value);
    transparent_crc(p_1090->g_616.f0, "p_1090->g_616.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1090->g_617[i].f0, "p_1090->g_617[i].f0", print_hash_value);

    }
    transparent_crc(p_1090->g_618.f0, "p_1090->g_618.f0", print_hash_value);
    transparent_crc(p_1090->g_619.f0, "p_1090->g_619.f0", print_hash_value);
    transparent_crc(p_1090->g_620.f0, "p_1090->g_620.f0", print_hash_value);
    transparent_crc(p_1090->g_621.f0, "p_1090->g_621.f0", print_hash_value);
    transparent_crc(p_1090->g_622.f0, "p_1090->g_622.f0", print_hash_value);
    transparent_crc(p_1090->g_623.f0, "p_1090->g_623.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1090->g_624[i][j].f0, "p_1090->g_624[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1090->g_625.f0, "p_1090->g_625.f0", print_hash_value);
    transparent_crc(p_1090->g_626.f0, "p_1090->g_626.f0", print_hash_value);
    transparent_crc(p_1090->g_627.f0, "p_1090->g_627.f0", print_hash_value);
    transparent_crc(p_1090->g_628.f0, "p_1090->g_628.f0", print_hash_value);
    transparent_crc(p_1090->g_629.f0, "p_1090->g_629.f0", print_hash_value);
    transparent_crc(p_1090->g_630.f0, "p_1090->g_630.f0", print_hash_value);
    transparent_crc(p_1090->g_631.f0, "p_1090->g_631.f0", print_hash_value);
    transparent_crc(p_1090->g_632.f0, "p_1090->g_632.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1090->g_633[i].f0, "p_1090->g_633[i].f0", print_hash_value);

    }
    transparent_crc(p_1090->g_634.f0, "p_1090->g_634.f0", print_hash_value);
    transparent_crc(p_1090->g_635.f0, "p_1090->g_635.f0", print_hash_value);
    transparent_crc(p_1090->g_636.f0, "p_1090->g_636.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1090->g_637[i][j][k].f0, "p_1090->g_637[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1090->g_687.x, "p_1090->g_687.x", print_hash_value);
    transparent_crc(p_1090->g_687.y, "p_1090->g_687.y", print_hash_value);
    transparent_crc(p_1090->g_699.s0, "p_1090->g_699.s0", print_hash_value);
    transparent_crc(p_1090->g_699.s1, "p_1090->g_699.s1", print_hash_value);
    transparent_crc(p_1090->g_699.s2, "p_1090->g_699.s2", print_hash_value);
    transparent_crc(p_1090->g_699.s3, "p_1090->g_699.s3", print_hash_value);
    transparent_crc(p_1090->g_699.s4, "p_1090->g_699.s4", print_hash_value);
    transparent_crc(p_1090->g_699.s5, "p_1090->g_699.s5", print_hash_value);
    transparent_crc(p_1090->g_699.s6, "p_1090->g_699.s6", print_hash_value);
    transparent_crc(p_1090->g_699.s7, "p_1090->g_699.s7", print_hash_value);
    transparent_crc(p_1090->g_699.s8, "p_1090->g_699.s8", print_hash_value);
    transparent_crc(p_1090->g_699.s9, "p_1090->g_699.s9", print_hash_value);
    transparent_crc(p_1090->g_699.sa, "p_1090->g_699.sa", print_hash_value);
    transparent_crc(p_1090->g_699.sb, "p_1090->g_699.sb", print_hash_value);
    transparent_crc(p_1090->g_699.sc, "p_1090->g_699.sc", print_hash_value);
    transparent_crc(p_1090->g_699.sd, "p_1090->g_699.sd", print_hash_value);
    transparent_crc(p_1090->g_699.se, "p_1090->g_699.se", print_hash_value);
    transparent_crc(p_1090->g_699.sf, "p_1090->g_699.sf", print_hash_value);
    transparent_crc(p_1090->g_712.x, "p_1090->g_712.x", print_hash_value);
    transparent_crc(p_1090->g_712.y, "p_1090->g_712.y", print_hash_value);
    transparent_crc(p_1090->g_712.z, "p_1090->g_712.z", print_hash_value);
    transparent_crc(p_1090->g_712.w, "p_1090->g_712.w", print_hash_value);
    transparent_crc(p_1090->g_743.s0, "p_1090->g_743.s0", print_hash_value);
    transparent_crc(p_1090->g_743.s1, "p_1090->g_743.s1", print_hash_value);
    transparent_crc(p_1090->g_743.s2, "p_1090->g_743.s2", print_hash_value);
    transparent_crc(p_1090->g_743.s3, "p_1090->g_743.s3", print_hash_value);
    transparent_crc(p_1090->g_743.s4, "p_1090->g_743.s4", print_hash_value);
    transparent_crc(p_1090->g_743.s5, "p_1090->g_743.s5", print_hash_value);
    transparent_crc(p_1090->g_743.s6, "p_1090->g_743.s6", print_hash_value);
    transparent_crc(p_1090->g_743.s7, "p_1090->g_743.s7", print_hash_value);
    transparent_crc(p_1090->g_743.s8, "p_1090->g_743.s8", print_hash_value);
    transparent_crc(p_1090->g_743.s9, "p_1090->g_743.s9", print_hash_value);
    transparent_crc(p_1090->g_743.sa, "p_1090->g_743.sa", print_hash_value);
    transparent_crc(p_1090->g_743.sb, "p_1090->g_743.sb", print_hash_value);
    transparent_crc(p_1090->g_743.sc, "p_1090->g_743.sc", print_hash_value);
    transparent_crc(p_1090->g_743.sd, "p_1090->g_743.sd", print_hash_value);
    transparent_crc(p_1090->g_743.se, "p_1090->g_743.se", print_hash_value);
    transparent_crc(p_1090->g_743.sf, "p_1090->g_743.sf", print_hash_value);
    transparent_crc(p_1090->g_818.x, "p_1090->g_818.x", print_hash_value);
    transparent_crc(p_1090->g_818.y, "p_1090->g_818.y", print_hash_value);
    transparent_crc(p_1090->g_819.x, "p_1090->g_819.x", print_hash_value);
    transparent_crc(p_1090->g_819.y, "p_1090->g_819.y", print_hash_value);
    transparent_crc(p_1090->g_819.z, "p_1090->g_819.z", print_hash_value);
    transparent_crc(p_1090->g_819.w, "p_1090->g_819.w", print_hash_value);
    transparent_crc(p_1090->g_820.x, "p_1090->g_820.x", print_hash_value);
    transparent_crc(p_1090->g_820.y, "p_1090->g_820.y", print_hash_value);
    transparent_crc(p_1090->g_820.z, "p_1090->g_820.z", print_hash_value);
    transparent_crc(p_1090->g_820.w, "p_1090->g_820.w", print_hash_value);
    transparent_crc(p_1090->g_833.s0, "p_1090->g_833.s0", print_hash_value);
    transparent_crc(p_1090->g_833.s1, "p_1090->g_833.s1", print_hash_value);
    transparent_crc(p_1090->g_833.s2, "p_1090->g_833.s2", print_hash_value);
    transparent_crc(p_1090->g_833.s3, "p_1090->g_833.s3", print_hash_value);
    transparent_crc(p_1090->g_833.s4, "p_1090->g_833.s4", print_hash_value);
    transparent_crc(p_1090->g_833.s5, "p_1090->g_833.s5", print_hash_value);
    transparent_crc(p_1090->g_833.s6, "p_1090->g_833.s6", print_hash_value);
    transparent_crc(p_1090->g_833.s7, "p_1090->g_833.s7", print_hash_value);
    transparent_crc(p_1090->g_834.x, "p_1090->g_834.x", print_hash_value);
    transparent_crc(p_1090->g_834.y, "p_1090->g_834.y", print_hash_value);
    transparent_crc(p_1090->g_889.f0, "p_1090->g_889.f0", print_hash_value);
    transparent_crc(p_1090->g_893.s0, "p_1090->g_893.s0", print_hash_value);
    transparent_crc(p_1090->g_893.s1, "p_1090->g_893.s1", print_hash_value);
    transparent_crc(p_1090->g_893.s2, "p_1090->g_893.s2", print_hash_value);
    transparent_crc(p_1090->g_893.s3, "p_1090->g_893.s3", print_hash_value);
    transparent_crc(p_1090->g_893.s4, "p_1090->g_893.s4", print_hash_value);
    transparent_crc(p_1090->g_893.s5, "p_1090->g_893.s5", print_hash_value);
    transparent_crc(p_1090->g_893.s6, "p_1090->g_893.s6", print_hash_value);
    transparent_crc(p_1090->g_893.s7, "p_1090->g_893.s7", print_hash_value);
    transparent_crc(p_1090->g_893.s8, "p_1090->g_893.s8", print_hash_value);
    transparent_crc(p_1090->g_893.s9, "p_1090->g_893.s9", print_hash_value);
    transparent_crc(p_1090->g_893.sa, "p_1090->g_893.sa", print_hash_value);
    transparent_crc(p_1090->g_893.sb, "p_1090->g_893.sb", print_hash_value);
    transparent_crc(p_1090->g_893.sc, "p_1090->g_893.sc", print_hash_value);
    transparent_crc(p_1090->g_893.sd, "p_1090->g_893.sd", print_hash_value);
    transparent_crc(p_1090->g_893.se, "p_1090->g_893.se", print_hash_value);
    transparent_crc(p_1090->g_893.sf, "p_1090->g_893.sf", print_hash_value);
    transparent_crc(p_1090->g_912.s0, "p_1090->g_912.s0", print_hash_value);
    transparent_crc(p_1090->g_912.s1, "p_1090->g_912.s1", print_hash_value);
    transparent_crc(p_1090->g_912.s2, "p_1090->g_912.s2", print_hash_value);
    transparent_crc(p_1090->g_912.s3, "p_1090->g_912.s3", print_hash_value);
    transparent_crc(p_1090->g_912.s4, "p_1090->g_912.s4", print_hash_value);
    transparent_crc(p_1090->g_912.s5, "p_1090->g_912.s5", print_hash_value);
    transparent_crc(p_1090->g_912.s6, "p_1090->g_912.s6", print_hash_value);
    transparent_crc(p_1090->g_912.s7, "p_1090->g_912.s7", print_hash_value);
    transparent_crc(p_1090->g_968.x, "p_1090->g_968.x", print_hash_value);
    transparent_crc(p_1090->g_968.y, "p_1090->g_968.y", print_hash_value);
    transparent_crc(p_1090->g_968.z, "p_1090->g_968.z", print_hash_value);
    transparent_crc(p_1090->g_968.w, "p_1090->g_968.w", print_hash_value);
    transparent_crc(p_1090->g_978.s0, "p_1090->g_978.s0", print_hash_value);
    transparent_crc(p_1090->g_978.s1, "p_1090->g_978.s1", print_hash_value);
    transparent_crc(p_1090->g_978.s2, "p_1090->g_978.s2", print_hash_value);
    transparent_crc(p_1090->g_978.s3, "p_1090->g_978.s3", print_hash_value);
    transparent_crc(p_1090->g_978.s4, "p_1090->g_978.s4", print_hash_value);
    transparent_crc(p_1090->g_978.s5, "p_1090->g_978.s5", print_hash_value);
    transparent_crc(p_1090->g_978.s6, "p_1090->g_978.s6", print_hash_value);
    transparent_crc(p_1090->g_978.s7, "p_1090->g_978.s7", print_hash_value);
    transparent_crc(p_1090->g_987, "p_1090->g_987", print_hash_value);
    transparent_crc(p_1090->g_988.f0, "p_1090->g_988.f0", print_hash_value);
    transparent_crc(p_1090->g_992.x, "p_1090->g_992.x", print_hash_value);
    transparent_crc(p_1090->g_992.y, "p_1090->g_992.y", print_hash_value);
    transparent_crc(p_1090->g_993.x, "p_1090->g_993.x", print_hash_value);
    transparent_crc(p_1090->g_993.y, "p_1090->g_993.y", print_hash_value);
    transparent_crc(p_1090->g_993.z, "p_1090->g_993.z", print_hash_value);
    transparent_crc(p_1090->g_993.w, "p_1090->g_993.w", print_hash_value);
    transparent_crc(p_1090->g_1005.f0, "p_1090->g_1005.f0", print_hash_value);
    transparent_crc(p_1090->g_1018, "p_1090->g_1018", print_hash_value);
    transparent_crc(p_1090->g_1049.f0, "p_1090->g_1049.f0", print_hash_value);
    transparent_crc(p_1090->g_1058.x, "p_1090->g_1058.x", print_hash_value);
    transparent_crc(p_1090->g_1058.y, "p_1090->g_1058.y", print_hash_value);
    transparent_crc(p_1090->g_1075, "p_1090->g_1075", print_hash_value);
    transparent_crc(p_1090->g_1087, "p_1090->g_1087", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
