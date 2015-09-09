// --atomics 95 ---fake_divergence -g 6,15,55 -l 2,1,1
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


// Seed: 91

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int32_t  f0;
   volatile uint64_t  f1;
};

struct S1 {
    uint32_t g_11[7];
    int32_t g_67;
    int32_t * volatile g_66;
    int64_t g_70;
    int32_t *g_87;
    int32_t g_96;
    uint64_t g_104;
    uint32_t g_147[4];
    uint16_t g_163;
    int64_t g_193;
    int32_t g_196;
    uint8_t g_215;
    uint16_t *g_221;
    uint16_t * volatile *g_220;
    uint16_t *g_240;
    uint32_t g_247;
    uint8_t g_254;
    int32_t g_264;
    uint32_t g_265;
    int8_t g_289;
    int64_t g_291;
    int64_t *g_290;
    int32_t *g_293;
    int32_t **g_292;
    int8_t g_504[9];
    int32_t g_512;
    uint32_t g_513;
    int16_t g_518[9][5][2];
    uint64_t g_602;
    uint16_t **g_613;
    uint32_t g_634;
    int8_t g_641;
    int16_t *g_651;
    int16_t *g_652;
    union U0 g_659[10];
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S1 * p_670);
uint8_t  func_8(int32_t  p_9, struct S1 * p_670);
int64_t * func_73(int64_t  p_74, int32_t  p_75, int64_t  p_76, struct S1 * p_670);
uint32_t  func_81(int32_t * p_82, int16_t  p_83, uint32_t  p_84, int16_t  p_85, uint32_t  p_86, struct S1 * p_670);
int16_t  func_88(int32_t ** p_89, int32_t * p_90, struct S1 * p_670);
int32_t ** func_115(int32_t  p_116, int16_t  p_117, int32_t  p_118, int32_t ** p_119, struct S1 * p_670);
int64_t  func_120(int32_t  p_121, uint32_t  p_122, int32_t * p_123, uint32_t  p_124, int32_t  p_125, struct S1 * p_670);
int32_t * func_128(int64_t * p_129, struct S1 * p_670);
int64_t * func_130(uint32_t  p_131, int64_t * p_132, int32_t * p_133, int32_t ** p_134, struct S1 * p_670);
int32_t ** func_135(int32_t  p_136, int64_t  p_137, int64_t  p_138, struct S1 * p_670);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_670->g_11 p_670->g_66 p_670->g_87 p_670->g_70 p_670->g_96 p_670->g_104 p_670->g_512 p_670->g_290 p_670->g_291 p_670->g_641 p_670->g_196 p_670->g_292 p_670->g_293 p_670->g_518 p_670->g_221 p_670->g_163 p_670->g_651 p_670->g_659 p_670->g_513 p_670->g_613 p_670->g_240 p_670->g_254 p_670->g_215
 * writes: p_670->g_11 p_670->g_67 p_670->g_70 p_670->g_104 p_670->g_290 p_670->g_96 p_670->g_641 p_670->g_196 p_670->g_293 p_670->g_254 p_670->g_651 p_670->g_652 p_670->g_292 p_670->g_518 p_670->g_513
 */
uint32_t  func_1(struct S1 * p_670)
{ /* block id: 4 */
    uint8_t l_10[6] = {0UL,0UL,0UL,0UL,0UL,0UL};
    int64_t *l_69[9][7][4] = {{{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70}},{{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70}},{{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70}},{{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70}},{{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70}},{{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70}},{{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70}},{{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70}},{{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70},{&p_670->g_70,&p_670->g_70,&p_670->g_70,&p_670->g_70}}};
    int32_t *l_95 = &p_670->g_96;
    int16_t l_98 = 0x70A2L;
    int64_t **l_639[2];
    uint16_t l_640[5] = {0x03ECL,0x03ECL,0x03ECL,0x03ECL,0x03ECL};
    int32_t *l_642 = &p_670->g_196;
    uint8_t *l_647 = &p_670->g_254;
    int16_t **l_650[3][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    int32_t ***l_655 = &p_670->g_292;
    int32_t **l_657 = (void*)0;
    int32_t ***l_656 = &l_657;
    uint32_t l_658[8][10];
    int64_t *l_669 = &p_670->g_70;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_639[i] = (void*)0;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
            l_658[i][j] = 0xA2878F45L;
    }
    (*l_642) |= (safe_lshift_func_int8_t_s_s(((p_670->g_641 |= (safe_mod_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((func_8(l_10[1], p_670) , (-1L)), ((*l_95) = (((l_10[5] >= (p_670->g_70 = l_10[2])) && (safe_mod_func_int16_t_s_s(((p_670->g_290 = func_73(((l_10[1] >= (safe_div_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_s(1UL, 6)) , func_81(p_670->g_87, func_88(((safe_sub_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((l_95 != (void*)0), p_670->g_70)), 0xAAL)) , (void*)0), l_95, p_670), p_670->g_96, l_98, p_670->g_70, p_670)), 0x91FA2DF4L))) && 0L), p_670->g_512, (*p_670->g_290), p_670)) != &p_670->g_70), 0x7EF6L))) && (*p_670->g_290))))) <= p_670->g_512), l_640[1]))) , 0x62L), 2));
    (*p_670->g_292) = (*p_670->g_292);
    (*l_642) |= (safe_rshift_func_int16_t_s_u((safe_mod_func_uint32_t_u_u((((*l_647) = 251UL) != ((safe_mul_func_int16_t_s_s(0L, ((p_670->g_652 = (p_670->g_651 = &l_98)) != (((safe_rshift_func_int16_t_s_u((((*l_655) = &l_642) != ((*l_656) = &l_95)), 15)) & (p_670->g_518[3][3][1] = p_670->g_518[6][2][1])) , (void*)0)))) <= (*p_670->g_221))), ((0UL <= l_658[3][1]) ^ (*p_670->g_293)))), 13));
    (*l_642) = ((*p_670->g_651) | ((*p_670->g_290) >= (p_670->g_659[2] , ((safe_rshift_func_int16_t_s_s(0x0E94L, 9)) | (safe_mul_func_uint16_t_u_u((!((GROUP_DIVERGE(0, 1) && (***l_655)) ^ (p_670->g_11[0] & (((safe_add_func_int32_t_s_s(((safe_div_func_int64_t_s_s((~(safe_unary_minus_func_uint16_t_u((((((**l_656) = func_128(l_669, p_670)) == (*p_670->g_292)) , (**p_670->g_613)) >= (*p_670->g_240))))), p_670->g_11[5])) >= p_670->g_254), (*p_670->g_293))) , p_670->g_70) , p_670->g_215)))), (**p_670->g_613)))))));
    return (***l_655);
}


/* ------------------------------------------ */
/* 
 * reads : p_670->g_11 p_670->g_66
 * writes: p_670->g_11 p_670->g_67
 */
uint8_t  func_8(int32_t  p_9, struct S1 * p_670)
{ /* block id: 5 */
    int16_t l_65[10][7][2] = {{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}},{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}},{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}},{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}},{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}},{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}},{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}},{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}},{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}},{{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L},{0x1FADL,0x0C37L}}};
    int64_t l_68 = 0x1EDD65E72B4CD965L;
    int i, j, k;
    ++p_670->g_11[0];
    if ((atomic_inc(&p_670->g_atomic_input[95 * get_linear_group_id() + 26]) == 4))
    { /* block id: 8 */
        uint32_t l_14 = 1UL;
        union U0 l_15 = {0L};/* VOLATILE GLOBAL l_15 */
        uint8_t l_16 = 7UL;
        uint8_t l_17 = 1UL;
        int8_t l_18 = (-6L);
        uint32_t l_19 = 0x5FEC46BCL;
        uint32_t l_20[9] = {0x77F17245L,0x77F17245L,0x77F17245L,0x77F17245L,0x77F17245L,0x77F17245L,0x77F17245L,0x77F17245L,0x77F17245L};
        int8_t l_21 = (-1L);
        uint32_t l_22 = 4294967289UL;
        uint64_t l_23 = 0x907C4E7CCCE1CC0EL;
        int i;
        if ((l_14 , (l_15 , (l_23 = (((l_22 ^= ((l_16 , (l_19 = (l_17 , l_18))) , (l_20[0] , l_21))) , 2L) , 0x044BA928L)))))
        { /* block id: 12 */
            int32_t l_24 = 0x3A151CD2L;
            for (l_24 = 8; (l_24 >= 2); l_24 -= 1)
            { /* block id: 15 */
                int32_t l_25[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
                int i;
                for (l_25[3] = 0; l_25[3] < 9; l_25[3] += 1)
                {
                    l_20[l_25[3]] = 0UL;
                }
                for (l_25[0] = 5; (l_25[0] >= 0); l_25[0] -= 1)
                { /* block id: 19 */
                    int32_t l_26 = 3L;
                    int32_t *l_41 = &l_26;
                    for (l_26 = 8; (l_26 >= 0); l_26 -= 1)
                    { /* block id: 22 */
                        int32_t l_28 = (-10L);
                        int32_t *l_27 = &l_28;
                        int32_t *l_29 = (void*)0;
                        int32_t *l_30 = (void*)0;
                        int8_t l_31 = (-10L);
                        int8_t l_32[9][3][2] = {{{0x04L,0x04L},{0x04L,0x04L},{0x04L,0x04L}},{{0x04L,0x04L},{0x04L,0x04L},{0x04L,0x04L}},{{0x04L,0x04L},{0x04L,0x04L},{0x04L,0x04L}},{{0x04L,0x04L},{0x04L,0x04L},{0x04L,0x04L}},{{0x04L,0x04L},{0x04L,0x04L},{0x04L,0x04L}},{{0x04L,0x04L},{0x04L,0x04L},{0x04L,0x04L}},{{0x04L,0x04L},{0x04L,0x04L},{0x04L,0x04L}},{{0x04L,0x04L},{0x04L,0x04L},{0x04L,0x04L}},{{0x04L,0x04L},{0x04L,0x04L},{0x04L,0x04L}}};
                        int8_t l_33 = 0x05L;
                        uint8_t l_34 = 0x54L;
                        int32_t *l_37 = &l_28;
                        uint8_t l_38 = 0xBBL;
                        int i, j, k;
                        l_30 = (l_20[(l_25[0] + 1)] , (l_29 = l_27));
                        l_34--;
                        l_37 = (l_20[l_26] , (void*)0);
                        l_38++;
                    }
                    l_41 = (void*)0;
                    for (l_26 = 2; (l_26 <= 8); l_26 += 1)
                    { /* block id: 32 */
                        int8_t l_42 = 0x3BL;
                        uint64_t l_43 = 1UL;
                        uint32_t l_44[7] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL};
                        int32_t l_45[6][3][1] = {{{0L},{0L},{0L}},{{0L},{0L},{0L}},{{0L},{0L},{0L}},{{0L},{0L},{0L}},{{0L},{0L},{0L}},{{0L},{0L},{0L}}};
                        int8_t l_46 = 0x6DL;
                        int i, j, k;
                        l_45[0][1][0] = (l_42 , (l_44[3] = l_43));
                        l_46 ^= 0L;
                    }
                }
            }
        }
        else
        { /* block id: 39 */
            int32_t l_47 = (-7L);
            int32_t *l_62 = &l_47;
            for (l_47 = 0; (l_47 <= 6); l_47 += 1)
            { /* block id: 42 */
                uint32_t l_55 = 0x7628D16EL;
                uint32_t l_56 = 0x70D16AAEL;
                int32_t l_59 = 0x46DEA280L;
                int32_t *l_58 = &l_59;
                int32_t **l_57 = &l_58;
                int32_t *l_60 = &l_59;
                int32_t *l_61[9] = {(void*)0,&l_59,(void*)0,(void*)0,&l_59,(void*)0,(void*)0,&l_59,(void*)0};
                int i;
                if (p_670->g_11[l_47])
                { /* block id: 43 */
                    int32_t l_48[10][3][8] = {{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}},{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}},{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}},{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}},{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}},{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}},{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}},{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}},{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}},{{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L},{(-3L),1L,0L,1L,(-3L),(-3L),1L,0L}}};
                    uint16_t l_49 = 1UL;
                    int i, j, k;
                    --l_49;
                }
                else
                { /* block id: 45 */
                    uint32_t l_52 = 4294967290UL;
                    l_52--;
                }
                l_56 &= l_55;
                l_57 = (void*)0;
                l_61[1] = l_60;
            }
            l_62 = (void*)0;
        }
        unsigned int result = 0;
        result += l_14;
        result += l_15.f0;
        result += l_15.f1;
        result += l_16;
        result += l_17;
        result += l_18;
        result += l_19;
        int l_20_i0;
        for (l_20_i0 = 0; l_20_i0 < 9; l_20_i0++) {
            result += l_20[l_20_i0];
        }
        result += l_21;
        result += l_22;
        result += l_23;
        atomic_add(&p_670->g_special_values[95 * get_linear_group_id() + 26], result);
    }
    else
    { /* block id: 54 */
        (1 + 1);
    }
    (*p_670->g_66) = (l_65[4][4][0] < (p_670->g_11[1] != FAKE_DIVERGE(p_670->global_1_offset, get_global_id(1), 10)));
    return l_68;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t * func_73(int64_t  p_74, int32_t  p_75, int64_t  p_76, struct S1 * p_670)
{ /* block id: 490 */
    int64_t *l_638 = &p_670->g_291;
    return l_638;
}


/* ------------------------------------------ */
/* 
 * reads : p_670->g_104 p_670->g_70
 * writes: p_670->g_104
 */
uint32_t  func_81(int32_t * p_82, int16_t  p_83, uint32_t  p_84, int16_t  p_85, uint32_t  p_86, struct S1 * p_670)
{ /* block id: 62 */
    int32_t *l_99 = &p_670->g_96;
    int32_t *l_100 = (void*)0;
    int32_t *l_101 = (void*)0;
    int32_t *l_102 = &p_670->g_96;
    int32_t *l_103[10][6][4] = {{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}}};
    uint8_t l_637 = 0x61L;
    int i, j, k;
    ++p_670->g_104;
    for (p_670->g_104 = 0; (p_670->g_104 < 35); p_670->g_104 = safe_add_func_uint8_t_u_u(p_670->g_104, 1))
    { /* block id: 66 */
        uint16_t *l_126[2][3];
        int32_t l_127 = 0x2BAAC5CAL;
        int32_t **l_287 = &l_103[1][4][0];
        int8_t *l_288 = &p_670->g_289;
        int32_t **l_533 = &p_670->g_293;
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 3; j++)
                l_126[i][j] = (void*)0;
        }
        (1 + 1);
    }
    return p_670->g_70;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_88(int32_t ** p_89, int32_t * p_90, struct S1 * p_670)
{ /* block id: 60 */
    uint16_t l_97 = 65526UL;
    return l_97;
}


/* ------------------------------------------ */
/* 
 * reads : p_670->g_293 p_670->g_292 p_670->g_247 p_670->g_196 p_670->g_254 p_670->g_264 p_670->g_513 p_670->g_147 p_670->g_512 p_670->g_96
 * writes: p_670->g_293 p_670->g_247 p_670->g_196 p_670->g_254 p_670->g_264 p_670->g_513 p_670->g_512 p_670->g_96
 */
int32_t ** func_115(int32_t  p_116, int16_t  p_117, int32_t  p_118, int32_t ** p_119, struct S1 * p_670)
{ /* block id: 389 */
    uint8_t l_536 = 8UL;
    int32_t **l_547 = &p_670->g_87;
    (*p_670->g_292) = (*p_119);
    for (p_670->g_247 = (-1); (p_670->g_247 >= 16); ++p_670->g_247)
    { /* block id: 393 */
        uint32_t l_539 = 0x7670D3A6L;
        if (l_536)
            break;
        for (p_670->g_196 = 0; (p_670->g_196 != 25); p_670->g_196 = safe_add_func_uint16_t_u_u(p_670->g_196, 9))
        { /* block id: 397 */
            ++l_539;
            for (p_670->g_254 = 0; (p_670->g_254 <= 3); p_670->g_254 += 1)
            { /* block id: 401 */
                int64_t *l_542 = (void*)0;
                for (p_670->g_264 = 0; (p_670->g_264 <= 3); p_670->g_264 += 1)
                { /* block id: 404 */
                    for (l_539 = 0; (l_539 <= 3); l_539 += 1)
                    { /* block id: 407 */
                        int32_t *l_543 = (void*)0;
                        int32_t *l_544 = &p_670->g_512;
                        int i;
                        (*p_670->g_292) = func_128(l_542, p_670);
                        (*l_544) ^= p_670->g_147[l_539];
                        (*p_670->g_292) = (void*)0;
                    }
                }
                return &p_670->g_87;
            }
            (**p_670->g_292) ^= (0x33D2L < (0x07B15FAC736F403CL && (p_116 > 0x1DCB26EDL)));
        }
    }
    return l_547;
}


/* ------------------------------------------ */
/* 
 * reads : p_670->g_290 p_670->g_291 p_670->g_512 p_670->g_292 p_670->g_293 p_670->g_96
 * writes: p_670->g_518 p_670->g_96
 */
int64_t  func_120(int32_t  p_121, uint32_t  p_122, int32_t * p_123, uint32_t  p_124, int32_t  p_125, struct S1 * p_670)
{ /* block id: 383 */
    int16_t *l_516 = (void*)0;
    int16_t *l_517 = &p_670->g_518[6][2][1];
    int32_t l_519 = 5L;
    int8_t *l_526[4];
    int32_t l_527 = 0x4DA22FAFL;
    int32_t l_532 = (-4L);
    int i;
    for (i = 0; i < 4; i++)
        l_526[i] = &p_670->g_504[7];
    (**p_670->g_292) ^= (((p_125 < p_121) & (l_519 = ((*l_517) = p_125))) ^ (safe_div_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s(((((void*)0 == l_526[0]) && ((l_527 , ((safe_mod_func_uint32_t_u_u((((1L ^ (((safe_div_func_uint16_t_u_u(((l_527 &= p_125) >= (((*p_670->g_290) >= (-1L)) > 0x1D46L)), p_121)) , 0x3073L) <= l_532)) == 0L) && p_122), 0x35F1F85FL)) <= (*p_123))) > (*p_123))) >= 65532UL), p_122)) | l_532), p_670->g_512)));
    return l_527;
}


/* ------------------------------------------ */
/* 
 * reads : p_670->g_513
 * writes: p_670->g_513
 */
int32_t * func_128(int64_t * p_129, struct S1 * p_670)
{ /* block id: 380 */
    int32_t *l_507 = &p_670->g_196;
    int32_t *l_508 = (void*)0;
    int32_t *l_509 = &p_670->g_196;
    int64_t l_510 = 8L;
    int32_t *l_511[5];
    int i;
    for (i = 0; i < 5; i++)
        l_511[i] = &p_670->g_196;
    --p_670->g_513;
    return l_511[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_670->g_147 p_670->g_289 p_670->g_504 p_670->g_215 p_670->g_163 p_670->g_293 p_670->g_96 p_670->g_240 p_670->g_196
 * writes: p_670->g_504 p_670->g_215 p_670->g_196
 */
int64_t * func_130(uint32_t  p_131, int64_t * p_132, int32_t * p_133, int32_t ** p_134, struct S1 * p_670)
{ /* block id: 150 */
    int32_t l_294 = (-7L);
    int32_t l_295[4][7] = {{0x2B1EFAC6L,0x2B1EFAC6L,1L,0x231A4508L,6L,1L,0x0C0CF1EBL},{0x2B1EFAC6L,0x2B1EFAC6L,1L,0x231A4508L,6L,1L,0x0C0CF1EBL},{0x2B1EFAC6L,0x2B1EFAC6L,1L,0x231A4508L,6L,1L,0x0C0CF1EBL},{0x2B1EFAC6L,0x2B1EFAC6L,1L,0x231A4508L,6L,1L,0x0C0CF1EBL}};
    uint32_t l_490 = 7UL;
    uint8_t *l_500 = &p_670->g_215;
    uint8_t **l_499 = &l_500;
    uint32_t *l_502 = &l_490;
    uint32_t **l_501 = &l_502;
    int8_t *l_503 = &p_670->g_504[7];
    int32_t *l_505 = &p_670->g_196;
    int64_t *l_506 = &p_670->g_193;
    int i, j;
    l_295[3][1] &= l_294;
    if ((atomic_inc(&p_670->g_atomic_input[95 * get_linear_group_id() + 54]) == 4))
    { /* block id: 153 */
        int32_t *l_296 = (void*)0;
        int32_t l_298[4] = {(-3L),(-3L),(-3L),(-3L)};
        int32_t *l_297 = &l_298[2];
        int32_t *l_299 = &l_298[2];
        uint16_t l_302 = 0UL;
        uint16_t *l_301 = &l_302;
        uint16_t **l_300[4] = {&l_301,&l_301,&l_301,&l_301};
        uint16_t **l_303[3][5] = {{&l_301,&l_301,&l_301,&l_301,&l_301},{&l_301,&l_301,&l_301,&l_301,&l_301},{&l_301,&l_301,&l_301,&l_301,&l_301}};
        int i, j;
        l_299 = (l_297 = l_296);
        l_303[0][3] = l_300[1];
        for (l_298[2] = 0; (l_298[2] == (-17)); --l_298[2])
        { /* block id: 159 */
            int32_t l_306 = 9L;
            uint64_t l_343 = 18446744073709551615UL;
            uint32_t l_344 = 4294967295UL;
            uint32_t l_345 = 0x46AA6A8AL;
            for (l_306 = (-27); (l_306 >= 10); l_306 = safe_add_func_uint64_t_u_u(l_306, 3))
            { /* block id: 162 */
                int32_t l_309 = 0x613A80E3L;
                for (l_309 = 0; (l_309 >= 6); l_309 = safe_add_func_int64_t_s_s(l_309, 5))
                { /* block id: 165 */
                    uint32_t l_312 = 0xD4C389BEL;
                    uint8_t l_315 = 0xC9L;
                    int16_t l_316[3];
                    uint64_t l_317 = 0xDA57ACD3F1DC3ABBL;
                    uint32_t l_318 = 0x8790FD71L;
                    int32_t l_320[6][9] = {{0L,0x31765EC4L,0L,0L,0x31765EC4L,0L,0L,0x31765EC4L,0L},{0L,0x31765EC4L,0L,0L,0x31765EC4L,0L,0L,0x31765EC4L,0L},{0L,0x31765EC4L,0L,0L,0x31765EC4L,0L,0L,0x31765EC4L,0L},{0L,0x31765EC4L,0L,0L,0x31765EC4L,0L,0L,0x31765EC4L,0L},{0L,0x31765EC4L,0L,0L,0x31765EC4L,0L,0L,0x31765EC4L,0L},{0L,0x31765EC4L,0L,0L,0x31765EC4L,0L,0L,0x31765EC4L,0L}};
                    int32_t *l_319 = &l_320[2][4];
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_316[i] = 1L;
                    l_312--;
                    l_316[0] |= l_315;
                    l_318 &= l_317;
                    l_299 = l_319;
                }
            }
            for (l_306 = 0; (l_306 != (-2)); --l_306)
            { /* block id: 174 */
                uint16_t l_323 = 0x8769L;
                uint32_t l_324 = 0x781F761AL;
                int32_t l_326 = 0x35A67BD9L;
                int32_t *l_325 = &l_326;
                int32_t l_338 = 0x4A6850D6L;
                l_299 = (l_323 , (l_324 , l_325));
                for (l_324 = 0; (l_324 > 60); l_324 = safe_add_func_int64_t_s_s(l_324, 3))
                { /* block id: 178 */
                    int32_t l_329 = 1L;
                    uint64_t l_330 = 4UL;
                    uint32_t l_333 = 1UL;
                    l_330++;
                    l_299 = (l_333 , (void*)0);
                }
                for (l_326 = 20; (l_326 <= 26); ++l_326)
                { /* block id: 184 */
                    uint16_t l_336[4][10][2] = {{{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL}},{{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL}},{{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL}},{{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL},{5UL,0x71DFL}}};
                    int64_t l_337 = 0x032B8480B581A6D3L;
                    int i, j, k;
                    l_337 ^= l_336[1][3][1];
                }
                l_338 ^= 4L;
            }
            for (l_306 = (-19); (l_306 > 23); l_306++)
            { /* block id: 191 */
                int16_t l_341 = 0x2D85L;
                uint64_t l_342 = 18446744073709551615UL;
                l_297 = (l_299 = (l_296 = (void*)0));
                l_342 ^= l_341;
            }
            l_345 = (l_343 , l_344);
        }
        for (l_302 = 0; (l_302 <= 3); l_302 += 1)
        { /* block id: 201 */
            int32_t l_346 = (-1L);
            for (l_346 = 0; (l_346 <= 2); l_346 += 1)
            { /* block id: 204 */
                int32_t l_347 = (-6L);
                for (l_347 = 0; (l_347 <= 2); l_347 += 1)
                { /* block id: 207 */
                    int32_t l_348 = 0x16B9E587L;
                    uint64_t l_360 = 0x6E096090FFD3EE03L;
                    int i;
                    for (l_348 = 3; (l_348 >= 0); l_348 -= 1)
                    { /* block id: 210 */
                        int8_t l_349 = 0x50L;
                        uint16_t l_350 = 65535UL;
                        int8_t l_353[7][4] = {{0x35L,0x74L,0x0FL,0x74L},{0x35L,0x74L,0x0FL,0x74L},{0x35L,0x74L,0x0FL,0x74L},{0x35L,0x74L,0x0FL,0x74L},{0x35L,0x74L,0x0FL,0x74L},{0x35L,0x74L,0x0FL,0x74L},{0x35L,0x74L,0x0FL,0x74L}};
                        int32_t l_354 = 0x764C5525L;
                        int64_t l_355 = 0x24B8AF9111AFA2E2L;
                        uint64_t l_356 = 1UL;
                        uint8_t l_357 = 254UL;
                        uint32_t l_358 = 0UL;
                        int32_t l_359[1];
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_359[i] = 0x4F6A6F90L;
                        l_350--;
                        l_298[l_302] = ((((l_350 = FAKE_DIVERGE(p_670->global_2_offset, get_global_id(2), 10)) , (l_356 ^= ((l_353[5][2] = l_298[l_302]) , (l_354 , l_355)))) , 0x676E750FBB43A6AAL) , ((l_357 = 0x5F5792ACDF8459A6L) , (l_359[0] = l_358)));
                    }
                    l_360 |= l_298[l_302];
                    for (l_348 = 3; (l_348 >= 0); l_348 -= 1)
                    { /* block id: 222 */
                        int32_t l_362 = 0x32DD2311L;
                        int32_t *l_361 = &l_362;
                        l_361 = (void*)0;
                    }
                }
                l_347 &= 0x5CCA7434L;
                for (l_347 = 0; (l_347 <= 3); l_347 += 1)
                { /* block id: 229 */
                    int16_t l_363[3][3];
                    int32_t l_364 = (-1L);
                    int64_t l_365 = 0x2CB869B2CAB1EF6BL;
                    uint16_t l_366 = 0UL;
                    uint64_t l_367 = 18446744073709551608UL;
                    uint32_t l_368 = 1UL;
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_363[i][j] = 0L;
                    }
                    l_365 &= (l_364 = (l_298[2] = l_363[0][2]));
                    l_364 &= l_366;
                    l_368 = l_367;
                }
            }
            for (l_346 = 0; (l_346 <= 3); l_346 += 1)
            { /* block id: 239 */
                uint16_t l_369 = 1UL;
                uint16_t l_372[1][9];
                uint8_t l_373 = 5UL;
                int32_t l_374 = 0x1ADC7AF5L;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_372[i][j] = 1UL;
                }
                l_374 = (l_298[2] = ((l_369++) , (l_373 = l_372[0][0])));
            }
            for (l_346 = 2; (l_346 >= 0); l_346 -= 1)
            { /* block id: 247 */
                int32_t l_375[5];
                uint64_t l_391[1][4] = {{1UL,1UL,1UL,1UL}};
                int i, j;
                for (i = 0; i < 5; i++)
                    l_375[i] = 0L;
                for (l_375[4] = 0; (l_375[4] <= 2); l_375[4] += 1)
                { /* block id: 250 */
                    uint8_t l_378[6] = {1UL,1UL,1UL,1UL,1UL,1UL};
                    uint8_t *l_377 = &l_378[3];
                    uint8_t **l_376 = &l_377;
                    uint8_t **l_379 = (void*)0;
                    uint64_t l_380 = 0xDF780B903BE1369EL;
                    int i;
                    l_379 = l_376;
                    l_298[3] = l_380;
                    for (l_378[1] = 0; (l_378[1] <= 3); l_378[1] += 1)
                    { /* block id: 255 */
                        union U0 l_382 = {0x4F89A00FL};/* VOLATILE GLOBAL l_382 */
                        union U0 *l_381 = &l_382;
                        uint32_t l_383 = 0x458624B2L;
                        int16_t l_384 = 9L;
                        int32_t l_385 = 0L;
                        uint32_t l_386 = 0xD345F6E7L;
                        int8_t l_387 = 1L;
                        int32_t l_388 = (-10L);
                        int32_t *l_389 = &l_388;
                        int32_t *l_390 = &l_388;
                        l_381 = (void*)0;
                        l_384 ^= l_383;
                        l_298[3] = l_385;
                        l_299 = (((l_386 , 0xD5265D95L) , (l_388 = l_387)) , (l_390 = l_389));
                    }
                    for (l_378[4] = 0; (l_378[4] <= 3); l_378[4] += 1)
                    { /* block id: 265 */
                        l_297 = (l_296 = (void*)0);
                    }
                }
                --l_391[0][1];
            }
            for (l_346 = 3; (l_346 >= 0); l_346 -= 1)
            { /* block id: 274 */
                int32_t l_395 = 0x16FAC930L;
                int32_t *l_394 = &l_395;
                uint64_t l_396 = 18446744073709551608UL;
                int64_t **l_397 = (void*)0;
                uint8_t l_398 = 0x60L;
                uint32_t l_399 = 0x3FAAD29EL;
                uint16_t l_400 = 65535UL;
                l_394 = (void*)0;
                l_397 = (l_396 , (void*)0);
                l_400 &= (l_399 = (l_298[0] &= (l_398 &= 0L)));
            }
            for (l_346 = 0; (l_346 <= 3); l_346 += 1)
            { /* block id: 284 */
                uint16_t l_401[7] = {65535UL,65529UL,65535UL,65535UL,65529UL,65535UL,65535UL};
                int i;
                l_298[3] = l_401[0];
                for (l_401[0] = 0; (l_401[0] <= 3); l_401[0] += 1)
                { /* block id: 288 */
                    int32_t l_403 = (-5L);
                    int32_t *l_402 = &l_403;
                    int16_t l_414 = 1L;
                    l_296 = l_402;
                    if (((*l_296) = (-1L)))
                    { /* block id: 291 */
                        uint8_t l_404 = 0UL;
                        int32_t l_405 = 0x00D7EF8BL;
                        int32_t l_406 = 0x68141712L;
                        int i;
                        l_405 = ((l_404 &= 0xDD5CE2319983A2C1L) , 0x5077A661L);
                        (*l_402) = (l_406 , 1L);
                    }
                    else
                    { /* block id: 295 */
                        int16_t l_407 = 0x3D86L;
                        uint32_t l_408 = 4294967295UL;
                        int32_t l_411 = (-1L);
                        int32_t *l_412 = &l_411;
                        uint16_t l_413 = 0x53E8L;
                        l_408++;
                        (*l_296) = (FAKE_DIVERGE(p_670->local_1_offset, get_local_id(1), 10) , (l_411 = 0x4886F7CEL));
                        l_412 = (void*)0;
                        (*l_402) = l_413;
                    }
                    l_414 ^= 0x26813546L;
                    for (l_414 = 3; (l_414 >= 0); l_414 -= 1)
                    { /* block id: 305 */
                        uint64_t l_415 = 18446744073709551609UL;
                        uint64_t l_418 = 0x4050AAE15F20776DL;
                        uint16_t l_419 = 0xF603L;
                        uint32_t l_420 = 0x33FE3BF2L;
                        int32_t l_421 = 1L;
                        uint64_t l_422 = 0x2CEFAD90C261EE3FL;
                        int i;
                        l_415--;
                        (*l_296) &= ((l_298[l_346] , l_418) , (l_419 , l_420));
                        l_422 &= l_421;
                    }
                }
                for (l_401[0] = 0; (l_401[0] <= 3); l_401[0] += 1)
                { /* block id: 313 */
                    int32_t l_423 = 0x6ABBF5F3L;
                    uint32_t l_437 = 4294967290UL;
                    for (l_423 = 0; (l_423 <= 3); l_423 += 1)
                    { /* block id: 316 */
                        int32_t l_425 = 0x6BD1C04FL;
                        int32_t *l_424 = &l_425;
                        l_424 = l_424;
                    }
                    for (l_423 = 3; (l_423 >= 0); l_423 -= 1)
                    { /* block id: 321 */
                        int32_t l_427 = 0x4F8BCEA9L;
                        int32_t *l_426[9] = {&l_427,&l_427,&l_427,&l_427,&l_427,&l_427,&l_427,&l_427,&l_427};
                        int64_t l_428 = 0x5A53C348E5D8197AL;
                        int32_t l_429 = (-3L);
                        int32_t l_430[5][6][8] = {{{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)}},{{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)}},{{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)}},{{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)}},{{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)},{(-6L),(-5L),(-6L),(-6L),(-5L),(-6L),(-6L),(-5L)}}};
                        int64_t l_431 = 0x2D5EA7744608C09BL;
                        int8_t l_432 = (-3L);
                        int64_t l_433[8][7] = {{(-1L),(-1L),4L,0x26F344222B9C3A13L,(-7L),0L,(-1L)},{(-1L),(-1L),4L,0x26F344222B9C3A13L,(-7L),0L,(-1L)},{(-1L),(-1L),4L,0x26F344222B9C3A13L,(-7L),0L,(-1L)},{(-1L),(-1L),4L,0x26F344222B9C3A13L,(-7L),0L,(-1L)},{(-1L),(-1L),4L,0x26F344222B9C3A13L,(-7L),0L,(-1L)},{(-1L),(-1L),4L,0x26F344222B9C3A13L,(-7L),0L,(-1L)},{(-1L),(-1L),4L,0x26F344222B9C3A13L,(-7L),0L,(-1L)},{(-1L),(-1L),4L,0x26F344222B9C3A13L,(-7L),0L,(-1L)}};
                        uint8_t l_434 = 0x8EL;
                        int i, j, k;
                        l_297 = l_426[3];
                        l_298[1] |= (l_429 = (l_428 , 0x1C3C8AF4L));
                        l_434--;
                    }
                    if (l_437)
                    { /* block id: 327 */
                        uint16_t l_438 = 0x2449L;
                        int32_t l_439 = 0L;
                        uint32_t l_440 = 1UL;
                        l_439 = l_438;
                        --l_440;
                    }
                    else
                    { /* block id: 330 */
                        int8_t l_443 = (-10L);
                        int64_t l_444 = 0x5AEDDC266FC46F5DL;
                        int8_t l_445 = 1L;
                        uint32_t l_446 = 0UL;
                        --l_446;
                    }
                }
                for (l_401[0] = 0; (l_401[0] <= 3); l_401[0] += 1)
                { /* block id: 336 */
                    uint64_t l_449 = 0xDC46B288D2DE8AE1L;
                    uint8_t l_452 = 251UL;
                    int8_t l_453 = 1L;
                    ++l_449;
                    if ((l_453 = (l_452 |= 0x5421B84FL)))
                    { /* block id: 340 */
                        union U0 l_455 = {0x47744F20L};/* VOLATILE GLOBAL l_455 */
                        union U0 *l_454 = &l_455;
                        uint64_t l_456 = 0UL;
                        int8_t l_457 = 0x7BL;
                        int16_t l_458 = 0x1122L;
                        uint16_t l_459 = 0UL;
                        uint32_t l_460 = 6UL;
                        uint32_t l_461 = 0x98F3286DL;
                        int32_t l_462 = (-1L);
                        uint64_t l_463 = 0x93D68F4F2950D239L;
                        int32_t l_464[9] = {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)};
                        int i;
                        l_454 = (void*)0;
                        l_457 ^= l_456;
                        l_298[2] |= (l_463 = (l_458 , (l_459 , (l_462 &= (l_461 &= l_460)))));
                        l_298[2] = l_464[2];
                    }
                    else
                    { /* block id: 348 */
                        int32_t l_465 = 7L;
                        int64_t l_466 = 0x5CA68B6D3BCDDB86L;
                        uint32_t l_467 = 0xE778C606L;
                        uint16_t l_470[8][9][3] = {{{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL}},{{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL}},{{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL}},{{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL}},{{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL}},{{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL}},{{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL}},{{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL},{6UL,6UL,65527UL}}};
                        int8_t l_471 = 0x28L;
                        uint32_t l_472 = 4294967295UL;
                        int i, j, k;
                        ++l_467;
                        l_298[0] = l_470[4][1][1];
                        l_472--;
                    }
                    for (l_449 = 0; (l_449 <= 3); l_449 += 1)
                    { /* block id: 355 */
                        int32_t l_476 = (-1L);
                        int32_t *l_475 = &l_476;
                        l_296 = (l_475 = l_475);
                    }
                    for (l_452 = 0; (l_452 <= 3); l_452 += 1)
                    { /* block id: 361 */
                        int32_t l_478 = 9L;
                        int32_t *l_477[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t *l_479[1];
                        uint8_t l_480 = 0xF8L;
                        uint32_t l_481[8] = {1UL,0x8DB85ECEL,1UL,1UL,0x8DB85ECEL,1UL,1UL,0x8DB85ECEL};
                        int i;
                        for (i = 0; i < 1; i++)
                            l_479[i] = &l_478;
                        l_297 = (l_296 = l_477[0]);
                        l_297 = l_479[0];
                        l_296 = (((p_670->g_147[l_302] , l_480) , 0xD5AAF66FEFA4915FL) , ((l_481[3] = 18446744073709551615UL) , (void*)0));
                    }
                }
            }
        }
        unsigned int result = 0;
        int l_298_i0;
        for (l_298_i0 = 0; l_298_i0 < 4; l_298_i0++) {
            result += l_298[l_298_i0];
        }
        result += l_302;
        atomic_add(&p_670->g_special_values[95 * get_linear_group_id() + 54], result);
    }
    else
    { /* block id: 371 */
        (1 + 1);
    }
    (*l_505) |= (safe_mul_func_int16_t_s_s(((l_295[3][1] , ((p_131 , GROUP_DIVERGE(1, 1)) & (safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u(l_490, 65535UL)), ((((safe_rshift_func_uint16_t_u_s((((safe_lshift_func_uint16_t_u_s(((0x12L >= p_670->g_289) & ((*l_500) ^= (((safe_rshift_func_int8_t_s_u(((*l_503) &= (((*l_501) = (((safe_sub_func_uint16_t_u_u(0x1F7FL, l_295[3][1])) < ((l_499 = l_499) != &l_500)) , (void*)0)) != &p_670->g_247)), p_131)) ^ l_490) | GROUP_DIVERGE(0, 1)))), p_670->g_147[3])) | 9UL) ^ 0UL), p_670->g_163)) >= (-1L)) || 5L) == (**p_134)))), 0L)))) & FAKE_DIVERGE(p_670->global_0_offset, get_global_id(0), 10)), (*p_670->g_240)));
    return l_506;
}


/* ------------------------------------------ */
/* 
 * reads : p_670->g_70 p_670->g_147 p_670->g_104 p_670->g_163 p_670->g_96 p_670->g_196 p_670->g_215 p_670->g_220 p_670->g_240 p_670->g_254 p_670->g_265 p_670->g_221
 * writes: p_670->g_70 p_670->g_87 p_670->g_147 p_670->g_163 p_670->g_193 p_670->g_196 p_670->g_215 p_670->g_221 p_670->g_247 p_670->g_254 p_670->g_265
 */
int32_t ** func_135(int32_t  p_136, int64_t  p_137, int64_t  p_138, struct S1 * p_670)
{ /* block id: 68 */
    uint16_t *l_162 = &p_670->g_163;
    int64_t *l_164 = &p_670->g_70;
    int32_t l_165 = 0x18BD1844L;
    uint8_t l_168 = 0xA4L;
    int32_t l_263 = 0x3BDC9AC4L;
    int32_t **l_268 = (void*)0;
    uint32_t *l_277 = (void*)0;
    uint64_t l_284 = 18446744073709551615UL;
    uint16_t l_285[6][1][10] = {{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}}};
    int32_t *l_286 = &l_263;
    int i, j, k;
    for (p_670->g_70 = 0; (p_670->g_70 > 24); p_670->g_70 = safe_add_func_int16_t_s_s(p_670->g_70, 7))
    { /* block id: 71 */
        int32_t *l_143[2][3][5] = {{{(void*)0,&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{(void*)0,&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{(void*)0,&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}},{{(void*)0,&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{(void*)0,&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96},{(void*)0,&p_670->g_96,&p_670->g_96,&p_670->g_96,&p_670->g_96}}};
        int32_t **l_144 = &p_670->g_87;
        int i, j, k;
        (*l_144) = l_143[0][1][2];
        for (p_137 = 0; (p_137 <= (-7)); p_137--)
        { /* block id: 75 */
            p_670->g_147[2]--;
        }
        if (p_670->g_104)
            break;
    }
    l_165 = (p_137 | ((safe_lshift_func_uint16_t_u_u(((safe_mod_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s((safe_div_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(0x97L, (p_670->g_147[2] < ((*l_162) = p_137)))), (((void*)0 == l_164) , (((~l_165) ^ (safe_sub_func_uint8_t_u_u(((void*)0 == &l_165), (-9L)))) | l_168)))), p_138)), 14)) < p_137), p_670->g_104)) > l_168), 7)) , l_165));
    for (p_136 = 0; (p_136 <= 23); ++p_136)
    { /* block id: 84 */
        int8_t l_171 = 0x05L;
        int32_t l_190 = 0x1554CC1AL;
        int16_t l_207 = 0x4B57L;
        uint16_t *l_245[2];
        int32_t l_260 = (-3L);
        int32_t l_262 = 0x4017785DL;
        int32_t **l_274 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_245[i] = &p_670->g_163;
        if (l_171)
        { /* block id: 85 */
            int32_t l_188 = (-1L);
            uint16_t **l_189[3];
            int64_t *l_191 = (void*)0;
            int64_t *l_192 = &p_670->g_193;
            int32_t l_194 = 5L;
            int32_t *l_195 = &p_670->g_196;
            int i;
            for (i = 0; i < 3; i++)
                l_189[i] = &l_162;
            (*l_195) |= (safe_add_func_int16_t_s_s((safe_mul_func_int8_t_s_s((p_136 >= (safe_mod_func_int32_t_s_s((p_136 >= ((safe_sub_func_int16_t_s_s((p_138 ^ (safe_div_func_uint16_t_u_u(((((safe_mul_func_uint16_t_u_u((l_194 &= (((!p_670->g_163) , p_670->g_70) < ((*l_192) = (safe_lshift_func_uint16_t_u_s(((l_188 = ((((l_190 |= (((((l_171 & (0UL != (l_188 | ((l_162 = l_162) != (void*)0)))) & 1L) , p_136) >= 4294967295UL) , l_171)) | l_165) & 4L) ^ 0xD47DF34B8501F8A6L)) != p_670->g_147[2]), 4))))), p_670->g_104)) == p_670->g_96) , p_138) <= p_137), 0xCEE3L))), 0x04B5L)) > (-3L))), l_171))), FAKE_DIVERGE(p_670->group_1_offset, get_group_id(1), 10))), GROUP_DIVERGE(0, 1)));
            if ((atomic_inc(&p_670->g_atomic_input[95 * get_linear_group_id() + 92]) == 3))
            { /* block id: 93 */
                int32_t l_197 = (-1L);
                for (l_197 = 0; (l_197 <= 3); l_197 += 1)
                { /* block id: 96 */
                    int16_t l_198 = 0x5D48L;
                    uint8_t l_199 = 0xC7L;
                    int i;
                    l_198 = p_670->g_147[l_197];
                    l_199 |= (-3L);
                }
                for (l_197 = (-24); (l_197 == (-20)); l_197 = safe_add_func_int32_t_s_s(l_197, 5))
                { /* block id: 102 */
                    int16_t l_202 = (-8L);
                    uint32_t l_203 = 4294967295UL;
                    uint64_t l_204 = 0xF6942E47CAD9AABCL;
                    l_204 = ((l_202 = 0x590E784B4C2BF4FDL) , l_203);
                }
                unsigned int result = 0;
                result += l_197;
                atomic_add(&p_670->g_special_values[95 * get_linear_group_id() + 92], result);
            }
            else
            { /* block id: 106 */
                (1 + 1);
            }
        }
        else
        { /* block id: 109 */
            uint32_t l_233 = 0xE9527A1DL;
            int32_t l_249 = 0L;
            uint16_t l_257 = 0UL;
            int32_t l_261 = 4L;
            for (l_168 = 0; (l_168 == 22); ++l_168)
            { /* block id: 112 */
                int32_t *l_208 = &l_165;
                uint16_t **l_228 = &p_670->g_221;
                int32_t l_252[5][3][4] = {{{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)}},{{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)}},{{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)}},{{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)}},{{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)},{0x0B477D3BL,0x238DED41L,0x01741E53L,(-1L)}}};
                int i, j, k;
                if ((~0x61DC042FL))
                { /* block id: 113 */
                    int32_t **l_209 = &l_208;
                    uint8_t *l_214 = &p_670->g_215;
                    l_207 = p_670->g_163;
                    (*l_209) = l_208;
                    if ((0x89L > (((safe_mul_func_uint8_t_u_u((++(*l_214)), (GROUP_DIVERGE(2, 1) ^ (~GROUP_DIVERGE(1, 1))))) >= (p_670->g_70 <= (safe_mod_func_int32_t_s_s(1L, FAKE_DIVERGE(p_670->group_2_offset, get_group_id(2), 10))))) == (((((*l_208) , p_670->g_220) != (((safe_lshift_func_uint8_t_u_u(p_137, p_670->g_96)) == (p_670->g_147[3] <= ((safe_lshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u((l_171 , 255UL), p_137)), 1)) | p_137))) , l_228)) , FAKE_DIVERGE(p_670->global_1_offset, get_global_id(1), 10)) != p_136))))
                    { /* block id: 117 */
                        int64_t **l_229[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_229[i] = (void*)0;
                        (**l_209) = ((l_171 , (l_164 = (void*)0)) != &p_137);
                    }
                    else
                    { /* block id: 120 */
                        uint8_t l_230 = 251UL;
                        (*l_208) = (&p_670->g_163 == &p_670->g_163);
                        if (p_670->g_147[0])
                            continue;
                        if (p_137)
                            continue;
                        (*l_208) = l_230;
                    }
                }
                else
                { /* block id: 126 */
                    int16_t l_238 = 0L;
                    uint16_t *l_239 = (void*)0;
                    uint32_t *l_246 = &p_670->g_247;
                    int32_t l_251 = (-3L);
                    int32_t l_253 = 0x0CECDE52L;
                    int32_t **l_273 = &p_670->g_87;
                    if (((0x6039B183L == (safe_sub_func_uint64_t_u_u(((l_233 != (p_137 || (safe_mul_func_int8_t_s_s((safe_sub_func_int32_t_s_s(l_238, 1UL)), (l_239 == ((*l_228) = p_670->g_240)))))) <= ((((*l_246) = (safe_mod_func_uint16_t_u_u((p_670->g_70 == ((((safe_div_func_int64_t_s_s(l_168, p_670->g_147[2])) <= p_670->g_163) , &p_670->g_163) == l_245[1])), GROUP_DIVERGE(0, 1)))) | p_137) , 0xC1L)), p_137))) == 1UL))
                    { /* block id: 129 */
                        int32_t *l_248 = &l_190;
                        int32_t *l_250[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_250[i] = &l_165;
                        ++p_670->g_254;
                        ++l_257;
                        p_670->g_265++;
                        return l_268;
                    }
                    else
                    { /* block id: 134 */
                        int32_t **l_269 = &l_208;
                        int32_t **l_270 = (void*)0;
                        int32_t **l_271 = (void*)0;
                        int32_t **l_272[3][7][1] = {{{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87}},{{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87}},{{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87},{&p_670->g_87}}};
                        int i, j, k;
                        p_670->g_87 = ((*l_269) = &l_261);
                    }
                    (*l_273) = (void*)0;
                }
            }
        }
        return l_274;
    }
    (*l_286) = (safe_mod_func_int64_t_s_s((p_138 < ((((*l_164) = (((((l_277 == l_277) , ((1L && ((p_670->g_254 = p_670->g_147[1]) | (safe_add_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(p_670->g_265, p_136)), (((l_284 | p_138) , (**p_670->g_220)) ^ p_670->g_215))), (**p_670->g_220))))) >= 0x49FE280CDC80C453L)) != p_136) > l_285[3][0][3]) ^ 0xDF3D5DE6A0B4DBACL)) != p_670->g_265) , 18446744073709551610UL)), p_670->g_104));
    return &p_670->g_87;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[95];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 95; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[95];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 95; i++)
            l_special_values[i] = 0;
    struct S1 c_671;
    struct S1* p_670 = &c_671;
    struct S1 c_672 = {
        {4294967295UL,0x52835357L,4294967295UL,4294967295UL,0x52835357L,4294967295UL,4294967295UL}, // p_670->g_11
        0x03C403CBL, // p_670->g_67
        &p_670->g_67, // p_670->g_66
        0x644A59A1FF380447L, // p_670->g_70
        (void*)0, // p_670->g_87
        0x5C9450E8L, // p_670->g_96
        18446744073709551615UL, // p_670->g_104
        {4294967292UL,4294967292UL,4294967292UL,4294967292UL}, // p_670->g_147
        1UL, // p_670->g_163
        0x5EDE0B67276F1C91L, // p_670->g_193
        0x330629C9L, // p_670->g_196
        0xD4L, // p_670->g_215
        &p_670->g_163, // p_670->g_221
        &p_670->g_221, // p_670->g_220
        &p_670->g_163, // p_670->g_240
        4294967286UL, // p_670->g_247
        253UL, // p_670->g_254
        1L, // p_670->g_264
        0x117C768AL, // p_670->g_265
        4L, // p_670->g_289
        0x73BB44A95AFFB80BL, // p_670->g_291
        &p_670->g_291, // p_670->g_290
        &p_670->g_96, // p_670->g_293
        &p_670->g_293, // p_670->g_292
        {0x3DL,0x1EL,0x3DL,0x3DL,0x1EL,0x3DL,0x3DL,0x1EL,0x3DL}, // p_670->g_504
        0x3C243568L, // p_670->g_512
        2UL, // p_670->g_513
        {{{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)}},{{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)}},{{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)}},{{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)}},{{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)}},{{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)}},{{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)}},{{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)}},{{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)},{0x7930L,(-1L)}}}, // p_670->g_518
        1UL, // p_670->g_602
        &p_670->g_221, // p_670->g_613
        1UL, // p_670->g_634
        0x45L, // p_670->g_641
        &p_670->g_518[6][2][1], // p_670->g_651
        &p_670->g_518[6][2][1], // p_670->g_652
        {{0x3383624FL},{1L},{0x78A610BEL},{1L},{0x3383624FL},{0x3383624FL},{1L},{0x78A610BEL},{1L},{0x3383624FL}}, // p_670->g_659
        sequence_input[get_global_id(0)], // p_670->global_0_offset
        sequence_input[get_global_id(1)], // p_670->global_1_offset
        sequence_input[get_global_id(2)], // p_670->global_2_offset
        sequence_input[get_local_id(0)], // p_670->local_0_offset
        sequence_input[get_local_id(1)], // p_670->local_1_offset
        sequence_input[get_local_id(2)], // p_670->local_2_offset
        sequence_input[get_group_id(0)], // p_670->group_0_offset
        sequence_input[get_group_id(1)], // p_670->group_1_offset
        sequence_input[get_group_id(2)], // p_670->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_671 = c_672;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_670);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_670->g_11[i], "p_670->g_11[i]", print_hash_value);

    }
    transparent_crc(p_670->g_67, "p_670->g_67", print_hash_value);
    transparent_crc(p_670->g_70, "p_670->g_70", print_hash_value);
    transparent_crc(p_670->g_96, "p_670->g_96", print_hash_value);
    transparent_crc(p_670->g_104, "p_670->g_104", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_670->g_147[i], "p_670->g_147[i]", print_hash_value);

    }
    transparent_crc(p_670->g_163, "p_670->g_163", print_hash_value);
    transparent_crc(p_670->g_193, "p_670->g_193", print_hash_value);
    transparent_crc(p_670->g_196, "p_670->g_196", print_hash_value);
    transparent_crc(p_670->g_215, "p_670->g_215", print_hash_value);
    transparent_crc(p_670->g_247, "p_670->g_247", print_hash_value);
    transparent_crc(p_670->g_254, "p_670->g_254", print_hash_value);
    transparent_crc(p_670->g_264, "p_670->g_264", print_hash_value);
    transparent_crc(p_670->g_265, "p_670->g_265", print_hash_value);
    transparent_crc(p_670->g_289, "p_670->g_289", print_hash_value);
    transparent_crc(p_670->g_291, "p_670->g_291", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_670->g_504[i], "p_670->g_504[i]", print_hash_value);

    }
    transparent_crc(p_670->g_512, "p_670->g_512", print_hash_value);
    transparent_crc(p_670->g_513, "p_670->g_513", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_670->g_518[i][j][k], "p_670->g_518[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_670->g_602, "p_670->g_602", print_hash_value);
    transparent_crc(p_670->g_634, "p_670->g_634", print_hash_value);
    transparent_crc(p_670->g_641, "p_670->g_641", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_670->g_659[i].f0, "p_670->g_659[i].f0", print_hash_value);

    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 95; i++)
            transparent_crc(p_670->g_special_values[i + 95 * get_linear_group_id()], "p_670->g_special_values[i + 95 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 95; i++)
            transparent_crc(p_670->l_special_values[i], "p_670->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
