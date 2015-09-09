// ---atomic_reductions ---fake_divergence -g 94,51,1 -l 2,1,1
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


// Seed: 83

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int16_t  f0;
   int32_t  f1;
   volatile int8_t * f2;
   int64_t  f3;
   volatile int32_t  f4;
};

union U1 {
   int32_t  f0;
   uint32_t  f1;
   uint64_t  f2;
   int8_t  f3;
};

union U2 {
   uint64_t  f0;
   int8_t  f1;
};

struct S3 {
    int8_t g_11;
    int8_t *g_10;
    uint32_t g_25;
    int32_t g_30;
    uint64_t g_56[8];
    union U0 g_83;
    uint8_t g_90;
    int32_t g_101;
    union U2 g_104;
    int32_t g_112;
    int32_t *g_111;
    int32_t * volatile g_113;
    union U0 *g_126;
    union U0 **g_125;
    uint32_t g_133;
    uint8_t g_164[7];
    volatile int8_t g_175;
    uint32_t g_183;
    int8_t g_196;
    uint8_t g_197;
    uint16_t g_209;
    union U0 ***g_229;
    uint32_t g_253;
    int32_t g_273;
    int32_t ** volatile g_280;
    int32_t * volatile g_299;
    volatile union U1 g_306;
    volatile union U1 *g_305;
    volatile union U1 **g_304;
    int32_t ** volatile g_341;
    int16_t g_361[10][10];
    volatile uint32_t g_374[9];
    union U1 g_379[2][9];
    int64_t g_393[10];
    int32_t * volatile g_403;
    int32_t **g_412;
    int32_t *** volatile g_411;
    int16_t *g_427;
    int8_t g_437;
    int32_t ** volatile g_453;
    int32_t ** volatile g_454;
    volatile int8_t g_466;
    volatile uint32_t g_467;
    int32_t * volatile g_489[5][2][1];
    int32_t * volatile g_490[9];
    int32_t * volatile * volatile g_517;
    uint16_t g_545;
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
union U0  func_1(struct S3 * p_547);
int32_t  func_4(int8_t * p_5, int8_t * p_6, int16_t  p_7, uint64_t  p_8, int32_t  p_9, struct S3 * p_547);
int16_t  func_12(uint64_t  p_13, int32_t  p_14, uint32_t  p_15, uint64_t  p_16, struct S3 * p_547);
int32_t  func_26(int8_t * p_27, struct S3 * p_547);
uint8_t  func_33(uint16_t  p_34, int64_t  p_35, int64_t  p_36, struct S3 * p_547);
int64_t  func_42(int8_t * p_43, int8_t * p_44, struct S3 * p_547);
int8_t * func_46(int8_t * p_47, int8_t * p_48, union U1  p_49, int8_t * p_50, struct S3 * p_547);
uint8_t  func_59(int32_t  p_60, union U2  p_61, uint8_t  p_62, int8_t  p_63, struct S3 * p_547);
union U2  func_64(int8_t * p_65, int32_t  p_66, int32_t  p_67, int8_t * p_68, struct S3 * p_547);
uint32_t  func_69(uint64_t  p_70, int16_t  p_71, union U2  p_72, struct S3 * p_547);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_547->g_10 p_547->g_11 p_547->g_25 p_547->g_30 p_547->g_280 p_547->g_111 p_547->g_454 p_547->g_467 p_547->g_101 p_547->g_112 p_547->g_90 p_547->g_427 p_547->g_83.f0 p_547->g_56 p_547->g_490 p_547->g_517 p_547->g_125 p_547->g_164 p_547->g_209 p_547->g_299 p_547->g_183 p_547->g_545 p_547->g_113 p_547->g_437 p_547->g_273 p_547->g_126 p_547->g_83
 * writes: p_547->g_25 p_547->g_11 p_547->g_30 p_547->g_111 p_547->g_104.f0 p_547->g_467 p_547->g_101 p_547->g_196 p_547->g_490 p_547->g_126 p_547->g_379.f1 p_547->g_197 p_547->g_183 p_547->g_545 p_547->g_112
 */
union U0  func_1(struct S3 * p_547)
{ /* block id: 4 */
    int64_t l_17 = 2L;
    int8_t *l_18 = &p_547->g_11;
    int32_t *l_544[2];
    uint32_t l_546 = 0UL;
    int i;
    for (i = 0; i < 2; i++)
        l_544[i] = (void*)0;
    l_546 = ((GROUP_DIVERGE(2, 1) | ((safe_sub_func_int32_t_s_s(((*p_547->g_113) = (p_547->g_545 ^= func_4(p_547->g_10, ((func_12((l_17 < ((void*)0 == &p_547->g_11)), p_547->g_11, ((l_18 != (void*)0) <= (safe_mod_func_uint16_t_u_u((safe_add_func_int16_t_s_s((safe_sub_func_int32_t_s_s(p_547->g_11, (p_547->g_25 = l_17))), l_17)), p_547->g_11))), l_17, p_547) == 0xE176L) , l_18), (*p_547->g_427), l_17, l_17, p_547))), p_547->g_437)) , p_547->g_273)) | p_547->g_83.f0);
    return (**p_547->g_125);
}


/* ------------------------------------------ */
/* 
 * reads : p_547->g_56 p_547->g_490 p_547->g_517 p_547->g_125 p_547->g_164 p_547->g_101 p_547->g_11 p_547->g_209 p_547->g_299 p_547->g_112 p_547->g_183
 * writes: p_547->g_25 p_547->g_196 p_547->g_490 p_547->g_126 p_547->g_379.f1 p_547->g_197 p_547->g_11 p_547->g_183
 */
int32_t  func_4(int8_t * p_5, int8_t * p_6, int16_t  p_7, uint64_t  p_8, int32_t  p_9, struct S3 * p_547)
{ /* block id: 236 */
    int32_t l_505 = 0x06299212L;
    int32_t l_506 = 1L;
    int32_t *l_507 = (void*)0;
    int32_t l_508 = 0L;
    int32_t *l_509 = &p_547->g_112;
    int32_t l_510[7] = {0L,0x4809C91CL,0L,0L,0x4809C91CL,0L,0L};
    int32_t *l_511 = &l_508;
    int32_t *l_512 = &l_508;
    int32_t *l_513[9][6][4] = {{{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505}},{{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505}},{{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505}},{{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505}},{{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505}},{{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505}},{{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505}},{{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505}},{{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505},{(void*)0,&l_508,&l_510[6],&l_505}}};
    uint32_t l_514 = 4294967295UL;
    int32_t *l_534 = &p_547->g_273;
    int32_t **l_533 = &l_534;
    int i, j, k;
    ++l_514;
    for (p_8 = 0; (p_8 <= 6); p_8 += 1)
    { /* block id: 240 */
        union U0 *l_519 = &p_547->g_83;
        int32_t l_538 = 0x5EAF4462L;
        int32_t l_539 = 0x7E6B7E79L;
        uint32_t l_541 = 0x6CA44BC1L;
        for (p_9 = 1; (p_9 >= 0); p_9 -= 1)
        { /* block id: 243 */
            union U0 *l_518[2];
            uint32_t *l_520 = &p_547->g_379[0][1].f1;
            int32_t *l_528[6][10][4] = {{{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0}},{{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0}},{{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0}},{{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0}},{{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0}},{{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0},{&p_547->g_273,&p_547->g_273,(void*)0,(void*)0}}};
            int32_t **l_527 = &l_528[5][8][1];
            uint64_t *l_535 = (void*)0;
            int32_t l_536 = (-1L);
            uint8_t *l_537[6][3][3] = {{{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90}},{{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90}},{{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90}},{{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90}},{{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90}},{{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90},{&p_547->g_164[p_8],&p_547->g_90,&p_547->g_90}}};
            uint16_t *l_540[10] = {&p_547->g_209,&p_547->g_209,&p_547->g_209,&p_547->g_209,&p_547->g_209,&p_547->g_209,&p_547->g_209,&p_547->g_209,&p_547->g_209,&p_547->g_209};
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_518[i] = &p_547->g_83;
            for (p_547->g_25 = 1; (p_547->g_25 <= 6); p_547->g_25 += 1)
            { /* block id: 246 */
                int i;
                return p_547->g_56[p_8];
            }
            for (p_547->g_196 = 1; (p_547->g_196 <= 6); p_547->g_196 += 1)
            { /* block id: 251 */
                int i;
                (*p_547->g_517) = p_547->g_490[p_9];
            }
            (*l_512) ^= (((p_547->g_56[(p_8 + 1)] , ((*l_520) = (l_518[0] == ((*p_547->g_125) = l_519)))) != (((((l_539 = ((((safe_rshift_func_uint8_t_u_s((p_547->g_164[p_8] | ((*p_6) = ((safe_mul_func_int16_t_s_s((safe_sub_func_int16_t_s_s((0xABAAE6D7B41C345BL | (!(l_527 != (void*)0))), ((p_547->g_197 = p_547->g_101) && (l_538 = ((safe_add_func_uint64_t_u_u((l_536 = (l_533 == (void*)0)), 1L)) > p_7))))), l_539)) , (*p_6)))), 6)) > p_7) == 1L) <= p_547->g_209)) == 0x2977L) != p_7) ^ p_9) != p_547->g_56[(p_8 + 1)])) , (*p_547->g_299));
        }
        --l_541;
        l_538 |= 1L;
        for (p_547->g_183 = 1; (p_547->g_183 <= 7); p_547->g_183 += 1)
        { /* block id: 267 */
            int i;
            return p_547->g_56[(p_8 + 1)];
        }
    }
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_547->g_11 p_547->g_25 p_547->g_30 p_547->g_280 p_547->g_111 p_547->g_454 p_547->g_467 p_547->g_101 p_547->g_112 p_547->g_10 p_547->g_90
 * writes: p_547->g_11 p_547->g_25 p_547->g_30 p_547->g_111 p_547->g_104.f0 p_547->g_467 p_547->g_101
 */
int16_t  func_12(uint64_t  p_13, int32_t  p_14, uint32_t  p_15, uint64_t  p_16, struct S3 * p_547)
{ /* block id: 6 */
    int8_t *l_28 = &p_547->g_11;
    int32_t *l_470 = &p_547->g_101;
    int64_t *l_471[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    union U1 l_474 = {1L};
    union U1 *l_475 = (void*)0;
    union U1 *l_476 = &l_474;
    int32_t *l_485 = &p_547->g_83.f1;
    uint16_t l_488 = 0xA86DL;
    int32_t *l_491 = &p_547->g_30;
    union U0 *l_502[5] = {&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83};
    int i;
    (*l_470) |= func_26(l_28, p_547);
    (*l_470) = (l_471[6] != &p_547->g_393[7]);
    (*l_491) |= ((safe_sub_func_uint8_t_u_u((l_488 = (((*l_476) = l_474) , (safe_mod_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((((*l_470) < (((safe_unary_minus_func_int16_t_s(p_14)) <= (!(p_13 == (((safe_unary_minus_func_int16_t_s((((((*l_470) , (*l_470)) , (l_485 = l_470)) != (void*)0) && ((safe_mul_func_uint16_t_u_u(p_547->g_112, 0xCC84L)) < 0x423927CEL)))) >= 5UL) | GROUP_DIVERGE(2, 1))))) < FAKE_DIVERGE(p_547->local_0_offset, get_local_id(0), 10))) , 0xC6F2L), 15)), 65533UL)))), (*l_470))) != (*l_470));
    for (l_474.f3 = (-3); (l_474.f3 > (-22)); l_474.f3--)
    { /* block id: 229 */
        union U1 *l_497 = &p_547->g_379[0][1];
        union U1 **l_498 = &l_475;
        int32_t l_501 = 0x042DB8DCL;
        uint16_t *l_503[10][2] = {{&p_547->g_209,&p_547->g_209},{&p_547->g_209,&p_547->g_209},{&p_547->g_209,&p_547->g_209},{&p_547->g_209,&p_547->g_209},{&p_547->g_209,&p_547->g_209},{&p_547->g_209,&p_547->g_209},{&p_547->g_209,&p_547->g_209},{&p_547->g_209,&p_547->g_209},{&p_547->g_209,&p_547->g_209},{&p_547->g_209,&p_547->g_209}};
        int32_t l_504 = 0L;
        int i, j;
        l_504 &= (0x01F5L & (safe_unary_minus_func_uint32_t_u(((((((((*l_491) || (safe_sub_func_uint64_t_u_u(18446744073709551614UL, ((((*p_547->g_10) & (((*l_498) = l_497) == &l_474)) >= (safe_add_func_int16_t_s_s(l_501, (((*l_491) = ((l_502[4] == l_502[4]) && p_14)) , (-1L))))) >= p_16)))) & p_15) & p_547->g_90) <= 0x25944580L) & p_16) & 0x646F40F70D2F7573L) <= p_14))));
        return (*l_491);
    }
    return p_16;
}


/* ------------------------------------------ */
/* 
 * reads : p_547->g_11 p_547->g_25 p_547->g_30 p_547->g_280 p_547->g_111 p_547->g_454 p_547->g_467
 * writes: p_547->g_11 p_547->g_25 p_547->g_30 p_547->g_111 p_547->g_104.f0 p_547->g_467
 */
int32_t  func_26(int8_t * p_27, struct S3 * p_547)
{ /* block id: 7 */
    uint64_t l_29[7];
    int32_t l_440 = 0x43A9C002L;
    int32_t l_441 = 1L;
    int32_t l_443 = 1L;
    uint32_t l_444 = 1UL;
    int32_t l_465[9][6] = {{0x2A593A24L,0x2D9E9AA6L,0x0BF1E59BL,(-9L),0x348175F5L,0x2A593A24L},{0x2A593A24L,0x2D9E9AA6L,0x0BF1E59BL,(-9L),0x348175F5L,0x2A593A24L},{0x2A593A24L,0x2D9E9AA6L,0x0BF1E59BL,(-9L),0x348175F5L,0x2A593A24L},{0x2A593A24L,0x2D9E9AA6L,0x0BF1E59BL,(-9L),0x348175F5L,0x2A593A24L},{0x2A593A24L,0x2D9E9AA6L,0x0BF1E59BL,(-9L),0x348175F5L,0x2A593A24L},{0x2A593A24L,0x2D9E9AA6L,0x0BF1E59BL,(-9L),0x348175F5L,0x2A593A24L},{0x2A593A24L,0x2D9E9AA6L,0x0BF1E59BL,(-9L),0x348175F5L,0x2A593A24L},{0x2A593A24L,0x2D9E9AA6L,0x0BF1E59BL,(-9L),0x348175F5L,0x2A593A24L},{0x2A593A24L,0x2D9E9AA6L,0x0BF1E59BL,(-9L),0x348175F5L,0x2A593A24L}};
    int i, j;
    for (i = 0; i < 7; i++)
        l_29[i] = 0x65E4BC795C380A38L;
    for (p_547->g_11 = 1; (p_547->g_11 <= 6); p_547->g_11 += 1)
    { /* block id: 10 */
        int64_t l_41 = 0x42F2AA787D30FA2EL;
        union U1 l_51[4][4][6] = {{{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}}},{{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}}},{{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}}},{{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}},{{0x148CB42BL},{0x148CB42BL},{-1L},{0x351ECDE4L},{-1L},{0x32DD2C99L}}}};
        int32_t l_442 = 0x60E2D475L;
        int32_t **l_447 = (void*)0;
        int32_t *l_455 = &l_442;
        int32_t *l_456 = (void*)0;
        int32_t *l_457 = &l_442;
        int32_t *l_458 = (void*)0;
        int32_t *l_459 = &p_547->g_30;
        int32_t *l_460 = &p_547->g_112;
        int32_t *l_461 = &l_443;
        int32_t *l_462 = &l_442;
        int32_t *l_463 = &l_443;
        int32_t *l_464[2][2][2] = {{{&l_443,&l_443},{&l_443,&l_443}},{{&l_443,&l_443},{&l_443,&l_443}}};
        int i, j, k;
        for (p_547->g_25 = 2; (p_547->g_25 <= 6); p_547->g_25 += 1)
        { /* block id: 13 */
            uint32_t l_45 = 0x2C199447L;
            int32_t l_439[4] = {0L,0L,0L,0L};
            int32_t ***l_448 = (void*)0;
            int32_t ***l_449 = &l_447;
            int32_t **l_450 = (void*)0;
            int32_t **l_451 = &p_547->g_111;
            int i;
            for (p_547->g_30 = 0; (p_547->g_30 <= 6); p_547->g_30 += 1)
            { /* block id: 16 */
                int64_t *l_432 = &p_547->g_393[5];
                int32_t *l_436 = &p_547->g_112;
                int32_t *l_438[8];
                int i;
                for (i = 0; i < 8; i++)
                    l_438[i] = (void*)0;
                (1 + 1);
            }
            (*l_449) = l_447;
            (*l_451) = (*p_547->g_280);
        }
        for (l_443 = 5; (l_443 >= 2); l_443 -= 1)
        { /* block id: 213 */
            int32_t **l_452 = (void*)0;
            int i;
            (*p_547->g_454) = &l_442;
            return l_29[p_547->g_11];
        }
        for (p_547->g_104.f0 = 0; p_547->g_104.f0 < 7; p_547->g_104.f0 += 1)
        {
            l_29[p_547->g_104.f0] = 18446744073709551615UL;
        }
        p_547->g_467++;
    }
    return l_443;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_33(uint16_t  p_34, int64_t  p_35, int64_t  p_36, struct S3 * p_547)
{ /* block id: 200 */
    uint8_t l_433 = 0xF9L;
    l_433++;
    return p_36;
}


/* ------------------------------------------ */
/* 
 * reads : p_547->g_10 p_547->g_11 p_547->g_90 p_547->g_25 p_547->g_56 p_547->g_299 p_547->g_112 p_547->g_101 p_547->g_304 p_547->g_273 p_547->g_183 p_547->g_209 p_547->g_197 p_547->g_104.f1 p_547->g_30 p_547->g_361 p_547->g_374 p_547->g_125 p_547->g_164 p_547->g_403 p_547->g_253 p_547->g_411
 * writes: p_547->g_112 p_547->g_101 p_547->g_83.f1 p_547->g_183 p_547->g_209 p_547->g_197 p_547->g_104.f1 p_547->g_374 p_547->g_229 p_547->g_126 p_547->g_393 p_547->g_90 p_547->g_253 p_547->g_412
 */
int64_t  func_42(int8_t * p_43, int8_t * p_44, struct S3 * p_547)
{ /* block id: 129 */
    uint8_t l_288[5][5][5] = {{{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L}},{{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L}},{{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L}},{{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L}},{{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L},{0x0DL,255UL,0xD9L,0x30L,0xD9L}}};
    uint32_t *l_291 = (void*)0;
    int32_t l_292 = 0x486241C9L;
    int32_t l_295 = (-9L);
    union U0 ****l_298 = &p_547->g_229;
    int32_t l_354 = 0x25A9B191L;
    int8_t *l_416 = &p_547->g_196;
    union U2 l_431 = {0xA69CFEAE6EAF1583L};
    int i, j, k;
    if (((((*p_547->g_10) != ((safe_add_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u(((l_288[3][2][2] ^ ((safe_sub_func_uint32_t_u_u((l_292 = 0xE9372AA1L), (safe_sub_func_uint16_t_u_u(0x7ABDL, (((l_295 |= l_288[3][2][2]) && l_288[3][0][4]) && (safe_mod_func_uint32_t_u_u(((l_298 == &p_547->g_229) >= l_288[3][2][2]), (-5L)))))))) | (-1L))) & l_288[3][2][2]), p_547->g_90)) != p_547->g_25), (-8L))), (-10L))) && p_547->g_56[1])) , &l_288[4][4][2]) == &p_547->g_164[5]))
    { /* block id: 132 */
        union U1 *l_301 = (void*)0;
        union U1 **l_300 = &l_301;
        (*p_547->g_299) |= l_288[3][2][2];
        (*l_300) = (void*)0;
    }
    else
    { /* block id: 135 */
        uint8_t l_307[10] = {255UL,248UL,255UL,255UL,248UL,255UL,255UL,248UL,255UL,255UL};
        int32_t *l_322 = &p_547->g_83.f1;
        int32_t *l_331 = &l_295;
        union U0 *l_362[5][8] = {{&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83},{&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83},{&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83},{&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83},{&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83,&p_547->g_83}};
        int32_t l_367 = 0x7AC42583L;
        int32_t l_368 = 0x5B08AE2BL;
        int32_t l_369 = 0x62989366L;
        int32_t l_370 = (-1L);
        int32_t l_371[9][4][4] = {{{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)}},{{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)}},{{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)}},{{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)}},{{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)}},{{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)}},{{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)}},{{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)}},{{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)},{(-5L),(-1L),0x11C4B442L,(-6L)}}};
        union U0 ***l_377 = (void*)0;
        uint16_t l_402 = 0xD9CAL;
        int i, j, k;
lbl_336:
        p_547->g_101 &= (*p_547->g_299);
        if ((safe_rshift_func_uint16_t_u_u((((void*)0 == p_547->g_304) < (l_307[0] == (((*l_331) = (safe_lshift_func_uint16_t_u_s((safe_div_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u((safe_unary_minus_func_uint16_t_u((safe_unary_minus_func_uint8_t_u((safe_mod_func_uint64_t_u_u((((*l_322) = l_292) , (18446744073709551608UL && (safe_div_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((safe_add_func_int8_t_s_s(((*p_547->g_10) && l_295), p_547->g_101)), (((*p_547->g_299) || 0x57188630L) || p_547->g_273))), 0)), l_292)))), l_307[1])))))), FAKE_DIVERGE(p_547->group_0_offset, get_group_id(0), 10))) || (*p_547->g_299)), l_307[1])), l_295)), 0x65D5L)), 3))) , p_547->g_25))), l_288[4][0][3])))
        { /* block id: 139 */
            int32_t *l_339 = &p_547->g_101;
            int16_t *l_360 = &p_547->g_361[4][6];
            int32_t l_365[5][6] = {{0x7FC94072L,0x7FC94072L,0L,0x1948723BL,(-1L),1L},{0x7FC94072L,0x7FC94072L,0L,0x1948723BL,(-1L),1L},{0x7FC94072L,0x7FC94072L,0L,0x1948723BL,(-1L),1L},{0x7FC94072L,0x7FC94072L,0L,0x1948723BL,(-1L),1L},{0x7FC94072L,0x7FC94072L,0L,0x1948723BL,(-1L),1L}};
            union U0 *l_383 = &p_547->g_83;
            int i, j;
            for (p_547->g_183 = 0; (p_547->g_183 >= 20); p_547->g_183 = safe_add_func_int64_t_s_s(p_547->g_183, 6))
            { /* block id: 142 */
                uint16_t l_357 = 0xD9B9L;
                int32_t l_366 = 5L;
                int32_t l_373 = 0x69466CD4L;
                union U1 *l_378[4][9] = {{&p_547->g_379[0][6],&p_547->g_379[0][6],&p_547->g_379[0][1],&p_547->g_379[0][1],&p_547->g_379[1][3],&p_547->g_379[0][1],&p_547->g_379[0][1],&p_547->g_379[0][6],&p_547->g_379[0][6]},{&p_547->g_379[0][6],&p_547->g_379[0][6],&p_547->g_379[0][1],&p_547->g_379[0][1],&p_547->g_379[1][3],&p_547->g_379[0][1],&p_547->g_379[0][1],&p_547->g_379[0][6],&p_547->g_379[0][6]},{&p_547->g_379[0][6],&p_547->g_379[0][6],&p_547->g_379[0][1],&p_547->g_379[0][1],&p_547->g_379[1][3],&p_547->g_379[0][1],&p_547->g_379[0][1],&p_547->g_379[0][6],&p_547->g_379[0][6]},{&p_547->g_379[0][6],&p_547->g_379[0][6],&p_547->g_379[0][1],&p_547->g_379[0][1],&p_547->g_379[1][3],&p_547->g_379[0][1],&p_547->g_379[0][1],&p_547->g_379[0][6],&p_547->g_379[0][6]}};
                union U1 *l_382 = &p_547->g_379[0][1];
                int i, j;
                for (p_547->g_209 = 0; (p_547->g_209 > 31); p_547->g_209 = safe_add_func_int8_t_s_s(p_547->g_209, 2))
                { /* block id: 145 */
                    int32_t *l_340 = (void*)0;
                    int32_t l_372 = 5L;
                    union U1 *l_380 = &p_547->g_379[0][1];
                    union U1 **l_381[4][7];
                    int i, j;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 7; j++)
                            l_381[i][j] = &l_380;
                    }
                    for (p_547->g_197 = 0; (p_547->g_197 <= 4); p_547->g_197 += 1)
                    { /* block id: 148 */
                        int i, j, k;
                        if (p_547->g_11)
                            goto lbl_336;
                        if (l_288[p_547->g_197][p_547->g_197][p_547->g_197])
                            continue;
                    }
                    for (p_547->g_104.f1 = 0; (p_547->g_104.f1 > 6); p_547->g_104.f1 = safe_add_func_int16_t_s_s(p_547->g_104.f1, 1))
                    { /* block id: 154 */
                        int32_t **l_342 = (void*)0;
                        int32_t **l_343 = &l_339;
                        int32_t *l_363 = &l_292;
                        int32_t *l_364[7] = {&p_547->g_101,&p_547->g_101,&p_547->g_101,&p_547->g_101,&p_547->g_101,&p_547->g_101,&p_547->g_101};
                        int i;
                        (*l_343) = (l_340 = l_339);
                        l_362[1][3] = ((safe_sub_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s((p_547->g_30 & (safe_lshift_func_uint16_t_u_u(0x31BFL, 12))), (safe_rshift_func_uint8_t_u_s((safe_div_func_uint8_t_u_u(0x1DL, p_547->g_273)), (l_354 >= (safe_rshift_func_int16_t_s_u((l_357 < FAKE_DIVERGE(p_547->group_0_offset, get_group_id(0), 10)), ((safe_add_func_uint32_t_u_u(p_547->g_209, ((*l_339) ^= ((l_360 != &p_547->g_361[4][6]) <= l_357)))) > p_547->g_361[0][5])))))))) , l_288[0][3][1]), l_292)) , (void*)0);
                        ++p_547->g_374[8];
                    }
                    (*l_339) = (((*l_298) = l_377) == (((*l_331) = ((l_378[0][5] == (l_382 = l_380)) & (l_288[4][1][4] <= l_373))) , &p_547->g_125));
                    (*l_339) = ((*l_331) |= 0L);
                }
                return (*l_339);
            }
            (*p_547->g_125) = l_383;
        }
        else
        { /* block id: 171 */
            int64_t *l_392 = &p_547->g_393[5];
            int32_t l_415 = 0L;
            (*p_547->g_403) = (~((*l_331) = (safe_div_func_uint16_t_u_u(p_547->g_164[1], ((safe_div_func_int8_t_s_s((FAKE_DIVERGE(p_547->local_0_offset, get_local_id(0), 10) & (p_547->g_90 ^ p_547->g_164[5])), (((*l_392) = (safe_add_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u((*p_547->g_10), 7)) & (GROUP_DIVERGE(2, 1) , p_547->g_90)), (*l_331)))) & (safe_mod_func_uint32_t_u_u(((safe_add_func_int8_t_s_s((*p_547->g_10), (safe_add_func_int16_t_s_s(((((((safe_lshift_func_int8_t_s_s((l_354 != (l_292 >= l_354)), (*p_43))) || (*l_331)) & 0xCEDCBB172DE8AE65L) > l_402) | l_288[3][2][2]) >= 0UL), l_288[3][2][2])))) , (*l_331)), l_295))))) , 0x300BL)))));
            for (p_547->g_90 = 0; (p_547->g_90 != 52); p_547->g_90++)
            { /* block id: 177 */
                int32_t *l_406[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_406[i] = (void*)0;
                l_292 &= ((*l_331) , l_295);
                for (p_547->g_253 = (-17); (p_547->g_253 <= 49); ++p_547->g_253)
                { /* block id: 181 */
                    uint16_t l_409[10][2][9] = {{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}},{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}},{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}},{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}},{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}},{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}},{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}},{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}},{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}},{{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL},{0x1729L,0x1083L,0xC089L,0x4914L,0xF186L,0xA6C5L,0UL,0x1083L,65535UL}}};
                    int32_t **l_410 = (void*)0;
                    uint32_t l_417 = 4294967286UL;
                    int16_t **l_426[4];
                    int8_t *l_428 = &p_547->g_379[0][1].f3;
                    int8_t *l_429 = &p_547->g_104.f1;
                    uint8_t l_430 = 0x3FL;
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_426[i] = (void*)0;
                    (*l_331) &= l_409[8][0][3];
                    (*p_547->g_411) = l_410;
                    atomic_xor(&p_547->g_atomic_reduction[get_linear_group_id()], ((((safe_rshift_func_uint16_t_u_s(l_415, (l_431 , l_295))) , 7L) <= 1L) > (*l_331)) + get_linear_global_id());
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_547->v_collective += p_547->g_atomic_reduction[get_linear_group_id()];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    for (l_415 = 9; (l_415 >= 0); l_415 -= 1)
                    { /* block id: 191 */
                        int i;
                        return l_307[l_415];
                    }
                }
            }
        }
    }
    return l_292;
}


/* ------------------------------------------ */
/* 
 * reads : p_547->g_83 p_547->g_90 p_547->g_56 p_547->g_83.f0 p_547->g_30 p_547->g_10 p_547->g_11 p_547->g_104 p_547->g_101 p_547->g_113 p_547->g_112 p_547->g_111 p_547->g_133 p_547->g_104.f1 p_547->g_197 p_547->g_209 p_547->g_253 p_547->g_273 p_547->g_196 p_547->g_280
 * writes: p_547->g_90 p_547->g_101 p_547->g_104.f1 p_547->g_111 p_547->g_112 p_547->g_229 p_547->g_197 p_547->g_209 p_547->g_83.f0 p_547->g_253 p_547->g_273
 */
int8_t * func_46(int8_t * p_47, int8_t * p_48, union U1  p_49, int8_t * p_50, struct S3 * p_547)
{ /* block id: 17 */
    uint16_t l_52[2];
    uint64_t *l_53 = (void*)0;
    uint64_t *l_54 = (void*)0;
    uint64_t *l_55[7][7] = {{(void*)0,&p_547->g_56[4],(void*)0,&p_547->g_56[2],&p_547->g_56[7],&p_547->g_56[2],(void*)0},{(void*)0,&p_547->g_56[4],(void*)0,&p_547->g_56[2],&p_547->g_56[7],&p_547->g_56[2],(void*)0},{(void*)0,&p_547->g_56[4],(void*)0,&p_547->g_56[2],&p_547->g_56[7],&p_547->g_56[2],(void*)0},{(void*)0,&p_547->g_56[4],(void*)0,&p_547->g_56[2],&p_547->g_56[7],&p_547->g_56[2],(void*)0},{(void*)0,&p_547->g_56[4],(void*)0,&p_547->g_56[2],&p_547->g_56[7],&p_547->g_56[2],(void*)0},{(void*)0,&p_547->g_56[4],(void*)0,&p_547->g_56[2],&p_547->g_56[7],&p_547->g_56[2],(void*)0},{(void*)0,&p_547->g_56[4],(void*)0,&p_547->g_56[2],&p_547->g_56[7],&p_547->g_56[2],(void*)0}};
    uint8_t *l_89 = &p_547->g_90;
    uint8_t l_95 = 1UL;
    int32_t l_100 = 0x691D5B90L;
    int32_t l_102 = 0x1B1CD7F6L;
    int16_t l_103 = 0x4F44L;
    uint16_t l_233 = 0xDD88L;
    uint32_t *l_264[5][3] = {{&p_547->g_25,&p_547->g_25,(void*)0},{&p_547->g_25,&p_547->g_25,(void*)0},{&p_547->g_25,&p_547->g_25,(void*)0},{&p_547->g_25,&p_547->g_25,(void*)0},{&p_547->g_25,&p_547->g_25,(void*)0}};
    int8_t *l_265 = (void*)0;
    int8_t *l_266 = &p_547->g_104.f1;
    int i, j;
    for (i = 0; i < 2; i++)
        l_52[i] = 0x2877L;
    atomic_or(&p_547->l_atomic_reduction[0], ((p_49.f2 = l_52[1]) , (safe_mul_func_uint8_t_u_u(func_59(l_52[1], func_64(((func_69((safe_mul_func_int8_t_s_s((((safe_mod_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(((safe_mod_func_int64_t_s_s((safe_add_func_uint16_t_u_u((p_547->g_83 , 0x5022L), (safe_add_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u(((safe_unary_minus_func_int32_t_s(3L)) >= ((((((*l_89)--) >= (l_102 = (safe_rshift_func_uint16_t_u_s(l_95, ((safe_mod_func_uint64_t_u_u(p_547->g_56[6], 0x54008F4F80CF873AL)) >= (p_547->g_101 = (l_100 = (safe_lshift_func_uint8_t_u_u(p_49.f2, 1))))))))) == p_547->g_83.f0) <= l_52[0]) || 7L)), l_95)) < 0x03L), p_547->g_30)))), 4L)) , 0x0768L), 5)), l_103)) ^ (*p_547->g_10)) || l_102), l_103)), p_49.f2, p_547->g_104, p_547) <= p_49.f2) , p_48), p_547->g_83.f0, l_52[1], l_89, p_547), p_547->g_133, l_233, p_547), (-4L)))) + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_547->v_collective += p_547->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if ((safe_sub_func_uint64_t_u_u((p_49.f2 = ((p_49.f2 && (p_49.f2 <= (safe_mod_func_int8_t_s_s((-9L), (-6L))))) > (p_547->g_112 > ((((*l_266) |= (((-9L) || (safe_div_func_int32_t_s_s(0x5F5CC1E7L, (safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), 0L))))) >= (l_264[0][1] != l_264[0][1]))) == p_547->g_112) >= GROUP_DIVERGE(2, 1))))), l_100)))
    { /* block id: 117 */
        uint32_t l_267 = 0x9B482905L;
        int16_t *l_268 = &p_547->g_83.f0;
        uint16_t *l_269 = &l_52[0];
        int32_t *l_272 = &p_547->g_273;
        int32_t l_278[9];
        int32_t *l_279 = &l_100;
        int i;
        for (i = 0; i < 9; i++)
            l_278[i] = 5L;
        (*l_279) ^= (((((l_267 ^ ((-1L) == ((*l_268) = p_49.f2))) <= p_547->g_56[6]) < ((((*l_269)--) <= (((*l_272) |= (-3L)) , (safe_sub_func_uint8_t_u_u(((safe_sub_func_int32_t_s_s(((p_547->g_197 != p_49.f2) && ((-8L) < (((l_278[7] = ((l_102 = p_547->g_90) >= p_547->g_112)) < 0x8D11B0E9L) , p_547->g_196))), (*p_547->g_113))) <= 1UL), FAKE_DIVERGE(p_547->group_2_offset, get_group_id(2), 10))))) ^ GROUP_DIVERGE(1, 1))) || 8L) | l_267);
        (*p_547->g_280) = &l_100;
    }
    else
    { /* block id: 125 */
        int8_t *l_281 = &p_547->g_11;
        return l_281;
    }
    return &p_547->g_196;
}


/* ------------------------------------------ */
/* 
 * reads : p_547->g_104.f1 p_547->g_197 p_547->g_209 p_547->g_111 p_547->g_112 p_547->g_253
 * writes: p_547->g_104.f1 p_547->g_197 p_547->g_209 p_547->g_101 p_547->g_112 p_547->g_83.f0 p_547->g_253
 */
uint8_t  func_59(int32_t  p_60, union U2  p_61, uint8_t  p_62, int8_t  p_63, struct S3 * p_547)
{ /* block id: 90 */
    int32_t l_241 = 0x72E5875BL;
    int32_t l_250 = 0x001F5DD7L;
    int32_t l_252 = 0x5E7EEA75L;
    for (p_547->g_104.f1 = 0; (p_547->g_104.f1 == (-25)); p_547->g_104.f1 = safe_sub_func_uint16_t_u_u(p_547->g_104.f1, 4))
    { /* block id: 93 */
        p_60 = (-2L);
    }
    for (p_547->g_197 = (-19); (p_547->g_197 == 49); ++p_547->g_197)
    { /* block id: 98 */
        int32_t l_240 = 0x2CFD7140L;
        int16_t *l_242 = &p_547->g_83.f0;
        int32_t l_249 = 0x5454ED2DL;
        int32_t l_251 = 0x2B3EE73BL;
        for (p_547->g_209 = 0; (p_547->g_209 >= 50); p_547->g_209 = safe_add_func_uint64_t_u_u(p_547->g_209, 3))
        { /* block id: 101 */
            (*p_547->g_111) = 0x5E0B9F2EL;
        }
        if (l_240)
            continue;
        (*p_547->g_111) = (((*l_242) = l_241) > p_60);
        for (p_547->g_112 = 0; (p_547->g_112 > (-14)); p_547->g_112 = safe_sub_func_uint32_t_u_u(p_547->g_112, 1))
        { /* block id: 109 */
            int32_t *l_245 = &l_241;
            int32_t *l_246 = &l_241;
            int32_t *l_247 = &p_547->g_101;
            int32_t *l_248[10] = {&p_547->g_30,&p_547->g_101,&p_547->g_30,&p_547->g_30,&p_547->g_101,&p_547->g_30,&p_547->g_30,&p_547->g_101,&p_547->g_30,&p_547->g_30};
            int i;
            p_547->g_253--;
        }
    }
    return l_241;
}


/* ------------------------------------------ */
/* 
 * reads : p_547->g_111 p_547->g_101 p_547->g_112
 * writes: p_547->g_229 p_547->g_101 p_547->g_112
 */
union U2  func_64(int8_t * p_65, int32_t  p_66, int32_t  p_67, int8_t * p_68, struct S3 * p_547)
{ /* block id: 85 */
    union U0 ***l_227 = (void*)0;
    union U0 ****l_228[10][9] = {{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227},{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227},{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227},{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227},{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227},{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227},{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227},{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227},{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227},{&l_227,(void*)0,&l_227,(void*)0,&l_227,&l_227,&l_227,&l_227,&l_227}};
    union U0 ***l_230 = (void*)0;
    int32_t l_231 = 0L;
    union U2 l_232[7][6] = {{{0x3FDF3A0AF4F79856L},{0xE659DC613328CD33L},{0x90DFB7D6CBA3FD38L},{0x3DD3832468EDAAE2L},{18446744073709551609UL},{18446744073709551609UL}},{{0x3FDF3A0AF4F79856L},{0xE659DC613328CD33L},{0x90DFB7D6CBA3FD38L},{0x3DD3832468EDAAE2L},{18446744073709551609UL},{18446744073709551609UL}},{{0x3FDF3A0AF4F79856L},{0xE659DC613328CD33L},{0x90DFB7D6CBA3FD38L},{0x3DD3832468EDAAE2L},{18446744073709551609UL},{18446744073709551609UL}},{{0x3FDF3A0AF4F79856L},{0xE659DC613328CD33L},{0x90DFB7D6CBA3FD38L},{0x3DD3832468EDAAE2L},{18446744073709551609UL},{18446744073709551609UL}},{{0x3FDF3A0AF4F79856L},{0xE659DC613328CD33L},{0x90DFB7D6CBA3FD38L},{0x3DD3832468EDAAE2L},{18446744073709551609UL},{18446744073709551609UL}},{{0x3FDF3A0AF4F79856L},{0xE659DC613328CD33L},{0x90DFB7D6CBA3FD38L},{0x3DD3832468EDAAE2L},{18446744073709551609UL},{18446744073709551609UL}},{{0x3FDF3A0AF4F79856L},{0xE659DC613328CD33L},{0x90DFB7D6CBA3FD38L},{0x3DD3832468EDAAE2L},{18446744073709551609UL},{18446744073709551609UL}}};
    int i, j;
    (*p_547->g_111) = ((p_547->g_229 = l_227) == l_230);
    (*p_547->g_111) ^= l_231;
    return l_232[6][4];
}


/* ------------------------------------------ */
/* 
 * reads : p_547->g_101 p_547->g_56 p_547->g_113 p_547->g_112 p_547->g_111
 * writes: p_547->g_101 p_547->g_104.f1 p_547->g_111 p_547->g_112
 */
uint32_t  func_69(uint64_t  p_70, int16_t  p_71, union U2  p_72, struct S3 * p_547)
{ /* block id: 23 */
    union U0 *l_107 = &p_547->g_83;
    union U1 l_116 = {-2L};
    int32_t *l_162 = &p_547->g_30;
    int64_t l_163[2][3][5];
    int32_t l_172 = 0L;
    int32_t l_174 = 0x6E3E1644L;
    int32_t l_178 = 0L;
    int32_t l_180 = 0x15CA3407L;
    int32_t l_181 = 0x2B7E1749L;
    union U0 *l_218 = &p_547->g_83;
    int64_t l_226[3];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 5; k++)
                l_163[i][j][k] = 0x52D4BDACD6EFC415L;
        }
    }
    for (i = 0; i < 3; i++)
        l_226[i] = 0x7D21545E056A2D9FL;
    for (p_547->g_101 = 7; (p_547->g_101 >= 0); p_547->g_101 -= 1)
    { /* block id: 26 */
        uint8_t *l_109 = &p_547->g_90;
        union U0 **l_124 = &l_107;
        union U0 ***l_123[9] = {&l_124,&l_124,&l_124,&l_124,&l_124,&l_124,&l_124,&l_124,&l_124};
        int8_t *l_127 = &p_547->g_104.f1;
        int8_t *l_128 = &p_547->g_104.f1;
        int8_t *l_129 = &l_116.f3;
        int8_t *l_130 = &p_547->g_104.f1;
        int8_t *l_131 = &p_547->g_104.f1;
        int8_t *l_132 = &l_116.f3;
        int32_t l_150 = (-1L);
        int32_t *l_161 = &l_150;
        int32_t l_177 = (-1L);
        int i;
        for (p_72.f1 = 7; (p_72.f1 >= 0); p_72.f1 -= 1)
        { /* block id: 29 */
            union U0 **l_105 = (void*)0;
            union U0 **l_106[5];
            int32_t *l_110 = &p_547->g_101;
            int i;
            for (i = 0; i < 5; i++)
                l_106[i] = (void*)0;
            l_107 = &p_547->g_83;
            for (p_547->g_104.f1 = 0; (p_547->g_104.f1 <= 7); p_547->g_104.f1 += 1)
            { /* block id: 33 */
                uint8_t *l_108 = &p_547->g_90;
                int i;
                p_547->g_111 = (((l_108 != l_109) | (p_547->g_56[p_547->g_101] ^ (-1L))) , l_110);
            }
        }
        (*p_547->g_113) &= p_70;
        if ((*p_547->g_111))
            break;
    }
    return l_226[2];
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S3 c_548;
    struct S3* p_547 = &c_548;
    struct S3 c_549 = {
        0L, // p_547->g_11
        &p_547->g_11, // p_547->g_10
        0x18EBDB88L, // p_547->g_25
        0x783312EFL, // p_547->g_30
        {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}, // p_547->g_56
        {0x363BL}, // p_547->g_83
        1UL, // p_547->g_90
        0x754E6A76L, // p_547->g_101
        {0x26C9E8DF01DDAC0DL}, // p_547->g_104
        0x667A95F2L, // p_547->g_112
        &p_547->g_112, // p_547->g_111
        &p_547->g_112, // p_547->g_113
        &p_547->g_83, // p_547->g_126
        &p_547->g_126, // p_547->g_125
        4UL, // p_547->g_133
        {0xCAL,7UL,0xCAL,0xCAL,7UL,0xCAL,0xCAL}, // p_547->g_164
        (-2L), // p_547->g_175
        3UL, // p_547->g_183
        0x39L, // p_547->g_196
        0xD5L, // p_547->g_197
        6UL, // p_547->g_209
        (void*)0, // p_547->g_229
        4294967290UL, // p_547->g_253
        0L, // p_547->g_273
        &p_547->g_111, // p_547->g_280
        &p_547->g_112, // p_547->g_299
        {0L}, // p_547->g_306
        &p_547->g_306, // p_547->g_305
        &p_547->g_305, // p_547->g_304
        (void*)0, // p_547->g_341
        {{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L},{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L},{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L},{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L},{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L},{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L},{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L},{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L},{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L},{0x729FL,0x7FC2L,0x74B7L,0L,0x74B7L,0x7FC2L,0x729FL,0x425AL,0x55D4L,0x55D4L}}, // p_547->g_361
        {0x5B2FDA9BL,0x5B2FDA9BL,0x5B2FDA9BL,0x5B2FDA9BL,0x5B2FDA9BL,0x5B2FDA9BL,0x5B2FDA9BL,0x5B2FDA9BL,0x5B2FDA9BL}, // p_547->g_374
        {{{6L},{1L},{6L},{6L},{1L},{6L},{6L},{1L},{6L}},{{6L},{1L},{6L},{6L},{1L},{6L},{6L},{1L},{6L}}}, // p_547->g_379
        {0x160D3EB6FE855671L,(-1L),0x160D3EB6FE855671L,0x160D3EB6FE855671L,(-1L),0x160D3EB6FE855671L,0x160D3EB6FE855671L,(-1L),0x160D3EB6FE855671L,0x160D3EB6FE855671L}, // p_547->g_393
        &p_547->g_112, // p_547->g_403
        (void*)0, // p_547->g_412
        &p_547->g_412, // p_547->g_411
        &p_547->g_83.f0, // p_547->g_427
        0x3EL, // p_547->g_437
        (void*)0, // p_547->g_453
        &p_547->g_111, // p_547->g_454
        0L, // p_547->g_466
        0xDE1FB7B2L, // p_547->g_467
        {{{&p_547->g_30},{&p_547->g_30}},{{&p_547->g_30},{&p_547->g_30}},{{&p_547->g_30},{&p_547->g_30}},{{&p_547->g_30},{&p_547->g_30}},{{&p_547->g_30},{&p_547->g_30}}}, // p_547->g_489
        {&p_547->g_112,(void*)0,&p_547->g_112,&p_547->g_112,(void*)0,&p_547->g_112,&p_547->g_112,(void*)0,&p_547->g_112}, // p_547->g_490
        &p_547->g_490[7], // p_547->g_517
        65535UL, // p_547->g_545
        0, // p_547->v_collective
        sequence_input[get_global_id(0)], // p_547->global_0_offset
        sequence_input[get_global_id(1)], // p_547->global_1_offset
        sequence_input[get_global_id(2)], // p_547->global_2_offset
        sequence_input[get_local_id(0)], // p_547->local_0_offset
        sequence_input[get_local_id(1)], // p_547->local_1_offset
        sequence_input[get_local_id(2)], // p_547->local_2_offset
        sequence_input[get_group_id(0)], // p_547->group_0_offset
        sequence_input[get_group_id(1)], // p_547->group_1_offset
        sequence_input[get_group_id(2)], // p_547->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_548 = c_549;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_547);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_547->g_11, "p_547->g_11", print_hash_value);
    transparent_crc(p_547->g_25, "p_547->g_25", print_hash_value);
    transparent_crc(p_547->g_30, "p_547->g_30", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_547->g_56[i], "p_547->g_56[i]", print_hash_value);

    }
    transparent_crc(p_547->g_83.f0, "p_547->g_83.f0", print_hash_value);
    transparent_crc(p_547->g_90, "p_547->g_90", print_hash_value);
    transparent_crc(p_547->g_101, "p_547->g_101", print_hash_value);
    transparent_crc(p_547->g_104.f0, "p_547->g_104.f0", print_hash_value);
    transparent_crc(p_547->g_112, "p_547->g_112", print_hash_value);
    transparent_crc(p_547->g_133, "p_547->g_133", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_547->g_164[i], "p_547->g_164[i]", print_hash_value);

    }
    transparent_crc(p_547->g_175, "p_547->g_175", print_hash_value);
    transparent_crc(p_547->g_183, "p_547->g_183", print_hash_value);
    transparent_crc(p_547->g_196, "p_547->g_196", print_hash_value);
    transparent_crc(p_547->g_197, "p_547->g_197", print_hash_value);
    transparent_crc(p_547->g_209, "p_547->g_209", print_hash_value);
    transparent_crc(p_547->g_253, "p_547->g_253", print_hash_value);
    transparent_crc(p_547->g_273, "p_547->g_273", print_hash_value);
    transparent_crc(p_547->g_306.f0, "p_547->g_306.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_547->g_361[i][j], "p_547->g_361[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_547->g_374[i], "p_547->g_374[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_547->g_393[i], "p_547->g_393[i]", print_hash_value);

    }
    transparent_crc(p_547->g_437, "p_547->g_437", print_hash_value);
    transparent_crc(p_547->g_466, "p_547->g_466", print_hash_value);
    transparent_crc(p_547->g_467, "p_547->g_467", print_hash_value);
    transparent_crc(p_547->g_545, "p_547->g_545", print_hash_value);
    transparent_crc(p_547->v_collective, "p_547->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
