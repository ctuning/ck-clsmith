// ---atomic_reductions ---fake_divergence -g 81,95,1 -l 3,5,1
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


// Seed: 28

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int8_t * f0;
   uint32_t  f1;
};

union U1 {
   uint16_t  f0;
   int64_t  f1;
   uint32_t  f2;
   volatile uint32_t  f3;
   int32_t  f4;
};

struct S2 {
    uint32_t g_19;
    int8_t g_36;
    uint32_t g_43[8][2][10];
    int64_t g_69;
    uint8_t g_71;
    volatile int32_t g_78;
    volatile int32_t *g_77;
    uint8_t g_83;
    uint32_t **g_101;
    union U0 g_104;
    uint64_t g_118;
    int8_t g_134;
    uint8_t g_146;
    uint8_t g_147;
    uint64_t *g_151;
    uint64_t **g_150;
    uint64_t *** volatile g_149;
    int32_t g_180;
    int32_t *g_179;
    int32_t **g_178[4][6];
    int32_t *** volatile g_177;
    volatile union U1 g_223;
    int32_t g_225;
    union U0 *g_228;
    int32_t g_230[2][7];
    union U1 g_231;
    volatile union U1 g_267[4][7][7];
    union U1 *g_320;
    union U1 * volatile * volatile g_319;
    int32_t ** volatile g_326;
    int64_t *g_348;
    int16_t g_350;
    uint64_t ***g_388;
    union U1 g_398;
    uint8_t *g_399[4][9][1];
    uint8_t g_454;
    int16_t g_535;
    uint16_t g_539;
    union U1 **g_559;
    union U1 ***g_558;
    uint32_t g_562;
    volatile uint64_t g_567;
    volatile uint64_t *g_566[3];
    volatile uint64_t ** volatile g_565;
    volatile uint8_t g_574;
    volatile union U1 g_577;
    uint64_t g_587;
    uint64_t g_630;
    volatile int32_t g_667;
    uint8_t g_711;
    union U1 **g_731;
    union U1 ***g_730;
    int8_t *g_790;
    int8_t **g_789[4];
    int32_t ** volatile g_842;
    volatile uint64_t g_844;
    int32_t ** volatile g_876[1][9][1];
    uint32_t *g_1050;
    volatile int8_t *** volatile * volatile g_1070;
    volatile union U1 g_1073;
    volatile uint16_t g_1126;
    int64_t **g_1188;
    uint32_t ***g_1244;
    uint32_t **** volatile g_1243;
    uint16_t g_1246;
    union U1 g_1247;
    volatile union U1 g_1290;
    volatile union U1 g_1302;
    volatile int32_t *g_1309[1][9];
    volatile int32_t ** volatile g_1310;
    volatile int32_t ** volatile g_1311;
    int16_t *g_1320[4];
    int32_t g_1339;
    int32_t g_1341;
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
int32_t  func_1(struct S2 * p_1342);
int32_t  func_2(uint64_t  p_3, struct S2 * p_1342);
int32_t  func_4(int8_t * p_5, int8_t * p_6, uint64_t  p_7, int8_t * p_8, struct S2 * p_1342);
int8_t * func_9(uint8_t  p_10, int8_t * p_11, int8_t * p_12, int64_t  p_13, struct S2 * p_1342);
int64_t  func_16(int32_t  p_17, int32_t  p_18, struct S2 * p_1342);
uint16_t  func_24(int8_t * p_25, int8_t * p_26, int8_t * p_27, int64_t  p_28, int8_t * p_29, struct S2 * p_1342);
int8_t * func_30(int8_t * p_31, int8_t * p_32, uint32_t  p_33, int64_t  p_34, struct S2 * p_1342);
union U0  func_37(int8_t  p_38, int16_t  p_39, int32_t  p_40, struct S2 * p_1342);
union U0  func_50(uint32_t * p_51, uint64_t  p_52, struct S2 * p_1342);
uint64_t  func_54(uint64_t  p_55, uint32_t * p_56, int8_t * p_57, uint16_t  p_58, int64_t  p_59, struct S2 * p_1342);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1342->g_19 p_1342->g_43 p_1342->g_36 p_1342->g_69 p_1342->g_71 p_1342->g_77 p_1342->g_78 p_1342->g_101 p_1342->g_104 p_1342->g_83 p_1342->g_149 p_1342->g_151 p_1342->g_118 p_1342->g_147 p_1342->g_177 p_1342->g_180 p_1342->g_178 p_1342->g_223 p_1342->g_225 p_1342->g_179 p_1342->g_231 p_1342->g_231.f0 p_1342->g_230 p_1342->g_223.f0 p_1342->g_134 p_1342->g_399 p_1342->g_350 p_1342->g_587 p_1342->g_1309 p_1342->g_1311 p_1342->g_1050 p_1342->g_790 p_1342->g_559 p_1342->g_320 p_1342->g_1339 p_1342->g_1341
 * writes: p_1342->g_43 p_1342->g_36 p_1342->g_69 p_1342->g_71 p_1342->g_77 p_1342->g_78 p_1342->g_83 p_1342->g_146 p_1342->g_147 p_1342->g_150 p_1342->g_118 p_1342->g_178 p_1342->g_180 p_1342->g_179 p_1342->g_225 p_1342->g_228 p_1342->g_134 p_1342->g_104 p_1342->g_231.f0 p_1342->g_350 p_1342->g_535 p_1342->g_711 p_1342->g_587 p_1342->g_1309 p_1342->g_1320 p_1342->g_1339 p_1342->g_1341
 */
int32_t  func_1(struct S2 * p_1342)
{ /* block id: 4 */
    int8_t *l_35 = &p_1342->g_36;
    uint32_t l_41 = 4294967295UL;
    uint32_t *l_42 = &p_1342->g_43[2][1][9];
    int8_t *l_253 = &p_1342->g_134;
    int32_t l_254 = 0x4A2B4AD3L;
    uint64_t *l_1308 = &p_1342->g_587;
    int32_t *l_1338 = &p_1342->g_1339;
    int32_t *l_1340 = &p_1342->g_1341;
    (*l_1340) |= ((*l_1338) |= func_2(((*l_1308) ^= ((func_4(func_9(((safe_div_func_int64_t_s_s(func_16(p_1342->g_19, ((safe_sub_func_int16_t_s_s((((*l_42) = (safe_mod_func_uint32_t_u_u(p_1342->g_19, ((((l_254 = (func_24((l_35 = func_30(l_35, (func_37(p_1342->g_19, l_41, (((l_41 == (l_35 == (void*)0)) > (((*l_42) ^= GROUP_DIVERGE(2, 1)) > 0xC0838563L)) , 6L), p_1342) , l_35), l_41, l_41, p_1342)), l_253, &p_1342->g_134, p_1342->g_231.f0, l_253, p_1342) && 0xBC21L)) , p_1342->g_147) >= p_1342->g_230[1][6]) ^ GROUP_DIVERGE(2, 1))))) , p_1342->g_223.f0), (-1L))) ^ l_41), p_1342), p_1342->g_134)) , 0xC4L), &p_1342->g_134, l_253, p_1342->g_134, p_1342), p_1342->g_399[3][5][0], l_41, p_1342->g_399[0][3][0], p_1342) < 0x5C76179BL) , l_41)), p_1342));
    return (*l_1340);
}


/* ------------------------------------------ */
/* 
 * reads : p_1342->g_1309 p_1342->g_1311 p_1342->g_77 p_1342->g_179 p_1342->g_1050 p_1342->g_19 p_1342->g_78 p_1342->g_790 p_1342->g_134 p_1342->g_559 p_1342->g_320
 * writes: p_1342->g_1309 p_1342->g_78 p_1342->g_104 p_1342->g_1320 p_1342->g_180 p_1342->g_134
 */
int32_t  func_2(uint64_t  p_3, struct S2 * p_1342)
{ /* block id: 614 */
    uint32_t l_1312 = 0x39A7E68EL;
    int16_t *l_1314 = &p_1342->g_350;
    union U0 l_1315 = {0};
    union U0 *l_1316[3];
    int16_t *l_1317[3][1][5] = {{{&p_1342->g_350,(void*)0,&p_1342->g_350,&p_1342->g_350,(void*)0}},{{&p_1342->g_350,(void*)0,&p_1342->g_350,&p_1342->g_350,(void*)0}},{{&p_1342->g_350,(void*)0,&p_1342->g_350,&p_1342->g_350,(void*)0}}};
    int16_t *l_1319 = &p_1342->g_350;
    int16_t **l_1318[10][10][2] = {{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}},{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}},{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}},{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}},{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}},{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}},{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}},{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}},{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}},{{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0},{&l_1319,(void*)0}}};
    uint32_t *l_1333 = &p_1342->g_43[6][0][9];
    int16_t l_1336 = 0x5CAAL;
    union U1 *l_1337 = &p_1342->g_398;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1316[i] = &l_1315;
    (*p_1342->g_1311) = p_1342->g_1309[0][2];
    (*p_1342->g_77) = l_1312;
    l_1337 = ((((safe_unary_minus_func_uint64_t_u((((l_1314 != (p_1342->g_1320[3] = ((p_1342->g_104 = l_1315) , (l_1317[0][0][4] = &p_1342->g_535)))) , p_3) >= (0x6B96L != (((((!(safe_add_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s(p_3, 3)), (~(safe_add_func_uint8_t_u_u(0x26L, (((~((safe_lshift_func_int8_t_s_u(((*p_1342->g_790) &= (safe_mod_func_uint8_t_u_u((((~(func_50(l_1333, (safe_mod_func_int32_t_s_s((((*p_1342->g_179) = (l_1333 != (void*)0)) != 4294967295UL), (*p_1342->g_1050))), p_1342) , 0UL)) || l_1312) >= (-10L)), GROUP_DIVERGE(1, 1)))), l_1336)) != p_3)) == 0L) <= p_3))))))) , l_1336) , 0x151353061D531740L) != l_1336) == 0UL))))) != 0x29L) >= p_3) , (*p_1342->g_559));
    return l_1312;
}


/* ------------------------------------------ */
/* 
 * reads : p_1342->g_179 p_1342->g_180 p_1342->g_134 p_1342->g_350 p_1342->g_151 p_1342->g_71 p_1342->g_77 p_1342->g_78
 * writes: p_1342->g_350 p_1342->g_118 p_1342->g_535 p_1342->g_711
 */
int32_t  func_4(int8_t * p_5, int8_t * p_6, uint64_t  p_7, int8_t * p_8, struct S2 * p_1342)
{ /* block id: 309 */
    int8_t *l_688 = (void*)0;
    int8_t **l_687[7][9] = {{(void*)0,&l_688,&l_688,(void*)0,(void*)0,&l_688,&l_688,&l_688,(void*)0},{(void*)0,&l_688,&l_688,(void*)0,(void*)0,&l_688,&l_688,&l_688,(void*)0},{(void*)0,&l_688,&l_688,(void*)0,(void*)0,&l_688,&l_688,&l_688,(void*)0},{(void*)0,&l_688,&l_688,(void*)0,(void*)0,&l_688,&l_688,&l_688,(void*)0},{(void*)0,&l_688,&l_688,(void*)0,(void*)0,&l_688,&l_688,&l_688,(void*)0},{(void*)0,&l_688,&l_688,(void*)0,(void*)0,&l_688,&l_688,&l_688,(void*)0},{(void*)0,&l_688,&l_688,(void*)0,(void*)0,&l_688,&l_688,&l_688,(void*)0}};
    int8_t ***l_689 = &l_687[5][3];
    int16_t *l_704[4][4][9] = {{{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350}},{{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350}},{{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350}},{{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350},{&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350,&p_1342->g_350}}};
    int32_t *l_707[4] = {&p_1342->g_230[0][0],&p_1342->g_230[0][0],&p_1342->g_230[0][0],&p_1342->g_230[0][0]};
    uint8_t *l_708 = (void*)0;
    uint8_t *l_709[5];
    uint8_t l_710 = 0x58L;
    union U1 **l_723 = (void*)0;
    int32_t l_799[3][9] = {{(-3L),0x3AE9F93EL,0x15FCD335L,(-3L),0x3AE9F93EL,(-3L),0x15FCD335L,0x3AE9F93EL,(-3L)},{(-3L),0x3AE9F93EL,0x15FCD335L,(-3L),0x3AE9F93EL,(-3L),0x15FCD335L,0x3AE9F93EL,(-3L)},{(-3L),0x3AE9F93EL,0x15FCD335L,(-3L),0x3AE9F93EL,(-3L),0x15FCD335L,0x3AE9F93EL,(-3L)}};
    uint32_t **l_800 = (void*)0;
    int8_t l_802 = (-1L);
    uint32_t l_804 = 0x35EEC74CL;
    int32_t l_805[9][10] = {{4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L,4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L},{4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L,4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L},{4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L,4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L},{4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L,4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L},{4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L,4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L},{4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L,4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L},{4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L,4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L},{4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L,4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L},{4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L,4L,0x5D77B716L,0x022C337CL,0x5D77B716L,4L}};
    uint32_t l_839 = 4294967295UL;
    int32_t **l_899 = &l_707[2];
    int32_t l_917 = 0x0C8E1BEEL;
    int8_t l_923 = 1L;
    uint16_t l_991 = 65526UL;
    int16_t l_1014[9] = {0x4447L,0x4447L,0x4447L,0x4447L,0x4447L,0x4447L,0x4447L,0x4447L,0x4447L};
    union U0 l_1023 = {0};
    uint32_t *l_1057[9];
    int32_t l_1113[3][7] = {{0x4C1CAA6CL,0x06A827FBL,0x3F4FDBA8L,0x7B6E6A54L,0x06A827FBL,0x7B6E6A54L,0x3F4FDBA8L},{0x4C1CAA6CL,0x06A827FBL,0x3F4FDBA8L,0x7B6E6A54L,0x06A827FBL,0x7B6E6A54L,0x3F4FDBA8L},{0x4C1CAA6CL,0x06A827FBL,0x3F4FDBA8L,0x7B6E6A54L,0x06A827FBL,0x7B6E6A54L,0x3F4FDBA8L}};
    uint8_t l_1114 = 3UL;
    int8_t ****l_1120 = (void*)0;
    int64_t l_1156 = 0x565C270EA13FE173L;
    union U1 ****l_1254 = &p_1342->g_558;
    int32_t l_1263 = 0x077E4FAEL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_709[i] = (void*)0;
    for (i = 0; i < 9; i++)
        l_1057[i] = &p_1342->g_562;
    atomic_or(&p_1342->g_atomic_reduction[get_linear_group_id()], (safe_mod_func_int32_t_s_s(((0x066EA856L == (*p_1342->g_179)) ^ ((((((*l_689) = l_687[5][3]) == &p_8) <= ((safe_mod_func_int32_t_s_s((p_1342->g_711 = (((safe_rshift_func_int8_t_s_s((*p_5), (safe_div_func_int8_t_s_s((p_7 | (p_1342->g_535 = (((safe_sub_func_int32_t_s_s((safe_div_func_uint8_t_u_u((((p_7 > (l_710 = (((*p_1342->g_151) = (((safe_add_func_uint32_t_u_u((((p_1342->g_350 ^= p_7) | ((safe_lshift_func_uint8_t_u_u(((((void*)0 == l_707[0]) , p_7) , FAKE_DIVERGE(p_1342->local_0_offset, get_local_id(0), 10)), 0)) , 0x71A7L)) ^ GROUP_DIVERGE(1, 1)), 6L)) && (-1L)) >= 1UL)) != p_7))) ^ p_7) > p_7), p_7)), p_7)) >= p_7) > p_7))), 0xCCL)))) && 0x02AD811CEEA25FFBL) , p_7)), p_7)) > p_7)) >= p_1342->g_71) && 0xA3F6L)), 0x08E0F10EL)));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1342->v_collective += p_1342->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return (*p_1342->g_77);
}


/* ------------------------------------------ */
/* 
 * reads : p_1342->g_134 p_1342->g_43 p_1342->g_179 p_1342->g_180 p_1342->g_77 p_1342->g_78 p_1342->g_147 p_1342->g_151 p_1342->g_118 p_1342->g_231.f0
 * writes: p_1342->g_134 p_1342->g_180 p_1342->g_78 p_1342->g_104 p_1342->g_231.f0
 */
int8_t * func_9(uint8_t  p_10, int8_t * p_11, int8_t * p_12, int64_t  p_13, struct S2 * p_1342)
{ /* block id: 121 */
    int32_t l_260 = 0x034FDBE8L;
    int32_t l_263 = 1L;
    int8_t l_282 = 0x6DL;
    int32_t l_353 = (-1L);
    int32_t *l_394 = &p_1342->g_225;
    uint8_t *l_400 = (void*)0;
    int32_t l_404 = 1L;
    int32_t l_405 = 1L;
    int32_t l_406 = 0x1EB8AE00L;
    int32_t l_407 = 1L;
    int32_t l_408 = 2L;
    int32_t l_409 = 1L;
    union U0 *l_413 = &p_1342->g_104;
    uint8_t *l_422[3];
    uint16_t *l_433 = &p_1342->g_231.f0;
    uint64_t **l_453 = &p_1342->g_151;
    int16_t l_466 = 0x2022L;
    uint32_t l_468 = 1UL;
    uint32_t l_485 = 1UL;
    int32_t l_490 = 0L;
    int32_t l_491 = 0x1E2008D0L;
    int32_t l_493 = 1L;
    int32_t l_497 = (-1L);
    uint8_t l_588 = 0x1AL;
    union U1 **l_593 = &p_1342->g_320;
    uint32_t *l_604 = &p_1342->g_43[2][1][9];
    uint32_t **l_603 = &l_604;
    int64_t *l_650[10][6][4] = {{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}},{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}},{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}},{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}},{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}},{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}},{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}},{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}},{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}},{{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69},{&p_1342->g_69,&p_1342->g_69,(void*)0,&p_1342->g_69}}};
    uint8_t l_654 = 0x08L;
    int32_t l_679[3];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_422[i] = &p_1342->g_83;
    for (i = 0; i < 3; i++)
        l_679[i] = 0x6964EAA7L;
    for (p_1342->g_134 = (-14); (p_1342->g_134 <= 5); p_1342->g_134 = safe_add_func_int16_t_s_s(p_1342->g_134, 9))
    { /* block id: 124 */
        int64_t l_259 = (-1L);
        int8_t *l_261[6] = {&p_1342->g_36,&p_1342->g_36,&p_1342->g_36,&p_1342->g_36,&p_1342->g_36,&p_1342->g_36};
        int32_t l_262 = 0L;
        int32_t l_264 = 0x4E6E4FB6L;
        union U0 *l_279 = (void*)0;
        int32_t l_287[9][6][3] = {{{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)}},{{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)}},{{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)}},{{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)}},{{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)}},{{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)}},{{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)}},{{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)}},{{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)},{(-7L),0x5D0F93ABL,(-7L)}}};
        uint64_t *l_331 = &p_1342->g_118;
        int32_t l_384 = 0x7BE32ECCL;
        int32_t *l_402 = &l_263;
        int32_t *l_403[7];
        uint8_t l_410 = 0x76L;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_403[i] = &l_262;
        atomic_and(&p_1342->l_atomic_reduction[0], (l_263 = ((*p_1342->g_179) |= ((l_259 && (l_259 != p_10)) & (p_1342->g_43[2][1][3] ^ (l_262 = l_260))))) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1342->v_collective += p_1342->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    }
    (*p_1342->g_179) = ((((*l_413) = func_50(l_394, l_282, p_1342)) , (safe_mul_func_uint16_t_u_u(p_1342->g_147, ((*l_433) &= (safe_sub_func_int64_t_s_s(l_409, (l_406 < (safe_div_func_int32_t_s_s((GROUP_DIVERGE(2, 1) & (safe_sub_func_uint8_t_u_u((p_10++), (safe_add_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_div_func_uint64_t_u_u(p_13, l_408)), ((safe_mod_func_uint64_t_u_u((l_260 >= p_13), (*p_1342->g_151))) != p_13))), p_13))))), 1L))))))))) && p_1342->g_147);
    for (l_407 = 3; (l_407 >= 0); l_407 -= 1)
    { /* block id: 214 */
        int32_t *l_440 = &p_1342->g_225;
        int32_t l_443 = 0x45CB302CL;
        uint32_t *l_455 = &p_1342->g_104.f1;
        int32_t l_465 = 0x7C5ABF76L;
        int32_t l_467 = (-8L);
        union U0 *l_486 = &p_1342->g_104;
        int32_t **l_487 = &p_1342->g_179;
        int32_t l_492 = 0x581C507EL;
        int32_t l_496 = (-1L);
        uint64_t *l_586 = &p_1342->g_587;
        int32_t l_617 = 0x7F5994D0L;
        int32_t l_618 = (-8L);
        union U1 ***l_622 = &p_1342->g_559;
        int32_t l_680 = 0x27E47D7CL;
        int32_t l_681 = 0x584425C0L;
        uint16_t l_682 = 9UL;
        (1 + 1);
    }
    return &p_1342->g_134;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_16(int32_t  p_17, int32_t  p_18, struct S2 * p_1342)
{ /* block id: 119 */
    return p_17;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_24(int8_t * p_25, int8_t * p_26, int8_t * p_27, int64_t  p_28, int8_t * p_29, struct S2 * p_1342)
{ /* block id: 115 */
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_1342->g_71 p_1342->g_177 p_1342->g_77 p_1342->g_78 p_1342->g_83 p_1342->g_180 p_1342->g_178 p_1342->g_223 p_1342->g_225 p_1342->g_43 p_1342->g_179 p_1342->g_231 p_1342->g_231.f0 p_1342->g_118 p_1342->g_36
 * writes: p_1342->g_71 p_1342->g_178 p_1342->g_78 p_1342->g_83 p_1342->g_118 p_1342->g_180 p_1342->g_179 p_1342->g_225 p_1342->g_228 p_1342->g_147
 */
int8_t * func_30(int8_t * p_31, int8_t * p_32, uint32_t  p_33, int64_t  p_34, struct S2 * p_1342)
{ /* block id: 72 */
    int32_t *l_176[1];
    int32_t **l_175[6];
    uint64_t *l_207 = &p_1342->g_118;
    uint16_t l_212 = 65529UL;
    uint64_t l_217 = 0xCE31F70DFA86E48CL;
    int16_t l_218 = 0x209FL;
    uint32_t ***l_222 = &p_1342->g_101;
    uint8_t l_241 = 0UL;
    uint16_t l_244 = 2UL;
    uint32_t l_252 = 1UL;
    int i;
    for (i = 0; i < 1; i++)
        l_176[i] = (void*)0;
    for (i = 0; i < 6; i++)
        l_175[i] = &l_176[0];
lbl_198:
    for (p_1342->g_71 = 0; (p_1342->g_71 <= 1); p_1342->g_71 += 1)
    { /* block id: 75 */
        uint64_t l_181[5][2][1] = {{{7UL},{7UL}},{{7UL},{7UL}},{{7UL},{7UL}},{{7UL},{7UL}},{{7UL},{7UL}}};
        int i, j, k;
        (*p_1342->g_177) = l_175[2];
        l_181[0][0][0] = 0x241DA26CL;
        (*p_1342->g_77) = (*p_1342->g_77);
        return &p_1342->g_134;
    }
    for (p_1342->g_71 = 0; (p_1342->g_71 < 53); ++p_1342->g_71)
    { /* block id: 83 */
        int32_t l_186[6][10][4] = {{{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L}},{{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L}},{{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L}},{{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L}},{{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L}},{{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L},{0x5E601DA3L,0x0534DAAFL,7L,9L}}};
        int32_t l_189 = 0x325C6D07L;
        int32_t l_191 = 0x12523FAAL;
        int32_t l_192[3];
        int32_t *l_199 = &l_192[0];
        int32_t *l_200 = &l_192[1];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_192[i] = 0x37B1D02BL;
        for (p_1342->g_83 = 0; (p_1342->g_83 <= 8); p_1342->g_83++)
        { /* block id: 86 */
            int64_t l_187 = 0x0205D3DB0259846DL;
            int32_t l_188 = 0L;
            int32_t l_190 = 0x37C21217L;
            int32_t l_193 = 0x243BE05CL;
            int32_t l_194 = (-8L);
            uint32_t l_195 = 1UL;
            ++l_195;
            if (p_1342->g_71)
                goto lbl_198;
        }
        l_200 = l_199;
    }
    (*p_1342->g_77) ^= ((((safe_div_func_int32_t_s_s((safe_mul_func_int16_t_s_s((safe_mod_func_uint8_t_u_u((l_207 == (void*)0), (safe_sub_func_int64_t_s_s((safe_add_func_uint64_t_u_u(((*l_207) = (!l_212)), (safe_add_func_int64_t_s_s(((p_34 , FAKE_DIVERGE(p_1342->group_1_offset, get_group_id(1), 10)) | p_34), (safe_div_func_uint64_t_u_u(p_33, 0x349BCD83B648F1D9L)))))), l_217)))), (!l_218))), p_34)) >= p_1342->g_180) || 0x2BDCF2520F901617L) == p_34);
    for (p_1342->g_180 = 23; (p_1342->g_180 != (-25)); p_1342->g_180 = safe_sub_func_int16_t_s_s(p_1342->g_180, 3))
    { /* block id: 96 */
        int32_t *l_221[6] = {&p_1342->g_180,&p_1342->g_180,&p_1342->g_180,&p_1342->g_180,&p_1342->g_180,&p_1342->g_180};
        int32_t *l_224 = &p_1342->g_225;
        uint64_t l_242 = 18446744073709551615UL;
        uint8_t *l_249[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        (**p_1342->g_177) = l_221[2];
        if (((l_222 == (p_1342->g_223 , (((*l_224) &= 0x10458D82L) , &p_1342->g_101))) > p_1342->g_43[2][1][9]))
        { /* block id: 99 */
            union U0 *l_226 = (void*)0;
            union U0 **l_227 = (void*)0;
            p_1342->g_228 = l_226;
            (*p_1342->g_77) |= p_34;
            if ((***p_1342->g_177))
                break;
        }
        else
        { /* block id: 103 */
            int32_t *l_229 = &p_1342->g_230[0][6];
            uint32_t l_243[5] = {4UL,4UL,4UL,4UL,4UL};
            int i;
            l_229 = l_224;
            if (p_34)
                continue;
            l_243[4] ^= ((((p_1342->g_231 , 1UL) , (l_176[0] != (void*)0)) > ((*l_229) <= (safe_mod_func_uint64_t_u_u((((safe_unary_minus_func_int8_t_s((((((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(((0UL && FAKE_DIVERGE(p_1342->local_2_offset, get_local_id(2), 10)) || p_1342->g_231.f0), ((*l_229) , (~(safe_add_func_int32_t_s_s((((((+(p_34 && 0xD4L)) , (void*)0) == (void*)0) != 0xFFL) || p_34), (*p_1342->g_179))))))), 0x35ECL)) < 0x068F0A81L) , 0x2B61524DL) & p_34) != p_1342->g_118))) , p_1342->g_43[2][1][9]) , l_241), (*l_229))))) ^ l_242);
            if ((*p_1342->g_77))
                break;
        }
        l_244 ^= (*p_1342->g_77);
        (*p_1342->g_77) = (((0x2AL < (p_1342->g_147 = ((((safe_lshift_func_int16_t_s_s((p_34 <= (p_34 >= (p_32 == ((safe_div_func_int8_t_s_s((*p_32), (-1L))) , l_249[1])))), p_33)) && (safe_sub_func_int8_t_s_s(0x4EL, p_33))) || l_252) && 0x37FCCB76L))) != (*p_32)) == p_34);
    }
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_1342->g_36 p_1342->g_43 p_1342->g_69 p_1342->g_71 p_1342->g_77 p_1342->g_78 p_1342->g_19 p_1342->g_101 p_1342->g_104 p_1342->g_83 p_1342->g_149 p_1342->g_151 p_1342->g_118 p_1342->g_147
 * writes: p_1342->g_36 p_1342->g_69 p_1342->g_71 p_1342->g_77 p_1342->g_78 p_1342->g_83 p_1342->g_43 p_1342->g_146 p_1342->g_147 p_1342->g_150 p_1342->g_118
 */
union U0  func_37(int8_t  p_38, int16_t  p_39, int32_t  p_40, struct S2 * p_1342)
{ /* block id: 6 */
    int8_t l_64 = (-1L);
    int32_t l_102 = (-4L);
    int64_t *l_107[9][5] = {{(void*)0,(void*)0,&p_1342->g_69,&p_1342->g_69,&p_1342->g_69},{(void*)0,(void*)0,&p_1342->g_69,&p_1342->g_69,&p_1342->g_69},{(void*)0,(void*)0,&p_1342->g_69,&p_1342->g_69,&p_1342->g_69},{(void*)0,(void*)0,&p_1342->g_69,&p_1342->g_69,&p_1342->g_69},{(void*)0,(void*)0,&p_1342->g_69,&p_1342->g_69,&p_1342->g_69},{(void*)0,(void*)0,&p_1342->g_69,&p_1342->g_69,&p_1342->g_69},{(void*)0,(void*)0,&p_1342->g_69,&p_1342->g_69,&p_1342->g_69},{(void*)0,(void*)0,&p_1342->g_69,&p_1342->g_69,&p_1342->g_69},{(void*)0,(void*)0,&p_1342->g_69,&p_1342->g_69,&p_1342->g_69}};
    int8_t *l_161 = &l_64;
    uint64_t **l_168[1][1];
    uint64_t ***l_169 = &l_168[0][0];
    int32_t **l_172 = (void*)0;
    uint32_t l_173 = 1UL;
    union U0 l_174 = {0};
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_168[i][j] = &p_1342->g_151;
    }
    for (p_1342->g_36 = 27; (p_1342->g_36 < 7); p_1342->g_36 = safe_sub_func_int8_t_s_s(p_1342->g_36, 7))
    { /* block id: 9 */
        uint32_t *l_53 = &p_1342->g_43[2][1][9];
        int32_t l_67 = 1L;
        union U0 l_100[9][2] = {{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}}};
        int64_t *l_108 = &p_1342->g_69;
        int16_t *l_115[3][2];
        uint64_t *l_117 = &p_1342->g_118;
        uint64_t **l_116 = &l_117;
        uint64_t *l_138 = &p_1342->g_118;
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_115[i][j] = (void*)0;
        }
        for (p_38 = 0; (p_38 > (-28)); --p_38)
        { /* block id: 12 */
            int32_t l_62 = 0x0954837AL;
            int64_t *l_68 = &p_1342->g_69;
            uint8_t *l_70 = &p_1342->g_71;
            uint32_t l_82 = 0xB849B7D6L;
            uint64_t *l_103[1];
            int i;
            for (i = 0; i < 1; i++)
                l_103[i] = (void*)0;
            p_40 = (safe_add_func_int16_t_s_s((+((func_50(l_53, func_54((safe_mod_func_int32_t_s_s((l_62 || (((*l_70) ^= ((safe_unary_minus_func_int32_t_s(((l_64 , 65535UL) | (((*l_68) = ((l_64 , ((-7L) ^ (safe_sub_func_int64_t_s_s(l_67, p_40)))) > p_1342->g_43[5][1][6])) && p_1342->g_69)))) > 0x5FB330CFL)) > p_1342->g_43[2][1][9])), 0xA39DA5D7L)), &p_1342->g_19, &p_1342->g_36, p_1342->g_43[5][1][6], p_1342->g_43[2][1][9], p_1342), p_1342) , FAKE_DIVERGE(p_1342->group_1_offset, get_group_id(1), 10)) != p_1342->g_19)), 0x0C00L));
            (*p_1342->g_77) = ((+(((p_1342->g_83 = ((*l_70) = l_82)) || 1L) & (p_40 = 0x757A549BL))) , ((((+(l_67 = ((0x65F0DE344E30A6D4L && (safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u(p_39, ((safe_mul_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s(p_1342->g_19, (safe_add_func_int8_t_s_s((0x58L & ((safe_lshift_func_int8_t_s_s(((((*l_70) = ((l_100[5][1] , (&l_53 != p_1342->g_101)) <= 0x72L)) == p_1342->g_36) && 0x4549E5CEL), 0)) & p_1342->g_69)), l_102)))), l_102)), 0x5AF8L)), 0x2CL)) | l_82))), 65535UL))) == 8UL))) == (-5L)) != p_40) || p_40));
            return p_1342->g_104;
        }
        if (((func_50(l_53, ((safe_sub_func_int16_t_s_s(((p_39 > (((l_107[0][3] == l_108) <= (safe_lshift_func_uint8_t_u_s(((safe_rshift_func_int16_t_s_s(0x4088L, 15)) & (l_102 ^= (safe_rshift_func_uint16_t_u_s((+p_38), 1)))), 1))) , 1UL)) <= ((((*l_116) = l_108) != (void*)0) == l_64)), l_67)) == (*p_1342->g_77)), p_1342) , l_64) && 0L))
        { /* block id: 37 */
            union U0 l_119 = {0};
            for (l_67 = 0; l_67 < 8; l_67 += 1)
            {
                for (p_1342->g_78 = 0; p_1342->g_78 < 2; p_1342->g_78 += 1)
                {
                    for (p_39 = 0; p_39 < 10; p_39 += 1)
                    {
                        p_1342->g_43[l_67][p_1342->g_78][p_39] = 0x45913EF9L;
                    }
                }
            }
            return l_119;
        }
        else
        { /* block id: 40 */
            int8_t *l_133 = &p_1342->g_134;
            int32_t l_135 = 0x71F8345FL;
            uint16_t l_142 = 65535UL;
            int32_t l_148 = 0L;
            for (l_64 = 0; (l_64 != (-28)); l_64--)
            { /* block id: 43 */
                int8_t *l_130 = (void*)0;
                int8_t *l_132[6][5] = {{&p_1342->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_1342->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_1342->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_1342->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_1342->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_1342->g_36,&l_64,(void*)0,&l_64,&l_64}};
                int8_t **l_131[7][3] = {{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0}};
                uint64_t *l_141[7] = {&p_1342->g_118,&p_1342->g_118,&p_1342->g_118,&p_1342->g_118,&p_1342->g_118,&p_1342->g_118,&p_1342->g_118};
                int32_t l_143 = 1L;
                int32_t *l_144 = (void*)0;
                int32_t *l_145 = &l_143;
                int i, j;
                if (l_64)
                    break;
                l_148 |= (((p_1342->g_147 = (p_1342->g_146 = ((*l_145) = (((-1L) | (((safe_lshift_func_uint16_t_u_s(0xDF63L, 0)) | (((safe_sub_func_uint8_t_u_u((safe_div_func_int32_t_s_s((*p_1342->g_77), ((*l_53) = (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1342->local_0_offset, get_local_id(0), 10), ((l_135 = (l_130 != (l_133 = &p_1342->g_36))) >= ((FAKE_DIVERGE(p_1342->local_1_offset, get_local_id(1), 10) <= ((GROUP_DIVERGE(1, 1) & (safe_mod_func_int64_t_s_s((l_138 != ((safe_sub_func_uint64_t_u_u(0UL, 0x56046493B66AF959L)) , ((*l_116) = l_141[2]))), 0x7B5E83B3B4D8F4AAL))) & p_1342->g_83)) , l_142))))))), 0x77L)) >= 1L) >= l_143)) ^ 65535UL)) , (*p_1342->g_77))))) && p_40) , (*p_1342->g_77));
            }
            for (l_135 = 0; (l_135 <= 1); l_135 += 1)
            { /* block id: 56 */
                int32_t l_154 = 1L;
                int32_t l_155 = 0x7F6ABC8BL;
                uint64_t l_156 = 18446744073709551609UL;
                (*p_1342->g_149) = &l_138;
                for (l_142 = 0; (l_142 <= 4); l_142 += 1)
                { /* block id: 60 */
                    int32_t *l_152 = &l_67;
                    int32_t *l_153[2][9][9] = {{{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67}},{{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67}}};
                    int i, j, k;
                    l_156--;
                }
            }
        }
        atomic_min(&p_1342->g_atomic_reduction[get_linear_group_id()], ((void*)0 != &p_1342->g_77));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1342->v_collective += p_1342->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    }
    (*p_1342->g_77) = (safe_rshift_func_uint16_t_u_s((((*l_161) = p_1342->g_43[2][1][9]) || (safe_lshift_func_int16_t_s_u(p_39, 12))), (safe_div_func_uint16_t_u_u((((safe_sub_func_int16_t_s_s((((((((*p_1342->g_151) = (*p_1342->g_151)) , ((*l_169) = l_168[0][0])) != (void*)0) , l_161) != (void*)0) , (safe_mod_func_int16_t_s_s(((0xC4BFEEEDL <= ((((l_172 == (void*)0) , &p_1342->g_151) != (void*)0) ^ p_40)) < 0x1BD8L), p_39))), 65535UL)) | p_1342->g_147) > p_38), l_173))));
    return l_174;
}


/* ------------------------------------------ */
/* 
 * reads : p_1342->g_77 p_1342->g_78
 * writes: p_1342->g_78
 */
union U0  func_50(uint32_t * p_51, uint64_t  p_52, struct S2 * p_1342)
{ /* block id: 23 */
    int64_t l_80 = 0L;
    union U0 l_81[1] = {{0}};
    int i;
    (*p_1342->g_77) ^= l_80;
    return l_81[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1342->g_77
 * writes: p_1342->g_77
 */
uint64_t  func_54(uint64_t  p_55, uint32_t * p_56, int8_t * p_57, uint16_t  p_58, int64_t  p_59, struct S2 * p_1342)
{ /* block id: 15 */
    volatile int32_t **l_79 = &p_1342->g_77;
    for (p_58 = 0; (p_58 >= 24); p_58 = safe_add_func_uint8_t_u_u(p_58, 8))
    { /* block id: 18 */
        uint32_t *l_75 = &p_1342->g_19;
        uint32_t **l_74 = &l_75;
        uint32_t ***l_76 = &l_74;
        (*l_76) = l_74;
    }
    (*l_79) = p_1342->g_77;
    return p_58;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_1343;
    struct S2* p_1342 = &c_1343;
    struct S2 c_1344 = {
        0x65420764L, // p_1342->g_19
        8L, // p_1342->g_36
        {{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}}}, // p_1342->g_43
        0x773E8932A224D52AL, // p_1342->g_69
        9UL, // p_1342->g_71
        (-2L), // p_1342->g_78
        &p_1342->g_78, // p_1342->g_77
        252UL, // p_1342->g_83
        (void*)0, // p_1342->g_101
        {0}, // p_1342->g_104
        1UL, // p_1342->g_118
        0L, // p_1342->g_134
        0UL, // p_1342->g_146
        0xEEL, // p_1342->g_147
        &p_1342->g_118, // p_1342->g_151
        &p_1342->g_151, // p_1342->g_150
        &p_1342->g_150, // p_1342->g_149
        0x629E21D3L, // p_1342->g_180
        &p_1342->g_180, // p_1342->g_179
        {{&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179},{&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179},{&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179},{&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179,&p_1342->g_179}}, // p_1342->g_178
        &p_1342->g_178[0][2], // p_1342->g_177
        {1UL}, // p_1342->g_223
        1L, // p_1342->g_225
        &p_1342->g_104, // p_1342->g_228
        {{0x2C1A1C62L,0x5C3C847DL,0x2C1A1C62L,0x2C1A1C62L,0x5C3C847DL,0x2C1A1C62L,0x2C1A1C62L},{0x2C1A1C62L,0x5C3C847DL,0x2C1A1C62L,0x2C1A1C62L,0x5C3C847DL,0x2C1A1C62L,0x2C1A1C62L}}, // p_1342->g_230
        {65535UL}, // p_1342->g_231
        {{{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}}},{{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}}},{{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}}},{{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}},{{65535UL},{0x0B62L},{0x3793L},{65535UL},{1UL},{1UL},{0x66DDL}}}}, // p_1342->g_267
        &p_1342->g_231, // p_1342->g_320
        &p_1342->g_320, // p_1342->g_319
        (void*)0, // p_1342->g_326
        (void*)0, // p_1342->g_348
        0x439AL, // p_1342->g_350
        &p_1342->g_150, // p_1342->g_388
        {0xEF0AL}, // p_1342->g_398
        {{{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147}},{{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147}},{{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147}},{{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147},{&p_1342->g_147}}}, // p_1342->g_399
        0xF4L, // p_1342->g_454
        0x3BE8L, // p_1342->g_535
        0x0D85L, // p_1342->g_539
        &p_1342->g_320, // p_1342->g_559
        &p_1342->g_559, // p_1342->g_558
        0x25C5DF8CL, // p_1342->g_562
        1UL, // p_1342->g_567
        {&p_1342->g_567,&p_1342->g_567,&p_1342->g_567}, // p_1342->g_566
        &p_1342->g_566[1], // p_1342->g_565
        0x1AL, // p_1342->g_574
        {65535UL}, // p_1342->g_577
        0x40700C95C2924905L, // p_1342->g_587
        0x5991138B450ACAC6L, // p_1342->g_630
        (-1L), // p_1342->g_667
        9UL, // p_1342->g_711
        &p_1342->g_320, // p_1342->g_731
        &p_1342->g_731, // p_1342->g_730
        &p_1342->g_134, // p_1342->g_790
        {&p_1342->g_790,&p_1342->g_790,&p_1342->g_790,&p_1342->g_790}, // p_1342->g_789
        &p_1342->g_179, // p_1342->g_842
        0UL, // p_1342->g_844
        {{{&p_1342->g_179},{&p_1342->g_179},{&p_1342->g_179},{&p_1342->g_179},{&p_1342->g_179},{&p_1342->g_179},{&p_1342->g_179},{&p_1342->g_179},{&p_1342->g_179}}}, // p_1342->g_876
        &p_1342->g_19, // p_1342->g_1050
        (void*)0, // p_1342->g_1070
        {65532UL}, // p_1342->g_1073
        7UL, // p_1342->g_1126
        &p_1342->g_348, // p_1342->g_1188
        &p_1342->g_101, // p_1342->g_1244
        &p_1342->g_1244, // p_1342->g_1243
        0xD517L, // p_1342->g_1246
        {0x9C87L}, // p_1342->g_1247
        {65535UL}, // p_1342->g_1290
        {6UL}, // p_1342->g_1302
        {{&p_1342->g_78,&p_1342->g_78,&p_1342->g_78,&p_1342->g_78,&p_1342->g_78,&p_1342->g_78,&p_1342->g_78,&p_1342->g_78,&p_1342->g_78}}, // p_1342->g_1309
        (void*)0, // p_1342->g_1310
        &p_1342->g_1309[0][8], // p_1342->g_1311
        {&p_1342->g_535,&p_1342->g_535,&p_1342->g_535,&p_1342->g_535}, // p_1342->g_1320
        0x70E5332EL, // p_1342->g_1339
        0x59B02390L, // p_1342->g_1341
        0, // p_1342->v_collective
        sequence_input[get_global_id(0)], // p_1342->global_0_offset
        sequence_input[get_global_id(1)], // p_1342->global_1_offset
        sequence_input[get_global_id(2)], // p_1342->global_2_offset
        sequence_input[get_local_id(0)], // p_1342->local_0_offset
        sequence_input[get_local_id(1)], // p_1342->local_1_offset
        sequence_input[get_local_id(2)], // p_1342->local_2_offset
        sequence_input[get_group_id(0)], // p_1342->group_0_offset
        sequence_input[get_group_id(1)], // p_1342->group_1_offset
        sequence_input[get_group_id(2)], // p_1342->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1343 = c_1344;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1342);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1342->g_19, "p_1342->g_19", print_hash_value);
    transparent_crc(p_1342->g_36, "p_1342->g_36", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1342->g_43[i][j][k], "p_1342->g_43[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1342->g_69, "p_1342->g_69", print_hash_value);
    transparent_crc(p_1342->g_71, "p_1342->g_71", print_hash_value);
    transparent_crc(p_1342->g_78, "p_1342->g_78", print_hash_value);
    transparent_crc(p_1342->g_83, "p_1342->g_83", print_hash_value);
    transparent_crc(p_1342->g_118, "p_1342->g_118", print_hash_value);
    transparent_crc(p_1342->g_134, "p_1342->g_134", print_hash_value);
    transparent_crc(p_1342->g_146, "p_1342->g_146", print_hash_value);
    transparent_crc(p_1342->g_147, "p_1342->g_147", print_hash_value);
    transparent_crc(p_1342->g_180, "p_1342->g_180", print_hash_value);
    transparent_crc(p_1342->g_223.f0, "p_1342->g_223.f0", print_hash_value);
    transparent_crc(p_1342->g_225, "p_1342->g_225", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1342->g_230[i][j], "p_1342->g_230[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1342->g_231.f0, "p_1342->g_231.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1342->g_267[i][j][k].f0, "p_1342->g_267[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1342->g_350, "p_1342->g_350", print_hash_value);
    transparent_crc(p_1342->g_398.f0, "p_1342->g_398.f0", print_hash_value);
    transparent_crc(p_1342->g_454, "p_1342->g_454", print_hash_value);
    transparent_crc(p_1342->g_535, "p_1342->g_535", print_hash_value);
    transparent_crc(p_1342->g_539, "p_1342->g_539", print_hash_value);
    transparent_crc(p_1342->g_562, "p_1342->g_562", print_hash_value);
    transparent_crc(p_1342->g_567, "p_1342->g_567", print_hash_value);
    transparent_crc(p_1342->g_574, "p_1342->g_574", print_hash_value);
    transparent_crc(p_1342->g_577.f0, "p_1342->g_577.f0", print_hash_value);
    transparent_crc(p_1342->g_587, "p_1342->g_587", print_hash_value);
    transparent_crc(p_1342->g_630, "p_1342->g_630", print_hash_value);
    transparent_crc(p_1342->g_667, "p_1342->g_667", print_hash_value);
    transparent_crc(p_1342->g_711, "p_1342->g_711", print_hash_value);
    transparent_crc(p_1342->g_844, "p_1342->g_844", print_hash_value);
    transparent_crc(p_1342->g_1073.f0, "p_1342->g_1073.f0", print_hash_value);
    transparent_crc(p_1342->g_1126, "p_1342->g_1126", print_hash_value);
    transparent_crc(p_1342->g_1246, "p_1342->g_1246", print_hash_value);
    transparent_crc(p_1342->g_1247.f0, "p_1342->g_1247.f0", print_hash_value);
    transparent_crc(p_1342->g_1290.f0, "p_1342->g_1290.f0", print_hash_value);
    transparent_crc(p_1342->g_1302.f0, "p_1342->g_1302.f0", print_hash_value);
    transparent_crc(p_1342->g_1339, "p_1342->g_1339", print_hash_value);
    transparent_crc(p_1342->g_1341, "p_1342->g_1341", print_hash_value);
    transparent_crc(p_1342->v_collective, "p_1342->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
