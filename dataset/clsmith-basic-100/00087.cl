// ---fake_divergence -g 1,1,1 -l 1,1,1
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


// Seed: 87

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int64_t  f0;
   uint32_t  f1;
   int8_t  f2;
   int64_t  f3;
};

struct S1 {
   int64_t  f0;
   int8_t  f1;
   volatile uint64_t  f2;
   int32_t  f3;
   uint32_t  f4;
   uint16_t  f5;
   int16_t  f6;
};

struct S2 {
    uint64_t g_3[4][3];
    uint32_t g_8;
    struct S0 g_16;
    uint64_t g_19;
    uint64_t *g_20;
    uint8_t g_36;
    uint32_t g_54;
    uint64_t **g_59;
    uint64_t *g_62;
    uint64_t **g_61[9][3];
    uint64_t **g_63;
    uint32_t g_64[8];
    int8_t g_76;
    int64_t g_79;
    uint8_t g_108;
    int8_t g_111;
    int32_t g_113;
    uint16_t g_119;
    int8_t *g_128[5];
    int8_t *g_129;
    uint64_t g_149;
    int32_t g_150[2];
    int32_t g_162;
    uint64_t g_221[10];
    int16_t g_247;
    int16_t g_250;
    uint64_t g_253;
    uint16_t g_269;
    int64_t g_272;
    volatile uint8_t g_275;
    volatile uint8_t *g_274;
    volatile uint8_t **g_273[10][8][3];
    uint8_t *g_285;
    uint8_t **g_284;
    uint32_t * volatile g_295;
    uint32_t * volatile *g_294;
    int16_t g_334;
    int32_t g_337;
    int16_t g_338[8][6];
    uint32_t g_339;
    uint8_t g_355;
    volatile struct S1 g_421;
    volatile struct S1 *g_420;
    int32_t g_426;
    int64_t * volatile g_487;
    int64_t * volatile *g_486;
    uint32_t g_533;
    volatile uint64_t g_553;
    volatile uint64_t *g_552;
    volatile uint64_t * volatile * volatile g_551[7][5][1];
    volatile uint64_t * volatile * volatile *g_550;
    volatile uint64_t * volatile * volatile **g_549;
    int32_t g_576;
    uint32_t g_577;
    uint32_t g_580;
    int32_t * volatile g_596;
    int32_t * volatile *g_595;
    int16_t g_597;
    int8_t **g_600;
    int32_t *g_605[9];
    volatile int16_t g_717;
    volatile int16_t *g_716;
    volatile int16_t **g_715;
    uint64_t g_726[2][2][6];
    int32_t g_771;
    uint64_t g_802[7];
    struct S1 g_863[8];
    struct S1 g_865;
    int64_t g_900;
    int16_t g_967;
    volatile struct S1 g_1122[7][1][5];
    uint64_t g_1147;
    volatile struct S0 g_1148;
    struct S1 g_1211;
    struct S1 *g_1214;
    struct S1 ** volatile g_1213;
    int32_t *g_1244;
    int32_t **g_1243[10];
    int32_t *** volatile g_1242;
    struct S1 *** volatile g_1247;
    struct S1 **g_1249;
    struct S1 *** volatile g_1248;
    volatile uint32_t g_1260;
    volatile struct S1 g_1285[4][9];
    volatile struct S0 g_1294;
    volatile struct S0 g_1295;
    int64_t **g_1303;
    int32_t * volatile g_1315[2];
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
struct S0  func_1(struct S2 * p_1335);
int16_t  func_9(int16_t  p_10, int8_t  p_11, uint64_t * p_12, uint32_t  p_13, struct S2 * p_1335);
uint16_t  func_41(uint32_t  p_42, uint64_t ** p_43, uint32_t  p_44, int16_t  p_45, struct S2 * p_1335);
uint64_t ** func_47(uint32_t  p_48, uint8_t * p_49, int8_t  p_50, struct S2 * p_1335);
int8_t  func_84(uint64_t  p_85, struct S2 * p_1335);
uint64_t  func_86(uint64_t * p_87, struct S2 * p_1335);
uint64_t * func_88(int64_t * p_89, uint32_t  p_90, uint32_t  p_91, uint32_t  p_92, struct S2 * p_1335);
int64_t * func_93(uint64_t * p_94, int32_t  p_95, uint64_t  p_96, uint32_t * p_97, struct S2 * p_1335);
uint64_t * func_98(int32_t  p_99, uint8_t * p_100, uint64_t *** p_101, struct S2 * p_1335);
int32_t  func_102(int64_t * p_103, uint32_t  p_104, struct S2 * p_1335);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1335->g_3 p_1335->g_8 p_1335->g_16 p_1335->g_36 p_1335->g_19 p_1335->g_59 p_1335->g_64 p_1335->g_62 p_1335->g_76 p_1335->g_119 p_1335->g_269 p_1335->g_162 p_1335->g_150 p_1335->g_334 p_1335->g_108 p_1335->g_221 p_1335->g_533 p_1335->g_129 p_1335->g_111 p_1335->g_549 p_1335->g_577 p_1335->g_580 p_1335->g_113 p_1335->g_595 p_1335->g_597 p_1335->g_250 p_1335->g_426 p_1335->g_54 p_1335->g_149 p_1335->g_338 p_1335->g_272 p_1335->g_576 p_1335->g_285 p_1335->g_284 p_1335->g_253 p_1335->g_337 p_1335->g_247 p_1335->g_715 p_1335->g_726 p_1335->g_771 p_1335->g_802 p_1335->g_79 p_1335->g_550 p_1335->g_605 p_1335->g_900 p_1335->g_865.f3 p_1335->g_600 p_1335->g_863.f5 p_1335->g_339 p_1335->g_596 p_1335->g_865.f4 p_1335->g_716 p_1335->g_717 p_1335->g_863.f0 p_1335->g_1147 p_1335->g_1148 p_1335->g_1213 p_1335->g_1242 p_1335->g_1248 p_1335->g_1260 p_1335->g_865.f0 p_1335->g_1285 p_1335->g_1294 p_1335->g_1214 p_1335->g_1303 p_1335->g_551 p_1335->g_863.f6 p_1335->g_1295
 * writes: p_1335->g_3 p_1335->g_20 p_1335->g_36 p_1335->g_54 p_1335->g_59 p_1335->g_61 p_1335->g_63 p_1335->g_76 p_1335->g_79 p_1335->g_119 p_1335->g_64 p_1335->g_247 p_1335->g_162 p_1335->g_426 p_1335->g_577 p_1335->g_580 p_1335->g_113 p_1335->g_19 p_1335->g_600 p_1335->g_250 p_1335->g_108 p_1335->g_605 p_1335->g_149 p_1335->g_269 p_1335->g_576 p_1335->g_111 p_1335->g_272 p_1335->g_337 p_1335->g_802 p_1335->g_253 p_1335->g_865.f6 p_1335->g_597 p_1335->g_900 p_1335->g_726 p_1335->g_62 p_1335->g_596 p_1335->g_865.f4 p_1335->g_863.f5 p_1335->g_16.f3 p_1335->g_533 p_1335->g_221 p_1335->g_1214 p_1335->g_1243 p_1335->g_339 p_1335->g_1249 p_1335->g_1260 p_1335->g_865.f0 p_1335->g_1211 p_1335->g_771 p_1335->g_1295
 */
struct S0  func_1(struct S2 * p_1335)
{ /* block id: 4 */
    uint64_t *l_2 = &p_1335->g_3[0][2];
    uint64_t *l_18 = &p_1335->g_19;
    uint64_t **l_17[10];
    uint8_t *l_35 = &p_1335->g_36;
    int32_t l_46 = (-1L);
    uint32_t *l_53 = &p_1335->g_54;
    uint8_t *l_55 = (void*)0;
    uint64_t ***l_60[9] = {&p_1335->g_59,&p_1335->g_59,&p_1335->g_59,&p_1335->g_59,&p_1335->g_59,&p_1335->g_59,&p_1335->g_59,&p_1335->g_59,&p_1335->g_59};
    int64_t l_975[9];
    int32_t *l_1333[7][2][7] = {{{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46},{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46}},{{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46},{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46}},{{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46},{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46}},{{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46},{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46}},{{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46},{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46}},{{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46},{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46}},{{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46},{&l_46,&l_46,(void*)0,&p_1335->g_113,(void*)0,&l_46,&l_46}}};
    uint32_t l_1334[5][9] = {{0x22C70889L,5UL,0x7023FA17L,0x07BF0249L,0x67E6B8BBL,0x22C70889L,0x07BF0249L,4294967293UL,0x07BF0249L},{0x22C70889L,5UL,0x7023FA17L,0x07BF0249L,0x67E6B8BBL,0x22C70889L,0x07BF0249L,4294967293UL,0x07BF0249L},{0x22C70889L,5UL,0x7023FA17L,0x07BF0249L,0x67E6B8BBL,0x22C70889L,0x07BF0249L,4294967293UL,0x07BF0249L},{0x22C70889L,5UL,0x7023FA17L,0x07BF0249L,0x67E6B8BBL,0x22C70889L,0x07BF0249L,4294967293UL,0x07BF0249L},{0x22C70889L,5UL,0x7023FA17L,0x07BF0249L,0x67E6B8BBL,0x22C70889L,0x07BF0249L,4294967293UL,0x07BF0249L}};
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_17[i] = &l_18;
    for (i = 0; i < 9; i++)
        l_975[i] = 0x09AC2C6124312509L;
    l_1334[4][5] = (((-2L) || ((((*l_2)--) < (safe_lshift_func_uint16_t_u_s(p_1335->g_8, 5))) ^ (!func_9((safe_add_func_int32_t_s_s((p_1335->g_8 , (p_1335->g_16 , ((p_1335->g_20 = (void*)0) != (void*)0))), ((+(safe_sub_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(((safe_sub_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (safe_add_func_uint8_t_u_u((--(*l_35)), p_1335->g_19)))) , (safe_mul_func_uint8_t_u_u((func_41(l_46, (p_1335->g_63 = (p_1335->g_61[2][1] = (p_1335->g_59 = func_47((safe_mod_func_uint32_t_u_u(((*l_53) = l_46), p_1335->g_8)), l_55, p_1335->g_8, p_1335)))), p_1335->g_64[5], p_1335->g_16.f3, p_1335) != 0x6D68L), l_46))), l_975[5])) , p_1335->g_339), 0x1754L)), l_975[5])))), p_1335->g_16.f2))) | 0x3C7CEE8AL))), l_46, &p_1335->g_221[2], l_975[7], p_1335)))) ^ 4294967288UL);
    return p_1335->g_1295;
}


/* ------------------------------------------ */
/* 
 * reads : p_1335->g_284 p_1335->g_285 p_1335->g_108 p_1335->g_129 p_1335->g_111 p_1335->g_595 p_1335->g_596 p_1335->g_426 p_1335->g_865.f4 p_1335->g_64 p_1335->g_715 p_1335->g_716 p_1335->g_863.f5 p_1335->g_221 p_1335->g_717 p_1335->g_337 p_1335->g_863.f0 p_1335->g_16.f3 p_1335->g_119 p_1335->g_533 p_1335->g_726 p_1335->g_1147 p_1335->g_1148 p_1335->g_272 p_1335->g_802 p_1335->g_162 p_1335->g_269 p_1335->g_1213 p_1335->g_605 p_1335->g_1242 p_1335->g_1248 p_1335->g_1260 p_1335->g_865.f0 p_1335->g_54 p_1335->g_113 p_1335->g_1285 p_1335->g_771 p_1335->g_1294 p_1335->g_1214 p_1335->g_1303 p_1335->g_550 p_1335->g_551 p_1335->g_863.f6 p_1335->g_149 p_1335->g_597
 * writes: p_1335->g_108 p_1335->g_426 p_1335->g_596 p_1335->g_865.f4 p_1335->g_863.f5 p_1335->g_16.f3 p_1335->g_119 p_1335->g_36 p_1335->g_533 p_1335->g_253 p_1335->g_272 p_1335->g_269 p_1335->g_221 p_1335->g_1214 p_1335->g_605 p_1335->g_1243 p_1335->g_339 p_1335->g_600 p_1335->g_1249 p_1335->g_1260 p_1335->g_865.f0 p_1335->g_54 p_1335->g_113 p_1335->g_1211 p_1335->g_64 p_1335->g_771 p_1335->g_1295 p_1335->g_597
 */
int16_t  func_9(int16_t  p_10, int8_t  p_11, uint64_t * p_12, uint32_t  p_13, struct S2 * p_1335)
{ /* block id: 500 */
    int32_t l_988 = 0x71D34298L;
    int64_t *l_989[7];
    uint32_t l_990 = 0xBB1407F9L;
    int8_t l_995 = 1L;
    int32_t l_1002 = (-1L);
    int32_t l_1003[7];
    uint64_t *l_1151[2];
    int8_t **l_1170 = (void*)0;
    int32_t *l_1172 = &p_1335->g_337;
    struct S1 *l_1210 = &p_1335->g_1211;
    uint32_t l_1237 = 0xF13F9581L;
    int64_t **l_1305 = &l_989[1];
    int32_t *l_1317[4];
    int32_t *l_1318[4] = {&p_1335->g_426,&p_1335->g_426,&p_1335->g_426,&p_1335->g_426};
    int i;
    for (i = 0; i < 7; i++)
        l_989[i] = &p_1335->g_79;
    for (i = 0; i < 7; i++)
        l_1003[i] = (-1L);
    for (i = 0; i < 2; i++)
        l_1151[i] = &p_1335->g_1147;
    for (i = 0; i < 4; i++)
        l_1317[i] = &p_1335->g_162;
lbl_1286:
    if (((((safe_mod_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(((**p_1335->g_284)++), 0)), p_11)) & (!((safe_sub_func_int8_t_s_s(((void*)0 == p_12), ((safe_sub_func_int16_t_s_s(((void*)0 != &p_11), (safe_add_func_uint64_t_u_u(((*p_1335->g_129) , (p_13 & (l_995 &= ((~((l_990 = l_988) != (safe_rshift_func_int16_t_s_u(((safe_sub_func_uint16_t_u_u((0x73L ^ GROUP_DIVERGE(1, 1)), l_988)) > GROUP_DIVERGE(1, 1)), l_988)))) >= 0x08L)))), l_988)))) == 0x92L))) & 0x72AE60CCL))) && l_995) , 0x130E48E9L))
    { /* block id: 504 */
        int64_t l_997[7][7] = {{0x47B9A4539047D72FL,0L,0x7DDF4F5B8F48C464L,4L,0L,4L,0x7DDF4F5B8F48C464L},{0x47B9A4539047D72FL,0L,0x7DDF4F5B8F48C464L,4L,0L,4L,0x7DDF4F5B8F48C464L},{0x47B9A4539047D72FL,0L,0x7DDF4F5B8F48C464L,4L,0L,4L,0x7DDF4F5B8F48C464L},{0x47B9A4539047D72FL,0L,0x7DDF4F5B8F48C464L,4L,0L,4L,0x7DDF4F5B8F48C464L},{0x47B9A4539047D72FL,0L,0x7DDF4F5B8F48C464L,4L,0L,4L,0x7DDF4F5B8F48C464L},{0x47B9A4539047D72FL,0L,0x7DDF4F5B8F48C464L,4L,0L,4L,0x7DDF4F5B8F48C464L},{0x47B9A4539047D72FL,0L,0x7DDF4F5B8F48C464L,4L,0L,4L,0x7DDF4F5B8F48C464L}};
        int32_t l_1016[9][8] = {{0x6BFEA84DL,(-1L),0x44C6124AL,0x73CAF7CDL,0x44C6124AL,(-1L),0x6BFEA84DL,0L},{0x6BFEA84DL,(-1L),0x44C6124AL,0x73CAF7CDL,0x44C6124AL,(-1L),0x6BFEA84DL,0L},{0x6BFEA84DL,(-1L),0x44C6124AL,0x73CAF7CDL,0x44C6124AL,(-1L),0x6BFEA84DL,0L},{0x6BFEA84DL,(-1L),0x44C6124AL,0x73CAF7CDL,0x44C6124AL,(-1L),0x6BFEA84DL,0L},{0x6BFEA84DL,(-1L),0x44C6124AL,0x73CAF7CDL,0x44C6124AL,(-1L),0x6BFEA84DL,0L},{0x6BFEA84DL,(-1L),0x44C6124AL,0x73CAF7CDL,0x44C6124AL,(-1L),0x6BFEA84DL,0L},{0x6BFEA84DL,(-1L),0x44C6124AL,0x73CAF7CDL,0x44C6124AL,(-1L),0x6BFEA84DL,0L},{0x6BFEA84DL,(-1L),0x44C6124AL,0x73CAF7CDL,0x44C6124AL,(-1L),0x6BFEA84DL,0L},{0x6BFEA84DL,(-1L),0x44C6124AL,0x73CAF7CDL,0x44C6124AL,(-1L),0x6BFEA84DL,0L}};
        uint32_t l_1018 = 0xDED79199L;
        int8_t l_1127 = 1L;
        int32_t *l_1134 = (void*)0;
        struct S1 *l_1137 = &p_1335->g_865;
        uint64_t **l_1152[6];
        uint32_t l_1157 = 0xB422DE27L;
        int32_t **l_1171[10][3] = {{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134}};
        int32_t *l_1173[6];
        int i, j;
        for (i = 0; i < 6; i++)
            l_1152[i] = (void*)0;
        for (i = 0; i < 6; i++)
            l_1173[i] = &p_1335->g_576;
        (**p_1335->g_595) = p_13;
        if ((*p_1335->g_596))
        { /* block id: 506 */
            int32_t *l_996 = &p_1335->g_162;
            int32_t *l_998 = &p_1335->g_113;
            int32_t *l_999 = &p_1335->g_426;
            int32_t *l_1000 = &p_1335->g_113;
            int32_t *l_1001 = &p_1335->g_113;
            int32_t *l_1004 = &l_1003[5];
            int32_t *l_1005 = &p_1335->g_576;
            int32_t *l_1006 = (void*)0;
            int32_t *l_1007 = &l_1002;
            int32_t *l_1008 = &l_1003[5];
            int32_t *l_1009 = &p_1335->g_113;
            int32_t *l_1010 = (void*)0;
            int32_t *l_1011 = &l_1002;
            int32_t *l_1012 = &l_1003[5];
            int32_t *l_1013 = &l_1003[2];
            int32_t *l_1014 = &p_1335->g_113;
            int32_t *l_1015[5] = {&p_1335->g_426,&p_1335->g_426,&p_1335->g_426,&p_1335->g_426,&p_1335->g_426};
            int16_t l_1017 = 3L;
            int i;
            (**p_1335->g_595) = (*p_1335->g_596);
            l_1018++;
            (*p_1335->g_595) = &l_1016[8][0];
        }
        else
        { /* block id: 510 */
            uint32_t l_1042[2][3][6] = {{{4UL,0xF8FC1CC7L,4UL,4UL,0xF8FC1CC7L,4UL},{4UL,0xF8FC1CC7L,4UL,4UL,0xF8FC1CC7L,4UL},{4UL,0xF8FC1CC7L,4UL,4UL,0xF8FC1CC7L,4UL}},{{4UL,0xF8FC1CC7L,4UL,4UL,0xF8FC1CC7L,4UL},{4UL,0xF8FC1CC7L,4UL,4UL,0xF8FC1CC7L,4UL},{4UL,0xF8FC1CC7L,4UL,4UL,0xF8FC1CC7L,4UL}}};
            int8_t **l_1074 = &p_1335->g_128[3];
            int32_t l_1095 = (-9L);
            int64_t l_1096 = (-1L);
            int32_t l_1113 = (-9L);
            int32_t l_1116 = 0x3AEB252CL;
            int32_t l_1117 = 1L;
            int32_t l_1118 = 0x35383F9DL;
            uint32_t l_1119 = 2UL;
            int32_t l_1129[7] = {0x57C0CA5DL,0x4B335ED0L,0x57C0CA5DL,0x57C0CA5DL,0x4B335ED0L,0x57C0CA5DL,0x57C0CA5DL};
            uint64_t l_1130 = 18446744073709551606UL;
            uint32_t l_1144 = 0xD0A27588L;
            int i, j, k;
            for (p_1335->g_865.f4 = 0; (p_1335->g_865.f4 <= 7); p_1335->g_865.f4 += 1)
            { /* block id: 513 */
                int64_t *l_1037[8] = {&p_1335->g_16.f3,&p_1335->g_16.f3,&p_1335->g_16.f3,&p_1335->g_16.f3,&p_1335->g_16.f3,&p_1335->g_16.f3,&p_1335->g_16.f3,&p_1335->g_16.f3};
                uint64_t **l_1040 = &p_1335->g_62;
                int16_t *l_1041 = &p_1335->g_334;
                uint16_t *l_1045 = (void*)0;
                uint16_t *l_1046[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int8_t ***l_1057 = &p_1335->g_600;
                int8_t ***l_1058 = (void*)0;
                int8_t ***l_1059 = &p_1335->g_600;
                int8_t ***l_1060 = &p_1335->g_600;
                int8_t ***l_1061 = &p_1335->g_600;
                int8_t ***l_1062 = &p_1335->g_600;
                int8_t ***l_1063 = &p_1335->g_600;
                int8_t ***l_1064 = &p_1335->g_600;
                int8_t ***l_1065 = &p_1335->g_600;
                int8_t ***l_1066 = (void*)0;
                int8_t ***l_1067 = &p_1335->g_600;
                int8_t ***l_1068 = &p_1335->g_600;
                int8_t ***l_1069 = &p_1335->g_600;
                int8_t ***l_1070 = &p_1335->g_600;
                int8_t ***l_1071 = &p_1335->g_600;
                int8_t ***l_1072 = &p_1335->g_600;
                int8_t ***l_1073[5];
                int32_t l_1114 = 0x50A6507EL;
                int32_t l_1115[1];
                int i;
                for (i = 0; i < 5; i++)
                    l_1073[i] = &p_1335->g_600;
                for (i = 0; i < 1; i++)
                    l_1115[i] = 1L;
                (**p_1335->g_595) = (((void*)0 == &p_1335->g_273[5][1][2]) , ((safe_sub_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(p_1335->g_64[p_1335->g_865.f4], ((+(safe_rshift_func_uint16_t_u_s((safe_sub_func_int32_t_s_s((safe_div_func_int8_t_s_s((+((safe_rshift_func_uint8_t_u_s(((**p_1335->g_284) |= (safe_add_func_int16_t_s_s((((((&p_12 == ((safe_div_func_int32_t_s_s((l_1037[0] != &p_1335->g_900), (safe_div_func_int64_t_s_s(0x07F09EC61542B150L, (0x5D41L & ((p_11 && 1L) , p_13)))))) , l_1040)) , (*p_1335->g_715)) == l_1041) <= l_1042[0][2][2]) | 0x5DL), 1L))), p_13)) , (-1L))), p_10)), l_1042[0][2][2])), 2))) > 0x1C0AL))), 0x3581L)) ^ p_10));
                (**p_1335->g_595) = (((0UL > (safe_lshift_func_uint16_t_u_s((p_1335->g_863[1].f5--), ((safe_add_func_int64_t_s_s((safe_div_func_int16_t_s_s((safe_mul_func_int16_t_s_s(p_1335->g_64[p_1335->g_865.f4], (((l_1074 = &p_1335->g_128[1]) == (void*)0) && (((safe_lshift_func_uint16_t_u_u((l_1016[7][3] = (safe_rshift_func_int8_t_s_s(((p_11 == p_10) < ((safe_add_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((-1L), 4)), ((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((p_1335->g_426 ^ (l_1095 = (safe_lshift_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(((safe_div_func_int64_t_s_s((4294967286UL <= GROUP_DIVERGE(0, 1)), (*p_12))) | FAKE_DIVERGE(p_1335->group_0_offset, get_group_id(0), 10)), p_1335->g_64[p_1335->g_865.f4])), (**p_1335->g_715))))), l_1096)), p_1335->g_337)), 0x2BL)) || p_13))) , l_1096)), p_13))), l_990)) , p_1335->g_64[p_1335->g_865.f4]) < (*p_1335->g_285))))), p_1335->g_863[1].f0)), l_988)) || p_13)))) || l_990) != 0UL);
                for (p_1335->g_16.f3 = 0; (p_1335->g_16.f3 <= 2); p_1335->g_16.f3 += 1)
                { /* block id: 523 */
                    int32_t *l_1097 = &l_1002;
                    int32_t *l_1098 = &l_1002;
                    int32_t *l_1099 = (void*)0;
                    int32_t l_1100[2][8][6] = {{{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L}},{{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L},{0x382A5B99L,(-5L),0x6B6FCC86L,0L,(-5L),0L}}};
                    int32_t *l_1101 = &l_1016[8][6];
                    int32_t *l_1102 = (void*)0;
                    int32_t *l_1103 = &l_1016[2][0];
                    int32_t *l_1104 = (void*)0;
                    int32_t *l_1105 = &p_1335->g_576;
                    int32_t *l_1106 = &p_1335->g_162;
                    int32_t *l_1107 = &l_1016[5][4];
                    int32_t *l_1108 = &p_1335->g_576;
                    int32_t *l_1109 = &p_1335->g_113;
                    int32_t *l_1110 = (void*)0;
                    int32_t *l_1111 = &l_1100[1][3][0];
                    int32_t *l_1112[8] = {(void*)0,&p_1335->g_162,(void*)0,(void*)0,&p_1335->g_162,(void*)0,(void*)0,&p_1335->g_162};
                    int i, j, k;
                    (1 + 1);
                }
            }
            for (p_1335->g_119 = 0; (p_1335->g_119 <= 1); p_1335->g_119 += 1)
            { /* block id: 538 */
                int32_t *l_1123 = &l_1117;
                int32_t *l_1124 = &l_1003[5];
                int32_t *l_1125 = &l_1003[5];
                int32_t *l_1126[8][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
                int16_t l_1128 = 0L;
                struct S1 *l_1135[7][5] = {{&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865},{&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865},{&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865},{&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865},{&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865},{&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865},{&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865,&p_1335->g_865}};
                int i, j;
                ++l_1130;
                for (p_1335->g_36 = 0; (p_1335->g_36 <= 0); p_1335->g_36 += 1)
                { /* block id: 542 */
                    (*l_1123) ^= (*p_1335->g_596);
                    for (p_1335->g_533 = 0; (p_1335->g_533 <= 0); p_1335->g_533 += 1)
                    { /* block id: 546 */
                        int32_t *l_1133 = &p_1335->g_150[1];
                        int i, j, k;
                        l_1129[1] |= (l_1133 != (p_1335->g_726[(p_1335->g_533 + 1)][p_1335->g_119][(p_1335->g_533 + 1)] , l_1134));
                    }
                }
                for (l_1113 = 0; (l_1113 >= 0); l_1113 -= 1)
                { /* block id: 552 */
                    (**p_1335->g_595) = l_1003[5];
                    for (p_1335->g_253 = 0; (p_1335->g_253 <= 0); p_1335->g_253 += 1)
                    { /* block id: 556 */
                        struct S1 **l_1136 = &l_1135[4][1];
                        l_1137 = ((*l_1136) = l_1135[4][1]);
                    }
                }
            }
            for (p_1335->g_108 = 25; (p_1335->g_108 != 56); p_1335->g_108 = safe_add_func_int8_t_s_s(p_1335->g_108, 2))
            { /* block id: 564 */
                int32_t *l_1140 = (void*)0;
                int32_t *l_1141 = (void*)0;
                int32_t *l_1142 = (void*)0;
                int32_t *l_1143[5] = {&l_1116,&l_1116,&l_1116,&l_1116,&l_1116};
                int i;
                l_1144++;
                return p_1335->g_1147;
            }
        }
        (*p_1335->g_595) = (p_1335->g_1148 , &l_1016[3][1]);
        l_1003[5] |= ((safe_div_func_int64_t_s_s((((p_12 = l_1151[1]) == ((!(safe_add_func_int64_t_s_s((-9L), (safe_add_func_uint64_t_u_u(l_1157, (safe_rshift_func_int8_t_s_u(((((**p_1335->g_595) = ((safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(l_1157, (safe_add_func_int32_t_s_s((safe_div_func_uint64_t_u_u((l_1170 != &p_1335->g_128[2]), l_1127)), ((l_1172 = &l_988) != &p_1335->g_771))))), 0x0BL)), (*p_1335->g_129))) < p_13)) & l_995) <= l_1157), 5))))))) , (void*)0)) == 0xE4BACD73EB378F04L), l_995)) , l_1127);
    }
    else
    { /* block id: 574 */
        int16_t l_1174[4];
        int32_t l_1175 = 0x42F23C5DL;
        int32_t l_1233 = 2L;
        int32_t l_1235 = (-7L);
        int32_t l_1236 = 0x7D1097BCL;
        int8_t l_1272[6] = {0x01L,0x1CL,0x01L,0x01L,0x1CL,0x01L};
        int i;
        for (i = 0; i < 4; i++)
            l_1174[i] = 0x25A5L;
        l_1175 = (l_1174[1] > (0x4DL ^ ((*p_1335->g_285) = l_1174[1])));
        if (p_1335->g_1147)
            goto lbl_1286;
        for (p_1335->g_272 = 2; (p_1335->g_272 <= 6); p_1335->g_272 += 1)
        { /* block id: 579 */
            uint16_t *l_1208 = &p_1335->g_269;
            struct S1 *l_1209 = &p_1335->g_863[1];
            int32_t *l_1212[3][8] = {{&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5]},{&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5]},{&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5],&l_1003[5]}};
            int i, j;
            (**p_1335->g_595) ^= (safe_lshift_func_uint8_t_u_s(p_1335->g_802[p_1335->g_272], 3));
            l_1003[5] |= (safe_mod_func_int8_t_s_s((((*p_12) = (((safe_div_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u(((*l_1208) ^= (safe_rshift_func_int16_t_s_s((safe_mod_func_int64_t_s_s((safe_lshift_func_int16_t_s_s((-1L), 7)), FAKE_DIVERGE(p_1335->global_1_offset, get_global_id(1), 10))), (+((safe_add_func_uint8_t_u_u((FAKE_DIVERGE(p_1335->local_1_offset, get_local_id(1), 10) && 0UL), ((safe_rshift_func_int8_t_s_u(((safe_mul_func_uint16_t_u_u((safe_div_func_int8_t_s_s(((0x24FA6B39L > 6UL) == 0xD8L), p_13)), ((safe_sub_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((p_1335->g_162 ^ (safe_add_func_uint32_t_u_u(0UL, (((p_10 > (**p_1335->g_715)) , 7L) || l_1175)))) != p_11), p_1335->g_64[0])), 1L)) < (*p_12)))) >= GROUP_DIVERGE(0, 1)), l_990)) | p_11))) , p_1335->g_802[p_1335->g_272]))))), 0x3B6BL)) , 0UL), FAKE_DIVERGE(p_1335->local_1_offset, get_local_id(1), 10))) || (**p_1335->g_715)), FAKE_DIVERGE(p_1335->global_0_offset, get_global_id(0), 10))), l_1175)) , l_1209) != l_1210)) && 1UL), p_13));
            (*p_1335->g_1213) = &p_1335->g_863[1];
        }
        for (p_1335->g_533 = (-3); (p_1335->g_533 != 8); p_1335->g_533 = safe_add_func_uint32_t_u_u(p_1335->g_533, 1))
        { /* block id: 588 */
            int64_t l_1225 = 0x6A9B79C5FA8AD47DL;
            int32_t l_1226 = 0x5DE78F2EL;
            int32_t l_1229 = 0L;
            int32_t l_1231 = 4L;
            int32_t l_1232[4] = {8L,8L,8L,8L};
            int8_t **l_1245 = &p_1335->g_129;
            int8_t *l_1281 = &l_1272[3];
            int i;
            if (p_10)
            { /* block id: 589 */
                int32_t l_1223 = 1L;
                int32_t l_1227 = 0x3B300808L;
                int32_t l_1234 = (-1L);
                for (l_995 = 5; (l_995 >= 3); l_995 -= 1)
                { /* block id: 592 */
                    uint16_t l_1217[6][3] = {{0x7C11L,0x02CCL,0x16DDL},{0x7C11L,0x02CCL,0x16DDL},{0x7C11L,0x02CCL,0x16DDL},{0x7C11L,0x02CCL,0x16DDL},{0x7C11L,0x02CCL,0x16DDL},{0x7C11L,0x02CCL,0x16DDL}};
                    int32_t l_1224 = 5L;
                    int32_t l_1228 = 0x684FCE8DL;
                    int32_t l_1230[3];
                    int32_t **l_1240 = &l_1172;
                    int32_t ***l_1241 = &l_1240;
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_1230[i] = 0x3570E352L;
                    for (p_1335->g_108 = 0; (p_1335->g_108 <= 8); p_1335->g_108 += 1)
                    { /* block id: 595 */
                        int32_t *l_1220 = &p_1335->g_426;
                        int32_t *l_1221 = &p_1335->g_576;
                        int32_t *l_1222[3][10][3] = {{{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426}},{{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426}},{{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426},{&l_1175,&l_1175,&p_1335->g_426}}};
                        int i, j, k;
                        p_1335->g_605[(l_995 + 3)] = (FAKE_DIVERGE(p_1335->global_2_offset, get_global_id(2), 10) , p_1335->g_605[(l_995 + 1)]);
                        ++l_1217[0][0];
                        ++l_1237;
                    }
                    (*p_1335->g_1242) = ((*l_1241) = l_1240);
                    return (**p_1335->g_715);
                }
                (*p_1335->g_595) = &l_1003[3];
                return p_11;
            }
            else
            { /* block id: 606 */
                uint32_t l_1250 = 8UL;
                for (p_1335->g_339 = 0; (p_1335->g_339 <= 7); p_1335->g_339 += 1)
                { /* block id: 609 */
                    int8_t ***l_1246 = &p_1335->g_600;
                    (*l_1246) = l_1245;
                    for (l_1236 = 6; (l_1236 >= 0); l_1236 -= 1)
                    { /* block id: 613 */
                        (*p_1335->g_1248) = &p_1335->g_1214;
                        (*p_1335->g_595) = (void*)0;
                        if (l_1250)
                            continue;
                    }
                    if (p_13)
                        break;
                }
            }
            for (l_995 = 26; (l_995 <= 4); l_995--)
            { /* block id: 623 */
                int32_t l_1255 = 0L;
                int32_t l_1258 = 0x5ADBCE8CL;
                int32_t l_1259[1][10] = {{(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)}};
                uint32_t l_1282 = 4294967295UL;
                int i, j;
                for (l_1175 = 0; (l_1175 <= 8); l_1175 = safe_add_func_uint16_t_u_u(l_1175, 9))
                { /* block id: 626 */
                    int32_t *l_1256 = &p_1335->g_113;
                    int32_t *l_1257[9];
                    volatile int16_t **l_1265 = &p_1335->g_716;
                    int64_t l_1268 = 7L;
                    int i;
                    for (i = 0; i < 9; i++)
                        l_1257[i] = &p_1335->g_576;
                    --p_1335->g_1260;
                    for (p_1335->g_865.f0 = 0; (p_1335->g_865.f0 >= 8); p_1335->g_865.f0++)
                    { /* block id: 630 */
                        l_1255 |= 0x1A03737DL;
                        l_1265 = &p_1335->g_716;
                    }
                    for (p_1335->g_54 = 6; (p_1335->g_54 < 21); p_1335->g_54 = safe_add_func_int32_t_s_s(p_1335->g_54, 4))
                    { /* block id: 636 */
                        uint32_t *l_1271 = &l_1237;
                        l_1272[4] ^= ((*l_1256) = ((*p_12) & ((l_1268 & ((p_11 = p_11) && (safe_mod_func_int64_t_s_s(0x08798BAC55286F1FL, 1UL)))) >= ((*l_1271) &= p_10))));
                        (*l_1256) |= (-1L);
                        l_1226 = ((((safe_div_func_int8_t_s_s((safe_div_func_uint16_t_u_u(p_1335->g_108, p_1335->g_221[0])), (safe_sub_func_int8_t_s_s((-1L), (l_1232[3] & FAKE_DIVERGE(p_1335->local_1_offset, get_local_id(1), 10)))))) >= (safe_add_func_int16_t_s_s(((l_1271 == l_1271) < (l_1281 != (void*)0)), (((65530UL | 0x2BEBL) && 18446744073709551613UL) ^ (*l_1256))))) | 0xB1L) , l_1255);
                    }
                    --l_1282;
                }
            }
        }
        (*l_1210) = p_1335->g_1285[0][4];
    }
    if (l_1237)
    { /* block id: 651 */
        return p_13;
    }
    else
    { /* block id: 653 */
        int32_t l_1287 = (-1L);
        uint32_t *l_1288 = &p_1335->g_64[3];
        int32_t *l_1289 = (void*)0;
        int32_t *l_1290 = (void*)0;
        int32_t l_1291[1];
        struct S1 *l_1296 = &p_1335->g_863[1];
        int64_t **l_1302 = (void*)0;
        int32_t *l_1316[9][10][1] = {{{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576}},{{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576}},{{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576}},{{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576}},{{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576}},{{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576}},{{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576}},{{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576}},{{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576},{&p_1335->g_576}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1291[i] = (-3L);
        l_1291[0] ^= (l_1287 , (l_1287 != ((*l_1288) ^= l_1287)));
        for (p_1335->g_771 = (-26); (p_1335->g_771 != (-23)); p_1335->g_771 = safe_add_func_uint8_t_u_u(p_1335->g_771, 7))
        { /* block id: 658 */
            int16_t l_1301 = 0x498FL;
            int64_t ***l_1304 = (void*)0;
            int64_t **l_1306 = &l_989[1];
            uint16_t *l_1307 = &p_1335->g_1211.f5;
            int16_t *l_1312 = &p_1335->g_597;
            int64_t *l_1313 = &p_1335->g_1211.f0;
            int32_t *l_1314 = &l_1003[5];
            p_1335->g_1295 = p_1335->g_1294;
            l_1296 = (*p_1335->g_1213);
            (*l_1314) = (safe_add_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((((l_1301 , (-6L)) != (l_1302 != (l_1305 = p_1335->g_1303))) >= ((*l_1307) = (((*l_1306) = &p_1335->g_79) == (void*)0))), 5)), ((*l_1313) = ((safe_rshift_func_int16_t_s_u(((*l_1312) = ((0x5911DBEFA2CB1321L == (safe_sub_func_int64_t_s_s(0L, l_1301))) , 1L)), 5)) > 2UL))));
        }
        l_1002 |= l_1003[5];
        l_1003[5] ^= l_988;
    }
    if (((l_1318[0] = (l_1317[1] = &p_1335->g_113)) == (void*)0))
    { /* block id: 673 */
        uint16_t l_1322 = 0xCAD5L;
        int32_t l_1323 = 0x5E3BC10DL;
        int32_t l_1330 = (-1L);
        uint8_t l_1331[6] = {1UL,1UL,1UL,1UL,1UL,1UL};
        int i;
        l_1331[1] = ((((safe_lshift_func_uint8_t_u_u(((l_1322 = (0x6B4C348DL > (safe_unary_minus_func_uint16_t_u(p_11)))) >= ((l_1323 ^= 5L) < ((safe_rshift_func_uint8_t_u_u(((p_13 | 0L) , ((safe_mod_func_int16_t_s_s(((((*p_1335->g_550) == ((((p_1335->g_863[1].f6 && (safe_add_func_int64_t_s_s((((l_1330 == (((**p_1335->g_284) <= (*p_1335->g_285)) == p_13)) , p_10) || 0xCDB1FD29L), 0x0320C3A5E9496D8CL))) | p_13) | p_1335->g_149) , &p_12)) && 0x35B6D06BDFDF1FDCL) <= (**p_1335->g_284)), p_13)) , p_13)), l_1330)) , l_1330))), p_13)) > 0x9751L) <= p_1335->g_597) <= 0x53C3L);
        return l_1322;
    }
    else
    { /* block id: 678 */
        int32_t **l_1332[3];
        int i;
        for (i = 0; i < 3; i++)
            l_1332[i] = &l_1318[0];
        (*p_1335->g_595) = (p_1335->g_605[5] = (void*)0);
        return (**p_1335->g_715);
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1335->g_62 p_1335->g_19 p_1335->g_8 p_1335->g_36 p_1335->g_76 p_1335->g_119 p_1335->g_64 p_1335->g_269 p_1335->g_162 p_1335->g_150 p_1335->g_334 p_1335->g_108 p_1335->g_221 p_1335->g_533 p_1335->g_129 p_1335->g_111 p_1335->g_549 p_1335->g_577 p_1335->g_580 p_1335->g_113 p_1335->g_595 p_1335->g_597 p_1335->g_250 p_1335->g_426 p_1335->g_54 p_1335->g_149 p_1335->g_338 p_1335->g_272 p_1335->g_576 p_1335->g_285 p_1335->g_284 p_1335->g_253 p_1335->g_337 p_1335->g_247 p_1335->g_715 p_1335->g_726 p_1335->g_771 p_1335->g_16.f3 p_1335->g_802 p_1335->g_79 p_1335->g_550 p_1335->g_605 p_1335->g_16.f2 p_1335->g_900 p_1335->g_865.f3 p_1335->g_600 p_1335->g_863.f5
 * writes: p_1335->g_36 p_1335->g_76 p_1335->g_79 p_1335->g_119 p_1335->g_64 p_1335->g_247 p_1335->g_162 p_1335->g_426 p_1335->g_577 p_1335->g_580 p_1335->g_113 p_1335->g_19 p_1335->g_600 p_1335->g_250 p_1335->g_108 p_1335->g_54 p_1335->g_605 p_1335->g_149 p_1335->g_269 p_1335->g_576 p_1335->g_111 p_1335->g_272 p_1335->g_337 p_1335->g_802 p_1335->g_253 p_1335->g_865.f6 p_1335->g_597 p_1335->g_900 p_1335->g_726 p_1335->g_62
 */
uint16_t  func_41(uint32_t  p_42, uint64_t ** p_43, uint32_t  p_44, int16_t  p_45, struct S2 * p_1335)
{ /* block id: 15 */
    uint8_t *l_71 = &p_1335->g_36;
    uint64_t ***l_74 = &p_1335->g_59;
    int8_t *l_75 = &p_1335->g_76;
    int32_t l_77 = 0x3053AAA0L;
    int64_t *l_78 = &p_1335->g_79;
    int32_t l_731 = 0x5A2677FBL;
    int16_t l_757 = (-1L);
    int32_t l_786 = 0L;
    int32_t l_812 = (-9L);
    int32_t l_813[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
    uint64_t l_966 = 0x9CFC37BE35C2A6FDL;
    int i;
    if ((p_45 < ((*p_1335->g_62) < ((*l_78) = ((p_1335->g_8 & 0x7EL) , ((0x68BE3E2CL ^ 0x443DA4AAL) == (((safe_rshift_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) , (((safe_div_func_int32_t_s_s((((safe_add_func_uint8_t_u_u((((*l_71) &= p_42) != 0x7BL), ((*l_75) &= (safe_add_func_int64_t_s_s(((void*)0 != l_74), (-5L)))))) , (void*)0) != l_71), 0x777832D1L)) && p_45) | l_77)), 7)) < p_44) != p_44)))))))
    { /* block id: 19 */
        int64_t *l_105 = (void*)0;
        int32_t l_106 = 9L;
        uint8_t *l_107 = &p_1335->g_108;
        uint8_t **l_109 = &l_107;
        uint64_t ***l_110 = &p_1335->g_61[2][1];
        uint32_t *l_490 = &p_1335->g_64[1];
        int32_t *l_685 = &p_1335->g_576;
        int16_t *l_712 = &p_1335->g_250;
        int16_t **l_711 = &l_712;
        int32_t l_728 = 0x625DE7DFL;
        int32_t *l_741 = (void*)0;
        if (((*l_685) = (l_77 | (safe_lshift_func_uint8_t_u_s((--(*l_71)), func_84(func_86(func_88(func_93(func_98(func_102(l_105, l_106, p_1335), ((*l_109) = l_107), l_110, p_1335), (((*l_490) |= l_77) | 3L), p_42, l_490, p_1335), p_42, l_77, p_1335->g_150[0], p_1335), p_1335), p_1335))))))
        { /* block id: 309 */
            uint16_t *l_690 = &p_1335->g_119;
            uint32_t *l_693[8] = {(void*)0,&p_1335->g_64[2],(void*)0,(void*)0,&p_1335->g_64[2],(void*)0,(void*)0,&p_1335->g_64[2]};
            int32_t *l_694 = (void*)0;
            int32_t *l_695[8][2][7] = {{{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0},{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0}},{{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0},{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0}},{{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0},{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0}},{{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0},{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0}},{{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0},{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0}},{{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0},{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0}},{{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0},{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0}},{{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0},{&p_1335->g_113,&l_77,&l_106,&p_1335->g_426,(void*)0,&l_77,(void*)0}}};
            uint32_t l_696[9][8][2] = {{{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL}},{{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL}},{{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL}},{{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL}},{{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL}},{{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL}},{{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL}},{{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL}},{{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL},{0UL,4294967286UL}}};
            int32_t *l_700 = &l_106;
            int32_t **l_725 = &p_1335->g_605[6];
            int32_t ***l_724 = &l_725;
            uint32_t l_727 = 1UL;
            int i, j, k;
            l_696[1][1][0] &= ((*l_685) = ((safe_add_func_uint16_t_u_u((++(*l_690)), (*l_685))) != (l_693[4] == (GROUP_DIVERGE(0, 1) , l_693[6]))));
            for (p_1335->g_76 = 0; (p_1335->g_76 == (-13)); --p_1335->g_76)
            { /* block id: 315 */
                for (p_1335->g_337 = 0; (p_1335->g_337 <= 2); p_1335->g_337 += 1)
                { /* block id: 318 */
                    int32_t **l_699 = &l_685;
                    (*l_699) = (void*)0;
                    for (p_1335->g_149 = 0; (p_1335->g_149 <= 9); p_1335->g_149 += 1)
                    { /* block id: 322 */
                        int i;
                        return p_1335->g_221[(p_1335->g_337 + 6)];
                    }
                }
                l_685 = l_700;
                if (p_44)
                    continue;
                for (p_1335->g_108 = 0; (p_1335->g_108 <= 9); p_1335->g_108 += 1)
                { /* block id: 330 */
                    int32_t *l_703 = &p_1335->g_113;
                    int i;
                    (*l_700) |= (p_1335->g_221[p_1335->g_108] , p_45);
                    for (p_1335->g_247 = 0; (p_1335->g_247 < 22); p_1335->g_247 = safe_add_func_int32_t_s_s(p_1335->g_247, 1))
                    { /* block id: 334 */
                        int32_t **l_704 = &l_703;
                        (*l_704) = l_703;
                    }
                }
            }
            l_728 &= (((safe_rshift_func_uint8_t_u_s((((p_1335->g_272 = (((p_45 , (safe_mod_func_uint64_t_u_u(l_77, (*p_1335->g_62)))) && (safe_sub_func_uint8_t_u_u((l_711 == ((safe_sub_func_int32_t_s_s(p_44, (*l_685))) , p_1335->g_715)), (((safe_rshift_func_int16_t_s_u(((safe_mod_func_int64_t_s_s((FAKE_DIVERGE(p_1335->global_1_offset, get_global_id(1), 10) | p_42), (safe_div_func_uint8_t_u_u((l_724 != (void*)0), p_44)))) , 0x31FBL), p_1335->g_533)) > 0x5FL) ^ (*l_685))))) || p_1335->g_726[0][0][3])) , p_42) >= p_45), l_727)) && p_42) , l_77);
            for (p_1335->g_247 = 1; (p_1335->g_247 >= (-13)); p_1335->g_247--)
            { /* block id: 343 */
                uint32_t l_732[5][4] = {{0xFC3512A8L,0x4572C843L,0x08D66487L,4294967286UL},{0xFC3512A8L,0x4572C843L,0x08D66487L,4294967286UL},{0xFC3512A8L,0x4572C843L,0x08D66487L,4294967286UL},{0xFC3512A8L,0x4572C843L,0x08D66487L,4294967286UL},{0xFC3512A8L,0x4572C843L,0x08D66487L,4294967286UL}};
                int i, j;
                l_732[0][0]++;
            }
        }
        else
        { /* block id: 346 */
            int32_t l_752[8][10][2] = {{{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL}},{{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL}},{{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL}},{{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL}},{{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL}},{{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL}},{{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL}},{{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL},{0x34CDA722L,0x7FD2EE9BL}}};
            int32_t *l_758 = &l_731;
            int32_t *l_759 = &l_728;
            int i, j, k;
            (*l_759) ^= ((safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_1335->global_1_offset, get_global_id(1), 10), l_77)) , ((*l_758) &= (safe_div_func_uint16_t_u_u(((l_77 != ((safe_lshift_func_uint16_t_u_s((l_741 != ((safe_lshift_func_uint8_t_u_s((((safe_lshift_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((p_44 <= (safe_add_func_int32_t_s_s(((((p_44 > ((((l_752[6][0][1] , (safe_div_func_uint16_t_u_u(p_44, ((safe_rshift_func_uint8_t_u_u((**p_1335->g_284), 1)) && ((*l_685) , FAKE_DIVERGE(p_1335->local_2_offset, get_local_id(2), 10)))))) , l_752[6][0][1]) >= (*l_685)) && 1UL)) != p_42) != l_752[6][0][1]) == p_1335->g_119), 0x08E67622L))), 2)), l_752[6][0][1])) < p_45), 9)) & l_757) , (*p_1335->g_285)), p_42)) , &p_1335->g_150[1])), 7)) <= (-10L))) & p_45), FAKE_DIVERGE(p_1335->group_0_offset, get_group_id(0), 10)))));
        }
        l_731 = l_731;
    }
    else
    { /* block id: 351 */
        int64_t l_788 = 5L;
        int8_t l_792 = 0x36L;
        int32_t l_799 = 0x6DFFE832L;
        int32_t l_810 = (-2L);
        int32_t l_811[3][7][5] = {{{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L}},{{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L}},{{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L},{0L,0x49CAC10CL,0x117A6C94L,(-1L),0x117A6C94L}}};
        int16_t l_814 = 0x4BE7L;
        uint32_t l_815 = 0x79EE011AL;
        uint32_t *l_908 = &l_815;
        int8_t ***l_921 = &p_1335->g_600;
        uint8_t *l_926[7];
        uint8_t **l_946 = &l_926[5];
        uint8_t **l_952[3];
        uint64_t *l_970 = &p_1335->g_253;
        uint32_t **l_974 = &l_908;
        uint32_t ***l_973 = &l_974;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_926[i] = (void*)0;
        for (i = 0; i < 3; i++)
            l_952[i] = &p_1335->g_285;
        for (p_1335->g_247 = 0; (p_1335->g_247 <= 2); p_1335->g_247 += 1)
        { /* block id: 354 */
            uint32_t *l_761[9][3][7] = {{{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54}},{{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54}},{{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54}},{{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54}},{{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54}},{{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54}},{{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54}},{{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54}},{{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54},{&p_1335->g_54,&p_1335->g_54,&p_1335->g_8,&p_1335->g_64[2],&p_1335->g_64[2],&p_1335->g_64[5],&p_1335->g_54}}};
            uint32_t **l_760 = &l_761[0][2][5];
            uint8_t l_785 = 0UL;
            int32_t l_787 = (-1L);
            int32_t l_793[3][6][6] = {{{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L}},{{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L}},{{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L},{0x1345424AL,(-9L),0x3649AB02L,0x523EFF9CL,0x6A525841L,0x6A525841L}}};
            uint32_t l_833 = 8UL;
            uint32_t l_860 = 0xD56BC953L;
            uint16_t *l_878 = (void*)0;
            int8_t l_947 = 5L;
            uint8_t l_958 = 0x93L;
            int i, j, k;
            if (((void*)0 != l_760))
            { /* block id: 355 */
                int8_t l_766 = (-1L);
                int32_t l_798[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_798[i] = 7L;
                if (((safe_add_func_uint64_t_u_u(0x1D89CA1D6FA7C6B1L, ((safe_lshift_func_int16_t_s_u((l_766 | p_1335->g_221[4]), 9)) >= ((safe_rshift_func_int8_t_s_u((safe_mod_func_uint8_t_u_u(((8UL & p_42) != l_766), (p_44 && 0x66E7799FL))), ((*p_1335->g_285) = ((*l_71) = (p_1335->g_771 , p_44))))) && 1UL)))) & 1UL))
                { /* block id: 358 */
                    int64_t l_774 = 6L;
                    l_787 = (l_731 = (((safe_div_func_uint64_t_u_u(2UL, p_45)) | l_774) , ((0L >= p_1335->g_64[5]) , (safe_sub_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u(0xD36FBDC5L, ((safe_div_func_uint64_t_u_u(((((safe_add_func_uint16_t_u_u(p_45, 0x2880L)) >= ((safe_mul_func_uint8_t_u_u((18446744073709551615UL && l_785), l_786)) & GROUP_DIVERGE(1, 1))) ^ (*p_1335->g_62)) & p_1335->g_16.f3), l_774)) <= p_45))) | p_1335->g_272), 0UL)))));
                    return p_1335->g_150[1];
                }
                else
                { /* block id: 362 */
                    int8_t l_800 = 1L;
                    int32_t l_801[8] = {1L,0x07FA7021L,1L,1L,0x07FA7021L,1L,1L,0x07FA7021L};
                    int32_t **l_805 = &p_1335->g_605[5];
                    int i;
                    for (l_77 = 0; (l_77 <= 2); l_77 += 1)
                    { /* block id: 365 */
                        int32_t *l_789 = &l_787;
                        int32_t *l_790 = &p_1335->g_576;
                        int32_t *l_791 = &p_1335->g_113;
                        int32_t *l_794 = (void*)0;
                        int32_t *l_795 = &p_1335->g_576;
                        int32_t *l_796 = &p_1335->g_162;
                        int32_t *l_797[1][1][2];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 2; k++)
                                    l_797[i][j][k] = (void*)0;
                            }
                        }
                        p_1335->g_802[6]--;
                    }
                    (*l_805) = &p_1335->g_113;
                }
                l_793[2][4][3] = ((void*)0 == &p_1335->g_550);
            }
            else
            { /* block id: 371 */
                int32_t *l_806 = &p_1335->g_426;
                int32_t *l_807 = &l_731;
                int32_t *l_808 = &p_1335->g_113;
                int32_t *l_809[5][6] = {{&p_1335->g_576,(void*)0,&l_77,&l_731,&l_77,(void*)0},{&p_1335->g_576,(void*)0,&l_77,&l_731,&l_77,(void*)0},{&p_1335->g_576,(void*)0,&l_77,&l_731,&l_77,(void*)0},{&p_1335->g_576,(void*)0,&l_77,&l_731,&l_77,(void*)0},{&p_1335->g_576,(void*)0,&l_77,&l_731,&l_77,(void*)0}};
                uint64_t **l_839 = (void*)0;
                int i, j;
                l_815--;
                (*l_808) = p_45;
                if ((((*l_78) |= p_45) >= ((*l_807) , (safe_mod_func_uint32_t_u_u((safe_unary_minus_func_int16_t_s((*l_808))), (safe_mul_func_uint16_t_u_u(((*l_807) >= ((safe_mul_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_u(l_793[2][1][3], (+FAKE_DIVERGE(p_1335->global_1_offset, get_global_id(1), 10)))) != ((p_45 & (0x4EL != (((void*)0 != (*p_1335->g_549)) < FAKE_DIVERGE(p_1335->local_0_offset, get_local_id(0), 10)))) || p_44)), p_1335->g_334)), 0x707DL)) >= p_42)), p_1335->g_533)))))))
                { /* block id: 375 */
                    (*l_807) = (safe_unary_minus_func_uint64_t_u((++(*p_1335->g_62))));
                }
                else
                { /* block id: 378 */
                    int32_t **l_832[1];
                    uint32_t l_836[3];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_832[i] = &l_809[0][4];
                    for (i = 0; i < 3; i++)
                        l_836[i] = 0x4499A0C2L;
                    l_806 = &l_793[2][4][3];
                    for (p_1335->g_113 = 2; (p_1335->g_113 >= 0); p_1335->g_113 -= 1)
                    { /* block id: 382 */
                        ++l_833;
                    }
                    --l_836[0];
                    for (p_1335->g_149 = 0; (p_1335->g_149 <= 2); p_1335->g_149 += 1)
                    { /* block id: 388 */
                        int i;
                        l_793[2][4][3] = ((p_1335->g_605[(p_1335->g_247 + 1)] != (((void*)0 != l_839) , &p_1335->g_771)) ^ (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1335->group_1_offset, get_group_id(1), 10), p_44)));
                    }
                }
            }
            for (p_1335->g_426 = 0; (p_1335->g_426 <= 2); p_1335->g_426 += 1)
            { /* block id: 395 */
                int32_t *l_842 = (void*)0;
                int32_t *l_843 = &l_786;
                uint16_t *l_849 = &p_1335->g_269;
                (*l_843) = p_45;
                if ((safe_mod_func_uint8_t_u_u((((l_812 ^ p_44) && l_812) <= ((*l_78) = l_788)), (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_uint16_t_u(((*l_849)++))), (p_44 >= (((l_811[0][4][1] < (((safe_sub_func_int64_t_s_s(p_44, (safe_mod_func_int16_t_s_s(((safe_mod_func_int64_t_s_s((*l_843), (safe_rshift_func_int16_t_s_u((((-1L) | GROUP_DIVERGE(1, 1)) && p_44), 9)))) , 5L), p_1335->g_247)))) != l_860) != p_42)) <= (*l_843)) < (-1L))))))))
                { /* block id: 399 */
                    for (p_1335->g_76 = 0; p_1335->g_76 < 8; p_1335->g_76 += 1)
                    {
                        p_1335->g_64[p_1335->g_76] = 0UL;
                    }
                }
                else
                { /* block id: 401 */
                    for (p_1335->g_19 = 0; (p_1335->g_19 <= 2); p_1335->g_19 += 1)
                    { /* block id: 404 */
                        return p_1335->g_16.f2;
                    }
                }
                for (p_1335->g_253 = 0; (p_1335->g_253 <= 2); p_1335->g_253 += 1)
                { /* block id: 410 */
                    for (p_1335->g_162 = 2; (p_1335->g_162 >= 0); p_1335->g_162 -= 1)
                    { /* block id: 413 */
                        (*l_843) ^= p_42;
                    }
                }
            }
            for (p_1335->g_76 = 0; (p_1335->g_76 <= 2); p_1335->g_76 += 1)
            { /* block id: 420 */
                int32_t **l_861 = &p_1335->g_605[0];
                uint8_t *l_871 = &l_785;
                uint64_t *l_885 = &p_1335->g_726[0][0][3];
                int i, j;
                (*l_861) = (void*)0;
                for (p_1335->g_580 = 0; (p_1335->g_580 <= 5); p_1335->g_580 += 1)
                { /* block id: 424 */
                    struct S1 *l_864 = &p_1335->g_865;
                    int32_t l_872 = 1L;
                    uint64_t *l_887 = (void*)0;
                    uint64_t *l_902 = (void*)0;
                    int32_t *l_904 = &l_793[2][4][3];
                    int32_t *l_905 = (void*)0;
                    int32_t *l_906 = &l_77;
                    int i;
                    for (p_1335->g_108 = 3; (p_1335->g_108 <= 8); p_1335->g_108 += 1)
                    { /* block id: 427 */
                        struct S1 *l_862[1];
                        int16_t *l_868 = &p_1335->g_865.f6;
                        int16_t *l_869 = &p_1335->g_597;
                        int16_t l_870[2][2][4] = {{{0x32E6L,0x32E6L,0x32E6L,0x32E6L},{0x32E6L,0x32E6L,0x32E6L,0x32E6L}},{{0x32E6L,0x32E6L,0x32E6L,0x32E6L},{0x32E6L,0x32E6L,0x32E6L,0x32E6L}}};
                        uint64_t *l_886 = &p_1335->g_802[4];
                        int32_t l_897 = 0x048DF74CL;
                        int32_t l_898 = 0L;
                        int64_t *l_899 = &p_1335->g_900;
                        int32_t l_901 = 0x6CDEEF8CL;
                        uint64_t **l_903 = &p_1335->g_62;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_862[i] = &p_1335->g_863[1];
                        l_864 = l_862[0];
                        l_872 ^= (((safe_sub_func_int16_t_s_s(0x2939L, (l_870[0][1][1] = ((*l_869) = ((*l_868) = l_813[(p_1335->g_247 + 2)]))))) , (*p_1335->g_284)) == (p_1335->g_338[(p_1335->g_580 + 1)][(p_1335->g_247 + 1)] , l_871));
                        l_810 ^= (p_42 < ((safe_unary_minus_func_int64_t_s((((*l_868) = (safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((l_878 != &p_1335->g_269), (+(safe_add_func_uint16_t_u_u((~l_813[6]), (l_833 && (safe_add_func_uint8_t_u_u(((safe_mod_func_uint64_t_u_u((((p_45 = ((l_887 = (l_886 = l_885)) != ((*l_903) = ((((*l_885) = (l_901 = (((l_811[0][4][1] ^= ((*l_899) ^= (safe_add_func_int16_t_s_s(0L, (l_793[2][4][3] = (((safe_unary_minus_func_int8_t_s((safe_div_func_uint32_t_u_u((l_898 = (l_897 = (safe_mod_func_int64_t_s_s(((safe_mod_func_int32_t_s_s(l_793[2][4][3], FAKE_DIVERGE(p_1335->global_0_offset, get_global_id(0), 10))) < (((p_1335->g_338[(p_1335->g_580 + 1)][(p_1335->g_247 + 1)] == 0xBE06B6BFL) == 18446744073709551611UL) < p_45)), (-1L))))), l_785)))) != p_42) != l_757)))))) , 8L) <= p_1335->g_149))) == p_44) , l_902)))) , 3UL) >= 9L), p_1335->g_338[(p_1335->g_580 + 1)][(p_1335->g_247 + 1)])) && (-7L)), (*p_1335->g_285))))))))), (*p_1335->g_129)))) ^ p_1335->g_533))) || p_1335->g_865.f3));
                    }
                    (*l_906) ^= ((*l_904) = l_813[(p_1335->g_76 + 2)]);
                }
                return p_1335->g_338[(p_1335->g_76 + 2)][(p_1335->g_247 + 2)];
            }
            for (l_757 = 2; (l_757 >= 0); l_757 -= 1)
            { /* block id: 454 */
                int32_t **l_907 = &p_1335->g_605[5];
                (*l_907) = &p_1335->g_576;
                if ((l_908 != &p_1335->g_8))
                { /* block id: 456 */
                    uint32_t l_922 = 4294967293UL;
                    uint32_t l_923 = 0x239F5B71L;
                    (**l_907) = (~((((*l_908)--) < ((((0x32D4L & ((safe_sub_func_int32_t_s_s((((safe_mod_func_int16_t_s_s(l_792, (p_1335->g_334 , (safe_div_func_int32_t_s_s(((safe_sub_func_uint8_t_u_u(p_44, (**p_1335->g_284))) , (((safe_rshift_func_uint8_t_u_s(((**p_1335->g_284) = (((((((l_921 != &p_1335->g_600) , (**p_1335->g_600)) | FAKE_DIVERGE(p_1335->local_1_offset, get_local_id(1), 10)) , (l_811[0][2][3] >= p_1335->g_221[7])) & l_757) , 0x05C2L) <= l_787)), (**p_1335->g_600))) && p_42) <= 8L)), p_44))))) >= 0UL) <= l_833), 0x43F4CA48L)) ^ l_922)) , 0x7AFEB357L) ^ p_45) , l_923)) | 0x6A3CL));
                }
                else
                { /* block id: 460 */
                    int64_t l_935 = 9L;
                    if ((((l_788 , (void*)0) == l_926[5]) <= ((((0x2E5DL ^ (l_793[2][4][3] < ((~(((+(((safe_lshift_func_int16_t_s_u(((safe_rshift_func_uint16_t_u_u(p_45, p_45)) , (~(safe_mul_func_int16_t_s_s((l_811[0][4][1] < (safe_rshift_func_int8_t_s_s((~(*p_1335->g_129)), 5))), 1L)))), 14)) , (**l_907)) >= p_44)) , p_45) < l_935)) , l_935))) >= l_833) , l_793[2][5][1]) == 1L)))
                    { /* block id: 461 */
                        int32_t *l_943[5][2];
                        int i, j;
                        for (i = 0; i < 5; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_943[i][j] = &p_1335->g_113;
                        }
                        (**l_907) = ((safe_mod_func_uint8_t_u_u(0xDDL, (safe_mod_func_int8_t_s_s((safe_unary_minus_func_int32_t_s(p_45)), ((((void*)0 == &p_45) || (safe_add_func_int16_t_s_s((l_943[4][1] == (void*)0), ((safe_mul_func_uint16_t_u_u(((l_946 = &p_1335->g_285) != &l_926[5]), l_947)) , 0x710BL)))) , p_42))))) > p_1335->g_900);
                        if (p_42)
                            continue;
                    }
                    else
                    { /* block id: 465 */
                        uint32_t l_948[1][2][6] = {{{0x62D7C96EL,0x1D42B124L,1UL,0x1D42B124L,0x62D7C96EL,0x62D7C96EL},{0x62D7C96EL,0x1D42B124L,1UL,0x1D42B124L,0x62D7C96EL,0x62D7C96EL}}};
                        int i, j, k;
                        l_799 = ((**l_907) = l_948[0][1][4]);
                        if (p_45)
                            break;
                        (**l_907) = (1L != p_1335->g_16.f3);
                        if (l_731)
                            continue;
                    }
                    for (p_1335->g_162 = 0; (p_1335->g_162 <= 2); p_1335->g_162 += 1)
                    { /* block id: 474 */
                        uint32_t l_949 = 4294967287UL;
                        uint8_t ***l_953 = (void*)0;
                        uint8_t ***l_954 = (void*)0;
                        uint8_t ***l_955 = &p_1335->g_284;
                        uint16_t *l_959 = &p_1335->g_865.f5;
                        --l_949;
                    }
                }
                (**l_907) = (safe_div_func_uint64_t_u_u((!(GROUP_DIVERGE(2, 1) <= (l_787 = ((((((***l_921) = (l_970 != (void*)0)) < p_45) || (p_42 & (0L <= p_1335->g_802[6]))) , (0x321EL < (~65535UL))) , ((safe_mul_func_int8_t_s_s((p_1335->g_253 & l_813[6]), 1UL)) , 0x8EL))))), 2L));
                for (p_1335->g_149 = 0; (p_1335->g_149 <= 2); p_1335->g_149 += 1)
                { /* block id: 491 */
                    (*l_907) = &p_1335->g_426;
                }
            }
        }
        l_811[0][4][1] |= (!l_810);
        (*l_973) = &l_908;
    }
    return p_1335->g_863[1].f5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1335->g_59
 * writes:
 */
uint64_t ** func_47(uint32_t  p_48, uint8_t * p_49, int8_t  p_50, struct S2 * p_1335)
{ /* block id: 9 */
    uint32_t l_56[2][7] = {{0x33BE618BL,0x576953C5L,0x33BE618BL,0x33BE618BL,0x576953C5L,0x33BE618BL,0x33BE618BL},{0x33BE618BL,0x576953C5L,0x33BE618BL,0x33BE618BL,0x576953C5L,0x33BE618BL,0x33BE618BL}};
    int i, j;
    ++l_56[1][5];
    return p_1335->g_59;
}


/* ------------------------------------------ */
/* 
 * reads : p_1335->g_62 p_1335->g_19 p_1335->g_576 p_1335->g_269 p_1335->g_119 p_1335->g_285 p_1335->g_108 p_1335->g_250 p_1335->g_162 p_1335->g_338 p_1335->g_150 p_1335->g_129 p_1335->g_272 p_1335->g_284 p_1335->g_221 p_1335->g_580 p_1335->g_253
 * writes: p_1335->g_19 p_1335->g_269 p_1335->g_119 p_1335->g_162 p_1335->g_576 p_1335->g_111 p_1335->g_272 p_1335->g_108
 */
int8_t  func_84(uint64_t  p_85, struct S2 * p_1335)
{ /* block id: 283 */
    uint64_t *l_616 = &p_1335->g_149;
    uint16_t *l_629 = &p_1335->g_119;
    int32_t l_638[1][3];
    int32_t l_639 = (-6L);
    int32_t *l_640 = &p_1335->g_162;
    uint8_t ***l_668 = &p_1335->g_284;
    int32_t *l_676 = &l_638[0][1];
    int32_t *l_677 = &l_638[0][2];
    int32_t *l_678 = (void*)0;
    int32_t *l_679[10];
    int32_t l_680[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int64_t l_681 = 1L;
    uint8_t l_682[2][10][7] = {{{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L}},{{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L},{0UL,255UL,254UL,0xABL,0UL,0xE2L,0xC1L}}};
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_638[i][j] = (-8L);
    }
    for (i = 0; i < 10; i++)
        l_679[i] = &p_1335->g_576;
    if (((*l_640) &= (((safe_mod_func_int16_t_s_s((safe_add_func_uint64_t_u_u((l_638[0][2] = ((+5UL) == (((((*p_1335->g_62)--) | (safe_mul_func_uint8_t_u_u((252UL && (((void*)0 != l_616) | ((safe_mul_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u((((safe_mul_func_uint16_t_u_u((~((*l_629) &= (safe_mul_func_uint16_t_u_u(p_1335->g_576, (p_1335->g_269--))))), ((*p_1335->g_285) <= (safe_sub_func_int32_t_s_s(0x72D78B01L, p_85))))) >= ((safe_mod_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(p_85, l_638[0][2])), (-1L))) || l_638[0][2]), l_638[0][0])) ^ p_1335->g_250)) != 0UL), l_638[0][1])), l_638[0][0])) && 0x2999EC83L))), 0UL))) == l_638[0][2]) , l_638[0][0]))), l_639)), 0xAA8DL)) , l_638[0][2]) == GROUP_DIVERGE(1, 1))))
    { /* block id: 289 */
        uint8_t **l_645 = &p_1335->g_285;
        uint8_t **l_646 = &p_1335->g_285;
        int32_t l_651[8][9] = {{1L,(-6L),0x626AFB84L,9L,0x6EE380B1L,0x7BB90C01L,0x530988F3L,0x70C5BD8EL,(-6L)},{1L,(-6L),0x626AFB84L,9L,0x6EE380B1L,0x7BB90C01L,0x530988F3L,0x70C5BD8EL,(-6L)},{1L,(-6L),0x626AFB84L,9L,0x6EE380B1L,0x7BB90C01L,0x530988F3L,0x70C5BD8EL,(-6L)},{1L,(-6L),0x626AFB84L,9L,0x6EE380B1L,0x7BB90C01L,0x530988F3L,0x70C5BD8EL,(-6L)},{1L,(-6L),0x626AFB84L,9L,0x6EE380B1L,0x7BB90C01L,0x530988F3L,0x70C5BD8EL,(-6L)},{1L,(-6L),0x626AFB84L,9L,0x6EE380B1L,0x7BB90C01L,0x530988F3L,0x70C5BD8EL,(-6L)},{1L,(-6L),0x626AFB84L,9L,0x6EE380B1L,0x7BB90C01L,0x530988F3L,0x70C5BD8EL,(-6L)},{1L,(-6L),0x626AFB84L,9L,0x6EE380B1L,0x7BB90C01L,0x530988F3L,0x70C5BD8EL,(-6L)}};
        uint32_t *l_658 = (void*)0;
        int64_t *l_663 = &p_1335->g_272;
        int i, j;
        for (p_1335->g_576 = 0; (p_1335->g_576 > (-2)); p_1335->g_576--)
        { /* block id: 292 */
            uint8_t l_643 = 0x86L;
            uint8_t ***l_644[9][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int i, j, k;
            (*l_640) &= (p_85 , l_643);
            l_646 = (l_645 = (void*)0);
        }
        l_651[6][7] = (safe_sub_func_uint8_t_u_u(((((**p_1335->g_284) |= (safe_div_func_uint8_t_u_u((((l_651[0][6] >= p_1335->g_338[3][1]) || ((safe_rshift_func_int16_t_s_s(p_1335->g_150[0], 6)) == 0UL)) >= ((*l_663) ^= (((safe_lshift_func_int16_t_s_s((((((*p_1335->g_129) = p_85) , (safe_sub_func_uint32_t_u_u(((void*)0 == l_658), ((safe_mul_func_uint8_t_u_u((safe_sub_func_int32_t_s_s(((*l_640) = l_651[5][5]), l_651[0][6])), 0x2BL)) < 0UL)))) , p_1335->g_150[0]) , p_85), 7)) <= 2L) & p_85))), 0xEBL))) != 250UL) < l_651[0][6]), p_85));
    }
    else
    { /* block id: 302 */
        uint8_t ****l_669 = &l_668;
        (*l_640) |= (p_85 == ((((((safe_lshift_func_uint16_t_u_s(((safe_lshift_func_uint8_t_u_s(p_85, 1)) && (((*l_669) = l_668) != (void*)0)), 15)) | p_85) != 0x772D9D07L) == (safe_rshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(p_1335->g_221[8], ((safe_mul_func_uint8_t_u_u(((void*)0 != &p_1335->g_285), p_85)) || p_85))), p_1335->g_580))) , 0x396B99CAL) > p_1335->g_253));
    }
    l_682[1][9][3]++;
    return p_85;
}


/* ------------------------------------------ */
/* 
 * reads : p_1335->g_221 p_1335->g_549 p_1335->g_162 p_1335->g_76 p_1335->g_577 p_1335->g_580 p_1335->g_119 p_1335->g_113 p_1335->g_64 p_1335->g_62 p_1335->g_595 p_1335->g_597 p_1335->g_150 p_1335->g_250 p_1335->g_426 p_1335->g_108 p_1335->g_54 p_1335->g_149 p_1335->g_338 p_1335->g_272
 * writes: p_1335->g_76 p_1335->g_577 p_1335->g_580 p_1335->g_119 p_1335->g_113 p_1335->g_19 p_1335->g_600 p_1335->g_250 p_1335->g_426 p_1335->g_108 p_1335->g_54 p_1335->g_605 p_1335->g_149
 */
uint64_t  func_86(uint64_t * p_87, struct S2 * p_1335)
{ /* block id: 234 */
    int64_t l_548 = 1L;
    int32_t l_554 = 0x4D9ADDADL;
    int32_t l_565 = (-1L);
    int32_t l_566 = 0x5B472BA8L;
    int32_t l_567[5][4][7] = {{{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L}},{{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L}},{{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L}},{{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L}},{{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L},{0x5293D8F3L,0x166F3FD8L,1L,(-3L),1L,(-3L),1L}}};
    int8_t *l_591 = &p_1335->g_76;
    int i, j, k;
    l_567[4][0][5] = (safe_add_func_int64_t_s_s((l_554 ^= ((*p_87) , (l_548 >= (0x7CC65F7A293B2F03L || (p_1335->g_549 != (void*)0))))), ((safe_mul_func_int16_t_s_s(l_548, (safe_mul_func_int16_t_s_s((0x54L < (GROUP_DIVERGE(0, 1) <= (((l_566 &= (((p_1335->g_162 & (safe_sub_func_uint8_t_u_u(((((l_565 |= (safe_mul_func_uint16_t_u_u(0UL, FAKE_DIVERGE(p_1335->group_2_offset, get_group_id(2), 10)))) ^ l_548) , &l_548) == p_87), l_548))) , l_565) != 0x65L)) != l_548) > l_548))), 0x11C2L)))) <= FAKE_DIVERGE(p_1335->global_0_offset, get_global_id(0), 10))));
    for (p_1335->g_76 = 0; (p_1335->g_76 >= (-16)); --p_1335->g_76)
    { /* block id: 241 */
        int32_t *l_570 = &l_567[1][0][2];
        int32_t *l_571 = &l_567[4][0][5];
        int32_t *l_572 = &p_1335->g_113;
        int32_t *l_573 = &p_1335->g_113;
        int32_t *l_574 = &l_567[4][0][5];
        int32_t *l_575[10][7] = {{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565},{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565},{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565},{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565},{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565},{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565},{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565},{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565},{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565},{&p_1335->g_113,&p_1335->g_162,&l_565,&l_554,&p_1335->g_162,&l_554,&l_565}};
        int i, j;
        --p_1335->g_577;
        --p_1335->g_580;
    }
    for (p_1335->g_119 = 0; (p_1335->g_119 >= 42); p_1335->g_119++)
    { /* block id: 247 */
        uint16_t l_588[6];
        int8_t *l_592 = &p_1335->g_16.f2;
        int8_t **l_599 = &p_1335->g_128[3];
        int8_t ***l_598[8][10] = {{&l_599,(void*)0,(void*)0,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,(void*)0},{&l_599,(void*)0,(void*)0,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,(void*)0},{&l_599,(void*)0,(void*)0,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,(void*)0},{&l_599,(void*)0,(void*)0,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,(void*)0},{&l_599,(void*)0,(void*)0,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,(void*)0},{&l_599,(void*)0,(void*)0,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,(void*)0},{&l_599,(void*)0,(void*)0,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,(void*)0},{&l_599,(void*)0,(void*)0,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,(void*)0}};
        int i, j;
        for (i = 0; i < 6; i++)
            l_588[i] = 0UL;
        for (p_1335->g_113 = 2; (p_1335->g_113 <= 7); p_1335->g_113 += 1)
        { /* block id: 250 */
            int32_t *l_585 = &l_567[4][0][5];
            int i;
            (*l_585) ^= (((p_1335->g_64[p_1335->g_113] > ((*p_1335->g_62) = GROUP_DIVERGE(2, 1))) > 65526UL) >= (0x62L & l_554));
        }
        p_1335->g_600 = ((safe_mul_func_int16_t_s_s(l_588[4], ((((&p_1335->g_111 != (void*)0) , 0x1F3542B9L) , ((FAKE_DIVERGE(p_1335->local_0_offset, get_local_id(0), 10) != (((safe_add_func_int32_t_s_s(p_1335->g_76, ((l_591 != l_592) > (safe_mod_func_int16_t_s_s((((void*)0 == p_1335->g_595) || l_567[0][0][3]), 0x1B4FL))))) >= GROUP_DIVERGE(2, 1)) == p_1335->g_597)) , p_1335->g_150[1])) , l_588[4]))) , &l_592);
    }
    for (p_1335->g_250 = 1; (p_1335->g_250 <= 5); p_1335->g_250 += 1)
    { /* block id: 258 */
        int32_t *l_601[4][10] = {{&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426},{&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426},{&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426},{&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426,&p_1335->g_113,&p_1335->g_426,&p_1335->g_426}};
        int i, j;
        l_567[4][0][5] |= l_554;
        if (l_566)
            break;
        for (p_1335->g_426 = 0; (p_1335->g_426 <= 2); p_1335->g_426 += 1)
        { /* block id: 263 */
            uint16_t l_602 = 0UL;
            for (p_1335->g_108 = 0; (p_1335->g_108 <= 2); p_1335->g_108 += 1)
            { /* block id: 266 */
                for (p_1335->g_54 = 1; (p_1335->g_54 <= 5); p_1335->g_54 += 1)
                { /* block id: 269 */
                    ++l_602;
                }
            }
            p_1335->g_605[5] = &p_1335->g_576;
            for (p_1335->g_149 = 0; (p_1335->g_149 <= 2); p_1335->g_149 += 1)
            { /* block id: 276 */
                int16_t *l_607 = &p_1335->g_334;
                int16_t **l_606[1][8][4] = {{{&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,(void*)0}}};
                int i, j, k;
                l_606[0][2][1] = (p_1335->g_338[p_1335->g_250][(p_1335->g_149 + 1)] , l_606[0][2][1]);
                return p_1335->g_580;
            }
        }
    }
    return p_1335->g_272;
}


/* ------------------------------------------ */
/* 
 * reads : p_1335->g_334 p_1335->g_108 p_1335->g_64 p_1335->g_221 p_1335->g_533 p_1335->g_129 p_1335->g_111
 * writes: p_1335->g_426
 */
uint64_t * func_88(int64_t * p_89, uint32_t  p_90, uint32_t  p_91, uint32_t  p_92, struct S2 * p_1335)
{ /* block id: 229 */
    uint8_t l_518 = 0x98L;
    int32_t l_521 = 0x491A1CCCL;
    int32_t l_530 = 0x6DB8CD35L;
    uint8_t l_532[1][2][2];
    int32_t *l_534 = &p_1335->g_426;
    int32_t *l_535 = &p_1335->g_113;
    int32_t *l_536 = &p_1335->g_113;
    int32_t *l_537 = &l_530;
    int32_t *l_538 = (void*)0;
    int32_t *l_539 = &l_530;
    int32_t *l_540 = &p_1335->g_426;
    int32_t *l_541[6][8] = {{&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162},{&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162},{&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162},{&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162},{&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162},{&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162,&l_530,&l_530,&p_1335->g_162}};
    uint16_t l_542 = 65531UL;
    uint64_t *l_545[3];
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
                l_532[i][j][k] = 254UL;
        }
    }
    for (i = 0; i < 3; i++)
        l_545[i] = &p_1335->g_221[3];
    (*l_534) = (safe_lshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((p_92 >= ((safe_mul_func_uint16_t_u_u((l_518 == 18446744073709551614UL), ((p_1335->g_334 > 0xB8E3L) <= ((safe_sub_func_int8_t_s_s(l_521, (GROUP_DIVERGE(1, 1) , ((safe_add_func_uint16_t_u_u((l_521 , ((safe_rshift_func_uint16_t_u_u(((((safe_rshift_func_uint8_t_u_s(((safe_mul_func_int16_t_s_s(((l_530 ^= p_1335->g_108) ^ (((safe_unary_minus_func_int32_t_s((((p_1335->g_64[7] ^ p_90) >= l_518) , 4L))) , p_89) != p_89)), l_521)) <= p_92), 6)) < 0L) <= FAKE_DIVERGE(p_1335->global_1_offset, get_global_id(1), 10)) & p_90), GROUP_DIVERGE(0, 1))) ^ p_1335->g_221[7])), l_532[0][0][1])) == GROUP_DIVERGE(0, 1))))) & p_1335->g_533)))) , 0x70L)), l_532[0][0][1])), GROUP_DIVERGE(2, 1))), (*p_1335->g_129)));
    l_542--;
    return l_545[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1335->g_269 p_1335->g_162
 * writes: p_1335->g_247 p_1335->g_162
 */
int64_t * func_93(uint64_t * p_94, int32_t  p_95, uint64_t  p_96, uint32_t * p_97, struct S2 * p_1335)
{ /* block id: 224 */
    int16_t *l_492 = &p_1335->g_247;
    int16_t **l_491 = &l_492;
    int32_t l_493[5];
    uint32_t *l_507[3];
    uint32_t **l_506 = &l_507[2];
    int32_t *l_508 = (void*)0;
    int32_t *l_509 = &p_1335->g_162;
    int i;
    for (i = 0; i < 5; i++)
        l_493[i] = 0x753899EDL;
    for (i = 0; i < 3; i++)
        l_507[i] = &p_1335->g_8;
    (*l_509) ^= (((void*)0 != l_491) >= ((((*l_492) = ((l_493[4] && (0xF9AFL && 0x8D8EL)) , (((((safe_lshift_func_int8_t_s_u(((safe_rshift_func_int8_t_s_u(((p_95 | (safe_lshift_func_int8_t_s_u((((safe_sub_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u((l_493[2] < ((18446744073709551607UL != (((*l_506) = p_97) != &p_1335->g_54)) , l_493[4])), 0x0D81L)) | p_95), p_96)) , l_493[4]) <= l_493[4]), l_493[4]))) , (-2L)), 0)) || 0x8A583ADDL), 0)) , &p_1335->g_337) == l_508) <= 0xC73A21AEF406DD5FL) == 0L))) , p_1335->g_269) , l_493[4]));
    return p_94;
}


/* ------------------------------------------ */
/* 
 * reads : p_1335->g_119
 * writes: p_1335->g_119
 */
uint64_t * func_98(int32_t  p_99, uint8_t * p_100, uint64_t *** p_101, struct S2 * p_1335)
{ /* block id: 24 */
    int32_t *l_112 = &p_1335->g_113;
    int32_t *l_114 = (void*)0;
    int32_t *l_115 = &p_1335->g_113;
    int32_t *l_116 = (void*)0;
    int32_t *l_117 = (void*)0;
    int32_t *l_118[3];
    uint8_t l_165 = 0xD1L;
    uint64_t l_179[1];
    int8_t *l_186[7][2][5] = {{{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0},{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0}},{{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0},{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0}},{{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0},{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0}},{{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0},{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0}},{{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0},{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0}},{{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0},{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0}},{{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0},{&p_1335->g_76,(void*)0,&p_1335->g_76,&p_1335->g_76,(void*)0}}};
    uint64_t ***l_240 = &p_1335->g_61[5][0];
    uint64_t ***l_242 = &p_1335->g_61[2][1];
    int32_t **l_264[2];
    int32_t ***l_263[10] = {&l_264[1],&l_264[1],&l_264[1],&l_264[1],&l_264[1],&l_264[1],&l_264[1],&l_264[1],&l_264[1],&l_264[1]};
    uint8_t *l_277 = (void*)0;
    uint8_t **l_276 = &l_277;
    uint64_t *l_359 = &p_1335->g_149;
    uint32_t l_363 = 0x69C53CE2L;
    uint64_t *l_489 = (void*)0;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_118[i] = &p_1335->g_113;
    for (i = 0; i < 1; i++)
        l_179[i] = 0UL;
    for (i = 0; i < 2; i++)
        l_264[i] = &l_114;
    ++p_1335->g_119;
    return l_489;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_102(int64_t * p_103, uint32_t  p_104, struct S2 * p_1335)
{ /* block id: 21 */
    return p_104;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1336;
    struct S2* p_1335 = &c_1336;
    struct S2 c_1337 = {
        {{0UL,0xC3837ACED45B0E82L,0UL},{0UL,0xC3837ACED45B0E82L,0UL},{0UL,0xC3837ACED45B0E82L,0UL},{0UL,0xC3837ACED45B0E82L,0UL}}, // p_1335->g_3
        1UL, // p_1335->g_8
        {-1L,0xD52A42BBL,-1L,3L}, // p_1335->g_16
        18446744073709551612UL, // p_1335->g_19
        &p_1335->g_19, // p_1335->g_20
        0x8BL, // p_1335->g_36
        0xC2457718L, // p_1335->g_54
        (void*)0, // p_1335->g_59
        &p_1335->g_19, // p_1335->g_62
        {{&p_1335->g_62,(void*)0,&p_1335->g_62},{&p_1335->g_62,(void*)0,&p_1335->g_62},{&p_1335->g_62,(void*)0,&p_1335->g_62},{&p_1335->g_62,(void*)0,&p_1335->g_62},{&p_1335->g_62,(void*)0,&p_1335->g_62},{&p_1335->g_62,(void*)0,&p_1335->g_62},{&p_1335->g_62,(void*)0,&p_1335->g_62},{&p_1335->g_62,(void*)0,&p_1335->g_62},{&p_1335->g_62,(void*)0,&p_1335->g_62}}, // p_1335->g_61
        &p_1335->g_62, // p_1335->g_63
        {0x62E56CDAL,0x62E56CDAL,0x62E56CDAL,0x62E56CDAL,0x62E56CDAL,0x62E56CDAL,0x62E56CDAL,0x62E56CDAL}, // p_1335->g_64
        0x5CL, // p_1335->g_76
        (-10L), // p_1335->g_79
        0xA2L, // p_1335->g_108
        0x65L, // p_1335->g_111
        0L, // p_1335->g_113
        65535UL, // p_1335->g_119
        {&p_1335->g_111,&p_1335->g_111,&p_1335->g_111,&p_1335->g_111,&p_1335->g_111}, // p_1335->g_128
        &p_1335->g_111, // p_1335->g_129
        0x98A5ECB2B9DCA820L, // p_1335->g_149
        {0x2BA0674BL,0x2BA0674BL}, // p_1335->g_150
        0x5A4DA777L, // p_1335->g_162
        {0xAAA0D6759D5BA957L,0xAAA0D6759D5BA957L,0xAAA0D6759D5BA957L,0xAAA0D6759D5BA957L,0xAAA0D6759D5BA957L,0xAAA0D6759D5BA957L,0xAAA0D6759D5BA957L,0xAAA0D6759D5BA957L,0xAAA0D6759D5BA957L,0xAAA0D6759D5BA957L}, // p_1335->g_221
        (-5L), // p_1335->g_247
        0x4F8CL, // p_1335->g_250
        0UL, // p_1335->g_253
        65535UL, // p_1335->g_269
        1L, // p_1335->g_272
        0xB3L, // p_1335->g_275
        &p_1335->g_275, // p_1335->g_274
        {{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}},{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}},{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}},{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}},{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}},{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}},{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}},{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}},{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}},{{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274},{(void*)0,&p_1335->g_274,&p_1335->g_274}}}, // p_1335->g_273
        &p_1335->g_108, // p_1335->g_285
        &p_1335->g_285, // p_1335->g_284
        (void*)0, // p_1335->g_295
        &p_1335->g_295, // p_1335->g_294
        0x1241L, // p_1335->g_334
        0x2BCA56F5L, // p_1335->g_337
        {{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L}}, // p_1335->g_338
        4294967295UL, // p_1335->g_339
        0x01L, // p_1335->g_355
        {0x1C805CA05D6CAF3BL,0x73L,0x10CC3B32DD76AF81L,4L,1UL,8UL,9L}, // p_1335->g_421
        &p_1335->g_421, // p_1335->g_420
        8L, // p_1335->g_426
        (void*)0, // p_1335->g_487
        &p_1335->g_487, // p_1335->g_486
        0xBBEB77A0L, // p_1335->g_533
        8UL, // p_1335->g_553
        &p_1335->g_553, // p_1335->g_552
        {{{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552}},{{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552}},{{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552}},{{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552}},{{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552}},{{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552}},{{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552},{&p_1335->g_552}}}, // p_1335->g_551
        &p_1335->g_551[5][2][0], // p_1335->g_550
        &p_1335->g_550, // p_1335->g_549
        0x075C6B81L, // p_1335->g_576
        0xB54DABF6L, // p_1335->g_577
        1UL, // p_1335->g_580
        &p_1335->g_426, // p_1335->g_596
        &p_1335->g_596, // p_1335->g_595
        0x0CDDL, // p_1335->g_597
        &p_1335->g_129, // p_1335->g_600
        {&p_1335->g_576,&p_1335->g_576,&p_1335->g_576,&p_1335->g_576,&p_1335->g_576,&p_1335->g_576,&p_1335->g_576,&p_1335->g_576,&p_1335->g_576}, // p_1335->g_605
        0x5058L, // p_1335->g_717
        &p_1335->g_717, // p_1335->g_716
        &p_1335->g_716, // p_1335->g_715
        {{{6UL,0x01BBFCDC117E17D8L,0x01BBFCDC117E17D8L,6UL,6UL,0x01BBFCDC117E17D8L},{6UL,0x01BBFCDC117E17D8L,0x01BBFCDC117E17D8L,6UL,6UL,0x01BBFCDC117E17D8L}},{{6UL,0x01BBFCDC117E17D8L,0x01BBFCDC117E17D8L,6UL,6UL,0x01BBFCDC117E17D8L},{6UL,0x01BBFCDC117E17D8L,0x01BBFCDC117E17D8L,6UL,6UL,0x01BBFCDC117E17D8L}}}, // p_1335->g_726
        (-1L), // p_1335->g_771
        {0x71492531D0415232L,0x71492531D0415232L,0x71492531D0415232L,0x71492531D0415232L,0x71492531D0415232L,0x71492531D0415232L,0x71492531D0415232L}, // p_1335->g_802
        {{-3L,-1L,18446744073709551615UL,-9L,0x17474EE1L,1UL,1L},{0L,0x77L,0UL,0x63D14773L,1UL,1UL,0x32A4L},{-3L,-1L,18446744073709551615UL,-9L,0x17474EE1L,1UL,1L},{-3L,-1L,18446744073709551615UL,-9L,0x17474EE1L,1UL,1L},{0L,0x77L,0UL,0x63D14773L,1UL,1UL,0x32A4L},{-3L,-1L,18446744073709551615UL,-9L,0x17474EE1L,1UL,1L},{-3L,-1L,18446744073709551615UL,-9L,0x17474EE1L,1UL,1L},{0L,0x77L,0UL,0x63D14773L,1UL,1UL,0x32A4L}}, // p_1335->g_863
        {0x35326F30002078CBL,-10L,0x5C66374E37C8A5DFL,0L,4294967286UL,0xF3BDL,0L}, // p_1335->g_865
        1L, // p_1335->g_900
        (-1L), // p_1335->g_967
        {{{{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL}}},{{{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL}}},{{{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL}}},{{{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL}}},{{{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL}}},{{{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL}}},{{{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{-3L,-4L,18446744073709551609UL,0x1AFEF319L,0UL,9UL,0x533AL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL},{0x363FDC4C03197BA9L,8L,0xB6784AC3D50D44FBL,0x19888F1BL,0xB0BFC2BAL,0x77B8L,0x3EFAL}}}}, // p_1335->g_1122
        18446744073709551615UL, // p_1335->g_1147
        {0L,0UL,-9L,0x09185B85BE539B15L}, // p_1335->g_1148
        {-6L,0x73L,1UL,0x08069EDCL,4UL,0x3C25L,-1L}, // p_1335->g_1211
        (void*)0, // p_1335->g_1214
        &p_1335->g_1214, // p_1335->g_1213
        (void*)0, // p_1335->g_1244
        {&p_1335->g_1244,(void*)0,(void*)0,(void*)0,&p_1335->g_1244,&p_1335->g_1244,(void*)0,(void*)0,(void*)0,&p_1335->g_1244}, // p_1335->g_1243
        &p_1335->g_1243[1], // p_1335->g_1242
        (void*)0, // p_1335->g_1247
        &p_1335->g_1214, // p_1335->g_1249
        &p_1335->g_1249, // p_1335->g_1248
        0xC3DD43F5L, // p_1335->g_1260
        {{{0x51188F0006B39EE7L,1L,0xD9BC4F21CED11EB5L,0x5573FCA6L,5UL,0UL,0x7F9AL},{0x1D3F8A73B1A28D70L,0x03L,0x0668BF6F3A23D599L,1L,4294967295UL,0x3E5FL,0x427BL},{0x24F070036EBFB2DAL,0x45L,18446744073709551608UL,0x7463B208L,4294967295UL,0x7BF5L,0x592AL},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L},{1L,0x01L,18446744073709551615UL,0x2D244F96L,2UL,65535UL,0x0D53L},{0x51188F0006B39EE7L,1L,0xD9BC4F21CED11EB5L,0x5573FCA6L,5UL,0UL,0x7F9AL},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L},{6L,0x28L,18446744073709551607UL,7L,4UL,65535UL,-9L},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L}},{{0x51188F0006B39EE7L,1L,0xD9BC4F21CED11EB5L,0x5573FCA6L,5UL,0UL,0x7F9AL},{0x1D3F8A73B1A28D70L,0x03L,0x0668BF6F3A23D599L,1L,4294967295UL,0x3E5FL,0x427BL},{0x24F070036EBFB2DAL,0x45L,18446744073709551608UL,0x7463B208L,4294967295UL,0x7BF5L,0x592AL},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L},{1L,0x01L,18446744073709551615UL,0x2D244F96L,2UL,65535UL,0x0D53L},{0x51188F0006B39EE7L,1L,0xD9BC4F21CED11EB5L,0x5573FCA6L,5UL,0UL,0x7F9AL},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L},{6L,0x28L,18446744073709551607UL,7L,4UL,65535UL,-9L},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L}},{{0x51188F0006B39EE7L,1L,0xD9BC4F21CED11EB5L,0x5573FCA6L,5UL,0UL,0x7F9AL},{0x1D3F8A73B1A28D70L,0x03L,0x0668BF6F3A23D599L,1L,4294967295UL,0x3E5FL,0x427BL},{0x24F070036EBFB2DAL,0x45L,18446744073709551608UL,0x7463B208L,4294967295UL,0x7BF5L,0x592AL},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L},{1L,0x01L,18446744073709551615UL,0x2D244F96L,2UL,65535UL,0x0D53L},{0x51188F0006B39EE7L,1L,0xD9BC4F21CED11EB5L,0x5573FCA6L,5UL,0UL,0x7F9AL},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L},{6L,0x28L,18446744073709551607UL,7L,4UL,65535UL,-9L},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L}},{{0x51188F0006B39EE7L,1L,0xD9BC4F21CED11EB5L,0x5573FCA6L,5UL,0UL,0x7F9AL},{0x1D3F8A73B1A28D70L,0x03L,0x0668BF6F3A23D599L,1L,4294967295UL,0x3E5FL,0x427BL},{0x24F070036EBFB2DAL,0x45L,18446744073709551608UL,0x7463B208L,4294967295UL,0x7BF5L,0x592AL},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L},{1L,0x01L,18446744073709551615UL,0x2D244F96L,2UL,65535UL,0x0D53L},{0x51188F0006B39EE7L,1L,0xD9BC4F21CED11EB5L,0x5573FCA6L,5UL,0UL,0x7F9AL},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L},{6L,0x28L,18446744073709551607UL,7L,4UL,65535UL,-9L},{-1L,0L,0x728F0A167CD70AA7L,9L,0x83F93C6EL,65535UL,-7L}}}, // p_1335->g_1285
        {0x355E8AE1BA34A757L,8UL,0x15L,0x38C30D19FA4F8C31L}, // p_1335->g_1294
        {0x53A7F83590D9876AL,6UL,0x5AL,-2L}, // p_1335->g_1295
        (void*)0, // p_1335->g_1303
        {(void*)0,(void*)0}, // p_1335->g_1315
        sequence_input[get_global_id(0)], // p_1335->global_0_offset
        sequence_input[get_global_id(1)], // p_1335->global_1_offset
        sequence_input[get_global_id(2)], // p_1335->global_2_offset
        sequence_input[get_local_id(0)], // p_1335->local_0_offset
        sequence_input[get_local_id(1)], // p_1335->local_1_offset
        sequence_input[get_local_id(2)], // p_1335->local_2_offset
        sequence_input[get_group_id(0)], // p_1335->group_0_offset
        sequence_input[get_group_id(1)], // p_1335->group_1_offset
        sequence_input[get_group_id(2)], // p_1335->group_2_offset
    };
    c_1336 = c_1337;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1335);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1335->g_3[i][j], "p_1335->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1335->g_8, "p_1335->g_8", print_hash_value);
    transparent_crc(p_1335->g_16.f0, "p_1335->g_16.f0", print_hash_value);
    transparent_crc(p_1335->g_16.f1, "p_1335->g_16.f1", print_hash_value);
    transparent_crc(p_1335->g_16.f2, "p_1335->g_16.f2", print_hash_value);
    transparent_crc(p_1335->g_16.f3, "p_1335->g_16.f3", print_hash_value);
    transparent_crc(p_1335->g_19, "p_1335->g_19", print_hash_value);
    transparent_crc(p_1335->g_36, "p_1335->g_36", print_hash_value);
    transparent_crc(p_1335->g_54, "p_1335->g_54", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1335->g_64[i], "p_1335->g_64[i]", print_hash_value);

    }
    transparent_crc(p_1335->g_76, "p_1335->g_76", print_hash_value);
    transparent_crc(p_1335->g_79, "p_1335->g_79", print_hash_value);
    transparent_crc(p_1335->g_108, "p_1335->g_108", print_hash_value);
    transparent_crc(p_1335->g_111, "p_1335->g_111", print_hash_value);
    transparent_crc(p_1335->g_113, "p_1335->g_113", print_hash_value);
    transparent_crc(p_1335->g_119, "p_1335->g_119", print_hash_value);
    transparent_crc(p_1335->g_149, "p_1335->g_149", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1335->g_150[i], "p_1335->g_150[i]", print_hash_value);

    }
    transparent_crc(p_1335->g_162, "p_1335->g_162", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1335->g_221[i], "p_1335->g_221[i]", print_hash_value);

    }
    transparent_crc(p_1335->g_247, "p_1335->g_247", print_hash_value);
    transparent_crc(p_1335->g_250, "p_1335->g_250", print_hash_value);
    transparent_crc(p_1335->g_253, "p_1335->g_253", print_hash_value);
    transparent_crc(p_1335->g_269, "p_1335->g_269", print_hash_value);
    transparent_crc(p_1335->g_272, "p_1335->g_272", print_hash_value);
    transparent_crc(p_1335->g_275, "p_1335->g_275", print_hash_value);
    transparent_crc(p_1335->g_334, "p_1335->g_334", print_hash_value);
    transparent_crc(p_1335->g_337, "p_1335->g_337", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1335->g_338[i][j], "p_1335->g_338[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1335->g_339, "p_1335->g_339", print_hash_value);
    transparent_crc(p_1335->g_355, "p_1335->g_355", print_hash_value);
    transparent_crc(p_1335->g_421.f0, "p_1335->g_421.f0", print_hash_value);
    transparent_crc(p_1335->g_421.f1, "p_1335->g_421.f1", print_hash_value);
    transparent_crc(p_1335->g_421.f2, "p_1335->g_421.f2", print_hash_value);
    transparent_crc(p_1335->g_421.f3, "p_1335->g_421.f3", print_hash_value);
    transparent_crc(p_1335->g_421.f4, "p_1335->g_421.f4", print_hash_value);
    transparent_crc(p_1335->g_421.f5, "p_1335->g_421.f5", print_hash_value);
    transparent_crc(p_1335->g_421.f6, "p_1335->g_421.f6", print_hash_value);
    transparent_crc(p_1335->g_426, "p_1335->g_426", print_hash_value);
    transparent_crc(p_1335->g_533, "p_1335->g_533", print_hash_value);
    transparent_crc(p_1335->g_553, "p_1335->g_553", print_hash_value);
    transparent_crc(p_1335->g_576, "p_1335->g_576", print_hash_value);
    transparent_crc(p_1335->g_577, "p_1335->g_577", print_hash_value);
    transparent_crc(p_1335->g_580, "p_1335->g_580", print_hash_value);
    transparent_crc(p_1335->g_597, "p_1335->g_597", print_hash_value);
    transparent_crc(p_1335->g_717, "p_1335->g_717", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1335->g_726[i][j][k], "p_1335->g_726[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1335->g_771, "p_1335->g_771", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1335->g_802[i], "p_1335->g_802[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1335->g_863[i].f0, "p_1335->g_863[i].f0", print_hash_value);
        transparent_crc(p_1335->g_863[i].f1, "p_1335->g_863[i].f1", print_hash_value);
        transparent_crc(p_1335->g_863[i].f2, "p_1335->g_863[i].f2", print_hash_value);
        transparent_crc(p_1335->g_863[i].f3, "p_1335->g_863[i].f3", print_hash_value);
        transparent_crc(p_1335->g_863[i].f4, "p_1335->g_863[i].f4", print_hash_value);
        transparent_crc(p_1335->g_863[i].f5, "p_1335->g_863[i].f5", print_hash_value);
        transparent_crc(p_1335->g_863[i].f6, "p_1335->g_863[i].f6", print_hash_value);

    }
    transparent_crc(p_1335->g_865.f0, "p_1335->g_865.f0", print_hash_value);
    transparent_crc(p_1335->g_865.f1, "p_1335->g_865.f1", print_hash_value);
    transparent_crc(p_1335->g_865.f2, "p_1335->g_865.f2", print_hash_value);
    transparent_crc(p_1335->g_865.f3, "p_1335->g_865.f3", print_hash_value);
    transparent_crc(p_1335->g_865.f4, "p_1335->g_865.f4", print_hash_value);
    transparent_crc(p_1335->g_865.f5, "p_1335->g_865.f5", print_hash_value);
    transparent_crc(p_1335->g_865.f6, "p_1335->g_865.f6", print_hash_value);
    transparent_crc(p_1335->g_900, "p_1335->g_900", print_hash_value);
    transparent_crc(p_1335->g_967, "p_1335->g_967", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1335->g_1122[i][j][k].f0, "p_1335->g_1122[i][j][k].f0", print_hash_value);
                transparent_crc(p_1335->g_1122[i][j][k].f1, "p_1335->g_1122[i][j][k].f1", print_hash_value);
                transparent_crc(p_1335->g_1122[i][j][k].f2, "p_1335->g_1122[i][j][k].f2", print_hash_value);
                transparent_crc(p_1335->g_1122[i][j][k].f3, "p_1335->g_1122[i][j][k].f3", print_hash_value);
                transparent_crc(p_1335->g_1122[i][j][k].f4, "p_1335->g_1122[i][j][k].f4", print_hash_value);
                transparent_crc(p_1335->g_1122[i][j][k].f5, "p_1335->g_1122[i][j][k].f5", print_hash_value);
                transparent_crc(p_1335->g_1122[i][j][k].f6, "p_1335->g_1122[i][j][k].f6", print_hash_value);

            }
        }
    }
    transparent_crc(p_1335->g_1147, "p_1335->g_1147", print_hash_value);
    transparent_crc(p_1335->g_1148.f0, "p_1335->g_1148.f0", print_hash_value);
    transparent_crc(p_1335->g_1148.f1, "p_1335->g_1148.f1", print_hash_value);
    transparent_crc(p_1335->g_1148.f2, "p_1335->g_1148.f2", print_hash_value);
    transparent_crc(p_1335->g_1148.f3, "p_1335->g_1148.f3", print_hash_value);
    transparent_crc(p_1335->g_1211.f0, "p_1335->g_1211.f0", print_hash_value);
    transparent_crc(p_1335->g_1211.f1, "p_1335->g_1211.f1", print_hash_value);
    transparent_crc(p_1335->g_1211.f2, "p_1335->g_1211.f2", print_hash_value);
    transparent_crc(p_1335->g_1211.f3, "p_1335->g_1211.f3", print_hash_value);
    transparent_crc(p_1335->g_1211.f4, "p_1335->g_1211.f4", print_hash_value);
    transparent_crc(p_1335->g_1211.f5, "p_1335->g_1211.f5", print_hash_value);
    transparent_crc(p_1335->g_1211.f6, "p_1335->g_1211.f6", print_hash_value);
    transparent_crc(p_1335->g_1260, "p_1335->g_1260", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1335->g_1285[i][j].f0, "p_1335->g_1285[i][j].f0", print_hash_value);
            transparent_crc(p_1335->g_1285[i][j].f1, "p_1335->g_1285[i][j].f1", print_hash_value);
            transparent_crc(p_1335->g_1285[i][j].f2, "p_1335->g_1285[i][j].f2", print_hash_value);
            transparent_crc(p_1335->g_1285[i][j].f3, "p_1335->g_1285[i][j].f3", print_hash_value);
            transparent_crc(p_1335->g_1285[i][j].f4, "p_1335->g_1285[i][j].f4", print_hash_value);
            transparent_crc(p_1335->g_1285[i][j].f5, "p_1335->g_1285[i][j].f5", print_hash_value);
            transparent_crc(p_1335->g_1285[i][j].f6, "p_1335->g_1285[i][j].f6", print_hash_value);

        }
    }
    transparent_crc(p_1335->g_1294.f0, "p_1335->g_1294.f0", print_hash_value);
    transparent_crc(p_1335->g_1294.f1, "p_1335->g_1294.f1", print_hash_value);
    transparent_crc(p_1335->g_1294.f2, "p_1335->g_1294.f2", print_hash_value);
    transparent_crc(p_1335->g_1294.f3, "p_1335->g_1294.f3", print_hash_value);
    transparent_crc(p_1335->g_1295.f0, "p_1335->g_1295.f0", print_hash_value);
    transparent_crc(p_1335->g_1295.f1, "p_1335->g_1295.f1", print_hash_value);
    transparent_crc(p_1335->g_1295.f2, "p_1335->g_1295.f2", print_hash_value);
    transparent_crc(p_1335->g_1295.f3, "p_1335->g_1295.f3", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
