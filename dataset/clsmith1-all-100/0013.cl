// --atomics 96 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 27,16,4 -l 9,1,2
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

__constant uint32_t permutations[10][18] = {
{2,13,5,3,16,7,15,1,9,17,6,4,0,12,14,8,10,11}, // permutation 0
{9,7,8,5,10,11,15,6,17,2,4,16,3,12,13,14,0,1}, // permutation 1
{5,11,7,16,4,12,9,13,10,2,3,17,6,14,8,15,1,0}, // permutation 2
{4,15,9,10,7,3,6,1,11,16,13,2,14,12,5,0,8,17}, // permutation 3
{1,15,11,12,0,6,16,2,9,5,13,17,10,4,3,14,8,7}, // permutation 4
{17,13,10,9,12,14,3,15,0,6,5,7,1,16,2,4,8,11}, // permutation 5
{17,3,15,0,12,9,5,2,1,4,8,11,13,7,6,16,14,10}, // permutation 6
{2,12,17,8,3,6,10,13,1,14,4,7,11,0,15,5,9,16}, // permutation 7
{15,2,0,16,14,3,11,13,6,8,5,7,4,10,17,9,12,1}, // permutation 8
{5,14,16,6,2,1,4,15,0,9,13,11,17,7,8,3,12,10} // permutation 9
};

// Seed: 13

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int32_t  f0;
   volatile int32_t  f1;
   uint32_t  f2;
};

union U1 {
   int64_t  f0;
   volatile uint64_t  f1;
   uint64_t  f2;
};

struct S2 {
    volatile uint8_t g_2;
    volatile int32_t g_3;
    int32_t g_4;
    int32_t g_9;
    uint64_t g_16[3][9];
    int32_t * volatile g_26;
    VECTOR(int64_t, 2) g_63;
    VECTOR(uint8_t, 2) g_73;
    volatile VECTOR(uint8_t, 4) g_74;
    volatile VECTOR(uint64_t, 16) g_78;
    VECTOR(uint64_t, 8) g_79;
    volatile VECTOR(uint64_t, 8) g_80;
    volatile VECTOR(int8_t, 16) g_81;
    volatile VECTOR(int8_t, 2) g_83;
    VECTOR(int8_t, 8) g_86;
    VECTOR(int8_t, 4) g_87;
    volatile VECTOR(int8_t, 8) g_90;
    int32_t *g_110;
    int32_t **g_109;
    int16_t g_127[5];
    volatile VECTOR(uint16_t, 8) g_128;
    int32_t g_130;
    int32_t * volatile g_129;
    int8_t g_157;
    int32_t g_183;
    uint8_t g_184[2];
    VECTOR(int16_t, 4) g_204;
    VECTOR(int16_t, 2) g_205;
    VECTOR(int16_t, 4) g_206;
    VECTOR(int16_t, 16) g_209;
    VECTOR(int8_t, 4) g_210;
    VECTOR(int8_t, 2) g_211;
    volatile VECTOR(uint32_t, 2) g_219;
    volatile VECTOR(uint8_t, 8) g_228;
    VECTOR(uint8_t, 8) g_232;
    volatile union U1 g_240;
    volatile int32_t g_248;
    uint32_t g_249;
    union U0 g_255;
    union U0 *g_254;
    volatile union U1 ** volatile g_276;
    volatile union U1 *g_278[10][4];
    volatile union U1 ** volatile g_277;
    int32_t g_286[2];
    volatile int8_t g_287[9];
    uint8_t g_288;
    union U0 g_291[1];
    volatile VECTOR(int32_t, 4) g_292;
    VECTOR(uint16_t, 4) g_295;
    VECTOR(uint64_t, 2) g_300;
    uint16_t *g_301[1];
    volatile VECTOR(int32_t, 4) g_323;
    VECTOR(int32_t, 8) g_325;
    union U0 **g_339;
    volatile union U1 g_340;
    VECTOR(uint8_t, 8) g_344;
    volatile VECTOR(uint8_t, 8) g_345;
    union U0 g_347;
    volatile VECTOR(uint32_t, 8) g_354;
    volatile VECTOR(uint32_t, 4) g_356;
    volatile VECTOR(int32_t, 4) g_357;
    VECTOR(int32_t, 2) g_358;
    volatile VECTOR(int64_t, 4) g_372;
    union U1 g_375;
    union U1 *g_374;
    union U1 **g_373[9];
    VECTOR(int32_t, 8) g_462;
    volatile VECTOR(int8_t, 4) g_465;
    VECTOR(int8_t, 8) g_467;
    volatile VECTOR(int8_t, 8) g_468;
    volatile VECTOR(int8_t, 8) g_472;
    VECTOR(int8_t, 2) g_473;
    volatile VECTOR(int8_t, 16) g_489;
    VECTOR(int8_t, 4) g_490;
    int32_t * volatile g_506;
    volatile VECTOR(uint64_t, 2) g_574;
    VECTOR(uint64_t, 8) g_581;
    int64_t *g_583;
    volatile VECTOR(uint64_t, 16) g_591;
    volatile uint64_t g_592;
    volatile uint64_t *g_590;
    volatile uint64_t **g_589;
    int32_t g_605;
    int32_t g_607;
    int32_t *g_613;
    int32_t ** volatile g_612;
    int32_t * volatile g_614;
    VECTOR(int32_t, 8) g_620;
    uint8_t *g_624;
    uint8_t * volatile * volatile g_623;
    int32_t * volatile g_625;
    volatile VECTOR(uint16_t, 16) g_648;
    union U1 g_693;
    int32_t * volatile g_700;
    VECTOR(uint64_t, 16) g_745;
    union U1 g_761[6][4][4];
    union U1 g_921;
    VECTOR(int64_t, 4) g_933;
    union U1 ***g_936;
    int8_t g_939;
    int32_t * volatile g_940[2];
    uint64_t *g_947;
    uint64_t **g_946[6];
    uint64_t *** volatile g_945;
    uint32_t *g_959;
    uint32_t *g_960;
    union U1 g_997;
    volatile VECTOR(uint64_t, 4) g_1026;
    uint32_t g_1106;
    int32_t * volatile g_1110;
    volatile VECTOR(int64_t, 4) g_1133;
    volatile uint32_t g_1155[2][9][6];
    VECTOR(uint16_t, 8) g_1166;
    volatile int8_t g_1194;
    int32_t *** volatile g_1196;
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
uint32_t  func_1(struct S2 * p_1203);
int32_t ** func_28(int64_t  p_29, int32_t * p_30, struct S2 * p_1203);
int32_t * func_31(int32_t * p_32, uint32_t  p_33, struct S2 * p_1203);
int32_t * func_34(int32_t * p_35, int16_t  p_36, struct S2 * p_1203);
int16_t  func_37(int32_t  p_38, int16_t  p_39, int16_t  p_40, int32_t  p_41, struct S2 * p_1203);
int8_t  func_44(int32_t  p_45, int32_t  p_46, uint8_t  p_47, uint32_t  p_48, int32_t * p_49, struct S2 * p_1203);
int32_t  func_50(uint32_t  p_51, uint8_t  p_52, uint64_t  p_53, int32_t ** p_54, struct S2 * p_1203);
int32_t * func_59(int16_t  p_60, uint32_t  p_61, struct S2 * p_1203);
union U0  func_95(uint32_t  p_96, uint32_t  p_97, int64_t  p_98, int32_t  p_99, uint64_t  p_100, struct S2 * p_1203);
uint32_t  func_103(int32_t ** p_104, uint64_t  p_105, int64_t * p_106, int64_t  p_107, int8_t * p_108, struct S2 * p_1203);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1203->g_4 p_1203->g_2 p_1203->g_16 p_1203->g_comm_values p_1203->g_9 p_1203->g_109 p_1203->g_1155
 * writes: p_1203->g_2 p_1203->g_4 p_1203->g_16 p_1203->g_9 p_1203->g_110
 */
uint32_t  func_1(struct S2 * p_1203)
{ /* block id: 4 */
    int8_t l_14 = 0x20L;
    int32_t *l_1199[5] = {&p_1203->g_4,&p_1203->g_4,&p_1203->g_4,&p_1203->g_4,&p_1203->g_4};
    uint16_t l_1200 = 3UL;
    int i;
    p_1203->g_2 = 0x142A1E94L;
    for (p_1203->g_4 = 15; (p_1203->g_4 >= (-24)); p_1203->g_4 = safe_sub_func_uint64_t_u_u(p_1203->g_4, 6))
    { /* block id: 8 */
        int32_t *l_7 = (void*)0;
        int32_t *l_8 = &p_1203->g_9;
        int32_t *l_10 = &p_1203->g_9;
        int32_t *l_11 = &p_1203->g_9;
        int32_t *l_12 = &p_1203->g_9;
        int32_t *l_13 = &p_1203->g_9;
        int32_t *l_15[6][1][2] = {{{&p_1203->g_9,&p_1203->g_9}},{{&p_1203->g_9,&p_1203->g_9}},{{&p_1203->g_9,&p_1203->g_9}},{{&p_1203->g_9,&p_1203->g_9}},{{&p_1203->g_9,&p_1203->g_9}},{{&p_1203->g_9,&p_1203->g_9}}};
        uint32_t l_19 = 0x132D683AL;
        int i, j, k;
        if (p_1203->g_2)
            break;
        --p_1203->g_16[2][1];
        --l_19;
    }
    for (p_1203->g_4 = 0; (p_1203->g_4 == 0); ++p_1203->g_4)
    { /* block id: 15 */
        int32_t l_775 = 0x02D2645AL;
        int32_t *l_776 = (void*)0;
        for (l_14 = 0; (l_14 != 1); l_14 = safe_add_func_int16_t_s_s(l_14, 5))
        { /* block id: 18 */
            int32_t *l_27 = &p_1203->g_9;
            if (p_1203->g_comm_values[p_1203->tid])
                break;
            (*l_27) |= (FAKE_DIVERGE(p_1203->local_1_offset, get_local_id(1), 10) , (+0L));
        }
        (*p_1203->g_109) = l_1199[4];
    }
    --l_1200;
    return p_1203->g_1155[1][8][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_9 p_1203->g_700 p_1203->g_921.f2 p_1203->g_109 p_1203->g_1133 p_1203->g_936 p_1203->g_373 p_1203->g_1155 p_1203->g_130 p_1203->g_462 p_1203->g_623 p_1203->g_624 p_1203->g_184 p_1203->g_1166 p_1203->g_590 p_1203->g_592
 * writes: p_1203->g_9 p_1203->g_130 p_1203->g_921.f2 p_1203->g_110 p_1203->g_109 p_1203->g_184 p_1203->g_288
 */
int32_t ** func_28(int64_t  p_29, int32_t * p_30, struct S2 * p_1203)
{ /* block id: 570 */
    int8_t *l_1124 = (void*)0;
    int8_t **l_1123 = &l_1124;
    int8_t ***l_1122 = &l_1123;
    int16_t l_1129 = 0L;
    int32_t *l_1130 = &p_1203->g_9;
    int32_t l_1145[5][10][5] = {{{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)}},{{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)}},{{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)}},{{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)}},{{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)},{1L,1L,0x252BFBD4L,0x1851C471L,(-5L)}}};
    uint32_t l_1148 = 0x49848342L;
    int16_t l_1156 = 0x5EF6L;
    VECTOR(int32_t, 4) l_1157 = (VECTOR(int32_t, 4))(0x76E3A656L, (VECTOR(int32_t, 2))(0x76E3A656L, 0x201F50BDL), 0x201F50BDL);
    int32_t ***l_1163 = &p_1203->g_109;
    VECTOR(uint16_t, 2) l_1167 = (VECTOR(uint16_t, 2))(65535UL, 8UL);
    uint64_t ***l_1168 = &p_1203->g_946[2];
    uint64_t ***l_1169 = (void*)0;
    uint64_t ***l_1170[3][5] = {{&p_1203->g_946[1],&p_1203->g_946[5],&p_1203->g_946[1],&p_1203->g_946[1],&p_1203->g_946[5]},{&p_1203->g_946[1],&p_1203->g_946[5],&p_1203->g_946[1],&p_1203->g_946[1],&p_1203->g_946[5]},{&p_1203->g_946[1],&p_1203->g_946[5],&p_1203->g_946[1],&p_1203->g_946[1],&p_1203->g_946[5]}};
    uint64_t **l_1171 = &p_1203->g_947;
    int64_t *l_1176 = (void*)0;
    uint64_t **l_1177 = &p_1203->g_947;
    int32_t l_1178 = 0x346F8703L;
    uint8_t *l_1179 = (void*)0;
    uint8_t *l_1180 = &p_1203->g_288;
    int32_t l_1181 = 0x25BB989FL;
    int32_t *l_1182[3];
    int16_t l_1183 = 1L;
    uint32_t l_1184 = 0x08E399C1L;
    int64_t *l_1189 = (void*)0;
    int32_t **l_1195[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1182[i] = (void*)0;
    for (p_1203->g_9 = (-23); (p_1203->g_9 > (-23)); p_1203->g_9 = safe_add_func_uint16_t_u_u(p_1203->g_9, 5))
    { /* block id: 573 */
        int8_t ***l_1125 = &l_1123;
        int32_t *l_1126[10] = {&p_1203->g_130,(void*)0,&p_1203->g_183,(void*)0,&p_1203->g_130,&p_1203->g_130,(void*)0,&p_1203->g_183,(void*)0,&p_1203->g_130};
        uint16_t *l_1140 = (void*)0;
        uint16_t *l_1141 = (void*)0;
        uint16_t *l_1142 = (void*)0;
        uint16_t *l_1143 = (void*)0;
        uint16_t *l_1144[6][4][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        uint8_t l_1158 = 1UL;
        int i, j, k;
        (*p_1203->g_700) = ((-1L) != (l_1122 == l_1125));
        for (p_1203->g_921.f2 = 0; (p_1203->g_921.f2 != 9); p_1203->g_921.f2 = safe_add_func_int64_t_s_s(p_1203->g_921.f2, 9))
        { /* block id: 577 */
            if (l_1129)
                break;
            (*p_1203->g_109) = l_1130;
        }
        l_1157.w = (safe_sub_func_uint16_t_u_u(((((p_29 , ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(p_1203->g_1133.xywy)).hi)).hi) & ((safe_sub_func_int32_t_s_s(p_29, (safe_mod_func_int64_t_s_s((*l_1130), (safe_div_func_int16_t_s_s(((*p_1203->g_936) == (void*)0), (l_1145[3][5][1] = 0xBE63L))))))) <= (l_1148 ^= (safe_rshift_func_int8_t_s_s((*l_1130), 0))))) , ((VECTOR(uint8_t, 16))((safe_mod_func_uint8_t_u_u((((safe_add_func_int8_t_s_s(((((safe_lshift_func_int16_t_s_s((((p_1203->g_1155[0][4][3] >= 0xFB0523F7L) < l_1156) == 6UL), 2)) , 0x7E1C11F3L) <= l_1157.x) == p_1203->g_130), 0x21L)) >= p_1203->g_462.s3) ^ p_29), p_1203->g_462.s4)), ((VECTOR(uint8_t, 8))(0x23L)), (**p_1203->g_623), 0x94L, ((VECTOR(uint8_t, 4))(0x61L)), 254UL)).sf) && GROUP_DIVERGE(1, 1)), p_29));
        l_1158--;
    }
    (*p_1203->g_700) = ((((VECTOR(uint64_t, 8))(18446744073709551615UL, (((((*l_1163) = (void*)0) == &p_1203->g_110) == ((VECTOR(uint64_t, 2))(0UL, 1UL)).hi) & ((*l_1180) = ((*p_1203->g_624) = (((0x4BL ^ ((0x3A8F93E11CCCC181L || ((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 8))(p_1203->g_1166.s33455661)).s3546045106347717, ((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 2))(0UL, 0x1902L)).yyyyxxyxyxxxxxxy, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_1167.xxyxxyyx)))).s1201240715275115)).odd)).s7534773207410162)))))).s1, 1L)) >= ((l_1171 = &p_1203->g_947) != (l_1177 = (((*l_1130) = ((safe_div_func_int64_t_s_s(((*l_1130) | (*l_1130)), (safe_lshift_func_uint8_t_u_s(((*l_1130) , p_29), 0)))) , 0x621BF53E9575D9D5L)) , &p_1203->g_947))))) < l_1178)) >= (*p_1203->g_590)) < p_29)))), ((VECTOR(uint64_t, 4))(0UL)), 0x5F53A4C54EEB10B2L, 0x0ABB2A598D405D3FL)).s2 ^ p_29) , l_1181);
    --l_1184;
    p_30 = p_30;
    return &p_1203->g_613;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_347.f0 p_1203->g_625 p_1203->g_109 p_1203->g_110 p_1203->g_127 p_1203->g_130 p_1203->g_183 p_1203->g_997 p_1203->g_624 p_1203->g_184 p_1203->g_590 p_1203->g_592 p_1203->g_249 p_1203->g_9 p_1203->g_358 p_1203->g_157 p_1203->g_620 p_1203->g_339 p_1203->g_254 p_1203->g_295 p_1203->g_462 p_1203->g_465 p_1203->g_933 p_1203->g_1106 p_1203->g_288 p_1203->g_1110
 * writes: p_1203->g_347.f0 p_1203->g_921.f2 p_1203->g_693.f2 p_1203->g_959 p_1203->g_960 p_1203->g_255.f2 p_1203->g_130 p_1203->g_183 p_1203->g_184 p_1203->g_110 p_1203->g_249 p_1203->g_620 p_1203->g_254 p_1203->g_933 p_1203->g_1106 p_1203->g_288
 */
int32_t * func_31(int32_t * p_32, uint32_t  p_33, struct S2 * p_1203)
{ /* block id: 495 */
    VECTOR(int32_t, 16) l_953 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 4L), 4L), 4L, 0L, 4L, (VECTOR(int32_t, 2))(0L, 4L), (VECTOR(int32_t, 2))(0L, 4L), 0L, 4L, 0L, 4L);
    VECTOR(uint16_t, 4) l_970 = (VECTOR(uint16_t, 4))(0x4DBDL, (VECTOR(uint16_t, 2))(0x4DBDL, 65535UL), 65535UL);
    int32_t l_991 = 0x557308D0L;
    int64_t l_992 = 9L;
    VECTOR(int64_t, 8) l_1022 = (VECTOR(int64_t, 8))(0x5B60EC872E53E7D0L, (VECTOR(int64_t, 4))(0x5B60EC872E53E7D0L, (VECTOR(int64_t, 2))(0x5B60EC872E53E7D0L, (-4L)), (-4L)), (-4L), 0x5B60EC872E53E7D0L, (-4L));
    VECTOR(int32_t, 16) l_1076 = (VECTOR(int32_t, 16))(0x6A7BB265L, (VECTOR(int32_t, 4))(0x6A7BB265L, (VECTOR(int32_t, 2))(0x6A7BB265L, 0x65F21C09L), 0x65F21C09L), 0x65F21C09L, 0x6A7BB265L, 0x65F21C09L, (VECTOR(int32_t, 2))(0x6A7BB265L, 0x65F21C09L), (VECTOR(int32_t, 2))(0x6A7BB265L, 0x65F21C09L), 0x6A7BB265L, 0x65F21C09L, 0x6A7BB265L, 0x65F21C09L);
    uint8_t **l_1081 = (void*)0;
    int32_t ***l_1098 = &p_1203->g_109;
    int32_t l_1104 = (-1L);
    int i;
    if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_953.s7d0e030ba23b7f9e)).s707d)).z)
    { /* block id: 496 */
        int8_t l_984 = (-4L);
        int32_t l_990 = 1L;
        union U0 *l_1021 = &p_1203->g_255;
        VECTOR(int64_t, 8) l_1023 = (VECTOR(int64_t, 8))(0x627C5468FBCC3A33L, (VECTOR(int64_t, 4))(0x627C5468FBCC3A33L, (VECTOR(int64_t, 2))(0x627C5468FBCC3A33L, 0x34FFC1CA29095D2CL), 0x34FFC1CA29095D2CL), 0x34FFC1CA29095D2CL, 0x627C5468FBCC3A33L, 0x34FFC1CA29095D2CL);
        VECTOR(uint64_t, 2) l_1024 = (VECTOR(uint64_t, 2))(0x1F6933D9E6E5BAEEL, 0x461ACC7EE6E45D50L);
        VECTOR(uint64_t, 2) l_1025 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551613UL);
        int32_t l_1084 = 0x3D5BBE0BL;
        int32_t *l_1111 = &p_1203->g_183;
        int32_t *l_1112 = (void*)0;
        int32_t *l_1113 = &l_1104;
        int32_t *l_1114 = (void*)0;
        int32_t *l_1115 = &l_991;
        int32_t *l_1116 = &p_1203->g_130;
        uint32_t l_1117 = 0xA5341B46L;
        int i;
        for (p_1203->g_347.f0 = (-29); (p_1203->g_347.f0 == (-30)); p_1203->g_347.f0--)
        { /* block id: 499 */
            uint32_t **l_958[5];
            int32_t l_963 = 3L;
            int32_t l_989 = 0x438507F4L;
            int32_t ***l_1097[9];
            uint32_t *l_1099 = &p_1203->g_249;
            uint16_t *l_1102 = (void*)0;
            uint16_t *l_1103[10][6][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
            uint32_t *l_1105 = &p_1203->g_1106;
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_958[i] = (void*)0;
            for (i = 0; i < 9; i++)
                l_1097[i] = &p_1203->g_109;
            if (((safe_lshift_func_uint16_t_u_s((p_1203->g_625 == (p_1203->g_960 = (p_1203->g_959 = func_34((*p_1203->g_109), l_953.sb, p_1203)))), (safe_mul_func_uint8_t_u_u((p_33 | (l_963 ^ p_33)), 0x4FL)))) && 1UL))
            { /* block id: 502 */
                uint32_t l_966 = 0xCFFECF29L;
                VECTOR(uint16_t, 8) l_969 = (VECTOR(uint16_t, 8))(0x2CB3L, (VECTOR(uint16_t, 4))(0x2CB3L, (VECTOR(uint16_t, 2))(0x2CB3L, 0xC5D2L), 0xC5D2L), 0xC5D2L, 0x2CB3L, 0xC5D2L);
                uint64_t l_977[8] = {18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL};
                VECTOR(int8_t, 4) l_1005 = (VECTOR(int8_t, 4))(0x0BL, (VECTOR(int8_t, 2))(0x0BL, (-5L)), (-5L));
                uint8_t l_1014 = 0UL;
                int32_t *l_1017 = &l_991;
                int i;
                for (p_1203->g_255.f2 = (-2); (p_1203->g_255.f2 > 30); p_1203->g_255.f2 = safe_add_func_int16_t_s_s(p_1203->g_255.f2, 6))
                { /* block id: 505 */
                    int32_t *l_967 = &p_1203->g_130;
                    int32_t *l_968 = &p_1203->g_183;
                    uint16_t *l_973 = (void*)0;
                    uint16_t *l_974 = (void*)0;
                    VECTOR(uint16_t, 4) l_987 = (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0UL), 0UL);
                    uint8_t l_988[2];
                    uint16_t *l_993 = (void*)0;
                    uint16_t *l_994 = (void*)0;
                    uint16_t *l_995[7];
                    VECTOR(uint64_t, 8) l_996 = (VECTOR(uint64_t, 8))(0xFB0046AD9D5A0A5EL, (VECTOR(uint64_t, 4))(0xFB0046AD9D5A0A5EL, (VECTOR(uint64_t, 2))(0xFB0046AD9D5A0A5EL, 0x289B513ABE67912FL), 0x289B513ABE67912FL), 0x289B513ABE67912FL, 0xFB0046AD9D5A0A5EL, 0x289B513ABE67912FL);
                    int32_t *l_1002 = &p_1203->g_9;
                    int32_t l_1012 = 0x5F074290L;
                    uint16_t l_1018 = 0UL;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_988[i] = 0UL;
                    for (i = 0; i < 7; i++)
                        l_995[i] = (void*)0;
                    (*l_968) = ((*l_967) = l_966);
                    if ((((*l_968) |= (((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(4UL, 0x01D0L)), ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_969.s02264003)))).odd)), ((VECTOR(uint16_t, 4))(l_970.zyyw))))), 0x4CBAL, 0x3B22L))))).s64)).odd | (safe_lshift_func_uint16_t_u_u((l_953.sd |= p_33), (l_991 = (l_990 &= ((((safe_mod_func_int16_t_s_s(((0x5034L < (l_977[4] , (safe_div_func_int32_t_s_s((!2L), ((*l_967) |= (safe_sub_func_int32_t_s_s(l_970.z, (7UL ^ (safe_mul_func_uint8_t_u_u((l_984 & (safe_mul_func_uint16_t_u_u(0xE772L, (((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(l_987.wzwzzxxywwwzzzxy)).even)).odd)).xyxwwwyw))).s7370520125757454)).odd)).s53)).odd && 0x5BDCL)))), p_1203->g_127[4])))))))))) | l_988[1]), p_33)) > l_984) > p_33) == l_989)))))) , l_992) , p_33)) ^ l_989))
                    { /* block id: 513 */
                        uint32_t *l_1006 = &p_1203->g_249;
                        int64_t *l_1011 = &l_992;
                        p_1203->g_620.s4 |= ((*l_967) = (0x4A2C656FBD4A3D1AL == (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_996.s46)).xxyyyyxy)).s2 && (((p_1203->g_997 , ((*p_1203->g_624)--)) || (((((safe_add_func_uint64_t_u_u((*p_1203->g_590), ((*l_1011) = (p_1203->g_184[1] , (((((*p_1203->g_109) = l_1002) != p_32) || (safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(l_1005.xyzwwzyx)).s6, GROUP_DIVERGE(2, 1)))) , (l_969.s6 , (((++(*l_1006)) > (*p_1203->g_110)) & ((*l_968) = (safe_add_func_int16_t_s_s(0x1B42L, 0x5011L)))))))))) <= p_1203->g_358.y) >= l_1012) | (*l_1002)) > p_1203->g_157)) < 0UL))));
                    }
                    else
                    { /* block id: 521 */
                        int32_t *l_1013[10];
                        int i;
                        for (i = 0; i < 10; i++)
                            l_1013[i] = &l_989;
                        --l_1014;
                        if (l_989)
                            continue;
                        return (*p_1203->g_109);
                    }
                    (*l_968) = (p_33 >= l_1018);
                }
                (*l_1017) = ((safe_div_func_uint32_t_u_u((((l_1021 == ((*p_1203->g_339) = (*p_1203->g_339))) != ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 16))(l_1022.s2535031242232325)).sba3f, ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_1023.s3020)).ywzywxzzyzzzwzww)).s762e)))))))).zxyyywwyxyzyzxwx)))).lo, ((VECTOR(uint64_t, 8))(l_1024.yxxxxxyy))))).s37, ((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_1025.xy)), 18446744073709551609UL, 0xBE9810EA7C132684L)).zwzyxwxywzwxzzxz))), ((VECTOR(uint64_t, 8))(p_1203->g_1026.wxxzyyyx)).s3762711300405351))).sc1))).xxxxyxyyxxyyyyxy))).lo)).s6) > (((((void*)0 == &p_1203->g_373[6]) != l_984) > 65535UL) | p_33)), (safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(p_33, l_970.y)), l_1022.s2)))) != l_989);
                if ((atomic_inc(&p_1203->l_atomic_input[70]) == 5))
                { /* block id: 531 */
                    int32_t l_1031 = 8L;
                    VECTOR(uint8_t, 16) l_1040 = (VECTOR(uint8_t, 16))(0xDBL, (VECTOR(uint8_t, 4))(0xDBL, (VECTOR(uint8_t, 2))(0xDBL, 0x62L), 0x62L), 0x62L, 0xDBL, 0x62L, (VECTOR(uint8_t, 2))(0xDBL, 0x62L), (VECTOR(uint8_t, 2))(0xDBL, 0x62L), 0xDBL, 0x62L, 0xDBL, 0x62L);
                    int64_t l_1041 = 0x0CEE45D6DC3101F0L;
                    VECTOR(int32_t, 16) l_1042 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 4L), 4L), 4L, 1L, 4L, (VECTOR(int32_t, 2))(1L, 4L), (VECTOR(int32_t, 2))(1L, 4L), 1L, 4L, 1L, 4L);
                    VECTOR(int16_t, 4) l_1043 = (VECTOR(int16_t, 4))(0x2B93L, (VECTOR(int16_t, 2))(0x2B93L, 0L), 0L);
                    VECTOR(int8_t, 8) l_1044 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x3AL), 0x3AL), 0x3AL, (-1L), 0x3AL);
                    int16_t l_1045 = (-2L);
                    VECTOR(int8_t, 8) l_1046 = (VECTOR(int8_t, 8))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-1L)), (-1L)), (-1L), (-3L), (-1L));
                    int32_t l_1047 = 0x115199B8L;
                    VECTOR(int8_t, 2) l_1048 = (VECTOR(int8_t, 2))((-1L), 1L);
                    VECTOR(uint8_t, 8) l_1049 = (VECTOR(uint8_t, 8))(0x09L, (VECTOR(uint8_t, 4))(0x09L, (VECTOR(uint8_t, 2))(0x09L, 1UL), 1UL), 1UL, 0x09L, 1UL);
                    VECTOR(uint8_t, 2) l_1050 = (VECTOR(uint8_t, 2))(0xA1L, 0x6BL);
                    VECTOR(uint16_t, 8) l_1051 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x69B9L), 0x69B9L), 0x69B9L, 1UL, 0x69B9L);
                    VECTOR(int32_t, 2) l_1052 = (VECTOR(int32_t, 2))(0x4AE7D127L, 0x3B2B48E7L);
                    VECTOR(int32_t, 2) l_1053 = (VECTOR(int32_t, 2))((-1L), 0x6C183EA5L);
                    VECTOR(int32_t, 16) l_1054 = (VECTOR(int32_t, 16))(0x050DFA79L, (VECTOR(int32_t, 4))(0x050DFA79L, (VECTOR(int32_t, 2))(0x050DFA79L, 0L), 0L), 0L, 0x050DFA79L, 0L, (VECTOR(int32_t, 2))(0x050DFA79L, 0L), (VECTOR(int32_t, 2))(0x050DFA79L, 0L), 0x050DFA79L, 0L, 0x050DFA79L, 0L);
                    VECTOR(int32_t, 16) l_1055 = (VECTOR(int32_t, 16))(0x1CB8B2EEL, (VECTOR(int32_t, 4))(0x1CB8B2EEL, (VECTOR(int32_t, 2))(0x1CB8B2EEL, 2L), 2L), 2L, 0x1CB8B2EEL, 2L, (VECTOR(int32_t, 2))(0x1CB8B2EEL, 2L), (VECTOR(int32_t, 2))(0x1CB8B2EEL, 2L), 0x1CB8B2EEL, 2L, 0x1CB8B2EEL, 2L);
                    uint64_t l_1056 = 0x9EF8CD60DC945711L;
                    uint8_t l_1057 = 0xC2L;
                    VECTOR(int32_t, 2) l_1058 = (VECTOR(int32_t, 2))(0x35D19C22L, 0L);
                    VECTOR(int32_t, 4) l_1059 = (VECTOR(int32_t, 4))(0x6A556C20L, (VECTOR(int32_t, 2))(0x6A556C20L, 1L), 1L);
                    VECTOR(int32_t, 8) l_1060 = (VECTOR(int32_t, 8))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x6649666AL), 0x6649666AL), 0x6649666AL, (-7L), 0x6649666AL);
                    VECTOR(int32_t, 16) l_1061 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 8L), 8L), 8L, (-6L), 8L, (VECTOR(int32_t, 2))((-6L), 8L), (VECTOR(int32_t, 2))((-6L), 8L), (-6L), 8L, (-6L), 8L);
                    VECTOR(int32_t, 8) l_1062 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), (-1L)), (-1L)), (-1L), (-4L), (-1L));
                    VECTOR(int32_t, 4) l_1063 = (VECTOR(int32_t, 4))(0x2FA11C93L, (VECTOR(int32_t, 2))(0x2FA11C93L, 5L), 5L);
                    VECTOR(int32_t, 8) l_1064 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x3FB71AE1L), 0x3FB71AE1L), 0x3FB71AE1L, 1L, 0x3FB71AE1L);
                    VECTOR(int32_t, 16) l_1065 = (VECTOR(int32_t, 16))(0x32382E34L, (VECTOR(int32_t, 4))(0x32382E34L, (VECTOR(int32_t, 2))(0x32382E34L, 1L), 1L), 1L, 0x32382E34L, 1L, (VECTOR(int32_t, 2))(0x32382E34L, 1L), (VECTOR(int32_t, 2))(0x32382E34L, 1L), 0x32382E34L, 1L, 0x32382E34L, 1L);
                    int32_t l_1066 = 0x77CEBABFL;
                    int8_t l_1067 = 0L;
                    VECTOR(int32_t, 16) l_1068 = (VECTOR(int32_t, 16))(0x57D75BBAL, (VECTOR(int32_t, 4))(0x57D75BBAL, (VECTOR(int32_t, 2))(0x57D75BBAL, 0x7872DE92L), 0x7872DE92L), 0x7872DE92L, 0x57D75BBAL, 0x7872DE92L, (VECTOR(int32_t, 2))(0x57D75BBAL, 0x7872DE92L), (VECTOR(int32_t, 2))(0x57D75BBAL, 0x7872DE92L), 0x57D75BBAL, 0x7872DE92L, 0x57D75BBAL, 0x7872DE92L);
                    VECTOR(int32_t, 2) l_1069 = (VECTOR(int32_t, 2))(3L, 0L);
                    VECTOR(int32_t, 2) l_1070 = (VECTOR(int32_t, 2))(6L, 0x2D9277C6L);
                    int32_t l_1071 = (-6L);
                    int16_t l_1072 = (-10L);
                    int8_t l_1073 = 0x14L;
                    int64_t l_1074 = 0x72A1E34A94E0294DL;
                    uint32_t l_1075 = 4294967289UL;
                    int i;
                    for (l_1031 = 0; (l_1031 > (-4)); l_1031--)
                    { /* block id: 534 */
                        union U1 l_1035 = {0L};/* VOLATILE GLOBAL l_1035 */
                        union U1 *l_1034 = &l_1035;
                        uint32_t l_1036 = 4294967290UL;
                        uint32_t l_1037 = 0x5295DCADL;
                        uint32_t l_1038 = 0xC066EF16L;
                        VECTOR(uint16_t, 4) l_1039 = (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0x2CF1L), 0x2CF1L);
                        int i;
                        l_1034 = (void*)0;
                        l_1037 &= l_1036;
                        l_1039.y = l_1038;
                    }
                    l_1041 = l_1040.se;
                    l_1075 &= ((VECTOR(int32_t, 4))(0x5ECDA92FL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(l_1042.sd548)).hi, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 2))(0x544B4216L, 1L)).xxyx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 8))((-1L), 0L, 0x11A53430L, ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(l_1043.xyzw)), ((VECTOR(uint16_t, 2))(0x6A92L, 1UL)).xxxx))), 0x76D543CDL)).hi, ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 2))(l_1044.s12)).yyxxyxxxxxyxxyxy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(0x33L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((-1L), (-10L))), l_1045, 0x40L, (l_1047 = ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_1046.s0511)).ywzwzwxwyzxwwyyz)).lo)).s3), 0x41L, 0x7CL, (-1L))), ((VECTOR(int8_t, 4))(l_1048.xyyy)), 1L, 1L, 0x19L, 0x20L)).s45)), 0x6FL)).y, 0x07L, 0x00L, 6L)).wzwxxzxxwxyyywxy))))))).odd, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 4))(247UL, ((VECTOR(uint8_t, 2))(l_1049.s45)), 0xB1L)), ((VECTOR(uint8_t, 8))(l_1050.yxxyyxxy)).odd))))).zxyxwxxz))).s60)).xyyyyyyyxxyyxyyy)).s9694, ((VECTOR(uint16_t, 16))(l_1051.s7407703445462205)).s688b)))))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(l_1052.xy)), ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x7BCF1569L, 1L)).xyyx)).xxwyxyzwzyzyxxxw, ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(l_1053.yyxy)).xzwyyxyxxxwyxxxw, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_1054.s8c)).lo, 8L, 0x272ABF51L, 0x4569C27BL)).ywzxwxxwzzzwxzzz))).s178b)), ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_1055.s39948a6c)).s6343663633616331)).even)).s73, (int32_t)(l_1057 = l_1056)))).xyxxyyyx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_1058.yyyxyxxyxyxxyxxy)).s82, ((VECTOR(int32_t, 2))(l_1059.xw)), ((VECTOR(int32_t, 16))(7L, 9L, ((VECTOR(int32_t, 16))(l_1060.s0763162310060540)).s7, (-1L), ((VECTOR(int32_t, 2))(l_1061.sc6)).hi, ((VECTOR(int32_t, 8))(l_1062.s61371261)), ((VECTOR(int32_t, 2))(l_1063.yy)), 0x3E2A520BL)).s2a))).yxyxyxxyxyxyxyyx)).odd))).s5205615431116252, ((VECTOR(int32_t, 16))(l_1064.s0116467750701722))))).sc49d))).zwwywzywywyyxywz))).s23, ((VECTOR(int32_t, 16))(l_1065.s48acbd8cf5c17530)).s3f)))))).xyyyxxyx)).even, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_1066, 0x6C49FBF1L, l_1067, ((VECTOR(int32_t, 2))(l_1068.sf3)), ((VECTOR(int32_t, 2))(l_1069.xx)), 0L)))).lo))).lo, ((VECTOR(int32_t, 16))(l_1070.xxyyyyxxxxyxyxxx)).s49))), (l_1071 , l_1072), (-7L), ((VECTOR(int32_t, 2))(0x1B901436L)), 0x113D25F5L, 0x57AA25ADL, 0x4F8ECDBBL, 0x1F3E7BF2L, l_1073, ((VECTOR(int32_t, 4))(0x1DA59BF1L)), 3L)).even, ((VECTOR(int32_t, 8))(0x7C82B1B9L)), ((VECTOR(int32_t, 8))(0x6807207FL))))).s26, (int32_t)l_1074))).xxyy, ((VECTOR(int32_t, 4))(0x55A421F6L)), ((VECTOR(int32_t, 4))(0x694CAED0L))))), 0x4C2F2F48L, ((VECTOR(int32_t, 2))(0x723BEAE2L)), 0x5AEFB02EL))))).s4244262675400637, ((VECTOR(int32_t, 16))(0x77ED6C51L))))).sd2b8))))).xxxzxyyw))).s22))).xyyyyxyyyxyxxxxy)).s1571)).wwwwwywxxwwxxxzz)).s93e5)).odd)), 3L)).y;
                    unsigned int result = 0;
                    result += l_1031;
                    result += l_1040.sf;
                    result += l_1040.se;
                    result += l_1040.sd;
                    result += l_1040.sc;
                    result += l_1040.sb;
                    result += l_1040.sa;
                    result += l_1040.s9;
                    result += l_1040.s8;
                    result += l_1040.s7;
                    result += l_1040.s6;
                    result += l_1040.s5;
                    result += l_1040.s4;
                    result += l_1040.s3;
                    result += l_1040.s2;
                    result += l_1040.s1;
                    result += l_1040.s0;
                    result += l_1041;
                    result += l_1042.sf;
                    result += l_1042.se;
                    result += l_1042.sd;
                    result += l_1042.sc;
                    result += l_1042.sb;
                    result += l_1042.sa;
                    result += l_1042.s9;
                    result += l_1042.s8;
                    result += l_1042.s7;
                    result += l_1042.s6;
                    result += l_1042.s5;
                    result += l_1042.s4;
                    result += l_1042.s3;
                    result += l_1042.s2;
                    result += l_1042.s1;
                    result += l_1042.s0;
                    result += l_1043.w;
                    result += l_1043.z;
                    result += l_1043.y;
                    result += l_1043.x;
                    result += l_1044.s7;
                    result += l_1044.s6;
                    result += l_1044.s5;
                    result += l_1044.s4;
                    result += l_1044.s3;
                    result += l_1044.s2;
                    result += l_1044.s1;
                    result += l_1044.s0;
                    result += l_1045;
                    result += l_1046.s7;
                    result += l_1046.s6;
                    result += l_1046.s5;
                    result += l_1046.s4;
                    result += l_1046.s3;
                    result += l_1046.s2;
                    result += l_1046.s1;
                    result += l_1046.s0;
                    result += l_1047;
                    result += l_1048.y;
                    result += l_1048.x;
                    result += l_1049.s7;
                    result += l_1049.s6;
                    result += l_1049.s5;
                    result += l_1049.s4;
                    result += l_1049.s3;
                    result += l_1049.s2;
                    result += l_1049.s1;
                    result += l_1049.s0;
                    result += l_1050.y;
                    result += l_1050.x;
                    result += l_1051.s7;
                    result += l_1051.s6;
                    result += l_1051.s5;
                    result += l_1051.s4;
                    result += l_1051.s3;
                    result += l_1051.s2;
                    result += l_1051.s1;
                    result += l_1051.s0;
                    result += l_1052.y;
                    result += l_1052.x;
                    result += l_1053.y;
                    result += l_1053.x;
                    result += l_1054.sf;
                    result += l_1054.se;
                    result += l_1054.sd;
                    result += l_1054.sc;
                    result += l_1054.sb;
                    result += l_1054.sa;
                    result += l_1054.s9;
                    result += l_1054.s8;
                    result += l_1054.s7;
                    result += l_1054.s6;
                    result += l_1054.s5;
                    result += l_1054.s4;
                    result += l_1054.s3;
                    result += l_1054.s2;
                    result += l_1054.s1;
                    result += l_1054.s0;
                    result += l_1055.sf;
                    result += l_1055.se;
                    result += l_1055.sd;
                    result += l_1055.sc;
                    result += l_1055.sb;
                    result += l_1055.sa;
                    result += l_1055.s9;
                    result += l_1055.s8;
                    result += l_1055.s7;
                    result += l_1055.s6;
                    result += l_1055.s5;
                    result += l_1055.s4;
                    result += l_1055.s3;
                    result += l_1055.s2;
                    result += l_1055.s1;
                    result += l_1055.s0;
                    result += l_1056;
                    result += l_1057;
                    result += l_1058.y;
                    result += l_1058.x;
                    result += l_1059.w;
                    result += l_1059.z;
                    result += l_1059.y;
                    result += l_1059.x;
                    result += l_1060.s7;
                    result += l_1060.s6;
                    result += l_1060.s5;
                    result += l_1060.s4;
                    result += l_1060.s3;
                    result += l_1060.s2;
                    result += l_1060.s1;
                    result += l_1060.s0;
                    result += l_1061.sf;
                    result += l_1061.se;
                    result += l_1061.sd;
                    result += l_1061.sc;
                    result += l_1061.sb;
                    result += l_1061.sa;
                    result += l_1061.s9;
                    result += l_1061.s8;
                    result += l_1061.s7;
                    result += l_1061.s6;
                    result += l_1061.s5;
                    result += l_1061.s4;
                    result += l_1061.s3;
                    result += l_1061.s2;
                    result += l_1061.s1;
                    result += l_1061.s0;
                    result += l_1062.s7;
                    result += l_1062.s6;
                    result += l_1062.s5;
                    result += l_1062.s4;
                    result += l_1062.s3;
                    result += l_1062.s2;
                    result += l_1062.s1;
                    result += l_1062.s0;
                    result += l_1063.w;
                    result += l_1063.z;
                    result += l_1063.y;
                    result += l_1063.x;
                    result += l_1064.s7;
                    result += l_1064.s6;
                    result += l_1064.s5;
                    result += l_1064.s4;
                    result += l_1064.s3;
                    result += l_1064.s2;
                    result += l_1064.s1;
                    result += l_1064.s0;
                    result += l_1065.sf;
                    result += l_1065.se;
                    result += l_1065.sd;
                    result += l_1065.sc;
                    result += l_1065.sb;
                    result += l_1065.sa;
                    result += l_1065.s9;
                    result += l_1065.s8;
                    result += l_1065.s7;
                    result += l_1065.s6;
                    result += l_1065.s5;
                    result += l_1065.s4;
                    result += l_1065.s3;
                    result += l_1065.s2;
                    result += l_1065.s1;
                    result += l_1065.s0;
                    result += l_1066;
                    result += l_1067;
                    result += l_1068.sf;
                    result += l_1068.se;
                    result += l_1068.sd;
                    result += l_1068.sc;
                    result += l_1068.sb;
                    result += l_1068.sa;
                    result += l_1068.s9;
                    result += l_1068.s8;
                    result += l_1068.s7;
                    result += l_1068.s6;
                    result += l_1068.s5;
                    result += l_1068.s4;
                    result += l_1068.s3;
                    result += l_1068.s2;
                    result += l_1068.s1;
                    result += l_1068.s0;
                    result += l_1069.y;
                    result += l_1069.x;
                    result += l_1070.y;
                    result += l_1070.x;
                    result += l_1071;
                    result += l_1072;
                    result += l_1073;
                    result += l_1074;
                    result += l_1075;
                    atomic_add(&p_1203->l_special_values[70], result);
                }
                else
                { /* block id: 543 */
                    (1 + 1);
                }
                if ((*l_1017))
                    continue;
            }
            else
            { /* block id: 547 */
                if (l_1025.y)
                    break;
            }
            l_953.s9 = (GROUP_DIVERGE(2, 1) , ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_1076.s97)).yyyx)).w);
            (*p_1203->g_625) = (safe_div_func_int16_t_s_s(((p_33 , ((safe_div_func_uint32_t_u_u((((((void*)0 != l_1081) ^ ((l_1084 = ((*l_1105) ^= (((safe_lshift_func_uint8_t_u_u(l_1084, 0)) ^ ((safe_sub_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1203->global_0_offset, get_global_id(0), 10), FAKE_DIVERGE(p_1203->global_1_offset, get_global_id(1), 10))), ((p_1203->g_933.w |= (safe_rshift_func_uint16_t_u_s(((safe_mul_func_uint16_t_u_u((l_990 = (safe_mul_func_int8_t_s_s((((*l_1099) = (((safe_lshift_func_uint16_t_u_s(p_33, 2)) , (l_1097[0] == l_1098)) , p_1203->g_295.z)) , (safe_rshift_func_uint8_t_u_u((4294967295UL == 0x26209A1AL), 7))), 0x34L))), p_1203->g_462.s7)) != l_1104), p_1203->g_465.z))) != p_33))) <= p_33)) , GROUP_DIVERGE(1, 1)))) && l_1024.x)) & l_953.s1) >= 0L), 4L)) , 252UL)) > (*p_1203->g_624)), l_1076.s7));
            (*p_1203->g_339) = (void*)0;
        }
        for (p_1203->g_288 = 0; (p_1203->g_288 != 5); ++p_1203->g_288)
        { /* block id: 561 */
            int16_t l_1109 = 5L;
            (*p_1203->g_1110) &= l_1109;
        }
        --l_1117;
        (*l_1111) |= (*l_1113);
    }
    else
    { /* block id: 566 */
        return p_32;
    }
    return (**l_1098);
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_921.f2 p_1203->g_693.f2 p_1203->g_109 p_1203->g_110 p_1203->g_613
 * writes: p_1203->g_921.f2 p_1203->g_693.f2
 */
int32_t * func_34(int32_t * p_35, int16_t  p_36, struct S2 * p_1203)
{ /* block id: 483 */
    for (p_1203->g_921.f2 = 13; (p_1203->g_921.f2 < 5); p_1203->g_921.f2 = safe_sub_func_uint16_t_u_u(p_1203->g_921.f2, 4))
    { /* block id: 486 */
        p_35 = (void*)0;
    }
    for (p_1203->g_693.f2 = 26; (p_1203->g_693.f2 > 27); p_1203->g_693.f2 = safe_add_func_int16_t_s_s(p_1203->g_693.f2, 7))
    { /* block id: 491 */
        uint32_t l_952 = 1UL;
        if (l_952)
            break;
    }
    return (*p_1203->g_109);
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_921 p_1203->g_589 p_1203->g_590 p_1203->g_592 p_1203->g_933 p_1203->g_945 p_1203->g_211
 * writes: p_1203->g_936 p_1203->g_761.f0 p_1203->g_939 p_1203->g_946
 */
int16_t  func_37(int32_t  p_38, int16_t  p_39, int16_t  p_40, int32_t  p_41, struct S2 * p_1203)
{ /* block id: 475 */
    VECTOR(int64_t, 8) l_922 = (VECTOR(int64_t, 8))(0x6D6C412B939E5400L, (VECTOR(int64_t, 4))(0x6D6C412B939E5400L, (VECTOR(int64_t, 2))(0x6D6C412B939E5400L, 7L), 7L), 7L, 0x6D6C412B939E5400L, 7L);
    int32_t l_923 = 0x21155818L;
    VECTOR(uint64_t, 16) l_930 = (VECTOR(uint64_t, 16))(0x89AD00631E83A1EDL, (VECTOR(uint64_t, 4))(0x89AD00631E83A1EDL, (VECTOR(uint64_t, 2))(0x89AD00631E83A1EDL, 0x3575177435776CEAL), 0x3575177435776CEAL), 0x3575177435776CEAL, 0x89AD00631E83A1EDL, 0x3575177435776CEAL, (VECTOR(uint64_t, 2))(0x89AD00631E83A1EDL, 0x3575177435776CEAL), (VECTOR(uint64_t, 2))(0x89AD00631E83A1EDL, 0x3575177435776CEAL), 0x89AD00631E83A1EDL, 0x3575177435776CEAL, 0x89AD00631E83A1EDL, 0x3575177435776CEAL);
    VECTOR(int64_t, 16) l_931 = (VECTOR(int64_t, 16))(0x0E75C8BE2BD3E6CCL, (VECTOR(int64_t, 4))(0x0E75C8BE2BD3E6CCL, (VECTOR(int64_t, 2))(0x0E75C8BE2BD3E6CCL, 0L), 0L), 0L, 0x0E75C8BE2BD3E6CCL, 0L, (VECTOR(int64_t, 2))(0x0E75C8BE2BD3E6CCL, 0L), (VECTOR(int64_t, 2))(0x0E75C8BE2BD3E6CCL, 0L), 0x0E75C8BE2BD3E6CCL, 0L, 0x0E75C8BE2BD3E6CCL, 0L);
    VECTOR(int64_t, 4) l_932 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0L), 0L);
    union U1 ***l_934 = &p_1203->g_373[6];
    union U1 ****l_935[9][5][1] = {{{&l_934},{&l_934},{&l_934},{&l_934},{&l_934}},{{&l_934},{&l_934},{&l_934},{&l_934},{&l_934}},{{&l_934},{&l_934},{&l_934},{&l_934},{&l_934}},{{&l_934},{&l_934},{&l_934},{&l_934},{&l_934}},{{&l_934},{&l_934},{&l_934},{&l_934},{&l_934}},{{&l_934},{&l_934},{&l_934},{&l_934},{&l_934}},{{&l_934},{&l_934},{&l_934},{&l_934},{&l_934}},{{&l_934},{&l_934},{&l_934},{&l_934},{&l_934}},{{&l_934},{&l_934},{&l_934},{&l_934},{&l_934}}};
    uint64_t *l_937 = (void*)0;
    int64_t *l_938 = &p_1203->g_761[2][0][0].f0;
    int32_t *l_941 = (void*)0;
    int32_t *l_942 = (void*)0;
    int32_t *l_943 = (void*)0;
    int32_t *l_944[2][8] = {{&p_1203->g_183,(void*)0,(void*)0,(void*)0,&p_1203->g_183,&p_1203->g_183,(void*)0,(void*)0},{&p_1203->g_183,(void*)0,(void*)0,(void*)0,&p_1203->g_183,&p_1203->g_183,(void*)0,(void*)0}};
    int i, j, k;
    p_38 = ((l_923 = (p_1203->g_921 , (p_39 >= ((((VECTOR(int64_t, 16))(l_922.s6600302625061020)).s0 >= (**p_1203->g_589)) == p_41)))) < (((safe_rshift_func_int8_t_s_s((p_1203->g_939 = (safe_mod_func_int64_t_s_s(((((*l_938) = ((safe_lshift_func_uint8_t_u_s(l_922.s2, (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 8))(l_930.sc504c706)).even, ((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 4))(l_931.s008d)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_932.wwyw)).odd)).yyyyxxxxxyyxyyxx, ((VECTOR(int64_t, 2))(p_1203->g_933.yy)).yxxyxyyyxyxyyxyx))))).s1d08)))))))), ((p_1203->g_936 = l_934) != (void*)0), ((*p_1203->g_589) == l_937), 0UL, ((VECTOR(uint64_t, 8))(1UL)), 4UL)).s3, 0x5C58472E3AE7F25BL, 9UL, ((VECTOR(uint64_t, 2))(0UL)), ((VECTOR(uint64_t, 4))(0xD72A2E5AE3DE4F5CL)), 0x6EF6511CCD435C09L, ((VECTOR(uint64_t, 4))(18446744073709551615UL)), 0xD0B4FD730A3721A1L, 1UL)).s0497)).w & 18446744073709551612UL))) <= l_922.s6)) , 0x1EADC1D5L) >= FAKE_DIVERGE(p_1203->global_1_offset, get_global_id(1), 10)), 0x0BA7F2F139FE9BDBL))), 3)) <= l_922.s7) || l_922.s6));
    (*p_1203->g_945) = &l_937;
    return p_1203->g_211.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_347.f2 p_1203->g_295 p_1203->g_612 p_1203->g_613 p_1203->g_109
 * writes: p_1203->g_347.f2 p_1203->g_110
 */
int8_t  func_44(int32_t  p_45, int32_t  p_46, uint8_t  p_47, uint32_t  p_48, int32_t * p_49, struct S2 * p_1203)
{ /* block id: 366 */
    uint64_t *l_779[10][4][6] = {{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}},{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}},{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}},{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}},{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}},{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}},{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}},{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}},{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}},{{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]},{&p_1203->g_16[0][4],&p_1203->g_16[2][1],&p_1203->g_16[0][3],&p_1203->g_16[0][4],(void*)0,&p_1203->g_16[0][4]}}};
    uint32_t *l_780 = &p_1203->g_347.f2;
    int i, j, k;
    for (p_1203->g_347.f2 = 0; (p_1203->g_347.f2 == 17); ++p_1203->g_347.f2)
    { /* block id: 369 */
        return p_1203->g_295.x;
    }
    p_49 = p_49;
    if ((atomic_inc(&p_1203->l_atomic_input[5]) == 2))
    { /* block id: 375 */
        int64_t l_781 = 0x2C3AB6E6D6C71DDAL;
        uint32_t l_915 = 0x63E21468L;
        int64_t l_916 = 8L;
        uint8_t l_917[9][5][5] = {{{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L}},{{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L}},{{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L}},{{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L}},{{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L}},{{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L}},{{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L}},{{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L}},{{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L},{0x9FL,0xC6L,250UL,0xFBL,0xE2L}}};
        uint32_t l_918 = 0x4B7E804DL;
        int i, j, k;
        if (l_781)
        { /* block id: 376 */
            int32_t l_782 = 0x1C9608F1L;
            for (l_782 = 20; (l_782 == (-23)); l_782 = safe_sub_func_uint16_t_u_u(l_782, 3))
            { /* block id: 379 */
                int16_t l_785 = (-3L);
                int32_t l_786 = 0x6276EF02L;
                uint32_t l_787 = 0xAD7034AFL;
                uint32_t l_828 = 0xFB8AE3B0L;
                l_786 = l_785;
                l_787 &= 0x5271C966L;
                for (l_785 = 2; (l_785 <= 23); l_785 = safe_add_func_uint8_t_u_u(l_785, 8))
                { /* block id: 384 */
                    int16_t l_790 = (-1L);
                    uint32_t l_824 = 6UL;
                    int8_t l_825 = 0x68L;
                    int64_t l_826 = 0x0B9DA0FA99CF2104L;
                    VECTOR(int32_t, 4) l_827 = (VECTOR(int32_t, 4))(0x318CA059L, (VECTOR(int32_t, 2))(0x318CA059L, (-1L)), (-1L));
                    int i;
                    if (l_790)
                    { /* block id: 385 */
                        int16_t l_791 = 7L;
                        int32_t l_792 = 7L;
                        int8_t l_793 = 0x43L;
                        uint8_t l_794[2][4][8] = {{{0x45L,0x63L,252UL,0UL,254UL,0x45L,0UL,0x36L},{0x45L,0x63L,252UL,0UL,254UL,0x45L,0UL,0x36L},{0x45L,0x63L,252UL,0UL,254UL,0x45L,0UL,0x36L},{0x45L,0x63L,252UL,0UL,254UL,0x45L,0UL,0x36L}},{{0x45L,0x63L,252UL,0UL,254UL,0x45L,0UL,0x36L},{0x45L,0x63L,252UL,0UL,254UL,0x45L,0UL,0x36L},{0x45L,0x63L,252UL,0UL,254UL,0x45L,0UL,0x36L},{0x45L,0x63L,252UL,0UL,254UL,0x45L,0UL,0x36L}}};
                        int i, j, k;
                        l_792 &= (l_791 = 0x20E287A0L);
                        l_794[1][3][5] &= l_793;
                    }
                    else
                    { /* block id: 389 */
                        int32_t l_796 = 0x7B72EECBL;
                        int32_t *l_795 = &l_796;
                        int32_t *l_797[2];
                        int32_t *l_798 = &l_796;
                        uint64_t l_799[4][10][1] = {{{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL}},{{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL}},{{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL}},{{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL}}};
                        int64_t l_800 = 0x73CD6D1198CC7C06L;
                        VECTOR(int64_t, 16) l_801 = (VECTOR(int64_t, 16))((-4L), (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x436323FE5D168EDBL), 0x436323FE5D168EDBL), 0x436323FE5D168EDBL, (-4L), 0x436323FE5D168EDBL, (VECTOR(int64_t, 2))((-4L), 0x436323FE5D168EDBL), (VECTOR(int64_t, 2))((-4L), 0x436323FE5D168EDBL), (-4L), 0x436323FE5D168EDBL, (-4L), 0x436323FE5D168EDBL);
                        int32_t l_802 = 0x1B581780L;
                        uint8_t l_803 = 0xBAL;
                        int32_t l_804 = 0x5EAB222EL;
                        VECTOR(int64_t, 8) l_805 = (VECTOR(int64_t, 8))(0x61F70867C36757C7L, (VECTOR(int64_t, 4))(0x61F70867C36757C7L, (VECTOR(int64_t, 2))(0x61F70867C36757C7L, 0x317E2ABEE793DDD3L), 0x317E2ABEE793DDD3L), 0x317E2ABEE793DDD3L, 0x61F70867C36757C7L, 0x317E2ABEE793DDD3L);
                        VECTOR(int64_t, 16) l_806 = (VECTOR(int64_t, 16))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 5L), 5L), 5L, 4L, 5L, (VECTOR(int64_t, 2))(4L, 5L), (VECTOR(int64_t, 2))(4L, 5L), 4L, 5L, 4L, 5L);
                        VECTOR(int64_t, 8) l_807 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-6L)), (-6L)), (-6L), 1L, (-6L));
                        VECTOR(int64_t, 16) l_808 = (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), (-1L)), (-1L)), (-1L), (-8L), (-1L), (VECTOR(int64_t, 2))((-8L), (-1L)), (VECTOR(int64_t, 2))((-8L), (-1L)), (-8L), (-1L), (-8L), (-1L));
                        VECTOR(int64_t, 2) l_809 = (VECTOR(int64_t, 2))(0L, (-9L));
                        VECTOR(int64_t, 4) l_810 = (VECTOR(int64_t, 4))(0x7FB27D75C2D409DFL, (VECTOR(int64_t, 2))(0x7FB27D75C2D409DFL, (-1L)), (-1L));
                        VECTOR(int64_t, 2) l_811 = (VECTOR(int64_t, 2))(0x2DD4EBEEF89292F1L, 1L);
                        VECTOR(int64_t, 4) l_812 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L);
                        uint64_t l_813 = 0x7BFEA41A21F308FAL;
                        VECTOR(int64_t, 16) l_814 = (VECTOR(int64_t, 16))(0x46829344FAC24B56L, (VECTOR(int64_t, 4))(0x46829344FAC24B56L, (VECTOR(int64_t, 2))(0x46829344FAC24B56L, 0x7C3C09388C2BFF2EL), 0x7C3C09388C2BFF2EL), 0x7C3C09388C2BFF2EL, 0x46829344FAC24B56L, 0x7C3C09388C2BFF2EL, (VECTOR(int64_t, 2))(0x46829344FAC24B56L, 0x7C3C09388C2BFF2EL), (VECTOR(int64_t, 2))(0x46829344FAC24B56L, 0x7C3C09388C2BFF2EL), 0x46829344FAC24B56L, 0x7C3C09388C2BFF2EL, 0x46829344FAC24B56L, 0x7C3C09388C2BFF2EL);
                        uint16_t l_815 = 0xC01DL;
                        int8_t l_816[2][4][6] = {{{7L,0x5BL,0x6DL,7L,0x0EL,0x6DL},{7L,0x5BL,0x6DL,7L,0x0EL,0x6DL},{7L,0x5BL,0x6DL,7L,0x0EL,0x6DL},{7L,0x5BL,0x6DL,7L,0x0EL,0x6DL}},{{7L,0x5BL,0x6DL,7L,0x0EL,0x6DL},{7L,0x5BL,0x6DL,7L,0x0EL,0x6DL},{7L,0x5BL,0x6DL,7L,0x0EL,0x6DL},{7L,0x5BL,0x6DL,7L,0x0EL,0x6DL}}};
                        VECTOR(uint32_t, 2) l_817 = (VECTOR(uint32_t, 2))(0xA10F0783L, 0xF25989C3L);
                        VECTOR(int64_t, 16) l_818 = (VECTOR(int64_t, 16))(0x0DEA8173FDC17149L, (VECTOR(int64_t, 4))(0x0DEA8173FDC17149L, (VECTOR(int64_t, 2))(0x0DEA8173FDC17149L, 0x0E54D30B217A81C5L), 0x0E54D30B217A81C5L), 0x0E54D30B217A81C5L, 0x0DEA8173FDC17149L, 0x0E54D30B217A81C5L, (VECTOR(int64_t, 2))(0x0DEA8173FDC17149L, 0x0E54D30B217A81C5L), (VECTOR(int64_t, 2))(0x0DEA8173FDC17149L, 0x0E54D30B217A81C5L), 0x0DEA8173FDC17149L, 0x0E54D30B217A81C5L, 0x0DEA8173FDC17149L, 0x0E54D30B217A81C5L);
                        uint32_t l_819 = 0x2ADDFFC0L;
                        uint16_t l_820 = 0xA10BL;
                        uint32_t l_821 = 4294967290UL;
                        uint16_t l_822[4] = {65535UL,65535UL,65535UL,65535UL};
                        int64_t l_823 = 0L;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_797[i] = &l_796;
                        l_798 = (l_797[0] = l_795);
                        l_800 = l_799[1][2][0];
                        l_797[0] = ((l_800 &= ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 16))((-1L), 0x266DDE5AC8224574L, ((VECTOR(int64_t, 8))(l_801.s2b7c96ae)), l_802, ((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 4))(l_803, 0x5B10150115B91FBBL, 0L, 3L)).hi, (int64_t)l_804))), 0x35DCB033D9C1AE51L, 0x7D946D89FCF4EB65L, 0x5FD6DB37D9E7D2B8L)).s395c, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(l_805.s01)).yxxxyyxx, ((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_806.s2d99d4f7)).s3512644635035566)), ((VECTOR(int64_t, 8))(l_807.s73064061)).s2276320021766542))).se8ff)).zzxzzwyyxzxyxzwz, ((VECTOR(int64_t, 2))(0x227A6F0F4F820B3FL, 8L)).yxyxxxyxyxxyxxxx))).even))), ((VECTOR(int64_t, 2))(l_808.s40)), 0x7007E985F5D7B525L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_809.xyxy)).zwwwxyxxwywywyyx)).s992e)), (-1L))).hi, ((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 4))(l_810.wxxz)).wywwyxzz, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(l_811.yxxxyyyyxxxyxxxx)), ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_812.zzzyxwzz)).s0604232467233375)), ((VECTOR(int64_t, 16))(l_813, ((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(0L, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 4))(l_814.s29d9)).xxwyywwwzwzzxwyy, (int64_t)(-10L)))).s68)).yyxxxyyy, (int64_t)l_815, (int64_t)l_816[0][0][5]))).s1303223770105263)).s63)), 0x128DB8DEA0581389L)), l_817.y, ((VECTOR(int64_t, 2))(l_818.sa7)), 0L)), (int64_t)l_819, (int64_t)(-1L)))), 0x7261DD1AA792E7C7L, l_820, l_821, 0x2D224220FBE1C472L, l_822[2], 1L, 0x6C7F1150E3FEFFF5L))))).sae4b)), ((VECTOR(int64_t, 4))(0x772F18766384353CL))))).yyyyyyywxzxzywwz, ((VECTOR(int64_t, 16))((-5L)))))).sc4db)).xxzzxyzw))).s5237437614020135, ((VECTOR(int64_t, 16))((-1L)))))).lo))))).s24)), 0x7FCDBB906E1E36C1L, 5L)).lo, ((VECTOR(int64_t, 2))(0x0938ED65D11B7854L))))), 2L, 0x2DE5B5B98259B049L)).even)).xxxx))).xwwyyyxy)).hi)).xyxywxwzyzwyxwwy, ((VECTOR(int64_t, 16))(1L))))).s7) , (void*)0);
                        l_823 = 0x1D2F62E3L;
                    }
                    l_826 = (l_825 = l_824);
                    l_827.z &= 5L;
                }
                l_828++;
            }
        }
        else
        { /* block id: 403 */
            int32_t l_831[2][5][7] = {{{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L},{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L},{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L},{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L},{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L}},{{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L},{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L},{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L},{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L},{3L,0L,0x1E80F705L,0x0F65D0DEL,0x1E80F705L,0L,3L}}};
            VECTOR(int32_t, 16) l_840 = (VECTOR(int32_t, 16))(0x5C4B31E9L, (VECTOR(int32_t, 4))(0x5C4B31E9L, (VECTOR(int32_t, 2))(0x5C4B31E9L, 0x5D6C30DFL), 0x5D6C30DFL), 0x5D6C30DFL, 0x5C4B31E9L, 0x5D6C30DFL, (VECTOR(int32_t, 2))(0x5C4B31E9L, 0x5D6C30DFL), (VECTOR(int32_t, 2))(0x5C4B31E9L, 0x5D6C30DFL), 0x5C4B31E9L, 0x5D6C30DFL, 0x5C4B31E9L, 0x5D6C30DFL);
            VECTOR(int32_t, 2) l_841 = (VECTOR(int32_t, 2))(9L, (-1L));
            VECTOR(int32_t, 8) l_842 = (VECTOR(int32_t, 8))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-1L)), (-1L)), (-1L), (-7L), (-1L));
            int32_t l_843 = 0x326501B3L;
            int32_t l_844 = 0L;
            int64_t l_845 = 0x7E7128917FEF184AL;
            VECTOR(int32_t, 2) l_846 = (VECTOR(int32_t, 2))(1L, 0x7B395513L);
            VECTOR(int32_t, 4) l_847 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 9L), 9L);
            VECTOR(int32_t, 2) l_848 = (VECTOR(int32_t, 2))(6L, 0x0A885D56L);
            VECTOR(int32_t, 4) l_849 = (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x6EC76F71L), 0x6EC76F71L);
            int8_t l_850 = 0x74L;
            VECTOR(int32_t, 2) l_851 = (VECTOR(int32_t, 2))(0x45D921A8L, (-1L));
            int8_t l_852[4][9] = {{0x23L,0L,0x06L,0x19L,0L,0x19L,0x06L,0L,0x23L},{0x23L,0L,0x06L,0x19L,0L,0x19L,0x06L,0L,0x23L},{0x23L,0L,0x06L,0x19L,0L,0x19L,0x06L,0L,0x23L},{0x23L,0L,0x06L,0x19L,0L,0x19L,0x06L,0L,0x23L}};
            VECTOR(int32_t, 2) l_853 = (VECTOR(int32_t, 2))(0x6E90B79EL, 0x48C5CC61L);
            uint16_t l_854 = 0x81AFL;
            VECTOR(int8_t, 4) l_855 = (VECTOR(int8_t, 4))(0x3AL, (VECTOR(int8_t, 2))(0x3AL, 0x7AL), 0x7AL);
            VECTOR(uint32_t, 2) l_856 = (VECTOR(uint32_t, 2))(0x0365D273L, 1UL);
            union U0 l_857 = {0x5B5B720BL};/* VOLATILE GLOBAL l_857 */
            uint16_t l_858 = 0xC7CCL;
            int8_t l_859 = (-3L);
            int8_t l_860 = 0x67L;
            union U1 l_861[3][8] = {{{0x1C4FB3F980F758E2L},{0x17913A7CED94DAFCL},{-1L},{0x17913A7CED94DAFCL},{0x1C4FB3F980F758E2L},{0x1C4FB3F980F758E2L},{0x17913A7CED94DAFCL},{-1L}},{{0x1C4FB3F980F758E2L},{0x17913A7CED94DAFCL},{-1L},{0x17913A7CED94DAFCL},{0x1C4FB3F980F758E2L},{0x1C4FB3F980F758E2L},{0x17913A7CED94DAFCL},{-1L}},{{0x1C4FB3F980F758E2L},{0x17913A7CED94DAFCL},{-1L},{0x17913A7CED94DAFCL},{0x1C4FB3F980F758E2L},{0x1C4FB3F980F758E2L},{0x17913A7CED94DAFCL},{-1L}}};
            int8_t l_862[7] = {0L,0L,0L,0L,0L,0L,0L};
            int32_t l_877 = 0x0E6A0B2CL;
            int8_t l_913 = 8L;
            int16_t l_914 = (-7L);
            int i, j, k;
            for (l_831[0][4][0] = 0; (l_831[0][4][0] < (-15)); l_831[0][4][0]--)
            { /* block id: 406 */
                int32_t *l_834 = (void*)0;
                uint32_t l_835 = 0x52FAB437L;
                uint64_t l_836[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_836[i] = 0xC0140EA69EC8B179L;
                l_834 = (void*)0;
                l_836[1] = l_835;
                for (l_835 = (-10); (l_835 != 28); l_835 = safe_add_func_uint32_t_u_u(l_835, 7))
                { /* block id: 411 */
                    uint64_t l_839 = 1UL;
                    l_839 = (-1L);
                }
            }
            if (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_840.s60fff95f)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(l_841.yxyxxyyx)).odd, ((VECTOR(int32_t, 2))(0x3441BE08L, 0x5FC5F803L)).xxyy))).lo, (int32_t)1L))))), ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(0x71356B65L, 0x1EFC44EEL)), ((VECTOR(int32_t, 16))(l_842.s2256227436371753)).sec))), (l_843 , (l_842.s2 = l_844)), l_845, (-4L), 0x60DD79C0L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_846.xyyy)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-10L), 1L)))), 0x7DA3794BL, 2L)).s75)).yxxyyyyy))).hi, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(l_847.xzywxyyyxwxxyzyz)), ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_848.yyxxxxxy)).odd)).lo)).xyyxxyxxyyxyyxyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_849.wxwz)), 0x6C64BD04L, l_850, ((VECTOR(int32_t, 2))(3L, 0L)), (-3L), (-1L), 0x4AEC9BE2L, 0x0BDBBE6EL, ((VECTOR(int32_t, 4))(l_851.xxxy)))).hi)).s2751675735614214, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(6L, 0x4A821EE4L)))).yyxyxxxxxxyyxxxy))), ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 2))((-8L), 0x2C79B226L)).xxyxyxyyxyyyxxyx, (int32_t)((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))((-1L), (l_852[3][7] = ((VECTOR(int32_t, 4))(0x6E65C9C9L, ((VECTOR(int32_t, 2))(0x4AC443D1L, 0x06F46E95L)), 0x4C2CEEB3L)).z), 0x45143E01L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_853.xx)), 0x154BCDFDL, 0x14C6E8EEL)), ((l_855.w &= l_854) , ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x2AF1AB95L, ((FAKE_DIVERGE(p_1203->global_0_offset, get_global_id(0), 10) , (((VECTOR(uint32_t, 2))(l_856.xx)).hi , (l_857 , (l_858 , ((l_859 , l_860) , l_861[1][4]))))) , l_862[3]), ((VECTOR(int32_t, 4))(0x522062D7L)), 0x44C99B95L, 0x653EC022L)).s11)).even), ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 4))(0x663172DBL)), 0x200DF13CL, 0x1A0752D1L)))).s68, ((VECTOR(int32_t, 2))((-1L)))))).xyyy)).z))), ((VECTOR(int32_t, 16))(0x6E9CC0A1L))))).odd)).s3114361641760573, ((VECTOR(int32_t, 16))(1L))))).s7401)).yyzzzywxxyxyxwwx, ((VECTOR(int32_t, 16))(0x3023AF6BL)))))))).s0951))))), ((VECTOR(int32_t, 2))((-1L))), 0L)).s20)).hi)
            { /* block id: 418 */
                int8_t l_863 = 0x79L;
                int32_t l_864[3];
                uint32_t l_865 = 4294967295UL;
                int i;
                for (i = 0; i < 3; i++)
                    l_864[i] = 6L;
                ++l_865;
            }
            else
            { /* block id: 420 */
                int32_t l_869 = 0x1E372758L;
                int32_t *l_868 = &l_869;
                int32_t *l_870 = &l_869;
                int8_t l_871[9][6] = {{5L,5L,0x2FL,1L,0x2FL,(-5L)},{5L,5L,0x2FL,1L,0x2FL,(-5L)},{5L,5L,0x2FL,1L,0x2FL,(-5L)},{5L,5L,0x2FL,1L,0x2FL,(-5L)},{5L,5L,0x2FL,1L,0x2FL,(-5L)},{5L,5L,0x2FL,1L,0x2FL,(-5L)},{5L,5L,0x2FL,1L,0x2FL,(-5L)},{5L,5L,0x2FL,1L,0x2FL,(-5L)},{5L,5L,0x2FL,1L,0x2FL,(-5L)}};
                int64_t l_872[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                uint16_t l_873 = 0xB170L;
                int32_t l_874 = (-6L);
                uint32_t l_875 = 1UL;
                uint8_t l_876 = 251UL;
                int i, j;
                l_870 = l_868;
                l_875 = ((l_873 &= (l_871[7][0] , l_872[9])) , l_874);
                l_849.y = (l_851.x = 1L);
                l_846.y ^= l_876;
            }
            if (l_877)
            { /* block id: 428 */
                int32_t l_878 = 0x7427B177L;
                for (l_878 = (-21); (l_878 <= (-23)); l_878--)
                { /* block id: 431 */
                    int32_t l_881 = 1L;
                    for (l_881 = 0; (l_881 <= (-1)); --l_881)
                    { /* block id: 434 */
                        uint16_t l_884 = 65533UL;
                        int32_t l_888 = 0L;
                        int32_t *l_887 = &l_888;
                        VECTOR(uint32_t, 16) l_889 = (VECTOR(uint32_t, 16))(0xC1209D3CL, (VECTOR(uint32_t, 4))(0xC1209D3CL, (VECTOR(uint32_t, 2))(0xC1209D3CL, 1UL), 1UL), 1UL, 0xC1209D3CL, 1UL, (VECTOR(uint32_t, 2))(0xC1209D3CL, 1UL), (VECTOR(uint32_t, 2))(0xC1209D3CL, 1UL), 0xC1209D3CL, 1UL, 0xC1209D3CL, 1UL);
                        int i;
                        l_884++;
                        l_887 = l_887;
                        (*l_887) |= l_889.sf;
                    }
                }
            }
            else
            { /* block id: 440 */
                int32_t l_890 = 1L;
                for (l_890 = 26; (l_890 >= 25); --l_890)
                { /* block id: 443 */
                    uint16_t l_893 = 0x817CL;
                    int32_t l_904 = 1L;
                    int32_t *l_903 = &l_904;
                    uint32_t l_905 = 0x47F3D71DL;
                    if (l_893)
                    { /* block id: 444 */
                        VECTOR(int32_t, 2) l_894 = (VECTOR(int32_t, 2))(1L, 0x27707894L);
                        VECTOR(int32_t, 16) l_895 = (VECTOR(int32_t, 16))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x6E9E96FDL), 0x6E9E96FDL), 0x6E9E96FDL, (-9L), 0x6E9E96FDL, (VECTOR(int32_t, 2))((-9L), 0x6E9E96FDL), (VECTOR(int32_t, 2))((-9L), 0x6E9E96FDL), (-9L), 0x6E9E96FDL, (-9L), 0x6E9E96FDL);
                        VECTOR(int32_t, 2) l_896 = (VECTOR(int32_t, 2))(0x75B3189DL, 6L);
                        uint64_t l_897 = 1UL;
                        union U1 l_898 = {-1L};/* VOLATILE GLOBAL l_898 */
                        uint64_t l_899 = 0x286410D1E91A7B5EL;
                        union U0 l_900 = {4L};/* VOLATILE GLOBAL l_900 */
                        int32_t *l_901 = &l_900.f0;
                        int32_t *l_902 = (void*)0;
                        int i;
                        l_902 = (((l_844 = ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_894.yyxx)).xyyzyxyy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_895.s8c91)))).yxzyzxwz, ((VECTOR(int32_t, 8))(l_896.xyyxxyyy))))).s6) , (l_897 , l_898)) , (l_901 = (l_899 , (l_900 , (void*)0))));
                    }
                    else
                    { /* block id: 448 */
                        l_857.f1 = 0x6081FB5BL;
                    }
                    l_903 = l_903;
                    l_905--;
                    for (l_893 = 0; (l_893 > 28); l_893++)
                    { /* block id: 455 */
                        VECTOR(int32_t, 8) l_910 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x4515DADCL), 0x4515DADCL), 0x4515DADCL, (-1L), 0x4515DADCL);
                        VECTOR(int32_t, 4) l_911 = (VECTOR(int32_t, 4))(0x538EC0D6L, (VECTOR(int32_t, 2))(0x538EC0D6L, 0x684B2241L), 0x684B2241L);
                        int64_t l_912 = 1L;
                        int i;
                        (*l_903) = (((VECTOR(int32_t, 16))(l_910.s1753621753004766)).s7 , ((VECTOR(int32_t, 16))(l_911.zwxzzyyywyzwzzwx)).s2);
                        (*l_903) &= 0x062FF4B0L;
                        l_846.y &= ((*l_903) = 0L);
                        l_910.s7 ^= ((*l_903) = l_912);
                    }
                }
            }
            l_914 = l_913;
        }
        l_917[2][3][2] &= (l_916 = l_915);
        l_918--;
        unsigned int result = 0;
        result += l_781;
        result += l_915;
        result += l_916;
        int l_917_i0, l_917_i1, l_917_i2;
        for (l_917_i0 = 0; l_917_i0 < 9; l_917_i0++) {
            for (l_917_i1 = 0; l_917_i1 < 5; l_917_i1++) {
                for (l_917_i2 = 0; l_917_i2 < 5; l_917_i2++) {
                    result += l_917[l_917_i0][l_917_i1][l_917_i2];
                }
            }
        }
        result += l_918;
        atomic_add(&p_1203->l_special_values[5], result);
    }
    else
    { /* block id: 470 */
        (1 + 1);
    }
    (*p_1203->g_109) = (*p_1203->g_612);
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_472 p_1203->g_129 p_1203->g_130 p_1203->g_16 p_1203->g_109 p_1203->g_110 p_1203->g_9 p_1203->g_4 p_1203->g_79 p_1203->g_473 p_1203->g_625 p_1203->g_612 p_1203->g_613 p_1203->g_700 p_1203->g_607 p_1203->g_624 p_1203->g_184 p_1203->g_462 p_1203->g_745 p_1203->g_73 p_1203->g_292 p_1203->g_63 p_1203->g_344 p_1203->g_761 p_1203->g_286 p_1203->g_127
 * writes: p_1203->g_comm_values p_1203->g_183 p_1203->g_375.f0 p_1203->g_110 p_1203->g_157 p_1203->g_130 p_1203->g_613 p_1203->g_607 p_1203->g_693.f2 p_1203->g_204 p_1203->g_184 p_1203->g_127
 */
int32_t  func_50(uint32_t  p_51, uint8_t  p_52, uint64_t  p_53, int32_t ** p_54, struct S2 * p_1203)
{ /* block id: 21 */
    uint32_t l_62 = 0UL;
    VECTOR(uint16_t, 8) l_71 = (VECTOR(uint16_t, 8))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0x18F8L), 0x18F8L), 0x18F8L, 65533UL, 0x18F8L);
    VECTOR(int8_t, 8) l_82 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x6FL), 0x6FL), 0x6FL, (-1L), 0x6FL);
    VECTOR(int8_t, 4) l_85 = (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0L), 0L);
    VECTOR(int8_t, 4) l_89 = (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x06L), 0x06L);
    int64_t *l_111 = (void*)0;
    VECTOR(int32_t, 8) l_701 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x589CC898L), 0x589CC898L), 0x589CC898L, 5L, 0x589CC898L);
    int32_t l_711 = 5L;
    int32_t l_712 = 0x3EE76585L;
    VECTOR(uint32_t, 4) l_739 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x7D620E70L), 0x7D620E70L);
    VECTOR(uint32_t, 16) l_740 = (VECTOR(uint32_t, 16))(0xDA22B7C3L, (VECTOR(uint32_t, 4))(0xDA22B7C3L, (VECTOR(uint32_t, 2))(0xDA22B7C3L, 0xF27AA43FL), 0xF27AA43FL), 0xF27AA43FL, 0xDA22B7C3L, 0xF27AA43FL, (VECTOR(uint32_t, 2))(0xDA22B7C3L, 0xF27AA43FL), (VECTOR(uint32_t, 2))(0xDA22B7C3L, 0xF27AA43FL), 0xDA22B7C3L, 0xF27AA43FL, 0xDA22B7C3L, 0xF27AA43FL);
    uint64_t *l_753 = (void*)0;
    uint64_t **l_752 = &l_753;
    int8_t *l_758 = (void*)0;
    int8_t **l_757 = &l_758;
    int8_t ***l_756[5];
    int8_t ***l_760 = &l_757;
    VECTOR(uint64_t, 8) l_762 = (VECTOR(uint64_t, 8))(0xAA3F1F77F00DA4DEL, (VECTOR(uint64_t, 4))(0xAA3F1F77F00DA4DEL, (VECTOR(uint64_t, 2))(0xAA3F1F77F00DA4DEL, 0x890371E5E12E4A89L), 0x890371E5E12E4A89L), 0x890371E5E12E4A89L, 0xAA3F1F77F00DA4DEL, 0x890371E5E12E4A89L);
    uint32_t l_768 = 0UL;
    int i;
    for (i = 0; i < 5; i++)
        l_756[i] = &l_757;
    for (p_51 = 19; (p_51 != 29); p_51 = safe_add_func_uint16_t_u_u(p_51, 1))
    { /* block id: 24 */
        VECTOR(int8_t, 8) l_84 = (VECTOR(int8_t, 8))(0x35L, (VECTOR(int8_t, 4))(0x35L, (VECTOR(int8_t, 2))(0x35L, (-1L)), (-1L)), (-1L), 0x35L, (-1L));
        int32_t l_93[1][10][10] = {{{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L}}};
        VECTOR(int8_t, 4) l_94 = (VECTOR(int8_t, 4))(0x2EL, (VECTOR(int8_t, 2))(0x2EL, 0L), 0L);
        int16_t l_503 = 0x62CDL;
        uint64_t l_713 = 0x62287D6510BFAB77L;
        int i, j, k;
        for (p_53 = 21; (p_53 >= 14); p_53 = safe_sub_func_int64_t_s_s(p_53, 2))
        { /* block id: 27 */
            int64_t *l_64 = (void*)0;
            int64_t *l_65 = (void*)0;
            int64_t *l_66 = (void*)0;
            int64_t *l_67 = (void*)0;
            int64_t *l_68[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_69 = (-1L);
            int32_t l_70[10][2] = {{7L,7L},{7L,7L},{7L,7L},{7L,7L},{7L,7L},{7L,7L},{7L,7L},{7L,7L},{7L,7L},{7L,7L}};
            VECTOR(uint8_t, 4) l_72 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x60L), 0x60L);
            VECTOR(uint8_t, 8) l_75 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 251UL), 251UL), 251UL, 255UL, 251UL);
            VECTOR(int8_t, 16) l_88 = (VECTOR(int8_t, 16))(0x4AL, (VECTOR(int8_t, 4))(0x4AL, (VECTOR(int8_t, 2))(0x4AL, 0x36L), 0x36L), 0x36L, 0x4AL, 0x36L, (VECTOR(int8_t, 2))(0x4AL, 0x36L), (VECTOR(int8_t, 2))(0x4AL, 0x36L), 0x4AL, 0x36L, 0x4AL, 0x36L);
            int8_t *l_91 = (void*)0;
            int8_t *l_92[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            union U0 ***l_699 = &p_1203->g_339;
            int32_t *l_702 = &l_93[0][9][5];
            int32_t *l_703 = &p_1203->g_291[0].f0;
            int32_t *l_704 = &p_1203->g_183;
            int32_t *l_705 = &p_1203->g_291[0].f0;
            int32_t *l_706 = &p_1203->g_255.f0;
            int32_t *l_707 = &p_1203->g_130;
            int32_t *l_708[7] = {&l_93[0][9][9],&p_1203->g_130,&l_93[0][9][9],&l_93[0][9][9],&p_1203->g_130,&l_93[0][9][9],&l_93[0][9][9]};
            int8_t l_709 = (-1L);
            int16_t l_710 = 0x3734L;
            int i, j;
            (*p_1203->g_612) = func_59(l_62, ((l_70[9][1] = (18446744073709551606UL || (l_69 = (p_1203->g_comm_values[p_1203->tid] = ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(p_1203->g_63.yyxyxxxy)).lo)).z)))) , ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 4))(0x0DDF4F35L, ((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_71.s42166537)))).s5177534262761005, ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 16))(l_72.wzzzwxzyyywwzxwz)).sd2, ((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 4))(p_1203->g_73.xxxy)).zwxxyzwxxyzzyzxz))).s70))).xxyy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 4))(p_1203->g_74.zwzx)).odd, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_75.s56255150)), ((GROUP_DIVERGE(2, 1) | (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 8))(abs(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1203->g_78.s58)).xyyy)).wzzwzxxx)).odd, ((VECTOR(uint64_t, 4))(p_1203->g_79.s7027))))).lo)).xxxxyxxyyyxxyyxy, ((VECTOR(uint64_t, 2))(p_1203->g_80.s31)).yxxyyxxyxyyxxyyy))).even)), (uint64_t)(((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 2))(p_1203->g_81.s6f)).xxyy, ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_82.s55)), 0x05L, 4L)).xxyxyzxz))))).odd))).lo)).odd || ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 16))(p_1203->g_83.yyyxyyyyyyxyxxxx)).lo, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 8))(6L, 0x44L, 0x5FL, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(4L, 3L)), ((VECTOR(int8_t, 8))(l_84.s21312412)).s14))).hi, ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(4L, 1L, 0x4EL, ((VECTOR(int8_t, 4))(l_85.zwwz)), 0x51L)).s64, ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 2))(p_1203->g_86.s70)).xxxxxyyxyyyyxyyx, ((VECTOR(int8_t, 4))(p_1203->g_87.xwzx)).ywwyxyzywzwwyyzz))), ((VECTOR(int8_t, 2))(l_88.s81)).yyxxxxyyyyyxxyxx))).lo, ((VECTOR(int8_t, 8))(l_89.zzyzzxzx))))), ((VECTOR(int8_t, 8))(p_1203->g_90.s20750334))))).s73))), 0x51L, 0L)).s6244270124253463, ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))(0x59L, 0L, 0x7CL, 1L)).wwyzwzxx, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(1L, 0L, 4L, (p_1203->g_86.s0 = p_52), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(0x22L, 0L, (l_93[0][9][9] = l_84.s1), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_94.zxxz)).odd)), 0x74L, (l_93[0][3][7] = (((func_95(((safe_lshift_func_int16_t_s_u(p_1203->g_86.s6, 3)) , func_103(p_1203->g_109, p_52, l_111, p_1203->g_90.s2, l_92[3], p_1203)), p_53, p_1203->g_86.s4, p_52, p_52, p_1203) , p_51) ^ p_53) | l_94.x)), ((VECTOR(int8_t, 8))(5L)), 0x3BL)).sb0b3)).hi, ((VECTOR(int8_t, 2))(0L))))).yyyxxyyxxxxxxxyy)).saf, ((VECTOR(int8_t, 2))(0x1FL))))).xxxy)), ((VECTOR(int8_t, 4))(7L)), p_1203->g_300.x, l_503, 0L, 0x4CL)).sa661)).hi)).yyxy)).zxxxwzxw))).s3631431110502365))).sd8d7, (int8_t)l_89.x))), 0x43L, l_94.z, 9L, 1L, ((VECTOR(int8_t, 2))(0x06L)), p_51, 0x70L, l_89.z, p_52, 6L, 1L)).lo))).s5633203351552403, ((VECTOR(int8_t, 16))(0x6EL))))).even)).odd)).wxwxxxzzxxxwzxxy, ((VECTOR(int8_t, 16))(0x69L))))).scf)).odd) != 0x6411L) , l_93[0][7][8])))).s7177701651144057)).odd))))), ((VECTOR(uint64_t, 8))(18446744073709551610UL)), ((VECTOR(uint64_t, 8))(0x73F8E37F44699CC8L))))).s7, p_1203->g_490.z))) == l_82.s5), p_1203->g_468.s3, 0xD5L, ((VECTOR(uint8_t, 2))(1UL)), ((VECTOR(uint8_t, 2))(255UL)), 1UL)).s02))).yyyyxxxy)).odd, ((VECTOR(uint8_t, 4))(5UL))))).odd, ((VECTOR(uint8_t, 2))(0x91L))))).yyyyxyyxxxyxxxyx))).sf2, ((VECTOR(uint32_t, 2))(0x11ED6BA9L))))), 5UL)).yxzzwywy, ((VECTOR(uint32_t, 8))(0x6A8B81D8L))))).s75)).odd), p_1203);
            (*p_1203->g_109) = (((safe_lshift_func_uint8_t_u_u(((void*)0 == l_699), 5)) , p_51) , (*p_54));
            (*p_1203->g_700) = (**p_54);
            l_713--;
        }
    }
    for (p_1203->g_607 = (-14); (p_1203->g_607 > (-27)); --p_1203->g_607)
    { /* block id: 341 */
        uint64_t l_725 = 0xA7A9432BD24EB1E2L;
        uint64_t ***l_754 = (void*)0;
        uint64_t ***l_755 = &l_752;
        int8_t ****l_759[5][7][6] = {{{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]}},{{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]}},{{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]}},{{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]}},{{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]},{&l_756[1],(void*)0,(void*)0,(void*)0,&l_756[3],&l_756[1]}}};
        int32_t l_763 = 0x0A4EEC45L;
        uint64_t *l_764 = &l_725;
        int16_t *l_765 = (void*)0;
        int16_t *l_766 = &p_1203->g_127[0];
        int32_t l_767 = 0x161A8CBCL;
        int i, j, k;
        for (p_1203->g_693.f2 = 7; (p_1203->g_693.f2 > 58); p_1203->g_693.f2 = safe_add_func_uint32_t_u_u(p_1203->g_693.f2, 7))
        { /* block id: 344 */
            int8_t l_720 = 0x5DL;
            int32_t *l_721 = (void*)0;
            int32_t *l_722 = &l_711;
            int32_t *l_723 = &l_712;
            int32_t *l_724[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int16_t *l_738[4][8][6] = {{{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]}},{{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]}},{{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]}},{{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]},{(void*)0,(void*)0,&p_1203->g_127[0],(void*)0,(void*)0,&p_1203->g_127[4]}}};
            int i, j, k;
            l_725++;
            if (l_71.s2)
                break;
            (*l_723) = (safe_div_func_uint8_t_u_u(p_51, (safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((*p_1203->g_624), (18446744073709551615UL ^ (safe_rshift_func_int16_t_s_s((p_1203->g_204.w = (254UL & (0L < GROUP_DIVERGE(1, 1)))), p_1203->g_462.s3))))), ((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 2))(l_739.yx)), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_740.sb6)), p_51, 1UL, (safe_lshift_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((*l_722) = ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 8))((0L || (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(p_1203->g_745.s981f)))), ((*p_1203->g_624) ^ 0UL), p_1203->g_73.x, l_89.x, 0x06C11C7EBF39E6C8L, 0xE55536029B6113BAL, l_89.w, l_725, 1UL, 18446744073709551615UL, l_85.y, 0UL, 7UL)).s6 , p_1203->g_462.s6)), 1L, 7L, 1L, (**p_54), ((VECTOR(int32_t, 2))((-1L))), 1L)), ((VECTOR(int32_t, 8))((-7L)))))), 0L, 0x2805891DL, (**p_54), ((VECTOR(int32_t, 4))(0L)), 0x0CEB390EL)).s2d)).xyyxyxyy, ((VECTOR(int32_t, 8))((-4L)))))).s2), 0x76DEE58BL)), 0)), l_725, p_1203->g_292.x, l_725, ((VECTOR(uint32_t, 2))(0x171A92A5L)), p_1203->g_63.x, ((VECTOR(uint32_t, 2))(1UL)), FAKE_DIVERGE(p_1203->group_1_offset, get_group_id(1), 10), 0x75A477B2L, 0x002ACF7FL)).s8e))).odd))));
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1203->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 18)), permutations[(safe_mod_func_uint32_t_u_u(((((safe_rshift_func_int16_t_s_u(p_1203->g_344.s4, 0)) > (safe_mul_func_uint8_t_u_u(((*p_1203->g_624) = (((*l_755) = l_752) != ((l_756[1] != (l_760 = &l_757)) , &p_1203->g_590))), (((*l_764) = (p_1203->g_761[2][0][0] , (!(~(l_763 &= ((VECTOR(uint64_t, 2))(l_762.s07)).even))))) > (l_82.s1 > (l_767 = ((*l_766) ^= ((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 8))((p_1203->g_286[1] | l_701.s2), ((VECTOR(int16_t, 4))(1L)), 0x695AL, 0x4EE7L, 0x21C1L)).lo, ((VECTOR(int16_t, 4))(1L)), ((VECTOR(int16_t, 4))((-4L)))))).wywzxzxz)).s0265754613121565, ((VECTOR(int16_t, 16))(0L)), ((VECTOR(int16_t, 16))(0x377DL))))).hi, ((VECTOR(int16_t, 8))(1L))))).s2))))))) != l_768) != (**p_1203->g_109)), 10))][(safe_mod_func_uint32_t_u_u(p_1203->tid, 18))]));
    }
    atomic_max(&p_1203->l_atomic_reduction[0], 0x31114859L + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1203->v_collective += p_1203->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    (*p_1203->g_612) = ((*p_1203->g_109) = (void*)0);
    return l_71.s3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_472 p_1203->g_129 p_1203->g_130 p_1203->g_16 p_1203->g_375.f0 p_1203->g_109 p_1203->g_110 p_1203->g_4 p_1203->g_648 p_1203->g_79 p_1203->g_473 p_1203->g_157 p_1203->g_183 p_1203->g_128 p_1203->g_581 p_1203->g_625 p_1203->g_612 p_1203->g_613 p_1203->g_9
 * writes: p_1203->g_183 p_1203->g_375.f0 p_1203->g_110 p_1203->g_157 p_1203->g_624 p_1203->g_249 p_1203->g_130
 */
int32_t * func_59(int16_t  p_60, uint32_t  p_61, struct S2 * p_1203)
{ /* block id: 217 */
    uint16_t l_510 = 0x100EL;
    VECTOR(uint16_t, 8) l_600 = (VECTOR(uint16_t, 8))(0xE10DL, (VECTOR(uint16_t, 4))(0xE10DL, (VECTOR(uint16_t, 2))(0xE10DL, 0x473CL), 0x473CL), 0x473CL, 0xE10DL, 0x473CL);
    int32_t l_630[6][5][7] = {{{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L}},{{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L}},{{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L}},{{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L}},{{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L}},{{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L},{0x278952AAL,0x5EDDBA23L,0x6EF36737L,0x6EF36737L,0x5EDDBA23L,0x278952AAL,7L}}};
    int16_t *l_695 = &p_1203->g_127[3];
    int i, j, k;
    if ((safe_div_func_uint64_t_u_u(p_1203->g_472.s5, (-1L))))
    { /* block id: 218 */
        int32_t *l_507 = &p_1203->g_183;
        int32_t l_508 = 0x40ED5505L;
        int32_t *l_509[4] = {&p_1203->g_291[0].f0,&p_1203->g_291[0].f0,&p_1203->g_291[0].f0,&p_1203->g_291[0].f0};
        int i;
        (*l_507) = (*p_1203->g_129);
        --l_510;
    }
    else
    { /* block id: 221 */
        uint64_t l_515[4][2] = {{0UL,8UL},{0UL,8UL},{0UL,8UL},{0UL,8UL}};
        int32_t l_516[8][4] = {{0L,0x3B8AA00BL,5L,0x3B8AA00BL},{0L,0x3B8AA00BL,5L,0x3B8AA00BL},{0L,0x3B8AA00BL,5L,0x3B8AA00BL},{0L,0x3B8AA00BL,5L,0x3B8AA00BL},{0L,0x3B8AA00BL,5L,0x3B8AA00BL},{0L,0x3B8AA00BL,5L,0x3B8AA00BL},{0L,0x3B8AA00BL,5L,0x3B8AA00BL},{0L,0x3B8AA00BL,5L,0x3B8AA00BL}};
        VECTOR(int32_t, 4) l_619 = (VECTOR(int32_t, 4))(0x2F87292EL, (VECTOR(int32_t, 2))(0x2F87292EL, 0x4C48DE66L), 0x4C48DE66L);
        uint8_t l_631 = 0xAFL;
        VECTOR(uint16_t, 2) l_651 = (VECTOR(uint16_t, 2))(65535UL, 0UL);
        uint8_t **l_658[3];
        uint64_t l_667[4];
        int16_t l_673 = (-8L);
        int i, j;
        for (i = 0; i < 3; i++)
            l_658[i] = &p_1203->g_624;
        for (i = 0; i < 4; i++)
            l_667[i] = 18446744073709551606UL;
        l_516[6][2] |= (safe_rshift_func_uint16_t_u_u((+(l_510 , (p_1203->g_16[0][0] , 0xEC98L))), l_515[3][1]));
        for (p_1203->g_375.f0 = 0; (p_1203->g_375.f0 == 9); p_1203->g_375.f0++)
        { /* block id: 225 */
            int64_t *l_582 = (void*)0;
            int32_t l_601 = 2L;
            for (l_510 = 0; (l_510 <= 33); l_510 = safe_add_func_uint16_t_u_u(l_510, 5))
            { /* block id: 228 */
                uint64_t *l_584 = &p_1203->g_16[0][4];
                int8_t *l_593 = (void*)0;
                int8_t *l_594 = (void*)0;
                int8_t *l_595 = (void*)0;
                int8_t *l_596 = (void*)0;
                int8_t *l_597 = (void*)0;
                int8_t *l_598[3][2];
                uint32_t *l_599 = &p_1203->g_249;
                int64_t *l_602 = (void*)0;
                int64_t *l_603[7];
                int32_t *l_604[1][5] = {{&p_1203->g_286[1],&p_1203->g_286[1],&p_1203->g_286[1],&p_1203->g_286[1],&p_1203->g_286[1]}};
                int32_t *l_606 = &p_1203->g_607;
                int16_t *l_608 = (void*)0;
                int16_t *l_609 = &p_1203->g_127[0];
                VECTOR(int32_t, 2) l_618 = (VECTOR(int32_t, 2))(0x073298A4L, 4L);
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_598[i][j] = (void*)0;
                }
                for (i = 0; i < 7; i++)
                    l_603[i] = (void*)0;
                if ((atomic_inc(&p_1203->g_atomic_input[96 * get_linear_group_id() + 18]) == 6))
                { /* block id: 230 */
                    int32_t l_521 = 1L;
                    uint16_t l_563 = 0xB59AL;
                    int16_t l_564 = 0L;
                    for (l_521 = 0; (l_521 <= 22); ++l_521)
                    { /* block id: 233 */
                        uint32_t l_524[10][8][3] = {{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}},{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}},{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}},{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}},{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}},{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}},{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}},{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}},{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}},{{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL},{0x8EA4D673L,4294967295UL,0x6A8B8DCCL}}};
                        uint8_t l_525 = 0xC8L;
                        VECTOR(int32_t, 4) l_526 = (VECTOR(int32_t, 4))(0x05D07962L, (VECTOR(int32_t, 2))(0x05D07962L, 0x183197EDL), 0x183197EDL);
                        VECTOR(int32_t, 16) l_527 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x09651049L), 0x09651049L), 0x09651049L, 0L, 0x09651049L, (VECTOR(int32_t, 2))(0L, 0x09651049L), (VECTOR(int32_t, 2))(0L, 0x09651049L), 0L, 0x09651049L, 0L, 0x09651049L);
                        VECTOR(int32_t, 4) l_528 = (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0L), 0L);
                        VECTOR(int32_t, 4) l_529 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-7L)), (-7L));
                        VECTOR(int32_t, 2) l_530 = (VECTOR(int32_t, 2))(0x3334F85DL, 2L);
                        int32_t l_531 = 0x17C7C864L;
                        VECTOR(int32_t, 16) l_532 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x406A38C4L), 0x406A38C4L), 0x406A38C4L, (-1L), 0x406A38C4L, (VECTOR(int32_t, 2))((-1L), 0x406A38C4L), (VECTOR(int32_t, 2))((-1L), 0x406A38C4L), (-1L), 0x406A38C4L, (-1L), 0x406A38C4L);
                        int8_t l_533 = 0x6EL;
                        VECTOR(int32_t, 16) l_534 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-6L)), (-6L)), (-6L), (-1L), (-6L), (VECTOR(int32_t, 2))((-1L), (-6L)), (VECTOR(int32_t, 2))((-1L), (-6L)), (-1L), (-6L), (-1L), (-6L));
                        VECTOR(int32_t, 4) l_535 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0A554164L), 0x0A554164L);
                        VECTOR(int32_t, 2) l_536 = (VECTOR(int32_t, 2))((-8L), 0x14B4C7B4L);
                        int32_t l_537 = 0x1F93307EL;
                        VECTOR(int32_t, 16) l_538 = (VECTOR(int32_t, 16))(0x555C85C6L, (VECTOR(int32_t, 4))(0x555C85C6L, (VECTOR(int32_t, 2))(0x555C85C6L, (-5L)), (-5L)), (-5L), 0x555C85C6L, (-5L), (VECTOR(int32_t, 2))(0x555C85C6L, (-5L)), (VECTOR(int32_t, 2))(0x555C85C6L, (-5L)), 0x555C85C6L, (-5L), 0x555C85C6L, (-5L));
                        VECTOR(int32_t, 2) l_539 = (VECTOR(int32_t, 2))(0L, 4L);
                        int32_t l_540 = (-4L);
                        uint8_t l_541 = 248UL;
                        int32_t l_542 = 7L;
                        int16_t l_543 = (-1L);
                        int8_t l_544 = 1L;
                        int32_t l_545 = 0x5FD9EF59L;
                        int16_t l_546 = (-1L);
                        int16_t l_547 = (-1L);
                        int32_t l_548 = 0x569CA1E0L;
                        int16_t l_549 = 0x0590L;
                        int64_t l_550 = (-10L);
                        int32_t *l_551[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i, j, k;
                        l_548 = ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 8))(0x00504A87L, 7L, l_524[0][4][2], (-6L), l_525, 0x707D41DBL, (-1L), 0x64CE8BCDL)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_526.zzyw)).lo, ((VECTOR(int32_t, 2))(1L, 0x31F54B37L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(l_527.s066c)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_528.xzwyxxxx)).lo))))), ((VECTOR(int32_t, 2))(l_529.wz)), 0x3FDAA821L)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(5L, ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(l_530.xxxxxxyy)).lo))), (l_533 = ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))((-1L), l_531, 0x39D473F0L, 0x13EA3E1BL)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_532.sc6)).yxyx))))).y), (-1L), 0x6368CF81L, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_534.sc1adc176)))).s7305464321204150)).s6b)), (-1L), 0x46B5E65FL)), ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(l_535.yzyyyxzz)).hi, ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(l_536.xyxxxyxyxyxxxyxx)).sc621)))))).hi, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x30D3B1BBL, l_537, ((VECTOR(int32_t, 4))(l_538.s8a3d)), 1L, 1L)).s56)), (-1L), 0x74B6BAA1L)).even, ((VECTOR(int32_t, 2))(l_539.yx))))).yxxyyxyxyxxxyyyy)).even))).s11, ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0x6B4410B9L, (((l_544 &= (l_543 |= ((l_540 &= 0x60E4E5FDL) , (l_542 |= l_541)))) , l_545) , l_546), ((VECTOR(int32_t, 4))((-5L))), 0x2B26A700L, 0x05243FD9L)))).hi, ((VECTOR(int32_t, 4))(0x303CB5BBL))))).even))).yxyx))), l_547, ((VECTOR(int32_t, 2))((-3L))), 0x171C1CFBL)))).even, ((VECTOR(int32_t, 8))(0x7ED1ABAFL))))).s40))))).xyyxyxxxxyyyxxyx)).odd))).s7542316477203000)).s18b7)).even, ((VECTOR(int32_t, 2))(0x32CF198DL)), ((VECTOR(int32_t, 2))(0x699F980CL))))).even;
                        l_550 = l_549;
                        l_551[4] = (void*)0;
                    }
                    for (l_521 = 0; (l_521 <= (-1)); l_521 = safe_sub_func_int32_t_s_s(l_521, 5))
                    { /* block id: 245 */
                        uint32_t l_554 = 4294967295UL;
                        VECTOR(uint64_t, 2) l_557 = (VECTOR(uint64_t, 2))(0xDAAE428C1F9F1694L, 0UL);
                        uint64_t *l_556 = (void*)0;
                        uint64_t **l_555[10][5][5] = {{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}},{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}},{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}},{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}},{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}},{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}},{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}},{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}},{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}},{{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556},{&l_556,&l_556,&l_556,&l_556,&l_556}}};
                        uint64_t **l_558 = &l_556;
                        int32_t l_559 = 0x43C58BECL;
                        uint16_t l_560 = 65535UL;
                        uint64_t l_561 = 18446744073709551615UL;
                        uint8_t l_562 = 0x49L;
                        int i, j, k;
                        l_554 = (-1L);
                        l_558 = l_555[0][4][1];
                        l_560 ^= l_559;
                        l_562 |= l_561;
                    }
                    l_564 &= l_563;
                    for (l_564 = 0; (l_564 > 12); l_564 = safe_add_func_uint32_t_u_u(l_564, 2))
                    { /* block id: 254 */
                        union U1 l_567 = {0L};/* VOLATILE GLOBAL l_567 */
                        int8_t l_568 = 0x74L;
                        int32_t l_569 = 3L;
                        uint32_t l_570[6] = {0x725F8005L,0x725F8005L,0x725F8005L,0x725F8005L,0x725F8005L,0x725F8005L};
                        uint32_t l_571 = 0UL;
                        int64_t l_572 = 0x465947C1502364BDL;
                        int32_t l_573 = 0x3EDA4800L;
                        int i;
                        l_573 = ((l_567 , (l_572 = (l_571 &= (l_570[5] = (l_568 , (l_521 |= l_569)))))) , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x03A09CB0L, 6L, (-1L), (-10L))).xywwyyxx)).s5);
                    }
                    unsigned int result = 0;
                    result += l_521;
                    result += l_563;
                    result += l_564;
                    atomic_add(&p_1203->g_special_values[96 * get_linear_group_id() + 18], result);
                }
                else
                { /* block id: 261 */
                    (1 + 1);
                }
            }
            (*p_1203->g_109) = &l_516[1][3];
        }
        if ((**p_1203->g_109))
        { /* block id: 290 */
            int32_t *l_626 = &l_516[6][2];
            int32_t *l_627 = (void*)0;
            int32_t *l_628 = &p_1203->g_291[0].f0;
            int32_t *l_629[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            --l_631;
            for (p_60 = 0; (p_60 > (-20)); p_60 = safe_sub_func_uint64_t_u_u(p_60, 9))
            { /* block id: 294 */
                if ((atomic_inc(&p_1203->g_atomic_input[96 * get_linear_group_id() + 48]) == 2))
                { /* block id: 296 */
                    int8_t l_636 = 0x5EL;
                    uint8_t l_637[3][7][6] = {{{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL}},{{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL}},{{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL},{1UL,0x04L,0x04L,1UL,0x49L,252UL}}};
                    int i, j, k;
                    l_637[2][2][4] = l_636;
                    unsigned int result = 0;
                    result += l_636;
                    int l_637_i0, l_637_i1, l_637_i2;
                    for (l_637_i0 = 0; l_637_i0 < 3; l_637_i0++) {
                        for (l_637_i1 = 0; l_637_i1 < 7; l_637_i1++) {
                            for (l_637_i2 = 0; l_637_i2 < 6; l_637_i2++) {
                                result += l_637[l_637_i0][l_637_i1][l_637_i2];
                            }
                        }
                    }
                    atomic_add(&p_1203->g_special_values[96 * get_linear_group_id() + 48], result);
                }
                else
                { /* block id: 298 */
                    (1 + 1);
                }
            }
            if ((atomic_inc(&p_1203->l_atomic_input[55]) == 7))
            { /* block id: 303 */
                uint64_t l_638 = 0xC5FF1D970AFB8060L;
                int64_t l_639 = 1L;
                VECTOR(uint64_t, 2) l_640 = (VECTOR(uint64_t, 2))(18446744073709551607UL, 1UL);
                VECTOR(int32_t, 8) l_641 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L);
                union U0 *l_642 = (void*)0;
                union U0 l_644 = {-2L};/* VOLATILE GLOBAL l_644 */
                union U0 *l_643 = &l_644;
                int32_t *l_645 = &l_644.f0;
                int i;
                l_639 ^= l_638;
                l_643 = (l_642 = ((((VECTOR(uint64_t, 2))(l_640.xx)).hi , ((VECTOR(int32_t, 8))(l_641.s60463255)).s7) , (void*)0));
                l_645 = (void*)0;
                unsigned int result = 0;
                result += l_638;
                result += l_639;
                result += l_640.y;
                result += l_640.x;
                result += l_641.s7;
                result += l_641.s6;
                result += l_641.s5;
                result += l_641.s4;
                result += l_641.s3;
                result += l_641.s2;
                result += l_641.s1;
                result += l_641.s0;
                result += l_644.f0;
                result += l_644.f1;
                result += l_644.f2;
                atomic_add(&p_1203->l_special_values[55], result);
            }
            else
            { /* block id: 308 */
                (1 + 1);
            }
            l_667[2] &= ((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(p_1203->g_648.s99)).lo, (safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 4))(l_651.xyyy)).y, (safe_sub_func_int8_t_s_s((safe_sub_func_int32_t_s_s((safe_div_func_uint8_t_u_u((l_658[0] == (void*)0), (safe_lshift_func_uint8_t_u_s((p_1203->g_79.s0 > p_60), 0)))), l_600.s7)), ((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x59DE3B46327EBE25L, 0x4786C02152230257L)))).xxyx)).ywywzzyyxzywxzxz)).s0886, ((VECTOR(int64_t, 2))(0L, 1L)).xxxx))))))).w, 0xD7621D8B8C13C02EL)) , (((((safe_mod_func_uint32_t_u_u(p_1203->g_473.x, (*p_1203->g_110))) ^ (safe_lshift_func_int8_t_s_s(0x3BL, 3))) , l_630[5][0][0]) | 0xE5D3L) ^ 1L)))))))) && p_60);
        }
        else
        { /* block id: 312 */
            int16_t l_668 = 0L;
            int32_t *l_669 = &p_1203->g_347.f0;
            int32_t *l_670 = &l_630[5][0][0];
            int32_t *l_671 = &p_1203->g_347.f0;
            int32_t *l_672[3];
            uint16_t l_674 = 1UL;
            union U1 *l_692 = &p_1203->g_693;
            int i;
            for (i = 0; i < 3; i++)
                l_672[i] = &p_1203->g_183;
            ++l_674;
            for (p_1203->g_157 = 27; (p_1203->g_157 > 21); --p_1203->g_157)
            { /* block id: 316 */
                uint8_t *l_683[8][2] = {{&p_1203->g_184[1],&p_1203->g_184[1]},{&p_1203->g_184[1],&p_1203->g_184[1]},{&p_1203->g_184[1],&p_1203->g_184[1]},{&p_1203->g_184[1],&p_1203->g_184[1]},{&p_1203->g_184[1],&p_1203->g_184[1]},{&p_1203->g_184[1],&p_1203->g_184[1]},{&p_1203->g_184[1],&p_1203->g_184[1]},{&p_1203->g_184[1],&p_1203->g_184[1]}};
                int16_t *l_684 = &l_673;
                int32_t l_685 = (-3L);
                uint32_t *l_694 = &p_1203->g_249;
                uint16_t *l_696 = &l_510;
                int i, j;
                for (p_1203->g_183 = (-10); (p_1203->g_183 != (-15)); p_1203->g_183 = safe_sub_func_uint32_t_u_u(p_1203->g_183, 5))
                { /* block id: 319 */
                    if (p_61)
                        break;
                }
                (*p_1203->g_625) = (((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))((safe_div_func_int32_t_s_s((((((p_1203->g_624 = &p_1203->g_184[1]) != l_683[2][1]) == ((*l_684) = p_1203->g_128.s5)) < l_685) <= ((*l_696) = (((safe_sub_func_int8_t_s_s((0x78DAL >= (safe_rshift_func_uint8_t_u_u(p_1203->g_581.s0, l_685))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(0x5AL, p_60, 2L, 0x51L)).xyxywwzyyzwwzwzy)).s4)) > (l_630[5][0][0] = (safe_lshift_func_int8_t_s_u(((((*l_694) = (((void*)0 == l_692) == l_685)) , l_695) == (void*)0), p_60)))) == l_685))), p_60)), ((VECTOR(int64_t, 4))(0x5E83B49D2563918DL)), ((VECTOR(int64_t, 8))(0L)), (-1L), 0x503A8AB7F257C4D3L, (-1L))))).s3e5d)).xyywzxxzwzxxzzxw)).s4b6c)).wyywwzwzzwyxwzxx, ((VECTOR(int64_t, 16))((-1L)))))).even, ((VECTOR(int64_t, 8))(6L)), ((VECTOR(int64_t, 8))(7L))))), ((VECTOR(int64_t, 8))(4L))))).s1360452762302560, ((VECTOR(int64_t, 16))((-2L))), ((VECTOR(int64_t, 16))(0x61845A864758280EL))))).sa & l_600.s2);
            }
            (*p_1203->g_109) = &l_516[3][0];
        }
    }
    return (*p_1203->g_612);
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_129 p_1203->g_277 p_1203->g_288 p_1203->g_291 p_1203->g_291.f0 p_1203->g_90 p_1203->g_292 p_1203->g_157 p_1203->g_295 p_1203->g_300 p_1203->g_301 p_1203->g_254 p_1203->g_255 p_1203->g_110 p_1203->g_4 p_1203->g_323 p_1203->g_325 p_1203->g_206 p_1203->g_340 p_1203->g_286 p_1203->g_109 p_1203->g_344 p_1203->g_345 p_1203->g_347 p_1203->g_354 p_1203->g_356 p_1203->g_357 p_1203->g_358 p_1203->g_372 p_1203->g_373 p_1203->g_73 p_1203->g_374 p_1203->g_375 permutations p_1203->g_130 p_1203->g_87 p_1203->g_347.f0 p_1203->g_465 p_1203->g_467 p_1203->g_86 p_1203->g_468 p_1203->g_339 p_1203->g_472 p_1203->g_473 p_1203->g_489 p_1203->g_490 p_1203->g_183 p_1203->g_184 p_1203->g_248
 * writes: p_1203->g_130 p_1203->g_278 p_1203->g_288 p_1203->g_157 p_1203->g_249 p_1203->g_301 p_1203->g_86 p_1203->g_339 p_1203->g_373 p_1203->g_16 p_1203->g_347.f2 p_1203->g_291.f1 p_1203->g_347.f0
 */
union U0  func_95(uint32_t  p_96, uint32_t  p_97, int64_t  p_98, int32_t  p_99, uint64_t  p_100, struct S2 * p_1203)
{ /* block id: 102 */
    int32_t *l_273[2];
    int16_t l_285[7] = {1L,1L,1L,1L,1L,1L,1L};
    uint16_t *l_303 = (void*)0;
    uint8_t *l_307 = (void*)0;
    VECTOR(uint8_t, 4) l_343 = (VECTOR(uint8_t, 4))(0x62L, (VECTOR(uint8_t, 2))(0x62L, 0x86L), 0x86L);
    VECTOR(int32_t, 2) l_346 = (VECTOR(int32_t, 2))((-6L), 0x37AA8946L);
    VECTOR(uint32_t, 2) l_355 = (VECTOR(uint32_t, 2))(4294967288UL, 0x08F0BCDDL);
    int64_t l_378 = 0x608B3ED97059E187L;
    uint32_t l_383 = 4294967293UL;
    union U0 **l_386 = &p_1203->g_254;
    VECTOR(int32_t, 2) l_461 = (VECTOR(int32_t, 2))(0x0538B28CL, 0x54CD4F6DL);
    VECTOR(int8_t, 8) l_470 = (VECTOR(int8_t, 8))(0x10L, (VECTOR(int8_t, 4))(0x10L, (VECTOR(int8_t, 2))(0x10L, 0x73L), 0x73L), 0x73L, 0x10L, 0x73L);
    VECTOR(int8_t, 8) l_471 = (VECTOR(int8_t, 8))(0x57L, (VECTOR(int8_t, 4))(0x57L, (VECTOR(int8_t, 2))(0x57L, (-1L)), (-1L)), (-1L), 0x57L, (-1L));
    uint16_t l_494 = 1UL;
    int i;
    for (i = 0; i < 2; i++)
        l_273[i] = &p_1203->g_130;
    (*p_1203->g_129) = 0L;
    for (p_97 = 14; (p_97 == 16); p_97 = safe_add_func_uint16_t_u_u(p_97, 6))
    { /* block id: 106 */
        int8_t l_279 = 3L;
        int32_t l_280 = 0L;
        int32_t l_281 = (-8L);
        int32_t l_282 = 0L;
        int32_t l_283 = 1L;
        int32_t l_284[5][10] = {{0L,0L,0x24BC1E70L,0L,0L,0L,0L,0x24BC1E70L,0L,0L},{0L,0L,0x24BC1E70L,0L,0L,0L,0L,0x24BC1E70L,0L,0L},{0L,0L,0x24BC1E70L,0L,0L,0L,0L,0x24BC1E70L,0L,0L},{0L,0L,0x24BC1E70L,0L,0L,0L,0L,0x24BC1E70L,0L,0L},{0L,0L,0x24BC1E70L,0L,0L,0L,0L,0x24BC1E70L,0L,0L}};
        uint32_t l_320[8][3] = {{0x16B5B5F0L,0x50EB9A2FL,0x16B5B5F0L},{0x16B5B5F0L,0x50EB9A2FL,0x16B5B5F0L},{0x16B5B5F0L,0x50EB9A2FL,0x16B5B5F0L},{0x16B5B5F0L,0x50EB9A2FL,0x16B5B5F0L},{0x16B5B5F0L,0x50EB9A2FL,0x16B5B5F0L},{0x16B5B5F0L,0x50EB9A2FL,0x16B5B5F0L},{0x16B5B5F0L,0x50EB9A2FL,0x16B5B5F0L},{0x16B5B5F0L,0x50EB9A2FL,0x16B5B5F0L}};
        union U0 ***l_350[10] = {&p_1203->g_339,&p_1203->g_339,&p_1203->g_339,&p_1203->g_339,&p_1203->g_339,&p_1203->g_339,&p_1203->g_339,&p_1203->g_339,&p_1203->g_339,&p_1203->g_339};
        uint16_t *l_377 = (void*)0;
        int i, j;
        (*p_1203->g_277) = &p_1203->g_240;
        p_1203->g_288--;
        if (((p_1203->g_291[0] , (p_1203->g_291[0].f0 & ((p_100 ^ p_1203->g_90.s6) & 0x0BL))) , ((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_1203->g_292.xzzwwwwyyyxwxxxw)).s2788)), 9L, (-10L), 0x29A02948L)).s2))
        { /* block id: 109 */
            uint32_t l_298[3][7] = {{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}};
            VECTOR(int8_t, 16) l_306 = (VECTOR(int8_t, 16))(0x6FL, (VECTOR(int8_t, 4))(0x6FL, (VECTOR(int8_t, 2))(0x6FL, 0L), 0L), 0L, 0x6FL, 0L, (VECTOR(int8_t, 2))(0x6FL, 0L), (VECTOR(int8_t, 2))(0x6FL, 0L), 0x6FL, 0L, 0x6FL, 0L);
            int32_t l_318 = 0x10358382L;
            VECTOR(int32_t, 4) l_324 = (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x0D5C5E34L), 0x0D5C5E34L);
            union U0 **l_336 = &p_1203->g_254;
            union U0 ***l_337 = (void*)0;
            union U0 ***l_338[1][2];
            VECTOR(uint32_t, 16) l_353 = (VECTOR(uint32_t, 16))(0xEE872010L, (VECTOR(uint32_t, 4))(0xEE872010L, (VECTOR(uint32_t, 2))(0xEE872010L, 0xBC29BCD7L), 0xBC29BCD7L), 0xBC29BCD7L, 0xEE872010L, 0xBC29BCD7L, (VECTOR(uint32_t, 2))(0xEE872010L, 0xBC29BCD7L), (VECTOR(uint32_t, 2))(0xEE872010L, 0xBC29BCD7L), 0xEE872010L, 0xBC29BCD7L, 0xEE872010L, 0xBC29BCD7L);
            int64_t *l_370[5][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
            VECTOR(int64_t, 16) l_371 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x150038A56F931EA7L), 0x150038A56F931EA7L), 0x150038A56F931EA7L, (-1L), 0x150038A56F931EA7L, (VECTOR(int64_t, 2))((-1L), 0x150038A56F931EA7L), (VECTOR(int64_t, 2))((-1L), 0x150038A56F931EA7L), (-1L), 0x150038A56F931EA7L, (-1L), 0x150038A56F931EA7L);
            union U1 ***l_376[10][10][2] = {{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}},{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}},{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}},{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}},{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}},{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}},{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}},{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}},{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}},{{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]},{&p_1203->g_373[6],&p_1203->g_373[6]}}};
            uint32_t *l_379 = (void*)0;
            uint32_t *l_380 = &p_1203->g_249;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_338[i][j] = (void*)0;
            }
            for (p_1203->g_157 = 0; (p_1203->g_157 >= (-16)); p_1203->g_157 = safe_sub_func_int16_t_s_s(p_1203->g_157, 9))
            { /* block id: 112 */
                uint32_t l_314 = 0x78251189L;
                uint8_t **l_315 = &l_307;
                uint8_t *l_317 = &p_1203->g_288;
                uint8_t **l_316 = &l_317;
                int32_t l_319 = 0L;
                if (((VECTOR(int32_t, 8))((-3L), 0x117DFAC4L, (-6L), 0x727DD6BAL, 0x3BF1B695L, 1L, 0x7C23AF04L, 0x51810598L)).s0)
                { /* block id: 113 */
                    uint16_t *l_296 = (void*)0;
                    uint16_t *l_297[3][6][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                    uint32_t *l_299 = &p_1203->g_249;
                    uint16_t **l_302 = &p_1203->g_301[0];
                    int i, j, k;
                    (*p_1203->g_129) = (((*l_299) = (0x06CBL >= (l_298[0][3] = ((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 16))(p_1203->g_295.xwyxywyzwwwzxwzy)).s1099))).x))) | ((p_1203->g_292.w == ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(p_1203->g_300.xyxy)).ywwzzwyw)).s6) && ((((*l_302) = p_1203->g_301[0]) == l_303) && 0x39L)));
                    return (*p_1203->g_254);
                }
                else
                { /* block id: 119 */
                    if ((*p_1203->g_110))
                        break;
                }
                l_319 |= ((safe_add_func_int8_t_s_s((p_1203->g_86.s6 = ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(0x60L, ((VECTOR(int8_t, 2))(l_306.sde)), (-1L))).hi)).yxxyxxxx)).s6), ((((void*)0 == l_307) , (*p_1203->g_254)) , (safe_add_func_uint8_t_u_u((l_318 = (safe_add_func_int64_t_s_s((((safe_sub_func_uint16_t_u_u(l_314, l_280)) , (&p_1203->g_184[1] == ((*l_316) = ((*l_315) = l_307)))) | 0x3BBFL), p_98))), l_298[2][1]))))) == 0xEA6689E2L);
                return (*p_1203->g_254);
            }
            l_320[3][2]--;
            l_284[2][8] &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x63D07BD2L, (-7L))), ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_1203->g_323.wy)))).yyyxxxxyxxyyyxxy, ((VECTOR(int32_t, 2))(l_324.wy)).yyxxyyyyyxyyxxxy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x7F69825BL, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(p_1203->g_325.s54202233))))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 16))(1L, (l_324.w = (safe_add_func_int8_t_s_s((((((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(0, 1), (safe_sub_func_int32_t_s_s(p_99, ((safe_sub_func_int32_t_s_s(p_97, (((p_1203->g_206.y >= (safe_rshift_func_uint16_t_u_u(((((((void*)0 == l_303) != ((p_1203->g_339 = l_336) != (void*)0)) >= ((0x666E2AC3L < (p_1203->g_340 , p_96)) || l_282)) || p_97) , 0x6334L), l_324.z))) , p_97) > l_320[3][2]))) || 0x7DL))))) & 0xBDE48C72L) && l_298[0][3]) & p_96) != 0x6BL), p_1203->g_286[1]))), 0x0B2D8139L, 0x753882F0L, ((VECTOR(int32_t, 4))(0x73AA0375L)), ((VECTOR(int32_t, 4))(6L)), ((VECTOR(int32_t, 4))(0x68F8921AL)))), ((VECTOR(int32_t, 16))(1L))))).s5700)), p_97, 0x2A8C055AL, 0x4E3A1D83L)).hi)).s56, ((VECTOR(int32_t, 2))((-3L)))))).xxyxxyxxxyyxxxxx, ((VECTOR(int32_t, 16))((-6L))), ((VECTOR(int32_t, 16))(0x6EE9DBB4L))))).hi, ((VECTOR(int32_t, 8))(1L))))))).s1664762356706704))).hi, ((VECTOR(int32_t, 8))((-1L)))))).s4, 0x47ADD73AL, ((VECTOR(int32_t, 8))(0x0AC3C9E9L)), (**p_1203->g_109), ((VECTOR(int32_t, 2))(8L)), 1L)).sa;
            l_284[2][0] = ((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(255UL, ((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(l_343.yyzwxyzy)).lo, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(p_1203->g_344.s0167)).hi)).yyyy))), ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 4))(p_1203->g_345.s1233)).hi, ((VECTOR(uint8_t, 8))(0x9DL, ((VECTOR(uint8_t, 2))(0x2DL, 0x94L)), (((*p_1203->g_129) = ((VECTOR(int32_t, 16))(l_346.xxxxyxyyxxxxxxyx)).s8) || ((*l_380) = (p_1203->g_347 , (safe_lshift_func_uint16_t_u_s(((&l_336 != (l_350[2] = &p_1203->g_339)) | (safe_div_func_int16_t_s_s(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))((((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 8))(1UL, ((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(l_353.s68d8a23077f3e175)))).s49)).yxxx, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_1203->g_354.s03)).yyxx)), ((VECTOR(uint32_t, 2))(l_355.xx)).xyyy, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(p_1203->g_356.zw)), 0UL, ((VECTOR(uint32_t, 4))(l_320[1][0], 0xBEFAA970L, 0x095F51F6L, 4294967287UL)), 0x339022BDL)).odd))), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(4294967291UL, ((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_1203->g_357.zyzzywyz)).s32)).xxxxyyxyyxxyxxxy)))).se1)).xyxxxxxx, ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(p_1203->g_358.yyyy)).zwyyxzwy, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0x2D56263BL, (safe_add_func_uint16_t_u_u(((safe_unary_minus_func_uint16_t_u((p_98 & ((((((safe_lshift_func_int8_t_s_u(((((((safe_sub_func_uint64_t_u_u(((FAKE_DIVERGE(p_1203->global_2_offset, get_global_id(2), 10) & (safe_rshift_func_int16_t_s_u((((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 16))((l_280 = (-1L)), (-5L), 0L, (-2L), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_371.sd3f9)).wwwzzxyx)), l_353.s6, 0x3FC6BC9F32A5538DL, 0L, 0x08011AAD2C1BF2CFL)).sc2f8, ((VECTOR(int64_t, 8))(7L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_1203->g_372.wx)), (-1L), (-9L))), (&p_1203->g_278[3][3] != (p_1203->g_373[0] = p_1203->g_373[6])), 0x5BE57BE993A4DE9CL, 0x234D16CBC2643333L)).even))).z != 0UL), p_96))) >= 0x63E0L), p_1203->g_73.x)) <= p_97) , p_96) , p_1203->g_301[0]) != l_377) >= l_282), 0)) , FAKE_DIVERGE(p_1203->local_1_offset, get_local_id(1), 10)) & p_96) >= p_100) | l_284[2][8]) < p_1203->g_325.s2)))) || p_97), l_378)), (**p_1203->g_109), 0x6A12D110L, ((VECTOR(int32_t, 2))(2L)), 0x753EB783L, 0x7B160955L)))).odd, ((VECTOR(int32_t, 4))(0x56A1995EL))))).wyyzyyzy))).even, ((VECTOR(int32_t, 4))(0x68D4EE9BL))))).wwyzxxxw, ((VECTOR(int32_t, 8))(0x6DD702B0L))))).even, (int32_t)0x09DBB7E0L, (int32_t)l_281))).hi))), 7UL, GROUP_DIVERGE(2, 1), 8UL, 0UL, 1UL)).s62)).xxyyxxyyyxxyyxxy)).sc638))).wwzwzxzz)).hi))), 4294967295UL, 0UL, 0xC4621246L)).s3764105632323767, ((VECTOR(uint32_t, 16))(0xF29672C5L))))).s7350))), ((VECTOR(uint32_t, 4))(1UL))))).w < (*p_1203->g_110)), ((VECTOR(int16_t, 2))(0x6560L)), p_98, 0x1935L, 0x03B9L, ((VECTOR(int16_t, 2))(0x7427L)), 0x5727L, 0x4B6BL, 0x2371L, 0x49C7L, ((VECTOR(int16_t, 4))(0x766BL)))).odd)).s66)).yyxxxyyy)).s2500720404427172, ((VECTOR(int16_t, 16))(0x251DL))))).s2, p_99))), l_371.s6))))), FAKE_DIVERGE(p_1203->local_0_offset, get_local_id(0), 10), ((VECTOR(uint8_t, 2))(0UL)), 0x39L)).s37))).xyyyyxxx, ((VECTOR(uint8_t, 8))(247UL))))), p_96, 0xC3L, 0x0BL)).s3, 4)) || p_97);
        }
        else
        { /* block id: 139 */
            for (p_99 = 22; (p_99 == (-21)); p_99 = safe_sub_func_int64_t_s_s(p_99, 9))
            { /* block id: 142 */
                uint64_t *l_384[7][10][3] = {{{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]}},{{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]}},{{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]}},{{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]}},{{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]}},{{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]}},{{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]},{(void*)0,&p_1203->g_16[2][0],&p_1203->g_16[0][0]}}};
                union U0 **l_385 = &p_1203->g_254;
                int i, j, k;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1203->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 18)), permutations[(safe_mod_func_uint32_t_u_u(((p_1203->g_16[2][7] = l_383) >= ((*p_1203->g_374) , (l_385 == l_386))), 10))][(safe_mod_func_uint32_t_u_u(p_1203->tid, 18))]));
                l_283 = (l_279 , permutations[(safe_mod_func_uint32_t_u_u(((p_1203->g_16[2][7] = l_383) >= ((*p_1203->g_374) , (l_385 == l_386))), 10))][(safe_mod_func_uint32_t_u_u(p_1203->tid, 18))]);
            }
            (*p_1203->g_129) = (*p_1203->g_129);
            (*p_1203->g_129) ^= (safe_lshift_func_int8_t_s_s((l_386 == (void*)0), 2));
            if ((atomic_inc(&p_1203->g_atomic_input[96 * get_linear_group_id() + 36]) == 8))
            { /* block id: 152 */
                int32_t l_389 = 0x5ED776CBL;
                int32_t l_390 = 0x1C873195L;
                VECTOR(int32_t, 2) l_391 = (VECTOR(int32_t, 2))(0x5008B602L, 0x31D66AEBL);
                int32_t l_392 = 0x376D7BFDL;
                int32_t l_393 = 0x225369AEL;
                VECTOR(int32_t, 2) l_394 = (VECTOR(int32_t, 2))(0x247F7E1DL, 0x30526991L);
                VECTOR(int32_t, 8) l_395 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0L), 0L), 0L, 6L, 0L);
                uint32_t l_428 = 0xADB915AEL;
                int i;
                if (((VECTOR(int32_t, 16))(0L, 0x22FF9E69L, l_389, ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))((-3L), (l_393 = (l_390 , (l_392 = ((VECTOR(int32_t, 16))(l_391.yxxyxyyyyxxyxyyx)).sb))), 0x564E6790L, 0x63EA0B92L)))).zwxwxzxwwyxyxyzz)).odd, ((VECTOR(int32_t, 8))(l_394.xyxxyxyy))))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_395.s31770010)).s23)), 4L, 0x503B1076L, (-2L))).s7)
                { /* block id: 155 */
                    int32_t l_396[5][1];
                    int32_t l_397 = 0L;
                    uint16_t l_398 = 0x4008L;
                    int32_t l_401 = 0x4ED2F058L;
                    int16_t l_402 = (-1L);
                    int16_t l_403[8] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
                    int64_t l_404 = 0x59B5FCBE46A5720FL;
                    int32_t l_405 = 1L;
                    uint8_t l_406 = 0x1AL;
                    int32_t l_410 = 0x1F6EF841L;
                    int32_t *l_409 = &l_410;
                    int32_t *l_411 = &l_410;
                    int i, j;
                    for (i = 0; i < 5; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_396[i][j] = (-2L);
                    }
                    ++l_398;
                    ++l_406;
                    l_411 = l_409;
                }
                else
                { /* block id: 159 */
                    int32_t l_412[10][8][3] = {{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}},{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}},{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}},{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}},{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}},{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}},{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}},{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}},{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}},{{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L},{(-1L),0x0FC2AB59L,0x77FE7724L}}};
                    VECTOR(uint32_t, 16) l_413 = (VECTOR(uint32_t, 16))(0x08275E14L, (VECTOR(uint32_t, 4))(0x08275E14L, (VECTOR(uint32_t, 2))(0x08275E14L, 4294967292UL), 4294967292UL), 4294967292UL, 0x08275E14L, 4294967292UL, (VECTOR(uint32_t, 2))(0x08275E14L, 4294967292UL), (VECTOR(uint32_t, 2))(0x08275E14L, 4294967292UL), 0x08275E14L, 4294967292UL, 0x08275E14L, 4294967292UL);
                    VECTOR(int32_t, 8) l_414 = (VECTOR(int32_t, 8))(0x142E51CAL, (VECTOR(int32_t, 4))(0x142E51CAL, (VECTOR(int32_t, 2))(0x142E51CAL, 0x27EC570AL), 0x27EC570AL), 0x27EC570AL, 0x142E51CAL, 0x27EC570AL);
                    uint32_t l_415 = 0xBB91D3C0L;
                    uint8_t l_416 = 250UL;
                    uint64_t l_417 = 18446744073709551608UL;
                    uint64_t *l_419 = &l_417;
                    uint64_t **l_418 = &l_419;
                    uint64_t **l_420 = &l_419;
                    int16_t l_421 = 0x6881L;
                    int i, j, k;
                    l_413.sd ^= l_412[6][7][2];
                    l_420 = (((VECTOR(int32_t, 4))(l_414.s4043)).y , (((l_415 , GROUP_DIVERGE(0, 1)) , (l_416 , (l_417 , (-1L)))) , l_418));
                    if (l_421)
                    { /* block id: 162 */
                        int16_t l_422 = 7L;
                        int32_t l_424 = 1L;
                        int32_t *l_423 = &l_424;
                        int32_t *l_425 = &l_424;
                        l_414.s0 = l_422;
                        l_425 = l_423;
                    }
                    else
                    { /* block id: 165 */
                        int64_t l_426 = 0x26E39DECAFDB8722L;
                        VECTOR(int32_t, 8) l_427 = (VECTOR(int32_t, 8))(0x3AD595A1L, (VECTOR(int32_t, 4))(0x3AD595A1L, (VECTOR(int32_t, 2))(0x3AD595A1L, 5L), 5L), 5L, 0x3AD595A1L, 5L);
                        int i;
                        l_394.y = l_426;
                        l_412[0][0][0] = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_427.s23712350)))).s1;
                    }
                    l_412[9][4][2] = (l_395.s5 ^= 4L);
                }
                l_428--;
                unsigned int result = 0;
                result += l_389;
                result += l_390;
                result += l_391.y;
                result += l_391.x;
                result += l_392;
                result += l_393;
                result += l_394.y;
                result += l_394.x;
                result += l_395.s7;
                result += l_395.s6;
                result += l_395.s5;
                result += l_395.s4;
                result += l_395.s3;
                result += l_395.s2;
                result += l_395.s1;
                result += l_395.s0;
                result += l_428;
                atomic_add(&p_1203->g_special_values[96 * get_linear_group_id() + 36], result);
            }
            else
            { /* block id: 173 */
                (1 + 1);
            }
        }
        if ((atomic_inc(&p_1203->g_atomic_input[96 * get_linear_group_id() + 23]) == 1))
        { /* block id: 178 */
            VECTOR(int32_t, 4) l_431 = (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x0CD79463L), 0x0CD79463L);
            int32_t l_432 = 0x1DDF6788L;
            int i;
            l_432 = ((VECTOR(int32_t, 16))(l_431.zyzywyxzxxxwzwzx)).se;
            unsigned int result = 0;
            result += l_431.w;
            result += l_431.z;
            result += l_431.y;
            result += l_431.x;
            result += l_432;
            atomic_add(&p_1203->g_special_values[96 * get_linear_group_id() + 23], result);
        }
        else
        { /* block id: 180 */
            (1 + 1);
        }
    }
    for (p_96 = (-25); (p_96 == 8); ++p_96)
    { /* block id: 186 */
        uint32_t l_453 = 0xD233320AL;
        int32_t l_454[1][8] = {{0x70D1E644L,0x70D1E644L,0x70D1E644L,0x70D1E644L,0x70D1E644L,0x70D1E644L,0x70D1E644L,0x70D1E644L}};
        int i, j;
        for (p_1203->g_157 = 24; (p_1203->g_157 == 28); p_1203->g_157 = safe_add_func_uint16_t_u_u(p_1203->g_157, 3))
        { /* block id: 189 */
            int8_t *l_439 = &p_1203->g_157;
            int8_t **l_438 = &l_439;
            int8_t ***l_437 = &l_438;
            (*l_437) = (void*)0;
        }
        if ((*p_1203->g_110))
            continue;
        for (p_1203->g_347.f2 = 0; (p_1203->g_347.f2 > 37); p_1203->g_347.f2++)
        { /* block id: 195 */
            VECTOR(uint32_t, 4) l_458 = (VECTOR(uint32_t, 4))(0x7DD806E8L, (VECTOR(uint32_t, 2))(0x7DD806E8L, 1UL), 1UL);
            int i;
            for (p_97 = (-26); (p_97 > 24); p_97 = safe_add_func_int8_t_s_s(p_97, 4))
            { /* block id: 198 */
                int32_t l_444 = (-10L);
                uint16_t *l_445 = (void*)0;
                uint16_t *l_446 = (void*)0;
                uint16_t *l_447 = (void*)0;
                uint16_t *l_448 = (void*)0;
                uint16_t *l_449 = (void*)0;
                uint16_t *l_450 = (void*)0;
                uint16_t *l_451 = (void*)0;
                uint16_t *l_452[1][4] = {{(void*)0,(void*)0,(void*)0,(void*)0}};
                int32_t l_455 = 0x31845A34L;
                VECTOR(int64_t, 2) l_456 = (VECTOR(int64_t, 2))(0x35776B8F9CE3203EL, 0L);
                VECTOR(int64_t, 16) l_457 = (VECTOR(int64_t, 16))(2L, (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 0x08B0E00B5322B0EFL), 0x08B0E00B5322B0EFL), 0x08B0E00B5322B0EFL, 2L, 0x08B0E00B5322B0EFL, (VECTOR(int64_t, 2))(2L, 0x08B0E00B5322B0EFL), (VECTOR(int64_t, 2))(2L, 0x08B0E00B5322B0EFL), 2L, 0x08B0E00B5322B0EFL, 2L, 0x08B0E00B5322B0EFL);
                int i, j;
                if (l_444)
                    break;
                p_1203->g_291[0].f1 = ((*p_1203->g_129) = ((FAKE_DIVERGE(p_1203->local_0_offset, get_local_id(0), 10) > ((((VECTOR(int64_t, 8))((-6L), (-4L), ((VECTOR(int64_t, 2))((-8L), 0x71A75EB24C5A01E5L)), 0x7A117FF4FCCE8B3CL, ((VECTOR(int64_t, 2))((-1L), 1L)), (-7L))).s5 || (p_99 <= ((l_453 |= (l_444 = GROUP_DIVERGE(1, 1))) >= ((l_454[0][6] , (0x3EB7CF0EF51B813DL >= l_455)) > ((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 16))(l_456.xxxyxxyxxxxyxyxx)).scc, ((VECTOR(int64_t, 4))(l_454[0][6], ((VECTOR(int64_t, 2))(0L, 1L)), 0x15A7F01DB3673DBDL)).even, ((VECTOR(int64_t, 4))(l_457.seb69)).even))).hi)))) < ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_458.zxxx)).xxxwzwyz)).s5)) != ((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_461.xxxxxxxy)).even)), (-1L), 0x1AC17E1CL, ((p_96 , ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(0x4B3BBD7DL, l_458.w, (-1L), 0x5F43C4D0L)).even, ((VECTOR(int32_t, 2))(0x3ED059D5L, 0x7B9C51EFL)), ((VECTOR(int32_t, 2))(0x3CA76220L, 0L))))), ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 16))(p_1203->g_462.s6177462320264674)).s95)))))), 0x2083DC50L, 0x713057B1L)).y) && 0xFA3B8FBCL), ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 16))(1L, (-4L), 0L, 0x4506L, ((VECTOR(int16_t, 8))(1L)), p_1203->g_83.x, (-7L), 1L, 0x35EBL)).hi, ((VECTOR(int16_t, 8))(0x788AL))))), ((VECTOR(uint16_t, 8))(0x0B00L))))).s5166076512472173)).sa3, (int32_t)p_99))).xyxxxxxx, ((VECTOR(int32_t, 8))(0L))))), 0x46247691L)).sc, FAKE_DIVERGE(p_1203->group_0_offset, get_group_id(0), 10))) & p_1203->g_87.x)));
            }
        }
    }
    for (p_1203->g_347.f0 = 15; (p_1203->g_347.f0 >= (-3)); --p_1203->g_347.f0)
    { /* block id: 209 */
        VECTOR(int8_t, 16) l_466 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2DL), 0x2DL), 0x2DL, 1L, 0x2DL, (VECTOR(int8_t, 2))(1L, 0x2DL), (VECTOR(int8_t, 2))(1L, 0x2DL), 1L, 0x2DL, 1L, 0x2DL);
        VECTOR(int8_t, 4) l_469 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x58L), 0x58L);
        VECTOR(int8_t, 2) l_474 = (VECTOR(int8_t, 2))(5L, 0x39L);
        VECTOR(int8_t, 4) l_491 = (VECTOR(int8_t, 4))(0x69L, (VECTOR(int8_t, 2))(0x69L, 0x24L), 0x24L);
        int64_t *l_501 = &l_378;
        int32_t l_502 = 0x61C40101L;
        int i;
        l_502 = ((((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(p_1203->g_465.yzwzwyzwzzxwwwzy)).s41, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))(l_466.s160c)).even, ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))(p_1203->g_467.s60)).yxxyxyyyxxyxxyxy))).s08))).yxyyxyyxyyyyxxxx, (int8_t)p_1203->g_86.s4))).s5ce3)).wyxxzyxy)), ((VECTOR(int8_t, 2))(0x59L, 0x1BL)), 8L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(5L, 0x03L)))), ((VECTOR(int8_t, 2))(p_1203->g_468.s63)), 0x61L)).s4a, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))((l_466.sa < (-2L)), 0x75L, 1L, ((void*)0 == (*p_1203->g_339)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 8))(l_469.zwzyyyyz)).s1350055436776566, ((VECTOR(int8_t, 2))((-5L), 0x0DL)).yyxyxyxyyyxxxyyy))).hi)).s35)), (-8L), 0x2AL)).even)).odd))), ((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 4))(l_470.s7156)).wwzwwzxwxwywxxzx, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_471.s45606544)))).odd))).xxwzxyzzxwzyzzxz))))).sab))), ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 8))(p_1203->g_472.s17265427)).s6742347442276534, ((VECTOR(int8_t, 2))((-4L), 0L)).yxyxyxyyxxxyxxxx, ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 16))(p_1203->g_473.xxxyxxxyyyyyxyyy)), ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(l_474.xxyyyxyx)).s14, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))((-2L), (-8L)))))))), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 4))((-8L), (safe_div_func_int32_t_s_s((safe_rshift_func_int16_t_s_u((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_1203->local_0_offset, get_local_id(0), 10), (((safe_add_func_int64_t_s_s(((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((((safe_sub_func_int8_t_s_s(l_469.w, ((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(p_1203->g_489.sd1)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_1203->g_490.zxyw)), 1L, 0L, (-6L), ((VECTOR(int8_t, 8))(l_491.zxwyyyxz)), 0x0BL)).se3, ((VECTOR(int8_t, 2))(1L, (-1L)))))).xxxyyyyyxxyyyxyy)))), ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))((safe_div_func_int32_t_s_s((((((l_494 >= ((*l_501) = (safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))((-5L), 1L)).yxyxxxxxxxxxxyxx)).s6, l_469.w)) | 0xB02B9E3028101054L) <= l_466.s8), p_100)), p_1203->g_86.s7)))) <= p_98) != l_466.sd) >= 1UL) , (**p_1203->g_109)), p_1203->g_183)), 0x36L, 0L, 0x42L, p_99, 0x25L, 0x55L, 6L, p_1203->g_344.s7, p_100, p_98, ((VECTOR(int8_t, 4))(2L)), 0x23L)))).sb620)), ((VECTOR(int8_t, 4))((-1L))))).lo, ((VECTOR(int8_t, 4))(0x4CL))))).wxxwwxzywyyzzxyy))).sa)) == 255UL) | 0UL), 4)), p_1203->g_184[1])) <= (-1L)), p_97)) , (*p_1203->g_110)) ^ (**p_1203->g_109)))), p_100)), p_1203->g_467.s6)), 0x1EL, (-1L))).xwzzxzwx, (int8_t)p_1203->g_248, (int8_t)p_1203->g_473.y))).s5005436724316247)).sf1, ((VECTOR(int8_t, 2))(0x72L)), ((VECTOR(int8_t, 2))((-1L)))))).xxxyxyyxxxyyxyxy)).sef84)).xwyywzyy)).s17))).xxyy))).zyxwxzzyxzwxywyz, ((VECTOR(int8_t, 16))((-4L))))))))).s76))).odd != 1UL) , l_474.x);
        l_502 ^= 0x013F9644L;
        if ((*p_1203->g_110))
            continue;
    }
    return (**l_386);
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_73 p_1203->g_110 p_1203->g_16 p_1203->g_127 p_1203->g_128 p_1203->g_87 p_1203->g_129 p_1203->g_4 p_1203->g_80 p_1203->g_2 p_1203->g_109 p_1203->g_184 p_1203->g_204 p_1203->g_205 p_1203->g_206 p_1203->g_209 p_1203->g_210 p_1203->g_211 p_1203->g_130 p_1203->g_90 p_1203->g_219 p_1203->g_228 p_1203->g_232 p_1203->l_comm_values p_1203->g_240 p_1203->g_249 p_1203->g_254 p_1203->g_83 p_1203->g_255.f0
 * writes: p_1203->g_127 p_1203->g_130 p_1203->g_157 p_1203->g_110 p_1203->g_184 p_1203->g_109 p_1203->g_16 p_1203->g_63 p_1203->g_249 p_1203->g_254
 */
uint32_t  func_103(int32_t ** p_104, uint64_t  p_105, int64_t * p_106, int64_t  p_107, int8_t * p_108, struct S2 * p_1203)
{ /* block id: 33 */
    VECTOR(int32_t, 16) l_112 = (VECTOR(int32_t, 16))(0x45806793L, (VECTOR(int32_t, 4))(0x45806793L, (VECTOR(int32_t, 2))(0x45806793L, 8L), 8L), 8L, 0x45806793L, 8L, (VECTOR(int32_t, 2))(0x45806793L, 8L), (VECTOR(int32_t, 2))(0x45806793L, 8L), 0x45806793L, 8L, 0x45806793L, 8L);
    int8_t *l_115[1];
    VECTOR(int32_t, 2) l_120 = (VECTOR(int32_t, 2))(5L, (-6L));
    int32_t *l_124 = (void*)0;
    int32_t **l_125 = &l_124;
    int16_t *l_126 = &p_1203->g_127[0];
    VECTOR(uint32_t, 4) l_198 = (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 4294967290UL), 4294967290UL);
    uint8_t l_214 = 0x52L;
    VECTOR(uint32_t, 2) l_221 = (VECTOR(uint32_t, 2))(4294967295UL, 1UL);
    VECTOR(int8_t, 4) l_236 = (VECTOR(int8_t, 4))(0x43L, (VECTOR(int8_t, 2))(0x43L, 0x19L), 0x19L);
    VECTOR(int8_t, 2) l_268 = (VECTOR(int8_t, 2))(1L, 0x67L);
    VECTOR(int8_t, 16) l_269 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x05L), 0x05L), 0x05L, (-1L), 0x05L, (VECTOR(int8_t, 2))((-1L), 0x05L), (VECTOR(int8_t, 2))((-1L), 0x05L), (-1L), 0x05L, (-1L), 0x05L);
    VECTOR(int8_t, 8) l_270 = (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x3AL), 0x3AL), 0x3AL, 6L, 0x3AL);
    union U0 *l_271[6][4] = {{&p_1203->g_255,&p_1203->g_255,(void*)0,&p_1203->g_255},{&p_1203->g_255,&p_1203->g_255,(void*)0,&p_1203->g_255},{&p_1203->g_255,&p_1203->g_255,(void*)0,&p_1203->g_255},{&p_1203->g_255,&p_1203->g_255,(void*)0,&p_1203->g_255},{&p_1203->g_255,&p_1203->g_255,(void*)0,&p_1203->g_255},{&p_1203->g_255,&p_1203->g_255,(void*)0,&p_1203->g_255}};
    int8_t l_272 = 0x13L;
    int i, j;
    for (i = 0; i < 1; i++)
        l_115[i] = (void*)0;
    (*p_1203->g_129) = (((VECTOR(int32_t, 16))(l_112.sd2993284a0dc95fa)).s1 , (((safe_add_func_int32_t_s_s((l_115[0] != ((p_1203->g_73.y , ((((*l_126) ^= (safe_add_func_int16_t_s_s(((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_120.xxyy)).hi)).lo, (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int16_t_s(0x3533L)), l_112.sa)))) , l_120.x), ((*p_104) == ((*l_125) = (p_1203->g_16[2][1] , l_124)))))) && ((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 8))(p_1203->g_128.s36542660)).hi, ((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 4))((p_1203->g_87.z != p_107), p_105, 0xB689L, 0UL)).zwxwzzyx, ((VECTOR(uint16_t, 8))(0x691DL)), ((VECTOR(uint16_t, 8))(0UL))))).odd, ((VECTOR(uint16_t, 4))(65527UL))))).yxzxzywz, ((VECTOR(uint16_t, 8))(0xE953L)), ((VECTOR(uint16_t, 8))(0xDB89L))))).s2) , p_105)) , l_115[0])), GROUP_DIVERGE(0, 1))) != p_1203->g_73.y) || l_112.s8));
    for (p_105 = 18; (p_105 <= 23); p_105++)
    { /* block id: 39 */
        int32_t l_171 = 0x671DAD4EL;
        int32_t l_177 = 0x75C6EA24L;
        int32_t l_181 = (-7L);
        int32_t l_182[7];
        VECTOR(uint8_t, 2) l_226 = (VECTOR(uint8_t, 2))(1UL, 2UL);
        VECTOR(uint8_t, 16) l_233 = (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 5UL), 5UL), 5UL, 4UL, 5UL, (VECTOR(uint8_t, 2))(4UL, 5UL), (VECTOR(uint8_t, 2))(4UL, 5UL), 4UL, 5UL, 4UL, 5UL);
        VECTOR(int8_t, 2) l_234 = (VECTOR(int8_t, 2))(1L, 0x66L);
        VECTOR(int8_t, 4) l_235 = (VECTOR(int8_t, 4))(0x79L, (VECTOR(int8_t, 2))(0x79L, 0x0DL), 0x0DL);
        int i;
        for (i = 0; i < 7; i++)
            l_182[i] = 4L;
        for (p_107 = 27; (p_107 <= 9); p_107 = safe_sub_func_uint16_t_u_u(p_107, 7))
        { /* block id: 42 */
            uint16_t l_172 = 1UL;
            VECTOR(int16_t, 2) l_207 = (VECTOR(int16_t, 2))(1L, 0x6C7AL);
            VECTOR(uint8_t, 16) l_227 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xA0L), 0xA0L), 0xA0L, 1UL, 0xA0L, (VECTOR(uint8_t, 2))(1UL, 0xA0L), (VECTOR(uint8_t, 2))(1UL, 0xA0L), 1UL, 0xA0L, 1UL, 0xA0L);
            VECTOR(uint8_t, 8) l_230 = (VECTOR(uint8_t, 8))(0xA5L, (VECTOR(uint8_t, 4))(0xA5L, (VECTOR(uint8_t, 2))(0xA5L, 0x7BL), 0x7BL), 0x7BL, 0xA5L, 0x7BL);
            int64_t l_239 = 0L;
            int i;
            if ((atomic_inc(&p_1203->l_atomic_input[82]) == 6))
            { /* block id: 44 */
                int32_t l_136 = (-6L);
                int32_t *l_135 = &l_136;
                uint64_t l_137 = 0x79692DFF05BDE445L;
                VECTOR(int32_t, 2) l_140 = (VECTOR(int32_t, 2))(4L, 0L);
                int i;
                l_135 = (void*)0;
                --l_137;
                if (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_140.yxyx)).odd)).odd)
                { /* block id: 47 */
                    int32_t *l_141 = (void*)0;
                    int32_t l_143 = 1L;
                    int32_t *l_142[7][3] = {{&l_143,&l_143,&l_143},{&l_143,&l_143,&l_143},{&l_143,&l_143,&l_143},{&l_143,&l_143,&l_143},{&l_143,&l_143,&l_143},{&l_143,&l_143,&l_143},{&l_143,&l_143,&l_143}};
                    int i, j;
                    l_142[1][2] = l_141;
                }
                else
                { /* block id: 49 */
                    int32_t l_144 = 0x51B1567EL;
                    int32_t *l_154[9] = {&l_144,&l_144,&l_144,&l_144,&l_144,&l_144,&l_144,&l_144,&l_144};
                    int32_t *l_155 = &l_144;
                    int32_t l_156 = 0x69C37587L;
                    int i;
                    for (l_144 = 9; (l_144 == 1); --l_144)
                    { /* block id: 52 */
                        int16_t l_147 = 1L;
                        uint16_t l_148 = 0xCFC5L;
                        VECTOR(int16_t, 2) l_151 = (VECTOR(int16_t, 2))(0x1667L, 5L);
                        uint64_t l_152 = 0xC8E99FE138955F0AL;
                        uint16_t l_153 = 0UL;
                        int i;
                        ++l_148;
                        l_140.x &= (((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_151.xyyyxxxxyyxyyyxx)).s21)).hi , (l_152 , l_153));
                    }
                    l_155 = l_154[2];
                    (*l_155) = l_156;
                }
                unsigned int result = 0;
                result += l_136;
                result += l_137;
                result += l_140.y;
                result += l_140.x;
                atomic_add(&p_1203->l_special_values[82], result);
            }
            else
            { /* block id: 59 */
                (1 + 1);
            }
            (*l_125) = (*p_104);
            if (((**l_125) != p_107))
            { /* block id: 63 */
                int32_t *l_166 = (void*)0;
                uint8_t *l_173 = (void*)0;
                uint8_t *l_174 = (void*)0;
                uint8_t *l_175 = (void*)0;
                uint8_t *l_176[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                VECTOR(int32_t, 2) l_180 = (VECTOR(int32_t, 2))(0L, 0x072A1A33L);
                VECTOR(int16_t, 4) l_208 = (VECTOR(int16_t, 4))(0x4197L, (VECTOR(int16_t, 2))(0x4197L, 0x3E72L), 0x3E72L);
                int32_t l_216 = 5L;
                int i;
                if (((+0x23L) && (l_177 &= ((((1UL > (p_1203->g_157 = ((*l_126) ^= p_1203->g_80.s2))) || (safe_sub_func_uint64_t_u_u(p_1203->g_2, (safe_mul_func_int8_t_s_s(((p_108 = p_108) == (((((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(((l_166 = (void*)0) != ((*p_1203->g_109) = (*p_1203->g_109))), ((~(safe_div_func_uint64_t_u_u(p_1203->g_16[2][1], (safe_lshift_func_int8_t_s_u(l_171, 2))))) , (**l_125)))), GROUP_DIVERGE(2, 1))) <= (**l_125)) , p_1203->g_87.z) > 0x18L) , &p_1203->g_157)), l_172))))) , p_1203->g_80.s4) , 6UL))))
                { /* block id: 70 */
                    int32_t *l_178 = &l_171;
                    int32_t *l_179[7];
                    int16_t *l_197 = &p_1203->g_127[0];
                    int32_t ***l_203[6] = {&p_1203->g_109,&p_1203->g_109,&p_1203->g_109,&p_1203->g_109,&p_1203->g_109,&p_1203->g_109};
                    uint64_t *l_215 = &p_1203->g_16[2][1];
                    VECTOR(uint32_t, 2) l_220 = (VECTOR(uint32_t, 2))(0x5C780974L, 0UL);
                    VECTOR(uint8_t, 4) l_229 = (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 0x17L), 0x17L);
                    VECTOR(uint8_t, 4) l_231 = (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 2UL), 2UL);
                    int64_t *l_241 = (void*)0;
                    int64_t *l_242 = (void*)0;
                    int64_t *l_243[4][2];
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_179[i] = &l_177;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_243[i][j] = (void*)0;
                    }
                    p_1203->g_184[1]++;
                    l_180.x |= (!((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(0x14DDL, 0x6744L)).yxyy, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((safe_sub_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u((((*l_215) ^= ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(18446744073709551612UL, 0xDEA74B1B2C0F5464L)), ((VECTOR(uint64_t, 4))((5UL & (p_1203->g_128.s1 < ((safe_mod_func_int16_t_s_s(p_107, (safe_mod_func_int8_t_s_s((((((p_1203->g_4 | (l_197 != ((((VECTOR(uint32_t, 2))(l_198.ww)).hi == (safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((p_1203->g_109 = &p_1203->g_110) != (void*)0))), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 16))(5L, ((VECTOR(int16_t, 4))(p_1203->g_204.ywyz)), ((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 16))(p_1203->g_205.yyxyxxxyxyxyxxxx)).lo, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0L, (-1L))))).yxyxxyxy)).s0123210013760331))).s35)).xxyyxyxx))), ((VECTOR(int16_t, 2))(0L, 0x2A8AL)), (-1L))), ((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 8))(0x7D72L, 0L, (-8L), ((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 2))(0x42C0L, 0x3F9BL)).xyxy, ((VECTOR(int16_t, 8))(p_1203->g_206.xzxxyyzx)).odd))), 0x1DD1L)).s4354132012500451, ((VECTOR(int16_t, 4))(0x70FDL, ((VECTOR(int16_t, 2))(l_207.yx)), (-7L))).wzwxwzywyzxwzxyx))).hi, ((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 16))(1L, ((VECTOR(int16_t, 2))(l_208.xy)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(p_1203->g_209.s2bc286e9f2b41890)).s9a)))), ((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 4))(p_1203->g_210.zzzw)), ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),VECTOR(int8_t, 16),((VECTOR(int8_t, 2))((-1L), (-8L))).xyyxyxxyyxyyyxyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 4))(p_1203->g_211.xyyx)).hi, ((VECTOR(int8_t, 8))((safe_sub_func_uint64_t_u_u((p_107 ^ l_171), p_1203->g_204.x)), p_1203->g_87.y, ((VECTOR(int8_t, 2))((-1L))), ((VECTOR(int8_t, 4))((-1L))))).s56))).xyxxxxxy)).hi, ((VECTOR(int8_t, 4))((-1L)))))), p_1203->g_184[1], l_214, 6L, 0x60L)).s3213630000306245, ((VECTOR(int8_t, 16))((-1L)))))).s313e)))))).wwwwxzyz, ((VECTOR(uint8_t, 8))(0x4CL))))), l_181, 0x7D17L, 0x66F3L)).se09b, (int16_t)p_105))).ywwywzyw, ((VECTOR(int16_t, 8))(0x61F8L))))).s7066242651242625, ((VECTOR(int16_t, 16))(1L))))).s20)).hi))) , l_197))) >= FAKE_DIVERGE(p_1203->group_0_offset, get_group_id(0), 10)) , p_1203->g_204.x) , 0xC6L) & p_105), (-2L))))) ^ 0x36B4E743L))), 18446744073709551613UL, 18446744073709551608UL, 0x818EC19C00974A86L)), 6UL, 0x6E0D3A3AF24A4C6BL)).s1) | p_107), l_182[5])) >= p_1203->g_130), (*l_124))) != (*p_1203->g_110)), ((VECTOR(int16_t, 4))(0x6853L)), p_1203->g_90.s5, 0L, 0x00EBL)).s36)).xyyy))).w, l_216)) | (*l_124)));
                    (*l_178) = (safe_mod_func_int64_t_s_s((p_1203->g_63.x = (((((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(uint32_t, 2))(p_1203->g_219.xy)).xxyxyyyyyxxxxxxx, ((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 16))(l_220.yxyxxxyxxyxxxxxx)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 2))((-2L), 0x5969002EL)).xyxy))))), 4294967290UL, 4294967287UL, 6UL, 1UL)).s2505544443614250, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_221.yyxx)).even)), 0x56F44BDAL, 4294967287UL)).yyyzwzyx)).s4404157223400154)))))).s0 , (((safe_add_func_uint8_t_u_u((p_107 , ((safe_mul_func_int8_t_s_s(p_105, ((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_226.yxxyxyyy)).odd)).yyxxwzwwwwxxwyxw, ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(255UL, 0x22L)).xyxxyxxx, ((VECTOR(uint8_t, 4))(l_227.sa7d3)).zzzwxyyx))).odd, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_1203->g_228.s5037)), 0x2CL, ((VECTOR(uint8_t, 2))(l_229.wz)), 0UL)).s05, ((VECTOR(uint8_t, 2))(0xE7L, 0UL))))).xyyy, ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 16))(l_230.s2360017253451647)).s532a, (uint8_t)GROUP_DIVERGE(1, 1))))))).zxwwzyxyxwywxyzw))).sd08d)).yxxwzxyy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(l_231.zzyxwxxyxwxywzyy)).lo)), ((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(p_1203->g_232.s47754331)).s53)), 0x71L, 0x69L)).xzxwzwyyyyzywywy, ((VECTOR(uint8_t, 8))(0x93L, ((VECTOR(uint8_t, 2))(250UL, 0x25L)), (p_1203->g_90.s1 != l_182[1]), ((VECTOR(uint8_t, 2))(l_233.s01)), 0x09L, 252UL)).s1532323052403276))).odd))), ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 16))(l_234.xxxyxxyyxxyxyxyx)).se5, ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(l_235.wywxyyyx)).hi, ((VECTOR(int8_t, 16))(l_236.wxywwwwwxwzyzwwx)).s3f1a))).lo))).yyxyxyyx))).s1)) < (l_230.s6 == GROUP_DIVERGE(0, 1)))), (safe_lshift_func_int8_t_s_s((((((*l_215) |= p_1203->g_204.x) || (p_105 , ((p_107 == (p_1203->g_73.y , l_235.w)) == p_1203->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1203->tid, 18))]))) & l_227.s9) , l_239), 1)))) > GROUP_DIVERGE(1, 1)) , p_1203->g_240)) , p_107) && p_107)), p_1203->g_127[1]));
                    for (l_181 = (-28); (l_181 > 22); ++l_181)
                    { /* block id: 80 */
                        (*p_104) = (*p_1203->g_109);
                        (*p_1203->g_109) = (*p_1203->g_109);
                        return p_1203->g_87.z;
                    }
                }
                else
                { /* block id: 85 */
                    int64_t l_246[8][7][4] = {{{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)}},{{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)}},{{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)}},{{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)}},{{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)}},{{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)}},{{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)}},{{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)},{(-4L),(-1L),0x522EAF47D8385099L,(-6L)}}};
                    int32_t *l_247[4] = {&l_171,&l_171,&l_171,&l_171};
                    int i, j, k;
                    if ((**p_1203->g_109))
                        break;
                    p_1203->g_249++;
                }
            }
            else
            { /* block id: 89 */
                union U0 *l_259 = (void*)0;
                for (l_171 = 0; (l_171 == 17); l_171++)
                { /* block id: 92 */
                    union U0 **l_256 = &p_1203->g_254;
                    union U0 *l_258[8][6] = {{(void*)0,(void*)0,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255},{(void*)0,(void*)0,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255},{(void*)0,(void*)0,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255},{(void*)0,(void*)0,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255},{(void*)0,(void*)0,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255},{(void*)0,(void*)0,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255},{(void*)0,(void*)0,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255},{(void*)0,(void*)0,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255,&p_1203->g_255}};
                    union U0 **l_257[4];
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_257[i] = &l_258[1][2];
                    l_259 = ((*l_256) = p_1203->g_254);
                    if (l_207.x)
                        continue;
                }
            }
        }
    }
    l_120.x ^= ((VECTOR(int32_t, 8))(0x70CDB3F5L, (safe_sub_func_int32_t_s_s((((safe_rshift_func_int16_t_s_u(p_107, 7)) == p_1203->g_87.w) >= ((p_104 != (void*)0) == ((safe_lshift_func_int8_t_s_u(0x1DL, p_105)) , (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(0x79L, 0x7DL, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 4))(l_268.xxyx)), ((VECTOR(int8_t, 16))(l_269.s0adc6ce29c8c1734)).s1dce))).odd)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_270.s61)), (-1L), (l_271[0][2] != l_271[0][2]), p_107, p_1203->g_87.z, (-1L), 0x44L)), l_272, p_1203->g_83.x, 0x4DL, 0x69L)).s8, 6))))), p_1203->g_73.x)), (-1L), 0x65ED7306L, (**p_104), (*p_1203->g_110), 1L, 0x555C724CL)).s1;
    return p_1203->g_255.f0;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[96];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 96; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[96];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 96; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[18];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 18; i++)
            l_comm_values[i] = 1;
    struct S2 c_1204;
    struct S2* p_1203 = &c_1204;
    struct S2 c_1205 = {
        5UL, // p_1203->g_2
        0x10E164CAL, // p_1203->g_3
        (-1L), // p_1203->g_4
        (-1L), // p_1203->g_9
        {{0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L},{0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L},{0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L}}, // p_1203->g_16
        (void*)0, // p_1203->g_26
        (VECTOR(int64_t, 2))(0x632E6BA99949389DL, 0x131A3A4AA3E85184L), // p_1203->g_63
        (VECTOR(uint8_t, 2))(255UL, 0x7EL), // p_1203->g_73
        (VECTOR(uint8_t, 4))(0x61L, (VECTOR(uint8_t, 2))(0x61L, 0xE9L), 0xE9L), // p_1203->g_74
        (VECTOR(uint64_t, 16))(0xE48BA36ED293A851L, (VECTOR(uint64_t, 4))(0xE48BA36ED293A851L, (VECTOR(uint64_t, 2))(0xE48BA36ED293A851L, 9UL), 9UL), 9UL, 0xE48BA36ED293A851L, 9UL, (VECTOR(uint64_t, 2))(0xE48BA36ED293A851L, 9UL), (VECTOR(uint64_t, 2))(0xE48BA36ED293A851L, 9UL), 0xE48BA36ED293A851L, 9UL, 0xE48BA36ED293A851L, 9UL), // p_1203->g_78
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xB55804E0369C31B0L), 0xB55804E0369C31B0L), 0xB55804E0369C31B0L, 1UL, 0xB55804E0369C31B0L), // p_1203->g_79
        (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 1UL), 1UL, 18446744073709551615UL, 1UL), // p_1203->g_80
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int8_t, 2))(1L, (-1L)), (VECTOR(int8_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L)), // p_1203->g_81
        (VECTOR(int8_t, 2))((-1L), 0x79L), // p_1203->g_83
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L)), // p_1203->g_86
        (VECTOR(int8_t, 4))(0x56L, (VECTOR(int8_t, 2))(0x56L, (-2L)), (-2L)), // p_1203->g_87
        (VECTOR(int8_t, 8))(0x1EL, (VECTOR(int8_t, 4))(0x1EL, (VECTOR(int8_t, 2))(0x1EL, 0x78L), 0x78L), 0x78L, 0x1EL, 0x78L), // p_1203->g_90
        &p_1203->g_4, // p_1203->g_110
        &p_1203->g_110, // p_1203->g_109
        {(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_1203->g_127
        (VECTOR(uint16_t, 8))(0x6E6AL, (VECTOR(uint16_t, 4))(0x6E6AL, (VECTOR(uint16_t, 2))(0x6E6AL, 65531UL), 65531UL), 65531UL, 0x6E6AL, 65531UL), // p_1203->g_128
        (-3L), // p_1203->g_130
        &p_1203->g_130, // p_1203->g_129
        0x76L, // p_1203->g_157
        0L, // p_1203->g_183
        {0xB3L,0xB3L}, // p_1203->g_184
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), // p_1203->g_204
        (VECTOR(int16_t, 2))(0x78F6L, 0x75DBL), // p_1203->g_205
        (VECTOR(int16_t, 4))(0x235EL, (VECTOR(int16_t, 2))(0x235EL, (-1L)), (-1L)), // p_1203->g_206
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int16_t, 2))(1L, 1L), (VECTOR(int16_t, 2))(1L, 1L), 1L, 1L, 1L, 1L), // p_1203->g_209
        (VECTOR(int8_t, 4))(0x3BL, (VECTOR(int8_t, 2))(0x3BL, 0x54L), 0x54L), // p_1203->g_210
        (VECTOR(int8_t, 2))(0x78L, 0x7BL), // p_1203->g_211
        (VECTOR(uint32_t, 2))(0UL, 0x6AD61939L), // p_1203->g_219
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL), // p_1203->g_228
        (VECTOR(uint8_t, 8))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0UL), 0UL), 0UL, 249UL, 0UL), // p_1203->g_232
        {1L}, // p_1203->g_240
        6L, // p_1203->g_248
        0xEE94982DL, // p_1203->g_249
        {-9L}, // p_1203->g_255
        &p_1203->g_255, // p_1203->g_254
        (void*)0, // p_1203->g_276
        {{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240},{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240},{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240},{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240},{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240},{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240},{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240},{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240},{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240},{&p_1203->g_240,&p_1203->g_240,&p_1203->g_240,&p_1203->g_240}}, // p_1203->g_278
        &p_1203->g_278[3][3], // p_1203->g_277
        {0L,0L}, // p_1203->g_286
        {1L,1L,1L,1L,1L,1L,1L,1L,1L}, // p_1203->g_287
        250UL, // p_1203->g_288
        {{0x4275890FL}}, // p_1203->g_291
        (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-1L)), (-1L)), // p_1203->g_292
        (VECTOR(uint16_t, 4))(0x8DD6L, (VECTOR(uint16_t, 2))(0x8DD6L, 0xBDD9L), 0xBDD9L), // p_1203->g_295
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 2UL), // p_1203->g_300
        {(void*)0}, // p_1203->g_301
        (VECTOR(int32_t, 4))(0x614CC09BL, (VECTOR(int32_t, 2))(0x614CC09BL, (-2L)), (-2L)), // p_1203->g_323
        (VECTOR(int32_t, 8))(0x77037521L, (VECTOR(int32_t, 4))(0x77037521L, (VECTOR(int32_t, 2))(0x77037521L, 1L), 1L), 1L, 0x77037521L, 1L), // p_1203->g_325
        &p_1203->g_254, // p_1203->g_339
        {0L}, // p_1203->g_340
        (VECTOR(uint8_t, 8))(0x8CL, (VECTOR(uint8_t, 4))(0x8CL, (VECTOR(uint8_t, 2))(0x8CL, 1UL), 1UL), 1UL, 0x8CL, 1UL), // p_1203->g_344
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 247UL), 247UL), 247UL, 0UL, 247UL), // p_1203->g_345
        {-1L}, // p_1203->g_347
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x2BF84802L), 0x2BF84802L), 0x2BF84802L, 0UL, 0x2BF84802L), // p_1203->g_354
        (VECTOR(uint32_t, 4))(0x786BF23BL, (VECTOR(uint32_t, 2))(0x786BF23BL, 0xBF2CEE9AL), 0xBF2CEE9AL), // p_1203->g_356
        (VECTOR(int32_t, 4))(0x5C0B0B84L, (VECTOR(int32_t, 2))(0x5C0B0B84L, (-1L)), (-1L)), // p_1203->g_357
        (VECTOR(int32_t, 2))(0x359DD08DL, (-8L)), // p_1203->g_358
        (VECTOR(int64_t, 4))(0x26FA731D47110B1DL, (VECTOR(int64_t, 2))(0x26FA731D47110B1DL, 0x569C1DC576CB143FL), 0x569C1DC576CB143FL), // p_1203->g_372
        {0x6D69A8D45FD2C66EL}, // p_1203->g_375
        &p_1203->g_375, // p_1203->g_374
        {&p_1203->g_374,(void*)0,&p_1203->g_374,&p_1203->g_374,(void*)0,&p_1203->g_374,&p_1203->g_374,(void*)0,&p_1203->g_374}, // p_1203->g_373
        (VECTOR(int32_t, 8))(0x4593B04BL, (VECTOR(int32_t, 4))(0x4593B04BL, (VECTOR(int32_t, 2))(0x4593B04BL, (-3L)), (-3L)), (-3L), 0x4593B04BL, (-3L)), // p_1203->g_462
        (VECTOR(int8_t, 4))(0x6BL, (VECTOR(int8_t, 2))(0x6BL, 0x2CL), 0x2CL), // p_1203->g_465
        (VECTOR(int8_t, 8))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x29L), 0x29L), 0x29L, 7L, 0x29L), // p_1203->g_467
        (VECTOR(int8_t, 8))(0x47L, (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, (-1L)), (-1L)), (-1L), 0x47L, (-1L)), // p_1203->g_468
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x29L), 0x29L), 0x29L, 1L, 0x29L), // p_1203->g_472
        (VECTOR(int8_t, 2))(0x14L, (-2L)), // p_1203->g_473
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 2L), 2L), 2L, 1L, 2L, (VECTOR(int8_t, 2))(1L, 2L), (VECTOR(int8_t, 2))(1L, 2L), 1L, 2L, 1L, 2L), // p_1203->g_489
        (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x24L), 0x24L), // p_1203->g_490
        (void*)0, // p_1203->g_506
        (VECTOR(uint64_t, 2))(0xACD4FC5E9DEA2472L, 0x26B59C50C4655D9CL), // p_1203->g_574
        (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 1UL), 1UL, 18446744073709551615UL, 1UL), // p_1203->g_581
        (void*)0, // p_1203->g_583
        (VECTOR(uint64_t, 16))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x6F87B0919D2F8D7AL), 0x6F87B0919D2F8D7AL), 0x6F87B0919D2F8D7AL, 18446744073709551606UL, 0x6F87B0919D2F8D7AL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x6F87B0919D2F8D7AL), (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x6F87B0919D2F8D7AL), 18446744073709551606UL, 0x6F87B0919D2F8D7AL, 18446744073709551606UL, 0x6F87B0919D2F8D7AL), // p_1203->g_591
        0x17B8534C3B21676AL, // p_1203->g_592
        &p_1203->g_592, // p_1203->g_590
        &p_1203->g_590, // p_1203->g_589
        (-5L), // p_1203->g_605
        0x581E23A7L, // p_1203->g_607
        (void*)0, // p_1203->g_613
        &p_1203->g_613, // p_1203->g_612
        (void*)0, // p_1203->g_614
        (VECTOR(int32_t, 8))(0x78407734L, (VECTOR(int32_t, 4))(0x78407734L, (VECTOR(int32_t, 2))(0x78407734L, 0x727090C6L), 0x727090C6L), 0x727090C6L, 0x78407734L, 0x727090C6L), // p_1203->g_620
        &p_1203->g_184[1], // p_1203->g_624
        &p_1203->g_624, // p_1203->g_623
        &p_1203->g_130, // p_1203->g_625
        (VECTOR(uint16_t, 16))(0x31C1L, (VECTOR(uint16_t, 4))(0x31C1L, (VECTOR(uint16_t, 2))(0x31C1L, 3UL), 3UL), 3UL, 0x31C1L, 3UL, (VECTOR(uint16_t, 2))(0x31C1L, 3UL), (VECTOR(uint16_t, 2))(0x31C1L, 3UL), 0x31C1L, 3UL, 0x31C1L, 3UL), // p_1203->g_648
        {0x6B664C4E12CD850CL}, // p_1203->g_693
        &p_1203->g_130, // p_1203->g_700
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 8UL), 8UL), 8UL, 1UL, 8UL, (VECTOR(uint64_t, 2))(1UL, 8UL), (VECTOR(uint64_t, 2))(1UL, 8UL), 1UL, 8UL, 1UL, 8UL), // p_1203->g_745
        {{{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}}},{{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}}},{{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}}},{{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}}},{{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}}},{{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}},{{0x3002B75299878E22L},{0x1594B2C1B6CFE53AL},{0x6FD7706514BEE815L},{8L}}}}, // p_1203->g_761
        {0x6279C8252B5E213AL}, // p_1203->g_921
        (VECTOR(int64_t, 4))(0x6B40039B4AB903FFL, (VECTOR(int64_t, 2))(0x6B40039B4AB903FFL, 0L), 0L), // p_1203->g_933
        &p_1203->g_373[6], // p_1203->g_936
        0x50L, // p_1203->g_939
        {(void*)0,(void*)0}, // p_1203->g_940
        (void*)0, // p_1203->g_947
        {&p_1203->g_947,&p_1203->g_947,&p_1203->g_947,&p_1203->g_947,&p_1203->g_947,&p_1203->g_947}, // p_1203->g_946
        &p_1203->g_946[1], // p_1203->g_945
        (void*)0, // p_1203->g_959
        &p_1203->g_255.f2, // p_1203->g_960
        {-4L}, // p_1203->g_997
        (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 18446744073709551612UL), 18446744073709551612UL), // p_1203->g_1026
        1UL, // p_1203->g_1106
        &p_1203->g_347.f0, // p_1203->g_1110
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x3B889DCC41331865L), 0x3B889DCC41331865L), // p_1203->g_1133
        {{{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL}},{{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL},{4294967292UL,0xC302D082L,0x92620D2AL,0x7A894FD1L,1UL,4294967292UL}}}, // p_1203->g_1155
        (VECTOR(uint16_t, 8))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 65535UL), 65535UL), 65535UL, 5UL, 65535UL), // p_1203->g_1166
        0x2FL, // p_1203->g_1194
        &p_1203->g_109, // p_1203->g_1196
        0, // p_1203->v_collective
        sequence_input[get_global_id(0)], // p_1203->global_0_offset
        sequence_input[get_global_id(1)], // p_1203->global_1_offset
        sequence_input[get_global_id(2)], // p_1203->global_2_offset
        sequence_input[get_local_id(0)], // p_1203->local_0_offset
        sequence_input[get_local_id(1)], // p_1203->local_1_offset
        sequence_input[get_local_id(2)], // p_1203->local_2_offset
        sequence_input[get_group_id(0)], // p_1203->group_0_offset
        sequence_input[get_group_id(1)], // p_1203->group_1_offset
        sequence_input[get_group_id(2)], // p_1203->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 18)), permutations[0][get_linear_local_id()])), // p_1203->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1204 = c_1205;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1203);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1203->g_2, "p_1203->g_2", print_hash_value);
    transparent_crc(p_1203->g_3, "p_1203->g_3", print_hash_value);
    transparent_crc(p_1203->g_4, "p_1203->g_4", print_hash_value);
    transparent_crc(p_1203->g_9, "p_1203->g_9", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1203->g_16[i][j], "p_1203->g_16[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1203->g_63.x, "p_1203->g_63.x", print_hash_value);
    transparent_crc(p_1203->g_63.y, "p_1203->g_63.y", print_hash_value);
    transparent_crc(p_1203->g_73.x, "p_1203->g_73.x", print_hash_value);
    transparent_crc(p_1203->g_73.y, "p_1203->g_73.y", print_hash_value);
    transparent_crc(p_1203->g_74.x, "p_1203->g_74.x", print_hash_value);
    transparent_crc(p_1203->g_74.y, "p_1203->g_74.y", print_hash_value);
    transparent_crc(p_1203->g_74.z, "p_1203->g_74.z", print_hash_value);
    transparent_crc(p_1203->g_74.w, "p_1203->g_74.w", print_hash_value);
    transparent_crc(p_1203->g_78.s0, "p_1203->g_78.s0", print_hash_value);
    transparent_crc(p_1203->g_78.s1, "p_1203->g_78.s1", print_hash_value);
    transparent_crc(p_1203->g_78.s2, "p_1203->g_78.s2", print_hash_value);
    transparent_crc(p_1203->g_78.s3, "p_1203->g_78.s3", print_hash_value);
    transparent_crc(p_1203->g_78.s4, "p_1203->g_78.s4", print_hash_value);
    transparent_crc(p_1203->g_78.s5, "p_1203->g_78.s5", print_hash_value);
    transparent_crc(p_1203->g_78.s6, "p_1203->g_78.s6", print_hash_value);
    transparent_crc(p_1203->g_78.s7, "p_1203->g_78.s7", print_hash_value);
    transparent_crc(p_1203->g_78.s8, "p_1203->g_78.s8", print_hash_value);
    transparent_crc(p_1203->g_78.s9, "p_1203->g_78.s9", print_hash_value);
    transparent_crc(p_1203->g_78.sa, "p_1203->g_78.sa", print_hash_value);
    transparent_crc(p_1203->g_78.sb, "p_1203->g_78.sb", print_hash_value);
    transparent_crc(p_1203->g_78.sc, "p_1203->g_78.sc", print_hash_value);
    transparent_crc(p_1203->g_78.sd, "p_1203->g_78.sd", print_hash_value);
    transparent_crc(p_1203->g_78.se, "p_1203->g_78.se", print_hash_value);
    transparent_crc(p_1203->g_78.sf, "p_1203->g_78.sf", print_hash_value);
    transparent_crc(p_1203->g_79.s0, "p_1203->g_79.s0", print_hash_value);
    transparent_crc(p_1203->g_79.s1, "p_1203->g_79.s1", print_hash_value);
    transparent_crc(p_1203->g_79.s2, "p_1203->g_79.s2", print_hash_value);
    transparent_crc(p_1203->g_79.s3, "p_1203->g_79.s3", print_hash_value);
    transparent_crc(p_1203->g_79.s4, "p_1203->g_79.s4", print_hash_value);
    transparent_crc(p_1203->g_79.s5, "p_1203->g_79.s5", print_hash_value);
    transparent_crc(p_1203->g_79.s6, "p_1203->g_79.s6", print_hash_value);
    transparent_crc(p_1203->g_79.s7, "p_1203->g_79.s7", print_hash_value);
    transparent_crc(p_1203->g_80.s0, "p_1203->g_80.s0", print_hash_value);
    transparent_crc(p_1203->g_80.s1, "p_1203->g_80.s1", print_hash_value);
    transparent_crc(p_1203->g_80.s2, "p_1203->g_80.s2", print_hash_value);
    transparent_crc(p_1203->g_80.s3, "p_1203->g_80.s3", print_hash_value);
    transparent_crc(p_1203->g_80.s4, "p_1203->g_80.s4", print_hash_value);
    transparent_crc(p_1203->g_80.s5, "p_1203->g_80.s5", print_hash_value);
    transparent_crc(p_1203->g_80.s6, "p_1203->g_80.s6", print_hash_value);
    transparent_crc(p_1203->g_80.s7, "p_1203->g_80.s7", print_hash_value);
    transparent_crc(p_1203->g_81.s0, "p_1203->g_81.s0", print_hash_value);
    transparent_crc(p_1203->g_81.s1, "p_1203->g_81.s1", print_hash_value);
    transparent_crc(p_1203->g_81.s2, "p_1203->g_81.s2", print_hash_value);
    transparent_crc(p_1203->g_81.s3, "p_1203->g_81.s3", print_hash_value);
    transparent_crc(p_1203->g_81.s4, "p_1203->g_81.s4", print_hash_value);
    transparent_crc(p_1203->g_81.s5, "p_1203->g_81.s5", print_hash_value);
    transparent_crc(p_1203->g_81.s6, "p_1203->g_81.s6", print_hash_value);
    transparent_crc(p_1203->g_81.s7, "p_1203->g_81.s7", print_hash_value);
    transparent_crc(p_1203->g_81.s8, "p_1203->g_81.s8", print_hash_value);
    transparent_crc(p_1203->g_81.s9, "p_1203->g_81.s9", print_hash_value);
    transparent_crc(p_1203->g_81.sa, "p_1203->g_81.sa", print_hash_value);
    transparent_crc(p_1203->g_81.sb, "p_1203->g_81.sb", print_hash_value);
    transparent_crc(p_1203->g_81.sc, "p_1203->g_81.sc", print_hash_value);
    transparent_crc(p_1203->g_81.sd, "p_1203->g_81.sd", print_hash_value);
    transparent_crc(p_1203->g_81.se, "p_1203->g_81.se", print_hash_value);
    transparent_crc(p_1203->g_81.sf, "p_1203->g_81.sf", print_hash_value);
    transparent_crc(p_1203->g_83.x, "p_1203->g_83.x", print_hash_value);
    transparent_crc(p_1203->g_83.y, "p_1203->g_83.y", print_hash_value);
    transparent_crc(p_1203->g_86.s0, "p_1203->g_86.s0", print_hash_value);
    transparent_crc(p_1203->g_86.s1, "p_1203->g_86.s1", print_hash_value);
    transparent_crc(p_1203->g_86.s2, "p_1203->g_86.s2", print_hash_value);
    transparent_crc(p_1203->g_86.s3, "p_1203->g_86.s3", print_hash_value);
    transparent_crc(p_1203->g_86.s4, "p_1203->g_86.s4", print_hash_value);
    transparent_crc(p_1203->g_86.s5, "p_1203->g_86.s5", print_hash_value);
    transparent_crc(p_1203->g_86.s6, "p_1203->g_86.s6", print_hash_value);
    transparent_crc(p_1203->g_86.s7, "p_1203->g_86.s7", print_hash_value);
    transparent_crc(p_1203->g_87.x, "p_1203->g_87.x", print_hash_value);
    transparent_crc(p_1203->g_87.y, "p_1203->g_87.y", print_hash_value);
    transparent_crc(p_1203->g_87.z, "p_1203->g_87.z", print_hash_value);
    transparent_crc(p_1203->g_87.w, "p_1203->g_87.w", print_hash_value);
    transparent_crc(p_1203->g_90.s0, "p_1203->g_90.s0", print_hash_value);
    transparent_crc(p_1203->g_90.s1, "p_1203->g_90.s1", print_hash_value);
    transparent_crc(p_1203->g_90.s2, "p_1203->g_90.s2", print_hash_value);
    transparent_crc(p_1203->g_90.s3, "p_1203->g_90.s3", print_hash_value);
    transparent_crc(p_1203->g_90.s4, "p_1203->g_90.s4", print_hash_value);
    transparent_crc(p_1203->g_90.s5, "p_1203->g_90.s5", print_hash_value);
    transparent_crc(p_1203->g_90.s6, "p_1203->g_90.s6", print_hash_value);
    transparent_crc(p_1203->g_90.s7, "p_1203->g_90.s7", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1203->g_127[i], "p_1203->g_127[i]", print_hash_value);

    }
    transparent_crc(p_1203->g_128.s0, "p_1203->g_128.s0", print_hash_value);
    transparent_crc(p_1203->g_128.s1, "p_1203->g_128.s1", print_hash_value);
    transparent_crc(p_1203->g_128.s2, "p_1203->g_128.s2", print_hash_value);
    transparent_crc(p_1203->g_128.s3, "p_1203->g_128.s3", print_hash_value);
    transparent_crc(p_1203->g_128.s4, "p_1203->g_128.s4", print_hash_value);
    transparent_crc(p_1203->g_128.s5, "p_1203->g_128.s5", print_hash_value);
    transparent_crc(p_1203->g_128.s6, "p_1203->g_128.s6", print_hash_value);
    transparent_crc(p_1203->g_128.s7, "p_1203->g_128.s7", print_hash_value);
    transparent_crc(p_1203->g_130, "p_1203->g_130", print_hash_value);
    transparent_crc(p_1203->g_157, "p_1203->g_157", print_hash_value);
    transparent_crc(p_1203->g_183, "p_1203->g_183", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1203->g_184[i], "p_1203->g_184[i]", print_hash_value);

    }
    transparent_crc(p_1203->g_204.x, "p_1203->g_204.x", print_hash_value);
    transparent_crc(p_1203->g_204.y, "p_1203->g_204.y", print_hash_value);
    transparent_crc(p_1203->g_204.z, "p_1203->g_204.z", print_hash_value);
    transparent_crc(p_1203->g_204.w, "p_1203->g_204.w", print_hash_value);
    transparent_crc(p_1203->g_205.x, "p_1203->g_205.x", print_hash_value);
    transparent_crc(p_1203->g_205.y, "p_1203->g_205.y", print_hash_value);
    transparent_crc(p_1203->g_206.x, "p_1203->g_206.x", print_hash_value);
    transparent_crc(p_1203->g_206.y, "p_1203->g_206.y", print_hash_value);
    transparent_crc(p_1203->g_206.z, "p_1203->g_206.z", print_hash_value);
    transparent_crc(p_1203->g_206.w, "p_1203->g_206.w", print_hash_value);
    transparent_crc(p_1203->g_209.s0, "p_1203->g_209.s0", print_hash_value);
    transparent_crc(p_1203->g_209.s1, "p_1203->g_209.s1", print_hash_value);
    transparent_crc(p_1203->g_209.s2, "p_1203->g_209.s2", print_hash_value);
    transparent_crc(p_1203->g_209.s3, "p_1203->g_209.s3", print_hash_value);
    transparent_crc(p_1203->g_209.s4, "p_1203->g_209.s4", print_hash_value);
    transparent_crc(p_1203->g_209.s5, "p_1203->g_209.s5", print_hash_value);
    transparent_crc(p_1203->g_209.s6, "p_1203->g_209.s6", print_hash_value);
    transparent_crc(p_1203->g_209.s7, "p_1203->g_209.s7", print_hash_value);
    transparent_crc(p_1203->g_209.s8, "p_1203->g_209.s8", print_hash_value);
    transparent_crc(p_1203->g_209.s9, "p_1203->g_209.s9", print_hash_value);
    transparent_crc(p_1203->g_209.sa, "p_1203->g_209.sa", print_hash_value);
    transparent_crc(p_1203->g_209.sb, "p_1203->g_209.sb", print_hash_value);
    transparent_crc(p_1203->g_209.sc, "p_1203->g_209.sc", print_hash_value);
    transparent_crc(p_1203->g_209.sd, "p_1203->g_209.sd", print_hash_value);
    transparent_crc(p_1203->g_209.se, "p_1203->g_209.se", print_hash_value);
    transparent_crc(p_1203->g_209.sf, "p_1203->g_209.sf", print_hash_value);
    transparent_crc(p_1203->g_210.x, "p_1203->g_210.x", print_hash_value);
    transparent_crc(p_1203->g_210.y, "p_1203->g_210.y", print_hash_value);
    transparent_crc(p_1203->g_210.z, "p_1203->g_210.z", print_hash_value);
    transparent_crc(p_1203->g_210.w, "p_1203->g_210.w", print_hash_value);
    transparent_crc(p_1203->g_211.x, "p_1203->g_211.x", print_hash_value);
    transparent_crc(p_1203->g_211.y, "p_1203->g_211.y", print_hash_value);
    transparent_crc(p_1203->g_219.x, "p_1203->g_219.x", print_hash_value);
    transparent_crc(p_1203->g_219.y, "p_1203->g_219.y", print_hash_value);
    transparent_crc(p_1203->g_228.s0, "p_1203->g_228.s0", print_hash_value);
    transparent_crc(p_1203->g_228.s1, "p_1203->g_228.s1", print_hash_value);
    transparent_crc(p_1203->g_228.s2, "p_1203->g_228.s2", print_hash_value);
    transparent_crc(p_1203->g_228.s3, "p_1203->g_228.s3", print_hash_value);
    transparent_crc(p_1203->g_228.s4, "p_1203->g_228.s4", print_hash_value);
    transparent_crc(p_1203->g_228.s5, "p_1203->g_228.s5", print_hash_value);
    transparent_crc(p_1203->g_228.s6, "p_1203->g_228.s6", print_hash_value);
    transparent_crc(p_1203->g_228.s7, "p_1203->g_228.s7", print_hash_value);
    transparent_crc(p_1203->g_232.s0, "p_1203->g_232.s0", print_hash_value);
    transparent_crc(p_1203->g_232.s1, "p_1203->g_232.s1", print_hash_value);
    transparent_crc(p_1203->g_232.s2, "p_1203->g_232.s2", print_hash_value);
    transparent_crc(p_1203->g_232.s3, "p_1203->g_232.s3", print_hash_value);
    transparent_crc(p_1203->g_232.s4, "p_1203->g_232.s4", print_hash_value);
    transparent_crc(p_1203->g_232.s5, "p_1203->g_232.s5", print_hash_value);
    transparent_crc(p_1203->g_232.s6, "p_1203->g_232.s6", print_hash_value);
    transparent_crc(p_1203->g_232.s7, "p_1203->g_232.s7", print_hash_value);
    transparent_crc(p_1203->g_240.f0, "p_1203->g_240.f0", print_hash_value);
    transparent_crc(p_1203->g_248, "p_1203->g_248", print_hash_value);
    transparent_crc(p_1203->g_249, "p_1203->g_249", print_hash_value);
    transparent_crc(p_1203->g_255.f0, "p_1203->g_255.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1203->g_286[i], "p_1203->g_286[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1203->g_287[i], "p_1203->g_287[i]", print_hash_value);

    }
    transparent_crc(p_1203->g_288, "p_1203->g_288", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1203->g_291[i].f0, "p_1203->g_291[i].f0", print_hash_value);

    }
    transparent_crc(p_1203->g_292.x, "p_1203->g_292.x", print_hash_value);
    transparent_crc(p_1203->g_292.y, "p_1203->g_292.y", print_hash_value);
    transparent_crc(p_1203->g_292.z, "p_1203->g_292.z", print_hash_value);
    transparent_crc(p_1203->g_292.w, "p_1203->g_292.w", print_hash_value);
    transparent_crc(p_1203->g_295.x, "p_1203->g_295.x", print_hash_value);
    transparent_crc(p_1203->g_295.y, "p_1203->g_295.y", print_hash_value);
    transparent_crc(p_1203->g_295.z, "p_1203->g_295.z", print_hash_value);
    transparent_crc(p_1203->g_295.w, "p_1203->g_295.w", print_hash_value);
    transparent_crc(p_1203->g_300.x, "p_1203->g_300.x", print_hash_value);
    transparent_crc(p_1203->g_300.y, "p_1203->g_300.y", print_hash_value);
    transparent_crc(p_1203->g_323.x, "p_1203->g_323.x", print_hash_value);
    transparent_crc(p_1203->g_323.y, "p_1203->g_323.y", print_hash_value);
    transparent_crc(p_1203->g_323.z, "p_1203->g_323.z", print_hash_value);
    transparent_crc(p_1203->g_323.w, "p_1203->g_323.w", print_hash_value);
    transparent_crc(p_1203->g_325.s0, "p_1203->g_325.s0", print_hash_value);
    transparent_crc(p_1203->g_325.s1, "p_1203->g_325.s1", print_hash_value);
    transparent_crc(p_1203->g_325.s2, "p_1203->g_325.s2", print_hash_value);
    transparent_crc(p_1203->g_325.s3, "p_1203->g_325.s3", print_hash_value);
    transparent_crc(p_1203->g_325.s4, "p_1203->g_325.s4", print_hash_value);
    transparent_crc(p_1203->g_325.s5, "p_1203->g_325.s5", print_hash_value);
    transparent_crc(p_1203->g_325.s6, "p_1203->g_325.s6", print_hash_value);
    transparent_crc(p_1203->g_325.s7, "p_1203->g_325.s7", print_hash_value);
    transparent_crc(p_1203->g_340.f0, "p_1203->g_340.f0", print_hash_value);
    transparent_crc(p_1203->g_344.s0, "p_1203->g_344.s0", print_hash_value);
    transparent_crc(p_1203->g_344.s1, "p_1203->g_344.s1", print_hash_value);
    transparent_crc(p_1203->g_344.s2, "p_1203->g_344.s2", print_hash_value);
    transparent_crc(p_1203->g_344.s3, "p_1203->g_344.s3", print_hash_value);
    transparent_crc(p_1203->g_344.s4, "p_1203->g_344.s4", print_hash_value);
    transparent_crc(p_1203->g_344.s5, "p_1203->g_344.s5", print_hash_value);
    transparent_crc(p_1203->g_344.s6, "p_1203->g_344.s6", print_hash_value);
    transparent_crc(p_1203->g_344.s7, "p_1203->g_344.s7", print_hash_value);
    transparent_crc(p_1203->g_345.s0, "p_1203->g_345.s0", print_hash_value);
    transparent_crc(p_1203->g_345.s1, "p_1203->g_345.s1", print_hash_value);
    transparent_crc(p_1203->g_345.s2, "p_1203->g_345.s2", print_hash_value);
    transparent_crc(p_1203->g_345.s3, "p_1203->g_345.s3", print_hash_value);
    transparent_crc(p_1203->g_345.s4, "p_1203->g_345.s4", print_hash_value);
    transparent_crc(p_1203->g_345.s5, "p_1203->g_345.s5", print_hash_value);
    transparent_crc(p_1203->g_345.s6, "p_1203->g_345.s6", print_hash_value);
    transparent_crc(p_1203->g_345.s7, "p_1203->g_345.s7", print_hash_value);
    transparent_crc(p_1203->g_347.f0, "p_1203->g_347.f0", print_hash_value);
    transparent_crc(p_1203->g_354.s0, "p_1203->g_354.s0", print_hash_value);
    transparent_crc(p_1203->g_354.s1, "p_1203->g_354.s1", print_hash_value);
    transparent_crc(p_1203->g_354.s2, "p_1203->g_354.s2", print_hash_value);
    transparent_crc(p_1203->g_354.s3, "p_1203->g_354.s3", print_hash_value);
    transparent_crc(p_1203->g_354.s4, "p_1203->g_354.s4", print_hash_value);
    transparent_crc(p_1203->g_354.s5, "p_1203->g_354.s5", print_hash_value);
    transparent_crc(p_1203->g_354.s6, "p_1203->g_354.s6", print_hash_value);
    transparent_crc(p_1203->g_354.s7, "p_1203->g_354.s7", print_hash_value);
    transparent_crc(p_1203->g_356.x, "p_1203->g_356.x", print_hash_value);
    transparent_crc(p_1203->g_356.y, "p_1203->g_356.y", print_hash_value);
    transparent_crc(p_1203->g_356.z, "p_1203->g_356.z", print_hash_value);
    transparent_crc(p_1203->g_356.w, "p_1203->g_356.w", print_hash_value);
    transparent_crc(p_1203->g_357.x, "p_1203->g_357.x", print_hash_value);
    transparent_crc(p_1203->g_357.y, "p_1203->g_357.y", print_hash_value);
    transparent_crc(p_1203->g_357.z, "p_1203->g_357.z", print_hash_value);
    transparent_crc(p_1203->g_357.w, "p_1203->g_357.w", print_hash_value);
    transparent_crc(p_1203->g_358.x, "p_1203->g_358.x", print_hash_value);
    transparent_crc(p_1203->g_358.y, "p_1203->g_358.y", print_hash_value);
    transparent_crc(p_1203->g_372.x, "p_1203->g_372.x", print_hash_value);
    transparent_crc(p_1203->g_372.y, "p_1203->g_372.y", print_hash_value);
    transparent_crc(p_1203->g_372.z, "p_1203->g_372.z", print_hash_value);
    transparent_crc(p_1203->g_372.w, "p_1203->g_372.w", print_hash_value);
    transparent_crc(p_1203->g_375.f0, "p_1203->g_375.f0", print_hash_value);
    transparent_crc(p_1203->g_462.s0, "p_1203->g_462.s0", print_hash_value);
    transparent_crc(p_1203->g_462.s1, "p_1203->g_462.s1", print_hash_value);
    transparent_crc(p_1203->g_462.s2, "p_1203->g_462.s2", print_hash_value);
    transparent_crc(p_1203->g_462.s3, "p_1203->g_462.s3", print_hash_value);
    transparent_crc(p_1203->g_462.s4, "p_1203->g_462.s4", print_hash_value);
    transparent_crc(p_1203->g_462.s5, "p_1203->g_462.s5", print_hash_value);
    transparent_crc(p_1203->g_462.s6, "p_1203->g_462.s6", print_hash_value);
    transparent_crc(p_1203->g_462.s7, "p_1203->g_462.s7", print_hash_value);
    transparent_crc(p_1203->g_465.x, "p_1203->g_465.x", print_hash_value);
    transparent_crc(p_1203->g_465.y, "p_1203->g_465.y", print_hash_value);
    transparent_crc(p_1203->g_465.z, "p_1203->g_465.z", print_hash_value);
    transparent_crc(p_1203->g_465.w, "p_1203->g_465.w", print_hash_value);
    transparent_crc(p_1203->g_467.s0, "p_1203->g_467.s0", print_hash_value);
    transparent_crc(p_1203->g_467.s1, "p_1203->g_467.s1", print_hash_value);
    transparent_crc(p_1203->g_467.s2, "p_1203->g_467.s2", print_hash_value);
    transparent_crc(p_1203->g_467.s3, "p_1203->g_467.s3", print_hash_value);
    transparent_crc(p_1203->g_467.s4, "p_1203->g_467.s4", print_hash_value);
    transparent_crc(p_1203->g_467.s5, "p_1203->g_467.s5", print_hash_value);
    transparent_crc(p_1203->g_467.s6, "p_1203->g_467.s6", print_hash_value);
    transparent_crc(p_1203->g_467.s7, "p_1203->g_467.s7", print_hash_value);
    transparent_crc(p_1203->g_468.s0, "p_1203->g_468.s0", print_hash_value);
    transparent_crc(p_1203->g_468.s1, "p_1203->g_468.s1", print_hash_value);
    transparent_crc(p_1203->g_468.s2, "p_1203->g_468.s2", print_hash_value);
    transparent_crc(p_1203->g_468.s3, "p_1203->g_468.s3", print_hash_value);
    transparent_crc(p_1203->g_468.s4, "p_1203->g_468.s4", print_hash_value);
    transparent_crc(p_1203->g_468.s5, "p_1203->g_468.s5", print_hash_value);
    transparent_crc(p_1203->g_468.s6, "p_1203->g_468.s6", print_hash_value);
    transparent_crc(p_1203->g_468.s7, "p_1203->g_468.s7", print_hash_value);
    transparent_crc(p_1203->g_472.s0, "p_1203->g_472.s0", print_hash_value);
    transparent_crc(p_1203->g_472.s1, "p_1203->g_472.s1", print_hash_value);
    transparent_crc(p_1203->g_472.s2, "p_1203->g_472.s2", print_hash_value);
    transparent_crc(p_1203->g_472.s3, "p_1203->g_472.s3", print_hash_value);
    transparent_crc(p_1203->g_472.s4, "p_1203->g_472.s4", print_hash_value);
    transparent_crc(p_1203->g_472.s5, "p_1203->g_472.s5", print_hash_value);
    transparent_crc(p_1203->g_472.s6, "p_1203->g_472.s6", print_hash_value);
    transparent_crc(p_1203->g_472.s7, "p_1203->g_472.s7", print_hash_value);
    transparent_crc(p_1203->g_473.x, "p_1203->g_473.x", print_hash_value);
    transparent_crc(p_1203->g_473.y, "p_1203->g_473.y", print_hash_value);
    transparent_crc(p_1203->g_489.s0, "p_1203->g_489.s0", print_hash_value);
    transparent_crc(p_1203->g_489.s1, "p_1203->g_489.s1", print_hash_value);
    transparent_crc(p_1203->g_489.s2, "p_1203->g_489.s2", print_hash_value);
    transparent_crc(p_1203->g_489.s3, "p_1203->g_489.s3", print_hash_value);
    transparent_crc(p_1203->g_489.s4, "p_1203->g_489.s4", print_hash_value);
    transparent_crc(p_1203->g_489.s5, "p_1203->g_489.s5", print_hash_value);
    transparent_crc(p_1203->g_489.s6, "p_1203->g_489.s6", print_hash_value);
    transparent_crc(p_1203->g_489.s7, "p_1203->g_489.s7", print_hash_value);
    transparent_crc(p_1203->g_489.s8, "p_1203->g_489.s8", print_hash_value);
    transparent_crc(p_1203->g_489.s9, "p_1203->g_489.s9", print_hash_value);
    transparent_crc(p_1203->g_489.sa, "p_1203->g_489.sa", print_hash_value);
    transparent_crc(p_1203->g_489.sb, "p_1203->g_489.sb", print_hash_value);
    transparent_crc(p_1203->g_489.sc, "p_1203->g_489.sc", print_hash_value);
    transparent_crc(p_1203->g_489.sd, "p_1203->g_489.sd", print_hash_value);
    transparent_crc(p_1203->g_489.se, "p_1203->g_489.se", print_hash_value);
    transparent_crc(p_1203->g_489.sf, "p_1203->g_489.sf", print_hash_value);
    transparent_crc(p_1203->g_490.x, "p_1203->g_490.x", print_hash_value);
    transparent_crc(p_1203->g_490.y, "p_1203->g_490.y", print_hash_value);
    transparent_crc(p_1203->g_490.z, "p_1203->g_490.z", print_hash_value);
    transparent_crc(p_1203->g_490.w, "p_1203->g_490.w", print_hash_value);
    transparent_crc(p_1203->g_574.x, "p_1203->g_574.x", print_hash_value);
    transparent_crc(p_1203->g_574.y, "p_1203->g_574.y", print_hash_value);
    transparent_crc(p_1203->g_581.s0, "p_1203->g_581.s0", print_hash_value);
    transparent_crc(p_1203->g_581.s1, "p_1203->g_581.s1", print_hash_value);
    transparent_crc(p_1203->g_581.s2, "p_1203->g_581.s2", print_hash_value);
    transparent_crc(p_1203->g_581.s3, "p_1203->g_581.s3", print_hash_value);
    transparent_crc(p_1203->g_581.s4, "p_1203->g_581.s4", print_hash_value);
    transparent_crc(p_1203->g_581.s5, "p_1203->g_581.s5", print_hash_value);
    transparent_crc(p_1203->g_581.s6, "p_1203->g_581.s6", print_hash_value);
    transparent_crc(p_1203->g_581.s7, "p_1203->g_581.s7", print_hash_value);
    transparent_crc(p_1203->g_591.s0, "p_1203->g_591.s0", print_hash_value);
    transparent_crc(p_1203->g_591.s1, "p_1203->g_591.s1", print_hash_value);
    transparent_crc(p_1203->g_591.s2, "p_1203->g_591.s2", print_hash_value);
    transparent_crc(p_1203->g_591.s3, "p_1203->g_591.s3", print_hash_value);
    transparent_crc(p_1203->g_591.s4, "p_1203->g_591.s4", print_hash_value);
    transparent_crc(p_1203->g_591.s5, "p_1203->g_591.s5", print_hash_value);
    transparent_crc(p_1203->g_591.s6, "p_1203->g_591.s6", print_hash_value);
    transparent_crc(p_1203->g_591.s7, "p_1203->g_591.s7", print_hash_value);
    transparent_crc(p_1203->g_591.s8, "p_1203->g_591.s8", print_hash_value);
    transparent_crc(p_1203->g_591.s9, "p_1203->g_591.s9", print_hash_value);
    transparent_crc(p_1203->g_591.sa, "p_1203->g_591.sa", print_hash_value);
    transparent_crc(p_1203->g_591.sb, "p_1203->g_591.sb", print_hash_value);
    transparent_crc(p_1203->g_591.sc, "p_1203->g_591.sc", print_hash_value);
    transparent_crc(p_1203->g_591.sd, "p_1203->g_591.sd", print_hash_value);
    transparent_crc(p_1203->g_591.se, "p_1203->g_591.se", print_hash_value);
    transparent_crc(p_1203->g_591.sf, "p_1203->g_591.sf", print_hash_value);
    transparent_crc(p_1203->g_592, "p_1203->g_592", print_hash_value);
    transparent_crc(p_1203->g_605, "p_1203->g_605", print_hash_value);
    transparent_crc(p_1203->g_607, "p_1203->g_607", print_hash_value);
    transparent_crc(p_1203->g_620.s0, "p_1203->g_620.s0", print_hash_value);
    transparent_crc(p_1203->g_620.s1, "p_1203->g_620.s1", print_hash_value);
    transparent_crc(p_1203->g_620.s2, "p_1203->g_620.s2", print_hash_value);
    transparent_crc(p_1203->g_620.s3, "p_1203->g_620.s3", print_hash_value);
    transparent_crc(p_1203->g_620.s4, "p_1203->g_620.s4", print_hash_value);
    transparent_crc(p_1203->g_620.s5, "p_1203->g_620.s5", print_hash_value);
    transparent_crc(p_1203->g_620.s6, "p_1203->g_620.s6", print_hash_value);
    transparent_crc(p_1203->g_620.s7, "p_1203->g_620.s7", print_hash_value);
    transparent_crc(p_1203->g_648.s0, "p_1203->g_648.s0", print_hash_value);
    transparent_crc(p_1203->g_648.s1, "p_1203->g_648.s1", print_hash_value);
    transparent_crc(p_1203->g_648.s2, "p_1203->g_648.s2", print_hash_value);
    transparent_crc(p_1203->g_648.s3, "p_1203->g_648.s3", print_hash_value);
    transparent_crc(p_1203->g_648.s4, "p_1203->g_648.s4", print_hash_value);
    transparent_crc(p_1203->g_648.s5, "p_1203->g_648.s5", print_hash_value);
    transparent_crc(p_1203->g_648.s6, "p_1203->g_648.s6", print_hash_value);
    transparent_crc(p_1203->g_648.s7, "p_1203->g_648.s7", print_hash_value);
    transparent_crc(p_1203->g_648.s8, "p_1203->g_648.s8", print_hash_value);
    transparent_crc(p_1203->g_648.s9, "p_1203->g_648.s9", print_hash_value);
    transparent_crc(p_1203->g_648.sa, "p_1203->g_648.sa", print_hash_value);
    transparent_crc(p_1203->g_648.sb, "p_1203->g_648.sb", print_hash_value);
    transparent_crc(p_1203->g_648.sc, "p_1203->g_648.sc", print_hash_value);
    transparent_crc(p_1203->g_648.sd, "p_1203->g_648.sd", print_hash_value);
    transparent_crc(p_1203->g_648.se, "p_1203->g_648.se", print_hash_value);
    transparent_crc(p_1203->g_648.sf, "p_1203->g_648.sf", print_hash_value);
    transparent_crc(p_1203->g_693.f0, "p_1203->g_693.f0", print_hash_value);
    transparent_crc(p_1203->g_745.s0, "p_1203->g_745.s0", print_hash_value);
    transparent_crc(p_1203->g_745.s1, "p_1203->g_745.s1", print_hash_value);
    transparent_crc(p_1203->g_745.s2, "p_1203->g_745.s2", print_hash_value);
    transparent_crc(p_1203->g_745.s3, "p_1203->g_745.s3", print_hash_value);
    transparent_crc(p_1203->g_745.s4, "p_1203->g_745.s4", print_hash_value);
    transparent_crc(p_1203->g_745.s5, "p_1203->g_745.s5", print_hash_value);
    transparent_crc(p_1203->g_745.s6, "p_1203->g_745.s6", print_hash_value);
    transparent_crc(p_1203->g_745.s7, "p_1203->g_745.s7", print_hash_value);
    transparent_crc(p_1203->g_745.s8, "p_1203->g_745.s8", print_hash_value);
    transparent_crc(p_1203->g_745.s9, "p_1203->g_745.s9", print_hash_value);
    transparent_crc(p_1203->g_745.sa, "p_1203->g_745.sa", print_hash_value);
    transparent_crc(p_1203->g_745.sb, "p_1203->g_745.sb", print_hash_value);
    transparent_crc(p_1203->g_745.sc, "p_1203->g_745.sc", print_hash_value);
    transparent_crc(p_1203->g_745.sd, "p_1203->g_745.sd", print_hash_value);
    transparent_crc(p_1203->g_745.se, "p_1203->g_745.se", print_hash_value);
    transparent_crc(p_1203->g_745.sf, "p_1203->g_745.sf", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1203->g_761[i][j][k].f0, "p_1203->g_761[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1203->g_921.f0, "p_1203->g_921.f0", print_hash_value);
    transparent_crc(p_1203->g_933.x, "p_1203->g_933.x", print_hash_value);
    transparent_crc(p_1203->g_933.y, "p_1203->g_933.y", print_hash_value);
    transparent_crc(p_1203->g_933.z, "p_1203->g_933.z", print_hash_value);
    transparent_crc(p_1203->g_933.w, "p_1203->g_933.w", print_hash_value);
    transparent_crc(p_1203->g_939, "p_1203->g_939", print_hash_value);
    transparent_crc(p_1203->g_997.f0, "p_1203->g_997.f0", print_hash_value);
    transparent_crc(p_1203->g_1026.x, "p_1203->g_1026.x", print_hash_value);
    transparent_crc(p_1203->g_1026.y, "p_1203->g_1026.y", print_hash_value);
    transparent_crc(p_1203->g_1026.z, "p_1203->g_1026.z", print_hash_value);
    transparent_crc(p_1203->g_1026.w, "p_1203->g_1026.w", print_hash_value);
    transparent_crc(p_1203->g_1106, "p_1203->g_1106", print_hash_value);
    transparent_crc(p_1203->g_1133.x, "p_1203->g_1133.x", print_hash_value);
    transparent_crc(p_1203->g_1133.y, "p_1203->g_1133.y", print_hash_value);
    transparent_crc(p_1203->g_1133.z, "p_1203->g_1133.z", print_hash_value);
    transparent_crc(p_1203->g_1133.w, "p_1203->g_1133.w", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1203->g_1155[i][j][k], "p_1203->g_1155[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1203->g_1166.s0, "p_1203->g_1166.s0", print_hash_value);
    transparent_crc(p_1203->g_1166.s1, "p_1203->g_1166.s1", print_hash_value);
    transparent_crc(p_1203->g_1166.s2, "p_1203->g_1166.s2", print_hash_value);
    transparent_crc(p_1203->g_1166.s3, "p_1203->g_1166.s3", print_hash_value);
    transparent_crc(p_1203->g_1166.s4, "p_1203->g_1166.s4", print_hash_value);
    transparent_crc(p_1203->g_1166.s5, "p_1203->g_1166.s5", print_hash_value);
    transparent_crc(p_1203->g_1166.s6, "p_1203->g_1166.s6", print_hash_value);
    transparent_crc(p_1203->g_1166.s7, "p_1203->g_1166.s7", print_hash_value);
    transparent_crc(p_1203->g_1194, "p_1203->g_1194", print_hash_value);
    transparent_crc(p_1203->v_collective, "p_1203->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 96; i++)
            transparent_crc(p_1203->g_special_values[i + 96 * get_linear_group_id()], "p_1203->g_special_values[i + 96 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 96; i++)
            transparent_crc(p_1203->l_special_values[i], "p_1203->l_special_values[i]", print_hash_value);
    transparent_crc(p_1203->l_comm_values[get_linear_local_id()], "p_1203->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1203->g_comm_values[get_linear_group_id() * 18 + get_linear_local_id()], "p_1203->g_comm_values[get_linear_group_id() * 18 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
