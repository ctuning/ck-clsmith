// ---atomic_reductions ---fake_divergence -g 23,40,6 -l 1,10,3
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


// Seed: 77

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
};

union U1 {
   volatile uint8_t  f0;
   volatile int32_t  f1;
   volatile uint32_t  f2;
};

struct S2 {
    int8_t g_17;
    int8_t *g_16;
    volatile int32_t g_42;
    volatile int32_t * volatile g_41;
    int32_t g_76;
    int8_t *g_84[3][10];
    int8_t **g_83;
    int16_t g_93;
    int32_t g_100;
    int32_t g_103;
    uint64_t g_107[8];
    struct S0 g_111;
    uint16_t g_134;
    uint32_t g_156;
    int64_t g_166;
    int32_t *g_168;
    int16_t g_210[5];
    int32_t g_218;
    uint8_t g_228;
    uint32_t g_253;
    uint32_t g_278;
    struct S0 *g_281;
    uint32_t g_283;
    uint64_t g_288;
    int32_t g_306;
    int32_t g_307;
    int32_t g_310[5];
    uint32_t *g_318;
    uint32_t *g_321;
    volatile int32_t g_371;
    volatile int32_t * volatile g_370;
    volatile int32_t * volatile *g_369;
    volatile int32_t * volatile * volatile *g_368;
    uint64_t g_384;
    int8_t g_386[10];
    uint64_t **g_406;
    struct S0 g_407;
    union U1 g_426;
    int32_t ** volatile g_429;
    volatile int16_t g_434[1][9];
    volatile int16_t *g_433;
    int16_t **g_473;
    uint8_t g_491[10][8][3];
    union U1 g_565;
    int32_t ** volatile g_571;
    int64_t g_591[4];
    union U1 g_783[2][2];
    volatile uint32_t g_796;
    volatile uint32_t * volatile g_795;
    volatile uint32_t * volatile *g_794;
    volatile uint16_t g_803;
    volatile uint16_t * volatile g_802;
    volatile uint16_t * volatile * volatile g_801;
    uint16_t g_814;
    uint16_t *g_873[6];
    int64_t g_895[7];
    uint8_t g_924;
    volatile uint16_t g_1011;
    uint8_t g_1018;
    int32_t * volatile g_1071;
    int32_t * volatile g_1072;
    int32_t * volatile g_1073;
    volatile int32_t g_1085;
    union U1 *g_1097;
    union U1 **g_1096;
    union U1 *** volatile g_1095;
    union U1 g_1124[9][7][2];
    union U1 ** volatile g_1126[2];
    union U1 ** volatile g_1127;
    union U1 ** volatile g_1128[2][1];
    union U1 g_1197[4][6];
    int32_t *g_1218;
    int32_t ** volatile g_1223;
    volatile uint16_t * volatile g_1253[2];
    union U1 *g_1255[2];
    int32_t **g_1267;
    int64_t * volatile g_1341[5][4];
    int64_t * volatile *g_1340[8];
    int32_t *** volatile g_1360;
    uint32_t ** volatile g_1389;
    uint32_t ** volatile *g_1388;
    union U1 g_1414[9][8][3];
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
uint64_t  func_1(struct S2 * p_1430);
uint8_t  func_6(int8_t * p_7, int8_t * p_8, int64_t  p_9, struct S2 * p_1430);
int8_t * func_10(int8_t * p_11, int32_t  p_12, int8_t * p_13, int8_t * p_14, int32_t  p_15, struct S2 * p_1430);
uint32_t  func_20(struct S0  p_21, int8_t * p_22, struct S2 * p_1430);
struct S0  func_23(int8_t * p_24, int8_t * p_25, int8_t  p_26, int8_t * p_27, int8_t * p_28, struct S2 * p_1430);
uint32_t  func_31(int8_t * p_32, struct S2 * p_1430);
int8_t * func_33(int64_t  p_34, struct S2 * p_1430);
int32_t * func_38(uint32_t  p_39, uint32_t  p_40, struct S2 * p_1430);
uint32_t  func_43(int32_t  p_44, int8_t  p_45, int16_t  p_46, int8_t * p_47, struct S2 * p_1430);
int16_t  func_64(uint32_t  p_65, int64_t  p_66, int32_t  p_67, int64_t  p_68, int8_t * p_69, struct S2 * p_1430);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1430->g_16 p_1430->g_17 p_1430->g_41 p_1430->g_107 p_1430->g_76 p_1430->g_103 p_1430->g_100 p_1430->g_156 p_1430->g_166 p_1430->g_134 p_1430->g_93 p_1430->g_283 p_1430->g_429 p_1430->g_433 p_1430->g_306 p_1430->g_368 p_1430->g_369 p_1430->g_370 p_1430->g_371 p_1430->g_318 p_1430->g_473 p_1430->g_491 p_1430->g_407.f0 p_1430->g_288 p_1430->g_434 p_1430->g_307 p_1430->g_281 p_1430->g_111 p_1430->g_565 p_1430->g_310 p_1430->g_571 p_1430->g_386 p_1430->g_384 p_1430->g_168 p_1430->g_228 p_1430->g_253 p_1430->g_84 p_1430->g_218 p_1430->g_591 p_1430->g_210 p_1430->g_783 p_1430->g_794 p_1430->g_42 p_1430->g_801 p_1430->g_814 p_1430->g_406 p_1430->g_895 p_1430->g_924 p_1430->g_278 p_1430->g_1011 p_1430->g_1018 p_1430->g_1073 p_1430->g_1095 p_1430->g_795 p_1430->g_1124 p_1430->g_1197 p_1430->g_802 p_1430->g_1223 p_1430->g_321 p_1430->g_1253 p_1430->g_1255 p_1430->g_803 p_1430->g_565.f0 p_1430->g_873 p_1430->g_1388 p_1430->g_1218 p_1430->g_783.f0 p_1430->g_1414
 * writes: p_1430->g_17 p_1430->g_76 p_1430->g_83 p_1430->g_93 p_1430->g_107 p_1430->g_156 p_1430->g_111.f0 p_1430->g_166 p_1430->g_168 p_1430->g_134 p_1430->g_283 p_1430->g_306 p_1430->g_371 p_1430->g_370 p_1430->g_253 p_1430->g_473 p_1430->g_407.f0 p_1430->g_307 p_1430->g_218 p_1430->g_406 p_1430->g_384 p_1430->g_491 p_1430->g_310 p_1430->g_210 p_1430->g_591 p_1430->g_288 p_1430->g_228 p_1430->g_565.f0 p_1430->g_386 p_1430->g_100 p_1430->g_801 p_1430->g_111 p_1430->g_814 p_1430->g_873 p_1430->g_895 p_1430->g_278 p_1430->g_84 p_1430->g_924 p_1430->g_1011 p_1430->g_1018 p_1430->g_1096 p_1430->g_103 p_1430->g_1218 p_1430->g_1255 p_1430->g_1267
 */
uint64_t  func_1(struct S2 * p_1430)
{ /* block id: 4 */
    int8_t l_4 = 0x42L;
    int8_t *l_5 = &l_4;
    int32_t l_722 = (-2L);
    int16_t l_725 = 2L;
    int32_t l_1138 = 0x12EEDE47L;
    uint8_t l_1202 = 1UL;
    int8_t *l_1205 = &p_1430->g_111.f0;
    int64_t *l_1228 = &p_1430->g_166;
    int16_t l_1254 = 0x5468L;
    union U1 ***l_1266 = &p_1430->g_1096;
    struct S0 *l_1277 = (void*)0;
    int32_t l_1337 = 0L;
    int8_t l_1349[10] = {0L,1L,0x08L,1L,0L,0L,1L,0x08L,1L,0L};
    int32_t *l_1377[2][10] = {{(void*)0,&p_1430->g_218,&p_1430->g_218,&p_1430->g_218,(void*)0,(void*)0,&p_1430->g_218,&p_1430->g_218,&p_1430->g_218,(void*)0},{(void*)0,&p_1430->g_218,&p_1430->g_218,&p_1430->g_218,(void*)0,(void*)0,&p_1430->g_218,&p_1430->g_218,&p_1430->g_218,(void*)0}};
    uint16_t l_1415 = 65535UL;
    int32_t l_1423 = 0x6E50A562L;
    int32_t l_1424 = 7L;
    int32_t l_1425[7][8][4] = {{{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L}},{{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L}},{{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L}},{{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L}},{{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L}},{{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L}},{{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L},{9L,0x6BD53B7EL,0x42D4C791L,0L}}};
    int i, j, k;
    if ((((*l_5) = (safe_rshift_func_uint8_t_u_u(l_4, 0))) == func_6(func_10(p_1430->g_16, (safe_lshift_func_int16_t_s_u((p_1430->g_17 , ((func_20(func_23(((safe_rshift_func_int16_t_s_s((func_31(func_33(p_1430->g_17, p_1430), p_1430) , ((p_1430->g_253 >= (((safe_div_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((safe_rshift_func_int8_t_s_s(l_722, ((*p_1430->g_16) |= ((safe_add_func_uint32_t_u_u((p_1430->g_228 > 0x677CL), 0x741437AAL)) <= 0x0714CFEE243C58BEL)))) || 0x24F565B7F31491F0L) > l_722), l_722)), l_722)) , l_722) & l_725)) || (-1L))), 15)) , &p_1430->g_386[4]), l_5, l_725, p_1430->g_84[0][7], p_1430->g_16, p_1430), p_1430->g_84[0][7], p_1430) , l_5) == (void*)0)), p_1430->g_103)), p_1430->g_16, l_5, l_725, p_1430), l_5, l_725, p_1430)))
    { /* block id: 556 */
        union U1 *l_1125 = &p_1430->g_426;
        int32_t l_1137 = (-10L);
        uint64_t *l_1169 = &p_1430->g_107[1];
        uint64_t **l_1168 = &l_1169;
        uint64_t l_1193 = 18446744073709551613UL;
        int32_t l_1215 = 1L;
        int16_t l_1225 = 1L;
        uint16_t **l_1294 = &p_1430->g_873[2];
        int8_t *l_1299 = &p_1430->g_111.f0;
        uint32_t l_1328[4][3] = {{0x1F1FD00BL,0x1F1FD00BL,0x1F1FD00BL},{0x1F1FD00BL,0x1F1FD00BL,0x1F1FD00BL},{0x1F1FD00BL,0x1F1FD00BL,0x1F1FD00BL},{0x1F1FD00BL,0x1F1FD00BL,0x1F1FD00BL}};
        union U1 ***l_1345 = &p_1430->g_1096;
        struct S0 l_1396 = {0x01L};
        int32_t *l_1418 = (void*)0;
        int32_t *l_1419 = &l_1215;
        int32_t *l_1420 = &l_1337;
        int32_t *l_1421 = &p_1430->g_310[1];
        int32_t *l_1422[5][4];
        uint32_t l_1426 = 0xBC2DA619L;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 4; j++)
                l_1422[i][j] = &p_1430->g_310[0];
        }
lbl_1304:
        for (p_1430->g_814 = 0; (p_1430->g_814 != 42); p_1430->g_814 = safe_add_func_uint8_t_u_u(p_1430->g_814, 7))
        { /* block id: 559 */
            uint32_t l_1139[3][4] = {{1UL,0xFA115581L,1UL,1UL},{1UL,0xFA115581L,1UL,1UL},{1UL,0xFA115581L,1UL,1UL}};
            uint32_t *l_1188 = &p_1430->g_278;
            uint8_t l_1194 = 255UL;
            int32_t *l_1198 = &p_1430->g_307;
            uint32_t *l_1199 = (void*)0;
            uint32_t *l_1200[6][5] = {{&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156},{&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156},{&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156},{&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156},{&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156},{&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156,&p_1430->g_156}};
            int32_t l_1201 = 1L;
            int i, j;
            for (p_1430->g_924 = 0; (p_1430->g_924 <= 3); p_1430->g_924 += 1)
            { /* block id: 562 */
                union U1 *l_1129 = &p_1430->g_783[1][1];
                int32_t l_1136 = 0L;
                for (p_1430->g_228 = 0; (p_1430->g_228 <= 3); p_1430->g_228 += 1)
                { /* block id: 565 */
                    int32_t *l_1130 = &p_1430->g_307;
                    int32_t **l_1131 = &l_1130;
                    int32_t **l_1132 = &p_1430->g_168;
                    int32_t *l_1134 = &p_1430->g_76;
                    int32_t **l_1133 = &l_1134;
                    l_1129 = (p_1430->g_1124[5][5][1] , l_1125);
                    (*l_1133) = ((*l_1132) = ((*l_1131) = l_1130));
                    for (p_1430->g_166 = 3; (p_1430->g_166 >= 0); p_1430->g_166 -= 1)
                    { /* block id: 572 */
                        int32_t *l_1135[2][4][1] = {{{&p_1430->g_100},{&p_1430->g_100},{&p_1430->g_100},{&p_1430->g_100}},{{&p_1430->g_100},{&p_1430->g_100},{&p_1430->g_100},{&p_1430->g_100}}};
                        int i, j, k;
                        l_1139[0][3]--;
                    }
                }
            }
            for (l_4 = 23; (l_4 >= 26); l_4 = safe_add_func_int64_t_s_s(l_4, 2))
            { /* block id: 579 */
                uint8_t l_1148 = 0x1FL;
                for (p_1430->g_307 = (-25); (p_1430->g_307 <= (-9)); ++p_1430->g_307)
                { /* block id: 582 */
                    uint32_t l_1150 = 0x17743577L;
                    int32_t l_1151 = 0x4C706992L;
                    for (p_1430->g_100 = 29; (p_1430->g_100 < 23); --p_1430->g_100)
                    { /* block id: 585 */
                        int32_t *l_1149 = &l_1138;
                        (*l_1149) = l_1148;
                    }
                    l_1151 ^= l_1150;
                    for (p_1430->g_134 = 0; (p_1430->g_134 > 58); ++p_1430->g_134)
                    { /* block id: 591 */
                        return p_1430->g_210[0];
                    }
                    return p_1430->g_17;
                }
                for (p_1430->g_166 = 0; (p_1430->g_166 <= (-11)); p_1430->g_166 = safe_sub_func_uint8_t_u_u(p_1430->g_166, 1))
                { /* block id: 598 */
                    int64_t l_1164 = 0L;
                    uint64_t ***l_1167 = &p_1430->g_406;
                    int16_t *l_1174 = &p_1430->g_210[2];
                    struct S0 l_1175[9] = {{0x2FL},{0x2FL},{0x2FL},{0x2FL},{0x2FL},{0x2FL},{0x2FL},{0x2FL},{0x2FL}};
                    int i;
                    l_1175[7] = ((safe_sub_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((((safe_div_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((&p_1430->g_111 != ((((l_1164 , (*p_1430->g_433)) == l_1139[0][3]) <= ((*l_1174) = (safe_lshift_func_int16_t_s_u(((l_1148 , ((((*l_1167) = p_1430->g_406) == l_1168) & ((*p_1430->g_318) , ((((safe_lshift_func_uint8_t_u_s((((*l_1168) = &p_1430->g_288) != &p_1430->g_107[1]), 1)) <= 0L) >= l_1138) > (*p_1430->g_16))))) > p_1430->g_310[0]), l_1148)))) , (void*)0)), 0x8BA7F2F139FE9BDBL)), l_1148)) , &p_1430->g_873[3]) == &p_1430->g_873[2]), l_725)), 0L)) , (*p_1430->g_281));
                }
            }
            l_1138 = (safe_add_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((((l_1201 = ((((--(**l_1168)) == (((safe_lshift_func_int8_t_s_u((1UL || l_1137), 1)) , (--(*l_1188))) != (safe_rshift_func_int8_t_s_s(l_725, ((l_1193 >= (l_1194 != ((*l_1198) = ((0x9E707D23D42B2AE9L > ((l_1193 , (safe_mul_func_uint16_t_u_u(((((p_1430->g_1197[3][5] , l_1139[0][3]) != FAKE_DIVERGE(p_1430->local_1_offset, get_local_id(1), 10)) != l_1138) != (*p_1430->g_16)), 1L))) == p_1430->g_306)) || (*p_1430->g_16))))) >= l_1193))))) || l_1193) != p_1430->g_386[4])) | FAKE_DIVERGE(p_1430->global_2_offset, get_global_id(2), 10)) == l_1139[2][0]) , l_1202), p_1430->g_310[3])), p_1430->g_134)), p_1430->g_111.f0));
        }
lbl_1417:
        for (l_1193 = 0; (l_1193 < 44); l_1193++)
        { /* block id: 613 */
            int8_t *l_1206 = &p_1430->g_407.f0;
            struct S0 l_1207 = {0x3FL};
            int32_t *l_1208 = &l_722;
            int64_t *l_1231[10];
            struct S0 *l_1258 = &l_1207;
            union U1 ***l_1265 = &p_1430->g_1096;
            int8_t l_1303 = 0x30L;
            int32_t **l_1359 = &l_1208;
            int i;
            for (i = 0; i < 10; i++)
                l_1231[i] = &p_1430->g_166;
            (*l_1208) &= ((l_1207 , (*p_1430->g_801)) != &p_1430->g_814);
            for (p_1430->g_814 = 0; (p_1430->g_814 <= 4); p_1430->g_814 += 1)
            { /* block id: 618 */
                int64_t *l_1209[4];
                int16_t *l_1214[3];
                int32_t *l_1217 = (void*)0;
                int32_t **l_1216 = &l_1217;
                uint32_t *l_1221 = (void*)0;
                uint32_t *l_1222 = &p_1430->g_278;
                int16_t l_1224 = 0x5CD3L;
                int i;
                for (i = 0; i < 4; i++)
                    l_1209[i] = &p_1430->g_166;
                for (i = 0; i < 3; i++)
                    l_1214[i] = &p_1430->g_93;
                (*p_1430->g_1223) = func_38((!((p_1430->g_166 = (l_722 = 0x703A30417FCC25E0L)) , (safe_lshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s((-10L), ((((l_1215 = 0x66EBL) && ((*p_1430->g_281) , p_1430->g_310[p_1430->g_814])) , ((*l_1216) = &p_1430->g_218)) != (p_1430->g_1218 = &p_1430->g_218)))), ((((*l_1208) |= p_1430->g_288) , (((safe_div_func_uint32_t_u_u(((*l_1222) = 1UL), l_1193)) , &p_1430->g_218) == &p_1430->g_218)) & p_1430->g_210[0]))))), p_1430->g_310[p_1430->g_814], p_1430);
                if (l_1224)
                    continue;
            }
            if (l_1215)
            { /* block id: 629 */
                int64_t *l_1229 = &p_1430->g_895[5];
                int64_t **l_1230[5][5][3] = {{{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228}},{{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228}},{{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228}},{{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228}},{{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228},{&l_1228,(void*)0,&l_1228}}};
                int32_t l_1236 = 0x02D207CCL;
                uint16_t l_1276 = 1UL;
                int i, j, k;
                (*l_1208) = ((l_1225 , (((((safe_mod_func_uint16_t_u_u(((l_1228 == (l_1231[0] = l_1229)) , (l_1137 > 7L)), (safe_add_func_int8_t_s_s(((*l_1206) = (safe_add_func_int16_t_s_s(((0x3ABEL ^ 0x12FCL) , ((*p_1430->g_321) , (((&p_1430->g_407 != (void*)0) && p_1430->g_103) | p_1430->g_228))), (*l_1208)))), (*l_1208))))) > l_1236) == FAKE_DIVERGE(p_1430->global_2_offset, get_global_id(2), 10)) <= l_4) ^ l_725)) != (*l_1208));
                (*l_1208) = (safe_sub_func_int64_t_s_s(p_1430->g_386[4], (-1L)));
                for (p_1430->g_17 = (-14); (p_1430->g_17 != (-10)); p_1430->g_17++)
                { /* block id: 636 */
                    int16_t l_1241 = 0x7131L;
                    int32_t *l_1244 = &p_1430->g_103;
                    struct S0 *l_1278[7] = {&l_1207,&l_1207,&l_1207,&l_1207,&l_1207,&l_1207,&l_1207};
                    int i;
                    if (l_1241)
                    { /* block id: 637 */
                        int32_t **l_1242 = &p_1430->g_168;
                        (*l_1242) = l_1208;
                        (*p_1430->g_168) ^= 0x30358456L;
                        (*l_1242) = l_1208;
                    }
                    else
                    { /* block id: 641 */
                        uint16_t l_1243 = 0xA2E5L;
                        return l_1243;
                    }
                    (*l_1244) ^= (*l_1208);
                    if (((*l_1244) ^ (safe_mod_func_int16_t_s_s(((((safe_sub_func_int64_t_s_s(((*p_1430->g_281) , ((safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((l_1225 <= ((*l_1208) = ((((l_1228 != (void*)0) , 0xBB3278D5L) , l_1207) , (((*l_1229) |= ((((p_1430->g_1253[0] != (void*)0) , 0x76566DF0L) ^ (*p_1430->g_168)) <= l_1137)) != l_1225)))), 7)), p_1430->g_107[1])) , 1L)), p_1430->g_384)) || (-8L)) < l_1254) , 0x2290L), l_1193))))
                    { /* block id: 647 */
                        union U1 **l_1256 = &p_1430->g_1255[1];
                        struct S0 **l_1257[7] = {&p_1430->g_281,&p_1430->g_281,&p_1430->g_281,&p_1430->g_281,&p_1430->g_281,&p_1430->g_281,&p_1430->g_281};
                        int i;
                        (*l_1256) = p_1430->g_1255[1];
                        (*l_1244) |= 0x76933D9EL;
                        l_1258 = (void*)0;
                    }
                    else
                    { /* block id: 651 */
                        int16_t *l_1270[4];
                        int32_t l_1275 = (-1L);
                        int i;
                        for (i = 0; i < 4; i++)
                            l_1270[i] = &p_1430->g_210[2];
                        l_1278[4] = (((safe_mul_func_int16_t_s_s((p_1430->g_386[4] && (safe_rshift_func_uint16_t_u_s((safe_mod_func_uint32_t_u_u((((l_1265 != l_1266) != (((*l_1244) | ((p_1430->g_1267 = &p_1430->g_168) == (*p_1430->g_368))) != (l_1215 |= ((*l_1208) |= (safe_rshift_func_uint16_t_u_u(0x8299L, (**p_1430->g_801))))))) , (!GROUP_DIVERGE(0, 1))), (((safe_div_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(((*p_1430->g_281) , 0L), (*l_1244))) , l_1275), l_1276)) || l_1225) , 7L))), 7))), (*l_1244))) | l_1202) , l_1277);
                        return l_1254;
                    }
                }
            }
            else
            { /* block id: 659 */
                int64_t l_1283 = 0x116D44B421620B0AL;
                for (l_1202 = 0; (l_1202 != 31); ++l_1202)
                { /* block id: 662 */
                    int32_t l_1295 = 0x78EC7851L;
                    int32_t *l_1296 = &p_1430->g_100;
                    int8_t *l_1298[3][8][3] = {{{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4}},{{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4}},{{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4},{&l_4,&l_4,&l_4}}};
                    int i, j, k;
                    (*l_1296) &= (safe_sub_func_uint16_t_u_u(l_1283, ((((*l_1208) >= (((safe_add_func_int8_t_s_s(((((**l_1168) = l_725) , (safe_add_func_int32_t_s_s((&p_1430->g_591[0] != (void*)0), (safe_lshift_func_int8_t_s_u(((safe_sub_func_uint8_t_u_u(p_1430->g_134, (*p_1430->g_16))) >= ((0x18C8L | (safe_div_func_uint32_t_u_u(((void*)0 != l_1294), l_1283))) <= 0x03350919CADB2D81L)), 7))))) >= (*l_1208)), p_1430->g_253)) , (*p_1430->g_433)) >= 8UL)) || l_1295) ^ (*p_1430->g_16))));
                    for (p_1430->g_218 = 0; (p_1430->g_218 >= 0); p_1430->g_218 -= 1)
                    { /* block id: 667 */
                        int8_t *l_1297 = &p_1430->g_386[4];
                        struct S0 l_1300[2] = {{0x23L},{0x23L}};
                        int i, j;
                        (*p_1430->g_281) = l_1300[1];
                    }
                    for (l_1295 = 0; (l_1295 > (-20)); --l_1295)
                    { /* block id: 672 */
                        if (l_1254)
                            break;
                        return p_1430->g_565.f0;
                    }
                    if (l_1303)
                        continue;
                }
                if (l_1283)
                    continue;
                if (p_1430->g_218)
                    goto lbl_1304;
                l_1138 |= l_1283;
            }
            for (p_1430->g_218 = 0; (p_1430->g_218 != 9); p_1430->g_218 = safe_add_func_int32_t_s_s(p_1430->g_218, 3))
            { /* block id: 684 */
                uint8_t l_1307 = 0xFAL;
                int32_t *l_1312 = &p_1430->g_76;
                union U1 ***l_1344 = &p_1430->g_1096;
                for (p_1430->g_307 = 3; (p_1430->g_307 >= 1); p_1430->g_307 -= 1)
                { /* block id: 687 */
                    --l_1307;
                }
            }
        }
        for (l_722 = (-6); (l_722 <= 7); l_722 = safe_add_func_int64_t_s_s(l_722, 8))
        { /* block id: 738 */
            int16_t l_1367 = 9L;
            uint32_t **l_1387 = &p_1430->g_321;
            uint32_t ***l_1386[2];
            int32_t l_1413 = 0x58F33304L;
            struct S0 l_1416 = {4L};
            int i;
            for (i = 0; i < 2; i++)
                l_1386[i] = &l_1387;
            for (p_1430->g_93 = 0; (p_1430->g_93 <= 1); p_1430->g_93 += 1)
            { /* block id: 741 */
                uint8_t *l_1370 = &l_1202;
                int i;
                if ((((*l_1228) = (safe_lshift_func_int16_t_s_s((l_1138 |= (p_1430->g_107[(p_1430->g_93 + 6)] == (((l_1367 > ((*l_1370) = (safe_rshift_func_uint16_t_u_s((((*p_1430->g_41) != l_1367) ^ p_1430->g_107[(p_1430->g_93 + 6)]), l_722)))) & ((**l_1294) &= 0xB508L)) != l_1337))), 13))) == ((safe_div_func_uint64_t_u_u(l_1215, l_4)) == p_1430->g_107[(p_1430->g_93 + 6)])))
                { /* block id: 746 */
                    uint32_t l_1380[4];
                    int32_t l_1385 = 0x02C7D322L;
                    int64_t *l_1397[8][8][4] = {{{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0}},{{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0}},{{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0}},{{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0}},{{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0}},{{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0}},{{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0}},{{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0},{(void*)0,&p_1430->g_895[1],(void*)0,(void*)0}}};
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_1380[i] = 4294967294UL;
                    for (p_1430->g_384 = 0; (p_1430->g_384 <= 1); p_1430->g_384 += 1)
                    { /* block id: 749 */
                        uint64_t l_1390 = 0x395C293A43EF11ECL;
                        uint32_t l_1391 = 8UL;
                        int32_t *l_1392 = (void*)0;
                        int32_t *l_1393 = &p_1430->g_76;
                        (*l_1393) ^= (safe_sub_func_uint64_t_u_u(p_1430->g_283, ((safe_mod_func_uint64_t_u_u((((l_1377[0][8] != (void*)0) | 0L) != (safe_rshift_func_int16_t_s_s(l_1380[3], (safe_mod_func_uint16_t_u_u((!((safe_lshift_func_uint16_t_u_s(l_1385, ((*p_1430->g_801) != ((p_1430->g_107[(p_1430->g_93 + 6)] | ((l_1215 = (((**l_1294) = (l_1386[1] == p_1430->g_1388)) , l_1367)) >= l_1390)) , (void*)0)))) | l_1391)), l_1367))))), 0x39D67D21C7EDBBF9L)) == 0x1FL)));
                        if ((*p_1430->g_1073))
                            continue;
                        (*l_1393) ^= (-1L);
                    }
                    for (p_1430->g_278 = 0; (p_1430->g_278 <= 5); p_1430->g_278 += 1)
                    { /* block id: 758 */
                        int i, j;
                        l_1416 = ((((((safe_add_func_int64_t_s_s((&p_1430->g_895[(p_1430->g_278 + 1)] != (l_1396 , l_1397[4][0][3])), ((((*p_1430->g_1218) , (((**l_1294)++) , ((*l_1370) = (FAKE_DIVERGE(p_1430->local_1_offset, get_local_id(1), 10) >= ((((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int16_t_s_s((65533UL & (safe_rshift_func_int8_t_s_s((safe_unary_minus_func_int16_t_s(((safe_rshift_func_int8_t_s_u((l_1380[3] , (safe_rshift_func_uint8_t_u_s((((**l_1168) = ((p_1430->g_783[p_1430->g_93][p_1430->g_93] , (safe_mul_func_uint8_t_u_u((l_1413 | ((0x7F2381F6L == l_1328[0][2]) != p_1430->g_783[p_1430->g_93][p_1430->g_93].f0)), FAKE_DIVERGE(p_1430->global_2_offset, get_global_id(2), 10)))) >= 65528UL)) >= 0x53A2DA2D9EC804A5L), l_1380[3]))), FAKE_DIVERGE(p_1430->local_1_offset, get_local_id(1), 10))) == l_1138))), 2))), l_1380[3])), l_1367)) , 0x7329CB14L) , p_1430->g_1414[5][7][2]) , (*p_1430->g_433)))))) || 0x6CL) > l_1415))) || (-8L)) > 4L) , l_1193) == l_1337) , (*p_1430->g_281));
                        return l_1416.f0;
                    }
                    for (p_1430->g_307 = 0; (p_1430->g_307 <= 5); p_1430->g_307 += 1)
                    { /* block id: 767 */
                        int i;
                        return p_1430->g_107[(p_1430->g_307 + 1)];
                    }
                    for (p_1430->g_76 = 1; (p_1430->g_76 <= 5); p_1430->g_76 += 1)
                    { /* block id: 772 */
                        return l_725;
                    }
                }
                else
                { /* block id: 775 */
                    if (p_1430->g_17)
                        goto lbl_1417;
                }
                return l_1415;
            }
            return l_1367;
        }
        ++l_1426;
    }
    else
    { /* block id: 783 */
        int8_t l_1429 = 0x70L;
        return l_1429;
    }
    return l_1202;
}


/* ------------------------------------------ */
/* 
 * reads : p_1430->g_278 p_1430->g_1095 p_1430->g_100 p_1430->g_794 p_1430->g_795 p_1430->g_384 p_1430->g_386 p_1430->g_16 p_1430->g_17 p_1430->g_103 p_1430->g_310
 * writes: p_1430->g_278 p_1430->g_1096 p_1430->g_93 p_1430->g_384 p_1430->g_103
 */
uint8_t  func_6(int8_t * p_7, int8_t * p_8, int64_t  p_9, struct S2 * p_1430)
{ /* block id: 539 */
    int32_t l_1086 = (-4L);
    int32_t l_1087 = 0x43E78027L;
    int32_t l_1088[8][9] = {{0x057C2D2CL,1L,0x3B42438EL,0x3B42438EL,1L,0x057C2D2CL,0x3B65ABD5L,(-4L),0x3182FCB7L},{0x057C2D2CL,1L,0x3B42438EL,0x3B42438EL,1L,0x057C2D2CL,0x3B65ABD5L,(-4L),0x3182FCB7L},{0x057C2D2CL,1L,0x3B42438EL,0x3B42438EL,1L,0x057C2D2CL,0x3B65ABD5L,(-4L),0x3182FCB7L},{0x057C2D2CL,1L,0x3B42438EL,0x3B42438EL,1L,0x057C2D2CL,0x3B65ABD5L,(-4L),0x3182FCB7L},{0x057C2D2CL,1L,0x3B42438EL,0x3B42438EL,1L,0x057C2D2CL,0x3B65ABD5L,(-4L),0x3182FCB7L},{0x057C2D2CL,1L,0x3B42438EL,0x3B42438EL,1L,0x057C2D2CL,0x3B65ABD5L,(-4L),0x3182FCB7L},{0x057C2D2CL,1L,0x3B42438EL,0x3B42438EL,1L,0x057C2D2CL,0x3B65ABD5L,(-4L),0x3182FCB7L},{0x057C2D2CL,1L,0x3B42438EL,0x3B42438EL,1L,0x057C2D2CL,0x3B65ABD5L,(-4L),0x3182FCB7L}};
    union U1 *l_1094 = &p_1430->g_426;
    union U1 **l_1093 = &l_1094;
    int i, j;
    for (p_1430->g_278 = 4; (p_1430->g_278 != 16); p_1430->g_278 = safe_add_func_uint32_t_u_u(p_1430->g_278, 5))
    { /* block id: 542 */
        int32_t *l_1076 = &p_1430->g_310[0];
        int32_t *l_1077 = &p_1430->g_310[0];
        int32_t *l_1078 = &p_1430->g_76;
        int32_t l_1079 = (-6L);
        int32_t *l_1080 = &p_1430->g_307;
        int32_t *l_1081 = (void*)0;
        int32_t l_1082[8] = {0x14DAFC9DL,0x14DAFC9DL,0x14DAFC9DL,0x14DAFC9DL,0x14DAFC9DL,0x14DAFC9DL,0x14DAFC9DL,0x14DAFC9DL};
        int32_t *l_1083 = &p_1430->g_103;
        int32_t *l_1084[3][5] = {{&p_1430->g_310[1],&p_1430->g_76,&l_1079,&p_1430->g_76,&p_1430->g_310[1]},{&p_1430->g_310[1],&p_1430->g_76,&l_1079,&p_1430->g_76,&p_1430->g_310[1]},{&p_1430->g_310[1],&p_1430->g_76,&l_1079,&p_1430->g_76,&p_1430->g_310[1]}};
        int32_t l_1089 = 0L;
        uint8_t l_1090 = 252UL;
        struct S0 l_1112 = {0x3CL};
        int i, j;
        --l_1090;
        (*p_1430->g_1095) = l_1093;
        if (p_9)
        { /* block id: 545 */
            int16_t *l_1100 = &p_1430->g_93;
            int32_t l_1105 = 0x5EE9E96FL;
            struct S0 l_1113 = {0x5FL};
            uint64_t *l_1116 = (void*)0;
            uint64_t *l_1117 = &p_1430->g_384;
            (*l_1083) &= (((*l_1100) = (safe_add_func_uint8_t_u_u(p_9, FAKE_DIVERGE(p_1430->group_0_offset, get_group_id(0), 10)))) || (safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_u(l_1105, (safe_lshift_func_uint16_t_u_u(((~((safe_mod_func_int64_t_s_s((safe_sub_func_int8_t_s_s((((l_1076 != ((l_1113 = ((p_1430->g_100 & FAKE_DIVERGE(p_1430->global_2_offset, get_global_id(2), 10)) , l_1112)) , (*p_1430->g_794))) , ((safe_mul_func_int8_t_s_s((0xDC191935BC7BB914L == ((*l_1117) |= p_9)), (safe_add_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(p_9, 0UL)), p_9)))) > l_1113.f0)) , (-1L)), (*p_7))), 0x2FB28144EA74515DL)) > (-5L))) & (*p_1430->g_16)), 6)))), (-1L))));
            return l_1086;
        }
        else
        { /* block id: 551 */
            return p_1430->g_310[3];
        }
    }
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1430->g_17 p_1430->g_278 p_1430->g_433 p_1430->g_434 p_1430->g_76 p_1430->g_386 p_1430->g_924 p_1430->g_1011 p_1430->g_1073
 * writes: p_1430->g_156 p_1430->g_76
 */
int8_t * func_10(int8_t * p_11, int32_t  p_12, int8_t * p_13, int8_t * p_14, int32_t  p_15, struct S2 * p_1430)
{ /* block id: 525 */
    int32_t l_1035[6][6][7] = {{{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL}},{{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL}},{{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL}},{{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL}},{{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL}},{{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL},{1L,1L,0x40EA69ECL,0x0F7387ADL,1L,0x0F7387ADL,0x40EA69ECL}}};
    int32_t l_1036 = 0x33971230L;
    uint32_t *l_1045 = &p_1430->g_156;
    uint64_t l_1052 = 18446744073709551615UL;
    struct S0 **l_1055 = &p_1430->g_281;
    int16_t l_1060[1][3];
    uint32_t l_1065 = 4294967289UL;
    int64_t l_1066 = (-1L);
    int64_t *l_1067 = &p_1430->g_166;
    int8_t *l_1068 = &p_1430->g_386[3];
    struct S0 l_1069 = {0x50L};
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_1060[i][j] = 1L;
    }
    atomic_xor(&p_1430->l_atomic_reduction[0], ((((safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((safe_div_func_int64_t_s_s(((safe_rshift_func_int16_t_s_s((((safe_mod_func_int16_t_s_s((l_1035[0][5][4] | ((((l_1036 ^= (*p_11)) | (safe_add_func_uint8_t_u_u((p_1430->g_278 , (((((safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s(l_1035[4][1][5], (((*l_1045) = (safe_mul_func_int16_t_s_s((*p_1430->g_433), (p_15 <= p_1430->g_76)))) != l_1035[2][2][2]))) <= (safe_lshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_s(((safe_sub_func_int64_t_s_s((((0x7EL ^ GROUP_DIVERGE(2, 1)) ^ p_1430->g_386[4]) & 0xDD79C00CL), GROUP_DIVERGE(2, 1))) < GROUP_DIVERGE(0, 1)), 3)), 5))), 2UL)) >= p_15) != l_1052) & p_12) , p_1430->g_924)), 1UL))) <= p_12) == l_1035[0][5][4])), p_15)) , p_1430->g_1011) != 0L), 7)) && 0xFCL), p_12)), 6)), 3)) != p_12) > l_1035[0][5][4]) , l_1036));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1430->v_collective += p_1430->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (((l_1069 , l_1060[0][0]) & 0UL))
    { /* block id: 532 */
        int32_t l_1070 = 0x6F975DD2L;
        (*p_1430->g_1073) |= (l_1070 ^= p_15);
    }
    else
    { /* block id: 535 */
        return l_1068;
    }
    return l_1068;
}


/* ------------------------------------------ */
/* 
 * reads : p_1430->g_310 p_1430->g_491 p_1430->g_434 p_1430->g_895 p_1430->g_386 p_1430->g_924 p_1430->g_307 p_1430->g_384 p_1430->g_278 p_1430->g_210 p_1430->g_76 p_1430->g_42 p_1430->g_288 p_1430->g_368 p_1430->g_369 p_1430->g_370 p_1430->g_433 p_1430->g_16 p_1430->g_17 p_1430->g_1011 p_1430->g_111.f0 p_1430->g_1018 p_1430->g_41
 * writes: p_1430->g_306 p_1430->g_491 p_1430->g_228 p_1430->g_156 p_1430->g_310 p_1430->g_307 p_1430->g_93 p_1430->g_407.f0 p_1430->g_384 p_1430->g_278 p_1430->g_134 p_1430->g_100 p_1430->g_84 p_1430->g_76 p_1430->g_371 p_1430->g_924 p_1430->g_210 p_1430->g_1011 p_1430->g_111.f0 p_1430->g_1018 p_1430->g_370
 */
uint32_t  func_20(struct S0  p_21, int8_t * p_22, struct S2 * p_1430)
{ /* block id: 457 */
    int32_t ***l_919 = (void*)0;
    uint32_t *l_921[2];
    int32_t l_960 = 1L;
    int32_t l_962 = 0L;
    int32_t l_963 = (-1L);
    int32_t l_967[4];
    uint32_t l_968 = 0xD905D161L;
    int64_t l_978 = 0x0DE882BD050476F7L;
    int32_t *l_1014 = &l_960;
    int32_t *l_1015 = &p_1430->g_310[0];
    int32_t *l_1016 = (void*)0;
    int32_t *l_1017[3];
    int i;
    for (i = 0; i < 2; i++)
        l_921[i] = &p_1430->g_278;
    for (i = 0; i < 4; i++)
        l_967[i] = 1L;
    for (i = 0; i < 3; i++)
        l_1017[i] = (void*)0;
    for (p_21.f0 = 0; (p_21.f0 >= 0); p_21.f0 -= 1)
    { /* block id: 460 */
        uint32_t *l_920 = &p_1430->g_156;
        int32_t l_922[5] = {8L,8L,8L,8L,8L};
        int8_t l_1008 = 0x20L;
        int i;
        for (p_1430->g_306 = 0; (p_1430->g_306 <= 6); p_1430->g_306 += 1)
        { /* block id: 463 */
            uint8_t *l_905 = &p_1430->g_491[7][3][1];
            uint8_t *l_906 = &p_1430->g_228;
            uint16_t l_923 = 0xA968L;
            int32_t *l_925 = &p_1430->g_307;
            int i, j;
            (*l_925) ^= ((((p_1430->g_310[(p_21.f0 + 2)] = (((((safe_add_func_uint8_t_u_u(((*l_906) = ((*l_905) &= p_1430->g_310[(p_21.f0 + 2)])), (safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), (p_1430->g_434[p_21.f0][(p_21.f0 + 2)] || p_1430->g_895[(p_21.f0 + 3)]))))) == (safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((FAKE_DIVERGE(p_1430->global_0_offset, get_global_id(0), 10) & (safe_mod_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((((+1L) , p_1430->g_386[7]) > ((*l_920) = ((((((safe_add_func_int64_t_s_s(p_21.f0, ((((l_919 != &p_1430->g_369) || (l_920 == l_921[0])) ^ l_922[0]) <= l_923))) ^ p_1430->g_924) || l_922[0]) > p_21.f0) >= 4L) , p_21.f0))), 3)), 5L))), p_21.f0)), p_1430->g_895[(p_21.f0 + 3)]))) , p_21.f0) > p_21.f0) || p_1430->g_434[p_21.f0][(p_21.f0 + 2)])) != p_21.f0) || 0x50676852L) , l_922[0]);
            for (p_1430->g_93 = 0; (p_1430->g_93 >= 0); p_1430->g_93 -= 1)
            { /* block id: 471 */
                if (p_21.f0)
                    break;
            }
        }
        for (p_1430->g_407.f0 = 0; (p_1430->g_407.f0 <= 4); p_1430->g_407.f0 += 1)
        { /* block id: 477 */
            int8_t *l_932 = (void*)0;
            int32_t l_948 = 0x5815F858L;
            int32_t l_954 = 0L;
            int32_t l_955 = 0x6B9A5700L;
            int32_t l_956 = 0x3CE7923FL;
            int32_t l_957 = 0x661540F6L;
            int32_t l_959 = (-1L);
            int32_t l_961 = 0x2A81F3BEL;
            int32_t l_964 = 1L;
            int32_t l_966 = 0x57034AFBL;
            int32_t *l_985 = &l_964;
            int32_t *l_986 = &l_961;
            int32_t *l_987 = &p_1430->g_306;
            int32_t *l_988 = &p_1430->g_310[3];
            int32_t *l_989 = &l_960;
            int32_t *l_990 = &l_955;
            int32_t *l_991 = &p_1430->g_310[1];
            int32_t *l_992 = (void*)0;
            int32_t *l_993 = (void*)0;
            int32_t *l_994 = &p_1430->g_76;
            int32_t *l_995 = &l_967[2];
            int32_t *l_996 = &l_961;
            int32_t *l_997 = &l_948;
            int32_t *l_998 = &l_922[0];
            int32_t *l_999 = &l_967[3];
            int32_t *l_1000 = &l_967[3];
            int32_t *l_1001 = &p_1430->g_307;
            int32_t *l_1002 = (void*)0;
            int32_t *l_1003 = &l_957;
            int32_t *l_1004 = &l_964;
            int32_t *l_1005 = &l_960;
            int32_t *l_1006 = &l_966;
            int32_t *l_1007 = (void*)0;
            int32_t *l_1009 = (void*)0;
            int32_t *l_1010[6][9] = {{(void*)0,(void*)0,&l_963,&p_1430->g_306,&l_955,&p_1430->g_310[0],&p_1430->g_307,&l_960,&p_1430->g_307},{(void*)0,(void*)0,&l_963,&p_1430->g_306,&l_955,&p_1430->g_310[0],&p_1430->g_307,&l_960,&p_1430->g_307},{(void*)0,(void*)0,&l_963,&p_1430->g_306,&l_955,&p_1430->g_310[0],&p_1430->g_307,&l_960,&p_1430->g_307},{(void*)0,(void*)0,&l_963,&p_1430->g_306,&l_955,&p_1430->g_310[0],&p_1430->g_307,&l_960,&p_1430->g_307},{(void*)0,(void*)0,&l_963,&p_1430->g_306,&l_955,&p_1430->g_310[0],&p_1430->g_307,&l_960,&p_1430->g_307},{(void*)0,(void*)0,&l_963,&p_1430->g_306,&l_955,&p_1430->g_310[0],&p_1430->g_307,&l_960,&p_1430->g_307}};
            int i, j;
            for (p_1430->g_384 = 0; (p_1430->g_384 <= 4); p_1430->g_384 += 1)
            { /* block id: 480 */
                int64_t l_936 = (-9L);
                int32_t *l_949 = &p_1430->g_310[0];
                int32_t *l_950 = &l_948;
                int32_t *l_951 = (void*)0;
                int32_t *l_952[2][3] = {{&l_922[0],&l_922[0],&l_922[0]},{&l_922[0],&l_922[0],&l_922[0]}};
                int8_t l_953 = 0L;
                int64_t l_958 = (-1L);
                int32_t l_965 = 0x4736AA46L;
                uint8_t *l_973 = &p_1430->g_924;
                int16_t *l_976 = &p_1430->g_210[1];
                uint8_t *l_977[4][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
                int i, j;
                for (p_1430->g_278 = 1; (p_1430->g_278 <= 4); p_1430->g_278 += 1)
                { /* block id: 483 */
                    uint32_t l_927 = 8UL;
                    struct S0 l_947 = {0L};
                    for (p_1430->g_134 = 0; (p_1430->g_134 <= 0); p_1430->g_134 += 1)
                    { /* block id: 486 */
                        int i;
                        return p_1430->g_310[(p_21.f0 + 3)];
                    }
                    for (p_1430->g_100 = 0; (p_1430->g_100 <= 0); p_1430->g_100 += 1)
                    { /* block id: 491 */
                        int32_t *l_926 = (void*)0;
                        int8_t **l_933 = (void*)0;
                        int8_t **l_934 = &p_1430->g_84[1][4];
                        int16_t *l_935[9] = {&p_1430->g_210[2],&p_1430->g_210[2],&p_1430->g_210[2],&p_1430->g_210[2],&p_1430->g_210[2],&p_1430->g_210[2],&p_1430->g_210[2],&p_1430->g_210[2],&p_1430->g_210[2]};
                        int i, j;
                        ++l_927;
                        p_1430->g_76 ^= ((l_936 ^= (safe_rshift_func_int8_t_s_s(((l_932 == ((*l_934) = &p_1430->g_386[4])) > 0x00A0L), p_1430->g_434[p_21.f0][(p_1430->g_384 + 1)]))) && p_1430->g_210[p_1430->g_278]);
                        if (p_21.f0)
                            continue;
                        (***p_1430->g_368) = (((l_922[4] >= (!l_936)) ^ (safe_div_func_uint16_t_u_u(p_21.f0, ((safe_mul_func_int8_t_s_s((((safe_lshift_func_uint16_t_u_u(((safe_div_func_int8_t_s_s((-4L), p_1430->g_42)) < (-1L)), (((p_21.f0 | (safe_add_func_int8_t_s_s(((l_947 , p_21.f0) <= p_21.f0), 0x25L))) == p_21.f0) & p_1430->g_386[2]))) < p_1430->g_288) && l_947.f0), p_1430->g_210[p_1430->g_278])) | p_21.f0)))) ^ p_21.f0);
                    }
                }
                ++l_968;
                l_922[0] = ((((*p_1430->g_433) , (l_978 = (safe_mod_func_int32_t_s_s((*l_950), (((*l_976) = ((&p_1430->g_321 == (void*)0) | (++(*l_973)))) , 4294967295UL))))) >= ((safe_div_func_uint32_t_u_u(((safe_div_func_uint32_t_u_u(((((((255UL && 255UL) && (safe_mul_func_uint8_t_u_u(0x82L, ((l_922[0] <= 0x7C96AEDCBCAFAB1BL) , 1UL)))) > 9UL) ^ 0xEBA3L) == p_21.f0) < l_922[0]), p_21.f0)) , (*l_950)), l_922[0])) , (*p_1430->g_16))) , p_21.f0);
            }
            p_1430->g_1011--;
        }
        for (p_1430->g_111.f0 = 0; (p_1430->g_111.f0 <= 4); p_1430->g_111.f0 += 1)
        { /* block id: 510 */
            int i;
            return p_1430->g_310[p_21.f0];
        }
    }
    ++p_1430->g_1018;
    for (l_962 = 0; (l_962 == (-10)); l_962--)
    { /* block id: 517 */
        int32_t l_1023[2][6] = {{(-9L),0x38F4C7C7L,(-9L),(-9L),0x38F4C7C7L,(-9L)},{(-9L),0x38F4C7C7L,(-9L),(-9L),0x38F4C7C7L,(-9L)}};
        int32_t l_1024 = 1L;
        int i, j;
        (**p_1430->g_368) = (void*)0;
        l_1024 &= (l_1023[0][1] = ((*l_1014) |= (*p_1430->g_41)));
        return p_21.f0;
    }
    return (*l_1015);
}


/* ------------------------------------------ */
/* 
 * reads : p_1430->g_368 p_1430->g_369 p_1430->g_370 p_1430->g_371 p_1430->g_16 p_1430->g_17 p_1430->g_218 p_1430->g_386 p_1430->g_93 p_1430->g_591 p_1430->g_210 p_1430->g_100 p_1430->g_783 p_1430->g_283 p_1430->g_794 p_1430->g_407.f0 p_1430->g_41 p_1430->g_42 p_1430->g_801 p_1430->g_107 p_1430->g_281 p_1430->g_814 p_1430->g_491 p_1430->g_166 p_1430->g_406 p_1430->g_433 p_1430->g_434 p_1430->g_895
 * writes: p_1430->g_371 p_1430->g_107 p_1430->g_93 p_1430->g_17 p_1430->g_307 p_1430->g_228 p_1430->g_166 p_1430->g_100 p_1430->g_801 p_1430->g_111 p_1430->g_156 p_1430->g_814 p_1430->g_491 p_1430->g_386 p_1430->g_873 p_1430->g_895 p_1430->g_370
 */
struct S0  func_23(int8_t * p_24, int8_t * p_25, int8_t  p_26, int8_t * p_27, int8_t * p_28, struct S2 * p_1430)
{ /* block id: 375 */
    uint16_t l_730 = 65535UL;
    uint32_t l_735 = 1UL;
    uint64_t *l_738 = &p_1430->g_107[3];
    int8_t **l_741[9][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
    int32_t **l_757[8][1][2] = {{{&p_1430->g_168,&p_1430->g_168}},{{&p_1430->g_168,&p_1430->g_168}},{{&p_1430->g_168,&p_1430->g_168}},{{&p_1430->g_168,&p_1430->g_168}},{{&p_1430->g_168,&p_1430->g_168}},{{&p_1430->g_168,&p_1430->g_168}},{{&p_1430->g_168,&p_1430->g_168}},{{&p_1430->g_168,&p_1430->g_168}}};
    int32_t ***l_756 = &l_757[0][0][0];
    struct S0 l_774 = {1L};
    int8_t **l_805 = &p_1430->g_84[0][7];
    uint8_t l_853 = 2UL;
    uint64_t l_879 = 0UL;
    int16_t l_880[4];
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_880[i] = 0x2053L;
    (***p_1430->g_368) ^= p_26;
    (***p_1430->g_368) = (safe_add_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u(((l_730 <= (*p_1430->g_16)) & (**p_1430->g_369)), ((safe_add_func_int32_t_s_s((safe_div_func_int16_t_s_s(0x2C2EL, l_735)), l_735)) ^ ((((*l_738) = (safe_rshift_func_int8_t_s_s(((0x24126B59L | p_1430->g_218) <= (((*p_24) | FAKE_DIVERGE(p_1430->global_1_offset, get_global_id(1), 10)) <= p_26)), l_730))) , p_26) >= 0x5F574519L)))), 0x328ACEE3970BA411L));
    for (p_1430->g_93 = 3; (p_1430->g_93 >= 0); p_1430->g_93 -= 1)
    { /* block id: 381 */
        int32_t l_759 = (-1L);
        int32_t l_760 = 0x0F0FC137L;
        int32_t l_761[2];
        uint32_t **l_770 = &p_1430->g_321;
        int32_t l_784 = 0x1CAB4D21L;
        int8_t l_799 = (-3L);
        int32_t *l_800[1];
        uint32_t l_835 = 0x1CFB0054L;
        uint16_t *l_878 = &p_1430->g_814;
        int i;
        for (i = 0; i < 2; i++)
            l_761[i] = (-1L);
        for (i = 0; i < 1; i++)
            l_800[i] = &p_1430->g_310[3];
        if ((safe_mod_func_uint8_t_u_u(p_1430->g_591[p_1430->g_93], ((&p_1430->g_84[2][9] != l_741[6][2]) || ((safe_lshift_func_int16_t_s_u((safe_mod_func_int32_t_s_s(p_1430->g_591[p_1430->g_93], p_1430->g_210[(p_1430->g_93 + 1)])), 5)) | (safe_sub_func_int32_t_s_s(1L, (safe_lshift_func_uint8_t_u_s(((((*p_1430->g_16) &= (safe_mod_func_uint64_t_u_u(((0x0A5AL != (safe_sub_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u(((p_1430->g_210[(p_1430->g_93 + 1)] , (void*)0) != l_756), 0L)) , 0x40D59C91ADFE008BL), p_1430->g_100))) , p_26), p_1430->g_591[p_1430->g_93]))) , (*p_1430->g_370)) == GROUP_DIVERGE(1, 1)), p_1430->g_210[(p_1430->g_93 + 1)])))))))))
        { /* block id: 383 */
            int8_t l_758 = 0x02L;
            int32_t l_762 = 0x46989FA6L;
            int32_t l_763 = (-10L);
            int32_t l_764[1][6] = {{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)}};
            uint16_t l_765 = 65528UL;
            int i, j;
            (**p_1430->g_369) &= (l_758 != p_26);
            l_765++;
        }
        else
        { /* block id: 386 */
            uint32_t **l_769 = &p_1430->g_321;
            uint32_t ***l_768[2][4][9] = {{{&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769},{&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769},{&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769},{&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769}},{{&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769},{&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769},{&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769},{&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769,&l_769,(void*)0,&l_769}}};
            int i, j, k;
            l_770 = &p_1430->g_321;
        }
        if (p_26)
            continue;
        for (p_1430->g_307 = 0; (p_1430->g_307 <= 4); p_1430->g_307 += 1)
        { /* block id: 392 */
            uint32_t **l_797[3];
            int32_t l_798 = 0x3388633DL;
            int8_t ***l_806[3][8] = {{&l_741[6][2],&l_741[5][0],&l_741[6][2],&l_741[6][2],&l_741[5][0],&l_741[6][2],&l_741[6][2],&l_741[5][0]},{&l_741[6][2],&l_741[5][0],&l_741[6][2],&l_741[6][2],&l_741[5][0],&l_741[6][2],&l_741[6][2],&l_741[5][0]},{&l_741[6][2],&l_741[5][0],&l_741[6][2],&l_741[6][2],&l_741[5][0],&l_741[6][2],&l_741[6][2],&l_741[5][0]}};
            struct S0 l_807 = {-1L};
            int32_t l_811 = 0x0758F079L;
            int32_t l_812 = 0x4BAEDCE7L;
            int32_t l_813 = 0x68E8384CL;
            int32_t l_848 = 7L;
            int32_t l_849 = 0x06475828L;
            int32_t l_851 = 0x333D292AL;
            int32_t l_852 = 0x7530A5FCL;
            uint32_t ***l_875[2][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
            int i, j;
            for (i = 0; i < 3; i++)
                l_797[i] = &p_1430->g_318;
            for (p_1430->g_228 = 1; (p_1430->g_228 <= 4); p_1430->g_228 += 1)
            { /* block id: 395 */
                uint16_t *l_771 = &l_730;
                int32_t l_785 = (-1L);
                uint32_t *l_786 = &p_1430->g_253;
                int32_t l_793[8];
                int i;
                for (i = 0; i < 8; i++)
                    l_793[i] = 0x5C9F1D8AL;
                l_798 = ((++(*l_771)) || (l_774 , ((safe_lshift_func_uint16_t_u_s((((safe_div_func_int16_t_s_s((p_26 >= ((((((((((safe_mul_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) > (safe_mul_func_int8_t_s_s((((p_1430->g_783[1][1] , l_784) >= l_785) & (((void*)0 != l_786) , (GROUP_DIVERGE(2, 1) ^ (safe_add_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_s(p_26, 13)) > (safe_rshift_func_int8_t_s_s(((*p_28) &= p_1430->g_210[(p_1430->g_93 + 1)]), l_785))), p_1430->g_591[p_1430->g_93]))))), l_793[7]))), p_1430->g_591[0])) == p_26) == p_1430->g_283) , p_26) , p_1430->g_794) == l_797[1]) <= p_1430->g_591[p_1430->g_93]) , 0L) && 1L) , (*p_28))), p_1430->g_407.f0)) , p_26) | p_26), 12)) , p_26)));
                for (p_1430->g_166 = 4; (p_1430->g_166 >= 0); p_1430->g_166 -= 1)
                { /* block id: 401 */
                    (***p_1430->g_368) |= l_799;
                    for (p_1430->g_100 = 0; (p_1430->g_100 <= 4); p_1430->g_100 += 1)
                    { /* block id: 405 */
                        volatile uint16_t * volatile * volatile *l_804 = &p_1430->g_801;
                        if ((*p_1430->g_41))
                            break;
                        l_800[0] = &l_798;
                        (*l_804) = p_1430->g_801;
                    }
                }
            }
            l_741[6][2] = l_805;
            for (p_26 = 2; (p_26 >= 0); p_26 -= 1)
            { /* block id: 415 */
                int i;
                if (p_1430->g_107[(p_26 + 2)])
                { /* block id: 416 */
                    if ((*p_1430->g_41))
                        break;
                }
                else
                { /* block id: 418 */
                    (*p_1430->g_281) = l_807;
                }
            }
            for (p_1430->g_156 = 0; (p_1430->g_156 <= 4); p_1430->g_156 += 1)
            { /* block id: 424 */
                int8_t l_808[4];
                int32_t l_809 = 0L;
                int32_t l_810 = 0x60859DE3L;
                uint32_t *l_838 = &p_1430->g_278;
                int32_t l_850[7];
                uint16_t ***l_865 = (void*)0;
                int32_t *l_902 = (void*)0;
                int i;
                for (i = 0; i < 4; i++)
                    l_808[i] = 7L;
                for (i = 0; i < 7; i++)
                    l_850[i] = 0x3944499CL;
                p_1430->g_814--;
                (***p_1430->g_368) ^= (9UL & p_26);
                for (l_813 = 1; (l_813 <= 4); l_813 += 1)
                { /* block id: 429 */
                    uint8_t *l_822 = &p_1430->g_491[7][6][1];
                    uint64_t **l_836 = &l_738;
                    uint8_t *l_837 = &p_1430->g_228;
                    int32_t l_846[6][2] = {{0x1CD94B0CL,0x1CD94B0CL},{0x1CD94B0CL,0x1CD94B0CL},{0x1CD94B0CL,0x1CD94B0CL},{0x1CD94B0CL,0x1CD94B0CL},{0x1CD94B0CL,0x1CD94B0CL},{0x1CD94B0CL,0x1CD94B0CL}};
                    int i, j;
                    if (((l_809 |= (safe_mod_func_int64_t_s_s((safe_div_func_uint32_t_u_u((safe_unary_minus_func_int64_t_s(((++(*l_822)) == (*p_28)))), (p_26 | (safe_sub_func_uint32_t_u_u(l_807.f0, ((safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(((*l_837) = (0x2C71D761L && (((*p_28) == ((*p_24) |= ((safe_lshift_func_int8_t_s_u(l_807.f0, (l_835 &= p_1430->g_166))) && p_26))) != ((p_1430->g_406 == l_836) & 0x1A2D354B73870A89L)))), (*p_28))), 0UL)) & p_26)))))), 0x2E63C076BB835AB7L))) < 0xD0L))
                    { /* block id: 435 */
                        uint16_t *l_843 = &p_1430->g_814;
                        int32_t l_847[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_847[i] = 0x2FCDEA90L;
                        (**p_1430->g_369) ^= (p_26 ^ ((&l_735 != l_838) , (safe_mod_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((--(*l_843)), (-4L))), GROUP_DIVERGE(2, 1)))));
                        --l_853;
                    }
                    else
                    { /* block id: 439 */
                        int8_t l_862 = 3L;
                        uint16_t **l_872 = (void*)0;
                        uint16_t *l_876 = &p_1430->g_814;
                        int8_t l_877[2][10][2] = {{{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L}},{{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L},{1L,0x72L}}};
                        int32_t l_881 = (-1L);
                        int32_t l_882 = 0x70DD7BBDL;
                        int32_t l_883 = 0x0677EE33L;
                        int32_t l_884 = 0x0F6AAB97L;
                        int32_t l_885 = (-1L);
                        int32_t l_886[5] = {0L,0L,0L,0L,0L};
                        uint32_t l_887 = 1UL;
                        int64_t *l_894 = &p_1430->g_166;
                        int i, j, k;
                        l_848 = (((safe_rshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u((safe_add_func_int64_t_s_s(l_862, ((safe_sub_func_uint8_t_u_u((&p_26 != (((void*)0 == l_865) , (p_27 = ((safe_add_func_int8_t_s_s((((l_810 = (safe_rshift_func_uint16_t_u_u((safe_add_func_int8_t_s_s(((*p_28) = ((p_1430->g_873[2] = &p_1430->g_134) != (((safe_unary_minus_func_int8_t_s((*p_1430->g_16))) >= (l_852 <= ((((0x5CL ^ (((*l_876) = (l_875[0][2] == (void*)0)) == l_877[0][3][0])) < p_26) >= 0x54C2L) <= l_851))) , l_878))), 0x73L)), p_26))) > l_879) >= l_877[0][3][0]), l_811)) , (void*)0)))), GROUP_DIVERGE(1, 1))) >= (*p_1430->g_433)))), p_26)), l_851)) , p_26) && 0x21F0L);
                        l_887++;
                        l_902 = (((safe_mul_func_uint8_t_u_u(((l_807 , p_1430->g_491[6][3][2]) <= (safe_lshift_func_int16_t_s_s(((0x2A171A92A5564456L & (p_1430->g_895[2] |= ((*l_894) = l_846[3][0]))) || (p_26 , (safe_mul_func_int8_t_s_s(0x63L, (((((safe_mod_func_uint8_t_u_u((safe_div_func_int8_t_s_s(4L, l_886[2])), ((p_26 == FAKE_DIVERGE(p_1430->group_0_offset, get_group_id(0), 10)) || p_26))) ^ (*p_1430->g_16)) && (***p_1430->g_368)) >= p_26) <= 0x72AEE984L))))), p_26))), 0xD0L)) & p_26) , &l_882);
                        (*p_1430->g_369) = (**p_1430->g_368);
                    }
                }
            }
        }
    }
    return l_774;
}


/* ------------------------------------------ */
/* 
 * reads : p_1430->g_283 p_1430->g_429 p_1430->g_433 p_1430->g_306 p_1430->g_368 p_1430->g_369 p_1430->g_370 p_1430->g_371 p_1430->g_318 p_1430->g_76 p_1430->g_17 p_1430->g_473 p_1430->g_16 p_1430->g_491 p_1430->g_407.f0 p_1430->g_166 p_1430->g_288 p_1430->g_434 p_1430->g_307 p_1430->g_281 p_1430->g_111 p_1430->g_565 p_1430->g_310 p_1430->g_571 p_1430->g_107 p_1430->g_386 p_1430->g_384 p_1430->g_168 p_1430->g_228
 * writes: p_1430->g_283 p_1430->g_168 p_1430->g_306 p_1430->g_371 p_1430->g_370 p_1430->g_76 p_1430->g_253 p_1430->g_17 p_1430->g_473 p_1430->g_407.f0 p_1430->g_307 p_1430->g_218 p_1430->g_406 p_1430->g_384 p_1430->g_107 p_1430->g_491 p_1430->g_310 p_1430->g_210 p_1430->g_93 p_1430->g_591 p_1430->g_288 p_1430->g_228 p_1430->g_565.f0 p_1430->g_386
 */
uint32_t  func_31(int8_t * p_32, struct S2 * p_1430)
{ /* block id: 228 */
    int16_t *l_432 = &p_1430->g_93;
    int32_t l_435 = 5L;
    int32_t l_462 = 0x6E5AF9BEL;
    int32_t *l_463 = &p_1430->g_76;
    struct S0 l_472 = {0x02L};
    int32_t l_515 = (-10L);
    int32_t l_517 = (-8L);
    int32_t l_519 = (-1L);
    int32_t l_520 = (-1L);
    int32_t l_556 = (-4L);
    int32_t l_558 = 0x5D9B39BFL;
    int32_t l_559 = 0x77A75008L;
    int32_t l_560[9] = {0x2D64E679L,0x2DE3EA0BL,0x2D64E679L,0x2D64E679L,0x2DE3EA0BL,0x2D64E679L,0x2D64E679L,0x2DE3EA0BL,0x2D64E679L};
    int32_t *l_708 = &l_558;
    int i;
    for (p_1430->g_283 = 1; (p_1430->g_283 <= 7); p_1430->g_283 += 1)
    { /* block id: 231 */
        int32_t *l_428 = &p_1430->g_306;
        int16_t *l_431 = &p_1430->g_210[0];
        int16_t **l_430 = &l_431;
        (*p_1430->g_429) = l_428;
        l_435 &= ((l_432 = ((*l_430) = &p_1430->g_210[0])) == p_1430->g_433);
        (*l_428) = (safe_rshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((*l_428), 0x76L)), (*l_428)));
    }
    (***p_1430->g_368) = l_435;
    (**p_1430->g_368) = (*p_1430->g_369);
    if ((safe_sub_func_uint8_t_u_u(0x66L, (0x76L && (safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((l_435 <= (safe_div_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s((!(safe_lshift_func_int8_t_s_s(l_435, ((safe_add_func_int32_t_s_s((safe_sub_func_int16_t_s_s(1L, l_435)), ((safe_rshift_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s(4L, ((((*p_1430->g_318) = ((((*l_463) = (!(l_435 == (l_462 = (safe_mod_func_int32_t_s_s(0x625946A8L, l_435)))))) ^ (*p_1430->g_370)) | (-3L))) , (*l_463)) ^ 0xAFL))) || 7L), p_1430->g_283)) | l_435))) >= FAKE_DIVERGE(p_1430->global_0_offset, get_global_id(0), 10))))), l_435)) && 18446744073709551610UL), (-3L)))), 0xC3L)), 7))))))
    { /* block id: 243 */
        int64_t l_464[5] = {0x6B9A2F085E16B5B5L,0x6B9A2F085E16B5B5L,0x6B9A2F085E16B5B5L,0x6B9A2F085E16B5B5L,0x6B9A2F085E16B5B5L};
        int i;
        return l_464[2];
    }
    else
    { /* block id: 245 */
        int8_t l_483 = 0x2EL;
        int32_t l_500[10][1] = {{0x607BC25FL},{0x607BC25FL},{0x607BC25FL},{0x607BC25FL},{0x607BC25FL},{0x607BC25FL},{0x607BC25FL},{0x607BC25FL},{0x607BC25FL},{0x607BC25FL}};
        uint64_t *l_567 = &p_1430->g_107[7];
        uint64_t **l_566[7];
        int16_t **l_615 = &l_432;
        int16_t **l_616 = (void*)0;
        uint32_t *l_617[2];
        uint32_t l_673[2][8][4] = {{{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL}},{{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL},{0x4E019FB0L,1UL,0xB374DAA1L,0UL}}};
        uint16_t l_680 = 65529UL;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_566[i] = &l_567;
        for (i = 0; i < 2; i++)
            l_617[i] = &p_1430->g_278;
        for (p_1430->g_17 = (-16); (p_1430->g_17 == 9); ++p_1430->g_17)
        { /* block id: 248 */
            int16_t **l_471[2];
            int16_t ***l_474 = &p_1430->g_473;
            int32_t l_490 = 0L;
            int8_t *l_492 = &p_1430->g_407.f0;
            int32_t *l_493 = &p_1430->g_307;
            int16_t l_502[1];
            int32_t l_510 = 0x7503F2EEL;
            int32_t l_511[6][9] = {{0x5D0C2D57L,0x5D0C2D57L,0x5BF1C492L,5L,0x282955FCL,5L,0x5BF1C492L,0x5D0C2D57L,0x5D0C2D57L},{0x5D0C2D57L,0x5D0C2D57L,0x5BF1C492L,5L,0x282955FCL,5L,0x5BF1C492L,0x5D0C2D57L,0x5D0C2D57L},{0x5D0C2D57L,0x5D0C2D57L,0x5BF1C492L,5L,0x282955FCL,5L,0x5BF1C492L,0x5D0C2D57L,0x5D0C2D57L},{0x5D0C2D57L,0x5D0C2D57L,0x5BF1C492L,5L,0x282955FCL,5L,0x5BF1C492L,0x5D0C2D57L,0x5D0C2D57L},{0x5D0C2D57L,0x5D0C2D57L,0x5BF1C492L,5L,0x282955FCL,5L,0x5BF1C492L,0x5D0C2D57L,0x5D0C2D57L},{0x5D0C2D57L,0x5D0C2D57L,0x5BF1C492L,5L,0x282955FCL,5L,0x5BF1C492L,0x5D0C2D57L,0x5D0C2D57L}};
            uint32_t l_521 = 4294967292UL;
            struct S0 l_570 = {0x3BL};
            uint32_t l_608[1][7] = {{0UL,0xCFB9E382L,0UL,0UL,0xCFB9E382L,0UL,0UL}};
            uint16_t l_651[9][2] = {{0UL,65531UL},{0UL,65531UL},{0UL,65531UL},{0UL,65531UL},{0UL,65531UL},{0UL,65531UL},{0UL,65531UL},{0UL,65531UL},{0UL,65531UL}};
            uint32_t l_657 = 0x36CDEE4BL;
            int i, j;
            for (i = 0; i < 2; i++)
                l_471[i] = (void*)0;
            for (i = 0; i < 1; i++)
                l_502[i] = 0x3232L;
            if (((*l_493) |= ((safe_sub_func_int8_t_s_s((safe_div_func_uint8_t_u_u((p_1430->g_306 , (((l_471[1] == ((*l_474) = (l_472 , p_1430->g_473))) >= ((*p_1430->g_16) ^ ((safe_add_func_int64_t_s_s((safe_rshift_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u((l_483 != (*l_463)), (safe_sub_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((((safe_mul_func_int8_t_s_s(l_490, ((*l_492) ^= p_1430->g_491[6][3][2]))) , 0xC5B805A1L) & l_490), 0x62AC34DFL)), p_1430->g_166)))) & p_1430->g_288), (*p_1430->g_433))), l_490)) > 1UL))) < l_483)), p_1430->g_283)), (*l_463))) > (*l_463))))
            { /* block id: 252 */
                for (p_1430->g_76 = (-26); (p_1430->g_76 <= (-18)); p_1430->g_76++)
                { /* block id: 255 */
                    for (l_472.f0 = 2; (l_472.f0 >= 0); l_472.f0 -= 1)
                    { /* block id: 258 */
                        int i, j, k;
                        if (p_1430->g_491[(l_472.f0 + 4)][(l_472.f0 + 1)][l_472.f0])
                            break;
                    }
                }
            }
            else
            { /* block id: 262 */
                int16_t l_501 = 0x7068L;
                int32_t l_512 = 0x072010BAL;
                int32_t l_518 = 0x31EA7D3FL;
                int32_t l_557[1][10] = {{0x20F205E0L,0x170F96B3L,0x20F205E0L,0x20F205E0L,0x170F96B3L,0x20F205E0L,0x20F205E0L,0x170F96B3L,0x20F205E0L,0x20F205E0L}};
                struct S0 l_564 = {0x3BL};
                int i, j;
                for (p_1430->g_76 = 0; (p_1430->g_76 == (-17)); p_1430->g_76 = safe_sub_func_int64_t_s_s(p_1430->g_76, 2))
                { /* block id: 265 */
                    uint64_t l_503[3];
                    int32_t l_513 = (-7L);
                    int32_t l_514 = (-5L);
                    int32_t l_516 = (-4L);
                    uint8_t l_561 = 1UL;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_503[i] = 8UL;
                    for (p_1430->g_218 = 0; (p_1430->g_218 > (-2)); p_1430->g_218 = safe_sub_func_int16_t_s_s(p_1430->g_218, 1))
                    { /* block id: 268 */
                        uint64_t ***l_506 = (void*)0;
                        uint64_t ***l_507 = (void*)0;
                        uint64_t ***l_508 = &p_1430->g_406;
                        int32_t *l_509[9][1][7] = {{{(void*)0,&l_462,&l_500[1][0],&l_435,&l_500[1][0],&l_462,(void*)0}},{{(void*)0,&l_462,&l_500[1][0],&l_435,&l_500[1][0],&l_462,(void*)0}},{{(void*)0,&l_462,&l_500[1][0],&l_435,&l_500[1][0],&l_462,(void*)0}},{{(void*)0,&l_462,&l_500[1][0],&l_435,&l_500[1][0],&l_462,(void*)0}},{{(void*)0,&l_462,&l_500[1][0],&l_435,&l_500[1][0],&l_462,(void*)0}},{{(void*)0,&l_462,&l_500[1][0],&l_435,&l_500[1][0],&l_462,(void*)0}},{{(void*)0,&l_462,&l_500[1][0],&l_435,&l_500[1][0],&l_462,(void*)0}},{{(void*)0,&l_462,&l_500[1][0],&l_435,&l_500[1][0],&l_462,(void*)0}},{{(void*)0,&l_462,&l_500[1][0],&l_435,&l_500[1][0],&l_462,(void*)0}}};
                        int i, j, k;
                        --l_503[0];
                        (*l_508) = (void*)0;
                        --l_521;
                    }
                    for (p_1430->g_384 = 0; (p_1430->g_384 != 23); p_1430->g_384 = safe_add_func_int32_t_s_s(p_1430->g_384, 7))
                    { /* block id: 275 */
                        uint64_t *l_528 = &p_1430->g_107[1];
                        uint64_t *l_533 = &l_503[1];
                        uint32_t *l_535 = &l_521;
                        int32_t l_540 = 0x4C462124L;
                        int32_t *l_541 = &l_511[0][3];
                        (*l_541) ^= (safe_div_func_int32_t_s_s((((l_518 >= ((*l_528) = (*l_463))) > FAKE_DIVERGE(p_1430->group_2_offset, get_group_id(2), 10)) ^ (p_1430->g_491[6][3][2] , (p_1430->g_491[6][4][2] ^= FAKE_DIVERGE(p_1430->group_0_offset, get_group_id(0), 10)))), ((safe_sub_func_uint8_t_u_u((~9UL), ((safe_lshift_func_int16_t_s_s(((((((*l_533) &= ((*p_1430->g_281) , (&p_32 != (void*)0))) == (((FAKE_DIVERGE(p_1430->local_0_offset, get_local_id(0), 10) , 0x9ED6A1995E711A95L) ^ ((safe_unary_minus_func_uint32_t_u(((*l_535)++))) , (((safe_add_func_int64_t_s_s((((**p_1430->g_369) && 0x900A2266L) >= (*l_493)), (*l_493))) < GROUP_DIVERGE(2, 1)) | l_501))) || l_540)) ^ (*l_463)) , &p_1430->g_111) != &p_1430->g_407), 14)) | 0x07L))) && l_500[0][0])));
                    }
                    for (l_435 = 0; (l_435 >= 1); l_435++)
                    { /* block id: 284 */
                        int32_t *l_544 = &l_510;
                        int32_t *l_545 = (void*)0;
                        int32_t *l_546 = (void*)0;
                        int32_t *l_547 = &l_512;
                        int32_t *l_548 = &l_500[8][0];
                        int32_t *l_549 = &l_490;
                        int32_t *l_550 = &l_514;
                        int32_t *l_551 = &l_500[8][0];
                        int32_t *l_552 = &p_1430->g_306;
                        int32_t *l_553 = &p_1430->g_310[1];
                        int32_t *l_554[5];
                        int64_t l_555 = 0x42DD43AD8F2AD453L;
                        uint64_t ***l_568 = &l_566[0];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_554[i] = &l_511[4][5];
                        if ((*l_463))
                            break;
                        ++l_561;
                        l_564 = l_472;
                        (*l_553) |= (((p_1430->g_565 , p_32) == (void*)0) | (((*l_568) = l_566[3]) != (void*)0));
                    }
                }
            }
            (*l_493) &= (((*l_463) = ((*l_432) = (safe_unary_minus_func_int64_t_s(l_500[8][0])))) == (*p_1430->g_433));
            (*p_1430->g_571) = (l_570 , &l_558);
            for (l_515 = 16; (l_515 != 11); l_515 = safe_sub_func_uint64_t_u_u(l_515, 7))
            { /* block id: 299 */
                uint16_t l_574 = 0xD190L;
                uint8_t *l_587[6][2];
                int64_t *l_590 = &p_1430->g_591[0];
                int32_t l_606[10][10] = {{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L},{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L},{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L},{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L},{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L},{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L},{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L},{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L},{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L},{8L,8L,(-1L),0L,0x705AA96FL,1L,0x2CB93179L,5L,0x2CB93179L,1L}};
                int32_t l_607 = 0L;
                uint64_t l_618 = 2UL;
                int16_t **l_628[3][3] = {{&l_432,&l_432,&l_432},{&l_432,&l_432,&l_432},{&l_432,&l_432,&l_432}};
                int32_t l_672 = 0x6833B02BL;
                int i, j;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_587[i][j] = &p_1430->g_491[9][5][2];
                }
                (**p_1430->g_369) = l_574;
                (**p_1430->g_369) |= (((safe_add_func_uint64_t_u_u((((safe_sub_func_int16_t_s_s((l_500[0][0] | (safe_rshift_func_uint16_t_u_u((((safe_sub_func_int64_t_s_s(0x3DE92B8589FD9A0DL, ((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_1430->local_1_offset, get_local_id(1), 10), l_574)) , (FAKE_DIVERGE(p_1430->global_1_offset, get_global_id(1), 10) >= 1L)))) & (*l_463)) && l_574), 13))), (((*l_590) = ((p_1430->g_491[1][2][0] |= (safe_mod_func_int8_t_s_s((*l_493), 0x35L))) , ((safe_sub_func_int8_t_s_s((0x49L > (*l_463)), 0UL)) >= (*l_493)))) , GROUP_DIVERGE(1, 1)))) < p_1430->g_107[6]) | 1L), (*l_493))) >= 1L) || 0x13EEL);
                (*l_463) = (safe_mul_func_uint16_t_u_u((safe_add_func_int16_t_s_s(((*l_432) = (((*p_1430->g_168) = (((p_1430->g_288 ^= ((((((void*)0 == &p_1430->g_433) , (l_500[0][0] = (p_1430->g_306 != (safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (safe_lshift_func_uint8_t_u_u((~(l_574 || (((safe_sub_func_uint64_t_u_u(((p_1430->g_386[2] , (safe_div_func_uint32_t_u_u(((l_607 = (((7L <= ((p_1430->g_491[1][7][0] | ((safe_lshift_func_int8_t_s_s(l_500[8][0], 3)) <= (l_606[8][6] = 2UL))) == p_1430->g_384)) < 0x430EAFAA55F6E871L) , (*l_493))) != 9UL), 0x0D053B8AL))) >= 0xC65E2145EC1ACBACL), 0UL)) && l_608[0][1]) || 0x3A8CL))), 0))))))) ^ 0x67L) == l_574) & 4294967293UL)) > 5L) != 0x7AL)) || 0UL)), (*l_463))), l_483));
            }
        }
        for (p_1430->g_228 = (-16); (p_1430->g_228 == 24); ++p_1430->g_228)
        { /* block id: 355 */
            int16_t l_711 = 0x7689L;
            int32_t l_712 = 4L;
            l_708 = &l_520;
            (*l_708) |= (safe_mod_func_uint64_t_u_u(((*l_567) ^= l_711), (l_712 = (*l_463))));
        }
        if (l_500[8][0])
        { /* block id: 361 */
            int32_t **l_713 = &p_1430->g_168;
            (*l_713) = (*p_1430->g_571);
            for (l_515 = 0; (l_515 < (-26)); --l_515)
            { /* block id: 365 */
                for (p_1430->g_565.f0 = 0; p_1430->g_565.f0 < 10; p_1430->g_565.f0 += 1)
                {
                    p_1430->g_386[p_1430->g_565.f0] = 0x39L;
                }
            }
        }
        else
        { /* block id: 368 */
            (**p_1430->g_369) = ((*l_708) = l_673[1][1][3]);
        }
    }
    return (*l_463);
}


/* ------------------------------------------ */
/* 
 * reads : p_1430->g_17 p_1430->g_41 p_1430->g_107 p_1430->g_76 p_1430->g_103 p_1430->g_100 p_1430->g_156 p_1430->g_166 p_1430->g_134 p_1430->g_93
 * writes: p_1430->g_17 p_1430->g_76 p_1430->g_83 p_1430->g_93 p_1430->g_107 p_1430->g_156 p_1430->g_111.f0 p_1430->g_166 p_1430->g_168 p_1430->g_134
 */
int8_t * func_33(int64_t  p_34, struct S2 * p_1430)
{ /* block id: 6 */
    int16_t l_37 = 0x70DFL;
    int32_t l_167 = 0L;
    int32_t *l_424 = &p_1430->g_306;
    union U1 *l_425 = &p_1430->g_426;
    int8_t *l_427[3];
    int i;
    for (i = 0; i < 3; i++)
        l_427[i] = (void*)0;
    for (p_1430->g_17 = 0; (p_1430->g_17 == (-24)); --p_1430->g_17)
    { /* block id: 9 */
        uint32_t l_72[6][3] = {{0UL,0xB2D4AD44L,0UL},{0UL,0xB2D4AD44L,0UL},{0UL,0xB2D4AD44L,0UL},{0UL,0xB2D4AD44L,0UL},{0UL,0xB2D4AD44L,0UL},{0UL,0xB2D4AD44L,0UL}};
        int8_t *l_73[5] = {&p_1430->g_17,&p_1430->g_17,&p_1430->g_17,&p_1430->g_17,&p_1430->g_17};
        int32_t *l_164 = (void*)0;
        int32_t **l_163 = &l_164;
        int64_t *l_165[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i, j;
        if (l_37)
            break;
        l_424 = ((*l_163) = func_38(((p_1430->g_41 == (void*)0) , l_37), func_43((l_167 = (safe_rshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s((p_1430->g_166 &= ((safe_add_func_uint64_t_u_u(((safe_sub_func_uint32_t_u_u(l_37, (((*l_163) = (((safe_sub_func_int16_t_s_s((p_34 >= p_34), (safe_rshift_func_int16_t_s_u(p_34, 14)))) , (safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u(1UL, func_64(((safe_div_func_int64_t_s_s((p_1430->g_17 , p_1430->g_17), (-1L))) ^ l_37), p_34, p_1430->g_17, l_72[4][0], l_73[2], p_1430))), 10))) , &p_1430->g_103)) != (void*)0))) | 4294967295UL), 0x6BE2EA708A12FBA8L)) != 0x6BBF9829L)), p_1430->g_17)), p_34))), p_34, p_34, l_73[2], p_1430), p_1430));
    }
    l_425 = l_425;
    return l_427[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1430->g_156
 * writes: p_1430->g_156
 */
int32_t * func_38(uint32_t  p_39, uint32_t  p_40, struct S2 * p_1430)
{ /* block id: 215 */
    int32_t *l_423 = &p_1430->g_103;
    for (p_1430->g_156 = (-16); (p_1430->g_156 == 7); p_1430->g_156 = safe_add_func_int8_t_s_s(p_1430->g_156, 9))
    { /* block id: 218 */
        uint16_t l_419 = 0xF665L;
        int32_t *l_422 = (void*)0;
        --l_419;
        return l_422;
    }
    return l_423;
}


/* ------------------------------------------ */
/* 
 * reads : p_1430->g_134 p_1430->g_76 p_1430->g_107 p_1430->g_17 p_1430->g_156 p_1430->g_93
 * writes: p_1430->g_168 p_1430->g_134 p_1430->g_156 p_1430->g_93
 */
uint32_t  func_43(int32_t  p_44, int8_t  p_45, int16_t  p_46, int8_t * p_47, struct S2 * p_1430)
{ /* block id: 53 */
    int32_t *l_172 = (void*)0;
    uint32_t *l_173[8][7][4] = {{{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156}},{{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156}},{{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156}},{{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156}},{{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156}},{{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156}},{{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156}},{{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156},{(void*)0,&p_1430->g_156,(void*)0,&p_1430->g_156}}};
    int32_t l_174 = 0x2330EBA2L;
    int64_t l_175 = 4L;
    struct S0 *l_178 = &p_1430->g_111;
    int8_t **l_199 = &p_1430->g_84[0][3];
    int16_t l_200 = (-1L);
    int64_t l_234 = (-9L);
    uint8_t l_354 = 0xC4L;
    uint64_t l_363 = 1UL;
    int i, j, k;
    p_1430->g_168 = (void*)0;
    for (p_1430->g_134 = (-22); (p_1430->g_134 >= 13); p_1430->g_134 = safe_add_func_int16_t_s_s(p_1430->g_134, 3))
    { /* block id: 57 */
        int32_t **l_171 = (void*)0;
        l_172 = &p_1430->g_76;
        if (p_46)
            continue;
        return (*l_172);
    }
    l_175 = ((l_174 = p_1430->g_107[1]) && (p_1430->g_156 ^= p_1430->g_17));
    for (p_1430->g_93 = 3; (p_1430->g_93 >= 0); p_1430->g_93 -= 1)
    { /* block id: 67 */
        struct S0 **l_179 = (void*)0;
        struct S0 **l_180 = &l_178;
        int32_t l_187 = 0x55BB8F8DL;
        int32_t l_188 = (-1L);
        int8_t **l_198 = &p_1430->g_16;
        int32_t l_211 = 0x71E60DA4L;
        int8_t l_264[5][3] = {{0x33L,0x44L,0x33L},{0x33L,0x44L,0x33L},{0x33L,0x44L,0x33L},{0x33L,0x44L,0x33L},{0x33L,0x44L,0x33L}};
        uint32_t l_286 = 4294967289UL;
        uint8_t l_311 = 0UL;
        struct S0 l_344 = {1L};
        int32_t **l_373[7];
        int32_t ***l_372 = &l_373[2];
        uint16_t *l_376 = (void*)0;
        uint16_t *l_377 = &p_1430->g_134;
        uint64_t *l_382 = &p_1430->g_288;
        uint64_t *l_383 = &p_1430->g_384;
        int32_t *l_385 = &p_1430->g_218;
        uint64_t l_387[8];
        int i, j;
        for (i = 0; i < 7; i++)
            l_373[i] = &l_172;
        for (i = 0; i < 8; i++)
            l_387[i] = 0UL;
        (1 + 1);
    }
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_1430->g_17 p_1430->g_107 p_1430->g_76 p_1430->g_103 p_1430->g_100 p_1430->g_156
 * writes: p_1430->g_76 p_1430->g_83 p_1430->g_93 p_1430->g_107 p_1430->g_156 p_1430->g_111.f0
 */
int16_t  func_64(uint32_t  p_65, int64_t  p_66, int32_t  p_67, int64_t  p_68, int8_t * p_69, struct S2 * p_1430)
{ /* block id: 11 */
    int32_t *l_75 = &p_1430->g_76;
    struct S0 *l_113 = (void*)0;
    int8_t **l_147 = &p_1430->g_16;
    uint16_t l_158 = 1UL;
lbl_162:
    (*l_75) = (safe_unary_minus_func_int8_t_s((-1L)));
    for (p_66 = 0; (p_66 != (-20)); p_66--)
    { /* block id: 15 */
        uint64_t l_94 = 0x9EA21F9F6D65DBDCL;
        int32_t l_135[5][4][8] = {{{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L}},{{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L}},{{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L}},{{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L}},{{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L},{0x779239A8L,1L,0x779239A8L,0x779239A8L,1L,0x779239A8L,0x779239A8L,1L}}};
        uint64_t l_136 = 6UL;
        struct S0 *l_152 = &p_1430->g_111;
        uint64_t l_161 = 0x458067933A92D299L;
        int i, j, k;
        for (p_68 = 0; (p_68 < (-23)); p_68--)
        { /* block id: 18 */
            int8_t **l_82 = &p_1430->g_16;
            int8_t ***l_81[6][5];
            int32_t **l_95 = &l_75;
            int i, j;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 5; j++)
                    l_81[i][j] = &l_82;
            }
            p_1430->g_83 = &p_69;
            l_94 = (safe_sub_func_int64_t_s_s(0x0A992350C16569D9L, (safe_lshift_func_int16_t_s_u((safe_sub_func_int32_t_s_s(((*l_75) = (safe_add_func_int8_t_s_s(1L, 0x71L))), (p_1430->g_93 = p_1430->g_17))), 13))));
            (*l_95) = &p_1430->g_76;
        }
        for (p_1430->g_76 = 0; (p_1430->g_76 <= (-2)); --p_1430->g_76)
        { /* block id: 27 */
            int32_t *l_98 = (void*)0;
            int32_t *l_99 = &p_1430->g_100;
            int32_t *l_101 = (void*)0;
            int32_t *l_102 = &p_1430->g_100;
            int32_t *l_104 = &p_1430->g_103;
            int32_t *l_105 = &p_1430->g_100;
            int32_t *l_106[2][7][4] = {{{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103}},{{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103},{&p_1430->g_103,&p_1430->g_76,&p_1430->g_103,&p_1430->g_103}}};
            struct S0 *l_110 = &p_1430->g_111;
            struct S0 **l_112[8] = {&l_110,&l_110,&l_110,&l_110,&l_110,&l_110,&l_110,&l_110};
            int32_t **l_116 = &l_106[0][1][1];
            uint16_t *l_133[4] = {&p_1430->g_134,&p_1430->g_134,&p_1430->g_134,&p_1430->g_134};
            int i, j, k;
            p_1430->g_107[1]--;
            l_113 = l_110;
            if ((((safe_lshift_func_uint16_t_u_u((((*l_116) = (void*)0) != &p_1430->g_103), (safe_mod_func_uint16_t_u_u(p_1430->g_107[5], p_1430->g_76)))) || ((safe_add_func_uint32_t_u_u(p_1430->g_103, ((safe_mod_func_int32_t_s_s((safe_sub_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(l_94, ((((l_135[1][3][5] = (safe_mod_func_uint16_t_u_u(((((0L >= (0x30A1L | p_1430->g_107[0])) <= p_67) , &p_1430->g_111) == l_113), 1UL))) <= l_136) , &p_1430->g_16) == &p_1430->g_84[0][7]))), l_136)), 0)), 0x45F95DF2L)), p_1430->g_100)) < p_66))) > (*l_105))) , (*l_75)))
            { /* block id: 32 */
                uint32_t l_153 = 0x04B69D3DL;
                uint32_t *l_154 = (void*)0;
                uint32_t *l_155 = &p_1430->g_156;
                uint64_t *l_157 = &l_136;
                int8_t *l_159 = &p_1430->g_111.f0;
                int16_t *l_160 = &p_1430->g_93;
                if ((safe_rshift_func_int16_t_s_s((((((*l_160) = ((safe_add_func_uint32_t_u_u(((+p_67) != (((safe_rshift_func_int8_t_s_s(((*l_159) = (((safe_rshift_func_int16_t_s_u(((safe_div_func_int16_t_s_s((l_158 = ((((*l_157) &= ((((void*)0 != l_147) <= (((*l_155) = (((safe_add_func_int8_t_s_s((safe_mul_func_int16_t_s_s(0x20E2L, (l_152 == &p_1430->g_111))), (0x55C5D77EL >= (p_1430->g_107[1] && (l_153 , 5L))))) , &p_1430->g_111) == (void*)0)) & p_68)) & l_135[1][3][5])) , (-1L)) & 0xB7D993E846AAE942L)), FAKE_DIVERGE(p_1430->local_1_offset, get_local_id(1), 10))) == 1L), GROUP_DIVERGE(2, 1))) || 0x0FFC656B39C3AD06L) >= p_1430->g_76)), (*p_69))) == 0L) == p_67)), p_1430->g_76)) , p_1430->g_17)) , p_67) != 4UL) ^ l_161), 2)))
                { /* block id: 38 */
                    if (p_65)
                        break;
                }
                else
                { /* block id: 40 */
                    if (p_1430->g_76)
                        goto lbl_162;
                    if (p_66)
                        break;
                }
            }
            else
            { /* block id: 44 */
                if (p_1430->g_156)
                    break;
            }
        }
    }
    return (*l_75);
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_1431;
    struct S2* p_1430 = &c_1431;
    struct S2 c_1432 = {
        8L, // p_1430->g_17
        &p_1430->g_17, // p_1430->g_16
        0L, // p_1430->g_42
        &p_1430->g_42, // p_1430->g_41
        0x4923F2B6L, // p_1430->g_76
        {{&p_1430->g_17,(void*)0,&p_1430->g_17,&p_1430->g_17,(void*)0,&p_1430->g_17,&p_1430->g_17,(void*)0,&p_1430->g_17,&p_1430->g_17},{&p_1430->g_17,(void*)0,&p_1430->g_17,&p_1430->g_17,(void*)0,&p_1430->g_17,&p_1430->g_17,(void*)0,&p_1430->g_17,&p_1430->g_17},{&p_1430->g_17,(void*)0,&p_1430->g_17,&p_1430->g_17,(void*)0,&p_1430->g_17,&p_1430->g_17,(void*)0,&p_1430->g_17,&p_1430->g_17}}, // p_1430->g_84
        &p_1430->g_84[0][7], // p_1430->g_83
        0x528CL, // p_1430->g_93
        0x2A5DBDFDL, // p_1430->g_100
        (-1L), // p_1430->g_103
        {0x386B476018F8C21EL,0x386B476018F8C21EL,0x386B476018F8C21EL,0x386B476018F8C21EL,0x386B476018F8C21EL,0x386B476018F8C21EL,0x386B476018F8C21EL,0x386B476018F8C21EL}, // p_1430->g_107
        {-1L}, // p_1430->g_111
        65535UL, // p_1430->g_134
        4294967295UL, // p_1430->g_156
        0L, // p_1430->g_166
        &p_1430->g_103, // p_1430->g_168
        {0x0EC3L,0x0EC3L,0x0EC3L,0x0EC3L,0x0EC3L}, // p_1430->g_210
        0x388A4E7FL, // p_1430->g_218
        0xD6L, // p_1430->g_228
        6UL, // p_1430->g_253
        4294967290UL, // p_1430->g_278
        &p_1430->g_111, // p_1430->g_281
        8UL, // p_1430->g_283
        1UL, // p_1430->g_288
        0x4FE5E0AEL, // p_1430->g_306
        0x0E2918AFL, // p_1430->g_307
        {0x22104996L,0x22104996L,0x22104996L,0x22104996L,0x22104996L}, // p_1430->g_310
        &p_1430->g_253, // p_1430->g_318
        &p_1430->g_283, // p_1430->g_321
        1L, // p_1430->g_371
        &p_1430->g_371, // p_1430->g_370
        &p_1430->g_370, // p_1430->g_369
        &p_1430->g_369, // p_1430->g_368
        0x28DB75DD5B572446L, // p_1430->g_384
        {0x1FL,0x1FL,0x1FL,0x1FL,0x1FL,0x1FL,0x1FL,0x1FL,0x1FL,0x1FL}, // p_1430->g_386
        (void*)0, // p_1430->g_406
        {0x68L}, // p_1430->g_407
        {248UL}, // p_1430->g_426
        &p_1430->g_168, // p_1430->g_429
        {{0x7E8AL,0x7E8AL,0x7E8AL,0x7E8AL,0x7E8AL,0x7E8AL,0x7E8AL,0x7E8AL,0x7E8AL}}, // p_1430->g_434
        &p_1430->g_434[0][7], // p_1430->g_433
        (void*)0, // p_1430->g_473
        {{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}},{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}},{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}},{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}},{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}},{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}},{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}},{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}},{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}},{{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL},{0x41L,1UL,246UL}}}, // p_1430->g_491
        {0UL}, // p_1430->g_565
        &p_1430->g_168, // p_1430->g_571
        {1L,1L,1L,1L}, // p_1430->g_591
        {{{2UL},{2UL}},{{2UL},{2UL}}}, // p_1430->g_783
        0x339A02ADL, // p_1430->g_796
        &p_1430->g_796, // p_1430->g_795
        &p_1430->g_795, // p_1430->g_794
        0xFF1DL, // p_1430->g_803
        &p_1430->g_803, // p_1430->g_802
        &p_1430->g_802, // p_1430->g_801
        1UL, // p_1430->g_814
        {&p_1430->g_134,&p_1430->g_134,&p_1430->g_134,&p_1430->g_134,&p_1430->g_134,&p_1430->g_134}, // p_1430->g_873
        {0x32DB002ACF7F8EABL,0x32DB002ACF7F8EABL,0x32DB002ACF7F8EABL,0x32DB002ACF7F8EABL,0x32DB002ACF7F8EABL,0x32DB002ACF7F8EABL,0x32DB002ACF7F8EABL}, // p_1430->g_895
        0x18L, // p_1430->g_924
        6UL, // p_1430->g_1011
        0xB6L, // p_1430->g_1018
        (void*)0, // p_1430->g_1071
        (void*)0, // p_1430->g_1072
        &p_1430->g_76, // p_1430->g_1073
        (-4L), // p_1430->g_1085
        &p_1430->g_783[1][1], // p_1430->g_1097
        &p_1430->g_1097, // p_1430->g_1096
        &p_1430->g_1096, // p_1430->g_1095
        {{{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}}},{{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}}},{{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}}},{{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}}},{{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}}},{{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}}},{{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}}},{{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}}},{{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}},{{0x26L},{0x40L}}}}, // p_1430->g_1124
        {&p_1430->g_1097,&p_1430->g_1097}, // p_1430->g_1126
        (void*)0, // p_1430->g_1127
        {{&p_1430->g_1097},{&p_1430->g_1097}}, // p_1430->g_1128
        {{{246UL},{246UL},{246UL},{246UL},{246UL},{246UL}},{{246UL},{246UL},{246UL},{246UL},{246UL},{246UL}},{{246UL},{246UL},{246UL},{246UL},{246UL},{246UL}},{{246UL},{246UL},{246UL},{246UL},{246UL},{246UL}}}, // p_1430->g_1197
        &p_1430->g_218, // p_1430->g_1218
        &p_1430->g_168, // p_1430->g_1223
        {&p_1430->g_803,&p_1430->g_803}, // p_1430->g_1253
        {(void*)0,(void*)0}, // p_1430->g_1255
        &p_1430->g_168, // p_1430->g_1267
        {{&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4]},{&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4]},{&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4]},{&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4]},{&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4],&p_1430->g_895[4]}}, // p_1430->g_1341
        {&p_1430->g_1341[0][0],&p_1430->g_1341[0][0],&p_1430->g_1341[0][0],&p_1430->g_1341[0][0],&p_1430->g_1341[0][0],&p_1430->g_1341[0][0],&p_1430->g_1341[0][0],&p_1430->g_1341[0][0]}, // p_1430->g_1340
        &p_1430->g_1267, // p_1430->g_1360
        &p_1430->g_321, // p_1430->g_1389
        &p_1430->g_1389, // p_1430->g_1388
        {{{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}}},{{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}}},{{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}}},{{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}}},{{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}}},{{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}}},{{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}}},{{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}}},{{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}},{{0x80L},{0x5CL},{0UL}}}}, // p_1430->g_1414
        0, // p_1430->v_collective
        sequence_input[get_global_id(0)], // p_1430->global_0_offset
        sequence_input[get_global_id(1)], // p_1430->global_1_offset
        sequence_input[get_global_id(2)], // p_1430->global_2_offset
        sequence_input[get_local_id(0)], // p_1430->local_0_offset
        sequence_input[get_local_id(1)], // p_1430->local_1_offset
        sequence_input[get_local_id(2)], // p_1430->local_2_offset
        sequence_input[get_group_id(0)], // p_1430->group_0_offset
        sequence_input[get_group_id(1)], // p_1430->group_1_offset
        sequence_input[get_group_id(2)], // p_1430->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1431 = c_1432;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1430);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1430->g_17, "p_1430->g_17", print_hash_value);
    transparent_crc(p_1430->g_42, "p_1430->g_42", print_hash_value);
    transparent_crc(p_1430->g_76, "p_1430->g_76", print_hash_value);
    transparent_crc(p_1430->g_93, "p_1430->g_93", print_hash_value);
    transparent_crc(p_1430->g_100, "p_1430->g_100", print_hash_value);
    transparent_crc(p_1430->g_103, "p_1430->g_103", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1430->g_107[i], "p_1430->g_107[i]", print_hash_value);

    }
    transparent_crc(p_1430->g_111.f0, "p_1430->g_111.f0", print_hash_value);
    transparent_crc(p_1430->g_134, "p_1430->g_134", print_hash_value);
    transparent_crc(p_1430->g_156, "p_1430->g_156", print_hash_value);
    transparent_crc(p_1430->g_166, "p_1430->g_166", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1430->g_210[i], "p_1430->g_210[i]", print_hash_value);

    }
    transparent_crc(p_1430->g_218, "p_1430->g_218", print_hash_value);
    transparent_crc(p_1430->g_228, "p_1430->g_228", print_hash_value);
    transparent_crc(p_1430->g_253, "p_1430->g_253", print_hash_value);
    transparent_crc(p_1430->g_278, "p_1430->g_278", print_hash_value);
    transparent_crc(p_1430->g_283, "p_1430->g_283", print_hash_value);
    transparent_crc(p_1430->g_288, "p_1430->g_288", print_hash_value);
    transparent_crc(p_1430->g_306, "p_1430->g_306", print_hash_value);
    transparent_crc(p_1430->g_307, "p_1430->g_307", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1430->g_310[i], "p_1430->g_310[i]", print_hash_value);

    }
    transparent_crc(p_1430->g_371, "p_1430->g_371", print_hash_value);
    transparent_crc(p_1430->g_384, "p_1430->g_384", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1430->g_386[i], "p_1430->g_386[i]", print_hash_value);

    }
    transparent_crc(p_1430->g_407.f0, "p_1430->g_407.f0", print_hash_value);
    transparent_crc(p_1430->g_426.f0, "p_1430->g_426.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1430->g_434[i][j], "p_1430->g_434[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1430->g_491[i][j][k], "p_1430->g_491[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1430->g_565.f0, "p_1430->g_565.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1430->g_591[i], "p_1430->g_591[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1430->g_783[i][j].f0, "p_1430->g_783[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1430->g_796, "p_1430->g_796", print_hash_value);
    transparent_crc(p_1430->g_803, "p_1430->g_803", print_hash_value);
    transparent_crc(p_1430->g_814, "p_1430->g_814", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1430->g_895[i], "p_1430->g_895[i]", print_hash_value);

    }
    transparent_crc(p_1430->g_924, "p_1430->g_924", print_hash_value);
    transparent_crc(p_1430->g_1011, "p_1430->g_1011", print_hash_value);
    transparent_crc(p_1430->g_1018, "p_1430->g_1018", print_hash_value);
    transparent_crc(p_1430->g_1085, "p_1430->g_1085", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1430->g_1124[i][j][k].f0, "p_1430->g_1124[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1430->g_1197[i][j].f0, "p_1430->g_1197[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1430->g_1414[i][j][k].f0, "p_1430->g_1414[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1430->v_collective, "p_1430->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
