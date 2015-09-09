// ---atomic_reductions ---fake_divergence -g 78,36,1 -l 3,3,1
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


// Seed: 102

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2[2][5];
    int32_t g_3;
    volatile int32_t g_6[7][1][10];
    volatile int32_t g_7;
    volatile int32_t g_8;
    volatile int32_t g_9;
    int32_t g_10;
    int32_t g_12;
    volatile int32_t g_17;
    int32_t g_18;
    int32_t g_36;
    volatile int32_t g_37;
    int32_t g_38;
    int32_t g_98;
    uint32_t g_102;
    uint64_t g_108;
    volatile uint64_t g_111;
    volatile uint64_t g_112;
    volatile uint64_t g_113;
    volatile uint64_t *g_110[10];
    uint64_t g_117;
    uint32_t g_123;
    uint32_t g_124;
    uint8_t g_133;
    uint64_t *g_145[1];
    uint64_t **g_144;
    int8_t g_151[9];
    int32_t g_152[3];
    int64_t g_199;
    int32_t *g_220;
    int32_t **g_219;
    uint16_t g_228[8][5];
    int16_t g_232;
    uint8_t g_283;
    uint8_t g_292;
    int16_t * volatile g_318;
    int16_t * volatile *g_317;
    int64_t g_333;
    int32_t g_352;
    uint16_t g_391;
    uint16_t g_393;
    uint32_t g_425[2];
    uint16_t g_426;
    uint32_t g_429;
    uint32_t g_431;
    int16_t g_445;
    int32_t g_548;
    volatile uint8_t g_566;
    volatile uint8_t *g_565[3];
    volatile uint8_t **g_564[10];
    uint16_t *g_592;
    uint16_t **g_591;
    uint32_t g_627;
    uint16_t ***g_659;
    uint16_t ****g_658;
    int64_t g_669[4];
    int32_t ** volatile g_753;
    int16_t * volatile * volatile *g_784;
    int16_t * volatile * volatile ** volatile g_783;
    volatile uint8_t *g_786;
    volatile uint8_t g_886;
    int8_t g_956[3][1][3];
    int8_t g_1017;
    int64_t *g_1020;
    int64_t **g_1019;
    int64_t g_1089[2][4];
    int16_t *****g_1090;
    uint32_t *g_1093;
    uint32_t **g_1092;
    uint32_t **g_1096[9];
    uint32_t *** volatile g_1095[8];
    uint32_t *** volatile g_1097;
    uint32_t *** volatile g_1098;
    uint16_t ****g_1108;
    volatile int64_t * volatile * volatile g_1250;
    int64_t **g_1251;
    int32_t *g_1278;
    int32_t ** volatile g_1277;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S0 * p_1289);
int16_t  func_26(int32_t * p_27, int32_t * p_28, int32_t * p_29, int32_t * p_30, struct S0 * p_1289);
int32_t  func_32(uint32_t  p_33, struct S0 * p_1289);
int32_t * func_60(int32_t * p_61, uint64_t  p_62, int64_t  p_63, struct S0 * p_1289);
int32_t * func_64(int64_t  p_65, uint8_t  p_66, int16_t  p_67, struct S0 * p_1289);
int64_t  func_68(uint32_t  p_69, int32_t  p_70, int32_t  p_71, uint8_t  p_72, struct S0 * p_1289);
uint64_t  func_78(int32_t * p_79, uint8_t  p_80, struct S0 * p_1289);
int32_t * func_81(uint32_t  p_82, struct S0 * p_1289);
uint32_t  func_83(int8_t  p_84, int32_t * p_85, int32_t  p_86, int64_t  p_87, struct S0 * p_1289);
uint8_t  func_95(int32_t * p_96, int32_t * p_97, struct S0 * p_1289);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1289->g_3 p_1289->g_10 p_1289->g_12 p_1289->g_2 p_1289->g_18 p_1289->g_6 p_1289->g_445 p_1289->g_592 p_1289->g_391 p_1289->g_228 p_1289->g_591 p_1289->g_429 p_1289->g_17 p_1289->g_144 p_1289->g_145 p_1289->g_292 p_1289->g_152 p_1289->g_133 p_1289->g_98 p_1289->g_102 p_1289->g_220 p_1289->g_123 p_1289->g_283 p_1289->g_317 p_1289->g_232 p_1289->g_199 p_1289->g_108 p_1289->g_151 p_1289->g_124 p_1289->g_219 p_1289->g_352 p_1289->g_36 p_1289->g_38 p_1289->g_1017 p_1289->g_318 p_1289->g_393 p_1289->g_333 p_1289->g_753 p_1289->g_1020 p_1289->g_564 p_1289->g_425 p_1289->g_9 p_1289->g_1089 p_1289->g_1090 p_1289->g_1092 p_1289->g_1098 p_1289->g_658 p_1289->g_784 p_1289->g_956 p_1289->g_783 p_1289->g_426 p_1289->g_566 p_1289->g_548 p_1289->g_1093 p_1289->g_1250 p_1289->g_1251 p_1289->g_1277 p_1289->g_1278
 * writes: p_1289->g_3 p_1289->g_6 p_1289->g_7 p_1289->g_2 p_1289->g_10 p_1289->g_12 p_1289->g_18 p_1289->g_36 p_1289->g_38 p_1289->g_133 p_1289->g_425 p_1289->g_333 p_1289->g_108 p_1289->g_292 p_1289->g_283 p_1289->g_232 p_1289->g_152 p_1289->g_220 p_1289->g_228 p_1289->g_124 p_1289->g_151 p_1289->g_98 p_1289->g_352 p_1289->g_445 p_1289->g_391 p_1289->g_1019 p_1289->g_1017 p_1289->g_393 p_1289->g_592 p_1289->g_627 p_1289->g_426 p_1289->g_1092 p_1289->g_1096 p_1289->g_658 p_1289->g_1108 p_1289->g_956 p_1289->g_199 p_1289->g_1278
 */
uint32_t  func_1(struct S0 * p_1289)
{ /* block id: 4 */
    uint16_t l_21 = 0x52DEL;
    int32_t l_1166 = (-1L);
    int32_t l_1167 = 5L;
    int32_t l_1168[8][5][5] = {{{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)}},{{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)}},{{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)}},{{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)}},{{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)}},{{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)}},{{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)}},{{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)},{1L,0x1991C361L,0x77C51107L,0x37D1CF99L,(-7L)}}};
    uint8_t l_1192[7];
    int16_t l_1200 = 0x6EF2L;
    uint8_t l_1228 = 255UL;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_1192[i] = 1UL;
    for (p_1289->g_3 = 0; (p_1289->g_3 >= (-4)); p_1289->g_3--)
    { /* block id: 7 */
        uint64_t l_14[5] = {0xDE283BC1B0FE2CF4L,0xDE283BC1B0FE2CF4L,0xDE283BC1B0FE2CF4L,0xDE283BC1B0FE2CF4L,0xDE283BC1B0FE2CF4L};
        int32_t l_1160 = 0x0CBC3BC7L;
        uint64_t l_1184 = 1UL;
        uint16_t ***l_1202[5] = {&p_1289->g_591,&p_1289->g_591,&p_1289->g_591,&p_1289->g_591,&p_1289->g_591};
        int32_t l_1220 = 0x32DC8B0CL;
        int8_t l_1238 = 0x1CL;
        int8_t l_1249 = (-1L);
        uint32_t l_1276 = 1UL;
        int16_t ***l_1285 = (void*)0;
        uint8_t *l_1288 = &p_1289->g_283;
        int i;
        for (p_1289->g_6[3][0][6] = 0; p_1289->g_6[3][0][6] < 2; p_1289->g_6[3][0][6] += 1)
        {
            for (p_1289->g_7 = 0; p_1289->g_7 < 5; p_1289->g_7 += 1)
            {
                p_1289->g_2[p_1289->g_6[3][0][6]][p_1289->g_7] = 0x5F9C7104L;
            }
        }
        for (p_1289->g_10 = 1; (p_1289->g_10 >= 0); p_1289->g_10 -= 1)
        { /* block id: 11 */
            int32_t *l_11 = &p_1289->g_12;
            int32_t *l_13[4];
            uint32_t l_1177 = 0x760D5E17L;
            uint64_t l_1193 = 0xDEDBC7CEB412BD7CL;
            int i;
            for (i = 0; i < 4; i++)
                l_13[i] = &p_1289->g_12;
            --l_14[2];
            for (p_1289->g_12 = 3; (p_1289->g_12 >= 0); p_1289->g_12 -= 1)
            { /* block id: 15 */
                int32_t l_19 = 0x5C3C3AE5L;
                int i;
                l_13[p_1289->g_10] = (void*)0;
                for (p_1289->g_18 = 0; (p_1289->g_18 <= 1); p_1289->g_18 += 1)
                { /* block id: 19 */
                    int i, j;
                    p_1289->g_2[p_1289->g_10][(p_1289->g_12 + 1)] &= (-8L);
                }
                for (p_1289->g_18 = 1; (p_1289->g_18 >= 0); p_1289->g_18 -= 1)
                { /* block id: 24 */
                    int32_t l_20[10][7][3] = {{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}}};
                    int i, j, k;
                    l_21++;
                    return p_1289->g_2[p_1289->g_10][(p_1289->g_12 + 1)];
                }
            }
            for (l_21 = 0; (l_21 <= 1); l_21 += 1)
            { /* block id: 31 */
                int16_t l_1120 = (-3L);
                int32_t l_1161 = 0x5CE9E70DL;
                int32_t l_1169 = 3L;
                int16_t l_1171 = 0x3CD4L;
                int64_t l_1183 = 0x1F4A2EA8501A54AFL;
                for (p_1289->g_18 = 1; (p_1289->g_18 >= 0); p_1289->g_18 -= 1)
                { /* block id: 34 */
                    int32_t *l_31 = &p_1289->g_12;
                    uint32_t l_1158[4][2] = {{0xA2A553A3L,0x35A13768L},{0xA2A553A3L,0x35A13768L},{0xA2A553A3L,0x35A13768L},{0xA2A553A3L,0x35A13768L}};
                    int32_t l_1159[7];
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_1159[i] = 0x6E86B758L;
                    for (p_1289->g_12 = 1; (p_1289->g_12 >= 0); p_1289->g_12 -= 1)
                    { /* block id: 37 */
                        int32_t *l_1111 = &p_1289->g_352;
                        int32_t l_1162 = (-1L);
                        int32_t l_1163 = 0x072BD195L;
                        int32_t l_1164 = 0x28783C15L;
                        int32_t l_1165 = 0x28C44373L;
                        int32_t l_1170 = 0x1BD19155L;
                        uint64_t l_1172 = 0x5DD23C7FCED7E6A9L;
                        int i, j;
                        l_1159[5] ^= (((((safe_mul_func_int16_t_s_s(func_26(l_31, &p_1289->g_18, (func_32((p_1289->g_2[p_1289->g_18][(p_1289->g_10 + 3)] , 0x81D84CB4L), p_1289) , func_60(((*p_1289->g_219) = l_1111), ((**p_1289->g_144) = ((safe_mod_func_uint8_t_u_u(((***p_1289->g_784) && ((((safe_sub_func_uint16_t_u_u((+(safe_sub_func_uint8_t_u_u((((((safe_rshift_func_int8_t_s_s(p_1289->g_956[0][0][2], p_1289->g_36)) != 255UL) == GROUP_DIVERGE(1, 1)) & l_14[0]) ^ (****p_1289->g_783)), l_1120))), (*l_31))) <= (*l_11)) || l_1120) & (*l_31))), 0x54L)) & l_14[2])), (*p_1289->g_1020), p_1289)), l_11, p_1289), p_1289->g_548)) , (*l_31)) >= (*l_31)) || 18446744073709551607UL) > l_1158[2][1]);
                        --l_1172;
                    }
                    for (p_1289->g_391 = (-4); (p_1289->g_391 < 57); ++p_1289->g_391)
                    { /* block id: 521 */
                        (*p_1289->g_219) = func_81(l_1177, p_1289);
                        if (l_14[1])
                            continue;
                        (*p_1289->g_219) = &l_1161;
                    }
                    for (p_1289->g_232 = 0; (p_1289->g_232 >= 0); p_1289->g_232 -= 1)
                    { /* block id: 528 */
                        int32_t *l_1178 = (void*)0;
                        (*p_1289->g_219) = l_1178;
                        if (l_1168[6][2][4])
                            break;
                    }
                }
                if ((safe_add_func_uint64_t_u_u((((safe_add_func_uint16_t_u_u((l_1160 != l_1183), (0x2477L && ((l_1183 , (l_1184++)) < ((((safe_mul_func_int8_t_s_s(((safe_mod_func_int16_t_s_s((safe_unary_minus_func_uint16_t_u(l_1192[6])), ((l_1166 , (((l_1193 ^ (safe_lshift_func_uint16_t_u_s((l_1120 | ((safe_add_func_uint64_t_u_u(((((safe_lshift_func_int8_t_s_u(((l_1169 & (*p_1289->g_592)) , p_1289->g_199), 6)) , (void*)0) == &p_1289->g_219) < 0x6863L), l_1171)) == l_1160)), l_1171))) , p_1289->g_391) < l_1161)) | p_1289->g_333))) , l_1200), 0x29L)) & 7L) || (**p_1289->g_591)) ^ 0UL))))) & (*l_11)) | l_1161), 5UL)))
                { /* block id: 534 */
                    int32_t l_1201[8] = {(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L),0L};
                    int i;
                    (*l_11) = (l_1192[3] , l_1201[2]);
                    (*l_11) |= 0x171F9E47L;
                }
                else
                { /* block id: 537 */
                    (*l_11) |= ((*p_1289->g_592) >= (l_1202[4] != (void*)0));
                    (*l_11) |= (l_1167 < (*p_1289->g_1020));
                }
            }
            for (p_1289->g_393 = 0; (p_1289->g_393 <= 4); p_1289->g_393 += 1)
            { /* block id: 544 */
                int32_t l_1219[5][8][6];
                int32_t l_1221 = 0x01F158D2L;
                uint32_t l_1252 = 0x2E79ABFFL;
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 8; j++)
                    {
                        for (k = 0; k < 6; k++)
                            l_1219[i][j][k] = 1L;
                    }
                }
                (*l_11) = (l_1168[(p_1289->g_10 + 3)][(p_1289->g_10 + 1)][(p_1289->g_10 + 3)] = ((safe_mod_func_uint8_t_u_u((((l_1221 &= ((safe_div_func_uint16_t_u_u(((safe_sub_func_uint64_t_u_u((0x165CCC8DL == (safe_lshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s((((****p_1289->g_783) == ((p_1289->g_3 < (safe_lshift_func_uint8_t_u_s(l_1200, 2))) > 0x44EEA82BL)) , p_1289->g_352), 0xACL)), (((!(*p_1289->g_1020)) == ((safe_rshift_func_uint8_t_u_u(((safe_div_func_uint64_t_u_u(l_14[2], l_1200)) <= l_1184), l_1219[3][7][0])) ^ l_1219[3][7][0])) , (*l_11))))), (*p_1289->g_1020))) || 0x1D90639D97A559F9L), l_1220)) , l_1219[3][7][0])) <= (*l_11)) & l_1219[4][3][1]), 0x75L)) ^ l_1219[3][7][0]));
                (*l_11) = (safe_sub_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((((**p_1289->g_144) = (safe_mul_func_int8_t_s_s(l_1228, (safe_unary_minus_func_uint32_t_u((safe_div_func_uint32_t_u_u((l_14[0] , (l_1192[6] && (safe_rshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u(l_1167, (((****p_1289->g_783) = ((0x2936768DL < (*p_1289->g_1093)) > (l_1221 == (*l_11)))) ^ l_1238))) & p_1289->g_1089[1][3]), 2)))), 0xB53D5BA1L))))))) | (*p_1289->g_1020)), 7L)), (**p_1289->g_1092)));
                if (l_1220)
                { /* block id: 551 */
                    uint32_t l_1247 = 0x89ECBF54L;
                    uint8_t *l_1248[7] = {&l_1192[6],(void*)0,&l_1192[6],&l_1192[6],(void*)0,&l_1192[6],&l_1192[6]};
                    int i;
                    (*l_11) = ((0x1DL & FAKE_DIVERGE(p_1289->global_0_offset, get_global_id(0), 10)) , (l_1192[5] , ((!(safe_sub_func_uint8_t_u_u(l_1221, (((safe_rshift_func_int8_t_s_u((l_1168[(p_1289->g_10 + 3)][(p_1289->g_10 + 1)][(p_1289->g_10 + 3)] = (safe_lshift_func_int16_t_s_s(l_1228, 4))), (l_1219[0][2][1] & ((safe_mod_func_int64_t_s_s((GROUP_DIVERGE(2, 1) , ((*p_1289->g_1020) = ((((p_1289->g_283 = (l_1249 = l_1247)) , p_1289->g_1250) != p_1289->g_1251) || l_1200))), l_1219[3][7][0])) && l_1247)))) == 0L) & l_1252)))) == 252UL)));
                }
                else
                { /* block id: 557 */
                    uint8_t *l_1254 = &p_1289->g_292;
                    uint8_t **l_1253 = &l_1254;
                    uint16_t *****l_1255 = &p_1289->g_658;
                    int32_t l_1270 = (-2L);
                    int32_t l_1275[9][8][3] = {{{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L}},{{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L}},{{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L}},{{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L}},{{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L}},{{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L}},{{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L}},{{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L}},{{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L},{0x75647D41L,1L,0L}}};
                    int i, j, k;
                    (*l_11) = (&p_1289->g_565[2] == l_1253);
                    (*l_11) = ((((((((*l_1255) = (void*)0) != ((safe_rshift_func_int8_t_s_s(p_1289->g_10, 7)) , &l_1202[4])) == (safe_add_func_uint32_t_u_u((safe_add_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((((*p_1289->g_1093) = (((safe_mod_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u((l_1238 >= l_1270), ((**l_1253) = 0x7CL))), l_1160)), (safe_mul_func_int16_t_s_s((((safe_mul_func_int16_t_s_s(l_1167, (1L | l_14[0]))) > (**p_1289->g_591)) && p_1289->g_133), l_21)))) > l_1220) , l_1270)) == GROUP_DIVERGE(1, 1)), (*p_1289->g_318))), 0UL)), l_1219[3][7][0]))) >= l_1275[6][6][2]) , l_1184) == l_1276) , 7L);
                    if ((*l_11))
                        continue;
                }
                (*p_1289->g_1277) = ((*p_1289->g_219) = &l_1168[7][3][2]);
            }
        }
        (**p_1289->g_1277) = (safe_div_func_int32_t_s_s(l_1238, (safe_mod_func_int8_t_s_s((((safe_mod_func_uint16_t_u_u(((*p_1289->g_592) > (0xAA27D6FFL & (((void*)0 != l_1285) , GROUP_DIVERGE(2, 1)))), (--p_1289->g_426))) || ((****p_1289->g_783) , (((((0x1EL == ((*l_1288) &= FAKE_DIVERGE(p_1289->local_2_offset, get_local_id(2), 10))) != 0x8EL) && (*p_1289->g_1020)) , l_1168[7][3][2]) & (****p_1289->g_783)))) > l_1160), p_1289->g_228[4][4]))));
        (*p_1289->g_1278) ^= l_1220;
    }
    return l_1167;
}


/* ------------------------------------------ */
/* 
 * reads : p_1289->g_1020 p_1289->g_426 p_1289->g_592 p_1289->g_391 p_1289->g_228 p_1289->g_318 p_1289->g_232 p_1289->g_658 p_1289->g_566 p_1289->g_220 p_1289->g_352 p_1289->g_753 p_1289->g_591 p_1289->g_283 p_1289->g_3 p_1289->g_445
 * writes: p_1289->g_956 p_1289->g_199 p_1289->g_658 p_1289->g_220 p_1289->g_391 p_1289->g_283 p_1289->g_445 p_1289->g_133
 */
int16_t  func_26(int32_t * p_27, int32_t * p_28, int32_t * p_29, int32_t * p_30, struct S0 * p_1289)
{ /* block id: 510 */
    uint32_t l_1138 = 0x32A4BA54L;
    uint32_t *l_1141 = (void*)0;
    int8_t *l_1154 = (void*)0;
    int8_t *l_1155 = &p_1289->g_956[0][0][2];
    int32_t l_1156 = 0x5ECD49A9L;
    int16_t ****l_1157 = (void*)0;
    (*p_1289->g_753) = func_60(((((safe_mod_func_uint16_t_u_u((((safe_unary_minus_func_int32_t_s((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint8_t_u_s(252UL, (safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((safe_add_func_uint32_t_u_u(((safe_add_func_uint8_t_u_u(l_1138, (safe_rshift_func_uint16_t_u_s((l_1141 == (((safe_rshift_func_int8_t_s_u(((l_1156 |= ((safe_mul_func_int8_t_s_s(((safe_add_func_int16_t_s_s((+(safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((l_1138 > 0x2D4214E8L), (+((l_1138 , ((*p_1289->g_1020) = (((*l_1155) = (safe_div_func_int8_t_s_s(l_1138, 0x63L))) == 0L))) ^ 6L)))), l_1138))), l_1138)) < (-1L)), 0x20L)) >= l_1138)) & l_1138), 2)) >= 0L) , (void*)0)), 7)))) , 0x17A39BA4L), 0x3815786BL)), 5)), 0x1812L)))), 13)), l_1138)))) , (void*)0) == l_1157), GROUP_DIVERGE(2, 1))) || l_1138) , 0UL) , &l_1156), l_1138, l_1138, p_1289);
    return l_1138;
}


/* ------------------------------------------ */
/* 
 * reads : p_1289->g_6 p_1289->g_36 p_1289->g_38 p_1289->g_2 p_1289->g_445 p_1289->g_592 p_1289->g_228 p_1289->g_591 p_1289->g_429 p_1289->g_17 p_1289->g_144 p_1289->g_145 p_1289->g_292 p_1289->g_152 p_1289->g_133 p_1289->g_98 p_1289->g_102 p_1289->g_220 p_1289->g_3 p_1289->g_123 p_1289->g_10 p_1289->g_283 p_1289->g_317 p_1289->g_232 p_1289->g_199 p_1289->g_108 p_1289->g_151 p_1289->g_124 p_1289->g_18 p_1289->g_219 p_1289->g_391 p_1289->g_352 p_1289->g_1017 p_1289->g_318 p_1289->g_393 p_1289->g_333 p_1289->g_753 p_1289->g_1020 p_1289->g_564 p_1289->g_425 p_1289->g_9 p_1289->g_1089 p_1289->g_1090 p_1289->g_1092 p_1289->g_1098 p_1289->g_658
 * writes: p_1289->g_36 p_1289->g_38 p_1289->g_133 p_1289->g_425 p_1289->g_333 p_1289->g_108 p_1289->g_292 p_1289->g_283 p_1289->g_232 p_1289->g_152 p_1289->g_220 p_1289->g_228 p_1289->g_124 p_1289->g_151 p_1289->g_98 p_1289->g_352 p_1289->g_445 p_1289->g_391 p_1289->g_1019 p_1289->g_1017 p_1289->g_393 p_1289->g_592 p_1289->g_627 p_1289->g_426 p_1289->g_1092 p_1289->g_1096 p_1289->g_658 p_1289->g_1108
 */
int32_t  func_32(uint32_t  p_33, struct S0 * p_1289)
{ /* block id: 38 */
    uint64_t l_46[5][7][2] = {{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}},{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}},{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}},{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}},{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}}};
    int32_t l_52 = 0x67FEFA8CL;
    uint16_t **l_860 = (void*)0;
    int8_t l_898 = 1L;
    int16_t *l_921 = &p_1289->g_232;
    int32_t *l_923 = &l_52;
    int64_t *l_958[4][10] = {{&p_1289->g_199,(void*)0,&p_1289->g_199,(void*)0,&p_1289->g_199,&p_1289->g_199,(void*)0,&p_1289->g_199,(void*)0,&p_1289->g_199},{&p_1289->g_199,(void*)0,&p_1289->g_199,(void*)0,&p_1289->g_199,&p_1289->g_199,(void*)0,&p_1289->g_199,(void*)0,&p_1289->g_199},{&p_1289->g_199,(void*)0,&p_1289->g_199,(void*)0,&p_1289->g_199,&p_1289->g_199,(void*)0,&p_1289->g_199,(void*)0,&p_1289->g_199},{&p_1289->g_199,(void*)0,&p_1289->g_199,(void*)0,&p_1289->g_199,&p_1289->g_199,(void*)0,&p_1289->g_199,(void*)0,&p_1289->g_199}};
    int64_t **l_957 = &l_958[0][8];
    int32_t l_971[6][3] = {{1L,4L,4L},{1L,4L,4L},{1L,4L,4L},{1L,4L,4L},{1L,4L,4L},{1L,4L,4L}};
    uint16_t l_972 = 65530UL;
    int16_t **l_991 = &l_921;
    int16_t ***l_990[1][8][8] = {{{&l_991,&l_991,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_991},{&l_991,&l_991,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_991},{&l_991,&l_991,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_991},{&l_991,&l_991,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_991},{&l_991,&l_991,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_991},{&l_991,&l_991,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_991},{&l_991,&l_991,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_991},{&l_991,&l_991,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_991}}};
    int16_t ****l_989 = &l_990[0][0][6];
    int16_t *****l_988 = &l_989;
    uint8_t *l_992 = (void*)0;
    uint8_t *l_993[8][2] = {{&p_1289->g_133,&p_1289->g_133},{&p_1289->g_133,&p_1289->g_133},{&p_1289->g_133,&p_1289->g_133},{&p_1289->g_133,&p_1289->g_133},{&p_1289->g_133,&p_1289->g_133},{&p_1289->g_133,&p_1289->g_133},{&p_1289->g_133,&p_1289->g_133},{&p_1289->g_133,&p_1289->g_133}};
    int8_t *l_1000 = &l_898;
    int8_t *l_1001[3][5] = {{&p_1289->g_956[0][0][2],(void*)0,&p_1289->g_151[0],(void*)0,&p_1289->g_956[0][0][2]},{&p_1289->g_956[0][0][2],(void*)0,&p_1289->g_151[0],(void*)0,&p_1289->g_956[0][0][2]},{&p_1289->g_956[0][0][2],(void*)0,&p_1289->g_151[0],(void*)0,&p_1289->g_956[0][0][2]}};
    int32_t l_1002 = 0x1FA07755L;
    uint32_t *l_1003 = &p_1289->g_425[1];
    uint64_t l_1022 = 18446744073709551608UL;
    uint64_t **l_1030[2];
    uint32_t *l_1050 = (void*)0;
    uint32_t **l_1049 = &l_1050;
    uint32_t l_1061 = 0x2C883451L;
    uint32_t l_1066 = 0xAA1EA96BL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1030[i] = &p_1289->g_145[0];
    for (p_33 = (-5); (p_33 != 46); p_33 = safe_add_func_int8_t_s_s(p_33, 7))
    { /* block id: 41 */
        uint32_t l_43[9][3][9] = {{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}}};
        int32_t l_53 = 8L;
        int32_t l_54 = 8L;
        int32_t l_55[4][3] = {{(-5L),0x1050BF12L,(-5L)},{(-5L),0x1050BF12L,(-5L)},{(-5L),0x1050BF12L,(-5L)},{(-5L),0x1050BF12L,(-5L)}};
        int64_t l_56 = 0x400369CA922C56DEL;
        int32_t l_849 = 8L;
        uint8_t *l_863 = &p_1289->g_133;
        int64_t *l_887 = &p_1289->g_669[2];
        int32_t *l_890 = &l_55[3][0];
        int16_t l_907 = 0x2295L;
        uint64_t l_961 = 0xD20192F275382EBAL;
        int32_t *l_964 = &l_53;
        int32_t *l_965 = (void*)0;
        int32_t *l_966 = &p_1289->g_152[0];
        int32_t *l_967 = &p_1289->g_152[0];
        int32_t *l_968 = (void*)0;
        int32_t *l_969 = &p_1289->g_36;
        int32_t *l_970[6];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_970[i] = &p_1289->g_36;
        if (p_1289->g_6[3][0][6])
            break;
        for (p_1289->g_36 = 1; (p_1289->g_36 >= 0); p_1289->g_36 -= 1)
        { /* block id: 45 */
            int32_t *l_40 = &p_1289->g_38;
            int32_t *l_41 = (void*)0;
            int32_t *l_42[5][8] = {{&p_1289->g_18,&p_1289->g_18,&p_1289->g_18,(void*)0,&p_1289->g_36,&p_1289->g_38,&p_1289->g_18,&p_1289->g_36},{&p_1289->g_18,&p_1289->g_18,&p_1289->g_18,(void*)0,&p_1289->g_36,&p_1289->g_38,&p_1289->g_18,&p_1289->g_36},{&p_1289->g_18,&p_1289->g_18,&p_1289->g_18,(void*)0,&p_1289->g_36,&p_1289->g_38,&p_1289->g_18,&p_1289->g_36},{&p_1289->g_18,&p_1289->g_18,&p_1289->g_18,(void*)0,&p_1289->g_36,&p_1289->g_38,&p_1289->g_18,&p_1289->g_36},{&p_1289->g_18,&p_1289->g_18,&p_1289->g_18,(void*)0,&p_1289->g_36,&p_1289->g_38,&p_1289->g_18,&p_1289->g_36}};
            uint32_t l_49 = 1UL;
            uint32_t l_848[5][10] = {{0xBF3EEC34L,0x9F08C2D8L,4294967290UL,0x29CCD9C7L,0x9F08C2D8L,0x29CCD9C7L,4294967290UL,0x9F08C2D8L,0xBF3EEC34L,0xBF3EEC34L},{0xBF3EEC34L,0x9F08C2D8L,4294967290UL,0x29CCD9C7L,0x9F08C2D8L,0x29CCD9C7L,4294967290UL,0x9F08C2D8L,0xBF3EEC34L,0xBF3EEC34L},{0xBF3EEC34L,0x9F08C2D8L,4294967290UL,0x29CCD9C7L,0x9F08C2D8L,0x29CCD9C7L,4294967290UL,0x9F08C2D8L,0xBF3EEC34L,0xBF3EEC34L},{0xBF3EEC34L,0x9F08C2D8L,4294967290UL,0x29CCD9C7L,0x9F08C2D8L,0x29CCD9C7L,4294967290UL,0x9F08C2D8L,0xBF3EEC34L,0xBF3EEC34L},{0xBF3EEC34L,0x9F08C2D8L,4294967290UL,0x29CCD9C7L,0x9F08C2D8L,0x29CCD9C7L,4294967290UL,0x9F08C2D8L,0xBF3EEC34L,0xBF3EEC34L}};
            uint16_t **l_858 = &p_1289->g_592;
            int i, j;
            for (p_1289->g_38 = 1; (p_1289->g_38 >= 0); p_1289->g_38 -= 1)
            { /* block id: 48 */
                volatile int32_t *l_39 = (void*)0;
                int i, j;
                l_39 = &p_1289->g_2[p_1289->g_38][(p_1289->g_38 + 1)];
            }
            if (p_1289->g_2[1][4])
                continue;
            --l_43[1][1][6];
            ++l_46[2][0][1];
            for (p_1289->g_38 = 0; (p_1289->g_38 <= 0); p_1289->g_38 += 1)
            { /* block id: 56 */
                int32_t *l_90 = &l_53;
                uint16_t ***l_859 = &l_858;
                uint32_t *l_861 = &l_49;
                uint32_t *l_862[2];
                int32_t l_960 = 3L;
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_862[i] = &p_1289->g_124;
                (1 + 1);
            }
        }
        l_972++;
    }
    (*p_1289->g_219) = func_81(((safe_lshift_func_int16_t_s_u((((**l_991) = ((p_1289->g_283 = (+(p_1289->g_292 |= ((((safe_rshift_func_uint16_t_u_s(p_33, ((p_33 == ((**p_1289->g_144) = ((GROUP_DIVERGE(1, 1) && (p_1289->g_333 = (((*l_1003) = (((safe_unary_minus_func_int16_t_s((safe_add_func_int64_t_s_s((safe_mod_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u((((*l_923) = (p_1289->g_133 = ((safe_sub_func_int32_t_s_s((&p_1289->g_784 == ((*l_988) = (void*)0)), FAKE_DIVERGE(p_1289->group_0_offset, get_group_id(0), 10))) || p_33))) || 0xE5L), ((l_971[5][0] != p_33) < ((((safe_sub_func_uint16_t_u_u(((((safe_sub_func_int32_t_s_s(((safe_mod_func_int8_t_s_s((l_1002 &= ((*l_1000) = ((l_971[5][0] >= 2UL) , p_33))), p_1289->g_445)) != (-1L)), 0UL)) , (*p_1289->g_592)) == (**p_1289->g_591)) & p_33), 65530UL)) && p_33) > 0x0BL) ^ p_33)))) , (*l_923)) && FAKE_DIVERGE(p_1289->global_1_offset, get_global_id(1), 10)), l_46[2][2][0])), 0xD5A05A5231A5C312L)))) < p_1289->g_429) >= p_33)) & p_1289->g_17))) && 0x2605L))) & 0x196DB9DB58D5C4C6L))) & (-1L)) && p_33) , p_33)))) <= p_33)) && (*l_923)), l_971[5][0])) ^ 0x17A2CD4AL), p_1289);
    for (p_1289->g_445 = 9; (p_1289->g_445 >= 0); p_1289->g_445 -= 1)
    { /* block id: 460 */
        int64_t **l_1006 = (void*)0;
        uint32_t *l_1007[4];
        int32_t l_1016[7][3][4] = {{{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L}},{{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L}},{{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L}},{{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L}},{{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L}},{{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L}},{{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L},{0x01054135L,0x115003A0L,0x08B4A57FL,0x115003A0L}}};
        int64_t ***l_1018[8][6][5] = {{{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006}},{{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006}},{{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006}},{{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006}},{{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006}},{{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006}},{{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006}},{{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006},{&l_1006,&l_957,&l_1006,&l_1006,&l_1006}}};
        uint64_t **l_1031[2];
        int32_t ***l_1032 = &p_1289->g_219;
        int16_t *****l_1047 = &l_989;
        int16_t ******l_1048 = &l_988;
        uint64_t ***l_1084[5] = {&l_1031[1],&l_1031[1],&l_1031[1],&l_1031[1],&l_1031[1]};
        uint16_t *****l_1103 = &p_1289->g_658;
        uint16_t ****l_1107 = (void*)0;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_1007[i] = &p_1289->g_431;
        for (i = 0; i < 2; i++)
            l_1031[i] = &p_1289->g_145[0];
        if ((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1289->local_1_offset, get_local_id(1), 10), ((+(l_1006 != (p_1289->g_1019 = (((*l_1000) = ((((((**p_1289->g_591) |= 3UL) && (p_1289->g_232 & p_1289->g_3)) , l_1007[3]) == l_1007[0]) <= (~(safe_mod_func_int64_t_s_s(((*l_923) < (safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((safe_add_func_uint8_t_u_u((l_1016[4][2][3] , (((((*l_1003) = 0x5F5AA2A2L) >= (*p_1289->g_220)) , p_1289->g_1017) , p_33)), l_1016[4][2][3])) & 0x3EL), 0x6E20L)), l_1016[3][2][1]))), 18446744073709551612UL))))) , (void*)0)))) < (*p_1289->g_220)))))
        { /* block id: 465 */
            int16_t l_1021 = 0x4214L;
            if (l_1021)
                break;
        }
        else
        { /* block id: 467 */
            int16_t *****l_1027 = &l_989;
            int32_t l_1033 = 0x717CEE07L;
            int i;
            (*p_1289->g_219) = func_81((~(l_1022 ^ ((((**p_1289->g_317) & (((((GROUP_DIVERGE(0, 1) <= l_1016[4][2][3]) , (!(((safe_mul_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((&l_989 == l_1027), ((void*)0 == (*l_957)))) >= ((*l_1000) ^= (((safe_add_func_uint8_t_u_u((p_1289->g_133 = p_1289->g_393), (l_1030[0] != l_1031[1]))) , l_1032) == &p_1289->g_219))), p_33)) && (***l_1032)) == 0x5400L))) == l_1033) , 0x24CC4CDDL) , 65535UL)) >= (-8L)) && (*l_923)))), p_1289);
        }
        if (((safe_div_func_int8_t_s_s((*l_923), ((((safe_mod_func_uint16_t_u_u(((*p_1289->g_592) = (((((p_33 ^ (safe_lshift_func_uint8_t_u_s((((safe_sub_func_int32_t_s_s((*p_1289->g_220), p_33)) >= (safe_add_func_uint32_t_u_u(4294967293UL, (safe_unary_minus_func_uint8_t_u((p_1289->g_283 = ((safe_div_func_int32_t_s_s((0x594228731359F7CFL > (((*l_1048) = l_1047) == (void*)0)), (-1L))) > 0x72F30B14A846C31BL))))))) , (***l_1032)), p_33))) > (***l_1032)) <= p_1289->g_333) >= p_1289->g_333) | (***l_1032))), (-1L))) <= (***l_1032)) & 0x58411DCE4CECFC6EL) && (-1L)))) , p_33))
        { /* block id: 475 */
            uint32_t **l_1051 = &l_1050;
            int32_t *l_1052 = &p_1289->g_152[0];
            int32_t *l_1053 = &l_971[5][0];
            int32_t *l_1054 = &p_1289->g_98;
            int32_t *l_1055 = &p_1289->g_36;
            int32_t l_1056 = (-1L);
            int32_t *l_1057 = (void*)0;
            int32_t *l_1058 = (void*)0;
            int32_t *l_1059 = &p_1289->g_98;
            int32_t *l_1060[4][2][8] = {{{&l_1002,&l_1002,&l_52,&p_1289->g_352,&p_1289->g_152[0],&p_1289->g_352,&l_52,&l_1002},{&l_1002,&l_1002,&l_52,&p_1289->g_352,&p_1289->g_152[0],&p_1289->g_352,&l_52,&l_1002}},{{&l_1002,&l_1002,&l_52,&p_1289->g_352,&p_1289->g_152[0],&p_1289->g_352,&l_52,&l_1002},{&l_1002,&l_1002,&l_52,&p_1289->g_352,&p_1289->g_152[0],&p_1289->g_352,&l_52,&l_1002}},{{&l_1002,&l_1002,&l_52,&p_1289->g_352,&p_1289->g_152[0],&p_1289->g_352,&l_52,&l_1002},{&l_1002,&l_1002,&l_52,&p_1289->g_352,&p_1289->g_152[0],&p_1289->g_352,&l_52,&l_1002}},{{&l_1002,&l_1002,&l_52,&p_1289->g_352,&p_1289->g_152[0],&p_1289->g_352,&l_52,&l_1002},{&l_1002,&l_1002,&l_52,&p_1289->g_352,&p_1289->g_152[0],&p_1289->g_352,&l_52,&l_1002}}};
            int64_t *l_1077 = &p_1289->g_199;
            int64_t *l_1081 = &p_1289->g_669[2];
            int64_t **l_1080 = &l_1081;
            uint64_t ***l_1085 = (void*)0;
            int8_t *l_1088 = (void*)0;
            int i, j, k;
            for (p_1289->g_1017 = 7; (p_1289->g_1017 >= 2); p_1289->g_1017 -= 1)
            { /* block id: 478 */
                l_1051 = l_1049;
            }
            l_1061++;
            (*p_1289->g_219) = func_64(((safe_sub_func_int32_t_s_s((**p_1289->g_753), l_1066)) < ((((-3L) > GROUP_DIVERGE(2, 1)) , (((*p_1289->g_1020) , ((((l_1016[1][2][2] = (safe_div_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((p_33 , (*l_923)), 0x63L)), (((((safe_sub_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(p_33, 9)), (p_33 || p_33))) & (*l_1059)) != 0UL) < p_33) & p_33))) || p_33), p_33))) , l_1077) == &p_1289->g_199) ^ FAKE_DIVERGE(p_1289->group_0_offset, get_group_id(0), 10))) && (*l_923))) & 0x29F6D3DCL)), p_33, p_33, p_1289);
            (**l_1032) = func_81((GROUP_DIVERGE(0, 1) && ((safe_add_func_int8_t_s_s((l_958[3][5] != ((*l_1080) = &p_1289->g_669[2])), GROUP_DIVERGE(1, 1))) && ((***l_1032) < (safe_mul_func_uint16_t_u_u(((l_1084[0] = &l_1031[1]) == l_1085), ((safe_sub_func_uint32_t_u_u(((&l_898 == l_1088) <= (p_33 ^ (p_33 && p_1289->g_1089[1][3]))), 1UL)) > p_33)))))), p_1289);
        }
        else
        { /* block id: 487 */
            int16_t *****l_1091 = (void*)0;
            int32_t l_1101 = 0x24F8EC97L;
            uint16_t *****l_1102 = &p_1289->g_658;
            uint64_t l_1104 = 0xAAE787EC50EBBFC8L;
            uint16_t ****l_1106 = &p_1289->g_659;
            uint16_t *****l_1105 = &l_1106;
            (*p_1289->g_220) = (((*l_1048) = p_1289->g_1090) != l_1091);
            for (p_1289->g_426 = 0; (p_1289->g_426 <= 9); p_1289->g_426 += 1)
            { /* block id: 492 */
                uint32_t ***l_1094 = &p_1289->g_1092;
                (*p_1289->g_1098) = ((*l_1094) = p_1289->g_1092);
                (***l_1032) |= (safe_add_func_uint8_t_u_u((l_1101 ^ p_33), (l_1102 == l_1103)));
                (*p_1289->g_219) = (**l_1032);
            }
            (*l_923) = (((***l_1032) = ((+(p_33 , l_1101)) ^ (l_1104 | (((*p_1289->g_592) &= (l_1104 && (((*l_1105) = ((*l_1102) = (*l_1102))) == (p_1289->g_1108 = l_1107)))) , (***l_1032))))) >= (p_33 , ((safe_add_func_uint64_t_u_u((p_33 , 18446744073709551615UL), 0x78064A542B7569BDL)) > p_33)));
            if (l_1101)
                continue;
        }
    }
    return p_1289->g_152[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1289->g_426 p_1289->g_592 p_1289->g_391 p_1289->g_228 p_1289->g_318 p_1289->g_232 p_1289->g_38 p_1289->g_658 p_1289->g_566 p_1289->g_220 p_1289->g_753 p_1289->g_591 p_1289->g_283 p_1289->g_3 p_1289->g_445 p_1289->g_133 p_1289->g_352
 * writes: p_1289->g_658 p_1289->g_220 p_1289->g_391 p_1289->g_283 p_1289->g_445 p_1289->g_133
 */
int32_t * func_60(int32_t * p_61, uint64_t  p_62, int64_t  p_63, struct S0 * p_1289)
{ /* block id: 326 */
    int32_t l_657 = 0x776C1CD3L;
    uint16_t *****l_660 = &p_1289->g_658;
    uint16_t ****l_661 = &p_1289->g_659;
    int32_t l_674[7] = {0x460E6EA0L,0x460E6EA0L,0x460E6EA0L,0x460E6EA0L,0x460E6EA0L,0x460E6EA0L,0x460E6EA0L};
    int16_t *l_720 = &p_1289->g_445;
    int16_t **l_719 = &l_720;
    int16_t ***l_718 = &l_719;
    int16_t l_828 = 0x0A14L;
    int i;
    if (((((((!(((((*l_660) = ((((safe_add_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u(p_62, 4)), (safe_rshift_func_uint16_t_u_u(((p_1289->g_426 ^ (safe_add_func_int16_t_s_s((safe_mod_func_int8_t_s_s((safe_div_func_uint32_t_u_u((safe_sub_func_int8_t_s_s((l_657 | (-1L)), ((p_62 , (void*)0) == (void*)0))), p_63)), p_63)), (*p_1289->g_592)))) ^ p_62), 2)))) != (*p_1289->g_318)) && (*p_61)) , p_1289->g_658)) == l_661) , (void*)0) == (void*)0)) != 0x0DE529927290F3FCL) == 0x39209DC8019BFF7DL) & l_657) != l_657) > 0x2EL))
    { /* block id: 328 */
        int64_t *l_668[5][8] = {{&p_1289->g_669[2],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2]},{&p_1289->g_669[2],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2]},{&p_1289->g_669[2],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2]},{&p_1289->g_669[2],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2]},{&p_1289->g_669[2],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2],&p_1289->g_669[3],&p_1289->g_669[2]}};
        int32_t l_675[1];
        uint16_t l_678 = 1UL;
        int32_t l_679[3][5] = {{0x450D4838L,0x450D4838L,0x60964F64L,1L,0x50EB5526L},{0x450D4838L,0x450D4838L,0x60964F64L,1L,0x50EB5526L},{0x450D4838L,0x450D4838L,0x60964F64L,1L,0x50EB5526L}};
        int32_t *l_680 = (void*)0;
        int i, j;
        for (i = 0; i < 1; i++)
            l_675[i] = 0x6974C654L;
        l_675[0] = (safe_lshift_func_uint16_t_u_u(((((p_63 | (safe_mod_func_int8_t_s_s((safe_mod_func_uint16_t_u_u(((l_657 = 0x3266CF80DFF92F94L) , FAKE_DIVERGE(p_1289->global_1_offset, get_global_id(1), 10)), (7L || (((p_1289->g_566 > (l_679[1][2] |= (safe_sub_func_int16_t_s_s(0L, ((safe_mul_func_int16_t_s_s(p_62, l_674[2])) <= (((l_675[0] >= (safe_mod_func_int16_t_s_s(((0xFA81FDDF1FA876A2L != 0x1AC7E7320B942C99L) > 0x357C9D7B12CD2576L), l_678))) ^ p_62) < 0x7E42L)))))) != p_63) >= 0x54L)))), l_678))) >= 0x07539E42C29AEB46L) & p_62) > (*p_1289->g_220)), 3));
        return l_680;
    }
    else
    { /* block id: 333 */
        uint64_t *l_713[4] = {&p_1289->g_108,&p_1289->g_108,&p_1289->g_108,&p_1289->g_108};
        int32_t l_724 = 0L;
        int32_t l_725 = 0x46E69E84L;
        uint8_t *l_816 = &p_1289->g_283;
        uint8_t l_827 = 0xAEL;
        int i;
        for (p_62 = 0; (p_62 != 4); p_62 = safe_add_func_uint64_t_u_u(p_62, 4))
        { /* block id: 336 */
            int32_t l_686 = (-4L);
            int8_t l_692[4][10] = {{0x54L,0L,0x79L,5L,0L,5L,0x79L,0L,0x54L,0x54L},{0x54L,0L,0x79L,5L,0L,5L,0x79L,0L,0x54L,0x54L},{0x54L,0L,0x79L,5L,0L,5L,0x79L,0L,0x54L,0x54L},{0x54L,0L,0x79L,5L,0L,5L,0x79L,0L,0x54L,0x54L}};
            int32_t l_723 = (-3L);
            uint16_t ***l_798[10][6][4] = {{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}},{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}},{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}},{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}},{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}},{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}},{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}},{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}},{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}},{{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591},{&p_1289->g_591,(void*)0,&p_1289->g_591,&p_1289->g_591}}};
            uint16_t ***l_799 = &p_1289->g_591;
            int i, j, k;
            p_1289->g_220 = p_61;
            for (p_1289->g_391 = 17; (p_1289->g_391 != 17); p_1289->g_391 = safe_add_func_int64_t_s_s(p_1289->g_391, 4))
            { /* block id: 340 */
                int32_t *l_685[8][1];
                int8_t l_751[1][1][7] = {{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}}};
                int64_t l_752 = 0x77DF2E604EA299FFL;
                int16_t *l_770 = (void*)0;
                int i, j, k;
                for (i = 0; i < 8; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_685[i][j] = &l_674[0];
                }
                l_686 = (-4L);
                if (l_674[2])
                    break;
            }
            if (l_686)
                break;
            return (*p_1289->g_753);
        }
        l_724 |= (((safe_sub_func_uint16_t_u_u((**p_1289->g_591), (safe_lshift_func_int16_t_s_u(((*l_720) |= (safe_add_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u(0x19A6148AL, (safe_lshift_func_uint8_t_u_u(((*l_816) &= (((void*)0 != p_61) || ((safe_rshift_func_uint16_t_u_s(65531UL, 12)) | 3L))), 0)))) && (safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(p_63, ((*p_61) <= 0xED396593L))), 0x43L)), 11)), p_1289->g_3)), l_674[2]))), 0)) , p_62), l_827))), 8)))) == 0x6D92F44DEF105BEDL) || l_828);
        for (p_1289->g_133 = 2; (p_1289->g_133 != 55); p_1289->g_133 = safe_add_func_uint8_t_u_u(p_1289->g_133, 4))
        { /* block id: 388 */
            if (l_674[6])
                break;
        }
    }
    return p_61;
}


/* ------------------------------------------ */
/* 
 * reads : p_1289->g_393 p_1289->g_152 p_1289->g_564 p_1289->g_133 p_1289->g_228 p_1289->g_98 p_1289->g_102 p_1289->g_220 p_1289->g_3 p_1289->g_123 p_1289->g_10 p_1289->g_283 p_1289->g_292 p_1289->g_317 p_1289->g_232 p_1289->g_199 p_1289->g_108 p_1289->g_151 p_1289->g_124 p_1289->g_18 p_1289->g_318 p_1289->g_425 p_1289->g_591 p_1289->g_592 p_1289->g_391 p_1289->g_352 p_1289->g_36 p_1289->g_38 p_1289->g_9 p_1289->g_445
 * writes: p_1289->g_393 p_1289->g_152 p_1289->g_232 p_1289->g_133 p_1289->g_220 p_1289->g_228 p_1289->g_124 p_1289->g_283 p_1289->g_292 p_1289->g_151 p_1289->g_98 p_1289->g_333 p_1289->g_108 p_1289->g_352 p_1289->g_592 p_1289->g_425 p_1289->g_627 p_1289->g_391
 */
int32_t * func_64(int64_t  p_65, uint8_t  p_66, int16_t  p_67, struct S0 * p_1289)
{ /* block id: 292 */
    uint8_t *l_552 = &p_1289->g_283;
    uint8_t **l_551 = &l_552;
    int32_t l_563 = 0x697DB0CCL;
    int32_t l_568 = (-1L);
    int32_t l_569[8];
    uint16_t **l_593 = &p_1289->g_592;
    uint64_t ***l_623 = &p_1289->g_144;
    uint16_t l_640 = 65535UL;
    int i;
    for (i = 0; i < 8; i++)
        l_569[i] = 0x07F1E3C5L;
    for (p_1289->g_393 = 0; (p_1289->g_393 <= 9); p_1289->g_393 += 1)
    { /* block id: 295 */
        int32_t *l_549 = (void*)0;
        int32_t l_554 = 0x32510B99L;
        uint16_t *l_556 = &p_1289->g_391;
        uint16_t **l_555 = &l_556;
        int64_t *l_562[2][2] = {{&p_1289->g_199,&p_1289->g_199},{&p_1289->g_199,&p_1289->g_199}};
        int32_t l_571 = (-1L);
        int32_t l_573 = 0x06838094L;
        int32_t l_574 = (-4L);
        int32_t l_575 = 0x3E5E833DL;
        int32_t l_577 = 0x6EC8EF7FL;
        int32_t l_579 = 0L;
        int32_t l_580 = 1L;
        int32_t l_581 = 0x30C52162L;
        int32_t l_582 = 0x796C0E35L;
        int32_t l_583 = 0x2F25F937L;
        int32_t l_584 = 0x39CAB4F9L;
        int32_t l_585[1][1];
        int64_t l_594 = 0x155439D9321D2689L;
        uint16_t *l_595 = &p_1289->g_393;
        int32_t l_621 = (-1L);
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_585[i][j] = 8L;
        }
        l_549 = l_549;
        for (p_67 = 0; (p_67 <= 0); p_67 += 1)
        { /* block id: 299 */
            int32_t *l_550 = &p_1289->g_152[0];
            uint64_t *l_553[8];
            uint16_t ***l_557 = &l_555;
            int64_t *l_561 = (void*)0;
            int64_t **l_560[10] = {&l_561,&l_561,&l_561,&l_561,&l_561,&l_561,&l_561,&l_561,&l_561,&l_561};
            int32_t **l_567 = &l_550;
            int32_t l_570 = 1L;
            int32_t l_572 = (-1L);
            int32_t l_576 = 9L;
            int32_t l_578[9] = {8L,8L,8L,8L,8L,8L,8L,8L,8L};
            uint64_t l_586 = 0x9CC0577D2A105F05L;
            uint32_t *l_596 = (void*)0;
            uint32_t *l_597 = &p_1289->g_425[1];
            uint16_t ***l_616[5] = {&l_555,&l_555,&l_555,&l_555,&l_555};
            uint16_t ****l_615 = &l_616[0];
            uint32_t *l_622 = &p_1289->g_124;
            int64_t l_624 = (-9L);
            uint32_t *l_625 = (void*)0;
            uint32_t *l_626 = (void*)0;
            int8_t *l_628 = &p_1289->g_151[0];
            int32_t *l_629[1];
            int i;
            for (i = 0; i < 8; i++)
                l_553[i] = &p_1289->g_117;
            for (i = 0; i < 1; i++)
                l_629[i] = &l_582;
            (*l_550) |= p_65;
            (*l_567) = func_81((l_551 != (((l_554 &= 0xFA97EC07BF87E581L) , (+((l_554 | ((((((((*l_557) = l_555) != &l_556) && ((safe_rshift_func_uint16_t_u_s(((l_562[0][0] = &p_1289->g_333) == ((*l_550) , &p_1289->g_333)), 0)) <= (FAKE_DIVERGE(p_1289->local_1_offset, get_local_id(1), 10) >= FAKE_DIVERGE(p_1289->local_2_offset, get_local_id(2), 10)))) && FAKE_DIVERGE(p_1289->global_0_offset, get_global_id(0), 10)) , l_563) <= p_66) , 0x1CL)) < p_66))) , p_1289->g_564[2])), p_1289);
            l_594 = ((l_563 , (&p_1289->g_565[0] != (void*)0)) && (((FAKE_DIVERGE(p_1289->global_1_offset, get_global_id(1), 10) < ((FAKE_DIVERGE(p_1289->group_0_offset, get_group_id(0), 10) , ((*l_557) = (((++l_586) ^ (safe_lshift_func_uint8_t_u_u(((((**p_1289->g_317) & l_569[5]) , (0x65EFEA8B2FBC4C03L || p_1289->g_425[0])) , l_569[1]), p_66))) , p_1289->g_591))) != l_593)) && GROUP_DIVERGE(0, 1)) || (**p_1289->g_591)));
            l_568 ^= ((((*l_597) = (((*l_555) = (**l_557)) == l_595)) | 0x17A76F70L) <= (((safe_div_func_uint64_t_u_u((((l_575 |= ((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((+((safe_sub_func_uint8_t_u_u(p_66, ((p_65 , ((safe_lshift_func_uint8_t_u_u((((*l_628) = ((p_1289->g_627 = (p_67 == (safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((safe_unary_minus_func_int32_t_s((((((((*l_622) = (safe_add_func_int16_t_s_s(((((*l_615) = &p_1289->g_591) == (((p_65 | (((safe_div_func_uint64_t_u_u((l_585[0][0] = 18446744073709551609UL), 18446744073709551615UL)) || 9UL) < p_65)) && 0L) , l_557)) || 0x47L), l_621))) & p_66) , (**l_567)) , p_1289->g_9) , (void*)0) == l_623))) > p_1289->g_232), p_1289->g_445)), l_624)))) ^ p_1289->g_445)) | p_1289->g_38), l_563)) | (*l_550))) > p_65))) != p_66)) ^ 0x6A65A4F05FF53C09L), p_1289->g_3)), p_66)) || p_67)) < p_67) >= p_65), p_1289->g_123)) && GROUP_DIVERGE(0, 1)) >= p_1289->g_108));
            for (p_1289->g_391 = 1; (p_1289->g_391 <= 9); p_1289->g_391 += 1)
            { /* block id: 319 */
                int32_t l_630 = 0x652BFF7EL;
                int32_t l_631 = 0x30FEF0BFL;
                int64_t l_632 = 0x005087212DF36B07L;
                int32_t l_633 = 5L;
                int32_t l_634 = (-1L);
                int32_t l_635 = (-3L);
                int32_t l_636 = 0x07F646D5L;
                int32_t l_637 = 0x400BFC10L;
                int32_t l_638 = 5L;
                int32_t l_639[5];
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_639[i] = (-9L);
                l_640++;
            }
        }
    }
    return &p_1289->g_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_1289->g_317 p_1289->g_318 p_1289->g_232 p_1289->g_425 p_1289->g_108 p_1289->g_38 p_1289->g_2 p_1289->g_12
 * writes: p_1289->g_425 p_1289->g_133 p_1289->g_152 p_1289->g_232
 */
int64_t  func_68(uint32_t  p_69, int32_t  p_70, int32_t  p_71, uint8_t  p_72, struct S0 * p_1289)
{ /* block id: 272 */
    uint16_t *l_539[1];
    uint16_t **l_538 = &l_539[0];
    int32_t l_547[4] = {0x5EC78D73L,0x5EC78D73L,0x5EC78D73L,0x5EC78D73L};
    int i;
    for (i = 0; i < 1; i++)
        l_539[i] = &p_1289->g_228[4][4];
    for (p_69 = 0; (p_69 <= 2); p_69 += 1)
    { /* block id: 275 */
        int32_t *l_546 = (void*)0;
        for (p_71 = 0; (p_71 <= 2); p_71 += 1)
        { /* block id: 278 */
            uint8_t *l_544 = &p_1289->g_133;
            int32_t *l_545 = &p_1289->g_38;
            int i;
            l_547[0] &= (p_1289->g_152[p_69] = (safe_div_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_u((((0x4C37L ^ (safe_lshift_func_uint8_t_u_u(((*l_544) = (((void*)0 != l_538) , ((**p_1289->g_317) >= (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (++p_1289->g_425[1])))))), p_1289->g_108))) , p_72) & 0x84F0262A4C8084F9L), 2)) , ((l_545 != l_546) < (-4L))) , p_1289->g_232), p_1289->g_38)));
            return p_1289->g_38;
        }
        for (p_1289->g_232 = 1; (p_1289->g_232 >= 0); p_1289->g_232 -= 1)
        { /* block id: 287 */
            int i, j;
            return p_1289->g_2[p_1289->g_232][p_69];
        }
    }
    return p_1289->g_12;
}


/* ------------------------------------------ */
/* 
 * reads : p_1289->g_108 p_1289->g_232 p_1289->g_152 p_1289->g_36 p_1289->g_38 p_1289->g_352 p_1289->g_220 p_1289->g_228 p_1289->g_391 p_1289->g_199 p_1289->g_151 p_1289->g_283 p_1289->g_133 p_1289->g_3 p_1289->g_425 p_1289->g_18 p_1289->g_123 p_1289->g_117 p_1289->g_393 p_1289->g_292 p_1289->g_124 p_1289->g_10 p_1289->g_317 p_1289->g_429 p_1289->g_431 p_1289->g_98
 * writes: p_1289->g_152 p_1289->g_228 p_1289->g_391 p_1289->g_393 p_1289->g_124 p_1289->g_232 p_1289->g_117 p_1289->g_199 p_1289->g_425 p_1289->g_426 p_1289->g_429 p_1289->g_431 p_1289->g_445 p_1289->g_144 p_1289->g_98 p_1289->g_220
 */
uint64_t  func_78(int32_t * p_79, uint8_t  p_80, struct S0 * p_1289)
{ /* block id: 188 */
    int32_t l_361[5][7] = {{6L,6L,1L,0x7137A179L,0x19410EB9L,0x7137A179L,1L},{6L,6L,1L,0x7137A179L,0x19410EB9L,0x7137A179L,1L},{6L,6L,1L,0x7137A179L,0x19410EB9L,0x7137A179L,1L},{6L,6L,1L,0x7137A179L,0x19410EB9L,0x7137A179L,1L},{6L,6L,1L,0x7137A179L,0x19410EB9L,0x7137A179L,1L}};
    uint16_t *l_362 = &p_1289->g_228[4][4];
    int32_t l_371 = (-1L);
    int8_t l_372 = 0x02L;
    uint32_t l_405 = 4294967290UL;
    int16_t *l_487 = &p_1289->g_232;
    int16_t **l_486 = &l_487;
    uint32_t l_497 = 0xB4E8DAF1L;
    int32_t **l_512 = &p_1289->g_220;
    uint64_t l_513 = 0xDBB5806814153483L;
    int64_t *l_528 = &p_1289->g_199;
    int64_t **l_527 = &l_528;
    int i, j;
    if (((p_80 , ((l_361[3][0] >= FAKE_DIVERGE(p_1289->global_2_offset, get_global_id(2), 10)) >= ((l_362 == ((safe_add_func_int64_t_s_s((p_1289->g_108 , p_80), p_80)) , l_362)) || p_80))) | l_361[4][0]))
    { /* block id: 189 */
        int32_t *l_365 = &p_1289->g_152[0];
        int32_t *l_366 = &l_361[0][5];
        int32_t *l_367 = (void*)0;
        int32_t *l_368 = (void*)0;
        int32_t *l_369 = &l_361[3][0];
        int32_t *l_370[3];
        uint8_t l_373[7] = {4UL,0x31L,4UL,4UL,0x31L,4UL,4UL};
        uint16_t *l_390 = &p_1289->g_391;
        uint16_t *l_392 = &p_1289->g_393;
        uint64_t **l_442 = &p_1289->g_145[0];
        int8_t l_494 = 0x54L;
        int i;
        for (i = 0; i < 3; i++)
            l_370[i] = &p_1289->g_152[0];
lbl_462:
        --l_373[3];
        if ((safe_rshift_func_uint8_t_u_s((safe_mod_func_int8_t_s_s((((((p_1289->g_232 , ((*l_392) = ((*l_390) &= (safe_mul_func_uint16_t_u_u(((((safe_lshift_func_uint16_t_u_u(((p_80 > ((!0L) , (safe_add_func_uint8_t_u_u((((*l_365) &= (safe_rshift_func_uint16_t_u_s((*l_369), 7))) < l_361[3][2]), (safe_rshift_func_uint16_t_u_u((((+(*p_79)) != (*p_1289->g_220)) , 65534UL), 1)))))) , ((*l_362) |= p_80)), 10)) && 0x4A26L) && (*l_369)) > p_80), p_80))))) >= 0x76F0L) , 1L) <= p_1289->g_108) != FAKE_DIVERGE(p_1289->group_1_offset, get_group_id(1), 10)), FAKE_DIVERGE(p_1289->group_0_offset, get_group_id(0), 10))), p_80)))
        { /* block id: 195 */
            uint32_t l_394 = 0xC150330CL;
            int8_t *l_491[6][4] = {{&p_1289->g_151[4],&p_1289->g_151[0],&p_1289->g_151[4],&p_1289->g_151[4]},{&p_1289->g_151[4],&p_1289->g_151[0],&p_1289->g_151[4],&p_1289->g_151[4]},{&p_1289->g_151[4],&p_1289->g_151[0],&p_1289->g_151[4],&p_1289->g_151[4]},{&p_1289->g_151[4],&p_1289->g_151[0],&p_1289->g_151[4],&p_1289->g_151[4]},{&p_1289->g_151[4],&p_1289->g_151[0],&p_1289->g_151[4],&p_1289->g_151[4]},{&p_1289->g_151[4],&p_1289->g_151[0],&p_1289->g_151[4],&p_1289->g_151[4]}};
            int i, j;
            l_394++;
            for (p_1289->g_124 = (-29); (p_1289->g_124 > 31); p_1289->g_124++)
            { /* block id: 199 */
                int32_t l_399 = 1L;
                int8_t l_427 = 0L;
                int16_t *l_444[8];
                int32_t l_476[6];
                int8_t l_481[2][10][7] = {{{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)}},{{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)},{(-2L),6L,(-6L),0L,(-6L),6L,(-2L)}}};
                int i, j, k;
                for (i = 0; i < 8; i++)
                    l_444[i] = &p_1289->g_232;
                for (i = 0; i < 6; i++)
                    l_476[i] = 0x7E3D3659L;
                l_361[3][0] = l_399;
                for (p_1289->g_393 = 0; (p_1289->g_393 <= 2); p_1289->g_393 += 1)
                { /* block id: 203 */
                    uint32_t l_400 = 1UL;
                    uint64_t *l_401 = &p_1289->g_117;
                    int64_t *l_402 = &p_1289->g_199;
                    int8_t *l_406 = &l_372;
                    int i;
                    for (p_1289->g_232 = 0; (p_1289->g_232 <= 2); p_1289->g_232 += 1)
                    { /* block id: 206 */
                        int i;
                        (*l_369) = (&p_1289->g_152[1] == (l_370[p_1289->g_232] = p_79));
                    }
                    (*l_369) ^= l_400;
                    if ((((*l_402) &= ((((*l_401) = p_80) & p_1289->g_38) , (p_80 | 1L))) >= ((!(~(FAKE_DIVERGE(p_1289->group_2_offset, get_group_id(2), 10) | p_80))) & (((*l_406) |= (safe_lshift_func_uint8_t_u_u(l_405, (p_1289->g_151[2] == FAKE_DIVERGE(p_1289->local_1_offset, get_local_id(1), 10))))) < p_1289->g_352))))
                    { /* block id: 214 */
                        uint32_t *l_407 = &l_405;
                        uint32_t *l_424 = &p_1289->g_425[1];
                        uint32_t *l_428 = &p_1289->g_429;
                        uint32_t *l_430 = &p_1289->g_431;
                        (*l_365) = ((((*l_407) = p_80) >= (((((safe_add_func_int8_t_s_s(((safe_mod_func_int8_t_s_s(((*l_406) = 1L), (p_1289->g_152[0] && (safe_mul_func_int8_t_s_s(p_1289->g_228[5][2], (((((safe_div_func_uint16_t_u_u(((safe_add_func_int16_t_s_s((p_80 , l_394), (safe_rshift_func_int16_t_s_s((((*l_430) = ((*l_428) = ((safe_mod_func_int8_t_s_s((safe_div_func_int64_t_s_s(p_1289->g_283, 7UL)), ((((*l_424) = FAKE_DIVERGE(p_1289->local_2_offset, get_local_id(2), 10)) ^ (p_1289->g_426 = (0x29B56FADL != GROUP_DIVERGE(0, 1)))) && p_1289->g_133))) , l_427))) , p_80), l_400)))) <= l_400), GROUP_DIVERGE(2, 1))) < p_1289->g_3) == (-1L)) , 18446744073709551609UL) , l_394)))))) == p_80), 0x61L)) || p_1289->g_36) , (void*)0) != &p_1289->g_110[9]) && p_1289->g_425[0])) , l_371);
                        (*l_366) = (safe_div_func_uint8_t_u_u((l_405 != (p_1289->g_18 >= 0x1A9CL)), FAKE_DIVERGE(p_1289->global_2_offset, get_global_id(2), 10)));
                    }
                    else
                    { /* block id: 223 */
                        uint64_t ***l_443 = &l_442;
                        int32_t l_461 = 0x5B97E754L;
                        (*l_366) |= (safe_add_func_uint16_t_u_u(0x41AAL, (((p_80 >= (*l_365)) , ((p_1289->g_445 = ((safe_mod_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(p_1289->g_123, ((void*)0 != &p_1289->g_393))) != ((((((*p_1289->g_220) && 4294967286UL) , ((*l_443) = l_442)) == &p_1289->g_145[0]) , &p_1289->g_232) == l_444[3])), (*p_1289->g_220))) >= 0L)) ^ l_394)) >= p_80)));
                        (*l_369) &= (safe_lshift_func_uint16_t_u_s(p_80, ((((safe_add_func_uint8_t_u_u(p_1289->g_151[0], ((p_1289->g_228[3][0] ^ (safe_div_func_int64_t_s_s(((safe_add_func_uint16_t_u_u(((void*)0 != &p_1289->g_110[3]), (!(safe_unary_minus_func_uint16_t_u(((safe_div_func_uint32_t_u_u((((void*)0 != &p_1289->g_144) && (safe_sub_func_int64_t_s_s(p_1289->g_117, ((5UL == p_1289->g_232) != p_1289->g_117)))), l_394)) <= p_80)))))) <= GROUP_DIVERGE(2, 1)), 0x6AB802EFAD0987D9L))) == p_1289->g_36))) && 4294967295UL) >= p_80) ^ l_399)));
                        if (p_1289->g_151[(p_1289->g_393 + 6)])
                            continue;
                        l_461 &= (l_394 , (((p_80 == (safe_div_func_int32_t_s_s((((((!(p_1289->g_292 == (((void*)0 != &p_1289->g_431) > (&p_80 != (void*)0)))) & 5L) >= ((*l_369) |= 0x62A0674CL)) < p_80) && p_80), p_80))) && p_80) && (-3L)));
                    }
                    if (p_1289->g_124)
                        goto lbl_462;
                }
                for (l_372 = (-23); (l_372 < (-22)); l_372 = safe_add_func_uint16_t_u_u(l_372, 7))
                { /* block id: 236 */
                    int32_t **l_475 = &l_370[1];
                    int16_t ***l_488 = &l_486;
                    uint32_t l_490 = 6UL;
                    (*l_369) = ((*l_365) = (safe_add_func_int8_t_s_s((-9L), (safe_sub_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_u(p_1289->g_3, 0)) && ((+(((safe_lshift_func_int16_t_s_u((l_476[1] |= (p_80 && (p_79 != ((*l_475) = (void*)0)))), 8)) == (p_80 != (safe_div_func_uint64_t_u_u((safe_sub_func_int8_t_s_s(((l_481[1][3][3] > (p_1289->g_151[0] , p_1289->g_292)) != p_80), FAKE_DIVERGE(p_1289->global_2_offset, get_global_id(2), 10))), p_80)))) > p_80)) || 0x959A93CC708BA00FL)), 0UL)) , p_80), (*p_79))))));
                    (*l_365) = ((safe_mod_func_int16_t_s_s((-8L), p_1289->g_10)) == p_80);
                    (*l_365) = (safe_lshift_func_int8_t_s_u((((*l_488) = l_486) != (((safe_unary_minus_func_int8_t_s((+l_490))) >= ((l_394 , l_491[2][3]) == (((*l_366) = 3L) , &l_372))) , p_1289->g_317)), (((safe_div_func_uint8_t_u_u((l_494 == 0xEFFAL), p_80)) , 0x0AFE2C6A5E0B7027L) <= p_80)));
                    if ((*p_1289->g_220))
                        break;
                }
            }
        }
        else
        { /* block id: 248 */
            uint8_t *l_508 = &l_373[3];
            int16_t *l_511 = &p_1289->g_445;
            uint64_t ***l_514 = &p_1289->g_144;
            int32_t l_515 = (-4L);
            uint32_t *l_522 = &p_1289->g_429;
            int64_t ***l_529 = &l_527;
            l_515 = ((l_442 = (FAKE_DIVERGE(p_1289->local_0_offset, get_local_id(0), 10) , l_442)) != ((*l_514) = ((safe_mul_func_uint16_t_u_u(l_497, ((((*p_1289->g_220) || l_371) || (safe_lshift_func_uint16_t_u_s(((*l_362) = (~p_80)), 5))) ^ (((*l_366) ^= ((*l_365) ^= (safe_sub_func_uint32_t_u_u(((+(safe_div_func_int16_t_s_s(((**l_486) = p_80), (safe_mul_func_uint8_t_u_u((--(*l_508)), ((void*)0 == l_511)))))) || (((void*)0 == l_512) , GROUP_DIVERGE(0, 1))), l_513)))) < 0x2490E3CEL)))) , (void*)0)));
            p_1289->g_98 ^= ((((0x75C5F31F38411CFBL != (safe_sub_func_uint8_t_u_u(((((GROUP_DIVERGE(2, 1) , &l_372) == l_508) || p_80) , (*l_369)), ((safe_rshift_func_uint8_t_u_u((*l_365), 0)) <= (l_515 = (safe_mul_func_int16_t_s_s(0x1751L, ((*l_390) = (**l_512))))))))) , (++(*l_522))) , (((*l_508) ^= ((GROUP_DIVERGE(2, 1) , (safe_div_func_uint16_t_u_u(((*l_362) = (&l_442 != &l_442)), p_80))) >= p_1289->g_431)) < 5L)) != 1L);
            (*l_529) = l_527;
        }
        p_1289->g_220 = l_366;
        l_370[0] = p_79;
    }
    else
    { /* block id: 267 */
        int16_t **l_530 = &l_487;
        int16_t ***l_531 = &l_486;
        (*l_512) = p_79;
        (*l_531) = l_530;
    }
    return p_80;
}


/* ------------------------------------------ */
/* 
 * reads : p_1289->g_152 p_1289->g_232 p_1289->g_133 p_1289->g_228 p_1289->g_98 p_1289->g_102 p_1289->g_220 p_1289->g_3 p_1289->g_124 p_1289->g_123 p_1289->g_10 p_1289->g_283 p_1289->g_292 p_1289->g_317 p_1289->g_199 p_1289->g_108 p_1289->g_151 p_1289->g_18
 * writes: p_1289->g_152 p_1289->g_232 p_1289->g_133 p_1289->g_220 p_1289->g_228 p_1289->g_124 p_1289->g_283 p_1289->g_292 p_1289->g_151 p_1289->g_98 p_1289->g_333 p_1289->g_108 p_1289->g_352
 */
int32_t * func_81(uint32_t  p_82, struct S0 * p_1289)
{ /* block id: 129 */
    uint32_t l_235 = 0x46E65E6FL;
    int32_t *l_236 = &p_1289->g_152[1];
    int32_t l_246 = (-1L);
    int32_t l_247[7][9] = {{2L,8L,2L,2L,8L,2L,2L,8L,2L},{2L,8L,2L,2L,8L,2L,2L,8L,2L},{2L,8L,2L,2L,8L,2L,2L,8L,2L},{2L,8L,2L,2L,8L,2L,2L,8L,2L},{2L,8L,2L,2L,8L,2L,2L,8L,2L},{2L,8L,2L,2L,8L,2L,2L,8L,2L},{2L,8L,2L,2L,8L,2L,2L,8L,2L}};
    uint32_t l_248 = 4294967292UL;
    int16_t *l_260 = (void*)0;
    int16_t *l_263 = &p_1289->g_232;
    int64_t *l_290[2];
    int32_t **l_359[10][9] = {{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220},{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220},{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220},{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220},{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220},{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220},{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220},{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220},{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220},{&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220,&p_1289->g_220}};
    int i, j;
    for (i = 0; i < 2; i++)
        l_290[i] = &p_1289->g_199;
    (*l_236) ^= l_235;
    for (p_1289->g_232 = 0; (p_1289->g_232 >= 22); p_1289->g_232++)
    { /* block id: 133 */
        int32_t *l_239 = (void*)0;
        int32_t *l_240 = &p_1289->g_98;
        int32_t *l_241 = &p_1289->g_152[1];
        int32_t *l_242 = &p_1289->g_152[0];
        int32_t l_243 = (-7L);
        int32_t *l_244 = &p_1289->g_98;
        int32_t *l_245[7][6][4] = {{{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12}},{{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12}},{{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12}},{{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12}},{{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12}},{{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12}},{{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12},{&p_1289->g_12,&p_1289->g_38,&p_1289->g_10,&p_1289->g_12}}};
        uint8_t *l_251 = &p_1289->g_133;
        int32_t **l_256 = &p_1289->g_220;
        uint16_t *l_257 = &p_1289->g_228[3][0];
        int16_t **l_261 = (void*)0;
        int16_t **l_262 = &l_260;
        int16_t **l_264 = &l_263;
        int8_t l_334 = 0x44L;
        int32_t l_335 = (-6L);
        int i, j, k;
        --l_248;
        if ((((*l_236) > (((--(*l_251)) | (((*l_257) &= ((safe_mul_func_uint16_t_u_u(((l_239 = &l_243) == ((*l_256) = &l_243)), (0L || p_82))) == (*l_236))) >= ((safe_mul_func_uint8_t_u_u((((*l_262) = l_260) != ((*l_264) = l_263)), (*l_244))) | p_1289->g_152[0]))) != p_1289->g_102)) || p_82))
        { /* block id: 141 */
            int32_t *l_265 = &p_1289->g_3;
            uint8_t l_296 = 1UL;
            (*l_256) = l_265;
            if ((*p_1289->g_220))
                break;
            for (p_1289->g_133 = 29; (p_1289->g_133 >= 32); ++p_1289->g_133)
            { /* block id: 146 */
                uint32_t l_295[2];
                uint32_t l_297 = 0x7B29225AL;
                int32_t *l_300[7] = {&p_1289->g_10,&l_246,&p_1289->g_10,&p_1289->g_10,&l_246,&p_1289->g_10,&p_1289->g_10};
                int i;
                for (i = 0; i < 2; i++)
                    l_295[i] = 4294967295UL;
                for (p_1289->g_124 = 0; (p_1289->g_124 <= 49); p_1289->g_124 = safe_add_func_uint64_t_u_u(p_1289->g_124, 4))
                { /* block id: 149 */
                    uint8_t *l_282 = &p_1289->g_283;
                    uint8_t *l_291 = &p_1289->g_292;
                    int8_t *l_293 = &p_1289->g_151[0];
                    int32_t l_294 = 0x46E23970L;
                    (*l_236) ^= (safe_div_func_int64_t_s_s((safe_lshift_func_int8_t_s_u((*l_265), 6)), ((*l_244) = ((((p_1289->g_123 >= ((safe_mul_func_uint16_t_u_u((((-10L) ^ p_1289->g_10) == 0x3051C18DL), (((*l_293) = (((safe_add_func_uint64_t_u_u(p_82, (((safe_add_func_uint8_t_u_u(0x6CL, ((*l_291) &= ((safe_lshift_func_uint8_t_u_s(((*l_282)--), 4)) == (safe_mul_func_int8_t_s_s(((1L | (safe_div_func_uint64_t_u_u(((l_290[0] == (void*)0) < GROUP_DIVERGE(1, 1)), 1UL))) & p_82), p_82)))))) & p_82) , 1UL))) ^ p_82) == p_82)) <= l_294))) >= l_295[1])) & l_296) == 0UL) , p_82))));
                    l_294 ^= l_297;
                }
                for (l_296 = 4; (l_296 != 45); l_296++)
                { /* block id: 159 */
                    int32_t *l_301 = &p_1289->g_38;
                    return l_301;
                }
            }
            (*l_244) |= p_82;
        }
        else
        { /* block id: 164 */
            uint32_t l_304[1];
            uint16_t l_311 = 1UL;
            int32_t *l_316[7] = {&p_1289->g_12,&p_1289->g_152[2],&p_1289->g_12,&p_1289->g_12,&p_1289->g_152[2],&p_1289->g_12,&p_1289->g_12};
            int i;
            for (i = 0; i < 1; i++)
                l_304[i] = 9UL;
            (*l_236) = ((((safe_add_func_uint32_t_u_u(l_304[0], ((safe_add_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((&p_1289->g_133 == (void*)0), (safe_lshift_func_int8_t_s_u(0x73L, 3)))), (l_311 , (+(safe_add_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(2L, (((((((l_316[5] == (void*)0) , p_1289->g_317) != (void*)0) > p_1289->g_232) , p_82) & 0x6FL) , (-1L)))), p_1289->g_292)))))) <= p_1289->g_199))) == p_1289->g_10) > p_82) > 0x44B6L);
            (*l_242) &= p_82;
            l_247[2][2] |= (((*l_236) | ((safe_sub_func_uint8_t_u_u((&p_1289->g_219 == &l_256), ((*l_239) , (safe_sub_func_int32_t_s_s((safe_mod_func_int64_t_s_s(((safe_lshift_func_uint16_t_u_s((((((safe_lshift_func_uint8_t_u_s(p_82, 7)) & ((+(safe_lshift_func_int16_t_s_s((p_1289->g_333 = (safe_sub_func_uint64_t_u_u((*l_244), p_82))), 9))) , ((*l_236) != ((void*)0 == &p_1289->g_219)))) & 0UL) | (*l_236)) == 4294967294UL), l_334)) , (*l_242)), 0xE6444ABEB6F22AA5L)), (*l_236)))))) && l_335)) , p_82);
        }
        return &p_1289->g_36;
    }
    for (p_1289->g_108 = 1; (p_1289->g_108 <= 4); p_1289->g_108 += 1)
    { /* block id: 174 */
        uint32_t l_342 = 0x4A44ECC7L;
        int32_t l_358 = 0x78CF7486L;
        for (p_1289->g_232 = 4; (p_1289->g_232 >= 0); p_1289->g_232 -= 1)
        { /* block id: 177 */
            uint16_t *l_343[8] = {&p_1289->g_228[3][3],&p_1289->g_228[3][3],&p_1289->g_228[3][3],&p_1289->g_228[3][3],&p_1289->g_228[3][3],&p_1289->g_228[3][3],&p_1289->g_228[3][3],&p_1289->g_228[3][3]};
            uint16_t **l_344 = (void*)0;
            uint16_t **l_345 = &l_343[7];
            int32_t l_355[6][1] = {{2L},{2L},{2L},{2L},{2L},{2L}};
            uint32_t *l_356 = &l_235;
            int32_t *l_357[9] = {&p_1289->g_98,&p_1289->g_98,&p_1289->g_98,&p_1289->g_98,&p_1289->g_98,&p_1289->g_98,&p_1289->g_98,&p_1289->g_98,&p_1289->g_98};
            int i, j;
            l_358 |= ((((safe_sub_func_int64_t_s_s(((safe_sub_func_uint8_t_u_u((((l_342 , ((*l_345) = l_343[7])) != (void*)0) >= ((((*l_356) = (&p_1289->g_219 == ((((((safe_lshift_func_uint8_t_u_s(p_82, 5)) > ((((safe_mul_func_uint16_t_u_u((p_1289->g_228[(p_1289->g_108 + 3)][p_1289->g_108]--), (p_1289->g_352 = 0x16E0L))) || ((safe_mod_func_int8_t_s_s((+p_82), (*l_236))) & (((l_342 & p_1289->g_151[5]) == 1L) & p_82))) != 0L) >= p_82)) | l_355[3][0]) == p_82) && l_342) , (void*)0))) <= l_342) == p_82)), p_1289->g_124)) && 8UL), p_82)) > (*l_236)) == p_1289->g_232) || p_1289->g_18);
        }
    }
    p_1289->g_220 = &l_246;
    return &p_1289->g_352;
}


/* ------------------------------------------ */
/* 
 * reads : p_1289->g_144 p_1289->g_117 p_1289->g_152 p_1289->g_18 p_1289->g_12 p_1289->g_151 p_1289->g_228 p_1289->g_36 p_1289->g_102 p_1289->g_38
 * writes: p_1289->g_145 p_1289->g_152 p_1289->g_219 p_1289->g_228 p_1289->g_232 p_1289->g_133
 */
uint32_t  func_83(int8_t  p_84, int32_t * p_85, int32_t  p_86, int64_t  p_87, struct S0 * p_1289)
{ /* block id: 117 */
    int32_t l_205 = 0L;
    int32_t *l_206[1];
    int32_t **l_216 = &l_206[0];
    int32_t ***l_217 = (void*)0;
    int32_t ***l_218 = (void*)0;
    int32_t **l_222 = &p_1289->g_220;
    int32_t ***l_221[3][9][4] = {{{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0}},{{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0}},{{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0},{&l_222,&l_222,(void*)0,(void*)0}}};
    int32_t **l_223 = &l_206[0];
    uint64_t *l_226[3];
    uint16_t *l_227 = &p_1289->g_228[3][0];
    int16_t *l_231[1];
    uint8_t *l_233 = &p_1289->g_133;
    int8_t l_234 = 0x31L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_206[i] = &p_1289->g_152[0];
    for (i = 0; i < 3; i++)
        l_226[i] = &p_1289->g_108;
    for (i = 0; i < 1; i++)
        l_231[i] = &p_1289->g_232;
    p_1289->g_152[0] ^= (((safe_mul_func_int16_t_s_s(0x4367L, (l_205 = 0x6AFEL))) & (((*p_1289->g_144) = (void*)0) != (void*)0)) != p_1289->g_117);
    l_234 = ((p_87 < (p_1289->g_18 ^ (safe_mul_func_uint8_t_u_u(((*l_233) = (p_1289->g_12 < (p_1289->g_232 = ((safe_unary_minus_func_uint8_t_u((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), (safe_div_func_uint32_t_u_u((((l_216 = &l_206[0]) == (l_223 = (p_1289->g_219 = &p_85))) >= ((safe_mod_func_uint16_t_u_u((l_226[2] != (void*)0), (p_1289->g_151[0] , ((*l_227)++)))) , GROUP_DIVERGE(0, 1))), p_1289->g_36)))), 10)))) , (-1L))))), p_1289->g_102)))) ^ 0x394FL);
    return (**l_223);
}


/* ------------------------------------------ */
/* 
 * reads : p_1289->g_98 p_1289->g_102 p_1289->g_36
 * writes: p_1289->g_98 p_1289->g_102
 */
uint8_t  func_95(int32_t * p_96, int32_t * p_97, struct S0 * p_1289)
{ /* block id: 61 */
    int32_t *l_104 = &p_1289->g_36;
    int32_t l_106 = 0x0C321860L;
    uint64_t **l_147[8][5] = {{(void*)0,&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0]},{(void*)0,&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0]},{(void*)0,&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0]},{(void*)0,&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0]},{(void*)0,&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0]},{(void*)0,&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0]},{(void*)0,&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0]},{(void*)0,&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0],&p_1289->g_145[0]}};
    uint64_t **l_148[4];
    int32_t l_159 = 4L;
    int32_t l_160 = 0x29D39CA9L;
    int32_t l_161 = 0x7F84D383L;
    int32_t l_162 = 0L;
    int32_t l_166 = (-1L);
    int32_t l_171 = 0x7A122F16L;
    uint64_t l_173 = 18446744073709551615UL;
    int i, j;
    for (i = 0; i < 4; i++)
        l_148[i] = &p_1289->g_145[0];
    for (p_1289->g_98 = 27; (p_1289->g_98 > (-4)); p_1289->g_98 = safe_sub_func_int8_t_s_s(p_1289->g_98, 1))
    { /* block id: 64 */
        uint16_t l_101 = 1UL;
        int32_t *l_103[6][3][8] = {{{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10}},{{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10}},{{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10}},{{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10}},{{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10}},{{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10},{&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10,&p_1289->g_10}}};
        int32_t **l_105 = &l_104;
        uint64_t *l_116 = &p_1289->g_117;
        uint64_t *l_119 = &p_1289->g_117;
        uint32_t l_156[9] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
        int i, j, k;
        p_1289->g_102 &= l_101;
    }
    return (*l_104);
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1290;
    struct S0* p_1289 = &c_1290;
    struct S0 c_1291 = {
        {{0x17A4A12BL,0x17A4A12BL,0x17A4A12BL,0x17A4A12BL,0x17A4A12BL},{0x17A4A12BL,0x17A4A12BL,0x17A4A12BL,0x17A4A12BL,0x17A4A12BL}}, // p_1289->g_2
        3L, // p_1289->g_3
        {{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}}}, // p_1289->g_6
        0x3B8BFFBEL, // p_1289->g_7
        0x6EED1E12L, // p_1289->g_8
        1L, // p_1289->g_9
        (-6L), // p_1289->g_10
        2L, // p_1289->g_12
        0L, // p_1289->g_17
        0x3FE73744L, // p_1289->g_18
        0x3B921586L, // p_1289->g_36
        0x6F5E1357L, // p_1289->g_37
        0x60B9F0A6L, // p_1289->g_38
        1L, // p_1289->g_98
        5UL, // p_1289->g_102
        1UL, // p_1289->g_108
        0x4B88B552A0AEB11FL, // p_1289->g_111
        0UL, // p_1289->g_112
        0xE667A4CD60AC8F59L, // p_1289->g_113
        {&p_1289->g_113,&p_1289->g_111,&p_1289->g_112,&p_1289->g_111,&p_1289->g_113,&p_1289->g_113,&p_1289->g_111,&p_1289->g_112,&p_1289->g_111,&p_1289->g_113}, // p_1289->g_110
        0x8C7137E7E5D39A1AL, // p_1289->g_117
        0x6CBD5F44L, // p_1289->g_123
        4294967295UL, // p_1289->g_124
        0xBFL, // p_1289->g_133
        {&p_1289->g_108}, // p_1289->g_145
        &p_1289->g_145[0], // p_1289->g_144
        {0x4FL,0x4FL,0x4FL,0x4FL,0x4FL,0x4FL,0x4FL,0x4FL,0x4FL}, // p_1289->g_151
        {0x6D9A3061L,0x6D9A3061L,0x6D9A3061L}, // p_1289->g_152
        0x390D2ED5C3192946L, // p_1289->g_199
        (void*)0, // p_1289->g_220
        &p_1289->g_220, // p_1289->g_219
        {{65535UL,0x6297L,65535UL,0x6297L,65535UL},{65535UL,0x6297L,65535UL,0x6297L,65535UL},{65535UL,0x6297L,65535UL,0x6297L,65535UL},{65535UL,0x6297L,65535UL,0x6297L,65535UL},{65535UL,0x6297L,65535UL,0x6297L,65535UL},{65535UL,0x6297L,65535UL,0x6297L,65535UL},{65535UL,0x6297L,65535UL,0x6297L,65535UL},{65535UL,0x6297L,65535UL,0x6297L,65535UL}}, // p_1289->g_228
        (-1L), // p_1289->g_232
        255UL, // p_1289->g_283
        0x8FL, // p_1289->g_292
        &p_1289->g_232, // p_1289->g_318
        &p_1289->g_318, // p_1289->g_317
        1L, // p_1289->g_333
        0x37DF1405L, // p_1289->g_352
        0xE75AL, // p_1289->g_391
        0UL, // p_1289->g_393
        {4294967286UL,4294967286UL}, // p_1289->g_425
        0x9470L, // p_1289->g_426
        0x4B4B8E5BL, // p_1289->g_429
        0x8BD463A5L, // p_1289->g_431
        0L, // p_1289->g_445
        0x4C057B1BL, // p_1289->g_548
        0x4DL, // p_1289->g_566
        {&p_1289->g_566,&p_1289->g_566,&p_1289->g_566}, // p_1289->g_565
        {&p_1289->g_565[2],&p_1289->g_565[2],&p_1289->g_565[2],&p_1289->g_565[2],&p_1289->g_565[2],&p_1289->g_565[2],&p_1289->g_565[2],&p_1289->g_565[2],&p_1289->g_565[2],&p_1289->g_565[2]}, // p_1289->g_564
        &p_1289->g_228[6][0], // p_1289->g_592
        &p_1289->g_592, // p_1289->g_591
        4294967289UL, // p_1289->g_627
        (void*)0, // p_1289->g_659
        &p_1289->g_659, // p_1289->g_658
        {0x1F35E9DBA5BA72A7L,0x1F35E9DBA5BA72A7L,0x1F35E9DBA5BA72A7L,0x1F35E9DBA5BA72A7L}, // p_1289->g_669
        &p_1289->g_220, // p_1289->g_753
        &p_1289->g_317, // p_1289->g_784
        &p_1289->g_784, // p_1289->g_783
        (void*)0, // p_1289->g_786
        0xA5L, // p_1289->g_886
        {{{0x5AL,0x5AL,0x5AL}},{{0x5AL,0x5AL,0x5AL}},{{0x5AL,0x5AL,0x5AL}}}, // p_1289->g_956
        0x29L, // p_1289->g_1017
        &p_1289->g_199, // p_1289->g_1020
        &p_1289->g_1020, // p_1289->g_1019
        {{0x6B0441DE69292925L,0x6B0441DE69292925L,0x6B0441DE69292925L,0x6B0441DE69292925L},{0x6B0441DE69292925L,0x6B0441DE69292925L,0x6B0441DE69292925L,0x6B0441DE69292925L}}, // p_1289->g_1089
        (void*)0, // p_1289->g_1090
        &p_1289->g_124, // p_1289->g_1093
        &p_1289->g_1093, // p_1289->g_1092
        {&p_1289->g_1093,&p_1289->g_1093,&p_1289->g_1093,&p_1289->g_1093,&p_1289->g_1093,&p_1289->g_1093,&p_1289->g_1093,&p_1289->g_1093,&p_1289->g_1093}, // p_1289->g_1096
        {&p_1289->g_1096[4],&p_1289->g_1096[4],&p_1289->g_1096[4],&p_1289->g_1096[4],&p_1289->g_1096[4],&p_1289->g_1096[4],&p_1289->g_1096[4],&p_1289->g_1096[4]}, // p_1289->g_1095
        (void*)0, // p_1289->g_1097
        &p_1289->g_1096[4], // p_1289->g_1098
        &p_1289->g_659, // p_1289->g_1108
        (void*)0, // p_1289->g_1250
        (void*)0, // p_1289->g_1251
        &p_1289->g_38, // p_1289->g_1278
        &p_1289->g_1278, // p_1289->g_1277
        0, // p_1289->v_collective
        sequence_input[get_global_id(0)], // p_1289->global_0_offset
        sequence_input[get_global_id(1)], // p_1289->global_1_offset
        sequence_input[get_global_id(2)], // p_1289->global_2_offset
        sequence_input[get_local_id(0)], // p_1289->local_0_offset
        sequence_input[get_local_id(1)], // p_1289->local_1_offset
        sequence_input[get_local_id(2)], // p_1289->local_2_offset
        sequence_input[get_group_id(0)], // p_1289->group_0_offset
        sequence_input[get_group_id(1)], // p_1289->group_1_offset
        sequence_input[get_group_id(2)], // p_1289->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1290 = c_1291;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1289);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1289->g_2[i][j], "p_1289->g_2[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1289->g_3, "p_1289->g_3", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1289->g_6[i][j][k], "p_1289->g_6[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1289->g_7, "p_1289->g_7", print_hash_value);
    transparent_crc(p_1289->g_8, "p_1289->g_8", print_hash_value);
    transparent_crc(p_1289->g_9, "p_1289->g_9", print_hash_value);
    transparent_crc(p_1289->g_10, "p_1289->g_10", print_hash_value);
    transparent_crc(p_1289->g_12, "p_1289->g_12", print_hash_value);
    transparent_crc(p_1289->g_17, "p_1289->g_17", print_hash_value);
    transparent_crc(p_1289->g_18, "p_1289->g_18", print_hash_value);
    transparent_crc(p_1289->g_36, "p_1289->g_36", print_hash_value);
    transparent_crc(p_1289->g_37, "p_1289->g_37", print_hash_value);
    transparent_crc(p_1289->g_38, "p_1289->g_38", print_hash_value);
    transparent_crc(p_1289->g_98, "p_1289->g_98", print_hash_value);
    transparent_crc(p_1289->g_102, "p_1289->g_102", print_hash_value);
    transparent_crc(p_1289->g_108, "p_1289->g_108", print_hash_value);
    transparent_crc(p_1289->g_111, "p_1289->g_111", print_hash_value);
    transparent_crc(p_1289->g_112, "p_1289->g_112", print_hash_value);
    transparent_crc(p_1289->g_113, "p_1289->g_113", print_hash_value);
    transparent_crc(p_1289->g_117, "p_1289->g_117", print_hash_value);
    transparent_crc(p_1289->g_123, "p_1289->g_123", print_hash_value);
    transparent_crc(p_1289->g_124, "p_1289->g_124", print_hash_value);
    transparent_crc(p_1289->g_133, "p_1289->g_133", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1289->g_151[i], "p_1289->g_151[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1289->g_152[i], "p_1289->g_152[i]", print_hash_value);

    }
    transparent_crc(p_1289->g_199, "p_1289->g_199", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1289->g_228[i][j], "p_1289->g_228[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1289->g_232, "p_1289->g_232", print_hash_value);
    transparent_crc(p_1289->g_283, "p_1289->g_283", print_hash_value);
    transparent_crc(p_1289->g_292, "p_1289->g_292", print_hash_value);
    transparent_crc(p_1289->g_333, "p_1289->g_333", print_hash_value);
    transparent_crc(p_1289->g_352, "p_1289->g_352", print_hash_value);
    transparent_crc(p_1289->g_391, "p_1289->g_391", print_hash_value);
    transparent_crc(p_1289->g_393, "p_1289->g_393", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1289->g_425[i], "p_1289->g_425[i]", print_hash_value);

    }
    transparent_crc(p_1289->g_426, "p_1289->g_426", print_hash_value);
    transparent_crc(p_1289->g_429, "p_1289->g_429", print_hash_value);
    transparent_crc(p_1289->g_431, "p_1289->g_431", print_hash_value);
    transparent_crc(p_1289->g_445, "p_1289->g_445", print_hash_value);
    transparent_crc(p_1289->g_548, "p_1289->g_548", print_hash_value);
    transparent_crc(p_1289->g_566, "p_1289->g_566", print_hash_value);
    transparent_crc(p_1289->g_627, "p_1289->g_627", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1289->g_669[i], "p_1289->g_669[i]", print_hash_value);

    }
    transparent_crc(p_1289->g_886, "p_1289->g_886", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1289->g_956[i][j][k], "p_1289->g_956[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1289->g_1017, "p_1289->g_1017", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1289->g_1089[i][j], "p_1289->g_1089[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1289->v_collective, "p_1289->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
