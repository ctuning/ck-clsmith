// ---atomic_reductions ---fake_divergence -g 1,58,38 -l 1,2,1
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


// Seed: 113

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int16_t  f0;
   int64_t  f1;
   volatile uint8_t  f2;
   volatile uint32_t  f3;
};

union U1 {
   int8_t * f0;
   volatile int8_t  f1;
   volatile int32_t  f2;
};

struct S2 {
    uint32_t g_10;
    int8_t g_45[10];
    int8_t *g_44;
    int32_t g_48;
    volatile uint64_t g_67;
    uint16_t g_70;
    int32_t * volatile g_99;
    uint32_t g_113;
    uint16_t g_121[3];
    uint8_t g_159[5][10][5];
    uint32_t g_170;
    uint16_t g_172[4];
    uint32_t g_177[10][3][7];
    int32_t *g_181[4][8][8];
    int32_t ** volatile g_180;
    int64_t g_197[3];
    volatile int16_t g_202;
    int16_t g_230[8][2];
    union U1 g_295[2];
    union U1 *g_294;
    union U0 g_390;
    int8_t g_415;
    volatile uint64_t *g_433;
    volatile uint64_t * volatile * volatile g_432;
    volatile uint64_t * volatile * volatile * volatile g_431[2][2][9];
    uint32_t *g_453;
    uint32_t **g_452;
    uint32_t *** volatile g_451;
    int32_t ** volatile g_527;
    int32_t ** volatile g_528;
    volatile union U1 g_567;
    uint16_t g_577;
    uint16_t *g_599[9][2];
    uint16_t **g_598;
    int32_t g_617;
    uint32_t g_684;
    uint64_t g_695;
    int32_t ** volatile g_712;
    int32_t ** volatile g_713;
    int32_t ** volatile g_714;
    uint32_t *g_746;
    uint8_t g_748;
    int32_t ** volatile g_749;
    int32_t ** volatile g_750;
    volatile union U0 g_762;
    int64_t *g_785[7][4][9];
    int8_t g_786;
    volatile union U1 g_805[5][2][8];
    volatile union U1 g_806;
    uint32_t g_821;
    uint8_t *g_837;
    uint8_t g_842;
    union U1 g_858;
    int32_t *g_871;
    int32_t ** volatile g_872;
    uint64_t *g_876;
    uint64_t **g_875;
    int32_t g_891;
    uint32_t g_903;
    int16_t *g_947;
    int16_t * volatile *g_946;
    int32_t ** volatile g_970;
    int8_t g_996;
    uint32_t * volatile g_1000[5][2];
    uint32_t * volatile *g_999[5][1][6];
    uint32_t * volatile ** volatile g_1001;
    int64_t g_1010;
    union U1 g_1061;
    int16_t g_1083;
    volatile int16_t g_1084;
    uint64_t *** volatile g_1096;
    uint8_t g_1115;
    int32_t ** volatile g_1157;
    union U1 g_1163[8];
    uint16_t g_1200;
    int32_t g_1251;
    int32_t ** volatile g_1254;
    volatile union U1 g_1272;
    int64_t g_1276[5][3];
    union U0 g_1287;
    int32_t ** volatile g_1320;
    int32_t ** volatile g_1321;
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
uint32_t  func_1(struct S2 * p_1322);
int32_t * func_2(uint32_t  p_3, struct S2 * p_1322);
uint64_t  func_4(int8_t  p_5, int32_t * p_6, int64_t  p_7, int32_t * p_8, int32_t  p_9, struct S2 * p_1322);
union U1  func_11(int64_t  p_12, int32_t * p_13, uint64_t  p_14, int32_t  p_15, int32_t  p_16, struct S2 * p_1322);
int32_t * func_17(int16_t  p_18, int8_t * p_19, uint32_t  p_20, int32_t * p_21, uint32_t  p_22, struct S2 * p_1322);
uint32_t  func_25(int64_t  p_26, int32_t  p_27, uint8_t  p_28, int8_t * p_29, struct S2 * p_1322);
int32_t  func_30(uint32_t  p_31, uint32_t  p_32, int32_t * p_33, int32_t  p_34, int32_t * p_35, struct S2 * p_1322);
uint32_t  func_36(int32_t * p_37, struct S2 * p_1322);
int32_t * func_38(int8_t * p_39, int32_t  p_40, int32_t * p_41, int64_t  p_42, uint16_t  p_43, struct S2 * p_1322);
int32_t  func_51(uint8_t  p_52, uint32_t  p_53, struct S2 * p_1322);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1322->g_10 p_1322->g_44 p_1322->g_48 p_1322->g_45 p_1322->g_67 p_1322->g_99 p_1322->g_70 p_1322->g_113 p_1322->g_180 p_1322->g_159 p_1322->g_170 p_1322->g_177 p_1322->g_230 p_1322->g_172 p_1322->g_121 p_1322->g_197 p_1322->g_390 p_1322->g_415 p_1322->g_431 p_1322->g_433 p_1322->g_453 p_1322->g_390.f1 p_1322->g_528 p_1322->g_390.f0 p_1322->g_567 p_1322->g_577 p_1322->g_294 p_1322->g_295 p_1322->g_617 p_1322->g_695 p_1322->g_821 p_1322->g_970 p_1322->g_452 p_1322->g_996 p_1322->g_999 p_1322->g_1001 p_1322->g_871 p_1322->g_875 p_1322->g_746 p_1322->g_748 p_1322->g_1163 p_1322->g_1083 p_1322->g_684 p_1322->g_1200 p_1322->g_876 p_1322->g_451 p_1322->g_891 p_1322->g_1251 p_1322->g_1254 p_1322->g_1321
 * writes: p_1322->g_70 p_1322->g_45 p_1322->g_48 p_1322->g_113 p_1322->g_121 p_1322->g_181 p_1322->g_44 p_1322->g_197 p_1322->g_390.f1 p_1322->g_172 p_1322->g_159 p_1322->g_170 p_1322->g_390.f0 p_1322->g_230 p_1322->g_598 p_1322->g_617 p_1322->g_695 p_1322->g_821 p_1322->g_999 p_1322->g_1010 p_1322->g_876 p_1322->g_453 p_1322->g_684 p_1322->g_415 p_1322->g_996 p_1322->g_785 p_1322->g_891 p_1322->g_1251 p_1322->g_1200 p_1322->g_871
 */
uint32_t  func_1(struct S2 * p_1322)
{ /* block id: 4 */
    uint32_t l_46 = 4294967295UL;
    int32_t *l_47 = &p_1322->g_48;
    int8_t *l_579 = &p_1322->g_415;
    uint8_t l_618 = 250UL;
    int32_t **l_1164 = &p_1322->g_181[2][3][3];
    uint16_t l_1168 = 0UL;
    (*p_1322->g_1321) = ((*l_1164) = func_2((func_4(p_1322->g_10, ((*l_1164) = (func_11(p_1322->g_10, func_17(((safe_add_func_int64_t_s_s((0L != (0x105FA2EFL & func_25(((p_1322->g_10 , func_30(p_1322->g_10, func_36(func_38(p_1322->g_44, l_46, l_47, (*l_47), (*l_47), p_1322), p_1322), l_47, p_1322->g_577, l_47, p_1322)) , (*l_47)), p_1322->g_577, p_1322->g_177[2][2][1], l_579, p_1322))), p_1322->g_577)) && l_618), &p_1322->g_415, l_618, l_47, p_1322->g_177[3][1][6], p_1322), p_1322->g_10, p_1322->g_748, l_46, p_1322) , (void*)0)), l_618, p_1322->g_746, p_1322->g_1083, p_1322) <= l_1168), p_1322));
    return p_1322->g_70;
}


/* ------------------------------------------ */
/* 
 * reads : p_1322->g_415 p_1322->g_746 p_1322->g_684 p_1322->g_452 p_1322->g_453 p_1322->g_113 p_1322->g_1200 p_1322->g_48 p_1322->g_433 p_1322->g_67 p_1322->g_876 p_1322->g_695 p_1322->g_871 p_1322->g_451 p_1322->g_891 p_1322->g_1251 p_1322->g_1254 p_1322->g_617 p_1322->g_44 p_1322->g_45
 * writes: p_1322->g_415 p_1322->g_996 p_1322->g_113 p_1322->g_48 p_1322->g_785 p_1322->g_695 p_1322->g_390.f0 p_1322->g_891 p_1322->g_1251 p_1322->g_181 p_1322->g_1200 p_1322->g_617 p_1322->g_1010 p_1322->g_684
 */
int32_t * func_2(uint32_t  p_3, struct S2 * p_1322)
{ /* block id: 531 */
    uint64_t l_1179 = 18446744073709551613UL;
    uint8_t **l_1197 = (void*)0;
    int32_t l_1226[3];
    uint16_t l_1233 = 65535UL;
    uint32_t l_1291 = 0x0054D4F1L;
    int32_t l_1310 = 0x0FBABAEDL;
    int32_t l_1311 = 7L;
    int16_t l_1312 = 0x540EL;
    int32_t l_1313 = 0x13FE5158L;
    int32_t *l_1317 = &l_1226[1];
    int32_t *l_1318 = &l_1311;
    int32_t *l_1319[3][5] = {{&l_1226[0],(void*)0,&l_1226[0],&l_1226[0],(void*)0},{&l_1226[0],(void*)0,&l_1226[0],&l_1226[0],(void*)0},{&l_1226[0],(void*)0,&l_1226[0],&l_1226[0],(void*)0}};
    int i, j;
    for (i = 0; i < 3; i++)
        l_1226[i] = 7L;
    for (p_1322->g_415 = 4; (p_1322->g_415 > 10); p_1322->g_415 = safe_add_func_int8_t_s_s(p_1322->g_415, 5))
    { /* block id: 534 */
        int16_t l_1186 = 0x1636L;
        uint8_t **l_1198 = (void*)0;
        int32_t l_1199 = 0x52607FB2L;
        union U1 **l_1216 = &p_1322->g_294;
        int32_t l_1229 = 0x2CB9A438L;
        int32_t l_1230 = 0x1AD66FE0L;
        int32_t l_1231[4] = {0x6201ED21L,0x6201ED21L,0x6201ED21L,0x6201ED21L};
        int32_t **l_1271[2];
        int64_t *l_1273 = &p_1322->g_1010;
        int16_t l_1309 = 0x6134L;
        int i;
        for (i = 0; i < 2; i++)
            l_1271[i] = (void*)0;
        for (p_1322->g_996 = 25; (p_1322->g_996 != 22); p_1322->g_996 = safe_sub_func_int64_t_s_s(p_1322->g_996, 1))
        { /* block id: 537 */
            int32_t *l_1173 = &p_1322->g_48;
            int32_t *l_1174 = &p_1322->g_48;
            int32_t *l_1175 = &p_1322->g_48;
            int32_t *l_1176 = &p_1322->g_48;
            int32_t *l_1177 = (void*)0;
            int32_t *l_1178[7] = {&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48};
            union U1 **l_1214 = &p_1322->g_294;
            uint16_t *l_1261 = (void*)0;
            int64_t *l_1275 = &p_1322->g_1276[4][1];
            int32_t l_1308 = 0x11817DF9L;
            int i;
            l_1179++;
            if ((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(l_1186, 12)), (safe_div_func_int16_t_s_s(((&p_1322->g_99 != &p_1322->g_181[2][1][2]) , ((safe_mul_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((p_3 <= (safe_div_func_uint32_t_u_u(l_1186, (*p_1322->g_746)))), ((l_1199 = (((**p_1322->g_452)--) , (l_1197 == l_1198))) <= l_1186))), p_1322->g_1200)) > p_3)), p_3)))))
            { /* block id: 541 */
                uint16_t l_1209 = 65527UL;
                union U1 ***l_1215 = &l_1214;
                int64_t **l_1221 = &p_1322->g_785[0][0][7];
                int32_t l_1227 = 0x1BF01522L;
                int32_t l_1228[6];
                int32_t l_1232[5] = {3L,3L,3L,3L,3L};
                int i;
                for (i = 0; i < 6; i++)
                    l_1228[i] = 0x26F2F09BL;
                (*l_1176) = (safe_sub_func_uint16_t_u_u(l_1179, (safe_mul_func_int8_t_s_s((((4294967295UL & l_1186) & (safe_add_func_uint32_t_u_u((((safe_rshift_func_uint16_t_u_u(l_1209, 3)) , (void*)0) == ((*l_1173) , &p_1322->g_1010)), (&p_1322->g_617 == (void*)0)))) <= 0x1FL), p_3))));
                (*p_1322->g_871) &= (((*p_1322->g_433) < (safe_add_func_int64_t_s_s(((safe_lshift_func_int8_t_s_s((((*l_1215) = l_1214) != l_1216), (+4L))) < (safe_mul_func_uint8_t_u_u((&p_1322->g_177[5][1][5] != ((safe_div_func_int64_t_s_s((!((((*l_1221) = &p_1322->g_197[1]) == &p_1322->g_197[0]) , (safe_div_func_uint64_t_u_u((++(*p_1322->g_876)), 0x1A60D307E5935480L)))), l_1199)) , (void*)0)), FAKE_DIVERGE(p_1322->local_1_offset, get_local_id(1), 10)))), 0x0BB7C5BD70BE6741L))) || 0xA421L);
                l_1233--;
                if (p_3)
                    continue;
            }
            else
            { /* block id: 549 */
                uint32_t l_1253 = 0xA3B4FA83L;
                uint32_t **l_1263 = (void*)0;
                uint32_t ***l_1262[6] = {&l_1263,&l_1263,&l_1263,&l_1263,&l_1263,&l_1263};
                int32_t l_1264 = 0L;
                int32_t l_1298 = 0x2B8FA574L;
                uint32_t l_1303 = 0x409CD1E2L;
                int i;
                for (l_1233 = 0; (l_1233 <= 1); l_1233 += 1)
                { /* block id: 552 */
                    uint8_t l_1240 = 0xB9L;
                    int32_t l_1252 = (-3L);
                    uint16_t *l_1265 = &p_1322->g_1200;
                    for (p_1322->g_390.f0 = 1; (p_1322->g_390.f0 >= 0); p_1322->g_390.f0 -= 1)
                    { /* block id: 555 */
                        int32_t *l_1249 = &p_1322->g_891;
                        int32_t *l_1250 = &p_1322->g_1251;
                        l_1252 &= ((***p_1322->g_451) & (safe_lshift_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((*l_1173), ((l_1240 = (p_3 , (l_1226[1] |= p_3))) >= (safe_div_func_int32_t_s_s((((p_3 , 252UL) < (((((*l_1250) &= ((*l_1249) ^= ((safe_add_func_uint64_t_u_u((~(0x72926BDCC4461DC5L <= (safe_add_func_uint64_t_u_u((*p_1322->g_876), 0L)))), p_3)) != p_3))) , l_1179) <= 0x58C3L) == (-6L))) , (*p_1322->g_871)), 0x7D664CC2L))))), FAKE_DIVERGE(p_1322->group_0_offset, get_group_id(0), 10))));
                        (*l_1174) ^= l_1253;
                        (*p_1322->g_1254) = &l_1252;
                        (*l_1176) ^= (p_3 & (--(*p_1322->g_453)));
                    }
                    l_1231[2] &= ((*l_1176) = (((*l_1265) = (safe_mod_func_uint32_t_u_u((safe_div_func_uint32_t_u_u((p_3 || ((p_1322->g_415 , ((l_1179 && (((void*)0 == l_1261) , (*p_1322->g_433))) , &p_1322->g_999[4][0][5])) == l_1262[5])), ((l_1264 ^ l_1226[0]) | (*l_1174)))), p_3))) <= l_1264));
                    (*l_1176) = (-2L);
                    for (p_1322->g_617 = 0; (p_1322->g_617 <= 1); p_1322->g_617 += 1)
                    { /* block id: 572 */
                        if (l_1231[2])
                            break;
                        if (l_1252)
                            break;
                        if ((*l_1174))
                            break;
                    }
                }
                for (p_1322->g_1010 = 0; (p_1322->g_1010 == (-10)); p_1322->g_1010 = safe_sub_func_uint32_t_u_u(p_1322->g_1010, 8))
                { /* block id: 580 */
                    int32_t **l_1270 = &l_1175;
                    int64_t *l_1274[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1274[i] = (void*)0;
                    (1 + 1);
                }
                l_1313 = (!(!(safe_div_func_int16_t_s_s(((!(safe_lshift_func_int8_t_s_s((safe_div_func_int64_t_s_s((l_1291 < (*p_1322->g_433)), ((l_1291 && ((*p_1322->g_746)--)) & (p_3 , (safe_lshift_func_int8_t_s_s(l_1303, ((l_1311 ^= (p_3 & (safe_add_func_int32_t_s_s(l_1179, (l_1310 = (0x4370L > ((safe_rshift_func_int8_t_s_u((l_1298 = (((*l_1173) = (l_1226[1] = 0L)) & l_1308)), l_1309)) >= p_3))))))) != l_1312))))))), (*p_1322->g_44)))) && (-1L)), p_3))));
            }
        }
        for (p_1322->g_1200 = 0; (p_1322->g_1200 < 13); p_1322->g_1200 = safe_add_func_uint8_t_u_u(p_1322->g_1200, 8))
        { /* block id: 614 */
            int32_t *l_1316[2];
            int i;
            for (i = 0; i < 2; i++)
                l_1316[i] = &l_1226[2];
            l_1316[1] = &l_1313;
        }
    }
    return &p_1322->g_48;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_4(int8_t  p_5, int32_t * p_6, int64_t  p_7, int32_t * p_8, int32_t  p_9, struct S2 * p_1322)
{ /* block id: 528 */
    uint32_t l_1165 = 0x27516108L;
    l_1165++;
    return l_1165;
}


/* ------------------------------------------ */
/* 
 * reads : p_1322->g_695 p_1322->g_1163
 * writes: p_1322->g_695 p_1322->g_48
 */
union U1  func_11(int64_t  p_12, int32_t * p_13, uint64_t  p_14, int32_t  p_15, int32_t  p_16, struct S2 * p_1322)
{ /* block id: 519 */
    uint16_t l_1161 = 0x453FL;
    for (p_1322->g_695 = 6; (p_1322->g_695 < 58); ++p_1322->g_695)
    { /* block id: 522 */
        int32_t *l_1162 = &p_1322->g_48;
        (*p_13) = l_1161;
        l_1162 = l_1162;
    }
    return p_1322->g_1163[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1322->g_970 p_1322->g_452 p_1322->g_453 p_1322->g_113 p_1322->g_415 p_1322->g_996 p_1322->g_999 p_1322->g_1001 p_1322->g_871 p_1322->g_48 p_1322->g_875 p_1322->g_390 p_1322->g_577 p_1322->g_746 p_1322->g_45 p_1322->g_390.f1 p_1322->g_695 p_1322->g_821
 * writes: p_1322->g_390.f1 p_1322->g_48 p_1322->g_695 p_1322->g_821 p_1322->g_181 p_1322->g_230 p_1322->g_170 p_1322->g_999 p_1322->g_1010 p_1322->g_876 p_1322->g_113 p_1322->g_453 p_1322->g_684
 */
int32_t * func_17(int16_t  p_18, int8_t * p_19, uint32_t  p_20, int32_t * p_21, uint32_t  p_22, struct S2 * p_1322)
{ /* block id: 259 */
    int64_t *l_639[10][4] = {{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]},{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]},{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]},{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]},{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]},{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]},{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]},{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]},{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]},{&p_1322->g_197[1],(void*)0,(void*)0,&p_1322->g_197[1]}};
    int64_t **l_638 = &l_639[6][1];
    int32_t l_655 = 0x5F5006BBL;
    int32_t l_686[5] = {4L,4L,4L,4L,4L};
    uint32_t **l_693 = &p_1322->g_453;
    uint64_t *l_702 = &p_1322->g_695;
    uint64_t **l_701 = &l_702;
    int32_t l_735 = 0x10D104E8L;
    uint64_t l_747[9][7][2] = {{{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L}},{{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L}},{{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L}},{{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L}},{{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L}},{{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L}},{{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L}},{{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L}},{{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L},{0x085ABD95C9DDCF43L,0x956D09C457482558L}}};
    uint64_t l_757[1][1][9];
    int64_t l_802 = 1L;
    int32_t l_818 = 0x2A44FC6AL;
    uint8_t *l_836 = (void*)0;
    int32_t l_921 = 0L;
    int64_t l_929 = 6L;
    uint16_t l_930 = 0x4136L;
    uint16_t l_942 = 65533UL;
    int16_t **l_945 = (void*)0;
    int64_t l_965 = 6L;
    int8_t l_990 = (-1L);
    uint64_t l_995 = 18446744073709551615UL;
    int32_t *l_997[6][2][4] = {{{&l_655,&l_655,&l_686[1],&p_1322->g_48},{&l_655,&l_655,&l_686[1],&p_1322->g_48}},{{&l_655,&l_655,&l_686[1],&p_1322->g_48},{&l_655,&l_655,&l_686[1],&p_1322->g_48}},{{&l_655,&l_655,&l_686[1],&p_1322->g_48},{&l_655,&l_655,&l_686[1],&p_1322->g_48}},{{&l_655,&l_655,&l_686[1],&p_1322->g_48},{&l_655,&l_655,&l_686[1],&p_1322->g_48}},{{&l_655,&l_655,&l_686[1],&p_1322->g_48},{&l_655,&l_655,&l_686[1],&p_1322->g_48}},{{&l_655,&l_655,&l_686[1],&p_1322->g_48},{&l_655,&l_655,&l_686[1],&p_1322->g_48}}};
    int32_t *l_1151 = &l_735;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 9; k++)
                l_757[i][j][k] = 0xEEEA70084CB1A626L;
        }
    }
lbl_1002:
    for (p_1322->g_390.f1 = 17; (p_1322->g_390.f1 <= 3); p_1322->g_390.f1--)
    { /* block id: 262 */
        int32_t *l_621 = &p_1322->g_48;
        int32_t *l_622[6][4] = {{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48}};
        uint8_t l_623 = 0x7FL;
        int64_t **l_636 = (void*)0;
        int64_t ***l_637 = &l_636;
        int16_t *l_654 = &p_1322->g_230[4][1];
        uint32_t l_868 = 0x51BA0CB5L;
        int8_t l_920 = (-2L);
        uint16_t l_937 = 0x2894L;
        int i, j;
        (*p_21) = 0x1B21BA90L;
        ++l_623;
    }
    for (p_1322->g_695 = 0; (p_1322->g_695 < 29); p_1322->g_695 = safe_add_func_uint32_t_u_u(p_1322->g_695, 5))
    { /* block id: 407 */
        int64_t l_956[3][6] = {{0x09F96982D310CC50L,0x50601B86DB2F0DFEL,8L,(-2L),0x50601B86DB2F0DFEL,(-2L)},{0x09F96982D310CC50L,0x50601B86DB2F0DFEL,8L,(-2L),0x50601B86DB2F0DFEL,(-2L)},{0x09F96982D310CC50L,0x50601B86DB2F0DFEL,8L,(-2L),0x50601B86DB2F0DFEL,(-2L)}};
        int32_t l_957 = (-6L);
        int32_t l_958 = 0L;
        int32_t l_959 = 0x3A92A96EL;
        int8_t l_960 = 0x58L;
        int32_t l_961 = 0x6539FD33L;
        int32_t l_962 = (-9L);
        int32_t l_963 = 0x4C6131D3L;
        int32_t l_964[8] = {0x5E892797L,9L,0x5E892797L,0x5E892797L,9L,0x5E892797L,0x5E892797L,9L};
        int32_t l_1019 = 0x28515DC2L;
        uint64_t *l_1020 = &p_1322->g_695;
        union U1 **l_1025[3][5] = {{&p_1322->g_294,(void*)0,(void*)0,(void*)0,&p_1322->g_294},{&p_1322->g_294,(void*)0,(void*)0,(void*)0,&p_1322->g_294},{&p_1322->g_294,(void*)0,(void*)0,(void*)0,&p_1322->g_294}};
        uint16_t l_1059 = 1UL;
        int32_t *l_1146 = &l_962;
        int32_t *l_1148 = &l_655;
        int32_t *l_1153[1][1][10] = {{{&l_962,&l_962,&l_962,&l_962,&l_962,&l_962,&l_962,&l_962,&l_962,&l_962}}};
        int32_t *l_1155 = &l_655;
        int i, j, k;
        for (p_1322->g_821 = (-16); (p_1322->g_821 < 58); p_1322->g_821++)
        { /* block id: 410 */
            int32_t *l_952 = &p_1322->g_48;
            int32_t *l_953 = &l_655;
            int32_t *l_954[3];
            int32_t l_955 = 0x32B7A3B7L;
            int8_t l_966 = 1L;
            uint32_t l_967 = 0x6F6B30B6L;
            union U1 *l_977 = &p_1322->g_858;
            int16_t *l_991 = &p_1322->g_230[2][1];
            int16_t *l_994[10];
            uint16_t l_1022[7] = {0xC204L,0x9B06L,0xC204L,0xC204L,0x9B06L,0xC204L,0xC204L};
            int64_t l_1035 = 1L;
            int i;
            for (i = 0; i < 3; i++)
                l_954[i] = &l_686[0];
            for (i = 0; i < 10; i++)
                l_994[i] = &p_1322->g_390.f0;
            l_967--;
            (*p_1322->g_970) = &l_686[3];
            if (((((l_747[1][2][0] | (safe_mul_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(0xB36E6D5F90099C64L, (((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), ((l_977 = l_977) == (void*)0))) ^ (*l_953)) < ((safe_div_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((((l_964[5] |= ((safe_lshift_func_int16_t_s_u((((safe_mul_func_int16_t_s_s(((*l_991) = (safe_add_func_int8_t_s_s((safe_mod_func_int16_t_s_s(p_22, l_990)), p_22))), GROUP_DIVERGE(2, 1))) ^ ((safe_sub_func_uint32_t_u_u(((**p_1322->g_452) == l_757[0][0][3]), (**p_1322->g_452))) <= FAKE_DIVERGE(p_1322->global_1_offset, get_global_id(1), 10))) != l_957), 5)) , p_18)) | l_956[1][1]) ^ 0x0BA3DA87L) & (*p_19)), l_995)), p_20)) != (*l_953))))), GROUP_DIVERGE(2, 1)))) , 0x5AA554DBL) != p_1322->g_996) == 0x2DL))
            { /* block id: 416 */
                for (l_655 = 1; (l_655 >= 0); l_655 -= 1)
                { /* block id: 419 */
                    int32_t **l_998 = &l_997[3][1][0];
                    (*l_998) = l_997[1][0][1];
                    for (p_1322->g_170 = 0; (p_1322->g_170 <= 0); p_1322->g_170 += 1)
                    { /* block id: 423 */
                        l_954[0] = (*l_998);
                    }
                }
                (*p_1322->g_1001) = p_1322->g_999[4][0][5];
                if (p_1322->g_695)
                    goto lbl_1002;
            }
            else
            { /* block id: 429 */
                int64_t *l_1009 = &p_1322->g_1010;
                int32_t l_1021[9] = {0x7B1BB549L,0x7B1BB549L,0x7B1BB549L,0x7B1BB549L,0x7B1BB549L,0x7B1BB549L,0x7B1BB549L,0x7B1BB549L,0x7B1BB549L};
                int i;
                (*l_953) |= (*p_1322->g_871);
                (*l_953) &= ((safe_rshift_func_uint8_t_u_u((p_20 & ((safe_div_func_uint16_t_u_u(p_22, (p_18 = l_961))) >= (safe_add_func_int32_t_s_s(((((*l_1009) = 1L) , (safe_div_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((((((((*p_1322->g_875) = (*l_701)) == ((safe_add_func_uint8_t_u_u(((p_1322->g_390 , (*p_19)) | 0x17L), ((safe_sub_func_int32_t_s_s((*p_21), p_20)) != l_1019))) , l_1020)) | p_22) && 1L) <= 0x9D9DL) || l_1021[5]), l_1021[4])), l_1022[1]))) > p_20), 0x05B9CF56L)))), p_1322->g_577)) > 4294967295UL);
                (*l_953) ^= ((*l_952) = (((**l_693) = ((safe_div_func_int64_t_s_s(((void*)0 != l_1025[1][1]), 4L)) , ((*p_1322->g_452) == &p_22))) > (p_22 < (safe_mul_func_uint16_t_u_u(p_22, (0x55B0D9C9L || l_964[5]))))));
                l_964[5] |= ((l_1035 = (safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s((p_22 ^ (((*p_1322->g_452) = (*l_693)) != ((((((safe_div_func_int16_t_s_s(((p_18 , 0x46378702L) <= ((*p_1322->g_746) = ((*p_19) , (p_20 || l_1021[0])))), (safe_unary_minus_func_int8_t_s(((*p_21) , (*p_19)))))) | 0x2DCE277FE1E41DB9L) & p_20) & 0xB2L) , (*l_953)) , (void*)0))), 0xDDL)), 3))) , 4L);
            }
        }
        for (l_921 = 0; (l_921 <= 3); l_921 += 1)
        { /* block id: 446 */
            int32_t l_1058 = 0L;
            uint8_t *l_1060 = &p_1322->g_159[2][9][3];
            uint64_t **l_1144[2];
            int32_t *l_1150[8][6] = {{&l_686[2],(void*)0,&l_961,&l_686[1],(void*)0,&l_686[1]},{&l_686[2],(void*)0,&l_961,&l_686[1],(void*)0,&l_686[1]},{&l_686[2],(void*)0,&l_961,&l_686[1],(void*)0,&l_686[1]},{&l_686[2],(void*)0,&l_961,&l_686[1],(void*)0,&l_686[1]},{&l_686[2],(void*)0,&l_961,&l_686[1],(void*)0,&l_686[1]},{&l_686[2],(void*)0,&l_961,&l_686[1],(void*)0,&l_686[1]},{&l_686[2],(void*)0,&l_961,&l_686[1],(void*)0,&l_686[1]},{&l_686[2],(void*)0,&l_961,&l_686[1],(void*)0,&l_686[1]}};
            int32_t *l_1152 = &l_686[3];
            int i, j;
            for (i = 0; i < 2; i++)
                l_1144[i] = (void*)0;
            if (p_1322->g_45[(l_921 + 2)])
                break;
        }
    }
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_1322->g_48 p_1322->g_99 p_1322->g_294 p_1322->g_295 p_1322->g_577 p_1322->g_230 p_1322->g_172 p_1322->g_617 p_1322->g_453 p_1322->g_113
 * writes: p_1322->g_197 p_1322->g_230 p_1322->g_598 p_1322->g_617
 */
uint32_t  func_25(int64_t  p_26, int32_t  p_27, uint8_t  p_28, int8_t * p_29, struct S2 * p_1322)
{ /* block id: 247 */
    union U1 **l_584[7] = {&p_1322->g_294,&p_1322->g_294,&p_1322->g_294,&p_1322->g_294,&p_1322->g_294,&p_1322->g_294,&p_1322->g_294};
    int32_t l_585 = 6L;
    int64_t *l_588 = &p_1322->g_197[1];
    int32_t *l_589 = &l_585;
    int32_t **l_590 = (void*)0;
    int32_t **l_591 = &p_1322->g_181[0][0][1];
    int32_t *l_592 = &p_1322->g_48;
    int16_t *l_593 = &p_1322->g_230[0][1];
    int32_t *l_594[2];
    uint16_t l_595[9] = {0x4730L,0x4730L,0x4730L,0x4730L,0x4730L,0x4730L,0x4730L,0x4730L,0x4730L};
    uint16_t *l_597 = &p_1322->g_70;
    uint16_t **l_596 = &l_597;
    int32_t *l_616 = &p_1322->g_617;
    int i;
    for (i = 0; i < 2; i++)
        l_594[i] = (void*)0;
    (*l_589) = (safe_rshift_func_int16_t_s_u(((*l_593) = (safe_div_func_int32_t_s_s((((((void*)0 == l_584[6]) < l_585) >= p_27) || l_585), ((safe_rshift_func_int8_t_s_s(((((*l_588) = 0x2F95376C99CDD215L) < (l_589 == (l_592 = &l_585))) , (1UL <= p_26)), (*l_589))) | p_1322->g_48)))), 14));
    l_595[7] &= (((void*)0 != &p_1322->g_432) ^ ((*l_592) = (*p_1322->g_99)));
    (*l_592) = (p_28 , (((l_596 == (p_1322->g_598 = &l_597)) , p_26) , (safe_mul_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u(((((((safe_mod_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((((*l_616) ^= ((safe_add_func_uint64_t_u_u((&p_1322->g_170 == ((*l_592) , (void*)0)), (safe_rshift_func_uint16_t_u_s(((safe_lshift_func_uint16_t_u_s(((((safe_div_func_int16_t_s_s(((*l_593) ^= (0L >= ((*p_1322->g_294) , p_1322->g_577))), p_1322->g_172[0])) , p_28) | 0L) , p_27), 6)) || 1UL), p_26)))) && (*l_589))) , 65535UL), (-1L))), (*l_592))) & p_28) | p_27) , &l_588) != (void*)0) , 65535UL), 0xEA67L)) | p_27), (*l_589)))));
    return (*p_1322->g_453);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_30(uint32_t  p_31, uint32_t  p_32, int32_t * p_33, int32_t  p_34, int32_t * p_35, struct S2 * p_1322)
{ /* block id: 245 */
    int16_t l_578 = 0x6DFAL;
    return l_578;
}


/* ------------------------------------------ */
/* 
 * reads : p_1322->g_48
 * writes:
 */
uint32_t  func_36(int32_t * p_37, struct S2 * p_1322)
{ /* block id: 242 */
    int16_t l_568[10] = {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)};
    int32_t *l_569 = &p_1322->g_48;
    int32_t *l_570 = &p_1322->g_48;
    int32_t *l_571 = &p_1322->g_48;
    int32_t *l_572 = &p_1322->g_48;
    int32_t *l_573[10][6] = {{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48},{&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48}};
    uint32_t l_574 = 0xDE00E938L;
    int i, j;
    l_574--;
    return (*l_569);
}


/* ------------------------------------------ */
/* 
 * reads : p_1322->g_44 p_1322->g_45 p_1322->g_48 p_1322->g_10 p_1322->g_67 p_1322->g_99 p_1322->g_70 p_1322->g_113 p_1322->g_180 p_1322->g_159 p_1322->g_170 p_1322->g_177 p_1322->g_230 p_1322->g_172 p_1322->g_121 p_1322->g_197 p_1322->g_390 p_1322->g_415 p_1322->g_431 p_1322->g_433 p_1322->g_453 p_1322->g_390.f1 p_1322->g_528 p_1322->g_390.f0 p_1322->g_567
 * writes: p_1322->g_70 p_1322->g_45 p_1322->g_48 p_1322->g_113 p_1322->g_121 p_1322->g_181 p_1322->g_44 p_1322->g_197 p_1322->g_390.f1 p_1322->g_172 p_1322->g_159 p_1322->g_170 p_1322->g_390.f0
 */
int32_t * func_38(int8_t * p_39, int32_t  p_40, int32_t * p_41, int64_t  p_42, uint16_t  p_43, struct S2 * p_1322)
{ /* block id: 5 */
    uint64_t l_71 = 0x8AF32651EF224B34L;
    int32_t l_123 = 0x3220CCB0L;
    uint32_t l_125 = 4294967294UL;
    int32_t l_126 = 0x76AAD2A6L;
    int8_t *l_127 = (void*)0;
    int16_t l_198 = 0x32D5L;
    uint8_t l_200 = 250UL;
    int32_t l_231 = 0x541D072FL;
    uint16_t l_232 = 0UL;
    int32_t l_269 = 0x43525ACAL;
    uint32_t l_273[4][5];
    int32_t *l_289 = &l_126;
    int16_t l_351 = 2L;
    uint16_t *l_397 = &p_1322->g_172[1];
    uint16_t **l_396 = &l_397;
    int32_t l_403 = (-1L);
    int32_t l_407 = 0x3030B60BL;
    int32_t l_409 = (-1L);
    int32_t l_411 = (-1L);
    uint32_t ***l_479 = &p_1322->g_452;
    int64_t *l_553 = (void*)0;
    uint8_t l_564 = 0x58L;
    int i, j;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
            l_273[i][j] = 0x5BEF18E9L;
    }
    for (p_43 = 10; (p_43 != 20); p_43++)
    { /* block id: 8 */
        int32_t *l_57 = &p_1322->g_48;
        int32_t **l_56 = &l_57;
        int32_t **l_58 = (void*)0;
        uint16_t *l_68 = (void*)0;
        uint16_t *l_69 = &p_1322->g_70;
        uint32_t *l_112 = &p_1322->g_113;
        uint16_t *l_120 = &p_1322->g_121[2];
        uint64_t *l_122 = &l_71;
        uint32_t *l_124[9] = {&p_1322->g_10,&p_1322->g_10,&p_1322->g_10,&p_1322->g_10,&p_1322->g_10,&p_1322->g_10,&p_1322->g_10,&p_1322->g_10,&p_1322->g_10};
        int i;
        atomic_xor(&p_1322->g_atomic_reduction[get_linear_group_id()], func_51((((safe_rshift_func_uint8_t_u_u(((((*l_56) = &p_1322->g_48) == (p_41 = &p_1322->g_48)) != ((safe_div_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s((safe_add_func_uint8_t_u_u(0x37L, (*p_1322->g_44))), p_1322->g_48)), ((((*l_69) = ((65535UL >= ((safe_add_func_int32_t_s_s(p_1322->g_10, (p_40 < (!p_1322->g_67)))) < 0x916744FAL)) | p_1322->g_48)) <= p_1322->g_45[6]) | p_1322->g_45[4]))) < 0L)), p_40)) < 0x98319B20E9505C00L) < p_1322->g_48), l_71, p_1322));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1322->v_collective += p_1322->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        l_126 &= (safe_mul_func_uint8_t_u_u((p_1322->g_70 ^ (((((safe_add_func_int8_t_s_s(0x09L, 0x3CL)) , ((safe_sub_func_int8_t_s_s(((&p_1322->g_45[9] == p_39) >= (safe_sub_func_int32_t_s_s((safe_div_func_int64_t_s_s(((((**l_56) = ((safe_sub_func_int32_t_s_s((p_41 == p_41), (--(*l_112)))) > ((safe_add_func_uint64_t_u_u(((*l_122) = ((safe_sub_func_int64_t_s_s((((*l_120) = (((*p_41) & (!0x8EBBB00CL)) || 0x68ECBDE39F7431CFL)) & p_1322->g_45[8]), (**l_56))) | 1L)), l_123)) , 0x6CCAC473L))) < 4294967295UL) == l_125), p_40)), 1L))), FAKE_DIVERGE(p_1322->group_1_offset, get_group_id(1), 10))) || 0x196EF039836713F9L)) && p_1322->g_67) && (*p_41)) <= l_123)), 255UL));
        (**l_56) = (0L != FAKE_DIVERGE(p_1322->local_1_offset, get_local_id(1), 10));
    }
    if ((*p_41))
    { /* block id: 30 */
        int8_t *l_131 = &p_1322->g_45[9];
        int32_t l_168[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
        uint32_t l_206[8][1] = {{0xE78F1FB9L},{0xE78F1FB9L},{0xE78F1FB9L},{0xE78F1FB9L},{0xE78F1FB9L},{0xE78F1FB9L},{0xE78F1FB9L},{0xE78F1FB9L}};
        int32_t l_215[9][6] = {{4L,1L,4L,4L,1L,4L},{4L,1L,4L,4L,1L,4L},{4L,1L,4L,4L,1L,4L},{4L,1L,4L,4L,1L,4L},{4L,1L,4L,4L,1L,4L},{4L,1L,4L,4L,1L,4L},{4L,1L,4L,4L,1L,4L},{4L,1L,4L,4L,1L,4L},{4L,1L,4L,4L,1L,4L}};
        int32_t **l_316[6] = {(void*)0,&l_289,(void*)0,(void*)0,&l_289,(void*)0};
        uint64_t **l_332 = (void*)0;
        union U1 **l_344 = &p_1322->g_294;
        uint64_t ***l_374 = &l_332;
        uint8_t l_412 = 248UL;
        int i, j;
        for (p_40 = 2; (p_40 >= 0); p_40 -= 1)
        { /* block id: 33 */
            int32_t l_171[6][9] = {{0x64149FEDL,0L,0L,0x64149FEDL,0x180C45E7L,0x463998E5L,0x463998E5L,0x180C45E7L,0x64149FEDL},{0x64149FEDL,0L,0L,0x64149FEDL,0x180C45E7L,0x463998E5L,0x463998E5L,0x180C45E7L,0x64149FEDL},{0x64149FEDL,0L,0L,0x64149FEDL,0x180C45E7L,0x463998E5L,0x463998E5L,0x180C45E7L,0x64149FEDL},{0x64149FEDL,0L,0L,0x64149FEDL,0x180C45E7L,0x463998E5L,0x463998E5L,0x180C45E7L,0x64149FEDL},{0x64149FEDL,0L,0L,0x64149FEDL,0x180C45E7L,0x463998E5L,0x463998E5L,0x180C45E7L,0x64149FEDL},{0x64149FEDL,0L,0L,0x64149FEDL,0x180C45E7L,0x463998E5L,0x463998E5L,0x180C45E7L,0x64149FEDL}};
            int32_t l_174 = 0x27B8070DL;
            uint16_t *l_190 = &p_1322->g_121[2];
            uint64_t l_211 = 2UL;
            uint16_t l_225 = 1UL;
            union U1 *l_290 = (void*)0;
            union U1 **l_291 = (void*)0;
            union U1 **l_292 = (void*)0;
            union U1 **l_293[4];
            int i, j;
            for (i = 0; i < 4; i++)
                l_293[i] = &l_290;
            (1 + 1);
        }
        (*p_1322->g_180) = &l_269;
        for (l_123 = 0; (l_123 <= 2); l_123 += 1)
        { /* block id: 105 */
            uint32_t *l_327 = &l_206[7][0];
            uint8_t *l_330 = &l_200;
            int32_t l_331 = 0x6035C83AL;
            uint64_t ***l_333 = &l_332;
            uint32_t l_375 = 0x7DAFB3F4L;
            int32_t l_402 = (-1L);
            int32_t l_406 = 0x59A52E3EL;
            int32_t l_410 = 0x14C2BE8CL;
            uint32_t *l_450 = &l_375;
            uint32_t **l_449 = &l_450;
            (*l_333) = ((safe_mod_func_int32_t_s_s((p_1322->g_159[0][0][1] & (((*l_289) &= (*p_41)) | ((safe_lshift_func_int8_t_s_u((((safe_mul_func_int16_t_s_s((((*p_39) < ((0x6A55D67176CBD41AL < (safe_lshift_func_uint8_t_u_u(255UL, 2))) & (safe_mul_func_uint16_t_u_u(p_43, ((l_316[2] != ((((++(*l_327)) , p_40) <= ((*l_330) = 0UL)) , &p_1322->g_181[2][1][2])) < p_40))))) ^ (*p_39)), p_42)) | 1L) < GROUP_DIVERGE(1, 1)), 3)) , l_331))), 1L)) , l_332);
            (*l_289) = ((safe_lshift_func_uint8_t_u_u(p_1322->g_48, 0)) , (p_1322->g_45[5] | (0x5B21E731DA85AEE1L | (safe_mul_func_int16_t_s_s((p_1322->g_170 ^ ((((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((safe_mod_func_uint32_t_u_u((((*p_1322->g_44) <= (((l_344 != (void*)0) & ((((((+((safe_sub_func_uint64_t_u_u(((safe_mod_func_uint16_t_u_u(0x4029L, (safe_mul_func_uint16_t_u_u(((l_327 == (void*)0) & p_1322->g_177[6][0][6]), p_43)))) | 4L), (-1L))) <= l_351)) ^ p_40) || l_331) & GROUP_DIVERGE(2, 1)) >= (*l_289)) & p_1322->g_159[3][4][3])) || p_1322->g_230[2][1])) , 0x06F9413BL), 0x8101201CL)), 2)), 1UL)) , (*l_289)) , p_1322->g_113) == p_1322->g_172[2])), p_1322->g_159[3][4][3])))));
            for (l_231 = 2; (l_231 >= 0); l_231 -= 1)
            { /* block id: 113 */
                uint32_t *l_358 = &p_1322->g_113;
                int8_t **l_369 = &p_1322->g_44;
                uint8_t **l_372 = &l_330;
                int32_t l_373 = (-1L);
                int32_t l_400[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_400[i] = 0x0479E664L;
                l_375 |= ((*p_41) = (GROUP_DIVERGE(0, 1) == (((((safe_add_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((safe_sub_func_int8_t_s_s(((((~((--(*l_358)) & ((&p_1322->g_45[9] != l_131) != (((safe_mul_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((((safe_add_func_int64_t_s_s((safe_rshift_func_int16_t_s_s(((p_1322->g_121[2] > p_1322->g_121[1]) , (-3L)), 1)), 0x752C8BBB3147C789L)) >= ((((*l_369) = &p_1322->g_45[9]) == l_131) == (safe_mod_func_uint64_t_u_u((((*l_372) = &p_1322->g_159[3][4][3]) != &p_1322->g_159[3][4][3]), p_40)))) != l_373), (*p_39))), p_1322->g_45[3])) && (*p_1322->g_44)) && (*p_1322->g_44))))) && 4294967295UL) != p_1322->g_197[0]) , (*p_1322->g_44)), 1L)), p_1322->g_177[3][1][6])), p_43)) , l_330) == &p_1322->g_159[3][4][3]) , l_333) == l_374)));
                for (l_269 = 3; (l_269 >= 0); l_269 -= 1)
                { /* block id: 121 */
                    uint8_t *l_377[6];
                    uint8_t **l_376 = &l_377[1];
                    uint64_t *l_392 = &l_71;
                    uint64_t **l_391 = &l_392;
                    int64_t *l_398 = &p_1322->g_197[1];
                    int32_t l_404[10][9][2] = {{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}},{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}},{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}},{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}},{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}},{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}},{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}},{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}},{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}},{{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)},{0x52776785L,(-9L)}}};
                    int8_t l_408 = 0x3BL;
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_377[i] = &l_200;
                    p_1322->g_181[l_123][(l_123 + 5)][(l_123 + 5)] = (void*)0;
                    if (((p_1322->g_177[(l_231 + 4)][l_123][(l_123 + 3)] > (((*l_372) = p_39) == ((*l_376) = p_39))) || (safe_mul_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_u((((*l_398) = ((safe_div_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((((safe_sub_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_u(p_1322->g_177[(l_123 + 1)][l_231][(l_269 + 2)], (~(((+((((*l_333) = (*l_374)) != (p_1322->g_390 , l_391)) <= (p_1322->g_177[(l_123 + 4)][l_123][l_123] , (safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1322->group_0_offset, get_group_id(0), 10), (safe_unary_minus_func_uint8_t_u(247UL))))))) , l_396) == &l_397)))) ^ p_1322->g_177[(l_231 + 5)][l_123][(l_269 + 1)]), p_1322->g_170)) || (*p_1322->g_44)) , 0x5912C949257564A7L), l_373)), 7L)) , (*l_289))) ^ 0L), p_40)) , p_1322->g_177[3][0][3]) > p_42), p_43))))
                    { /* block id: 127 */
                        int8_t l_399 = 0L;
                        int32_t l_401[3][3][7] = {{{(-6L),(-4L),(-8L),(-1L),0x06AE2C27L,(-3L),0x5E3A5FBBL},{(-6L),(-4L),(-8L),(-1L),0x06AE2C27L,(-3L),0x5E3A5FBBL},{(-6L),(-4L),(-8L),(-1L),0x06AE2C27L,(-3L),0x5E3A5FBBL}},{{(-6L),(-4L),(-8L),(-1L),0x06AE2C27L,(-3L),0x5E3A5FBBL},{(-6L),(-4L),(-8L),(-1L),0x06AE2C27L,(-3L),0x5E3A5FBBL},{(-6L),(-4L),(-8L),(-1L),0x06AE2C27L,(-3L),0x5E3A5FBBL}},{{(-6L),(-4L),(-8L),(-1L),0x06AE2C27L,(-3L),0x5E3A5FBBL},{(-6L),(-4L),(-8L),(-1L),0x06AE2C27L,(-3L),0x5E3A5FBBL},{(-6L),(-4L),(-8L),(-1L),0x06AE2C27L,(-3L),0x5E3A5FBBL}}};
                        int8_t l_405 = (-9L);
                        int i, j, k;
                        (*p_41) = 0x5BE9D491L;
                        l_412++;
                        (*l_289) = (p_1322->g_121[2] <= ((**l_391) = (p_41 != &p_1322->g_10)));
                    }
                    else
                    { /* block id: 132 */
                        (*l_289) = ((void*)0 == p_39);
                        if (p_1322->g_415)
                            break;
                    }
                    for (l_373 = 0; (l_373 <= 3); l_373 += 1)
                    { /* block id: 138 */
                        return p_41;
                    }
                }
                for (p_1322->g_48 = 0; (p_1322->g_48 <= 2); p_1322->g_48 += 1)
                { /* block id: 144 */
                    int8_t l_416 = 0x47L;
                    int32_t l_462 = 0x1212F89EL;
                    int i, j, k;
                    for (p_1322->g_113 = 0; (p_1322->g_113 <= 2); p_1322->g_113 += 1)
                    { /* block id: 147 */
                        uint8_t l_434 = 1UL;
                        int i, j, k;
                        l_416 ^= p_1322->g_177[(p_1322->g_48 + 3)][l_231][(p_1322->g_48 + 3)];
                        l_373 &= (safe_div_func_uint16_t_u_u(((((p_43 , (safe_mul_func_int8_t_s_s(l_406, (+p_1322->g_172[1])))) < (safe_mul_func_uint16_t_u_u(((void*)0 != p_39), (safe_mul_func_int8_t_s_s((l_400[1] == ((*l_289) = (l_331 = (((safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(246UL, 0x11L)), ((((void*)0 != p_1322->g_431[1][1][2]) < p_1322->g_170) , FAKE_DIVERGE(p_1322->local_2_offset, get_local_id(2), 10)))), 3)) , &l_410) != (void*)0)))), l_416))))) > l_416) && 0x3B98BBFAL), 1L));
                        --l_434;
                        if (l_400[4])
                            break;
                    }
                }
            }
        }
    }
    else
    { /* block id: 171 */
        uint32_t ****l_476 = (void*)0;
        uint32_t ***l_478 = &p_1322->g_452;
        uint32_t ****l_477[8] = {&l_478,&l_478,&l_478,&l_478,&l_478,&l_478,&l_478,&l_478};
        uint64_t *l_482 = &l_71;
        int32_t l_503 = 0x14DBD746L;
        int64_t *l_504[6] = {&p_1322->g_197[0],&p_1322->g_197[0],&p_1322->g_197[0],&p_1322->g_197[0],&p_1322->g_197[0],&p_1322->g_197[0]};
        uint8_t *l_505 = &p_1322->g_159[3][4][3];
        uint32_t l_506 = 4294967295UL;
        int8_t l_516[5][6][5] = {{{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL}},{{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL}},{{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL}},{{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL}},{{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL},{0x1EL,0x20L,0x20L,0x1EL,0x1EL}}};
        int32_t *l_537 = (void*)0;
        int32_t **l_538 = &l_537;
        int i, j, k;
        if (((safe_sub_func_int8_t_s_s((safe_mul_func_int16_t_s_s((((((l_479 = &p_1322->g_452) == &p_1322->g_452) , (safe_div_func_uint64_t_u_u((*p_1322->g_433), ((*l_482)--)))) == ((*p_41) & (((((*p_1322->g_453) = (((safe_add_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u(0UL, (((((253UL >= ((*l_505) = (safe_mod_func_uint16_t_u_u((((*l_397) |= (safe_rshift_func_uint16_t_u_u((p_1322->g_121[2] >= (p_1322->g_390.f1 = (safe_sub_func_int64_t_s_s((((safe_rshift_func_uint16_t_u_u((0x10498EC8423314E7L <= (safe_sub_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((*l_289), p_43)), (*p_39)))), p_1322->g_70)) != l_503) > (*p_41)), p_42)))), 11))) == (*l_289)), p_42)))) <= l_503) , l_503) ^ 6UL) , (*l_289)))) , p_42), p_1322->g_197[1])), 0x2564L)) <= l_503) <= l_506)) <= 0xD3780C8DL) , 6UL) | (*p_41)))) < FAKE_DIVERGE(p_1322->local_2_offset, get_local_id(2), 10)), p_1322->g_45[0])), 1UL)) , (-6L)))
        { /* block id: 178 */
            int32_t l_515 = 3L;
            int16_t l_519 = 0x7D66L;
            int16_t *l_520 = &l_198;
            uint32_t l_533[1][1];
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_533[i][j] = 0x0553E51CL;
            }
            (*l_289) = (((safe_rshift_func_uint16_t_u_u(2UL, (safe_add_func_uint32_t_u_u((0x0B33EBCA1237E278L == ((*l_482) = (safe_add_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), (safe_mul_func_int8_t_s_s(((*p_39) = (*l_289)), ((l_515 = ((*p_41) ^= (*l_289))) > ((*p_1322->g_453) == l_516[2][5][1])))))))), (((*l_520) |= ((((safe_mul_func_int16_t_s_s(((l_519 < p_42) | ((p_1322->g_390 , 0x01341BF4L) , (*p_1322->g_433))), p_1322->g_390.f1)) , p_40) <= p_1322->g_10) | FAKE_DIVERGE(p_1322->group_1_offset, get_group_id(1), 10))) <= l_519))))) == p_1322->g_10) , (*l_289));
            (*p_41) = ((*l_289) = ((0x8AAB49186F911891L ^ (((p_1322->g_10 & p_43) && ((safe_add_func_uint32_t_u_u(l_515, l_515)) , (safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(0x44FBL, (p_40 && (l_503 && (p_42 | p_40))))), GROUP_DIVERGE(1, 1))))) >= p_40)) == p_42));
            for (p_1322->g_170 = 1; (p_1322->g_170 <= 4); p_1322->g_170 += 1)
            { /* block id: 189 */
                int64_t l_529 = (-1L);
                int32_t l_531 = 0x495A0AACL;
                int32_t l_532[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
                int i;
                (*p_1322->g_528) = p_41;
                for (p_1322->g_113 = 0; (p_1322->g_113 <= 4); p_1322->g_113 += 1)
                { /* block id: 193 */
                    int32_t *l_530[8][5][6] = {{{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409}},{{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409}},{{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409}},{{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409}},{{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409}},{{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409}},{{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409}},{{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409},{&l_409,&l_269,&l_407,(void*)0,&l_126,&l_409}}};
                    int i, j, k;
                    l_533[0][0]++;
                    for (p_1322->g_70 = 0; (p_1322->g_70 <= 4); p_1322->g_70 += 1)
                    { /* block id: 197 */
                        l_515 = (~0x7FA208D9L);
                    }
                }
            }
        }
        else
        { /* block id: 202 */
            int32_t **l_536 = &p_1322->g_181[2][1][2];
            (*l_536) = (void*)0;
            return l_537;
        }
        (*l_538) = (void*)0;
        (*p_41) = (safe_mod_func_uint64_t_u_u(18446744073709551615UL, 0xB9DC796784784100L));
        (*p_41) = (*p_41);
    }
    for (l_231 = 11; (l_231 == (-3)); l_231 = safe_sub_func_uint8_t_u_u(l_231, 2))
    { /* block id: 212 */
        int32_t *l_543 = &p_1322->g_48;
        int32_t **l_544 = &l_543;
        int32_t *l_560 = &l_407;
        int32_t *l_561 = &l_403;
        int32_t *l_562 = &l_126;
        int32_t *l_563[7][6] = {{&l_126,&l_126,&l_126,&l_126,&l_126,&l_126},{&l_126,&l_126,&l_126,&l_126,&l_126,&l_126},{&l_126,&l_126,&l_126,&l_126,&l_126,&l_126},{&l_126,&l_126,&l_126,&l_126,&l_126,&l_126},{&l_126,&l_126,&l_126,&l_126,&l_126,&l_126},{&l_126,&l_126,&l_126,&l_126,&l_126,&l_126},{&l_126,&l_126,&l_126,&l_126,&l_126,&l_126}};
        int i, j;
        (*l_544) = l_543;
        (*l_289) = (safe_unary_minus_func_int32_t_s((*p_41)));
        for (l_351 = 0; (l_351 <= 3); l_351 += 1)
        { /* block id: 217 */
            uint8_t l_546 = 255UL;
            (*l_289) = (~l_546);
            if ((*p_41))
                continue;
            for (l_200 = 0; (l_200 <= 3); l_200 += 1)
            { /* block id: 222 */
                uint16_t l_559[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_559[i] = 0x486BL;
                for (p_1322->g_390.f0 = 0; (p_1322->g_390.f0 <= 1); p_1322->g_390.f0 += 1)
                { /* block id: 225 */
                    int i, j, k;
                    if (l_273[l_351][(p_1322->g_390.f0 + 1)])
                    { /* block id: 226 */
                        return p_41;
                    }
                    else
                    { /* block id: 228 */
                        int64_t *l_550 = &p_1322->g_197[1];
                        int64_t **l_549 = &l_550;
                        int64_t *l_552[9] = {&p_1322->g_197[0],&p_1322->g_197[1],&p_1322->g_197[0],&p_1322->g_197[0],&p_1322->g_197[1],&p_1322->g_197[0],&p_1322->g_197[0],&p_1322->g_197[1],&p_1322->g_197[0]};
                        int64_t **l_551[4];
                        uint64_t *l_558 = &l_71;
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_551[i] = &l_552[5];
                        (*l_289) |= ((safe_mod_func_uint64_t_u_u((*p_1322->g_433), (((&p_1322->g_197[2] == (l_553 = ((*l_549) = &p_1322->g_197[0]))) , (safe_mul_func_uint8_t_u_u((p_41 != (((safe_div_func_int64_t_s_s(((-10L) == p_43), ((*l_558) ^= p_40))) || l_559[3]) , p_41)), p_1322->g_159[3][4][3]))) && (*p_1322->g_453)))) != p_40);
                        return p_41;
                    }
                }
            }
        }
        --l_564;
    }
    atomic_or(&p_1322->l_atomic_reduction[0], (p_1322->g_567 , 0x164EF532L));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1322->v_collective += p_1322->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_1322->g_45 p_1322->g_10 p_1322->g_48 p_1322->g_67 p_1322->g_44 p_1322->g_99
 * writes: p_1322->g_45 p_1322->g_48
 */
int32_t  func_51(uint8_t  p_52, uint32_t  p_53, struct S2 * p_1322)
{ /* block id: 12 */
    uint8_t l_82 = 0x93L;
    uint8_t *l_85 = &l_82;
    int32_t *l_95 = (void*)0;
    int32_t **l_94 = &l_95;
    uint32_t l_98 = 4UL;
    for (p_52 = (-6); (p_52 < 24); p_52 = safe_add_func_uint16_t_u_u(p_52, 9))
    { /* block id: 15 */
        return p_53;
    }
    (*p_1322->g_99) = (safe_mod_func_uint8_t_u_u(((4L <= (safe_lshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((safe_div_func_int64_t_s_s(((((((~((((~(((l_82 , (safe_div_func_int16_t_s_s(l_82, p_52))) , (((++(*l_85)) != ((*p_1322->g_44) = (safe_sub_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_u((p_1322->g_45[9] && (p_53 > (((((void*)0 != l_94) , (safe_mod_func_uint64_t_u_u(p_1322->g_45[3], 0x18A20B4D66FC9E27L))) ^ p_1322->g_10) || p_1322->g_48))), 15)) > p_53), p_1322->g_67)))) | GROUP_DIVERGE(1, 1))) < p_53)) >= 0x7094D04141EDA738L) & p_53) , p_53)) == GROUP_DIVERGE(1, 1)) || 1UL) , p_1322->g_45[9]) ^ p_1322->g_10) < (-6L)), (-10L))) || (*p_1322->g_44)), l_98)), 11))) <= p_53), p_52));
    return (*p_1322->g_99);
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_1323;
    struct S2* p_1322 = &c_1323;
    struct S2 c_1324 = {
        4294967291UL, // p_1322->g_10
        {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L}, // p_1322->g_45
        &p_1322->g_45[9], // p_1322->g_44
        0x1C93E328L, // p_1322->g_48
        0xC0F3ADCFEC76E8D2L, // p_1322->g_67
        0x9458L, // p_1322->g_70
        &p_1322->g_48, // p_1322->g_99
        9UL, // p_1322->g_113
        {0x8EADL,0x8EADL,0x8EADL}, // p_1322->g_121
        {{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}},{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}},{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}},{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}},{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}}}, // p_1322->g_159
        4294967290UL, // p_1322->g_170
        {0x5763L,0x5763L,0x5763L,0x5763L}, // p_1322->g_172
        {{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}},{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}},{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}},{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}},{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}},{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}},{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}},{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}},{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}},{{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL},{1UL,0x37E68EC6L,0x94C8FF1DL,0UL,0xA9CB02FEL,3UL,0UL}}}, // p_1322->g_177
        {{{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48}},{{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48}},{{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48}},{{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48},{&p_1322->g_48,(void*)0,(void*)0,&p_1322->g_48,&p_1322->g_48,&p_1322->g_48,(void*)0,&p_1322->g_48}}}, // p_1322->g_181
        &p_1322->g_181[2][1][2], // p_1322->g_180
        {0x17E1D4163EC924B5L,0x17E1D4163EC924B5L,0x17E1D4163EC924B5L}, // p_1322->g_197
        0x2437L, // p_1322->g_202
        {{0x6CCFL,0L},{0x6CCFL,0L},{0x6CCFL,0L},{0x6CCFL,0L},{0x6CCFL,0L},{0x6CCFL,0L},{0x6CCFL,0L},{0x6CCFL,0L}}, // p_1322->g_230
        {{0},{0}}, // p_1322->g_295
        &p_1322->g_295[0], // p_1322->g_294
        {0x3A0CL}, // p_1322->g_390
        0x76L, // p_1322->g_415
        &p_1322->g_67, // p_1322->g_433
        &p_1322->g_433, // p_1322->g_432
        {{{&p_1322->g_432,(void*)0,(void*)0,(void*)0,&p_1322->g_432,&p_1322->g_432,(void*)0,(void*)0,(void*)0},{&p_1322->g_432,(void*)0,(void*)0,(void*)0,&p_1322->g_432,&p_1322->g_432,(void*)0,(void*)0,(void*)0}},{{&p_1322->g_432,(void*)0,(void*)0,(void*)0,&p_1322->g_432,&p_1322->g_432,(void*)0,(void*)0,(void*)0},{&p_1322->g_432,(void*)0,(void*)0,(void*)0,&p_1322->g_432,&p_1322->g_432,(void*)0,(void*)0,(void*)0}}}, // p_1322->g_431
        &p_1322->g_113, // p_1322->g_453
        &p_1322->g_453, // p_1322->g_452
        &p_1322->g_452, // p_1322->g_451
        (void*)0, // p_1322->g_527
        &p_1322->g_181[2][1][2], // p_1322->g_528
        {0}, // p_1322->g_567
        1UL, // p_1322->g_577
        {{&p_1322->g_121[2],(void*)0},{&p_1322->g_121[2],(void*)0},{&p_1322->g_121[2],(void*)0},{&p_1322->g_121[2],(void*)0},{&p_1322->g_121[2],(void*)0},{&p_1322->g_121[2],(void*)0},{&p_1322->g_121[2],(void*)0},{&p_1322->g_121[2],(void*)0},{&p_1322->g_121[2],(void*)0}}, // p_1322->g_599
        &p_1322->g_599[2][1], // p_1322->g_598
        0x060E531DL, // p_1322->g_617
        0xD33FF2A5L, // p_1322->g_684
        0x62E4BD96245EBAA8L, // p_1322->g_695
        (void*)0, // p_1322->g_712
        (void*)0, // p_1322->g_713
        &p_1322->g_181[2][1][2], // p_1322->g_714
        &p_1322->g_684, // p_1322->g_746
        0x31L, // p_1322->g_748
        (void*)0, // p_1322->g_749
        &p_1322->g_181[3][4][6], // p_1322->g_750
        {0x7BCFL}, // p_1322->g_762
        {{{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0}},{{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0}},{{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0}},{{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0}},{{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0}},{{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0}},{{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0},{&p_1322->g_197[0],&p_1322->g_390.f1,(void*)0,&p_1322->g_390.f1,&p_1322->g_390.f1,&p_1322->g_197[1],&p_1322->g_197[1],&p_1322->g_197[1],(void*)0}}}, // p_1322->g_785
        (-5L), // p_1322->g_786
        {{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}}}, // p_1322->g_805
        {0}, // p_1322->g_806
        7UL, // p_1322->g_821
        (void*)0, // p_1322->g_837
        0x7AL, // p_1322->g_842
        {0}, // p_1322->g_858
        &p_1322->g_48, // p_1322->g_871
        &p_1322->g_181[2][1][2], // p_1322->g_872
        &p_1322->g_695, // p_1322->g_876
        &p_1322->g_876, // p_1322->g_875
        0x12BE4868L, // p_1322->g_891
        9UL, // p_1322->g_903
        (void*)0, // p_1322->g_947
        &p_1322->g_947, // p_1322->g_946
        &p_1322->g_181[2][1][2], // p_1322->g_970
        0L, // p_1322->g_996
        {{&p_1322->g_177[9][1][3],&p_1322->g_177[9][1][3]},{&p_1322->g_177[9][1][3],&p_1322->g_177[9][1][3]},{&p_1322->g_177[9][1][3],&p_1322->g_177[9][1][3]},{&p_1322->g_177[9][1][3],&p_1322->g_177[9][1][3]},{&p_1322->g_177[9][1][3],&p_1322->g_177[9][1][3]}}, // p_1322->g_1000
        {{{&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],(void*)0,&p_1322->g_1000[2][0]}},{{&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],(void*)0,&p_1322->g_1000[2][0]}},{{&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],(void*)0,&p_1322->g_1000[2][0]}},{{&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],(void*)0,&p_1322->g_1000[2][0]}},{{&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],&p_1322->g_1000[2][0],(void*)0,&p_1322->g_1000[2][0]}}}, // p_1322->g_999
        &p_1322->g_999[4][0][5], // p_1322->g_1001
        0L, // p_1322->g_1010
        {0}, // p_1322->g_1061
        0x34CBL, // p_1322->g_1083
        (-10L), // p_1322->g_1084
        &p_1322->g_875, // p_1322->g_1096
        5UL, // p_1322->g_1115
        &p_1322->g_181[0][7][2], // p_1322->g_1157
        {{0},{0},{0},{0},{0},{0},{0},{0}}, // p_1322->g_1163
        6UL, // p_1322->g_1200
        8L, // p_1322->g_1251
        &p_1322->g_181[2][1][2], // p_1322->g_1254
        {0}, // p_1322->g_1272
        {{0x26F83287131721DCL,0x26F83287131721DCL,0x26F83287131721DCL},{0x26F83287131721DCL,0x26F83287131721DCL,0x26F83287131721DCL},{0x26F83287131721DCL,0x26F83287131721DCL,0x26F83287131721DCL},{0x26F83287131721DCL,0x26F83287131721DCL,0x26F83287131721DCL},{0x26F83287131721DCL,0x26F83287131721DCL,0x26F83287131721DCL}}, // p_1322->g_1276
        {0x3264L}, // p_1322->g_1287
        (void*)0, // p_1322->g_1320
        &p_1322->g_871, // p_1322->g_1321
        0, // p_1322->v_collective
        sequence_input[get_global_id(0)], // p_1322->global_0_offset
        sequence_input[get_global_id(1)], // p_1322->global_1_offset
        sequence_input[get_global_id(2)], // p_1322->global_2_offset
        sequence_input[get_local_id(0)], // p_1322->local_0_offset
        sequence_input[get_local_id(1)], // p_1322->local_1_offset
        sequence_input[get_local_id(2)], // p_1322->local_2_offset
        sequence_input[get_group_id(0)], // p_1322->group_0_offset
        sequence_input[get_group_id(1)], // p_1322->group_1_offset
        sequence_input[get_group_id(2)], // p_1322->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1323 = c_1324;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1322);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1322->g_10, "p_1322->g_10", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1322->g_45[i], "p_1322->g_45[i]", print_hash_value);

    }
    transparent_crc(p_1322->g_48, "p_1322->g_48", print_hash_value);
    transparent_crc(p_1322->g_67, "p_1322->g_67", print_hash_value);
    transparent_crc(p_1322->g_70, "p_1322->g_70", print_hash_value);
    transparent_crc(p_1322->g_113, "p_1322->g_113", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1322->g_121[i], "p_1322->g_121[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1322->g_159[i][j][k], "p_1322->g_159[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1322->g_170, "p_1322->g_170", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1322->g_172[i], "p_1322->g_172[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1322->g_177[i][j][k], "p_1322->g_177[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1322->g_197[i], "p_1322->g_197[i]", print_hash_value);

    }
    transparent_crc(p_1322->g_202, "p_1322->g_202", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1322->g_230[i][j], "p_1322->g_230[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1322->g_415, "p_1322->g_415", print_hash_value);
    transparent_crc(p_1322->g_577, "p_1322->g_577", print_hash_value);
    transparent_crc(p_1322->g_617, "p_1322->g_617", print_hash_value);
    transparent_crc(p_1322->g_684, "p_1322->g_684", print_hash_value);
    transparent_crc(p_1322->g_695, "p_1322->g_695", print_hash_value);
    transparent_crc(p_1322->g_748, "p_1322->g_748", print_hash_value);
    transparent_crc(p_1322->g_762.f0, "p_1322->g_762.f0", print_hash_value);
    transparent_crc(p_1322->g_786, "p_1322->g_786", print_hash_value);
    transparent_crc(p_1322->g_821, "p_1322->g_821", print_hash_value);
    transparent_crc(p_1322->g_842, "p_1322->g_842", print_hash_value);
    transparent_crc(p_1322->g_891, "p_1322->g_891", print_hash_value);
    transparent_crc(p_1322->g_903, "p_1322->g_903", print_hash_value);
    transparent_crc(p_1322->g_996, "p_1322->g_996", print_hash_value);
    transparent_crc(p_1322->g_1010, "p_1322->g_1010", print_hash_value);
    transparent_crc(p_1322->g_1083, "p_1322->g_1083", print_hash_value);
    transparent_crc(p_1322->g_1084, "p_1322->g_1084", print_hash_value);
    transparent_crc(p_1322->g_1115, "p_1322->g_1115", print_hash_value);
    transparent_crc(p_1322->g_1200, "p_1322->g_1200", print_hash_value);
    transparent_crc(p_1322->g_1251, "p_1322->g_1251", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1322->g_1276[i][j], "p_1322->g_1276[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1322->g_1287.f0, "p_1322->g_1287.f0", print_hash_value);
    transparent_crc(p_1322->v_collective, "p_1322->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
