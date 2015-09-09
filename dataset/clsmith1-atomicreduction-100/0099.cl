// ---atomic_reductions ---fake_divergence -g 18,31,1 -l 1,1,1
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
    int32_t g_23;
    uint32_t g_35;
    int8_t g_40;
    int32_t *g_67;
    int32_t **g_66;
    int32_t g_78[1];
    uint64_t g_95;
    uint32_t g_97;
    int32_t ***g_100;
    int32_t *** volatile * volatile g_99;
    int32_t * volatile g_111;
    uint16_t g_156;
    int32_t g_188;
    int32_t *g_187;
    uint32_t g_210;
    int8_t g_219;
    int64_t g_232;
    volatile uint8_t g_235[10];
    uint8_t g_245;
    int8_t g_288[10];
    volatile int16_t g_289[5];
    uint32_t g_291;
    int16_t g_293;
    int64_t g_312;
    int32_t g_351;
    uint8_t g_378[7][7][4];
    int16_t g_385[7][4][9];
    uint8_t g_448;
    int64_t *g_504;
    int64_t **g_503;
    int64_t *** volatile g_502;
    int8_t *g_571[2];
    int8_t ** volatile g_570;
    uint8_t *g_608;
    uint8_t **g_607;
    uint8_t *** volatile g_606;
    uint8_t ***g_626;
    int32_t g_639;
    int64_t g_696;
    uint64_t g_698;
    volatile int32_t g_705;
    int16_t g_706;
    volatile uint32_t g_765[2][2];
    uint32_t **g_794;
    volatile uint64_t g_815[7][4];
    volatile uint64_t *g_814;
    volatile uint64_t ** volatile g_813;
    int32_t g_816;
    int8_t g_835;
    uint16_t g_923[8];
    volatile uint8_t g_943;
    uint32_t *g_1102[9];
    int32_t g_1128[4];
    int16_t *g_1216;
    int16_t * volatile *g_1215;
    int16_t * volatile **g_1214;
    volatile uint32_t * volatile g_1353;
    volatile uint32_t * volatile *g_1352;
    volatile uint32_t * volatile * volatile * volatile g_1351;
    volatile uint32_t * volatile * volatile * volatile * volatile g_1350;
    int32_t ******g_1367;
    volatile int32_t g_1375[3][3];
    volatile int32_t *g_1374;
    volatile int32_t * volatile *g_1373[10][3];
    volatile int32_t * volatile * volatile *g_1372;
    volatile int32_t * volatile * volatile * volatile * volatile g_1371;
    volatile int32_t * volatile * volatile * volatile * volatile *g_1370;
    volatile int32_t * volatile * volatile * volatile * volatile **g_1369;
    uint64_t g_1425;
    uint8_t ** volatile * volatile g_1521;
    uint8_t ** volatile * volatile *g_1520[4];
    uint8_t ** volatile * volatile * volatile * volatile g_1519;
    int32_t *g_1557;
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
uint64_t  func_1(struct S0 * p_1589);
int32_t * func_5(uint8_t  p_6, uint32_t  p_7, int32_t * p_8, int32_t * p_9, int32_t * p_10, struct S0 * p_1589);
int32_t * func_13(int64_t  p_14, int32_t * p_15, uint8_t  p_16, uint32_t  p_17, struct S0 * p_1589);
int32_t  func_44(uint32_t  p_45, struct S0 * p_1589);
int32_t * func_46(int32_t ** p_47, uint8_t  p_48, int32_t * p_49, int32_t * p_50, int64_t  p_51, struct S0 * p_1589);
int32_t * func_54(uint16_t  p_55, uint32_t  p_56, struct S0 * p_1589);
int32_t  func_57(int32_t ** p_58, int16_t  p_59, int32_t  p_60, struct S0 * p_1589);
int32_t ** func_61(int64_t  p_62, int32_t ** p_63, uint64_t  p_64, uint64_t  p_65, struct S0 * p_1589);
uint64_t  func_68(int32_t * p_69, uint64_t  p_70, int32_t ** p_71, int64_t  p_72, struct S0 * p_1589);
int32_t * func_73(int32_t  p_74, struct S0 * p_1589);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1589->g_2 p_1589->g_35 p_1589->g_23 p_1589->g_66 p_1589->g_78 p_1589->g_99 p_1589->g_111 p_1589->g_67 p_1589->g_97 p_1589->g_606 p_1589->g_570 p_1589->g_571 p_1589->g_219 p_1589->g_291 p_1589->g_187 p_1589->g_639 p_1589->g_288 p_1589->g_235 p_1589->g_40 p_1589->g_608 p_1589->g_698 p_1589->g_448 p_1589->g_293 p_1589->g_232 p_1589->g_765 p_1589->g_188 p_1589->g_923 p_1589->g_813 p_1589->g_814 p_1589->g_815 p_1589->g_245 p_1589->g_378 p_1589->g_312 p_1589->g_95 p_1589->g_706 p_1589->g_385 p_1589->g_705 p_1589->g_1214 p_1589->g_100 p_1589->g_696 p_1589->g_289 p_1589->g_1215 p_1589->g_1216 p_1589->g_1350 p_1589->g_1367 p_1589->g_1369 p_1589->g_943 p_1589->g_1375 p_1589->g_1425 p_1589->g_1128 p_1589->g_835 p_1589->g_1374 p_1589->g_1557
 * writes: p_1589->g_2 p_1589->g_35 p_1589->g_23 p_1589->g_40 p_1589->g_78 p_1589->g_67 p_1589->g_95 p_1589->g_97 p_1589->g_607 p_1589->g_188 p_1589->g_626 p_1589->g_293 p_1589->g_639 p_1589->g_608 p_1589->g_385 p_1589->g_448 p_1589->g_210 p_1589->g_351 p_1589->g_245 p_1589->g_378 p_1589->g_288 p_1589->g_696 p_1589->g_698 p_1589->g_232 p_1589->g_765 p_1589->g_835 p_1589->g_706 p_1589->g_816 p_1589->g_156 p_1589->g_943 p_1589->g_312 p_1589->g_1367 p_1589->g_291 p_1589->g_923 p_1589->g_1425 p_1589->g_219 p_1589->g_1375 p_1589->g_794
 */
uint64_t  func_1(struct S0 * p_1589)
{ /* block id: 4 */
    int32_t l_12 = 2L;
    int32_t *l_20 = &p_1589->g_2;
    int16_t *l_1439 = &p_1589->g_706;
    uint32_t l_1440[7][9] = {{7UL,4294967295UL,0x3F3C443FL,4294967295UL,4294967288UL,7UL,4294967295UL,1UL,4294967295UL},{7UL,4294967295UL,0x3F3C443FL,4294967295UL,4294967288UL,7UL,4294967295UL,1UL,4294967295UL},{7UL,4294967295UL,0x3F3C443FL,4294967295UL,4294967288UL,7UL,4294967295UL,1UL,4294967295UL},{7UL,4294967295UL,0x3F3C443FL,4294967295UL,4294967288UL,7UL,4294967295UL,1UL,4294967295UL},{7UL,4294967295UL,0x3F3C443FL,4294967295UL,4294967288UL,7UL,4294967295UL,1UL,4294967295UL},{7UL,4294967295UL,0x3F3C443FL,4294967295UL,4294967288UL,7UL,4294967295UL,1UL,4294967295UL},{7UL,4294967295UL,0x3F3C443FL,4294967295UL,4294967288UL,7UL,4294967295UL,1UL,4294967295UL}};
    int32_t l_1442 = (-10L);
    int16_t l_1461 = 1L;
    uint32_t l_1526 = 0UL;
    int32_t ***l_1579 = &p_1589->g_66;
    int64_t l_1584 = 0L;
    int i, j;
    for (p_1589->g_2 = 0; (p_1589->g_2 == 17); ++p_1589->g_2)
    { /* block id: 7 */
        int32_t *l_11 = &p_1589->g_2;
        uint32_t l_1443 = 0x244E22C5L;
        int16_t l_1444 = 0x7F51L;
        int32_t l_1475 = 0x68FDED1DL;
        uint32_t l_1496 = 0x93D9220EL;
        int32_t *l_1504 = &l_1442;
        (*p_1589->g_66) = func_5((p_1589->g_2 >= ((void*)0 != l_11)), l_12, &p_1589->g_2, func_13((safe_add_func_uint32_t_u_u((l_12 >= p_1589->g_2), 0x1A62A969L)), l_20, p_1589->g_2, p_1589->g_2, p_1589), l_20, p_1589);
        for (l_12 = (-16); (l_12 < 21); l_12 = safe_add_func_uint64_t_u_u(l_12, 7))
        { /* block id: 728 */
            uint16_t l_1434 = 0x6B1BL;
            uint64_t *l_1441[1][5];
            int32_t l_1474 = 0x644EEBFDL;
            uint32_t *l_1501 = &p_1589->g_210;
            uint64_t l_1507 = 1UL;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 5; j++)
                    l_1441[i][j] = (void*)0;
            }
            (1 + 1);
        }
        (*p_1589->g_66) = (void*)0;
        for (p_1589->g_293 = 0; (p_1589->g_293 != 5); ++p_1589->g_293)
        { /* block id: 789 */
            int32_t l_1552 = 1L;
            int32_t l_1553 = 0x61419DF5L;
            int8_t *l_1555 = &p_1589->g_219;
            int8_t *l_1556 = &p_1589->g_835;
            (*p_1589->g_1374) = ((l_1552 && ((*p_1589->g_111) != ((((l_1553 = (((*l_20) > (!(**p_1589->g_1215))) , l_1553)) ^ (FAKE_DIVERGE(p_1589->global_0_offset, get_global_id(0), 10) , ((safe_unary_minus_func_int8_t_s((*l_20))) <= (-10L)))) == ((*l_1556) ^= (GROUP_DIVERGE(1, 1) , ((*l_1555) = l_1552)))) && l_1552))) , (*l_1504));
        }
    }
    l_20 = p_1589->g_1557;
    for (p_1589->g_188 = (-3); (p_1589->g_188 <= (-30)); --p_1589->g_188)
    { /* block id: 799 */
        int32_t l_1573 = 0x6F5215A7L;
        int32_t l_1578 = 0x6C746BACL;
        for (l_1442 = 0; (l_1442 < (-23)); l_1442--)
        { /* block id: 802 */
            uint32_t **l_1562 = &p_1589->g_1102[2];
            uint32_t ***l_1563 = &l_1562;
            uint32_t **l_1565 = &p_1589->g_1102[1];
            uint32_t ***l_1564 = &l_1565;
            int32_t l_1570 = 0x367B5C79L;
            (*l_1564) = (p_1589->g_794 = ((*l_1563) = l_1562));
            (*p_1589->g_1374) = ((safe_add_func_int8_t_s_s(((((**p_1589->g_813) ^ (--p_1589->g_95)) == l_1570) < (((**p_1589->g_1215) ^ (*p_1589->g_1216)) , (((safe_mul_func_uint8_t_u_u(l_1570, l_1573)) >= FAKE_DIVERGE(p_1589->global_0_offset, get_global_id(0), 10)) , p_1589->g_291))), l_1570)) < ((((*p_1589->g_1557) = ((safe_lshift_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u((l_1578 ^= 0L), (*p_1589->g_608))) <= (*l_20)), 7)) >= (*l_20))) | 0x7AC20408L) , 0x8CDB8ADB319C416EL));
        }
    }
    (*p_1589->g_1374) ^= ((*p_1589->g_187) = ((0x1DB35B6FL | (*l_20)) | (l_1579 != ((safe_lshift_func_int16_t_s_s(((*l_20) < (*l_20)), (safe_rshift_func_int16_t_s_u((l_1584 <= (safe_mul_func_int8_t_s_s(((-2L) >= (safe_mul_func_uint8_t_u_u((8UL >= (**p_1589->g_1215)), 0x73L))), FAKE_DIVERGE(p_1589->group_1_offset, get_group_id(1), 10)))), (*l_20))))) , (void*)0))));
    return (*p_1589->g_814);
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_1375 p_1589->g_698 p_1589->g_95 p_1589->g_1425 p_1589->g_1128 p_1589->g_187
 * writes: p_1589->g_923 p_1589->g_698 p_1589->g_95 p_1589->g_1425 p_1589->g_188
 */
int32_t * func_5(uint8_t  p_6, uint32_t  p_7, int32_t * p_8, int32_t * p_9, int32_t * p_10, struct S0 * p_1589)
{ /* block id: 717 */
    uint16_t *l_1415 = &p_1589->g_923[6];
    uint64_t *l_1418 = (void*)0;
    uint64_t *l_1419 = &p_1589->g_698;
    int32_t l_1422 = 0x729214C0L;
    uint64_t *l_1423 = &p_1589->g_95;
    uint64_t *l_1424 = &p_1589->g_1425;
    (*p_1589->g_187) = ((~(GROUP_DIVERGE(2, 1) >= (l_1422 = ((((*l_1424) &= ((*l_1423) |= (((0x0B71L == 0L) != (safe_mod_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((safe_mod_func_int8_t_s_s((((((safe_mul_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((((p_1589->g_1375[1][0] , (((safe_mul_func_uint16_t_u_u(((*l_1415) = 0UL), ((safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_1589->global_1_offset, get_global_id(1), 10), (p_1589->g_1375[1][1] , ((*l_1419)--)))) & l_1422))) > (p_6 >= 0x27L)) ^ l_1422)) != 0xDAB8L) | p_6), l_1422)), p_6)) , p_6) != l_1422) && l_1422) & l_1422), l_1422)), 2)), p_7))) || l_1422))) ^ 0UL) <= l_1422)))) <= p_1589->g_1128[1]);
    return &p_1589->g_2;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_35 p_1589->g_2 p_1589->g_23 p_1589->g_66 p_1589->g_78 p_1589->g_99 p_1589->g_111 p_1589->g_67 p_1589->g_97 p_1589->g_606 p_1589->g_570 p_1589->g_571 p_1589->g_219 p_1589->g_291 p_1589->g_187 p_1589->g_639 p_1589->g_288 p_1589->g_235 p_1589->g_40 p_1589->g_608 p_1589->g_698 p_1589->g_448 p_1589->g_293 p_1589->g_232 p_1589->g_765 p_1589->g_188 p_1589->g_923 p_1589->g_813 p_1589->g_814 p_1589->g_815 p_1589->g_245 p_1589->g_378 p_1589->g_312 p_1589->g_95 p_1589->g_706 p_1589->g_385 p_1589->g_705 p_1589->g_1214 p_1589->g_100 p_1589->g_696 p_1589->g_289 p_1589->g_1215 p_1589->g_1216 p_1589->g_156 p_1589->g_1350 p_1589->g_1367 p_1589->g_1369 p_1589->g_943 p_1589->g_835
 * writes: p_1589->g_35 p_1589->g_23 p_1589->g_40 p_1589->g_78 p_1589->g_67 p_1589->g_95 p_1589->g_97 p_1589->g_607 p_1589->g_188 p_1589->g_626 p_1589->g_293 p_1589->g_639 p_1589->g_608 p_1589->g_385 p_1589->g_448 p_1589->g_210 p_1589->g_351 p_1589->g_245 p_1589->g_378 p_1589->g_288 p_1589->g_696 p_1589->g_698 p_1589->g_232 p_1589->g_765 p_1589->g_835 p_1589->g_706 p_1589->g_816 p_1589->g_156 p_1589->g_943 p_1589->g_312 p_1589->g_1367 p_1589->g_291
 */
int32_t * func_13(int64_t  p_14, int32_t * p_15, uint8_t  p_16, uint32_t  p_17, struct S0 * p_1589)
{ /* block id: 8 */
    uint8_t l_21[1][3][7] = {{{6UL,6UL,0x1FL,255UL,255UL,255UL,0x1FL},{6UL,6UL,0x1FL,255UL,255UL,255UL,0x1FL},{6UL,6UL,0x1FL,255UL,255UL,255UL,0x1FL}}};
    int32_t l_32 = 1L;
    int32_t l_33 = 0L;
    int32_t l_34 = 0x07AD46D2L;
    uint8_t l_41 = 0xCFL;
    uint32_t l_1330[5][10] = {{4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL},{4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL},{4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL},{4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL},{4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL,4294967289UL,4294967295UL,4294967295UL}};
    int16_t *l_1332 = &p_1589->g_293;
    uint64_t *l_1381 = &p_1589->g_698;
    uint64_t **l_1380 = &l_1381;
    int i, j, k;
    for (p_17 = 0; (p_17 <= 0); p_17 += 1)
    { /* block id: 11 */
        int32_t *l_22 = &p_1589->g_23;
        int32_t *l_24 = &p_1589->g_23;
        int32_t l_25 = 9L;
        int32_t *l_26 = &p_1589->g_23;
        int32_t l_27 = 0L;
        int32_t *l_28 = (void*)0;
        int32_t *l_29 = &l_27;
        int32_t *l_30 = &l_27;
        int32_t *l_31[6][9][4] = {{{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23}},{{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23}},{{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23}},{{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23}},{{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23}},{{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23},{(void*)0,(void*)0,&l_25,&p_1589->g_23}}};
        int16_t l_1331 = 0x2DBDL;
        int8_t **l_1365 = &p_1589->g_571[0];
        int8_t ***l_1364 = &l_1365;
        uint8_t *l_1397 = &l_41;
        int i, j, k;
        p_1589->g_35++;
        if ((*p_15))
        { /* block id: 13 */
            int32_t **l_38 = (void*)0;
            int32_t ***l_39 = &l_38;
            (*l_39) = l_38;
            if (p_1589->g_23)
                continue;
            if ((*p_15))
                continue;
        }
        else
        { /* block id: 17 */
            uint16_t l_1300 = 0xF6A4L;
            int32_t l_1316 = 0x126F00E6L;
            for (p_1589->g_23 = 0; (p_1589->g_23 <= 0); p_1589->g_23 += 1)
            { /* block id: 20 */
                uint16_t l_1321 = 0xA653L;
                p_1589->g_40 = 0x6745C5BBL;
                l_41++;
                (*l_30) |= func_44(p_1589->g_35, p_1589);
                if ((*l_29))
                    break;
                for (p_1589->g_312 = 0; (p_1589->g_312 <= 0); p_1589->g_312 += 1)
                { /* block id: 633 */
                    int32_t l_1299 = 0x1AC0ECDBL;
                    int32_t l_1317 = 0x2D930B62L;
                    int8_t **l_1320 = (void*)0;
                    if (((void*)0 != (*p_1589->g_570)))
                    { /* block id: 634 */
                        int i, j, k;
                        ++l_1300;
                        (*p_1589->g_66) = p_15;
                        if (l_21[p_17][p_1589->g_23][(p_1589->g_312 + 2)])
                            continue;
                    }
                    else
                    { /* block id: 638 */
                        uint32_t *l_1307 = (void*)0;
                        uint32_t *l_1308 = &p_1589->g_35;
                        int8_t *l_1315 = &p_1589->g_288[7];
                        atomic_or(&p_1589->g_atomic_reduction[get_linear_group_id()], (+((((*p_1589->g_187) |= (l_1317 = (((safe_div_func_int8_t_s_s(0x30L, ((p_17 < ((l_1316 = ((*l_1315) = (4294967295UL != ((safe_sub_func_int32_t_s_s(((*p_1589->g_111) = 0x30391CBDL), ((*l_1308)++))) && (((*p_15) != (--(*l_1308))) > (safe_lshift_func_uint16_t_u_s(p_1589->g_288[7], ((**p_1589->g_570) | ((((*l_29) = (0xCFD12CFEL || 0UL)) && l_1299) || p_1589->g_78[0]))))))))) < 5L)) ^ 255UL))) >= (*l_24)) > 0x4B748E29L))) | (*p_15)) , (*p_1589->g_111))));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1589->v_collective += p_1589->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        (*l_30) &= 1L;
                        return p_15;
                    }
                    l_1321 = ((safe_lshift_func_uint16_t_u_s(((void*)0 == l_1320), (p_17 >= (*p_15)))) & 255UL);
                }
            }
        }
        if ((*p_15))
            continue;
        for (p_1589->g_696 = 0; (p_1589->g_696 <= 0); p_1589->g_696 += 1)
        { /* block id: 658 */
            int i, j;
            (*p_1589->g_66) = func_54(p_1589->g_78[p_17], ((safe_sub_func_int16_t_s_s((p_1589->g_815[(p_17 + 3)][(p_1589->g_696 + 1)] ^ p_17), ((!((*p_1589->g_187) = (&p_16 == &p_16))) || (safe_add_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u(2UL, (safe_sub_func_uint64_t_u_u(((*l_30) | l_1330[0][5]), p_17)))) && l_1331), 0x768A3C4D6307770AL))))) , p_1589->g_378[2][4][0]), p_1589);
            for (p_1589->g_156 = 0; (p_1589->g_156 <= 3); p_1589->g_156 += 1)
            { /* block id: 663 */
                (*l_29) ^= (l_1332 == (void*)0);
            }
        }
        for (l_34 = 0; (l_34 >= 0); l_34 -= 1)
        { /* block id: 669 */
            uint32_t ****l_1357 = (void*)0;
            int32_t l_1358 = 4L;
            int32_t *l_1389 = &p_1589->g_78[0];
            uint8_t ***l_1394 = &p_1589->g_607;
            (*l_26) = (*p_15);
            for (l_32 = 0; (l_32 <= 0); l_32 += 1)
            { /* block id: 673 */
                uint32_t ****l_1337 = (void*)0;
                int32_t *****l_1343 = (void*)0;
                int32_t ******l_1342 = &l_1343;
                uint64_t *l_1356 = &p_1589->g_698;
                int32_t *l_1359[9] = {&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]};
                int i, j, k;
                if ((!(safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s(((void*)0 != l_1337), (*p_1589->g_608))), (((safe_sub_func_uint8_t_u_u((((l_21[l_34][l_34][(l_34 + 5)] = (safe_lshift_func_int8_t_s_s(((void*)0 == l_1342), 1))) ^ (1L || ((safe_div_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_u((((safe_sub_func_int32_t_s_s(((p_1589->g_1350 == (((*l_1356) = (+(safe_lshift_func_int16_t_s_s((p_1589->g_385[5][3][4] = ((*l_1332) &= 8L)), ((*l_26) & p_16))))) , l_1357)) >= l_1358), 4294967295UL)) ^ p_1589->g_312) , FAKE_DIVERGE(p_1589->local_2_offset, get_local_id(2), 10)), 6)) || 65535UL), 246UL)) > (-7L)))) ^ 0x03C06B3FBDD8B829L), l_32)) , 8UL) == p_14)))))
                { /* block id: 678 */
                    uint64_t l_1366 = 0x59ACAEF5ADF8EA41L;
                    int32_t *******l_1368 = &l_1342;
                    uint32_t *l_1384 = &p_1589->g_291;
                    int32_t l_1385 = (-1L);
                    uint8_t ****l_1395 = (void*)0;
                    uint8_t ****l_1396 = &l_1394;
                    for (l_1331 = 1; (l_1331 >= 0); l_1331 -= 1)
                    { /* block id: 681 */
                        (*p_1589->g_66) = func_73((*p_15), p_1589);
                        return p_15;
                    }
                    if (((safe_div_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((((l_1366 |= ((p_14 , l_1364) == (void*)0)) ^ ((((*l_1384) = ((((*l_1368) = (p_1589->g_1367 = p_1589->g_1367)) != p_1589->g_1369) || (safe_add_func_uint32_t_u_u((+(l_1358 > (safe_mul_func_int8_t_s_s((l_1380 != &p_1589->g_814), (safe_sub_func_uint16_t_u_u(p_1589->g_943, 0x7672L)))))), (*p_15))))) , &p_1589->g_816) == (void*)0)) != l_1385) > 0xA08A1D68E59A2231L), (*p_15))), 1L)) >= p_16))
                    { /* block id: 689 */
                        uint16_t l_1386 = 65535UL;
                        l_1386++;
                        l_1389 = (void*)0;
                    }
                    else
                    { /* block id: 692 */
                        return p_15;
                    }
                    (*l_24) &= (safe_lshift_func_uint8_t_u_u(((*p_1589->g_608)++), ((((*l_1396) = l_1394) != (void*)0) , (l_1397 != &p_16))));
                }
                else
                { /* block id: 698 */
                    for (l_25 = 26; (l_25 <= (-14)); --l_25)
                    { /* block id: 701 */
                        (*p_1589->g_66) = (void*)0;
                    }
                }
            }
        }
    }
    for (p_1589->g_835 = 0; (p_1589->g_835 != 25); p_1589->g_835++)
    { /* block id: 710 */
        int32_t *l_1402 = (void*)0;
        (*p_1589->g_66) = p_15;
    }
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_23 p_1589->g_66 p_1589->g_78 p_1589->g_35 p_1589->g_2 p_1589->g_99 p_1589->g_40 p_1589->g_111 p_1589->g_67 p_1589->g_97 p_1589->g_606 p_1589->g_570 p_1589->g_571 p_1589->g_219 p_1589->g_291 p_1589->g_187 p_1589->g_293 p_1589->g_639 p_1589->g_288 p_1589->g_95 p_1589->g_448 p_1589->g_235 p_1589->g_608 p_1589->g_698 p_1589->g_232 p_1589->g_765 p_1589->g_188 p_1589->g_923 p_1589->g_813 p_1589->g_814 p_1589->g_815 p_1589->g_696 p_1589->g_245 p_1589->g_378 p_1589->g_312 p_1589->g_706 p_1589->g_385 p_1589->g_705 p_1589->g_1214 p_1589->g_100 p_1589->g_289 p_1589->g_1215 p_1589->g_1216
 * writes: p_1589->g_78 p_1589->g_67 p_1589->g_95 p_1589->g_97 p_1589->g_35 p_1589->g_40 p_1589->g_607 p_1589->g_188 p_1589->g_626 p_1589->g_293 p_1589->g_639 p_1589->g_608 p_1589->g_385 p_1589->g_448 p_1589->g_210 p_1589->g_351 p_1589->g_245 p_1589->g_378 p_1589->g_288 p_1589->g_696 p_1589->g_698 p_1589->g_232 p_1589->g_765 p_1589->g_835 p_1589->g_706 p_1589->g_816 p_1589->g_156 p_1589->g_943 p_1589->g_312
 */
int32_t  func_44(uint32_t  p_45, struct S0 * p_1589)
{ /* block id: 23 */
    int32_t *l_53 = &p_1589->g_23;
    int32_t **l_52 = &l_53;
    int32_t *l_77 = &p_1589->g_78[0];
    int32_t ***l_82 = &l_52;
    int32_t ****l_81 = &l_82;
    int32_t l_609 = 4L;
    int32_t *l_743 = &p_1589->g_2;
    uint16_t *l_1031[3];
    uint32_t ***l_1061 = &p_1589->g_794;
    uint32_t l_1069 = 0x77302146L;
    uint32_t l_1101[10][3] = {{4294967291UL,1UL,9UL},{4294967291UL,1UL,9UL},{4294967291UL,1UL,9UL},{4294967291UL,1UL,9UL},{4294967291UL,1UL,9UL},{4294967291UL,1UL,9UL},{4294967291UL,1UL,9UL},{4294967291UL,1UL,9UL},{4294967291UL,1UL,9UL},{4294967291UL,1UL,9UL}};
    uint32_t l_1111 = 0x13E7B0EBL;
    int32_t l_1115[4] = {0L,0L,0L,0L};
    uint32_t l_1130 = 0UL;
    uint8_t *l_1228[8] = {&p_1589->g_448,&p_1589->g_448,&p_1589->g_448,&p_1589->g_448,&p_1589->g_448,&p_1589->g_448,&p_1589->g_448,&p_1589->g_448};
    uint16_t l_1256 = 0xE814L;
    int64_t *l_1292 = &p_1589->g_312;
    uint32_t *l_1297 = &p_1589->g_210;
    int16_t l_1298[2];
    int i, j;
    for (i = 0; i < 3; i++)
        l_1031[i] = &p_1589->g_923[6];
    for (i = 0; i < 2; i++)
        l_1298[i] = 1L;
    (*l_52) = func_46(l_52, (**l_52), func_54((func_57(func_61(p_45, p_1589->g_66, func_68(func_73((safe_rshift_func_uint16_t_u_s(((((p_45 && ((*l_77) &= p_45)) , ((safe_rshift_func_int8_t_s_s((&p_1589->g_66 == ((*l_81) = &p_1589->g_66)), 0)) == ((p_1589->g_78[0] , (**l_52)) < (-2L)))) && 5UL) == p_1589->g_35), 14)), p_1589), (**l_52), p_1589->g_66, (**l_52), p_1589), l_609, p_1589), p_1589->g_288[7], (*l_53), p_1589) , p_1589->g_293), p_1589->g_232, p_1589), l_743, p_45, p_1589);
    if ((((((safe_rshift_func_uint8_t_u_u((safe_add_func_int64_t_s_s(((safe_add_func_int32_t_s_s(((*l_77) = (safe_lshift_func_int8_t_s_s(((*l_77) | p_45), (**l_52)))), ((((&p_1589->g_99 == ((~p_1589->g_923[6]) , &p_1589->g_99)) == (**p_1589->g_813)) , (((*l_53) | (((safe_add_func_int8_t_s_s(0x2EL, 0xB1L)) || p_45) < 1L)) , 0UL)) >= p_45))) >= p_45), (*l_743))), p_45)) & (*p_1589->g_187)) <= p_1589->g_923[6]) && p_1589->g_815[1][2]) | 0xA3DCL))
    { /* block id: 475 */
        uint16_t *l_1030 = &p_1589->g_923[6];
        int32_t l_1047 = 4L;
        uint32_t l_1049[7][10] = {{0x23F48850L,0xAB0092E1L,0xCF089841L,7UL,0xCF089841L,0xAB0092E1L,0x23F48850L,0x0F14B2FAL,0UL,0xC972A29BL},{0x23F48850L,0xAB0092E1L,0xCF089841L,7UL,0xCF089841L,0xAB0092E1L,0x23F48850L,0x0F14B2FAL,0UL,0xC972A29BL},{0x23F48850L,0xAB0092E1L,0xCF089841L,7UL,0xCF089841L,0xAB0092E1L,0x23F48850L,0x0F14B2FAL,0UL,0xC972A29BL},{0x23F48850L,0xAB0092E1L,0xCF089841L,7UL,0xCF089841L,0xAB0092E1L,0x23F48850L,0x0F14B2FAL,0UL,0xC972A29BL},{0x23F48850L,0xAB0092E1L,0xCF089841L,7UL,0xCF089841L,0xAB0092E1L,0x23F48850L,0x0F14B2FAL,0UL,0xC972A29BL},{0x23F48850L,0xAB0092E1L,0xCF089841L,7UL,0xCF089841L,0xAB0092E1L,0x23F48850L,0x0F14B2FAL,0UL,0xC972A29BL},{0x23F48850L,0xAB0092E1L,0xCF089841L,7UL,0xCF089841L,0xAB0092E1L,0x23F48850L,0x0F14B2FAL,0UL,0xC972A29BL}};
        uint32_t ***l_1059 = &p_1589->g_794;
        int32_t l_1071 = 0x3D17BE17L;
        uint16_t l_1091 = 0xCD15L;
        int32_t **l_1098 = &p_1589->g_187;
        int32_t **l_1099 = (void*)0;
        int32_t l_1118 = (-9L);
        int32_t l_1125 = 0x757E3DB4L;
        int32_t l_1126 = 0x651794B2L;
        int32_t l_1127 = (-1L);
        int32_t l_1129[10][7] = {{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL},{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL},{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL},{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL},{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL},{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL},{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL},{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL},{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL},{0x13BA153CL,0x68E8F72EL,(-4L),0x68E8F72EL,0x13BA153CL,0x13BA153CL,0x68E8F72EL}};
        int i, j;
        for (p_1589->g_696 = 13; (p_1589->g_696 == 12); p_1589->g_696--)
        { /* block id: 478 */
            int16_t l_1046 = 0x23CAL;
            int8_t *l_1048 = &p_1589->g_835;
            (*p_1589->g_187) ^= ((((safe_lshift_func_int16_t_s_s(((safe_div_func_uint32_t_u_u((((((l_1030 != l_1031[2]) & (safe_add_func_int8_t_s_s(((**p_1589->g_570) || (safe_div_func_uint8_t_u_u(((*p_1589->g_608) |= ((*l_53) == (*l_743))), p_45))), (safe_div_func_uint16_t_u_u((((*l_1048) = (((safe_add_func_uint64_t_u_u((safe_div_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(p_45, 3)), (!p_1589->g_312))) < 0x2ADBE659B1A3AD5BL), l_1046)), 0L)) & l_1047) != l_1046)) , p_1589->g_288[7]), l_1049[3][7]))))) ^ p_45) != p_45) & p_45), 0x31D2E97DL)) && p_45), 15)) & p_1589->g_95) >= p_45) == 0x65L);
        }
        for (p_45 = 0; (p_45 < 26); ++p_45)
        { /* block id: 485 */
            uint32_t ****l_1060[10] = {&l_1059,&l_1059,&l_1059,&l_1059,&l_1059,&l_1059,&l_1059,&l_1059,&l_1059,&l_1059};
            int32_t l_1064 = (-1L);
            int32_t l_1067 = 9L;
            int16_t *l_1068 = &p_1589->g_385[1][2][1];
            int16_t *l_1070[10][3] = {{&p_1589->g_293,(void*)0,&p_1589->g_293},{&p_1589->g_293,(void*)0,&p_1589->g_293},{&p_1589->g_293,(void*)0,&p_1589->g_293},{&p_1589->g_293,(void*)0,&p_1589->g_293},{&p_1589->g_293,(void*)0,&p_1589->g_293},{&p_1589->g_293,(void*)0,&p_1589->g_293},{&p_1589->g_293,(void*)0,&p_1589->g_293},{&p_1589->g_293,(void*)0,&p_1589->g_293},{&p_1589->g_293,(void*)0,&p_1589->g_293},{&p_1589->g_293,(void*)0,&p_1589->g_293}};
            int32_t **l_1075[7][4][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
            int32_t l_1124 = 0x68FFBB2BL;
            int16_t l_1161 = 0L;
            int32_t l_1173 = 0x3B277A2AL;
            int i, j, k;
            for (p_1589->g_706 = 3; (p_1589->g_706 >= 0); p_1589->g_706 -= 1)
            { /* block id: 488 */
                uint8_t l_1052 = 251UL;
                int32_t **l_1054[9] = {&l_53,&l_53,&l_53,&l_53,&l_53,&l_53,&l_53,&l_53,&l_53};
                int i;
                (*p_1589->g_187) |= l_1052;
                for (p_1589->g_639 = 0; (p_1589->g_639 <= 3); p_1589->g_639 += 1)
                { /* block id: 492 */
                    int32_t **l_1053[10];
                    int i, j, k;
                    for (i = 0; i < 10; i++)
                        l_1053[i] = (void*)0;
                    l_1047 |= 0x2F5E7188L;
                    for (p_1589->g_816 = 7; (p_1589->g_816 >= 0); p_1589->g_816 -= 1)
                    { /* block id: 496 */
                        l_1054[4] = l_1053[2];
                    }
                    if (p_1589->g_385[(p_1589->g_706 + 3)][p_1589->g_639][(p_1589->g_706 + 5)])
                        break;
                }
            }
        }
    }
    else
    { /* block id: 565 */
        uint32_t **l_1178[5] = {&p_1589->g_1102[1],&p_1589->g_1102[1],&p_1589->g_1102[1],&p_1589->g_1102[1],&p_1589->g_1102[1]};
        int32_t l_1179[10][6] = {{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL},{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL},{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL},{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL},{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL},{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL},{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL},{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL},{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL},{0x4597C89FL,0L,0x4597C89FL,0x4597C89FL,0L,0x4597C89FL}};
        int32_t l_1220 = 0x4C5E906AL;
        int i, j;
        for (p_1589->g_97 = 0; (p_1589->g_97 <= 0); p_1589->g_97 += 1)
        { /* block id: 568 */
            int64_t ***l_1184 = &p_1589->g_503;
            int32_t *l_1212 = &l_1179[0][2];
            int16_t **l_1218 = (void*)0;
            int16_t ***l_1217 = &l_1218;
            int i;
            l_1179[0][2] &= (p_1589->g_78[p_1589->g_97] < ((safe_div_func_int32_t_s_s((*p_1589->g_111), (*p_1589->g_187))) < ((((void*)0 == (*l_82)) , &p_1589->g_1102[2]) != l_1178[3])));
            for (p_1589->g_156 = 0; (p_1589->g_156 >= 20); p_1589->g_156 = safe_add_func_int32_t_s_s(p_1589->g_156, 1))
            { /* block id: 572 */
                uint8_t ****l_1199 = (void*)0;
                uint8_t *****l_1200 = (void*)0;
                uint8_t *****l_1201 = &l_1199;
                uint32_t l_1202[3];
                int16_t *l_1204 = &p_1589->g_706;
                int16_t **l_1203 = &l_1204;
                uint32_t l_1205[4][10] = {{2UL,4294967290UL,4294967295UL,1UL,8UL,2UL,1UL,4294967288UL,1UL,2UL},{2UL,4294967290UL,4294967295UL,1UL,8UL,2UL,1UL,4294967288UL,1UL,2UL},{2UL,4294967290UL,4294967295UL,1UL,8UL,2UL,1UL,4294967288UL,1UL,2UL},{2UL,4294967290UL,4294967295UL,1UL,8UL,2UL,1UL,4294967288UL,1UL,2UL}};
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1202[i] = 8UL;
                l_1179[5][3] = (p_45 & ((safe_lshift_func_int8_t_s_u(((void*)0 != l_1184), ((*p_1589->g_608) = (safe_add_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(0xE968L, (safe_mod_func_uint32_t_u_u((safe_add_func_int32_t_s_s((safe_div_func_int8_t_s_s(((p_1589->g_705 && ((p_45 & 0L) < (6L & FAKE_DIVERGE(p_1589->group_1_offset, get_group_id(1), 10)))) && (((*l_1201) = l_1199) != (void*)0)), p_45)), l_1202[0])), p_45)))), p_45))))) && p_45));
                l_1205[0][6] = ((*l_77) = (((*l_1203) = (l_1179[3][4] , &p_1589->g_385[5][3][4])) == l_1031[2]));
            }
            if (p_45)
            { /* block id: 580 */
                for (p_1589->g_816 = 0; p_1589->g_816 < 7; p_1589->g_816 += 1)
                {
                    for (p_1589->g_95 = 0; p_1589->g_95 < 7; p_1589->g_95 += 1)
                    {
                        for (p_1589->g_943 = 0; p_1589->g_943 < 4; p_1589->g_943 += 1)
                        {
                            p_1589->g_378[p_1589->g_816][p_1589->g_95][p_1589->g_943] = 0xFBL;
                        }
                    }
                }
                (*l_77) &= (((p_45 ^ 3L) , ((((safe_lshift_func_int8_t_s_u(p_45, l_1179[0][2])) <= ((&p_1589->g_78[p_1589->g_97] != ((*l_52) = func_54((0L < (*p_1589->g_814)), p_1589->g_312, p_1589))) , 1UL)) , p_45) || 0x42L)) , p_45);
            }
            else
            { /* block id: 584 */
                int32_t *l_1213[3][1][4] = {{{&p_1589->g_78[p_1589->g_97],&p_1589->g_78[p_1589->g_97],&p_1589->g_78[p_1589->g_97],&p_1589->g_78[p_1589->g_97]}},{{&p_1589->g_78[p_1589->g_97],&p_1589->g_78[p_1589->g_97],&p_1589->g_78[p_1589->g_97],&p_1589->g_78[p_1589->g_97]}},{{&p_1589->g_78[p_1589->g_97],&p_1589->g_78[p_1589->g_97],&p_1589->g_78[p_1589->g_97],&p_1589->g_78[p_1589->g_97]}}};
                uint8_t **l_1219 = &p_1589->g_608;
                int8_t *l_1227 = &p_1589->g_835;
                int i, j, k;
                (*p_1589->g_111) ^= ((safe_add_func_int32_t_s_s(((*l_743) < (((0xA2L && (safe_add_func_uint8_t_u_u((((*l_1212) = (3UL & ((((((GROUP_DIVERGE(2, 1) , l_1212) == ((*l_52) = l_1213[0][0][2])) , (p_1589->g_1214 != l_1217)) <= 0x7E48L) , l_1219) == (void*)0))) > p_45), 0x1AL))) >= l_1220) ^ GROUP_DIVERGE(2, 1))), GROUP_DIVERGE(2, 1))) & 1UL);
                if (((~(~(safe_lshift_func_int8_t_s_u(((*l_1227) = (safe_add_func_int16_t_s_s(0x623EL, (safe_rshift_func_int8_t_s_u(0x7BL, 2))))), 4)))) , p_45))
                { /* block id: 589 */
                    uint8_t **l_1229 = (void*)0;
                    uint8_t **l_1230 = (void*)0;
                    uint8_t **l_1231 = &l_1228[6];
                    int32_t *****l_1236 = &l_81;
                    int32_t l_1239[2][10][7] = {{{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L}},{{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L},{0x5C6B6F56L,(-9L),0x68C3ED6FL,(-3L),0L,1L,0x5C6B6F56L}}};
                    uint64_t *l_1240 = &p_1589->g_698;
                    int32_t *****l_1241[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i, j, k;
                    (*p_1589->g_187) ^= ((((*l_1219) != ((*l_1231) = l_1228[1])) && 1UL) || ((((l_1236 = ((safe_sub_func_int8_t_s_s((safe_mul_func_int8_t_s_s((**p_1589->g_570), (-1L))), 1UL)) , l_1236)) != (((((0xCBL ^ (((*l_1240) |= (safe_div_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (l_1239[1][3][5] , (-9L))))) <= p_45)) > p_45) & l_1239[1][3][5]) , FAKE_DIVERGE(p_1589->group_2_offset, get_group_id(2), 10)) , l_1241[1])) && p_45) && 0x15E99C12L));
                }
                else
                { /* block id: 594 */
                    uint64_t l_1257 = 0x9AB61DD3FEE0AE09L;
                    for (p_1589->g_835 = 0; (p_1589->g_835 >= (-26)); p_1589->g_835--)
                    { /* block id: 597 */
                        (*l_1212) |= ((*p_1589->g_99) != ((((safe_sub_func_uint16_t_u_u(p_1589->g_188, ((*l_77) |= (safe_sub_func_uint64_t_u_u(((((p_1589->g_156 = 0x69DCL) , (safe_rshift_func_int16_t_s_s((p_45 , (((((**l_81) == (void*)0) , (safe_mul_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_45, p_1589->g_448)), l_1256)), p_45))) < 65535UL) != 0x36L)), p_45))) , GROUP_DIVERGE(2, 1)) & 254UL), l_1257))))) || 0xA6B0L) , p_45) , (void*)0));
                    }
                }
                for (l_1130 = 0; (l_1130 != 29); l_1130 = safe_add_func_uint64_t_u_u(l_1130, 8))
                { /* block id: 605 */
                    uint32_t l_1266 = 0xB40B1686L;
                    for (p_1589->g_696 = 0; (p_1589->g_696 <= 0); p_1589->g_696 += 1)
                    { /* block id: 608 */
                        int i, j, k;
                        l_1213[p_1589->g_696][p_1589->g_97][(p_1589->g_97 + 2)] = l_1213[(p_1589->g_696 + 2)][p_1589->g_97][(p_1589->g_97 + 2)];
                        p_1589->g_78[p_1589->g_696] = (safe_mod_func_int64_t_s_s(p_1589->g_78[p_1589->g_97], (safe_mul_func_int8_t_s_s((**p_1589->g_570), 0x15L))));
                        (**l_82) = &p_1589->g_78[p_1589->g_97];
                    }
                    for (p_1589->g_245 = 27; (p_1589->g_245 > 42); ++p_1589->g_245)
                    { /* block id: 615 */
                        if (p_45)
                            break;
                        if (l_1266)
                            continue;
                    }
                }
            }
        }
    }
    (*l_77) = ((!(((safe_lshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(p_1589->g_289[0], (!(p_1589->g_385[1][1][4] |= ((safe_add_func_uint16_t_u_u(((safe_unary_minus_func_int32_t_s((safe_mul_func_uint16_t_u_u(p_1589->g_378[4][6][3], ((safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s((((safe_rshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u((((*l_52) = (*l_52)) == &l_1115[3]), (safe_add_func_uint8_t_u_u(3UL, (safe_rshift_func_int8_t_s_u((&p_1589->g_608 != ((((*l_1297) = (((*l_1292) = (safe_lshift_func_int16_t_s_u((*l_743), 15))) != (safe_lshift_func_uint8_t_u_u(0x0BL, ((safe_add_func_uint64_t_u_u(((((0x26L > 0x71L) , p_45) > p_45) < (***p_1589->g_1214)), (*l_743))) & p_45))))) , 0x7A05B59BL) , &l_1228[7])), p_45)))))), 6)) ^ (-1L)) > 0xF44E9B42818E7653L), 2)) && p_45), 255UL)), p_45)) ^ l_1298[0]))))) != 0x27L), p_45)) >= (*l_743)))))), 1)) , (*l_77)) && (*p_1589->g_111))) == p_45);
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_40 p_1589->g_78 p_1589->g_235 p_1589->g_765 p_1589->g_187 p_1589->g_188
 * writes: p_1589->g_40 p_1589->g_232 p_1589->g_78 p_1589->g_765 p_1589->g_188
 */
int32_t * func_46(int32_t ** p_47, uint8_t  p_48, int32_t * p_49, int32_t * p_50, int64_t  p_51, struct S0 * p_1589)
{ /* block id: 341 */
    int32_t *l_753 = &p_1589->g_78[0];
    int32_t l_756 = 0x4C65020DL;
    int32_t l_757 = 0x58787A7BL;
    int32_t l_758 = 0x36C03372L;
    int32_t l_759 = 0x0F86DF7CL;
    int32_t l_760 = 0L;
    int32_t l_761[1][1][4];
    int32_t l_762 = 0x50384D63L;
    int32_t l_763[10][6][3] = {{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}},{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}},{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}},{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}},{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}},{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}},{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}},{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}},{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}},{{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL},{0x75E98CAAL,0x75E98CAAL,0x75E98CAAL}}};
    int32_t l_768 = 0x7F35728DL;
    uint64_t *l_773[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint64_t l_774 = 3UL;
    uint32_t l_783 = 0x3AF58420L;
    uint32_t *l_792 = &p_1589->g_291;
    uint32_t **l_791 = &l_792;
    int32_t ***l_812 = (void*)0;
    int8_t **l_874 = &p_1589->g_571[1];
    uint8_t l_894 = 0xEDL;
    int16_t *l_897 = &p_1589->g_385[1][0][8];
    int16_t *l_898 = &p_1589->g_293;
    int32_t **l_932[1];
    int8_t l_1011 = 0x7EL;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 4; k++)
                l_761[i][j][k] = 0x6DCCE4EBL;
        }
    }
    for (i = 0; i < 1; i++)
        l_932[i] = &l_753;
    for (p_1589->g_40 = 0; (p_1589->g_40 <= 0); p_1589->g_40 += 1)
    { /* block id: 344 */
        int64_t *l_751 = &p_1589->g_232;
        uint8_t ****l_752 = &p_1589->g_626;
        int32_t *l_754 = &p_1589->g_78[0];
        int32_t *l_755[4][9] = {{&p_1589->g_78[p_1589->g_40],(void*)0,&p_1589->g_78[p_1589->g_40],&p_1589->g_351,&p_1589->g_78[p_1589->g_40],(void*)0,&p_1589->g_78[p_1589->g_40],&p_1589->g_23,&p_1589->g_23},{&p_1589->g_78[p_1589->g_40],(void*)0,&p_1589->g_78[p_1589->g_40],&p_1589->g_351,&p_1589->g_78[p_1589->g_40],(void*)0,&p_1589->g_78[p_1589->g_40],&p_1589->g_23,&p_1589->g_23},{&p_1589->g_78[p_1589->g_40],(void*)0,&p_1589->g_78[p_1589->g_40],&p_1589->g_351,&p_1589->g_78[p_1589->g_40],(void*)0,&p_1589->g_78[p_1589->g_40],&p_1589->g_23,&p_1589->g_23},{&p_1589->g_78[p_1589->g_40],(void*)0,&p_1589->g_78[p_1589->g_40],&p_1589->g_351,&p_1589->g_78[p_1589->g_40],(void*)0,&p_1589->g_78[p_1589->g_40],&p_1589->g_23,&p_1589->g_23}};
        int64_t l_764 = (-10L);
        int i, j;
        p_1589->g_78[p_1589->g_40] = ((p_1589->g_78[p_1589->g_40] , (((safe_mul_func_uint16_t_u_u(p_48, ((-1L) | (((p_48 != (p_48 , ((((safe_unary_minus_func_int32_t_s(((safe_mod_func_uint16_t_u_u(p_1589->g_235[7], (((*l_751) = (((safe_sub_func_int32_t_s_s(((GROUP_DIVERGE(1, 1) , GROUP_DIVERGE(1, 1)) , (-1L)), ((((1UL & 0x0960L) != p_48) , GROUP_DIVERGE(1, 1)) & 4294967295UL))) | 1UL) || 0x5FF07107L)) | 18446744073709551615UL))) , p_1589->g_78[p_1589->g_40]))) == 0x867A7C63L) , (void*)0) == l_752))) , (void*)0) == l_753)))) >= p_1589->g_78[p_1589->g_40]) || p_48)) , p_1589->g_78[p_1589->g_40]);
        --p_1589->g_765[1][1];
        (*l_753) = (l_768 <= p_51);
    }
    (*p_1589->g_187) = 0L;
    (*p_1589->g_187) = (*p_1589->g_187);
    return (*p_47);
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_187
 * writes: p_1589->g_188
 */
int32_t * func_54(uint16_t  p_55, uint32_t  p_56, struct S0 * p_1589)
{ /* block id: 338 */
    int64_t l_741 = 0L;
    int32_t *l_742 = &p_1589->g_78[0];
    (*p_1589->g_187) = (l_741 ^ 0x1DACD51C38375A2CL);
    return l_742;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_95 p_1589->g_448 p_1589->g_235 p_1589->g_40 p_1589->g_608 p_1589->g_698
 * writes: p_1589->g_95 p_1589->g_448 p_1589->g_210 p_1589->g_351 p_1589->g_40 p_1589->g_245 p_1589->g_378 p_1589->g_288 p_1589->g_696 p_1589->g_698
 */
int32_t  func_57(int32_t ** p_58, int16_t  p_59, int32_t  p_60, struct S0 * p_1589)
{ /* block id: 294 */
    int32_t l_665 = 0x6340B363L;
    int16_t l_691[4][2] = {{2L,2L},{2L,2L},{2L,2L},{2L,2L}};
    uint16_t *l_694 = (void*)0;
    int32_t l_704[4][3];
    uint8_t l_709 = 0xADL;
    int32_t **l_717 = &p_1589->g_67;
    int32_t *l_737[4] = {&p_1589->g_188,&p_1589->g_188,&p_1589->g_188,&p_1589->g_188};
    uint64_t l_738 = 18446744073709551607UL;
    int i, j;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
            l_704[i][j] = (-2L);
    }
    for (p_1589->g_95 = 0; (p_1589->g_95 == 52); p_1589->g_95++)
    { /* block id: 297 */
        int32_t l_677 = 6L;
        int32_t l_678[5][10] = {{0x4D3CAA88L,0x4D3CAA88L,(-8L),0x43EB76EBL,(-1L),0x43EB76EBL,(-8L),0x4D3CAA88L,0x4D3CAA88L,(-8L)},{0x4D3CAA88L,0x4D3CAA88L,(-8L),0x43EB76EBL,(-1L),0x43EB76EBL,(-8L),0x4D3CAA88L,0x4D3CAA88L,(-8L)},{0x4D3CAA88L,0x4D3CAA88L,(-8L),0x43EB76EBL,(-1L),0x43EB76EBL,(-8L),0x4D3CAA88L,0x4D3CAA88L,(-8L)},{0x4D3CAA88L,0x4D3CAA88L,(-8L),0x43EB76EBL,(-1L),0x43EB76EBL,(-8L),0x4D3CAA88L,0x4D3CAA88L,(-8L)},{0x4D3CAA88L,0x4D3CAA88L,(-8L),0x43EB76EBL,(-1L),0x43EB76EBL,(-8L),0x4D3CAA88L,0x4D3CAA88L,(-8L)}};
        uint16_t *l_695 = (void*)0;
        int i, j;
        if (l_665)
            break;
        for (p_1589->g_448 = 3; (p_1589->g_448 >= 56); p_1589->g_448 = safe_add_func_uint8_t_u_u(p_1589->g_448, 8))
        { /* block id: 301 */
            int16_t l_703 = (-1L);
            int32_t l_707[7];
            int64_t l_708[2][7][2] = {{{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L}},{{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L}}};
            int16_t l_733 = (-6L);
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_707[i] = 1L;
            for (p_1589->g_210 = 0; (p_1589->g_210 != 7); ++p_1589->g_210)
            { /* block id: 304 */
                uint64_t l_679 = 0xA925944325242F36L;
                int8_t *l_690 = &p_1589->g_40;
                int8_t *l_692 = &p_1589->g_288[6];
                uint64_t *l_697 = &p_1589->g_698;
                int32_t *l_699 = &p_1589->g_188;
                int32_t l_700 = 0x617C0447L;
                int32_t *l_701 = &l_678[4][8];
                int32_t *l_702[1][1][4];
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 4; k++)
                            l_702[i][j][k] = &l_700;
                    }
                }
                for (p_1589->g_351 = 0; (p_1589->g_351 < 2); p_1589->g_351 = safe_add_func_int64_t_s_s(p_1589->g_351, 5))
                { /* block id: 307 */
                    int8_t l_672[7][6] = {{(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)}};
                    int32_t *l_673 = (void*)0;
                    int32_t *l_674 = &p_1589->g_78[0];
                    int32_t *l_675 = &p_1589->g_188;
                    int32_t *l_676[7] = {(void*)0,&p_1589->g_188,(void*)0,(void*)0,&p_1589->g_188,(void*)0,(void*)0};
                    int i, j;
                    ++l_679;
                    return p_1589->g_235[6];
                }
                atomic_xor(&p_1589->l_atomic_reduction[0], (safe_add_func_int32_t_s_s(((safe_mul_func_int8_t_s_s((safe_add_func_int8_t_s_s((((*l_690) ^= ((safe_sub_func_int16_t_s_s(l_679, p_60)) | 4294967292UL)) > ((*p_1589->g_608) = (1UL & p_59))), ((*l_692) = l_691[1][0]))), (safe_unary_minus_func_uint64_t_u(((*l_697) |= (p_1589->g_696 = (((l_695 = l_694) != &p_1589->g_156) == (p_60 == p_60)))))))) ^ l_677), l_679)));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1589->v_collective += p_1589->l_atomic_reduction[0];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (l_679)
                    continue;
                l_709++;
            }
        }
    }
    ++l_738;
    return p_1589->g_448;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_570 p_1589->g_571 p_1589->g_219 p_1589->g_291 p_1589->g_187 p_1589->g_293 p_1589->g_35 p_1589->g_639
 * writes: p_1589->g_188 p_1589->g_626 p_1589->g_293 p_1589->g_67 p_1589->g_639 p_1589->g_608 p_1589->g_385 p_1589->g_187
 */
int32_t ** func_61(int64_t  p_62, int32_t ** p_63, uint64_t  p_64, uint64_t  p_65, struct S0 * p_1589)
{ /* block id: 276 */
    uint64_t *l_616 = &p_1589->g_95;
    uint64_t **l_615 = &l_616;
    uint64_t **l_617 = (void*)0;
    uint64_t **l_618 = (void*)0;
    uint64_t *l_620 = &p_1589->g_95;
    uint64_t **l_619 = &l_620;
    int32_t l_621[10];
    uint8_t ***l_625[10][8] = {{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607},{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607},{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607},{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607},{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607},{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607},{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607},{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607},{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607},{&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607,&p_1589->g_607}};
    uint8_t ****l_624[6] = {&l_625[1][7],&l_625[9][3],&l_625[1][7],&l_625[1][7],&l_625[9][3],&l_625[1][7]};
    uint8_t *l_635 = &p_1589->g_448;
    uint16_t l_643[9] = {0x7E53L,0x7E53L,0x7E53L,0x7E53L,0x7E53L,0x7E53L,0x7E53L,0x7E53L,0x7E53L};
    int32_t **l_659 = &p_1589->g_67;
    int32_t **l_660 = &p_1589->g_67;
    int32_t **l_661 = &p_1589->g_67;
    int32_t **l_662[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j;
    for (i = 0; i < 10; i++)
        l_621[i] = 7L;
    (*p_1589->g_187) = (((safe_mod_func_int16_t_s_s(0x0D8FL, ((((safe_mul_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u((((*l_615) = &p_65) != ((*l_619) = &p_1589->g_95)))), p_62)) , 4L) <= ((((0L != l_621[8]) | (((safe_lshift_func_int8_t_s_u((**p_1589->g_570), 4)) , p_1589->g_291) , l_621[8])) & 0UL) != l_621[8])) || p_64))) | l_621[5]) & FAKE_DIVERGE(p_1589->local_1_offset, get_local_id(1), 10));
    (*p_1589->g_187) = ((((p_1589->g_626 = &p_1589->g_607) == (void*)0) < l_621[8]) ^ ((void*)0 == &p_1589->g_210));
    for (p_1589->g_293 = 0; (p_1589->g_293 > 20); p_1589->g_293 = safe_add_func_uint32_t_u_u(p_1589->g_293, 2))
    { /* block id: 284 */
        uint16_t l_629 = 3UL;
        int32_t l_632 = 0L;
        int32_t *l_638 = &p_1589->g_639;
        uint8_t *l_640 = &p_1589->g_378[3][6][0];
        int16_t *l_641 = (void*)0;
        int16_t *l_642 = &p_1589->g_385[5][3][4];
        int32_t *l_644 = &p_1589->g_188;
        int32_t *l_645 = &p_1589->g_351;
        int32_t *l_646 = (void*)0;
        int32_t *l_647 = &p_1589->g_351;
        int32_t *l_648 = &l_632;
        int32_t *l_649 = &p_1589->g_188;
        int32_t *l_650 = &p_1589->g_78[0];
        int32_t *l_651 = &l_621[4];
        int32_t *l_652 = &l_621[8];
        int32_t *l_653 = &l_621[4];
        int32_t *l_654[9][1][3] = {{{&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]}},{{&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]}},{{&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]}},{{&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]}},{{&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]}},{{&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]}},{{&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]}},{{&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]}},{{&p_1589->g_78[0],&p_1589->g_78[0],&p_1589->g_78[0]}}};
        int64_t l_655[2];
        uint64_t l_656 = 1UL;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_655[i] = (-1L);
        (*p_63) = &l_621[8];
        l_643[2] = ((((p_1589->g_35 || ((l_629 > p_65) | ((*l_642) = ((**p_1589->g_570) < (0x48L <= ((l_632 = p_62) < (safe_mul_func_uint8_t_u_u((p_65 < (l_635 != (p_1589->g_608 = (((*l_638) |= ((safe_mod_func_uint16_t_u_u(p_1589->g_291, 0x6200L)) | p_65)) , l_640)))), 0UL)))))))) ^ p_65) , l_629) & (-2L));
        l_656++;
    }
    return &p_1589->g_187;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_606 p_1589->g_23
 * writes: p_1589->g_607
 */
uint64_t  func_68(int32_t * p_69, uint64_t  p_70, int32_t ** p_71, int64_t  p_72, struct S0 * p_1589)
{ /* block id: 60 */
    uint32_t *l_153[9][7] = {{(void*)0,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_97,&p_1589->g_35,&p_1589->g_35},{(void*)0,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_97,&p_1589->g_35,&p_1589->g_35},{(void*)0,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_97,&p_1589->g_35,&p_1589->g_35},{(void*)0,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_97,&p_1589->g_35,&p_1589->g_35},{(void*)0,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_97,&p_1589->g_35,&p_1589->g_35},{(void*)0,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_97,&p_1589->g_35,&p_1589->g_35},{(void*)0,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_97,&p_1589->g_35,&p_1589->g_35},{(void*)0,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_97,&p_1589->g_35,&p_1589->g_35},{(void*)0,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_97,&p_1589->g_35,&p_1589->g_35}};
    int32_t ***l_162 = (void*)0;
    uint16_t *l_175 = (void*)0;
    int32_t l_211 = 0x059B935AL;
    uint64_t l_248 = 18446744073709551615UL;
    uint32_t l_271 = 4294967288UL;
    int32_t l_290[4][10] = {{0x18913119L,0x18913119L,0x6054026AL,0x3476BEEBL,0x0827C41BL,0x3476BEEBL,0x6054026AL,0x18913119L,0x18913119L,0x6054026AL},{0x18913119L,0x18913119L,0x6054026AL,0x3476BEEBL,0x0827C41BL,0x3476BEEBL,0x6054026AL,0x18913119L,0x18913119L,0x6054026AL},{0x18913119L,0x18913119L,0x6054026AL,0x3476BEEBL,0x0827C41BL,0x3476BEEBL,0x6054026AL,0x18913119L,0x18913119L,0x6054026AL},{0x18913119L,0x18913119L,0x6054026AL,0x3476BEEBL,0x0827C41BL,0x3476BEEBL,0x6054026AL,0x18913119L,0x18913119L,0x6054026AL}};
    uint64_t l_354 = 0xDA144566BA5330F8L;
    uint16_t l_380 = 65534UL;
    int8_t l_392 = (-1L);
    uint32_t l_412[7][8] = {{0x40F31182L,0x6D087710L,4294967295UL,0x6D087710L,0x40F31182L,0x40F31182L,0x6D087710L,4294967295UL},{0x40F31182L,0x6D087710L,4294967295UL,0x6D087710L,0x40F31182L,0x40F31182L,0x6D087710L,4294967295UL},{0x40F31182L,0x6D087710L,4294967295UL,0x6D087710L,0x40F31182L,0x40F31182L,0x6D087710L,4294967295UL},{0x40F31182L,0x6D087710L,4294967295UL,0x6D087710L,0x40F31182L,0x40F31182L,0x6D087710L,4294967295UL},{0x40F31182L,0x6D087710L,4294967295UL,0x6D087710L,0x40F31182L,0x40F31182L,0x6D087710L,4294967295UL},{0x40F31182L,0x6D087710L,4294967295UL,0x6D087710L,0x40F31182L,0x40F31182L,0x6D087710L,4294967295UL},{0x40F31182L,0x6D087710L,4294967295UL,0x6D087710L,0x40F31182L,0x40F31182L,0x6D087710L,4294967295UL}};
    int16_t l_472 = 0L;
    int64_t *l_538 = &p_1589->g_312;
    int16_t l_540 = 0x5A79L;
    int64_t ***l_596[9][2];
    int8_t *l_602[6][4][10] = {{{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]}},{{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]}},{{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]}},{{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]}},{{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]}},{{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]},{(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7],&p_1589->g_288[7],(void*)0,(void*)0,&p_1589->g_288[7]}}};
    int32_t l_603 = 6L;
    uint8_t *l_605 = &p_1589->g_378[2][1][0];
    uint8_t **l_604 = &l_605;
    int i, j, k;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
            l_596[i][j] = &p_1589->g_503;
    }
    for (p_72 = 0; (p_72 <= 0); p_72 += 1)
    { /* block id: 63 */
        uint32_t l_168 = 1UL;
        int32_t l_177 = 0x26CCCF15L;
        uint64_t *l_180 = &p_1589->g_95;
        int32_t **l_181 = &p_1589->g_67;
        int32_t **l_182 = &p_1589->g_67;
        int32_t **l_183 = &p_1589->g_67;
        int32_t **l_184 = &p_1589->g_67;
        int32_t **l_185 = (void*)0;
        int32_t **l_186[2];
        int8_t l_247 = 4L;
        int32_t l_265 = 0x095B77DEL;
        int32_t ****l_345 = (void*)0;
        int16_t l_353 = 0L;
        int16_t l_379 = 0x0E94L;
        int32_t **l_391 = &p_1589->g_187;
        int32_t l_403 = (-1L);
        uint32_t *l_410 = &p_1589->g_35;
        int8_t l_427[5];
        uint64_t l_521[4] = {0x794D6A80B70DA98EL,0x794D6A80B70DA98EL,0x794D6A80B70DA98EL,0x794D6A80B70DA98EL};
        int i;
        for (i = 0; i < 2; i++)
            l_186[i] = &p_1589->g_67;
        for (i = 0; i < 5; i++)
            l_427[i] = 5L;
        (1 + 1);
    }
    (*p_1589->g_606) = ((l_603 = (safe_lshift_func_uint16_t_u_s(p_72, 5))) , l_604);
    return p_1589->g_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_35 p_1589->g_66 p_1589->g_2 p_1589->g_99 p_1589->g_40 p_1589->g_23 p_1589->g_111 p_1589->g_78 p_1589->g_67 p_1589->g_97
 * writes: p_1589->g_67 p_1589->g_95 p_1589->g_97 p_1589->g_35 p_1589->g_40 p_1589->g_78
 */
int32_t * func_73(int32_t  p_74, struct S0 * p_1589)
{ /* block id: 26 */
    int32_t *l_87 = &p_1589->g_23;
    int32_t l_126 = 0L;
    int32_t l_132[3][9][3] = {{{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L}},{{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L}},{{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L}}};
    uint64_t l_136[4] = {0x0C4F71C144FEC2E3L,0x0C4F71C144FEC2E3L,0x0C4F71C144FEC2E3L,0x0C4F71C144FEC2E3L};
    uint64_t l_142[3][5];
    int32_t *l_152[5][1] = {{&p_1589->g_2},{&p_1589->g_2},{&p_1589->g_2},{&p_1589->g_2},{&p_1589->g_2}};
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
            l_142[i][j] = 0x83128F9B6ADA375BL;
    }
    for (p_74 = (-14); (p_74 > (-16)); p_74 = safe_sub_func_uint8_t_u_u(p_74, 6))
    { /* block id: 29 */
        int32_t l_93 = 0x49109B52L;
        uint64_t *l_94 = &p_1589->g_95;
        uint32_t *l_96 = &p_1589->g_97;
        int32_t *l_98 = &l_93;
        int32_t l_124 = 0x099FA619L;
        int32_t l_127[9] = {0x70739995L,0x37C26C73L,0x70739995L,0x70739995L,0x37C26C73L,0x70739995L,0x70739995L,0x37C26C73L,0x70739995L};
        int i;
        if ((safe_mod_func_uint16_t_u_u((p_1589->g_35 == (l_87 == ((*p_1589->g_66) = l_87))), ((p_74 , ((safe_unary_minus_func_uint64_t_u(((safe_mul_func_uint8_t_u_u((((*l_98) = (p_74 != ((*l_96) = ((safe_lshift_func_uint8_t_u_s(l_93, p_1589->g_2)) && ((*l_94) = p_74))))) || ((FAKE_DIVERGE(p_1589->group_0_offset, get_group_id(0), 10) , p_1589->g_99) != &p_1589->g_100)), p_1589->g_35)) >= GROUP_DIVERGE(1, 1)))) & (-2L))) , p_74))))
        { /* block id: 34 */
            int32_t *l_103 = &p_1589->g_23;
            int32_t l_129[5][2] = {{0x690FC208L,0x690FC208L},{0x690FC208L,0x690FC208L},{0x690FC208L,0x690FC208L},{0x690FC208L,0x690FC208L},{0x690FC208L,0x690FC208L}};
            int i, j;
            for (p_1589->g_35 = 11; (p_1589->g_35 >= 4); p_1589->g_35--)
            { /* block id: 37 */
                uint32_t l_104 = 0UL;
                int32_t l_128 = 0x6B221C00L;
                int32_t l_130 = 0x3A87377DL;
                int32_t l_131 = 0x0ED2AF60L;
                int32_t l_133 = 0x6BF4A85DL;
                int32_t l_134[8][6] = {{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)}};
                int i, j;
                l_98 = l_103;
                l_104--;
                for (p_1589->g_40 = (-11); (p_1589->g_40 >= (-14)); --p_1589->g_40)
                { /* block id: 42 */
                    int8_t l_112 = 0x61L;
                    int32_t *l_113 = &p_1589->g_78[0];
                    int32_t *l_114 = &p_1589->g_78[0];
                    int32_t *l_115 = &p_1589->g_78[0];
                    int32_t *l_116 = &l_93;
                    int32_t *l_117 = &l_93;
                    int32_t *l_118 = &l_93;
                    int32_t *l_119 = &l_93;
                    int32_t *l_120 = &p_1589->g_78[0];
                    int32_t *l_121 = &p_1589->g_78[0];
                    int32_t *l_122 = &p_1589->g_78[0];
                    int32_t *l_123[5][1][5];
                    int32_t l_125[9] = {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)};
                    int32_t l_135 = 8L;
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 5; k++)
                                l_123[i][j][k] = &l_93;
                        }
                    }
                    (*p_1589->g_111) &= (safe_lshift_func_int8_t_s_u((*l_87), 5));
                    l_136[0]++;
                    (*l_115) ^= (~6L);
                }
            }
        }
        else
        { /* block id: 48 */
            uint8_t l_151 = 255UL;
            l_126 = (safe_unary_minus_func_int8_t_s(((safe_add_func_int32_t_s_s(((*l_98) &= (((*p_1589->g_66) = &l_132[0][8][1]) == (void*)0)), l_142[2][2])) && (safe_div_func_int64_t_s_s(1L, (safe_mod_func_uint64_t_u_u(6UL, ((safe_div_func_uint32_t_u_u(((*l_87) , ((0xCCF313D3L == ((*l_98) = (**p_1589->g_66))) <= ((safe_add_func_uint32_t_u_u((l_151 , GROUP_DIVERGE(0, 1)), 0x6967B1FDL)) && p_1589->g_97))), 0x7CD55C4CL)) , 0x3A30042110810DBFL))))))));
            (*l_98) &= (**p_1589->g_66);
            (*p_1589->g_67) = p_74;
        }
        if ((*p_1589->g_111))
            continue;
        (*p_1589->g_66) = &p_74;
    }
    return l_152[4][0];
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1590;
    struct S0* p_1589 = &c_1590;
    struct S0 c_1591 = {
        (-4L), // p_1589->g_2
        (-1L), // p_1589->g_23
        4294967290UL, // p_1589->g_35
        (-1L), // p_1589->g_40
        &p_1589->g_23, // p_1589->g_67
        &p_1589->g_67, // p_1589->g_66
        {0x4DD9CEC6L}, // p_1589->g_78
        0x4DC86549E1F9A5DEL, // p_1589->g_95
        0xB1DDA348L, // p_1589->g_97
        (void*)0, // p_1589->g_100
        &p_1589->g_100, // p_1589->g_99
        &p_1589->g_78[0], // p_1589->g_111
        1UL, // p_1589->g_156
        0x51BBFE58L, // p_1589->g_188
        &p_1589->g_188, // p_1589->g_187
        1UL, // p_1589->g_210
        0x34L, // p_1589->g_219
        0x280712D52900F530L, // p_1589->g_232
        {0xC9L,0xC9L,0xC9L,0xC9L,0xC9L,0xC9L,0xC9L,0xC9L,0xC9L,0xC9L}, // p_1589->g_235
        0x1CL, // p_1589->g_245
        {0x16L,0x6AL,0x3EL,0x6AL,0x16L,0x16L,0x6AL,0x3EL,0x6AL,0x16L}, // p_1589->g_288
        {0x234BL,0x234BL,0x234BL,0x234BL,0x234BL}, // p_1589->g_289
        0x4622C585L, // p_1589->g_291
        1L, // p_1589->g_293
        0x2CC31B7F185931FFL, // p_1589->g_312
        0x5B57425EL, // p_1589->g_351
        {{{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}},{{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}},{{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}},{{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}},{{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}},{{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}},{{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}}}, // p_1589->g_378
        {{{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)}},{{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)}},{{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)}},{{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)}},{{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)}},{{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)}},{{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)},{0x55DDL,0L,(-1L),(-7L),0x1D5CL,(-7L),0x3D71L,9L,(-1L)}}}, // p_1589->g_385
        4UL, // p_1589->g_448
        (void*)0, // p_1589->g_504
        &p_1589->g_504, // p_1589->g_503
        &p_1589->g_503, // p_1589->g_502
        {&p_1589->g_219,&p_1589->g_219}, // p_1589->g_571
        &p_1589->g_571[1], // p_1589->g_570
        &p_1589->g_245, // p_1589->g_608
        &p_1589->g_608, // p_1589->g_607
        &p_1589->g_607, // p_1589->g_606
        &p_1589->g_607, // p_1589->g_626
        (-1L), // p_1589->g_639
        0x2B3F2452FBF3EAC7L, // p_1589->g_696
        0x479E893AE576F374L, // p_1589->g_698
        0x6976496AL, // p_1589->g_705
        1L, // p_1589->g_706
        {{0UL,0UL},{0UL,0UL}}, // p_1589->g_765
        (void*)0, // p_1589->g_794
        {{5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL}}, // p_1589->g_815
        &p_1589->g_815[0][0], // p_1589->g_814
        &p_1589->g_814, // p_1589->g_813
        1L, // p_1589->g_816
        (-1L), // p_1589->g_835
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1589->g_923
        0xECL, // p_1589->g_943
        {&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35,&p_1589->g_35}, // p_1589->g_1102
        {8L,8L,8L,8L}, // p_1589->g_1128
        &p_1589->g_293, // p_1589->g_1216
        &p_1589->g_1216, // p_1589->g_1215
        &p_1589->g_1215, // p_1589->g_1214
        (void*)0, // p_1589->g_1353
        &p_1589->g_1353, // p_1589->g_1352
        &p_1589->g_1352, // p_1589->g_1351
        &p_1589->g_1351, // p_1589->g_1350
        (void*)0, // p_1589->g_1367
        {{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}}, // p_1589->g_1375
        &p_1589->g_1375[1][1], // p_1589->g_1374
        {{&p_1589->g_1374,(void*)0,&p_1589->g_1374},{&p_1589->g_1374,(void*)0,&p_1589->g_1374},{&p_1589->g_1374,(void*)0,&p_1589->g_1374},{&p_1589->g_1374,(void*)0,&p_1589->g_1374},{&p_1589->g_1374,(void*)0,&p_1589->g_1374},{&p_1589->g_1374,(void*)0,&p_1589->g_1374},{&p_1589->g_1374,(void*)0,&p_1589->g_1374},{&p_1589->g_1374,(void*)0,&p_1589->g_1374},{&p_1589->g_1374,(void*)0,&p_1589->g_1374},{&p_1589->g_1374,(void*)0,&p_1589->g_1374}}, // p_1589->g_1373
        &p_1589->g_1373[5][2], // p_1589->g_1372
        &p_1589->g_1372, // p_1589->g_1371
        &p_1589->g_1371, // p_1589->g_1370
        &p_1589->g_1370, // p_1589->g_1369
        18446744073709551610UL, // p_1589->g_1425
        (void*)0, // p_1589->g_1521
        {&p_1589->g_1521,&p_1589->g_1521,&p_1589->g_1521,&p_1589->g_1521}, // p_1589->g_1520
        &p_1589->g_1520[0], // p_1589->g_1519
        &p_1589->g_78[0], // p_1589->g_1557
        0, // p_1589->v_collective
        sequence_input[get_global_id(0)], // p_1589->global_0_offset
        sequence_input[get_global_id(1)], // p_1589->global_1_offset
        sequence_input[get_global_id(2)], // p_1589->global_2_offset
        sequence_input[get_local_id(0)], // p_1589->local_0_offset
        sequence_input[get_local_id(1)], // p_1589->local_1_offset
        sequence_input[get_local_id(2)], // p_1589->local_2_offset
        sequence_input[get_group_id(0)], // p_1589->group_0_offset
        sequence_input[get_group_id(1)], // p_1589->group_1_offset
        sequence_input[get_group_id(2)], // p_1589->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1590 = c_1591;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1589);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1589->g_2, "p_1589->g_2", print_hash_value);
    transparent_crc(p_1589->g_23, "p_1589->g_23", print_hash_value);
    transparent_crc(p_1589->g_35, "p_1589->g_35", print_hash_value);
    transparent_crc(p_1589->g_40, "p_1589->g_40", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1589->g_78[i], "p_1589->g_78[i]", print_hash_value);

    }
    transparent_crc(p_1589->g_95, "p_1589->g_95", print_hash_value);
    transparent_crc(p_1589->g_97, "p_1589->g_97", print_hash_value);
    transparent_crc(p_1589->g_156, "p_1589->g_156", print_hash_value);
    transparent_crc(p_1589->g_188, "p_1589->g_188", print_hash_value);
    transparent_crc(p_1589->g_210, "p_1589->g_210", print_hash_value);
    transparent_crc(p_1589->g_219, "p_1589->g_219", print_hash_value);
    transparent_crc(p_1589->g_232, "p_1589->g_232", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1589->g_235[i], "p_1589->g_235[i]", print_hash_value);

    }
    transparent_crc(p_1589->g_245, "p_1589->g_245", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1589->g_288[i], "p_1589->g_288[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1589->g_289[i], "p_1589->g_289[i]", print_hash_value);

    }
    transparent_crc(p_1589->g_291, "p_1589->g_291", print_hash_value);
    transparent_crc(p_1589->g_293, "p_1589->g_293", print_hash_value);
    transparent_crc(p_1589->g_312, "p_1589->g_312", print_hash_value);
    transparent_crc(p_1589->g_351, "p_1589->g_351", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1589->g_378[i][j][k], "p_1589->g_378[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1589->g_385[i][j][k], "p_1589->g_385[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1589->g_448, "p_1589->g_448", print_hash_value);
    transparent_crc(p_1589->g_639, "p_1589->g_639", print_hash_value);
    transparent_crc(p_1589->g_696, "p_1589->g_696", print_hash_value);
    transparent_crc(p_1589->g_698, "p_1589->g_698", print_hash_value);
    transparent_crc(p_1589->g_705, "p_1589->g_705", print_hash_value);
    transparent_crc(p_1589->g_706, "p_1589->g_706", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1589->g_765[i][j], "p_1589->g_765[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1589->g_815[i][j], "p_1589->g_815[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1589->g_816, "p_1589->g_816", print_hash_value);
    transparent_crc(p_1589->g_835, "p_1589->g_835", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1589->g_923[i], "p_1589->g_923[i]", print_hash_value);

    }
    transparent_crc(p_1589->g_943, "p_1589->g_943", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1589->g_1128[i], "p_1589->g_1128[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1589->g_1375[i][j], "p_1589->g_1375[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1589->g_1425, "p_1589->g_1425", print_hash_value);
    transparent_crc(p_1589->v_collective, "p_1589->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
