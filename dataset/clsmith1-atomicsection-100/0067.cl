// --atomics 35 ---fake_divergence -g 70,19,1 -l 2,1,1
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


// Seed: 67

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
   int64_t  f1;
   int32_t  f2;
   uint32_t  f3;
   uint16_t  f4;
};

struct S1 {
   int32_t  f0;
   int32_t  f1;
   volatile int8_t  f2;
   uint32_t  f3;
   uint32_t  f4;
   int16_t  f5;
   uint32_t  f6;
   int32_t  f7;
   volatile int8_t  f8;
};

union U2 {
   int32_t  f0;
   uint8_t  f1;
   int8_t  f2;
   uint8_t  f3;
};

union U3 {
   struct S1  f0;
   int32_t  f1;
   struct S1  f2;
};

union U4 {
   uint16_t  f0;
   struct S1  f1;
   volatile int32_t  f2;
   int32_t  f3;
   int64_t  f4;
};

union U5 {
   volatile uint64_t  f0;
   volatile int8_t  f1;
   volatile struct S1  f2;
   struct S0  f3;
   struct S0  f4;
};

struct S6 {
    struct S1 g_5;
    int32_t g_24;
    volatile union U4 g_25;
    union U3 g_26;
    uint64_t g_50;
    union U3 g_70;
    union U3 g_71;
    struct S1 g_76;
    uint8_t g_88;
    uint8_t g_93;
    uint64_t *g_94[7];
    int64_t g_106;
    volatile uint16_t g_109;
    struct S1 * volatile g_117[3];
    struct S1 * volatile g_118;
    volatile uint64_t g_132[2];
    union U2 g_421;
    struct S1 g_422;
    struct S1 g_423;
    volatile struct S0 g_427;
    volatile struct S0 * volatile g_428;
    volatile struct S0 * volatile g_429;
    struct S0 g_455[3][1];
    union U3 ***g_456;
    volatile union U3 g_461[1];
    volatile union U3 * volatile g_460;
    volatile union U3 * volatile * volatile g_459;
    volatile union U3 * volatile * volatile *g_458;
    union U2 *g_465;
    union U2 ** volatile g_464;
    int32_t *g_496;
    struct S1 g_531;
    uint8_t g_566;
    int32_t g_569;
    int32_t ** volatile g_572;
    int32_t ** volatile g_573;
    union U2 **g_577;
    union U2 ***g_576[8];
    struct S1 g_579;
    struct S1 g_582;
    volatile int8_t * volatile g_583;
    uint64_t **g_596[10][7];
    struct S1 g_617;
    struct S1 * volatile g_618;
    volatile struct S0 * volatile g_619;
    uint64_t g_628;
    int8_t g_684;
    struct S1 g_715;
    struct S0 * volatile g_736;
    volatile union U3 g_737;
    int16_t g_754;
    int32_t ** volatile g_783[4];
    int32_t ** volatile g_784;
    volatile uint32_t g_830[4][7];
    uint64_t g_860;
    struct S1 g_937;
    int32_t **g_988[10][3];
    int32_t ** volatile g_1079[7];
    int32_t ** volatile g_1080;
    volatile int32_t g_1096;
    int32_t ** volatile g_1099;
    uint32_t *g_1109;
    uint32_t **g_1108;
    union U2 *** volatile * volatile g_1112;
    union U2 *** volatile * volatile *g_1111;
    int32_t *g_1151[4][8];
    struct S1 g_1166;
    volatile struct S1 g_1192;
    int32_t g_1211;
    volatile union U4 g_1242;
    volatile union U4 *g_1241[1][8];
    int64_t g_1395[9];
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
int64_t  func_1(struct S6 * p_1396);
int32_t  func_6(uint8_t  p_7, uint8_t  p_8, union U2  p_9, uint64_t  p_10, int32_t  p_11, struct S6 * p_1396);
uint16_t  func_12(uint32_t  p_13, int8_t  p_14, int64_t  p_15, int16_t  p_16, struct S6 * p_1396);
struct S0  func_30(int32_t * p_31, int32_t  p_32, int32_t  p_33, uint64_t  p_34, int32_t  p_35, struct S6 * p_1396);
int32_t * func_36(uint32_t  p_37, uint16_t  p_38, int32_t * p_39, union U2  p_40, uint16_t  p_41, struct S6 * p_1396);
int32_t * func_43(int64_t  p_44, int32_t  p_45, union U2  p_46, int32_t * p_47, int32_t * p_48, struct S6 * p_1396);
union U3  func_53(struct S0  p_54, int32_t * p_55, uint64_t * p_56, struct S6 * p_1396);
uint64_t * func_59(int32_t * p_60, struct S6 * p_1396);
int32_t * func_61(uint64_t * p_62, uint64_t * p_63, int16_t  p_64, uint32_t  p_65, struct S6 * p_1396);
uint64_t * func_66(uint64_t  p_67, uint64_t * p_68, uint32_t  p_69, struct S6 * p_1396);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1396->g_5 p_1396->g_25 p_1396->g_26 p_1396->g_26.f0.f1 p_1396->g_70 p_1396->g_71 p_1396->g_71.f0.f6 p_1396->g_76 p_1396->g_26.f0.f0 p_1396->g_71.f0.f0 p_1396->g_93 p_1396->g_94 p_1396->g_24 p_1396->g_109 p_1396->g_26.f0.f7 p_1396->g_118 p_1396->g_132 p_1396->g_88 p_1396->g_70.f0.f1 p_1396->g_70.f0.f8 p_1396->g_70.f0.f6 p_1396->g_70.f0.f0 p_1396->g_421 p_1396->g_422 p_1396->g_423.f5 p_1396->g_427 p_1396->g_106 p_1396->g_421.f0 p_1396->g_423.f6 p_1396->g_70.f0.f4 p_1396->g_70.f0.f3 p_1396->g_455 p_1396->g_456 p_1396->g_458 p_1396->g_464 p_1396->g_70.f2.f7 p_1396->g_617 p_1396->g_618 p_1396->g_496 p_1396->g_619 p_1396->g_628 p_1396->g_583 p_1396->g_423.f8 p_1396->g_531.f0 p_1396->g_582.f7 p_1396->g_684 p_1396->g_423.f4 p_1396->g_531.f6 p_1396->g_582.f6 p_1396->g_531.f1 p_1396->g_566 p_1396->g_715 p_1396->g_573 p_1396->g_531.f4 p_1396->g_531.f5 p_1396->g_579.f5 p_1396->g_70.f0.f5 p_1396->g_582.f0 p_1396->g_736 p_1396->g_737 p_1396->g_754 p_1396->g_784 p_1396->g_421.f2 p_1396->g_737.f0.f2 p_1396->g_26.f0.f6 p_1396->g_937 p_1396->g_569 p_1396->g_459 p_1396->g_579.f0 p_1396->g_1080 p_1396->g_1096 p_1396->g_1099 p_1396->g_1108 p_1396->g_1111 p_1396->g_1109 p_1396->g_70.f0.f2 p_1396->g_1166 p_1396->g_579.f1 p_1396->g_1192 p_1396->g_461.f0.f0 p_1396->g_423.f0 p_1396->g_582.f4 p_1396->g_1211 p_1396->g_71.f2.f0 p_1396->g_1241 p_1396->g_26.f2.f6 p_1396->g_860 p_1396->g_577 p_1396->g_461 p_1396->g_423.f3 p_1396->g_830
 * writes: p_1396->g_24 p_1396->g_50 p_1396->g_71.f0.f6 p_1396->g_76.f5 p_1396->g_88 p_1396->g_93 p_1396->g_106 p_1396->g_109 p_1396->g_26.f0 p_1396->g_26.f1 p_1396->g_5.f0 p_1396->g_71.f2.f6 p_1396->g_423 p_1396->g_456 p_1396->g_455.f0 p_1396->g_71.f1 p_1396->g_465 p_1396->g_76.f4 p_1396->g_70.f2.f7 p_1396->g_582 p_1396->g_427 p_1396->g_628 p_1396->g_5.f1 p_1396->g_70.f0.f6 p_1396->g_617.f1 p_1396->g_5.f6 p_1396->g_684 p_1396->g_70.f0.f5 p_1396->g_455.f4 p_1396->g_455 p_1396->g_754 p_1396->g_496 p_1396->g_421.f2 p_1396->g_576 p_1396->g_860 p_1396->g_531.f6 p_1396->g_26.f2.f5 p_1396->g_715.f6 p_1396->g_617.f5 p_1396->g_988 p_1396->g_71.f0.f4 p_1396->g_617.f7 p_1396->g_421.f0 p_1396->g_1108 p_1396->g_70.f2.f5 p_1396->g_422.f6 p_1396->g_579.f5 p_1396->g_428 p_1396->g_1211 p_1396->g_71.f2.f0 p_1396->g_937.f5 p_1396->g_26.f2.f6 p_1396->g_5.f5 p_1396->g_421.f1 p_1396->g_1395
 */
int64_t  func_1(struct S6 * p_1396)
{ /* block id: 4 */
    int64_t l_4 = (-5L);
    int32_t *l_23 = &p_1396->g_24;
    struct S0 l_27 = {0x57L,0L,-2L,0UL,65535UL};
    uint8_t l_28 = 0UL;
    int32_t l_29 = (-1L);
    union U2 l_756 = {-1L};
    int32_t *l_1210 = &p_1396->g_1211;
    int16_t l_1262 = (-3L);
    int64_t l_1300[5];
    int32_t l_1358 = 0x345FA9FBL;
    int8_t l_1380 = 0x4DL;
    int i;
    for (i = 0; i < 5; i++)
        l_1300[i] = (-1L);
    (*l_1210) &= ((safe_sub_func_uint64_t_u_u(l_4, 0x231E468A07C694A6L)) , (p_1396->g_5 , func_6((func_12(((((safe_add_func_uint64_t_u_u(9UL, (((((!(safe_mul_func_int16_t_s_s(l_4, (safe_lshift_func_int16_t_s_s(1L, 12))))) , ((*l_23) = l_4)) != 0x63C6DAAFL) > ((((p_1396->g_25 , l_4) || FAKE_DIVERGE(p_1396->global_1_offset, get_global_id(1), 10)) , p_1396->g_5.f8) > p_1396->g_5.f6)) != 0UL))) , p_1396->g_26) , l_27) , 0xFC6BF2A6L), l_28, l_29, p_1396->g_26.f0.f1, p_1396) , 0xE2L), l_27.f3, l_756, p_1396->g_5.f4, p_1396->g_76.f7, p_1396)));
    for (p_1396->g_531.f6 = 0; (p_1396->g_531.f6 <= 0); p_1396->g_531.f6 += 1)
    { /* block id: 657 */
        int32_t l_1244 = 0x239BCA90L;
        int32_t l_1250 = 8L;
        union U2 l_1257 = {0x445ACA05L};
        struct S0 *l_1387 = &l_27;
        struct S0 **l_1386 = &l_1387;
        for (p_1396->g_71.f2.f0 = 0; (p_1396->g_71.f2.f0 <= 0); p_1396->g_71.f2.f0 += 1)
        { /* block id: 660 */
            int8_t *l_1214[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int16_t l_1223 = (-1L);
            struct S0 *l_1243 = &p_1396->g_455[1][0];
            int16_t *l_1245 = (void*)0;
            int16_t *l_1246 = (void*)0;
            int16_t *l_1247 = &p_1396->g_937.f5;
            uint8_t *l_1248 = (void*)0;
            uint8_t *l_1249[10] = {&p_1396->g_88,&p_1396->g_88,&p_1396->g_88,&p_1396->g_88,&p_1396->g_88,&p_1396->g_88,&p_1396->g_88,&p_1396->g_88,&p_1396->g_88,&p_1396->g_88};
            int32_t l_1252 = (-5L);
            int32_t l_1292 = 0L;
            int32_t l_1293 = 0x23E2574DL;
            int32_t l_1294[6][3][9] = {{{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L}},{{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L}},{{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L}},{{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L}},{{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L}},{{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L},{0L,0x484C3735L,(-1L),0L,(-1L),0x340F461DL,0x340F461DL,(-1L),0L}}};
            union U2 l_1307 = {0x2452B7ACL};
            uint8_t l_1359 = 249UL;
            int64_t *l_1394 = &p_1396->g_1395[0];
            int i, j, k;
            if ((((safe_mod_func_uint32_t_u_u(((((~((*l_1210) = (*l_23))) != (safe_div_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((l_1244 = (safe_sub_func_int64_t_s_s((safe_div_func_int32_t_s_s(l_1223, (+(FAKE_DIVERGE(p_1396->group_1_offset, get_group_id(1), 10) ^ (((((safe_lshift_func_int16_t_s_s(((*l_1247) = (p_1396->g_76.f4 | (((l_756 , ((safe_mod_func_uint8_t_u_u(p_1396->g_5.f7, (safe_unary_minus_func_int64_t_s(((safe_rshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_s((*p_1396->g_583), (safe_mod_func_int16_t_s_s((safe_rshift_func_int8_t_s_u((safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s((((l_756 , p_1396->g_1241[0][7]) == (((*l_1243) = l_27) , p_1396->g_1241[0][1])) , p_1396->g_937.f3), l_1223)), 5)), 5)), (-1L))))), p_1396->g_754)) != p_1396->g_5.f5))))) <= (-5L))) != GROUP_DIVERGE(2, 1)) & l_1244))), 9)) != (*l_23)) | l_1223) >= FAKE_DIVERGE(p_1396->local_0_offset, get_local_id(0), 10)) || p_1396->g_5.f3))))), l_1223))) != 0x0BL), l_1250)), 18446744073709551612UL))) > l_1223) , (**p_1396->g_1108)), 4294967288UL)) != l_1223) ^ 0UL))
            { /* block id: 665 */
                int32_t l_1253 = 0x33994CD8L;
                uint32_t l_1275 = 0UL;
                int32_t l_1296[5][1][3] = {{{0x30036775L,4L,0x30036775L}},{{0x30036775L,4L,0x30036775L}},{{0x30036775L,4L,0x30036775L}},{{0x30036775L,4L,0x30036775L}},{{0x30036775L,4L,0x30036775L}}};
                uint8_t l_1297 = 0UL;
                int i, j, k;
                for (p_1396->g_26.f2.f6 = 0; (p_1396->g_26.f2.f6 <= 0); p_1396->g_26.f2.f6 += 1)
                { /* block id: 668 */
                    uint32_t l_1254 = 0xEE42DD17L;
                    uint32_t l_1276 = 0UL;
                    for (p_1396->g_582.f6 = 0; (p_1396->g_582.f6 <= 0); p_1396->g_582.f6 += 1)
                    { /* block id: 671 */
                        int32_t *l_1251[2];
                        union U3 ****l_1272 = &p_1396->g_456;
                        union U3 *****l_1271 = &l_1272;
                        struct S0 l_1273 = {0x0BL,0x230252CE3B75FB3AL,0x5DC0600EL,0x3DFE3440L,0xA57FL};
                        struct S0 *l_1274 = &l_1273;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1251[i] = &p_1396->g_1211;
                        ++l_1254;
                        (*l_1210) = ((((*p_1396->g_583) , l_1257) , (safe_sub_func_int64_t_s_s((safe_mul_func_int16_t_s_s((l_1262 != (safe_rshift_func_int16_t_s_s(0x2F03L, (((safe_lshift_func_uint8_t_u_s(0UL, 4)) , (safe_mul_func_uint16_t_u_u(p_1396->g_76.f2, (safe_rshift_func_uint8_t_u_s((((((*l_1271) = &p_1396->g_456) == (((*l_1274) = ((*l_1243) = l_1273)) , (void*)0)) & p_1396->g_582.f4) , p_1396->g_423.f0), 1))))) & 4UL)))), p_1396->g_531.f5)), l_1252))) == l_1254);
                        (*l_23) = (l_1254 == l_1275);
                    }
                    if (l_1276)
                        break;
                    if (l_1275)
                        continue;
                    if ((atomic_inc(&p_1396->l_atomic_input[27]) == 5))
                    { /* block id: 682 */
                        uint32_t l_1277 = 0x2DA7F96FL;
                        int32_t l_1278 = 4L;
                        int16_t l_1279 = 0x62B0L;
                        int32_t *l_1280 = &l_1278;
                        int8_t l_1281[9] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
                        uint32_t l_1282 = 0xEDDC82FAL;
                        int32_t l_1285 = 0x4937B959L;
                        int64_t l_1286 = (-9L);
                        int i;
                        l_1278 = l_1277;
                        l_1280 = (l_1279 , l_1280);
                        l_1282--;
                        l_1286 = l_1285;
                        unsigned int result = 0;
                        result += l_1277;
                        result += l_1278;
                        result += l_1279;
                        int l_1281_i0;
                        for (l_1281_i0 = 0; l_1281_i0 < 9; l_1281_i0++) {
                            result += l_1281[l_1281_i0];
                        }
                        result += l_1282;
                        result += l_1285;
                        result += l_1286;
                        atomic_add(&p_1396->l_special_values[27], result);
                    }
                    else
                    { /* block id: 687 */
                        (1 + 1);
                    }
                }
                if (l_1244)
                    continue;
                for (p_1396->g_582.f0 = 0; (p_1396->g_582.f0 <= 0); p_1396->g_582.f0 += 1)
                { /* block id: 694 */
                    int32_t **l_1287 = &l_1210;
                    uint64_t *l_1288 = &p_1396->g_860;
                    int32_t l_1290 = 1L;
                    int32_t l_1295 = (-4L);
                    int i;
                    l_1244 |= ((((*l_1287) = &l_1252) == &l_1253) >= ((*l_1288) ^= p_1396->g_132[p_1396->g_582.f0]));
                    for (p_1396->g_5.f5 = 0; (p_1396->g_5.f5 <= 0); p_1396->g_5.f5 += 1)
                    { /* block id: 700 */
                        union U2 *l_1289 = (void*)0;
                        int32_t *l_1291[5][2] = {{&p_1396->g_70.f1,&p_1396->g_70.f1},{&p_1396->g_70.f1,&p_1396->g_70.f1},{&p_1396->g_70.f1,&p_1396->g_70.f1},{&p_1396->g_70.f1,&p_1396->g_70.f1},{&p_1396->g_70.f1,&p_1396->g_70.f1}};
                        int i, j;
                        (*p_1396->g_577) = l_1289;
                        l_1297--;
                        (*l_23) = (l_1300[2] |= l_1250);
                        return l_1244;
                    }
                }
            }
            else
            { /* block id: 708 */
                int32_t l_1312 = 0L;
                int32_t *l_1352 = (void*)0;
                int32_t *l_1353 = &l_1293;
                int32_t *l_1354 = (void*)0;
                int32_t *l_1355 = &l_1250;
                int32_t *l_1356 = &l_1292;
                int32_t *l_1357[10][5][2] = {{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}},{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}},{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}},{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}},{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}},{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}},{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}},{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}},{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}},{{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250},{&l_1292,&l_1250}}};
                uint16_t *l_1383 = &l_27.f4;
                int i, j, k;
                l_1312 &= (0x19E0B3F92A926141L | (safe_sub_func_int64_t_s_s(((safe_rshift_func_int8_t_s_s(((GROUP_DIVERGE(1, 1) || (((safe_mul_func_int8_t_s_s((l_1307 , (safe_div_func_int32_t_s_s(l_1257.f0, ((((void*)0 == (*p_1396->g_1108)) , (p_1396->g_455[1][0].f4--)) & (+p_1396->g_937.f5))))), 0x65L)) > (((*l_1210) = 0x5F5C0E1CL) || FAKE_DIVERGE(p_1396->local_1_offset, get_local_id(1), 10))) >= p_1396->g_582.f6)) ^ (**p_1396->g_1108)), 1)) < p_1396->g_617.f6), 0x682D127E089B1051L)));
                if ((atomic_inc(&p_1396->g_atomic_input[35 * get_linear_group_id() + 16]) == 9))
                { /* block id: 713 */
                    int32_t l_1313 = 0x1F953683L;
                    for (l_1313 = 0; (l_1313 <= 0); l_1313 += 1)
                    { /* block id: 716 */
                        int16_t l_1314 = 0x6DD3L;
                        uint32_t l_1315 = 4294967286UL;
                        struct S0 l_1316 = {-1L,0x5D43C5B7EF51A98EL,0L,4294967295UL,0xAE2DL};
                        int32_t l_1317 = 0x538458CCL;
                        struct S1 l_1318 = {0x227F74AEL,0x757E3DB4L,0x1FL,4294967294UL,4294967295UL,0L,0x98DB34CEL,-1L,0x2CL};/* VOLATILE GLOBAL l_1318 */
                        int16_t l_1319 = 0x2472L;
                        int16_t l_1320 = (-2L);
                        int8_t l_1321[4][7] = {{0x5DL,0x5DL,0x60L,0x49L,0x26L,0x49L,0x60L},{0x5DL,0x5DL,0x60L,0x49L,0x26L,0x49L,0x60L},{0x5DL,0x5DL,0x60L,0x49L,0x26L,0x49L,0x60L},{0x5DL,0x5DL,0x60L,0x49L,0x26L,0x49L,0x60L}};
                        struct S1 l_1322[10] = {{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L},{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L},{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L},{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L},{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L},{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L},{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L},{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L},{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L},{-1L,0x4B205B8CL,0x2EL,9UL,0xE5A8739BL,0x5102L,0x9372EBE7L,0x07C4DA93L,0x04L}};
                        uint32_t l_1323 = 5UL;
                        int8_t l_1324 = 0x21L;
                        uint64_t l_1325 = 0x654B4E8106CB8B20L;
                        int32_t *l_1326 = (void*)0;
                        int32_t *l_1327 = &l_1317;
                        int32_t *l_1328 = (void*)0;
                        int32_t *l_1329 = &l_1317;
                        int i, j;
                        l_1327 = ((l_1321[1][2] = (l_1320 ^= (l_1318.f1 = ((l_1315 = l_1314) , ((l_1316 , (l_1317 , l_1318)) , l_1319))))) , ((l_1322[6] , (l_1325 = (l_1323 , l_1324))) , l_1326));
                        l_1329 = l_1328;
                    }
                    for (l_1313 = 0; (l_1313 <= 0); l_1313 += 1)
                    { /* block id: 727 */
                        int32_t l_1331 = 0x447D79DBL;
                        int32_t *l_1330 = &l_1331;
                        union U3 l_1333[2] = {{{-1L,0L,0x0AL,0xB0490718L,0x5C8A1905L,0x4CCDL,0xCFB486B1L,0x1E7AA571L,-7L}},{{-1L,0L,0x0AL,0xB0490718L,0x5C8A1905L,0x4CCDL,0xCFB486B1L,0x1E7AA571L,-7L}}};
                        union U3 *l_1332 = &l_1333[1];
                        union U3 *l_1334[1][4][7] = {{{(void*)0,&l_1333[1],(void*)0,&l_1333[1],(void*)0,&l_1333[1],(void*)0},{(void*)0,&l_1333[1],(void*)0,&l_1333[1],(void*)0,&l_1333[1],(void*)0},{(void*)0,&l_1333[1],(void*)0,&l_1333[1],(void*)0,&l_1333[1],(void*)0},{(void*)0,&l_1333[1],(void*)0,&l_1333[1],(void*)0,&l_1333[1],(void*)0}}};
                        union U3 *l_1335 = &l_1333[1];
                        union U3 *l_1336 = &l_1333[1];
                        union U3 *l_1337 = &l_1333[1];
                        uint16_t l_1338 = 65528UL;
                        int64_t l_1339 = 0x680D2C5876146A20L;
                        uint32_t l_1340 = 0xE5D8A78AL;
                        int i, j, k;
                        l_1330 = (void*)0;
                        l_1337 = (l_1336 = (p_1396->g_461[p_1396->g_531.f6] , (l_1335 = (l_1334[0][2][1] = (l_1332 = (void*)0)))));
                        l_1340 |= (l_1339 = l_1338);
                    }
                    for (l_1313 = 0; (l_1313 >= 0); l_1313 -= 1)
                    { /* block id: 739 */
                        int8_t l_1341[9][6][3] = {{{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)}},{{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)}},{{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)}},{{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)}},{{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)}},{{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)}},{{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)}},{{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)}},{{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)},{(-1L),0x60L,(-1L)}}};
                        int32_t l_1342 = 0x03121283L;
                        int16_t l_1343 = 0L;
                        int32_t l_1344 = (-1L);
                        uint8_t l_1345 = 0x16L;
                        int32_t l_1348 = 0L;
                        uint8_t l_1349 = 0UL;
                        uint32_t l_1350 = 0xBD228E8AL;
                        uint8_t l_1351 = 1UL;
                        int i, j, k;
                        ++l_1345;
                        l_1349 = (l_1348 , 0x6F101F6CL);
                        l_1351 &= (l_1350 = (-10L));
                    }
                    unsigned int result = 0;
                    result += l_1313;
                    atomic_add(&p_1396->g_special_values[35 * get_linear_group_id() + 16], result);
                }
                else
                { /* block id: 745 */
                    (1 + 1);
                }
                ++l_1359;
                l_1210 = ((safe_add_func_uint32_t_u_u((safe_add_func_uint64_t_u_u(p_1396->g_5.f2, (safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u((safe_sub_func_int16_t_s_s(p_1396->g_423.f3, (GROUP_DIVERGE(1, 1) || (safe_add_func_int64_t_s_s((((safe_lshift_func_uint8_t_u_u((((0x1F6DD99E1981A3BFL < (safe_lshift_func_int8_t_s_s((-1L), 6))) > l_1380) & (safe_sub_func_uint32_t_u_u(((((*l_1383) ^= 0UL) ^ p_1396->g_684) || (((*l_1355) < (safe_add_func_int16_t_s_s(((*l_1355) != (*l_1355)), p_1396->g_617.f3))) == l_1244)), 0x5F0D3F92L))), 0)) || 0xD0L) >= 0L), 0UL))))), l_1252)) , p_1396->g_715.f7), p_1396->g_715.f5)), (*l_23))))), GROUP_DIVERGE(1, 1))) , &l_1250);
            }
            (*l_1387) = (((*l_1394) = (((((void*)0 != l_1386) , p_1396->g_70.f0.f2) , (((void*)0 == &p_1396->g_1242) , (18446744073709551615UL ^ ((safe_sub_func_int8_t_s_s(((0x38L || (safe_rshift_func_uint8_t_u_s((p_1396->g_421.f1 = (l_1257.f0 ^ (safe_mul_func_int16_t_s_s(p_1396->g_5.f8, (-10L))))), 0))) == l_1307.f0), 0x40L)) >= (*l_23))))) > 6UL)) , (*p_1396->g_736));
            return p_1396->g_830[3][0];
        }
        return p_1396->g_830[2][4];
    }
    return (*l_23);
}


/* ------------------------------------------ */
/* 
 * reads : p_1396->g_422.f7 p_1396->g_784 p_1396->g_421.f2 p_1396->g_531.f6 p_1396->g_76.f4 p_1396->g_737.f0.f2 p_1396->g_496 p_1396->g_24 p_1396->g_26.f0.f6 p_1396->g_70.f0.f5 p_1396->g_628 p_1396->g_583 p_1396->g_423.f8 p_1396->g_455.f4 p_1396->g_617.f7 p_1396->g_70.f0.f3 p_1396->g_70.f0.f0 p_1396->g_937 p_1396->g_70.f0.f1 p_1396->g_569 p_1396->g_76.f2 p_1396->g_458 p_1396->g_459 p_1396->g_455.f3 p_1396->g_566 p_1396->g_76.f3 p_1396->g_76.f1 p_1396->g_582.f0 p_1396->g_579.f0 p_1396->g_456 p_1396->g_455.f2 p_1396->g_617.f5 p_1396->g_573 p_1396->g_5.f2 p_1396->g_531.f0 p_1396->g_421.f0 p_1396->g_1080 p_1396->g_5.f6 p_1396->g_1096 p_1396->g_1099 p_1396->g_427.f1 p_1396->g_715.f5 p_1396->g_1108 p_1396->g_1111 p_1396->g_1109 p_1396->g_76.f6 p_1396->g_25 p_1396->g_70.f0.f2 p_1396->g_531.f5 p_1396->g_579.f5 p_1396->g_132 p_1396->g_1166 p_1396->g_754 p_1396->g_579.f1 p_1396->g_617.f3 p_1396->g_1192 p_1396->g_461.f0.f0 p_1396->g_423.f0 p_1396->g_582.f4
 * writes: p_1396->g_456 p_1396->g_496 p_1396->g_421.f2 p_1396->g_576 p_1396->g_628 p_1396->g_24 p_1396->g_26.f0.f6 p_1396->g_860 p_1396->g_531.f6 p_1396->g_26.f2.f5 p_1396->g_715.f6 p_1396->g_617.f5 p_1396->g_988 p_1396->g_71.f0.f4 p_1396->g_617.f7 p_1396->g_455.f0 p_1396->g_684 p_1396->g_421.f0 p_1396->g_76.f5 p_1396->g_5.f6 p_1396->g_455.f4 p_1396->g_1108 p_1396->g_70.f0.f5 p_1396->g_455 p_1396->g_754 p_1396->g_70.f2.f5 p_1396->g_422.f6 p_1396->g_579.f5 p_1396->g_428
 */
int32_t  func_6(uint8_t  p_7, uint8_t  p_8, union U2  p_9, uint64_t  p_10, int32_t  p_11, struct S6 * p_1396)
{ /* block id: 447 */
    union U3 *l_761[6][6] = {{&p_1396->g_70,&p_1396->g_71,&p_1396->g_70,&p_1396->g_70,&p_1396->g_70,&p_1396->g_71},{&p_1396->g_70,&p_1396->g_71,&p_1396->g_70,&p_1396->g_70,&p_1396->g_70,&p_1396->g_71},{&p_1396->g_70,&p_1396->g_71,&p_1396->g_70,&p_1396->g_70,&p_1396->g_70,&p_1396->g_71},{&p_1396->g_70,&p_1396->g_71,&p_1396->g_70,&p_1396->g_70,&p_1396->g_70,&p_1396->g_71},{&p_1396->g_70,&p_1396->g_71,&p_1396->g_70,&p_1396->g_70,&p_1396->g_70,&p_1396->g_71},{&p_1396->g_70,&p_1396->g_71,&p_1396->g_70,&p_1396->g_70,&p_1396->g_70,&p_1396->g_71}};
    union U3 **l_760 = &l_761[1][2];
    union U3 ***l_759 = &l_760;
    union U3 ****l_762 = &p_1396->g_456;
    union U3 ***l_780 = &l_760;
    union U3 ****l_779 = &l_780;
    int32_t l_781 = 0x573E20AEL;
    union U2 l_824[9][6] = {{{0L},{-1L},{0x688B3B41L},{-1L},{0L},{0L}},{{0L},{-1L},{0x688B3B41L},{-1L},{0L},{0L}},{{0L},{-1L},{0x688B3B41L},{-1L},{0L},{0L}},{{0L},{-1L},{0x688B3B41L},{-1L},{0L},{0L}},{{0L},{-1L},{0x688B3B41L},{-1L},{0L},{0L}},{{0L},{-1L},{0x688B3B41L},{-1L},{0L},{0L}},{{0L},{-1L},{0x688B3B41L},{-1L},{0L},{0L}},{{0L},{-1L},{0x688B3B41L},{-1L},{0L},{0L}},{{0L},{-1L},{0x688B3B41L},{-1L},{0L},{0L}}};
    struct S1 *l_833[5][4] = {{&p_1396->g_5,&p_1396->g_76,&p_1396->g_617,&p_1396->g_422},{&p_1396->g_5,&p_1396->g_76,&p_1396->g_617,&p_1396->g_422},{&p_1396->g_5,&p_1396->g_76,&p_1396->g_617,&p_1396->g_422},{&p_1396->g_5,&p_1396->g_76,&p_1396->g_617,&p_1396->g_422},{&p_1396->g_5,&p_1396->g_76,&p_1396->g_617,&p_1396->g_422}};
    union U2 ***l_865 = &p_1396->g_577;
    int32_t l_893 = 5L;
    struct S0 l_928 = {-10L,3L,1L,0x65EA1B46L,0x324CL};
    uint16_t l_931 = 1UL;
    int32_t l_934 = 0x66AB2CB5L;
    int32_t l_961[9];
    uint64_t *l_1185 = &p_1396->g_50;
    int32_t *l_1209 = (void*)0;
    int i, j;
    for (i = 0; i < 9; i++)
        l_961[i] = 1L;
    if ((safe_add_func_uint32_t_u_u(((l_759 == ((*l_762) = &l_760)) >= (safe_sub_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u((p_7 & (safe_sub_func_int32_t_s_s(((safe_div_func_int16_t_s_s(((1L || (!(safe_div_func_int16_t_s_s((p_1396->g_422.f7 | 65535UL), (0x7B95DBE8L ^ (((!5UL) != (safe_div_func_int32_t_s_s((((l_779 = &l_759) != &l_759) & 0x67D4AB7CL), 4294967287UL))) > p_7)))))) == p_8), 7L)) > 0x11L), l_781))), (-1L))), GROUP_DIVERGE(2, 1))), l_781))), FAKE_DIVERGE(p_1396->global_2_offset, get_global_id(2), 10))))
    { /* block id: 450 */
        int32_t *l_782[2];
        struct S1 *l_834 = &p_1396->g_579;
        union U3 ***l_856 = &l_760;
        union U2 ****l_866 = &p_1396->g_576[2];
        uint64_t *l_871 = &p_1396->g_628;
        uint8_t *l_876[10] = {&p_1396->g_421.f1,&p_1396->g_421.f1,&p_1396->g_421.f1,&p_1396->g_421.f1,&p_1396->g_421.f1,&p_1396->g_421.f1,&p_1396->g_421.f1,&p_1396->g_421.f1,&p_1396->g_421.f1,&p_1396->g_421.f1};
        int i;
        for (i = 0; i < 2; i++)
            l_782[i] = &p_1396->g_24;
        (*p_1396->g_784) = l_782[0];
        for (p_1396->g_421.f2 = 16; (p_1396->g_421.f2 <= (-11)); p_1396->g_421.f2 = safe_sub_func_int64_t_s_s(p_1396->g_421.f2, 5))
        { /* block id: 454 */
            uint8_t l_820 = 1UL;
            struct S1 *l_836 = &p_1396->g_70.f2;
            int32_t l_861 = 0x453B4E58L;
            int32_t **l_862 = &l_782[1];
            (1 + 1);
        }
        (*p_1396->g_496) &= ((safe_add_func_int32_t_s_s(((void*)0 == &p_9), (((*l_866) = l_865) == (void*)0))) > ((safe_mul_func_uint8_t_u_u(5UL, ((safe_lshift_func_uint8_t_u_u((l_871 != (void*)0), (p_9.f1 = (safe_mul_func_uint16_t_u_u(((((safe_div_func_uint64_t_u_u((p_1396->g_628 = (p_9.f0 & 0xA6F0341D1E7907D4L)), p_1396->g_531.f6)) & p_1396->g_76.f4) , p_9.f0) >= p_10), p_7))))) ^ 0x8C6880B7162251FEL))) ^ p_1396->g_737.f0.f2));
        for (p_1396->g_26.f0.f6 = 0; (p_1396->g_26.f0.f6 < 10); p_1396->g_26.f0.f6++)
        { /* block id: 492 */
            return p_10;
        }
    }
    else
    { /* block id: 495 */
        uint64_t l_887 = 0xDB6EFB561D8546A6L;
        int32_t l_892 = (-1L);
        if ((atomic_inc(&p_1396->g_atomic_input[35 * get_linear_group_id() + 3]) == 5))
        { /* block id: 497 */
            uint8_t l_879 = 1UL;
            int8_t l_880 = 0x23L;
            l_880 = l_879;
            unsigned int result = 0;
            result += l_879;
            result += l_880;
            atomic_add(&p_1396->g_special_values[35 * get_linear_group_id() + 3], result);
        }
        else
        { /* block id: 499 */
            (1 + 1);
        }
        l_893 &= (((((void*)0 != &p_1396->g_94[5]) != (safe_rshift_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_u(((void*)0 == &p_1396->g_496), 0)) ^ (&p_1396->g_576[2] != &p_1396->g_576[4])), l_887)), ((safe_lshift_func_uint16_t_u_u((l_892 = (safe_sub_func_int8_t_s_s((p_1396->g_737.f0.f2 <= (-9L)), 0L))), GROUP_DIVERGE(0, 1))) && p_1396->g_70.f0.f5)))) | l_781) < 4L);
    }
    for (p_1396->g_628 = 0; (p_1396->g_628 != 2); p_1396->g_628++)
    { /* block id: 507 */
        uint64_t *l_904 = (void*)0;
        uint64_t *l_905 = &p_1396->g_860;
        union U3 *l_908 = &p_1396->g_26;
        uint32_t *l_909 = &p_1396->g_531.f6;
        int32_t l_910 = 0x66B5BC8CL;
        int32_t l_956 = (-4L);
        uint32_t l_962 = 4294967291UL;
        union U2 ****l_1004 = &l_865;
        int32_t l_1034[7] = {0x41B46705L,(-1L),0x41B46705L,0x41B46705L,(-1L),0x41B46705L,0x41B46705L};
        uint64_t l_1055 = 0xF061F26A886DF913L;
        int i;
        if ((((void*)0 == &l_865) , ((safe_mul_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint64_t_u_u(((*l_905) = 0UL), ((0UL <= ((-8L) ^ l_781)) == (~(((*l_909) &= ((((*l_760) = l_908) == l_908) > (&l_893 == &l_781))) | 0x193CEC65L))))), l_910)), l_910)) > 65535UL), l_910)) < (*p_1396->g_583))))
        { /* block id: 511 */
            int32_t *l_923[7][8] = {{&p_1396->g_579.f7,&p_1396->g_617.f7,&p_1396->g_569,&p_1396->g_5.f7,&p_1396->g_569,&p_1396->g_617.f7,&p_1396->g_579.f7,&p_1396->g_423.f7},{&p_1396->g_579.f7,&p_1396->g_617.f7,&p_1396->g_569,&p_1396->g_5.f7,&p_1396->g_569,&p_1396->g_617.f7,&p_1396->g_579.f7,&p_1396->g_423.f7},{&p_1396->g_579.f7,&p_1396->g_617.f7,&p_1396->g_569,&p_1396->g_5.f7,&p_1396->g_569,&p_1396->g_617.f7,&p_1396->g_579.f7,&p_1396->g_423.f7},{&p_1396->g_579.f7,&p_1396->g_617.f7,&p_1396->g_569,&p_1396->g_5.f7,&p_1396->g_569,&p_1396->g_617.f7,&p_1396->g_579.f7,&p_1396->g_423.f7},{&p_1396->g_579.f7,&p_1396->g_617.f7,&p_1396->g_569,&p_1396->g_5.f7,&p_1396->g_569,&p_1396->g_617.f7,&p_1396->g_579.f7,&p_1396->g_423.f7},{&p_1396->g_579.f7,&p_1396->g_617.f7,&p_1396->g_569,&p_1396->g_5.f7,&p_1396->g_569,&p_1396->g_617.f7,&p_1396->g_579.f7,&p_1396->g_423.f7},{&p_1396->g_579.f7,&p_1396->g_617.f7,&p_1396->g_569,&p_1396->g_5.f7,&p_1396->g_569,&p_1396->g_617.f7,&p_1396->g_579.f7,&p_1396->g_423.f7}};
            int16_t *l_929 = (void*)0;
            int16_t *l_930 = &p_1396->g_26.f2.f5;
            int32_t l_932[5][10] = {{0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L},{0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L},{0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L},{0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L},{0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L,0x14563946L,0x54C84AB9L,0x54C84AB9L,0x14563946L}};
            int32_t *l_933 = (void*)0;
            int i, j;
            l_934 |= (safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((p_11 & ((l_781 || (((safe_mul_func_uint16_t_u_u((p_8 == ((safe_sub_func_int8_t_s_s(((((6L >= (safe_mul_func_uint8_t_u_u(((p_1396->g_455[1][0].f4 < (safe_sub_func_int8_t_s_s((((l_781 = ((l_893 = l_910) , (safe_add_func_int16_t_s_s((safe_add_func_uint8_t_u_u((p_8 && ((l_910 , (((*l_905) = ((((*l_930) = ((((l_928 , 65535UL) >= p_10) | (*p_1396->g_583)) < p_1396->g_617.f7)) || l_931) == 4294967288UL)) & p_1396->g_70.f0.f3)) & l_910)), l_931)), l_910)))) , 9UL) >= 2L), l_932[1][9]))) != 0UL), p_1396->g_70.f0.f0))) | p_11) , &l_910) == (void*)0), 0x0DL)) >= 0x4DDAL)), p_8)) == l_910) ^ (*p_1396->g_496))) <= p_11)), l_910)), FAKE_DIVERGE(p_1396->global_2_offset, get_global_id(2), 10)));
        }
        else
        { /* block id: 517 */
            uint8_t l_954 = 0x6BL;
            uint16_t *l_955 = &l_931;
            int32_t *l_957 = (void*)0;
            int32_t *l_958 = &l_781;
            int32_t *l_959 = &l_934;
            int32_t *l_960[8][8] = {{&l_910,&l_893,&l_781,&p_1396->g_24,(void*)0,&p_1396->g_24,&l_781,&l_893},{&l_910,&l_893,&l_781,&p_1396->g_24,(void*)0,&p_1396->g_24,&l_781,&l_893},{&l_910,&l_893,&l_781,&p_1396->g_24,(void*)0,&p_1396->g_24,&l_781,&l_893},{&l_910,&l_893,&l_781,&p_1396->g_24,(void*)0,&p_1396->g_24,&l_781,&l_893},{&l_910,&l_893,&l_781,&p_1396->g_24,(void*)0,&p_1396->g_24,&l_781,&l_893},{&l_910,&l_893,&l_781,&p_1396->g_24,(void*)0,&p_1396->g_24,&l_781,&l_893},{&l_910,&l_893,&l_781,&p_1396->g_24,(void*)0,&p_1396->g_24,&l_781,&l_893},{&l_910,&l_893,&l_781,&p_1396->g_24,(void*)0,&p_1396->g_24,&l_781,&l_893}};
            union U3 ****l_983 = &l_780;
            int16_t l_1002 = 0L;
            int32_t l_1033 = 0L;
            uint16_t l_1039 = 0x84C0L;
            int i, j;
            (*p_1396->g_496) = (safe_mod_func_int64_t_s_s((((p_1396->g_455[1][0].f4 ^ l_824[1][5].f0) & ((p_8 >= l_910) || p_7)) & l_910), (+(p_1396->g_937 , p_7))));
            (*l_958) = ((*p_1396->g_496) = (safe_rshift_func_int16_t_s_s(l_893, ((safe_mul_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((p_1396->g_70.f0.f1 && (safe_div_func_uint32_t_u_u((safe_add_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u(18446744073709551611UL, ((*l_905) = (l_954 < ((FAKE_DIVERGE(p_1396->local_0_offset, get_local_id(0), 10) , p_11) > ((*l_955) = (p_9 , 0x0F49L))))))) ^ ((l_910 &= p_10) > (-1L))), p_1396->g_569)), l_956))), p_1396->g_76.f2)), 0x1847L)), 0xA4195CFCL)) | (-1L)), l_893)) , 3L))));
            ++l_962;
            for (p_1396->g_715.f6 = 0; (p_1396->g_715.f6 <= 2); p_1396->g_715.f6 += 1)
            { /* block id: 527 */
                int16_t *l_984 = &p_1396->g_617.f5;
                int32_t l_985 = 0x0683BFDBL;
                int32_t **l_986 = &l_960[3][6];
                int32_t ***l_987[6] = {&l_986,&l_986,&l_986,&l_986,&l_986,&l_986};
                uint32_t l_989 = 1UL;
                uint32_t l_1054 = 0x49E09403L;
                int i;
                if ((~(p_7 > ((safe_add_func_uint32_t_u_u(((4294967292UL > ((*p_1396->g_458) != ((((safe_sub_func_uint32_t_u_u(((*l_909) |= ((((((FAKE_DIVERGE(p_1396->group_1_offset, get_group_id(1), 10) == (safe_add_func_int16_t_s_s((safe_div_func_uint8_t_u_u((safe_add_func_int64_t_s_s((!((!(p_1396->g_455[1][0].f3 || p_1396->g_566)) < (((p_1396->g_937.f4 != l_928.f2) , (((((p_1396->g_988[8][1] = (((safe_mul_func_int8_t_s_s(((((safe_sub_func_uint64_t_u_u((FAKE_DIVERGE(p_1396->local_0_offset, get_local_id(0), 10) && (((*l_984) = (safe_div_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(((l_928.f1 , l_983) == &p_1396->g_458), p_11)), 0x7BB7L))) >= 0x0F34L)), 0x780EB93D5EA11EF8L)) ^ l_985) ^ (*l_959)) | p_10), p_1396->g_76.f3)) < 246UL) , l_986)) == (void*)0) & p_1396->g_76.f1) <= p_1396->g_582.f0) , GROUP_DIVERGE(2, 1))) < 0L))), p_10)), 0x01L)), l_928.f3))) < 1L) <= p_1396->g_579.f0) == p_10) <= p_7) , FAKE_DIVERGE(p_1396->global_0_offset, get_global_id(0), 10))), p_8)) > (*l_958)) , 0x4B40A25CDA2FC354L) , (*p_1396->g_456)))) == p_1396->g_455[1][0].f2), p_8)) , p_8))))
                { /* block id: 531 */
                    int8_t *l_998[5][3][3] = {{{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0}},{{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0}},{{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0}},{{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0}},{{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0},{&p_1396->g_455[1][0].f0,&p_1396->g_684,&l_928.f0}}};
                    int i, j, k;
                    --l_989;
                    (*p_1396->g_496) ^= (safe_rshift_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(((((*l_955) = 1UL) > ((((*l_984) |= (-1L)) | ((-1L) == 0L)) <= ((safe_div_func_uint8_t_u_u(0xEBL, (p_9.f2 = p_8))) , 4294967295UL))) ^ 0x12498EBFC960E94CL), (*p_1396->g_583))), 9));
                }
                else
                { /* block id: 537 */
                    int64_t *l_999 = (void*)0;
                    union U2 ****l_1003 = &l_865;
                    union U2 *****l_1005 = &l_1004;
                    l_956 = ((l_910 ^= 0L) > ((((+(++(*l_909))) <= l_1002) , ((*l_955) = FAKE_DIVERGE(p_1396->local_0_offset, get_local_id(0), 10))) < (l_1003 == ((*l_1005) = l_1004))));
                }
                for (p_1396->g_71.f0.f4 = 0; (p_1396->g_71.f0.f4 <= 0); p_1396->g_71.f0.f4 += 1)
                { /* block id: 546 */
                    uint32_t l_1006 = 0x3D108BBEL;
                    int32_t *l_1021 = (void*)0;
                    int32_t l_1028 = 0x34ED7F40L;
                    int32_t l_1035 = 9L;
                    int32_t l_1036 = 0x1DFEA04CL;
                    for (p_1396->g_617.f7 = 0; (p_1396->g_617.f7 >= 0); p_1396->g_617.f7 -= 1)
                    { /* block id: 549 */
                        int8_t *l_1013 = (void*)0;
                        int8_t *l_1014 = &p_1396->g_455[1][0].f0;
                        int32_t l_1016[2];
                        int32_t l_1022 = 1L;
                        int8_t *l_1023 = (void*)0;
                        int8_t *l_1024 = &p_1396->g_684;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1016[i] = 1L;
                        (**p_1396->g_573) = l_1006;
                        (*l_958) &= (safe_add_func_int32_t_s_s((safe_add_func_int16_t_s_s(((~0L) >= ((safe_add_func_uint32_t_u_u((((*l_1014) = l_1006) >= ((safe_unary_minus_func_int8_t_s((p_1396->g_5.f2 || p_1396->g_617.f7))) <= GROUP_DIVERGE(0, 1))), l_1016[1])) > (safe_add_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(((*l_1024) = (l_1022 = (&l_1016[1] == l_1021))), (p_1396->g_421.f2 = (safe_add_func_uint16_t_u_u(l_956, (p_7 ^ FAKE_DIVERGE(p_1396->local_1_offset, get_local_id(1), 10))))))), p_11)))), p_1396->g_531.f0)), p_10));
                    }
                    for (p_9.f1 = 0; (p_9.f1 <= 2); p_9.f1 += 1)
                    { /* block id: 559 */
                        int32_t l_1027 = 0x6465C4EBL;
                        int32_t l_1029[4][5][8] = {{{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL}},{{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL}},{{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL}},{{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL},{0x06A59177L,(-5L),(-1L),0x4AC9462AL,0x16411615L,0x06A59177L,0x4AC9462AL,0x5A6ECA8DL}}};
                        int32_t l_1030 = 8L;
                        int32_t l_1031 = 0L;
                        int8_t l_1032 = (-1L);
                        int32_t l_1037 = (-8L);
                        int32_t l_1038 = (-6L);
                        int i, j, k;
                        if (p_7)
                            break;
                        ++l_1039;
                        if (p_9.f1)
                            continue;
                    }
                    if ((atomic_inc(&p_1396->g_atomic_input[35 * get_linear_group_id() + 34]) == 0))
                    { /* block id: 565 */
                        int32_t l_1042 = (-2L);
                        uint8_t l_1045 = 0x8FL;
                        uint8_t *l_1044 = &l_1045;
                        uint8_t **l_1043 = &l_1044;
                        uint8_t **l_1046[9] = {&l_1044,&l_1044,&l_1044,&l_1044,&l_1044,&l_1044,&l_1044,&l_1044,&l_1044};
                        struct S1 l_1047 = {0x56111A59L,0x4F7E232AL,3L,0x9A3AAC8DL,0xEFFB7C9FL,1L,0UL,-5L,-5L};/* VOLATILE GLOBAL l_1047 */
                        struct S1 l_1048 = {0x086811AFL,-10L,0x08L,0x8453621AL,1UL,0x072BL,4294967295UL,4L,0L};/* VOLATILE GLOBAL l_1048 */
                        struct S0 l_1050[2][4][1] = {{{{1L,0x707F2D0C3491741BL,0x34818FF6L,0x1C062CE0L,0x1759L}},{{1L,0x707F2D0C3491741BL,0x34818FF6L,0x1C062CE0L,0x1759L}},{{1L,0x707F2D0C3491741BL,0x34818FF6L,0x1C062CE0L,0x1759L}},{{1L,0x707F2D0C3491741BL,0x34818FF6L,0x1C062CE0L,0x1759L}}},{{{1L,0x707F2D0C3491741BL,0x34818FF6L,0x1C062CE0L,0x1759L}},{{1L,0x707F2D0C3491741BL,0x34818FF6L,0x1C062CE0L,0x1759L}},{{1L,0x707F2D0C3491741BL,0x34818FF6L,0x1C062CE0L,0x1759L}},{{1L,0x707F2D0C3491741BL,0x34818FF6L,0x1C062CE0L,0x1759L}}}};
                        struct S0 *l_1049 = &l_1050[1][2][0];
                        struct S0 *l_1051 = &l_1050[1][2][0];
                        uint16_t l_1052[4][5] = {{0x76EAL,0x71FCL,0x76EAL,0x76EAL,0x71FCL},{0x76EAL,0x71FCL,0x76EAL,0x76EAL,0x71FCL},{0x76EAL,0x71FCL,0x76EAL,0x76EAL,0x71FCL},{0x76EAL,0x71FCL,0x76EAL,0x76EAL,0x71FCL}};
                        uint16_t l_1053 = 0UL;
                        int i, j, k;
                        l_1046[2] = (l_1042 , l_1043);
                        l_1048 = l_1047;
                        l_1051 = l_1049;
                        l_1053 |= l_1052[3][4];
                        unsigned int result = 0;
                        result += l_1042;
                        result += l_1045;
                        result += l_1047.f0;
                        result += l_1047.f1;
                        result += l_1047.f2;
                        result += l_1047.f3;
                        result += l_1047.f4;
                        result += l_1047.f5;
                        result += l_1047.f6;
                        result += l_1047.f7;
                        result += l_1047.f8;
                        result += l_1048.f0;
                        result += l_1048.f1;
                        result += l_1048.f2;
                        result += l_1048.f3;
                        result += l_1048.f4;
                        result += l_1048.f5;
                        result += l_1048.f6;
                        result += l_1048.f7;
                        result += l_1048.f8;
                        int l_1050_i0, l_1050_i1, l_1050_i2;
                        for (l_1050_i0 = 0; l_1050_i0 < 2; l_1050_i0++) {
                            for (l_1050_i1 = 0; l_1050_i1 < 4; l_1050_i1++) {
                                for (l_1050_i2 = 0; l_1050_i2 < 1; l_1050_i2++) {
                                    result += l_1050[l_1050_i0][l_1050_i1][l_1050_i2].f0;
                                    result += l_1050[l_1050_i0][l_1050_i1][l_1050_i2].f1;
                                    result += l_1050[l_1050_i0][l_1050_i1][l_1050_i2].f2;
                                    result += l_1050[l_1050_i0][l_1050_i1][l_1050_i2].f3;
                                    result += l_1050[l_1050_i0][l_1050_i1][l_1050_i2].f4;
                                }
                            }
                        }
                        int l_1052_i0, l_1052_i1;
                        for (l_1052_i0 = 0; l_1052_i0 < 4; l_1052_i0++) {
                            for (l_1052_i1 = 0; l_1052_i1 < 5; l_1052_i1++) {
                                result += l_1052[l_1052_i0][l_1052_i1];
                            }
                        }
                        result += l_1053;
                        atomic_add(&p_1396->g_special_values[35 * get_linear_group_id() + 34], result);
                    }
                    else
                    { /* block id: 570 */
                        (1 + 1);
                    }
                    if (l_1054)
                        continue;
                }
                if (l_1055)
                    continue;
            }
        }
    }
    for (p_1396->g_421.f0 = 2; (p_1396->g_421.f0 >= (-14)); --p_1396->g_421.f0)
    { /* block id: 581 */
        int16_t l_1069 = 0L;
        int32_t l_1070 = 0x70CC723FL;
        int32_t l_1071 = 1L;
        int32_t l_1072 = 0L;
        int32_t l_1073 = 0x64CCD51DL;
        int32_t l_1074[8] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
        int64_t l_1075[8][2] = {{0x08B6B068708FB953L,0x08B6B068708FB953L},{0x08B6B068708FB953L,0x08B6B068708FB953L},{0x08B6B068708FB953L,0x08B6B068708FB953L},{0x08B6B068708FB953L,0x08B6B068708FB953L},{0x08B6B068708FB953L,0x08B6B068708FB953L},{0x08B6B068708FB953L,0x08B6B068708FB953L},{0x08B6B068708FB953L,0x08B6B068708FB953L},{0x08B6B068708FB953L,0x08B6B068708FB953L}};
        uint16_t l_1076 = 0UL;
        uint32_t *l_1107 = &p_1396->g_423.f6;
        uint32_t **l_1106 = &l_1107;
        uint32_t ***l_1110 = &p_1396->g_1108;
        int64_t *l_1113 = &l_1075[2][0];
        int32_t *l_1152 = &l_1071;
        uint16_t l_1153 = 0x38BBL;
        union U2 ***l_1155 = &p_1396->g_577;
        uint16_t l_1208[8][2][7] = {{{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL},{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL}},{{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL},{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL}},{{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL},{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL}},{{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL},{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL}},{{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL},{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL}},{{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL},{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL}},{{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL},{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL}},{{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL},{0x6C71L,65535UL,3UL,65535UL,1UL,1UL,1UL}}};
        int i, j, k;
        for (p_1396->g_76.f5 = 20; (p_1396->g_76.f5 <= (-27)); p_1396->g_76.f5 = safe_sub_func_int32_t_s_s(p_1396->g_76.f5, 2))
        { /* block id: 584 */
            int32_t *l_1060 = (void*)0;
            int32_t *l_1061 = &p_1396->g_71.f1;
            int32_t *l_1062 = &l_781;
            int32_t *l_1063 = &p_1396->g_24;
            int32_t *l_1064 = &p_1396->g_26.f1;
            int32_t *l_1065 = (void*)0;
            int32_t *l_1066 = &p_1396->g_24;
            int32_t *l_1067 = &p_1396->g_24;
            int32_t *l_1068[5][3][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            uint32_t *l_1094 = &p_1396->g_70.f2.f6;
            uint32_t *l_1095 = &p_1396->g_5.f6;
            uint16_t *l_1097 = (void*)0;
            uint16_t *l_1098 = &p_1396->g_455[1][0].f4;
            int i, j, k;
            l_1076++;
            if (l_928.f3)
                continue;
            (*p_1396->g_1080) = (*p_1396->g_784);
            (*l_1062) |= (safe_lshift_func_uint8_t_u_u((l_928.f2 & (l_934 = ((*l_1098) = (safe_unary_minus_func_int32_t_s((safe_lshift_func_int16_t_s_u(((safe_div_func_uint64_t_u_u((((safe_sub_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(((-1L) ^ l_1069), (((safe_add_func_uint32_t_u_u(((*l_1095) |= 4UL), 4294967288UL)) > 0x41FB7FFBB71044D1L) == p_7))), 248UL)) > l_934) || p_11), p_1396->g_566)) & p_1396->g_1096), 10))))))), 7));
        }
        if (p_7)
            break;
        (*p_1396->g_1099) = &l_934;
        if ((safe_add_func_uint64_t_u_u((p_7 ^ (safe_mod_func_uint16_t_u_u(((((safe_add_func_uint64_t_u_u(((p_11 && p_1396->g_427.f1) < (p_1396->g_715.f5 , ((((~((l_893 , l_1106) == ((*l_1110) = p_1396->g_1108))) >= (((*l_1113) = (((void*)0 == p_1396->g_1111) & (*p_1396->g_1109))) && 7UL)) && 1UL) > 18446744073709551608UL))), p_10)) == p_10) < p_8) >= GROUP_DIVERGE(1, 1)), 0x49B8L))), l_781)))
        { /* block id: 597 */
            uint64_t *l_1149[7] = {&p_1396->g_628,&p_1396->g_628,&p_1396->g_628,&p_1396->g_628,&p_1396->g_628,&p_1396->g_628,&p_1396->g_628};
            int32_t l_1150 = 0L;
            struct S0 *l_1154 = &p_1396->g_455[1][0];
            int16_t *l_1156 = &p_1396->g_754;
            int16_t *l_1157 = (void*)0;
            int16_t *l_1158 = (void*)0;
            int16_t *l_1159 = &p_1396->g_70.f2.f5;
            int i;
            if ((atomic_inc(&p_1396->l_atomic_input[21]) == 8))
            { /* block id: 599 */
                uint64_t l_1114 = 0x3662ADBE659B1A3AL;
                uint64_t l_1115 = 0UL;
                l_1115 = l_1114;
                for (l_1115 = 1; (l_1115 <= 5); l_1115 += 1)
                { /* block id: 603 */
                    uint8_t l_1116[1];
                    uint32_t l_1117 = 0xA727CBE2L;
                    uint16_t l_1118 = 0x058FL;
                    int16_t l_1119[7][8] = {{0x7AE1L,0x23D3L,0x4430L,9L,0x23D3L,9L,0x4430L,0x23D3L},{0x7AE1L,0x23D3L,0x4430L,9L,0x23D3L,9L,0x4430L,0x23D3L},{0x7AE1L,0x23D3L,0x4430L,9L,0x23D3L,9L,0x4430L,0x23D3L},{0x7AE1L,0x23D3L,0x4430L,9L,0x23D3L,9L,0x4430L,0x23D3L},{0x7AE1L,0x23D3L,0x4430L,9L,0x23D3L,9L,0x4430L,0x23D3L},{0x7AE1L,0x23D3L,0x4430L,9L,0x23D3L,9L,0x4430L,0x23D3L},{0x7AE1L,0x23D3L,0x4430L,9L,0x23D3L,9L,0x4430L,0x23D3L}};
                    int32_t l_1140 = 0x12B6C37AL;
                    int32_t *l_1141 = &l_1140;
                    int32_t *l_1142 = &l_1140;
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_1116[i] = 0UL;
                    if ((((l_1118 = (l_1117 = l_1116[0])) , 0x0CA05981L) , l_1119[3][1]))
                    { /* block id: 606 */
                        struct S0 l_1120[2] = {{2L,0x0412A856B154FD0EL,-1L,0x49BD93B9L,65534UL},{2L,0x0412A856B154FD0EL,-1L,0x49BD93B9L,65534UL}};
                        struct S0 l_1121 = {0x5CL,-10L,0L,0x9FF8121EL,0xD139L};
                        int8_t l_1122 = 1L;
                        int32_t l_1123 = 1L;
                        int8_t l_1124 = 0x07L;
                        int64_t l_1125[10][7][3] = {{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}},{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}},{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}},{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}},{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}},{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}},{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}},{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}},{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}},{{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)},{0x465D02C67BBA59EDL,0x465D02C67BBA59EDL,(-1L)}}};
                        int8_t l_1126[2][4][9] = {{{0x59L,0x2BL,0x30L,0x55L,0x2BL,0x55L,0x30L,0x2BL,0x59L},{0x59L,0x2BL,0x30L,0x55L,0x2BL,0x55L,0x30L,0x2BL,0x59L},{0x59L,0x2BL,0x30L,0x55L,0x2BL,0x55L,0x30L,0x2BL,0x59L},{0x59L,0x2BL,0x30L,0x55L,0x2BL,0x55L,0x30L,0x2BL,0x59L}},{{0x59L,0x2BL,0x30L,0x55L,0x2BL,0x55L,0x30L,0x2BL,0x59L},{0x59L,0x2BL,0x30L,0x55L,0x2BL,0x55L,0x30L,0x2BL,0x59L},{0x59L,0x2BL,0x30L,0x55L,0x2BL,0x55L,0x30L,0x2BL,0x59L},{0x59L,0x2BL,0x30L,0x55L,0x2BL,0x55L,0x30L,0x2BL,0x59L}}};
                        int i, j, k;
                        l_1121 = l_1120[0];
                        l_1123 ^= l_1122;
                        l_1126[0][3][4] = (l_1125[5][5][0] = l_1124);
                    }
                    else
                    { /* block id: 611 */
                        union U3 l_1127 = {{0x336BA259L,0x7F6E65F1L,8L,0xD201845DL,4294967286UL,0x4582L,0xEC601EF1L,0x2A876646L,-3L}};/* VOLATILE GLOBAL l_1127 */
                        union U3 l_1128 = {{0L,0x1DDB0983L,-1L,0xC39C19ABL,0xBCDB77A3L,-8L,4294967295UL,6L,-1L}};/* VOLATILE GLOBAL l_1128 */
                        int8_t l_1129[8][3] = {{6L,0x37L,6L},{6L,0x37L,6L},{6L,0x37L,6L},{6L,0x37L,6L},{6L,0x37L,6L},{6L,0x37L,6L},{6L,0x37L,6L},{6L,0x37L,6L}};
                        struct S0 l_1130 = {-1L,0x3BDDC7A5482C3EACL,0x2A1A9017L,0x48CF549DL,0xA7F5L};
                        struct S0 l_1131 = {1L,0x7FE0DC41C9B848B6L,0x5CD3D17BL,0x171D370FL,65535UL};
                        struct S0 l_1132[7] = {{0x04L,-1L,-1L,0x3E2C5D6CL,0x3189L},{0x04L,-1L,-1L,0x3E2C5D6CL,0x3189L},{0x04L,-1L,-1L,0x3E2C5D6CL,0x3189L},{0x04L,-1L,-1L,0x3E2C5D6CL,0x3189L},{0x04L,-1L,-1L,0x3E2C5D6CL,0x3189L},{0x04L,-1L,-1L,0x3E2C5D6CL,0x3189L},{0x04L,-1L,-1L,0x3E2C5D6CL,0x3189L}};
                        struct S0 l_1133[8] = {{0x54L,9L,1L,0x910798B1L,4UL},{0x54L,9L,1L,0x910798B1L,4UL},{0x54L,9L,1L,0x910798B1L,4UL},{0x54L,9L,1L,0x910798B1L,4UL},{0x54L,9L,1L,0x910798B1L,4UL},{0x54L,9L,1L,0x910798B1L,4UL},{0x54L,9L,1L,0x910798B1L,4UL},{0x54L,9L,1L,0x910798B1L,4UL}};
                        int32_t l_1134 = 0x48901C2BL;
                        int64_t l_1135 = 4L;
                        uint32_t l_1136 = 0x630C6FB7L;
                        int32_t *l_1137 = (void*)0;
                        int32_t *l_1138[6][8][3] = {{{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134}},{{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134}},{{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134}},{{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134}},{{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134}},{{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134},{&l_1134,&l_1134,&l_1134}}};
                        int32_t *l_1139 = (void*)0;
                        int i, j, k;
                        l_1130 = ((((l_1127 , ((l_1114 = FAKE_DIVERGE(p_1396->group_1_offset, get_group_id(1), 10)) , l_1128)) , l_1129[3][0]) , l_1130) , (l_1133[6] = (l_1132[5] = l_1131)));
                        l_1135 ^= (l_1134 = l_1134);
                        l_1134 &= l_1136;
                        l_1139 = (l_1138[0][2][0] = l_1137);
                    }
                    l_1142 = (l_1140 , (l_1141 = (void*)0));
                }
                unsigned int result = 0;
                result += l_1114;
                result += l_1115;
                atomic_add(&p_1396->l_special_values[21], result);
            }
            else
            { /* block id: 625 */
                (1 + 1);
            }
            (*p_1396->g_496) = (((*l_1159) = ((*l_1156) = (p_1396->g_25 , ((((*l_1154) = func_30((l_1152 = &l_1150), l_1153, p_1396->g_70.f0.f2, p_11, p_10, p_1396)) , l_1155) != &p_1396->g_577)))) , (-9L));
            for (p_1396->g_422.f6 = (-2); (p_1396->g_422.f6 >= 10); p_1396->g_422.f6 = safe_add_func_int32_t_s_s(p_1396->g_422.f6, 7))
            { /* block id: 636 */
                uint16_t *l_1181[4][9] = {{&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076},{&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076},{&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076},{&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076,&l_1076}};
                int32_t l_1182 = 3L;
                int32_t l_1186 = (-1L);
                int8_t *l_1187 = &p_1396->g_684;
                int i, j;
                if (p_10)
                    break;
                (*l_1152) = ((!(safe_add_func_int32_t_s_s(l_931, (safe_mod_func_int8_t_s_s((p_1396->g_1166 , ((*l_1187) = (safe_sub_func_int16_t_s_s(((safe_add_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(p_10, (((++p_8) != (safe_sub_func_int32_t_s_s((!0L), (safe_lshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u((**p_1396->g_1108), ((l_1182 = FAKE_DIVERGE(p_1396->local_0_offset, get_local_id(0), 10)) != ((safe_sub_func_int16_t_s_s(0x1DB0L, ((*l_1156) &= ((p_1396->g_25 , (*p_1396->g_1108)) != (void*)0)))) != p_1396->g_579.f1)))), p_1396->g_617.f3))))) <= l_1150))) || p_11), l_1186)) || p_11), GROUP_DIVERGE(1, 1))))), p_1396->g_1166.f3))))) == 0x3A5FL);
                (*l_1152) = ((safe_lshift_func_int16_t_s_u(((*l_1156) = ((*l_1159) = ((safe_rshift_func_int16_t_s_s(((p_1396->g_1192 , (+((!(((((((safe_rshift_func_int8_t_s_u(0x73L, (*l_1152))) & p_11) > ((safe_mul_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((((safe_lshift_func_int8_t_s_u((safe_add_func_int16_t_s_s((0L == GROUP_DIVERGE(1, 1)), (safe_mod_func_int16_t_s_s(((l_1113 != (void*)0) , (0L && (safe_rshift_func_uint16_t_u_s(((p_1396->g_579.f5 |= ((safe_unary_minus_func_uint64_t_u(((0x7019B4B2L < p_7) < 0x734DDE72L))) >= 0x721EL)) && p_1396->g_461[0].f0.f0), 9)))), 65526UL)))), p_1396->g_423.f0)) , &p_1396->g_1096) == &p_11), 0xD1L)), l_1186)) <= 0x7B0CL)) > p_10) , (*l_1152)) != 18446744073709551607UL) , (**p_1396->g_1108))) && l_1186))) ^ p_1396->g_582.f4), l_1208[3][1][6])) ^ 6UL))), 4)) , 0x2F1D84D3L);
            }
        }
        else
        { /* block id: 648 */
            p_1396->g_428 = &p_1396->g_427;
        }
    }
    l_1209 = &l_961[3];
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1396->g_5.f5 p_1396->g_5.f1 p_1396->g_70 p_1396->g_71 p_1396->g_5.f8 p_1396->g_71.f0.f6 p_1396->g_76 p_1396->g_26.f0.f0 p_1396->g_71.f0.f0 p_1396->g_93 p_1396->g_26.f0.f1 p_1396->g_94 p_1396->g_5.f7 p_1396->g_24 p_1396->g_109 p_1396->g_26.f0.f7 p_1396->g_5 p_1396->g_118 p_1396->g_132 p_1396->g_88 p_1396->g_70.f0.f1 p_1396->g_70.f0.f8 p_1396->g_70.f0.f6 p_1396->g_70.f0.f0 p_1396->g_421 p_1396->g_422 p_1396->g_423.f5 p_1396->g_427 p_1396->g_106 p_1396->g_421.f0 p_1396->g_423.f6 p_1396->g_70.f0.f4 p_1396->g_70.f0.f3 p_1396->g_455 p_1396->g_456 p_1396->g_458 p_1396->g_464 p_1396->g_70.f2.f7 p_1396->g_25 p_1396->g_617 p_1396->g_618 p_1396->g_496 p_1396->g_619 p_1396->g_628 p_1396->g_583 p_1396->g_423.f8 p_1396->g_531.f0 p_1396->g_582.f7 p_1396->g_684 p_1396->g_423.f4 p_1396->g_531.f6 p_1396->g_582.f6 p_1396->g_531.f1 p_1396->g_566 p_1396->g_715 p_1396->g_573 p_1396->g_531.f4 p_1396->g_531.f5 p_1396->g_579.f5 p_1396->g_70.f0.f5 p_1396->g_582.f0 p_1396->g_736 p_1396->g_737 p_1396->g_754
 * writes: p_1396->g_50 p_1396->g_71.f0.f6 p_1396->g_76.f5 p_1396->g_88 p_1396->g_93 p_1396->g_106 p_1396->g_24 p_1396->g_109 p_1396->g_26.f0 p_1396->g_26.f1 p_1396->g_5.f0 p_1396->g_71.f2.f6 p_1396->g_423 p_1396->g_456 p_1396->g_455.f0 p_1396->g_71.f1 p_1396->g_465 p_1396->g_76.f4 p_1396->g_70.f2.f7 p_1396->g_582 p_1396->g_427 p_1396->g_628 p_1396->g_5.f1 p_1396->g_70.f0.f6 p_1396->g_617.f1 p_1396->g_5.f6 p_1396->g_684 p_1396->g_70.f0.f5 p_1396->g_455.f4 p_1396->g_455 p_1396->g_754
 */
uint16_t  func_12(uint32_t  p_13, int8_t  p_14, int64_t  p_15, int16_t  p_16, struct S6 * p_1396)
{ /* block id: 6 */
    int64_t l_42 = 0x2DBE4212CF720AFDL;
    uint64_t *l_49 = &p_1396->g_50;
    struct S0 l_57[9][5][5] = {{{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}}},{{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}}},{{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}}},{{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}}},{{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}}},{{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}}},{{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}}},{{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}}},{{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}},{{0L,-8L,-1L,0UL,65531UL},{0L,-8L,-1L,0UL,65531UL},{-9L,0L,0x527381ABL,0UL,0UL},{-1L,0x5E9F1F6A35EB2538L,-3L,1UL,1UL},{0x48L,-1L,6L,0xC708470FL,1UL}}}};
    int32_t *l_58 = &p_1396->g_24;
    int32_t l_748 = (-6L);
    union U2 l_749 = {1L};
    int32_t *l_750 = &p_1396->g_26.f1;
    int32_t *l_751 = &p_1396->g_71.f1;
    int32_t *l_752 = &p_1396->g_70.f1;
    int32_t *l_753[4];
    int32_t **l_755 = &l_751;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_753[i] = &p_1396->g_70.f1;
    (*p_1396->g_736) = func_30(func_36(l_42, p_1396->g_5.f5, func_43((((*l_49) = 0xA138A8004C3D8FFFL) , (((l_42 | (((safe_sub_func_uint8_t_u_u(p_1396->g_5.f1, p_16)) > (func_53(l_57[6][0][0], l_58, func_59(func_61(func_66(((p_1396->g_70 , p_1396->g_71) , p_1396->g_5.f8), l_49, p_16, p_1396), &p_1396->g_50, p_1396->g_26.f0.f7, p_15, p_1396), p_1396), p_1396) , p_14)) , p_1396->g_93)) <= p_1396->g_76.f4) >= 5L)), p_1396->g_70.f0.f0, p_1396->g_421, l_58, l_58, p_1396), p_1396->g_421, p_1396->g_5.f5, p_1396), p_14, p_16, p_16, p_1396->g_531.f4, p_1396);
    p_1396->g_754 &= ((p_1396->g_737 , (((((safe_lshift_func_uint16_t_u_u((p_1396->g_455[1][0].f4 = (*l_58)), 12)) | (safe_mul_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((l_748 &= (safe_add_func_uint16_t_u_u((0x4CL | 0L), 6UL))), (p_14 || (l_749 , (p_13 & p_1396->g_531.f1))))), 0xA5A5L))) & (*l_58)) == 0xD5243D1CB5D4690CL) < 0x5690L)) , (*l_58));
    (*l_755) = (*p_1396->g_573);
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_1396->g_496 p_1396->g_531.f5 p_1396->g_579.f5 p_1396->g_132 p_1396->g_70.f0.f5 p_1396->g_582.f0 p_1396->g_715.f5 p_1396->g_455.f4 p_1396->g_455.f3 p_1396->g_24
 * writes: p_1396->g_24 p_1396->g_70.f0.f5 p_1396->g_455.f4
 */
struct S0  func_30(int32_t * p_31, int32_t  p_32, int32_t  p_33, uint64_t  p_34, int32_t  p_35, struct S6 * p_1396)
{ /* block id: 434 */
    int16_t *l_724[6] = {&p_1396->g_5.f5,&p_1396->g_70.f0.f5,&p_1396->g_5.f5,&p_1396->g_5.f5,&p_1396->g_70.f0.f5,&p_1396->g_5.f5};
    uint16_t *l_727 = &p_1396->g_455[1][0].f4;
    int32_t l_730 = 0x3CA2107CL;
    int32_t *l_731 = &p_1396->g_71.f1;
    int32_t *l_732 = &p_1396->g_71.f1;
    int32_t *l_733 = &p_1396->g_71.f1;
    int32_t *l_734[8];
    struct S0 l_735 = {1L,-4L,0L,8UL,65535UL};
    int i;
    for (i = 0; i < 8; i++)
        l_734[i] = &p_1396->g_26.f1;
    (*p_1396->g_496) = 0x4E00111EL;
    p_32 &= (((safe_mul_func_int16_t_s_s((+(safe_lshift_func_int16_t_s_s(p_1396->g_531.f5, 8))), ((GROUP_DIVERGE(0, 1) & p_1396->g_579.f5) <= (safe_lshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s((p_1396->g_70.f0.f5 &= p_1396->g_132[0]), (l_730 = (p_35 == ((p_1396->g_582.f0 , (p_1396->g_715.f5 >= GROUP_DIVERGE(2, 1))) > (safe_div_func_int32_t_s_s((((((p_35 <= 0L) >= (--(*l_727))) , (0x45158294L <= GROUP_DIVERGE(0, 1))) == p_1396->g_455[1][0].f3) == (*p_1396->g_496)), (*p_31)))))))), 1))))) > 18446744073709551606UL) < 0x1090L);
    return l_735;
}


/* ------------------------------------------ */
/* 
 * reads : p_1396->g_423.f5 p_1396->g_427 p_1396->g_106 p_1396->g_76.f5 p_1396->g_421.f0 p_1396->g_423.f6 p_1396->g_70.f0.f4 p_1396->g_76.f4 p_1396->g_70.f0.f3 p_1396->g_76.f6 p_1396->g_24 p_1396->g_455 p_1396->g_456 p_1396->g_458 p_1396->g_464 p_1396->g_70.f2.f7 p_1396->g_25 p_1396->g_617 p_1396->g_618 p_1396->g_496 p_1396->g_619 p_1396->g_628 p_1396->g_5.f1 p_1396->g_583 p_1396->g_423.f8 p_1396->g_70.f0.f6 p_1396->g_76.f1 p_1396->g_531.f0 p_1396->g_582.f7 p_1396->g_684 p_1396->g_88 p_1396->g_423.f4 p_1396->g_531.f6 p_1396->g_582.f6 p_1396->g_531.f1 p_1396->g_422.f4 p_1396->g_70.f0.f0 p_1396->g_5.f4 p_1396->g_566 p_1396->g_715 p_1396->g_118 p_1396->g_573
 * writes: p_1396->g_423.f5 p_1396->g_456 p_1396->g_455.f0 p_1396->g_71.f1 p_1396->g_465 p_1396->g_76.f4 p_1396->g_70.f2.f7 p_1396->g_582 p_1396->g_24 p_1396->g_427 p_1396->g_628 p_1396->g_5.f1 p_1396->g_70.f0.f6 p_1396->g_617.f1 p_1396->g_5.f6 p_1396->g_684 p_1396->g_88 p_1396->g_26.f0
 */
int32_t * func_36(uint32_t  p_37, uint16_t  p_38, int32_t * p_39, union U2  p_40, uint16_t  p_41, struct S6 * p_1396)
{ /* block id: 308 */
    volatile struct S0 l_430 = {1L,-9L,0x39D737CCL,1UL,0UL};/* VOLATILE GLOBAL l_430 */
    union U3 *l_443 = (void*)0;
    union U3 **l_442[9] = {&l_443,(void*)0,&l_443,&l_443,(void*)0,&l_443,&l_443,(void*)0,&l_443};
    uint64_t **l_451 = (void*)0;
    int32_t l_462 = 6L;
    union U2 **l_519 = &p_1396->g_465;
    union U2 ***l_518 = &l_519;
    int32_t l_560 = (-1L);
    uint64_t *l_571 = &p_1396->g_50;
    int32_t l_623 = (-8L);
    int32_t l_624 = 0x3A23DC40L;
    int32_t l_625 = 0x1A9FC6FEL;
    int32_t l_626 = 6L;
    int32_t l_627 = 0x6D373CFAL;
    uint32_t l_636 = 0x70C46270L;
    union U4 *l_692 = (void*)0;
    int64_t l_712 = 0x50854C3C43FC4122L;
    int i;
    for (p_1396->g_423.f5 = (-17); (p_1396->g_423.f5 >= 22); p_1396->g_423.f5 = safe_add_func_int8_t_s_s(p_1396->g_423.f5, 9))
    { /* block id: 311 */
        union U3 *l_438 = &p_1396->g_70;
        union U3 **l_437[9][6][4] = {{{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0}},{{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0}},{{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0}},{{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0}},{{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0}},{{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0}},{{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0}},{{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0}},{{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0},{&l_438,&l_438,&l_438,(void*)0}}};
        union U3 ***l_439 = &l_437[6][2][0];
        union U3 **l_441 = &l_438;
        union U3 ***l_440 = &l_441;
        uint64_t **l_450 = (void*)0;
        int32_t l_452 = 1L;
        uint16_t l_491 = 1UL;
        struct S1 *l_530 = &p_1396->g_531;
        union U2 ***l_533[6];
        uint32_t l_534[1];
        int32_t l_563 = 0x59555F0DL;
        int32_t l_564 = 0x64046486L;
        struct S0 l_580 = {0x56L,0x023B9660330BEF68L,-10L,0x2BC9A9AAL,65531UL};
        int32_t *l_613[9] = {&p_1396->g_71.f1,&p_1396->g_71.f1,&p_1396->g_71.f1,&p_1396->g_71.f1,&p_1396->g_71.f1,&p_1396->g_71.f1,&p_1396->g_71.f1,&p_1396->g_71.f1,&p_1396->g_71.f1};
        uint64_t l_614 = 0x7818E7137DE6C006L;
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_533[i] = (void*)0;
        for (i = 0; i < 1; i++)
            l_534[i] = 4294967288UL;
        l_430 = p_1396->g_427;
        if ((((((safe_mod_func_uint16_t_u_u(((p_1396->g_106 >= ((safe_lshift_func_uint16_t_u_u(((((safe_rshift_func_int16_t_s_u(((((FAKE_DIVERGE(p_1396->local_2_offset, get_local_id(2), 10) >= (p_1396->g_76.f5 && (((*l_440) = ((*l_439) = l_437[3][2][3])) == l_442[5]))) != (0UL | (p_1396->g_421.f0 , (safe_sub_func_int16_t_s_s(p_1396->g_423.f6, (safe_mod_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(p_1396->g_70.f0.f4, p_1396->g_76.f4)), p_40.f0))))))) != (-7L)) != 0L), p_41)) , 1UL) , l_450) == l_451), 7)) >= 250UL)) | p_41), p_1396->g_70.f0.f3)) ^ p_1396->g_76.f6) >= p_1396->g_76.f6) , GROUP_DIVERGE(0, 1)) && l_452))
        { /* block id: 315 */
            union U3 ****l_457 = &p_1396->g_456;
            int8_t *l_463 = &p_1396->g_455[1][0].f0;
            p_1396->g_71.f1 = (((*p_39) & p_1396->g_427.f2) ^ ((*l_463) = (safe_sub_func_uint32_t_u_u((((p_1396->g_455[1][0] , (((8L >= l_452) , (0x55EF046F770A81F9L >= ((((*l_457) = (l_452 , p_1396->g_456)) == p_1396->g_458) < p_1396->g_70.f0.f3))) < p_38)) > l_462) != (*p_39)), (*p_39)))));
        }
        else
        { /* block id: 319 */
            struct S0 l_494 = {0x61L,-2L,0L,0x1D036D66L,65526UL};
            uint64_t *l_497 = &p_1396->g_50;
            int32_t l_542 = 0x4560E43CL;
            int32_t l_543 = 0x65D380EAL;
            int32_t l_565 = 0x75BD2EDDL;
            (*p_1396->g_464) = &p_1396->g_421;
            for (p_1396->g_76.f4 = (-23); (p_1396->g_76.f4 < 43); p_1396->g_76.f4 = safe_add_func_uint16_t_u_u(p_1396->g_76.f4, 1))
            { /* block id: 323 */
                uint32_t l_468 = 0xC2AF8158L;
                struct S0 l_471 = {0x72L,0L,0x66AF02A5L,0xBBEB9D53L,0x8514L};
                int16_t *l_472 = &p_1396->g_422.f5;
                union U3 ***l_479 = &l_442[5];
                union U3 ****l_480 = &l_440;
                union U2 **l_489 = &p_1396->g_465;
                union U2 ***l_488 = &l_489;
                int16_t *l_490 = &p_1396->g_76.f5;
                int8_t *l_492 = &p_1396->g_421.f2;
                uint16_t *l_493 = &p_1396->g_455[1][0].f4;
                uint64_t *l_495 = &p_1396->g_50;
                int32_t l_536 = (-8L);
                int32_t l_559 = (-1L);
                int32_t l_561 = (-1L);
                int32_t l_562[7];
                uint64_t l_612 = 0x06163C303698BE85L;
                int i;
                for (i = 0; i < 7; i++)
                    l_562[i] = 1L;
                (1 + 1);
            }
            l_462 = (*p_39);
        }
    }
    for (p_1396->g_70.f2.f7 = 23; (p_1396->g_70.f2.f7 <= (-3)); --p_1396->g_70.f2.f7)
    { /* block id: 388 */
        if ((l_430.f1 > (-1L)))
        { /* block id: 389 */
            (*p_1396->g_618) = (p_1396->g_25 , p_1396->g_617);
        }
        else
        { /* block id: 391 */
            (*p_1396->g_496) &= l_462;
            (*p_1396->g_619) = l_430;
        }
        (*p_39) = (*p_39);
    }
    if ((safe_add_func_uint32_t_u_u((+GROUP_DIVERGE(0, 1)), ((*p_1396->g_496) = (*p_1396->g_496)))))
    { /* block id: 398 */
        int32_t *l_622[5][3][3] = {{{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0}},{{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0}},{{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0}},{{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0}},{{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0},{(void*)0,&l_462,(void*)0}}};
        union U2 ****l_635 = &l_518;
        int16_t l_688 = (-9L);
        union U3 *l_689[8] = {&p_1396->g_26,&p_1396->g_26,&p_1396->g_26,&p_1396->g_26,&p_1396->g_26,&p_1396->g_26,&p_1396->g_26,&p_1396->g_26};
        int i, j, k;
        p_1396->g_628++;
        for (p_1396->g_5.f1 = 0; (p_1396->g_5.f1 <= (-19)); p_1396->g_5.f1--)
        { /* block id: 402 */
            (*p_39) ^= (safe_lshift_func_uint8_t_u_s(((GROUP_DIVERGE(2, 1) < (&p_1396->g_576[5] != l_635)) > l_636), 4));
            (*p_39) = (safe_unary_minus_func_uint64_t_u((safe_lshift_func_int8_t_s_u(l_636, (+((*p_1396->g_583) ^ GROUP_DIVERGE(2, 1)))))));
        }
        for (p_1396->g_70.f0.f6 = 0; (p_1396->g_70.f0.f6 == 9); ++p_1396->g_70.f0.f6)
        { /* block id: 408 */
            union U2 ****l_670 = &l_518;
            int32_t l_672 = 0x3CDB5595L;
            uint32_t *l_673 = &p_1396->g_5.f6;
            for (p_1396->g_617.f1 = 4; (p_1396->g_617.f1 >= 1); p_1396->g_617.f1 -= 1)
            { /* block id: 411 */
                union U2 *****l_671 = &l_670;
                uint32_t *l_675 = (void*)0;
                uint32_t **l_674 = &l_675;
                int8_t *l_676 = &p_1396->g_455[1][0].f0;
                int16_t *l_677[8][9][3] = {{{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0}},{{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0}},{{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0}},{{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0}},{{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0}},{{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0}},{{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0}},{{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0},{&p_1396->g_579.f5,&p_1396->g_582.f5,(void*)0}}};
                int8_t *l_678 = (void*)0;
                int8_t *l_679 = &p_1396->g_421.f2;
                int8_t *l_680 = &p_1396->g_421.f2;
                int8_t *l_681 = &p_1396->g_421.f2;
                int8_t *l_682 = (void*)0;
                int8_t *l_683[3][4] = {{&p_1396->g_684,&p_1396->g_684,&p_1396->g_684,&p_1396->g_684},{&p_1396->g_684,&p_1396->g_684,&p_1396->g_684,&p_1396->g_684},{&p_1396->g_684,&p_1396->g_684,&p_1396->g_684,&p_1396->g_684}};
                uint8_t *l_685 = (void*)0;
                uint8_t *l_686 = (void*)0;
                uint8_t *l_687 = &p_1396->g_88;
                int i, j, k;
                l_688 &= ((*p_1396->g_496) &= (safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (((((((safe_rshift_func_uint16_t_u_u(65535UL, 10)) <= ((((*l_687) |= ((p_1396->g_684 &= (safe_rshift_func_uint16_t_u_u(p_40.f0, (0xABC36E59L ^ ((safe_div_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(((*l_673) = (safe_div_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u((((FAKE_DIVERGE(p_1396->local_2_offset, get_local_id(2), 10) & (((safe_rshift_func_uint16_t_u_s((safe_rshift_func_int16_t_s_s((l_560 = (safe_mod_func_int64_t_s_s(((FAKE_DIVERGE(p_1396->global_2_offset, get_global_id(2), 10) & ((safe_add_func_int32_t_s_s((((*l_676) = ((safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_1396->global_2_offset, get_global_id(2), 10), ((p_40.f0 > (((*l_671) = l_670) != (void*)0)) == (l_672 >= (l_673 != ((*l_674) = p_39)))))) <= p_1396->g_423.f5)) , 0L), GROUP_DIVERGE(0, 1))) & l_636)) == l_430.f1), 1L))), 6)), 6)) < p_1396->g_76.f1) , 0L)) >= p_1396->g_531.f0) <= p_40.f0), l_636)) < GROUP_DIVERGE(0, 1)), p_41))), (-1L))), p_1396->g_582.f7)) < FAKE_DIVERGE(p_1396->global_0_offset, get_global_id(0), 10)))))) ^ p_40.f0)) || l_672) < p_1396->g_423.f4)) != p_1396->g_531.f6) , p_41) > FAKE_DIVERGE(p_1396->global_0_offset, get_global_id(0), 10)) | 0x31CB2CC0L) | 1UL))), 0)));
                return p_39;
            }
            return p_39;
        }
        l_689[7] = l_689[7];
    }
    else
    { /* block id: 426 */
        uint64_t **l_693[9][4] = {{&p_1396->g_94[4],(void*)0,&p_1396->g_94[4],&p_1396->g_94[4]},{&p_1396->g_94[4],(void*)0,&p_1396->g_94[4],&p_1396->g_94[4]},{&p_1396->g_94[4],(void*)0,&p_1396->g_94[4],&p_1396->g_94[4]},{&p_1396->g_94[4],(void*)0,&p_1396->g_94[4],&p_1396->g_94[4]},{&p_1396->g_94[4],(void*)0,&p_1396->g_94[4],&p_1396->g_94[4]},{&p_1396->g_94[4],(void*)0,&p_1396->g_94[4],&p_1396->g_94[4]},{&p_1396->g_94[4],(void*)0,&p_1396->g_94[4],&p_1396->g_94[4]},{&p_1396->g_94[4],(void*)0,&p_1396->g_94[4],&p_1396->g_94[4]},{&p_1396->g_94[4],(void*)0,&p_1396->g_94[4],&p_1396->g_94[4]}};
        uint32_t *l_704[8][7] = {{&p_1396->g_617.f6,&p_1396->g_617.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0},{&p_1396->g_617.f6,&p_1396->g_617.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0},{&p_1396->g_617.f6,&p_1396->g_617.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0},{&p_1396->g_617.f6,&p_1396->g_617.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0},{&p_1396->g_617.f6,&p_1396->g_617.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0},{&p_1396->g_617.f6,&p_1396->g_617.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0},{&p_1396->g_617.f6,&p_1396->g_617.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0},{&p_1396->g_617.f6,&p_1396->g_617.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0,&p_1396->g_70.f2.f6,(void*)0}};
        int32_t l_705 = 0x040A9C77L;
        int32_t l_706 = 0L;
        struct S0 l_711 = {0x3FL,0x3C1D19D8AF7FF8FBL,-1L,4294967295UL,0UL};
        struct S1 *l_714 = &p_1396->g_70.f0;
        struct S1 **l_713 = &l_714;
        int i, j;
        (*p_1396->g_496) = (((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), ((void*)0 == l_692))) != (l_693[5][2] != &p_1396->g_94[2])) == (safe_add_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((safe_add_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u((safe_add_func_uint32_t_u_u((l_705 = 4294967295UL), (++p_1396->g_582.f6))), (((*p_39) , ((((safe_lshift_func_int16_t_s_u(((l_430.f1 > (((((((l_711 , (0x6EL | 0x03L)) & (*p_1396->g_496)) , l_712) <= p_1396->g_531.f1) > p_1396->g_422.f4) | p_1396->g_70.f0.f0) && FAKE_DIVERGE(p_1396->global_0_offset, get_global_id(0), 10))) >= p_1396->g_76.f4), p_1396->g_5.f4)) , l_711.f0) <= p_38) <= l_711.f4)) | p_1396->g_566))), 0x059B9FA9FCBA27AFL)), l_625)), p_41)));
        (*l_713) = (void*)0;
    }
    (*p_1396->g_118) = p_1396->g_715;
    return (*p_1396->g_573);
}


/* ------------------------------------------ */
/* 
 * reads : p_1396->g_422 p_1396->g_24
 * writes: p_1396->g_423 p_1396->g_24
 */
int32_t * func_43(int64_t  p_44, int32_t  p_45, union U2  p_46, int32_t * p_47, int32_t * p_48, struct S6 * p_1396)
{ /* block id: 304 */
    struct S0 l_424 = {9L,0x3E5581B7193B276EL,8L,0x23D29D25L,0UL};
    p_1396->g_423 = p_1396->g_422;
    (*p_47) &= ((l_424 , &p_1396->g_76) == (void*)0);
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_1396->g_71
 * writes:
 */
union U3  func_53(struct S0  p_54, int32_t * p_55, uint64_t * p_56, struct S6 * p_1396)
{ /* block id: 181 */
    if ((atomic_inc(&p_1396->l_atomic_input[28]) == 4))
    { /* block id: 183 */
        int64_t l_284[2];
        int32_t l_285 = 0x6760DDEFL;
        int64_t l_286 = (-1L);
        int32_t l_368 = 0x17ECAB1AL;
        uint64_t l_369 = 0UL;
        int i;
        for (i = 0; i < 2; i++)
            l_284[i] = (-1L);
        l_285 &= l_284[0];
        if (l_286)
        { /* block id: 185 */
            int32_t l_287 = 0x53A4AA70L;
            for (l_287 = 3; (l_287 != (-9)); l_287--)
            { /* block id: 188 */
                int32_t l_290[5] = {0x58202A96L,0x58202A96L,0x58202A96L,0x58202A96L,0x58202A96L};
                int i;
                for (l_290[4] = (-7); (l_290[4] != (-22)); l_290[4]--)
                { /* block id: 191 */
                    uint32_t l_293 = 1UL;
                    int32_t l_323 = 1L;
                    int32_t *l_322 = &l_323;
                    int32_t *l_324[10] = {&l_323,(void*)0,&l_323,&l_323,(void*)0,&l_323,&l_323,(void*)0,&l_323,&l_323};
                    uint32_t l_325 = 4294967295UL;
                    int i;
                    if (l_293)
                    { /* block id: 192 */
                        union U5 l_294 = {0x308A3910C8C6545CL};/* VOLATILE GLOBAL l_294 */
                        int32_t l_296 = 0L;
                        int32_t *l_295 = &l_296;
                        int32_t *l_297 = &l_296;
                        int32_t *l_298 = (void*)0;
                        int32_t *l_299 = &l_296;
                        int8_t l_300 = 0x18L;
                        int32_t l_301 = 0L;
                        int64_t l_302[7];
                        int32_t *l_303 = &l_296;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_302[i] = 0x0114D95A1F14D55DL;
                        l_299 = (l_298 = (l_294 , (l_297 = (l_295 = (void*)0))));
                        l_302[3] ^= (l_285 = (l_300 , l_301));
                        l_295 = (l_299 = l_303);
                    }
                    else
                    { /* block id: 201 */
                        union U3 l_304 = {{3L,1L,-1L,4294967286UL,4294967295UL,0x665CL,4294967286UL,0x5C2E0908L,0x64L}};/* VOLATILE GLOBAL l_304 */
                        struct S1 l_305 = {-2L,0x25AB1F19L,-1L,1UL,0x0A05DC37L,0x4A1EL,0x8C3FE841L,-6L,-6L};/* VOLATILE GLOBAL l_305 */
                        struct S1 l_306 = {0x5D15F9FAL,0L,0x7AL,0x2BC48011L,4UL,0x24ADL,0xB76EDE2AL,9L,0x7CL};/* VOLATILE GLOBAL l_306 */
                        struct S0 l_307 = {0x72L,-2L,0x5692D6A2L,0x65CCBA45L,0xD23DL};
                        struct S0 l_308 = {2L,1L,0L,4294967295UL,6UL};
                        union U3 l_309 = {{-4L,0x1AAE1C52L,0x2BL,1UL,0x32053EDEL,0x6EAFL,0x79152DB5L,4L,0L}};/* VOLATILE GLOBAL l_309 */
                        int32_t l_311 = 0x3CDC27C5L;
                        int32_t *l_310[4] = {&l_311,&l_311,&l_311,&l_311};
                        int32_t *l_312 = &l_309.f1;
                        int i;
                        l_306 = (l_304 , l_305);
                        l_307 = (l_308 = l_307);
                        l_312 = (l_309 , l_310[0]);
                    }
                    for (l_293 = (-28); (l_293 == 50); l_293 = safe_add_func_int16_t_s_s(l_293, 8))
                    { /* block id: 209 */
                        uint16_t l_315 = 0x3E8DL;
                        int32_t l_317 = 0L;
                        int32_t *l_316 = &l_317;
                        int32_t *l_318 = &l_317;
                        int32_t *l_319 = &l_317;
                        int32_t *l_320 = &l_317;
                        int32_t *l_321[9] = {&l_317,&l_317,&l_317,&l_317,&l_317,&l_317,&l_317,&l_317,&l_317};
                        int i;
                        l_315 |= 0L;
                        l_319 = (l_318 = l_316);
                        l_321[7] = l_320;
                    }
                    l_324[6] = l_322;
                    if ((l_285 = l_325))
                    { /* block id: 217 */
                        int32_t l_326 = 0x578F6340L;
                        uint8_t l_327 = 1UL;
                        uint16_t l_330[10] = {0x45A7L,0x45A7L,0x45A7L,0x45A7L,0x45A7L,0x45A7L,0x45A7L,0x45A7L,0x45A7L,0x45A7L};
                        int64_t l_333 = 0x6EDDB57425ED6436L;
                        int32_t l_334[5][10] = {{0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL},{0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL},{0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL},{0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL},{0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL,0L,0x5A49117AL,0x5A49117AL}};
                        int32_t l_335 = 0x291ADDB1L;
                        int32_t l_336 = 0x4E386B8EL;
                        int64_t l_337[5][4] = {{0x6CE3712527B866AFL,(-2L),0x09A34895A382B66FL,(-1L)},{0x6CE3712527B866AFL,(-2L),0x09A34895A382B66FL,(-1L)},{0x6CE3712527B866AFL,(-2L),0x09A34895A382B66FL,(-1L)},{0x6CE3712527B866AFL,(-2L),0x09A34895A382B66FL,(-1L)},{0x6CE3712527B866AFL,(-2L),0x09A34895A382B66FL,(-1L)}};
                        int32_t l_338 = 0x1867B717L;
                        int16_t l_339[3];
                        int64_t l_340 = (-8L);
                        uint32_t l_341 = 0xD0BA8BC9L;
                        int16_t l_344 = 0x1E60L;
                        int32_t l_345 = 0L;
                        int32_t *l_346[2][4][3] = {{{&l_326,&l_326,(void*)0},{&l_326,&l_326,(void*)0},{&l_326,&l_326,(void*)0},{&l_326,&l_326,(void*)0}},{{&l_326,&l_326,(void*)0},{&l_326,&l_326,(void*)0},{&l_326,&l_326,(void*)0},{&l_326,&l_326,(void*)0}}};
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_339[i] = 9L;
                        l_327--;
                        ++l_330[1];
                        l_324[6] = (l_333 , ((l_345 |= ((l_286 ^= (l_334[1][1] , l_335)) , (GROUP_DIVERGE(1, 1) , (((--l_341) , l_344) , 7L)))) , l_346[1][1][1]));
                    }
                    else
                    { /* block id: 224 */
                        uint32_t l_347 = 0x98202F03L;
                        uint64_t l_348[8][4][2] = {{{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L}},{{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L}},{{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L}},{{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L}},{{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L}},{{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L}},{{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L}},{{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L},{0xEAB65C3F3B8ECD33L,0x4B7787EF4D777133L}}};
                        int i, j, k;
                        (*l_322) = (-1L);
                        (*l_322) |= l_347;
                        (*l_322) |= l_348[0][0][0];
                    }
                }
                for (l_290[4] = 0; (l_290[4] >= 2); l_290[4] = safe_add_func_uint8_t_u_u(l_290[4], 1))
                { /* block id: 232 */
                    struct S0 l_352 = {-3L,0x32380D268F8804C8L,-5L,0x50D68474L,7UL};
                    struct S0 *l_351 = &l_352;
                    uint32_t l_353 = 4294967288UL;
                    int16_t l_354 = 0x6AF0L;
                    struct S1 l_355 = {0x755FFDFCL,-1L,0x50L,0x919450E3L,4294967290UL,0x10F9L,7UL,1L,6L};/* VOLATILE GLOBAL l_355 */
                    struct S0 l_356 = {0x34L,-3L,1L,0UL,0x74B7L};
                    struct S0 l_357[7] = {{0x3CL,0x319BA3C1E89176C1L,0x3BA93A8FL,0xBE95067DL,3UL},{0x3CL,0x319BA3C1E89176C1L,0x3BA93A8FL,0xBE95067DL,3UL},{0x3CL,0x319BA3C1E89176C1L,0x3BA93A8FL,0xBE95067DL,3UL},{0x3CL,0x319BA3C1E89176C1L,0x3BA93A8FL,0xBE95067DL,3UL},{0x3CL,0x319BA3C1E89176C1L,0x3BA93A8FL,0xBE95067DL,3UL},{0x3CL,0x319BA3C1E89176C1L,0x3BA93A8FL,0xBE95067DL,3UL},{0x3CL,0x319BA3C1E89176C1L,0x3BA93A8FL,0xBE95067DL,3UL}};
                    int i;
                    l_351 = (void*)0;
                    l_285 = l_353;
                    l_285 = l_354;
                    l_357[0] = (l_355 , l_356);
                }
            }
        }
        else
        { /* block id: 239 */
            struct S1 l_358 = {0x4BAB417EL,0x5FE59A75L,-1L,0x9F9D5CF4L,1UL,0x0263L,1UL,0x4D1B255AL,0L};/* VOLATILE GLOBAL l_358 */
            struct S1 l_359 = {5L,1L,0x12L,4294967295UL,4294967295UL,0x33CFL,1UL,0x7697B577L,0L};/* VOLATILE GLOBAL l_359 */
            uint8_t l_360[6][2] = {{255UL,9UL},{255UL,9UL},{255UL,9UL},{255UL,9UL},{255UL,9UL},{255UL,9UL}};
            int16_t l_367 = 0L;
            int i, j;
            l_359 = l_358;
            l_285 = 0x118B35C8L;
            if (l_360[3][0])
            { /* block id: 242 */
                uint32_t l_361[9][8] = {{1UL,6UL,0x8A2873C9L,0x8A2873C9L,6UL,1UL,0x401ACA9AL,2UL},{1UL,6UL,0x8A2873C9L,0x8A2873C9L,6UL,1UL,0x401ACA9AL,2UL},{1UL,6UL,0x8A2873C9L,0x8A2873C9L,6UL,1UL,0x401ACA9AL,2UL},{1UL,6UL,0x8A2873C9L,0x8A2873C9L,6UL,1UL,0x401ACA9AL,2UL},{1UL,6UL,0x8A2873C9L,0x8A2873C9L,6UL,1UL,0x401ACA9AL,2UL},{1UL,6UL,0x8A2873C9L,0x8A2873C9L,6UL,1UL,0x401ACA9AL,2UL},{1UL,6UL,0x8A2873C9L,0x8A2873C9L,6UL,1UL,0x401ACA9AL,2UL},{1UL,6UL,0x8A2873C9L,0x8A2873C9L,6UL,1UL,0x401ACA9AL,2UL},{1UL,6UL,0x8A2873C9L,0x8A2873C9L,6UL,1UL,0x401ACA9AL,2UL}};
                union U4 l_362 = {1UL};/* VOLATILE GLOBAL l_362 */
                uint16_t l_363 = 0x1D23L;
                uint64_t l_364[7][8][4] = {{{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL}},{{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL}},{{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL}},{{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL}},{{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL}},{{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL}},{{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL},{0x7C05B540A995F434L,18446744073709551606UL,0xEF268FBBF0085196L,18446744073709551615UL}}};
                int i, j, k;
                l_285 ^= 0x08C2293CL;
                l_364[3][2][1] = (l_285 |= ((l_361[1][6] , l_362) , l_363));
            }
            else
            { /* block id: 246 */
                struct S0 l_365 = {0x61L,0x59327A0D4482E2FCL,0x09EE21CDL,4294967295UL,0xA137L};
                struct S0 l_366 = {1L,0x208F47CF580B91C3L,-8L,0x5881E402L,0xC49BL};
                l_285 = ((l_366 = l_365) , (-4L));
            }
            l_285 ^= l_367;
        }
        l_369 = (l_368 , 0x4FA9DFD7L);
        for (l_284[1] = 15; (l_284[1] >= (-19)); l_284[1] = safe_sub_func_int64_t_s_s(l_284[1], 6))
        { /* block id: 255 */
            union U2 l_372 = {-4L};
            union U4 l_374 = {0UL};/* VOLATILE GLOBAL l_374 */
            union U4 *l_373[2][7][7] = {{{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374}},{{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374},{&l_374,&l_374,&l_374,(void*)0,&l_374,&l_374,&l_374}}};
            union U4 *l_375 = &l_374;
            union U4 *l_376 = &l_374;
            union U3 l_419 = {{-8L,0x2838DF87L,0x45L,0x1E7FC388L,0xECA447E0L,0x1BE5L,0UL,-2L,8L}};/* VOLATILE GLOBAL l_419 */
            union U3 *l_418 = &l_419;
            union U3 *l_420 = &l_419;
            int i, j, k;
            l_376 = (GROUP_DIVERGE(1, 1) , (l_372 , (l_375 = l_373[1][4][4])));
            if ((l_368 = 0x04D48654L))
            { /* block id: 259 */
                int32_t l_377 = 0x11EDEE00L;
                for (l_377 = 0; (l_377 == (-28)); --l_377)
                { /* block id: 262 */
                    int32_t l_380 = 0x693607AAL;
                    for (l_380 = 13; (l_380 == (-7)); --l_380)
                    { /* block id: 265 */
                        struct S1 l_383 = {0x69953D97L,1L,0x14L,0x8DF83868L,4294967295UL,-1L,0x8E2A2C89L,0x31973DD0L,-1L};/* VOLATILE GLOBAL l_383 */
                        l_374.f1 = l_383;
                    }
                }
            }
            else
            { /* block id: 269 */
                int32_t l_384 = 0x054B2352L;
                for (l_384 = 22; (l_384 <= (-6)); l_384--)
                { /* block id: 272 */
                    int64_t l_387 = 0x250156608112B496L;
                    int32_t l_389 = 0x07D6A88AL;
                    int32_t *l_388 = &l_389;
                    uint64_t l_401 = 1UL;
                    l_388 = (l_387 , l_388);
                    if ((l_374.f3 = (-1L)))
                    { /* block id: 275 */
                        uint8_t l_390 = 0x56L;
                        int16_t l_391 = 0x456DL;
                        uint8_t l_392 = 1UL;
                        (*l_388) = l_390;
                        l_392 |= l_391;
                    }
                    else
                    { /* block id: 278 */
                        union U3 l_393[2] = {{{0x376E5E0CL,1L,0x7CL,0x0D2A98ECL,0xCE441102L,0x7255L,0x5E468693L,0x188E0EA1L,0x29L}},{{0x376E5E0CL,1L,0x7CL,0x0D2A98ECL,0xCE441102L,0x7255L,0x5E468693L,0x188E0EA1L,0x29L}}};
                        uint64_t l_394 = 0x588A70818366EB63L;
                        int8_t l_395[4][8][8] = {{{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L}},{{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L}},{{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L}},{{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L},{(-1L),0x0AL,1L,(-1L),0x6CL,0x18L,0x74L,0L}}};
                        union U2 l_396 = {4L};
                        int32_t l_397 = (-9L);
                        union U4 l_398 = {0x8296L};/* VOLATILE GLOBAL l_398 */
                        uint8_t l_399 = 0UL;
                        int32_t l_400 = 0L;
                        int i, j, k;
                        l_400 ^= ((*l_388) = ((((l_395[1][4][5] = (l_393[1] , l_394)) , (l_396 , (l_397 , l_398))) , FAKE_DIVERGE(p_1396->group_0_offset, get_group_id(0), 10)) , l_399));
                        (*l_388) |= (-5L);
                    }
                    if (l_401)
                    { /* block id: 284 */
                        struct S1 l_402 = {0x61CFE555L,0x29D44264L,0x78L,9UL,0UL,8L,3UL,-1L,3L};/* VOLATILE GLOBAL l_402 */
                        int8_t l_403 = (-1L);
                        l_374.f1 = l_402;
                        l_368 ^= ((*l_388) = l_403);
                        (*l_388) ^= 0x187295C7L;
                        (*l_388) &= (-7L);
                    }
                    else
                    { /* block id: 290 */
                        int64_t l_404 = 0x20162EB62D4E1298L;
                        int32_t l_405[8];
                        int64_t l_406 = 0x63A496851FF90CE3L;
                        int32_t l_407 = 0x58DAB23AL;
                        int32_t l_408 = 0x02706BBDL;
                        int64_t l_409 = 2L;
                        uint16_t l_410 = 65535UL;
                        int32_t l_413 = 4L;
                        uint16_t l_414 = 1UL;
                        struct S0 l_416 = {-5L,0x613D5D740A9F4EE3L,0x40415AF4L,4294967286UL,65528UL};
                        struct S0 *l_415 = &l_416;
                        struct S0 *l_417 = &l_416;
                        int i;
                        for (i = 0; i < 8; i++)
                            l_405[i] = (-1L);
                        --l_410;
                        l_414 = l_413;
                        (*l_388) |= 3L;
                        l_417 = l_415;
                    }
                }
            }
            l_420 = l_418;
        }
        unsigned int result = 0;
        int l_284_i0;
        for (l_284_i0 = 0; l_284_i0 < 2; l_284_i0++) {
            result += l_284[l_284_i0];
        }
        result += l_285;
        result += l_286;
        result += l_368;
        result += l_369;
        atomic_add(&p_1396->l_special_values[28], result);
    }
    else
    { /* block id: 300 */
        (1 + 1);
    }
    return p_1396->g_71;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t * func_59(int32_t * p_60, struct S6 * p_1396)
{ /* block id: 179 */
    uint64_t *l_283 = &p_1396->g_50;
    return l_283;
}


/* ------------------------------------------ */
/* 
 * reads : p_1396->g_5 p_1396->g_118 p_1396->g_132 p_1396->g_88 p_1396->g_71.f0.f0 p_1396->g_70.f0.f1 p_1396->g_76.f1 p_1396->g_70.f0.f8 p_1396->g_76.f4 p_1396->g_70.f0.f6 p_1396->g_70.f0.f0 p_1396->g_26.f0.f1 p_1396->g_24
 * writes: p_1396->g_26.f0 p_1396->g_26.f1 p_1396->g_5.f0 p_1396->g_71.f2.f6 p_1396->g_24
 */
int32_t * func_61(uint64_t * p_62, uint64_t * p_63, int16_t  p_64, uint32_t  p_65, struct S6 * p_1396)
{ /* block id: 36 */
    union U3 *l_113 = &p_1396->g_26;
    union U3 **l_112 = &l_113;
    int32_t l_116 = 1L;
    struct S0 l_133 = {0x70L,0L,6L,3UL,3UL};
    int32_t l_151 = (-1L);
    int32_t *l_278 = &p_1396->g_26.f1;
    int32_t **l_277 = &l_278;
    uint32_t *l_281 = &p_1396->g_71.f2.f6;
    int32_t *l_282 = &p_1396->g_24;
    (*l_112) = (void*)0;
    if ((safe_sub_func_uint16_t_u_u(l_116, (!(p_65 , GROUP_DIVERGE(2, 1))))))
    { /* block id: 38 */
        int32_t *l_134 = (void*)0;
        int32_t *l_135 = &p_1396->g_26.f1;
        int32_t *l_136[8][3][1] = {{{&l_116},{&l_116},{&l_116}},{{&l_116},{&l_116},{&l_116}},{{&l_116},{&l_116},{&l_116}},{{&l_116},{&l_116},{&l_116}},{{&l_116},{&l_116},{&l_116}},{{&l_116},{&l_116},{&l_116}},{{&l_116},{&l_116},{&l_116}},{{&l_116},{&l_116},{&l_116}}};
        int32_t *l_152[5];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_152[i] = &l_116;
        (*p_1396->g_118) = p_1396->g_5;
        if ((atomic_inc(&p_1396->l_atomic_input[24]) == 7))
        { /* block id: 41 */
            union U3 l_119 = {{1L,-4L,0L,4294967295UL,7UL,0x1865L,0xDCCE3023L,0L,1L}};/* VOLATILE GLOBAL l_119 */
            int16_t l_120 = 0x0FF2L;
            int32_t *l_121 = (void*)0;
            int32_t *l_122 = &l_119.f1;
            uint8_t l_123 = 0x9DL;
            uint64_t l_126 = 6UL;
            uint32_t l_127 = 0x9DA1C919L;
            uint16_t l_128 = 1UL;
            int32_t l_129 = (-2L);
            l_120 &= (l_119 , 0x1E2E1E1BL);
            l_122 = l_121;
            ++l_123;
            l_129 &= ((l_127 = l_126) , l_128);
            unsigned int result = 0;
            result += l_119.f0.f0;
            result += l_119.f0.f1;
            result += l_119.f0.f2;
            result += l_119.f0.f3;
            result += l_119.f0.f4;
            result += l_119.f0.f5;
            result += l_119.f0.f6;
            result += l_119.f0.f7;
            result += l_119.f0.f8;
            result += l_119.f1;
            result += l_119.f2.f0;
            result += l_119.f2.f1;
            result += l_119.f2.f2;
            result += l_119.f2.f3;
            result += l_119.f2.f4;
            result += l_119.f2.f5;
            result += l_119.f2.f6;
            result += l_119.f2.f7;
            result += l_119.f2.f8;
            result += l_120;
            result += l_123;
            result += l_126;
            result += l_127;
            result += l_128;
            result += l_129;
            atomic_add(&p_1396->l_special_values[24], result);
        }
        else
        { /* block id: 47 */
            (1 + 1);
        }
        if (((safe_div_func_uint8_t_u_u(p_1396->g_132[1], 1UL)) , (l_116 = ((*l_135) = (l_133 , (&p_1396->g_5 != (void*)0))))))
        { /* block id: 52 */
            int64_t *l_145 = &l_133.f1;
            uint16_t *l_150[1];
            int i;
            for (i = 0; i < 1; i++)
                l_150[i] = &l_133.f4;
            l_151 |= (safe_lshift_func_int8_t_s_s((p_1396->g_88 > (((((8L != (l_116 |= ((safe_mul_func_uint8_t_u_u(0xF2L, 3UL)) | ((7UL & (((safe_add_func_uint32_t_u_u(1UL, (p_1396->g_71.f0.f0 >= ((*l_145) = 0x07EA974B9946C551L)))) , GROUP_DIVERGE(0, 1)) & (safe_sub_func_int16_t_s_s(((safe_sub_func_uint8_t_u_u((((((p_1396->g_70.f0.f1 && (-6L)) == p_64) != FAKE_DIVERGE(p_1396->global_0_offset, get_global_id(0), 10)) != p_1396->g_76.f1) , p_1396->g_70.f0.f8), FAKE_DIVERGE(p_1396->global_0_offset, get_global_id(0), 10))) <= p_1396->g_76.f4), p_65)))) != p_1396->g_70.f0.f6)))) == p_1396->g_5.f6) , l_133.f3) < 0x11BDL) < 65535UL)), p_1396->g_70.f0.f0));
            return &p_1396->g_24;
        }
        else
        { /* block id: 57 */
            int16_t l_273 = 9L;
            for (p_1396->g_5.f0 = 0; (p_1396->g_5.f0 <= 2); p_1396->g_5.f0 += 1)
            { /* block id: 60 */
                int32_t *l_153 = &p_1396->g_24;
                return l_153;
            }
            if ((atomic_inc(&p_1396->l_atomic_input[8]) == 3))
            { /* block id: 64 */
                int32_t l_154[3][4][9] = {{{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)},{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)},{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)},{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)}},{{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)},{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)},{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)},{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)}},{{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)},{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)},{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)},{0x031CB3A6L,(-1L),0x30E1DEEFL,0x313AD862L,0x42E3E759L,0x42E3E759L,0x313AD862L,0x30E1DEEFL,(-1L)}}};
                int64_t l_197 = 0x7D29CBA65D713EDCL;
                uint64_t l_198 = 0x9ED231C7D144D72BL;
                int i, j, k;
                for (l_154[1][0][7] = 2; (l_154[1][0][7] >= 0); l_154[1][0][7] -= 1)
                { /* block id: 67 */
                    int64_t l_155 = (-3L);
                    int16_t l_156 = 0L;
                    int64_t l_191 = (-1L);
                    union U3 l_193 = {{0x40B1ADA1L,0x21CF02BAL,-8L,0x39F98AEEL,0xECE4B6B2L,0L,0UL,1L,4L}};/* VOLATILE GLOBAL l_193 */
                    union U3 *l_192 = &l_193;
                    union U3 *l_194 = (void*)0;
                    uint8_t l_195 = 0UL;
                    int16_t l_196 = 5L;
                    if ((l_156 = l_155))
                    { /* block id: 69 */
                        uint8_t l_157 = 9UL;
                        uint32_t l_158 = 0xB38DBA4FL;
                        uint64_t l_159 = 0x201DBCDBA4BFDF75L;
                        l_159 &= (l_158 |= l_157);
                    }
                    else
                    { /* block id: 72 */
                        int64_t l_160 = 0L;
                        uint16_t l_161 = 9UL;
                        int32_t l_162[4][2] = {{0L,0L},{0L,0L},{0L,0L},{0L,0L}};
                        int32_t l_163[7];
                        int64_t l_164 = (-2L);
                        int8_t l_165 = 0x06L;
                        int64_t l_166 = 0x424C02BEFAAE967BL;
                        int8_t l_167[5][10] = {{0x44L,0x44L,0x33L,0x02L,(-2L),0x02L,0x33L,0x44L,0x44L,0x33L},{0x44L,0x44L,0x33L,0x02L,(-2L),0x02L,0x33L,0x44L,0x44L,0x33L},{0x44L,0x44L,0x33L,0x02L,(-2L),0x02L,0x33L,0x44L,0x44L,0x33L},{0x44L,0x44L,0x33L,0x02L,(-2L),0x02L,0x33L,0x44L,0x44L,0x33L},{0x44L,0x44L,0x33L,0x02L,(-2L),0x02L,0x33L,0x44L,0x44L,0x33L}};
                        struct S0 l_168[8][4][4] = {{{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}}},{{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}}},{{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}}},{{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}}},{{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}}},{{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}}},{{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}}},{{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}},{{0x30L,0L,0x427CB4EEL,4294967291UL,65535UL},{4L,9L,0L,4294967295UL,0x09B1L},{0x18L,0x7DD9AD0A9A31730FL,0x670D765CL,0x40BFBFA9L,0xF90FL},{-1L,0x6543AAA62D2F218EL,1L,0x9FC39425L,1UL}}}};
                        uint16_t l_169 = 0x523EL;
                        uint32_t l_170 = 0UL;
                        uint64_t l_171 = 0xC6D952F8476303DDL;
                        uint64_t l_172 = 0x8269F73C707C22DAL;
                        union U2 l_173 = {0x22D29FB0L};
                        struct S0 l_174 = {0L,1L,0L,1UL,0xBE0EL};
                        union U3 l_175 = {{-1L,0x31B59EE1L,0L,4294967295UL,1UL,-10L,1UL,-4L,0x7EL}};/* VOLATILE GLOBAL l_175 */
                        struct S1 l_176 = {0L,0L,0L,0xA0205993L,0x6137A7DFL,0x5D40L,0x86E19FE5L,0x340547CBL,0x5AL};/* VOLATILE GLOBAL l_176 */
                        struct S0 l_177 = {0x71L,0x13518572215854DAL,0x5009253CL,1UL,65535UL};
                        struct S0 l_178 = {-8L,0x3AA0D8A4525A2D44L,0x38E53742L,0x7142950DL,0x1DF3L};
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_163[i] = (-4L);
                        l_162[3][1] &= (l_161 |= l_160);
                        l_164 = l_163[3];
                        l_166 = l_165;
                        l_178 = (l_167[1][7] , (l_168[3][1][3] , ((l_169 , (l_170 , ((l_171 , ((l_172 , (l_173 , l_174)) , l_175)) , l_176))) , l_177)));
                    }
                    for (l_156 = 6; (l_156 >= 0); l_156 -= 1)
                    { /* block id: 81 */
                        int32_t l_180[10];
                        int32_t *l_179 = &l_180[3];
                        int32_t *l_181 = &l_180[3];
                        uint64_t l_182 = 0UL;
                        int8_t l_183 = 0L;
                        int32_t l_184[2];
                        uint32_t l_185 = 4294967293UL;
                        uint64_t l_188 = 18446744073709551607UL;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_180[i] = 0x476FC8C4L;
                        for (i = 0; i < 2; i++)
                            l_184[i] = 0x1F235149L;
                        l_181 = l_179;
                        (*l_179) |= l_182;
                        l_185--;
                        l_188++;
                    }
                    l_194 = (l_191 , l_192);
                    l_196 = (l_195 = 7L);
                }
                if ((l_197 , l_198))
                { /* block id: 91 */
                    uint32_t l_199[1];
                    uint32_t l_200 = 0x3433B329L;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_199[i] = 7UL;
                    l_199[0] ^= 0x19C8945BL;
                    l_200++;
                }
                else
                { /* block id: 94 */
                    int32_t l_204[10] = {0x6AAC1A39L,0x6AAC1A39L,0x6AAC1A39L,0x6AAC1A39L,0x6AAC1A39L,0x6AAC1A39L,0x6AAC1A39L,0x6AAC1A39L,0x6AAC1A39L,0x6AAC1A39L};
                    int32_t *l_203 = &l_204[1];
                    int32_t *l_205 = &l_204[1];
                    uint32_t l_206 = 0x9B69DBA9L;
                    int i;
                    l_205 = l_203;
                    if (l_206)
                    { /* block id: 96 */
                        int64_t l_207 = 0x3A2D1CABA2B943FFL;
                        int32_t l_208 = (-4L);
                        uint64_t l_209[9][6][4] = {{{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL}},{{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL}},{{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL}},{{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL}},{{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL}},{{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL}},{{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL}},{{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL}},{{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL},{0x0F8220F61167556CL,0x95139BD6E013C89DL,0xE7A8B45E6835EB3EL,1UL}}};
                        struct S0 l_210 = {-1L,0L,0x291D9EB6L,6UL,0UL};
                        struct S0 l_211 = {1L,0L,0x45B1799FL,0xA4CC5472L,0x08B8L};
                        struct S0 l_212 = {6L,9L,0x3299D949L,0xFFA17765L,7UL};
                        uint64_t l_213 = 0xC018C4556BD5A3E0L;
                        int i, j, k;
                        l_154[0][3][7] = ((*l_205) = ((l_208 = l_207) , l_209[2][3][0]));
                        l_212 = (l_211 = l_210);
                        l_213--;
                    }
                    else
                    { /* block id: 103 */
                        (*l_205) |= 4L;
                    }
                    for (l_204[6] = 0; (l_204[6] == 4); l_204[6]++)
                    { /* block id: 108 */
                        uint8_t l_218 = 0xF4L;
                        uint8_t l_219 = 0xAAL;
                        int32_t l_220[4];
                        int64_t l_221 = 0x048F689BC40DEA73L;
                        uint8_t l_222 = 0x24L;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_220[i] = (-1L);
                        l_219 = l_218;
                        l_221 = l_220[0];
                        l_154[1][2][3] |= l_222;
                    }
                    for (l_204[0] = (-10); (l_204[0] < (-7)); ++l_204[0])
                    { /* block id: 115 */
                        int8_t l_225 = (-1L);
                        int16_t l_226 = (-1L);
                        int32_t l_227 = (-1L);
                        int32_t l_228 = (-5L);
                        uint64_t l_229 = 4UL;
                        int32_t l_230 = 0x6AA57082L;
                        struct S1 l_232 = {0L,0x05B56D45L,0x00L,0x6A33A6AFL,4294967290UL,-2L,4294967288UL,-1L,0x6AL};/* VOLATILE GLOBAL l_232 */
                        struct S1 *l_231 = &l_232;
                        struct S1 *l_233 = &l_232;
                        l_230 = (l_154[2][2][6] ^= (l_229 = (l_228 = (((l_226 = l_225) , 1UL) , (l_227 , l_228)))));
                        l_233 = l_231;
                    }
                }
                unsigned int result = 0;
                int l_154_i0, l_154_i1, l_154_i2;
                for (l_154_i0 = 0; l_154_i0 < 3; l_154_i0++) {
                    for (l_154_i1 = 0; l_154_i1 < 4; l_154_i1++) {
                        for (l_154_i2 = 0; l_154_i2 < 9; l_154_i2++) {
                            result += l_154[l_154_i0][l_154_i1][l_154_i2];
                        }
                    }
                }
                result += l_197;
                result += l_198;
                atomic_add(&p_1396->l_special_values[8], result);
            }
            else
            { /* block id: 124 */
                (1 + 1);
            }
            if ((atomic_inc(&p_1396->l_atomic_input[12]) == 5))
            { /* block id: 128 */
                uint64_t l_234 = 0x94C3CCAF8B529CF0L;
                int64_t l_235 = 0x42F74A8B6AC5798AL;
                l_235 = l_234;
                for (l_235 = 0; (l_235 != 7); ++l_235)
                { /* block id: 132 */
                    int32_t l_238 = 0x4F586810L;
                    int8_t l_249 = 9L;
                    int8_t l_250 = 0x33L;
                    int32_t l_251 = 0x1CEE45C0L;
                    for (l_238 = (-30); (l_238 == (-15)); l_238 = safe_add_func_uint8_t_u_u(l_238, 1))
                    { /* block id: 135 */
                        int8_t l_241 = 6L;
                        int32_t l_242 = (-5L);
                        uint16_t l_243 = 0x935CL;
                        int64_t l_244 = 0x364BBA175D588FBEL;
                        int32_t l_245 = (-1L);
                        uint8_t l_246[3][3] = {{0xD4L,0xD4L,0xD4L},{0xD4L,0xD4L,0xD4L},{0xD4L,0xD4L,0xD4L}};
                        uint8_t l_247 = 250UL;
                        int8_t l_248[1][3][4] = {{{(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L)}}};
                        int i, j, k;
                        l_245 |= (((l_243 = (l_241 , l_242)) , l_244) , 0x114CAD00L);
                        l_245 |= 0x6E7216F0L;
                        l_247 = l_246[1][0];
                        l_248[0][1][1] = 0x73937C08L;
                    }
                    l_249 = 0L;
                    l_251 |= l_250;
                    for (l_250 = 0; (l_250 != 22); l_250 = safe_add_func_uint16_t_u_u(l_250, 1))
                    { /* block id: 146 */
                        uint32_t l_254 = 0xAE0C315EL;
                        uint32_t l_255 = 0xDBEE8139L;
                        union U4 l_256 = {0x8484L};/* VOLATILE GLOBAL l_256 */
                        union U2 l_258 = {-3L};
                        union U2 *l_257 = &l_258;
                        int32_t *l_259 = &l_256.f3;
                        l_238 |= l_254;
                        l_238 ^= (l_255 , 0x67F07D50L);
                        l_257 = (l_256 , (void*)0);
                        l_259 = (void*)0;
                    }
                }
                for (l_235 = 0; (l_235 == 21); l_235 = safe_add_func_int64_t_s_s(l_235, 8))
                { /* block id: 155 */
                    int32_t l_262 = (-1L);
                    for (l_262 = (-14); (l_262 != 5); l_262 = safe_add_func_uint16_t_u_u(l_262, 7))
                    { /* block id: 158 */
                        int16_t l_265 = 0x5B65L;
                        uint32_t l_266 = 0UL;
                        int32_t l_270 = (-7L);
                        int32_t *l_269 = &l_270;
                        l_266++;
                        l_269 = (void*)0;
                    }
                }
                unsigned int result = 0;
                result += l_234;
                result += l_235;
                atomic_add(&p_1396->l_special_values[12], result);
            }
            else
            { /* block id: 163 */
                (1 + 1);
            }
            for (p_1396->g_26.f0.f1 = (-17); (p_1396->g_26.f0.f1 != 24); p_1396->g_26.f0.f1 = safe_add_func_uint8_t_u_u(p_1396->g_26.f0.f1, 1))
            { /* block id: 168 */
                uint8_t l_274 = 0x93L;
                l_274++;
            }
        }
    }
    else
    { /* block id: 172 */
        return &p_1396->g_24;
    }
    (*l_277) = &l_116;
    (*l_282) |= (safe_div_func_uint32_t_u_u(((*l_281) = (4294967294UL > ((**l_277) != p_64))), p_1396->g_5.f4));
    return &p_1396->g_24;
}


/* ------------------------------------------ */
/* 
 * reads : p_1396->g_71.f0.f6 p_1396->g_76 p_1396->g_5.f5 p_1396->g_26.f0.f0 p_1396->g_71.f0.f0 p_1396->g_93 p_1396->g_26.f0.f1 p_1396->g_94 p_1396->g_5.f7 p_1396->g_24 p_1396->g_109
 * writes: p_1396->g_71.f0.f6 p_1396->g_76.f5 p_1396->g_88 p_1396->g_93 p_1396->g_106 p_1396->g_24 p_1396->g_109
 */
uint64_t * func_66(uint64_t  p_67, uint64_t * p_68, uint32_t  p_69, struct S6 * p_1396)
{ /* block id: 8 */
    int16_t l_82 = 0x3F31L;
    int32_t *l_89 = &p_1396->g_24;
    uint64_t **l_98 = &p_1396->g_94[4];
    int32_t *l_107 = &p_1396->g_24;
    int32_t *l_108[5];
    int i;
    for (i = 0; i < 5; i++)
        l_108[i] = (void*)0;
    for (p_1396->g_71.f0.f6 = (-29); (p_1396->g_71.f0.f6 > 51); ++p_1396->g_71.f0.f6)
    { /* block id: 11 */
        int16_t *l_81 = &p_1396->g_76.f5;
        uint8_t *l_87 = &p_1396->g_88;
        uint64_t *l_91 = &p_1396->g_50;
        uint64_t **l_90[2];
        uint8_t *l_92 = &p_1396->g_93;
        int i;
        for (i = 0; i < 2; i++)
            l_90[i] = &l_91;
        if ((((*l_92) &= (safe_sub_func_uint16_t_u_u((+((p_1396->g_76 , (-1L)) , ((p_68 = (((((0x3DFDL < GROUP_DIVERGE(2, 1)) == (safe_mul_func_uint16_t_u_u((+(safe_mul_func_int16_t_s_s(((*l_81) = 0x1CA9L), FAKE_DIVERGE(p_1396->global_0_offset, get_global_id(0), 10)))), p_1396->g_5.f5))) | l_82) || (((safe_mul_func_uint8_t_u_u(((*l_87) = (p_67 && ((!((safe_lshift_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) >= p_1396->g_26.f0.f0), p_1396->g_71.f0.f0)) > p_69)) <= l_82))), p_1396->g_76.f2)) , l_89) != l_89)) , p_68)) == (void*)0))), 0L))) && p_1396->g_26.f0.f1))
        { /* block id: 16 */
            return p_1396->g_94[4];
        }
        else
        { /* block id: 18 */
            uint64_t ***l_99 = &l_98;
            uint64_t ***l_100 = &l_90[0];
            int32_t l_103 = 0x0E2D0DC5L;
            if ((atomic_inc(&p_1396->g_atomic_input[35 * get_linear_group_id() + 20]) == 6))
            { /* block id: 20 */
                int32_t l_95 = 0L;
                l_95 &= 0x10F19133L;
                unsigned int result = 0;
                result += l_95;
                atomic_add(&p_1396->g_special_values[35 * get_linear_group_id() + 20], result);
            }
            else
            { /* block id: 22 */
                (1 + 1);
            }
            (*l_89) &= ((GROUP_DIVERGE(1, 1) > p_67) != ((*l_87) = (((safe_mul_func_uint16_t_u_u((((((*l_99) = l_98) != ((*l_100) = (p_1396->g_5.f7 , &l_91))) > (p_1396->g_106 = (safe_rshift_func_uint8_t_u_s(((l_103 != (safe_sub_func_uint64_t_u_u(l_103, (~p_69)))) | 0x7197FE5DL), 1)))) , 1UL), 0x3A85L)) != p_67) & p_1396->g_71.f0.f6)));
            if (p_69)
                break;
            return &p_1396->g_50;
        }
    }
    p_1396->g_109--;
    return (*l_98);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j;
    __local volatile uint32_t l_atomic_input[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_special_values[i] = 0;
    struct S6 c_1397;
    struct S6* p_1396 = &c_1397;
    struct S6 c_1398 = {
        {0x4495231FL,-8L,0x59L,7UL,8UL,0x1D6AL,4294967295UL,0x7FC0549EL,0x71L}, // p_1396->g_5
        (-3L), // p_1396->g_24
        {0x205EL}, // p_1396->g_25
        {{0x745C5BB0L,2L,0x7DL,4294967286UL,1UL,6L,0x278A4911L,-1L,0x18L}}, // p_1396->g_26
        0UL, // p_1396->g_50
        {{1L,6L,0x5EL,0x48FB317EL,0xC3E0E7A7L,0x6415L,0x52D1A88BL,1L,0x43L}}, // p_1396->g_70
        {{-3L,-4L,-6L,4294967295UL,0xD880D918L,0x4DA4L,4294967295UL,0x4BECF965L,0x75L}}, // p_1396->g_71
        {0x729A3864L,0L,0x40L,0xE0EFCF3BL,4UL,0x1F89L,4UL,0x5BA07B4DL,0x34L}, // p_1396->g_76
        5UL, // p_1396->g_88
        0xAAL, // p_1396->g_93
        {&p_1396->g_50,&p_1396->g_50,&p_1396->g_50,&p_1396->g_50,&p_1396->g_50,&p_1396->g_50,&p_1396->g_50}, // p_1396->g_94
        8L, // p_1396->g_106
        1UL, // p_1396->g_109
        {&p_1396->g_71.f0,&p_1396->g_71.f0,&p_1396->g_71.f0}, // p_1396->g_117
        &p_1396->g_26.f0, // p_1396->g_118
        {18446744073709551615UL,18446744073709551615UL}, // p_1396->g_132
        {0L}, // p_1396->g_421
        {1L,2L,0x6AL,0UL,7UL,1L,0x5ECA9A29L,0x1BE750A8L,-1L}, // p_1396->g_422
        {0x124C15E6L,8L,0x24L,0x618115CEL,0xC1965413L,0x5283L,4294967295UL,0x55FE0D96L,9L}, // p_1396->g_423
        {0x5DL,-1L,0x6B219F70L,0UL,0UL}, // p_1396->g_427
        (void*)0, // p_1396->g_428
        (void*)0, // p_1396->g_429
        {{{-1L,0x5E9B8EB9F7FA067FL,-1L,0xBC5BE8EDL,65535UL}},{{-1L,0x5E9B8EB9F7FA067FL,-1L,0xBC5BE8EDL,65535UL}},{{-1L,0x5E9B8EB9F7FA067FL,-1L,0xBC5BE8EDL,65535UL}}}, // p_1396->g_455
        (void*)0, // p_1396->g_456
        {{{0L,7L,0x4BL,0xF7D747A9L,0x90DED701L,1L,0x05DA157FL,0L,0x0FL}}}, // p_1396->g_461
        &p_1396->g_461[0], // p_1396->g_460
        &p_1396->g_460, // p_1396->g_459
        &p_1396->g_459, // p_1396->g_458
        &p_1396->g_421, // p_1396->g_465
        &p_1396->g_465, // p_1396->g_464
        &p_1396->g_24, // p_1396->g_496
        {0x28FB10F8L,0x7CB8449CL,0x6AL,7UL,0x7370FB02L,5L,0x22F11D0BL,-1L,0L}, // p_1396->g_531
        0xF3L, // p_1396->g_566
        0x47A16D36L, // p_1396->g_569
        (void*)0, // p_1396->g_572
        &p_1396->g_496, // p_1396->g_573
        &p_1396->g_465, // p_1396->g_577
        {&p_1396->g_577,&p_1396->g_577,&p_1396->g_577,&p_1396->g_577,&p_1396->g_577,&p_1396->g_577,&p_1396->g_577,&p_1396->g_577}, // p_1396->g_576
        {-3L,-4L,0x1BL,0xEAB65E9AL,0x4AF640B7L,0L,0x8D0213EFL,2L,-1L}, // p_1396->g_579
        {0x31ED0CB4L,-1L,1L,0x2D7AAF24L,0x621DA8B5L,0L,0xF09C0A97L,-1L,-7L}, // p_1396->g_582
        &p_1396->g_423.f8, // p_1396->g_583
        {{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]},{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]},{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]},{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]},{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]},{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]},{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]},{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]},{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]},{&p_1396->g_94[0],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[2],&p_1396->g_94[4],&p_1396->g_94[0]}}, // p_1396->g_596
        {3L,-1L,0x41L,0UL,0x187F79CAL,0x331EL,0xC73DDB85L,-1L,0x4FL}, // p_1396->g_617
        &p_1396->g_582, // p_1396->g_618
        &p_1396->g_427, // p_1396->g_619
        0x069C41692B3F2452L, // p_1396->g_628
        0x5EL, // p_1396->g_684
        {0x592F8606L,0x51E44E8BL,0L,0xF1D954E1L,4294967286UL,0x4B0DL,0x6F4CCD5FL,0x59323F9CL,0x53L}, // p_1396->g_715
        &p_1396->g_455[1][0], // p_1396->g_736
        {{0x160AE93BL,3L,-1L,0xB4AAE1EBL,0x8148E038L,5L,0x916A73BEL,0x4C972743L,-1L}}, // p_1396->g_737
        (-1L), // p_1396->g_754
        {&p_1396->g_496,&p_1396->g_496,&p_1396->g_496,&p_1396->g_496}, // p_1396->g_783
        &p_1396->g_496, // p_1396->g_784
        {{1UL,0x53F61C6FL,1UL,1UL,0x53F61C6FL,1UL,1UL},{1UL,0x53F61C6FL,1UL,1UL,0x53F61C6FL,1UL,1UL},{1UL,0x53F61C6FL,1UL,1UL,0x53F61C6FL,1UL,1UL},{1UL,0x53F61C6FL,1UL,1UL,0x53F61C6FL,1UL,1UL}}, // p_1396->g_830
        0x70205FC4E7F05282L, // p_1396->g_860
        {-1L,-8L,1L,0x481CBE8EL,1UL,0x2970L,4294967295UL,0x3BF32D2AL,0x53L}, // p_1396->g_937
        {{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496},{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496},{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496},{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496},{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496},{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496},{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496},{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496},{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496},{&p_1396->g_496,&p_1396->g_496,&p_1396->g_496}}, // p_1396->g_988
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1396->g_1079
        &p_1396->g_496, // p_1396->g_1080
        0x4FCF2AE0L, // p_1396->g_1096
        &p_1396->g_496, // p_1396->g_1099
        &p_1396->g_76.f6, // p_1396->g_1109
        &p_1396->g_1109, // p_1396->g_1108
        &p_1396->g_576[2], // p_1396->g_1112
        &p_1396->g_1112, // p_1396->g_1111
        {{&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24},{&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24},{&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24},{&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24,&p_1396->g_24}}, // p_1396->g_1151
        {0x16F80340L,0x3921B99FL,0x74L,0x6FA3E8B4L,4294967293UL,0x6BD1L,0xCAA31CB4L,0x1E711D3BL,0x4EL}, // p_1396->g_1166
        {0x1988EFE3L,0x256AA615L,0L,0UL,0x2F543811L,1L,0x16AF458AL,-1L,-1L}, // p_1396->g_1192
        0x691038E0L, // p_1396->g_1211
        {0xA9A3L}, // p_1396->g_1242
        {{&p_1396->g_1242,&p_1396->g_1242,&p_1396->g_1242,&p_1396->g_1242,&p_1396->g_1242,&p_1396->g_1242,&p_1396->g_1242,&p_1396->g_1242}}, // p_1396->g_1241
        {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)}, // p_1396->g_1395
        sequence_input[get_global_id(0)], // p_1396->global_0_offset
        sequence_input[get_global_id(1)], // p_1396->global_1_offset
        sequence_input[get_global_id(2)], // p_1396->global_2_offset
        sequence_input[get_local_id(0)], // p_1396->local_0_offset
        sequence_input[get_local_id(1)], // p_1396->local_1_offset
        sequence_input[get_local_id(2)], // p_1396->local_2_offset
        sequence_input[get_group_id(0)], // p_1396->group_0_offset
        sequence_input[get_group_id(1)], // p_1396->group_1_offset
        sequence_input[get_group_id(2)], // p_1396->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1397 = c_1398;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1396);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1396->g_5.f0, "p_1396->g_5.f0", print_hash_value);
    transparent_crc(p_1396->g_5.f1, "p_1396->g_5.f1", print_hash_value);
    transparent_crc(p_1396->g_5.f2, "p_1396->g_5.f2", print_hash_value);
    transparent_crc(p_1396->g_5.f3, "p_1396->g_5.f3", print_hash_value);
    transparent_crc(p_1396->g_5.f4, "p_1396->g_5.f4", print_hash_value);
    transparent_crc(p_1396->g_5.f5, "p_1396->g_5.f5", print_hash_value);
    transparent_crc(p_1396->g_5.f6, "p_1396->g_5.f6", print_hash_value);
    transparent_crc(p_1396->g_5.f7, "p_1396->g_5.f7", print_hash_value);
    transparent_crc(p_1396->g_5.f8, "p_1396->g_5.f8", print_hash_value);
    transparent_crc(p_1396->g_24, "p_1396->g_24", print_hash_value);
    transparent_crc(p_1396->g_25.f0, "p_1396->g_25.f0", print_hash_value);
    transparent_crc(p_1396->g_50, "p_1396->g_50", print_hash_value);
    transparent_crc(p_1396->g_70.f0.f0, "p_1396->g_70.f0.f0", print_hash_value);
    transparent_crc(p_1396->g_70.f0.f1, "p_1396->g_70.f0.f1", print_hash_value);
    transparent_crc(p_1396->g_70.f0.f2, "p_1396->g_70.f0.f2", print_hash_value);
    transparent_crc(p_1396->g_70.f0.f3, "p_1396->g_70.f0.f3", print_hash_value);
    transparent_crc(p_1396->g_70.f0.f4, "p_1396->g_70.f0.f4", print_hash_value);
    transparent_crc(p_1396->g_70.f0.f5, "p_1396->g_70.f0.f5", print_hash_value);
    transparent_crc(p_1396->g_70.f0.f6, "p_1396->g_70.f0.f6", print_hash_value);
    transparent_crc(p_1396->g_70.f0.f7, "p_1396->g_70.f0.f7", print_hash_value);
    transparent_crc(p_1396->g_70.f0.f8, "p_1396->g_70.f0.f8", print_hash_value);
    transparent_crc(p_1396->g_76.f0, "p_1396->g_76.f0", print_hash_value);
    transparent_crc(p_1396->g_76.f1, "p_1396->g_76.f1", print_hash_value);
    transparent_crc(p_1396->g_76.f2, "p_1396->g_76.f2", print_hash_value);
    transparent_crc(p_1396->g_76.f3, "p_1396->g_76.f3", print_hash_value);
    transparent_crc(p_1396->g_76.f4, "p_1396->g_76.f4", print_hash_value);
    transparent_crc(p_1396->g_76.f5, "p_1396->g_76.f5", print_hash_value);
    transparent_crc(p_1396->g_76.f6, "p_1396->g_76.f6", print_hash_value);
    transparent_crc(p_1396->g_76.f7, "p_1396->g_76.f7", print_hash_value);
    transparent_crc(p_1396->g_76.f8, "p_1396->g_76.f8", print_hash_value);
    transparent_crc(p_1396->g_88, "p_1396->g_88", print_hash_value);
    transparent_crc(p_1396->g_93, "p_1396->g_93", print_hash_value);
    transparent_crc(p_1396->g_106, "p_1396->g_106", print_hash_value);
    transparent_crc(p_1396->g_109, "p_1396->g_109", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1396->g_132[i], "p_1396->g_132[i]", print_hash_value);

    }
    transparent_crc(p_1396->g_422.f0, "p_1396->g_422.f0", print_hash_value);
    transparent_crc(p_1396->g_422.f1, "p_1396->g_422.f1", print_hash_value);
    transparent_crc(p_1396->g_422.f2, "p_1396->g_422.f2", print_hash_value);
    transparent_crc(p_1396->g_422.f3, "p_1396->g_422.f3", print_hash_value);
    transparent_crc(p_1396->g_422.f4, "p_1396->g_422.f4", print_hash_value);
    transparent_crc(p_1396->g_422.f5, "p_1396->g_422.f5", print_hash_value);
    transparent_crc(p_1396->g_422.f6, "p_1396->g_422.f6", print_hash_value);
    transparent_crc(p_1396->g_422.f7, "p_1396->g_422.f7", print_hash_value);
    transparent_crc(p_1396->g_422.f8, "p_1396->g_422.f8", print_hash_value);
    transparent_crc(p_1396->g_423.f0, "p_1396->g_423.f0", print_hash_value);
    transparent_crc(p_1396->g_423.f1, "p_1396->g_423.f1", print_hash_value);
    transparent_crc(p_1396->g_423.f2, "p_1396->g_423.f2", print_hash_value);
    transparent_crc(p_1396->g_423.f3, "p_1396->g_423.f3", print_hash_value);
    transparent_crc(p_1396->g_423.f4, "p_1396->g_423.f4", print_hash_value);
    transparent_crc(p_1396->g_423.f5, "p_1396->g_423.f5", print_hash_value);
    transparent_crc(p_1396->g_423.f6, "p_1396->g_423.f6", print_hash_value);
    transparent_crc(p_1396->g_423.f7, "p_1396->g_423.f7", print_hash_value);
    transparent_crc(p_1396->g_423.f8, "p_1396->g_423.f8", print_hash_value);
    transparent_crc(p_1396->g_427.f0, "p_1396->g_427.f0", print_hash_value);
    transparent_crc(p_1396->g_427.f1, "p_1396->g_427.f1", print_hash_value);
    transparent_crc(p_1396->g_427.f2, "p_1396->g_427.f2", print_hash_value);
    transparent_crc(p_1396->g_427.f3, "p_1396->g_427.f3", print_hash_value);
    transparent_crc(p_1396->g_427.f4, "p_1396->g_427.f4", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1396->g_455[i][j].f0, "p_1396->g_455[i][j].f0", print_hash_value);
            transparent_crc(p_1396->g_455[i][j].f1, "p_1396->g_455[i][j].f1", print_hash_value);
            transparent_crc(p_1396->g_455[i][j].f2, "p_1396->g_455[i][j].f2", print_hash_value);
            transparent_crc(p_1396->g_455[i][j].f3, "p_1396->g_455[i][j].f3", print_hash_value);
            transparent_crc(p_1396->g_455[i][j].f4, "p_1396->g_455[i][j].f4", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1396->g_461[i].f0.f0, "p_1396->g_461[i].f0.f0", print_hash_value);
        transparent_crc(p_1396->g_461[i].f0.f1, "p_1396->g_461[i].f0.f1", print_hash_value);
        transparent_crc(p_1396->g_461[i].f0.f2, "p_1396->g_461[i].f0.f2", print_hash_value);
        transparent_crc(p_1396->g_461[i].f0.f3, "p_1396->g_461[i].f0.f3", print_hash_value);
        transparent_crc(p_1396->g_461[i].f0.f4, "p_1396->g_461[i].f0.f4", print_hash_value);
        transparent_crc(p_1396->g_461[i].f0.f5, "p_1396->g_461[i].f0.f5", print_hash_value);
        transparent_crc(p_1396->g_461[i].f0.f6, "p_1396->g_461[i].f0.f6", print_hash_value);
        transparent_crc(p_1396->g_461[i].f0.f7, "p_1396->g_461[i].f0.f7", print_hash_value);
        transparent_crc(p_1396->g_461[i].f0.f8, "p_1396->g_461[i].f0.f8", print_hash_value);

    }
    transparent_crc(p_1396->g_531.f0, "p_1396->g_531.f0", print_hash_value);
    transparent_crc(p_1396->g_531.f1, "p_1396->g_531.f1", print_hash_value);
    transparent_crc(p_1396->g_531.f2, "p_1396->g_531.f2", print_hash_value);
    transparent_crc(p_1396->g_531.f3, "p_1396->g_531.f3", print_hash_value);
    transparent_crc(p_1396->g_531.f4, "p_1396->g_531.f4", print_hash_value);
    transparent_crc(p_1396->g_531.f5, "p_1396->g_531.f5", print_hash_value);
    transparent_crc(p_1396->g_531.f6, "p_1396->g_531.f6", print_hash_value);
    transparent_crc(p_1396->g_531.f7, "p_1396->g_531.f7", print_hash_value);
    transparent_crc(p_1396->g_531.f8, "p_1396->g_531.f8", print_hash_value);
    transparent_crc(p_1396->g_566, "p_1396->g_566", print_hash_value);
    transparent_crc(p_1396->g_569, "p_1396->g_569", print_hash_value);
    transparent_crc(p_1396->g_579.f0, "p_1396->g_579.f0", print_hash_value);
    transparent_crc(p_1396->g_579.f1, "p_1396->g_579.f1", print_hash_value);
    transparent_crc(p_1396->g_579.f2, "p_1396->g_579.f2", print_hash_value);
    transparent_crc(p_1396->g_579.f3, "p_1396->g_579.f3", print_hash_value);
    transparent_crc(p_1396->g_579.f4, "p_1396->g_579.f4", print_hash_value);
    transparent_crc(p_1396->g_579.f5, "p_1396->g_579.f5", print_hash_value);
    transparent_crc(p_1396->g_579.f6, "p_1396->g_579.f6", print_hash_value);
    transparent_crc(p_1396->g_579.f7, "p_1396->g_579.f7", print_hash_value);
    transparent_crc(p_1396->g_579.f8, "p_1396->g_579.f8", print_hash_value);
    transparent_crc(p_1396->g_582.f0, "p_1396->g_582.f0", print_hash_value);
    transparent_crc(p_1396->g_582.f1, "p_1396->g_582.f1", print_hash_value);
    transparent_crc(p_1396->g_582.f2, "p_1396->g_582.f2", print_hash_value);
    transparent_crc(p_1396->g_582.f3, "p_1396->g_582.f3", print_hash_value);
    transparent_crc(p_1396->g_582.f4, "p_1396->g_582.f4", print_hash_value);
    transparent_crc(p_1396->g_582.f5, "p_1396->g_582.f5", print_hash_value);
    transparent_crc(p_1396->g_582.f6, "p_1396->g_582.f6", print_hash_value);
    transparent_crc(p_1396->g_582.f7, "p_1396->g_582.f7", print_hash_value);
    transparent_crc(p_1396->g_582.f8, "p_1396->g_582.f8", print_hash_value);
    transparent_crc(p_1396->g_617.f0, "p_1396->g_617.f0", print_hash_value);
    transparent_crc(p_1396->g_617.f1, "p_1396->g_617.f1", print_hash_value);
    transparent_crc(p_1396->g_617.f2, "p_1396->g_617.f2", print_hash_value);
    transparent_crc(p_1396->g_617.f3, "p_1396->g_617.f3", print_hash_value);
    transparent_crc(p_1396->g_617.f4, "p_1396->g_617.f4", print_hash_value);
    transparent_crc(p_1396->g_617.f5, "p_1396->g_617.f5", print_hash_value);
    transparent_crc(p_1396->g_617.f6, "p_1396->g_617.f6", print_hash_value);
    transparent_crc(p_1396->g_617.f7, "p_1396->g_617.f7", print_hash_value);
    transparent_crc(p_1396->g_617.f8, "p_1396->g_617.f8", print_hash_value);
    transparent_crc(p_1396->g_628, "p_1396->g_628", print_hash_value);
    transparent_crc(p_1396->g_684, "p_1396->g_684", print_hash_value);
    transparent_crc(p_1396->g_715.f0, "p_1396->g_715.f0", print_hash_value);
    transparent_crc(p_1396->g_715.f1, "p_1396->g_715.f1", print_hash_value);
    transparent_crc(p_1396->g_715.f2, "p_1396->g_715.f2", print_hash_value);
    transparent_crc(p_1396->g_715.f3, "p_1396->g_715.f3", print_hash_value);
    transparent_crc(p_1396->g_715.f4, "p_1396->g_715.f4", print_hash_value);
    transparent_crc(p_1396->g_715.f5, "p_1396->g_715.f5", print_hash_value);
    transparent_crc(p_1396->g_715.f6, "p_1396->g_715.f6", print_hash_value);
    transparent_crc(p_1396->g_715.f7, "p_1396->g_715.f7", print_hash_value);
    transparent_crc(p_1396->g_715.f8, "p_1396->g_715.f8", print_hash_value);
    transparent_crc(p_1396->g_737.f0.f0, "p_1396->g_737.f0.f0", print_hash_value);
    transparent_crc(p_1396->g_737.f0.f1, "p_1396->g_737.f0.f1", print_hash_value);
    transparent_crc(p_1396->g_737.f0.f2, "p_1396->g_737.f0.f2", print_hash_value);
    transparent_crc(p_1396->g_737.f0.f3, "p_1396->g_737.f0.f3", print_hash_value);
    transparent_crc(p_1396->g_737.f0.f4, "p_1396->g_737.f0.f4", print_hash_value);
    transparent_crc(p_1396->g_737.f0.f5, "p_1396->g_737.f0.f5", print_hash_value);
    transparent_crc(p_1396->g_737.f0.f6, "p_1396->g_737.f0.f6", print_hash_value);
    transparent_crc(p_1396->g_737.f0.f7, "p_1396->g_737.f0.f7", print_hash_value);
    transparent_crc(p_1396->g_737.f0.f8, "p_1396->g_737.f0.f8", print_hash_value);
    transparent_crc(p_1396->g_754, "p_1396->g_754", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1396->g_830[i][j], "p_1396->g_830[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1396->g_860, "p_1396->g_860", print_hash_value);
    transparent_crc(p_1396->g_937.f0, "p_1396->g_937.f0", print_hash_value);
    transparent_crc(p_1396->g_937.f1, "p_1396->g_937.f1", print_hash_value);
    transparent_crc(p_1396->g_937.f2, "p_1396->g_937.f2", print_hash_value);
    transparent_crc(p_1396->g_937.f3, "p_1396->g_937.f3", print_hash_value);
    transparent_crc(p_1396->g_937.f4, "p_1396->g_937.f4", print_hash_value);
    transparent_crc(p_1396->g_937.f5, "p_1396->g_937.f5", print_hash_value);
    transparent_crc(p_1396->g_937.f6, "p_1396->g_937.f6", print_hash_value);
    transparent_crc(p_1396->g_937.f7, "p_1396->g_937.f7", print_hash_value);
    transparent_crc(p_1396->g_937.f8, "p_1396->g_937.f8", print_hash_value);
    transparent_crc(p_1396->g_1096, "p_1396->g_1096", print_hash_value);
    transparent_crc(p_1396->g_1166.f0, "p_1396->g_1166.f0", print_hash_value);
    transparent_crc(p_1396->g_1166.f1, "p_1396->g_1166.f1", print_hash_value);
    transparent_crc(p_1396->g_1166.f2, "p_1396->g_1166.f2", print_hash_value);
    transparent_crc(p_1396->g_1166.f3, "p_1396->g_1166.f3", print_hash_value);
    transparent_crc(p_1396->g_1166.f4, "p_1396->g_1166.f4", print_hash_value);
    transparent_crc(p_1396->g_1166.f5, "p_1396->g_1166.f5", print_hash_value);
    transparent_crc(p_1396->g_1166.f6, "p_1396->g_1166.f6", print_hash_value);
    transparent_crc(p_1396->g_1166.f7, "p_1396->g_1166.f7", print_hash_value);
    transparent_crc(p_1396->g_1166.f8, "p_1396->g_1166.f8", print_hash_value);
    transparent_crc(p_1396->g_1192.f0, "p_1396->g_1192.f0", print_hash_value);
    transparent_crc(p_1396->g_1192.f1, "p_1396->g_1192.f1", print_hash_value);
    transparent_crc(p_1396->g_1192.f2, "p_1396->g_1192.f2", print_hash_value);
    transparent_crc(p_1396->g_1192.f3, "p_1396->g_1192.f3", print_hash_value);
    transparent_crc(p_1396->g_1192.f4, "p_1396->g_1192.f4", print_hash_value);
    transparent_crc(p_1396->g_1192.f5, "p_1396->g_1192.f5", print_hash_value);
    transparent_crc(p_1396->g_1192.f6, "p_1396->g_1192.f6", print_hash_value);
    transparent_crc(p_1396->g_1192.f7, "p_1396->g_1192.f7", print_hash_value);
    transparent_crc(p_1396->g_1192.f8, "p_1396->g_1192.f8", print_hash_value);
    transparent_crc(p_1396->g_1211, "p_1396->g_1211", print_hash_value);
    transparent_crc(p_1396->g_1242.f0, "p_1396->g_1242.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1396->g_1395[i], "p_1396->g_1395[i]", print_hash_value);

    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 35; i++)
            transparent_crc(p_1396->g_special_values[i + 35 * get_linear_group_id()], "p_1396->g_special_values[i + 35 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 35; i++)
            transparent_crc(p_1396->l_special_values[i], "p_1396->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
