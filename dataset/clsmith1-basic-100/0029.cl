// ---fake_divergence -g 51,48,4 -l 3,8,1
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


// Seed: 29

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
   volatile int16_t  f1;
   int8_t * f2;
};

struct S1 {
    int32_t g_2;
    volatile int32_t g_5;
    int32_t g_6[2];
    int8_t g_17;
    uint32_t g_66;
    uint64_t g_113;
    uint8_t g_115[8];
    int8_t g_117;
    int8_t *g_122;
    int8_t **g_121;
    int8_t g_134;
    uint16_t g_144[1];
    int32_t g_147[9];
    int16_t g_149;
    int16_t g_158;
    uint32_t g_159;
    int32_t g_184;
    int64_t g_221[8];
    int64_t *g_220;
    uint32_t g_276;
    uint16_t g_277;
    uint32_t g_279;
    int32_t * volatile g_333[4];
    int32_t * volatile *g_332;
    uint64_t g_352;
    uint64_t g_377;
    volatile uint16_t *g_379;
    volatile uint16_t **g_378;
    int32_t g_407[4][3];
    int32_t * volatile g_463;
    int32_t * volatile g_498[4][10][4];
    union U0 g_512;
    int16_t *g_561;
    uint16_t *g_596;
    uint16_t **g_595;
    union U0 g_608;
    uint8_t g_638;
    int64_t g_732;
    int32_t * volatile g_753;
    int32_t g_797;
    int64_t g_859[1];
    int32_t * volatile g_863;
    volatile uint32_t g_891;
    uint64_t *g_898[3];
    uint64_t **g_897;
    uint32_t g_948;
    uint8_t *g_951;
    int32_t * volatile g_1057[4][4];
    int8_t *** volatile g_1063;
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
uint8_t  func_1(struct S1 * p_1078);
int8_t ** func_9(int8_t ** p_10, int8_t * p_11, int8_t * p_12, int8_t ** p_13, int8_t * p_14, struct S1 * p_1078);
int8_t ** func_18(int32_t  p_19, int64_t  p_20, int8_t ** p_21, struct S1 * p_1078);
int8_t  func_29(int8_t * p_30, int32_t  p_31, struct S1 * p_1078);
int8_t * func_32(uint16_t  p_33, int8_t ** p_34, uint32_t  p_35, struct S1 * p_1078);
int8_t ** func_37(int64_t  p_38, int8_t ** p_39, int16_t  p_40, int8_t ** p_41, uint64_t  p_42, struct S1 * p_1078);
int8_t ** func_44(int32_t  p_45, uint32_t  p_46, struct S1 * p_1078);
uint32_t  func_51(int32_t  p_52, int8_t * p_53, struct S1 * p_1078);
int8_t  func_61(uint32_t  p_62, int8_t * p_63, int8_t ** p_64, struct S1 * p_1078);
int64_t  func_75(uint32_t  p_76, int64_t  p_77, int32_t  p_78, struct S1 * p_1078);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1078->g_2 p_1078->g_6 p_1078->g_951 p_1078->g_115
 * writes: p_1078->g_2 p_1078->g_6
 */
uint8_t  func_1(struct S1 * p_1078)
{ /* block id: 4 */
    int64_t l_43 = 0x32F67AB6CE1A812CL;
    int8_t **l_458 = &p_1078->g_122;
    int32_t *l_1071[8];
    uint8_t l_1072 = 0x1EL;
    uint32_t l_1075[4] = {0x53D3FA83L,0x53D3FA83L,0x53D3FA83L,0x53D3FA83L};
    int i;
    for (i = 0; i < 8; i++)
        l_1071[i] = &p_1078->g_147[7];
    for (p_1078->g_2 = 15; (p_1078->g_2 > (-20)); --p_1078->g_2)
    { /* block id: 7 */
        int8_t *l_16 = &p_1078->g_17;
        int8_t **l_15 = &l_16;
        int32_t l_54 = 1L;
        for (p_1078->g_6[0] = 0; (p_1078->g_6[0] <= 24); p_1078->g_6[0] = safe_add_func_uint64_t_u_u(p_1078->g_6[0], 6))
        { /* block id: 10 */
            int8_t *l_26[8] = {&p_1078->g_17,&p_1078->g_17,&p_1078->g_17,&p_1078->g_17,&p_1078->g_17,&p_1078->g_17,&p_1078->g_17,&p_1078->g_17};
            int32_t l_36 = (-6L);
            int64_t l_449 = 0L;
            int8_t ***l_1062 = (void*)0;
            int32_t *l_1070 = &p_1078->g_147[5];
            int i;
            (1 + 1);
        }
        if (l_54)
            continue;
    }
    l_1072++;
    l_1075[3]--;
    return (*p_1078->g_951);
}


/* ------------------------------------------ */
/* 
 * reads : p_1078->g_117 p_1078->g_220 p_1078->g_2 p_1078->g_147 p_1078->g_512 p_1078->g_149 p_1078->g_134 p_1078->g_115 p_1078->g_159 p_1078->g_277 p_1078->g_66 p_1078->g_221 p_1078->g_332 p_1078->g_333 p_1078->g_561 p_1078->g_17 p_1078->g_121 p_1078->g_122 p_1078->g_595 p_1078->g_144 p_1078->g_596 p_1078->g_6 p_1078->g_608 p_1078->g_638 p_1078->g_276 p_1078->g_407 p_1078->g_352 p_1078->g_184 p_1078->g_377 p_1078->g_732 p_1078->g_753 p_1078->g_512.f0 p_1078->g_797 p_1078->g_279
 * writes: p_1078->g_221 p_1078->g_149 p_1078->g_158 p_1078->g_377 p_1078->g_279 p_1078->g_17 p_1078->g_147 p_1078->g_117 p_1078->g_277 p_1078->g_333 p_1078->g_561 p_1078->g_276 p_1078->g_144 p_1078->g_115 p_1078->g_638 p_1078->g_220 p_1078->g_732 p_1078->g_184 p_1078->g_134 p_1078->g_407 p_1078->g_797
 */
int8_t ** func_9(int8_t ** p_10, int8_t * p_11, int8_t * p_12, int8_t ** p_13, int8_t * p_14, struct S1 * p_1078)
{ /* block id: 236 */
    uint8_t l_470[3];
    int16_t *l_488 = (void*)0;
    int16_t *l_489 = &p_1078->g_158;
    uint64_t *l_490 = &p_1078->g_377;
    int32_t l_491 = 0x02DE71B9L;
    uint32_t *l_609 = (void*)0;
    int32_t l_618 = 0x565BE516L;
    int32_t l_620 = 0x5FB658D1L;
    int32_t l_625 = 0L;
    int32_t l_629[5];
    int16_t l_632 = 0x4CDBL;
    uint8_t l_736[8][8][4] = {{{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L}},{{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L}},{{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L}},{{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L}},{{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L}},{{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L}},{{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L}},{{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L},{0x6AL,0x89L,0x34L,0xD4L}}};
    uint32_t l_785 = 0UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_470[i] = 0x6AL;
    for (i = 0; i < 5; i++)
        l_629[i] = 0x59E84379L;
lbl_1061:
    if (((l_491 |= (safe_rshift_func_int8_t_s_s(((((((safe_add_func_uint32_t_u_u((0L == ((((l_470[2] | (*p_14)) & (safe_rshift_func_uint16_t_u_s((safe_unary_minus_func_int16_t_s((((safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u((safe_mul_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1078->group_2_offset, get_group_id(2), 10), 7)), ((safe_mul_func_int16_t_s_s(0x6B3BL, l_470[2])) == (((safe_lshift_func_uint16_t_u_u((l_470[2] >= l_470[1]), 7)) ^ ((*l_490) = (safe_rshift_func_int16_t_s_s(((*l_489) = (l_470[1] < ((*p_1078->g_220) = l_470[2]))), 5)))) == l_470[2])))), l_470[0])), FAKE_DIVERGE(p_1078->group_0_offset, get_group_id(0), 10))) > l_470[2]) , l_470[2]))), p_1078->g_2))) | 0x1B8AF01FL) == l_470[2])), FAKE_DIVERGE(p_1078->local_0_offset, get_local_id(0), 10))) <= 1L) <= 4UL) , &l_470[0]) != (void*)0) == FAKE_DIVERGE(p_1078->group_0_offset, get_group_id(0), 10)), 2))) >= l_470[1]))
    { /* block id: 241 */
        uint8_t l_528 = 8UL;
        int32_t l_532 = 0x45C63B05L;
        uint16_t *l_556 = &p_1078->g_144[0];
        uint16_t **l_555 = &l_556;
        int32_t l_614 = 0L;
        int32_t l_616 = 0x5D224A54L;
        int8_t l_621[5];
        int32_t l_622 = 0x5CAF72B3L;
        int32_t l_624 = 0x79E083EEL;
        int32_t l_627 = 0x7639AA49L;
        int32_t l_631 = (-3L);
        int32_t l_633 = 0x05958FFBL;
        uint16_t l_699 = 0x29D2L;
        int64_t *l_731 = &p_1078->g_732;
        uint8_t *l_733 = (void*)0;
        uint8_t *l_734 = &l_470[2];
        int32_t l_735 = 0x2A8E2717L;
        int i;
        for (i = 0; i < 5; i++)
            l_621[i] = (-8L);
        for (p_1078->g_279 = (-22); (p_1078->g_279 <= 34); p_1078->g_279 = safe_add_func_int32_t_s_s(p_1078->g_279, 6))
        { /* block id: 244 */
            uint64_t l_518 = 0xBA0169575F7A6B63L;
            int32_t l_541 = 0x39C165C9L;
            int32_t l_568 = 0x7FBF652AL;
            int32_t l_601 = (-1L);
            int64_t l_619 = 0x1E05A38061F8DB03L;
            int32_t l_623 = (-1L);
            int32_t l_626 = 0x504154ADL;
            int32_t l_634 = 0x502FA595L;
            int32_t l_635 = 0L;
            int32_t l_636[7][10] = {{0x0EE5EBDFL,0x0A07B1BFL,3L,1L,0x11FA6542L,0x0EE5EBDFL,1L,0x64566C36L,1L,0x0EE5EBDFL},{0x0EE5EBDFL,0x0A07B1BFL,3L,1L,0x11FA6542L,0x0EE5EBDFL,1L,0x64566C36L,1L,0x0EE5EBDFL},{0x0EE5EBDFL,0x0A07B1BFL,3L,1L,0x11FA6542L,0x0EE5EBDFL,1L,0x64566C36L,1L,0x0EE5EBDFL},{0x0EE5EBDFL,0x0A07B1BFL,3L,1L,0x11FA6542L,0x0EE5EBDFL,1L,0x64566C36L,1L,0x0EE5EBDFL},{0x0EE5EBDFL,0x0A07B1BFL,3L,1L,0x11FA6542L,0x0EE5EBDFL,1L,0x64566C36L,1L,0x0EE5EBDFL},{0x0EE5EBDFL,0x0A07B1BFL,3L,1L,0x11FA6542L,0x0EE5EBDFL,1L,0x64566C36L,1L,0x0EE5EBDFL},{0x0EE5EBDFL,0x0A07B1BFL,3L,1L,0x11FA6542L,0x0EE5EBDFL,1L,0x64566C36L,1L,0x0EE5EBDFL}};
            int8_t *l_674 = &l_621[2];
            int64_t **l_689 = &p_1078->g_220;
            int i, j;
            for (p_1078->g_17 = 13; (p_1078->g_17 < 16); ++p_1078->g_17)
            { /* block id: 247 */
                for (p_1078->g_149 = 0; (p_1078->g_149 > 20); p_1078->g_149 = safe_add_func_uint64_t_u_u(p_1078->g_149, 8))
                { /* block id: 250 */
                    int32_t *l_499 = &p_1078->g_147[7];
                    (*l_499) |= (0x0960L ^ 5L);
                }
            }
            for (p_1078->g_377 = 22; (p_1078->g_377 == 35); p_1078->g_377 = safe_add_func_int64_t_s_s(p_1078->g_377, 4))
            { /* block id: 256 */
                int8_t l_530 = 2L;
                for (p_1078->g_17 = 10; (p_1078->g_17 == 4); p_1078->g_17 = safe_sub_func_uint16_t_u_u(p_1078->g_17, 1))
                { /* block id: 259 */
                    int16_t l_529[5][7][5] = {{{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL}},{{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL}},{{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL}},{{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL}},{{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL},{0x34C1L,0x767AL,0L,0L,0x767AL}}};
                    int i, j, k;
                    for (p_1078->g_149 = 2; (p_1078->g_149 >= 0); p_1078->g_149 -= 1)
                    { /* block id: 262 */
                        int32_t *l_531[9][5] = {{&p_1078->g_2,&l_491,(void*)0,&l_491,(void*)0},{&p_1078->g_2,&l_491,(void*)0,&l_491,(void*)0},{&p_1078->g_2,&l_491,(void*)0,&l_491,(void*)0},{&p_1078->g_2,&l_491,(void*)0,&l_491,(void*)0},{&p_1078->g_2,&l_491,(void*)0,&l_491,(void*)0},{&p_1078->g_2,&l_491,(void*)0,&l_491,(void*)0},{&p_1078->g_2,&l_491,(void*)0,&l_491,(void*)0},{&p_1078->g_2,&l_491,(void*)0,&l_491,(void*)0},{&p_1078->g_2,&l_491,(void*)0,&l_491,(void*)0}};
                        int i, j;
                        l_532 = (((((*p_1078->g_220) = (-1L)) != (safe_lshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_u((!(safe_add_func_int64_t_s_s(0x24C560F9536990EEL, (safe_sub_func_int8_t_s_s(((*p_14) = (p_1078->g_512 , l_470[p_1078->g_149])), (safe_mul_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((((((~(((safe_unary_minus_func_uint64_t_u(((l_470[p_1078->g_149] == (l_518 == (((safe_div_func_uint16_t_u_u(p_1078->g_134, (safe_lshift_func_int8_t_s_s(l_491, 2)))) , ((((safe_mod_func_uint16_t_u_u((safe_unary_minus_func_uint32_t_u((safe_rshift_func_int16_t_s_s((l_528 , l_528), 14)))), p_1078->g_115[2])) == l_470[1]) , l_528) && l_529[2][6][4])) , l_530))) , GROUP_DIVERGE(1, 1)))) < 0xAF414F750FEE3EE6L) , p_1078->g_159)) , l_518) , l_530) && 0xE54F2EAAL) != l_518), 7L)), p_1078->g_277))))))), p_1078->g_66)), 2))) < 0x4DB8AFC658189BB9L) | l_530);
                    }
                }
            }
            for (p_1078->g_17 = 0; (p_1078->g_17 >= (-29)); --p_1078->g_17)
            { /* block id: 271 */
                for (p_1078->g_277 = 0; (p_1078->g_277 <= 7); p_1078->g_277 += 1)
                { /* block id: 274 */
                    int i;
                    l_532 = (+p_1078->g_221[p_1078->g_277]);
                    (*p_1078->g_332) = (*p_1078->g_332);
                }
            }
            if (p_1078->g_66)
                goto lbl_1061;
            for (p_1078->g_377 = 0; (p_1078->g_377 > 39); p_1078->g_377 = safe_add_func_int32_t_s_s(p_1078->g_377, 1))
            { /* block id: 281 */
                int32_t *l_542[2];
                uint64_t l_545 = 0xFB91D7C27A7F2FD8L;
                uint16_t *l_546[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int16_t **l_562 = (void*)0;
                int16_t **l_563 = &l_489;
                int16_t **l_564 = &p_1078->g_561;
                uint32_t *l_567 = (void*)0;
                int64_t *l_569 = &p_1078->g_221[6];
                uint64_t l_572 = 8UL;
                int16_t l_637 = (-1L);
                int32_t l_676[10][10][2] = {{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}},{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}},{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}},{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}},{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}},{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}},{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}},{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}},{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}},{{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL},{0x7D343048L,0x106AAFFCL}}};
                uint16_t l_707 = 0xE050L;
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_542[i] = &p_1078->g_6[0];
                for (l_528 = 0; (l_528 <= 7); l_528 += 1)
                { /* block id: 284 */
                    uint32_t l_537[3][5][8] = {{{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL}},{{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL}},{{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL},{9UL,4294967286UL,0UL,0x94F168A3L,9UL,9UL,0x94F168A3L,3UL}}};
                    int i, j, k;
                    for (l_518 = 0; (l_518 <= 7); l_518 += 1)
                    { /* block id: 287 */
                        int32_t *l_540[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_540[i] = &p_1078->g_147[1];
                        --l_537[2][3][1];
                        l_541 ^= p_1078->g_221[l_528];
                        (*p_1078->g_332) = l_542[1];
                        if (l_532)
                            break;
                    }
                }
                if ((safe_lshift_func_uint16_t_u_s((l_541 = (p_1078->g_221[2] != l_545)), (safe_div_func_int32_t_s_s(((0x2BL >= p_1078->g_147[7]) <= (safe_rshift_func_uint16_t_u_u(((((safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), 10)) >= ((((((((((safe_sub_func_uint64_t_u_u(((((void*)0 != l_555) <= ((safe_div_func_int16_t_s_s((((l_568 = (safe_rshift_func_int8_t_s_u((((*l_564) = ((*l_563) = p_1078->g_561)) != (void*)0), (safe_rshift_func_int16_t_s_u(0x61A9L, 3))))) <= 0UL) < p_1078->g_17), l_491)) , l_470[2])) & l_470[2]), 0x527AA8007A9A22F5L)) , l_491) >= l_491) != l_470[2]) , 0x318ED640E809A776L) > 18446744073709551615UL) , 5UL) , l_568) , l_569) == &p_1078->g_221[5])) && l_568) >= 7UL), l_528))), l_528)))))
                { /* block id: 298 */
                    uint32_t *l_591 = &p_1078->g_279;
                    uint16_t **l_594 = (void*)0;
                    int32_t l_600 = 0x46BBEC59L;
                    int32_t l_612 = 0x79D4C1A3L;
                    int32_t l_613 = 0L;
                    int32_t l_615[9] = {0x68B63F47L,0x68B63F47L,0x68B63F47L,0x68B63F47L,0x68B63F47L,0x68B63F47L,0x68B63F47L,0x68B63F47L,0x68B63F47L};
                    int8_t l_628 = 1L;
                    int32_t l_630 = 0x629E39F0L;
                    int64_t **l_652[6] = {&l_569,&l_569,&l_569,&l_569,&l_569,&l_569};
                    uint8_t l_680 = 3UL;
                    int i;
                    if ((FAKE_DIVERGE(p_1078->global_0_offset, get_global_id(0), 10) ^ (safe_mod_func_int8_t_s_s((**p_1078->g_121), l_572))))
                    { /* block id: 299 */
                        uint32_t *l_597 = &p_1078->g_276;
                        int32_t *l_598 = (void*)0;
                        int32_t l_599 = 0x28C5E349L;
                        uint8_t *l_610 = &l_470[2];
                        uint8_t *l_611 = &p_1078->g_115[2];
                        int32_t l_617[5] = {0x386883DBL,0x386883DBL,0x386883DBL,0x386883DBL,0x386883DBL};
                        int i;
                        l_601 |= ((1UL && (((**p_1078->g_595) = (safe_add_func_int32_t_s_s(((((&l_546[0] == (void*)0) & ((safe_mul_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((safe_add_func_uint32_t_u_u((((((l_541 = (safe_sub_func_int16_t_s_s((l_568 |= ((safe_mod_func_int16_t_s_s((safe_mod_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((*l_597) = ((safe_mod_func_uint64_t_u_u((((((l_591 != ((GROUP_DIVERGE(1, 1) , l_532) , (void*)0)) , (safe_lshift_func_int8_t_s_u(((l_594 != (l_555 = p_1078->g_595)) ^ (*p_1078->g_561)), l_470[2]))) || 8UL) || l_532) & 0x55C8E033L), 3L)) == l_532)), 0xB1564275L)), l_470[2])), (*p_1078->g_561))) || 0x73L)), l_528))) , l_599) < 1UL) >= l_600) ^ l_518), l_470[2])) , l_600))), l_470[2])) < (*p_1078->g_561))) , (void*)0) != &p_1078->g_158), p_1078->g_144[0]))) & l_599)) >= (-4L));
                        (*p_1078->g_332) = (((p_1078->g_6[1] | 0x4C94AEF8L) , (safe_mul_func_uint8_t_u_u((((*p_1078->g_596) >= (((*l_611) |= ((*l_610) = (((((&l_546[0] == ((p_1078->g_6[1] == (safe_lshift_func_int16_t_s_s((((safe_mod_func_int8_t_s_s((*p_11), (p_1078->g_608 , l_568))) & 0x520063B2L) , l_470[0]), l_599))) , &l_546[0])) , l_532) > l_470[2]) , l_609) != (void*)0))) || 0x49L)) || 246UL), l_601))) , &l_491);
                        --p_1078->g_638;
                        if (l_635)
                            break;
                    }
                    else
                    { /* block id: 311 */
                        int64_t *l_646[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int64_t **l_647 = &l_646[1];
                        int64_t **l_651[10][6][4] = {{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}},{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}},{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}},{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}},{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}},{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}},{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}},{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}},{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}},{{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569},{&l_569,&l_569,&l_569,&l_569}}};
                        int64_t ***l_650 = &l_651[8][1][1];
                        uint32_t *l_655 = (void*)0;
                        uint32_t *l_656 = &p_1078->g_276;
                        int32_t l_657 = 0x4BEA4D65L;
                        int i, j, k;
                        l_620 |= l_622;
                        l_657 = (l_568 > (safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u(l_615[6])), ((*l_556) = (safe_lshift_func_uint8_t_u_u(((((l_491 = (+((p_1078->g_220 = (l_616 , &p_1078->g_221[1])) != ((*l_647) = l_646[0])))) > ((safe_sub_func_int64_t_s_s((((*l_650) = &l_569) != l_652[2]), (((**p_1078->g_121) = (**p_13)) | ((safe_mod_func_int8_t_s_s((((*l_656) |= ((~p_1078->g_115[6]) || l_629[3])) || 0UL), p_1078->g_2)) && p_1078->g_2)))) , l_623)) == 0L) & l_636[5][2]), l_623))))));
                    }
                    for (l_616 = 0; (l_616 == (-8)); l_616--)
                    { /* block id: 324 */
                        int32_t l_675 = 0x4DEDB64BL;
                        int32_t l_677 = 0x2F2E6A75L;
                        int32_t l_678 = 1L;
                        int32_t l_679 = 0x293CB963L;
                        int64_t ***l_690 = &l_689;
                        int16_t *l_696 = &l_632;
                        l_636[5][2] = (((((*p_1078->g_220) = (-1L)) & (safe_mul_func_int16_t_s_s(((((**p_1078->g_121) < (safe_lshift_func_int8_t_s_u((safe_mod_func_uint64_t_u_u(((**p_1078->g_595) == (4294967295UL & ((l_631 = l_470[1]) > p_1078->g_147[5]))), 7L)), (safe_div_func_int64_t_s_s((~(safe_mul_func_int8_t_s_s((safe_mod_func_int16_t_s_s((((safe_mod_func_uint32_t_u_u(((GROUP_DIVERGE(1, 1) || 0x3CB670C03157A591L) ^ (((&l_628 != l_674) && l_636[5][6]) && 0x4EL)), (-3L))) != 0xC7L) == l_675), 0x44C3L)), 0UL))), l_528))))) != l_676[3][5][0]) , l_621[2]), l_630))) | l_532) >= l_615[6]);
                        l_680--;
                        l_627 ^= (((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(((*l_674) = (safe_add_func_uint64_t_u_u((0xFFFEBE04L && (l_633 = ((FAKE_DIVERGE(p_1078->global_0_offset, get_global_id(0), 10) || (65530UL <= (((*l_690) = l_689) == ((((safe_unary_minus_func_int16_t_s(0x0D1AL)) , (safe_rshift_func_uint8_t_u_s(((!(~(((((*p_11) ^= ((safe_div_func_uint16_t_u_u((((*l_696) = ((*p_1078->g_561) = ((l_594 == l_594) ^ (*p_1078->g_561)))) , FAKE_DIVERGE(p_1078->global_2_offset, get_global_id(2), 10)), (((((safe_rshift_func_int16_t_s_s(1L, 14)) || ((*l_569) = (*p_1078->g_220))) && 7L) <= 0x46D75F32L) & l_677))) != l_470[0])) ^ l_620) || 4294967294UL) , p_1078->g_407[3][1]))) <= l_470[2]), 0))) != l_623) , &p_1078->g_220)))) < l_615[6]))), l_631))), 4)), l_532)) <= 0L) , l_470[2]);
                    }
                    return &p_1078->g_122;
                }
                else
                { /* block id: 339 */
                    uint32_t l_700 = 0x0AB180B8L;
                    l_700 |= l_699;
                    (*p_1078->g_332) = (*p_1078->g_332);
                    l_618 = (l_568 &= (l_541 ^ (((7L ^ ((safe_div_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_u((18446744073709551611UL ^ l_700), 0)) & (((*p_1078->g_220) |= (l_601 ^ (((0L || ((((*p_11) , ((safe_lshift_func_uint8_t_u_u(((-9L) != FAKE_DIVERGE(p_1078->group_1_offset, get_group_id(1), 10)), 1)) >= ((void*)0 != &l_627))) <= l_601) <= 18446744073709551606UL)) , 0x2A2AL) , p_1078->g_352))) , l_707)), 0x83F0L)) | p_1078->g_184)) || 0x1A33B72AL) | 4294967286UL)));
                }
                if (l_614)
                    continue;
            }
        }
        l_627 &= (((*p_11) = (l_624 = (l_699 <= (p_1078->g_638 = ((safe_mul_func_uint16_t_u_u((FAKE_DIVERGE(p_1078->global_2_offset, get_global_id(2), 10) ^ (&p_1078->g_279 == (p_1078->g_608 , l_609))), ((((safe_add_func_int32_t_s_s(((safe_sub_func_uint64_t_u_u(((*l_490) |= ((--p_1078->g_115[6]) | 0x04L)), (safe_div_func_int64_t_s_s((((safe_add_func_uint64_t_u_u(0x32C9943EF7742EF1L, (safe_div_func_int16_t_s_s(((safe_add_func_int32_t_s_s(((p_1078->g_149 | (safe_unary_minus_func_uint64_t_u(0xE421607EBD0EE2B5L))) <= (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1078->group_2_offset, get_group_id(2), 10), (l_625 = ((((safe_mul_func_uint8_t_u_u(((*l_734) &= (((*l_731) ^= p_1078->g_144[0]) , 0xF5L)), 0x15L)) | l_624) == l_633) & l_621[2]))))), l_735)) ^ (*p_11)), 0x6D8BL)))) | FAKE_DIVERGE(p_1078->group_1_offset, get_group_id(1), 10)) , (*p_1078->g_220)), p_1078->g_149)))) == l_614), 0xFA897E18L)) , l_633) != 0x698560CFB4EE2917L) | 0x3EL))) >= p_1078->g_149))))) && l_736[5][0][1]);
    }
    else
    { /* block id: 358 */
        uint32_t l_739 = 0xC366BE9FL;
        int32_t l_746 = 0x14C62D1FL;
        int32_t l_747 = (-10L);
        uint32_t l_807 = 0xA2510304L;
        int8_t **l_839 = &p_1078->g_122;
        int32_t l_884 = 0x4E317927L;
        int32_t l_907 = 0x0A09DD87L;
        int32_t l_908 = (-1L);
        int32_t l_909 = 0x5DFC6288L;
        int32_t l_914 = (-1L);
        int32_t l_917 = 0x76DB24C8L;
        int32_t l_918[9][7][1] = {{{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L}},{{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L}},{{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L}},{{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L}},{{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L}},{{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L}},{{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L}},{{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L}},{{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L},{0x5AFA39C0L}}};
        uint8_t l_920 = 0x08L;
        uint64_t **l_944 = &p_1078->g_898[1];
        int i, j, k;
        if ((safe_add_func_int32_t_s_s(l_739, (safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1078->local_1_offset, get_local_id(1), 10), 5)))))
        { /* block id: 359 */
            int32_t *l_742 = &l_629[2];
            int32_t *l_743 = &l_629[0];
            int32_t *l_744 = &p_1078->g_147[2];
            int32_t *l_745[1];
            uint64_t l_748 = 1UL;
            int i;
            for (i = 0; i < 1; i++)
                l_745[i] = &l_620;
            l_748--;
        }
        else
        { /* block id: 361 */
            for (p_1078->g_184 = (-17); (p_1078->g_184 <= (-5)); ++p_1078->g_184)
            { /* block id: 364 */
                int32_t *l_755[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_755[i] = &p_1078->g_147[7];
                (*p_1078->g_753) ^= l_632;
                (*p_1078->g_753) = (~(safe_unary_minus_func_int16_t_s(l_629[0])));
            }
            for (l_632 = (-26); (l_632 <= 21); l_632++)
            { /* block id: 370 */
                uint64_t l_774 = 18446744073709551613UL;
                for (p_1078->g_149 = (-6); (p_1078->g_149 <= 2); p_1078->g_149 = safe_add_func_int8_t_s_s(p_1078->g_149, 9))
                { /* block id: 373 */
                    uint8_t *l_762[9] = {&p_1078->g_638,&p_1078->g_638,&p_1078->g_638,&p_1078->g_638,&p_1078->g_638,&p_1078->g_638,&p_1078->g_638,&p_1078->g_638,&p_1078->g_638};
                    int64_t *l_769 = &p_1078->g_221[1];
                    uint32_t *l_770 = (void*)0;
                    uint32_t *l_771[7] = {&p_1078->g_159,(void*)0,&p_1078->g_159,&p_1078->g_159,(void*)0,&p_1078->g_159,&p_1078->g_159};
                    int32_t *l_775 = &l_746;
                    int i;
                    (*l_775) &= ((safe_rshift_func_uint8_t_u_u((l_618 = ((void*)0 == &p_1078->g_66)), (safe_rshift_func_uint16_t_u_u((**p_1078->g_595), 10)))) , ((safe_mod_func_uint8_t_u_u((p_1078->g_6[1] & (l_769 != ((l_739 & (l_629[1] = p_1078->g_512.f0)) , &p_1078->g_221[6]))), (safe_sub_func_uint8_t_u_u((l_774 = 0x82L), (*p_14))))) | p_1078->g_6[1]));
                }
            }
        }
        for (l_632 = 0; (l_632 >= 8); l_632 = safe_add_func_int64_t_s_s(l_632, 1))
        { /* block id: 383 */
            int16_t *l_784 = (void*)0;
            int32_t l_788 = 0x22217A1BL;
            uint64_t l_794 = 9UL;
            int8_t **l_810 = (void*)0;
            int64_t **l_836 = &p_1078->g_220;
            int64_t ***l_835 = &l_836;
            int32_t l_885 = 0L;
            int32_t l_887 = 1L;
            int32_t l_888 = (-6L);
            int32_t l_889 = 9L;
            int32_t l_912[10][3] = {{0x2247F706L,0x44AD2D50L,5L},{0x2247F706L,0x44AD2D50L,5L},{0x2247F706L,0x44AD2D50L,5L},{0x2247F706L,0x44AD2D50L,5L},{0x2247F706L,0x44AD2D50L,5L},{0x2247F706L,0x44AD2D50L,5L},{0x2247F706L,0x44AD2D50L,5L},{0x2247F706L,0x44AD2D50L,5L},{0x2247F706L,0x44AD2D50L,5L},{0x2247F706L,0x44AD2D50L,5L}};
            int32_t ***l_954 = (void*)0;
            int16_t l_978 = 0x75E5L;
            int i, j;
            for (p_1078->g_134 = 0; (p_1078->g_134 != (-7)); --p_1078->g_134)
            { /* block id: 386 */
                uint8_t l_793 = 1UL;
                int32_t *l_795 = &p_1078->g_407[1][0];
                int32_t *l_796[9][5][3] = {{{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797}},{{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797}},{{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797}},{{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797}},{{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797}},{{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797}},{{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797}},{{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797}},{{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797},{&p_1078->g_797,&p_1078->g_797,&p_1078->g_797}}};
                int16_t **l_798 = (void*)0;
                int16_t **l_799 = &p_1078->g_561;
                int32_t *l_800 = &l_620;
                int32_t **l_801 = (void*)0;
                int32_t **l_802 = &l_796[8][3][2];
                int32_t *l_815[4][5] = {{&p_1078->g_6[0],&l_788,&l_629[2],&l_788,&p_1078->g_6[0]},{&p_1078->g_6[0],&l_788,&l_629[2],&l_788,&p_1078->g_6[0]},{&p_1078->g_6[0],&l_788,&l_629[2],&l_788,&p_1078->g_6[0]},{&p_1078->g_6[0],&l_788,&l_629[2],&l_788,&p_1078->g_6[0]}};
                int i, j, k;
                (*l_800) = (((((safe_add_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((l_746 , (l_784 == (void*)0)), 0xBDL)), l_785)) && (((safe_sub_func_int32_t_s_s(((l_788 , (l_746 != (l_784 == ((*l_799) = ((p_1078->g_797 &= (l_747 = ((*l_795) = (safe_rshift_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((((l_793 >= p_1078->g_512.f0) , l_747) | l_794), (-1L))), (*p_1078->g_596)))))) , (void*)0))))) , (*p_1078->g_753)), 6L)) , l_736[5][0][1]) < l_788)) || (*p_1078->g_220)) , (-1L)) == (*p_1078->g_596));
                (*l_800) ^= (l_609 == ((*l_802) = (void*)0));
                (*p_1078->g_332) = &l_788;
                l_747 |= ((safe_div_func_uint8_t_u_u(0UL, (-1L))) > ((((safe_lshift_func_uint16_t_u_s((*l_800), 4)) < l_807) ^ ((safe_add_func_int8_t_s_s((&p_14 != l_810), 1UL)) & 0x5C5BA4B734B081F3L)) <= (safe_lshift_func_int16_t_s_s(((((safe_sub_func_uint16_t_u_u(((*l_800) <= 0x9984L), (-4L))) <= l_807) != l_794) & (-1L)), 2))));
            }
        }
    }
    return &p_1078->g_122;
}


/* ------------------------------------------ */
/* 
 * reads : p_1078->g_159 p_1078->g_122 p_1078->g_117 p_1078->g_332 p_1078->g_333
 * writes: p_1078->g_159 p_1078->g_333
 */
int8_t ** func_18(int32_t  p_19, int64_t  p_20, int8_t ** p_21, struct S1 * p_1078)
{ /* block id: 227 */
    uint32_t l_465[4][6] = {{8UL,8UL,8UL,8UL,8UL,8UL},{8UL,8UL,8UL,8UL,8UL,8UL},{8UL,8UL,8UL,8UL,8UL,8UL},{8UL,8UL,8UL,8UL,8UL,8UL}};
    int i, j;
    for (p_1078->g_159 = 0; (p_1078->g_159 == 7); p_1078->g_159++)
    { /* block id: 230 */
        int32_t *l_464[8][9][3] = {{{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184}},{{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184}},{{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184}},{{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184}},{{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184}},{{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184}},{{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184}},{{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184},{&p_1078->g_184,&p_1078->g_184,&p_1078->g_184}}};
        int i, j, k;
        p_19 |= (safe_rshift_func_int8_t_s_u((*p_1078->g_122), 4));
    }
    (*p_1078->g_332) = (*p_1078->g_332);
    p_19 = l_465[0][4];
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_1078->g_121 p_1078->g_122 p_1078->g_117
 * writes:
 */
int8_t  func_29(int8_t * p_30, int32_t  p_31, struct S1 * p_1078)
{ /* block id: 224 */
    int32_t *l_450 = &p_1078->g_184;
    int32_t *l_451 = &p_1078->g_147[7];
    int32_t *l_452 = &p_1078->g_184;
    int32_t *l_453[9];
    int32_t l_454[5][1][3] = {{{0x2965550BL,0x2965550BL,(-3L)}},{{0x2965550BL,0x2965550BL,(-3L)}},{{0x2965550BL,0x2965550BL,(-3L)}},{{0x2965550BL,0x2965550BL,(-3L)}},{{0x2965550BL,0x2965550BL,(-3L)}}};
    uint32_t l_455 = 4294967290UL;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_453[i] = &p_1078->g_184;
    --l_455;
    return (**p_1078->g_121);
}


/* ------------------------------------------ */
/* 
 * reads : p_1078->g_66 p_1078->g_276 p_1078->g_332 p_1078->g_115 p_1078->g_17 p_1078->g_221 p_1078->g_147 p_1078->g_352 p_1078->g_6 p_1078->g_277 p_1078->g_121 p_1078->g_122 p_1078->g_134 p_1078->g_220 p_1078->g_149 p_1078->g_377 p_1078->g_378 p_1078->g_279 p_1078->g_407 p_1078->g_117 p_1078->g_158
 * writes: p_1078->g_276 p_1078->g_147 p_1078->g_277 p_1078->g_134 p_1078->g_117 p_1078->g_221 p_1078->g_159 p_1078->g_149 p_1078->g_377 p_1078->g_352 p_1078->g_184 p_1078->g_158 p_1078->g_115 p_1078->g_66
 */
int8_t * func_32(uint16_t  p_33, int8_t ** p_34, uint32_t  p_35, struct S1 * p_1078)
{ /* block id: 131 */
    int32_t *l_323 = (void*)0;
    uint16_t *l_349 = &p_1078->g_144[0];
    int32_t *l_406[7][7] = {{&p_1078->g_407[3][2],(void*)0,&p_1078->g_407[0][0],(void*)0,&p_1078->g_407[3][2],&p_1078->g_407[3][2],(void*)0},{&p_1078->g_407[3][2],(void*)0,&p_1078->g_407[0][0],(void*)0,&p_1078->g_407[3][2],&p_1078->g_407[3][2],(void*)0},{&p_1078->g_407[3][2],(void*)0,&p_1078->g_407[0][0],(void*)0,&p_1078->g_407[3][2],&p_1078->g_407[3][2],(void*)0},{&p_1078->g_407[3][2],(void*)0,&p_1078->g_407[0][0],(void*)0,&p_1078->g_407[3][2],&p_1078->g_407[3][2],(void*)0},{&p_1078->g_407[3][2],(void*)0,&p_1078->g_407[0][0],(void*)0,&p_1078->g_407[3][2],&p_1078->g_407[3][2],(void*)0},{&p_1078->g_407[3][2],(void*)0,&p_1078->g_407[0][0],(void*)0,&p_1078->g_407[3][2],&p_1078->g_407[3][2],(void*)0},{&p_1078->g_407[3][2],(void*)0,&p_1078->g_407[0][0],(void*)0,&p_1078->g_407[3][2],&p_1078->g_407[3][2],(void*)0}};
    int32_t l_441 = 0x29A63ED7L;
    int64_t l_442 = 0L;
    int32_t l_443 = 0x5D1C22FAL;
    int32_t l_444 = (-3L);
    int32_t l_445 = 0x64149788L;
    int i, j;
lbl_361:
    l_323 = &p_1078->g_147[5];
    if (p_1078->g_66)
    { /* block id: 133 */
        int32_t *l_324 = &p_1078->g_184;
        l_324 = l_323;
        for (p_1078->g_276 = 0; (p_1078->g_276 <= 8); p_1078->g_276 += 1)
        { /* block id: 137 */
            int8_t *l_325[7][3] = {{&p_1078->g_17,&p_1078->g_117,&p_1078->g_17},{&p_1078->g_17,&p_1078->g_117,&p_1078->g_17},{&p_1078->g_17,&p_1078->g_117,&p_1078->g_17},{&p_1078->g_17,&p_1078->g_117,&p_1078->g_17},{&p_1078->g_17,&p_1078->g_117,&p_1078->g_17},{&p_1078->g_17,&p_1078->g_117,&p_1078->g_17},{&p_1078->g_17,&p_1078->g_117,&p_1078->g_17}};
            int i, j;
            return l_325[1][0];
        }
    }
    else
    { /* block id: 140 */
        uint64_t l_328 = 1UL;
        int32_t **l_331[1][4];
        uint32_t *l_350 = (void*)0;
        int8_t *l_376 = &p_1078->g_17;
        uint8_t l_418 = 255UL;
        uint32_t l_446 = 0UL;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 4; j++)
                l_331[i][j] = &l_323;
        }
        if ((((void*)0 == p_34) == ((safe_sub_func_int16_t_s_s(l_328, ((safe_div_func_uint8_t_u_u((p_33 || (l_331[0][3] == p_1078->g_332)), (safe_mul_func_uint8_t_u_u(p_33, ((safe_add_func_uint16_t_u_u(((p_1078->g_115[2] , (-1L)) || 0UL), p_1078->g_17)) ^ 252UL))))) | GROUP_DIVERGE(0, 1)))) <= p_33)))
        { /* block id: 141 */
            int64_t l_338[3][6][2] = {{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}}};
            int32_t *l_339 = &p_1078->g_2;
            int i, j, k;
            (*l_323) = l_338[1][5][0];
            l_323 = l_339;
        }
        else
        { /* block id: 144 */
            int32_t l_346[10] = {0x52468624L,0x48E5519FL,0x23FB4920L,0x48E5519FL,0x52468624L,0x52468624L,0x48E5519FL,0x23FB4920L,0x48E5519FL,0x52468624L};
            uint16_t *l_348 = &p_1078->g_144[0];
            uint16_t **l_347 = &l_348;
            int32_t l_351[5][10][5] = {{{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L}},{{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L}},{{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L}},{{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L}},{{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L},{0x68C82B81L,0x6500268CL,(-10L),0x701088FBL,0x0775A861L}}};
            int32_t *l_353 = &l_346[2];
            uint8_t *l_354 = &p_1078->g_115[2];
            int32_t l_367 = (-3L);
            int32_t l_398 = 0x20725981L;
            uint32_t l_419 = 0xC1B42A29L;
            int i, j, k;
            if ((+(safe_mod_func_int64_t_s_s(((!(safe_mod_func_int8_t_s_s((-1L), (((*l_353) = (p_1078->g_221[1] , (safe_sub_func_uint8_t_u_u(((*l_323) != ((((l_346[2] | (((l_351[2][6][2] = ((((((((&l_323 != l_331[0][3]) , GROUP_DIVERGE(1, 1)) & ((((((*l_347) = (void*)0) == l_349) , l_323) != &p_1078->g_66) , 4294967295UL)) | p_35) || 0x0E91931BL) != (-1L)) , l_350) == l_323)) == p_1078->g_352) <= p_1078->g_6[0])) <= 0xFDL) | p_1078->g_277) & p_1078->g_276)), l_346[2])))) , GROUP_DIVERGE(1, 1))))) , 0x49921F2D102B0D34L), 0x61749142D2C3E7B2L))))
            { /* block id: 148 */
                uint8_t l_357 = 8UL;
                if (((((void*)0 == l_354) == 0x83L) < (safe_rshift_func_int8_t_s_s(l_357, 3))))
                { /* block id: 149 */
                    return (*p_1078->g_121);
                }
                else
                { /* block id: 151 */
                    uint8_t l_360 = 1UL;
                    int32_t *l_362 = &p_1078->g_147[1];
                    uint8_t l_369 = 2UL;
                    for (p_1078->g_277 = 0; (p_1078->g_277 <= 6); p_1078->g_277++)
                    { /* block id: 154 */
                        l_360 ^= ((*l_323) = p_33);
                        if (p_1078->g_277)
                            goto lbl_361;
                        l_362 = &p_1078->g_6[0];
                    }
                    for (p_1078->g_134 = 0; (p_1078->g_134 != 26); p_1078->g_134 = safe_add_func_uint64_t_u_u(p_1078->g_134, 9))
                    { /* block id: 162 */
                        int64_t **l_368[3][9] = {{(void*)0,&p_1078->g_220,&p_1078->g_220,&p_1078->g_220,(void*)0,(void*)0,&p_1078->g_220,&p_1078->g_220,&p_1078->g_220},{(void*)0,&p_1078->g_220,&p_1078->g_220,&p_1078->g_220,(void*)0,(void*)0,&p_1078->g_220,&p_1078->g_220,&p_1078->g_220},{(void*)0,&p_1078->g_220,&p_1078->g_220,&p_1078->g_220,(void*)0,(void*)0,&p_1078->g_220,&p_1078->g_220,&p_1078->g_220}};
                        uint32_t *l_372 = (void*)0;
                        uint32_t *l_373 = (void*)0;
                        uint32_t *l_374 = (void*)0;
                        uint32_t *l_375[5][4][10] = {{{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276}},{{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276}},{{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276}},{{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276}},{{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276},{&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_276,&p_1078->g_276}}};
                        int i, j, k;
                        p_1078->g_147[6] = ((p_1078->g_115[2] , (((p_35 , (safe_lshift_func_int8_t_s_u(((**p_1078->g_121) = (l_367 && 6L)), (l_368[2][1] == (void*)0)))) > (p_1078->g_159 = (((*p_1078->g_220) = (*p_1078->g_220)) >= (l_369 == (safe_div_func_int64_t_s_s((p_33 >= l_346[9]), 0x174723FC1B60DAF1L)))))) || p_33)) < p_35);
                        l_351[2][6][2] ^= (*l_362);
                        if (l_357)
                            continue;
                    }
                }
                for (p_1078->g_149 = 0; (p_1078->g_149 >= 0); p_1078->g_149 -= 1)
                { /* block id: 173 */
                    return l_376;
                }
                p_1078->g_377 &= 0x0835F2B4L;
            }
            else
            { /* block id: 177 */
                (*l_323) &= ((void*)0 == p_1078->g_378);
            }
            for (p_1078->g_277 = (-8); (p_1078->g_277 >= 49); p_1078->g_277++)
            { /* block id: 182 */
                int64_t l_384[2];
                int32_t l_385 = 0x0ED23CC1L;
                uint64_t *l_397 = &p_1078->g_352;
                int32_t **l_405[4];
                int16_t *l_420 = &p_1078->g_158;
                int16_t *l_421 = &p_1078->g_149;
                uint64_t l_440 = 1UL;
                int i;
                for (i = 0; i < 2; i++)
                    l_384[i] = 0x7F3A9094DB9DBF06L;
                for (i = 0; i < 4; i++)
                    l_405[i] = &l_353;
                for (p_1078->g_134 = (-6); (p_1078->g_134 <= (-2)); p_1078->g_134++)
                { /* block id: 185 */
                    uint32_t l_388 = 0x1BA145CBL;
                    l_385 = ((*l_323) = l_384[1]);
                    for (p_1078->g_117 = (-20); (p_1078->g_117 > 26); p_1078->g_117 = safe_add_func_int32_t_s_s(p_1078->g_117, 2))
                    { /* block id: 190 */
                        (*l_323) = l_388;
                        if (l_346[2])
                            break;
                    }
                }
                l_385 = (!(l_351[2][6][2] ^= (safe_lshift_func_int8_t_s_u((p_35 == (safe_div_func_uint8_t_u_u(((*l_354) = (safe_sub_func_int16_t_s_s(((*l_421) = ((*l_420) ^= (safe_sub_func_uint64_t_u_u(((*l_397) = p_35), ((l_367 = ((p_1078->g_184 = ((*l_323) &= l_398)) , (((safe_lshift_func_uint8_t_u_u(((((safe_lshift_func_uint8_t_u_s((safe_mod_func_int32_t_s_s(((((l_406[1][1] = l_323) != (void*)0) != (((*p_1078->g_122) = (((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u((((((p_1078->g_149 ^ (((((safe_sub_func_int64_t_s_s(p_35, ((safe_lshift_func_int16_t_s_s(((safe_sub_func_uint8_t_u_u(l_418, (((p_1078->g_279 >= p_33) < 0L) > p_1078->g_6[0]))) , p_1078->g_407[1][0]), p_1078->g_17)) || p_1078->g_147[5]))) < l_419) && (-7L)) || (**p_1078->g_121)) || 0x8552L)) , p_35) , &l_351[4][9][2]) != &p_1078->g_2) != 1L), p_1078->g_407[0][0])) & 1UL), 2)) , &l_385) != l_323)) && (-1L))) , p_33), l_384[1])), l_346[2])) & (-1L)) & l_346[2]) <= FAKE_DIVERGE(p_1078->local_1_offset, get_local_id(1), 10)), 2)) && p_33) & p_33))) < 0x4DC9F047L))))), 0x7FA0L))), p_35))), 2))));
                if (p_1078->g_6[0])
                    continue;
                for (p_1078->g_66 = 0; (p_1078->g_66 > 34); p_1078->g_66 = safe_add_func_uint16_t_u_u(p_1078->g_66, 8))
                { /* block id: 209 */
                    uint8_t *l_432 = (void*)0;
                    uint8_t *l_433 = &l_418;
                    int32_t l_436[2];
                    int64_t *l_439 = &l_384[1];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_436[i] = (-1L);
                    l_351[2][6][2] &= (safe_lshift_func_int8_t_s_s((((safe_rshift_func_int8_t_s_s((safe_add_func_int16_t_s_s(p_1078->g_115[4], ((*l_420) |= (safe_mod_func_uint8_t_u_u(((*l_433) = l_367), (safe_div_func_int32_t_s_s(9L, l_436[1]))))))), ((FAKE_DIVERGE(p_1078->group_0_offset, get_group_id(0), 10) & ((*l_439) = ((*p_1078->g_220) = (p_1078->g_66 , (safe_add_func_uint64_t_u_u(p_1078->g_279, GROUP_DIVERGE(2, 1))))))) && 1L))) , (((l_323 != (void*)0) , 0x60DEAD5DL) <= p_33)) , (**p_1078->g_121)), 1));
                    (*l_323) ^= (l_385 &= l_440);
                    if (l_385)
                        break;
                }
            }
        }
        ++l_446;
    }
    return (*p_1078->g_121);
}


/* ------------------------------------------ */
/* 
 * reads : p_1078->g_121 p_1078->g_122 p_1078->g_117 p_1078->g_134 p_1078->g_2 p_1078->g_149 p_1078->g_6 p_1078->g_159 p_1078->g_147 p_1078->g_184 p_1078->g_115 p_1078->g_144 p_1078->g_158 p_1078->g_113 p_1078->g_220 p_1078->g_17
 * writes: p_1078->g_134 p_1078->g_144 p_1078->g_147 p_1078->g_149 p_1078->g_158 p_1078->g_159 p_1078->g_184 p_1078->g_113 p_1078->g_220
 */
int8_t ** func_37(int64_t  p_38, int8_t ** p_39, int16_t  p_40, int8_t ** p_41, uint64_t  p_42, struct S1 * p_1078)
{ /* block id: 41 */
    int32_t *l_124 = &p_1078->g_2;
    int32_t **l_123 = &l_124;
    int8_t *l_133 = &p_1078->g_134;
    uint16_t *l_143 = &p_1078->g_144[0];
    int32_t *l_145 = (void*)0;
    int32_t *l_146 = &p_1078->g_147[7];
    uint8_t l_148 = 0UL;
    int64_t l_182 = 1L;
    uint16_t l_209 = 0xEF95L;
    int32_t l_242 = 9L;
    int32_t l_249 = (-1L);
    int16_t *l_289 = &p_1078->g_158;
    int32_t *l_307 = (void*)0;
    int32_t *l_308 = &p_1078->g_147[7];
    int32_t *l_309 = &p_1078->g_147[1];
    int32_t *l_310 = &l_249;
    int32_t *l_311 = (void*)0;
    int32_t *l_312 = &l_242;
    int32_t *l_313 = (void*)0;
    int32_t *l_314[2];
    int32_t l_315[3][8][6] = {{{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L}},{{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L}},{{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L},{0x2831BCBCL,(-1L),(-1L),0x36B35D52L,(-1L),0x36B35D52L}}};
    int64_t l_316 = 0x36DC97C7E432CE06L;
    int32_t l_317 = 0x65E74D5AL;
    int8_t l_318[9] = {0x02L,(-3L),0x02L,0x02L,(-3L),0x02L,0x02L,(-3L),0x02L};
    int32_t l_319 = 0x323782F2L;
    uint8_t l_320[9] = {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_314[i] = &p_1078->g_184;
    (*l_123) = &p_1078->g_2;
    if ((((safe_sub_func_int8_t_s_s((safe_add_func_uint64_t_u_u((p_42 < ((safe_lshift_func_int8_t_s_s(((*l_133) |= (**p_1078->g_121)), (**l_123))) >= (*p_1078->g_122))), ((safe_add_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(((**l_123) , FAKE_DIVERGE(p_1078->global_0_offset, get_global_id(0), 10)), (safe_div_func_uint8_t_u_u(((p_1078->g_149 &= (((safe_lshift_func_uint16_t_u_s(((*l_143) = FAKE_DIVERGE(p_1078->local_2_offset, get_local_id(2), 10)), 9)) ^ (((*l_146) = (-4L)) < (p_38 , (l_148 == ((p_40 | 0xCAE2L) && 0x7CE9L))))) , 0x5C9BE968L)) <= (**l_123)), p_42)))), (**p_1078->g_121))) != GROUP_DIVERGE(2, 1)))), (*p_1078->g_122))) ^ (**p_1078->g_121)) , p_1078->g_6[0]))
    { /* block id: 47 */
        int32_t l_208 = (-1L);
        int8_t **l_236 = &p_1078->g_122;
        int32_t l_239 = 0x5A566C47L;
        int32_t l_240 = 0x0010A5C6L;
        int32_t l_244 = 0x23A98893L;
        int32_t l_247 = 5L;
        uint32_t *l_290 = (void*)0;
        int32_t *l_304 = (void*)0;
        for (p_1078->g_149 = (-21); (p_1078->g_149 <= 26); p_1078->g_149 = safe_add_func_int32_t_s_s(p_1078->g_149, 8))
        { /* block id: 50 */
            uint64_t l_154 = 18446744073709551609UL;
            int16_t *l_157[3];
            int32_t l_210 = 1L;
            int64_t *l_226 = &l_182;
            int64_t **l_225 = &l_226;
            int32_t l_243[9][8] = {{0x539769A4L,0x539769A4L,0x57B9707EL,0x0213085CL,0x2116420DL,1L,0x50BEB1B7L,0x7AD4D3F9L},{0x539769A4L,0x539769A4L,0x57B9707EL,0x0213085CL,0x2116420DL,1L,0x50BEB1B7L,0x7AD4D3F9L},{0x539769A4L,0x539769A4L,0x57B9707EL,0x0213085CL,0x2116420DL,1L,0x50BEB1B7L,0x7AD4D3F9L},{0x539769A4L,0x539769A4L,0x57B9707EL,0x0213085CL,0x2116420DL,1L,0x50BEB1B7L,0x7AD4D3F9L},{0x539769A4L,0x539769A4L,0x57B9707EL,0x0213085CL,0x2116420DL,1L,0x50BEB1B7L,0x7AD4D3F9L},{0x539769A4L,0x539769A4L,0x57B9707EL,0x0213085CL,0x2116420DL,1L,0x50BEB1B7L,0x7AD4D3F9L},{0x539769A4L,0x539769A4L,0x57B9707EL,0x0213085CL,0x2116420DL,1L,0x50BEB1B7L,0x7AD4D3F9L},{0x539769A4L,0x539769A4L,0x57B9707EL,0x0213085CL,0x2116420DL,1L,0x50BEB1B7L,0x7AD4D3F9L},{0x539769A4L,0x539769A4L,0x57B9707EL,0x0213085CL,0x2116420DL,1L,0x50BEB1B7L,0x7AD4D3F9L}};
            int i, j;
            for (i = 0; i < 3; i++)
                l_157[i] = &p_1078->g_158;
            if ((safe_sub_func_uint16_t_u_u(l_154, (p_1078->g_159 |= ((0UL != (8UL >= (((*l_146) = ((*l_124) , 0x2CD8C260L)) | ((*l_123) != &p_1078->g_2)))) && ((p_1078->g_158 = (safe_rshift_func_int8_t_s_u((p_38 == (((p_38 == p_1078->g_134) | p_42) , l_154)), 3))) == GROUP_DIVERGE(1, 1)))))))
            { /* block id: 54 */
                int32_t l_162[5][1][8] = {{{0x524283DBL,0x7225D3E5L,0x7225D3E5L,0x524283DBL,(-1L),1L,1L,(-1L)}},{{0x524283DBL,0x7225D3E5L,0x7225D3E5L,0x524283DBL,(-1L),1L,1L,(-1L)}},{{0x524283DBL,0x7225D3E5L,0x7225D3E5L,0x524283DBL,(-1L),1L,1L,(-1L)}},{{0x524283DBL,0x7225D3E5L,0x7225D3E5L,0x524283DBL,(-1L),1L,1L,(-1L)}},{{0x524283DBL,0x7225D3E5L,0x7225D3E5L,0x524283DBL,(-1L),1L,1L,(-1L)}}};
                int32_t l_241 = (-1L);
                int32_t l_245 = 5L;
                int32_t l_246 = 1L;
                int32_t l_250[6] = {4L,4L,4L,4L,4L,4L};
                uint64_t l_251 = 18446744073709551609UL;
                int i, j, k;
                if ((p_40 <= (l_162[3][0][2] <= p_38)))
                { /* block id: 55 */
                    uint64_t l_171[5] = {9UL,9UL,9UL,9UL,9UL};
                    int32_t *l_183 = &p_1078->g_184;
                    int i;
                    for (p_1078->g_159 = 0; (p_1078->g_159 < 3); p_1078->g_159++)
                    { /* block id: 58 */
                        return p_39;
                    }
                    for (l_148 = 0; (l_148 >= 48); ++l_148)
                    { /* block id: 63 */
                        return &p_1078->g_122;
                    }
                    (*l_183) &= (safe_sub_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(l_171[0], (safe_mod_func_uint16_t_u_u((((~(safe_div_func_uint32_t_u_u((safe_mod_func_int16_t_s_s(l_171[0], (safe_mul_func_int16_t_s_s(0x1AE2L, l_162[0][0][6])))), p_42))) == (l_154 < l_162[3][0][2])) != (safe_lshift_func_uint8_t_u_s((p_40 || ((l_171[0] != p_1078->g_6[0]) && l_182)), 2))), (*l_146))))), p_1078->g_159));
                }
                else
                { /* block id: 67 */
                    int64_t *l_185 = &l_182;
                    uint64_t *l_200 = &l_154;
                    uint16_t **l_207 = &l_143;
                    int32_t l_211 = 0x47FADFC4L;
                    int8_t l_234 = 0L;
                    int32_t *l_237 = &p_1078->g_147[7];
                    int32_t l_248[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_248[i] = 8L;
                    if ((((l_211 = (p_1078->g_113 = ((**l_123) , ((((((((*l_185) = p_1078->g_115[2]) , &p_1078->g_122) == (p_1078->g_144[0] , p_39)) <= (safe_div_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((l_210 = (safe_mod_func_uint64_t_u_u((~(GROUP_DIVERGE(1, 1) > ((~(p_1078->g_134 , ((safe_add_func_int8_t_s_s((((safe_rshift_func_int16_t_s_s(((++(*l_200)) , ((*l_146) = (l_208 |= ((safe_lshift_func_int16_t_s_u((((-9L) && GROUP_DIVERGE(1, 1)) != (safe_mod_func_uint16_t_u_u((&p_1078->g_144[0] != ((*l_207) = &p_1078->g_144[0])), p_1078->g_159))), 9)) < p_42)))), p_1078->g_6[0])) ^ p_1078->g_149) > (*p_1078->g_122)), 0x6DL)) || p_42))) > l_209))), p_1078->g_6[0]))) && 0x813BL), p_40)), (**p_39))), p_1078->g_158))) < p_1078->g_134) , 1UL) > (**p_41))))) ^ p_1078->g_144[0]) && l_208))
                    { /* block id: 76 */
                        int64_t **l_222 = &p_1078->g_220;
                        int32_t l_229 = 1L;
                        int8_t **l_235[8][10] = {{&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133},{&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133}};
                        int i, j;
                        (*l_123) = (void*)0;
                        (*l_146) |= (safe_div_func_int32_t_s_s(((safe_sub_func_uint64_t_u_u(p_1078->g_113, (p_38 = (safe_mul_func_int8_t_s_s(((safe_add_func_int64_t_s_s(((**l_225) |= (((p_40 , &p_38) != ((*l_222) = p_1078->g_220)) >= (((void*)0 == l_225) & ((safe_rshift_func_uint16_t_u_u(l_229, FAKE_DIVERGE(p_1078->local_1_offset, get_local_id(1), 10))) > ((safe_mod_func_int8_t_s_s((((((l_210 , ((safe_sub_func_uint32_t_u_u(l_229, (-6L))) , 0x19019188L)) && l_229) ^ p_40) <= l_211) & GROUP_DIVERGE(0, 1)), (*p_1078->g_122))) , l_234))))), p_1078->g_6[0])) && p_1078->g_6[0]), 0x5AL))))) , (-10L)), 0xF17F63BEL));
                        p_1078->g_184 = ((*l_146) = p_40);
                        return l_236;
                    }
                    else
                    { /* block id: 85 */
                        int32_t *l_238[7] = {&p_1078->g_6[0],&l_211,&p_1078->g_6[0],&p_1078->g_6[0],&l_211,&p_1078->g_6[0],&p_1078->g_6[0]};
                        int i;
                        l_237 = &p_1078->g_147[3];
                        ++l_251;
                        (*l_123) = l_238[1];
                    }
                    (*l_237) = 0x7471AA7DL;
                    return &p_1078->g_122;
                }
                for (p_1078->g_159 = 0; (p_1078->g_159 <= 45); p_1078->g_159 = safe_add_func_uint16_t_u_u(p_1078->g_159, 3))
                { /* block id: 95 */
                    uint32_t l_274 = 0xE39F24ECL;
                    uint32_t *l_275[6][4][8] = {{{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0}},{{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0}},{{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0}},{{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0}},{{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0}},{{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0},{&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,&p_1078->g_276,&p_1078->g_159,&p_1078->g_159,(void*)0}}};
                    uint32_t *l_278 = &p_1078->g_279;
                    int32_t l_298 = 0x73ED05CFL;
                    int i, j, k;
                    (1 + 1);
                }
            }
            else
            { /* block id: 121 */
                return &p_1078->g_122;
            }
        }
        return l_236;
    }
    else
    { /* block id: 126 */
        p_1078->g_147[7] = (p_1078->g_17 || 1L);
    }
    l_320[5]++;
    return &p_1078->g_122;
}


/* ------------------------------------------ */
/* 
 * reads : p_1078->g_17 p_1078->g_66 p_1078->g_6 p_1078->g_2 p_1078->g_121
 * writes: p_1078->g_66 p_1078->g_113 p_1078->g_115 p_1078->g_117
 */
int8_t ** func_44(int32_t  p_45, uint32_t  p_46, struct S1 * p_1078)
{ /* block id: 14 */
    int8_t *l_71 = &p_1078->g_17;
    int8_t **l_70 = &l_71;
    int32_t l_111 = 0L;
    int32_t *l_119 = &p_1078->g_6[0];
    int32_t **l_118 = &l_119;
    int32_t ***l_120 = &l_118;
    for (p_45 = 0; (p_45 <= 19); p_45 = safe_add_func_int64_t_s_s(p_45, 1))
    { /* block id: 17 */
        uint32_t *l_65 = &p_1078->g_66;
        int8_t *l_69 = &p_1078->g_17;
        int32_t l_112[9][8][3] = {{{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL}},{{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL}},{{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL}},{{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL}},{{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL}},{{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL}},{{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL}},{{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL}},{{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL},{5L,0x7D67D06FL,0x2DB2F3DDL}}};
        uint8_t *l_114 = &p_1078->g_115[2];
        int32_t *l_116[2];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_116[i] = &l_112[0][4][1];
        l_111 = ((~(func_51((safe_div_func_int8_t_s_s((safe_add_func_int8_t_s_s((p_1078->g_17 , ((func_61(((*l_65)++), l_69, l_70, p_1078) || ((*l_114) = (safe_div_func_uint16_t_u_u(((1L && ((p_1078->g_6[1] >= p_45) < p_46)) == ((safe_unary_minus_func_int16_t_s(((safe_lshift_func_int16_t_s_u((safe_mod_func_int32_t_s_s((safe_sub_func_int32_t_s_s((((p_1078->g_113 = (safe_add_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s(1L, 4294967291UL)) | l_111), l_112[0][4][1])) < p_1078->g_66), p_1078->g_6[1])), 0x10L))) >= p_1078->g_6[0]) < l_112[0][4][1]), 0x2E7287D2L)), 4294967286UL)), p_46)) , l_111))) == 4294967295UL)), p_1078->g_2)))) != p_1078->g_6[0])), FAKE_DIVERGE(p_1078->local_2_offset, get_local_id(2), 10))), 1L)), &p_1078->g_17, p_1078) ^ 18446744073709551612UL)) > l_112[0][4][1]);
    }
    p_1078->g_117 = p_46;
    (*l_120) = l_118;
    return p_1078->g_121;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_51(int32_t  p_52, int8_t * p_53, struct S1 * p_1078)
{ /* block id: 12 */
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_1078->g_66 p_1078->g_6 p_1078->g_2 p_1078->g_17
 * writes: p_1078->g_66
 */
int8_t  func_61(uint32_t  p_62, int8_t * p_63, int8_t ** p_64, struct S1 * p_1078)
{ /* block id: 19 */
    uint32_t *l_79 = &p_1078->g_66;
    int32_t l_83 = 4L;
    int32_t **l_93 = (void*)0;
    for (p_1078->g_66 = 0; (p_1078->g_66 <= 54); ++p_1078->g_66)
    { /* block id: 22 */
        int32_t l_74 = 0x6D4D3443L;
        uint32_t **l_80 = &l_79;
        int32_t *l_90 = (void*)0;
        int32_t *l_91 = &l_83;
        int32_t ***l_92 = (void*)0;
        l_74 &= p_1078->g_6[1];
        (*l_91) = (func_75(p_1078->g_6[0], ((((*l_80) = l_79) == &p_1078->g_66) && (safe_sub_func_int64_t_s_s((l_83 & (safe_mod_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s(0xF4A9L, (((((*l_80) = l_79) == ((p_1078->g_2 > 0x53F201F9L) , &p_62)) , p_62) == (-1L)))), 18446744073709551615UL))), p_62))), p_62, p_1078) == p_1078->g_17);
        l_93 = &l_91;
        (**l_93) = p_1078->g_6[0];
    }
    return p_1078->g_6[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1078->g_66
 * writes:
 */
int64_t  func_75(uint32_t  p_76, int64_t  p_77, int32_t  p_78, struct S1 * p_1078)
{ /* block id: 26 */
    int32_t *l_89 = &p_1078->g_6[1];
    int32_t **l_88 = &l_89;
    (*l_88) = &p_78;
    return p_1078->g_66;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1079;
    struct S1* p_1078 = &c_1079;
    struct S1 c_1080 = {
        0x71D976FFL, // p_1078->g_2
        1L, // p_1078->g_5
        {0x07B5CA98L,0x07B5CA98L}, // p_1078->g_6
        0L, // p_1078->g_17
        0x4F5774D2L, // p_1078->g_66
        0UL, // p_1078->g_113
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_1078->g_115
        0x66L, // p_1078->g_117
        &p_1078->g_117, // p_1078->g_122
        &p_1078->g_122, // p_1078->g_121
        1L, // p_1078->g_134
        {65535UL}, // p_1078->g_144
        {1L,1L,1L,1L,1L,1L,1L,1L,1L}, // p_1078->g_147
        (-1L), // p_1078->g_149
        0L, // p_1078->g_158
        0x9312A2FDL, // p_1078->g_159
        0L, // p_1078->g_184
        {0x3C0B3C3597859A0EL,0x3C0B3C3597859A0EL,0x3C0B3C3597859A0EL,0x3C0B3C3597859A0EL,0x3C0B3C3597859A0EL,0x3C0B3C3597859A0EL,0x3C0B3C3597859A0EL,0x3C0B3C3597859A0EL}, // p_1078->g_221
        &p_1078->g_221[1], // p_1078->g_220
        0x1E9FAB29L, // p_1078->g_276
        0x476BL, // p_1078->g_277
        1UL, // p_1078->g_279
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1078->g_333
        &p_1078->g_333[1], // p_1078->g_332
        0x6004F4858AE58D53L, // p_1078->g_352
        18446744073709551608UL, // p_1078->g_377
        (void*)0, // p_1078->g_379
        &p_1078->g_379, // p_1078->g_378
        {{0x6C706A66L,0x6C706A66L,0x6C706A66L},{0x6C706A66L,0x6C706A66L,0x6C706A66L},{0x6C706A66L,0x6C706A66L,0x6C706A66L},{0x6C706A66L,0x6C706A66L,0x6C706A66L}}, // p_1078->g_407
        (void*)0, // p_1078->g_463
        {{{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0}},{{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0}},{{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0}},{{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0},{&p_1078->g_6[0],&p_1078->g_6[0],&p_1078->g_184,(void*)0}}}, // p_1078->g_498
        {0x50532295L}, // p_1078->g_512
        &p_1078->g_149, // p_1078->g_561
        &p_1078->g_144[0], // p_1078->g_596
        &p_1078->g_596, // p_1078->g_595
        {0x12326473L}, // p_1078->g_608
        0x8CL, // p_1078->g_638
        8L, // p_1078->g_732
        &p_1078->g_147[7], // p_1078->g_753
        8L, // p_1078->g_797
        {0x7993EAB15CF91D8DL}, // p_1078->g_859
        (void*)0, // p_1078->g_863
        4294967295UL, // p_1078->g_891
        {(void*)0,(void*)0,(void*)0}, // p_1078->g_898
        &p_1078->g_898[2], // p_1078->g_897
        0xCD306B1BL, // p_1078->g_948
        &p_1078->g_115[2], // p_1078->g_951
        {{&p_1078->g_147[3],&p_1078->g_147[3],&p_1078->g_6[0],&p_1078->g_147[1]},{&p_1078->g_147[3],&p_1078->g_147[3],&p_1078->g_6[0],&p_1078->g_147[1]},{&p_1078->g_147[3],&p_1078->g_147[3],&p_1078->g_6[0],&p_1078->g_147[1]},{&p_1078->g_147[3],&p_1078->g_147[3],&p_1078->g_6[0],&p_1078->g_147[1]}}, // p_1078->g_1057
        &p_1078->g_121, // p_1078->g_1063
        sequence_input[get_global_id(0)], // p_1078->global_0_offset
        sequence_input[get_global_id(1)], // p_1078->global_1_offset
        sequence_input[get_global_id(2)], // p_1078->global_2_offset
        sequence_input[get_local_id(0)], // p_1078->local_0_offset
        sequence_input[get_local_id(1)], // p_1078->local_1_offset
        sequence_input[get_local_id(2)], // p_1078->local_2_offset
        sequence_input[get_group_id(0)], // p_1078->group_0_offset
        sequence_input[get_group_id(1)], // p_1078->group_1_offset
        sequence_input[get_group_id(2)], // p_1078->group_2_offset
    };
    c_1079 = c_1080;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1078);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1078->g_2, "p_1078->g_2", print_hash_value);
    transparent_crc(p_1078->g_5, "p_1078->g_5", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1078->g_6[i], "p_1078->g_6[i]", print_hash_value);

    }
    transparent_crc(p_1078->g_17, "p_1078->g_17", print_hash_value);
    transparent_crc(p_1078->g_66, "p_1078->g_66", print_hash_value);
    transparent_crc(p_1078->g_113, "p_1078->g_113", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1078->g_115[i], "p_1078->g_115[i]", print_hash_value);

    }
    transparent_crc(p_1078->g_117, "p_1078->g_117", print_hash_value);
    transparent_crc(p_1078->g_134, "p_1078->g_134", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1078->g_144[i], "p_1078->g_144[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1078->g_147[i], "p_1078->g_147[i]", print_hash_value);

    }
    transparent_crc(p_1078->g_149, "p_1078->g_149", print_hash_value);
    transparent_crc(p_1078->g_158, "p_1078->g_158", print_hash_value);
    transparent_crc(p_1078->g_159, "p_1078->g_159", print_hash_value);
    transparent_crc(p_1078->g_184, "p_1078->g_184", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1078->g_221[i], "p_1078->g_221[i]", print_hash_value);

    }
    transparent_crc(p_1078->g_276, "p_1078->g_276", print_hash_value);
    transparent_crc(p_1078->g_277, "p_1078->g_277", print_hash_value);
    transparent_crc(p_1078->g_279, "p_1078->g_279", print_hash_value);
    transparent_crc(p_1078->g_352, "p_1078->g_352", print_hash_value);
    transparent_crc(p_1078->g_377, "p_1078->g_377", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1078->g_407[i][j], "p_1078->g_407[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1078->g_512.f0, "p_1078->g_512.f0", print_hash_value);
    transparent_crc(p_1078->g_608.f0, "p_1078->g_608.f0", print_hash_value);
    transparent_crc(p_1078->g_638, "p_1078->g_638", print_hash_value);
    transparent_crc(p_1078->g_732, "p_1078->g_732", print_hash_value);
    transparent_crc(p_1078->g_797, "p_1078->g_797", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1078->g_859[i], "p_1078->g_859[i]", print_hash_value);

    }
    transparent_crc(p_1078->g_891, "p_1078->g_891", print_hash_value);
    transparent_crc(p_1078->g_948, "p_1078->g_948", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
