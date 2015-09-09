// ---fake_divergence ---inter_thread_comm -g 30,47,6 -l 5,1,1
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

__constant uint32_t permutations[10][5] = {
{1,0,2,3,4}, // permutation 0
{1,3,2,0,4}, // permutation 1
{1,0,4,2,3}, // permutation 2
{1,2,4,0,3}, // permutation 3
{4,3,2,0,1}, // permutation 4
{3,4,2,1,0}, // permutation 5
{1,3,4,2,0}, // permutation 6
{1,3,4,2,0}, // permutation 7
{2,0,1,4,3}, // permutation 8
{3,0,4,2,1} // permutation 9
};

// Seed: 107

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int16_t  f1;
   int32_t  f2;
};

union U1 {
   int8_t * f0;
   volatile int32_t  f1;
   int64_t  f2;
};

struct S2 {
    int32_t g_3;
    uint8_t g_27;
    int8_t *g_34;
    uint64_t g_60[6];
    volatile int8_t g_70;
    volatile int8_t *g_69;
    volatile int8_t ** volatile g_68;
    int32_t g_71;
    int16_t g_78;
    uint32_t g_83;
    int32_t ** volatile g_84;
    volatile int8_t g_89;
    int32_t g_90[4][6][3];
    volatile uint32_t g_96;
    int8_t g_100[8][8];
    int8_t *g_99;
    union U1 g_101;
    struct S0 g_108[8];
    uint32_t g_153;
    uint16_t g_159;
    struct S0 * volatile g_166;
    struct S0 * volatile g_167;
    uint16_t g_202;
    int32_t g_208;
    int32_t * volatile g_209;
    int32_t * volatile g_220;
    uint16_t g_226;
    int32_t *g_230;
    int32_t ** volatile g_229;
    union U1 g_234;
    int32_t ** volatile g_239;
    union U1 *g_245;
    union U1 *g_246;
    int32_t ** volatile g_265;
    volatile uint32_t g_268;
    struct S0 * volatile g_291;
    int32_t * volatile g_296;
    int8_t *g_300;
    uint64_t g_321;
    struct S0 g_367;
    uint8_t g_369[1];
    volatile int32_t g_387;
    int64_t *g_395;
    uint64_t g_472[9][2][2];
    volatile int8_t * volatile *g_569;
    volatile int8_t * volatile * volatile *g_568;
    int8_t * volatile * volatile g_571;
    int8_t * volatile * volatile *g_570;
    int32_t * volatile *g_619;
    int32_t * volatile **g_618[9];
    int32_t ** volatile g_627;
    int32_t ** volatile g_628;
    struct S0 g_632;
    struct S0 * volatile g_631;
    uint64_t *g_684;
    uint64_t *g_690[1];
    uint64_t **g_689;
    union U1 g_737;
    union U1 g_741;
    uint32_t g_827[8][2][1];
    uint32_t g_830;
    int32_t * volatile g_837;
    uint32_t g_865;
    int32_t ** volatile g_906;
    uint32_t g_955;
    volatile uint64_t g_1020;
    volatile uint64_t *g_1019;
    volatile uint64_t * volatile *g_1018[4];
    union U1 g_1025[2][7];
    int8_t **g_1038[10];
    int32_t ** volatile g_1078;
    int32_t *g_1080[10];
    volatile struct S0 **g_1107;
    volatile struct S0 *** volatile g_1106[10];
    union U1 ** volatile g_1132;
    union U1 ** volatile g_1133;
    int8_t ***g_1173;
    volatile uint8_t **g_1179;
    int32_t *g_1187[8];
    int32_t * volatile *g_1186;
    uint32_t *g_1208;
    int64_t *g_1249;
    int64_t *g_1250;
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
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S2 * p_1265);
uint8_t  func_6(uint16_t  p_7, uint32_t  p_8, int32_t * p_9, struct S2 * p_1265);
int16_t  func_12(int32_t * p_13, int16_t  p_14, int32_t  p_15, int16_t  p_16, struct S2 * p_1265);
int32_t * func_17(int32_t * p_18, uint64_t  p_19, int64_t  p_20, uint16_t  p_21, struct S2 * p_1265);
uint64_t  func_28(uint8_t  p_29, uint32_t  p_30, int32_t * p_31, struct S2 * p_1265);
int8_t * func_36(int32_t * p_37, uint16_t  p_38, uint16_t  p_39, int8_t  p_40, int8_t ** p_41, struct S2 * p_1265);
uint16_t  func_43(uint32_t  p_44, int32_t * p_45, int32_t * p_46, struct S2 * p_1265);
int16_t  func_49(int32_t * p_50, int8_t * p_51, int32_t  p_52, int8_t ** p_53, struct S2 * p_1265);
int8_t * func_54(int16_t  p_55, struct S2 * p_1265);
int64_t  func_56(uint64_t  p_57, int64_t  p_58, struct S2 * p_1265);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1265->g_3
 * writes:
 */
uint64_t  func_1(struct S2 * p_1265)
{ /* block id: 4 */
    uint8_t l_22 = 253UL;
    int32_t *l_42 = &p_1265->g_3;
    int8_t **l_292 = &p_1265->g_99;
    int32_t l_1129 = 0x65903ED3L;
    int32_t l_1148 = 0x1F382A61L;
    int32_t l_1150 = 2L;
    int32_t l_1151[1][1];
    int8_t l_1152[5][3][1] = {{{0x49L},{0x49L},{0x49L}},{{0x49L},{0x49L},{0x49L}},{{0x49L},{0x49L},{0x49L}},{{0x49L},{0x49L},{0x49L}},{{0x49L},{0x49L},{0x49L}}};
    int8_t ***l_1174 = &p_1265->g_1038[2];
    struct S0 *l_1181 = &p_1265->g_108[5];
    struct S0 **l_1180 = &l_1181;
    int64_t **l_1182 = &p_1265->g_395;
    int32_t *l_1184 = &p_1265->g_208;
    int32_t **l_1183 = &l_1184;
    int32_t ***l_1185 = &l_1183;
    uint8_t *l_1195 = &l_22;
    uint8_t **l_1194 = &l_1195;
    uint32_t *l_1207 = &p_1265->g_865;
    uint32_t **l_1206[5][6] = {{&l_1207,&l_1207,&l_1207,&l_1207,&l_1207,&l_1207},{&l_1207,&l_1207,&l_1207,&l_1207,&l_1207,&l_1207},{&l_1207,&l_1207,&l_1207,&l_1207,&l_1207,&l_1207},{&l_1207,&l_1207,&l_1207,&l_1207,&l_1207,&l_1207},{&l_1207,&l_1207,&l_1207,&l_1207,&l_1207,&l_1207}};
    int64_t l_1209 = (-4L);
    uint32_t l_1223 = 0UL;
    uint64_t ***l_1255 = &p_1265->g_689;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_1151[i][j] = 0x2A9CCCB6L;
    }
    return (*l_42);
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_632.f1 p_1265->g_367.f2 p_1265->g_100 p_1265->g_571 p_1265->g_300 p_1265->g_632.f2 p_1265->g_90 p_1265->g_comm_values p_1265->g_1106 p_1265->g_827 p_1265->g_99 p_1265->g_78 p_1265->g_230 p_1265->g_3 p_1265->g_108.f2
 * writes: p_1265->g_632.f1 p_1265->g_827 p_1265->g_100 p_1265->g_367.f2 p_1265->g_230
 */
uint8_t  func_6(uint16_t  p_7, uint32_t  p_8, int32_t * p_9, struct S2 * p_1265)
{ /* block id: 537 */
    int16_t l_1085 = (-8L);
    int32_t l_1097 = 0x4FA04527L;
    int32_t l_1114 = (-2L);
    int32_t l_1117[3];
    int32_t *l_1123[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_1124[5][7] = {{0x30F3600AL,0x30F3600AL,0x602B1333L,(-9L),1L,0x70FFEAB0L,(-1L)},{0x30F3600AL,0x30F3600AL,0x602B1333L,(-9L),1L,0x70FFEAB0L,(-1L)},{0x30F3600AL,0x30F3600AL,0x602B1333L,(-9L),1L,0x70FFEAB0L,(-1L)},{0x30F3600AL,0x30F3600AL,0x602B1333L,(-9L),1L,0x70FFEAB0L,(-1L)},{0x30F3600AL,0x30F3600AL,0x602B1333L,(-9L),1L,0x70FFEAB0L,(-1L)}};
    int16_t l_1125 = 0x6532L;
    uint8_t l_1126 = 0xE9L;
    int i, j;
    for (i = 0; i < 3; i++)
        l_1117[i] = 1L;
    for (p_8 = 0; (p_8 < 48); p_8 = safe_add_func_uint8_t_u_u(p_8, 7))
    { /* block id: 540 */
        for (p_1265->g_632.f1 = 0; (p_1265->g_632.f1 < (-8)); p_1265->g_632.f1--)
        { /* block id: 543 */
            if ((*p_9))
                break;
        }
        if (l_1085)
            break;
    }
    l_1097 = (safe_lshift_func_int16_t_s_s((((p_1265->g_100[2][1] <= (((safe_sub_func_uint32_t_u_u(((safe_div_func_uint64_t_u_u((safe_unary_minus_func_int8_t_s((**p_1265->g_571))), (safe_add_func_uint16_t_u_u(p_1265->g_632.f2, (p_1265->g_90[0][4][1] , (0x3DL | 0x0CL)))))) < (safe_rshift_func_int16_t_s_u(p_8, FAKE_DIVERGE(p_1265->local_1_offset, get_local_id(1), 10)))), ((p_8 == ((((void*)0 == &p_1265->g_395) , p_7) , l_1085)) != 0x8BL))) , p_1265->g_comm_values[p_1265->tid]) > p_8)) | 0x28L) == p_8), 5));
    for (l_1097 = 21; (l_1097 != (-5)); l_1097 = safe_sub_func_int64_t_s_s(l_1097, 1))
    { /* block id: 551 */
        struct S0 **l_1105 = (void*)0;
        struct S0 ***l_1104 = &l_1105;
        uint32_t *l_1108 = (void*)0;
        uint32_t *l_1109 = &p_1265->g_827[2][0][0];
        int64_t *l_1112 = (void*)0;
        int64_t *l_1113 = (void*)0;
        int32_t **l_1122 = &p_1265->g_230;
        (*p_9) = (safe_rshift_func_uint8_t_u_s(((safe_sub_func_uint32_t_u_u(((*l_1109) &= (l_1104 != (l_1097 , p_1265->g_1106[3]))), (((l_1114 |= (safe_sub_func_int8_t_s_s(0x6FL, ((*p_1265->g_99) = (-1L))))) >= (safe_div_func_uint16_t_u_u(((((((l_1117[1] = l_1097) , (+(p_7 && (l_1117[2] = FAKE_DIVERGE(p_1265->group_0_offset, get_group_id(0), 10))))) || (safe_rshift_func_int16_t_s_s(0x1E2EL, (safe_mul_func_int16_t_s_s(((-1L) >= 0L), p_8))))) || 0L) , 8L) , 9UL), p_1265->g_78))) >= (*p_1265->g_230)))) <= GROUP_DIVERGE(2, 1)), 2));
        (*l_1122) = p_9;
        (*p_1265->g_230) |= 0x24FA2516L;
    }
    ++l_1126;
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_153
 * writes:
 */
int16_t  func_12(int32_t * p_13, int16_t  p_14, int32_t  p_15, int16_t  p_16, struct S2 * p_1265)
{ /* block id: 409 */
    uint64_t l_843 = 0UL;
    int32_t l_871 = 0L;
    int64_t **l_902 = &p_1265->g_395;
    uint8_t *l_923 = &p_1265->g_27;
    uint8_t **l_922 = &l_923;
    int32_t l_932 = 7L;
    int32_t l_937 = 0x0D0C591EL;
    int32_t l_940[2][2][8] = {{{0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L},{0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L}},{{0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L},{0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L,0x75863E34L}}};
    uint16_t l_952 = 0xFE9FL;
    struct S0 *l_973 = &p_1265->g_632;
    uint64_t *l_990 = &p_1265->g_321;
    uint64_t **l_989 = &l_990;
    int32_t *l_1023 = &p_1265->g_208;
    int i, j, k;
    return p_1265->g_153;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_367.f1 p_1265->g_628 p_1265->g_291 p_1265->g_108 p_1265->g_631 p_1265->g_229 p_1265->g_3 p_1265->g_230 p_1265->g_99 p_1265->g_100 p_1265->g_90 p_1265->g_632.f0 p_1265->g_632.f2
 * writes: p_1265->g_367.f1 p_1265->g_367.f0 p_1265->g_230 p_1265->g_108 p_1265->g_632 p_1265->g_83 p_1265->g_3
 */
int32_t * func_17(int32_t * p_18, uint64_t  p_19, int64_t  p_20, uint16_t  p_21, struct S2 * p_1265)
{ /* block id: 316 */
    uint16_t l_638 = 65535UL;
    int32_t **l_644 = &p_1265->g_230;
    uint64_t *l_681 = &p_1265->g_472[4][1][1];
    struct S0 l_743 = {0x7C27D549L,0L,0x182CCFA3L};
    int32_t l_746 = (-2L);
    int32_t l_747 = 0x09B57733L;
    int32_t l_749 = (-9L);
    uint64_t l_750 = 3UL;
    uint8_t l_757 = 1UL;
    int32_t l_805 = 0x2666D72FL;
    int16_t *l_814 = &p_1265->g_108[5].f1;
    uint32_t l_815 = 4294967295UL;
    int32_t *l_816 = &p_1265->g_632.f0;
    for (p_1265->g_367.f1 = 0; (p_1265->g_367.f1 < (-28)); p_1265->g_367.f1 = safe_sub_func_uint32_t_u_u(p_1265->g_367.f1, 8))
    { /* block id: 319 */
        int32_t *l_626[5];
        int8_t *l_635 = &p_1265->g_100[2][1];
        int8_t *l_639 = (void*)0;
        int32_t ***l_645 = &l_644;
        struct S0 *l_715 = &p_1265->g_108[2];
        struct S0 **l_714[9] = {&l_715,&l_715,&l_715,&l_715,&l_715,&l_715,&l_715,&l_715,&l_715};
        uint64_t **l_736 = (void*)0;
        int64_t l_748 = 7L;
        int i;
        for (i = 0; i < 5; i++)
            l_626[i] = &p_1265->g_108[5].f2;
        for (p_1265->g_367.f0 = (-24); (p_1265->g_367.f0 >= 27); p_1265->g_367.f0 = safe_add_func_int16_t_s_s(p_1265->g_367.f0, 5))
        { /* block id: 322 */
            (*p_1265->g_628) = l_626[0];
            for (p_19 = 17; (p_19 != 58); p_19++)
            { /* block id: 326 */
                (*p_1265->g_631) = ((*p_1265->g_291) = (*p_1265->g_291));
                for (p_1265->g_83 = 0; (p_1265->g_83 == 18); p_1265->g_83++)
                { /* block id: 331 */
                    (*p_1265->g_229) = p_18;
                }
                if ((*p_18))
                    break;
            }
        }
    }
    (*p_1265->g_230) = (((safe_mul_func_int16_t_s_s((((**p_1265->g_628) <= (safe_sub_func_uint16_t_u_u((**l_644), (safe_rshift_func_int8_t_s_s((*p_1265->g_99), (0xA2L <= 1UL)))))) > (0x682FL <= (((*l_814) = (-1L)) , l_815))), p_20)) ^ p_1265->g_90[2][0][1]) , (*p_1265->g_230));
    (*l_816) &= (**l_644);
    return (*l_644);
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_83 p_1265->g_300 p_1265->g_100 p_1265->g_369 p_1265->g_387 p_1265->g_159 p_1265->g_230 p_1265->g_3 p_1265->g_618 p_1265->g_108.f2 p_1265->g_367.f1 p_1265->g_296
 * writes: p_1265->g_83 p_1265->g_369 p_1265->g_159 p_1265->g_90
 */
uint64_t  func_28(uint8_t  p_29, uint32_t  p_30, int32_t * p_31, struct S2 * p_1265)
{ /* block id: 148 */
    uint64_t l_309[2][7][7] = {{{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L}},{{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L},{0x0FAA8B4053C0D08EL,18446744073709551609UL,0xB325E379C5A7B4FAL,0x0FAA8B4053C0D08EL,18446744073709551610UL,0x96C6FE63B7649721L,0x96C6FE63B7649721L}}};
    struct S0 l_312[10][8] = {{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}},{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}},{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}},{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}},{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}},{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}},{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}},{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}},{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}},{{1L,0x65C5L,0x619E61F5L},{0x5763D559L,5L,0L},{1L,-2L,-3L},{0L,1L,0x6A2A6BD1L},{0x2263929AL,-2L,0x3DF845B0L},{0L,-10L,0x21C2B8E1L},{-3L,0x5646L,-1L},{0x42027B56L,0L,0x4AAE3188L}}};
    uint64_t l_324 = 0x88B7F67C416AC3CCL;
    uint32_t l_325 = 4294967295UL;
    int32_t **l_330 = &p_1265->g_230;
    union U1 *l_338 = (void*)0;
    int16_t *l_359 = &p_1265->g_108[5].f1;
    int8_t *l_414 = &p_1265->g_100[0][3];
    int8_t *l_422 = &p_1265->g_100[2][1];
    int32_t l_435 = (-7L);
    int32_t l_436 = 0x521D2058L;
    int32_t l_438 = 8L;
    int32_t l_442 = 0L;
    int32_t l_444 = (-1L);
    uint32_t l_462 = 4294967295UL;
    uint32_t l_486[8];
    uint32_t *l_552 = (void*)0;
    uint32_t *l_578 = &l_325;
    uint8_t *l_594[3];
    uint16_t *l_603 = &p_1265->g_159;
    uint16_t *l_620[1][7];
    int32_t *l_621[5];
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_486[i] = 0x45FC5F52L;
    for (i = 0; i < 3; i++)
        l_594[i] = &p_1265->g_369[0];
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
            l_620[i][j] = (void*)0;
    }
    for (i = 0; i < 5; i++)
        l_621[i] = &p_1265->g_367.f2;
    for (p_29 = 4; (p_29 > 29); ++p_29)
    { /* block id: 151 */
        struct S0 *l_317 = &p_1265->g_108[4];
        int32_t l_320 = 1L;
        int32_t l_322 = (-1L);
        uint32_t *l_323 = &p_1265->g_153;
        int16_t *l_336 = &p_1265->g_78;
        int32_t *l_374[3][6] = {{&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208},{&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208},{&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208}};
        int64_t *l_398 = (void*)0;
        int8_t l_421 = 0x5CL;
        int32_t l_439 = 1L;
        int32_t l_440 = 0x09913DB2L;
        int32_t l_447[7] = {9L,0x6B6E7694L,9L,9L,0x6B6E7694L,9L,9L};
        uint32_t l_479 = 0xF5BEE3D3L;
        struct S0 *l_562 = &l_312[4][7];
        int i, j;
        (1 + 1);
    }
    (*p_1265->g_296) = (l_444 = (((safe_lshift_func_int8_t_s_u((((((0UL && (l_359 != l_359)) & ((*l_578) = (++p_1265->g_83))) < (safe_lshift_func_uint8_t_u_s(0x9DL, 5))) || (((safe_add_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((*p_1265->g_300), 4)), (((~((safe_lshift_func_uint16_t_u_s((safe_mod_func_uint64_t_u_u(((GROUP_DIVERGE(2, 1) , (safe_unary_minus_func_uint64_t_u(GROUP_DIVERGE(1, 1)))) , ((p_29 = FAKE_DIVERGE(p_1265->global_1_offset, get_global_id(1), 10)) > (p_1265->g_369[0]--))), p_30)), (safe_add_func_uint16_t_u_u(p_1265->g_387, (safe_mod_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s((++(*l_603)), ((safe_sub_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s((safe_sub_func_int32_t_s_s((*p_1265->g_230), ((safe_add_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((((l_436 = (l_312[4][7].f0 = (safe_mod_func_uint16_t_u_u((p_1265->g_618[6] != &l_330), p_30)))) > p_1265->g_108[5].f2) || (**l_330)), 0L)) | (**l_330)) >= (-1L)), (**l_330))) > p_1265->g_108[5].f2))), (**l_330))), 0L)) <= p_30))), FAKE_DIVERGE(p_1265->group_2_offset, get_group_id(2), 10))))))) , 0x2807433F58C88F49L)) == (-1L)) || p_1265->g_367.f1))), GROUP_DIVERGE(1, 1))) & 7UL), 0L)) >= p_30) == (**l_330))) >= 0x3F240E8EL), 4)) , l_620[0][4]) != &p_1265->g_78));
    return p_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_296 p_1265->g_99
 * writes: p_1265->g_90
 */
int8_t * func_36(int32_t * p_37, uint16_t  p_38, uint16_t  p_39, int8_t  p_40, int8_t ** p_41, struct S2 * p_1265)
{ /* block id: 142 */
    int64_t l_295[6];
    int i;
    for (i = 0; i < 6; i++)
        l_295[i] = 0L;
    (*p_1265->g_296) = ((safe_rshift_func_int8_t_s_s(l_295[4], 5)) == l_295[4]);
    return (*p_41);
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_229 p_1265->g_68 p_1265->g_69 p_1265->g_70 p_1265->g_71 p_1265->g_234 p_1265->g_202 p_1265->g_239 p_1265->g_208 p_1265->g_108 p_1265->g_159 p_1265->g_99 p_1265->g_100 p_1265->g_60 p_1265->g_265 p_1265->g_230 p_1265->g_268 p_1265->g_96 p_1265->g_3 p_1265->g_83 p_1265->g_291
 * writes: p_1265->g_230 p_1265->g_71 p_1265->g_108 p_1265->g_245 p_1265->g_246 p_1265->g_208 p_1265->g_202 p_1265->g_268 p_1265->g_159 p_1265->g_83
 */
uint16_t  func_43(uint32_t  p_44, int32_t * p_45, int32_t * p_46, struct S2 * p_1265)
{ /* block id: 78 */
    int32_t *l_231[3][3][3] = {{{&p_1265->g_90[3][1][1],&p_1265->g_3,&p_1265->g_90[2][5][0]},{&p_1265->g_90[3][1][1],&p_1265->g_3,&p_1265->g_90[2][5][0]},{&p_1265->g_90[3][1][1],&p_1265->g_3,&p_1265->g_90[2][5][0]}},{{&p_1265->g_90[3][1][1],&p_1265->g_3,&p_1265->g_90[2][5][0]},{&p_1265->g_90[3][1][1],&p_1265->g_3,&p_1265->g_90[2][5][0]},{&p_1265->g_90[3][1][1],&p_1265->g_3,&p_1265->g_90[2][5][0]}},{{&p_1265->g_90[3][1][1],&p_1265->g_3,&p_1265->g_90[2][5][0]},{&p_1265->g_90[3][1][1],&p_1265->g_3,&p_1265->g_90[2][5][0]},{&p_1265->g_90[3][1][1],&p_1265->g_3,&p_1265->g_90[2][5][0]}}};
    int8_t **l_237 = &p_1265->g_99;
    int16_t *l_238 = (void*)0;
    int i, j, k;
    (*p_1265->g_229) = p_45;
lbl_251:
    p_1265->g_71 &= ((**p_1265->g_68) , ((void*)0 == &p_1265->g_83));
    if ((safe_rshift_func_int16_t_s_s(((p_1265->g_234 , &p_1265->g_78) == ((~(+(safe_lshift_func_uint8_t_u_s(((p_1265->g_202 , l_237) == l_237), 7)))) , l_238)), 11)))
    { /* block id: 81 */
        uint16_t l_240 = 0UL;
        int32_t l_241 = 0x780F72A8L;
        union U1 **l_242 = (void*)0;
        union U1 *l_244 = &p_1265->g_234;
        union U1 **l_243[5] = {&l_244,&l_244,&l_244,&l_244,&l_244};
        int i;
        for (p_1265->g_71 = 0; p_1265->g_71 < 8; p_1265->g_71 += 1)
        {
            struct S0 tmp = {{0x46CC39C3L,-5L,-1L}};
            p_1265->g_108[p_1265->g_71] = tmp;
        }
        (*p_1265->g_239) = p_45;
        l_241 ^= l_240;
        p_1265->g_246 = (p_1265->g_245 = &p_1265->g_234);
    }
    else
    { /* block id: 87 */
        uint64_t l_262 = 18446744073709551611UL;
        int32_t l_267 = 0x46A7331BL;
        uint16_t l_274 = 65529UL;
        for (p_1265->g_71 = 0; (p_1265->g_71 < (-26)); p_1265->g_71 = safe_sub_func_uint64_t_u_u(p_1265->g_71, 7))
        { /* block id: 90 */
            int32_t l_261[4] = {(-5L),(-5L),(-5L),(-5L)};
            int i;
            for (p_1265->g_208 = 22; (p_1265->g_208 == (-30)); p_1265->g_208 = safe_sub_func_uint16_t_u_u(p_1265->g_208, 8))
            { /* block id: 93 */
                uint16_t l_263 = 0xE746L;
                int16_t *l_264[3][3] = {{&p_1265->g_108[5].f1,&p_1265->g_108[5].f1,&p_1265->g_108[5].f1},{&p_1265->g_108[5].f1,&p_1265->g_108[5].f1,&p_1265->g_108[5].f1},{&p_1265->g_108[5].f1,&p_1265->g_108[5].f1,&p_1265->g_108[5].f1}};
                int32_t **l_266 = &l_231[1][1][1];
                int i, j;
                for (p_1265->g_202 = 0; (p_1265->g_202 <= 7); p_1265->g_202 += 1)
                { /* block id: 96 */
                    struct S0 *l_252 = &p_1265->g_108[5];
                    int i;
                    if (p_1265->g_208)
                        goto lbl_251;
                    (*l_252) = p_1265->g_108[p_1265->g_202];
                }
                (*p_1265->g_265) = (((l_261[2] = (safe_div_func_int16_t_s_s(((safe_mod_func_int32_t_s_s(((0xA6F62464D5561ADEL ^ p_1265->g_159) < (((safe_rshift_func_int8_t_s_u((safe_mod_func_int8_t_s_s((*p_1265->g_99), (((((l_261[0] <= (+l_262)) && l_263) , p_45) != ((p_44 | (-7L)) , &p_1265->g_83)) | 1L))), p_44)) , l_262) != 7UL)), l_263)) , l_262), p_1265->g_60[5]))) == l_263) , p_46);
                (*l_266) = (*p_1265->g_229);
            }
            return p_1265->g_208;
        }
        --p_1265->g_268;
        for (p_1265->g_71 = 2; (p_1265->g_71 >= 0); p_1265->g_71 -= 1)
        { /* block id: 109 */
            uint32_t l_276[4] = {0x35EFA3F5L,0x35EFA3F5L,0x35EFA3F5L,0x35EFA3F5L};
            uint32_t l_287[4];
            int i;
            for (i = 0; i < 4; i++)
                l_287[i] = 4294967293UL;
            l_267 = (safe_mod_func_int8_t_s_s(p_44, (l_267 , p_44)));
            for (p_44 = 0; (p_44 <= 2); p_44 += 1)
            { /* block id: 113 */
                uint32_t l_273 = 0UL;
                int32_t l_275 = (-1L);
                l_274 = (0L ^ ((l_273 = (p_44 || (p_1265->g_60[2] > p_1265->g_96))) ^ (*p_1265->g_230)));
                if ((*p_45))
                    continue;
                l_276[0]--;
                l_267 |= (FAKE_DIVERGE(p_1265->local_2_offset, get_local_id(2), 10) || 0x3194B4027C63D06EL);
                for (p_1265->g_202 = 0; (p_1265->g_202 <= 2); p_1265->g_202 += 1)
                { /* block id: 121 */
                    int32_t l_285 = 0x5FB35C9DL;
                    int32_t l_286 = 0x5AE7BCCAL;
                    int i, j, k;
                    if ((*p_45))
                        break;
                    for (l_275 = 0; (l_275 <= 2); l_275 += 1)
                    { /* block id: 125 */
                        uint16_t *l_283 = (void*)0;
                        uint16_t *l_284[9][8] = {{&p_1265->g_159,&p_1265->g_159,&p_1265->g_226,&l_274,(void*)0,&l_274,&p_1265->g_226,&p_1265->g_159},{&p_1265->g_159,&p_1265->g_159,&p_1265->g_226,&l_274,(void*)0,&l_274,&p_1265->g_226,&p_1265->g_159},{&p_1265->g_159,&p_1265->g_159,&p_1265->g_226,&l_274,(void*)0,&l_274,&p_1265->g_226,&p_1265->g_159},{&p_1265->g_159,&p_1265->g_159,&p_1265->g_226,&l_274,(void*)0,&l_274,&p_1265->g_226,&p_1265->g_159},{&p_1265->g_159,&p_1265->g_159,&p_1265->g_226,&l_274,(void*)0,&l_274,&p_1265->g_226,&p_1265->g_159},{&p_1265->g_159,&p_1265->g_159,&p_1265->g_226,&l_274,(void*)0,&l_274,&p_1265->g_226,&p_1265->g_159},{&p_1265->g_159,&p_1265->g_159,&p_1265->g_226,&l_274,(void*)0,&l_274,&p_1265->g_226,&p_1265->g_159},{&p_1265->g_159,&p_1265->g_159,&p_1265->g_226,&l_274,(void*)0,&l_274,&p_1265->g_226,&p_1265->g_159},{&p_1265->g_159,&p_1265->g_159,&p_1265->g_226,&l_274,(void*)0,&l_274,&p_1265->g_226,&p_1265->g_159}};
                        int i, j, k;
                        l_285 &= ((safe_lshift_func_uint8_t_u_s(0x07L, (safe_sub_func_int16_t_s_s((-2L), (p_1265->g_159 = p_44))))) >= (l_238 == l_284[8][4]));
                        l_231[p_1265->g_202][p_1265->g_71][l_275] = l_231[p_1265->g_202][p_1265->g_71][p_44];
                    }
                    l_287[0]++;
                    for (p_1265->g_83 = 2; (p_1265->g_83 <= 7); p_1265->g_83 += 1)
                    { /* block id: 133 */
                        struct S0 l_290 = {-6L,-10L,0x504CD6CFL};
                        int i, j;
                        (*p_1265->g_291) = l_290;
                        return p_1265->g_100[p_1265->g_71][p_1265->g_83];
                    }
                }
            }
        }
    }
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_101 p_1265->g_3 p_1265->g_108 p_1265->g_71 p_1265->g_83 p_1265->g_99 p_1265->g_70 p_1265->g_78 p_1265->l_comm_values p_1265->g_90 p_1265->g_89 p_1265->g_153 p_1265->g_159 p_1265->g_167 p_1265->g_60 p_1265->g_100 p_1265->g_69 p_1265->g_209 p_1265->g_202 p_1265->g_220 p_1265->g_226
 * writes: p_1265->g_71 p_1265->g_83 p_1265->g_100 p_1265->g_153 p_1265->g_159 p_1265->g_108 p_1265->g_60 p_1265->g_202 p_1265->g_208 p_1265->g_90 p_1265->g_226
 */
int16_t  func_49(int32_t * p_50, int8_t * p_51, int32_t  p_52, int8_t ** p_53, struct S2 * p_1265)
{ /* block id: 20 */
    int8_t *l_104 = &p_1265->g_100[7][7];
    uint32_t l_105 = 3UL;
    uint8_t l_109 = 0xBBL;
    int32_t l_118 = 0x2D57F617L;
    int64_t l_188 = 0x12E4C4278173FFD4L;
    uint64_t *l_205[7][4] = {{&p_1265->g_60[5],&p_1265->g_60[2],&p_1265->g_60[2],&p_1265->g_60[1]},{&p_1265->g_60[5],&p_1265->g_60[2],&p_1265->g_60[2],&p_1265->g_60[1]},{&p_1265->g_60[5],&p_1265->g_60[2],&p_1265->g_60[2],&p_1265->g_60[1]},{&p_1265->g_60[5],&p_1265->g_60[2],&p_1265->g_60[2],&p_1265->g_60[1]},{&p_1265->g_60[5],&p_1265->g_60[2],&p_1265->g_60[2],&p_1265->g_60[1]},{&p_1265->g_60[5],&p_1265->g_60[2],&p_1265->g_60[2],&p_1265->g_60[1]},{&p_1265->g_60[5],&p_1265->g_60[2],&p_1265->g_60[2],&p_1265->g_60[1]}};
    int8_t l_206 = 0x4DL;
    int32_t l_223 = 0x1096EFEEL;
    int32_t l_224[5][7] = {{4L,2L,4L,4L,2L,4L,4L},{4L,2L,4L,4L,2L,4L,4L},{4L,2L,4L,4L,2L,4L,4L},{4L,2L,4L,4L,2L,4L,4L},{4L,2L,4L,4L,2L,4L,4L}};
    int i, j;
    if (((p_1265->g_101 , (((((((safe_mod_func_int16_t_s_s((l_104 != (l_105 , (void*)0)), (+(safe_sub_func_uint8_t_u_u(4UL, ((p_1265->g_3 > p_52) & 0x69BE69E5L)))))) , p_1265->g_108[5]) , l_105) && 1UL) == 0x05L) > l_109) & 0L)) || (-1L)))
    { /* block id: 21 */
        uint32_t l_123 = 4294967295UL;
        uint64_t *l_162 = &p_1265->g_60[5];
        struct S0 l_180 = {0x07313298L,-8L,4L};
        int16_t *l_181 = &p_1265->g_108[5].f1;
        int32_t *l_182 = (void*)0;
        int32_t *l_183 = &l_118;
        struct S0 *l_185 = &l_180;
        uint16_t *l_201 = &p_1265->g_202;
        int32_t *l_207[7] = {&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208,&p_1265->g_208};
        int i;
        for (p_1265->g_71 = 0; (p_1265->g_71 >= 2); ++p_1265->g_71)
        { /* block id: 24 */
            int32_t l_114 = (-1L);
            int32_t *l_147 = &p_1265->g_3;
            struct S0 l_165 = {0L,0x1665L,0x14813578L};
            for (p_1265->g_83 = (-18); (p_1265->g_83 > 34); p_1265->g_83++)
            { /* block id: 27 */
                int32_t *l_115 = (void*)0;
                int32_t *l_116 = &p_1265->g_108[5].f0;
                int32_t *l_117 = (void*)0;
                int32_t *l_119 = &l_118;
                int32_t *l_120 = &p_1265->g_108[5].f2;
                int32_t *l_121 = (void*)0;
                int32_t *l_122[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_122[i] = &p_1265->g_90[0][4][1];
                l_123--;
                if (((((safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((((**p_53) = (-4L)) <= (safe_sub_func_uint16_t_u_u((((p_52 != (safe_div_func_uint32_t_u_u(0x0433F7C1L, (safe_div_func_uint16_t_u_u(p_1265->g_70, (safe_lshift_func_uint16_t_u_u((((safe_mod_func_uint64_t_u_u(p_1265->g_78, p_52)) > (p_1265->g_108[5].f2 < (((p_1265->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1265->tid, 5))] , &p_1265->g_83) == p_50) == p_52))) , (*l_119)), 10))))))) || 0x5914L) , FAKE_DIVERGE(p_1265->global_0_offset, get_global_id(0), 10)), l_114))) && l_114), p_1265->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1265->tid, 5))])), 0xC3L)) < p_52) || (*l_116)) ^ p_1265->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1265->tid, 5))]))
                { /* block id: 30 */
                    if ((*l_119))
                        break;
                    l_118 = 0x5E1B850BL;
                    if ((*l_116))
                        break;
                    if (p_1265->g_90[0][4][1])
                        continue;
                }
                else
                { /* block id: 35 */
                    uint32_t l_140 = 2UL;
                    --l_140;
                }
            }
            for (p_1265->g_83 = (-11); (p_1265->g_83 < 59); p_1265->g_83 = safe_add_func_int64_t_s_s(p_1265->g_83, 5))
            { /* block id: 41 */
                for (l_105 = (-19); (l_105 <= 29); l_105 = safe_add_func_int16_t_s_s(l_105, 3))
                { /* block id: 44 */
                    int32_t **l_148 = &l_147;
                    (*l_148) = l_147;
                }
                if (p_1265->g_83)
                    goto lbl_184;
                return p_52;
            }
            for (l_114 = 5; (l_114 >= 0); l_114 -= 1)
            { /* block id: 51 */
                uint16_t *l_158 = &p_1265->g_159;
                uint64_t *l_164 = (void*)0;
                uint64_t **l_163 = &l_164;
                (*p_1265->g_167) = (((((safe_add_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((p_1265->g_153 |= p_1265->g_89), (safe_div_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(p_1265->g_108[5].f1, (--(*l_158)))), (-1L))))), ((l_162 = l_162) == ((*l_163) = &p_1265->g_60[5])))) >= l_109) != p_52) , ((p_52 ^ ((((**p_53) = (*l_147)) , p_1265->g_89) > p_52)) && p_52)) , l_165);
            }
        }
lbl_184:
        (*l_183) |= ((((*l_181) = ((p_52 || (--(*l_162))) , (safe_sub_func_uint64_t_u_u(((*l_162) = (((safe_rshift_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u(((void*)0 == &p_50), (safe_lshift_func_uint16_t_u_u((p_1265->g_159 = p_52), 11)))) ^ (!((((((safe_div_func_uint64_t_u_u(p_52, 7L)) , (1UL & ((**p_53) ^ (l_180 , FAKE_DIVERGE(p_1265->global_0_offset, get_global_id(0), 10))))) || 0x279AL) == l_180.f0) != p_1265->g_108[5].f0) > 0L))), p_52)) , l_109) && (*p_1265->g_69))), 0x1DBAD59F2A3873CEL)))) < p_1265->g_90[0][2][1]) > l_109);
        (*l_185) = l_180;
        (*p_1265->g_209) |= ((safe_lshift_func_int8_t_s_s(((-1L) || p_1265->g_159), ((l_188 <= (p_52 > (((safe_mul_func_uint16_t_u_u(p_1265->g_60[4], (safe_mod_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u((p_1265->g_3 == ((FAKE_DIVERGE(p_1265->group_2_offset, get_group_id(2), 10) <= ((~((((p_1265->g_208 = ((p_1265->g_108[5].f2 != (((safe_sub_func_uint64_t_u_u((((*p_1265->g_99) = ((((safe_add_func_uint16_t_u_u(((((safe_add_func_uint8_t_u_u((((*l_201) = p_1265->g_90[0][4][1]) && (safe_add_func_int16_t_s_s(((*l_183) ^ 0x53E32F46L), 7UL))), (-1L))) , (void*)0) == l_205[2][0]) > GROUP_DIVERGE(0, 1)), l_206)) , (*p_50)) | p_1265->g_83) , 0x05L)) < (*l_183)), 0x09B53E802EC767E1L)) , p_52) || p_1265->g_3)) ^ (*l_183))) , p_50) == &p_1265->g_90[0][4][1]) , p_52)) | l_188)) != 4294967287UL)), 0x249FL)), (*p_50))))) >= (-1L)) , 0x784F3F3ED43D4350L))) > (-1L)))) & 0xB188L);
    }
    else
    { /* block id: 71 */
        uint64_t **l_210 = &l_205[2][0];
        int32_t l_211 = 0x4D80B03EL;
        uint16_t *l_212 = (void*)0;
        uint16_t *l_213 = &p_1265->g_202;
        int32_t *l_221 = &p_1265->g_90[0][4][1];
        int32_t *l_222[6][4] = {{(void*)0,&p_1265->g_90[2][3][0],(void*)0,(void*)0},{(void*)0,&p_1265->g_90[2][3][0],(void*)0,(void*)0},{(void*)0,&p_1265->g_90[2][3][0],(void*)0,(void*)0},{(void*)0,&p_1265->g_90[2][3][0],(void*)0,(void*)0},{(void*)0,&p_1265->g_90[2][3][0],(void*)0,(void*)0},{(void*)0,&p_1265->g_90[2][3][0],(void*)0,(void*)0}};
        int32_t l_225 = 1L;
        int i, j;
        (*p_1265->g_220) = ((((l_210 != l_210) < ((-3L) | (--(*l_213)))) || (p_52 && ((p_52 , (((((l_118 , (((safe_mod_func_uint64_t_u_u(1UL, (((5UL > ((safe_sub_func_uint32_t_u_u(((6L == (*p_51)) != 0x01L), p_52)) < l_118)) < l_206) ^ l_105))) , p_52) > 0x0FL)) && 8UL) || p_1265->g_108[5].f2) < l_211) , (void*)0)) == (void*)0))) || p_1265->g_70);
        --p_1265->g_226;
        return p_52;
    }
    return p_1265->g_108[5].f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_96 p_1265->g_99
 * writes: p_1265->g_96
 */
int8_t * func_54(int16_t  p_55, struct S2 * p_1265)
{ /* block id: 16 */
    int32_t *l_87 = &p_1265->g_71;
    int32_t *l_88[9][2] = {{&p_1265->g_3,&p_1265->g_71},{&p_1265->g_3,&p_1265->g_71},{&p_1265->g_3,&p_1265->g_71},{&p_1265->g_3,&p_1265->g_71},{&p_1265->g_3,&p_1265->g_71},{&p_1265->g_3,&p_1265->g_71},{&p_1265->g_3,&p_1265->g_71},{&p_1265->g_3,&p_1265->g_71},{&p_1265->g_3,&p_1265->g_71}};
    int8_t l_91 = 0x4AL;
    int32_t l_92[6] = {0x67429D79L,0x68BEEE5FL,0x67429D79L,0x67429D79L,0x68BEEE5FL,0x67429D79L};
    uint32_t l_93 = 4294967295UL;
    int i, j;
    l_93++;
    p_1265->g_96--;
    return p_1265->g_99;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_68 p_1265->g_71 p_1265->g_78 p_1265->g_60 p_1265->g_83 p_1265->g_3
 * writes: p_1265->g_78 p_1265->g_83
 */
int64_t  func_56(uint64_t  p_57, int64_t  p_58, struct S2 * p_1265)
{ /* block id: 10 */
    int32_t l_63[10][10][2] = {{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}},{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}},{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}},{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}},{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}},{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}},{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}},{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}},{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}},{{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL},{0x178833E6L,0x5229656DL}}};
    int16_t *l_76 = (void*)0;
    int16_t *l_77 = &p_1265->g_78;
    int32_t l_79 = 0x4324F1CCL;
    int8_t l_80 = 0L;
    uint32_t *l_81 = (void*)0;
    uint32_t *l_82 = &p_1265->g_83;
    int32_t *l_86 = &p_1265->g_3;
    int32_t **l_85 = &l_86;
    int i, j, k;
    (*l_85) = (((((safe_add_func_uint8_t_u_u((l_63[8][6][0] & p_58), (safe_mul_func_int16_t_s_s(((((*l_82) &= (safe_add_func_uint8_t_u_u(((l_79 = (0UL || ((l_63[8][6][0] , ((((void*)0 == p_1265->g_68) & p_1265->g_71) >= (p_58 == (((*l_77) &= (((safe_rshift_func_uint16_t_u_s((((safe_add_func_int32_t_s_s((p_57 | l_63[5][9][0]), l_63[7][5][1])) , &p_1265->g_60[4]) == (void*)0), p_58)) , l_63[6][2][0]) < 0x10L)) == l_63[4][7][1])))) >= l_63[2][0][1]))) != p_1265->g_60[4]), l_80))) <= p_1265->g_71) ^ 0x49L), p_1265->g_3)))) | p_1265->g_60[5]) <= p_58) , 0x0C926BDCL) , &l_79);
    return p_1265->g_71;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[5];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 5; i++)
            l_comm_values[i] = 1;
    struct S2 c_1266;
    struct S2* p_1265 = &c_1266;
    struct S2 c_1267 = {
        (-9L), // p_1265->g_3
        1UL, // p_1265->g_27
        (void*)0, // p_1265->g_34
        {0UL,18446744073709551615UL,0UL,0UL,18446744073709551615UL,0UL}, // p_1265->g_60
        0x2FL, // p_1265->g_70
        &p_1265->g_70, // p_1265->g_69
        &p_1265->g_69, // p_1265->g_68
        6L, // p_1265->g_71
        0x059FL, // p_1265->g_78
        4294967287UL, // p_1265->g_83
        (void*)0, // p_1265->g_84
        0x37L, // p_1265->g_89
        {{{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL}},{{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL}},{{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL}},{{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL},{0x13687EAFL,0x13687EAFL,0x5D3F9A7CL}}}, // p_1265->g_90
        0xB1443286L, // p_1265->g_96
        {{0x42L,1L,0L,4L,0L,1L,0x42L,0x18L},{0x42L,1L,0L,4L,0L,1L,0x42L,0x18L},{0x42L,1L,0L,4L,0L,1L,0x42L,0x18L},{0x42L,1L,0L,4L,0L,1L,0x42L,0x18L},{0x42L,1L,0L,4L,0L,1L,0x42L,0x18L},{0x42L,1L,0L,4L,0L,1L,0x42L,0x18L},{0x42L,1L,0L,4L,0L,1L,0x42L,0x18L},{0x42L,1L,0L,4L,0L,1L,0x42L,0x18L}}, // p_1265->g_100
        &p_1265->g_100[2][1], // p_1265->g_99
        {0}, // p_1265->g_101
        {{1L,0x55F7L,-3L},{1L,0x55F7L,-3L},{1L,0x55F7L,-3L},{1L,0x55F7L,-3L},{1L,0x55F7L,-3L},{1L,0x55F7L,-3L},{1L,0x55F7L,-3L},{1L,0x55F7L,-3L}}, // p_1265->g_108
        0xEF561389L, // p_1265->g_153
        0x4A0BL, // p_1265->g_159
        (void*)0, // p_1265->g_166
        &p_1265->g_108[0], // p_1265->g_167
        65530UL, // p_1265->g_202
        8L, // p_1265->g_208
        &p_1265->g_108[5].f0, // p_1265->g_209
        &p_1265->g_90[0][4][1], // p_1265->g_220
        0x3027L, // p_1265->g_226
        &p_1265->g_71, // p_1265->g_230
        &p_1265->g_230, // p_1265->g_229
        {0}, // p_1265->g_234
        &p_1265->g_230, // p_1265->g_239
        &p_1265->g_234, // p_1265->g_245
        (void*)0, // p_1265->g_246
        &p_1265->g_230, // p_1265->g_265
        0UL, // p_1265->g_268
        &p_1265->g_108[5], // p_1265->g_291
        &p_1265->g_90[0][4][1], // p_1265->g_296
        (void*)0, // p_1265->g_300
        0x802E1E27F1656DC4L, // p_1265->g_321
        {0L,8L,-4L}, // p_1265->g_367
        {0xF9L}, // p_1265->g_369
        0x10CC3882L, // p_1265->g_387
        (void*)0, // p_1265->g_395
        {{{0x7801DF3C7DC82A3BL,0UL},{0x7801DF3C7DC82A3BL,0UL}},{{0x7801DF3C7DC82A3BL,0UL},{0x7801DF3C7DC82A3BL,0UL}},{{0x7801DF3C7DC82A3BL,0UL},{0x7801DF3C7DC82A3BL,0UL}},{{0x7801DF3C7DC82A3BL,0UL},{0x7801DF3C7DC82A3BL,0UL}},{{0x7801DF3C7DC82A3BL,0UL},{0x7801DF3C7DC82A3BL,0UL}},{{0x7801DF3C7DC82A3BL,0UL},{0x7801DF3C7DC82A3BL,0UL}},{{0x7801DF3C7DC82A3BL,0UL},{0x7801DF3C7DC82A3BL,0UL}},{{0x7801DF3C7DC82A3BL,0UL},{0x7801DF3C7DC82A3BL,0UL}},{{0x7801DF3C7DC82A3BL,0UL},{0x7801DF3C7DC82A3BL,0UL}}}, // p_1265->g_472
        &p_1265->g_69, // p_1265->g_569
        &p_1265->g_569, // p_1265->g_568
        &p_1265->g_300, // p_1265->g_571
        &p_1265->g_571, // p_1265->g_570
        (void*)0, // p_1265->g_619
        {&p_1265->g_619,&p_1265->g_619,&p_1265->g_619,&p_1265->g_619,&p_1265->g_619,&p_1265->g_619,&p_1265->g_619,&p_1265->g_619,&p_1265->g_619}, // p_1265->g_618
        (void*)0, // p_1265->g_627
        &p_1265->g_230, // p_1265->g_628
        {-8L,-1L,0x2152099FL}, // p_1265->g_632
        &p_1265->g_632, // p_1265->g_631
        &p_1265->g_472[3][0][1], // p_1265->g_684
        {&p_1265->g_472[0][0][1]}, // p_1265->g_690
        &p_1265->g_690[0], // p_1265->g_689
        {0}, // p_1265->g_737
        {0}, // p_1265->g_741
        {{{0xC0BEB5F9L},{0xC0BEB5F9L}},{{0xC0BEB5F9L},{0xC0BEB5F9L}},{{0xC0BEB5F9L},{0xC0BEB5F9L}},{{0xC0BEB5F9L},{0xC0BEB5F9L}},{{0xC0BEB5F9L},{0xC0BEB5F9L}},{{0xC0BEB5F9L},{0xC0BEB5F9L}},{{0xC0BEB5F9L},{0xC0BEB5F9L}},{{0xC0BEB5F9L},{0xC0BEB5F9L}}}, // p_1265->g_827
        4294967295UL, // p_1265->g_830
        &p_1265->g_367.f0, // p_1265->g_837
        0xDC016F8EL, // p_1265->g_865
        &p_1265->g_230, // p_1265->g_906
        6UL, // p_1265->g_955
        2UL, // p_1265->g_1020
        &p_1265->g_1020, // p_1265->g_1019
        {&p_1265->g_1019,&p_1265->g_1019,&p_1265->g_1019,&p_1265->g_1019}, // p_1265->g_1018
        {{{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0}}}, // p_1265->g_1025
        {&p_1265->g_34,&p_1265->g_34,&p_1265->g_34,&p_1265->g_34,&p_1265->g_34,&p_1265->g_34,&p_1265->g_34,&p_1265->g_34,&p_1265->g_34,&p_1265->g_34}, // p_1265->g_1038
        (void*)0, // p_1265->g_1078
        {&p_1265->g_367.f2,&p_1265->g_367.f2,&p_1265->g_367.f2,&p_1265->g_367.f2,&p_1265->g_367.f2,&p_1265->g_367.f2,&p_1265->g_367.f2,&p_1265->g_367.f2,&p_1265->g_367.f2,&p_1265->g_367.f2}, // p_1265->g_1080
        (void*)0, // p_1265->g_1107
        {&p_1265->g_1107,&p_1265->g_1107,&p_1265->g_1107,&p_1265->g_1107,&p_1265->g_1107,&p_1265->g_1107,&p_1265->g_1107,&p_1265->g_1107,&p_1265->g_1107,&p_1265->g_1107}, // p_1265->g_1106
        (void*)0, // p_1265->g_1132
        &p_1265->g_246, // p_1265->g_1133
        &p_1265->g_1038[6], // p_1265->g_1173
        (void*)0, // p_1265->g_1179
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1265->g_1187
        &p_1265->g_1187[1], // p_1265->g_1186
        &p_1265->g_865, // p_1265->g_1208
        (void*)0, // p_1265->g_1249
        (void*)0, // p_1265->g_1250
        sequence_input[get_global_id(0)], // p_1265->global_0_offset
        sequence_input[get_global_id(1)], // p_1265->global_1_offset
        sequence_input[get_global_id(2)], // p_1265->global_2_offset
        sequence_input[get_local_id(0)], // p_1265->local_0_offset
        sequence_input[get_local_id(1)], // p_1265->local_1_offset
        sequence_input[get_local_id(2)], // p_1265->local_2_offset
        sequence_input[get_group_id(0)], // p_1265->group_0_offset
        sequence_input[get_group_id(1)], // p_1265->group_1_offset
        sequence_input[get_group_id(2)], // p_1265->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[0][get_linear_local_id()])), // p_1265->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1266 = c_1267;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1265);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1265->g_3, "p_1265->g_3", print_hash_value);
    transparent_crc(p_1265->g_27, "p_1265->g_27", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1265->g_60[i], "p_1265->g_60[i]", print_hash_value);

    }
    transparent_crc(p_1265->g_70, "p_1265->g_70", print_hash_value);
    transparent_crc(p_1265->g_71, "p_1265->g_71", print_hash_value);
    transparent_crc(p_1265->g_78, "p_1265->g_78", print_hash_value);
    transparent_crc(p_1265->g_83, "p_1265->g_83", print_hash_value);
    transparent_crc(p_1265->g_89, "p_1265->g_89", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1265->g_90[i][j][k], "p_1265->g_90[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1265->g_96, "p_1265->g_96", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1265->g_100[i][j], "p_1265->g_100[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1265->g_108[i].f0, "p_1265->g_108[i].f0", print_hash_value);
        transparent_crc(p_1265->g_108[i].f1, "p_1265->g_108[i].f1", print_hash_value);
        transparent_crc(p_1265->g_108[i].f2, "p_1265->g_108[i].f2", print_hash_value);

    }
    transparent_crc(p_1265->g_153, "p_1265->g_153", print_hash_value);
    transparent_crc(p_1265->g_159, "p_1265->g_159", print_hash_value);
    transparent_crc(p_1265->g_202, "p_1265->g_202", print_hash_value);
    transparent_crc(p_1265->g_208, "p_1265->g_208", print_hash_value);
    transparent_crc(p_1265->g_226, "p_1265->g_226", print_hash_value);
    transparent_crc(p_1265->g_268, "p_1265->g_268", print_hash_value);
    transparent_crc(p_1265->g_321, "p_1265->g_321", print_hash_value);
    transparent_crc(p_1265->g_367.f0, "p_1265->g_367.f0", print_hash_value);
    transparent_crc(p_1265->g_367.f1, "p_1265->g_367.f1", print_hash_value);
    transparent_crc(p_1265->g_367.f2, "p_1265->g_367.f2", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1265->g_369[i], "p_1265->g_369[i]", print_hash_value);

    }
    transparent_crc(p_1265->g_387, "p_1265->g_387", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1265->g_472[i][j][k], "p_1265->g_472[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1265->g_632.f0, "p_1265->g_632.f0", print_hash_value);
    transparent_crc(p_1265->g_632.f1, "p_1265->g_632.f1", print_hash_value);
    transparent_crc(p_1265->g_632.f2, "p_1265->g_632.f2", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1265->g_827[i][j][k], "p_1265->g_827[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1265->g_830, "p_1265->g_830", print_hash_value);
    transparent_crc(p_1265->g_865, "p_1265->g_865", print_hash_value);
    transparent_crc(p_1265->g_955, "p_1265->g_955", print_hash_value);
    transparent_crc(p_1265->g_1020, "p_1265->g_1020", print_hash_value);
    transparent_crc(p_1265->l_comm_values[get_linear_local_id()], "p_1265->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1265->g_comm_values[get_linear_group_id() * 5 + get_linear_local_id()], "p_1265->g_comm_values[get_linear_group_id() * 5 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
