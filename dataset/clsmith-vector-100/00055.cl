// ---fake_divergence -g 1,13,1 -l 1,1,1
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


// Seed: 55

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile VECTOR(int16_t, 4) g_10;
    int32_t g_23;
    volatile int32_t *g_24;
    uint8_t g_30[6][4][8];
    int32_t *g_35;
    int32_t g_39;
    int32_t g_45;
    uint16_t g_46;
    uint32_t g_58;
    VECTOR(uint32_t, 16) g_60;
    int32_t g_66;
    uint64_t g_72;
    int16_t g_114[1][1][3];
    VECTOR(int32_t, 4) g_123;
    VECTOR(int32_t, 4) g_124;
    VECTOR(int32_t, 8) g_126;
    int8_t g_136;
    volatile int8_t g_145;
    volatile int8_t *g_144;
    int8_t g_147;
    int64_t g_151[10][4];
    int32_t g_152;
    VECTOR(uint8_t, 4) g_158;
    VECTOR(int16_t, 4) g_185;
    VECTOR(int32_t, 4) g_200;
    VECTOR(int32_t, 8) g_201;
    VECTOR(int32_t, 16) g_202;
    VECTOR(int64_t, 16) g_218;
    VECTOR(int16_t, 16) g_227;
    VECTOR(int16_t, 4) g_228;
    int64_t *g_244;
    int64_t * volatile *g_243;
    VECTOR(int16_t, 8) g_252;
    VECTOR(uint16_t, 4) g_253;
    VECTOR(int64_t, 2) g_290;
    VECTOR(uint8_t, 16) g_309;
    int32_t g_315;
    VECTOR(uint8_t, 8) g_339;
    VECTOR(uint8_t, 16) g_347;
    VECTOR(uint8_t, 16) g_348;
    VECTOR(uint8_t, 8) g_356;
    VECTOR(uint8_t, 4) g_363;
    VECTOR(uint8_t, 4) g_366;
    VECTOR(uint8_t, 4) g_373;
    volatile uint8_t g_407;
    volatile uint8_t * volatile g_406;
    volatile uint8_t * volatile *g_405;
    int32_t g_409;
    VECTOR(int32_t, 4) g_418;
    VECTOR(uint8_t, 8) g_426;
    VECTOR(uint16_t, 2) g_469;
    VECTOR(int8_t, 2) g_487;
    VECTOR(uint32_t, 8) g_522;
    int32_t g_532;
    uint32_t g_548;
    VECTOR(int16_t, 2) g_561;
    VECTOR(int64_t, 8) g_567;
    VECTOR(int16_t, 16) g_575;
    VECTOR(int16_t, 4) g_607;
    VECTOR(uint8_t, 4) g_625;
    volatile VECTOR(int8_t, 8) g_665;
    VECTOR(uint8_t, 8) g_677;
    VECTOR(uint8_t, 2) g_678;
    int64_t **g_686;
    int64_t ***g_685;
    int64_t ****g_684;
    VECTOR(int16_t, 2) g_688;
    VECTOR(int16_t, 2) g_695;
    volatile VECTOR(int32_t, 2) g_710;
    VECTOR(int32_t, 16) g_716;
    VECTOR(int16_t, 8) g_782;
    uint64_t g_832[2];
    VECTOR(int64_t, 16) g_836;
    int32_t ** volatile g_839;
    VECTOR(int8_t, 16) g_877;
    volatile VECTOR(int16_t, 4) g_885;
    VECTOR(int16_t, 16) g_889;
    VECTOR(int16_t, 2) g_890;
    VECTOR(int16_t, 8) g_891;
    VECTOR(int16_t, 8) g_910;
    VECTOR(int16_t, 2) g_911;
    VECTOR(int16_t, 2) g_912;
    volatile VECTOR(int16_t, 16) g_913;
    volatile VECTOR(int16_t, 8) g_915;
    VECTOR(int16_t, 8) g_919;
    int32_t g_960[2];
    volatile VECTOR(uint64_t, 4) g_983;
    VECTOR(int16_t, 8) g_988;
    VECTOR(int32_t, 2) g_989;
    uint64_t g_994;
    uint64_t g_1027;
    int64_t g_1040;
    VECTOR(int8_t, 4) g_1049;
    VECTOR(int8_t, 8) g_1054;
    int32_t * volatile g_1101[7];
    int32_t * volatile g_1102;
    int32_t g_1105;
    volatile VECTOR(int16_t, 4) g_1149;
    volatile VECTOR(int16_t, 4) g_1150;
    uint16_t g_1154;
    uint32_t *g_1167;
    uint32_t **g_1166[9][10];
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
int32_t  func_1(struct S0 * p_1211);
uint16_t  func_4(int32_t  p_5, int64_t  p_6, uint8_t  p_7, struct S0 * p_1211);
uint16_t  func_12(uint16_t  p_13, uint64_t  p_14, int8_t  p_15, uint32_t  p_16, struct S0 * p_1211);
uint8_t  func_21(int32_t  p_22, struct S0 * p_1211);
int64_t  func_33(int32_t * p_34, struct S0 * p_1211);
VECTOR(int64_t, 2)  func_53(int32_t  p_54, int32_t  p_55, struct S0 * p_1211);
VECTOR(int64_t, 2)  func_77(uint16_t  p_78, int64_t  p_79, struct S0 * p_1211);
uint16_t  func_80(uint64_t  p_81, int32_t * p_82, uint64_t  p_83, int64_t  p_84, uint64_t  p_85, struct S0 * p_1211);
int32_t * func_86(uint32_t  p_87, int32_t ** p_88, struct S0 * p_1211);
uint8_t  func_92(uint64_t  p_93, struct S0 * p_1211);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1211->g_10 p_1211->g_23 p_1211->g_24 p_1211->g_35 p_1211->g_46 p_1211->g_58 p_1211->g_60 p_1211->g_72 p_1211->g_114 p_1211->g_66 p_1211->g_123 p_1211->g_124 p_1211->g_126 p_1211->g_136 p_1211->g_144 p_1211->g_147 p_1211->g_152 p_1211->g_158 p_1211->g_45 p_1211->g_39 p_1211->g_185 p_1211->g_151 p_1211->g_200 p_1211->g_201 p_1211->g_202 p_1211->g_218 p_1211->g_227 p_1211->g_228 p_1211->g_243 p_1211->g_252 p_1211->g_253 p_1211->g_290 p_1211->g_244 p_1211->g_309 p_1211->g_339 p_1211->g_347 p_1211->g_348 p_1211->g_356 p_1211->g_363 p_1211->g_366 p_1211->g_373 p_1211->g_405 p_1211->g_409 p_1211->g_469 p_1211->g_487 p_1211->g_426 p_1211->g_522 p_1211->g_532 p_1211->g_548 p_1211->g_567 p_1211->g_575 p_1211->g_418 p_1211->g_989 p_1211->g_561 p_1211->g_960 p_1211->g_839 p_1211->g_1105 p_1211->g_686 p_1211->g_145 p_1211->g_877 p_1211->g_912 p_1211->g_1154 p_1211->g_710 p_1211->g_1166 p_1211->g_607
 * writes: p_1211->g_24 p_1211->g_30 p_1211->g_46 p_1211->g_58 p_1211->g_72 p_1211->g_114 p_1211->g_136 p_1211->g_66 p_1211->g_151 p_1211->g_152 p_1211->g_45 p_1211->g_124 p_1211->g_200 p_1211->g_158 p_1211->g_39 p_1211->g_185 p_1211->g_243 p_1211->g_60 p_1211->g_315 p_1211->g_35 p_1211->g_409 p_1211->g_290 p_1211->g_123 p_1211->g_548 p_1211->g_989 p_1211->g_1040 p_1211->g_960 p_1211->g_877 p_1211->g_147 p_1211->g_1054 p_1211->g_607
 */
int32_t  func_1(struct S0 * p_1211)
{ /* block id: 4 */
    uint8_t l_11 = 0x54L;
    uint8_t l_582 = 0x96L;
    int32_t *l_1066 = &p_1211->g_66;
    VECTOR(int16_t, 4) l_1080 = (VECTOR(int16_t, 4))(0x0B09L, (VECTOR(int16_t, 2))(0x0B09L, 1L), 1L);
    int32_t l_1134 = 7L;
    int32_t l_1135 = 0x5087C156L;
    int32_t l_1136 = 0x7B3F7B96L;
    int32_t l_1138 = 0x39C5FE33L;
    int32_t l_1139 = 0x40A8B562L;
    int8_t l_1151 = 0x06L;
    uint32_t l_1180[5][9] = {{7UL,0x82CF32CFL,0x82CF32CFL,7UL,0x35E91DDDL,0x00F1E643L,0x00F1E643L,0x35E91DDDL,7UL},{7UL,0x82CF32CFL,0x82CF32CFL,7UL,0x35E91DDDL,0x00F1E643L,0x00F1E643L,0x35E91DDDL,7UL},{7UL,0x82CF32CFL,0x82CF32CFL,7UL,0x35E91DDDL,0x00F1E643L,0x00F1E643L,0x35E91DDDL,7UL},{7UL,0x82CF32CFL,0x82CF32CFL,7UL,0x35E91DDDL,0x00F1E643L,0x00F1E643L,0x35E91DDDL,7UL},{7UL,0x82CF32CFL,0x82CF32CFL,7UL,0x35E91DDDL,0x00F1E643L,0x00F1E643L,0x35E91DDDL,7UL}};
    VECTOR(uint16_t, 16) l_1193 = (VECTOR(uint16_t, 16))(0xA6ABL, (VECTOR(uint16_t, 4))(0xA6ABL, (VECTOR(uint16_t, 2))(0xA6ABL, 0xC3CCL), 0xC3CCL), 0xC3CCL, 0xA6ABL, 0xC3CCL, (VECTOR(uint16_t, 2))(0xA6ABL, 0xC3CCL), (VECTOR(uint16_t, 2))(0xA6ABL, 0xC3CCL), 0xA6ABL, 0xC3CCL, 0xA6ABL, 0xC3CCL);
    int8_t l_1196[1];
    int16_t *l_1197[8][10][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    int16_t l_1198 = 0x27E5L;
    uint32_t *l_1199[8][2][4] = {{{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548},{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548}},{{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548},{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548}},{{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548},{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548}},{{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548},{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548}},{{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548},{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548}},{{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548},{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548}},{{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548},{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548}},{{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548},{(void*)0,(void*)0,&p_1211->g_548,&p_1211->g_548}}};
    int8_t l_1200 = 7L;
    int64_t l_1201 = 0x62A9E40DF364232EL;
    uint16_t l_1202 = 1UL;
    int16_t l_1209 = 9L;
    int32_t *l_1210 = &p_1211->g_152;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1196[i] = (-5L);
    if (((*l_1066) = (p_1211->g_989.x |= (safe_div_func_uint16_t_u_u(func_4((safe_sub_func_int16_t_s_s((((VECTOR(int16_t, 4))(p_1211->g_10.zxwz)).y <= l_11), func_12((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))(0x4AADL, (-6L), (safe_div_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(func_21(p_1211->g_23, p_1211), (func_33(p_1211->g_35, p_1211) > ((((safe_add_func_uint32_t_u_u((((&p_1211->g_244 == &p_1211->g_244) <= 2L) , FAKE_DIVERGE(p_1211->local_2_offset, get_local_id(2), 10)), ((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(p_1211->g_575.s00)).hi, (l_11 || p_1211->g_426.s0))) & GROUP_DIVERGE(0, 1)))) || 0x3D3CL) < p_1211->g_363.y) == 0x12F2L)))), l_11)), (-1L), 0L, 0x3E0FL, (-9L), 0x402FL)), ((VECTOR(int16_t, 8))(1L))))), ((VECTOR(int16_t, 2))(0x4DDAL)), 0x4F9CL, 0x3FB1L, ((VECTOR(int16_t, 4))(0x1FF4L)))).se >= 0x6832L), p_1211->g_522.s0, l_11, p_1211->g_201.s0, p_1211))), p_1211->g_522.s0, l_582, p_1211), FAKE_DIVERGE(p_1211->global_1_offset, get_global_id(1), 10))))))
    { /* block id: 314 */
        int32_t l_1099 = 0x3493C982L;
        int32_t *l_1104[7][1];
        uint32_t l_1118 = 0xF8F91C8AL;
        int32_t *l_1119[5][7] = {{&p_1211->g_315,(void*)0,(void*)0,&p_1211->g_315,(void*)0,&p_1211->g_532,&p_1211->g_532},{&p_1211->g_315,(void*)0,(void*)0,&p_1211->g_315,(void*)0,&p_1211->g_532,&p_1211->g_532},{&p_1211->g_315,(void*)0,(void*)0,&p_1211->g_315,(void*)0,&p_1211->g_532,&p_1211->g_532},{&p_1211->g_315,(void*)0,(void*)0,&p_1211->g_315,(void*)0,&p_1211->g_532,&p_1211->g_532},{&p_1211->g_315,(void*)0,(void*)0,&p_1211->g_315,(void*)0,&p_1211->g_532,&p_1211->g_532}};
        uint32_t l_1162 = 4294967289UL;
        uint32_t l_1168 = 0x77128A00L;
        int i, j;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 1; j++)
                l_1104[i][j] = (void*)0;
        }
lbl_1179:
        for (p_1211->g_1040 = 15; (p_1211->g_1040 > (-30)); p_1211->g_1040--)
        { /* block id: 317 */
            int32_t l_1098 = 0x54245476L;
            int32_t l_1132[5];
            int16_t l_1137 = (-4L);
            int i;
            for (i = 0; i < 5; i++)
                l_1132[i] = 0x23997C14L;
            for (p_1211->g_315 = 0; (p_1211->g_315 >= 11); ++p_1211->g_315)
            { /* block id: 320 */
                int32_t l_1073[6];
                int32_t *l_1123 = &p_1211->g_409;
                int32_t l_1126[1];
                uint8_t l_1142 = 255UL;
                int16_t l_1145 = 0L;
                int32_t **l_1146 = &l_1119[1][1];
                int i;
                for (i = 0; i < 6; i++)
                    l_1073[i] = 0x6026416BL;
                for (i = 0; i < 1; i++)
                    l_1126[i] = 1L;
                for (p_1211->g_45 = 13; (p_1211->g_45 < 11); p_1211->g_45 = safe_sub_func_uint32_t_u_u(p_1211->g_45, 8))
                { /* block id: 323 */
                    if (l_1073[5])
                        break;
                }
                for (p_1211->g_39 = 0; (p_1211->g_39 <= (-5)); p_1211->g_39--)
                { /* block id: 328 */
                    int32_t l_1087 = (-1L);
                    int32_t l_1100 = 0x145C3955L;
                    int32_t **l_1120 = &l_1104[6][0];
                    int16_t *l_1124 = (void*)0;
                    int16_t *l_1125[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int8_t *l_1127 = (void*)0;
                    int8_t *l_1128 = (void*)0;
                    int8_t *l_1129[1];
                    int32_t l_1130 = 0x6C1ED94CL;
                    int32_t l_1131 = 0x51B7715CL;
                    int32_t l_1133 = 0x2C386AC4L;
                    int64_t l_1140 = (-1L);
                    int32_t l_1141 = (-1L);
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1129[i] = (void*)0;
                    for (p_1211->g_136 = 0; (p_1211->g_136 == (-14)); --p_1211->g_136)
                    { /* block id: 331 */
                        uint32_t *l_1081 = (void*)0;
                        uint32_t *l_1082 = &p_1211->g_548;
                        int32_t *l_1103 = &p_1211->g_960[0];
                        (*l_1103) &= (l_1100 = (safe_div_func_uint32_t_u_u(((~((VECTOR(int16_t, 4))(l_1080.xxwy)).w) , (--(*l_1082))), ((*l_1066) = (safe_lshift_func_int16_t_s_s((l_1087 , ((safe_div_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(l_1087, 13)), p_1211->g_532)) && (+((safe_mul_func_int8_t_s_s(0x1FL, (-5L))) > (((safe_lshift_func_int16_t_s_u((-1L), 8)) <= (l_1098 , 0x0B482F2C94852DA8L)) <= ((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 8))(l_1099, 0xD5730A3BL, 0x254C7F64L, (*l_1066), ((VECTOR(uint32_t, 4))(0UL)))).lo, ((VECTOR(uint32_t, 4))(0x3DFC903CL)), ((VECTOR(uint32_t, 4))(0xED03D06CL))))), FAKE_DIVERGE(p_1211->global_0_offset, get_global_id(0), 10), ((VECTOR(uint32_t, 2))(0x230DAE3FL)), ((VECTOR(uint32_t, 8))(4294967292UL)), 0xE212095BL)).s2 >= l_1098) < 0xEE13L)))))), p_1211->g_561.x))))));
                        (*p_1211->g_839) = l_1104[0][0];
                        return p_1211->g_1105;
                    }
                    (*l_1066) = ((safe_mul_func_int16_t_s_s(((**p_1211->g_686) >= (safe_mod_func_int8_t_s_s((*p_1211->g_144), (p_1211->g_147 |= (safe_div_func_int64_t_s_s(((safe_mod_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(4UL, (safe_sub_func_int8_t_s_s(((l_1118 || (l_1119[1][1] != ((*l_1120) = &p_1211->g_1105))) ^ ((p_1211->g_877.s9 &= (((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))((safe_div_func_uint32_t_u_u((((p_1211->g_889.se ^= ((+9L) > (&p_1211->g_409 == l_1123))) || l_1073[1]) , 4294967295UL), p_1211->g_339.s0)), 0x7E05324EL, ((VECTOR(int32_t, 4))(7L)), 0L, 0x08EF0849L)).lo && ((VECTOR(int32_t, 4))(0x22470F24L))))).y && l_1126[0])) & p_1211->g_912.y)), p_1211->g_126.s5)))), p_1211->g_561.x)) > 0x75D5E3F52EEFBAC0L), (*p_1211->g_244))))))), p_1211->g_366.y)) , (*l_1066));
                    l_1142++;
                    if (l_1145)
                        continue;
                }
                (*l_1146) = (void*)0;
            }
            (*l_1066) &= ((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 8))(p_1211->g_1149.wwxzyzwx)).s5104071377137521, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 8))(p_1211->g_1150.xxwxwwxz)).s40, (int16_t)((&p_1211->g_685 == (((l_1151 == p_1211->g_522.s1) <= ((****p_1211->g_684) = ((l_1132[3] , ((((VECTOR(int8_t, 2))(0x50L, 1L)).hi > l_1132[0]) , (0x54L | ((safe_div_func_int64_t_s_s((**p_1211->g_686), (**p_1211->g_686))) != ((1UL | 65535UL) <= (*p_1211->g_144)))))) , (**p_1211->g_243)))) , &p_1211->g_685)) >= 0L), (int16_t)l_1132[1]))).yxyy & ((VECTOR(int16_t, 4))(0x3F73L))))).yzyywwyyxyxyxyzy, ((VECTOR(int16_t, 16))(0x1EC4L))))).lo & ((VECTOR(int16_t, 8))(0L))))).s7, 4)) | p_1211->g_1154);
        }
        for (p_1211->g_136 = 21; (p_1211->g_136 != 8); --p_1211->g_136)
        { /* block id: 354 */
            uint64_t l_1165 = 0UL;
            int8_t *l_1169[2];
            int i;
            for (i = 0; i < 2; i++)
                l_1169[i] = &p_1211->g_147;
            for (l_11 = 0; (l_11 < 4); l_11 = safe_add_func_int32_t_s_s(l_11, 4))
            { /* block id: 357 */
                int32_t *l_1159[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t **l_1160 = &p_1211->g_35;
                int32_t *l_1161[8][5][6] = {{{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105}},{{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105}},{{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105}},{{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105}},{{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105}},{{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105}},{{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105}},{{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105},{(void*)0,&p_1211->g_1105,&p_1211->g_66,&l_1138,&p_1211->g_66,&p_1211->g_1105}}};
                int i, j, k;
                l_1161[7][1][2] = ((*l_1160) = l_1159[3]);
            }
            l_1162--;
            (*l_1066) = ((((p_1211->g_66 != (l_1165 <= p_1211->g_366.y)) ^ ((p_1211->g_710.x , p_1211->g_1166[7][6]) == &p_1211->g_1167)) | (p_1211->g_1054.s6 = l_1168)) , l_1165);
            for (p_1211->g_1040 = 8; (p_1211->g_1040 == 16); p_1211->g_1040 = safe_add_func_int16_t_s_s(p_1211->g_1040, 3))
            { /* block id: 366 */
                for (l_1165 = 2; (l_1165 >= 45); l_1165++)
                { /* block id: 369 */
                    int32_t *l_1177[4][2][8] = {{{&l_1136,&p_1211->g_1105,(void*)0,(void*)0,(void*)0,&p_1211->g_1105,&l_1136,(void*)0},{&l_1136,&p_1211->g_1105,(void*)0,(void*)0,(void*)0,&p_1211->g_1105,&l_1136,(void*)0}},{{&l_1136,&p_1211->g_1105,(void*)0,(void*)0,(void*)0,&p_1211->g_1105,&l_1136,(void*)0},{&l_1136,&p_1211->g_1105,(void*)0,(void*)0,(void*)0,&p_1211->g_1105,&l_1136,(void*)0}},{{&l_1136,&p_1211->g_1105,(void*)0,(void*)0,(void*)0,&p_1211->g_1105,&l_1136,(void*)0},{&l_1136,&p_1211->g_1105,(void*)0,(void*)0,(void*)0,&p_1211->g_1105,&l_1136,(void*)0}},{{&l_1136,&p_1211->g_1105,(void*)0,(void*)0,(void*)0,&p_1211->g_1105,&l_1136,(void*)0},{&l_1136,&p_1211->g_1105,(void*)0,(void*)0,(void*)0,&p_1211->g_1105,&l_1136,(void*)0}}};
                    int i, j, k;
                    for (p_1211->g_409 = 0; (p_1211->g_409 <= 1); p_1211->g_409 = safe_add_func_int8_t_s_s(p_1211->g_409, 5))
                    { /* block id: 372 */
                        uint64_t l_1176[2];
                        int32_t **l_1178 = &l_1104[0][0];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1176[i] = 18446744073709551613UL;
                        if (l_1176[0])
                            break;
                        (*l_1178) = l_1177[1][1][5];
                    }
                    if (p_1211->g_1154)
                        goto lbl_1179;
                }
            }
        }
        l_1180[3][7]++;
    }
    else
    { /* block id: 381 */
        int32_t **l_1183 = (void*)0;
        int32_t *l_1184 = (void*)0;
        l_1184 = &p_1211->g_152;
    }
    (*l_1210) ^= (safe_mod_func_uint64_t_u_u((((safe_sub_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s(((*l_1066) && ((safe_lshift_func_int8_t_s_u((((VECTOR(uint16_t, 2))(l_1193.s0f)).hi , (*p_1211->g_144)), 0)) || (safe_rshift_func_int8_t_s_s(l_1196[0], 0)))), (p_1211->g_607.y |= ((((VECTOR(uint32_t, 2))(5UL, 0x8ABD3543L)).hi || (*l_1066)) || 0UL)))) | (l_1198 , (l_1202++))), (((*l_1066) , p_1211->g_356.s3) && (((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u((((*l_1066) && 8UL) & (*l_1066)), 13)), 0x19515BD5L)) < 1L) , p_1211->g_339.s3)))) | 0L) & l_1209), 0x9ADF444D218FD6DEL));
    return p_1211->g_363.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1211->g_575 p_1211->g_244 p_1211->g_151 p_1211->g_114 p_1211->g_366 p_1211->g_548 p_1211->g_72
 * writes: p_1211->g_152 p_1211->g_548 p_1211->g_124
 */
uint16_t  func_4(int32_t  p_5, int64_t  p_6, uint8_t  p_7, struct S0 * p_1211)
{ /* block id: 175 */
    VECTOR(uint32_t, 8) l_614 = (VECTOR(uint32_t, 8))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 0x404BF49EL), 0x404BF49EL), 0x404BF49EL, 4294967293UL, 0x404BF49EL);
    VECTOR(uint8_t, 2) l_628 = (VECTOR(uint8_t, 2))(250UL, 0x07L);
    int32_t l_636 = (-4L);
    int32_t l_637 = 0x2347AA6CL;
    uint8_t l_638[10] = {0xD7L,0x63L,0xD7L,0xD7L,0x63L,0xD7L,0xD7L,0x63L,0xD7L,0xD7L};
    int32_t l_648 = 0x3939F0ACL;
    int32_t l_649 = 0x5DE75B8AL;
    int32_t l_650 = 0x32819CAAL;
    VECTOR(int8_t, 4) l_666 = (VECTOR(int8_t, 4))(0x4CL, (VECTOR(int8_t, 2))(0x4CL, 0x7FL), 0x7FL);
    VECTOR(int16_t, 8) l_694 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4D8BL), 0x4D8BL), 0x4D8BL, 1L, 0x4D8BL);
    VECTOR(int32_t, 4) l_714 = (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 6L), 6L);
    VECTOR(int32_t, 8) l_715 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0C08E42FL), 0x0C08E42FL), 0x0C08E42FL, 0L, 0x0C08E42FL);
    uint32_t l_726[7][10] = {{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L}};
    int32_t l_740 = 0x7C4F2667L;
    VECTOR(int64_t, 4) l_837 = (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 1L), 1L);
    int64_t **l_863 = &p_1211->g_244;
    VECTOR(int8_t, 4) l_878 = (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, 7L), 7L);
    VECTOR(int16_t, 2) l_914 = (VECTOR(int16_t, 2))((-1L), 0x1538L);
    int32_t l_979 = 0x6D87FEE2L;
    uint32_t l_1042[9][4] = {{0x1E1306E7L,0x1E1306E7L,0x1E1306E7L,0x1E1306E7L},{0x1E1306E7L,0x1E1306E7L,0x1E1306E7L,0x1E1306E7L},{0x1E1306E7L,0x1E1306E7L,0x1E1306E7L,0x1E1306E7L},{0x1E1306E7L,0x1E1306E7L,0x1E1306E7L,0x1E1306E7L},{0x1E1306E7L,0x1E1306E7L,0x1E1306E7L,0x1E1306E7L},{0x1E1306E7L,0x1E1306E7L,0x1E1306E7L,0x1E1306E7L},{0x1E1306E7L,0x1E1306E7L,0x1E1306E7L,0x1E1306E7L},{0x1E1306E7L,0x1E1306E7L,0x1E1306E7L,0x1E1306E7L},{0x1E1306E7L,0x1E1306E7L,0x1E1306E7L,0x1E1306E7L}};
    VECTOR(int8_t, 4) l_1048 = (VECTOR(int8_t, 4))(0x60L, (VECTOR(int8_t, 2))(0x60L, 0x06L), 0x06L);
    uint32_t l_1065[2];
    int i, j;
    for (i = 0; i < 2; i++)
        l_1065[i] = 0x78B3EB42L;
    for (p_5 = 0; (p_5 != 10); p_5++)
    { /* block id: 178 */
        int32_t *l_585 = &p_1211->g_152;
        VECTOR(int32_t, 16) l_588 = (VECTOR(int32_t, 16))(0x31D04152L, (VECTOR(int32_t, 4))(0x31D04152L, (VECTOR(int32_t, 2))(0x31D04152L, 0x6ACA292EL), 0x6ACA292EL), 0x6ACA292EL, 0x31D04152L, 0x6ACA292EL, (VECTOR(int32_t, 2))(0x31D04152L, 0x6ACA292EL), (VECTOR(int32_t, 2))(0x31D04152L, 0x6ACA292EL), 0x31D04152L, 0x6ACA292EL, 0x31D04152L, 0x6ACA292EL);
        VECTOR(int16_t, 16) l_602 = (VECTOR(int16_t, 16))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 0x1584L), 0x1584L), 0x1584L, 3L, 0x1584L, (VECTOR(int16_t, 2))(3L, 0x1584L), (VECTOR(int16_t, 2))(3L, 0x1584L), 3L, 0x1584L, 3L, 0x1584L);
        int16_t *l_605 = &p_1211->g_114[0][0][1];
        VECTOR(int16_t, 4) l_606 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x4A7BL), 0x4A7BL);
        VECTOR(int16_t, 2) l_608 = (VECTOR(int16_t, 2))(0x0CD2L, 0x0BF3L);
        VECTOR(uint32_t, 2) l_609 = (VECTOR(uint32_t, 2))(0xA07FCEE1L, 0xA29A8FD8L);
        VECTOR(uint32_t, 8) l_615 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xC781DE80L), 0xC781DE80L), 0xC781DE80L, 0UL, 0xC781DE80L);
        VECTOR(uint32_t, 8) l_616 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 6UL), 6UL), 6UL, 4294967295UL, 6UL);
        VECTOR(uint8_t, 4) l_631 = (VECTOR(uint8_t, 4))(0xFEL, (VECTOR(uint8_t, 2))(0xFEL, 246UL), 246UL);
        int8_t *l_634 = (void*)0;
        uint32_t l_635[10] = {3UL,0xE1E3CA55L,0xDF315E35L,0xE1E3CA55L,3UL,3UL,0xE1E3CA55L,0xDF315E35L,0xE1E3CA55L,3UL};
        uint32_t *l_639 = &p_1211->g_548;
        int32_t *l_640 = (void*)0;
        uint64_t *l_647[8] = {&p_1211->g_72,&p_1211->g_72,&p_1211->g_72,&p_1211->g_72,&p_1211->g_72,&p_1211->g_72,&p_1211->g_72,&p_1211->g_72};
        uint32_t *l_669 = &p_1211->g_58;
        int32_t l_670 = 0x535E9B8CL;
        VECTOR(int16_t, 16) l_696 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x3BCCL), 0x3BCCL), 0x3BCCL, 1L, 0x3BCCL, (VECTOR(int16_t, 2))(1L, 0x3BCCL), (VECTOR(int16_t, 2))(1L, 0x3BCCL), 1L, 0x3BCCL, 1L, 0x3BCCL);
        uint64_t l_704 = 0x0B138CDCE0D74E70L;
        VECTOR(int32_t, 2) l_711 = (VECTOR(int32_t, 2))(6L, 0x36DFA6D8L);
        uint32_t l_725[3];
        int8_t l_729 = 0x2CL;
        uint32_t l_732 = 4294967295UL;
        uint32_t l_765 = 0x1D7D629FL;
        VECTOR(int16_t, 16) l_783 = (VECTOR(int16_t, 16))(0x4D46L, (VECTOR(int16_t, 4))(0x4D46L, (VECTOR(int16_t, 2))(0x4D46L, 0x37ABL), 0x37ABL), 0x37ABL, 0x4D46L, 0x37ABL, (VECTOR(int16_t, 2))(0x4D46L, 0x37ABL), (VECTOR(int16_t, 2))(0x4D46L, 0x37ABL), 0x4D46L, 0x37ABL, 0x4D46L, 0x37ABL);
        uint64_t *l_872 = (void*)0;
        uint16_t l_1011 = 0x259AL;
        int8_t l_1022 = 0x71L;
        int64_t l_1023[6];
        int64_t *l_1047 = &l_1023[2];
        VECTOR(int16_t, 4) l_1053 = (VECTOR(int16_t, 4))(0x65EAL, (VECTOR(int16_t, 2))(0x65EAL, (-1L)), (-1L));
        VECTOR(int8_t, 8) l_1055 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-10L)), (-10L)), (-10L), 1L, (-10L));
        VECTOR(int8_t, 4) l_1056 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L);
        uint8_t *l_1061 = (void*)0;
        uint8_t **l_1060 = &l_1061;
        int64_t ***l_1064[5] = {&p_1211->g_686,&p_1211->g_686,&p_1211->g_686,&p_1211->g_686,&p_1211->g_686};
        int i;
        for (i = 0; i < 3; i++)
            l_725[i] = 0xD0DF4E49L;
        for (i = 0; i < 6; i++)
            l_1023[i] = 0x69C322F9A46EFB4EL;
        if (((*l_585) = ((VECTOR(int32_t, 2))(0x754E0843L, 0x38F6E868L)).hi))
        { /* block id: 180 */
            uint64_t l_599 = 1UL;
            (*l_585) = ((p_1211->g_575.s4 <= (p_6 && 0x05273452A1E3E212L)) & (safe_lshift_func_uint8_t_u_s((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(l_588.sa4)) && ((VECTOR(int32_t, 2))(0x7678D3F2L, 0x31AB6BBFL))))).even & ((*p_1211->g_244) | (safe_mod_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(4UL, 1UL)).lo, ((safe_add_func_int16_t_s_s((p_1211->g_151[1][1] , p_1211->g_114[0][0][1]), (((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), 4)) == (safe_add_func_uint64_t_u_u((((void*)0 != l_585) , l_599), (-1L)))) , 0x03E6L))) || (-1L)))), (-9L))))), p_7)));
            if (p_7)
                break;
        }
        else
        { /* block id: 183 */
            for (p_1211->g_548 = 14; (p_1211->g_548 == 8); p_1211->g_548--)
            { /* block id: 186 */
                return p_1211->g_366.w;
            }
        }
        p_1211->g_124.z = (((((*l_639) &= ((VECTOR(uint32_t, 4))((((((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 8))(l_602.sac8119e5)).s6466327027164340, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(((*l_605) &= ((safe_mod_func_uint8_t_u_u((**p_1211->g_405), p_7)) > ((*l_585) ^= p_1211->g_158.y))), 0x4B41L, ((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 16))(l_606.wxzzwwwzzzyzwzxx)).s5e73, ((VECTOR(int16_t, 16))(p_1211->g_607.wxyzwywyxyyywwyw)).sec9b))), 0x3590L, 0L)) > ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 2))(l_608.yy)).xyxxxyyyxyxyxyxx, ((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x62C4L, 1L)) && ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))((-1L), (l_637 = (p_5 > ((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 2))(l_609.yy)).yyxyxxyxxyyyyxyy, ((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 8))(0x4A6F496CL, (0x15DE5229L < (-4L)), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(4294967292UL, 4294967293UL)).yyxyyxxy | ((VECTOR(uint32_t, 2))(4294967295UL, 0xD6F468CCL)).yxyxxyxy))).lo + ((VECTOR(uint32_t, 8))(l_614.s44227036)).lo))) + ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 16))(l_615.s1311171736140735)), ((VECTOR(uint32_t, 8))(l_616.s34331715)).s4071734203777150))).s38fd & ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0xDF598B78L, 0x4D9AF3ACL)), 1UL, 0x49F96CC0L)))))))), 0x1E64A80CL, 0xCAFBA533L)).s6054125456716673, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 16))((safe_mod_func_uint8_t_u_u((+(safe_rshift_func_uint8_t_u_u((p_6 , ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(p_1211->g_625.xx)).xxyyyyyy * ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(FAKE_DIVERGE(p_1211->group_0_offset, get_group_id(0), 10), ((VECTOR(uint8_t, 2))(0x71L, 0xF8L)), 3UL, ((VECTOR(uint8_t, 2))(l_628.yy)), 0xBAL, 255UL)).s2113736302166501 * ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_631.yzxw)), ((safe_sub_func_uint32_t_u_u((l_634 != ((1UL ^ p_1211->g_60.se) , (void*)0)), l_614.s3)) ^ p_5), p_7, 0xA8L, 0x24L, ((VECTOR(uint8_t, 2))(0x30L)), ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 2))(1UL)), 0x31L, 7UL)).sc14b + ((VECTOR(uint8_t, 4))(0UL))))).zxxwxwwxzyxwyyyw))).sd49e ^ ((VECTOR(uint8_t, 4))(255UL))))).zyzwzxwy))).s5), 3))), l_635[3])), 4294967288UL, 4294967293UL, 1UL, l_636, ((VECTOR(uint32_t, 4))(0xFE1779A1L)), ((VECTOR(uint32_t, 2))(0x1C119504L)), 4294967290UL, ((VECTOR(uint32_t, 4))(0x8C89C72BL)))), (uint32_t)0xBB2FC4E3L))).sfe + ((VECTOR(uint32_t, 2))(0UL))))).yxyyxxyxyyyxyyxy))), ((VECTOR(uint32_t, 16))(0UL))))).sa)), 0x5C97L, (-8L))), ((VECTOR(int16_t, 4))(1L))))).wxzxyzww >= ((VECTOR(int16_t, 8))(0x062CL))))) > ((VECTOR(int16_t, 8))(2L))))).s21))).yyxx && ((VECTOR(int16_t, 4))(0x3109L))))).zyzzxzyxwxwyywyx, ((VECTOR(int16_t, 16))(7L)))))))).s1f, (int16_t)l_638[6]))).xxyxxyxy))).odd, ((VECTOR(int16_t, 4))((-4L)))))), ((VECTOR(int16_t, 4))(3L))))) && ((VECTOR(int16_t, 4))(7L))))) && ((VECTOR(int16_t, 4))(0x26A3L))))).yywwywwzzwwwxyxy, ((VECTOR(int16_t, 16))((-4L)))))).se == 1UL) , p_6) | p_1211->g_200.w), 0x4F24665EL, 0x0188C1EFL, 0x46E2A4FAL)).y) , 0x6D3FCDD6FB6546E2L) || GROUP_DIVERGE(1, 1)) || p_1211->g_151[1][1]);
    }
    return p_1211->g_72;
}


/* ------------------------------------------ */
/* 
 * reads : p_1211->g_45 p_1211->g_418
 * writes: p_1211->g_45
 */
uint16_t  func_12(uint16_t  p_13, uint64_t  p_14, int8_t  p_15, uint32_t  p_16, struct S0 * p_1211)
{ /* block id: 168 */
    uint16_t l_579 = 0UL;
    for (p_1211->g_45 = 11; (p_1211->g_45 < 4); p_1211->g_45 = safe_sub_func_uint16_t_u_u(p_1211->g_45, 1))
    { /* block id: 171 */
        int32_t *l_578[9] = {&p_1211->g_152,&p_1211->g_152,&p_1211->g_152,&p_1211->g_152,&p_1211->g_152,&p_1211->g_152,&p_1211->g_152,&p_1211->g_152,&p_1211->g_152};
        int i;
        l_579++;
    }
    return p_1211->g_418.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_1211->g_24 p_1211->g_23
 * writes: p_1211->g_24 p_1211->g_30
 */
uint8_t  func_21(int32_t  p_22, struct S0 * p_1211)
{ /* block id: 5 */
    volatile int32_t **l_25[10] = {&p_1211->g_24,&p_1211->g_24,&p_1211->g_24,&p_1211->g_24,&p_1211->g_24,&p_1211->g_24,&p_1211->g_24,&p_1211->g_24,&p_1211->g_24,&p_1211->g_24};
    int i;
    p_1211->g_24 = p_1211->g_24;
    p_1211->g_30[5][1][2] = (safe_mod_func_uint32_t_u_u(p_1211->g_23, (safe_lshift_func_int8_t_s_s(p_22, p_1211->g_23))));
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_1211->g_46 p_1211->g_58 p_1211->g_60 p_1211->g_72 p_1211->g_114 p_1211->g_23 p_1211->g_66 p_1211->g_123 p_1211->g_124 p_1211->g_126 p_1211->g_136 p_1211->g_144 p_1211->g_147 p_1211->g_152 p_1211->g_158 p_1211->g_45 p_1211->g_39 p_1211->g_185 p_1211->g_151 p_1211->g_200 p_1211->g_201 p_1211->g_202 p_1211->g_218 p_1211->g_227 p_1211->g_228 p_1211->g_243 p_1211->g_252 p_1211->g_253 p_1211->g_290 p_1211->g_244 p_1211->g_309 p_1211->g_339 p_1211->g_347 p_1211->g_348 p_1211->g_356 p_1211->g_363 p_1211->g_366 p_1211->g_373 p_1211->g_405 p_1211->g_409 p_1211->g_469 p_1211->g_487 p_1211->g_426 p_1211->g_522 p_1211->g_532 p_1211->g_548 p_1211->g_567
 * writes: p_1211->g_46 p_1211->g_58 p_1211->g_72 p_1211->g_114 p_1211->g_136 p_1211->g_66 p_1211->g_151 p_1211->g_152 p_1211->g_45 p_1211->g_124 p_1211->g_200 p_1211->g_158 p_1211->g_39 p_1211->g_185 p_1211->g_243 p_1211->g_60 p_1211->g_315 p_1211->g_35 p_1211->g_409 p_1211->g_290 p_1211->g_123 p_1211->g_548
 */
int64_t  func_33(int32_t * p_34, struct S0 * p_1211)
{ /* block id: 9 */
    int32_t *l_36 = (void*)0;
    int32_t l_37[9] = {0x11DE2A90L,0x11DE2A90L,0x11DE2A90L,0x11DE2A90L,0x11DE2A90L,0x11DE2A90L,0x11DE2A90L,0x11DE2A90L,0x11DE2A90L};
    int32_t *l_38 = &l_37[4];
    int32_t *l_40 = (void*)0;
    int32_t *l_41 = (void*)0;
    int32_t *l_42 = &l_37[0];
    int32_t *l_43 = &l_37[3];
    int32_t *l_44[8] = {&l_37[0],(void*)0,&l_37[0],&l_37[0],(void*)0,&l_37[0],&l_37[0],(void*)0};
    VECTOR(uint32_t, 16) l_56 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint32_t, 2))(0UL, 1UL), (VECTOR(uint32_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
    uint32_t *l_57[9] = {&p_1211->g_58,&p_1211->g_58,&p_1211->g_58,&p_1211->g_58,&p_1211->g_58,&p_1211->g_58,&p_1211->g_58,&p_1211->g_58,&p_1211->g_58};
    VECTOR(uint32_t, 8) l_59 = (VECTOR(uint32_t, 8))(0xCCD29D3EL, (VECTOR(uint32_t, 4))(0xCCD29D3EL, (VECTOR(uint32_t, 2))(0xCCD29D3EL, 0xCA19AB63L), 0xCA19AB63L), 0xCA19AB63L, 0xCCD29D3EL, 0xCA19AB63L);
    VECTOR(uint32_t, 16) l_61 = (VECTOR(uint32_t, 16))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0xA4AA2EEDL), 0xA4AA2EEDL), 0xA4AA2EEDL, 4294967286UL, 0xA4AA2EEDL, (VECTOR(uint32_t, 2))(4294967286UL, 0xA4AA2EEDL), (VECTOR(uint32_t, 2))(4294967286UL, 0xA4AA2EEDL), 4294967286UL, 0xA4AA2EEDL, 4294967286UL, 0xA4AA2EEDL);
    VECTOR(uint32_t, 2) l_62 = (VECTOR(uint32_t, 2))(0xB53ABF6AL, 0x0A61B3E2L);
    VECTOR(int64_t, 4) l_76 = (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0L), 0L);
    VECTOR(int8_t, 16) l_91 = (VECTOR(int8_t, 16))(0x67L, (VECTOR(int8_t, 4))(0x67L, (VECTOR(int8_t, 2))(0x67L, 0x0EL), 0x0EL), 0x0EL, 0x67L, 0x0EL, (VECTOR(int8_t, 2))(0x67L, 0x0EL), (VECTOR(int8_t, 2))(0x67L, 0x0EL), 0x67L, 0x0EL, 0x67L, 0x0EL);
    int32_t **l_168 = &l_44[6];
    int i;
    p_1211->g_46--;
    (*l_42) = (safe_sub_func_uint32_t_u_u((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(0L, ((VECTOR(int64_t, 2))(func_53(p_1211->g_46, (((p_1211->g_58 ^= ((VECTOR(uint32_t, 2))(l_56.s7b)).even) & ((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 16))(l_59.s2225750043306063)), ((VECTOR(uint32_t, 2))(p_1211->g_60.s87)).yxyyxxxyxxyyxxxy))).s75, ((VECTOR(uint32_t, 2))(0x30C1ABDDL, 4294967291UL))))).xxyyyyxy, ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(l_61.sf21916dc)).s1160441123522152 & ((VECTOR(uint32_t, 2))(l_62.yy)).yyyyyxxyxxyyxxxy))).even))).s4) , (safe_lshift_func_int8_t_s_s(p_1211->g_60.sa, 2))), p_1211))), 2L)).lo && ((VECTOR(int64_t, 8))(l_76.zywwzxwx)).s06))), (-1L), (&p_34 != &p_34), ((VECTOR(int64_t, 2))(func_77(func_80(p_1211->g_46, func_86((((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 8))(l_91.s302f92bf)).s74, (int8_t)(*l_38)))).even || (FAKE_DIVERGE(p_1211->local_1_offset, get_local_id(1), 10) , (func_92((safe_add_func_int32_t_s_s((((VECTOR(int8_t, 2))(0x07L, 0L)).odd > (-1L)), (((safe_lshift_func_int8_t_s_s((4UL && (*l_42)), 3)) , (void*)0) == &l_37[0]))), p_1211) <= (*l_38)))), l_168, p_1211), p_1211->g_60.s3, (*l_38), p_1211->g_228.z, p_1211), (*l_42), p_1211))), 1L, 0x03FE8BF5FC84EA52L)).lo | ((VECTOR(int64_t, 4))((-1L)))))).z, (*l_42))), (*l_43)));
    for (p_1211->g_548 = 0; (p_1211->g_548 != 15); p_1211->g_548 = safe_add_func_int32_t_s_s(p_1211->g_548, 7))
    { /* block id: 163 */
        int8_t l_570 = 1L;
        return l_570;
    }
    (*l_168) = (*l_168);
    return (*p_1211->g_244);
}


/* ------------------------------------------ */
/* 
 * reads : p_1211->g_72
 * writes: p_1211->g_72
 */
VECTOR(int64_t, 2)  func_53(int32_t  p_54, int32_t  p_55, struct S0 * p_1211)
{ /* block id: 12 */
    int32_t *l_65 = &p_1211->g_66;
    int32_t *l_67 = (void*)0;
    int32_t *l_68 = &p_1211->g_66;
    int32_t *l_69 = &p_1211->g_66;
    int32_t l_70 = (-1L);
    int32_t *l_71[7][3] = {{(void*)0,&p_1211->g_66,&p_1211->g_66},{(void*)0,&p_1211->g_66,&p_1211->g_66},{(void*)0,&p_1211->g_66,&p_1211->g_66},{(void*)0,&p_1211->g_66,&p_1211->g_66},{(void*)0,&p_1211->g_66,&p_1211->g_66},{(void*)0,&p_1211->g_66,&p_1211->g_66},{(void*)0,&p_1211->g_66,&p_1211->g_66}};
    VECTOR(int64_t, 8) l_75 = (VECTOR(int64_t, 8))(0x3E7998387B67A03DL, (VECTOR(int64_t, 4))(0x3E7998387B67A03DL, (VECTOR(int64_t, 2))(0x3E7998387B67A03DL, 1L), 1L), 1L, 0x3E7998387B67A03DL, 1L);
    int i, j;
    --p_1211->g_72;
    return l_75.s74;
}


/* ------------------------------------------ */
/* 
 * reads : p_1211->g_252 p_1211->g_253 p_1211->g_60 p_1211->g_58 p_1211->g_124 p_1211->g_66 p_1211->g_152 p_1211->g_290 p_1211->g_72 p_1211->g_244 p_1211->g_151 p_1211->g_309 p_1211->g_228 p_1211->g_144 p_1211->g_339 p_1211->g_347 p_1211->g_348 p_1211->g_356 p_1211->g_363 p_1211->g_366 p_1211->g_373 p_1211->g_114 p_1211->g_405 p_1211->g_409 p_1211->g_45 p_1211->g_123 p_1211->g_39 p_1211->g_46 p_1211->g_469 p_1211->g_487 p_1211->g_227 p_1211->g_426 p_1211->g_522 p_1211->g_185 p_1211->g_532 p_1211->g_548 p_1211->g_201 p_1211->g_567
 * writes: p_1211->g_60 p_1211->g_58 p_1211->g_152 p_1211->g_72 p_1211->g_114 p_1211->g_315 p_1211->g_35 p_1211->g_409 p_1211->g_290 p_1211->g_45 p_1211->g_124 p_1211->g_200 p_1211->g_136 p_1211->g_158 p_1211->g_39 p_1211->g_66 p_1211->g_46 p_1211->g_123 p_1211->g_548
 */
VECTOR(int64_t, 2)  func_77(uint16_t  p_78, int64_t  p_79, struct S0 * p_1211)
{ /* block id: 81 */
    VECTOR(uint16_t, 8) l_256 = (VECTOR(uint16_t, 8))(0xE733L, (VECTOR(uint16_t, 4))(0xE733L, (VECTOR(uint16_t, 2))(0xE733L, 0x9105L), 0x9105L), 0x9105L, 0xE733L, 0x9105L);
    VECTOR(uint16_t, 4) l_259 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xC556L), 0xC556L);
    VECTOR(uint16_t, 8) l_262 = (VECTOR(uint16_t, 8))(4UL, (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 65528UL), 65528UL), 65528UL, 4UL, 65528UL);
    int16_t *l_273 = (void*)0;
    uint32_t *l_284 = (void*)0;
    uint32_t *l_285 = (void*)0;
    uint32_t *l_286 = (void*)0;
    uint32_t *l_287 = &p_1211->g_58;
    VECTOR(uint64_t, 4) l_294 = (VECTOR(uint64_t, 4))(0xD6CB5AC1FF841659L, (VECTOR(uint64_t, 2))(0xD6CB5AC1FF841659L, 18446744073709551612UL), 18446744073709551612UL);
    VECTOR(uint64_t, 2) l_295 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL);
    int32_t l_316 = 0x7E24B379L;
    VECTOR(uint8_t, 8) l_327 = (VECTOR(uint8_t, 8))(251UL, (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 1UL), 1UL), 1UL, 251UL, 1UL);
    uint8_t *l_328 = (void*)0;
    VECTOR(uint8_t, 4) l_349 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xA5L), 0xA5L);
    VECTOR(uint8_t, 2) l_357 = (VECTOR(uint8_t, 2))(0x44L, 0x2DL);
    VECTOR(uint8_t, 8) l_358 = (VECTOR(uint8_t, 8))(0xF5L, (VECTOR(uint8_t, 4))(0xF5L, (VECTOR(uint8_t, 2))(0xF5L, 0xEDL), 0xEDL), 0xEDL, 0xF5L, 0xEDL);
    VECTOR(uint8_t, 4) l_361 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL);
    VECTOR(uint8_t, 8) l_362 = (VECTOR(uint8_t, 8))(0xC5L, (VECTOR(uint8_t, 4))(0xC5L, (VECTOR(uint8_t, 2))(0xC5L, 0x2CL), 0x2CL), 0x2CL, 0xC5L, 0x2CL);
    VECTOR(uint8_t, 16) l_376 = (VECTOR(uint8_t, 16))(0xB6L, (VECTOR(uint8_t, 4))(0xB6L, (VECTOR(uint8_t, 2))(0xB6L, 4UL), 4UL), 4UL, 0xB6L, 4UL, (VECTOR(uint8_t, 2))(0xB6L, 4UL), (VECTOR(uint8_t, 2))(0xB6L, 4UL), 0xB6L, 4UL, 0xB6L, 4UL);
    uint8_t *l_382 = (void*)0;
    int32_t l_384 = 4L;
    int32_t l_385 = (-9L);
    int32_t l_387 = 0x0F9AFD8EL;
    int32_t l_388[2][7][1];
    int64_t **l_437 = &p_1211->g_244;
    uint64_t *l_442 = (void*)0;
    int32_t l_459[3][9][4] = {{{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L}},{{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L}},{{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L},{0x71432BBDL,(-1L),0x58D203C0L,0x618D10A7L}}};
    VECTOR(uint8_t, 16) l_484 = (VECTOR(uint8_t, 16))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0UL), 0UL), 0UL, 249UL, 0UL, (VECTOR(uint8_t, 2))(249UL, 0UL), (VECTOR(uint8_t, 2))(249UL, 0UL), 249UL, 0UL, 249UL, 0UL);
    int32_t l_502 = 0x267CD781L;
    int64_t ***l_565 = (void*)0;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 1; k++)
                l_388[i][j][k] = 6L;
        }
    }
    if (((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(p_78, ((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(p_1211->g_252.s33)), ((VECTOR(uint16_t, 16))(0x8771L, ((VECTOR(uint16_t, 8))(p_1211->g_253.xwwywwyy)), 0UL, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(l_256.s5572)) + ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(l_259.yzxywwwz)).s14 - ((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(l_262.s4234)).even + ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(p_79, 0x6B86L, 4UL, (&p_1211->g_114[0][0][1] == l_273), (~(safe_div_func_int32_t_s_s(((safe_add_func_int32_t_s_s((safe_div_func_int8_t_s_s((l_262.s5 == (safe_div_func_int64_t_s_s(((safe_mod_func_uint32_t_u_u(4294967292UL, ((*l_287) &= (p_1211->g_60.s6 &= 4294967290UL)))) & p_1211->g_124.x), (l_256.s1 | p_79)))), 0x1AL)), p_1211->g_66)) != 0x573706588674BF43L), l_262.s4))), 0x7659L, ((VECTOR(uint16_t, 2))(0UL)), 0xD0ACL, 1UL, p_79, 0xEA2CL, p_78, GROUP_DIVERGE(2, 1), 0xF40DL, 0x4B43L)).saa44 + ((VECTOR(uint16_t, 4))(0xD27FL))))).hi))).xxxx & ((VECTOR(uint16_t, 4))(0x4761L))))).wzxxzwxwwzyxzxxy))).s882b, ((VECTOR(uint16_t, 4))(0UL))))).hi + ((VECTOR(uint16_t, 2))(0x6935L))))).yyxxxxxx << ((VECTOR(uint16_t, 8))(16))))).even + ((VECTOR(uint16_t, 4))(0x8E4FL))))).ywxwzxzx + ((VECTOR(uint16_t, 8))(3UL))))).s55))).yyyxxxyy, ((VECTOR(uint16_t, 8))(0x96D3L))))).s77))).yyxyyyyx & ((VECTOR(uint16_t, 8))(65526UL))))).odd))), 0x77E9L, 0xE050L)).s73))) <= ((VECTOR(int32_t, 2))(0x4375EB32L))))).xxxyyyyx >= ((VECTOR(int32_t, 8))(0x71DF16E1L))))).s61 >= ((VECTOR(int32_t, 2))(0x2D7C4833L))))).yyyxyyxy, ((VECTOR(int32_t, 8))(0x661554DAL))))), (-2L), 0x1F278261L, 0x6813CD3EL, ((VECTOR(int32_t, 2))(7L)), 0x5106D1ECL, 0x30A72F70L)).s72 && ((VECTOR(int32_t, 2))(1L))))).even)
    { /* block id: 84 */
        uint16_t *l_291 = (void*)0;
        uint64_t *l_296 = &p_1211->g_72;
        VECTOR(uint8_t, 4) l_310 = (VECTOR(uint8_t, 4))(0x9CL, (VECTOR(uint8_t, 2))(0x9CL, 0xB2L), 0xB2L);
        int32_t l_311 = 0x19B828CDL;
        int16_t *l_312 = &p_1211->g_114[0][0][1];
        uint64_t *l_313 = (void*)0;
        uint64_t *l_314[1][5][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t **l_317 = &p_1211->g_35;
        uint8_t *l_318 = (void*)0;
        uint8_t *l_320 = (void*)0;
        uint8_t **l_319 = &l_320;
        uint8_t **l_329 = &l_328;
        VECTOR(uint8_t, 16) l_330 = (VECTOR(uint8_t, 16))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0xCBL), 0xCBL), 0xCBL, 248UL, 0xCBL, (VECTOR(uint8_t, 2))(248UL, 0xCBL), (VECTOR(uint8_t, 2))(248UL, 0xCBL), 248UL, 0xCBL, 248UL, 0xCBL);
        VECTOR(uint8_t, 8) l_344 = (VECTOR(uint8_t, 8))(0x5EL, (VECTOR(uint8_t, 4))(0x5EL, (VECTOR(uint8_t, 2))(0x5EL, 0UL), 0UL), 0UL, 0x5EL, 0UL);
        VECTOR(uint8_t, 16) l_377 = (VECTOR(uint8_t, 16))(0x9FL, (VECTOR(uint8_t, 4))(0x9FL, (VECTOR(uint8_t, 2))(0x9FL, 255UL), 255UL), 255UL, 0x9FL, 255UL, (VECTOR(uint8_t, 2))(0x9FL, 255UL), (VECTOR(uint8_t, 2))(0x9FL, 255UL), 0x9FL, 255UL, 0x9FL, 255UL);
        int32_t l_386 = 0x1683E864L;
        int32_t l_389 = 0x35080BE0L;
        int32_t l_390 = 1L;
        int32_t l_391 = 0L;
        VECTOR(int32_t, 2) l_392 = (VECTOR(int32_t, 2))(4L, 0x2206C50FL);
        int32_t l_393 = 0x64A58D5EL;
        uint8_t l_394 = 0xF3L;
        VECTOR(int32_t, 8) l_435 = (VECTOR(int32_t, 8))(0x01FEA14FL, (VECTOR(int32_t, 4))(0x01FEA14FL, (VECTOR(int32_t, 2))(0x01FEA14FL, 0x42315C3FL), 0x42315C3FL), 0x42315C3FL, 0x01FEA14FL, 0x42315C3FL);
        int64_t **l_436 = &p_1211->g_244;
        VECTOR(uint64_t, 16) l_468 = (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x82DD75F2984759E1L), 0x82DD75F2984759E1L), 0x82DD75F2984759E1L, 18446744073709551611UL, 0x82DD75F2984759E1L, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x82DD75F2984759E1L), (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x82DD75F2984759E1L), 18446744073709551611UL, 0x82DD75F2984759E1L, 18446744073709551611UL, 0x82DD75F2984759E1L);
        VECTOR(int8_t, 16) l_486 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x21L), 0x21L), 0x21L, (-1L), 0x21L, (VECTOR(int8_t, 2))((-1L), 0x21L), (VECTOR(int8_t, 2))((-1L), 0x21L), (-1L), 0x21L, (-1L), 0x21L);
        int i, j, k;
        for (p_1211->g_152 = 0; (p_1211->g_152 <= (-26)); p_1211->g_152 = safe_sub_func_int8_t_s_s(p_1211->g_152, 1))
        { /* block id: 87 */
            return p_1211->g_290.xy;
        }
        (*l_317) = (((p_78 == ((l_291 == (((((*l_296) |= ((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(l_294.xy)).yyxyxxyx + ((VECTOR(uint64_t, 2))(l_295.yx)).xxyyxxyy))).odd))).x) && ((safe_rshift_func_int8_t_s_s((p_79 & (safe_mul_func_uint8_t_u_u(255UL, (((*p_1211->g_244) != (safe_lshift_func_int16_t_s_u(((l_316 &= (p_1211->g_315 = (((((*l_312) = ((+(((&p_1211->g_151[1][1] != (void*)0) <= (safe_div_func_int16_t_s_s((((*l_296) = (safe_sub_func_uint64_t_u_u(1UL, (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 16))(p_1211->g_309.s0d50f7a9c35432e4)).even, ((VECTOR(uint8_t, 16))(l_310.wzywzyxwwzwzzwyz)).even))).even))).w, ((l_311 = l_310.y) <= 1UL)))))) && l_294.z), p_79))) ^ l_310.x)) < p_1211->g_60.sf)) || 0x2F81L) <= p_78) && p_79))) || p_78), l_262.s7))) == p_1211->g_228.x)))), l_310.x)) ^ l_310.x)) != (-2L)) , &p_78)) || 0xB7L)) || p_1211->g_252.s1) , (void*)0);
        if ((((l_318 == ((*l_319) = (void*)0)) < ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(0xD4L, 0x86L)).xxyxxyxyyyxyxxyx * ((VECTOR(uint8_t, 8))(l_327.s43672753)).s4351707221132263))).s86 + ((VECTOR(uint8_t, 8))((((*l_329) = l_328) == (((p_79 < (l_316 = p_1211->g_228.x)) > ((void*)0 == &p_1211->g_136)) , p_1211->g_144)), 0UL, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(l_330.sd4)), ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(p_1211->g_339.s71)).yxxy + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(0x5BL, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(l_344.s1442072215453274)).sa0 + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(1UL, 0xDCL)).yxxxyyxy + ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 16))(p_1211->g_347.s125d6e179d1eafba)).sb1, ((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 16))(p_1211->g_348.sfea07ee5a397bb07)).hi, ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_349.zx)).lo, 0x21L, 255UL, 0UL)).odd, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x73L, 0xA7L)), 8UL, 251UL)) + ((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 8))(p_1211->g_356.s53315772)).s3200121646117144, ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 8))(l_357.xxyyxyxx)).s36, ((VECTOR(uint8_t, 2))(l_358.s45))))).yxyxxyyxyyyyxxxx, ((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 16))(l_361.xwxzwywwxwyzywxx))))).s2a >> ((VECTOR(uint8_t, 2))(8))))).yyyxyyxxxxyxxyyy, ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 2))(l_362.s73)), ((VECTOR(uint8_t, 8))(p_1211->g_363.xwyxxwzw)).s27, ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 16))(p_1211->g_366.xwyyxxwxzzxwyxyz)).even, ((VECTOR(uint8_t, 8))(255UL, 1UL, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(1UL, 0xA0L)) >> ((VECTOR(uint8_t, 2))(8))))), 248UL, 0xA0L, 0xBCL, 0xBDL)), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(p_1211->g_373.ywwz)).wzzzyxyw + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(l_376.se6b06272)).s23 + ((VECTOR(uint8_t, 8))(l_377.sceb55dcb)).s36))).xxyyxyxx & ((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 2))(0xAEL, 0xF4L)).xxyy, (uint8_t)(((((*l_329) = l_382) == p_1211->g_144) , l_295.y) && FAKE_DIVERGE(p_1211->local_0_offset, get_local_id(0), 10)), (uint8_t)p_78))).wxwxwxxwxwxwzwxw + ((VECTOR(uint8_t, 16))(0x64L))))).even, ((VECTOR(uint8_t, 8))(0x12L))))).s70 + ((VECTOR(uint8_t, 2))(2UL))))).xxxyxyxyyxxxxyyy, ((VECTOR(uint8_t, 16))(0x61L))))).even))))))))).hi + ((VECTOR(uint8_t, 4))(0x32L))))).wwzwyyww))).s6605147435366206, (uint8_t)p_79))).sbc79 + ((VECTOR(uint8_t, 4))(1UL))))).lo & ((VECTOR(uint8_t, 2))(252UL))))), 5UL, 0x93L)).hi, ((VECTOR(uint8_t, 2))(0x63L)))))))) | ((VECTOR(uint8_t, 2))(4UL))))).yxxx, (uint8_t)p_78))).ywwxxzwzyyxwyyyy))), ((VECTOR(uint8_t, 16))(250UL))))), ((VECTOR(uint8_t, 16))(0x07L)), ((VECTOR(uint8_t, 16))(0xFEL)))))))).s6ef8))).wzyxwwww + ((VECTOR(uint8_t, 8))(9UL))))).s6640671207131066 + ((VECTOR(uint8_t, 16))(255UL))))), ((VECTOR(uint8_t, 16))(0xEEL)), ((VECTOR(uint8_t, 16))(249UL))))).sf5, ((VECTOR(uint8_t, 2))(0x8BL))))), ((VECTOR(uint8_t, 2))(2UL)), 1UL, ((VECTOR(uint8_t, 8))(0xA8L)), ((VECTOR(uint8_t, 2))(0UL)), 0x77L)).s27))).xyyxxxyy))).s76))).yxyxyyyx))).s07))), 251UL)).ywxyxyyx >> ((VECTOR(uint8_t, 8))(8))))).lo))).hi, ((VECTOR(uint8_t, 2))(0x1BL))))).xyyxxyxy + ((VECTOR(uint8_t, 8))(1UL))))).odd << ((VECTOR(uint8_t, 4))(8))))).yxwzyxww + ((VECTOR(uint8_t, 8))(255UL))))).s01, ((VECTOR(uint8_t, 2))(255UL)))))))), ((VECTOR(uint8_t, 2))(0xE1L)), 255UL, 4UL)).s42))).yxxx + ((VECTOR(uint8_t, 4))(250UL))))).w) , p_79))
        { /* block id: 101 */
            int32_t *l_383[1][3][6];
            VECTOR(int32_t, 2) l_419 = (VECTOR(int32_t, 2))(1L, 0x0691C2DDL);
            uint16_t *l_443 = (void*)0;
            uint16_t *l_444 = &p_1211->g_46;
            VECTOR(int64_t, 16) l_463 = (VECTOR(int64_t, 16))(9L, (VECTOR(int64_t, 4))(9L, (VECTOR(int64_t, 2))(9L, 0x56B083A68753D4A6L), 0x56B083A68753D4A6L), 0x56B083A68753D4A6L, 9L, 0x56B083A68753D4A6L, (VECTOR(int64_t, 2))(9L, 0x56B083A68753D4A6L), (VECTOR(int64_t, 2))(9L, 0x56B083A68753D4A6L), 9L, 0x56B083A68753D4A6L, 9L, 0x56B083A68753D4A6L);
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 6; k++)
                        l_383[i][j][k] = &l_311;
                }
            }
            ++l_394;
            for (l_387 = 0; (l_387 >= (-26)); l_387 = safe_sub_func_int32_t_s_s(l_387, 4))
            { /* block id: 105 */
                int32_t *l_408 = &p_1211->g_409;
                VECTOR(uint8_t, 16) l_427 = (VECTOR(uint8_t, 16))(0x31L, (VECTOR(uint8_t, 4))(0x31L, (VECTOR(uint8_t, 2))(0x31L, 0xB5L), 0xB5L), 0xB5L, 0x31L, 0xB5L, (VECTOR(uint8_t, 2))(0x31L, 0xB5L), (VECTOR(uint8_t, 2))(0x31L, 0xB5L), 0x31L, 0xB5L, 0x31L, 0xB5L);
                int16_t *l_432 = (void*)0;
                int16_t *l_433 = (void*)0;
                int16_t *l_434[7][6] = {{&p_1211->g_114[0][0][1],(void*)0,(void*)0,&p_1211->g_114[0][0][1],&p_1211->g_114[0][0][1],(void*)0},{&p_1211->g_114[0][0][1],(void*)0,(void*)0,&p_1211->g_114[0][0][1],&p_1211->g_114[0][0][1],(void*)0},{&p_1211->g_114[0][0][1],(void*)0,(void*)0,&p_1211->g_114[0][0][1],&p_1211->g_114[0][0][1],(void*)0},{&p_1211->g_114[0][0][1],(void*)0,(void*)0,&p_1211->g_114[0][0][1],&p_1211->g_114[0][0][1],(void*)0},{&p_1211->g_114[0][0][1],(void*)0,(void*)0,&p_1211->g_114[0][0][1],&p_1211->g_114[0][0][1],(void*)0},{&p_1211->g_114[0][0][1],(void*)0,(void*)0,&p_1211->g_114[0][0][1],&p_1211->g_114[0][0][1],(void*)0},{&p_1211->g_114[0][0][1],(void*)0,(void*)0,&p_1211->g_114[0][0][1],&p_1211->g_114[0][0][1],(void*)0}};
                int i, j;
                (*l_317) = func_86((p_1211->g_114[0][0][1] != ((0L >= ((p_1211->g_290.x ^= (safe_sub_func_int64_t_s_s((safe_div_func_int8_t_s_s((((safe_sub_func_uint16_t_u_u((((void*)0 != p_1211->g_405) && 8L), (((*l_408) |= l_294.z) , (safe_mul_func_uint8_t_u_u((((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 8))(((safe_sub_func_int16_t_s_s((l_388[1][2][0] = ((GROUP_DIVERGE(2, 1) > (safe_add_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(p_1211->g_418.zwwzzzxwxyyywwzx)).sdd, ((VECTOR(int32_t, 4))(p_79, ((VECTOR(int32_t, 2))(l_419.xy)), 0x0B770644L)).even, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-1L), 0x3CD05673L)), 0x3C212574L, (-7L))), ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 8))(((((safe_sub_func_uint16_t_u_u(((((VECTOR(uint8_t, 16))(255UL, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(0UL, ((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(p_1211->g_426.s4601033566000121)) + ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(l_427.s9e56daf9049f8b04)).s2fc5 | ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(248UL, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((safe_lshift_func_int8_t_s_u((l_427.s3 < (**p_1211->g_243)), p_78)), 255UL, 0xD7L, 0x01L)).xzzyxywy * ((VECTOR(uint8_t, 8))(0xBEL))))), p_1211->g_252.s5, p_1211->g_114[0][0][1], 255UL, 0x60L, 0UL, 8UL, 0x3FL)), ((VECTOR(uint8_t, 16))(0UL))))).s0b15))).wxwyxyzw, ((VECTOR(uint8_t, 8))(255UL))))).lo, ((VECTOR(uint8_t, 4))(1UL)), ((VECTOR(uint8_t, 4))(252UL))))).wxxzzyyz, ((VECTOR(uint8_t, 8))(0xC3L))))).s2065746276723040))).sb5, ((VECTOR(uint8_t, 2))(4UL)), ((VECTOR(uint8_t, 2))(0xFCL))))) & ((VECTOR(uint8_t, 2))(254UL))))).yyyyxxxx, ((VECTOR(uint8_t, 8))(0xE5L)), ((VECTOR(uint8_t, 8))(0xD6L))))), 0xDBL, 250UL, 0x3FL, 1UL, ((VECTOR(uint8_t, 2))(0x03L)), 246UL)).hi * ((VECTOR(uint8_t, 8))(1UL))))), ((VECTOR(uint8_t, 2))(0x6CL)), ((VECTOR(uint8_t, 2))(0xE7L)), p_1211->g_227.s4, 0xB1L, 0x03L)).sa <= p_78) <= l_361.y), p_1211->g_347.s3)) <= GROUP_DIVERGE(0, 1)) ^ p_79) >= p_1211->g_409), 0L, p_78, ((VECTOR(int32_t, 4))(0x0D101B95L)), 5L)).s3013034325100372, ((VECTOR(int32_t, 16))(0x0F08702EL))))).s59bf))).yzyzywyy && ((VECTOR(int32_t, 8))(0x1550B86BL))))).s60))).yxxy, ((VECTOR(int32_t, 4))(0x21439164L))))), 0x3542B9ABL, ((VECTOR(int32_t, 2))(0x7E8DE898L)), (-5L))).s0 == l_427.s7) , (-6L)) , &p_1211->g_243) == (void*)0), p_1211->g_114[0][0][2])), 0x116EL))) != p_1211->g_123.y)), p_1211->g_114[0][0][1])) < p_78), 4294967295UL, ((VECTOR(uint32_t, 4))(2UL)), 4294967287UL, 0xF4EC2916L)).s6544100552335643, ((VECTOR(uint32_t, 16))(4294967293UL)), ((VECTOR(uint32_t, 16))(0UL))))).s3 > 0L), 255UL))))) >= p_78) & p_79), p_79)), p_1211->g_45))) , p_1211->g_72)) >= l_427.sa)), l_317, p_1211);
                if (p_79)
                    goto lbl_460;
            }
lbl_460:
            l_387 &= (p_1211->g_123.z = ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_435.s7700473060743643)).s49, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(2L, 0x0F7A66A8L)), ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(0x42B68AB6L, 0x230BEB46L)).xyxy & ((VECTOR(int32_t, 4))((((0xCB823477D80CB692L || ((l_436 != l_437) == l_384)) || (safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))((0L != (safe_rshift_func_int16_t_s_u((((void*)0 != l_442) , p_78), ((*l_444)--)))), ((VECTOR(uint8_t, 2))(0UL, 0xEAL)), 0x47L)).z, 0))) & (safe_add_func_uint8_t_u_u((safe_div_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint32_t_u_u(((safe_sub_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(0L, 2)), 0xD62DL)) & l_388[0][0][0]), 9L)), p_78)), p_1211->g_309.s2)), l_459[0][2][2]))), 3L, 0L, 1L))))), ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 4))(0x054D075AL))))).odd))), ((VECTOR(int32_t, 2))(0x45B14A58L))))), ((VECTOR(int32_t, 2))(2L))))).odd);
            for (p_1211->g_409 = 0; (p_1211->g_409 <= (-25)); --p_1211->g_409)
            { /* block id: 117 */
                return l_463.s6d;
            }
        }
        else
        { /* block id: 120 */
            uint8_t l_478 = 253UL;
            VECTOR(int8_t, 4) l_485 = (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0L), 0L);
            uint64_t l_489 = 0xE6F82C0090C8D6C6L;
            VECTOR(uint32_t, 2) l_500 = (VECTOR(uint32_t, 2))(0xDCAD494BL, 0x554EECB2L);
            uint8_t *l_511[2][2][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
            int32_t l_523 = 1L;
            int8_t *l_524[10];
            int32_t l_529[3];
            int32_t *l_530 = (void*)0;
            int32_t *l_531 = &l_391;
            int i, j, k;
            for (i = 0; i < 10; i++)
                l_524[i] = (void*)0;
            for (i = 0; i < 3; i++)
                l_529[i] = 0x39B170CCL;
            for (l_390 = 2; (l_390 == 5); ++l_390)
            { /* block id: 123 */
                uint8_t l_499 = 0xF4L;
                int32_t l_501 = 0x1EC4A3D9L;
                int32_t l_504[7][2][4] = {{{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL},{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL}},{{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL},{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL}},{{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL},{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL}},{{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL},{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL}},{{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL},{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL}},{{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL},{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL}},{{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL},{0x3A2E7278L,0x4AF3987DL,0L,0x4AF3987DL}}};
                int i, j, k;
                for (p_1211->g_66 = 0; (p_1211->g_66 < 24); ++p_1211->g_66)
                { /* block id: 126 */
                    int8_t l_483 = 0x70L;
                    uint64_t *l_488[7][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
                    uint64_t l_503 = 0UL;
                    int i, j;
                    l_504[5][0][1] ^= (((((VECTOR(uint64_t, 2))(l_468.s20)).hi & (((VECTOR(uint16_t, 2))(p_1211->g_469.xx)).lo <= (((((safe_mod_func_uint32_t_u_u((safe_div_func_int64_t_s_s((safe_div_func_int64_t_s_s((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))((safe_div_func_uint64_t_u_u((l_478 ^ ((*l_287) ^= (p_1211->g_60.s4 = ((safe_mul_func_int16_t_s_s(((safe_div_func_uint8_t_u_u(l_483, ((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 16))(l_484.s41b7fb2f34a4ecdb)).even, (uint8_t)((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 2))(7L, 0x43L)).yyxyxyyx, ((VECTOR(int8_t, 16))((~0L), ((VECTOR(int8_t, 2))((!((VECTOR(int8_t, 8))(l_485.xzzxxwyw)).s41))), ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))(l_486.saf)), ((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_1211->g_487.yy)), (l_488[2][0] != (p_79 , ((l_489 && ((safe_add_func_uint64_t_u_u((l_501 = (safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(p_79, ((safe_unary_minus_func_uint32_t_u(l_499)) , ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_500.xxxy)), 0x4B29C9F3L, l_385, ((VECTOR(uint32_t, 4))(0UL)), ((VECTOR(uint32_t, 2))(3UL)), 4294967295UL, 0x6F4E9507L, 0x3406F536L, 4294967295UL)).s1))), 5L)), (-8L)))), 0x347EC98E259EECD2L)) < 0UL)) , &p_1211->g_72))), ((VECTOR(int8_t, 2))(0x3FL)), 2L, (-1L), 2L)).hi, (int8_t)1L, (int8_t)p_1211->g_487.x))).wxwzxyywxxzyyzyx, ((VECTOR(int8_t, 16))(0L)), ((VECTOR(int8_t, 16))(0x16L))))).s74))), ((VECTOR(int8_t, 4))(0x43L)), ((VECTOR(int8_t, 2))(9L)), 0x16L, ((VECTOR(int8_t, 2))(0x41L)), 0x12L, (-7L))).hi))).s16, (uint8_t)p_79))).even))).even))).wwwzzzxyzwyyyxwy))).sc)) > 0x02L), l_483)) , 0UL)))), l_489)), p_1211->g_39, p_1211->g_124.w, 0x1994L, 0L, l_502, 0x0032L, (-1L))).s1042226755417302 && ((VECTOR(int16_t, 16))(0x14DDL))))).sd ^ p_79), p_79)), (*p_1211->g_244))), FAKE_DIVERGE(p_1211->local_1_offset, get_local_id(1), 10))) ^ 0x21D5L) != l_483) & (-10L)) ^ l_503))) > p_1211->g_227.sb) , (-8L));
                }
            }
            (*l_531) = (p_1211->g_426.s0 | (((+(((9UL <= (0xC025F8E8L <= (safe_lshift_func_int8_t_s_u(l_489, 0)))) , p_1211->g_339.s4) != (safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 4))(0xFE06L, (safe_mul_func_uint8_t_u_u((l_387 = p_78), (safe_sub_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((((safe_mod_func_uint64_t_u_u((l_529[1] |= (((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))((!((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(0x3DL, 0x00L, (safe_lshift_func_uint8_t_u_u(0xC1L, 7)), 1L, (l_384 = (l_523 = (((VECTOR(uint32_t, 2))((~((VECTOR(uint32_t, 16))(p_1211->g_522.s5615417036067147)).sd0))).odd , ((VECTOR(int8_t, 4))((-1L), 0x33L, 0x3DL, (-1L))).z))), (l_316 = (((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 16))(((*l_296) = (((l_523 = p_1211->g_185.z) != p_1211->g_469.x) , p_79)), ((VECTOR(uint64_t, 4))(18446744073709551615UL)), ((VECTOR(uint64_t, 4))(0UL)), GROUP_DIVERGE(0, 1), ((VECTOR(uint64_t, 4))(0x5DBB858AD6E88C56L)), 1UL, 0x98528BD31E24CD95L)), ((VECTOR(uint64_t, 16))(18446744073709551611UL))))).sca3b + ((VECTOR(uint64_t, 4))(0UL))))).yxzzxwzwwzxxyzyw + ((VECTOR(uint64_t, 16))(0x8EE4602D044D2B7AL))))).s47af | ((VECTOR(uint64_t, 4))(0xAF3A976CC8AD50CDL))))).z , p_1211->g_66)), ((VECTOR(int8_t, 2))(0x3CL)), ((VECTOR(int8_t, 2))(0x5DL)), 0L, (-8L), 0x48L, 1L, 0x02L, 0L)) != ((VECTOR(int8_t, 16))(1L))))).lo, ((VECTOR(int8_t, 8))((-6L)))))).s24))), ((VECTOR(int8_t, 2))(0x26L)), ((VECTOR(int8_t, 2))(0L))))), ((VECTOR(int8_t, 2))(0x45L))))).odd ^ 0L)), p_1211->g_487.y)) <= 0L) >= 0L), 6)), p_1211->g_253.z)), p_78)))), 0x7991L, 65535UL)).y, 11)))) || 0x0DL) < 1L));
            (*l_317) = func_86(p_1211->g_532, l_317, p_1211);
            (*l_317) = func_86(p_78, l_317, p_1211);
        }
    }
    else
    { /* block id: 144 */
        int32_t *l_533 = &p_1211->g_532;
        int32_t **l_534 = &l_533;
        int32_t *l_535 = &l_316;
        int32_t *l_536 = &l_316;
        int32_t *l_537[8][7][4] = {{{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0}},{{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0}},{{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0}},{{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0}},{{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0}},{{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0}},{{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0}},{{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0},{(void*)0,&p_1211->g_315,(void*)0,(void*)0}}};
        uint32_t l_538 = 4294967295UL;
        int32_t l_544 = 1L;
        int64_t ***l_564 = &l_437;
        VECTOR(int16_t, 2) l_566 = (VECTOR(int16_t, 2))(7L, (-5L));
        int i, j, k;
        (*l_534) = l_533;
        l_538++;
        for (p_1211->g_39 = (-9); (p_1211->g_39 != 18); p_1211->g_39 = safe_add_func_int64_t_s_s(p_1211->g_39, 1))
        { /* block id: 149 */
            int32_t l_543 = 1L;
            int32_t l_545 = (-6L);
            int32_t l_546 = 0x1DB626EDL;
            int32_t l_547[3];
            int64_t ***l_562 = (void*)0;
            int64_t ****l_563[1][2];
            int i, j;
            for (i = 0; i < 3; i++)
                l_547[i] = (-1L);
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_563[i][j] = (void*)0;
            }
            ++p_1211->g_548;
            (*l_536) = ((*l_533) <= (0x69L > (!(((safe_lshift_func_int16_t_s_u(p_1211->g_201.s0, 6)) , GROUP_DIVERGE(2, 1)) , ((safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), 0)) ^ (safe_add_func_int64_t_s_s((safe_rshift_func_int16_t_s_u(((*l_536) < ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1211->g_561.xy)), 0x540BL, 0x1062L)).x), p_79)), l_358.s0)))))));
            (*l_536) = (((l_564 = l_562) == (l_565 = &l_437)) && ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(l_566.xxyy)).wzxwzxxzxywzwzyx && ((VECTOR(int16_t, 2))(0x75DCL, 0x0A64L)).yyxyxyyxyyyxyxyx))).s5);
            if (p_1211->g_66)
                continue;
        }
    }
    p_1211->g_35 = &l_388[0][5][0];
    return p_1211->g_567.s23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1211->g_243 p_1211->g_152
 * writes: p_1211->g_243 p_1211->g_152
 */
uint16_t  func_80(uint64_t  p_81, int32_t * p_82, uint64_t  p_83, int64_t  p_84, uint64_t  p_85, struct S0 * p_1211)
{ /* block id: 68 */
    int64_t * volatile **l_245[9][2] = {{&p_1211->g_243,&p_1211->g_243},{&p_1211->g_243,&p_1211->g_243},{&p_1211->g_243,&p_1211->g_243},{&p_1211->g_243,&p_1211->g_243},{&p_1211->g_243,&p_1211->g_243},{&p_1211->g_243,&p_1211->g_243},{&p_1211->g_243,&p_1211->g_243},{&p_1211->g_243,&p_1211->g_243},{&p_1211->g_243,&p_1211->g_243}};
    int i, j;
    p_1211->g_243 = p_1211->g_243;
    for (p_1211->g_152 = 29; (p_1211->g_152 <= (-7)); p_1211->g_152--)
    { /* block id: 72 */
        uint32_t l_248 = 0x6B2812F9L;
        return l_248;
    }
    for (p_81 = 15; (p_81 > 50); p_81 = safe_add_func_int16_t_s_s(p_81, 9))
    { /* block id: 77 */
        uint64_t l_251 = 18446744073709551615UL;
        (*p_82) &= l_251;
    }
    return p_81;
}


/* ------------------------------------------ */
/* 
 * reads : p_1211->g_45 p_1211->g_39 p_1211->g_60 p_1211->g_185 p_1211->g_136 p_1211->g_151 p_1211->g_124 p_1211->g_200 p_1211->g_201 p_1211->g_202 p_1211->g_123 p_1211->g_218 p_1211->g_227 p_1211->g_228 p_1211->g_58 p_1211->g_72 p_1211->g_152
 * writes: p_1211->g_45 p_1211->g_124 p_1211->g_200 p_1211->g_136 p_1211->g_158 p_1211->g_39 p_1211->g_58 p_1211->g_114 p_1211->g_185 p_1211->g_66
 */
int32_t * func_86(uint32_t  p_87, int32_t ** p_88, struct S0 * p_1211)
{ /* block id: 39 */
    uint16_t l_182 = 65527UL;
    int32_t l_188 = 0L;
    int64_t l_189 = 0x4541896A90EFADFCL;
    int32_t l_191 = 0x1E18D16AL;
    VECTOR(int32_t, 16) l_199 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 9L), 9L), 9L, (-1L), 9L, (VECTOR(int32_t, 2))((-1L), 9L), (VECTOR(int32_t, 2))((-1L), 9L), (-1L), 9L, (-1L), 9L);
    VECTOR(int8_t, 8) l_210 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x66L), 0x66L), 0x66L, 1L, 0x66L);
    VECTOR(int64_t, 4) l_220 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x0D1E6000DC731C7AL), 0x0D1E6000DC731C7AL);
    VECTOR(int16_t, 8) l_226 = (VECTOR(int16_t, 8))(0x4938L, (VECTOR(int16_t, 4))(0x4938L, (VECTOR(int16_t, 2))(0x4938L, (-6L)), (-6L)), (-6L), 0x4938L, (-6L));
    uint32_t l_233 = 1UL;
    int i;
lbl_207:
    for (p_1211->g_45 = 0; (p_1211->g_45 <= (-23)); p_1211->g_45 = safe_sub_func_int8_t_s_s(p_1211->g_45, 3))
    { /* block id: 42 */
        VECTOR(int64_t, 4) l_171 = (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0L), 0L);
        int64_t *l_186[3];
        VECTOR(int32_t, 4) l_187 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L);
        int32_t *l_190[5][9][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
        uint16_t l_192 = 65530UL;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_186[i] = (void*)0;
        p_1211->g_124.z = (((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 4))(l_171.wxyz)).yzyyzxzwwywxxxzw, (int64_t)((safe_mul_func_uint16_t_u_u(p_1211->g_45, p_87)) , (((l_187.x = (p_1211->g_39 , ((safe_add_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u(p_1211->g_60.s8, FAKE_DIVERGE(p_1211->local_0_offset, get_local_id(0), 10))), (0L <= (safe_mod_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(l_182, (safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 16))(p_1211->g_185.wxxyxyzxzwxzzyxz)).s6, p_1211->g_60.sb)))), p_1211->g_136))))) >= (0x76L > 0UL)))) < 1UL) != p_1211->g_151[9][1])), (int64_t)p_87))), (int64_t)0L, (int64_t)0x4279BA28D29272B4L))).s4a, ((VECTOR(int64_t, 2))(0x5E2D799BCC955CC5L)), ((VECTOR(int64_t, 2))(0x7894A56F00AD78DDL))))), (int64_t)(-1L)))).yyyyyxyxyxxxxyyx && ((VECTOR(int64_t, 16))((-1L)))))).sb & p_1211->g_124.x);
        if (l_188)
            continue;
        if (l_189)
            break;
        l_192--;
    }
    for (l_191 = 0; (l_191 == 17); l_191++)
    { /* block id: 51 */
        int32_t l_205 = 0x6E354DE9L;
        int8_t *l_211 = &p_1211->g_136;
        uint8_t *l_212[9];
        VECTOR(uint32_t, 8) l_217 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xE649DB06L), 0xE649DB06L), 0xE649DB06L, 0UL, 0xE649DB06L);
        VECTOR(int64_t, 2) l_221 = (VECTOR(int64_t, 2))(3L, 0x4CF3DB9BA9420591L);
        VECTOR(int8_t, 8) l_232 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
        uint16_t *l_234 = &l_182;
        uint32_t *l_235 = (void*)0;
        uint32_t *l_236 = &p_1211->g_58;
        int16_t *l_237 = &p_1211->g_114[0][0][1];
        int16_t *l_238 = (void*)0;
        int16_t *l_239 = (void*)0;
        int16_t *l_240[3][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int32_t *l_241 = (void*)0;
        int32_t *l_242 = &p_1211->g_66;
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_212[i] = (void*)0;
        for (l_189 = 0; (l_189 < 0); l_189 = safe_add_func_int16_t_s_s(l_189, 2))
        { /* block id: 54 */
            int32_t *l_206 = (void*)0;
            p_1211->g_200.x = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_199.sf896)), ((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(p_1211->g_200.zxyxwzyw)).s24 | ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(p_1211->g_201.s1760455610500513)).s3c, ((VECTOR(int32_t, 4))(p_1211->g_202.s09ff)).lo)))))), 0x002F6A40L)).x, (safe_add_func_int8_t_s_s(l_205, 0x7AL)), (-8L), 0x332FBC19L)).s6;
        }
        if (l_188)
            goto lbl_207;
        (*l_242) = ((0x1091BD80D6C42FE2L < ((-3L) >= (p_1211->g_158.z = (p_87 > (+((*l_211) = ((VECTOR(int8_t, 16))(l_210.s4125743612731464)).s1)))))) , (safe_sub_func_int64_t_s_s(((p_1211->g_39 ^= p_1211->g_123.z) , (safe_rshift_func_int8_t_s_s((((VECTOR(uint32_t, 2))(l_217.s12)).hi || (((((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 2))(0x0EBB66C72AFDCE9CL, 6L)).xyyxyyyxyyyxyxxy, ((VECTOR(int64_t, 2))(p_1211->g_218.s0c)).yxxyyyyxyxyxyxyy))).s3 | ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 2))(1L, 0x2A6B191FAFA0813FL)).xyyy, ((VECTOR(int64_t, 16))(0x6B9AEA71C1B7A625L, 0L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x7075D504036086FEL, (-1L))), 0x1ADE92C07549F4B5L, 0x520E4C8265B78EF1L)), (safe_unary_minus_func_uint8_t_u(((p_1211->g_185.w = (((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 4))(0x5249B6448E566735L, p_87, 2L, 0L)), (int64_t)(((VECTOR(int64_t, 4))(l_220.wxxw)).x && p_1211->g_185.w)))).zxwzzywxyzxyzyyw & ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 4))(l_221.yxxy)).ywxzzyzxywxxwxwx, ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x7753B144C403348DL, 0x2CEEA6717F7A9C5BL)), 0L, 0x62A3ADF52CC46ED3L)), 0x132735B19036AB27L, (((*l_237) = (((safe_sub_func_uint16_t_u_u((((*l_236) = (((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 4))(0xEFD0L, ((*l_234) = ((((safe_mul_func_uint16_t_u_u(p_1211->g_185.x, ((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 8))(l_226.s50102770)).s1302276136223425, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 4))(p_1211->g_227.s24a4)).xwxxzwyx, ((VECTOR(int16_t, 2))(p_1211->g_228.yz)).xyxxyyyy))) && ((VECTOR(int16_t, 8))((!(safe_unary_minus_func_int8_t_s((0x3F51L || (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(l_232.s67630372)).s3, ((VECTOR(uint8_t, 16))(0x8FL, 4UL, l_217.s2, p_1211->g_58, ((VECTOR(uint8_t, 8))(253UL)), 0x46L, ((VECTOR(uint8_t, 2))(1UL)), 0x0EL)).s4)))))), ((VECTOR(int16_t, 4))((-1L))), 0x6AD2L, 1L, 0L))))).s1367777247411527))).s2)) <= l_233) & GROUP_DIVERGE(0, 1)) == GROUP_DIVERGE(1, 1))), 0x1C39L, 0xCD99L)).hi, ((VECTOR(uint16_t, 2))(65534UL)), ((VECTOR(uint16_t, 2))(0UL))))).even ^ p_1211->g_72)) || 0x6632790AL), FAKE_DIVERGE(p_1211->group_0_offset, get_group_id(0), 10))) & p_87) , l_205)) , 0x27F134EDAD87BE30L), 0x564C0EFDCFCFFB79L, 0x4B4D59CA45EEAA3BL)).s2545464715100704 && ((VECTOR(int64_t, 16))(0x7AD29E822CC9B3C0L))))))))))).sc & p_1211->g_185.y) & 0x73EBDBE55BCE8932L) , (-1L))) >= p_87))), ((VECTOR(int64_t, 8))(0x4BDC005F595BD59CL)), 0x7DE7EC967DBF7A08L)).s7738, ((VECTOR(int64_t, 4))((-1L)))))).z) || l_220.z) | 0x58A7735CL)), 3))), p_1211->g_152)));
    }
    return &p_1211->g_152;
}


/* ------------------------------------------ */
/* 
 * reads : p_1211->g_60 p_1211->g_72 p_1211->g_114 p_1211->g_23 p_1211->g_66 p_1211->g_123 p_1211->g_124 p_1211->g_126 p_1211->g_136 p_1211->g_144 p_1211->g_147 p_1211->g_58 p_1211->g_152 p_1211->g_158 p_1211->g_45
 * writes: p_1211->g_72 p_1211->g_114 p_1211->g_136 p_1211->g_66 p_1211->g_151 p_1211->g_152 p_1211->g_58
 */
uint8_t  func_92(uint64_t  p_93, struct S0 * p_1211)
{ /* block id: 15 */
    int16_t l_98[6][3][8] = {{{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L}},{{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L}},{{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L}},{{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L}},{{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L}},{{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L},{1L,3L,0x2731L,(-1L),5L,0x687EL,0x687EL,5L}}};
    uint64_t *l_106[1];
    int32_t l_107 = (-4L);
    int32_t l_108 = 1L;
    int16_t *l_113 = &p_1211->g_114[0][0][1];
    int32_t *l_115 = &l_108;
    uint32_t l_116 = 0xA3312545L;
    int32_t l_117 = 0L;
    VECTOR(int32_t, 2) l_125 = (VECTOR(int32_t, 2))(0x3F436BBBL, (-10L));
    int32_t *l_161[3];
    int8_t l_162 = 0x47L;
    uint16_t l_163 = 0xB611L;
    int32_t **l_166[4][2];
    int32_t *l_167 = (void*)0;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_106[i] = &p_1211->g_72;
    for (i = 0; i < 3; i++)
        l_161[i] = (void*)0;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
            l_166[i][j] = &l_161[2];
    }
    l_117 &= (((*l_115) = (((l_98[3][0][6] < (((VECTOR(int16_t, 4))((!((VECTOR(int16_t, 2))(8L, 0x71BBL)).yyyx))).y <= ((safe_unary_minus_func_uint16_t_u(((void*)0 != &p_1211->g_35))) <= 8L))) , p_1211->g_60.s5) , (!(FAKE_DIVERGE(p_1211->local_1_offset, get_local_id(1), 10) ^ (safe_div_func_int32_t_s_s(l_98[3][0][6], (GROUP_DIVERGE(0, 1) , (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(0xA4L, ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((((!((safe_add_func_int16_t_s_s(((--p_1211->g_72) , ((*l_113) ^= (l_108 , (safe_add_func_int16_t_s_s(((((l_108 | (GROUP_DIVERGE(1, 1) >= (0x100AL && 0x4D7BL))) | l_98[3][0][6]) > 0x793B77CE632A9BCAL) >= 0xD0L), l_107))))), 0x2E4FL)) , l_107)) | p_1211->g_23) != 0UL) <= p_1211->g_66), 1UL, 0x7AL, 254UL)), FAKE_DIVERGE(p_1211->local_0_offset, get_local_id(0), 10), 0x7FL, 0x59L, 1UL))))).s03, ((VECTOR(uint8_t, 2))(247UL))))), ((VECTOR(uint8_t, 2))(255UL)), 0xC2L, 2UL, 0xAFL)).s0, p_93))))))))) == l_116);
    for (p_1211->g_72 = 0; (p_1211->g_72 != 6); p_1211->g_72 = safe_add_func_int32_t_s_s(p_1211->g_72, 9))
    { /* block id: 22 */
        VECTOR(int32_t, 16) l_122 = (VECTOR(int32_t, 16))(0x159807BFL, (VECTOR(int32_t, 4))(0x159807BFL, (VECTOR(int32_t, 2))(0x159807BFL, 0x1DE4BE9BL), 0x1DE4BE9BL), 0x1DE4BE9BL, 0x159807BFL, 0x1DE4BE9BL, (VECTOR(int32_t, 2))(0x159807BFL, 0x1DE4BE9BL), (VECTOR(int32_t, 2))(0x159807BFL, 0x1DE4BE9BL), 0x159807BFL, 0x1DE4BE9BL, 0x159807BFL, 0x1DE4BE9BL);
        int8_t *l_146[9][1] = {{&p_1211->g_147},{&p_1211->g_147},{&p_1211->g_147},{&p_1211->g_147},{&p_1211->g_147},{&p_1211->g_147},{&p_1211->g_147},{&p_1211->g_147},{&p_1211->g_147}};
        uint32_t l_153 = 1UL;
        int i, j;
        for (l_116 = 22; (l_116 == 59); ++l_116)
        { /* block id: 25 */
            VECTOR(int32_t, 2) l_127 = (VECTOR(int32_t, 2))(4L, 0x77FF8115L);
            int8_t *l_135[4][6][7] = {{{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136}},{{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136}},{{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136}},{{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136},{&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136,&p_1211->g_136}}};
            int32_t **l_139 = &p_1211->g_35;
            int32_t *l_148 = (void*)0;
            int32_t *l_149 = &p_1211->g_66;
            int64_t *l_150 = &p_1211->g_151[1][1];
            uint32_t *l_159 = (void*)0;
            uint32_t *l_160 = &p_1211->g_58;
            int i, j, k;
            p_1211->g_152 &= ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(3L, 0x4B103803L, 0L, 0x72713C04L)).zxzxyzxz && ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_122.s3f)), ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(p_1211->g_123.yw)).xxyy, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(0x20F27F31L, 5L, 0x494BBC9CL, (-1L))).wwzzzxxwxyxzzywy & ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(p_1211->g_124.xxwxwyzy)).s5121142022206740, ((VECTOR(int32_t, 4))((~((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(0L, 0x7793343CL, 0x2F20CC15L, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_125.yx)).yyxx < ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(p_1211->g_126.s51)).xyyyyyyxxyyxxxyx && ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(l_127.yyyy)).ywywwwyywwxwwzzx && ((VECTOR(int32_t, 8))((-7L), 0x34005F24L, ((*l_115) = (p_93 & (safe_unary_minus_func_int16_t_s(((((((VECTOR(int64_t, 2))(0x246BF972A186CBB3L, 0x1ED58A6F271719B2L)).lo & p_93) , (((safe_add_func_uint8_t_u_u(p_93, (((VECTOR(uint16_t, 8))(0xFE05L, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))(((+(((safe_mod_func_uint32_t_u_u(p_93, (safe_sub_func_int16_t_s_s((((*l_150) = ((p_1211->g_136 ^= (l_127.y = p_1211->g_60.s7)) <= (((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(abs(((VECTOR(int32_t, 4))(0x460B7989L, ((VECTOR(int32_t, 8))(0L, (((void*)0 == l_139) , ((*l_149) &= ((((safe_mul_func_uint16_t_u_u(((((-7L) | ((((GROUP_DIVERGE(2, 1) , p_1211->g_144) != l_146[8][0]) && p_93) > l_122.sb)) , 0x6AL) | 251UL), (*l_115))) > p_1211->g_124.x) & p_1211->g_114[0][0][0]) | 0L))), 0x067FBE65L, (-1L), l_122.sd, ((VECTOR(int32_t, 2))((-1L))), 0x52C490EAL)).s1, 1L, 0L)).ywwwwyxz))) + ((VECTOR(uint32_t, 8))(0xF5E7D465L))))).s1 != 0x7C118C14L))) , 0x2F51L), p_1211->g_147)))) , (void*)0) == l_149)) <= p_93), p_1211->g_58, ((VECTOR(uint16_t, 2))(2UL)), 0x4F16L, 0x719FL, p_1211->g_58, FAKE_DIVERGE(p_1211->group_2_offset, get_group_id(2), 10), p_93, ((VECTOR(uint16_t, 2))(65531UL)), p_1211->g_123.y, p_93, ((VECTOR(uint16_t, 2))(0xAD04L)), 0UL)).s22f9, ((VECTOR(uint16_t, 4))(0xA753L))))).odd & ((VECTOR(uint16_t, 2))(65535UL))))), 1UL, p_93, ((VECTOR(uint16_t, 2))(0x25E5L)), 65535UL)).s1 || p_1211->g_124.x))) ^ (*l_115)) || p_93)) <= (-1L)) ^ (*l_115)))))), 0x7E2B2F50L, ((VECTOR(int32_t, 4))(1L)))).s4716766717476334))).s58a0 == ((VECTOR(int32_t, 4))(0x19461F97L))))).zywxzxzyzzywwxxx))).sab2f, ((VECTOR(int32_t, 4))(0x5109F9FEL)), ((VECTOR(int32_t, 4))(0x72A2847BL))))), ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 4))(0x32CA02B6L)), (-5L), ((VECTOR(int32_t, 2))((-5L))), 0x5273E089L)).s767d))) | ((VECTOR(int32_t, 4))(0x167583C8L))))).odd, ((VECTOR(int32_t, 2))(0x4419D7C7L))))), 0x11EF0519L, 0x0BB27ABAL, 0L)), ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 2))((-7L))), (-9L), 0x7B154BADL)).s24c2))).wyyxzwwywzzwxxwz))), ((VECTOR(int32_t, 16))(0x2EF93D6DL)))))))).s7103, ((VECTOR(int32_t, 4))(0x12959A4AL))))).zxxwzxyz && ((VECTOR(int32_t, 8))(0x622BE461L))))), ((VECTOR(int32_t, 2))(7L)), (*l_115), ((VECTOR(int32_t, 2))(0L)), 0x00360E74L)), ((VECTOR(int32_t, 16))(0x064A00A4L)), ((VECTOR(int32_t, 16))((-1L)))))).hi))).s14 == ((VECTOR(int32_t, 2))(0x2CE832F5L))))).yxyx && ((VECTOR(int32_t, 4))((-1L)))))), ((VECTOR(int32_t, 4))(0x7701544EL)), ((VECTOR(int32_t, 4))(0x6D21F6B6L))))), 1L, (-10L), 0x52FCFA51L, 0x47D40A0EL)) | ((VECTOR(int32_t, 8))(0x36E5AD53L))))).s5;
            (*l_115) = ((((&p_1211->g_151[1][1] == &p_1211->g_151[4][3]) , l_153) <= ((!(((((safe_add_func_int64_t_s_s(0x6DC4C047494BA823L, (((safe_add_func_uint32_t_u_u(0xB438F1E3L, p_1211->g_114[0][0][0])) ^ ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1211->g_158.xw)), 247UL, 1UL)).x) < ((*l_160) |= (*l_115))))) >= 0x6A58094179F390BBL) , (void*)0) != (void*)0) > p_93)) , 0x97L)) ^ 0x1E79L);
        }
    }
    ++l_163;
    l_167 = (void*)0;
    return p_1211->g_45;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1212;
    struct S0* p_1211 = &c_1212;
    struct S0 c_1213 = {
        (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 0x6923L), 0x6923L), // p_1211->g_10
        0x683648BDL, // p_1211->g_23
        (void*)0, // p_1211->g_24
        {{{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL}},{{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL}},{{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL}},{{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL}},{{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL}},{{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL},{248UL,248UL,1UL,0xFCL,247UL,0xFCL,1UL,248UL}}}, // p_1211->g_30
        (void*)0, // p_1211->g_35
        0x6C51938DL, // p_1211->g_39
        0x718DA91EL, // p_1211->g_45
        0x90A3L, // p_1211->g_46
        0x6691CFE0L, // p_1211->g_58
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967291UL), 4294967291UL), 4294967291UL, 1UL, 4294967291UL, (VECTOR(uint32_t, 2))(1UL, 4294967291UL), (VECTOR(uint32_t, 2))(1UL, 4294967291UL), 1UL, 4294967291UL, 1UL, 4294967291UL), // p_1211->g_60
        0x1EFB40ACL, // p_1211->g_66
        0x688490A13E652FC6L, // p_1211->g_72
        {{{0x4F0FL,0x4F0FL,0x4F0FL}}}, // p_1211->g_114
        (VECTOR(int32_t, 4))(0x6638A31BL, (VECTOR(int32_t, 2))(0x6638A31BL, 0x244B56EBL), 0x244B56EBL), // p_1211->g_123
        (VECTOR(int32_t, 4))(0x4DA777F1L, (VECTOR(int32_t, 2))(0x4DA777F1L, 0x46CA2038L), 0x46CA2038L), // p_1211->g_124
        (VECTOR(int32_t, 8))(0x2BAF640DL, (VECTOR(int32_t, 4))(0x2BAF640DL, (VECTOR(int32_t, 2))(0x2BAF640DL, (-7L)), (-7L)), (-7L), 0x2BAF640DL, (-7L)), // p_1211->g_126
        1L, // p_1211->g_136
        0L, // p_1211->g_145
        &p_1211->g_145, // p_1211->g_144
        0x10L, // p_1211->g_147
        {{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L},{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L},{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L},{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L},{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L},{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L},{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L},{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L},{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L},{5L,5L,0x1F4849B7B0AB9F43L,0x2F1BDA687BA435B6L}}, // p_1211->g_151
        0x6F0A70CCL, // p_1211->g_152
        (VECTOR(uint8_t, 4))(0x57L, (VECTOR(uint8_t, 2))(0x57L, 0x7EL), 0x7EL), // p_1211->g_158
        (VECTOR(int16_t, 4))(0x00A3L, (VECTOR(int16_t, 2))(0x00A3L, 0L), 0L), // p_1211->g_185
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x6692F46DL), 0x6692F46DL), // p_1211->g_200
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x14E3F6DEL), 0x14E3F6DEL), 0x14E3F6DEL, 1L, 0x14E3F6DEL), // p_1211->g_201
        (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 6L), 6L), 6L, (-7L), 6L, (VECTOR(int32_t, 2))((-7L), 6L), (VECTOR(int32_t, 2))((-7L), 6L), (-7L), 6L, (-7L), 6L), // p_1211->g_202
        (VECTOR(int64_t, 16))(0x6852D1D08208A4D0L, (VECTOR(int64_t, 4))(0x6852D1D08208A4D0L, (VECTOR(int64_t, 2))(0x6852D1D08208A4D0L, (-1L)), (-1L)), (-1L), 0x6852D1D08208A4D0L, (-1L), (VECTOR(int64_t, 2))(0x6852D1D08208A4D0L, (-1L)), (VECTOR(int64_t, 2))(0x6852D1D08208A4D0L, (-1L)), 0x6852D1D08208A4D0L, (-1L), 0x6852D1D08208A4D0L, (-1L)), // p_1211->g_218
        (VECTOR(int16_t, 16))(0x6AB0L, (VECTOR(int16_t, 4))(0x6AB0L, (VECTOR(int16_t, 2))(0x6AB0L, 0x6DA7L), 0x6DA7L), 0x6DA7L, 0x6AB0L, 0x6DA7L, (VECTOR(int16_t, 2))(0x6AB0L, 0x6DA7L), (VECTOR(int16_t, 2))(0x6AB0L, 0x6DA7L), 0x6AB0L, 0x6DA7L, 0x6AB0L, 0x6DA7L), // p_1211->g_227
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x1636L), 0x1636L), // p_1211->g_228
        &p_1211->g_151[1][1], // p_1211->g_244
        &p_1211->g_244, // p_1211->g_243
        (VECTOR(int16_t, 8))(0x76DDL, (VECTOR(int16_t, 4))(0x76DDL, (VECTOR(int16_t, 2))(0x76DDL, 1L), 1L), 1L, 0x76DDL, 1L), // p_1211->g_252
        (VECTOR(uint16_t, 4))(0x2F1CL, (VECTOR(uint16_t, 2))(0x2F1CL, 0x5C33L), 0x5C33L), // p_1211->g_253
        (VECTOR(int64_t, 2))((-10L), (-8L)), // p_1211->g_290
        (VECTOR(uint8_t, 16))(0xCAL, (VECTOR(uint8_t, 4))(0xCAL, (VECTOR(uint8_t, 2))(0xCAL, 0x93L), 0x93L), 0x93L, 0xCAL, 0x93L, (VECTOR(uint8_t, 2))(0xCAL, 0x93L), (VECTOR(uint8_t, 2))(0xCAL, 0x93L), 0xCAL, 0x93L, 0xCAL, 0x93L), // p_1211->g_309
        0x3AF44911L, // p_1211->g_315
        (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xF2L), 0xF2L), 0xF2L, 255UL, 0xF2L), // p_1211->g_339
        (VECTOR(uint8_t, 16))(0x4FL, (VECTOR(uint8_t, 4))(0x4FL, (VECTOR(uint8_t, 2))(0x4FL, 6UL), 6UL), 6UL, 0x4FL, 6UL, (VECTOR(uint8_t, 2))(0x4FL, 6UL), (VECTOR(uint8_t, 2))(0x4FL, 6UL), 0x4FL, 6UL, 0x4FL, 6UL), // p_1211->g_347
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 252UL), 252UL), 252UL, 1UL, 252UL, (VECTOR(uint8_t, 2))(1UL, 252UL), (VECTOR(uint8_t, 2))(1UL, 252UL), 1UL, 252UL, 1UL, 252UL), // p_1211->g_348
        (VECTOR(uint8_t, 8))(0xCCL, (VECTOR(uint8_t, 4))(0xCCL, (VECTOR(uint8_t, 2))(0xCCL, 0xB5L), 0xB5L), 0xB5L, 0xCCL, 0xB5L), // p_1211->g_356
        (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0x6FL), 0x6FL), // p_1211->g_363
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 2UL), 2UL), // p_1211->g_366
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x3CL), 0x3CL), // p_1211->g_373
        0UL, // p_1211->g_407
        &p_1211->g_407, // p_1211->g_406
        &p_1211->g_406, // p_1211->g_405
        (-1L), // p_1211->g_409
        (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x4B031B8EL), 0x4B031B8EL), // p_1211->g_418
        (VECTOR(uint8_t, 8))(0xC6L, (VECTOR(uint8_t, 4))(0xC6L, (VECTOR(uint8_t, 2))(0xC6L, 0xEFL), 0xEFL), 0xEFL, 0xC6L, 0xEFL), // p_1211->g_426
        (VECTOR(uint16_t, 2))(65534UL, 0x2362L), // p_1211->g_469
        (VECTOR(int8_t, 2))(1L, (-3L)), // p_1211->g_487
        (VECTOR(uint32_t, 8))(0xF6316BA7L, (VECTOR(uint32_t, 4))(0xF6316BA7L, (VECTOR(uint32_t, 2))(0xF6316BA7L, 0xF4EF33DCL), 0xF4EF33DCL), 0xF4EF33DCL, 0xF6316BA7L, 0xF4EF33DCL), // p_1211->g_522
        0x2BF46CE3L, // p_1211->g_532
        0x76E31C2BL, // p_1211->g_548
        (VECTOR(int16_t, 2))(0L, 0x2899L), // p_1211->g_561
        (VECTOR(int64_t, 8))(0x1478362BA5A2977BL, (VECTOR(int64_t, 4))(0x1478362BA5A2977BL, (VECTOR(int64_t, 2))(0x1478362BA5A2977BL, 1L), 1L), 1L, 0x1478362BA5A2977BL, 1L), // p_1211->g_567
        (VECTOR(int16_t, 16))(0x29DDL, (VECTOR(int16_t, 4))(0x29DDL, (VECTOR(int16_t, 2))(0x29DDL, 0x3729L), 0x3729L), 0x3729L, 0x29DDL, 0x3729L, (VECTOR(int16_t, 2))(0x29DDL, 0x3729L), (VECTOR(int16_t, 2))(0x29DDL, 0x3729L), 0x29DDL, 0x3729L, 0x29DDL, 0x3729L), // p_1211->g_575
        (VECTOR(int16_t, 4))(0x31ABL, (VECTOR(int16_t, 2))(0x31ABL, 0L), 0L), // p_1211->g_607
        (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 0x97L), 0x97L), // p_1211->g_625
        (VECTOR(int8_t, 8))(0x1AL, (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, 0L), 0L), 0L, 0x1AL, 0L), // p_1211->g_665
        (VECTOR(uint8_t, 8))(0x72L, (VECTOR(uint8_t, 4))(0x72L, (VECTOR(uint8_t, 2))(0x72L, 0x27L), 0x27L), 0x27L, 0x72L, 0x27L), // p_1211->g_677
        (VECTOR(uint8_t, 2))(0xBDL, 0x9CL), // p_1211->g_678
        &p_1211->g_244, // p_1211->g_686
        &p_1211->g_686, // p_1211->g_685
        &p_1211->g_685, // p_1211->g_684
        (VECTOR(int16_t, 2))(0x3EC9L, (-3L)), // p_1211->g_688
        (VECTOR(int16_t, 2))((-6L), (-1L)), // p_1211->g_695
        (VECTOR(int32_t, 2))(0L, 3L), // p_1211->g_710
        (VECTOR(int32_t, 16))(0x74EC1EBAL, (VECTOR(int32_t, 4))(0x74EC1EBAL, (VECTOR(int32_t, 2))(0x74EC1EBAL, 5L), 5L), 5L, 0x74EC1EBAL, 5L, (VECTOR(int32_t, 2))(0x74EC1EBAL, 5L), (VECTOR(int32_t, 2))(0x74EC1EBAL, 5L), 0x74EC1EBAL, 5L, 0x74EC1EBAL, 5L), // p_1211->g_716
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x0B5EL), 0x0B5EL), 0x0B5EL, (-1L), 0x0B5EL), // p_1211->g_782
        {18446744073709551615UL,18446744073709551615UL}, // p_1211->g_832
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int64_t, 2))(1L, 1L), (VECTOR(int64_t, 2))(1L, 1L), 1L, 1L, 1L, 1L), // p_1211->g_836
        &p_1211->g_35, // p_1211->g_839
        (VECTOR(int8_t, 16))(0x2AL, (VECTOR(int8_t, 4))(0x2AL, (VECTOR(int8_t, 2))(0x2AL, 0x63L), 0x63L), 0x63L, 0x2AL, 0x63L, (VECTOR(int8_t, 2))(0x2AL, 0x63L), (VECTOR(int8_t, 2))(0x2AL, 0x63L), 0x2AL, 0x63L, 0x2AL, 0x63L), // p_1211->g_877
        (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 0x10FFL), 0x10FFL), // p_1211->g_885
        (VECTOR(int16_t, 16))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), (-1L)), (-1L)), (-1L), (-5L), (-1L), (VECTOR(int16_t, 2))((-5L), (-1L)), (VECTOR(int16_t, 2))((-5L), (-1L)), (-5L), (-1L), (-5L), (-1L)), // p_1211->g_889
        (VECTOR(int16_t, 2))(0L, 0x2180L), // p_1211->g_890
        (VECTOR(int16_t, 8))(0x6632L, (VECTOR(int16_t, 4))(0x6632L, (VECTOR(int16_t, 2))(0x6632L, 2L), 2L), 2L, 0x6632L, 2L), // p_1211->g_891
        (VECTOR(int16_t, 8))(0x7E9AL, (VECTOR(int16_t, 4))(0x7E9AL, (VECTOR(int16_t, 2))(0x7E9AL, (-7L)), (-7L)), (-7L), 0x7E9AL, (-7L)), // p_1211->g_910
        (VECTOR(int16_t, 2))(1L, 0x043CL), // p_1211->g_911
        (VECTOR(int16_t, 2))(0x52AFL, 0x31BEL), // p_1211->g_912
        (VECTOR(int16_t, 16))(0x2456L, (VECTOR(int16_t, 4))(0x2456L, (VECTOR(int16_t, 2))(0x2456L, 0x75B9L), 0x75B9L), 0x75B9L, 0x2456L, 0x75B9L, (VECTOR(int16_t, 2))(0x2456L, 0x75B9L), (VECTOR(int16_t, 2))(0x2456L, 0x75B9L), 0x2456L, 0x75B9L, 0x2456L, 0x75B9L), // p_1211->g_913
        (VECTOR(int16_t, 8))(0x313CL, (VECTOR(int16_t, 4))(0x313CL, (VECTOR(int16_t, 2))(0x313CL, 5L), 5L), 5L, 0x313CL, 5L), // p_1211->g_915
        (VECTOR(int16_t, 8))(0x5BE5L, (VECTOR(int16_t, 4))(0x5BE5L, (VECTOR(int16_t, 2))(0x5BE5L, 0x389BL), 0x389BL), 0x389BL, 0x5BE5L, 0x389BL), // p_1211->g_919
        {1L,1L}, // p_1211->g_960
        (VECTOR(uint64_t, 4))(0x0DA2D819F46C6E39L, (VECTOR(uint64_t, 2))(0x0DA2D819F46C6E39L, 18446744073709551611UL), 18446744073709551611UL), // p_1211->g_983
        (VECTOR(int16_t, 8))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0L), 0L), 0L, (-7L), 0L), // p_1211->g_988
        (VECTOR(int32_t, 2))(0x0C4EC590L, 0x5DF76C36L), // p_1211->g_989
        4UL, // p_1211->g_994
        0xA32637CE76DBDCF7L, // p_1211->g_1027
        1L, // p_1211->g_1040
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x68L), 0x68L), // p_1211->g_1049
        (VECTOR(int8_t, 8))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, (-1L)), (-1L)), (-1L), 0x05L, (-1L)), // p_1211->g_1054
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1211->g_1101
        (void*)0, // p_1211->g_1102
        0x4B531A62L, // p_1211->g_1105
        (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x5FE3L), 0x5FE3L), // p_1211->g_1149
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x1B37L), 0x1B37L), // p_1211->g_1150
        0x44A4L, // p_1211->g_1154
        (void*)0, // p_1211->g_1167
        {{&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,(void*)0,(void*)0,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167},{&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,(void*)0,(void*)0,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167},{&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,(void*)0,(void*)0,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167},{&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,(void*)0,(void*)0,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167},{&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,(void*)0,(void*)0,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167},{&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,(void*)0,(void*)0,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167},{&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,(void*)0,(void*)0,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167},{&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,(void*)0,(void*)0,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167},{&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167,(void*)0,(void*)0,&p_1211->g_1167,&p_1211->g_1167,&p_1211->g_1167}}, // p_1211->g_1166
        sequence_input[get_global_id(0)], // p_1211->global_0_offset
        sequence_input[get_global_id(1)], // p_1211->global_1_offset
        sequence_input[get_global_id(2)], // p_1211->global_2_offset
        sequence_input[get_local_id(0)], // p_1211->local_0_offset
        sequence_input[get_local_id(1)], // p_1211->local_1_offset
        sequence_input[get_local_id(2)], // p_1211->local_2_offset
        sequence_input[get_group_id(0)], // p_1211->group_0_offset
        sequence_input[get_group_id(1)], // p_1211->group_1_offset
        sequence_input[get_group_id(2)], // p_1211->group_2_offset
    };
    c_1212 = c_1213;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1211);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1211->g_10.x, "p_1211->g_10.x", print_hash_value);
    transparent_crc(p_1211->g_10.y, "p_1211->g_10.y", print_hash_value);
    transparent_crc(p_1211->g_10.z, "p_1211->g_10.z", print_hash_value);
    transparent_crc(p_1211->g_10.w, "p_1211->g_10.w", print_hash_value);
    transparent_crc(p_1211->g_23, "p_1211->g_23", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1211->g_30[i][j][k], "p_1211->g_30[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1211->g_39, "p_1211->g_39", print_hash_value);
    transparent_crc(p_1211->g_45, "p_1211->g_45", print_hash_value);
    transparent_crc(p_1211->g_46, "p_1211->g_46", print_hash_value);
    transparent_crc(p_1211->g_58, "p_1211->g_58", print_hash_value);
    transparent_crc(p_1211->g_60.s0, "p_1211->g_60.s0", print_hash_value);
    transparent_crc(p_1211->g_60.s1, "p_1211->g_60.s1", print_hash_value);
    transparent_crc(p_1211->g_60.s2, "p_1211->g_60.s2", print_hash_value);
    transparent_crc(p_1211->g_60.s3, "p_1211->g_60.s3", print_hash_value);
    transparent_crc(p_1211->g_60.s4, "p_1211->g_60.s4", print_hash_value);
    transparent_crc(p_1211->g_60.s5, "p_1211->g_60.s5", print_hash_value);
    transparent_crc(p_1211->g_60.s6, "p_1211->g_60.s6", print_hash_value);
    transparent_crc(p_1211->g_60.s7, "p_1211->g_60.s7", print_hash_value);
    transparent_crc(p_1211->g_60.s8, "p_1211->g_60.s8", print_hash_value);
    transparent_crc(p_1211->g_60.s9, "p_1211->g_60.s9", print_hash_value);
    transparent_crc(p_1211->g_60.sa, "p_1211->g_60.sa", print_hash_value);
    transparent_crc(p_1211->g_60.sb, "p_1211->g_60.sb", print_hash_value);
    transparent_crc(p_1211->g_60.sc, "p_1211->g_60.sc", print_hash_value);
    transparent_crc(p_1211->g_60.sd, "p_1211->g_60.sd", print_hash_value);
    transparent_crc(p_1211->g_60.se, "p_1211->g_60.se", print_hash_value);
    transparent_crc(p_1211->g_60.sf, "p_1211->g_60.sf", print_hash_value);
    transparent_crc(p_1211->g_66, "p_1211->g_66", print_hash_value);
    transparent_crc(p_1211->g_72, "p_1211->g_72", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1211->g_114[i][j][k], "p_1211->g_114[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1211->g_123.x, "p_1211->g_123.x", print_hash_value);
    transparent_crc(p_1211->g_123.y, "p_1211->g_123.y", print_hash_value);
    transparent_crc(p_1211->g_123.z, "p_1211->g_123.z", print_hash_value);
    transparent_crc(p_1211->g_123.w, "p_1211->g_123.w", print_hash_value);
    transparent_crc(p_1211->g_124.x, "p_1211->g_124.x", print_hash_value);
    transparent_crc(p_1211->g_124.y, "p_1211->g_124.y", print_hash_value);
    transparent_crc(p_1211->g_124.z, "p_1211->g_124.z", print_hash_value);
    transparent_crc(p_1211->g_124.w, "p_1211->g_124.w", print_hash_value);
    transparent_crc(p_1211->g_126.s0, "p_1211->g_126.s0", print_hash_value);
    transparent_crc(p_1211->g_126.s1, "p_1211->g_126.s1", print_hash_value);
    transparent_crc(p_1211->g_126.s2, "p_1211->g_126.s2", print_hash_value);
    transparent_crc(p_1211->g_126.s3, "p_1211->g_126.s3", print_hash_value);
    transparent_crc(p_1211->g_126.s4, "p_1211->g_126.s4", print_hash_value);
    transparent_crc(p_1211->g_126.s5, "p_1211->g_126.s5", print_hash_value);
    transparent_crc(p_1211->g_126.s6, "p_1211->g_126.s6", print_hash_value);
    transparent_crc(p_1211->g_126.s7, "p_1211->g_126.s7", print_hash_value);
    transparent_crc(p_1211->g_136, "p_1211->g_136", print_hash_value);
    transparent_crc(p_1211->g_145, "p_1211->g_145", print_hash_value);
    transparent_crc(p_1211->g_147, "p_1211->g_147", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1211->g_151[i][j], "p_1211->g_151[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1211->g_152, "p_1211->g_152", print_hash_value);
    transparent_crc(p_1211->g_158.x, "p_1211->g_158.x", print_hash_value);
    transparent_crc(p_1211->g_158.y, "p_1211->g_158.y", print_hash_value);
    transparent_crc(p_1211->g_158.z, "p_1211->g_158.z", print_hash_value);
    transparent_crc(p_1211->g_158.w, "p_1211->g_158.w", print_hash_value);
    transparent_crc(p_1211->g_185.x, "p_1211->g_185.x", print_hash_value);
    transparent_crc(p_1211->g_185.y, "p_1211->g_185.y", print_hash_value);
    transparent_crc(p_1211->g_185.z, "p_1211->g_185.z", print_hash_value);
    transparent_crc(p_1211->g_185.w, "p_1211->g_185.w", print_hash_value);
    transparent_crc(p_1211->g_200.x, "p_1211->g_200.x", print_hash_value);
    transparent_crc(p_1211->g_200.y, "p_1211->g_200.y", print_hash_value);
    transparent_crc(p_1211->g_200.z, "p_1211->g_200.z", print_hash_value);
    transparent_crc(p_1211->g_200.w, "p_1211->g_200.w", print_hash_value);
    transparent_crc(p_1211->g_201.s0, "p_1211->g_201.s0", print_hash_value);
    transparent_crc(p_1211->g_201.s1, "p_1211->g_201.s1", print_hash_value);
    transparent_crc(p_1211->g_201.s2, "p_1211->g_201.s2", print_hash_value);
    transparent_crc(p_1211->g_201.s3, "p_1211->g_201.s3", print_hash_value);
    transparent_crc(p_1211->g_201.s4, "p_1211->g_201.s4", print_hash_value);
    transparent_crc(p_1211->g_201.s5, "p_1211->g_201.s5", print_hash_value);
    transparent_crc(p_1211->g_201.s6, "p_1211->g_201.s6", print_hash_value);
    transparent_crc(p_1211->g_201.s7, "p_1211->g_201.s7", print_hash_value);
    transparent_crc(p_1211->g_202.s0, "p_1211->g_202.s0", print_hash_value);
    transparent_crc(p_1211->g_202.s1, "p_1211->g_202.s1", print_hash_value);
    transparent_crc(p_1211->g_202.s2, "p_1211->g_202.s2", print_hash_value);
    transparent_crc(p_1211->g_202.s3, "p_1211->g_202.s3", print_hash_value);
    transparent_crc(p_1211->g_202.s4, "p_1211->g_202.s4", print_hash_value);
    transparent_crc(p_1211->g_202.s5, "p_1211->g_202.s5", print_hash_value);
    transparent_crc(p_1211->g_202.s6, "p_1211->g_202.s6", print_hash_value);
    transparent_crc(p_1211->g_202.s7, "p_1211->g_202.s7", print_hash_value);
    transparent_crc(p_1211->g_202.s8, "p_1211->g_202.s8", print_hash_value);
    transparent_crc(p_1211->g_202.s9, "p_1211->g_202.s9", print_hash_value);
    transparent_crc(p_1211->g_202.sa, "p_1211->g_202.sa", print_hash_value);
    transparent_crc(p_1211->g_202.sb, "p_1211->g_202.sb", print_hash_value);
    transparent_crc(p_1211->g_202.sc, "p_1211->g_202.sc", print_hash_value);
    transparent_crc(p_1211->g_202.sd, "p_1211->g_202.sd", print_hash_value);
    transparent_crc(p_1211->g_202.se, "p_1211->g_202.se", print_hash_value);
    transparent_crc(p_1211->g_202.sf, "p_1211->g_202.sf", print_hash_value);
    transparent_crc(p_1211->g_218.s0, "p_1211->g_218.s0", print_hash_value);
    transparent_crc(p_1211->g_218.s1, "p_1211->g_218.s1", print_hash_value);
    transparent_crc(p_1211->g_218.s2, "p_1211->g_218.s2", print_hash_value);
    transparent_crc(p_1211->g_218.s3, "p_1211->g_218.s3", print_hash_value);
    transparent_crc(p_1211->g_218.s4, "p_1211->g_218.s4", print_hash_value);
    transparent_crc(p_1211->g_218.s5, "p_1211->g_218.s5", print_hash_value);
    transparent_crc(p_1211->g_218.s6, "p_1211->g_218.s6", print_hash_value);
    transparent_crc(p_1211->g_218.s7, "p_1211->g_218.s7", print_hash_value);
    transparent_crc(p_1211->g_218.s8, "p_1211->g_218.s8", print_hash_value);
    transparent_crc(p_1211->g_218.s9, "p_1211->g_218.s9", print_hash_value);
    transparent_crc(p_1211->g_218.sa, "p_1211->g_218.sa", print_hash_value);
    transparent_crc(p_1211->g_218.sb, "p_1211->g_218.sb", print_hash_value);
    transparent_crc(p_1211->g_218.sc, "p_1211->g_218.sc", print_hash_value);
    transparent_crc(p_1211->g_218.sd, "p_1211->g_218.sd", print_hash_value);
    transparent_crc(p_1211->g_218.se, "p_1211->g_218.se", print_hash_value);
    transparent_crc(p_1211->g_218.sf, "p_1211->g_218.sf", print_hash_value);
    transparent_crc(p_1211->g_227.s0, "p_1211->g_227.s0", print_hash_value);
    transparent_crc(p_1211->g_227.s1, "p_1211->g_227.s1", print_hash_value);
    transparent_crc(p_1211->g_227.s2, "p_1211->g_227.s2", print_hash_value);
    transparent_crc(p_1211->g_227.s3, "p_1211->g_227.s3", print_hash_value);
    transparent_crc(p_1211->g_227.s4, "p_1211->g_227.s4", print_hash_value);
    transparent_crc(p_1211->g_227.s5, "p_1211->g_227.s5", print_hash_value);
    transparent_crc(p_1211->g_227.s6, "p_1211->g_227.s6", print_hash_value);
    transparent_crc(p_1211->g_227.s7, "p_1211->g_227.s7", print_hash_value);
    transparent_crc(p_1211->g_227.s8, "p_1211->g_227.s8", print_hash_value);
    transparent_crc(p_1211->g_227.s9, "p_1211->g_227.s9", print_hash_value);
    transparent_crc(p_1211->g_227.sa, "p_1211->g_227.sa", print_hash_value);
    transparent_crc(p_1211->g_227.sb, "p_1211->g_227.sb", print_hash_value);
    transparent_crc(p_1211->g_227.sc, "p_1211->g_227.sc", print_hash_value);
    transparent_crc(p_1211->g_227.sd, "p_1211->g_227.sd", print_hash_value);
    transparent_crc(p_1211->g_227.se, "p_1211->g_227.se", print_hash_value);
    transparent_crc(p_1211->g_227.sf, "p_1211->g_227.sf", print_hash_value);
    transparent_crc(p_1211->g_228.x, "p_1211->g_228.x", print_hash_value);
    transparent_crc(p_1211->g_228.y, "p_1211->g_228.y", print_hash_value);
    transparent_crc(p_1211->g_228.z, "p_1211->g_228.z", print_hash_value);
    transparent_crc(p_1211->g_228.w, "p_1211->g_228.w", print_hash_value);
    transparent_crc(p_1211->g_252.s0, "p_1211->g_252.s0", print_hash_value);
    transparent_crc(p_1211->g_252.s1, "p_1211->g_252.s1", print_hash_value);
    transparent_crc(p_1211->g_252.s2, "p_1211->g_252.s2", print_hash_value);
    transparent_crc(p_1211->g_252.s3, "p_1211->g_252.s3", print_hash_value);
    transparent_crc(p_1211->g_252.s4, "p_1211->g_252.s4", print_hash_value);
    transparent_crc(p_1211->g_252.s5, "p_1211->g_252.s5", print_hash_value);
    transparent_crc(p_1211->g_252.s6, "p_1211->g_252.s6", print_hash_value);
    transparent_crc(p_1211->g_252.s7, "p_1211->g_252.s7", print_hash_value);
    transparent_crc(p_1211->g_253.x, "p_1211->g_253.x", print_hash_value);
    transparent_crc(p_1211->g_253.y, "p_1211->g_253.y", print_hash_value);
    transparent_crc(p_1211->g_253.z, "p_1211->g_253.z", print_hash_value);
    transparent_crc(p_1211->g_253.w, "p_1211->g_253.w", print_hash_value);
    transparent_crc(p_1211->g_290.x, "p_1211->g_290.x", print_hash_value);
    transparent_crc(p_1211->g_290.y, "p_1211->g_290.y", print_hash_value);
    transparent_crc(p_1211->g_309.s0, "p_1211->g_309.s0", print_hash_value);
    transparent_crc(p_1211->g_309.s1, "p_1211->g_309.s1", print_hash_value);
    transparent_crc(p_1211->g_309.s2, "p_1211->g_309.s2", print_hash_value);
    transparent_crc(p_1211->g_309.s3, "p_1211->g_309.s3", print_hash_value);
    transparent_crc(p_1211->g_309.s4, "p_1211->g_309.s4", print_hash_value);
    transparent_crc(p_1211->g_309.s5, "p_1211->g_309.s5", print_hash_value);
    transparent_crc(p_1211->g_309.s6, "p_1211->g_309.s6", print_hash_value);
    transparent_crc(p_1211->g_309.s7, "p_1211->g_309.s7", print_hash_value);
    transparent_crc(p_1211->g_309.s8, "p_1211->g_309.s8", print_hash_value);
    transparent_crc(p_1211->g_309.s9, "p_1211->g_309.s9", print_hash_value);
    transparent_crc(p_1211->g_309.sa, "p_1211->g_309.sa", print_hash_value);
    transparent_crc(p_1211->g_309.sb, "p_1211->g_309.sb", print_hash_value);
    transparent_crc(p_1211->g_309.sc, "p_1211->g_309.sc", print_hash_value);
    transparent_crc(p_1211->g_309.sd, "p_1211->g_309.sd", print_hash_value);
    transparent_crc(p_1211->g_309.se, "p_1211->g_309.se", print_hash_value);
    transparent_crc(p_1211->g_309.sf, "p_1211->g_309.sf", print_hash_value);
    transparent_crc(p_1211->g_315, "p_1211->g_315", print_hash_value);
    transparent_crc(p_1211->g_339.s0, "p_1211->g_339.s0", print_hash_value);
    transparent_crc(p_1211->g_339.s1, "p_1211->g_339.s1", print_hash_value);
    transparent_crc(p_1211->g_339.s2, "p_1211->g_339.s2", print_hash_value);
    transparent_crc(p_1211->g_339.s3, "p_1211->g_339.s3", print_hash_value);
    transparent_crc(p_1211->g_339.s4, "p_1211->g_339.s4", print_hash_value);
    transparent_crc(p_1211->g_339.s5, "p_1211->g_339.s5", print_hash_value);
    transparent_crc(p_1211->g_339.s6, "p_1211->g_339.s6", print_hash_value);
    transparent_crc(p_1211->g_339.s7, "p_1211->g_339.s7", print_hash_value);
    transparent_crc(p_1211->g_347.s0, "p_1211->g_347.s0", print_hash_value);
    transparent_crc(p_1211->g_347.s1, "p_1211->g_347.s1", print_hash_value);
    transparent_crc(p_1211->g_347.s2, "p_1211->g_347.s2", print_hash_value);
    transparent_crc(p_1211->g_347.s3, "p_1211->g_347.s3", print_hash_value);
    transparent_crc(p_1211->g_347.s4, "p_1211->g_347.s4", print_hash_value);
    transparent_crc(p_1211->g_347.s5, "p_1211->g_347.s5", print_hash_value);
    transparent_crc(p_1211->g_347.s6, "p_1211->g_347.s6", print_hash_value);
    transparent_crc(p_1211->g_347.s7, "p_1211->g_347.s7", print_hash_value);
    transparent_crc(p_1211->g_347.s8, "p_1211->g_347.s8", print_hash_value);
    transparent_crc(p_1211->g_347.s9, "p_1211->g_347.s9", print_hash_value);
    transparent_crc(p_1211->g_347.sa, "p_1211->g_347.sa", print_hash_value);
    transparent_crc(p_1211->g_347.sb, "p_1211->g_347.sb", print_hash_value);
    transparent_crc(p_1211->g_347.sc, "p_1211->g_347.sc", print_hash_value);
    transparent_crc(p_1211->g_347.sd, "p_1211->g_347.sd", print_hash_value);
    transparent_crc(p_1211->g_347.se, "p_1211->g_347.se", print_hash_value);
    transparent_crc(p_1211->g_347.sf, "p_1211->g_347.sf", print_hash_value);
    transparent_crc(p_1211->g_348.s0, "p_1211->g_348.s0", print_hash_value);
    transparent_crc(p_1211->g_348.s1, "p_1211->g_348.s1", print_hash_value);
    transparent_crc(p_1211->g_348.s2, "p_1211->g_348.s2", print_hash_value);
    transparent_crc(p_1211->g_348.s3, "p_1211->g_348.s3", print_hash_value);
    transparent_crc(p_1211->g_348.s4, "p_1211->g_348.s4", print_hash_value);
    transparent_crc(p_1211->g_348.s5, "p_1211->g_348.s5", print_hash_value);
    transparent_crc(p_1211->g_348.s6, "p_1211->g_348.s6", print_hash_value);
    transparent_crc(p_1211->g_348.s7, "p_1211->g_348.s7", print_hash_value);
    transparent_crc(p_1211->g_348.s8, "p_1211->g_348.s8", print_hash_value);
    transparent_crc(p_1211->g_348.s9, "p_1211->g_348.s9", print_hash_value);
    transparent_crc(p_1211->g_348.sa, "p_1211->g_348.sa", print_hash_value);
    transparent_crc(p_1211->g_348.sb, "p_1211->g_348.sb", print_hash_value);
    transparent_crc(p_1211->g_348.sc, "p_1211->g_348.sc", print_hash_value);
    transparent_crc(p_1211->g_348.sd, "p_1211->g_348.sd", print_hash_value);
    transparent_crc(p_1211->g_348.se, "p_1211->g_348.se", print_hash_value);
    transparent_crc(p_1211->g_348.sf, "p_1211->g_348.sf", print_hash_value);
    transparent_crc(p_1211->g_356.s0, "p_1211->g_356.s0", print_hash_value);
    transparent_crc(p_1211->g_356.s1, "p_1211->g_356.s1", print_hash_value);
    transparent_crc(p_1211->g_356.s2, "p_1211->g_356.s2", print_hash_value);
    transparent_crc(p_1211->g_356.s3, "p_1211->g_356.s3", print_hash_value);
    transparent_crc(p_1211->g_356.s4, "p_1211->g_356.s4", print_hash_value);
    transparent_crc(p_1211->g_356.s5, "p_1211->g_356.s5", print_hash_value);
    transparent_crc(p_1211->g_356.s6, "p_1211->g_356.s6", print_hash_value);
    transparent_crc(p_1211->g_356.s7, "p_1211->g_356.s7", print_hash_value);
    transparent_crc(p_1211->g_363.x, "p_1211->g_363.x", print_hash_value);
    transparent_crc(p_1211->g_363.y, "p_1211->g_363.y", print_hash_value);
    transparent_crc(p_1211->g_363.z, "p_1211->g_363.z", print_hash_value);
    transparent_crc(p_1211->g_363.w, "p_1211->g_363.w", print_hash_value);
    transparent_crc(p_1211->g_366.x, "p_1211->g_366.x", print_hash_value);
    transparent_crc(p_1211->g_366.y, "p_1211->g_366.y", print_hash_value);
    transparent_crc(p_1211->g_366.z, "p_1211->g_366.z", print_hash_value);
    transparent_crc(p_1211->g_366.w, "p_1211->g_366.w", print_hash_value);
    transparent_crc(p_1211->g_373.x, "p_1211->g_373.x", print_hash_value);
    transparent_crc(p_1211->g_373.y, "p_1211->g_373.y", print_hash_value);
    transparent_crc(p_1211->g_373.z, "p_1211->g_373.z", print_hash_value);
    transparent_crc(p_1211->g_373.w, "p_1211->g_373.w", print_hash_value);
    transparent_crc(p_1211->g_407, "p_1211->g_407", print_hash_value);
    transparent_crc(p_1211->g_409, "p_1211->g_409", print_hash_value);
    transparent_crc(p_1211->g_418.x, "p_1211->g_418.x", print_hash_value);
    transparent_crc(p_1211->g_418.y, "p_1211->g_418.y", print_hash_value);
    transparent_crc(p_1211->g_418.z, "p_1211->g_418.z", print_hash_value);
    transparent_crc(p_1211->g_418.w, "p_1211->g_418.w", print_hash_value);
    transparent_crc(p_1211->g_426.s0, "p_1211->g_426.s0", print_hash_value);
    transparent_crc(p_1211->g_426.s1, "p_1211->g_426.s1", print_hash_value);
    transparent_crc(p_1211->g_426.s2, "p_1211->g_426.s2", print_hash_value);
    transparent_crc(p_1211->g_426.s3, "p_1211->g_426.s3", print_hash_value);
    transparent_crc(p_1211->g_426.s4, "p_1211->g_426.s4", print_hash_value);
    transparent_crc(p_1211->g_426.s5, "p_1211->g_426.s5", print_hash_value);
    transparent_crc(p_1211->g_426.s6, "p_1211->g_426.s6", print_hash_value);
    transparent_crc(p_1211->g_426.s7, "p_1211->g_426.s7", print_hash_value);
    transparent_crc(p_1211->g_469.x, "p_1211->g_469.x", print_hash_value);
    transparent_crc(p_1211->g_469.y, "p_1211->g_469.y", print_hash_value);
    transparent_crc(p_1211->g_487.x, "p_1211->g_487.x", print_hash_value);
    transparent_crc(p_1211->g_487.y, "p_1211->g_487.y", print_hash_value);
    transparent_crc(p_1211->g_522.s0, "p_1211->g_522.s0", print_hash_value);
    transparent_crc(p_1211->g_522.s1, "p_1211->g_522.s1", print_hash_value);
    transparent_crc(p_1211->g_522.s2, "p_1211->g_522.s2", print_hash_value);
    transparent_crc(p_1211->g_522.s3, "p_1211->g_522.s3", print_hash_value);
    transparent_crc(p_1211->g_522.s4, "p_1211->g_522.s4", print_hash_value);
    transparent_crc(p_1211->g_522.s5, "p_1211->g_522.s5", print_hash_value);
    transparent_crc(p_1211->g_522.s6, "p_1211->g_522.s6", print_hash_value);
    transparent_crc(p_1211->g_522.s7, "p_1211->g_522.s7", print_hash_value);
    transparent_crc(p_1211->g_532, "p_1211->g_532", print_hash_value);
    transparent_crc(p_1211->g_548, "p_1211->g_548", print_hash_value);
    transparent_crc(p_1211->g_561.x, "p_1211->g_561.x", print_hash_value);
    transparent_crc(p_1211->g_561.y, "p_1211->g_561.y", print_hash_value);
    transparent_crc(p_1211->g_567.s0, "p_1211->g_567.s0", print_hash_value);
    transparent_crc(p_1211->g_567.s1, "p_1211->g_567.s1", print_hash_value);
    transparent_crc(p_1211->g_567.s2, "p_1211->g_567.s2", print_hash_value);
    transparent_crc(p_1211->g_567.s3, "p_1211->g_567.s3", print_hash_value);
    transparent_crc(p_1211->g_567.s4, "p_1211->g_567.s4", print_hash_value);
    transparent_crc(p_1211->g_567.s5, "p_1211->g_567.s5", print_hash_value);
    transparent_crc(p_1211->g_567.s6, "p_1211->g_567.s6", print_hash_value);
    transparent_crc(p_1211->g_567.s7, "p_1211->g_567.s7", print_hash_value);
    transparent_crc(p_1211->g_575.s0, "p_1211->g_575.s0", print_hash_value);
    transparent_crc(p_1211->g_575.s1, "p_1211->g_575.s1", print_hash_value);
    transparent_crc(p_1211->g_575.s2, "p_1211->g_575.s2", print_hash_value);
    transparent_crc(p_1211->g_575.s3, "p_1211->g_575.s3", print_hash_value);
    transparent_crc(p_1211->g_575.s4, "p_1211->g_575.s4", print_hash_value);
    transparent_crc(p_1211->g_575.s5, "p_1211->g_575.s5", print_hash_value);
    transparent_crc(p_1211->g_575.s6, "p_1211->g_575.s6", print_hash_value);
    transparent_crc(p_1211->g_575.s7, "p_1211->g_575.s7", print_hash_value);
    transparent_crc(p_1211->g_575.s8, "p_1211->g_575.s8", print_hash_value);
    transparent_crc(p_1211->g_575.s9, "p_1211->g_575.s9", print_hash_value);
    transparent_crc(p_1211->g_575.sa, "p_1211->g_575.sa", print_hash_value);
    transparent_crc(p_1211->g_575.sb, "p_1211->g_575.sb", print_hash_value);
    transparent_crc(p_1211->g_575.sc, "p_1211->g_575.sc", print_hash_value);
    transparent_crc(p_1211->g_575.sd, "p_1211->g_575.sd", print_hash_value);
    transparent_crc(p_1211->g_575.se, "p_1211->g_575.se", print_hash_value);
    transparent_crc(p_1211->g_575.sf, "p_1211->g_575.sf", print_hash_value);
    transparent_crc(p_1211->g_607.x, "p_1211->g_607.x", print_hash_value);
    transparent_crc(p_1211->g_607.y, "p_1211->g_607.y", print_hash_value);
    transparent_crc(p_1211->g_607.z, "p_1211->g_607.z", print_hash_value);
    transparent_crc(p_1211->g_607.w, "p_1211->g_607.w", print_hash_value);
    transparent_crc(p_1211->g_625.x, "p_1211->g_625.x", print_hash_value);
    transparent_crc(p_1211->g_625.y, "p_1211->g_625.y", print_hash_value);
    transparent_crc(p_1211->g_625.z, "p_1211->g_625.z", print_hash_value);
    transparent_crc(p_1211->g_625.w, "p_1211->g_625.w", print_hash_value);
    transparent_crc(p_1211->g_665.s0, "p_1211->g_665.s0", print_hash_value);
    transparent_crc(p_1211->g_665.s1, "p_1211->g_665.s1", print_hash_value);
    transparent_crc(p_1211->g_665.s2, "p_1211->g_665.s2", print_hash_value);
    transparent_crc(p_1211->g_665.s3, "p_1211->g_665.s3", print_hash_value);
    transparent_crc(p_1211->g_665.s4, "p_1211->g_665.s4", print_hash_value);
    transparent_crc(p_1211->g_665.s5, "p_1211->g_665.s5", print_hash_value);
    transparent_crc(p_1211->g_665.s6, "p_1211->g_665.s6", print_hash_value);
    transparent_crc(p_1211->g_665.s7, "p_1211->g_665.s7", print_hash_value);
    transparent_crc(p_1211->g_677.s0, "p_1211->g_677.s0", print_hash_value);
    transparent_crc(p_1211->g_677.s1, "p_1211->g_677.s1", print_hash_value);
    transparent_crc(p_1211->g_677.s2, "p_1211->g_677.s2", print_hash_value);
    transparent_crc(p_1211->g_677.s3, "p_1211->g_677.s3", print_hash_value);
    transparent_crc(p_1211->g_677.s4, "p_1211->g_677.s4", print_hash_value);
    transparent_crc(p_1211->g_677.s5, "p_1211->g_677.s5", print_hash_value);
    transparent_crc(p_1211->g_677.s6, "p_1211->g_677.s6", print_hash_value);
    transparent_crc(p_1211->g_677.s7, "p_1211->g_677.s7", print_hash_value);
    transparent_crc(p_1211->g_678.x, "p_1211->g_678.x", print_hash_value);
    transparent_crc(p_1211->g_678.y, "p_1211->g_678.y", print_hash_value);
    transparent_crc(p_1211->g_688.x, "p_1211->g_688.x", print_hash_value);
    transparent_crc(p_1211->g_688.y, "p_1211->g_688.y", print_hash_value);
    transparent_crc(p_1211->g_695.x, "p_1211->g_695.x", print_hash_value);
    transparent_crc(p_1211->g_695.y, "p_1211->g_695.y", print_hash_value);
    transparent_crc(p_1211->g_710.x, "p_1211->g_710.x", print_hash_value);
    transparent_crc(p_1211->g_710.y, "p_1211->g_710.y", print_hash_value);
    transparent_crc(p_1211->g_716.s0, "p_1211->g_716.s0", print_hash_value);
    transparent_crc(p_1211->g_716.s1, "p_1211->g_716.s1", print_hash_value);
    transparent_crc(p_1211->g_716.s2, "p_1211->g_716.s2", print_hash_value);
    transparent_crc(p_1211->g_716.s3, "p_1211->g_716.s3", print_hash_value);
    transparent_crc(p_1211->g_716.s4, "p_1211->g_716.s4", print_hash_value);
    transparent_crc(p_1211->g_716.s5, "p_1211->g_716.s5", print_hash_value);
    transparent_crc(p_1211->g_716.s6, "p_1211->g_716.s6", print_hash_value);
    transparent_crc(p_1211->g_716.s7, "p_1211->g_716.s7", print_hash_value);
    transparent_crc(p_1211->g_716.s8, "p_1211->g_716.s8", print_hash_value);
    transparent_crc(p_1211->g_716.s9, "p_1211->g_716.s9", print_hash_value);
    transparent_crc(p_1211->g_716.sa, "p_1211->g_716.sa", print_hash_value);
    transparent_crc(p_1211->g_716.sb, "p_1211->g_716.sb", print_hash_value);
    transparent_crc(p_1211->g_716.sc, "p_1211->g_716.sc", print_hash_value);
    transparent_crc(p_1211->g_716.sd, "p_1211->g_716.sd", print_hash_value);
    transparent_crc(p_1211->g_716.se, "p_1211->g_716.se", print_hash_value);
    transparent_crc(p_1211->g_716.sf, "p_1211->g_716.sf", print_hash_value);
    transparent_crc(p_1211->g_782.s0, "p_1211->g_782.s0", print_hash_value);
    transparent_crc(p_1211->g_782.s1, "p_1211->g_782.s1", print_hash_value);
    transparent_crc(p_1211->g_782.s2, "p_1211->g_782.s2", print_hash_value);
    transparent_crc(p_1211->g_782.s3, "p_1211->g_782.s3", print_hash_value);
    transparent_crc(p_1211->g_782.s4, "p_1211->g_782.s4", print_hash_value);
    transparent_crc(p_1211->g_782.s5, "p_1211->g_782.s5", print_hash_value);
    transparent_crc(p_1211->g_782.s6, "p_1211->g_782.s6", print_hash_value);
    transparent_crc(p_1211->g_782.s7, "p_1211->g_782.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1211->g_832[i], "p_1211->g_832[i]", print_hash_value);

    }
    transparent_crc(p_1211->g_836.s0, "p_1211->g_836.s0", print_hash_value);
    transparent_crc(p_1211->g_836.s1, "p_1211->g_836.s1", print_hash_value);
    transparent_crc(p_1211->g_836.s2, "p_1211->g_836.s2", print_hash_value);
    transparent_crc(p_1211->g_836.s3, "p_1211->g_836.s3", print_hash_value);
    transparent_crc(p_1211->g_836.s4, "p_1211->g_836.s4", print_hash_value);
    transparent_crc(p_1211->g_836.s5, "p_1211->g_836.s5", print_hash_value);
    transparent_crc(p_1211->g_836.s6, "p_1211->g_836.s6", print_hash_value);
    transparent_crc(p_1211->g_836.s7, "p_1211->g_836.s7", print_hash_value);
    transparent_crc(p_1211->g_836.s8, "p_1211->g_836.s8", print_hash_value);
    transparent_crc(p_1211->g_836.s9, "p_1211->g_836.s9", print_hash_value);
    transparent_crc(p_1211->g_836.sa, "p_1211->g_836.sa", print_hash_value);
    transparent_crc(p_1211->g_836.sb, "p_1211->g_836.sb", print_hash_value);
    transparent_crc(p_1211->g_836.sc, "p_1211->g_836.sc", print_hash_value);
    transparent_crc(p_1211->g_836.sd, "p_1211->g_836.sd", print_hash_value);
    transparent_crc(p_1211->g_836.se, "p_1211->g_836.se", print_hash_value);
    transparent_crc(p_1211->g_836.sf, "p_1211->g_836.sf", print_hash_value);
    transparent_crc(p_1211->g_877.s0, "p_1211->g_877.s0", print_hash_value);
    transparent_crc(p_1211->g_877.s1, "p_1211->g_877.s1", print_hash_value);
    transparent_crc(p_1211->g_877.s2, "p_1211->g_877.s2", print_hash_value);
    transparent_crc(p_1211->g_877.s3, "p_1211->g_877.s3", print_hash_value);
    transparent_crc(p_1211->g_877.s4, "p_1211->g_877.s4", print_hash_value);
    transparent_crc(p_1211->g_877.s5, "p_1211->g_877.s5", print_hash_value);
    transparent_crc(p_1211->g_877.s6, "p_1211->g_877.s6", print_hash_value);
    transparent_crc(p_1211->g_877.s7, "p_1211->g_877.s7", print_hash_value);
    transparent_crc(p_1211->g_877.s8, "p_1211->g_877.s8", print_hash_value);
    transparent_crc(p_1211->g_877.s9, "p_1211->g_877.s9", print_hash_value);
    transparent_crc(p_1211->g_877.sa, "p_1211->g_877.sa", print_hash_value);
    transparent_crc(p_1211->g_877.sb, "p_1211->g_877.sb", print_hash_value);
    transparent_crc(p_1211->g_877.sc, "p_1211->g_877.sc", print_hash_value);
    transparent_crc(p_1211->g_877.sd, "p_1211->g_877.sd", print_hash_value);
    transparent_crc(p_1211->g_877.se, "p_1211->g_877.se", print_hash_value);
    transparent_crc(p_1211->g_877.sf, "p_1211->g_877.sf", print_hash_value);
    transparent_crc(p_1211->g_885.x, "p_1211->g_885.x", print_hash_value);
    transparent_crc(p_1211->g_885.y, "p_1211->g_885.y", print_hash_value);
    transparent_crc(p_1211->g_885.z, "p_1211->g_885.z", print_hash_value);
    transparent_crc(p_1211->g_885.w, "p_1211->g_885.w", print_hash_value);
    transparent_crc(p_1211->g_889.s0, "p_1211->g_889.s0", print_hash_value);
    transparent_crc(p_1211->g_889.s1, "p_1211->g_889.s1", print_hash_value);
    transparent_crc(p_1211->g_889.s2, "p_1211->g_889.s2", print_hash_value);
    transparent_crc(p_1211->g_889.s3, "p_1211->g_889.s3", print_hash_value);
    transparent_crc(p_1211->g_889.s4, "p_1211->g_889.s4", print_hash_value);
    transparent_crc(p_1211->g_889.s5, "p_1211->g_889.s5", print_hash_value);
    transparent_crc(p_1211->g_889.s6, "p_1211->g_889.s6", print_hash_value);
    transparent_crc(p_1211->g_889.s7, "p_1211->g_889.s7", print_hash_value);
    transparent_crc(p_1211->g_889.s8, "p_1211->g_889.s8", print_hash_value);
    transparent_crc(p_1211->g_889.s9, "p_1211->g_889.s9", print_hash_value);
    transparent_crc(p_1211->g_889.sa, "p_1211->g_889.sa", print_hash_value);
    transparent_crc(p_1211->g_889.sb, "p_1211->g_889.sb", print_hash_value);
    transparent_crc(p_1211->g_889.sc, "p_1211->g_889.sc", print_hash_value);
    transparent_crc(p_1211->g_889.sd, "p_1211->g_889.sd", print_hash_value);
    transparent_crc(p_1211->g_889.se, "p_1211->g_889.se", print_hash_value);
    transparent_crc(p_1211->g_889.sf, "p_1211->g_889.sf", print_hash_value);
    transparent_crc(p_1211->g_890.x, "p_1211->g_890.x", print_hash_value);
    transparent_crc(p_1211->g_890.y, "p_1211->g_890.y", print_hash_value);
    transparent_crc(p_1211->g_891.s0, "p_1211->g_891.s0", print_hash_value);
    transparent_crc(p_1211->g_891.s1, "p_1211->g_891.s1", print_hash_value);
    transparent_crc(p_1211->g_891.s2, "p_1211->g_891.s2", print_hash_value);
    transparent_crc(p_1211->g_891.s3, "p_1211->g_891.s3", print_hash_value);
    transparent_crc(p_1211->g_891.s4, "p_1211->g_891.s4", print_hash_value);
    transparent_crc(p_1211->g_891.s5, "p_1211->g_891.s5", print_hash_value);
    transparent_crc(p_1211->g_891.s6, "p_1211->g_891.s6", print_hash_value);
    transparent_crc(p_1211->g_891.s7, "p_1211->g_891.s7", print_hash_value);
    transparent_crc(p_1211->g_910.s0, "p_1211->g_910.s0", print_hash_value);
    transparent_crc(p_1211->g_910.s1, "p_1211->g_910.s1", print_hash_value);
    transparent_crc(p_1211->g_910.s2, "p_1211->g_910.s2", print_hash_value);
    transparent_crc(p_1211->g_910.s3, "p_1211->g_910.s3", print_hash_value);
    transparent_crc(p_1211->g_910.s4, "p_1211->g_910.s4", print_hash_value);
    transparent_crc(p_1211->g_910.s5, "p_1211->g_910.s5", print_hash_value);
    transparent_crc(p_1211->g_910.s6, "p_1211->g_910.s6", print_hash_value);
    transparent_crc(p_1211->g_910.s7, "p_1211->g_910.s7", print_hash_value);
    transparent_crc(p_1211->g_911.x, "p_1211->g_911.x", print_hash_value);
    transparent_crc(p_1211->g_911.y, "p_1211->g_911.y", print_hash_value);
    transparent_crc(p_1211->g_912.x, "p_1211->g_912.x", print_hash_value);
    transparent_crc(p_1211->g_912.y, "p_1211->g_912.y", print_hash_value);
    transparent_crc(p_1211->g_913.s0, "p_1211->g_913.s0", print_hash_value);
    transparent_crc(p_1211->g_913.s1, "p_1211->g_913.s1", print_hash_value);
    transparent_crc(p_1211->g_913.s2, "p_1211->g_913.s2", print_hash_value);
    transparent_crc(p_1211->g_913.s3, "p_1211->g_913.s3", print_hash_value);
    transparent_crc(p_1211->g_913.s4, "p_1211->g_913.s4", print_hash_value);
    transparent_crc(p_1211->g_913.s5, "p_1211->g_913.s5", print_hash_value);
    transparent_crc(p_1211->g_913.s6, "p_1211->g_913.s6", print_hash_value);
    transparent_crc(p_1211->g_913.s7, "p_1211->g_913.s7", print_hash_value);
    transparent_crc(p_1211->g_913.s8, "p_1211->g_913.s8", print_hash_value);
    transparent_crc(p_1211->g_913.s9, "p_1211->g_913.s9", print_hash_value);
    transparent_crc(p_1211->g_913.sa, "p_1211->g_913.sa", print_hash_value);
    transparent_crc(p_1211->g_913.sb, "p_1211->g_913.sb", print_hash_value);
    transparent_crc(p_1211->g_913.sc, "p_1211->g_913.sc", print_hash_value);
    transparent_crc(p_1211->g_913.sd, "p_1211->g_913.sd", print_hash_value);
    transparent_crc(p_1211->g_913.se, "p_1211->g_913.se", print_hash_value);
    transparent_crc(p_1211->g_913.sf, "p_1211->g_913.sf", print_hash_value);
    transparent_crc(p_1211->g_915.s0, "p_1211->g_915.s0", print_hash_value);
    transparent_crc(p_1211->g_915.s1, "p_1211->g_915.s1", print_hash_value);
    transparent_crc(p_1211->g_915.s2, "p_1211->g_915.s2", print_hash_value);
    transparent_crc(p_1211->g_915.s3, "p_1211->g_915.s3", print_hash_value);
    transparent_crc(p_1211->g_915.s4, "p_1211->g_915.s4", print_hash_value);
    transparent_crc(p_1211->g_915.s5, "p_1211->g_915.s5", print_hash_value);
    transparent_crc(p_1211->g_915.s6, "p_1211->g_915.s6", print_hash_value);
    transparent_crc(p_1211->g_915.s7, "p_1211->g_915.s7", print_hash_value);
    transparent_crc(p_1211->g_919.s0, "p_1211->g_919.s0", print_hash_value);
    transparent_crc(p_1211->g_919.s1, "p_1211->g_919.s1", print_hash_value);
    transparent_crc(p_1211->g_919.s2, "p_1211->g_919.s2", print_hash_value);
    transparent_crc(p_1211->g_919.s3, "p_1211->g_919.s3", print_hash_value);
    transparent_crc(p_1211->g_919.s4, "p_1211->g_919.s4", print_hash_value);
    transparent_crc(p_1211->g_919.s5, "p_1211->g_919.s5", print_hash_value);
    transparent_crc(p_1211->g_919.s6, "p_1211->g_919.s6", print_hash_value);
    transparent_crc(p_1211->g_919.s7, "p_1211->g_919.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1211->g_960[i], "p_1211->g_960[i]", print_hash_value);

    }
    transparent_crc(p_1211->g_983.x, "p_1211->g_983.x", print_hash_value);
    transparent_crc(p_1211->g_983.y, "p_1211->g_983.y", print_hash_value);
    transparent_crc(p_1211->g_983.z, "p_1211->g_983.z", print_hash_value);
    transparent_crc(p_1211->g_983.w, "p_1211->g_983.w", print_hash_value);
    transparent_crc(p_1211->g_988.s0, "p_1211->g_988.s0", print_hash_value);
    transparent_crc(p_1211->g_988.s1, "p_1211->g_988.s1", print_hash_value);
    transparent_crc(p_1211->g_988.s2, "p_1211->g_988.s2", print_hash_value);
    transparent_crc(p_1211->g_988.s3, "p_1211->g_988.s3", print_hash_value);
    transparent_crc(p_1211->g_988.s4, "p_1211->g_988.s4", print_hash_value);
    transparent_crc(p_1211->g_988.s5, "p_1211->g_988.s5", print_hash_value);
    transparent_crc(p_1211->g_988.s6, "p_1211->g_988.s6", print_hash_value);
    transparent_crc(p_1211->g_988.s7, "p_1211->g_988.s7", print_hash_value);
    transparent_crc(p_1211->g_989.x, "p_1211->g_989.x", print_hash_value);
    transparent_crc(p_1211->g_989.y, "p_1211->g_989.y", print_hash_value);
    transparent_crc(p_1211->g_994, "p_1211->g_994", print_hash_value);
    transparent_crc(p_1211->g_1027, "p_1211->g_1027", print_hash_value);
    transparent_crc(p_1211->g_1040, "p_1211->g_1040", print_hash_value);
    transparent_crc(p_1211->g_1049.x, "p_1211->g_1049.x", print_hash_value);
    transparent_crc(p_1211->g_1049.y, "p_1211->g_1049.y", print_hash_value);
    transparent_crc(p_1211->g_1049.z, "p_1211->g_1049.z", print_hash_value);
    transparent_crc(p_1211->g_1049.w, "p_1211->g_1049.w", print_hash_value);
    transparent_crc(p_1211->g_1054.s0, "p_1211->g_1054.s0", print_hash_value);
    transparent_crc(p_1211->g_1054.s1, "p_1211->g_1054.s1", print_hash_value);
    transparent_crc(p_1211->g_1054.s2, "p_1211->g_1054.s2", print_hash_value);
    transparent_crc(p_1211->g_1054.s3, "p_1211->g_1054.s3", print_hash_value);
    transparent_crc(p_1211->g_1054.s4, "p_1211->g_1054.s4", print_hash_value);
    transparent_crc(p_1211->g_1054.s5, "p_1211->g_1054.s5", print_hash_value);
    transparent_crc(p_1211->g_1054.s6, "p_1211->g_1054.s6", print_hash_value);
    transparent_crc(p_1211->g_1054.s7, "p_1211->g_1054.s7", print_hash_value);
    transparent_crc(p_1211->g_1105, "p_1211->g_1105", print_hash_value);
    transparent_crc(p_1211->g_1149.x, "p_1211->g_1149.x", print_hash_value);
    transparent_crc(p_1211->g_1149.y, "p_1211->g_1149.y", print_hash_value);
    transparent_crc(p_1211->g_1149.z, "p_1211->g_1149.z", print_hash_value);
    transparent_crc(p_1211->g_1149.w, "p_1211->g_1149.w", print_hash_value);
    transparent_crc(p_1211->g_1150.x, "p_1211->g_1150.x", print_hash_value);
    transparent_crc(p_1211->g_1150.y, "p_1211->g_1150.y", print_hash_value);
    transparent_crc(p_1211->g_1150.z, "p_1211->g_1150.z", print_hash_value);
    transparent_crc(p_1211->g_1150.w, "p_1211->g_1150.w", print_hash_value);
    transparent_crc(p_1211->g_1154, "p_1211->g_1154", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
