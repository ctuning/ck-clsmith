// ---fake_divergence -g 24,9,43 -l 3,1,1
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
    volatile int32_t g_2;
    volatile int32_t g_3;
    volatile int32_t g_4;
    int32_t g_5;
    volatile int32_t g_9;
    int32_t g_10;
    int32_t g_15;
    int32_t *g_17;
    int32_t *g_62[10];
    int32_t **g_61[3];
    uint16_t g_87;
    uint32_t g_103;
    uint8_t g_128;
    int8_t g_131;
    uint64_t g_142;
    uint64_t *g_141;
    uint64_t **g_140;
    uint64_t *** volatile g_139;
    uint64_t ***g_184;
    uint16_t g_185;
    uint32_t g_225;
    int8_t g_239;
    int16_t g_241;
    int32_t g_262;
    int32_t * volatile g_261;
    int64_t g_277;
    uint8_t g_371[4][6];
    uint32_t g_457;
    uint32_t *g_472;
    uint32_t **g_471[9];
    uint32_t **g_474;
    uint8_t g_491;
    int8_t *g_565;
    int8_t **g_564[1][10];
    int8_t *** volatile g_563;
    int64_t g_626[4];
    int32_t * volatile g_679;
    int64_t g_683;
    int32_t ** volatile g_684;
    int32_t ** volatile g_685;
    uint8_t g_691;
    int8_t **g_705;
    int64_t *g_716;
    int64_t *g_718;
    uint32_t g_729;
    int32_t g_878;
    int64_t *g_965[2];
    int64_t **g_964;
    uint32_t g_1024;
    uint32_t g_1102;
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
uint16_t  func_1(struct S0 * p_1126);
int32_t * func_18(int32_t * p_19, int64_t  p_20, struct S0 * p_1126);
int32_t * func_21(uint64_t  p_22, int64_t  p_23, uint32_t  p_24, uint16_t  p_25, struct S0 * p_1126);
int32_t  func_33(int16_t  p_34, uint32_t  p_35, int32_t ** p_36, struct S0 * p_1126);
uint64_t  func_39(int32_t  p_40, int32_t  p_41, struct S0 * p_1126);
uint64_t  func_45(int32_t * p_46, int32_t  p_47, int32_t * p_48, struct S0 * p_1126);
int32_t  func_52(uint64_t  p_53, int32_t ** p_54, uint32_t  p_55, struct S0 * p_1126);
int32_t ** func_56(uint64_t  p_57, int32_t ** p_58, int32_t ** p_59, int32_t ** p_60, struct S0 * p_1126);
uint32_t  func_63(uint16_t  p_64, int32_t  p_65, int32_t  p_66, struct S0 * p_1126);
int32_t ** func_69(int32_t  p_70, int64_t  p_71, int32_t * p_72, uint64_t  p_73, struct S0 * p_1126);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1126->g_5 p_1126->g_10 p_1126->g_691 p_1126->g_140 p_1126->g_141 p_1126->g_142 p_1126->g_15 p_1126->g_371 p_1126->g_17 p_1126->g_964 p_1126->g_965 p_1126->g_626 p_1126->g_241 p_1126->g_131 p_1126->g_4 p_1126->g_457 p_1126->g_262 p_1126->g_705 p_1126->g_565 p_1126->g_239 p_1126->g_1102 p_1126->g_103 p_1126->g_277 p_1126->g_474 p_1126->g_472
 * writes: p_1126->g_5 p_1126->g_10 p_1126->g_691 p_1126->g_371 p_1126->g_277 p_1126->g_729 p_1126->g_241 p_1126->g_878 p_1126->g_1102 p_1126->g_185 p_1126->g_15 p_1126->g_472
 */
uint16_t  func_1(struct S0 * p_1126)
{ /* block id: 4 */
    uint32_t l_26 = 4294967295UL;
    int32_t l_694 = 0x0BF27E84L;
    int32_t l_695 = (-1L);
    int8_t *l_765[2];
    uint32_t *l_874 = &p_1126->g_225;
    uint64_t l_890 = 0UL;
    int32_t **l_927 = &p_1126->g_17;
    int64_t *l_963 = &p_1126->g_277;
    int64_t **l_962 = &l_963;
    uint32_t l_978 = 6UL;
    uint8_t l_1009[5] = {1UL,1UL,1UL,1UL,1UL};
    uint32_t l_1077 = 4294967293UL;
    int64_t l_1080 = 0x4558EF899B101DF3L;
    int32_t l_1082 = 0x6138EE3AL;
    uint64_t l_1083 = 18446744073709551615UL;
    uint32_t l_1110 = 0xB422DE27L;
    int64_t l_1124 = 1L;
    int i;
    for (i = 0; i < 2; i++)
        l_765[i] = &p_1126->g_131;
    for (p_1126->g_5 = (-26); (p_1126->g_5 >= 27); p_1126->g_5++)
    { /* block id: 7 */
        int16_t l_8[10][2][9] = {{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}}};
        int32_t l_692[5][8][2] = {{{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L}},{{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L}},{{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L}},{{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L}},{{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L},{(-3L),0x4D0B0DC5L}}};
        int8_t **l_704 = &p_1126->g_565;
        int32_t l_752 = 0x74EF5400L;
        uint32_t l_783 = 0UL;
        int64_t l_808 = (-1L);
        uint32_t l_848 = 1UL;
        int32_t *l_898 = &p_1126->g_15;
        int64_t *l_915 = &p_1126->g_683;
        uint32_t l_974[5] = {4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL};
        int32_t *l_977[4];
        uint8_t *l_1067[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint32_t *l_1072 = &p_1126->g_729;
        int16_t *l_1073 = (void*)0;
        int16_t *l_1074 = (void*)0;
        int16_t *l_1075 = &p_1126->g_241;
        int32_t *l_1076[9][9] = {{&p_1126->g_878,&p_1126->g_878,(void*)0,(void*)0,(void*)0,&p_1126->g_878,&p_1126->g_878,&p_1126->g_878,(void*)0},{&p_1126->g_878,&p_1126->g_878,(void*)0,(void*)0,(void*)0,&p_1126->g_878,&p_1126->g_878,&p_1126->g_878,(void*)0},{&p_1126->g_878,&p_1126->g_878,(void*)0,(void*)0,(void*)0,&p_1126->g_878,&p_1126->g_878,&p_1126->g_878,(void*)0},{&p_1126->g_878,&p_1126->g_878,(void*)0,(void*)0,(void*)0,&p_1126->g_878,&p_1126->g_878,&p_1126->g_878,(void*)0},{&p_1126->g_878,&p_1126->g_878,(void*)0,(void*)0,(void*)0,&p_1126->g_878,&p_1126->g_878,&p_1126->g_878,(void*)0},{&p_1126->g_878,&p_1126->g_878,(void*)0,(void*)0,(void*)0,&p_1126->g_878,&p_1126->g_878,&p_1126->g_878,(void*)0},{&p_1126->g_878,&p_1126->g_878,(void*)0,(void*)0,(void*)0,&p_1126->g_878,&p_1126->g_878,&p_1126->g_878,(void*)0},{&p_1126->g_878,&p_1126->g_878,(void*)0,(void*)0,(void*)0,&p_1126->g_878,&p_1126->g_878,&p_1126->g_878,(void*)0},{&p_1126->g_878,&p_1126->g_878,(void*)0,(void*)0,(void*)0,&p_1126->g_878,&p_1126->g_878,&p_1126->g_878,(void*)0}};
        int16_t l_1078 = (-9L);
        int32_t l_1081 = 0x36A8F1B1L;
        uint64_t ***l_1099 = &p_1126->g_140;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_977[i] = &l_695;
        for (p_1126->g_10 = 1; (p_1126->g_10 >= 0); p_1126->g_10 -= 1)
        { /* block id: 10 */
            int32_t *l_690 = (void*)0;
            int32_t l_693 = 0x4D903598L;
            int32_t l_696[6] = {3L,(-6L),3L,3L,(-6L),3L};
            uint32_t l_697 = 1UL;
            uint16_t l_758 = 1UL;
            uint64_t **l_763 = &p_1126->g_141;
            int32_t *l_841 = &l_696[3];
            int32_t l_872 = 0x41A73F25L;
            uint8_t l_968 = 0xA1L;
            int i;
            (1 + 1);
        }
        l_978--;
        for (p_1126->g_691 = 0; (p_1126->g_691 <= 1); p_1126->g_691 += 1)
        { /* block id: 505 */
            uint16_t l_1013 = 1UL;
            int32_t l_1020 = (-1L);
            int i, j;
            (1 + 1);
        }
        if ((safe_add_func_uint32_t_u_u(((l_1078 |= ((((safe_mod_func_uint32_t_u_u(0x2B6B77C9L, 0x1E953030L)) && (((p_1126->g_878 = (+(safe_lshift_func_int8_t_s_u((safe_div_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(0x0F6E4262L, ((0x7D4D474F0CCFACCDL != (**p_1126->g_140)) & ((*l_1075) = (((*l_1072) = (((*l_963) = (safe_rshift_func_uint16_t_u_u(((safe_div_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(0x14L, ((*l_898) >= (safe_rshift_func_uint8_t_u_s((safe_mod_func_uint64_t_u_u((safe_lshift_func_int8_t_s_u((safe_div_func_int8_t_s_s((-10L), ((++p_1126->g_371[3][0]) | (safe_rshift_func_uint8_t_u_u((**l_927), FAKE_DIVERGE(p_1126->group_2_offset, get_group_id(2), 10)))))), 3)), (*l_898))), (**l_927)))))), p_1126->g_15)) == (*l_898)), 7))) | (**p_1126->g_964))) ^ p_1126->g_241))))), (**l_927))), 4)))) , p_1126->g_131) <= p_1126->g_4)) & p_1126->g_457) > l_1077)) != p_1126->g_142), GROUP_DIVERGE(1, 1))))
        { /* block id: 563 */
            int16_t l_1079 = 0x34CFL;
            --l_1083;
            for (l_1083 = 0; (l_1083 > 15); l_1083 = safe_add_func_int32_t_s_s(l_1083, 1))
            { /* block id: 567 */
                int32_t l_1092 = 0x24B265FAL;
                uint64_t ****l_1100 = &l_1099;
                int16_t l_1101 = 0x6DC6L;
                p_1126->g_1102 |= (safe_rshift_func_int8_t_s_u((p_1126->g_262 , (**p_1126->g_705)), (((safe_rshift_func_uint8_t_u_u(l_1092, 1)) == 1L) , ((*l_898) , ((&p_1126->g_964 == (void*)0) >= (safe_lshift_func_uint16_t_u_s(((safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((((&p_1126->g_140 != ((*l_1100) = l_1099)) | 0x0EFFEC0EC67ACD5AL) < l_1092), 6)), 7)) != l_1101), 8)))))));
            }
        }
        else
        { /* block id: 571 */
            uint16_t *l_1103 = &p_1126->g_185;
            int64_t **l_1123[3][5] = {{&l_963,&l_963,&l_963,&l_963,&l_963},{&l_963,&l_963,&l_963,&l_963,&l_963},{&l_963,&l_963,&l_963,&l_963,&l_963}};
            uint16_t l_1125 = 0x378FL;
            int i, j;
            l_1125 = ((p_1126->g_103 <= (((*l_1103) = p_1126->g_277) , ((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1126->local_2_offset, get_local_id(2), 10), (!(safe_add_func_int64_t_s_s((-9L), (safe_add_func_uint64_t_u_u(l_1110, (safe_rshift_func_int8_t_s_u(((((**l_927) = ((safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((*l_898), (safe_add_func_int32_t_s_s((safe_div_func_uint64_t_u_u((l_1123[2][3] != (void*)0), 1L)), (0xC3L > 0UL))))), 0xC5L)), 0x38L)) < 0UL)) & l_1124) <= (**p_1126->g_964)), 0))))))))) == p_1126->g_457))) <= 0xF3L);
        }
    }
    l_1082 = ((*p_1126->g_17) &= (((*p_1126->g_474) = (*p_1126->g_474)) == l_874));
    return p_1126->g_131;
}


/* ------------------------------------------ */
/* 
 * reads : p_1126->g_277 p_1126->g_491 p_1126->g_131 p_1126->g_685
 * writes: p_1126->g_277 p_1126->g_491 p_1126->g_131 p_1126->g_62 p_1126->g_15
 */
int32_t * func_18(int32_t * p_19, int64_t  p_20, struct S0 * p_1126)
{ /* block id: 340 */
    uint16_t l_686 = 65531UL;
    int8_t ***l_689[3][8] = {{&p_1126->g_564[0][9],&p_1126->g_564[0][4],&p_1126->g_564[0][8],(void*)0,&p_1126->g_564[0][8],&p_1126->g_564[0][4],&p_1126->g_564[0][9],(void*)0},{&p_1126->g_564[0][9],&p_1126->g_564[0][4],&p_1126->g_564[0][8],(void*)0,&p_1126->g_564[0][8],&p_1126->g_564[0][4],&p_1126->g_564[0][9],(void*)0},{&p_1126->g_564[0][9],&p_1126->g_564[0][4],&p_1126->g_564[0][8],(void*)0,&p_1126->g_564[0][8],&p_1126->g_564[0][4],&p_1126->g_564[0][9],(void*)0}};
    int i, j;
    for (p_1126->g_277 = 0; (p_1126->g_277 <= 8); p_1126->g_277 += 1)
    { /* block id: 343 */
        for (p_1126->g_491 = 0; (p_1126->g_491 <= 8); p_1126->g_491 += 1)
        { /* block id: 346 */
            for (p_1126->g_131 = 1; (p_1126->g_131 <= 8); p_1126->g_131 += 1)
            { /* block id: 349 */
                (*p_1126->g_685) = p_19;
            }
        }
        ++l_686;
        (*p_19) = ((void*)0 != l_689[2][1]);
    }
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_1126->g_15 p_1126->g_61 p_1126->g_10 p_1126->g_4 p_1126->g_5 p_1126->g_2 p_1126->g_103 p_1126->g_3 p_1126->g_87 p_1126->g_139 p_1126->g_141 p_1126->g_142 p_1126->g_9 p_1126->g_185 p_1126->g_131 p_1126->g_128 p_1126->g_225 p_1126->g_261 p_1126->g_262 p_1126->g_277 p_1126->g_241 p_1126->g_239 p_1126->g_62 p_1126->g_371 p_1126->g_457 p_1126->g_491 p_1126->g_563 p_1126->g_679
 * writes: p_1126->g_4 p_1126->g_87 p_1126->g_103 p_1126->g_128 p_1126->g_140 p_1126->g_184 p_1126->g_185 p_1126->g_131 p_1126->g_225 p_1126->g_239 p_1126->g_241 p_1126->g_262 p_1126->g_277 p_1126->g_61 p_1126->g_15 p_1126->g_62 p_1126->g_371 p_1126->g_142 p_1126->g_457 p_1126->g_471 p_1126->g_474 p_1126->g_491 p_1126->g_564
 */
int32_t * func_21(uint64_t  p_22, int64_t  p_23, uint32_t  p_24, uint16_t  p_25, struct S0 * p_1126)
{ /* block id: 14 */
    int32_t l_42 = 1L;
    uint64_t **l_492 = &p_1126->g_141;
    uint32_t **l_493 = &p_1126->g_472;
    int32_t *l_497 = &p_1126->g_10;
    int32_t **l_496 = &l_497;
    int32_t l_517 = 0x767B3170L;
    int16_t *l_542 = &p_1126->g_241;
    int64_t *l_543 = &p_1126->g_277;
    uint32_t *l_544[1][1];
    int32_t l_551 = 0x0FD6B15EL;
    int32_t l_554[9];
    uint64_t ***l_584 = (void*)0;
    int32_t *l_598 = (void*)0;
    int8_t ***l_609 = &p_1126->g_564[0][5];
    int16_t l_645 = 0L;
    uint32_t l_652 = 4294967292UL;
    uint8_t *l_655 = &p_1126->g_371[3][0];
    int32_t *l_676 = &p_1126->g_10;
    int32_t *l_680 = &l_551;
    int32_t *l_681 = &p_1126->g_15;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_544[i][j] = &p_1126->g_103;
    }
    for (i = 0; i < 9; i++)
        l_554[i] = 7L;
    if ((l_517 &= (safe_mod_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_s((func_33((safe_add_func_uint32_t_u_u(((func_39(p_25, l_42, p_1126) ^ (l_492 != (FAKE_DIVERGE(p_1126->local_2_offset, get_local_id(2), 10) , l_492))) > (((l_493 != (void*)0) < 0x49F6L) && ((+((safe_div_func_uint64_t_u_u(0x2999EC830973FE36L, l_42)) , l_42)) & p_1126->g_10))), p_1126->g_5)), l_42, l_496, p_1126) , 0x39L), 1)) || 1L), FAKE_DIVERGE(p_1126->global_0_offset, get_global_id(0), 10))) < (**l_496)), (-1L)))))
    { /* block id: 243 */
        int32_t *l_518 = &l_517;
        (*l_496) = ((*l_497) , (*l_496));
        (*l_496) = l_518;
        (*l_496) = l_518;
    }
    else
    { /* block id: 247 */
        uint32_t l_522 = 0x14313F82L;
        uint8_t *l_527[9][7][4] = {{{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]}},{{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]}},{{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]}},{{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]}},{{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]}},{{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]}},{{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]}},{{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]}},{{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]},{(void*)0,&p_1126->g_128,(void*)0,&p_1126->g_371[3][0]}}};
        int i, j, k;
        for (p_1126->g_491 = 0; (p_1126->g_491 != 7); p_1126->g_491 = safe_add_func_int64_t_s_s(p_1126->g_491, 7))
        { /* block id: 250 */
            int32_t *l_521[4][9] = {{&p_1126->g_10,&p_1126->g_5,&p_1126->g_5,&p_1126->g_10,&p_1126->g_10,&p_1126->g_5,&p_1126->g_5,&p_1126->g_10,&p_1126->g_10},{&p_1126->g_10,&p_1126->g_5,&p_1126->g_5,&p_1126->g_10,&p_1126->g_10,&p_1126->g_5,&p_1126->g_5,&p_1126->g_10,&p_1126->g_10},{&p_1126->g_10,&p_1126->g_5,&p_1126->g_5,&p_1126->g_10,&p_1126->g_10,&p_1126->g_5,&p_1126->g_5,&p_1126->g_10,&p_1126->g_10},{&p_1126->g_10,&p_1126->g_5,&p_1126->g_5,&p_1126->g_10,&p_1126->g_10,&p_1126->g_5,&p_1126->g_5,&p_1126->g_10,&p_1126->g_10}};
            int i, j;
            (*l_496) = l_521[2][7];
        }
        (*l_496) = ((l_522 >= (safe_div_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((l_517 = p_1126->g_371[0][1]), 0x6BL)), p_22))) , (*l_496));
        (*l_496) = (*l_496);
    }
    if ((safe_mod_func_uint16_t_u_u(p_22, ((p_1126->g_103 |= (p_1126->g_491 == (((((*l_543) |= (((((safe_lshift_func_uint8_t_u_s(p_24, 5)) , (safe_sub_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_u(254UL, 2)) != (p_23 != (safe_add_func_int16_t_s_s((((**l_496) && (*l_497)) < (++(*p_1126->g_141))), (safe_rshift_func_int8_t_s_u(((void*)0 != l_542), 0)))))), p_22))) , &p_22) == &p_22) > (**l_496))) ^ (*l_497)) , (*l_497)) > p_23))) ^ 0x3EAC39B0L))))
    { /* block id: 260 */
        int16_t l_548 = 0x784FL;
        int32_t l_549 = 1L;
        int32_t l_550 = 0x7F59D4F5L;
        int32_t l_555[8] = {0x03EBBF4EL,0x03EBBF4EL,0x03EBBF4EL,0x03EBBF4EL,0x03EBBF4EL,0x03EBBF4EL,0x03EBBF4EL,0x03EBBF4EL};
        int8_t *l_562 = &p_1126->g_131;
        int8_t **l_561 = &l_562;
        uint64_t ***l_586 = &p_1126->g_140;
        int64_t *l_612 = (void*)0;
        int64_t l_651 = (-1L);
        int i;
        for (p_1126->g_87 = 0; (p_1126->g_87 != 60); p_1126->g_87++)
        { /* block id: 263 */
            int32_t *l_547 = &p_1126->g_262;
            int32_t *l_552 = &l_549;
            int32_t *l_553[9] = {&p_1126->g_5,(void*)0,&p_1126->g_5,&p_1126->g_5,(void*)0,&p_1126->g_5,&p_1126->g_5,(void*)0,&p_1126->g_5};
            uint32_t l_556 = 3UL;
            int i;
            (*l_547) = 0x0637507DL;
            l_556++;
        }
        for (l_551 = (-1); (l_551 < (-23)); l_551 = safe_sub_func_int16_t_s_s(l_551, 2))
        { /* block id: 269 */
            uint16_t l_574 = 65535UL;
            uint8_t l_610 = 250UL;
            uint64_t **l_622[3][2][8] = {{{&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141,&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141},{&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141,&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141}},{{&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141,&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141},{&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141,&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141}},{{&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141,&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141},{&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141,&p_1126->g_141,&p_1126->g_141,(void*)0,&p_1126->g_141}}};
            int32_t *l_628 = &l_555[2];
            int32_t l_631 = 0x6EB2F573L;
            int32_t l_648 = 0x4970BA2AL;
            int32_t l_649 = 0x78B2E4CBL;
            int32_t l_650[6][6][6] = {{{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L}},{{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L}},{{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L}},{{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L}},{{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L}},{{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L},{0x2ED91A6CL,5L,(-2L),0x5020E2E9L,0x39418902L,0x5020E2E9L}}};
            int i, j, k;
            (*p_1126->g_563) = l_561;
        }
    }
    else
    { /* block id: 334 */
        int16_t l_677 = (-1L);
        int32_t *l_678 = (void*)0;
        (*p_1126->g_679) = ((*l_676) || ((*l_655) = l_677));
    }
    return l_681;
}


/* ------------------------------------------ */
/* 
 * reads : p_1126->g_185 p_1126->g_128
 * writes: p_1126->g_185
 */
int32_t  func_33(int16_t  p_34, uint32_t  p_35, int32_t ** p_36, struct S0 * p_1126)
{ /* block id: 235 */
    uint64_t **l_500 = &p_1126->g_141;
    uint64_t ***l_501 = &l_500;
    int32_t l_506 = (-9L);
    int32_t l_507 = 8L;
    uint16_t *l_511 = &p_1126->g_185;
    int32_t l_516 = 0x386204F3L;
    l_507 = (safe_mul_func_uint8_t_u_u(((((*l_501) = l_500) == (void*)0) , (p_34 , (p_35 || (l_516 |= (safe_sub_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((l_506 &= 6L), l_507)), ((safe_mul_func_int16_t_s_s(((safe_unary_minus_func_uint16_t_u(((*l_511)--))) <= 7L), (safe_mul_func_int16_t_s_s(p_34, l_507)))) != p_35))))))), 0x1BL));
    return p_1126->g_128;
}


/* ------------------------------------------ */
/* 
 * reads : p_1126->g_15 p_1126->g_61 p_1126->g_10 p_1126->g_4 p_1126->g_5 p_1126->g_2 p_1126->g_103 p_1126->g_3 p_1126->g_87 p_1126->g_139 p_1126->g_141 p_1126->g_142 p_1126->g_9 p_1126->g_185 p_1126->g_131 p_1126->g_128 p_1126->g_225 p_1126->g_261 p_1126->g_262 p_1126->g_277 p_1126->g_241 p_1126->g_239 p_1126->g_62 p_1126->g_371 p_1126->g_457 p_1126->g_491
 * writes: p_1126->g_4 p_1126->g_87 p_1126->g_103 p_1126->g_128 p_1126->g_140 p_1126->g_184 p_1126->g_185 p_1126->g_131 p_1126->g_225 p_1126->g_239 p_1126->g_241 p_1126->g_262 p_1126->g_277 p_1126->g_61 p_1126->g_15 p_1126->g_62 p_1126->g_371 p_1126->g_142 p_1126->g_457 p_1126->g_471 p_1126->g_474 p_1126->g_491
 */
uint64_t  func_39(int32_t  p_40, int32_t  p_41, struct S0 * p_1126)
{ /* block id: 15 */
    int32_t *l_49 = &p_1126->g_15;
    int32_t ***l_318 = &p_1126->g_61[1];
    int32_t l_337 = 0L;
    int32_t l_338 = 4L;
    int32_t l_339[1][8] = {{1L,1L,1L,1L,1L,1L,1L,1L}};
    int64_t l_340 = (-10L);
    int8_t l_342 = 0x2AL;
    uint8_t *l_359 = (void*)0;
    uint32_t *l_380[7] = {&p_1126->g_225,&p_1126->g_225,&p_1126->g_225,&p_1126->g_225,&p_1126->g_225,&p_1126->g_225,&p_1126->g_225};
    uint16_t l_382 = 0x2AEFL;
    int8_t l_427 = (-4L);
    int i, j;
    p_1126->g_4 = 0x7E497D6AL;
    if ((safe_add_func_uint64_t_u_u(func_45(l_49, (safe_sub_func_int32_t_s_s(func_52(p_40, ((*l_318) = func_56((*l_49), p_1126->g_61[1], (func_63((safe_add_func_int32_t_s_s(p_40, ((((p_1126->g_10 , func_69(((+((0xC43DA4AAL != (safe_lshift_func_int16_t_s_u((safe_sub_func_int8_t_s_s(p_40, 0x15L)), p_1126->g_4))) ^ (*l_49))) & p_1126->g_15), (*l_49), l_49, (*l_49), p_1126)) == (void*)0) ^ FAKE_DIVERGE(p_1126->local_1_offset, get_local_id(1), 10)) > (-10L)))), p_1126->g_15, (*l_49), p_1126) , &l_49), &l_49, p_1126)), p_1126->g_10, p_1126), (*l_49))), &p_1126->g_10, p_1126), 0x58A7735C133B7329L)))
    { /* block id: 159 */
        int32_t *l_334 = &p_1126->g_5;
        int32_t l_335 = (-1L);
        int32_t *l_336[4][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int16_t l_341 = 1L;
        uint32_t l_343 = 2UL;
        int i, j;
        (**l_318) = l_334;
        ++l_343;
    }
    else
    { /* block id: 162 */
        int8_t l_346 = 0x33L;
        return l_346;
    }
    (**l_318) = ((safe_rshift_func_int8_t_s_u(p_41, (0x48C63D22L >= p_1126->g_225))) , (**l_318));
    for (p_1126->g_262 = 17; (p_1126->g_262 >= 6); p_1126->g_262 = safe_sub_func_uint64_t_u_u(p_1126->g_262, 1))
    { /* block id: 168 */
        uint8_t *l_360 = (void*)0;
        uint8_t *l_361 = &p_1126->g_128;
        int32_t *l_364 = &l_339[0][0];
        int32_t l_365[4];
        uint8_t *l_370 = &p_1126->g_371[3][0];
        uint32_t **l_381 = &l_380[3];
        int16_t *l_383 = &p_1126->g_241;
        uint16_t *l_384[7];
        uint32_t l_454 = 4294967295UL;
        int i;
        for (i = 0; i < 4; i++)
            l_365[i] = 0x5A3B342CL;
        for (i = 0; i < 7; i++)
            l_384[i] = (void*)0;
        if (((((((safe_div_func_uint64_t_u_u(((*p_1126->g_141) &= (safe_div_func_int16_t_s_s((p_41 & ((((((safe_lshift_func_int8_t_s_u(((safe_rshift_func_uint16_t_u_s((p_1126->g_87 = (((((*l_364) = (((l_359 == l_360) , 0xF2L) >= (++(*l_361)))) == l_365[1]) <= (((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), ((*l_370) = (!0xA2L)))), ((safe_sub_func_uint8_t_u_u(((((((((safe_add_func_int8_t_s_s((safe_mod_func_uint16_t_u_u(0xE4EAL, ((*l_383) = ((((((*l_381) = l_380[3]) != &p_1126->g_225) , p_41) < l_382) & p_41)))), p_1126->g_103)) && p_40) <= p_1126->g_103) && p_40) , 1L) || 0x44L) | 0UL) == 0x28L), p_41)) , p_1126->g_103))) , p_41) , p_40)) < l_337)), p_1126->g_185)) ^ 0x9CL), 7)) <= p_41) <= p_40) >= p_40) < p_40) , 0x0C5A12C7L)), p_41))), 0x2FC1171559C0CE76L)) ^ p_1126->g_4) <= p_41) ^ p_1126->g_262) <= 6UL) > p_41))
        { /* block id: 176 */
            uint32_t l_401 = 1UL;
            int32_t l_405 = 5L;
            int32_t l_412 = 0x5647973BL;
            int32_t l_413[9];
            int i;
            for (i = 0; i < 9; i++)
                l_413[i] = (-9L);
            for (p_1126->g_241 = 0; (p_1126->g_241 < (-7)); p_1126->g_241--)
            { /* block id: 179 */
                uint64_t l_391[1][9] = {{0xDF656C0A4B4C9091L,0xDF656C0A4B4C9091L,0xDF656C0A4B4C9091L,0xDF656C0A4B4C9091L,0xDF656C0A4B4C9091L,0xDF656C0A4B4C9091L,0xDF656C0A4B4C9091L,0xDF656C0A4B4C9091L,0xDF656C0A4B4C9091L}};
                int32_t l_399 = 0x51474B5BL;
                int32_t l_400 = 0x3E90F7FBL;
                int32_t *l_404 = &l_399;
                int32_t *l_406 = (void*)0;
                int32_t *l_407 = &p_1126->g_15;
                int32_t *l_408 = &p_1126->g_15;
                int32_t *l_409 = (void*)0;
                int32_t *l_410 = &l_365[3];
                int32_t *l_411[1][4][3] = {{{&l_339[0][0],&l_339[0][0],&l_339[0][0]},{&l_339[0][0],&l_339[0][0],&l_339[0][0]},{&l_339[0][0],&l_339[0][0],&l_339[0][0]},{&l_339[0][0],&l_339[0][0],&l_339[0][0]}}};
                uint64_t l_414 = 0x9516C82FB6761F67L;
                int i, j, k;
                for (l_338 = 21; (l_338 != (-10)); l_338 = safe_sub_func_int8_t_s_s(l_338, 7))
                { /* block id: 182 */
                    for (p_40 = (-30); (p_40 < (-25)); p_40++)
                    { /* block id: 185 */
                        int32_t *l_392[4][2] = {{&p_1126->g_15,&p_1126->g_15},{&p_1126->g_15,&p_1126->g_15},{&p_1126->g_15,&p_1126->g_15},{&p_1126->g_15,&p_1126->g_15}};
                        int i, j;
                        (**l_318) = (l_391[0][6] , l_392[0][0]);
                        if (p_41)
                            break;
                    }
                }
                for (p_1126->g_185 = 11; (p_1126->g_185 < 3); p_1126->g_185--)
                { /* block id: 192 */
                    int32_t *l_395 = &l_339[0][0];
                    int32_t *l_396 = &l_338;
                    int32_t *l_397 = &l_339[0][0];
                    int32_t *l_398[4][4] = {{(void*)0,&l_337,&l_337,(void*)0},{(void*)0,&l_337,&l_337,(void*)0},{(void*)0,&l_337,&l_337,(void*)0},{(void*)0,&l_337,&l_337,(void*)0}};
                    int i, j;
                    if (p_41)
                        break;
                    l_401++;
                    if (p_40)
                        break;
                    if (l_401)
                        break;
                }
                l_414++;
            }
        }
        else
        { /* block id: 200 */
            uint32_t l_423[5];
            uint32_t *l_446 = (void*)0;
            int32_t l_466 = (-1L);
            int i;
            for (i = 0; i < 5; i++)
                l_423[i] = 0xBFD9BED3L;
            for (p_1126->g_103 = 7; (p_1126->g_103 >= 30); p_1126->g_103++)
            { /* block id: 203 */
                uint8_t l_426 = 0UL;
                int32_t *l_428 = &p_1126->g_15;
                uint64_t **l_433 = (void*)0;
                (*l_428) |= (safe_sub_func_uint64_t_u_u(p_41, ((*l_364) = (safe_div_func_int8_t_s_s((p_40 || (l_427 = (l_423[2] < (safe_add_func_uint8_t_u_u((FAKE_DIVERGE(p_1126->global_1_offset, get_global_id(1), 10) | (+p_40)), ((((*l_383) = l_426) & p_41) ^ (((l_426 != (p_1126->g_3 , ((*p_1126->g_141) = 0x122E1007C60129BCL))) || p_1126->g_185) ^ l_426))))))), p_1126->g_371[1][3])))));
                if ((p_41 | (safe_lshift_func_uint16_t_u_u(p_1126->g_371[3][3], 1))))
                { /* block id: 209 */
                    uint64_t ***l_434 = &p_1126->g_140;
                    uint64_t ***l_435 = &p_1126->g_140;
                    uint64_t ***l_436[7];
                    int32_t l_451 = 0x42B25732L;
                    int32_t *l_455 = &l_338;
                    int32_t *l_456[1];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_436[i] = &l_433;
                    for (i = 0; i < 1; i++)
                        l_456[i] = &l_365[2];
                    p_1126->g_457 |= (safe_lshift_func_int8_t_s_u((((l_433 = l_433) != (void*)0) >= (safe_div_func_int8_t_s_s(0x08L, (safe_unary_minus_func_uint16_t_u(((safe_lshift_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((0x54L && (GROUP_DIVERGE(0, 1) <= ((((*l_383) = ((void*)0 == l_446)) != (safe_sub_func_uint8_t_u_u((((((*l_455) = ((safe_rshift_func_int8_t_s_u((!((((l_451 || ((*l_364) = p_40)) >= ((safe_rshift_func_int8_t_s_s((((((*l_428) = (((((+((FAKE_DIVERGE(p_1126->global_0_offset, get_global_id(0), 10) , (((*p_1126->g_141) = (p_1126->g_15 > p_40)) , p_1126->g_4)) , p_1126->g_15)) , l_451) >= 0x77L) && GROUP_DIVERGE(1, 1)) == p_1126->g_128)) || p_40) > l_454) < l_423[2]), p_41)) , p_41)) == 0L) , p_1126->g_15)), p_1126->g_131)) | l_451)) ^ p_41) , &p_1126->g_62[1]) == (void*)0), 0x07L))) > 0x38164F3FL))), 6L)) > p_40), p_1126->g_225)) & 0xCCL)))))), 0));
                }
                else
                { /* block id: 217 */
                    l_466 = (((safe_sub_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s(p_40, ((p_41 ^ ((((safe_mod_func_uint32_t_u_u((((*l_428) , ((*l_361) = p_1126->g_371[0][3])) == ((safe_rshift_func_uint16_t_u_u(65530UL, ((((&l_365[1] != (void*)0) , 0x1F3542B9AB0157E8L) , (*l_364)) , (*l_428)))) >= 0x67L)), (*p_1126->g_261))) && (*l_428)) , p_40) > p_41)) <= 0xC148L))) < p_1126->g_457), 0x2322L)) , 0x16L) == p_1126->g_142);
                }
                if (p_40)
                    break;
                (*l_428) &= l_466;
            }
            for (l_337 = 14; (l_337 >= (-18)); l_337 = safe_sub_func_int8_t_s_s(l_337, 4))
            { /* block id: 226 */
                uint32_t ***l_473[8][3][2] = {{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}}};
                int32_t l_489 = 0x70DA4D09L;
                uint8_t *l_490[8][1][9] = {{{&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128,&p_1126->g_491,&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128}},{{&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128,&p_1126->g_491,&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128}},{{&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128,&p_1126->g_491,&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128}},{{&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128,&p_1126->g_491,&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128}},{{&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128,&p_1126->g_491,&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128}},{{&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128,&p_1126->g_491,&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128}},{{&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128,&p_1126->g_491,&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128}},{{&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128,&p_1126->g_491,&p_1126->g_491,&p_1126->g_128,&p_1126->g_128,&p_1126->g_128}}};
                int i, j, k;
                (*l_364) = (safe_lshift_func_int8_t_s_u(((p_1126->g_474 = (p_1126->g_471[2] = &l_380[5])) != &l_446), ((safe_div_func_uint64_t_u_u((((p_1126->g_491 ^= ((safe_div_func_int16_t_s_s((safe_mod_func_int64_t_s_s(((&p_1126->g_239 != (l_423[2] , &l_427)) && ((p_1126->g_128 , ((p_1126->g_457 || ((safe_div_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s((((((0x69L > (safe_sub_func_uint8_t_u_u(p_1126->g_371[3][0], 0x6FL))) , p_40) || p_40) & (*l_364)) ^ (*l_364)), 12)) | p_40), p_1126->g_277)), p_1126->g_5)) || 0x115129DAL)) != p_41)) || p_1126->g_3)), l_489)), 0x44DBL)) , 0x59L)) , l_370) == &p_1126->g_371[3][0]), (*p_1126->g_141))) | 0x72D78B0130D459BFL)));
            }
        }
    }
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_1126->g_239 p_1126->g_15 p_1126->g_10 p_1126->g_5 p_1126->g_262 p_1126->g_142 p_1126->g_3 p_1126->g_131 p_1126->g_185
 * writes: p_1126->g_239 p_1126->g_15
 */
uint64_t  func_45(int32_t * p_46, int32_t  p_47, int32_t * p_48, struct S0 * p_1126)
{ /* block id: 146 */
    int32_t l_333[6] = {0x05F595BDL,(-1L),0x05F595BDL,0x05F595BDL,(-1L),0x05F595BDL};
    int i;
    for (p_1126->g_239 = 9; (p_1126->g_239 != (-25)); p_1126->g_239--)
    { /* block id: 149 */
        int16_t l_332 = 0x4380L;
        (*p_46) = (*p_46);
        for (p_47 = 0; (p_47 <= 6); p_47 = safe_add_func_uint8_t_u_u(p_47, 4))
        { /* block id: 153 */
            if ((*p_48))
                break;
        }
        (*p_46) = (((((((0L | 0x8DL) , p_47) , (p_1126->g_5 > p_1126->g_262)) , 0L) & (((l_332 & (p_1126->g_142 & (p_1126->g_3 & p_1126->g_131))) & l_333[3]) <= p_1126->g_185)) , l_332) > p_47);
    }
    return l_333[2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_52(uint64_t  p_53, int32_t ** p_54, uint32_t  p_55, struct S0 * p_1126)
{ /* block id: 139 */
    uint32_t l_325 = 4294967290UL;
    for (p_53 = 4; (p_53 < 19); p_53 = safe_add_func_int32_t_s_s(p_53, 1))
    { /* block id: 142 */
        int32_t *l_321 = (void*)0;
        int32_t *l_322 = &p_1126->g_262;
        int32_t *l_323 = &p_1126->g_15;
        int32_t *l_324 = &p_1126->g_262;
        l_325++;
    }
    return l_325;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t ** func_56(uint64_t  p_57, int32_t ** p_58, int32_t ** p_59, int32_t ** p_60, struct S0 * p_1126)
{ /* block id: 136 */
    return p_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_1126->g_185 p_1126->g_87 p_1126->g_277 p_1126->g_241 p_1126->g_128 p_1126->g_142 p_1126->g_239 p_1126->g_262 p_1126->g_5 p_1126->g_2
 * writes: p_1126->g_262 p_1126->g_185 p_1126->g_87 p_1126->g_277 p_1126->g_241 p_1126->g_128 p_1126->g_103
 */
uint32_t  func_63(uint16_t  p_64, int32_t  p_65, int32_t  p_66, struct S0 * p_1126)
{ /* block id: 105 */
    uint8_t l_265 = 1UL;
    int32_t *l_270 = &p_1126->g_262;
    uint32_t l_273[3][9][8] = {{{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL}},{{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL}},{{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL},{0x5E2D799BL,0x942DBF3DL,1UL,4UL,0UL,0x0BDB32C8L,0UL,4294967291UL}}};
    uint16_t *l_274 = &p_1126->g_185;
    uint16_t *l_275 = &p_1126->g_87;
    int64_t *l_276[10] = {&p_1126->g_277,&p_1126->g_277,&p_1126->g_277,&p_1126->g_277,&p_1126->g_277,&p_1126->g_277,&p_1126->g_277,&p_1126->g_277,&p_1126->g_277,&p_1126->g_277};
    int32_t l_290 = 0x12BDCCD8L;
    int32_t l_291 = 0x72E6AC67L;
    int32_t l_292 = 1L;
    int32_t l_293 = (-1L);
    int32_t l_294[2][4][1] = {{{0x260AF580L},{0x260AF580L},{0x260AF580L},{0x260AF580L}},{{0x260AF580L},{0x260AF580L},{0x260AF580L},{0x260AF580L}}};
    uint32_t l_295 = 0x49126210L;
    int32_t *l_307 = &l_294[1][1][0];
    int32_t *l_308 = (void*)0;
    int32_t *l_309 = &l_292;
    int32_t *l_310 = &p_1126->g_262;
    int32_t *l_311 = &l_291;
    int32_t l_312 = (-4L);
    int32_t *l_313[9] = {(void*)0,&p_1126->g_10,(void*)0,(void*)0,&p_1126->g_10,(void*)0,(void*)0,&p_1126->g_10,(void*)0};
    int16_t l_314 = (-4L);
    uint32_t l_315 = 0x34EDAD87L;
    int i, j, k;
    if (((p_1126->g_277 &= ((safe_div_func_uint32_t_u_u(l_265, (safe_div_func_int64_t_s_s((1L | ((*l_275) ^= ((*l_274) = ((p_64 > (p_1126->g_185 || (safe_div_func_int32_t_s_s(((*l_270) = p_64), 0x77D20EFBL)))) != (&p_1126->g_62[7] != (((safe_sub_func_uint16_t_u_u((p_65 || p_65), 0x10E8L)) > l_273[0][5][2]) , (void*)0)))))), p_64)))) == p_66)) <= 0x3F9541466FC8F83AL))
    { /* block id: 110 */
        uint8_t *l_284 = &l_265;
        for (p_1126->g_241 = (-7); (p_1126->g_241 < (-8)); p_1126->g_241 = safe_sub_func_uint16_t_u_u(p_1126->g_241, 5))
        { /* block id: 113 */
            (*l_270) = ((0xDCL | (safe_rshift_func_uint16_t_u_s(1UL, 5))) , ((((p_66 , p_1126->g_128) | 8L) && 1UL) < p_65));
            return p_1126->g_142;
        }
        (*l_270) ^= (safe_mul_func_uint8_t_u_u(((*l_284)--), p_1126->g_239));
    }
    else
    { /* block id: 119 */
        int32_t *l_287 = &p_1126->g_262;
        int32_t *l_288 = &p_1126->g_262;
        int32_t *l_289[2];
        uint32_t *l_301 = (void*)0;
        uint32_t *l_302 = &p_1126->g_103;
        uint64_t ****l_303 = &p_1126->g_184;
        int i;
        for (i = 0; i < 2; i++)
            l_289[i] = &p_1126->g_262;
        --l_295;
        if (p_1126->g_277)
            goto lbl_306;
        for (p_1126->g_128 = 0; (p_1126->g_128 != 59); p_1126->g_128 = safe_add_func_int64_t_s_s(p_1126->g_128, 8))
        { /* block id: 123 */
            int32_t l_300 = (-2L);
            l_300 = (-6L);
        }
lbl_306:
        l_294[1][2][0] = ((*l_270) = (((*l_302) = p_1126->g_5) && ((((&p_1126->g_184 != l_303) , (((p_64 && p_66) > (safe_add_func_int32_t_s_s(((void*)0 == &p_1126->g_225), 0L))) <= p_1126->g_87)) , l_270) == &p_1126->g_225)));
        l_270 = (l_289[1] = l_287);
    }
    (*l_270) = (p_1126->g_262 && p_1126->g_2);
    l_315--;
    return p_1126->g_185;
}


/* ------------------------------------------ */
/* 
 * reads : p_1126->g_15 p_1126->g_5 p_1126->g_2 p_1126->g_103 p_1126->g_3 p_1126->g_87 p_1126->g_4 p_1126->g_139 p_1126->g_141 p_1126->g_142 p_1126->g_10 p_1126->g_9 p_1126->g_185 p_1126->g_131 p_1126->g_128 p_1126->g_225 p_1126->g_261 p_1126->g_262
 * writes: p_1126->g_87 p_1126->g_103 p_1126->g_128 p_1126->g_140 p_1126->g_184 p_1126->g_185 p_1126->g_131 p_1126->g_225 p_1126->g_239 p_1126->g_241 p_1126->g_262
 */
int32_t ** func_69(int32_t  p_70, int64_t  p_71, int32_t * p_72, uint64_t  p_73, struct S0 * p_1126)
{ /* block id: 17 */
    uint16_t *l_86 = &p_1126->g_87;
    int32_t l_90 = (-1L);
    int32_t l_161 = 1L;
    uint64_t ***l_182 = (void*)0;
    int32_t l_254 = (-8L);
    int32_t l_255 = 0x45EF55CFL;
    if (((safe_rshift_func_uint8_t_u_s(((((safe_mul_func_int8_t_s_s((-3L), FAKE_DIVERGE(p_1126->global_0_offset, get_global_id(0), 10))) & (*p_72)) || (safe_mul_func_uint16_t_u_u((((((safe_lshift_func_int16_t_s_s((-1L), 4)) && ((*l_86) = 0xF778L)) , (safe_mul_func_uint8_t_u_u((l_90 < 0xA0C7D0B67C402FB5L), (safe_sub_func_uint64_t_u_u(p_71, 0x5234D5E33AB57C19L))))) , &l_90) != &l_90), p_1126->g_5))) & p_73), 3)) && p_1126->g_15))
    { /* block id: 19 */
        uint16_t *l_98 = &p_1126->g_87;
        uint32_t *l_102[6][2][5];
        int32_t l_104 = 4L;
        int32_t l_132 = 9L;
        int32_t l_134 = 0x5754EFB1L;
        uint64_t ***l_181 = (void*)0;
        uint64_t ****l_183[6] = {&l_182,&l_182,&l_182,&l_182,&l_182,&l_182};
        uint64_t l_193[5][1];
        int8_t *l_194 = &p_1126->g_131;
        int32_t *l_195 = &l_134;
        int32_t l_196 = 0x1E9DD07AL;
        int64_t l_207 = 1L;
        int i, j, k;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 5; k++)
                    l_102[i][j][k] = &p_1126->g_103;
            }
        }
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_193[i][j] = 1UL;
        }
        if ((((safe_unary_minus_func_int16_t_s(0x3248L)) ^ p_1126->g_5) || ((251UL == ((safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(p_1126->g_2, (l_90 > ((p_1126->g_103 ^= ((l_98 != &p_1126->g_87) < ((safe_lshift_func_int16_t_s_u((l_90 , ((safe_unary_minus_func_uint32_t_u((((((4294967286UL || (-1L)) > p_71) <= GROUP_DIVERGE(2, 1)) , p_1126->g_5) || p_1126->g_15))) < (-4L))), p_1126->g_5)) , 0x61L))) , l_104)))), p_71)) < l_104)) | p_73)))
        { /* block id: 21 */
            int32_t l_121 = 0x5671B2A7L;
            uint16_t *l_126 = &p_1126->g_87;
            uint8_t *l_127 = &p_1126->g_128;
            int8_t *l_129 = (void*)0;
            int8_t *l_130[9] = {&p_1126->g_131,&p_1126->g_131,&p_1126->g_131,&p_1126->g_131,&p_1126->g_131,&p_1126->g_131,&p_1126->g_131,&p_1126->g_131,&p_1126->g_131};
            uint64_t *l_133 = (void*)0;
            int32_t *l_135 = &l_90;
            int8_t l_136 = 0x61L;
            int32_t l_172 = 0x71CC7438L;
            uint8_t l_174[2];
            int i;
            for (i = 0; i < 2; i++)
                l_174[i] = 255UL;
            (*l_135) = ((safe_mul_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((l_132 = (((l_90 > (~((l_104 = (l_121 = ((safe_mod_func_int32_t_s_s((((l_104 , ((((safe_lshift_func_int8_t_s_s(((p_1126->g_3 >= ((*l_127) = ((p_1126->g_103 != ((safe_add_func_int16_t_s_s((p_71 == (*p_72)), GROUP_DIVERGE(1, 1))) != l_104)) | ((!((safe_lshift_func_uint8_t_u_s((safe_div_func_uint8_t_u_u((((l_121 , (safe_sub_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(p_73, p_1126->g_5)), l_90))) , l_126) == &p_1126->g_87), p_1126->g_103)), p_70)) && p_1126->g_87)) <= (-5L))))) >= 18446744073709551610UL), p_1126->g_87)) || p_70) < p_71) , l_121)) && p_1126->g_4) , (*p_72)), 1L)) , p_70))) >= p_71))) , 0x505BL) ^ l_132)), l_90)), p_71)), p_71)) | l_134);
lbl_137:
            (*l_135) |= l_136;
            if ((*l_135))
            { /* block id: 28 */
                if (p_1126->g_103)
                    goto lbl_137;
            }
            else
            { /* block id: 30 */
                uint64_t **l_138[5][7] = {{&l_133,&l_133,(void*)0,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,(void*)0,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,(void*)0,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,(void*)0,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,(void*)0,&l_133,&l_133,&l_133,&l_133}};
                int32_t *l_143 = &l_134;
                int i, j;
                (*p_1126->g_139) = l_138[1][3];
                if (p_1126->g_15)
                    goto lbl_144;
lbl_144:
                p_72 = l_143;
                for (l_90 = 0; l_90 < 6; l_90 += 1)
                {
                    for (p_1126->g_87 = 0; p_1126->g_87 < 2; p_1126->g_87 += 1)
                    {
                        for (p_70 = 0; p_70 < 5; p_70 += 1)
                        {
                            l_102[l_90][p_1126->g_87][p_70] = &p_1126->g_103;
                        }
                    }
                }
            }
            for (l_132 = 0; (l_132 <= (-17)); l_132 = safe_sub_func_uint32_t_u_u(l_132, 8))
            { /* block id: 38 */
                int16_t l_157 = 0x3BB4L;
                int32_t l_158[4] = {(-1L),(-1L),(-1L),(-1L)};
                int64_t l_171 = (-4L);
                int64_t l_173 = 0L;
                int i;
                for (p_70 = 0; (p_70 <= 9); p_70 = safe_add_func_uint16_t_u_u(p_70, 5))
                { /* block id: 41 */
                    int32_t *l_159 = (void*)0;
                    int32_t *l_160 = &l_121;
                    l_161 = ((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((*l_135) = p_71), (((p_73 && (safe_sub_func_uint32_t_u_u((l_158[1] = (l_157 = ((p_73 & (*p_1126->g_141)) , FAKE_DIVERGE(p_1126->global_0_offset, get_global_id(0), 10)))), ((*l_160) = 3L)))) , (l_158[1] >= (((0x747B8834L && ((((void*)0 != l_130[4]) > 18446744073709551607UL) <= l_161)) && 1UL) , p_70))) || p_71))), l_161)) || p_73), FAKE_DIVERGE(p_1126->group_1_offset, get_group_id(1), 10))) && l_104);
                    return &p_1126->g_62[1];
                }
                for (l_104 = 0; (l_104 <= 1); l_104 += 1)
                { /* block id: 51 */
                    int32_t *l_162 = &l_121;
                    int32_t *l_163 = (void*)0;
                    int32_t *l_164 = &l_90;
                    int32_t *l_165 = &l_158[1];
                    int32_t *l_166 = (void*)0;
                    int32_t *l_167 = &l_158[1];
                    int32_t *l_168 = &l_90;
                    int32_t *l_169 = (void*)0;
                    int32_t *l_170[4] = {&l_90,&l_90,&l_90,&l_90};
                    int i;
                    l_174[1]++;
                    return &p_1126->g_62[6];
                }
                return &p_1126->g_62[1];
            }
        }
        else
        { /* block id: 57 */
            l_132 |= (*p_72);
        }
        l_196 ^= ((*l_195) = (!((((l_104 = (((l_104 , (((safe_add_func_uint32_t_u_u(((((p_1126->g_103++) == ((l_134 , l_181) == (p_1126->g_184 = l_182))) >= (p_1126->g_185 = p_1126->g_10)) >= (safe_add_func_uint32_t_u_u(l_90, ((safe_sub_func_uint32_t_u_u(((((&p_1126->g_131 == (((((safe_sub_func_int64_t_s_s((((safe_unary_minus_func_int32_t_s(l_90)) != p_73) , l_134), l_132)) <= p_71) , l_193[2][0]) , p_1126->g_9) , l_194)) , l_161) , l_161) , p_70), (*p_72))) <= p_70)))), (-1L))) , l_134) >= p_71)) || p_1126->g_103) >= l_161)) > l_90) <= 0x022B33F4L) == l_134)));
        for (l_132 = 27; (l_132 > 22); l_132 = safe_sub_func_int32_t_s_s(l_132, 5))
        { /* block id: 68 */
            uint16_t l_208 = 0xD106L;
            int32_t *l_209[9][2] = {{&l_134,(void*)0},{&l_134,(void*)0},{&l_134,(void*)0},{&l_134,(void*)0},{&l_134,(void*)0},{&l_134,(void*)0},{&l_134,(void*)0},{&l_134,(void*)0},{&l_134,(void*)0}};
            uint8_t *l_232 = &p_1126->g_128;
            int i, j;
            l_90 |= ((p_1126->g_185 && (safe_mod_func_int32_t_s_s((((&l_161 != &l_90) == ((p_1126->g_87 | 0x6F17L) ^ ((((0xB2L == ((0x2847B0D8L ^ ((l_161 != (safe_mod_func_uint32_t_u_u((((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(0x202CL, l_207)), p_70)) & p_1126->g_5) != l_208), (*p_72)))) , 0x13D6D710L)) , p_1126->g_9)) && p_71) != (-6L)) >= p_1126->g_131))) >= 0x1870280360E74786L), 0x49CF99CEL))) < (*p_72));
            for (l_161 = 12; (l_161 > 5); l_161 = safe_sub_func_uint16_t_u_u(l_161, 1))
            { /* block id: 72 */
                uint8_t l_215[7];
                int32_t l_218 = 0x0F1B27E7L;
                int i;
                for (i = 0; i < 7; i++)
                    l_215[i] = 0x59L;
                for (p_1126->g_131 = (-28); (p_1126->g_131 >= 9); p_1126->g_131++)
                { /* block id: 75 */
                    int64_t l_214 = 0x6CD7918DDF385793L;
                    for (p_1126->g_128 = 0; (p_1126->g_128 <= 9); p_1126->g_128 += 1)
                    { /* block id: 78 */
                        uint32_t *l_224 = &p_1126->g_225;
                        int i;
                        ++l_215[1];
                        l_218 = (p_70 > 3L);
                        l_90 ^= (safe_rshift_func_int8_t_s_u(((*p_72) & (((p_70 & (safe_unary_minus_func_uint32_t_u((p_73 >= (p_70 , ((((safe_add_func_int8_t_s_s((((*l_224) = (p_70 < 6L)) , p_1126->g_128), p_71)) <= ((safe_mul_func_uint8_t_u_u((!((+((p_73 >= p_1126->g_10) >= 7UL)) != p_71)), p_1126->g_10)) == p_70)) , GROUP_DIVERGE(2, 1)) >= 0x70AD31C04559418FL)))))) == 4294967295UL) & 246UL)), 2));
                        if ((*l_195))
                            break;
                    }
                    for (l_218 = (-18); (l_218 >= (-24)); l_218--)
                    { /* block id: 87 */
                        uint8_t *l_235 = &l_215[0];
                        int8_t *l_238 = &p_1126->g_239;
                        int16_t *l_240 = &p_1126->g_241;
                        (*l_195) ^= ((((p_1126->g_15 , &p_70) == (void*)0) > (safe_div_func_int32_t_s_s((&p_1126->g_128 != (l_232 = &p_1126->g_128)), (safe_rshift_func_int16_t_s_u(((p_71 | (p_1126->g_131 < (~0x516ADDCDD089DD1DL))) == (++(*l_235))), ((((*l_240) = (((*l_238) = ((l_214 != FAKE_DIVERGE(p_1126->local_0_offset, get_local_id(0), 10)) & p_1126->g_142)) < p_1126->g_225)) == p_1126->g_15) & (-1L))))))) & GROUP_DIVERGE(0, 1));
                        if (l_215[1])
                            break;
                    }
                }
            }
            (*l_195) = (*p_72);
        }
    }
    else
    { /* block id: 99 */
        int32_t *l_242 = (void*)0;
        int32_t *l_243 = &l_161;
        int32_t *l_244 = &l_90;
        int32_t *l_245 = &l_90;
        int32_t *l_246 = &l_90;
        int32_t *l_247 = (void*)0;
        int32_t *l_248 = &l_90;
        int32_t *l_249 = &l_90;
        int32_t *l_250 = (void*)0;
        int32_t *l_251 = &l_90;
        int32_t *l_252 = &l_161;
        int32_t *l_253[5][7][2] = {{{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5}},{{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5}},{{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5}},{{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5}},{{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5},{(void*)0,&p_1126->g_5}}};
        uint32_t l_256 = 4294967291UL;
        int i, j, k;
        l_242 = l_242;
        l_256++;
    }
    (*p_1126->g_261) ^= (safe_rshift_func_int8_t_s_u((l_254 && p_1126->g_15), 4));
    return &p_1126->g_62[0];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S0 c_1127;
    struct S0* p_1126 = &c_1127;
    struct S0 c_1128 = {
        0x48094A18L, // p_1126->g_2
        0x46F1BF50L, // p_1126->g_3
        0x0B0CEAFDL, // p_1126->g_4
        0x65F36F6DL, // p_1126->g_5
        0x378470EDL, // p_1126->g_9
        (-3L), // p_1126->g_10
        0x6A37BD55L, // p_1126->g_15
        &p_1126->g_15, // p_1126->g_17
        {&p_1126->g_5,&p_1126->g_10,&p_1126->g_15,&p_1126->g_10,&p_1126->g_5,&p_1126->g_5,&p_1126->g_10,&p_1126->g_15,&p_1126->g_10,&p_1126->g_5}, // p_1126->g_62
        {&p_1126->g_62[1],&p_1126->g_62[1],&p_1126->g_62[1]}, // p_1126->g_61
        0x99D6L, // p_1126->g_87
        0x7B12BF80L, // p_1126->g_103
        0xE4L, // p_1126->g_128
        0x48L, // p_1126->g_131
        0UL, // p_1126->g_142
        &p_1126->g_142, // p_1126->g_141
        &p_1126->g_141, // p_1126->g_140
        &p_1126->g_140, // p_1126->g_139
        &p_1126->g_140, // p_1126->g_184
        0x16A2L, // p_1126->g_185
        0UL, // p_1126->g_225
        0L, // p_1126->g_239
        (-1L), // p_1126->g_241
        1L, // p_1126->g_262
        &p_1126->g_262, // p_1126->g_261
        0x09D66DD006A17E19L, // p_1126->g_277
        {{0x2AL,4UL,0x70L,4UL,0x2AL,0x2AL},{0x2AL,4UL,0x70L,4UL,0x2AL,0x2AL},{0x2AL,4UL,0x70L,4UL,0x2AL,0x2AL},{0x2AL,4UL,0x70L,4UL,0x2AL,0x2AL}}, // p_1126->g_371
        1UL, // p_1126->g_457
        (void*)0, // p_1126->g_472
        {&p_1126->g_472,&p_1126->g_472,&p_1126->g_472,&p_1126->g_472,&p_1126->g_472,&p_1126->g_472,&p_1126->g_472,&p_1126->g_472,&p_1126->g_472}, // p_1126->g_471
        &p_1126->g_472, // p_1126->g_474
        0x4AL, // p_1126->g_491
        &p_1126->g_239, // p_1126->g_565
        {{&p_1126->g_565,(void*)0,(void*)0,(void*)0,&p_1126->g_565,&p_1126->g_565,(void*)0,(void*)0,(void*)0,&p_1126->g_565}}, // p_1126->g_564
        &p_1126->g_564[0][8], // p_1126->g_563
        {(-1L),(-1L),(-1L),(-1L)}, // p_1126->g_626
        &p_1126->g_15, // p_1126->g_679
        0x3387B826EC32B357L, // p_1126->g_683
        (void*)0, // p_1126->g_684
        &p_1126->g_62[6], // p_1126->g_685
        0x43L, // p_1126->g_691
        &p_1126->g_565, // p_1126->g_705
        &p_1126->g_683, // p_1126->g_716
        &p_1126->g_683, // p_1126->g_718
        0UL, // p_1126->g_729
        0x5BE41D4BL, // p_1126->g_878
        {&p_1126->g_626[2],&p_1126->g_626[2]}, // p_1126->g_965
        &p_1126->g_965[0], // p_1126->g_964
        0x306AA5DBL, // p_1126->g_1024
        0x8C3F402BL, // p_1126->g_1102
        sequence_input[get_global_id(0)], // p_1126->global_0_offset
        sequence_input[get_global_id(1)], // p_1126->global_1_offset
        sequence_input[get_global_id(2)], // p_1126->global_2_offset
        sequence_input[get_local_id(0)], // p_1126->local_0_offset
        sequence_input[get_local_id(1)], // p_1126->local_1_offset
        sequence_input[get_local_id(2)], // p_1126->local_2_offset
        sequence_input[get_group_id(0)], // p_1126->group_0_offset
        sequence_input[get_group_id(1)], // p_1126->group_1_offset
        sequence_input[get_group_id(2)], // p_1126->group_2_offset
    };
    c_1127 = c_1128;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1126);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1126->g_2, "p_1126->g_2", print_hash_value);
    transparent_crc(p_1126->g_3, "p_1126->g_3", print_hash_value);
    transparent_crc(p_1126->g_4, "p_1126->g_4", print_hash_value);
    transparent_crc(p_1126->g_5, "p_1126->g_5", print_hash_value);
    transparent_crc(p_1126->g_9, "p_1126->g_9", print_hash_value);
    transparent_crc(p_1126->g_10, "p_1126->g_10", print_hash_value);
    transparent_crc(p_1126->g_15, "p_1126->g_15", print_hash_value);
    transparent_crc(p_1126->g_87, "p_1126->g_87", print_hash_value);
    transparent_crc(p_1126->g_103, "p_1126->g_103", print_hash_value);
    transparent_crc(p_1126->g_128, "p_1126->g_128", print_hash_value);
    transparent_crc(p_1126->g_131, "p_1126->g_131", print_hash_value);
    transparent_crc(p_1126->g_142, "p_1126->g_142", print_hash_value);
    transparent_crc(p_1126->g_185, "p_1126->g_185", print_hash_value);
    transparent_crc(p_1126->g_225, "p_1126->g_225", print_hash_value);
    transparent_crc(p_1126->g_239, "p_1126->g_239", print_hash_value);
    transparent_crc(p_1126->g_241, "p_1126->g_241", print_hash_value);
    transparent_crc(p_1126->g_262, "p_1126->g_262", print_hash_value);
    transparent_crc(p_1126->g_277, "p_1126->g_277", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1126->g_371[i][j], "p_1126->g_371[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1126->g_457, "p_1126->g_457", print_hash_value);
    transparent_crc(p_1126->g_491, "p_1126->g_491", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1126->g_626[i], "p_1126->g_626[i]", print_hash_value);

    }
    transparent_crc(p_1126->g_683, "p_1126->g_683", print_hash_value);
    transparent_crc(p_1126->g_691, "p_1126->g_691", print_hash_value);
    transparent_crc(p_1126->g_729, "p_1126->g_729", print_hash_value);
    transparent_crc(p_1126->g_878, "p_1126->g_878", print_hash_value);
    transparent_crc(p_1126->g_1024, "p_1126->g_1024", print_hash_value);
    transparent_crc(p_1126->g_1102, "p_1126->g_1102", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
