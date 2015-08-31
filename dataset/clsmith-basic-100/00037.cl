// ---fake_divergence -g 3,2,377 -l 3,2,13
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


// Seed: 37

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    int32_t g_7;
    uint32_t g_9[8][3][6];
    int8_t g_65;
    uint16_t g_80;
    uint64_t g_84[1];
    volatile int16_t g_86;
    volatile int16_t *g_85[8][5][6];
    int32_t * volatile g_87[7][7][2];
    uint16_t *g_101;
    uint16_t * volatile *g_100;
    uint16_t * volatile ** volatile g_102[10][6];
    int16_t g_118;
    uint32_t g_128[2][8];
    int64_t g_135;
    int32_t g_161;
    int32_t * volatile g_169;
    int32_t g_171;
    int32_t *g_170;
    int32_t ** volatile g_181;
    int32_t g_191;
    int32_t g_193;
    int32_t *g_192;
    volatile int16_t * volatile *g_197;
    volatile int16_t * volatile **g_196;
    volatile uint32_t g_222;
    uint32_t g_252[2];
    uint32_t g_281;
    int32_t g_301[8];
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
uint64_t  func_1(struct S1 * p_322);
int32_t * func_2(int32_t  p_3, int32_t * p_4, uint32_t  p_5, int32_t  p_6, struct S1 * p_322);
int32_t  func_13(int32_t  p_14, uint64_t  p_15, uint32_t  p_16, struct S1 * p_322);
uint8_t  func_22(int64_t  p_23, uint32_t * p_24, uint64_t  p_25, uint64_t  p_26, int32_t * p_27, struct S1 * p_322);
uint32_t * func_28(uint64_t  p_29, uint32_t  p_30, int32_t * p_31, uint32_t * p_32, struct S1 * p_322);
int16_t  func_33(int32_t * p_34, struct S1 * p_322);
int32_t * func_35(int32_t * p_36, struct S1 * p_322);
int32_t * func_37(int32_t  p_38, int64_t  p_39, struct S1 * p_322);
int32_t  func_40(uint32_t  p_41, uint16_t  p_42, uint32_t * p_43, struct S1 * p_322);
int32_t  func_50(uint8_t  p_51, struct S1 * p_322);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_322->g_7 p_322->g_9 p_322->g_193 p_322->g_281 p_322->g_128 p_322->g_118 p_322->g_100 p_322->g_101 p_322->g_80 p_322->g_170 p_322->g_171 p_322->g_252 p_322->g_84 p_322->g_301 p_322->g_181
 * writes: p_322->g_9 p_322->g_281 p_322->g_84 p_322->g_118 p_322->g_171 p_322->g_301 p_322->g_7 p_322->g_192 p_322->g_170
 */
uint64_t  func_1(struct S1 * p_322)
{ /* block id: 4 */
    uint32_t *l_8[6];
    int32_t l_10 = 0x1F145BA1L;
    int32_t **l_302 = &p_322->g_192;
    int32_t **l_303 = &p_322->g_170;
    int32_t *l_316 = &p_322->g_193;
    uint8_t l_317[10] = {1UL,255UL,1UL,255UL,1UL,1UL,255UL,1UL,255UL,1UL};
    uint8_t *l_320 = &l_317[0];
    int8_t *l_321[10] = {&p_322->g_65,&p_322->g_65,&p_322->g_65,&p_322->g_65,&p_322->g_65,&p_322->g_65,&p_322->g_65,&p_322->g_65,&p_322->g_65,&p_322->g_65};
    int i;
    for (i = 0; i < 6; i++)
        l_8[i] = &p_322->g_9[2][0][5];
    (*l_303) = ((*l_302) = func_2(p_322->g_7, &p_322->g_7, (--p_322->g_9[4][2][1]), p_322->g_7, p_322));
    (*l_302) = (*p_322->g_181);
    (*l_302) = (*l_303);
    return p_322->g_252[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_322->g_193 p_322->g_281 p_322->g_128 p_322->g_9 p_322->g_7 p_322->g_118 p_322->g_100 p_322->g_101 p_322->g_80 p_322->g_170 p_322->g_171 p_322->g_252 p_322->g_84 p_322->g_301 p_322->g_181
 * writes: p_322->g_281 p_322->g_84 p_322->g_118 p_322->g_171 p_322->g_301 p_322->g_7
 */
int32_t * func_2(int32_t  p_3, int32_t * p_4, uint32_t  p_5, int32_t  p_6, struct S1 * p_322)
{ /* block id: 6 */
    uint16_t l_226 = 0UL;
    int16_t *l_275 = &p_322->g_118;
    int16_t **l_274 = &l_275;
    int16_t ***l_273 = &l_274;
    int32_t l_278[3][3][10] = {{{(-1L),0x3205A4E5L,0x1C7FAE4AL,0x06D647E4L,(-7L),(-1L),0x06D647E4L,(-5L),0x06D647E4L,(-1L)},{(-1L),0x3205A4E5L,0x1C7FAE4AL,0x06D647E4L,(-7L),(-1L),0x06D647E4L,(-5L),0x06D647E4L,(-1L)},{(-1L),0x3205A4E5L,0x1C7FAE4AL,0x06D647E4L,(-7L),(-1L),0x06D647E4L,(-5L),0x06D647E4L,(-1L)}},{{(-1L),0x3205A4E5L,0x1C7FAE4AL,0x06D647E4L,(-7L),(-1L),0x06D647E4L,(-5L),0x06D647E4L,(-1L)},{(-1L),0x3205A4E5L,0x1C7FAE4AL,0x06D647E4L,(-7L),(-1L),0x06D647E4L,(-5L),0x06D647E4L,(-1L)},{(-1L),0x3205A4E5L,0x1C7FAE4AL,0x06D647E4L,(-7L),(-1L),0x06D647E4L,(-5L),0x06D647E4L,(-1L)}},{{(-1L),0x3205A4E5L,0x1C7FAE4AL,0x06D647E4L,(-7L),(-1L),0x06D647E4L,(-5L),0x06D647E4L,(-1L)},{(-1L),0x3205A4E5L,0x1C7FAE4AL,0x06D647E4L,(-7L),(-1L),0x06D647E4L,(-5L),0x06D647E4L,(-1L)},{(-1L),0x3205A4E5L,0x1C7FAE4AL,0x06D647E4L,(-7L),(-1L),0x06D647E4L,(-5L),0x06D647E4L,(-1L)}}};
    int32_t l_279[5];
    uint8_t *l_280[1];
    int16_t l_290 = 6L;
    uint64_t *l_291 = &p_322->g_84[0];
    uint32_t l_300[1];
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_279[i] = 0x3827196CL;
    for (i = 0; i < 1; i++)
        l_280[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_300[i] = 0x0D1E5C2CL;
    for (p_6 = 2; (p_6 >= 0); p_6 -= 1)
    { /* block id: 9 */
        uint64_t l_19 = 0x885BD52A284868FDL;
        int32_t *l_167[7][8][4] = {{{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161}},{{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161}},{{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161}},{{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161}},{{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161}},{{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161}},{{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161},{&p_322->g_161,&p_322->g_161,&p_322->g_7,&p_322->g_161}}};
        int32_t **l_166 = &l_167[6][6][3];
        int i, j, k;
        (1 + 1);
    }
    (*p_322->g_170) &= (((*l_275) |= ((safe_div_func_int32_t_s_s(((l_273 != (void*)0) >= ((((1UL >= (((*l_291) = (safe_mul_func_uint8_t_u_u((l_279[0] = ((0L != (p_322->g_193 < ((l_278[2][0][3] >= ((p_322->g_281--) && ((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u(l_278[1][2][8], l_226)), (((safe_div_func_uint16_t_u_u((p_322->g_128[1][5] , l_278[2][0][3]), l_290)) >= 0x533FD097L) ^ p_5))) < p_3))) >= p_5))) < l_279[4])), GROUP_DIVERGE(2, 1)))) >= 1L)) | p_6) <= 0x1DBE71DBL) ^ p_322->g_9[2][1][3])), 0x43FDCEB1L)) ^ (*p_4))) >= (**p_322->g_100));
    (*p_4) |= ((safe_lshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((void*)0 != (**l_273)), (0L & ((safe_sub_func_uint8_t_u_u((p_322->g_301[2] |= (~((safe_mod_func_int8_t_s_s(p_322->g_128[1][5], p_322->g_118)) > (p_322->g_252[1] | (((~(l_300[0] , p_322->g_193)) == ((((0UL && p_3) | p_322->g_84[0]) , p_5) >= l_278[2][0][3])) && l_278[0][0][8]))))), 0L)) > p_6)))), p_6)) == p_3);
    return (*p_322->g_181);
}


/* ------------------------------------------ */
/* 
 * reads : p_322->g_86 p_322->g_128 p_322->g_252 p_322->g_193 p_322->g_7 p_322->g_100 p_322->g_101 p_322->g_80
 * writes: p_322->g_252
 */
int32_t  func_13(int32_t  p_14, uint64_t  p_15, uint32_t  p_16, struct S1 * p_322)
{ /* block id: 122 */
    uint64_t l_247 = 18446744073709551612UL;
    int32_t l_250 = (-6L);
    uint32_t *l_251[8] = {&p_322->g_252[1],&p_322->g_252[1],&p_322->g_252[1],&p_322->g_252[1],&p_322->g_252[1],&p_322->g_252[1],&p_322->g_252[1],&p_322->g_252[1]};
    int32_t l_253 = 0L;
    int32_t l_254 = 0x5B59948BL;
    int32_t l_255 = (-1L);
    int32_t l_268 = 0L;
    int32_t l_269[4] = {0L,0L,0L,0L};
    uint32_t l_270[8][2] = {{0x0EF7442AL,8UL},{0x0EF7442AL,8UL},{0x0EF7442AL,8UL},{0x0EF7442AL,8UL},{0x0EF7442AL,8UL},{0x0EF7442AL,8UL},{0x0EF7442AL,8UL},{0x0EF7442AL,8UL}};
    int i, j;
    l_269[3] &= (safe_mod_func_uint16_t_u_u((safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(p_322->g_86, p_15)), (p_14 == FAKE_DIVERGE(p_322->group_2_offset, get_group_id(2), 10)))), (safe_sub_func_int32_t_s_s(((safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((p_16 <= (safe_rshift_func_int16_t_s_u((((safe_rshift_func_int8_t_s_s((l_247 = (safe_add_func_int8_t_s_s((p_322->g_128[1][5] > GROUP_DIVERGE(1, 1)), p_15))), 4)) <= ((safe_rshift_func_uint16_t_u_s(((((l_250 <= (((((((((--p_322->g_252[0]) != (safe_lshift_func_uint8_t_u_u(255UL, 2))) , (safe_div_func_uint64_t_u_u((safe_add_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(l_253, p_14)), 5)), 0x7C10L)), p_322->g_128[1][5]))) , p_322->g_193) , p_322->g_7) , (**p_322->g_100)) != (**p_322->g_100)) || p_322->g_128[1][5]) >= 0x2895EEB29476F643L)) != l_253) <= p_15) , p_14), l_255)) , 1L)) | l_254), (**p_322->g_100)))), 6)), FAKE_DIVERGE(p_322->group_2_offset, get_group_id(2), 10))), p_322->g_193)) , l_268), l_250))));
    return l_270[6][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_322->g_196 p_322->g_101 p_322->g_80 p_322->g_84 p_322->g_222
 * writes: p_322->g_222
 */
uint8_t  func_22(int64_t  p_23, uint32_t * p_24, uint64_t  p_25, uint64_t  p_26, int32_t * p_27, struct S1 * p_322)
{ /* block id: 113 */
    int16_t ***l_198 = (void*)0;
    uint64_t l_209[6] = {0xE801AB67E062F4CFL,8UL,0xE801AB67E062F4CFL,0xE801AB67E062F4CFL,8UL,0xE801AB67E062F4CFL};
    int32_t l_210 = 0x58F9857EL;
    int32_t l_214 = 0x2575A83EL;
    int32_t l_215 = 0x6A347EEFL;
    int32_t l_220[6];
    int32_t **l_225[9] = {&p_322->g_170,&p_322->g_170,&p_322->g_170,&p_322->g_170,&p_322->g_170,&p_322->g_170,&p_322->g_170,&p_322->g_170,&p_322->g_170};
    int i;
    for (i = 0; i < 6; i++)
        l_220[i] = 0x435386F4L;
    l_210 = (safe_add_func_uint8_t_u_u(((((((p_322->g_196 == l_198) | (0UL != (safe_add_func_uint64_t_u_u((safe_mul_func_int16_t_s_s(p_25, ((&p_322->g_84[0] != (void*)0) , p_23))), ((((safe_mod_func_int8_t_s_s(p_26, (safe_sub_func_uint32_t_u_u(((((safe_div_func_uint32_t_u_u((l_209[1] ^ 65527UL), 4294967294UL)) != l_209[1]) <= 0x67EDCCD7L) >= 0x71AEL), l_209[2])))) == 0x22L) ^ 18446744073709551615UL) < p_26))))) == l_209[1]) != l_209[1]) , 0x1A90L) | (*p_322->g_101)), p_322->g_84[0]));
    for (l_210 = 0; (l_210 == 7); ++l_210)
    { /* block id: 117 */
        int32_t *l_213 = &p_322->g_193;
        int32_t *l_216 = &p_322->g_7;
        int32_t *l_217 = &p_322->g_161;
        int32_t *l_218 = (void*)0;
        int32_t *l_219[1][9] = {{&p_322->g_7,&p_322->g_7,&p_322->g_7,&p_322->g_7,&p_322->g_7,&p_322->g_7,&p_322->g_7,&p_322->g_7,&p_322->g_7}};
        int8_t l_221 = 9L;
        int i, j;
        p_322->g_222++;
    }
    p_27 = p_27;
    return p_322->g_84[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_322->g_9 p_322->g_171 p_322->g_100 p_322->g_101 p_322->g_181 p_322->g_118
 * writes: p_322->g_80 p_322->g_171 p_322->g_170 p_322->g_86 p_322->g_85 p_322->g_118
 */
uint32_t * func_28(uint64_t  p_29, uint32_t  p_30, int32_t * p_31, uint32_t * p_32, struct S1 * p_322)
{ /* block id: 98 */
    int8_t l_178 = 0x72L;
    int32_t *l_180[3][3][3] = {{{(void*)0,&p_322->g_171,(void*)0},{(void*)0,&p_322->g_171,(void*)0},{(void*)0,&p_322->g_171,(void*)0}},{{(void*)0,&p_322->g_171,(void*)0},{(void*)0,&p_322->g_171,(void*)0},{(void*)0,&p_322->g_171,(void*)0}},{{(void*)0,&p_322->g_171,(void*)0},{(void*)0,&p_322->g_171,(void*)0},{(void*)0,&p_322->g_171,(void*)0}}};
    int i, j, k;
    if ((((p_322->g_9[1][2][3] || (p_30 && (safe_mod_func_int16_t_s_s(((+(0x9385D059L <= 0x182948B3L)) , (((**p_322->g_100) = (p_30 != ((safe_add_func_int64_t_s_s((-1L), ((*p_31) , p_29))) ^ (safe_add_func_int32_t_s_s(l_178, p_29))))) , (-7L))), FAKE_DIVERGE(p_322->local_0_offset, get_local_id(0), 10))))) <= p_30) | 0x4960B144L))
    { /* block id: 100 */
        int16_t l_179 = 0x79DBL;
        int32_t l_182 = (-8L);
        int32_t l_183 = 0x6AA3D206L;
        int32_t l_184 = 0L;
        uint32_t l_185[1];
        int i;
        for (i = 0; i < 1; i++)
            l_185[i] = 0x023009E3L;
        (*p_31) ^= l_179;
        (*p_322->g_181) = l_180[2][2][2];
        l_185[0]--;
    }
    else
    { /* block id: 104 */
        int32_t *l_190 = &p_322->g_7;
        for (p_30 = 0; p_30 < 8; p_30 += 1)
        {
            for (l_178 = 0; l_178 < 5; l_178 += 1)
            {
                for (p_322->g_86 = 0; p_322->g_86 < 6; p_322->g_86 += 1)
                {
                    p_322->g_85[p_30][l_178][p_322->g_86] = &p_322->g_86;
                }
            }
        }
        for (p_322->g_118 = 0; (p_322->g_118 == 0); ++p_322->g_118)
        { /* block id: 108 */
            l_190 = l_180[2][2][2];
        }
    }
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_322->g_169 p_322->g_7
 * writes: p_322->g_7
 */
int16_t  func_33(int32_t * p_34, struct S1 * p_322)
{ /* block id: 95 */
    uint16_t l_168 = 0x7BC3L;
    (*p_322->g_169) &= l_168;
    return l_168;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_35(int32_t * p_36, struct S1 * p_322)
{ /* block id: 91 */
    uint64_t l_162 = 0UL;
    int32_t *l_165 = (void*)0;
    --l_162;
    return l_165;
}


/* ------------------------------------------ */
/* 
 * reads : p_322->g_7 p_322->g_161
 * writes: p_322->g_161
 */
int32_t * func_37(int32_t  p_38, int64_t  p_39, struct S1 * p_322)
{ /* block id: 87 */
    int32_t *l_158 = &p_322->g_7;
    int32_t **l_159 = &l_158;
    int32_t *l_160 = &p_322->g_161;
    (*l_159) = l_158;
    (*l_160) &= (**l_159);
    return &p_322->g_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_322->g_7 p_322->g_9 p_322->g_65 p_322->g_84 p_322->g_85 p_322->g_100 p_322->g_80 p_322->g_101 p_322->g_118 p_322->g_128 p_322->g_135
 * writes: p_322->g_7 p_322->g_65 p_322->g_80 p_322->g_84 p_322->g_9 p_322->g_100 p_322->g_128 p_322->g_135 p_322->g_118
 */
int32_t  func_40(uint32_t  p_41, uint16_t  p_42, uint32_t * p_43, struct S1 * p_322)
{ /* block id: 10 */
    uint64_t l_55[3][5][3] = {{{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL}},{{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL}},{{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL},{0xBBBD28A21817887BL,18446744073709551615UL,18446744073709551607UL}}};
    uint64_t l_81 = 0x80536D0B4E555501L;
    int32_t l_93[6];
    int16_t *l_117 = &p_322->g_118;
    int32_t l_138 = 0x35E22BCFL;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_93[i] = 7L;
    for (p_42 = 0; (p_42 != 26); ++p_42)
    { /* block id: 13 */
        int16_t l_53 = 0x2839L;
        int32_t l_89 = (-1L);
        int16_t *l_110[5][4][7] = {{{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53}},{{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53}},{{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53}},{{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53}},{{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,(void*)0,&l_53,&l_53}}};
        int16_t **l_109 = &l_110[1][2][2];
        int16_t *l_116 = &l_53;
        int16_t **l_115 = &l_116;
        uint32_t l_134 = 1UL;
        int i, j, k;
        if (p_42)
        { /* block id: 14 */
            uint32_t l_54[9];
            int16_t *l_58 = &l_53;
            int8_t *l_63 = (void*)0;
            int8_t *l_64 = &p_322->g_65;
            int32_t *l_69 = &p_322->g_7;
            int32_t **l_68 = &l_69;
            int32_t **l_70 = (void*)0;
            int32_t *l_72 = &p_322->g_7;
            int32_t **l_71 = &l_72;
            uint16_t *l_79 = &p_322->g_80;
            uint64_t *l_82 = &l_55[1][3][0];
            uint64_t *l_83 = &p_322->g_84[0];
            int32_t *l_88[5][6];
            int i, j;
            for (i = 0; i < 9; i++)
                l_54[i] = 0UL;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 6; j++)
                    l_88[i][j] = &p_322->g_7;
            }
            for (p_41 = 0; (p_41 <= 50); p_41++)
            { /* block id: 17 */
                for (p_322->g_7 = 15; (p_322->g_7 > 17); ++p_322->g_7)
                { /* block id: 20 */
                    if (p_322->g_9[6][0][4])
                        break;
                }
                if (p_322->g_9[2][0][5])
                    break;
                return p_41;
            }
            l_53 = func_50(p_322->g_7, p_322);
            l_55[1][3][0] |= l_54[7];
            l_89 = ((safe_lshift_func_int16_t_s_s(((*l_58) = (~p_322->g_9[0][2][3])), 6)) , (safe_lshift_func_int16_t_s_s(((((*l_83) |= ((safe_rshift_func_uint16_t_u_u((((*l_64) &= ((void*)0 != &l_53)) > l_54[7]), 7)) , ((*l_82) ^= ((safe_lshift_func_int8_t_s_s(((((*l_71) = ((*l_68) = p_43)) != (((p_41 != (((safe_add_func_uint32_t_u_u(((((+((safe_lshift_func_uint16_t_u_u(((*l_79) = (safe_lshift_func_int8_t_s_s((p_41 , p_322->g_9[4][0][4]), ((0x54C1C085L >= 0x2DFF541EL) ^ 1UL)))), 13)) ^ p_41)) | l_81) == l_53) > p_322->g_7), p_322->g_9[2][0][5])) >= l_53) , p_322->g_9[2][0][5])) < p_322->g_9[2][0][5]) , (void*)0)) != 4L), 6)) > 9L)))) , p_322->g_85[5][0][3]) == &p_322->g_86), 6)));
        }
        else
        { /* block id: 39 */
            uint32_t *l_97 = (void*)0;
            uint32_t **l_96 = &l_97;
            for (p_322->g_65 = 0; (p_322->g_65 != 20); p_322->g_65++)
            { /* block id: 42 */
                int32_t *l_92[2][8][2] = {{{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89}},{{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89},{&l_89,&l_89}}};
                int i, j, k;
                l_93[5] = p_41;
            }
            for (p_41 = (-2); (p_41 <= 22); p_41 = safe_add_func_uint64_t_u_u(p_41, 3))
            { /* block id: 47 */
                uint32_t ***l_98 = (void*)0;
                uint32_t ***l_99 = &l_96;
                uint16_t * volatile **l_103 = &p_322->g_100;
                (*l_99) = l_96;
                for (p_322->g_65 = 0; p_322->g_65 < 8; p_322->g_65 += 1)
                {
                    for (p_322->g_80 = 0; p_322->g_80 < 3; p_322->g_80 += 1)
                    {
                        for (l_81 = 0; l_81 < 6; l_81 += 1)
                        {
                            p_322->g_9[p_322->g_65][p_322->g_80][l_81] = 4294967287UL;
                        }
                    }
                }
                if (p_42)
                    break;
                (*l_103) = p_322->g_100;
            }
            for (l_81 = 0; (l_81 == 10); l_81 = safe_add_func_int16_t_s_s(l_81, 6))
            { /* block id: 55 */
                int16_t *l_108[6][6] = {{&l_53,&l_53,&l_53,&l_53,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,&l_53,&l_53},{&l_53,&l_53,&l_53,&l_53,&l_53,&l_53}};
                int16_t **l_107 = &l_108[3][3];
                int16_t ***l_106 = &l_107;
                int i, j;
                l_109 = ((*l_106) = (void*)0);
                return p_322->g_80;
            }
        }
        if (((safe_mod_func_int8_t_s_s((safe_add_func_int64_t_s_s((((*l_115) = ((*l_109) = p_322->g_101)) != l_117), p_322->g_118)), (l_81 , p_322->g_65))) & (safe_rshift_func_uint16_t_u_u((l_89 , (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), 10))), (safe_lshift_func_int16_t_s_u((((p_41 || ((((0x55FAL >= (((void*)0 != &l_117) <= 0x79L)) > p_322->g_9[1][1][0]) <= FAKE_DIVERGE(p_322->group_2_offset, get_group_id(2), 10)) || 0xBC1C087C3A5C4F2FL)) == 9UL) || 0xAC88EEA078BFD083L), 14))))))
        { /* block id: 63 */
            uint32_t *l_127 = &p_322->g_128[1][5];
            int32_t *l_131 = (void*)0;
            l_93[1] = ((++(*l_127)) , l_89);
            for (l_89 = 26; (l_89 == 9); l_89 = safe_sub_func_int64_t_s_s(l_89, 5))
            { /* block id: 68 */
                uint32_t l_136 = 4294967290UL;
                int32_t *l_137 = &l_93[5];
                l_138 &= ((*l_137) = ((p_322->g_135 = l_134) , l_136));
                return p_322->g_65;
            }
        }
        else
        { /* block id: 74 */
            int32_t *l_139 = &l_93[5];
            int32_t *l_140 = &l_138;
            int32_t *l_141 = &l_89;
            int32_t *l_142[8][4][7] = {{{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]}},{{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]}},{{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]}},{{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]}},{{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]}},{{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]}},{{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]}},{{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]},{&l_93[2],&l_93[5],&l_93[0],&l_93[4],&l_93[5],&l_93[4],&l_93[0]}}};
            uint32_t l_143 = 4294967286UL;
            int i, j, k;
            --l_143;
            (*l_140) = (((l_134 ^ (((safe_add_func_uint8_t_u_u(p_41, ((safe_add_func_uint16_t_u_u((safe_add_func_int64_t_s_s(p_41, p_41)), (((*l_139) || (((((l_89 = ((safe_div_func_int8_t_s_s((((void*)0 == (*l_115)) <= ((safe_mul_func_int16_t_s_s(((*l_117) = (&p_322->g_118 != (void*)0)), p_41)) != GROUP_DIVERGE(1, 1))), 1L)) , p_322->g_7)) != p_42) > (*l_140)) > p_322->g_135) >= FAKE_DIVERGE(p_322->global_1_offset, get_global_id(1), 10))) , (-1L)))) != p_322->g_128[1][5]))) != (*l_140)) , 0xC208L)) , GROUP_DIVERGE(2, 1)) || (-1L));
            for (l_81 = (-29); (l_81 != 3); l_81++)
            { /* block id: 81 */
                if (p_41)
                    break;
            }
        }
    }
    return p_322->g_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_322->g_7
 * writes: p_322->g_7
 */
int32_t  func_50(uint8_t  p_51, struct S1 * p_322)
{ /* block id: 26 */
    int32_t *l_52 = &p_322->g_7;
    (*l_52) = (-9L);
    return p_322->g_7;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_323;
    struct S1* p_322 = &c_323;
    struct S1 c_324 = {
        0L, // p_322->g_7
        {{{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L}},{{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L}},{{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L}},{{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L}},{{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L}},{{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L}},{{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L}},{{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L},{0UL,0x085C9E53L,0x085C9E53L,0UL,0xDAAB72B2L,0x3F17E2F9L}}}, // p_322->g_9
        (-1L), // p_322->g_65
        0x9AA8L, // p_322->g_80
        {0x9AB98CFE46DA0476L}, // p_322->g_84
        0x59B2L, // p_322->g_86
        {{{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86}},{{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86}},{{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86}},{{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86}},{{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86}},{{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86}},{{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86}},{{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86},{&p_322->g_86,&p_322->g_86,&p_322->g_86,(void*)0,(void*)0,&p_322->g_86}}}, // p_322->g_85
        {{{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7}},{{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7}},{{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7}},{{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7}},{{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7}},{{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7}},{{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7},{(void*)0,&p_322->g_7}}}, // p_322->g_87
        &p_322->g_80, // p_322->g_101
        &p_322->g_101, // p_322->g_100
        {{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100},{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100},{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100},{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100},{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100},{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100},{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100},{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100},{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100},{&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100,&p_322->g_100}}, // p_322->g_102
        0x2DB2L, // p_322->g_118
        {{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}}, // p_322->g_128
        (-1L), // p_322->g_135
        1L, // p_322->g_161
        &p_322->g_7, // p_322->g_169
        3L, // p_322->g_171
        &p_322->g_171, // p_322->g_170
        &p_322->g_170, // p_322->g_181
        0x7E9A6307L, // p_322->g_191
        2L, // p_322->g_193
        &p_322->g_193, // p_322->g_192
        (void*)0, // p_322->g_197
        &p_322->g_197, // p_322->g_196
        4UL, // p_322->g_222
        {1UL,1UL}, // p_322->g_252
        0xD7FDA7F2L, // p_322->g_281
        {0L,(-1L),0L,0L,(-1L),0L,0L,(-1L)}, // p_322->g_301
        sequence_input[get_global_id(0)], // p_322->global_0_offset
        sequence_input[get_global_id(1)], // p_322->global_1_offset
        sequence_input[get_global_id(2)], // p_322->global_2_offset
        sequence_input[get_local_id(0)], // p_322->local_0_offset
        sequence_input[get_local_id(1)], // p_322->local_1_offset
        sequence_input[get_local_id(2)], // p_322->local_2_offset
        sequence_input[get_group_id(0)], // p_322->group_0_offset
        sequence_input[get_group_id(1)], // p_322->group_1_offset
        sequence_input[get_group_id(2)], // p_322->group_2_offset
    };
    c_323 = c_324;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_322);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_322->g_7, "p_322->g_7", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_322->g_9[i][j][k], "p_322->g_9[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_322->g_65, "p_322->g_65", print_hash_value);
    transparent_crc(p_322->g_80, "p_322->g_80", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_322->g_84[i], "p_322->g_84[i]", print_hash_value);

    }
    transparent_crc(p_322->g_86, "p_322->g_86", print_hash_value);
    transparent_crc(p_322->g_118, "p_322->g_118", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_322->g_128[i][j], "p_322->g_128[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_322->g_135, "p_322->g_135", print_hash_value);
    transparent_crc(p_322->g_161, "p_322->g_161", print_hash_value);
    transparent_crc(p_322->g_171, "p_322->g_171", print_hash_value);
    transparent_crc(p_322->g_191, "p_322->g_191", print_hash_value);
    transparent_crc(p_322->g_193, "p_322->g_193", print_hash_value);
    transparent_crc(p_322->g_222, "p_322->g_222", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_322->g_252[i], "p_322->g_252[i]", print_hash_value);

    }
    transparent_crc(p_322->g_281, "p_322->g_281", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_322->g_301[i], "p_322->g_301[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
