// --atomics 17 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 15,52,12 -l 3,1,3
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

__constant uint32_t permutations[10][9] = {
{1,8,5,4,0,2,3,6,7}, // permutation 0
{5,0,7,8,3,4,6,2,1}, // permutation 1
{6,5,8,7,3,4,2,0,1}, // permutation 2
{8,2,7,3,1,4,6,0,5}, // permutation 3
{2,8,4,6,1,0,7,5,3}, // permutation 4
{8,0,6,3,7,1,5,4,2}, // permutation 5
{2,5,4,8,7,3,0,1,6}, // permutation 6
{7,0,8,1,2,5,6,3,4}, // permutation 7
{2,6,1,4,8,3,0,7,5}, // permutation 8
{6,4,2,1,0,3,5,7,8} // permutation 9
};

// Seed: 5

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile uint8_t  f0;
   volatile uint32_t  f1;
   int64_t  f2;
   uint16_t  f3;
   int32_t  f4;
};

struct S1 {
    volatile union U0 g_16[7];
    volatile VECTOR(int64_t, 2) g_22;
    int32_t g_54;
    int32_t *g_53[6][4][6];
    VECTOR(int64_t, 16) g_68;
    VECTOR(int64_t, 16) g_69;
    VECTOR(int32_t, 4) g_73;
    VECTOR(uint32_t, 4) g_74;
    VECTOR(int64_t, 16) g_75;
    int32_t g_87;
    int32_t g_97[10];
    uint8_t g_106;
    volatile int32_t * volatile *g_107[9];
    uint64_t g_112;
    int64_t g_114;
    int16_t g_138;
    VECTOR(int8_t, 16) g_150;
    VECTOR(int8_t, 4) g_151;
    VECTOR(int8_t, 8) g_152;
    int64_t *g_162;
    int64_t **g_161;
    int64_t ***g_160;
    int32_t g_174;
    VECTOR(uint16_t, 2) g_204;
    uint32_t g_215;
    int32_t ** volatile g_252;
    int32_t *g_255;
    volatile VECTOR(int64_t, 16) g_284;
    VECTOR(int64_t, 16) g_315;
    VECTOR(int64_t, 4) g_347;
    int32_t *g_396;
    int32_t * volatile g_401;
    int32_t * volatile g_402;
    uint16_t *g_412;
    uint32_t g_425;
    volatile union U0 g_461[2][10][9];
    volatile VECTOR(uint8_t, 16) g_473;
    int32_t ** volatile g_481;
    int8_t * volatile g_494;
    int8_t *g_495;
    int8_t *g_498;
    int8_t **g_497;
    VECTOR(int64_t, 2) g_502;
    volatile VECTOR(uint8_t, 4) g_519;
    volatile VECTOR(int8_t, 8) g_521;
    volatile VECTOR(int8_t, 8) g_549;
    VECTOR(int8_t, 16) g_551;
    int32_t *g_557[9];
    union U0 g_598;
    int32_t ** volatile g_619;
    VECTOR(uint8_t, 16) g_648;
    VECTOR(int32_t, 8) g_681;
    volatile VECTOR(int32_t, 16) g_682;
    VECTOR(int16_t, 16) g_707;
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
    uint32_t tid;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S1 * p_709);
int32_t * func_2(int32_t  p_3, int32_t * p_4, struct S1 * p_709);
int32_t * func_6(int32_t * p_7, int32_t * p_8, int32_t * p_9, struct S1 * p_709);
int32_t * func_10(int32_t * p_11, int64_t  p_12, int32_t * p_13, uint8_t  p_14, int64_t  p_15, struct S1 * p_709);
int32_t * func_17(uint32_t  p_18, int32_t * p_19, int32_t  p_20, struct S1 * p_709);
uint8_t  func_25(uint8_t  p_26, int32_t * p_27, uint32_t  p_28, struct S1 * p_709);
int32_t * func_29(int8_t  p_30, int32_t * p_31, struct S1 * p_709);
int32_t * func_32(int64_t  p_33, struct S1 * p_709);
int32_t  func_39(uint64_t  p_40, int32_t  p_41, int16_t  p_42, uint64_t  p_43, int32_t * p_44, struct S1 * p_709);
uint16_t  func_47(int32_t * p_48, int32_t * p_49, int8_t  p_50, struct S1 * p_709);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_709->g_16 p_709->g_22 p_709->l_comm_values p_709->g_comm_values p_709->g_53 p_709->g_54 p_709->g_87 p_709->g_73 p_709->g_75 p_709->g_74 p_709->g_68 p_709->g_112 p_709->g_97 p_709->g_150 p_709->g_151 p_709->g_152 p_709->g_160 p_709->g_69 p_709->g_161 p_709->g_106 p_709->g_114 p_709->g_204 p_709->g_255 p_709->g_315 p_709->g_347 p_709->g_396 p_709->g_402 p_709->g_412 p_709->g_284 p_709->g_425 p_709->g_461 p_709->g_473 p_709->g_481 p_709->g_494 p_709->g_495 p_709->g_497 p_709->g_502 p_709->g_519 p_709->g_521 p_709->g_549 p_709->g_551 p_709->g_619 p_709->g_648 p_709->g_681 p_709->g_682 p_709->g_707
 * writes: p_709->g_53 p_709->g_87 p_709->g_75 p_709->g_97 p_709->g_112 p_709->g_106 p_709->g_54 p_709->g_138 p_709->g_114 p_709->g_255 p_709->g_204 p_709->g_174 p_709->g_425 p_709->g_151 p_709->g_150 p_709->g_495 p_709->g_497 p_709->g_162 p_709->g_557 p_709->g_598.f2
 */
uint32_t  func_1(struct S1 * p_709)
{ /* block id: 4 */
    int32_t l_5 = 0L;
    int32_t l_21 = 0x32A17D0BL;
    int32_t l_139 = 0x3102025CL;
    uint64_t l_385 = 1UL;
    int8_t **l_496 = &p_709->g_495;
    int8_t ***l_499 = &p_709->g_497;
    int8_t **l_501 = &p_709->g_498;
    int8_t ***l_500 = &l_501;
    int64_t **l_513 = &p_709->g_162;
    uint64_t l_514 = 0x5EB42FD08842318EL;
    VECTOR(int64_t, 4) l_530 = (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x488BCB18D45ADD64L), 0x488BCB18D45ADD64L);
    uint16_t l_542 = 0x81A5L;
    VECTOR(uint32_t, 2) l_555 = (VECTOR(uint32_t, 2))(0xF718FE0AL, 0x2A66F713L);
    int16_t l_572 = 0x7053L;
    int32_t l_573 = 6L;
    int32_t l_574 = (-3L);
    int32_t l_575 = 0x66407CDBL;
    int32_t l_576 = (-7L);
    int32_t l_577 = (-7L);
    int32_t l_578 = (-1L);
    int32_t l_580 = 0x56CE6954L;
    int32_t l_581 = 0x58EE506AL;
    int32_t l_582 = 0x15F40FE7L;
    int32_t l_583 = (-1L);
    int32_t l_584 = 0x1AE639CBL;
    int32_t l_585 = 0x60C5A0DEL;
    int32_t l_586 = 0x740F3DE6L;
    int32_t l_587 = 0x486B0BA5L;
    int32_t l_588 = 0x4CD87095L;
    union U0 *l_597 = &p_709->g_598;
    VECTOR(int8_t, 4) l_601 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L));
    int32_t **l_633 = &p_709->g_53[5][0][5];
    int32_t l_651 = 0x2E4ABDECL;
    VECTOR(int16_t, 4) l_705 = (VECTOR(int16_t, 4))(0x4419L, (VECTOR(int16_t, 2))(0x4419L, (-1L)), (-1L));
    int i;
    (*p_709->g_481) = func_2(l_5, func_6(func_10((p_709->g_16[4] , func_17((l_21 &= 0UL), &l_5, (((VECTOR(int64_t, 16))(p_709->g_22.yyxxxyyxyxyyxxyx)).sb > (safe_sub_func_int16_t_s_s(p_709->l_comm_values[(safe_mod_func_uint32_t_u_u(p_709->tid, 9))], ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 2))(65535UL, 1UL)), (uint16_t)(func_25((l_5 > 65529UL), func_29(p_709->l_comm_values[(safe_mod_func_uint32_t_u_u(p_709->tid, 9))], &l_5, p_709), l_139, p_709) <= 0x7CL)))), 0UL, 1UL)), 4UL, ((VECTOR(uint16_t, 4))(0x5643L)), ((VECTOR(uint16_t, 2))(1UL)), ((VECTOR(uint16_t, 2))(65534UL)), ((VECTOR(uint16_t, 2))(7UL)), 65531UL)).se))), p_709)), p_709->g_152.s6, &p_709->g_174, l_385, p_709->g_315.s8, p_709), p_709->g_396, &l_139, p_709), p_709);
    if ((safe_div_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s(((safe_sub_func_uint16_t_u_u((((safe_add_func_int16_t_s_s((safe_mul_func_int8_t_s_s((p_709->g_106 >= (((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))(0x5194475376858CA9L, 0x41151F443B1863DBL)), ((VECTOR(int64_t, 8))(((p_709->g_494 != ((*l_496) = p_709->g_495)) == (((*l_500) = ((*l_499) = p_709->g_497)) == &p_709->g_498)), 3L, ((VECTOR(int64_t, 2))(p_709->g_502.xx)), 2L, 0x34A88B1EDC22DD11L, (-1L), 0x3AC38EF1832A5106L)).s16))).even >= (safe_mod_func_int16_t_s_s((&p_709->g_138 != ((safe_add_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s((((l_139 | ((((safe_add_func_int8_t_s_s((((5L >= ((l_385 >= p_709->g_comm_values[p_709->tid]) >= 0x1F8CD926L)) , (void*)0) == l_513), l_385)) , (void*)0) != &p_709->g_161) == FAKE_DIVERGE(p_709->group_2_offset, get_group_id(2), 10))) && l_5) ^ p_709->g_97[6]), FAKE_DIVERGE(p_709->local_1_offset, get_local_id(1), 10))), l_21)), (-6L))) , &p_709->g_138)), 3UL)))), l_5)), 0x1DC0L)) && l_514) , GROUP_DIVERGE(1, 1)), 1UL)) < 0x19043CE24A4EBBFFL), p_709->g_69.sd)), 14)) && (-3L)), 0x2D75L)))
    { /* block id: 194 */
        VECTOR(uint8_t, 8) l_520 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL);
        uint16_t *l_526 = (void*)0;
        int64_t *l_529 = (void*)0;
        uint32_t l_541[8][4][7] = {{{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL}},{{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL}},{{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL}},{{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL}},{{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL}},{{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL}},{{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL}},{{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL},{0xA68AA2BDL,0xE74A6708L,0xE74A6708L,0xA68AA2BDL,0x26EF4704L,7UL,0UL}}};
        int8_t l_543 = 1L;
        VECTOR(int8_t, 8) l_550 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x49L), 0x49L), 0x49L, 1L, 0x49L);
        VECTOR(int64_t, 16) l_554 = (VECTOR(int64_t, 16))(0x6CDB25C2370FAB66L, (VECTOR(int64_t, 4))(0x6CDB25C2370FAB66L, (VECTOR(int64_t, 2))(0x6CDB25C2370FAB66L, 0x6AC7FADC9A403F82L), 0x6AC7FADC9A403F82L), 0x6AC7FADC9A403F82L, 0x6CDB25C2370FAB66L, 0x6AC7FADC9A403F82L, (VECTOR(int64_t, 2))(0x6CDB25C2370FAB66L, 0x6AC7FADC9A403F82L), (VECTOR(int64_t, 2))(0x6CDB25C2370FAB66L, 0x6AC7FADC9A403F82L), 0x6CDB25C2370FAB66L, 0x6AC7FADC9A403F82L, 0x6CDB25C2370FAB66L, 0x6AC7FADC9A403F82L);
        int32_t *l_556 = (void*)0;
        int8_t *l_558 = &l_543;
        int32_t l_563 = 0x3F3E3227L;
        int32_t *l_564 = &l_563;
        int32_t *l_565 = &p_709->g_97[3];
        int32_t *l_566 = (void*)0;
        int32_t *l_567 = &p_709->g_97[0];
        int32_t *l_568 = &p_709->g_54;
        int32_t *l_569[4][2][10] = {{{&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139},{&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139}},{{&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139},{&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139}},{{&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139},{&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139}},{{&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139},{&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139,&l_563,&l_139,&l_139}}};
        int64_t l_570 = 0x3E5EADA08049A226L;
        int16_t l_571 = 0x0D5CL;
        int32_t l_579 = (-8L);
        uint8_t l_589[4][4][2];
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 4; j++)
            {
                for (k = 0; k < 2; k++)
                    l_589[i][j][k] = 0UL;
            }
        }
        l_21 ^= (*p_709->g_255);
        l_5 |= (safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(uint8_t, 16))(255UL, 1UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 4))(p_709->g_519.yzyx)).ywzwwxyxzxwzyzxx, ((VECTOR(uint8_t, 4))(l_520.s2134)).xzyxyzwwzywyyzxz))).s11)), 0x20L, 255UL)), 0xE2L, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(0x41L, 246UL)), (uint8_t)FAKE_DIVERGE(p_709->group_2_offset, get_group_id(2), 10)))), 255UL, 0xF4L)), 0xE4L, 0x08L, ((((((((l_385 , p_709->g_204.x) , ((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_709->g_521.s76)).yyyxxyxxyxyxxyyx)).hi)).s2 <= ((safe_mod_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((((((((p_709->g_412 == l_526) <= ((safe_add_func_uint8_t_u_u(0x4DL, (((**p_709->g_160) = l_529) != (void*)0))) & ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_530.wxzy)).even)).lo)) < 9UL) && (safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((~(safe_div_func_int64_t_s_s(((safe_mul_func_int16_t_s_s((!(safe_sub_func_int16_t_s_s(p_709->g_comm_values[p_709->tid], l_385))), l_541[4][0][0])) && l_21), p_709->g_75.se))), 2)), 18446744073709551610UL))) && FAKE_DIVERGE(p_709->group_0_offset, get_group_id(0), 10)) && l_530.w) , 0xD2L), l_542)), 3UL)) ^ p_709->g_425)) , p_709->g_106)) < FAKE_DIVERGE(p_709->global_1_offset, get_global_id(1), 10)) ^ 0xE8F5L) && GROUP_DIVERGE(0, 1)) >= l_542) != l_543) | 0x48L), 0xCFL, 0xCFL)), ((VECTOR(uint8_t, 16))(0x6DL))))).s5, l_21)) , l_543)));
        (*p_709->g_255) = (safe_lshift_func_int8_t_s_s((l_541[4][0][0] == (safe_unary_minus_func_int8_t_s((((p_709->g_502.y < (((*l_558) = (((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 8))(p_709->g_549.s57472156)).s5016462734157721, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))((((VECTOR(int64_t, 2))(0L, 0L)).even ^ ((**p_709->g_481) != l_541[3][1][4])), ((VECTOR(int8_t, 4))(0x07L, 0x3FL, 1L, 0x41L)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_550.s3673735374170077)).sed)).even, 0x6FL, (-1L))).s0156223622767325)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(p_709->g_551.s1400a1cf)))))).s5113420411505561))).sb < (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 8))(l_554.s26d5b108)).s7, ((0L ^ l_555.x) == (l_556 != (p_709->g_557[2] = &p_709->g_87))))))) == ((((l_563 |= (safe_div_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s((l_520.s1 > 6L), 7)), l_554.s3))) , l_550.s6) && p_709->g_551.s9) < 0xCA936188D172AEDDL))) >= l_542) , l_555.x)))), 1));
        l_589[3][1][1]++;
    }
    else
    { /* block id: 203 */
        union U0 *l_596 = (void*)0;
        int8_t ***l_604 = &l_496;
        int64_t l_609[10] = {0x706EA8E8F42CC0FAL,0x60A10409DC9C537EL,0x5ABBABED06070277L,0x60A10409DC9C537EL,0x706EA8E8F42CC0FAL,0x706EA8E8F42CC0FAL,0x60A10409DC9C537EL,0x5ABBABED06070277L,0x60A10409DC9C537EL,0x706EA8E8F42CC0FAL};
        int16_t *l_610 = &l_572;
        VECTOR(int16_t, 16) l_625 = (VECTOR(int16_t, 16))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 0x155FL), 0x155FL), 0x155FL, 8L, 0x155FL, (VECTOR(int16_t, 2))(8L, 0x155FL), (VECTOR(int16_t, 2))(8L, 0x155FL), 8L, 0x155FL, 8L, 0x155FL);
        VECTOR(int32_t, 16) l_632 = (VECTOR(int32_t, 16))(0x7DD553E9L, (VECTOR(int32_t, 4))(0x7DD553E9L, (VECTOR(int32_t, 2))(0x7DD553E9L, 8L), 8L), 8L, 0x7DD553E9L, 8L, (VECTOR(int32_t, 2))(0x7DD553E9L, 8L), (VECTOR(int32_t, 2))(0x7DD553E9L, 8L), 0x7DD553E9L, 8L, 0x7DD553E9L, 8L);
        int32_t **l_634 = &p_709->g_557[2];
        uint8_t l_657 = 250UL;
        int i;
        (*p_709->g_255) ^= (safe_rshift_func_uint16_t_u_u((safe_add_func_int16_t_s_s(((*l_610) = ((p_709->g_551.s9 && (((l_596 == l_597) ^ (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))(l_601.ww)).odd, (-1L)))) , (((safe_sub_func_uint32_t_u_u((((0x6E7D8B7CL > 8UL) , (((*l_500) = (*l_499)) == ((*l_604) = (void*)0))) > (((((((safe_sub_func_int32_t_s_s((((((safe_sub_func_uint64_t_u_u(p_709->g_75.s1, l_609[4])) > l_385) || l_609[0]) , 0x722080ADE8941C86L) ^ l_609[4]), l_530.y)) > l_584) , (*p_709->g_160)) == (void*)0) | 0x5EAEC6BA7F0C275FL) >= 0x6B89A65CL) > FAKE_DIVERGE(p_709->local_2_offset, get_local_id(2), 10))), 4294967295UL)) , l_580) && 0xE12FL))) & l_601.w)), l_609[4])), p_709->g_87));
        if (l_583)
        { /* block id: 208 */
            uint16_t l_636 = 1UL;
            int32_t l_656 = 0x48FE9360L;
            int32_t l_660 = 0x65561AB8L;
            int32_t l_664 = 0x7B79DE12L;
            int32_t l_671 = 3L;
            for (l_576 = 15; (l_576 == 2); --l_576)
            { /* block id: 211 */
                (*p_709->g_255) = (safe_add_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(0x20L, p_709->g_22.x)), 249UL));
            }
            for (p_709->g_87 = 0; (p_709->g_87 <= 14); p_709->g_87 = safe_add_func_uint8_t_u_u(p_709->g_87, 1))
            { /* block id: 216 */
                uint32_t l_635 = 4294967289UL;
                int32_t l_658 = 0x7797B5A9L;
                int32_t l_659 = (-7L);
                int32_t l_670 = 0x0110407DL;
                int32_t l_672 = (-5L);
                (*p_709->g_619) = (*p_709->g_481);
                for (l_542 = 11; (l_542 == 54); l_542 = safe_add_func_int32_t_s_s(l_542, 1))
                { /* block id: 220 */
                    uint16_t l_624 = 3UL;
                    int i, j;
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_709->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 9)), permutations[(safe_mod_func_uint32_t_u_u((((safe_add_func_uint64_t_u_u((l_624 ^ p_709->g_347.w), (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(FAKE_DIVERGE(p_709->global_1_offset, get_global_id(1), 10), ((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_625.sfecf)), 0x3DEFL, (safe_add_func_uint32_t_u_u(((((((safe_lshift_func_uint16_t_u_s((~((-6L) | (0L > (safe_mod_func_uint64_t_u_u(((l_632.sc ^= (0x630BL <= l_609[4])) , ((-1L) == (((VECTOR(int8_t, 4))(3L, 2L, 1L, 0x0AL)).z == ((((l_633 != (void*)0) , (void*)0) == l_634) & l_635)))), l_636))))), l_636)) || p_709->g_549.s4) , p_709->g_519.x) <= p_709->g_347.y) >= l_624) | l_636), 1UL)), 1L, 0L)).s4405171031113271)).s39)))), ((VECTOR(int16_t, 2))(0x17F1L))))).yyxy, ((VECTOR(uint16_t, 4))(0UL))))), 0UL, ((VECTOR(uint32_t, 4))(0xA8A5100FL)), 0x836205E2L, 0x5B9B0B75L, ((VECTOR(uint32_t, 4))(4294967295UL)))).odd)).s5 >= l_624))) , 0L) == 5UL), 10))][(safe_mod_func_uint32_t_u_u(p_709->tid, 9))]));
                }
                for (p_709->g_598.f2 = 0; (p_709->g_598.f2 < 20); p_709->g_598.f2 = safe_add_func_int64_t_s_s(p_709->g_598.f2, 4))
                { /* block id: 228 */
                    VECTOR(int8_t, 8) l_641 = (VECTOR(int8_t, 8))(0x77L, (VECTOR(int8_t, 4))(0x77L, (VECTOR(int8_t, 2))(0x77L, 0x14L), 0x14L), 0x14L, 0x77L, 0x14L);
                    uint32_t l_673 = 4294967289UL;
                    uint32_t *l_680[9][8][2] = {{{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635}},{{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635}},{{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635}},{{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635}},{{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635}},{{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635}},{{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635}},{{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635}},{{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635},{&l_635,&l_635}}};
                    int i, j, k;
                    if ((safe_mul_func_uint8_t_u_u((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 4))(l_641.s5340)).zzxywyzx, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(0L, (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(0x8CL, (safe_lshift_func_int8_t_s_s(((((VECTOR(uint16_t, 2))(0xF39CL, 0x5D61L)).even < l_636) & l_636), 3)), 253UL, ((VECTOR(uint8_t, 16))(p_709->g_648.s48e60d9560a131e5)).s9, 0x1DL, ((VECTOR(uint8_t, 8))((safe_sub_func_int32_t_s_s((((VECTOR(uint8_t, 4))(p_709->g_519.z, l_636, 0xDFL, 0x07L)).y & (l_651 && (safe_div_func_int64_t_s_s(((safe_sub_func_uint16_t_u_u((&p_709->g_495 == (*l_604)), 6L)) ^ p_709->g_74.x), 0x244F7C985E66F425L)))), l_656)), ((VECTOR(uint8_t, 2))(255UL)), 0x6CL, 0xF0L, ((VECTOR(uint8_t, 2))(0xAFL)), 0x9DL)), 1UL, 1UL, 8UL)))).s4af2)).w < l_635))), 2)) > p_709->g_347.w), 250UL, 5UL, 0x8CL, ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(1UL)), ((VECTOR(uint8_t, 8))(0x24L)))).s8b5a)).xwzwzzwz))).s03)).yyyxxyxyxxyxyxyy)).se <= l_635), p_709->l_comm_values[(safe_mod_func_uint32_t_u_u(p_709->tid, 9))])))
                    { /* block id: 229 */
                        if (l_657)
                            break;
                    }
                    else
                    { /* block id: 231 */
                        int32_t *l_661 = &l_582;
                        int32_t *l_662 = &l_660;
                        int32_t *l_663 = (void*)0;
                        int32_t *l_665 = &l_581;
                        int32_t *l_666 = &l_577;
                        int32_t *l_667 = &l_658;
                        int32_t *l_668 = &l_586;
                        int32_t *l_669[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_669[i] = &p_709->g_174;
                        --l_673;
                    }
                    if ((atomic_inc(&p_709->g_atomic_input[17 * get_linear_group_id() + 3]) == 2))
                    { /* block id: 235 */
                        uint32_t l_676 = 1UL;
                        uint16_t l_677 = 1UL;
                        l_677 |= l_676;
                        unsigned int result = 0;
                        result += l_676;
                        result += l_677;
                        atomic_add(&p_709->g_special_values[17 * get_linear_group_id() + 3], result);
                    }
                    else
                    { /* block id: 237 */
                        (1 + 1);
                    }
                    (*p_709->g_255) = (safe_sub_func_uint32_t_u_u((l_656 &= 0xB8405E34L), ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(p_709->g_681.s7462)), 9L, ((VECTOR(int32_t, 2))(p_709->g_682.s67)), (-5L))), ((VECTOR(int32_t, 2))(3L, 7L)).yxyxxxyy))).s7));
                }
            }
            for (l_572 = (-1); (l_572 >= (-27)); l_572 = safe_sub_func_uint32_t_u_u(l_572, 6))
            { /* block id: 246 */
                int32_t *l_685 = (void*)0;
                int32_t *l_686 = &l_575;
                int32_t *l_687 = (void*)0;
                int32_t *l_688 = &l_584;
                int32_t *l_689 = &l_651;
                int32_t *l_690 = &l_577;
                int32_t *l_691 = &p_709->g_174;
                int32_t *l_692 = &l_576;
                int32_t *l_693 = &l_21;
                int32_t *l_694 = &l_671;
                int32_t *l_695 = &p_709->g_97[1];
                int32_t *l_696 = (void*)0;
                int32_t *l_697 = &l_671;
                int32_t *l_698[5];
                uint16_t l_699 = 0xF7A0L;
                int i;
                for (i = 0; i < 5; i++)
                    l_698[i] = &l_576;
                (*p_709->g_255) = 0L;
                l_699++;
                (*l_633) = func_17((*l_690), (*p_709->g_481), p_709->g_425, p_709);
            }
        }
        else
        { /* block id: 251 */
            VECTOR(int16_t, 16) l_704 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4463L), 0x4463L), 0x4463L, 1L, 0x4463L, (VECTOR(int16_t, 2))(1L, 0x4463L), (VECTOR(int16_t, 2))(1L, 0x4463L), 1L, 0x4463L, 1L, 0x4463L);
            VECTOR(int16_t, 2) l_706 = (VECTOR(int16_t, 2))(0x548FL, (-1L));
            int32_t *l_708 = &l_580;
            int i;
            (*p_709->g_255) = (-9L);
            (*l_708) ^= (safe_div_func_uint16_t_u_u((p_709->g_151.y > ((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 8))(l_704.s26f72286)).even, ((VECTOR(int16_t, 16))(0x6D86L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(l_705.wywzzwzzwzzyyywz)).sc0, (int16_t)((0x3C14BEDAL >= GROUP_DIVERGE(1, 1)) == ((*l_610) = ((**p_709->g_481) , l_625.sf)))))), 0x5191L, 0x26CCL)), 0x1CFFL, (~l_704.sa), 1L, ((VECTOR(int16_t, 2))(l_706.yx)), ((VECTOR(int16_t, 4))(p_709->g_707.s8cb9)), (-1L), 5L)).s162b))).y), 0xBFF1L));
        }
    }
    return p_709->g_69.sa;
}


/* ------------------------------------------ */
/* 
 * reads : p_709->g_97 p_709->g_150 p_709->g_54 p_709->g_461 p_709->g_473
 * writes: p_709->g_97 p_709->g_151 p_709->g_150 p_709->g_54
 */
int32_t * func_2(int32_t  p_3, int32_t * p_4, struct S1 * p_709)
{ /* block id: 170 */
    int32_t *l_431 = &p_709->g_97[0];
    int32_t l_432 = (-6L);
    int32_t l_435 = (-8L);
    int32_t l_436 = 0x5A1DEB6DL;
    int32_t l_437[3];
    int32_t l_438[4][1] = {{0x6D259B0FL},{0x6D259B0FL},{0x6D259B0FL},{0x6D259B0FL}};
    uint64_t l_439 = 0x3AD338A6764E20A3L;
    uint32_t l_447 = 1UL;
    int8_t *l_468 = (void*)0;
    VECTOR(int16_t, 2) l_474 = (VECTOR(int16_t, 2))(0x7E7CL, 5L);
    int8_t *l_475 = (void*)0;
    int8_t *l_476 = (void*)0;
    int32_t *l_477 = &l_436;
    VECTOR(uint64_t, 8) l_478 = (VECTOR(uint64_t, 8))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0x1027F3C70D02CA83L), 0x1027F3C70D02CA83L), 0x1027F3C70D02CA83L, 18446744073709551613UL, 0x1027F3C70D02CA83L);
    int32_t *l_479[3][6][6] = {{{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435}},{{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435}},{{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435},{&l_437[0],&l_435,(void*)0,&p_709->g_174,(void*)0,&l_435}}};
    int32_t l_480 = 0x11A8FDCAL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_437[i] = (-2L);
    l_432 |= ((*l_431) = 0x409278D8L);
    if ((*l_431))
    { /* block id: 173 */
        return &p_709->g_54;
    }
    else
    { /* block id: 175 */
        int32_t *l_433 = &p_709->g_54;
        int32_t *l_434[1];
        int8_t *l_442 = (void*)0;
        VECTOR(int32_t, 4) l_450 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L);
        int i;
        for (i = 0; i < 1; i++)
            l_434[i] = (void*)0;
        --l_439;
        (*l_433) = ((p_709->g_150.s4 ^= (p_709->g_151.x = ((VECTOR(int8_t, 4))(0x3BL, 0x74L, 0x06L, (-1L))).z)) && (~((*l_431) = (safe_mod_func_int64_t_s_s((*l_431), (safe_lshift_func_uint16_t_u_u((*l_433), 1)))))));
        --l_447;
        (*l_433) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_450.zy)), 0x20F5BF3BL, (-1L))).yxxzzxxzxyxzxwyw)).s5;
    }
    l_480 |= (l_478.s3 = ((*l_477) = ((+0x46L) && (safe_lshift_func_int8_t_s_s((safe_div_func_int8_t_s_s(((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((p_709->g_461[1][9][6] , ((VECTOR(uint8_t, 4))(1UL, ((p_3 < (safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((-4L), (0x79L & (safe_rshift_func_int8_t_s_s((p_709->g_151.z = (0x2331L < (((*l_431) = (-7L)) != ((safe_mod_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(p_3, ((VECTOR(uint8_t, 8))(p_709->g_473.sce4dcdc1)).s0)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_474.yyyxyyxxxxxxyyxy)).s4f)).odd)) && (&l_437[2] == (void*)0))))), 2))), 0x6B53138AL, 0x5B2CC1D5L)).yyzwwzxwxxwxwzzx)).s1, p_3))) > GROUP_DIVERGE(2, 1)), 0UL, 0x7BL)).z), l_447)), 0x1DL)) , 0L), GROUP_DIVERGE(1, 1))), 2)))));
    return &p_709->g_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_709->g_402 p_709->g_97 p_709->g_114 p_709->g_75 p_709->g_412 p_709->g_284 p_709->g_425 p_709->g_150
 * writes: p_709->g_97 p_709->g_114 p_709->g_106 p_709->g_425
 */
int32_t * func_6(int32_t * p_7, int32_t * p_8, int32_t * p_9, struct S1 * p_709)
{ /* block id: 154 */
    int16_t *l_399 = &p_709->g_138;
    int32_t l_400 = 1L;
    uint16_t *l_413 = (void*)0;
    int32_t *l_426 = &p_709->g_87;
    int32_t l_429 = 0x543EE692L;
    int32_t *l_430 = (void*)0;
    l_400 = (safe_rshift_func_uint16_t_u_u((l_399 == ((&p_709->g_16[4] != &p_709->g_16[5]) , (void*)0)), 1));
    (*p_709->g_402) &= (*p_9);
    for (p_709->g_114 = 0; (p_709->g_114 != 10); p_709->g_114 = safe_add_func_int8_t_s_s(p_709->g_114, 1))
    { /* block id: 159 */
        int8_t l_411 = 1L;
        uint8_t *l_418 = &p_709->g_106;
        VECTOR(uint16_t, 8) l_419 = (VECTOR(uint16_t, 8))(0xA1D8L, (VECTOR(uint16_t, 4))(0xA1D8L, (VECTOR(uint16_t, 2))(0xA1D8L, 8UL), 8UL), 8UL, 0xA1D8L, 8UL);
        int32_t *l_421 = &p_709->g_87;
        int32_t **l_420 = &l_421;
        int32_t *l_423[6] = {(void*)0,&p_709->g_87,(void*)0,(void*)0,&p_709->g_87,(void*)0};
        int32_t **l_422 = &l_423[2];
        uint32_t *l_424 = &p_709->g_425;
        int32_t l_427 = 0x7DAAFCD3L;
        int32_t l_428 = 0x79A6021FL;
        int i;
        l_429 |= ((l_428 = ((safe_rshift_func_uint8_t_u_s(p_709->g_75.s6, 4)) == (((l_427 = (safe_mod_func_uint8_t_u_u(((safe_add_func_int16_t_s_s(((l_411 , (l_413 = p_709->g_412)) != ((safe_div_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(((*l_418) = (p_709->g_284.s6 && l_400)), 6)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_419.s32)), GROUP_DIVERGE(0, 1), ((-1L) | (((*l_422) = ((*l_420) = p_9)) == (((*l_424) |= (p_7 == p_9)) , l_426))), l_419.s0, ((VECTOR(uint16_t, 2))(65535UL)), 1UL)).s4)) , (void*)0)), l_400)) == p_709->g_150.s1), GROUP_DIVERGE(2, 1)))) || l_400) | 1L))) , (-1L));
    }
    return l_430;
}


/* ------------------------------------------ */
/* 
 * reads : p_709->g_347 p_709->g_315 p_709->g_255
 * writes: p_709->g_255 p_709->g_174
 */
int32_t * func_10(int32_t * p_11, int64_t  p_12, int32_t * p_13, uint8_t  p_14, int64_t  p_15, struct S1 * p_709)
{ /* block id: 149 */
    int64_t l_390 = 0L;
    int64_t **l_391 = &p_709->g_162;
    int32_t **l_394 = &p_709->g_255;
    int32_t l_395[1][9] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L}};
    int i, j;
    l_395[0][0] = ((*p_13) = (safe_sub_func_uint8_t_u_u(((((safe_sub_func_uint32_t_u_u(l_390, l_390)) < (0x16EBED0AA088957DL || (l_391 == l_391))) , (((safe_lshift_func_uint8_t_u_s(((p_14 <= GROUP_DIVERGE(0, 1)) >= (-6L)), (((*l_394) = (void*)0) == p_13))) , 1L) < p_709->g_347.z)) > p_709->g_315.s1), p_12)));
    return (*l_394);
}


/* ------------------------------------------ */
/* 
 * reads : p_709->g_151 p_709->g_75 p_709->g_204 p_709->g_114 p_709->g_68 p_709->g_255 p_709->g_54 p_709->g_16 p_709->g_106 p_709->g_315 p_709->g_152 p_709->g_69 p_709->g_87
 * writes: p_709->g_53 p_709->g_255 p_709->g_138 p_709->g_204 p_709->g_114 p_709->g_54 p_709->g_106
 */
int32_t * func_17(uint32_t  p_18, int32_t * p_19, int32_t  p_20, struct S1 * p_709)
{ /* block id: 85 */
    int32_t **l_251 = &p_709->g_53[5][0][3];
    int32_t *l_254 = (void*)0;
    int32_t **l_253[8][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    int64_t ***l_260 = &p_709->g_161;
    VECTOR(uint16_t, 4) l_261 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65528UL), 65528UL);
    int16_t *l_264 = &p_709->g_138;
    VECTOR(uint16_t, 4) l_267 = (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 0UL), 0UL);
    uint16_t *l_272 = (void*)0;
    uint16_t *l_273 = (void*)0;
    int64_t *l_274 = &p_709->g_114;
    VECTOR(int64_t, 2) l_281 = (VECTOR(int64_t, 2))((-1L), 0x640A8174C16D5E26L);
    VECTOR(int64_t, 16) l_282 = (VECTOR(int64_t, 16))(2L, (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 0x5DCB58361EA858DBL), 0x5DCB58361EA858DBL), 0x5DCB58361EA858DBL, 2L, 0x5DCB58361EA858DBL, (VECTOR(int64_t, 2))(2L, 0x5DCB58361EA858DBL), (VECTOR(int64_t, 2))(2L, 0x5DCB58361EA858DBL), 2L, 0x5DCB58361EA858DBL, 2L, 0x5DCB58361EA858DBL);
    VECTOR(int64_t, 8) l_283 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x749A396AC79A0483L), 0x749A396AC79A0483L), 0x749A396AC79A0483L, 1L, 0x749A396AC79A0483L);
    VECTOR(uint8_t, 2) l_291 = (VECTOR(uint8_t, 2))(1UL, 1UL);
    int16_t l_296 = (-7L);
    VECTOR(int32_t, 8) l_300 = (VECTOR(int32_t, 8))(0x5EC590E7L, (VECTOR(int32_t, 4))(0x5EC590E7L, (VECTOR(int32_t, 2))(0x5EC590E7L, 0x6653C8BCL), 0x6653C8BCL), 0x6653C8BCL, 0x5EC590E7L, 0x6653C8BCL);
    uint32_t l_332 = 5UL;
    VECTOR(uint8_t, 8) l_352 = (VECTOR(uint8_t, 8))(0x02L, (VECTOR(uint8_t, 4))(0x02L, (VECTOR(uint8_t, 2))(0x02L, 253UL), 253UL), 253UL, 0x02L, 253UL);
    int i, j;
    if ((atomic_inc(&p_709->g_atomic_input[17 * get_linear_group_id() + 12]) == 1))
    { /* block id: 87 */
        int8_t l_218 = 0x1FL;
        uint8_t l_219 = 0xD4L;
        int32_t l_222 = 7L;
        VECTOR(int32_t, 4) l_223 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x72DB749BL), 0x72DB749BL);
        VECTOR(int32_t, 4) l_224 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x46F4178DL), 0x46F4178DL);
        VECTOR(int32_t, 8) l_225 = (VECTOR(int32_t, 8))(0x5DF1C7ABL, (VECTOR(int32_t, 4))(0x5DF1C7ABL, (VECTOR(int32_t, 2))(0x5DF1C7ABL, 0x4A36ACEAL), 0x4A36ACEAL), 0x4A36ACEAL, 0x5DF1C7ABL, 0x4A36ACEAL);
        int32_t l_226 = 0L;
        int8_t l_227 = 0x1AL;
        uint16_t l_228 = 65534UL;
        VECTOR(int32_t, 2) l_229 = (VECTOR(int32_t, 2))(0x468DB5D0L, 0x57659D26L);
        VECTOR(int32_t, 16) l_230 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x691399ABL), 0x691399ABL), 0x691399ABL, 1L, 0x691399ABL, (VECTOR(int32_t, 2))(1L, 0x691399ABL), (VECTOR(int32_t, 2))(1L, 0x691399ABL), 1L, 0x691399ABL, 1L, 0x691399ABL);
        VECTOR(int32_t, 16) l_231 = (VECTOR(int32_t, 16))(0x78F4F5EAL, (VECTOR(int32_t, 4))(0x78F4F5EAL, (VECTOR(int32_t, 2))(0x78F4F5EAL, (-1L)), (-1L)), (-1L), 0x78F4F5EAL, (-1L), (VECTOR(int32_t, 2))(0x78F4F5EAL, (-1L)), (VECTOR(int32_t, 2))(0x78F4F5EAL, (-1L)), 0x78F4F5EAL, (-1L), 0x78F4F5EAL, (-1L));
        int8_t l_232 = 0x3BL;
        int64_t l_233 = 0x46E1EE88E772E9BBL;
        int64_t l_234 = 0x3B9B7C93A240FA44L;
        int32_t l_235[7] = {4L,1L,4L,4L,1L,4L,4L};
        uint16_t l_236 = 8UL;
        int i;
        ++l_219;
        l_234 |= ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_222, 1L, ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 4))(6L, 0x1F8EDF3BL, 0x59EE4973L, 1L)), ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_223.xxyywwwx)).s32, ((VECTOR(int32_t, 8))(8L, (-3L), ((VECTOR(int32_t, 2))(l_224.xx)), 0x6072BF6EL, 0x069CBDF8L, 0L, 8L)).s31, ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 16))((-1L), (-1L), ((VECTOR(int32_t, 2))(l_225.s43)), 0x77E27F84L, 1L, ((VECTOR(int32_t, 8))(l_226, l_227, ((VECTOR(int32_t, 2))((-4L), 1L)).lo, (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(1UL, 0x3CFE28CE12BB00D9L)))).lo , l_228), 0x664F549EL, ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_229.yxyxxxyy)).s54, ((VECTOR(int32_t, 2))(l_230.sdc)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_231.s1de906dd)).s1635416031370552)).se8))), 0x69D5A3EAL)), 0x12171F3EL, (-1L))).s8732, ((VECTOR(int32_t, 2))(6L, 0L)).yxyy))).lo))), (int32_t)(l_232 , l_233)))), 1L)).hi, ((VECTOR(int32_t, 4))(0x62D5DD3EL)), ((VECTOR(int32_t, 4))(0x692BAA9EL))))))).zyyzywxwzwwxywzx, ((VECTOR(int32_t, 16))(0x6353BDB6L)), ((VECTOR(int32_t, 16))((-6L)))))).sac3a, ((VECTOR(int32_t, 4))(0x5BBFAF5CL))))), ((VECTOR(int32_t, 8))(0x178BD9ABL)), 5L, 0x2938F1B1L)).even)).hi)).wywxzyzxyxxzywzx, ((VECTOR(int32_t, 16))(0x5C52ED2AL)), ((VECTOR(int32_t, 16))(1L))))).s0ed2)).zzzywzwxxxyzyxxx, (int32_t)1L))).s3e)), ((VECTOR(int32_t, 2))((-1L)))))).even;
        l_236 = l_235[3];
        for (l_225.s7 = 0; (l_225.s7 != (-20)); l_225.s7--)
        { /* block id: 93 */
            uint32_t l_239 = 0xCC7936F8L;
            int32_t l_241 = (-3L);
            int32_t *l_240 = &l_241;
            int32_t *l_242 = &l_241;
            union U0 l_244 = {0UL};/* VOLATILE GLOBAL l_244 */
            union U0 *l_243 = &l_244;
            int32_t l_245[7][4][8] = {{{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL}},{{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL}},{{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL}},{{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL}},{{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL}},{{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL}},{{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL},{0x54772FBBL,0x2A755D2BL,6L,(-1L),1L,9L,5L,0x56B5343FL}}};
            int64_t l_246 = 0x1C207EE671A5FC12L;
            int8_t l_247[7][1] = {{0L},{0L},{0L},{0L},{0L},{0L},{0L}};
            int64_t l_248 = 0x5A65C302F5D9F585L;
            int32_t *l_249 = &l_245[6][0][3];
            int32_t *l_250[5] = {&l_245[4][3][5],&l_245[4][3][5],&l_245[4][3][5],&l_245[4][3][5],&l_245[4][3][5]};
            int i, j, k;
            l_240 = (l_239 , (l_242 = l_240));
            l_243 = (void*)0;
            l_250[2] = (l_245[4][3][5] , ((l_246 , (l_247[6][0] , l_248)) , l_249));
            l_231.sd |= (-8L);
        }
        unsigned int result = 0;
        result += l_218;
        result += l_219;
        result += l_222;
        result += l_223.w;
        result += l_223.z;
        result += l_223.y;
        result += l_223.x;
        result += l_224.w;
        result += l_224.z;
        result += l_224.y;
        result += l_224.x;
        result += l_225.s7;
        result += l_225.s6;
        result += l_225.s5;
        result += l_225.s4;
        result += l_225.s3;
        result += l_225.s2;
        result += l_225.s1;
        result += l_225.s0;
        result += l_226;
        result += l_227;
        result += l_228;
        result += l_229.y;
        result += l_229.x;
        result += l_230.sf;
        result += l_230.se;
        result += l_230.sd;
        result += l_230.sc;
        result += l_230.sb;
        result += l_230.sa;
        result += l_230.s9;
        result += l_230.s8;
        result += l_230.s7;
        result += l_230.s6;
        result += l_230.s5;
        result += l_230.s4;
        result += l_230.s3;
        result += l_230.s2;
        result += l_230.s1;
        result += l_230.s0;
        result += l_231.sf;
        result += l_231.se;
        result += l_231.sd;
        result += l_231.sc;
        result += l_231.sb;
        result += l_231.sa;
        result += l_231.s9;
        result += l_231.s8;
        result += l_231.s7;
        result += l_231.s6;
        result += l_231.s5;
        result += l_231.s4;
        result += l_231.s3;
        result += l_231.s2;
        result += l_231.s1;
        result += l_231.s0;
        result += l_232;
        result += l_233;
        result += l_234;
        int l_235_i0;
        for (l_235_i0 = 0; l_235_i0 < 7; l_235_i0++) {
            result += l_235[l_235_i0];
        }
        result += l_236;
        atomic_add(&p_709->g_special_values[17 * get_linear_group_id() + 12], result);
    }
    else
    { /* block id: 100 */
        (1 + 1);
    }
    p_709->g_255 = ((*l_251) = &p_709->g_54);
    (*p_709->g_255) = (safe_sub_func_uint16_t_u_u(((1UL || (l_260 == &p_709->g_161)) & ((((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 4))(l_261.wxyw)).xwwxzxyyyxzxzzxy, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 16))((safe_mod_func_uint16_t_u_u((p_20 , p_709->g_151.y), ((*l_264) = p_709->g_151.z))), p_20, (((*l_274) = (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(0x4AL, 0x27L, 0x50L, 0x2AL)).zyzwywzz)).s1 & ((safe_lshift_func_uint8_t_u_s((((VECTOR(uint16_t, 16))(l_267.wzwyyyxxyywywwzx)).s7 < (safe_lshift_func_uint8_t_u_u((p_709->g_75.sc && ((VECTOR(int8_t, 8))((((safe_mul_func_uint16_t_u_u((p_709->g_204.y ^= p_20), p_709->g_114)) & p_709->g_75.s0) != p_18), 1L, 0L, 0L, 1L, (-1L), (-9L), 1L)).s1), 3))), p_709->g_68.s7)) || (*p_709->g_255)))) < (-7L)), 65534UL, 0x94EEL, 65535UL, 0UL, p_709->g_204.x, p_709->g_114, 0x3EEDL, 0x2412L, ((VECTOR(uint16_t, 4))(9UL)), 0UL)), ((VECTOR(uint16_t, 16))(8UL)), ((VECTOR(uint16_t, 16))(0xC281L))))).hi)).s4540542377620021)), ((VECTOR(uint16_t, 16))(0x2505L))))).s5 | (-3L)) && p_20)), p_18));
    for (p_20 = 0; (p_20 > (-14)); p_20--)
    { /* block id: 111 */
        VECTOR(int64_t, 8) l_285 = (VECTOR(int64_t, 8))(0x3C241BF66CF317EFL, (VECTOR(int64_t, 4))(0x3C241BF66CF317EFL, (VECTOR(int64_t, 2))(0x3C241BF66CF317EFL, 0x03CA4B45ED650913L), 0x03CA4B45ED650913L), 0x03CA4B45ED650913L, 0x3C241BF66CF317EFL, 0x03CA4B45ED650913L);
        uint16_t **l_288 = &l_272;
        int16_t l_289 = 4L;
        VECTOR(uint64_t, 8) l_290 = (VECTOR(uint64_t, 8))(18446744073709551612UL, (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x10425D630DADCC15L), 0x10425D630DADCC15L), 0x10425D630DADCC15L, 18446744073709551612UL, 0x10425D630DADCC15L);
        int64_t l_297 = 1L;
        int32_t l_327 = 0x357FBEECL;
        VECTOR(int16_t, 16) l_367 = (VECTOR(int16_t, 16))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 1L), 1L), 1L, 8L, 1L, (VECTOR(int16_t, 2))(8L, 1L), (VECTOR(int16_t, 2))(8L, 1L), 8L, 1L, 8L, 1L);
        VECTOR(uint32_t, 8) l_382 = (VECTOR(uint32_t, 8))(0x235C69AFL, (VECTOR(uint32_t, 4))(0x235C69AFL, (VECTOR(uint32_t, 2))(0x235C69AFL, 5UL), 5UL), 5UL, 0x235C69AFL, 5UL);
        int32_t *l_383 = &p_709->g_97[0];
        uint32_t l_384 = 4294967295UL;
        int i;
        if ((safe_lshift_func_int8_t_s_u((((p_709->g_16[4] , ((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_709->group_0_offset, get_group_id(0), 10), 1)) != ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 8))(l_281.yxyyxxxy)).s6614222266070136, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_20, ((VECTOR(int64_t, 2))(l_282.scc)), (-7L))).wxzxwyww)).s61)).yyyxyyxxyyxxxyyx, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(0L, (-1L), (-1L), ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(6L, 8L)), ((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_283.s64)), (-1L), 8L)).ywxzwwzy, ((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 2))(p_709->g_284.s9c)).xxxy, ((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_285.s4477073474050072)).hi)).s4423664041160202, ((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 2))(0x2CF764F22F82E15EL, 1L)).xyxyxxxyyyyxxyyy, (int64_t)((((((*l_264) = (!(((safe_add_func_int32_t_s_s((1UL > (l_264 != ((*l_288) = l_272))), (l_289 || ((VECTOR(uint64_t, 16))(l_290.s3116604024474523)).s5))) == ((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 4))(l_291.yyxx)), (uint8_t)(safe_lshift_func_uint8_t_u_u((((((safe_div_func_int8_t_s_s(p_709->g_22.y, (p_709->g_73.z , l_290.s7))) < 0x8EA0L) == l_296) , p_20) == 3L), 1)), (uint8_t)p_18))).w) < p_18))) >= p_709->g_204.y) == l_290.s1) > l_297) == 0x6C8330DDA571C69DL))))))).s0ebe))).wzzzxyyy))).s01))), 2L, p_18, ((VECTOR(int64_t, 4))((-1L))), ((VECTOR(int64_t, 2))((-2L))), ((VECTOR(int64_t, 2))(1L)), 0x5789324946EFC33BL)))).sfa))).yyyx)).yyxzzzwyyzwyyxyx))).s0af8)).w)) && FAKE_DIVERGE(p_709->group_1_offset, get_group_id(1), 10)) >= p_18), 5)))
        { /* block id: 114 */
            for (p_709->g_106 = (-16); (p_709->g_106 <= 5); p_709->g_106 = safe_add_func_int64_t_s_s(p_709->g_106, 7))
            { /* block id: 117 */
                return p_19;
            }
            if ((*p_19))
                continue;
        }
        else
        { /* block id: 121 */
            uint8_t *l_322[6];
            uint64_t *l_325 = &p_709->g_112;
            uint16_t *l_326 = (void*)0;
            int32_t l_328 = 0x7391EC0AL;
            int32_t l_331 = (-7L);
            int16_t *l_368 = (void*)0;
            int16_t *l_369 = (void*)0;
            int16_t *l_370 = &l_289;
            VECTOR(int32_t, 4) l_373 = (VECTOR(int32_t, 4))(0x5BDF44D1L, (VECTOR(int32_t, 2))(0x5BDF44D1L, 0x071B454DL), 0x071B454DL);
            int i;
            for (i = 0; i < 6; i++)
                l_322[i] = (void*)0;
            (*p_709->g_255) |= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))(l_300.s5131)).ywzzwzyz, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))((p_709->g_97[4] != (safe_mod_func_int8_t_s_s(((*p_19) | (((safe_add_func_uint8_t_u_u((((*p_19) <= p_709->g_22.x) > ((l_327 |= (safe_sub_func_int8_t_s_s(((safe_div_func_int32_t_s_s(0x2A29A3E9L, (safe_mul_func_int8_t_s_s(((safe_sub_func_int8_t_s_s((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))(p_709->g_315.s657951eb)).s7, ((*l_325) = (safe_mod_func_uint16_t_u_u(((*p_19) && (safe_mul_func_int8_t_s_s((safe_div_func_uint8_t_u_u((--p_709->g_106), (0L | 0x5A35DB8DL))), ((((p_709->g_215 &= (p_709->g_74.x , 4294967289UL)) , p_20) > p_20) , p_709->g_138)))), 0x8B5FL))))), p_18)) != p_20), 1UL)))) && p_18), 0x52L))) && GROUP_DIVERGE(0, 1))), p_20)) > (*p_19)) == 0x5DL)), p_709->g_151.x))), ((VECTOR(int32_t, 2))((-1L))), (-5L), 0x2594DA46L, ((VECTOR(int32_t, 8))(9L)), ((VECTOR(int32_t, 2))((-7L))), 9L)).even)).s1531250510132075, ((VECTOR(int32_t, 16))(0x7BBC8FA5L))))).sb6)).yyyxyyxx))).s12)), (*p_19), (*p_19), 0L, ((VECTOR(int32_t, 2))(0x2A40DF22L)), 8L)).s4;
            if (l_328)
            { /* block id: 127 */
                (*l_251) = p_19;
                if (l_328)
                    break;
                return p_19;
            }
            else
            { /* block id: 131 */
                int32_t l_329 = 1L;
                int32_t l_330 = 0x02771DB6L;
                int16_t *l_341 = &p_709->g_138;
                VECTOR(int16_t, 2) l_342 = (VECTOR(int16_t, 2))(2L, 0x6299L);
                int i;
                --l_332;
                l_329 ^= ((safe_sub_func_int8_t_s_s(((safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((l_341 == &p_709->g_138) || (p_709->g_106 &= GROUP_DIVERGE(2, 1))), (((((((VECTOR(int16_t, 8))(l_342.yxxyxyyx)).s2 ^ (safe_mod_func_int8_t_s_s((p_709->g_75.sc != (p_709->g_75.sb ^ (0xAE4E9D2EL != 0x61B2EF82L))), l_331))) && 0x2B72L) & (((VECTOR(int64_t, 16))(p_709->g_347.xxxxzzyzxzwwzxyx)).s9 , (safe_rshift_func_int16_t_s_s((p_20 | 0L), l_328)))) != p_18) ^ p_709->g_315.s1))), 65534UL)) || 0xA13E3D2872760EF3L), 0x58L)) , (*p_19));
            }
            l_328 &= (safe_mod_func_int32_t_s_s(((l_327 = (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_352.s2016076612147573)).se7d1)).w , (safe_sub_func_int16_t_s_s((((safe_sub_func_uint8_t_u_u(p_18, ((VECTOR(int8_t, 2))((-1L), 1L)).even)) && (safe_add_func_int16_t_s_s(0L, ((*p_19) & (safe_mul_func_int16_t_s_s(((*l_264) = p_20), (safe_add_func_uint8_t_u_u(l_331, (&l_327 != ((safe_sub_func_int32_t_s_s((((!(safe_div_func_uint64_t_u_u((((VECTOR(int16_t, 4))(l_367.s254b)).y & ((*l_370) = p_20)), ((((safe_add_func_int8_t_s_s(((~(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_373.zwyxzwxy)).even)).wxwzxxzywyxzywzy)).sa , (safe_sub_func_int16_t_s_s((~(safe_mod_func_int16_t_s_s((safe_mod_func_int8_t_s_s(l_297, p_18)), p_709->g_151.x))), p_709->g_152.s1)))) , 0x27L), l_290.s6)) ^ p_18) ^ p_18) , l_327)))) , 0x6EL) , (*p_709->g_255)), p_709->g_69.s5)) , (void*)0)))))))))) < l_367.s2), p_18)))) < p_709->g_87), l_373.w));
            l_331 = ((l_264 == l_273) != (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(l_382.s56670742)).s4, 0x0D01EACEL)));
        }
        l_383 = ((*l_251) = p_19);
        l_384 ^= ((*p_709->g_255) = (*p_19));
        (*l_251) = p_19;
    }
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_709->g_150 p_709->g_151 p_709->g_152 p_709->g_160 p_709->g_54 p_709->g_69 p_709->g_161 p_709->g_106 p_709->g_75 p_709->g_114
 * writes: p_709->g_106 p_709->g_114
 */
uint8_t  func_25(uint8_t  p_26, int32_t * p_27, uint32_t  p_28, struct S1 * p_709)
{ /* block id: 53 */
    uint32_t l_142 = 1UL;
    uint8_t *l_143 = &p_709->g_106;
    int64_t ***l_163 = &p_709->g_161;
    int32_t *l_168[1];
    uint32_t l_169[1][3];
    uint64_t l_181 = 0x08351A493D74D1D4L;
    int64_t l_192 = 0x7771F14BCFA1D25DL;
    VECTOR(uint16_t, 4) l_203 = (VECTOR(uint16_t, 4))(0xE4ACL, (VECTOR(uint16_t, 2))(0xE4ACL, 0x3818L), 0x3818L);
    int64_t l_213 = 0x49D8C37194E90C98L;
    int i, j;
    for (i = 0; i < 1; i++)
        l_168[i] = &p_709->g_97[6];
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_169[i][j] = 0x15D1E8AEL;
    }
    l_169[0][1] ^= ((((safe_rshift_func_uint16_t_u_u(l_142, 7)) , ((l_143 != (l_142 , &p_26)) == (0x32L > (((*l_143) &= ((p_28 | (safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x28EEL, 0x3E18L)).yyyy)).z, 8))) ^ ((safe_lshift_func_uint16_t_u_u(((((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(p_709->g_150.sfb)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(p_709->g_151.zxxwyywy)).s3256001236760627, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(0x0AL, 0x52L, 0x77L, (-4L), 0L, 0x67L, 0x4CL, 0x32L)).s4775712651454020)).s35, ((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(p_709->g_152.s6600313647541266)).sf5)).yyxyxyxxxxxxyyyy, (int8_t)(safe_lshift_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u((safe_sub_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s((((l_163 = p_709->g_160) == (void*)0) < FAKE_DIVERGE(p_709->group_2_offset, get_group_id(2), 10)), 3)), (((safe_rshift_func_int8_t_s_s((((safe_add_func_int32_t_s_s((((&p_709->g_107[5] == (void*)0) || p_28) , 0x53AF338BL), 0x374578E6L)) , 0xF8L) < l_142), 4)) == p_709->g_54) > l_142))))), 3))))).s53, ((VECTOR(int8_t, 2))(0x6FL))))).xyyyxxxyyxxxyyyx))).lo)).s41, ((VECTOR(int8_t, 2))(0x65L))))).xxxx)).xwywxyxx, ((VECTOR(int8_t, 8))(0x12L))))).s7, p_709->g_69.s9)) , (*l_163)) != (*p_709->g_160)) ^ p_709->g_69.s8), l_142)) < 65532UL))) && 0x1BL)))) , p_709->g_75.sa) != l_142);
    atomic_and(&p_709->g_atomic_reduction[get_linear_group_id()], 0x308C44B1L + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_709->v_collective += p_709->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    for (p_709->g_114 = 6; (p_709->g_114 < (-5)); p_709->g_114--)
    { /* block id: 60 */
        int16_t l_172 = 0x5A8EL;
        int32_t l_173 = 0x0E24E203L;
        int32_t l_175 = 0x4685E4DAL;
        int32_t l_176 = (-9L);
        int32_t l_177 = 0x490E3653L;
        int32_t l_178 = 0x4F52A209L;
        int32_t l_179 = (-1L);
        int32_t l_180[7] = {0x3E12B37BL,1L,0x3E12B37BL,0x3E12B37BL,1L,0x3E12B37BL,0x3E12B37BL};
        int i;
        --l_181;
    }
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads : p_709->g_comm_values p_709->g_53 p_709->g_54 p_709->g_87 p_709->g_73 p_709->g_75 p_709->l_comm_values p_709->g_74 p_709->g_68 p_709->g_112 p_709->g_97
 * writes: p_709->g_53 p_709->g_87 p_709->g_75 p_709->g_97 p_709->g_112 p_709->g_106 p_709->g_54 p_709->g_138
 */
int32_t * func_29(int8_t  p_30, int32_t * p_31, struct S1 * p_709)
{ /* block id: 6 */
    int64_t *l_129 = (void*)0;
    int64_t **l_128 = &l_129;
    int64_t ***l_130 = &l_128;
    int32_t l_136 = 9L;
    int16_t *l_137 = &p_709->g_138;
    p_31 = func_32(p_30, p_709);
    (*l_130) = l_128;
    (*p_31) &= ((safe_lshift_func_int8_t_s_u(p_709->g_112, 6)) | (!((safe_unary_minus_func_int8_t_s((p_31 != &p_709->g_97[6]))) && ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))(0x4D71L, 0L))))).xyxx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 16))((safe_rshift_func_int8_t_s_u(((0x06667216L & 0x08ECFB4AL) || (&p_709->g_97[6] != (void*)0)), 2)), ((*l_137) = ((0x7F255F038DD45185L < l_136) == p_709->g_75.s8)), ((VECTOR(int16_t, 8))((-1L))), 0x0DCDL, ((VECTOR(int16_t, 2))(0x410CL)), p_30, (-4L), (-6L))).s302f, ((VECTOR(int16_t, 4))(7L)))))))))), ((VECTOR(int16_t, 4))((-5L)))))).z)));
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_709->g_comm_values p_709->g_53 p_709->g_54 p_709->g_87 p_709->g_73 p_709->g_75 p_709->l_comm_values p_709->g_74 p_709->g_68 p_709->g_112
 * writes: p_709->g_53 p_709->g_87 p_709->g_75 p_709->g_97 p_709->g_112 p_709->g_106 p_709->g_54
 */
int32_t * func_32(int64_t  p_33, struct S1 * p_709)
{ /* block id: 7 */
    VECTOR(int64_t, 2) l_34 = (VECTOR(int64_t, 2))(0x176D9935FF57440EL, 0x3EE6DABAC8EF34EAL);
    VECTOR(uint8_t, 4) l_101 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL);
    int32_t *l_109 = &p_709->g_97[8];
    int32_t **l_108[4] = {&l_109,&l_109,&l_109,&l_109};
    int32_t l_113 = 0x575AD064L;
    int32_t *l_123 = &p_709->g_54;
    int i;
    atomic_min(&p_709->l_atomic_reduction[0], l_34.x);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_709->v_collective += p_709->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    for (p_33 = 0; (p_33 == (-10)); p_33 = safe_sub_func_int8_t_s_s(p_33, 7))
    { /* block id: 11 */
        uint64_t *l_110 = (void*)0;
        uint64_t *l_111[3];
        int32_t l_115 = 2L;
        int32_t l_117 = 0x460E83F7L;
        int32_t l_118 = (-9L);
        int i;
        for (i = 0; i < 3; i++)
            l_111[i] = &p_709->g_112;
        l_118 ^= ((((safe_lshift_func_int16_t_s_u(((((!((p_709->g_comm_values[p_709->tid] >= (l_117 ^= func_39(((p_709->g_comm_values[p_709->tid] >= (((safe_rshift_func_uint16_t_u_s(func_47(((safe_add_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) , 0xFCE4L), FAKE_DIVERGE(p_709->global_1_offset, get_global_id(1), 10))) , (void*)0), p_709->g_53[5][0][3], l_34.x, p_709), (safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(l_101.yywxxxyyzzzzywxx)).s3, ((VECTOR(int8_t, 8))((safe_mul_func_uint16_t_u_u((((((*l_109) = (safe_div_func_int8_t_s_s((((VECTOR(int64_t, 8))((((p_709->g_106 ^= l_34.y) , p_709->g_107[5]) == l_108[3]), (*l_109), p_709->g_73.w, ((VECTOR(int64_t, 4))(0L)), 1L)).s7 == p_33), 0x8DL))) != (-7L)) | l_113) != p_709->g_114), p_709->g_114)), 0x2EL, 0L, (-6L), 0x3CL, ((VECTOR(int8_t, 2))(1L)), 4L)).s2)))) < p_33) ^ p_33)) , p_33), p_33, p_709->l_comm_values[(safe_mod_func_uint32_t_u_u(p_709->tid, 9))], l_115, &p_709->g_54, p_709))) < p_33)) != p_709->g_74.x) >= 18446744073709551614UL) , (-6L)), 8)) <= p_33) != 1UL) != p_709->g_68.sb);
        if (l_115)
            break;
        p_709->g_53[5][1][1] = &p_709->g_97[0];
    }
    for (p_33 = 0; (p_33 == (-25)); p_33 = safe_sub_func_uint8_t_u_u(p_33, 8))
    { /* block id: 30 */
        (*l_109) = p_33;
        if (p_33)
            break;
        if (p_33)
            continue;
        return &p_709->g_97[7];
    }
    for (p_709->g_112 = 0; (p_709->g_112 < 14); ++p_709->g_112)
    { /* block id: 38 */
        int32_t *l_124[9] = {&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0]};
        int i;
        l_124[2] = l_123;
        for (p_709->g_106 = (-3); (p_709->g_106 >= 10); p_709->g_106 = safe_add_func_int16_t_s_s(p_709->g_106, 1))
        { /* block id: 42 */
            int32_t ***l_127 = &l_108[0];
            (*l_127) = &p_709->g_53[5][0][3];
        }
        (*l_123) |= 8L;
    }
    return &p_709->g_54;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_39(uint64_t  p_40, int32_t  p_41, int16_t  p_42, uint64_t  p_43, int32_t * p_44, struct S1 * p_709)
{ /* block id: 21 */
    int32_t l_116 = 0L;
    return l_116;
}


/* ------------------------------------------ */
/* 
 * reads : p_709->g_54 p_709->g_68 p_709->g_69 p_709->g_73 p_709->g_74 p_709->g_75 p_709->g_87 p_709->g_53
 * writes: p_709->g_53 p_709->g_87 p_709->g_75
 */
uint16_t  func_47(int32_t * p_48, int32_t * p_49, int8_t  p_50, struct S1 * p_709)
{ /* block id: 12 */
    int32_t **l_55 = &p_709->g_53[1][1][3];
    VECTOR(int64_t, 16) l_70 = (VECTOR(int64_t, 16))(0x27032CD4B48EDA29L, (VECTOR(int64_t, 4))(0x27032CD4B48EDA29L, (VECTOR(int64_t, 2))(0x27032CD4B48EDA29L, 7L), 7L), 7L, 0x27032CD4B48EDA29L, 7L, (VECTOR(int64_t, 2))(0x27032CD4B48EDA29L, 7L), (VECTOR(int64_t, 2))(0x27032CD4B48EDA29L, 7L), 0x27032CD4B48EDA29L, 7L, 0x27032CD4B48EDA29L, 7L);
    VECTOR(int64_t, 4) l_71 = (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, 0x0CB35B2DFF541EDFL), 0x0CB35B2DFF541EDFL);
    VECTOR(int64_t, 2) l_72 = (VECTOR(int64_t, 2))(0x67339AA88D18043AL, 0x2DEF089E30C92616L);
    uint8_t l_80[8][10] = {{0xA4L,0x0FL,1UL,255UL,1UL,0x0FL,0xA4L,5UL,0x55L,0x55L},{0xA4L,0x0FL,1UL,255UL,1UL,0x0FL,0xA4L,5UL,0x55L,0x55L},{0xA4L,0x0FL,1UL,255UL,1UL,0x0FL,0xA4L,5UL,0x55L,0x55L},{0xA4L,0x0FL,1UL,255UL,1UL,0x0FL,0xA4L,5UL,0x55L,0x55L},{0xA4L,0x0FL,1UL,255UL,1UL,0x0FL,0xA4L,5UL,0x55L,0x55L},{0xA4L,0x0FL,1UL,255UL,1UL,0x0FL,0xA4L,5UL,0x55L,0x55L},{0xA4L,0x0FL,1UL,255UL,1UL,0x0FL,0xA4L,5UL,0x55L,0x55L},{0xA4L,0x0FL,1UL,255UL,1UL,0x0FL,0xA4L,5UL,0x55L,0x55L}};
    int16_t l_83 = 0L;
    uint8_t *l_84 = &l_80[0][0];
    int32_t *l_85 = (void*)0;
    int32_t *l_86 = &p_709->g_87;
    int64_t *l_88 = (void*)0;
    int64_t *l_89 = (void*)0;
    int64_t *l_90 = (void*)0;
    int64_t *l_91 = (void*)0;
    int64_t *l_92 = (void*)0;
    int64_t *l_93 = (void*)0;
    int64_t *l_94 = (void*)0;
    int64_t *l_95[10][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t *l_96[7][10] = {{&p_709->g_54,&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0]},{&p_709->g_54,&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0]},{&p_709->g_54,&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0]},{&p_709->g_54,&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0]},{&p_709->g_54,&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0]},{&p_709->g_54,&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0]},{&p_709->g_54,&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],&p_709->g_97[0],(void*)0,&p_709->g_97[0]}};
    uint32_t l_98 = 0UL;
    int i, j;
    (*l_55) = &p_709->g_54;
    l_98 ^= (((safe_rshift_func_int8_t_s_u(p_709->g_54, 5)) || (p_709->g_75.s3 = (safe_lshift_func_int16_t_s_s((((((((p_50 != ((safe_div_func_int32_t_s_s((((p_50 , (((*l_86) |= (safe_rshift_func_uint8_t_u_s((safe_mod_func_uint64_t_u_u(((((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 2))(p_709->g_68.s22)), ((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 4))(p_709->g_69.s17a7)).wwyyzyzxxwwxxwww, ((VECTOR(int64_t, 16))(0x63CD51DC99B0BF19L, ((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(l_70.sbb)).yyxxxxyx, ((VECTOR(int64_t, 4))(l_71.zxwz)).zzwxzyyy))).lo, ((VECTOR(int64_t, 16))(l_72.xxyxxxyyxyxyxxyy)).s5501))), 0x55FA5676063AEBC0L, ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 16))(p_709->g_73.yxyyyxyxxwwyzwzw)).lo, ((VECTOR(uint32_t, 8))(p_709->g_74.xzywwzzw))))), ((VECTOR(int64_t, 2))(p_709->g_75.sa0)).xyxyxxyx))), 0x641D31AB14A3D9B2L, 0x2C889DD98AE1F637L))))).s11))).xxxxxyxyxyyyxyxx, ((VECTOR(int64_t, 16))((safe_add_func_int16_t_s_s(((safe_add_func_int32_t_s_s(l_80[5][2], (p_709->g_69.sb && ((VECTOR(int32_t, 2))(8L, 1L)).hi))) , (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x0850L, 0x4A23L)), 0x70EFL, 0x5D11L)).z != (((((VECTOR(uint64_t, 2))(18446744073709551611UL, 1UL)).odd , p_50) > ((((safe_div_func_int8_t_s_s(p_709->g_69.s3, ((*l_84) &= ((l_83 == (((p_709->g_73.w | 0xA62AL) >= p_50) > p_709->g_68.s5)) <= p_50)))) > p_709->g_75.s1) == p_50) <= 0x12249670L)) , l_72.y))), GROUP_DIVERGE(0, 1))), 0x7FDB7285802EA210L, p_50, 0L, 5L, 0x7F03FA11D7DECAE0L, (-10L), 0x0E9F827A0C98A995L, ((VECTOR(int64_t, 8))(0x71BB8370F7B9E3ECL))))))).s4118, ((VECTOR(int64_t, 4))(0x133AC353B0092DB2L))))), ((VECTOR(int64_t, 4))(0x09B59B1E0FC07259L))))).wyywzxyw, ((VECTOR(int64_t, 8))(0L))))).s5 >= 0L) | 0xA120L), p_709->g_54)), 4))) , p_709->g_54)) , p_50) & 0x1FECA7173955FA40L), l_70.s4)) , l_80[4][3])) , (void*)0) == (*l_55)) >= p_709->g_73.y) , l_70.sb) & l_70.s8) == p_709->g_75.s8), 10)))) | 0UL);
    return p_50;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[9];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 9; i++)
            l_comm_values[i] = 1;
    struct S1 c_710;
    struct S1* p_709 = &c_710;
    struct S1 c_711 = {
        {{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}, // p_709->g_16
        (VECTOR(int64_t, 2))(0x06FD5D70512A30A4L, 0x7D66C4A87FCE6BB2L), // p_709->g_22
        (-1L), // p_709->g_54
        {{{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54}},{{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54}},{{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54}},{{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54}},{{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54}},{{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54},{&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54,&p_709->g_54}}}, // p_709->g_53
        (VECTOR(int64_t, 16))(0x11E3584F79AABF66L, (VECTOR(int64_t, 4))(0x11E3584F79AABF66L, (VECTOR(int64_t, 2))(0x11E3584F79AABF66L, 0L), 0L), 0L, 0x11E3584F79AABF66L, 0L, (VECTOR(int64_t, 2))(0x11E3584F79AABF66L, 0L), (VECTOR(int64_t, 2))(0x11E3584F79AABF66L, 0L), 0x11E3584F79AABF66L, 0L, 0x11E3584F79AABF66L, 0L), // p_709->g_68
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x1A38AD7B59016633L), 0x1A38AD7B59016633L), 0x1A38AD7B59016633L, 0L, 0x1A38AD7B59016633L, (VECTOR(int64_t, 2))(0L, 0x1A38AD7B59016633L), (VECTOR(int64_t, 2))(0L, 0x1A38AD7B59016633L), 0L, 0x1A38AD7B59016633L, 0L, 0x1A38AD7B59016633L), // p_709->g_69
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-10L)), (-10L)), // p_709->g_73
        (VECTOR(uint32_t, 4))(0x7C152A3EL, (VECTOR(uint32_t, 2))(0x7C152A3EL, 0x7A6BAE6AL), 0x7A6BAE6AL), // p_709->g_74
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x4A9589AB98CFE46DL), 0x4A9589AB98CFE46DL), 0x4A9589AB98CFE46DL, 0L, 0x4A9589AB98CFE46DL, (VECTOR(int64_t, 2))(0L, 0x4A9589AB98CFE46DL), (VECTOR(int64_t, 2))(0L, 0x4A9589AB98CFE46DL), 0L, 0x4A9589AB98CFE46DL, 0L, 0x4A9589AB98CFE46DL), // p_709->g_75
        0L, // p_709->g_87
        {0x3E278FAAL,0x4225D93BL,0x3E278FAAL,0x3E278FAAL,0x4225D93BL,0x3E278FAAL,0x3E278FAAL,0x4225D93BL,0x3E278FAAL,0x3E278FAAL}, // p_709->g_97
        255UL, // p_709->g_106
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_709->g_107
        0x7F268E3A1466A041L, // p_709->g_112
        1L, // p_709->g_114
        (-4L), // p_709->g_138
        (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, (-5L)), (-5L)), (-5L), 6L, (-5L), (VECTOR(int8_t, 2))(6L, (-5L)), (VECTOR(int8_t, 2))(6L, (-5L)), 6L, (-5L), 6L, (-5L)), // p_709->g_150
        (VECTOR(int8_t, 4))(0x3FL, (VECTOR(int8_t, 2))(0x3FL, 1L), 1L), // p_709->g_151
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x3FL), 0x3FL), 0x3FL, (-1L), 0x3FL), // p_709->g_152
        (void*)0, // p_709->g_162
        &p_709->g_162, // p_709->g_161
        &p_709->g_161, // p_709->g_160
        (-1L), // p_709->g_174
        (VECTOR(uint16_t, 2))(0xB02EL, 0x7B44L), // p_709->g_204
        0x7FC88A00L, // p_709->g_215
        (void*)0, // p_709->g_252
        &p_709->g_97[0], // p_709->g_255
        (VECTOR(int64_t, 16))(0x6DF6DA9994FB0CACL, (VECTOR(int64_t, 4))(0x6DF6DA9994FB0CACL, (VECTOR(int64_t, 2))(0x6DF6DA9994FB0CACL, 0x0E1BF947E94DF5ACL), 0x0E1BF947E94DF5ACL), 0x0E1BF947E94DF5ACL, 0x6DF6DA9994FB0CACL, 0x0E1BF947E94DF5ACL, (VECTOR(int64_t, 2))(0x6DF6DA9994FB0CACL, 0x0E1BF947E94DF5ACL), (VECTOR(int64_t, 2))(0x6DF6DA9994FB0CACL, 0x0E1BF947E94DF5ACL), 0x6DF6DA9994FB0CACL, 0x0E1BF947E94DF5ACL, 0x6DF6DA9994FB0CACL, 0x0E1BF947E94DF5ACL), // p_709->g_284
        (VECTOR(int64_t, 16))(0x3258D6AF7FF2847BL, (VECTOR(int64_t, 4))(0x3258D6AF7FF2847BL, (VECTOR(int64_t, 2))(0x3258D6AF7FF2847BL, 9L), 9L), 9L, 0x3258D6AF7FF2847BL, 9L, (VECTOR(int64_t, 2))(0x3258D6AF7FF2847BL, 9L), (VECTOR(int64_t, 2))(0x3258D6AF7FF2847BL, 9L), 0x3258D6AF7FF2847BL, 9L, 0x3258D6AF7FF2847BL, 9L), // p_709->g_315
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-5L)), (-5L)), // p_709->g_347
        (void*)0, // p_709->g_396
        (void*)0, // p_709->g_401
        &p_709->g_97[0], // p_709->g_402
        (void*)0, // p_709->g_412
        4294967295UL, // p_709->g_425
        {{{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}}},{{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}},{{0xCBL},{0x62L},{0xEFL},{0UL},{0xD1L},{0xCBL},{0UL},{0xA5L},{0UL}}}}, // p_709->g_461
        (VECTOR(uint8_t, 16))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 253UL), 253UL), 253UL, 8UL, 253UL, (VECTOR(uint8_t, 2))(8UL, 253UL), (VECTOR(uint8_t, 2))(8UL, 253UL), 8UL, 253UL, 8UL, 253UL), // p_709->g_473
        &p_709->g_255, // p_709->g_481
        (void*)0, // p_709->g_494
        (void*)0, // p_709->g_495
        (void*)0, // p_709->g_498
        &p_709->g_498, // p_709->g_497
        (VECTOR(int64_t, 2))(9L, 0x4DCBA543920F32DEL), // p_709->g_502
        (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 2UL), 2UL), // p_709->g_519
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_709->g_521
        (VECTOR(int8_t, 8))(0x23L, (VECTOR(int8_t, 4))(0x23L, (VECTOR(int8_t, 2))(0x23L, 1L), 1L), 1L, 0x23L, 1L), // p_709->g_549
        (VECTOR(int8_t, 16))(0x5AL, (VECTOR(int8_t, 4))(0x5AL, (VECTOR(int8_t, 2))(0x5AL, (-6L)), (-6L)), (-6L), 0x5AL, (-6L), (VECTOR(int8_t, 2))(0x5AL, (-6L)), (VECTOR(int8_t, 2))(0x5AL, (-6L)), 0x5AL, (-6L), 0x5AL, (-6L)), // p_709->g_551
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_709->g_557
        {255UL}, // p_709->g_598
        &p_709->g_53[5][3][0], // p_709->g_619
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x7DL), 0x7DL), 0x7DL, 1UL, 0x7DL, (VECTOR(uint8_t, 2))(1UL, 0x7DL), (VECTOR(uint8_t, 2))(1UL, 0x7DL), 1UL, 0x7DL, 1UL, 0x7DL), // p_709->g_648
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_709->g_681
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int32_t, 2))(1L, 1L), (VECTOR(int32_t, 2))(1L, 1L), 1L, 1L, 1L, 1L), // p_709->g_682
        (VECTOR(int16_t, 16))(0x41C5L, (VECTOR(int16_t, 4))(0x41C5L, (VECTOR(int16_t, 2))(0x41C5L, 0x68D9L), 0x68D9L), 0x68D9L, 0x41C5L, 0x68D9L, (VECTOR(int16_t, 2))(0x41C5L, 0x68D9L), (VECTOR(int16_t, 2))(0x41C5L, 0x68D9L), 0x41C5L, 0x68D9L, 0x41C5L, 0x68D9L), // p_709->g_707
        0, // p_709->v_collective
        sequence_input[get_global_id(0)], // p_709->global_0_offset
        sequence_input[get_global_id(1)], // p_709->global_1_offset
        sequence_input[get_global_id(2)], // p_709->global_2_offset
        sequence_input[get_local_id(0)], // p_709->local_0_offset
        sequence_input[get_local_id(1)], // p_709->local_1_offset
        sequence_input[get_local_id(2)], // p_709->local_2_offset
        sequence_input[get_group_id(0)], // p_709->group_0_offset
        sequence_input[get_group_id(1)], // p_709->group_1_offset
        sequence_input[get_group_id(2)], // p_709->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 9)), permutations[0][get_linear_local_id()])), // p_709->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_710 = c_711;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_709);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_709->g_16[i].f0, "p_709->g_16[i].f0", print_hash_value);

    }
    transparent_crc(p_709->g_22.x, "p_709->g_22.x", print_hash_value);
    transparent_crc(p_709->g_22.y, "p_709->g_22.y", print_hash_value);
    transparent_crc(p_709->g_54, "p_709->g_54", print_hash_value);
    transparent_crc(p_709->g_68.s0, "p_709->g_68.s0", print_hash_value);
    transparent_crc(p_709->g_68.s1, "p_709->g_68.s1", print_hash_value);
    transparent_crc(p_709->g_68.s2, "p_709->g_68.s2", print_hash_value);
    transparent_crc(p_709->g_68.s3, "p_709->g_68.s3", print_hash_value);
    transparent_crc(p_709->g_68.s4, "p_709->g_68.s4", print_hash_value);
    transparent_crc(p_709->g_68.s5, "p_709->g_68.s5", print_hash_value);
    transparent_crc(p_709->g_68.s6, "p_709->g_68.s6", print_hash_value);
    transparent_crc(p_709->g_68.s7, "p_709->g_68.s7", print_hash_value);
    transparent_crc(p_709->g_68.s8, "p_709->g_68.s8", print_hash_value);
    transparent_crc(p_709->g_68.s9, "p_709->g_68.s9", print_hash_value);
    transparent_crc(p_709->g_68.sa, "p_709->g_68.sa", print_hash_value);
    transparent_crc(p_709->g_68.sb, "p_709->g_68.sb", print_hash_value);
    transparent_crc(p_709->g_68.sc, "p_709->g_68.sc", print_hash_value);
    transparent_crc(p_709->g_68.sd, "p_709->g_68.sd", print_hash_value);
    transparent_crc(p_709->g_68.se, "p_709->g_68.se", print_hash_value);
    transparent_crc(p_709->g_68.sf, "p_709->g_68.sf", print_hash_value);
    transparent_crc(p_709->g_69.s0, "p_709->g_69.s0", print_hash_value);
    transparent_crc(p_709->g_69.s1, "p_709->g_69.s1", print_hash_value);
    transparent_crc(p_709->g_69.s2, "p_709->g_69.s2", print_hash_value);
    transparent_crc(p_709->g_69.s3, "p_709->g_69.s3", print_hash_value);
    transparent_crc(p_709->g_69.s4, "p_709->g_69.s4", print_hash_value);
    transparent_crc(p_709->g_69.s5, "p_709->g_69.s5", print_hash_value);
    transparent_crc(p_709->g_69.s6, "p_709->g_69.s6", print_hash_value);
    transparent_crc(p_709->g_69.s7, "p_709->g_69.s7", print_hash_value);
    transparent_crc(p_709->g_69.s8, "p_709->g_69.s8", print_hash_value);
    transparent_crc(p_709->g_69.s9, "p_709->g_69.s9", print_hash_value);
    transparent_crc(p_709->g_69.sa, "p_709->g_69.sa", print_hash_value);
    transparent_crc(p_709->g_69.sb, "p_709->g_69.sb", print_hash_value);
    transparent_crc(p_709->g_69.sc, "p_709->g_69.sc", print_hash_value);
    transparent_crc(p_709->g_69.sd, "p_709->g_69.sd", print_hash_value);
    transparent_crc(p_709->g_69.se, "p_709->g_69.se", print_hash_value);
    transparent_crc(p_709->g_69.sf, "p_709->g_69.sf", print_hash_value);
    transparent_crc(p_709->g_73.x, "p_709->g_73.x", print_hash_value);
    transparent_crc(p_709->g_73.y, "p_709->g_73.y", print_hash_value);
    transparent_crc(p_709->g_73.z, "p_709->g_73.z", print_hash_value);
    transparent_crc(p_709->g_73.w, "p_709->g_73.w", print_hash_value);
    transparent_crc(p_709->g_74.x, "p_709->g_74.x", print_hash_value);
    transparent_crc(p_709->g_74.y, "p_709->g_74.y", print_hash_value);
    transparent_crc(p_709->g_74.z, "p_709->g_74.z", print_hash_value);
    transparent_crc(p_709->g_74.w, "p_709->g_74.w", print_hash_value);
    transparent_crc(p_709->g_75.s0, "p_709->g_75.s0", print_hash_value);
    transparent_crc(p_709->g_75.s1, "p_709->g_75.s1", print_hash_value);
    transparent_crc(p_709->g_75.s2, "p_709->g_75.s2", print_hash_value);
    transparent_crc(p_709->g_75.s3, "p_709->g_75.s3", print_hash_value);
    transparent_crc(p_709->g_75.s4, "p_709->g_75.s4", print_hash_value);
    transparent_crc(p_709->g_75.s5, "p_709->g_75.s5", print_hash_value);
    transparent_crc(p_709->g_75.s6, "p_709->g_75.s6", print_hash_value);
    transparent_crc(p_709->g_75.s7, "p_709->g_75.s7", print_hash_value);
    transparent_crc(p_709->g_75.s8, "p_709->g_75.s8", print_hash_value);
    transparent_crc(p_709->g_75.s9, "p_709->g_75.s9", print_hash_value);
    transparent_crc(p_709->g_75.sa, "p_709->g_75.sa", print_hash_value);
    transparent_crc(p_709->g_75.sb, "p_709->g_75.sb", print_hash_value);
    transparent_crc(p_709->g_75.sc, "p_709->g_75.sc", print_hash_value);
    transparent_crc(p_709->g_75.sd, "p_709->g_75.sd", print_hash_value);
    transparent_crc(p_709->g_75.se, "p_709->g_75.se", print_hash_value);
    transparent_crc(p_709->g_75.sf, "p_709->g_75.sf", print_hash_value);
    transparent_crc(p_709->g_87, "p_709->g_87", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_709->g_97[i], "p_709->g_97[i]", print_hash_value);

    }
    transparent_crc(p_709->g_106, "p_709->g_106", print_hash_value);
    transparent_crc(p_709->g_112, "p_709->g_112", print_hash_value);
    transparent_crc(p_709->g_114, "p_709->g_114", print_hash_value);
    transparent_crc(p_709->g_138, "p_709->g_138", print_hash_value);
    transparent_crc(p_709->g_150.s0, "p_709->g_150.s0", print_hash_value);
    transparent_crc(p_709->g_150.s1, "p_709->g_150.s1", print_hash_value);
    transparent_crc(p_709->g_150.s2, "p_709->g_150.s2", print_hash_value);
    transparent_crc(p_709->g_150.s3, "p_709->g_150.s3", print_hash_value);
    transparent_crc(p_709->g_150.s4, "p_709->g_150.s4", print_hash_value);
    transparent_crc(p_709->g_150.s5, "p_709->g_150.s5", print_hash_value);
    transparent_crc(p_709->g_150.s6, "p_709->g_150.s6", print_hash_value);
    transparent_crc(p_709->g_150.s7, "p_709->g_150.s7", print_hash_value);
    transparent_crc(p_709->g_150.s8, "p_709->g_150.s8", print_hash_value);
    transparent_crc(p_709->g_150.s9, "p_709->g_150.s9", print_hash_value);
    transparent_crc(p_709->g_150.sa, "p_709->g_150.sa", print_hash_value);
    transparent_crc(p_709->g_150.sb, "p_709->g_150.sb", print_hash_value);
    transparent_crc(p_709->g_150.sc, "p_709->g_150.sc", print_hash_value);
    transparent_crc(p_709->g_150.sd, "p_709->g_150.sd", print_hash_value);
    transparent_crc(p_709->g_150.se, "p_709->g_150.se", print_hash_value);
    transparent_crc(p_709->g_150.sf, "p_709->g_150.sf", print_hash_value);
    transparent_crc(p_709->g_151.x, "p_709->g_151.x", print_hash_value);
    transparent_crc(p_709->g_151.y, "p_709->g_151.y", print_hash_value);
    transparent_crc(p_709->g_151.z, "p_709->g_151.z", print_hash_value);
    transparent_crc(p_709->g_151.w, "p_709->g_151.w", print_hash_value);
    transparent_crc(p_709->g_152.s0, "p_709->g_152.s0", print_hash_value);
    transparent_crc(p_709->g_152.s1, "p_709->g_152.s1", print_hash_value);
    transparent_crc(p_709->g_152.s2, "p_709->g_152.s2", print_hash_value);
    transparent_crc(p_709->g_152.s3, "p_709->g_152.s3", print_hash_value);
    transparent_crc(p_709->g_152.s4, "p_709->g_152.s4", print_hash_value);
    transparent_crc(p_709->g_152.s5, "p_709->g_152.s5", print_hash_value);
    transparent_crc(p_709->g_152.s6, "p_709->g_152.s6", print_hash_value);
    transparent_crc(p_709->g_152.s7, "p_709->g_152.s7", print_hash_value);
    transparent_crc(p_709->g_174, "p_709->g_174", print_hash_value);
    transparent_crc(p_709->g_204.x, "p_709->g_204.x", print_hash_value);
    transparent_crc(p_709->g_204.y, "p_709->g_204.y", print_hash_value);
    transparent_crc(p_709->g_215, "p_709->g_215", print_hash_value);
    transparent_crc(p_709->g_284.s0, "p_709->g_284.s0", print_hash_value);
    transparent_crc(p_709->g_284.s1, "p_709->g_284.s1", print_hash_value);
    transparent_crc(p_709->g_284.s2, "p_709->g_284.s2", print_hash_value);
    transparent_crc(p_709->g_284.s3, "p_709->g_284.s3", print_hash_value);
    transparent_crc(p_709->g_284.s4, "p_709->g_284.s4", print_hash_value);
    transparent_crc(p_709->g_284.s5, "p_709->g_284.s5", print_hash_value);
    transparent_crc(p_709->g_284.s6, "p_709->g_284.s6", print_hash_value);
    transparent_crc(p_709->g_284.s7, "p_709->g_284.s7", print_hash_value);
    transparent_crc(p_709->g_284.s8, "p_709->g_284.s8", print_hash_value);
    transparent_crc(p_709->g_284.s9, "p_709->g_284.s9", print_hash_value);
    transparent_crc(p_709->g_284.sa, "p_709->g_284.sa", print_hash_value);
    transparent_crc(p_709->g_284.sb, "p_709->g_284.sb", print_hash_value);
    transparent_crc(p_709->g_284.sc, "p_709->g_284.sc", print_hash_value);
    transparent_crc(p_709->g_284.sd, "p_709->g_284.sd", print_hash_value);
    transparent_crc(p_709->g_284.se, "p_709->g_284.se", print_hash_value);
    transparent_crc(p_709->g_284.sf, "p_709->g_284.sf", print_hash_value);
    transparent_crc(p_709->g_315.s0, "p_709->g_315.s0", print_hash_value);
    transparent_crc(p_709->g_315.s1, "p_709->g_315.s1", print_hash_value);
    transparent_crc(p_709->g_315.s2, "p_709->g_315.s2", print_hash_value);
    transparent_crc(p_709->g_315.s3, "p_709->g_315.s3", print_hash_value);
    transparent_crc(p_709->g_315.s4, "p_709->g_315.s4", print_hash_value);
    transparent_crc(p_709->g_315.s5, "p_709->g_315.s5", print_hash_value);
    transparent_crc(p_709->g_315.s6, "p_709->g_315.s6", print_hash_value);
    transparent_crc(p_709->g_315.s7, "p_709->g_315.s7", print_hash_value);
    transparent_crc(p_709->g_315.s8, "p_709->g_315.s8", print_hash_value);
    transparent_crc(p_709->g_315.s9, "p_709->g_315.s9", print_hash_value);
    transparent_crc(p_709->g_315.sa, "p_709->g_315.sa", print_hash_value);
    transparent_crc(p_709->g_315.sb, "p_709->g_315.sb", print_hash_value);
    transparent_crc(p_709->g_315.sc, "p_709->g_315.sc", print_hash_value);
    transparent_crc(p_709->g_315.sd, "p_709->g_315.sd", print_hash_value);
    transparent_crc(p_709->g_315.se, "p_709->g_315.se", print_hash_value);
    transparent_crc(p_709->g_315.sf, "p_709->g_315.sf", print_hash_value);
    transparent_crc(p_709->g_347.x, "p_709->g_347.x", print_hash_value);
    transparent_crc(p_709->g_347.y, "p_709->g_347.y", print_hash_value);
    transparent_crc(p_709->g_347.z, "p_709->g_347.z", print_hash_value);
    transparent_crc(p_709->g_347.w, "p_709->g_347.w", print_hash_value);
    transparent_crc(p_709->g_425, "p_709->g_425", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_709->g_461[i][j][k].f0, "p_709->g_461[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_709->g_473.s0, "p_709->g_473.s0", print_hash_value);
    transparent_crc(p_709->g_473.s1, "p_709->g_473.s1", print_hash_value);
    transparent_crc(p_709->g_473.s2, "p_709->g_473.s2", print_hash_value);
    transparent_crc(p_709->g_473.s3, "p_709->g_473.s3", print_hash_value);
    transparent_crc(p_709->g_473.s4, "p_709->g_473.s4", print_hash_value);
    transparent_crc(p_709->g_473.s5, "p_709->g_473.s5", print_hash_value);
    transparent_crc(p_709->g_473.s6, "p_709->g_473.s6", print_hash_value);
    transparent_crc(p_709->g_473.s7, "p_709->g_473.s7", print_hash_value);
    transparent_crc(p_709->g_473.s8, "p_709->g_473.s8", print_hash_value);
    transparent_crc(p_709->g_473.s9, "p_709->g_473.s9", print_hash_value);
    transparent_crc(p_709->g_473.sa, "p_709->g_473.sa", print_hash_value);
    transparent_crc(p_709->g_473.sb, "p_709->g_473.sb", print_hash_value);
    transparent_crc(p_709->g_473.sc, "p_709->g_473.sc", print_hash_value);
    transparent_crc(p_709->g_473.sd, "p_709->g_473.sd", print_hash_value);
    transparent_crc(p_709->g_473.se, "p_709->g_473.se", print_hash_value);
    transparent_crc(p_709->g_473.sf, "p_709->g_473.sf", print_hash_value);
    transparent_crc(p_709->g_502.x, "p_709->g_502.x", print_hash_value);
    transparent_crc(p_709->g_502.y, "p_709->g_502.y", print_hash_value);
    transparent_crc(p_709->g_519.x, "p_709->g_519.x", print_hash_value);
    transparent_crc(p_709->g_519.y, "p_709->g_519.y", print_hash_value);
    transparent_crc(p_709->g_519.z, "p_709->g_519.z", print_hash_value);
    transparent_crc(p_709->g_519.w, "p_709->g_519.w", print_hash_value);
    transparent_crc(p_709->g_521.s0, "p_709->g_521.s0", print_hash_value);
    transparent_crc(p_709->g_521.s1, "p_709->g_521.s1", print_hash_value);
    transparent_crc(p_709->g_521.s2, "p_709->g_521.s2", print_hash_value);
    transparent_crc(p_709->g_521.s3, "p_709->g_521.s3", print_hash_value);
    transparent_crc(p_709->g_521.s4, "p_709->g_521.s4", print_hash_value);
    transparent_crc(p_709->g_521.s5, "p_709->g_521.s5", print_hash_value);
    transparent_crc(p_709->g_521.s6, "p_709->g_521.s6", print_hash_value);
    transparent_crc(p_709->g_521.s7, "p_709->g_521.s7", print_hash_value);
    transparent_crc(p_709->g_549.s0, "p_709->g_549.s0", print_hash_value);
    transparent_crc(p_709->g_549.s1, "p_709->g_549.s1", print_hash_value);
    transparent_crc(p_709->g_549.s2, "p_709->g_549.s2", print_hash_value);
    transparent_crc(p_709->g_549.s3, "p_709->g_549.s3", print_hash_value);
    transparent_crc(p_709->g_549.s4, "p_709->g_549.s4", print_hash_value);
    transparent_crc(p_709->g_549.s5, "p_709->g_549.s5", print_hash_value);
    transparent_crc(p_709->g_549.s6, "p_709->g_549.s6", print_hash_value);
    transparent_crc(p_709->g_549.s7, "p_709->g_549.s7", print_hash_value);
    transparent_crc(p_709->g_551.s0, "p_709->g_551.s0", print_hash_value);
    transparent_crc(p_709->g_551.s1, "p_709->g_551.s1", print_hash_value);
    transparent_crc(p_709->g_551.s2, "p_709->g_551.s2", print_hash_value);
    transparent_crc(p_709->g_551.s3, "p_709->g_551.s3", print_hash_value);
    transparent_crc(p_709->g_551.s4, "p_709->g_551.s4", print_hash_value);
    transparent_crc(p_709->g_551.s5, "p_709->g_551.s5", print_hash_value);
    transparent_crc(p_709->g_551.s6, "p_709->g_551.s6", print_hash_value);
    transparent_crc(p_709->g_551.s7, "p_709->g_551.s7", print_hash_value);
    transparent_crc(p_709->g_551.s8, "p_709->g_551.s8", print_hash_value);
    transparent_crc(p_709->g_551.s9, "p_709->g_551.s9", print_hash_value);
    transparent_crc(p_709->g_551.sa, "p_709->g_551.sa", print_hash_value);
    transparent_crc(p_709->g_551.sb, "p_709->g_551.sb", print_hash_value);
    transparent_crc(p_709->g_551.sc, "p_709->g_551.sc", print_hash_value);
    transparent_crc(p_709->g_551.sd, "p_709->g_551.sd", print_hash_value);
    transparent_crc(p_709->g_551.se, "p_709->g_551.se", print_hash_value);
    transparent_crc(p_709->g_551.sf, "p_709->g_551.sf", print_hash_value);
    transparent_crc(p_709->g_648.s0, "p_709->g_648.s0", print_hash_value);
    transparent_crc(p_709->g_648.s1, "p_709->g_648.s1", print_hash_value);
    transparent_crc(p_709->g_648.s2, "p_709->g_648.s2", print_hash_value);
    transparent_crc(p_709->g_648.s3, "p_709->g_648.s3", print_hash_value);
    transparent_crc(p_709->g_648.s4, "p_709->g_648.s4", print_hash_value);
    transparent_crc(p_709->g_648.s5, "p_709->g_648.s5", print_hash_value);
    transparent_crc(p_709->g_648.s6, "p_709->g_648.s6", print_hash_value);
    transparent_crc(p_709->g_648.s7, "p_709->g_648.s7", print_hash_value);
    transparent_crc(p_709->g_648.s8, "p_709->g_648.s8", print_hash_value);
    transparent_crc(p_709->g_648.s9, "p_709->g_648.s9", print_hash_value);
    transparent_crc(p_709->g_648.sa, "p_709->g_648.sa", print_hash_value);
    transparent_crc(p_709->g_648.sb, "p_709->g_648.sb", print_hash_value);
    transparent_crc(p_709->g_648.sc, "p_709->g_648.sc", print_hash_value);
    transparent_crc(p_709->g_648.sd, "p_709->g_648.sd", print_hash_value);
    transparent_crc(p_709->g_648.se, "p_709->g_648.se", print_hash_value);
    transparent_crc(p_709->g_648.sf, "p_709->g_648.sf", print_hash_value);
    transparent_crc(p_709->g_681.s0, "p_709->g_681.s0", print_hash_value);
    transparent_crc(p_709->g_681.s1, "p_709->g_681.s1", print_hash_value);
    transparent_crc(p_709->g_681.s2, "p_709->g_681.s2", print_hash_value);
    transparent_crc(p_709->g_681.s3, "p_709->g_681.s3", print_hash_value);
    transparent_crc(p_709->g_681.s4, "p_709->g_681.s4", print_hash_value);
    transparent_crc(p_709->g_681.s5, "p_709->g_681.s5", print_hash_value);
    transparent_crc(p_709->g_681.s6, "p_709->g_681.s6", print_hash_value);
    transparent_crc(p_709->g_681.s7, "p_709->g_681.s7", print_hash_value);
    transparent_crc(p_709->g_682.s0, "p_709->g_682.s0", print_hash_value);
    transparent_crc(p_709->g_682.s1, "p_709->g_682.s1", print_hash_value);
    transparent_crc(p_709->g_682.s2, "p_709->g_682.s2", print_hash_value);
    transparent_crc(p_709->g_682.s3, "p_709->g_682.s3", print_hash_value);
    transparent_crc(p_709->g_682.s4, "p_709->g_682.s4", print_hash_value);
    transparent_crc(p_709->g_682.s5, "p_709->g_682.s5", print_hash_value);
    transparent_crc(p_709->g_682.s6, "p_709->g_682.s6", print_hash_value);
    transparent_crc(p_709->g_682.s7, "p_709->g_682.s7", print_hash_value);
    transparent_crc(p_709->g_682.s8, "p_709->g_682.s8", print_hash_value);
    transparent_crc(p_709->g_682.s9, "p_709->g_682.s9", print_hash_value);
    transparent_crc(p_709->g_682.sa, "p_709->g_682.sa", print_hash_value);
    transparent_crc(p_709->g_682.sb, "p_709->g_682.sb", print_hash_value);
    transparent_crc(p_709->g_682.sc, "p_709->g_682.sc", print_hash_value);
    transparent_crc(p_709->g_682.sd, "p_709->g_682.sd", print_hash_value);
    transparent_crc(p_709->g_682.se, "p_709->g_682.se", print_hash_value);
    transparent_crc(p_709->g_682.sf, "p_709->g_682.sf", print_hash_value);
    transparent_crc(p_709->g_707.s0, "p_709->g_707.s0", print_hash_value);
    transparent_crc(p_709->g_707.s1, "p_709->g_707.s1", print_hash_value);
    transparent_crc(p_709->g_707.s2, "p_709->g_707.s2", print_hash_value);
    transparent_crc(p_709->g_707.s3, "p_709->g_707.s3", print_hash_value);
    transparent_crc(p_709->g_707.s4, "p_709->g_707.s4", print_hash_value);
    transparent_crc(p_709->g_707.s5, "p_709->g_707.s5", print_hash_value);
    transparent_crc(p_709->g_707.s6, "p_709->g_707.s6", print_hash_value);
    transparent_crc(p_709->g_707.s7, "p_709->g_707.s7", print_hash_value);
    transparent_crc(p_709->g_707.s8, "p_709->g_707.s8", print_hash_value);
    transparent_crc(p_709->g_707.s9, "p_709->g_707.s9", print_hash_value);
    transparent_crc(p_709->g_707.sa, "p_709->g_707.sa", print_hash_value);
    transparent_crc(p_709->g_707.sb, "p_709->g_707.sb", print_hash_value);
    transparent_crc(p_709->g_707.sc, "p_709->g_707.sc", print_hash_value);
    transparent_crc(p_709->g_707.sd, "p_709->g_707.sd", print_hash_value);
    transparent_crc(p_709->g_707.se, "p_709->g_707.se", print_hash_value);
    transparent_crc(p_709->g_707.sf, "p_709->g_707.sf", print_hash_value);
    transparent_crc(p_709->v_collective, "p_709->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 17; i++)
            transparent_crc(p_709->g_special_values[i + 17 * get_linear_group_id()], "p_709->g_special_values[i + 17 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_709->l_comm_values[get_linear_local_id()], "p_709->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_709->g_comm_values[get_linear_group_id() * 9 + get_linear_local_id()], "p_709->g_comm_values[get_linear_group_id() * 9 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
