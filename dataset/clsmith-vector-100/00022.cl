// ---fake_divergence -g 1,1,8209 -l 1,1,1
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


// Seed: 22

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int32_t  f0;
   int32_t  f1;
   volatile int32_t  f2;
   uint32_t  f3;
   int32_t  f4;
   uint64_t  f5;
   volatile uint32_t  f6;
   volatile int64_t  f7;
   volatile int64_t  f8;
   int16_t  f9;
};

struct S1 {
    volatile VECTOR(int8_t, 16) g_3;
    VECTOR(int8_t, 2) g_4;
    VECTOR(int8_t, 2) g_5;
    int32_t g_20;
    int32_t g_22;
    int32_t g_42;
    uint16_t g_52[2];
    int32_t g_56[7][9][4];
    int32_t *g_55[1][10];
    VECTOR(int8_t, 2) g_80;
    int16_t g_114;
    uint32_t g_118;
    uint32_t g_160;
    uint64_t g_182;
    int32_t g_183;
    int16_t g_185;
    int16_t *g_184;
    VECTOR(int8_t, 2) g_186;
    uint64_t *g_190;
    int16_t *g_199[10][8];
    int16_t **g_198;
    VECTOR(int16_t, 8) g_207;
    uint64_t g_209;
    uint8_t g_217;
    uint8_t *g_216;
    VECTOR(uint32_t, 16) g_240;
    VECTOR(uint32_t, 8) g_244;
    VECTOR(uint32_t, 8) g_250;
    VECTOR(uint32_t, 2) g_252;
    int32_t g_282[8][8];
    int32_t *g_281[6][7];
    int32_t **g_280;
    VECTOR(uint8_t, 16) g_336;
    VECTOR(uint16_t, 8) g_365;
    VECTOR(uint16_t, 8) g_368;
    volatile uint32_t g_388;
    volatile uint32_t *g_387;
    volatile uint32_t **g_386[3];
    VECTOR(uint32_t, 16) g_396;
    VECTOR(uint16_t, 16) g_400;
    int32_t g_448[6];
    int32_t *g_465;
    VECTOR(uint32_t, 16) g_481;
    VECTOR(uint64_t, 16) g_491;
    VECTOR(uint64_t, 8) g_494;
    VECTOR(int8_t, 4) g_508;
    int64_t g_511;
    int32_t g_566;
    VECTOR(int16_t, 8) g_576;
    VECTOR(int32_t, 8) g_583;
    VECTOR(uint16_t, 4) g_614;
    VECTOR(uint16_t, 2) g_620;
    VECTOR(int8_t, 2) g_626;
    VECTOR(int8_t, 4) g_628;
    VECTOR(int8_t, 8) g_629;
    volatile uint16_t *g_633[4];
    volatile uint16_t * volatile *g_632[10];
    int32_t g_660;
    int32_t g_661;
    int8_t g_664;
    int32_t g_667;
    struct S0 g_676;
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
struct S0  func_1(struct S1 * p_677);
int64_t  func_15(uint32_t  p_16, uint32_t  p_17, int32_t  p_18, struct S1 * p_677);
uint64_t  func_23(int32_t  p_24, uint32_t  p_25, struct S1 * p_677);
int64_t  func_32(int32_t * p_33, uint64_t  p_34, struct S1 * p_677);
int32_t * func_35(int32_t * p_36, int32_t * p_37, int32_t  p_38, int32_t * p_39, int32_t * p_40, struct S1 * p_677);
uint32_t  func_43(int32_t  p_44, int32_t * p_45, int32_t * p_46, struct S1 * p_677);
int32_t  func_58(int32_t * p_59, struct S1 * p_677);
int32_t * func_61(uint16_t * p_62, int16_t  p_63, int32_t  p_64, int32_t  p_65, uint16_t * p_66, struct S1 * p_677);
uint16_t * func_67(uint8_t  p_68, uint16_t  p_69, uint32_t  p_70, struct S1 * p_677);
int16_t  func_73(int32_t * p_74, struct S1 * p_677);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_677->g_3 p_677->g_4 p_677->g_5 p_677->g_20 p_677->g_52 p_677->g_55 p_677->g_80 p_677->g_56 p_677->g_42 p_677->g_114 p_677->g_160 p_677->g_190 p_677->g_209 p_677->g_216 p_677->g_184 p_677->g_185 p_677->g_240 p_677->g_207 p_677->g_336 p_677->g_365 p_677->g_368 p_677->g_386 p_677->g_183 p_677->g_252 p_677->g_199 p_677->g_396 p_677->g_400 p_677->g_217 p_677->g_448 p_677->g_465 p_677->g_481 p_677->g_491 p_677->g_494 p_677->g_508 p_677->g_280 p_677->g_281 p_677->g_118 p_677->g_566 p_677->g_186 p_677->g_576 p_677->g_583 p_677->g_614 p_677->g_250 p_677->g_620 p_677->g_626 p_677->g_628 p_677->g_629 p_677->g_632 p_677->g_282 p_677->g_182 p_677->g_664 p_677->g_667 p_677->g_676
 * writes: p_677->g_20 p_677->g_22 p_677->g_42 p_677->g_52 p_677->g_55 p_677->g_114 p_677->g_118 p_677->g_160 p_677->g_182 p_677->g_183 p_677->g_184 p_677->g_198 p_677->g_209 p_677->g_216 p_677->g_217 p_677->g_240 p_677->g_56 p_677->g_80 p_677->g_465 p_677->g_186 p_677->g_511 p_677->g_281 p_677->g_244 p_677->g_629 p_677->g_660 p_677->g_661 p_677->g_664 p_677->g_667
 */
struct S0  func_1(struct S1 * p_677)
{ /* block id: 4 */
    VECTOR(int8_t, 4) l_2 = (VECTOR(int8_t, 4))(0x2DL, (VECTOR(int8_t, 2))(0x2DL, 1L), 1L);
    VECTOR(int8_t, 16) l_6 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x3EL), 0x3EL), 0x3EL, (-1L), 0x3EL, (VECTOR(int8_t, 2))((-1L), 0x3EL), (VECTOR(int8_t, 2))((-1L), 0x3EL), (-1L), 0x3EL, (-1L), 0x3EL);
    int32_t *l_19 = &p_677->g_20;
    int32_t l_665 = 0x736D5A99L;
    int32_t *l_666 = &p_677->g_667;
    int32_t *l_668 = (void*)0;
    int32_t *l_669 = &p_677->g_566;
    int32_t *l_670[3][8] = {{(void*)0,&p_677->g_42,(void*)0,(void*)0,&p_677->g_42,(void*)0,(void*)0,&p_677->g_42},{(void*)0,&p_677->g_42,(void*)0,(void*)0,&p_677->g_42,(void*)0,(void*)0,&p_677->g_42},{(void*)0,&p_677->g_42,(void*)0,(void*)0,&p_677->g_42,(void*)0,(void*)0,&p_677->g_42}};
    uint32_t l_671 = 0UL;
    int32_t **l_674 = &l_669;
    VECTOR(uint64_t, 16) l_675 = (VECTOR(uint64_t, 16))(5UL, (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 0xFF915938A0B9A60EL), 0xFF915938A0B9A60EL), 0xFF915938A0B9A60EL, 5UL, 0xFF915938A0B9A60EL, (VECTOR(uint64_t, 2))(5UL, 0xFF915938A0B9A60EL), (VECTOR(uint64_t, 2))(5UL, 0xFF915938A0B9A60EL), 5UL, 0xFF915938A0B9A60EL, 5UL, 0xFF915938A0B9A60EL);
    int i, j;
    (*l_666) ^= ((((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(l_2.zzyyzyzz)) && ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(0x0EL, ((VECTOR(int8_t, 4))(p_677->g_3.s38e4)), 0x2EL, ((VECTOR(int8_t, 4))(p_677->g_4.xxyx)), ((VECTOR(int8_t, 4))(p_677->g_5.xxyy)), (-10L), 0x49L)).lo && ((VECTOR(int8_t, 2))(0x47L, (-1L))).yxyxxxxx)))))).s7426607511725537, ((VECTOR(int8_t, 2))(l_6.se6)).yxxxyyyyxxxxyyxy))).sb < (safe_add_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s(p_677->g_5.y, ((l_665 ^= (safe_div_func_int64_t_s_s((safe_mod_func_int64_t_s_s(func_15(p_677->g_5.x, p_677->g_4.x, ((*l_19) &= 0x5F47F28AL), p_677), func_23(p_677->g_4.y, (l_2.z || (safe_mod_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((((safe_lshift_func_int8_t_s_s(0x34L, 7)) > func_32(l_19, p_677->g_5.x, p_677)) , p_677->g_252.y) , 0x1427AEC10AEBABE2L), 4UL)), l_2.z))), p_677))), p_677->g_336.s1))) < 0x2FL))), l_6.s2))) <= 0x0F0A059EL);
    l_671--;
    (*l_674) = (void*)0;
    (*l_674) = (((VECTOR(uint64_t, 8))(l_675.s1e8b9a30)).s4 , (*l_674));
    return p_677->g_676;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_4
 * writes: p_677->g_22
 */
int64_t  func_15(uint32_t  p_16, uint32_t  p_17, int32_t  p_18, struct S1 * p_677)
{ /* block id: 6 */
    int32_t *l_21[5][7] = {{&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22},{&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22},{&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22},{&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22},{&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22,&p_677->g_22}};
    int i, j;
    p_677->g_22 = 0x3B1E5DE2L;
    return p_677->g_4.x;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_23(int32_t  p_24, uint32_t  p_25, struct S1 * p_677)
{ /* block id: 209 */
    return p_24;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_5 p_677->g_52 p_677->g_55 p_677->g_80 p_677->g_56 p_677->g_42 p_677->g_4 p_677->g_114 p_677->g_160 p_677->g_190 p_677->g_209 p_677->g_216 p_677->g_184 p_677->g_185 p_677->g_240 p_677->g_207 p_677->g_336 p_677->g_365 p_677->g_368 p_677->g_386 p_677->g_183 p_677->g_252 p_677->g_199 p_677->g_396 p_677->g_400 p_677->g_217 p_677->g_448 p_677->g_465 p_677->g_481 p_677->g_491 p_677->g_494 p_677->g_508 p_677->g_280 p_677->g_281 p_677->g_118 p_677->g_566 p_677->g_186 p_677->g_576 p_677->g_583 p_677->g_614 p_677->g_250 p_677->g_620 p_677->g_626 p_677->g_628 p_677->g_629 p_677->g_632 p_677->g_282 p_677->g_182 p_677->g_664
 * writes: p_677->g_42 p_677->g_52 p_677->g_55 p_677->g_114 p_677->g_118 p_677->g_160 p_677->g_182 p_677->g_183 p_677->g_184 p_677->g_198 p_677->g_209 p_677->g_216 p_677->g_217 p_677->g_240 p_677->g_56 p_677->g_80 p_677->g_465 p_677->g_186 p_677->g_511 p_677->g_281 p_677->g_244 p_677->g_629 p_677->g_660 p_677->g_661 p_677->g_664
 */
int64_t  func_32(int32_t * p_33, uint64_t  p_34, struct S1 * p_677)
{ /* block id: 9 */
    int32_t *l_41 = &p_677->g_42;
    uint16_t *l_51 = &p_677->g_52[1];
    int32_t **l_57[4][4] = {{&p_677->g_55[0][9],&l_41,&p_677->g_55[0][9],&p_677->g_55[0][9]},{&p_677->g_55[0][9],&l_41,&p_677->g_55[0][9],&p_677->g_55[0][9]},{&p_677->g_55[0][9],&l_41,&p_677->g_55[0][9],&p_677->g_55[0][9]},{&p_677->g_55[0][9],&l_41,&p_677->g_55[0][9],&p_677->g_55[0][9]}};
    VECTOR(int8_t, 8) l_600 = (VECTOR(int8_t, 8))(0x1DL, (VECTOR(int8_t, 4))(0x1DL, (VECTOR(int8_t, 2))(0x1DL, 0x17L), 0x17L), 0x17L, 0x1DL, 0x17L);
    VECTOR(uint16_t, 8) l_611 = (VECTOR(uint16_t, 8))(0x635CL, (VECTOR(uint16_t, 4))(0x635CL, (VECTOR(uint16_t, 2))(0x635CL, 0xF536L), 0xF536L), 0xF536L, 0x635CL, 0xF536L);
    VECTOR(uint16_t, 16) l_617 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x311CL), 0x311CL), 0x311CL, 1UL, 0x311CL, (VECTOR(uint16_t, 2))(1UL, 0x311CL), (VECTOR(uint16_t, 2))(1UL, 0x311CL), 1UL, 0x311CL, 1UL, 0x311CL);
    VECTOR(int8_t, 2) l_625 = (VECTOR(int8_t, 2))(0x36L, 0x44L);
    VECTOR(int8_t, 2) l_627 = (VECTOR(int8_t, 2))(0L, 0x00L);
    int8_t *l_634 = (void*)0;
    int8_t *l_635 = (void*)0;
    int8_t *l_636 = (void*)0;
    int8_t *l_637 = (void*)0;
    int8_t *l_638 = (void*)0;
    int8_t *l_639[7][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint8_t l_640 = 0x02L;
    uint32_t l_641 = 0xF5114BE8L;
    int16_t l_642 = 0L;
    uint8_t l_643 = 0x0EL;
    VECTOR(int32_t, 4) l_644 = (VECTOR(int32_t, 4))(0x78109E38L, (VECTOR(int32_t, 2))(0x78109E38L, 7L), 7L);
    int32_t *l_659 = &p_677->g_660;
    uint64_t *l_662 = &p_677->g_182;
    int32_t l_663 = (-6L);
    int i, j;
    p_677->g_55[0][0] = func_35(l_41, p_33, (func_43(((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(0x5BD5L, 1)), FAKE_DIVERGE(p_677->local_1_offset, get_local_id(1), 10))) , (!(((*l_41) = p_677->g_5.x) == ((--(*l_51)) != (0x07ECB515FE49BA5CL < 0x6821D2A6A8E49ED2L))))), (p_677->g_55[0][8] = p_677->g_55[0][9]), l_41, p_677) , p_34), (*p_677->g_280), l_41, p_677);
    l_643 = (safe_sub_func_int16_t_s_s(((safe_div_func_uint16_t_u_u((((VECTOR(int8_t, 8))(0x02L, 0L, ((VECTOR(int8_t, 4))(l_600.s6201)), 0x11L, 1L)).s1 < (safe_mul_func_int8_t_s_s((safe_mod_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_u(((safe_div_func_int64_t_s_s((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(l_611.s67031003)) + ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(1UL, 8UL, ((VECTOR(uint16_t, 2))(p_677->g_614.yw)), p_677->g_250.s4, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(((*l_51) = 65532UL), 0xFA25L, ((VECTOR(uint16_t, 2))(l_617.s22)), ((((safe_add_func_int32_t_s_s((((VECTOR(uint16_t, 16))(p_677->g_620.xyyxyyxxyxyxyxxx)).se | 0x2062L), (((((*l_41) = (((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(l_625.yxyy)).hi & ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(p_677->g_626.xyyx)), ((VECTOR(int8_t, 4))(l_627.yxyy))))).zyyywzyyyzyxxzwx == ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(p_677->g_628.wzxzwwzz)).s07 && ((VECTOR(int8_t, 4))(p_677->g_629.s7764)).lo))), 0x0BL, 0x2BL)) || ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))((p_677->g_629.s3 |= (((*p_677->g_280) = (*p_677->g_280)) == ((((1UL != (((&l_51 == p_677->g_632[0]) & p_677->g_336.se) < (p_677->g_244.s6 = (p_34 == p_34)))) == p_34) && p_34) , (void*)0))), ((VECTOR(int8_t, 8))(0x6EL)), ((VECTOR(int8_t, 4))(0x1FL)), (-1L), 1L, (-1L))).lo, ((VECTOR(int8_t, 8))((-3L)))))).odd))).ywyzyywxyxyzxwxw))).lo, ((VECTOR(int8_t, 8))(6L))))).s36))).lo, p_677->g_400.s1)), ((VECTOR(uint8_t, 8))(246UL)), GROUP_DIVERGE(1, 1), 0x90L, ((VECTOR(uint8_t, 4))(0x42L)), 255UL)).s6, p_677->g_80.y)) == (-1L)) && p_34)) || GROUP_DIVERGE(0, 1)) >= l_640) >= p_34))) >= 8L) & 0x4B69AE1EEC80C70BL) , l_641), 0x3D97L, 1UL, 65535UL)).s74 * ((VECTOR(uint16_t, 2))(65535UL))))), 0xB8E7L)).s5747001770500200 + ((VECTOR(uint16_t, 16))(1UL))))).lo))).s1 | p_34), p_677->g_282[5][7])) , 0UL), 2)) == (*p_677->g_216)), 4L)), (*p_677->g_216)))), p_677->g_56[3][6][3])) <= (-1L)), l_642));
    p_677->g_664 |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_644.xwwzwyzw)), ((VECTOR(int32_t, 8))((safe_add_func_uint8_t_u_u(1UL, ((safe_add_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((p_33 != &p_677->g_566) >= (safe_add_func_uint32_t_u_u(((((((*l_662) |= ((p_34 && (safe_mul_func_int8_t_s_s(((p_677->g_661 = ((*l_659) = (((((*p_677->g_216) = p_34) >= (safe_mul_func_uint16_t_u_u((p_34 >= 0x2B8BD406L), (&p_677->g_633[3] != (void*)0)))) & p_34) >= 0x17L))) , p_677->g_42), (*l_41)))) > (*l_41))) <= p_34) & l_663) | p_677->g_628.x) ^ p_34), 0x7C0B0AECL))), p_34)), p_677->g_52[1])), (*p_677->g_184))) != p_34))), ((VECTOR(int32_t, 2))(0x51DC3371L)), ((VECTOR(int32_t, 4))(6L)), (-3L))).s7, 0x7E0983F3L, ((VECTOR(int32_t, 4))(0x2BF41F95L)), 0x48C2DE79L, (-1L))).s1;
    p_677->g_55[0][8] = (void*)0;
    return p_677->g_114;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_42 p_677->g_56 p_677->g_216 p_677->g_217 p_677->g_118 p_677->g_566 p_677->g_186 p_677->g_252 p_677->g_576 p_677->g_160 p_677->g_583
 * writes: p_677->g_160 p_677->g_42 p_677->g_511 p_677->g_56
 */
int32_t * func_35(int32_t * p_36, int32_t * p_37, int32_t  p_38, int32_t * p_39, int32_t * p_40, struct S1 * p_677)
{ /* block id: 181 */
    int64_t l_516 = (-1L);
    int16_t *l_517 = &p_677->g_114;
    int32_t l_518 = 0x49801F64L;
    VECTOR(uint64_t, 16) l_520 = (VECTOR(uint64_t, 16))(0x465805C9840B2843L, (VECTOR(uint64_t, 4))(0x465805C9840B2843L, (VECTOR(uint64_t, 2))(0x465805C9840B2843L, 0xD53912907E46EC89L), 0xD53912907E46EC89L), 0xD53912907E46EC89L, 0x465805C9840B2843L, 0xD53912907E46EC89L, (VECTOR(uint64_t, 2))(0x465805C9840B2843L, 0xD53912907E46EC89L), (VECTOR(uint64_t, 2))(0x465805C9840B2843L, 0xD53912907E46EC89L), 0x465805C9840B2843L, 0xD53912907E46EC89L, 0x465805C9840B2843L, 0xD53912907E46EC89L);
    VECTOR(uint64_t, 8) l_521 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xA0EE0C0F158596DFL), 0xA0EE0C0F158596DFL), 0xA0EE0C0F158596DFL, 1UL, 0xA0EE0C0F158596DFL);
    int16_t l_526 = 4L;
    uint32_t *l_527 = (void*)0;
    uint32_t *l_528 = (void*)0;
    uint32_t *l_529 = (void*)0;
    uint32_t *l_530 = (void*)0;
    uint32_t *l_531 = (void*)0;
    uint32_t *l_532 = (void*)0;
    uint32_t *l_533 = &p_677->g_160;
    VECTOR(uint16_t, 2) l_573 = (VECTOR(uint16_t, 2))(4UL, 0xA0E3L);
    VECTOR(int16_t, 16) l_574 = (VECTOR(int16_t, 16))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x1025L), 0x1025L), 0x1025L, (-5L), 0x1025L, (VECTOR(int16_t, 2))((-5L), 0x1025L), (VECTOR(int16_t, 2))((-5L), 0x1025L), (-5L), 0x1025L, (-5L), 0x1025L);
    VECTOR(int16_t, 16) l_575 = (VECTOR(int16_t, 16))(0x6621L, (VECTOR(int16_t, 4))(0x6621L, (VECTOR(int16_t, 2))(0x6621L, 5L), 5L), 5L, 0x6621L, 5L, (VECTOR(int16_t, 2))(0x6621L, 5L), (VECTOR(int16_t, 2))(0x6621L, 5L), 0x6621L, 5L, 0x6621L, 5L);
    VECTOR(int32_t, 8) l_584 = (VECTOR(int32_t, 8))(0x1786FA99L, (VECTOR(int32_t, 4))(0x1786FA99L, (VECTOR(int32_t, 2))(0x1786FA99L, 1L), 1L), 1L, 0x1786FA99L, 1L);
    VECTOR(uint64_t, 4) l_591 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 2UL), 2UL);
    VECTOR(int64_t, 8) l_592 = (VECTOR(int64_t, 8))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, (-5L)), (-5L)), (-5L), 4L, (-5L));
    int32_t *l_595[6][6][5] = {{{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]}},{{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]}},{{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]}},{{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]}},{{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]}},{{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]},{&l_518,&p_677->g_448[3],(void*)0,&p_677->g_56[6][2][0],&p_677->g_448[3]}}};
    int i, j, k;
    (*p_36) = ((safe_lshift_func_int8_t_s_u(((l_518 = ((l_516 , (((void*)0 != l_517) , 0UL)) , (!l_516))) >= ((*l_533) = ((safe_unary_minus_func_int32_t_s((l_516 & ((+(p_38 > (l_516 , ((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 2))(l_520.sa9)).xxyxxyyyyxxyxxyy, ((VECTOR(uint64_t, 4))((+((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),VECTOR(uint64_t, 16),((VECTOR(uint64_t, 2))(0x2C12C3464EA14EB0L, 0UL)).xyxyxyxxyxxyxyyx, ((VECTOR(uint64_t, 4))(l_521.s0054)).wwzyzxywyyxwywxx, ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(18446744073709551612UL, 0xA4FD427ED02D1DEDL, p_38, p_38, ((VECTOR(uint64_t, 2))(0xDD50E06EF1143C0FL)), 0x22CBBFEC5FD45EF1L, 18446744073709551608UL)).lo << ((VECTOR(uint64_t, 4))(0x0CE963ABA294FC97L))))).xzxxwxyz + ((VECTOR(uint64_t, 8))(0x796DBEAF439F02FFL))))).s7767043066637307))).s4f7e))).xzywxwwwywyyzxwz))).s1))) < 3L)))) , l_526))), 7)) == 0L);
    for (l_518 = 0; (l_518 < 0); l_518++)
    { /* block id: 187 */
        int32_t *l_536 = &p_677->g_42;
        VECTOR(int64_t, 16) l_541 = (VECTOR(int64_t, 16))(0x36003D9B7E41842DL, (VECTOR(int64_t, 4))(0x36003D9B7E41842DL, (VECTOR(int64_t, 2))(0x36003D9B7E41842DL, 0x2175C21F9030F1B9L), 0x2175C21F9030F1B9L), 0x2175C21F9030F1B9L, 0x36003D9B7E41842DL, 0x2175C21F9030F1B9L, (VECTOR(int64_t, 2))(0x36003D9B7E41842DL, 0x2175C21F9030F1B9L), (VECTOR(int64_t, 2))(0x36003D9B7E41842DL, 0x2175C21F9030F1B9L), 0x36003D9B7E41842DL, 0x2175C21F9030F1B9L, 0x36003D9B7E41842DL, 0x2175C21F9030F1B9L);
        int8_t l_554[7][6] = {{0x1BL,1L,0x4EL,(-8L),1L,(-8L)},{0x1BL,1L,0x4EL,(-8L),1L,(-8L)},{0x1BL,1L,0x4EL,(-8L),1L,(-8L)},{0x1BL,1L,0x4EL,(-8L),1L,(-8L)},{0x1BL,1L,0x4EL,(-8L),1L,(-8L)},{0x1BL,1L,0x4EL,(-8L),1L,(-8L)},{0x1BL,1L,0x4EL,(-8L),1L,(-8L)}};
        int64_t *l_557 = &p_677->g_511;
        int i, j;
        (*p_36) &= (GROUP_DIVERGE(2, 1) <= 0L);
        l_536 = &p_677->g_56[6][7][2];
        (*l_536) = (safe_rshift_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 16))(l_541.sb9f177f5bf3cff36)).sf, (safe_add_func_int32_t_s_s((safe_div_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s(((0x26A4843E4A2929F0L & (safe_mul_func_int16_t_s_s(p_38, (safe_lshift_func_uint8_t_u_s((0xCBCF5E4404B32EC6L || ((safe_add_func_uint32_t_u_u((*l_536), (l_554[3][4] || ((VECTOR(int8_t, 4))(0x6EL, 0L, 0L, 0x17L)).y))) < ((safe_mul_func_int8_t_s_s((((*l_536) <= ((*l_557) = p_38)) ^ ((safe_add_func_uint32_t_u_u((((safe_lshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((-9L), ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 8))(0L, (safe_mul_func_int8_t_s_s(0x73L, p_38)), ((VECTOR(int16_t, 4))(0x63F8L)), 0x4761L, 0x6AADL)).lo, ((VECTOR(int16_t, 4))(0L))))).y)), l_516)) & (*l_536)) < (*l_536)), p_38)) != (*l_536))), (*p_677->g_216))) & 0L))), p_677->g_118))))) ^ p_677->g_566), 0xB3L)) != 1L), p_677->g_186.x)), p_677->g_252.y)))), 0));
    }
    (*p_36) = (safe_lshift_func_int8_t_s_u((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(65535UL, 8UL)).xyyyxyxyxyyxyxyy + ((VECTOR(uint16_t, 2))(l_573.yx)).yxxyyxxxyxyxyyyx))).s4d, ((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_574.sddd8efeb)).s46 && ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(l_575.s56)).yyxxyyxx, ((VECTOR(int16_t, 8))(p_677->g_576.s77636162))))), 0x17C0L, (safe_div_func_int64_t_s_s((-6L), ((safe_mod_func_int16_t_s_s(l_573.x, p_677->g_160)) && (safe_div_func_uint32_t_u_u(p_38, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(p_677->g_583.s73337433)).s51, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(8L, 0x51A29DD8L, 0x075CB618L, 0x57EE9D76L)), ((VECTOR(int32_t, 4))(l_584.s3302))))).xwyzwyxw && ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(0x46F590D3L, l_575.s2, (((safe_add_func_uint8_t_u_u((((safe_add_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 16))(l_591.zxzwxzyywxzzxxyx)).s5c98, ((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 2))(0xE80DA4FB0F5D1321L, 18446744073709551610UL)).xyxyyxyy, ((VECTOR(uint64_t, 2))(0UL, 0x1746E6793DCA8D88L)).yxxxyxyx, ((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 4))(l_592.s3004)).zxzwxxxwwzwxyyyw, ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))((((((safe_add_func_int32_t_s_s((*p_36), (p_38 ^ (FAKE_DIVERGE(p_677->local_1_offset, get_local_id(1), 10) >= (1UL & l_518))))) || 0UL) >= p_677->g_252.x) , l_520.sb) , 0L), ((VECTOR(int32_t, 2))(0x2E559FD5L)), ((VECTOR(int32_t, 4))(0x30E31E49L)), 0x67A2F5B9L)), ((VECTOR(int32_t, 8))((-4L))), ((VECTOR(int32_t, 8))(1L))))).s4740763547267044 && ((VECTOR(int32_t, 16))(0x4734BF0FL))))).lo <= ((VECTOR(int32_t, 8))(0L))))), ((VECTOR(uint32_t, 8))(0UL))))).s70 < ((VECTOR(int64_t, 2))(1L))))).yxyyyyxyxxyyyxyy))).even ^ ((VECTOR(int64_t, 8))(0L))))) && ((VECTOR(int64_t, 8))((-1L)))))).s7375277614473263))).odd, ((VECTOR(int64_t, 8))(0x358F9140F105CA04L))))).s73, ((VECTOR(int64_t, 2))(0x1D22D2B0CE53283FL))))).xyxxyyyy))).odd, ((VECTOR(uint64_t, 4))(0x6E8C62A11775873DL))))).xxyywyzywwywxzwz, ((VECTOR(uint64_t, 16))(18446744073709551611UL))))).sa > (-1L)), l_584.s6)), p_38)) < 1UL) != 1L), GROUP_DIVERGE(0, 1))) >= GROUP_DIVERGE(0, 1)) , (*p_36)), 0x62B45F76L, 0x0BB09E18L, l_575.s3, 6L, ((VECTOR(int32_t, 2))(0x4FFBB99CL)), 1L, ((VECTOR(int32_t, 4))(0x537C1B17L)), 0x7AB54662L, 0x52270152L)).sb2a9 && ((VECTOR(int32_t, 4))(0x45046827L))))).yxxxyzww && ((VECTOR(int32_t, 8))(9L)))))))) & ((VECTOR(int32_t, 8))(6L))))).s00))).xxyxxyxy ^ ((VECTOR(int32_t, 8))(7L))))).s2413712142762333 ^ ((VECTOR(int32_t, 16))((-1L)))))).sad, ((VECTOR(int32_t, 2))(0x6C1B199BL))))).xxxy & ((VECTOR(int32_t, 4))(6L))))).y))))), ((VECTOR(int16_t, 2))(0L)), p_38, p_38, (-1L), 0x0205L)).sb3, (int16_t)0x3692L)))))), ((VECTOR(int16_t, 2))(0x0584L))))).xxyy))).hi))).yxyxyyyyyxxxxxxx + ((VECTOR(uint32_t, 16))(0x434E0C38L))))).s7 , l_573.y), p_38));
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_55 p_677->g_80 p_677->g_52 p_677->g_56 p_677->g_42 p_677->g_4 p_677->g_114 p_677->g_5 p_677->g_160 p_677->g_190 p_677->g_209 p_677->g_216 p_677->g_184 p_677->g_185 p_677->g_240 p_677->g_207 p_677->g_336 p_677->g_365 p_677->g_368 p_677->g_386 p_677->g_183 p_677->g_252 p_677->g_199 p_677->g_396 p_677->g_400 p_677->g_217 p_677->g_448 p_677->g_465 p_677->g_481 p_677->g_491 p_677->g_494 p_677->g_508 p_677->g_280 p_677->g_281
 * writes: p_677->g_55 p_677->g_42 p_677->g_114 p_677->g_118 p_677->g_160 p_677->g_182 p_677->g_183 p_677->g_184 p_677->g_198 p_677->g_209 p_677->g_216 p_677->g_217 p_677->g_240 p_677->g_56 p_677->g_52 p_677->g_80 p_677->g_465 p_677->g_186
 */
uint32_t  func_43(int32_t  p_44, int32_t * p_45, int32_t * p_46, struct S1 * p_677)
{ /* block id: 13 */
    VECTOR(int32_t, 4) l_60 = (VECTOR(int32_t, 4))(0x4B6D8D46L, (VECTOR(int32_t, 2))(0x4B6D8D46L, 0L), 0L);
    int16_t l_314 = 0x6FD9L;
    uint32_t *l_315 = (void*)0;
    uint32_t *l_316 = (void*)0;
    uint32_t *l_317 = (void*)0;
    uint32_t *l_318 = (void*)0;
    uint32_t *l_319 = (void*)0;
    uint32_t *l_320 = (void*)0;
    uint32_t *l_321 = (void*)0;
    uint32_t *l_322 = (void*)0;
    int32_t l_333 = 0L;
    int64_t l_392 = (-1L);
    int i;
    (*p_45) = func_58((((VECTOR(int32_t, 2))(l_60.yz)).lo , func_61(func_67(((safe_rshift_func_int16_t_s_s(func_73(p_677->g_55[0][9], p_677), 7)) | (safe_sub_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s((safe_div_func_int32_t_s_s(l_314, (--p_677->g_240.sf))), 3)), (safe_sub_func_int8_t_s_s(((l_314 == (p_44 || ((safe_lshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s((p_44 & 0x790ABBC545F15F88L), l_314)), ((safe_lshift_func_int16_t_s_u((l_60.z , 2L), 5)) != l_314))) , p_677->g_207.s7))) , l_333), 0x21L))))), l_333, p_44, p_677), l_333, l_392, p_44, p_677->g_199[4][7], p_677)), p_677);
    return l_392;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_183 p_677->g_448 p_677->g_56
 * writes: p_677->g_55
 */
int32_t  func_58(int32_t * p_59, struct S1 * p_677)
{ /* block id: 176 */
    int32_t **l_513 = &p_677->g_55[0][9];
    (*l_513) = &p_677->g_448[3];
    return (*p_59);
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_396 p_677->g_365 p_677->g_400 p_677->g_216 p_677->g_336 p_677->g_252 p_677->g_56 p_677->g_209 p_677->g_217 p_677->g_448 p_677->g_160 p_677->g_80 p_677->g_42 p_677->g_465 p_677->g_481 p_677->g_491 p_677->g_494 p_677->g_508 p_677->g_280 p_677->g_281 p_677->g_4
 * writes: p_677->g_56 p_677->g_209 p_677->g_182 p_677->g_118 p_677->g_217 p_677->g_80 p_677->g_55 p_677->g_465 p_677->g_42 p_677->g_186
 */
int32_t * func_61(uint16_t * p_62, int16_t  p_63, int32_t  p_64, int32_t  p_65, uint16_t * p_66, struct S1 * p_677)
{ /* block id: 125 */
    VECTOR(uint32_t, 16) l_395 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xC752FDA7L), 0xC752FDA7L), 0xC752FDA7L, 0UL, 0xC752FDA7L, (VECTOR(uint32_t, 2))(0UL, 0xC752FDA7L), (VECTOR(uint32_t, 2))(0UL, 0xC752FDA7L), 0UL, 0xC752FDA7L, 0UL, 0xC752FDA7L);
    VECTOR(uint16_t, 2) l_397 = (VECTOR(uint16_t, 2))(0UL, 0xB805L);
    VECTOR(uint16_t, 4) l_401 = (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 1UL), 1UL);
    uint64_t l_402[8][5] = {{0xB59A0DB90EE1C98BL,0xEDD95F2A7AFCCBE6L,0x60FDFB2788FA2269L,18446744073709551613UL,0x592F9006B69A736BL},{0xB59A0DB90EE1C98BL,0xEDD95F2A7AFCCBE6L,0x60FDFB2788FA2269L,18446744073709551613UL,0x592F9006B69A736BL},{0xB59A0DB90EE1C98BL,0xEDD95F2A7AFCCBE6L,0x60FDFB2788FA2269L,18446744073709551613UL,0x592F9006B69A736BL},{0xB59A0DB90EE1C98BL,0xEDD95F2A7AFCCBE6L,0x60FDFB2788FA2269L,18446744073709551613UL,0x592F9006B69A736BL},{0xB59A0DB90EE1C98BL,0xEDD95F2A7AFCCBE6L,0x60FDFB2788FA2269L,18446744073709551613UL,0x592F9006B69A736BL},{0xB59A0DB90EE1C98BL,0xEDD95F2A7AFCCBE6L,0x60FDFB2788FA2269L,18446744073709551613UL,0x592F9006B69A736BL},{0xB59A0DB90EE1C98BL,0xEDD95F2A7AFCCBE6L,0x60FDFB2788FA2269L,18446744073709551613UL,0x592F9006B69A736BL},{0xB59A0DB90EE1C98BL,0xEDD95F2A7AFCCBE6L,0x60FDFB2788FA2269L,18446744073709551613UL,0x592F9006B69A736BL}};
    int32_t *l_403 = &p_677->g_56[5][7][3];
    int32_t *l_404 = &p_677->g_56[3][6][3];
    int32_t *l_405 = (void*)0;
    uint16_t l_406[1];
    int32_t l_447[7][6][6] = {{{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L}},{{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L}},{{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L}},{{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L}},{{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L}},{{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L}},{{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L},{(-9L),0x6B0F7E47L,(-4L),8L,1L,1L}}};
    int8_t *l_454[8][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t *l_456 = &p_677->g_56[0][5][3];
    uint16_t l_460 = 65535UL;
    uint32_t *l_506 = (void*)0;
    int32_t **l_509 = &p_677->g_281[2][2];
    int64_t *l_510[7] = {&p_677->g_511,&p_677->g_511,&p_677->g_511,&p_677->g_511,&p_677->g_511,&p_677->g_511,&p_677->g_511};
    int32_t *l_512 = &p_677->g_56[3][6][3];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_406[i] = 0x9B8AL;
    (*l_403) |= (((((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 2))(0UL, 1UL)).xxyxyxyyxyxyxyyy, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))(l_395.s4a401a8d)).s06, ((VECTOR(uint32_t, 8))(p_677->g_396.s47bfff46)).s52, ((VECTOR(uint32_t, 2))(4294967295UL, 0x2E526395L))))), (!p_677->g_365.s2), 8UL, ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 8))(l_397.yyyxxxxx)).s66, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 4))(p_677->g_400.s0a93)).even, ((VECTOR(uint16_t, 8))(1UL, ((&p_677->g_217 == &p_677->g_217) || ((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_401.wy)).lo, (GROUP_DIVERGE(1, 1) <= (((p_677->g_216 != (((void*)0 != &p_677->g_114) , p_677->g_216)) , l_395.sb) & p_677->g_336.s3)), 1UL, 0xC078L)).y , 0x73FE1AAD8187688DL) && p_677->g_400.sc)), 0UL, ((VECTOR(uint16_t, 4))(0xFB3EL)), 0xF4BEL)).s70))).xxxy))).wyxzzxxz + ((VECTOR(uint16_t, 8))(65526UL))))).s21, ((VECTOR(uint16_t, 2))(65534UL))))), ((VECTOR(uint16_t, 2))(0x311BL))))), 4UL, l_397.y, 0x8DDFDF7DL, 4294967295UL, ((VECTOR(uint32_t, 2))(4294967295UL)), 1UL, 0x4B3024B0L, 0UL, 1UL))))).s5, 0x0D445506L)) <= p_677->g_252.y) < l_402[2][1]) == l_402[2][1]) | GROUP_DIVERGE(0, 1));
    l_406[0]--;
    for (p_677->g_209 = (-4); (p_677->g_209 == 24); p_677->g_209 = safe_add_func_uint16_t_u_u(p_677->g_209, 2))
    { /* block id: 130 */
        int32_t **l_415[6];
        uint32_t *l_440 = (void*)0;
        VECTOR(uint32_t, 2) l_442 = (VECTOR(uint32_t, 2))(1UL, 1UL);
        int8_t l_455 = 6L;
        int i;
        for (i = 0; i < 6; i++)
            l_415[i] = (void*)0;
        for (p_677->g_182 = 0; (p_677->g_182 >= 54); p_677->g_182++)
        { /* block id: 133 */
            int32_t l_422 = 0x3F90C78AL;
            int8_t *l_453[2][8][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int32_t *l_457 = &p_677->g_42;
            int32_t l_458[3];
            int64_t l_459 = 0x43D407A61CF32A44L;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_458[i] = 0x6870949DL;
            for (p_677->g_118 = (-5); (p_677->g_118 < 3); p_677->g_118 = safe_add_func_uint16_t_u_u(p_677->g_118, 4))
            { /* block id: 136 */
                int8_t *l_420 = (void*)0;
                int8_t *l_421 = (void*)0;
                (*l_404) ^= (p_65 = (((void*)0 == l_415[3]) < (safe_sub_func_uint8_t_u_u(((*p_677->g_216)++), (l_422 &= 6L)))));
                if ((*l_404))
                    break;
                if (p_65)
                    break;
            }
            if (p_65)
            { /* block id: 144 */
                int32_t l_423 = 1L;
                int32_t l_441[4];
                int16_t *l_443 = (void*)0;
                int16_t *l_444 = (void*)0;
                int16_t *l_445 = (void*)0;
                int16_t *l_446[1][6][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_441[i] = 1L;
                l_447[6][1][0] |= (l_423 || (safe_rshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(p_677->g_396.s7, ((safe_add_func_int8_t_s_s(p_64, ((l_441[1] = (((safe_lshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((*l_404) = 0x9ADAL), (l_423 = ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((*p_677->g_184) = l_422), ((((safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_63, ((safe_add_func_int16_t_s_s(l_423, ((0x07C65D41L <= l_423) , p_677->g_400.s8))) , (-6L)))), 7)) , p_64) , l_440) == (void*)0), 0x2A13L, 0x4A95L)), 8L, 0x2BC5L, ((VECTOR(int16_t, 4))(0x3E7CL)), ((VECTOR(int16_t, 4))(1L)), (-8L), 5L)).s1))), l_441[1])) , l_442.y) ^ 0x5045025F16BFE7A0L)) & p_63))) && p_65))), 6)));
            }
            else
            { /* block id: 150 */
                l_457 = (p_65 , (p_677->g_55[0][0] = (l_456 = ((p_677->g_448[3] , (safe_add_func_uint16_t_u_u(l_422, (((((((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))((-7L), 0x1AL)).hi, FAKE_DIVERGE(p_677->global_2_offset, get_global_id(2), 10))) & (p_677->g_80.y ^= (p_677->g_400.s8 > ((((l_453[1][5][3] == l_454[3][2]) , ((p_65 , &p_677->g_281[2][2]) == (void*)0)) | (-1L)) <= p_677->g_160)))) <= (*l_403)) <= p_65) || l_455) && (*p_677->g_216)) >= p_64)))) , &p_65))));
                return &p_677->g_448[5];
            }
            l_460++;
            for (p_64 = (-8); (p_64 <= 2); p_64 = safe_add_func_uint16_t_u_u(p_64, 3))
            { /* block id: 160 */
                uint8_t l_484 = 0xF2L;
                uint64_t l_502[2][2] = {{0UL,0UL},{0UL,0UL}};
                uint32_t *l_505[1];
                uint32_t **l_504 = &l_505[0];
                int i, j;
                for (i = 0; i < 1; i++)
                    l_505[i] = (void*)0;
                p_677->g_55[0][9] = (p_677->g_465 = &p_677->g_42);
                for (p_677->g_42 = (-10); (p_677->g_42 > (-11)); p_677->g_42 = safe_sub_func_int64_t_s_s(p_677->g_42, 4))
                { /* block id: 165 */
                    int32_t l_501[1][2][6] = {{{0x4B1F8E68L,(-1L),0x4B1F8E68L,0x4B1F8E68L,(-1L),0x4B1F8E68L},{0x4B1F8E68L,(-1L),0x4B1F8E68L,0x4B1F8E68L,(-1L),0x4B1F8E68L}}};
                    int32_t l_503 = 0x0C31BF1FL;
                    int i, j, k;
                    (*l_403) = (safe_unary_minus_func_int64_t_s((safe_mod_func_int8_t_s_s((safe_add_func_uint64_t_u_u((((0x4C81C1A3L > (0x4B9FC3C6L | (((safe_mul_func_int16_t_s_s(p_63, (safe_lshift_func_int16_t_s_s(1L, (safe_sub_func_int32_t_s_s((*p_677->g_465), (((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(0x4D0DE03BL, 0x99141D33L)).yxyyxyxy + ((VECTOR(uint32_t, 8))(p_677->g_481.sfe008601))))).s7 , (((safe_lshift_func_uint8_t_u_u((((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 16))(0UL, l_484, ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(1UL, 0xB4C78CAAB688F6A7L)).xxxyxyxx + ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(2UL, 0xA59EBC3FE0A5BC04L)) + ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(1UL, ((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 4))(p_677->g_491.sdc3d)).xxzyxxzwzzzxzyzz, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 2))(0x260DB3C57DD9DA68L, 0x4792B0CABAB31162L)).xxxxyxyy, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 2))(p_677->g_494.s60)).yxxxxyyx, (uint64_t)(safe_add_func_uint32_t_u_u(((p_677->g_186.x = (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), ((~(((safe_mul_func_int8_t_s_s((p_65 | ((l_501[0][0][0] & (&p_677->g_199[9][1] == (void*)0)) <= l_484)), l_502[0][0])) != 0L) >= 18446744073709551612UL)) & p_63)))) || 0x75L), p_65))))).odd >> ((VECTOR(uint64_t, 4))(1UL))))).yyywxxwz))).s20 ^ ((VECTOR(uint64_t, 2))(0xF5B6194547672C24L))))), ((VECTOR(uint64_t, 2))(0x9C6F439ABBEC89F6L))))), ((VECTOR(uint64_t, 2))(0x96056DA11AFA187BL)), 0x61896F860E5B62D3L, 0xDB1A81540891377FL, 18446744073709551608UL, 18446744073709551615UL)).s0132057166572577))).s5, (*l_456), (*l_404), l_503, 18446744073709551615UL, 6UL, GROUP_DIVERGE(0, 1), GROUP_DIVERGE(1, 1), 18446744073709551615UL, ((VECTOR(uint64_t, 4))(1UL)), 0UL, 0xB9133AEE47085771L)).sa7 >> ((VECTOR(uint64_t, 2))(64)))))))).xxyxyyyy))), ((VECTOR(uint64_t, 4))(0x1532D32FA2F7B4EBL)), 0xD01003F7AD8C42E7L, 18446744073709551607UL)).sf4, ((VECTOR(uint64_t, 2))(0xEB87C0876C362FF1L)), ((VECTOR(uint64_t, 2))(18446744073709551615UL))))).xyxxyxyy, ((VECTOR(uint64_t, 8))(8UL)), ((VECTOR(uint64_t, 8))(0x46AE8423A1D455B0L))))).s3 & l_502[0][0]), 1)) && (-6L)) , 4294967293UL)))))))) , l_501[0][0][0]) | p_64))) , l_504) == &p_677->g_387), l_502[0][1])), p_65))));
                    return &p_677->g_183;
                }
            }
        }
    }
    p_65 = ((((void*)0 == l_506) < (safe_unary_minus_func_int8_t_s(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 8))(p_677->g_508.wzxwzzzz)).s7605036053313124))).sf))) > ((l_509 != l_509) & ((((*l_456) = ((FAKE_DIVERGE(p_677->group_1_offset, get_group_id(1), 10) != ((*l_403) || GROUP_DIVERGE(2, 1))) , ((void*)0 != (*p_677->g_280)))) && p_677->g_4.y) , p_65)));
    return l_512;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_336 p_677->g_240 p_677->g_56 p_677->g_365 p_677->g_368 p_677->g_5 p_677->g_386 p_677->g_183 p_677->g_252 p_677->g_209
 * writes: p_677->g_183 p_677->g_182 p_677->g_56 p_677->g_52 p_677->g_80
 */
uint16_t * func_67(uint8_t  p_68, uint16_t  p_69, uint32_t  p_70, struct S1 * p_677)
{ /* block id: 114 */
    int8_t *l_337[7][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_338[3];
    int16_t l_341 = (-1L);
    VECTOR(int32_t, 4) l_346 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x422F030FL), 0x422F030FL);
    int32_t *l_347[5][5][4] = {{{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]}},{{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]}},{{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]}},{{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]}},{{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]},{&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5],&p_677->g_282[2][5]}}};
    int32_t *l_348 = (void*)0;
    int32_t *l_349 = (void*)0;
    int32_t *l_350 = &p_677->g_183;
    uint64_t *l_351 = &p_677->g_182;
    int32_t *l_352 = &p_677->g_56[3][8][0];
    uint16_t *l_358 = (void*)0;
    uint16_t *l_359 = &p_677->g_52[1];
    VECTOR(uint16_t, 4) l_362 = (VECTOR(uint16_t, 4))(0xBBD3L, (VECTOR(uint16_t, 2))(0xBBD3L, 65535UL), 65535UL);
    VECTOR(uint16_t, 4) l_371 = (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0UL), 0UL);
    int32_t **l_382 = &l_349;
    int32_t **l_383 = &l_350;
    int32_t l_389 = 0x7177C50CL;
    uint64_t l_390[4] = {4UL,4UL,4UL,4UL};
    uint16_t l_391 = 1UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_338[i] = 0x160C5FCFL;
    (*l_352) &= ((+(safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 4))(((p_69 > 0x671D42D4L) >= 0x39A1B0D1L), 255UL, 0UL, 0x21L)).xyzxyywwyyzzyxwy, ((VECTOR(uint8_t, 2))(p_677->g_336.s95)).yxyxyyxxxyxxxyyy))).sa, (l_338[1] |= p_677->g_336.sa)))) == ((*l_351) = (safe_lshift_func_int16_t_s_s((((1UL >= l_341) != ((safe_add_func_uint16_t_u_u(((~((VECTOR(uint32_t, 2))(0xF7187AC9L, 0xEF2D6EE9L)).odd) && (0x5109C56BL > ((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(0x420DF305L, 0L)).yyyxyyxy < ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(l_346.wz)).yxyy, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(0L, 0x6C042A84L, 3L, 1L, 0x3906D5BAL, ((*l_350) = ((void*)0 != l_347[1][4][2])), 0L, (-9L))).lo, ((VECTOR(int32_t, 4))(1L))))).lo & ((VECTOR(int32_t, 2))(0x0553D687L))))).yyyx, ((VECTOR(int32_t, 4))((-9L)))))), ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 4))(0x1635013CL))))).odd, ((VECTOR(int32_t, 2))(0x39C47091L)), ((VECTOR(int32_t, 2))(0x53D61BDEL))))).xyxxxyxy))).s4, p_677->g_240.sc)) <= 0UL))), p_69)) && p_68)) >= p_70), p_69))));
    (*l_352) = ((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(65533UL, 4UL, 0UL, ((*l_359) = ((safe_add_func_int32_t_s_s((safe_unary_minus_func_int32_t_s(p_69)), 0UL)) > 0L)), ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 4))(0x5907L, 5UL, 0xBFA0L, 7UL)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))((~((VECTOR(uint16_t, 16))(l_362.yxywyyxxyxwxzywz))))).sc898 + ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(p_677->g_365.s76)).yyyx + ((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(p_677->g_368.s14)).xxyxxyxx - ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(l_371.xwyw)).xzwzwwyx + ((VECTOR(uint16_t, 8))((safe_mod_func_int32_t_s_s((((safe_lshift_func_int8_t_s_s((~(p_677->g_80.y = p_677->g_365.s6)), (safe_div_func_int32_t_s_s((((7L && (((safe_rshift_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(((((*l_383) = ((*l_382) = &p_677->g_183)) == (void*)0) == (((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(0x780550AAL, ((p_70 == (safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_677->global_1_offset, get_global_id(1), 10), 3))) | ((p_677->g_5.x , (void*)0) == p_677->g_386[0])), ((VECTOR(uint32_t, 2))(5UL)), ((VECTOR(uint32_t, 4))(0x1F21340AL)))).hi ^ ((VECTOR(uint32_t, 4))(4UL))))), ((VECTOR(uint32_t, 4))(5UL))))).y > (*l_352))), 18446744073709551615UL)), 5)) , (**l_383)) >= 0x00E29BB1006A993EL)) , (*l_383)) == (void*)0), l_389)))) , 0x6D03L) || l_390[0]), 0x37B03BD7L)), ((VECTOR(uint16_t, 4))(0x3F00L)), ((VECTOR(uint16_t, 2))(65534UL)), 65526UL)))))))).s37, ((VECTOR(uint16_t, 2))(0x66EFL))))), 2UL, 0xF4B2L, 0UL, p_70, 0UL, 65530UL)), ((VECTOR(uint16_t, 8))(0xA5DEL))))).odd))), ((VECTOR(uint16_t, 4))(65535UL)))).even))), 0x4A6EL, (**l_383), p_677->g_56[3][6][3], l_391, p_677->g_252.y, ((VECTOR(uint16_t, 2))(0UL)), 65527UL, 65533UL, ((VECTOR(uint16_t, 2))(1UL)), 65535UL)).s29cc))))).s6, p_677->g_209)) ^ 0L);
    return &p_677->g_52[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_52 p_677->g_42 p_677->g_56 p_677->g_4 p_677->g_5 p_677->g_114 p_677->g_160 p_677->g_190 p_677->g_80 p_677->g_209 p_677->g_216 p_677->g_184 p_677->g_185 p_677->g_55
 * writes: p_677->g_42 p_677->g_118 p_677->g_114 p_677->g_55 p_677->g_160 p_677->g_182 p_677->g_183 p_677->g_184 p_677->g_198 p_677->g_209 p_677->g_216 p_677->g_217
 */
int16_t  func_73(int32_t * p_74, struct S1 * p_677)
{ /* block id: 14 */
    int64_t l_75 = 0x18D42F466F6A0F30L;
    VECTOR(int8_t, 16) l_78 = (VECTOR(int8_t, 16))(0x6FL, (VECTOR(int8_t, 4))(0x6FL, (VECTOR(int8_t, 2))(0x6FL, 0x1AL), 0x1AL), 0x1AL, 0x6FL, 0x1AL, (VECTOR(int8_t, 2))(0x6FL, 0x1AL), (VECTOR(int8_t, 2))(0x6FL, 0x1AL), 0x6FL, 0x1AL, 0x6FL, 0x1AL);
    VECTOR(int8_t, 8) l_79 = (VECTOR(int8_t, 8))(0x1EL, (VECTOR(int8_t, 4))(0x1EL, (VECTOR(int8_t, 2))(0x1EL, 0x27L), 0x27L), 0x27L, 0x1EL, 0x27L);
    VECTOR(int8_t, 16) l_81 = (VECTOR(int8_t, 16))(0x15L, (VECTOR(int8_t, 4))(0x15L, (VECTOR(int8_t, 2))(0x15L, (-9L)), (-9L)), (-9L), 0x15L, (-9L), (VECTOR(int8_t, 2))(0x15L, (-9L)), (VECTOR(int8_t, 2))(0x15L, (-9L)), 0x15L, (-9L), 0x15L, (-9L));
    int32_t **l_82 = &p_677->g_55[0][9];
    int32_t **l_85 = &p_677->g_55[0][9];
    VECTOR(int8_t, 2) l_88 = (VECTOR(int8_t, 2))(0x79L, 0x21L);
    uint16_t *l_90[5][5][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    uint16_t **l_89 = &l_90[1][1][0];
    uint16_t *l_91 = (void*)0;
    int32_t *l_92 = (void*)0;
    int32_t *l_93 = (void*)0;
    int32_t *l_94[9][1] = {{&p_677->g_56[3][6][3]},{&p_677->g_56[3][6][3]},{&p_677->g_56[3][6][3]},{&p_677->g_56[3][6][3]},{&p_677->g_56[3][6][3]},{&p_677->g_56[3][6][3]},{&p_677->g_56[3][6][3]},{&p_677->g_56[3][6][3]},{&p_677->g_56[3][6][3]}};
    VECTOR(uint8_t, 8) l_101 = (VECTOR(uint8_t, 8))(0x6BL, (VECTOR(uint8_t, 4))(0x6BL, (VECTOR(uint8_t, 2))(0x6BL, 0xB2L), 0xB2L), 0xB2L, 0x6BL, 0xB2L);
    int64_t l_104 = 0x37399A04901E3F2BL;
    uint32_t l_111 = 0x966A8FC2L;
    uint8_t l_112 = 0xF9L;
    int16_t *l_113[9] = {&p_677->g_114,&p_677->g_114,&p_677->g_114,&p_677->g_114,&p_677->g_114,&p_677->g_114,&p_677->g_114,&p_677->g_114,&p_677->g_114};
    uint32_t l_115 = 1UL;
    int16_t l_116 = 0x2501L;
    uint32_t *l_117 = &p_677->g_118;
    int32_t l_119[1];
    int32_t l_120 = 1L;
    uint16_t l_121[2];
    VECTOR(uint16_t, 8) l_132 = (VECTOR(uint16_t, 8))(0xA04FL, (VECTOR(uint16_t, 4))(0xA04FL, (VECTOR(uint16_t, 2))(0xA04FL, 0xB098L), 0xB098L), 0xB098L, 0xA04FL, 0xB098L);
    VECTOR(uint16_t, 16) l_133 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x6977L), 0x6977L), 0x6977L, 0UL, 0x6977L, (VECTOR(uint16_t, 2))(0UL, 0x6977L), (VECTOR(uint16_t, 2))(0UL, 0x6977L), 0UL, 0x6977L, 0UL, 0x6977L);
    uint8_t *l_215 = (void*)0;
    uint8_t *l_218 = (void*)0;
    VECTOR(uint32_t, 8) l_241 = (VECTOR(uint32_t, 8))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967286UL, 4294967295UL);
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_119[i] = 0L;
    for (i = 0; i < 2; i++)
        l_121[i] = 0xA87EL;
lbl_224:
    p_677->g_42 |= (((l_75 != (((*l_89) = ((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(l_78.s9d)) ^ ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 8))(l_79.s12127776)).s75, ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(p_677->g_80.xyxx)).hi, ((VECTOR(int8_t, 4))(l_81.s3197)).odd))).xxxyyxxyxyxxyyxx, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(8L, 0x48L)), 6L, ((l_82 = &p_677->g_55[0][9]) != (l_85 = (((((*l_85) = (void*)0) != p_74) <= (l_75 > ((safe_rshift_func_uint8_t_u_u(p_677->g_80.y, 7)) && p_677->g_52[0]))) , l_85))), ((VECTOR(int8_t, 2))(l_88.xx)), 0x64L, 1L)).s1476207605507057 ^ ((VECTOR(int8_t, 8))(p_677->g_56[3][6][3], ((VECTOR(int8_t, 2))(0x66L)), ((VECTOR(int8_t, 2))((-6L))), p_677->g_56[3][6][3], 0x04L, 0x6AL)).s0257052361614777)))))), ((VECTOR(int8_t, 16))(0x08L))))).se2d1, ((VECTOR(int8_t, 4))(0x13L))))).yzzzwwyy, ((VECTOR(int8_t, 8))(0x37L))))).s73)))))), ((VECTOR(int8_t, 2))(0x5AL))))).yxxx <= ((VECTOR(int8_t, 4))(0x58L))))).xzzyxzxz && ((VECTOR(int8_t, 8))(0x66L))))).s1, p_677->g_52[1])) , (void*)0)) == l_91)) >= 18446744073709551615UL) >= l_88.y);
    l_121[1] = (l_120 = (safe_mod_func_uint64_t_u_u(((((*l_117) = (safe_rshift_func_int8_t_s_u(((((!((safe_mod_func_int16_t_s_s((0xF246L || (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 16))(l_101.s2774325634745172)).sd1a4, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(0xCAL, 0x2DL, ((((p_677->g_56[3][6][3] > ((((0x91L ^ (((safe_mul_func_int8_t_s_s((l_104 , ((p_677->g_55[0][5] == (void*)0) < (-1L))), ((p_677->g_114 |= ((safe_div_func_uint32_t_u_u((p_677->g_52[1] < (l_112 = (safe_add_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((p_677->g_4.x , 0UL), 0x19BEL)), l_111)))), 0xC4115E00L)) < 0x13L)) >= l_115))) == p_677->g_56[4][5][1]) && 1UL)) < 1UL) , p_677->g_80.x) | p_677->g_42)) >= 0x16A6L) , GROUP_DIVERGE(2, 1)) < p_677->g_52[0]), 3UL, 0UL, ((VECTOR(uint8_t, 2))(0x57L)), 251UL)), 0x3FL, 4UL, 248UL, ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(0xC3L)), 0xCAL)).sd433, ((VECTOR(uint8_t, 4))(1UL))))).y, 0xA2L, p_677->g_52[1], ((VECTOR(uint8_t, 8))(4UL)), ((VECTOR(uint8_t, 4))(0x0EL)), 5UL)).s8 < p_677->g_56[3][6][3])), p_677->g_4.y)) | p_677->g_4.x)) , p_677->g_5.y) , p_677->g_114) >= l_116), FAKE_DIVERGE(p_677->global_1_offset, get_global_id(1), 10)))) , 0x717F0BBEL) , 0UL), l_119[0])));
    for (p_677->g_114 = 0; (p_677->g_114 > (-29)); p_677->g_114 = safe_sub_func_int16_t_s_s(p_677->g_114, 7))
    { /* block id: 27 */
        uint8_t l_140 = 0x0CL;
        int16_t **l_143[6][10][3] = {{{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0}},{{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0}},{{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0}},{{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0}},{{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0}},{{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0},{&l_113[7],&l_113[2],(void*)0}}};
        uint8_t *l_144 = &l_112;
        int32_t l_145 = (-1L);
        int16_t l_146 = 0x0477L;
        uint32_t l_147 = 0x8FA42621L;
        int32_t l_157 = 0x10D8EACDL;
        int32_t l_158 = 2L;
        int32_t l_159 = 0x53325B8EL;
        uint8_t l_169 = 0xC2L;
        uint8_t *l_219[4];
        uint32_t *l_220 = &p_677->g_118;
        VECTOR(uint32_t, 8) l_236 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xFC32BA81L), 0xFC32BA81L), 0xFC32BA81L, 4294967295UL, 0xFC32BA81L);
        VECTOR(uint32_t, 4) l_239 = (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 0UL), 0UL);
        VECTOR(uint32_t, 16) l_247 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL, (VECTOR(uint32_t, 2))(0UL, 2UL), (VECTOR(uint32_t, 2))(0UL, 2UL), 0UL, 2UL, 0UL, 2UL);
        VECTOR(uint32_t, 2) l_251 = (VECTOR(uint32_t, 2))(0x076BAB54L, 4294967286UL);
        int8_t l_263 = (-7L);
        int8_t *l_264 = (void*)0;
        int8_t *l_265 = &l_263;
        int8_t *l_266 = (void*)0;
        int8_t *l_267[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_284 = 0x5B0300A9L;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_219[i] = (void*)0;
        if (((65535UL < 0x9A1CL) < (safe_sub_func_uint64_t_u_u((safe_mod_func_int16_t_s_s((((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 4))(0UL, ((p_677->g_80.y < (((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 2))(1UL, 0xF5B9L)), ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(0x3522L, 0x0448L)) * ((VECTOR(uint16_t, 2))(0x97C0L, 4UL))))), ((VECTOR(uint16_t, 2))(l_132.s21))))), ((VECTOR(uint16_t, 4))(l_133.s4089)).odd))).lo, (((safe_sub_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_s(l_140, (((((*l_144) &= (safe_mul_func_uint8_t_u_u((&l_116 != (l_113[8] = &l_116)), (0x77898805535B230EL ^ (p_677->g_42 , 0xABA3EDC0E5944C72L))))) ^ l_140) != l_145) & l_140))) | l_146), p_677->g_80.x)) | l_146), GROUP_DIVERGE(1, 1))) | l_147) == p_677->g_80.y))) || p_677->g_4.x) && l_145)) | p_677->g_56[4][7][3]), 0x1FL, 0UL)).lo, ((VECTOR(uint8_t, 2))(0UL))))).lo , l_145), 0x1AA1L)), p_677->g_56[3][6][3]))))
        { /* block id: 30 */
            VECTOR(uint8_t, 4) l_148 = (VECTOR(uint8_t, 4))(0x83L, (VECTOR(uint8_t, 2))(0x83L, 1UL), 1UL);
            int i;
            l_148.x = (((*l_82) = &p_677->g_56[6][4][0]) != p_74);
        }
        else
        { /* block id: 33 */
            int8_t l_151 = (-1L);
            int32_t l_155 = 0L;
            VECTOR(int32_t, 16) l_156 = (VECTOR(int32_t, 16))(0x49AB741BL, (VECTOR(int32_t, 4))(0x49AB741BL, (VECTOR(int32_t, 2))(0x49AB741BL, 4L), 4L), 4L, 0x49AB741BL, 4L, (VECTOR(int32_t, 2))(0x49AB741BL, 4L), (VECTOR(int32_t, 2))(0x49AB741BL, 4L), 0x49AB741BL, 4L, 0x49AB741BL, 4L);
            int16_t **l_197[3][2] = {{(void*)0,&l_113[4]},{(void*)0,&l_113[4]},{(void*)0,&l_113[4]}};
            int i, j;
            for (l_146 = (-30); (l_146 <= 14); l_146++)
            { /* block id: 36 */
                int32_t l_152 = (-1L);
                int32_t l_153 = 0x23C11C24L;
                VECTOR(int32_t, 4) l_154 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L));
                uint64_t *l_181 = &p_677->g_182;
                int16_t *l_187 = &l_146;
                VECTOR(uint16_t, 4) l_204 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x06FFL), 0x06FFL);
                uint64_t *l_208 = &p_677->g_209;
                int32_t l_210 = (-1L);
                int i;
                l_152 = l_151;
                --p_677->g_160;
                for (l_116 = 22; (l_116 > (-22)); l_116--)
                { /* block id: 41 */
                    int32_t l_170 = 0x15C612B3L;
                    (*l_82) = p_74;
                    for (l_140 = 16; (l_140 < 41); l_140 = safe_add_func_int32_t_s_s(l_140, 1))
                    { /* block id: 45 */
                        return l_156.se;
                    }
                    for (p_677->g_118 = 11; (p_677->g_118 <= 35); p_677->g_118 = safe_add_func_uint8_t_u_u(p_677->g_118, 1))
                    { /* block id: 50 */
                        if (l_169)
                            break;
                        return l_170;
                    }
                    return p_677->g_114;
                }
                l_156.sd = (l_210 ^= (((((safe_lshift_func_int16_t_s_s((((safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((((safe_mod_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((p_677->g_183 = ((*l_181) = 0xCF90992C471631DFL)), ((*l_208) ^= ((((p_677->g_184 = &p_677->g_114) == (((VECTOR(int8_t, 16))(p_677->g_186.xxxyyxyxyyyxyxxy)).sb , l_187)) > (safe_div_func_int16_t_s_s(((((void*)0 != p_677->g_190) && ((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_s(((l_154.w = 4294967295UL) < ((safe_sub_func_uint16_t_u_u((((p_677->g_198 = l_197[1][1]) != (((((l_153 || (safe_lshift_func_uint8_t_u_u((((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 2))(0x70DCL, 0x5B69L)).yxxxyxyxyyxxyxxy, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 4))(l_204.xyyw)), ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(0xAAFFL, 0x7A33L)).yxyxyxyxxyxxyxyx + ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 2))(0x1C4FL, 0x56E7L)), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(p_677->g_207.s0536)).hi && ((VECTOR(int16_t, 8))(l_146, 0x72ACL, 0x3910L, (-1L), 0L, ((VECTOR(int16_t, 2))(0x482AL)), (-5L))).s72)))))), 0UL, ((VECTOR(uint16_t, 4))(8UL)), 1UL, FAKE_DIVERGE(p_677->global_0_offset, get_global_id(0), 10), 0UL, 0xDDD9L, ((VECTOR(uint16_t, 2))(0x41A1L)), 65535UL, 0x832EL, 0UL))))).s7e38))), 0xDBFFL, ((VECTOR(uint16_t, 2))(0xF3B6L)), 65533UL)).s5340551144367673, ((VECTOR(uint16_t, 16))(65535UL))))).hi << ((VECTOR(uint16_t, 8))(16))))).s4163157501516222, ((VECTOR(uint16_t, 16))(0xB1F5L))))).odd, ((VECTOR(uint16_t, 8))(1UL))))).s5 , 1UL), p_677->g_4.y))) < 2L) | 0x5710E5DDL) & l_204.x) , &l_113[7])) == 0x64D47B18L), p_677->g_80.y)) && l_151)), 4)), 5)) <= l_152)) > FAKE_DIVERGE(p_677->local_0_offset, get_local_id(0), 10)), 7L))) , l_155)))), p_677->g_114)) || l_169) , l_153) < l_156.s4), 1UL)), l_204.y)) ^ l_155) , l_204.z), l_159)) ^ 0xBEA2L) >= l_156.sc) > l_156.s2) != p_677->g_4.x));
            }
            if (l_146)
                continue;
        }
        for (p_677->g_160 = 0; (p_677->g_160 >= 55); p_677->g_160++)
        { /* block id: 69 */
            uint16_t l_213 = 0x3956L;
            uint8_t **l_214[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint32_t **l_221 = &l_220;
            int i;
            if (((l_213 >= l_213) || (l_158 = ((l_215 = (void*)0) != ((((((p_677->g_216 = p_677->g_216) != (l_219[3] = (l_218 = (l_144 = &l_140)))) , (void*)0) == ((*l_221) = l_220)) >= (((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(1L, 0x647F9239230E06A7L)).yyyx && ((VECTOR(int64_t, 2))((-10L), 6L)).xxxx))).w > (safe_mul_func_int16_t_s_s(l_146, ((l_145 = (p_677->g_52[1] , 0x4FFE74A8L)) && 1L))))) , &p_677->g_217)))))
            { /* block id: 78 */
                (*l_82) = p_74;
            }
            else
            { /* block id: 80 */
                int32_t *l_225 = &p_677->g_56[0][8][3];
                if (l_213)
                    goto lbl_224;
                l_225 = &p_677->g_56[0][1][1];
                if (l_158)
                    continue;
                if (l_213)
                    continue;
            }
            return (*p_677->g_184);
        }
        if ((p_677->g_5.x || ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 2))(0x8C02L, 1UL)).xyyyyxyx, ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 16))(0xAFA9L, 0x6A0AL, 0x8151L, 0x1E7FL, 2UL, (safe_sub_func_int32_t_s_s((safe_sub_func_int8_t_s_s((((p_677->g_186.y = ((*l_265) = (((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 4))(l_236.s3442)).lo, ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(0xD75CC8E4L, 0x33E590DBL)).yxxyxxyy - ((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 8))(l_239.wwzyxzyw)).s57, ((VECTOR(uint32_t, 4))(p_677->g_240.s9266)).lo))), ((VECTOR(uint32_t, 4))(l_241.s0036)).hi, ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(p_677->g_244.s7027)).zxyzwxww + ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(4294967292UL, 4294967295UL)), ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(l_140, p_677->g_185, 1UL, 4294967295UL)).xwwwwyyw + ((VECTOR(uint32_t, 16))(7UL, ((VECTOR(uint32_t, 8))(l_247.sbb1f648e)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(p_677->g_250.s01)) * ((VECTOR(uint32_t, 16))(7UL, 0x3CCA0383L, 0x8C482F6EL, 1UL, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_251.yy)), 0xCFA0E982L, ((VECTOR(uint32_t, 2))(p_677->g_252.xy)), (safe_lshift_func_int16_t_s_u((((GROUP_DIVERGE(1, 1) ^ (safe_add_func_int16_t_s_s(l_140, (l_157 |= (((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(0xA5DCCD83L, ((((void*)0 != p_74) > 2UL) , p_677->g_209))), p_677->g_252.y)), p_677->g_80.x)) == GROUP_DIVERGE(1, 1)) && p_677->g_207.s0))))) , (-9L)) && l_236.s5), l_146)), 0x7247FC99L, 4294967291UL)), ((VECTOR(uint32_t, 8))(4294967292UL))))).lo, ((VECTOR(uint32_t, 4))(0x83F579C8L))))), GROUP_DIVERGE(1, 1), 0x8E4C6C3BL, 4294967290UL, 0UL)), l_236.s2, ((VECTOR(uint32_t, 2))(0UL)), 4294967295UL)).sd3))), l_263, p_677->g_207.s6, ((VECTOR(uint32_t, 2))(2UL)), 1UL, 0xD2A5B001L)).s4, ((VECTOR(uint32_t, 2))(0x2A5A2207L)), ((VECTOR(uint32_t, 4))(0UL)))).hi))), ((VECTOR(uint32_t, 2))(4294967295UL)), l_263, 8UL, 1UL, 0x78901145L)).even))).s27))).xxxyxxyx))).s12))).odd , 0x09L))) < (*p_677->g_216)) > l_247.s6), 0x18L)), l_247.sd)), 0UL, l_247.s1, 0x9863L, l_157, 0x3278L, ((VECTOR(uint16_t, 4))(0x3A64L)), 65535UL)).s4576, ((VECTOR(uint16_t, 4))(0x60FFL))))).even + ((VECTOR(uint16_t, 2))(0x4F5CL))))).yxyyyyxyyyxyyyyy + ((VECTOR(uint16_t, 16))(0xC9BAL))))).lo, ((VECTOR(uint16_t, 8))(1UL))))).s36 >> ((VECTOR(uint16_t, 2))(65527UL))))).xxyxxxyx | ((VECTOR(uint16_t, 8))(0x5C5AL))))).s5))
        { /* block id: 91 */
            uint16_t l_268 = 8UL;
            int32_t *l_272 = &l_119[0];
            int32_t **l_271 = &l_272;
            --l_268;
            l_145 = (l_157 ^= (l_145 <= (p_677->g_55[0][0] == ((*l_271) = p_677->g_55[0][9]))));
        }
        else
        { /* block id: 96 */
            int16_t l_275[1][6] = {{8L,8L,8L,8L,8L,8L}};
            int64_t *l_283 = (void*)0;
            int32_t **l_285 = &p_677->g_55[0][9];
            uint64_t *l_286[8][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
            VECTOR(int8_t, 16) l_288 = (VECTOR(int8_t, 16))(0x54L, (VECTOR(int8_t, 4))(0x54L, (VECTOR(int8_t, 2))(0x54L, 0x46L), 0x46L), 0x46L, 0x54L, 0x46L, (VECTOR(int8_t, 2))(0x54L, 0x46L), (VECTOR(int8_t, 2))(0x54L, 0x46L), 0x54L, 0x46L, 0x54L, 0x46L);
            VECTOR(int8_t, 8) l_289 = (VECTOR(int8_t, 8))(0x65L, (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, (-5L)), (-5L)), (-5L), 0x65L, (-5L));
            VECTOR(int8_t, 4) l_290 = (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x17L), 0x17L);
            int32_t l_305[4][8] = {{0x47B1ED3EL,6L,6L,0x47B1ED3EL,0x47B1ED3EL,6L,6L,0x47B1ED3EL},{0x47B1ED3EL,6L,6L,0x47B1ED3EL,0x47B1ED3EL,6L,6L,0x47B1ED3EL},{0x47B1ED3EL,6L,6L,0x47B1ED3EL,0x47B1ED3EL,6L,6L,0x47B1ED3EL},{0x47B1ED3EL,6L,6L,0x47B1ED3EL,0x47B1ED3EL,6L,6L,0x47B1ED3EL}};
            int i, j;
            if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x04B8E30FL, 0x4B9505C2L)), (safe_mod_func_uint32_t_u_u(4294967295UL, 0xCAC2AD38L)), ((VECTOR(int32_t, 4))(0x68D9D4BAL, ((((0xB0L && p_677->g_5.y) != ((l_275[0][2] | ((((safe_mod_func_uint64_t_u_u((p_677->g_209 |= (safe_div_func_int64_t_s_s((p_677->g_280 == (void*)0), (((l_284 = (-7L)) != ((void*)0 != l_285)) & 0x7CL)))), p_677->g_207.s1)) , l_275[0][2]) != l_147) > 5L)) != l_157)) | (-5L)) <= p_677->g_5.y), (-1L), 9L)).w, 1L, 0x0D72819BL, 0x749D377CL, 0x785509C7L)).s3)
            { /* block id: 99 */
                int8_t l_287 = 0x47L;
                return l_287;
            }
            else
            { /* block id: 101 */
                (*l_285) = (*l_85);
            }
            l_305[3][6] = ((4294967290UL < l_147) < ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(l_288.sb8508426)).s74, ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))(l_289.s3700)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-3L), 0L)), 0x46L, 0L))))).hi))), ((VECTOR(int8_t, 2))((~((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(l_290.wwwwxwyxxxxyxxxw)).s89 && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))((-1L), 0x32L)).xxyx, ((VECTOR(int8_t, 4))(((safe_rshift_func_int16_t_s_s((*p_677->g_184), 1)) < (safe_mod_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_u((-10L), (safe_div_func_int16_t_s_s((safe_sub_func_int64_t_s_s(p_677->g_56[6][6][2], (safe_mod_func_int64_t_s_s(p_677->g_207.s2, (p_677->g_52[0] & 0x7C0CL))))), (*p_677->g_184))))), l_236.s2)), (*p_677->g_184)))), 7L, 0x12L, 0x67L))))) == ((VECTOR(int8_t, 4))(1L))))).odd)))))), ((VECTOR(int8_t, 2))((-1L))), 0x45L, 0x72L)).s0);
        }
        for (p_677->g_217 = (-11); (p_677->g_217 <= 15); p_677->g_217++)
        { /* block id: 108 */
            return l_140;
        }
    }
    return (*p_677->g_184);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_678;
    struct S1* p_677 = &c_678;
    struct S1 c_679 = {
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 8L), 8L), 8L, (-1L), 8L, (VECTOR(int8_t, 2))((-1L), 8L), (VECTOR(int8_t, 2))((-1L), 8L), (-1L), 8L, (-1L), 8L), // p_677->g_3
        (VECTOR(int8_t, 2))((-1L), 1L), // p_677->g_4
        (VECTOR(int8_t, 2))(0x06L, 0x55L), // p_677->g_5
        0x1589AFCAL, // p_677->g_20
        (-1L), // p_677->g_22
        0x0609E00CL, // p_677->g_42
        {0xB50DL,0xB50DL}, // p_677->g_52
        {{{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}},{{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}},{{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}},{{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}},{{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}},{{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}},{{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}}}, // p_677->g_56
        {{&p_677->g_56[3][6][3],&p_677->g_56[3][6][3],&p_677->g_56[3][6][3],&p_677->g_56[3][6][3],&p_677->g_56[3][6][3],&p_677->g_56[3][6][3],&p_677->g_56[3][6][3],&p_677->g_56[3][6][3],&p_677->g_56[3][6][3],&p_677->g_56[3][6][3]}}, // p_677->g_55
        (VECTOR(int8_t, 2))(0x79L, 0x11L), // p_677->g_80
        (-1L), // p_677->g_114
        0xF793AD1AL, // p_677->g_118
        0UL, // p_677->g_160
        0x10A686A80E99DC05L, // p_677->g_182
        7L, // p_677->g_183
        0L, // p_677->g_185
        &p_677->g_185, // p_677->g_184
        (VECTOR(int8_t, 2))(0x4FL, 0x71L), // p_677->g_186
        (void*)0, // p_677->g_190
        {{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114},{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114},{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114},{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114},{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114},{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114},{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114},{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114},{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114},{&p_677->g_114,&p_677->g_185,(void*)0,&p_677->g_114,&p_677->g_114,&p_677->g_185,&p_677->g_185,&p_677->g_114}}, // p_677->g_199
        &p_677->g_199[4][7], // p_677->g_198
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_677->g_207
        0x90B8971933DCA61DL, // p_677->g_209
        0x14L, // p_677->g_217
        &p_677->g_217, // p_677->g_216
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), 4294967295UL, 0UL, 4294967295UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 0UL, 4294967295UL, 0UL, 4294967295UL), // p_677->g_240
        (VECTOR(uint32_t, 8))(0x858675BAL, (VECTOR(uint32_t, 4))(0x858675BAL, (VECTOR(uint32_t, 2))(0x858675BAL, 4294967286UL), 4294967286UL), 4294967286UL, 0x858675BAL, 4294967286UL), // p_677->g_244
        (VECTOR(uint32_t, 8))(0xDA94C6A0L, (VECTOR(uint32_t, 4))(0xDA94C6A0L, (VECTOR(uint32_t, 2))(0xDA94C6A0L, 0x83A3F032L), 0x83A3F032L), 0x83A3F032L, 0xDA94C6A0L, 0x83A3F032L), // p_677->g_250
        (VECTOR(uint32_t, 2))(0xF79201D8L, 1UL), // p_677->g_252
        {{(-7L),0x08DA9434L,(-1L),(-1L),0x08DA9434L,(-7L),0x6D24434FL,0L},{(-7L),0x08DA9434L,(-1L),(-1L),0x08DA9434L,(-7L),0x6D24434FL,0L},{(-7L),0x08DA9434L,(-1L),(-1L),0x08DA9434L,(-7L),0x6D24434FL,0L},{(-7L),0x08DA9434L,(-1L),(-1L),0x08DA9434L,(-7L),0x6D24434FL,0L},{(-7L),0x08DA9434L,(-1L),(-1L),0x08DA9434L,(-7L),0x6D24434FL,0L},{(-7L),0x08DA9434L,(-1L),(-1L),0x08DA9434L,(-7L),0x6D24434FL,0L},{(-7L),0x08DA9434L,(-1L),(-1L),0x08DA9434L,(-7L),0x6D24434FL,0L},{(-7L),0x08DA9434L,(-1L),(-1L),0x08DA9434L,(-7L),0x6D24434FL,0L}}, // p_677->g_282
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_677->g_281
        &p_677->g_281[2][2], // p_677->g_280
        (VECTOR(uint8_t, 16))(0xF0L, (VECTOR(uint8_t, 4))(0xF0L, (VECTOR(uint8_t, 2))(0xF0L, 0x89L), 0x89L), 0x89L, 0xF0L, 0x89L, (VECTOR(uint8_t, 2))(0xF0L, 0x89L), (VECTOR(uint8_t, 2))(0xF0L, 0x89L), 0xF0L, 0x89L, 0xF0L, 0x89L), // p_677->g_336
        (VECTOR(uint16_t, 8))(0x6CFCL, (VECTOR(uint16_t, 4))(0x6CFCL, (VECTOR(uint16_t, 2))(0x6CFCL, 65529UL), 65529UL), 65529UL, 0x6CFCL, 65529UL), // p_677->g_365
        (VECTOR(uint16_t, 8))(0xB623L, (VECTOR(uint16_t, 4))(0xB623L, (VECTOR(uint16_t, 2))(0xB623L, 0UL), 0UL), 0UL, 0xB623L, 0UL), // p_677->g_368
        1UL, // p_677->g_388
        &p_677->g_388, // p_677->g_387
        {&p_677->g_387,&p_677->g_387,&p_677->g_387}, // p_677->g_386
        (VECTOR(uint32_t, 16))(0x731521AFL, (VECTOR(uint32_t, 4))(0x731521AFL, (VECTOR(uint32_t, 2))(0x731521AFL, 0xD3F9F573L), 0xD3F9F573L), 0xD3F9F573L, 0x731521AFL, 0xD3F9F573L, (VECTOR(uint32_t, 2))(0x731521AFL, 0xD3F9F573L), (VECTOR(uint32_t, 2))(0x731521AFL, 0xD3F9F573L), 0x731521AFL, 0xD3F9F573L, 0x731521AFL, 0xD3F9F573L), // p_677->g_396
        (VECTOR(uint16_t, 16))(2UL, (VECTOR(uint16_t, 4))(2UL, (VECTOR(uint16_t, 2))(2UL, 0x1C5BL), 0x1C5BL), 0x1C5BL, 2UL, 0x1C5BL, (VECTOR(uint16_t, 2))(2UL, 0x1C5BL), (VECTOR(uint16_t, 2))(2UL, 0x1C5BL), 2UL, 0x1C5BL, 2UL, 0x1C5BL), // p_677->g_400
        {0x0951B8FCL,0x0951B8FCL,0x0951B8FCL,0x0951B8FCL,0x0951B8FCL,0x0951B8FCL}, // p_677->g_448
        (void*)0, // p_677->g_465
        (VECTOR(uint32_t, 16))(0x65D66B10L, (VECTOR(uint32_t, 4))(0x65D66B10L, (VECTOR(uint32_t, 2))(0x65D66B10L, 0x69083A72L), 0x69083A72L), 0x69083A72L, 0x65D66B10L, 0x69083A72L, (VECTOR(uint32_t, 2))(0x65D66B10L, 0x69083A72L), (VECTOR(uint32_t, 2))(0x65D66B10L, 0x69083A72L), 0x65D66B10L, 0x69083A72L, 0x65D66B10L, 0x69083A72L), // p_677->g_481
        (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x47C71F0A3A417460L), 0x47C71F0A3A417460L), 0x47C71F0A3A417460L, 18446744073709551611UL, 0x47C71F0A3A417460L, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x47C71F0A3A417460L), (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x47C71F0A3A417460L), 18446744073709551611UL, 0x47C71F0A3A417460L, 18446744073709551611UL, 0x47C71F0A3A417460L), // p_677->g_491
        (VECTOR(uint64_t, 8))(0x029660356607799EL, (VECTOR(uint64_t, 4))(0x029660356607799EL, (VECTOR(uint64_t, 2))(0x029660356607799EL, 6UL), 6UL), 6UL, 0x029660356607799EL, 6UL), // p_677->g_494
        (VECTOR(int8_t, 4))(0x17L, (VECTOR(int8_t, 2))(0x17L, 7L), 7L), // p_677->g_508
        0x681EC7EC1F567246L, // p_677->g_511
        0x65A49E33L, // p_677->g_566
        (VECTOR(int16_t, 8))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, (-1L)), (-1L)), (-1L), 3L, (-1L)), // p_677->g_576
        (VECTOR(int32_t, 8))(0x5568BFE6L, (VECTOR(int32_t, 4))(0x5568BFE6L, (VECTOR(int32_t, 2))(0x5568BFE6L, 0x7D4C2D4FL), 0x7D4C2D4FL), 0x7D4C2D4FL, 0x5568BFE6L, 0x7D4C2D4FL), // p_677->g_583
        (VECTOR(uint16_t, 4))(0xEE59L, (VECTOR(uint16_t, 2))(0xEE59L, 0x59B6L), 0x59B6L), // p_677->g_614
        (VECTOR(uint16_t, 2))(65530UL, 0UL), // p_677->g_620
        (VECTOR(int8_t, 2))(1L, 0x3DL), // p_677->g_626
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x16L), 0x16L), // p_677->g_628
        (VECTOR(int8_t, 8))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 1L), 1L), 1L, (-6L), 1L), // p_677->g_629
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_677->g_633
        {&p_677->g_633[1],&p_677->g_633[1],&p_677->g_633[1],&p_677->g_633[1],&p_677->g_633[1],&p_677->g_633[1],&p_677->g_633[1],&p_677->g_633[1],&p_677->g_633[1],&p_677->g_633[1]}, // p_677->g_632
        0x07AE2A14L, // p_677->g_660
        1L, // p_677->g_661
        0x73L, // p_677->g_664
        0x4BEB9BBDL, // p_677->g_667
        {1L,-1L,0x33EC3E32L,4294967290UL,0x4B4B21CDL,7UL,0x6A139E82L,1L,0x3C0637D365C0F887L,0x3796L}, // p_677->g_676
        sequence_input[get_global_id(0)], // p_677->global_0_offset
        sequence_input[get_global_id(1)], // p_677->global_1_offset
        sequence_input[get_global_id(2)], // p_677->global_2_offset
        sequence_input[get_local_id(0)], // p_677->local_0_offset
        sequence_input[get_local_id(1)], // p_677->local_1_offset
        sequence_input[get_local_id(2)], // p_677->local_2_offset
        sequence_input[get_group_id(0)], // p_677->group_0_offset
        sequence_input[get_group_id(1)], // p_677->group_1_offset
        sequence_input[get_group_id(2)], // p_677->group_2_offset
    };
    c_678 = c_679;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_677);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_677->g_3.s0, "p_677->g_3.s0", print_hash_value);
    transparent_crc(p_677->g_3.s1, "p_677->g_3.s1", print_hash_value);
    transparent_crc(p_677->g_3.s2, "p_677->g_3.s2", print_hash_value);
    transparent_crc(p_677->g_3.s3, "p_677->g_3.s3", print_hash_value);
    transparent_crc(p_677->g_3.s4, "p_677->g_3.s4", print_hash_value);
    transparent_crc(p_677->g_3.s5, "p_677->g_3.s5", print_hash_value);
    transparent_crc(p_677->g_3.s6, "p_677->g_3.s6", print_hash_value);
    transparent_crc(p_677->g_3.s7, "p_677->g_3.s7", print_hash_value);
    transparent_crc(p_677->g_3.s8, "p_677->g_3.s8", print_hash_value);
    transparent_crc(p_677->g_3.s9, "p_677->g_3.s9", print_hash_value);
    transparent_crc(p_677->g_3.sa, "p_677->g_3.sa", print_hash_value);
    transparent_crc(p_677->g_3.sb, "p_677->g_3.sb", print_hash_value);
    transparent_crc(p_677->g_3.sc, "p_677->g_3.sc", print_hash_value);
    transparent_crc(p_677->g_3.sd, "p_677->g_3.sd", print_hash_value);
    transparent_crc(p_677->g_3.se, "p_677->g_3.se", print_hash_value);
    transparent_crc(p_677->g_3.sf, "p_677->g_3.sf", print_hash_value);
    transparent_crc(p_677->g_4.x, "p_677->g_4.x", print_hash_value);
    transparent_crc(p_677->g_4.y, "p_677->g_4.y", print_hash_value);
    transparent_crc(p_677->g_5.x, "p_677->g_5.x", print_hash_value);
    transparent_crc(p_677->g_5.y, "p_677->g_5.y", print_hash_value);
    transparent_crc(p_677->g_20, "p_677->g_20", print_hash_value);
    transparent_crc(p_677->g_22, "p_677->g_22", print_hash_value);
    transparent_crc(p_677->g_42, "p_677->g_42", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_677->g_52[i], "p_677->g_52[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_677->g_56[i][j][k], "p_677->g_56[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_677->g_80.x, "p_677->g_80.x", print_hash_value);
    transparent_crc(p_677->g_80.y, "p_677->g_80.y", print_hash_value);
    transparent_crc(p_677->g_114, "p_677->g_114", print_hash_value);
    transparent_crc(p_677->g_118, "p_677->g_118", print_hash_value);
    transparent_crc(p_677->g_160, "p_677->g_160", print_hash_value);
    transparent_crc(p_677->g_182, "p_677->g_182", print_hash_value);
    transparent_crc(p_677->g_183, "p_677->g_183", print_hash_value);
    transparent_crc(p_677->g_185, "p_677->g_185", print_hash_value);
    transparent_crc(p_677->g_186.x, "p_677->g_186.x", print_hash_value);
    transparent_crc(p_677->g_186.y, "p_677->g_186.y", print_hash_value);
    transparent_crc(p_677->g_207.s0, "p_677->g_207.s0", print_hash_value);
    transparent_crc(p_677->g_207.s1, "p_677->g_207.s1", print_hash_value);
    transparent_crc(p_677->g_207.s2, "p_677->g_207.s2", print_hash_value);
    transparent_crc(p_677->g_207.s3, "p_677->g_207.s3", print_hash_value);
    transparent_crc(p_677->g_207.s4, "p_677->g_207.s4", print_hash_value);
    transparent_crc(p_677->g_207.s5, "p_677->g_207.s5", print_hash_value);
    transparent_crc(p_677->g_207.s6, "p_677->g_207.s6", print_hash_value);
    transparent_crc(p_677->g_207.s7, "p_677->g_207.s7", print_hash_value);
    transparent_crc(p_677->g_209, "p_677->g_209", print_hash_value);
    transparent_crc(p_677->g_217, "p_677->g_217", print_hash_value);
    transparent_crc(p_677->g_240.s0, "p_677->g_240.s0", print_hash_value);
    transparent_crc(p_677->g_240.s1, "p_677->g_240.s1", print_hash_value);
    transparent_crc(p_677->g_240.s2, "p_677->g_240.s2", print_hash_value);
    transparent_crc(p_677->g_240.s3, "p_677->g_240.s3", print_hash_value);
    transparent_crc(p_677->g_240.s4, "p_677->g_240.s4", print_hash_value);
    transparent_crc(p_677->g_240.s5, "p_677->g_240.s5", print_hash_value);
    transparent_crc(p_677->g_240.s6, "p_677->g_240.s6", print_hash_value);
    transparent_crc(p_677->g_240.s7, "p_677->g_240.s7", print_hash_value);
    transparent_crc(p_677->g_240.s8, "p_677->g_240.s8", print_hash_value);
    transparent_crc(p_677->g_240.s9, "p_677->g_240.s9", print_hash_value);
    transparent_crc(p_677->g_240.sa, "p_677->g_240.sa", print_hash_value);
    transparent_crc(p_677->g_240.sb, "p_677->g_240.sb", print_hash_value);
    transparent_crc(p_677->g_240.sc, "p_677->g_240.sc", print_hash_value);
    transparent_crc(p_677->g_240.sd, "p_677->g_240.sd", print_hash_value);
    transparent_crc(p_677->g_240.se, "p_677->g_240.se", print_hash_value);
    transparent_crc(p_677->g_240.sf, "p_677->g_240.sf", print_hash_value);
    transparent_crc(p_677->g_244.s0, "p_677->g_244.s0", print_hash_value);
    transparent_crc(p_677->g_244.s1, "p_677->g_244.s1", print_hash_value);
    transparent_crc(p_677->g_244.s2, "p_677->g_244.s2", print_hash_value);
    transparent_crc(p_677->g_244.s3, "p_677->g_244.s3", print_hash_value);
    transparent_crc(p_677->g_244.s4, "p_677->g_244.s4", print_hash_value);
    transparent_crc(p_677->g_244.s5, "p_677->g_244.s5", print_hash_value);
    transparent_crc(p_677->g_244.s6, "p_677->g_244.s6", print_hash_value);
    transparent_crc(p_677->g_244.s7, "p_677->g_244.s7", print_hash_value);
    transparent_crc(p_677->g_250.s0, "p_677->g_250.s0", print_hash_value);
    transparent_crc(p_677->g_250.s1, "p_677->g_250.s1", print_hash_value);
    transparent_crc(p_677->g_250.s2, "p_677->g_250.s2", print_hash_value);
    transparent_crc(p_677->g_250.s3, "p_677->g_250.s3", print_hash_value);
    transparent_crc(p_677->g_250.s4, "p_677->g_250.s4", print_hash_value);
    transparent_crc(p_677->g_250.s5, "p_677->g_250.s5", print_hash_value);
    transparent_crc(p_677->g_250.s6, "p_677->g_250.s6", print_hash_value);
    transparent_crc(p_677->g_250.s7, "p_677->g_250.s7", print_hash_value);
    transparent_crc(p_677->g_252.x, "p_677->g_252.x", print_hash_value);
    transparent_crc(p_677->g_252.y, "p_677->g_252.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_677->g_282[i][j], "p_677->g_282[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_677->g_336.s0, "p_677->g_336.s0", print_hash_value);
    transparent_crc(p_677->g_336.s1, "p_677->g_336.s1", print_hash_value);
    transparent_crc(p_677->g_336.s2, "p_677->g_336.s2", print_hash_value);
    transparent_crc(p_677->g_336.s3, "p_677->g_336.s3", print_hash_value);
    transparent_crc(p_677->g_336.s4, "p_677->g_336.s4", print_hash_value);
    transparent_crc(p_677->g_336.s5, "p_677->g_336.s5", print_hash_value);
    transparent_crc(p_677->g_336.s6, "p_677->g_336.s6", print_hash_value);
    transparent_crc(p_677->g_336.s7, "p_677->g_336.s7", print_hash_value);
    transparent_crc(p_677->g_336.s8, "p_677->g_336.s8", print_hash_value);
    transparent_crc(p_677->g_336.s9, "p_677->g_336.s9", print_hash_value);
    transparent_crc(p_677->g_336.sa, "p_677->g_336.sa", print_hash_value);
    transparent_crc(p_677->g_336.sb, "p_677->g_336.sb", print_hash_value);
    transparent_crc(p_677->g_336.sc, "p_677->g_336.sc", print_hash_value);
    transparent_crc(p_677->g_336.sd, "p_677->g_336.sd", print_hash_value);
    transparent_crc(p_677->g_336.se, "p_677->g_336.se", print_hash_value);
    transparent_crc(p_677->g_336.sf, "p_677->g_336.sf", print_hash_value);
    transparent_crc(p_677->g_365.s0, "p_677->g_365.s0", print_hash_value);
    transparent_crc(p_677->g_365.s1, "p_677->g_365.s1", print_hash_value);
    transparent_crc(p_677->g_365.s2, "p_677->g_365.s2", print_hash_value);
    transparent_crc(p_677->g_365.s3, "p_677->g_365.s3", print_hash_value);
    transparent_crc(p_677->g_365.s4, "p_677->g_365.s4", print_hash_value);
    transparent_crc(p_677->g_365.s5, "p_677->g_365.s5", print_hash_value);
    transparent_crc(p_677->g_365.s6, "p_677->g_365.s6", print_hash_value);
    transparent_crc(p_677->g_365.s7, "p_677->g_365.s7", print_hash_value);
    transparent_crc(p_677->g_368.s0, "p_677->g_368.s0", print_hash_value);
    transparent_crc(p_677->g_368.s1, "p_677->g_368.s1", print_hash_value);
    transparent_crc(p_677->g_368.s2, "p_677->g_368.s2", print_hash_value);
    transparent_crc(p_677->g_368.s3, "p_677->g_368.s3", print_hash_value);
    transparent_crc(p_677->g_368.s4, "p_677->g_368.s4", print_hash_value);
    transparent_crc(p_677->g_368.s5, "p_677->g_368.s5", print_hash_value);
    transparent_crc(p_677->g_368.s6, "p_677->g_368.s6", print_hash_value);
    transparent_crc(p_677->g_368.s7, "p_677->g_368.s7", print_hash_value);
    transparent_crc(p_677->g_388, "p_677->g_388", print_hash_value);
    transparent_crc(p_677->g_396.s0, "p_677->g_396.s0", print_hash_value);
    transparent_crc(p_677->g_396.s1, "p_677->g_396.s1", print_hash_value);
    transparent_crc(p_677->g_396.s2, "p_677->g_396.s2", print_hash_value);
    transparent_crc(p_677->g_396.s3, "p_677->g_396.s3", print_hash_value);
    transparent_crc(p_677->g_396.s4, "p_677->g_396.s4", print_hash_value);
    transparent_crc(p_677->g_396.s5, "p_677->g_396.s5", print_hash_value);
    transparent_crc(p_677->g_396.s6, "p_677->g_396.s6", print_hash_value);
    transparent_crc(p_677->g_396.s7, "p_677->g_396.s7", print_hash_value);
    transparent_crc(p_677->g_396.s8, "p_677->g_396.s8", print_hash_value);
    transparent_crc(p_677->g_396.s9, "p_677->g_396.s9", print_hash_value);
    transparent_crc(p_677->g_396.sa, "p_677->g_396.sa", print_hash_value);
    transparent_crc(p_677->g_396.sb, "p_677->g_396.sb", print_hash_value);
    transparent_crc(p_677->g_396.sc, "p_677->g_396.sc", print_hash_value);
    transparent_crc(p_677->g_396.sd, "p_677->g_396.sd", print_hash_value);
    transparent_crc(p_677->g_396.se, "p_677->g_396.se", print_hash_value);
    transparent_crc(p_677->g_396.sf, "p_677->g_396.sf", print_hash_value);
    transparent_crc(p_677->g_400.s0, "p_677->g_400.s0", print_hash_value);
    transparent_crc(p_677->g_400.s1, "p_677->g_400.s1", print_hash_value);
    transparent_crc(p_677->g_400.s2, "p_677->g_400.s2", print_hash_value);
    transparent_crc(p_677->g_400.s3, "p_677->g_400.s3", print_hash_value);
    transparent_crc(p_677->g_400.s4, "p_677->g_400.s4", print_hash_value);
    transparent_crc(p_677->g_400.s5, "p_677->g_400.s5", print_hash_value);
    transparent_crc(p_677->g_400.s6, "p_677->g_400.s6", print_hash_value);
    transparent_crc(p_677->g_400.s7, "p_677->g_400.s7", print_hash_value);
    transparent_crc(p_677->g_400.s8, "p_677->g_400.s8", print_hash_value);
    transparent_crc(p_677->g_400.s9, "p_677->g_400.s9", print_hash_value);
    transparent_crc(p_677->g_400.sa, "p_677->g_400.sa", print_hash_value);
    transparent_crc(p_677->g_400.sb, "p_677->g_400.sb", print_hash_value);
    transparent_crc(p_677->g_400.sc, "p_677->g_400.sc", print_hash_value);
    transparent_crc(p_677->g_400.sd, "p_677->g_400.sd", print_hash_value);
    transparent_crc(p_677->g_400.se, "p_677->g_400.se", print_hash_value);
    transparent_crc(p_677->g_400.sf, "p_677->g_400.sf", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_677->g_448[i], "p_677->g_448[i]", print_hash_value);

    }
    transparent_crc(p_677->g_481.s0, "p_677->g_481.s0", print_hash_value);
    transparent_crc(p_677->g_481.s1, "p_677->g_481.s1", print_hash_value);
    transparent_crc(p_677->g_481.s2, "p_677->g_481.s2", print_hash_value);
    transparent_crc(p_677->g_481.s3, "p_677->g_481.s3", print_hash_value);
    transparent_crc(p_677->g_481.s4, "p_677->g_481.s4", print_hash_value);
    transparent_crc(p_677->g_481.s5, "p_677->g_481.s5", print_hash_value);
    transparent_crc(p_677->g_481.s6, "p_677->g_481.s6", print_hash_value);
    transparent_crc(p_677->g_481.s7, "p_677->g_481.s7", print_hash_value);
    transparent_crc(p_677->g_481.s8, "p_677->g_481.s8", print_hash_value);
    transparent_crc(p_677->g_481.s9, "p_677->g_481.s9", print_hash_value);
    transparent_crc(p_677->g_481.sa, "p_677->g_481.sa", print_hash_value);
    transparent_crc(p_677->g_481.sb, "p_677->g_481.sb", print_hash_value);
    transparent_crc(p_677->g_481.sc, "p_677->g_481.sc", print_hash_value);
    transparent_crc(p_677->g_481.sd, "p_677->g_481.sd", print_hash_value);
    transparent_crc(p_677->g_481.se, "p_677->g_481.se", print_hash_value);
    transparent_crc(p_677->g_481.sf, "p_677->g_481.sf", print_hash_value);
    transparent_crc(p_677->g_491.s0, "p_677->g_491.s0", print_hash_value);
    transparent_crc(p_677->g_491.s1, "p_677->g_491.s1", print_hash_value);
    transparent_crc(p_677->g_491.s2, "p_677->g_491.s2", print_hash_value);
    transparent_crc(p_677->g_491.s3, "p_677->g_491.s3", print_hash_value);
    transparent_crc(p_677->g_491.s4, "p_677->g_491.s4", print_hash_value);
    transparent_crc(p_677->g_491.s5, "p_677->g_491.s5", print_hash_value);
    transparent_crc(p_677->g_491.s6, "p_677->g_491.s6", print_hash_value);
    transparent_crc(p_677->g_491.s7, "p_677->g_491.s7", print_hash_value);
    transparent_crc(p_677->g_491.s8, "p_677->g_491.s8", print_hash_value);
    transparent_crc(p_677->g_491.s9, "p_677->g_491.s9", print_hash_value);
    transparent_crc(p_677->g_491.sa, "p_677->g_491.sa", print_hash_value);
    transparent_crc(p_677->g_491.sb, "p_677->g_491.sb", print_hash_value);
    transparent_crc(p_677->g_491.sc, "p_677->g_491.sc", print_hash_value);
    transparent_crc(p_677->g_491.sd, "p_677->g_491.sd", print_hash_value);
    transparent_crc(p_677->g_491.se, "p_677->g_491.se", print_hash_value);
    transparent_crc(p_677->g_491.sf, "p_677->g_491.sf", print_hash_value);
    transparent_crc(p_677->g_494.s0, "p_677->g_494.s0", print_hash_value);
    transparent_crc(p_677->g_494.s1, "p_677->g_494.s1", print_hash_value);
    transparent_crc(p_677->g_494.s2, "p_677->g_494.s2", print_hash_value);
    transparent_crc(p_677->g_494.s3, "p_677->g_494.s3", print_hash_value);
    transparent_crc(p_677->g_494.s4, "p_677->g_494.s4", print_hash_value);
    transparent_crc(p_677->g_494.s5, "p_677->g_494.s5", print_hash_value);
    transparent_crc(p_677->g_494.s6, "p_677->g_494.s6", print_hash_value);
    transparent_crc(p_677->g_494.s7, "p_677->g_494.s7", print_hash_value);
    transparent_crc(p_677->g_508.x, "p_677->g_508.x", print_hash_value);
    transparent_crc(p_677->g_508.y, "p_677->g_508.y", print_hash_value);
    transparent_crc(p_677->g_508.z, "p_677->g_508.z", print_hash_value);
    transparent_crc(p_677->g_508.w, "p_677->g_508.w", print_hash_value);
    transparent_crc(p_677->g_511, "p_677->g_511", print_hash_value);
    transparent_crc(p_677->g_566, "p_677->g_566", print_hash_value);
    transparent_crc(p_677->g_576.s0, "p_677->g_576.s0", print_hash_value);
    transparent_crc(p_677->g_576.s1, "p_677->g_576.s1", print_hash_value);
    transparent_crc(p_677->g_576.s2, "p_677->g_576.s2", print_hash_value);
    transparent_crc(p_677->g_576.s3, "p_677->g_576.s3", print_hash_value);
    transparent_crc(p_677->g_576.s4, "p_677->g_576.s4", print_hash_value);
    transparent_crc(p_677->g_576.s5, "p_677->g_576.s5", print_hash_value);
    transparent_crc(p_677->g_576.s6, "p_677->g_576.s6", print_hash_value);
    transparent_crc(p_677->g_576.s7, "p_677->g_576.s7", print_hash_value);
    transparent_crc(p_677->g_583.s0, "p_677->g_583.s0", print_hash_value);
    transparent_crc(p_677->g_583.s1, "p_677->g_583.s1", print_hash_value);
    transparent_crc(p_677->g_583.s2, "p_677->g_583.s2", print_hash_value);
    transparent_crc(p_677->g_583.s3, "p_677->g_583.s3", print_hash_value);
    transparent_crc(p_677->g_583.s4, "p_677->g_583.s4", print_hash_value);
    transparent_crc(p_677->g_583.s5, "p_677->g_583.s5", print_hash_value);
    transparent_crc(p_677->g_583.s6, "p_677->g_583.s6", print_hash_value);
    transparent_crc(p_677->g_583.s7, "p_677->g_583.s7", print_hash_value);
    transparent_crc(p_677->g_614.x, "p_677->g_614.x", print_hash_value);
    transparent_crc(p_677->g_614.y, "p_677->g_614.y", print_hash_value);
    transparent_crc(p_677->g_614.z, "p_677->g_614.z", print_hash_value);
    transparent_crc(p_677->g_614.w, "p_677->g_614.w", print_hash_value);
    transparent_crc(p_677->g_620.x, "p_677->g_620.x", print_hash_value);
    transparent_crc(p_677->g_620.y, "p_677->g_620.y", print_hash_value);
    transparent_crc(p_677->g_626.x, "p_677->g_626.x", print_hash_value);
    transparent_crc(p_677->g_626.y, "p_677->g_626.y", print_hash_value);
    transparent_crc(p_677->g_628.x, "p_677->g_628.x", print_hash_value);
    transparent_crc(p_677->g_628.y, "p_677->g_628.y", print_hash_value);
    transparent_crc(p_677->g_628.z, "p_677->g_628.z", print_hash_value);
    transparent_crc(p_677->g_628.w, "p_677->g_628.w", print_hash_value);
    transparent_crc(p_677->g_629.s0, "p_677->g_629.s0", print_hash_value);
    transparent_crc(p_677->g_629.s1, "p_677->g_629.s1", print_hash_value);
    transparent_crc(p_677->g_629.s2, "p_677->g_629.s2", print_hash_value);
    transparent_crc(p_677->g_629.s3, "p_677->g_629.s3", print_hash_value);
    transparent_crc(p_677->g_629.s4, "p_677->g_629.s4", print_hash_value);
    transparent_crc(p_677->g_629.s5, "p_677->g_629.s5", print_hash_value);
    transparent_crc(p_677->g_629.s6, "p_677->g_629.s6", print_hash_value);
    transparent_crc(p_677->g_629.s7, "p_677->g_629.s7", print_hash_value);
    transparent_crc(p_677->g_660, "p_677->g_660", print_hash_value);
    transparent_crc(p_677->g_661, "p_677->g_661", print_hash_value);
    transparent_crc(p_677->g_664, "p_677->g_664", print_hash_value);
    transparent_crc(p_677->g_667, "p_677->g_667", print_hash_value);
    transparent_crc(p_677->g_676.f0, "p_677->g_676.f0", print_hash_value);
    transparent_crc(p_677->g_676.f1, "p_677->g_676.f1", print_hash_value);
    transparent_crc(p_677->g_676.f2, "p_677->g_676.f2", print_hash_value);
    transparent_crc(p_677->g_676.f3, "p_677->g_676.f3", print_hash_value);
    transparent_crc(p_677->g_676.f4, "p_677->g_676.f4", print_hash_value);
    transparent_crc(p_677->g_676.f5, "p_677->g_676.f5", print_hash_value);
    transparent_crc(p_677->g_676.f6, "p_677->g_676.f6", print_hash_value);
    transparent_crc(p_677->g_676.f7, "p_677->g_676.f7", print_hash_value);
    transparent_crc(p_677->g_676.f8, "p_677->g_676.f8", print_hash_value);
    transparent_crc(p_677->g_676.f9, "p_677->g_676.f9", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
