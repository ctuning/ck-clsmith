// --atomics 76 ---fake_divergence -g 28,26,2 -l 4,26,2
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


// Seed: 18

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   uint16_t  f1;
   volatile int32_t  f2;
   uint64_t  f3;
   volatile int32_t  f4;
   uint8_t  f5;
   int32_t  f6;
   int32_t  f7;
   int32_t  f8;
   int8_t  f9;
};

struct S1 {
   volatile uint32_t  f0;
   volatile int8_t  f1;
};

union U2 {
   int32_t  f0;
   int32_t  f1;
   volatile struct S1  f2;
};

union U3 {
   volatile int64_t  f0;
   volatile uint32_t  f1;
   volatile int32_t  f2;
   struct S0  f3;
   uint32_t  f4;
};

union U4 {
   volatile uint32_t  f0;
   volatile struct S0  f1;
   struct S1  f2;
   volatile int8_t  f3;
};

struct S5 {
    uint64_t g_5;
    int32_t g_89[4];
    int32_t *g_88;
    int32_t *g_127;
    int32_t ** volatile g_126;
    int16_t g_135[10];
    union U3 g_146;
    union U3 *g_145;
    int64_t g_171;
    volatile uint8_t g_172;
    union U4 g_181;
    int32_t g_183;
    struct S1 g_189;
    int8_t g_226;
    int32_t g_227;
    int64_t g_231;
    union U4 *g_234;
    union U4 ** volatile g_233;
    uint32_t g_238;
    uint16_t g_252;
    union U4 ** volatile g_254;
    union U3 g_255;
    uint16_t g_260;
    struct S1 * volatile g_288;
    struct S1 g_289;
    volatile int64_t g_308;
    volatile int64_t g_309[2][1][10];
    volatile uint8_t g_311;
    volatile uint32_t * volatile g_323;
    volatile uint32_t * volatile * volatile g_322;
    volatile struct S0 g_327[6][5][3];
    volatile struct S0 g_329;
    union U4 **g_342;
    volatile uint64_t g_347;
    struct S0 g_362[9][8];
    struct S0 * volatile g_363;
    struct S0 * volatile g_364;
    struct S0 * volatile g_365[3][5][9];
    struct S0 * volatile g_366;
    uint32_t g_376;
    struct S1 g_377[8][4][1];
    struct S0 g_411;
    int16_t g_413;
    volatile uint32_t g_450;
    volatile uint32_t *g_449;
    volatile uint32_t **g_448[9][10][2];
    uint32_t *g_454;
    uint32_t **g_453;
    volatile union U2 g_458;
    struct S0 *g_460;
    struct S0 ** volatile g_459;
    struct S1 g_461;
    struct S0 g_473;
    int32_t *g_475[6];
    union U4 g_515;
    union U4 g_517;
    union U4 g_518[4][4][6];
    union U4 g_519;
    union U4 g_520;
    union U4 g_521;
    union U4 g_522;
    union U4 g_523;
    union U4 g_524;
    union U4 g_525[6];
    union U4 g_526;
    union U4 g_527[7][9][3];
    union U4 g_528;
    union U4 g_529;
    union U4 g_530;
    union U4 g_531;
    union U4 g_532;
    union U4 g_540[9];
    struct S1 g_646;
    int32_t ** volatile g_674;
    volatile uint64_t g_678[8][6][5];
    volatile union U3 g_683;
    uint64_t g_705[8][10][3];
    int32_t g_708[8][5][6];
    volatile int64_t * volatile g_711;
    volatile int64_t * volatile *g_710;
    volatile int64_t * volatile * volatile * volatile g_709;
    volatile struct S1 g_803;
    int8_t g_832;
    union U4 g_860;
    volatile union U2 g_898;
    volatile union U2 g_902[7];
    volatile union U2 g_903;
    int64_t ** volatile *g_912[1];
    struct S0 g_946;
    volatile struct S0 g_1010[8];
    volatile struct S1 g_1011[1][9];
    volatile struct S1 * volatile g_1013;
    struct S0 g_1032;
    struct S0 g_1052;
    volatile struct S1 g_1057;
    volatile struct S1 * volatile g_1058;
    volatile struct S1 g_1059;
    struct S1 g_1060[3];
    struct S1 * volatile g_1061;
    volatile struct S1 g_1069;
    volatile uint32_t g_1108;
    volatile union U2 g_1129;
    uint8_t *g_1178;
    int32_t ** volatile g_1185;
    struct S1 g_1191[7][4];
    struct S1 *g_1190;
    struct S1 g_1193;
    struct S1 g_1194;
    struct S1 g_1195;
    union U4 g_1202[10][1];
    union U3 g_1208;
    union U3 g_1212;
    union U3 *g_1211;
    struct S0 g_1214[5][10][5];
    struct S0 g_1243;
    volatile struct S1 g_1300;
    union U3 g_1310;
    volatile struct S1 g_1325;
    int32_t ** volatile g_1332;
    int32_t ** volatile g_1357;
    volatile struct S0 g_1518;
    int64_t *g_1555;
    int64_t **g_1554;
    int64_t ***g_1553[8];
    struct S1 g_1568;
    struct S0 g_1625;
    volatile union U4 g_1626;
    uint16_t g_1639;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S5 * p_1673);
int32_t * func_3(uint8_t  p_4, struct S5 * p_1673);
struct S0  func_77(uint32_t  p_78, uint8_t  p_79, int32_t  p_80, int32_t ** p_81, int32_t * p_82, struct S5 * p_1673);
uint32_t  func_83(int32_t * p_84, uint32_t  p_85, int32_t * p_86, union U3 * p_87, struct S5 * p_1673);
int16_t  func_95(int16_t  p_96, int8_t  p_97, int32_t ** p_98, int32_t  p_99, uint32_t  p_100, struct S5 * p_1673);
uint32_t  func_105(uint64_t  p_106, int32_t ** p_107, int32_t ** p_108, struct S5 * p_1673);
int32_t ** func_109(int32_t ** p_110, int32_t  p_111, struct S5 * p_1673);
int64_t  func_147(uint16_t  p_148, int32_t * p_149, uint64_t  p_150, struct S5 * p_1673);
int32_t * func_151(union U3 * p_152, uint64_t  p_153, struct S5 * p_1673);
union U4 * func_163(int32_t * p_164, struct S5 * p_1673);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1673->g_5 p_1673->g_473.f9 p_1673->g_88 p_1673->g_1108 p_1673->g_674 p_1673->g_1129 p_1673->g_708 p_1673->g_89 p_1673->g_411.f8 p_1673->g_946.f3 p_1673->g_1052.f7 p_1673->g_1032.f8 p_1673->g_126 p_1673->g_127 p_1673->g_411.f0 p_1673->g_183 p_1673->g_1178 p_1673->g_454 p_1673->g_238 p_1673->g_473.f1 p_1673->g_411.f5 p_1673->g_1032.f0 p_1673->g_517.f0 p_1673->g_1052.f8 p_1673->g_366 p_1673->g_362 p_1673->g_460 p_1673->g_1185 p_1673->g_233 p_1673->g_234 p_1673->g_1190 p_1673->g_135 p_1673->g_453 p_1673->g_1202 p_1673->g_1211 p_1673->g_1052.f3 p_1673->g_529.f0 p_1673->g_1214.f1 p_1673->g_413 p_1673->g_946.f5 p_1673->g_1243 p_1673->g_189.f0 p_1673->g_342 p_1673->g_411.f9 p_1673->g_1300 p_1673->g_1212.f3.f6 p_1673->g_523.f0 p_1673->g_146.f3.f9 p_1673->g_1554 p_1673->g_1555 p_1673->g_709 p_1673->g_710 p_1673->g_711 p_1673->g_329.f9
 * writes: p_1673->g_473.f9 p_1673->g_1108 p_1673->g_127 p_1673->g_1178 p_1673->g_362.f9 p_1673->g_1052.f8 p_1673->g_946.f5 p_1673->g_362 p_1673->g_88 p_1673->g_183 p_1673->g_145 p_1673->g_238 p_1673->g_89 p_1673->g_411.f5 p_1673->g_1208.f3.f1 p_1673->g_135 p_1673->g_413 p_1673->g_234 p_1673->g_1212.f3.f6 p_1673->g_146.f3.f9 p_1673->g_1555
 */
uint32_t  func_1(struct S5 * p_1673)
{ /* block id: 4 */
    int16_t l_2 = (-1L);
    int32_t l_1112 = 0x1747B8A9L;
    int32_t l_1114 = (-1L);
    int32_t l_1117 = 0x3969FCAAL;
    int32_t l_1118 = (-1L);
    int32_t l_1119 = 1L;
    int32_t l_1120 = 0x4CCE937FL;
    int32_t l_1121 = (-4L);
    int32_t l_1122 = (-3L);
    int32_t l_1123 = (-9L);
    uint8_t l_1124 = 0x9EL;
    uint16_t l_1130 = 0xDBABL;
    int32_t l_1141 = 0x6A07C6AEL;
    uint64_t l_1154 = 4UL;
    uint32_t l_1181 = 0UL;
    int32_t l_1183 = 4L;
    uint32_t l_1184 = 9UL;
    struct S1 *l_1192[1][5][4] = {{{&p_1673->g_1194,&p_1673->g_1195,&p_1673->g_1194,&p_1673->g_1194},{&p_1673->g_1194,&p_1673->g_1195,&p_1673->g_1194,&p_1673->g_1194},{&p_1673->g_1194,&p_1673->g_1195,&p_1673->g_1194,&p_1673->g_1194},{&p_1673->g_1194,&p_1673->g_1195,&p_1673->g_1194,&p_1673->g_1194},{&p_1673->g_1194,&p_1673->g_1195,&p_1673->g_1194,&p_1673->g_1194}}};
    int32_t *l_1198 = &l_1118;
    int32_t l_1265 = 0x3D72AD48L;
    uint16_t l_1286 = 0x5061L;
    int32_t l_1353[5][10] = {{0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L,0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L},{0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L,0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L},{0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L,0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L},{0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L,0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L},{0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L,0L,0x0B15125CL,0x66FAB7DBL,0x0B15125CL,0L}};
    int32_t *l_1371[8] = {&p_1673->g_708[2][4][3],&p_1673->g_708[2][4][3],&p_1673->g_708[2][4][3],&p_1673->g_708[2][4][3],&p_1673->g_708[2][4][3],&p_1673->g_708[2][4][3],&p_1673->g_708[2][4][3],&p_1673->g_708[2][4][3]};
    uint16_t l_1517 = 3UL;
    uint64_t l_1550 = 1UL;
    union U4 **l_1590 = (void*)0;
    int32_t l_1653 = (-1L);
    int64_t *l_1672 = &p_1673->g_171;
    int64_t **l_1671 = &l_1672;
    int i, j, k;
    if (l_2)
    { /* block id: 5 */
        int32_t **l_1111 = &p_1673->g_127;
        int32_t *l_1113 = &p_1673->g_89[2];
        int32_t *l_1115 = &p_1673->g_708[2][4][3];
        int32_t *l_1116[8] = {&p_1673->g_89[2],&p_1673->g_89[2],&p_1673->g_89[2],&p_1673->g_89[2],&p_1673->g_89[2],&p_1673->g_89[2],&p_1673->g_89[2],&p_1673->g_89[2]};
        int i;
        (*l_1111) = func_3((p_1673->g_5 , l_2), p_1673);
        l_1124--;
    }
    else
    { /* block id: 592 */
        int32_t l_1131[10][6] = {{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L},{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L},{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L},{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L},{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L},{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L},{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L},{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L},{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L},{0x72F925F2L,(-1L),1L,0x2068847AL,(-1L),0x72F925F2L}};
        uint8_t *l_1132[3][10] = {{(void*)0,(void*)0,&p_1673->g_411.f5,&p_1673->g_362[5][0].f5,&p_1673->g_362[5][0].f5,&p_1673->g_362[5][0].f5,(void*)0,&p_1673->g_411.f5,(void*)0,&p_1673->g_362[5][0].f5},{(void*)0,(void*)0,&p_1673->g_411.f5,&p_1673->g_362[5][0].f5,&p_1673->g_362[5][0].f5,&p_1673->g_362[5][0].f5,(void*)0,&p_1673->g_411.f5,(void*)0,&p_1673->g_362[5][0].f5},{(void*)0,(void*)0,&p_1673->g_411.f5,&p_1673->g_362[5][0].f5,&p_1673->g_362[5][0].f5,&p_1673->g_362[5][0].f5,(void*)0,&p_1673->g_411.f5,(void*)0,&p_1673->g_362[5][0].f5}};
        int32_t *l_1145 = &p_1673->g_708[2][4][3];
        int32_t *l_1146 = &l_1114;
        int32_t *l_1147 = &l_1131[8][5];
        int32_t *l_1148 = &l_1122;
        int32_t *l_1149 = &p_1673->g_183;
        int32_t *l_1150 = &p_1673->g_183;
        int32_t *l_1151 = &l_1120;
        int32_t *l_1152 = &p_1673->g_183;
        int32_t *l_1153[2][8] = {{&l_1119,&l_1119,&l_1112,&l_1117,&l_1119,&l_1117,&l_1112,&l_1119},{&l_1119,&l_1119,&l_1112,&l_1117,&l_1119,&l_1117,&l_1112,&l_1119}};
        uint8_t **l_1179 = &p_1673->g_1178;
        int8_t *l_1180 = &p_1673->g_362[5][0].f9;
        int64_t *l_1182[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int8_t l_1215[8] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
        uint8_t l_1256 = 255UL;
        int8_t l_1262 = (-3L);
        int i, j;
        l_1121 |= (safe_add_func_uint32_t_u_u(((p_1673->g_1129 , l_1130) > (l_1131[4][1] = (p_1673->g_708[2][4][3] , l_1131[8][5]))), ((safe_div_func_uint8_t_u_u(((0x10L == (safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_u(l_1141, 0)) > (safe_mul_func_int8_t_s_s(p_1673->g_708[3][4][2], ((safe_unary_minus_func_uint64_t_u(((void*)0 != &p_1673->g_342))) < p_1673->g_89[1])))) >= p_1673->g_411.f8), 3)), 7))) & p_1673->g_946.f3), p_1673->g_1052.f7)) | p_1673->g_1032.f8)));
        l_1154--;
        if ((safe_sub_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_u(0UL, (((**p_1673->g_126) > (safe_mod_func_int64_t_s_s(((((safe_rshift_func_int16_t_s_u((*l_1151), (safe_lshift_func_int8_t_s_u(((((*l_1146) ^= (safe_add_func_uint64_t_u_u(p_1673->g_411.f0, (((((((safe_mul_func_int16_t_s_s(((safe_mod_func_int16_t_s_s((((*l_1152) && (*l_1149)) & (l_1130 | (safe_mod_func_uint32_t_u_u(((safe_div_func_int16_t_s_s(((safe_unary_minus_func_uint8_t_u(l_1123)) & ((*l_1180) = (((*l_1179) = p_1673->g_1178) == &l_1124))), (-2L))) , (*p_1673->g_454)), 0x4E8749C7L)))), p_1673->g_473.f1)) || (*l_1147)), 1L)) , (*p_1673->g_1178)) ^ FAKE_DIVERGE(p_1673->group_2_offset, get_group_id(2), 10)) && l_1181) , l_1119) & (*p_1673->g_454)) ^ 0x602DDC46L)))) && l_1183) , 8L), l_1119)))) || (*p_1673->g_1178)) , &l_1112) != (void*)0), 18446744073709551615UL))) != p_1673->g_1032.f0))) >= l_1184), 3L)))
        { /* block id: 599 */
            return p_1673->g_517.f0;
        }
        else
        { /* block id: 601 */
            uint64_t l_1216 = 0xC35E8C30A997605DL;
            int32_t l_1260 = (-10L);
            int32_t l_1261 = 0L;
            int32_t l_1269 = 0x6EDC128BL;
            int32_t l_1272 = (-9L);
            int32_t l_1273 = 3L;
            int32_t l_1274 = (-1L);
            for (p_1673->g_1052.f8 = 9; (p_1673->g_1052.f8 >= 0); p_1673->g_1052.f8 -= 1)
            { /* block id: 604 */
                int64_t l_1199 = 0x4225263275512E98L;
                union U3 *l_1207 = &p_1673->g_1208;
                struct S1 *l_1234[5] = {&p_1673->g_377[7][3][0],&p_1673->g_377[7][3][0],&p_1673->g_377[7][3][0],&p_1673->g_377[7][3][0],&p_1673->g_377[7][3][0]};
                struct S1 **l_1235 = &l_1234[0];
                int32_t l_1257 = 0x0F27F1B2L;
                int32_t l_1266 = 0x28ACD23BL;
                int32_t l_1268 = 4L;
                int32_t l_1270[8] = {0x1A3D584DL,0x56320261L,0x1A3D584DL,0x1A3D584DL,0x56320261L,0x1A3D584DL,0x1A3D584DL,0x56320261L};
                int i;
                for (p_1673->g_946.f5 = 2; (p_1673->g_946.f5 <= 9); p_1673->g_946.f5 += 1)
                { /* block id: 607 */
                    int64_t l_1217[8][1][6] = {{{0x0BD9CAE82F5950B1L,0x0BAAE4D960FE1A01L,3L,0x5375EB1CA8F6E34CL,3L,0x0BAAE4D960FE1A01L}},{{0x0BD9CAE82F5950B1L,0x0BAAE4D960FE1A01L,3L,0x5375EB1CA8F6E34CL,3L,0x0BAAE4D960FE1A01L}},{{0x0BD9CAE82F5950B1L,0x0BAAE4D960FE1A01L,3L,0x5375EB1CA8F6E34CL,3L,0x0BAAE4D960FE1A01L}},{{0x0BD9CAE82F5950B1L,0x0BAAE4D960FE1A01L,3L,0x5375EB1CA8F6E34CL,3L,0x0BAAE4D960FE1A01L}},{{0x0BD9CAE82F5950B1L,0x0BAAE4D960FE1A01L,3L,0x5375EB1CA8F6E34CL,3L,0x0BAAE4D960FE1A01L}},{{0x0BD9CAE82F5950B1L,0x0BAAE4D960FE1A01L,3L,0x5375EB1CA8F6E34CL,3L,0x0BAAE4D960FE1A01L}},{{0x0BD9CAE82F5950B1L,0x0BAAE4D960FE1A01L,3L,0x5375EB1CA8F6E34CL,3L,0x0BAAE4D960FE1A01L}},{{0x0BD9CAE82F5950B1L,0x0BAAE4D960FE1A01L,3L,0x5375EB1CA8F6E34CL,3L,0x0BAAE4D960FE1A01L}}};
                    int i, j, k;
                    (*p_1673->g_460) = (*p_1673->g_366);
                    for (l_1183 = 0; (l_1183 >= 0); l_1183 -= 1)
                    { /* block id: 611 */
                        int i, j, k;
                        (*p_1673->g_1185) = &l_1112;
                        (*l_1149) &= ((((void*)0 == (*p_1673->g_233)) & (((&p_1673->g_1011[l_1183][(l_1183 + 7)] == ((safe_mul_func_int16_t_s_s((&p_1673->g_1011[l_1183][l_1183] == (l_1192[0][4][2] = p_1673->g_1190)), (!0x8740L))) , p_1673->g_1190)) >= 1L) <= (safe_lshift_func_uint16_t_u_u(p_1673->g_135[p_1673->g_1052.f8], GROUP_DIVERGE(0, 1))))) && (**p_1673->g_453));
                    }
                    l_1198 = &l_1131[8][5];
                    if (l_1199)
                        break;
                    for (l_1141 = 0; (l_1141 <= 0); l_1141 += 1)
                    { /* block id: 620 */
                        union U3 **l_1209 = &p_1673->g_145;
                        union U3 **l_1210 = &l_1207;
                        struct S0 *l_1213 = &p_1673->g_1214[4][9][3];
                        (*p_1673->g_88) = ((safe_mul_func_uint16_t_u_u((p_1673->g_1202[5][0] , ((-1L) | p_1673->g_362[5][0].f5)), (safe_mul_func_uint16_t_u_u((FAKE_DIVERGE(p_1673->global_0_offset, get_global_id(0), 10) && (((*p_1673->g_127) < (safe_add_func_int32_t_s_s(1L, (((*l_1210) = ((*l_1209) = l_1207)) != p_1673->g_1211)))) > ((GROUP_DIVERGE(0, 1) || ((0xD1L || ((((**p_1673->g_453) = ((((&p_1673->g_1211 == (void*)0) , (void*)0) != l_1213) != p_1673->g_411.f0)) == l_1215[5]) , l_1216)) , l_1217[3][0][2])) != (*l_1198)))), p_1673->g_1052.f3)))) && (*p_1673->g_454));
                        (*l_1146) |= (safe_mul_func_int16_t_s_s((safe_div_func_uint16_t_u_u((p_1673->g_529.f0 == (((--(*p_1673->g_1178)) ^ ((~(((safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((l_1199 | (((**p_1673->g_453) == (~(*p_1673->g_88))) < ((void*)0 == l_1192[0][4][2]))), (*l_1198))), 6)), p_1673->g_89[2])) , (safe_lshift_func_uint16_t_u_s(((safe_lshift_func_int16_t_s_u(p_1673->g_1214[4][9][3].f1, GROUP_DIVERGE(2, 1))) , FAKE_DIVERGE(p_1673->group_1_offset, get_group_id(1), 10)), 14))) >= (*p_1673->g_454))) > p_1673->g_413)) & 0x01D8L)), l_1216)), p_1673->g_946.f5));
                    }
                }
                (*l_1235) = l_1234[0];
                for (p_1673->g_1208.f3.f1 = 1; (p_1673->g_1208.f3.f1 <= 4); p_1673->g_1208.f3.f1 += 1)
                { /* block id: 632 */
                    int64_t **l_1242 = (void*)0;
                    int64_t ***l_1241[7][10][3] = {{{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242}},{{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242}},{{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242}},{{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242}},{{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242}},{{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242}},{{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242}}};
                    int32_t l_1246 = 0x5F6FC902L;
                    int16_t *l_1255[10] = {&p_1673->g_413,&p_1673->g_413,&p_1673->g_413,&p_1673->g_413,&p_1673->g_413,&p_1673->g_413,&p_1673->g_413,&p_1673->g_413,&p_1673->g_413,&p_1673->g_413};
                    int32_t l_1258 = 0x5ACFFEE4L;
                    int32_t l_1263 = (-1L);
                    int32_t l_1271 = 0x12990578L;
                    int32_t l_1276 = 0x112C258EL;
                    union U4 *l_1280 = &p_1673->g_526;
                    uint64_t l_1283 = 0x19C863DBB17286A0L;
                    int32_t **l_1301 = &l_1198;
                    int32_t **l_1302 = &l_1149;
                    int i, j, k;
                    if (((safe_unary_minus_func_uint8_t_u((safe_mod_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s((p_1673->g_135[p_1673->g_1052.f8] &= ((((void*)0 != &l_1207) , l_1241[3][1][1]) != (void*)0)), 13)), (p_1673->g_1243 , (safe_div_func_int64_t_s_s(l_1246, (safe_mul_func_uint8_t_u_u(9UL, ((safe_mod_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u((*p_1673->g_1178), ((safe_lshift_func_int8_t_s_u(((p_1673->g_413 ^= l_1246) < (-1L)), 4)) || p_1673->g_189.f0))) != (*l_1198)) ^ (*p_1673->g_1178)), 0x39L)) ^ l_1199)))))))))) > l_1256))
                    { /* block id: 635 */
                        int64_t l_1259 = 0x6C8BCC7D4571BC7BL;
                        int32_t l_1264 = 0x23321CF5L;
                        int32_t l_1267 = 0x0FE219DCL;
                        int32_t l_1275 = (-8L);
                        uint16_t l_1277 = 65535UL;
                        int32_t l_1281 = 0x109E5575L;
                        int32_t l_1282 = 0x7D7EE93FL;
                        l_1277--;
                        (*p_1673->g_342) = l_1280;
                        ++l_1283;
                        --l_1286;
                    }
                    else
                    { /* block id: 640 */
                        int64_t l_1293 = 0L;
                        if (l_1271)
                            break;
                        l_1272 &= ((*l_1147) , (safe_lshift_func_uint8_t_u_s(((((safe_mul_func_int8_t_s_s((l_1293 , ((l_1293 != ((((*l_1149) > (**p_1673->g_126)) & (safe_mul_func_uint16_t_u_u(p_1673->g_411.f9, GROUP_DIVERGE(2, 1)))) || (safe_sub_func_int8_t_s_s((safe_sub_func_int16_t_s_s(((*l_1198) = l_1260), l_1263)), (((65531UL ^ (*l_1152)) | l_1293) ^ (*l_1152)))))) , 0x78L)), (*p_1673->g_1178))) >= 0x56F7E118L) ^ (*p_1673->g_1178)) && (*p_1673->g_88)), p_1673->g_362[5][0].f8)));
                    }
                    (*l_1302) = ((*l_1301) = (p_1673->g_1300 , &l_1120));
                    for (p_1673->g_1212.f3.f6 = 0; (p_1673->g_1212.f3.f6 <= 0); p_1673->g_1212.f3.f6 += 1)
                    { /* block id: 649 */
                        if ((**l_1301))
                            break;
                    }
                }
            }
            return p_1673->g_523.f0;
        }
    }
    for (p_1673->g_146.f3.f9 = 0; (p_1673->g_146.f3.f9 <= 3); p_1673->g_146.f3.f9 += 1)
    { /* block id: 659 */
        uint32_t l_1326 = 0x6B1F91B0L;
        int32_t l_1327 = 0x3C8F8398L;
        int32_t l_1334 = 0x63298A6EL;
        int32_t l_1338 = (-3L);
        int32_t l_1349 = 0x6B7AD08DL;
        uint32_t l_1350[7][8][4] = {{{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL}},{{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL}},{{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL}},{{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL}},{{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL}},{{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL}},{{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL},{0xF04492CAL,4294967289UL,0UL,0x3D76F14CL}}};
        uint16_t l_1358 = 6UL;
        uint8_t l_1394 = 255UL;
        int32_t **l_1512 = &p_1673->g_127;
        union U3 **l_1545 = &p_1673->g_1211;
        uint32_t l_1620[2];
        int32_t l_1647 = 0x7EB39733L;
        int32_t l_1649 = 0L;
        int32_t l_1655 = (-5L);
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1620[i] = 0xAE416057L;
        (1 + 1);
    }
    (*p_1673->g_88) = ((((*l_1671) = ((*p_1673->g_1554) = (*p_1673->g_1554))) == (**p_1673->g_709)) ^ (l_1371[0] == &p_1673->g_376));
    return p_1673->g_329.f9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1673->g_473.f9 p_1673->g_88 p_1673->g_1108 p_1673->g_674
 * writes: p_1673->g_473.f9 p_1673->g_1108
 */
int32_t * func_3(uint8_t  p_4, struct S5 * p_1673)
{ /* block id: 6 */
    int32_t **l_112 = &p_1673->g_88;
    int32_t l_1039 = 0x2D6A0657L;
    int32_t l_1040 = 1L;
    int32_t l_1041 = 0x25F84CB7L;
    int32_t l_1042 = (-1L);
    int32_t l_1043 = 0x304A909FL;
    int32_t l_1044 = (-1L);
    int32_t l_1045 = 1L;
    int32_t l_1046[5] = {0x7644C324L,0x7644C324L,0x7644C324L,0x7644C324L,0x7644C324L};
    uint64_t l_1047[4];
    int32_t *l_1091 = &l_1039;
    int32_t *l_1092 = &l_1043;
    int32_t *l_1093 = &p_1673->g_89[2];
    int32_t *l_1094 = &p_1673->g_89[2];
    int32_t *l_1095 = &l_1042;
    int32_t *l_1096 = &l_1046[0];
    int32_t *l_1097 = &l_1042;
    int32_t *l_1098 = (void*)0;
    int32_t *l_1099 = &l_1046[3];
    int32_t *l_1100 = &l_1046[3];
    int32_t *l_1101 = &l_1040;
    int32_t *l_1102 = &p_1673->g_183;
    int32_t *l_1103 = &p_1673->g_708[2][4][3];
    int32_t *l_1104 = &l_1044;
    int32_t *l_1105 = &p_1673->g_708[2][4][3];
    int32_t *l_1106 = &p_1673->g_708[0][0][2];
    int32_t *l_1107[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    for (i = 0; i < 4; i++)
        l_1047[i] = 1UL;
    if ((atomic_inc(&p_1673->l_atomic_input[24]) == 3))
    { /* block id: 8 */
        uint8_t l_6 = 4UL;
        union U3 l_7 = {5L};/* VOLATILE GLOBAL l_7 */
        int8_t l_8[6][3][5] = {{{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L}},{{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L}},{{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L}},{{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L}},{{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L}},{{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L},{6L,0x35L,0L,0x42L,5L}}};
        int16_t l_9 = 4L;
        union U3 *l_10[2];
        union U3 *l_11 = &l_7;
        union U3 *l_12[7] = {(void*)0,&l_7,(void*)0,(void*)0,&l_7,(void*)0,(void*)0};
        int16_t l_13 = (-1L);
        int16_t l_14 = 0L;
        int64_t l_15[9][7][4] = {{{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL}},{{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL}},{{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL}},{{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL}},{{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL}},{{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL}},{{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL}},{{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL}},{{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL},{0L,0L,0x37BBCEC63F78CAFAL,0x37BBCEC63F78CAFAL}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_10[i] = (void*)0;
        l_6 ^= 0x42184E5AL;
        l_12[4] = (l_11 = (l_7 , ((l_9 = l_8[5][2][0]) , l_10[0])));
        l_15[8][5][3] = (l_14 = l_13);
        unsigned int result = 0;
        result += l_6;
        result += l_7.f0;
        result += l_7.f1;
        result += l_7.f2;
        result += l_7.f3.f0;
        result += l_7.f3.f1;
        result += l_7.f3.f2;
        result += l_7.f3.f3;
        result += l_7.f3.f4;
        result += l_7.f3.f5;
        result += l_7.f3.f6;
        result += l_7.f3.f7;
        result += l_7.f3.f8;
        result += l_7.f3.f9;
        result += l_7.f4;
        int l_8_i0, l_8_i1, l_8_i2;
        for (l_8_i0 = 0; l_8_i0 < 6; l_8_i0++) {
            for (l_8_i1 = 0; l_8_i1 < 3; l_8_i1++) {
                for (l_8_i2 = 0; l_8_i2 < 5; l_8_i2++) {
                    result += l_8[l_8_i0][l_8_i1][l_8_i2];
                }
            }
        }
        result += l_9;
        result += l_13;
        result += l_14;
        int l_15_i0, l_15_i1, l_15_i2;
        for (l_15_i0 = 0; l_15_i0 < 9; l_15_i0++) {
            for (l_15_i1 = 0; l_15_i1 < 7; l_15_i1++) {
                for (l_15_i2 = 0; l_15_i2 < 4; l_15_i2++) {
                    result += l_15[l_15_i0][l_15_i1][l_15_i2];
                }
            }
        }
        atomic_add(&p_1673->l_special_values[24], result);
    }
    else
    { /* block id: 15 */
        (1 + 1);
    }
    for (p_4 = (-18); (p_4 > 53); p_4++)
    { /* block id: 20 */
        uint16_t l_94 = 1UL;
        int32_t **l_141 = &p_1673->g_88;
        int32_t l_1033[10] = {0x2F160666L,0x2F160666L,0x2F160666L,0x2F160666L,0x2F160666L,0x2F160666L,0x2F160666L,0x2F160666L,0x2F160666L,0x2F160666L};
        int64_t l_1038 = (-1L);
        int16_t l_1056 = 0x1D3FL;
        int64_t *l_1080[2];
        int64_t **l_1079 = &l_1080[0];
        int64_t ***l_1078 = &l_1079;
        uint32_t l_1082[7] = {0x40D5BF8DL,0x40D5BF8DL,0x40D5BF8DL,0x40D5BF8DL,0x40D5BF8DL,0x40D5BF8DL,0x40D5BF8DL};
        int i;
        for (i = 0; i < 2; i++)
            l_1080[i] = &l_1038;
        if ((atomic_inc(&p_1673->g_atomic_input[76 * get_linear_group_id() + 10]) == 4))
        { /* block id: 22 */
            struct S1 l_18 = {7UL,-2L};/* VOLATILE GLOBAL l_18 */
            uint32_t l_19 = 1UL;
            int32_t *l_72 = (void*)0;
            int32_t l_74 = 0x7F329DDEL;
            int32_t *l_73 = &l_74;
            l_19 &= (l_18 , 0x1515B845L);
            for (l_19 = 0; (l_19 < 10); l_19++)
            { /* block id: 26 */
                int8_t l_22 = 0L;
                int32_t l_25 = (-8L);
                int32_t *l_24 = &l_25;
                int32_t **l_23[4][7] = {{&l_24,&l_24,(void*)0,&l_24,&l_24,&l_24,(void*)0},{&l_24,&l_24,(void*)0,&l_24,&l_24,&l_24,(void*)0},{&l_24,&l_24,(void*)0,&l_24,&l_24,&l_24,(void*)0},{&l_24,&l_24,(void*)0,&l_24,&l_24,&l_24,(void*)0}};
                int32_t **l_26 = &l_24;
                int32_t *l_27 = &l_25;
                int32_t *l_28 = &l_25;
                int i, j;
                l_26 = (l_23[1][0] = (l_22 , (void*)0));
                l_28 = l_27;
                for (l_25 = 0; (l_25 > (-2)); --l_25)
                { /* block id: 32 */
                    int64_t l_31 = 0L;
                    uint64_t l_32 = 0xD1D1CE175E042358L;
                    int32_t l_33 = 0x6E77A780L;
                    uint16_t l_34 = 0xB06EL;
                    int32_t l_35 = 0x466F1EAAL;
                    int16_t l_36 = 0x1240L;
                    int32_t l_37 = (-1L);
                    int8_t l_38 = (-1L);
                    int64_t l_69 = 0x7474991CB9547BAEL;
                    int64_t l_70 = (-8L);
                    uint8_t l_71[10] = {0xFBL,0xFBL,0xFBL,0xFBL,0xFBL,0xFBL,0xFBL,0xFBL,0xFBL,0xFBL};
                    int i;
                    if ((((l_33 &= (l_32 = l_31)) , ((l_36 &= (l_34 , (l_35 ^= 0L))) , (l_37 , 0UL))) , (l_38 |= 0x347BED26L)))
                    { /* block id: 38 */
                        uint64_t l_39 = 0x9D16154EA94EDB4AL;
                        int8_t l_40 = 1L;
                        uint16_t l_41 = 0xA63AL;
                        l_40 &= l_39;
                        l_41--;
                    }
                    else
                    { /* block id: 41 */
                        int16_t l_44[9][7] = {{0x5DDEL,(-1L),0x04CDL,(-1L),0x5DDEL,0x5DDEL,(-1L)},{0x5DDEL,(-1L),0x04CDL,(-1L),0x5DDEL,0x5DDEL,(-1L)},{0x5DDEL,(-1L),0x04CDL,(-1L),0x5DDEL,0x5DDEL,(-1L)},{0x5DDEL,(-1L),0x04CDL,(-1L),0x5DDEL,0x5DDEL,(-1L)},{0x5DDEL,(-1L),0x04CDL,(-1L),0x5DDEL,0x5DDEL,(-1L)},{0x5DDEL,(-1L),0x04CDL,(-1L),0x5DDEL,0x5DDEL,(-1L)},{0x5DDEL,(-1L),0x04CDL,(-1L),0x5DDEL,0x5DDEL,(-1L)},{0x5DDEL,(-1L),0x04CDL,(-1L),0x5DDEL,0x5DDEL,(-1L)},{0x5DDEL,(-1L),0x04CDL,(-1L),0x5DDEL,0x5DDEL,(-1L)}};
                        uint32_t l_45 = 0x8EC64C76L;
                        uint32_t l_46 = 4294967293UL;
                        uint64_t l_47 = 18446744073709551615UL;
                        struct S0 l_48 = {0x7094F54FL,0xF186L,0x67BEB33EL,0xD46470AD0C79EC61L,7L,0xA6L,0x607D3A08L,7L,8L,0L};/* VOLATILE GLOBAL l_48 */
                        struct S0 l_49[1][7][1] = {{{{4294967293UL,0UL,0x742BE7ACL,0x5E1209EFF97477C2L,1L,0x33L,0L,0x56F46CE8L,0x17059363L,3L}},{{4294967293UL,0UL,0x742BE7ACL,0x5E1209EFF97477C2L,1L,0x33L,0L,0x56F46CE8L,0x17059363L,3L}},{{4294967293UL,0UL,0x742BE7ACL,0x5E1209EFF97477C2L,1L,0x33L,0L,0x56F46CE8L,0x17059363L,3L}},{{4294967293UL,0UL,0x742BE7ACL,0x5E1209EFF97477C2L,1L,0x33L,0L,0x56F46CE8L,0x17059363L,3L}},{{4294967293UL,0UL,0x742BE7ACL,0x5E1209EFF97477C2L,1L,0x33L,0L,0x56F46CE8L,0x17059363L,3L}},{{4294967293UL,0UL,0x742BE7ACL,0x5E1209EFF97477C2L,1L,0x33L,0L,0x56F46CE8L,0x17059363L,3L}},{{4294967293UL,0UL,0x742BE7ACL,0x5E1209EFF97477C2L,1L,0x33L,0L,0x56F46CE8L,0x17059363L,3L}}}};
                        int64_t l_50 = 0x2DD8BE8FF3A2FA3DL;
                        uint64_t l_51[4][5] = {{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL}};
                        int32_t *l_52[1][1];
                        int32_t l_54[2][4] = {{1L,1L,1L,1L},{1L,1L,1L,1L}};
                        int32_t *l_53[3][8][6] = {{{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]}},{{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]}},{{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]},{&l_54[0][1],&l_54[0][3],(void*)0,(void*)0,(void*)0,&l_54[0][3]}}};
                        uint32_t l_55 = 0xE0A5EFA7L;
                        int8_t l_56 = 0x39L;
                        uint16_t l_57[8] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                        int32_t l_58 = 0x10243F0BL;
                        uint16_t l_59[8][1];
                        int16_t l_60 = (-1L);
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_52[i][j] = (void*)0;
                        }
                        for (i = 0; i < 8; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_59[i][j] = 1UL;
                        }
                        l_49[0][4][0] = (l_44[6][2] , (l_45 , ((l_31 = (l_46 , l_47)) , l_48)));
                        l_51[0][1] = l_50;
                        l_53[1][6][0] = l_52[0][0];
                        l_60 |= (l_59[6][0] = (l_55 , (((l_56 , 0x11E29349L) , l_57[4]) , (l_58 , 7L))));
                    }
                    for (l_37 = 0; (l_37 <= 3); l_37 += 1)
                    { /* block id: 51 */
                        int32_t l_61 = 0L;
                        uint32_t l_62 = 0x63CD3D85L;
                        int8_t l_63 = (-1L);
                        int16_t l_64 = (-2L);
                        int8_t l_65 = 0x29L;
                        uint64_t l_66 = 0x0A61F905A6425659L;
                        int i, j;
                        l_62 ^= (l_61 , (-1L));
                        l_61 |= l_63;
                        l_66++;
                    }
                    l_70 ^= l_69;
                    l_71[3] ^= 0x3260C6B0L;
                }
            }
            l_73 = l_72;
            unsigned int result = 0;
            result += l_18.f0;
            result += l_18.f1;
            result += l_19;
            result += l_74;
            atomic_add(&p_1673->g_special_values[76 * get_linear_group_id() + 10], result);
        }
        else
        { /* block id: 61 */
            (1 + 1);
        }
    }
    for (p_1673->g_473.f9 = 0; (p_1673->g_473.f9 != 14); p_1673->g_473.f9 = safe_add_func_uint64_t_u_u(p_1673->g_473.f9, 2))
    { /* block id: 585 */
        return (*l_112);
    }
    ++p_1673->g_1108;
    return (*p_1673->g_674);
}


/* ------------------------------------------ */
/* 
 * reads : p_1673->g_126 p_1673->g_127 p_1673->g_238 p_1673->g_89 p_1673->g_88 p_1673->g_145 p_1673->g_146 p_1673->g_362.f0 p_1673->g_231 p_1673->g_183 p_1673->g_453 p_1673->g_709 p_1673->g_710 p_1673->g_411.f0 p_1673->g_362.f8 p_1673->g_473.f9 p_1673->g_172 p_1673->g_181 p_1673->g_171 p_1673->g_189 p_1673->g_135 p_1673->g_5 p_1673->g_181.f0 p_1673->g_226 p_1673->g_227 p_1673->g_233 p_1673->g_347 p_1673->g_327.f0 p_1673->g_362 p_1673->g_366 p_1673->g_413 p_1673->g_411.f2 p_1673->g_473.f1 p_1673->g_411.f3 p_1673->g_342 p_1673->g_803 p_1673->g_327.f9 p_1673->g_289.f1 p_1673->g_708 p_1673->g_411.f9 p_1673->g_860 p_1673->g_329.f2 p_1673->g_454 p_1673->g_411.f5 p_1673->g_458 p_1673->g_898 p_1673->g_411.f1 p_1673->g_902 p_1673->g_903 p_1673->g_912 p_1673->g_460 p_1673->g_678 p_1673->g_674 p_1673->g_525.f0 p_1673->g_946 p_1673->g_309 p_1673->g_1010 p_1673->g_255.f4 p_1673->g_1011 p_1673->g_1013 p_1673->g_1032
 * writes: p_1673->g_88 p_1673->g_473.f1 p_1673->g_454 p_1673->g_135 p_1673->g_89 p_1673->g_146.f3.f7 p_1673->g_172 p_1673->g_183 p_1673->g_146.f2 p_1673->g_226 p_1673->g_227 p_1673->g_231 p_1673->g_234 p_1673->g_146.f3.f0 p_1673->g_5 p_1673->g_347 p_1673->g_255.f3.f5 p_1673->g_146.f3.f6 p_1673->g_252 p_1673->g_362 p_1673->g_413 p_1673->g_411.f3 p_1673->g_171 p_1673->g_708 p_1673->g_473.f3 p_1673->g_832 p_1673->g_411.f5 p_1673->g_255.f4 p_1673->g_146.f3.f5 p_1673->g_255.f3.f1 p_1673->g_473.f7 p_1673->g_473.f9 p_1673->g_1011
 */
struct S0  func_77(uint32_t  p_78, uint8_t  p_79, int32_t  p_80, int32_t ** p_81, int32_t * p_82, struct S5 * p_1673)
{ /* block id: 349 */
    int32_t l_712 = 3L;
    int32_t *l_713 = &p_1673->g_708[2][4][3];
    int16_t l_714 = 0x5E4BL;
    int32_t *l_715 = &p_1673->g_183;
    int32_t *l_716 = &l_712;
    int32_t *l_717 = &p_1673->g_89[2];
    int32_t *l_718 = (void*)0;
    int32_t *l_719 = &p_1673->g_708[2][4][3];
    int32_t *l_720 = &p_1673->g_708[2][3][1];
    int32_t *l_721 = &p_1673->g_708[4][3][3];
    int32_t *l_722 = &p_1673->g_183;
    int32_t *l_723 = &p_1673->g_89[0];
    int32_t *l_724 = (void*)0;
    int32_t *l_725 = &p_1673->g_708[2][4][3];
    int32_t *l_726[7][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t l_727 = 0x87F4L;
    int64_t *l_746 = &p_1673->g_171;
    int64_t **l_745 = &l_746;
    union U4 *l_841 = (void*)0;
    int i, j;
    (*p_81) = (*p_1673->g_126);
    ++l_727;
    if ((((safe_add_func_uint32_t_u_u(p_79, (safe_mod_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(p_1673->g_238, (safe_add_func_int32_t_s_s(((void*)0 == &p_1673->g_376), (*p_82))))), (*p_1673->g_88))))) != (((*p_1673->g_145) , p_1673->g_362[5][0].f0) == (p_1673->g_473.f1 = (((((p_78 <= p_1673->g_231) ^ (*l_722)) == (*l_716)) | 1L) > (*p_1673->g_88))))) , (**p_1673->g_126)))
    { /* block id: 353 */
        int32_t l_744 = 0x6D3FCB08L;
        union U3 *l_747[3][5] = {{(void*)0,&p_1673->g_146,&p_1673->g_255,&p_1673->g_146,(void*)0},{(void*)0,&p_1673->g_146,&p_1673->g_255,&p_1673->g_146,(void*)0},{(void*)0,&p_1673->g_146,&p_1673->g_255,&p_1673->g_146,(void*)0}};
        int i, j;
        (*p_82) = ((+((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(0x48F8L, 14)), (p_1673->g_135[0] = (((p_82 != ((*p_1673->g_453) = p_82)) <= l_744) || ((*p_1673->g_709) != l_745))))) & p_1673->g_411.f0)) ^ p_1673->g_362[5][0].f8);
        (*p_81) = func_151(l_747[0][1], p_1673->g_473.f9, p_1673);
        if ((atomic_inc(&p_1673->l_atomic_input[48]) == 6))
        { /* block id: 359 */
            int64_t l_748 = (-1L);
            uint64_t l_749 = 0UL;
            uint64_t l_750 = 8UL;
            int64_t l_751[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int i;
            l_749 &= l_748;
            l_751[1] = l_750;
            unsigned int result = 0;
            result += l_748;
            result += l_749;
            result += l_750;
            int l_751_i0;
            for (l_751_i0 = 0; l_751_i0 < 6; l_751_i0++) {
                result += l_751[l_751_i0];
            }
            atomic_add(&p_1673->l_special_values[48], result);
        }
        else
        { /* block id: 362 */
            (1 + 1);
        }
    }
    else
    { /* block id: 365 */
        struct S0 **l_796 = &p_1673->g_460;
        int32_t l_829 = 0x0B261E23L;
        uint8_t *l_838[3];
        uint8_t **l_837 = &l_838[0];
        int8_t l_839 = (-2L);
        int16_t l_840[5][9][5] = {{{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L}},{{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L}},{{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L}},{{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L}},{{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L},{0x10D6L,0x3AE1L,0x752AL,0x3AE1L,0x10D6L}}};
        uint64_t l_1005 = 0x47AB46D14B8EB948L;
        int64_t **l_1018 = &l_746;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_838[i] = &p_1673->g_411.f5;
        if ((atomic_inc(&p_1673->l_atomic_input[32]) == 3))
        { /* block id: 367 */
            struct S1 l_753 = {1UL,1L};/* VOLATILE GLOBAL l_753 */
            struct S1 *l_752[1];
            struct S1 *l_754 = &l_753;
            uint32_t l_755 = 0x01F9C17FL;
            int32_t l_756[10][4][6] = {{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}},{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}},{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}},{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}},{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}},{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}},{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}},{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}},{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}},{{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L},{1L,1L,0x0BF3C31BL,0x6BC447BEL,0x14B867F8L,0x63EA51B5L}}};
            uint16_t l_757[5][8];
            int64_t l_758 = 1L;
            uint8_t l_759 = 0x38L;
            int8_t l_760 = (-1L);
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_752[i] = &l_753;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 8; j++)
                    l_757[i][j] = 65535UL;
            }
            l_754 = (l_752[0] = (void*)0);
            l_756[4][2][4] ^= l_755;
            l_759 = (l_758 &= (l_757[3][6] , 0x6190B66CL));
            if (l_760)
            { /* block id: 373 */
                int32_t l_761 = (-1L);
                int8_t l_779 = (-5L);
                uint64_t l_780 = 0x6B462F4713B9FFFCL;
                struct S0 l_783[5] = {{0xE6BFAF9EL,0xB705L,0x65AB36FCL,0x2BA47F1DD4E7C2F4L,0L,0xE2L,0x4031FA16L,0x0F73EC64L,1L,7L},{0xE6BFAF9EL,0xB705L,0x65AB36FCL,0x2BA47F1DD4E7C2F4L,0L,0xE2L,0x4031FA16L,0x0F73EC64L,1L,7L},{0xE6BFAF9EL,0xB705L,0x65AB36FCL,0x2BA47F1DD4E7C2F4L,0L,0xE2L,0x4031FA16L,0x0F73EC64L,1L,7L},{0xE6BFAF9EL,0xB705L,0x65AB36FCL,0x2BA47F1DD4E7C2F4L,0L,0xE2L,0x4031FA16L,0x0F73EC64L,1L,7L},{0xE6BFAF9EL,0xB705L,0x65AB36FCL,0x2BA47F1DD4E7C2F4L,0L,0xE2L,0x4031FA16L,0x0F73EC64L,1L,7L}};
                uint8_t l_784 = 0xA8L;
                int16_t l_785 = 0x1351L;
                int i;
                for (l_761 = 2; (l_761 >= 0); l_761 -= 1)
                { /* block id: 376 */
                    int32_t l_762 = (-6L);
                    int16_t l_773 = 0x366FL;
                    int16_t l_774 = 8L;
                    int32_t l_775 = (-7L);
                    uint8_t l_776 = 0x64L;
                    uint32_t l_777 = 0xE11DA9E5L;
                    for (l_762 = 1; (l_762 <= 4); l_762 += 1)
                    { /* block id: 379 */
                        uint32_t l_763 = 4294967288UL;
                        uint8_t l_764 = 247UL;
                        int16_t l_765 = 0x74ACL;
                        int32_t l_767 = 0x1E18B48FL;
                        int32_t *l_766 = &l_767;
                        int16_t l_768 = (-1L);
                        struct S1 l_769[10][6][4] = {{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}},{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}},{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}},{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}},{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}},{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}},{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}},{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}},{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}},{{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}},{{0UL,-1L},{1UL,0x44L},{0x3E33EC44L,0x1EL},{9UL,1L}}}};
                        uint8_t l_770 = 0x79L;
                        int32_t *l_771 = &l_767;
                        int32_t *l_772 = &l_767;
                        int i, j, k;
                        l_765 &= (l_764 &= l_763);
                        l_766 = (void*)0;
                        l_772 = ((l_768 , l_769[7][4][3]) , (l_770 , l_771));
                    }
                    l_775 = (l_774 = l_773);
                    l_777 = l_776;
                    for (l_776 = 0; (l_776 <= 4); l_776 += 1)
                    { /* block id: 390 */
                        uint8_t l_778[5] = {0x2FL,0x2FL,0x2FL,0x2FL,0x2FL};
                        int i;
                        l_762 = l_778[2];
                    }
                }
                --l_780;
                l_785 = (l_783[0] , l_784);
            }
            else
            { /* block id: 396 */
                uint8_t l_786 = 8UL;
                uint32_t l_787 = 4294967295UL;
                union U4 l_793 = {0x36FCECE6L};/* VOLATILE GLOBAL l_793 */
                struct S0 l_794 = {1UL,0UL,0x5D984C44L,0UL,0x62A6F02BL,0x6EL,1L,0x6D4261FFL,0x10D2D53EL,0x77L};/* VOLATILE GLOBAL l_794 */
                struct S0 l_795 = {0x0404D538L,0x276BL,0x6FBB05F7L,18446744073709551609UL,0L,0x2FL,1L,0x1D27B3EBL,0x1014D996L,-1L};/* VOLATILE GLOBAL l_795 */
                l_787 ^= (l_786 = (GROUP_DIVERGE(2, 1) , 0x3D4F0A64L));
                for (l_787 = 0; (l_787 <= 5); l_787 += 1)
                { /* block id: 401 */
                    int8_t l_788 = 0x52L;
                    uint64_t l_789 = 1UL;
                    l_789 = (l_788 &= 0x667644FFL);
                    for (l_788 = 3; (l_788 >= 0); l_788 -= 1)
                    { /* block id: 406 */
                        uint16_t l_790 = 0x53E1L;
                        int64_t l_791 = 1L;
                        uint64_t l_792[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_792[i] = 0x1A3F7E7C7C7B75FEL;
                        l_792[0] = (l_791 ^= l_790);
                    }
                }
                l_795 = (l_793 , l_794);
            }
            unsigned int result = 0;
            result += l_753.f0;
            result += l_753.f1;
            result += l_755;
            int l_756_i0, l_756_i1, l_756_i2;
            for (l_756_i0 = 0; l_756_i0 < 10; l_756_i0++) {
                for (l_756_i1 = 0; l_756_i1 < 4; l_756_i1++) {
                    for (l_756_i2 = 0; l_756_i2 < 6; l_756_i2++) {
                        result += l_756[l_756_i0][l_756_i1][l_756_i2];
                    }
                }
            }
            int l_757_i0, l_757_i1;
            for (l_757_i0 = 0; l_757_i0 < 5; l_757_i0++) {
                for (l_757_i1 = 0; l_757_i1 < 8; l_757_i1++) {
                    result += l_757[l_757_i0][l_757_i1];
                }
            }
            result += l_758;
            result += l_759;
            result += l_760;
            atomic_add(&p_1673->l_special_values[32], result);
        }
        else
        { /* block id: 413 */
            (1 + 1);
        }
        (*l_715) |= (l_796 != &p_1673->g_460);
        for (p_1673->g_5 = 0; (p_1673->g_5 <= 3); p_1673->g_5 += 1)
        { /* block id: 419 */
            int16_t l_814 = 0x61A1L;
            uint8_t *l_820 = (void*)0;
            uint8_t *l_821[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int8_t *l_828[9][1][7] = {{{&p_1673->g_226,&p_1673->g_226,&p_1673->g_362[5][0].f9,&p_1673->g_226,(void*)0,&p_1673->g_226,&p_1673->g_362[5][0].f9}},{{&p_1673->g_226,&p_1673->g_226,&p_1673->g_362[5][0].f9,&p_1673->g_226,(void*)0,&p_1673->g_226,&p_1673->g_362[5][0].f9}},{{&p_1673->g_226,&p_1673->g_226,&p_1673->g_362[5][0].f9,&p_1673->g_226,(void*)0,&p_1673->g_226,&p_1673->g_362[5][0].f9}},{{&p_1673->g_226,&p_1673->g_226,&p_1673->g_362[5][0].f9,&p_1673->g_226,(void*)0,&p_1673->g_226,&p_1673->g_362[5][0].f9}},{{&p_1673->g_226,&p_1673->g_226,&p_1673->g_362[5][0].f9,&p_1673->g_226,(void*)0,&p_1673->g_226,&p_1673->g_362[5][0].f9}},{{&p_1673->g_226,&p_1673->g_226,&p_1673->g_362[5][0].f9,&p_1673->g_226,(void*)0,&p_1673->g_226,&p_1673->g_362[5][0].f9}},{{&p_1673->g_226,&p_1673->g_226,&p_1673->g_362[5][0].f9,&p_1673->g_226,(void*)0,&p_1673->g_226,&p_1673->g_362[5][0].f9}},{{&p_1673->g_226,&p_1673->g_226,&p_1673->g_362[5][0].f9,&p_1673->g_226,(void*)0,&p_1673->g_226,&p_1673->g_362[5][0].f9}},{{&p_1673->g_226,&p_1673->g_226,&p_1673->g_362[5][0].f9,&p_1673->g_226,(void*)0,&p_1673->g_226,&p_1673->g_362[5][0].f9}}};
            uint64_t *l_830 = (void*)0;
            uint64_t *l_831 = &p_1673->g_473.f3;
            int64_t l_871 = (-2L);
            struct S0 **l_911 = (void*)0;
            int32_t l_987 = 1L;
            int64_t **l_998 = (void*)0;
            uint16_t l_1031[5][2] = {{65533UL,0x9199L},{65533UL,0x9199L},{65533UL,0x9199L},{65533UL,0x9199L},{65533UL,0x9199L}};
            int i, j, k;
            (*l_722) = (safe_rshift_func_uint16_t_u_u((((safe_div_func_int16_t_s_s(((safe_div_func_int8_t_s_s((p_1673->g_803 , ((p_80 >= 0xBCD8489D4EFB6E50L) , (p_1673->g_832 = (safe_sub_func_int16_t_s_s((((safe_mod_func_uint64_t_u_u((p_78 & (safe_mod_func_uint64_t_u_u(((*l_831) = ((+(+(0x7EL >= (safe_lshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s(l_814, (((*p_1673->g_145) , (((safe_div_func_uint32_t_u_u((((safe_mul_func_int16_t_s_s(((safe_unary_minus_func_uint16_t_u((FAKE_DIVERGE(p_1673->local_2_offset, get_local_id(2), 10) && (p_79++)))) ^ ((p_1673->g_231 = ((safe_mod_func_int32_t_s_s((!(safe_add_func_int8_t_s_s(((*l_719) = p_78), p_1673->g_5))), p_80)) < (*l_722))) == l_829)), p_1673->g_327[0][4][0].f9)) < l_814) & 0x7481B68B26C6E0B8L), p_80)) , (*p_82)) > p_78)) & p_1673->g_411.f0))), 8))))) ^ p_1673->g_411.f0)), 0x38D8438DCBD04C36L))), p_78)) , GROUP_DIVERGE(0, 1)) | l_829), p_78))))), p_78)) && l_814), l_829)) >= p_78) | p_1673->g_411.f3), 3));
            (*p_1673->g_88) &= (-3L);
            (*p_82) &= l_829;
            if ((+(*p_82)))
            { /* block id: 428 */
                int8_t l_842 = 0x1FL;
                int32_t l_850[7][9] = {{8L,0x283B2116L,1L,0x283B2116L,8L,8L,0x283B2116L,1L,0x283B2116L},{8L,0x283B2116L,1L,0x283B2116L,8L,8L,0x283B2116L,1L,0x283B2116L},{8L,0x283B2116L,1L,0x283B2116L,8L,8L,0x283B2116L,1L,0x283B2116L},{8L,0x283B2116L,1L,0x283B2116L,8L,8L,0x283B2116L,1L,0x283B2116L},{8L,0x283B2116L,1L,0x283B2116L,8L,8L,0x283B2116L,1L,0x283B2116L},{8L,0x283B2116L,1L,0x283B2116L,8L,8L,0x283B2116L,1L,0x283B2116L},{8L,0x283B2116L,1L,0x283B2116L,8L,8L,0x283B2116L,1L,0x283B2116L}};
                struct S0 **l_910 = &p_1673->g_460;
                uint32_t l_921 = 4294967292UL;
                int i, j;
                if ((safe_add_func_int64_t_s_s(p_78, ((((safe_add_func_int32_t_s_s(((((void*)0 == l_837) , l_839) , (p_1673->g_362[5][0].f1 < p_1673->g_289.f1)), ((&l_838[1] != &l_838[0]) > ((((((((l_840[4][8][4] | p_1673->g_708[2][4][3]) == p_1673->g_411.f9) , l_840[4][8][4]) , p_80) >= p_79) <= (-7L)) , GROUP_DIVERGE(0, 1)) || FAKE_DIVERGE(p_1673->local_2_offset, get_local_id(2), 10))))) , l_841) != (void*)0) & p_80))))
                { /* block id: 429 */
                    uint64_t l_849[8][3] = {{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL}};
                    int32_t l_855 = (-1L);
                    uint64_t *l_901 = &p_1673->g_705[4][8][2];
                    int i, j;
                    if (l_842)
                        break;
                    (*l_723) = l_842;
                    if ((safe_unary_minus_func_int8_t_s(((safe_rshift_func_uint16_t_u_u((p_80 , FAKE_DIVERGE(p_1673->global_1_offset, get_global_id(1), 10)), (safe_unary_minus_func_int8_t_s((safe_mul_func_int8_t_s_s((l_849[4][2] = ((*l_713) = 0x13L)), (((l_850[3][2] &= (249UL >= ((void*)0 == l_796))) & (safe_div_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((~p_80), 7)), FAKE_DIVERGE(p_1673->group_0_offset, get_group_id(0), 10)))) || ((*l_831) = (0x27L > l_855))))))))) & (*p_1673->g_127)))))
                    { /* block id: 436 */
                        int8_t l_899 = 5L;
                        uint16_t *l_900 = &l_727;
                        (*l_720) |= (safe_sub_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u((FAKE_DIVERGE(p_1673->group_1_offset, get_group_id(1), 10) == 0L), 5)) , ((p_1673->g_860 , p_1673->g_329.f2) && ((*l_746) |= (~(safe_lshift_func_uint16_t_u_s(p_78, 4)))))), (((**p_1673->g_453) != (l_855 = (((safe_add_func_int32_t_s_s((p_1673->g_473.f1 | ((void*)0 != l_746)), (((((safe_sub_func_int64_t_s_s((safe_sub_func_int16_t_s_s((((*p_82) <= (*p_1673->g_127)) == l_855), p_79)), p_1673->g_89[2])) , 0x3275965F9A8A946AL) , l_842) >= 0x62L) > 0x6464L))) || 1L) != l_871))) > 0x32F5L)));
                        (**p_81) = (((safe_sub_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(((((*l_831) = (0xEDAAE355L <= ((safe_add_func_int32_t_s_s((((*l_900) |= (safe_div_func_int16_t_s_s((&l_841 == (void*)0), (+(((*l_722) = ((((((*l_716) ^ ((safe_lshift_func_uint16_t_u_s(((4294967291UL && 0x55CC7214L) < p_1673->g_411.f5), 8)) != ((safe_div_func_uint8_t_u_u((safe_mod_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((((((18446744073709551613UL | (((safe_rshift_func_uint8_t_u_u((!(l_899 = (~((((l_855 = (safe_mul_func_uint8_t_u_u((safe_add_func_int32_t_s_s(((safe_add_func_int16_t_s_s(p_80, 0x62C4L)) | p_1673->g_362[5][0].f4), (**p_81))), p_80))) , p_1673->g_458) , p_1673->g_898) , p_80)))), 6)) || l_855) , 0x7D9F8B4EC257D70BL)) < p_79) , p_79) <= p_1673->g_411.f1) == 0x8B6DL), 11)), (*p_82))), GROUP_DIVERGE(1, 1))) && (*l_721)))) < 18446744073709551615UL) && GROUP_DIVERGE(2, 1)) || l_840[3][2][3]) & GROUP_DIVERGE(0, 1))) < 0x16C9A181L))))) >= GROUP_DIVERGE(0, 1)), (*p_1673->g_454))) || 0x6BL))) == 4UL) ^ p_1673->g_362[5][0].f0), 5)), p_80)) && 18446744073709551615UL) , (*p_82));
                        (*l_720) |= (((((*l_717) = (l_901 == (p_1673->g_902[3] , &p_1673->g_705[5][2][1]))) , (FAKE_DIVERGE(p_1673->group_1_offset, get_group_id(1), 10) | l_899)) , p_1673->g_903) , 0x23D23E3BL);
                        if ((**p_1673->g_126))
                            break;
                    }
                    else
                    { /* block id: 449 */
                        int16_t *l_906 = (void*)0;
                        int16_t *l_907 = &l_840[1][1][4];
                        (*l_723) ^= ((((*l_907) = p_80) , ((safe_rshift_func_int8_t_s_u((l_910 != (l_911 = &p_1673->g_460)), 7)) < ((void*)0 == p_1673->g_912[0]))) == ((void*)0 == (*p_81)));
                        return (**l_796);
                    }
                }
                else
                { /* block id: 455 */
                    union U4 *l_913[6][9] = {{&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_531,(void*)0,&p_1673->g_522},{&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_531,(void*)0,&p_1673->g_522},{&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_531,(void*)0,&p_1673->g_522},{&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_531,(void*)0,&p_1673->g_522},{&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_531,(void*)0,&p_1673->g_522},{&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_522,(void*)0,&p_1673->g_531,&p_1673->g_531,(void*)0,&p_1673->g_522}};
                    int32_t l_920 = 0x223EEA3EL;
                    int i, j;
                    l_913[2][5] = (void*)0;
                    (*l_723) |= (p_79 , (safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((*l_713) == 0x37L), (((void*)0 != &l_842) == (((safe_add_func_uint32_t_u_u(l_842, ((l_920 && (p_80 == (p_80 < FAKE_DIVERGE(p_1673->group_2_offset, get_group_id(2), 10)))) | l_850[3][2]))) && p_1673->g_678[5][5][4]) != l_921)))), 0x2F99L)));
                    if (l_920)
                        break;
                    if ((**p_1673->g_674))
                        break;
                }
                return (*p_1673->g_366);
            }
            else
            { /* block id: 462 */
                uint16_t l_942 = 0xC471L;
                int16_t *l_943 = &l_714;
                struct S1 *l_953 = &p_1673->g_377[7][3][0];
                int64_t ***l_960 = &l_745;
                if (((safe_sub_func_uint16_t_u_u((((*l_943) = (safe_lshift_func_int16_t_s_s((p_1673->g_525[3].f0 <= ((((safe_mul_func_uint16_t_u_u((!(((safe_add_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((p_1673->g_362[5][0].f9 ^= (0x5561L | (p_1673->g_362[5][0].f7 & p_79))), (&p_79 == ((safe_sub_func_int32_t_s_s((l_911 == l_911), (safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_u((FAKE_DIVERGE(p_1673->local_2_offset, get_local_id(2), 10) ^ (safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1673->global_1_offset, get_global_id(1), 10), 8))), ((safe_div_func_uint32_t_u_u(((p_1673->g_411.f5 &= 0xFAL) == p_80), 0x03380788L)) >= (*p_1673->g_88)))), (*p_82))))) , &p_79)))), p_79)) || 0x79L) | FAKE_DIVERGE(p_1673->group_2_offset, get_group_id(2), 10))), p_80)) >= l_942) < p_79) && (*l_713))), p_78))) == 1UL), 0x325AL)) ^ p_80))
                { /* block id: 466 */
                    int32_t l_963[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_963[i] = 0x3295FE53L;
                    for (p_1673->g_255.f4 = 0; (p_1673->g_255.f4 <= 3); p_1673->g_255.f4 += 1)
                    { /* block id: 469 */
                        (*l_716) = (safe_div_func_uint32_t_u_u(l_839, p_78));
                        (*p_1673->g_460) = p_1673->g_946;
                    }
                    (**p_81) = (safe_sub_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((((void*)0 != l_953) & ((p_1673->g_411.f2 == ((*p_82) || (safe_rshift_func_int8_t_s_u(0x54L, (p_1673->g_146.f3.f5 = (safe_mul_func_uint8_t_u_u(l_942, ((safe_sub_func_uint8_t_u_u(((void*)0 == l_960), (safe_rshift_func_uint8_t_u_u(0x46L, 7)))) == l_942)))))))) || (**p_81))), 1)), 0L)) , l_963[0]), 65528UL));
                    if ((*p_82))
                        break;
                    if ((*p_1673->g_127))
                        continue;
                }
                else
                { /* block id: 477 */
                    uint32_t **l_984 = (void*)0;
                    int32_t l_985 = 5L;
                    uint16_t *l_986 = &p_1673->g_255.f3.f1;
                    l_987 &= ((*l_719) = ((safe_rshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(l_942, (-6L))), 7)) | (!(((safe_add_func_int32_t_s_s((safe_mod_func_int32_t_s_s(((*l_713) || (safe_div_func_int32_t_s_s(((safe_sub_func_int64_t_s_s(((((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((*l_986) = (((((*l_715) != p_78) ^ (safe_add_func_uint64_t_u_u(p_1673->g_231, ((((safe_sub_func_uint32_t_u_u((safe_div_func_int8_t_s_s(p_78, (((void*)0 != l_984) & 65531UL))), (*p_1673->g_454))) || l_985) , 0L) >= p_80)))) == p_1673->g_946.f3) , 65528UL)))) == 18446744073709551611UL) < 0xB940L) | (**p_81)), p_78)) & p_80), p_78))), 4294967292UL)), 7L)) ^ 0x3FDAA6DC4EB16DF0L) >= 2UL))));
                    (*p_81) = (*p_1673->g_126);
                    if ((**p_1673->g_126))
                        break;
                    for (p_1673->g_473.f7 = 0; (p_1673->g_473.f7 >= 0); p_1673->g_473.f7 -= 1)
                    { /* block id: 485 */
                        int32_t l_1001 = 0L;
                        int i, j;
                        (*l_721) = (safe_div_func_uint32_t_u_u((**p_1673->g_453), (((safe_rshift_func_int16_t_s_u(p_80, 2)) < (p_1673->g_473.f9 = 0x46L)) || l_985)));
                        (*l_722) = ((safe_mod_func_uint64_t_u_u((p_80 || ((safe_div_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s((l_942 <= 0x2EL), 0)), 0x26AE5B58L)) <= ((((*l_960) = (*l_960)) == l_998) > p_79))), ((safe_div_func_uint16_t_u_u(p_78, ((*l_986) = 0xE10CL))) , p_79))) , l_1001);
                    }
                }
            }
            for (p_1673->g_413 = 0; (p_1673->g_413 >= 0); p_1673->g_413 -= 1)
            { /* block id: 496 */
                uint16_t l_1002 = 1UL;
                for (p_1673->g_473.f7 = 0; (p_1673->g_473.f7 <= 0); p_1673->g_473.f7 += 1)
                { /* block id: 499 */
                    for (l_829 = 7; (l_829 >= 0); l_829 -= 1)
                    { /* block id: 502 */
                        int i, j, k;
                        (*l_716) ^= p_1673->g_309[(p_1673->g_413 + 1)][p_1673->g_413][(p_1673->g_413 + 3)];
                    }
                }
                for (p_1673->g_473.f1 = 0; (p_1673->g_473.f1 <= 0); p_1673->g_473.f1 += 1)
                { /* block id: 508 */
                    int i, j, k;
                    if (p_1673->g_309[p_1673->g_473.f1][p_1673->g_473.f1][(p_1673->g_413 + 2)])
                    { /* block id: 509 */
                        int i, j, k;
                        (*l_723) = p_1673->g_309[(p_1673->g_473.f1 + 1)][p_1673->g_413][p_1673->g_5];
                        --l_1002;
                    }
                    else
                    { /* block id: 512 */
                        --l_1005;
                        if ((*p_1673->g_127))
                            break;
                        (*p_81) = &l_829;
                    }
                }
                for (l_1005 = 0; (l_1005 == 12); l_1005 = safe_add_func_uint64_t_u_u(l_1005, 9))
                { /* block id: 520 */
                    (*p_1673->g_460) = p_1673->g_1010[6];
                    for (p_1673->g_255.f4 = 0; (p_1673->g_255.f4 <= 2); p_1673->g_255.f4 += 1)
                    { /* block id: 524 */
                        volatile struct S1 *l_1012 = (void*)0;
                        (*p_1673->g_1013) = p_1673->g_1011[0][5];
                        if ((**p_81))
                            continue;
                    }
                }
                (*l_719) = (safe_sub_func_uint32_t_u_u((((**p_1673->g_674) ^ (((+(l_1031[1][1] |= ((safe_add_func_uint32_t_u_u((*p_1673->g_454), (~(l_1018 != ((safe_rshift_func_uint8_t_u_s(((p_80 ^ ((*l_746) = (p_1673->g_5 >= ((((safe_add_func_int32_t_s_s((safe_div_func_uint8_t_u_u(((safe_div_func_int64_t_s_s(p_80, 0x967EB8B111EEC311L)) , ((p_1673->g_362[5][0].f5 = FAKE_DIVERGE(p_1673->group_1_offset, get_group_id(1), 10)) | (safe_sub_func_int8_t_s_s((~((safe_mul_func_uint8_t_u_u((p_82 != p_82), p_1673->g_473.f9)) , p_79)), p_1673->g_362[5][0].f1)))), 0x3EL)), (*p_1673->g_454))) >= 0xBBL) , 0x7F00L) != 0x104AL)))) <= 0x433D999AL), p_78)) , p_1673->g_710))))) > p_80))) & l_1002) | p_1673->g_708[7][2][4])) != (*l_716)), 0x42C99137L));
            }
        }
    }
    return p_1673->g_1032;
}


/* ------------------------------------------ */
/* 
 * reads : p_1673->g_89 p_1673->g_135 p_1673->g_5 p_1673->g_126 p_1673->g_127 p_1673->g_146.f3.f7 p_1673->g_172 p_1673->g_181 p_1673->g_171 p_1673->g_189 p_1673->g_181.f0 p_1673->g_183 p_1673->g_226 p_1673->g_227 p_1673->g_88 p_1673->g_231 p_1673->g_233 p_1673->g_146.f3.f0 p_1673->g_347 p_1673->g_255.f3.f5 p_1673->g_327.f0 p_1673->g_362 p_1673->g_366 p_1673->g_413 p_1673->g_411.f2 p_1673->g_473.f1 p_1673->g_411.f3 p_1673->g_342 p_1673->g_453 p_1673->g_454 p_1673->g_411.f7 p_1673->g_238 p_1673->g_521.f0 p_1673->g_473.f3 p_1673->g_411.f0 p_1673->g_646 p_1673->g_678 p_1673->g_683 p_1673->g_411.f6 p_1673->g_327.f6 p_1673->g_473.f6 p_1673->g_708 p_1673->g_709 p_1673->g_473.f9
 * writes: p_1673->g_5 p_1673->g_88 p_1673->g_146.f3.f7 p_1673->g_172 p_1673->g_183 p_1673->g_146.f2 p_1673->g_226 p_1673->g_227 p_1673->g_231 p_1673->g_234 p_1673->g_146.f3.f0 p_1673->g_347 p_1673->g_255.f3.f5 p_1673->g_146.f3.f6 p_1673->g_252 p_1673->g_362 p_1673->g_413 p_1673->g_411.f3 p_1673->g_171 p_1673->g_411.f9 p_1673->g_255.f3.f1 p_1673->g_473.f3 p_1673->g_475 p_1673->g_678 p_1673->g_705 p_1673->g_708
 */
uint32_t  func_83(int32_t * p_84, uint32_t  p_85, int32_t * p_86, union U3 * p_87, struct S5 * p_1673)
{ /* block id: 101 */
    union U3 *l_154 = (void*)0;
    int32_t l_161 = 0x6EBF352BL;
    int32_t **l_162 = &p_1673->g_88;
    uint16_t l_615 = 4UL;
    int32_t *l_707 = &p_1673->g_708[2][4][3];
    (*l_707) |= func_95(p_1673->g_89[0], (func_147(p_1673->g_135[2], func_151(l_154, (safe_mul_func_uint16_t_u_u((func_95((safe_mod_func_uint16_t_u_u((safe_mod_func_int16_t_s_s(((1L >= ((void*)0 != l_154)) == GROUP_DIVERGE(2, 1)), l_161)), (l_161 | (~0x13429087L)))), p_85, l_162, p_85, p_1673->g_89[2], p_1673) < p_85), 0x4454L)), p_1673), l_615, p_1673) & p_1673->g_89[0]), &p_1673->g_127, p_1673->g_473.f6, p_1673->g_89[0], p_1673);
    (*l_707) &= ((p_1673->g_709 != (void*)0) || p_85);
    (*l_162) = p_84;
    return p_1673->g_473.f9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1673->g_5
 * writes: p_1673->g_5
 */
int16_t  func_95(int16_t  p_96, int8_t  p_97, int32_t ** p_98, int32_t  p_99, uint32_t  p_100, struct S5 * p_1673)
{ /* block id: 94 */
    uint8_t l_144 = 250UL;
    for (p_1673->g_5 = 26; (p_1673->g_5 > 19); p_1673->g_5 = safe_sub_func_int8_t_s_s(p_1673->g_5, 7))
    { /* block id: 97 */
        return l_144;
    }
    return p_97;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_105(uint64_t  p_106, int32_t ** p_107, int32_t ** p_108, struct S5 * p_1673)
{ /* block id: 90 */
    int32_t l_128 = 1L;
    int32_t *l_129 = &p_1673->g_89[2];
    int32_t *l_130[8][9][3] = {{{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]}},{{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]}},{{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]}},{{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]}},{{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]}},{{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]}},{{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]}},{{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]},{(void*)0,&p_1673->g_89[2],&p_1673->g_89[1]}}};
    uint64_t l_131 = 18446744073709551615UL;
    int16_t l_134 = 0x77E9L;
    int16_t l_136 = (-1L);
    int8_t l_137[7][8][4] = {{{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L}},{{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L}},{{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L}},{{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L}},{{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L}},{{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L}},{{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L},{0x5CL,0x57L,0x1CL,0L}}};
    uint32_t l_138 = 7UL;
    int i, j, k;
    l_131--;
    l_138--;
    return p_106;
}


/* ------------------------------------------ */
/* 
 * reads : p_1673->g_88 p_1673->g_89 p_1673->g_5 p_1673->g_126
 * writes: p_1673->g_5 p_1673->g_127
 */
int32_t ** func_109(int32_t ** p_110, int32_t  p_111, struct S5 * p_1673)
{ /* block id: 64 */
    for (p_111 = 0; (p_111 != 16); p_111 = safe_add_func_uint8_t_u_u(p_111, 1))
    { /* block id: 67 */
        if ((atomic_inc(&p_1673->g_atomic_input[76 * get_linear_group_id() + 9]) == 5))
        { /* block id: 69 */
            int32_t l_116 = (-1L);
            int32_t *l_115 = &l_116;
            int8_t l_117 = 0x07L;
            uint8_t l_118 = 0x01L;
            int64_t l_123 = 0L;
            int64_t l_124 = 0x4205C74453018A90L;
            int8_t l_125 = 0x21L;
            l_115 = (GROUP_DIVERGE(0, 1) , (void*)0);
            l_118 ^= l_117;
            for (l_118 = 29; (l_118 != 24); l_118 = safe_sub_func_uint8_t_u_u(l_118, 1))
            { /* block id: 74 */
                int32_t l_121 = (-1L);
                int32_t *l_122 = &l_121;
                l_115 = (l_121 , l_122);
            }
            l_125 ^= (l_124 = l_123);
            unsigned int result = 0;
            result += l_116;
            result += l_117;
            result += l_118;
            result += l_123;
            result += l_124;
            result += l_125;
            atomic_add(&p_1673->g_special_values[76 * get_linear_group_id() + 9], result);
        }
        else
        { /* block id: 79 */
            (1 + 1);
        }
        if ((*p_1673->g_88))
            continue;
        for (p_1673->g_5 = 0; (p_1673->g_5 <= 3); p_1673->g_5 += 1)
        { /* block id: 85 */
            int i;
            (*p_1673->g_126) = &p_1673->g_89[p_1673->g_5];
        }
    }
    return p_110;
}


/* ------------------------------------------ */
/* 
 * reads : p_1673->g_126 p_1673->g_127 p_1673->g_89 p_1673->g_183 p_1673->g_453 p_1673->g_454 p_1673->g_411.f7 p_1673->g_238 p_1673->g_521.f0 p_1673->g_473.f3 p_1673->g_411.f0 p_1673->g_646 p_1673->g_678 p_1673->g_683 p_1673->g_189.f0 p_1673->g_411.f6 p_1673->g_172 p_1673->g_181 p_1673->g_171 p_1673->g_189 p_1673->g_135 p_1673->g_5 p_1673->g_181.f0 p_1673->g_226 p_1673->g_227 p_1673->g_88 p_1673->g_231 p_1673->g_233 p_1673->g_347 p_1673->g_327.f0 p_1673->g_362 p_1673->g_366 p_1673->g_413 p_1673->g_411.f2 p_1673->g_473.f1 p_1673->g_411.f3 p_1673->g_342 p_1673->g_327.f6
 * writes: p_1673->g_411.f9 p_1673->g_255.f3.f1 p_1673->g_473.f3 p_1673->g_183 p_1673->g_475 p_1673->g_678 p_1673->g_413 p_1673->g_705 p_1673->g_88 p_1673->g_146.f3.f7 p_1673->g_172 p_1673->g_146.f2 p_1673->g_226 p_1673->g_227 p_1673->g_231 p_1673->g_234 p_1673->g_146.f3.f0 p_1673->g_5 p_1673->g_347 p_1673->g_255.f3.f5 p_1673->g_146.f3.f6 p_1673->g_252 p_1673->g_362 p_1673->g_411.f3 p_1673->g_171
 */
int64_t  func_147(uint16_t  p_148, int32_t * p_149, uint64_t  p_150, struct S5 * p_1673)
{ /* block id: 297 */
    int32_t l_626 = 0x7FDB074BL;
    uint8_t *l_639[10][5] = {{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5},{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5},{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5},{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5},{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5},{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5},{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5},{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5},{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5},{&p_1673->g_411.f5,&p_1673->g_146.f3.f5,&p_1673->g_146.f3.f5,&p_1673->g_411.f5,&p_1673->g_411.f5}};
    int32_t l_640 = 0x3F975485L;
    int8_t *l_641 = &p_1673->g_411.f9;
    uint16_t *l_642 = &p_1673->g_255.f3.f1;
    uint8_t l_643 = 253UL;
    uint64_t *l_644 = &p_1673->g_146.f3.f3;
    uint64_t *l_645 = &p_1673->g_473.f3;
    int32_t l_650 = 1L;
    int32_t l_651 = 0x35A15F2DL;
    int32_t l_652 = 1L;
    int32_t l_653 = 0x7E2FF5B7L;
    int32_t l_654 = 9L;
    int32_t l_676 = 0x0A021A1BL;
    int32_t l_677[10] = {0L,0x05E9E622L,0L,0L,0x05E9E622L,0L,0L,0x05E9E622L,0L,0L};
    int32_t *l_689 = (void*)0;
    int32_t *l_690[7] = {&l_652,&l_652,&l_652,&l_652,&l_652,&l_652,&l_652};
    uint32_t l_691[7][10] = {{0x38B126C2L,0x1D380101L,9UL,4294967294UL,0UL,0xADC54A30L,0x38B126C2L,1UL,2UL,2UL},{0x38B126C2L,0x1D380101L,9UL,4294967294UL,0UL,0xADC54A30L,0x38B126C2L,1UL,2UL,2UL},{0x38B126C2L,0x1D380101L,9UL,4294967294UL,0UL,0xADC54A30L,0x38B126C2L,1UL,2UL,2UL},{0x38B126C2L,0x1D380101L,9UL,4294967294UL,0UL,0xADC54A30L,0x38B126C2L,1UL,2UL,2UL},{0x38B126C2L,0x1D380101L,9UL,4294967294UL,0UL,0xADC54A30L,0x38B126C2L,1UL,2UL,2UL},{0x38B126C2L,0x1D380101L,9UL,4294967294UL,0UL,0xADC54A30L,0x38B126C2L,1UL,2UL,2UL},{0x38B126C2L,0x1D380101L,9UL,4294967294UL,0UL,0xADC54A30L,0x38B126C2L,1UL,2UL,2UL}};
    int16_t *l_703[2][1][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint64_t *l_704 = &p_1673->g_705[7][2][2];
    int32_t **l_706 = &p_1673->g_475[2];
    int i, j, k;
    if ((safe_add_func_int16_t_s_s((((safe_sub_func_uint64_t_u_u(((*l_645) ^= (((safe_rshift_func_int8_t_s_s((safe_sub_func_uint8_t_u_u((((safe_add_func_uint16_t_u_u(l_626, (((safe_add_func_int16_t_s_s(((safe_div_func_uint32_t_u_u(((l_626 ^ (safe_mod_func_int16_t_s_s((safe_mul_func_int8_t_s_s((l_626 && ((*l_642) = (((*l_641) = ((safe_lshift_func_uint16_t_u_u(0UL, ((l_626 , 0x0BL) && (safe_mod_func_uint8_t_u_u((l_640 |= ((((**p_1673->g_126) | (*p_149)) & (((254UL <= l_626) , (*p_1673->g_453)) == p_149)) < l_626)), 0xC6L))))) >= 0x15L)) ^ l_626))), p_148)), l_626))) != p_1673->g_411.f7), (*p_1673->g_454))) != l_643), l_626)) , l_640) && p_1673->g_521.f0))) != l_626) , l_643), l_626)), p_150)) <= 4L) <= l_643)), p_1673->g_411.f0)) && l_640) == 0x2812L), l_626)))
    { /* block id: 302 */
        int32_t *l_647 = &p_1673->g_183;
        int32_t *l_648 = &p_1673->g_183;
        int32_t *l_649[5][7] = {{&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183},{&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183},{&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183},{&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183},{&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183,&p_1673->g_183}};
        uint32_t l_655 = 3UL;
        int64_t *l_669 = &p_1673->g_171;
        int i, j;
        (*l_647) = (p_1673->g_646 , l_626);
        ++l_655;
        for (p_1673->g_473.f3 = (-15); (p_1673->g_473.f3 > 21); p_1673->g_473.f3 = safe_add_func_int8_t_s_s(p_1673->g_473.f3, 1))
        { /* block id: 307 */
            int64_t *l_665 = &p_1673->g_231;
            int16_t *l_667 = (void*)0;
            int16_t *l_668 = &p_1673->g_135[8];
            int64_t **l_670 = &l_669;
            int32_t l_671[8][3][8] = {{{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)}},{{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)}},{{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)}},{{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)}},{{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)}},{{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)}},{{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)}},{{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)},{0x466D1962L,0x4F0C68D4L,0x4F0C68D4L,0x466D1962L,(-1L),0x18BF93ADL,0x4A408412L,(-5L)}}};
            int i, j, k;
            if (((*p_149) && 1L))
            { /* block id: 308 */
                return p_150;
            }
            else
            { /* block id: 310 */
                int32_t **l_660 = &p_1673->g_475[1];
                p_149 = ((*l_660) = (*p_1673->g_126));
            }
        }
        p_1673->g_678[5][5][4]--;
    }
    else
    { /* block id: 328 */
        uint32_t l_684 = 3UL;
        uint8_t **l_687 = &l_639[5][1];
        int32_t *l_688 = &l_653;
        (*l_688) |= (safe_mul_func_uint16_t_u_u((p_1673->g_683 , (&p_1673->g_311 != ((l_684 && (safe_add_func_uint32_t_u_u(l_684, 0UL))) , ((*l_687) = (p_150 , &l_643))))), 1L));
    }
    l_691[6][2]++;
    if ((atomic_inc(&p_1673->l_atomic_input[4]) == 6))
    { /* block id: 334 */
        struct S0 l_694 = {4294967295UL,0xFB81L,0L,18446744073709551615UL,-2L,0x06L,8L,0x1890D595L,0x0CFEE6FCL,-1L};/* VOLATILE GLOBAL l_694 */
        struct S0 l_695 = {0xE66D7AA1L,65526UL,0x7DA4C657L,0x25BC0A50AA222B34L,0x76C7709EL,3UL,-1L,0x6A20305BL,0x0FCC742BL,-1L};/* VOLATILE GLOBAL l_695 */
        l_695 = l_694;
        unsigned int result = 0;
        result += l_694.f0;
        result += l_694.f1;
        result += l_694.f2;
        result += l_694.f3;
        result += l_694.f4;
        result += l_694.f5;
        result += l_694.f6;
        result += l_694.f7;
        result += l_694.f8;
        result += l_694.f9;
        result += l_695.f0;
        result += l_695.f1;
        result += l_695.f2;
        result += l_695.f3;
        result += l_695.f4;
        result += l_695.f5;
        result += l_695.f6;
        result += l_695.f7;
        result += l_695.f8;
        result += l_695.f9;
        atomic_add(&p_1673->l_special_values[4], result);
    }
    else
    { /* block id: 336 */
        (1 + 1);
    }
    (*l_706) = func_151(&p_1673->g_146, ((*l_704) = (((p_150 ^ (p_150 ^ ((p_1673->g_413 = (p_148 && (safe_mod_func_uint32_t_u_u(((p_148 & 0x3AB1C8CFC40C57FDL) <= ((safe_unary_minus_func_int64_t_s(p_1673->g_189.f0)) < (safe_div_func_uint16_t_u_u((p_1673->g_411.f6 < (((*l_645) |= (safe_mod_func_uint16_t_u_u(((*l_642) = p_150), 0xAEA0L))) ^ 1UL)), p_150)))), 0x4215D3A3L)))) >= FAKE_DIVERGE(p_1673->group_2_offset, get_group_id(2), 10)))) && (**p_1673->g_453)) , p_150)), p_1673);
    return p_1673->g_327[0][4][0].f6;
}


/* ------------------------------------------ */
/* 
 * reads : p_1673->g_126 p_1673->g_127 p_1673->g_146.f3.f7 p_1673->g_172 p_1673->g_181 p_1673->g_89 p_1673->g_171 p_1673->g_189 p_1673->g_135 p_1673->g_5 p_1673->g_181.f0 p_1673->g_183 p_1673->g_226 p_1673->g_227 p_1673->g_88 p_1673->g_231 p_1673->g_233 p_1673->g_146.f3.f0 p_1673->g_347 p_1673->g_255.f3.f5 p_1673->g_327.f0 p_1673->g_362 p_1673->g_366 p_1673->g_413 p_1673->g_411.f2 p_1673->g_473.f1 p_1673->g_411.f3 p_1673->g_342
 * writes: p_1673->g_88 p_1673->g_146.f3.f7 p_1673->g_172 p_1673->g_183 p_1673->g_146.f2 p_1673->g_226 p_1673->g_227 p_1673->g_231 p_1673->g_234 p_1673->g_146.f3.f0 p_1673->g_5 p_1673->g_347 p_1673->g_255.f3.f5 p_1673->g_146.f3.f6 p_1673->g_252 p_1673->g_362 p_1673->g_413 p_1673->g_411.f3 p_1673->g_171
 */
int32_t * func_151(union U3 * p_152, uint64_t  p_153, struct S5 * p_1673)
{ /* block id: 102 */
    int32_t **l_165 = &p_1673->g_88;
    int32_t l_235[10][6][4] = {{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}},{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}},{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}},{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}},{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}},{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}},{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}},{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}},{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}},{{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L},{0x1346606DL,0x4EE67B7AL,(-9L),0x2042DA64L}}};
    int32_t *l_246 = &p_1673->g_183;
    int64_t *l_284 = &p_1673->g_171;
    int32_t *l_346[10] = {(void*)0,&p_1673->g_89[1],(void*)0,(void*)0,&p_1673->g_89[1],(void*)0,(void*)0,&p_1673->g_89[1],(void*)0,(void*)0};
    uint32_t *l_452 = &p_1673->g_238;
    uint32_t **l_451 = &l_452;
    union U4 *l_516[2][7][8] = {{{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522}},{{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522},{&p_1673->g_521,&p_1673->g_526,&p_1673->g_522,&p_1673->g_526,&p_1673->g_521,&p_1673->g_521,&p_1673->g_526,&p_1673->g_522}}};
    uint32_t l_574 = 0xBDC6B93EL;
    int i, j, k;
    (*p_1673->g_233) = func_163(((*l_165) = (*p_1673->g_126)), p_1673);
    for (p_1673->g_146.f3.f0 = 0; (p_1673->g_146.f3.f0 <= 3); p_1673->g_146.f3.f0 += 1)
    { /* block id: 123 */
        int32_t l_239 = 0x0BD98901L;
        int32_t *l_240 = &p_1673->g_183;
        int32_t l_251 = 0x357360E7L;
        int64_t *l_286[7][4][2] = {{{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171}},{{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171}},{{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171}},{{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171}},{{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171}},{{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171}},{{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171},{&p_1673->g_231,&p_1673->g_171}}};
        int32_t l_303[9] = {1L,0x31A48CC4L,1L,1L,0x31A48CC4L,1L,1L,0x31A48CC4L,1L};
        int8_t l_343 = 0x2AL;
        int8_t l_345 = 0x7EL;
        int i, j, k;
        for (p_1673->g_231 = 0; (p_1673->g_231 <= 3); p_1673->g_231 += 1)
        { /* block id: 126 */
            uint32_t *l_237 = &p_1673->g_238;
            uint32_t **l_236 = &l_237;
            l_239 |= (4294967287UL && (((*l_236) = p_1673->g_88) == &p_1673->g_238));
            return (*l_165);
        }
        (*l_240) &= p_153;
        for (p_1673->g_5 = 0; (p_1673->g_5 <= 3); p_1673->g_5 += 1)
        { /* block id: 134 */
            int32_t *l_245 = &l_239;
            union U4 *l_256 = &p_1673->g_181;
            int64_t *l_285 = (void*)0;
            int32_t l_287 = (-1L);
            int32_t l_331[9][3] = {{0x1D5E637FL,0x1D5E637FL,0x1D5E637FL},{0x1D5E637FL,0x1D5E637FL,0x1D5E637FL},{0x1D5E637FL,0x1D5E637FL,0x1D5E637FL},{0x1D5E637FL,0x1D5E637FL,0x1D5E637FL},{0x1D5E637FL,0x1D5E637FL,0x1D5E637FL},{0x1D5E637FL,0x1D5E637FL,0x1D5E637FL},{0x1D5E637FL,0x1D5E637FL,0x1D5E637FL},{0x1D5E637FL,0x1D5E637FL,0x1D5E637FL},{0x1D5E637FL,0x1D5E637FL,0x1D5E637FL}};
            int i, j;
            (1 + 1);
        }
    }
    ++p_1673->g_347;
    for (p_1673->g_255.f3.f5 = (-30); (p_1673->g_255.f3.f5 < 53); p_1673->g_255.f3.f5 = safe_add_func_uint8_t_u_u(p_1673->g_255.f3.f5, 5))
    { /* block id: 185 */
        int32_t *l_367 = &p_1673->g_89[2];
        int32_t l_426 = 0x02C3EEBAL;
        struct S0 *l_472 = &p_1673->g_473;
        union U4 *l_539 = &p_1673->g_540[1];
        int8_t l_566 = 0x0EL;
        int32_t l_567[5];
        uint16_t *l_600[10][8][3] = {{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}},{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}},{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}},{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}},{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}},{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}},{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}},{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}},{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}},{{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0},{(void*)0,&p_1673->g_260,(void*)0}}};
        int16_t *l_601[8];
        uint64_t *l_606 = &p_1673->g_411.f3;
        uint64_t *l_607[3];
        uint16_t l_608 = 0xA10EL;
        int32_t l_609 = (-1L);
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_567[i] = 0x3B6A3795L;
        for (i = 0; i < 8; i++)
            l_601[i] = &p_1673->g_413;
        for (i = 0; i < 3; i++)
            l_607[i] = &p_1673->g_473.f3;
        for (p_1673->g_146.f3.f6 = 0; (p_1673->g_146.f3.f6 != 4); p_1673->g_146.f3.f6 = safe_add_func_uint64_t_u_u(p_1673->g_146.f3.f6, 5))
        { /* block id: 188 */
            uint16_t *l_358 = (void*)0;
            uint16_t *l_359 = &p_1673->g_252;
            int32_t **l_371 = &l_346[2];
            int32_t l_424 = 0L;
            int64_t **l_533 = &l_284;
            int32_t l_541 = 0x6B74E64BL;
            int32_t l_561 = 0x2CB13D78L;
            int32_t l_570[9][2][1] = {{{1L},{1L}},{{1L},{1L}},{{1L},{1L}},{{1L},{1L}},{{1L},{1L}},{{1L},{1L}},{{1L},{1L}},{{1L},{1L}},{{1L},{1L}}};
            int i, j, k;
            if (((safe_div_func_int32_t_s_s(p_153, (safe_mod_func_int8_t_s_s((0x1DCDL > ((*l_359) = p_153)), (safe_mul_func_int8_t_s_s(((void*)0 == &l_246), ((p_1673->g_327[0][4][0].f0 & p_1673->g_183) | 0x57L))))))) == ((p_153 == (-6L)) , GROUP_DIVERGE(2, 1))))
            { /* block id: 190 */
                (*p_1673->g_366) = p_1673->g_362[5][0];
            }
            else
            { /* block id: 192 */
                (*l_165) = l_367;
            }
            if (p_153)
                break;
            for (p_1673->g_5 = 2; (p_1673->g_5 <= 9); p_1673->g_5 += 1)
            { /* block id: 198 */
                uint32_t l_372 = 0x93BBC55EL;
                union U4 **l_442 = (void*)0;
                int16_t l_502 = 9L;
                int32_t l_557 = 0L;
                int32_t l_564[9][9] = {{0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL,0x4289FE44L,0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL},{0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL,0x4289FE44L,0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL},{0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL,0x4289FE44L,0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL},{0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL,0x4289FE44L,0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL},{0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL,0x4289FE44L,0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL},{0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL,0x4289FE44L,0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL},{0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL,0x4289FE44L,0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL},{0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL,0x4289FE44L,0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL},{0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL,0x4289FE44L,0x4289FE44L,0x6EA9432CL,1L,0x6EA9432CL}};
                uint16_t l_571[2];
                int i, j;
                for (i = 0; i < 2; i++)
                    l_571[i] = 0xCE60L;
                if ((*l_246))
                    break;
            }
            return (*p_1673->g_126);
        }
        l_609 = (safe_mod_func_uint16_t_u_u((p_1673->g_362[5][0].f1 = (safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_u((p_153 , ((((*l_367) == ((safe_add_func_uint64_t_u_u((p_1673->g_5 = ((p_1673->g_362[5][0].f2 || (safe_mod_func_uint64_t_u_u(((*l_606) |= (safe_mod_func_uint32_t_u_u(((safe_sub_func_int32_t_s_s((*l_367), ((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_s((safe_mod_func_int64_t_s_s(((l_567[1] = (((*l_246) &= ((safe_lshift_func_int16_t_s_s((p_153 | (~p_1673->g_135[8])), 2)) <= (*l_367))) == (p_1673->g_413 &= 0x6411L))) < (safe_rshift_func_int8_t_s_s(((!(safe_sub_func_uint16_t_u_u((l_426 = (!0x73F8L)), (*l_367)))) , p_1673->g_411.f2), 1))), p_153)), p_153)), p_153)) <= (*p_1673->g_88)))) | p_1673->g_473.f1), 1UL))), (**l_165)))) == p_153)), 0xBFCB13D26C99318BL)) , (*p_1673->g_88))) > p_153) != 0x7B4DL)), 0)), GROUP_DIVERGE(0, 1)))), l_608));
        for (p_1673->g_171 = 0; (p_1673->g_171 == 6); p_1673->g_171++)
        { /* block id: 287 */
            (*p_1673->g_342) = (void*)0;
            for (p_1673->g_183 = 19; (p_1673->g_183 < (-20)); p_1673->g_183 = safe_sub_func_int32_t_s_s(p_1673->g_183, 5))
            { /* block id: 291 */
                int32_t *l_614 = &p_1673->g_183;
                return l_614;
            }
        }
    }
    return (*l_165);
}


/* ------------------------------------------ */
/* 
 * reads : p_1673->g_146.f3.f7 p_1673->g_172 p_1673->g_181 p_1673->g_89 p_1673->g_171 p_1673->g_189 p_1673->g_135 p_1673->g_5 p_1673->g_181.f0 p_1673->g_183 p_1673->g_226 p_1673->g_227 p_1673->g_88 p_1673->g_231
 * writes: p_1673->g_146.f3.f7 p_1673->g_172 p_1673->g_183 p_1673->g_146.f2 p_1673->g_226 p_1673->g_227 p_1673->g_231
 */
union U4 * func_163(int32_t * p_164, struct S5 * p_1673)
{ /* block id: 104 */
    int32_t l_166[8] = {0x5FC125FBL,0x5FC125FBL,0x5FC125FBL,0x5FC125FBL,0x5FC125FBL,0x5FC125FBL,0x5FC125FBL,0x5FC125FBL};
    int32_t *l_182[9];
    uint16_t l_186 = 0xF047L;
    uint64_t l_190 = 18446744073709551610UL;
    uint16_t l_215 = 0xDBA3L;
    uint16_t *l_216 = &l_186;
    uint32_t *l_217 = &p_1673->g_146.f4;
    uint32_t *l_218 = &p_1673->g_146.f4;
    uint32_t *l_219 = &p_1673->g_146.f4;
    uint32_t *l_220 = &p_1673->g_146.f4;
    uint32_t *l_221 = &p_1673->g_146.f4;
    uint32_t *l_222 = &p_1673->g_146.f4;
    uint32_t *l_223 = &p_1673->g_146.f4;
    uint32_t *l_224 = &p_1673->g_146.f4;
    uint32_t *l_225[8];
    uint64_t l_228 = 0x7306DE79A634C523L;
    int64_t *l_229 = (void*)0;
    int64_t *l_230[7][4][5] = {{{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171}},{{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171}},{{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171}},{{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171}},{{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171}},{{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171}},{{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171},{&p_1673->g_171,&p_1673->g_231,(void*)0,&p_1673->g_171,&p_1673->g_171}}};
    union U4 *l_232 = &p_1673->g_181;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_182[i] = &p_1673->g_183;
    for (i = 0; i < 8; i++)
        l_225[i] = &p_1673->g_146.f4;
    for (p_1673->g_146.f3.f7 = 7; (p_1673->g_146.f3.f7 >= 0); p_1673->g_146.f3.f7 -= 1)
    { /* block id: 107 */
        int32_t l_167 = 0x148B9686L;
        int32_t l_168 = 0x518E2FBEL;
        int32_t *l_169 = &l_168;
        int32_t *l_170[7] = {&l_167,&l_167,&l_167,&l_167,&l_167,&l_167,&l_167};
        int i;
        l_166[2] ^= (7UL || 0x018EF9AA07C460DBL);
        --p_1673->g_172;
    }
    p_1673->g_146.f2 = (+(l_190 = ((safe_mod_func_int8_t_s_s(((safe_add_func_int32_t_s_s((safe_add_func_uint32_t_u_u((0UL <= (p_1673->g_181 , l_166[6])), (p_1673->g_183 = (*p_164)))), 0xBD7E2D0EL)) && (+(((safe_sub_func_uint8_t_u_u(p_1673->g_171, ((~l_186) > (safe_lshift_func_int8_t_s_s((p_1673->g_189 , (((&l_166[5] == p_164) > 65535UL) , p_1673->g_171)), 6))))) >= p_1673->g_135[8]) >= p_1673->g_135[8]))), 255UL)) == p_1673->g_5)));
    p_1673->g_146.f2 = (p_1673->g_189.f0 , (safe_div_func_int32_t_s_s(((p_1673->g_181.f0 ^ ((safe_sub_func_uint64_t_u_u((((p_1673->g_231 |= ((((((((((p_1673->g_183 == ((p_1673->g_5 , (p_1673->g_227 |= (safe_mod_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u(0x67F0L, ((p_1673->g_226 |= ((p_1673->g_5 < (safe_mul_func_int8_t_s_s(p_1673->g_5, (~((((safe_rshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s((~(safe_mod_func_uint16_t_u_u(((*l_216) &= (0x23L == (safe_mod_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s(p_1673->g_171, p_1673->g_171)), l_215)), 0xA175C95FL)))), p_1673->g_135[1]))), p_1673->g_5)), p_1673->g_5)) == (-9L)) > p_1673->g_89[1]) , p_1673->g_135[8]))))) & p_1673->g_89[1])) < 4294967295UL))) <= p_1673->g_5), p_1673->g_183)))) < FAKE_DIVERGE(p_1673->group_1_offset, get_group_id(1), 10))) ^ 0xCBL) , 0x172767B39D56451BL) == p_1673->g_89[2]) , p_1673->g_5) <= (*p_1673->g_88)) , p_1673->g_89[0]) >= p_1673->g_135[7]) == p_1673->g_89[1]) , l_228)) >= 0UL) > p_1673->g_135[8]), p_1673->g_171)) < 0x2501L)) <= p_1673->g_183), p_1673->g_5)));
    return l_232;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[76];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 76; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[76];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 76; i++)
            l_special_values[i] = 0;
    struct S5 c_1674;
    struct S5* p_1673 = &c_1674;
    struct S5 c_1675 = {
        0xEA0D018D303F0244L, // p_1673->g_5
        {0x0DA128F7L,0x0DA128F7L,0x0DA128F7L,0x0DA128F7L}, // p_1673->g_89
        &p_1673->g_89[2], // p_1673->g_88
        &p_1673->g_89[2], // p_1673->g_127
        &p_1673->g_127, // p_1673->g_126
        {0x470FL,3L,0x24C6L,3L,0x470FL,0x470FL,3L,0x24C6L,3L,0x470FL}, // p_1673->g_135
        {-8L}, // p_1673->g_146
        &p_1673->g_146, // p_1673->g_145
        0x2AA4A64453E614E4L, // p_1673->g_171
        1UL, // p_1673->g_172
        {0UL}, // p_1673->g_181
        0x50880342L, // p_1673->g_183
        {0x125AE986L,0x7AL}, // p_1673->g_189
        7L, // p_1673->g_226
        0x5A17D55DL, // p_1673->g_227
        0L, // p_1673->g_231
        (void*)0, // p_1673->g_234
        &p_1673->g_234, // p_1673->g_233
        0UL, // p_1673->g_238
        0x7A78L, // p_1673->g_252
        &p_1673->g_234, // p_1673->g_254
        {0L}, // p_1673->g_255
        0UL, // p_1673->g_260
        (void*)0, // p_1673->g_288
        {0x0353BE89L,0L}, // p_1673->g_289
        0L, // p_1673->g_308
        {{{0L,(-2L),0x75071AE0DCB4711BL,(-2L),0L,0L,(-2L),0x75071AE0DCB4711BL,(-2L),0L}},{{0L,(-2L),0x75071AE0DCB4711BL,(-2L),0L,0L,(-2L),0x75071AE0DCB4711BL,(-2L),0L}}}, // p_1673->g_309
        0xB9L, // p_1673->g_311
        (void*)0, // p_1673->g_323
        &p_1673->g_323, // p_1673->g_322
        {{{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}}},{{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}}},{{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}}},{{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}}},{{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}}},{{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}},{{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL},{0UL,0UL,-2L,1UL,2L,0xA2L,1L,0x5BA8E84DL,0x009CD3F0L,0x1AL}}}}, // p_1673->g_327
        {0UL,0UL,0x293E8454L,0UL,0x1D3BC19BL,1UL,0L,0L,0L,0L}, // p_1673->g_329
        &p_1673->g_234, // p_1673->g_342
        9UL, // p_1673->g_347
        {{{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967287UL,1UL,0x0AB4811EL,6UL,0L,255UL,-9L,0x7A73BD8FL,0x1A06FDA2L,-9L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967287UL,65530UL,0x560FB4FFL,0UL,1L,0xE2L,1L,0x0FD79D07L,0x569F0B24L,1L}},{{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967287UL,1UL,0x0AB4811EL,6UL,0L,255UL,-9L,0x7A73BD8FL,0x1A06FDA2L,-9L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967287UL,65530UL,0x560FB4FFL,0UL,1L,0xE2L,1L,0x0FD79D07L,0x569F0B24L,1L}},{{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967287UL,1UL,0x0AB4811EL,6UL,0L,255UL,-9L,0x7A73BD8FL,0x1A06FDA2L,-9L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967287UL,65530UL,0x560FB4FFL,0UL,1L,0xE2L,1L,0x0FD79D07L,0x569F0B24L,1L}},{{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967287UL,1UL,0x0AB4811EL,6UL,0L,255UL,-9L,0x7A73BD8FL,0x1A06FDA2L,-9L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967287UL,65530UL,0x560FB4FFL,0UL,1L,0xE2L,1L,0x0FD79D07L,0x569F0B24L,1L}},{{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967287UL,1UL,0x0AB4811EL,6UL,0L,255UL,-9L,0x7A73BD8FL,0x1A06FDA2L,-9L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967287UL,65530UL,0x560FB4FFL,0UL,1L,0xE2L,1L,0x0FD79D07L,0x569F0B24L,1L}},{{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967287UL,1UL,0x0AB4811EL,6UL,0L,255UL,-9L,0x7A73BD8FL,0x1A06FDA2L,-9L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967287UL,65530UL,0x560FB4FFL,0UL,1L,0xE2L,1L,0x0FD79D07L,0x569F0B24L,1L}},{{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967287UL,1UL,0x0AB4811EL,6UL,0L,255UL,-9L,0x7A73BD8FL,0x1A06FDA2L,-9L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967287UL,65530UL,0x560FB4FFL,0UL,1L,0xE2L,1L,0x0FD79D07L,0x569F0B24L,1L}},{{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967287UL,1UL,0x0AB4811EL,6UL,0L,255UL,-9L,0x7A73BD8FL,0x1A06FDA2L,-9L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967287UL,65530UL,0x560FB4FFL,0UL,1L,0xE2L,1L,0x0FD79D07L,0x569F0B24L,1L}},{{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967287UL,1UL,0x0AB4811EL,6UL,0L,255UL,-9L,0x7A73BD8FL,0x1A06FDA2L,-9L},{4294967293UL,0x433FL,0x1CB7366FL,1UL,-3L,0x88L,0x58FDE4DFL,3L,9L,0L},{4294967290UL,0xE34AL,0x31234E6EL,0x103296F6364CCC6DL,0x0EA2F1D5L,255UL,0x25EC1647L,8L,0x1C356833L,5L},{1UL,0xD744L,-1L,0x9D480133ADFA2217L,0x087FA0A1L,249UL,-9L,0x14CAB95BL,-1L,-1L},{4294967287UL,65530UL,0x560FB4FFL,0UL,1L,0xE2L,1L,0x0FD79D07L,0x569F0B24L,1L}}}, // p_1673->g_362
        (void*)0, // p_1673->g_363
        (void*)0, // p_1673->g_364
        {{{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]}},{{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]}},{{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]},{&p_1673->g_362[5][0],(void*)0,(void*)0,(void*)0,&p_1673->g_362[5][0],&p_1673->g_362[5][0],&p_1673->g_362[8][1],(void*)0,&p_1673->g_362[5][0]}}}, // p_1673->g_365
        &p_1673->g_362[4][0], // p_1673->g_366
        0x0D755CA7L, // p_1673->g_376
        {{{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}}},{{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}}},{{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}}},{{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}}},{{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}}},{{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}}},{{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}}},{{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}},{{0xBDE68287L,0x0FL}}}}, // p_1673->g_377
        {0x58EF5B3DL,65530UL,0x540085C6L,0xE94EB11F9F825459L,-1L,6UL,1L,0x32A634D3L,0x026A29B5L,-7L}, // p_1673->g_411
        1L, // p_1673->g_413
        0x6A47C109L, // p_1673->g_450
        &p_1673->g_450, // p_1673->g_449
        {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}}, // p_1673->g_448
        &p_1673->g_238, // p_1673->g_454
        &p_1673->g_454, // p_1673->g_453
        {0x384A7072L}, // p_1673->g_458
        &p_1673->g_362[6][0], // p_1673->g_460
        &p_1673->g_460, // p_1673->g_459
        {4294967286UL,-1L}, // p_1673->g_461
        {0x467A0254L,0UL,4L,0UL,-1L,255UL,0x2F27FF4CL,5L,0x5014BBF1L,9L}, // p_1673->g_473
        {&p_1673->g_89[1],&p_1673->g_89[2],&p_1673->g_89[1],&p_1673->g_89[1],&p_1673->g_89[2],&p_1673->g_89[1]}, // p_1673->g_475
        {0x39A8A45BL}, // p_1673->g_515
        {0xEF803012L}, // p_1673->g_517
        {{{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}}},{{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}}},{{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}}},{{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}},{{0x5C252EDCL},{0x15FADAE7L},{0UL},{0x15FADAE7L},{0x5C252EDCL},{0x5C252EDCL}}}}, // p_1673->g_518
        {0x80301E2CL}, // p_1673->g_519
        {1UL}, // p_1673->g_520
        {0x209553D8L}, // p_1673->g_521
        {4294967295UL}, // p_1673->g_522
        {0UL}, // p_1673->g_523
        {0UL}, // p_1673->g_524
        {{0x7479D7D6L},{0x7479D7D6L},{0x7479D7D6L},{0x7479D7D6L},{0x7479D7D6L},{0x7479D7D6L}}, // p_1673->g_525
        {9UL}, // p_1673->g_526
        {{{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}}},{{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}}},{{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}}},{{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}}},{{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}}},{{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}}},{{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}},{{2UL},{2UL},{0xC0853085L}}}}, // p_1673->g_527
        {4294967295UL}, // p_1673->g_528
        {0x2F9DF872L}, // p_1673->g_529
        {0x8111B5F8L}, // p_1673->g_530
        {1UL}, // p_1673->g_531
        {1UL}, // p_1673->g_532
        {{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL}}, // p_1673->g_540
        {4294967294UL,0x32L}, // p_1673->g_646
        &p_1673->g_88, // p_1673->g_674
        {{{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL}},{{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL}},{{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL}},{{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL}},{{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL}},{{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL}},{{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL}},{{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL},{18446744073709551615UL,0x6D8E6AC9EA6F0EBEL,0UL,0x6B3D2A52C9029064L,0UL}}}, // p_1673->g_678
        {0L}, // p_1673->g_683
        {{{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL}},{{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL}},{{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL}},{{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL}},{{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL}},{{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL}},{{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL}},{{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL},{0x35F83483A0D99C34L,3UL,18446744073709551615UL}}}, // p_1673->g_705
        {{{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L}},{{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L}},{{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L}},{{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L}},{{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L}},{{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L}},{{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L}},{{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L},{7L,0L,0x2585CCA7L,(-3L),0L,0L}}}, // p_1673->g_708
        (void*)0, // p_1673->g_711
        &p_1673->g_711, // p_1673->g_710
        &p_1673->g_710, // p_1673->g_709
        {0xF7D36AA0L,0x5BL}, // p_1673->g_803
        (-8L), // p_1673->g_832
        {0xD58F2722L}, // p_1673->g_860
        {0L}, // p_1673->g_898
        {{0x279995C5L},{0x377AB1E5L},{0x279995C5L},{0x279995C5L},{0x377AB1E5L},{0x279995C5L},{0x279995C5L}}, // p_1673->g_902
        {0x0B403D7FL}, // p_1673->g_903
        {(void*)0}, // p_1673->g_912
        {1UL,0x7DB5L,0x29164AD8L,9UL,0x2F2363A8L,0x2CL,5L,-9L,-7L,0x27L}, // p_1673->g_946
        {{0UL,0x7306L,1L,18446744073709551615UL,1L,0xB3L,0x1C8AE928L,0x48C04409L,0x36C38176L,0x46L},{0UL,0x7306L,1L,18446744073709551615UL,1L,0xB3L,0x1C8AE928L,0x48C04409L,0x36C38176L,0x46L},{0UL,0x7306L,1L,18446744073709551615UL,1L,0xB3L,0x1C8AE928L,0x48C04409L,0x36C38176L,0x46L},{0UL,0x7306L,1L,18446744073709551615UL,1L,0xB3L,0x1C8AE928L,0x48C04409L,0x36C38176L,0x46L},{0UL,0x7306L,1L,18446744073709551615UL,1L,0xB3L,0x1C8AE928L,0x48C04409L,0x36C38176L,0x46L},{0UL,0x7306L,1L,18446744073709551615UL,1L,0xB3L,0x1C8AE928L,0x48C04409L,0x36C38176L,0x46L},{0UL,0x7306L,1L,18446744073709551615UL,1L,0xB3L,0x1C8AE928L,0x48C04409L,0x36C38176L,0x46L},{0UL,0x7306L,1L,18446744073709551615UL,1L,0xB3L,0x1C8AE928L,0x48C04409L,0x36C38176L,0x46L}}, // p_1673->g_1010
        {{{0x7337F5CCL,0x6DL},{0x9E71F679L,0x3DL},{0x7337F5CCL,0x6DL},{0x7337F5CCL,0x6DL},{0x9E71F679L,0x3DL},{0x7337F5CCL,0x6DL},{0x7337F5CCL,0x6DL},{0x9E71F679L,0x3DL},{0x7337F5CCL,0x6DL}}}, // p_1673->g_1011
        &p_1673->g_1011[0][5], // p_1673->g_1013
        {4294967295UL,0x5E25L,0x2DC03659L,1UL,1L,0UL,-1L,0x73DCE286L,0x2F53044CL,-1L}, // p_1673->g_1032
        {1UL,0x56E3L,1L,0x32425F2C2FB86E9FL,-5L,0xF8L,0x7326D3B5L,0x44D25F0AL,0L,0x75L}, // p_1673->g_1052
        {4294967295UL,-2L}, // p_1673->g_1057
        (void*)0, // p_1673->g_1058
        {0xE9E12F36L,0x76L}, // p_1673->g_1059
        {{4294967295UL,0x24L},{4294967295UL,0x24L},{4294967295UL,0x24L}}, // p_1673->g_1060
        &p_1673->g_518[2][1][3].f2, // p_1673->g_1061
        {0x2AEFDBCBL,0L}, // p_1673->g_1069
        4294967295UL, // p_1673->g_1108
        {0x6B5FF87FL}, // p_1673->g_1129
        &p_1673->g_411.f5, // p_1673->g_1178
        &p_1673->g_88, // p_1673->g_1185
        {{{6UL,-1L},{4294967290UL,0x63L},{1UL,0x4DL},{0xA7A35961L,-2L}},{{6UL,-1L},{4294967290UL,0x63L},{1UL,0x4DL},{0xA7A35961L,-2L}},{{6UL,-1L},{4294967290UL,0x63L},{1UL,0x4DL},{0xA7A35961L,-2L}},{{6UL,-1L},{4294967290UL,0x63L},{1UL,0x4DL},{0xA7A35961L,-2L}},{{6UL,-1L},{4294967290UL,0x63L},{1UL,0x4DL},{0xA7A35961L,-2L}},{{6UL,-1L},{4294967290UL,0x63L},{1UL,0x4DL},{0xA7A35961L,-2L}},{{6UL,-1L},{4294967290UL,0x63L},{1UL,0x4DL},{0xA7A35961L,-2L}}}, // p_1673->g_1191
        &p_1673->g_1191[6][1], // p_1673->g_1190
        {3UL,0x4BL}, // p_1673->g_1193
        {0x6BE86C81L,0L}, // p_1673->g_1194
        {1UL,0x04L}, // p_1673->g_1195
        {{{0UL}},{{0UL}},{{0UL}},{{0UL}},{{0UL}},{{0UL}},{{0UL}},{{0UL}},{{0UL}},{{0UL}}}, // p_1673->g_1202
        {0x63758A2BAFC6A7C5L}, // p_1673->g_1208
        {-7L}, // p_1673->g_1212
        &p_1673->g_1212, // p_1673->g_1211
        {{{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}}},{{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}}},{{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}}},{{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}}},{{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}},{{0x73B69BA6L,0x4DEFL,-1L,0x4CD0AC5678BA9A75L,0x0258BD99L,4UL,-5L,1L,1L,0x7EL},{0xB3B0349EL,0x8A44L,0x12C295C1L,0UL,-1L,0xFBL,0x7040F4A0L,-1L,1L,0x07L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L},{0x62F7285CL,9UL,0x0D59AE4CL,0xA23DD2A9D7FAF717L,0x33B760D8L,254UL,0x5A66FAE3L,0x166E474EL,0x41C46261L,0x01L},{0xB267AF45L,9UL,1L,0x14589839CA1AF5D5L,0x50A682FFL,254UL,-4L,6L,0x7EE1360EL,0x53L}}}}, // p_1673->g_1214
        {0x87FD762BL,0UL,4L,0x7F1B3437240E08A0L,-1L,0x08L,0x6DF00E72L,-2L,0x226A6061L,-1L}, // p_1673->g_1243
        {0x8DF32C63L,0x31L}, // p_1673->g_1300
        {0x22A46EFAE3D6BA95L}, // p_1673->g_1310
        {4294967295UL,-3L}, // p_1673->g_1325
        &p_1673->g_88, // p_1673->g_1332
        &p_1673->g_88, // p_1673->g_1357
        {0UL,0UL,0x1F241AE4L,1UL,1L,250UL,-6L,8L,-7L,-1L}, // p_1673->g_1518
        (void*)0, // p_1673->g_1555
        &p_1673->g_1555, // p_1673->g_1554
        {&p_1673->g_1554,&p_1673->g_1554,&p_1673->g_1554,&p_1673->g_1554,&p_1673->g_1554,&p_1673->g_1554,&p_1673->g_1554,&p_1673->g_1554}, // p_1673->g_1553
        {0xD3F89F1DL,0x00L}, // p_1673->g_1568
        {0x876F31F8L,8UL,-8L,0UL,0L,250UL,0L,6L,1L,0x1FL}, // p_1673->g_1625
        {0UL}, // p_1673->g_1626
        0x5F11L, // p_1673->g_1639
        sequence_input[get_global_id(0)], // p_1673->global_0_offset
        sequence_input[get_global_id(1)], // p_1673->global_1_offset
        sequence_input[get_global_id(2)], // p_1673->global_2_offset
        sequence_input[get_local_id(0)], // p_1673->local_0_offset
        sequence_input[get_local_id(1)], // p_1673->local_1_offset
        sequence_input[get_local_id(2)], // p_1673->local_2_offset
        sequence_input[get_group_id(0)], // p_1673->group_0_offset
        sequence_input[get_group_id(1)], // p_1673->group_1_offset
        sequence_input[get_group_id(2)], // p_1673->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1674 = c_1675;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1673);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1673->g_5, "p_1673->g_5", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1673->g_89[i], "p_1673->g_89[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1673->g_135[i], "p_1673->g_135[i]", print_hash_value);

    }
    transparent_crc(p_1673->g_146.f0, "p_1673->g_146.f0", print_hash_value);
    transparent_crc(p_1673->g_171, "p_1673->g_171", print_hash_value);
    transparent_crc(p_1673->g_172, "p_1673->g_172", print_hash_value);
    transparent_crc(p_1673->g_181.f0, "p_1673->g_181.f0", print_hash_value);
    transparent_crc(p_1673->g_183, "p_1673->g_183", print_hash_value);
    transparent_crc(p_1673->g_189.f0, "p_1673->g_189.f0", print_hash_value);
    transparent_crc(p_1673->g_189.f1, "p_1673->g_189.f1", print_hash_value);
    transparent_crc(p_1673->g_226, "p_1673->g_226", print_hash_value);
    transparent_crc(p_1673->g_227, "p_1673->g_227", print_hash_value);
    transparent_crc(p_1673->g_231, "p_1673->g_231", print_hash_value);
    transparent_crc(p_1673->g_238, "p_1673->g_238", print_hash_value);
    transparent_crc(p_1673->g_252, "p_1673->g_252", print_hash_value);
    transparent_crc(p_1673->g_255.f0, "p_1673->g_255.f0", print_hash_value);
    transparent_crc(p_1673->g_260, "p_1673->g_260", print_hash_value);
    transparent_crc(p_1673->g_289.f0, "p_1673->g_289.f0", print_hash_value);
    transparent_crc(p_1673->g_289.f1, "p_1673->g_289.f1", print_hash_value);
    transparent_crc(p_1673->g_308, "p_1673->g_308", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1673->g_309[i][j][k], "p_1673->g_309[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1673->g_311, "p_1673->g_311", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1673->g_327[i][j][k].f0, "p_1673->g_327[i][j][k].f0", print_hash_value);
                transparent_crc(p_1673->g_327[i][j][k].f1, "p_1673->g_327[i][j][k].f1", print_hash_value);
                transparent_crc(p_1673->g_327[i][j][k].f2, "p_1673->g_327[i][j][k].f2", print_hash_value);
                transparent_crc(p_1673->g_327[i][j][k].f3, "p_1673->g_327[i][j][k].f3", print_hash_value);
                transparent_crc(p_1673->g_327[i][j][k].f4, "p_1673->g_327[i][j][k].f4", print_hash_value);
                transparent_crc(p_1673->g_327[i][j][k].f5, "p_1673->g_327[i][j][k].f5", print_hash_value);
                transparent_crc(p_1673->g_327[i][j][k].f6, "p_1673->g_327[i][j][k].f6", print_hash_value);
                transparent_crc(p_1673->g_327[i][j][k].f7, "p_1673->g_327[i][j][k].f7", print_hash_value);
                transparent_crc(p_1673->g_327[i][j][k].f8, "p_1673->g_327[i][j][k].f8", print_hash_value);
                transparent_crc(p_1673->g_327[i][j][k].f9, "p_1673->g_327[i][j][k].f9", print_hash_value);

            }
        }
    }
    transparent_crc(p_1673->g_329.f0, "p_1673->g_329.f0", print_hash_value);
    transparent_crc(p_1673->g_329.f1, "p_1673->g_329.f1", print_hash_value);
    transparent_crc(p_1673->g_329.f2, "p_1673->g_329.f2", print_hash_value);
    transparent_crc(p_1673->g_329.f3, "p_1673->g_329.f3", print_hash_value);
    transparent_crc(p_1673->g_329.f4, "p_1673->g_329.f4", print_hash_value);
    transparent_crc(p_1673->g_329.f5, "p_1673->g_329.f5", print_hash_value);
    transparent_crc(p_1673->g_329.f6, "p_1673->g_329.f6", print_hash_value);
    transparent_crc(p_1673->g_329.f7, "p_1673->g_329.f7", print_hash_value);
    transparent_crc(p_1673->g_329.f8, "p_1673->g_329.f8", print_hash_value);
    transparent_crc(p_1673->g_329.f9, "p_1673->g_329.f9", print_hash_value);
    transparent_crc(p_1673->g_347, "p_1673->g_347", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1673->g_362[i][j].f0, "p_1673->g_362[i][j].f0", print_hash_value);
            transparent_crc(p_1673->g_362[i][j].f1, "p_1673->g_362[i][j].f1", print_hash_value);
            transparent_crc(p_1673->g_362[i][j].f2, "p_1673->g_362[i][j].f2", print_hash_value);
            transparent_crc(p_1673->g_362[i][j].f3, "p_1673->g_362[i][j].f3", print_hash_value);
            transparent_crc(p_1673->g_362[i][j].f4, "p_1673->g_362[i][j].f4", print_hash_value);
            transparent_crc(p_1673->g_362[i][j].f5, "p_1673->g_362[i][j].f5", print_hash_value);
            transparent_crc(p_1673->g_362[i][j].f6, "p_1673->g_362[i][j].f6", print_hash_value);
            transparent_crc(p_1673->g_362[i][j].f7, "p_1673->g_362[i][j].f7", print_hash_value);
            transparent_crc(p_1673->g_362[i][j].f8, "p_1673->g_362[i][j].f8", print_hash_value);
            transparent_crc(p_1673->g_362[i][j].f9, "p_1673->g_362[i][j].f9", print_hash_value);

        }
    }
    transparent_crc(p_1673->g_376, "p_1673->g_376", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1673->g_377[i][j][k].f0, "p_1673->g_377[i][j][k].f0", print_hash_value);
                transparent_crc(p_1673->g_377[i][j][k].f1, "p_1673->g_377[i][j][k].f1", print_hash_value);

            }
        }
    }
    transparent_crc(p_1673->g_411.f0, "p_1673->g_411.f0", print_hash_value);
    transparent_crc(p_1673->g_411.f1, "p_1673->g_411.f1", print_hash_value);
    transparent_crc(p_1673->g_411.f2, "p_1673->g_411.f2", print_hash_value);
    transparent_crc(p_1673->g_411.f3, "p_1673->g_411.f3", print_hash_value);
    transparent_crc(p_1673->g_411.f4, "p_1673->g_411.f4", print_hash_value);
    transparent_crc(p_1673->g_411.f5, "p_1673->g_411.f5", print_hash_value);
    transparent_crc(p_1673->g_411.f6, "p_1673->g_411.f6", print_hash_value);
    transparent_crc(p_1673->g_411.f7, "p_1673->g_411.f7", print_hash_value);
    transparent_crc(p_1673->g_411.f8, "p_1673->g_411.f8", print_hash_value);
    transparent_crc(p_1673->g_411.f9, "p_1673->g_411.f9", print_hash_value);
    transparent_crc(p_1673->g_413, "p_1673->g_413", print_hash_value);
    transparent_crc(p_1673->g_450, "p_1673->g_450", print_hash_value);
    transparent_crc(p_1673->g_458.f0, "p_1673->g_458.f0", print_hash_value);
    transparent_crc(p_1673->g_461.f0, "p_1673->g_461.f0", print_hash_value);
    transparent_crc(p_1673->g_461.f1, "p_1673->g_461.f1", print_hash_value);
    transparent_crc(p_1673->g_473.f0, "p_1673->g_473.f0", print_hash_value);
    transparent_crc(p_1673->g_473.f1, "p_1673->g_473.f1", print_hash_value);
    transparent_crc(p_1673->g_473.f2, "p_1673->g_473.f2", print_hash_value);
    transparent_crc(p_1673->g_473.f3, "p_1673->g_473.f3", print_hash_value);
    transparent_crc(p_1673->g_473.f4, "p_1673->g_473.f4", print_hash_value);
    transparent_crc(p_1673->g_473.f5, "p_1673->g_473.f5", print_hash_value);
    transparent_crc(p_1673->g_473.f6, "p_1673->g_473.f6", print_hash_value);
    transparent_crc(p_1673->g_473.f7, "p_1673->g_473.f7", print_hash_value);
    transparent_crc(p_1673->g_473.f8, "p_1673->g_473.f8", print_hash_value);
    transparent_crc(p_1673->g_473.f9, "p_1673->g_473.f9", print_hash_value);
    transparent_crc(p_1673->g_515.f0, "p_1673->g_515.f0", print_hash_value);
    transparent_crc(p_1673->g_517.f0, "p_1673->g_517.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1673->g_518[i][j][k].f0, "p_1673->g_518[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1673->g_519.f0, "p_1673->g_519.f0", print_hash_value);
    transparent_crc(p_1673->g_520.f0, "p_1673->g_520.f0", print_hash_value);
    transparent_crc(p_1673->g_521.f0, "p_1673->g_521.f0", print_hash_value);
    transparent_crc(p_1673->g_522.f0, "p_1673->g_522.f0", print_hash_value);
    transparent_crc(p_1673->g_523.f0, "p_1673->g_523.f0", print_hash_value);
    transparent_crc(p_1673->g_524.f0, "p_1673->g_524.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1673->g_525[i].f0, "p_1673->g_525[i].f0", print_hash_value);

    }
    transparent_crc(p_1673->g_526.f0, "p_1673->g_526.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1673->g_527[i][j][k].f0, "p_1673->g_527[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1673->g_528.f0, "p_1673->g_528.f0", print_hash_value);
    transparent_crc(p_1673->g_529.f0, "p_1673->g_529.f0", print_hash_value);
    transparent_crc(p_1673->g_530.f0, "p_1673->g_530.f0", print_hash_value);
    transparent_crc(p_1673->g_531.f0, "p_1673->g_531.f0", print_hash_value);
    transparent_crc(p_1673->g_532.f0, "p_1673->g_532.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1673->g_540[i].f0, "p_1673->g_540[i].f0", print_hash_value);

    }
    transparent_crc(p_1673->g_646.f0, "p_1673->g_646.f0", print_hash_value);
    transparent_crc(p_1673->g_646.f1, "p_1673->g_646.f1", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1673->g_678[i][j][k], "p_1673->g_678[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1673->g_683.f0, "p_1673->g_683.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1673->g_705[i][j][k], "p_1673->g_705[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1673->g_708[i][j][k], "p_1673->g_708[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1673->g_803.f0, "p_1673->g_803.f0", print_hash_value);
    transparent_crc(p_1673->g_803.f1, "p_1673->g_803.f1", print_hash_value);
    transparent_crc(p_1673->g_832, "p_1673->g_832", print_hash_value);
    transparent_crc(p_1673->g_860.f0, "p_1673->g_860.f0", print_hash_value);
    transparent_crc(p_1673->g_898.f0, "p_1673->g_898.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1673->g_902[i].f0, "p_1673->g_902[i].f0", print_hash_value);

    }
    transparent_crc(p_1673->g_903.f0, "p_1673->g_903.f0", print_hash_value);
    transparent_crc(p_1673->g_946.f0, "p_1673->g_946.f0", print_hash_value);
    transparent_crc(p_1673->g_946.f1, "p_1673->g_946.f1", print_hash_value);
    transparent_crc(p_1673->g_946.f2, "p_1673->g_946.f2", print_hash_value);
    transparent_crc(p_1673->g_946.f3, "p_1673->g_946.f3", print_hash_value);
    transparent_crc(p_1673->g_946.f4, "p_1673->g_946.f4", print_hash_value);
    transparent_crc(p_1673->g_946.f5, "p_1673->g_946.f5", print_hash_value);
    transparent_crc(p_1673->g_946.f6, "p_1673->g_946.f6", print_hash_value);
    transparent_crc(p_1673->g_946.f7, "p_1673->g_946.f7", print_hash_value);
    transparent_crc(p_1673->g_946.f8, "p_1673->g_946.f8", print_hash_value);
    transparent_crc(p_1673->g_946.f9, "p_1673->g_946.f9", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1673->g_1010[i].f0, "p_1673->g_1010[i].f0", print_hash_value);
        transparent_crc(p_1673->g_1010[i].f1, "p_1673->g_1010[i].f1", print_hash_value);
        transparent_crc(p_1673->g_1010[i].f2, "p_1673->g_1010[i].f2", print_hash_value);
        transparent_crc(p_1673->g_1010[i].f3, "p_1673->g_1010[i].f3", print_hash_value);
        transparent_crc(p_1673->g_1010[i].f4, "p_1673->g_1010[i].f4", print_hash_value);
        transparent_crc(p_1673->g_1010[i].f5, "p_1673->g_1010[i].f5", print_hash_value);
        transparent_crc(p_1673->g_1010[i].f6, "p_1673->g_1010[i].f6", print_hash_value);
        transparent_crc(p_1673->g_1010[i].f7, "p_1673->g_1010[i].f7", print_hash_value);
        transparent_crc(p_1673->g_1010[i].f8, "p_1673->g_1010[i].f8", print_hash_value);
        transparent_crc(p_1673->g_1010[i].f9, "p_1673->g_1010[i].f9", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1673->g_1011[i][j].f0, "p_1673->g_1011[i][j].f0", print_hash_value);
            transparent_crc(p_1673->g_1011[i][j].f1, "p_1673->g_1011[i][j].f1", print_hash_value);

        }
    }
    transparent_crc(p_1673->g_1032.f0, "p_1673->g_1032.f0", print_hash_value);
    transparent_crc(p_1673->g_1032.f1, "p_1673->g_1032.f1", print_hash_value);
    transparent_crc(p_1673->g_1032.f2, "p_1673->g_1032.f2", print_hash_value);
    transparent_crc(p_1673->g_1032.f3, "p_1673->g_1032.f3", print_hash_value);
    transparent_crc(p_1673->g_1032.f4, "p_1673->g_1032.f4", print_hash_value);
    transparent_crc(p_1673->g_1032.f5, "p_1673->g_1032.f5", print_hash_value);
    transparent_crc(p_1673->g_1032.f6, "p_1673->g_1032.f6", print_hash_value);
    transparent_crc(p_1673->g_1032.f7, "p_1673->g_1032.f7", print_hash_value);
    transparent_crc(p_1673->g_1032.f8, "p_1673->g_1032.f8", print_hash_value);
    transparent_crc(p_1673->g_1032.f9, "p_1673->g_1032.f9", print_hash_value);
    transparent_crc(p_1673->g_1052.f0, "p_1673->g_1052.f0", print_hash_value);
    transparent_crc(p_1673->g_1052.f1, "p_1673->g_1052.f1", print_hash_value);
    transparent_crc(p_1673->g_1052.f2, "p_1673->g_1052.f2", print_hash_value);
    transparent_crc(p_1673->g_1052.f3, "p_1673->g_1052.f3", print_hash_value);
    transparent_crc(p_1673->g_1052.f4, "p_1673->g_1052.f4", print_hash_value);
    transparent_crc(p_1673->g_1052.f5, "p_1673->g_1052.f5", print_hash_value);
    transparent_crc(p_1673->g_1052.f6, "p_1673->g_1052.f6", print_hash_value);
    transparent_crc(p_1673->g_1052.f7, "p_1673->g_1052.f7", print_hash_value);
    transparent_crc(p_1673->g_1052.f8, "p_1673->g_1052.f8", print_hash_value);
    transparent_crc(p_1673->g_1052.f9, "p_1673->g_1052.f9", print_hash_value);
    transparent_crc(p_1673->g_1057.f0, "p_1673->g_1057.f0", print_hash_value);
    transparent_crc(p_1673->g_1057.f1, "p_1673->g_1057.f1", print_hash_value);
    transparent_crc(p_1673->g_1059.f0, "p_1673->g_1059.f0", print_hash_value);
    transparent_crc(p_1673->g_1059.f1, "p_1673->g_1059.f1", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1673->g_1060[i].f0, "p_1673->g_1060[i].f0", print_hash_value);
        transparent_crc(p_1673->g_1060[i].f1, "p_1673->g_1060[i].f1", print_hash_value);

    }
    transparent_crc(p_1673->g_1069.f0, "p_1673->g_1069.f0", print_hash_value);
    transparent_crc(p_1673->g_1069.f1, "p_1673->g_1069.f1", print_hash_value);
    transparent_crc(p_1673->g_1108, "p_1673->g_1108", print_hash_value);
    transparent_crc(p_1673->g_1129.f0, "p_1673->g_1129.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1673->g_1191[i][j].f0, "p_1673->g_1191[i][j].f0", print_hash_value);
            transparent_crc(p_1673->g_1191[i][j].f1, "p_1673->g_1191[i][j].f1", print_hash_value);

        }
    }
    transparent_crc(p_1673->g_1193.f0, "p_1673->g_1193.f0", print_hash_value);
    transparent_crc(p_1673->g_1193.f1, "p_1673->g_1193.f1", print_hash_value);
    transparent_crc(p_1673->g_1194.f0, "p_1673->g_1194.f0", print_hash_value);
    transparent_crc(p_1673->g_1194.f1, "p_1673->g_1194.f1", print_hash_value);
    transparent_crc(p_1673->g_1195.f0, "p_1673->g_1195.f0", print_hash_value);
    transparent_crc(p_1673->g_1195.f1, "p_1673->g_1195.f1", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1673->g_1202[i][j].f0, "p_1673->g_1202[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1673->g_1208.f0, "p_1673->g_1208.f0", print_hash_value);
    transparent_crc(p_1673->g_1212.f0, "p_1673->g_1212.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1673->g_1214[i][j][k].f0, "p_1673->g_1214[i][j][k].f0", print_hash_value);
                transparent_crc(p_1673->g_1214[i][j][k].f1, "p_1673->g_1214[i][j][k].f1", print_hash_value);
                transparent_crc(p_1673->g_1214[i][j][k].f2, "p_1673->g_1214[i][j][k].f2", print_hash_value);
                transparent_crc(p_1673->g_1214[i][j][k].f3, "p_1673->g_1214[i][j][k].f3", print_hash_value);
                transparent_crc(p_1673->g_1214[i][j][k].f4, "p_1673->g_1214[i][j][k].f4", print_hash_value);
                transparent_crc(p_1673->g_1214[i][j][k].f5, "p_1673->g_1214[i][j][k].f5", print_hash_value);
                transparent_crc(p_1673->g_1214[i][j][k].f6, "p_1673->g_1214[i][j][k].f6", print_hash_value);
                transparent_crc(p_1673->g_1214[i][j][k].f7, "p_1673->g_1214[i][j][k].f7", print_hash_value);
                transparent_crc(p_1673->g_1214[i][j][k].f8, "p_1673->g_1214[i][j][k].f8", print_hash_value);
                transparent_crc(p_1673->g_1214[i][j][k].f9, "p_1673->g_1214[i][j][k].f9", print_hash_value);

            }
        }
    }
    transparent_crc(p_1673->g_1243.f0, "p_1673->g_1243.f0", print_hash_value);
    transparent_crc(p_1673->g_1243.f1, "p_1673->g_1243.f1", print_hash_value);
    transparent_crc(p_1673->g_1243.f2, "p_1673->g_1243.f2", print_hash_value);
    transparent_crc(p_1673->g_1243.f3, "p_1673->g_1243.f3", print_hash_value);
    transparent_crc(p_1673->g_1243.f4, "p_1673->g_1243.f4", print_hash_value);
    transparent_crc(p_1673->g_1243.f5, "p_1673->g_1243.f5", print_hash_value);
    transparent_crc(p_1673->g_1243.f6, "p_1673->g_1243.f6", print_hash_value);
    transparent_crc(p_1673->g_1243.f7, "p_1673->g_1243.f7", print_hash_value);
    transparent_crc(p_1673->g_1243.f8, "p_1673->g_1243.f8", print_hash_value);
    transparent_crc(p_1673->g_1243.f9, "p_1673->g_1243.f9", print_hash_value);
    transparent_crc(p_1673->g_1300.f0, "p_1673->g_1300.f0", print_hash_value);
    transparent_crc(p_1673->g_1300.f1, "p_1673->g_1300.f1", print_hash_value);
    transparent_crc(p_1673->g_1310.f0, "p_1673->g_1310.f0", print_hash_value);
    transparent_crc(p_1673->g_1325.f0, "p_1673->g_1325.f0", print_hash_value);
    transparent_crc(p_1673->g_1325.f1, "p_1673->g_1325.f1", print_hash_value);
    transparent_crc(p_1673->g_1518.f0, "p_1673->g_1518.f0", print_hash_value);
    transparent_crc(p_1673->g_1518.f1, "p_1673->g_1518.f1", print_hash_value);
    transparent_crc(p_1673->g_1518.f2, "p_1673->g_1518.f2", print_hash_value);
    transparent_crc(p_1673->g_1518.f3, "p_1673->g_1518.f3", print_hash_value);
    transparent_crc(p_1673->g_1518.f4, "p_1673->g_1518.f4", print_hash_value);
    transparent_crc(p_1673->g_1518.f5, "p_1673->g_1518.f5", print_hash_value);
    transparent_crc(p_1673->g_1518.f6, "p_1673->g_1518.f6", print_hash_value);
    transparent_crc(p_1673->g_1518.f7, "p_1673->g_1518.f7", print_hash_value);
    transparent_crc(p_1673->g_1518.f8, "p_1673->g_1518.f8", print_hash_value);
    transparent_crc(p_1673->g_1518.f9, "p_1673->g_1518.f9", print_hash_value);
    transparent_crc(p_1673->g_1568.f0, "p_1673->g_1568.f0", print_hash_value);
    transparent_crc(p_1673->g_1568.f1, "p_1673->g_1568.f1", print_hash_value);
    transparent_crc(p_1673->g_1625.f0, "p_1673->g_1625.f0", print_hash_value);
    transparent_crc(p_1673->g_1625.f1, "p_1673->g_1625.f1", print_hash_value);
    transparent_crc(p_1673->g_1625.f2, "p_1673->g_1625.f2", print_hash_value);
    transparent_crc(p_1673->g_1625.f3, "p_1673->g_1625.f3", print_hash_value);
    transparent_crc(p_1673->g_1625.f4, "p_1673->g_1625.f4", print_hash_value);
    transparent_crc(p_1673->g_1625.f5, "p_1673->g_1625.f5", print_hash_value);
    transparent_crc(p_1673->g_1625.f6, "p_1673->g_1625.f6", print_hash_value);
    transparent_crc(p_1673->g_1625.f7, "p_1673->g_1625.f7", print_hash_value);
    transparent_crc(p_1673->g_1625.f8, "p_1673->g_1625.f8", print_hash_value);
    transparent_crc(p_1673->g_1625.f9, "p_1673->g_1625.f9", print_hash_value);
    transparent_crc(p_1673->g_1626.f0, "p_1673->g_1626.f0", print_hash_value);
    transparent_crc(p_1673->g_1639, "p_1673->g_1639", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 76; i++)
            transparent_crc(p_1673->g_special_values[i + 76 * get_linear_group_id()], "p_1673->g_special_values[i + 76 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 76; i++)
            transparent_crc(p_1673->l_special_values[i], "p_1673->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
