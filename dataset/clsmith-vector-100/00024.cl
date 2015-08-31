// ---fake_divergence -g 67,5,10 -l 1,1,1
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


// Seed: 24

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    VECTOR(int32_t, 8) g_3;
    volatile VECTOR(uint16_t, 16) g_18;
    VECTOR(uint64_t, 16) g_56;
    int64_t g_59;
    int32_t g_60;
    int64_t g_62;
    int16_t g_64;
    int32_t *g_65;
    volatile uint32_t g_68;
    int16_t g_79;
    int32_t g_83;
    volatile int32_t g_84;
    uint32_t g_101;
    int32_t g_107;
    volatile uint16_t g_108;
    int32_t g_120;
    volatile uint8_t g_122;
    VECTOR(uint8_t, 8) g_148;
    int32_t *g_152;
    volatile int32_t *g_155;
    VECTOR(uint64_t, 8) g_165;
    VECTOR(uint64_t, 8) g_168;
    VECTOR(uint64_t, 8) g_169;
    VECTOR(uint32_t, 2) g_191;
    VECTOR(uint64_t, 8) g_192;
    VECTOR(uint16_t, 16) g_218;
    uint16_t g_228;
    VECTOR(int8_t, 2) g_246;
    VECTOR(int8_t, 4) g_259;
    VECTOR(int8_t, 4) g_260;
    VECTOR(int16_t, 2) g_263;
    VECTOR(int16_t, 2) g_264;
    VECTOR(int16_t, 4) g_267;
    VECTOR(int32_t, 8) g_273;
    int16_t *g_287;
    int16_t **g_286[3];
    VECTOR(int16_t, 8) g_316;
    int32_t ** volatile g_329;
    int32_t * volatile g_352;
    volatile VECTOR(int8_t, 8) g_396;
    VECTOR(uint64_t, 4) g_409;
    VECTOR(uint64_t, 8) g_412;
    VECTOR(uint64_t, 2) g_413;
    VECTOR(uint8_t, 4) g_418;
    uint8_t g_439;
    uint32_t g_441;
    int32_t * volatile g_474;
    int32_t * volatile g_475;
    int32_t * volatile g_476;
    int32_t ** volatile g_485;
    int32_t ** volatile g_498;
    int32_t ** volatile g_499;
    uint16_t g_504;
    uint16_t g_510;
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
uint32_t  func_1(struct S0 * p_511);
int32_t  func_11(int8_t  p_12, struct S0 * p_511);
int8_t  func_13(int64_t  p_14, uint32_t  p_15, struct S0 * p_511);
int8_t  func_30(int32_t * p_31, int32_t  p_32, uint16_t  p_33, int32_t * p_34, int32_t * p_35, struct S0 * p_511);
int32_t * func_36(uint16_t  p_37, int32_t * p_38, uint16_t  p_39, struct S0 * p_511);
uint64_t  func_46(int32_t  p_47, uint64_t  p_48, uint32_t  p_49, uint32_t  p_50, struct S0 * p_511);
int64_t  func_71(uint32_t  p_72, int64_t * p_73, struct S0 * p_511);
int32_t  func_127(uint32_t  p_128, struct S0 * p_511);
uint16_t  func_135(uint32_t * p_136, uint64_t * p_137, int64_t  p_138, struct S0 * p_511);
uint32_t * func_139(uint64_t  p_140, int64_t  p_141, struct S0 * p_511);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_511->g_148
 * writes:
 */
uint32_t  func_1(struct S0 * p_511)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_4[8][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint32_t l_5 = 0UL;
    uint32_t l_52 = 3UL;
    int i, j;
    ++l_5;
    for (l_5 = 0; (l_5 != 29); l_5 = safe_add_func_uint32_t_u_u(l_5, 7))
    { /* block id: 8 */
        int32_t l_10 = 0x4298C245L;
        uint8_t l_19 = 4UL;
        int32_t *l_51 = (void*)0;
        uint64_t *l_55 = (void*)0;
        uint64_t *l_57 = (void*)0;
        uint8_t *l_58[4] = {&l_19,&l_19,&l_19,&l_19};
        int64_t *l_61 = &p_511->g_62;
        int16_t *l_63 = &p_511->g_64;
        int64_t l_67 = 0x6AB3286B001120EAL;
        int i;
        (1 + 1);
    }
    return p_511->g_148.s0;
}


/* ------------------------------------------ */
/* 
 * reads : p_511->g_83 p_511->g_476 p_511->g_120 p_511->g_191 p_511->g_412 p_511->g_228 p_511->g_485 p_511->g_499 p_511->g_504
 * writes: p_511->g_83 p_511->g_65
 */
int32_t  func_11(int8_t  p_12, struct S0 * p_511)
{ /* block id: 125 */
    uint8_t l_477 = 0x95L;
    int32_t l_478 = 0x7A471ACDL;
    uint64_t *l_484[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_489 = (void*)0;
    VECTOR(uint32_t, 8) l_494 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xCBFB99F0L), 0xCBFB99F0L), 0xCBFB99F0L, 4294967295UL, 0xCBFB99F0L);
    int i;
    l_478 ^= l_477;
    for (p_511->g_83 = 0; (p_511->g_83 >= (-10)); p_511->g_83 = safe_sub_func_int8_t_s_s(p_511->g_83, 4))
    { /* block id: 129 */
        int32_t l_483 = 1L;
        int32_t l_495 = 2L;
        uint32_t *l_496 = (void*)0;
        int32_t l_497 = 0L;
        (*p_511->g_485) = func_36((safe_div_func_int8_t_s_s((p_12 && p_12), (((*p_511->g_476) <= (p_511->g_191.y , (((0x5509L != (p_511->g_412.s4 , (((l_483 != ((void*)0 != l_484[3])) || l_478) || l_478))) != p_12) != p_511->g_228))) , p_12))), &p_511->g_83, l_483, p_511);
        if ((safe_unary_minus_func_uint8_t_u((p_12 || GROUP_DIVERGE(1, 1)))))
        { /* block id: 131 */
            int32_t *l_487 = &p_511->g_83;
            int32_t **l_488 = &l_487;
            l_489 = ((*l_488) = l_487);
        }
        else
        { /* block id: 134 */
            return p_12;
        }
        if ((safe_sub_func_uint8_t_u_u(p_12, ((((p_12 >= (((*l_489) , ((+((safe_mul_func_uint16_t_u_u(((l_497 = (((((VECTOR(uint32_t, 4))(l_494.s3123)).y <= (0x4220121BL || p_12)) ^ (l_495 &= l_483)) & (l_483 && (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))((l_483 == p_12), 0x156BFFCFL, 0x1E92D158L, 6UL)).x, 0x8B08106DL, ((VECTOR(uint32_t, 4))(0xDFC049E6L)), 0xD090545FL, 0x45C04FF7L)).s6 ^ FAKE_DIVERGE(p_511->group_2_offset, get_group_id(2), 10))))) != l_483), (*l_489))) != 0x4F49C948L)) > (*l_489))) == (*l_489))) != (*l_489)) && p_12) | FAKE_DIVERGE(p_511->global_0_offset, get_global_id(0), 10)))))
        { /* block id: 139 */
            return p_12;
        }
        else
        { /* block id: 141 */
            int32_t **l_509 = &l_489;
            (*p_511->g_499) = &l_495;
            (*l_509) = ((safe_add_func_uint8_t_u_u(((safe_sub_func_int32_t_s_s((((((+4294967294UL) >= l_495) == p_511->g_504) , (safe_rshift_func_uint16_t_u_s(65535UL, 12))) , (safe_rshift_func_int16_t_s_u((0x1CE8L & (-5L)), 7))), (4294967291UL | ((0x6AL != (0x13L <= 0x3AL)) ^ p_12)))) < 0x59A6E67EL), 0UL)) , (void*)0);
        }
    }
    return p_12;
}


/* ------------------------------------------ */
/* 
 * reads : p_511->g_476 p_511->g_218
 * writes: p_511->g_62 p_511->g_59 p_511->g_120
 */
int8_t  func_13(int64_t  p_14, uint32_t  p_15, struct S0 * p_511)
{ /* block id: 115 */
    int64_t *l_455 = &p_511->g_62;
    int64_t **l_454 = &l_455;
    int64_t **l_456 = &l_455;
    int32_t l_459 = (-1L);
    int32_t l_462[4] = {0x23C1EC72L,0x23C1EC72L,0x23C1EC72L,0x23C1EC72L};
    int64_t *l_463 = &p_511->g_59;
    int8_t *l_464 = (void*)0;
    int8_t *l_465 = (void*)0;
    int8_t *l_466 = (void*)0;
    int8_t *l_467 = (void*)0;
    int8_t *l_468[8][1];
    uint32_t l_469 = 4294967293UL;
    int32_t l_470 = (-1L);
    int32_t **l_471 = &p_511->g_65;
    uint64_t l_472[6][3][7] = {{{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL}},{{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL}},{{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL}},{{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL}},{{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL}},{{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL},{0x98BB2A4C44917F6DL,8UL,0UL,0UL,8UL,0x98BB2A4C44917F6DL,18446744073709551606UL}}};
    int32_t *l_473 = (void*)0;
    int i, j, k;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
            l_468[i][j] = (void*)0;
    }
    (*p_511->g_476) = (l_472[5][2][1] |= ((&p_511->g_352 == ((safe_sub_func_int16_t_s_s((-6L), (l_470 = (safe_sub_func_int32_t_s_s((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(((((safe_mul_func_uint8_t_u_u((((l_454 == (l_456 = &l_455)) & (safe_rshift_func_uint8_t_u_s((l_459 = (1UL == FAKE_DIVERGE(p_511->global_1_offset, get_global_id(1), 10))), (l_462[1] = ((safe_add_func_int32_t_s_s((0xF686FE12CF42E50FL >= ((*l_463) = ((*l_455) = (p_14 != (!(l_462[1] , (l_462[1] > 0x2BL))))))), l_462[2])) , 0x43L))))) , p_14), 1UL)) && p_14) != l_469) >= GROUP_DIVERGE(1, 1)), (-4L), 0L, (-1L), 0x49L, (-7L), 5L, ((VECTOR(int8_t, 2))(0x13L)), ((VECTOR(int8_t, 4))(7L)), p_14, 0x60L, 0x50L)).s0, 5)), 0L))))) , l_471)) , p_14));
    return p_511->g_218.se;
}


/* ------------------------------------------ */
/* 
 * reads : p_511->g_68 p_511->g_62 p_511->g_79 p_511->g_18 p_511->g_60 p_511->g_56 p_511->g_101 p_511->g_64 p_511->g_3 p_511->g_83 p_511->g_108 p_511->g_107 p_511->g_59 p_511->g_122
 * writes: p_511->g_68 p_511->g_64 p_511->g_79 p_511->g_83 p_511->g_56 p_511->g_101 p_511->g_60 p_511->g_108 p_511->g_59 p_511->g_122
 */
int8_t  func_30(int32_t * p_31, int32_t  p_32, uint16_t  p_33, int32_t * p_34, int32_t * p_35, struct S0 * p_511)
{ /* block id: 22 */
    int32_t l_80 = 0x49D9BB22L;
    int64_t *l_81 = (void*)0;
    uint8_t *l_132 = (void*)0;
    VECTOR(uint16_t, 16) l_151 = (VECTOR(uint16_t, 16))(0x2AADL, (VECTOR(uint16_t, 4))(0x2AADL, (VECTOR(uint16_t, 2))(0x2AADL, 0x0C1BL), 0x0C1BL), 0x0C1BL, 0x2AADL, 0x0C1BL, (VECTOR(uint16_t, 2))(0x2AADL, 0x0C1BL), (VECTOR(uint16_t, 2))(0x2AADL, 0x0C1BL), 0x2AADL, 0x0C1BL, 0x2AADL, 0x0C1BL);
    VECTOR(uint64_t, 4) l_164 = (VECTOR(uint64_t, 4))(0xFDE6B91CD5F59C59L, (VECTOR(uint64_t, 2))(0xFDE6B91CD5F59C59L, 0xC9FDBBE093A50B06L), 0xC9FDBBE093A50B06L);
    VECTOR(int16_t, 4) l_333 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 4L), 4L);
    VECTOR(int16_t, 4) l_334 = (VECTOR(int16_t, 4))(0x39B0L, (VECTOR(int16_t, 2))(0x39B0L, 1L), 1L);
    VECTOR(uint16_t, 8) l_343 = (VECTOR(uint16_t, 8))(0xD0D5L, (VECTOR(uint16_t, 4))(0xD0D5L, (VECTOR(uint16_t, 2))(0xD0D5L, 65535UL), 65535UL), 65535UL, 0xD0D5L, 65535UL);
    VECTOR(int8_t, 8) l_345 = (VECTOR(int8_t, 8))(0x16L, (VECTOR(int8_t, 4))(0x16L, (VECTOR(int8_t, 2))(0x16L, 0L), 0L), 0L, 0x16L, 0L);
    VECTOR(int8_t, 16) l_375 = (VECTOR(int8_t, 16))(0x72L, (VECTOR(int8_t, 4))(0x72L, (VECTOR(int8_t, 2))(0x72L, 0x71L), 0x71L), 0x71L, 0x72L, 0x71L, (VECTOR(int8_t, 2))(0x72L, 0x71L), (VECTOR(int8_t, 2))(0x72L, 0x71L), 0x72L, 0x71L, 0x72L, 0x71L);
    VECTOR(int8_t, 8) l_376 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 3L), 3L), 3L, 0L, 3L);
    uint32_t l_397 = 4294967293UL;
    int16_t l_419 = 1L;
    uint32_t l_427 = 0UL;
    VECTOR(int8_t, 16) l_428 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-3L)), (-3L)), (-3L), 1L, (-3L), (VECTOR(int8_t, 2))(1L, (-3L)), (VECTOR(int8_t, 2))(1L, (-3L)), 1L, (-3L), 1L, (-3L));
    uint16_t l_431 = 1UL;
    int16_t **l_444 = &p_511->g_287;
    int32_t l_445 = 0x76BE3E0FL;
    int i;
    --p_511->g_68;
    if (p_511->g_62)
    { /* block id: 24 */
        int16_t *l_76 = &p_511->g_64;
        int16_t *l_77 = (void*)0;
        int16_t *l_78 = &p_511->g_79;
        int32_t l_116 = 0x68CCC043L;
        int32_t l_121[2][7][8] = {{{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL}},{{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL},{0x5783D8B8L,1L,(-4L),(-7L),0x727B7FA8L,0x3E87FF4EL,(-5L),0x2B93441FL}}};
        int i, j, k;
        if (((!p_33) == (p_511->g_59 |= func_71((safe_rshift_func_int16_t_s_s(((*l_78) &= ((*l_76) = (&p_511->g_64 == (void*)0))), l_80)), l_81, p_511))))
        { /* block id: 38 */
            int32_t *l_111 = &l_80;
            (*l_111) ^= ((-1L) || 0x4CE8BB6BBBDF8323L);
        }
        else
        { /* block id: 40 */
            int32_t *l_112 = &l_80;
            int32_t l_113 = 0x6C1BE638L;
            int32_t *l_114 = (void*)0;
            int32_t *l_115 = &p_511->g_83;
            int32_t *l_117 = (void*)0;
            int32_t l_118 = 1L;
            int32_t *l_119[3][7] = {{&l_113,&l_113,&l_113,&l_113,&l_113,&l_113,&l_113},{&l_113,&l_113,&l_113,&l_113,&l_113,&l_113,&l_113},{&l_113,&l_113,&l_113,&l_113,&l_113,&l_113,&l_113}};
            int i, j;
            p_511->g_122++;
        }
    }
    else
    { /* block id: 43 */
        int32_t *l_130 = &p_511->g_60;
        int32_t l_131 = 0x4C7829F0L;
        VECTOR(uint64_t, 4) l_158 = (VECTOR(uint64_t, 4))(0x543894A638292736L, (VECTOR(uint64_t, 2))(0x543894A638292736L, 0x3B1B58F1CD69E2DAL), 0x3B1B58F1CD69E2DAL);
        VECTOR(int64_t, 4) l_193 = (VECTOR(int64_t, 4))(0x0ADE47298B66DF69L, (VECTOR(int64_t, 2))(0x0ADE47298B66DF69L, 0x5DC878D31A1BC2A7L), 0x5DC878D31A1BC2A7L);
        int32_t *l_348 = &p_511->g_83;
        int32_t l_350 = 0x5345CDBFL;
        int32_t l_386 = 3L;
        VECTOR(int8_t, 2) l_395 = (VECTOR(int8_t, 2))(0x5CL, 0x08L);
        VECTOR(int16_t, 8) l_398 = (VECTOR(int16_t, 8))(0x2DB7L, (VECTOR(int16_t, 4))(0x2DB7L, (VECTOR(int16_t, 2))(0x2DB7L, (-1L)), (-1L)), (-1L), 0x2DB7L, (-1L));
        int64_t **l_422 = &l_81;
        int64_t *l_424 = &p_511->g_59;
        int64_t **l_423 = &l_424;
        int8_t *l_434 = (void*)0;
        int8_t *l_435 = (void*)0;
        int8_t *l_436 = (void*)0;
        int8_t *l_437 = (void*)0;
        int8_t *l_438 = (void*)0;
        uint32_t *l_440 = &p_511->g_441;
        uint32_t l_442 = 0xC2464C98L;
        int16_t **l_443 = &p_511->g_287;
        int i;
        (1 + 1);
    }
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_36(uint16_t  p_37, int32_t * p_38, uint16_t  p_39, struct S0 * p_511)
{ /* block id: 20 */
    int32_t *l_66[3][3][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int i, j, k;
    return l_66[0][0][5];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_46(int32_t  p_47, uint64_t  p_48, uint32_t  p_49, uint32_t  p_50, struct S0 * p_511)
{ /* block id: 9 */
    for (p_49 = 0; (p_49 > 52); ++p_49)
    { /* block id: 12 */
        return p_47;
    }
    return p_48;
}


/* ------------------------------------------ */
/* 
 * reads : p_511->g_18 p_511->g_60 p_511->g_56 p_511->g_101 p_511->g_64 p_511->g_3 p_511->g_83 p_511->g_79 p_511->g_62 p_511->g_108 p_511->g_107
 * writes: p_511->g_83 p_511->g_56 p_511->g_101 p_511->g_60 p_511->g_79 p_511->g_108
 */
int64_t  func_71(uint32_t  p_72, int64_t * p_73, struct S0 * p_511)
{ /* block id: 27 */
    int32_t *l_82[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint16_t l_85[8][10][3] = {{{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L}},{{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L}},{{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L}},{{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L}},{{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L}},{{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L}},{{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L}},{{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L},{9UL,0xDA17L,0x8982L}}};
    VECTOR(int32_t, 4) l_88 = (VECTOR(int32_t, 4))(0x72199219L, (VECTOR(int32_t, 2))(0x72199219L, 0x321B6B7DL), 0x321B6B7DL);
    int16_t *l_91 = (void*)0;
    int8_t l_92[7][4] = {{0x27L,4L,(-4L),4L},{0x27L,4L,(-4L),4L},{0x27L,4L,(-4L),4L},{0x27L,4L,(-4L),4L},{0x27L,4L,(-4L),4L},{0x27L,4L,(-4L),4L},{0x27L,4L,(-4L),4L}};
    uint64_t *l_93 = (void*)0;
    uint64_t *l_94 = (void*)0;
    uint64_t *l_95 = (void*)0;
    uint64_t *l_96 = (void*)0;
    uint64_t *l_97 = (void*)0;
    uint64_t *l_98 = (void*)0;
    uint64_t *l_99[10][3][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint32_t *l_100[4][10][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    int64_t l_102 = 0L;
    int32_t *l_103 = &p_511->g_60;
    int8_t l_104 = 9L;
    int16_t *l_105 = &p_511->g_79;
    uint8_t l_106 = 0x2EL;
    int i, j, k;
    ++l_85[4][2][0];
    p_511->g_83 = ((VECTOR(int32_t, 8))(l_88.zwzwyzzx)).s6;
    l_106 &= (safe_mul_func_int16_t_s_s(((*l_105) = (((func_46(((*l_103) = (((VECTOR(int16_t, 16))(((((p_72 >= p_72) >= (GROUP_DIVERGE(1, 1) != p_511->g_18.s7)) , (func_46(func_46(p_72, p_72, p_511->g_60, (p_511->g_101 &= ((p_511->g_56.s1 = ((l_82[1] == ((8UL | ((((l_91 != (void*)0) > p_72) , 0UL) , l_92[1][3])) , (void*)0)) <= p_511->g_56.sa)) && p_72)), p_511), p_72, l_102, p_72, p_511) , p_72)) == p_511->g_64), 0x18D0L, p_511->g_3.s2, p_511->g_3.s1, p_511->g_83, ((VECTOR(int16_t, 4))(0x020DL)), 1L, ((VECTOR(int16_t, 2))(4L)), 1L, ((VECTOR(int16_t, 2))(0x63A6L)), (-3L))).sc | p_511->g_79)), p_72, p_511->g_3.s7, p_511->g_62, p_511) & l_104) & 0x66D3L) | p_72)), p_511->g_83));
    p_511->g_108--;
    return p_511->g_107;
}


/* ------------------------------------------ */
/* 
 * reads : p_511->g_120
 * writes: p_511->g_65
 */
int32_t  func_127(uint32_t  p_128, struct S0 * p_511)
{ /* block id: 44 */
    int32_t **l_129 = &p_511->g_65;
    (*l_129) = (void*)0;
    return p_511->g_120;
}


/* ------------------------------------------ */
/* 
 * reads : p_511->g_218 p_511->g_56 p_511->g_246 p_511->g_107 p_511->g_168 p_511->g_165 p_511->g_59 p_511->g_259 p_511->g_260 p_511->g_263 p_511->g_264 p_511->g_83 p_511->g_267 p_511->g_273 p_511->g_286 p_511->g_3 p_511->g_316 p_511->g_120 p_511->g_101
 * writes: p_511->g_228 p_511->g_148 p_511->g_83 p_511->g_120
 */
uint16_t  func_135(uint32_t * p_136, uint64_t * p_137, int64_t  p_138, struct S0 * p_511)
{ /* block id: 61 */
    uint16_t *l_219 = (void*)0;
    uint16_t *l_220 = (void*)0;
    uint16_t *l_221 = (void*)0;
    uint16_t *l_222 = (void*)0;
    uint16_t *l_223 = (void*)0;
    uint16_t *l_224 = (void*)0;
    uint16_t *l_225[3][6][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_226 = 1L;
    uint32_t *l_227[10][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
    int32_t l_233 = (-7L);
    VECTOR(int8_t, 4) l_247 = (VECTOR(int8_t, 4))(0x10L, (VECTOR(int8_t, 2))(0x10L, (-10L)), (-10L));
    VECTOR(int8_t, 8) l_248 = (VECTOR(int8_t, 8))(0x61L, (VECTOR(int8_t, 4))(0x61L, (VECTOR(int8_t, 2))(0x61L, 8L), 8L), 8L, 0x61L, 8L);
    VECTOR(int8_t, 8) l_249 = (VECTOR(int8_t, 8))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 5L), 5L), 5L, 8L, 5L);
    uint8_t *l_252 = (void*)0;
    int32_t *l_253 = &p_511->g_83;
    VECTOR(int16_t, 4) l_256 = (VECTOR(int16_t, 4))(0x2861L, (VECTOR(int16_t, 2))(0x2861L, 3L), 3L);
    VECTOR(int16_t, 16) l_257 = (VECTOR(int16_t, 16))(0x3FFCL, (VECTOR(int16_t, 4))(0x3FFCL, (VECTOR(int16_t, 2))(0x3FFCL, (-1L)), (-1L)), (-1L), 0x3FFCL, (-1L), (VECTOR(int16_t, 2))(0x3FFCL, (-1L)), (VECTOR(int16_t, 2))(0x3FFCL, (-1L)), 0x3FFCL, (-1L), 0x3FFCL, (-1L));
    VECTOR(int8_t, 16) l_258 = (VECTOR(int8_t, 16))(0x5EL, (VECTOR(int8_t, 4))(0x5EL, (VECTOR(int8_t, 2))(0x5EL, 0x4BL), 0x4BL), 0x4BL, 0x5EL, 0x4BL, (VECTOR(int8_t, 2))(0x5EL, 0x4BL), (VECTOR(int8_t, 2))(0x5EL, 0x4BL), 0x5EL, 0x4BL, 0x5EL, 0x4BL);
    VECTOR(int16_t, 8) l_268 = (VECTOR(int16_t, 8))(0x1237L, (VECTOR(int16_t, 4))(0x1237L, (VECTOR(int16_t, 2))(0x1237L, (-1L)), (-1L)), (-1L), 0x1237L, (-1L));
    VECTOR(int16_t, 2) l_269 = (VECTOR(int16_t, 2))(0L, (-1L));
    VECTOR(int16_t, 16) l_270 = (VECTOR(int16_t, 16))(2L, (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 0L), 0L), 0L, 2L, 0L, (VECTOR(int16_t, 2))(2L, 0L), (VECTOR(int16_t, 2))(2L, 0L), 2L, 0L, 2L, 0L);
    VECTOR(int32_t, 8) l_274 = (VECTOR(int32_t, 8))(0x770949F3L, (VECTOR(int32_t, 4))(0x770949F3L, (VECTOR(int32_t, 2))(0x770949F3L, 0x23461518L), 0x23461518L), 0x23461518L, 0x770949F3L, 0x23461518L);
    int16_t **l_284 = (void*)0;
    int16_t ***l_285 = &l_284;
    int32_t l_288 = 0x0617D871L;
    uint32_t l_289 = 7UL;
    int32_t *l_290 = (void*)0;
    int32_t *l_291 = &l_226;
    VECTOR(uint8_t, 16) l_304 = (VECTOR(uint8_t, 16))(0x61L, (VECTOR(uint8_t, 4))(0x61L, (VECTOR(uint8_t, 2))(0x61L, 0UL), 0UL), 0UL, 0x61L, 0UL, (VECTOR(uint8_t, 2))(0x61L, 0UL), (VECTOR(uint8_t, 2))(0x61L, 0UL), 0x61L, 0UL, 0x61L, 0UL);
    VECTOR(uint32_t, 8) l_311 = (VECTOR(uint32_t, 8))(0x2F47A90DL, (VECTOR(uint32_t, 4))(0x2F47A90DL, (VECTOR(uint32_t, 2))(0x2F47A90DL, 4UL), 4UL), 4UL, 0x2F47A90DL, 4UL);
    VECTOR(int16_t, 8) l_317 = (VECTOR(int16_t, 8))(0x0FF0L, (VECTOR(int16_t, 4))(0x0FF0L, (VECTOR(int16_t, 2))(0x0FF0L, 0L), 0L), 0L, 0x0FF0L, 0L);
    uint8_t *l_318 = (void*)0;
    uint8_t *l_319 = (void*)0;
    uint8_t *l_320 = (void*)0;
    uint8_t *l_321 = (void*)0;
    uint8_t *l_322 = (void*)0;
    uint8_t *l_323[2];
    int32_t *l_324 = (void*)0;
    int32_t *l_325 = (void*)0;
    int32_t *l_326 = (void*)0;
    int32_t *l_327[8];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_323[i] = (void*)0;
    for (i = 0; i < 8; i++)
        l_327[i] = &p_511->g_120;
    (*l_253) = (((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((l_226 = ((VECTOR(uint16_t, 8))(p_511->g_218.s2fd38ee5)).s2), 0)), (p_511->g_228 = (p_136 != (l_227[9][0] = (void*)0))))) ^ ((((FAKE_DIVERGE(p_511->global_0_offset, get_global_id(0), 10) , (safe_mod_func_uint32_t_u_u((((safe_sub_func_int32_t_s_s((l_233 < l_233), (!(safe_div_func_int8_t_s_s(p_511->g_218.s1, (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_u(p_511->g_56.sa, 7)), (+(safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_511->global_0_offset, get_global_id(0), 10), ((((0x07L >= ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 4))(p_511->g_246.yyyy)).zwxwzxxxyywwxzzy, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(l_247.xx)) && ((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(l_248.s10141302)), ((VECTOR(int8_t, 2))(0L, 1L)).xxyyyxxy))).s1470057514012553, ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 8))(l_249.s76404512)).even, ((VECTOR(int8_t, 2))(0x6CL, (-6L))).xyyy, ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(((safe_add_func_uint8_t_u_u((p_511->g_148.s5 = 0xC0L), (0x3053F47EL != 0x2AF201FAL))) ^ 7L), ((VECTOR(int8_t, 2))(0x16L)), 9L, 0x06L, ((VECTOR(int8_t, 2))(7L)), (-1L))).lo, ((VECTOR(int8_t, 4))(0L)))))))), (-1L), p_511->g_107, 0L, (-5L), 5L, (-10L), 0x39L, ((VECTOR(int8_t, 2))(0x28L)), ((VECTOR(int8_t, 2))(0L)), 0x15L)).sdf1c && ((VECTOR(int8_t, 4))(0x40L))))).hi, ((VECTOR(int8_t, 2))(1L))))).xxxyyxyyxxyyyyyx, ((VECTOR(int8_t, 16))(0L)), ((VECTOR(int8_t, 16))(0L)))))))).s19))), ((VECTOR(int8_t, 2))(0x21L))))).xxxy & ((VECTOR(int8_t, 4))(0L))))).zxzxzyzx && ((VECTOR(int8_t, 8))((-7L)))))).s0573633726151535))).s57 == ((VECTOR(int8_t, 2))(0x02L))))).odd) || p_511->g_168.s1) | l_249.s3) && 0xC77B25053CB167C5L))) != l_248.s6) | p_511->g_56.sf) , p_138), p_138)), p_138)))))))))) , GROUP_DIVERGE(2, 1)) <= p_511->g_165.s0), p_511->g_59))) & 0x1D29158F6FA15BBDL) >= l_247.y) != 0x15L)) , p_138);
    (*l_291) |= (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(l_256.wzywwwxw)) >= ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 4))(l_257.s12ba)).hi, (int16_t)((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 2))(l_258.s7d)).xyyyxyxyxyyxxyxy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_511->g_259.yw)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))(0L, 0x47L)).yyxy, ((VECTOR(int8_t, 4))(p_511->g_260.wzyz))))).even))), 1L, 0x48L)), (safe_mod_func_uint32_t_u_u((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 2))(0x3C6FL, (-5L))).yyyyyxxyyxxyxyyx))) == ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 2))((-1L), 0x7285L)), ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(p_511->g_263.yxxxxyxyyyxxxyyy)).s94, ((VECTOR(int16_t, 2))(1L, (-1L)))))).xyyyxyxyxxyxyxxx | ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 4))(p_511->g_264.yxxy)).wxzyxxzx, (int16_t)(safe_lshift_func_uint16_t_u_u(((*l_253) >= ((void*)0 == &p_511->g_62)), 15))))), ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(p_511->g_267.xzxw)).ywxzxzwz && ((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 2))(l_268.s14)).xxyxyxxy, ((VECTOR(int16_t, 2))(0x332BL, (-1L))).xxxxxyyy, ((VECTOR(int16_t, 4))(l_269.xyxy)).zzyzzwxy))).even, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_270.sa3f1fc9b)), (((safe_add_func_uint32_t_u_u((p_138 != (*l_253)), (p_138 , ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(p_511->g_273.s76)).xyyxyxxx || ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(l_274.s16)), ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((safe_rshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s(9L, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(((safe_unary_minus_func_uint64_t_u((*l_253))) <= ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((((*l_285) = l_284) == p_511->g_286[0]), FAKE_DIVERGE(p_511->local_1_offset, get_local_id(1), 10))), 8L)) | 0x5951L)), 0x329AF886L, (-9L), (-1L))).zxzxxxyw == ((VECTOR(int32_t, 8))(7L))))).s20 ^ ((VECTOR(int32_t, 2))((-1L)))))).xyxxxxxyyxyxyyxy, ((VECTOR(int32_t, 16))(0L))))).s983e && ((VECTOR(int32_t, 4))((-1L)))))).x)), 2)), (-1L), ((VECTOR(int32_t, 2))(8L)), 0x5824C1C6L, 0L, p_138, ((VECTOR(int32_t, 4))(0L)), 0x597ACBCCL, l_288, ((VECTOR(int32_t, 2))(0x1890C2C4L)), 1L)) && ((VECTOR(int32_t, 16))(1L))))).s05))).yyyxxyxy))).s5))) && (-5L)) && (*l_253)), (*l_253), (*l_253), (*l_253), 0x42F2L, (*l_253), 0L, 1L)).s149a, ((VECTOR(int16_t, 4))(0L))))).wxzwzyzwyzxxxxzz, ((VECTOR(int16_t, 16))(0x181BL))))), ((VECTOR(int16_t, 16))(4L)), ((VECTOR(int16_t, 16))(0x1E36L))))).lo))) <= ((VECTOR(int16_t, 8))(0x1377L))))), ((VECTOR(int16_t, 8))((-9L)))))).s46 && ((VECTOR(int16_t, 2))(0x40C0L))))).xxxx && ((VECTOR(int16_t, 4))(0L))))).zwxywzyzwxwxyyxz == ((VECTOR(int16_t, 16))(0x616EL))))).sa4, ((VECTOR(int16_t, 2))(0L))))).yxxxxxyxyyxyyyxx))).s22))).xyxxyyxxyxxxyyyx))).s26dd >= ((VECTOR(int16_t, 4))(0L))))).w || p_511->g_83), (*l_253))), ((VECTOR(int8_t, 2))((-3L))), 0x6CL, 0x0BL, ((VECTOR(int8_t, 2))(0x18L)), ((VECTOR(int8_t, 2))(0x7EL)), 0L))))), ((VECTOR(uint8_t, 16))(246UL))))).s5))).xxyyxyyy && ((VECTOR(int16_t, 8))(0x06AEL))))).s67, ((VECTOR(int16_t, 2))(0x496CL))))).yyxyyxyx))).s4226251573627437, ((VECTOR(int16_t, 16))(0x10B5L))))).sb, l_289));
    p_511->g_120 &= (safe_add_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u(0x37C3L, 5)) | (safe_mod_func_uint64_t_u_u((p_138 <= (l_233 |= ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(0x75L, 0x0BL, ((VECTOR(uint8_t, 8))(l_304.sa455267e)), 0xE9L, 0x43L, (((p_136 != (void*)0) < (*l_291)) , (((~((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))(l_311.s1247541133704761)) + ((VECTOR(uint32_t, 4))(0x16B153C2L, ((p_511->g_3.s4 & ((safe_mul_func_int8_t_s_s(((p_138 ^ (safe_div_func_uint8_t_u_u(((&p_511->g_83 != ((((((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(p_511->g_316.s3137)).xxzzxzwz != ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(l_317.s07)).yxyx && ((VECTOR(int16_t, 4))(p_138, (*l_291), 1L, 0x5792L))))).wwyzyyyx))).s70, ((VECTOR(int16_t, 2))((-2L)))))), 0x3F1DL, (-1L))).hi ^ ((VECTOR(int16_t, 2))(0x6E26L))))).xxyyxxyyxxxyxxyy, ((VECTOR(int16_t, 16))(0x14AAL)), ((VECTOR(int16_t, 16))((-1L)))))).sa && p_138) , 0x80L) , 0xF1A73D9831F8AEBAL) , (void*)0)) > (*l_291)), (*l_253)))) && (*l_291)), p_138)) != 0xA2C60234L)) && p_511->g_56.s7), 6UL, 0UL)).zyyzxwyzzxyyxyzz))).scc, ((VECTOR(uint32_t, 2))(4294967293UL)), ((VECTOR(uint32_t, 2))(0x85EA165CL))))), ((VECTOR(uint32_t, 2))(0xAE71FCBEL)), 1UL, ((VECTOR(uint32_t, 2))(1UL)), 0UL))))).hi + ((VECTOR(uint32_t, 4))(0xFC5413F1L))))).yzzxxxwzxwzywxyz, ((VECTOR(uint32_t, 16))(0x11F28703L))))).sec12 + ((VECTOR(uint32_t, 4))(0x2F90AC3DL))))).z) != 0x591BB09EL) > (-8L))), ((VECTOR(uint8_t, 2))(1UL)), 1UL)).sfe55 - ((VECTOR(uint8_t, 4))(0x80L))))).xyzxxywy + ((VECTOR(uint8_t, 8))(255UL))))).s6)), p_138))), 1UL)), p_138));
    (*l_253) = p_511->g_165.s2;
    return p_511->g_101;
}


/* ------------------------------------------ */
/* 
 * reads : p_511->g_59 p_511->g_83
 * writes: p_511->g_59 p_511->g_152 p_511->g_120
 */
uint32_t * func_139(uint64_t  p_140, int64_t  p_141, struct S0 * p_511)
{ /* block id: 55 */
    uint32_t l_202[5];
    int64_t *l_205 = &p_511->g_59;
    int16_t *l_206[2][6][9] = {{{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0},{(void*)0,(void*)0,&p_511->g_64,&p_511->g_79,&p_511->g_79,&p_511->g_79,&p_511->g_64,(void*)0,(void*)0}}};
    int16_t *l_207 = &p_511->g_79;
    int16_t **l_208 = &l_207;
    int32_t **l_209 = &p_511->g_152;
    int32_t *l_210 = &p_511->g_107;
    int32_t *l_211 = &p_511->g_120;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_202[i] = 0x33D1B2EEL;
    (*l_211) = (safe_add_func_uint16_t_u_u((safe_add_func_int64_t_s_s(l_202[1], ((*l_205) ^= (safe_rshift_func_uint8_t_u_s(p_140, 4))))), (((*l_209) = ((&p_140 == l_205) , func_36((p_511->g_83 && 0x29L), &p_511->g_83, (l_206[0][5][4] == ((*l_208) = l_207)), p_511))) == l_210)));
    return l_210;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S0 c_512;
    struct S0* p_511 = &c_512;
    struct S0 c_513 = {
        (VECTOR(int32_t, 8))(0x398070ADL, (VECTOR(int32_t, 4))(0x398070ADL, (VECTOR(int32_t, 2))(0x398070ADL, 0x67FA5C62L), 0x67FA5C62L), 0x67FA5C62L, 0x398070ADL, 0x67FA5C62L), // p_511->g_3
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65530UL), 65530UL), 65530UL, 1UL, 65530UL, (VECTOR(uint16_t, 2))(1UL, 65530UL), (VECTOR(uint16_t, 2))(1UL, 65530UL), 1UL, 65530UL, 1UL, 65530UL), // p_511->g_18
        (VECTOR(uint64_t, 16))(0x8B12ACF1929B4DB5L, (VECTOR(uint64_t, 4))(0x8B12ACF1929B4DB5L, (VECTOR(uint64_t, 2))(0x8B12ACF1929B4DB5L, 0x14BE5697A12B2FE0L), 0x14BE5697A12B2FE0L), 0x14BE5697A12B2FE0L, 0x8B12ACF1929B4DB5L, 0x14BE5697A12B2FE0L, (VECTOR(uint64_t, 2))(0x8B12ACF1929B4DB5L, 0x14BE5697A12B2FE0L), (VECTOR(uint64_t, 2))(0x8B12ACF1929B4DB5L, 0x14BE5697A12B2FE0L), 0x8B12ACF1929B4DB5L, 0x14BE5697A12B2FE0L, 0x8B12ACF1929B4DB5L, 0x14BE5697A12B2FE0L), // p_511->g_56
        2L, // p_511->g_59
        0x187EDF5AL, // p_511->g_60
        0x33884E3EED797CFCL, // p_511->g_62
        0L, // p_511->g_64
        (void*)0, // p_511->g_65
        4294967294UL, // p_511->g_68
        0x7E41L, // p_511->g_79
        0L, // p_511->g_83
        0x0D300741L, // p_511->g_84
        0xC9C021E9L, // p_511->g_101
        0L, // p_511->g_107
        5UL, // p_511->g_108
        0x487D8A3BL, // p_511->g_120
        0UL, // p_511->g_122
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL), 255UL, 0UL, 255UL), // p_511->g_148
        (void*)0, // p_511->g_152
        (void*)0, // p_511->g_155
        (VECTOR(uint64_t, 8))(0x033DE5451DF1B902L, (VECTOR(uint64_t, 4))(0x033DE5451DF1B902L, (VECTOR(uint64_t, 2))(0x033DE5451DF1B902L, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0x033DE5451DF1B902L, 18446744073709551610UL), // p_511->g_165
        (VECTOR(uint64_t, 8))(0x35A513612929A0D0L, (VECTOR(uint64_t, 4))(0x35A513612929A0D0L, (VECTOR(uint64_t, 2))(0x35A513612929A0D0L, 18446744073709551611UL), 18446744073709551611UL), 18446744073709551611UL, 0x35A513612929A0D0L, 18446744073709551611UL), // p_511->g_168
        (VECTOR(uint64_t, 8))(0xC32A7BFF7CC21393L, (VECTOR(uint64_t, 4))(0xC32A7BFF7CC21393L, (VECTOR(uint64_t, 2))(0xC32A7BFF7CC21393L, 8UL), 8UL), 8UL, 0xC32A7BFF7CC21393L, 8UL), // p_511->g_169
        (VECTOR(uint32_t, 2))(1UL, 8UL), // p_511->g_191
        (VECTOR(uint64_t, 8))(0xC08B88E978FE4013L, (VECTOR(uint64_t, 4))(0xC08B88E978FE4013L, (VECTOR(uint64_t, 2))(0xC08B88E978FE4013L, 0x29E382DF5F399720L), 0x29E382DF5F399720L), 0x29E382DF5F399720L, 0xC08B88E978FE4013L, 0x29E382DF5F399720L), // p_511->g_192
        (VECTOR(uint16_t, 16))(0x048CL, (VECTOR(uint16_t, 4))(0x048CL, (VECTOR(uint16_t, 2))(0x048CL, 1UL), 1UL), 1UL, 0x048CL, 1UL, (VECTOR(uint16_t, 2))(0x048CL, 1UL), (VECTOR(uint16_t, 2))(0x048CL, 1UL), 0x048CL, 1UL, 0x048CL, 1UL), // p_511->g_218
        0xEA66L, // p_511->g_228
        (VECTOR(int8_t, 2))(0x39L, 0L), // p_511->g_246
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), // p_511->g_259
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x03L), 0x03L), // p_511->g_260
        (VECTOR(int16_t, 2))(0x1A9FL, 0x684BL), // p_511->g_263
        (VECTOR(int16_t, 2))(0x4310L, 0x6237L), // p_511->g_264
        (VECTOR(int16_t, 4))(0x20EBL, (VECTOR(int16_t, 2))(0x20EBL, 6L), 6L), // p_511->g_267
        (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, (-1L)), (-1L)), (-1L), 7L, (-1L)), // p_511->g_273
        (void*)0, // p_511->g_287
        {&p_511->g_287,&p_511->g_287,&p_511->g_287}, // p_511->g_286
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L), // p_511->g_316
        &p_511->g_65, // p_511->g_329
        &p_511->g_120, // p_511->g_352
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_511->g_396
        (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xE62C4EECA38126FFL), 0xE62C4EECA38126FFL), // p_511->g_409
        (VECTOR(uint64_t, 8))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0x41B4D520168DE097L), 0x41B4D520168DE097L), 0x41B4D520168DE097L, 18446744073709551609UL, 0x41B4D520168DE097L), // p_511->g_412
        (VECTOR(uint64_t, 2))(1UL, 0xD37826F0A6F76317L), // p_511->g_413
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xFAL), 0xFAL), // p_511->g_418
        0xB1L, // p_511->g_439
        0x2B475C6FL, // p_511->g_441
        (void*)0, // p_511->g_474
        (void*)0, // p_511->g_475
        &p_511->g_120, // p_511->g_476
        &p_511->g_65, // p_511->g_485
        (void*)0, // p_511->g_498
        &p_511->g_65, // p_511->g_499
        0xC8E1L, // p_511->g_504
        0xEAE5L, // p_511->g_510
        sequence_input[get_global_id(0)], // p_511->global_0_offset
        sequence_input[get_global_id(1)], // p_511->global_1_offset
        sequence_input[get_global_id(2)], // p_511->global_2_offset
        sequence_input[get_local_id(0)], // p_511->local_0_offset
        sequence_input[get_local_id(1)], // p_511->local_1_offset
        sequence_input[get_local_id(2)], // p_511->local_2_offset
        sequence_input[get_group_id(0)], // p_511->group_0_offset
        sequence_input[get_group_id(1)], // p_511->group_1_offset
        sequence_input[get_group_id(2)], // p_511->group_2_offset
    };
    c_512 = c_513;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_511);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_511->g_3.s0, "p_511->g_3.s0", print_hash_value);
    transparent_crc(p_511->g_3.s1, "p_511->g_3.s1", print_hash_value);
    transparent_crc(p_511->g_3.s2, "p_511->g_3.s2", print_hash_value);
    transparent_crc(p_511->g_3.s3, "p_511->g_3.s3", print_hash_value);
    transparent_crc(p_511->g_3.s4, "p_511->g_3.s4", print_hash_value);
    transparent_crc(p_511->g_3.s5, "p_511->g_3.s5", print_hash_value);
    transparent_crc(p_511->g_3.s6, "p_511->g_3.s6", print_hash_value);
    transparent_crc(p_511->g_3.s7, "p_511->g_3.s7", print_hash_value);
    transparent_crc(p_511->g_18.s0, "p_511->g_18.s0", print_hash_value);
    transparent_crc(p_511->g_18.s1, "p_511->g_18.s1", print_hash_value);
    transparent_crc(p_511->g_18.s2, "p_511->g_18.s2", print_hash_value);
    transparent_crc(p_511->g_18.s3, "p_511->g_18.s3", print_hash_value);
    transparent_crc(p_511->g_18.s4, "p_511->g_18.s4", print_hash_value);
    transparent_crc(p_511->g_18.s5, "p_511->g_18.s5", print_hash_value);
    transparent_crc(p_511->g_18.s6, "p_511->g_18.s6", print_hash_value);
    transparent_crc(p_511->g_18.s7, "p_511->g_18.s7", print_hash_value);
    transparent_crc(p_511->g_18.s8, "p_511->g_18.s8", print_hash_value);
    transparent_crc(p_511->g_18.s9, "p_511->g_18.s9", print_hash_value);
    transparent_crc(p_511->g_18.sa, "p_511->g_18.sa", print_hash_value);
    transparent_crc(p_511->g_18.sb, "p_511->g_18.sb", print_hash_value);
    transparent_crc(p_511->g_18.sc, "p_511->g_18.sc", print_hash_value);
    transparent_crc(p_511->g_18.sd, "p_511->g_18.sd", print_hash_value);
    transparent_crc(p_511->g_18.se, "p_511->g_18.se", print_hash_value);
    transparent_crc(p_511->g_18.sf, "p_511->g_18.sf", print_hash_value);
    transparent_crc(p_511->g_56.s0, "p_511->g_56.s0", print_hash_value);
    transparent_crc(p_511->g_56.s1, "p_511->g_56.s1", print_hash_value);
    transparent_crc(p_511->g_56.s2, "p_511->g_56.s2", print_hash_value);
    transparent_crc(p_511->g_56.s3, "p_511->g_56.s3", print_hash_value);
    transparent_crc(p_511->g_56.s4, "p_511->g_56.s4", print_hash_value);
    transparent_crc(p_511->g_56.s5, "p_511->g_56.s5", print_hash_value);
    transparent_crc(p_511->g_56.s6, "p_511->g_56.s6", print_hash_value);
    transparent_crc(p_511->g_56.s7, "p_511->g_56.s7", print_hash_value);
    transparent_crc(p_511->g_56.s8, "p_511->g_56.s8", print_hash_value);
    transparent_crc(p_511->g_56.s9, "p_511->g_56.s9", print_hash_value);
    transparent_crc(p_511->g_56.sa, "p_511->g_56.sa", print_hash_value);
    transparent_crc(p_511->g_56.sb, "p_511->g_56.sb", print_hash_value);
    transparent_crc(p_511->g_56.sc, "p_511->g_56.sc", print_hash_value);
    transparent_crc(p_511->g_56.sd, "p_511->g_56.sd", print_hash_value);
    transparent_crc(p_511->g_56.se, "p_511->g_56.se", print_hash_value);
    transparent_crc(p_511->g_56.sf, "p_511->g_56.sf", print_hash_value);
    transparent_crc(p_511->g_59, "p_511->g_59", print_hash_value);
    transparent_crc(p_511->g_60, "p_511->g_60", print_hash_value);
    transparent_crc(p_511->g_62, "p_511->g_62", print_hash_value);
    transparent_crc(p_511->g_64, "p_511->g_64", print_hash_value);
    transparent_crc(p_511->g_68, "p_511->g_68", print_hash_value);
    transparent_crc(p_511->g_79, "p_511->g_79", print_hash_value);
    transparent_crc(p_511->g_83, "p_511->g_83", print_hash_value);
    transparent_crc(p_511->g_84, "p_511->g_84", print_hash_value);
    transparent_crc(p_511->g_101, "p_511->g_101", print_hash_value);
    transparent_crc(p_511->g_107, "p_511->g_107", print_hash_value);
    transparent_crc(p_511->g_108, "p_511->g_108", print_hash_value);
    transparent_crc(p_511->g_120, "p_511->g_120", print_hash_value);
    transparent_crc(p_511->g_122, "p_511->g_122", print_hash_value);
    transparent_crc(p_511->g_148.s0, "p_511->g_148.s0", print_hash_value);
    transparent_crc(p_511->g_148.s1, "p_511->g_148.s1", print_hash_value);
    transparent_crc(p_511->g_148.s2, "p_511->g_148.s2", print_hash_value);
    transparent_crc(p_511->g_148.s3, "p_511->g_148.s3", print_hash_value);
    transparent_crc(p_511->g_148.s4, "p_511->g_148.s4", print_hash_value);
    transparent_crc(p_511->g_148.s5, "p_511->g_148.s5", print_hash_value);
    transparent_crc(p_511->g_148.s6, "p_511->g_148.s6", print_hash_value);
    transparent_crc(p_511->g_148.s7, "p_511->g_148.s7", print_hash_value);
    transparent_crc(p_511->g_165.s0, "p_511->g_165.s0", print_hash_value);
    transparent_crc(p_511->g_165.s1, "p_511->g_165.s1", print_hash_value);
    transparent_crc(p_511->g_165.s2, "p_511->g_165.s2", print_hash_value);
    transparent_crc(p_511->g_165.s3, "p_511->g_165.s3", print_hash_value);
    transparent_crc(p_511->g_165.s4, "p_511->g_165.s4", print_hash_value);
    transparent_crc(p_511->g_165.s5, "p_511->g_165.s5", print_hash_value);
    transparent_crc(p_511->g_165.s6, "p_511->g_165.s6", print_hash_value);
    transparent_crc(p_511->g_165.s7, "p_511->g_165.s7", print_hash_value);
    transparent_crc(p_511->g_168.s0, "p_511->g_168.s0", print_hash_value);
    transparent_crc(p_511->g_168.s1, "p_511->g_168.s1", print_hash_value);
    transparent_crc(p_511->g_168.s2, "p_511->g_168.s2", print_hash_value);
    transparent_crc(p_511->g_168.s3, "p_511->g_168.s3", print_hash_value);
    transparent_crc(p_511->g_168.s4, "p_511->g_168.s4", print_hash_value);
    transparent_crc(p_511->g_168.s5, "p_511->g_168.s5", print_hash_value);
    transparent_crc(p_511->g_168.s6, "p_511->g_168.s6", print_hash_value);
    transparent_crc(p_511->g_168.s7, "p_511->g_168.s7", print_hash_value);
    transparent_crc(p_511->g_169.s0, "p_511->g_169.s0", print_hash_value);
    transparent_crc(p_511->g_169.s1, "p_511->g_169.s1", print_hash_value);
    transparent_crc(p_511->g_169.s2, "p_511->g_169.s2", print_hash_value);
    transparent_crc(p_511->g_169.s3, "p_511->g_169.s3", print_hash_value);
    transparent_crc(p_511->g_169.s4, "p_511->g_169.s4", print_hash_value);
    transparent_crc(p_511->g_169.s5, "p_511->g_169.s5", print_hash_value);
    transparent_crc(p_511->g_169.s6, "p_511->g_169.s6", print_hash_value);
    transparent_crc(p_511->g_169.s7, "p_511->g_169.s7", print_hash_value);
    transparent_crc(p_511->g_191.x, "p_511->g_191.x", print_hash_value);
    transparent_crc(p_511->g_191.y, "p_511->g_191.y", print_hash_value);
    transparent_crc(p_511->g_192.s0, "p_511->g_192.s0", print_hash_value);
    transparent_crc(p_511->g_192.s1, "p_511->g_192.s1", print_hash_value);
    transparent_crc(p_511->g_192.s2, "p_511->g_192.s2", print_hash_value);
    transparent_crc(p_511->g_192.s3, "p_511->g_192.s3", print_hash_value);
    transparent_crc(p_511->g_192.s4, "p_511->g_192.s4", print_hash_value);
    transparent_crc(p_511->g_192.s5, "p_511->g_192.s5", print_hash_value);
    transparent_crc(p_511->g_192.s6, "p_511->g_192.s6", print_hash_value);
    transparent_crc(p_511->g_192.s7, "p_511->g_192.s7", print_hash_value);
    transparent_crc(p_511->g_218.s0, "p_511->g_218.s0", print_hash_value);
    transparent_crc(p_511->g_218.s1, "p_511->g_218.s1", print_hash_value);
    transparent_crc(p_511->g_218.s2, "p_511->g_218.s2", print_hash_value);
    transparent_crc(p_511->g_218.s3, "p_511->g_218.s3", print_hash_value);
    transparent_crc(p_511->g_218.s4, "p_511->g_218.s4", print_hash_value);
    transparent_crc(p_511->g_218.s5, "p_511->g_218.s5", print_hash_value);
    transparent_crc(p_511->g_218.s6, "p_511->g_218.s6", print_hash_value);
    transparent_crc(p_511->g_218.s7, "p_511->g_218.s7", print_hash_value);
    transparent_crc(p_511->g_218.s8, "p_511->g_218.s8", print_hash_value);
    transparent_crc(p_511->g_218.s9, "p_511->g_218.s9", print_hash_value);
    transparent_crc(p_511->g_218.sa, "p_511->g_218.sa", print_hash_value);
    transparent_crc(p_511->g_218.sb, "p_511->g_218.sb", print_hash_value);
    transparent_crc(p_511->g_218.sc, "p_511->g_218.sc", print_hash_value);
    transparent_crc(p_511->g_218.sd, "p_511->g_218.sd", print_hash_value);
    transparent_crc(p_511->g_218.se, "p_511->g_218.se", print_hash_value);
    transparent_crc(p_511->g_218.sf, "p_511->g_218.sf", print_hash_value);
    transparent_crc(p_511->g_228, "p_511->g_228", print_hash_value);
    transparent_crc(p_511->g_246.x, "p_511->g_246.x", print_hash_value);
    transparent_crc(p_511->g_246.y, "p_511->g_246.y", print_hash_value);
    transparent_crc(p_511->g_259.x, "p_511->g_259.x", print_hash_value);
    transparent_crc(p_511->g_259.y, "p_511->g_259.y", print_hash_value);
    transparent_crc(p_511->g_259.z, "p_511->g_259.z", print_hash_value);
    transparent_crc(p_511->g_259.w, "p_511->g_259.w", print_hash_value);
    transparent_crc(p_511->g_260.x, "p_511->g_260.x", print_hash_value);
    transparent_crc(p_511->g_260.y, "p_511->g_260.y", print_hash_value);
    transparent_crc(p_511->g_260.z, "p_511->g_260.z", print_hash_value);
    transparent_crc(p_511->g_260.w, "p_511->g_260.w", print_hash_value);
    transparent_crc(p_511->g_263.x, "p_511->g_263.x", print_hash_value);
    transparent_crc(p_511->g_263.y, "p_511->g_263.y", print_hash_value);
    transparent_crc(p_511->g_264.x, "p_511->g_264.x", print_hash_value);
    transparent_crc(p_511->g_264.y, "p_511->g_264.y", print_hash_value);
    transparent_crc(p_511->g_267.x, "p_511->g_267.x", print_hash_value);
    transparent_crc(p_511->g_267.y, "p_511->g_267.y", print_hash_value);
    transparent_crc(p_511->g_267.z, "p_511->g_267.z", print_hash_value);
    transparent_crc(p_511->g_267.w, "p_511->g_267.w", print_hash_value);
    transparent_crc(p_511->g_273.s0, "p_511->g_273.s0", print_hash_value);
    transparent_crc(p_511->g_273.s1, "p_511->g_273.s1", print_hash_value);
    transparent_crc(p_511->g_273.s2, "p_511->g_273.s2", print_hash_value);
    transparent_crc(p_511->g_273.s3, "p_511->g_273.s3", print_hash_value);
    transparent_crc(p_511->g_273.s4, "p_511->g_273.s4", print_hash_value);
    transparent_crc(p_511->g_273.s5, "p_511->g_273.s5", print_hash_value);
    transparent_crc(p_511->g_273.s6, "p_511->g_273.s6", print_hash_value);
    transparent_crc(p_511->g_273.s7, "p_511->g_273.s7", print_hash_value);
    transparent_crc(p_511->g_316.s0, "p_511->g_316.s0", print_hash_value);
    transparent_crc(p_511->g_316.s1, "p_511->g_316.s1", print_hash_value);
    transparent_crc(p_511->g_316.s2, "p_511->g_316.s2", print_hash_value);
    transparent_crc(p_511->g_316.s3, "p_511->g_316.s3", print_hash_value);
    transparent_crc(p_511->g_316.s4, "p_511->g_316.s4", print_hash_value);
    transparent_crc(p_511->g_316.s5, "p_511->g_316.s5", print_hash_value);
    transparent_crc(p_511->g_316.s6, "p_511->g_316.s6", print_hash_value);
    transparent_crc(p_511->g_316.s7, "p_511->g_316.s7", print_hash_value);
    transparent_crc(p_511->g_396.s0, "p_511->g_396.s0", print_hash_value);
    transparent_crc(p_511->g_396.s1, "p_511->g_396.s1", print_hash_value);
    transparent_crc(p_511->g_396.s2, "p_511->g_396.s2", print_hash_value);
    transparent_crc(p_511->g_396.s3, "p_511->g_396.s3", print_hash_value);
    transparent_crc(p_511->g_396.s4, "p_511->g_396.s4", print_hash_value);
    transparent_crc(p_511->g_396.s5, "p_511->g_396.s5", print_hash_value);
    transparent_crc(p_511->g_396.s6, "p_511->g_396.s6", print_hash_value);
    transparent_crc(p_511->g_396.s7, "p_511->g_396.s7", print_hash_value);
    transparent_crc(p_511->g_409.x, "p_511->g_409.x", print_hash_value);
    transparent_crc(p_511->g_409.y, "p_511->g_409.y", print_hash_value);
    transparent_crc(p_511->g_409.z, "p_511->g_409.z", print_hash_value);
    transparent_crc(p_511->g_409.w, "p_511->g_409.w", print_hash_value);
    transparent_crc(p_511->g_412.s0, "p_511->g_412.s0", print_hash_value);
    transparent_crc(p_511->g_412.s1, "p_511->g_412.s1", print_hash_value);
    transparent_crc(p_511->g_412.s2, "p_511->g_412.s2", print_hash_value);
    transparent_crc(p_511->g_412.s3, "p_511->g_412.s3", print_hash_value);
    transparent_crc(p_511->g_412.s4, "p_511->g_412.s4", print_hash_value);
    transparent_crc(p_511->g_412.s5, "p_511->g_412.s5", print_hash_value);
    transparent_crc(p_511->g_412.s6, "p_511->g_412.s6", print_hash_value);
    transparent_crc(p_511->g_412.s7, "p_511->g_412.s7", print_hash_value);
    transparent_crc(p_511->g_413.x, "p_511->g_413.x", print_hash_value);
    transparent_crc(p_511->g_413.y, "p_511->g_413.y", print_hash_value);
    transparent_crc(p_511->g_418.x, "p_511->g_418.x", print_hash_value);
    transparent_crc(p_511->g_418.y, "p_511->g_418.y", print_hash_value);
    transparent_crc(p_511->g_418.z, "p_511->g_418.z", print_hash_value);
    transparent_crc(p_511->g_418.w, "p_511->g_418.w", print_hash_value);
    transparent_crc(p_511->g_439, "p_511->g_439", print_hash_value);
    transparent_crc(p_511->g_441, "p_511->g_441", print_hash_value);
    transparent_crc(p_511->g_504, "p_511->g_504", print_hash_value);
    transparent_crc(p_511->g_510, "p_511->g_510", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
