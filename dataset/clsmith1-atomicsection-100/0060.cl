// --atomics 82 ---fake_divergence -g 29,7,49 -l 29,1,7
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


// Seed: 60

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_18;
    int32_t *g_17;
    uint16_t g_68;
    int64_t g_71;
    int32_t * volatile g_72;
    int32_t * volatile g_74;
    uint16_t g_76[4];
    uint64_t g_108;
    uint64_t g_133;
    int8_t g_150;
    int32_t g_173;
    int32_t g_178[8][7][3];
    int32_t * volatile g_177;
    int32_t * volatile g_183;
    uint8_t g_196[10];
    int64_t g_227;
    volatile uint32_t g_273[4];
    int8_t g_293;
    int32_t g_297;
    int32_t * volatile g_296[7];
    uint16_t *g_312;
    uint16_t * volatile *g_311;
    uint16_t * volatile * volatile * volatile g_310;
    int16_t g_325;
    int32_t * volatile g_328;
    uint32_t g_360;
    uint32_t g_408;
    volatile uint64_t g_426;
    int32_t ** volatile ** volatile g_480;
    int64_t g_503[4][5][10];
    volatile int32_t g_567;
    volatile int32_t * volatile g_566;
    volatile int32_t * volatile *g_565;
    uint32_t g_569;
    volatile int64_t g_582[8][10][3];
    uint8_t g_603;
    uint8_t g_618;
    volatile int32_t g_651;
    uint8_t * volatile g_661;
    uint8_t * volatile *g_660;
    volatile int64_t * volatile g_734[1][4][5];
    volatile int64_t * volatile * volatile g_733;
    uint64_t g_790;
    uint32_t g_892;
    int64_t g_896;
    uint16_t g_897;
    int32_t g_914;
    int32_t * volatile g_913;
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
uint32_t  func_1(struct S0 * p_932);
int32_t * func_2(int32_t * p_3, int32_t * p_4, int32_t  p_5, int64_t  p_6, struct S0 * p_932);
int32_t * func_7(int32_t  p_8, uint32_t  p_9, struct S0 * p_932);
uint32_t  func_11(int32_t * p_12, int32_t * p_13, int32_t * p_14, int32_t  p_15, uint32_t  p_16, struct S0 * p_932);
int32_t * func_20(int32_t * p_21, struct S0 * p_932);
int32_t * func_22(uint32_t  p_23, uint32_t  p_24, int32_t * p_25, struct S0 * p_932);
int32_t * func_28(uint32_t  p_29, int16_t  p_30, int64_t  p_31, uint64_t  p_32, uint8_t  p_33, struct S0 * p_932);
uint64_t  func_34(int64_t  p_35, int32_t * p_36, uint64_t  p_37, int32_t * p_38, struct S0 * p_932);
uint32_t  func_44(uint32_t  p_45, struct S0 * p_932);
uint16_t  func_48(int16_t  p_49, int64_t  p_50, int32_t * p_51, int32_t  p_52, int64_t  p_53, struct S0 * p_932);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_932->g_17 p_932->g_18 p_932->g_68 p_932->g_108 p_932->g_76 p_932->g_133 p_932->g_71 p_932->g_173 p_932->g_177 p_932->g_178 p_932->g_183 p_932->g_196 p_932->g_150 p_932->g_273 p_932->g_297 p_932->g_310 p_932->g_360 p_932->g_293 p_932->g_311 p_932->g_312 p_932->g_408 p_932->g_426 p_932->g_480 p_932->g_618 p_932->g_582 p_932->g_566 p_932->g_567 p_932->g_651 p_932->g_660 p_932->g_569 p_932->g_503 p_932->g_661 p_932->g_325 p_932->g_733 p_932->g_603 p_932->g_790 p_932->g_734 p_932->g_897 p_932->g_913
 * writes: p_932->g_68 p_932->g_71 p_932->g_76 p_932->g_108 p_932->g_133 p_932->g_150 p_932->g_178 p_932->g_173 p_932->g_227 p_932->g_273 p_932->g_293 p_932->g_297 p_932->g_18 p_932->g_325 p_932->g_360 p_932->g_408 p_932->g_426 p_932->g_196 p_932->g_603 p_932->g_618 p_932->g_503 p_932->g_790 p_932->g_569 p_932->g_892 p_932->g_896 p_932->g_17
 */
uint32_t  func_1(struct S0 * p_932)
{ /* block id: 4 */
    int8_t l_10[1][4][5] = {{{0x22L,9L,0x22L,0x22L,9L},{0x22L,9L,0x22L,0x22L,9L},{0x22L,9L,0x22L,0x22L,9L},{0x22L,9L,0x22L,0x22L,9L}}};
    int32_t *l_19 = &p_932->g_18;
    int32_t l_39 = 0x51EF9953L;
    uint8_t *l_195[6] = {&p_932->g_196[0],&p_932->g_196[6],&p_932->g_196[0],&p_932->g_196[0],&p_932->g_196[6],&p_932->g_196[0]};
    uint32_t l_197 = 1UL;
    int32_t *l_199 = &p_932->g_178[5][0][2];
    int32_t **l_198 = &l_199;
    uint32_t l_200 = 0x632D29E3L;
    uint8_t l_276 = 1UL;
    int32_t l_922 = 0x1FC3BE88L;
    int32_t **l_924 = &p_932->g_17;
    int8_t l_925 = 0x3CL;
    int32_t *l_926[4] = {&p_932->g_178[5][0][2],&p_932->g_178[5][0][2],&p_932->g_178[5][0][2],&p_932->g_178[5][0][2]};
    uint64_t *l_931[7] = {&p_932->g_790,&p_932->g_790,&p_932->g_790,&p_932->g_790,&p_932->g_790,&p_932->g_790,&p_932->g_790};
    int i, j, k;
    (*l_924) = ((*l_198) = func_2(func_7(l_10[0][3][2], func_11(p_932->g_17, l_19, func_20(func_22(p_932->g_18, (safe_lshift_func_uint16_t_u_u(((((*l_198) = func_28((*l_19), (func_34((l_39 >= ((safe_lshift_func_int16_t_s_u((safe_div_func_int32_t_s_s((~((p_932->g_18 , (((l_19 == ((*l_198) = (((l_197 = ((func_44((safe_sub_func_uint16_t_u_u((p_932->g_76[2] = func_48(p_932->g_18, (*l_19), &p_932->g_18, p_932->g_18, p_932->g_18, p_932)), 0x7838L)), p_932) == 0x17E3CEDBL) == (-1L))) == p_932->g_173) , &p_932->g_178[5][0][2]))) , (**l_198)) & 0x06FFL)) & (*l_19))), 0x10458D82L)), 4)) > l_200)), &p_932->g_18, p_932->g_196[0], l_19, p_932) && p_932->g_68), l_276, (*l_19), p_932->g_196[5], p_932)) == l_19) != (*l_19)), (*l_19))), &p_932->g_18, p_932), p_932), p_932->g_897, p_932->g_897, p_932), p_932), p_932->g_17, l_922, p_932->g_897, p_932));
    (*p_932->g_177) = ((*l_19) = l_925);
    for (p_932->g_293 = 0; (p_932->g_293 <= (-13)); p_932->g_293 = safe_sub_func_int8_t_s_s(p_932->g_293, 3))
    { /* block id: 409 */
        return p_932->g_150;
    }
    (*l_924) = ((safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), p_932->g_76[2])) , (*l_198));
    return p_932->g_897;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_2(int32_t * p_3, int32_t * p_4, int32_t  p_5, int64_t  p_6, struct S0 * p_932)
{ /* block id: 401 */
    int32_t *l_923 = (void*)0;
    return l_923;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_7(int32_t  p_8, uint32_t  p_9, struct S0 * p_932)
{ /* block id: 398 */
    int32_t *l_921 = (void*)0;
    l_921 = l_921;
    return l_921;
}


/* ------------------------------------------ */
/* 
 * reads : p_932->g_913 p_932->g_360 p_932->g_569 p_932->g_150 p_932->g_17 p_932->g_18 p_932->g_273
 * writes: p_932->g_325 p_932->g_360 p_932->g_293 p_932->g_18
 */
uint32_t  func_11(int32_t * p_12, int32_t * p_13, int32_t * p_14, int32_t  p_15, uint32_t  p_16, struct S0 * p_932)
{ /* block id: 391 */
    uint8_t l_904 = 0xA8L;
    int16_t *l_915 = (void*)0;
    int16_t *l_916 = &p_932->g_325;
    uint32_t *l_917 = &p_932->g_360;
    int8_t *l_920 = &p_932->g_293;
    (*p_932->g_17) = (safe_div_func_uint8_t_u_u(0x3FL, (safe_sub_func_int32_t_s_s((safe_mod_func_uint16_t_u_u(((l_904 != 1UL) <= (safe_rshift_func_int16_t_s_s((((((*l_920) = ((safe_add_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((safe_add_func_int32_t_s_s(((p_12 == (l_904 , p_932->g_913)) <= ((*l_916) = ((void*)0 == &p_932->g_660))), ((*l_917)++))), l_904)), p_932->g_569)) > p_16)) != p_932->g_150) | p_15) , 0x610BL), 1))), p_932->g_569)), 0UL))));
    (*p_932->g_17) &= l_904;
    return p_932->g_273[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_932->g_480 p_932->g_18 p_932->g_133 p_932->g_150 p_932->g_297 p_932->g_108 p_932->g_426 p_932->g_17 p_932->g_312 p_932->g_76 p_932->g_310 p_932->g_196 p_932->g_68 p_932->g_71 p_932->g_178 p_932->g_360 p_932->g_173 p_932->g_293 p_932->g_311 p_932->g_408 p_932->g_183 p_932->g_273 p_932->g_618 p_932->g_582 p_932->g_566 p_932->g_567 p_932->g_651 p_932->g_660 p_932->g_569 p_932->g_503 p_932->g_661 p_932->g_325 p_932->g_177 p_932->g_733 p_932->g_603 p_932->g_790 p_932->g_734
 * writes: p_932->g_18 p_932->g_133 p_932->g_325 p_932->g_297 p_932->g_150 p_932->g_178 p_932->g_360 p_932->g_408 p_932->g_108 p_932->g_68 p_932->g_293 p_932->g_426 p_932->g_196 p_932->g_173 p_932->g_603 p_932->g_618 p_932->g_503 p_932->g_76 p_932->g_790 p_932->g_569 p_932->g_892 p_932->g_896
 */
int32_t * func_20(int32_t * p_21, struct S0 * p_932)
{ /* block id: 169 */
    int64_t *l_482 = (void*)0;
    int64_t **l_481 = &l_482;
    int32_t *l_483[4];
    int32_t l_484 = 0x2A0128ECL;
    int32_t **l_494 = &l_483[1];
    int32_t ***l_493 = &l_494;
    uint16_t **l_604 = &p_932->g_312;
    int16_t l_741 = 0L;
    uint64_t l_746 = 0UL;
    int i;
    for (i = 0; i < 4; i++)
        l_483[i] = &p_932->g_297;
    if ((((void*)0 != p_932->g_480) ^ ((*p_21) > (l_484 = (l_481 != (void*)0)))))
    { /* block id: 171 */
        int64_t l_485[10] = {(-1L),1L,(-1L),1L,(-1L),(-1L),1L,(-1L),1L,(-1L)};
        uint64_t *l_490 = &p_932->g_133;
        int16_t *l_499 = &p_932->g_325;
        uint16_t l_500 = 0UL;
        int32_t l_502 = 0L;
        uint8_t l_505 = 0UL;
        int32_t l_521 = 0x5CC53C94L;
        int32_t l_522 = 1L;
        int32_t l_523 = 0x051746D8L;
        int32_t l_524 = 0x22CA1E05L;
        int32_t l_526[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
        int i;
        (*p_21) = (l_485[9] &= (*p_21));
        (*l_494) = func_22((l_485[9] & (safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((l_485[4] == (safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 65535UL))) && ((*l_490)++))))), p_932->g_150, (((((((((((void*)0 == l_493) , ((**l_494) && (safe_mod_func_uint32_t_u_u((((((*l_499) = (l_485[5] || (((((safe_rshift_func_int16_t_s_s((**l_494), p_932->g_108)) <= 255UL) <= p_932->g_426) , (void*)0) == (void*)0))) ^ GROUP_DIVERGE(2, 1)) , GROUP_DIVERGE(1, 1)) & (*p_932->g_17)), 0x91CF6616L)))) < 1UL) ^ (*p_932->g_312)) || l_500) , l_485[9]) , (**l_494)) & 3UL) & l_485[4]) , p_21), p_932);
        for (p_932->g_150 = 2; (p_932->g_150 >= 0); p_932->g_150 -= 1)
        { /* block id: 179 */
            int32_t l_501 = 9L;
            int32_t l_504[8] = {0L,0x0486022BL,0L,0L,0x0486022BL,0L,0L,0x0486022BL};
            int32_t l_540[10] = {0x6925CC9CL,1L,(-7L),1L,0x6925CC9CL,0x6925CC9CL,1L,(-7L),1L,0x6925CC9CL};
            uint16_t **l_554[4][3] = {{&p_932->g_312,&p_932->g_312,&p_932->g_312},{&p_932->g_312,&p_932->g_312,&p_932->g_312},{&p_932->g_312,&p_932->g_312,&p_932->g_312},{&p_932->g_312,&p_932->g_312,&p_932->g_312}};
            uint16_t ***l_553 = &l_554[2][0];
            int i, j;
            ++l_505;
            for (p_932->g_173 = 0; (p_932->g_173 <= 2); p_932->g_173 += 1)
            { /* block id: 183 */
                int16_t l_509 = 0x296BL;
                int32_t l_510 = 0x0953B056L;
                int32_t l_512 = 0x510D8582L;
                int32_t l_520 = 0x7195A06EL;
                int32_t l_525 = 1L;
                int32_t l_527 = 1L;
                int32_t l_528 = (-5L);
                int32_t l_530[8] = {(-1L),5L,(-1L),(-1L),5L,(-1L),(-1L),5L};
                uint64_t l_531 = 5UL;
                int i;
                (1 + 1);
            }
            return p_21;
        }
    }
    else
    { /* block id: 231 */
        int32_t l_589[5][8] = {{0L,(-1L),0x4A398439L,(-1L),0L,0L,(-1L),0x4A398439L},{0L,(-1L),0x4A398439L,(-1L),0L,0L,(-1L),0x4A398439L},{0L,(-1L),0x4A398439L,(-1L),0L,0L,(-1L),0x4A398439L},{0L,(-1L),0x4A398439L,(-1L),0L,0L,(-1L),0x4A398439L},{0L,(-1L),0x4A398439L,(-1L),0L,0L,(-1L),0x4A398439L}};
        int32_t l_590 = 1L;
        uint32_t l_591[8][4] = {{0x8B3866F8L,0UL,0UL,0x8B3866F8L},{0x8B3866F8L,0UL,0UL,0x8B3866F8L},{0x8B3866F8L,0UL,0UL,0x8B3866F8L},{0x8B3866F8L,0UL,0UL,0x8B3866F8L},{0x8B3866F8L,0UL,0UL,0x8B3866F8L},{0x8B3866F8L,0UL,0UL,0x8B3866F8L},{0x8B3866F8L,0UL,0UL,0x8B3866F8L},{0x8B3866F8L,0UL,0UL,0x8B3866F8L}};
        uint8_t *l_616 = &p_932->g_196[0];
        uint8_t **l_655[3][3][9] = {{{&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616},{&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616},{&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616}},{{&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616},{&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616},{&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616}},{{&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616},{&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616},{&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616,&l_616,(void*)0,&l_616}}};
        uint8_t ***l_654 = &l_655[2][1][1];
        int64_t *l_662 = (void*)0;
        int64_t *l_663[9] = {&p_932->g_227,&p_932->g_503[1][3][0],&p_932->g_227,&p_932->g_227,&p_932->g_503[1][3][0],&p_932->g_227,&p_932->g_227,&p_932->g_503[1][3][0],&p_932->g_227};
        int i, j, k;
        l_591[4][2]--;
        for (p_932->g_133 = 0; (p_932->g_133 > 28); p_932->g_133 = safe_add_func_int32_t_s_s(p_932->g_133, 6))
        { /* block id: 235 */
            int8_t l_607 = (-1L);
            int32_t l_621 = 0x42C00899L;
            int8_t l_644[4][10] = {{0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L},{0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L},{0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L},{0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L,0x08L}};
            int i, j;
            for (p_932->g_360 = 20; (p_932->g_360 == 12); p_932->g_360 = safe_sub_func_int16_t_s_s(p_932->g_360, 7))
            { /* block id: 238 */
                int32_t *l_602[4];
                uint8_t *l_608 = &p_932->g_196[6];
                int32_t l_613[4] = {(-4L),(-4L),(-4L),(-4L)};
                uint8_t **l_617 = &l_608;
                int8_t *l_619 = (void*)0;
                int8_t *l_620[5];
                uint32_t *l_622 = &l_591[4][2];
                int i;
                for (i = 0; i < 4; i++)
                    l_602[i] = &l_589[3][2];
                for (i = 0; i < 5; i++)
                    l_620[i] = &p_932->g_150;
                (*p_21) = (safe_mul_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((((p_932->g_603 = 0x6A100FB4L) , l_604) != (void*)0) < (safe_rshift_func_uint16_t_u_u((((*l_608) = l_607) > ((safe_sub_func_int32_t_s_s(((0L <= 0x80191B82L) & (((void*)0 == &p_932->g_360) >= p_932->g_150)), l_607)) && l_607)), l_589[3][2]))), p_932->g_408)), p_932->g_273[0]));
                (*p_21) = (safe_div_func_uint32_t_u_u(((*l_622) ^= (l_613[0] >= (l_607 , (l_621 |= (!(p_932->g_618 &= (l_607 ^ (p_932->g_426 , ((((safe_sub_func_uint64_t_u_u((0x6EL >= (**l_494)), (l_616 != ((*l_617) = &p_932->g_196[0])))) && (**l_494)) , p_932->g_273[1]) , l_589[4][3]))))))))), (*p_932->g_17)));
                for (l_607 = 0; (l_607 <= (-5)); l_607 = safe_sub_func_uint64_t_u_u(l_607, 3))
                { /* block id: 249 */
                    uint32_t l_627 = 0xF115DAACL;
                    for (p_932->g_108 = 0; (p_932->g_108 < 10); p_932->g_108 = safe_add_func_int32_t_s_s(p_932->g_108, 1))
                    { /* block id: 252 */
                        int8_t l_630 = (-1L);
                        uint8_t **l_643 = &l_616;
                        --l_627;
                        if ((*p_21))
                            break;
                        (***l_493) = ((~l_630) , (safe_lshift_func_int8_t_s_u((-2L), (safe_mul_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(p_932->g_582[5][7][2], (**p_932->g_311))), (safe_mod_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((p_932->g_178[5][0][2] , (safe_mul_func_uint8_t_u_u(((**l_617) = 250UL), ((!(&p_932->g_603 != ((*l_643) = &p_932->g_618))) || (0x31794A50L >= GROUP_DIVERGE(0, 1)))))), l_591[5][0])), l_644[2][8])))))));
                        (***l_493) ^= (*p_21);
                    }
                    if (l_644[3][7])
                        break;
                }
            }
        }
        (**l_494) &= (*p_932->g_17);
        l_590 ^= (((*p_932->g_566) , ((**l_494) < (((safe_add_func_uint32_t_u_u((safe_div_func_int64_t_s_s((safe_mul_func_int8_t_s_s(p_932->g_651, (((((p_932->g_503[1][1][4] ^= (((((((safe_mul_func_int16_t_s_s((((*l_654) = (void*)0) == ((((safe_rshift_func_uint16_t_u_s(((safe_mod_func_int8_t_s_s(((*p_932->g_17) == (*p_21)), l_591[6][1])) == (0xD0BC723AL != 3UL)), (**l_494))) && 4294967288UL) ^ 0x39B8B4DDL) , p_932->g_660)), l_591[3][2])) & 6L) ^ 1UL) ^ 4UL) , l_589[2][1]) < p_932->g_108) < p_932->g_569)) < (-2L)) | (*p_21)) <= GROUP_DIVERGE(0, 1)) >= 0x3B4168D5L))), 0x086E8DB090693E8DL)), p_932->g_569)) , 0UL) <= 0x15A4C7E761D46F43L))) , 0x2F629745L);
    }
    if ((*p_932->g_183))
    { /* block id: 269 */
        uint8_t l_664[3][4][2] = {{{0x6DL,0x6DL},{0x6DL,0x6DL},{0x6DL,0x6DL},{0x6DL,0x6DL}},{{0x6DL,0x6DL},{0x6DL,0x6DL},{0x6DL,0x6DL},{0x6DL,0x6DL}},{{0x6DL,0x6DL},{0x6DL,0x6DL},{0x6DL,0x6DL},{0x6DL,0x6DL}}};
        uint64_t *l_667[8][7] = {{&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_108},{&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_108},{&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_108},{&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_108},{&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_108},{&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_108},{&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_108},{&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_133,&p_932->g_133,&p_932->g_108,&p_932->g_108}};
        int32_t l_668 = 0x48D93075L;
        int32_t l_675 = (-10L);
        int32_t l_676 = 0L;
        int32_t l_677[2];
        uint16_t l_682 = 0x7554L;
        int32_t l_708 = 0x0E84E05EL;
        int32_t l_709 = 0L;
        uint64_t l_711 = 18446744073709551613UL;
        int32_t ***l_720 = &l_494;
        uint32_t l_750 = 0xCCDDF62FL;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_677[i] = 1L;
        l_664[2][3][1]++;
        (**l_494) = (((((l_668 = p_932->g_582[5][7][2]) , l_668) && (((**p_932->g_660) |= (safe_rshift_func_int8_t_s_s(l_668, 4))) < (((safe_div_func_int16_t_s_s(p_932->g_618, 0x0333L)) , p_932->g_76[2]) <= (*p_932->g_17)))) <= l_664[0][3][1]) <= ((l_664[1][0][0] != p_932->g_293) > (**l_494)));
        for (l_484 = 2; (l_484 >= 0); l_484 -= 1)
        { /* block id: 276 */
            int32_t l_673 = 0x463316D4L;
            int32_t l_674[6][3] = {{(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L)},{(-4L),(-4L),(-4L)}};
            int16_t l_678 = 0x4670L;
            uint16_t l_679[10];
            int64_t **l_696 = &l_482;
            int8_t l_710 = 0x54L;
            int32_t l_749 = 1L;
            int i, j;
            for (i = 0; i < 10; i++)
                l_679[i] = 0xF8E0L;
            --l_679[0];
            l_682++;
            (**l_493) = l_483[(l_484 + 1)];
            for (p_932->g_133 = 0; p_932->g_133 < 4; p_932->g_133 += 1)
            {
                l_483[p_932->g_133] = &l_668;
            }
            for (l_676 = 1; (l_676 >= 0); l_676 -= 1)
            { /* block id: 283 */
                uint32_t *l_689 = &p_932->g_360;
                int8_t *l_701 = &p_932->g_293;
                int32_t l_706[1];
                uint32_t *l_707 = (void*)0;
                uint8_t *l_717 = &l_664[2][0][0];
                uint8_t **l_716[7];
                int32_t ***l_723[3];
                int8_t l_769 = 0x4AL;
                int i;
                for (i = 0; i < 1; i++)
                    l_706[i] = 2L;
                for (i = 0; i < 7; i++)
                    l_716[i] = &l_717;
                for (i = 0; i < 3; i++)
                    l_723[i] = &l_494;
                (*p_932->g_177) |= (!((safe_lshift_func_int16_t_s_u(l_675, 6)) <= (l_708 ^= (((((safe_add_func_uint32_t_u_u((--(*l_689)), (*p_21))) != p_932->g_108) , (safe_div_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s(((void*)0 == l_696), ((((*l_701) = (safe_rshift_func_uint8_t_u_s((p_21 == p_21), p_932->g_76[2]))) != ((safe_mul_func_int16_t_s_s(((safe_sub_func_uint8_t_u_u(0x9BL, p_932->g_325)) != 0x279A03B059936061L), l_706[0])) <= (-4L))) <= (*p_21)))) , (**l_494)), FAKE_DIVERGE(p_932->local_0_offset, get_local_id(0), 10)))) , p_932->g_196[6]) < l_677[0]))));
                l_711++;
                if ((*p_21))
                    continue;
                for (l_708 = 0; (l_708 <= 1); l_708 += 1)
                { /* block id: 292 */
                    uint16_t *l_726 = &l_682;
                    int16_t *l_727 = (void*)0;
                    int32_t l_742 = (-1L);
                    uint32_t l_744 = 0x08B4BF6FL;
                    int32_t l_745 = (-10L);
                    int32_t ****l_755 = (void*)0;
                    int i, j, k;
                    if ((((l_664[l_708][(l_708 + 2)][l_676] | ((***l_720) = (safe_rshift_func_uint16_t_u_s(((*l_726) = ((l_716[3] != &l_717) , (safe_sub_func_uint8_t_u_u(((l_720 != ((safe_rshift_func_int8_t_s_s(p_932->g_582[l_708][(l_676 + 8)][l_676], 3)) , l_723[1])) != (*p_932->g_17)), ((((++(**p_932->g_311)) != (***l_720)) | (**l_494)) || 0L))))), (***l_720))))) , (void*)0) != (void*)0))
                    { /* block id: 296 */
                        uint16_t l_728 = 0x0C3CL;
                        --l_728;
                        if ((***l_720))
                            break;
                        (*p_932->g_177) |= 0x682357CFL;
                    }
                    else
                    { /* block id: 300 */
                        int32_t l_743 = 0x4B93A83EL;
                        int i, j, k;
                        (**l_494) = (safe_sub_func_int64_t_s_s(((((***l_720) & ((((l_743 ^= (((((***l_720) , p_932->g_733) == l_696) , ((((safe_rshift_func_int16_t_s_u(p_932->g_582[l_676][(l_484 + 4)][l_676], (l_742 = ((((l_664[(l_708 + 1)][(l_676 + 1)][l_676] = ((((void*)0 != &p_932->g_173) , p_932->g_503[2][3][0]) , ((safe_div_func_uint16_t_u_u((+(((safe_sub_func_int64_t_s_s((l_717 == (void*)0), l_741)) < (***l_720)) & (**p_932->g_311))), 1L)) && (***l_720)))) && 0xC7L) , 0x3DDE14C4L) , l_664[l_708][(l_708 + 2)][l_676])))) >= 0x792CL) & (*p_932->g_17)) || p_932->g_293)) && (***l_720))) > (***l_720)) < p_932->g_173) & p_932->g_68)) == l_744) < GROUP_DIVERGE(1, 1)), p_932->g_173));
                        (**l_720) = p_21;
                        if ((*p_21))
                            continue;
                        (**l_720) = (**l_493);
                    }
                    ++l_746;
                    ++l_750;
                    for (p_932->g_603 = 0; (p_932->g_603 <= 2); p_932->g_603 += 1)
                    { /* block id: 313 */
                        uint32_t l_758 = 0x205630EDL;
                        (*p_21) = 0x5968E466L;
                        if ((***l_720))
                            break;
                        l_769 = ((***l_493) = ((safe_mul_func_uint16_t_u_u((***l_720), (((((l_745 , l_755) != l_755) , ((***p_932->g_310) , (safe_div_func_uint8_t_u_u(l_758, (safe_mul_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(0x62D0L, (safe_div_func_uint64_t_u_u((p_932->g_108 <= ((safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((~(0x0EE89106L < 4294967295UL)), 1)), (*p_932->g_312))) | p_932->g_108)), (***l_493))))), (**p_932->g_660))))))) , 0x432B1DBFL) , (***p_932->g_310)))) != l_758));
                    }
                }
            }
        }
        (*p_932->g_17) |= ((safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((*p_932->g_661), (p_932->g_178[1][1][0] > 1L))), 0x600BL)) != 0x75L);
    }
    else
    { /* block id: 323 */
        int16_t l_791 = 0x0B58L;
        uint8_t l_812 = 255UL;
        uint64_t l_815 = 18446744073709551615UL;
        int32_t l_817 = 0x48CF938CL;
        if ((safe_lshift_func_int16_t_s_u((**l_494), (***l_493))))
        { /* block id: 324 */
            uint8_t *l_779 = (void*)0;
            int32_t l_792 = (-1L);
            uint8_t l_794 = 246UL;
            for (p_932->g_18 = 3; (p_932->g_18 >= 0); p_932->g_18 -= 1)
            { /* block id: 327 */
                uint8_t l_776 = 0x32L;
                int32_t *l_780 = &p_932->g_178[7][3][1];
                uint64_t *l_789 = &p_932->g_790;
                uint64_t *l_793 = &l_746;
                int i;
                --l_776;
                (*p_932->g_177) = (((p_932->g_76[p_932->g_18] >= 3L) <= 0UL) == ((*p_932->g_660) == l_779));
                (*l_494) = l_780;
                (*p_932->g_183) = (safe_mod_func_int32_t_s_s(((safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(0x03E5L, (safe_div_func_uint32_t_u_u((***l_493), FAKE_DIVERGE(p_932->global_2_offset, get_global_id(2), 10))))), (((*l_789) |= GROUP_DIVERGE(0, 1)) , ((((l_791 < l_792) < (*l_780)) , (l_794 = (l_791 | ((*l_793) = GROUP_DIVERGE(1, 1))))) , (safe_sub_func_uint64_t_u_u((*l_780), (safe_add_func_uint64_t_u_u((safe_div_func_uint64_t_u_u((65532UL && (safe_mul_func_uint16_t_u_u(0x78EFL, p_932->g_569))), (*l_780))), 0x042487417713CB1FL)))))))) <= l_792), (*p_932->g_17)));
            }
        }
        else
        { /* block id: 336 */
            int32_t *l_803 = &p_932->g_18;
            (**l_493) = l_803;
            for (p_932->g_569 = (-13); (p_932->g_569 <= 34); p_932->g_569 = safe_add_func_int16_t_s_s(p_932->g_569, 7))
            { /* block id: 340 */
                int32_t l_816 = (-1L);
                l_817 &= ((l_791 , ((0UL >= (((safe_add_func_uint32_t_u_u(((((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint8_t_u_u(l_812, (safe_mul_func_uint8_t_u_u((((&l_741 != ((0x0CL && (&l_803 != &p_21)) , &p_932->g_325)) > l_815) & (*p_932->g_661)), l_816)))), 8)) < 9UL) ^ 0x64L) & l_816), (*l_803))) && FAKE_DIVERGE(p_932->group_1_offset, get_group_id(1), 10)) >= (*l_803))) , l_816)) , l_812);
            }
        }
    }
    (*p_932->g_183) &= (*p_21);
    for (p_932->g_618 = 0; (p_932->g_618 <= 0); p_932->g_618 += 1)
    { /* block id: 348 */
        int64_t *l_818 = &p_932->g_503[1][4][1];
        int32_t l_821[4][2] = {{0x003C069DL,7L},{0x003C069DL,7L},{0x003C069DL,7L},{0x003C069DL,7L}};
        int32_t l_854[8];
        int32_t l_863 = 5L;
        int i, j;
        for (i = 0; i < 8; i++)
            l_854[i] = 1L;
        (*l_494) = func_28((l_482 != l_482), p_932->g_76[(p_932->g_618 + 2)], ((*l_818) = p_932->g_76[(p_932->g_618 + 2)]), p_932->g_76[(p_932->g_618 + 2)], ((**p_932->g_660)--), p_932);
        (*l_494) = p_21;
        l_821[0][1] &= (*p_21);
        for (p_932->g_150 = 0; (p_932->g_150 <= 0); p_932->g_150 += 1)
        { /* block id: 356 */
            int32_t *l_824 = (void*)0;
            uint64_t *l_827 = &l_746;
            int32_t l_845 = 1L;
            int64_t l_857 = (-1L);
            int16_t *l_860 = &l_741;
            int32_t l_861 = 0x48404C5CL;
            uint16_t l_862 = 7UL;
            if (p_932->g_76[(p_932->g_618 + 2)])
                break;
            for (p_932->g_18 = 0; (p_932->g_18 <= 3); p_932->g_18 += 1)
            { /* block id: 360 */
                int16_t *l_825 = (void*)0;
                int16_t *l_826 = &p_932->g_325;
                int32_t l_828 = 0x1CC349E3L;
                int i, j, k;
                l_828 = (p_932->g_734[p_932->g_150][p_932->g_150][(p_932->g_618 + 3)] == ((safe_lshift_func_uint16_t_u_s(6UL, ((*l_826) ^= (&p_932->g_178[6][1][1] == (((p_932->g_76[(p_932->g_618 + 3)] >= p_932->g_18) | 0x75DE16D567092CD0L) , l_824))))) , l_827));
                return p_21;
            }
            l_863 ^= ((p_932->g_582[5][7][2] == (safe_add_func_uint64_t_u_u(((*p_21) <= ((safe_div_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((((safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((((((safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((p_932->g_325 = ((safe_rshift_func_int16_t_s_s(0x2377L, 0)) , p_932->g_503[2][3][0])), l_845)), ((safe_sub_func_uint32_t_u_u(((p_932->g_108 >= ((safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (((safe_sub_func_uint8_t_u_u(l_854[6], (safe_mod_func_uint16_t_u_u(l_857, (safe_rshift_func_int16_t_s_u(((*l_860) ^= p_932->g_133), 6)))))) ^ p_932->g_76[(p_932->g_618 + 2)]) != l_854[6]))), p_932->g_196[7])) > p_932->g_133)) < 0L), (*p_21))) == GROUP_DIVERGE(2, 1)))) < l_861) || l_857) < 255UL) ^ 1L) != p_932->g_503[2][3][0]), 4)), l_861)) , l_854[1]) && p_932->g_76[1]), (*p_932->g_312))), (*p_21))) == l_862)), l_821[0][1]))) & 247UL);
            (**l_493) = &l_821[3][0];
            for (l_741 = 3; (l_741 >= 0); l_741 -= 1)
            { /* block id: 371 */
                uint8_t *l_869[9][7] = {{(void*)0,&p_932->g_196[3],&p_932->g_196[6],&p_932->g_196[6],&p_932->g_196[3],(void*)0,&p_932->g_196[3]},{(void*)0,&p_932->g_196[3],&p_932->g_196[6],&p_932->g_196[6],&p_932->g_196[3],(void*)0,&p_932->g_196[3]},{(void*)0,&p_932->g_196[3],&p_932->g_196[6],&p_932->g_196[6],&p_932->g_196[3],(void*)0,&p_932->g_196[3]},{(void*)0,&p_932->g_196[3],&p_932->g_196[6],&p_932->g_196[6],&p_932->g_196[3],(void*)0,&p_932->g_196[3]},{(void*)0,&p_932->g_196[3],&p_932->g_196[6],&p_932->g_196[6],&p_932->g_196[3],(void*)0,&p_932->g_196[3]},{(void*)0,&p_932->g_196[3],&p_932->g_196[6],&p_932->g_196[6],&p_932->g_196[3],(void*)0,&p_932->g_196[3]},{(void*)0,&p_932->g_196[3],&p_932->g_196[6],&p_932->g_196[6],&p_932->g_196[3],(void*)0,&p_932->g_196[3]},{(void*)0,&p_932->g_196[3],&p_932->g_196[6],&p_932->g_196[6],&p_932->g_196[3],(void*)0,&p_932->g_196[3]},{(void*)0,&p_932->g_196[3],&p_932->g_196[6],&p_932->g_196[6],&p_932->g_196[3],(void*)0,&p_932->g_196[3]}};
                int32_t l_870 = 0x2E9F93E5L;
                uint32_t *l_891 = &p_932->g_892;
                uint32_t *l_893 = &p_932->g_360;
                int64_t *l_894 = (void*)0;
                int64_t *l_895 = &p_932->g_896;
                int i, j, k;
                for (p_932->g_108 = 0; (p_932->g_108 <= 3); p_932->g_108 += 1)
                { /* block id: 374 */
                    uint8_t l_864 = 0xEEL;
                    int i, j, k;
                    (*l_494) = &p_932->g_178[(p_932->g_108 + 2)][p_932->g_618][p_932->g_150];
                    l_864--;
                }
                l_861 &= ((*p_21) ^= (((((safe_div_func_uint8_t_u_u((p_932->g_603 ^= (*p_932->g_661)), l_870)) | (((5UL < 0x3DL) , ((~(((((0UL | (l_870 && (*p_932->g_312))) , 5L) && (-1L)) ^ GROUP_DIVERGE(1, 1)) , p_932->g_68)) & 0L)) , 0x17D0CCDDL)) , l_870) != l_863) , 0x114CF66CL));
                (**l_493) = (((*l_895) = ((safe_div_func_uint32_t_u_u(((*l_893) = (safe_lshift_func_uint8_t_u_s((safe_div_func_int32_t_s_s(0x0325EBBCL, (~((*l_604) == (void*)0)))), (l_870 != ((*l_827) ^= (safe_add_func_uint16_t_u_u(65529UL, (safe_mul_func_int8_t_s_s(((safe_mod_func_int32_t_s_s(((+((*l_891) = (((*l_818) = (0xFA39L & ((safe_sub_func_int8_t_s_s(((safe_sub_func_int64_t_s_s((safe_add_func_uint16_t_u_u((0x64B5L > FAKE_DIVERGE(p_932->local_0_offset, get_local_id(0), 10)), (p_932->g_582[5][7][2] , ((safe_sub_func_int64_t_s_s(0L, 0L)) && (*p_21))))), l_870)) == 0L), l_863)) || (*p_932->g_661)))) <= l_870))) , 0x4DC9D9BBL), p_932->g_297)) , p_932->g_196[0]), 0x56L))))))))), FAKE_DIVERGE(p_932->local_2_offset, get_local_id(2), 10))) != 0xDAFD7D94B8FAAB57L)) , (void*)0);
            }
        }
    }
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_932->g_297 p_932->g_310 p_932->g_17 p_932->g_196 p_932->g_68 p_932->g_71 p_932->g_18 p_932->g_178 p_932->g_360 p_932->g_173 p_932->g_293 p_932->g_311 p_932->g_312 p_932->g_76 p_932->g_408 p_932->g_108 p_932->g_150 p_932->g_133 p_932->g_183 p_932->g_426 p_932->g_273
 * writes: p_932->g_297 p_932->g_18 p_932->g_150 p_932->g_325 p_932->g_178 p_932->g_360 p_932->g_408 p_932->g_108 p_932->g_68 p_932->g_293 p_932->g_426 p_932->g_196
 */
int32_t * func_22(uint32_t  p_23, uint32_t  p_24, int32_t * p_25, struct S0 * p_932)
{ /* block id: 114 */
    uint16_t *l_309 = &p_932->g_68;
    uint16_t **l_308 = &l_309;
    uint16_t ***l_307 = &l_308;
    int32_t l_340 = 0x15A96146L;
    int64_t *l_375 = &p_932->g_227;
    int32_t l_377 = 6L;
    int8_t l_385 = 1L;
    int32_t *l_395 = &p_932->g_173;
    int32_t ***l_417 = (void*)0;
    int32_t *l_421 = &l_340;
    int32_t *l_422 = &p_932->g_18;
    int32_t l_425[6];
    uint8_t *l_459 = &p_932->g_196[9];
    int8_t *l_470 = (void*)0;
    int8_t **l_471 = &l_470;
    uint32_t *l_477 = &p_932->g_360;
    int i;
    for (i = 0; i < 6; i++)
        l_425[i] = 1L;
    for (p_932->g_297 = (-18); (p_932->g_297 >= 5); ++p_932->g_297)
    { /* block id: 117 */
        int32_t **l_326 = &p_932->g_17;
        int32_t l_374[7][8] = {{0L,0L,1L,8L,0L,8L,1L,0L},{0L,0L,1L,8L,0L,8L,1L,0L},{0L,0L,1L,8L,0L,8L,1L,0L},{0L,0L,1L,8L,0L,8L,1L,0L},{0L,0L,1L,8L,0L,8L,1L,0L},{0L,0L,1L,8L,0L,8L,1L,0L},{0L,0L,1L,8L,0L,8L,1L,0L}};
        uint64_t l_376 = 0xD6B5296113AD017CL;
        int8_t l_378 = 0x44L;
        int32_t l_384 = (-4L);
        int32_t *l_396[3][2][2] = {{{&p_932->g_173,&p_932->g_173},{&p_932->g_173,&p_932->g_173}},{{&p_932->g_173,&p_932->g_173},{&p_932->g_173,&p_932->g_173}},{{&p_932->g_173,&p_932->g_173},{&p_932->g_173,&p_932->g_173}}};
        int32_t ***l_405 = &l_326;
        int32_t **l_406 = &l_395;
        int32_t l_407 = 0x22800B51L;
        int32_t ***l_419 = &l_326;
        uint32_t l_432[9] = {0x4668D86FL,0x4668D86FL,0x4668D86FL,0x4668D86FL,0x4668D86FL,0x4668D86FL,0x4668D86FL,0x4668D86FL,0x4668D86FL};
        uint32_t *l_439[9][9][3] = {{{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408}},{{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408}},{{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408}},{{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408}},{{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408}},{{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408}},{{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408}},{{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408}},{{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408},{&p_932->g_408,(void*)0,&p_932->g_408}}};
        int i, j, k;
        for (p_24 = 2; (p_24 <= 6); p_24 += 1)
        { /* block id: 120 */
            uint8_t *l_313 = &p_932->g_196[4];
            int32_t l_322 = 1L;
            int8_t *l_323 = &p_932->g_150;
            int16_t *l_324 = &p_932->g_325;
            int64_t l_327[4][6] = {{0x67FC0F5B00E2FFBBL,0x2514F412A1E54621L,(-7L),0x2454E624271F3137L,0x2514F412A1E54621L,0x2454E624271F3137L},{0x67FC0F5B00E2FFBBL,0x2514F412A1E54621L,(-7L),0x2454E624271F3137L,0x2514F412A1E54621L,0x2454E624271F3137L},{0x67FC0F5B00E2FFBBL,0x2514F412A1E54621L,(-7L),0x2454E624271F3137L,0x2514F412A1E54621L,0x2454E624271F3137L},{0x67FC0F5B00E2FFBBL,0x2514F412A1E54621L,(-7L),0x2454E624271F3137L,0x2514F412A1E54621L,0x2454E624271F3137L}};
            int32_t *l_329 = &p_932->g_178[7][1][2];
            uint32_t *l_359 = &p_932->g_360;
            int8_t *l_373[7][6][3] = {{{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293}},{{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293}},{{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293}},{{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293}},{{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293}},{{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293}},{{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293},{&p_932->g_293,&p_932->g_293,&p_932->g_293}}};
            int32_t *l_379 = &l_322;
            int32_t *l_380 = &p_932->g_178[5][0][2];
            int32_t *l_381 = (void*)0;
            int32_t *l_382 = &l_340;
            int32_t *l_383[9][4] = {{&p_932->g_18,&p_932->g_178[5][0][2],&l_377,&p_932->g_178[5][0][2]},{&p_932->g_18,&p_932->g_178[5][0][2],&l_377,&p_932->g_178[5][0][2]},{&p_932->g_18,&p_932->g_178[5][0][2],&l_377,&p_932->g_178[5][0][2]},{&p_932->g_18,&p_932->g_178[5][0][2],&l_377,&p_932->g_178[5][0][2]},{&p_932->g_18,&p_932->g_178[5][0][2],&l_377,&p_932->g_178[5][0][2]},{&p_932->g_18,&p_932->g_178[5][0][2],&l_377,&p_932->g_178[5][0][2]},{&p_932->g_18,&p_932->g_178[5][0][2],&l_377,&p_932->g_178[5][0][2]},{&p_932->g_18,&p_932->g_178[5][0][2],&l_377,&p_932->g_178[5][0][2]},{&p_932->g_18,&p_932->g_178[5][0][2],&l_377,&p_932->g_178[5][0][2]}};
            uint16_t l_386 = 0x6492L;
            int i, j, k;
            (*p_932->g_17) = ((l_307 == p_932->g_310) && ((void*)0 == l_313));
            (*l_329) |= (((p_932->g_196[5] ^ (safe_lshift_func_int16_t_s_s((safe_sub_func_int8_t_s_s(((*l_323) = (safe_sub_func_uint32_t_u_u(p_932->g_196[1], l_322))), p_932->g_68)), ((*l_324) = p_23)))) > l_322) != (p_24 <= (GROUP_DIVERGE(1, 1) , ((**l_326) ^= ((p_932->g_71 <= (&p_932->g_296[p_24] != l_326)) & l_327[3][4])))));
            (*l_329) = (safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((p_24 != (p_24 == ((safe_lshift_func_int16_t_s_s((((*p_25) = 3L) && (safe_lshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s(l_340, (safe_lshift_func_uint16_t_u_u((!(safe_mul_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u((safe_add_func_uint64_t_u_u((safe_div_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(((safe_div_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u(((*l_359) ^= (safe_mul_func_int8_t_s_s(((*l_323) = 0x68L), 5UL))), ((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_932->group_1_offset, get_group_id(1), 10), (p_24 || (((safe_mul_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(((((p_932->g_173 , (((safe_mod_func_int8_t_s_s((l_374[3][1] = l_340), p_932->g_293)) == l_340) & (***p_932->g_310))) , p_932->g_68) , &p_932->g_71) != l_375), p_932->g_196[6])), p_24)) && 0x05B8D4C38B294ED0L) < (**l_326))))), p_932->g_178[3][6][2])) && 0x9B24L))), (*p_932->g_312))) <= l_340), (*l_329))), l_340)), 1UL)), p_23)) & p_24), l_376))), 5)))), l_377))), p_24)) || 7L))), l_378)), (**p_932->g_311)));
            l_386++;
        }
        if ((safe_sub_func_uint32_t_u_u(((-1L) ^ (safe_add_func_uint8_t_u_u((((((l_377 <= (l_395 == (l_396[0][0][1] = &p_932->g_173))) || (safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s(((p_23 | 0x2CL) & (!(safe_mul_func_int8_t_s_s((((&p_932->g_296[1] != ((*l_405) = l_326)) , ((*l_406) = p_25)) != (void*)0), l_407)))), (*p_25))), l_340)), p_24))) == (*p_932->g_312)) || (**l_326)) < p_24), 0x44L))), FAKE_DIVERGE(p_932->global_0_offset, get_global_id(0), 10))))
        { /* block id: 136 */
            uint64_t *l_413 = &p_932->g_108;
            uint64_t *l_416[3];
            int32_t ****l_418 = (void*)0;
            int32_t *l_420 = &p_932->g_178[5][0][2];
            int32_t *l_423 = &l_407;
            int32_t *l_424[7][3][9] = {{{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]}},{{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]}},{{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]}},{{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]}},{{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]}},{{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]}},{{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]},{&l_374[3][1],&l_374[1][2],&l_384,&l_384,&p_932->g_178[1][0][2],(void*)0,(void*)0,&l_377,&p_932->g_178[0][5][0]}}};
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_416[i] = &l_376;
            l_422 = (l_420 = (l_421 = func_28((p_932->g_408++), (((**l_326) & (l_377 = ((safe_rshift_func_uint8_t_u_s((((++(*l_413)) | (0x74C6EA54E1C75638L < (**l_326))) , (**l_326)), (GROUP_DIVERGE(1, 1) , (-5L)))) , 18446744073709551612UL))) , (l_417 != (l_419 = l_417))), (FAKE_DIVERGE(p_932->global_0_offset, get_global_id(0), 10) , (((*l_420) = (((p_23 , l_385) | (**l_326)) == (**l_326))) , p_932->g_173)), p_23, p_932->g_76[2], p_932)));
            ++p_932->g_426;
        }
        else
        { /* block id: 146 */
            int32_t *l_429 = &l_425[1];
            int32_t *l_430 = &l_340;
            int32_t *l_431[5][9] = {{&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377},{&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377},{&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377},{&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377},{&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377,&l_377}};
            int i, j;
            l_432[5]++;
            (*p_932->g_17) &= 0x67C00A5CL;
        }
        for (l_385 = 0; (l_385 == 11); l_385 = safe_add_func_uint16_t_u_u(l_385, 5))
        { /* block id: 152 */
            int32_t *l_446 = (void*)0;
            for (l_407 = 5; (l_407 >= 0); l_407 -= 1)
            { /* block id: 155 */
                int32_t **l_447 = (void*)0;
                int32_t **l_448[6] = {(void*)0,&l_421,(void*)0,(void*)0,&l_421,(void*)0};
                int i, j;
                l_374[(l_407 + 1)][(l_407 + 1)] &= ((safe_add_func_uint16_t_u_u(((l_439[8][1][1] = &p_932->g_408) != ((safe_rshift_func_uint8_t_u_s((0xFC3C03E8L != 5UL), 5)) , func_28(p_24, p_23, p_932->g_273[0], (safe_mod_func_int16_t_s_s(p_932->g_173, (safe_div_func_uint64_t_u_u(((*p_932->g_17) | ((4L < p_24) != (-5L))), p_23)))), p_24, p_932))), p_932->g_18)) , 0x3A580348L);
                p_25 = (l_446 = p_25);
            }
        }
        (*p_932->g_17) = (*p_25);
    }
    (*p_932->g_17) ^= (safe_lshift_func_uint8_t_u_s((((safe_sub_func_uint16_t_u_u((safe_div_func_int8_t_s_s(((void*)0 != &l_308), ((((safe_lshift_func_int16_t_s_s((0UL & (safe_lshift_func_int16_t_s_u(((++(*l_459)) <= 1UL), 1))), (safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s((safe_div_func_int32_t_s_s(0x5BE5DE05L, ((*l_477) |= (safe_add_func_int16_t_s_s(p_932->g_293, ((((*l_471) = l_470) == &p_932->g_293) , (safe_unary_minus_func_int32_t_s((((safe_lshift_func_int16_t_s_u((((safe_div_func_uint16_t_u_u((p_932->g_76[2] > p_932->g_178[5][0][2]), p_24)) , p_23) > p_932->g_178[0][6][2]), 13)) , p_24) ^ (-5L)))))))))), p_932->g_68)), 3)))) , p_25) != l_422) , p_932->g_178[5][0][2]))), p_24)) , (void*)0) != l_375), p_932->g_273[0]));
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_932->g_68 p_932->g_196 p_932->g_76 p_932->g_150 p_932->g_71 p_932->g_178 p_932->g_17 p_932->g_18 p_932->g_133 p_932->g_183
 * writes: p_932->g_68 p_932->g_293 p_932->g_150 p_932->g_178
 */
int32_t * func_28(uint32_t  p_29, int16_t  p_30, int64_t  p_31, uint64_t  p_32, uint8_t  p_33, struct S0 * p_932)
{ /* block id: 100 */
    int64_t *l_284 = (void*)0;
    uint64_t l_291 = 18446744073709551611UL;
    int32_t *l_292 = &p_932->g_173;
    int8_t *l_294[10] = {&p_932->g_150,&p_932->g_150,&p_932->g_150,&p_932->g_150,&p_932->g_150,&p_932->g_150,&p_932->g_150,&p_932->g_150,&p_932->g_150,&p_932->g_150};
    int32_t l_295 = 0x0EC597BFL;
    int32_t *l_298 = (void*)0;
    int32_t l_299 = 0x03CDA460L;
    uint16_t *l_301 = &p_932->g_76[2];
    uint16_t **l_300 = &l_301;
    uint16_t ***l_302 = (void*)0;
    int32_t *l_303 = (void*)0;
    int32_t *l_304[4] = {&l_295,&l_295,&l_295,&l_295};
    int i;
    for (p_932->g_68 = 0; (p_932->g_68 < 55); p_932->g_68 = safe_add_func_int16_t_s_s(p_932->g_68, 3))
    { /* block id: 103 */
        int32_t *l_279[8] = {&p_932->g_178[5][0][2],&p_932->g_178[5][0][2],&p_932->g_178[5][0][2],&p_932->g_178[5][0][2],&p_932->g_178[5][0][2],&p_932->g_178[5][0][2],&p_932->g_178[5][0][2],&p_932->g_178[5][0][2]};
        int i;
        return l_279[1];
    }
    l_299 &= ((l_295 = ((safe_sub_func_int16_t_s_s(((safe_mul_func_int8_t_s_s(p_932->g_196[3], (((((l_284 == (void*)0) , ((safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(((p_932->g_150 ^= ((p_932->g_293 = (((((((&p_932->g_71 == &p_31) , (safe_mul_func_int8_t_s_s((((p_932->g_76[2] > 0x6138L) && (p_932->g_76[2] && l_291)) | p_29), l_291))) , l_292) != (void*)0) > l_291) , 0x10D6146A2B3D1204L) <= p_32)) != 5L)) <= p_932->g_71), 3)), p_932->g_178[3][2][1])) & FAKE_DIVERGE(p_932->local_2_offset, get_local_id(2), 10))) && p_32) > 0x6ABCL) < 5L))) & (*p_932->g_17)), 0x98EAL)) , p_932->g_133)) , p_31);
    l_300 = l_300;
    (*p_932->g_183) ^= 0x4B3088F5L;
    return &p_932->g_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_932->g_76 p_932->g_108 p_932->g_18 p_932->g_173 p_932->g_178 p_932->g_150 p_932->g_71 p_932->g_196 p_932->g_133 p_932->g_183 p_932->g_68 p_932->g_273
 * writes: p_932->g_108 p_932->g_173 p_932->g_178 p_932->g_71 p_932->g_227 p_932->g_273
 */
uint64_t  func_34(int64_t  p_35, int32_t * p_36, uint64_t  p_37, int32_t * p_38, struct S0 * p_932)
{ /* block id: 49 */
    uint8_t l_203[4][5] = {{254UL,254UL,255UL,252UL,0xB8L},{254UL,254UL,255UL,252UL,0xB8L},{254UL,254UL,255UL,252UL,0xB8L},{254UL,254UL,255UL,252UL,0xB8L}};
    int32_t l_253 = 0L;
    int32_t l_261 = 0x73474130L;
    int32_t l_265[8] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
    int i, j;
    for (p_35 = 26; (p_35 < 12); --p_35)
    { /* block id: 52 */
        return l_203[3][4];
    }
    for (p_37 = 0; (p_37 <= 3); p_37 += 1)
    { /* block id: 57 */
        int i;
        return p_932->g_76[p_37];
    }
    for (p_932->g_108 = (-11); (p_932->g_108 != 9); p_932->g_108++)
    { /* block id: 62 */
        if ((*p_36))
            break;
    }
    for (p_37 = 0; (p_37 < 15); p_37 = safe_add_func_int16_t_s_s(p_37, 2))
    { /* block id: 67 */
        uint16_t l_229 = 0UL;
        int32_t l_258 = (-1L);
        int32_t l_259 = 0x01244A16L;
        int32_t l_260 = 1L;
        int32_t l_262 = 2L;
        int32_t l_263 = 0x3D086D45L;
        int32_t l_264 = 1L;
        int32_t l_267 = 0x0CA2FDA5L;
        int32_t l_268 = 1L;
        int32_t l_269 = 0x4D9A6DE5L;
        int32_t l_270[10] = {9L,9L,9L,9L,9L,9L,9L,9L,9L,9L};
        int8_t l_272 = 0x21L;
        int i;
        for (p_932->g_173 = 0; (p_932->g_173 > (-13)); p_932->g_173--)
        { /* block id: 70 */
            uint16_t l_217[5][5][2] = {{{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL}},{{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL}},{{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL}},{{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL}},{{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL},{0x8D22L,65535UL}}};
            int i, j, k;
            for (p_35 = 0; (p_35 >= 27); p_35 = safe_add_func_uint32_t_u_u(p_35, 3))
            { /* block id: 73 */
                uint32_t l_212[3];
                int32_t *l_213 = &p_932->g_178[6][3][1];
                int32_t *l_214 = &p_932->g_178[5][5][1];
                int32_t *l_215 = &p_932->g_178[1][4][1];
                int32_t *l_216 = &p_932->g_178[5][0][2];
                int i;
                for (i = 0; i < 3; i++)
                    l_212[i] = 0x38D5A99FL;
                (*l_213) |= l_212[2];
                (*l_213) = (p_932->g_150 == 7L);
                l_217[0][2][1]--;
            }
        }
        for (p_932->g_71 = 0; (p_932->g_71 <= 9); p_932->g_71 += 1)
        { /* block id: 81 */
            int64_t *l_226 = &p_932->g_227;
            int64_t **l_240 = (void*)0;
            int64_t **l_241 = &l_226;
            uint8_t *l_242 = &l_203[3][4];
            int32_t l_243 = 1L;
            int32_t l_266[1][10] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
            int i, j;
            if ((safe_add_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u((l_243 |= ((safe_sub_func_uint8_t_u_u(p_932->g_196[p_932->g_71], p_932->g_76[1])) | ((*l_242) = ((((((*l_226) = 0L) || (safe_unary_minus_func_uint64_t_u((((l_229 == ((safe_mul_func_uint8_t_u_u(l_229, ((safe_mul_func_uint8_t_u_u((l_229 > (0x7F99L ^ (safe_rshift_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u((((((*l_241) = ((p_932->g_196[4] , p_932->g_133) , (void*)0)) == &p_35) == (*p_932->g_183)) < 0UL), p_932->g_196[p_932->g_71])), p_35)))), l_203[3][4])) | 0UL))) >= p_932->g_68)) || p_932->g_76[2]) > l_203[3][4])))) && p_37) < 0x3AF7L) & p_932->g_196[6])))), p_932->g_76[2])), p_37)))
            { /* block id: 86 */
                uint16_t l_246 = 0x115CL;
                for (p_35 = 19; (p_35 < (-19)); p_35 = safe_sub_func_uint8_t_u_u(p_35, 3))
                { /* block id: 89 */
                    ++l_246;
                }
                return l_229;
            }
            else
            { /* block id: 93 */
                int32_t *l_249 = &p_932->g_178[7][6][1];
                int32_t *l_250 = (void*)0;
                int32_t *l_251 = &p_932->g_178[5][0][2];
                int32_t *l_252 = &p_932->g_178[5][2][0];
                int32_t *l_254 = &p_932->g_178[5][0][2];
                int32_t *l_255 = &p_932->g_178[5][0][2];
                int32_t *l_256 = &p_932->g_178[5][0][2];
                int32_t *l_257[4];
                int16_t l_271 = (-7L);
                int i;
                for (i = 0; i < 4; i++)
                    l_257[i] = &p_932->g_178[5][0][2];
                --p_932->g_273[0];
                return p_932->g_68;
            }
        }
    }
    return p_932->g_76[2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_44(uint32_t  p_45, struct S0 * p_932)
{ /* block id: 44 */
    int32_t *l_184 = &p_932->g_178[5][0][2];
    int32_t l_185 = 0x79D0CA95L;
    int32_t *l_186 = (void*)0;
    int32_t *l_187 = (void*)0;
    int32_t *l_188 = &p_932->g_178[5][2][2];
    int32_t *l_189 = &l_185;
    int32_t *l_190[1][9][6] = {{{&l_185,&l_185,&p_932->g_178[3][5][2],&l_185,&l_185,&l_185},{&l_185,&l_185,&p_932->g_178[3][5][2],&l_185,&l_185,&l_185},{&l_185,&l_185,&p_932->g_178[3][5][2],&l_185,&l_185,&l_185},{&l_185,&l_185,&p_932->g_178[3][5][2],&l_185,&l_185,&l_185},{&l_185,&l_185,&p_932->g_178[3][5][2],&l_185,&l_185,&l_185},{&l_185,&l_185,&p_932->g_178[3][5][2],&l_185,&l_185,&l_185},{&l_185,&l_185,&p_932->g_178[3][5][2],&l_185,&l_185,&l_185},{&l_185,&l_185,&p_932->g_178[3][5][2],&l_185,&l_185,&l_185},{&l_185,&l_185,&p_932->g_178[3][5][2],&l_185,&l_185,&l_185}}};
    int8_t l_191 = 0x6CL;
    uint64_t l_192 = 5UL;
    int i, j, k;
    l_192--;
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads : p_932->g_18 p_932->g_17 p_932->g_68 p_932->g_108 p_932->g_76 p_932->g_133 p_932->g_71 p_932->g_173 p_932->g_177 p_932->g_178 p_932->g_183
 * writes: p_932->g_68 p_932->g_71 p_932->g_76 p_932->g_108 p_932->g_133 p_932->g_150 p_932->g_178
 */
uint16_t  func_48(int16_t  p_49, int64_t  p_50, int32_t * p_51, int32_t  p_52, int64_t  p_53, struct S0 * p_932)
{ /* block id: 5 */
    int32_t l_60 = 0x6B405B75L;
    int32_t l_109 = 1L;
    uint32_t l_118 = 0xF8E1F03BL;
    int16_t l_119 = 0x15A6L;
    int32_t *l_124 = &l_60;
    uint32_t l_148[1][1][2];
    uint64_t *l_162 = (void*)0;
    uint32_t l_175 = 0x38B1D141L;
    uint64_t l_176 = 0xBABB6E3EA3A5B7F6L;
    int32_t **l_179 = &l_124;
    int32_t *l_182 = &l_60;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 2; k++)
                l_148[i][j][k] = 0xDB94C902L;
        }
    }
    if ((*p_51))
    { /* block id: 6 */
        int32_t *l_66[6] = {&p_932->g_18,&l_60,&p_932->g_18,&p_932->g_18,&l_60,&p_932->g_18};
        int32_t **l_65 = &l_66[0];
        uint16_t *l_67 = &p_932->g_68;
        int32_t *l_73 = (void*)0;
        int32_t *l_75[1][9][5] = {{{(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60}}};
        int64_t *l_106 = &p_932->g_71;
        uint64_t *l_107[7] = {&p_932->g_108,&p_932->g_108,&p_932->g_108,&p_932->g_108,&p_932->g_108,&p_932->g_108,&p_932->g_108};
        int8_t l_120 = 5L;
        int i, j, k;
        p_932->g_76[2] = (p_932->g_71 = (((safe_div_func_uint8_t_u_u(((~p_932->g_18) < p_53), (safe_lshift_func_uint8_t_u_u((~(safe_div_func_int32_t_s_s(((l_60 != (safe_mod_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(((((*l_67) = ((l_60 != (p_51 == ((*l_65) = (void*)0))) , p_50)) ^ (((((safe_add_func_uint8_t_u_u((p_932->g_18 , ((p_53 | FAKE_DIVERGE(p_932->group_2_offset, get_group_id(2), 10)) , 249UL)), 1UL)) ^ l_60) ^ GROUP_DIVERGE(0, 1)) >= p_52) , (-9L))) & p_932->g_18), p_49)), (*p_932->g_17)))) < p_52), GROUP_DIVERGE(1, 1)))), GROUP_DIVERGE(1, 1))))) , p_932->g_18) || p_932->g_68));
        l_120 = (((safe_div_func_uint64_t_u_u((safe_unary_minus_func_int32_t_s((safe_mod_func_int64_t_s_s((p_53 = ((safe_div_func_int64_t_s_s(((safe_sub_func_int16_t_s_s(l_60, ((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_unary_minus_func_int32_t_s(l_60)) , (safe_sub_func_uint64_t_u_u(((safe_add_func_int64_t_s_s(((safe_unary_minus_func_uint64_t_u(((safe_add_func_uint8_t_u_u(((*p_51) < (((safe_mod_func_int32_t_s_s((l_118 = (0x22685807939616D9L > (safe_div_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((((*l_106) = (safe_rshift_func_int8_t_s_u((l_60 || l_60), 6))) != (l_109 = p_932->g_18)), ((safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u((safe_div_func_int32_t_s_s(((void*)0 == &p_932->g_74), 1UL)), l_60)) >= (*p_51)), 6)), p_53)) >= p_53))), 0x13D5L)))), l_119)) , &p_51) == &p_51)), p_53)) && (*p_51)))) != 0x52L), GROUP_DIVERGE(2, 1))) , p_932->g_108), 18446744073709551613UL))), 5)), p_932->g_76[2])) > p_932->g_18))) > 0UL), l_60)) , p_52)), p_932->g_68)))), p_50)) >= (*p_932->g_17)) >= p_932->g_76[2]);
    }
    else
    { /* block id: 16 */
        int32_t *l_123 = &l_60;
        int32_t *l_171 = (void*)0;
        int32_t *l_172[10] = {&p_932->g_173,&p_932->g_173,&p_932->g_173,&p_932->g_173,&p_932->g_173,&p_932->g_173,&p_932->g_173,&p_932->g_173,&p_932->g_173,&p_932->g_173};
        int32_t l_174 = 0x65FB7900L;
        int i;
        for (p_49 = 3; (p_49 >= 0); p_49 -= 1)
        { /* block id: 19 */
            uint64_t *l_127 = &p_932->g_108;
            uint64_t *l_132[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint16_t *l_146 = &p_932->g_68;
            uint16_t *l_147[10][9][2] = {{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}},{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}},{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}},{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}},{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}},{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}},{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}},{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}},{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}},{{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]},{(void*)0,&p_932->g_76[2]}}};
            int8_t *l_149 = &p_932->g_150;
            int32_t *l_151[2][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int i, j, k;
            for (p_932->g_108 = 0; p_932->g_108 < 4; p_932->g_108 += 1)
            {
                p_932->g_76[p_932->g_108] = 0UL;
            }
            for (p_932->g_108 = 0; (p_932->g_108 <= 3); p_932->g_108 += 1)
            { /* block id: 23 */
                int32_t *l_122[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t **l_121[6][4] = {{&l_122[3],(void*)0,&p_932->g_17,(void*)0},{&l_122[3],(void*)0,&p_932->g_17,(void*)0},{&l_122[3],(void*)0,&p_932->g_17,(void*)0},{&l_122[3],(void*)0,&p_932->g_17,(void*)0},{&l_122[3],(void*)0,&p_932->g_17,(void*)0},{&l_122[3],(void*)0,&p_932->g_17,(void*)0}};
                int i, j;
                p_51 = &p_932->g_18;
                l_124 = l_123;
            }
            l_109 |= (safe_sub_func_int8_t_s_s(((~(((*l_149) = (((*l_127) |= (((*l_123) = (-2L)) == (0x0D222C05L || p_932->g_76[p_49]))) >= ((((p_932->g_76[p_49] < (safe_add_func_int8_t_s_s(p_52, (safe_rshift_func_int8_t_s_s((((+0xC311L) >= p_932->g_76[1]) || ((p_932->g_133--) , (l_148[0][0][0] &= ((((safe_sub_func_int32_t_s_s((safe_add_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((*l_146) = ((((p_53 == (safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((p_932->g_76[3] <= p_932->g_76[2]), 1)), 0L))) != (-1L)) >= p_932->g_18) || 1UL)), p_932->g_71)), 0x98L)), (*p_932->g_17))) > p_932->g_71) != p_49) != p_53)))), p_932->g_76[2]))))) != (-1L)) || p_52) <= p_932->g_71))) || (*l_124))) > 0x9BL), 8L));
        }
        (*p_932->g_177) &= (p_932->g_18 <= (safe_sub_func_int32_t_s_s((p_50 >= ((safe_mod_func_int16_t_s_s(0x7FB5L, (safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((((void*)0 != l_162) <= (((((((p_50 | (p_932->g_150 = ((safe_mul_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u((safe_div_func_int16_t_s_s((0x3958L & (p_53 , ((safe_lshift_func_int8_t_s_s((((*l_124) |= (0x763EL <= 65527UL)) , l_174), 4)) <= l_148[0][0][0]))), 0x488BL)), l_175)) != 0x2DC1931FA8CC7AA6L), p_932->g_173)) || p_52))) | 0xFFB87322D81C2D92L) & 0x66546BCCL) != l_176) , 0xB2FAD472F8A427D2L) < 0x5C8C88DF4805D29AL) != (-8L))), p_932->g_71)), 0x5488L)), 1UL)))) || 0x138FL)), 3UL)));
    }
    (*l_179) = &p_932->g_18;
    (*p_932->g_183) = ((*l_182) ^= (safe_rshift_func_uint16_t_u_s((l_162 == (void*)0), 2)));
    return p_50;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_933;
    struct S0* p_932 = &c_933;
    struct S0 c_934 = {
        0x038591B6L, // p_932->g_18
        &p_932->g_18, // p_932->g_17
        65535UL, // p_932->g_68
        (-2L), // p_932->g_71
        (void*)0, // p_932->g_72
        (void*)0, // p_932->g_74
        {0x9375L,0x9375L,0x9375L,0x9375L}, // p_932->g_76
        18446744073709551612UL, // p_932->g_108
        0xC9A48E5C97493B57L, // p_932->g_133
        0x3EL, // p_932->g_150
        (-4L), // p_932->g_173
        {{{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L}},{{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L}},{{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L}},{{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L}},{{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L}},{{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L}},{{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L}},{{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L},{0L,(-8L),0L}}}, // p_932->g_178
        &p_932->g_178[5][0][2], // p_932->g_177
        &p_932->g_178[5][0][2], // p_932->g_183
        {0x93L,0xBAL,0x93L,0x93L,0xBAL,0x93L,0x93L,0xBAL,0x93L,0x93L}, // p_932->g_196
        (-1L), // p_932->g_227
        {1UL,1UL,1UL,1UL}, // p_932->g_273
        0x0FL, // p_932->g_293
        0x16C2E0F3L, // p_932->g_297
        {&p_932->g_297,&p_932->g_178[1][6][0],&p_932->g_297,&p_932->g_297,&p_932->g_178[1][6][0],&p_932->g_297,&p_932->g_297}, // p_932->g_296
        &p_932->g_76[2], // p_932->g_312
        &p_932->g_312, // p_932->g_311
        &p_932->g_311, // p_932->g_310
        (-3L), // p_932->g_325
        (void*)0, // p_932->g_328
        5UL, // p_932->g_360
        0x100EEA3EL, // p_932->g_408
        9UL, // p_932->g_426
        (void*)0, // p_932->g_480
        {{{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L}},{{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L}},{{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L}},{{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L},{0x32055C3B75EF0026L,8L,0L,0x32055C3B75EF0026L,0x57E1E3E61363B050L,0x537CCCB5D9945DE8L,0x537CCCB5D9945DE8L,0x57E1E3E61363B050L,0x32055C3B75EF0026L,0L}}}, // p_932->g_503
        1L, // p_932->g_567
        &p_932->g_567, // p_932->g_566
        &p_932->g_566, // p_932->g_565
        0x80CE29B2L, // p_932->g_569
        {{{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L}},{{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L}},{{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L}},{{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L}},{{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L}},{{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L}},{{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L}},{{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L},{(-1L),(-9L),0x2FCB4C0E585A79B0L}}}, // p_932->g_582
        255UL, // p_932->g_603
        0xA1L, // p_932->g_618
        0L, // p_932->g_651
        &p_932->g_196[6], // p_932->g_661
        &p_932->g_661, // p_932->g_660
        {{{&p_932->g_582[5][7][2],&p_932->g_582[5][7][2],(void*)0,&p_932->g_582[5][7][2],(void*)0},{&p_932->g_582[5][7][2],&p_932->g_582[5][7][2],(void*)0,&p_932->g_582[5][7][2],(void*)0},{&p_932->g_582[5][7][2],&p_932->g_582[5][7][2],(void*)0,&p_932->g_582[5][7][2],(void*)0},{&p_932->g_582[5][7][2],&p_932->g_582[5][7][2],(void*)0,&p_932->g_582[5][7][2],(void*)0}}}, // p_932->g_734
        &p_932->g_734[0][1][1], // p_932->g_733
        0x757039150B35BE55L, // p_932->g_790
        4294967295UL, // p_932->g_892
        0x7337E89370F9CC21L, // p_932->g_896
        0xCB8BL, // p_932->g_897
        (-1L), // p_932->g_914
        &p_932->g_914, // p_932->g_913
        sequence_input[get_global_id(0)], // p_932->global_0_offset
        sequence_input[get_global_id(1)], // p_932->global_1_offset
        sequence_input[get_global_id(2)], // p_932->global_2_offset
        sequence_input[get_local_id(0)], // p_932->local_0_offset
        sequence_input[get_local_id(1)], // p_932->local_1_offset
        sequence_input[get_local_id(2)], // p_932->local_2_offset
        sequence_input[get_group_id(0)], // p_932->group_0_offset
        sequence_input[get_group_id(1)], // p_932->group_1_offset
        sequence_input[get_group_id(2)], // p_932->group_2_offset
    };
    c_933 = c_934;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_932);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_932->g_18, "p_932->g_18", print_hash_value);
    transparent_crc(p_932->g_68, "p_932->g_68", print_hash_value);
    transparent_crc(p_932->g_71, "p_932->g_71", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_932->g_76[i], "p_932->g_76[i]", print_hash_value);

    }
    transparent_crc(p_932->g_108, "p_932->g_108", print_hash_value);
    transparent_crc(p_932->g_133, "p_932->g_133", print_hash_value);
    transparent_crc(p_932->g_150, "p_932->g_150", print_hash_value);
    transparent_crc(p_932->g_173, "p_932->g_173", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_932->g_178[i][j][k], "p_932->g_178[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_932->g_196[i], "p_932->g_196[i]", print_hash_value);

    }
    transparent_crc(p_932->g_227, "p_932->g_227", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_932->g_273[i], "p_932->g_273[i]", print_hash_value);

    }
    transparent_crc(p_932->g_293, "p_932->g_293", print_hash_value);
    transparent_crc(p_932->g_297, "p_932->g_297", print_hash_value);
    transparent_crc(p_932->g_325, "p_932->g_325", print_hash_value);
    transparent_crc(p_932->g_360, "p_932->g_360", print_hash_value);
    transparent_crc(p_932->g_408, "p_932->g_408", print_hash_value);
    transparent_crc(p_932->g_426, "p_932->g_426", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_932->g_503[i][j][k], "p_932->g_503[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_932->g_567, "p_932->g_567", print_hash_value);
    transparent_crc(p_932->g_569, "p_932->g_569", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_932->g_582[i][j][k], "p_932->g_582[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_932->g_603, "p_932->g_603", print_hash_value);
    transparent_crc(p_932->g_618, "p_932->g_618", print_hash_value);
    transparent_crc(p_932->g_651, "p_932->g_651", print_hash_value);
    transparent_crc(p_932->g_790, "p_932->g_790", print_hash_value);
    transparent_crc(p_932->g_892, "p_932->g_892", print_hash_value);
    transparent_crc(p_932->g_896, "p_932->g_896", print_hash_value);
    transparent_crc(p_932->g_897, "p_932->g_897", print_hash_value);
    transparent_crc(p_932->g_914, "p_932->g_914", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
