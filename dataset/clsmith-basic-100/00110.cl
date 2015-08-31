// ---fake_divergence -g 51,1,139 -l 17,1,1
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


// Seed: 110

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint16_t g_4;
    int32_t g_7;
    volatile uint8_t g_15;
    int32_t g_21;
    int32_t g_22;
    int8_t g_50;
    int8_t g_52;
    int8_t g_63;
    int8_t *g_62;
    int64_t g_117[6];
    uint16_t g_121;
    uint64_t g_131;
    uint32_t g_137;
    int16_t g_144;
    uint8_t g_154[9][3];
    int32_t *g_216;
    uint16_t * volatile *g_251;
    int8_t g_260;
    volatile int64_t *g_281;
    volatile int64_t * volatile *g_280;
    uint64_t g_290[5][5];
    int64_t **g_291[6];
    int32_t g_296;
    uint16_t g_332[10];
    uint8_t g_336;
    int8_t *g_403;
    int32_t g_405;
    int32_t *g_404;
    int16_t g_423;
    uint64_t *g_443;
    int64_t g_446;
    uint16_t *g_474;
    int32_t *g_501;
    uint64_t g_533;
    int8_t g_538;
    int32_t g_539;
    uint16_t g_540[4];
    uint32_t g_606;
    int32_t g_607;
    uint64_t g_663[8][4];
    volatile uint8_t **g_699;
    int64_t g_708[3];
    int64_t g_731;
    volatile uint64_t g_819[9];
    volatile uint64_t *g_818;
    volatile uint64_t **g_817;
    volatile uint64_t *g_854;
    volatile uint64_t * volatile * volatile g_853;
    volatile uint64_t * volatile * volatile *g_852;
    uint64_t ***g_860;
    uint8_t g_884;
    uint64_t ****g_909;
    uint64_t ****g_921;
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
uint64_t  func_1(struct S0 * p_938);
int32_t  func_2(int64_t  p_3, struct S0 * p_938);
uint16_t  func_28(uint8_t  p_29, uint32_t  p_30, int32_t * p_31, int32_t * p_32, int32_t * p_33, struct S0 * p_938);
uint8_t  func_34(int32_t  p_35, uint64_t  p_36, int64_t  p_37, struct S0 * p_938);
int32_t  func_38(int8_t  p_39, int32_t * p_40, int32_t  p_41, uint32_t  p_42, struct S0 * p_938);
uint16_t  func_53(int8_t * p_54, int32_t  p_55, int32_t * p_56, int32_t * p_57, int8_t * p_58, struct S0 * p_938);
int8_t * func_59(int32_t * p_60, struct S0 * p_938);
int8_t * func_64(int32_t * p_65, int32_t * p_66, uint32_t  p_67, int32_t  p_68, struct S0 * p_938);
int32_t * func_69(int8_t * p_70, int8_t * p_71, struct S0 * p_938);
int8_t * func_72(uint16_t  p_73, uint8_t  p_74, int32_t * p_75, struct S0 * p_938);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_938->g_4 p_938->g_15 p_938->g_7 p_938->g_21 p_938->g_62 p_938->g_63 p_938->g_22 p_938->g_117 p_938->g_131 p_938->g_154 p_938->g_144 p_938->g_121 p_938->g_137 p_938->g_251 p_938->g_332 p_938->g_336 p_938->g_296 p_938->g_403 p_938->g_404 p_938->g_260 p_938->g_405 p_938->g_216 p_938->g_446 p_938->g_290 p_938->g_443 p_938->g_501 p_938->g_533 p_938->g_606 p_938->g_474 p_938->g_852 p_938->g_819 p_938->g_539 p_938->g_884 p_938->g_607 p_938->g_538
 * writes: p_938->g_15 p_938->g_7 p_938->g_21 p_938->g_22 p_938->g_50 p_938->g_52 p_938->g_4 p_938->g_121 p_938->g_63 p_938->g_131 p_938->g_137 p_938->g_144 p_938->g_117 p_938->g_154 p_938->g_216 p_938->g_296 p_938->g_423 p_938->g_290 p_938->g_405 p_938->g_443 p_938->g_446 p_938->g_474 p_938->g_260 p_938->g_332 p_938->g_404 p_938->g_533 p_938->g_606 p_938->g_860 p_938->g_539 p_938->g_884 p_938->g_909 p_938->g_607 p_938->g_538 p_938->g_921
 */
uint64_t  func_1(struct S0 * p_938)
{ /* block id: 4 */
    int32_t l_18[1][4] = {{0x061A7160L,0x061A7160L,0x061A7160L,0x061A7160L}};
    int32_t l_459 = 0x26246894L;
    int32_t l_846[1];
    uint16_t *l_863[4] = {&p_938->g_332[1],&p_938->g_332[1],&p_938->g_332[1],&p_938->g_332[1]};
    int32_t **l_937 = &p_938->g_216;
    int i, j;
    for (i = 0; i < 1; i++)
        l_846[i] = 0x7D380367L;
    if (func_2(p_938->g_4, p_938))
    { /* block id: 8 */
        int32_t *l_19 = &p_938->g_7;
        int32_t *l_20[9][3] = {{&l_18[0][1],(void*)0,(void*)0},{&l_18[0][1],(void*)0,(void*)0},{&l_18[0][1],(void*)0,(void*)0},{&l_18[0][1],(void*)0,(void*)0},{&l_18[0][1],(void*)0,(void*)0},{&l_18[0][1],(void*)0,(void*)0},{&l_18[0][1],(void*)0,(void*)0},{&l_18[0][1],(void*)0,(void*)0},{&l_18[0][1],(void*)0,(void*)0}};
        int i, j;
        p_938->g_22 = (p_938->g_21 |= ((*l_19) &= func_2(l_18[0][2], p_938)));
        return p_938->g_15;
    }
    else
    { /* block id: 13 */
        int32_t *l_61 = &p_938->g_22;
        uint64_t *l_851 = &p_938->g_663[6][2];
        uint64_t ****l_908 = (void*)0;
        if (p_938->g_21)
        { /* block id: 14 */
            int32_t l_27 = 0x358509EFL;
            int8_t *l_49 = &p_938->g_50;
            int8_t *l_51 = &p_938->g_52;
            uint16_t l_444 = 0x6E8AL;
            int64_t *l_445 = &p_938->g_446;
            int32_t l_447 = 0x6FBD8A10L;
            int32_t *l_448 = &l_18[0][2];
            uint64_t **l_859[6];
            uint64_t ***l_858 = &l_859[1];
            uint64_t l_915 = 0UL;
            int i;
            for (i = 0; i < 6; i++)
                l_859[i] = &p_938->g_443;
            if ((func_2((safe_sub_func_int8_t_s_s((((l_27 ^= (&l_18[0][1] == (void*)0)) | p_938->g_15) || (((*l_61) = func_28(func_34(func_38((safe_div_func_int64_t_s_s((l_447 &= ((*l_445) ^= (safe_div_func_uint64_t_u_u(((safe_mod_func_uint16_t_u_u(((-7L) | ((*l_51) = ((*l_49) = 0x64L))), func_53(func_59(l_61, p_938), ((l_18[0][2] || 0x0DL) , (-3L)), p_938->g_404, &p_938->g_405, &p_938->g_260, p_938))) == p_938->g_332[4]), l_444)))), 0x0BBCCD9A3C65F823L)), l_448, l_18[0][2], p_938->g_332[4], p_938), p_938->g_332[4], l_459, p_938), p_938->g_336, &l_459, l_448, p_938->g_501, p_938)) < l_846[0])), l_846[0])), p_938) ^ (-1L)))
            { /* block id: 349 */
                uint32_t l_878 = 0x13E46668L;
                for (p_938->g_296 = 0; (p_938->g_296 < (-10)); p_938->g_296 = safe_sub_func_int32_t_s_s(p_938->g_296, 6))
                { /* block id: 352 */
                    uint64_t **l_856 = &p_938->g_443;
                    uint64_t ***l_855 = &l_856;
                    uint64_t ****l_857[4];
                    int32_t l_864 = 1L;
                    int16_t *l_865 = &p_938->g_423;
                    int32_t l_866 = 0x5244A90AL;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_857[i] = (void*)0;
                    (*p_938->g_216) = ((safe_lshift_func_uint16_t_u_u((l_866 ^= ((*p_938->g_216) != (((*p_938->g_474) &= (((l_851 != (void*)0) && (p_938->g_852 != (p_938->g_860 = (l_858 = l_855)))) <= l_18[0][2])) && ((*l_865) = (1UL >= (((0xC996095F42510C72L == (safe_mod_func_uint8_t_u_u((l_863[1] != (void*)0), (*l_448)))) , l_864) && (*l_448))))))), p_938->g_819[6])) , 0x12958BA5L);
                    for (p_938->g_539 = 0; (p_938->g_539 > (-15)); p_938->g_539 = safe_sub_func_int32_t_s_s(p_938->g_539, 9))
                    { /* block id: 361 */
                        int32_t *l_869 = &p_938->g_21;
                        int32_t *l_870 = &p_938->g_22;
                        int32_t *l_871 = &l_18[0][0];
                        int32_t *l_872 = &l_447;
                        int32_t *l_873 = &l_864;
                        int32_t *l_874 = (void*)0;
                        int32_t *l_875 = &l_459;
                        int32_t *l_876 = (void*)0;
                        int32_t *l_877[7][10][3] = {{{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]}},{{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]}},{{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]}},{{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]}},{{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]}},{{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]}},{{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]},{(void*)0,&l_846[0],&l_846[0]}}};
                        int i, j, k;
                        ++l_878;
                    }
                    return l_846[0];
                }
                l_61 = &l_846[0];
            }
            else
            { /* block id: 367 */
                int32_t *l_881 = &l_459;
                int32_t *l_882 = &p_938->g_607;
                int32_t *l_883[7];
                uint8_t *l_904 = (void*)0;
                uint8_t *l_905[4][9][4] = {{{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884}},{{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884}},{{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884}},{{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884},{&p_938->g_154[2][1],&p_938->g_154[2][1],&p_938->g_336,&p_938->g_884}}};
                int16_t l_912 = (-1L);
                int16_t *l_913 = (void*)0;
                int16_t *l_914[1][4][2];
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_883[i] = &p_938->g_296;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 4; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_914[i][j][k] = &l_912;
                    }
                }
                --p_938->g_884;
                (*l_882) &= (safe_add_func_int16_t_s_s((safe_add_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(((((p_938->g_423 = (&p_938->g_281 != ((((((safe_lshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(((*p_938->g_216) == (+(*p_938->g_216))), (safe_unary_minus_func_uint32_t_u((safe_mul_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(((*l_61) > (--p_938->g_884)), 5)), ((((*l_881) |= (*l_448)) < (((p_938->g_909 = l_908) == &l_858) == ((~(((safe_lshift_func_int8_t_s_u((*p_938->g_62), ((*l_61) | 0xEF44L))) , (*l_61)) | 0L)) != 7L))) , (*l_448)))), l_912)))))), 6)) >= (*l_448)) || l_18[0][2]) , 0L) > (*p_938->g_474)) , &l_445))) >= 0x3217L) != (*l_448)) < l_915), (*l_61))), 0x0EL)), 0L));
            }
        }
        else
        { /* block id: 375 */
            uint64_t ****l_918 = (void*)0;
            int32_t l_925[9][5][3] = {{{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)}},{{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)}},{{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)}},{{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)}},{{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)}},{{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)}},{{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)}},{{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)}},{{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)},{0x0B35A648L,0x3A722C47L,(-1L)}}};
            uint32_t **l_932 = (void*)0;
            uint32_t *l_934 = (void*)0;
            uint32_t **l_933 = &l_934;
            int32_t l_936 = 9L;
            int i, j, k;
            for (p_938->g_538 = 0; (p_938->g_538 > (-19)); p_938->g_538--)
            { /* block id: 378 */
                uint64_t *****l_919 = (void*)0;
                uint64_t *****l_920 = &p_938->g_909;
                int32_t l_922 = 0x4AE674A3L;
                int64_t l_935[5][10][5] = {{{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL}},{{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL}},{{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL}},{{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL}},{{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL},{0x790C2D2DF3722078L,0L,0x3BFD4B77ED543428L,9L,0x2454B6711E79942BL}}};
                int i, j, k;
                (*p_938->g_216) = (((*l_920) = l_918) == (p_938->g_921 = &p_938->g_860));
                (*p_938->g_216) = ((18446744073709551615UL >= (l_922 > (~(safe_lshift_func_uint8_t_u_u(l_925[5][2][0], (l_936 |= (8UL && ((safe_mod_func_int32_t_s_s((safe_mod_func_int64_t_s_s((!(((safe_mul_func_int32_t_s_s(l_922, ((*p_938->g_474) > p_938->g_332[1]))) , (l_932 = l_932)) == l_933)), l_935[2][6][0])), p_938->g_21)) | 4294967290UL)))))))) || (*p_938->g_474));
            }
        }
    }
    (*l_937) = (void*)0;
    return l_18[0][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_938->g_15
 * writes: p_938->g_15
 */
int32_t  func_2(int64_t  p_3, struct S0 * p_938)
{ /* block id: 5 */
    int16_t l_5 = 1L;
    int32_t *l_6 = &p_938->g_7;
    int32_t *l_8 = &p_938->g_7;
    int32_t *l_9 = &p_938->g_7;
    int32_t l_10 = 0x1B88146CL;
    int32_t l_11 = 0L;
    int32_t l_12 = 3L;
    int32_t *l_13[10][7][3] = {{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}},{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}},{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}},{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}},{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}},{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}},{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}},{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}},{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}},{{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7},{&p_938->g_7,&l_11,&p_938->g_7}}};
    int8_t l_14 = (-5L);
    int i, j, k;
    --p_938->g_15;
    return p_938->g_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_938->g_131 p_938->g_533 p_938->g_606 p_938->g_474 p_938->g_332
 * writes: p_938->g_131 p_938->g_533 p_938->g_606
 */
uint16_t  func_28(uint8_t  p_29, uint32_t  p_30, int32_t * p_31, int32_t * p_32, int32_t * p_33, struct S0 * p_938)
{ /* block id: 194 */
    uint16_t l_510 = 0x3995L;
    int32_t l_524[5];
    uint64_t *l_583 = &p_938->g_131;
    int32_t *l_588 = &p_938->g_22;
    uint64_t **l_593 = &p_938->g_443;
    uint16_t **l_763 = (void*)0;
    uint32_t l_843[1];
    int i;
    for (i = 0; i < 5; i++)
        l_524[i] = 0x67B2C11FL;
    for (i = 0; i < 1; i++)
        l_843[i] = 0x0BC2DFF3L;
    for (p_30 = 1; (p_30 <= 5); p_30 += 1)
    { /* block id: 197 */
        int32_t *l_502 = &p_938->g_7;
        int32_t *l_503 = &p_938->g_21;
        int32_t *l_504 = &p_938->g_21;
        int32_t *l_505 = &p_938->g_405;
        int32_t *l_506 = (void*)0;
        int32_t *l_507 = &p_938->g_22;
        int32_t *l_508 = &p_938->g_296;
        int32_t *l_509 = &p_938->g_22;
        int64_t l_563 = (-7L);
        uint64_t *l_582 = &p_938->g_131;
        int64_t ***l_600 = &p_938->g_291[2];
        uint16_t l_645 = 2UL;
        int32_t l_667 = 0x1B1B0B05L;
        int32_t l_668 = 7L;
        uint16_t l_685 = 0x95B6L;
        int64_t l_729 = 0x57E5D7DCD104B8FBL;
        int16_t l_741 = 0x0EA3L;
        uint64_t *l_769 = &p_938->g_663[0][3];
        uint64_t **l_768[7][6];
        int32_t l_780 = (-1L);
        int i, j;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 6; j++)
                l_768[i][j] = &l_769;
        }
        --l_510;
        for (p_938->g_131 = 0; (p_938->g_131 <= 5); p_938->g_131 += 1)
        { /* block id: 201 */
            int16_t l_513[9][3][2] = {{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}}};
            int32_t l_514[3];
            int32_t *l_515 = &p_938->g_296;
            int32_t *l_516 = &l_514[0];
            int32_t *l_517 = &p_938->g_21;
            int32_t *l_518 = &p_938->g_405;
            int32_t *l_519 = (void*)0;
            int32_t *l_520 = &l_514[2];
            int32_t *l_521 = &p_938->g_22;
            int32_t *l_522 = (void*)0;
            int32_t *l_523 = &p_938->g_296;
            int32_t *l_525 = &p_938->g_296;
            int32_t *l_526 = &l_514[2];
            int32_t *l_527 = (void*)0;
            int32_t *l_528 = &l_524[4];
            int32_t *l_529 = &l_514[2];
            int32_t *l_530 = &p_938->g_405;
            int32_t *l_531 = &l_524[1];
            int32_t *l_532[1];
            uint16_t *l_549 = (void*)0;
            int64_t *l_658 = &l_563;
            uint64_t l_686 = 18446744073709551615UL;
            int32_t l_727 = 0x4E6AB363L;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_514[i] = 1L;
            for (i = 0; i < 1; i++)
                l_532[i] = &p_938->g_22;
            p_938->g_533++;
        }
        for (p_938->g_606 = 0; (p_938->g_606 <= 5); p_938->g_606 += 1)
        { /* block id: 285 */
            int32_t l_744[1];
            uint8_t *l_749 = &p_938->g_154[2][0];
            int32_t **l_754 = &l_508;
            uint16_t l_794 = 2UL;
            int64_t l_840 = 0x2A320B04B2790B62L;
            int i;
            for (i = 0; i < 1; i++)
                l_744[i] = 0x593AA026L;
            (1 + 1);
        }
    }
    l_843[0]++;
    return (*p_938->g_474);
}


/* ------------------------------------------ */
/* 
 * reads : p_938->g_404 p_938->g_403 p_938->g_332 p_938->g_7 p_938->g_216 p_938->g_21 p_938->g_63 p_938->g_260 p_938->g_117 p_938->g_443
 * writes: p_938->g_405 p_938->g_474 p_938->g_260 p_938->g_332 p_938->g_404 p_938->g_21 p_938->g_290
 */
uint8_t  func_34(int32_t  p_35, uint64_t  p_36, int64_t  p_37, struct S0 * p_938)
{ /* block id: 180 */
    int64_t l_466 = 0x4CB5FBA18F8FC29FL;
    uint16_t *l_467 = &p_938->g_4;
    uint16_t **l_468 = &l_467;
    uint16_t *l_470 = (void*)0;
    uint16_t **l_469 = &l_470;
    uint16_t *l_471 = (void*)0;
    uint16_t **l_472 = (void*)0;
    uint16_t **l_473 = &l_471;
    uint16_t *l_481 = &p_938->g_332[4];
    int32_t *l_490[5];
    int i;
    for (i = 0; i < 5; i++)
        l_490[i] = &p_938->g_22;
    (*p_938->g_404) = p_35;
    (*p_938->g_404) = (safe_lshift_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s((1L >= (l_466 != p_36)), 2)) != (((*l_468) = l_467) == ((*l_469) = &p_938->g_332[6]))), (l_466 <= ((*l_481) ^= ((((*l_473) = l_471) == (p_938->g_474 = &p_938->g_332[2])) <= (safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s(((*p_938->g_403) = (-1L)), p_37)), l_466)), GROUP_DIVERGE(0, 1))))))));
    (*p_938->g_216) = ((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u((l_490[1] != (p_938->g_404 = &p_35)), (p_938->g_7 > (*p_938->g_216)))) || p_938->g_63), 7)), (safe_add_func_int8_t_s_s(((*p_938->g_403) & (safe_add_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(p_938->g_117[4], p_36)), (safe_add_func_int32_t_s_s(0x24D8FAABL, 0x9F792B43L))))), 0xA4L)))), p_37)) | p_36);
    (*p_938->g_404) = (safe_mul_func_int8_t_s_s((((*p_938->g_443) = GROUP_DIVERGE(0, 1)) <= p_36), p_36));
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_938->g_144 p_938->g_446 p_938->g_290 p_938->g_216 p_938->g_404 p_938->g_405
 * writes: p_938->g_144 p_938->g_21
 */
int32_t  func_38(int8_t  p_39, int32_t * p_40, int32_t  p_41, uint32_t  p_42, struct S0 * p_938)
{ /* block id: 175 */
    uint64_t l_453 = 0xD29AF9E6DFDBE9A7L;
    uint8_t l_456 = 0UL;
    (*p_40) = (((((*p_938->g_216) = ((((safe_sub_func_int16_t_s_s(p_42, ((FAKE_DIVERGE(p_938->local_1_offset, get_local_id(1), 10) ^ (((*p_40) , FAKE_DIVERGE(p_938->global_0_offset, get_global_id(0), 10)) > (safe_add_func_int8_t_s_s(((0x56L < l_453) < (safe_div_func_uint16_t_u_u(((l_456 ^ ((((safe_mod_func_int8_t_s_s(0x25L, 0x70L)) , (p_938->g_144 |= l_456)) ^ (l_456 == l_456)) >= 1L)) , 65535UL), l_456))), p_938->g_446)))) || p_938->g_290[0][1]))) & l_453) < l_456) < 1L)) || p_41) , 1L) ^ p_39);
    return (*p_938->g_404);
}


/* ------------------------------------------ */
/* 
 * reads : p_938->g_260 p_938->g_154 p_938->g_63 p_938->g_117 p_938->g_131 p_938->g_405 p_938->g_332 p_938->g_62 p_938->g_22 p_938->g_216 p_938->g_21
 * writes: p_938->g_144 p_938->g_423 p_938->g_290 p_938->g_405 p_938->g_63 p_938->g_443 p_938->g_21
 */
uint16_t  func_53(int8_t * p_54, int32_t  p_55, int32_t * p_56, int32_t * p_57, int8_t * p_58, struct S0 * p_938)
{ /* block id: 157 */
    int32_t l_408 = 0x5E9C9AC9L;
    int32_t l_419 = 0x0EDC463AL;
    int16_t *l_420 = (void*)0;
    int16_t *l_421 = &p_938->g_144;
    int16_t *l_422 = &p_938->g_423;
    int32_t l_424 = 0x09982225L;
    int32_t l_425[8][4][6] = {{{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L}},{{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L}},{{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L}},{{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L}},{{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L}},{{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L}},{{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L}},{{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L},{0x4AABBD9FL,0x2CE364C1L,6L,0x2CE364C1L,0x4AABBD9FL,1L}}};
    uint64_t *l_442 = &p_938->g_290[2][2];
    int i, j, k;
    (*p_57) &= ((l_425[3][0][0] = (safe_add_func_int32_t_s_s((((l_408 < (*p_58)) == ((void*)0 != &p_938->g_62)) ^ (((p_938->g_290[2][1] = ((((18446744073709551609UL != (((((safe_sub_func_int64_t_s_s(((((*l_422) = ((*l_421) = ((l_408 <= (((l_408 , (safe_mod_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u((l_419 ^= (safe_mod_func_int16_t_s_s(((7L < p_938->g_154[3][0]) , (-6L)), 0x3340L))), GROUP_DIVERGE(0, 1))), l_408)), 0x11L))) != p_938->g_63) & l_408)) , l_419))) || p_938->g_117[0]) , l_419), l_424)) ^ FAKE_DIVERGE(p_938->group_2_offset, get_group_id(2), 10)) || p_938->g_131) , l_408) , 0L)) && p_55) != p_938->g_117[1]) == GROUP_DIVERGE(0, 1))) == 0x93BD8DBAC78C2EEBL) < (-1L))), 0x13C404A4L))) ^ 0x7E9FE5C63CD88CE5L);
    for (l_424 = 9; (l_424 >= 1); l_424 -= 1)
    { /* block id: 166 */
        int64_t *l_433 = &p_938->g_117[4];
        int64_t **l_432 = &l_433;
        int i;
        (*p_57) = ((safe_mod_func_uint32_t_u_u(0x16CDF28EL, (safe_lshift_func_int8_t_s_u(((*p_938->g_62) = p_938->g_332[l_424]), 7)))) , (p_938->g_332[l_424] , (safe_div_func_uint8_t_u_u(((l_432 == &l_433) ^ p_938->g_332[l_424]), FAKE_DIVERGE(p_938->group_1_offset, get_group_id(1), 10)))));
    }
    (*p_938->g_216) ^= ((*p_58) | (0xD03AL < (safe_sub_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(p_55, ((safe_rshift_func_int8_t_s_u(((*p_58) < (safe_rshift_func_uint8_t_u_u(((((p_55 , ((p_55 , (((((*p_58) < ((((p_938->g_443 = l_442) == (void*)0) & p_55) >= l_425[2][1][4])) , l_425[3][0][0]) == p_55) >= p_55)) >= p_938->g_117[1])) , l_425[3][0][0]) >= 0UL) , 0x57L), FAKE_DIVERGE(p_938->global_1_offset, get_global_id(1), 10)))), l_424)) , p_938->g_22))), l_424))));
    return p_55;
}


/* ------------------------------------------ */
/* 
 * reads : p_938->g_62 p_938->g_63 p_938->g_7 p_938->g_4 p_938->g_22 p_938->g_117 p_938->g_131 p_938->g_154 p_938->g_144 p_938->g_121 p_938->g_137 p_938->g_21 p_938->g_251 p_938->g_332 p_938->g_336 p_938->g_296 p_938->g_403
 * writes: p_938->g_4 p_938->g_121 p_938->g_63 p_938->g_131 p_938->g_137 p_938->g_144 p_938->g_117 p_938->g_154 p_938->g_7 p_938->g_21 p_938->g_216 p_938->g_22 p_938->g_296
 */
int8_t * func_59(int32_t * p_60, struct S0 * p_938)
{ /* block id: 18 */
    uint16_t *l_78 = &p_938->g_4;
    int32_t l_79 = 0x0BDC662BL;
    int8_t *l_259 = &p_938->g_260;
    int32_t *l_271 = &p_938->g_22;
    int8_t **l_364 = &l_259;
    int8_t *l_366 = &p_938->g_260;
    int8_t **l_365 = &l_366;
    int32_t l_367 = (-4L);
    int32_t l_368 = (-6L);
    int64_t *l_382 = &p_938->g_117[1];
    int32_t *l_395[2][4][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    uint32_t l_396[7];
    uint16_t l_397 = 0x4D1DL;
    int64_t l_398[1][5] = {{(-9L),(-9L),(-9L),(-9L),(-9L)}};
    uint32_t l_399[6][9] = {{1UL,0xD01D6342L,0xD01D6342L,1UL,4294967289UL,0x7D9DF517L,0x7D9DF517L,4294967289UL,1UL},{1UL,0xD01D6342L,0xD01D6342L,1UL,4294967289UL,0x7D9DF517L,0x7D9DF517L,4294967289UL,1UL},{1UL,0xD01D6342L,0xD01D6342L,1UL,4294967289UL,0x7D9DF517L,0x7D9DF517L,4294967289UL,1UL},{1UL,0xD01D6342L,0xD01D6342L,1UL,4294967289UL,0x7D9DF517L,0x7D9DF517L,4294967289UL,1UL},{1UL,0xD01D6342L,0xD01D6342L,1UL,4294967289UL,0x7D9DF517L,0x7D9DF517L,4294967289UL,1UL},{1UL,0xD01D6342L,0xD01D6342L,1UL,4294967289UL,0x7D9DF517L,0x7D9DF517L,4294967289UL,1UL}};
    int16_t l_400 = 0x1EF7L;
    uint64_t l_401 = 18446744073709551610UL;
    uint32_t l_402[5] = {0x99F96800L,0x99F96800L,0x99F96800L,0x99F96800L,0x99F96800L};
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_396[i] = 4294967295UL;
    l_368 |= (((((p_938->g_62 == ((*l_365) = ((*l_364) = func_64(func_69(func_72(((*l_78) = (0UL < (p_938->g_63 , (safe_lshift_func_int16_t_s_s(p_938->g_7, 8))))), l_79, &l_79, p_938), (l_259 = p_938->g_62), p_938), l_271, (*l_271), p_938->g_22, p_938)))) > l_367) , 0x1650826CL) , (void*)0) != &l_367);
    p_938->g_296 &= (safe_mod_func_uint64_t_u_u(((safe_add_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(((~(+(safe_sub_func_uint8_t_u_u(((((*l_271) = (safe_mod_func_uint64_t_u_u((safe_div_func_uint32_t_u_u(((FAKE_DIVERGE(p_938->group_2_offset, get_group_id(2), 10) ^ ((*l_382) |= (safe_unary_minus_func_uint8_t_u(GROUP_DIVERGE(0, 1))))) | 0x8DL), p_938->g_21)), 0xAB4210B8C5502451L))) >= (18446744073709551606UL || (safe_lshift_func_uint16_t_u_u(((safe_mod_func_uint16_t_u_u(((*l_78) = (safe_mul_func_int16_t_s_s((p_938->g_144 = (((safe_mod_func_uint64_t_u_u(p_938->g_332[7], ((safe_lshift_func_int8_t_s_s((safe_div_func_int8_t_s_s((*p_938->g_62), (l_367 | ((l_395[1][2][0] != &p_938->g_7) && l_396[0])))), 2)) , l_397))) & l_398[0][4]) <= 4294967292UL)), p_938->g_131))), p_938->g_332[3])) , FAKE_DIVERGE(p_938->global_2_offset, get_global_id(2), 10)), 2)))) >= l_399[1][5]), l_400)))) != p_938->g_131), p_938->g_336)) , (*l_271)), 1L)) , l_401), l_402[4]));
    return p_938->g_403;
}


/* ------------------------------------------ */
/* 
 * reads : p_938->g_21 p_938->g_22
 * writes: p_938->g_21 p_938->g_22
 */
int8_t * func_64(int32_t * p_65, int32_t * p_66, uint32_t  p_67, int32_t  p_68, struct S0 * p_938)
{ /* block id: 87 */
    int16_t *l_278[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_299 = 0x166DBC2BL;
    uint32_t l_350 = 0x6E493B48L;
    int i;
    for (p_938->g_21 = (-7); (p_938->g_21 >= 3); p_938->g_21 = safe_add_func_uint32_t_u_u(p_938->g_21, 9))
    { /* block id: 90 */
        uint16_t *l_276 = &p_938->g_121;
        int8_t **l_298[4];
        uint64_t *l_331 = &p_938->g_131;
        int32_t l_333 = (-1L);
        int32_t l_347 = 4L;
        int32_t l_348 = 0x35AA4449L;
        int32_t l_349 = 7L;
        int i;
        for (i = 0; i < 4; i++)
            l_298[i] = &p_938->g_62;
        for (p_938->g_22 = 0; (p_938->g_22 >= 27); p_938->g_22 = safe_add_func_uint8_t_u_u(p_938->g_22, 7))
        { /* block id: 93 */
            uint16_t **l_277 = &l_276;
            uint64_t *l_279 = &p_938->g_131;
            int32_t l_297[2];
            int8_t *l_340 = &p_938->g_63;
            int16_t *l_362[9][1][3] = {{{&p_938->g_144,&p_938->g_144,&p_938->g_144}},{{&p_938->g_144,&p_938->g_144,&p_938->g_144}},{{&p_938->g_144,&p_938->g_144,&p_938->g_144}},{{&p_938->g_144,&p_938->g_144,&p_938->g_144}},{{&p_938->g_144,&p_938->g_144,&p_938->g_144}},{{&p_938->g_144,&p_938->g_144,&p_938->g_144}},{{&p_938->g_144,&p_938->g_144,&p_938->g_144}},{{&p_938->g_144,&p_938->g_144,&p_938->g_144}},{{&p_938->g_144,&p_938->g_144,&p_938->g_144}}};
            int32_t *l_363 = &l_297[1];
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_297[i] = 0L;
            (1 + 1);
        }
    }
    l_299 = (-5L);
    return &p_938->g_63;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_938->g_216
 */
int32_t * func_69(int8_t * p_70, int8_t * p_71, struct S0 * p_938)
{ /* block id: 83 */
    int32_t *l_261 = (void*)0;
    int32_t *l_262 = (void*)0;
    int32_t *l_263 = &p_938->g_21;
    int32_t *l_264 = (void*)0;
    int32_t *l_265[3];
    uint16_t l_266[6] = {65533UL,0xFC42L,65533UL,65533UL,0xFC42L,65533UL};
    int32_t **l_269[5][9][3] = {{{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261}},{{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261}},{{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261}},{{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261}},{{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261},{&l_264,&l_265[2],&l_261}}};
    int32_t *l_270 = &p_938->g_7;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_265[i] = &p_938->g_22;
    ++l_266[0];
    p_938->g_216 = &p_938->g_21;
    return l_270;
}


/* ------------------------------------------ */
/* 
 * reads : p_938->g_4 p_938->g_22 p_938->g_7 p_938->g_62 p_938->g_63 p_938->g_117 p_938->g_131 p_938->g_154 p_938->g_144 p_938->g_121 p_938->g_137 p_938->g_21 p_938->g_251
 * writes: p_938->g_4 p_938->g_121 p_938->g_63 p_938->g_131 p_938->g_137 p_938->g_144 p_938->g_117 p_938->g_154 p_938->g_7 p_938->g_21 p_938->g_216
 */
int8_t * func_72(uint16_t  p_73, uint8_t  p_74, int32_t * p_75, struct S0 * p_938)
{ /* block id: 20 */
    int8_t *l_82 = &p_938->g_63;
    uint16_t *l_83 = (void*)0;
    uint16_t *l_84 = &p_938->g_4;
    int32_t l_101 = 3L;
    int32_t l_106 = 0x3AECBAC1L;
    uint32_t l_113 = 0x0B6AD74AL;
    int32_t *l_114 = (void*)0;
    int32_t *l_115[3];
    int64_t l_116[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    uint16_t *l_118 = (void*)0;
    uint16_t *l_119 = (void*)0;
    uint16_t *l_120 = &p_938->g_121;
    int64_t l_122 = (-9L);
    int8_t l_123[5];
    uint64_t *l_130 = &p_938->g_131;
    uint64_t l_180 = 0xDDE06F248DD3C908L;
    int8_t *l_199 = (void*)0;
    uint32_t *l_221 = &p_938->g_137;
    uint8_t l_226 = 0UL;
    int64_t *l_227 = &p_938->g_117[4];
    uint32_t l_249[1];
    uint64_t l_250 = 1UL;
    int8_t *l_258[2];
    int i;
    for (i = 0; i < 3; i++)
        l_115[i] = &p_938->g_22;
    for (i = 0; i < 5; i++)
        l_123[i] = 0x36L;
    for (i = 0; i < 1; i++)
        l_249[i] = 1UL;
    for (i = 0; i < 2; i++)
        l_258[i] = &l_123[1];
    l_123[4] = (safe_div_func_uint16_t_u_u((!(GROUP_DIVERGE(0, 1) > (l_82 == (((*p_938->g_62) = (((--(*l_84)) >= (safe_div_func_int8_t_s_s(((safe_div_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(((((*l_120) = ((((((safe_mul_func_int16_t_s_s((((safe_add_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s((safe_div_func_int8_t_s_s((l_101 | (safe_sub_func_int64_t_s_s(((((*p_75) |= (safe_mod_func_uint32_t_u_u(0x35C0EDEAL, l_106))) & (l_116[1] = (l_106 || ((safe_div_func_uint32_t_u_u((p_938->g_22 <= ((safe_div_func_int8_t_s_s(((((safe_mul_func_uint8_t_u_u(p_73, ((&l_101 == (void*)0) != 0x21EFL))) >= 0x75DB90C3L) == p_938->g_22) && l_101), 0xDBL)) & 0x5949L)), l_113)) | 0x47C6L)))) <= 0xFA26B9DDBBE02B32L), GROUP_DIVERGE(2, 1)))), (-1L))), p_938->g_7)), p_74)) != 0xCE927CFDL) <= FAKE_DIVERGE(p_938->local_0_offset, get_local_id(0), 10)), p_73)) , (void*)0) != (void*)0) , (*p_938->g_62)) || p_938->g_117[1]) , p_73)) || p_938->g_117[4]) , FAKE_DIVERGE(p_938->local_1_offset, get_local_id(1), 10)), (-8L))), (*p_938->g_62))) , p_73), 0x18L))) > 18446744073709551615UL)) , l_82)))), l_122));
    if ((safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s((((*l_130) = 1UL) <= 0x46699B53D0E5225BL), (((&l_123[4] != (void*)0) > (p_73 , ((*l_120) = p_938->g_22))) >= ((void*)0 != &p_938->g_4)))), ((void*)0 == &p_938->g_21))), p_938->g_117[1])))
    { /* block id: 29 */
        uint32_t *l_136[7][1] = {{&l_113},{&l_113},{&l_113},{&l_113},{&l_113},{&l_113},{&l_113}};
        uint64_t *l_140[3][3] = {{&p_938->g_131,&p_938->g_131,&p_938->g_131},{&p_938->g_131,&p_938->g_131,&p_938->g_131},{&p_938->g_131,&p_938->g_131,&p_938->g_131}};
        int16_t *l_143 = &p_938->g_144;
        int32_t l_145 = (-1L);
        int i, j;
        (*p_75) = p_938->g_22;
        (*p_75) = (safe_mul_func_uint16_t_u_u(0x9B0EL, (safe_add_func_int8_t_s_s(((l_145 &= (((*l_143) = ((0UL == (p_938->g_137 = p_73)) , (safe_div_func_uint64_t_u_u((l_140[1][2] == l_130), (--(*l_130)))))) >= p_73)) || (((p_73 <= ((p_938->g_117[1] = ((safe_sub_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u((((void*)0 == &l_123[0]) && (-4L)), p_73)), (*p_75))) > p_938->g_7)) , p_74)) & 0L) < p_73)), p_73))));
    }
    else
    { /* block id: 37 */
        int32_t **l_150 = &l_115[2];
        int32_t l_151 = (-4L);
        int32_t l_152 = 0x4A0F1938L;
        int32_t l_153 = 0x61EFC347L;
        uint32_t *l_168 = &l_113;
        uint32_t *l_169 = &p_938->g_137;
        uint64_t l_196 = 0xEA293CA1DE74A5FEL;
        uint16_t *l_197 = &p_938->g_121;
        uint16_t **l_198 = &l_83;
        (*l_150) = p_75;
        if (p_938->g_22)
            goto lbl_157;
lbl_157:
        --p_938->g_154[2][1];
        p_938->g_7 |= (safe_sub_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s((p_73 <= (((*l_169) = (safe_mod_func_uint32_t_u_u(p_938->g_144, ((*l_168) = 0x4FFB4B72L)))) <= (((p_938->g_121 , (((p_74 <= (!0xF402L)) > ((p_74 && (p_938->g_154[2][1] | (safe_add_func_int64_t_s_s((FAKE_DIVERGE(p_938->global_0_offset, get_global_id(0), 10) >= 0x4AL), FAKE_DIVERGE(p_938->local_2_offset, get_local_id(2), 10))))) >= p_938->g_144)) >= p_73)) || 0x16BE7C8CA683B8F3L) , (**l_150)))), 2)), p_73)), p_938->g_63));
        if ((safe_add_func_int8_t_s_s((((*l_130)++) != ((*p_938->g_62) != ((safe_div_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(((((((p_938->g_137 || l_180) || ((void*)0 == &p_75)) >= ((safe_add_func_int8_t_s_s((*p_938->g_62), (safe_sub_func_uint32_t_u_u((safe_unary_minus_func_uint16_t_u((safe_add_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((safe_add_func_int8_t_s_s((safe_add_func_int64_t_s_s(p_74, (l_196 <= (((*l_198) = l_197) != &p_73)))), p_74)), p_938->g_21)) , 5UL), p_938->g_22)))), (**l_150))))) , 0x4A42L)) , (**l_150)) != 0x81L) || (**l_150)), p_74)), (-9L))) | GROUP_DIVERGE(1, 1)))), p_74)))
        { /* block id: 46 */
            return l_199;
        }
        else
        { /* block id: 48 */
            uint32_t l_210[9][10][2] = {{{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL}},{{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL}},{{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL}},{{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL}},{{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL}},{{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL}},{{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL}},{{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL}},{{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL},{0x76ED50CFL,4294967289UL}}};
            int16_t *l_211 = &p_938->g_144;
            int i, j, k;
            p_938->g_21 &= ((*p_75) |= ((((0x9AL || (*p_938->g_62)) ^ (safe_sub_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u(((*l_120) = FAKE_DIVERGE(p_938->group_2_offset, get_group_id(2), 10)), 65535UL)) | (!(safe_lshift_func_uint8_t_u_u(p_74, 4)))), 0x9FL)), (p_938->g_63 >= ((*l_211) = ((p_938->g_7 , (((0x4DL | (0x40DFC3A3L > l_210[4][9][1])) , p_938->g_117[4]) || p_73)) >= FAKE_DIVERGE(p_938->group_0_offset, get_group_id(0), 10))))))) < l_210[4][1][1]) >= p_74));
            return &p_938->g_63;
        }
    }
    if ((safe_lshift_func_uint16_t_u_u(((((p_74 > ((p_938->g_117[1] , ((safe_lshift_func_int8_t_s_u(((p_75 = (p_938->g_216 = (void*)0)) == (void*)0), GROUP_DIVERGE(1, 1))) >= (safe_mod_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(((*l_221) = 0xE4FC8B53L), (((p_74 & ((*l_227) = (((safe_div_func_uint16_t_u_u(((*l_120) = ((safe_rshift_func_uint16_t_u_s(65532UL, (4L || l_226))) , p_73)), p_938->g_154[6][0])) , 7L) > p_938->g_4))) ^ 0x28L) , p_938->g_21))), p_74)))) <= p_74)) ^ 0x4B5586E65512604FL) , 0x492071BF1117703BL) == 0x5AC3371AC1D68438L), GROUP_DIVERGE(1, 1))))
    { /* block id: 61 */
        int8_t l_242 = 0x4EL;
        if ((+p_938->g_21))
        { /* block id: 62 */
            int32_t **l_228 = &l_114;
            (*l_228) = &p_938->g_21;
            for (p_938->g_121 = 0; p_938->g_121 < 6; p_938->g_121 += 1)
            {
                p_938->g_117[p_938->g_121] = 0x224E523F6A8D8B00L;
            }
        }
        else
        { /* block id: 65 */
            int16_t *l_241[6] = {&p_938->g_144,&p_938->g_144,&p_938->g_144,&p_938->g_144,&p_938->g_144,&p_938->g_144};
            uint8_t *l_245 = &p_938->g_154[4][1];
            int8_t *l_248 = &l_123[0];
            int32_t l_252 = 1L;
            int i;
            l_252 ^= (((*l_227) = (safe_div_func_uint8_t_u_u(p_73, p_938->g_117[1]))) && (((l_250 |= ((safe_rshift_func_uint16_t_u_s((((((0x22DDA9A1L && (safe_mul_func_int8_t_s_s((!(*p_938->g_62)), (safe_div_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((p_938->g_144 , ((p_938->g_144 ^= p_73) != l_242)), (safe_rshift_func_uint16_t_u_s((((*l_245)--) && (*p_938->g_62)), 13)))), ((*l_248) = ((p_938->g_137 , FAKE_DIVERGE(p_938->global_2_offset, get_global_id(2), 10)) >= p_938->g_131)))) | p_938->g_121), p_938->g_4))))) < p_938->g_131) != l_249[0]) , l_242) <= p_938->g_4), p_938->g_137)) >= 0xF8L)) , (void*)0) != p_938->g_251));
        }
    }
    else
    { /* block id: 73 */
        for (l_250 = 0; (l_250 < 60); l_250++)
        { /* block id: 76 */
            int8_t *l_255 = &l_123[4];
            int8_t **l_256 = &l_199;
            int32_t l_257 = 0x7E73FD26L;
            l_257 = ((65535UL & (l_255 != ((*l_256) = &l_123[3]))) , p_73);
        }
    }
    return &p_938->g_63;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S0 c_939;
    struct S0* p_938 = &c_939;
    struct S0 c_940 = {
        0x1621L, // p_938->g_4
        0x5A60D005L, // p_938->g_7
        255UL, // p_938->g_15
        (-9L), // p_938->g_21
        0x43167647L, // p_938->g_22
        0x74L, // p_938->g_50
        0x32L, // p_938->g_52
        (-10L), // p_938->g_63
        &p_938->g_63, // p_938->g_62
        {0x3F1C15673F556C05L,1L,0x3F1C15673F556C05L,0x3F1C15673F556C05L,1L,0x3F1C15673F556C05L}, // p_938->g_117
        9UL, // p_938->g_121
        0x51574812A85F4667L, // p_938->g_131
        0xDA0945A8L, // p_938->g_137
        (-1L), // p_938->g_144
        {{0x59L,0x75L,0x9CL},{0x59L,0x75L,0x9CL},{0x59L,0x75L,0x9CL},{0x59L,0x75L,0x9CL},{0x59L,0x75L,0x9CL},{0x59L,0x75L,0x9CL},{0x59L,0x75L,0x9CL},{0x59L,0x75L,0x9CL},{0x59L,0x75L,0x9CL}}, // p_938->g_154
        &p_938->g_22, // p_938->g_216
        (void*)0, // p_938->g_251
        1L, // p_938->g_260
        (void*)0, // p_938->g_281
        &p_938->g_281, // p_938->g_280
        {{0UL,0x7F71887038CBDFFCL,0x3D53795DC2F38453L,0xB8584F748EBBB277L,0x7F71887038CBDFFCL},{0UL,0x7F71887038CBDFFCL,0x3D53795DC2F38453L,0xB8584F748EBBB277L,0x7F71887038CBDFFCL},{0UL,0x7F71887038CBDFFCL,0x3D53795DC2F38453L,0xB8584F748EBBB277L,0x7F71887038CBDFFCL},{0UL,0x7F71887038CBDFFCL,0x3D53795DC2F38453L,0xB8584F748EBBB277L,0x7F71887038CBDFFCL},{0UL,0x7F71887038CBDFFCL,0x3D53795DC2F38453L,0xB8584F748EBBB277L,0x7F71887038CBDFFCL}}, // p_938->g_290
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_938->g_291
        0L, // p_938->g_296
        {65535UL,0xEDCAL,65535UL,65535UL,0xEDCAL,65535UL,65535UL,0xEDCAL,65535UL,65535UL}, // p_938->g_332
        0x22L, // p_938->g_336
        &p_938->g_260, // p_938->g_403
        1L, // p_938->g_405
        &p_938->g_405, // p_938->g_404
        6L, // p_938->g_423
        &p_938->g_290[2][3], // p_938->g_443
        0L, // p_938->g_446
        &p_938->g_121, // p_938->g_474
        (void*)0, // p_938->g_501
        0xF7C589CC45F54343L, // p_938->g_533
        (-1L), // p_938->g_538
        0x6298B7EFL, // p_938->g_539
        {0x5F53L,0x5F53L,0x5F53L,0x5F53L}, // p_938->g_540
        0xBC8AD2DDL, // p_938->g_606
        1L, // p_938->g_607
        {{0UL,0UL,0xD008FD666DD0E0FFL,0x97FC4F5FDAC4D998L},{0UL,0UL,0xD008FD666DD0E0FFL,0x97FC4F5FDAC4D998L},{0UL,0UL,0xD008FD666DD0E0FFL,0x97FC4F5FDAC4D998L},{0UL,0UL,0xD008FD666DD0E0FFL,0x97FC4F5FDAC4D998L},{0UL,0UL,0xD008FD666DD0E0FFL,0x97FC4F5FDAC4D998L},{0UL,0UL,0xD008FD666DD0E0FFL,0x97FC4F5FDAC4D998L},{0UL,0UL,0xD008FD666DD0E0FFL,0x97FC4F5FDAC4D998L},{0UL,0UL,0xD008FD666DD0E0FFL,0x97FC4F5FDAC4D998L}}, // p_938->g_663
        (void*)0, // p_938->g_699
        {(-1L),(-1L),(-1L)}, // p_938->g_708
        0x59956A99F2DA1CE1L, // p_938->g_731
        {0x2435A5734FE30667L,0x25CE2D40AA2A8B59L,0x2435A5734FE30667L,0x2435A5734FE30667L,0x25CE2D40AA2A8B59L,0x2435A5734FE30667L,0x2435A5734FE30667L,0x25CE2D40AA2A8B59L,0x2435A5734FE30667L}, // p_938->g_819
        &p_938->g_819[5], // p_938->g_818
        &p_938->g_818, // p_938->g_817
        (void*)0, // p_938->g_854
        &p_938->g_854, // p_938->g_853
        &p_938->g_853, // p_938->g_852
        (void*)0, // p_938->g_860
        255UL, // p_938->g_884
        &p_938->g_860, // p_938->g_909
        &p_938->g_860, // p_938->g_921
        sequence_input[get_global_id(0)], // p_938->global_0_offset
        sequence_input[get_global_id(1)], // p_938->global_1_offset
        sequence_input[get_global_id(2)], // p_938->global_2_offset
        sequence_input[get_local_id(0)], // p_938->local_0_offset
        sequence_input[get_local_id(1)], // p_938->local_1_offset
        sequence_input[get_local_id(2)], // p_938->local_2_offset
        sequence_input[get_group_id(0)], // p_938->group_0_offset
        sequence_input[get_group_id(1)], // p_938->group_1_offset
        sequence_input[get_group_id(2)], // p_938->group_2_offset
    };
    c_939 = c_940;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_938);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_938->g_4, "p_938->g_4", print_hash_value);
    transparent_crc(p_938->g_7, "p_938->g_7", print_hash_value);
    transparent_crc(p_938->g_15, "p_938->g_15", print_hash_value);
    transparent_crc(p_938->g_21, "p_938->g_21", print_hash_value);
    transparent_crc(p_938->g_22, "p_938->g_22", print_hash_value);
    transparent_crc(p_938->g_50, "p_938->g_50", print_hash_value);
    transparent_crc(p_938->g_52, "p_938->g_52", print_hash_value);
    transparent_crc(p_938->g_63, "p_938->g_63", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_938->g_117[i], "p_938->g_117[i]", print_hash_value);

    }
    transparent_crc(p_938->g_121, "p_938->g_121", print_hash_value);
    transparent_crc(p_938->g_131, "p_938->g_131", print_hash_value);
    transparent_crc(p_938->g_137, "p_938->g_137", print_hash_value);
    transparent_crc(p_938->g_144, "p_938->g_144", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_938->g_154[i][j], "p_938->g_154[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_938->g_260, "p_938->g_260", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_938->g_290[i][j], "p_938->g_290[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_938->g_296, "p_938->g_296", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_938->g_332[i], "p_938->g_332[i]", print_hash_value);

    }
    transparent_crc(p_938->g_336, "p_938->g_336", print_hash_value);
    transparent_crc(p_938->g_405, "p_938->g_405", print_hash_value);
    transparent_crc(p_938->g_423, "p_938->g_423", print_hash_value);
    transparent_crc(p_938->g_446, "p_938->g_446", print_hash_value);
    transparent_crc(p_938->g_533, "p_938->g_533", print_hash_value);
    transparent_crc(p_938->g_538, "p_938->g_538", print_hash_value);
    transparent_crc(p_938->g_539, "p_938->g_539", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_938->g_540[i], "p_938->g_540[i]", print_hash_value);

    }
    transparent_crc(p_938->g_606, "p_938->g_606", print_hash_value);
    transparent_crc(p_938->g_607, "p_938->g_607", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_938->g_663[i][j], "p_938->g_663[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_938->g_708[i], "p_938->g_708[i]", print_hash_value);

    }
    transparent_crc(p_938->g_731, "p_938->g_731", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_938->g_819[i], "p_938->g_819[i]", print_hash_value);

    }
    transparent_crc(p_938->g_884, "p_938->g_884", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
