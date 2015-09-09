// ---fake_divergence ---inter_thread_comm -g 63,53,1 -l 21,1,1
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

__constant uint32_t permutations[10][21] = {
{5,18,20,10,17,12,0,2,7,16,13,3,1,15,11,6,4,14,8,19,9}, // permutation 0
{15,0,20,11,7,3,1,2,5,18,16,13,10,12,19,17,6,4,14,8,9}, // permutation 1
{20,12,11,15,14,4,3,18,10,9,16,19,6,7,0,2,8,5,17,1,13}, // permutation 2
{13,19,12,4,18,9,6,1,16,0,11,10,7,17,15,3,2,14,8,20,5}, // permutation 3
{19,20,1,17,3,15,7,11,16,13,5,10,14,18,9,12,6,4,8,2,0}, // permutation 4
{13,5,15,2,3,11,16,9,8,14,19,0,6,10,17,7,4,1,20,12,18}, // permutation 5
{10,0,12,18,15,11,1,8,17,13,16,19,4,6,2,7,9,3,5,14,20}, // permutation 6
{6,16,11,15,4,10,12,19,8,5,0,17,20,13,9,3,14,18,2,7,1}, // permutation 7
{3,14,4,9,20,1,5,2,17,10,12,16,11,19,0,15,6,7,8,13,18}, // permutation 8
{19,2,20,18,11,5,16,12,14,9,8,17,0,6,7,15,3,1,13,4,10} // permutation 9
};

// Seed: 32

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t *g_17;
    uint16_t g_26;
    volatile uint16_t *g_31;
    int8_t g_33;
    uint32_t g_52[10][1][6];
    uint64_t g_59;
    int32_t g_67[5][6][8];
    int32_t * volatile g_66[3];
    int32_t * volatile g_68[6][1][3];
    int32_t * volatile g_69[8];
    int32_t g_87;
    uint64_t *g_107[6];
    int16_t g_109;
    uint8_t g_118[3][8][4];
    int32_t g_132;
    int32_t * volatile g_131;
    uint64_t g_186;
    int64_t g_193[5];
    int16_t g_216;
    uint32_t g_226;
    uint8_t g_228;
    int16_t g_296[3][9];
    int8_t g_304;
    int8_t g_306;
    uint16_t g_320;
    uint64_t g_337;
    uint32_t **g_367[4][6];
    int32_t * volatile g_425[10];
    int32_t * volatile g_426;
    int32_t * volatile g_427;
    volatile uint16_t g_437;
    int32_t ** volatile g_474;
    int32_t g_478;
    int64_t *g_547;
    int32_t g_574;
    int32_t g_616;
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
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_623);
int32_t * func_2(uint8_t  p_3, struct S0 * p_623);
uint8_t  func_6(uint64_t  p_7, uint32_t  p_8, int32_t * p_9, struct S0 * p_623);
uint8_t  func_12(uint32_t  p_13, int64_t  p_14, struct S0 * p_623);
int8_t  func_20(uint32_t  p_21, int64_t  p_22, struct S0 * p_623);
uint32_t  func_36(int8_t * p_37, uint16_t * p_38, int8_t * p_39, int32_t * p_40, struct S0 * p_623);
int32_t * func_71(uint32_t  p_72, uint16_t * p_73, uint32_t  p_74, uint8_t  p_75, int64_t  p_76, struct S0 * p_623);
int8_t * func_77(uint32_t  p_78, struct S0 * p_623);
uint8_t  func_81(uint64_t * p_82, uint32_t  p_83, uint16_t * p_84, int8_t  p_85, uint64_t  p_86, struct S0 * p_623);
int32_t  func_100(int16_t  p_101, int64_t  p_102, int32_t  p_103, int32_t * p_104, struct S0 * p_623);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_623->g_comm_values p_623->g_17 p_623->g_26 p_623->g_31 p_623->g_33 p_623->l_comm_values p_623->g_52 p_623->g_59 p_623->g_67 p_623->g_87 p_623->g_109 p_623->g_118 p_623->g_131 p_623->g_132 p_623->g_186 p_623->g_228 p_623->g_69 p_623->g_107 p_623->g_216 p_623->g_304 p_623->g_306 p_623->g_320 p_623->g_337 p_623->g_296 p_623->g_193 p_623->g_226 p_623->g_367 p_623->g_427 p_623->g_437 p_623->g_474 p_623->g_478 p_623->g_574 permutations p_623->g_616
 * writes: p_623->g_26 p_623->g_33 p_623->g_52 p_623->g_59 p_623->g_67 p_623->g_107 p_623->g_109 p_623->g_118 p_623->g_132 p_623->g_66 p_623->g_87 p_623->l_comm_values p_623->g_186 p_623->g_193 p_623->g_17 p_623->g_216 p_623->g_228 p_623->g_69 p_623->g_comm_values p_623->g_226 p_623->g_296 p_623->g_304 p_623->g_306 p_623->g_68 p_623->g_320 p_623->g_478 p_623->g_337 p_623->g_547 p_623->g_616
 */
int32_t  func_1(struct S0 * p_623)
{ /* block id: 4 */
    int32_t **l_480 = (void*)0;
    int32_t *l_482 = &p_623->g_87;
    int32_t **l_481 = &l_482;
    int32_t **l_483 = (void*)0;
    int32_t **l_484 = (void*)0;
    int32_t *l_485 = &p_623->g_67[0][0][0];
    int32_t *l_487[5];
    int32_t **l_486 = &l_487[2];
    int32_t l_528[4][8][2] = {{{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L}},{{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L}},{{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L}},{{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L},{1L,0x6559F092L}}};
    uint64_t **l_550 = &p_623->g_107[2];
    uint64_t ***l_549 = &l_550;
    uint32_t l_588 = 0x01DE3194L;
    int32_t l_612[3];
    uint16_t l_613[1][9][8] = {{{0x9486L,0x9486L,65535UL,0xAE75L,0xDA0EL,0UL,0UL,0x87AAL},{0x9486L,0x9486L,65535UL,0xAE75L,0xDA0EL,0UL,0UL,0x87AAL},{0x9486L,0x9486L,65535UL,0xAE75L,0xDA0EL,0UL,0UL,0x87AAL},{0x9486L,0x9486L,65535UL,0xAE75L,0xDA0EL,0UL,0UL,0x87AAL},{0x9486L,0x9486L,65535UL,0xAE75L,0xDA0EL,0UL,0UL,0x87AAL},{0x9486L,0x9486L,65535UL,0xAE75L,0xDA0EL,0UL,0UL,0x87AAL},{0x9486L,0x9486L,65535UL,0xAE75L,0xDA0EL,0UL,0UL,0x87AAL},{0x9486L,0x9486L,65535UL,0xAE75L,0xDA0EL,0UL,0UL,0x87AAL},{0x9486L,0x9486L,65535UL,0xAE75L,0xDA0EL,0UL,0UL,0x87AAL}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_487[i] = &p_623->g_132;
    for (i = 0; i < 3; i++)
        l_612[i] = 0x4DD97E09L;
    (*l_486) = (l_485 = ((*l_481) = ((*p_623->g_474) = func_2(p_623->g_comm_values[p_623->tid], p_623))));
    for (p_623->g_337 = 0; (p_623->g_337 == 16); ++p_623->g_337)
    { /* block id: 248 */
        uint64_t **l_493 = &p_623->g_107[4];
        uint64_t ***l_492 = &l_493;
        int32_t l_494 = 0x14EF5D28L;
        int32_t l_511 = 0x4D636AC4L;
        int32_t l_514[3];
        uint32_t l_523 = 0x8AE40B88L;
        int16_t l_575 = 0x14CEL;
        uint16_t l_585 = 0UL;
        int16_t *l_586 = &l_575;
        uint16_t *l_587[3];
        int64_t **l_598 = &p_623->g_547;
        int64_t ***l_597 = &l_598;
        uint8_t *l_605 = &p_623->g_118[0][7][2];
        int32_t *l_614 = (void*)0;
        int32_t *l_615 = &p_623->g_616;
        int32_t l_617 = 0x74C54A1BL;
        int i;
        for (i = 0; i < 3; i++)
            l_514[i] = 0x48B2AE1FL;
        for (i = 0; i < 3; i++)
            l_587[i] = &l_585;
        for (p_623->g_109 = 0; (p_623->g_109 >= 19); p_623->g_109++)
        { /* block id: 251 */
            uint64_t l_505 = 18446744073709551611UL;
            int32_t l_510[5] = {0x20EB32F3L,0x20EB32F3L,0x20EB32F3L,0x20EB32F3L,0x20EB32F3L};
            uint8_t l_516 = 1UL;
            uint32_t *l_529 = &p_623->g_226;
            uint8_t *l_530 = &p_623->g_228;
            int64_t *l_535 = (void*)0;
            int64_t *l_536 = (void*)0;
            int64_t *l_537 = (void*)0;
            int64_t *l_538 = (void*)0;
            int64_t *l_539 = (void*)0;
            int i, j;
            (*p_623->g_131) |= ((+p_623->g_comm_values[p_623->tid]) , ((void*)0 == l_492));
            if ((l_494 = ((p_623->g_52[5][0][3] <= ((p_623->g_33 = (((l_494 , (safe_sub_func_uint64_t_u_u(l_494, ((((safe_sub_func_int8_t_s_s((1L != (safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((0x75L && 0x74L), p_623->g_306)), (safe_mod_func_int32_t_s_s(l_505, (safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s((-9L), p_623->g_304)), 7))))))), GROUP_DIVERGE(1, 1))) , p_623->g_67[1][0][1]) | p_623->g_228) , 0x547B91E947ADE208L)))) | (-3L)) , p_623->g_296[2][1])) >= 1UL)) & l_494)))
            { /* block id: 255 */
                int16_t l_512 = 1L;
                int32_t l_513 = 0x339453BFL;
                int16_t l_515 = 0x78E0L;
                ++l_516;
                (*l_486) = (*p_623->g_474);
            }
            else
            { /* block id: 258 */
                uint32_t l_519 = 0UL;
                int32_t l_522 = 0x18D10BD9L;
                l_519++;
                l_523++;
            }
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_623->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 21)), permutations[(safe_mod_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_u((((((*l_530) ^= (l_528[0][6][0] >= (0xF8B90A3CL < ((*l_529) |= l_511)))) && (p_623->g_87 <= ((safe_lshift_func_int8_t_s_s(l_514[0], 7)) && (safe_lshift_func_int8_t_s_u((~p_623->g_228), 4))))) != ((p_623->g_118[0][3][0] = 247UL) < ((0x4AE16D2DC129E017L < (l_494 = (((1UL && l_516) , GROUP_DIVERGE(1, 1)) ^ 0xFD21AA4118ECD50AL))) , 0x10L))) , p_623->g_52[8][0][5]), p_623->g_437)) == l_523), 10))][(safe_mod_func_uint32_t_u_u(p_623->tid, 21))]));
            for (l_523 = 0; (l_523 >= 7); l_523 = safe_add_func_uint64_t_u_u(l_523, 2))
            { /* block id: 271 */
                int64_t *l_545 = (void*)0;
                uint64_t ***l_548 = (void*)0;
                int32_t l_557 = 0x38E5EAA8L;
                uint64_t l_580 = 0x7B9BA1CD3E25E155L;
                if ((*p_623->g_131))
                { /* block id: 272 */
                    int64_t *l_544 = (void*)0;
                    for (p_623->g_26 = 0; (p_623->g_26 >= 9); p_623->g_26 = safe_add_func_uint16_t_u_u(p_623->g_26, 5))
                    { /* block id: 275 */
                        int64_t **l_546[5][2] = {{&l_535,&l_535},{&l_535,&l_535},{&l_535,&l_535},{&l_535,&l_535},{&l_535,&l_535}};
                        uint32_t **l_572 = &l_529;
                        int8_t *l_573 = &p_623->g_304;
                        int i, j;
                        (*l_486) = (*p_623->g_474);
                        p_623->g_478 &= (0UL <= ((l_544 = p_623->g_107[3]) == (p_623->g_547 = l_545)));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_623->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 21)), permutations[(safe_mod_func_uint32_t_u_u((l_548 != l_549), 10))][(safe_mod_func_uint32_t_u_u(p_623->tid, 21))]));
                        (*p_623->g_427) = (safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((((((safe_mul_func_uint8_t_u_u(((0xD895L && l_557) < (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(2UL, (-1L))), 2))), (safe_div_func_uint32_t_u_u((safe_add_func_int16_t_s_s((safe_mod_func_int32_t_s_s((((*l_573) = (safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(p_623->g_comm_values[p_623->tid], p_623->g_59)), ((*l_530) &= (&l_529 != l_572))))) && p_623->g_67[3][1][2]), 0x670520B6L)), GROUP_DIVERGE(2, 1))), p_623->g_574)))) >= permutations[(safe_mod_func_uint32_t_u_u((l_548 != l_549), 10))][(safe_mod_func_uint32_t_u_u(p_623->tid, 21))]) | l_575) && l_557) > permutations[(safe_mod_func_uint32_t_u_u((l_548 != l_549), 10))][(safe_mod_func_uint32_t_u_u(p_623->tid, 21))]), p_623->g_193[2])) ^ p_623->l_comm_values[(safe_mod_func_uint32_t_u_u(p_623->tid, 21))]), 2));
                    }
                    return l_557;
                }
                else
                { /* block id: 288 */
                    for (l_557 = 0; (l_557 != 23); ++l_557)
                    { /* block id: 291 */
                        l_514[0] = (!(&p_623->g_109 == ((safe_lshift_func_uint8_t_u_s(permutations[(safe_mod_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_u((((((*l_530) ^= (l_528[0][6][0] >= (0xF8B90A3CL < ((*l_529) |= l_511)))) && (p_623->g_87 <= ((safe_lshift_func_int8_t_s_s(l_514[0], 7)) && (safe_lshift_func_int8_t_s_u((~p_623->g_228), 4))))) != ((p_623->g_118[0][3][0] = 247UL) < ((0x4AE16D2DC129E017L < (l_494 = (((1UL && l_516) , GROUP_DIVERGE(1, 1)) ^ 0xFD21AA4118ECD50AL))) , 0x10L))) , p_623->g_52[8][0][5]), p_623->g_437)) == l_523), 10))][(safe_mod_func_uint32_t_u_u(p_623->tid, 21))], 5)) , &p_623->g_296[0][3])));
                        (*l_481) = (*l_481);
                        if (l_580)
                            continue;
                    }
                    if (permutations[(safe_mod_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_u((((((*l_530) ^= (l_528[0][6][0] >= (0xF8B90A3CL < ((*l_529) |= l_511)))) && (p_623->g_87 <= ((safe_lshift_func_int8_t_s_s(l_514[0], 7)) && (safe_lshift_func_int8_t_s_u((~p_623->g_228), 4))))) != ((p_623->g_118[0][3][0] = 247UL) < ((0x4AE16D2DC129E017L < (l_494 = (((1UL && l_516) , GROUP_DIVERGE(1, 1)) ^ 0xFD21AA4118ECD50AL))) , 0x10L))) , p_623->g_52[8][0][5]), p_623->g_437)) == l_523), 10))][(safe_mod_func_uint32_t_u_u(p_623->tid, 21))])
                        break;
                }
            }
        }
        l_514[2] |= ((l_588 = (safe_rshift_func_uint16_t_u_s(((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_623->local_1_offset, get_local_id(1), 10), 0)) <= 0x171BL), ((*l_586) |= ((0x5349L <= ((((void*)0 == &p_623->g_26) , (void*)0) == &p_623->g_107[1])) >= l_585))))) ^ l_523);
        l_617 &= ((((*l_615) ^= (l_514[0] || ((safe_lshift_func_uint8_t_u_s((safe_sub_func_int32_t_s_s((((l_514[1] = (safe_rshift_func_uint8_t_u_u((safe_add_func_int16_t_s_s((((((*l_597) = &p_623->g_547) == &p_623->g_547) == (safe_lshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s((((*l_605) |= (safe_rshift_func_uint16_t_u_s(((p_623->g_193[0] ^ p_623->g_59) ^ (+p_623->g_87)), 3))) , (1L && ((l_494 |= (safe_rshift_func_int16_t_s_u((p_623->g_478 & (safe_add_func_uint32_t_u_u((((void*)0 == &p_623->g_107[0]) != p_623->g_306), (-6L)))), l_612[0]))) == 0x26A58FD17BA15CE5L))), l_514[0])), p_623->g_306))) == l_613[0][2][0]), l_585)), p_623->g_226))) && l_494) | 0xDE620F3FDD34F56FL), l_511)), 6)) , p_623->g_52[5][0][3]))) , (void*)0) == (void*)0);
        for (l_494 = (-27); (l_494 < (-14)); l_494 = safe_add_func_int16_t_s_s(l_494, 5))
        { /* block id: 311 */
            for (l_511 = 17; (l_511 <= (-18)); l_511 = safe_sub_func_uint32_t_u_u(l_511, 3))
            { /* block id: 314 */
                int32_t *l_622 = &l_528[1][7][0];
                (*l_481) = l_622;
            }
        }
    }
    return p_623->g_478;
}


/* ------------------------------------------ */
/* 
 * reads : p_623->g_17 p_623->g_26 p_623->g_comm_values p_623->g_31 p_623->g_33 p_623->l_comm_values p_623->g_52 p_623->g_59 p_623->g_67 p_623->g_87 p_623->g_109 p_623->g_118 p_623->g_131 p_623->g_132 p_623->g_186 p_623->g_228 p_623->g_69 p_623->g_107 p_623->g_216 p_623->g_304 p_623->g_306 p_623->g_320 p_623->g_337 p_623->g_296 p_623->g_193 p_623->g_226 p_623->g_367 p_623->g_427 p_623->g_437 p_623->g_474 p_623->g_478
 * writes: p_623->g_26 p_623->g_33 p_623->g_52 p_623->g_59 p_623->g_67 p_623->g_107 p_623->g_109 p_623->g_118 p_623->g_132 p_623->g_66 p_623->g_87 p_623->l_comm_values p_623->g_186 p_623->g_193 p_623->g_17 p_623->g_216 p_623->g_228 p_623->g_69 p_623->g_comm_values p_623->g_226 p_623->g_296 p_623->g_304 p_623->g_306 p_623->g_68 p_623->g_320 p_623->g_478
 */
int32_t * func_2(uint8_t  p_3, struct S0 * p_623)
{ /* block id: 5 */
    uint16_t *l_25[4][6][2] = {{{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0}},{{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0}},{{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0}},{{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0},{&p_623->g_26,(void*)0}}};
    int32_t l_29 = 1L;
    int8_t *l_32 = &p_623->g_33;
    int32_t *l_477 = &p_623->g_478;
    int32_t **l_479 = &l_477;
    int i, j, k;
    (*l_477) &= (safe_mul_func_uint8_t_u_u(func_6((safe_add_func_int16_t_s_s((func_12((safe_sub_func_int16_t_s_s((-1L), (p_623->g_17 == (((*l_32) |= (safe_add_func_int8_t_s_s(func_20((safe_sub_func_int32_t_s_s(((--p_623->g_26) < p_623->g_comm_values[p_623->tid]), (l_25[3][2][1] == l_25[1][0][1]))), l_29, p_623), (l_25[2][2][0] != p_623->g_31)))) , (void*)0)))), p_623->l_comm_values[(safe_mod_func_uint32_t_u_u(p_623->tid, 21))], p_623) > 0xEAL), 65535UL)), l_29, &l_29, p_623), 0x55L));
    (*l_479) = (void*)0;
    return (*p_623->g_474);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_6(uint64_t  p_7, uint32_t  p_8, int32_t * p_9, struct S0 * p_623)
{ /* block id: 237 */
    uint64_t l_476 = 18446744073709551615UL;
    return l_476;
}


/* ------------------------------------------ */
/* 
 * reads : p_623->g_17 p_623->l_comm_values p_623->g_52 p_623->g_comm_values p_623->g_59 p_623->g_67 p_623->g_87 p_623->g_109 p_623->g_118 p_623->g_131 p_623->g_132 p_623->g_26 p_623->g_33 p_623->g_186 p_623->g_228 p_623->g_69 p_623->g_107 p_623->g_216 p_623->g_304 p_623->g_306 p_623->g_320 p_623->g_337 p_623->g_296 p_623->g_193 p_623->g_226 p_623->g_367 p_623->g_427 p_623->g_437 p_623->g_474
 * writes: p_623->g_52 p_623->g_59 p_623->g_67 p_623->g_107 p_623->g_109 p_623->g_118 p_623->g_132 p_623->g_66 p_623->g_87 p_623->l_comm_values p_623->g_186 p_623->g_193 p_623->g_17 p_623->g_33 p_623->g_216 p_623->g_228 p_623->g_69 p_623->g_comm_values p_623->g_26 p_623->g_226 p_623->g_296 p_623->g_304 p_623->g_306 p_623->g_68 p_623->g_320
 */
uint8_t  func_12(uint32_t  p_13, int64_t  p_14, struct S0 * p_623)
{ /* block id: 11 */
    int8_t *l_41 = &p_623->g_33;
    int64_t l_56 = 0x3260039C1D55E0ECL;
    int32_t l_57 = 0x4EB2CFB1L;
    int32_t l_62[1];
    uint64_t *l_105 = &p_623->g_59;
    uint16_t *l_133[6][8] = {{&p_623->g_26,&p_623->g_26,&p_623->g_26,&p_623->g_26,(void*)0,&p_623->g_26,&p_623->g_26,(void*)0},{&p_623->g_26,&p_623->g_26,&p_623->g_26,&p_623->g_26,(void*)0,&p_623->g_26,&p_623->g_26,(void*)0},{&p_623->g_26,&p_623->g_26,&p_623->g_26,&p_623->g_26,(void*)0,&p_623->g_26,&p_623->g_26,(void*)0},{&p_623->g_26,&p_623->g_26,&p_623->g_26,&p_623->g_26,(void*)0,&p_623->g_26,&p_623->g_26,(void*)0},{&p_623->g_26,&p_623->g_26,&p_623->g_26,&p_623->g_26,(void*)0,&p_623->g_26,&p_623->g_26,(void*)0},{&p_623->g_26,&p_623->g_26,&p_623->g_26,&p_623->g_26,(void*)0,&p_623->g_26,&p_623->g_26,(void*)0}};
    int i, j;
    for (i = 0; i < 1; i++)
        l_62[i] = 8L;
    for (p_14 = 0; (p_14 > 16); p_14++)
    { /* block id: 14 */
        int32_t l_55 = 0x19F88DD0L;
        uint64_t *l_58 = &p_623->g_59;
        uint32_t *l_60 = (void*)0;
        uint32_t *l_61[4];
        int32_t *l_70 = &p_623->g_67[3][1][2];
        uint64_t **l_106[10][3][3] = {{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}},{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}},{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}},{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}},{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}},{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}},{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}},{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}},{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}},{{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105},{&l_58,&l_58,&l_105}}};
        int16_t *l_108 = &p_623->g_109;
        uint64_t l_141 = 0x32AA67735A7C04A7L;
        int32_t **l_475 = &l_70;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_61[i] = (void*)0;
        (*l_70) ^= (p_623->g_17 != (func_36(l_41, ((safe_add_func_uint16_t_u_u((func_20((l_62[0] |= (safe_div_func_uint16_t_u_u(4UL, (safe_mod_func_uint64_t_u_u(((p_14 , 0xE62699FF93F8DE90L) , ((*l_58) |= ((safe_sub_func_int8_t_s_s(p_623->l_comm_values[(safe_mod_func_uint32_t_u_u(p_623->tid, 21))], (safe_div_func_int16_t_s_s((func_20((p_623->g_52[5][0][3]++), (l_56 = l_55), p_623) == p_623->g_comm_values[p_623->tid]), l_57)))) >= p_13))), 0x35D7D231D5762CC6L))))), p_13, p_623) ^ l_57), p_623->g_comm_values[p_623->tid])) , (void*)0), &p_623->g_33, &l_57, p_623) , p_623->g_17));
        (*l_475) = func_71((p_14 , func_36(func_77((func_20((((safe_sub_func_int8_t_s_s(p_13, func_81(((+p_623->g_87) , &p_623->g_59), ((safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((((*l_58) = (safe_sub_func_uint8_t_u_u(func_20((((safe_div_func_int8_t_s_s((0xCAF44556L == ((*l_70) = func_100(((*l_108) &= (((0x18L & 0x1CL) || 0x72L) | (((p_623->g_107[4] = ((l_58 != l_105) , l_105)) != &p_623->g_59) == p_623->g_52[3][0][1]))), p_13, p_14, l_70, p_623))), 0x2EL)) ^ l_56) == 0x252EC475L), p_623->g_26, p_623), GROUP_DIVERGE(0, 1)))) >= p_623->g_33) | 0L), 1L)), GROUP_DIVERGE(1, 1))) > p_623->g_52[7][0][3]), 1)), p_623->l_comm_values[(safe_mod_func_uint32_t_u_u(p_623->tid, 21))])) , 0xC42B59B2L), l_133[2][0], p_623->g_26, p_14, p_623))) >= 0xEBE3L) , FAKE_DIVERGE(p_623->global_0_offset, get_global_id(0), 10)), p_623->g_33, p_623) < p_14), p_623), l_133[2][0], l_41, &p_623->g_87, p_623)), l_133[2][0], l_62[0], p_14, l_141, p_623);
        (*l_475) = (*p_623->g_474);
    }
    return l_62[0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_20(uint32_t  p_21, int64_t  p_22, struct S0 * p_623)
{ /* block id: 7 */
    int8_t l_30 = (-1L);
    l_30 = 0x3BF58AAEL;
    return l_30;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_36(int8_t * p_37, uint16_t * p_38, int8_t * p_39, int32_t * p_40, struct S0 * p_623)
{ /* block id: 19 */
    uint32_t l_63[3][6] = {{4294967291UL,4294967291UL,0xB48CA181L,1UL,4294967290UL,1UL},{4294967291UL,4294967291UL,0xB48CA181L,1UL,4294967290UL,1UL},{4294967291UL,4294967291UL,0xB48CA181L,1UL,4294967290UL,1UL}};
    int i, j;
    l_63[2][4]--;
    return l_63[1][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_623->g_109 p_623->g_87 p_623->g_186 p_623->g_52 p_623->g_33 p_623->g_132 p_623->g_26 p_623->g_228 p_623->g_118 p_623->g_67 p_623->g_17 p_623->g_59 p_623->g_69 p_623->g_107 p_623->g_216 p_623->g_304 p_623->g_306 p_623->g_320 p_623->g_337 p_623->g_296 p_623->g_131 p_623->g_193 p_623->g_226 p_623->g_367 p_623->l_comm_values p_623->g_427 p_623->g_437 p_623->g_comm_values p_623->g_474
 * writes: p_623->g_109 p_623->g_66 p_623->g_132 p_623->g_87 p_623->l_comm_values p_623->g_59 p_623->g_186 p_623->g_118 p_623->g_193 p_623->g_17 p_623->g_33 p_623->g_216 p_623->g_228 p_623->g_69 p_623->g_comm_values p_623->g_26 p_623->g_226 p_623->g_296 p_623->g_304 p_623->g_306 p_623->g_67 p_623->g_107 p_623->g_68 p_623->g_320
 */
int32_t * func_71(uint32_t  p_72, uint16_t * p_73, uint32_t  p_74, uint8_t  p_75, int64_t  p_76, struct S0 * p_623)
{ /* block id: 45 */
    uint16_t l_146[2][1];
    int32_t l_168 = 0x31E4377CL;
    int32_t l_171 = 1L;
    int32_t l_172 = 0x768EAD14L;
    uint8_t *l_218 = &p_623->g_118[0][5][3];
    int32_t *l_230 = &p_623->g_67[3][0][5];
    int32_t l_250 = 3L;
    int32_t l_251 = 1L;
    uint32_t l_252[7][3][4] = {{{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL}},{{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL}},{{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL}},{{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL}},{{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL}},{{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL}},{{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL},{0x7D8A5F0AL,0x7D8A5F0AL,4294967289UL,4294967291UL}}};
    uint16_t l_383 = 0x1CAEL;
    uint32_t l_452 = 0UL;
    uint64_t **l_469 = &p_623->g_107[0];
    int16_t *l_470 = &p_623->g_216;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_146[i][j] = 0x51F8L;
    }
    for (p_623->g_109 = 0; (p_623->g_109 >= (-18)); p_623->g_109 = safe_sub_func_int16_t_s_s(p_623->g_109, 9))
    { /* block id: 48 */
        int64_t l_163 = 0x436573C08D31AF41L;
        int32_t l_164 = (-8L);
        int32_t l_174[8] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
        uint16_t l_179 = 0x24D7L;
        int32_t **l_190 = &p_623->g_17;
        uint64_t l_202 = 18446744073709551615UL;
        int64_t *l_257 = (void*)0;
        int64_t *l_258 = (void*)0;
        int64_t *l_259[8][8] = {{(void*)0,&l_163,&l_163,(void*)0,&l_163,(void*)0,(void*)0,&l_163},{(void*)0,&l_163,&l_163,(void*)0,&l_163,(void*)0,(void*)0,&l_163},{(void*)0,&l_163,&l_163,(void*)0,&l_163,(void*)0,(void*)0,&l_163},{(void*)0,&l_163,&l_163,(void*)0,&l_163,(void*)0,(void*)0,&l_163},{(void*)0,&l_163,&l_163,(void*)0,&l_163,(void*)0,(void*)0,&l_163},{(void*)0,&l_163,&l_163,(void*)0,&l_163,(void*)0,(void*)0,&l_163},{(void*)0,&l_163,&l_163,(void*)0,&l_163,(void*)0,(void*)0,&l_163},{(void*)0,&l_163,&l_163,(void*)0,&l_163,(void*)0,(void*)0,&l_163}};
        uint32_t *l_263 = &p_623->g_226;
        uint32_t **l_262 = &l_263;
        uint64_t *l_264 = &l_202;
        int16_t *l_273 = &p_623->g_216;
        int i, j;
        if (((void*)0 != &p_623->g_67[3][4][5]))
        { /* block id: 49 */
            int32_t *l_147 = &p_623->g_67[3][1][2];
            int32_t **l_148 = (void*)0;
            int32_t **l_149 = &l_147;
            l_146[0][0] &= (safe_mod_func_uint8_t_u_u(0xBBL, 0x42L));
            p_623->g_66[0] = l_147;
            (*l_149) = &p_623->g_132;
        }
        else
        { /* block id: 53 */
            int32_t l_154 = 6L;
            int32_t *l_157 = &p_623->g_87;
            int32_t l_169 = 0x6068C90CL;
            int32_t l_170 = 0x17D913FAL;
            int32_t l_173 = 3L;
            int32_t l_175 = 0L;
            int32_t l_176 = 0x347AC941L;
            int32_t l_177 = (-1L);
            int32_t l_178[7][3][9] = {{{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)}},{{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)}},{{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)}},{{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)}},{{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)}},{{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)}},{{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)},{0x6959A60EL,(-9L),0L,(-9L),(-8L),1L,0x6AED0E2EL,0x617F405FL,(-9L)}}};
            int8_t *l_209[3][10] = {{&p_623->g_33,&p_623->g_33,&p_623->g_33,&p_623->g_33,(void*)0,&p_623->g_33,&p_623->g_33,&p_623->g_33,&p_623->g_33,&p_623->g_33},{&p_623->g_33,&p_623->g_33,&p_623->g_33,&p_623->g_33,(void*)0,&p_623->g_33,&p_623->g_33,&p_623->g_33,&p_623->g_33,&p_623->g_33},{&p_623->g_33,&p_623->g_33,&p_623->g_33,&p_623->g_33,(void*)0,&p_623->g_33,&p_623->g_33,&p_623->g_33,&p_623->g_33,&p_623->g_33}};
            int16_t *l_214 = (void*)0;
            int16_t *l_215 = &p_623->g_216;
            uint8_t *l_217 = &p_623->g_118[0][6][3];
            uint32_t *l_225[9] = {&p_623->g_226,&p_623->g_226,&p_623->g_226,&p_623->g_226,&p_623->g_226,&p_623->g_226,&p_623->g_226,&p_623->g_226,&p_623->g_226};
            uint8_t *l_227 = &p_623->g_228;
            int i, j, k;
            for (p_623->g_132 = (-9); (p_623->g_132 < (-6)); p_623->g_132 = safe_add_func_int64_t_s_s(p_623->g_132, 4))
            { /* block id: 56 */
                int32_t *l_165 = &l_164;
                int32_t *l_166 = &p_623->g_67[3][4][7];
                int32_t *l_167[1];
                uint64_t *l_184 = &p_623->g_59;
                uint64_t *l_185 = &p_623->g_186;
                uint8_t *l_187 = &p_623->g_118[0][3][0];
                int64_t *l_191 = (void*)0;
                int64_t *l_192 = &p_623->g_193[2];
                int i;
                for (i = 0; i < 1; i++)
                    l_167[i] = (void*)0;
                for (p_623->g_87 = (-28); (p_623->g_87 != 4); p_623->g_87 = safe_add_func_uint8_t_u_u(p_623->g_87, 5))
                { /* block id: 59 */
                    int64_t *l_155 = (void*)0;
                    int64_t *l_156 = (void*)0;
                    int32_t *l_162[7];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_162[i] = (void*)0;
                    l_164 ^= (l_163 = (((p_623->l_comm_values[(safe_mod_func_uint32_t_u_u(p_623->tid, 21))] = ((l_154 < FAKE_DIVERGE(p_623->group_0_offset, get_group_id(0), 10)) || 0L)) , l_157) == (((safe_sub_func_uint16_t_u_u((((0x3BL == (p_76 & (0x25EF7775CB63E776L <= ((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_623->group_2_offset, get_group_id(2), 10), 6)) <= (*l_157))))) >= (p_74 , p_75)) || 0x9D622751AD0A0F2BL), l_146[0][0])) , 0x69DB0B10L) , l_162[6])));
                }
                l_179++;
                (*l_157) = (((((safe_lshift_func_int16_t_s_u(6L, 10)) || ((((*l_185) ^= ((*l_184) = 18446744073709551615UL)) ^ p_74) < l_164)) | ((*l_187) = p_76)) > ((((*l_192) = (safe_div_func_int64_t_s_s(p_623->g_52[9][0][4], ((&l_157 == ((p_72 | GROUP_DIVERGE(0, 1)) , l_190)) , l_146[0][0])))) , p_74) >= 0L)) && p_72);
                for (l_154 = 0; (l_154 == (-21)); l_154 = safe_sub_func_int16_t_s_s(l_154, 5))
                { /* block id: 72 */
                    uint16_t l_196[6];
                    int32_t *l_199 = (void*)0;
                    int32_t l_200 = 0L;
                    int32_t l_201 = 0x75E5F06EL;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_196[i] = 0UL;
                    --l_196[2];
                    (*l_190) = l_199;
                    l_202++;
                    (*l_190) = l_167[0];
                }
            }
            if (((safe_mod_func_uint16_t_u_u((((safe_div_func_int8_t_s_s((p_623->g_33 |= l_172), (((*l_157) = (((*l_227) ^= (18446744073709551615UL && (safe_sub_func_int8_t_s_s((safe_mul_func_uint32_t_u_u((l_168 = ((((*l_215) = p_74) & (~((((*l_218) = ((((((l_217 == l_218) , &p_623->g_26) == &l_179) < (l_171 ^= (((safe_rshift_func_int16_t_s_u(((safe_div_func_int64_t_s_s(((safe_add_func_uint16_t_u_u((((l_146[0][0] , &p_623->g_118[0][3][0]) == (void*)0) >= 0xE05617FDL), l_168)) == 0xC4D79268L), p_623->g_132)) < p_623->g_186), p_72)) >= 0x185C4AB55A89C14EL) | 0UL))) > l_146[0][0]) & l_146[0][0])) , (-7L)) , 0L))) && p_623->g_26)), 0UL)), 0x7EL)))) != 249UL)) && p_623->g_118[0][3][0]))) & p_74) > p_623->g_67[4][2][2]), 65533UL)) || p_623->g_67[4][2][2]))
            { /* block id: 86 */
                int32_t *l_229 = &p_623->g_67[3][1][2];
                l_230 = (l_229 = (*l_190));
                for (p_75 = 0; (p_75 <= 40); ++p_75)
                { /* block id: 91 */
                    uint8_t l_233 = 1UL;
                    if (l_233)
                        break;
                    for (l_163 = (-3); (l_163 < (-11)); --l_163)
                    { /* block id: 95 */
                        (*l_157) = p_74;
                        (*l_190) = l_229;
                        l_174[6] ^= p_75;
                        return &p_623->g_87;
                    }
                }
            }
            else
            { /* block id: 102 */
                int32_t *l_236 = (void*)0;
                int32_t *l_237 = &l_171;
                int32_t l_238 = 1L;
                int32_t *l_239 = &l_177;
                int32_t l_240 = 0x0D329E78L;
                int32_t *l_241 = &l_175;
                int32_t *l_242 = &l_177;
                int32_t *l_243 = &l_176;
                int32_t *l_244 = &l_172;
                int32_t *l_245 = &l_168;
                int32_t *l_246 = &p_623->g_132;
                int32_t *l_247 = &l_164;
                int32_t *l_248 = &l_240;
                int32_t *l_249[8];
                int i;
                for (i = 0; i < 8; i++)
                    l_249[i] = &p_623->g_67[3][1][2];
                for (p_623->g_59 = 0; (p_623->g_59 <= 7); p_623->g_59 += 1)
                { /* block id: 105 */
                    int i;
                    p_623->g_69[3] = p_623->g_69[p_623->g_59];
                    return l_236;
                }
                ++l_252[3][1][3];
            }
        }
        if ((safe_add_func_int64_t_s_s((p_623->g_comm_values[p_623->tid] = ((GROUP_DIVERGE(2, 1) < p_623->g_87) , p_623->g_33)), (safe_add_func_uint64_t_u_u(p_76, ((*l_264) ^= (((*l_262) = (void*)0) != (void*)0)))))))
        { /* block id: 115 */
            int32_t *l_267 = &l_164;
            uint32_t l_316 = 4294967293UL;
            for (p_72 = (-8); (p_72 != 46); ++p_72)
            { /* block id: 118 */
                uint64_t l_272[8][6][1] = {{{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL},{18446744073709551612UL}}};
                int32_t *l_307[5];
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_307[i] = &l_164;
                for (p_623->g_87 = 0; (p_623->g_87 <= 2); p_623->g_87 += 1)
                { /* block id: 121 */
                    int32_t *l_268 = &l_251;
                    return (*l_190);
                }
                for (l_250 = 0; (l_250 >= 0); l_250 -= 1)
                { /* block id: 126 */
                    int64_t **l_270 = &l_258;
                    int64_t **l_271 = &l_259[3][5];
                    uint16_t *l_276[9] = {&l_146[0][0],&l_146[0][0],&l_146[0][0],&l_146[0][0],&l_146[0][0],&l_146[0][0],&l_146[0][0],&l_146[0][0],&l_146[0][0]};
                    int64_t *l_277 = (void*)0;
                    int i, j, k;
                    if ((p_623->g_52[(l_250 + 2)][l_250][(l_250 + 4)] || (((safe_unary_minus_func_uint32_t_u((((*l_270) = p_623->g_107[4]) == ((*l_271) = &p_76)))) , l_272[1][1][0]) ^ (((p_623->g_67[3][1][2] < (l_273 == (void*)0)) & ((p_623->g_comm_values[p_623->tid] = (1L && ((p_623->g_26 = (safe_div_func_uint64_t_u_u((p_76 && (*l_267)), l_179))) , p_623->g_118[0][3][0]))) | p_623->g_33)) , 0xA1E64B3CL))))
                    { /* block id: 131 */
                        uint32_t *l_286 = (void*)0;
                        uint32_t *l_287 = &p_623->g_226;
                        int16_t *l_294 = (void*)0;
                        int16_t *l_295 = &p_623->g_296[0][6];
                        int16_t **l_301 = &l_294;
                        int16_t **l_302 = &l_295;
                        int8_t *l_303 = &p_623->g_304;
                        int8_t *l_305 = &p_623->g_306;
                        int i;
                        p_623->g_69[(l_250 + 6)] = p_623->g_69[(l_250 + 3)];
                        (*l_267) = (safe_mod_func_int64_t_s_s(((((p_623->g_132 , (((p_623->g_216 >= ((*l_305) ^= ((*l_303) |= (safe_add_func_uint32_t_u_u(9UL, ((safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((0xFB1D9A2AL <= ((*l_287) = (0x3BL > p_74))), (((*l_295) = (safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (safe_lshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(p_623->g_132, 6)), 3))))) , ((safe_add_func_int8_t_s_s((p_623->g_33 = (p_623->g_26 ^ (safe_mul_func_int16_t_s_s((((*l_302) = ((*l_301) = p_73)) != (void*)0), p_76)))), p_623->g_118[2][1][2])) , 1L)))), p_76)) , l_272[5][3][0])))))) | p_72) == l_272[1][1][0])) , p_623->g_186) == p_623->g_186) ^ p_623->g_52[7][0][0]), p_75));
                        return l_286;
                    }
                    else
                    { /* block id: 142 */
                        uint8_t l_317[8][2] = {{250UL,0x91L},{250UL,0x91L},{250UL,0x91L},{250UL,0x91L},{250UL,0x91L},{250UL,0x91L},{250UL,0x91L},{250UL,0x91L}};
                        int i, j;
                        l_251 = (safe_mod_func_uint16_t_u_u((safe_add_func_int8_t_s_s(((p_72 <= ((p_623->g_52[9][0][4] == (safe_mod_func_uint64_t_u_u(((*l_267) = 1UL), ((*l_264) = (safe_sub_func_int64_t_s_s((-6L), (p_75 == 0x0E914F0B8E9D4F16L))))))) == p_74)) != 65535UL), ((p_623->g_33 , p_623->g_59) , l_316))), p_72));
                        l_317[1][1]++;
                    }
                }
                (*l_267) = p_623->g_320;
                (*l_267) = (253UL <= GROUP_DIVERGE(2, 1));
            }
        }
        else
        { /* block id: 152 */
            l_171 = (safe_lshift_func_int16_t_s_u((+p_623->g_320), (safe_unary_minus_func_uint64_t_u(((p_623->g_67[0][4][3] != (safe_rshift_func_uint8_t_u_s((p_623->g_306 ^ ((*l_273) |= 1L)), 6))) , p_76)))));
        }
    }
    for (p_623->g_26 = 19; (p_623->g_26 >= 8); p_623->g_26 = safe_sub_func_uint16_t_u_u(p_623->g_26, 9))
    { /* block id: 159 */
        int16_t l_328 = (-1L);
        uint64_t *l_357 = (void*)0;
        int64_t *l_429 = (void*)0;
        int32_t l_432 = 0x7226455DL;
        int8_t *l_447 = &p_623->g_304;
        uint16_t *l_448[3][6][5] = {{{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320}},{{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320}},{{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320},{&l_146[0][0],&p_623->g_320,&p_623->g_26,(void*)0,&p_623->g_320}}};
        int8_t *l_451 = &p_623->g_33;
        int32_t *l_453 = &l_250;
        int i, j, k;
        if (l_328)
            break;
        for (p_623->g_216 = 8; (p_623->g_216 < (-8)); p_623->g_216 = safe_sub_func_int8_t_s_s(p_623->g_216, 9))
        { /* block id: 163 */
            int32_t *l_333 = &p_623->g_132;
            int64_t l_359 = 0L;
            uint64_t **l_436 = &p_623->g_107[4];
            uint64_t ***l_435 = &l_436;
            for (l_251 = 0; (l_251 != 20); l_251++)
            { /* block id: 166 */
                int32_t **l_334 = &l_230;
                (*l_334) = l_333;
                if ((safe_div_func_int16_t_s_s((GROUP_DIVERGE(1, 1) , (*l_230)), p_623->g_337)))
                { /* block id: 168 */
                    uint16_t l_346 = 1UL;
                    int16_t *l_351[10][1][1] = {{{&p_623->g_296[1][8]}},{{&p_623->g_296[1][8]}},{{&p_623->g_296[1][8]}},{{&p_623->g_296[1][8]}},{{&p_623->g_296[1][8]}},{{&p_623->g_296[1][8]}},{{&p_623->g_296[1][8]}},{{&p_623->g_296[1][8]}},{{&p_623->g_296[1][8]}},{{&p_623->g_296[1][8]}}};
                    int32_t l_352 = (-5L);
                    uint64_t **l_358 = &p_623->g_107[1];
                    int i, j, k;
                    for (l_172 = 0; (l_172 <= 2); l_172 += 1)
                    { /* block id: 171 */
                        uint32_t l_338 = 6UL;
                        int32_t *l_341 = &p_623->g_67[3][1][2];
                        int i, j;
                        l_338 = ((*l_333) |= p_623->g_296[l_172][(l_172 + 2)]);
                        (*l_341) &= ((safe_lshift_func_int8_t_s_u(p_623->g_296[l_172][(l_172 + 6)], 0)) , (*p_623->g_131));
                        (*l_334) = &p_623->g_67[4][3][7];
                    }
                    l_172 = (p_623->g_52[5][0][3] > (((safe_sub_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((&p_623->g_320 == p_73), l_346)), (safe_div_func_int32_t_s_s(((safe_sub_func_int16_t_s_s((l_352 = (-2L)), ((safe_rshift_func_int16_t_s_s(1L, 0)) | (safe_rshift_func_uint16_t_u_u(((((l_357 != ((*l_358) = (void*)0)) == (((*l_334) = (((&p_623->g_337 != &p_623->g_337) | p_623->g_320) , (void*)0)) == (void*)0)) , l_359) ^ (*l_333)), p_623->g_193[0]))))) & p_623->g_226), 5L)))) | 0x307EL) & p_75));
                }
                else
                { /* block id: 181 */
                    uint8_t l_360 = 0x4AL;
                    int8_t *l_368 = &p_623->g_306;
                    int64_t *l_373 = &l_359;
                    int32_t l_382 = 0x096F6385L;
                    int8_t l_424 = 0x7AL;
                    int32_t *l_428[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_428[i] = &p_623->g_67[3][1][2];
                    if (((+l_360) ^ (safe_sub_func_int16_t_s_s((((safe_mod_func_int64_t_s_s((((*l_373) ^= ((safe_add_func_int8_t_s_s(((*l_368) = (p_623->g_367[2][1] != p_623->g_367[2][1])), (safe_sub_func_int8_t_s_s(p_75, p_623->g_320)))) , (safe_lshift_func_int16_t_s_s(p_623->g_193[2], 4)))) & (((safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u((p_623->g_193[2] , (((**l_334) , (safe_rshift_func_uint8_t_u_u((p_76 > GROUP_DIVERGE(2, 1)), l_382))) , l_382)), (*l_230))) | 0x1C4FL), l_383)), 0x05L)) < 1UL) | 0x1B7AE38FL)), FAKE_DIVERGE(p_623->local_1_offset, get_local_id(1), 10))) > 0UL) < p_76), 0x0AC4L))))
                    { /* block id: 184 */
                        int32_t *l_384 = &l_250;
                        (*l_384) &= (*l_333);
                    }
                    else
                    { /* block id: 186 */
                        uint16_t *l_399 = &l_146[0][0];
                        uint64_t *l_420 = &p_623->g_186;
                        int32_t l_421 = 0x57FA05ACL;
                        int16_t *l_422 = (void*)0;
                        int16_t *l_423 = &p_623->g_109;
                        if (l_328)
                            break;
                        if ((**l_334))
                            continue;
                        if (p_74)
                            break;
                        (*p_623->g_427) = (safe_div_func_int32_t_s_s(((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((GROUP_DIVERGE(2, 1) || (safe_add_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((((*l_368) &= p_623->g_296[0][6]) || (!((*l_218)--))), ((*l_399) = ((p_76 , &p_623->g_193[3]) == (void*)0)))) && ((safe_mod_func_int32_t_s_s(((-8L) <= (p_76 ^ (((*l_373) = (((*l_423) &= (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s((!(safe_mul_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s(((((safe_div_func_int32_t_s_s(((*l_230) = p_76), ((safe_div_func_uint64_t_u_u(((*l_420) = (p_75 >= (safe_div_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((p_623->l_comm_values[(safe_mod_func_uint32_t_u_u(p_623->tid, 21))] > 0x12F049867E8981D3L), p_75)), 0x9AL)))), p_623->g_228)) || p_75))) , (**l_334)) != GROUP_DIVERGE(2, 1)) >= p_75), l_421)) | p_76), GROUP_DIVERGE(2, 1)))), p_623->g_226)) != p_75), p_72)) < 0xCB978715L), l_382))) & 0xDEE0L)) == p_75))), p_76)) != p_74)) > FAKE_DIVERGE(p_623->global_2_offset, get_global_id(2), 10)), 65535UL))), p_623->g_226)), 3)) >= 0x2D8E9F09L), l_424));
                    }
                    for (p_623->g_228 = 0; (p_623->g_228 <= 2); p_623->g_228 += 1)
                    { /* block id: 201 */
                        int i, j, k;
                        if (l_252[p_623->g_228][p_623->g_228][(p_623->g_228 + 1)])
                            break;
                    }
                    p_623->g_68[3][0][0] = l_428[1];
                }
                return &p_623->g_87;
            }
            (*l_333) = (((((*l_218) = ((((void*)0 == l_429) , (void*)0) != (void*)0)) > p_75) && (safe_lshift_func_uint8_t_u_u((((l_432 = 18446744073709551615UL) <= (p_623->g_304 < 0x73L)) > (safe_mul_func_int8_t_s_s((((*l_435) = &l_357) == &p_623->g_107[5]), p_623->g_437))), l_328))) > 255UL);
            p_623->g_68[3][0][0] = &l_250;
            for (l_383 = (-21); (l_383 > 51); l_383++)
            { /* block id: 215 */
                int32_t *l_440[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_440[i] = &l_171;
                l_251 &= ((*l_333) = l_328);
            }
        }
        (*l_453) = ((p_623->l_comm_values[(safe_mod_func_uint32_t_u_u(p_623->tid, 21))] , (((*l_451) = (((safe_mul_func_int16_t_s_s(((safe_mul_func_int8_t_s_s(((*l_447) |= (safe_mod_func_uint32_t_u_u((!p_76), p_74))), ((-8L) && 18446744073709551614UL))) < ((void*)0 == &p_623->g_107[3])), (++p_623->g_320))) < (l_328 ^ 6L)) != p_623->g_118[1][1][2])) ^ l_452)) , p_72);
    }
    if ((p_76 | ((safe_rshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(l_146[0][0], p_623->g_comm_values[p_623->tid])), 5)) <= GROUP_DIVERGE(1, 1))))
    { /* block id: 225 */
        int32_t *l_460 = (void*)0;
        int32_t *l_461 = &p_623->g_87;
        int16_t *l_466 = &p_623->g_296[0][6];
        int32_t *l_471 = &l_168;
        (*l_461) = (safe_rshift_func_uint16_t_u_u((p_623->g_118[1][0][0] , p_623->g_26), 4));
        (*l_471) ^= (((safe_lshift_func_uint8_t_u_u(p_623->g_33, (((((safe_rshift_func_int16_t_s_u(p_75, 4)) & (0x53L ^ 3L)) , l_466) != (l_470 = ((safe_sub_func_uint64_t_u_u(p_76, (((&p_76 == (void*)0) , FAKE_DIVERGE(p_623->global_1_offset, get_global_id(1), 10)) , (((void*)0 != l_469) , 0L)))) , &p_623->g_296[0][8]))) ^ p_623->g_306))) >= p_623->g_337) , (*l_461));
    }
    else
    { /* block id: 229 */
        int32_t *l_472 = &p_623->g_132;
        int32_t **l_473 = (void*)0;
        (*p_623->g_474) = l_472;
    }
    return (*p_623->g_474);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_77(uint32_t  p_78, struct S0 * p_623)
{ /* block id: 39 */
    uint64_t *l_136[7][3][2] = {{{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59}},{{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59}},{{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59}},{{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59}},{{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59}},{{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59}},{{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59},{&p_623->g_59,&p_623->g_59}}};
    int16_t *l_137 = &p_623->g_109;
    int16_t *l_139 = &p_623->g_109;
    int16_t **l_138 = &l_139;
    int8_t *l_140 = &p_623->g_33;
    int i, j, k;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_623->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 21)), permutations[(safe_mod_func_uint32_t_u_u((l_136[2][2][0] == ((l_137 != ((*l_138) = l_137)) , &p_623->g_59)), 10))][(safe_mod_func_uint32_t_u_u(p_623->tid, 21))]));
    return l_140;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_81(uint64_t * p_82, uint32_t  p_83, uint16_t * p_84, int8_t  p_85, uint64_t  p_86, struct S0 * p_623)
{ /* block id: 36 */
    uint64_t **l_135 = &p_623->g_107[0];
    uint64_t ***l_134 = &l_135;
    (*l_134) = &p_82;
    return p_83;
}


/* ------------------------------------------ */
/* 
 * reads : p_623->g_109 p_623->g_118 p_623->g_67 p_623->g_59 p_623->g_131 p_623->g_132
 * writes: p_623->g_118 p_623->g_67 p_623->g_109 p_623->g_59 p_623->g_132
 */
int32_t  func_100(int16_t  p_101, int64_t  p_102, int32_t  p_103, int32_t * p_104, struct S0 * p_623)
{ /* block id: 25 */
    uint64_t *l_112 = &p_623->g_59;
    uint64_t *l_113[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t *l_116 = (void*)0;
    uint8_t *l_117 = &p_623->g_118[0][3][0];
    int32_t l_121[7][9][4] = {{{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L}},{{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L}},{{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L}},{{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L}},{{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L}},{{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L}},{{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L},{0x6AE3508CL,(-9L),1L,1L}}};
    int i, j, k;
    (*p_104) = (safe_add_func_uint8_t_u_u(((*l_117) = ((l_113[0] = (GROUP_DIVERGE(0, 1) , l_112)) == ((p_623->g_109 , (safe_lshift_func_uint8_t_u_u(p_101, 7))) , &p_623->g_59))), ((p_103 , ((safe_lshift_func_int8_t_s_s(l_121[5][2][0], ((safe_unary_minus_func_uint8_t_u(0x6AL)) || (p_102 , ((safe_mul_func_int16_t_s_s(l_121[2][2][0], 0x3604L)) , 4L))))) | p_102)) | l_121[2][4][1])));
    (*p_623->g_131) |= ((((((safe_div_func_uint32_t_u_u((FAKE_DIVERGE(p_623->global_1_offset, get_global_id(1), 10) || (safe_sub_func_uint16_t_u_u(((+l_121[1][1][2]) & p_623->g_118[1][3][2]), ((p_623->g_109 = p_103) != ((l_121[4][0][2] ^ (*p_104)) || l_121[2][1][1]))))), (safe_mod_func_uint64_t_u_u(((*l_112) &= 0UL), 0xCA3844EF14F5BEE3L)))) | p_103) >= GROUP_DIVERGE(0, 1)) ^ p_623->g_118[1][7][3]) , (void*)0) == (void*)0);
    (*p_104) = (*p_104);
    return l_121[4][8][3];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[21];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 21; i++)
            l_comm_values[i] = 1;
    struct S0 c_624;
    struct S0* p_623 = &c_624;
    struct S0 c_625 = {
        (void*)0, // p_623->g_17
        65535UL, // p_623->g_26
        (void*)0, // p_623->g_31
        (-1L), // p_623->g_33
        {{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}},{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}},{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}},{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}},{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}},{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}},{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}},{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}},{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}},{{0xE526954EL,0xE526954EL,1UL,0xEC8F9491L,4294967295UL,0xEC8F9491L}}}, // p_623->g_52
        18446744073709551611UL, // p_623->g_59
        {{{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)}},{{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)}},{{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)}},{{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)}},{{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)},{1L,0x1BDEFAB7L,(-2L),0x2F47D66AL,0x138DBEC8L,0L,(-4L),(-1L)}}}, // p_623->g_67
        {&p_623->g_67[3][1][2],&p_623->g_67[3][1][2],&p_623->g_67[3][1][2]}, // p_623->g_66
        {{{&p_623->g_67[0][3][1],&p_623->g_67[4][5][2],(void*)0}},{{&p_623->g_67[0][3][1],&p_623->g_67[4][5][2],(void*)0}},{{&p_623->g_67[0][3][1],&p_623->g_67[4][5][2],(void*)0}},{{&p_623->g_67[0][3][1],&p_623->g_67[4][5][2],(void*)0}},{{&p_623->g_67[0][3][1],&p_623->g_67[4][5][2],(void*)0}},{{&p_623->g_67[0][3][1],&p_623->g_67[4][5][2],(void*)0}}}, // p_623->g_68
        {&p_623->g_67[3][1][2],&p_623->g_67[3][1][2],&p_623->g_67[3][1][2],&p_623->g_67[3][1][2],&p_623->g_67[3][1][2],&p_623->g_67[3][1][2],&p_623->g_67[3][1][2],&p_623->g_67[3][1][2]}, // p_623->g_69
        0x4A51E29AL, // p_623->g_87
        {&p_623->g_59,&p_623->g_59,&p_623->g_59,&p_623->g_59,&p_623->g_59,&p_623->g_59}, // p_623->g_107
        3L, // p_623->g_109
        {{{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL}},{{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL}},{{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL},{252UL,0UL,252UL,7UL}}}, // p_623->g_118
        0x7A9BDD0BL, // p_623->g_132
        &p_623->g_132, // p_623->g_131
        0x1467E5DD029318B5L, // p_623->g_186
        {(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_623->g_193
        0x009BL, // p_623->g_216
        0x53C18DBFL, // p_623->g_226
        0xF0L, // p_623->g_228
        {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}}, // p_623->g_296
        (-6L), // p_623->g_304
        0x72L, // p_623->g_306
        65535UL, // p_623->g_320
        0x2EB08A46075F681DL, // p_623->g_337
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_623->g_367
        {&p_623->g_87,&p_623->g_87,&p_623->g_87,&p_623->g_87,&p_623->g_87,&p_623->g_87,&p_623->g_87,&p_623->g_87,&p_623->g_87,&p_623->g_87}, // p_623->g_425
        (void*)0, // p_623->g_426
        &p_623->g_87, // p_623->g_427
        0xFE70L, // p_623->g_437
        &p_623->g_17, // p_623->g_474
        0x24D654FBL, // p_623->g_478
        (void*)0, // p_623->g_547
        1L, // p_623->g_574
        1L, // p_623->g_616
        sequence_input[get_global_id(0)], // p_623->global_0_offset
        sequence_input[get_global_id(1)], // p_623->global_1_offset
        sequence_input[get_global_id(2)], // p_623->global_2_offset
        sequence_input[get_local_id(0)], // p_623->local_0_offset
        sequence_input[get_local_id(1)], // p_623->local_1_offset
        sequence_input[get_local_id(2)], // p_623->local_2_offset
        sequence_input[get_group_id(0)], // p_623->group_0_offset
        sequence_input[get_group_id(1)], // p_623->group_1_offset
        sequence_input[get_group_id(2)], // p_623->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 21)), permutations[0][get_linear_local_id()])), // p_623->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_624 = c_625;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_623);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_623->g_26, "p_623->g_26", print_hash_value);
    transparent_crc(p_623->g_33, "p_623->g_33", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_623->g_52[i][j][k], "p_623->g_52[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_623->g_59, "p_623->g_59", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_623->g_67[i][j][k], "p_623->g_67[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_623->g_87, "p_623->g_87", print_hash_value);
    transparent_crc(p_623->g_109, "p_623->g_109", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_623->g_118[i][j][k], "p_623->g_118[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_623->g_132, "p_623->g_132", print_hash_value);
    transparent_crc(p_623->g_186, "p_623->g_186", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_623->g_193[i], "p_623->g_193[i]", print_hash_value);

    }
    transparent_crc(p_623->g_216, "p_623->g_216", print_hash_value);
    transparent_crc(p_623->g_226, "p_623->g_226", print_hash_value);
    transparent_crc(p_623->g_228, "p_623->g_228", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_623->g_296[i][j], "p_623->g_296[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_623->g_304, "p_623->g_304", print_hash_value);
    transparent_crc(p_623->g_306, "p_623->g_306", print_hash_value);
    transparent_crc(p_623->g_320, "p_623->g_320", print_hash_value);
    transparent_crc(p_623->g_337, "p_623->g_337", print_hash_value);
    transparent_crc(p_623->g_437, "p_623->g_437", print_hash_value);
    transparent_crc(p_623->g_478, "p_623->g_478", print_hash_value);
    transparent_crc(p_623->g_574, "p_623->g_574", print_hash_value);
    transparent_crc(p_623->g_616, "p_623->g_616", print_hash_value);
    transparent_crc(p_623->l_comm_values[get_linear_local_id()], "p_623->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_623->g_comm_values[get_linear_group_id() * 21 + get_linear_local_id()], "p_623->g_comm_values[get_linear_group_id() * 21 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
