// ---atomic_reductions ---fake_divergence -g 83,45,1 -l 83,1,1
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


// Seed: 80

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int16_t  f0;
   int8_t  f1;
   uint32_t  f2;
   uint8_t  f3;
   uint16_t  f4;
   int16_t  f5;
   volatile int8_t  f6;
};

struct S1 {
    volatile int32_t g_2;
    int32_t g_3;
    int32_t g_29;
    uint64_t g_31[3][10][5];
    uint64_t g_38[9][8][3];
    int32_t * volatile g_43;
    int32_t g_45[7];
    int64_t g_114;
    volatile int64_t g_121[10];
    struct S0 g_125[8][4][8];
    int32_t * volatile g_129;
    volatile struct S0 g_137[4][9][7];
    int32_t * volatile g_143;
    int16_t g_151;
    int64_t g_167;
    int8_t *g_173;
    uint64_t g_188;
    uint8_t g_194;
    volatile struct S0 g_201;
    int32_t g_231;
    uint32_t g_290;
    struct S0 g_373;
    uint16_t *g_386;
    int32_t *g_397;
    int32_t g_399;
    struct S0 g_429;
    volatile struct S0 g_490;
    volatile struct S0 g_492;
    volatile int64_t **g_529;
    volatile int64_t *** volatile g_530;
    volatile int16_t *g_565;
    volatile int16_t **g_564;
    uint64_t g_568;
    uint64_t g_570;
    uint32_t g_585;
    int16_t *g_618;
    int16_t **g_617;
    struct S0 g_672;
    struct S0 *g_743;
    struct S0 ** volatile g_742;
    int32_t g_795;
    int32_t * volatile g_794;
    int32_t * volatile *g_793;
    volatile int8_t * volatile * volatile g_815;
    volatile int8_t * volatile * volatile *g_814;
    struct S0 ** volatile g_839;
    int16_t ***g_876[8];
    int16_t ****g_875;
    volatile int8_t g_917[2];
    int32_t *g_955;
    int32_t **g_954;
    int32_t **g_957;
    int32_t *** volatile g_956;
    struct S0 g_981;
    struct S0 g_1007;
    volatile struct S0 g_1013;
    uint32_t *g_1034[2];
    uint32_t * volatile * volatile g_1033;
    struct S0 g_1122;
    struct S0 g_1143;
    struct S0 g_1144;
    volatile int64_t g_1173;
    int8_t **g_1198[10];
    int8_t ***g_1197[6][4][2];
    uint32_t g_1245[4];
    struct S0 g_1285[2][8][2];
    int64_t g_1333[1][4][10];
    uint8_t g_1334;
    uint16_t *** volatile g_1375;
    uint16_t **g_1377;
    uint16_t *** volatile g_1376;
    struct S0 g_1386;
    struct S0 g_1406;
    volatile struct S0 g_1443[9][9];
    uint32_t g_1495;
    int32_t ** volatile g_1560;
    volatile struct S0 g_1593;
    int32_t g_1602;
    struct S0 ** volatile g_1639;
    struct S0 ** volatile *g_1638;
    volatile int64_t g_1653;
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
int8_t  func_1(struct S1 * p_1655);
int16_t  func_8(int32_t  p_9, int32_t  p_10, uint64_t  p_11, struct S1 * p_1655);
struct S0  func_12(int32_t  p_13, int32_t  p_14, int16_t  p_15, uint64_t  p_16, uint64_t  p_17, struct S1 * p_1655);
int32_t  func_55(int32_t * p_56, int32_t  p_57, int32_t * p_58, uint16_t  p_59, int32_t  p_60, struct S1 * p_1655);
int8_t  func_65(uint64_t * p_66, int32_t * p_67, int32_t  p_68, struct S1 * p_1655);
uint64_t * func_69(int64_t  p_70, int32_t  p_71, uint32_t  p_72, int32_t  p_73, int64_t  p_74, struct S1 * p_1655);
int32_t  func_76(uint64_t * p_77, struct S1 * p_1655);
int32_t * func_82(int64_t  p_83, int32_t  p_84, uint64_t  p_85, uint16_t  p_86, struct S1 * p_1655);
struct S0  func_87(uint8_t  p_88, uint64_t * p_89, struct S1 * p_1655);
uint64_t * func_90(int64_t  p_91, uint64_t * p_92, uint32_t  p_93, int8_t  p_94, uint64_t * p_95, struct S1 * p_1655);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1655->g_3 p_1655->g_1376 p_1655->g_1377 p_1655->g_386 p_1655->g_125.f4 p_1655->g_1638 p_1655->g_173 p_1655->g_125.f1 p_1655->g_672.f0 p_1655->g_1653 p_1655->g_955
 * writes: p_1655->g_3 p_1655->g_125.f1
 */
int8_t  func_1(struct S1 * p_1655)
{ /* block id: 4 */
    uint8_t l_18 = 0x99L;
    uint64_t *l_37 = &p_1655->g_38[8][6][0];
    uint16_t ***l_1615 = (void*)0;
    int32_t **l_1625 = &p_1655->g_397;
    struct S0 **l_1637 = &p_1655->g_743;
    struct S0 ***l_1636[4][3][5] = {{{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637},{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637},{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637}},{{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637},{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637},{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637}},{{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637},{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637},{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637}},{{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637},{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637},{&l_1637,&l_1637,&l_1637,&l_1637,&l_1637}}};
    int32_t l_1646 = (-1L);
    uint32_t *l_1647[8][1][4] = {{{(void*)0,&p_1655->g_290,(void*)0,(void*)0}},{{(void*)0,&p_1655->g_290,(void*)0,(void*)0}},{{(void*)0,&p_1655->g_290,(void*)0,(void*)0}},{{(void*)0,&p_1655->g_290,(void*)0,(void*)0}},{{(void*)0,&p_1655->g_290,(void*)0,(void*)0}},{{(void*)0,&p_1655->g_290,(void*)0,(void*)0}},{{(void*)0,&p_1655->g_290,(void*)0,(void*)0}},{{(void*)0,&p_1655->g_290,(void*)0,(void*)0}}};
    int32_t l_1648[9][9][1] = {{{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL}},{{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL}},{{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL}},{{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL}},{{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL}},{{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL}},{{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL}},{{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL}},{{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL},{0x1268581DL}}};
    int64_t l_1649 = (-1L);
    int32_t l_1650 = 1L;
    int8_t *l_1651[4][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_1652 = 0x3819D999L;
    int32_t *l_1654 = &l_1652;
    int i, j, k;
    for (p_1655->g_3 = 0; (p_1655->g_3 != (-19)); --p_1655->g_3)
    { /* block id: 7 */
        uint64_t l_23 = 0xB58331C587C7AB89L;
        int32_t *l_28 = &p_1655->g_29;
        uint64_t *l_30 = &p_1655->g_31[1][7][3];
        int16_t l_36 = (-1L);
        int32_t *l_1601 = &p_1655->g_1602;
        uint16_t ***l_1609 = &p_1655->g_1377;
        int32_t l_1614 = 0x0E0E6C9FL;
        int32_t **l_1627 = &p_1655->g_397;
        (1 + 1);
    }
    (*p_1655->g_955) &= (~(((safe_lshift_func_int16_t_s_s((safe_add_func_int8_t_s_s((safe_add_func_uint16_t_u_u((***p_1655->g_1376), l_18)), ((safe_sub_func_int64_t_s_s(l_18, ((l_1636[1][1][1] != p_1655->g_1638) > (safe_mod_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((((l_1652 = ((*p_1655->g_173) ^= (safe_lshift_func_int16_t_s_u((l_1650 = (l_1649 = ((0UL <= 0x158DL) ^ (l_1648[6][2][0] = ((l_1646 = 0x7976L) | 1L))))), (**p_1655->g_1377))))) , &p_1655->g_875) != &p_1655->g_875), p_1655->g_672.f0)), l_18))))) || (*p_1655->g_173)))), 9)) & l_18) || p_1655->g_1653));
    l_1654 = (void*)0;
    return (*p_1655->g_173);
}


/* ------------------------------------------ */
/* 
 * reads : p_1655->g_839 p_1655->g_743 p_1655->g_373 p_1655->g_1376 p_1655->g_1377 p_1655->g_1144.f5 p_1655->g_397 p_1655->g_231 p_1655->g_672.f4 p_1655->g_386 p_1655->g_125.f4 p_1655->g_31 p_1655->g_129 p_1655->g_1560 p_1655->g_570 p_1655->g_38 p_1655->g_1593
 * writes: p_1655->g_45 p_1655->g_955 p_1655->g_570 p_1655->g_38 p_1655->g_125.f4 p_1655->g_1143.f4 p_1655->g_114 p_1655->g_151
 */
int16_t  func_8(int32_t  p_9, int32_t  p_10, uint64_t  p_11, struct S1 * p_1655)
{ /* block id: 766 */
    int32_t l_1559[9][10][2] = {{{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL}},{{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL}},{{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL}},{{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL}},{{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL}},{{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL}},{{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL}},{{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL}},{{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL},{0x3A2CBE9BL,0x3DCC5DEAL}}};
    uint64_t *l_1561 = &p_1655->g_570;
    uint64_t *l_1578[5][2] = {{&p_1655->g_31[1][5][0],&p_1655->g_38[5][3][1]},{&p_1655->g_31[1][5][0],&p_1655->g_38[5][3][1]},{&p_1655->g_31[1][5][0],&p_1655->g_38[5][3][1]},{&p_1655->g_31[1][5][0],&p_1655->g_38[5][3][1]},{&p_1655->g_31[1][5][0],&p_1655->g_38[5][3][1]}};
    int32_t l_1596[4];
    uint16_t *l_1597 = &p_1655->g_1143.f4;
    int16_t *l_1598 = &p_1655->g_151;
    int8_t l_1599 = 0x2FL;
    int8_t **l_1600 = (void*)0;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_1596[i] = 4L;
    (*p_1655->g_1560) = func_82(((!((safe_mod_func_int16_t_s_s(p_9, 0x09AFL)) <= (p_11 <= (safe_mul_func_uint16_t_u_u(0x2055L, (((**p_1655->g_839) , ((safe_mod_func_uint32_t_u_u((((((((safe_add_func_int8_t_s_s((p_10 && 0x70A303F50FE99A87L), ((void*)0 == (*p_1655->g_1376)))) <= l_1559[0][5][1]) && (-4L)) ^ 0L) > p_1655->g_1144.f5) <= l_1559[0][1][1]) != 0xEAL), p_11)) , l_1559[0][5][1])) ^ p_10)))))) && 0xDEF7L), (*p_1655->g_397), p_1655->g_672.f4, (*p_1655->g_386), p_1655);
    l_1596[2] = (((*l_1561)--) & (FAKE_DIVERGE(p_1655->local_0_offset, get_local_id(0), 10) ^ (safe_lshift_func_uint16_t_u_u(((((safe_rshift_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((l_1559[0][5][1] = ((safe_sub_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s((l_1559[0][5][1] ^ ((((safe_lshift_func_int16_t_s_u((safe_rshift_func_int8_t_s_s((((*l_1598) = (&p_10 != ((p_1655->g_38[4][3][2]--) , func_82((p_1655->g_114 = (l_1559[0][5][1] >= (safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u(((**p_1655->g_1377) = p_10), ((safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((p_1655->g_1593 , ((void*)0 != &p_1655->g_1333[0][2][6])), ((*l_1597) = (l_1596[2] = (safe_mod_func_int32_t_s_s((l_1559[0][5][1] > ((l_1559[0][5][1] && l_1559[0][5][1]) || 0L)), p_9)))))), p_9)), l_1559[2][0][0])) || l_1596[2]))), 0UL)))), (*p_1655->g_397), l_1559[6][6][1], l_1559[0][5][1], p_1655)))) == 65535UL), l_1559[0][5][1])), 12)) > 0x9951DD2C36AF30ABL) , 251UL) == l_1559[5][7][1])), l_1559[4][1][0])), l_1599)) , l_1599)), 0xF2L)), FAKE_DIVERGE(p_1655->group_0_offset, get_group_id(0), 10))) && p_10) , l_1600) == l_1600), 3))));
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_1655->g_43 p_1655->g_29 p_1655->g_45 p_1655->g_129 p_1655->g_137 p_1655->g_125.f1 p_1655->g_125.f3 p_1655->g_114 p_1655->g_151 p_1655->g_194 p_1655->g_38 p_1655->g_125.f2 p_1655->g_125.f5 p_1655->g_188 p_1655->g_143 p_1655->g_173 p_1655->g_3 p_1655->g_125.f4 p_1655->g_231 p_1655->g_125 p_1655->g_167 p_1655->g_201.f4 p_1655->g_386 p_1655->g_373.f0 p_1655->g_564 p_1655->g_492.f2 p_1655->g_290 p_1655->g_373.f4 p_1655->g_530 p_1655->g_529 p_1655->g_585 p_1655->g_399 p_1655->g_492.f6 p_1655->g_568 p_1655->g_31 p_1655->g_201.f1 p_1655->g_201.f6 p_1655->g_672 p_1655->g_875 p_1655->g_876 p_1655->g_839 p_1655->g_743 p_1655->g_956 p_1655->g_793 p_1655->g_794 p_1655->g_795 p_1655->g_429.f3 p_1655->g_397 p_1655->g_429.f4 p_1655->g_981 p_1655->g_373 p_1655->g_1013 p_1655->g_1033 p_1655->g_492.f4 p_1655->g_955 p_1655->g_1122 p_1655->g_429.f0 p_1655->g_1007.f5 p_1655->g_1143 p_1655->g_1173 p_1655->g_429.f5 p_1655->g_1197 p_1655->g_490.f4 p_1655->g_1144.f0 p_1655->g_490.f5 p_1655->g_1245 p_1655->g_1285 p_1655->g_1144.f5 p_1655->g_1334 p_1655->g_1034 p_1655->g_201.f0 p_1655->g_1376 p_1655->g_1386 p_1655->g_1406 p_1655->g_429.f2 p_1655->g_1443 p_1655->g_1377 p_1655->g_1007.f0 p_1655->g_1198 p_1655->g_742
 * writes: p_1655->g_29 p_1655->g_45 p_1655->g_121 p_1655->g_125.f1 p_1655->g_114 p_1655->g_188 p_1655->g_125.f4 p_1655->g_38 p_1655->g_31 p_1655->g_429.f5 p_1655->g_568 p_1655->g_570 p_1655->g_373.f3 p_1655->g_373.f1 p_1655->g_617 p_1655->g_373.f4 p_1655->g_125 p_1655->g_429.f1 p_1655->g_399 p_1655->g_429.f0 p_1655->g_373 p_1655->g_954 p_1655->g_957 p_1655->g_429.f3 p_1655->g_290 p_1655->g_672.f5 p_1655->g_429.f4 p_1655->g_672.f1 p_1655->g_167 p_1655->g_1007 p_1655->g_672.f4 p_1655->g_981.f5 p_1655->g_1144 p_1655->g_1197 p_1655->g_1143.f5 p_1655->g_1245 p_1655->g_1033 p_1655->g_1333 p_1655->g_795 p_1655->g_1334 p_1655->g_1143.f2 p_1655->g_1143.f3 p_1655->g_672.f3 p_1655->g_1377 p_1655->g_1122.f3 p_1655->g_1406.f5 p_1655->g_429.f2 p_1655->g_1386.f3 p_1655->g_151 p_1655->g_1122.f1 p_1655->g_1198 p_1655->g_1406.f2 p_1655->g_1495 p_1655->g_231 p_1655->g_1143.f0 p_1655->g_743
 */
struct S0  func_12(int32_t  p_13, int32_t  p_14, int16_t  p_15, uint64_t  p_16, uint64_t  p_17, struct S1 * p_1655)
{ /* block id: 10 */
    int16_t l_49 = (-1L);
    int32_t *l_75[2];
    uint64_t *l_79 = (void*)0;
    int32_t **l_234 = &l_75[0];
    int64_t *l_1023[1];
    int64_t **l_1022 = &l_1023[0];
    int32_t *l_1030 = &p_1655->g_795;
    int32_t **l_1029 = &l_1030;
    int32_t l_1090 = 0x6A8A0346L;
    uint32_t **l_1113[10];
    int8_t ***l_1199 = &p_1655->g_1198[4];
    struct S0 **l_1206 = &p_1655->g_743;
    int8_t l_1207 = 0x0EL;
    uint8_t l_1208 = 252UL;
    int64_t l_1209 = (-3L);
    int8_t l_1210 = 1L;
    int8_t l_1211 = 0x25L;
    int8_t l_1257 = 0x40L;
    uint16_t l_1319 = 65535UL;
    uint16_t l_1349 = 0x429FL;
    uint32_t l_1389[7][3][8] = {{{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L}},{{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L}},{{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L}},{{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L}},{{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L}},{{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L}},{{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L},{0x358AA614L,1UL,0x4851E294L,0x7B317185L,0x47166250L,0x358AA614L,0x7B317185L,0x4601C434L}}};
    int32_t l_1432 = 1L;
    int32_t l_1435[1][5];
    int8_t ****l_1493[3];
    int8_t ***l_1494 = (void*)0;
    int16_t l_1496[9] = {0x475FL,0x475FL,0x475FL,0x475FL,0x475FL,0x475FL,0x475FL,0x475FL,0x475FL};
    uint8_t l_1550[3][3] = {{0x66L,0x76L,0x66L},{0x66L,0x76L,0x66L},{0x66L,0x76L,0x66L}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_75[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_1023[i] = (void*)0;
    for (i = 0; i < 10; i++)
        l_1113[i] = (void*)0;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
            l_1435[i][j] = 0x37B8A7ADL;
    }
    for (i = 0; i < 3; i++)
        l_1493[i] = &p_1655->g_1197[3][1][1];
    for (p_17 = 23; (p_17 != 12); p_17 = safe_sub_func_uint64_t_u_u(p_17, 7))
    { /* block id: 13 */
        uint32_t l_50 = 0x2EC2C21BL;
        for (p_13 = (-25); (p_13 <= (-4)); p_13++)
        { /* block id: 16 */
            int32_t *l_44 = &p_1655->g_45[4];
            int32_t *l_46 = (void*)0;
            int32_t *l_47 = &p_1655->g_45[4];
            int32_t *l_48[2][6][10] = {{{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29}},{{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29},{&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29,&p_1655->g_29}}};
            int i, j, k;
            (*p_1655->g_43) &= p_14;
            (*l_44) ^= (*p_1655->g_43);
            if ((*l_44))
                continue;
            ++l_50;
        }
    }
    if ((safe_rshift_func_uint8_t_u_s((func_55(((*l_234) = ((safe_sub_func_uint32_t_u_u(((safe_add_func_uint64_t_u_u((((((void*)0 == &p_1655->g_38[4][6][0]) || (func_65(func_69(p_16, (p_13 = 0x4E40C687L), p_16, func_76(&p_1655->g_38[2][1][0], p_1655), (+(func_76(l_79, p_1655) & 253UL)), p_1655), &p_1655->g_3, p_1655->g_151, p_1655) | p_16)) & p_1655->g_194) == p_17), p_17)) >= p_1655->g_38[8][6][0]), p_1655->g_125[1][2][0].f2)) , &p_1655->g_45[3])), l_49, &p_1655->g_3, p_1655->g_125[1][2][0].f5, p_1655->g_151, p_1655) , 1UL), 0)))
    { /* block id: 423 */
        uint8_t *l_971 = &p_1655->g_429.f3;
        int32_t l_976 = 5L;
        uint32_t *l_977 = &p_1655->g_290;
        int16_t *l_978 = &p_1655->g_429.f0;
        int32_t **l_1003 = (void*)0;
        uint32_t l_1005 = 0UL;
        uint64_t *l_1050 = &p_1655->g_188;
        int32_t l_1057 = 0x202A9DAFL;
        int32_t *l_1062 = &p_1655->g_29;
        int32_t l_1093 = 1L;
        uint32_t **l_1112 = &p_1655->g_1034[0];
        int32_t l_1231 = 6L;
        int32_t l_1253 = 6L;
        int8_t l_1255 = (-1L);
        int8_t l_1298 = 0x6DL;
        int32_t l_1335 = 0L;
        int32_t l_1336 = 0x4AB4461BL;
        int32_t l_1337[3][2] = {{(-8L),0x6AF40DFEL},{(-8L),0x6AF40DFEL},{(-8L),0x6AF40DFEL}};
        int i, j;
lbl_982:
        (*l_234) = func_82((safe_sub_func_int32_t_s_s(((p_1655->g_201.f6 <= ((((safe_div_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u(((*l_978) = (safe_rshift_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u((safe_div_func_int16_t_s_s((((safe_lshift_func_uint8_t_u_u(0xFFL, 1)) , ((*l_971)--)) && (safe_rshift_func_int8_t_s_u(p_16, (0x7A2F026F76140ACBL == l_976)))), p_14)))), (((((*l_977) = (p_1655->g_529 == p_1655->g_529)) >= p_14) , 0xEE866E2CL) && p_1655->g_373.f4)))), p_16)), p_15)) , &p_1655->g_231) == l_75[1]) , l_976)) == l_976), 4294967295UL)), (*p_1655->g_397), p_13, (*p_1655->g_386), p_1655);
lbl_1282:
        for (p_17 = 0; (p_17 <= 1); p_17 += 1)
        { /* block id: 430 */
            int32_t l_979 = (-10L);
            uint32_t l_980 = 0x4B190D34L;
            int32_t l_1006 = (-1L);
            int64_t l_1098 = 1L;
            uint32_t l_1140 = 0xBED59017L;
            uint64_t l_1170 = 1UL;
            p_13 ^= ((l_979 ^ l_980) & ((l_971 != l_971) ^ (*p_1655->g_43)));
            for (p_1655->g_672.f5 = 1; (p_1655->g_672.f5 >= 0); p_1655->g_672.f5 -= 1)
            { /* block id: 434 */
                int8_t l_987 = 2L;
                uint64_t *l_1010 = &p_1655->g_38[8][6][0];
                int64_t **l_1039[2][5] = {{&l_1023[0],&l_1023[0],&l_1023[0],&l_1023[0],&l_1023[0]},{&l_1023[0],&l_1023[0],&l_1023[0],&l_1023[0],&l_1023[0]}};
                uint8_t l_1053 = 0x50L;
                int32_t l_1056 = 0x14E71427L;
                int32_t l_1058 = 0x45F050B8L;
                int8_t *l_1069 = &p_1655->g_672.f1;
                uint32_t **l_1108 = (void*)0;
                int16_t l_1124 = 0x1C22L;
                int i, j;
                for (p_1655->g_429.f4 = 0; (p_1655->g_429.f4 <= 1); p_1655->g_429.f4 += 1)
                { /* block id: 437 */
                    int i, j, k;
                    (*p_1655->g_143) &= (p_1655->g_38[(p_17 + 2)][(p_1655->g_672.f5 + 1)][(p_1655->g_429.f4 + 1)] == (*p_1655->g_173));
                    for (p_1655->g_672.f1 = 2; (p_1655->g_672.f1 >= 0); p_1655->g_672.f1 -= 1)
                    { /* block id: 441 */
                        if (p_16)
                            break;
                    }
                    (*p_1655->g_743) = p_1655->g_981;
                    if (p_1655->g_373.f0)
                        goto lbl_982;
                }
                for (p_1655->g_114 = 2; (p_1655->g_114 >= 0); p_1655->g_114 -= 1)
                { /* block id: 449 */
                    int32_t **l_1002 = (void*)0;
                    int64_t *l_1004 = &p_1655->g_167;
                    uint64_t l_1017 = 18446744073709551613UL;
                    uint32_t **l_1032 = &l_977;
                    p_1655->g_1007 = func_87((FAKE_DIVERGE(p_1655->local_0_offset, get_local_id(0), 10) >= (((*p_1655->g_173) = (safe_rshift_func_int16_t_s_u((l_1006 = ((*l_978) = (p_14 != (l_987 <= (safe_lshift_func_uint16_t_u_s(((safe_div_func_uint16_t_u_u((((*p_1655->g_386) &= (0x8FL >= (((++(*l_971)) < 253UL) , (safe_add_func_int64_t_s_s(((safe_sub_func_int16_t_s_s(((safe_add_func_uint8_t_u_u(((**p_1655->g_839) , ((((*l_1004) = (safe_add_func_uint8_t_u_u((((*l_977) = (((p_17 == (l_1002 == l_1003)) > 0xA39AL) == p_14)) >= l_976), (-7L)))) || 0x19FC687D067D0379L) || l_1005)), (-3L))) || 4UL), 0x3E7EL)) | 0x0FEBE886L), p_17))))) & l_987), l_980)) , p_13), p_15)))))), p_1655->g_38[7][3][1]))) < 0x11L)), &p_1655->g_568, p_1655);
                    if ((&p_1655->g_570 == ((safe_mul_func_int8_t_s_s(p_13, l_987)) , l_1010)))
                    { /* block id: 458 */
                        int32_t l_1016 = (-1L);
                        uint16_t *l_1021 = &p_1655->g_429.f4;
                        uint16_t *l_1028 = &p_1655->g_672.f4;
                        int i;
                        (*p_1655->g_743) = ((l_987 & ((*p_1655->g_386) && ((void*)0 == &p_13))) , func_87((((((safe_sub_func_uint16_t_u_u(((p_1655->g_1013 , &l_976) == (l_75[p_17] = &p_13)), (l_987 || (safe_lshift_func_int16_t_s_u((l_1016 < l_1016), 1))))) < l_987) < 1L) != l_1006) , l_1017), &p_1655->g_31[2][1][1], p_1655));
                        p_13 ^= ((safe_unary_minus_func_uint32_t_u(0x845BA2BCL)) , (((((*l_1021) = (l_976 , ((*p_1655->g_386) = (safe_lshift_func_uint16_t_u_u(p_16, 7))))) | 0x5082L) <= ((*l_978) = ((((*p_1655->g_173) = p_16) > (l_1022 == (void*)0)) , (safe_mod_func_int16_t_s_s(p_16, ((*l_1028) = (safe_mod_func_int32_t_s_s((*p_1655->g_143), l_1017)))))))) , (*p_1655->g_129)));
                        if (l_1006)
                            continue;
                    }
                    else
                    { /* block id: 468 */
                        int64_t l_1031 = 0x69929FF4B085EEC4L;
                        int64_t **l_1051 = &l_1023[0];
                        int32_t l_1052 = 0x520D9051L;
                        l_1031 ^= (l_1029 != &p_1655->g_794);
                        l_1052 = ((l_1032 == p_1655->g_1033) & (safe_rshift_func_uint8_t_u_u((l_987 || (safe_add_func_uint8_t_u_u((((l_1039[1][3] == (((0x87D8L || ((((p_17 | ((~(safe_div_func_uint16_t_u_u(((*p_1655->g_386) = (safe_mul_func_uint16_t_u_u(((l_1004 == ((p_1655->g_167 , (safe_mod_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((1UL < 0x1BL), l_976)), 15)), p_17))) , l_1050)) < l_1006), l_1031))), p_14))) != l_987)) || l_987) >= 0x409EB5E933072DD5L) | p_13)) >= (-1L)) , l_1051)) < 0x44D1F1424BE85B8DL) || 0x0CECL), 0xE7L))), 2)));
                    }
                    for (p_1655->g_981.f5 = 0; (p_1655->g_981.f5 <= 2); p_1655->g_981.f5 += 1)
                    { /* block id: 475 */
                        uint8_t l_1059[8][6] = {{8UL,6UL,6UL,8UL,0xEFL,0UL},{8UL,6UL,6UL,8UL,0xEFL,0UL},{8UL,6UL,6UL,8UL,0xEFL,0UL},{8UL,6UL,6UL,8UL,0xEFL,0UL},{8UL,6UL,6UL,8UL,0xEFL,0UL},{8UL,6UL,6UL,8UL,0xEFL,0UL},{8UL,6UL,6UL,8UL,0xEFL,0UL},{8UL,6UL,6UL,8UL,0xEFL,0UL}};
                        int i, j;
                        --l_1053;
                        l_1059[2][4]--;
                        l_1062 = func_82(p_16, (*p_1655->g_397), ((void*)0 != &l_1017), (*p_1655->g_386), p_1655);
                    }
                }
                (*l_234) = func_82((((safe_sub_func_int64_t_s_s(6L, GROUP_DIVERGE(0, 1))) , ((*l_1010) = ((-10L) & (0x7C87L && p_16)))) , ((safe_rshift_func_int16_t_s_s((((*l_1069) ^= ((*p_1655->g_173) = (safe_rshift_func_int8_t_s_s(l_979, 1)))) && (p_1655->g_492.f4 , (l_980 , (*p_1655->g_173)))), 11)) , ((safe_rshift_func_int8_t_s_u(0x58L, l_1006)) >= l_980))), (*p_1655->g_397), l_987, (*p_1655->g_386), p_1655);
                if ((*p_1655->g_955))
                    continue;
                for (l_1056 = 2; (l_1056 >= 0); l_1056 -= 1)
                { /* block id: 488 */
                    int32_t l_1091[9][10][2] = {{{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)}},{{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)}},{{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)}},{{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)}},{{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)}},{{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)}},{{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)}},{{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)}},{{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)},{0x7438A324L,(-1L)}}};
                    int32_t l_1092 = 0x6179CA38L;
                    int32_t l_1094 = 0x6EDDC746L;
                    uint32_t ***l_1109 = &l_1108;
                    uint32_t **l_1111 = (void*)0;
                    uint32_t ***l_1110[1][10] = {{&l_1111,&l_1111,&l_1111,&l_1111,&l_1111,&l_1111,&l_1111,&l_1111,&l_1111,&l_1111}};
                    int16_t *l_1123 = &l_49;
                    int64_t *l_1168 = (void*)0;
                    int i, j, k;
                    for (p_1655->g_114 = 2; (p_1655->g_114 >= 0); p_1655->g_114 -= 1)
                    { /* block id: 491 */
                        uint32_t l_1074 = 0xDDC17075L;
                        uint64_t l_1089 = 0x7CCD63A7A0F2A675L;
                        uint32_t l_1095[4][6] = {{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}};
                        int i, j;
                        l_1090 = ((l_987 && (safe_add_func_uint64_t_u_u((l_971 != (void*)0), 0x7FE1275FCFFDCE2FL))) <= (((l_1058 = ((l_1074 & (FAKE_DIVERGE(p_1655->local_1_offset, get_local_id(1), 10) , (p_16 < 4294967289UL))) >= (safe_sub_func_int8_t_s_s((safe_mod_func_int32_t_s_s((((*p_1655->g_173) |= (((safe_mod_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(65535UL, (safe_rshift_func_uint8_t_u_s((safe_div_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((((void*)0 == &p_1655->g_1034[0]) , l_1089), l_1053)), 0xC747L)), p_16)))), 250UL)) < (-3L)) ^ l_987)) , l_1074), p_16)), GROUP_DIVERGE(1, 1))))) , 0x5428L) != 0x1C83L));
                        l_1095[1][4]++;
                    }
                    for (l_1094 = 0; (l_1094 <= 2); l_1094 += 1)
                    { /* block id: 499 */
                        uint32_t l_1099 = 1UL;
                        --l_1099;
                        if (p_13)
                            continue;
                    }
                    if (((p_17 , ((safe_mul_func_int16_t_s_s(((*l_1123) = (safe_lshift_func_uint8_t_u_u(((FAKE_DIVERGE(p_1655->local_1_offset, get_local_id(1), 10) && (safe_lshift_func_int8_t_s_s(((&p_1655->g_1034[0] == (((l_1112 = ((*l_1109) = l_1108)) != &l_977) , l_1113[3])) == ((safe_rshift_func_uint16_t_u_s((--(*p_1655->g_386)), 0)) > (0x0571A8D2ED3F50CEL != (~(+(l_1058 |= ((((safe_mod_func_int16_t_s_s(((*l_978) &= (safe_div_func_uint16_t_u_u((!((p_1655->g_1122 , (p_16 , (((l_987 | l_1091[0][3][1]) != l_979) , p_17))) && l_1092)), GROUP_DIVERGE(2, 1)))), 0x270CL)) < 0L) < GROUP_DIVERGE(2, 1)) == p_1655->g_114))))))), 0))) < p_17), 6))), (-1L))) && p_13)) , p_15))
                    { /* block id: 509 */
                        uint32_t l_1125 = 4294967288UL;
                        int i, j, k;
                        ++l_1125;
                        p_13 = (l_1125 & ((*p_1655->g_386) &= (((*l_977) |= 4294967294UL) & ((FAKE_DIVERGE(p_1655->global_2_offset, get_global_id(2), 10) < (safe_sub_func_int8_t_s_s(1L, ((+(-1L)) == (((((*p_1655->g_43) <= p_14) & (p_1655->g_1007.f5 != (p_13 , (safe_div_func_int64_t_s_s(p_13, 1L))))) || 6UL) & l_1058))))) , l_1125))));
                        p_1655->g_1144 = (((safe_mul_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s((func_87((+l_1140), ((l_1094 == (p_1655->g_114 = l_1125)) , &p_1655->g_568), p_1655) , p_17), p_17)), (((0xB2AF0AF5AF65AEA0L < (p_1655->g_38[(l_1056 + 5)][(p_17 + 6)][l_1056] = ((safe_mod_func_uint8_t_u_u(p_17, p_17)) < p_17))) >= (*p_1655->g_955)) >= 0x094E6F3DL))) <= FAKE_DIVERGE(p_1655->global_0_offset, get_global_id(0), 10)), 0x9FCBL)) , l_1091[7][7][0]) , p_1655->g_1143);
                    }
                    else
                    { /* block id: 517 */
                        int32_t l_1145 = 0x77EF0962L;
                        int32_t **l_1152 = &l_1062;
                        int32_t ***l_1153 = &l_234;
                        int64_t *l_1169 = (void*)0;
                        int8_t **l_1179 = &l_1069;
                        int8_t **l_1180 = (void*)0;
                        int8_t *l_1182 = &p_1655->g_429.f1;
                        int8_t **l_1181 = &l_1182;
                        (*p_1655->g_143) ^= 0x40D6B1D1L;
                        (*p_1655->g_743) = func_87((((((*l_977)--) , (((p_14 | ((safe_mod_func_int8_t_s_s((safe_mod_func_int32_t_s_s((p_13 >= ((l_1152 != ((*l_1153) = &l_75[0])) && ((safe_mod_func_uint16_t_u_u((((((*l_977) = ((safe_sub_func_uint64_t_u_u(p_17, (safe_sub_func_int32_t_s_s((safe_rshift_func_int8_t_s_u((((((*l_1123) = (safe_sub_func_uint16_t_u_u(((((safe_add_func_uint8_t_u_u((p_14 != (safe_sub_func_uint8_t_u_u(l_1094, (~((l_1168 = &p_1655->g_114) == l_1169))))), 0x3DL)) >= (-8L)) , 9L) ^ l_1170), p_15))) & p_15) >= l_1091[3][8][0]) & GROUP_DIVERGE(1, 1)), p_1655->g_1143.f3)), p_17)))) != (*p_1655->g_386))) ^ p_15) , p_16) != l_1170), p_15)) & (*p_1655->g_43)))), p_14)), 0x62L)) != 0x60B9L)) < 1L) < l_1058)) >= p_15) ^ 0xD1374D18L), &p_1655->g_568, p_1655);
                        atomic_and(&p_1655->l_atomic_reduction[0], (safe_mul_func_int8_t_s_s(p_1655->g_1173, (((safe_mod_func_uint32_t_u_u((p_15 <= p_13), ((safe_unary_minus_func_uint8_t_u(p_15)) ^ (p_1655->g_114 |= p_1655->g_429.f5)))) < (!(safe_lshift_func_int8_t_s_s((((*p_1655->g_386) = GROUP_DIVERGE(1, 1)) < (l_1058 = l_1053)), 0)))) == ((((*l_1179) = p_1655->g_173) != ((*l_1181) = l_971)) <= ((safe_div_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 7)) & 0L), p_16)) & p_16))))) + get_linear_global_id());
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1655->v_collective += p_1655->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    }
                }
            }
        }
        if ((+(((safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_s(((safe_mul_func_uint16_t_u_u(((p_1655->g_1197[5][3][1] = p_1655->g_1197[5][3][1]) == l_1199), (safe_mod_func_int16_t_s_s(p_15, (l_1210 = ((((safe_div_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u(((l_1206 != (void*)0) == p_16), ((*l_971) = l_1207))), l_1208)) >= (((((p_17 && l_1209) == 0xF0349261L) != 1L) && 0x2E74DD7DAA97F0C7L) & 0xE6F5L)) >= 1UL) & p_14)))))) < p_17), 14)), p_14)), 4)) == p_13) <= l_1211)))
        { /* block id: 538 */
            int32_t *l_1212 = &l_1093;
            l_1212 = ((*l_234) = (void*)0);
            (**l_1206) = (**p_1655->g_839);
        }
        else
        { /* block id: 542 */
            uint32_t l_1230 = 0x94205080L;
            int32_t *l_1247 = (void*)0;
            int32_t l_1256 = 0L;
            int32_t l_1258[9] = {0x6001F4B0L,0x6001F4B0L,0x6001F4B0L,0x6001F4B0L,0x6001F4B0L,0x6001F4B0L,0x6001F4B0L,0x6001F4B0L,0x6001F4B0L};
            uint32_t **l_1322 = &p_1655->g_1034[0];
            uint16_t l_1338 = 0xBC48L;
            int i;
            if (p_13)
            { /* block id: 543 */
                int32_t l_1242 = 0x1E5CA1BCL;
                int32_t l_1244 = 0x71BD037DL;
                int32_t *l_1248 = (void*)0;
                int32_t l_1254 = 0L;
                for (p_1655->g_1143.f5 = (-14); (p_1655->g_1143.f5 >= (-28)); p_1655->g_1143.f5 = safe_sub_func_int32_t_s_s(p_1655->g_1143.f5, 9))
                { /* block id: 546 */
                    int64_t **l_1215 = &l_1023[0];
                    int64_t ***l_1216 = &l_1215;
                    int32_t l_1225[4][4][6] = {{{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L}},{{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L}},{{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L}},{{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L}}};
                    int64_t l_1236 = 0x5B67B52C53268C41L;
                    uint64_t l_1241 = 0x166C27C6CBB9AFC9L;
                    int32_t l_1246 = 0x2C64B529L;
                    int8_t l_1259[4];
                    uint64_t l_1260[7];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_1259[i] = 0x52L;
                    for (i = 0; i < 7; i++)
                        l_1260[i] = 2UL;
                    (*l_234) = func_82(p_16, (((*l_1216) = l_1215) == (void*)0), ((safe_add_func_int8_t_s_s((safe_add_func_int64_t_s_s((((p_16 ^ p_17) | (safe_mul_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_s(l_1225[2][3][5], 0)) || ((p_1655->g_38[1][3][0] == (FAKE_DIVERGE(p_1655->local_1_offset, get_local_id(1), 10) <= ((safe_mod_func_uint32_t_u_u(((*p_1655->g_386) >= (safe_lshift_func_int8_t_s_s(p_15, 3))), 1L)) < p_1655->g_490.f4))) && 5L)) , (*p_1655->g_386)), l_1230))) || p_14), p_1655->g_125[1][2][0].f2)), FAKE_DIVERGE(p_1655->group_0_offset, get_group_id(0), 10))) & l_1231), (*p_1655->g_386), p_1655);
                    for (p_15 = (-26); (p_15 > (-6)); ++p_15)
                    { /* block id: 551 */
                        uint8_t l_1243 = 0x1EL;
                        int16_t *l_1251 = &p_1655->g_373.f5;
                        uint64_t *l_1252 = &p_1655->g_31[1][7][3];
                        l_1246 ^= ((p_1655->g_1245[3] |= (safe_add_func_uint64_t_u_u(((((*l_977) = 0x61FE543DL) || ((((l_1236 = l_1230) > (((l_1242 = ((*l_978) &= (((*l_977) = ((((safe_add_func_int8_t_s_s(0x1BL, (((*l_971) = ((p_1655->g_1144.f0 && 0x7CB16EB7EF6AB0B8L) & (p_1655->g_114 = ((safe_div_func_uint64_t_u_u(((l_1241 , &p_14) == &p_14), (((p_16 = 0x625A4EE11A83F613L) == p_14) , p_1655->g_585))) > l_1225[2][3][5])))) >= l_1242))) && p_14) | (-1L)) && p_1655->g_490.f5)) , p_17))) <= (*p_1655->g_386)) , p_17)) , (void*)0) == (void*)0)) & l_1243), l_1244))) , l_1225[2][3][0]);
                        l_1248 = l_1247;
                        if (p_15)
                            continue;
                        p_13 |= ((((*l_978) = 1L) , p_1655->g_386) != (((((safe_sub_func_int64_t_s_s((((*l_1252) = (((*l_1251) = p_14) | ((p_16 < p_17) == (~0x4577L)))) ^ (p_16 >= l_1253)), p_1655->g_1122.f4)) < p_17) || (-1L)) ^ p_14) , (void*)0));
                    }
                    ++l_1260[6];
                }
            }
            else
            { /* block id: 571 */
                int32_t l_1299 = 1L;
                if ((safe_sub_func_uint16_t_u_u(((safe_unary_minus_func_uint8_t_u((safe_lshift_func_int8_t_s_s((p_17 & (p_15 <= (safe_add_func_int32_t_s_s(0L, (1L <= (safe_mul_func_uint8_t_u_u(((*l_971) = p_14), (p_15 >= (safe_rshift_func_uint16_t_u_s(((((((safe_div_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s(3L, l_1258[2])) || (safe_div_func_int8_t_s_s((((safe_rshift_func_int16_t_s_s(((*l_978) = ((((*p_1655->g_386) < (*p_1655->g_386)) <= 4294967295UL) , (-1L))), p_14)) , 1UL) != p_17), 0xBAL))), (*p_1655->g_43))) == p_13) , p_14) , (void*)0) != &p_1655->g_1198[6]) != 0x48635F2BL), p_16)))))))))), 5)))) ^ p_15), p_17)))
                { /* block id: 574 */
                    int32_t l_1293[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1293[i] = 0x25509292L;
                    if (p_1655->g_373.f4)
                        goto lbl_1282;
                    for (p_1655->g_373.f0 = 0; (p_1655->g_373.f0 >= (-14)); p_1655->g_373.f0 = safe_sub_func_int8_t_s_s(p_1655->g_373.f0, 5))
                    { /* block id: 578 */
                        p_13 ^= (4294967295UL != 0x119D7345L);
                        return p_1655->g_1285[1][5][0];
                    }
                    for (p_1655->g_188 = 0; (p_1655->g_188 >= 6); p_1655->g_188 = safe_add_func_int16_t_s_s(p_1655->g_188, 2))
                    { /* block id: 584 */
                        uint8_t l_1288 = 0UL;
                        l_1288--;
                        p_13 ^= (((safe_add_func_uint32_t_u_u((l_1293[0] & GROUP_DIVERGE(2, 1)), (((((void*)0 == &l_977) || p_1655->g_492.f2) <= (safe_mul_func_uint16_t_u_u(p_14, ((*p_1655->g_386) = (safe_sub_func_int8_t_s_s(l_1288, (l_1293[0] != l_1258[7]))))))) , ((l_1299 = l_1298) , 0x767E0275L)))) & l_1288) || p_16);
                    }
                    for (l_1253 = 0; (l_1253 != (-19)); l_1253--)
                    { /* block id: 592 */
                        uint8_t **l_1302 = &l_971;
                        (*l_234) = func_82(p_14, (*p_1655->g_397), p_1655->g_373.f6, ((*p_1655->g_386) = (~(*p_1655->g_386))), p_1655);
                        l_1093 ^= (p_13 &= ((((*l_1302) = &p_1655->g_194) == (void*)0) < 0L));
                    }
                }
                else
                { /* block id: 599 */
                    uint16_t l_1320 = 0x3E23L;
                    uint32_t l_1327 = 0x3C2FFFBCL;
                    if (((((void*)0 == p_1655->g_386) && ((*p_1655->g_129) , p_1655->g_373.f6)) ^ (safe_lshift_func_int16_t_s_u(((((safe_add_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(((*p_1655->g_386)--), (((safe_div_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(0x0EL, ((!p_1655->g_672.f3) != (FAKE_DIVERGE(p_1655->local_0_offset, get_local_id(0), 10) , ((((GROUP_DIVERGE(1, 1) || (((*l_1022) = &p_1655->g_167) != (void*)0)) > (safe_add_func_int64_t_s_s(p_1655->g_45[4], p_1655->g_1144.f5))) == 0x2BL) == p_15))))), 0x2D51L)) > p_14) & l_1299))) & l_1319), l_1320)), l_1299)) , GROUP_DIVERGE(1, 1)) != p_1655->g_1122.f5) == FAKE_DIVERGE(p_1655->global_0_offset, get_global_id(0), 10)), 4))))
                    { /* block id: 602 */
                        uint32_t ***l_1321 = (void*)0;
                        uint32_t ***l_1323 = &l_1113[3];
                        uint32_t ***l_1324[10][4][6] = {{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}},{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}},{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}},{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}},{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}},{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}},{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}},{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}},{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}},{{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112},{&l_1112,&l_1112,&l_1112,&l_1112,(void*)0,&l_1112}}};
                        int32_t l_1325[10][1][8] = {{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}},{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}},{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}},{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}},{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}},{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}},{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}},{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}},{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}},{{0L,0x4F1B57C1L,0x0BA9C863L,1L,0x0BA9C863L,0x4F1B57C1L,0L,0x378304C0L}}};
                        int i, j, k;
                        p_1655->g_1033 = ((*l_1323) = (l_1322 = &p_1655->g_1034[0]));
                        l_1258[7] = (*p_1655->g_955);
                        l_1325[8][0][3] = l_1325[7][0][4];
                    }
                    else
                    { /* block id: 608 */
                        int8_t l_1326[2];
                        int64_t *l_1332 = &p_1655->g_1333[0][3][1];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1326[i] = 0x35L;
                        --l_1327;
                        l_1256 = (((*l_1332) = (safe_lshift_func_uint16_t_u_s(p_15, ((*l_978) |= ((*p_1655->g_397) , p_16))))) , (p_1655->g_1334 ^ (&p_15 != (void*)0)));
                    }
                }
            }
            ++l_1338;
        }
    }
    else
    { /* block id: 618 */
        uint32_t l_1341 = 0xEC688EFAL;
        int32_t l_1348 = 9L;
        uint32_t l_1369 = 4294967290UL;
        uint32_t l_1436 = 0x5F549CA8L;
        int64_t ***l_1454 = (void*)0;
        l_1341++;
        for (l_1207 = 0; (l_1207 != (-14)); --l_1207)
        { /* block id: 622 */
            uint8_t l_1352 = 0xADL;
            for (p_1655->g_795 = 9; (p_1655->g_795 >= 2); p_1655->g_795 -= 1)
            { /* block id: 625 */
                int32_t l_1346[1];
                uint16_t **l_1373 = &p_1655->g_386;
                int32_t l_1391 = 4L;
                int i;
                for (i = 0; i < 1; i++)
                    l_1346[i] = 0x65842E15L;
                for (p_1655->g_1334 = 0; (p_1655->g_1334 <= 1); p_1655->g_1334 += 1)
                { /* block id: 628 */
                    int32_t l_1347 = 0x390B6D0BL;
                    int i;
                    ++l_1349;
                    (*l_234) = l_75[p_1655->g_1334];
                }
                l_1352++;
                for (p_1655->g_1143.f2 = 0; (p_1655->g_1143.f2 <= 0); p_1655->g_1143.f2 += 1)
                { /* block id: 635 */
                    uint32_t l_1370 = 0x8C588A35L;
                    int32_t *l_1371[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1371[i] = &p_1655->g_45[3];
                    for (p_1655->g_1143.f3 = 0; (p_1655->g_1143.f3 <= 0); p_1655->g_1143.f3 += 1)
                    { /* block id: 638 */
                        uint32_t *l_1357 = &p_1655->g_125[1][2][0].f2;
                        uint8_t *l_1368 = &p_1655->g_672.f3;
                        int32_t l_1372 = 0L;
                        uint16_t ***l_1374 = (void*)0;
                        uint64_t *l_1382[1];
                        int16_t l_1383 = 1L;
                        int32_t l_1390 = 0x2FC52D91L;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1382[i] = &p_1655->g_568;
                        l_1371[0] = func_82(p_14, (safe_sub_func_uint16_t_u_u((l_1346[0] , ((((*l_1357) ^= 0x284BBE6DL) , (*p_1655->g_397)) , (safe_lshift_func_uint8_t_u_s(((safe_div_func_int32_t_s_s((((((((((0xE8L > (safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), GROUP_DIVERGE(2, 1)))) && 1UL) > ((((*l_1368) = (((void*)0 == (*p_1655->g_1033)) , (((safe_add_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(p_1655->g_201.f0, p_14)), l_1341)) , 1UL) != p_14))) | p_16) != 0x4CL)) , l_1369) >= 1L) , l_1352) ^ (-7L)) , l_1346[0]) >= p_13), 0x6EAF3077L)) | l_1370), 2)))), p_17)), p_16, (*p_1655->g_386), p_1655);
                        if (l_1372)
                            break;
                        (*p_1655->g_1376) = l_1373;
                        l_1391 |= (l_1390 |= (safe_mul_func_uint8_t_u_u(((~l_1352) | (p_13 && ((safe_sub_func_int16_t_s_s((((((++p_1655->g_31[2][0][3]) <= p_15) , p_15) , &l_1383) == ((p_1655->g_1386 , ((safe_div_func_int32_t_s_s((l_1372 &= 9L), l_1346[0])) < l_1389[4][1][3])) , &l_1383)), 65528UL)) && p_15))), (-1L))));
                    }
                }
            }
            p_13 = ((*p_1655->g_143) = (safe_mod_func_uint8_t_u_u((((safe_mul_func_uint8_t_u_u((safe_add_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((void*)0 == &p_1655->g_585), p_13)), 2)), (l_1341 >= ((l_1352 , (((l_1369 , p_15) , (safe_lshift_func_uint16_t_u_u((((safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_1655->local_2_offset, get_local_id(2), 10), 18446744073709551611UL)) != l_1352) && 0x401AL), 5))) && 255UL)) | FAKE_DIVERGE(p_1655->global_0_offset, get_global_id(0), 10))))), 0x67L)) , l_1341) >= l_1369), 0x9CL)));
            return p_1655->g_1406;
        }
        if ((safe_lshift_func_uint8_t_u_s((safe_div_func_int32_t_s_s((*p_1655->g_43), l_1348)), 0)))
        { /* block id: 655 */
            int8_t l_1419[7][6] = {{0L,1L,(-7L),(-5L),0x2EL,0L},{0L,1L,(-7L),(-5L),0x2EL,0L},{0L,1L,(-7L),(-5L),0x2EL,0L},{0L,1L,(-7L),(-5L),0x2EL,0L},{0L,1L,(-7L),(-5L),0x2EL,0L},{0L,1L,(-7L),(-5L),0x2EL,0L},{0L,1L,(-7L),(-5L),0x2EL,0L}};
            uint32_t *l_1424 = &p_1655->g_125[1][2][0].f2;
            int32_t **l_1425[1];
            uint32_t l_1433 = 4294967295UL;
            uint8_t *l_1434 = &p_1655->g_1122.f3;
            int i, j;
            for (i = 0; i < 1; i++)
                l_1425[i] = &p_1655->g_955;
            (*l_234) = func_82(((((*p_1655->g_173) = 1L) , (0x06A931FCC13E2AF0L || (safe_rshift_func_int16_t_s_u((((safe_div_func_uint64_t_u_u(((safe_lshift_func_int16_t_s_u(((FAKE_DIVERGE(p_1655->global_1_offset, get_global_id(1), 10) || l_1419[2][4]) && ((((safe_sub_func_int64_t_s_s((-1L), (((*l_1434) = (safe_mod_func_int16_t_s_s(((((((*l_1424) ^= l_1419[2][4]) , l_1425[0]) == l_1425[0]) , (l_1433 ^= ((((((((((safe_add_func_int8_t_s_s(((~((!(safe_rshift_func_int8_t_s_u(p_13, l_1432))) ^ 18446744073709551615UL)) , 0x66L), (*p_1655->g_173))) & p_15) & 0x4C62DFA0L) && p_14) != p_14) <= l_1341) & 0UL) ^ p_16) != 0x65B18CE8199D9B5FL) <= 0x4ABA730C64ED1F0CL))) && l_1348), l_1369))) ^ p_17))) | l_1435[0][4]) , 0xB8A6B53D365A7951L) , l_1436)), p_16)) >= p_14), (-6L))) < l_1341) ^ 0L), l_1341)))) , l_1348), l_1369, p_1655->g_29, p_13, p_1655);
        }
        else
        { /* block id: 661 */
            (*l_234) = (void*)0;
            for (p_1655->g_1406.f5 = 0; (p_1655->g_1406.f5 < (-17)); --p_1655->g_1406.f5)
            { /* block id: 665 */
                return (*p_1655->g_743);
            }
        }
        for (p_1655->g_429.f2 = 0; (p_1655->g_429.f2 > 55); ++p_1655->g_429.f2)
        { /* block id: 671 */
            int32_t *l_1455[6][1][4] = {{{&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6]}},{{&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6]}},{{&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6]}},{{&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6]}},{{&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6]}},{{&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6],&p_1655->g_45[6]}}};
            int32_t l_1470 = 1L;
            int i, j, k;
            for (p_1655->g_1386.f3 = 0; (p_1655->g_1386.f3 <= 1); p_1655->g_1386.f3 += 1)
            { /* block id: 674 */
                int32_t *l_1456 = (void*)0;
                int i;
                atomic_sub(&p_1655->g_atomic_reduction[get_linear_group_id()], ((safe_div_func_uint8_t_u_u((0L != (p_1655->g_1443[0][8] , ((((l_1454 = ((safe_mul_func_uint8_t_u_u((~p_13), (1L < ((((safe_lshift_func_int16_t_s_u((safe_sub_func_uint16_t_u_u((p_1655->g_137[2][2][2].f3 > 0L), (safe_mul_func_uint8_t_u_u(p_1655->g_125[1][2][0].f0, ((&p_1655->g_194 == (void*)0) & p_17))))), (**p_1655->g_1377))) <= 0UL) , (void*)0) != (void*)0)))) , (void*)0)) == &p_1655->g_529) , l_1455[4][0][3]) != &p_13))), 0x5CL)) ^ p_16));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1655->v_collective += p_1655->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                for (p_1655->g_151 = 0; (p_1655->g_151 <= 3); p_1655->g_151 += 1)
                { /* block id: 679 */
                    int8_t **l_1466 = &p_1655->g_173;
                    int32_t *l_1471 = &l_1435[0][4];
                    int32_t *l_1472 = &l_1435[0][4];
                    for (p_1655->g_1122.f1 = 0; (p_1655->g_1122.f1 <= 1); p_1655->g_1122.f1 += 1)
                    { /* block id: 682 */
                        int8_t **l_1461 = &p_1655->g_173;
                        int8_t ***l_1467 = &l_1466;
                        int8_t **l_1469 = &p_1655->g_173;
                        int8_t ***l_1468 = &l_1469;
                        int i, j, k;
                        l_1456 = &p_13;
                        l_1470 &= ((safe_add_func_uint64_t_u_u((0x171EB6C7B43D694FL == ((safe_add_func_uint32_t_u_u(p_1655->g_1245[(p_1655->g_1122.f1 + 1)], (*p_1655->g_43))) || (((+((((4294967290UL <= (((*l_1199) = l_1461) != ((*l_1468) = ((*l_1467) = ((p_1655->g_1245[(p_1655->g_1122.f1 + 1)] & (safe_div_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(((((p_1655->g_1007.f0 , ((void*)0 == &p_1655->g_743)) > 18446744073709551607UL) & (*l_1456)) <= p_15), p_15)), p_17))) , l_1466))))) >= p_16) ^ (*l_1456)) > (-10L))) >= 0xB3L) < p_1655->g_125[1][2][0].f2))), p_16)) > GROUP_DIVERGE(0, 1));
                    }
                    l_1472 = (((0x7F2F0A9EL <= FAKE_DIVERGE(p_1655->global_2_offset, get_global_id(2), 10)) , p_16) , (l_1471 = &p_13));
                }
                if (p_16)
                    continue;
                for (p_1655->g_981.f5 = 0; (p_1655->g_981.f5 <= 1); p_1655->g_981.f5 += 1)
                { /* block id: 695 */
                    uint32_t l_1477[5];
                    int32_t l_1482 = 0x19710128L;
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                        l_1477[i] = 0UL;
                    l_1348 = (((void*)0 != (*l_1206)) , (safe_add_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((l_1477[0] ^ p_13), ((l_1482 &= (((l_1477[4] && ((((*p_1655->g_794) , (0x4FEA43F7L & (safe_mod_func_int32_t_s_s((safe_sub_func_uint64_t_u_u(((((p_17 >= ((***l_1199) &= (l_1477[4] >= p_17))) , p_13) > p_15) , p_1655->g_1443[0][8].f1), p_15)), l_1477[4])))) , l_1477[1]) , p_16)) && 0x3FL) <= p_14)) ^ p_14))), p_14)));
                    for (p_1655->g_1406.f2 = 0; (p_1655->g_1406.f2 <= 1); p_1655->g_1406.f2 += 1)
                    { /* block id: 701 */
                        return (**l_1206);
                    }
                }
            }
        }
    }
    p_1655->g_29 |= ((safe_div_func_uint32_t_u_u(p_13, (safe_sub_func_uint64_t_u_u(0x9B31FF17AE3A6178L, 0x5C8BAA75C56B8205L)))) != (safe_div_func_uint32_t_u_u(p_16, (((safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((p_1655->g_1495 = ((((6L >= ((l_79 != (void*)0) <= (((p_1655->g_1197[5][3][1] = l_1199) == l_1494) < p_15))) & 255UL) && 0xDA02L) , p_13)) && (*p_1655->g_129)), 0x21L)), l_1496[5])) | 0x98ED58BEL) , 0x1F8FE128L))));
    for (p_1655->g_429.f5 = 2; (p_1655->g_429.f5 != 7); p_1655->g_429.f5 = safe_add_func_uint64_t_u_u(p_1655->g_429.f5, 6))
    { /* block id: 713 */
        uint16_t l_1503 = 0xBA26L;
        struct S0 **l_1513 = &p_1655->g_743;
        int32_t l_1514[10] = {(-1L),0x30901184L,0x030A6BF7L,0x30901184L,(-1L),(-1L),0x30901184L,0x030A6BF7L,0x30901184L,(-1L)};
        int64_t l_1531 = 4L;
        int i;
        for (p_1655->g_672.f3 = 0; (p_1655->g_672.f3 <= 6); p_1655->g_672.f3 += 1)
        { /* block id: 716 */
            uint32_t l_1502 = 0x4A2EB32FL;
            struct S0 **l_1512[6][9] = {{&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743},{&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743},{&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743},{&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743},{&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743},{&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743,&p_1655->g_743}};
            int32_t l_1532 = 0x15B692BBL;
            int i, j;
            for (p_1655->g_672.f1 = 0; (p_1655->g_672.f1 <= 6); p_1655->g_672.f1 += 1)
            { /* block id: 719 */
                int64_t l_1499 = 0L;
                struct S0 **l_1511 = &p_1655->g_743;
                struct S0 ***l_1510[3][1][5] = {{{&l_1511,(void*)0,(void*)0,(void*)0,&l_1511}},{{&l_1511,(void*)0,(void*)0,(void*)0,&l_1511}},{{&l_1511,(void*)0,(void*)0,(void*)0,&l_1511}}};
                int32_t *l_1515[1][2][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                int i, j, k;
                if (l_1499)
                    break;
                (*l_234) = func_82(p_13, ((*p_1655->g_397) = (*p_1655->g_397)), ((l_1503 ^= ((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), 5)) | l_1502)) == 0x6B049E2C15CC0CBFL), ((((+((safe_mul_func_int8_t_s_s(((***l_1199) ^= 8L), ((((p_13 && ((**p_1655->g_1377) > (safe_mul_func_int16_t_s_s((-3L), ((+((safe_mod_func_int32_t_s_s((p_1655->g_45[p_1655->g_672.f3] = ((l_1512[2][1] = (l_1206 = &p_1655->g_743)) == l_1513)), 4294967289UL)) ^ l_1514[5])) , 0xB25FL))))) > GROUP_DIVERGE(1, 1)) & 0x19BC5114L) || 0xF0L))) < 0xD611FC52L)) , 0x05L) , 0x84L) ^ p_1655->g_137[2][2][2].f0), p_1655);
                (*l_234) = l_1515[0][1][0];
            }
            for (p_1655->g_1406.f2 = 0; (p_1655->g_1406.f2 == 13); p_1655->g_1406.f2 = safe_add_func_uint8_t_u_u(p_1655->g_1406.f2, 5))
            { /* block id: 732 */
                int32_t l_1547 = 0x7C23BEA9L;
                for (p_1655->g_1143.f0 = 0; (p_1655->g_1143.f0 != (-21)); p_1655->g_1143.f0--)
                { /* block id: 735 */
                    uint16_t **l_1523 = &p_1655->g_386;
                    int32_t l_1524 = 1L;
                    int64_t ***l_1528 = &l_1022;
                    uint32_t l_1533[7][5][1] = {{{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L}},{{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L}},{{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L}},{{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L}},{{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L}},{{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L}},{{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L},{0x5DD539B3L}}};
                    int i, j, k;
                    for (p_1655->g_1144.f0 = 6; (p_1655->g_1144.f0 >= 3); p_1655->g_1144.f0 -= 1)
                    { /* block id: 738 */
                        uint8_t *l_1525 = (void*)0;
                        uint8_t *l_1526 = (void*)0;
                        uint8_t *l_1527 = &p_1655->g_1143.f3;
                        int64_t ***l_1530 = &l_1022;
                        int64_t ****l_1529 = &l_1530;
                        uint32_t l_1546[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1546[i] = 0xF2857CB5L;
                        p_13 = (((safe_mod_func_int64_t_s_s((safe_unary_minus_func_uint16_t_u((((l_1514[(p_1655->g_672.f3 + 2)] , ((((*p_1655->g_1376) = l_1523) != &p_1655->g_386) == ((l_1514[(p_1655->g_1144.f0 + 2)] < l_1524) != (p_1655->g_114 |= p_1655->g_1122.f5)))) != ((((*l_1527) ^= p_16) , l_1528) == ((*l_1529) = (void*)0))) >= p_14))), l_1514[5])) ^ 65535UL) >= 0x42CEL);
                        (*l_234) = (*l_234);
                        l_1533[1][4][0]--;
                        p_13 = (((l_1524 , (safe_mod_func_int8_t_s_s((l_1514[1] & (((!(l_1514[5] != (p_15 = 0x67BEL))) , ((((l_1547 = (safe_rshift_func_uint8_t_u_s(((-1L) < ((p_16 && (!(safe_rshift_func_int8_t_s_s((0x4ADFL < (l_1524 = (safe_sub_func_uint16_t_u_u((safe_add_func_int64_t_s_s((l_1546[0] = (p_1655->g_114 = ((func_87(p_15, &p_16, p_1655) , p_17) | 5UL))), FAKE_DIVERGE(p_1655->local_0_offset, get_local_id(0), 10))), p_13)))), p_13)))) ^ 4294967288UL)), 3))) || 0xA3D03EBEL) | (**p_1655->g_1377)) & 0x3C8BD4B0F4A11855L)) != 0xD9A7L)), (-1L)))) != (-1L)) == 8L);
                    }
                }
                (*l_1513) = (*p_1655->g_742);
            }
            for (p_1655->g_188 = 0; (p_1655->g_188 >= 40); ++p_1655->g_188)
            { /* block id: 758 */
                (*l_1513) = (*l_1206);
            }
        }
        (*l_234) = &p_13;
        if (l_1550[1][1])
            break;
    }
    return (**p_1655->g_742);
}


/* ------------------------------------------ */
/* 
 * reads : p_1655->g_45 p_1655->g_143 p_1655->g_173 p_1655->g_125.f1 p_1655->g_29 p_1655->g_3 p_1655->g_125.f4 p_1655->g_231 p_1655->g_125 p_1655->g_129 p_1655->g_167 p_1655->g_38 p_1655->g_201.f4 p_1655->g_386 p_1655->g_373.f0 p_1655->g_564 p_1655->g_492.f2 p_1655->g_290 p_1655->g_373.f4 p_1655->g_530 p_1655->g_529 p_1655->g_585 p_1655->g_399 p_1655->g_492.f6 p_1655->g_151 p_1655->g_568 p_1655->g_31 p_1655->g_201.f1 p_1655->g_114 p_1655->g_201.f6 p_1655->g_672 p_1655->g_875 p_1655->g_876 p_1655->g_839 p_1655->g_743 p_1655->g_956 p_1655->g_793 p_1655->g_794 p_1655->g_795 p_1655->g_188
 * writes: p_1655->g_188 p_1655->g_29 p_1655->g_125.f1 p_1655->g_125.f4 p_1655->g_45 p_1655->g_38 p_1655->g_31 p_1655->g_429.f5 p_1655->g_568 p_1655->g_570 p_1655->g_373.f3 p_1655->g_114 p_1655->g_373.f1 p_1655->g_617 p_1655->g_373.f4 p_1655->g_125 p_1655->g_429.f1 p_1655->g_399 p_1655->g_429.f0 p_1655->g_373 p_1655->g_954 p_1655->g_957
 */
int32_t  func_55(int32_t * p_56, int32_t  p_57, int32_t * p_58, uint16_t  p_59, int32_t  p_60, struct S1 * p_1655)
{ /* block id: 127 */
    int32_t *l_241 = &p_1655->g_45[6];
    uint8_t l_273 = 1UL;
    int32_t l_375[9];
    int32_t l_378[9] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
    uint32_t l_379 = 1UL;
    int32_t *l_414[7][8] = {{&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231},{&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231},{&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231},{&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231},{&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231},{&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231},{&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231,&p_1655->g_231}};
    int32_t *l_452 = &p_1655->g_45[2];
    int8_t **l_499 = &p_1655->g_173;
    int16_t *l_515 = (void*)0;
    int16_t **l_514 = &l_515;
    int32_t **l_562 = &l_241;
    int8_t l_692 = 8L;
    int32_t l_693 = 0x6A786CF5L;
    int32_t l_694 = 2L;
    int32_t **l_708[9][4][7] = {{{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0}},{{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0}},{{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0}},{{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0}},{{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0}},{{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0}},{{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0}},{{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0}},{{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0},{&l_452,&l_452,(void*)0,(void*)0,&l_452,(void*)0,(void*)0}}};
    uint64_t *l_725 = &p_1655->g_38[4][1][1];
    uint8_t l_827 = 0x71L;
    int16_t ***l_872[1][3][7] = {{{&l_514,(void*)0,(void*)0,&l_514,&l_514,(void*)0,(void*)0},{&l_514,(void*)0,(void*)0,&l_514,&l_514,(void*)0,(void*)0},{&l_514,(void*)0,(void*)0,&l_514,&l_514,(void*)0,(void*)0}}};
    int16_t ****l_871 = &l_872[0][0][2];
    int32_t l_878 = (-6L);
    int64_t *l_893 = &p_1655->g_167;
    int64_t **l_892 = &l_893;
    int8_t l_901 = 1L;
    uint32_t l_904[6][10] = {{0x9DDF2A6CL,4294967293UL,0UL,1UL,5UL,0x9DDF2A6CL,1UL,1UL,1UL,0x9DDF2A6CL},{0x9DDF2A6CL,4294967293UL,0UL,1UL,5UL,0x9DDF2A6CL,1UL,1UL,1UL,0x9DDF2A6CL},{0x9DDF2A6CL,4294967293UL,0UL,1UL,5UL,0x9DDF2A6CL,1UL,1UL,1UL,0x9DDF2A6CL},{0x9DDF2A6CL,4294967293UL,0UL,1UL,5UL,0x9DDF2A6CL,1UL,1UL,1UL,0x9DDF2A6CL},{0x9DDF2A6CL,4294967293UL,0UL,1UL,5UL,0x9DDF2A6CL,1UL,1UL,1UL,0x9DDF2A6CL},{0x9DDF2A6CL,4294967293UL,0UL,1UL,5UL,0x9DDF2A6CL,1UL,1UL,1UL,0x9DDF2A6CL}};
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_375[i] = 0L;
lbl_620:
    for (p_1655->g_188 = 0; (p_1655->g_188 != 46); p_1655->g_188++)
    { /* block id: 130 */
        int32_t *l_239 = (void*)0;
        int32_t *l_240 = &p_1655->g_29;
        int32_t **l_242 = (void*)0;
        (*l_240) |= (safe_div_func_uint8_t_u_u(((*p_56) ^ (*p_1655->g_143)), (*p_1655->g_173)));
        l_241 = l_241;
        if ((*l_241))
            break;
    }
    if ((*p_58))
    { /* block id: 135 */
        int64_t l_243 = 7L;
        int32_t l_246 = (-8L);
        uint16_t *l_259 = &p_1655->g_125[1][2][0].f4;
        int32_t *l_262 = &p_1655->g_29;
        int8_t l_278 = 0x0DL;
        uint64_t l_309 = 0xF8C35CB5F3D00703L;
        int32_t l_374 = 9L;
        int32_t l_376[6][8][4] = {{{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL}},{{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL}},{{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL}},{{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL}},{{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL}},{{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL},{0x40678AE1L,0x5A709588L,2L,0x570C282AL}}};
        int32_t *l_398 = &p_1655->g_231;
        int32_t l_571[5];
        uint16_t l_669 = 65534UL;
        int16_t *l_706 = (void*)0;
        int16_t *l_707[10][9] = {{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5},{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5},{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5},{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5},{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5},{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5},{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5},{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5},{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5},{(void*)0,&p_1655->g_151,&p_1655->g_373.f0,&p_1655->g_429.f5,&p_1655->g_373.f0,&p_1655->g_151,(void*)0,&p_1655->g_373.f0,&p_1655->g_672.f5}};
        struct S0 *l_741[3];
        int16_t ***l_753 = &p_1655->g_617;
        int64_t *l_761 = &p_1655->g_167;
        int64_t **l_760 = &l_761;
        int64_t ***l_759 = &l_760;
        uint8_t l_790 = 255UL;
        int16_t l_859[3];
        int16_t ****l_873[1];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_571[i] = 0L;
        for (i = 0; i < 3; i++)
            l_741[i] = &p_1655->g_125[1][2][0];
        for (i = 0; i < 3; i++)
            l_859[i] = 0x7829L;
        for (i = 0; i < 1; i++)
            l_873[i] = &l_753;
        if (((p_60 && ((*p_1655->g_173) = (l_243 = (*p_1655->g_173)))) < (((safe_mod_func_int8_t_s_s((!l_246), (safe_mod_func_int64_t_s_s((((0x0385L && 65535UL) & ((safe_rshift_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s(((safe_div_func_int32_t_s_s((*p_58), (((*l_262) &= ((safe_sub_func_uint16_t_u_u(((*l_259)--), ((*p_1655->g_143) | 1L))) , (*p_58))) ^ (*l_241)))) ^ p_1655->g_3), (*l_241))) && p_57), 5)) < 0UL)) > p_1655->g_231), GROUP_DIVERGE(2, 1))))) & p_1655->g_3) != p_1655->g_45[6])))
        { /* block id: 140 */
            int32_t **l_263 = &l_241;
            int32_t *l_264 = &p_1655->g_45[1];
            int32_t *l_265 = &p_1655->g_29;
            int32_t *l_266 = &p_1655->g_29;
            int32_t *l_267 = &p_1655->g_29;
            int32_t *l_268 = &p_1655->g_29;
            int32_t *l_269 = &l_246;
            int32_t *l_270 = &p_1655->g_45[4];
            int32_t *l_271 = &p_1655->g_45[4];
            int32_t *l_272[2][9] = {{(void*)0,&p_1655->g_45[4],&p_1655->g_45[2],&p_1655->g_45[4],(void*)0,(void*)0,&p_1655->g_45[4],&p_1655->g_45[2],&p_1655->g_45[4]},{(void*)0,&p_1655->g_45[4],&p_1655->g_45[2],&p_1655->g_45[4],(void*)0,(void*)0,&p_1655->g_45[4],&p_1655->g_45[2],&p_1655->g_45[4]}};
            uint64_t *l_281 = &p_1655->g_38[8][6][0];
            uint32_t *l_289[1];
            int32_t *l_396 = (void*)0;
            int32_t **l_442 = &l_262;
            int64_t *l_461 = &l_243;
            int64_t **l_460 = &l_461;
            int32_t l_516 = 0L;
            uint8_t l_520 = 5UL;
            int i, j;
            for (i = 0; i < 1; i++)
                l_289[i] = &p_1655->g_290;
            (*l_263) = (void*)0;
            ++l_273;
            if (((*l_267) = (safe_mul_func_int8_t_s_s((+l_278), ((((safe_div_func_int32_t_s_s((func_87(p_1655->g_45[3], l_281, p_1655) , ((*p_1655->g_143) = (safe_mul_func_int16_t_s_s((l_273 == (p_1655->g_125[1][2][0].f3 , (((safe_unary_minus_func_uint32_t_u(((safe_div_func_int32_t_s_s((*p_1655->g_129), ((*l_269) = ((*l_262) ^ (++(*l_259)))))) & p_1655->g_125[1][2][0].f5))) | 0x6C66L) || (-3L)))), 0x0C3FL)))), p_1655->g_167)) == (*l_262)) ^ p_59) | p_1655->g_29)))))
            { /* block id: 147 */
                int8_t **l_297 = (void*)0;
                int8_t **l_298 = (void*)0;
                int8_t **l_299 = (void*)0;
                int8_t *l_300 = &l_278;
                uint8_t *l_301 = &p_1655->g_194;
                int32_t l_304 = (-6L);
                int32_t l_305 = 4L;
                int32_t l_306 = 0L;
                uint8_t *l_307 = (void*)0;
                uint8_t *l_308 = &l_273;
                int32_t **l_325[3];
                int64_t *l_328[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int16_t *l_336 = &p_1655->g_125[1][2][0].f5;
                int32_t l_453 = 0L;
                int32_t *l_493 = &l_304;
                int8_t l_494 = (-4L);
                uint16_t l_534 = 1UL;
                int i;
                for (i = 0; i < 3; i++)
                    l_325[i] = &l_272[1][1];
                (1 + 1);
            }
            else
            { /* block id: 236 */
                uint64_t *l_557 = &p_1655->g_31[1][2][4];
                uint64_t *l_558 = &l_309;
                int32_t ***l_561 = &l_442;
                uint8_t *l_563[9] = {&l_273,&l_273,&l_273,&l_273,&l_273,&l_273,&l_273,&l_273,&l_273};
                int16_t **l_566 = &l_515;
                uint64_t *l_567 = &p_1655->g_568;
                uint64_t *l_569 = &p_1655->g_570;
                int64_t ***l_578 = &l_460;
                int64_t **l_580 = &l_461;
                int64_t ***l_579 = &l_580;
                int i;
                (*l_264) = (((((0xB2E35F55L && ((safe_lshift_func_int16_t_s_u((0UL < ((*l_461) = ((safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u(p_57, 0x764777E1L)), (+(((*l_569) = ((*l_567) = (((safe_mul_func_int16_t_s_s((p_1655->g_429.f5 = (safe_sub_func_uint32_t_u_u((((((((safe_mul_func_uint8_t_u_u(((*l_262) = (~(safe_lshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((((++(*l_281)) <= ((*l_558) = ((*l_557) = 0x52F8075E05071890L))) & p_1655->g_201.f4) & (((safe_add_func_int32_t_s_s(((*l_452) > ((((&l_264 == (l_562 = ((*l_561) = &l_262))) , 5UL) < FAKE_DIVERGE(p_1655->local_2_offset, get_local_id(2), 10)) ^ 0x38DAAFE1L)), p_1655->g_45[5])) , 0x1EE8L) < (*p_1655->g_386))), p_60)), 3)))), p_1655->g_125[1][2][0].f4)) <= p_1655->g_373.f0) , p_1655->g_564) != l_566) && p_1655->g_492.f2) , 7L) & 0UL), 0x3703A50FL))), p_59)) , (*p_1655->g_386)) , (***l_561)))) != p_1655->g_290)))), p_1655->g_373.f4)) & 0UL))), 2)) != l_571[4])) < p_57) , &l_241) != &p_56) , (-1L));
                (***l_561) = (safe_div_func_uint32_t_u_u(0xB0225E00L, (safe_add_func_uint64_t_u_u((((*l_262) & (safe_sub_func_uint64_t_u_u(((((0x68L & ((-1L) < 0x1B66C13BL)) , ((*l_579) = ((*l_578) = (void*)0))) == (p_1655->g_125[2][1][3] , (*p_1655->g_530))) & ((safe_div_func_uint32_t_u_u((l_571[1] = (&p_59 != l_259)), (***l_561))) , (*p_1655->g_173))), p_60))) <= 0xFCL), FAKE_DIVERGE(p_1655->global_0_offset, get_global_id(0), 10)))));
            }
        }
        else
        { /* block id: 253 */
            int32_t l_592 = 1L;
            int8_t **l_610 = &p_1655->g_173;
            int32_t l_666 = 0x32F2802BL;
            int32_t l_667 = 0x25FFC429L;
            int32_t *l_681 = &p_1655->g_45[5];
            int32_t *l_682 = &l_376[2][7][1];
            int32_t *l_683 = &l_374;
            int32_t *l_684 = (void*)0;
            int32_t *l_685 = &l_375[1];
            int32_t *l_686 = &l_376[2][7][1];
            int32_t *l_687 = &l_374;
            int32_t *l_688 = (void*)0;
            int32_t *l_689 = &l_375[6];
            int32_t *l_690 = &l_571[3];
            int32_t *l_691[6][1][1] = {{{&l_376[2][7][1]}},{{&l_376[2][7][1]}},{{&l_376[2][7][1]}},{{&l_376[2][7][1]}},{{&l_376[2][7][1]}},{{&l_376[2][7][1]}}};
            uint8_t l_695 = 253UL;
            int i, j, k;
            for (p_1655->g_373.f3 = 0; (p_1655->g_373.f3 != 19); p_1655->g_373.f3 = safe_add_func_uint64_t_u_u(p_1655->g_373.f3, 1))
            { /* block id: 256 */
                int64_t *l_597 = &p_1655->g_114;
                int32_t *l_598 = &l_571[1];
                int8_t *l_603 = &p_1655->g_373.f1;
                int16_t ***l_614 = (void*)0;
                int16_t ***l_615 = (void*)0;
                int16_t ***l_616[1][9] = {{&l_514,&l_514,&l_514,&l_514,&l_514,&l_514,&l_514,&l_514,&l_514}};
                uint16_t *l_619[2];
                uint32_t l_633 = 4294967292UL;
                int16_t ****l_642 = &l_614;
                int i, j;
                for (i = 0; i < 2; i++)
                    l_619[i] = &p_1655->g_373.f4;
                l_598 = func_82(p_1655->g_585, (**l_562), p_1655->g_399, (safe_lshift_func_int16_t_s_u((((*l_259) = (((**l_499) = ((safe_add_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s(((*l_597) = (((((((0x1CF0E18F7C115EDCL | (*l_262)) >= FAKE_DIVERGE(p_1655->local_1_offset, get_local_id(1), 10)) <= (*l_241)) & l_592) ^ (**l_562)) >= (((safe_add_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u((((-1L) <= p_1655->g_492.f6) <= (-1L)), p_59)) > p_1655->g_151), p_57)) , 9UL) != p_1655->g_568)) ^ p_1655->g_167)), l_592)) != l_592), p_1655->g_568)) < p_60)) == 0x17L)) | p_57), 5)), p_1655);
                if (((safe_mod_func_int8_t_s_s(((*p_1655->g_173) = (*p_1655->g_173)), ((*l_603) = ((safe_sub_func_int16_t_s_s(p_60, 3UL)) , 0x4CL)))) >= (safe_lshift_func_int16_t_s_s((safe_div_func_int64_t_s_s((safe_mod_func_uint8_t_u_u((&p_1655->g_173 != l_610), (safe_unary_minus_func_int32_t_s(((((safe_rshift_func_uint8_t_u_s(((**l_562) != (((((((((p_59 = ((*p_1655->g_386) = ((p_1655->g_201.f1 < ((p_1655->g_617 = (void*)0) == (void*)0)) <= p_59))) & p_57) && l_592) , (-1L)) || p_1655->g_114) ^ p_1655->g_125[1][2][0].f3) != p_1655->g_231) <= FAKE_DIVERGE(p_1655->local_1_offset, get_local_id(1), 10)) | 0x543BL)), p_57)) != 0x3487L) | 0x2EL) > 0x62946C63L))))), p_1655->g_125[1][2][0].f5)), 9))))
                { /* block id: 266 */
                    if (p_1655->g_151)
                        goto lbl_620;
                }
                else
                { /* block id: 268 */
                    int16_t l_623 = 0x4798L;
                    int64_t l_632 = 0x0F28303F75FD27D3L;
                    (*p_56) = (safe_mod_func_uint32_t_u_u(l_623, (safe_mod_func_uint32_t_u_u(0x73A7CBC1L, (safe_div_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((p_59 < ((*l_597) = l_632)), p_60)), GROUP_DIVERGE(2, 1))), l_633))))));
                }
                (**l_562) &= (safe_add_func_int16_t_s_s((safe_add_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((~p_1655->g_201.f6), ((safe_mul_func_int8_t_s_s((l_592 > (((((*l_642) = &p_1655->g_617) == (void*)0) == (safe_div_func_uint16_t_u_u(((((&l_515 != (void*)0) != (0x74404C1C3AD6AFA2L ^ ((!(safe_unary_minus_func_uint8_t_u((safe_rshift_func_int16_t_s_u((p_1655->g_125[1][2][0].f0 <= (safe_lshift_func_uint8_t_u_s((0x3F4E05D3843BCAA4L == FAKE_DIVERGE(p_1655->local_0_offset, get_local_id(0), 10)), p_57))), 15))))) ^ (*l_262)))) >= p_1655->g_31[1][7][1]) < (-1L)), (*l_262)))) > 8L)), 0xAEL)) >= 0x5643L))), p_1655->g_373.f0)), (*l_262)));
            }
            for (l_273 = 0; (l_273 >= 52); ++l_273)
            { /* block id: 277 */
                uint16_t l_661 = 0x98C1L;
                int32_t l_668[4][3] = {{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)}};
                int i, j;
                if ((*p_1655->g_129))
                    break;
                (*p_56) &= 0L;
                for (p_1655->g_114 = (-29); (p_1655->g_114 == 18); ++p_1655->g_114)
                { /* block id: 282 */
                    int64_t l_654 = (-1L);
                    int32_t *l_655 = (void*)0;
                    int32_t *l_656 = &l_375[1];
                    int32_t *l_657 = &p_1655->g_45[1];
                    int32_t *l_658 = &l_375[1];
                    int32_t *l_659 = &l_376[3][0][3];
                    int32_t *l_660[1];
                    int32_t **l_680 = &l_452;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_660[i] = &l_375[0];
                    --l_661;
                    for (p_1655->g_373.f3 = 0; (p_1655->g_373.f3 > 42); p_1655->g_373.f3 = safe_add_func_uint8_t_u_u(p_1655->g_373.f3, 1))
                    { /* block id: 286 */
                        return p_1655->g_125[1][2][0].f3;
                    }
                    for (p_1655->g_373.f4 = 2; (p_1655->g_373.f4 <= 6); p_1655->g_373.f4 += 1)
                    { /* block id: 291 */
                        struct S0 *l_673 = &p_1655->g_125[1][2][0];
                        int i;
                        (*l_658) |= p_1655->g_45[p_1655->g_373.f4];
                        --l_669;
                        (*l_673) = p_1655->g_672;
                    }
                }
                if (l_278)
                    goto lbl_620;
            }
            for (p_1655->g_429.f1 = 0; (p_1655->g_429.f1 <= 3); p_1655->g_429.f1 += 1)
            { /* block id: 303 */
                return (*l_262);
            }
            l_695++;
        }
    }
    else
    { /* block id: 387 */
        return p_57;
    }
    for (l_273 = 0; (l_273 != 54); ++l_273)
    { /* block id: 392 */
        int16_t ***l_883 = &l_514;
        int64_t **l_894 = &l_893;
        int32_t l_898 = 3L;
        int32_t l_899 = 0x73D6FCFFL;
        int32_t l_900 = 5L;
        int32_t l_902 = (-1L);
        int32_t l_903 = 0x2D7E67ABL;
        struct S0 *l_949[1];
        int i;
        for (i = 0; i < 1; i++)
            l_949[i] = (void*)0;
        (*l_452) ^= ((safe_add_func_uint32_t_u_u(0x3DD6C954L, (l_883 != (*p_1655->g_875)))) || (safe_lshift_func_int16_t_s_s(0x4B0BL, 9)));
        for (p_1655->g_568 = (-25); (p_1655->g_568 != 39); p_1655->g_568 = safe_add_func_uint32_t_u_u(p_1655->g_568, 4))
        { /* block id: 396 */
            int64_t *l_889[5];
            int64_t **l_888 = &l_889[4];
            int8_t l_895 = 0x32L;
            int32_t l_896 = 1L;
            int32_t l_897[7] = {0x20818B68L,0x20818B68L,0x20818B68L,0x20818B68L,0x20818B68L,0x20818B68L,0x20818B68L};
            struct S0 *l_907[7][5] = {{(void*)0,(void*)0,&p_1655->g_672,&p_1655->g_373,&p_1655->g_672},{(void*)0,(void*)0,&p_1655->g_672,&p_1655->g_373,&p_1655->g_672},{(void*)0,(void*)0,&p_1655->g_672,&p_1655->g_373,&p_1655->g_672},{(void*)0,(void*)0,&p_1655->g_672,&p_1655->g_373,&p_1655->g_672},{(void*)0,(void*)0,&p_1655->g_672,&p_1655->g_373,&p_1655->g_672},{(void*)0,(void*)0,&p_1655->g_672,&p_1655->g_373,&p_1655->g_672},{(void*)0,(void*)0,&p_1655->g_672,&p_1655->g_373,&p_1655->g_672}};
            int16_t l_916[9][6];
            uint32_t l_918 = 5UL;
            uint32_t l_951 = 4294967286UL;
            int i, j;
            for (i = 0; i < 5; i++)
                l_889[i] = &p_1655->g_167;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 6; j++)
                    l_916[i][j] = 1L;
            }
            p_1655->g_399 ^= ((*p_56) = ((p_60 != (!p_1655->g_125[1][2][0].f6)) ^ (((((p_1655->g_529 != l_888) > (*p_1655->g_173)) == (p_57 > ((~(-1L)) == ((l_892 != l_894) > p_1655->g_568)))) < l_895) , 255UL)));
            --l_904[3][9];
            for (p_60 = 5; (p_60 >= 0); p_60 -= 1)
            { /* block id: 402 */
                struct S0 **l_908 = &l_907[2][4];
                int32_t l_909 = (-5L);
                int32_t l_912 = 0x49C0D43FL;
                int32_t l_913 = 0x39ED2808L;
                int32_t l_914 = 1L;
                int32_t l_915 = 0x074E1141L;
                int64_t **l_944 = (void*)0;
                uint64_t *l_950 = &p_1655->g_31[1][7][3];
                (*l_908) = l_907[2][4];
                for (p_1655->g_429.f0 = 0; (p_1655->g_429.f0 <= 6); p_1655->g_429.f0 += 1)
                { /* block id: 406 */
                    int32_t l_910 = 4L;
                    int32_t l_911[3][3][4] = {{{0x74E11CB7L,0x2BF09E27L,1L,(-4L)},{0x74E11CB7L,0x2BF09E27L,1L,(-4L)},{0x74E11CB7L,0x2BF09E27L,1L,(-4L)}},{{0x74E11CB7L,0x2BF09E27L,1L,(-4L)},{0x74E11CB7L,0x2BF09E27L,1L,(-4L)},{0x74E11CB7L,0x2BF09E27L,1L,(-4L)}},{{0x74E11CB7L,0x2BF09E27L,1L,(-4L)},{0x74E11CB7L,0x2BF09E27L,1L,(-4L)},{0x74E11CB7L,0x2BF09E27L,1L,(-4L)}}};
                    int16_t *l_927 = &l_916[3][4];
                    int i, j, k;
                    --l_918;
                    (*l_452) = (safe_lshift_func_uint8_t_u_s(0x89L, ((*p_1655->g_173) = ((safe_div_func_int8_t_s_s(((65535UL > 0x3E35L) & (l_927 == ((**l_883) = &l_916[6][3]))), (safe_add_func_int64_t_s_s((((((safe_mul_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s(p_57, (p_59 | 0xEDFDFD0128C4D943L))) >= 0x957D540EL), 0UL)) & p_57) , (void*)0) != (void*)0) < (*p_58)), 0x2037728DDF035905L)))) || 0L))));
                }
                (*p_1655->g_743) = func_87(l_916[0][3], func_90((((safe_lshift_func_uint16_t_u_s((l_902 <= l_897[4]), 5)) , (safe_div_func_uint32_t_u_u(((safe_mod_func_uint32_t_u_u((((((safe_sub_func_uint8_t_u_u(0x5EL, ((safe_add_func_int64_t_s_s((l_944 != (void*)0), (((*p_56) = (((safe_lshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((((l_949[0] = (*p_1655->g_839)) != ((*l_908) = (*l_908))) && ((((((l_895 != (*p_1655->g_173)) ^ (*p_56)) | 4294967295UL) && l_916[6][3]) , (*l_452)) & 18446744073709551609UL)), FAKE_DIVERGE(p_1655->group_2_offset, get_group_id(2), 10))), (*p_1655->g_173))) <= p_1655->g_672.f3) >= (*p_1655->g_386))) & 6UL))) && p_57))) & 0x393C7DA38168171EL) & 2UL) , 1UL) || 0x01DBL), p_59)) , p_60), l_915))) < l_900), l_889[4], l_912, p_59, l_950, p_1655), p_1655);
                --l_951;
            }
        }
        (*p_1655->g_956) = (p_1655->g_954 = &p_58);
    }
    return (**p_1655->g_793);
}


/* ------------------------------------------ */
/* 
 * reads : p_1655->g_29
 * writes: p_1655->g_29
 */
int8_t  func_65(uint64_t * p_66, int32_t * p_67, int32_t  p_68, struct S1 * p_1655)
{ /* block id: 119 */
    for (p_1655->g_29 = 0; (p_1655->g_29 < (-17)); p_1655->g_29 = safe_sub_func_uint64_t_u_u(p_1655->g_29, 1))
    { /* block id: 122 */
        return p_68;
    }
    return p_68;
}


/* ------------------------------------------ */
/* 
 * reads : p_1655->g_129 p_1655->g_45 p_1655->g_137 p_1655->g_29 p_1655->g_125.f1 p_1655->g_125.f3 p_1655->g_114
 * writes: p_1655->g_29 p_1655->g_121 p_1655->g_125.f1 p_1655->g_45 p_1655->g_114
 */
uint64_t * func_69(int64_t  p_70, int32_t  p_71, uint32_t  p_72, int32_t  p_73, int64_t  p_74, struct S1 * p_1655)
{ /* block id: 26 */
    uint32_t l_115 = 0x96844EC9L;
    uint64_t *l_116[5] = {&p_1655->g_31[1][7][3],&p_1655->g_31[1][7][3],&p_1655->g_31[1][7][3],&p_1655->g_31[1][7][3],&p_1655->g_31[1][7][3]};
    int32_t l_133 = 0x725F0345L;
    int i;
    for (p_74 = 0; (p_74 == (-23)); --p_74)
    { /* block id: 29 */
        uint64_t *l_105 = &p_1655->g_38[8][6][0];
        int32_t *l_109 = &p_1655->g_45[4];
        int32_t **l_108[2][3];
        int32_t *l_110[7][7][5] = {{{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0}},{{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0}},{{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0}},{{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0}},{{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0}},{{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0}},{{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0},{&p_1655->g_45[3],&p_1655->g_29,&p_1655->g_45[4],&p_1655->g_45[4],(void*)0}}};
        int64_t *l_113 = &p_1655->g_114;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 3; j++)
                l_108[i][j] = &l_109;
        }
        (1 + 1);
    }
    for (p_1655->g_29 = 0; p_1655->g_29 < 10; p_1655->g_29 += 1)
    {
        p_1655->g_121[p_1655->g_29] = 0x3C9290644564FD79L;
    }
    for (l_115 = 0; (l_115 <= 6); l_115++)
    { /* block id: 46 */
        int32_t *l_134 = &p_1655->g_29;
        int8_t *l_138 = &p_1655->g_125[1][2][0].f1;
        (*l_134) = (l_133 &= (*p_1655->g_129));
        p_1655->g_45[4] &= (((+((safe_sub_func_uint32_t_u_u((l_133 = ((p_1655->g_137[2][2][2] , p_1655->g_137[2][2][2].f6) > ((*l_138) &= (*l_134)))), p_1655->g_125[1][2][0].f3)) || ((void*)0 == &p_1655->g_121[8]))) > (*l_134)) && 9L);
        (*l_134) = (~l_133);
    }
    if ((*p_1655->g_129))
    { /* block id: 54 */
        int32_t *l_139 = (void*)0;
        int32_t *l_140 = &p_1655->g_45[5];
        (*l_140) |= 0L;
        return l_116[2];
    }
    else
    { /* block id: 57 */
        int16_t l_164 = 8L;
        int32_t l_189 = (-1L);
        int32_t l_213 = 2L;
        for (p_1655->g_114 = 0; (p_1655->g_114 == 15); p_1655->g_114 = safe_add_func_int32_t_s_s(p_1655->g_114, 1))
        { /* block id: 60 */
            int32_t *l_150 = &p_1655->g_3;
            int32_t **l_149 = &l_150;
            uint16_t l_165 = 1UL;
            int64_t *l_166 = &p_1655->g_167;
            int8_t *l_206[7][8][4] = {{{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1}},{{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1}},{{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1}},{{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1}},{{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1}},{{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1}},{{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1},{&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1,&p_1655->g_125[1][2][0].f1}}};
            int32_t l_211 = (-3L);
            int i, j, k;
            (1 + 1);
        }
    }
    return &p_1655->g_31[2][0][2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_76(uint64_t * p_77, struct S1 * p_1655)
{ /* block id: 24 */
    uint64_t l_78 = 0x2F3C5D46ADFC38D3L;
    return l_78;
}


/* ------------------------------------------ */
/* 
 * reads : p_1655->g_31 p_1655->g_129
 * writes: p_1655->g_45
 */
int32_t * func_82(int64_t  p_83, int32_t  p_84, uint64_t  p_85, uint16_t  p_86, struct S1 * p_1655)
{ /* block id: 37 */
    uint32_t l_128 = 5UL;
    int32_t *l_130 = (void*)0;
    (*p_1655->g_129) = (safe_sub_func_int8_t_s_s(l_128, p_1655->g_31[1][5][4]));
    return l_130;
}


/* ------------------------------------------ */
/* 
 * reads : p_1655->g_125
 * writes:
 */
struct S0  func_87(uint8_t  p_88, uint64_t * p_89, struct S1 * p_1655)
{ /* block id: 34 */
    int32_t *l_117 = &p_1655->g_45[4];
    int32_t *l_118 = &p_1655->g_45[4];
    int32_t l_119 = 1L;
    int32_t *l_120[5][8][6] = {{{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]}},{{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]}},{{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]}},{{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]}},{{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]},{&p_1655->g_3,&p_1655->g_29,&l_119,&l_119,&p_1655->g_45[4],&p_1655->g_45[4]}}};
    uint32_t l_122 = 1UL;
    int i, j, k;
    --l_122;
    return p_1655->g_125[1][2][0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t * func_90(int64_t  p_91, uint64_t * p_92, uint32_t  p_93, int8_t  p_94, uint64_t * p_95, struct S1 * p_1655)
{ /* block id: 32 */
    return &p_1655->g_31[1][7][3];
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S1 c_1656;
    struct S1* p_1655 = &c_1656;
    struct S1 c_1657 = {
        0x02EAC453L, // p_1655->g_2
        1L, // p_1655->g_3
        0L, // p_1655->g_29
        {{{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L}},{{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L}},{{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L},{18446744073709551607UL,0xF771356723FF4914L,0x83A0997736EAE117L,0xAE88B1495DD68647L,0x83A0997736EAE117L}}}, // p_1655->g_31
        {{{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL}},{{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL}},{{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL}},{{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL}},{{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL}},{{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL}},{{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL}},{{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL}},{{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL},{0UL,0x6CDD171CF63D7CB6L,18446744073709551615UL}}}, // p_1655->g_38
        &p_1655->g_29, // p_1655->g_43
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_1655->g_45
        0x2F5C805807E85E60L, // p_1655->g_114
        {0x1D9F503595D045B5L,0x1D9F503595D045B5L,0x1D9F503595D045B5L,0x1D9F503595D045B5L,0x1D9F503595D045B5L,0x1D9F503595D045B5L,0x1D9F503595D045B5L,0x1D9F503595D045B5L,0x1D9F503595D045B5L,0x1D9F503595D045B5L}, // p_1655->g_121
        {{{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}}},{{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}}},{{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}}},{{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}}},{{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}}},{{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}}},{{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}}},{{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}},{{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L},{-1L,0L,0xD8EAC32EL,0xB3L,0x1AD0L,1L,1L}}}}, // p_1655->g_125
        &p_1655->g_45[0], // p_1655->g_129
        {{{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}}},{{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}}},{{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}}},{{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}},{{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{-1L,1L,3UL,0xD0L,0x32F5L,0x0381L,-1L},{0L,0x5EL,4294967290UL,0x36L,9UL,0x4314L,0x55L},{0x5010L,0L,7UL,9UL,0x447AL,8L,0x7CL},{0x0001L,-8L,0UL,0x57L,1UL,0x5734L,-4L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L},{-9L,0x42L,6UL,0xBEL,1UL,0x1A04L,1L}}}}, // p_1655->g_137
        &p_1655->g_45[4], // p_1655->g_143
        0x651DL, // p_1655->g_151
        0x091B6409F750CC62L, // p_1655->g_167
        &p_1655->g_125[1][2][0].f1, // p_1655->g_173
        1UL, // p_1655->g_188
        0UL, // p_1655->g_194
        {0x5B08L,1L,0x92F1295BL,0xA4L,6UL,0x03DCL,0x14L}, // p_1655->g_201
        0L, // p_1655->g_231
        0x6268CC5EL, // p_1655->g_290
        {0x7D33L,0x7DL,4294967295UL,0x03L,0UL,-9L,5L}, // p_1655->g_373
        &p_1655->g_125[1][2][0].f4, // p_1655->g_386
        &p_1655->g_231, // p_1655->g_397
        0x1011223FL, // p_1655->g_399
        {0L,0L,0xFE15739CL,1UL,0xCF6DL,1L,-7L}, // p_1655->g_429
        {1L,0x4CL,0x31891B3FL,1UL,0x94FFL,0x7284L,1L}, // p_1655->g_490
        {0x0417L,-1L,0x0837FECEL,0x4DL,65530UL,2L,3L}, // p_1655->g_492
        (void*)0, // p_1655->g_529
        &p_1655->g_529, // p_1655->g_530
        (void*)0, // p_1655->g_565
        &p_1655->g_565, // p_1655->g_564
        0x1CAC005A633C2726L, // p_1655->g_568
        0xF6904C84458C2ABCL, // p_1655->g_570
        4294967292UL, // p_1655->g_585
        (void*)0, // p_1655->g_618
        &p_1655->g_618, // p_1655->g_617
        {0x5DE6L,0x3AL,0xA2575F79L,0x04L,65535UL,0x5907L,-1L}, // p_1655->g_672
        &p_1655->g_373, // p_1655->g_743
        &p_1655->g_743, // p_1655->g_742
        1L, // p_1655->g_795
        &p_1655->g_795, // p_1655->g_794
        &p_1655->g_794, // p_1655->g_793
        (void*)0, // p_1655->g_815
        &p_1655->g_815, // p_1655->g_814
        &p_1655->g_743, // p_1655->g_839
        {&p_1655->g_617,&p_1655->g_617,&p_1655->g_617,&p_1655->g_617,&p_1655->g_617,&p_1655->g_617,&p_1655->g_617,&p_1655->g_617}, // p_1655->g_876
        &p_1655->g_876[0], // p_1655->g_875
        {0x33L,0x33L}, // p_1655->g_917
        &p_1655->g_3, // p_1655->g_955
        &p_1655->g_955, // p_1655->g_954
        &p_1655->g_955, // p_1655->g_957
        &p_1655->g_957, // p_1655->g_956
        {0x6B73L,0x78L,9UL,0x77L,65529UL,0x1C9EL,8L}, // p_1655->g_981
        {0x6F98L,7L,0x2ECFFC41L,247UL,0UL,0x7E7AL,-7L}, // p_1655->g_1007
        {0x12BFL,0x2EL,0x17667B55L,0xD4L,65531UL,1L,3L}, // p_1655->g_1013
        {(void*)0,(void*)0}, // p_1655->g_1034
        &p_1655->g_1034[0], // p_1655->g_1033
        {-1L,0x50L,0UL,0x7BL,0UL,2L,7L}, // p_1655->g_1122
        {-1L,0x1CL,1UL,1UL,0xCB30L,0x462DL,-1L}, // p_1655->g_1143
        {0x55E8L,0x73L,0x6911BABBL,0xE9L,0xC6D1L,0L,-1L}, // p_1655->g_1144
        0x79F69970F559483CL, // p_1655->g_1173
        {&p_1655->g_173,&p_1655->g_173,&p_1655->g_173,&p_1655->g_173,&p_1655->g_173,&p_1655->g_173,&p_1655->g_173,&p_1655->g_173,&p_1655->g_173,&p_1655->g_173}, // p_1655->g_1198
        {{{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]}},{{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]}},{{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]}},{{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]}},{{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]}},{{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]},{&p_1655->g_1198[8],&p_1655->g_1198[8]}}}, // p_1655->g_1197
        {0xCF4D41A0L,0xCF4D41A0L,0xCF4D41A0L,0xCF4D41A0L}, // p_1655->g_1245
        {{{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}}},{{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}},{{0x6D5FL,0x41L,4294967294UL,0UL,0UL,8L,-7L},{0x46D7L,0x77L,0x03A0E121L,7UL,0UL,-2L,0x37L}}}}, // p_1655->g_1285
        {{{0x548439B766ACCB82L,0x559237AFCFBAF3C8L,0x559237AFCFBAF3C8L,0x548439B766ACCB82L,0x548439B766ACCB82L,0x559237AFCFBAF3C8L,0x559237AFCFBAF3C8L,0x548439B766ACCB82L,0x548439B766ACCB82L,0x559237AFCFBAF3C8L},{0x548439B766ACCB82L,0x559237AFCFBAF3C8L,0x559237AFCFBAF3C8L,0x548439B766ACCB82L,0x548439B766ACCB82L,0x559237AFCFBAF3C8L,0x559237AFCFBAF3C8L,0x548439B766ACCB82L,0x548439B766ACCB82L,0x559237AFCFBAF3C8L},{0x548439B766ACCB82L,0x559237AFCFBAF3C8L,0x559237AFCFBAF3C8L,0x548439B766ACCB82L,0x548439B766ACCB82L,0x559237AFCFBAF3C8L,0x559237AFCFBAF3C8L,0x548439B766ACCB82L,0x548439B766ACCB82L,0x559237AFCFBAF3C8L},{0x548439B766ACCB82L,0x559237AFCFBAF3C8L,0x559237AFCFBAF3C8L,0x548439B766ACCB82L,0x548439B766ACCB82L,0x559237AFCFBAF3C8L,0x559237AFCFBAF3C8L,0x548439B766ACCB82L,0x548439B766ACCB82L,0x559237AFCFBAF3C8L}}}, // p_1655->g_1333
        0x71L, // p_1655->g_1334
        (void*)0, // p_1655->g_1375
        &p_1655->g_386, // p_1655->g_1377
        &p_1655->g_1377, // p_1655->g_1376
        {0x26D4L,0x5CL,0x0D9B9A96L,1UL,0x535EL,0x599AL,-3L}, // p_1655->g_1386
        {0x10BBL,0x33L,0x55B3A65AL,2UL,0UL,4L,0x6EL}, // p_1655->g_1406
        {{{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{9L,-1L,0xA01276ACL,0x71L,65535UL,-1L,0x48L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L}},{{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{9L,-1L,0xA01276ACL,0x71L,65535UL,-1L,0x48L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L}},{{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{9L,-1L,0xA01276ACL,0x71L,65535UL,-1L,0x48L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L}},{{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{9L,-1L,0xA01276ACL,0x71L,65535UL,-1L,0x48L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L}},{{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{9L,-1L,0xA01276ACL,0x71L,65535UL,-1L,0x48L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L}},{{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{9L,-1L,0xA01276ACL,0x71L,65535UL,-1L,0x48L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L}},{{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{9L,-1L,0xA01276ACL,0x71L,65535UL,-1L,0x48L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L}},{{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{9L,-1L,0xA01276ACL,0x71L,65535UL,-1L,0x48L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L}},{{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{9L,-1L,0xA01276ACL,0x71L,65535UL,-1L,0x48L},{0x63F3L,1L,0xF373B1ECL,6UL,65532UL,-1L,0x06L},{0x7376L,0x44L,4UL,1UL,7UL,0x688DL,0x67L},{5L,0x0BL,0x43BAC402L,0UL,65535UL,-1L,0x36L},{0x52A0L,0x54L,0xF6896DEFL,1UL,1UL,0x39AAL,-1L}}}, // p_1655->g_1443
        4294967294UL, // p_1655->g_1495
        &p_1655->g_955, // p_1655->g_1560
        {-2L,-4L,1UL,250UL,9UL,0x48FAL,0x08L}, // p_1655->g_1593
        0x1144F9F2L, // p_1655->g_1602
        (void*)0, // p_1655->g_1639
        &p_1655->g_1639, // p_1655->g_1638
        1L, // p_1655->g_1653
        0, // p_1655->v_collective
        sequence_input[get_global_id(0)], // p_1655->global_0_offset
        sequence_input[get_global_id(1)], // p_1655->global_1_offset
        sequence_input[get_global_id(2)], // p_1655->global_2_offset
        sequence_input[get_local_id(0)], // p_1655->local_0_offset
        sequence_input[get_local_id(1)], // p_1655->local_1_offset
        sequence_input[get_local_id(2)], // p_1655->local_2_offset
        sequence_input[get_group_id(0)], // p_1655->group_0_offset
        sequence_input[get_group_id(1)], // p_1655->group_1_offset
        sequence_input[get_group_id(2)], // p_1655->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1656 = c_1657;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1655);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1655->g_2, "p_1655->g_2", print_hash_value);
    transparent_crc(p_1655->g_3, "p_1655->g_3", print_hash_value);
    transparent_crc(p_1655->g_29, "p_1655->g_29", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1655->g_31[i][j][k], "p_1655->g_31[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1655->g_38[i][j][k], "p_1655->g_38[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1655->g_45[i], "p_1655->g_45[i]", print_hash_value);

    }
    transparent_crc(p_1655->g_114, "p_1655->g_114", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1655->g_121[i], "p_1655->g_121[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1655->g_125[i][j][k].f0, "p_1655->g_125[i][j][k].f0", print_hash_value);
                transparent_crc(p_1655->g_125[i][j][k].f1, "p_1655->g_125[i][j][k].f1", print_hash_value);
                transparent_crc(p_1655->g_125[i][j][k].f2, "p_1655->g_125[i][j][k].f2", print_hash_value);
                transparent_crc(p_1655->g_125[i][j][k].f3, "p_1655->g_125[i][j][k].f3", print_hash_value);
                transparent_crc(p_1655->g_125[i][j][k].f4, "p_1655->g_125[i][j][k].f4", print_hash_value);
                transparent_crc(p_1655->g_125[i][j][k].f5, "p_1655->g_125[i][j][k].f5", print_hash_value);
                transparent_crc(p_1655->g_125[i][j][k].f6, "p_1655->g_125[i][j][k].f6", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1655->g_137[i][j][k].f0, "p_1655->g_137[i][j][k].f0", print_hash_value);
                transparent_crc(p_1655->g_137[i][j][k].f1, "p_1655->g_137[i][j][k].f1", print_hash_value);
                transparent_crc(p_1655->g_137[i][j][k].f2, "p_1655->g_137[i][j][k].f2", print_hash_value);
                transparent_crc(p_1655->g_137[i][j][k].f3, "p_1655->g_137[i][j][k].f3", print_hash_value);
                transparent_crc(p_1655->g_137[i][j][k].f4, "p_1655->g_137[i][j][k].f4", print_hash_value);
                transparent_crc(p_1655->g_137[i][j][k].f5, "p_1655->g_137[i][j][k].f5", print_hash_value);
                transparent_crc(p_1655->g_137[i][j][k].f6, "p_1655->g_137[i][j][k].f6", print_hash_value);

            }
        }
    }
    transparent_crc(p_1655->g_151, "p_1655->g_151", print_hash_value);
    transparent_crc(p_1655->g_167, "p_1655->g_167", print_hash_value);
    transparent_crc(p_1655->g_188, "p_1655->g_188", print_hash_value);
    transparent_crc(p_1655->g_194, "p_1655->g_194", print_hash_value);
    transparent_crc(p_1655->g_201.f0, "p_1655->g_201.f0", print_hash_value);
    transparent_crc(p_1655->g_201.f1, "p_1655->g_201.f1", print_hash_value);
    transparent_crc(p_1655->g_201.f2, "p_1655->g_201.f2", print_hash_value);
    transparent_crc(p_1655->g_201.f3, "p_1655->g_201.f3", print_hash_value);
    transparent_crc(p_1655->g_201.f4, "p_1655->g_201.f4", print_hash_value);
    transparent_crc(p_1655->g_201.f5, "p_1655->g_201.f5", print_hash_value);
    transparent_crc(p_1655->g_201.f6, "p_1655->g_201.f6", print_hash_value);
    transparent_crc(p_1655->g_231, "p_1655->g_231", print_hash_value);
    transparent_crc(p_1655->g_290, "p_1655->g_290", print_hash_value);
    transparent_crc(p_1655->g_373.f0, "p_1655->g_373.f0", print_hash_value);
    transparent_crc(p_1655->g_373.f1, "p_1655->g_373.f1", print_hash_value);
    transparent_crc(p_1655->g_373.f2, "p_1655->g_373.f2", print_hash_value);
    transparent_crc(p_1655->g_373.f3, "p_1655->g_373.f3", print_hash_value);
    transparent_crc(p_1655->g_373.f4, "p_1655->g_373.f4", print_hash_value);
    transparent_crc(p_1655->g_373.f5, "p_1655->g_373.f5", print_hash_value);
    transparent_crc(p_1655->g_373.f6, "p_1655->g_373.f6", print_hash_value);
    transparent_crc(p_1655->g_399, "p_1655->g_399", print_hash_value);
    transparent_crc(p_1655->g_429.f0, "p_1655->g_429.f0", print_hash_value);
    transparent_crc(p_1655->g_429.f1, "p_1655->g_429.f1", print_hash_value);
    transparent_crc(p_1655->g_429.f2, "p_1655->g_429.f2", print_hash_value);
    transparent_crc(p_1655->g_429.f3, "p_1655->g_429.f3", print_hash_value);
    transparent_crc(p_1655->g_429.f4, "p_1655->g_429.f4", print_hash_value);
    transparent_crc(p_1655->g_429.f5, "p_1655->g_429.f5", print_hash_value);
    transparent_crc(p_1655->g_429.f6, "p_1655->g_429.f6", print_hash_value);
    transparent_crc(p_1655->g_490.f0, "p_1655->g_490.f0", print_hash_value);
    transparent_crc(p_1655->g_490.f1, "p_1655->g_490.f1", print_hash_value);
    transparent_crc(p_1655->g_490.f2, "p_1655->g_490.f2", print_hash_value);
    transparent_crc(p_1655->g_490.f3, "p_1655->g_490.f3", print_hash_value);
    transparent_crc(p_1655->g_490.f4, "p_1655->g_490.f4", print_hash_value);
    transparent_crc(p_1655->g_490.f5, "p_1655->g_490.f5", print_hash_value);
    transparent_crc(p_1655->g_490.f6, "p_1655->g_490.f6", print_hash_value);
    transparent_crc(p_1655->g_492.f0, "p_1655->g_492.f0", print_hash_value);
    transparent_crc(p_1655->g_492.f1, "p_1655->g_492.f1", print_hash_value);
    transparent_crc(p_1655->g_492.f2, "p_1655->g_492.f2", print_hash_value);
    transparent_crc(p_1655->g_492.f3, "p_1655->g_492.f3", print_hash_value);
    transparent_crc(p_1655->g_492.f4, "p_1655->g_492.f4", print_hash_value);
    transparent_crc(p_1655->g_492.f5, "p_1655->g_492.f5", print_hash_value);
    transparent_crc(p_1655->g_492.f6, "p_1655->g_492.f6", print_hash_value);
    transparent_crc(p_1655->g_568, "p_1655->g_568", print_hash_value);
    transparent_crc(p_1655->g_570, "p_1655->g_570", print_hash_value);
    transparent_crc(p_1655->g_585, "p_1655->g_585", print_hash_value);
    transparent_crc(p_1655->g_672.f0, "p_1655->g_672.f0", print_hash_value);
    transparent_crc(p_1655->g_672.f1, "p_1655->g_672.f1", print_hash_value);
    transparent_crc(p_1655->g_672.f2, "p_1655->g_672.f2", print_hash_value);
    transparent_crc(p_1655->g_672.f3, "p_1655->g_672.f3", print_hash_value);
    transparent_crc(p_1655->g_672.f4, "p_1655->g_672.f4", print_hash_value);
    transparent_crc(p_1655->g_672.f5, "p_1655->g_672.f5", print_hash_value);
    transparent_crc(p_1655->g_672.f6, "p_1655->g_672.f6", print_hash_value);
    transparent_crc(p_1655->g_795, "p_1655->g_795", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1655->g_917[i], "p_1655->g_917[i]", print_hash_value);

    }
    transparent_crc(p_1655->g_981.f0, "p_1655->g_981.f0", print_hash_value);
    transparent_crc(p_1655->g_981.f1, "p_1655->g_981.f1", print_hash_value);
    transparent_crc(p_1655->g_981.f2, "p_1655->g_981.f2", print_hash_value);
    transparent_crc(p_1655->g_981.f3, "p_1655->g_981.f3", print_hash_value);
    transparent_crc(p_1655->g_981.f4, "p_1655->g_981.f4", print_hash_value);
    transparent_crc(p_1655->g_981.f5, "p_1655->g_981.f5", print_hash_value);
    transparent_crc(p_1655->g_981.f6, "p_1655->g_981.f6", print_hash_value);
    transparent_crc(p_1655->g_1007.f0, "p_1655->g_1007.f0", print_hash_value);
    transparent_crc(p_1655->g_1007.f1, "p_1655->g_1007.f1", print_hash_value);
    transparent_crc(p_1655->g_1007.f2, "p_1655->g_1007.f2", print_hash_value);
    transparent_crc(p_1655->g_1007.f3, "p_1655->g_1007.f3", print_hash_value);
    transparent_crc(p_1655->g_1007.f4, "p_1655->g_1007.f4", print_hash_value);
    transparent_crc(p_1655->g_1007.f5, "p_1655->g_1007.f5", print_hash_value);
    transparent_crc(p_1655->g_1007.f6, "p_1655->g_1007.f6", print_hash_value);
    transparent_crc(p_1655->g_1013.f0, "p_1655->g_1013.f0", print_hash_value);
    transparent_crc(p_1655->g_1013.f1, "p_1655->g_1013.f1", print_hash_value);
    transparent_crc(p_1655->g_1013.f2, "p_1655->g_1013.f2", print_hash_value);
    transparent_crc(p_1655->g_1013.f3, "p_1655->g_1013.f3", print_hash_value);
    transparent_crc(p_1655->g_1013.f4, "p_1655->g_1013.f4", print_hash_value);
    transparent_crc(p_1655->g_1013.f5, "p_1655->g_1013.f5", print_hash_value);
    transparent_crc(p_1655->g_1013.f6, "p_1655->g_1013.f6", print_hash_value);
    transparent_crc(p_1655->g_1122.f0, "p_1655->g_1122.f0", print_hash_value);
    transparent_crc(p_1655->g_1122.f1, "p_1655->g_1122.f1", print_hash_value);
    transparent_crc(p_1655->g_1122.f2, "p_1655->g_1122.f2", print_hash_value);
    transparent_crc(p_1655->g_1122.f3, "p_1655->g_1122.f3", print_hash_value);
    transparent_crc(p_1655->g_1122.f4, "p_1655->g_1122.f4", print_hash_value);
    transparent_crc(p_1655->g_1122.f5, "p_1655->g_1122.f5", print_hash_value);
    transparent_crc(p_1655->g_1122.f6, "p_1655->g_1122.f6", print_hash_value);
    transparent_crc(p_1655->g_1143.f0, "p_1655->g_1143.f0", print_hash_value);
    transparent_crc(p_1655->g_1143.f1, "p_1655->g_1143.f1", print_hash_value);
    transparent_crc(p_1655->g_1143.f2, "p_1655->g_1143.f2", print_hash_value);
    transparent_crc(p_1655->g_1143.f3, "p_1655->g_1143.f3", print_hash_value);
    transparent_crc(p_1655->g_1143.f4, "p_1655->g_1143.f4", print_hash_value);
    transparent_crc(p_1655->g_1143.f5, "p_1655->g_1143.f5", print_hash_value);
    transparent_crc(p_1655->g_1143.f6, "p_1655->g_1143.f6", print_hash_value);
    transparent_crc(p_1655->g_1144.f0, "p_1655->g_1144.f0", print_hash_value);
    transparent_crc(p_1655->g_1144.f1, "p_1655->g_1144.f1", print_hash_value);
    transparent_crc(p_1655->g_1144.f2, "p_1655->g_1144.f2", print_hash_value);
    transparent_crc(p_1655->g_1144.f3, "p_1655->g_1144.f3", print_hash_value);
    transparent_crc(p_1655->g_1144.f4, "p_1655->g_1144.f4", print_hash_value);
    transparent_crc(p_1655->g_1144.f5, "p_1655->g_1144.f5", print_hash_value);
    transparent_crc(p_1655->g_1144.f6, "p_1655->g_1144.f6", print_hash_value);
    transparent_crc(p_1655->g_1173, "p_1655->g_1173", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1655->g_1245[i], "p_1655->g_1245[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1655->g_1285[i][j][k].f0, "p_1655->g_1285[i][j][k].f0", print_hash_value);
                transparent_crc(p_1655->g_1285[i][j][k].f1, "p_1655->g_1285[i][j][k].f1", print_hash_value);
                transparent_crc(p_1655->g_1285[i][j][k].f2, "p_1655->g_1285[i][j][k].f2", print_hash_value);
                transparent_crc(p_1655->g_1285[i][j][k].f3, "p_1655->g_1285[i][j][k].f3", print_hash_value);
                transparent_crc(p_1655->g_1285[i][j][k].f4, "p_1655->g_1285[i][j][k].f4", print_hash_value);
                transparent_crc(p_1655->g_1285[i][j][k].f5, "p_1655->g_1285[i][j][k].f5", print_hash_value);
                transparent_crc(p_1655->g_1285[i][j][k].f6, "p_1655->g_1285[i][j][k].f6", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1655->g_1333[i][j][k], "p_1655->g_1333[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1655->g_1334, "p_1655->g_1334", print_hash_value);
    transparent_crc(p_1655->g_1386.f0, "p_1655->g_1386.f0", print_hash_value);
    transparent_crc(p_1655->g_1386.f1, "p_1655->g_1386.f1", print_hash_value);
    transparent_crc(p_1655->g_1386.f2, "p_1655->g_1386.f2", print_hash_value);
    transparent_crc(p_1655->g_1386.f3, "p_1655->g_1386.f3", print_hash_value);
    transparent_crc(p_1655->g_1386.f4, "p_1655->g_1386.f4", print_hash_value);
    transparent_crc(p_1655->g_1386.f5, "p_1655->g_1386.f5", print_hash_value);
    transparent_crc(p_1655->g_1386.f6, "p_1655->g_1386.f6", print_hash_value);
    transparent_crc(p_1655->g_1406.f0, "p_1655->g_1406.f0", print_hash_value);
    transparent_crc(p_1655->g_1406.f1, "p_1655->g_1406.f1", print_hash_value);
    transparent_crc(p_1655->g_1406.f2, "p_1655->g_1406.f2", print_hash_value);
    transparent_crc(p_1655->g_1406.f3, "p_1655->g_1406.f3", print_hash_value);
    transparent_crc(p_1655->g_1406.f4, "p_1655->g_1406.f4", print_hash_value);
    transparent_crc(p_1655->g_1406.f5, "p_1655->g_1406.f5", print_hash_value);
    transparent_crc(p_1655->g_1406.f6, "p_1655->g_1406.f6", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1655->g_1443[i][j].f0, "p_1655->g_1443[i][j].f0", print_hash_value);
            transparent_crc(p_1655->g_1443[i][j].f1, "p_1655->g_1443[i][j].f1", print_hash_value);
            transparent_crc(p_1655->g_1443[i][j].f2, "p_1655->g_1443[i][j].f2", print_hash_value);
            transparent_crc(p_1655->g_1443[i][j].f3, "p_1655->g_1443[i][j].f3", print_hash_value);
            transparent_crc(p_1655->g_1443[i][j].f4, "p_1655->g_1443[i][j].f4", print_hash_value);
            transparent_crc(p_1655->g_1443[i][j].f5, "p_1655->g_1443[i][j].f5", print_hash_value);
            transparent_crc(p_1655->g_1443[i][j].f6, "p_1655->g_1443[i][j].f6", print_hash_value);

        }
    }
    transparent_crc(p_1655->g_1495, "p_1655->g_1495", print_hash_value);
    transparent_crc(p_1655->g_1593.f0, "p_1655->g_1593.f0", print_hash_value);
    transparent_crc(p_1655->g_1593.f1, "p_1655->g_1593.f1", print_hash_value);
    transparent_crc(p_1655->g_1593.f2, "p_1655->g_1593.f2", print_hash_value);
    transparent_crc(p_1655->g_1593.f3, "p_1655->g_1593.f3", print_hash_value);
    transparent_crc(p_1655->g_1593.f4, "p_1655->g_1593.f4", print_hash_value);
    transparent_crc(p_1655->g_1593.f5, "p_1655->g_1593.f5", print_hash_value);
    transparent_crc(p_1655->g_1593.f6, "p_1655->g_1593.f6", print_hash_value);
    transparent_crc(p_1655->g_1602, "p_1655->g_1602", print_hash_value);
    transparent_crc(p_1655->g_1653, "p_1655->g_1653", print_hash_value);
    transparent_crc(p_1655->v_collective, "p_1655->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
