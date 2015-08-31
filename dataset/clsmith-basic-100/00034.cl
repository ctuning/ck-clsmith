// ---fake_divergence -g 1,1,9551 -l 1,1,1
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


// Seed: 34

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint32_t g_10;
    volatile uint32_t g_15;
    int32_t g_20;
    uint32_t g_25;
    int32_t g_60;
    int32_t g_86;
    uint16_t g_89[1][8][9];
    int32_t g_103;
    uint64_t g_115;
    uint32_t g_122;
    int64_t g_131;
    uint32_t g_139[2][9][3];
    uint32_t g_149;
    int32_t *g_159;
    int32_t **g_158;
    volatile uint32_t g_164[5];
    volatile uint32_t *g_163;
    volatile uint32_t * volatile *g_162;
    int16_t g_173;
    volatile uint32_t ** volatile g_179;
    volatile uint32_t ** volatile *g_178;
    int32_t g_197;
    int32_t g_198;
    int8_t g_202;
    int16_t g_203;
    int64_t g_204;
    uint32_t g_205;
    uint8_t g_231;
    volatile uint32_t g_245;
    volatile uint32_t *g_244;
    volatile uint32_t * volatile *g_243;
    int16_t g_254;
    int32_t g_256;
    int16_t g_257[4];
    uint32_t ***g_280;
    uint32_t *g_301[9][9];
    uint32_t **g_300;
    uint32_t ***g_299;
    int32_t *g_359;
    int64_t **g_414[6][8][1];
    uint32_t g_424;
    uint32_t g_439;
    uint32_t ****g_464;
    uint8_t g_482;
    int32_t *g_485;
    int32_t g_511;
    int32_t g_515[9][1];
    uint32_t g_582;
    uint16_t g_590;
    uint64_t g_625;
    int8_t g_637;
    int8_t *g_636;
    uint32_t g_697;
    uint32_t g_832;
    uint32_t *g_866;
    uint16_t g_875;
    int16_t g_877;
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
uint16_t  func_1(struct S0 * p_883);
uint32_t  func_11(int32_t  p_12, int16_t  p_13, struct S0 * p_883);
int8_t  func_32(int32_t * p_33, int32_t * p_34, int32_t * p_35, int32_t  p_36, uint32_t  p_37, struct S0 * p_883);
uint32_t  func_38(int32_t * p_39, struct S0 * p_883);
int32_t * func_40(int32_t * p_41, struct S0 * p_883);
int32_t * func_42(int32_t  p_43, int32_t * p_44, int32_t  p_45, int32_t * p_46, int32_t * p_47, struct S0 * p_883);
int32_t  func_50(int32_t  p_51, int32_t  p_52, uint16_t  p_53, int32_t * p_54, struct S0 * p_883);
int32_t * func_63(int32_t  p_64, uint32_t  p_65, struct S0 * p_883);
int32_t  func_67(int8_t  p_68, int32_t  p_69, struct S0 * p_883);
int64_t  func_72(uint64_t  p_73, int32_t * p_74, int16_t  p_75, uint32_t  p_76, int32_t  p_77, struct S0 * p_883);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_883->g_10 p_883->g_15 p_883->g_25 p_883->g_20 p_883->g_60 p_883->g_89 p_883->g_86 p_883->g_103 p_883->g_115 p_883->g_131 p_883->g_139 p_883->g_149 p_883->g_158 p_883->g_162 p_883->g_122 p_883->g_178 p_883->g_205 p_883->g_198 p_883->g_204 p_883->g_299 p_883->g_254 p_883->g_203 p_883->g_414 p_883->g_300 p_883->g_301 p_883->g_256 p_883->g_257 p_883->g_173 p_883->g_359 p_883->g_464 p_883->g_280 p_883->g_439 p_883->g_424 p_883->g_485 p_883->g_197 p_883->g_515 p_883->g_511 p_883->g_625 p_883->g_636 p_883->g_582 p_883->g_637 p_883->g_697 p_883->g_231 p_883->g_202 p_883->g_590 p_883->g_832 p_883->g_164 p_883->g_179 p_883->g_163 p_883->g_875
 * writes: p_883->g_15 p_883->g_25 p_883->g_89 p_883->g_86 p_883->g_20 p_883->g_103 p_883->g_115 p_883->g_122 p_883->g_131 p_883->g_139 p_883->g_149 p_883->g_162 p_883->g_173 p_883->g_205 p_883->g_198 p_883->g_231 p_883->g_257 p_883->g_300 p_883->g_359 p_883->g_159 p_883->g_414 p_883->g_204 p_883->g_424 p_883->g_464 p_883->g_482 p_883->g_485 p_883->g_511 p_883->g_515 p_883->g_625 p_883->g_202 p_883->g_590 p_883->g_582 p_883->g_637 p_883->g_439 p_883->g_254 p_883->g_636 p_883->g_299 p_883->g_301 p_883->g_866 p_883->g_10 p_883->g_877
 */
uint16_t  func_1(struct S0 * p_883)
{ /* block id: 4 */
    uint64_t l_14 = 18446744073709551611UL;
    int32_t *l_57 = &p_883->g_20;
    int32_t *l_58 = (void*)0;
    int32_t *l_59[7][9] = {{&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,(void*)0,(void*)0,&p_883->g_60,&p_883->g_60},{&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,(void*)0,(void*)0,&p_883->g_60,&p_883->g_60},{&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,(void*)0,(void*)0,&p_883->g_60,&p_883->g_60},{&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,(void*)0,(void*)0,&p_883->g_60,&p_883->g_60},{&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,(void*)0,(void*)0,&p_883->g_60,&p_883->g_60},{&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,(void*)0,(void*)0,&p_883->g_60,&p_883->g_60},{&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,(void*)0,(void*)0,&p_883->g_60,&p_883->g_60}};
    int32_t l_61 = 0x6525036FL;
    int32_t *l_62[1][1][7] = {{{(void*)0,&p_883->g_20,(void*)0,(void*)0,&p_883->g_20,(void*)0,(void*)0}}};
    int32_t *l_514 = &p_883->g_515[2][0];
    int16_t l_833 = (-4L);
    int8_t l_834 = 0L;
    int8_t l_879 = 0x01L;
    int i, j, k;
    if ((((safe_sub_func_int32_t_s_s(((safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(p_883->g_10, func_11(l_14, p_883->g_10, p_883))), (!(safe_sub_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(func_32((func_38(func_40(func_42((l_61 &= (((!(+0x99843334ADC6F79BL)) , 255UL) , (safe_add_func_int32_t_s_s(func_50(p_883->g_10, p_883->g_10, (safe_mul_func_int16_t_s_s(((&p_883->g_20 == (void*)0) > l_14), p_883->g_20)), l_57, p_883), p_883->g_10)))), l_62[0][0][4], p_883->g_60, &p_883->g_20, l_59[6][6], p_883), p_883), p_883) , (void*)0), l_514, &p_883->g_515[2][0], p_883->g_197, (*l_514), p_883), 2)), p_883->g_832))))), p_883->g_256)) | l_833), l_834)) > p_883->g_60) != p_883->g_203))
    { /* block id: 449 */
        (*p_883->g_485) = (*l_514);
    }
    else
    { /* block id: 451 */
        uint16_t l_852[6] = {0UL,65529UL,0UL,0UL,65529UL,0UL};
        uint32_t *l_861 = &p_883->g_149;
        uint32_t **l_865 = (void*)0;
        uint32_t *l_876 = &p_883->g_139[0][4][1];
        int32_t l_878[7][6] = {{0L,0x7D4676C8L,(-1L),(-2L),(-1L),0x7D4676C8L},{0L,0x7D4676C8L,(-1L),(-2L),(-1L),0x7D4676C8L},{0L,0x7D4676C8L,(-1L),(-2L),(-1L),0x7D4676C8L},{0L,0x7D4676C8L,(-1L),(-2L),(-1L),0x7D4676C8L},{0L,0x7D4676C8L,(-1L),(-2L),(-1L),0x7D4676C8L},{0L,0x7D4676C8L,(-1L),(-2L),(-1L),0x7D4676C8L},{0L,0x7D4676C8L,(-1L),(-2L),(-1L),0x7D4676C8L}};
        uint32_t l_880[3];
        int i, j;
        for (i = 0; i < 3; i++)
            l_880[i] = 0UL;
        (*p_883->g_485) = (safe_unary_minus_func_int8_t_s((safe_add_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u(((safe_div_func_int64_t_s_s(0x6B1AF2C4252FD3B1L, p_883->g_204)) & ((safe_div_func_int64_t_s_s((*l_514), p_883->g_697)) >= (safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), 5)), ((&p_883->g_159 != (void*)0) ^ ((*l_514) , p_883->g_164[4])))) | ((*p_883->g_485) & (*p_883->g_485))) , l_852[3]), 11)), (*p_883->g_636))))), 14)), GROUP_DIVERGE(0, 1)))));
        l_878[6][0] &= (((p_883->g_877 = (((((safe_rshift_func_int16_t_s_u((((safe_rshift_func_int16_t_s_u(0x6FABL, 2)) != (safe_mod_func_int8_t_s_s(((*l_57) & (p_883->g_10 = ((((***p_883->g_178) != ((*l_861) &= l_852[3])) , ((*l_57) < (((*l_876) ^= (safe_sub_func_int16_t_s_s((p_883->g_173 &= (safe_unary_minus_func_int16_t_s((((**p_883->g_299) = (**p_883->g_299)) != (p_883->g_866 = l_861))))), (safe_sub_func_int32_t_s_s((safe_sub_func_int32_t_s_s((safe_add_func_uint16_t_u_u(((*p_883->g_636) & ((safe_sub_func_uint16_t_u_u(p_883->g_697, 5UL)) , p_883->g_875)), p_883->g_197)), 1UL)), (*p_883->g_485)))))) , l_852[3]))) && l_852[3]))), 1UL))) == 1UL), 8)) || (*l_514)) && l_852[3]) || (*l_57)) && 1UL)) == 0x419E1916L) != p_883->g_103);
        ++l_880[2];
    }
    return (*l_57);
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_15 p_883->g_25 p_883->g_10
 * writes: p_883->g_15 p_883->g_25
 */
uint32_t  func_11(int32_t  p_12, int16_t  p_13, struct S0 * p_883)
{ /* block id: 5 */
    int32_t *l_18 = (void*)0;
    int32_t *l_19 = &p_883->g_20;
    int32_t *l_21 = &p_883->g_20;
    int32_t *l_22 = &p_883->g_20;
    int32_t *l_23 = &p_883->g_20;
    int32_t *l_24[6];
    int i;
    for (i = 0; i < 6; i++)
        l_24[i] = &p_883->g_20;
    --p_883->g_15;
    --p_883->g_25;
    return p_883->g_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_205 p_883->g_115 p_883->g_515 p_883->g_511 p_883->g_86 p_883->g_485 p_883->g_20 p_883->g_625 p_883->g_204 p_883->g_414 p_883->g_636 p_883->g_122 p_883->g_139 p_883->g_582 p_883->g_103 p_883->g_637 p_883->g_203 p_883->g_697 p_883->g_197 p_883->g_439 p_883->g_257 p_883->g_299 p_883->g_300 p_883->g_231 p_883->g_202 p_883->g_60 p_883->g_590 p_883->g_89 p_883->g_10 p_883->g_131 p_883->g_149 p_883->g_158 p_883->g_162 p_883->g_178 p_883->g_198 p_883->g_254 p_883->g_301 p_883->g_256
 * writes: p_883->g_205 p_883->g_115 p_883->g_511 p_883->g_515 p_883->g_625 p_883->g_204 p_883->g_202 p_883->g_20 p_883->g_590 p_883->g_582 p_883->g_637 p_883->g_89 p_883->g_439 p_883->g_231 p_883->g_254 p_883->g_139 p_883->g_103 p_883->g_636 p_883->g_257 p_883->g_299 p_883->g_86 p_883->g_122 p_883->g_131 p_883->g_149 p_883->g_162 p_883->g_173 p_883->g_198 p_883->g_300 p_883->g_359 p_883->g_159 p_883->g_414 p_883->g_424
 */
int8_t  func_32(int32_t * p_33, int32_t * p_34, int32_t * p_35, int32_t  p_36, uint32_t  p_37, struct S0 * p_883)
{ /* block id: 295 */
    int32_t *l_516 = &p_883->g_515[4][0];
    int32_t l_521 = 0x68C583EFL;
    int32_t l_535[5] = {0x7A3E66F1L,0x7A3E66F1L,0x7A3E66F1L,0x7A3E66F1L,0x7A3E66F1L};
    uint32_t ***l_548[1];
    uint32_t ****l_554 = &p_883->g_280;
    uint8_t l_587[4][9] = {{0xC6L,0x73L,0xC6L,0xC6L,0x73L,0xC6L,0xC6L,0x73L,0xC6L},{0xC6L,0x73L,0xC6L,0xC6L,0x73L,0xC6L,0xC6L,0x73L,0xC6L},{0xC6L,0x73L,0xC6L,0xC6L,0x73L,0xC6L,0xC6L,0x73L,0xC6L},{0xC6L,0x73L,0xC6L,0xC6L,0x73L,0xC6L,0xC6L,0x73L,0xC6L}};
    int32_t *l_596 = &p_883->g_511;
    int32_t *l_597 = &p_883->g_20;
    int32_t *l_598[8] = {&p_883->g_86,&p_883->g_86,&p_883->g_86,&p_883->g_86,&p_883->g_86,&p_883->g_86,&p_883->g_86,&p_883->g_86};
    uint32_t l_599[3];
    uint32_t l_602 = 1UL;
    int64_t ***l_610 = &p_883->g_414[1][3][0];
    int8_t *l_727 = &p_883->g_637;
    int8_t l_825[9] = {0x7BL,(-5L),0x7BL,0x7BL,(-5L),0x7BL,0x7BL,(-5L),0x7BL};
    int i, j;
    for (i = 0; i < 1; i++)
        l_548[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_599[i] = 0xF3983FE0L;
    for (p_883->g_205 = 0; (p_883->g_205 <= 3); p_883->g_205 += 1)
    { /* block id: 298 */
        int32_t *l_517 = &p_883->g_515[3][0];
        int32_t l_529 = 0L;
        int32_t l_533 = 0x09365B0CL;
        int32_t l_534 = 0L;
        int32_t l_536 = 0x3C5C2E18L;
        uint32_t l_537 = 0x1E63FED3L;
        int32_t *l_594 = (void*)0;
        l_517 = l_516;
        for (p_883->g_115 = 0; (p_883->g_115 <= 3); p_883->g_115 += 1)
        { /* block id: 302 */
            int32_t *l_518 = &p_883->g_515[3][0];
            int32_t *l_519 = &p_883->g_511;
            int32_t *l_520 = (void*)0;
            int32_t *l_522 = &p_883->g_515[8][0];
            int32_t *l_523 = &p_883->g_515[8][0];
            int32_t *l_524 = &p_883->g_511;
            int32_t *l_525 = &p_883->g_515[2][0];
            int32_t *l_526 = (void*)0;
            int32_t *l_527 = &p_883->g_511;
            int32_t *l_528 = &p_883->g_86;
            int32_t l_530 = 0x4B9BCF1BL;
            int32_t l_531 = 0x4BC92716L;
            int32_t *l_532[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint64_t *l_543 = &p_883->g_115;
            int32_t l_563[4][3];
            int32_t l_584[10][8][3] = {{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}},{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}},{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}},{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}},{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}},{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}},{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}},{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}},{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}},{{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L},{0L,0x08AAEEE2L,0x1CCB2E98L}}};
            int32_t **l_595[5];
            int i, j, k;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 3; j++)
                    l_563[i][j] = 7L;
            }
            for (i = 0; i < 5; i++)
                l_595[i] = &l_522;
            l_537++;
        }
    }
    --l_599[2];
    (*l_596) &= (*p_35);
    if ((l_602 > FAKE_DIVERGE(p_883->group_0_offset, get_group_id(0), 10)))
    { /* block id: 348 */
        int64_t l_609[2][7] = {{0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L}};
        int32_t l_616 = 0L;
        int32_t l_617 = 0x6A91FA09L;
        int32_t l_618[4][7][4] = {{{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L}},{{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L}},{{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L}},{{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L},{0x4CCD8308L,0x4CCD8308L,0x4CCD8308L,0x4CCD8308L}}};
        int64_t l_623 = 0x1EE1F17C667B3A1FL;
        uint8_t *l_655 = &p_883->g_482;
        int32_t l_666 = 0x2ECBEE49L;
        int32_t **l_709 = &p_883->g_359;
        uint16_t *l_714 = &p_883->g_89[0][7][4];
        int i, j, k;
        for (p_883->g_511 = 0; (p_883->g_511 != (-13)); --p_883->g_511)
        { /* block id: 351 */
            int64_t ***l_611 = &p_883->g_414[0][2][0];
            uint8_t *l_612 = &l_587[2][2];
            int32_t l_615 = 0L;
            int32_t l_619 = 0x0BB05397L;
            int32_t l_620 = 0L;
            int32_t l_621 = 0x3E8EA4C9L;
            int32_t l_622 = 0x06105922L;
            int32_t l_624 = (-2L);
            int32_t l_670 = 0x0C4D219DL;
            uint8_t l_698 = 0UL;
            (*p_35) = ((safe_rshift_func_int16_t_s_s((((safe_mod_func_uint64_t_u_u(((*p_34) != ((l_609[1][0] , (((*l_612) = (l_610 != l_611)) , 0x0C6D6C4DF26C3CB2L)) , (*p_35))), p_36)) == p_37) | (((safe_sub_func_int8_t_s_s((((((l_615 , p_883->g_86) , (*p_883->g_485)) ^ p_36) || l_609[1][0]) , (*l_596)), 0x06L)) , p_36) >= 0x339EL)), l_615)) , l_609[1][0]);
            p_883->g_625--;
            for (l_623 = 3; (l_623 >= 0); l_623 -= 1)
            { /* block id: 357 */
                uint32_t *l_634[5];
                uint32_t **l_633 = &l_634[0];
                uint32_t ***l_632 = &l_633;
                int32_t l_650 = (-5L);
                uint16_t *l_651 = &p_883->g_590;
                int32_t l_663 = 0x2D959840L;
                int32_t l_665 = (-5L);
                int32_t l_668[4] = {0x731E87C4L,0x731E87C4L,0x731E87C4L,0x731E87C4L};
                int i, j;
                for (i = 0; i < 5; i++)
                    l_634[i] = (void*)0;
                for (p_883->g_204 = 0; (p_883->g_204 <= 3); p_883->g_204 += 1)
                { /* block id: 360 */
                    int8_t *l_635 = &p_883->g_202;
                    int i, j;
                    (*l_516) &= (((*p_883->g_485) = (safe_sub_func_int64_t_s_s((safe_rshift_func_int8_t_s_s(((*l_635) = ((void*)0 == l_632)), 2)), (((l_587[p_883->g_204][(p_883->g_204 + 5)] , (*l_610)) != (*l_610)) < (p_883->g_636 == l_635))))) && (l_624 = FAKE_DIVERGE(p_883->local_1_offset, get_local_id(1), 10)));
                }
                if (((safe_sub_func_uint64_t_u_u(0xD221CF66F0CDD503L, ((safe_div_func_uint64_t_u_u((((*l_651) = (0xC0L ^ (0x04L & (safe_mul_func_uint16_t_u_u((l_587[l_623][l_623] != 0x302BE9B1C773E8E8L), ((((safe_lshift_func_uint8_t_u_s(0xC2L, 0)) , ((void*)0 != &p_883->g_482)) || (l_650 = ((safe_sub_func_int64_t_s_s((safe_add_func_int16_t_s_s(p_37, FAKE_DIVERGE(p_883->group_1_offset, get_group_id(1), 10))), p_37)) <= p_37))) ^ p_37)))))) , p_883->g_122), l_618[2][0][2])) && GROUP_DIVERGE(2, 1)))) == l_587[l_623][l_623]))
                { /* block id: 368 */
                    int32_t **l_652 = &l_516;
                    (*l_652) = &p_883->g_515[2][0];
                }
                else
                { /* block id: 370 */
                    int64_t l_658[3][10] = {{0x6F4F97EA35963236L,0x1EED4362F8D9F062L,(-1L),0x1EED4362F8D9F062L,0x6F4F97EA35963236L,0x6F4F97EA35963236L,0x1EED4362F8D9F062L,(-1L),0x1EED4362F8D9F062L,0x6F4F97EA35963236L},{0x6F4F97EA35963236L,0x1EED4362F8D9F062L,(-1L),0x1EED4362F8D9F062L,0x6F4F97EA35963236L,0x6F4F97EA35963236L,0x1EED4362F8D9F062L,(-1L),0x1EED4362F8D9F062L,0x6F4F97EA35963236L},{0x6F4F97EA35963236L,0x1EED4362F8D9F062L,(-1L),0x1EED4362F8D9F062L,0x6F4F97EA35963236L,0x6F4F97EA35963236L,0x1EED4362F8D9F062L,(-1L),0x1EED4362F8D9F062L,0x6F4F97EA35963236L}};
                    int8_t l_660 = (-6L);
                    int32_t l_661[2][1][5] = {{{0x1CFAEE4DL,0x7EAC0E12L,0x1CFAEE4DL,0x1CFAEE4DL,0x7EAC0E12L}},{{0x1CFAEE4DL,0x7EAC0E12L,0x1CFAEE4DL,0x1CFAEE4DL,0x7EAC0E12L}}};
                    uint64_t l_673 = 18446744073709551614UL;
                    int32_t *l_692 = (void*)0;
                    int i, j, k;
                    for (l_521 = 0; (l_521 <= 1); l_521 += 1)
                    { /* block id: 373 */
                        int i, j, k;
                        l_650 = p_883->g_139[l_521][(l_623 + 1)][l_521];
                        (*l_516) ^= ((safe_rshift_func_int8_t_s_u(0x08L, 3)) , ((void*)0 == l_655));
                    }
                    (*p_34) = (+l_616);
                    for (p_883->g_582 = 0; (p_883->g_582 != 15); ++p_883->g_582)
                    { /* block id: 380 */
                        int16_t l_659[2][8][4] = {{{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)}},{{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)},{(-1L),0x313BL,(-1L),(-1L)}}};
                        int32_t l_662 = 0x48193F23L;
                        int32_t l_664 = 0x47FFAF31L;
                        int32_t l_667 = (-6L);
                        int32_t l_669 = 1L;
                        int32_t l_671 = 0x649E52EEL;
                        int32_t l_672 = 1L;
                        int32_t **l_691[8];
                        int i, j, k;
                        for (i = 0; i < 8; i++)
                            l_691[i] = &p_883->g_159;
                        l_673++;
                        if ((*p_883->g_485))
                            break;
                        (*p_35) = ((safe_mod_func_uint64_t_u_u(l_622, (safe_mod_func_int8_t_s_s(((((((p_883->g_115 <= p_883->g_103) && ((safe_unary_minus_func_int32_t_s(((((safe_lshift_func_uint16_t_u_u(l_667, 8)) && (safe_add_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u((safe_mod_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(((l_692 = (void*)0) != (void*)0), ((+((((p_36 && (safe_sub_func_uint8_t_u_u(((((safe_add_func_int32_t_s_s((((((~(*l_516)) , (((*p_883->g_636) = ((((~0x76L) | 248UL) >= 0x5DL) < p_883->g_637)) >= p_883->g_103)) , (void*)0) != p_33) ^ 0x6EL), (*p_883->g_485))) && (*l_597)) && p_36) & 7L), p_883->g_203))) , l_669) == p_36) | p_883->g_697)) == p_883->g_197))), p_36)), 0)), (*p_34)))) > p_883->g_197) , l_662))) < p_883->g_439)) , p_36) > l_671) && 6L) & l_623), p_36)))) || l_661[1][0][0]);
                        l_698--;
                    }
                }
                (*l_516) &= (&p_883->g_515[2][0] != (void*)0);
                if ((*p_34))
                    continue;
            }
        }
        (*l_597) &= (safe_sub_func_int8_t_s_s(0x32L, (~((safe_div_func_int8_t_s_s(((*p_883->g_636) = p_37), ((safe_div_func_uint16_t_u_u(p_37, ((p_36 , (safe_sub_func_int16_t_s_s((l_709 == l_709), (safe_mod_func_int32_t_s_s((+(safe_lshift_func_uint8_t_u_s(p_883->g_257[1], 1))), 1UL))))) | ((*l_714) = ((((*p_883->g_299) != (void*)0) , l_616) < (*l_516)))))) || 6UL))) > p_36))));
        return (*p_883->g_636);
    }
    else
    { /* block id: 397 */
        int32_t l_735 = (-1L);
        int32_t l_780 = 9L;
        uint8_t l_782 = 0UL;
        int32_t l_789 = (-10L);
        int8_t **l_810 = &p_883->g_636;
        uint8_t *l_830[9] = {&p_883->g_231,&p_883->g_231,&p_883->g_231,&p_883->g_231,&p_883->g_231,&p_883->g_231,&p_883->g_231,&p_883->g_231,&p_883->g_231};
        int16_t l_831[2][5][9] = {{{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L},{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L},{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L},{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L},{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L}},{{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L},{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L},{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L},{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L},{(-1L),0x6A37L,(-1L),(-4L),(-1L),0x6A37L,(-1L),0x09C2L,0L}}};
        int i, j, k;
        for (p_883->g_205 = (-22); (p_883->g_205 <= 8); p_883->g_205++)
        { /* block id: 400 */
            return p_36;
        }
        for (l_521 = (-10); (l_521 < 10); l_521 = safe_add_func_int32_t_s_s(l_521, 2))
        { /* block id: 405 */
            int32_t *l_726 = &p_883->g_60;
            int32_t l_734[10][7][2] = {{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}},{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}},{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}},{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}},{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}},{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}},{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}},{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}},{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}},{{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)},{0x565DA8E9L,(-4L)}}};
            int8_t *l_760 = &p_883->g_637;
            int i, j, k;
            (*p_35) &= (safe_lshift_func_int16_t_s_u(0x0094L, 14));
            for (p_883->g_439 = 6; (p_883->g_439 != 51); p_883->g_439++)
            { /* block id: 409 */
                int32_t *l_725 = &p_883->g_60;
                int32_t l_747 = 0x332DC498L;
                for (p_883->g_511 = 0; p_883->g_511 < 2; p_883->g_511 += 1)
                {
                    for (p_883->g_231 = 0; p_883->g_231 < 9; p_883->g_231 += 1)
                    {
                        for (p_883->g_254 = 0; p_883->g_254 < 3; p_883->g_254 += 1)
                        {
                            p_883->g_139[p_883->g_511][p_883->g_231][p_883->g_254] = 0x5F17175FL;
                        }
                    }
                }
                for (p_883->g_103 = 7; (p_883->g_103 >= 1); p_883->g_103 -= 1)
                { /* block id: 413 */
                    int8_t **l_728 = &p_883->g_636;
                    int16_t *l_733 = &p_883->g_257[2];
                    int64_t *l_736 = &p_883->g_204;
                    int32_t l_737[2][6];
                    uint32_t ***l_740 = &p_883->g_300;
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 6; j++)
                            l_737[i][j] = 0x15BA9EBFL;
                    }
                    if ((safe_mul_func_int8_t_s_s((((l_726 = l_725) != ((((!((&p_883->g_202 != ((*l_728) = l_727)) , (&p_883->g_515[7][0] != (((*l_596) = 0x7965BCC1L) , p_34)))) , ((*l_736) ^= ((safe_add_func_int32_t_s_s((safe_mod_func_int16_t_s_s(((*p_883->g_636) , ((*l_733) |= p_883->g_231)), l_734[5][5][0])), 1L)) || l_735))) || 9L) , (void*)0)) && l_737[1][1]), p_37)))
                    { /* block id: 419 */
                        int32_t l_738 = 0x1ACE15F1L;
                        uint32_t ***l_739 = &p_883->g_300;
                        uint32_t ****l_741 = &p_883->g_299;
                        uint32_t ***l_746 = &p_883->g_300;
                        (*p_883->g_485) = (0x7CC1BB2BB6018A05L != FAKE_DIVERGE(p_883->group_1_offset, get_group_id(1), 10));
                        (*l_596) = (l_738 = (l_738 , ((l_739 != ((*l_741) = l_740)) <= (safe_lshift_func_uint16_t_u_u((!(((safe_sub_func_int64_t_s_s((*l_516), (l_740 == (l_746 = (void*)0)))) == (-6L)) , p_36)), 0)))));
                        if (l_734[5][5][0])
                            break;
                    }
                    else
                    { /* block id: 426 */
                        int32_t **l_763 = &l_725;
                        uint8_t *l_766 = &l_587[1][0];
                        uint32_t *l_773 = &p_883->g_139[1][0][0];
                        uint32_t **l_772 = &l_773;
                        uint32_t ***l_771 = &l_772;
                        (*l_516) = l_747;
                        (*l_516) ^= (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_883->local_0_offset, get_local_id(0), 10), (8UL & (safe_mul_func_int16_t_s_s(((*l_733) = (safe_sub_func_uint32_t_u_u((safe_sub_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s(((*l_766) = (safe_mul_func_int16_t_s_s((l_760 == &p_883->g_637), (safe_sub_func_int16_t_s_s((l_747 && ((void*)0 == l_763)), (safe_lshift_func_int16_t_s_u((+(-8L)), 0))))))), 4)), ((safe_mod_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u(((p_36 , (void*)0) == l_771), 0x6FL)), p_36)) < p_37))), p_36))), p_883->g_202)))));
                    }
                }
                (*l_516) |= (p_36 ^ p_36);
                (*p_883->g_485) = (safe_add_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(((*p_883->g_636) = 0x3EL), p_36)), l_747));
            }
        }
        for (p_36 = (-5); (p_36 >= (-30)); p_36--)
        { /* block id: 440 */
            uint16_t *l_787[1][8] = {{&p_883->g_590,&p_883->g_590,&p_883->g_590,&p_883->g_590,&p_883->g_590,&p_883->g_590,&p_883->g_590,&p_883->g_590}};
            int32_t l_788[9][6][4] = {{{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L}},{{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L}},{{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L}},{{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L}},{{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L}},{{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L}},{{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L}},{{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L}},{{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L},{0x0F33E884L,3L,1L,1L}}};
            uint64_t l_800 = 18446744073709551615UL;
            int32_t **l_801 = &l_598[4];
            int i, j, k;
            (*l_801) = func_42(l_780, p_33, ((((!(safe_unary_minus_func_uint64_t_u(l_782))) & (((safe_div_func_int8_t_s_s(((p_37 <= FAKE_DIVERGE(p_883->group_1_offset, get_group_id(1), 10)) < 0UL), (((p_883->g_60 | (p_883->g_590--)) <= p_37) | (safe_sub_func_int8_t_s_s((((FAKE_DIVERGE(p_883->group_2_offset, get_group_id(2), 10) & (safe_lshift_func_int8_t_s_s((-9L), (((safe_sub_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((((l_782 >= 0x6866F96BL) == 0x0638F9A5L) > 0x08L), 0xDCEDL)), l_800)) , l_780) && (*l_597))))) <= 9L) && 1UL), FAKE_DIVERGE(p_883->local_1_offset, get_local_id(1), 10)))))) , GROUP_DIVERGE(0, 1)) , l_789)) && (-1L)) , 0x6026F855L), p_33, p_34, p_883);
        }
        (*l_597) = (FAKE_DIVERGE(p_883->group_0_offset, get_group_id(0), 10) && (safe_rshift_func_uint8_t_u_u(((~((safe_mul_func_int16_t_s_s((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u(0x01C9L, (&l_727 != l_810))), (safe_rshift_func_uint8_t_u_u((p_883->g_231 = (l_735 && (((safe_lshift_func_uint8_t_u_s((((-1L) < ((safe_mod_func_int8_t_s_s(((safe_mod_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u(0xB54C3232L, (l_789 &= ((((safe_mod_func_int16_t_s_s((l_825[2] & (safe_add_func_int16_t_s_s((p_36 , (safe_div_func_int16_t_s_s(p_883->g_20, (*l_597)))), 0x29CFL))), (-1L))) <= (*p_34)) == p_36) < 0L)))) == (-6L)), 7)), p_36)) > 6UL), (*p_883->g_636))) || 0x3DD4L)) | 255UL), 6)) || 0x568FDFBAL) , 1UL))), p_883->g_257[3])))), p_883->g_103)) >= p_37)) && l_831[1][4][4]), 5)));
    }
    return (*l_516);
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_359 p_883->g_20 p_883->g_485 p_883->g_122 p_883->g_103 p_883->g_86
 * writes: p_883->g_122 p_883->g_20 p_883->g_86 p_883->g_511 p_883->g_359
 */
uint32_t  func_38(int32_t * p_39, struct S0 * p_883)
{ /* block id: 286 */
    int16_t l_496[8];
    uint32_t *l_505 = &p_883->g_122;
    int8_t *l_508[9] = {&p_883->g_202,&p_883->g_202,&p_883->g_202,&p_883->g_202,&p_883->g_202,&p_883->g_202,&p_883->g_202,&p_883->g_202,&p_883->g_202};
    int32_t l_509[9] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
    int32_t *l_510 = &p_883->g_511;
    uint8_t l_513[7] = {0x84L,0UL,0x84L,0x84L,0UL,0x84L,0x84L};
    int i;
    for (i = 0; i < 8; i++)
        l_496[i] = 0x2D4CL;
    (*l_510) = ((*p_39) |= ((*p_883->g_359) = ((safe_add_func_int8_t_s_s((l_509[7] &= (((safe_mul_func_uint8_t_u_u((3UL < (safe_sub_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s((0x7892L & (safe_mul_func_uint8_t_u_u(l_496[4], 0x31L))), l_496[4])) | (safe_mod_func_int16_t_s_s(((safe_div_func_uint8_t_u_u((((safe_mul_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((((*l_505) |= ((*p_883->g_359) < (*p_883->g_485))) > (safe_sub_func_int16_t_s_s((-1L), (((0x00L | l_496[3]) <= l_496[1]) , l_496[0])))), 0UL)), p_883->g_103)) ^ (-10L)) , 7UL), 1L)) != 18446744073709551615UL), l_496[3]))), l_496[4]))), 0x07L)) & l_496[3]) > l_496[0])), l_496[6])) , (*p_883->g_485))));
    if (p_883->g_86)
        goto lbl_512;
lbl_512:
    p_883->g_359 = &l_509[7];
    return l_513[6];
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_173 p_883->g_359 p_883->g_20 p_883->g_86 p_883->g_60 p_883->g_103 p_883->g_464 p_883->g_280 p_883->g_256 p_883->g_439 p_883->g_204 p_883->g_424 p_883->g_257 p_883->g_139 p_883->g_89 p_883->g_198 p_883->g_10 p_883->g_115 p_883->g_131 p_883->g_149 p_883->g_158 p_883->g_162 p_883->g_122 p_883->g_178 p_883->g_205 p_883->g_299 p_883->g_254 p_883->g_203 p_883->g_414 p_883->g_300 p_883->g_301
 * writes: p_883->g_173 p_883->g_86 p_883->g_464 p_883->g_231 p_883->g_482 p_883->g_89 p_883->g_20 p_883->g_103 p_883->g_115 p_883->g_122 p_883->g_131 p_883->g_139 p_883->g_149 p_883->g_162 p_883->g_205 p_883->g_198 p_883->g_257 p_883->g_300 p_883->g_359 p_883->g_159 p_883->g_414 p_883->g_204 p_883->g_424 p_883->g_485
 */
int32_t * func_40(int32_t * p_41, struct S0 * p_883)
{ /* block id: 257 */
    int64_t l_436 = 0x712FA7069FD0670CL;
    int32_t l_437 = 0x2094BCBDL;
    int32_t l_438 = 0x14F2E69DL;
    uint32_t ****l_461 = &p_883->g_280;
    uint32_t ****l_463 = &p_883->g_280;
    uint32_t *****l_462[6];
    int64_t l_465[2];
    uint64_t l_474 = 0xD0021A5965D1A055L;
    int64_t *l_475 = &p_883->g_131;
    int8_t *l_476[2];
    int8_t l_477 = 0x06L;
    int32_t **l_478 = &p_883->g_159;
    uint8_t *l_479 = (void*)0;
    uint8_t *l_480 = &p_883->g_231;
    uint8_t *l_481 = &p_883->g_482;
    int32_t **l_483 = &p_883->g_359;
    int32_t **l_484 = (void*)0;
    int i;
    for (i = 0; i < 6; i++)
        l_462[i] = &l_463;
    for (i = 0; i < 2; i++)
        l_465[i] = (-9L);
    for (i = 0; i < 2; i++)
        l_476[i] = (void*)0;
lbl_442:
    for (p_883->g_173 = 20; (p_883->g_173 > (-11)); p_883->g_173 = safe_sub_func_int64_t_s_s(p_883->g_173, 3))
    { /* block id: 260 */
        if ((*p_883->g_359))
            break;
        for (p_883->g_86 = 3; (p_883->g_86 >= 0); p_883->g_86 -= 1)
        { /* block id: 264 */
            int32_t **l_432 = &p_883->g_359;
            int32_t *l_433 = (void*)0;
            int32_t *l_434 = &p_883->g_20;
            int32_t *l_435[1];
            int i;
            for (i = 0; i < 1; i++)
                l_435[i] = &p_883->g_20;
            (1 + 1);
        }
        if (p_883->g_173)
            goto lbl_442;
    }
    p_883->g_485 = ((*l_483) = func_63((safe_rshift_func_uint16_t_u_u(((safe_unary_minus_func_uint32_t_u(l_436)) <= ((((safe_add_func_uint16_t_u_u((!((safe_div_func_uint64_t_u_u(((safe_div_func_uint8_t_u_u(((*l_481) = ((((*l_480) = (safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((((l_436 && (((((safe_add_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_u((safe_unary_minus_func_int8_t_s(((((l_437 , l_461) != (p_883->g_464 = l_461)) , (l_465[1] > (l_477 = (((GROUP_DIVERGE(2, 1) >= l_438) , (safe_lshift_func_uint16_t_u_s(((safe_mod_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_s(l_436, 9)) > ((((l_475 = ((((((safe_mul_func_uint16_t_u_u((+((l_436 != l_437) | p_883->g_173)), p_883->g_60)) != l_474) && p_883->g_103) , (*p_883->g_464)) != (void*)0) , (void*)0)) != &l_465[1]) , 1L) , l_437)), p_883->g_256)) , l_474), 6))) , l_465[1])))) && p_883->g_439))), l_436)) ^ p_883->g_204), 0UL)) != l_438) > l_436) & p_883->g_424) | p_883->g_257[2])) < 0xF51BL) == l_465[0]) , (void*)0) != l_478), p_883->g_139[1][0][0])), 1))) , 0x5977L) ^ p_883->g_89[0][7][0])), l_465[0])) >= 0L), l_465[1])) != l_465[0])), l_474)) , l_465[1]) <= (*p_883->g_359)) && p_883->g_198)), l_438)), l_437, p_883));
    (*p_883->g_359) = ((*p_41) = (*p_41));
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_20 p_883->g_60 p_883->g_89 p_883->g_86 p_883->g_103 p_883->g_10 p_883->g_115 p_883->g_131 p_883->g_139 p_883->g_149 p_883->g_158 p_883->g_162 p_883->g_122 p_883->g_178 p_883->g_205 p_883->g_198 p_883->g_204 p_883->g_299 p_883->g_254 p_883->g_203 p_883->g_414 p_883->g_300 p_883->g_301 p_883->g_256 p_883->g_257
 * writes: p_883->g_89 p_883->g_86 p_883->g_20 p_883->g_103 p_883->g_115 p_883->g_122 p_883->g_131 p_883->g_139 p_883->g_149 p_883->g_162 p_883->g_173 p_883->g_205 p_883->g_198 p_883->g_231 p_883->g_257 p_883->g_300 p_883->g_359 p_883->g_159 p_883->g_414 p_883->g_204 p_883->g_424
 */
int32_t * func_42(int32_t  p_43, int32_t * p_44, int32_t  p_45, int32_t * p_46, int32_t * p_47, struct S0 * p_883)
{ /* block id: 12 */
    int64_t l_66[2];
    int32_t **l_425 = &p_883->g_359;
    int i;
    for (i = 0; i < 2; i++)
        l_66[i] = 0L;
    (*l_425) = func_63(l_66[0], l_66[0], p_883);
    return &p_883->g_86;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_10
 * writes:
 */
int32_t  func_50(int32_t  p_51, int32_t  p_52, uint16_t  p_53, int32_t * p_54, struct S0 * p_883)
{ /* block id: 9 */
    return p_883->g_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_20 p_883->g_60 p_883->g_89 p_883->g_86 p_883->g_103 p_883->g_10 p_883->g_115 p_883->g_131 p_883->g_139 p_883->g_149 p_883->g_158 p_883->g_162 p_883->g_122 p_883->g_178 p_883->g_205 p_883->g_198 p_883->g_204 p_883->g_299 p_883->g_254 p_883->g_203 p_883->g_414 p_883->g_300 p_883->g_301 p_883->g_256 p_883->g_257
 * writes: p_883->g_89 p_883->g_86 p_883->g_20 p_883->g_103 p_883->g_115 p_883->g_122 p_883->g_131 p_883->g_139 p_883->g_149 p_883->g_162 p_883->g_173 p_883->g_205 p_883->g_198 p_883->g_231 p_883->g_257 p_883->g_300 p_883->g_359 p_883->g_159 p_883->g_414 p_883->g_204 p_883->g_424
 */
int32_t * func_63(int32_t  p_64, uint32_t  p_65, struct S0 * p_883)
{ /* block id: 13 */
    int32_t *l_71 = (void*)0;
    int32_t **l_70 = &l_71;
    int32_t l_78 = 0x7FBA349AL;
    int32_t *l_208[5] = {&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60,&p_883->g_60};
    int32_t l_213[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
    int32_t *l_423[6] = {&l_213[0],&l_213[0],&l_213[0],&l_213[0],&l_213[0],&l_213[0]};
    int i;
    p_883->g_424 = func_67((((*l_70) = &p_883->g_60) == (func_72(p_883->g_20, &p_883->g_60, l_78, p_883->g_60, p_64, p_883) , l_208[0])), (safe_add_func_int32_t_s_s(((l_213[4] = (safe_add_func_int16_t_s_s(8L, p_64))) != 0UL), 0x7D878659L)), p_883);
    return &p_883->g_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_20 p_883->g_198 p_883->g_139 p_883->g_204 p_883->g_89 p_883->g_10 p_883->g_103 p_883->g_86 p_883->g_299 p_883->g_122 p_883->g_158 p_883->g_149 p_883->g_205 p_883->g_254 p_883->g_203 p_883->g_414 p_883->g_300 p_883->g_301 p_883->g_256 p_883->g_131 p_883->g_257
 * writes: p_883->g_198 p_883->g_20 p_883->g_103 p_883->g_231 p_883->g_205 p_883->g_86 p_883->g_257 p_883->g_300 p_883->g_122 p_883->g_359 p_883->g_159 p_883->g_89 p_883->g_414 p_883->g_204
 */
int32_t  func_67(int8_t  p_68, int32_t  p_69, struct S0 * p_883)
{ /* block id: 94 */
    int8_t l_227 = 1L;
    uint32_t **l_246 = (void*)0;
    int32_t l_248 = 0x450A725EL;
    int32_t l_255 = 0x29B8D93BL;
    int32_t *l_263 = &l_255;
    uint64_t l_287 = 1UL;
    int64_t *l_291 = &p_883->g_204;
    int8_t l_322 = 0x03L;
    uint32_t l_355 = 9UL;
    int32_t l_393 = 1L;
    uint32_t ***l_422 = &p_883->g_300;
    for (p_69 = 1; (p_69 >= 0); p_69 -= 1)
    { /* block id: 97 */
        int64_t l_214 = 0L;
        int32_t *l_219 = &p_883->g_20;
        uint32_t *l_242 = &p_883->g_139[0][2][2];
        uint32_t **l_241[5][4];
        uint32_t ***l_240 = &l_241[4][2];
        int32_t l_253 = 0x4B785A8AL;
        int8_t l_277 = 0x40L;
        uint32_t **l_289 = &l_242;
        uint8_t l_290 = 255UL;
        int32_t l_341 = (-2L);
        int16_t *l_342 = &p_883->g_257[0];
        uint64_t *l_353 = (void*)0;
        uint64_t *l_354[10] = {(void*)0,&p_883->g_115,(void*)0,&p_883->g_115,(void*)0,(void*)0,&p_883->g_115,(void*)0,&p_883->g_115,(void*)0};
        uint8_t *l_356[1];
        int32_t *l_357 = &l_248;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 4; j++)
                l_241[i][j] = &l_242;
        }
        for (i = 0; i < 1; i++)
            l_356[i] = &l_290;
        for (p_883->g_198 = 1; (p_883->g_198 >= 0); p_883->g_198 -= 1)
        { /* block id: 100 */
            int32_t *l_215 = &p_883->g_20;
            uint32_t **l_239 = (void*)0;
            uint32_t ***l_238 = &l_239;
            uint32_t *l_270[8][9] = {{&p_883->g_10,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_10},{&p_883->g_10,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_10},{&p_883->g_10,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_10},{&p_883->g_10,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_10},{&p_883->g_10,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_10},{&p_883->g_10,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_10},{&p_883->g_10,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_10},{&p_883->g_10,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_122,&p_883->g_122,&p_883->g_10,&p_883->g_10}};
            uint32_t ***l_303 = &p_883->g_300;
            uint32_t ***l_305 = &p_883->g_300;
            int i, j;
            if (((*l_215) |= l_214))
            { /* block id: 102 */
                (*l_215) |= (-1L);
            }
            else
            { /* block id: 104 */
                uint32_t *l_217[4][7][2] = {{{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0}},{{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0}},{{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0}},{{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0},{&p_883->g_139[1][5][0],(void*)0}}};
                uint32_t **l_216 = &l_217[2][1][0];
                int i, j, k;
                for (l_214 = 0; (l_214 <= 1); l_214 += 1)
                { /* block id: 107 */
                    uint32_t ***l_218 = &l_216;
                    int i, j, k;
                    if (p_883->g_139[p_883->g_198][(p_69 + 1)][(p_883->g_198 + 1)])
                        break;
                    (*l_218) = l_216;
                    for (p_883->g_103 = 1; (p_883->g_103 >= 0); p_883->g_103 -= 1)
                    { /* block id: 112 */
                        int32_t **l_220 = &l_219;
                        uint8_t *l_230 = &p_883->g_231;
                        (*l_220) = l_219;
                        l_215 = (((0x080E16A57D1920F2L | ((((((((+(safe_add_func_uint64_t_u_u(18446744073709551614UL, p_68))) , p_883->g_204) <= (safe_div_func_uint16_t_u_u(((0x3B3628F2B3A501E5L ^ (safe_sub_func_int8_t_s_s((l_227 & (safe_add_func_uint8_t_u_u(((*l_230) = 246UL), (((!((GROUP_DIVERGE(1, 1) , (!GROUP_DIVERGE(1, 1))) | (safe_div_func_int16_t_s_s(((*l_219) = ((safe_rshift_func_int16_t_s_s(0L, 0)) > ((((safe_sub_func_int8_t_s_s(p_68, p_883->g_89[0][7][0])) != p_68) < p_883->g_139[1][4][0]) , p_69))), p_68)))) , p_883->g_10) & 0x3D55CEC3L)))), (-7L)))) && p_68), 4UL))) ^ p_68) , l_238) != l_240) == 0x2FEAE699L) || p_883->g_103)) && l_227) , &p_883->g_86);
                    }
                }
            }
            for (p_883->g_205 = 0; (p_883->g_205 <= 1); p_883->g_205 += 1)
            { /* block id: 122 */
                int32_t l_258 = 0x68607F20L;
                uint32_t *l_268 = &p_883->g_10;
                uint32_t ****l_281[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t **l_288 = &l_242;
                int i;
                (1 + 1);
            }
        }
        for (p_883->g_86 = 0; (p_883->g_86 <= 1); p_883->g_86 += 1)
        { /* block id: 186 */
            return (*l_219);
        }
        (*l_357) &= (((safe_sub_func_int32_t_s_s((*l_219), (*l_263))) ^ (safe_sub_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((((*l_342) = l_341) <= (*l_219)), (l_253 = (safe_add_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(p_69, (((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint64_t_u_u(((safe_add_func_uint32_t_u_u(1UL, 0x4C33A222L)) >= p_68), (l_355 = (*l_263)))), (*l_219))) > p_883->g_204) && p_883->g_86))), (*l_219)))))), (*l_219)))) | (*l_219));
        for (l_322 = 0; (l_322 <= 1); l_322 += 1)
        { /* block id: 195 */
            uint32_t **l_358 = &p_883->g_301[5][6];
            int32_t l_364 = 0L;
            uint32_t ****l_367 = &p_883->g_299;
            uint16_t l_382 = 65533UL;
            for (l_287 = 0; (l_287 <= 1); l_287 += 1)
            { /* block id: 198 */
                int32_t *l_363 = (void*)0;
                uint32_t **l_370 = &l_242;
                uint64_t *l_402[1][5] = {{&l_287,&l_287,&l_287,&l_287,&l_287}};
                int i, j, k;
                (*l_357) ^= p_883->g_139[l_287][(l_322 + 2)][p_69];
                (*p_883->g_299) = l_358;
                for (p_883->g_122 = 0; (p_883->g_122 <= 1); p_883->g_122 += 1)
                { /* block id: 203 */
                    int32_t *l_360[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    uint16_t *l_380 = (void*)0;
                    uint16_t *l_381 = &p_883->g_89[0][0][2];
                    int64_t **l_413 = &l_291;
                    int64_t ***l_412 = &l_413;
                    int64_t ***l_415 = &p_883->g_414[0][2][0];
                    int i, j, k;
                    if ((0x49CD8008L != p_883->g_139[l_322][p_69][(p_883->g_122 + 1)]))
                    { /* block id: 204 */
                        int32_t **l_361 = (void*)0;
                        p_883->g_20 = p_69;
                        if (p_883->g_89[0][7][0])
                            continue;
                        p_883->g_359 = &l_248;
                        p_883->g_359 = l_360[3];
                    }
                    else
                    { /* block id: 209 */
                        int32_t **l_362 = (void*)0;
                        l_363 = &p_883->g_20;
                        return l_364;
                    }
                    if (((((p_69 == (p_68 , ((((safe_add_func_int16_t_s_s(((l_367 == (void*)0) , (safe_add_func_uint32_t_u_u((((l_370 == (void*)0) <= (safe_lshift_func_int16_t_s_u((((*l_342) = (safe_unary_minus_func_int64_t_s((((*p_883->g_158) = &p_69) == ((safe_mul_func_int16_t_s_s((p_69 ^ ((((safe_lshift_func_int8_t_s_s(((((*l_357) ^= (((*l_381) = (safe_mod_func_int32_t_s_s(p_69, 0x91070F7FL))) , p_69)) ^ p_883->g_149) & p_883->g_205), 4)) , 0x6B88B880L) == (-1L)) , p_68)), p_883->g_254)) , (void*)0))))) < 1UL), 0))) >= l_382), p_69))), 0xCCA3L)) && p_883->g_198) < p_883->g_139[1][3][0]) , (-1L)))) , FAKE_DIVERGE(p_883->local_2_offset, get_local_id(2), 10)) , &l_370) == (void*)0))
                    { /* block id: 217 */
                        (*l_219) &= (+p_69);
                        if (p_68)
                            continue;
                        (*l_263) |= (&p_883->g_244 != l_246);
                    }
                    else
                    { /* block id: 221 */
                        int32_t *l_403 = &l_255;
                        (*l_219) &= (((((safe_div_func_int64_t_s_s(p_883->g_203, (safe_lshift_func_uint16_t_u_u((((*l_381) = ((((-3L) <= (safe_mul_func_int8_t_s_s((safe_sub_func_int16_t_s_s((((safe_div_func_uint32_t_u_u(l_393, ((safe_sub_func_uint64_t_u_u((p_68 & (safe_lshift_func_int8_t_s_s(((((((safe_rshift_func_int16_t_s_u(((p_883->g_205 ^ (p_883->g_89[0][2][5] < (l_364 = (p_883->g_231 = FAKE_DIVERGE(p_883->group_2_offset, get_group_id(2), 10))))) <= ((((0UL >= l_382) , ((safe_sub_func_uint16_t_u_u(((void*)0 != l_402[0][1]), (*l_357))) , l_360[3])) == l_403) > 0x49F03E3CL)), p_68)) != p_69) | 0x3812L) ^ p_69) != p_68) >= 1L), 3))), p_69)) || (*l_403)))) || p_883->g_203) >= l_382), p_883->g_149)), (*l_403)))) , GROUP_DIVERGE(1, 1)) || 4L)) ^ 0x0E56L), p_69)))) <= 0L) == p_883->g_139[1][0][1]) <= p_883->g_198) || FAKE_DIVERGE(p_883->global_2_offset, get_global_id(2), 10));
                        if (p_883->g_254)
                            break;
                        (*l_219) = 7L;
                        if (p_68)
                            break;
                    }
                    (*l_219) = ((*l_357) = ((safe_mod_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(p_69, (safe_lshift_func_int16_t_s_u(p_883->g_139[1][4][2], (((safe_lshift_func_int16_t_s_u(((p_883->g_198 || (*l_263)) >= 0x4CL), (((*l_412) = (void*)0) == ((*l_415) = p_883->g_414[0][2][0])))) | 9UL) , (safe_mod_func_int64_t_s_s((((safe_mod_func_uint16_t_u_u((((void*)0 == (*p_883->g_300)) < l_382), p_883->g_256)) , p_883->g_131) , p_69), p_883->g_257[2]))))))), 0x588C48387506DF7FL)) || p_883->g_20));
                }
            }
            for (l_382 = 0; (l_382 <= 1); l_382 += 1)
            { /* block id: 238 */
                (*l_357) &= (safe_lshift_func_int16_t_s_u((((*l_291) = (GROUP_DIVERGE(0, 1) || p_69)) , 1L), 14));
                for (p_883->g_231 = 0; (p_883->g_231 <= 1); p_883->g_231 += 1)
                { /* block id: 243 */
                    (*l_240) = (void*)0;
                }
                (*l_263) &= (l_422 != (void*)0);
                (*l_219) = (-1L);
            }
        }
    }
    (*l_263) |= 4L;
    return p_68;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_89 p_883->g_86 p_883->g_20 p_883->g_103 p_883->g_10 p_883->g_60 p_883->g_115 p_883->g_131 p_883->g_139 p_883->g_149 p_883->g_158 p_883->g_162 p_883->g_122 p_883->g_178 p_883->g_205
 * writes: p_883->g_89 p_883->g_86 p_883->g_20 p_883->g_103 p_883->g_115 p_883->g_122 p_883->g_131 p_883->g_139 p_883->g_149 p_883->g_162 p_883->g_173 p_883->g_205
 */
int64_t  func_72(uint64_t  p_73, int32_t * p_74, int16_t  p_75, uint32_t  p_76, int32_t  p_77, struct S0 * p_883)
{ /* block id: 15 */
    uint8_t l_79[5][9] = {{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}};
    int32_t l_85 = (-5L);
    int8_t l_126 = 0x4BL;
    int32_t l_152[7][1][9] = {{{0x15430F98L,(-1L),(-1L),0x15430F98L,2L,9L,9L,2L,0x15430F98L}},{{0x15430F98L,(-1L),(-1L),0x15430F98L,2L,9L,9L,2L,0x15430F98L}},{{0x15430F98L,(-1L),(-1L),0x15430F98L,2L,9L,9L,2L,0x15430F98L}},{{0x15430F98L,(-1L),(-1L),0x15430F98L,2L,9L,9L,2L,0x15430F98L}},{{0x15430F98L,(-1L),(-1L),0x15430F98L,2L,9L,9L,2L,0x15430F98L}},{{0x15430F98L,(-1L),(-1L),0x15430F98L,2L,9L,9L,2L,0x15430F98L}},{{0x15430F98L,(-1L),(-1L),0x15430F98L,2L,9L,9L,2L,0x15430F98L}}};
    uint64_t l_153 = 3UL;
    int i, j, k;
    for (p_77 = 4; (p_77 >= 0); p_77 -= 1)
    { /* block id: 18 */
        int32_t *l_80 = &p_883->g_20;
        int32_t *l_81 = &p_883->g_20;
        int32_t *l_82 = &p_883->g_20;
        int32_t *l_83 = &p_883->g_20;
        int32_t *l_84 = &p_883->g_20;
        int32_t *l_87 = (void*)0;
        int32_t *l_88[3][7];
        int8_t l_125 = 0x3EL;
        uint64_t *l_135 = &p_883->g_115;
        uint64_t l_146 = 0x577C06B426EB45B5L;
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 7; j++)
                l_88[i][j] = (void*)0;
        }
        p_883->g_89[0][7][0]--;
        if (p_883->g_89[0][3][7])
        { /* block id: 20 */
            uint8_t l_92 = 250UL;
            int32_t l_108 = 0x4F170C45L;
            int64_t l_113 = 7L;
            uint64_t *l_114 = &p_883->g_115;
            int32_t l_116 = 0L;
            uint32_t *l_121 = &p_883->g_122;
            --l_92;
            for (p_76 = 0; (p_76 <= 4); p_76 += 1)
            { /* block id: 24 */
                for (p_883->g_86 = 0; (p_883->g_86 <= 0); p_883->g_86 += 1)
                { /* block id: 27 */
                    int i, j, k;
                    (*l_83) ^= 0x081FB719L;
                    p_883->g_103 &= (safe_rshift_func_int16_t_s_s(((l_79[p_77][(p_883->g_86 + 4)] != ((void*)0 == l_88[(p_883->g_86 + 2)][p_76])) && ((safe_div_func_uint32_t_u_u((GROUP_DIVERGE(1, 1) == ((((void*)0 != &p_77) != ((-1L) == (((safe_mod_func_int8_t_s_s(p_883->g_89[p_883->g_86][p_77][(p_77 + 1)], (safe_sub_func_uint8_t_u_u((((((((void*)0 != p_74) || p_77) , (-3L)) && p_77) , p_76) , l_92), 9L)))) <= (-1L)) ^ p_883->g_20))) ^ p_73)), p_73)) <= (-1L))), 4));
                }
            }
            l_108 = ((((p_76 < (l_116 ^= (l_79[4][0] < ((p_77 & ((*l_114) |= ((safe_mod_func_uint8_t_u_u(((((safe_mul_func_int16_t_s_s(l_108, ((GROUP_DIVERGE(1, 1) < ((*l_82) |= (((safe_div_func_int16_t_s_s(((((+((-1L) ^ p_75)) , p_883->g_89[0][7][0]) , (safe_sub_func_uint8_t_u_u((p_883->g_10 | l_92), p_883->g_60))) & (-5L)), 0x2562L)) , 0x2801F5D8L) <= 4294967288UL))) >= p_883->g_86))) , p_883->g_20) == 0x5BL) <= 0xC85BL), l_113)) != 0x54L))) != p_73)))) >= l_79[0][7]) < p_883->g_103) > l_108);
            l_126 |= ((p_883->g_10 , &p_883->g_86) == ((~(((safe_rshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((*l_121) = GROUP_DIVERGE(0, 1)), 0x1B86B2CCL)), 0)) , 9UL) < (safe_rshift_func_uint8_t_u_s((((FAKE_DIVERGE(p_883->global_1_offset, get_global_id(1), 10) != ((p_76 <= ((void*)0 == &p_883->g_60)) || l_125)) , 0UL) || l_92), p_76)))) , &p_883->g_20));
        }
        else
        { /* block id: 38 */
            uint8_t *l_132[7][6][6] = {{{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0}},{{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0}},{{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0}},{{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0}},{{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0}},{{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0}},{{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0},{(void*)0,(void*)0,&l_79[1][3],&l_79[0][1],&l_79[3][5],(void*)0}}};
            uint32_t *l_138 = &p_883->g_139[1][0][0];
            uint32_t *l_147 = &p_883->g_122;
            uint32_t *l_148[3][2];
            uint32_t l_150 = 0x6B982E97L;
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 2; j++)
                    l_148[i][j] = &p_883->g_149;
            }
            p_883->g_86 ^= (((p_75 != ((safe_lshift_func_uint16_t_u_s((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_883->local_0_offset, get_local_id(0), 10), (p_76 && (((*l_81) &= (p_883->g_131 &= ((FAKE_DIVERGE(p_883->local_1_offset, get_local_id(1), 10) < (p_73 | 0UL)) != p_883->g_115))) > ((!((safe_mod_func_uint16_t_u_u((((void*)0 == l_135) == ((safe_lshift_func_int16_t_s_u((((((*l_138)--) , (p_883->g_149 ^= ((*l_147) = ((safe_rshift_func_uint16_t_u_s((((p_883->g_139[1][0][0] < (safe_add_func_int16_t_s_s(((&p_883->g_139[1][2][2] != (void*)0) , l_146), p_883->g_89[0][1][1]))) <= p_883->g_89[0][1][5]) , l_126), 6)) < p_883->g_60)))) < 1L) != 9L), p_73)) >= l_79[1][1])), l_85)) || l_85)) || l_150))))), 8)) , l_150)) || l_126) <= 0x431DL);
        }
        for (p_883->g_115 = 0; (p_883->g_115 <= 4); p_883->g_115 += 1)
        { /* block id: 48 */
            int32_t l_151 = 0x638CD69FL;
            int32_t l_199[1];
            int i, j;
            for (i = 0; i < 1; i++)
                l_199[i] = 0x346776D9L;
            l_153++;
            if ((l_85 = ((*l_83) |= ((safe_lshift_func_uint16_t_u_u((l_79[p_883->g_115][(p_77 + 2)] || (p_883->g_158 != &p_883->g_159)), 10)) > (p_883->g_103 == 6UL)))))
            { /* block id: 52 */
                int64_t l_174 = 1L;
                int32_t l_177 = (-1L);
                for (p_76 = 1; (p_76 <= 4); p_76 += 1)
                { /* block id: 55 */
                    int32_t **l_160 = &l_82;
                    int32_t **l_161 = &l_88[0][0];
                    (*l_161) = ((*l_160) = &p_883->g_86);
                    (*l_80) |= 2L;
                    for (p_883->g_20 = 0; (p_883->g_20 <= 2); p_883->g_20 += 1)
                    { /* block id: 61 */
                        volatile uint32_t * volatile **l_165 = &p_883->g_162;
                        (*l_165) = p_883->g_162;
                    }
                    return l_85;
                }
                for (l_146 = 1; (l_146 <= 4); l_146 += 1)
                { /* block id: 68 */
                    int16_t *l_172[8][2] = {{&p_883->g_173,&p_883->g_173},{&p_883->g_173,&p_883->g_173},{&p_883->g_173,&p_883->g_173},{&p_883->g_173,&p_883->g_173},{&p_883->g_173,&p_883->g_173},{&p_883->g_173,&p_883->g_173},{&p_883->g_173,&p_883->g_173},{&p_883->g_173,&p_883->g_173}};
                    uint32_t *l_184 = (void*)0;
                    int32_t **l_185 = &l_88[1][4];
                    int i, j;
                    for (p_73 = 0; (p_73 <= 4); p_73 += 1)
                    { /* block id: 71 */
                        return p_883->g_139[1][0][0];
                    }
                    l_152[3][0][8] |= p_883->g_122;
                    l_152[2][0][7] = ((safe_div_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u(((safe_rshift_func_int16_t_s_s((l_174 = (*l_82)), 10)) < (safe_div_func_int32_t_s_s(p_76, 0xDE322FC8L))), 4)), l_177)) ^ (((*l_185) = (((void*)0 != p_883->g_178) , ((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s((((l_184 == &p_883->g_139[1][0][0]) , &p_883->g_139[0][1][1]) != p_74), 13)), 0x19L)) , p_74))) == &l_151));
                    for (l_153 = 1; (l_153 <= 4); l_153 += 1)
                    { /* block id: 80 */
                        int64_t *l_188 = &l_174;
                        int32_t l_189[6];
                        int32_t **l_196 = (void*)0;
                        int i;
                        for (i = 0; i < 6; i++)
                            l_189[i] = (-1L);
                        l_177 = (safe_lshift_func_int16_t_s_s(((((*l_188) = 0x6DE46C11320EAB87L) , ((l_189[2] >= 0L) && (p_76 , (((((safe_add_func_uint64_t_u_u((safe_add_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s(l_174, ((&l_88[2][3] != (p_76 , l_196)) <= p_73))), p_883->g_89[0][7][0])), p_883->g_115)) == p_77) != p_883->g_89[0][7][0]) >= p_73) | 0x16F70F242EEF4D9AL)))) >= p_883->g_20), 2));
                    }
                }
                for (p_883->g_131 = 0; p_883->g_131 < 2; p_883->g_131 += 1)
                {
                    for (p_883->g_173 = 0; p_883->g_173 < 9; p_883->g_173 += 1)
                    {
                        for (p_883->g_122 = 0; p_883->g_122 < 3; p_883->g_122 += 1)
                        {
                            p_883->g_139[p_883->g_131][p_883->g_173][p_883->g_122] = 0x61831C3EL;
                        }
                    }
                }
            }
            else
            { /* block id: 86 */
                int32_t l_200 = 0x7911611CL;
                int32_t l_201 = 0L;
                ++p_883->g_205;
            }
            if (l_126)
                break;
        }
    }
    return p_75;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_884;
    struct S0* p_883 = &c_884;
    struct S0 c_885 = {
        4294967291UL, // p_883->g_10
        4294967288UL, // p_883->g_15
        0x458BDFADL, // p_883->g_20
        0UL, // p_883->g_25
        0x09ED5B60L, // p_883->g_60
        (-1L), // p_883->g_86
        {{{65527UL,65527UL,0xCDE8L,0xFC30L,0xDF1DL,0xFC30L,0xCDE8L,65527UL,65527UL},{65527UL,65527UL,0xCDE8L,0xFC30L,0xDF1DL,0xFC30L,0xCDE8L,65527UL,65527UL},{65527UL,65527UL,0xCDE8L,0xFC30L,0xDF1DL,0xFC30L,0xCDE8L,65527UL,65527UL},{65527UL,65527UL,0xCDE8L,0xFC30L,0xDF1DL,0xFC30L,0xCDE8L,65527UL,65527UL},{65527UL,65527UL,0xCDE8L,0xFC30L,0xDF1DL,0xFC30L,0xCDE8L,65527UL,65527UL},{65527UL,65527UL,0xCDE8L,0xFC30L,0xDF1DL,0xFC30L,0xCDE8L,65527UL,65527UL},{65527UL,65527UL,0xCDE8L,0xFC30L,0xDF1DL,0xFC30L,0xCDE8L,65527UL,65527UL},{65527UL,65527UL,0xCDE8L,0xFC30L,0xDF1DL,0xFC30L,0xCDE8L,65527UL,65527UL}}}, // p_883->g_89
        0x2ED0E349L, // p_883->g_103
        0x1CA980D5298B49A5L, // p_883->g_115
        0x0FEBE71BL, // p_883->g_122
        8L, // p_883->g_131
        {{{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L}},{{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L},{0xFC7FA6F0L,1UL,0xFC7FA6F0L}}}, // p_883->g_139
        0x6558982AL, // p_883->g_149
        (void*)0, // p_883->g_159
        &p_883->g_159, // p_883->g_158
        {0UL,0UL,0UL,0UL,0UL}, // p_883->g_164
        &p_883->g_164[4], // p_883->g_163
        &p_883->g_163, // p_883->g_162
        0x5D3BL, // p_883->g_173
        &p_883->g_163, // p_883->g_179
        &p_883->g_179, // p_883->g_178
        0x004189EEL, // p_883->g_197
        0L, // p_883->g_198
        6L, // p_883->g_202
        0x712EL, // p_883->g_203
        (-4L), // p_883->g_204
        1UL, // p_883->g_205
        0x2BL, // p_883->g_231
        0UL, // p_883->g_245
        &p_883->g_245, // p_883->g_244
        &p_883->g_244, // p_883->g_243
        (-7L), // p_883->g_254
        0L, // p_883->g_256
        {0x57ABL,0x57ABL,0x57ABL,0x57ABL}, // p_883->g_257
        (void*)0, // p_883->g_280
        {{&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122},{&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122},{&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122},{&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122},{&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122},{&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122},{&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122},{&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122},{&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122,&p_883->g_122,(void*)0,&p_883->g_122,&p_883->g_122}}, // p_883->g_301
        &p_883->g_301[5][6], // p_883->g_300
        &p_883->g_300, // p_883->g_299
        (void*)0, // p_883->g_359
        {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}}, // p_883->g_414
        4294967288UL, // p_883->g_424
        9UL, // p_883->g_439
        (void*)0, // p_883->g_464
        0UL, // p_883->g_482
        &p_883->g_20, // p_883->g_485
        9L, // p_883->g_511
        {{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)}}, // p_883->g_515
        1UL, // p_883->g_582
        65531UL, // p_883->g_590
        18446744073709551606UL, // p_883->g_625
        0x1AL, // p_883->g_637
        &p_883->g_637, // p_883->g_636
        0x6A1DD339L, // p_883->g_697
        4294967288UL, // p_883->g_832
        &p_883->g_10, // p_883->g_866
        0UL, // p_883->g_875
        (-6L), // p_883->g_877
        sequence_input[get_global_id(0)], // p_883->global_0_offset
        sequence_input[get_global_id(1)], // p_883->global_1_offset
        sequence_input[get_global_id(2)], // p_883->global_2_offset
        sequence_input[get_local_id(0)], // p_883->local_0_offset
        sequence_input[get_local_id(1)], // p_883->local_1_offset
        sequence_input[get_local_id(2)], // p_883->local_2_offset
        sequence_input[get_group_id(0)], // p_883->group_0_offset
        sequence_input[get_group_id(1)], // p_883->group_1_offset
        sequence_input[get_group_id(2)], // p_883->group_2_offset
    };
    c_884 = c_885;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_883);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_883->g_10, "p_883->g_10", print_hash_value);
    transparent_crc(p_883->g_15, "p_883->g_15", print_hash_value);
    transparent_crc(p_883->g_20, "p_883->g_20", print_hash_value);
    transparent_crc(p_883->g_25, "p_883->g_25", print_hash_value);
    transparent_crc(p_883->g_60, "p_883->g_60", print_hash_value);
    transparent_crc(p_883->g_86, "p_883->g_86", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_883->g_89[i][j][k], "p_883->g_89[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_883->g_103, "p_883->g_103", print_hash_value);
    transparent_crc(p_883->g_115, "p_883->g_115", print_hash_value);
    transparent_crc(p_883->g_122, "p_883->g_122", print_hash_value);
    transparent_crc(p_883->g_131, "p_883->g_131", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_883->g_139[i][j][k], "p_883->g_139[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_883->g_149, "p_883->g_149", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_883->g_164[i], "p_883->g_164[i]", print_hash_value);

    }
    transparent_crc(p_883->g_173, "p_883->g_173", print_hash_value);
    transparent_crc(p_883->g_197, "p_883->g_197", print_hash_value);
    transparent_crc(p_883->g_198, "p_883->g_198", print_hash_value);
    transparent_crc(p_883->g_202, "p_883->g_202", print_hash_value);
    transparent_crc(p_883->g_203, "p_883->g_203", print_hash_value);
    transparent_crc(p_883->g_204, "p_883->g_204", print_hash_value);
    transparent_crc(p_883->g_205, "p_883->g_205", print_hash_value);
    transparent_crc(p_883->g_231, "p_883->g_231", print_hash_value);
    transparent_crc(p_883->g_245, "p_883->g_245", print_hash_value);
    transparent_crc(p_883->g_254, "p_883->g_254", print_hash_value);
    transparent_crc(p_883->g_256, "p_883->g_256", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_883->g_257[i], "p_883->g_257[i]", print_hash_value);

    }
    transparent_crc(p_883->g_424, "p_883->g_424", print_hash_value);
    transparent_crc(p_883->g_439, "p_883->g_439", print_hash_value);
    transparent_crc(p_883->g_482, "p_883->g_482", print_hash_value);
    transparent_crc(p_883->g_511, "p_883->g_511", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_883->g_515[i][j], "p_883->g_515[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_883->g_582, "p_883->g_582", print_hash_value);
    transparent_crc(p_883->g_590, "p_883->g_590", print_hash_value);
    transparent_crc(p_883->g_625, "p_883->g_625", print_hash_value);
    transparent_crc(p_883->g_637, "p_883->g_637", print_hash_value);
    transparent_crc(p_883->g_697, "p_883->g_697", print_hash_value);
    transparent_crc(p_883->g_832, "p_883->g_832", print_hash_value);
    transparent_crc(p_883->g_875, "p_883->g_875", print_hash_value);
    transparent_crc(p_883->g_877, "p_883->g_877", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
