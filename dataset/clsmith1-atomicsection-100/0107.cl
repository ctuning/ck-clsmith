// --atomics 69 ---fake_divergence -g 30,47,6 -l 5,1,1
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


// Seed: 107

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   volatile int64_t  f1;
   int64_t  f2;
};

struct S1 {
   volatile int8_t  f0;
   int32_t  f1;
   volatile int32_t  f2;
   volatile uint8_t  f3;
   uint32_t  f4;
   uint16_t  f5;
   volatile int32_t  f6;
   volatile uint64_t  f7;
};

struct S2 {
    int32_t g_3;
    struct S1 g_16;
    int32_t g_18;
    uint64_t g_86;
    uint32_t g_89[8][2][1];
    int32_t g_91[4][8];
    int32_t * volatile g_90;
    struct S0 g_92;
    struct S1 g_95;
    volatile struct S0 g_172;
    uint32_t *g_185;
    int32_t ** volatile g_187;
    int32_t *g_193;
    int32_t ** volatile g_192;
    int32_t *g_195;
    int32_t ** volatile g_199;
    int32_t * volatile g_201[5][6][2];
    uint16_t g_214;
    int8_t g_234;
    uint16_t g_275;
    uint32_t g_296[2];
    volatile int64_t *g_314;
    int32_t g_317;
    struct S0 g_344;
    uint8_t g_359;
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
uint32_t  func_1(struct S2 * p_365);
int32_t * func_4(int32_t * p_5, int32_t * p_6, int32_t  p_7, struct S2 * p_365);
struct S1  func_8(int32_t * p_9, uint64_t  p_10, int16_t  p_11, struct S2 * p_365);
int16_t  func_23(int32_t * p_24, uint64_t  p_25, uint16_t  p_26, int32_t * p_27, struct S2 * p_365);
int32_t * func_28(int64_t  p_29, int32_t  p_30, int32_t  p_31, int32_t * p_32, uint32_t  p_33, struct S2 * p_365);
int16_t  func_43(int32_t * p_44, int8_t  p_45, int8_t  p_46, uint8_t  p_47, int32_t * p_48, struct S2 * p_365);
int32_t * func_51(uint16_t  p_52, int32_t * p_53, int32_t * p_54, int32_t * p_55, int64_t  p_56, struct S2 * p_365);
int32_t * func_57(uint32_t  p_58, int32_t  p_59, uint32_t  p_60, int64_t  p_61, int32_t * p_62, struct S2 * p_365);
struct S1  func_63(int32_t * p_64, int16_t  p_65, uint64_t  p_66, int32_t  p_67, struct S2 * p_365);
struct S0  func_75(int32_t * p_76, uint8_t  p_77, int32_t * p_78, struct S2 * p_365);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_365->g_3
 * writes: p_365->g_3
 */
uint32_t  func_1(struct S2 * p_365)
{ /* block id: 4 */
    uint64_t l_2[5] = {0x7A73D2D672A8358BL,0x7A73D2D672A8358BL,0x7A73D2D672A8358BL,0x7A73D2D672A8358BL,0x7A73D2D672A8358BL};
    int32_t *l_363 = &p_365->g_91[3][5];
    int32_t l_364 = 1L;
    int i;
    for (p_365->g_3 = 4; (p_365->g_3 >= 0); p_365->g_3 -= 1)
    { /* block id: 7 */
        int32_t *l_17 = &p_365->g_18;
        int32_t **l_361 = (void*)0;
        int32_t **l_362 = &p_365->g_193;
        int i;
        (1 + 1);
    }
    return l_364;
}


/* ------------------------------------------ */
/* 
 * reads : p_365->g_16.f7 p_365->g_16.f4 p_365->g_3 p_365->g_16.f1 p_365->g_18 p_365->g_16.f0 p_365->g_86 p_365->g_89 p_365->g_90 p_365->g_91 p_365->g_92 p_365->g_95 p_365->g_16.f6 p_365->g_16.f5 p_365->g_16 p_365->g_192 p_365->g_195 p_365->g_199 p_365->g_185 p_365->g_172.f2 p_365->g_275 p_365->g_172.f0 p_365->g_317 p_365->g_344 p_365->g_234 p_365->g_314
 * writes: p_365->g_16.f5 p_365->g_89 p_365->g_91 p_365->g_92.f2 p_365->g_92.f0 p_365->g_16.f6 p_365->g_95.f5 p_365->g_18 p_365->g_193 p_365->g_195 p_365->g_214 p_365->g_234 p_365->g_95.f1 p_365->g_275 p_365->g_201 p_365->g_92.f1 p_365->g_317 p_365->g_16.f1 p_365->g_359
 */
int32_t * func_4(int32_t * p_5, int32_t * p_6, int32_t  p_7, struct S2 * p_365)
{ /* block id: 16 */
    uint16_t l_42 = 65530UL;
    int32_t *l_68 = &p_365->g_3;
    int32_t **l_69 = &l_68;
    uint16_t l_96 = 65535UL;
    int32_t *l_110 = &p_365->g_18;
    int32_t *l_139 = &p_365->g_3;
    int32_t *l_140 = &p_365->g_3;
    uint32_t *l_295 = &p_365->g_296[0];
    int8_t *l_313 = (void*)0;
    int32_t *l_315 = &p_365->g_91[3][5];
    int32_t *l_316[5][10] = {{(void*)0,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,(void*)0},{(void*)0,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,(void*)0},{(void*)0,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,(void*)0},{(void*)0,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,(void*)0},{(void*)0,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,&p_365->g_3,&p_365->g_317,&p_365->g_317,(void*)0}};
    uint64_t *l_318 = &p_365->g_86;
    int32_t *l_320 = &p_365->g_95.f1;
    int32_t **l_319 = &l_320;
    int32_t **l_325 = &l_110;
    int32_t l_326 = 0x0767B325L;
    int32_t *l_345 = (void*)0;
    int32_t *l_346 = &p_365->g_16.f1;
    uint16_t *l_347 = &p_365->g_275;
    uint8_t *l_358 = &p_365->g_359;
    int64_t l_360 = 1L;
    int i, j;
    (*l_110) = (safe_lshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_u(func_23(func_28(p_7, (safe_sub_func_int16_t_s_s((!(safe_mul_func_uint8_t_u_u((((safe_add_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(l_42, 4)), func_43(((safe_sub_func_uint8_t_u_u((func_8(func_51((p_365->g_16.f5 = FAKE_DIVERGE(p_365->global_2_offset, get_global_id(2), 10)), func_57(l_42, (func_63(((*l_69) = l_68), p_365->g_16.f7, p_365->g_16.f4, (((p_365->g_3 , (-10L)) , (((p_365->g_16.f1 | 0L) , 0x3176A90DL) & l_42)) || 0x81L), p_365) , 0L), l_96, p_7, &p_365->g_18, p_365), l_110, &p_365->g_18, p_7, p_365), p_365->g_86, p_7, p_365) , 6UL), p_365->g_86)) , &p_365->g_91[0][4]), p_7, p_365->g_95.f4, p_7, l_139, p_365))) && (**l_69)) , 0xDEL), 0x94L))), p_7)), p_365->g_3, l_140, p_7, p_365), p_365->g_3, p_7, p_365->g_195, p_365), 9)), p_7));
    p_365->g_317 |= ((*l_110) |= ((*l_315) |= (!(((safe_div_func_uint16_t_u_u((((p_365->g_89[3][0][0] <= (1L ^ (((((*l_319) = p_365->g_195) != (void*)0) , p_365->g_95.f5) < 0UL))) <= GROUP_DIVERGE(1, 1)) || p_365->g_95.f0), 0xE7F4L)) , FAKE_DIVERGE(p_365->group_2_offset, get_group_id(2), 10)) | p_7))));
    for (p_365->g_92.f0 = 0; (p_365->g_92.f0 < 49); ++p_365->g_92.f0)
    { /* block id: 149 */
        int32_t ***l_323 = (void*)0;
        int32_t ***l_324[1];
        uint64_t l_327[3];
        int i;
        for (i = 0; i < 1; i++)
            l_324[i] = (void*)0;
        for (i = 0; i < 3; i++)
            l_327[i] = 18446744073709551615UL;
        l_325 = (l_69 = (void*)0);
        l_327[1]--;
    }
    (*l_110) = (safe_mod_func_uint64_t_u_u(((p_365->g_18 <= (&l_69 != &p_365->g_192)) == (((safe_mul_func_uint8_t_u_u((~((*l_358) = (safe_rshift_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_u((safe_add_func_int32_t_s_s((((((((safe_lshift_func_uint8_t_u_s((((p_365->g_344 , ((*l_315) = ((((*l_346) = p_7) , (p_7 == ((*l_347)++))) < (((((safe_rshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_u((((safe_lshift_func_int16_t_s_u(0L, (*l_110))) , (safe_mul_func_uint8_t_u_u((p_365->g_92 , 0x69L), p_365->g_92.f0))) > (*l_315)), (*l_139))), p_7)) | 0xD5L) , 0x1F529EB063BA38D6L) || (*l_140)) == p_7)))) >= (*p_365->g_185)) > p_365->g_234), (*l_139))) != p_7) <= (*l_68)) != p_7) == (-2L)) | FAKE_DIVERGE(p_365->group_0_offset, get_group_id(0), 10)) & 0L), (*p_6))), 3)) , l_318) == p_365->g_314), 6)))), l_360)) , (*p_6)) != (*p_6))), p_365->g_92.f2));
    return (*p_365->g_199);
}


/* ------------------------------------------ */
/* 
 * reads : p_365->g_16
 * writes:
 */
struct S1  func_8(int32_t * p_9, uint64_t  p_10, int16_t  p_11, struct S2 * p_365)
{ /* block id: 8 */
    for (p_10 = 0; (p_10 <= 57); p_10 = safe_add_func_int16_t_s_s(p_10, 8))
    { /* block id: 11 */
        return p_365->g_16;
    }
    return p_365->g_16;
}


/* ------------------------------------------ */
/* 
 * reads : p_365->g_95.f5 p_365->g_199 p_365->g_16.f5 p_365->g_16.f0 p_365->g_91 p_365->g_3 p_365->g_89 p_365->g_185 p_365->g_172.f2 p_365->g_16.f4 p_365->g_92.f2 p_365->g_86 p_365->g_18 p_365->g_275 p_365->g_172.f0 p_365->g_95.f0 p_365->g_95.f2
 * writes: p_365->g_95.f5 p_365->g_195 p_365->g_91 p_365->g_16.f5 p_365->g_214 p_365->g_234 p_365->g_92.f2 p_365->g_95.f1 p_365->g_18 p_365->g_275 p_365->g_201 p_365->g_92.f1
 */
int16_t  func_23(int32_t * p_24, uint64_t  p_25, uint16_t  p_26, int32_t * p_27, struct S2 * p_365)
{ /* block id: 78 */
    int32_t *l_198 = (void*)0;
    uint64_t *l_220[8][1][1] = {{{&p_365->g_86}},{{&p_365->g_86}},{{&p_365->g_86}},{{&p_365->g_86}},{{&p_365->g_86}},{{&p_365->g_86}},{{&p_365->g_86}},{{&p_365->g_86}}};
    int32_t l_267 = (-1L);
    int32_t l_269[5][7] = {{4L,2L,4L,4L,2L,4L,4L},{4L,2L,4L,4L,2L,4L,4L},{4L,2L,4L,4L,2L,4L,4L},{4L,2L,4L,4L,2L,4L,4L},{4L,2L,4L,4L,2L,4L,4L}};
    int i, j, k;
    for (p_365->g_95.f5 = 0; (p_365->g_95.f5 >= 46); p_365->g_95.f5 = safe_add_func_uint32_t_u_u(p_365->g_95.f5, 9))
    { /* block id: 81 */
        uint8_t l_200[4][7] = {{0xF5L,255UL,0xF5L,0xF5L,255UL,0xF5L,0xF5L},{0xF5L,255UL,0xF5L,0xF5L,255UL,0xF5L,0xF5L},{0xF5L,255UL,0xF5L,0xF5L,255UL,0xF5L,0xF5L},{0xF5L,255UL,0xF5L,0xF5L,255UL,0xF5L,0xF5L}};
        int32_t *l_202 = &p_365->g_91[3][5];
        uint64_t *l_219[3];
        int32_t l_256 = 0x6894985CL;
        int32_t l_263 = 0x7803F65FL;
        int32_t l_265 = 0x7ED64C80L;
        int32_t l_266 = (-1L);
        int32_t l_268 = (-1L);
        int32_t l_270 = 1L;
        int32_t l_271 = 0x346FE936L;
        int32_t l_272 = 0L;
        int32_t l_273 = 0x09CD27E3L;
        int32_t l_274 = 0x16750B15L;
        int i, j;
        for (i = 0; i < 3; i++)
            l_219[i] = &p_365->g_86;
        (*p_365->g_199) = l_198;
        (*l_202) = l_200[1][3];
        for (p_365->g_16.f5 = 0; (p_365->g_16.f5 <= 1); p_365->g_16.f5 += 1)
        { /* block id: 86 */
            uint16_t *l_213 = &p_365->g_214;
            int32_t l_225 = 0x3FFD4BF9L;
            int32_t l_261 = (-3L);
            int32_t l_264[4][9] = {{0L,0x7245B795L,0x7245B795L,0L,0L,0x7245B795L,0x7245B795L,0L,0L},{0L,0x7245B795L,0x7245B795L,0L,0L,0x7245B795L,0x7245B795L,0L,0L},{0L,0x7245B795L,0x7245B795L,0L,0L,0x7245B795L,0x7245B795L,0L,0L},{0L,0x7245B795L,0x7245B795L,0L,0L,0x7245B795L,0x7245B795L,0L,0L}};
            int i, j;
            if ((((safe_lshift_func_uint8_t_u_s(p_365->g_16.f0, 1)) < 0x903AL) & (safe_div_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((((safe_add_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(((*l_213) = (0x0EDFL < p_26)), ((((safe_div_func_uint64_t_u_u(p_25, ((safe_lshift_func_int16_t_s_s((p_26 ^ (((*l_202) || ((l_219[1] == ((&p_365->g_86 != (void*)0) , l_220[3][0][0])) >= (*p_27))) , p_25)), p_365->g_89[7][0][0])) && 0x1DL))) , 8UL) || (-5L)) == (*p_365->g_185)))), (*l_202))) & p_365->g_95.f5) && p_365->g_95.f5), p_25)), p_25))))
            { /* block id: 88 */
                uint8_t l_226 = 5UL;
                int8_t *l_233 = &p_365->g_234;
                int64_t *l_255 = &p_365->g_92.f2;
                uint8_t *l_257 = &l_200[1][3];
                int32_t *l_258[4];
                uint32_t *l_259 = &p_365->g_89[2][1][0];
                int32_t *l_260[2];
                int32_t l_262 = 0x24695C4BL;
                int i;
                for (i = 0; i < 4; i++)
                    l_258[i] = &p_365->g_95.f1;
                for (i = 0; i < 2; i++)
                    l_260[i] = &p_365->g_18;
                l_226 = ((safe_lshift_func_int16_t_s_s(p_25, 0)) || (safe_div_func_uint8_t_u_u(0UL, l_225)));
                p_365->g_18 ^= ((safe_mul_func_uint16_t_u_u(p_365->g_89[6][0][0], (safe_mod_func_int64_t_s_s((l_226 && (*p_24)), p_25)))) >= (FAKE_DIVERGE(p_365->group_2_offset, get_group_id(2), 10) <= ((~((((p_365->g_95.f1 = ((p_365->g_172.f2 != (((safe_sub_func_uint64_t_u_u((((*l_233) = p_26) < ((*l_257) = ((safe_mod_func_uint16_t_u_u(p_365->g_16.f4, (((((((((safe_mod_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((safe_div_func_uint64_t_u_u(((0UL <= ((safe_add_func_int32_t_s_s((+(safe_add_func_int8_t_s_s((safe_add_func_int64_t_s_s(((*l_255) |= (safe_lshift_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((l_226 , 65530UL), p_25)), 15))), l_256)), (*l_202)))), GROUP_DIVERGE(2, 1))) > l_226)) <= p_25), p_365->g_86)), (*l_202))), p_25)) >= p_25) || FAKE_DIVERGE(p_365->global_0_offset, get_global_id(0), 10)) , (*p_365->g_185)) > FAKE_DIVERGE(p_365->group_1_offset, get_group_id(1), 10)) == p_25) , (*p_365->g_185)) == (-9L)) ^ 0x249FL))) && GROUP_DIVERGE(2, 1)))), (-1L))) , 0x784F3F3EL) || 1UL)) ^ l_225)) , &p_365->g_89[3][0][0]) == l_259) , (-8L))) | p_365->g_3)));
                p_365->g_275--;
            }
            else
            { /* block id: 96 */
                int16_t l_278 = 0x50EFL;
                (*l_202) |= l_278;
                for (p_365->g_18 = 1; (p_365->g_18 >= 0); p_365->g_18 -= 1)
                { /* block id: 100 */
                    int i, j, k;
                    if ((atomic_inc(&p_365->g_atomic_input[69 * get_linear_group_id() + 64]) == 9))
                    { /* block id: 102 */
                        struct S0 l_279[8] = {{0x0239C060L,0x52AFDE5E681E8187L,0x5B668B12C148FA94L},{0x3574DF4CL,0x57627243C6643A55L,-5L},{0x0239C060L,0x52AFDE5E681E8187L,0x5B668B12C148FA94L},{0x0239C060L,0x52AFDE5E681E8187L,0x5B668B12C148FA94L},{0x3574DF4CL,0x57627243C6643A55L,-5L},{0x0239C060L,0x52AFDE5E681E8187L,0x5B668B12C148FA94L},{0x0239C060L,0x52AFDE5E681E8187L,0x5B668B12C148FA94L},{0x3574DF4CL,0x57627243C6643A55L,-5L}};
                        struct S0 l_280 = {4294967289UL,0x56E37FE67F92BECFL,4L};/* VOLATILE GLOBAL l_280 */
                        int32_t l_282 = (-1L);
                        int32_t *l_281 = &l_282;
                        int i;
                        l_280 = l_279[1];
                        l_281 = (void*)0;
                        unsigned int result = 0;
                        int l_279_i0;
                        for (l_279_i0 = 0; l_279_i0 < 8; l_279_i0++) {
                            result += l_279[l_279_i0].f0;
                            result += l_279[l_279_i0].f1;
                            result += l_279[l_279_i0].f2;
                        }
                        result += l_280.f0;
                        result += l_280.f1;
                        result += l_280.f2;
                        result += l_282;
                        atomic_add(&p_365->g_special_values[69 * get_linear_group_id() + 64], result);
                    }
                    else
                    { /* block id: 105 */
                        (1 + 1);
                    }
                    if (l_269[(p_365->g_18 + 3)][(p_365->g_16.f5 + 2)])
                        continue;
                    if ((*p_27))
                        break;
                }
            }
            for (l_271 = 0; (l_271 <= 1); l_271 += 1)
            { /* block id: 114 */
                for (p_365->g_275 = 0; (p_365->g_275 <= 0); p_365->g_275 += 1)
                { /* block id: 117 */
                    int i, j, k;
                    return p_365->g_89[(p_365->g_275 + 5)][p_365->g_16.f5][p_365->g_275];
                }
                for (l_267 = 1; (l_267 >= 0); l_267 -= 1)
                { /* block id: 122 */
                    int i, j, k;
                    (*l_202) &= (p_25 || (p_365->g_172.f0 , 18446744073709551615UL));
                    p_365->g_201[(l_271 + 2)][(l_267 + 2)][l_267] = (void*)0;
                }
            }
            if ((*p_24))
                continue;
            for (p_26 = 0; (p_26 <= 1); p_26 += 1)
            { /* block id: 130 */
                return p_365->g_95.f0;
            }
        }
        for (p_365->g_92.f1 = 0; p_365->g_92.f1 < 4; p_365->g_92.f1 += 1)
        {
            for (p_365->g_234 = 0; p_365->g_234 < 8; p_365->g_234 += 1)
            {
                p_365->g_91[p_365->g_92.f1][p_365->g_234] = 0L;
            }
        }
    }
    return p_365->g_95.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_365->g_16.f0 p_365->g_89 p_365->g_18 p_365->g_92.f2 p_365->g_91 p_365->g_16.f3 p_365->g_86 p_365->g_16.f1 p_365->g_192
 * writes: p_365->g_18 p_365->g_91 p_365->g_193
 */
int32_t * func_28(int64_t  p_29, int32_t  p_30, int32_t  p_31, int32_t * p_32, uint32_t  p_33, struct S2 * p_365)
{ /* block id: 57 */
    uint32_t l_141 = 7UL;
    uint32_t *l_142 = &p_365->g_89[1][1][0];
    int32_t l_153 = 0x2FE1A9EEL;
    int32_t l_154 = 0x24827770L;
    int32_t *l_155 = (void*)0;
    int32_t *l_156 = (void*)0;
    int32_t *l_157 = &p_365->g_18;
    int32_t *l_158 = &p_365->g_91[3][3];
    uint32_t l_161 = 3UL;
    uint16_t *l_162[10] = {&p_365->g_95.f5,&p_365->g_95.f5,&p_365->g_95.f5,&p_365->g_95.f5,&p_365->g_95.f5,&p_365->g_95.f5,&p_365->g_95.f5,&p_365->g_95.f5,&p_365->g_95.f5,&p_365->g_95.f5};
    int32_t *l_194 = &p_365->g_3;
    int i;
    (*l_158) &= ((*l_157) = ((p_29 ^ (l_141 < (l_154 &= (l_153 = (((l_142 == (void*)0) | p_365->g_16.f0) | (safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(l_141, (safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(p_365->g_89[3][0][0], (!(((safe_div_func_uint16_t_u_u(p_365->g_18, 0xC64DL)) , p_30) != 0x0772C01CL)))), p_365->g_89[0][0][0])))), p_365->g_92.f2))))))) >= 0UL));
    if ((0x7AEBL != (((((!((safe_mod_func_int16_t_s_s((&l_154 != &l_154), (l_161 , 0x3A49L))) , (4L <= ((p_365->g_89[0][1][0] > ((*l_157) = 0xE69EL)) & (~(((*l_158) &= ((((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint32_t_u_u(((p_365->g_16.f3 , 18446744073709551615UL) >= p_33), (-5L))), 5)) == p_29) == p_31) != p_365->g_86)) | p_31)))))) >= 0x535322E4834083B5L) ^ p_365->g_16.f1) , FAKE_DIVERGE(p_365->local_2_offset, get_local_id(2), 10)) , 1UL)))
    { /* block id: 64 */
        uint8_t l_171 = 0x5EL;
        int32_t *l_186[5][2][3] = {{{&l_154,&p_365->g_91[0][2],&l_154},{&l_154,&p_365->g_91[0][2],&l_154}},{{&l_154,&p_365->g_91[0][2],&l_154},{&l_154,&p_365->g_91[0][2],&l_154}},{{&l_154,&p_365->g_91[0][2],&l_154},{&l_154,&p_365->g_91[0][2],&l_154}},{{&l_154,&p_365->g_91[0][2],&l_154},{&l_154,&p_365->g_91[0][2],&l_154}},{{&l_154,&p_365->g_91[0][2],&l_154},{&l_154,&p_365->g_91[0][2],&l_154}}};
        int i, j, k;
        for (l_153 = 0; (l_153 != 27); l_153 = safe_add_func_uint32_t_u_u(l_153, 1))
        { /* block id: 67 */
            uint32_t l_179 = 0xAEB59524L;
            uint32_t **l_184 = (void*)0;
            int32_t **l_188 = &l_157;
            (1 + 1);
        }
    }
    else
    { /* block id: 73 */
        uint32_t l_191 = 1UL;
        (*l_158) = (safe_sub_func_int64_t_s_s(l_191, p_365->g_92.f2));
        (*p_365->g_192) = &p_30;
    }
    return l_194;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_43(int32_t * p_44, int8_t  p_45, int8_t  p_46, uint8_t  p_47, int32_t * p_48, struct S2 * p_365)
{ /* block id: 55 */
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_365->g_86 p_365->g_16.f6 p_365->g_92.f2 p_365->g_16.f5 p_365->g_18 p_365->g_95.f5 p_365->g_91 p_365->g_90
 * writes: p_365->g_95.f5 p_365->g_18
 */
int32_t * func_51(uint16_t  p_52, int32_t * p_53, int32_t * p_54, int32_t * p_55, int64_t  p_56, struct S2 * p_365)
{ /* block id: 48 */
    uint16_t l_111 = 1UL;
    int32_t l_124 = (-4L);
    int32_t l_125[8] = {0x6D79FF3DL,0x6D79FF3DL,0x6D79FF3DL,0x6D79FF3DL,0x6D79FF3DL,0x6D79FF3DL,0x6D79FF3DL,0x6D79FF3DL};
    uint32_t l_128 = 0x3F9E4261L;
    int i;
    (*p_54) = ((l_111 = p_365->g_86) >= (safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u((+((((safe_rshift_func_uint8_t_u_s((((p_365->g_95.f5 |= ((safe_mul_func_int8_t_s_s(((safe_div_func_uint8_t_u_u((l_124 = l_124), l_125[1])) == (((((safe_sub_func_uint32_t_u_u((((l_128 | (safe_rshift_func_uint16_t_u_u((l_128 != (p_52 < (((p_55 == &p_365->g_89[3][0][0]) <= ((!(safe_div_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(p_56, 7L)), p_365->g_16.f6)), 65531UL)), p_52))) >= 18446744073709551615UL)) >= p_365->g_92.f2))), 2))) < 1UL) , p_365->g_16.f5), FAKE_DIVERGE(p_365->global_0_offset, get_global_id(0), 10))) && p_365->g_86) && 65535UL) > l_128) ^ p_365->g_18)), l_125[6])) , p_56)) < p_56) < 0xAA9519D3F86503DDL), p_56)) ^ 0x8DL) >= 0x5F88L) , 4294967295UL)), 4294967293UL)) & p_365->g_91[3][5]), 1)), 0xED5EL)));
    (*p_55) = (*p_365->g_90);
    return &p_365->g_91[1][6];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_57(uint32_t  p_58, int32_t  p_59, uint32_t  p_60, int64_t  p_61, int32_t * p_62, struct S2 * p_365)
{ /* block id: 37 */
    int32_t *l_109 = &p_365->g_3;
    if ((atomic_inc(&p_365->l_atomic_input[15]) == 6))
    { /* block id: 39 */
        uint8_t l_97 = 0xFDL;
        int32_t l_98 = 1L;
        int8_t l_99 = 0x07L;
        int32_t l_100 = 0x50442C13L;
        uint64_t l_101 = 18446744073709551613UL;
        int32_t *l_104 = (void*)0;
        int32_t *l_105 = &l_100;
        int64_t l_106 = 0x5B6CEA374102D430L;
        int32_t *l_107 = &l_98;
        int32_t *l_108 = &l_98;
        l_98 &= l_97;
        l_101++;
        l_105 = l_104;
        l_108 = (l_106 , l_107);
        unsigned int result = 0;
        result += l_97;
        result += l_98;
        result += l_99;
        result += l_100;
        result += l_101;
        result += l_106;
        atomic_add(&p_365->l_special_values[15], result);
    }
    else
    { /* block id: 44 */
        (1 + 1);
    }
    return l_109;
}


/* ------------------------------------------ */
/* 
 * reads : p_365->g_18 p_365->g_16.f0 p_365->g_86 p_365->g_89 p_365->g_3 p_365->g_90 p_365->g_91 p_365->g_92 p_365->g_95
 * writes: p_365->g_89 p_365->g_91 p_365->g_92.f2 p_365->g_92.f0 p_365->g_16.f6
 */
struct S1  func_63(int32_t * p_64, int16_t  p_65, uint64_t  p_66, int32_t  p_67, struct S2 * p_365)
{ /* block id: 19 */
    int16_t l_70[5];
    int32_t *l_79[7] = {&p_365->g_18,&p_365->g_18,&p_365->g_18,&p_365->g_18,&p_365->g_18,&p_365->g_18,&p_365->g_18};
    int32_t *l_84 = &p_365->g_3;
    int i;
    for (i = 0; i < 5; i++)
        l_70[i] = (-6L);
    for (p_66 = 1; (p_66 <= 4); p_66 += 1)
    { /* block id: 22 */
        uint64_t *l_85[1];
        int32_t l_87[10];
        uint32_t *l_88 = &p_365->g_89[3][0][0];
        int i;
        for (i = 0; i < 1; i++)
            l_85[i] = &p_365->g_86;
        for (i = 0; i < 10; i++)
            l_87[i] = 0x0438810CL;
        l_87[1] = (!((((l_70[p_66] < ((safe_mod_func_int32_t_s_s(((*p_365->g_90) = ((0UL != ((func_75(l_79[5], (safe_mul_func_int16_t_s_s(((((*l_88) &= (safe_add_func_uint8_t_u_u(((l_87[1] = (0UL || ((l_70[p_66] , (l_84 != (void*)0)) >= p_365->g_18))) != (p_65 , p_365->g_16.f0)), p_365->g_86))) <= p_67) ^ (*l_84)), l_70[p_66])), &p_365->g_18, p_365) , 0x49BCD996L) , GROUP_DIVERGE(0, 1))) > p_66)), 0x2423037FL)) <= l_70[p_66])) <= 5UL) != p_65) , (*p_365->g_90)));
    }
    for (p_365->g_92.f2 = 0; (p_365->g_92.f2 == 20); p_365->g_92.f2 = safe_add_func_int16_t_s_s(p_365->g_92.f2, 1))
    { /* block id: 33 */
        for (p_365->g_92.f0 = 0; p_365->g_92.f0 < 4; p_365->g_92.f0 += 1)
        {
            for (p_365->g_16.f6 = 0; p_365->g_16.f6 < 8; p_365->g_16.f6 += 1)
            {
                p_365->g_91[p_365->g_92.f0][p_365->g_16.f6] = 0x0280C152L;
            }
        }
    }
    return p_365->g_95;
}


/* ------------------------------------------ */
/* 
 * reads : p_365->g_18 p_365->g_3 p_365->g_90 p_365->g_91 p_365->g_92
 * writes: p_365->g_91
 */
struct S0  func_75(int32_t * p_76, uint8_t  p_77, int32_t * p_78, struct S2 * p_365)
{ /* block id: 25 */
    (*p_365->g_90) ^= (*p_76);
    return p_365->g_92;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[69];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 69; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[69];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 69; i++)
            l_special_values[i] = 0;
    struct S2 c_366;
    struct S2* p_365 = &c_366;
    struct S2 c_367 = {
        (-4L), // p_365->g_3
        {0L,0L,1L,6UL,0x34AAFBEBL,0x0A0CL,0x15FF79FAL,0xD4A7974498B94BE3L}, // p_365->g_16
        9L, // p_365->g_18
        8UL, // p_365->g_86
        {{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}}}, // p_365->g_89
        {{0x7242BEB9L,(-1L),0x7242BEB9L,0x7242BEB9L,(-1L),0x7242BEB9L,0x7242BEB9L,(-1L)},{0x7242BEB9L,(-1L),0x7242BEB9L,0x7242BEB9L,(-1L),0x7242BEB9L,0x7242BEB9L,(-1L)},{0x7242BEB9L,(-1L),0x7242BEB9L,0x7242BEB9L,(-1L),0x7242BEB9L,0x7242BEB9L,(-1L)},{0x7242BEB9L,(-1L),0x7242BEB9L,0x7242BEB9L,(-1L),0x7242BEB9L,0x7242BEB9L,(-1L)}}, // p_365->g_91
        &p_365->g_91[3][5], // p_365->g_90
        {0xC324F1CCL,3L,1L}, // p_365->g_92
        {1L,3L,7L,252UL,0x3651BE0EL,0x70C8L,3L,18446744073709551609UL}, // p_365->g_95
        {0UL,-3L,0x2EB6C46BC4935F48L}, // p_365->g_172
        &p_365->g_89[5][1][0], // p_365->g_185
        (void*)0, // p_365->g_187
        &p_365->g_91[0][2], // p_365->g_193
        &p_365->g_193, // p_365->g_192
        &p_365->g_3, // p_365->g_195
        &p_365->g_195, // p_365->g_199
        {{{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]}},{{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]}},{{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]}},{{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]}},{{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]},{&p_365->g_91[3][5],&p_365->g_91[1][3]}}}, // p_365->g_201
        1UL, // p_365->g_214
        0L, // p_365->g_234
        0x3027L, // p_365->g_275
        {0xF1190A5AL,0xF1190A5AL}, // p_365->g_296
        &p_365->g_92.f1, // p_365->g_314
        5L, // p_365->g_317
        {0UL,0x5559D433BAA376D4L,1L}, // p_365->g_344
        254UL, // p_365->g_359
        sequence_input[get_global_id(0)], // p_365->global_0_offset
        sequence_input[get_global_id(1)], // p_365->global_1_offset
        sequence_input[get_global_id(2)], // p_365->global_2_offset
        sequence_input[get_local_id(0)], // p_365->local_0_offset
        sequence_input[get_local_id(1)], // p_365->local_1_offset
        sequence_input[get_local_id(2)], // p_365->local_2_offset
        sequence_input[get_group_id(0)], // p_365->group_0_offset
        sequence_input[get_group_id(1)], // p_365->group_1_offset
        sequence_input[get_group_id(2)], // p_365->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_366 = c_367;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_365);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_365->g_3, "p_365->g_3", print_hash_value);
    transparent_crc(p_365->g_16.f0, "p_365->g_16.f0", print_hash_value);
    transparent_crc(p_365->g_16.f1, "p_365->g_16.f1", print_hash_value);
    transparent_crc(p_365->g_16.f2, "p_365->g_16.f2", print_hash_value);
    transparent_crc(p_365->g_16.f3, "p_365->g_16.f3", print_hash_value);
    transparent_crc(p_365->g_16.f4, "p_365->g_16.f4", print_hash_value);
    transparent_crc(p_365->g_16.f5, "p_365->g_16.f5", print_hash_value);
    transparent_crc(p_365->g_16.f6, "p_365->g_16.f6", print_hash_value);
    transparent_crc(p_365->g_16.f7, "p_365->g_16.f7", print_hash_value);
    transparent_crc(p_365->g_18, "p_365->g_18", print_hash_value);
    transparent_crc(p_365->g_86, "p_365->g_86", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_365->g_89[i][j][k], "p_365->g_89[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_365->g_91[i][j], "p_365->g_91[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_365->g_92.f0, "p_365->g_92.f0", print_hash_value);
    transparent_crc(p_365->g_92.f1, "p_365->g_92.f1", print_hash_value);
    transparent_crc(p_365->g_92.f2, "p_365->g_92.f2", print_hash_value);
    transparent_crc(p_365->g_95.f0, "p_365->g_95.f0", print_hash_value);
    transparent_crc(p_365->g_95.f1, "p_365->g_95.f1", print_hash_value);
    transparent_crc(p_365->g_95.f2, "p_365->g_95.f2", print_hash_value);
    transparent_crc(p_365->g_95.f3, "p_365->g_95.f3", print_hash_value);
    transparent_crc(p_365->g_95.f4, "p_365->g_95.f4", print_hash_value);
    transparent_crc(p_365->g_95.f5, "p_365->g_95.f5", print_hash_value);
    transparent_crc(p_365->g_95.f6, "p_365->g_95.f6", print_hash_value);
    transparent_crc(p_365->g_95.f7, "p_365->g_95.f7", print_hash_value);
    transparent_crc(p_365->g_172.f0, "p_365->g_172.f0", print_hash_value);
    transparent_crc(p_365->g_172.f1, "p_365->g_172.f1", print_hash_value);
    transparent_crc(p_365->g_172.f2, "p_365->g_172.f2", print_hash_value);
    transparent_crc(p_365->g_214, "p_365->g_214", print_hash_value);
    transparent_crc(p_365->g_234, "p_365->g_234", print_hash_value);
    transparent_crc(p_365->g_275, "p_365->g_275", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_365->g_296[i], "p_365->g_296[i]", print_hash_value);

    }
    transparent_crc(p_365->g_317, "p_365->g_317", print_hash_value);
    transparent_crc(p_365->g_344.f0, "p_365->g_344.f0", print_hash_value);
    transparent_crc(p_365->g_344.f1, "p_365->g_344.f1", print_hash_value);
    transparent_crc(p_365->g_344.f2, "p_365->g_344.f2", print_hash_value);
    transparent_crc(p_365->g_359, "p_365->g_359", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 69; i++)
            transparent_crc(p_365->g_special_values[i + 69 * get_linear_group_id()], "p_365->g_special_values[i + 69 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 69; i++)
            transparent_crc(p_365->l_special_values[i], "p_365->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
