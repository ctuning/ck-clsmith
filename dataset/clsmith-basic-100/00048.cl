// ---fake_divergence -g 3017,1,2 -l 7,1,1
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


// Seed: 48

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   uint8_t  f1;
   volatile int32_t  f2;
   uint32_t  f3;
   volatile uint8_t  f4;
};

struct S1 {
    volatile uint32_t g_8;
    int8_t g_12;
    int64_t g_46;
    int32_t *g_66;
    int32_t g_90;
    int64_t g_93;
    uint64_t g_95;
    int32_t g_97;
    int16_t g_107;
    uint64_t g_108;
    int32_t *g_113;
    int8_t g_128;
    int8_t *g_127;
    uint32_t g_131[8][3];
    uint16_t g_134;
    int32_t g_140[10];
    int16_t g_141[7][4][3];
    int32_t g_142[6][7][5];
    int16_t g_143[8];
    uint64_t g_145;
    uint64_t g_148;
    uint32_t *g_201;
    uint32_t **g_200;
    uint8_t g_246;
    volatile int8_t * volatile g_264;
    volatile int8_t * volatile *g_263[4];
    volatile int8_t * volatile **g_262[8];
    int32_t g_283[10];
    uint32_t g_332;
    uint8_t g_340;
    int32_t g_431;
    uint8_t *g_447;
    int32_t g_463;
    int32_t g_497[1];
    int64_t g_510;
    int32_t **g_512;
    int32_t ***g_511;
    uint16_t g_526;
    uint32_t g_530;
    int32_t * volatile *g_567;
    int64_t g_569[7];
    int8_t g_585;
    int8_t *g_607[1][7];
    union U0 g_797;
    union U0 g_800;
    uint32_t g_815;
    volatile int64_t * volatile *g_842;
    volatile int64_t * volatile **g_841[2][9][9];
    volatile int64_t * volatile ** volatile *g_840;
    uint8_t ** volatile *g_896;
    union U0 g_900;
    union U0 g_901;
    int64_t *g_920;
    int64_t **g_919;
    int64_t ***g_918[6][5][1];
    int64_t ****g_917;
    uint16_t *g_929;
    uint32_t g_1079;
    uint8_t **g_1085[8];
    volatile int32_t g_1106;
    volatile int32_t g_1107;
    volatile int32_t g_1108;
    volatile int32_t g_1109;
    volatile int32_t g_1110;
    volatile int32_t *g_1105[10];
    volatile int32_t g_1112;
    uint16_t g_1149;
    int64_t g_1191;
    union U0 g_1234[2][3][8];
    union U0 g_1236;
    uint32_t g_1267;
    uint16_t g_1296;
    int32_t g_1363[1][8][2];
    union U0 *g_1437;
    union U0 * volatile *g_1436;
    union U0 * volatile * volatile *g_1435;
    uint64_t g_1478;
    int8_t **g_1488;
    int8_t *** volatile g_1487[5][2];
    int32_t ** volatile g_1491[8];
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
uint16_t  func_1(struct S1 * p_1493);
int64_t  func_2(int32_t  p_3, int32_t  p_4, int8_t  p_5, struct S1 * p_1493);
uint16_t  func_9(int32_t  p_10, int8_t  p_11, struct S1 * p_1493);
uint32_t  func_22(uint32_t  p_23, struct S1 * p_1493);
uint64_t  func_24(int32_t  p_25, uint8_t  p_26, uint8_t  p_27, struct S1 * p_1493);
uint8_t  func_28(uint64_t  p_29, int64_t  p_30, uint64_t  p_31, uint32_t  p_32, uint8_t  p_33, struct S1 * p_1493);
int32_t  func_36(uint16_t  p_37, int32_t  p_38, int32_t  p_39, int16_t  p_40, int32_t  p_41, struct S1 * p_1493);
int16_t  func_49(int64_t * p_50, uint8_t  p_51, uint32_t  p_52, uint32_t  p_53, struct S1 * p_1493);
uint16_t  func_54(int64_t * p_55, int32_t  p_56, int32_t  p_57, struct S1 * p_1493);
int64_t * func_58(int64_t  p_59, struct S1 * p_1493);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1493->g_90
 * writes:
 */
uint16_t  func_1(struct S1 * p_1493)
{ /* block id: 4 */
    int64_t l_21 = 0x5D7770B168F928D9L;
    int64_t *l_44 = (void*)0;
    int64_t *l_45 = &p_1493->g_46;
    int16_t *l_1137 = &p_1493->g_141[5][2][1];
    uint64_t l_1138 = 0xBFEA93625B6C6F8BL;
    int32_t *l_1139 = &p_1493->g_463;
    uint16_t l_1369 = 0xA2F5L;
    int32_t ***l_1391 = (void*)0;
    int32_t l_1397 = 0x09386F8FL;
    int32_t l_1400 = 0L;
    int32_t l_1410 = 3L;
    uint8_t ***l_1433 = &p_1493->g_1085[1];
    uint32_t l_1455[4][4][4] = {{{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL}},{{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL}},{{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL}},{{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL},{0x33B44499L,0x33B44499L,0xD5D7A5CDL,1UL}}};
    int16_t l_1479 = 0x03F0L;
    int32_t l_1485 = 6L;
    int8_t **l_1486 = &p_1493->g_607[0][0];
    int32_t *l_1490 = &p_1493->g_90;
    int32_t **l_1492 = &p_1493->g_66;
    int i, j, k;
    return (*l_1490);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_2(int32_t  p_3, int32_t  p_4, int8_t  p_5, struct S1 * p_1493)
{ /* block id: 736 */
    int32_t *l_1367 = (void*)0;
    int32_t *l_1368[8] = {&p_1493->g_463,&p_1493->g_463,&p_1493->g_463,&p_1493->g_463,&p_1493->g_463,&p_1493->g_463,&p_1493->g_463,&p_1493->g_463};
    int i;
    p_3 &= 1L;
    return p_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1493->g_134 p_1493->g_143 p_1493->g_97 p_1493->g_127 p_1493->g_128 p_1493->g_1149 p_1493->g_447 p_1493->g_340 p_1493->g_201 p_1493->g_131 p_1493->g_463 p_1493->g_929 p_1493->g_526 p_1493->g_246 p_1493->g_1191 p_1493->g_141 p_1493->g_93 p_1493->g_90 p_1493->g_142 p_1493->g_1085 p_1493->g_815 p_1493->g_1267 p_1493->g_1296 p_1493->g_200 p_1493->g_66 p_1493->g_800.f3 p_1493->g_567 p_1493->g_108 p_1493->g_1363
 * writes: p_1493->g_134 p_1493->g_128 p_1493->g_463 p_1493->g_340 p_1493->g_90 p_1493->g_93 p_1493->g_107 p_1493->g_143 p_1493->g_97 p_1493->g_431 p_1493->g_526 p_1493->g_1296 p_1493->g_66 p_1493->g_800.f3 p_1493->g_141 p_1493->g_1149 p_1493->g_815
 */
uint16_t  func_9(int32_t  p_10, int8_t  p_11, struct S1 * p_1493)
{ /* block id: 607 */
    uint16_t *l_1168 = &p_1493->g_1149;
    int32_t l_1169 = 0x78E71D6EL;
    int32_t l_1170[3];
    uint64_t l_1199 = 0x73788C65D996B1E7L;
    union U0 *l_1233 = &p_1493->g_1234[1][0][1];
    int32_t *l_1239[4] = {&p_1493->g_283[8],&p_1493->g_283[8],&p_1493->g_283[8],&p_1493->g_283[8]};
    int32_t l_1349[4][1][6] = {{{0x69F3B7D9L,0x676E4114L,0x36B67D0FL,0x676E4114L,0x69F3B7D9L,0x69F3B7D9L}},{{0x69F3B7D9L,0x676E4114L,0x36B67D0FL,0x676E4114L,0x69F3B7D9L,0x69F3B7D9L}},{{0x69F3B7D9L,0x676E4114L,0x36B67D0FL,0x676E4114L,0x69F3B7D9L,0x69F3B7D9L}},{{0x69F3B7D9L,0x676E4114L,0x36B67D0FL,0x676E4114L,0x69F3B7D9L,0x69F3B7D9L}}};
    uint32_t l_1358 = 0x77B6A761L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1170[i] = 0x6D0D446AL;
    for (p_1493->g_134 = (-25); (p_1493->g_134 <= 51); ++p_1493->g_134)
    { /* block id: 610 */
        int32_t l_1148 = 0x3DD36039L;
        int32_t *l_1201[9][4][5] = {{{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0}},{{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0}},{{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0}},{{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0}},{{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0}},{{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0}},{{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0}},{{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0}},{{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0},{&l_1170[1],&l_1170[2],(void*)0,&p_1493->g_283[7],(void*)0}}};
        int32_t *l_1202 = &p_1493->g_283[6];
        uint8_t l_1208[8] = {0x33L,0x33L,0x33L,0x33L,0x33L,0x33L,0x33L,0x33L};
        uint64_t l_1261 = 8UL;
        uint16_t l_1338 = 0UL;
        int i, j, k;
        for (p_11 = 0; (p_11 >= 0); p_11 -= 1)
        { /* block id: 613 */
            int32_t *l_1150 = &p_1493->g_463;
            int32_t l_1163 = 0x39B3E350L;
            int64_t **l_1215 = &p_1493->g_920;
            int16_t l_1224 = 0L;
            union U0 *l_1235 = &p_1493->g_1236;
            int i;
            (*l_1150) = (safe_mod_func_int16_t_s_s((safe_div_func_int8_t_s_s(p_1493->g_143[(p_11 + 7)], ((p_1493->g_97 | (safe_mod_func_int8_t_s_s(((*p_1493->g_127) |= 0x23L), 0x19L))) || l_1148))), p_1493->g_1149));
            if (p_10)
                break;
            l_1170[2] ^= (safe_add_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((0xEE133EBEL | p_10), 6)), (l_1148 < (((safe_div_func_uint64_t_u_u((l_1148 || (safe_mul_func_int16_t_s_s((((safe_sub_func_int32_t_s_s(9L, ((safe_mul_func_uint8_t_u_u((--(*p_1493->g_447)), (safe_mod_func_int8_t_s_s((l_1168 == (void*)0), ((p_10 <= (l_1169 && (*p_1493->g_201))) || 0x52L))))) , l_1169))) < p_10) & (*l_1150)), (*p_1493->g_929)))), 0x957D540E76B0A161L)) , 0x1632L) != p_1493->g_246))));
            for (p_1493->g_90 = 0; (p_1493->g_90 >= 0); p_1493->g_90 -= 1)
            { /* block id: 621 */
                int32_t l_1194 = 0x66869C37L;
                int32_t **l_1200[6][8] = {{&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66,&p_1493->g_66}};
                uint8_t ***l_1205 = &p_1493->g_1085[1];
                int i, j, k;
                l_1202 = (l_1201[5][2][1] = ((safe_mod_func_int32_t_s_s(((safe_rshift_func_int8_t_s_u((l_1170[2] , (safe_rshift_func_int8_t_s_s(((safe_sub_func_uint32_t_u_u((safe_add_func_uint16_t_u_u(((*l_1150) , (safe_rshift_func_uint16_t_u_s((p_10 < (safe_lshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_s((safe_add_func_uint16_t_u_u(((((p_1493->g_1191 , (+p_1493->g_463)) & ((safe_div_func_int32_t_s_s(((l_1194 <= p_11) > (safe_add_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(p_11, l_1194)), p_1493->g_141[5][3][2]))), (*p_1493->g_201))) < l_1199)) ^ 250UL) || l_1170[2]), 0UL)), 6)), (*p_1493->g_127))), 6))), p_1493->g_143[2]))), p_10)), 0x30B07448L)) < 0xC3C4L), p_11))), 1)) != (*l_1150)), l_1194)) , &l_1194));
                (*l_1202) |= 0L;
                for (p_1493->g_93 = 5; (p_1493->g_93 >= 0); p_1493->g_93 -= 1)
                { /* block id: 627 */
                    int16_t *l_1231 = &p_1493->g_107;
                    int16_t *l_1232 = &p_1493->g_143[1];
                    int i, j, k;
                    for (p_1493->g_128 = 6; (p_1493->g_128 >= 2); p_1493->g_128 -= 1)
                    { /* block id: 630 */
                        uint8_t *l_1216 = (void*)0;
                        int32_t l_1217 = 0x079ADA3DL;
                        int i, j, k;
                        if (p_1493->g_142[p_1493->g_93][(p_1493->g_90 + 5)][(p_1493->g_90 + 1)])
                            break;
                        (*l_1150) = (safe_mul_func_uint8_t_u_u(((void*)0 != l_1205), ((&p_1493->g_510 != (void*)0) | ((((***l_1205) = (l_1217 ^= (((safe_lshift_func_uint8_t_u_u(l_1208[5], (*l_1150))) != (safe_mod_func_int64_t_s_s(((safe_rshift_func_int16_t_s_u((safe_sub_func_uint8_t_u_u((*p_1493->g_447), ((void*)0 != l_1215))), p_10)) == 0x45FF894C8E85B555L), l_1170[2]))) != p_10))) > 0xD4L) < 0x75L))));
                    }
                    (*l_1150) &= (-1L);
                    p_10 = ((safe_lshift_func_int16_t_s_s(p_1493->g_815, ((*l_1232) = ((*l_1231) = ((0xA0C589E0L || (safe_mod_func_int16_t_s_s(((((*p_1493->g_127) &= (safe_mod_func_uint32_t_u_u(((l_1224 <= (safe_mod_func_int16_t_s_s(((*p_1493->g_929) , ((safe_add_func_int16_t_s_s((FAKE_DIVERGE(p_1493->group_2_offset, get_group_id(2), 10) != (0x5323L | ((void*)0 != &p_1493->g_1085[0]))), (safe_mul_func_int8_t_s_s(l_1170[0], ((*p_1493->g_447) = p_10))))) && p_1493->g_142[5][3][2])), p_11))) , 1UL), (*l_1202)))) >= (-1L)) | p_10), 0x3643L))) == (-5L)))))) , l_1199);
                }
                for (p_1493->g_97 = 0; (p_1493->g_97 <= 6); p_1493->g_97 += 1)
                { /* block id: 645 */
                    (1 + 1);
                }
            }
        }
        for (p_1493->g_431 = 0; (p_1493->g_431 != (-22)); p_1493->g_431--)
        { /* block id: 662 */
            uint64_t l_1244[5][7] = {{0UL,0UL,0UL,0x4B57F3039DFD198CL,0x667B55ED44D53F94L,0xD6D0923F96862F87L,0xE78423A0793C9F21L},{0UL,0UL,0UL,0x4B57F3039DFD198CL,0x667B55ED44D53F94L,0xD6D0923F96862F87L,0xE78423A0793C9F21L},{0UL,0UL,0UL,0x4B57F3039DFD198CL,0x667B55ED44D53F94L,0xD6D0923F96862F87L,0xE78423A0793C9F21L},{0UL,0UL,0UL,0x4B57F3039DFD198CL,0x667B55ED44D53F94L,0xD6D0923F96862F87L,0xE78423A0793C9F21L},{0UL,0UL,0UL,0x4B57F3039DFD198CL,0x667B55ED44D53F94L,0xD6D0923F96862F87L,0xE78423A0793C9F21L}};
            int32_t l_1269 = 0L;
            int32_t l_1289 = (-1L);
            int32_t l_1290 = 0x719C8966L;
            int32_t l_1348[7][8][4] = {{{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L}},{{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L}},{{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L}},{{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L}},{{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L}},{{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L}},{{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L},{(-1L),8L,0x0208EA35L,0x2D681782L}}};
            int32_t l_1354 = (-10L);
            int32_t l_1355 = 0x03657F17L;
            int16_t l_1356 = 1L;
            int32_t l_1357[7] = {6L,6L,6L,6L,6L,6L,6L};
            int i, j, k;
            l_1239[3] = &l_1170[0];
            for (p_1493->g_526 = 4; (p_1493->g_526 <= 21); ++p_1493->g_526)
            { /* block id: 666 */
                return (*p_1493->g_929);
            }
            for (p_1493->g_90 = (-23); (p_1493->g_90 >= (-7)); ++p_1493->g_90)
            { /* block id: 671 */
                uint16_t l_1249 = 0UL;
                int32_t l_1251 = 6L;
                int32_t l_1270 = 4L;
                int32_t l_1273 = 0x57ACD9F1L;
                int32_t l_1279 = 0x2684106CL;
                int32_t l_1281 = 2L;
                int32_t l_1282 = 1L;
                int32_t l_1286[10][2][5] = {{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}},{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}},{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}},{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}},{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}},{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}},{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}},{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}},{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}},{{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)},{(-1L),(-6L),0x2BC6B670L,(-6L),(-1L)}}};
                union U0 **l_1314[8][1] = {{&l_1233},{&l_1233},{&l_1233},{&l_1233},{&l_1233},{&l_1233},{&l_1233},{&l_1233}};
                union U0 ***l_1313 = &l_1314[0][0];
                int32_t l_1317 = 0x7917A7A3L;
                int32_t l_1339[5];
                int32_t l_1340 = 0x1AFFE7D8L;
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_1339[i] = (-1L);
                ++l_1244[2][2];
                if (p_11)
                { /* block id: 673 */
                    int32_t *l_1250[9][5] = {{&l_1170[0],&p_1493->g_90,&p_1493->g_90,&p_1493->g_90,&l_1170[0]},{&l_1170[0],&p_1493->g_90,&p_1493->g_90,&p_1493->g_90,&l_1170[0]},{&l_1170[0],&p_1493->g_90,&p_1493->g_90,&p_1493->g_90,&l_1170[0]},{&l_1170[0],&p_1493->g_90,&p_1493->g_90,&p_1493->g_90,&l_1170[0]},{&l_1170[0],&p_1493->g_90,&p_1493->g_90,&p_1493->g_90,&l_1170[0]},{&l_1170[0],&p_1493->g_90,&p_1493->g_90,&p_1493->g_90,&l_1170[0]},{&l_1170[0],&p_1493->g_90,&p_1493->g_90,&p_1493->g_90,&l_1170[0]},{&l_1170[0],&p_1493->g_90,&p_1493->g_90,&p_1493->g_90,&l_1170[0]},{&l_1170[0],&p_1493->g_90,&p_1493->g_90,&p_1493->g_90,&l_1170[0]}};
                    uint32_t l_1252 = 0xC05EF76AL;
                    int i, j;
                    p_1493->g_97 |= (safe_lshift_func_int16_t_s_u(l_1249, 2));
                    if (p_10)
                    { /* block id: 675 */
                        if (p_10)
                            break;
                        p_10 &= (5UL != 0xA8F358090E5D8F42L);
                    }
                    else
                    { /* block id: 678 */
                        l_1250[6][4] = &p_10;
                        ++l_1252;
                    }
                }
                else
                { /* block id: 682 */
                    int32_t l_1266 = 6L;
                    int32_t l_1274 = 0x24DDFDF4L;
                    int32_t l_1291 = 0L;
                    int32_t l_1292 = 0x0E406EDDL;
                    int32_t l_1294 = 1L;
                    int32_t l_1295[7];
                    union U0 ****l_1315 = (void*)0;
                    union U0 ****l_1316 = &l_1313;
                    int16_t *l_1327 = &p_1493->g_141[6][2][0];
                    int16_t *l_1328 = &p_1493->g_143[1];
                    uint32_t *l_1335[8];
                    int16_t *l_1336 = (void*)0;
                    int16_t *l_1337[2][9] = {{&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107},{&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107,&p_1493->g_107}};
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_1295[i] = 0x69C7049AL;
                    for (i = 0; i < 8; i++)
                        l_1335[i] = &p_1493->g_901.f3;
                    for (l_1148 = (-14); (l_1148 > (-14)); l_1148 = safe_add_func_int16_t_s_s(l_1148, 4))
                    { /* block id: 685 */
                        int32_t l_1268[4];
                        int32_t l_1271 = (-4L);
                        int32_t l_1272 = 5L;
                        int32_t l_1275 = 0x3805678DL;
                        int32_t l_1276 = (-1L);
                        int32_t l_1277 = 0x145F04CDL;
                        int32_t l_1278 = 0x5B5294CCL;
                        int32_t l_1280 = 0x413A75BDL;
                        int32_t l_1283 = 0L;
                        int32_t l_1284 = 0x1AD8A278L;
                        int32_t l_1285 = 0x2664588DL;
                        int32_t l_1287 = 7L;
                        int32_t l_1288 = (-6L);
                        int8_t l_1293[5];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_1268[i] = (-1L);
                        for (i = 0; i < 5; i++)
                            l_1293[i] = 0x79L;
                        p_10 = ((safe_lshift_func_uint16_t_u_u(l_1249, 1)) && (safe_lshift_func_uint16_t_u_s(l_1261, (((((((*p_1493->g_447) = p_11) != ((*p_1493->g_929) , (safe_rshift_func_uint16_t_u_s((l_1244[2][2] >= ((((-7L) & (safe_mul_func_int8_t_s_s(((*p_1493->g_127) = (((255UL > (~l_1266)) , (l_1266 == 0x929FF4B085EEC424L)) , l_1266)), p_10))) , (*p_1493->g_201)) == p_1493->g_1267)), 9)))) || 0L) > l_1249) != 65535UL) ^ l_1268[3]))));
                        p_1493->g_1296++;
                        p_10 = (safe_mod_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(l_1295[3], 18446744073709551615UL)), (safe_lshift_func_int16_t_s_u((safe_div_func_uint8_t_u_u(((*p_1493->g_447) &= l_1286[2][1][4]), GROUP_DIVERGE(0, 1))), 13))));
                    }
                    if ((((p_10 ^ l_1290) & (+(((p_10 < 0x61L) >= ((void*)0 != (*p_1493->g_200))) , (safe_lshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((FAKE_DIVERGE(p_1493->local_0_offset, get_local_id(0), 10) < (18446744073709551614UL == ((((*l_1316) = l_1313) == (void*)0) != l_1269))), (*p_1493->g_127))), FAKE_DIVERGE(p_1493->local_0_offset, get_local_id(0), 10)))))) , l_1317))
                    { /* block id: 694 */
                        int32_t **l_1318 = &p_1493->g_66;
                        (*l_1318) = &p_10;
                        (*p_1493->g_66) ^= (safe_rshift_func_uint8_t_u_u((p_11 , 0x16L), 3));
                    }
                    else
                    { /* block id: 697 */
                        if (l_1289)
                            break;
                    }
                    for (p_1493->g_800.f3 = (-7); (p_1493->g_800.f3 > 50); p_1493->g_800.f3 = safe_add_func_int32_t_s_s(p_1493->g_800.f3, 2))
                    { /* block id: 702 */
                        return l_1244[4][5];
                    }
                    l_1282 &= (((0x33129A784C94932AL && ((l_1340 = ((((safe_sub_func_int8_t_s_s((l_1281 , ((*p_1493->g_127) = (safe_div_func_int16_t_s_s(((*l_1328) = ((*l_1327) = 0x0D08L)), (((((*p_1493->g_201) & (p_1493->g_97 = (l_1274 = ((safe_mul_func_int16_t_s_s((l_1295[1] ^= ((((((l_1317 <= p_11) >= (p_1493->g_1149 , (l_1286[5][0][2] = ((l_1291 = p_10) == ((*l_1168) = (safe_rshift_func_int8_t_s_u((((l_1270 = (safe_mul_func_uint8_t_u_u(p_11, p_11))) < 1L) ^ p_11), p_11))))))) , p_1493->g_567) == p_1493->g_567) > p_11) , p_1493->g_108)), p_10)) && 0x7A110615L)))) == p_10) && FAKE_DIVERGE(p_1493->group_1_offset, get_group_id(1), 10)) , p_11))))), p_10)) < l_1338) == l_1339[3]) == l_1290)) ^ p_10)) , l_1295[3]) >= p_10);
                }
                return l_1249;
            }
            for (p_1493->g_815 = 0; (p_1493->g_815 == 27); p_1493->g_815 = safe_add_func_uint32_t_u_u(p_1493->g_815, 8))
            { /* block id: 722 */
                uint16_t l_1343 = 0x2C32L;
                int32_t l_1346 = 5L;
                int32_t l_1347 = 0L;
                int32_t l_1350 = 0x33D428F1L;
                int32_t l_1351 = 0x56023BFBL;
                int16_t l_1352 = 0x06B1L;
                int32_t l_1353[3];
                int32_t *l_1366 = &p_1493->g_431;
                int32_t **l_1365 = &l_1366;
                int32_t ***l_1364 = &l_1365;
                int i;
                for (i = 0; i < 3; i++)
                    l_1353[i] = 0x34988208L;
                l_1343--;
                l_1358--;
                for (l_1356 = (-15); (l_1356 != 13); ++l_1356)
                { /* block id: 727 */
                    return p_1493->g_1363[0][5][0];
                }
                (*l_1364) = (void*)0;
            }
        }
    }
    return (*p_1493->g_929);
}


/* ------------------------------------------ */
/* 
 * reads : p_1493->g_108 p_1493->g_917 p_1493->g_283 p_1493->g_46 p_1493->g_815 p_1493->g_447 p_1493->g_340 p_1493->g_929 p_1493->g_141 p_1493->g_201 p_1493->g_131 p_1493->g_148 p_1493->g_97 p_1493->g_134
 * writes: p_1493->g_917 p_1493->g_90 p_1493->g_46 p_1493->g_815 p_1493->g_526 p_1493->g_141 p_1493->g_97 p_1493->g_134
 */
uint32_t  func_22(uint32_t  p_23, struct S1 * p_1493)
{ /* block id: 465 */
    union U0 *l_899[4] = {&p_1493->g_900,&p_1493->g_900,&p_1493->g_900,&p_1493->g_900};
    union U0 **l_902 = &l_899[3];
    int32_t l_905 = 0x18937524L;
    int64_t *l_914 = &p_1493->g_510;
    int64_t **l_915 = &l_914;
    int64_t *l_916 = (void*)0;
    int64_t *****l_921 = &p_1493->g_917;
    int32_t l_922[4];
    int32_t l_923 = 0x6EEB155CL;
    int32_t *l_924 = &p_1493->g_90;
    int32_t l_934[9] = {0x31722AFBL,1L,0x31722AFBL,0x31722AFBL,1L,0x31722AFBL,0x31722AFBL,1L,0x31722AFBL};
    int8_t l_1034 = (-3L);
    uint8_t l_1041 = 0xE6L;
    int32_t *l_1069 = &p_1493->g_90;
    int i;
    for (i = 0; i < 4; i++)
        l_922[i] = 0x103ADC30L;
    (*l_902) = l_899[2];
    (*l_924) = (l_905 = (safe_mul_func_int8_t_s_s(l_905, (safe_sub_func_uint64_t_u_u((((safe_rshift_func_int8_t_s_u(1L, 4)) >= (((l_923 = (safe_lshift_func_uint8_t_u_s((l_905 ^ (p_1493->g_108 || (((*l_915) = l_914) != l_916))), (l_922[3] = (((*l_921) = p_1493->g_917) == (void*)0))))) != 6UL) < p_1493->g_283[6])) , p_1493->g_108), 0xC0C17F5D11DCDCA0L)))));
    for (p_1493->g_46 = 0; (p_1493->g_46 <= 0); p_1493->g_46 += 1)
    { /* block id: 475 */
        int i;
        return p_1493->g_283[(p_1493->g_46 + 6)];
    }
    for (p_1493->g_815 = 0; (p_1493->g_815 >= 60); p_1493->g_815 = safe_add_func_int16_t_s_s(p_1493->g_815, 9))
    { /* block id: 480 */
        uint16_t l_937 = 6UL;
        int16_t *l_942 = &p_1493->g_141[6][2][0];
        int32_t *l_943 = &p_1493->g_97;
        int32_t ***l_993 = &p_1493->g_512;
        int32_t l_1000 = (-2L);
        int64_t *l_1016 = &p_1493->g_510;
        int32_t l_1058 = 1L;
        int16_t l_1071 = 0x1879L;
        int32_t l_1077 = 0L;
        int32_t l_1078[9];
        volatile int32_t *l_1111 = &p_1493->g_1112;
        uint16_t l_1130 = 0xDA9DL;
        int i;
        for (i = 0; i < 9; i++)
            l_1078[i] = 1L;
        (*l_924) = p_23;
        (*l_943) |= (((*p_1493->g_447) | (safe_mul_func_uint8_t_u_u(((FAKE_DIVERGE(p_1493->group_2_offset, get_group_id(2), 10) >= ((((p_1493->g_929 != (((*l_924) = p_23) , (void*)0)) != p_23) == ((safe_rshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((l_934[8] = (-1L)), (safe_div_func_uint16_t_u_u(((*p_1493->g_929) = GROUP_DIVERGE(1, 1)), p_23)))), ((l_937 , (safe_lshift_func_uint8_t_u_s(((safe_mod_func_int16_t_s_s(((*l_942) &= ((l_937 , 0xDCL) < p_23)), 65531UL)) > 0x2E4A8073L), 6))) >= (*p_1493->g_201)))) != p_23)) || 0UL)) ^ p_1493->g_148), p_23))) <= FAKE_DIVERGE(p_1493->global_2_offset, get_global_id(2), 10));
        for (p_1493->g_134 = 0; (p_1493->g_134 != 11); p_1493->g_134 = safe_add_func_int16_t_s_s(p_1493->g_134, 8))
        { /* block id: 489 */
            uint32_t l_954[8][9][3] = {{{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L}},{{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L}},{{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L}},{{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L}},{{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L}},{{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L}},{{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L}},{{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L},{8UL,0x83BA89FFL,0x360D0FD7L}}};
            int32_t l_963 = (-6L);
            uint64_t *l_964 = (void*)0;
            int64_t **l_989 = &l_916;
            int32_t l_1045[4][9][2] = {{{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL}},{{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL}},{{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL}},{{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL},{0x04EC152BL,0x4B16F1BEL}}};
            int32_t *l_1067 = &l_922[3];
            uint8_t **l_1086 = &p_1493->g_447;
            int32_t *l_1120 = &l_1078[2];
            int32_t *l_1121 = &l_905;
            int32_t *l_1122 = &l_905;
            int32_t *l_1123 = &l_922[3];
            int32_t *l_1124 = &l_1045[3][5][1];
            int32_t *l_1125 = &p_1493->g_90;
            int32_t *l_1126 = &p_1493->g_283[6];
            int32_t *l_1127 = &l_922[3];
            int32_t *l_1128 = &l_1045[0][1][1];
            int32_t *l_1129[10] = {&l_922[3],&l_922[3],&l_922[3],&l_922[3],&l_922[3],&l_922[3],&l_922[3],&l_922[3],&l_922[3],&l_922[3]};
            int i, j, k;
            (1 + 1);
        }
        if (p_23)
            continue;
    }
    return (*p_1493->g_201);
}


/* ------------------------------------------ */
/* 
 * reads : p_1493->g_431 p_1493->g_840 p_1493->g_97 p_1493->g_95 p_1493->g_140 p_1493->g_93 p_1493->g_201 p_1493->g_131 p_1493->g_200 p_1493->g_127 p_1493->g_128 p_1493->g_246 p_1493->g_463 p_1493->g_143 p_1493->g_141 p_1493->g_510 p_1493->g_896 p_1493->g_66 p_1493->g_800.f3
 * writes: p_1493->g_431 p_1493->g_97 p_1493->g_141 p_1493->g_800.f3 p_1493->g_95 p_1493->g_815 p_1493->g_131 p_1493->g_128 p_1493->g_463 p_1493->g_510 p_1493->g_66
 */
uint64_t  func_24(int32_t  p_25, uint8_t  p_26, uint8_t  p_27, struct S1 * p_1493)
{ /* block id: 366 */
    int32_t *l_775 = &p_1493->g_97;
    int64_t l_785[2][9] = {{(-6L),0x1BB625E7202777B0L,0x1BB625E7202777B0L,(-6L),(-6L),0x1BB625E7202777B0L,0x1BB625E7202777B0L,(-6L),(-6L)},{(-6L),0x1BB625E7202777B0L,0x1BB625E7202777B0L,(-6L),(-6L),0x1BB625E7202777B0L,0x1BB625E7202777B0L,(-6L),(-6L)}};
    int64_t *l_792 = (void*)0;
    int64_t **l_791 = &l_792;
    union U0 *l_799 = &p_1493->g_800;
    int32_t l_824 = 0x39CE3DBCL;
    int32_t l_825 = 0x6F69FF30L;
    int32_t l_828 = 0x18235C5CL;
    int32_t l_829 = (-1L);
    int32_t l_877 = 0x7CF002DAL;
    int32_t l_880 = 0L;
    int32_t l_881 = 0x148162ADL;
    int32_t l_884 = 0L;
    int32_t l_885 = 0x1BA3982FL;
    int32_t l_886 = (-1L);
    int64_t *l_893 = &p_1493->g_510;
    uint8_t **l_895 = (void*)0;
    uint8_t ***l_894[10][10] = {{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895},{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895},{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895},{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895},{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895},{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895},{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895},{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895},{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895},{&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895,&l_895}};
    int32_t **l_897 = &p_1493->g_66;
    int i, j;
    for (p_1493->g_431 = (-24); (p_1493->g_431 >= 25); ++p_1493->g_431)
    { /* block id: 369 */
        int32_t *l_777 = (void*)0;
        int32_t l_782 = 3L;
        int32_t l_788 = 0x78658E21L;
        int64_t **l_794 = &l_792;
        union U0 *l_796 = &p_1493->g_797;
        int32_t l_827 = 0L;
        int32_t l_830 = 0x3820E806L;
        uint16_t l_873 = 65535UL;
        for (p_1493->g_97 = 0; (p_1493->g_97 <= 7); p_1493->g_97 += 1)
        { /* block id: 372 */
            int32_t **l_776 = &l_775;
            int64_t *l_787 = &p_1493->g_569[5];
            int64_t **l_786 = &l_787;
            int32_t l_808[9][10][2] = {{{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL}},{{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL}},{{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL}},{{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL}},{{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL}},{{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL}},{{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL}},{{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL}},{{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL},{0x06C8E0C7L,0x1DC8596CL}}};
            uint32_t l_810 = 0x147875D5L;
            uint16_t l_831 = 0UL;
            int i, j, k;
            (1 + 1);
        }
        for (l_825 = 14; (l_825 > 0); l_825 = safe_sub_func_int64_t_s_s(l_825, 1))
        { /* block id: 426 */
            int16_t *l_845 = &p_1493->g_141[1][2][1];
            int32_t l_846 = 1L;
            uint16_t *l_847[1][6] = {{&p_1493->g_526,&p_1493->g_526,&p_1493->g_526,&p_1493->g_526,&p_1493->g_526,&p_1493->g_526}};
            int32_t l_879[9] = {0x17F70D11L,0x17F70D11L,0x17F70D11L,0x17F70D11L,0x17F70D11L,0x17F70D11L,0x17F70D11L,0x17F70D11L,0x17F70D11L};
            int64_t l_882[9][1];
            int i, j;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 1; j++)
                    l_882[i][j] = 1L;
            }
            if (p_26)
                break;
            (*l_775) = ((((safe_sub_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u((GROUP_DIVERGE(2, 1) <= 3L), 4)), ((p_1493->g_840 != ((safe_sub_func_uint8_t_u_u(((p_26 & p_25) , ((((*l_845) = ((p_26 & (!p_1493->g_97)) >= 2UL)) , l_846) > (((l_830 = (p_26 ^ 6UL)) == 0x7E08L) == l_846))), 0x57L)) , (void*)0)) ^ 5L))) && p_26) , p_26) | p_27);
            for (p_1493->g_800.f3 = 0; (p_1493->g_800.f3 > 17); p_1493->g_800.f3 = safe_add_func_int16_t_s_s(p_1493->g_800.f3, 4))
            { /* block id: 433 */
                union U0 **l_861 = &l_799;
                int32_t l_866 = 0L;
                int32_t l_883[6];
                uint64_t l_888 = 0x49C6C5086DCACCC8L;
                int i;
                for (i = 0; i < 6; i++)
                    l_883[i] = 0x222F1F65L;
                (*l_775) = l_846;
                if (p_25)
                    goto lbl_898;
                for (p_1493->g_95 = 7; (p_1493->g_95 <= 23); p_1493->g_95++)
                { /* block id: 437 */
                    int8_t l_874 = 0x6DL;
                    int32_t l_876 = 0x3455AFE5L;
                    int32_t l_878[9];
                    int64_t l_887 = 0x6430EFA31B6DAD98L;
                    int i;
                    for (i = 0; i < 9; i++)
                        l_878[i] = 0x04E35B55L;
                    for (l_824 = 6; (l_824 >= 1); l_824 -= 1)
                    { /* block id: 440 */
                        uint32_t *l_852 = (void*)0;
                        uint32_t *l_853 = (void*)0;
                        uint32_t *l_854[8][5] = {{&p_1493->g_797.f0,&p_1493->g_530,&p_1493->g_797.f0,&p_1493->g_815,&p_1493->g_815},{&p_1493->g_797.f0,&p_1493->g_530,&p_1493->g_797.f0,&p_1493->g_815,&p_1493->g_815},{&p_1493->g_797.f0,&p_1493->g_530,&p_1493->g_797.f0,&p_1493->g_815,&p_1493->g_815},{&p_1493->g_797.f0,&p_1493->g_530,&p_1493->g_797.f0,&p_1493->g_815,&p_1493->g_815},{&p_1493->g_797.f0,&p_1493->g_530,&p_1493->g_797.f0,&p_1493->g_815,&p_1493->g_815},{&p_1493->g_797.f0,&p_1493->g_530,&p_1493->g_797.f0,&p_1493->g_815,&p_1493->g_815},{&p_1493->g_797.f0,&p_1493->g_530,&p_1493->g_797.f0,&p_1493->g_815,&p_1493->g_815},{&p_1493->g_797.f0,&p_1493->g_530,&p_1493->g_797.f0,&p_1493->g_815,&p_1493->g_815}};
                        int32_t l_855[10] = {0x2FD4867FL,(-4L),0L,(-4L),0x2FD4867FL,0x2FD4867FL,(-4L),0L,(-4L),0x2FD4867FL};
                        union U0 **l_860 = &l_799;
                        int32_t *l_875[3];
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_875[i] = (void*)0;
                        (*l_775) = ((((p_1493->g_815 = (l_855[9] = p_1493->g_140[(l_824 + 3)])) , (((safe_lshift_func_uint16_t_u_s(l_846, 11)) & (((safe_rshift_func_uint16_t_u_s((l_860 != l_861), ((*l_775) > (((**p_1493->g_200) = (l_866 = (p_26 , ((p_1493->g_93 , ((safe_div_func_int64_t_s_s(((*p_1493->g_201) && (+((safe_mod_func_int64_t_s_s(8L, p_25)) & 0L))), 0x759D127D2E4EA16BL)) < p_25)) <= (**p_1493->g_200))))) , p_26)))) < l_855[9]) ^ (*p_1493->g_127))) | 5UL)) == (*l_775)) <= p_1493->g_246);
                        p_1493->g_463 = (safe_rshift_func_int8_t_s_u(((*p_1493->g_127) &= (l_866 = (((((*l_845) = p_25) >= (safe_rshift_func_int16_t_s_s(l_846, ((*l_775) ^= p_1493->g_93)))) == (p_1493->g_463 > p_1493->g_143[1])) , (safe_div_func_int32_t_s_s((&l_830 != (((l_873 , l_874) , p_1493->g_141[6][2][0]) , &l_866)), 0xB8D05D31L))))), p_1493->g_140[(l_824 + 3)]));
                        if (p_26)
                            break;
                        --l_888;
                    }
                    if (p_27)
                        break;
                }
            }
        }
    }
lbl_898:
    (*l_897) = (((((*l_893) |= (safe_lshift_func_int16_t_s_s(((void*)0 != l_775), p_26))) , l_894[7][5]) == ((*l_775) , p_1493->g_896)) , &l_880);
    (**l_897) |= (-3L);
    (*l_897) = (*l_897);
    return (*l_775);
}


/* ------------------------------------------ */
/* 
 * reads : p_1493->g_463
 * writes: p_1493->g_463 p_1493->g_113 p_1493->g_66
 */
uint8_t  func_28(uint64_t  p_29, int64_t  p_30, uint64_t  p_31, uint32_t  p_32, uint8_t  p_33, struct S1 * p_1493)
{ /* block id: 356 */
    int32_t l_763 = 0x05F239ABL;
    int32_t l_764 = 0L;
    int32_t l_765 = 0x0A4183D7L;
    int32_t l_766 = 0x2485B180L;
    int32_t **l_771 = (void*)0;
    int32_t **l_772 = &p_1493->g_66;
    for (p_1493->g_463 = 19; (p_1493->g_463 != 2); --p_1493->g_463)
    { /* block id: 359 */
        int32_t *l_762[2][2][1];
        uint16_t l_767 = 65535UL;
        int32_t **l_770[10][2][10] = {{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}},{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}},{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}},{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}},{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}},{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}},{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}},{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}},{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}},{{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0},{&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&l_762[1][0][0],&p_1493->g_113,&l_762[1][0][0],&p_1493->g_66,&l_762[1][0][0],&l_762[1][0][0],(void*)0}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 1; k++)
                    l_762[i][j][k] = &p_1493->g_283[6];
            }
        }
        ++l_767;
        p_1493->g_113 = &l_766;
    }
    (*l_772) = (p_1493->g_113 = &l_764);
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_1493->g_12 p_1493->g_46 p_1493->g_66 p_1493->g_113 p_1493->g_90 p_1493->g_200 p_1493->g_201 p_1493->g_107 p_1493->g_140 p_1493->g_97 p_1493->g_93 p_1493->g_134 p_1493->g_246 p_1493->g_145 p_1493->g_131 p_1493->g_262 p_1493->g_128 p_1493->g_127 p_1493->g_142 p_1493->g_141 p_1493->g_108 p_1493->g_95 p_1493->g_148 p_1493->g_340 p_1493->g_332 p_1493->g_143 p_1493->g_526 p_1493->g_511 p_1493->g_512 p_1493->g_530 p_1493->g_463 p_1493->g_567 p_1493->g_569 p_1493->g_447 p_1493->g_283 p_1493->g_431
 * writes: p_1493->g_66 p_1493->g_46 p_1493->g_131 p_1493->g_97 p_1493->g_113 p_1493->g_90 p_1493->g_93 p_1493->g_134 p_1493->g_246 p_1493->g_145 p_1493->g_128 p_1493->g_283 p_1493->g_95 p_1493->g_332 p_1493->g_143 p_1493->g_340 p_1493->g_526 p_1493->g_530 p_1493->g_141 p_1493->g_107 p_1493->g_512 p_1493->g_127 p_1493->g_607 p_1493->g_148
 */
int32_t  func_36(uint16_t  p_37, int32_t  p_38, int32_t  p_39, int16_t  p_40, int32_t  p_41, struct S1 * p_1493)
{ /* block id: 6 */
    int32_t *l_225[9];
    int8_t **l_232 = &p_1493->g_127;
    int8_t l_233 = 0L;
    int32_t l_381 = (-7L);
    int64_t *l_382 = (void*)0;
    int32_t l_456 = 0x60786122L;
    uint64_t l_482 = 18446744073709551615UL;
    int32_t *l_487[7] = {&p_1493->g_283[6],&p_1493->g_97,&p_1493->g_283[6],&p_1493->g_283[6],&p_1493->g_97,&p_1493->g_283[6],&p_1493->g_283[6]};
    int8_t l_571 = (-10L);
    uint8_t *l_589 = &p_1493->g_340;
    int32_t ****l_647 = &p_1493->g_511;
    uint16_t l_731 = 65535UL;
    uint8_t l_756 = 0x27L;
    int32_t l_758 = 0x5361A7A1L;
    int i;
    for (i = 0; i < 9; i++)
        l_225[i] = &p_1493->g_97;
    if ((safe_sub_func_int16_t_s_s((func_49((func_54(func_58((safe_unary_minus_func_uint16_t_u((safe_rshift_func_int16_t_s_u(p_1493->g_12, (p_40 ^ 0x48E8L))))), p_1493), ((((**p_1493->g_200) = (0x52AB83D3L ^ (*p_1493->g_113))) & (l_225[8] != (void*)0)) < (safe_add_func_int16_t_s_s(((safe_mod_func_int32_t_s_s((safe_add_func_uint32_t_u_u((l_232 != l_232), p_40)), p_41)) >= p_39), p_1493->g_107))), l_233, p_1493) , &p_1493->g_46), p_1493->g_108, p_41, p_41, p_1493) , p_39), 0x73ABL)))
    { /* block id: 198 */
        int32_t **l_359 = &l_225[8];
        uint64_t *l_374 = &p_1493->g_95;
        uint32_t *l_377 = &p_1493->g_332;
        int8_t *l_378 = (void*)0;
        int64_t *l_379 = &p_1493->g_93;
        int16_t *l_380 = &p_1493->g_143[1];
        uint8_t *l_387 = &p_1493->g_340;
        uint16_t *l_395 = &p_1493->g_134;
        int16_t *l_423[9] = {&p_1493->g_141[1][1][2],&p_1493->g_141[1][3][2],&p_1493->g_141[1][1][2],&p_1493->g_141[1][1][2],&p_1493->g_141[1][3][2],&p_1493->g_141[1][1][2],&p_1493->g_141[1][1][2],&p_1493->g_141[1][3][2],&p_1493->g_141[1][1][2]};
        int32_t l_467 = 1L;
        int32_t l_475 = 0L;
        int32_t l_476 = 0x1EF61D4EL;
        int32_t l_477 = 4L;
        int32_t l_479[9] = {0x2254722DL,0x2254722DL,0x2254722DL,0x2254722DL,0x2254722DL,0x2254722DL,0x2254722DL,0x2254722DL,0x2254722DL};
        uint64_t l_586 = 0x0002380DD4CF4DD7L;
        int32_t ****l_651 = &p_1493->g_511;
        int8_t l_652[4];
        uint16_t l_694 = 0x5828L;
        int8_t l_725 = 0x1EL;
        int i;
        for (i = 0; i < 4; i++)
            l_652[i] = 0x2AL;
        (*l_359) = l_225[8];
        (**l_359) = ((((((((*l_380) ^= (((((*l_379) |= (((((((safe_lshift_func_uint16_t_u_s((safe_add_func_uint32_t_u_u(((**p_1493->g_200) = ((*l_377) ^= (safe_rshift_func_int8_t_s_s((((~(0x18DDC099L >= (**p_1493->g_200))) == ((safe_div_func_uint64_t_u_u(18446744073709551613UL, (safe_lshift_func_uint8_t_u_u((((safe_div_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((0x7EEDA543L > 2UL), p_40)), ((*l_374) |= FAKE_DIVERGE(p_1493->group_0_offset, get_group_id(0), 10)))) , p_38) < (((((p_1493->g_148 & ((((safe_sub_func_int64_t_s_s(((0L == p_1493->g_340) & (**l_359)), p_37)) <= p_1493->g_142[5][6][4]) , 6UL) || 9UL)) == 255UL) <= p_37) < p_1493->g_90) , 0x20L)), 6)))) ^ p_41)) <= p_41), 5)))), 0x7C1FDB08L)), p_1493->g_108)) ^ p_1493->g_340) , l_378) != &p_1493->g_128) <= p_40) , p_40) & p_40)) & p_41) || 5L) <= p_37)) | l_381) & 6UL) , GROUP_DIVERGE(2, 1)) & p_39) >= (**l_359)) != 0xB328EE41L);
        (*p_1493->g_113) = (l_382 == ((((((*l_395) = (+((safe_sub_func_uint16_t_u_u((((*l_387) = (safe_div_func_uint64_t_u_u(0xB07355C71798C67DL, p_1493->g_143[2]))) <= (safe_lshift_func_uint8_t_u_s(255UL, 6))), (safe_rshift_func_int16_t_s_s(((((++(*l_374)) , (((safe_unary_minus_func_int64_t_s(((*l_379) = p_1493->g_332))) != (**l_359)) >= p_41)) , (*p_1493->g_127)) ^ 0x51L), 15)))) >= p_40))) ^ p_40) , p_1493->g_142[2][0][2]) > FAKE_DIVERGE(p_1493->global_0_offset, get_global_id(0), 10)) , l_382));
        if ((((safe_mul_func_int8_t_s_s(0x2BL, ((void*)0 != l_378))) ^ (safe_add_func_uint8_t_u_u(0x1FL, ((*p_1493->g_127) >= p_1493->g_93)))) , ((safe_mod_func_uint16_t_u_u((GROUP_DIVERGE(2, 1) , ((-1L) || p_39)), (safe_lshift_func_uint8_t_u_u((((void*)0 != &p_40) , 0xE4L), p_1493->g_246)))) >= p_1493->g_95)))
        { /* block id: 211 */
            int16_t l_429 = 1L;
            uint32_t l_445 = 4294967295UL;
            int32_t l_474[2];
            int32_t *l_488 = &l_381;
            int16_t l_524 = 0x3F35L;
            int32_t *l_534 = &p_1493->g_431;
            int32_t **l_533 = &l_534;
            int i;
            for (i = 0; i < 2; i++)
                l_474[i] = 0L;
            for (p_1493->g_46 = (-3); (p_1493->g_46 <= (-3)); p_1493->g_46++)
            { /* block id: 214 */
                int16_t **l_420 = (void*)0;
                int16_t **l_421 = (void*)0;
                int16_t **l_422 = &l_380;
                uint64_t *l_428 = &p_1493->g_108;
                int32_t *l_430 = &p_1493->g_431;
                int32_t l_432 = 7L;
                int32_t l_469 = 1L;
                int32_t l_470 = 0L;
                int32_t l_472 = (-1L);
                int32_t l_480 = 5L;
                int32_t l_481[8][1][1];
                int32_t **l_508 = &l_487[5];
                int64_t *l_509[1];
                int32_t ****l_513 = &p_1493->g_511;
                int32_t ****l_514 = (void*)0;
                int32_t ***l_516 = &l_359;
                int32_t ****l_515 = &l_516;
                int i, j, k;
                for (i = 0; i < 8; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_481[i][j][k] = 8L;
                    }
                }
                for (i = 0; i < 1; i++)
                    l_509[i] = &p_1493->g_510;
                (1 + 1);
            }
            for (p_41 = (-2); (p_41 >= (-2)); ++p_41)
            { /* block id: 266 */
                int64_t l_520 = (-2L);
                int32_t l_522 = (-5L);
                int32_t l_523 = (-1L);
                int32_t l_525[1][2];
                int32_t *l_529 = &l_477;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_525[i][j] = 0x762EF236L;
                }
                for (p_1493->g_332 = 1; (p_1493->g_332 <= 8); p_1493->g_332 += 1)
                { /* block id: 269 */
                    int32_t l_519 = 4L;
                    int32_t l_521[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_521[i] = 1L;
                    p_1493->g_526--;
                    l_529 = (**p_1493->g_511);
                    if ((**l_359))
                        continue;
                    (**p_1493->g_511) = (*p_1493->g_512);
                }
                p_1493->g_530++;
                if (p_41)
                    break;
            }
            (*l_488) &= (((*l_533) = &p_1493->g_431) != (((-8L) && p_1493->g_142[5][6][4]) , l_225[4]));
        }
        else
        { /* block id: 280 */
            int64_t **l_548 = &l_382;
            int64_t ***l_547 = &l_548;
            int32_t l_549 = 5L;
            int32_t l_570 = 0x41313374L;
            int32_t l_575 = 1L;
            int32_t l_580 = 0x636EBCDCL;
            int32_t l_581 = 0x5F03D730L;
            uint8_t *l_591 = &p_1493->g_340;
            int32_t *l_592 = &p_1493->g_431;
            uint32_t l_610 = 0x5121F997L;
            int32_t ****l_650 = &p_1493->g_511;
            (*p_1493->g_113) &= p_38;
            if ((safe_lshift_func_int16_t_s_s(((safe_add_func_int32_t_s_s(((((void*)0 == &l_379) <= ((((GROUP_DIVERGE(2, 1) ^ (p_1493->g_107 &= (safe_mod_func_uint16_t_u_u(((l_382 == (void*)0) >= (&p_40 != ((safe_add_func_uint64_t_u_u(p_1493->g_131[4][1], (((*l_374) = 0x21575A922C990645L) != (((safe_sub_func_int16_t_s_s(p_1493->g_128, (((((safe_rshift_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) , ((p_1493->g_141[6][2][0] = ((*l_380) = (l_547 != &l_548))) || 0xB014L)), p_1493->g_148)) , (**p_1493->g_200)) < p_39) | p_1493->g_128) == p_37))) && GROUP_DIVERGE(2, 1)) >= p_1493->g_463)))) , (void*)0))), p_40)))) > 0UL) == p_37) != 65535UL)) < 0x785DL), l_549)) < GROUP_DIVERGE(0, 1)), p_1493->g_128)))
            { /* block id: 286 */
                int32_t ***l_556 = &l_359;
                int32_t **l_568 = (void*)0;
                int32_t l_572 = 0x72214ABFL;
                int32_t l_576 = 0L;
                int32_t l_577 = 0x74A50C4CL;
                int32_t l_578 = 0x78B428D6L;
                uint32_t l_582 = 0UL;
                if ((safe_div_func_int64_t_s_s((((**l_547) != (void*)0) , ((l_487[6] == l_225[8]) >= (safe_mod_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((*p_1493->g_511) = &l_225[8]) != ((*l_556) = &p_1493->g_66)), (safe_mul_func_uint8_t_u_u(1UL, (((**l_232) = ((safe_sub_func_int32_t_s_s((safe_add_func_int8_t_s_s(((safe_mod_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u(((((*p_1493->g_113) = (p_1493->g_567 == l_568)) > (-1L)) , 0x1CA5D67BL), l_467)) >= 18446744073709551614UL), p_1493->g_569[3])) && l_570), p_41)), p_39)) >= l_549)) && (*p_1493->g_447)))))), p_37)))), p_1493->g_108)))
                { /* block id: 291 */
                    int16_t l_573 = 0x350FL;
                    int32_t l_574[3];
                    int32_t l_579 = 0x7073DC0FL;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_574[i] = (-8L);
                    --l_582;
                    l_586--;
                }
                else
                { /* block id: 294 */
                    (**p_1493->g_511) = &l_580;
                }
            }
            else
            { /* block id: 297 */
                uint8_t **l_590[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t l_608 = 0x157FA2CDL;
                int i;
                (*p_1493->g_113) ^= (((l_589 != (l_591 = l_589)) == p_1493->g_283[6]) , ((p_41 > (l_592 == ((+((*p_1493->g_127) || GROUP_DIVERGE(0, 1))) , &p_38))) & (~((safe_mod_func_int8_t_s_s((*p_1493->g_127), 0xA6L)) , (**l_359)))));
                for (p_1493->g_340 = 0; (p_1493->g_340 <= 3); p_1493->g_340 += 1)
                { /* block id: 302 */
                    int8_t *l_609 = &p_1493->g_12;
                    int i;
                    if (p_1493->g_283[(p_1493->g_340 + 3)])
                        break;
                    if ((((safe_sub_func_uint64_t_u_u(((*l_374) ^= ((safe_sub_func_uint32_t_u_u(0x72955C9BL, (p_1493->g_283[(p_1493->g_340 + 4)] && (safe_mul_func_int16_t_s_s((!((safe_sub_func_uint64_t_u_u((((l_610 = ((safe_mul_func_int8_t_s_s((((safe_add_func_uint16_t_u_u((!0UL), l_581)) ^ (((p_1493->g_607[0][6] = ((*l_232) = &p_1493->g_128)) != (l_608 , l_609)) <= (p_1493->g_93 > p_1493->g_140[5]))) , p_39), 0x73L)) , (*p_1493->g_127))) && p_37) != p_37), p_1493->g_283[(p_1493->g_340 + 3)])) || (**p_1493->g_200))), 0x402DL))))) ^ p_1493->g_431)), p_1493->g_283[(p_1493->g_340 + 4)])) <= p_37) & p_1493->g_283[(p_1493->g_340 + 4)]))
                    { /* block id: 308 */
                        int16_t l_611 = 1L;
                        int i;
                        p_1493->g_283[p_1493->g_340] &= l_611;
                        l_549 |= (safe_mul_func_int16_t_s_s(((p_1493->g_93 , (((--p_1493->g_246) || FAKE_DIVERGE(p_1493->global_1_offset, get_global_id(1), 10)) , (((l_611 && (*p_1493->g_447)) == l_581) > (((*p_1493->g_512) = (*p_1493->g_512)) != &l_381)))) , (((safe_lshift_func_uint8_t_u_s((**l_359), (safe_rshift_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(((-10L) != (7L < 248UL)), p_1493->g_134)) ^ (*p_1493->g_113)), 4)))) , p_40) >= p_37)), FAKE_DIVERGE(p_1493->group_0_offset, get_group_id(0), 10)));
                    }
                    else
                    { /* block id: 313 */
                        (*l_359) = &l_381;
                    }
                }
                for (l_581 = 13; (l_581 > 20); ++l_581)
                { /* block id: 319 */
                    uint64_t **l_628 = &l_374;
                    int32_t l_637 = 0x09225960L;
                    uint64_t **l_638 = (void*)0;
                    uint64_t *l_640 = &p_1493->g_95;
                    uint64_t **l_639 = &l_640;
                    (*p_1493->g_113) &= (p_1493->g_143[1] && (l_575 > (safe_mod_func_uint16_t_u_u(p_38, (((safe_rshift_func_int8_t_s_s(((((*l_628) = &l_586) != ((*l_639) = func_58((l_570 ^ (safe_mul_func_int8_t_s_s((+((**l_232) = p_39)), (((0xCFF8L > (((safe_mul_func_int16_t_s_s(((0UL <= (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((0x0AA1L | p_1493->g_530), p_1493->g_93)), 255UL))) ^ p_41), p_1493->g_12)) != l_637) | (**l_359))) || (**l_359)) > 1L)))), p_1493))) ^ l_580), 4)) != p_37) , 0x28B8L)))));
                    return l_575;
                }
            }
            if ((safe_sub_func_int32_t_s_s(((0UL && ((0x7239L <= (l_575 || ((safe_add_func_int32_t_s_s((p_39 < FAKE_DIVERGE(p_1493->global_0_offset, get_global_id(0), 10)), ((**p_1493->g_200) = (safe_sub_func_uint32_t_u_u((((**p_1493->g_200) || (((((*l_380) = (l_647 == (((safe_rshift_func_uint8_t_u_u((~(*p_1493->g_447)), 2)) , 0x85AE5AB5L) , (l_651 = l_650)))) || p_38) & 4L) > p_38)) == l_570), p_40))))) < 0x25A1B066L))) , p_1493->g_143[7])) , l_652[2]), 0x2BB6F440L)))
            { /* block id: 330 */
                int64_t l_673[5][9] = {{1L,4L,4L,1L,1L,4L,4L,1L,1L},{1L,4L,4L,1L,1L,4L,4L,1L,1L},{1L,4L,4L,1L,1L,4L,4L,1L,1L},{1L,4L,4L,1L,1L,4L,4L,1L,1L},{1L,4L,4L,1L,1L,4L,4L,1L,1L}};
                int i, j;
                (*p_1493->g_113) = (((safe_div_func_int8_t_s_s(p_38, ((**l_232) &= 0x03L))) & (safe_add_func_uint16_t_u_u(p_41, p_1493->g_90))) & (!((+((**p_1493->g_200) >= (safe_sub_func_uint32_t_u_u((safe_div_func_uint64_t_u_u((safe_sub_func_int32_t_s_s((safe_div_func_uint32_t_u_u(((safe_div_func_int32_t_s_s((-10L), (safe_mul_func_uint8_t_u_u((((p_37 <= (safe_sub_func_uint32_t_u_u(1UL, ((safe_add_func_int32_t_s_s(p_41, l_673[0][8])) > 0L)))) != 1L) || 0xD598D1855FB8FD9CL), 0xBDL)))) < 0x5195E5F0L), (*p_1493->g_113))), 4294967293UL)), p_1493->g_569[1])), (*p_1493->g_113))))) >= 0x5BL)));
            }
            else
            { /* block id: 333 */
                int32_t **l_700 = (void*)0;
                uint32_t l_726 = 1UL;
                uint8_t **l_728[5];
                uint8_t ***l_727 = &l_728[2];
                uint8_t **l_730 = &l_591;
                uint8_t ***l_729 = &l_730;
                int i;
                for (i = 0; i < 5; i++)
                    l_728[i] = &l_387;
                for (p_1493->g_148 = 4; (p_1493->g_148 <= 30); p_1493->g_148 = safe_add_func_uint64_t_u_u(p_1493->g_148, 1))
                { /* block id: 336 */
                    int8_t l_682[8][6][1] = {{{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL}},{{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL}},{{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL}},{{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL}},{{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL}},{{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL}},{{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL}},{{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL},{0x4CL}}};
                    int8_t *l_683 = (void*)0;
                    int8_t *l_684 = &l_571;
                    int8_t *l_689 = (void*)0;
                    int8_t *l_690[1][3][7] = {{{&l_233,&l_233,&l_682[7][3][0],&l_652[0],&l_682[0][4][0],&l_652[0],&l_682[7][3][0]},{&l_233,&l_233,&l_682[7][3][0],&l_652[0],&l_682[0][4][0],&l_652[0],&l_682[7][3][0]},{&l_233,&l_233,&l_682[7][3][0],&l_652[0],&l_682[0][4][0],&l_652[0],&l_682[7][3][0]}}};
                    int32_t l_691 = 0L;
                    uint32_t l_695 = 8UL;
                    int i, j, k;
                    l_695 |= ((safe_div_func_int32_t_s_s(((safe_rshift_func_uint16_t_u_s((((0xB3L >= ((**l_232) &= (-2L))) | (safe_mul_func_int16_t_s_s(((((*l_684) = l_682[7][3][0]) >= (safe_lshift_func_int16_t_s_u(((p_1493->g_142[5][6][4] , (p_39 & (safe_rshift_func_uint16_t_u_s(9UL, 1)))) && (l_691 = 0x57L)), ((p_40 ^ ((safe_div_func_uint64_t_u_u((l_591 != (void*)0), 0xE1E7C1B1BE07F681L)) , p_41)) == l_549)))) == 1UL), p_1493->g_131[4][1]))) & (*p_1493->g_113)), 4)) , l_694), (-4L))) & (-1L));
                    l_475 ^= (l_726 = (((GROUP_DIVERGE(1, 1) | (safe_div_func_int16_t_s_s((p_40 & ((((((*p_1493->g_511) = (**l_650)) != l_700) , (safe_rshift_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u(((!(((safe_sub_func_uint32_t_u_u((safe_add_func_uint8_t_u_u((p_1493->g_90 , ((p_38 , ((safe_div_func_int16_t_s_s((FAKE_DIVERGE(p_1493->group_1_offset, get_group_id(1), 10) == 5L), p_1493->g_107)) , (((safe_lshift_func_uint16_t_u_s(p_1493->g_332, (safe_rshift_func_uint16_t_u_u(((safe_add_func_int16_t_s_s((((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), 7)) <= (safe_add_func_uint64_t_u_u((((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s((((((0x4EE1018BFE896D69L ^ 7L) == FAKE_DIVERGE(p_1493->group_1_offset, get_group_id(1), 10)) ^ p_39) , p_1493->g_108) == l_575), p_41)), p_1493->g_93)) <= p_1493->g_134) | (*p_1493->g_201)), 0UL))) , p_1493->g_569[3]), p_1493->g_128)) , p_38), 0)))) == 0x4EL) < 1L))) > p_41)), 0x09L)), (*p_1493->g_201))) , l_725) == 1UL)) < 0UL), p_41)), 11))) , p_41) <= p_38)), 0x2156L))) > 0xD4791CC0L) <= p_1493->g_332));
                }
                (*l_729) = ((*l_727) = &l_591);
            }
        }
    }
    else
    { /* block id: 349 */
        int64_t **l_739 = &l_382;
        int64_t ***l_738 = &l_739;
        int32_t l_750 = 0x485DBDDAL;
        int32_t l_755 = 0x564B527FL;
        uint64_t *l_757 = &p_1493->g_148;
        int32_t l_759 = (-5L);
        l_759 ^= ((l_731 <= (((safe_add_func_uint16_t_u_u((((safe_add_func_uint8_t_u_u((((FAKE_DIVERGE(p_1493->group_0_offset, get_group_id(0), 10) & (((*l_757) = (((safe_mod_func_int32_t_s_s(((void*)0 == l_738), (((safe_add_func_int16_t_s_s(p_40, (((p_1493->g_93 | (GROUP_DIVERGE(0, 1) | (safe_rshift_func_int8_t_s_s((((safe_sub_func_int32_t_s_s((l_750 = ((*p_1493->g_113) = ((safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(4294967287UL, (l_750 != (safe_div_func_int64_t_s_s((1UL | (safe_mul_func_int16_t_s_s(p_1493->g_134, 9L))), p_1493->g_142[4][0][2]))))), 5L)) , p_37))), p_39)) , (void*)0) != &p_1493->g_145), l_755)))) | p_39) , (-1L)))) ^ p_1493->g_97) ^ l_756))) ^ p_1493->g_140[8]) ^ p_40)) || p_1493->g_283[6])) && (**p_1493->g_200)) | l_755), (*p_1493->g_447))) != GROUP_DIVERGE(1, 1)) , p_39), FAKE_DIVERGE(p_1493->group_0_offset, get_group_id(0), 10))) || 0xB16D7D477FF0998DL) , 0x1A6A3FE8L)) <= l_758);
    }
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_1493->g_97
 * writes:
 */
int16_t  func_49(int64_t * p_50, uint8_t  p_51, uint32_t  p_52, uint32_t  p_53, struct S1 * p_1493)
{ /* block id: 196 */
    return p_1493->g_97;
}


/* ------------------------------------------ */
/* 
 * reads : p_1493->g_140 p_1493->g_97 p_1493->g_113 p_1493->g_90 p_1493->g_93 p_1493->g_134 p_1493->g_246 p_1493->g_145 p_1493->g_131 p_1493->g_262 p_1493->g_46 p_1493->g_12 p_1493->g_200 p_1493->g_201 p_1493->g_128 p_1493->g_127 p_1493->g_142 p_1493->g_141
 * writes: p_1493->g_97 p_1493->g_113 p_1493->g_90 p_1493->g_93 p_1493->g_134 p_1493->g_246 p_1493->g_145 p_1493->g_128 p_1493->g_46 p_1493->g_283
 */
uint16_t  func_54(int64_t * p_55, int32_t  p_56, int32_t  p_57, struct S1 * p_1493)
{ /* block id: 102 */
    int32_t *l_238[4][1][1];
    int16_t l_252 = (-1L);
    int64_t *l_301 = &p_1493->g_93;
    uint32_t l_330 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_238[i][j][k] = &p_1493->g_90;
        }
    }
    if ((safe_rshift_func_int16_t_s_s(p_1493->g_140[6], 6)))
    { /* block id: 103 */
        int32_t *l_236 = &p_1493->g_97;
        int32_t **l_237 = &l_236;
        (*l_237) = l_236;
        (*l_236) ^= 0x750E86C6L;
    }
    else
    { /* block id: 106 */
        int32_t **l_239 = &p_1493->g_113;
        (*l_239) = l_238[1][0][0];
        (**l_239) |= 0x797CAD44L;
    }
    for (p_1493->g_93 = 0; (p_1493->g_93 <= 2); p_1493->g_93 += 1)
    { /* block id: 112 */
        uint16_t *l_242 = &p_1493->g_134;
        int32_t l_245 = 0x1F16EABEL;
        int64_t l_266 = 0x1B9BCCF346CF623BL;
        int8_t *l_282[9][6][1] = {{{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12}},{{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12}},{{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12}},{{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12}},{{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12}},{{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12}},{{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12}},{{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12}},{{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12},{&p_1493->g_12}}};
        uint32_t l_284 = 0xDEE3D4D1L;
        int64_t l_353 = 0x1103576593AE9529L;
        int i, j, k;
        (*p_1493->g_113) = (safe_lshift_func_uint16_t_u_s((++(*l_242)), 1));
        --p_1493->g_246;
        for (p_1493->g_145 = 0; (p_1493->g_145 <= 2); p_1493->g_145 += 1)
        { /* block id: 118 */
            int32_t **l_249 = &l_238[1][0][0];
            uint32_t l_254[5];
            int32_t *l_269[7][1][2] = {{{&l_245,&l_245}},{{&l_245,&l_245}},{{&l_245,&l_245}},{{&l_245,&l_245}},{{&l_245,&l_245}},{{&l_245,&l_245}},{{&l_245,&l_245}}};
            int8_t *l_281 = &p_1493->g_128;
            int32_t l_322 = (-7L);
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_254[i] = 1UL;
            (*l_249) = &p_56;
            if (p_1493->g_131[p_1493->g_145][p_1493->g_93])
                continue;
            l_245 &= (safe_rshift_func_int16_t_s_u((**l_249), l_252));
            for (l_252 = 0; (l_252 <= 2); l_252 += 1)
            { /* block id: 124 */
                uint32_t l_265[8] = {0x318213D1L,0x318213D1L,0x318213D1L,0x318213D1L,0x318213D1L,0x318213D1L,0x318213D1L,0x318213D1L};
                int32_t **l_267 = (void*)0;
                int32_t **l_268[9] = {&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113};
                uint32_t **l_276 = (void*)0;
                uint32_t *l_278 = &l_265[0];
                uint32_t **l_277 = &l_278;
                int64_t *l_285 = (void*)0;
                int64_t *l_286 = &l_266;
                int i;
                for (p_57 = 2; (p_57 >= 0); p_57 -= 1)
                { /* block id: 127 */
                    uint64_t l_253 = 5UL;
                    (**l_249) = l_253;
                    l_254[3]--;
                    for (p_1493->g_134 = 1; (p_1493->g_134 <= 4); p_1493->g_134 += 1)
                    { /* block id: 132 */
                        int i;
                        return l_254[p_1493->g_134];
                    }
                    for (p_1493->g_128 = 2; (p_1493->g_128 >= 0); p_1493->g_128 -= 1)
                    { /* block id: 137 */
                        uint8_t l_257 = 0UL;
                        l_257++;
                        (*l_249) = &p_1493->g_90;
                        (**l_249) = (p_56 < ((l_253 <= (safe_sub_func_uint8_t_u_u(((p_57 , p_1493->g_262[0]) == (void*)0), 0x1DL))) == ((l_265[0] ^ l_245) ^ ((*p_55) ^= (l_266 == 65535UL)))));
                        (*l_249) = &p_1493->g_97;
                    }
                }
                (*p_1493->g_113) |= l_266;
                l_269[6][0][1] = (p_1493->g_113 = ((*l_249) = &p_1493->g_90));
                (*p_1493->g_113) = (((*l_286) = ((*p_55) = (FAKE_DIVERGE(p_1493->global_2_offset, get_global_id(2), 10) > (((l_284 |= (p_1493->g_12 > ((((safe_mod_func_int16_t_s_s((18446744073709551608UL | (((void*)0 != p_55) , (((safe_rshift_func_int8_t_s_u(((safe_mul_func_int16_t_s_s(((p_57 == ((*p_1493->g_200) != ((*l_277) = &l_254[4]))) <= p_1493->g_128), ((p_1493->g_283[6] = (safe_lshift_func_uint8_t_u_s((((l_281 != l_282[8][5][0]) == p_57) , l_245), 7))) , 0x55B8L))) , (*p_1493->g_127)), 1)) & p_1493->g_145) ^ p_1493->g_142[2][2][3]))), p_1493->g_141[6][2][0])) <= 0x16988AD6L) == 65528UL) == p_56))) && 0x42L) != p_1493->g_140[8])))) & p_56);
            }
            for (l_245 = 2; (l_245 >= 0); l_245 -= 1)
            { /* block id: 158 */
                uint16_t l_289 = 0x4E01L;
                int32_t **l_296 = &p_1493->g_66;
                for (p_1493->g_246 = 0; (p_1493->g_246 <= 2); p_1493->g_246 += 1)
                { /* block id: 161 */
                    uint64_t l_302 = 0x246675F6B8C41C65L;
                    int32_t *l_303[8][7][4] = {{{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0}},{{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0}},{{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0}},{{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0}},{{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0}},{{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0}},{{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0}},{{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0},{&l_245,&p_1493->g_90,&l_245,(void*)0}}};
                    uint32_t l_356 = 0UL;
                    int i, j, k;
                    (1 + 1);
                }
                if ((*p_1493->g_113))
                    break;
                p_56 = 0x65C46421L;
            }
        }
        return p_57;
    }
    for (p_1493->g_93 = 0; (p_1493->g_93 >= 0); p_1493->g_93 -= 1)
    { /* block id: 191 */
        return p_57;
    }
    (*p_1493->g_113) = p_56;
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads : p_1493->g_46 p_1493->g_66
 * writes: p_1493->g_66 p_1493->g_46
 */
int64_t * func_58(int64_t  p_59, struct S1 * p_1493)
{ /* block id: 7 */
    int8_t l_63[4] = {2L,2L,2L,2L};
    int64_t *l_64 = &p_1493->g_46;
    int8_t *l_65 = &l_63[1];
    int32_t l_102 = 0L;
    int32_t l_106 = 1L;
    uint32_t *l_153[3];
    int64_t *l_188 = &p_1493->g_93;
    int i;
    for (i = 0; i < 3; i++)
        l_153[i] = &p_1493->g_131[7][1];
    for (p_59 = 3; (p_59 >= 0); p_59 -= 1)
    { /* block id: 10 */
        return l_64;
    }
    p_1493->g_66 = ((((*l_65) |= p_1493->g_46) > 0UL) , p_1493->g_66);
    for (p_59 = (-2); (p_59 < (-21)); p_59 = safe_sub_func_int8_t_s_s(p_59, 7))
    { /* block id: 17 */
        int32_t l_71 = 0x739980A6L;
        int32_t l_94 = 0x3DC482A8L;
        int8_t *l_129 = &p_1493->g_128;
        int32_t l_144[8];
        uint32_t *l_151 = (void*)0;
        int8_t **l_162 = &l_65;
        int64_t *l_187 = &p_1493->g_93;
        int32_t **l_208[9][9][3] = {{{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66}},{{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66}},{{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66}},{{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66}},{{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66}},{{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66}},{{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66}},{{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66}},{{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66},{&p_1493->g_113,&p_1493->g_66,&p_1493->g_66}}};
        int32_t **l_211 = &p_1493->g_113;
        int32_t *l_222 = &l_102;
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_144[i] = 0x54CF2364L;
        for (p_1493->g_46 = 15; (p_1493->g_46 != 19); p_1493->g_46++)
        { /* block id: 20 */
            if (l_71)
                break;
        }
        for (p_1493->g_46 = 7; (p_1493->g_46 <= 11); p_1493->g_46 = safe_add_func_uint16_t_u_u(p_1493->g_46, 7))
        { /* block id: 25 */
            uint8_t l_87 = 251UL;
            int32_t *l_100 = &p_1493->g_97;
            int32_t l_103 = 0L;
            int32_t l_104 = 3L;
            int32_t l_132 = 0x739EBEB9L;
            (1 + 1);
        }
    }
    return &p_1493->g_46;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1494;
    struct S1* p_1493 = &c_1494;
    struct S1 c_1495 = {
        0xEC7516A2L, // p_1493->g_8
        (-1L), // p_1493->g_12
        9L, // p_1493->g_46
        (void*)0, // p_1493->g_66
        0x4C4390ACL, // p_1493->g_90
        1L, // p_1493->g_93
        1UL, // p_1493->g_95
        5L, // p_1493->g_97
        0x01FFL, // p_1493->g_107
        18446744073709551615UL, // p_1493->g_108
        &p_1493->g_90, // p_1493->g_113
        (-3L), // p_1493->g_128
        &p_1493->g_128, // p_1493->g_127
        {{0xAE26BD80L,0xAE26BD80L,0xAE26BD80L},{0xAE26BD80L,0xAE26BD80L,0xAE26BD80L},{0xAE26BD80L,0xAE26BD80L,0xAE26BD80L},{0xAE26BD80L,0xAE26BD80L,0xAE26BD80L},{0xAE26BD80L,0xAE26BD80L,0xAE26BD80L},{0xAE26BD80L,0xAE26BD80L,0xAE26BD80L},{0xAE26BD80L,0xAE26BD80L,0xAE26BD80L},{0xAE26BD80L,0xAE26BD80L,0xAE26BD80L}}, // p_1493->g_131
        1UL, // p_1493->g_134
        {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L}, // p_1493->g_140
        {{{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L}},{{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L}},{{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L}},{{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L}},{{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L}},{{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L}},{{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L},{0x0BA3L,1L,0x0BA3L}}}, // p_1493->g_141
        {{{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L}},{{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L}},{{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L}},{{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L}},{{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L}},{{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L},{0x1EC415CAL,0x155C2003L,1L,(-1L),9L}}}, // p_1493->g_142
        {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)}, // p_1493->g_143
        8UL, // p_1493->g_145
        18446744073709551611UL, // p_1493->g_148
        &p_1493->g_131[5][1], // p_1493->g_201
        &p_1493->g_201, // p_1493->g_200
        0xE3L, // p_1493->g_246
        (void*)0, // p_1493->g_264
        {&p_1493->g_264,&p_1493->g_264,&p_1493->g_264,&p_1493->g_264}, // p_1493->g_263
        {&p_1493->g_263[1],&p_1493->g_263[1],&p_1493->g_263[1],&p_1493->g_263[1],&p_1493->g_263[1],&p_1493->g_263[1],&p_1493->g_263[1],&p_1493->g_263[1]}, // p_1493->g_262
        {0x11B0AF79L,(-1L),0x11B0AF79L,0x11B0AF79L,(-1L),0x11B0AF79L,0x11B0AF79L,(-1L),0x11B0AF79L,0x11B0AF79L}, // p_1493->g_283
        3UL, // p_1493->g_332
        0UL, // p_1493->g_340
        0x0F885F79L, // p_1493->g_431
        &p_1493->g_340, // p_1493->g_447
        0x273E5071L, // p_1493->g_463
        {0x1961CF25L}, // p_1493->g_497
        0x1C9425C875415C5EL, // p_1493->g_510
        &p_1493->g_66, // p_1493->g_512
        &p_1493->g_512, // p_1493->g_511
        0xA7D8L, // p_1493->g_526
        0x5067DC0EL, // p_1493->g_530
        (void*)0, // p_1493->g_567
        {0x0C9B0A1CA8C2080DL,0x0C9B0A1CA8C2080DL,0x0C9B0A1CA8C2080DL,0x0C9B0A1CA8C2080DL,0x0C9B0A1CA8C2080DL,0x0C9B0A1CA8C2080DL,0x0C9B0A1CA8C2080DL}, // p_1493->g_569
        0x66L, // p_1493->g_585
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1493->g_607
        {4294967295UL}, // p_1493->g_797
        {0UL}, // p_1493->g_800
        4294967289UL, // p_1493->g_815
        (void*)0, // p_1493->g_842
        {{{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842}},{{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842},{(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,(void*)0,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842,&p_1493->g_842}}}, // p_1493->g_841
        &p_1493->g_841[0][4][3], // p_1493->g_840
        (void*)0, // p_1493->g_896
        {0x3C74269CL}, // p_1493->g_900
        {0x2E6E28A2L}, // p_1493->g_901
        &p_1493->g_569[3], // p_1493->g_920
        &p_1493->g_920, // p_1493->g_919
        {{{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919}},{{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919}},{{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919}},{{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919}},{{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919}},{{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919},{&p_1493->g_919}}}, // p_1493->g_918
        &p_1493->g_918[5][1][0], // p_1493->g_917
        &p_1493->g_526, // p_1493->g_929
        0xA839EBA6L, // p_1493->g_1079
        {&p_1493->g_447,&p_1493->g_447,&p_1493->g_447,&p_1493->g_447,&p_1493->g_447,&p_1493->g_447,&p_1493->g_447,&p_1493->g_447}, // p_1493->g_1085
        0x2B4E88A9L, // p_1493->g_1106
        (-5L), // p_1493->g_1107
        0x0A4B679EL, // p_1493->g_1108
        1L, // p_1493->g_1109
        (-1L), // p_1493->g_1110
        {&p_1493->g_1110,&p_1493->g_1108,&p_1493->g_1109,&p_1493->g_1108,&p_1493->g_1110,&p_1493->g_1110,&p_1493->g_1108,&p_1493->g_1109,&p_1493->g_1108,&p_1493->g_1110}, // p_1493->g_1105
        0x29F1BD60L, // p_1493->g_1112
        0xD1E0L, // p_1493->g_1149
        (-1L), // p_1493->g_1191
        {{{{0xAA3DA45FL},{0xAA3DA45FL},{0xDC4A08E8L},{0x5E5EFDD5L},{4294967289UL},{0x5E5EFDD5L},{0xDC4A08E8L},{0xAA3DA45FL}},{{0xAA3DA45FL},{0xAA3DA45FL},{0xDC4A08E8L},{0x5E5EFDD5L},{4294967289UL},{0x5E5EFDD5L},{0xDC4A08E8L},{0xAA3DA45FL}},{{0xAA3DA45FL},{0xAA3DA45FL},{0xDC4A08E8L},{0x5E5EFDD5L},{4294967289UL},{0x5E5EFDD5L},{0xDC4A08E8L},{0xAA3DA45FL}}},{{{0xAA3DA45FL},{0xAA3DA45FL},{0xDC4A08E8L},{0x5E5EFDD5L},{4294967289UL},{0x5E5EFDD5L},{0xDC4A08E8L},{0xAA3DA45FL}},{{0xAA3DA45FL},{0xAA3DA45FL},{0xDC4A08E8L},{0x5E5EFDD5L},{4294967289UL},{0x5E5EFDD5L},{0xDC4A08E8L},{0xAA3DA45FL}},{{0xAA3DA45FL},{0xAA3DA45FL},{0xDC4A08E8L},{0x5E5EFDD5L},{4294967289UL},{0x5E5EFDD5L},{0xDC4A08E8L},{0xAA3DA45FL}}}}, // p_1493->g_1234
        {0x18A7CC57L}, // p_1493->g_1236
        0xF57D46EBL, // p_1493->g_1267
        0xB08BL, // p_1493->g_1296
        {{{0x14FA4218L,0x14FA4218L},{0x14FA4218L,0x14FA4218L},{0x14FA4218L,0x14FA4218L},{0x14FA4218L,0x14FA4218L},{0x14FA4218L,0x14FA4218L},{0x14FA4218L,0x14FA4218L},{0x14FA4218L,0x14FA4218L},{0x14FA4218L,0x14FA4218L}}}, // p_1493->g_1363
        &p_1493->g_1236, // p_1493->g_1437
        &p_1493->g_1437, // p_1493->g_1436
        &p_1493->g_1436, // p_1493->g_1435
        0x900719A07139A78EL, // p_1493->g_1478
        &p_1493->g_127, // p_1493->g_1488
        {{&p_1493->g_1488,&p_1493->g_1488},{&p_1493->g_1488,&p_1493->g_1488},{&p_1493->g_1488,&p_1493->g_1488},{&p_1493->g_1488,&p_1493->g_1488},{&p_1493->g_1488,&p_1493->g_1488}}, // p_1493->g_1487
        {&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113,&p_1493->g_113}, // p_1493->g_1491
        sequence_input[get_global_id(0)], // p_1493->global_0_offset
        sequence_input[get_global_id(1)], // p_1493->global_1_offset
        sequence_input[get_global_id(2)], // p_1493->global_2_offset
        sequence_input[get_local_id(0)], // p_1493->local_0_offset
        sequence_input[get_local_id(1)], // p_1493->local_1_offset
        sequence_input[get_local_id(2)], // p_1493->local_2_offset
        sequence_input[get_group_id(0)], // p_1493->group_0_offset
        sequence_input[get_group_id(1)], // p_1493->group_1_offset
        sequence_input[get_group_id(2)], // p_1493->group_2_offset
    };
    c_1494 = c_1495;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1493);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1493->g_8, "p_1493->g_8", print_hash_value);
    transparent_crc(p_1493->g_12, "p_1493->g_12", print_hash_value);
    transparent_crc(p_1493->g_46, "p_1493->g_46", print_hash_value);
    transparent_crc(p_1493->g_90, "p_1493->g_90", print_hash_value);
    transparent_crc(p_1493->g_93, "p_1493->g_93", print_hash_value);
    transparent_crc(p_1493->g_95, "p_1493->g_95", print_hash_value);
    transparent_crc(p_1493->g_97, "p_1493->g_97", print_hash_value);
    transparent_crc(p_1493->g_107, "p_1493->g_107", print_hash_value);
    transparent_crc(p_1493->g_108, "p_1493->g_108", print_hash_value);
    transparent_crc(p_1493->g_128, "p_1493->g_128", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1493->g_131[i][j], "p_1493->g_131[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1493->g_134, "p_1493->g_134", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1493->g_140[i], "p_1493->g_140[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1493->g_141[i][j][k], "p_1493->g_141[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1493->g_142[i][j][k], "p_1493->g_142[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1493->g_143[i], "p_1493->g_143[i]", print_hash_value);

    }
    transparent_crc(p_1493->g_145, "p_1493->g_145", print_hash_value);
    transparent_crc(p_1493->g_148, "p_1493->g_148", print_hash_value);
    transparent_crc(p_1493->g_246, "p_1493->g_246", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1493->g_283[i], "p_1493->g_283[i]", print_hash_value);

    }
    transparent_crc(p_1493->g_332, "p_1493->g_332", print_hash_value);
    transparent_crc(p_1493->g_340, "p_1493->g_340", print_hash_value);
    transparent_crc(p_1493->g_431, "p_1493->g_431", print_hash_value);
    transparent_crc(p_1493->g_463, "p_1493->g_463", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1493->g_497[i], "p_1493->g_497[i]", print_hash_value);

    }
    transparent_crc(p_1493->g_510, "p_1493->g_510", print_hash_value);
    transparent_crc(p_1493->g_526, "p_1493->g_526", print_hash_value);
    transparent_crc(p_1493->g_530, "p_1493->g_530", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1493->g_569[i], "p_1493->g_569[i]", print_hash_value);

    }
    transparent_crc(p_1493->g_585, "p_1493->g_585", print_hash_value);
    transparent_crc(p_1493->g_797.f0, "p_1493->g_797.f0", print_hash_value);
    transparent_crc(p_1493->g_800.f0, "p_1493->g_800.f0", print_hash_value);
    transparent_crc(p_1493->g_815, "p_1493->g_815", print_hash_value);
    transparent_crc(p_1493->g_900.f0, "p_1493->g_900.f0", print_hash_value);
    transparent_crc(p_1493->g_901.f0, "p_1493->g_901.f0", print_hash_value);
    transparent_crc(p_1493->g_1079, "p_1493->g_1079", print_hash_value);
    transparent_crc(p_1493->g_1106, "p_1493->g_1106", print_hash_value);
    transparent_crc(p_1493->g_1107, "p_1493->g_1107", print_hash_value);
    transparent_crc(p_1493->g_1108, "p_1493->g_1108", print_hash_value);
    transparent_crc(p_1493->g_1109, "p_1493->g_1109", print_hash_value);
    transparent_crc(p_1493->g_1110, "p_1493->g_1110", print_hash_value);
    transparent_crc(p_1493->g_1112, "p_1493->g_1112", print_hash_value);
    transparent_crc(p_1493->g_1149, "p_1493->g_1149", print_hash_value);
    transparent_crc(p_1493->g_1191, "p_1493->g_1191", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1493->g_1234[i][j][k].f0, "p_1493->g_1234[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1493->g_1236.f0, "p_1493->g_1236.f0", print_hash_value);
    transparent_crc(p_1493->g_1267, "p_1493->g_1267", print_hash_value);
    transparent_crc(p_1493->g_1296, "p_1493->g_1296", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1493->g_1363[i][j][k], "p_1493->g_1363[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1493->g_1478, "p_1493->g_1478", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
