// --atomics 24 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 76,86,1 -l 1,86,1
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

__constant uint32_t permutations[10][86] = {
{23,44,6,65,83,84,61,60,42,37,20,10,24,80,4,18,31,17,19,85,30,34,69,78,40,25,54,63,70,46,77,66,48,8,12,56,38,76,21,36,15,43,51,75,0,71,73,11,39,72,22,55,9,41,13,32,35,64,67,5,81,59,26,57,7,33,74,14,82,29,62,79,2,16,68,28,45,49,50,53,58,27,1,52,3,47}, // permutation 0
{23,61,55,48,57,54,27,30,31,11,45,79,77,17,4,47,9,41,83,53,80,25,42,43,85,49,15,44,40,16,59,70,36,35,66,51,50,68,24,22,3,67,84,52,18,65,28,63,26,81,39,58,60,1,20,34,8,82,62,74,5,71,56,46,10,21,72,6,19,76,73,7,14,13,2,69,38,12,0,29,75,78,64,37,33,32}, // permutation 1
{32,45,2,3,35,69,6,60,1,81,24,49,38,29,71,82,52,31,79,43,9,37,7,42,57,15,13,27,77,58,44,5,41,61,73,36,74,70,63,66,62,83,0,22,17,34,75,50,80,53,78,48,33,65,85,8,30,59,16,23,11,84,18,39,19,47,12,26,4,67,25,21,68,76,64,20,28,14,72,55,10,40,54,46,56,51}, // permutation 2
{60,46,82,19,42,79,5,74,62,15,38,0,35,9,77,81,8,7,31,52,49,28,29,14,34,44,32,68,36,30,17,23,39,25,70,33,2,20,41,55,51,59,16,13,54,58,75,57,12,63,22,50,64,84,48,66,53,26,56,61,24,1,69,71,65,80,37,10,11,76,67,83,85,43,78,21,4,45,73,27,6,47,72,18,40,3}, // permutation 3
{71,52,12,51,2,74,62,15,1,63,47,32,9,39,3,46,66,13,57,5,33,48,31,58,25,68,54,41,40,35,6,0,49,77,8,4,56,29,75,19,65,7,28,79,22,17,44,70,73,36,59,55,16,18,14,78,81,11,85,43,26,64,83,30,76,37,61,45,10,27,38,34,21,50,84,80,24,60,72,53,23,20,82,67,42,69}, // permutation 4
{36,81,58,72,9,33,85,34,35,40,23,67,55,10,60,24,78,27,54,8,16,49,3,31,15,84,48,2,80,11,37,79,1,25,61,74,22,56,0,46,63,45,65,83,47,69,42,19,75,50,5,21,82,43,77,66,28,14,51,29,62,26,20,71,76,68,13,41,4,17,38,6,59,57,53,70,73,39,44,64,32,12,52,7,18,30}, // permutation 5
{11,48,72,75,73,62,25,77,12,39,24,43,36,41,46,69,81,34,66,74,47,21,1,58,83,85,4,37,55,53,56,42,67,54,17,59,18,40,71,28,16,45,14,26,78,15,5,31,23,84,52,63,38,82,76,44,79,33,64,22,20,65,6,2,7,49,57,32,27,10,60,3,29,13,68,51,30,0,19,50,80,8,70,9,61,35}, // permutation 6
{75,70,40,27,7,33,61,11,16,48,42,4,77,71,14,22,85,52,17,73,36,67,2,41,19,6,1,21,82,32,18,64,51,54,15,37,49,79,60,72,23,43,81,63,8,24,39,83,65,68,57,35,78,31,44,3,53,74,55,29,59,34,56,62,0,76,66,46,50,26,47,30,9,20,10,58,69,45,80,38,84,28,13,25,5,12}, // permutation 7
{2,75,76,33,53,49,83,32,48,20,71,78,81,50,46,67,31,73,42,21,82,4,29,58,64,45,34,85,9,38,22,14,15,6,55,52,18,65,8,37,19,72,26,41,59,84,43,39,40,3,28,11,54,25,68,57,23,7,44,74,70,36,77,56,62,5,63,24,30,66,0,69,27,13,17,12,61,51,47,35,1,79,10,80,60,16}, // permutation 8
{46,73,54,22,80,28,16,74,68,67,5,77,25,9,24,69,63,70,49,53,3,64,34,62,17,33,11,21,23,14,65,40,57,79,38,19,0,72,56,41,61,78,2,30,27,20,37,10,66,76,55,13,12,26,4,82,36,85,44,15,45,43,84,35,75,47,8,29,48,6,50,60,1,59,81,7,52,18,32,39,51,71,58,83,42,31} // permutation 9
};

// Seed: 50

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile int32_t  f1;
   uint32_t  f2;
   int64_t  f3;
   int64_t  f4;
   uint8_t  f5;
   volatile uint32_t  f6;
   int32_t  f7;
};

struct S1 {
   volatile int32_t  f0;
   int64_t  f1;
   int32_t  f2;
   int32_t  f3;
   int64_t  f4;
   int64_t  f5;
   int16_t  f6;
   uint16_t  f7;
};

struct S2 {
    VECTOR(uint64_t, 2) g_3;
    volatile VECTOR(uint8_t, 4) g_57;
    VECTOR(uint16_t, 16) g_64;
    volatile VECTOR(uint16_t, 4) g_79;
    uint32_t g_81;
    volatile int32_t * volatile g_82;
    int8_t g_95[4];
    int32_t g_104;
    VECTOR(int8_t, 2) g_108;
    struct S1 g_112;
    uint64_t g_118;
    uint64_t g_120;
    volatile struct S0 g_122;
    uint8_t g_126;
    VECTOR(int16_t, 8) g_137;
    volatile VECTOR(int16_t, 4) g_146;
    VECTOR(uint8_t, 4) g_150;
    int32_t * volatile g_151;
    uint32_t g_154;
    int32_t *g_161;
    int32_t ** volatile g_160[9];
    VECTOR(uint32_t, 4) g_174;
    VECTOR(int32_t, 16) g_175;
    VECTOR(int32_t, 8) g_181;
    int32_t *** volatile g_192;
    volatile struct S0 g_274;
    VECTOR(int32_t, 16) g_276;
    VECTOR(int32_t, 4) g_277;
    VECTOR(int32_t, 2) g_300;
    VECTOR(int32_t, 16) g_317;
    volatile struct S1 g_348;
    uint64_t *g_360;
    uint64_t **g_359;
    uint64_t *** volatile g_358[7];
    uint64_t *** volatile g_361[9];
    uint64_t *** volatile g_362;
    volatile VECTOR(uint64_t, 16) g_363;
    volatile struct S0 g_399;
    volatile int8_t g_420;
    uint32_t g_425;
    VECTOR(int8_t, 2) g_454;
    VECTOR(int8_t, 2) g_455;
    VECTOR(uint32_t, 8) g_470;
    VECTOR(int8_t, 16) g_472;
    VECTOR(uint16_t, 8) g_515;
    VECTOR(uint16_t, 16) g_516;
    volatile struct S1 g_532;
    int32_t * volatile g_535;
    int32_t * volatile g_537;
    int32_t * volatile g_538;
    int32_t * volatile g_540;
    int32_t ** volatile g_550;
    VECTOR(int32_t, 16) g_588;
    int8_t *g_599[1];
    int32_t * volatile g_676;
    int32_t * volatile g_677;
    int32_t * volatile g_678;
    int32_t g_681;
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
uint64_t  func_1(struct S2 * p_682);
uint8_t  func_4(uint32_t  p_5, int64_t  p_6, uint8_t  p_7, uint8_t  p_8, struct S2 * p_682);
uint16_t  func_9(uint32_t  p_10, int64_t  p_11, int32_t  p_12, struct S2 * p_682);
int32_t  func_18(int64_t  p_19, struct S2 * p_682);
int16_t  func_29(int8_t  p_30, struct S2 * p_682);
int32_t  func_37(uint16_t  p_38, int8_t  p_39, int32_t  p_40, uint32_t  p_41, struct S2 * p_682);
uint64_t  func_42(int16_t  p_43, int32_t  p_44, int64_t  p_45, int32_t  p_46, int8_t  p_47, struct S2 * p_682);
uint8_t  func_50(int16_t  p_51, int64_t  p_52, uint32_t  p_53, struct S2 * p_682);
int64_t  func_55(int64_t  p_56, struct S2 * p_682);
uint64_t  func_58(int32_t  p_59, int32_t  p_60, struct S2 * p_682);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_682->g_3 p_682->g_comm_values p_682->l_comm_values p_682->g_57 p_682->g_64 p_682->g_79 p_682->g_82 p_682->g_95 p_682->g_108 p_682->g_112 p_682->g_122 p_682->g_104 p_682->g_137 p_682->g_81 p_682->g_146 p_682->g_150 p_682->g_151 p_682->g_154 p_682->g_161 p_682->g_174 p_682->g_175 p_682->g_181 p_682->g_118 p_682->g_274 p_682->g_276 p_682->g_277 p_682->g_126 p_682->g_300 p_682->g_317 p_682->g_348 p_682->g_362 p_682->g_363 p_682->g_399 p_682->g_454 p_682->g_455 p_682->g_470 p_682->g_472 p_682->g_515 p_682->g_516 p_682->g_360 p_682->g_120 p_682->g_550 p_682->g_588 p_682->g_532.f2 p_682->g_532.f7 p_682->g_681
 * writes: p_682->g_81 p_682->g_82 p_682->g_95 p_682->g_118 p_682->g_104 p_682->g_126 p_682->g_112.f2 p_682->g_154 p_682->g_112.f1 p_682->g_161 p_682->g_112.f4 p_682->g_112.f3 p_682->g_175 p_682->g_112.f6 p_682->g_112.f7 p_682->g_359 p_682->g_425 p_682->g_112.f5 p_682->g_470 p_682->g_532 p_682->g_599 p_682->g_681
 */
uint64_t  func_1(struct S2 * p_682)
{ /* block id: 4 */
    int16_t l_2 = (-6L);
    uint8_t l_13 = 0x3AL;
    int16_t l_292 = 4L;
    int64_t *l_424[8][6] = {{&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4},{&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4},{&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4},{&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4},{&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4},{&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4},{&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4},{&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4,&p_682->g_112.f4}};
    int32_t *l_680 = &p_682->g_681;
    int i, j;
    (*l_680) ^= (l_2 ^ (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(p_682->g_3.xyyy)).xyzyxzywzxyzyzxx)).sb <= (((func_4(p_682->g_comm_values[p_682->tid], (func_9(l_13, (p_682->g_425 = ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 2))(0x62BB2C593C86992FL, 0L)).xxyx, (int64_t)(safe_sub_func_int32_t_s_s((0L < (l_13 >= (safe_add_func_uint64_t_u_u((((func_18((safe_lshift_func_int16_t_s_s(((safe_div_func_uint8_t_u_u(0x5AL, (safe_unary_minus_func_int8_t_s(((safe_add_func_uint64_t_u_u((safe_add_func_int16_t_s_s(func_29((~(p_682->g_comm_values[p_682->tid] || (safe_rshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s(((~(safe_add_func_int32_t_s_s(func_37(p_682->g_3.x, (func_42((safe_rshift_func_int16_t_s_u(p_682->g_comm_values[p_682->tid], p_682->g_3.y)), p_682->l_comm_values[(safe_mod_func_uint32_t_u_u(p_682->tid, 86))], p_682->l_comm_values[(safe_mod_func_uint32_t_u_u(p_682->tid, 86))], p_682->l_comm_values[(safe_mod_func_uint32_t_u_u(p_682->tid, 86))], p_682->g_comm_values[p_682->tid], p_682) > p_682->g_277.z), l_292, p_682->l_comm_values[(safe_mod_func_uint32_t_u_u(p_682->tid, 86))], p_682), l_2))) < 0x7BB2A4EBFBA9004AL), 9L)), 7)))), p_682), p_682->g_276.s4)), 18446744073709551615UL)) > l_13))))) && p_682->g_126), p_682->g_277.x)), p_682) | p_682->g_comm_values[p_682->tid]) & 0x5A33L) <= p_682->g_300.x), 0x0D385AB5F940EF51L)))), (-4L)))))).x), p_682->g_277.x, p_682) < 65535UL), l_13, p_682->g_181.s3, p_682) ^ 1L) == l_292) >= p_682->g_588.sd)));
    return (*l_680);
}


/* ------------------------------------------ */
/* 
 * reads : p_682->g_348 p_682->g_112.f2 p_682->g_112.f3 p_682->g_118 p_682->g_550 p_682->g_154 p_682->g_399 p_682->g_588 p_682->g_161 p_682->g_122.f0 p_682->g_532.f2 p_682->g_360 p_682->g_532.f7
 * writes: p_682->g_532 p_682->g_104 p_682->g_112.f2 p_682->g_118 p_682->g_161 p_682->g_154 p_682->g_112.f6 p_682->g_599
 */
uint8_t  func_4(uint32_t  p_5, int64_t  p_6, uint8_t  p_7, uint8_t  p_8, struct S2 * p_682)
{ /* block id: 204 */
    int8_t *l_533 = &p_682->g_95[0];
    int32_t l_562 = 1L;
    int32_t l_564 = 0x752FDCDFL;
    int32_t l_566[7] = {7L,1L,7L,7L,1L,7L,7L};
    int64_t *l_675 = &p_682->g_112.f4;
    int32_t *l_679 = &l_564;
    int i;
    p_682->g_532 = p_682->g_348;
    if (((void*)0 != l_533))
    { /* block id: 206 */
        int32_t *l_534 = &p_682->g_104;
        int32_t *l_536 = (void*)0;
        int32_t *l_539 = (void*)0;
        int32_t *l_541 = &p_682->g_112.f2;
        (*l_541) ^= ((*l_534) = p_5);
        for (p_8 = (-5); (p_8 < 26); p_8++)
        { /* block id: 211 */
            return p_682->g_112.f3;
        }
    }
    else
    { /* block id: 214 */
        uint8_t l_544 = 0xB3L;
        int32_t l_563 = 7L;
        int32_t l_565 = 0x1674E657L;
        int32_t l_569[3][6][6] = {{{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)}},{{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)}},{{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)},{6L,(-6L),1L,0x0F230A83L,1L,(-6L)}}};
        uint16_t l_582[6][6] = {{1UL,1UL,0xBD47L,1UL,1UL,1UL},{1UL,1UL,0xBD47L,1UL,1UL,1UL},{1UL,1UL,0xBD47L,1UL,1UL,1UL},{1UL,1UL,0xBD47L,1UL,1UL,1UL},{1UL,1UL,0xBD47L,1UL,1UL,1UL},{1UL,1UL,0xBD47L,1UL,1UL,1UL}};
        int32_t **l_592 = &p_682->g_161;
        int32_t ***l_591 = &l_592;
        int32_t ****l_590 = &l_591;
        int i, j, k;
        l_544--;
        for (p_682->g_118 = 0; (p_682->g_118 > 24); ++p_682->g_118)
        { /* block id: 218 */
            int32_t *l_549 = &p_682->g_112.f2;
            int32_t l_568 = (-8L);
            int32_t l_571 = 0x57AE191BL;
            int32_t l_576 = 0x11923BEDL;
            int32_t l_578 = (-1L);
            (*p_682->g_550) = l_549;
            for (p_8 = (-18); (p_8 == 22); ++p_8)
            { /* block id: 222 */
                int32_t l_557 = 6L;
                int32_t l_561 = (-6L);
                int32_t l_570 = 0x0FED8D42L;
                int32_t l_572 = 9L;
                int32_t l_574 = 9L;
                int32_t l_577 = 0x1028D261L;
                int32_t l_579 = 4L;
                int32_t l_581 = (-9L);
                int32_t **l_598 = (void*)0;
                for (p_5 = 0; (p_5 == 21); p_5 = safe_add_func_uint16_t_u_u(p_5, 1))
                { /* block id: 225 */
                    int16_t l_559 = 0x0B21L;
                    int32_t l_567 = 0x2118C24DL;
                    int32_t l_573 = 0x761B057EL;
                    int32_t l_575 = 1L;
                    int32_t l_580[7][2][3] = {{{0x71EA444FL,7L,(-1L)},{0x71EA444FL,7L,(-1L)}},{{0x71EA444FL,7L,(-1L)},{0x71EA444FL,7L,(-1L)}},{{0x71EA444FL,7L,(-1L)},{0x71EA444FL,7L,(-1L)}},{{0x71EA444FL,7L,(-1L)},{0x71EA444FL,7L,(-1L)}},{{0x71EA444FL,7L,(-1L)},{0x71EA444FL,7L,(-1L)}},{{0x71EA444FL,7L,(-1L)},{0x71EA444FL,7L,(-1L)}},{{0x71EA444FL,7L,(-1L)},{0x71EA444FL,7L,(-1L)}}};
                    int32_t **l_587 = &p_682->g_161;
                    int32_t ***l_586 = &l_587;
                    int32_t ****l_585[2];
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_585[i] = &l_586;
                    for (p_682->g_154 = 0; (p_682->g_154 != 19); p_682->g_154 = safe_add_func_int8_t_s_s(p_682->g_154, 6))
                    { /* block id: 228 */
                        int32_t *l_558 = &p_682->g_104;
                        int32_t *l_560[3];
                        VECTOR(int64_t, 2) l_589 = (VECTOR(int64_t, 2))((-1L), 0x30FDB1C19E7FC7C1L);
                        int32_t *****l_593 = (void*)0;
                        int32_t *****l_594 = &l_590;
                        int16_t *l_597 = &p_682->g_112.f6;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_560[i] = &p_682->g_112.f2;
                        l_582[0][0]--;
                        (*p_682->g_161) = (((p_682->g_399 , l_585[0]) != ((*l_594) = (((VECTOR(int32_t, 2))(p_682->g_588.s0a)).hi , (((VECTOR(int64_t, 2))(l_589.xx)).lo , l_590)))) | (((safe_mul_func_int16_t_s_s(((*l_597) = p_5), ((void*)0 == l_598))) , 0L) && (***l_591)));
                    }
                }
                return p_682->g_122.f0;
            }
            l_566[4] |= (p_682->g_532.f2 != ((p_682->g_599[0] = l_533) == (void*)0));
        }
        if ((atomic_inc(&p_682->g_atomic_input[24 * get_linear_group_id() + 7]) == 7))
        { /* block id: 241 */
            int32_t l_600 = 0x0D49785AL;
            for (l_600 = 0; (l_600 <= (-18)); --l_600)
            { /* block id: 244 */
                uint32_t l_603 = 1UL;
                if (l_603)
                { /* block id: 245 */
                    uint32_t l_604 = 1UL;
                    int16_t l_605 = 1L;
                    struct S1 l_606 = {0x134D6537L,0x71196B8D39A8A45BL,0x1E585B62L,-9L,-1L,0x003012EDAD39C446L,0x4B3FL,65535UL};/* VOLATILE GLOBAL l_606 */
                    struct S1 l_607 = {0x108FEF15L,1L,0L,0x7A5FA198L,0L,0x15B0D5C7AAD98492L,0x1B65L,0x726DL};/* VOLATILE GLOBAL l_607 */
                    l_607 = ((l_605 = l_604) , l_606);
                }
                else
                { /* block id: 248 */
                    int32_t l_608 = 0x775D3E59L;
                    int32_t l_609 = 0x7479D7D6L;
                    int8_t l_610 = 6L;
                    int32_t l_611 = (-2L);
                    uint8_t l_612[1][8][9] = {{{0xD4L,0xD4L,0x3EL,255UL,248UL,255UL,0x3EL,0xD4L,0xD4L},{0xD4L,0xD4L,0x3EL,255UL,248UL,255UL,0x3EL,0xD4L,0xD4L},{0xD4L,0xD4L,0x3EL,255UL,248UL,255UL,0x3EL,0xD4L,0xD4L},{0xD4L,0xD4L,0x3EL,255UL,248UL,255UL,0x3EL,0xD4L,0xD4L},{0xD4L,0xD4L,0x3EL,255UL,248UL,255UL,0x3EL,0xD4L,0xD4L},{0xD4L,0xD4L,0x3EL,255UL,248UL,255UL,0x3EL,0xD4L,0xD4L},{0xD4L,0xD4L,0x3EL,255UL,248UL,255UL,0x3EL,0xD4L,0xD4L},{0xD4L,0xD4L,0x3EL,255UL,248UL,255UL,0x3EL,0xD4L,0xD4L}}};
                    uint32_t l_615 = 0x2758C3EEL;
                    uint32_t l_616[8];
                    int i, j, k;
                    for (i = 0; i < 8; i++)
                        l_616[i] = 0UL;
                    l_612[0][5][4]--;
                    l_611 ^= (l_616[2] |= l_615);
                }
            }
            unsigned int result = 0;
            result += l_600;
            atomic_add(&p_682->g_special_values[24 * get_linear_group_id() + 7], result);
        }
        else
        { /* block id: 254 */
            (1 + 1);
        }
        if ((atomic_inc(&p_682->g_atomic_input[24 * get_linear_group_id() + 0]) == 4))
        { /* block id: 258 */
            int32_t l_617 = (-1L);
            uint16_t l_642 = 65534UL;
            uint32_t l_645 = 0x9CDB8C82L;
            VECTOR(int32_t, 2) l_646 = (VECTOR(int32_t, 2))(0x79CBD4DCL, 1L);
            int32_t *l_647 = &l_617;
            int32_t *l_648 = (void*)0;
            uint16_t l_649 = 0UL;
            int i;
            for (l_617 = 0; (l_617 == 23); l_617++)
            { /* block id: 261 */
                uint8_t l_620 = 9UL;
                uint16_t l_621 = 0UL;
                uint64_t l_622 = 0x7522D813A4C08530L;
                l_622 ^= (l_621 = l_620);
                for (l_621 = (-27); (l_621 == 8); l_621++)
                { /* block id: 266 */
                    int32_t l_625 = 0x3626F459L;
                    for (l_625 = (-20); (l_625 <= (-13)); l_625 = safe_add_func_int32_t_s_s(l_625, 8))
                    { /* block id: 269 */
                        int32_t l_629 = 0x1B5F8314L;
                        int32_t *l_628 = &l_629;
                        int32_t *l_630 = (void*)0;
                        int8_t l_631 = 1L;
                        int32_t *l_632 = &l_629;
                        int32_t *l_633[7][1][3];
                        VECTOR(int32_t, 2) l_634 = (VECTOR(int32_t, 2))(0x1ABD91C7L, 9L);
                        VECTOR(int32_t, 16) l_635 = (VECTOR(int32_t, 16))(0x725CD01DL, (VECTOR(int32_t, 4))(0x725CD01DL, (VECTOR(int32_t, 2))(0x725CD01DL, 0x63B62C49L), 0x63B62C49L), 0x63B62C49L, 0x725CD01DL, 0x63B62C49L, (VECTOR(int32_t, 2))(0x725CD01DL, 0x63B62C49L), (VECTOR(int32_t, 2))(0x725CD01DL, 0x63B62C49L), 0x725CD01DL, 0x63B62C49L, 0x725CD01DL, 0x63B62C49L);
                        VECTOR(int32_t, 4) l_636 = (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x63729F7DL), 0x63729F7DL);
                        uint64_t l_637 = 18446744073709551611UL;
                        int8_t l_638[8] = {0x10L,0x10L,0x10L,0x10L,0x10L,0x10L,0x10L,0x10L};
                        VECTOR(int32_t, 8) l_639 = (VECTOR(int32_t, 8))(0x6B74E64BL, (VECTOR(int32_t, 4))(0x6B74E64BL, (VECTOR(int32_t, 2))(0x6B74E64BL, (-2L)), (-2L)), (-2L), 0x6B74E64BL, (-2L));
                        uint16_t l_640[9][6] = {{6UL,65535UL,0x07D4L,2UL,0x07D4L,65535UL},{6UL,65535UL,0x07D4L,2UL,0x07D4L,65535UL},{6UL,65535UL,0x07D4L,2UL,0x07D4L,65535UL},{6UL,65535UL,0x07D4L,2UL,0x07D4L,65535UL},{6UL,65535UL,0x07D4L,2UL,0x07D4L,65535UL},{6UL,65535UL,0x07D4L,2UL,0x07D4L,65535UL},{6UL,65535UL,0x07D4L,2UL,0x07D4L,65535UL},{6UL,65535UL,0x07D4L,2UL,0x07D4L,65535UL},{6UL,65535UL,0x07D4L,2UL,0x07D4L,65535UL}};
                        uint32_t l_641 = 7UL;
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 3; k++)
                                    l_633[i][j][k] = &l_629;
                            }
                        }
                        l_630 = l_628;
                        l_633[5][0][2] = (l_631 , l_632);
                        l_640[4][4] = ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_634.xx)), 0x59F10109L, 0x3348CEC4L)).xyzyzxzzyzywwxyw, ((VECTOR(int32_t, 4))(l_635.sf694)).ywwxwywxwyzxyyyz))), ((VECTOR(int32_t, 4))(l_636.wwzw)).xwwwywywzwwxzwwy, ((VECTOR(int32_t, 8))(0L, 0x5DADC7EAL, (((l_637 = 0x32BCFA00L) , l_638[3]) , 0x56455159L), (-7L), ((VECTOR(int32_t, 2))(l_639.s30)), 0x08860954L, 0x0832A3CBL)).s7254763726140056))).s2;
                        l_641 |= ((VECTOR(int32_t, 2))(0x4B4C53B5L, (-1L))).odd;
                    }
                }
            }
            --l_642;
            l_648 = (((l_645 = 0xD880L) , ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_646.xy)), 0x04324D72L, 6L)).x) , (l_647 = l_647));
            if (l_649)
            { /* block id: 282 */
                int32_t l_651 = 0x62E37855L;
                int32_t *l_650 = &l_651;
                int32_t *l_652 = (void*)0;
                int32_t l_653 = (-1L);
                int32_t l_654 = 0x204B7AB7L;
                int8_t l_655 = 0x24L;
                int8_t l_656 = 0x02L;
                int32_t l_657 = 5L;
                uint64_t l_658 = 9UL;
                int16_t l_661 = 0x5860L;
                int32_t *l_662 = &l_651;
                l_648 = l_650;
                l_648 = l_652;
                l_658--;
                l_662 = (l_661 , (void*)0);
            }
            else
            { /* block id: 287 */
                int32_t l_663 = 0x2F4E04FAL;
                uint32_t l_664 = 0UL;
                int32_t *l_674 = &l_663;
                --l_664;
                for (l_664 = 0; (l_664 >= 56); l_664 = safe_add_func_uint64_t_u_u(l_664, 1))
                { /* block id: 291 */
                    int64_t l_669 = (-10L);
                    int32_t l_671 = (-2L);
                    int32_t *l_670 = &l_671;
                    struct S1 l_672 = {-1L,-1L,0x079516E3L,0x54B335AEL,-1L,-3L,1L,0x2676L};/* VOLATILE GLOBAL l_672 */
                    struct S1 l_673 = {1L,0x6FE42715B8BAC881L,0x2F06EA94L,0L,1L,1L,0x1FE4L,0x36E0L};/* VOLATILE GLOBAL l_673 */
                    (*l_648) = l_669;
                    l_670 = l_670;
                    l_673 = l_672;
                }
                l_648 = (l_647 = l_674);
                (*l_674) ^= 0x12123271L;
            }
            unsigned int result = 0;
            result += l_617;
            result += l_642;
            result += l_645;
            result += l_646.y;
            result += l_646.x;
            result += l_649;
            atomic_add(&p_682->g_special_values[24 * get_linear_group_id() + 0], result);
        }
        else
        { /* block id: 300 */
            (1 + 1);
        }
    }
    (*l_679) |= (p_682->g_360 == l_675);
    return p_682->g_532.f7;
}


/* ------------------------------------------ */
/* 
 * reads : p_682->g_112.f7 p_682->g_274.f2 p_682->g_181 p_682->g_454 p_682->g_455 p_682->g_79 p_682->g_317 p_682->g_3 p_682->g_470 p_682->g_472 p_682->g_95 p_682->g_137 p_682->g_118 p_682->g_174 p_682->g_175 p_682->g_348.f3 p_682->g_399.f4 p_682->g_112.f6 p_682->g_515 p_682->g_516 p_682->g_360 p_682->g_120 p_682->l_comm_values p_682->g_151 p_682->g_104
 * writes: p_682->g_112.f7 p_682->g_161 p_682->g_112.f5 p_682->g_470
 */
uint16_t  func_9(uint32_t  p_10, int64_t  p_11, int32_t  p_12, struct S2 * p_682)
{ /* block id: 166 */
    int16_t l_437 = (-2L);
    VECTOR(int32_t, 4) l_439 = (VECTOR(int32_t, 4))(0x561E494DL, (VECTOR(int32_t, 2))(0x561E494DL, (-6L)), (-6L));
    int8_t l_445 = 0x3FL;
    int32_t *l_450 = (void*)0;
    VECTOR(int8_t, 16) l_457 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-7L)), (-7L)), (-7L), 1L, (-7L), (VECTOR(int8_t, 2))(1L, (-7L)), (VECTOR(int8_t, 2))(1L, (-7L)), 1L, (-7L), 1L, (-7L));
    VECTOR(uint32_t, 16) l_471 = (VECTOR(uint32_t, 16))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 0x79580DBFL), 0x79580DBFL), 0x79580DBFL, 8UL, 0x79580DBFL, (VECTOR(uint32_t, 2))(8UL, 0x79580DBFL), (VECTOR(uint32_t, 2))(8UL, 0x79580DBFL), 8UL, 0x79580DBFL, 8UL, 0x79580DBFL);
    VECTOR(int16_t, 4) l_483 = (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x0B79L), 0x0B79L);
    uint8_t l_499 = 0x48L;
    VECTOR(int16_t, 16) l_531 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x6C5AL), 0x6C5AL), 0x6C5AL, 0L, 0x6C5AL, (VECTOR(int16_t, 2))(0L, 0x6C5AL), (VECTOR(int16_t, 2))(0L, 0x6C5AL), 0L, 0x6C5AL, 0L, 0x6C5AL);
    int i;
    for (p_682->g_112.f7 = 19; (p_682->g_112.f7 < 33); ++p_682->g_112.f7)
    { /* block id: 169 */
        uint16_t l_428 = 1UL;
        int32_t **l_432 = &p_682->g_161;
        int32_t ***l_431 = &l_432;
        int32_t ***l_434[9];
        int32_t ****l_433 = &l_434[0];
        uint8_t l_447 = 0x0BL;
        VECTOR(int8_t, 2) l_456 = (VECTOR(int8_t, 2))(0x70L, (-1L));
        VECTOR(uint16_t, 16) l_465 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x208AL), 0x208AL), 0x208AL, 65535UL, 0x208AL, (VECTOR(uint16_t, 2))(65535UL, 0x208AL), (VECTOR(uint16_t, 2))(65535UL, 0x208AL), 65535UL, 0x208AL, 65535UL, 0x208AL);
        VECTOR(uint8_t, 16) l_468 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x14L), 0x14L), 0x14L, 1UL, 0x14L, (VECTOR(uint8_t, 2))(1UL, 0x14L), (VECTOR(uint8_t, 2))(1UL, 0x14L), 1UL, 0x14L, 1UL, 0x14L);
        uint64_t *l_497[2];
        VECTOR(int16_t, 8) l_514 = (VECTOR(int16_t, 8))(2L, (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 0x6E12L), 0x6E12L), 0x6E12L, 2L, 0x6E12L);
        int i;
        for (i = 0; i < 9; i++)
            l_434[i] = &l_432;
        for (i = 0; i < 2; i++)
            l_497[i] = (void*)0;
        if (((l_428 , (safe_mod_func_int32_t_s_s(p_11, FAKE_DIVERGE(p_682->global_0_offset, get_global_id(0), 10)))) ^ (p_682->g_274.f2 != (l_431 != (p_682->g_181.s5 , ((*l_433) = &l_432))))))
        { /* block id: 171 */
            (***l_433) = (void*)0;
            return p_10;
        }
        else
        { /* block id: 174 */
            int32_t l_435 = (-6L);
            int32_t l_436 = (-1L);
            int32_t l_438 = 0x27EEED8AL;
            int16_t l_440 = 9L;
            int32_t l_441 = 0x2595318EL;
            int32_t l_442 = 0x13489E2CL;
            int32_t l_443 = (-9L);
            int32_t l_444[5][3][7] = {{{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL}},{{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL}},{{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL}},{{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL}},{{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL},{0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL,0x01B29B5CL}}};
            int8_t l_446 = (-6L);
            int32_t *l_451 = (void*)0;
            int16_t *l_458 = &l_440;
            VECTOR(uint32_t, 8) l_469 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xC3A5EB5CL), 0xC3A5EB5CL), 0xC3A5EB5CL, 1UL, 0xC3A5EB5CL);
            VECTOR(int16_t, 2) l_484 = (VECTOR(int16_t, 2))((-7L), 0L);
            VECTOR(uint16_t, 8) l_495 = (VECTOR(uint16_t, 8))(0xCDD5L, (VECTOR(uint16_t, 4))(0xCDD5L, (VECTOR(uint16_t, 2))(0xCDD5L, 0xE1D1L), 0xE1D1L), 0xE1D1L, 0xCDD5L, 0xE1D1L);
            uint64_t *l_496 = &p_682->g_118;
            uint64_t **l_498[9] = {&l_497[0],&l_497[0],&l_497[0],&l_497[0],&l_497[0],&l_497[0],&l_497[0],&l_497[0],&l_497[0]};
            int64_t *l_500 = &p_682->g_112.f5;
            uint16_t l_513 = 0UL;
            int32_t l_519 = 0x09732DADL;
            int i, j, k;
            l_447++;
            (**l_431) = (l_451 = l_450);
            p_12 = ((0x29737907L && (((*l_458) = (safe_add_func_int16_t_s_s((&l_451 == &l_450), (((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 4))(p_682->g_454.xyyx)), ((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 4))(p_682->g_455.xyyy)).yyxwxyzywxwzxxzy, ((VECTOR(int8_t, 2))(l_456.xy)).yyxxyxxxxyyxxyxy))).s7b5d))).wzyxyyzzwwxzyxxy)).sba))).xxyx, ((VECTOR(int8_t, 2))(l_457.se6)).yyyy))).y < 8UL)))) && (+p_682->g_79.w))) && ((void*)0 != &p_682->g_126));
            if (((~(safe_sub_func_int16_t_s_s((((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 2))(0x74L, (-2L))).xyxx, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((safe_add_func_uint8_t_u_u((((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0x8644L, 0xD68CL)).xyxyxyyyyxyxyxxx)).sfd)).xxxy))).ywwxzwzy)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(l_465.s98497547ae4a7000)))).even))).s2701213265047251, (uint16_t)((FAKE_DIVERGE(p_682->local_1_offset, get_local_id(1), 10) , ((safe_sub_func_uint16_t_u_u(((p_682->g_317.s2 <= (0x14A0L ^ (((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(l_468.s252b1399d93a93fd)).odd)).lo, ((VECTOR(uint8_t, 8))(p_682->g_3.y, (((*l_500) = (((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),VECTOR(uint32_t, 16),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(l_469.s24)).xyxyxxyx, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(p_682->g_470.s67630753))))))).s53)), 1UL, 1UL, ((VECTOR(uint32_t, 8))(0xC803C385L, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 8))(l_471.sd057ab58)).lo, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(0x9A77149CL, (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(p_682->g_472.sd5e0627f)))).s2 > ((safe_mul_func_int8_t_s_s(0x17L, (safe_mul_func_int8_t_s_s((((safe_rshift_func_int16_t_s_u(((safe_mul_func_int16_t_s_s(((safe_add_func_int32_t_s_s((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(l_483.zyww)).hi, ((VECTOR(int16_t, 8))(l_484.xyyxyxxx)).s02, ((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))((safe_mod_func_int8_t_s_s(p_10, (safe_mod_func_int16_t_s_s((safe_mod_func_int8_t_s_s((p_682->g_95[2] < (!((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 4))(0xD284L, 0x8838L, 0x7054L, 0x2FD3L)).wwwyzywwwzwywyyw, ((VECTOR(uint16_t, 4))(5UL, ((VECTOR(uint16_t, 2))(l_495.s40)), 0xB9B3L)).yyzxyzwxyywwwyzy))).sc5e1, (uint32_t)(((l_496 != (l_497[0] = l_497[0])) , &l_437) != &l_440)))).y >= l_499), p_12)), p_682->g_274.f2)) && 0x36L))), p_682->g_137.s3)), p_682->g_118)))), 2L, 0L, ((VECTOR(int16_t, 4))(1L)), 2L)).s10, ((VECTOR(int16_t, 2))(0x646BL)), ((VECTOR(int16_t, 2))(0x6165L)))))))), p_12, p_10, ((VECTOR(int16_t, 4))(0x2DFEL)))).s22, ((VECTOR(int16_t, 2))(0L)), ((VECTOR(int16_t, 2))((-9L)))))), p_10, ((VECTOR(int16_t, 2))(0x098FL)), ((VECTOR(int16_t, 8))((-3L))), ((VECTOR(int16_t, 2))(1L)), 6L)))).s1 || 0UL), 0x0A293D64L)) < (-4L)), p_682->g_181.s7)) || p_682->g_174.z), 3)) == (-2L)) & p_12), 0x31L)))) ^ p_11)), ((VECTOR(uint32_t, 4))(0x9AB53BFBL)), 0xE232D789L, 4294967295UL)))).lo, ((VECTOR(uint32_t, 4))(0UL))))).odd, ((VECTOR(uint32_t, 2))(4294967294UL)), ((VECTOR(uint32_t, 2))(0x061C75BEL))))))), 1UL, 0UL)).xyzywwyzxwxxzywx, ((VECTOR(uint32_t, 16))(7UL))))).even, ((VECTOR(uint32_t, 8))(0xFC831E4EL))))).hi)), ((VECTOR(uint32_t, 2))(0xE174AC10L)), 0x80223AEAL)), 9UL, 4294967295UL, 1UL, 9UL)), ((VECTOR(uint32_t, 16))(4294967291UL)), ((VECTOR(uint32_t, 16))(0x44212F51L))))))), ((VECTOR(uint32_t, 16))(0x3687A875L)), ((VECTOR(uint32_t, 16))(4UL))))).sd , 0x21615F04853F4E2CL)) || p_11), 250UL, p_682->g_175.sf, ((VECTOR(uint8_t, 2))(0UL)), 0xB7L, 251UL)).even, ((VECTOR(uint8_t, 4))(0x8AL))))).x | GROUP_DIVERGE(0, 1)))) | 0x48A6793BL), p_10)) && 0UL)) , p_682->g_348.f3)))).scc0d)), 1UL, 0xA319L, 1UL, 0xBDE6L, p_11, p_10, 1UL, 0x3AE0L, 0UL, ((VECTOR(uint16_t, 2))(65535UL)), 65535UL)).odd, ((VECTOR(uint16_t, 8))(65527UL))))), (uint16_t)p_682->g_399.f4, (uint16_t)p_682->g_112.f6))).odd)), (uint16_t)p_12))).y, p_12)) < 0L) ^ 0xCDE4L), FAKE_DIVERGE(p_682->group_2_offset, get_group_id(2), 10))), ((VECTOR(int8_t, 2))(0x65L)), 0L)).zwwzzzww)).hi))).y <= 6L), 65531UL))) != p_11))
            { /* block id: 182 */
                if (p_10)
                    break;
                if (p_10)
                    continue;
            }
            else
            { /* block id: 185 */
                uint8_t *l_520 = (void*)0;
                uint8_t *l_521 = &l_499;
                uint32_t l_522 = 5UL;
                l_522 = (safe_lshift_func_uint8_t_u_s(((*l_521) = ((safe_add_func_uint8_t_u_u(((safe_mod_func_uint32_t_u_u((++p_682->g_470.s3), ((p_682->g_118 ^ ((~(safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))(((-1L) <= (+p_12)), (safe_add_func_uint32_t_u_u(p_682->g_79.w, p_11)), 3UL, 0x54CAL)).lo, ((VECTOR(uint16_t, 2))(3UL, 0x32B3L)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_513, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x7BBBL, 4UL)), 65531UL, 1UL)), ((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_514.s4644406066361305)).s24)))).xyxyyyxy))), 65533UL, 1UL, 0xE04EL)).sb502)), ((VECTOR(uint16_t, 2))(p_682->g_515.s27)).xyyx))))).even))), 0x6DF6L, 1UL)).w, ((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_682->g_516.sd7d0)).zyxxxxyx)).s6361463117170254, (uint16_t)p_10))).s9))) == (!(((safe_rshift_func_uint16_t_u_u((&l_498[2] == (void*)0), l_519)) == 1L) , GROUP_DIVERGE(1, 1))))) , (-1L)))) == (*p_682->g_360)), p_682->l_comm_values[(safe_mod_func_uint32_t_u_u(p_682->tid, 86))])) > GROUP_DIVERGE(1, 1))), 4));
                (**l_431) = l_450;
                if ((*p_682->g_151))
                    continue;
            }
        }
        if ((atomic_inc(&p_682->g_atomic_input[24 * get_linear_group_id() + 11]) == 5))
        { /* block id: 194 */
            uint8_t l_523 = 4UL;
            int32_t l_524 = 0x7E22F66FL;
            uint16_t l_525 = 1UL;
            int32_t *l_528 = (void*)0;
            int32_t l_530 = 0x63AB7A9CL;
            int32_t *l_529 = &l_530;
            l_523 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x4E225491L, 0x2E53F915L)).xyyxxyyxyxxyyyxy)).s1;
            l_529 = (l_528 = ((l_525--) , (void*)0));
            unsigned int result = 0;
            result += l_523;
            result += l_524;
            result += l_525;
            result += l_530;
            atomic_add(&p_682->g_special_values[24 * get_linear_group_id() + 11], result);
        }
        else
        { /* block id: 199 */
            (1 + 1);
        }
    }
    return l_531.sb;
}


/* ------------------------------------------ */
/* 
 * reads : p_682->g_112.f7
 * writes: p_682->g_112.f7
 */
int32_t  func_18(int64_t  p_19, struct S2 * p_682)
{ /* block id: 156 */
    uint8_t l_409[5];
    int32_t l_416 = 0x2CC0347BL;
    int32_t l_417[6] = {0L,0L,0L,0L,0L,0L};
    uint8_t l_421 = 0UL;
    int i;
    for (i = 0; i < 5; i++)
        l_409[i] = 0x72L;
    for (p_682->g_112.f7 = (-5); (p_682->g_112.f7 != 33); ++p_682->g_112.f7)
    { /* block id: 159 */
        int32_t *l_404 = (void*)0;
        int32_t *l_405 = (void*)0;
        int32_t *l_406 = (void*)0;
        int32_t *l_407 = (void*)0;
        int32_t *l_408 = &p_682->g_112.f2;
        int32_t *l_412 = &p_682->g_112.f2;
        int32_t *l_413 = (void*)0;
        int32_t *l_414 = (void*)0;
        int32_t *l_415[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t l_418 = 0x3D31L;
        int32_t l_419 = 6L;
        int i;
        if (p_19)
            break;
        --l_409[4];
        l_421--;
    }
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_682->g_348 p_682->g_112.f2 p_682->g_175 p_682->g_362 p_682->g_363 p_682->g_181 p_682->g_399 p_682->g_112.f1 p_682->g_300 p_682->l_comm_values
 * writes: p_682->g_175 p_682->g_161 p_682->g_359 p_682->g_112.f2 p_682->g_112.f6
 */
int16_t  func_29(int8_t  p_30, struct S2 * p_682)
{ /* block id: 136 */
    int32_t *l_346 = &p_682->g_112.f2;
    int32_t **l_347 = &p_682->g_161;
    uint64_t *l_357[8][6] = {{&p_682->g_120,(void*)0,&p_682->g_118,(void*)0,&p_682->g_120,&p_682->g_120},{&p_682->g_120,(void*)0,&p_682->g_118,(void*)0,&p_682->g_120,&p_682->g_120},{&p_682->g_120,(void*)0,&p_682->g_118,(void*)0,&p_682->g_120,&p_682->g_120},{&p_682->g_120,(void*)0,&p_682->g_118,(void*)0,&p_682->g_120,&p_682->g_120},{&p_682->g_120,(void*)0,&p_682->g_118,(void*)0,&p_682->g_120,&p_682->g_120},{&p_682->g_120,(void*)0,&p_682->g_118,(void*)0,&p_682->g_120,&p_682->g_120},{&p_682->g_120,(void*)0,&p_682->g_118,(void*)0,&p_682->g_120,&p_682->g_120},{&p_682->g_120,(void*)0,&p_682->g_118,(void*)0,&p_682->g_120,&p_682->g_120}};
    uint64_t **l_356 = &l_357[1][2];
    VECTOR(int32_t, 16) l_364 = (VECTOR(int32_t, 16))(0x0F12315FL, (VECTOR(int32_t, 4))(0x0F12315FL, (VECTOR(int32_t, 2))(0x0F12315FL, 0x6CCAF806L), 0x6CCAF806L), 0x6CCAF806L, 0x0F12315FL, 0x6CCAF806L, (VECTOR(int32_t, 2))(0x0F12315FL, 0x6CCAF806L), (VECTOR(int32_t, 2))(0x0F12315FL, 0x6CCAF806L), 0x0F12315FL, 0x6CCAF806L, 0x0F12315FL, 0x6CCAF806L);
    int16_t l_379 = (-1L);
    int64_t l_381 = 0x67E14705D08170C5L;
    int i, j;
    if ((((l_346 = l_346) != (void*)0) , p_30))
    { /* block id: 138 */
        return p_30;
    }
    else
    { /* block id: 140 */
        VECTOR(int16_t, 4) l_353 = (VECTOR(int16_t, 4))(0x4303L, (VECTOR(int16_t, 2))(0x4303L, 8L), 8L);
        int32_t l_354 = 0x02501026L;
        int32_t l_355 = 0x21ADDF37L;
        int32_t l_377 = 0x2C522FA9L;
        int32_t l_378[4];
        VECTOR(int16_t, 8) l_387 = (VECTOR(int16_t, 8))(0x5BDEL, (VECTOR(int16_t, 4))(0x5BDEL, (VECTOR(int16_t, 2))(0x5BDEL, 7L), 7L), 7L, 0x5BDEL, 7L);
        uint8_t *l_393 = (void*)0;
        uint8_t **l_392 = &l_393;
        uint8_t **l_394 = (void*)0;
        uint16_t *l_400[4] = {&p_682->g_112.f7,&p_682->g_112.f7,&p_682->g_112.f7,&p_682->g_112.f7};
        int16_t *l_401 = &p_682->g_112.f6;
        int i;
        for (i = 0; i < 4; i++)
            l_378[i] = 0x6353CE2CL;
        p_682->g_175.s6 &= (p_682->g_348 , (safe_rshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_353.zz)), 0L, 0L)).wxwyxzywwwzyyyyy)).s0, (*l_346))), p_30)));
        l_354 |= (-2L);
        if (l_355)
        { /* block id: 143 */
            (*l_347) = &l_354;
            (*p_682->g_362) = l_356;
            (*l_346) = (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(p_682->g_363.sb283da69)))).s1 & FAKE_DIVERGE(p_682->global_0_offset, get_global_id(0), 10));
            (*l_346) = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_364.se90a4977)).s03)).lo;
        }
        else
        { /* block id: 148 */
            int32_t *l_365 = (void*)0;
            int32_t *l_366 = (void*)0;
            int32_t *l_367 = (void*)0;
            int32_t *l_368 = (void*)0;
            int32_t *l_369 = &l_354;
            int32_t *l_370 = (void*)0;
            int32_t *l_371 = &p_682->g_104;
            int32_t *l_372 = (void*)0;
            int32_t *l_373 = (void*)0;
            int32_t *l_374 = &l_354;
            int32_t *l_375 = &l_354;
            int32_t *l_376[4];
            int32_t l_380 = 0x458DDADEL;
            uint64_t l_382 = 1UL;
            int i;
            for (i = 0; i < 4; i++)
                l_376[i] = (void*)0;
            l_382++;
        }
        (*l_346) |= (safe_rshift_func_int16_t_s_u(l_378[1], ((((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((-1L), 1L)), 0L, (-3L))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_387.s3305330470244773)).sd6)).xyyxxxxx)).s42, ((VECTOR(int16_t, 2))(0L, 0L))))), (int16_t)(p_682->g_181.s2 >= (((*l_401) = (safe_add_func_uint16_t_u_u((p_30 || ((safe_add_func_int64_t_s_s((l_392 != (l_394 = &l_393)), (((safe_rshift_func_uint16_t_u_u(l_387.s3, 4)) >= (safe_lshift_func_int8_t_s_u((p_682->g_399 , ((void*)0 == l_400[1])), p_682->g_112.f1))) != 0UL))) & p_682->g_300.x)), 0L))) >= p_682->l_comm_values[(safe_mod_func_uint32_t_u_u(p_682->tid, 86))]))))), 5L, 0L))))).x >= 0UL) < (-1L))));
    }
    return (*l_346);
}


/* ------------------------------------------ */
/* 
 * reads : p_682->g_126 p_682->g_300 p_682->g_112.f6 p_682->g_277 p_682->g_150 p_682->g_317 p_682->g_104 p_682->g_154 p_682->g_112.f3 p_682->g_122.f6
 * writes: p_682->g_126 p_682->g_112.f6 p_682->g_95 p_682->g_104 p_682->g_112.f7
 */
int32_t  func_37(uint16_t  p_38, int8_t  p_39, int32_t  p_40, uint32_t  p_41, struct S2 * p_682)
{ /* block id: 111 */
    VECTOR(int32_t, 2) l_297 = (VECTOR(int32_t, 2))(0x08803427L, 0x19B265C9L);
    VECTOR(int32_t, 2) l_301 = (VECTOR(int32_t, 2))(0x59450399L, 0L);
    int16_t *l_322 = &p_682->g_112.f6;
    int32_t *l_327 = (void*)0;
    VECTOR(int8_t, 4) l_334 = (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 0x6CL), 0x6CL);
    uint16_t *l_337 = &p_682->g_112.f7;
    uint16_t *l_338 = (void*)0;
    uint16_t *l_339 = (void*)0;
    uint16_t *l_340 = (void*)0;
    uint16_t *l_341 = (void*)0;
    uint16_t *l_342 = (void*)0;
    uint16_t *l_343 = (void*)0;
    int i;
    for (p_39 = 18; (p_39 <= 19); p_39 = safe_add_func_int32_t_s_s(p_39, 1))
    { /* block id: 114 */
        VECTOR(int32_t, 4) l_299 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x470D1F23L), 0x470D1F23L);
        int i;
        for (p_682->g_126 = 0; (p_682->g_126 >= 41); ++p_682->g_126)
        { /* block id: 117 */
            VECTOR(int32_t, 16) l_298 = (VECTOR(int32_t, 16))(0x4890D855L, (VECTOR(int32_t, 4))(0x4890D855L, (VECTOR(int32_t, 2))(0x4890D855L, 1L), 1L), 1L, 0x4890D855L, 1L, (VECTOR(int32_t, 2))(0x4890D855L, 1L), (VECTOR(int32_t, 2))(0x4890D855L, 1L), 0x4890D855L, 1L, 0x4890D855L, 1L);
            int16_t *l_304 = &p_682->g_112.f6;
            int8_t *l_313 = (void*)0;
            int8_t *l_314 = &p_682->g_95[0];
            int32_t *l_315 = (void*)0;
            int32_t l_316 = 0x676F72BFL;
            int32_t *l_318 = &p_682->g_104;
            int i;
            l_316 &= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_297.xyyxxyxx)).s35, ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))(l_298.s36ec)).yxzwywzxzwxyxxxy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_299.wzwxzyxx)).s65)).xxxyxyxyxxyyxyxx, ((VECTOR(int32_t, 16))(p_682->g_300.yyxxxxxyxyyxyxxy))))).s86, ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_301.xyyx)), 0x71A8A24AL, ((safe_lshift_func_int16_t_s_u(((*l_304) |= p_41), 9)) && (l_304 != l_304)), l_297.y, 0x3EFBEB68L, (safe_add_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((l_298.s7 = (safe_lshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(l_301.x, (((((*l_314) = (l_297.x != l_299.x)) & (GROUP_DIVERGE(2, 1) || (+p_682->g_277.z))) >= l_297.x) >= GROUP_DIVERGE(1, 1)))), l_297.y))), l_297.y)), p_682->g_150.z)), p_41, p_39, 0x74FC46E8L, ((VECTOR(int32_t, 2))(0L)), 0x6B88B96EL, (-8L))), (int32_t)p_39))).hi)).s06, ((VECTOR(int32_t, 2))(0x47C52FBDL)))))))).yyyy)).z;
            (*l_318) &= (l_299.z , ((VECTOR(int32_t, 8))(p_682->g_317.s2b1254af)).s2);
        }
        return l_299.z;
    }
    for (p_39 = 0; (p_39 > 15); p_39 = safe_add_func_int32_t_s_s(p_39, 1))
    { /* block id: 128 */
        uint16_t l_321 = 65535UL;
        return l_321;
    }
    l_297.x = (p_38 || ((((*l_322) = (-10L)) || (((safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((void*)0 != l_327), ((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(0x43L, (safe_add_func_int64_t_s_s(((+(+((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_334.xwyxzwwwywxzzzzz)).s1, ((((((p_682->g_300.x || p_41) && 4UL) & ((*l_337) = (safe_sub_func_uint64_t_u_u(0x175C95F3D1AF904CL, ((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 2))(0x2BE0A107BAB83F8AL, 1UL)).xyyx, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(6UL, 18446744073709551607UL)), 0xCE5067ACE969139DL, 0x035289A4E89D2B46L))))).z)))) > (p_38++)) && (l_301.y == 0x55L)) >= 0x52D40B24835735E1L))) >= 0xDFL))) == p_682->g_154), p_682->g_112.f3)), 0x6DL, 2L, 3L, 0x66L, 0L, 0L)).s6, p_41)) , 65532UL), ((VECTOR(uint16_t, 2))(65528UL)), ((VECTOR(uint16_t, 8))(0xCE0EL)), 0xFC56L, ((VECTOR(uint16_t, 2))(2UL)), 65535UL)).s9, p_682->g_122.f6)), p_682->g_277.z)) < l_334.z) || p_41)) <= GROUP_DIVERGE(1, 1)));
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_682->l_comm_values p_682->g_3 p_682->g_comm_values p_682->g_57 p_682->g_64 p_682->g_79 p_682->g_82 p_682->g_95 p_682->g_108 p_682->g_112 p_682->g_122 p_682->g_104 p_682->g_137 p_682->g_81 p_682->g_146 p_682->g_150 p_682->g_151 p_682->g_154 p_682->g_161 p_682->g_174 p_682->g_175 p_682->g_181 p_682->g_118 p_682->g_274 p_682->g_276 p_682->g_277
 * writes: p_682->g_81 p_682->g_82 p_682->g_95 p_682->g_118 p_682->g_104 p_682->g_126 p_682->g_112.f2 p_682->g_154 p_682->g_112.f1 p_682->g_161 p_682->g_112.f4 p_682->g_112.f3 p_682->g_175
 */
uint64_t  func_42(int16_t  p_43, int32_t  p_44, int64_t  p_45, int32_t  p_46, int8_t  p_47, struct S2 * p_682)
{ /* block id: 5 */
    uint8_t l_132 = 0x1EL;
    int32_t l_153 = 8L;
    VECTOR(int32_t, 4) l_182 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L);
    uint8_t *l_188[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t **l_187 = &l_188[3];
    int32_t **l_191 = &p_682->g_161;
    int8_t l_284 = 0x03L;
    int i;
    if (p_682->l_comm_values[(safe_mod_func_uint32_t_u_u(p_682->tid, 86))])
    { /* block id: 6 */
        int8_t l_54 = 0x4FL;
        VECTOR(int32_t, 4) l_133 = (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, (-7L)), (-7L));
        uint32_t l_134 = 0xB3469156L;
        int i;
        if (((p_682->l_comm_values[(safe_mod_func_uint32_t_u_u(p_682->tid, 86))] < p_47) & (p_44 , func_50(l_54, func_55(p_682->g_3.y, p_682), (safe_add_func_uint64_t_u_u((((safe_sub_func_int16_t_s_s(l_132, (((l_133.z = ((l_54 && (p_45 , 0L)) , l_54)) <= p_45) | l_132))) > l_132) < l_134), p_47)), p_682))))
        { /* block id: 25 */
            (*p_682->g_151) = (safe_unary_minus_func_uint8_t_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(p_682->g_150.xzwxyzyz)).odd)).y));
        }
        else
        { /* block id: 27 */
            int32_t *l_152[1][1][2];
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_152[i][j][k] = (void*)0;
                }
            }
            --p_682->g_154;
        }
    }
    else
    { /* block id: 30 */
        int8_t l_165 = 0x17L;
        uint8_t *l_178 = (void*)0;
        VECTOR(int32_t, 16) l_183 = (VECTOR(int32_t, 16))(0x54891887L, (VECTOR(int32_t, 4))(0x54891887L, (VECTOR(int32_t, 2))(0x54891887L, 0x384813EEL), 0x384813EEL), 0x384813EEL, 0x54891887L, 0x384813EEL, (VECTOR(int32_t, 2))(0x54891887L, 0x384813EEL), (VECTOR(int32_t, 2))(0x54891887L, 0x384813EEL), 0x54891887L, 0x384813EEL, 0x54891887L, 0x384813EEL);
        int32_t l_190 = 1L;
        int32_t ***l_193[5];
        int i;
        for (i = 0; i < 5; i++)
            l_193[i] = &l_191;
        for (p_682->g_112.f1 = 0; (p_682->g_112.f1 != 23); p_682->g_112.f1++)
        { /* block id: 33 */
            int32_t **l_159 = (void*)0;
            int32_t **l_162 = &p_682->g_161;
            uint8_t *l_177[7];
            uint8_t **l_176 = &l_177[1];
            uint8_t **l_179 = &l_178;
            VECTOR(int32_t, 2) l_180 = (VECTOR(int32_t, 2))(0L, 0L);
            uint64_t *l_186 = &p_682->g_118;
            int32_t *l_189[5][4][8] = {{{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0}},{{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0}},{{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0}},{{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0}},{{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0},{(void*)0,&l_153,&p_682->g_112.f2,(void*)0,(void*)0,&p_682->g_104,&p_682->g_104,(void*)0}}};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_177[i] = &p_682->g_126;
            (*l_162) = &p_682->g_104;
            for (p_43 = (-7); (p_43 != 10); ++p_43)
            { /* block id: 37 */
                return p_682->g_95[0];
            }
            (**l_162) = l_165;
            atomic_and(&p_682->l_atomic_reduction[0], (safe_add_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((p_682->g_137.s4 & (+(p_682->g_108.y , (safe_lshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(p_682->g_122.f4, ((p_682->g_3.y , ((VECTOR(uint32_t, 16))(p_682->g_174.zwyxxwwyxwyxxxyw)).s6) < (l_190 ^= (p_44 &= ((GROUP_DIVERGE(2, 1) , (((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(p_682->g_175.s90)).yyxy, ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 4))((((*l_176) = &p_682->g_126) == ((*l_179) = l_178)), 0L, 0L, 0x6659D938L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_180.xy)))).xyxx, ((VECTOR(int32_t, 16))(p_682->g_181.s1676073172072317)).sc7d5))).odd)))).xxyyyxxy, ((VECTOR(int32_t, 16))(l_182.xzyyxxwwzzyzxwww)).hi))).hi, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_183.s79)), 5L, 5L))))).z != (((safe_lshift_func_int16_t_s_s((((18446744073709551608UL < ((*l_186) &= ((VECTOR(uint64_t, 4))(p_682->g_95[0], 0x7F9590D36859830CL, 0x90EECBCC985E1533L, 0UL)).w)) <= ((l_187 == l_179) & 0xBCL)) || (*p_682->g_161)), 14)) & 0xF0ED1FF27FFFBBCBL) | l_182.x))) < (*p_682->g_161))))))), 13))))) | p_682->g_174.w), l_165)), p_682->l_comm_values[(safe_mod_func_uint32_t_u_u(p_682->tid, 86))])));
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_682->v_collective += p_682->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
        l_191 = l_191;
        for (p_682->g_112.f4 = 0; (p_682->g_112.f4 >= (-26)); p_682->g_112.f4 = safe_sub_func_uint8_t_u_u(p_682->g_112.f4, 8))
        { /* block id: 51 */
            if ((atomic_inc(&p_682->g_atomic_input[24 * get_linear_group_id() + 17]) == 7))
            { /* block id: 53 */
                int16_t l_196 = (-1L);
                uint64_t l_197 = 0x2688045252A31B2FL;
                VECTOR(int16_t, 8) l_198 = (VECTOR(int16_t, 8))(0x7D4DL, (VECTOR(int16_t, 4))(0x7D4DL, (VECTOR(int16_t, 2))(0x7D4DL, 0x5E02L), 0x5E02L), 0x5E02L, 0x7D4DL, 0x5E02L);
                VECTOR(int16_t, 4) l_199 = (VECTOR(int16_t, 4))(0x5FC6L, (VECTOR(int16_t, 2))(0x5FC6L, 0L), 0L);
                int64_t l_200 = 0x39E47E5CDF20B098L;
                VECTOR(int32_t, 2) l_201 = (VECTOR(int32_t, 2))(0L, 0x184A7A52L);
                VECTOR(int32_t, 8) l_202 = (VECTOR(int32_t, 8))(0x16FAE3A3L, (VECTOR(int32_t, 4))(0x16FAE3A3L, (VECTOR(int32_t, 2))(0x16FAE3A3L, 0x2FA0CCB0L), 0x2FA0CCB0L), 0x2FA0CCB0L, 0x16FAE3A3L, 0x2FA0CCB0L);
                VECTOR(int32_t, 4) l_203 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x067E643AL), 0x067E643AL);
                VECTOR(int32_t, 8) l_204 = (VECTOR(int32_t, 8))(0x5C2B5266L, (VECTOR(int32_t, 4))(0x5C2B5266L, (VECTOR(int32_t, 2))(0x5C2B5266L, 1L), 1L), 1L, 0x5C2B5266L, 1L);
                int i;
                l_197 &= l_196;
                l_200 = (((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_198.s63)).xxyyyyyyyyyxyyyx)).s0d, ((VECTOR(int16_t, 4))(l_199.xzww)).even))).odd , 0x4665AAABL);
                if (((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(l_201.xxxx)).even, ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_202.s40260135)), ((VECTOR(int32_t, 4))(l_203.wzwz)).wyzywxwz, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_204.s2301)).xwwxxxxx))))).s51))).even)
                { /* block id: 56 */
                    int64_t l_205 = 0x61782E8E32242569L;
                    uint32_t l_206 = 1UL;
                    uint32_t l_207 = 0x6DC989A7L;
                    l_203.z |= (l_201.x &= l_205);
                    l_204.s2 &= (l_206 = 0x1957DAADL);
                    --l_207;
                }
                else
                { /* block id: 62 */
                    VECTOR(uint32_t, 8) l_210 = (VECTOR(uint32_t, 8))(0xA777E85BL, (VECTOR(uint32_t, 4))(0xA777E85BL, (VECTOR(uint32_t, 2))(0xA777E85BL, 0x9F850FDDL), 0x9F850FDDL), 0x9F850FDDL, 0xA777E85BL, 0x9F850FDDL);
                    int8_t l_211 = 0x0EL;
                    VECTOR(uint32_t, 8) l_212 = (VECTOR(uint32_t, 8))(0xE9992F74L, (VECTOR(uint32_t, 4))(0xE9992F74L, (VECTOR(uint32_t, 2))(0xE9992F74L, 0x07427AADL), 0x07427AADL), 0x07427AADL, 0xE9992F74L, 0x07427AADL);
                    VECTOR(uint32_t, 16) l_213 = (VECTOR(uint32_t, 16))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0UL), 0UL), 0UL, 4294967290UL, 0UL, (VECTOR(uint32_t, 2))(4294967290UL, 0UL), (VECTOR(uint32_t, 2))(4294967290UL, 0UL), 4294967290UL, 0UL, 4294967290UL, 0UL);
                    VECTOR(uint32_t, 2) l_214 = (VECTOR(uint32_t, 2))(0x7BA377E9L, 0xB69A65D6L);
                    VECTOR(uint32_t, 16) l_215 = (VECTOR(uint32_t, 16))(0xA13051B3L, (VECTOR(uint32_t, 4))(0xA13051B3L, (VECTOR(uint32_t, 2))(0xA13051B3L, 7UL), 7UL), 7UL, 0xA13051B3L, 7UL, (VECTOR(uint32_t, 2))(0xA13051B3L, 7UL), (VECTOR(uint32_t, 2))(0xA13051B3L, 7UL), 0xA13051B3L, 7UL, 0xA13051B3L, 7UL);
                    VECTOR(uint32_t, 8) l_216 = (VECTOR(uint32_t, 8))(4294967294UL, (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 4294967293UL), 4294967293UL), 4294967293UL, 4294967294UL, 4294967293UL);
                    VECTOR(uint32_t, 8) l_217 = (VECTOR(uint32_t, 8))(0x88A6071FL, (VECTOR(uint32_t, 4))(0x88A6071FL, (VECTOR(uint32_t, 2))(0x88A6071FL, 0x7B818E0EL), 0x7B818E0EL), 0x7B818E0EL, 0x88A6071FL, 0x7B818E0EL);
                    VECTOR(uint32_t, 2) l_218 = (VECTOR(uint32_t, 2))(0x9C1F599AL, 0UL);
                    VECTOR(uint32_t, 16) l_219 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL), 4294967295UL, 1UL, 4294967295UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 1UL, 4294967295UL, 1UL, 4294967295UL);
                    int64_t l_220 = 1L;
                    uint16_t l_221 = 0x3166L;
                    VECTOR(uint32_t, 2) l_224 = (VECTOR(uint32_t, 2))(0xEDDAC260L, 0xAEA8CC6DL);
                    VECTOR(uint32_t, 4) l_225 = (VECTOR(uint32_t, 4))(0xCEECF209L, (VECTOR(uint32_t, 2))(0xCEECF209L, 0x6743CCBAL), 0x6743CCBAL);
                    VECTOR(uint32_t, 4) l_226 = (VECTOR(uint32_t, 4))(4UL, (VECTOR(uint32_t, 2))(4UL, 0xF0F2C868L), 0xF0F2C868L);
                    uint16_t l_227[5][5] = {{0xE867L,0xE867L,65527UL,0xB411L,0x12DEL},{0xE867L,0xE867L,65527UL,0xB411L,0x12DEL},{0xE867L,0xE867L,65527UL,0xB411L,0x12DEL},{0xE867L,0xE867L,65527UL,0xB411L,0x12DEL},{0xE867L,0xE867L,65527UL,0xB411L,0x12DEL}};
                    VECTOR(uint32_t, 8) l_228 = (VECTOR(uint32_t, 8))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 8UL), 8UL), 8UL, 4294967292UL, 8UL);
                    VECTOR(uint32_t, 8) l_229 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xA6DCFE5CL), 0xA6DCFE5CL), 0xA6DCFE5CL, 1UL, 0xA6DCFE5CL);
                    int32_t l_230 = (-2L);
                    int64_t l_231 = 7L;
                    VECTOR(uint32_t, 8) l_232 = (VECTOR(uint32_t, 8))(0xC6F07718L, (VECTOR(uint32_t, 4))(0xC6F07718L, (VECTOR(uint32_t, 2))(0xC6F07718L, 0xF7A08163L), 0xF7A08163L), 0xF7A08163L, 0xC6F07718L, 0xF7A08163L);
                    VECTOR(int32_t, 2) l_233 = (VECTOR(int32_t, 2))(9L, 7L);
                    VECTOR(uint32_t, 2) l_234 = (VECTOR(uint32_t, 2))(4294967295UL, 0UL);
                    uint32_t l_235[4] = {0xF68C6C8EL,0xF68C6C8EL,0xF68C6C8EL,0xF68C6C8EL};
                    uint16_t l_236 = 2UL;
                    VECTOR(uint8_t, 4) l_237 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x4AL), 0x4AL);
                    int64_t l_238 = 0x55DC91545B19DE6BL;
                    int32_t l_239[1][7][3] = {{{0x53714A94L,0x30AD3EC2L,0x28FBD838L},{0x53714A94L,0x30AD3EC2L,0x28FBD838L},{0x53714A94L,0x30AD3EC2L,0x28FBD838L},{0x53714A94L,0x30AD3EC2L,0x28FBD838L},{0x53714A94L,0x30AD3EC2L,0x28FBD838L},{0x53714A94L,0x30AD3EC2L,0x28FBD838L},{0x53714A94L,0x30AD3EC2L,0x28FBD838L}}};
                    int32_t l_240 = 0x0F58D22EL;
                    uint64_t l_241 = 0xE0689C20EA0EF96FL;
                    VECTOR(int16_t, 4) l_242 = (VECTOR(int16_t, 4))(0x73EDL, (VECTOR(int16_t, 2))(0x73EDL, 0x55CEL), 0x55CEL);
                    uint32_t l_243 = 4294967291UL;
                    int8_t l_244 = 7L;
                    uint32_t l_245 = 0x94A37624L;
                    int32_t l_246 = 0x29B314F7L;
                    uint64_t l_247 = 0xD9ACDC3D9E7DE085L;
                    int8_t l_248 = 0x75L;
                    uint16_t l_249[3];
                    uint32_t l_250 = 0x3726885EL;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_249[i] = 65535UL;
                    if ((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 8))(0x5E5AFB85L, 2UL, ((VECTOR(uint32_t, 2))(l_210.s13)), (l_211 = 0xD277CD82L), 4294967291UL, 4294967295UL, 4294967293UL)), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_212.s37)), ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_213.s20)), 4294967295UL, 0xFB827412L)), ((VECTOR(uint32_t, 4))(l_214.yxxy)), ((VECTOR(uint32_t, 8))(l_215.s3ec06c28)))).lo)).s1270152716141000)).sef)).xxyx)).lo, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(l_216.s41))))))), ((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 4))(l_217.s0772)).xxxzyzwz, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_218.yx)), 0x9E7D40DAL, 0xC8D32F10L)).odd, ((VECTOR(uint32_t, 8))(l_219.s2e91c9ac)).s63, ((VECTOR(uint32_t, 8))(0x706EA03DL, 1UL, 0xC64E29DAL, 0x01741C85L, (--l_221), 4UL, 0xACC421F7L, 0x2FA8CA2AL)).s46))), ((VECTOR(uint32_t, 4))(l_224.yyyy)).odd, ((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_225.zwwwzyxw)).s2474060132516311)).odd, ((VECTOR(uint32_t, 8))(l_226.xywzxwyz))))))))).s71)))))), 0xE36482B0L, 4294967291UL)).zywzwwzy))).hi)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 16))(4294967288UL, 0x83918316L, l_227[2][0], ((VECTOR(uint32_t, 2))(l_228.s46)), ((VECTOR(uint32_t, 2))(l_229.s33)), 4294967295UL, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0UL, 4294967286UL)).xyxxxxxyxyxxxyxx)).even)))))).s9e, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0xF36F420AL, 0x63F948C4L))))))), ((VECTOR(uint32_t, 16))(((l_230 , ((l_230 &= (l_231 , l_232.s3)) , ((VECTOR(int32_t, 16))(l_233.yxxyxxxxxxxyyxyx)).s2)) , FAKE_DIVERGE(p_682->local_2_offset, get_local_id(2), 10)), 4294967294UL, 0UL, ((VECTOR(uint32_t, 4))(l_234.yxxx)), (l_244 = (l_243 = ((l_241 = (l_235[2] , (l_236 , ((l_200 = ((l_238 = ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_237.zwyz)).yzywyzwz)).even)).y) , (l_239[0][0][0] , 0x285100DBDCF7481FL))) , l_240)))) , l_242.z))), l_245, 0xCB8014FFL, ((VECTOR(uint32_t, 2))(4294967295UL)), ((VECTOR(uint32_t, 2))(0xED7F041DL)), 4294967295UL, 0UL)).sad))), 0xB38FF28CL, 0x444BCCD8L)), ((VECTOR(uint32_t, 4))(8UL))))).wwxzzwyy)).odd))).yzyywxzzyyxyxyyy)).hi, ((VECTOR(uint32_t, 8))(0UL))))).s40, ((VECTOR(uint32_t, 2))(9UL))))), l_246, 4294967291UL, 4294967295UL, 0UL, ((VECTOR(uint32_t, 2))(4294967287UL)), 0x5FD858B0L, l_247, 0x9D8917A1L, 4294967287UL)).s22)).yxxyxyxy))), 4294967288UL, 3UL, l_248, ((VECTOR(uint32_t, 2))(4294967295UL)), l_249[1], 4294967295UL, 4294967292UL)).s6 , l_250))
                    { /* block id: 71 */
                        uint8_t l_251 = 250UL;
                        struct S0 l_252[3][8] = {{{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{0x91E9L,0x12E09EF8L,4294967295UL,0L,0x30CC05694DDA1697L,0xC5L,1UL,0x4DD62C0CL},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{0x91E9L,0x12E09EF8L,4294967295UL,0L,0x30CC05694DDA1697L,0xC5L,1UL,0x4DD62C0CL},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{0x91E9L,0x12E09EF8L,4294967295UL,0L,0x30CC05694DDA1697L,0xC5L,1UL,0x4DD62C0CL}},{{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{0x91E9L,0x12E09EF8L,4294967295UL,0L,0x30CC05694DDA1697L,0xC5L,1UL,0x4DD62C0CL},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{0x91E9L,0x12E09EF8L,4294967295UL,0L,0x30CC05694DDA1697L,0xC5L,1UL,0x4DD62C0CL},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{0x91E9L,0x12E09EF8L,4294967295UL,0L,0x30CC05694DDA1697L,0xC5L,1UL,0x4DD62C0CL}},{{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{0x91E9L,0x12E09EF8L,4294967295UL,0L,0x30CC05694DDA1697L,0xC5L,1UL,0x4DD62C0CL},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{0x91E9L,0x12E09EF8L,4294967295UL,0L,0x30CC05694DDA1697L,0xC5L,1UL,0x4DD62C0CL},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{65529UL,0x000197DBL,0UL,0x366E87006EA0178CL,4L,0x59L,0x4D771850L,2L},{0x91E9L,0x12E09EF8L,4294967295UL,0L,0x30CC05694DDA1697L,0xC5L,1UL,0x4DD62C0CL}}};
                        struct S0 l_253 = {0xF2E0L,1L,0xE0ECAFB3L,0x253682DA734AD228L,0x45F9A7D5ABB853B7L,255UL,1UL,0x6DADD87BL};/* VOLATILE GLOBAL l_253 */
                        uint8_t *l_255 = (void*)0;
                        uint8_t **l_254 = &l_255;
                        uint8_t **l_256 = (void*)0;
                        struct S0 l_257[9] = {{65531UL,0x1401B699L,0xE920F858L,-7L,5L,0xB6L,3UL,0x69AC747CL},{65531UL,0x1401B699L,0xE920F858L,-7L,5L,0xB6L,3UL,0x69AC747CL},{65531UL,0x1401B699L,0xE920F858L,-7L,5L,0xB6L,3UL,0x69AC747CL},{65531UL,0x1401B699L,0xE920F858L,-7L,5L,0xB6L,3UL,0x69AC747CL},{65531UL,0x1401B699L,0xE920F858L,-7L,5L,0xB6L,3UL,0x69AC747CL},{65531UL,0x1401B699L,0xE920F858L,-7L,5L,0xB6L,3UL,0x69AC747CL},{65531UL,0x1401B699L,0xE920F858L,-7L,5L,0xB6L,3UL,0x69AC747CL},{65531UL,0x1401B699L,0xE920F858L,-7L,5L,0xB6L,3UL,0x69AC747CL},{65531UL,0x1401B699L,0xE920F858L,-7L,5L,0xB6L,3UL,0x69AC747CL}};
                        struct S0 l_258[1][7] = {{{65535UL,-3L,0xCC81F561L,0x7C3B9E47FB7F7314L,0x60B1892D0D0107AFL,251UL,4294967290UL,0x0895E42EL},{65535UL,-3L,0xCC81F561L,0x7C3B9E47FB7F7314L,0x60B1892D0D0107AFL,251UL,4294967290UL,0x0895E42EL},{65535UL,-3L,0xCC81F561L,0x7C3B9E47FB7F7314L,0x60B1892D0D0107AFL,251UL,4294967290UL,0x0895E42EL},{65535UL,-3L,0xCC81F561L,0x7C3B9E47FB7F7314L,0x60B1892D0D0107AFL,251UL,4294967290UL,0x0895E42EL},{65535UL,-3L,0xCC81F561L,0x7C3B9E47FB7F7314L,0x60B1892D0D0107AFL,251UL,4294967290UL,0x0895E42EL},{65535UL,-3L,0xCC81F561L,0x7C3B9E47FB7F7314L,0x60B1892D0D0107AFL,251UL,4294967290UL,0x0895E42EL},{65535UL,-3L,0xCC81F561L,0x7C3B9E47FB7F7314L,0x60B1892D0D0107AFL,251UL,4294967290UL,0x0895E42EL}}};
                        int i, j;
                        l_253 = (l_251 , l_252[0][7]);
                        l_256 = l_254;
                        l_258[0][4] = l_257[4];
                    }
                    else
                    { /* block id: 75 */
                        int32_t l_260 = 0x717AE8C2L;
                        int32_t *l_259 = &l_260;
                        int32_t *l_261 = (void*)0;
                        int32_t *l_262 = &l_260;
                        l_261 = l_259;
                        l_262 = (void*)0;
                    }
                }
                unsigned int result = 0;
                result += l_196;
                result += l_197;
                result += l_198.s7;
                result += l_198.s6;
                result += l_198.s5;
                result += l_198.s4;
                result += l_198.s3;
                result += l_198.s2;
                result += l_198.s1;
                result += l_198.s0;
                result += l_199.w;
                result += l_199.z;
                result += l_199.y;
                result += l_199.x;
                result += l_200;
                result += l_201.y;
                result += l_201.x;
                result += l_202.s7;
                result += l_202.s6;
                result += l_202.s5;
                result += l_202.s4;
                result += l_202.s3;
                result += l_202.s2;
                result += l_202.s1;
                result += l_202.s0;
                result += l_203.w;
                result += l_203.z;
                result += l_203.y;
                result += l_203.x;
                result += l_204.s7;
                result += l_204.s6;
                result += l_204.s5;
                result += l_204.s4;
                result += l_204.s3;
                result += l_204.s2;
                result += l_204.s1;
                result += l_204.s0;
                atomic_add(&p_682->g_special_values[24 * get_linear_group_id() + 17], result);
            }
            else
            { /* block id: 80 */
                (1 + 1);
            }
        }
        (*l_191) = &p_44;
    }
    for (l_153 = 0; (l_153 < (-16)); --l_153)
    { /* block id: 88 */
        uint8_t l_275 = 0x45L;
        for (p_47 = 0; (p_47 < (-20)); p_47--)
        { /* block id: 91 */
            int8_t l_271 = 1L;
            uint64_t *l_272 = (void*)0;
            uint64_t *l_273 = &p_682->g_118;
            int32_t *l_285[2][2][5] = {{{&l_153,&p_682->g_112.f2,(void*)0,&p_682->g_112.f2,&l_153},{&l_153,&p_682->g_112.f2,(void*)0,&p_682->g_112.f2,&l_153}},{{&l_153,&p_682->g_112.f2,(void*)0,&p_682->g_112.f2,&l_153},{&l_153,&p_682->g_112.f2,(void*)0,&p_682->g_112.f2,&l_153}}};
            int i, j, k;
            for (p_682->g_112.f3 = (-4); (p_682->g_112.f3 > (-11)); p_682->g_112.f3 = safe_sub_func_uint16_t_u_u(p_682->g_112.f3, 3))
            { /* block id: 94 */
                if (p_43)
                    break;
            }
            p_682->g_175.s8 &= (safe_add_func_int64_t_s_s((l_271 <= (((*l_273) |= ((VECTOR(uint64_t, 2))(0xDEBE79B4AD3666B9L, 1UL)).even) < ((p_682->g_274 , p_682->g_174.y) != l_275))), (((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_682->g_276.s07)).xxyy)), ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x7BF1FA64L, 0x629E462AL)), 0x3E48F8D6L, (-1L))).xzyzzzyxyyzzyywz)), ((VECTOR(int32_t, 2))(p_682->g_277.xy)).xxyyxxxyxxxxyyyy))).s6601))).w ^ ((*p_682->g_161) = (safe_sub_func_uint8_t_u_u((~(!(safe_div_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s(l_284, 8)), 0xDBE3D278L)))), (+253UL)))))));
            if ((atomic_inc(&p_682->g_atomic_input[24 * get_linear_group_id() + 2]) == 8))
            { /* block id: 101 */
                uint32_t l_286 = 4294967287UL;
                int32_t l_288 = 0x72D43E78L;
                int32_t *l_287 = &l_288;
                int32_t *l_289[3];
                int32_t *l_290 = &l_288;
                int32_t *l_291 = &l_288;
                int i;
                for (i = 0; i < 3; i++)
                    l_289[i] = &l_288;
                l_291 = (l_286 , (l_290 = (l_289[0] = l_287)));
                unsigned int result = 0;
                result += l_286;
                result += l_288;
                atomic_add(&p_682->g_special_values[24 * get_linear_group_id() + 2], result);
            }
            else
            { /* block id: 105 */
                (1 + 1);
            }
        }
    }
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_682->g_137 p_682->g_81 p_682->g_146 p_682->g_112.f2
 * writes: p_682->g_112.f2
 */
uint8_t  func_50(int16_t  p_51, int64_t  p_52, uint32_t  p_53, struct S2 * p_682)
{ /* block id: 22 */
    uint32_t *l_140 = &p_682->g_81;
    VECTOR(uint16_t, 8) l_141 = (VECTOR(uint16_t, 8))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0x40A1L), 0x40A1L), 0x40A1L, 65533UL, 0x40A1L);
    uint8_t *l_147 = (void*)0;
    int32_t *l_148 = &p_682->g_112.f2;
    int i;
    (*l_148) = (safe_add_func_uint32_t_u_u((((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 8))((((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))(p_682->g_137.s6247777342337045)).hi, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((-1L), 0x4E75L)).yyyy)))).zyxzxyww))).s6 || 0xEA23L), 0x03BFL, (safe_add_func_int64_t_s_s(((l_140 == (void*)0) , 1L), p_682->g_81)), ((VECTOR(uint16_t, 4))(l_141.s5120)), 2UL)).s32, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0xD8F8L, 0UL)).xxxyyxxxxxxxyxxx)).s37))).even | (safe_mod_func_uint64_t_u_u((~(l_141.s5 & (0x34E6BA9FL && (((VECTOR(int16_t, 2))(p_682->g_146.xz)).lo <= (&p_682->g_126 == l_147))))), l_141.s3))), GROUP_DIVERGE(0, 1)));
    return (*l_148);
}


/* ------------------------------------------ */
/* 
 * reads : p_682->g_comm_values p_682->g_57 p_682->g_64 p_682->g_79 p_682->g_3 p_682->g_82 p_682->g_95 p_682->g_108 p_682->g_112 p_682->g_122 p_682->g_104
 * writes: p_682->g_81 p_682->g_82 p_682->g_95 p_682->g_118 p_682->g_104 p_682->g_126 p_682->g_112.f2
 */
int64_t  func_55(int64_t  p_56, struct S2 * p_682)
{ /* block id: 7 */
    uint64_t l_65 = 18446744073709551615UL;
    int32_t l_68 = 0L;
    uint32_t *l_80 = &p_682->g_81;
    uint8_t *l_124 = (void*)0;
    uint8_t *l_125 = &p_682->g_126;
    int32_t *l_127 = &p_682->g_112.f2;
    (*l_127) = (p_682->g_comm_values[p_682->tid] ^ ((*l_125) = ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 2))(p_682->g_57.xz)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xA6L, 0x25L)).lo, (((func_58(((((((safe_unary_minus_func_uint16_t_u((safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(p_682->g_64.s718b)).z, (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(1UL, 0x4B80CDE2L)).yxyyxyyyxxyxxyyy)).s0 , l_65))))) <= (safe_div_func_int32_t_s_s((p_682->g_64.s8 | l_68), l_68))) == p_682->g_64.s8) , (safe_add_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(8UL, (((*l_80) = ((safe_mod_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((((VECTOR(uint32_t, 2))(1UL, 1UL)).even != (safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 8))(1UL, ((VECTOR(uint16_t, 16))(1UL, ((VECTOR(uint16_t, 2))(p_682->g_79.xx)), ((VECTOR(uint16_t, 2))(0x5FCAL, 0xABB2L)), p_682->g_3.y, (p_56 != l_65), ((VECTOR(uint16_t, 4))(0x9E1BL)), ((VECTOR(uint16_t, 4))(1UL)), 0x45DBL)).s3, l_65, p_56, ((VECTOR(uint16_t, 4))(0x2339L)))).odd))).wwzzywzxxxyyywxw)).sb, p_56))) > l_68), p_56)), p_682->g_3.y)) >= p_56)) | 0x3D9679FFL))), p_682->g_3.x))) <= 1UL) >= FAKE_DIVERGE(p_682->group_2_offset, get_group_id(2), 10)), l_65, p_682) == (-9L)) & p_682->g_3.y) >= 0xE87E310A61F905A6L), ((VECTOR(uint8_t, 2))(0x65L)), ((VECTOR(uint8_t, 4))(1UL)))).s33))).hi));
    return p_682->g_79.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_682->g_82 p_682->g_95 p_682->g_108 p_682->g_79 p_682->g_112 p_682->g_comm_values p_682->g_3 p_682->g_122 p_682->g_104
 * writes: p_682->g_82 p_682->g_95 p_682->g_118 p_682->g_104
 */
uint64_t  func_58(int32_t  p_59, int32_t  p_60, struct S2 * p_682)
{ /* block id: 9 */
    int32_t l_93 = 8L;
    int8_t *l_94 = &p_682->g_95[0];
    int32_t *l_103 = &p_682->g_104;
    int32_t **l_102 = &l_103;
    VECTOR(int8_t, 16) l_107 = (VECTOR(int8_t, 16))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x33L), 0x33L), 0x33L, 5L, 0x33L, (VECTOR(int8_t, 2))(5L, 0x33L), (VECTOR(int8_t, 2))(5L, 0x33L), 5L, 0x33L, 5L, 0x33L);
    VECTOR(uint8_t, 2) l_111 = (VECTOR(uint8_t, 2))(0x25L, 255UL);
    uint64_t *l_115 = (void*)0;
    uint64_t *l_116 = (void*)0;
    uint64_t *l_117 = &p_682->g_118;
    uint64_t *l_119[4];
    int32_t l_121 = 0x0C9FB339L;
    int32_t *l_123 = &p_682->g_104;
    int i;
    for (i = 0; i < 4; i++)
        l_119[i] = &p_682->g_120;
    p_682->g_82 = p_682->g_82;
    (*l_123) |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x4C66F1EAL, 3L)), ((safe_rshift_func_uint8_t_u_s((((GROUP_DIVERGE(2, 1) && (((safe_add_func_int16_t_s_s((((safe_lshift_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_u(((*l_94) |= (l_93 < 8UL)), (safe_add_func_uint64_t_u_u((safe_add_func_int32_t_s_s(((safe_div_func_uint32_t_u_u((((*l_102) = (void*)0) != (((safe_mul_func_uint16_t_u_u((0xB484L != ((l_121 = (p_59 , ((*l_117) = (((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_107.s3e2d46470ad0c79e)).sc6)), 0x2DL, (-1L))).odd, ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x50L, 0x47L)).yyyxyxxx)).s01, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_682->g_108.yy)), 0x57L, 0x30L, 0x53L, ((VECTOR(int8_t, 8))((safe_rshift_func_uint16_t_u_s((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0x25C8L, 65530UL)).even, 65534UL, (p_682->g_79.y , (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(l_111.yy)).yxyy, ((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 2))(0x63L, 255UL)).xyyxyxxy, ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0x5EL, 0x09L, 251UL, 0x77L)), (p_60 >= (((p_682->g_112 , (safe_mod_func_int8_t_s_s(p_682->g_112.f5, p_682->g_comm_values[p_682->tid]))) | 0x56A4L) <= p_682->g_112.f5)), ((VECTOR(uint8_t, 2))(255UL)), 0x9BL)).s15, ((VECTOR(uint8_t, 2))(0xB6L))))).xyyxxyyy))).odd))).xxxwyyxx, ((VECTOR(uint8_t, 8))(0x7CL)), ((VECTOR(uint8_t, 8))(0x06L))))), ((VECTOR(uint8_t, 8))(0UL))))))).s4014462712505744)).s6c2c)).w <= p_60)), ((VECTOR(uint16_t, 8))(0xB716L)), 0UL, ((VECTOR(uint16_t, 4))(0x6081L)))).odd)).s0 | p_60), p_59)), ((VECTOR(int8_t, 2))((-9L))), ((VECTOR(int8_t, 4))(1L)), (-2L))).s6, (-7L), 0x21L)).s06)))))).even <= p_682->g_3.x)))) < p_60)), 0L)) , p_682->g_122) , (void*)0)), p_682->g_112.f4)) == p_59), l_111.y)), 0x17E6F66A9E613B00L)))), 0x2BCEL)) ^ 0x3113L), p_59)) || l_121) > l_107.s2), p_60)) , l_103) != &p_682->g_81)) <= (-5L)) <= 0x4FL), 4)) == p_682->g_112.f6), ((VECTOR(int32_t, 2))(0L)), 7L, 1L, ((VECTOR(int32_t, 4))(0x02D3EDD0L)), ((VECTOR(int32_t, 2))(1L)), p_60, 0x155A46D6L, 4L)).s7;
    (*l_123) &= p_59;
    return (*l_123);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[86];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 86; i++)
            l_comm_values[i] = 1;
    struct S2 c_683;
    struct S2* p_682 = &c_683;
    struct S2 c_684 = {
        (VECTOR(uint64_t, 2))(0xB568BE135E1F6F08L, 5UL), // p_682->g_3
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x74L), 0x74L), // p_682->g_57
        (VECTOR(uint16_t, 16))(0xA137L, (VECTOR(uint16_t, 4))(0xA137L, (VECTOR(uint16_t, 2))(0xA137L, 65528UL), 65528UL), 65528UL, 0xA137L, 65528UL, (VECTOR(uint16_t, 2))(0xA137L, 65528UL), (VECTOR(uint16_t, 2))(0xA137L, 65528UL), 0xA137L, 65528UL, 0xA137L, 65528UL), // p_682->g_64
        (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 1UL), 1UL), // p_682->g_79
        1UL, // p_682->g_81
        (void*)0, // p_682->g_82
        {0x4CL,0x4CL,0x4CL,0x4CL}, // p_682->g_95
        0x46366C43L, // p_682->g_104
        (VECTOR(int8_t, 2))((-10L), 1L), // p_682->g_108
        {0x09B7A404L,0x7FBF5E0DC0726272L,7L,0x7A078023L,-10L,9L,0x7A51L,0UL}, // p_682->g_112
        0UL, // p_682->g_118
        0UL, // p_682->g_120
        {65535UL,0x0DEA165FL,0x5D9FCA90L,0x43F0B1F57036DBD5L,0x31C8896062B7E369L,0xD5L,0x2ED70072L,-8L}, // p_682->g_122
        251UL, // p_682->g_126
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x18B1L), 0x18B1L), 0x18B1L, 0L, 0x18B1L), // p_682->g_137
        (VECTOR(int16_t, 4))(0x46ADL, (VECTOR(int16_t, 2))(0x46ADL, 0x22CDL), 0x22CDL), // p_682->g_146
        (VECTOR(uint8_t, 4))(0xC4L, (VECTOR(uint8_t, 2))(0xC4L, 248UL), 248UL), // p_682->g_150
        &p_682->g_104, // p_682->g_151
        0x499BA862L, // p_682->g_154
        &p_682->g_104, // p_682->g_161
        {&p_682->g_161,&p_682->g_161,&p_682->g_161,&p_682->g_161,&p_682->g_161,&p_682->g_161,&p_682->g_161,&p_682->g_161,&p_682->g_161}, // p_682->g_160
        (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0x239B40A8L), 0x239B40A8L), // p_682->g_174
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 4L), 4L), 4L, 0L, 4L, (VECTOR(int32_t, 2))(0L, 4L), (VECTOR(int32_t, 2))(0L, 4L), 0L, 4L, 0L, 4L), // p_682->g_175
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 9L), 9L), 9L, 0L, 9L), // p_682->g_181
        (void*)0, // p_682->g_192
        {0x0973L,1L,4294967289UL,-1L,0x3BFC8B555A2FE9D7L,0xBDL,0x3B574CE6L,0L}, // p_682->g_274
        (VECTOR(int32_t, 16))(0x67BCB52CL, (VECTOR(int32_t, 4))(0x67BCB52CL, (VECTOR(int32_t, 2))(0x67BCB52CL, 0x58F7840EL), 0x58F7840EL), 0x58F7840EL, 0x67BCB52CL, 0x58F7840EL, (VECTOR(int32_t, 2))(0x67BCB52CL, 0x58F7840EL), (VECTOR(int32_t, 2))(0x67BCB52CL, 0x58F7840EL), 0x67BCB52CL, 0x58F7840EL, 0x67BCB52CL, 0x58F7840EL), // p_682->g_276
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), // p_682->g_277
        (VECTOR(int32_t, 2))(0x325A67F2L, 1L), // p_682->g_300
        (VECTOR(int32_t, 16))(0x2C5ECDDEL, (VECTOR(int32_t, 4))(0x2C5ECDDEL, (VECTOR(int32_t, 2))(0x2C5ECDDEL, 2L), 2L), 2L, 0x2C5ECDDEL, 2L, (VECTOR(int32_t, 2))(0x2C5ECDDEL, 2L), (VECTOR(int32_t, 2))(0x2C5ECDDEL, 2L), 0x2C5ECDDEL, 2L, 0x2C5ECDDEL, 2L), // p_682->g_317
        {-1L,0L,0x730037DBL,-1L,-5L,0x4FFF82B4B9AB1E80L,-1L,1UL}, // p_682->g_348
        &p_682->g_120, // p_682->g_360
        &p_682->g_360, // p_682->g_359
        {&p_682->g_359,&p_682->g_359,&p_682->g_359,&p_682->g_359,&p_682->g_359,&p_682->g_359,&p_682->g_359}, // p_682->g_358
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_682->g_361
        &p_682->g_359, // p_682->g_362
        (VECTOR(uint64_t, 16))(0xE991380E6533EEABL, (VECTOR(uint64_t, 4))(0xE991380E6533EEABL, (VECTOR(uint64_t, 2))(0xE991380E6533EEABL, 18446744073709551611UL), 18446744073709551611UL), 18446744073709551611UL, 0xE991380E6533EEABL, 18446744073709551611UL, (VECTOR(uint64_t, 2))(0xE991380E6533EEABL, 18446744073709551611UL), (VECTOR(uint64_t, 2))(0xE991380E6533EEABL, 18446744073709551611UL), 0xE991380E6533EEABL, 18446744073709551611UL, 0xE991380E6533EEABL, 18446744073709551611UL), // p_682->g_363
        {0x07F1L,0L,6UL,-1L,0L,249UL,0UL,0x66186E5EL}, // p_682->g_399
        (-1L), // p_682->g_420
        4294967295UL, // p_682->g_425
        (VECTOR(int8_t, 2))(0x0DL, 0x56L), // p_682->g_454
        (VECTOR(int8_t, 2))(0x62L, 0x7FL), // p_682->g_455
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xB784C0C0L), 0xB784C0C0L), 0xB784C0C0L, 0UL, 0xB784C0C0L), // p_682->g_470
        (VECTOR(int8_t, 16))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, (-1L)), (-1L)), (-1L), 4L, (-1L), (VECTOR(int8_t, 2))(4L, (-1L)), (VECTOR(int8_t, 2))(4L, (-1L)), 4L, (-1L), 4L, (-1L)), // p_682->g_472
        (VECTOR(uint16_t, 8))(0x047DL, (VECTOR(uint16_t, 4))(0x047DL, (VECTOR(uint16_t, 2))(0x047DL, 9UL), 9UL), 9UL, 0x047DL, 9UL), // p_682->g_515
        (VECTOR(uint16_t, 16))(0x358EL, (VECTOR(uint16_t, 4))(0x358EL, (VECTOR(uint16_t, 2))(0x358EL, 65535UL), 65535UL), 65535UL, 0x358EL, 65535UL, (VECTOR(uint16_t, 2))(0x358EL, 65535UL), (VECTOR(uint16_t, 2))(0x358EL, 65535UL), 0x358EL, 65535UL, 0x358EL, 65535UL), // p_682->g_516
        {1L,0x542CC26F8F4C78CDL,7L,0x63861933L,0x099A0EC7302F8A92L,0x248724964FBB6F6DL,0x14C5L,0x4567L}, // p_682->g_532
        (void*)0, // p_682->g_535
        (void*)0, // p_682->g_537
        (void*)0, // p_682->g_538
        (void*)0, // p_682->g_540
        &p_682->g_161, // p_682->g_550
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x51849246L), 0x51849246L), 0x51849246L, 1L, 0x51849246L, (VECTOR(int32_t, 2))(1L, 0x51849246L), (VECTOR(int32_t, 2))(1L, 0x51849246L), 1L, 0x51849246L, 1L, 0x51849246L), // p_682->g_588
        {&p_682->g_95[1]}, // p_682->g_599
        (void*)0, // p_682->g_676
        (void*)0, // p_682->g_677
        (void*)0, // p_682->g_678
        0x53981E6BL, // p_682->g_681
        0, // p_682->v_collective
        sequence_input[get_global_id(0)], // p_682->global_0_offset
        sequence_input[get_global_id(1)], // p_682->global_1_offset
        sequence_input[get_global_id(2)], // p_682->global_2_offset
        sequence_input[get_local_id(0)], // p_682->local_0_offset
        sequence_input[get_local_id(1)], // p_682->local_1_offset
        sequence_input[get_local_id(2)], // p_682->local_2_offset
        sequence_input[get_group_id(0)], // p_682->group_0_offset
        sequence_input[get_group_id(1)], // p_682->group_1_offset
        sequence_input[get_group_id(2)], // p_682->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 86)), permutations[0][get_linear_local_id()])), // p_682->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_683 = c_684;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_682);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_682->g_3.x, "p_682->g_3.x", print_hash_value);
    transparent_crc(p_682->g_3.y, "p_682->g_3.y", print_hash_value);
    transparent_crc(p_682->g_57.x, "p_682->g_57.x", print_hash_value);
    transparent_crc(p_682->g_57.y, "p_682->g_57.y", print_hash_value);
    transparent_crc(p_682->g_57.z, "p_682->g_57.z", print_hash_value);
    transparent_crc(p_682->g_57.w, "p_682->g_57.w", print_hash_value);
    transparent_crc(p_682->g_64.s0, "p_682->g_64.s0", print_hash_value);
    transparent_crc(p_682->g_64.s1, "p_682->g_64.s1", print_hash_value);
    transparent_crc(p_682->g_64.s2, "p_682->g_64.s2", print_hash_value);
    transparent_crc(p_682->g_64.s3, "p_682->g_64.s3", print_hash_value);
    transparent_crc(p_682->g_64.s4, "p_682->g_64.s4", print_hash_value);
    transparent_crc(p_682->g_64.s5, "p_682->g_64.s5", print_hash_value);
    transparent_crc(p_682->g_64.s6, "p_682->g_64.s6", print_hash_value);
    transparent_crc(p_682->g_64.s7, "p_682->g_64.s7", print_hash_value);
    transparent_crc(p_682->g_64.s8, "p_682->g_64.s8", print_hash_value);
    transparent_crc(p_682->g_64.s9, "p_682->g_64.s9", print_hash_value);
    transparent_crc(p_682->g_64.sa, "p_682->g_64.sa", print_hash_value);
    transparent_crc(p_682->g_64.sb, "p_682->g_64.sb", print_hash_value);
    transparent_crc(p_682->g_64.sc, "p_682->g_64.sc", print_hash_value);
    transparent_crc(p_682->g_64.sd, "p_682->g_64.sd", print_hash_value);
    transparent_crc(p_682->g_64.se, "p_682->g_64.se", print_hash_value);
    transparent_crc(p_682->g_64.sf, "p_682->g_64.sf", print_hash_value);
    transparent_crc(p_682->g_79.x, "p_682->g_79.x", print_hash_value);
    transparent_crc(p_682->g_79.y, "p_682->g_79.y", print_hash_value);
    transparent_crc(p_682->g_79.z, "p_682->g_79.z", print_hash_value);
    transparent_crc(p_682->g_79.w, "p_682->g_79.w", print_hash_value);
    transparent_crc(p_682->g_81, "p_682->g_81", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_682->g_95[i], "p_682->g_95[i]", print_hash_value);

    }
    transparent_crc(p_682->g_104, "p_682->g_104", print_hash_value);
    transparent_crc(p_682->g_108.x, "p_682->g_108.x", print_hash_value);
    transparent_crc(p_682->g_108.y, "p_682->g_108.y", print_hash_value);
    transparent_crc(p_682->g_112.f0, "p_682->g_112.f0", print_hash_value);
    transparent_crc(p_682->g_112.f1, "p_682->g_112.f1", print_hash_value);
    transparent_crc(p_682->g_112.f2, "p_682->g_112.f2", print_hash_value);
    transparent_crc(p_682->g_112.f3, "p_682->g_112.f3", print_hash_value);
    transparent_crc(p_682->g_112.f4, "p_682->g_112.f4", print_hash_value);
    transparent_crc(p_682->g_112.f5, "p_682->g_112.f5", print_hash_value);
    transparent_crc(p_682->g_112.f6, "p_682->g_112.f6", print_hash_value);
    transparent_crc(p_682->g_112.f7, "p_682->g_112.f7", print_hash_value);
    transparent_crc(p_682->g_118, "p_682->g_118", print_hash_value);
    transparent_crc(p_682->g_120, "p_682->g_120", print_hash_value);
    transparent_crc(p_682->g_122.f0, "p_682->g_122.f0", print_hash_value);
    transparent_crc(p_682->g_122.f1, "p_682->g_122.f1", print_hash_value);
    transparent_crc(p_682->g_122.f2, "p_682->g_122.f2", print_hash_value);
    transparent_crc(p_682->g_122.f3, "p_682->g_122.f3", print_hash_value);
    transparent_crc(p_682->g_122.f4, "p_682->g_122.f4", print_hash_value);
    transparent_crc(p_682->g_122.f5, "p_682->g_122.f5", print_hash_value);
    transparent_crc(p_682->g_122.f6, "p_682->g_122.f6", print_hash_value);
    transparent_crc(p_682->g_122.f7, "p_682->g_122.f7", print_hash_value);
    transparent_crc(p_682->g_126, "p_682->g_126", print_hash_value);
    transparent_crc(p_682->g_137.s0, "p_682->g_137.s0", print_hash_value);
    transparent_crc(p_682->g_137.s1, "p_682->g_137.s1", print_hash_value);
    transparent_crc(p_682->g_137.s2, "p_682->g_137.s2", print_hash_value);
    transparent_crc(p_682->g_137.s3, "p_682->g_137.s3", print_hash_value);
    transparent_crc(p_682->g_137.s4, "p_682->g_137.s4", print_hash_value);
    transparent_crc(p_682->g_137.s5, "p_682->g_137.s5", print_hash_value);
    transparent_crc(p_682->g_137.s6, "p_682->g_137.s6", print_hash_value);
    transparent_crc(p_682->g_137.s7, "p_682->g_137.s7", print_hash_value);
    transparent_crc(p_682->g_146.x, "p_682->g_146.x", print_hash_value);
    transparent_crc(p_682->g_146.y, "p_682->g_146.y", print_hash_value);
    transparent_crc(p_682->g_146.z, "p_682->g_146.z", print_hash_value);
    transparent_crc(p_682->g_146.w, "p_682->g_146.w", print_hash_value);
    transparent_crc(p_682->g_150.x, "p_682->g_150.x", print_hash_value);
    transparent_crc(p_682->g_150.y, "p_682->g_150.y", print_hash_value);
    transparent_crc(p_682->g_150.z, "p_682->g_150.z", print_hash_value);
    transparent_crc(p_682->g_150.w, "p_682->g_150.w", print_hash_value);
    transparent_crc(p_682->g_154, "p_682->g_154", print_hash_value);
    transparent_crc(p_682->g_174.x, "p_682->g_174.x", print_hash_value);
    transparent_crc(p_682->g_174.y, "p_682->g_174.y", print_hash_value);
    transparent_crc(p_682->g_174.z, "p_682->g_174.z", print_hash_value);
    transparent_crc(p_682->g_174.w, "p_682->g_174.w", print_hash_value);
    transparent_crc(p_682->g_175.s0, "p_682->g_175.s0", print_hash_value);
    transparent_crc(p_682->g_175.s1, "p_682->g_175.s1", print_hash_value);
    transparent_crc(p_682->g_175.s2, "p_682->g_175.s2", print_hash_value);
    transparent_crc(p_682->g_175.s3, "p_682->g_175.s3", print_hash_value);
    transparent_crc(p_682->g_175.s4, "p_682->g_175.s4", print_hash_value);
    transparent_crc(p_682->g_175.s5, "p_682->g_175.s5", print_hash_value);
    transparent_crc(p_682->g_175.s6, "p_682->g_175.s6", print_hash_value);
    transparent_crc(p_682->g_175.s7, "p_682->g_175.s7", print_hash_value);
    transparent_crc(p_682->g_175.s8, "p_682->g_175.s8", print_hash_value);
    transparent_crc(p_682->g_175.s9, "p_682->g_175.s9", print_hash_value);
    transparent_crc(p_682->g_175.sa, "p_682->g_175.sa", print_hash_value);
    transparent_crc(p_682->g_175.sb, "p_682->g_175.sb", print_hash_value);
    transparent_crc(p_682->g_175.sc, "p_682->g_175.sc", print_hash_value);
    transparent_crc(p_682->g_175.sd, "p_682->g_175.sd", print_hash_value);
    transparent_crc(p_682->g_175.se, "p_682->g_175.se", print_hash_value);
    transparent_crc(p_682->g_175.sf, "p_682->g_175.sf", print_hash_value);
    transparent_crc(p_682->g_181.s0, "p_682->g_181.s0", print_hash_value);
    transparent_crc(p_682->g_181.s1, "p_682->g_181.s1", print_hash_value);
    transparent_crc(p_682->g_181.s2, "p_682->g_181.s2", print_hash_value);
    transparent_crc(p_682->g_181.s3, "p_682->g_181.s3", print_hash_value);
    transparent_crc(p_682->g_181.s4, "p_682->g_181.s4", print_hash_value);
    transparent_crc(p_682->g_181.s5, "p_682->g_181.s5", print_hash_value);
    transparent_crc(p_682->g_181.s6, "p_682->g_181.s6", print_hash_value);
    transparent_crc(p_682->g_181.s7, "p_682->g_181.s7", print_hash_value);
    transparent_crc(p_682->g_274.f0, "p_682->g_274.f0", print_hash_value);
    transparent_crc(p_682->g_274.f1, "p_682->g_274.f1", print_hash_value);
    transparent_crc(p_682->g_274.f2, "p_682->g_274.f2", print_hash_value);
    transparent_crc(p_682->g_274.f3, "p_682->g_274.f3", print_hash_value);
    transparent_crc(p_682->g_274.f4, "p_682->g_274.f4", print_hash_value);
    transparent_crc(p_682->g_274.f5, "p_682->g_274.f5", print_hash_value);
    transparent_crc(p_682->g_274.f6, "p_682->g_274.f6", print_hash_value);
    transparent_crc(p_682->g_274.f7, "p_682->g_274.f7", print_hash_value);
    transparent_crc(p_682->g_276.s0, "p_682->g_276.s0", print_hash_value);
    transparent_crc(p_682->g_276.s1, "p_682->g_276.s1", print_hash_value);
    transparent_crc(p_682->g_276.s2, "p_682->g_276.s2", print_hash_value);
    transparent_crc(p_682->g_276.s3, "p_682->g_276.s3", print_hash_value);
    transparent_crc(p_682->g_276.s4, "p_682->g_276.s4", print_hash_value);
    transparent_crc(p_682->g_276.s5, "p_682->g_276.s5", print_hash_value);
    transparent_crc(p_682->g_276.s6, "p_682->g_276.s6", print_hash_value);
    transparent_crc(p_682->g_276.s7, "p_682->g_276.s7", print_hash_value);
    transparent_crc(p_682->g_276.s8, "p_682->g_276.s8", print_hash_value);
    transparent_crc(p_682->g_276.s9, "p_682->g_276.s9", print_hash_value);
    transparent_crc(p_682->g_276.sa, "p_682->g_276.sa", print_hash_value);
    transparent_crc(p_682->g_276.sb, "p_682->g_276.sb", print_hash_value);
    transparent_crc(p_682->g_276.sc, "p_682->g_276.sc", print_hash_value);
    transparent_crc(p_682->g_276.sd, "p_682->g_276.sd", print_hash_value);
    transparent_crc(p_682->g_276.se, "p_682->g_276.se", print_hash_value);
    transparent_crc(p_682->g_276.sf, "p_682->g_276.sf", print_hash_value);
    transparent_crc(p_682->g_277.x, "p_682->g_277.x", print_hash_value);
    transparent_crc(p_682->g_277.y, "p_682->g_277.y", print_hash_value);
    transparent_crc(p_682->g_277.z, "p_682->g_277.z", print_hash_value);
    transparent_crc(p_682->g_277.w, "p_682->g_277.w", print_hash_value);
    transparent_crc(p_682->g_300.x, "p_682->g_300.x", print_hash_value);
    transparent_crc(p_682->g_300.y, "p_682->g_300.y", print_hash_value);
    transparent_crc(p_682->g_317.s0, "p_682->g_317.s0", print_hash_value);
    transparent_crc(p_682->g_317.s1, "p_682->g_317.s1", print_hash_value);
    transparent_crc(p_682->g_317.s2, "p_682->g_317.s2", print_hash_value);
    transparent_crc(p_682->g_317.s3, "p_682->g_317.s3", print_hash_value);
    transparent_crc(p_682->g_317.s4, "p_682->g_317.s4", print_hash_value);
    transparent_crc(p_682->g_317.s5, "p_682->g_317.s5", print_hash_value);
    transparent_crc(p_682->g_317.s6, "p_682->g_317.s6", print_hash_value);
    transparent_crc(p_682->g_317.s7, "p_682->g_317.s7", print_hash_value);
    transparent_crc(p_682->g_317.s8, "p_682->g_317.s8", print_hash_value);
    transparent_crc(p_682->g_317.s9, "p_682->g_317.s9", print_hash_value);
    transparent_crc(p_682->g_317.sa, "p_682->g_317.sa", print_hash_value);
    transparent_crc(p_682->g_317.sb, "p_682->g_317.sb", print_hash_value);
    transparent_crc(p_682->g_317.sc, "p_682->g_317.sc", print_hash_value);
    transparent_crc(p_682->g_317.sd, "p_682->g_317.sd", print_hash_value);
    transparent_crc(p_682->g_317.se, "p_682->g_317.se", print_hash_value);
    transparent_crc(p_682->g_317.sf, "p_682->g_317.sf", print_hash_value);
    transparent_crc(p_682->g_348.f0, "p_682->g_348.f0", print_hash_value);
    transparent_crc(p_682->g_348.f1, "p_682->g_348.f1", print_hash_value);
    transparent_crc(p_682->g_348.f2, "p_682->g_348.f2", print_hash_value);
    transparent_crc(p_682->g_348.f3, "p_682->g_348.f3", print_hash_value);
    transparent_crc(p_682->g_348.f4, "p_682->g_348.f4", print_hash_value);
    transparent_crc(p_682->g_348.f5, "p_682->g_348.f5", print_hash_value);
    transparent_crc(p_682->g_348.f6, "p_682->g_348.f6", print_hash_value);
    transparent_crc(p_682->g_348.f7, "p_682->g_348.f7", print_hash_value);
    transparent_crc(p_682->g_363.s0, "p_682->g_363.s0", print_hash_value);
    transparent_crc(p_682->g_363.s1, "p_682->g_363.s1", print_hash_value);
    transparent_crc(p_682->g_363.s2, "p_682->g_363.s2", print_hash_value);
    transparent_crc(p_682->g_363.s3, "p_682->g_363.s3", print_hash_value);
    transparent_crc(p_682->g_363.s4, "p_682->g_363.s4", print_hash_value);
    transparent_crc(p_682->g_363.s5, "p_682->g_363.s5", print_hash_value);
    transparent_crc(p_682->g_363.s6, "p_682->g_363.s6", print_hash_value);
    transparent_crc(p_682->g_363.s7, "p_682->g_363.s7", print_hash_value);
    transparent_crc(p_682->g_363.s8, "p_682->g_363.s8", print_hash_value);
    transparent_crc(p_682->g_363.s9, "p_682->g_363.s9", print_hash_value);
    transparent_crc(p_682->g_363.sa, "p_682->g_363.sa", print_hash_value);
    transparent_crc(p_682->g_363.sb, "p_682->g_363.sb", print_hash_value);
    transparent_crc(p_682->g_363.sc, "p_682->g_363.sc", print_hash_value);
    transparent_crc(p_682->g_363.sd, "p_682->g_363.sd", print_hash_value);
    transparent_crc(p_682->g_363.se, "p_682->g_363.se", print_hash_value);
    transparent_crc(p_682->g_363.sf, "p_682->g_363.sf", print_hash_value);
    transparent_crc(p_682->g_399.f0, "p_682->g_399.f0", print_hash_value);
    transparent_crc(p_682->g_399.f1, "p_682->g_399.f1", print_hash_value);
    transparent_crc(p_682->g_399.f2, "p_682->g_399.f2", print_hash_value);
    transparent_crc(p_682->g_399.f3, "p_682->g_399.f3", print_hash_value);
    transparent_crc(p_682->g_399.f4, "p_682->g_399.f4", print_hash_value);
    transparent_crc(p_682->g_399.f5, "p_682->g_399.f5", print_hash_value);
    transparent_crc(p_682->g_399.f6, "p_682->g_399.f6", print_hash_value);
    transparent_crc(p_682->g_399.f7, "p_682->g_399.f7", print_hash_value);
    transparent_crc(p_682->g_420, "p_682->g_420", print_hash_value);
    transparent_crc(p_682->g_425, "p_682->g_425", print_hash_value);
    transparent_crc(p_682->g_454.x, "p_682->g_454.x", print_hash_value);
    transparent_crc(p_682->g_454.y, "p_682->g_454.y", print_hash_value);
    transparent_crc(p_682->g_455.x, "p_682->g_455.x", print_hash_value);
    transparent_crc(p_682->g_455.y, "p_682->g_455.y", print_hash_value);
    transparent_crc(p_682->g_470.s0, "p_682->g_470.s0", print_hash_value);
    transparent_crc(p_682->g_470.s1, "p_682->g_470.s1", print_hash_value);
    transparent_crc(p_682->g_470.s2, "p_682->g_470.s2", print_hash_value);
    transparent_crc(p_682->g_470.s3, "p_682->g_470.s3", print_hash_value);
    transparent_crc(p_682->g_470.s4, "p_682->g_470.s4", print_hash_value);
    transparent_crc(p_682->g_470.s5, "p_682->g_470.s5", print_hash_value);
    transparent_crc(p_682->g_470.s6, "p_682->g_470.s6", print_hash_value);
    transparent_crc(p_682->g_470.s7, "p_682->g_470.s7", print_hash_value);
    transparent_crc(p_682->g_472.s0, "p_682->g_472.s0", print_hash_value);
    transparent_crc(p_682->g_472.s1, "p_682->g_472.s1", print_hash_value);
    transparent_crc(p_682->g_472.s2, "p_682->g_472.s2", print_hash_value);
    transparent_crc(p_682->g_472.s3, "p_682->g_472.s3", print_hash_value);
    transparent_crc(p_682->g_472.s4, "p_682->g_472.s4", print_hash_value);
    transparent_crc(p_682->g_472.s5, "p_682->g_472.s5", print_hash_value);
    transparent_crc(p_682->g_472.s6, "p_682->g_472.s6", print_hash_value);
    transparent_crc(p_682->g_472.s7, "p_682->g_472.s7", print_hash_value);
    transparent_crc(p_682->g_472.s8, "p_682->g_472.s8", print_hash_value);
    transparent_crc(p_682->g_472.s9, "p_682->g_472.s9", print_hash_value);
    transparent_crc(p_682->g_472.sa, "p_682->g_472.sa", print_hash_value);
    transparent_crc(p_682->g_472.sb, "p_682->g_472.sb", print_hash_value);
    transparent_crc(p_682->g_472.sc, "p_682->g_472.sc", print_hash_value);
    transparent_crc(p_682->g_472.sd, "p_682->g_472.sd", print_hash_value);
    transparent_crc(p_682->g_472.se, "p_682->g_472.se", print_hash_value);
    transparent_crc(p_682->g_472.sf, "p_682->g_472.sf", print_hash_value);
    transparent_crc(p_682->g_515.s0, "p_682->g_515.s0", print_hash_value);
    transparent_crc(p_682->g_515.s1, "p_682->g_515.s1", print_hash_value);
    transparent_crc(p_682->g_515.s2, "p_682->g_515.s2", print_hash_value);
    transparent_crc(p_682->g_515.s3, "p_682->g_515.s3", print_hash_value);
    transparent_crc(p_682->g_515.s4, "p_682->g_515.s4", print_hash_value);
    transparent_crc(p_682->g_515.s5, "p_682->g_515.s5", print_hash_value);
    transparent_crc(p_682->g_515.s6, "p_682->g_515.s6", print_hash_value);
    transparent_crc(p_682->g_515.s7, "p_682->g_515.s7", print_hash_value);
    transparent_crc(p_682->g_516.s0, "p_682->g_516.s0", print_hash_value);
    transparent_crc(p_682->g_516.s1, "p_682->g_516.s1", print_hash_value);
    transparent_crc(p_682->g_516.s2, "p_682->g_516.s2", print_hash_value);
    transparent_crc(p_682->g_516.s3, "p_682->g_516.s3", print_hash_value);
    transparent_crc(p_682->g_516.s4, "p_682->g_516.s4", print_hash_value);
    transparent_crc(p_682->g_516.s5, "p_682->g_516.s5", print_hash_value);
    transparent_crc(p_682->g_516.s6, "p_682->g_516.s6", print_hash_value);
    transparent_crc(p_682->g_516.s7, "p_682->g_516.s7", print_hash_value);
    transparent_crc(p_682->g_516.s8, "p_682->g_516.s8", print_hash_value);
    transparent_crc(p_682->g_516.s9, "p_682->g_516.s9", print_hash_value);
    transparent_crc(p_682->g_516.sa, "p_682->g_516.sa", print_hash_value);
    transparent_crc(p_682->g_516.sb, "p_682->g_516.sb", print_hash_value);
    transparent_crc(p_682->g_516.sc, "p_682->g_516.sc", print_hash_value);
    transparent_crc(p_682->g_516.sd, "p_682->g_516.sd", print_hash_value);
    transparent_crc(p_682->g_516.se, "p_682->g_516.se", print_hash_value);
    transparent_crc(p_682->g_516.sf, "p_682->g_516.sf", print_hash_value);
    transparent_crc(p_682->g_532.f0, "p_682->g_532.f0", print_hash_value);
    transparent_crc(p_682->g_532.f1, "p_682->g_532.f1", print_hash_value);
    transparent_crc(p_682->g_532.f2, "p_682->g_532.f2", print_hash_value);
    transparent_crc(p_682->g_532.f3, "p_682->g_532.f3", print_hash_value);
    transparent_crc(p_682->g_532.f4, "p_682->g_532.f4", print_hash_value);
    transparent_crc(p_682->g_532.f5, "p_682->g_532.f5", print_hash_value);
    transparent_crc(p_682->g_532.f6, "p_682->g_532.f6", print_hash_value);
    transparent_crc(p_682->g_532.f7, "p_682->g_532.f7", print_hash_value);
    transparent_crc(p_682->g_588.s0, "p_682->g_588.s0", print_hash_value);
    transparent_crc(p_682->g_588.s1, "p_682->g_588.s1", print_hash_value);
    transparent_crc(p_682->g_588.s2, "p_682->g_588.s2", print_hash_value);
    transparent_crc(p_682->g_588.s3, "p_682->g_588.s3", print_hash_value);
    transparent_crc(p_682->g_588.s4, "p_682->g_588.s4", print_hash_value);
    transparent_crc(p_682->g_588.s5, "p_682->g_588.s5", print_hash_value);
    transparent_crc(p_682->g_588.s6, "p_682->g_588.s6", print_hash_value);
    transparent_crc(p_682->g_588.s7, "p_682->g_588.s7", print_hash_value);
    transparent_crc(p_682->g_588.s8, "p_682->g_588.s8", print_hash_value);
    transparent_crc(p_682->g_588.s9, "p_682->g_588.s9", print_hash_value);
    transparent_crc(p_682->g_588.sa, "p_682->g_588.sa", print_hash_value);
    transparent_crc(p_682->g_588.sb, "p_682->g_588.sb", print_hash_value);
    transparent_crc(p_682->g_588.sc, "p_682->g_588.sc", print_hash_value);
    transparent_crc(p_682->g_588.sd, "p_682->g_588.sd", print_hash_value);
    transparent_crc(p_682->g_588.se, "p_682->g_588.se", print_hash_value);
    transparent_crc(p_682->g_588.sf, "p_682->g_588.sf", print_hash_value);
    transparent_crc(p_682->g_681, "p_682->g_681", print_hash_value);
    transparent_crc(p_682->v_collective, "p_682->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 24; i++)
            transparent_crc(p_682->g_special_values[i + 24 * get_linear_group_id()], "p_682->g_special_values[i + 24 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_682->l_comm_values[get_linear_local_id()], "p_682->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_682->g_comm_values[get_linear_group_id() * 86 + get_linear_local_id()], "p_682->g_comm_values[get_linear_group_id() * 86 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
