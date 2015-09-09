// ---fake_divergence -g 18,31,1 -l 1,1,1
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


// Seed: 99

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int32_t g_31;
    int32_t *g_30;
    int32_t g_68[1][7];
    int64_t g_81;
    int16_t g_82;
    int32_t g_86;
    VECTOR(uint32_t, 2) g_90;
    uint64_t g_100;
    volatile VECTOR(uint32_t, 16) g_126;
    volatile VECTOR(uint16_t, 16) g_129;
    uint8_t g_134;
    uint16_t g_136;
    uint32_t g_209;
    VECTOR(uint32_t, 2) g_240;
    volatile VECTOR(uint32_t, 2) g_241;
    uint8_t g_302;
    VECTOR(uint16_t, 2) g_312;
    volatile VECTOR(int16_t, 16) g_336;
    uint32_t g_365;
    volatile VECTOR(int32_t, 4) g_377;
    uint16_t g_379;
    VECTOR(int64_t, 4) g_380;
    volatile VECTOR(int64_t, 16) g_381;
    int8_t g_390;
    int8_t *g_389;
    volatile VECTOR(int32_t, 4) g_408;
    volatile int32_t * volatile g_428;
    volatile int32_t * volatile *g_427;
    volatile int32_t * volatile **g_426;
    volatile VECTOR(uint32_t, 2) g_429;
    int64_t *g_459;
    VECTOR(int16_t, 8) g_467;
    int8_t g_483;
    int32_t ***g_547;
    uint64_t *g_569[4][10][6];
    uint64_t ** volatile g_568;
    uint64_t **g_570;
    VECTOR(uint32_t, 2) g_572;
    uint32_t g_576;
    VECTOR(int16_t, 4) g_606;
    volatile int32_t g_607[5][5];
    VECTOR(uint64_t, 2) g_612;
    VECTOR(uint64_t, 16) g_614;
    int32_t * volatile g_692[3][9];
    int32_t * volatile g_693;
    volatile int32_t **g_725;
    volatile int32_t ** volatile * volatile g_724[6];
    VECTOR(uint8_t, 4) g_753;
    int32_t *g_771;
    int32_t g_776[7];
    volatile VECTOR(uint32_t, 4) g_797;
    VECTOR(int32_t, 16) g_804;
    VECTOR(uint8_t, 2) g_814;
    VECTOR(int16_t, 8) g_832;
    uint32_t g_849;
    uint8_t *g_852[9][3];
    VECTOR(int8_t, 8) g_856;
    volatile VECTOR(int16_t, 4) g_875;
    uint64_t g_894;
    VECTOR(int8_t, 8) g_897;
    uint8_t **g_930;
    uint8_t ***g_929;
    uint16_t *g_987;
    uint16_t **g_986;
    VECTOR(int32_t, 16) g_999;
    volatile VECTOR(int64_t, 16) g_1006;
    VECTOR(uint16_t, 4) g_1009;
    VECTOR(int32_t, 4) g_1020;
    uint16_t *** volatile g_1033;
    int16_t *g_1074;
    int64_t g_1092[1];
    VECTOR(int8_t, 16) g_1139;
    uint64_t g_1151;
    int32_t ** volatile g_1167;
    int32_t * volatile g_1174[7][5][4];
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
uint64_t  func_1(struct S0 * p_1176);
int32_t * func_5(uint8_t  p_6, uint32_t  p_7, int32_t * p_8, int32_t * p_9, int32_t * p_10, struct S0 * p_1176);
int32_t * func_13(int64_t  p_14, int32_t * p_15, uint8_t  p_16, uint32_t  p_17, struct S0 * p_1176);
uint32_t  func_20(int8_t  p_21, uint32_t  p_22, int32_t  p_23, uint8_t  p_24, struct S0 * p_1176);
int8_t  func_25(int64_t  p_26, int32_t * p_27, int32_t * p_28, struct S0 * p_1176);
int32_t * func_37(int32_t ** p_38, int32_t ** p_39, int32_t * p_40, int32_t  p_41, int8_t  p_42, struct S0 * p_1176);
int32_t ** func_43(uint64_t  p_44, uint32_t  p_45, struct S0 * p_1176);
uint64_t  func_50(uint32_t  p_51, int32_t  p_52, struct S0 * p_1176);
int32_t  func_53(int32_t  p_54, int32_t ** p_55, uint32_t  p_56, struct S0 * p_1176);
int32_t  func_69(int32_t  p_70, int64_t  p_71, int32_t ** p_72, struct S0 * p_1176);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1176->g_2 p_1176->g_240 p_1176->g_365 p_1176->g_408 p_1176->g_426 p_1176->g_31 p_1176->g_427 p_1176->g_428 p_1176->g_302 p_1176->g_241 p_1176->g_377 p_1176->g_459 p_1176->g_81 p_1176->g_389 p_1176->g_390 p_1176->g_68 p_1176->g_209 p_1176->g_90 p_1176->g_100 p_1176->g_381 p_1176->g_572 p_1176->g_467 p_1176->g_86 p_1176->g_312 p_1176->g_612 p_1176->g_693 p_1176->g_30 p_1176->g_771 p_1176->g_483 p_1176->g_614 p_1176->g_606 p_1176->g_576 p_1176->g_894 p_1176->g_1139 p_1176->g_126 p_1176->g_82 p_1176->g_1151
 * writes: p_1176->g_2 p_1176->g_390 p_1176->g_302 p_1176->g_209 p_1176->g_483 p_1176->g_81 p_1176->g_408 p_1176->g_379 p_1176->g_86 p_1176->g_31 p_1176->g_570 p_1176->g_365 p_1176->g_68 p_1176->g_30 p_1176->g_771 p_1176->g_692 p_1176->g_576 p_1176->g_428 p_1176->g_894 p_1176->g_82
 */
uint64_t  func_1(struct S0 * p_1176)
{ /* block id: 4 */
    int32_t l_12 = 2L;
    int32_t *l_32 = &p_1176->g_31;
    int32_t l_1132 = 0x1A754E3AL;
    int16_t *l_1170 = (void*)0;
    int16_t *l_1171 = &p_1176->g_82;
    int32_t *l_1175 = &p_1176->g_86;
    for (p_1176->g_2 = 0; (p_1176->g_2 == 17); ++p_1176->g_2)
    { /* block id: 7 */
        int32_t *l_11 = &p_1176->g_2;
        int32_t **l_29[4];
        int i;
        for (i = 0; i < 4; i++)
            l_29[i] = (void*)0;
        p_1176->g_692[2][4] = func_5((p_1176->g_2 >= ((void*)0 != l_11)), l_12, &p_1176->g_2, func_13((safe_add_func_uint32_t_u_u((l_12 >= p_1176->g_2), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 8))(4294967290UL, func_20(func_25(p_1176->g_2, (p_1176->g_30 = (void*)0), l_32, p_1176), (*l_11), p_1176->g_312.x, p_1176->g_312.y, p_1176), 0UL, p_1176->g_31, 0UL, ((VECTOR(uint32_t, 2))(0UL)), 4294967292UL)).lo, (uint32_t)FAKE_DIVERGE(p_1176->local_0_offset, get_local_id(0), 10)))).even)).lo)), &p_1176->g_2, p_1176->g_240.x, (*l_11), p_1176), l_32, p_1176);
        l_1132 |= ((*l_32) |= (&p_1176->g_427 == (void*)0));
        (*p_1176->g_427) = (*p_1176->g_427);
        if ((*l_32))
            break;
    }
    for (p_1176->g_894 = (-13); (p_1176->g_894 <= 38); ++p_1176->g_894)
    { /* block id: 427 */
        uint8_t *l_1140 = &p_1176->g_134;
        int32_t l_1143 = 0x4FA7E1D0L;
        int16_t *l_1148 = (void*)0;
        int16_t *l_1149[1][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t l_1150 = 0x6A0ACFF1L;
        int32_t *l_1152 = (void*)0;
        int32_t *l_1153 = (void*)0;
        int32_t *l_1154[6][4][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        uint64_t *l_1158 = &p_1176->g_894;
        int i, j, k;
        l_1132 &= (safe_add_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u((((*p_1176->g_389) ^= ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_1176->g_1139.s3380)).ywxyxzxw)).s3) || ((p_1176->g_572.y , ((*p_1176->g_389) = ((l_1140 != ((safe_mul_func_int8_t_s_s(l_1143, (GROUP_DIVERGE(1, 1) != (((0x871DA498B32CD25EL >= (safe_add_func_int64_t_s_s(((*p_1176->g_459) = ((*l_32) < l_1143)), (safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (p_1176->g_126.sc , l_1143)))))) != (l_1150 = l_1143)) ^ l_1143)))) , (void*)0)) & 0x98BCF2F436226379L))) == p_1176->g_82)), l_1143)), p_1176->g_1151));
        for (p_1176->g_390 = 25; (p_1176->g_390 <= (-19)); --p_1176->g_390)
        { /* block id: 435 */
            uint64_t *l_1157[2];
            uint64_t **l_1159 = &l_1158;
            int32_t l_1160 = 1L;
            int32_t **l_1165 = (void*)0;
            int32_t **l_1166 = &l_1153;
            int i;
            for (i = 0; i < 2; i++)
                l_1157[i] = &p_1176->g_894;
            (*l_32) = (((l_1157[0] != ((*l_1159) = l_1158)) && l_1160) || ((-1L) < (safe_mul_func_int8_t_s_s((0x44BAL >= l_1160), (safe_mul_func_int8_t_s_s((*p_1176->g_389), l_1160))))));
        }
    }
    (*l_1175) ^= ((*l_32) != (safe_rshift_func_int16_t_s_u(((*l_1171) &= (-5L)), (safe_rshift_func_int8_t_s_s(((*p_1176->g_389) &= (*l_32)), 1)))));
    (*l_1175) = (l_1175 != &p_1176->g_365);
    return (*l_1175);
}


/* ------------------------------------------ */
/* 
 * reads : p_1176->g_576 p_1176->g_724 p_1176->g_459 p_1176->g_389 p_1176->g_390 p_1176->g_30 p_1176->g_90 p_1176->g_797 p_1176->g_804 p_1176->g_379 p_1176->g_302 p_1176->g_209 p_1176->g_377 p_1176->g_771 p_1176->g_31 p_1176->g_81 p_1176->g_483 p_1176->g_240 p_1176->g_614 p_1176->g_606 p_1176->g_68 p_1176->g_2
 * writes: p_1176->g_576 p_1176->g_209 p_1176->g_81 p_1176->g_30 p_1176->g_771 p_1176->g_692 p_1176->g_379 p_1176->g_31 p_1176->g_68
 */
int32_t * func_5(uint8_t  p_6, uint32_t  p_7, int32_t * p_8, int32_t * p_9, int32_t * p_10, struct S0 * p_1176)
{ /* block id: 272 */
    VECTOR(uint32_t, 16) l_706 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xE4A146B3L), 0xE4A146B3L), 0xE4A146B3L, 1UL, 0xE4A146B3L, (VECTOR(uint32_t, 2))(1UL, 0xE4A146B3L), (VECTOR(uint32_t, 2))(1UL, 0xE4A146B3L), 1UL, 0xE4A146B3L, 1UL, 0xE4A146B3L);
    uint32_t *l_707 = (void*)0;
    uint32_t *l_708 = (void*)0;
    uint32_t *l_709 = &p_1176->g_576;
    uint32_t *l_710 = (void*)0;
    uint32_t *l_711 = &p_1176->g_209;
    int32_t **l_723 = &p_1176->g_30;
    int32_t ***l_722 = &l_723;
    VECTOR(int8_t, 4) l_760 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x16L), 0x16L);
    int32_t l_761 = 1L;
    VECTOR(int8_t, 4) l_762 = (VECTOR(int8_t, 4))(0x7AL, (VECTOR(int8_t, 2))(0x7AL, 1L), 1L);
    int32_t l_766 = 0L;
    int64_t **l_791[1];
    VECTOR(int32_t, 2) l_805 = (VECTOR(int32_t, 2))(0x0DCC4C3DL, 0x320CE3D0L);
    uint8_t l_806[5] = {0x46L,0x46L,0x46L,0x46L,0x46L};
    int32_t *l_808[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(uint8_t, 4) l_816 = (VECTOR(uint8_t, 4))(0x74L, (VECTOR(uint8_t, 2))(0x74L, 0xA9L), 0xA9L);
    VECTOR(int16_t, 8) l_834 = (VECTOR(int16_t, 8))(0x697EL, (VECTOR(int16_t, 4))(0x697EL, (VECTOR(int16_t, 2))(0x697EL, 1L), 1L), 1L, 0x697EL, 1L);
    int16_t l_851 = (-9L);
    int8_t l_871 = 0x4AL;
    uint64_t **l_877 = &p_1176->g_569[1][1][1];
    VECTOR(uint32_t, 8) l_940 = (VECTOR(uint32_t, 8))(0xF192A876L, (VECTOR(uint32_t, 4))(0xF192A876L, (VECTOR(uint32_t, 2))(0xF192A876L, 0x6D83ABCCL), 0x6D83ABCCL), 0x6D83ABCCL, 0xF192A876L, 0x6D83ABCCL);
    VECTOR(int8_t, 16) l_960 = (VECTOR(int8_t, 16))(0x6AL, (VECTOR(int8_t, 4))(0x6AL, (VECTOR(int8_t, 2))(0x6AL, 0x1CL), 0x1CL), 0x1CL, 0x6AL, 0x1CL, (VECTOR(int8_t, 2))(0x6AL, 0x1CL), (VECTOR(int8_t, 2))(0x6AL, 0x1CL), 0x6AL, 0x1CL, 0x6AL, 0x1CL);
    VECTOR(int32_t, 8) l_976 = (VECTOR(int32_t, 8))(0x5AC5FDF4L, (VECTOR(int32_t, 4))(0x5AC5FDF4L, (VECTOR(int32_t, 2))(0x5AC5FDF4L, 0x266C4EEAL), 0x266C4EEAL), 0x266C4EEAL, 0x5AC5FDF4L, 0x266C4EEAL);
    VECTOR(uint16_t, 4) l_1012 = (VECTOR(uint16_t, 4))(0x2609L, (VECTOR(uint16_t, 2))(0x2609L, 65535UL), 65535UL);
    int64_t l_1018 = 0x3DB39DFFD666F3B1L;
    int64_t l_1023 = 8L;
    uint32_t l_1052 = 4294967295UL;
    VECTOR(int32_t, 16) l_1077 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L), (VECTOR(int32_t, 2))(1L, (-5L)), (VECTOR(int32_t, 2))(1L, (-5L)), 1L, (-5L), 1L, (-5L));
    uint64_t l_1113 = 1UL;
    VECTOR(uint8_t, 16) l_1121 = (VECTOR(uint8_t, 16))(0xA6L, (VECTOR(uint8_t, 4))(0xA6L, (VECTOR(uint8_t, 2))(0xA6L, 0UL), 0UL), 0UL, 0xA6L, 0UL, (VECTOR(uint8_t, 2))(0xA6L, 0UL), (VECTOR(uint8_t, 2))(0xA6L, 0UL), 0xA6L, 0UL, 0xA6L, 0UL);
    VECTOR(int8_t, 16) l_1128 = (VECTOR(int8_t, 16))(0x28L, (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 0x66L), 0x66L), 0x66L, 0x28L, 0x66L, (VECTOR(int8_t, 2))(0x28L, 0x66L), (VECTOR(int8_t, 2))(0x28L, 0x66L), 0x28L, 0x66L, 0x28L, 0x66L);
    VECTOR(uint32_t, 2) l_1129 = (VECTOR(uint32_t, 2))(0x87B04137L, 4294967293UL);
    int i;
    for (i = 0; i < 1; i++)
        l_791[i] = (void*)0;
    if ((!((VECTOR(int32_t, 8))(0x06A23659L, 0x43419BBDL, (((*l_711) = ((*l_709) &= (((void*)0 == &p_1176->g_365) == l_706.se))) || ((+65531UL) , (FAKE_DIVERGE(p_1176->global_0_offset, get_global_id(0), 10) != (safe_div_func_int64_t_s_s(0x34F6D651D9C27A66L, (safe_lshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(p_1176->g_576, 9)), (((0L < 0x07L) & ((*p_1176->g_459) = ((l_722 == p_1176->g_724[5]) && 6L))) , (*p_1176->g_389)))), 11)) & 5L), 7))))))), 0x7A737271L, 0x0DFB6465L, ((VECTOR(int32_t, 2))(0x5D8A129CL)), 4L)).s4))
    { /* block id: 276 */
        int16_t l_726 = 0x6C27L;
        VECTOR(int8_t, 16) l_763 = (VECTOR(int8_t, 16))(0x68L, (VECTOR(int8_t, 4))(0x68L, (VECTOR(int8_t, 2))(0x68L, 7L), 7L), 7L, 0x68L, 7L, (VECTOR(int8_t, 2))(0x68L, 7L), (VECTOR(int8_t, 2))(0x68L, 7L), 0x68L, 7L, 0x68L, 7L);
        uint64_t *l_767 = (void*)0;
        uint64_t *l_768[3];
        int32_t l_769 = 0x36278F7DL;
        int32_t **l_770 = &p_1176->g_30;
        int i;
        for (i = 0; i < 3; i++)
            l_768[i] = (void*)0;
        (*l_723) = ((~((*p_1176->g_459) = l_726)) , p_9);
        p_10 = (p_1176->g_771 = ((*l_770) = (**l_722)));
    }
    else
    { /* block id: 287 */
        int32_t *l_772 = (void*)0;
        int32_t *l_775[8] = {(void*)0,&p_1176->g_776[2],(void*)0,(void*)0,&p_1176->g_776[2],(void*)0,(void*)0,&p_1176->g_776[2]};
        uint16_t *l_781 = &p_1176->g_379;
        int32_t **l_782[7][8] = {{&l_772,&l_772,&l_772,&l_772,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771},{&l_772,&l_772,&l_772,&l_772,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771},{&l_772,&l_772,&l_772,&l_772,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771},{&l_772,&l_772,&l_772,&l_772,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771},{&l_772,&l_772,&l_772,&l_772,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771},{&l_772,&l_772,&l_772,&l_772,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771},{&l_772,&l_772,&l_772,&l_772,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771,&p_1176->g_771}};
        int64_t l_807 = (-7L);
        int i, j;
        p_1176->g_692[2][4] = ((*l_723) = (**l_722));
        l_807 = ((*p_10) = (((*p_1176->g_459) = (safe_mod_func_uint8_t_u_u((((((((((safe_mul_func_uint16_t_u_u((p_9 == &p_1176->g_776[5]), (((*l_711) = ((((((safe_mod_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((l_791[0] == &p_1176->g_459), (safe_unary_minus_func_uint32_t_u(((safe_rshift_func_int16_t_s_u(0x1C03L, p_6)) != p_1176->g_90.x))))), ((((safe_div_func_int16_t_s_s((((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 2))(0xCEFDE166L, 4294967295UL)).xyxyyxxx, ((VECTOR(uint32_t, 8))(p_1176->g_797.wxzxywzz))))).s0 >= (safe_add_func_uint16_t_u_u(((safe_div_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(p_1176->g_804.s5a39249e0e2f9cc3)).se597, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(l_805.yyyxyxyx)).s53, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(3L, 0L, 0x080FA53CL, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x726A56A8L, 0x3A97634FL)), ((((((*l_781) |= p_7) == p_1176->g_302) , l_775[3]) == (void*)0) < 4294967295UL), (-1L), ((VECTOR(int32_t, 4))((-1L))))).hi)), 0L)), ((VECTOR(int32_t, 8))(0x3D8C85F9L)), ((VECTOR(int32_t, 8))(0x6D571A02L))))).odd, ((VECTOR(int32_t, 4))((-4L))), ((VECTOR(int32_t, 4))(0x33013A55L))))), ((VECTOR(int32_t, 4))(0x1B552988L))))).hi, ((VECTOR(int32_t, 2))(0x7F596B3DL))))).xyxxyyyyyyxxxyyy)).s31)).yyyx, ((VECTOR(int32_t, 4))(0x039068D0L))))).even, ((VECTOR(int32_t, 2))(0x00635226L))))), ((VECTOR(int32_t, 2))(0x7111C16FL)), 0x6E7C8244L, ((VECTOR(int32_t, 2))(0x057F2727L)), 0x7F644491L)).s6, p_7)), p_1176->g_209)) , p_6), 1UL))), 0x11A4L)) ^ p_6) && l_806[0]) && p_1176->g_377.w))) > p_6) <= p_7) != (*p_1176->g_771)) < (*p_1176->g_459)) , p_1176->g_483)) & p_1176->g_240.x))) , (void*)0) == (void*)0) ^ p_6) , p_6) , p_1176->g_614.se) , (*p_1176->g_389)) > (*p_1176->g_389)) || p_6), p_1176->g_606.z))) && (*p_1176->g_459)));
        return &p_1176->g_31;
    }
    (*l_723) = l_808[7];
    for (p_1176->g_576 = 17; (p_1176->g_576 > 53); ++p_1176->g_576)
    { /* block id: 303 */
        int32_t ****l_811 = &l_722;
        uint64_t **l_846 = &p_1176->g_569[0][6][5];
        uint8_t *l_847[2][7] = {{(void*)0,&l_806[1],(void*)0,(void*)0,&l_806[1],(void*)0,(void*)0},{(void*)0,&l_806[1],(void*)0,(void*)0,&l_806[1],(void*)0,(void*)0}};
        int8_t l_855 = 0x4FL;
        VECTOR(int8_t, 2) l_857 = (VECTOR(int8_t, 2))((-3L), 0x15L);
        int32_t l_872[4][6][9] = {{{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)}},{{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)}},{{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)}},{{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)},{0x1DB6352AL,6L,1L,1L,(-1L),0x24197CC5L,(-2L),0x584C0EE3L,(-1L)}}};
        int32_t l_878 = 0x57F64D61L;
        int64_t l_880 = (-1L);
        uint8_t l_881 = 0xBCL;
        VECTOR(int64_t, 4) l_884 = (VECTOR(int64_t, 4))(0x2B1DCC89F3DB1562L, (VECTOR(int64_t, 2))(0x2B1DCC89F3DB1562L, 0x6D7F1DD27BA9E348L), 0x6D7F1DD27BA9E348L);
        uint8_t **l_927 = &l_847[0][3];
        uint8_t ***l_926[10] = {&l_927,&l_927,&l_927,&l_927,&l_927,&l_927,&l_927,&l_927,&l_927,&l_927};
        int8_t l_974 = 0x4BL;
        int32_t **l_1030 = &p_1176->g_771;
        int16_t l_1041 = (-8L);
        uint32_t l_1090[7][9] = {{0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L},{0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L},{0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L},{0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L},{0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L},{0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L},{0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L,0xA5717CB9L,0xCDF63554L,0xA5717CB9L}};
        uint64_t l_1093 = 0x228E8AE8B3929841L;
        uint32_t l_1103 = 0xD398AF0EL;
        int64_t **l_1106 = &p_1176->g_459;
        int i, j, k;
        (1 + 1);
    }
    --l_1129.x;
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1176->g_365 p_1176->g_408 p_1176->g_426 p_1176->g_68 p_1176->g_2 p_1176->g_31 p_1176->g_427 p_1176->g_428 p_1176->g_302 p_1176->g_241 p_1176->g_377 p_1176->g_459 p_1176->g_81 p_1176->g_389 p_1176->g_390 p_1176->g_209 p_1176->g_90 p_1176->g_100 p_1176->g_381 p_1176->g_572 p_1176->g_467 p_1176->g_86 p_1176->g_312 p_1176->g_606 p_1176->g_614 p_1176->g_612 p_1176->g_693 p_1176->g_429 p_1176->g_240 p_1176->g_607 p_1176->g_379 p_1176->g_82 p_1176->g_126
 * writes: p_1176->g_390 p_1176->g_302 p_1176->g_209 p_1176->g_483 p_1176->g_81 p_1176->g_408 p_1176->g_379 p_1176->g_86 p_1176->g_31 p_1176->g_570 p_1176->g_365 p_1176->g_136 p_1176->g_68 p_1176->g_100
 */
int32_t * func_13(int64_t  p_14, int32_t * p_15, uint8_t  p_16, uint32_t  p_17, struct S0 * p_1176)
{ /* block id: 153 */
    uint32_t l_392 = 0x3AEF4130L;
    uint64_t *l_405[7];
    uint64_t **l_404 = &l_405[3];
    int32_t **l_431 = (void*)0;
    int32_t ***l_430 = &l_431;
    int32_t l_436 = (-4L);
    int32_t l_437 = 0x2817D1E2L;
    VECTOR(int32_t, 8) l_439 = (VECTOR(int32_t, 8))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 6L), 6L), 6L, (-3L), 6L);
    VECTOR(int16_t, 16) l_465 = (VECTOR(int16_t, 16))(0x59F6L, (VECTOR(int16_t, 4))(0x59F6L, (VECTOR(int16_t, 2))(0x59F6L, (-7L)), (-7L)), (-7L), 0x59F6L, (-7L), (VECTOR(int16_t, 2))(0x59F6L, (-7L)), (VECTOR(int16_t, 2))(0x59F6L, (-7L)), 0x59F6L, (-7L), 0x59F6L, (-7L));
    VECTOR(uint64_t, 4) l_529 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x26ADE5B3A744163CL), 0x26ADE5B3A744163CL);
    VECTOR(int32_t, 2) l_571 = (VECTOR(int32_t, 2))(1L, 0L);
    uint8_t l_574 = 0x6FL;
    uint32_t *l_580[3];
    VECTOR(int32_t, 4) l_608 = (VECTOR(int32_t, 4))(0x5F5FA906L, (VECTOR(int32_t, 2))(0x5F5FA906L, 0x2FA221EFL), 0x2FA221EFL);
    int16_t *l_620 = &p_1176->g_82;
    int8_t l_641 = 0L;
    uint8_t **l_675[3];
    int16_t l_691 = 0x6B16L;
    int i;
    for (i = 0; i < 7; i++)
        l_405[i] = &p_1176->g_100;
    for (i = 0; i < 3; i++)
        l_580[i] = &p_1176->g_365;
    for (i = 0; i < 3; i++)
        l_675[i] = (void*)0;
    if (l_392)
    { /* block id: 154 */
        VECTOR(uint32_t, 2) l_397 = (VECTOR(uint32_t, 2))(4294967295UL, 0xECB0F7D7L);
        uint64_t *l_403 = &p_1176->g_100;
        uint64_t **l_402 = &l_403;
        VECTOR(uint8_t, 4) l_409 = (VECTOR(uint8_t, 4))(0x9EL, (VECTOR(uint8_t, 2))(0x9EL, 0x07L), 0x07L);
        uint32_t l_414 = 0x2A97ABDDL;
        VECTOR(uint16_t, 16) l_419 = (VECTOR(uint16_t, 16))(0xDB2EL, (VECTOR(uint16_t, 4))(0xDB2EL, (VECTOR(uint16_t, 2))(0xDB2EL, 1UL), 1UL), 1UL, 0xDB2EL, 1UL, (VECTOR(uint16_t, 2))(0xDB2EL, 1UL), (VECTOR(uint16_t, 2))(0xDB2EL, 1UL), 0xDB2EL, 1UL, 0xDB2EL, 1UL);
        uint16_t *l_420 = (void*)0;
        VECTOR(uint64_t, 2) l_421 = (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL);
        int64_t *l_422 = (void*)0;
        int64_t *l_423[8][7][4] = {{{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0}},{{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0}},{{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0}},{{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0}},{{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0}},{{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0}},{{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0}},{{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0},{(void*)0,&p_1176->g_81,&p_1176->g_81,(void*)0}}};
        int32_t l_424 = 5L;
        int32_t l_425 = 1L;
        int32_t l_438 = 0x00D6A1A6L;
        int32_t l_440 = 0x4D046558L;
        int32_t *l_445 = &l_437;
        VECTOR(uint32_t, 4) l_490 = (VECTOR(uint32_t, 4))(0xA63BE433L, (VECTOR(uint32_t, 2))(0xA63BE433L, 0xB7FAAD69L), 0xB7FAAD69L);
        int16_t l_520 = 0x44ABL;
        int8_t l_538 = 0x61L;
        int32_t **l_549 = (void*)0;
        int32_t ***l_548 = &l_549;
        VECTOR(uint64_t, 4) l_563 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xD1DA0040BEFDB96FL), 0xD1DA0040BEFDB96FL);
        VECTOR(int16_t, 2) l_581 = (VECTOR(int16_t, 2))((-1L), 0x39B2L);
        VECTOR(uint32_t, 16) l_600 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL);
        VECTOR(uint8_t, 4) l_603 = (VECTOR(uint8_t, 4))(0xF9L, (VECTOR(uint8_t, 2))(0xF9L, 1UL), 1UL);
        VECTOR(uint32_t, 16) l_634 = (VECTOR(uint32_t, 16))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0x14070714L), 0x14070714L), 0x14070714L, 2UL, 0x14070714L, (VECTOR(uint32_t, 2))(2UL, 0x14070714L), (VECTOR(uint32_t, 2))(2UL, 0x14070714L), 2UL, 0x14070714L, 2UL, 0x14070714L);
        VECTOR(uint8_t, 2) l_651 = (VECTOR(uint8_t, 2))(249UL, 0xABL);
        int i, j, k;
lbl_670:
        l_425 = (((l_424 |= (l_392 >= (((((safe_sub_func_uint16_t_u_u((l_421.x = (safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))(0x7CCD2D42L, 1L, 0L, (l_397.x , (((safe_sub_func_int64_t_s_s((safe_add_func_uint8_t_u_u(l_392, ((l_404 = l_402) != (void*)0))), ((**l_402) = (((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_1176->g_408.yywxzzzwzwzxwwzx)).sb, (-1L), 1L, 0L)).zwxyyxyzxywxwywz)).s5 , ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_409.xwyzwxxy)).hi)), ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 16))(((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s((l_414 , (-2L)), (safe_add_func_uint8_t_u_u(p_1176->g_68[0][5], (safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(l_419.sd75ee240)).s24)).even, p_17)))))), p_1176->g_381.s0)) == p_16), ((VECTOR(uint8_t, 4))(0xB0L)), 255UL, ((VECTOR(uint8_t, 8))(0x3CL)), 9UL, 0x75L)).s61, ((VECTOR(uint8_t, 2))(0xA0L))))), 7UL, 0xE0L, 0UL, ((VECTOR(uint8_t, 2))(0UL)), 0x56L)).odd, ((VECTOR(uint8_t, 4))(9UL)))))))).w) ^ 0UL) && FAKE_DIVERGE(p_1176->local_0_offset, get_local_id(0), 10))))) & p_16) ^ l_392)), (*p_15), 0x0ED81343L, ((VECTOR(int32_t, 8))(0x23226E5FL)), 0x14BCD381L, (-3L))).sa, l_419.s1))), FAKE_DIVERGE(p_1176->global_2_offset, get_global_id(2), 10))) , p_16) < l_397.x) , p_1176->g_365) != l_392))) && p_14) , l_419.s5);
        if ((p_1176->g_408.z || l_409.y))
        { /* block id: 160 */
            uint8_t l_432[8][3];
            int32_t *l_433 = &l_425;
            int32_t *l_434 = &l_424;
            int32_t *l_435[4] = {&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86};
            uint32_t l_441 = 4294967295UL;
            int32_t **l_444 = &l_435[1];
            VECTOR(uint8_t, 8) l_500 = (VECTOR(uint8_t, 8))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 7UL), 7UL), 7UL, 5UL, 7UL);
            VECTOR(uint32_t, 8) l_595 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL), 4294967295UL, 1UL, 4294967295UL);
            int i, j;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 3; j++)
                    l_432[i][j] = 0x15L;
            }
            l_432[1][2] = (p_1176->g_426 == ((0x4067L == (p_17 < ((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 2))(p_1176->g_429.yy)).xyyxxyyx, ((VECTOR(uint32_t, 2))(0xA3612C15L, 0x929E092DL)).yyxxxyxy))).s0)) , l_430));
            l_441--;
            l_445 = ((*l_444) = &l_425);
            for (p_1176->g_390 = 0; (p_1176->g_390 > 29); p_1176->g_390 = safe_add_func_int64_t_s_s(p_1176->g_390, 3))
            { /* block id: 167 */
                uint32_t l_448[9];
                int64_t **l_460 = &l_423[7][4][0];
                VECTOR(int16_t, 4) l_466 = (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 0x4F59L), 0x4F59L);
                int8_t *l_482 = &p_1176->g_483;
                int32_t l_492 = 0x3ADB7441L;
                VECTOR(int32_t, 2) l_501 = (VECTOR(int32_t, 2))((-8L), 0x65E84489L);
                uint32_t *l_516[1][10][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                uint64_t **l_537[9][2] = {{&l_403,&l_405[1]},{&l_403,&l_405[1]},{&l_403,&l_405[1]},{&l_403,&l_405[1]},{&l_403,&l_405[1]},{&l_403,&l_405[1]},{&l_403,&l_405[1]},{&l_403,&l_405[1]},{&l_403,&l_405[1]}};
                int32_t **l_544[9] = {(void*)0,&l_434,(void*)0,(void*)0,&l_434,(void*)0,(void*)0,&l_434,(void*)0};
                VECTOR(uint32_t, 8) l_596 = (VECTOR(uint32_t, 8))(0xAAA82ABCL, (VECTOR(uint32_t, 4))(0xAAA82ABCL, (VECTOR(uint32_t, 2))(0xAAA82ABCL, 0xFA614D25L), 0xFA614D25L), 0xFA614D25L, 0xAAA82ABCL, 0xFA614D25L);
                int i, j, k;
                for (i = 0; i < 9; i++)
                    l_448[i] = 1UL;
                ++l_448[2];
                (*l_445) &= (safe_div_func_int32_t_s_s((*p_15), (safe_sub_func_int16_t_s_s((p_14 > p_14), p_1176->g_408.z))));
                if ((((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(0xE616L, 65535UL, (safe_sub_func_int8_t_s_s(((safe_mul_func_int8_t_s_s((*l_445), p_17)) <= FAKE_DIVERGE(p_1176->local_2_offset, get_local_id(2), 10)), (&p_1176->g_81 == ((*l_460) = (p_1176->g_459 = &p_1176->g_81))))), (safe_add_func_int64_t_s_s((!(((p_1176->g_240.x >= (-1L)) == (p_17 == (((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(l_465.s90c66d09)).s40, ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 8))(l_466.zzzyzzxx)).s51))), ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(6L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(p_1176->g_467.s5751)).even)), 0x54D9L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((safe_lshift_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_s(((safe_lshift_func_uint8_t_u_s((safe_sub_func_int16_t_s_s((l_466.z , (safe_div_func_int64_t_s_s((safe_sub_func_int16_t_s_s((!((safe_div_func_int8_t_s_s(((*l_482) = ((0x82DBF884C41EE1FEL < 0x71568659555F0D8FL) > 1L)), p_1176->g_467.s6)) , 0L)), (*l_445))), p_1176->g_90.x))), p_16)), 1)) , p_14), p_1176->g_429.y)) ^ p_14), 3)), 0L, 0x07CFL, 7L)), 0x4C10L, p_14, 0x16ACL, (-1L))), ((VECTOR(int16_t, 8))(1L))))).even)))).hi)).zxyzzxww)).odd))).hi))).even < 0UL))) || (*l_434))), GROUP_DIVERGE(2, 1))), 65535UL, ((VECTOR(uint16_t, 4))(1UL)), ((VECTOR(uint16_t, 2))(0UL)), 0xF38DL, ((VECTOR(uint16_t, 2))(0x1B28L)), 0xF216L, 0xB24CL)).hi)).s10)).xxxy, ((VECTOR(uint16_t, 4))(0x4210L))))).w | 1UL))
                { /* block id: 173 */
                    uint32_t *l_493[2][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                    volatile int32_t * volatile l_503[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_532 = 3L;
                    uint32_t *l_539 = &p_1176->g_209;
                    uint8_t *l_540 = &l_432[4][1];
                    uint8_t *l_541 = (void*)0;
                    uint8_t *l_542 = (void*)0;
                    uint8_t *l_543 = &p_1176->g_302;
                    int32_t ***l_546 = &l_544[6];
                    int32_t ****l_545[10][9] = {{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546},{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546},{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546},{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546},{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546},{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546},{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546},{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546},{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546},{&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546,&l_546}};
                    int i, j, k;
                    if (p_1176->g_31)
                    { /* block id: 174 */
                        int32_t l_491[8];
                        int32_t l_502 = (-8L);
                        int i;
                        for (i = 0; i < 8; i++)
                            l_491[i] = 3L;
                        l_503[0] = (*p_1176->g_427);
                    }
                    else
                    { /* block id: 182 */
                        uint32_t l_517 = 6UL;
                        (*l_434) = (safe_sub_func_int32_t_s_s(0L, ((safe_div_func_uint8_t_u_u(((++p_1176->g_302) , ((safe_lshift_func_int16_t_s_u(7L, (safe_div_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((((*l_445) &= (&p_1176->g_427 == &p_1176->g_427)) ^ (-1L)), 8)), ((((~(l_516[0][5][3] == &p_1176->g_365)) == p_17) , p_17) ^ p_1176->g_241.y))))) , p_1176->g_377.w)), p_17)) < p_14)));
                        if ((*p_15))
                            continue;
                        ++l_517;
                    }
                    (*l_445) = ((((p_16 = (&p_1176->g_365 == ((((*l_482) = (((*l_543) = ((*l_540) = (((*l_434) = (*p_15)) && (l_520 , ((((*l_539) &= (safe_div_func_uint32_t_u_u(((((safe_div_func_int64_t_s_s((safe_sub_func_int64_t_s_s((((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 16))(l_529.wywyzyyxywxyyzxz)).even))).s1 <= (((p_1176->g_241.x , (*p_1176->g_459)) != p_16) < (safe_rshift_func_int16_t_s_u(l_532, (safe_mod_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(((void*)0 != l_537[7][1]), (*p_1176->g_389))), l_532)))))), l_538)), p_16)) == 0x62L) != l_466.x) , p_1176->g_68[0][0]), (*l_445)))) > p_14) , p_17))))) <= 249UL)) || 254UL) , (void*)0))) == FAKE_DIVERGE(p_1176->group_0_offset, get_group_id(0), 10)) , 0x91C7L) && (-4L));
                    (*l_434) = ((*l_445) = (*l_445));
                    (*l_444) = (*l_444);
                }
                else
                { /* block id: 201 */
                    int32_t **l_577 = &l_445;
                    uint8_t *l_590 = &l_432[6][0];
                    VECTOR(int32_t, 4) l_597 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5F46183DL), 0x5F46183DL);
                    int i;
                    for (l_438 = (-28); (l_438 <= 17); l_438 = safe_add_func_uint16_t_u_u(l_438, 6))
                    { /* block id: 204 */
                        int32_t *l_552 = &p_1176->g_86;
                        int16_t l_573[7] = {0x6858L,0x727CL,0x6858L,0x6858L,0x727CL,0x6858L,0x6858L};
                        uint16_t *l_575 = &p_1176->g_379;
                        int i;
                        (*l_444) = l_552;
                        p_15 = func_37(&p_15, l_577, p_15, p_17, p_14, p_1176);
                        if ((*p_15))
                            break;
                        return p_15;
                    }
                    (*l_434) ^= (safe_mod_func_int16_t_s_s((p_15 == l_580[0]), (l_581.y , (safe_rshift_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s((**l_577), 4)) >= (safe_rshift_func_int16_t_s_u(p_1176->g_100, (safe_mul_func_uint8_t_u_u(((*l_590)++), ((*l_482) = ((safe_mod_func_uint32_t_u_u(p_1176->g_68[0][1], ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(max(((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 2))(1UL, 0x673E56DEL)).xyxyxyxx, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_595.s54)).yyxyxxyyxyxxyxxx)).hi, ((VECTOR(uint32_t, 4))(l_596.s5251)).zwwxxyyy))).s2115616610515711, ((VECTOR(uint32_t, 8))(4294967291UL, ((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_597.zzwzyzyy)), ((((safe_rshift_func_int16_t_s_s(p_16, 9)) < (*p_1176->g_459)) ^ (-1L)) < l_600.sa), (-1L), 0x0E1C318FL, (*p_15), (*p_15), 0x762A8108L, 4L, (-1L))).odd, ((VECTOR(int32_t, 8))(0x10764617L))))).s63)), ((VECTOR(uint32_t, 4))(0UL)), 4294967289UL, ((VECTOR(uint32_t, 4))(0UL)), 1UL, p_14, 0x04A960CEL, 0x381C143AL, 0x72380B8FL)), ((VECTOR(uint32_t, 16))(9UL))))), ((VECTOR(uint32_t, 16))(0x4A8D6F7FL))))).se5, ((VECTOR(uint32_t, 2))(0xFAF23C2AL))))).xyxyxxxxyxyyxyxx, ((VECTOR(uint32_t, 16))(4294967295UL))))).saa61)).xyxzywzxxywwzyyy, ((VECTOR(uint32_t, 16))(0UL))))).sca, ((VECTOR(uint32_t, 2))(0x0BF80A95L)), ((VECTOR(uint32_t, 2))(0x040A9C77L))))).yyyx, ((VECTOR(uint32_t, 4))(5UL)), ((VECTOR(uint32_t, 4))(8UL))))), 0x01FFFF71L, 0x4740178DL, 0x8B0A9967L)).s6075747573742321))), (uint32_t)p_1176->g_240.y))).odd)).s7)) > (-9L)))))))), 0)))));
                    (*l_434) ^= (p_1176->g_381.s0 , (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(6UL, 8UL, ((VECTOR(uint8_t, 4))(l_603.ywyx)), 0xAEL, 0x94L)).s3, (0x45L >= (((safe_rshift_func_uint8_t_u_u(p_1176->g_572.x, 2)) > ((VECTOR(int16_t, 2))(p_1176->g_606.xw)).hi) ^ (((*l_445) ^= 0x5EE57FE8L) && (((*p_1176->g_459) | ((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(int64_t, 16))(p_1176->g_607[1][3], p_16, ((VECTOR(int64_t, 8))((*p_1176->g_459), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((-7L), (-8L))), 1L, 0L)), p_17, 0x4D05241F27859B9FL, 0x7CBA27AF19DAFB6DL)), ((VECTOR(int64_t, 4))((-1L))), (-10L), 0x6E877C4F31C3F8BAL)).sca, ((VECTOR(int64_t, 2))((-1L)))))).even) <= p_17)))))));
                }
            }
        }
        else
        { /* block id: 220 */
            VECTOR(int16_t, 8) l_609 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x3718L), 0x3718L), 0x3718L, (-1L), 0x3718L);
            VECTOR(uint64_t, 8) l_613 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xDDFA79DC0270D49CL), 0xDDFA79DC0270D49CL), 0xDDFA79DC0270D49CL, 18446744073709551615UL, 0xDDFA79DC0270D49CL);
            uint8_t *l_615 = &p_1176->g_302;
            int16_t *l_616 = (void*)0;
            int16_t *l_617 = &l_520;
            int32_t **l_618 = &l_445;
            int32_t *l_619 = &p_1176->g_31;
            int i;
            l_619 = ((*l_618) = ((((*l_617) = (((((((VECTOR(int32_t, 4))(l_608.xwxx)).y >= p_1176->g_467.s6) && (p_16 < (!(((*l_615) &= (((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_609.s6557)), (p_1176->g_381.sc > (((safe_sub_func_int64_t_s_s((((((*l_430) = &p_15) == (void*)0) > (-1L)) == (*p_1176->g_389)), p_16)) | (!((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 4))(p_1176->g_612.yyxx)).xyzzywxy, ((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 4))(l_613.s6330)).wyzxwzyzwxxyyyxz, ((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(p_1176->g_614.s3c)), 0x163432BCA2107C71L, (&p_17 != (void*)0), ((VECTOR(uint64_t, 2))(0xC018B887D5186858L)), 18446744073709551608UL, 0UL)).hi, ((VECTOR(uint64_t, 4))(0x461DBD26AC0383E2L))))).wxxwyzyyzyyzyzyz))).lo))))))))).odd)).odd)).hi , 0x1A3AL) < GROUP_DIVERGE(1, 1)))) == 0x0DB22B35L)), 0L, p_1176->g_240.y, 0x0960L, ((VECTOR(int16_t, 8))(5L)))), ((VECTOR(int16_t, 16))(0L))))).s7cb2, ((VECTOR(uint16_t, 4))(4UL)), ((VECTOR(uint16_t, 4))(0xE1EBL))))).w | (-1L))) ^ 0x5FL)))) | p_14) != 255UL) == p_17)) == 65535UL) , p_15));
            p_1176->g_408.y = (*p_15);
        }
        if (((void*)0 == l_620))
        { /* block id: 228 */
            VECTOR(int32_t, 2) l_633 = (VECTOR(int32_t, 2))(0x64EB8643L, 0x0E2888A7L);
            int32_t l_638 = 1L;
            int i;
            l_437 ^= (*p_15);
            for (p_1176->g_379 = (-24); (p_1176->g_379 < 52); p_1176->g_379 = safe_add_func_int8_t_s_s(p_1176->g_379, 9))
            { /* block id: 232 */
                uint8_t *l_628[10] = {&l_574,&l_574,&l_574,&l_574,&l_574,&l_574,&l_574,&l_574,&l_574,&l_574};
                uint8_t **l_627 = &l_628[7];
                int32_t *l_637[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                if ((*p_15))
                    break;
                l_424 = (-1L);
                p_1176->g_86 ^= (safe_add_func_int32_t_s_s((l_641 = (safe_div_func_int64_t_s_s((&p_16 == ((*l_627) = &l_574)), (safe_sub_func_uint32_t_u_u((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 16))(l_633.yxxyyyyyyyxyxxxx)).hi, ((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(0x2942D23EL, FAKE_DIVERGE(p_1176->group_2_offset, get_group_id(2), 10), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(l_634.s15dc669d)).hi)), ((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 4))(4294967295UL, ((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 8))(4294967289UL, 0x17B62738L, 4294967295UL, (((safe_div_func_uint8_t_u_u(247UL, (*p_1176->g_389))) & (*l_445)) < (l_633.x , (l_638 = (l_571.y = 0L)))), ((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 4))(1UL, 0UL, 65535UL, 0xFE51L)).odd, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))((safe_mul_func_int16_t_s_s(p_17, (p_1176->g_68[0][3] >= (*p_15)))), 0x25E9L, ((VECTOR(uint16_t, 2))(65535UL)), 0x2793L, p_1176->g_379, 0x390EL, p_1176->g_82, 65535UL, 65534UL, l_633.y, 0xFCA9L, ((VECTOR(uint16_t, 2))(1UL)), 0x7D90L, 0xFFADL)))).sf9))).xxyxyxyy, ((VECTOR(uint32_t, 8))(1UL)), ((VECTOR(uint32_t, 8))(0UL))))).even, ((VECTOR(uint32_t, 4))(4294967295UL))))))).s02, ((VECTOR(uint32_t, 2))(0x6A32E426L))))), 4294967295UL)), ((VECTOR(uint32_t, 4))(4294967295UL))))), p_1176->g_100, 0xFD8CAF24L, p_1176->g_126.s1, ((VECTOR(uint32_t, 2))(0x1DDC17B6L)), 1UL)))).hi)), ((VECTOR(uint32_t, 8))(0UL)))))))).s7, 0x12B9EE5EFF2A8D9DL)), (*l_445)))))), 0x4B016A30L));
            }
            for (p_1176->g_209 = 0; (p_1176->g_209 > 5); p_1176->g_209++)
            { /* block id: 243 */
                int32_t *l_644[6][5][8] = {{{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438}},{{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438}},{{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438}},{{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438}},{{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438}},{{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438},{(void*)0,&l_440,&p_1176->g_68[0][1],&l_438,(void*)0,&p_1176->g_31,&l_425,&l_438}}};
                int i, j, k;
                l_638 = (p_1176->g_31 = l_633.y);
                return p_15;
            }
            l_608.z = (*p_15);
        }
        else
        { /* block id: 249 */
            uint64_t ***l_652 = &p_1176->g_570;
            uint32_t l_657 = 1UL;
            int32_t *l_669 = &p_1176->g_31;
            (*l_652) = ((safe_add_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((-10L), ((0x5B7E9D604ABF8510L | (!(*p_1176->g_459))) >= (safe_rshift_func_uint8_t_u_u(p_16, (((VECTOR(uint8_t, 2))(l_651.xy)).lo > p_1176->g_312.x)))))), p_1176->g_377.w)) , &l_403);
            for (p_1176->g_365 = 0; (p_1176->g_365 <= 17); p_1176->g_365 = safe_add_func_int64_t_s_s(p_1176->g_365, 8))
            { /* block id: 253 */
                uint32_t *l_664 = &l_414;
                VECTOR(int16_t, 4) l_667 = (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x7A72L), 0x7A72L);
                uint8_t *l_668[1][10][6] = {{{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0},{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0},{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0},{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0},{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0},{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0},{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0},{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0},{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0},{(void*)0,&l_574,&p_1176->g_302,&l_574,(void*)0,(void*)0}}};
                int i, j, k;
                if ((*l_445))
                    break;
                l_669 = p_15;
            }
            if (l_437)
                goto lbl_670;
        }
    }
    else
    { /* block id: 262 */
        uint8_t ***l_676 = (void*)0;
        uint8_t ***l_677 = &l_675[2];
        uint64_t l_684 = 0UL;
        uint16_t *l_687 = &p_1176->g_136;
        uint16_t *l_689 = (void*)0;
        uint16_t **l_688 = &l_689;
        uint8_t *l_690 = &l_574;
        int32_t *l_694 = &p_1176->g_86;
        int32_t *l_695 = &p_1176->g_86;
        int32_t *l_696 = (void*)0;
        int32_t *l_697 = &l_436;
        int32_t *l_698 = &l_437;
        int32_t *l_699 = (void*)0;
        int32_t *l_700 = (void*)0;
        int32_t *l_701 = &l_436;
        int32_t *l_702[2];
        uint16_t l_703 = 0UL;
        int i;
        for (i = 0; i < 2; i++)
            l_702[i] = &p_1176->g_31;
        (*p_1176->g_693) |= ((safe_mod_func_int16_t_s_s((((*p_1176->g_459) , (safe_mul_func_int8_t_s_s(p_14, (((((*l_677) = l_675[2]) != ((safe_mod_func_uint64_t_u_u((safe_mod_func_int64_t_s_s((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((safe_mul_func_int8_t_s_s((p_1176->g_31 & ((*l_690) &= (((*l_687) = ((((p_1176->g_606.y & (l_684 > (safe_lshift_func_int8_t_s_s((l_687 != ((*l_688) = &p_1176->g_379)), 0)))) , ((65535UL & p_1176->g_614.s8) == FAKE_DIVERGE(p_1176->group_2_offset, get_group_id(2), 10))) & l_684) | 255UL)) > 65535UL))), 0xBEL)) > p_16), l_691, p_17, 4L, ((VECTOR(int8_t, 2))((-7L))), (*p_1176->g_389), 2L, 0L, 0x1AL, 1L, 0x73L, 1L, 0x30L, 4L, 0x10L)).s4b)), (-1L), (-6L))).z & 0x20L), p_17)), (*p_1176->g_459))) , (void*)0)) | 65535UL) < p_1176->g_612.x)))) > (*p_1176->g_389)), l_684)) ^ l_684);
        l_703--;
        (*l_694) = ((*l_688) == l_620);
    }
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_20(int8_t  p_21, uint32_t  p_22, int32_t  p_23, uint8_t  p_24, struct S0 * p_1176)
{ /* block id: 151 */
    int32_t l_391 = 0x7836AE0CL;
    return l_391;
}


/* ------------------------------------------ */
/* 
 * reads : p_1176->g_31 p_1176->g_134 p_1176->g_68 p_1176->g_82 p_1176->g_90 p_1176->g_209 p_1176->g_30 p_1176->g_86 p_1176->g_136 p_1176->g_100 p_1176->g_126 p_1176->g_2 p_1176->g_241 p_1176->g_129 p_1176->g_240 p_1176->g_312 p_1176->g_377 p_1176->g_379 p_1176->g_380 p_1176->g_381 p_1176->g_389
 * writes: p_1176->g_31 p_1176->g_100 p_1176->g_134 p_1176->g_68 p_1176->g_209 p_1176->g_81 p_1176->g_86 p_1176->g_82 p_1176->g_30 p_1176->g_379
 */
int8_t  func_25(int64_t  p_26, int32_t * p_27, int32_t * p_28, struct S0 * p_1176)
{ /* block id: 9 */
    int8_t l_57 = 0x01L;
    int32_t *l_138 = &p_1176->g_68[0][5];
    int32_t l_139 = (-4L);
    int32_t l_141 = 0L;
    int32_t l_142 = 0x0DB73613L;
    int32_t l_143[5];
    uint32_t l_153 = 0xFE586E74L;
    uint64_t **l_160 = (void*)0;
    int64_t l_174 = (-1L);
    VECTOR(int8_t, 16) l_265 = (VECTOR(int8_t, 16))(0x58L, (VECTOR(int8_t, 4))(0x58L, (VECTOR(int8_t, 2))(0x58L, 0L), 0L), 0L, 0x58L, 0L, (VECTOR(int8_t, 2))(0x58L, 0L), (VECTOR(int8_t, 2))(0x58L, 0L), 0x58L, 0L, 0x58L, 0L);
    VECTOR(uint16_t, 4) l_272 = (VECTOR(uint16_t, 4))(0xB76EL, (VECTOR(uint16_t, 2))(0xB76EL, 0x2A58L), 0x2A58L);
    uint16_t l_307 = 0xB644L;
    VECTOR(int32_t, 8) l_334 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L));
    VECTOR(int16_t, 2) l_378 = (VECTOR(int16_t, 2))(0x5EC6L, 0x3219L);
    VECTOR(int64_t, 4) l_382 = (VECTOR(int64_t, 4))(0x37CE994427BFCAE0L, (VECTOR(int64_t, 2))(0x37CE994427BFCAE0L, 0x45CF54DBE3440737L), 0x45CF54DBE3440737L);
    VECTOR(int32_t, 2) l_385 = (VECTOR(int32_t, 2))(0x71C31A4AL, 0x63348D65L);
    VECTOR(int32_t, 8) l_386 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x25470C86L), 0x25470C86L), 0x25470C86L, 9L, 0x25470C86L);
    int i;
    for (i = 0; i < 5; i++)
        l_143[i] = (-9L);
    for (p_1176->g_31 = 9; (p_1176->g_31 > (-11)); --p_1176->g_31)
    { /* block id: 12 */
        VECTOR(uint32_t, 16) l_47 = (VECTOR(uint32_t, 16))(0x9C5C935CL, (VECTOR(uint32_t, 4))(0x9C5C935CL, (VECTOR(uint32_t, 2))(0x9C5C935CL, 1UL), 1UL), 1UL, 0x9C5C935CL, 1UL, (VECTOR(uint32_t, 2))(0x9C5C935CL, 1UL), (VECTOR(uint32_t, 2))(0x9C5C935CL, 1UL), 0x9C5C935CL, 1UL, 0x9C5C935CL, 1UL);
        int32_t l_140 = 1L;
        int32_t l_144 = 0x7FD118F9L;
        int32_t l_145 = (-5L);
        int32_t l_146 = 0x7368B331L;
        int32_t l_147 = 1L;
        int32_t l_148 = 0x0119DA81L;
        int32_t l_150 = 0x4BCF4E76L;
        int32_t l_151 = 7L;
        VECTOR(int32_t, 4) l_152 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L);
        uint64_t *l_162 = (void*)0;
        uint64_t **l_161 = &l_162;
        uint16_t *l_165 = &p_1176->g_136;
        uint64_t *l_166 = &p_1176->g_100;
        VECTOR(int16_t, 4) l_212 = (VECTOR(int16_t, 4))(0x2EA3L, (VECTOR(int16_t, 2))(0x2EA3L, 1L), 1L);
        VECTOR(uint32_t, 2) l_274 = (VECTOR(uint32_t, 2))(0x6980B8B4L, 0UL);
        int16_t l_304 = 0x7CDEL;
        int8_t *l_313 = (void*)0;
        int64_t l_371 = (-10L);
        int i;
        for (p_26 = 0; (p_26 != 26); ++p_26)
        { /* block id: 15 */
            VECTOR(uint32_t, 8) l_46 = (VECTOR(uint32_t, 8))(0x02500428L, (VECTOR(uint32_t, 4))(0x02500428L, (VECTOR(uint32_t, 2))(0x02500428L, 4294967292UL), 4294967292UL), 4294967292UL, 0x02500428L, 4294967292UL);
            int32_t **l_59[6][1][9] = {{{&p_1176->g_30,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,&p_1176->g_30}},{{&p_1176->g_30,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,&p_1176->g_30}},{{&p_1176->g_30,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,&p_1176->g_30}},{{&p_1176->g_30,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,&p_1176->g_30}},{{&p_1176->g_30,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,&p_1176->g_30}},{{&p_1176->g_30,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,(void*)0,(void*)0,&p_1176->g_30,&p_1176->g_30}}};
            int32_t ***l_58 = &l_59[3][0][2];
            int8_t l_149 = 0x7CL;
            int i, j, k;
            (1 + 1);
        }
        if ((safe_mul_func_uint16_t_u_u((!((safe_sub_func_int8_t_s_s(0x14L, (l_160 == l_161))) >= 0x79BD9DFB2C95BC61L)), (safe_div_func_uint64_t_u_u((p_26 ^ (l_165 == (void*)0)), ((*l_166) = 0x71F7C4095CDC65A5L))))))
        { /* block id: 64 */
            int8_t l_176[1][8] = {{0x01L,0x01L,0x01L,0x01L,0x01L,0x01L,0x01L,0x01L}};
            uint16_t l_177 = 0x1730L;
            int32_t l_180 = (-1L);
            int32_t l_181 = (-1L);
            int32_t l_183 = 0x779EABF1L;
            int32_t l_184 = (-1L);
            int32_t l_186 = 0L;
            int32_t **l_234 = &l_138;
            uint64_t *l_273 = (void*)0;
            int i, j;
            if (l_47.sc)
            { /* block id: 65 */
                int8_t l_182 = 0x0AL;
                VECTOR(int32_t, 4) l_185 = (VECTOR(int32_t, 4))(0x3E280712L, (VECTOR(int32_t, 2))(0x3E280712L, 1L), 1L);
                uint64_t l_188 = 0xAFD29CBA65D713EDL;
                VECTOR(int64_t, 2) l_250 = (VECTOR(int64_t, 2))(0x0D0EEF9D87B19F7FL, 1L);
                int i;
                for (l_146 = 0; (l_146 > (-22)); --l_146)
                { /* block id: 68 */
                    uint8_t *l_171 = &p_1176->g_134;
                    (*l_138) ^= (safe_rshift_func_uint8_t_u_s(((*l_171) |= 0x40L), 0));
                }
                if ((*p_28))
                    continue;
                for (p_26 = (-15); (p_26 == (-12)); p_26 = safe_add_func_int16_t_s_s(p_26, 3))
                { /* block id: 75 */
                    int32_t *l_175[7][9][4] = {{{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145}},{{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145}},{{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145}},{{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145}},{{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145}},{{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145}},{{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145},{(void*)0,(void*)0,(void*)0,&l_145}}};
                    uint8_t l_260 = 0xADL;
                    int i, j, k;
                    if (l_174)
                        break;
                    ++l_177;
                    if ((*p_28))
                    { /* block id: 78 */
                        int32_t l_187 = (-1L);
                        uint32_t *l_203 = (void*)0;
                        uint32_t *l_204 = (void*)0;
                        uint32_t *l_205 = (void*)0;
                        uint32_t *l_206 = (void*)0;
                        uint32_t *l_207 = (void*)0;
                        uint32_t *l_208 = (void*)0;
                        uint32_t *l_233[6][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
                        int i, j;
                        l_188--;
                        (*l_138) |= (safe_lshift_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s((1L ^ (l_185.x , (safe_sub_func_int16_t_s_s(p_1176->g_82, (safe_div_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(5UL, p_1176->g_90.x)), (((((safe_add_func_uint32_t_u_u((--p_1176->g_209), (!GROUP_DIVERGE(1, 1)))) || ((VECTOR(int16_t, 4))(l_212.zwyw)).x) ^ (l_204 == (l_203 = p_1176->g_30))) > (p_1176->g_86 != p_1176->g_136)) && p_1176->g_100))))))), 0)) ^ p_1176->g_126.s8), 15));
                        (*l_234) = func_37(((((safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(p_26, 0)), ((*l_138) = (!(((safe_lshift_func_int16_t_s_u(((safe_mod_func_uint64_t_u_u(((+(safe_div_func_int16_t_s_s((l_185.z & 9L), 0x3905L))) , ((safe_rshift_func_uint8_t_u_s(((l_138 != p_27) , l_187), 3)) && (safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((safe_div_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(p_26, ((*p_28) , 1UL))), l_187)), 1)), (-4L))))), FAKE_DIVERGE(p_1176->global_2_offset, get_global_id(2), 10))) ^ p_1176->g_2), (*l_138))) == l_180) >= l_181))))) < (*p_28)) >= 18446744073709551610UL) , (void*)0), l_234, p_27, p_1176->g_90.x, p_26, p_1176);
                    }
                    else
                    { /* block id: 85 */
                        uint64_t l_235 = 0x7C41B23CF24CAD0BL;
                        VECTOR(int64_t, 8) l_251 = (VECTOR(int64_t, 8))(0x53336261CEE45C02L, (VECTOR(int64_t, 4))(0x53336261CEE45C02L, (VECTOR(int64_t, 2))(0x53336261CEE45C02L, 0x0F783CF02ED3A752L), 0x0F783CF02ED3A752L), 0x0F783CF02ED3A752L, 0x53336261CEE45C02L, 0x0F783CF02ED3A752L);
                        int i;
                        l_235++;
                        (**l_234) = (p_1176->g_2 ^ (((safe_mod_func_int16_t_s_s((((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(p_1176->g_240.yy)).xxxxyyxx)).s41, ((VECTOR(uint32_t, 16))(0xAB055625L, 0x961AA78AL, ((VECTOR(uint32_t, 2))(0x88194C3CL, 0xF8B529CFL)), 0x2C2F74A8L, 0xAC5798A4L, FAKE_DIVERGE(p_1176->global_1_offset, get_global_id(1), 10), GROUP_DIVERGE(2, 1), 0x6FF692CFL, ((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(p_1176->g_241.yyxxyyxxyyxxyyxx)).s5d47)).hi)))), 5UL, 4294967295UL)).odd, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(4UL, 4294967288UL)).yxxx)).hi, ((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 8))((p_1176->g_2 >= p_26), (safe_mod_func_int8_t_s_s((((((safe_lshift_func_uint8_t_u_u(((safe_div_func_uint64_t_u_u(p_26, (safe_sub_func_uint64_t_u_u((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_250.xxyyxyyy)), ((VECTOR(int64_t, 4))(l_185.w, ((VECTOR(int64_t, 2))(l_251.s13)), 0x306CAAE0C315EC5FL)), 0x6DF9666D4F1AB6FBL, 0x078C291C5DBEE813L, (-1L), 0x7F07D5070CE382F9L)).sc2a6)).x == (((((((safe_sub_func_uint8_t_u_u(255UL, (safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(((safe_div_func_int16_t_s_s((4L == (**l_234)), p_26)) != 1L), l_251.s1)), 1L)))) , 0x4DFDDD8FAB9531DBL) | p_26) == l_144) || l_251.s3) < l_152.w) >= p_1176->g_100)), l_260)))) && p_26), 6)) == l_251.s5) || 0x5957603C5B6B452FL) != (**l_234)) != (*p_28)), p_26)), ((VECTOR(uint32_t, 4))(0xBF7E2210L)), 0xC05A03AFL, 0x85B63E76L)).s05, ((VECTOR(uint32_t, 2))(0xEF9688DCL))))), ((VECTOR(uint32_t, 2))(0x1C08928BL))))).xyyx, ((VECTOR(uint32_t, 4))(4294967292UL))))).lo))), 4294967294UL, 6UL, 0x962897AAL, 0UL, 4294967295UL)).sfc))).odd , p_1176->g_241.x), p_1176->g_136)) <= p_1176->g_68[0][6]) , 1L));
                        l_141 ^= (((void*)0 != &p_1176->g_30) < ((p_1176->g_86 ^= ((**l_234) = 0x01A02E46L)) <= ((void*)0 != &p_1176->g_31)));
                    }
                }
            }
            else
            { /* block id: 93 */
                uint32_t l_261 = 1UL;
                VECTOR(int8_t, 16) l_264 = (VECTOR(int8_t, 16))(0x1EL, (VECTOR(int8_t, 4))(0x1EL, (VECTOR(int8_t, 2))(0x1EL, 0x43L), 0x43L), 0x43L, 0x1EL, 0x43L, (VECTOR(int8_t, 2))(0x1EL, 0x43L), (VECTOR(int8_t, 2))(0x1EL, 0x43L), 0x1EL, 0x43L, 0x1EL, 0x43L);
                int8_t *l_275 = &l_57;
                int i;
                (**l_234) = (!l_261);
                if ((**l_234))
                    break;
                if (l_261)
                    continue;
                (*l_138) |= ((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((*l_275) = ((((*p_28) & l_148) || (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_264.sfe84)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_265.s0d)).yyyx)))).s4 <= ((safe_add_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s((((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_272.wxwxzxxz)).s2, ((void*)0 == l_273))) , &p_1176->g_134) == (void*)0), 13)), (p_26 && ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))((-5L), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0L, (-4L))), 0x40A4A9FB644B5F29L, (-9L))), (p_1176->g_136 != ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(l_274.xxyyyxxxyxyyxyyy)).se040)))).y), (-1L), 0x5F20FC19CCB66470L)).even)).y))) | (p_1176->g_81 < GROUP_DIVERGE(2, 1))))) < p_26)), ((VECTOR(int8_t, 2))(0x1EL)), 0x1EL)).hi)).hi | 255UL) <= l_144);
            }
        }
        else
        { /* block id: 100 */
            int16_t l_303 = 3L;
            for (p_1176->g_82 = 0; (p_1176->g_82 >= 17); p_1176->g_82 = safe_add_func_int32_t_s_s(p_1176->g_82, 3))
            { /* block id: 103 */
                int8_t l_280 = 0x39L;
                int32_t l_295[3][8] = {{6L,0x0E74AD22L,6L,6L,0x0E74AD22L,6L,6L,0x0E74AD22L},{6L,0x0E74AD22L,6L,6L,0x0E74AD22L,6L,6L,0x0E74AD22L},{6L,0x0E74AD22L,6L,6L,0x0E74AD22L,6L,6L,0x0E74AD22L}};
                uint16_t l_296[1][9] = {{65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL}};
                int64_t *l_299[1][4];
                int16_t *l_300 = (void*)0;
                int16_t *l_301 = (void*)0;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_299[i][j] = &p_1176->g_81;
                }
                for (l_150 = 0; (l_150 <= 20); ++l_150)
                { /* block id: 106 */
                    if (l_280)
                        break;
                    (*l_138) = (p_26 || p_26);
                }
                l_146 = (safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((safe_div_func_int32_t_s_s((*p_28), ((safe_add_func_int16_t_s_s((+((l_147 == ((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 16))((((*l_138) = (safe_sub_func_int32_t_s_s(((((p_26 && (safe_lshift_func_int16_t_s_u(((((p_1176->g_302 ^= (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x01BAD5A2L, 0L)), (-1L), ((VECTOR(int32_t, 4))((l_295[1][1] = ((l_280 , p_1176->g_241.y) < (l_148 = p_1176->g_90.y))), ((VECTOR(int32_t, 2))(0L, 0x6E59A8D7L)), 0x3BA91ADDL)), 9L)).s3 == (FAKE_DIVERGE(p_1176->local_1_offset, get_local_id(1), 10) < ((l_296[0][0] , (safe_lshift_func_int8_t_s_u(((p_26 || (l_151 = p_26)) | (-9L)), 5))) < p_1176->g_81)))) != 0x146EL) , p_1176->g_209) != l_303), FAKE_DIVERGE(p_1176->group_2_offset, get_group_id(2), 10)))) , l_299[0][1]) != &p_1176->g_81) & p_26), 0x5EC2990FL))) != (*p_28)), ((VECTOR(int8_t, 4))((-1L))), 0x03L, p_1176->g_81, p_1176->g_126.s7, 0x33L, 0x1BL, ((VECTOR(int8_t, 4))(0x7CL)), (-1L), 0x74L)).s7, 251UL)) | (*p_28))) || l_304)), p_26)) , p_26))), l_303)), 4));
            }
            for (l_57 = 0; (l_57 < (-8)); --l_57)
            { /* block id: 119 */
                return p_26;
            }
            (*l_138) = (*l_138);
        }
        if (l_307)
            break;
        if ((safe_mod_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((((*l_138) = (p_1176->g_129.s0 <= p_1176->g_240.x)) & (p_26 < (((VECTOR(uint16_t, 2))(p_1176->g_312.yy)).lo != (l_313 != (void*)0)))), (((l_152.x = (((VECTOR(uint8_t, 8))(0x90L, l_274.x, l_146, (safe_sub_func_int64_t_s_s(2L, (safe_sub_func_int32_t_s_s(0x5268F880L, GROUP_DIVERGE(0, 1))))), 0x75L, ((VECTOR(uint8_t, 2))(6UL)), 0xF3L)).s5 < p_1176->g_100)) , p_27) != l_138))) >= p_1176->g_90.y), l_272.y)))
        { /* block id: 127 */
            int32_t *l_318 = &l_147;
            int32_t *l_319[2];
            uint64_t l_320[7][6][6] = {{{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL}},{{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL}},{{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL}},{{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL}},{{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL}},{{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL}},{{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL},{0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL,0x3756B5BCA2D1B2ACL}}};
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_319[i] = &l_150;
            l_320[3][2][3]++;
        }
        else
        { /* block id: 129 */
            int32_t l_328 = (-7L);
            VECTOR(int32_t, 16) l_329 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x10401ACAL), 0x10401ACAL), 0x10401ACAL, (-1L), 0x10401ACAL, (VECTOR(int32_t, 2))((-1L), 0x10401ACAL), (VECTOR(int32_t, 2))((-1L), 0x10401ACAL), (-1L), 0x10401ACAL, (-1L), 0x10401ACAL);
            int32_t l_330 = 0x0F3A398DL;
            uint16_t l_331 = 0UL;
            VECTOR(uint16_t, 8) l_348 = (VECTOR(uint16_t, 8))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 65535UL), 65535UL), 65535UL, 6UL, 65535UL);
            int32_t **l_368 = &p_1176->g_30;
            int32_t ***l_367[2];
            uint16_t l_374 = 0UL;
            int i;
            for (i = 0; i < 2; i++)
                l_367[i] = &l_368;
            for (l_142 = 0; (l_142 <= (-14)); l_142 = safe_sub_func_int16_t_s_s(l_142, 2))
            { /* block id: 132 */
                int32_t *l_325 = &l_143[3];
                int32_t *l_326 = &l_150;
                int32_t *l_327[1][4][2] = {{{&l_143[0],&l_143[0]},{&l_143[0],&l_143[0]},{&l_143[0],&l_143[0]},{&l_143[0],&l_143[0]}}};
                VECTOR(int16_t, 2) l_335 = (VECTOR(int16_t, 2))(0x6BE0L, 6L);
                uint32_t *l_341 = (void*)0;
                int32_t **l_350 = &l_327[0][2][1];
                int32_t ***l_349 = &l_350;
                VECTOR(uint16_t, 8) l_351 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL);
                int16_t *l_362[6] = {&p_1176->g_82,&p_1176->g_82,&p_1176->g_82,&p_1176->g_82,&p_1176->g_82,&p_1176->g_82};
                uint32_t *l_363 = (void*)0;
                uint32_t *l_364[10][4] = {{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365},{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365},{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365},{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365},{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365},{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365},{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365},{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365},{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365},{&p_1176->g_365,&p_1176->g_365,(void*)0,&p_1176->g_365}};
                uint64_t l_366 = 8UL;
                int i, j, k;
                l_331--;
                (*l_325) |= (((((VECTOR(int16_t, 4))(l_334.s2, ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_335.yxyyxxxx)).s7172472511055053)).sb1, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1176->g_336.sce)).yyxx)).even))), (-1L))).w | (safe_add_func_int32_t_s_s(((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(((*l_326) |= p_26), 0xE01073E5L, 0x773DE4EDL, 4294967294UL)).x, ((safe_sub_func_int32_t_s_s((p_26 || ((safe_div_func_uint16_t_u_u((((VECTOR(uint16_t, 8))(l_348.s05051402)).s1 < (((void*)0 == l_349) < ((VECTOR(uint16_t, 2))(l_351.s21)).hi)), (safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(252UL, ((safe_add_func_int8_t_s_s((safe_div_func_int32_t_s_s(l_330, ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((safe_add_func_uint32_t_u_u((l_362[3] != ((l_151 ^= p_1176->g_312.x) , &l_304)), p_1176->g_302)), p_1176->g_302, 0x0DECB16BL, 1L)).zywwyxzx, ((VECTOR(int32_t, 8))((-10L))), ((VECTOR(int32_t, 8))(6L))))).s5)), (*l_138))) , l_366), p_1176->g_31, ((VECTOR(uint8_t, 2))(0x47L)), ((VECTOR(uint8_t, 2))(0x9BL)), 0x70L)).s5, p_26)), 8)))) ^ p_1176->g_68[0][5])), 0x74E8F814L)) >= (-10L)))) , p_1176->g_312.y), l_348.s1))) , l_367[1]) != &l_368);
            }
            for (l_140 = 0; (l_140 != (-16)); l_140--)
            { /* block id: 140 */
                int64_t l_372 = 0x75CF321F62E90034L;
                int32_t l_373 = 0x2ACB2E8BL;
                --l_374;
            }
            (*l_368) = &p_1176->g_68[0][4];
            l_152.w |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_1176->g_377.yzwyywxyxyzwzxzy)))).s8;
        }
    }
    p_1176->g_379 |= (((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(5L, 0x026AL)).xxxy, ((VECTOR(int16_t, 16))(l_378.yyxxxxyxyxxxxxyx)).sd7d5))).x | 0xE675L);
    (*p_28) = (*l_138);
    (*p_28) &= (p_1176->g_240.y | (+(((VECTOR(int8_t, 2))(0x54L, 0x2EL)).lo || (!((((((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 4))(p_1176->g_380.xzww)), ((VECTOR(int64_t, 4))(p_1176->g_381.s91f0)), ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),VECTOR(int64_t, 4),((VECTOR(int64_t, 2))(0x44C61683D0DFF1FBL, 0x625F4AEADAED3504L)).yyxy, ((VECTOR(int64_t, 2))(l_382.yx)).xyxy, ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 8))(((l_160 != (void*)0) >= ((((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 16))(l_385.yxxyyxxyxyyxyxxx)).lo, ((VECTOR(int32_t, 2))(l_386.s32)).xxxyxxyx))).s1 , &p_1176->g_30) != &p_27)), (safe_sub_func_uint8_t_u_u(((p_1176->g_389 != &l_57) && ((void*)0 == p_27)), p_26)), (*l_138), ((VECTOR(int64_t, 2))(1L)), (*l_138), (-1L), 0x0DAD3A88D16A9023L)).odd, ((VECTOR(int64_t, 4))(0x6177477AFA9F35B0L))))).lo, ((VECTOR(int64_t, 2))(2L))))).yyxy))).xzwzzwzy, ((VECTOR(int64_t, 8))(0x1B9BD92CF59D348BL))))).s5074554766620123)).even, ((VECTOR(int64_t, 8))(0x6F1731AC907EA7DDL))))).hi))).z , p_26) ^ (*l_138)) <= p_26) , 0x77L)))));
    return (*l_138);
}


/* ------------------------------------------ */
/* 
 * reads : p_1176->g_68 p_1176->g_90 p_1176->g_30 p_1176->g_86
 * writes: p_1176->g_81
 */
int32_t * func_37(int32_t ** p_38, int32_t ** p_39, int32_t * p_40, int32_t  p_41, int8_t  p_42, struct S0 * p_1176)
{ /* block id: 44 */
    int64_t *l_101[2][3];
    int32_t l_102 = 0x57ACA13CL;
    int32_t l_113 = 0x66362AC5L;
    int32_t l_114[1][9][5] = {{{(-3L),0x41807002L,(-7L),1L,(-1L)},{(-3L),0x41807002L,(-7L),1L,(-1L)},{(-3L),0x41807002L,(-7L),1L,(-1L)},{(-3L),0x41807002L,(-7L),1L,(-1L)},{(-3L),0x41807002L,(-7L),1L,(-1L)},{(-3L),0x41807002L,(-7L),1L,(-1L)},{(-3L),0x41807002L,(-7L),1L,(-1L)},{(-3L),0x41807002L,(-7L),1L,(-1L)},{(-3L),0x41807002L,(-7L),1L,(-1L)}}};
    uint64_t *l_132 = &p_1176->g_100;
    int32_t l_137 = 0x726B9B1EL;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
            l_101[i][j] = &p_1176->g_81;
    }
    l_102 = (p_1176->g_68[0][4] >= (p_1176->g_81 = p_1176->g_90.y));
    for (l_102 = 0; (l_102 == (-28)); --l_102)
    { /* block id: 49 */
        VECTOR(uint64_t, 16) l_125 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xACB3E338FB5A0E2DL), 0xACB3E338FB5A0E2DL), 0xACB3E338FB5A0E2DL, 18446744073709551615UL, 0xACB3E338FB5A0E2DL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xACB3E338FB5A0E2DL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xACB3E338FB5A0E2DL), 18446744073709551615UL, 0xACB3E338FB5A0E2DL, 18446744073709551615UL, 0xACB3E338FB5A0E2DL);
        uint64_t *l_131 = &p_1176->g_100;
        uint64_t **l_130[8][2][4] = {{{&l_131,&l_131,(void*)0,&l_131},{&l_131,&l_131,(void*)0,&l_131}},{{&l_131,&l_131,(void*)0,&l_131},{&l_131,&l_131,(void*)0,&l_131}},{{&l_131,&l_131,(void*)0,&l_131},{&l_131,&l_131,(void*)0,&l_131}},{{&l_131,&l_131,(void*)0,&l_131},{&l_131,&l_131,(void*)0,&l_131}},{{&l_131,&l_131,(void*)0,&l_131},{&l_131,&l_131,(void*)0,&l_131}},{{&l_131,&l_131,(void*)0,&l_131},{&l_131,&l_131,(void*)0,&l_131}},{{&l_131,&l_131,(void*)0,&l_131},{&l_131,&l_131,(void*)0,&l_131}},{{&l_131,&l_131,(void*)0,&l_131},{&l_131,&l_131,(void*)0,&l_131}}};
        uint8_t *l_133[3][4] = {{&p_1176->g_134,&p_1176->g_134,&p_1176->g_134,&p_1176->g_134},{&p_1176->g_134,&p_1176->g_134,&p_1176->g_134,&p_1176->g_134},{&p_1176->g_134,&p_1176->g_134,&p_1176->g_134,&p_1176->g_134}};
        uint16_t *l_135 = &p_1176->g_136;
        int i, j, k;
        l_137 |= ((((safe_sub_func_int8_t_s_s(((safe_mod_func_int64_t_s_s((3L >= ((safe_div_func_uint64_t_u_u((((((l_114[0][0][0] = (l_113 = ((safe_rshift_func_int16_t_s_u(l_102, 1)) <= l_102))) && (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((-1L), 0L)), (-9L), ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((~(safe_rshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u((((((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 16))((safe_rshift_func_int8_t_s_u(((safe_div_func_int64_t_s_s(0x5727E68FBA5D09CAL, ((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 2))(0x384784E5F115DA44L, 0x071A0B9A4A3E56A0L)).yxxx, ((VECTOR(uint64_t, 4))(l_125.s0dc5))))).x)) , 5L), 3)), ((VECTOR(uint32_t, 4))(p_1176->g_126.s0f71)), 8UL, FAKE_DIVERGE(p_1176->local_0_offset, get_local_id(0), 10), ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((*l_135) = (l_125.s5 > ((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(p_1176->g_129.s0d6e1a5d)).s3646023631001100)).sb, (l_125.sf && (l_114[0][8][1] = ((l_132 = (void*)0) == &p_1176->g_100))))) , 6L))), 0xF15CL, 1UL, 0xB20CL)).w, 65534UL, 0x238DL, ((VECTOR(uint16_t, 4))(65529UL)), 0xCA00L, 0xE2E1L, 2UL, ((VECTOR(uint16_t, 4))(0UL)), 0x0E80L, 0x4DAEL)).odd, ((VECTOR(uint16_t, 8))(0x251FL))))).s23, ((VECTOR(uint16_t, 2))(5UL))))), 0xB9D5F192L, 1UL, ((VECTOR(uint32_t, 4))(4294967292UL)), 0xF28033D0L)).lo, (uint32_t)p_1176->g_2))).s2260377015214111, ((VECTOR(uint32_t, 16))(0x85A5C352L))))).s4 , l_125.sa) ^ p_42) , l_114[0][4][0]), p_42)), 11))) , p_42), ((VECTOR(int8_t, 2))(0x7EL)), ((VECTOR(int8_t, 2))(0x73L)), 0x43L, l_125.sf, (-10L), p_1176->g_129.s5, 9L, ((VECTOR(int8_t, 4))(0x13L)), 0x55L, 1L)).hi)))).hi)).yyxxzxxy)).lo, ((VECTOR(int8_t, 4))(0L))))), 8L)).s63)).yxxx)).lo, ((VECTOR(int8_t, 2))(5L))))).hi, l_125.sf))) >= p_1176->g_68[0][0]) >= p_41) , 18446744073709551615UL), p_42)) , (**p_39))), l_125.s4)) < 0x33E8CD857577104EL), 0xCCL)) <= p_1176->g_68[0][6]) , l_101[0][0]) != (void*)0);
    }
    return &p_1176->g_68[0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1176->g_90 p_1176->g_30 p_1176->g_86
 * writes: p_1176->g_100 p_1176->g_86
 */
int32_t ** func_43(uint64_t  p_44, uint32_t  p_45, struct S0 * p_1176)
{ /* block id: 39 */
    int32_t **l_89 = &p_1176->g_30;
    int32_t ***l_88 = &l_89;
    uint64_t *l_99 = &p_1176->g_100;
    (*p_1176->g_30) = ((((l_88 == (void*)0) & ((VECTOR(uint32_t, 2))(p_1176->g_90.yx)).odd) , (safe_rshift_func_int16_t_s_u((**l_89), 10))) >= (p_1176->g_86 , (safe_mod_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(((((void*)0 == (*l_88)) , 0x7895L) && ((safe_mod_func_int16_t_s_s((((*l_99) = 0x9EC88C485E2798E9L) > 0x3864406D402E0EFCL), (***l_88))) , 1L)), 0xB0E876F3L)), (**l_89)))));
    (*p_1176->g_30) = (-1L);
    return &p_1176->g_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_1176->g_68 p_1176->g_82 p_1176->g_86 p_1176->g_30
 * writes: p_1176->g_68 p_1176->g_81 p_1176->g_82 p_1176->g_30 p_1176->g_86
 */
uint64_t  func_50(uint32_t  p_51, int32_t  p_52, struct S0 * p_1176)
{ /* block id: 24 */
    int32_t *l_67 = &p_1176->g_68[0][5];
    int32_t ***l_73 = (void*)0;
    int32_t **l_75 = &p_1176->g_30;
    int32_t ***l_74 = &l_75;
    int16_t l_76 = 2L;
    int64_t *l_79 = (void*)0;
    int64_t *l_80 = &p_1176->g_81;
    uint32_t l_84 = 0x78C2BA28L;
    int32_t l_85 = 5L;
    int32_t **l_87 = &p_1176->g_30;
    (*l_67) |= 0x4F39AB1BL;
    p_1176->g_86 ^= (l_85 = ((*l_67) = (0x6BF2L & (func_69((4UL <= (p_1176->g_82 ^= ((*l_80) = ((4294967295UL == (&l_67 != ((*l_74) = &l_67))) >= ((l_76 == p_1176->g_68[0][5]) && ((safe_lshift_func_int16_t_s_s(((p_52 || ((void*)0 == &p_1176->g_30)) == p_1176->g_68[0][5]), p_51)) , 3L)))))), p_51, &p_1176->g_30, p_1176) >= l_84))));
    (***l_74) = (*p_1176->g_30);
    (*l_87) = ((*l_75) = &p_1176->g_86);
    return p_1176->g_86;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_53(int32_t  p_54, int32_t ** p_55, uint32_t  p_56, struct S0 * p_1176)
{ /* block id: 17 */
    uint16_t l_66 = 0x4911L;
    for (p_56 = (-14); (p_56 >= 13); ++p_56)
    { /* block id: 20 */
        return l_66;
    }
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1176->g_30
 */
int32_t  func_69(int32_t  p_70, int64_t  p_71, int32_t ** p_72, struct S0 * p_1176)
{ /* block id: 29 */
    int64_t l_83 = 0x59AE0A12E6C4949FL;
    (*p_72) = &p_1176->g_68[0][0];
    return l_83;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1177;
    struct S0* p_1176 = &c_1177;
    struct S0 c_1178 = {
        (-4L), // p_1176->g_2
        (-1L), // p_1176->g_31
        &p_1176->g_31, // p_1176->g_30
        {{0x4B4EA65DL,0x4B4EA65DL,0x4B4EA65DL,0x4B4EA65DL,0x4B4EA65DL,0x4B4EA65DL,0x4B4EA65DL}}, // p_1176->g_68
        0L, // p_1176->g_81
        0L, // p_1176->g_82
        0x246355D6L, // p_1176->g_86
        (VECTOR(uint32_t, 2))(0x7D9ACC98L, 0x2CAB94E7L), // p_1176->g_90
        0UL, // p_1176->g_100
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), 4294967293UL), 4294967293UL, 4294967295UL, 4294967293UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), 4294967295UL, 4294967293UL, 4294967295UL, 4294967293UL), // p_1176->g_126
        (VECTOR(uint16_t, 16))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0xC699L), 0xC699L), 0xC699L, 6UL, 0xC699L, (VECTOR(uint16_t, 2))(6UL, 0xC699L), (VECTOR(uint16_t, 2))(6UL, 0xC699L), 6UL, 0xC699L, 6UL, 0xC699L), // p_1176->g_129
        0x20L, // p_1176->g_134
        0xAFA9L, // p_1176->g_136
        4294967295UL, // p_1176->g_209
        (VECTOR(uint32_t, 2))(0xEFF1BEE3L, 0x28D40452L), // p_1176->g_240
        (VECTOR(uint32_t, 2))(0x77F82278L, 6UL), // p_1176->g_241
        9UL, // p_1176->g_302
        (VECTOR(uint16_t, 2))(0xADCEL, 8UL), // p_1176->g_312
        (VECTOR(int16_t, 16))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0x4486L), 0x4486L), 0x4486L, (-9L), 0x4486L, (VECTOR(int16_t, 2))((-9L), 0x4486L), (VECTOR(int16_t, 2))((-9L), 0x4486L), (-9L), 0x4486L, (-9L), 0x4486L), // p_1176->g_336
        4294967288UL, // p_1176->g_365
        (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 1L), 1L), // p_1176->g_377
        0x325CL, // p_1176->g_379
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-2L)), (-2L)), // p_1176->g_380
        (VECTOR(int64_t, 16))(0x1EB5D55F836574BBL, (VECTOR(int64_t, 4))(0x1EB5D55F836574BBL, (VECTOR(int64_t, 2))(0x1EB5D55F836574BBL, 0x15AAD6F7E4D828B7L), 0x15AAD6F7E4D828B7L), 0x15AAD6F7E4D828B7L, 0x1EB5D55F836574BBL, 0x15AAD6F7E4D828B7L, (VECTOR(int64_t, 2))(0x1EB5D55F836574BBL, 0x15AAD6F7E4D828B7L), (VECTOR(int64_t, 2))(0x1EB5D55F836574BBL, 0x15AAD6F7E4D828B7L), 0x1EB5D55F836574BBL, 0x15AAD6F7E4D828B7L, 0x1EB5D55F836574BBL, 0x15AAD6F7E4D828B7L), // p_1176->g_381
        (-1L), // p_1176->g_390
        &p_1176->g_390, // p_1176->g_389
        (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), (-1L)), (-1L)), // p_1176->g_408
        (void*)0, // p_1176->g_428
        &p_1176->g_428, // p_1176->g_427
        &p_1176->g_427, // p_1176->g_426
        (VECTOR(uint32_t, 2))(0x5816949AL, 0x1EBF0C71L), // p_1176->g_429
        &p_1176->g_81, // p_1176->g_459
        (VECTOR(int16_t, 8))(0x46E9L, (VECTOR(int16_t, 4))(0x46E9L, (VECTOR(int16_t, 2))(0x46E9L, 0x5E53L), 0x5E53L), 0x5E53L, 0x46E9L, 0x5E53L), // p_1176->g_467
        0x46L, // p_1176->g_483
        (void*)0, // p_1176->g_547
        {{{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100}},{{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100}},{{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100}},{{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100},{&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100,&p_1176->g_100}}}, // p_1176->g_569
        &p_1176->g_569[1][1][1], // p_1176->g_568
        &p_1176->g_569[1][1][1], // p_1176->g_570
        (VECTOR(uint32_t, 2))(4294967287UL, 0UL), // p_1176->g_572
        4294967295UL, // p_1176->g_576
        (VECTOR(int16_t, 4))(0x6AAFL, (VECTOR(int16_t, 2))(0x6AAFL, 0x6D63L), 0x6D63L), // p_1176->g_606
        {{0L,5L,0L,0L,5L},{0L,5L,0L,0L,5L},{0L,5L,0L,0L,5L},{0L,5L,0L,0L,5L},{0L,5L,0L,0L,5L}}, // p_1176->g_607
        (VECTOR(uint64_t, 2))(0x75A2C0974074CA52L, 3UL), // p_1176->g_612
        (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x533A1AE8C211CDAFL), 0x533A1AE8C211CDAFL), 0x533A1AE8C211CDAFL, 0UL, 0x533A1AE8C211CDAFL, (VECTOR(uint64_t, 2))(0UL, 0x533A1AE8C211CDAFL), (VECTOR(uint64_t, 2))(0UL, 0x533A1AE8C211CDAFL), 0UL, 0x533A1AE8C211CDAFL, 0UL, 0x533A1AE8C211CDAFL), // p_1176->g_614
        {{&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86},{&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86},{&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86,&p_1176->g_86}}, // p_1176->g_692
        &p_1176->g_68[0][5], // p_1176->g_693
        (void*)0, // p_1176->g_725
        {&p_1176->g_725,&p_1176->g_725,&p_1176->g_725,&p_1176->g_725,&p_1176->g_725,&p_1176->g_725}, // p_1176->g_724
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), // p_1176->g_753
        &p_1176->g_31, // p_1176->g_771
        {0x2C252A1CL,0x2C252A1CL,0x2C252A1CL,0x2C252A1CL,0x2C252A1CL,0x2C252A1CL,0x2C252A1CL}, // p_1176->g_776
        (VECTOR(uint32_t, 4))(0xFF4E7EF9L, (VECTOR(uint32_t, 2))(0xFF4E7EF9L, 4294967295UL), 4294967295UL), // p_1176->g_797
        (VECTOR(int32_t, 16))(0x34EF80B1L, (VECTOR(int32_t, 4))(0x34EF80B1L, (VECTOR(int32_t, 2))(0x34EF80B1L, 0L), 0L), 0L, 0x34EF80B1L, 0L, (VECTOR(int32_t, 2))(0x34EF80B1L, 0L), (VECTOR(int32_t, 2))(0x34EF80B1L, 0L), 0x34EF80B1L, 0L, 0x34EF80B1L, 0L), // p_1176->g_804
        (VECTOR(uint8_t, 2))(1UL, 7UL), // p_1176->g_814
        (VECTOR(int16_t, 8))(0x6CB0L, (VECTOR(int16_t, 4))(0x6CB0L, (VECTOR(int16_t, 2))(0x6CB0L, 0L), 0L), 0L, 0x6CB0L, 0L), // p_1176->g_832
        1UL, // p_1176->g_849
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_1176->g_852
        (VECTOR(int8_t, 8))(0x32L, (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, 0x54L), 0x54L), 0x54L, 0x32L, 0x54L), // p_1176->g_856
        (VECTOR(int16_t, 4))(0x07F2L, (VECTOR(int16_t, 2))(0x07F2L, (-1L)), (-1L)), // p_1176->g_875
        18446744073709551615UL, // p_1176->g_894
        (VECTOR(int8_t, 8))(0x29L, (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, 0x11L), 0x11L), 0x11L, 0x29L, 0x11L), // p_1176->g_897
        (void*)0, // p_1176->g_930
        &p_1176->g_930, // p_1176->g_929
        (void*)0, // p_1176->g_987
        &p_1176->g_987, // p_1176->g_986
        (VECTOR(int32_t, 16))(0x1CAE7627L, (VECTOR(int32_t, 4))(0x1CAE7627L, (VECTOR(int32_t, 2))(0x1CAE7627L, 8L), 8L), 8L, 0x1CAE7627L, 8L, (VECTOR(int32_t, 2))(0x1CAE7627L, 8L), (VECTOR(int32_t, 2))(0x1CAE7627L, 8L), 0x1CAE7627L, 8L, 0x1CAE7627L, 8L), // p_1176->g_999
        (VECTOR(int64_t, 16))(9L, (VECTOR(int64_t, 4))(9L, (VECTOR(int64_t, 2))(9L, 0x662D957019B4B2EAL), 0x662D957019B4B2EAL), 0x662D957019B4B2EAL, 9L, 0x662D957019B4B2EAL, (VECTOR(int64_t, 2))(9L, 0x662D957019B4B2EAL), (VECTOR(int64_t, 2))(9L, 0x662D957019B4B2EAL), 9L, 0x662D957019B4B2EAL, 9L, 0x662D957019B4B2EAL), // p_1176->g_1006
        (VECTOR(uint16_t, 4))(0xCF34L, (VECTOR(uint16_t, 2))(0xCF34L, 5UL), 5UL), // p_1176->g_1009
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x31CB1F97L), 0x31CB1F97L), // p_1176->g_1020
        &p_1176->g_986, // p_1176->g_1033
        (void*)0, // p_1176->g_1074
        {9L}, // p_1176->g_1092
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x3FL), 0x3FL), 0x3FL, 1L, 0x3FL, (VECTOR(int8_t, 2))(1L, 0x3FL), (VECTOR(int8_t, 2))(1L, 0x3FL), 1L, 0x3FL, 1L, 0x3FL), // p_1176->g_1139
        0UL, // p_1176->g_1151
        &p_1176->g_30, // p_1176->g_1167
        {{{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0},{(void*)0,(void*)0,&p_1176->g_68[0][5],(void*)0}}}, // p_1176->g_1174
        sequence_input[get_global_id(0)], // p_1176->global_0_offset
        sequence_input[get_global_id(1)], // p_1176->global_1_offset
        sequence_input[get_global_id(2)], // p_1176->global_2_offset
        sequence_input[get_local_id(0)], // p_1176->local_0_offset
        sequence_input[get_local_id(1)], // p_1176->local_1_offset
        sequence_input[get_local_id(2)], // p_1176->local_2_offset
        sequence_input[get_group_id(0)], // p_1176->group_0_offset
        sequence_input[get_group_id(1)], // p_1176->group_1_offset
        sequence_input[get_group_id(2)], // p_1176->group_2_offset
    };
    c_1177 = c_1178;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1176);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1176->g_2, "p_1176->g_2", print_hash_value);
    transparent_crc(p_1176->g_31, "p_1176->g_31", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1176->g_68[i][j], "p_1176->g_68[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1176->g_81, "p_1176->g_81", print_hash_value);
    transparent_crc(p_1176->g_82, "p_1176->g_82", print_hash_value);
    transparent_crc(p_1176->g_86, "p_1176->g_86", print_hash_value);
    transparent_crc(p_1176->g_90.x, "p_1176->g_90.x", print_hash_value);
    transparent_crc(p_1176->g_90.y, "p_1176->g_90.y", print_hash_value);
    transparent_crc(p_1176->g_100, "p_1176->g_100", print_hash_value);
    transparent_crc(p_1176->g_126.s0, "p_1176->g_126.s0", print_hash_value);
    transparent_crc(p_1176->g_126.s1, "p_1176->g_126.s1", print_hash_value);
    transparent_crc(p_1176->g_126.s2, "p_1176->g_126.s2", print_hash_value);
    transparent_crc(p_1176->g_126.s3, "p_1176->g_126.s3", print_hash_value);
    transparent_crc(p_1176->g_126.s4, "p_1176->g_126.s4", print_hash_value);
    transparent_crc(p_1176->g_126.s5, "p_1176->g_126.s5", print_hash_value);
    transparent_crc(p_1176->g_126.s6, "p_1176->g_126.s6", print_hash_value);
    transparent_crc(p_1176->g_126.s7, "p_1176->g_126.s7", print_hash_value);
    transparent_crc(p_1176->g_126.s8, "p_1176->g_126.s8", print_hash_value);
    transparent_crc(p_1176->g_126.s9, "p_1176->g_126.s9", print_hash_value);
    transparent_crc(p_1176->g_126.sa, "p_1176->g_126.sa", print_hash_value);
    transparent_crc(p_1176->g_126.sb, "p_1176->g_126.sb", print_hash_value);
    transparent_crc(p_1176->g_126.sc, "p_1176->g_126.sc", print_hash_value);
    transparent_crc(p_1176->g_126.sd, "p_1176->g_126.sd", print_hash_value);
    transparent_crc(p_1176->g_126.se, "p_1176->g_126.se", print_hash_value);
    transparent_crc(p_1176->g_126.sf, "p_1176->g_126.sf", print_hash_value);
    transparent_crc(p_1176->g_129.s0, "p_1176->g_129.s0", print_hash_value);
    transparent_crc(p_1176->g_129.s1, "p_1176->g_129.s1", print_hash_value);
    transparent_crc(p_1176->g_129.s2, "p_1176->g_129.s2", print_hash_value);
    transparent_crc(p_1176->g_129.s3, "p_1176->g_129.s3", print_hash_value);
    transparent_crc(p_1176->g_129.s4, "p_1176->g_129.s4", print_hash_value);
    transparent_crc(p_1176->g_129.s5, "p_1176->g_129.s5", print_hash_value);
    transparent_crc(p_1176->g_129.s6, "p_1176->g_129.s6", print_hash_value);
    transparent_crc(p_1176->g_129.s7, "p_1176->g_129.s7", print_hash_value);
    transparent_crc(p_1176->g_129.s8, "p_1176->g_129.s8", print_hash_value);
    transparent_crc(p_1176->g_129.s9, "p_1176->g_129.s9", print_hash_value);
    transparent_crc(p_1176->g_129.sa, "p_1176->g_129.sa", print_hash_value);
    transparent_crc(p_1176->g_129.sb, "p_1176->g_129.sb", print_hash_value);
    transparent_crc(p_1176->g_129.sc, "p_1176->g_129.sc", print_hash_value);
    transparent_crc(p_1176->g_129.sd, "p_1176->g_129.sd", print_hash_value);
    transparent_crc(p_1176->g_129.se, "p_1176->g_129.se", print_hash_value);
    transparent_crc(p_1176->g_129.sf, "p_1176->g_129.sf", print_hash_value);
    transparent_crc(p_1176->g_134, "p_1176->g_134", print_hash_value);
    transparent_crc(p_1176->g_136, "p_1176->g_136", print_hash_value);
    transparent_crc(p_1176->g_209, "p_1176->g_209", print_hash_value);
    transparent_crc(p_1176->g_240.x, "p_1176->g_240.x", print_hash_value);
    transparent_crc(p_1176->g_240.y, "p_1176->g_240.y", print_hash_value);
    transparent_crc(p_1176->g_241.x, "p_1176->g_241.x", print_hash_value);
    transparent_crc(p_1176->g_241.y, "p_1176->g_241.y", print_hash_value);
    transparent_crc(p_1176->g_302, "p_1176->g_302", print_hash_value);
    transparent_crc(p_1176->g_312.x, "p_1176->g_312.x", print_hash_value);
    transparent_crc(p_1176->g_312.y, "p_1176->g_312.y", print_hash_value);
    transparent_crc(p_1176->g_336.s0, "p_1176->g_336.s0", print_hash_value);
    transparent_crc(p_1176->g_336.s1, "p_1176->g_336.s1", print_hash_value);
    transparent_crc(p_1176->g_336.s2, "p_1176->g_336.s2", print_hash_value);
    transparent_crc(p_1176->g_336.s3, "p_1176->g_336.s3", print_hash_value);
    transparent_crc(p_1176->g_336.s4, "p_1176->g_336.s4", print_hash_value);
    transparent_crc(p_1176->g_336.s5, "p_1176->g_336.s5", print_hash_value);
    transparent_crc(p_1176->g_336.s6, "p_1176->g_336.s6", print_hash_value);
    transparent_crc(p_1176->g_336.s7, "p_1176->g_336.s7", print_hash_value);
    transparent_crc(p_1176->g_336.s8, "p_1176->g_336.s8", print_hash_value);
    transparent_crc(p_1176->g_336.s9, "p_1176->g_336.s9", print_hash_value);
    transparent_crc(p_1176->g_336.sa, "p_1176->g_336.sa", print_hash_value);
    transparent_crc(p_1176->g_336.sb, "p_1176->g_336.sb", print_hash_value);
    transparent_crc(p_1176->g_336.sc, "p_1176->g_336.sc", print_hash_value);
    transparent_crc(p_1176->g_336.sd, "p_1176->g_336.sd", print_hash_value);
    transparent_crc(p_1176->g_336.se, "p_1176->g_336.se", print_hash_value);
    transparent_crc(p_1176->g_336.sf, "p_1176->g_336.sf", print_hash_value);
    transparent_crc(p_1176->g_365, "p_1176->g_365", print_hash_value);
    transparent_crc(p_1176->g_377.x, "p_1176->g_377.x", print_hash_value);
    transparent_crc(p_1176->g_377.y, "p_1176->g_377.y", print_hash_value);
    transparent_crc(p_1176->g_377.z, "p_1176->g_377.z", print_hash_value);
    transparent_crc(p_1176->g_377.w, "p_1176->g_377.w", print_hash_value);
    transparent_crc(p_1176->g_379, "p_1176->g_379", print_hash_value);
    transparent_crc(p_1176->g_380.x, "p_1176->g_380.x", print_hash_value);
    transparent_crc(p_1176->g_380.y, "p_1176->g_380.y", print_hash_value);
    transparent_crc(p_1176->g_380.z, "p_1176->g_380.z", print_hash_value);
    transparent_crc(p_1176->g_380.w, "p_1176->g_380.w", print_hash_value);
    transparent_crc(p_1176->g_381.s0, "p_1176->g_381.s0", print_hash_value);
    transparent_crc(p_1176->g_381.s1, "p_1176->g_381.s1", print_hash_value);
    transparent_crc(p_1176->g_381.s2, "p_1176->g_381.s2", print_hash_value);
    transparent_crc(p_1176->g_381.s3, "p_1176->g_381.s3", print_hash_value);
    transparent_crc(p_1176->g_381.s4, "p_1176->g_381.s4", print_hash_value);
    transparent_crc(p_1176->g_381.s5, "p_1176->g_381.s5", print_hash_value);
    transparent_crc(p_1176->g_381.s6, "p_1176->g_381.s6", print_hash_value);
    transparent_crc(p_1176->g_381.s7, "p_1176->g_381.s7", print_hash_value);
    transparent_crc(p_1176->g_381.s8, "p_1176->g_381.s8", print_hash_value);
    transparent_crc(p_1176->g_381.s9, "p_1176->g_381.s9", print_hash_value);
    transparent_crc(p_1176->g_381.sa, "p_1176->g_381.sa", print_hash_value);
    transparent_crc(p_1176->g_381.sb, "p_1176->g_381.sb", print_hash_value);
    transparent_crc(p_1176->g_381.sc, "p_1176->g_381.sc", print_hash_value);
    transparent_crc(p_1176->g_381.sd, "p_1176->g_381.sd", print_hash_value);
    transparent_crc(p_1176->g_381.se, "p_1176->g_381.se", print_hash_value);
    transparent_crc(p_1176->g_381.sf, "p_1176->g_381.sf", print_hash_value);
    transparent_crc(p_1176->g_390, "p_1176->g_390", print_hash_value);
    transparent_crc(p_1176->g_408.x, "p_1176->g_408.x", print_hash_value);
    transparent_crc(p_1176->g_408.y, "p_1176->g_408.y", print_hash_value);
    transparent_crc(p_1176->g_408.z, "p_1176->g_408.z", print_hash_value);
    transparent_crc(p_1176->g_408.w, "p_1176->g_408.w", print_hash_value);
    transparent_crc(p_1176->g_429.x, "p_1176->g_429.x", print_hash_value);
    transparent_crc(p_1176->g_429.y, "p_1176->g_429.y", print_hash_value);
    transparent_crc(p_1176->g_467.s0, "p_1176->g_467.s0", print_hash_value);
    transparent_crc(p_1176->g_467.s1, "p_1176->g_467.s1", print_hash_value);
    transparent_crc(p_1176->g_467.s2, "p_1176->g_467.s2", print_hash_value);
    transparent_crc(p_1176->g_467.s3, "p_1176->g_467.s3", print_hash_value);
    transparent_crc(p_1176->g_467.s4, "p_1176->g_467.s4", print_hash_value);
    transparent_crc(p_1176->g_467.s5, "p_1176->g_467.s5", print_hash_value);
    transparent_crc(p_1176->g_467.s6, "p_1176->g_467.s6", print_hash_value);
    transparent_crc(p_1176->g_467.s7, "p_1176->g_467.s7", print_hash_value);
    transparent_crc(p_1176->g_483, "p_1176->g_483", print_hash_value);
    transparent_crc(p_1176->g_572.x, "p_1176->g_572.x", print_hash_value);
    transparent_crc(p_1176->g_572.y, "p_1176->g_572.y", print_hash_value);
    transparent_crc(p_1176->g_576, "p_1176->g_576", print_hash_value);
    transparent_crc(p_1176->g_606.x, "p_1176->g_606.x", print_hash_value);
    transparent_crc(p_1176->g_606.y, "p_1176->g_606.y", print_hash_value);
    transparent_crc(p_1176->g_606.z, "p_1176->g_606.z", print_hash_value);
    transparent_crc(p_1176->g_606.w, "p_1176->g_606.w", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1176->g_607[i][j], "p_1176->g_607[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1176->g_612.x, "p_1176->g_612.x", print_hash_value);
    transparent_crc(p_1176->g_612.y, "p_1176->g_612.y", print_hash_value);
    transparent_crc(p_1176->g_614.s0, "p_1176->g_614.s0", print_hash_value);
    transparent_crc(p_1176->g_614.s1, "p_1176->g_614.s1", print_hash_value);
    transparent_crc(p_1176->g_614.s2, "p_1176->g_614.s2", print_hash_value);
    transparent_crc(p_1176->g_614.s3, "p_1176->g_614.s3", print_hash_value);
    transparent_crc(p_1176->g_614.s4, "p_1176->g_614.s4", print_hash_value);
    transparent_crc(p_1176->g_614.s5, "p_1176->g_614.s5", print_hash_value);
    transparent_crc(p_1176->g_614.s6, "p_1176->g_614.s6", print_hash_value);
    transparent_crc(p_1176->g_614.s7, "p_1176->g_614.s7", print_hash_value);
    transparent_crc(p_1176->g_614.s8, "p_1176->g_614.s8", print_hash_value);
    transparent_crc(p_1176->g_614.s9, "p_1176->g_614.s9", print_hash_value);
    transparent_crc(p_1176->g_614.sa, "p_1176->g_614.sa", print_hash_value);
    transparent_crc(p_1176->g_614.sb, "p_1176->g_614.sb", print_hash_value);
    transparent_crc(p_1176->g_614.sc, "p_1176->g_614.sc", print_hash_value);
    transparent_crc(p_1176->g_614.sd, "p_1176->g_614.sd", print_hash_value);
    transparent_crc(p_1176->g_614.se, "p_1176->g_614.se", print_hash_value);
    transparent_crc(p_1176->g_614.sf, "p_1176->g_614.sf", print_hash_value);
    transparent_crc(p_1176->g_753.x, "p_1176->g_753.x", print_hash_value);
    transparent_crc(p_1176->g_753.y, "p_1176->g_753.y", print_hash_value);
    transparent_crc(p_1176->g_753.z, "p_1176->g_753.z", print_hash_value);
    transparent_crc(p_1176->g_753.w, "p_1176->g_753.w", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1176->g_776[i], "p_1176->g_776[i]", print_hash_value);

    }
    transparent_crc(p_1176->g_797.x, "p_1176->g_797.x", print_hash_value);
    transparent_crc(p_1176->g_797.y, "p_1176->g_797.y", print_hash_value);
    transparent_crc(p_1176->g_797.z, "p_1176->g_797.z", print_hash_value);
    transparent_crc(p_1176->g_797.w, "p_1176->g_797.w", print_hash_value);
    transparent_crc(p_1176->g_804.s0, "p_1176->g_804.s0", print_hash_value);
    transparent_crc(p_1176->g_804.s1, "p_1176->g_804.s1", print_hash_value);
    transparent_crc(p_1176->g_804.s2, "p_1176->g_804.s2", print_hash_value);
    transparent_crc(p_1176->g_804.s3, "p_1176->g_804.s3", print_hash_value);
    transparent_crc(p_1176->g_804.s4, "p_1176->g_804.s4", print_hash_value);
    transparent_crc(p_1176->g_804.s5, "p_1176->g_804.s5", print_hash_value);
    transparent_crc(p_1176->g_804.s6, "p_1176->g_804.s6", print_hash_value);
    transparent_crc(p_1176->g_804.s7, "p_1176->g_804.s7", print_hash_value);
    transparent_crc(p_1176->g_804.s8, "p_1176->g_804.s8", print_hash_value);
    transparent_crc(p_1176->g_804.s9, "p_1176->g_804.s9", print_hash_value);
    transparent_crc(p_1176->g_804.sa, "p_1176->g_804.sa", print_hash_value);
    transparent_crc(p_1176->g_804.sb, "p_1176->g_804.sb", print_hash_value);
    transparent_crc(p_1176->g_804.sc, "p_1176->g_804.sc", print_hash_value);
    transparent_crc(p_1176->g_804.sd, "p_1176->g_804.sd", print_hash_value);
    transparent_crc(p_1176->g_804.se, "p_1176->g_804.se", print_hash_value);
    transparent_crc(p_1176->g_804.sf, "p_1176->g_804.sf", print_hash_value);
    transparent_crc(p_1176->g_814.x, "p_1176->g_814.x", print_hash_value);
    transparent_crc(p_1176->g_814.y, "p_1176->g_814.y", print_hash_value);
    transparent_crc(p_1176->g_832.s0, "p_1176->g_832.s0", print_hash_value);
    transparent_crc(p_1176->g_832.s1, "p_1176->g_832.s1", print_hash_value);
    transparent_crc(p_1176->g_832.s2, "p_1176->g_832.s2", print_hash_value);
    transparent_crc(p_1176->g_832.s3, "p_1176->g_832.s3", print_hash_value);
    transparent_crc(p_1176->g_832.s4, "p_1176->g_832.s4", print_hash_value);
    transparent_crc(p_1176->g_832.s5, "p_1176->g_832.s5", print_hash_value);
    transparent_crc(p_1176->g_832.s6, "p_1176->g_832.s6", print_hash_value);
    transparent_crc(p_1176->g_832.s7, "p_1176->g_832.s7", print_hash_value);
    transparent_crc(p_1176->g_849, "p_1176->g_849", print_hash_value);
    transparent_crc(p_1176->g_856.s0, "p_1176->g_856.s0", print_hash_value);
    transparent_crc(p_1176->g_856.s1, "p_1176->g_856.s1", print_hash_value);
    transparent_crc(p_1176->g_856.s2, "p_1176->g_856.s2", print_hash_value);
    transparent_crc(p_1176->g_856.s3, "p_1176->g_856.s3", print_hash_value);
    transparent_crc(p_1176->g_856.s4, "p_1176->g_856.s4", print_hash_value);
    transparent_crc(p_1176->g_856.s5, "p_1176->g_856.s5", print_hash_value);
    transparent_crc(p_1176->g_856.s6, "p_1176->g_856.s6", print_hash_value);
    transparent_crc(p_1176->g_856.s7, "p_1176->g_856.s7", print_hash_value);
    transparent_crc(p_1176->g_875.x, "p_1176->g_875.x", print_hash_value);
    transparent_crc(p_1176->g_875.y, "p_1176->g_875.y", print_hash_value);
    transparent_crc(p_1176->g_875.z, "p_1176->g_875.z", print_hash_value);
    transparent_crc(p_1176->g_875.w, "p_1176->g_875.w", print_hash_value);
    transparent_crc(p_1176->g_894, "p_1176->g_894", print_hash_value);
    transparent_crc(p_1176->g_897.s0, "p_1176->g_897.s0", print_hash_value);
    transparent_crc(p_1176->g_897.s1, "p_1176->g_897.s1", print_hash_value);
    transparent_crc(p_1176->g_897.s2, "p_1176->g_897.s2", print_hash_value);
    transparent_crc(p_1176->g_897.s3, "p_1176->g_897.s3", print_hash_value);
    transparent_crc(p_1176->g_897.s4, "p_1176->g_897.s4", print_hash_value);
    transparent_crc(p_1176->g_897.s5, "p_1176->g_897.s5", print_hash_value);
    transparent_crc(p_1176->g_897.s6, "p_1176->g_897.s6", print_hash_value);
    transparent_crc(p_1176->g_897.s7, "p_1176->g_897.s7", print_hash_value);
    transparent_crc(p_1176->g_999.s0, "p_1176->g_999.s0", print_hash_value);
    transparent_crc(p_1176->g_999.s1, "p_1176->g_999.s1", print_hash_value);
    transparent_crc(p_1176->g_999.s2, "p_1176->g_999.s2", print_hash_value);
    transparent_crc(p_1176->g_999.s3, "p_1176->g_999.s3", print_hash_value);
    transparent_crc(p_1176->g_999.s4, "p_1176->g_999.s4", print_hash_value);
    transparent_crc(p_1176->g_999.s5, "p_1176->g_999.s5", print_hash_value);
    transparent_crc(p_1176->g_999.s6, "p_1176->g_999.s6", print_hash_value);
    transparent_crc(p_1176->g_999.s7, "p_1176->g_999.s7", print_hash_value);
    transparent_crc(p_1176->g_999.s8, "p_1176->g_999.s8", print_hash_value);
    transparent_crc(p_1176->g_999.s9, "p_1176->g_999.s9", print_hash_value);
    transparent_crc(p_1176->g_999.sa, "p_1176->g_999.sa", print_hash_value);
    transparent_crc(p_1176->g_999.sb, "p_1176->g_999.sb", print_hash_value);
    transparent_crc(p_1176->g_999.sc, "p_1176->g_999.sc", print_hash_value);
    transparent_crc(p_1176->g_999.sd, "p_1176->g_999.sd", print_hash_value);
    transparent_crc(p_1176->g_999.se, "p_1176->g_999.se", print_hash_value);
    transparent_crc(p_1176->g_999.sf, "p_1176->g_999.sf", print_hash_value);
    transparent_crc(p_1176->g_1006.s0, "p_1176->g_1006.s0", print_hash_value);
    transparent_crc(p_1176->g_1006.s1, "p_1176->g_1006.s1", print_hash_value);
    transparent_crc(p_1176->g_1006.s2, "p_1176->g_1006.s2", print_hash_value);
    transparent_crc(p_1176->g_1006.s3, "p_1176->g_1006.s3", print_hash_value);
    transparent_crc(p_1176->g_1006.s4, "p_1176->g_1006.s4", print_hash_value);
    transparent_crc(p_1176->g_1006.s5, "p_1176->g_1006.s5", print_hash_value);
    transparent_crc(p_1176->g_1006.s6, "p_1176->g_1006.s6", print_hash_value);
    transparent_crc(p_1176->g_1006.s7, "p_1176->g_1006.s7", print_hash_value);
    transparent_crc(p_1176->g_1006.s8, "p_1176->g_1006.s8", print_hash_value);
    transparent_crc(p_1176->g_1006.s9, "p_1176->g_1006.s9", print_hash_value);
    transparent_crc(p_1176->g_1006.sa, "p_1176->g_1006.sa", print_hash_value);
    transparent_crc(p_1176->g_1006.sb, "p_1176->g_1006.sb", print_hash_value);
    transparent_crc(p_1176->g_1006.sc, "p_1176->g_1006.sc", print_hash_value);
    transparent_crc(p_1176->g_1006.sd, "p_1176->g_1006.sd", print_hash_value);
    transparent_crc(p_1176->g_1006.se, "p_1176->g_1006.se", print_hash_value);
    transparent_crc(p_1176->g_1006.sf, "p_1176->g_1006.sf", print_hash_value);
    transparent_crc(p_1176->g_1009.x, "p_1176->g_1009.x", print_hash_value);
    transparent_crc(p_1176->g_1009.y, "p_1176->g_1009.y", print_hash_value);
    transparent_crc(p_1176->g_1009.z, "p_1176->g_1009.z", print_hash_value);
    transparent_crc(p_1176->g_1009.w, "p_1176->g_1009.w", print_hash_value);
    transparent_crc(p_1176->g_1020.x, "p_1176->g_1020.x", print_hash_value);
    transparent_crc(p_1176->g_1020.y, "p_1176->g_1020.y", print_hash_value);
    transparent_crc(p_1176->g_1020.z, "p_1176->g_1020.z", print_hash_value);
    transparent_crc(p_1176->g_1020.w, "p_1176->g_1020.w", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1176->g_1092[i], "p_1176->g_1092[i]", print_hash_value);

    }
    transparent_crc(p_1176->g_1139.s0, "p_1176->g_1139.s0", print_hash_value);
    transparent_crc(p_1176->g_1139.s1, "p_1176->g_1139.s1", print_hash_value);
    transparent_crc(p_1176->g_1139.s2, "p_1176->g_1139.s2", print_hash_value);
    transparent_crc(p_1176->g_1139.s3, "p_1176->g_1139.s3", print_hash_value);
    transparent_crc(p_1176->g_1139.s4, "p_1176->g_1139.s4", print_hash_value);
    transparent_crc(p_1176->g_1139.s5, "p_1176->g_1139.s5", print_hash_value);
    transparent_crc(p_1176->g_1139.s6, "p_1176->g_1139.s6", print_hash_value);
    transparent_crc(p_1176->g_1139.s7, "p_1176->g_1139.s7", print_hash_value);
    transparent_crc(p_1176->g_1139.s8, "p_1176->g_1139.s8", print_hash_value);
    transparent_crc(p_1176->g_1139.s9, "p_1176->g_1139.s9", print_hash_value);
    transparent_crc(p_1176->g_1139.sa, "p_1176->g_1139.sa", print_hash_value);
    transparent_crc(p_1176->g_1139.sb, "p_1176->g_1139.sb", print_hash_value);
    transparent_crc(p_1176->g_1139.sc, "p_1176->g_1139.sc", print_hash_value);
    transparent_crc(p_1176->g_1139.sd, "p_1176->g_1139.sd", print_hash_value);
    transparent_crc(p_1176->g_1139.se, "p_1176->g_1139.se", print_hash_value);
    transparent_crc(p_1176->g_1139.sf, "p_1176->g_1139.sf", print_hash_value);
    transparent_crc(p_1176->g_1151, "p_1176->g_1151", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
