// ---fake_divergence -g 96,90,1 -l 8,10,1
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


// Seed: 130

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile uint32_t g_2;
    int32_t g_4;
    volatile int32_t g_7;
    int32_t g_8;
    int16_t g_74;
    int64_t g_76[2];
    uint8_t g_77[6][6][2];
    int32_t g_83;
    int32_t *g_82;
    int16_t *g_86[3][2];
    int32_t g_91;
    int32_t g_102;
    uint16_t g_104;
    int8_t g_106[8];
    int8_t g_139;
    int16_t g_140;
    int16_t g_164;
    uint64_t g_165;
    int8_t *g_178;
    int8_t **g_177;
    int32_t * volatile *g_180;
    int32_t * volatile **g_179;
    uint8_t g_212;
    int16_t g_223;
    uint32_t g_224;
    uint16_t g_237;
    int8_t g_253[8][9];
    uint32_t g_256;
    uint64_t g_304[8][10][2];
    int16_t g_307;
    uint32_t g_312;
    uint8_t g_318;
    int32_t g_348[1][5];
    uint64_t * volatile g_391[6];
    uint64_t * volatile *g_390;
    int16_t g_408;
    uint64_t g_427;
    uint32_t g_445;
    int32_t g_493;
    uint32_t g_534[1];
    uint16_t g_540[5][5];
    int64_t g_597;
    uint16_t *g_606[9][2][2];
    uint16_t g_688;
    int32_t g_697;
    int16_t g_698[7][5][2];
    int32_t g_699;
    uint64_t g_700;
    volatile int64_t **g_731;
    uint64_t g_732;
    uint32_t g_740;
    uint32_t g_747[7];
    int32_t **g_764;
    int32_t *g_768;
    int32_t **g_767;
    uint8_t g_799[4][10];
    int32_t g_870;
    int32_t g_871;
    int64_t g_872;
    int32_t g_873[8];
    uint32_t g_949;
    int64_t *g_1013;
    int64_t **g_1012;
    int32_t *g_1051;
    int32_t **g_1050;
    int32_t ***g_1049[9];
    volatile int32_t g_1065;
    volatile int32_t *g_1064;
    int32_t **g_1091;
    int32_t ***g_1090;
    uint64_t g_1105;
    uint32_t g_1214;
    uint32_t *g_1229;
    uint8_t g_1282[1][3][10];
    int8_t ***g_1287;
    int8_t ****g_1286[10];
    int8_t *****g_1285;
    uint64_t g_1301;
    int32_t g_1406;
    volatile int32_t * volatile **g_1427;
    volatile int32_t * volatile ** volatile * volatile g_1426;
    uint64_t *g_1458;
    uint64_t **g_1457;
    uint64_t ***g_1456;
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
int32_t  func_1(struct S0 * p_1478);
int32_t  func_11(int32_t * p_12, int64_t  p_13, uint8_t  p_14, int32_t  p_15, struct S0 * p_1478);
int32_t * func_16(int32_t  p_17, int32_t  p_18, int16_t  p_19, int32_t * p_20, struct S0 * p_1478);
int32_t * func_21(int32_t  p_22, int16_t  p_23, uint64_t  p_24, uint64_t  p_25, uint64_t  p_26, struct S0 * p_1478);
int32_t  func_31(int32_t * p_32, int16_t  p_33, int64_t  p_34, struct S0 * p_1478);
int32_t * func_35(int32_t * p_36, int32_t * p_37, int64_t  p_38, struct S0 * p_1478);
int32_t * func_39(int32_t * p_40, int32_t  p_41, int32_t * p_42, struct S0 * p_1478);
int32_t * func_45(int32_t * p_46, int32_t * p_47, int32_t * p_48, uint16_t  p_49, int32_t * p_50, struct S0 * p_1478);
int8_t  func_55(int32_t * p_56, int32_t * p_57, uint32_t  p_58, struct S0 * p_1478);
int32_t * func_59(int32_t * p_60, int32_t * p_61, uint8_t  p_62, uint32_t  p_63, int32_t * p_64, struct S0 * p_1478);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1478->g_2 p_1478->g_4 p_1478->g_8 p_1478->g_76 p_1478->g_77 p_1478->g_74 p_1478->g_102 p_1478->g_140 p_1478->g_139 p_1478->g_106 p_1478->g_83 p_1478->g_165 p_1478->g_318 p_1478->g_427 p_1478->g_256 p_1478->g_304 p_1478->g_445 p_1478->g_179 p_1478->g_180 p_1478->g_82 p_1478->g_699 p_1478->g_178 p_1478->g_104 p_1478->g_177 p_1478->g_223 p_1478->g_253 p_1478->g_312 p_1478->g_540 p_1478->g_1013 p_1478->g_688 p_1478->g_873 p_1478->g_1282 p_1478->g_698 p_1478->g_870 p_1478->g_1091 p_1478->g_1090 p_1478->g_700 p_1478->g_1214 p_1478->g_1426 p_1478->g_224 p_1478->g_1012 p_1478->g_597 p_1478->g_390 p_1478->g_391 p_1478->g_1456 p_1478->g_1287 p_1478->g_767 p_1478->g_768 p_1478->g_348
 * writes: p_1478->g_4 p_1478->g_8 p_1478->g_74 p_1478->g_76 p_1478->g_77 p_1478->g_82 p_1478->g_86 p_1478->g_91 p_1478->g_83 p_1478->g_102 p_1478->g_104 p_1478->g_106 p_1478->g_139 p_1478->g_140 p_1478->g_165 p_1478->g_427 p_1478->g_212 p_1478->g_445 p_1478->g_699 p_1478->g_312 p_1478->g_540 p_1478->g_597 p_1478->g_164 p_1478->g_873 p_1478->g_697 p_1478->g_1406 p_1478->g_871 p_1478->g_224 p_1478->g_1456 p_1478->g_1282
 */
int32_t  func_1(struct S0 * p_1478)
{ /* block id: 4 */
    int32_t *l_3 = &p_1478->g_4;
    int16_t l_1375[3];
    int32_t ***l_1421 = &p_1478->g_767;
    uint32_t l_1430 = 0UL;
    uint64_t ***l_1460 = &p_1478->g_1457;
    uint64_t l_1465[4];
    int16_t **l_1472[8] = {&p_1478->g_86[2][0],&p_1478->g_86[2][0],&p_1478->g_86[2][0],&p_1478->g_86[2][0],&p_1478->g_86[2][0],&p_1478->g_86[2][0],&p_1478->g_86[2][0],&p_1478->g_86[2][0]};
    int64_t l_1473 = 5L;
    int i;
    for (i = 0; i < 3; i++)
        l_1375[i] = 0x59A5L;
    for (i = 0; i < 4; i++)
        l_1465[i] = 8UL;
    (*l_3) &= p_1478->g_2;
lbl_1437:
    for (p_1478->g_4 = 0; (p_1478->g_4 == (-14)); p_1478->g_4 = safe_sub_func_int32_t_s_s(p_1478->g_4, 1))
    { /* block id: 8 */
        int64_t l_1377 = (-1L);
        uint64_t l_1419 = 7UL;
        int32_t ****l_1428 = &l_1421;
        for (p_1478->g_8 = (-20); (p_1478->g_8 < 21); ++p_1478->g_8)
        { /* block id: 11 */
            int16_t l_1374[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int32_t *l_1376[5][7] = {{&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871},{&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871},{&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871},{&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871},{&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871,&p_1478->g_871}};
            int8_t l_1378 = (-3L);
            int32_t ****l_1420[3];
            uint32_t l_1429 = 4294967292UL;
            int16_t *l_1435 = &l_1374[7];
            uint32_t l_1436 = 0x9EAC0B01L;
            int i, j;
            for (i = 0; i < 3; i++)
                l_1420[i] = (void*)0;
            p_1478->g_871 = (func_11(func_16(p_1478->g_8, (((*p_1478->g_1091) = func_21((p_1478->g_2 != (safe_mul_func_int8_t_s_s((((safe_mul_func_int16_t_s_s(p_1478->g_4, ((l_1377 = ((((func_31(func_35(l_3, func_39(&p_1478->g_4, p_1478->g_8, &p_1478->g_4, p_1478), (~(65535UL < p_1478->g_304[4][5][1])), p_1478), (*l_3), p_1478->g_223, p_1478) || l_1374[7]) | GROUP_DIVERGE(2, 1)) , p_1478->g_318) , l_1375[2])) || l_1377))) , l_1377) , 2L), (*l_3)))), p_1478->g_1282[0][1][6], l_1378, p_1478->g_698[1][0][0], p_1478->g_870, p_1478)) != (void*)0), p_1478->g_304[3][1][0], l_3, p_1478), (*l_3), p_1478->g_700, (*l_3), p_1478) , 0x7590EAB3L);
            (*p_1478->g_82) ^= (safe_rshift_func_int16_t_s_u(l_1419, ((l_1421 = &p_1478->g_764) == (void*)0)));
            (*p_1478->g_82) = ((((safe_div_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((p_1478->g_1426 == l_1428), l_1429)), l_1430)) == (0x342E048D40780DB0L | l_1419)) , ((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u(((((*l_1435) = l_1377) == 0L) , ((((*l_3) && 0L) || 0L) , l_1419)), p_1478->g_873[2])) , l_1377), l_1436)) || 0x0060DC2A9F82EEB4L)) || (*l_3));
            if (p_1478->g_140)
                goto lbl_1437;
        }
    }
    (*l_3) = 0x41A84471L;
    for (p_1478->g_224 = 10; (p_1478->g_224 != 45); p_1478->g_224 = safe_add_func_uint16_t_u_u(p_1478->g_224, 9))
    { /* block id: 743 */
        uint16_t l_1440 = 0x6525L;
        uint64_t ****l_1459[2];
        int16_t *l_1466 = &p_1478->g_140;
        uint8_t *l_1474[7] = {&p_1478->g_799[1][9],&p_1478->g_77[0][2][0],&p_1478->g_799[1][9],&p_1478->g_799[1][9],&p_1478->g_77[0][2][0],&p_1478->g_799[1][9],&p_1478->g_799[1][9]};
        int32_t l_1475 = 0x7D6E6E83L;
        int i;
        for (i = 0; i < 2; i++)
            l_1459[i] = &p_1478->g_1456;
        (**p_1478->g_180) = ((l_1440 && (**p_1478->g_1012)) < (*l_3));
        l_1475 |= ((**p_1478->g_180) = ((safe_sub_func_uint64_t_u_u((**p_1478->g_390), (safe_rshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s((p_1478->g_1282[0][1][0] &= (safe_sub_func_uint64_t_u_u((((safe_unary_minus_func_int32_t_s((safe_mul_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u(((p_1478->g_1456 = p_1478->g_1456) == (l_1460 = &p_1478->g_1457)), 0xDB69F6A2L)) || (&p_1478->g_86[2][0] != ((((safe_mul_func_int8_t_s_s(((safe_add_func_int16_t_s_s(1L, 0x7CB8L)) && (((*l_1466) ^= l_1465[3]) || (safe_lshift_func_int8_t_s_s((((safe_unary_minus_func_uint64_t_u(((((*l_3) ^ (*l_3)) & (*l_3)) >= 0UL))) > 0L) , (*l_3)), l_1440)))), (***p_1478->g_1287))) <= (*l_3)) , (**p_1478->g_767)) , l_1472[2]))), FAKE_DIVERGE(p_1478->group_0_offset, get_group_id(0), 10))))) & l_1440) == l_1473), 0x811556DA3D2FF4C8L))), (*l_3))), (*l_3))), (*l_3))))) < p_1478->g_540[3][2]));
        for (p_1478->g_74 = 0; (p_1478->g_74 > 21); p_1478->g_74++)
        { /* block id: 753 */
            return (*l_3);
        }
    }
    return (**p_1478->g_1091);
}


/* ------------------------------------------ */
/* 
 * reads : p_1478->g_697 p_1478->g_699 p_1478->g_1214 p_1478->g_180 p_1478->g_82 p_1478->g_1090 p_1478->g_1091
 * writes: p_1478->g_697 p_1478->g_1406 p_1478->g_699 p_1478->g_873
 */
int32_t  func_11(int32_t * p_12, int64_t  p_13, uint8_t  p_14, int32_t  p_15, struct S0 * p_1478)
{ /* block id: 719 */
    int64_t l_1382 = 1L;
    int32_t l_1383 = (-7L);
    int32_t l_1399 = (-1L);
    int32_t l_1400 = (-2L);
    int8_t l_1409 = 1L;
    int8_t l_1412[10][5] = {{0x2FL,0x3BL,(-1L),0x3BL,0x2FL},{0x2FL,0x3BL,(-1L),0x3BL,0x2FL},{0x2FL,0x3BL,(-1L),0x3BL,0x2FL},{0x2FL,0x3BL,(-1L),0x3BL,0x2FL},{0x2FL,0x3BL,(-1L),0x3BL,0x2FL},{0x2FL,0x3BL,(-1L),0x3BL,0x2FL},{0x2FL,0x3BL,(-1L),0x3BL,0x2FL},{0x2FL,0x3BL,(-1L),0x3BL,0x2FL},{0x2FL,0x3BL,(-1L),0x3BL,0x2FL},{0x2FL,0x3BL,(-1L),0x3BL,0x2FL}};
    int64_t **l_1413 = &p_1478->g_1013;
    uint32_t *l_1414[10] = {&p_1478->g_445,&p_1478->g_445,&p_1478->g_445,&p_1478->g_445,&p_1478->g_445,&p_1478->g_445,&p_1478->g_445,&p_1478->g_445,&p_1478->g_445,&p_1478->g_445};
    int i, j;
    for (p_1478->g_697 = 0; (p_1478->g_697 != (-10)); p_1478->g_697 = safe_sub_func_int8_t_s_s(p_1478->g_697, 2))
    { /* block id: 722 */
        int32_t *l_1384 = &p_1478->g_873[7];
        int32_t *l_1385 = &p_1478->g_873[4];
        int32_t *l_1386 = &p_1478->g_873[2];
        int32_t *l_1387 = &p_1478->g_871;
        int32_t *l_1388 = &p_1478->g_83;
        int32_t *l_1389 = &l_1383;
        int32_t *l_1390 = &p_1478->g_699;
        int32_t *l_1391 = (void*)0;
        int32_t *l_1392 = &p_1478->g_102;
        int32_t *l_1393 = &p_1478->g_873[2];
        int32_t *l_1394 = &p_1478->g_871;
        int32_t *l_1395 = &p_1478->g_871;
        int32_t *l_1396 = &p_1478->g_102;
        int32_t *l_1397 = &p_1478->g_873[1];
        int32_t *l_1398[6];
        uint64_t l_1401 = 0x1E021F777CC3B1D8L;
        int i;
        for (i = 0; i < 6; i++)
            l_1398[i] = &p_1478->g_873[2];
        if (l_1382)
            break;
        --l_1401;
    }
    (*p_12) ^= ((safe_mul_func_uint16_t_u_u((+l_1382), ((p_1478->g_1406 = l_1383) , l_1383))) != ((0UL >= p_15) && (((safe_rshift_func_int16_t_s_u(l_1409, p_13)) > (((((safe_sub_func_int16_t_s_s((l_1412[7][3] == l_1383), p_15)) , l_1413) != &p_1478->g_1013) & p_14) | l_1412[9][4])) | l_1409)));
    l_1383 ^= ((l_1399 , (l_1412[9][3] != 0x0010L)) , ((l_1414[1] != (p_1478->g_1214 , func_16(p_15, (p_1478->g_873[2] = ((*p_12) = (4294967295UL & (**p_1478->g_180)))), (safe_sub_func_uint64_t_u_u((l_1400 != 0x6B920A09F9FCF302L), p_13)), (**p_1478->g_1090), p_1478))) ^ l_1409));
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_1478->g_1090 p_1478->g_1091 p_1478->g_82
 * writes:
 */
int32_t * func_16(int32_t  p_17, int32_t  p_18, int16_t  p_19, int32_t * p_20, struct S0 * p_1478)
{ /* block id: 717 */
    return (**p_1478->g_1090);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_21(int32_t  p_22, int16_t  p_23, uint64_t  p_24, uint64_t  p_25, uint64_t  p_26, struct S0 * p_1478)
{ /* block id: 714 */
    int32_t *l_1379 = &p_1478->g_699;
    return l_1379;
}


/* ------------------------------------------ */
/* 
 * reads : p_1478->g_102 p_1478->g_540 p_1478->g_1013 p_1478->g_688 p_1478->g_873 p_1478->g_83
 * writes: p_1478->g_102 p_1478->g_540 p_1478->g_597 p_1478->g_86 p_1478->g_83 p_1478->g_164 p_1478->g_76 p_1478->g_873
 */
int32_t  func_31(int32_t * p_32, int16_t  p_33, int64_t  p_34, struct S0 * p_1478)
{ /* block id: 271 */
    uint16_t l_561 = 1UL;
    int32_t *l_563 = &p_1478->g_348[0][3];
    int32_t **l_562[3][10][8] = {{{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563}},{{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563}},{{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563},{&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563,&l_563}}};
    int32_t l_572[7][1][1];
    int32_t l_619 = (-1L);
    uint16_t l_625[4][8] = {{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}};
    uint64_t *l_644[8][6] = {{(void*)0,&p_1478->g_304[3][1][0],(void*)0,&p_1478->g_304[3][1][0],(void*)0,(void*)0},{(void*)0,&p_1478->g_304[3][1][0],(void*)0,&p_1478->g_304[3][1][0],(void*)0,(void*)0},{(void*)0,&p_1478->g_304[3][1][0],(void*)0,&p_1478->g_304[3][1][0],(void*)0,(void*)0},{(void*)0,&p_1478->g_304[3][1][0],(void*)0,&p_1478->g_304[3][1][0],(void*)0,(void*)0},{(void*)0,&p_1478->g_304[3][1][0],(void*)0,&p_1478->g_304[3][1][0],(void*)0,(void*)0},{(void*)0,&p_1478->g_304[3][1][0],(void*)0,&p_1478->g_304[3][1][0],(void*)0,(void*)0},{(void*)0,&p_1478->g_304[3][1][0],(void*)0,&p_1478->g_304[3][1][0],(void*)0,(void*)0},{(void*)0,&p_1478->g_304[3][1][0],(void*)0,&p_1478->g_304[3][1][0],(void*)0,(void*)0}};
    uint64_t **l_643 = &l_644[2][0];
    int8_t ***l_676 = &p_1478->g_177;
    int8_t l_686 = 0x2FL;
    int64_t l_687 = 0x7230660A0A072F32L;
    int32_t l_696 = (-1L);
    int32_t *l_703 = &l_572[3][0][0];
    int16_t *l_708 = &p_1478->g_164;
    int64_t l_737 = 0x2F8FA3B08CA5FAD9L;
    uint32_t l_752[4] = {0xE320EE57L,0xE320EE57L,0xE320EE57L,0xE320EE57L};
    int32_t **l_822[9][2] = {{&l_703,&l_703},{&l_703,&l_703},{&l_703,&l_703},{&l_703,&l_703},{&l_703,&l_703},{&l_703,&l_703},{&l_703,&l_703},{&l_703,&l_703},{&l_703,&l_703}};
    int32_t ***l_821 = &l_822[3][0];
    int32_t *l_845 = &p_1478->g_493;
    int32_t **l_844 = &l_845;
    int32_t ***l_843 = &l_844;
    int32_t l_876 = 0x2DD85345L;
    uint16_t l_1066[5];
    int32_t l_1073[4][6][9] = {{{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L}},{{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L}},{{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L}},{{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L},{8L,(-2L),0x4D43F33BL,0x3098356AL,0x4F8D29C2L,0x42C739FFL,(-4L),0x2F705073L,0x120BACD2L}}};
    int32_t l_1084[2];
    uint8_t l_1146 = 255UL;
    int32_t ****l_1178 = &p_1478->g_1049[0];
    int32_t *l_1205 = (void*)0;
    uint16_t l_1215 = 0x9538L;
    uint8_t l_1305 = 2UL;
    int8_t ******l_1311[6][6];
    uint16_t **l_1354 = &p_1478->g_606[3][1][0];
    int32_t ***l_1362 = &l_844;
    uint32_t l_1367 = 0x26428654L;
    int16_t **l_1370 = &p_1478->g_86[0][1];
    int8_t l_1371 = (-1L);
    int64_t *l_1372 = (void*)0;
    int64_t *l_1373 = &p_1478->g_76[1];
    int i, j, k;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_572[i][j][k] = 0x7CDCD030L;
        }
    }
    for (i = 0; i < 5; i++)
        l_1066[i] = 0x43D8L;
    for (i = 0; i < 2; i++)
        l_1084[i] = (-1L);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
            l_1311[i][j] = &p_1478->g_1285;
    }
    for (p_1478->g_102 = 0; (p_1478->g_102 >= (-6)); p_1478->g_102 = safe_sub_func_uint16_t_u_u(p_1478->g_102, 7))
    { /* block id: 274 */
        int32_t *l_538 = &p_1478->g_83;
        int32_t *l_539[10] = {&p_1478->g_83,&p_1478->g_83,&p_1478->g_83,&p_1478->g_83,&p_1478->g_83,&p_1478->g_83,&p_1478->g_83,&p_1478->g_83,&p_1478->g_83,&p_1478->g_83};
        int32_t **l_564 = &l_563;
        uint8_t *l_565 = &p_1478->g_318;
        int8_t **l_568 = &p_1478->g_178;
        int64_t *l_569[8][7] = {{&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1]},{&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1]},{&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1]},{&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1]},{&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1]},{&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1]},{&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1]},{&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1],(void*)0,&p_1478->g_76[1],&p_1478->g_76[1]}};
        int16_t *l_570 = (void*)0;
        int16_t *l_571[2];
        uint16_t l_598 = 65534UL;
        uint16_t *l_607 = &p_1478->g_237;
        int32_t l_617[4];
        int16_t l_668[1][10] = {{4L,4L,4L,4L,4L,4L,4L,4L,4L,4L}};
        int32_t *l_694[7];
        uint16_t *l_715 = &l_625[1][4];
        int32_t l_750[3][5] = {{0x7E938DF6L,0x7E938DF6L,0x7E938DF6L,0x7E938DF6L,0x7E938DF6L},{0x7E938DF6L,0x7E938DF6L,0x7E938DF6L,0x7E938DF6L,0x7E938DF6L},{0x7E938DF6L,0x7E938DF6L,0x7E938DF6L,0x7E938DF6L,0x7E938DF6L}};
        uint32_t l_883 = 6UL;
        int8_t l_923 = 0x03L;
        int8_t l_990 = 0x39L;
        int32_t **l_1089 = (void*)0;
        uint8_t l_1116 = 0x1EL;
        uint16_t l_1133 = 1UL;
        uint8_t l_1139 = 255UL;
        int32_t *l_1166 = &l_572[1][0][0];
        uint8_t l_1168 = 0x67L;
        uint8_t l_1204 = 0xE7L;
        int64_t ***l_1303 = &p_1478->g_1012;
        int8_t *****l_1306 = &p_1478->g_1286[0];
        uint16_t l_1315 = 0x1662L;
        int i, j;
        for (i = 0; i < 2; i++)
            l_571[i] = &p_1478->g_223;
        for (i = 0; i < 4; i++)
            l_617[i] = 4L;
        for (i = 0; i < 7; i++)
            l_694[i] = (void*)0;
        --p_1478->g_540[4][0];
    }
    p_1478->g_873[2] |= (((*p_1478->g_1013) = 0x386A1EA7C555EC03L) != (safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1478->group_2_offset, get_group_id(2), 10), ((*l_1373) = ((((((p_33 != ((*l_703) | (safe_sub_func_uint16_t_u_u((l_1367 != p_34), ((*l_708) = (((((*p_32) = (safe_sub_func_uint8_t_u_u(p_34, (((*l_1370) = &p_33) != &p_33)))) , 18446744073709551609UL) ^ p_34) || p_1478->g_688)))))) >= 0x2C8BL) & p_33) , p_33) | l_1371) == 7UL)))));
    return (*p_32);
}


/* ------------------------------------------ */
/* 
 * reads : p_1478->g_77 p_1478->g_312 p_1478->g_178 p_1478->g_256 p_1478->g_102
 * writes: p_1478->g_312 p_1478->g_139 p_1478->g_102
 */
int32_t * func_35(int32_t * p_36, int32_t * p_37, int64_t  p_38, struct S0 * p_1478)
{ /* block id: 263 */
    uint8_t *l_515[5][10] = {{&p_1478->g_318,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,&p_1478->g_318,&p_1478->g_318},{&p_1478->g_318,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,&p_1478->g_318,&p_1478->g_318},{&p_1478->g_318,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,&p_1478->g_318,&p_1478->g_318},{&p_1478->g_318,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,&p_1478->g_318,&p_1478->g_318},{&p_1478->g_318,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,(void*)0,(void*)0,&p_1478->g_318,&p_1478->g_318,&p_1478->g_318}};
    int32_t l_516 = 1L;
    int32_t l_523[1];
    int16_t **l_532 = &p_1478->g_86[2][0];
    uint32_t *l_533[5] = {&p_1478->g_534[0],&p_1478->g_534[0],&p_1478->g_534[0],&p_1478->g_534[0],&p_1478->g_534[0]};
    int32_t l_535 = 0x7A1CFAC5L;
    int i, j;
    for (i = 0; i < 1; i++)
        l_523[i] = (-4L);
    (*p_37) = (safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_u((l_516 = 0xCBL), (safe_sub_func_int32_t_s_s(((((safe_div_func_uint32_t_u_u(p_1478->g_77[5][3][1], p_38)) > (++p_1478->g_312)) , &p_1478->g_178) == (FAKE_DIVERGE(p_1478->group_0_offset, get_group_id(0), 10) , &p_1478->g_178)), (((l_523[0] = (((*p_1478->g_178) = l_523[0]) || ((!(safe_add_func_int64_t_s_s(0L, p_1478->g_256))) & (safe_lshift_func_int16_t_s_u((safe_div_func_int8_t_s_s((safe_sub_func_int64_t_s_s((((p_38 , (void*)0) != l_532) ^ p_38), FAKE_DIVERGE(p_1478->local_2_offset, get_local_id(2), 10))), p_38)), l_523[0]))))) <= l_535) && l_523[0]))))), 9));
    (*p_37) &= 0x385FB9EFL;
    return &p_1478->g_83;
}


/* ------------------------------------------ */
/* 
 * reads : p_1478->g_4 p_1478->g_8 p_1478->g_76 p_1478->g_77 p_1478->g_74 p_1478->g_102 p_1478->g_140 p_1478->g_139 p_1478->g_106 p_1478->g_83 p_1478->g_165 p_1478->g_91 p_1478->g_318 p_1478->g_427 p_1478->g_212 p_1478->g_256 p_1478->g_304 p_1478->g_445 p_1478->g_179 p_1478->g_180 p_1478->g_82 p_1478->g_178 p_1478->g_104 p_1478->g_177 p_1478->g_223 p_1478->g_253 p_1478->g_699
 * writes: p_1478->g_74 p_1478->g_76 p_1478->g_77 p_1478->g_82 p_1478->g_86 p_1478->g_91 p_1478->g_83 p_1478->g_102 p_1478->g_104 p_1478->g_106 p_1478->g_139 p_1478->g_140 p_1478->g_165 p_1478->g_427 p_1478->g_212 p_1478->g_445 p_1478->g_699
 */
int32_t * func_39(int32_t * p_40, int32_t  p_41, int32_t * p_42, struct S0 * p_1478)
{ /* block id: 12 */
    int8_t l_66[1][8][3] = {{{0x79L,0x36L,0x62L},{0x79L,0x36L,0x62L},{0x79L,0x36L,0x62L},{0x79L,0x36L,0x62L},{0x79L,0x36L,0x62L},{0x79L,0x36L,0x62L},{0x79L,0x36L,0x62L},{0x79L,0x36L,0x62L}}};
    int32_t *l_67 = &p_1478->g_8;
    int32_t *l_416 = &p_1478->g_102;
    int32_t l_417 = 9L;
    int32_t *l_418 = &l_417;
    int32_t *l_419 = &p_1478->g_102;
    int32_t *l_420 = &p_1478->g_83;
    int32_t *l_421 = &p_1478->g_102;
    int32_t *l_422 = (void*)0;
    int32_t *l_423 = &l_417;
    int32_t *l_424 = &p_1478->g_83;
    int32_t *l_425 = &p_1478->g_102;
    int32_t *l_426[10];
    int16_t *l_456 = (void*)0;
    int16_t *l_480[3][6][8] = {{{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0}},{{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0}},{{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0},{(void*)0,&p_1478->g_408,(void*)0,&p_1478->g_408,(void*)0,(void*)0,&p_1478->g_408,(void*)0}}};
    int8_t **l_483 = (void*)0;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_426[i] = &p_1478->g_102;
    for (p_41 = (-9); (p_41 <= 10); p_41 = safe_add_func_int8_t_s_s(p_41, 1))
    { /* block id: 15 */
        int32_t *l_65 = &p_1478->g_4;
        uint64_t *l_413 = &p_1478->g_165;
        int32_t **l_415 = &l_67;
        (*l_415) = func_45((((*l_413) = (p_41 , ((safe_add_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(248UL, 1UL)), func_55(func_59(l_65, &p_1478->g_8, p_1478->g_4, l_66[0][0][1], l_67, p_1478), l_67, p_41, p_1478))) == (*l_67)))) , l_67), &p_1478->g_8, &p_1478->g_4, p_1478->g_318, &p_1478->g_8, p_1478);
        return &p_1478->g_102;
    }
    ++p_1478->g_427;
    for (p_1478->g_212 = 17; (p_1478->g_212 >= 37); p_1478->g_212++)
    { /* block id: 231 */
        uint32_t l_440 = 0xE71264D0L;
        int32_t l_443 = (-4L);
        int32_t l_444 = 1L;
        uint64_t l_479 = 0xB2C0DC7176433181L;
        if ((*l_421))
            break;
        if ((65530UL | (safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((*l_421), p_1478->g_256)), ((*l_420) == (~((safe_add_func_uint16_t_u_u((*l_424), (0xA4EFA41EL || p_1478->g_304[3][1][0]))) ^ ((safe_rshift_func_int16_t_s_s(0x3E0BL, ((l_440 = p_41) == (*l_421)))) || FAKE_DIVERGE(p_1478->local_0_offset, get_local_id(0), 10)))))))))
        { /* block id: 234 */
            int32_t l_441 = (-1L);
            int32_t l_442 = 0x72D49E74L;
            ++p_1478->g_445;
        }
        else
        { /* block id: 236 */
            uint16_t l_454 = 0x1BCDL;
            int16_t l_455 = 1L;
            int16_t **l_457 = &l_456;
            uint64_t *l_472 = &p_1478->g_165;
            uint8_t l_477 = 0x9EL;
            int64_t *l_478 = &p_1478->g_76[1];
            int32_t l_494 = (-6L);
            (*l_423) = ((safe_add_func_int32_t_s_s((((safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((l_455 &= ((!p_41) > l_454)), 11)), (~0x3D2DL))) && (((*l_457) = l_456) != ((((safe_lshift_func_uint8_t_u_u(l_455, l_444)) || ((safe_sub_func_int32_t_s_s((~((safe_sub_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((((*l_478) = (safe_mul_func_int16_t_s_s(p_41, (safe_add_func_uint64_t_u_u((--(*l_472)), (safe_div_func_uint32_t_u_u(p_41, l_477))))))) , 0x4E2BL), l_479)), l_443)), (-5L))) < p_41)), (***p_1478->g_179))) && (*p_1478->g_178))) != (*p_40)) , l_480[0][1][1]))) || 0x657F0AEEL), (*p_1478->g_82))) , l_479);
            for (p_1478->g_104 = 0; (p_1478->g_104 <= 0); p_1478->g_104 += 1)
            { /* block id: 244 */
                int64_t *l_510 = &p_1478->g_76[1];
                int i;
                (*p_1478->g_82) |= (*p_42);
                for (p_1478->g_165 = 0; (p_1478->g_165 <= 0); p_1478->g_165 += 1)
                { /* block id: 248 */
                    int32_t *l_492[3];
                    int32_t l_509 = 0x5AE71EFDL;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_492[i] = &p_1478->g_493;
                    (*p_1478->g_82) = (l_66[p_1478->g_165][(p_1478->g_104 + 6)][p_1478->g_104] != (safe_rshift_func_int8_t_s_u(((((l_483 = &p_1478->g_178) == ((((((safe_mul_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((((safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u(((l_494 |= (((void*)0 == &l_66[p_1478->g_165][(p_1478->g_104 + 6)][p_1478->g_104]) | p_41)) , (safe_sub_func_int8_t_s_s(((*l_421) &= (safe_add_func_uint64_t_u_u((*l_420), (p_41 <= (safe_mul_func_int16_t_s_s((l_443 = (l_509 = (safe_mul_func_int8_t_s_s(((safe_add_func_uint32_t_u_u(p_41, ((safe_lshift_func_int8_t_s_u((((safe_mul_func_uint8_t_u_u(0x8FL, p_41)) | p_1478->g_106[2]) , 0x4FL), p_1478->g_76[1])) >= p_41))) == 0xAAE9L), p_41)))), 0x6F44L)))))), (**p_1478->g_177)))), p_41)), p_1478->g_256)) , &p_1478->g_76[0]) == l_510) || p_41), 0x24L)), p_1478->g_4)) != 0x18L) & (*p_42)) >= p_1478->g_223) , FAKE_DIVERGE(p_1478->group_1_offset, get_group_id(1), 10)) , &p_1478->g_178)) | 0xD77D8F92L) == p_1478->g_253[6][4]), 6)));
                    l_426[(p_1478->g_165 + 6)] = &l_494;
                }
            }
            if ((*p_40))
                break;
            (*l_424) |= (-7L);
        }
    }
    return &p_1478->g_102;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_45(int32_t * p_46, int32_t * p_47, int32_t * p_48, uint16_t  p_49, int32_t * p_50, struct S0 * p_1478)
{ /* block id: 223 */
    int32_t *l_414[1][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
    return l_414[0][8];
}


/* ------------------------------------------ */
/* 
 * reads : p_1478->g_83 p_1478->g_106 p_1478->g_165 p_1478->g_91 p_1478->g_8 p_1478->g_102
 * writes: p_1478->g_83 p_1478->g_165 p_1478->g_91 p_1478->g_102
 */
int8_t  func_55(int32_t * p_56, int32_t * p_57, uint32_t  p_58, struct S0 * p_1478)
{ /* block id: 70 */
    int32_t **l_157 = &p_1478->g_82;
    int32_t l_163 = 0x69BFAC6FL;
    int32_t ***l_181[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t **l_217 = &p_1478->g_178;
    uint16_t l_234 = 0x58A0L;
    int64_t l_235 = 0L;
    uint32_t l_255[8] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    int8_t l_271[7] = {0x0FL,6L,0x0FL,0x0FL,6L,0x0FL,0x0FL};
    int8_t l_305 = 2L;
    int64_t *l_400 = (void*)0;
    int64_t **l_399[7] = {&l_400,&l_400,&l_400,&l_400,&l_400,&l_400,&l_400};
    int64_t ***l_398 = &l_399[6];
    int8_t l_412 = 1L;
    int i;
    for (p_1478->g_83 = 1; (p_1478->g_83 >= 0); p_1478->g_83 -= 1)
    { /* block id: 73 */
        int32_t **l_156 = &p_1478->g_82;
        int32_t ***l_155[3][10] = {{&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156},{&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156},{&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156,&l_156}};
        int8_t *l_161 = (void*)0;
        int8_t **l_160 = &l_161;
        int8_t ***l_162 = &l_160;
        int i, j;
        l_163 = (safe_sub_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((((l_157 = &p_1478->g_82) != (void*)0) || p_58) <= (-1L)), 0L)), ((safe_div_func_int16_t_s_s(p_58, (((((((*l_162) = l_160) == ((p_58 , ((p_1478->g_83 , (void*)0) == (void*)0)) , (void*)0)) , l_163) , p_1478->g_106[0]) , 0xBAF8B371L) , p_58))) <= l_163)));
        --p_1478->g_165;
        return p_58;
    }
    for (p_1478->g_91 = 0; (p_1478->g_91 >= 16); p_1478->g_91++)
    { /* block id: 82 */
        int32_t *l_170 = &p_1478->g_102;
        (*l_170) &= (*p_56);
    }
    for (p_1478->g_91 = 0; (p_1478->g_91 >= 11); p_1478->g_91 = safe_add_func_uint8_t_u_u(p_1478->g_91, 1))
    { /* block id: 87 */
        int32_t l_184 = 9L;
        int8_t **l_185 = &p_1478->g_178;
        int32_t l_186 = 0x1477FFDDL;
        int32_t **l_196 = &p_1478->g_82;
        uint32_t l_240 = 0x83810A5EL;
        uint8_t *l_248 = &p_1478->g_77[0][2][0];
        int32_t l_279[5][7][4] = {{{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L}},{{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L}},{{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L}},{{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L}},{{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L},{(-1L),0x1E70E9D8L,0x462EF824L,0L}}};
        uint32_t l_315[1][1][6] = {{{0UL,0UL,0UL,0UL,0UL,0UL}}};
        int32_t l_331 = (-1L);
        int16_t *l_334 = &p_1478->g_74;
        int64_t *l_394 = &p_1478->g_76[1];
        int64_t **l_393 = &l_394;
        int i, j, k;
        (1 + 1);
    }
    return l_412;
}


/* ------------------------------------------ */
/* 
 * reads : p_1478->g_4 p_1478->g_8 p_1478->g_76 p_1478->g_77 p_1478->g_74 p_1478->g_102 p_1478->g_140 p_1478->g_139 p_1478->g_106
 * writes: p_1478->g_74 p_1478->g_76 p_1478->g_77 p_1478->g_82 p_1478->g_86 p_1478->g_91 p_1478->g_83 p_1478->g_102 p_1478->g_104 p_1478->g_106 p_1478->g_139 p_1478->g_140
 */
int32_t * func_59(int32_t * p_60, int32_t * p_61, uint8_t  p_62, uint32_t  p_63, int32_t * p_64, struct S0 * p_1478)
{ /* block id: 16 */
    uint16_t l_70 = 0x5D06L;
    int16_t *l_73 = &p_1478->g_74;
    int32_t l_75 = (-1L);
    int32_t *l_79 = &l_75;
    int32_t **l_78[4][7][3] = {{{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0}},{{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0}},{{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0}},{{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0},{&l_79,&l_79,(void*)0}}};
    int32_t l_92[3][1][1];
    int16_t **l_99 = &p_1478->g_86[0][1];
    int8_t *l_115 = &p_1478->g_106[5];
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_92[i][j][k] = (-1L);
        }
    }
    p_1478->g_77[0][2][0] |= (safe_mod_func_int32_t_s_s(((l_70 = p_1478->g_4) == (safe_mod_func_int16_t_s_s((((void*)0 != p_61) >= ((p_62 , ((*l_73) = p_62)) > (l_75 && (p_1478->g_8 == (l_75 , (p_1478->g_76[1] &= p_1478->g_8)))))), l_75))), p_1478->g_8));
    p_61 = (void*)0;
    for (l_75 = 0; (l_75 > (-22)); l_75 = safe_sub_func_int64_t_s_s(l_75, 6))
    { /* block id: 24 */
        int16_t **l_84 = (void*)0;
        int16_t **l_85[8][1] = {{&l_73},{&l_73},{&l_73},{&l_73},{&l_73},{&l_73},{&l_73},{&l_73}};
        int32_t **l_89 = &p_1478->g_82;
        int32_t *l_90 = &p_1478->g_91;
        int32_t l_137 = 0x21BC1FB2L;
        int i, j;
        p_1478->g_82 = (void*)0;
        if ((((((p_1478->g_86[2][0] = l_73) != l_73) != p_63) | (safe_mul_func_uint16_t_u_u(((void*)0 != l_89), (0xB0E1D9D3L > (p_62 || p_63))))) >= (((!((((*l_90) = p_1478->g_77[5][2][1]) , l_92[2][0][0]) | 4294967293UL)) < 0xABL) && (*p_64))))
        { /* block id: 28 */
            int16_t l_109 = 0x01C7L;
            int8_t *l_116 = (void*)0;
            for (p_1478->g_83 = 0; (p_1478->g_83 != (-26)); --p_1478->g_83)
            { /* block id: 31 */
                int32_t l_113[2];
                int64_t l_141[9] = {1L,0x510A89F6E7EE216EL,1L,1L,0x510A89F6E7EE216EL,1L,1L,0x510A89F6E7EE216EL,1L};
                int i;
                for (i = 0; i < 2; i++)
                    l_113[i] = (-7L);
                for (l_70 = (-20); (l_70 <= 25); l_70++)
                { /* block id: 34 */
                    uint8_t *l_103 = &p_1478->g_77[2][2][0];
                    int32_t l_110 = 1L;
                    uint16_t *l_130 = &p_1478->g_104;
                    int64_t *l_135 = &p_1478->g_76[0];
                    int64_t l_136 = 1L;
                    uint16_t *l_138[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    p_1478->g_104 = (((*l_103) = ((((&l_79 == &p_1478->g_82) && p_63) & (safe_mul_func_uint16_t_u_u(((p_1478->g_102 = ((l_99 = &l_73) == ((((*l_73) = (safe_rshift_func_int8_t_s_s(p_1478->g_4, p_1478->g_74))) , p_1478->g_77[4][0][1]) , (void*)0))) > 0x0F8C8442L), p_1478->g_77[4][5][1]))) >= 0x6B2EB2EFL)) && p_63);
                    for (p_1478->g_102 = 0; (p_1478->g_102 <= 1); p_1478->g_102 += 1)
                    { /* block id: 42 */
                        int8_t *l_105 = &p_1478->g_106[2];
                        int32_t **l_114 = &l_90;
                        int8_t **l_117 = &l_105;
                        int i;
                        l_110 ^= (((*l_105) = (((*l_99) = &p_1478->g_74) == (void*)0)) == ((p_1478->g_76[p_1478->g_102] >= 9UL) || ((safe_lshift_func_int16_t_s_s(3L, 6)) , l_109)));
                        l_110 = (safe_rshift_func_uint8_t_u_u((((l_113[1] , (((*l_73) = ((p_60 != ((*l_114) = (void*)0)) <= 1UL)) & (((((l_115 != ((*l_117) = l_116)) || (safe_lshift_func_uint16_t_u_u((((*l_115) = (safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1478->global_2_offset, get_global_id(2), 10) && (safe_div_func_uint32_t_u_u(p_62, ((l_89 == (void*)0) & p_62)))), 1L))) & 0x28L), p_63))) ^ p_1478->g_102) | p_1478->g_4) >= 65531UL))) , (void*)0) != &p_1478->g_86[1][1]), p_63));
                        if ((*p_60))
                            continue;
                    }
                    l_141[7] = (p_1478->g_140 |= (p_1478->g_102 = (l_113[1] > ((p_62 >= (p_63 <= (p_1478->g_8 , (safe_mod_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_s((p_1478->g_139 = (safe_add_func_uint32_t_u_u(((p_60 = p_60) == &p_1478->g_83), ((((*l_130) = 8UL) & p_63) <= (safe_mod_func_uint16_t_u_u(((((*l_135) = (safe_div_func_uint16_t_u_u(65535UL, GROUP_DIVERGE(0, 1)))) , l_136) == l_137), 0x0562L)))))), l_109)) , FAKE_DIVERGE(p_1478->group_0_offset, get_group_id(0), 10)) ^ l_109), l_110))))) || p_62))));
                    if (p_1478->g_139)
                        continue;
                }
            }
        }
        else
        { /* block id: 63 */
            uint32_t l_142 = 5UL;
            int32_t l_143 = 0x0081AEECL;
            uint16_t l_148 = 1UL;
            p_1478->g_102 = ((l_143 = l_142) || ((safe_mul_func_uint16_t_u_u(p_63, (&p_60 == &l_79))) , (((safe_add_func_int64_t_s_s(p_1478->g_77[0][2][0], (l_148 <= (safe_mul_func_uint16_t_u_u(p_63, p_62))))) , ((*l_115) ^= ((0x02A7L == 0xCE5EL) == p_63))) , (*l_79))));
        }
    }
    return &p_1478->g_8;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1479;
    struct S0* p_1478 = &c_1479;
    struct S0 c_1480 = {
        4294967295UL, // p_1478->g_2
        (-1L), // p_1478->g_4
        0x770A77C8L, // p_1478->g_7
        0L, // p_1478->g_8
        0x0512L, // p_1478->g_74
        {0x353CF54CEAA96396L,0x353CF54CEAA96396L}, // p_1478->g_76
        {{{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L}},{{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L}},{{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L}},{{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L}},{{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L}},{{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L},{7UL,0xA3L}}}, // p_1478->g_77
        0x5F1D9793L, // p_1478->g_83
        &p_1478->g_83, // p_1478->g_82
        {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}, // p_1478->g_86
        1L, // p_1478->g_91
        1L, // p_1478->g_102
        0xCC8EL, // p_1478->g_104
        {7L,7L,7L,7L,7L,7L,7L,7L}, // p_1478->g_106
        0x65L, // p_1478->g_139
        1L, // p_1478->g_140
        0x17E5L, // p_1478->g_164
        0x64B534227FBC6E32L, // p_1478->g_165
        &p_1478->g_139, // p_1478->g_178
        &p_1478->g_178, // p_1478->g_177
        &p_1478->g_82, // p_1478->g_180
        &p_1478->g_180, // p_1478->g_179
        0x9BL, // p_1478->g_212
        0x01F8L, // p_1478->g_223
        4294967295UL, // p_1478->g_224
        65530UL, // p_1478->g_237
        {{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L}}, // p_1478->g_253
        0x7ABCD3A8L, // p_1478->g_256
        {{{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L}},{{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L}},{{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L}},{{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L}},{{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L}},{{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L}},{{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L}},{{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L},{18446744073709551615UL,0xA6235A723FE81FB4L}}}, // p_1478->g_304
        0x2F01L, // p_1478->g_307
        0x9CD8008BL, // p_1478->g_312
        0x2AL, // p_1478->g_318
        {{0x093CB7F8L,0x093CB7F8L,0x093CB7F8L,0x093CB7F8L,0x093CB7F8L}}, // p_1478->g_348
        {&p_1478->g_304[3][1][0],&p_1478->g_304[3][1][0],&p_1478->g_304[3][1][0],&p_1478->g_304[3][1][0],&p_1478->g_304[3][1][0],&p_1478->g_304[3][1][0]}, // p_1478->g_391
        &p_1478->g_391[0], // p_1478->g_390
        0L, // p_1478->g_408
        0x18147C04E82BE98DL, // p_1478->g_427
        4294967291UL, // p_1478->g_445
        0x55B8866CL, // p_1478->g_493
        {4294967291UL}, // p_1478->g_534
        {{0x011FL,0x011FL,0x011FL,0x011FL,0x011FL},{0x011FL,0x011FL,0x011FL,0x011FL,0x011FL},{0x011FL,0x011FL,0x011FL,0x011FL,0x011FL},{0x011FL,0x011FL,0x011FL,0x011FL,0x011FL},{0x011FL,0x011FL,0x011FL,0x011FL,0x011FL}}, // p_1478->g_540
        1L, // p_1478->g_597
        {{{&p_1478->g_540[2][1],&p_1478->g_104},{&p_1478->g_540[2][1],&p_1478->g_104}},{{&p_1478->g_540[2][1],&p_1478->g_104},{&p_1478->g_540[2][1],&p_1478->g_104}},{{&p_1478->g_540[2][1],&p_1478->g_104},{&p_1478->g_540[2][1],&p_1478->g_104}},{{&p_1478->g_540[2][1],&p_1478->g_104},{&p_1478->g_540[2][1],&p_1478->g_104}},{{&p_1478->g_540[2][1],&p_1478->g_104},{&p_1478->g_540[2][1],&p_1478->g_104}},{{&p_1478->g_540[2][1],&p_1478->g_104},{&p_1478->g_540[2][1],&p_1478->g_104}},{{&p_1478->g_540[2][1],&p_1478->g_104},{&p_1478->g_540[2][1],&p_1478->g_104}},{{&p_1478->g_540[2][1],&p_1478->g_104},{&p_1478->g_540[2][1],&p_1478->g_104}},{{&p_1478->g_540[2][1],&p_1478->g_104},{&p_1478->g_540[2][1],&p_1478->g_104}}}, // p_1478->g_606
        0x1F8EL, // p_1478->g_688
        0x1FE5C898L, // p_1478->g_697
        {{{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L}},{{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L}},{{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L}},{{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L}},{{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L}},{{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L}},{{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L},{(-7L),0x06C9L}}}, // p_1478->g_698
        0x4B4485FDL, // p_1478->g_699
        9UL, // p_1478->g_700
        (void*)0, // p_1478->g_731
        0xD7CB1C0DA1FD605DL, // p_1478->g_732
        0xB21EFC6EL, // p_1478->g_740
        {0x824565DAL,4294967295UL,0x824565DAL,0x824565DAL,4294967295UL,0x824565DAL,0x824565DAL}, // p_1478->g_747
        (void*)0, // p_1478->g_764
        &p_1478->g_348[0][2], // p_1478->g_768
        &p_1478->g_768, // p_1478->g_767
        {{255UL,0UL,255UL,0UL,255UL,255UL,0UL,255UL,0UL,255UL},{255UL,0UL,255UL,0UL,255UL,255UL,0UL,255UL,0UL,255UL},{255UL,0UL,255UL,0UL,255UL,255UL,0UL,255UL,0UL,255UL},{255UL,0UL,255UL,0UL,255UL,255UL,0UL,255UL,0UL,255UL}}, // p_1478->g_799
        (-10L), // p_1478->g_870
        5L, // p_1478->g_871
        0x082258C24DD6DBB3L, // p_1478->g_872
        {0x09F8EBE0L,6L,0x09F8EBE0L,0x09F8EBE0L,6L,0x09F8EBE0L,0x09F8EBE0L,6L}, // p_1478->g_873
        0x114056A6L, // p_1478->g_949
        &p_1478->g_597, // p_1478->g_1013
        &p_1478->g_1013, // p_1478->g_1012
        &p_1478->g_493, // p_1478->g_1051
        &p_1478->g_1051, // p_1478->g_1050
        {&p_1478->g_1050,&p_1478->g_1050,&p_1478->g_1050,&p_1478->g_1050,&p_1478->g_1050,&p_1478->g_1050,&p_1478->g_1050,&p_1478->g_1050,&p_1478->g_1050}, // p_1478->g_1049
        0x30C48E79L, // p_1478->g_1065
        &p_1478->g_1065, // p_1478->g_1064
        &p_1478->g_82, // p_1478->g_1091
        &p_1478->g_1091, // p_1478->g_1090
        0xDB09D513C1F07CF8L, // p_1478->g_1105
        9UL, // p_1478->g_1214
        &p_1478->g_256, // p_1478->g_1229
        {{{0xACL,0xACL,255UL,0x58L,0x0DL,0x0AL,0xE1L,0UL,0xE1L,0x0AL},{0xACL,0xACL,255UL,0x58L,0x0DL,0x0AL,0xE1L,0UL,0xE1L,0x0AL},{0xACL,0xACL,255UL,0x58L,0x0DL,0x0AL,0xE1L,0UL,0xE1L,0x0AL}}}, // p_1478->g_1282
        &p_1478->g_177, // p_1478->g_1287
        {&p_1478->g_1287,&p_1478->g_1287,&p_1478->g_1287,&p_1478->g_1287,&p_1478->g_1287,&p_1478->g_1287,&p_1478->g_1287,&p_1478->g_1287,&p_1478->g_1287,&p_1478->g_1287}, // p_1478->g_1286
        &p_1478->g_1286[8], // p_1478->g_1285
        1UL, // p_1478->g_1301
        (-7L), // p_1478->g_1406
        (void*)0, // p_1478->g_1427
        &p_1478->g_1427, // p_1478->g_1426
        (void*)0, // p_1478->g_1458
        &p_1478->g_1458, // p_1478->g_1457
        &p_1478->g_1457, // p_1478->g_1456
        sequence_input[get_global_id(0)], // p_1478->global_0_offset
        sequence_input[get_global_id(1)], // p_1478->global_1_offset
        sequence_input[get_global_id(2)], // p_1478->global_2_offset
        sequence_input[get_local_id(0)], // p_1478->local_0_offset
        sequence_input[get_local_id(1)], // p_1478->local_1_offset
        sequence_input[get_local_id(2)], // p_1478->local_2_offset
        sequence_input[get_group_id(0)], // p_1478->group_0_offset
        sequence_input[get_group_id(1)], // p_1478->group_1_offset
        sequence_input[get_group_id(2)], // p_1478->group_2_offset
    };
    c_1479 = c_1480;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1478);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1478->g_2, "p_1478->g_2", print_hash_value);
    transparent_crc(p_1478->g_4, "p_1478->g_4", print_hash_value);
    transparent_crc(p_1478->g_7, "p_1478->g_7", print_hash_value);
    transparent_crc(p_1478->g_8, "p_1478->g_8", print_hash_value);
    transparent_crc(p_1478->g_74, "p_1478->g_74", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1478->g_76[i], "p_1478->g_76[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1478->g_77[i][j][k], "p_1478->g_77[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1478->g_83, "p_1478->g_83", print_hash_value);
    transparent_crc(p_1478->g_91, "p_1478->g_91", print_hash_value);
    transparent_crc(p_1478->g_102, "p_1478->g_102", print_hash_value);
    transparent_crc(p_1478->g_104, "p_1478->g_104", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1478->g_106[i], "p_1478->g_106[i]", print_hash_value);

    }
    transparent_crc(p_1478->g_139, "p_1478->g_139", print_hash_value);
    transparent_crc(p_1478->g_140, "p_1478->g_140", print_hash_value);
    transparent_crc(p_1478->g_164, "p_1478->g_164", print_hash_value);
    transparent_crc(p_1478->g_165, "p_1478->g_165", print_hash_value);
    transparent_crc(p_1478->g_212, "p_1478->g_212", print_hash_value);
    transparent_crc(p_1478->g_223, "p_1478->g_223", print_hash_value);
    transparent_crc(p_1478->g_224, "p_1478->g_224", print_hash_value);
    transparent_crc(p_1478->g_237, "p_1478->g_237", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1478->g_253[i][j], "p_1478->g_253[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1478->g_256, "p_1478->g_256", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1478->g_304[i][j][k], "p_1478->g_304[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1478->g_307, "p_1478->g_307", print_hash_value);
    transparent_crc(p_1478->g_312, "p_1478->g_312", print_hash_value);
    transparent_crc(p_1478->g_318, "p_1478->g_318", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1478->g_348[i][j], "p_1478->g_348[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1478->g_408, "p_1478->g_408", print_hash_value);
    transparent_crc(p_1478->g_427, "p_1478->g_427", print_hash_value);
    transparent_crc(p_1478->g_445, "p_1478->g_445", print_hash_value);
    transparent_crc(p_1478->g_493, "p_1478->g_493", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1478->g_534[i], "p_1478->g_534[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1478->g_540[i][j], "p_1478->g_540[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1478->g_597, "p_1478->g_597", print_hash_value);
    transparent_crc(p_1478->g_688, "p_1478->g_688", print_hash_value);
    transparent_crc(p_1478->g_697, "p_1478->g_697", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1478->g_698[i][j][k], "p_1478->g_698[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1478->g_699, "p_1478->g_699", print_hash_value);
    transparent_crc(p_1478->g_700, "p_1478->g_700", print_hash_value);
    transparent_crc(p_1478->g_732, "p_1478->g_732", print_hash_value);
    transparent_crc(p_1478->g_740, "p_1478->g_740", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1478->g_747[i], "p_1478->g_747[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1478->g_799[i][j], "p_1478->g_799[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1478->g_870, "p_1478->g_870", print_hash_value);
    transparent_crc(p_1478->g_871, "p_1478->g_871", print_hash_value);
    transparent_crc(p_1478->g_872, "p_1478->g_872", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1478->g_873[i], "p_1478->g_873[i]", print_hash_value);

    }
    transparent_crc(p_1478->g_949, "p_1478->g_949", print_hash_value);
    transparent_crc(p_1478->g_1065, "p_1478->g_1065", print_hash_value);
    transparent_crc(p_1478->g_1105, "p_1478->g_1105", print_hash_value);
    transparent_crc(p_1478->g_1214, "p_1478->g_1214", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1478->g_1282[i][j][k], "p_1478->g_1282[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1478->g_1301, "p_1478->g_1301", print_hash_value);
    transparent_crc(p_1478->g_1406, "p_1478->g_1406", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
