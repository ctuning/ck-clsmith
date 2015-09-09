// ---atomic_reductions ---fake_divergence -g 98,79,1 -l 1,1,1
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


// Seed: 19

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    volatile int8_t g_14;
    volatile uint64_t g_16;
    int32_t g_41;
    uint64_t g_48;
    int32_t g_71;
    volatile int32_t * volatile *g_81;
    uint32_t g_98[8][7];
    int64_t g_102;
    int8_t g_104;
    int32_t g_116;
    int32_t *g_115;
    uint8_t g_119;
    int16_t g_124;
    uint8_t g_138;
    uint32_t g_167;
    int32_t g_186;
    uint16_t g_208[8];
    uint8_t g_228;
    uint64_t g_242;
    uint8_t g_275;
    uint64_t *g_297[9];
    int16_t g_326;
    int32_t g_350[2][9][7];
    uint64_t g_384;
    int16_t *g_388;
    int16_t * volatile *g_387;
    uint32_t g_417;
    int16_t g_445;
    uint16_t g_491;
    int32_t g_599;
    int64_t *g_614;
    int64_t g_654;
    uint64_t *g_666;
    uint64_t * volatile *g_665;
    int64_t g_675;
    volatile uint32_t *g_692;
    volatile uint32_t **g_691;
    uint64_t **g_695[4][8];
    uint64_t ***g_694[2];
    uint32_t g_716;
    uint8_t g_750;
    uint32_t g_758;
    int32_t ** volatile g_766;
    int64_t *g_869[9][4][2];
    int32_t ** volatile g_898[1][7][6];
    int32_t ** volatile g_899;
    volatile int8_t *g_923[4][6][2];
    volatile int8_t **g_922;
    int32_t ** volatile g_955;
    int32_t ** volatile g_979;
    int32_t ** volatile g_980[6];
    volatile int8_t g_996;
    uint32_t *g_1082[7];
    uint32_t **g_1081;
    int32_t *g_1107;
    int32_t **g_1137;
    int32_t *** volatile g_1136[2][5];
    int32_t *** volatile g_1138[7];
    int32_t *** volatile g_1139;
    int32_t ** volatile g_1183;
    int32_t ** volatile g_1184;
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
int32_t  func_1(struct S0 * p_1203);
int32_t * func_20(int32_t * p_21, int32_t * p_22, struct S0 * p_1203);
int32_t * func_23(uint32_t  p_24, int32_t * p_25, uint8_t  p_26, uint32_t  p_27, struct S0 * p_1203);
int64_t  func_33(int32_t  p_34, struct S0 * p_1203);
int32_t  func_42(uint64_t  p_43, int64_t  p_44, int32_t  p_45, uint32_t  p_46, struct S0 * p_1203);
int16_t  func_54(int32_t ** p_55, int32_t ** p_56, struct S0 * p_1203);
int32_t ** func_58(int8_t  p_59, int32_t  p_60, uint64_t  p_61, struct S0 * p_1203);
int32_t ** func_66(int32_t * p_67, struct S0 * p_1203);
int32_t * func_72(int32_t  p_73, struct S0 * p_1203);
int32_t  func_74(int32_t  p_75, int32_t * p_76, struct S0 * p_1203);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1203->g_3 p_1203->g_16 p_1203->g_766 p_1203->g_115 p_1203->g_666 p_1203->g_750 p_1203->g_104 p_1203->g_899 p_1203->g_116 p_1203->g_208 p_1203->g_275 p_1203->g_186 p_1203->g_102 p_1203->g_654 p_1203->g_614 p_1203->g_445 p_1203->g_138 p_1203->g_350 p_1203->g_1107 p_1203->g_119 p_1203->g_979 p_1203->g_1184 p_1203->g_1139 p_1203->g_1137
 * writes: p_1203->g_3 p_1203->g_16 p_1203->g_116 p_1203->g_384 p_1203->g_138 p_1203->g_41 p_1203->g_115
 */
int32_t  func_1(struct S0 * p_1203)
{ /* block id: 4 */
    int32_t *l_2[6] = {&p_1203->g_3,&p_1203->g_3,&p_1203->g_3,&p_1203->g_3,&p_1203->g_3,&p_1203->g_3};
    uint32_t l_8[6][10][4] = {{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}},{{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL},{6UL,6UL,6UL,6UL}}};
    int16_t l_11 = 0x1C2EL;
    int64_t l_1189 = 0x6C57052BEB6C9601L;
    int32_t **l_1197 = &p_1203->g_1107;
    int i, j, k;
    p_1203->g_3 = 0x2876E6BAL;
lbl_7:
    for (p_1203->g_3 = 0; (p_1203->g_3 <= 5); p_1203->g_3 += 1)
    { /* block id: 8 */
        int32_t l_4 = (-1L);
        int i;
        l_4 = l_4;
    }
    for (p_1203->g_3 = 23; (p_1203->g_3 < (-13)); p_1203->g_3 = safe_sub_func_uint64_t_u_u(p_1203->g_3, 1))
    { /* block id: 13 */
        if (p_1203->g_3)
            goto lbl_7;
        if (l_8[1][8][2])
            continue;
    }
    for (p_1203->g_3 = 0; (p_1203->g_3 >= 14); p_1203->g_3 = safe_add_func_uint8_t_u_u(p_1203->g_3, 8))
    { /* block id: 19 */
        int32_t l_15[6][9][4] = {{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}},{{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL},{0x401D933BL,(-1L),(-6L),0x21F1C18AL}}};
        int32_t l_30 = 0x26FBAAEEL;
        int32_t l_49 = 0x405D4008L;
        int32_t l_761 = 0x04CF9425L;
        uint16_t l_1177[3];
        int8_t l_1181 = 1L;
        int16_t l_1187 = 5L;
        int32_t l_1190 = 0L;
        int32_t l_1191 = (-3L);
        uint16_t l_1192 = 65535UL;
        int32_t ***l_1195 = (void*)0;
        int32_t ***l_1196 = (void*)0;
        uint32_t l_1198 = 0xB5B0EEB8L;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1177[i] = 65527UL;
        if (l_11)
        { /* block id: 20 */
            int8_t l_50 = 1L;
            int8_t l_51 = 1L;
            for (l_11 = 0; (l_11 < 27); l_11++)
            { /* block id: 23 */
                int32_t **l_19 = &l_2[0];
                int32_t *l_39 = &l_15[3][5][3];
                int32_t *l_40 = &p_1203->g_41;
                uint64_t *l_47 = &p_1203->g_48;
                int32_t l_762 = 0x0CFC89F0L;
                p_1203->g_16++;
                (*l_19) = (void*)0;
            }
            (**p_1203->g_766) = 0x678B6513L;
        }
        else
        { /* block id: 556 */
            int16_t l_1140 = 0x6099L;
            uint8_t *l_1146 = &p_1203->g_138;
            uint64_t **l_1161 = &p_1203->g_297[0];
            uint32_t *l_1162 = &l_8[5][5][3];
            int32_t l_1185 = 0x43506583L;
            int32_t l_1186[9][1][10] = {{{1L,0x5856F0FDL,2L,0x5856F0FDL,1L,(-1L),5L,0L,(-10L),(-4L)}},{{1L,0x5856F0FDL,2L,0x5856F0FDL,1L,(-1L),5L,0L,(-10L),(-4L)}},{{1L,0x5856F0FDL,2L,0x5856F0FDL,1L,(-1L),5L,0L,(-10L),(-4L)}},{{1L,0x5856F0FDL,2L,0x5856F0FDL,1L,(-1L),5L,0L,(-10L),(-4L)}},{{1L,0x5856F0FDL,2L,0x5856F0FDL,1L,(-1L),5L,0L,(-10L),(-4L)}},{{1L,0x5856F0FDL,2L,0x5856F0FDL,1L,(-1L),5L,0L,(-10L),(-4L)}},{{1L,0x5856F0FDL,2L,0x5856F0FDL,1L,(-1L),5L,0L,(-10L),(-4L)}},{{1L,0x5856F0FDL,2L,0x5856F0FDL,1L,(-1L),5L,0L,(-10L),(-4L)}},{{1L,0x5856F0FDL,2L,0x5856F0FDL,1L,(-1L),5L,0L,(-10L),(-4L)}}};
            int i, j, k;
            (*p_1203->g_115) = (((*p_1203->g_666) = l_1140) >= (safe_div_func_uint16_t_u_u(0x9249L, (safe_lshift_func_int16_t_s_u((safe_unary_minus_func_uint16_t_u(l_761)), ((((*l_1146) = FAKE_DIVERGE(p_1203->global_2_offset, get_global_id(2), 10)) || p_1203->g_750) <= ((((safe_mod_func_uint8_t_u_u(253UL, (safe_div_func_int64_t_s_s((+(((((safe_mul_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((((((((p_1203->g_104 , ((*l_1162) |= ((((safe_mul_func_uint16_t_u_u(0UL, ((7L == (safe_mod_func_int64_t_s_s((safe_lshift_func_int8_t_s_s((&p_1203->g_297[8] != l_1161), l_1140)), 1L))) , 6UL))) ^ (**p_1203->g_899)) > l_1140) , 1UL))) | p_1203->g_208[2]) ^ l_1140) ^ p_1203->g_275) == p_1203->g_208[0]) , 0x5D146DBC5FE91438L) >= (-2L)) >= FAKE_DIVERGE(p_1203->group_1_offset, get_group_id(1), 10)), p_1203->g_186)), p_1203->g_102)) , l_49) >= (*p_1203->g_115)) & p_1203->g_654) , (*p_1203->g_614))), l_1140)))) != l_30) == 0x72CDL) & p_1203->g_445)))))));
            (*p_1203->g_115) ^= l_1140;
            for (l_11 = 20; (l_11 <= (-23)); l_11 = safe_sub_func_uint16_t_u_u(l_11, 7))
            { /* block id: 564 */
                uint8_t *l_1165 = &p_1203->g_228;
                int32_t l_1172 = 0x1C491AF1L;
                int32_t l_1180[7][4] = {{0x73216BC0L,0x73216BC0L,0x73216BC0L,0x73216BC0L},{0x73216BC0L,0x73216BC0L,0x73216BC0L,0x73216BC0L},{0x73216BC0L,0x73216BC0L,0x73216BC0L,0x73216BC0L},{0x73216BC0L,0x73216BC0L,0x73216BC0L,0x73216BC0L},{0x73216BC0L,0x73216BC0L,0x73216BC0L,0x73216BC0L},{0x73216BC0L,0x73216BC0L,0x73216BC0L,0x73216BC0L},{0x73216BC0L,0x73216BC0L,0x73216BC0L,0x73216BC0L}};
                int32_t **l_1182 = (void*)0;
                int64_t l_1188 = 0L;
                int i, j;
                (*p_1203->g_1184) = (((l_1165 != ((++(*l_1146)) , l_1165)) , ((((((safe_div_func_int16_t_s_s(((((((*p_1203->g_1107) = (safe_add_func_uint8_t_u_u(252UL, ((((((*l_1162) = ((l_1172 &= p_1203->g_445) != ((0x36L ^ l_761) , (l_15[4][4][0] & (safe_sub_func_int8_t_s_s((safe_add_func_uint64_t_u_u(l_1177[1], (safe_lshift_func_uint16_t_u_u(l_1180[6][1], 2)))), 255UL)))))) && l_1140) > p_1203->g_350[1][6][3]) == 1UL) , 0x79L)))) , l_1181) , l_1161) == &p_1203->g_297[6]) && 0x756421EC145A26CBL), l_1140)) | p_1203->g_119) | l_1177[1]) , 1L) ^ 0x57CACEC6L) | 18446744073709551611UL)) , (*p_1203->g_979));
                l_1192++;
            }
            if (l_1186[2][0][3])
                continue;
        }
        (*p_1203->g_115) = (((((((*p_1203->g_614) , (l_1197 = (*p_1203->g_1139))) != (((0x24F4CB8EL || l_1192) > 0x139FL) , &p_1203->g_1107)) ^ l_1198) && ((l_1187 < (safe_sub_func_int16_t_s_s(((safe_sub_func_int8_t_s_s(0x51L, 0x2BL)) < 0x63DBL), p_1203->g_104))) || 0L)) , (void*)0) == &p_1203->g_869[8][3][0]);
        (*p_1203->g_115) = (**p_1203->g_899);
    }
    return (**p_1203->g_899);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_20(int32_t * p_21, int32_t * p_22, struct S0 * p_1203)
{ /* block id: 551 */
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_766 p_1203->g_48 p_1203->g_119 p_1203->g_116 p_1203->g_16 p_1203->g_758 p_1203->g_275 p_1203->g_417 p_1203->g_138 p_1203->g_115 p_1203->g_167 p_1203->g_228 p_1203->g_665 p_1203->g_666 p_1203->g_654 p_1203->g_326 p_1203->g_3 p_1203->g_614 p_1203->g_675 p_1203->g_899 p_1203->g_388 p_1203->g_922 p_1203->g_955 p_1203->g_242 p_1203->g_694 p_1203->g_716 p_1203->g_208 p_1203->g_979 p_1203->g_384 p_1203->g_71 p_1203->g_350 p_1203->g_98 p_1203->g_923 p_1203->g_387 p_1203->g_41 p_1203->g_1139
 * writes: p_1203->g_115 p_1203->g_116 p_1203->g_417 p_1203->g_654 p_1203->g_167 p_1203->g_228 p_1203->g_119 p_1203->g_384 p_1203->g_614 p_1203->g_869 p_1203->g_758 p_1203->g_445 p_1203->g_675 p_1203->g_48 p_1203->g_388 p_1203->g_922 p_1203->g_326 p_1203->g_242 p_1203->g_138 p_1203->g_208 p_1203->g_350 p_1203->g_275 p_1203->g_1081 p_1203->g_1107 p_1203->g_1137
 */
int32_t * func_23(uint32_t  p_24, int32_t * p_25, uint8_t  p_26, uint32_t  p_27, struct S0 * p_1203)
{ /* block id: 380 */
    uint16_t l_763 = 1UL;
    int32_t *l_764 = (void*)0;
    int32_t *l_765 = &p_1203->g_186;
    int8_t l_775 = (-1L);
    int32_t l_784 = 0x3E52DD5EL;
    int32_t l_787 = (-1L);
    int64_t l_798[7][1][6] = {{{0x6313FBFEC62853AAL,(-1L),(-1L),0x7C41FAFCB5FC5E68L,(-1L),(-1L)}},{{0x6313FBFEC62853AAL,(-1L),(-1L),0x7C41FAFCB5FC5E68L,(-1L),(-1L)}},{{0x6313FBFEC62853AAL,(-1L),(-1L),0x7C41FAFCB5FC5E68L,(-1L),(-1L)}},{{0x6313FBFEC62853AAL,(-1L),(-1L),0x7C41FAFCB5FC5E68L,(-1L),(-1L)}},{{0x6313FBFEC62853AAL,(-1L),(-1L),0x7C41FAFCB5FC5E68L,(-1L),(-1L)}},{{0x6313FBFEC62853AAL,(-1L),(-1L),0x7C41FAFCB5FC5E68L,(-1L),(-1L)}},{{0x6313FBFEC62853AAL,(-1L),(-1L),0x7C41FAFCB5FC5E68L,(-1L),(-1L)}}};
    uint8_t l_812 = 255UL;
    int32_t l_870[5];
    int8_t *l_907 = &l_775;
    int32_t l_990 = 0x17B77D2BL;
    uint8_t l_1028 = 246UL;
    int8_t *l_1048 = &p_1203->g_104;
    uint32_t *l_1060[7];
    uint32_t **l_1059 = &l_1060[1];
    int16_t *l_1079 = (void*)0;
    int32_t *l_1106 = &l_784;
    uint64_t **l_1127 = &p_1203->g_666;
    int32_t l_1134 = 0x2656C7ADL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_870[i] = 0x6A952FC2L;
    for (i = 0; i < 7; i++)
        l_1060[i] = &p_1203->g_98[3][0];
    (*p_1203->g_766) = l_764;
    if (((l_763 == (((((safe_lshift_func_int16_t_s_s((safe_div_func_uint16_t_u_u(1UL, (-4L))), 8)) , ((*p_25) = 0x45C08C8AL)) , ((safe_sub_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u((0x63L < l_775), (safe_sub_func_int32_t_s_s(((((safe_mul_func_uint16_t_u_u(p_24, ((~((safe_sub_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((((*p_25) = (p_26 ^ (p_26 || 0x1BL))) , p_1203->g_48), p_1203->g_119)), 0xC69614F4ECA2671CL)) <= p_1203->g_119)) <= FAKE_DIVERGE(p_1203->global_1_offset, get_global_id(1), 10)))) <= l_784) && GROUP_DIVERGE(2, 1)) < p_27), p_26)))), l_763)) ^ l_775)) , 0x1E51A70EL) || (*p_25))) , 0x03103C79L))
    { /* block id: 385 */
        int16_t l_797[3][6] = {{5L,5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L,5L}};
        uint32_t *l_813 = (void*)0;
        int32_t l_901 = 0x6A054968L;
        uint32_t *l_931 = &p_1203->g_167;
        uint64_t **l_941 = &p_1203->g_297[6];
        int8_t **l_950 = (void*)0;
        uint64_t **l_953 = &p_1203->g_666;
        uint64_t ***l_974 = &p_1203->g_695[3][7];
        int32_t l_976 = 0x2F16E03CL;
        int16_t **l_988 = &p_1203->g_388;
        uint16_t l_1007 = 65527UL;
        uint32_t **l_1080 = (void*)0;
        uint64_t l_1084 = 1UL;
        int i, j;
        if (((-1L) > p_1203->g_16))
        { /* block id: 386 */
            int32_t l_788[2][6][9] = {{{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L}},{{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L},{0L,0L,(-8L),6L,3L,0x3DF3A49AL,(-3L),(-8L),0x376B08B2L}}};
            int32_t **l_789[6];
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_789[i] = &p_1203->g_115;
            (*p_25) = (p_1203->g_758 , ((l_763 >= ((safe_lshift_func_int8_t_s_s(((p_1203->g_275 | (l_787 ^ p_24)) || l_788[1][5][1]), 6)) || (p_27 | 247UL))) != l_788[0][5][0]));
            p_25 = p_25;
        }
        else
        { /* block id: 389 */
            uint32_t l_803 = 0xBBF6B9EEL;
            int64_t *l_864 = &l_798[6][0][2];
            for (p_27 = 18; (p_27 < 42); ++p_27)
            { /* block id: 392 */
                uint32_t l_831 = 0x9FFC5F05L;
                for (p_1203->g_417 = 0; (p_1203->g_417 < 3); p_1203->g_417 = safe_add_func_uint64_t_u_u(p_1203->g_417, 9))
                { /* block id: 395 */
                    int16_t l_794 = 0x439DL;
                    int64_t *l_814 = &p_1203->g_654;
                    (*p_25) = ((((l_794 != (l_797[0][1] ^ (0x818CL != (l_797[2][4] ^ l_798[6][0][2])))) & (safe_mod_func_uint32_t_u_u((((safe_rshift_func_uint16_t_u_s(l_803, 8)) ^ ((((*l_814) = ((safe_sub_func_uint64_t_u_u((((safe_lshift_func_uint8_t_u_u((((safe_mod_func_uint64_t_u_u(((safe_lshift_func_int16_t_s_u((l_784 < (p_26 == ((+l_812) && 1UL))), l_803)) < l_794), 0x11D0F0F2F3764761L)) , l_813) != &p_1203->g_758), GROUP_DIVERGE(2, 1))) & p_1203->g_138) || 0x2266A26DL), 1L)) | (*p_25))) && p_24) , p_1203->g_138)) == (-3L)), 0x6B0D1A38L))) > p_27) || (*p_25));
                    return (*p_1203->g_766);
                }
                for (p_1203->g_167 = 0; (p_1203->g_167 < 50); p_1203->g_167++)
                { /* block id: 402 */
                    for (p_1203->g_228 = 0; (p_1203->g_228 != 50); p_1203->g_228 = safe_add_func_int32_t_s_s(p_1203->g_228, 3))
                    { /* block id: 405 */
                        int32_t *l_819 = &p_1203->g_71;
                        int32_t *l_820 = (void*)0;
                        int32_t *l_821 = &p_1203->g_350[1][6][3];
                        int32_t *l_822 = &p_1203->g_350[1][8][4];
                        int32_t *l_823 = (void*)0;
                        int32_t *l_824 = &p_1203->g_350[1][6][3];
                        int32_t *l_825 = (void*)0;
                        int32_t *l_826 = &l_787;
                        int32_t *l_827 = &l_787;
                        int32_t *l_828 = (void*)0;
                        int32_t *l_829 = &p_1203->g_350[1][6][3];
                        int32_t *l_830[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_830[i] = &l_787;
                        l_831++;
                        return (*p_1203->g_766);
                    }
                }
            }
            for (p_1203->g_119 = 0; (p_1203->g_119 <= 2); p_1203->g_119 += 1)
            { /* block id: 413 */
                uint32_t *l_861 = &p_1203->g_167;
                int64_t **l_865 = (void*)0;
                int16_t l_868 = (-10L);
                int32_t l_871 = (-4L);
                uint8_t *l_872 = &p_1203->g_228;
                uint8_t l_896 = 0x95L;
                (*p_25) ^= (-6L);
                if ((((safe_rshift_func_int16_t_s_u(0L, 11)) ^ (((safe_add_func_uint32_t_u_u((safe_div_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(p_1203->g_48, 8)), ((p_26++) | (safe_mod_func_int32_t_s_s(((((((*l_872) = ((safe_sub_func_uint32_t_u_u((((**p_1203->g_665) = 0x0574212E3C973F51L) ^ (safe_unary_minus_func_uint16_t_u((0xB68FL | (((safe_lshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((p_1203->g_758 = (((void*)0 != &p_1203->g_115) == (FAKE_DIVERGE(p_1203->global_2_offset, get_global_id(2), 10) > (l_871 = ((safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u((l_870[2] ^= (safe_div_func_int64_t_s_s(((((*l_864) = (safe_div_func_int16_t_s_s(((--(*l_861)) , ((!((l_797[2][1] >= (((p_1203->g_614 = l_864) == (p_1203->g_869[8][3][0] = (((safe_add_func_int8_t_s_s(l_868, FAKE_DIVERGE(p_1203->local_1_offset, get_local_id(1), 10))) & p_1203->g_275) , &p_1203->g_675))) , 0x00F882FC67FF5D5FL)) == p_24)) | 0x76176442L)), l_787))) ^ p_24) != l_797[2][2]), (-1L)))), 4294967295UL)), p_24)) < p_27))))) < 0x17D7BA6DL))), l_797[0][1])) ^ p_1203->g_654) , p_24))))), l_868)) | l_787)) > p_1203->g_326) ^ l_868) && 0x1A701B4E5D949956L) && p_24), p_1203->g_3))))), 0UL)) == p_27) < (*p_25))) & p_24))
                { /* block id: 425 */
                    int16_t *l_889 = &p_1203->g_445;
                    int64_t *l_890 = &p_1203->g_654;
                    int64_t *l_891 = &p_1203->g_675;
                    int8_t *l_892 = &l_775;
                    int32_t l_897 = 0x4ACF2DADL;
                    int32_t l_903 = 8L;
                    if ((((safe_div_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(7L, 4)), ((safe_sub_func_uint8_t_u_u(p_24, (((*l_892) ^= (((*l_891) = (safe_mod_func_int16_t_s_s((((((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s(l_797[0][1], ((*l_889) = (safe_mod_func_int32_t_s_s((p_26 < p_27), (--(*l_861))))))), l_787)) & ((p_26 , ((*l_890) = (((*p_1203->g_614) = l_871) != 0x0E730A7959ED847CL))) , 0x7ED37B9BA74BDB07L)) , &p_1203->g_104) == &l_775) != 0x6BL), 0x7F4DL))) , p_1203->g_675)) , l_868))) || 6L))) >= p_27) | FAKE_DIVERGE(p_1203->local_0_offset, get_local_id(0), 10)))
                    { /* block id: 432 */
                        uint16_t l_895 = 1UL;
                        (*p_25) = ((((safe_add_func_uint32_t_u_u(l_797[0][1], ((p_27 , (p_1203->g_675 != 65527UL)) , (l_895 > p_26)))) | (p_26 , (l_896 , (p_27 , l_897)))) && p_1203->g_417) < (*p_25));
                    }
                    else
                    { /* block id: 434 */
                        int32_t *l_900[9][7][4] = {{{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116}},{{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116}},{{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116}},{{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116}},{{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116}},{{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116}},{{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116}},{{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116}},{{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116},{&l_871,&l_870[2],&p_1203->g_350[1][6][3],&p_1203->g_116}}};
                        int32_t l_902[7][3][9] = {{{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL}},{{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL}},{{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL}},{{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL}},{{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL}},{{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL}},{{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL},{0x1F265DD5L,0x61AF63D8L,0x61AF63D8L,0x1F265DD5L,0x62C89756L,(-1L),0x102A383EL,9L,0x732E78BCL}}};
                        uint8_t l_904 = 7UL;
                        int i, j, k;
                        (*p_1203->g_766) = &l_871;
                        (*p_1203->g_899) = (*p_1203->g_766);
                        ++l_904;
                    }
                    for (p_1203->g_48 = 0; (p_1203->g_48 <= 2); p_1203->g_48 += 1)
                    { /* block id: 441 */
                        int16_t **l_908 = &p_1203->g_388;
                        int32_t l_917 = 0L;
                        volatile int8_t ***l_924 = &p_1203->g_922;
                        int i, j;
                        (*p_25) = ((((l_907 == (void*)0) != l_797[p_1203->g_119][(p_1203->g_48 + 1)]) , (p_24 > ((l_868 , ((*l_908) = &l_868)) != (void*)0))) < (p_1203->g_48 & GROUP_DIVERGE(0, 1)));
                        (*p_25) ^= (255UL && ((((safe_div_func_uint32_t_u_u((safe_div_func_int16_t_s_s((safe_add_func_int32_t_s_s(((*p_1203->g_614) != ((*l_908) != &l_797[0][4])), ((-4L) >= (l_797[p_1203->g_48][(p_1203->g_48 + 3)] = 0x0B3CL)))), l_917)), p_26)) <= (safe_add_func_int64_t_s_s((safe_div_func_int64_t_s_s((*p_1203->g_614), l_784)), p_24))) < l_917) <= p_27));
                        if ((*p_25))
                            break;
                        (*l_924) = p_1203->g_922;
                    }
                }
                else
                { /* block id: 449 */
                    (*p_25) ^= (-1L);
                }
                return p_25;
            }
            for (p_1203->g_675 = 27; (p_1203->g_675 <= 3); --p_1203->g_675)
            { /* block id: 456 */
                return (*p_1203->g_899);
            }
        }
        for (p_1203->g_326 = 0; (p_1203->g_326 < (-20)); p_1203->g_326 = safe_sub_func_int32_t_s_s(p_1203->g_326, 5))
        { /* block id: 462 */
            int32_t l_960[9][4][5] = {{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}}};
            uint64_t **l_971 = &p_1203->g_666;
            int32_t *l_981 = &p_1203->g_350[1][6][3];
            int32_t l_1002 = 0x7D1E3B58L;
            int32_t l_1004 = (-9L);
            int32_t l_1006 = 0x07582FB0L;
            int8_t *l_1047 = &l_775;
            int16_t *l_1077 = &l_797[1][4];
            int16_t **l_1078[2][10] = {{&p_1203->g_388,&p_1203->g_388,&l_1077,&p_1203->g_388,&p_1203->g_388,&p_1203->g_388,&l_1077,&p_1203->g_388,&p_1203->g_388,&p_1203->g_388},{&p_1203->g_388,&p_1203->g_388,&l_1077,&p_1203->g_388,&p_1203->g_388,&p_1203->g_388,&l_1077,&p_1203->g_388,&p_1203->g_388,&p_1203->g_388}};
            uint32_t **l_1083 = &l_1060[1];
            int i, j, k;
            for (p_1203->g_242 = 0; (p_1203->g_242 <= 1); p_1203->g_242 += 1)
            { /* block id: 465 */
                int8_t **l_952 = &l_907;
                int32_t l_967 = 0x044FC4EAL;
                uint32_t l_994[7] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                int32_t l_1005[1][9];
                uint32_t *l_1011 = &p_1203->g_98[3][3];
                uint32_t **l_1010[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int16_t *l_1051 = &l_797[0][1];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_1005[i][j] = 0x64B86328L;
                }
                if ((safe_rshift_func_int16_t_s_u((l_931 != &p_1203->g_167), 4)))
                { /* block id: 466 */
                    int32_t l_938 = 0x1049D2B2L;
                    int8_t ***l_951 = &l_950;
                    int i;
                    if ((p_26 > (safe_mul_func_int16_t_s_s((safe_add_func_uint8_t_u_u((+((safe_lshift_func_uint16_t_u_s(0x2C63L, 3)) != 0x0A30D198L)), ((l_938 >= ((((safe_lshift_func_uint8_t_u_s(((&p_1203->g_297[6] != l_941) != (safe_mod_func_int32_t_s_s((((((safe_lshift_func_int8_t_s_s(p_24, (safe_add_func_uint32_t_u_u((safe_sub_func_int64_t_s_s((((((*l_951) = l_950) == l_952) & p_26) <= p_24), p_26)), p_1203->g_3)))) , l_953) == l_953) >= p_24) ^ l_938), l_798[5][0][5]))), 7)) , &p_1203->g_48) != &p_1203->g_48) && 0x20L)) < 65535UL))), 0L))))
                    { /* block id: 468 */
                        int32_t *l_954[6][7][4] = {{{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0}},{{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0}},{{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0}},{{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0}},{{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0}},{{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0},{&l_901,&p_1203->g_350[1][6][3],(void*)0,(void*)0}}};
                        uint8_t *l_968 = &p_1203->g_138;
                        int64_t *l_972 = &p_1203->g_654;
                        uint64_t ****l_973[5][3][4] = {{{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0}},{{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0}},{{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0}},{{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0}},{{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0},{(void*)0,&p_1203->g_694[1],&p_1203->g_694[1],(void*)0}}};
                        uint16_t *l_975 = &p_1203->g_208[0];
                        int i, j, k;
                        (*p_1203->g_955) = l_954[1][0][3];
                        if ((*p_25))
                            break;
                        atomic_min(&p_1203->g_atomic_reduction[get_linear_group_id()], (((safe_mul_func_uint8_t_u_u(0xFCL, ((FAKE_DIVERGE(p_1203->group_2_offset, get_group_id(2), 10) < (+(safe_div_func_uint16_t_u_u((l_960[7][3][3] <= (((void*)0 == p_1203->g_694[p_1203->g_242]) > ((safe_lshift_func_int16_t_s_u((+0x3DE8L), (+(safe_rshift_func_uint16_t_u_s(p_1203->g_228, 9))))) , (safe_rshift_func_int16_t_s_u(p_24, 11))))), (l_967 = p_24))))) , (p_26 ^= ((*l_968) = p_1203->g_326))))) != (-6L)) == 0UL));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1203->v_collective += p_1203->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        l_976 |= (((l_901 |= 0xBA6309059CB9831EL) >= ((safe_add_func_int16_t_s_s((p_1203->g_716 , 3L), p_24)) && 0x356913524DB26E98L)) != ((((*l_975) &= ((l_971 == ((!p_27) , ((((*l_972) |= l_967) , ((((l_974 = &p_1203->g_695[1][6]) == p_1203->g_694[p_1203->g_242]) <= l_797[1][2]) && 0x22L)) , (void*)0))) == l_798[6][0][2])) != 0x8794L) , l_960[0][2][1]));
                    }
                    else
                    { /* block id: 480 */
                        int16_t l_977 = 5L;
                        int32_t **l_978 = (void*)0;
                        uint8_t *l_989 = &p_1203->g_119;
                        int32_t *l_991 = &l_976;
                        (*p_1203->g_979) = p_25;
                        l_981 = p_25;
                        (*l_991) ^= (((safe_add_func_int32_t_s_s((((4294967295UL <= 0xF2C505F4L) ^ (safe_mod_func_uint8_t_u_u(((FAKE_DIVERGE(p_1203->local_2_offset, get_local_id(2), 10) ^ (((*l_989) = (65531UL | (safe_mul_func_uint8_t_u_u(((l_870[4] < (&p_1203->g_491 != ((l_988 == (void*)0) , (void*)0))) == ((l_787 = ((*l_907) = ((l_938 , (*p_25)) , 0x08L))) & 0x14L)), p_26)))) == p_1203->g_758)) | l_990), 0x6AL))) ^ (**p_1203->g_665)), 0x6B506185L)) , p_1203->g_71) , (*p_25));
                        return l_981;
                    }
                    if ((*l_981))
                        continue;
                    if (l_798[0][0][0])
                        continue;
                    for (l_901 = 6; (l_901 >= 1); l_901 -= 1)
                    { /* block id: 493 */
                        return p_25;
                    }
                }
                else
                { /* block id: 496 */
                    int32_t *l_997 = &l_976;
                    int32_t l_998[4][7][5];
                    int32_t *l_999 = &p_1203->g_350[1][6][3];
                    int32_t *l_1000 = &l_870[3];
                    int32_t *l_1001 = &l_990;
                    int32_t *l_1003[3][1];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 7; j++)
                        {
                            for (k = 0; k < 5; k++)
                                l_998[i][j][k] = 0L;
                        }
                    }
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_1003[i][j] = &l_870[0];
                    }
                    for (l_775 = 0; (l_775 <= 1); l_775 += 1)
                    { /* block id: 499 */
                        int32_t l_995 = 1L;
                        int i, j, k;
                        l_995 |= ((*p_25) ^= (safe_div_func_uint16_t_u_u(p_1203->g_350[l_775][(p_1203->g_242 + 7)][(p_1203->g_242 + 2)], l_994[3])));
                        if ((*l_981))
                            break;
                    }
                    l_1007++;
                    (*l_997) = ((l_1010[3] == (void*)0) , (safe_rshift_func_int16_t_s_u(0x4B9CL, (safe_lshift_func_uint8_t_u_u(p_27, 5)))));
                }
                if ((+((safe_sub_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(l_1028, (safe_rshift_func_int8_t_s_u(1L, 0)))), ((p_27 = (&p_27 == (void*)0)) < ((((((((l_787 |= ((*l_981) = (+(safe_lshift_func_uint16_t_u_s((*l_981), ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(((p_24 || (safe_div_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u(((*l_1051) = (safe_sub_func_int16_t_s_s((safe_add_func_int32_t_s_s((safe_mod_func_int16_t_s_s(((l_1047 != (l_1048 = ((*l_952) = l_1047))) , (safe_sub_func_uint16_t_u_u(l_1007, l_1005[0][8]))), 0x6507L)), l_994[3])), p_1203->g_98[0][1]))), (*l_981))), p_1203->g_417))) < 0xF5L), 2)), 4)) || p_24)))))) > l_976) , p_26) && 18446744073709551615UL) & p_1203->g_138) || p_1203->g_16) & (-1L)) ^ p_24)))) , 0x77C373ACB6FCFE6CL) ^ 18446744073709551614UL), 1L)), p_24)), p_24)), p_24)) || GROUP_DIVERGE(0, 1))))
                { /* block id: 513 */
                    for (p_1203->g_275 = 0; (p_1203->g_275 <= 6); p_1203->g_275 += 1)
                    { /* block id: 516 */
                        int32_t *l_1052 = &l_787;
                        return p_25;
                    }
                    (*l_981) = ((*l_981) < ((*l_931) = p_26));
                }
                else
                { /* block id: 521 */
                    uint32_t *l_1063[3][2];
                    uint32_t l_1064[9] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
                    int32_t **l_1067 = (void*)0;
                    int32_t **l_1068[5] = {&l_981,&l_981,&l_981,&l_981,&l_981};
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_1063[i][j] = &p_1203->g_98[3][0];
                    }
                    p_25 = p_25;
                }
            }
            l_1084 = (safe_mul_func_uint8_t_u_u(((p_27 , l_1047) == (*p_1203->g_922)), (safe_sub_func_uint16_t_u_u((((safe_div_func_int32_t_s_s((safe_rshift_func_int16_t_s_u((p_27 <= ((p_1203->g_1081 = (l_1059 = (((*p_1203->g_387) != (l_1079 = l_1077)) , l_1080))) != l_1083)), 1)), (*p_25))) >= (*l_981)) , (*l_981)), 0xB5F7L))));
        }
    }
    else
    { /* block id: 533 */
        uint32_t l_1085 = 0x557DDAC4L;
        int32_t **l_1103 = &p_1203->g_115;
        int32_t ***l_1102 = &l_1103;
        uint64_t **l_1128 = (void*)0;
        int16_t *l_1133 = &p_1203->g_326;
        int32_t **l_1135 = &p_1203->g_1107;
        l_1085++;
        for (l_990 = 0; (l_990 == (-13)); l_990 = safe_sub_func_uint16_t_u_u(l_990, 9))
        { /* block id: 537 */
            int32_t l_1098 = 0x27807EE4L;
            int32_t **l_1100 = &p_1203->g_115;
            int32_t ***l_1099 = &l_1100;
            int32_t ****l_1101 = &l_1099;
            int32_t **l_1104 = (void*)0;
            int32_t **l_1105[3][7][5] = {{{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765}},{{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765}},{{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_764,&l_765,&l_765}}};
            int32_t *l_1108 = (void*)0;
            int32_t *l_1109 = &l_870[1];
            int i, j, k;
            (*p_25) = (safe_sub_func_int32_t_s_s((-1L), ((*l_1109) |= (((safe_add_func_uint64_t_u_u(p_24, ((((safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), l_1098)), (((*l_1101) = l_1099) == l_1102))) <= ((p_1203->g_1107 = (l_1106 = p_25)) == &p_1203->g_186)) ^ (*p_25)) ^ FAKE_DIVERGE(p_1203->local_2_offset, get_local_id(2), 10)))) <= l_787) == p_26))));
            (**l_1099) = p_25;
        }
        l_870[2] = (safe_lshift_func_int16_t_s_u(((*p_25) <= (safe_add_func_int32_t_s_s(((5L < p_24) > p_27), ((safe_lshift_func_int8_t_s_u((((safe_rshift_func_int8_t_s_u((safe_unary_minus_func_int32_t_s((((+(safe_div_func_uint64_t_u_u(((*p_25) == 1L), (safe_mul_func_int16_t_s_s((((((safe_sub_func_uint64_t_u_u(((l_787 = ((l_1127 == l_1128) | (safe_rshift_func_int8_t_s_u((safe_sub_func_uint16_t_u_u(((l_1133 != (*p_1203->g_387)) >= (-1L)), l_1134)), p_1203->g_41)))) | l_990), 0L)) || 0UL) & p_24) , p_1203->g_242) >= l_798[2][0][3]), p_24))))) < (*p_25)) , (*p_25)))), 3)) | l_1028) , (-3L)), GROUP_DIVERGE(2, 1))) > l_1134)))), p_1203->g_716));
        (*p_1203->g_1139) = l_1135;
    }
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_242 p_1203->g_186 p_1203->g_750 p_1203->g_384 p_1203->g_758 p_1203->g_119
 * writes: p_1203->g_186 p_1203->g_750 p_1203->g_384 p_1203->g_758
 */
int64_t  func_33(int32_t  p_34, struct S0 * p_1203)
{ /* block id: 365 */
    uint32_t l_746 = 1UL;
    int32_t l_747[3];
    int16_t l_757 = 0x0773L;
    int i;
    for (i = 0; i < 3; i++)
        l_747[i] = 0x34BE6D1DL;
    l_747[1] ^= l_746;
    l_747[1] ^= p_1203->g_242;
    for (p_1203->g_186 = 0; (p_1203->g_186 <= 1); p_1203->g_186 += 1)
    { /* block id: 370 */
        int32_t *l_748 = &l_747[2];
        int32_t *l_749[7];
        int i;
        for (i = 0; i < 7; i++)
            l_749[i] = (void*)0;
        p_1203->g_750++;
        if ((*l_748))
            break;
    }
    for (p_1203->g_384 = 11; (p_1203->g_384 > 30); p_1203->g_384++)
    { /* block id: 376 */
        int32_t *l_755[2];
        int32_t l_756 = 0x69D89492L;
        int i;
        for (i = 0; i < 2; i++)
            l_755[i] = (void*)0;
        --p_1203->g_758;
    }
    return p_1203->g_119;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_3 p_1203->g_48 p_1203->g_81 p_1203->g_71 p_1203->g_98 p_1203->g_102 p_1203->g_116 p_1203->g_119 p_1203->g_115 p_1203->g_104 p_1203->g_167 p_1203->g_186 p_1203->g_124 p_1203->g_228 p_1203->g_208 p_1203->g_242 p_1203->g_275 p_1203->g_326 p_1203->g_491 p_1203->g_384 p_1203->g_350 p_1203->g_138 p_1203->g_445 p_1203->g_417 p_1203->g_654 p_1203->g_599 p_1203->g_665 p_1203->g_666 p_1203->g_675 p_1203->g_691 p_1203->g_694 p_1203->g_716 p_1203->g_614
 * writes: p_1203->g_48 p_1203->g_71 p_1203->g_98 p_1203->g_102 p_1203->g_115 p_1203->g_119 p_1203->g_104 p_1203->g_124 p_1203->g_116 p_1203->g_138 p_1203->g_167 p_1203->g_186 p_1203->g_208 p_1203->g_228 p_1203->g_242 p_1203->g_275 p_1203->g_297 p_1203->g_445 p_1203->g_491 p_1203->g_350 p_1203->g_384 p_1203->g_599 p_1203->g_614 p_1203->g_654 p_1203->g_694
 */
int32_t  func_42(uint64_t  p_43, int64_t  p_44, int32_t  p_45, uint32_t  p_46, struct S0 * p_1203)
{ /* block id: 32 */
    int32_t **l_57 = (void*)0;
    int32_t **l_279 = &p_1203->g_115;
    int32_t ***l_278 = &l_279;
    int64_t l_280[9][4][7] = {{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}},{{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL},{0x178253EB220B9DF3L,0x0A8199A5E127975DL,0x1836B154859BE326L,0L,0x178253EB220B9DF3L,0L,0x0A8199A5E127975DL}}};
    int16_t *l_449 = &p_1203->g_445;
    int32_t l_467 = 7L;
    int32_t l_520[7] = {1L,1L,1L,1L,1L,1L,1L};
    uint32_t l_584 = 1UL;
    int32_t *l_596[4];
    int64_t *l_615 = (void*)0;
    uint64_t **l_667 = &p_1203->g_666;
    uint64_t l_723 = 0UL;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_596[i] = (void*)0;
    if (((p_1203->g_3 >= (p_46 <= p_43)) == (((*l_278) = ((safe_mul_func_int16_t_s_s((+((255UL ^ GROUP_DIVERGE(1, 1)) || 18446744073709551615UL)), ((*l_449) = func_54(l_57, func_58((safe_div_func_uint64_t_u_u((7L ^ (safe_div_func_int64_t_s_s((((*l_278) = func_66(&p_1203->g_3, p_1203)) == p_1203->g_81), p_43))), p_1203->g_3)), l_280[3][2][2], p_1203->g_3, p_1203), p_1203)))) , (void*)0)) != (void*)0)))
    { /* block id: 207 */
        int8_t l_453[6] = {0L,0x76L,0L,0L,0x76L,0L};
        int32_t l_464 = 5L;
        int32_t l_465 = 0x7D4C5F5DL;
        int32_t l_466 = 1L;
        uint32_t l_489[3];
        uint64_t *l_559[10][9] = {{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384},{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384},{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384},{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384},{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384},{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384},{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384},{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384},{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384},{(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384,(void*)0,(void*)0,&p_1203->g_384,&p_1203->g_384,&p_1203->g_384}};
        int32_t l_739 = 1L;
        int i, j;
        for (i = 0; i < 3; i++)
            l_489[i] = 0UL;
lbl_600:
        for (p_1203->g_275 = 0; (p_1203->g_275 <= 1); p_1203->g_275 += 1)
        { /* block id: 210 */
            int16_t l_452 = 0L;
            int32_t *l_454 = &p_1203->g_116;
            int32_t *l_455 = &p_1203->g_350[1][6][3];
            int32_t *l_456 = &p_1203->g_71;
            int32_t *l_457 = &p_1203->g_116;
            int32_t *l_458 = &p_1203->g_116;
            int32_t *l_459 = &p_1203->g_71;
            int32_t *l_460 = &p_1203->g_350[1][6][3];
            int32_t *l_461 = &p_1203->g_71;
            int32_t *l_462 = &p_1203->g_71;
            int32_t *l_463[2];
            uint32_t l_468 = 0UL;
            int i;
            for (i = 0; i < 2; i++)
                l_463[i] = &p_1203->g_350[1][6][3];
            p_1203->g_116 &= (safe_div_func_int32_t_s_s(l_452, 0xEC679FACL));
            l_468--;
            return p_1203->g_167;
        }
        for (p_43 = 9; (p_43 <= 51); p_43++)
        { /* block id: 217 */
            int32_t l_481 = 5L;
            int32_t l_488 = 0x61C65C00L;
            uint64_t *l_515 = &p_1203->g_242;
            uint8_t l_595 = 0x4EL;
            int32_t *l_597[8] = {&p_1203->g_186,&p_1203->g_186,&p_1203->g_186,&p_1203->g_186,&p_1203->g_186,&p_1203->g_186,&p_1203->g_186,&p_1203->g_186};
            uint32_t l_693 = 4294967289UL;
            int16_t **l_736 = &l_449;
            int i;
            if ((0x8CL >= ((l_465 <= (((safe_div_func_uint8_t_u_u(((4294967292UL && p_1203->g_102) & ((safe_lshift_func_int16_t_s_s(p_1203->g_186, (((safe_lshift_func_uint8_t_u_s((l_488 |= (((((safe_sub_func_uint16_t_u_u(((l_481 & (safe_add_func_uint64_t_u_u((l_481 < l_464), (safe_rshift_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s((((void*)0 == l_449) , p_1203->g_326), p_1203->g_208[7])) , p_46), 4))))) <= p_44), l_481)) != l_453[3]) || 0x09C78555L) && 0x0AA1DE2095CA8796L) < p_45)), 2)) & l_489[1]) < l_464))) || 0xB21F53E24415D568L)), p_43)) , l_466) && 0x9099L)) || FAKE_DIVERGE(p_1203->local_1_offset, get_local_id(1), 10))))
            { /* block id: 219 */
                int32_t *l_490 = &p_1203->g_350[0][2][0];
                uint32_t *l_495 = (void*)0;
                uint32_t **l_494 = &l_495;
                int32_t *l_496 = &p_1203->g_116;
                ++p_1203->g_491;
                (*l_496) &= (((void*)0 != l_494) , ((*l_490) = 0L));
            }
            else
            { /* block id: 223 */
                uint32_t l_522 = 1UL;
                int32_t l_557 = 0x5ECB3922L;
                int32_t *l_563 = (void*)0;
                for (p_1203->g_71 = 0; (p_1203->g_71 <= 8); p_1203->g_71 += 1)
                { /* block id: 226 */
                    int16_t l_521 = 0L;
                    int32_t l_523 = 1L;
                    uint32_t l_524 = 0UL;
                    int32_t l_551 = 5L;
                    for (p_1203->g_384 = 0; (p_1203->g_384 <= 2); p_1203->g_384 += 1)
                    { /* block id: 229 */
                        int32_t *l_525 = (void*)0;
                        int32_t *l_526 = &p_1203->g_186;
                        int32_t **l_527 = &p_1203->g_115;
                        uint16_t *l_536 = (void*)0;
                        uint16_t *l_537 = &p_1203->g_491;
                        uint16_t *l_542 = &p_1203->g_208[0];
                        int32_t *l_550[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        l_524 = ((((safe_rshift_func_int8_t_s_s((l_489[p_1203->g_384] > (safe_lshift_func_uint8_t_u_s(p_43, ((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1203->local_0_offset, get_local_id(0), 10), (p_46 , ((((safe_rshift_func_int16_t_s_u((l_523 = ((*l_449) = (safe_div_func_int32_t_s_s(p_44, ((safe_rshift_func_uint8_t_u_s((((safe_lshift_func_int16_t_s_u((safe_sub_func_uint64_t_u_u(7UL, (safe_rshift_func_int16_t_s_s((-1L), (((((((l_515 == ((safe_add_func_int32_t_s_s(((++(*l_515)) && ((p_46 > (!((!((((p_1203->g_119 , p_46) ^ l_520[4]) | l_521) != p_1203->g_186)) == 0x03EBL))) <= p_45)), p_43)) , (void*)0)) == p_46) != p_1203->g_102) | GROUP_DIVERGE(1, 1)) , l_453[2]) != l_522) & p_44))))), p_44)) <= 0x5246L) , GROUP_DIVERGE(1, 1)), 7)) && 0x76CAL))))), 8)) , p_1203->g_350[0][7][5]) , p_45) , l_481)))) < FAKE_DIVERGE(p_1203->global_0_offset, get_global_id(0), 10))))), 1)) || 1L) | 0L) | 0xC5DC76EEL);
                        (*l_527) = &l_488;
                        l_551 |= ((safe_add_func_int16_t_s_s((safe_mod_func_int16_t_s_s(l_481, ((p_43 > ((l_523 = (((l_488 >= ((safe_sub_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u(((*l_537) = FAKE_DIVERGE(p_1203->global_1_offset, get_global_id(1), 10)), (safe_mod_func_int64_t_s_s(0L, (p_45 , 0x30A822D42B85DC91L))))), ((safe_add_func_uint16_t_u_u(((*l_542) = p_45), (safe_unary_minus_func_int64_t_s(((safe_div_func_uint32_t_u_u((((safe_add_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((l_464 && (p_1203->g_138 > l_488)), p_44)), p_46)) == 7L) > (-1L)), l_481)) & p_1203->g_445))))) , 0x76F64FF203BADEFEL))) || p_45)) >= p_1203->g_167) | (**l_527))) & 5L)) ^ 0xD368L))), (-1L))) < p_1203->g_3);
                    }
                }
                p_1203->g_71 = l_522;
                for (p_44 = 0; (p_44 <= 24); p_44 = safe_add_func_uint32_t_u_u(p_44, 5))
                { /* block id: 245 */
                    int32_t *l_556 = &p_1203->g_71;
                    uint64_t **l_558 = &l_515;
                    int32_t **l_560 = &l_556;
                    (*l_556) &= (safe_add_func_int8_t_s_s((l_557 = ((((p_1203->g_115 = l_556) == (void*)0) , (void*)0) != (void*)0)), ((FAKE_DIVERGE(p_1203->global_1_offset, get_global_id(1), 10) , ((*l_558) = l_515)) != l_559[1][7])));
                    if ((*p_1203->g_115))
                        break;
                    (*l_560) = l_556;
                    for (l_464 = 0; (l_464 != 0); l_464 = safe_add_func_uint32_t_u_u(l_464, 2))
                    { /* block id: 254 */
                        return p_1203->g_275;
                    }
                }
                l_563 = (l_488 , &p_1203->g_3);
            }
            if (l_489[1])
            { /* block id: 260 */
                uint64_t *l_573[9][8] = {{&p_1203->g_242,&p_1203->g_242,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_242},{&p_1203->g_242,&p_1203->g_242,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_242},{&p_1203->g_242,&p_1203->g_242,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_242},{&p_1203->g_242,&p_1203->g_242,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_242},{&p_1203->g_242,&p_1203->g_242,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_242},{&p_1203->g_242,&p_1203->g_242,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_242},{&p_1203->g_242,&p_1203->g_242,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_242},{&p_1203->g_242,&p_1203->g_242,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_242},{&p_1203->g_242,&p_1203->g_242,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_384,&p_1203->g_242,&p_1203->g_242}};
                int32_t l_577 = (-1L);
                int32_t **l_677 = (void*)0;
                int32_t **l_678 = (void*)0;
                int32_t **l_679[9][3][1] = {{{&p_1203->g_115},{&p_1203->g_115},{&p_1203->g_115}},{{&p_1203->g_115},{&p_1203->g_115},{&p_1203->g_115}},{{&p_1203->g_115},{&p_1203->g_115},{&p_1203->g_115}},{{&p_1203->g_115},{&p_1203->g_115},{&p_1203->g_115}},{{&p_1203->g_115},{&p_1203->g_115},{&p_1203->g_115}},{{&p_1203->g_115},{&p_1203->g_115},{&p_1203->g_115}},{{&p_1203->g_115},{&p_1203->g_115},{&p_1203->g_115}},{{&p_1203->g_115},{&p_1203->g_115},{&p_1203->g_115}},{{&p_1203->g_115},{&p_1203->g_115},{&p_1203->g_115}}};
                int i, j, k;
                for (p_1203->g_186 = (-26); (p_1203->g_186 > (-1)); ++p_1203->g_186)
                { /* block id: 263 */
                    uint32_t **l_570 = (void*)0;
                    int32_t l_574 = 0L;
                    uint8_t *l_578 = (void*)0;
                    uint8_t *l_579 = &p_1203->g_275;
                    uint16_t l_601 = 0xC8EFL;
                    if ((0x0C84L <= (safe_add_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_u(((void*)0 != l_570), ((*l_579) = ((safe_lshift_func_int16_t_s_u((l_559[3][6] != l_573[6][6]), (l_574 > p_43))) == ((safe_lshift_func_int16_t_s_u(l_577, 6)) , p_43))))) & 0x3BF3BE16L), 0x48729774A751B289L))))
                    { /* block id: 265 */
                        int32_t *l_580 = (void*)0;
                        int32_t *l_581 = &l_481;
                        int32_t *l_582 = &l_467;
                        int32_t *l_583[4] = {&l_481,&l_481,&l_481,&l_481};
                        uint16_t *l_589 = (void*)0;
                        uint16_t *l_590 = &p_1203->g_208[7];
                        int32_t *l_598 = &p_1203->g_599;
                        int i;
                        l_584++;
                        l_577 = 0L;
                        (*l_581) = (((*l_598) = ((safe_mul_func_uint16_t_u_u(((((l_574 >= 0UL) != (p_1203->g_104 , (((((*l_590) = 65535UL) >= (safe_add_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u(p_44, p_1203->g_116)), ((l_595 , l_596[3]) == l_597[0])))) , GROUP_DIVERGE(1, 1)) & 0x282494DBL))) && p_1203->g_326) && p_1203->g_186), l_488)) , p_44)) , 1L);
                        return p_43;
                    }
                    else
                    { /* block id: 272 */
                        if (p_1203->g_104)
                            goto lbl_600;
                        return l_601;
                    }
                }
                for (p_1203->g_116 = (-27); (p_1203->g_116 > (-2)); p_1203->g_116++)
                { /* block id: 279 */
                    uint8_t l_604 = 255UL;
                    int64_t *l_613 = &l_280[3][2][2];
                    int64_t **l_612[4][8] = {{(void*)0,&l_613,&l_613,&l_613,&l_613,&l_613,(void*)0,&l_613},{(void*)0,&l_613,&l_613,&l_613,&l_613,&l_613,(void*)0,&l_613},{(void*)0,&l_613,&l_613,&l_613,&l_613,&l_613,(void*)0,&l_613},{(void*)0,&l_613,&l_613,&l_613,&l_613,&l_613,(void*)0,&l_613}};
                    int8_t *l_620 = &l_453[2];
                    uint16_t *l_643[6][10][4] = {{{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]}},{{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]}},{{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]}},{{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]}},{{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]}},{{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]},{&p_1203->g_208[0],&p_1203->g_208[0],&p_1203->g_208[4],&p_1203->g_208[4]}}};
                    int i, j, k;
                    if (l_604)
                    { /* block id: 280 */
                        p_1203->g_115 = &l_577;
                        if (l_466)
                            break;
                        if (p_45)
                            break;
                    }
                    else
                    { /* block id: 284 */
                        int32_t *l_605 = &l_520[2];
                        (*l_605) &= (-10L);
                    }
                    l_488 = ((safe_lshift_func_int16_t_s_u((+(safe_rshift_func_int16_t_s_u((l_488 >= ((l_615 = (p_1203->g_614 = (void*)0)) != (void*)0)), ((((safe_mul_func_int16_t_s_s((((p_1203->g_119 != (safe_sub_func_uint32_t_u_u((0x6FL == l_604), (GROUP_DIVERGE(0, 1) , (((*l_620) ^= ((p_43 == (0x5E292E1FL && (1UL || 65535UL))) < p_46)) <= l_604))))) > p_46) & 65535UL), p_1203->g_98[3][0])) != p_1203->g_275) == p_1203->g_350[1][8][0]) , p_1203->g_138)))), 12)) , l_481);
                    if (((((((p_1203->g_417 <= ((safe_lshift_func_int8_t_s_u(((safe_sub_func_uint64_t_u_u(((+(safe_div_func_int32_t_s_s((l_515 == l_573[6][6]), (safe_div_func_int16_t_s_s((-1L), (safe_add_func_int32_t_s_s((safe_unary_minus_func_int16_t_s(((safe_div_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1203->global_2_offset, get_global_id(2), 10), (safe_unary_minus_func_uint16_t_u((safe_mul_func_int8_t_s_s((!(-10L)), (safe_sub_func_int8_t_s_s((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), ((((l_577 = GROUP_DIVERGE(2, 1)) || (((safe_mod_func_uint64_t_u_u((((p_1203->g_654 |= (safe_sub_func_uint8_t_u_u((p_45 < (((((safe_rshift_func_uint16_t_u_u(p_44, 15)) > p_46) == ((safe_lshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((0x74E9L < p_1203->g_186) , 0xA5BFDEDE55616D72L), p_43)), 13)) <= 0x598D92024A39DC0AL)) || 0x44C9L) || p_1203->g_116)), p_1203->g_98[4][1]))) , p_1203->g_350[1][6][3]) , l_577), p_44)) <= p_1203->g_71) , 5UL)) & p_1203->g_384) , 0xFA2FD428L))), p_1203->g_138)))))))), GROUP_DIVERGE(2, 1))) && GROUP_DIVERGE(0, 1)))), p_1203->g_491))))))) || 1UL), 0x58F47A48975C498EL)) , 0x6FL), p_43)) , l_577)) & l_481) | p_46) , p_1203->g_445) && p_1203->g_599) | 4294967295UL))
                    { /* block id: 293 */
                        p_1203->g_115 = &p_1203->g_71;
                    }
                    else
                    { /* block id: 295 */
                        int64_t **l_660 = &l_613;
                        uint64_t ***l_668 = &l_667;
                        int8_t l_669[8][2] = {{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}};
                        int32_t *l_670[1][3];
                        int8_t *l_676 = (void*)0;
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_670[i][j] = &l_577;
                        }
                        p_1203->g_350[1][5][2] ^= (safe_mod_func_int64_t_s_s(((safe_unary_minus_func_uint64_t_u(((((safe_rshift_func_uint16_t_u_u(((void*)0 != l_660), 11)) && (((p_1203->g_104 = ((*l_620) = (((l_488 = ((((l_481 = (0L ^ (safe_mod_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u((~GROUP_DIVERGE(1, 1)), ((p_1203->g_665 != ((*l_668) = l_667)) >= l_669[1][1]))) & p_1203->g_98[7][3]), p_1203->g_417)))) && (safe_sub_func_int64_t_s_s((safe_sub_func_uint16_t_u_u((0UL ^ (**p_1203->g_665)), p_1203->g_675)), 0x759E827AB3BDDB73L))) , p_44) >= p_44)) & p_46) || 65532UL))) | p_1203->g_116) ^ FAKE_DIVERGE(p_1203->group_2_offset, get_group_id(2), 10))) , p_46) ^ 1UL))) == 0x8002L), 18446744073709551608UL));
                        if (p_1203->g_119)
                            continue;
                        l_465 = p_44;
                    }
                }
                p_1203->g_115 = &l_481;
                return p_46;
            }
            else
            { /* block id: 308 */
                uint8_t *l_686 = &p_1203->g_228;
                int32_t l_699 = 0x1B969DCEL;
                int32_t l_717 = 0x3139EAE2L;
                uint32_t *l_740 = &l_693;
                if (((safe_div_func_int64_t_s_s(((l_466 ^ (18446744073709551608UL || (FAKE_DIVERGE(p_1203->global_0_offset, get_global_id(0), 10) , ((void*)0 != &p_1203->g_186)))) || l_595), ((((((safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u(((*l_449) = (l_489[1] >= ((--(*l_686)) > ((safe_add_func_uint32_t_u_u(((p_1203->g_691 != (void*)0) ^ 1UL), p_45)) , l_481)))), p_46)), 5)) | p_1203->g_384) >= 0x6FE1D7FAADC17418L) | (-1L)) <= p_43) && p_44))) >= l_693))
                { /* block id: 311 */
                    uint64_t ****l_696 = &p_1203->g_694[1];
                    uint64_t ***l_698 = &l_667;
                    uint64_t ****l_697 = &l_698;
                    if (((((*l_686) = 1UL) && (((*l_696) = p_1203->g_694[1]) == ((*l_697) = (p_45 , &p_1203->g_695[1][6])))) >= l_699))
                    { /* block id: 315 */
                        uint32_t l_700 = 4294967295UL;
                        if (p_46)
                            break;
                        if (l_700)
                            break;
                    }
                    else
                    { /* block id: 318 */
                        int32_t **l_701 = &p_1203->g_115;
                        int32_t *l_718 = (void*)0;
                        int32_t *l_719 = &l_717;
                        if (p_1203->g_48)
                            goto lbl_600;
                        l_699 ^= l_453[1];
                        (*l_701) = &l_488;
                        (*l_719) = (safe_div_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s(((((safe_mod_func_int64_t_s_s(6L, ((*p_1203->g_614) = ((p_44 = (((**l_701) = (*p_1203->g_115)) || (safe_add_func_uint32_t_u_u(((safe_add_func_int32_t_s_s(((safe_sub_func_int32_t_s_s(l_481, (l_693 == 4294967286UL))) > (l_699 = l_453[4])), (safe_rshift_func_uint16_t_u_u(p_1203->g_716, p_44)))) != p_44), 4294967294UL)))) | l_717)))) < p_46) < p_43) > p_1203->g_71), 1)) && 0x18B4E166L), p_1203->g_3));
                    }
                    for (p_44 = 3; (p_44 >= 0); p_44 -= 1)
                    { /* block id: 330 */
                        int32_t *l_720 = &p_1203->g_116;
                        l_720 = &l_464;
                    }
                    return p_1203->g_242;
                }
                else
                { /* block id: 334 */
                    int16_t l_724 = 6L;
                    int32_t **l_725 = (void*)0;
                    l_699 &= (l_723 |= (safe_div_func_int32_t_s_s(p_45, 0xDD01520AL)));
                    p_1203->g_115 = &p_1203->g_116;
                    for (l_584 = 0; (l_584 > 42); ++l_584)
                    { /* block id: 341 */
                        if (p_44)
                            break;
                        if ((*p_1203->g_115))
                            break;
                        (*p_1203->g_115) |= (safe_div_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_u(p_1203->g_242, 0)) , ((l_488 || (((safe_mod_func_int32_t_s_s((l_736 == &p_1203->g_388), (safe_rshift_func_uint8_t_u_s((((0x49B1E919A7B2DF01L > GROUP_DIVERGE(1, 1)) , (void*)0) == l_736), p_44)))) > ((l_739 , 1UL) >= 0x1A3B7ACDL)) == (*p_1203->g_614))) != 1L)), p_45));
                    }
                    if ((*p_1203->g_115))
                        continue;
                }
                (*p_1203->g_115) ^= (l_740 == (void*)0);
            }
            atomic_xor(&p_1203->l_atomic_reduction[0], 0x69F48CCFL);
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1203->v_collective += p_1203->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            (*p_1203->g_115) = ((void*)0 == &p_46);
        }
    }
    else
    { /* block id: 353 */
        int32_t l_741 = 0x34E94C5AL;
        int32_t *l_742[1];
        int i;
        for (i = 0; i < 1; i++)
            l_742[i] = &p_1203->g_71;
        l_520[4] &= l_741;
        l_742[0] = &p_1203->g_350[1][6][3];
        p_1203->g_71 |= (p_1203->g_116 ^= p_43);
    }
    for (p_44 = 0; (p_44 > 20); p_44 = safe_add_func_int8_t_s_s(p_44, 6))
    { /* block id: 361 */
        int32_t l_745 = 7L;
        return l_745;
    }
    return p_1203->g_208[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_116
 * writes: p_1203->g_297 p_1203->g_116
 */
int16_t  func_54(int32_t ** p_55, int32_t ** p_56, struct S0 * p_1203)
{ /* block id: 149 */
    uint64_t *l_296[4];
    int32_t *l_298 = &p_1203->g_116;
    int16_t *l_313 = &p_1203->g_124;
    uint8_t *l_327 = &p_1203->g_275;
    uint16_t *l_328 = &p_1203->g_208[5];
    int8_t *l_329[5][4] = {{&p_1203->g_104,&p_1203->g_104,&p_1203->g_104,&p_1203->g_104},{&p_1203->g_104,&p_1203->g_104,&p_1203->g_104,&p_1203->g_104},{&p_1203->g_104,&p_1203->g_104,&p_1203->g_104,&p_1203->g_104},{&p_1203->g_104,&p_1203->g_104,&p_1203->g_104,&p_1203->g_104},{&p_1203->g_104,&p_1203->g_104,&p_1203->g_104,&p_1203->g_104}};
    int32_t l_330 = 0x526DE1A9L;
    int32_t *l_331 = &p_1203->g_71;
    uint32_t l_351[10] = {0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L,0x73ECC3D7L};
    int16_t *l_368 = &p_1203->g_326;
    uint16_t l_386 = 65531UL;
    int32_t l_408[10] = {5L,7L,(-1L),7L,5L,5L,7L,(-1L),7L,5L};
    int i, j;
    for (i = 0; i < 4; i++)
        l_296[i] = &p_1203->g_48;
    (*l_298) &= ((p_1203->g_297[6] = l_296[2]) != (void*)0);
    return (*l_298);
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_116
 * writes: p_1203->g_116
 */
int32_t ** func_58(int8_t  p_59, int32_t  p_60, uint64_t  p_61, struct S0 * p_1203)
{ /* block id: 144 */
    uint32_t l_283 = 4294967295UL;
    int32_t *l_286 = &p_1203->g_116;
    uint64_t *l_289 = &p_1203->g_48;
    uint32_t *l_295 = &p_1203->g_98[3][0];
    uint32_t **l_294 = &l_295;
    (*l_286) |= ((((*l_294) = &p_1203->g_98[3][0]) != (void*)0) > p_59);
    return &p_1203->g_115;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_48 p_1203->g_81 p_1203->g_71 p_1203->g_98 p_1203->g_3 p_1203->g_102 p_1203->g_116 p_1203->g_119 p_1203->g_115 p_1203->g_104 p_1203->g_167 p_1203->g_186 p_1203->g_124 p_1203->g_228 p_1203->g_208 p_1203->g_242 p_1203->g_275
 * writes: p_1203->g_48 p_1203->g_71 p_1203->g_98 p_1203->g_102 p_1203->g_115 p_1203->g_119 p_1203->g_104 p_1203->g_124 p_1203->g_116 p_1203->g_138 p_1203->g_167 p_1203->g_186 p_1203->g_208 p_1203->g_228 p_1203->g_242 p_1203->g_275
 */
int32_t ** func_66(int32_t * p_67, struct S0 * p_1203)
{ /* block id: 33 */
    uint64_t l_70[9][5] = {{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL},{1UL,9UL,0UL,18446744073709551615UL,18446744073709551608UL}};
    uint32_t l_106[1];
    int32_t *l_107[8][2][8] = {{{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0},{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0}},{{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0},{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0}},{{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0},{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0}},{{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0},{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0}},{{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0},{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0}},{{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0},{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0}},{{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0},{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0}},{{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0},{&p_1203->g_71,&p_1203->g_71,(void*)0,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,&p_1203->g_71,(void*)0}}};
    int64_t *l_238 = &p_1203->g_102;
    uint32_t *l_243[3];
    int32_t **l_270 = (void*)0;
    int32_t l_274 = 1L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_106[i] = 0xF7C0E051L;
    for (i = 0; i < 3; i++)
        l_243[i] = &p_1203->g_98[3][0];
    for (p_1203->g_48 = 28; (p_1203->g_48 <= 60); ++p_1203->g_48)
    { /* block id: 36 */
        int32_t l_92 = 0L;
        int32_t l_105 = 0x4A4F5E2AL;
        int8_t *l_233 = &p_1203->g_104;
        int64_t *l_234 = (void*)0;
        int64_t **l_235 = &l_234;
        int64_t *l_237 = &p_1203->g_102;
        int64_t **l_236 = &l_237;
        int32_t **l_266 = (void*)0;
        for (p_1203->g_71 = 4; (p_1203->g_71 >= 0); p_1203->g_71 -= 1)
        { /* block id: 39 */
            uint32_t *l_97 = &p_1203->g_98[3][0];
            int64_t *l_101 = &p_1203->g_102;
            int8_t *l_103[5][10][1] = {{{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104}},{{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104}},{{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104}},{{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104}},{{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104},{&p_1203->g_104}}};
            int32_t **l_223 = &p_1203->g_115;
            int i, j, k;
            (*l_223) = func_72(((+func_74(((safe_div_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((void*)0 != p_1203->g_81), 8)), (((safe_rshift_func_int16_t_s_u((~(safe_mul_func_int8_t_s_s(l_70[(p_1203->g_71 + 2)][p_1203->g_71], p_1203->g_48))), 4)) , ((safe_sub_func_int8_t_s_s((((safe_sub_func_int8_t_s_s((l_105 &= ((safe_rshift_func_int16_t_s_s(l_92, l_70[(p_1203->g_71 + 2)][p_1203->g_71])) & ((((*l_101) ^= ((~(safe_lshift_func_uint16_t_u_u(l_70[(p_1203->g_71 + 2)][p_1203->g_71], (((safe_rshift_func_int8_t_s_s(((((--(*l_97)) , &p_67) != &p_67) && p_1203->g_71), 7)) >= p_1203->g_3) , l_92)))) , p_1203->g_3)) == p_1203->g_71) >= l_92))), (-5L))) & (*p_67)) & l_70[7][4]), p_1203->g_48)) >= p_1203->g_3)) && 0x85202676B60554FBL))) && l_106[0]), l_107[0][0][0], p_1203)) , p_1203->g_119), p_1203);
            l_105 = 0x31F63CB3L;
            (*l_223) = l_107[0][0][0];
        }
        if ((safe_mod_func_int16_t_s_s(0x32CDL, (safe_mul_func_int16_t_s_s((p_1203->g_48 < ((((*l_236) = ((p_1203->g_228--) , ((*l_235) = ((safe_rshift_func_int8_t_s_s(((l_233 == (void*)0) & 0UL), (l_105 , (-1L)))) , l_234)))) == l_238) > p_1203->g_104)), l_92)))))
        { /* block id: 113 */
            uint32_t l_240 = 4294967288UL;
            int32_t l_241 = 6L;
            for (p_1203->g_116 = 0; (p_1203->g_116 <= 4); p_1203->g_116 += 1)
            { /* block id: 116 */
                int64_t l_239 = 0x7B6CD3ABC8045654L;
                for (p_1203->g_167 = 0; (p_1203->g_167 <= 6); p_1203->g_167 += 1)
                { /* block id: 119 */
                    l_239 = (-1L);
                }
            }
            l_241 &= (((p_1203->g_186 , l_92) , p_1203->g_208[0]) > l_240);
            if (p_1203->g_242)
                continue;
            p_1203->g_116 = (l_243[2] != (void*)0);
        }
        else
        { /* block id: 126 */
            int64_t l_264 = 0x3EBE0A84230E6226L;
            uint16_t *l_271[4][10][5] = {{{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]}},{{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]}},{{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]}},{{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]},{&p_1203->g_208[7],&p_1203->g_208[2],&p_1203->g_208[0],(void*)0,&p_1203->g_208[0]}}};
            int32_t l_272 = 1L;
            int32_t l_273 = (-1L);
            int i, j, k;
            for (p_1203->g_242 = 0; (p_1203->g_242 != 8); p_1203->g_242 = safe_add_func_uint8_t_u_u(p_1203->g_242, 2))
            { /* block id: 129 */
                uint32_t l_265 = 5UL;
                int32_t ***l_267 = &l_266;
                int32_t **l_269 = &l_107[5][1][6];
                int32_t ***l_268[1][2][8] = {{{&l_269,&l_269,&l_269,&l_269,&l_269,&l_269,&l_269,&l_269},{&l_269,&l_269,&l_269,&l_269,&l_269,&l_269,&l_269,&l_269}}};
                int i, j, k;
                l_105 = (safe_lshift_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((((safe_mul_func_uint16_t_u_u((&p_1203->g_115 != (l_270 = ((*l_267) = ((((((safe_add_func_uint64_t_u_u((p_1203->g_228 | (safe_sub_func_int32_t_s_s((l_92 & (((safe_add_func_uint32_t_u_u(0xF64CF5CFL, ((p_1203->g_167 <= (p_1203->g_119 && p_1203->g_116)) > ((0L && ((((safe_div_func_uint32_t_u_u(((safe_mod_func_int64_t_s_s(((((((*l_233) = ((FAKE_DIVERGE(p_1203->global_1_offset, get_global_id(1), 10) , l_264) , p_1203->g_208[0])) | 255UL) && 7UL) && l_92) && 0x954C1D8A302A7C8BL), p_1203->g_71)) == p_1203->g_242), 1L)) , (-3L)) , l_265) & p_1203->g_71)) >= p_1203->g_71)))) , l_266) == &p_67)), 4294967295UL))), 0x0878E13C531C8147L)) && l_265) <= p_1203->g_98[3][0]) , p_1203->g_98[1][0]) , l_265) , (void*)0)))), FAKE_DIVERGE(p_1203->global_0_offset, get_global_id(0), 10))) , p_1203->g_71) < l_264), 18446744073709551615UL)), p_1203->g_208[0]));
            }
            if ((*p_67))
                break;
            l_273 = (p_1203->g_242 > (p_1203->g_228 | (l_272 = 65526UL)));
        }
        p_1203->g_71 = 0x09B40156L;
    }
    p_1203->g_275--;
    return &p_1203->g_115;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_119 p_1203->g_116 p_1203->g_115 p_1203->g_3 p_1203->g_167 p_1203->g_104 p_1203->g_48 p_1203->g_71 p_1203->g_186 p_1203->g_124 p_1203->g_98 p_1203->g_102
 * writes: p_1203->g_119 p_1203->g_104 p_1203->g_116 p_1203->g_167 p_1203->g_138 p_1203->g_186 p_1203->g_124 p_1203->g_208
 */
int32_t * func_72(int32_t  p_73, struct S0 * p_1203)
{ /* block id: 59 */
    int16_t l_148[9][5][4] = {{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}},{{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L},{1L,1L,0L,1L}}};
    uint64_t l_151 = 0UL;
    uint32_t *l_154 = &p_1203->g_98[3][0];
    uint32_t *l_155 = &p_1203->g_98[4][4];
    uint8_t *l_156 = &p_1203->g_119;
    int8_t *l_157 = (void*)0;
    int8_t *l_158 = &p_1203->g_104;
    int32_t *l_159[8][3] = {{(void*)0,&p_1203->g_116,(void*)0},{(void*)0,&p_1203->g_116,(void*)0},{(void*)0,&p_1203->g_116,(void*)0},{(void*)0,&p_1203->g_116,(void*)0},{(void*)0,&p_1203->g_116,(void*)0},{(void*)0,&p_1203->g_116,(void*)0},{(void*)0,&p_1203->g_116,(void*)0},{(void*)0,&p_1203->g_116,(void*)0}};
    uint32_t *l_166 = &p_1203->g_167;
    uint8_t *l_172 = &p_1203->g_138;
    int64_t l_183 = 8L;
    int16_t l_184 = 0L;
    int32_t *l_185 = &p_1203->g_186;
    int i, j, k;
lbl_195:
    p_1203->g_116 |= ((safe_add_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u(((*l_158) = (safe_mod_func_uint8_t_u_u(((*l_156) ^= ((((safe_add_func_int32_t_s_s(((l_148[4][2][3] > (p_73 , 0x9534L)) , (safe_div_func_int64_t_s_s(p_73, l_151))), (safe_rshift_func_int16_t_s_u(((l_154 != ((&p_1203->g_124 == &l_148[4][2][3]) , l_155)) > p_73), 6)))) ^ l_148[4][2][3]) || l_148[4][2][3]) >= l_151)), l_148[4][3][3]))), 1)) <= l_148[4][2][3]), l_151)) == l_151);
    for (l_151 = (-16); (l_151 <= 6); ++l_151)
    { /* block id: 65 */
        uint32_t l_162 = 0UL;
        l_162 = (*p_1203->g_115);
        p_1203->g_116 = (-7L);
    }
    if (((((~(safe_div_func_uint32_t_u_u((safe_unary_minus_func_int16_t_s(((++(*l_166)) || (safe_div_func_int16_t_s_s(((((*l_172) = (((((void*)0 == &p_1203->g_81) || 6UL) < p_1203->g_104) == ((*l_156) = 0xE8L))) != p_73) | (((*l_185) = ((safe_mod_func_int32_t_s_s(p_73, (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_mod_func_int16_t_s_s(p_73, (safe_sub_func_int32_t_s_s(l_183, p_1203->g_48)))), l_184)), 6UL)))) != p_73)) , 1L)), p_1203->g_71))))), 0xCE45A5E4L))) != p_73) | 0UL) , p_73))
    { /* block id: 73 */
        uint8_t l_200 = 0xCBL;
        uint32_t l_209[7][5][6] = {{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}},{{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL},{4UL,0x3250E56FL,1UL,0UL,0x3250E56FL,0UL}}};
        int32_t *l_220 = (void*)0;
        int i, j, k;
        for (p_1203->g_104 = 0; (p_1203->g_104 == 23); ++p_1203->g_104)
        { /* block id: 76 */
            int8_t l_203[4][8][1] = {{{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL}},{{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL}},{{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL}},{{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL},{0x2EL}}};
            int32_t *l_221 = &p_1203->g_116;
            int i, j, k;
            for (l_184 = 0; (l_184 == (-1)); l_184 = safe_sub_func_int64_t_s_s(l_184, 1))
            { /* block id: 79 */
                for (p_1203->g_186 = (-22); (p_1203->g_186 <= (-9)); p_1203->g_186++)
                { /* block id: 82 */
                    for (p_1203->g_124 = (-12); (p_1203->g_124 != 27); p_1203->g_124 = safe_add_func_uint32_t_u_u(p_1203->g_124, 5))
                    { /* block id: 85 */
                        if (p_73)
                            break;
                    }
                }
                if (p_73)
                    break;
                if (p_1203->g_124)
                    goto lbl_195;
            }
            for (l_183 = (-29); (l_183 != 27); ++l_183)
            { /* block id: 94 */
                uint16_t *l_206 = (void*)0;
                uint16_t *l_207[6];
                int32_t l_218 = 1L;
                int32_t **l_219 = &l_159[1][2];
                int i;
                for (i = 0; i < 6; i++)
                    l_207[i] = &p_1203->g_208[0];
                (*l_219) = (((*l_172) = (((safe_sub_func_uint16_t_u_u((0x7C10FBB080F592F2L ^ l_200), (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), l_203[3][5][0])))) > (((((0x4479DD2C8B667AFDL == (0x7CB7L || (l_209[6][2][0] = (p_1203->g_208[5] = l_200)))) == (GROUP_DIVERGE(1, 1) <= (safe_lshift_func_int16_t_s_u((safe_add_func_int16_t_s_s(((void*)0 != &p_73), ((safe_rshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s((p_1203->g_124 < p_1203->g_98[3][0]), p_1203->g_116)), 2)) <= l_203[3][5][0]))), p_1203->g_167)))) < p_73) == 6UL) > p_1203->g_102)) ^ l_218)) , (void*)0);
                l_221 = l_220;
            }
        }
    }
    else
    { /* block id: 102 */
        int32_t *l_222 = (void*)0;
        return l_222;
    }
    return l_166;
}


/* ------------------------------------------ */
/* 
 * reads : p_1203->g_102 p_1203->g_116 p_1203->g_119 p_1203->g_115 p_1203->g_48 p_1203->g_71 p_1203->g_3 p_1203->g_104 p_1203->g_98
 * writes: p_1203->g_115 p_1203->g_119 p_1203->g_104 p_1203->g_124 p_1203->g_116 p_1203->g_138
 */
int32_t  func_74(int32_t  p_75, int32_t * p_76, struct S0 * p_1203)
{ /* block id: 43 */
    int32_t **l_112 = (void*)0;
    int32_t *l_114 = &p_1203->g_71;
    int32_t **l_113[2][3] = {{&l_114,&l_114,&l_114},{&l_114,&l_114,&l_114}};
    uint32_t l_117 = 0UL;
    uint8_t *l_118 = &p_1203->g_119;
    int8_t *l_122 = &p_1203->g_104;
    int16_t *l_123 = &p_1203->g_124;
    uint32_t *l_136 = &p_1203->g_98[3][2];
    int i, j;
    p_1203->g_116 = (safe_rshift_func_uint16_t_u_s((p_1203->g_102 == (+0x11538544L)), ((*l_123) = ((((((safe_mod_func_uint8_t_u_u((((p_1203->g_115 = &p_1203->g_3) == (void*)0) <= l_117), 0x79L)) | (p_1203->g_116 , (--(*l_118)))) , ((*l_122) = (((p_1203->g_116 < ((void*)0 == p_1203->g_115)) >= p_1203->g_116) || 0x06E0L))) != p_1203->g_48) != 0x317AL) && (*l_114)))));
    p_75 = 0x59E6926EL;
    for (p_1203->g_116 = 20; (p_1203->g_116 == (-7)); p_1203->g_116--)
    { /* block id: 52 */
        int32_t ***l_133 = (void*)0;
        int32_t ***l_134 = (void*)0;
        int32_t ***l_135 = &l_112;
        uint8_t *l_137 = &p_1203->g_138;
        int32_t l_139 = 0x51EDEC69L;
        l_139 &= (((safe_mod_func_uint32_t_u_u((safe_div_func_uint64_t_u_u((0L != ((p_1203->g_3 , ((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1203->local_2_offset, get_local_id(2), 10), ((((((*l_137) = ((*l_118) |= (((((*l_135) = &l_114) == (((l_136 == (void*)0) ^ p_75) , &p_76)) ^ p_1203->g_104) != p_1203->g_71))) | GROUP_DIVERGE(2, 1)) , FAKE_DIVERGE(p_1203->local_0_offset, get_local_id(0), 10)) && 0x2D296291L) & p_75))) < p_1203->g_98[3][0])) ^ 0x32BD85DC1642A789L)), p_75)), 1L)) , p_75) <= 0xAAFF4E996E1C0719L);
    }
    return p_75;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1204;
    struct S0* p_1203 = &c_1204;
    struct S0 c_1205 = {
        (-1L), // p_1203->g_3
        0x23L, // p_1203->g_14
        6UL, // p_1203->g_16
        8L, // p_1203->g_41
        3UL, // p_1203->g_48
        0x2410957FL, // p_1203->g_71
        (void*)0, // p_1203->g_81
        {{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL},{4294967295UL,0x8FA5C3DAL,0UL,4294967288UL,1UL,4294967288UL,0UL}}, // p_1203->g_98
        (-1L), // p_1203->g_102
        0x26L, // p_1203->g_104
        0x288E96A6L, // p_1203->g_116
        &p_1203->g_116, // p_1203->g_115
        1UL, // p_1203->g_119
        1L, // p_1203->g_124
        0xF4L, // p_1203->g_138
        4294967291UL, // p_1203->g_167
        (-2L), // p_1203->g_186
        {0xA7B4L,65533UL,0xA7B4L,0xA7B4L,65533UL,0xA7B4L,0xA7B4L,65533UL}, // p_1203->g_208
        253UL, // p_1203->g_228
        0xDA799F3D6BF1367DL, // p_1203->g_242
        0x42L, // p_1203->g_275
        {&p_1203->g_48,&p_1203->g_48,&p_1203->g_48,&p_1203->g_48,&p_1203->g_48,&p_1203->g_48,&p_1203->g_48,&p_1203->g_48,&p_1203->g_48}, // p_1203->g_297
        (-1L), // p_1203->g_326
        {{{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L}},{{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L},{0x4EE5DEEDL,0x4EE5DEEDL,5L,(-10L),0x25AFF38DL,0x2D9CA3E4L,1L}}}, // p_1203->g_350
        0x9AEBAA60117410A8L, // p_1203->g_384
        (void*)0, // p_1203->g_388
        &p_1203->g_388, // p_1203->g_387
        0x4721575FL, // p_1203->g_417
        0x7025L, // p_1203->g_445
        1UL, // p_1203->g_491
        0x72543281L, // p_1203->g_599
        &p_1203->g_102, // p_1203->g_614
        (-4L), // p_1203->g_654
        &p_1203->g_384, // p_1203->g_666
        &p_1203->g_666, // p_1203->g_665
        0x4DA35EF6E6E9056AL, // p_1203->g_675
        (void*)0, // p_1203->g_692
        &p_1203->g_692, // p_1203->g_691
        {{&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666},{&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666},{&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666},{&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666,&p_1203->g_666}}, // p_1203->g_695
        {&p_1203->g_695[1][6],&p_1203->g_695[1][6]}, // p_1203->g_694
        4294967295UL, // p_1203->g_716
        0xF7L, // p_1203->g_750
        0x85FBAD99L, // p_1203->g_758
        &p_1203->g_115, // p_1203->g_766
        {{{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675}},{{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675}},{{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675}},{{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675}},{{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675}},{{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675}},{{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675}},{{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675}},{{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675},{(void*)0,&p_1203->g_675}}}, // p_1203->g_869
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1203->g_898
        &p_1203->g_115, // p_1203->g_899
        {{{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0}},{{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0}},{{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0}},{{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0},{&p_1203->g_14,(void*)0}}}, // p_1203->g_923
        &p_1203->g_923[0][3][0], // p_1203->g_922
        &p_1203->g_115, // p_1203->g_955
        &p_1203->g_115, // p_1203->g_979
        {&p_1203->g_115,&p_1203->g_115,&p_1203->g_115,&p_1203->g_115,&p_1203->g_115,&p_1203->g_115}, // p_1203->g_980
        2L, // p_1203->g_996
        {&p_1203->g_98[0][3],&p_1203->g_98[0][3],&p_1203->g_98[0][3],&p_1203->g_98[0][3],&p_1203->g_98[0][3],&p_1203->g_98[0][3],&p_1203->g_98[0][3]}, // p_1203->g_1082
        &p_1203->g_1082[3], // p_1203->g_1081
        &p_1203->g_41, // p_1203->g_1107
        &p_1203->g_1107, // p_1203->g_1137
        {{&p_1203->g_1137,&p_1203->g_1137,(void*)0,&p_1203->g_1137,&p_1203->g_1137},{&p_1203->g_1137,&p_1203->g_1137,(void*)0,&p_1203->g_1137,&p_1203->g_1137}}, // p_1203->g_1136
        {&p_1203->g_1137,&p_1203->g_1137,&p_1203->g_1137,&p_1203->g_1137,&p_1203->g_1137,&p_1203->g_1137,&p_1203->g_1137}, // p_1203->g_1138
        &p_1203->g_1137, // p_1203->g_1139
        (void*)0, // p_1203->g_1183
        &p_1203->g_115, // p_1203->g_1184
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
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1204 = c_1205;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1203);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1203->g_3, "p_1203->g_3", print_hash_value);
    transparent_crc(p_1203->g_14, "p_1203->g_14", print_hash_value);
    transparent_crc(p_1203->g_16, "p_1203->g_16", print_hash_value);
    transparent_crc(p_1203->g_41, "p_1203->g_41", print_hash_value);
    transparent_crc(p_1203->g_48, "p_1203->g_48", print_hash_value);
    transparent_crc(p_1203->g_71, "p_1203->g_71", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1203->g_98[i][j], "p_1203->g_98[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1203->g_102, "p_1203->g_102", print_hash_value);
    transparent_crc(p_1203->g_104, "p_1203->g_104", print_hash_value);
    transparent_crc(p_1203->g_116, "p_1203->g_116", print_hash_value);
    transparent_crc(p_1203->g_119, "p_1203->g_119", print_hash_value);
    transparent_crc(p_1203->g_124, "p_1203->g_124", print_hash_value);
    transparent_crc(p_1203->g_138, "p_1203->g_138", print_hash_value);
    transparent_crc(p_1203->g_167, "p_1203->g_167", print_hash_value);
    transparent_crc(p_1203->g_186, "p_1203->g_186", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1203->g_208[i], "p_1203->g_208[i]", print_hash_value);

    }
    transparent_crc(p_1203->g_228, "p_1203->g_228", print_hash_value);
    transparent_crc(p_1203->g_242, "p_1203->g_242", print_hash_value);
    transparent_crc(p_1203->g_275, "p_1203->g_275", print_hash_value);
    transparent_crc(p_1203->g_326, "p_1203->g_326", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1203->g_350[i][j][k], "p_1203->g_350[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1203->g_384, "p_1203->g_384", print_hash_value);
    transparent_crc(p_1203->g_417, "p_1203->g_417", print_hash_value);
    transparent_crc(p_1203->g_445, "p_1203->g_445", print_hash_value);
    transparent_crc(p_1203->g_491, "p_1203->g_491", print_hash_value);
    transparent_crc(p_1203->g_599, "p_1203->g_599", print_hash_value);
    transparent_crc(p_1203->g_654, "p_1203->g_654", print_hash_value);
    transparent_crc(p_1203->g_675, "p_1203->g_675", print_hash_value);
    transparent_crc(p_1203->g_716, "p_1203->g_716", print_hash_value);
    transparent_crc(p_1203->g_750, "p_1203->g_750", print_hash_value);
    transparent_crc(p_1203->g_758, "p_1203->g_758", print_hash_value);
    transparent_crc(p_1203->g_996, "p_1203->g_996", print_hash_value);
    transparent_crc(p_1203->v_collective, "p_1203->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
