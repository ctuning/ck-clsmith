// ---atomic_reductions ---fake_divergence -g 2,16,98 -l 1,1,14
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


// Seed: 118

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   uint32_t  f1;
   uint32_t  f2;
};

union U1 {
   int64_t  f0;
   volatile uint64_t  f1;
   int16_t  f2;
};

union U2 {
   volatile int16_t  f0;
   uint64_t  f1;
};

struct S3 {
    int32_t g_3;
    volatile uint32_t g_14;
    uint64_t g_39[3];
    uint16_t g_41[6];
    union U0 g_51;
    uint8_t g_57;
    int32_t g_59;
    union U0 *g_98;
    union U0 ** volatile g_97;
    int16_t g_117;
    int64_t g_120;
    volatile union U2 g_123;
    uint16_t *g_139;
    uint16_t * volatile * volatile g_138;
    int32_t g_141[9][6][4];
    int32_t * volatile g_156;
    int32_t * volatile *g_155;
    int8_t g_161;
    union U2 g_211[7][3][9];
    union U1 g_215;
    uint64_t g_238;
    volatile uint32_t g_258[3];
    int32_t g_300[5][1][9];
    int32_t g_318;
    union U2 *g_321;
    union U2 ** volatile g_320;
    volatile uint8_t g_348;
    volatile uint8_t *g_347;
    volatile uint8_t ** volatile g_346[10][9];
    uint32_t g_349;
    uint8_t *g_419;
    uint8_t **g_418;
    union U2 g_420[9][7];
    int32_t g_423[7];
    uint32_t g_432;
    uint8_t g_435;
    uint32_t g_464;
    uint32_t g_481[8];
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
int32_t  func_1(struct S3 * p_482);
int32_t  func_17(int32_t * p_18, int32_t * p_19, int32_t * p_20, int64_t  p_21, uint64_t  p_22, struct S3 * p_482);
int32_t * func_23(int32_t * p_24, uint64_t  p_25, int16_t  p_26, int32_t * p_27, int32_t * p_28, struct S3 * p_482);
int32_t * func_30(uint32_t  p_31, int32_t * p_32, struct S3 * p_482);
uint32_t  func_33(uint16_t  p_34, int32_t * p_35, struct S3 * p_482);
union U0  func_44(int32_t * p_45, int64_t  p_46, struct S3 * p_482);
union U2  func_75(int16_t  p_76, uint16_t  p_77, int32_t * p_78, struct S3 * p_482);
int32_t * func_82(int16_t  p_83, int32_t  p_84, int64_t  p_85, int32_t  p_86, struct S3 * p_482);
int16_t  func_87(union U0 * p_88, uint32_t  p_89, uint64_t ** p_90, int64_t  p_91, struct S3 * p_482);
int64_t  func_101(int64_t  p_102, int32_t  p_103, uint32_t  p_104, struct S3 * p_482);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_482->g_14 p_482->g_3 p_482->g_39 p_482->g_51.f0 p_482->g_59 p_482->g_51.f2 p_482->g_161 p_482->g_432 p_482->g_435 p_482->g_420.f0 p_482->g_215.f2 p_482->g_258 p_482->g_423 p_482->g_238 p_482->g_141 p_482->g_139 p_482->g_41 p_482->g_464 p_482->g_481
 * writes: p_482->g_14 p_482->g_39 p_482->g_41 p_482->g_51 p_482->g_59 p_482->g_161 p_482->g_432 p_482->g_435 p_482->g_215.f2 p_482->g_423 p_482->g_464 p_482->g_481
 */
int32_t  func_1(struct S3 * p_482)
{ /* block id: 4 */
    int32_t *l_2 = &p_482->g_3;
    int32_t *l_4 = &p_482->g_3;
    int32_t *l_5 = &p_482->g_3;
    int32_t *l_6 = &p_482->g_3;
    int32_t *l_7 = &p_482->g_3;
    int32_t *l_8 = &p_482->g_3;
    int32_t *l_9 = &p_482->g_3;
    int32_t *l_10 = &p_482->g_3;
    int32_t *l_11 = &p_482->g_3;
    int32_t *l_12 = (void*)0;
    int32_t l_13[4][10][2] = {{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}}};
    union U0 l_29 = {4294967295UL};
    uint64_t *l_38 = &p_482->g_39[0];
    uint16_t *l_40 = &p_482->g_41[1];
    union U0 *l_50 = &p_482->g_51;
    int32_t l_52 = 0x7F9752EEL;
    int i, j, k;
    p_482->g_14--;
    p_482->g_481[2] ^= func_17(func_23(&l_13[0][1][1], p_482->g_3, (l_29 , 0L), func_30(func_33((safe_lshift_func_int8_t_s_u(p_482->g_14, 1)), ((!(((*l_38) &= p_482->g_3) < (((*l_40) = p_482->g_3) == (safe_mul_func_int16_t_s_s(((((*l_50) = func_44(&l_13[2][1][1], p_482->g_3, p_482)) , p_482->g_51.f0) <= l_52), 1UL))))) , &p_482->g_3), p_482), &p_482->g_3, p_482), &p_482->g_141[8][2][0], p_482), &l_13[3][4][1], &p_482->g_141[8][2][0], (*l_8), (*l_11), p_482);
    return (*l_8);
}


/* ------------------------------------------ */
/* 
 * reads : p_482->g_141
 * writes:
 */
int32_t  func_17(int32_t * p_18, int32_t * p_19, int32_t * p_20, int64_t  p_21, uint64_t  p_22, struct S3 * p_482)
{ /* block id: 191 */
    return (*p_20);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_23(int32_t * p_24, uint64_t  p_25, int16_t  p_26, int32_t * p_27, int32_t * p_28, struct S3 * p_482)
{ /* block id: 189 */
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_482->g_215.f2 p_482->g_258 p_482->g_161 p_482->g_423 p_482->g_238 p_482->g_141 p_482->g_3 p_482->g_139 p_482->g_41 p_482->g_464
 * writes: p_482->g_215.f2 p_482->g_423 p_482->g_464
 */
int32_t * func_30(uint32_t  p_31, int32_t * p_32, struct S3 * p_482)
{ /* block id: 162 */
    uint16_t **l_473[9][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    int32_t l_475 = (-8L);
    int32_t l_476[10][3] = {{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)},{1L,1L,(-1L)}};
    int32_t l_478[1][4] = {{0x436A7561L,0x436A7561L,0x436A7561L,0x436A7561L}};
    int i, j, k;
    for (p_482->g_215.f2 = 0; (p_482->g_215.f2 <= 3); p_482->g_215.f2 += 1)
    { /* block id: 165 */
        int16_t *l_448 = &p_482->g_215.f2;
        int32_t l_477 = 0x5605E28DL;
        if ((p_32 != (void*)0))
        { /* block id: 166 */
            uint32_t *l_453 = &p_482->g_51.f0;
            uint32_t *l_454 = &p_482->g_51.f1;
            uint32_t *l_455 = &p_482->g_51.f0;
            uint32_t *l_456 = &p_482->g_51.f0;
            uint32_t *l_457 = &p_482->g_51.f1;
            uint32_t *l_458 = &p_482->g_51.f0;
            uint32_t *l_459 = &p_482->g_51.f1;
            uint32_t *l_460 = (void*)0;
            uint32_t *l_461 = &p_482->g_51.f0;
            uint32_t *l_462 = &p_482->g_51.f0;
            uint32_t *l_463[9][7][4] = {{{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464}},{{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464}},{{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464}},{{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464}},{{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464}},{{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464}},{{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464}},{{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464}},{{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464},{&p_482->g_464,&p_482->g_464,&p_482->g_464,&p_482->g_464}}};
            uint16_t **l_472 = (void*)0;
            uint16_t ***l_471 = &l_472;
            int32_t *l_474[1];
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_474[i] = &p_482->g_141[5][5][0];
            l_478[0][1] |= (safe_lshift_func_int8_t_s_u((~(((safe_sub_func_int16_t_s_s((safe_div_func_int16_t_s_s((-10L), (safe_mod_func_int64_t_s_s(p_482->g_258[0], ((safe_sub_func_int64_t_s_s(((l_448 == (func_44(p_32, p_482->g_161, p_482) , &p_482->g_117)) ^ (((p_31 , ((~(((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint32_t_u_u((((l_475 = ((p_31 &= GROUP_DIVERGE(1, 1)) , ((safe_sub_func_uint64_t_u_u((safe_sub_func_int32_t_s_s((p_482->g_423[6] &= (safe_div_func_int8_t_s_s((((*l_471) = &p_482->g_139) == l_473[1][6][0]), 1UL))), GROUP_DIVERGE(2, 1))), p_482->g_238)) == 0x7FA0BECAL))) , p_482->g_141[8][2][0]) || p_31), GROUP_DIVERGE(1, 1))), l_476[2][2])) || (-3L)) || (*p_32))) , (*p_32))) && 0x3BD6F872L) || p_482->g_141[8][2][0])), l_476[9][0])) ^ (*p_482->g_139)))))), l_477)) ^ p_482->g_238) , p_31)), 2));
        }
        else
        { /* block id: 172 */
            int32_t *l_479 = (void*)0;
            return l_479;
        }
        for (p_482->g_464 = 0; (p_482->g_464 <= 3); p_482->g_464 += 1)
        { /* block id: 177 */
            return p_32;
        }
    }
    for (l_475 = 0; (l_475 >= 0); l_475 -= 1)
    { /* block id: 183 */
        int8_t l_480 = 0L;
        if (l_480)
            break;
        if ((*p_32))
            continue;
        return &p_482->g_423[3];
    }
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_482->g_59 p_482->g_51.f2 p_482->g_161 p_482->g_432 p_482->g_435 p_482->g_420.f0
 * writes: p_482->g_59 p_482->g_51.f2 p_482->g_161 p_482->g_432 p_482->g_435
 */
uint32_t  func_33(uint16_t  p_34, int32_t * p_35, struct S3 * p_482)
{ /* block id: 12 */
    uint32_t l_55[1][8][5] = {{{0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL},{0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL},{0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL},{0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL},{0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL},{0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL},{0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL},{0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL,0xF5349DDAL}}};
    uint8_t *l_56[2];
    int32_t l_58 = 0x75BB799EL;
    union U0 *l_92[1][6] = {{&p_482->g_51,&p_482->g_51,&p_482->g_51,&p_482->g_51,&p_482->g_51,&p_482->g_51}};
    uint64_t *l_94 = &p_482->g_39[0];
    uint64_t **l_93 = &l_94;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_56[i] = &p_482->g_57;
    p_482->g_59 &= (safe_lshift_func_uint8_t_u_u((l_58 = l_55[0][6][3]), 0));
    for (p_482->g_51.f2 = 0; (p_482->g_51.f2 == 4); p_482->g_51.f2++)
    { /* block id: 17 */
        uint64_t *l_71 = (void*)0;
        uint64_t **l_70 = &l_71;
        uint64_t *l_72 = &p_482->g_39[0];
        uint64_t *l_74 = (void*)0;
        uint64_t **l_73 = &l_74;
        int32_t l_81 = (-8L);
        int32_t *l_421 = &l_58;
        int32_t *l_422 = &p_482->g_423[3];
        int32_t *l_424 = &l_81;
        (1 + 1);
    }
    for (p_482->g_161 = 0; (p_482->g_161 >= (-26)); --p_482->g_161)
    { /* block id: 157 */
        int32_t *l_427 = &p_482->g_423[3];
        int32_t *l_428 = &p_482->g_141[8][2][0];
        int32_t l_429 = (-8L);
        int32_t *l_430 = &p_482->g_59;
        int32_t *l_431[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        --p_482->g_432;
        ++p_482->g_435;
    }
    return p_482->g_420[2][1].f0;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
union U0  func_44(int32_t * p_45, int64_t  p_46, struct S3 * p_482)
{ /* block id: 8 */
    int32_t *l_48 = &p_482->g_3;
    int32_t **l_47 = &l_48;
    union U0 l_49 = {0xA870C387L};
    (*l_47) = (void*)0;
    return l_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_482->g_420
 * writes:
 */
union U2  func_75(int16_t  p_76, uint16_t  p_77, int32_t * p_78, struct S3 * p_482)
{ /* block id: 148 */
    return p_482->g_420[2][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_482->g_41 p_482->g_59 p_482->g_14 p_482->g_39 p_482->g_123 p_482->g_120 p_482->g_138 p_482->g_3 p_482->g_51.f2 p_482->g_141 p_482->g_139 p_482->g_155 p_482->g_156 p_482->g_161 p_482->g_57 p_482->g_211 p_482->g_123.f0 p_482->g_215 p_482->g_97 p_482->g_98 p_482->g_258 p_482->g_215.f0 p_482->g_318 p_482->g_320 p_482->g_117 p_482->g_346 p_482->g_300
 * writes: p_482->g_117 p_482->g_120 p_482->g_141 p_482->g_161 p_482->g_156 p_482->g_215.f0 p_482->g_57 p_482->g_238 p_482->g_98 p_482->g_258 p_482->g_318 p_482->g_321 p_482->g_349 p_482->g_418
 */
int32_t * func_82(int16_t  p_83, int32_t  p_84, int64_t  p_85, int32_t  p_86, struct S3 * p_482)
{ /* block id: 25 */
    int32_t *l_99[10];
    int32_t **l_100 = &l_99[0];
    uint16_t *l_111 = (void*)0;
    uint16_t **l_112 = (void*)0;
    uint16_t **l_113 = &l_111;
    uint16_t *l_114[6];
    uint64_t *l_115 = &p_482->g_39[0];
    int16_t *l_116 = &p_482->g_117;
    int32_t l_118 = (-2L);
    int64_t *l_119 = &p_482->g_120;
    uint16_t l_201 = 0xB03AL;
    uint8_t l_235 = 0x41L;
    uint8_t l_278 = 0xCAL;
    uint8_t l_326 = 255UL;
    uint8_t *l_345 = &p_482->g_57;
    uint8_t **l_344 = &l_345;
    uint32_t l_351 = 0x65051286L;
    int i;
    for (i = 0; i < 10; i++)
        l_99[i] = (void*)0;
    for (i = 0; i < 6; i++)
        l_114[i] = &p_482->g_41[1];
    (*p_482->g_155) = (((((*l_100) = l_99[0]) == (func_101((((*l_119) = ((((safe_lshift_func_int8_t_s_s((p_482->g_41[1] != ((safe_add_func_uint16_t_u_u((p_84 , p_85), ((*l_116) = (((((((*l_113) = l_111) != l_114[4]) && (&p_482->g_39[0] == l_115)) < 0x61D8L) > p_86) != p_482->g_59)))) ^ 0UL)), p_83)) , l_118) , 0x4AE4714FE20FE055L) <= 1UL)) || FAKE_DIVERGE(p_482->global_1_offset, get_global_id(1), 10)), p_482->g_14, p_482->g_39[0], p_482) , &l_118)) >= 0x330D5403L) , (*l_100));
    p_482->g_141[8][2][0] = (safe_lshift_func_uint16_t_u_s((safe_sub_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s((l_119 == l_119))), ((((safe_sub_func_uint32_t_u_u(0xBDFDE9DFL, ((((safe_sub_func_uint16_t_u_u((safe_add_func_int16_t_s_s((safe_add_func_uint32_t_u_u(((0x29225C9EAE24F212L & (safe_mod_func_int64_t_s_s(p_482->g_120, 0x518F3EDA6D573B10L))) == (safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_div_func_int32_t_s_s(p_84, (safe_unary_minus_func_int64_t_s((-1L)))))))), (safe_add_func_int8_t_s_s((p_482->g_161 &= (safe_lshift_func_int8_t_s_s(0x4BL, p_482->g_14))), p_86)))), 0L)), 0xCF4DL)) >= p_482->g_51.f2) , p_83) , p_83))) != (*p_482->g_139)) , p_482->g_39[0]) >= p_85))), p_83));
    --l_201;
    for (l_118 = 3; (l_118 >= 0); l_118 -= 1)
    { /* block id: 46 */
        int8_t *l_208 = &p_482->g_161;
        uint32_t l_214 = 0UL;
        union U0 *l_242 = &p_482->g_51;
        union U0 *l_244[7][4][9] = {{{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0}},{{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0}},{{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0}},{{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0}},{{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0}},{{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0}},{{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0},{(void*)0,&p_482->g_51,(void*)0,&p_482->g_51,&p_482->g_51,&p_482->g_51,(void*)0,&p_482->g_51,(void*)0}}};
        union U0 *l_252 = &p_482->g_51;
        int32_t l_264 = 0x63DB5081L;
        uint64_t **l_301 = &l_115;
        uint32_t *l_313 = &l_214;
        int32_t l_322 = 0x466F6138L;
        int32_t l_324 = 0x19331476L;
        int32_t l_325 = 0x76BA0B3FL;
        uint16_t l_331[8][8][4];
        int32_t l_354 = 1L;
        int32_t * volatile l_413 = &l_322;/* VOLATILE GLOBAL l_413 */
        uint8_t **l_416[6][3][2] = {{{&l_345,&l_345},{&l_345,&l_345},{&l_345,&l_345}},{{&l_345,&l_345},{&l_345,&l_345},{&l_345,&l_345}},{{&l_345,&l_345},{&l_345,&l_345},{&l_345,&l_345}},{{&l_345,&l_345},{&l_345,&l_345},{&l_345,&l_345}},{{&l_345,&l_345},{&l_345,&l_345},{&l_345,&l_345}},{{&l_345,&l_345},{&l_345,&l_345},{&l_345,&l_345}}};
        int i, j, k;
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 8; j++)
            {
                for (k = 0; k < 4; k++)
                    l_331[i][j][k] = 6UL;
            }
        }
        atomic_add(&p_482->l_atomic_reduction[0], (((safe_div_func_int32_t_s_s(((0xE5944C72L ^ ((*p_482->g_138) != (void*)0)) , (safe_rshift_func_int8_t_s_s(((((*l_208) = 0x2FL) , (safe_mod_func_int32_t_s_s((p_482->g_211[4][2][8] , (p_482->g_123.f0 , ((safe_div_func_uint32_t_u_u(p_482->g_41[1], l_214)) && (((*l_119) = ((p_482->g_215 , (*p_482->g_97)) == &p_482->g_51)) < 4UL)))), p_85))) > p_482->g_39[0]), 5))), p_482->g_141[5][3][2])) == 0x73L) | p_482->g_3));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_482->v_collective += p_482->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        for (p_482->g_215.f0 = 0; (p_482->g_215.f0 <= 3); p_482->g_215.f0 += 1)
        { /* block id: 52 */
            int16_t l_216 = 0x188EL;
            uint8_t *l_217 = &p_482->g_57;
            int16_t **l_228 = &l_116;
            int16_t *l_232 = &l_216;
            int16_t **l_231 = &l_232;
            int32_t l_239 = 0L;
            int32_t l_254 = 0x71648138L;
            int32_t l_255 = 1L;
            int32_t *l_309 = &p_482->g_300[4][0][4];
            l_216 = (GROUP_DIVERGE(1, 1) & p_482->g_123.f0);
            if ((func_44(((*l_100) = (*l_100)), p_85, p_482) , (((*l_217)++) && (safe_mul_func_int16_t_s_s(((safe_sub_func_uint16_t_u_u(p_83, (1L | ((~(safe_mod_func_uint16_t_u_u((((*l_228) = (void*)0) == ((safe_div_func_int16_t_s_s(((((*l_208) = (((*l_231) = (p_482->g_51.f2 , &p_83)) != ((((((((safe_mod_func_uint32_t_u_u(((void*)0 == (*p_482->g_97)), 0x575F8629L)) ^ p_86) <= 0xE3CE139A795CD910L) , 0xFF07A6BF1C6E7CB5L) >= p_84) >= l_235) ^ 1L) , &p_482->g_117))) < 1L) < 1UL), p_482->g_57)) , (void*)0)), 0x320AL))) < p_83)))) == p_84), p_482->g_57)))))
            { /* block id: 59 */
                int64_t l_236 = 0x7ED1C2D4CE48BBE3L;
                uint64_t *l_237 = &p_482->g_238;
                union U0 **l_243 = &l_242;
                union U0 **l_245[7][10] = {{(void*)0,(void*)0,&l_244[4][3][7],&l_244[4][0][0],&p_482->g_98,&l_244[4][0][0],&l_244[4][3][7],(void*)0,(void*)0,&l_244[4][3][7]},{(void*)0,(void*)0,&l_244[4][3][7],&l_244[4][0][0],&p_482->g_98,&l_244[4][0][0],&l_244[4][3][7],(void*)0,(void*)0,&l_244[4][3][7]},{(void*)0,(void*)0,&l_244[4][3][7],&l_244[4][0][0],&p_482->g_98,&l_244[4][0][0],&l_244[4][3][7],(void*)0,(void*)0,&l_244[4][3][7]},{(void*)0,(void*)0,&l_244[4][3][7],&l_244[4][0][0],&p_482->g_98,&l_244[4][0][0],&l_244[4][3][7],(void*)0,(void*)0,&l_244[4][3][7]},{(void*)0,(void*)0,&l_244[4][3][7],&l_244[4][0][0],&p_482->g_98,&l_244[4][0][0],&l_244[4][3][7],(void*)0,(void*)0,&l_244[4][3][7]},{(void*)0,(void*)0,&l_244[4][3][7],&l_244[4][0][0],&p_482->g_98,&l_244[4][0][0],&l_244[4][3][7],(void*)0,(void*)0,&l_244[4][3][7]},{(void*)0,(void*)0,&l_244[4][3][7],&l_244[4][0][0],&p_482->g_98,&l_244[4][0][0],&l_244[4][3][7],(void*)0,(void*)0,&l_244[4][3][7]}};
                int32_t l_253[1][6];
                uint32_t l_265 = 1UL;
                uint8_t **l_275 = &l_217;
                uint8_t ***l_274 = &l_275;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 6; j++)
                        l_253[i][j] = (-1L);
                }
                (*p_482->g_155) = (*p_482->g_155);
                l_239 = (p_482->g_39[1] && ((*l_237) = l_236));
                if ((p_84 = ((p_83 , (~((safe_mul_func_uint8_t_u_u(((((((*l_243) = l_242) == ((*p_482->g_97) = l_244[4][0][0])) < GROUP_DIVERGE(2, 1)) , (safe_mul_func_int16_t_s_s(0x2EE1L, 0x6E07L))) | GROUP_DIVERGE(2, 1)), 1UL)) , (((l_99[(l_118 + 5)] != ((safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((l_252 == (void*)0) & p_482->g_51.f2), p_84)), l_236)) , (void*)0)) != p_84) != GROUP_DIVERGE(1, 1))))) | p_83)))
                { /* block id: 66 */
                    int8_t l_256 = 1L;
                    int32_t l_257 = 0x29E4BBC0L;
                    int8_t l_272 = 0x4CL;
                    for (l_239 = 0; (l_239 <= 3); l_239 += 1)
                    { /* block id: 69 */
                        int32_t l_261 = 0x37EA1FA7L;
                        int32_t l_262 = 0x0B7AF958L;
                        int32_t l_263 = 0x18FADC04L;
                        int i, j, k;
                        p_482->g_258[0]--;
                        l_265++;
                        p_84 = ((safe_sub_func_int64_t_s_s(p_482->g_141[(p_482->g_215.f0 + 5)][(p_482->g_215.f0 + 2)][p_482->g_215.f0], (safe_mul_func_int8_t_s_s(p_482->g_141[(l_239 + 5)][(l_239 + 2)][l_118], (-3L))))) || l_272);
                    }
                }
                else
                { /* block id: 74 */
                    int32_t *l_273 = &l_239;
                    return &p_482->g_59;
                }
                (*l_274) = (void*)0;
            }
            else
            { /* block id: 78 */
                uint16_t l_279[1][8][6] = {{{0xF6FBL,1UL,0xF6FBL,0xF6FBL,1UL,0xF6FBL},{0xF6FBL,1UL,0xF6FBL,0xF6FBL,1UL,0xF6FBL},{0xF6FBL,1UL,0xF6FBL,0xF6FBL,1UL,0xF6FBL},{0xF6FBL,1UL,0xF6FBL,0xF6FBL,1UL,0xF6FBL},{0xF6FBL,1UL,0xF6FBL,0xF6FBL,1UL,0xF6FBL},{0xF6FBL,1UL,0xF6FBL,0xF6FBL,1UL,0xF6FBL},{0xF6FBL,1UL,0xF6FBL,0xF6FBL,1UL,0xF6FBL},{0xF6FBL,1UL,0xF6FBL,0xF6FBL,1UL,0xF6FBL}}};
                int i, j, k;
                l_278 ^= (safe_mul_func_int16_t_s_s(l_254, (!((**l_231) = 0x2E1FL))));
                l_279[0][4][5]++;
            }
            for (l_264 = 0; (l_264 <= 3); l_264 += 1)
            { /* block id: 85 */
                int64_t *l_285 = &p_482->g_120;
                uint32_t l_298 = 0x4D0B8DA7L;
                int32_t *l_299 = &p_482->g_300[4][0][4];
                int16_t l_302 = 0x064EL;
                int32_t **l_310 = &l_299;
                int i, j, k;
                (1 + 1);
            }
        }
        if ((safe_sub_func_int8_t_s_s((((*l_313)++) <= 0x623FB48CL), p_482->g_39[0])))
        { /* block id: 99 */
            p_482->g_318 &= (safe_rshift_func_uint8_t_u_u((p_482->g_120 && (*p_482->g_139)), 0));
        }
        else
        { /* block id: 101 */
            union U2 *l_319 = &p_482->g_211[2][0][3];
            int32_t l_323[6][6] = {{(-4L),1L,1L,(-4L),1L,0x7C32BA81L},{(-4L),1L,1L,(-4L),1L,0x7C32BA81L},{(-4L),1L,1L,(-4L),1L,0x7C32BA81L},{(-4L),1L,1L,(-4L),1L,0x7C32BA81L},{(-4L),1L,1L,(-4L),1L,0x7C32BA81L},{(-4L),1L,1L,(-4L),1L,0x7C32BA81L}};
            int i, j;
            (*p_482->g_320) = l_319;
            ++l_326;
        }
        for (p_83 = (-7); (p_83 < 19); p_83 = safe_add_func_int32_t_s_s(p_83, 1))
        { /* block id: 107 */
            int32_t l_339 = (-5L);
            int32_t l_410 = (-1L);
            uint8_t ***l_417[10][4] = {{&l_416[3][0][0],(void*)0,(void*)0,&l_344},{&l_416[3][0][0],(void*)0,(void*)0,&l_344},{&l_416[3][0][0],(void*)0,(void*)0,&l_344},{&l_416[3][0][0],(void*)0,(void*)0,&l_344},{&l_416[3][0][0],(void*)0,(void*)0,&l_344},{&l_416[3][0][0],(void*)0,(void*)0,&l_344},{&l_416[3][0][0],(void*)0,(void*)0,&l_344},{&l_416[3][0][0],(void*)0,(void*)0,&l_344},{&l_416[3][0][0],(void*)0,(void*)0,&l_344},{&l_416[3][0][0],(void*)0,(void*)0,&l_344}};
            int i, j;
            if (l_331[2][6][0])
            { /* block id: 108 */
                int32_t l_332 = 0x542AFAB8L;
                int32_t l_350 = 6L;
                int32_t l_352 = (-1L);
                int32_t l_353 = (-2L);
                int16_t *l_367 = &p_482->g_117;
                int16_t **l_368 = (void*)0;
                int16_t **l_369 = &l_116;
                uint32_t l_370 = 2UL;
                uint64_t *l_377 = (void*)0;
                union U0 l_386 = {8UL};
                if (l_332)
                    break;
                for (p_482->g_161 = 3; (p_482->g_161 >= 0); p_482->g_161 -= 1)
                { /* block id: 112 */
                    int i, j, k;
                    l_353 = (l_352 = (((safe_mul_func_int16_t_s_s(0x47FCL, ((safe_lshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((((l_331[(p_482->g_161 + 3)][(p_482->g_161 + 4)][l_118] >= (p_482->g_117 , (~l_339))) <= (p_482->g_318 < ((safe_add_func_uint32_t_u_u((((l_350 = (p_482->g_349 = ((*l_313) ^= ((safe_mul_func_int16_t_s_s(p_482->g_117, (p_85 && l_331[(p_482->g_161 + 3)][(p_482->g_161 + 4)][l_118]))) , (l_344 == p_482->g_346[3][0]))))) != p_482->g_318) , 0x135BE1ABL), l_332)) != p_482->g_318))) > 0L), p_83)), l_351)) >= (-1L)))) , 0x63C31E38L) , p_85));
                }
                if ((p_84 | (l_354 , (safe_mod_func_uint64_t_u_u(((((p_482->g_215.f0 == (p_83 == ((FAKE_DIVERGE(p_482->group_2_offset, get_group_id(2), 10) && (safe_mul_func_uint8_t_u_u((((*p_482->g_138) == (void*)0) > 1L), (((safe_sub_func_int16_t_s_s((safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u((((l_367 != ((*l_369) = &p_482->g_117)) ^ p_83) & 0x4774B793L), l_352)), p_482->g_117)), p_83)), l_339)) && p_482->g_141[8][2][1]) && (*p_482->g_139))))) | p_482->g_318))) || p_482->g_300[1][0][5]) , l_301) != l_301), l_370)))))
                { /* block id: 120 */
                    int32_t l_382 = (-1L);
                    uint8_t *l_385 = &l_278;
                    l_352 &= (safe_mul_func_uint8_t_u_u((((((safe_rshift_func_uint8_t_u_s((((safe_rshift_func_uint16_t_u_u(l_264, (((*l_301) = &p_482->g_238) != (l_377 = l_119)))) > (p_482->g_123.f0 <= p_482->g_51.f2)) == (safe_sub_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((((*l_385) &= ((*l_345) = (l_382 ^ ((~0x53B3A273F51C39FBL) , (safe_mul_func_int8_t_s_s(p_85, (((p_86 , l_339) & p_83) || p_85))))))) > p_83), 0x26L)), p_84))), 2)) , l_386) , (-1L)) == l_339) > p_83), p_482->g_161));
                }
                else
                { /* block id: 126 */
                    uint8_t **l_387 = &l_345;
                    p_86 &= ((1UL & p_83) == (((l_387 == &p_482->g_347) <= 0UL) == 0x7BL));
                    return &p_482->g_141[8][2][0];
                }
                p_482->g_141[4][1][3] ^= (safe_div_func_uint64_t_u_u((((safe_sub_func_uint64_t_u_u((!p_482->g_123.f0), (safe_lshift_func_int8_t_s_s(l_339, l_339)))) <= ((safe_div_func_int16_t_s_s(((safe_div_func_uint32_t_u_u(p_482->g_161, (safe_add_func_uint32_t_u_u(((((safe_mul_func_uint16_t_u_u((*p_482->g_139), p_85)) , ((safe_add_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u(((p_86 < ((safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((+((((0x46L > (!(p_85 != p_86))) >= FAKE_DIVERGE(p_482->local_2_offset, get_local_id(2), 10)) < p_482->g_120) ^ l_339)), 0x1BL)), 0)) & 0xB16BL)) && p_482->g_300[4][0][4]), p_84)) || p_482->g_57), (*p_482->g_139))) & 0x41072F342E47C067L)) && p_83) || 65535UL), p_85)))) < l_339), 9UL)) & GROUP_DIVERGE(2, 1))) < 1UL), l_410));
            }
            else
            { /* block id: 131 */
                p_84 = p_482->g_120;
                if (p_84)
                    break;
            }
            p_482->g_141[8][2][0] = (-7L);
            for (p_482->g_120 = 0; (p_482->g_120 != 14); ++p_482->g_120)
            { /* block id: 138 */
                p_84 = (p_482->g_51.f2 == GROUP_DIVERGE(2, 1));
                l_413 = (*p_482->g_155);
            }
            p_86 = (safe_mod_func_uint8_t_u_u((p_85 & ((p_482->g_418 = (l_416[3][0][0] = l_416[3][0][0])) != &l_345)), 0x45L));
        }
    }
    return &p_482->g_141[8][2][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_482->g_97 p_482->g_14
 * writes: p_482->g_98
 */
int16_t  func_87(union U0 * p_88, uint32_t  p_89, uint64_t ** p_90, int64_t  p_91, struct S3 * p_482)
{ /* block id: 21 */
    int32_t **l_95 = (void*)0;
    int32_t *l_96[10][2] = {{&p_482->g_3,&p_482->g_3},{&p_482->g_3,&p_482->g_3},{&p_482->g_3,&p_482->g_3},{&p_482->g_3,&p_482->g_3},{&p_482->g_3,&p_482->g_3},{&p_482->g_3,&p_482->g_3},{&p_482->g_3,&p_482->g_3},{&p_482->g_3,&p_482->g_3},{&p_482->g_3,&p_482->g_3},{&p_482->g_3,&p_482->g_3}};
    int i, j;
    l_96[3][1] = &p_482->g_59;
    (*p_482->g_97) = p_88;
    return p_482->g_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_482->g_41 p_482->g_39 p_482->g_123 p_482->g_59 p_482->g_120 p_482->g_138 p_482->g_3 p_482->g_51.f2 p_482->g_141 p_482->g_139 p_482->g_155 p_482->g_156 p_482->g_161 p_482->g_57
 * writes: p_482->g_120 p_482->g_141 p_482->g_161 p_482->g_117
 */
int64_t  func_101(int64_t  p_102, int32_t  p_103, uint32_t  p_104, struct S3 * p_482)
{ /* block id: 30 */
    union U0 l_130 = {0UL};
    uint16_t *l_136 = &p_482->g_41[3];
    uint16_t **l_135[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int64_t *l_137 = &p_482->g_120;
    int32_t *l_140 = &p_482->g_141[8][2][0];
    int32_t *l_158 = &p_482->g_3;
    int32_t **l_157 = &l_158;
    union U0 **l_159[8] = {&p_482->g_98,&p_482->g_98,&p_482->g_98,&p_482->g_98,&p_482->g_98,&p_482->g_98,&p_482->g_98,&p_482->g_98};
    int8_t *l_160 = &p_482->g_161;
    int32_t l_162[9][5] = {{1L,1L,(-9L),8L,0x6C88DE75L},{1L,1L,(-9L),8L,0x6C88DE75L},{1L,1L,(-9L),8L,0x6C88DE75L},{1L,1L,(-9L),8L,0x6C88DE75L},{1L,1L,(-9L),8L,0x6C88DE75L},{1L,1L,(-9L),8L,0x6C88DE75L},{1L,1L,(-9L),8L,0x6C88DE75L},{1L,1L,(-9L),8L,0x6C88DE75L},{1L,1L,(-9L),8L,0x6C88DE75L}};
    int64_t l_175 = (-8L);
    int16_t *l_176 = &p_482->g_117;
    int i, j;
    (*l_140) |= (FAKE_DIVERGE(p_482->local_0_offset, get_local_id(0), 10) >= ((safe_mod_func_int8_t_s_s((p_482->g_41[4] , p_482->g_41[1]), p_482->g_39[1])) == ((p_482->g_123 , (safe_div_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((l_130 , ((safe_mul_func_int8_t_s_s(l_130.f0, 1L)) < (safe_add_func_int8_t_s_s((l_135[1] != (((*l_137) ^= ((((~(((p_482->g_41[3] , 4294967289UL) == p_482->g_59) , 255UL)) == 0x51L) & p_103) ^ p_482->g_41[1])) , p_482->g_138)), p_482->g_3)))), p_104)), l_130.f0)), p_482->g_39[0]))) ^ p_482->g_51.f2)));
    (*l_140) = ((((**p_482->g_138) && ((((safe_add_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((safe_add_func_uint64_t_u_u((p_482->g_141[8][2][0] , (((safe_add_func_int16_t_s_s((0UL != (((((((*l_160) &= (((safe_unary_minus_func_uint64_t_u((((*l_140) || ((((safe_add_func_uint16_t_u_u((((void*)0 != p_482->g_155) ^ (l_140 == ((*l_157) = (void*)0))), (0x25F0EDF4L ^ 0x32704307L))) , l_159[7]) == l_159[7]) <= p_482->g_51.f2)) , 0x84F5D4AB6F82621FL))) | 0x699C01AEL) <= (*p_482->g_156))) > p_482->g_120) , (void*)0) != (void*)0) , l_136) != &p_482->g_117)), l_162[4][1])) , p_102) & p_482->g_3)), 5UL)), (*p_482->g_139))), 1UL)) || 0x47L) >= (*p_482->g_139)) | (*l_140))) || (**p_482->g_155)) >= p_104);
    (**p_482->g_155) ^= p_104;
    (*l_140) = (safe_rshift_func_uint16_t_u_s((*l_140), ((*l_176) = ((p_482->g_120 , (safe_mul_func_int8_t_s_s(p_102, (safe_mod_func_int8_t_s_s((0x50L ^ (((safe_mul_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s(p_104, ((p_102 == 0x9C9A99D2L) , p_482->g_51.f2))), (~(l_160 == (void*)0)))) >= 0x21L) < p_103), p_103)) == p_104) < 0L)), 0x1FL))))) , l_175))));
    return p_482->g_57;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S3 c_483;
    struct S3* p_482 = &c_483;
    struct S3 c_484 = {
        (-4L), // p_482->g_3
        0xC2E607D1L, // p_482->g_14
        {0UL,0UL,0UL}, // p_482->g_39
        {4UL,4UL,4UL,4UL,4UL,4UL}, // p_482->g_41
        {0x19003123L}, // p_482->g_51
        0xB0L, // p_482->g_57
        0x6BC84814L, // p_482->g_59
        (void*)0, // p_482->g_98
        &p_482->g_98, // p_482->g_97
        1L, // p_482->g_117
        8L, // p_482->g_120
        {0x2390L}, // p_482->g_123
        &p_482->g_41[3], // p_482->g_139
        &p_482->g_139, // p_482->g_138
        {{{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L}},{{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L}},{{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L}},{{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L}},{{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L}},{{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L}},{{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L}},{{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L}},{{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L},{0x3C947AABL,0x1421AA4DL,(-1L),6L}}}, // p_482->g_141
        &p_482->g_141[6][0][1], // p_482->g_156
        &p_482->g_156, // p_482->g_155
        (-9L), // p_482->g_161
        {{{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}}},{{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}}},{{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}}},{{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}}},{{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}}},{{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}}},{{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}},{{1L},{-4L},{0x13EDL},{0x5199L},{0x13EDL},{-4L},{1L},{-8L},{1L}}}}, // p_482->g_211
        {0x47CCD35490DEC96DL}, // p_482->g_215
        18446744073709551615UL, // p_482->g_238
        {2UL,2UL,2UL}, // p_482->g_258
        {{{0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L,0x307397FFL,0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L}},{{0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L,0x307397FFL,0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L}},{{0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L,0x307397FFL,0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L}},{{0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L,0x307397FFL,0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L}},{{0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L,0x307397FFL,0x307397FFL,0x3D6B6C70L,0x725F73CBL,0x3D6B6C70L}}}, // p_482->g_300
        0x0D95F454L, // p_482->g_318
        &p_482->g_211[2][1][4], // p_482->g_321
        &p_482->g_321, // p_482->g_320
        0UL, // p_482->g_348
        &p_482->g_348, // p_482->g_347
        {{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0},{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0},{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0},{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0},{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0},{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0},{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0},{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0},{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0},{(void*)0,&p_482->g_347,&p_482->g_347,(void*)0,&p_482->g_347,&p_482->g_347,&p_482->g_347,&p_482->g_347,(void*)0}}, // p_482->g_346
        0x74A97AA3L, // p_482->g_349
        &p_482->g_57, // p_482->g_419
        &p_482->g_419, // p_482->g_418
        {{{0x27E1L},{0x27E1L},{0x0D01L},{9L},{0x5BA0L},{0x4DDFL},{0x65F2L}},{{0x27E1L},{0x27E1L},{0x0D01L},{9L},{0x5BA0L},{0x4DDFL},{0x65F2L}},{{0x27E1L},{0x27E1L},{0x0D01L},{9L},{0x5BA0L},{0x4DDFL},{0x65F2L}},{{0x27E1L},{0x27E1L},{0x0D01L},{9L},{0x5BA0L},{0x4DDFL},{0x65F2L}},{{0x27E1L},{0x27E1L},{0x0D01L},{9L},{0x5BA0L},{0x4DDFL},{0x65F2L}},{{0x27E1L},{0x27E1L},{0x0D01L},{9L},{0x5BA0L},{0x4DDFL},{0x65F2L}},{{0x27E1L},{0x27E1L},{0x0D01L},{9L},{0x5BA0L},{0x4DDFL},{0x65F2L}},{{0x27E1L},{0x27E1L},{0x0D01L},{9L},{0x5BA0L},{0x4DDFL},{0x65F2L}},{{0x27E1L},{0x27E1L},{0x0D01L},{9L},{0x5BA0L},{0x4DDFL},{0x65F2L}}}, // p_482->g_420
        {0x657EB557L,0x3224E06FL,0x657EB557L,0x657EB557L,0x3224E06FL,0x657EB557L,0x657EB557L}, // p_482->g_423
        0xBF90ABBCL, // p_482->g_432
        0x97L, // p_482->g_435
        0xD7CFCFA3L, // p_482->g_464
        {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}, // p_482->g_481
        0, // p_482->v_collective
        sequence_input[get_global_id(0)], // p_482->global_0_offset
        sequence_input[get_global_id(1)], // p_482->global_1_offset
        sequence_input[get_global_id(2)], // p_482->global_2_offset
        sequence_input[get_local_id(0)], // p_482->local_0_offset
        sequence_input[get_local_id(1)], // p_482->local_1_offset
        sequence_input[get_local_id(2)], // p_482->local_2_offset
        sequence_input[get_group_id(0)], // p_482->group_0_offset
        sequence_input[get_group_id(1)], // p_482->group_1_offset
        sequence_input[get_group_id(2)], // p_482->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_483 = c_484;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_482);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_482->g_3, "p_482->g_3", print_hash_value);
    transparent_crc(p_482->g_14, "p_482->g_14", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_482->g_39[i], "p_482->g_39[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_482->g_41[i], "p_482->g_41[i]", print_hash_value);

    }
    transparent_crc(p_482->g_51.f2, "p_482->g_51.f2", print_hash_value);
    transparent_crc(p_482->g_57, "p_482->g_57", print_hash_value);
    transparent_crc(p_482->g_59, "p_482->g_59", print_hash_value);
    transparent_crc(p_482->g_117, "p_482->g_117", print_hash_value);
    transparent_crc(p_482->g_120, "p_482->g_120", print_hash_value);
    transparent_crc(p_482->g_123.f0, "p_482->g_123.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_482->g_141[i][j][k], "p_482->g_141[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_482->g_161, "p_482->g_161", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_482->g_211[i][j][k].f0, "p_482->g_211[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_482->g_215.f2, "p_482->g_215.f2", print_hash_value);
    transparent_crc(p_482->g_238, "p_482->g_238", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_482->g_258[i], "p_482->g_258[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_482->g_300[i][j][k], "p_482->g_300[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_482->g_318, "p_482->g_318", print_hash_value);
    transparent_crc(p_482->g_348, "p_482->g_348", print_hash_value);
    transparent_crc(p_482->g_349, "p_482->g_349", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_482->g_420[i][j].f0, "p_482->g_420[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_482->g_423[i], "p_482->g_423[i]", print_hash_value);

    }
    transparent_crc(p_482->g_432, "p_482->g_432", print_hash_value);
    transparent_crc(p_482->g_435, "p_482->g_435", print_hash_value);
    transparent_crc(p_482->g_464, "p_482->g_464", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_482->g_481[i], "p_482->g_481[i]", print_hash_value);

    }
    transparent_crc(p_482->v_collective, "p_482->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
