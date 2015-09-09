// --atomics 80 ---fake_divergence -g 46,80,2 -l 1,10,2
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


// Seed: 46

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile uint32_t  f1;
};

struct S1 {
    int32_t g_13;
    uint8_t g_64;
    uint64_t g_67;
    int32_t g_102;
    int32_t *g_107;
    int32_t ** volatile g_111;
    int8_t g_136;
    int8_t g_138;
    int32_t g_142;
    uint8_t g_144;
    int32_t * volatile g_146;
    int32_t ** volatile g_148;
    struct S0 g_160[8];
    struct S0 * volatile g_161;
    int32_t * volatile g_164;
    int32_t **g_170;
    int32_t *** volatile g_169;
    int64_t g_175;
    uint8_t *g_182[3];
    uint8_t *g_183;
    int16_t g_192;
    volatile uint16_t g_212;
    int16_t g_223;
    uint64_t *g_231;
    uint64_t ** volatile g_230;
    int8_t g_260;
    uint16_t g_262;
    int32_t g_265;
    uint32_t g_293;
    int32_t ***g_316;
    volatile uint16_t g_385;
    int32_t g_416;
    int8_t g_422[4];
    uint64_t g_426[1];
    int32_t ** volatile g_441;
    struct S0 g_513;
    uint16_t * volatile g_520;
    uint16_t * volatile *g_519;
    uint64_t g_561;
    int8_t g_631[3];
    volatile int64_t g_632;
    volatile uint8_t g_633;
    uint64_t g_647[3][5][5];
    uint32_t g_652;
    uint16_t g_661;
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
uint32_t  func_1(struct S1 * p_816);
uint32_t  func_4(int32_t  p_5, uint32_t  p_6, int64_t  p_7, struct S1 * p_816);
int8_t  func_10(int32_t  p_11, uint64_t  p_12, struct S1 * p_816);
int64_t  func_17(int8_t  p_18, uint32_t  p_19, uint32_t  p_20, int8_t  p_21, struct S1 * p_816);
int16_t  func_24(uint64_t  p_25, struct S1 * p_816);
uint32_t  func_26(int32_t  p_27, uint16_t  p_28, uint64_t  p_29, uint32_t  p_30, struct S1 * p_816);
uint32_t  func_33(uint32_t  p_34, int64_t  p_35, uint64_t  p_36, int32_t  p_37, struct S1 * p_816);
uint8_t  func_50(uint64_t  p_51, uint32_t  p_52, uint64_t  p_53, uint64_t  p_54, struct S1 * p_816);
int16_t  func_93(uint64_t * p_94, int16_t  p_95, uint32_t  p_96, uint32_t  p_97, uint8_t * p_98, struct S1 * p_816);
int8_t  func_99(uint64_t * p_100, struct S1 * p_816);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_816->g_13 p_816->g_64 p_816->g_102 p_816->g_67 p_816->g_111 p_816->g_107 p_816->g_142 p_816->g_144 p_816->g_138 p_816->g_146 p_816->g_148 p_816->g_160 p_816->g_161 p_816->g_164 p_816->g_169 p_816->g_183 p_816->g_223 p_816->g_260 p_816->g_175 p_816->g_265 p_816->g_293 p_816->g_192 p_816->g_136 p_816->g_262 p_816->g_230 p_816->g_231 p_816->g_385 p_816->g_416 p_816->g_422 p_816->g_426 p_816->g_441 p_816->g_212 p_816->g_519 p_816->g_513.f1 p_816->g_520 p_816->g_561 p_816->g_633 p_816->g_647 p_816->g_652 p_816->g_661
 * writes: p_816->g_64 p_816->g_67 p_816->g_102 p_816->g_107 p_816->g_136 p_816->g_142 p_816->g_144 p_816->g_160 p_816->g_170 p_816->g_138 p_816->g_260 p_816->g_265 p_816->g_192 p_816->g_293 p_816->g_316 p_816->g_223 p_816->g_262 p_816->g_385 p_816->g_175 p_816->g_416 p_816->g_13 p_816->g_513 p_816->g_561 p_816->g_633 p_816->g_647 p_816->g_661
 */
uint32_t  func_1(struct S1 * p_816)
{ /* block id: 4 */
    int64_t l_16 = 0x0A3CFCE2949F4FFCL;
    int32_t l_488 = 0x57500099L;
    uint64_t l_509 = 1UL;
    int32_t ***l_555 = &p_816->g_170;
    uint16_t l_558 = 65531UL;
    int32_t l_630[3];
    uint16_t l_654 = 0x5E7BL;
    int16_t l_660 = 0x25A1L;
    int i;
    for (i = 0; i < 3; i++)
        l_630[i] = (-1L);
    if (((((safe_lshift_func_uint8_t_u_u(0xD1L, (func_4((safe_mul_func_int8_t_s_s(func_10(p_816->g_13, (safe_div_func_int16_t_s_s((l_16 == func_17(p_816->g_13, (safe_div_func_int16_t_s_s(func_24(((func_26(l_16, p_816->g_13, (safe_lshift_func_uint8_t_u_u((p_816->g_13 , ((p_816->g_13 < (func_33(p_816->g_13, p_816->g_13, l_16, p_816->g_13, p_816) | p_816->g_175)) != l_16)), l_16)), p_816->g_175, p_816) && 0x97E5A077L) & l_16), p_816), l_16)), l_16, l_16, p_816)), p_816->g_223)), p_816), 0x12L)), p_816->g_13, p_816->g_13, p_816) < 0x636D820DL))) ^ p_816->g_422[1]) , GROUP_DIVERGE(2, 1)) , 0x60A30BF8L))
    { /* block id: 227 */
        int32_t l_437 = 0x3FB1D8F5L;
        int32_t l_562[2][3] = {{(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L)}};
        int32_t l_563[3][9][6] = {{{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL}},{{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL}},{{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL},{0x33A58998L,0x2B292BCEL,0x6A0B1D49L,0x02EFC462L,0x75987125L,0x19B7028CL}}};
        uint8_t l_564 = 0xD7L;
        int32_t l_653[8];
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_653[i] = 0x27BA36C1L;
        for (p_816->g_265 = 0; (p_816->g_265 == 10); p_816->g_265 = safe_add_func_int8_t_s_s(p_816->g_265, 5))
        { /* block id: 230 */
            uint16_t l_455 = 0xABBDL;
            uint32_t l_474 = 0UL;
            int32_t l_506 = 0x0D5C1797L;
            int16_t l_534 = 0L;
            for (p_816->g_260 = 0; (p_816->g_260 < 11); ++p_816->g_260)
            { /* block id: 233 */
                uint32_t *l_438 = &p_816->g_293;
                int32_t l_466 = 0x7F14C93EL;
                int32_t l_475[5][2] = {{0x40581C3FL,0x40581C3FL},{0x40581C3FL,0x40581C3FL},{0x40581C3FL,0x40581C3FL},{0x40581C3FL,0x40581C3FL},{0x40581C3FL,0x40581C3FL}};
                int i, j;
                if ((safe_rshift_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(l_437, (l_438 == (void*)0))), ((*l_438) = 0x34E14868L))), 1)))
                { /* block id: 235 */
                    uint32_t l_456 = 0UL;
                    uint16_t *l_483 = &l_455;
                    uint16_t **l_482 = &l_483;
                    int32_t *l_536 = &p_816->g_142;
                    int32_t *l_537 = &p_816->g_102;
                    int32_t *l_538 = &p_816->g_142;
                    int32_t *l_539[2][1];
                    uint32_t l_540 = 0UL;
                    int32_t ***l_553 = &p_816->g_170;
                    int32_t ****l_554[6];
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_539[i][j] = &l_475[1][0];
                    }
                    for (i = 0; i < 6; i++)
                        l_554[i] = &p_816->g_316;
                    for (p_816->g_142 = 0; (p_816->g_142 >= 7); ++p_816->g_142)
                    { /* block id: 238 */
                        int32_t l_446 = 0x25FB24FDL;
                        uint16_t *l_447 = (void*)0;
                        uint16_t *l_448 = &p_816->g_160[5].f0;
                        int32_t *l_457 = &p_816->g_13;
                        int16_t *l_467[9] = {&p_816->g_223,&p_816->g_223,&p_816->g_223,&p_816->g_223,&p_816->g_223,&p_816->g_223,&p_816->g_223,&p_816->g_223,&p_816->g_223};
                        int i;
                        (*p_816->g_441) = (*p_816->g_111);
                        (*l_457) ^= (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((*l_448) = l_446), (((safe_rshift_func_int16_t_s_s(l_437, 3)) , ((((0x1231B19AL > GROUP_DIVERGE(1, 1)) ^ (safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s(0x3BD8L, (((((((void*)0 != (*p_816->g_441)) , ((p_816->g_416 && (((+((0x2E72DC9AL | l_446) , 0xF0EFL)) || p_816->g_260) || 1L)) > p_816->g_144)) || p_816->g_422[3]) < l_455) , l_456) > l_446))), 15))) & l_437) <= 7UL)) , l_446))), p_816->g_262));
                        (*p_816->g_111) = (*p_816->g_441);
                        (*l_457) &= (safe_div_func_int16_t_s_s((l_475[0][1] &= (safe_add_func_uint16_t_u_u((((*p_816->g_111) != ((p_816->g_416 < (*p_816->g_231)) , &p_816->g_142)) | ((safe_rshift_func_uint16_t_u_s((((safe_mod_func_int16_t_s_s((p_816->g_192 = l_466), (0x78L | (((void*)0 == &p_816->g_262) ^ ((*l_438)--))))) != (safe_mod_func_int8_t_s_s(((safe_div_func_uint64_t_u_u(((!0UL) , (*p_816->g_231)), p_816->g_426[0])) & l_455), p_816->g_223))) ^ l_474), l_16)) , 0xD33F3F4F500C49C0L)), 0x312CL))), 0x4B79L));
                    }
                    if ((0x550859C0L ^ (safe_mul_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(((l_475[2][1] >= FAKE_DIVERGE(p_816->local_0_offset, get_local_id(0), 10)) & (safe_mul_func_uint16_t_u_u((l_16 | p_816->g_223), ((l_474 <= 4UL) || (l_475[3][1] && 255UL))))), (((*l_482) = &p_816->g_262) == (void*)0))) <= FAKE_DIVERGE(p_816->global_2_offset, get_global_id(2), 10)), p_816->g_212))))
                    { /* block id: 249 */
                        int32_t *l_484 = &l_475[0][1];
                        int32_t *l_485 = &p_816->g_102;
                        int32_t *l_486 = (void*)0;
                        int32_t *l_487 = &l_466;
                        int32_t *l_489 = (void*)0;
                        int32_t *l_490 = (void*)0;
                        int32_t *l_491 = &p_816->g_416;
                        int32_t *l_492 = (void*)0;
                        int32_t *l_493 = (void*)0;
                        int32_t *l_494 = (void*)0;
                        int32_t *l_495 = &p_816->g_416;
                        int32_t *l_496 = &p_816->g_142;
                        int32_t *l_497 = &l_466;
                        int32_t *l_498 = &l_475[3][0];
                        int32_t l_499 = 1L;
                        int32_t *l_500 = &l_499;
                        int32_t *l_501 = &l_475[0][1];
                        int32_t *l_502 = &l_437;
                        int32_t *l_503 = &l_466;
                        int32_t *l_504 = &l_488;
                        int32_t *l_505 = &l_488;
                        int32_t *l_507 = &l_475[0][1];
                        int32_t *l_508 = (void*)0;
                        --l_509;
                        return l_16;
                    }
                    else
                    { /* block id: 252 */
                        struct S0 *l_512 = (void*)0;
                        int32_t **l_514 = &p_816->g_107;
                        int8_t *l_529 = &p_816->g_136;
                        int32_t *l_535 = &p_816->g_416;
                        p_816->g_513 = (*p_816->g_161);
                        (*l_514) = &l_488;
                        (*l_535) |= ((((safe_rshift_func_uint16_t_u_s((((void*)0 != &p_816->g_111) , ((safe_sub_func_uint32_t_u_u((((*l_438) = (p_816->g_519 != ((((*p_816->g_231) = FAKE_DIVERGE(p_816->global_2_offset, get_global_id(2), 10)) ^ (((safe_mul_func_int8_t_s_s((l_456 >= (safe_lshift_func_int16_t_s_u(l_455, (~(safe_rshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s(((l_529 != (p_816->g_513.f1 , ((safe_div_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((l_466 && (**l_514)), l_509)), (**p_816->g_519))) , &p_816->g_422[3]))) == 0x0A9BL), l_475[0][1])), l_534)))))), 0x61L)) > (**l_514)) , l_456)) , (void*)0))) , p_816->g_64), (*p_816->g_107))) ^ 1UL)), 2)) > l_456) < l_456) , (**p_816->g_148));
                    }
                    --l_540;
                    l_563[2][0][4] = ((*p_816->g_107) = (safe_add_func_int64_t_s_s((((p_816->g_192 , (*l_538)) >= ((l_437 , ((safe_sub_func_int32_t_s_s(((p_816->g_561 ^= ((+((*l_438) &= (safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s((safe_add_func_uint64_t_u_u(((*l_537) != 0x69L), (l_553 != (l_555 = &p_816->g_170)))), (safe_sub_func_int32_t_s_s(l_558, (safe_sub_func_uint16_t_u_u((*p_816->g_520), (-9L))))))), 0)))) != 0x726D63ECL)) , 0x01674483L), p_816->g_64)) <= (*l_537))) == l_562[1][2])) <= 0x2AL), 0x1275F9DC58127B5CL)));
                }
                else
                { /* block id: 265 */
                    int64_t l_565 = 0x2F0DFCBE7A38E729L;
                    for (p_816->g_223 = 0; (p_816->g_223 <= 7); p_816->g_223 += 1)
                    { /* block id: 268 */
                        return l_562[0][0];
                    }
                    if (l_564)
                        break;
                    return l_565;
                }
            }
            if ((atomic_inc(&p_816->g_atomic_input[80 * get_linear_group_id() + 13]) == 7))
            { /* block id: 276 */
                int32_t l_566 = 1L;
                int32_t l_573 = (-7L);
                uint32_t l_574[1];
                int8_t l_608 = 0x4DL;
                int i;
                for (i = 0; i < 1; i++)
                    l_574[i] = 0x2B981B59L;
                for (l_566 = (-9); (l_566 == 8); ++l_566)
                { /* block id: 279 */
                    int8_t l_569 = (-8L);
                    uint8_t l_570 = 0x03L;
                    int64_t l_571 = 0x2F7C589CC45F5434L;
                    uint8_t l_572[10][9][2] = {{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}},{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}},{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}},{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}},{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}},{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}},{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}},{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}},{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}},{{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL},{0xCCL,0x6FL}}};
                    int i, j, k;
                    l_570 &= l_569;
                    l_572[2][6][1] &= l_571;
                }
                l_574[0] &= l_573;
                for (l_566 = 19; (l_566 > (-23)); l_566--)
                { /* block id: 286 */
                    uint32_t l_577 = 1UL;
                    int8_t l_578 = (-8L);
                    uint32_t l_579 = 0UL;
                    uint16_t l_593 = 65531UL;
                    int8_t l_594 = 0x2CL;
                    uint8_t l_605[8][8] = {{255UL,255UL,0xBBL,0xB7L,0xCAL,0xB7L,0xBBL,255UL},{255UL,255UL,0xBBL,0xB7L,0xCAL,0xB7L,0xBBL,255UL},{255UL,255UL,0xBBL,0xB7L,0xCAL,0xB7L,0xBBL,255UL},{255UL,255UL,0xBBL,0xB7L,0xCAL,0xB7L,0xBBL,255UL},{255UL,255UL,0xBBL,0xB7L,0xCAL,0xB7L,0xBBL,255UL},{255UL,255UL,0xBBL,0xB7L,0xCAL,0xB7L,0xBBL,255UL},{255UL,255UL,0xBBL,0xB7L,0xCAL,0xB7L,0xBBL,255UL},{255UL,255UL,0xBBL,0xB7L,0xCAL,0xB7L,0xBBL,255UL}};
                    int i, j;
                    if (((((l_577 &= 0xF180849CL) , 0xBCCF02EBL) , l_578) , (l_579 = (-8L))))
                    { /* block id: 289 */
                        struct S0 l_581[8][9][3] = {{{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}}},{{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}}},{{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}}},{{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}}},{{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}}},{{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}}},{{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}}},{{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}},{{0xBEDFL,0UL},{65529UL,4294967295UL},{65533UL,0UL}}}};
                        struct S0 *l_580 = &l_581[5][8][1];
                        struct S0 *l_582 = (void*)0;
                        struct S0 *l_583 = &l_581[5][8][1];
                        int i, j, k;
                        l_583 = (l_582 = l_580);
                    }
                    else
                    { /* block id: 292 */
                        int32_t l_585 = (-6L);
                        int32_t *l_584 = &l_585;
                        int32_t *l_586 = &l_585;
                        struct S0 l_587 = {0x2555L,4UL};/* VOLATILE GLOBAL l_587 */
                        uint8_t l_588 = 0x72L;
                        uint16_t l_589 = 0xB75EL;
                        uint32_t l_590 = 0x86785A24L;
                        int32_t *l_591 = (void*)0;
                        int32_t *l_592 = &l_585;
                        l_586 = l_584;
                        l_592 = (l_591 = ((l_587 , l_588) , ((l_589 = 0x5FBCCBA1508E20F3L) , (l_590 , (void*)0))));
                    }
                    if ((l_594 = l_593))
                    { /* block id: 299 */
                        int32_t l_596 = (-1L);
                        int32_t *l_595[10];
                        uint8_t l_597 = 0xA9L;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_595[i] = &l_596;
                        l_595[7] = l_595[7];
                        --l_597;
                    }
                    else
                    { /* block id: 302 */
                        int8_t l_600 = 0x76L;
                        int32_t l_601 = 5L;
                        struct S0 l_602[4][5] = {{{65527UL,0x41352D0FL},{0x5C30L,4294967286UL},{0x712EL,0x480AFC95L},{0x5C30L,4294967286UL},{65527UL,0x41352D0FL}},{{65527UL,0x41352D0FL},{0x5C30L,4294967286UL},{0x712EL,0x480AFC95L},{0x5C30L,4294967286UL},{65527UL,0x41352D0FL}},{{65527UL,0x41352D0FL},{0x5C30L,4294967286UL},{0x712EL,0x480AFC95L},{0x5C30L,4294967286UL},{65527UL,0x41352D0FL}},{{65527UL,0x41352D0FL},{0x5C30L,4294967286UL},{0x712EL,0x480AFC95L},{0x5C30L,4294967286UL},{65527UL,0x41352D0FL}}};
                        struct S0 l_603 = {65532UL,0xE72F31FFL};/* VOLATILE GLOBAL l_603 */
                        int64_t l_604 = 1L;
                        int i, j;
                        l_603 = ((l_600 , (l_601 = FAKE_DIVERGE(p_816->local_0_offset, get_local_id(0), 10))) , l_602[2][2]);
                        l_604 = 0x060CD649L;
                    }
                    l_605[2][5]++;
                }
                if (l_608)
                { /* block id: 309 */
                    int32_t l_609 = 1L;
                    for (l_609 = (-26); (l_609 != 4); l_609 = safe_add_func_uint8_t_u_u(l_609, 9))
                    { /* block id: 312 */
                        int8_t l_612[3];
                        uint32_t l_613 = 0x31FF9C4AL;
                        int8_t l_614 = 2L;
                        int8_t l_615 = 0L;
                        int32_t l_617 = 1L;
                        int32_t *l_616 = &l_617;
                        int32_t *l_618 = &l_617;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_612[i] = 0x09L;
                        l_566 = l_612[0];
                        l_614 = (l_566 &= l_613);
                        l_566 |= l_615;
                        l_616 = (l_618 = l_616);
                    }
                }
                else
                { /* block id: 320 */
                    int32_t l_619 = 0x37C85503L;
                    uint32_t l_620[2][4][5] = {{{1UL,0x4E604A00L,0x449769F1L,0xB07A346CL,0x449769F1L},{1UL,0x4E604A00L,0x449769F1L,0xB07A346CL,0x449769F1L},{1UL,0x4E604A00L,0x449769F1L,0xB07A346CL,0x449769F1L},{1UL,0x4E604A00L,0x449769F1L,0xB07A346CL,0x449769F1L}},{{1UL,0x4E604A00L,0x449769F1L,0xB07A346CL,0x449769F1L},{1UL,0x4E604A00L,0x449769F1L,0xB07A346CL,0x449769F1L},{1UL,0x4E604A00L,0x449769F1L,0xB07A346CL,0x449769F1L},{1UL,0x4E604A00L,0x449769F1L,0xB07A346CL,0x449769F1L}}};
                    int i, j, k;
                    l_620[0][2][1] ^= (l_619 = (GROUP_DIVERGE(0, 1) , (l_566 = 3L)));
                }
                unsigned int result = 0;
                result += l_566;
                result += l_573;
                int l_574_i0;
                for (l_574_i0 = 0; l_574_i0 < 1; l_574_i0++) {
                    result += l_574[l_574_i0];
                }
                result += l_608;
                atomic_add(&p_816->g_special_values[80 * get_linear_group_id() + 13], result);
            }
            else
            { /* block id: 325 */
                (1 + 1);
            }
        }
        for (l_16 = (-1); (l_16 <= 27); ++l_16)
        { /* block id: 331 */
            int32_t *l_623 = &p_816->g_102;
            int32_t *l_624 = &p_816->g_265;
            int32_t *l_625 = &p_816->g_416;
            int32_t *l_626 = &p_816->g_102;
            int32_t *l_627 = &p_816->g_265;
            int32_t *l_628[3];
            int64_t l_629 = 1L;
            int i;
            for (i = 0; i < 3; i++)
                l_628[i] = &p_816->g_102;
            ++p_816->g_633;
        }
        for (p_816->g_192 = (-1); (p_816->g_192 >= 4); p_816->g_192 = safe_add_func_int64_t_s_s(p_816->g_192, 3))
        { /* block id: 336 */
            int32_t l_642 = 0x2E95A492L;
            uint64_t *l_645 = (void*)0;
            uint64_t *l_646[1][5][3] = {{{&p_816->g_647[0][4][1],&p_816->g_647[0][4][1],&p_816->g_647[0][4][1]},{&p_816->g_647[0][4][1],&p_816->g_647[0][4][1],&p_816->g_647[0][4][1]},{&p_816->g_647[0][4][1],&p_816->g_647[0][4][1],&p_816->g_647[0][4][1]},{&p_816->g_647[0][4][1],&p_816->g_647[0][4][1],&p_816->g_647[0][4][1]},{&p_816->g_647[0][4][1],&p_816->g_647[0][4][1],&p_816->g_647[0][4][1]}}};
            uint64_t l_655 = 0x2A21D33F3EA73BC9L;
            int32_t *l_656 = &p_816->g_142;
            int32_t l_657 = 0x4E3EFDECL;
            int32_t l_658 = 0x698D6255L;
            int32_t *l_659[4][9][3] = {{{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416}},{{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416}},{{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416}},{{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416},{&p_816->g_416,(void*)0,&p_816->g_416}}};
            int i, j, k;
            (*l_656) &= ((safe_rshift_func_uint8_t_u_s((((void*)0 != &p_816->g_223) | (((safe_lshift_func_uint8_t_u_s(((((((**p_816->g_230) & l_642) != 0UL) != (safe_mod_func_uint64_t_u_u(((void*)0 == &p_816->g_293), (((p_816->g_647[0][3][4] &= p_816->g_13) , (safe_rshift_func_int8_t_s_u((safe_add_func_uint16_t_u_u((l_563[2][0][4] , p_816->g_652), 0L)), 5))) , l_563[2][0][4])))) , l_653[7]) < l_563[2][0][4]), 2)) , 7L) , l_654)), l_562[0][2])) <= l_655);
            p_816->g_661--;
            if ((atomic_inc(&p_816->l_atomic_input[77]) == 3))
            { /* block id: 341 */
                uint64_t l_666[9] = {0x88157292C77157C1L,0x88157292C77157C1L,0x88157292C77157C1L,0x88157292C77157C1L,0x88157292C77157C1L,0x88157292C77157C1L,0x88157292C77157C1L,0x88157292C77157C1L,0x88157292C77157C1L};
                uint64_t *l_665 = &l_666[3];
                uint64_t **l_664 = &l_665;
                uint64_t **l_667 = &l_665;
                int16_t l_682 = 0x787FL;
                uint8_t l_769 = 3UL;
                int64_t l_770 = 0x219227DC3925C4F6L;
                uint32_t l_771[9][10][2] = {{{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL}},{{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL}},{{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL}},{{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL}},{{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL}},{{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL}},{{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL}},{{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL}},{{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL},{4UL,0x418B49FAL}}};
                uint32_t l_772 = 0xAC8BF81DL;
                uint32_t l_773 = 0xB1524025L;
                int16_t l_774[6][1] = {{0x1039L},{0x1039L},{0x1039L},{0x1039L},{0x1039L},{0x1039L}};
                int32_t l_775 = 0L;
                int i, j, k;
                l_667 = l_664;
                for (l_666[3] = 0; (l_666[3] >= 35); l_666[3] = safe_add_func_int32_t_s_s(l_666[3], 3))
                { /* block id: 345 */
                    int32_t l_671 = 1L;
                    int32_t *l_670 = &l_671;
                    l_670 = (void*)0;
                    for (l_671 = 0; (l_671 < (-3)); l_671 = safe_sub_func_uint32_t_u_u(l_671, 4))
                    { /* block id: 349 */
                        uint64_t l_676 = 0x20C23B3C51D74B83L;
                        uint64_t *l_675 = &l_676;
                        uint64_t **l_674[10] = {&l_675,(void*)0,&l_675,(void*)0,&l_675,&l_675,(void*)0,&l_675,(void*)0,&l_675};
                        uint8_t l_677 = 1UL;
                        int64_t l_678[7];
                        uint32_t l_679 = 0x7A28A392L;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_678[i] = 0L;
                        l_664 = (l_667 = l_674[6]);
                        l_678[4] ^= l_677;
                        --l_679;
                    }
                }
                if ((l_682 = (-1L)))
                { /* block id: 357 */
                    int16_t l_683 = 0x5673L;
                    int8_t l_684[8][10] = {{0x4FL,0x4FL,0x7CL,0x6CL,1L,0x39L,0x65L,0x1AL,0x65L,0x39L},{0x4FL,0x4FL,0x7CL,0x6CL,1L,0x39L,0x65L,0x1AL,0x65L,0x39L},{0x4FL,0x4FL,0x7CL,0x6CL,1L,0x39L,0x65L,0x1AL,0x65L,0x39L},{0x4FL,0x4FL,0x7CL,0x6CL,1L,0x39L,0x65L,0x1AL,0x65L,0x39L},{0x4FL,0x4FL,0x7CL,0x6CL,1L,0x39L,0x65L,0x1AL,0x65L,0x39L},{0x4FL,0x4FL,0x7CL,0x6CL,1L,0x39L,0x65L,0x1AL,0x65L,0x39L},{0x4FL,0x4FL,0x7CL,0x6CL,1L,0x39L,0x65L,0x1AL,0x65L,0x39L},{0x4FL,0x4FL,0x7CL,0x6CL,1L,0x39L,0x65L,0x1AL,0x65L,0x39L}};
                    uint64_t l_685 = 6UL;
                    int i, j;
                    if ((l_685 |= (l_684[2][7] = l_683)))
                    { /* block id: 360 */
                        uint8_t l_686 = 0x94L;
                        uint32_t l_689[10] = {9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL};
                        int16_t l_690 = 0L;
                        int32_t l_692 = 0x37B00C8FL;
                        int32_t *l_691 = &l_692;
                        int32_t *l_693[9][5][5] = {{{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692}},{{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692}},{{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692}},{{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692}},{{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692}},{{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692}},{{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692}},{{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692}},{{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692},{&l_692,&l_692,(void*)0,&l_692,&l_692}}};
                        int32_t *l_694 = &l_692;
                        int32_t *l_695 = (void*)0;
                        int i, j, k;
                        l_686++;
                        l_690 |= (GROUP_DIVERGE(1, 1) , l_689[0]);
                        l_693[5][0][2] = l_691;
                        l_695 = l_694;
                    }
                    else
                    { /* block id: 365 */
                        int32_t l_697 = 0x4CB91FC3L;
                        int32_t *l_696 = &l_697;
                        int32_t *l_698 = &l_697;
                        l_698 = l_696;
                    }
                    for (l_684[2][7] = 2; (l_684[2][7] >= 0); l_684[2][7] -= 1)
                    { /* block id: 370 */
                        int8_t l_699 = (-8L);
                        uint32_t l_700 = 0xF870139BL;
                        int64_t l_701 = 0x23C077D0EF83D0C7L;
                        int32_t l_702[2][7][4] = {{{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L}},{{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L},{0x2EFB7471L,0x2EFB7471L,(-6L),0x646B36B9L}}};
                        int64_t l_703 = 6L;
                        uint8_t l_704 = 255UL;
                        uint32_t l_705 = 4294967292UL;
                        uint8_t l_706 = 0x0DL;
                        int64_t l_707[4] = {0x0835D3EB12E18291L,0x0835D3EB12E18291L,0x0835D3EB12E18291L,0x0835D3EB12E18291L};
                        uint16_t l_708 = 3UL;
                        int32_t l_709 = 0x218A6862L;
                        uint16_t l_710[9][8][3] = {{{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL}},{{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL}},{{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL}},{{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL}},{{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL}},{{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL}},{{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL}},{{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL}},{{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL},{1UL,0x38BCL,4UL}}};
                        uint8_t l_711 = 0xB8L;
                        int32_t *l_712 = (void*)0;
                        int i, j, k;
                        l_712 = ((((l_699 , l_700) , l_701) , l_702[0][0][0]) , (((((l_705 = (l_704 ^= l_703)) , FAKE_DIVERGE(p_816->local_2_offset, get_local_id(2), 10)) , ((l_706 , l_707[1]) , (l_708 , (l_709 , l_710[8][6][1])))) , l_711) , (void*)0));
                    }
                    for (l_684[2][7] = 0; (l_684[2][7] > 7); l_684[2][7] = safe_add_func_int8_t_s_s(l_684[2][7], 7))
                    { /* block id: 377 */
                        int32_t l_715 = 0x75FDAC4DL;
                        uint32_t l_716 = 4294967291UL;
                        int32_t l_720[7] = {1L,1L,1L,1L,1L,1L,1L};
                        int32_t *l_719 = &l_720[0];
                        int32_t *l_721 = &l_720[6];
                        int i;
                        l_716++;
                        l_721 = l_719;
                    }
                }
                else
                { /* block id: 381 */
                    int32_t l_722 = 0x008FD666L;
                    uint8_t l_766 = 1UL;
                    uint8_t *l_765[8][1] = {{&l_766},{&l_766},{&l_766},{&l_766},{&l_766},{&l_766},{&l_766},{&l_766}};
                    uint8_t **l_764 = &l_765[1][0];
                    int8_t l_767 = 0x16L;
                    int64_t l_768 = 0x56D57D80BF3F6AECL;
                    int i, j;
                    for (l_722 = 0; (l_722 == (-25)); --l_722)
                    { /* block id: 384 */
                        uint8_t l_725[10][7][3] = {{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}},{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}},{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}},{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}},{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}},{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}},{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}},{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}},{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}},{{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL},{255UL,0xD6L,0UL}}};
                        uint32_t l_726[3][5] = {{0x8F6A7D3AL,0x8F6A7D3AL,0x8F6A7D3AL,0x8F6A7D3AL,0x8F6A7D3AL},{0x8F6A7D3AL,0x8F6A7D3AL,0x8F6A7D3AL,0x8F6A7D3AL,0x8F6A7D3AL},{0x8F6A7D3AL,0x8F6A7D3AL,0x8F6A7D3AL,0x8F6A7D3AL,0x8F6A7D3AL}};
                        int8_t l_727 = (-1L);
                        uint32_t l_728 = 0x4D6497E7L;
                        uint64_t l_729 = 1UL;
                        struct S0 l_730 = {7UL,0xA0718F7FL};/* VOLATILE GLOBAL l_730 */
                        int16_t l_731 = (-8L);
                        struct S0 l_732 = {0xF808L,0UL};/* VOLATILE GLOBAL l_732 */
                        uint32_t l_733[7];
                        int64_t l_734 = (-7L);
                        uint32_t l_735 = 9UL;
                        uint32_t l_736 = 0UL;
                        int32_t l_737 = 0x2DED43AEL;
                        uint16_t l_738[6];
                        uint64_t l_739 = 0x17D9F348DB29413AL;
                        int32_t l_741 = 5L;
                        int32_t *l_740[7] = {&l_741,&l_741,&l_741,&l_741,&l_741,&l_741,&l_741};
                        int32_t *l_742 = &l_741;
                        uint32_t l_743 = 4294967286UL;
                        int32_t l_744 = (-6L);
                        int32_t l_745 = 0x3BF48592L;
                        int64_t l_746 = 1L;
                        uint64_t l_747[5][3] = {{3UL,3UL,0xC92CC67CF598642EL},{3UL,3UL,0xC92CC67CF598642EL},{3UL,3UL,0xC92CC67CF598642EL},{3UL,3UL,0xC92CC67CF598642EL},{3UL,3UL,0xC92CC67CF598642EL}};
                        uint32_t l_748 = 0xDADF5489L;
                        struct S0 l_749 = {0UL,0xBE6962EDL};/* VOLATILE GLOBAL l_749 */
                        struct S0 l_750 = {0x7075L,0x94575731L};/* VOLATILE GLOBAL l_750 */
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_733[i] = 0x3958B0EAL;
                        for (i = 0; i < 6; i++)
                            l_738[i] = 0xC648L;
                        l_738[1] = (((l_725[0][2][1] , ((l_735 = (l_682 = ((((l_727 &= l_726[1][1]) , l_728) , (FAKE_DIVERGE(p_816->global_0_offset, get_global_id(0), 10) , ((l_729 , 0x2AFDL) , (((FAKE_DIVERGE(p_816->global_0_offset, get_global_id(0), 10) , l_730) , l_731) , l_732)))) , (l_733[3] , l_734)))) , l_736)) , l_737) , 0x1339704DL);
                        l_742 = (l_739 , (l_740[4] = (void*)0));
                        l_745 = (l_744 = l_743);
                        l_750 = (((l_746 , l_747[0][1]) , l_748) , l_749);
                    }
                    for (l_722 = 0; (l_722 != 0); l_722++)
                    { /* block id: 397 */
                        uint32_t *l_754 = (void*)0;
                        uint32_t **l_753 = &l_754;
                        uint32_t **l_755 = &l_754;
                        int32_t l_757 = (-10L);
                        int32_t *l_756 = &l_757;
                        int32_t *l_758 = &l_757;
                        int32_t l_759 = 0x4BC27B72L;
                        int32_t l_760 = 0x365C0A6CL;
                        uint64_t l_761 = 0UL;
                        l_755 = l_753;
                        l_758 = l_756;
                        l_761--;
                    }
                    l_764 = (void*)0;
                    l_768 ^= l_767;
                }
                if ((l_775 = ((l_770 = (l_769 , 3L)) , (l_774[2][0] |= (l_773 = ((l_772 = l_771[4][4][1]) , (-3L)))))))
                { /* block id: 410 */
                    int32_t l_777 = 0x639630B3L;
                    int32_t *l_776[5][1][6] = {{{&l_777,&l_777,&l_777,(void*)0,&l_777,&l_777}},{{&l_777,&l_777,&l_777,(void*)0,&l_777,&l_777}},{{&l_777,&l_777,&l_777,(void*)0,&l_777,&l_777}},{{&l_777,&l_777,&l_777,(void*)0,&l_777,&l_777}},{{&l_777,&l_777,&l_777,(void*)0,&l_777,&l_777}}};
                    int32_t l_780[4];
                    int32_t l_781 = 1L;
                    int32_t l_782[2][9][1] = {{{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L}},{{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L},{0x234094D5L}}};
                    uint8_t l_783[3][3] = {{0x01L,0x01L,0x01L},{0x01L,0x01L,0x01L},{0x01L,0x01L,0x01L}};
                    uint16_t l_784 = 8UL;
                    uint8_t l_785 = 0UL;
                    int32_t *l_786[5] = {&l_780[1],&l_780[1],&l_780[1],&l_780[1],&l_780[1]};
                    int32_t *l_787 = &l_780[3];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_780[i] = 9L;
                    l_776[4][0][1] = (void*)0;
                    for (l_777 = 0; (l_777 <= 7); l_777 += 1)
                    { /* block id: 414 */
                        int32_t l_779[2];
                        int32_t *l_778 = &l_779[1];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_779[i] = 0x50177AA2L;
                        l_778 = (void*)0;
                    }
                    l_784 |= (((l_781 = l_780[1]) , l_782[1][2][0]) , l_783[2][1]);
                    l_787 = (l_785 , l_786[3]);
                }
                else
                { /* block id: 420 */
                    int32_t l_789 = 0L;
                    int32_t *l_788 = &l_789;
                    int32_t *l_790 = &l_789;
                    struct S0 l_791 = {0UL,1UL};/* VOLATILE GLOBAL l_791 */
                    struct S0 l_792 = {0x8EC8L,0UL};/* VOLATILE GLOBAL l_792 */
                    l_790 = (l_788 = l_788);
                    l_792 = l_791;
                    for (l_791.f0 = (-27); (l_791.f0 <= 6); l_791.f0 = safe_add_func_uint16_t_u_u(l_791.f0, 5))
                    { /* block id: 426 */
                        uint64_t l_795[8] = {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL};
                        uint32_t l_796 = 4294967295UL;
                        int i;
                        l_796 = ((*l_790) = l_795[1]);
                    }
                    for (l_792.f0 = 20; (l_792.f0 == 4); l_792.f0 = safe_sub_func_int64_t_s_s(l_792.f0, 7))
                    { /* block id: 432 */
                        int32_t l_799[10];
                        int32_t l_800 = 0x54B8B40FL;
                        uint64_t l_801 = 0xC2BFAF3D919E5107L;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_799[i] = 0x107C610BL;
                        (*l_790) &= 6L;
                        (*l_788) |= (l_799[8] = 0L);
                        l_801++;
                    }
                }
                unsigned int result = 0;
                int l_666_i0;
                for (l_666_i0 = 0; l_666_i0 < 9; l_666_i0++) {
                    result += l_666[l_666_i0];
                }
                result += l_682;
                result += l_769;
                result += l_770;
                int l_771_i0, l_771_i1, l_771_i2;
                for (l_771_i0 = 0; l_771_i0 < 9; l_771_i0++) {
                    for (l_771_i1 = 0; l_771_i1 < 10; l_771_i1++) {
                        for (l_771_i2 = 0; l_771_i2 < 2; l_771_i2++) {
                            result += l_771[l_771_i0][l_771_i1][l_771_i2];
                        }
                    }
                }
                result += l_772;
                result += l_773;
                int l_774_i0, l_774_i1;
                for (l_774_i0 = 0; l_774_i0 < 6; l_774_i0++) {
                    for (l_774_i1 = 0; l_774_i1 < 1; l_774_i1++) {
                        result += l_774[l_774_i0][l_774_i1];
                    }
                }
                result += l_775;
                atomic_add(&p_816->l_special_values[77], result);
            }
            else
            { /* block id: 439 */
                (1 + 1);
            }
        }
    }
    else
    { /* block id: 443 */
        uint8_t l_813[3];
        int i;
        for (i = 0; i < 3; i++)
            l_813[i] = 0x59L;
        for (p_816->g_293 = 0; (p_816->g_293 > 33); p_816->g_293++)
        { /* block id: 446 */
            for (p_816->g_223 = 0; (p_816->g_223 > 0); p_816->g_223 = safe_add_func_uint32_t_u_u(p_816->g_223, 6))
            { /* block id: 449 */
                int32_t *l_808 = &p_816->g_102;
                int32_t *l_809 = (void*)0;
                int32_t *l_810 = &p_816->g_416;
                int32_t *l_811 = (void*)0;
                int32_t *l_812[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_812[i] = &p_816->g_265;
                --l_813[0];
            }
        }
        return p_816->g_426[0];
    }
    return p_816->g_426[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_816->g_416 p_816->g_260 p_816->g_422 p_816->g_426
 * writes: p_816->g_416 p_816->g_67 p_816->g_260
 */
uint32_t  func_4(int32_t  p_5, uint32_t  p_6, int64_t  p_7, struct S1 * p_816)
{ /* block id: 209 */
    int32_t *l_421 = &p_816->g_102;
    for (p_816->g_416 = 27; (p_816->g_416 >= (-8)); p_816->g_416 = safe_sub_func_int64_t_s_s(p_816->g_416, 1))
    { /* block id: 212 */
        uint32_t l_423 = 3UL;
        for (p_816->g_67 = 29; (p_816->g_67 > 25); p_816->g_67 = safe_sub_func_int8_t_s_s(p_816->g_67, 8))
        { /* block id: 215 */
            l_421 = (void*)0;
            for (p_816->g_260 = 2; (p_816->g_260 >= 0); p_816->g_260 -= 1)
            { /* block id: 219 */
                return p_816->g_422[3];
            }
            --l_423;
        }
        if (p_816->g_426[0])
            break;
    }
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_816->g_136 p_816->g_223 p_816->g_262 p_816->g_111 p_816->g_107 p_816->g_192 p_816->g_138 p_816->g_230 p_816->g_231 p_816->g_67 p_816->g_148 p_816->g_164 p_816->g_142 p_816->g_385 p_816->g_183 p_816->g_64 p_816->g_102 p_816->g_260 p_816->g_144 p_816->g_416 p_816->g_175
 * writes: p_816->g_316 p_816->g_223 p_816->g_262 p_816->g_136 p_816->g_192 p_816->g_142 p_816->g_160.f0 p_816->g_385 p_816->g_64 p_816->g_67 p_816->g_175 p_816->g_416
 */
int8_t  func_10(int32_t  p_11, uint64_t  p_12, struct S1 * p_816)
{ /* block id: 144 */
    int32_t ***l_315 = &p_816->g_170;
    int32_t ***l_318 = &p_816->g_170;
    int32_t ****l_317 = &l_318;
    int32_t l_367 = (-6L);
    int32_t l_377 = 0L;
    int32_t l_378 = 0x077DB204L;
    int32_t l_379 = 0L;
    int32_t l_380 = 8L;
    int32_t l_381 = 4L;
    int32_t l_382 = (-7L);
    int32_t l_383 = 0x04A0247FL;
    int32_t l_384[8][1][1] = {{{0x3D4214D1L}},{{0x3D4214D1L}},{{0x3D4214D1L}},{{0x3D4214D1L}},{{0x3D4214D1L}},{{0x3D4214D1L}},{{0x3D4214D1L}},{{0x3D4214D1L}}};
    int32_t l_388 = 0x677EDE55L;
    int16_t *l_413[4][6][7] = {{{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0}},{{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0}},{{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0}},{{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0},{&p_816->g_223,(void*)0,&p_816->g_192,(void*)0,&p_816->g_223,&p_816->g_192,(void*)0}}};
    int64_t *l_414 = (void*)0;
    int64_t *l_415 = &p_816->g_175;
    int i, j, k;
    if ((((p_816->g_316 = l_315) == ((*l_317) = l_315)) <= p_816->g_136))
    { /* block id: 147 */
        int32_t l_319[2][2] = {{(-1L),(-1L)},{(-1L),(-1L)}};
        int i, j;
        return l_319[0][0];
    }
    else
    { /* block id: 149 */
        for (p_816->g_223 = (-10); (p_816->g_223 >= 8); p_816->g_223++)
        { /* block id: 152 */
            for (p_816->g_262 = 0; (p_816->g_262 >= 31); p_816->g_262 = safe_add_func_int16_t_s_s(p_816->g_262, 6))
            { /* block id: 155 */
                if ((atomic_inc(&p_816->l_atomic_input[25]) == 4))
                { /* block id: 157 */
                    int32_t l_324 = 0x5D34177DL;
                    int32_t *l_338 = &l_324;
                    for (l_324 = 5; (l_324 <= (-18)); l_324--)
                    { /* block id: 160 */
                        int32_t *l_327 = (void*)0;
                        int16_t l_328 = (-1L);
                        int8_t l_329 = 0x73L;
                        uint32_t l_330 = 0x5E04BFAFL;
                        uint8_t l_333 = 0xFAL;
                        uint32_t l_334 = 4294967294UL;
                        uint16_t l_335 = 1UL;
                        l_327 = l_327;
                        --l_330;
                        l_334 &= l_333;
                        --l_335;
                    }
                    l_338 = (void*)0;
                    unsigned int result = 0;
                    result += l_324;
                    atomic_add(&p_816->l_special_values[25], result);
                }
                else
                { /* block id: 167 */
                    (1 + 1);
                }
            }
        }
    }
    if (p_11)
    { /* block id: 173 */
        int32_t *l_339[2][9] = {{&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102},{&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102,&p_816->g_102}};
        int32_t **l_340 = &l_339[1][1];
        uint16_t l_374[6][9][4] = {{{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL}},{{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL}},{{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL}},{{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL}},{{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL}},{{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL},{0x5693L,0x467DL,65535UL,6UL}}};
        int i, j, k;
        (*l_340) = l_339[1][1];
        for (p_816->g_262 = 22; (p_816->g_262 > 21); p_816->g_262 = safe_sub_func_uint64_t_u_u(p_816->g_262, 4))
        { /* block id: 177 */
            uint32_t l_346 = 0x7545660DL;
            int32_t l_369 = 0x27283CA3L;
            (*l_340) = (*p_816->g_111);
            for (p_816->g_136 = 2; (p_816->g_136 >= 0); p_816->g_136 -= 1)
            { /* block id: 181 */
                uint8_t l_347 = 0x44L;
                int16_t l_362 = 0x453DL;
                int32_t *l_366 = &p_816->g_13;
                int32_t l_368 = 0x4F57F94CL;
                int32_t l_370 = (-1L);
                int32_t l_372 = (-1L);
                int32_t l_373[5][9] = {{1L,(-7L),1L,1L,(-7L),1L,1L,(-7L),1L},{1L,(-7L),1L,1L,(-7L),1L,1L,(-7L),1L},{1L,(-7L),1L,1L,(-7L),1L,1L,(-7L),1L},{1L,(-7L),1L,1L,(-7L),1L,1L,(-7L),1L},{1L,(-7L),1L,1L,(-7L),1L,1L,(-7L),1L}};
                int i, j;
                for (p_816->g_192 = 7; (p_816->g_192 >= 2); p_816->g_192 -= 1)
                { /* block id: 184 */
                    uint64_t *l_360 = &p_816->g_67;
                    int32_t l_361 = 0x57053309L;
                    uint8_t *l_365 = &l_347;
                    int32_t l_371 = 0x0C04C170L;
                    for (p_816->g_142 = 2; (p_816->g_142 >= 0); p_816->g_142 -= 1)
                    { /* block id: 187 */
                        uint8_t l_345 = 255UL;
                        uint16_t *l_363 = (void*)0;
                        uint16_t *l_364[8][9] = {{(void*)0,&p_816->g_262,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_262,(void*)0,&p_816->g_160[5].f0,(void*)0},{(void*)0,&p_816->g_262,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_262,(void*)0,&p_816->g_160[5].f0,(void*)0},{(void*)0,&p_816->g_262,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_262,(void*)0,&p_816->g_160[5].f0,(void*)0},{(void*)0,&p_816->g_262,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_262,(void*)0,&p_816->g_160[5].f0,(void*)0},{(void*)0,&p_816->g_262,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_262,(void*)0,&p_816->g_160[5].f0,(void*)0},{(void*)0,&p_816->g_262,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_262,(void*)0,&p_816->g_160[5].f0,(void*)0},{(void*)0,&p_816->g_262,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_262,(void*)0,&p_816->g_160[5].f0,(void*)0},{(void*)0,&p_816->g_262,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_160[5].f0,&p_816->g_262,(void*)0,&p_816->g_160[5].f0,(void*)0}};
                        int i, j;
                        l_361 = (((p_11 == (safe_div_func_int64_t_s_s(p_816->g_138, (((l_345 &= p_816->g_138) ^ l_346) || ((l_347 <= ((safe_add_func_uint64_t_u_u((**p_816->g_230), (safe_lshift_func_int8_t_s_s((0xE13DCA19L >= (safe_rshift_func_uint8_t_u_s(l_345, 1))), ((p_816->g_160[5].f0 = (safe_lshift_func_int8_t_s_s((((safe_lshift_func_int16_t_s_u((safe_add_func_uint8_t_u_u(((void*)0 == l_360), l_361)), 6)) , p_816->g_138) ^ l_362), p_12))) , p_12))))) & 18446744073709551615UL)) >= p_12))))) , (void*)0) != l_365);
                        l_366 = (*p_816->g_148);
                        l_367 = (*p_816->g_164);
                        if (l_361)
                            break;
                    }
                    --l_374[1][6][3];
                }
            }
        }
        ++p_816->g_385;
    }
    else
    { /* block id: 200 */
        l_388 = p_11;
    }
    p_816->g_416 ^= ((safe_div_func_int64_t_s_s((0x635BL > ((safe_mod_func_int16_t_s_s((p_11 <= p_11), (((safe_div_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u((((*p_816->g_183) |= 248UL) && 0x64L), 4)) , ((((safe_div_func_int64_t_s_s(((*l_415) = (safe_div_func_uint16_t_u_u((+(((*p_816->g_231) = ((FAKE_DIVERGE(p_816->global_2_offset, get_global_id(2), 10) <= (safe_lshift_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u(p_816->g_102, 7)) , (p_816->g_192 = ((p_816->g_385 & (safe_sub_func_uint8_t_u_u(p_12, (safe_lshift_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((safe_mod_func_int8_t_s_s(0L, p_816->g_262)) == 0x0BL), (*p_816->g_231))), p_11))))) == p_12))), p_816->g_260))) != p_816->g_102)) <= p_11)), p_11))), 7UL)) > p_12) , 0x10A4364DL) & 0x6F8ACE73L)), p_816->g_142)) & p_12) || p_11))) <= 1UL)), p_816->g_144)) & (-3L));
    return p_816->g_175;
}


/* ------------------------------------------ */
/* 
 * reads : p_816->g_13
 * writes:
 */
int64_t  func_17(int8_t  p_18, uint32_t  p_19, uint32_t  p_20, int8_t  p_21, struct S1 * p_816)
{ /* block id: 142 */
    return p_816->g_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_816->g_160.f1
 * writes:
 */
int16_t  func_24(uint64_t  p_25, struct S1 * p_816)
{ /* block id: 140 */
    return p_816->g_160[5].f1;
}


/* ------------------------------------------ */
/* 
 * reads : p_816->g_144 p_816->g_293 p_816->g_160.f0 p_816->g_64 p_816->g_183 p_816->g_161 p_816->g_160 p_816->g_192
 * writes: p_816->g_192 p_816->g_293 p_816->g_64
 */
uint32_t  func_26(int32_t  p_27, uint16_t  p_28, uint64_t  p_29, uint32_t  p_30, struct S1 * p_816)
{ /* block id: 131 */
    int16_t *l_272 = &p_816->g_192;
    int32_t l_285 = 0x0C3B0A84L;
    int64_t *l_289 = (void*)0;
    int64_t *l_291 = &p_816->g_175;
    int64_t **l_290 = &l_291;
    uint32_t *l_292 = &p_816->g_293;
    struct S0 *l_294[5];
    int8_t l_295[7][1][2] = {{{(-9L),0x26L}},{{(-9L),0x26L}},{{(-9L),0x26L}},{{(-9L),0x26L}},{{(-9L),0x26L}},{{(-9L),0x26L}},{{(-9L),0x26L}}};
    int16_t *l_296[5] = {&p_816->g_223,&p_816->g_223,&p_816->g_223,&p_816->g_223,&p_816->g_223};
    uint32_t l_297 = 4294967292UL;
    int64_t l_313[6] = {0L,0x5204DF4B4B9B8584L,0L,0L,0x5204DF4B4B9B8584L,0L};
    int32_t *l_314 = &l_285;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_294[i] = &p_816->g_160[5];
    l_297 = ((((safe_mul_func_int16_t_s_s((l_285 = ((((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(p_29, (p_816->g_144 != ((*l_272) = 0L)))), ((*p_816->g_183) = (safe_mul_func_int16_t_s_s((((safe_add_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(0x8210L, (safe_sub_func_uint8_t_u_u(p_30, (safe_mul_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((l_285 , (((safe_add_func_uint32_t_u_u(l_285, (((*l_292) ^= (safe_unary_minus_func_uint16_t_u((l_289 == ((*l_290) = &p_816->g_175))))) < 0x0DFF5C94L))) > 0L) || p_30)), p_816->g_160[5].f0)), GROUP_DIVERGE(0, 1))))))), p_816->g_64)) , &p_816->g_160[4]) == l_294[2]), 0x0364L))))) , l_285) || GROUP_DIVERGE(2, 1)) && l_295[0][0][0])), p_27)) , 0x32L) | l_295[0][0][0]) , l_285);
    (*l_314) = ((safe_add_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((void*)0 == (*l_290)), (safe_lshift_func_uint8_t_u_u((*p_816->g_183), 1)))), (safe_add_func_uint32_t_u_u((p_30 != 0x05622054L), (safe_unary_minus_func_uint64_t_u(((*p_816->g_161) , 0x49F1F28B5C55E803L))))))) & (safe_lshift_func_uint16_t_u_s(((safe_mul_func_uint8_t_u_u(p_28, ((safe_mul_func_uint8_t_u_u(0x17L, 0L)) < (*p_816->g_183)))) , l_313[3]), 4)));
    return p_816->g_192;
}


/* ------------------------------------------ */
/* 
 * reads : p_816->g_13 p_816->g_64 p_816->g_102 p_816->g_67 p_816->g_111 p_816->g_107 p_816->g_142 p_816->g_144 p_816->g_138 p_816->g_146 p_816->g_148 p_816->g_160 p_816->g_161 p_816->g_164 p_816->g_169 p_816->g_183 p_816->g_223 p_816->g_260 p_816->g_175 p_816->g_265
 * writes: p_816->g_64 p_816->g_67 p_816->g_102 p_816->g_107 p_816->g_136 p_816->g_142 p_816->g_144 p_816->g_160 p_816->g_170 p_816->g_138 p_816->g_260 p_816->g_265
 */
uint32_t  func_33(uint32_t  p_34, int64_t  p_35, uint64_t  p_36, int32_t  p_37, struct S1 * p_816)
{ /* block id: 5 */
    int16_t l_55 = (-6L);
    int64_t l_65 = 1L;
    int64_t l_258 = 0L;
    int32_t l_263 = 1L;
    for (p_36 = 13; (p_36 < 60); ++p_36)
    { /* block id: 8 */
        int32_t l_62 = 1L;
        int32_t *l_63 = (void*)0;
        uint64_t *l_66 = &p_816->g_67;
        int8_t *l_257 = &p_816->g_138;
        int8_t *l_259 = &p_816->g_260;
        uint16_t *l_261[1];
        int32_t *l_264 = &p_816->g_265;
        int i;
        for (i = 0; i < 1; i++)
            l_261[i] = &p_816->g_262;
        for (p_37 = 15; (p_37 != 12); p_37 = safe_sub_func_uint16_t_u_u(p_37, 6))
        { /* block id: 11 */
            return p_816->g_13;
        }
        (*l_264) &= (0x6FD8L | (l_263 ^= (((-2L) & (((*l_259) &= ((safe_div_func_int8_t_s_s((safe_mod_func_int16_t_s_s(((safe_mul_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_s(((p_37 != (((*l_257) = (func_50(l_55, ((safe_mod_func_int16_t_s_s((p_816->g_13 < ((((p_816->g_13 , p_34) , ((safe_rshift_func_int16_t_s_s(((+(((*l_66) = ((safe_rshift_func_int8_t_s_s(l_62, 2)) , (((p_816->g_64 = 0x2C5ACC8EL) >= p_37) , l_65))) | 0x76A17913DA513E67L)) > 18446744073709551607UL), 6)) < p_37)) , p_36) < p_36)), p_37)) != p_37), p_36, p_35, p_816) < l_65)) && (-5L))) < p_816->g_223), p_37)) && p_36), l_258)) & (-1L)), (-1L))), l_258)) == p_36)) != p_816->g_175)) > p_34)));
    }
    return l_55;
}


/* ------------------------------------------ */
/* 
 * reads : p_816->g_67 p_816->g_64 p_816->g_102 p_816->g_111 p_816->g_13 p_816->g_107 p_816->g_142 p_816->g_144 p_816->g_138 p_816->g_146 p_816->g_148 p_816->g_136 p_816->g_160 p_816->g_161 p_816->g_164 p_816->g_169 p_816->g_183
 * writes: p_816->g_67 p_816->g_64 p_816->g_102 p_816->g_107 p_816->g_136 p_816->g_142 p_816->g_144 p_816->g_160 p_816->g_170
 */
uint8_t  func_50(uint64_t  p_51, uint32_t  p_52, uint64_t  p_53, uint64_t  p_54, struct S1 * p_816)
{ /* block id: 16 */
    int32_t l_68[2];
    int32_t *l_147 = &p_816->g_13;
    int32_t l_208 = 0x412CFCA4L;
    int32_t l_209 = 0x77B9E171L;
    int i;
    for (i = 0; i < 2; i++)
        l_68[i] = 0x189EFA4EL;
    for (p_51 = 0; (p_51 <= 1); p_51 += 1)
    { /* block id: 19 */
        int i;
        return l_68[p_51];
    }
    for (p_816->g_67 = 0; (p_816->g_67 <= 13); p_816->g_67 = safe_add_func_uint64_t_u_u(p_816->g_67, 1))
    { /* block id: 24 */
        uint8_t *l_84 = &p_816->g_64;
        uint64_t *l_108 = &p_816->g_67;
        int32_t l_109[8] = {0x553036CCL,0x553036CCL,0x553036CCL,0x553036CCL,0x553036CCL,0x553036CCL,0x553036CCL,0x553036CCL};
        uint8_t *l_143 = &p_816->g_144;
        int32_t **l_168 = &l_147;
        int i;
        if ((safe_div_func_int64_t_s_s(((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((safe_add_func_uint64_t_u_u(0xE3F992CE4CA00AF4L, (safe_sub_func_int16_t_s_s(((l_68[1] , GROUP_DIVERGE(0, 1)) && ((((safe_unary_minus_func_int16_t_s(p_54)) || ((void*)0 == &p_816->g_13)) , (safe_div_func_uint8_t_u_u(((*l_84)++), 9UL))) < ((safe_mod_func_uint64_t_u_u((((*l_143) |= (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (l_68[0] & ((safe_sub_func_uint32_t_u_u((func_93((func_99(&p_816->g_67, p_816) , l_108), p_816->g_67, l_109[2], p_54, l_84, p_816) || p_54), p_816->g_67)) >= 0xEAE7L))))) <= 1L), p_816->g_138)) == GROUP_DIVERGE(0, 1)))), p_816->g_67)))), p_816->g_138)), l_68[0])) , (-1L)), 0xE96FC21787F8654DL)))
        { /* block id: 43 */
            int8_t l_145[2];
            int32_t **l_149 = &l_147;
            int i;
            for (i = 0; i < 2; i++)
                l_145[i] = 1L;
            (*p_816->g_146) &= l_145[0];
            (*p_816->g_148) = l_147;
            (*l_149) = l_147;
        }
        else
        { /* block id: 47 */
            int64_t l_157 = 0x5B561CB1BBB9F26EL;
            for (p_816->g_136 = (-24); (p_816->g_136 == 10); p_816->g_136 = safe_add_func_int16_t_s_s(p_816->g_136, 9))
            { /* block id: 50 */
                int32_t **l_152 = &p_816->g_107;
                (*l_152) = (*p_816->g_148);
                return (*l_147);
            }
            for (p_816->g_102 = 15; (p_816->g_102 < 29); p_816->g_102++)
            { /* block id: 56 */
                if (p_51)
                    break;
                if ((safe_div_func_int32_t_s_s(l_157, (safe_mod_func_uint8_t_u_u(p_816->g_142, p_816->g_13)))))
                { /* block id: 58 */
                    for (p_816->g_144 = 0; (p_816->g_144 <= 7); p_816->g_144 += 1)
                    { /* block id: 61 */
                        int i;
                        return l_109[p_816->g_144];
                    }
                }
                else
                { /* block id: 64 */
                    if ((*p_816->g_146))
                        break;
                    (*p_816->g_161) = p_816->g_160[5];
                }
                if (p_52)
                    break;
            }
        }
        for (p_816->g_102 = 0; (p_816->g_102 < 10); p_816->g_102 = safe_add_func_uint64_t_u_u(p_816->g_102, 3))
        { /* block id: 73 */
            int8_t *l_188 = &p_816->g_136;
            int32_t l_190[10] = {0x5C213928L,0x5C213928L,0x5C213928L,0x5C213928L,0x5C213928L,0x5C213928L,0x5C213928L,0x5C213928L,0x5C213928L,0x5C213928L};
            int32_t **l_239[1];
            int i;
            for (i = 0; i < 1; i++)
                l_239[i] = &l_147;
            if (l_109[7])
            { /* block id: 74 */
                (*p_816->g_164) ^= p_51;
                for (p_53 = 0; (p_53 > 3); p_53 = safe_add_func_uint32_t_u_u(p_53, 9))
                { /* block id: 78 */
                    int32_t *l_167 = &l_109[1];
                    (*l_167) = (-1L);
                }
            }
            else
            { /* block id: 81 */
                int32_t *l_176 = &l_109[2];
                int32_t l_194 = (-1L);
                int32_t l_210 = 0x39C60537L;
                for (p_52 = 2; (p_52 <= 7); p_52 += 1)
                { /* block id: 84 */
                    uint32_t l_177 = 5UL;
                    uint8_t *l_180[7];
                    int32_t *l_195 = (void*)0;
                    int32_t l_211 = 0x3F86FAEEL;
                    int i;
                    for (i = 0; i < 7; i++)
                        l_180[i] = &p_816->g_64;
                    (*p_816->g_169) = l_168;
                }
            }
        }
        return (*l_147);
    }
    return (*p_816->g_183);
}


/* ------------------------------------------ */
/* 
 * reads : p_816->g_111 p_816->g_102 p_816->g_13 p_816->g_67 p_816->g_107 p_816->g_142
 * writes: p_816->g_107 p_816->g_136 p_816->g_142
 */
int16_t  func_93(uint64_t * p_94, int16_t  p_95, uint32_t  p_96, uint32_t  p_97, uint8_t * p_98, struct S1 * p_816)
{ /* block id: 31 */
    int32_t *l_110 = &p_816->g_102;
    int64_t l_112[10] = {0L,0x2A13A23B15C07A26L,(-1L),0x2A13A23B15C07A26L,0L,0L,0x2A13A23B15C07A26L,(-1L),0x2A13A23B15C07A26L,0L};
    uint32_t l_140 = 0x8447AD0EL;
    int i;
    (*p_816->g_111) = l_110;
    for (p_97 = 0; (p_97 <= 9); p_97 += 1)
    { /* block id: 35 */
        uint64_t *l_133 = &p_816->g_67;
        uint64_t **l_132 = &l_133;
        uint32_t l_134[5][3];
        int8_t *l_135 = &p_816->g_136;
        int8_t *l_137[4] = {&p_816->g_138,&p_816->g_138,&p_816->g_138,&p_816->g_138};
        int32_t l_139 = 0x242CED75L;
        int32_t *l_141 = &p_816->g_142;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 3; j++)
                l_134[i][j] = 0x2B652894L;
        }
        (*l_141) &= ((safe_sub_func_uint64_t_u_u((((safe_rshift_func_uint8_t_u_s((0x4DAFL | (safe_mod_func_uint16_t_u_u(l_112[p_97], (safe_rshift_func_uint16_t_u_s((0x3EF0B8C27A4A205AL == (*l_110)), 11))))), 5)) != ((((((safe_lshift_func_uint8_t_u_s((safe_sub_func_int8_t_s_s(((safe_sub_func_uint8_t_u_u((!(*l_110)), (safe_unary_minus_func_uint16_t_u(((safe_mul_func_uint16_t_u_u((((*l_110) < (p_816->g_102 > ((l_139 ^= ((*l_135) = ((((*l_132) = &p_816->g_67) != &p_816->g_67) , l_134[4][2]))) , 0UL))) & GROUP_DIVERGE(2, 1)), l_112[p_97])) ^ l_140))))) > 0x3D8BL), p_816->g_13)), p_816->g_67)) <= 255UL) , 0xC62F16C9L) <= GROUP_DIVERGE(2, 1)) < p_97) < (*l_110))) <= (**p_816->g_111)), 0x0130CBD1ED58CDB4L)) && (*l_110));
    }
    return p_816->g_102;
}


/* ------------------------------------------ */
/* 
 * reads : p_816->g_102 p_816->g_67
 * writes: p_816->g_102 p_816->g_107
 */
int8_t  func_99(uint64_t * p_100, struct S1 * p_816)
{ /* block id: 26 */
    int32_t *l_101[6][3] = {{&p_816->g_102,&p_816->g_102,(void*)0},{&p_816->g_102,&p_816->g_102,(void*)0},{&p_816->g_102,&p_816->g_102,(void*)0},{&p_816->g_102,&p_816->g_102,(void*)0},{&p_816->g_102,&p_816->g_102,(void*)0},{&p_816->g_102,&p_816->g_102,(void*)0}};
    uint8_t l_103 = 0x9BL;
    int32_t **l_106[5];
    int i, j;
    for (i = 0; i < 5; i++)
        l_106[i] = &l_101[0][0];
    --l_103;
    p_816->g_102 ^= (0x0FL <= 0x67L);
    p_816->g_107 = l_101[5][0];
    return p_816->g_67;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[80];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 80; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[80];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 80; i++)
            l_special_values[i] = 0;
    struct S1 c_817;
    struct S1* p_816 = &c_817;
    struct S1 c_818 = {
        2L, // p_816->g_13
        0x5AL, // p_816->g_64
        18446744073709551615UL, // p_816->g_67
        0L, // p_816->g_102
        (void*)0, // p_816->g_107
        &p_816->g_107, // p_816->g_111
        (-5L), // p_816->g_136
        0x06L, // p_816->g_138
        0x439F97B5L, // p_816->g_142
        1UL, // p_816->g_144
        &p_816->g_102, // p_816->g_146
        &p_816->g_107, // p_816->g_148
        {{0x72B4L,1UL},{0x72B4L,1UL},{0x72B4L,1UL},{0x72B4L,1UL},{0x72B4L,1UL},{0x72B4L,1UL},{0x72B4L,1UL},{0x72B4L,1UL}}, // p_816->g_160
        &p_816->g_160[3], // p_816->g_161
        &p_816->g_142, // p_816->g_164
        &p_816->g_107, // p_816->g_170
        &p_816->g_170, // p_816->g_169
        0x6F93B096275E0746L, // p_816->g_175
        {&p_816->g_64,&p_816->g_64,&p_816->g_64}, // p_816->g_182
        &p_816->g_64, // p_816->g_183
        0x605CL, // p_816->g_192
        0xA39DL, // p_816->g_212
        1L, // p_816->g_223
        &p_816->g_67, // p_816->g_231
        &p_816->g_231, // p_816->g_230
        0x3AL, // p_816->g_260
        0xA39CL, // p_816->g_262
        0L, // p_816->g_265
        0xAE4E6314L, // p_816->g_293
        (void*)0, // p_816->g_316
        0x5849L, // p_816->g_385
        0L, // p_816->g_416
        {0x19L,0x19L,0x19L,0x19L}, // p_816->g_422
        {18446744073709551615UL}, // p_816->g_426
        &p_816->g_107, // p_816->g_441
        {0UL,1UL}, // p_816->g_513
        &p_816->g_160[5].f0, // p_816->g_520
        &p_816->g_520, // p_816->g_519
        0xF34D92C1AE49C843L, // p_816->g_561
        {0x78L,0x78L,0x78L}, // p_816->g_631
        0x3A7A2216A7398B14L, // p_816->g_632
        1UL, // p_816->g_633
        {{{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL}},{{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL}},{{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL},{0x8AE6E0694382190DL,0x79115FF9086ACC2DL,0x79115FF9086ACC2DL,0x8AE6E0694382190DL,18446744073709551612UL}}}, // p_816->g_647
        0xA2D072F9L, // p_816->g_652
        65535UL, // p_816->g_661
        sequence_input[get_global_id(0)], // p_816->global_0_offset
        sequence_input[get_global_id(1)], // p_816->global_1_offset
        sequence_input[get_global_id(2)], // p_816->global_2_offset
        sequence_input[get_local_id(0)], // p_816->local_0_offset
        sequence_input[get_local_id(1)], // p_816->local_1_offset
        sequence_input[get_local_id(2)], // p_816->local_2_offset
        sequence_input[get_group_id(0)], // p_816->group_0_offset
        sequence_input[get_group_id(1)], // p_816->group_1_offset
        sequence_input[get_group_id(2)], // p_816->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_817 = c_818;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_816);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_816->g_13, "p_816->g_13", print_hash_value);
    transparent_crc(p_816->g_64, "p_816->g_64", print_hash_value);
    transparent_crc(p_816->g_67, "p_816->g_67", print_hash_value);
    transparent_crc(p_816->g_102, "p_816->g_102", print_hash_value);
    transparent_crc(p_816->g_136, "p_816->g_136", print_hash_value);
    transparent_crc(p_816->g_138, "p_816->g_138", print_hash_value);
    transparent_crc(p_816->g_142, "p_816->g_142", print_hash_value);
    transparent_crc(p_816->g_144, "p_816->g_144", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_816->g_160[i].f0, "p_816->g_160[i].f0", print_hash_value);
        transparent_crc(p_816->g_160[i].f1, "p_816->g_160[i].f1", print_hash_value);

    }
    transparent_crc(p_816->g_175, "p_816->g_175", print_hash_value);
    transparent_crc(p_816->g_192, "p_816->g_192", print_hash_value);
    transparent_crc(p_816->g_212, "p_816->g_212", print_hash_value);
    transparent_crc(p_816->g_223, "p_816->g_223", print_hash_value);
    transparent_crc(p_816->g_260, "p_816->g_260", print_hash_value);
    transparent_crc(p_816->g_262, "p_816->g_262", print_hash_value);
    transparent_crc(p_816->g_265, "p_816->g_265", print_hash_value);
    transparent_crc(p_816->g_293, "p_816->g_293", print_hash_value);
    transparent_crc(p_816->g_385, "p_816->g_385", print_hash_value);
    transparent_crc(p_816->g_416, "p_816->g_416", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_816->g_422[i], "p_816->g_422[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_816->g_426[i], "p_816->g_426[i]", print_hash_value);

    }
    transparent_crc(p_816->g_513.f0, "p_816->g_513.f0", print_hash_value);
    transparent_crc(p_816->g_513.f1, "p_816->g_513.f1", print_hash_value);
    transparent_crc(p_816->g_561, "p_816->g_561", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_816->g_631[i], "p_816->g_631[i]", print_hash_value);

    }
    transparent_crc(p_816->g_632, "p_816->g_632", print_hash_value);
    transparent_crc(p_816->g_633, "p_816->g_633", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_816->g_647[i][j][k], "p_816->g_647[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_816->g_652, "p_816->g_652", print_hash_value);
    transparent_crc(p_816->g_661, "p_816->g_661", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 80; i++)
            transparent_crc(p_816->g_special_values[i + 80 * get_linear_group_id()], "p_816->g_special_values[i + 80 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 80; i++)
            transparent_crc(p_816->l_special_values[i], "p_816->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
