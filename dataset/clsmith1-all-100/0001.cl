// --atomics 66 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 85,94,1 -l 1,47,1
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

__constant uint32_t permutations[10][47] = {
{9,24,8,17,1,2,18,30,31,42,0,33,16,40,11,45,26,35,12,44,15,13,21,38,10,27,20,36,37,5,6,23,7,19,3,22,46,28,43,32,41,39,25,29,14,4,34}, // permutation 0
{15,34,19,32,38,1,2,8,44,22,11,37,29,10,42,26,9,46,43,4,33,31,18,17,3,20,6,12,36,28,14,13,30,45,27,41,24,23,35,16,21,39,40,5,7,25,0}, // permutation 1
{32,3,19,42,45,1,18,41,23,4,29,31,16,14,36,20,40,2,11,44,33,34,9,37,13,39,17,7,28,10,30,15,27,6,22,24,46,25,5,0,35,38,21,8,12,26,43}, // permutation 2
{38,28,44,34,42,0,24,1,18,4,5,13,2,17,32,43,29,21,35,41,11,23,31,45,46,26,37,14,27,9,6,12,25,22,33,8,20,19,16,7,39,3,15,36,30,40,10}, // permutation 3
{3,9,28,17,12,25,45,42,14,18,34,39,21,35,4,2,7,5,29,6,23,37,22,30,13,31,33,44,41,38,40,1,8,10,20,11,15,27,0,43,32,46,16,24,19,26,36}, // permutation 4
{16,31,13,19,12,21,30,34,26,39,44,3,14,40,20,9,36,24,15,10,35,11,46,28,42,27,0,6,7,18,29,37,17,25,43,32,1,8,45,41,2,22,33,4,38,23,5}, // permutation 5
{1,26,13,4,12,32,5,30,10,44,7,46,36,0,23,42,37,24,35,6,8,2,27,18,40,15,22,16,9,20,38,43,17,31,25,33,19,11,45,41,28,34,39,3,21,14,29}, // permutation 6
{38,33,0,3,31,25,45,6,35,12,1,14,23,9,7,2,26,44,36,22,18,4,41,29,16,11,15,30,40,46,43,24,42,20,8,28,32,27,34,5,39,21,19,37,10,13,17}, // permutation 7
{22,37,17,40,25,27,8,32,42,38,41,31,4,9,46,33,36,28,13,30,14,26,1,24,2,21,20,10,35,45,7,18,29,39,44,34,15,6,3,12,5,23,11,19,43,16,0}, // permutation 8
{36,35,21,30,7,28,22,25,4,3,45,38,16,31,33,20,37,9,19,15,10,8,42,44,27,17,13,0,11,12,6,32,41,40,46,34,2,26,23,14,18,29,5,43,1,24,39} // permutation 9
};

// Seed: 1

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
};

struct S1 {
    uint16_t g_6;
    uint16_t g_24;
    struct S0 g_33;
    struct S0 *g_35;
    struct S0 ** volatile g_34[6];
    struct S0 ** volatile g_36;
    struct S0 ** volatile g_37[2];
    int32_t g_69;
    int32_t *g_71;
    int32_t ** volatile g_70;
    VECTOR(uint16_t, 8) g_82;
    VECTOR(uint8_t, 4) g_97;
    VECTOR(uint8_t, 2) g_101;
    VECTOR(uint8_t, 8) g_111;
    VECTOR(uint8_t, 4) g_112;
    uint32_t g_115;
    int64_t g_117[9][7][4];
    int16_t g_120;
    uint64_t g_123;
    int32_t g_135[10][10][2];
    int8_t g_137;
    uint64_t g_138;
    int32_t g_140;
    int32_t g_141;
    int8_t g_143;
    VECTOR(int32_t, 4) g_145;
    VECTOR(int32_t, 4) g_146;
    volatile VECTOR(int32_t, 4) g_149;
    VECTOR(int32_t, 8) g_150;
    int32_t * volatile g_184;
    int32_t *g_251[5];
    int32_t ** volatile g_250[9][10];
    volatile int64_t g_291;
    VECTOR(int32_t, 16) g_322;
    int32_t * volatile g_323[5];
    int32_t * volatile g_324[4][3][4];
    int32_t * volatile g_326[1][3];
    int32_t * volatile g_327[7][4];
    VECTOR(uint32_t, 2) g_366;
    volatile VECTOR(uint16_t, 4) g_376;
    int32_t **g_404[10];
    int32_t *** volatile g_439;
    uint16_t * volatile g_453[10][8][2];
    uint16_t * volatile * volatile g_452;
    int32_t g_468;
    int16_t g_477[2];
    uint8_t *g_478;
    int32_t * volatile g_497[3];
    int32_t * volatile g_498;
    int32_t ** volatile g_530;
    VECTOR(uint32_t, 4) g_718;
    VECTOR(uint8_t, 16) g_746;
    struct S0 g_748;
    struct S0 ** volatile g_776;
    volatile int32_t * volatile g_781;
    volatile VECTOR(uint16_t, 2) g_799;
    VECTOR(uint16_t, 16) g_800;
    int8_t g_805;
    volatile VECTOR(int16_t, 4) g_806;
    VECTOR(int16_t, 4) g_807;
    volatile VECTOR(int16_t, 16) g_808;
    volatile VECTOR(uint16_t, 4) g_809;
    volatile int32_t * volatile **g_823;
    VECTOR(int8_t, 4) g_828;
    VECTOR(int32_t, 16) g_829;
    int32_t ** volatile g_834;
    int32_t ** volatile g_853;
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
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S1 * p_879);
uint64_t  func_15(uint16_t * p_16, int64_t  p_17, struct S1 * p_879);
int32_t * func_19(uint16_t * p_20, uint64_t  p_21, int16_t  p_22, struct S1 * p_879);
int8_t  func_25(uint32_t  p_26, struct S1 * p_879);
struct S0 * func_28(uint8_t  p_29, uint32_t  p_30, struct S1 * p_879);
int32_t ** func_40(struct S0 ** p_41, uint32_t  p_42, uint64_t  p_43, int8_t  p_44, int32_t * p_45, struct S1 * p_879);
int32_t ** func_46(struct S0 ** p_47, int32_t ** p_48, int32_t  p_49, struct S0 * p_50, struct S0 ** p_51, struct S1 * p_879);
struct S0 ** func_52(int32_t ** p_53, struct S1 * p_879);
int32_t ** func_56(uint16_t * p_57, struct S0 ** p_58, int32_t  p_59, int32_t * p_60, int32_t  p_61, struct S1 * p_879);
uint16_t * func_62(uint64_t  p_63, int32_t  p_64, uint64_t  p_65, int8_t  p_66, struct S1 * p_879);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_879->g_comm_values p_879->l_comm_values p_879->g_24 p_879->g_70 p_879->g_71 p_879->g_69 p_879->g_82 p_879->g_97 p_879->g_101 p_879->g_111 p_879->g_112 p_879->g_115 p_879->g_33.f0 p_879->g_123 p_879->g_137 p_879->g_138 p_879->g_145 p_879->g_146 p_879->g_149 p_879->g_150 p_879->g_141 p_879->g_35 p_879->g_143 p_879->g_322 p_879->g_33 p_879->g_135 p_879->g_120 p_879->g_366 p_879->g_117 p_879->g_376 p_879->g_140 p_879->g_452 p_879->g_477 p_879->g_478 p_879->g_498 p_879->g_530 p_879->g_468 p_879->g_718 p_879->g_6 p_879->g_746 p_879->g_404 p_879->g_776 p_879->g_781 p_879->g_799 p_879->g_800 p_879->g_806 p_879->g_807 p_879->g_808 p_879->g_809 p_879->g_823 p_879->g_828 p_879->g_829 p_879->g_834 p_879->g_853 p_879->g_291
 * writes: p_879->g_6 p_879->g_71 p_879->g_115 p_879->g_117 p_879->g_69 p_879->g_135 p_879->g_137 p_879->g_138 p_879->g_140 p_879->g_141 p_879->g_143 p_879->g_145 p_879->g_33.f0 p_879->g_33 p_879->g_120 p_879->g_24 p_879->g_404 p_879->g_477 p_879->g_468 p_879->g_748 p_879->g_35 p_879->g_805
 */
int32_t  func_1(struct S1 * p_879)
{ /* block id: 4 */
    VECTOR(uint8_t, 16) l_2 = (VECTOR(uint8_t, 16))(0x18L, (VECTOR(uint8_t, 4))(0x18L, (VECTOR(uint8_t, 2))(0x18L, 0xCCL), 0xCCL), 0xCCL, 0x18L, 0xCCL, (VECTOR(uint8_t, 2))(0x18L, 0xCCL), (VECTOR(uint8_t, 2))(0x18L, 0xCCL), 0x18L, 0xCCL, 0x18L, 0xCCL);
    VECTOR(uint8_t, 8) l_3 = (VECTOR(uint8_t, 8))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 255UL), 255UL), 255UL, 249UL, 255UL);
    VECTOR(int32_t, 16) l_679 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x545C620AL), 0x545C620AL), 0x545C620AL, 0L, 0x545C620AL, (VECTOR(int32_t, 2))(0L, 0x545C620AL), (VECTOR(int32_t, 2))(0L, 0x545C620AL), 0L, 0x545C620AL, 0L, 0x545C620AL);
    int32_t l_768 = 0x6A99B0A2L;
    VECTOR(int16_t, 8) l_795 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x5A6BL), 0x5A6BL), 0x5A6BL, (-1L), 0x5A6BL);
    uint8_t l_816 = 0UL;
    uint64_t *l_851[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    struct S0 l_852 = {0x7C1F4516L};
    struct S0 l_854 = {0UL};
    int8_t l_863 = (-8L);
    uint8_t l_870 = 255UL;
    struct S0 **l_871 = &p_879->g_35;
    int8_t *l_872 = &p_879->g_137;
    uint16_t *l_875 = (void*)0;
    uint32_t l_876 = 0x18B05EA3L;
    VECTOR(uint16_t, 16) l_877 = (VECTOR(uint16_t, 16))(0x2DB9L, (VECTOR(uint16_t, 4))(0x2DB9L, (VECTOR(uint16_t, 2))(0x2DB9L, 0xCA81L), 0xCA81L), 0xCA81L, 0x2DB9L, 0xCA81L, (VECTOR(uint16_t, 2))(0x2DB9L, 0xCA81L), (VECTOR(uint16_t, 2))(0x2DB9L, 0xCA81L), 0x2DB9L, 0xCA81L, 0x2DB9L, 0xCA81L);
    int32_t **l_878 = &p_879->g_71;
    int i;
    if ((((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 2))(l_2.sb0)).yxxyxxxyxyxyyyxx, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_3.s14)).yxyyxxyxyyxyxyyy))))).s1 < 9L))
    { /* block id: 5 */
        uint16_t *l_4 = (void*)0;
        uint16_t *l_5 = &p_879->g_6;
        int32_t l_18[6][1] = {{0L},{0L},{0L},{0L},{0L},{0L}};
        int32_t *l_676 = &p_879->g_468;
        int32_t l_683 = 0x4430F9AEL;
        uint32_t l_684 = 7UL;
        int32_t ***l_687 = (void*)0;
        struct S0 *l_701 = &p_879->g_33;
        int64_t l_784 = 0L;
        int32_t **l_813[7] = {&p_879->g_251[2],&p_879->g_251[2],&p_879->g_251[2],&p_879->g_251[2],&p_879->g_251[2],&p_879->g_251[2],&p_879->g_251[2]};
        int32_t ***l_812 = &l_813[0];
        int i, j;
        if (((*l_676) = ((((*l_5) = (GROUP_DIVERGE(0, 1) , 0xDA8AL)) < ((FAKE_DIVERGE(p_879->local_1_offset, get_local_id(1), 10) , ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))(4294967295UL, (safe_mod_func_int8_t_s_s(((safe_sub_func_uint32_t_u_u(((safe_mod_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(p_879->g_comm_values[p_879->tid], p_879->l_comm_values[(safe_mod_func_uint32_t_u_u(p_879->tid, 47))])), func_15(l_4, l_18[3][0], p_879))) || GROUP_DIVERGE(2, 1)), p_879->g_146.y)) , (safe_add_func_int16_t_s_s((l_18[3][0] = (safe_add_func_uint32_t_u_u(4UL, l_2.s4))), p_879->g_117[7][6][2]))), p_879->g_146.x)), 0xD1780B97L, 0x1E0BF2B6L)).lo, ((VECTOR(uint32_t, 2))(0xB2A5A0F2L))))).odd) && p_879->g_143)) <= (-6L))))
        { /* block id: 278 */
            int32_t *l_677 = (void*)0;
            int32_t *l_678 = (void*)0;
            int32_t *l_680 = &l_18[5][0];
            int32_t *l_681 = (void*)0;
            int32_t *l_682[8][2][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int i, j, k;
            l_684++;
        }
        else
        { /* block id: 280 */
            int16_t l_698 = 0L;
            struct S0 *l_699 = &p_879->g_33;
            uint16_t l_719[7][3][4] = {{{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL}},{{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL}},{{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL}},{{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL}},{{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL}},{{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL}},{{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL},{0UL,0x11D5L,5UL,0xF36FL}}};
            int32_t *l_752 = &l_18[3][0];
            int32_t *l_766 = (void*)0;
            int32_t *l_767[1][5][2] = {{{&l_18[3][0],&l_18[3][0]},{&l_18[3][0],&l_18[3][0]},{&l_18[3][0],&l_18[3][0]},{&l_18[3][0],&l_18[3][0]},{&l_18[3][0],&l_18[3][0]}}};
            uint32_t l_769[1];
            int8_t *l_774[6][9] = {{&p_879->g_137,&p_879->g_143,&p_879->g_137,&p_879->g_137,(void*)0,&p_879->g_137,&p_879->g_137,&p_879->g_143,&p_879->g_137},{&p_879->g_137,&p_879->g_143,&p_879->g_137,&p_879->g_137,(void*)0,&p_879->g_137,&p_879->g_137,&p_879->g_143,&p_879->g_137},{&p_879->g_137,&p_879->g_143,&p_879->g_137,&p_879->g_137,(void*)0,&p_879->g_137,&p_879->g_137,&p_879->g_143,&p_879->g_137},{&p_879->g_137,&p_879->g_143,&p_879->g_137,&p_879->g_137,(void*)0,&p_879->g_137,&p_879->g_137,&p_879->g_143,&p_879->g_137},{&p_879->g_137,&p_879->g_143,&p_879->g_137,&p_879->g_137,(void*)0,&p_879->g_137,&p_879->g_137,&p_879->g_143,&p_879->g_137},{&p_879->g_137,&p_879->g_143,&p_879->g_137,&p_879->g_137,(void*)0,&p_879->g_137,&p_879->g_137,&p_879->g_143,&p_879->g_137}};
            struct S0 **l_775 = &l_701;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_769[i] = 2UL;
            if ((l_2.sf & (((*l_676) |= (&p_879->g_250[2][5] != l_687)) != FAKE_DIVERGE(p_879->local_0_offset, get_local_id(0), 10))))
            { /* block id: 282 */
                struct S0 **l_700[5] = {&p_879->g_35,&p_879->g_35,&p_879->g_35,&p_879->g_35,&p_879->g_35};
                int i;
                if ((atomic_inc(&p_879->g_atomic_input[66 * get_linear_group_id() + 3]) == 1))
                { /* block id: 284 */
                    uint32_t l_688 = 0xF5F61FF7L;
                    int32_t l_689 = (-3L);
                    int32_t l_690[8][5][6] = {{{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L}},{{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L}},{{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L}},{{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L}},{{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L}},{{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L}},{{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L}},{{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L},{0x547D96FEL,0x1B69FCB6L,0x045009FFL,0x7B6E79E9L,1L,1L}}};
                    int32_t *l_691 = &l_689;
                    int32_t *l_692[6];
                    int32_t *l_693 = &l_689;
                    uint32_t l_694[2][8] = {{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}};
                    int32_t l_695 = 0x516EC5ECL;
                    int32_t l_696 = 0L;
                    uint64_t l_697 = 0xF0E55F94B1A65AC2L;
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_692[i] = &l_689;
                    l_690[5][1][3] = (l_689 = l_688);
                    l_693 = (l_692[1] = l_691);
                    l_695 = l_694[0][1];
                    l_697 = l_696;
                    unsigned int result = 0;
                    result += l_688;
                    result += l_689;
                    int l_690_i0, l_690_i1, l_690_i2;
                    for (l_690_i0 = 0; l_690_i0 < 8; l_690_i0++) {
                        for (l_690_i1 = 0; l_690_i1 < 5; l_690_i1++) {
                            for (l_690_i2 = 0; l_690_i2 < 6; l_690_i2++) {
                                result += l_690[l_690_i0][l_690_i1][l_690_i2];
                            }
                        }
                    }
                    int l_694_i0, l_694_i1;
                    for (l_694_i0 = 0; l_694_i0 < 2; l_694_i0++) {
                        for (l_694_i1 = 0; l_694_i1 < 8; l_694_i1++) {
                            result += l_694[l_694_i0][l_694_i1];
                        }
                    }
                    result += l_695;
                    result += l_696;
                    result += l_697;
                    atomic_add(&p_879->g_special_values[66 * get_linear_group_id() + 3], result);
                }
                else
                { /* block id: 291 */
                    (1 + 1);
                }
                l_701 = (l_699 = (l_698 , l_699));
            }
            else
            { /* block id: 296 */
                int32_t l_724 = 0x4FD34AA9L;
                int64_t *l_725 = &p_879->g_117[8][3][0];
                int16_t *l_726 = &p_879->g_120;
                struct S0 l_753 = {0xA0040A74L};
                (*p_879->g_35) = (*l_699);
                if (((*p_879->g_35) , ((safe_sub_func_int64_t_s_s((((((0x3D7EBEA15895A123L <= ((((*p_879->g_498) > (safe_sub_func_int32_t_s_s(((*l_676) = ((safe_add_func_uint32_t_u_u(p_879->g_143, (safe_lshift_func_int16_t_s_u(((*l_726) = ((safe_sub_func_int64_t_s_s(((*l_725) = ((((((((((p_879->g_477[0] | (safe_mul_func_int8_t_s_s(p_879->g_146.z, ((~(safe_mul_func_uint16_t_u_u((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(p_879->g_718.xy)).xxxyyyxyyyyxyxxy)).s7 , ((l_719[2][2][1] <= p_879->g_366.x) | (safe_lshift_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((*l_676), l_719[2][2][1])) == p_879->g_6), p_879->g_322.s4)))), 0x74DDL))) >= l_2.s0)))) == l_724) <= p_879->g_82.s7) ^ l_3.s0) , p_879->g_150.s1) != 0x36C88C14BBC17EBCL) == (-9L)) <= p_879->g_145.y) | (*l_676)) , p_879->g_135[4][6][0])), l_719[1][1][2])) & p_879->g_366.y)), 3)))) >= p_879->g_24)), 0x2423F7A1L))) <= p_879->g_24) & l_698)) | 0UL) , GROUP_DIVERGE(2, 1)) | 3UL) <= l_724), p_879->g_477[1])) | l_724)))
                { /* block id: 301 */
                    if ((atomic_inc(&p_879->l_atomic_input[54]) == 2))
                    { /* block id: 303 */
                        int32_t *l_727 = (void*)0;
                        int32_t l_729 = 0x777168CAL;
                        int32_t *l_728 = &l_729;
                        int16_t l_730 = 0x491AL;
                        int32_t l_731 = 0x4052C959L;
                        VECTOR(int16_t, 8) l_732 = (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0L), 0L), 0L, 7L, 0L);
                        int32_t l_733 = 0x10AAF231L;
                        int32_t l_734 = 0x6A170C77L;
                        uint8_t l_735 = 0x48L;
                        int64_t l_738 = 1L;
                        int16_t l_739 = 0x42ACL;
                        int32_t l_740 = 0x74A98948L;
                        int32_t *l_741[7][2] = {{(void*)0,&l_731},{(void*)0,&l_731},{(void*)0,&l_731},{(void*)0,&l_731},{(void*)0,&l_731},{(void*)0,&l_731},{(void*)0,&l_731}};
                        int32_t *l_742 = &l_740;
                        int i, j;
                        l_728 = l_727;
                        --l_735;
                        l_740 ^= (l_739 = l_738);
                        l_742 = l_741[5][0];
                        unsigned int result = 0;
                        result += l_729;
                        result += l_730;
                        result += l_731;
                        result += l_732.s7;
                        result += l_732.s6;
                        result += l_732.s5;
                        result += l_732.s4;
                        result += l_732.s3;
                        result += l_732.s2;
                        result += l_732.s1;
                        result += l_732.s0;
                        result += l_733;
                        result += l_734;
                        result += l_735;
                        result += l_738;
                        result += l_739;
                        result += l_740;
                        atomic_add(&p_879->l_special_values[54], result);
                    }
                    else
                    { /* block id: 309 */
                        (1 + 1);
                    }
                }
                else
                { /* block id: 312 */
                    int32_t **l_743 = &l_676;
                    int32_t ***l_750 = (void*)0;
                    int32_t ****l_749 = &l_750;
                    int32_t ***l_751 = &p_879->g_404[0];
                    (*l_743) = (*p_879->g_70);
                    if (((safe_rshift_func_int16_t_s_u(p_879->g_376.x, 8)) != ((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 2))(p_879->g_746.sff)).xxyxxyyx))).s7))
                    { /* block id: 314 */
                        struct S0 *l_747 = &p_879->g_748;
                        (*l_747) = ((*p_879->g_35) = (*l_701));
                    }
                    else
                    { /* block id: 317 */
                        return p_879->g_366.x;
                    }
                    if (((((*l_749) = (l_698 , (void*)0)) != l_751) == ((l_752 == ((**l_751) = l_752)) & 0x2715D6C1L)))
                    { /* block id: 322 */
                        (**l_751) = (void*)0;
                    }
                    else
                    { /* block id: 324 */
                        (**l_751) = (*p_879->g_70);
                    }
                    return p_879->g_376.w;
                }
                (*l_701) = (l_753 = l_753);
                if ((atomic_inc(&p_879->l_atomic_input[16]) == 0))
                { /* block id: 332 */
                    uint32_t l_754 = 0x6A241CBCL;
                    int32_t l_755 = (-3L);
                    VECTOR(int8_t, 2) l_756 = (VECTOR(int8_t, 2))((-1L), 0x05L);
                    uint32_t l_757 = 0x25D35985L;
                    uint8_t l_758 = 255UL;
                    int16_t l_759 = 0x76CFL;
                    VECTOR(int32_t, 16) l_760 = (VECTOR(int32_t, 16))(0x3136CF0EL, (VECTOR(int32_t, 4))(0x3136CF0EL, (VECTOR(int32_t, 2))(0x3136CF0EL, 0x63452518L), 0x63452518L), 0x63452518L, 0x3136CF0EL, 0x63452518L, (VECTOR(int32_t, 2))(0x3136CF0EL, 0x63452518L), (VECTOR(int32_t, 2))(0x3136CF0EL, 0x63452518L), 0x3136CF0EL, 0x63452518L, 0x3136CF0EL, 0x63452518L);
                    uint32_t l_761 = 1UL;
                    int i;
                    l_754 |= (-1L);
                    l_757 ^= (l_756.x ^= l_755);
                    l_761 |= ((l_759 = l_758) , ((VECTOR(int32_t, 2))(l_760.sec)).even);
                    for (l_756.x = 0; (l_756.x == 18); l_756.x = safe_add_func_uint32_t_u_u(l_756.x, 6))
                    { /* block id: 340 */
                        int32_t l_765 = 0x22887728L;
                        int32_t *l_764 = &l_765;
                        l_764 = (void*)0;
                    }
                    unsigned int result = 0;
                    result += l_754;
                    result += l_755;
                    result += l_756.y;
                    result += l_756.x;
                    result += l_757;
                    result += l_758;
                    result += l_759;
                    result += l_760.sf;
                    result += l_760.se;
                    result += l_760.sd;
                    result += l_760.sc;
                    result += l_760.sb;
                    result += l_760.sa;
                    result += l_760.s9;
                    result += l_760.s8;
                    result += l_760.s7;
                    result += l_760.s6;
                    result += l_760.s5;
                    result += l_760.s4;
                    result += l_760.s3;
                    result += l_760.s2;
                    result += l_760.s1;
                    result += l_760.s0;
                    result += l_761;
                    atomic_add(&p_879->l_special_values[16], result);
                }
                else
                { /* block id: 343 */
                    (1 + 1);
                }
            }
            l_769[0]++;
            (*l_676) |= (safe_rshift_func_int8_t_s_u((p_879->g_137 = (p_879->g_141 & 0x610EL)), 3));
            (*p_879->g_776) = ((*l_775) = l_699);
        }
        for (p_879->g_141 = (-26); (p_879->g_141 <= (-3)); ++p_879->g_141)
        { /* block id: 355 */
            volatile int32_t * volatile l_782[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t ***l_822 = &l_813[1];
            int32_t l_833 = 0L;
            struct S0 l_837 = {1UL};
            struct S0 l_839 = {4294967288UL};
            int8_t l_844[5][2] = {{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}};
            int i, j;
            for (p_879->g_137 = 0; (p_879->g_137 >= 15); p_879->g_137 = safe_add_func_int32_t_s_s(p_879->g_137, 5))
            { /* block id: 358 */
                uint64_t l_783 = 18446744073709551614UL;
                int32_t l_787 = 8L;
                l_782[2] = p_879->g_781;
                if (l_783)
                    break;
                if ((*l_676))
                    continue;
                if (l_784)
                { /* block id: 362 */
                    int16_t *l_798[9][4][6] = {{{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0}},{{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0}},{{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0}},{{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0}},{{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0}},{{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0}},{{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0}},{{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0}},{{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0},{&p_879->g_120,(void*)0,(void*)0,&p_879->g_120,(void*)0,(void*)0}}};
                    int32_t l_814 = 0x5C6505C5L;
                    int i, j, k;
                    for (p_879->g_468 = 0; (p_879->g_468 <= 3); ++p_879->g_468)
                    { /* block id: 365 */
                        int16_t *l_792 = &p_879->g_477[1];
                        int8_t *l_803 = &p_879->g_143;
                        int8_t *l_804 = &p_879->g_805;
                        int32_t *l_815[2];
                        int32_t l_832 = (-1L);
                        int i;
                        for (i = 0; i < 2; i++)
                            l_815[i] = &p_879->g_135[2][2][1];
                        l_787 = 0x3B42B100L;
                        l_816 ^= ((safe_sub_func_uint8_t_u_u(0UL, (((((VECTOR(int8_t, 4))(9L, ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(0x11L, (safe_add_func_int16_t_s_s(((*l_792) ^= (*l_676)), (safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0UL, 0UL)))).yxxyyxyx)).hi, ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 2))((-5L), (-9L))), ((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_795.s30)), 3L, 0L)).odd, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))((-8L), (safe_div_func_int64_t_s_s(((&p_879->g_120 != l_798[1][3][5]) == ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 2))(1UL, 65534UL)).xyyyxxyy, ((VECTOR(uint16_t, 2))(p_879->g_799.xx)).xyyxxxxy))))).hi)).xwzwxxxwwyzzxzxw, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(p_879->g_800.s8bd5)))).xwzzxxwwzzyxxyyy))).even)).s2), (--p_879->g_138))), 0x456FL, (p_879->g_120 = (0x27L | ((*l_804) = ((*l_803) ^= 0x2FL)))), 0x66DCL, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(p_879->g_806.yyxy)).hi)).xxxyyyyyxxxxyxxx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 2))(7L, 0x7DBCL)).xxxyxxyxyyxyxxyy, ((VECTOR(int16_t, 2))(0x25D4L, 0x27FEL)).xyxxyyyyyxyxxyyy))).sae52, ((VECTOR(int16_t, 16))(p_879->g_807.zwxwyzxyywzyxzyx)).sd000, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_879->g_808.s6c92)), (((VECTOR(uint16_t, 4))(0x1AD5L, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 2))(65535UL, 0xEC5BL)), ((VECTOR(uint16_t, 8))(p_879->g_809.wyzyzxyy)).s32, ((VECTOR(uint16_t, 2))(65530UL, 8UL))))))))), 0xA01CL)).w >= ((l_783 && ((0x2992L < ((void*)0 == l_812)) , p_879->g_145.y)) == 0x37568EADACA5AB57L)), 1L, 0x5862L, 1L)).s2674151400651116)).s30ae))).yyyyyxwx, ((VECTOR(int16_t, 8))(0L)), ((VECTOR(int16_t, 8))((-3L)))))))).odd)).xxwxwzwyyxxxzzwz, ((VECTOR(int16_t, 16))(0x2F8AL))))).s24)), ((VECTOR(int16_t, 8))(1L)), (-5L))).odd)).s57, ((VECTOR(int16_t, 2))(0x34CBL))))).yyyyxyyxyyxxyyxy, (int16_t)p_879->g_111.s2))).sdb))).yyxx))).x, p_879->g_101.x)))), ((VECTOR(int8_t, 4))(0L)), ((VECTOR(int8_t, 8))(0x31L)), 7L, 2L)).lo)).s07, ((VECTOR(int8_t, 2))(0L))))), (-10L))).x && l_814) , 1L) || p_879->g_69))) & (*l_676));
                        (*p_879->g_834) = ((FAKE_DIVERGE(p_879->local_1_offset, get_local_id(1), 10) | l_783) , ((safe_rshift_func_int16_t_s_u((((((safe_unary_minus_func_uint16_t_u(((safe_sub_func_uint8_t_u_u((FAKE_DIVERGE(p_879->global_1_offset, get_global_id(1), 10) != ((*l_803) ^= p_879->g_808.s9)), (l_822 != p_879->g_823))) & ((VECTOR(int8_t, 2))(0x33L, 1L)).even))) <= (((*l_5) = (&p_879->g_115 != (void*)0)) & ((safe_mod_func_int8_t_s_s((safe_add_func_int8_t_s_s(l_783, l_814)), ((VECTOR(int8_t, 2))(p_879->g_828.zy)).odd)) ^ (((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(255UL, 0xA2L)))).odd ^ (!(((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_879->g_829.se9d74f0b4dd12b2e)))).sdb17)).ywwzwwxxyzwwzyyw)).s0 && (safe_lshift_func_uint16_t_u_u(p_879->g_101.y, l_832))) & (-1L)) | p_879->g_138)))))) > l_833) , p_879->g_807.w) >= p_879->g_718.z), l_833)) , (*p_879->g_70)));
                        if (l_2.sa)
                            break;
                    }
                    return l_783;
                }
                else
                { /* block id: 379 */
                    for (l_787 = (-25); (l_787 >= (-5)); l_787++)
                    { /* block id: 382 */
                        int32_t **l_838 = &p_879->g_71;
                        (*p_879->g_35) = l_837;
                        (*l_838) = (*p_879->g_834);
                        (*p_879->g_35) = l_839;
                    }
                    l_679.s2 |= (*l_676);
                }
            }
            l_679.sd = (((((((safe_add_func_int32_t_s_s(5L, (safe_mod_func_int8_t_s_s((l_844[4][0] <= ((safe_rshift_func_int8_t_s_s(((void*)0 != (*p_879->g_776)), 2)) ^ ((l_3.s2 && ((safe_mul_func_int16_t_s_s((0x1F6313EBL && p_879->l_comm_values[(safe_mod_func_uint32_t_u_u(p_879->tid, 47))]), (safe_sub_func_uint32_t_u_u(0x49FCCEB2L, (&p_879->g_123 == l_851[5]))))) <= (-10L))) > p_879->g_138))), (-1L))))) , &p_879->g_477[1]) != &p_879->g_477[1]) == l_816) , FAKE_DIVERGE(p_879->local_1_offset, get_local_id(1), 10)) < 0x865519C1BA180526L) >= l_679.s5);
        }
        (*l_701) = l_852;
        (*p_879->g_853) = (*p_879->g_834);
    }
    else
    { /* block id: 394 */
        int32_t *l_857 = (void*)0;
        int32_t *l_858 = &p_879->g_135[2][2][1];
        (*p_879->g_35) = l_854;
        (*l_858) ^= ((safe_div_func_uint64_t_u_u(l_768, p_879->g_291)) == (p_879->g_69 != p_879->g_145.y));
        return p_879->g_322.s4;
    }
    (*l_878) = func_19(((safe_mod_func_uint64_t_u_u((((*l_872) = ((safe_lshift_func_uint8_t_u_u(l_863, FAKE_DIVERGE(p_879->local_1_offset, get_local_id(1), 10))) >= (safe_lshift_func_int8_t_s_s((&l_852 != ((*l_871) = func_28((safe_add_func_int16_t_s_s(((safe_add_func_uint16_t_u_u((((VECTOR(int32_t, 2))(0x7BE338A1L, (-1L))).hi , l_870), (&p_879->g_439 != &p_879->g_439))) >= l_3.s0), l_768)), (l_679.s1 = ((VECTOR(uint32_t, 2))(0x0509FE65L, 0x1290BFC6L)).lo), p_879))), 6)))) || (safe_add_func_uint64_t_u_u(((l_2.s0 >= 0x266D96AA5E445B9FL) == (-2L)), 0x20F711F5BC4E085BL))), 18446744073709551615UL)) , l_875), l_876, l_877.s3, p_879);
    return (**l_878);
}


/* ------------------------------------------ */
/* 
 * reads : p_879->l_comm_values p_879->g_24 p_879->g_70 p_879->g_71 p_879->g_69 p_879->g_82 p_879->g_97 p_879->g_101 p_879->g_111 p_879->g_112 p_879->g_115 p_879->g_comm_values p_879->g_33.f0 p_879->g_123 p_879->g_137 p_879->g_138 p_879->g_145 p_879->g_146 p_879->g_149 p_879->g_150 p_879->g_141 p_879->g_35 p_879->g_143 p_879->g_322 p_879->g_33 p_879->g_135 p_879->g_120 p_879->g_366 p_879->g_117 p_879->g_376 p_879->g_140 p_879->g_452 p_879->g_477 p_879->g_478 p_879->g_498 p_879->g_530
 * writes: p_879->g_71 p_879->g_115 p_879->g_117 p_879->g_69 p_879->g_135 p_879->g_137 p_879->g_138 p_879->g_140 p_879->g_141 p_879->g_143 p_879->g_145 p_879->g_33.f0 p_879->g_33 p_879->g_120 p_879->g_24 p_879->g_404 p_879->g_477 p_879->g_468
 */
uint64_t  func_15(uint16_t * p_16, int64_t  p_17, struct S1 * p_879)
{ /* block id: 7 */
    uint16_t *l_23 = &p_879->g_24;
    int32_t l_27 = 0x7F3E141BL;
    uint32_t l_469 = 0xD45F815CL;
    VECTOR(uint64_t, 4) l_474 = (VECTOR(uint64_t, 4))(0xB628FF7A7FBF52A1L, (VECTOR(uint64_t, 2))(0xB628FF7A7FBF52A1L, 2UL), 2UL);
    uint64_t *l_475 = &p_879->g_123;
    int16_t *l_476[1][6][2] = {{{&p_879->g_477[1],&p_879->g_477[1]},{&p_879->g_477[1],&p_879->g_477[1]},{&p_879->g_477[1],&p_879->g_477[1]},{&p_879->g_477[1],&p_879->g_477[1]},{&p_879->g_477[1],&p_879->g_477[1]},{&p_879->g_477[1],&p_879->g_477[1]}}};
    uint16_t l_531 = 0xF6C5L;
    int32_t **l_671 = &p_879->g_71;
    int i, j, k;
    (*p_879->g_530) = func_19(l_23, (246UL >= func_25(l_27, p_879)), ((((safe_sub_func_uint8_t_u_u(((~(p_879->g_477[0] &= (safe_mod_func_int32_t_s_s(((safe_sub_func_uint16_t_u_u((l_469++), (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(l_474.ywyxzxxx)).s6, (l_474.y ^ (l_475 != (void*)0)))))) < (!p_879->g_112.y)), (p_17 || 2UL))))) , p_879->g_150.s7), 0x53L)) , (void*)0) != p_879->g_478) , p_17), p_879);
    ++l_531;
    if ((atomic_inc(&p_879->g_atomic_input[66 * get_linear_group_id() + 43]) == 5))
    { /* block id: 220 */
        VECTOR(int32_t, 2) l_534 = (VECTOR(int32_t, 2))(0x1B0D1D50L, 0L);
        VECTOR(int32_t, 8) l_535 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 1L), 1L), 1L, 5L, 1L);
        VECTOR(int32_t, 2) l_536 = (VECTOR(int32_t, 2))(0x7DD63B70L, 0x554D0E48L);
        VECTOR(int32_t, 2) l_537 = (VECTOR(int32_t, 2))((-1L), 0L);
        uint32_t l_538 = 4294967288UL;
        VECTOR(int32_t, 16) l_539 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
        VECTOR(int32_t, 2) l_540 = (VECTOR(int32_t, 2))(0x16B31DD4L, 9L);
        VECTOR(int32_t, 4) l_541 = (VECTOR(int32_t, 4))(0x23FF46F2L, (VECTOR(int32_t, 2))(0x23FF46F2L, 0x245BC9C0L), 0x245BC9C0L);
        int16_t l_542 = (-1L);
        uint8_t l_543 = 0x9DL;
        VECTOR(int32_t, 16) l_544 = (VECTOR(int32_t, 16))(0x3654930AL, (VECTOR(int32_t, 4))(0x3654930AL, (VECTOR(int32_t, 2))(0x3654930AL, (-1L)), (-1L)), (-1L), 0x3654930AL, (-1L), (VECTOR(int32_t, 2))(0x3654930AL, (-1L)), (VECTOR(int32_t, 2))(0x3654930AL, (-1L)), 0x3654930AL, (-1L), 0x3654930AL, (-1L));
        uint16_t l_545 = 1UL;
        VECTOR(int32_t, 4) l_546 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x313E9A9CL), 0x313E9A9CL);
        uint64_t l_547 = 0UL;
        VECTOR(int32_t, 16) l_548 = (VECTOR(int32_t, 16))(0x3414EE07L, (VECTOR(int32_t, 4))(0x3414EE07L, (VECTOR(int32_t, 2))(0x3414EE07L, 8L), 8L), 8L, 0x3414EE07L, 8L, (VECTOR(int32_t, 2))(0x3414EE07L, 8L), (VECTOR(int32_t, 2))(0x3414EE07L, 8L), 0x3414EE07L, 8L, 0x3414EE07L, 8L);
        VECTOR(int32_t, 16) l_549 = (VECTOR(int32_t, 16))(0x6AA265BAL, (VECTOR(int32_t, 4))(0x6AA265BAL, (VECTOR(int32_t, 2))(0x6AA265BAL, (-1L)), (-1L)), (-1L), 0x6AA265BAL, (-1L), (VECTOR(int32_t, 2))(0x6AA265BAL, (-1L)), (VECTOR(int32_t, 2))(0x6AA265BAL, (-1L)), 0x6AA265BAL, (-1L), 0x6AA265BAL, (-1L));
        VECTOR(int32_t, 16) l_550 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-6L)), (-6L)), (-6L), 1L, (-6L), (VECTOR(int32_t, 2))(1L, (-6L)), (VECTOR(int32_t, 2))(1L, (-6L)), 1L, (-6L), 1L, (-6L));
        VECTOR(int32_t, 8) l_551 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x07FF3E70L), 0x07FF3E70L), 0x07FF3E70L, 8L, 0x07FF3E70L);
        VECTOR(uint64_t, 2) l_552 = (VECTOR(uint64_t, 2))(0x63AE3292DDF8DA20L, 0x0DF21B4490905C31L);
        uint16_t l_553 = 65529UL;
        uint16_t l_554 = 65530UL;
        uint8_t l_555 = 255UL;
        uint32_t l_556 = 4294967295UL;
        int64_t l_557 = 0x2A7B52D8F343674AL;
        int64_t l_558 = 5L;
        uint16_t l_559[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
        uint8_t l_575 = 0x47L;
        int32_t l_576 = 1L;
        int i;
        if ((l_559[6] = (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_534.yx)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_535.s2112)).hi)), ((VECTOR(int32_t, 4))(l_536.xyyy)))).s06, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_537.yyxxyxyyxyxxyxxx)))))).sf5, ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))(l_538, 0x6EAC5322L, (-4L), ((VECTOR(int32_t, 8))(l_539.s30bed633)), 0L, ((VECTOR(int32_t, 4))(l_540.xxyy)))), ((VECTOR(int32_t, 2))(0x0598C608L, 1L)).yyxyxxxxyxyyyxyy))).sd1))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0x6A879EDBL, ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(l_541.xwwxyzzwwzxwxzxx)), (int32_t)l_542))).sa521))), ((VECTOR(int32_t, 2))((-1L), (-3L))), 0x1A13EE90L)))))).s04)), ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(0x0CC82C4EL, 0x0FD11D3EL, 0x1A8A0A4FL, 0x7573CF0CL)).odd, ((VECTOR(int32_t, 8))(l_543, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x3CF90FF3L, ((VECTOR(int32_t, 2))(l_544.s79)), (l_547 ^= (l_545 , (l_544.sf = ((VECTOR(int32_t, 4))(l_546.wyzz)).z))), ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(l_548.sb7a4)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x058F3070L, 0x4AB6DA96L)), 0x2E0EF5EFL, (-1L))), ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(l_549.s03)), ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_550.s3594e769ef03f8cc)).s6, ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(l_551.s26)), (int32_t)l_552.y))), 0x6A12D672L)).yxxwwzxwxwzwzzyz, (int32_t)l_553))).s0c))).hi, 0x7579D42CL, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((l_554 , l_555) , l_556), 1L, 0x7E5B2330L, (-6L))), l_557, (-5L), 0x3550F520L, 7L)), 0x49AEB05AL, 0L, 1L, 0x2435AFE5L, 3L, (-1L))).lo, ((VECTOR(int32_t, 8))(0L))))).lo))), 0x1DABBB74L, ((VECTOR(int32_t, 2))((-6L))), 0x5131D27DL, 7L, ((VECTOR(int32_t, 2))(0x1845445EL)), 0x34009C00L)).sdc)))), 1L, ((VECTOR(int32_t, 2))((-10L))), (-1L), (-3L))).s01))), (int32_t)l_558))), (-1L))).s6277363347102225)).sc , (-1L))))
        { /* block id: 224 */
            int32_t l_560 = 0x3475C071L;
            int32_t l_562 = 0L;
            int32_t *l_561[9] = {&l_562,&l_562,&l_562,&l_562,&l_562,&l_562,&l_562,&l_562,&l_562};
            int32_t *l_563 = &l_562;
            int i;
            l_563 = (FAKE_DIVERGE(p_879->local_0_offset, get_local_id(0), 10) , (l_560 , l_561[7]));
        }
        else
        { /* block id: 226 */
            int8_t l_564 = (-10L);
            int32_t l_565 = 0x2CC41A55L;
            uint32_t l_566 = 4294967292UL;
            uint8_t l_567 = 254UL;
            int32_t *l_568 = (void*)0;
            l_565 &= l_564;
            l_567 &= l_566;
            l_568 = (void*)0;
        }
        for (l_551.s5 = 0; (l_551.s5 <= 14); l_551.s5 = safe_add_func_int16_t_s_s(l_551.s5, 3))
        { /* block id: 233 */
            int32_t l_571 = 0x3C1CCF04L;
            int8_t l_572 = 0x30L;
            uint8_t l_573 = 255UL;
            uint64_t l_574 = 0xD3065A3FEFA4C283L;
            l_572 |= l_571;
            l_574 = l_573;
        }
        if ((l_576 = l_575))
        { /* block id: 238 */
            uint8_t l_577 = 0UL;
            int32_t *l_578[3];
            int32_t l_580 = 1L;
            int32_t *l_579 = &l_580;
            int i;
            for (i = 0; i < 3; i++)
                l_578[i] = (void*)0;
            l_577 = 0x5547CB5CL;
            l_579 = l_578[2];
        }
        else
        { /* block id: 241 */
            int32_t l_581 = 1L;
            int32_t *l_663 = &l_581;
            VECTOR(uint32_t, 2) l_664 = (VECTOR(uint32_t, 2))(0x86205C6AL, 0UL);
            int16_t l_665 = 0L;
            uint64_t l_666 = 0UL;
            uint32_t l_667 = 1UL;
            uint32_t l_668 = 4294967289UL;
            int32_t *l_669 = &l_581;
            int32_t *l_670 = (void*)0;
            int i;
            for (l_581 = 28; (l_581 >= 14); --l_581)
            { /* block id: 244 */
                struct S0 l_584 = {0x9C01697AL};
                struct S0 l_585[2] = {{8UL},{8UL}};
                int64_t l_586 = 0x408D14367ECD6508L;
                int8_t l_587 = 1L;
                uint8_t l_588[6][1] = {{0x91L},{0x91L},{0x91L},{0x91L},{0x91L},{0x91L}};
                int32_t l_591[2];
                int i, j;
                for (i = 0; i < 2; i++)
                    l_591[i] = 0L;
                l_585[1] = l_584;
                l_588[5][0]--;
                if (l_591[1])
                { /* block id: 247 */
                    uint64_t l_592[2];
                    int64_t l_595[3][5][6];
                    int8_t l_596 = (-6L);
                    uint32_t l_597 = 0UL;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_592[i] = 1UL;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 5; j++)
                        {
                            for (k = 0; k < 6; k++)
                                l_595[i][j][k] = 0x662F880C4392EAEBL;
                        }
                    }
                    ++l_592[0];
                    ++l_597;
                }
                else
                { /* block id: 250 */
                    VECTOR(uint16_t, 8) l_600 = (VECTOR(uint16_t, 8))(0xEB7AL, (VECTOR(uint16_t, 4))(0xEB7AL, (VECTOR(uint16_t, 2))(0xEB7AL, 1UL), 1UL), 1UL, 0xEB7AL, 1UL);
                    VECTOR(uint16_t, 2) l_603 = (VECTOR(uint16_t, 2))(0xA875L, 0xE521L);
                    uint32_t l_604 = 0xC45F31F6L;
                    uint64_t l_605 = 0xB4BE78696FBF40EAL;
                    VECTOR(uint16_t, 4) l_606 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xBE9DL), 0xBE9DL);
                    VECTOR(uint16_t, 4) l_607 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL);
                    VECTOR(uint16_t, 4) l_608 = (VECTOR(uint16_t, 4))(0xC06EL, (VECTOR(uint16_t, 2))(0xC06EL, 65535UL), 65535UL);
                    VECTOR(uint16_t, 2) l_609 = (VECTOR(uint16_t, 2))(0UL, 0xD613L);
                    VECTOR(uint16_t, 2) l_610 = (VECTOR(uint16_t, 2))(65535UL, 65534UL);
                    VECTOR(uint16_t, 4) l_611 = (VECTOR(uint16_t, 4))(0x888DL, (VECTOR(uint16_t, 2))(0x888DL, 0xB078L), 0xB078L);
                    VECTOR(uint16_t, 16) l_612 = (VECTOR(uint16_t, 16))(0x79D8L, (VECTOR(uint16_t, 4))(0x79D8L, (VECTOR(uint16_t, 2))(0x79D8L, 0x2D0CL), 0x2D0CL), 0x2D0CL, 0x79D8L, 0x2D0CL, (VECTOR(uint16_t, 2))(0x79D8L, 0x2D0CL), (VECTOR(uint16_t, 2))(0x79D8L, 0x2D0CL), 0x79D8L, 0x2D0CL, 0x79D8L, 0x2D0CL);
                    int16_t l_613 = 9L;
                    int8_t l_614 = 0L;
                    uint16_t l_615 = 65526UL;
                    VECTOR(uint16_t, 16) l_616 = (VECTOR(uint16_t, 16))(65527UL, (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 65534UL), 65534UL), 65534UL, 65527UL, 65534UL, (VECTOR(uint16_t, 2))(65527UL, 65534UL), (VECTOR(uint16_t, 2))(65527UL, 65534UL), 65527UL, 65534UL, 65527UL, 65534UL);
                    VECTOR(uint16_t, 8) l_617 = (VECTOR(uint16_t, 8))(0x1CB4L, (VECTOR(uint16_t, 4))(0x1CB4L, (VECTOR(uint16_t, 2))(0x1CB4L, 0x0D43L), 0x0D43L), 0x0D43L, 0x1CB4L, 0x0D43L);
                    VECTOR(uint16_t, 2) l_618 = (VECTOR(uint16_t, 2))(65529UL, 2UL);
                    VECTOR(uint16_t, 4) l_619 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL);
                    VECTOR(uint16_t, 2) l_620 = (VECTOR(uint16_t, 2))(0x6423L, 0UL);
                    VECTOR(int32_t, 8) l_621 = (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), (-6L)), (-6L)), (-6L), (-2L), (-6L));
                    VECTOR(int32_t, 4) l_622 = (VECTOR(int32_t, 4))(0x0D301EF4L, (VECTOR(int32_t, 2))(0x0D301EF4L, (-5L)), (-5L));
                    VECTOR(int32_t, 2) l_623 = (VECTOR(int32_t, 2))((-1L), 0x4219C44CL);
                    VECTOR(int32_t, 16) l_624 = (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, (-1L)), (-1L)), (-1L), 5L, (-1L), (VECTOR(int32_t, 2))(5L, (-1L)), (VECTOR(int32_t, 2))(5L, (-1L)), 5L, (-1L), 5L, (-1L));
                    VECTOR(int32_t, 2) l_625 = (VECTOR(int32_t, 2))(1L, 0x0D8DDA28L);
                    int32_t l_626 = (-1L);
                    int32_t l_627 = (-1L);
                    int32_t l_628[2][1];
                    int16_t l_629 = 0L;
                    uint8_t l_630 = 0x71L;
                    int16_t l_631 = 0x3518L;
                    int32_t l_632 = (-1L);
                    uint16_t l_633 = 0x904BL;
                    uint32_t l_634 = 0xE236B53FL;
                    VECTOR(uint32_t, 2) l_635 = (VECTOR(uint32_t, 2))(0UL, 0x265C20BDL);
                    VECTOR(uint32_t, 4) l_636 = (VECTOR(uint32_t, 4))(0x21B9A5DAL, (VECTOR(uint32_t, 2))(0x21B9A5DAL, 0x79106106L), 0x79106106L);
                    VECTOR(uint16_t, 8) l_637 = (VECTOR(uint16_t, 8))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0x48B4L), 0x48B4L), 0x48B4L, 6UL, 0x48B4L);
                    VECTOR(uint8_t, 4) l_638 = (VECTOR(uint8_t, 4))(0xABL, (VECTOR(uint8_t, 2))(0xABL, 0xC5L), 0xC5L);
                    uint64_t l_639[6] = {1UL,0x44460D635F26C969L,1UL,1UL,0x44460D635F26C969L,1UL};
                    VECTOR(uint8_t, 8) l_640 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xFCL), 0xFCL), 0xFCL, 1UL, 0xFCL);
                    VECTOR(int16_t, 4) l_641 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 7L), 7L);
                    int8_t l_642 = 1L;
                    VECTOR(uint32_t, 4) l_643 = (VECTOR(uint32_t, 4))(0x9C6D80A0L, (VECTOR(uint32_t, 2))(0x9C6D80A0L, 4294967293UL), 4294967293UL);
                    uint8_t l_644[6] = {0x7AL,0x7AL,0x7AL,0x7AL,0x7AL,0x7AL};
                    int16_t l_645 = 8L;
                    VECTOR(uint64_t, 16) l_646 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint64_t, 2))(0UL, 1UL), (VECTOR(uint64_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
                    int32_t l_647 = 0x469BF18BL;
                    VECTOR(uint8_t, 16) l_648 = (VECTOR(uint8_t, 16))(0x90L, (VECTOR(uint8_t, 4))(0x90L, (VECTOR(uint8_t, 2))(0x90L, 1UL), 1UL), 1UL, 0x90L, 1UL, (VECTOR(uint8_t, 2))(0x90L, 1UL), (VECTOR(uint8_t, 2))(0x90L, 1UL), 0x90L, 1UL, 0x90L, 1UL);
                    uint8_t l_649 = 0xDDL;
                    int16_t l_650 = 0x54B7L;
                    VECTOR(uint8_t, 4) l_651 = (VECTOR(uint8_t, 4))(0x63L, (VECTOR(uint8_t, 2))(0x63L, 0xA0L), 0xA0L);
                    uint32_t l_652 = 0x32865DB5L;
                    uint16_t l_653 = 0x8608L;
                    uint16_t l_654 = 0xDF9DL;
                    int32_t l_655 = (-6L);
                    int8_t l_656[8][9][3] = {{{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL}},{{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL}},{{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL}},{{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL}},{{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL}},{{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL}},{{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL}},{{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL},{(-4L),(-4L),0x0AL}}};
                    uint32_t l_657 = 0x2A065F8DL;
                    uint32_t l_658[6] = {0x66683CE7L,4294967295UL,0x66683CE7L,0x66683CE7L,4294967295UL,0x66683CE7L};
                    int32_t l_659 = 8L;
                    int16_t l_660 = 0x3A2AL;
                    int32_t *l_661 = &l_655;
                    int8_t l_662 = (-7L);
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_628[i][j] = 9L;
                    }
                    l_632 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))((-10L), (-10L))), ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(l_600.s5122304702772325)).s12, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(65527UL, 1UL)), (l_559[3]--), 4UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(65531UL, 0x6B90L)).yxyx)).hi, ((VECTOR(uint16_t, 4))(l_603.yxxy)).odd))), 0UL, 0x1AF0L)))), 65532UL, 0x67ADL, 0x9284L, ((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(65533UL, 0x1536L)))), 0xFE68L, 0x2F69L)), ((VECTOR(uint16_t, 16))(((l_543 &= 0UL) , l_604), 65535UL, (l_559[6] = l_605), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_606.yw)).yxyyxyxx)), 0x804CL, 0UL, 0x402DL, 0x0D90L, 1UL)).s2ca9, ((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 2))(0x59CDL, 0x23B8L)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_607.xz)).yyyxyyyyxxxyxyyx)).sd0))).xxyy))), 0xA8CDL)).s0a, ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 8))(l_608.zzzwzwxz)).s1024300616525071, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_609.yyxx)).ywwzxwxx)).s7676162451244722))))).sad)).xyyx)).yxwwyyyzwzzwyxxx)).odd, ((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 2))(l_610.xx)).xxyx, ((VECTOR(uint16_t, 16))(l_611.xxywxxxwzwzzxyyw)).sfcef)))))).wzwwyxyw))).hi, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 8))(l_612.s7093fe10)).s04, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_613, 0xEFA8L, (l_614 , l_615), 0x99F2L, ((VECTOR(uint16_t, 2))(l_616.scb)), 0xA2F0L, 0UL)))).s72))), 1UL, 0xB6FEL)).xxxywxww, ((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_617.s30)).yxyy)), ((VECTOR(uint16_t, 8))(l_618.yyxyyyxx)).odd, ((VECTOR(uint16_t, 4))(65527UL, 0UL, 3UL, 0xBF20L))))).yxxyxxyx))).s50)).yxyx))).odd))).xxxxxyxyyyxyxxyx)).hi, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(GROUP_DIVERGE(0, 1), 0x55F0L, 0x1EA0L, 0x15D9L)).zwzxyzwxwxxzyxxw)))).hi))).s2745311062540672, ((VECTOR(uint16_t, 4))(l_619.xwwy)).wzwywzzxxyyzzzyz, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_620.yx)).xxyyyxxxyxxyxxyx))))).sf5))), (-7L), 7L)).ywxwxwzzzxyxxwzy, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 8))(l_621.s06225601)).hi, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x36107E31L, (-10L))).odd, 1L, ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(1L, ((VECTOR(int32_t, 2))(l_622.wx)), 0x4B0431CEL)), (-10L), ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 16))(l_623.xxxxxxxyyxxxyxxx)).lo, ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_624.s9bc6bfefd4659d65)).s22)).yyyx, (int32_t)((VECTOR(int32_t, 16))(l_625.yyyxyxxyxxxyyxyy)).s3))), (l_629 &= ((l_628[0][0] = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((l_591[1] = 0x3497284AL), 0x55915D91L, 0x25B9D50EL, 0x58BF5FDEL)).w, l_626, (-1L), 0x12E66F6AL, 0x7109ED88L, ((VECTOR(int32_t, 4))((-7L))), ((VECTOR(int32_t, 2))((-7L))), l_627, ((VECTOR(int32_t, 4))(0x4178DB0BL)))).s5b, ((VECTOR(int32_t, 2))(0L))))), 0x47F1508EL, (-1L))).xzzyyzzw, ((VECTOR(int32_t, 8))((-7L)))))))).s7) , 0x7F4CE307L)), 1L, 0L, 7L, ((VECTOR(int32_t, 2))(0x33F84961L)), l_630, 0L, ((VECTOR(int32_t, 4))(1L)))).s0cac, ((VECTOR(int32_t, 4))((-2L))), ((VECTOR(int32_t, 4))(0L))))).xzwxyyxw, ((VECTOR(int32_t, 8))((-8L)))))), 0x3BD4A78AL, 0x5ADB7983L, 0x24402971L)).sbb, ((VECTOR(int32_t, 2))(0x2ACA9B4AL))))), (-1L), l_631, (-4L), 0L)).even))), ((VECTOR(int32_t, 4))(0x52828227L))))).wwxyyzxyxyxyxxwz))))).s7;
                    l_661 = (((((l_633 , ((l_634 , (l_659 = ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_635.xyxy)), ((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 8))(l_636.zzxwwyxy)).odd, ((VECTOR(uint32_t, 2))(4294967288UL, 0x6ACB35E5L)).yxyx, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_637.s66)).yxxyxxyxyxyxxxyx)).hi, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 4))(7UL, ((VECTOR(uint8_t, 2))(0xBFL, 6UL)), 0x92L)).wxxxyzwx, ((VECTOR(uint8_t, 8))(l_638.zwxzxzyz)), ((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 8))(l_639[2], ((VECTOR(uint8_t, 2))(l_640.s36)), (l_640.s4 = l_641.y), (l_642 , GROUP_DIVERGE(0, 1)), ((VECTOR(uint8_t, 2))(249UL, 0x0FL)), 1UL)), ((VECTOR(uint8_t, 8))(((((VECTOR(uint32_t, 16))(l_643.xywxzzxwzxxzzwwy)).sa , (l_647 &= (l_646.sa = (l_645 = (l_587 = l_644[4]))))) , ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_648.sb3)).xyxyyyyy)).s4), (l_649 , l_650), 0x63L, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(abs(((VECTOR(uint8_t, 16))(0x2AL, ((VECTOR(uint8_t, 4))(l_651.zzzx)), l_652, l_653, ((VECTOR(uint8_t, 8))(0x88L)), 0xEEL))))).s5cd0)).even)), ((VECTOR(uint8_t, 2))(255UL)), 250UL)))))))).odd, ((VECTOR(uint8_t, 4))(0x54L))))), 0x475FL, ((VECTOR(uint16_t, 2))(65535UL)), 0x4A35L))))))).odd))), l_654, 4294967291UL, l_655, l_656[1][2][2], l_657, l_658[2], 9UL, 0x36F36526L)).s837d)).x)) , 18446744073709551615UL)) , 0xA85BD6FDL) , 3L) , l_660) , (void*)0);
                    l_591[1] = l_662;
                }
            }
            l_663 = (void*)0;
            l_670 = ((((VECTOR(uint32_t, 16))(l_664.xyxxyyyyyxyxxyyx)).sd , (l_665 , (((l_666 , l_667) , l_668) , 0x1228348AA8278D2FL))) , l_669);
        }
        unsigned int result = 0;
        result += l_534.y;
        result += l_534.x;
        result += l_535.s7;
        result += l_535.s6;
        result += l_535.s5;
        result += l_535.s4;
        result += l_535.s3;
        result += l_535.s2;
        result += l_535.s1;
        result += l_535.s0;
        result += l_536.y;
        result += l_536.x;
        result += l_537.y;
        result += l_537.x;
        result += l_538;
        result += l_539.sf;
        result += l_539.se;
        result += l_539.sd;
        result += l_539.sc;
        result += l_539.sb;
        result += l_539.sa;
        result += l_539.s9;
        result += l_539.s8;
        result += l_539.s7;
        result += l_539.s6;
        result += l_539.s5;
        result += l_539.s4;
        result += l_539.s3;
        result += l_539.s2;
        result += l_539.s1;
        result += l_539.s0;
        result += l_540.y;
        result += l_540.x;
        result += l_541.w;
        result += l_541.z;
        result += l_541.y;
        result += l_541.x;
        result += l_542;
        result += l_543;
        result += l_544.sf;
        result += l_544.se;
        result += l_544.sd;
        result += l_544.sc;
        result += l_544.sb;
        result += l_544.sa;
        result += l_544.s9;
        result += l_544.s8;
        result += l_544.s7;
        result += l_544.s6;
        result += l_544.s5;
        result += l_544.s4;
        result += l_544.s3;
        result += l_544.s2;
        result += l_544.s1;
        result += l_544.s0;
        result += l_545;
        result += l_546.w;
        result += l_546.z;
        result += l_546.y;
        result += l_546.x;
        result += l_547;
        result += l_548.sf;
        result += l_548.se;
        result += l_548.sd;
        result += l_548.sc;
        result += l_548.sb;
        result += l_548.sa;
        result += l_548.s9;
        result += l_548.s8;
        result += l_548.s7;
        result += l_548.s6;
        result += l_548.s5;
        result += l_548.s4;
        result += l_548.s3;
        result += l_548.s2;
        result += l_548.s1;
        result += l_548.s0;
        result += l_549.sf;
        result += l_549.se;
        result += l_549.sd;
        result += l_549.sc;
        result += l_549.sb;
        result += l_549.sa;
        result += l_549.s9;
        result += l_549.s8;
        result += l_549.s7;
        result += l_549.s6;
        result += l_549.s5;
        result += l_549.s4;
        result += l_549.s3;
        result += l_549.s2;
        result += l_549.s1;
        result += l_549.s0;
        result += l_550.sf;
        result += l_550.se;
        result += l_550.sd;
        result += l_550.sc;
        result += l_550.sb;
        result += l_550.sa;
        result += l_550.s9;
        result += l_550.s8;
        result += l_550.s7;
        result += l_550.s6;
        result += l_550.s5;
        result += l_550.s4;
        result += l_550.s3;
        result += l_550.s2;
        result += l_550.s1;
        result += l_550.s0;
        result += l_551.s7;
        result += l_551.s6;
        result += l_551.s5;
        result += l_551.s4;
        result += l_551.s3;
        result += l_551.s2;
        result += l_551.s1;
        result += l_551.s0;
        result += l_552.y;
        result += l_552.x;
        result += l_553;
        result += l_554;
        result += l_555;
        result += l_556;
        result += l_557;
        result += l_558;
        int l_559_i0;
        for (l_559_i0 = 0; l_559_i0 < 10; l_559_i0++) {
            result += l_559[l_559_i0];
        }
        result += l_575;
        result += l_576;
        atomic_add(&p_879->g_special_values[66 * get_linear_group_id() + 43], result);
    }
    else
    { /* block id: 271 */
        (1 + 1);
    }
    (*l_671) = (void*)0;
    return p_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_879->g_69 p_879->g_138 p_879->g_82 p_879->g_498 p_879->g_115
 * writes: p_879->g_69 p_879->g_138 p_879->g_137 p_879->g_468 p_879->g_135 p_879->g_115
 */
int32_t * func_19(uint16_t * p_20, uint64_t  p_21, int16_t  p_22, struct S1 * p_879)
{ /* block id: 180 */
    int32_t *l_511 = &p_879->g_468;
    int32_t l_523[3][4] = {{(-10L),(-1L),(-10L),(-10L)},{(-10L),(-1L),(-10L),(-10L)},{(-10L),(-1L),(-10L),(-10L)}};
    int32_t l_524 = 0x7F6C8A73L;
    int32_t l_525 = 0x2FF8CE0EL;
    uint32_t l_526 = 0x20B11D57L;
    int32_t *l_529 = &p_879->g_468;
    int i, j;
    for (p_22 = 0; (p_22 == 21); ++p_22)
    { /* block id: 183 */
        uint32_t l_494 = 2UL;
        for (p_879->g_69 = 0; (p_879->g_69 <= 11); ++p_879->g_69)
        { /* block id: 186 */
            for (p_879->g_138 = (-30); (p_879->g_138 <= 31); ++p_879->g_138)
            { /* block id: 189 */
                int32_t **l_487 = &p_879->g_251[0];
                int8_t *l_492 = &p_879->g_137;
                int32_t *l_493 = &p_879->g_468;
                (*l_493) = ((((p_21 < (p_879->g_82.s0 ^ (safe_rshift_func_uint8_t_u_u(0xD7L, 5)))) , l_487) != (void*)0) != (((*l_492) = ((GROUP_DIVERGE(2, 1) , (safe_mul_func_int16_t_s_s(0L, ((safe_add_func_uint64_t_u_u(0xC351EACD63220467L, p_22)) < (-10L))))) & p_22)) >= p_22));
            }
            ++l_494;
            if (p_21)
                continue;
        }
        (*p_879->g_498) = p_22;
    }
    for (p_879->g_69 = 27; (p_879->g_69 != 4); p_879->g_69--)
    { /* block id: 200 */
        int8_t l_512[9][5] = {{0x53L,(-1L),1L,0L,1L},{0x53L,(-1L),1L,0L,1L},{0x53L,(-1L),1L,0L,1L},{0x53L,(-1L),1L,0L,1L},{0x53L,(-1L),1L,0L,1L},{0x53L,(-1L),1L,0L,1L},{0x53L,(-1L),1L,0L,1L},{0x53L,(-1L),1L,0L,1L},{0x53L,(-1L),1L,0L,1L}};
        int32_t l_513 = 0x1A40A8ACL;
        int32_t *l_514 = &p_879->g_135[5][7][1];
        VECTOR(int32_t, 2) l_515 = (VECTOR(int32_t, 2))(0L, 0x5353FE9DL);
        int32_t *l_516 = &l_513;
        int32_t *l_517 = &p_879->g_135[9][2][0];
        int32_t *l_518 = &p_879->g_135[7][4][1];
        int32_t *l_519 = &p_879->g_468;
        int32_t *l_520 = &p_879->g_135[1][3][0];
        int32_t *l_521 = (void*)0;
        int32_t *l_522[8] = {&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1]};
        int i, j;
        if ((atomic_inc(&p_879->g_atomic_input[66 * get_linear_group_id() + 28]) == 4))
        { /* block id: 202 */
            uint8_t l_501 = 0xA9L;
            int32_t l_505 = 3L;
            int32_t *l_504 = &l_505;
            int32_t *l_506 = &l_505;
            int64_t l_507 = (-5L);
            int32_t l_508[9][8] = {{0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L},{0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L},{0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L},{0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L},{0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L},{0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L},{0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L},{0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L},{0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L,0x5BAD3398L}};
            int i, j;
            ++l_501;
            l_506 = l_504;
            l_508[0][3] &= l_507;
            unsigned int result = 0;
            result += l_501;
            result += l_505;
            result += l_507;
            int l_508_i0, l_508_i1;
            for (l_508_i0 = 0; l_508_i0 < 9; l_508_i0++) {
                for (l_508_i1 = 0; l_508_i1 < 8; l_508_i1++) {
                    result += l_508[l_508_i0][l_508_i1];
                }
            }
            atomic_add(&p_879->g_special_values[66 * get_linear_group_id() + 28], result);
        }
        else
        { /* block id: 206 */
            (1 + 1);
        }
        for (p_879->g_115 = 0; (p_879->g_115 <= 50); p_879->g_115 = safe_add_func_uint8_t_u_u(p_879->g_115, 5))
        { /* block id: 211 */
            return l_511;
        }
        ++l_526;
    }
    return l_529;
}


/* ------------------------------------------ */
/* 
 * reads : p_879->l_comm_values p_879->g_24 p_879->g_70 p_879->g_71 p_879->g_69 p_879->g_82 p_879->g_97 p_879->g_101 p_879->g_111 p_879->g_112 p_879->g_115 p_879->g_comm_values p_879->g_33.f0 p_879->g_123 p_879->g_137 p_879->g_138 p_879->g_145 p_879->g_146 p_879->g_149 p_879->g_150 p_879->g_141 p_879->g_35 p_879->g_143 p_879->g_322 p_879->g_33 p_879->g_135 p_879->g_120 p_879->g_366 p_879->g_117 p_879->g_376 p_879->g_140 p_879->g_452
 * writes: p_879->g_71 p_879->g_115 p_879->g_117 p_879->g_69 p_879->g_135 p_879->g_137 p_879->g_138 p_879->g_140 p_879->g_141 p_879->g_143 p_879->g_145 p_879->g_33.f0 p_879->g_33 p_879->g_120 p_879->g_24 p_879->g_404
 */
int8_t  func_25(uint32_t  p_26, struct S1 * p_879)
{ /* block id: 8 */
    uint64_t l_31 = 0x5661C443818264D9L;
    struct S0 **l_38 = (void*)0;
    struct S0 *l_39[4][7] = {{&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33},{&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33},{&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33},{&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33,&p_879->g_33}};
    uint16_t l_67 = 0UL;
    int32_t *l_129 = (void*)0;
    int32_t ***l_440[8][3] = {{&p_879->g_404[1],&p_879->g_404[2],&p_879->g_404[2]},{&p_879->g_404[1],&p_879->g_404[2],&p_879->g_404[2]},{&p_879->g_404[1],&p_879->g_404[2],&p_879->g_404[2]},{&p_879->g_404[1],&p_879->g_404[2],&p_879->g_404[2]},{&p_879->g_404[1],&p_879->g_404[2],&p_879->g_404[2]},{&p_879->g_404[1],&p_879->g_404[2],&p_879->g_404[2]},{&p_879->g_404[1],&p_879->g_404[2],&p_879->g_404[2]},{&p_879->g_404[1],&p_879->g_404[2],&p_879->g_404[2]}};
    int32_t **l_441 = &p_879->g_71;
    int16_t *l_448 = &p_879->g_120;
    VECTOR(uint16_t, 2) l_451 = (VECTOR(uint16_t, 2))(0xC770L, 0x48A3L);
    int8_t l_458[6][3][10] = {{{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L}},{{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L}},{{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L}},{{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L}},{{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L}},{{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L},{(-9L),(-9L),1L,4L,1L,0x73L,0x09L,0L,0x09L,0x73L}}};
    uint32_t l_459 = 8UL;
    int i, j, k;
    l_39[2][1] = func_28(l_31, p_879->l_comm_values[(safe_mod_func_uint32_t_u_u(p_879->tid, 47))], p_879);
    l_441 = func_40(&p_879->g_35, ((p_879->g_404[1] = func_46(func_52(((safe_lshift_func_uint8_t_u_u(1UL, 7)) , func_56(func_62(p_879->g_24, (l_31 < (0x0509L <= p_26)), l_67, l_67, p_879), &l_39[2][1], p_26, l_129, p_879->g_123, p_879)), p_879), &l_129, p_26, p_879->g_35, &p_879->g_35, p_879)) != (void*)0), p_879->g_322.s0, p_26, l_129, p_879);
    l_459 ^= (safe_add_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((0x48E7L == ((*l_448) = ((void*)0 != l_129))), ((safe_rshift_func_int8_t_s_u((((p_26 > ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(l_451.yxyxyyxy)).lo)))).z) || p_26) >= 0x058DL), ((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(0x4D6C4803CC9B171EL, 0x3B98A2F33FBCD18AL)).odd , ((FAKE_DIVERGE(p_879->global_2_offset, get_global_id(2), 10) , p_879->g_452) == ((safe_lshift_func_int8_t_s_u((safe_mod_func_uint64_t_u_u((((p_879->g_97.w , p_879->g_117[7][6][3]) || l_458[1][2][6]) <= 65528UL), p_26)), 3)) , (void*)0))), p_26, 1UL, 0x6A24A1891639A294L, ((VECTOR(uint64_t, 8))(0UL)), p_26, ((VECTOR(uint64_t, 2))(18446744073709551612UL)), 0UL)).s8 , p_879->g_138) != p_26))) , 0x8445L))), 7)), p_879->g_137));
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S0 * func_28(uint8_t  p_29, uint32_t  p_30, struct S1 * p_879)
{ /* block id: 9 */
    struct S0 *l_32 = &p_879->g_33;
    return l_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_879->g_35 p_879->g_33 p_879->g_322 p_879->g_366 p_879->g_135 p_879->g_69 p_879->g_140
 * writes: p_879->g_135 p_879->g_71 p_879->g_69 p_879->g_140
 */
int32_t ** func_40(struct S0 ** p_41, uint32_t  p_42, uint64_t  p_43, int8_t  p_44, int32_t * p_45, struct S1 * p_879)
{ /* block id: 152 */
    int32_t *l_405 = (void*)0;
    int32_t *l_406 = &p_879->g_135[2][2][1];
    int32_t *l_407 = (void*)0;
    int32_t *l_408[3];
    VECTOR(int32_t, 4) l_409 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L));
    int16_t l_410 = 0x0547L;
    int16_t l_411[7] = {0x0104L,(-2L),0x0104L,0x0104L,(-2L),0x0104L,0x0104L};
    uint16_t l_412 = 65535UL;
    VECTOR(uint8_t, 4) l_417 = (VECTOR(uint8_t, 4))(0x85L, (VECTOR(uint8_t, 2))(0x85L, 0xEDL), 0xEDL);
    VECTOR(uint8_t, 4) l_418 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 246UL), 246UL);
    uint8_t *l_419 = (void*)0;
    uint8_t *l_420 = (void*)0;
    uint8_t *l_421[4];
    int16_t l_422 = 8L;
    uint16_t *l_423 = &l_412;
    uint32_t l_430 = 4294967286UL;
    int32_t **l_438 = (void*)0;
    int i;
    for (i = 0; i < 3; i++)
        l_408[i] = (void*)0;
    for (i = 0; i < 4; i++)
        l_421[i] = (void*)0;
    l_412--;
    if (((*l_406) &= ((**p_41) , (((p_44 & FAKE_DIVERGE(p_879->local_1_offset, get_local_id(1), 10)) && (p_879->g_322.s8 <= (safe_rshift_func_uint8_t_u_u((l_422 = (((VECTOR(uint8_t, 4))(l_417.zywy)).z <= ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(l_418.zwzz)))), p_879->g_366.x, 0x62L, 0x6FL, 3UL)).s0)), 6)))) == (--(*l_423))))))
    { /* block id: 157 */
        int32_t **l_426 = &p_879->g_71;
        (*l_426) = l_408[0];
    }
    else
    { /* block id: 159 */
        int32_t **l_429 = &l_405;
        for (p_879->g_69 = (-20); (p_879->g_69 == (-30)); p_879->g_69 = safe_sub_func_int16_t_s_s(p_879->g_69, 2))
        { /* block id: 162 */
            return &p_879->g_71;
        }
        return &p_879->g_71;
    }
    --l_430;
    for (p_879->g_140 = (-22); (p_879->g_140 >= (-4)); p_879->g_140++)
    { /* block id: 170 */
        uint32_t l_435 = 4294967294UL;
        l_435++;
    }
    return l_438;
}


/* ------------------------------------------ */
/* 
 * reads : p_879->g_35 p_879->g_33 p_879->l_comm_values p_879->g_145 p_879->g_101 p_879->g_24 p_879->g_135 p_879->g_120 p_879->g_69 p_879->g_366 p_879->g_117 p_879->g_97 p_879->g_376 p_879->g_111
 * writes: p_879->g_33 p_879->g_120 p_879->g_24 p_879->g_135 p_879->g_69
 */
int32_t ** func_46(struct S0 ** p_47, int32_t ** p_48, int32_t  p_49, struct S0 * p_50, struct S0 ** p_51, struct S1 * p_879)
{ /* block id: 119 */
    VECTOR(int32_t, 2) l_328 = (VECTOR(int32_t, 2))((-10L), (-8L));
    VECTOR(int32_t, 8) l_329 = (VECTOR(int32_t, 8))(0x6D8CB658L, (VECTOR(int32_t, 4))(0x6D8CB658L, (VECTOR(int32_t, 2))(0x6D8CB658L, 0x47F1546FL), 0x47F1546FL), 0x47F1546FL, 0x6D8CB658L, 0x47F1546FL);
    VECTOR(int32_t, 2) l_330 = (VECTOR(int32_t, 2))(0x14D9263AL, (-1L));
    struct S0 *l_331 = &p_879->g_33;
    VECTOR(uint8_t, 8) l_336 = (VECTOR(uint8_t, 8))(0xD7L, (VECTOR(uint8_t, 4))(0xD7L, (VECTOR(uint8_t, 2))(0xD7L, 252UL), 252UL), 252UL, 0xD7L, 252UL);
    int16_t *l_347 = (void*)0;
    int16_t *l_348 = &p_879->g_120;
    uint16_t *l_353 = &p_879->g_24;
    uint16_t l_354[3];
    uint32_t l_355 = 0x418A2515L;
    int32_t *l_356 = &p_879->g_135[0][1][0];
    int32_t *l_357 = &p_879->g_69;
    VECTOR(int16_t, 16) l_365 = (VECTOR(int16_t, 16))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 0x7BFCL), 0x7BFCL), 0x7BFCL, (-3L), 0x7BFCL, (VECTOR(int16_t, 2))((-3L), 0x7BFCL), (VECTOR(int16_t, 2))((-3L), 0x7BFCL), (-3L), 0x7BFCL, (-3L), 0x7BFCL);
    int32_t **l_367 = (void*)0;
    int32_t *l_372 = (void*)0;
    struct S0 **l_375 = &p_879->g_35;
    VECTOR(uint16_t, 16) l_380 = (VECTOR(uint16_t, 16))(0x0685L, (VECTOR(uint16_t, 4))(0x0685L, (VECTOR(uint16_t, 2))(0x0685L, 0xBD42L), 0xBD42L), 0xBD42L, 0x0685L, 0xBD42L, (VECTOR(uint16_t, 2))(0x0685L, 0xBD42L), (VECTOR(uint16_t, 2))(0x0685L, 0xBD42L), 0x0685L, 0xBD42L, 0x0685L, 0xBD42L);
    int32_t l_389 = 0x4F35DFCAL;
    uint32_t l_390[4];
    int8_t l_396[4];
    uint16_t l_397 = 0x1832L;
    uint8_t l_403 = 4UL;
    int i;
    for (i = 0; i < 3; i++)
        l_354[i] = 0x6CD8L;
    for (i = 0; i < 4; i++)
        l_390[i] = 1UL;
    for (i = 0; i < 4; i++)
        l_396[i] = 0x2CL;
    (*l_357) = (((*p_879->g_35) = (**p_51)) , ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x4BF25A78L, 1L)))), ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(l_328.yxxxyyyy)).even, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_329.s2246563030360325)).s04)).yxyyxxyx, ((VECTOR(int32_t, 4))(l_330.xyxx)).zxzzxywy))).hi, ((VECTOR(int32_t, 8))(0x0EC8B2FAL, 4L, ((l_331 != (void*)0) || ((*l_356) &= ((((((l_330.y |= (safe_mul_func_uint16_t_u_u((((safe_add_func_uint16_t_u_u((p_879->l_comm_values[(safe_mod_func_uint32_t_u_u(p_879->tid, 47))] > ((VECTOR(uint8_t, 16))(l_336.s3514423604440105)).s7), ((safe_div_func_uint8_t_u_u((0x59L != (safe_lshift_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((0x24E1L > ((*l_353) = ((((((VECTOR(int64_t, 2))(0x0EBED17D936634F7L, 0x1F149971C26E0854L)).even != p_49) == ((*l_348) = (safe_mod_func_uint64_t_u_u(p_879->g_145.y, ((VECTOR(int64_t, 2))(0x3E7118666125E4D6L, 0x08A14A3AD4D643D6L)).hi)))) | (safe_sub_func_int64_t_s_s(((safe_add_func_uint64_t_u_u((1L <= l_336.s0), 0UL)) && 0x22L), l_328.x))) == 0L))), 0x6803L)), l_354[0]))), p_49)) || 9L))) >= p_49) ^ l_355), 0x9FEAL))) | p_879->g_101.x) ^ 7UL) || p_879->g_24) == 0xD84C4E2FF743EA74L) || 0UL))), (*l_356), 0x195E21B5L, ((VECTOR(int32_t, 2))(0x1DA4165CL)), 1L)).hi, ((VECTOR(int32_t, 4))(1L))))), 0x586A5192L, 0x45886929L, 0x73B99123L, 0x45914387L)).hi))), 0x14A2C94BL, (-6L))).s73, ((VECTOR(int32_t, 2))((-1L)))))).yyxxxxyy, ((VECTOR(int32_t, 8))((-1L)))))).s2);
    for (p_879->g_120 = (-6); (p_879->g_120 >= (-5)); p_879->g_120 = safe_add_func_int32_t_s_s(p_879->g_120, 9))
    { /* block id: 128 */
        int32_t l_360 = 0x323B5B30L;
        int32_t ***l_368 = (void*)0;
        int32_t ***l_369 = &l_367;
        VECTOR(uint16_t, 4) l_379 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x4EEEL), 0x4EEEL);
        uint16_t l_381 = 7UL;
        int32_t *l_382 = (void*)0;
        int32_t *l_383 = &p_879->g_135[2][2][1];
        int32_t *l_384 = (void*)0;
        int32_t *l_385 = (void*)0;
        int32_t *l_386 = &p_879->g_135[6][7][0];
        int32_t *l_387 = &p_879->g_135[2][2][1];
        int32_t *l_388[7][10] = {{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1]},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1]},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1]},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1]},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1]},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1]},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0,&p_879->g_135[2][2][1]}};
        int i, j;
        (*l_356) = ((l_360 == (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((p_49 || ((VECTOR(int16_t, 2))(l_365.sbc)).lo) || (*l_357)) > ((((VECTOR(uint32_t, 8))(l_360, 0UL, 4294967295UL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(p_879->g_366.xyxxyxyy)).lo)), 0xC1FD13DDL)).s1 , 0x72616FFFL) || l_360)), (((*l_369) = l_367) != &p_879->g_251[0]))), (((safe_mul_func_int16_t_s_s(((l_372 == (*p_48)) && p_49), (*l_356))) >= p_879->g_117[1][2][2]) , FAKE_DIVERGE(p_879->group_2_offset, get_group_id(2), 10))))) ^ FAKE_DIVERGE(p_879->local_0_offset, get_local_id(0), 10));
        (*l_356) = ((0xDAFDL == p_879->g_366.x) == (((((~(safe_sub_func_uint64_t_u_u((l_375 != &p_879->g_35), p_879->g_97.x))) & p_49) < ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(1UL, 0x900AL, ((VECTOR(uint16_t, 2))(p_879->g_376.wz)), GROUP_DIVERGE(1, 1), 0xB7FCL, p_879->g_111.s4, ((*l_353)--), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(l_379.xyyxzzyyxywwyxzy)))).sab77, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(65527UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_380.sb8)))), 0UL)).hi)).yxxy))).odd, ((VECTOR(uint16_t, 4))(0x6822L, l_381, 0x9A70L, 0x2249L)).odd, ((VECTOR(uint16_t, 2))(65535UL))))), ((VECTOR(uint16_t, 2))(0x73B2L)), ((VECTOR(uint16_t, 2))(0xECFAL))))).yyyyyxyy, ((VECTOR(uint16_t, 8))(65528UL)), ((VECTOR(uint16_t, 8))(0x9530L))))).s2, ((VECTOR(uint16_t, 4))(0xB8F0L)), 0xB378L, 65535UL, 65529UL)))).s4d)).hi) == 0xB599706261C0F79AL) < p_49));
        if ((*l_357))
            break;
        --l_390[1];
    }
    for (p_49 = 0; (p_49 <= 6); ++p_49)
    { /* block id: 138 */
        int32_t *l_395[4];
        int i;
        for (i = 0; i < 4; i++)
            l_395[i] = (void*)0;
        ++l_397;
        if (p_49)
            break;
        for (l_389 = 9; (l_389 < 13); ++l_389)
        { /* block id: 143 */
            uint32_t l_402[3];
            int i;
            for (i = 0; i < 3; i++)
                l_402[i] = 0x60701837L;
            (*l_356) ^= l_402[2];
            if (l_403)
                continue;
            if (p_49)
                continue;
        }
    }
    (*l_357) |= 0x4C5F00BFL;
    return &p_879->g_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_879->g_137 p_879->g_138 p_879->g_145 p_879->g_146 p_879->g_149 p_879->g_150 p_879->g_82 p_879->g_115 p_879->g_111 p_879->g_33.f0 p_879->g_141 p_879->g_112 p_879->g_35 p_879->g_143 p_879->g_322 p_879->g_33
 * writes: p_879->g_135 p_879->g_137 p_879->g_138 p_879->g_140 p_879->g_141 p_879->g_143 p_879->g_115 p_879->g_145 p_879->g_33.f0 p_879->g_33
 */
struct S0 ** func_52(int32_t ** p_53, struct S1 * p_879)
{ /* block id: 40 */
    uint8_t l_133[2][1];
    int8_t *l_134 = (void*)0;
    int8_t *l_136 = &p_879->g_137;
    int32_t *l_139 = &p_879->g_140;
    int8_t *l_142 = &p_879->g_143;
    VECTOR(int32_t, 16) l_147 = (VECTOR(int32_t, 16))(0x76550C97L, (VECTOR(int32_t, 4))(0x76550C97L, (VECTOR(int32_t, 2))(0x76550C97L, 0x4A33C600L), 0x4A33C600L), 0x4A33C600L, 0x76550C97L, 0x4A33C600L, (VECTOR(int32_t, 2))(0x76550C97L, 0x4A33C600L), (VECTOR(int32_t, 2))(0x76550C97L, 0x4A33C600L), 0x76550C97L, 0x4A33C600L, 0x76550C97L, 0x4A33C600L);
    VECTOR(int32_t, 16) l_148 = (VECTOR(int32_t, 16))(0x6FC972B0L, (VECTOR(int32_t, 4))(0x6FC972B0L, (VECTOR(int32_t, 2))(0x6FC972B0L, (-1L)), (-1L)), (-1L), 0x6FC972B0L, (-1L), (VECTOR(int32_t, 2))(0x6FC972B0L, (-1L)), (VECTOR(int32_t, 2))(0x6FC972B0L, (-1L)), 0x6FC972B0L, (-1L), 0x6FC972B0L, (-1L));
    VECTOR(int32_t, 16) l_151 = (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 3L), 3L), 3L, (-3L), 3L, (VECTOR(int32_t, 2))((-3L), 3L), (VECTOR(int32_t, 2))((-3L), 3L), (-3L), 3L, (-3L), 3L);
    VECTOR(int32_t, 2) l_152 = (VECTOR(int32_t, 2))((-8L), 7L);
    uint8_t l_159[3][4][10] = {{{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL},{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL},{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL},{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL}},{{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL},{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL},{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL},{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL}},{{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL},{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL},{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL},{0xD1L,1UL,0UL,0UL,0x9EL,0UL,0UL,0x9EL,0UL,0UL}}};
    int32_t l_160 = 1L;
    uint32_t *l_161 = &p_879->g_115;
    uint32_t l_162 = 1UL;
    struct S0 l_197 = {6UL};
    uint64_t *l_218[9][9] = {{&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123},{&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123},{&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123},{&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123},{&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123},{&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123},{&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123},{&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123},{&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123,&p_879->g_138,&p_879->g_138,&p_879->g_138,&p_879->g_123}};
    int16_t l_224[2][4] = {{0L,0L,0L,0L},{0L,0L,0L,0L}};
    uint32_t l_225 = 4294967295UL;
    VECTOR(int32_t, 8) l_232 = (VECTOR(int32_t, 8))(0x5F6277E4L, (VECTOR(int32_t, 4))(0x5F6277E4L, (VECTOR(int32_t, 2))(0x5F6277E4L, 0x495E6251L), 0x495E6251L), 0x495E6251L, 0x5F6277E4L, 0x495E6251L);
    VECTOR(uint64_t, 8) l_237 = (VECTOR(uint64_t, 8))(0x1D656DAAFBEA9577L, (VECTOR(uint64_t, 4))(0x1D656DAAFBEA9577L, (VECTOR(uint64_t, 2))(0x1D656DAAFBEA9577L, 1UL), 1UL), 1UL, 0x1D656DAAFBEA9577L, 1UL);
    int32_t **l_252[10];
    int32_t l_261 = (-9L);
    uint32_t l_262 = 0x550386D1L;
    struct S0 **l_309 = &p_879->g_35;
    uint16_t *l_317[4][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t **l_316 = &l_317[0][5];
    uint16_t ***l_318 = &l_316;
    uint8_t l_319 = 1UL;
    int32_t *l_325 = (void*)0;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_133[i][j] = 0x43L;
    }
    for (i = 0; i < 10; i++)
        l_252[i] = &p_879->g_251[0];
    if ((((((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(((*l_142) = (p_53 == ((p_879->g_141 = (+(((*l_136) |= (p_879->g_135[2][2][1] = (+l_133[0][0]))) , ((*l_139) = (p_879->g_138 ^= 9L))))) , (void*)0))), (!l_133[1][0]), (((safe_unary_minus_func_int8_t_s(0x70L)) , ((((*l_161) = ((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_879->g_145.xzzwywwxywxyxzwx)).s76)))).yyyxxxxx, ((VECTOR(int32_t, 2))((-4L), 0x42736A97L)).yxxxxyyx, ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(p_879->g_146.zzyyxzxwxyzwxwxz)).sf6, ((VECTOR(int32_t, 8))(l_147.s1b998dd8)).s33))))).yxyxyyxy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_148.sdb683c2d)).s54)).yxxxxyyxyxyyxyxy)))))).odd, ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_879->g_149.xw)))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_879->g_150.s06032457)).s1323764451174700)).s66, ((VECTOR(int32_t, 4))(l_151.s445e)).even))).xxyyyxyy, ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(l_152.xy)).xxyyyxxyxxyxyxxy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((l_151.sa < (((((safe_mul_func_int8_t_s_s(l_152.y, (((((safe_mod_func_uint8_t_u_u(l_159[0][1][7], l_160)) && (-1L)) < 0UL) , p_879->g_82.s0) && 0x30L))) < (-9L)) == 0L) == 253UL) & GROUP_DIVERGE(2, 1))) , l_133[0][0]), 0x78ACACBFL, 0x657E3DCAL, 1L)).odd)).xyyyxxxyxyyxxyxy))).odd))))))))), ((VECTOR(int32_t, 8))((-3L)))))).even, ((VECTOR(int32_t, 4))(4L))))).y) , FAKE_DIVERGE(p_879->global_0_offset, get_global_id(0), 10)) ^ l_148.se)) & l_162), 0x12L, 0x31L, 0x58L, 0x23L, 1L)).s0, (-4L))) , p_879->g_115) > l_159[1][2][7]) , p_879->g_111.s1) ^ l_151.s5))
    { /* block id: 48 */
        uint64_t *l_175 = &p_879->g_123;
        int8_t l_176[1];
        uint16_t **l_181 = (void*)0;
        uint16_t *l_183 = &p_879->g_24;
        uint16_t **l_182 = &l_183;
        int32_t *l_185 = (void*)0;
        int32_t *l_186[5];
        uint8_t l_198 = 0x3FL;
        struct S0 *l_199 = &l_197;
        uint16_t l_200 = 1UL;
        int i;
        for (i = 0; i < 1; i++)
            l_176[i] = 8L;
        for (i = 0; i < 5; i++)
            l_186[i] = (void*)0;
        l_147.se ^= (safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u(0x95L, 3)), (safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 4))(0x2569L, ((VECTOR(int16_t, 2))(0x2B5EL, 0L)), 0x6478L)).wxxyzxwz, ((VECTOR(int16_t, 16))(0L, 0x7324L, 0x782AL, (-1L), 0x6CDAL, (safe_mul_func_uint8_t_u_u((((safe_mul_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u(((((*l_182) = &p_879->g_24) == &p_879->g_24) & l_151.s4), 1UL)) > l_148.s6), l_133[0][0])) || l_176[0]) ^ 0x43437DABL), 0x6BL)), l_152.y, ((VECTOR(int16_t, 2))((-5L))), p_879->g_137, l_151.s7, ((VECTOR(int16_t, 4))(0x460CL)), (-8L))).hi))).s7625265166222175)), ((VECTOR(uint16_t, 16))(65532UL))))).s0, l_176[0]))));
        p_879->g_145.w &= ((safe_mod_func_int32_t_s_s((l_151.sb | l_133[0][0]), ((VECTOR(int32_t, 4))(0x7469F826L, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(0x5C314968L, ((VECTOR(int32_t, 2))(0x5A7869C7L, 8L)), ((VECTOR(int32_t, 2))(0x364F287FL, 0x743C508AL)), (((safe_rshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((((((l_148.sb , &p_879->g_24) != &p_879->g_24) , p_879->g_149.z) | l_198) , l_199) == &p_879->g_33), FAKE_DIVERGE(p_879->global_1_offset, get_global_id(1), 10))), l_200)), 3)) <= p_879->g_111.s1) , 0x73E7C291L), 1L, 0L)).s23, ((VECTOR(int32_t, 2))(5L)), ((VECTOR(int32_t, 2))(0x2FB22D0EL))))), 0x44987A5CL)).y)) <= 1L);
        for (l_162 = 17; (l_162 >= 56); l_162 = safe_add_func_uint32_t_u_u(l_162, 6))
        { /* block id: 55 */
            int32_t l_203 = 0x795C8250L;
            l_203 &= l_148.sf;
        }
        for (p_879->g_33.f0 = 0; (p_879->g_33.f0 > 24); p_879->g_33.f0++)
        { /* block id: 60 */
            int32_t l_206 = 0x7CEADC90L;
            VECTOR(int64_t, 2) l_207 = (VECTOR(int64_t, 2))(0x2000E44F0659C4BCL, (-2L));
            int32_t l_208 = 0x23F32CDCL;
            uint16_t l_209 = 0x5ABDL;
            uint16_t l_212 = 0x2593L;
            int i;
            ++l_209;
            if (l_212)
                continue;
            for (p_879->g_141 = 0; (p_879->g_141 > (-3)); p_879->g_141--)
            { /* block id: 65 */
                int32_t **l_217 = &l_186[1];
                uint16_t l_223 = 65534UL;
                int32_t **l_226 = &l_139;
                l_225 &= (safe_mul_func_uint16_t_u_u((((((&l_208 != ((*l_217) = (l_197 , l_139))) | 0x7EL) | ((VECTOR(int64_t, 16))((~((p_879->g_145.y , l_218[0][5]) == (void*)0)), 1L, ((VECTOR(int64_t, 2))(0x284332C901CCD87EL, 0x6986D460A8B19DD5L)), 0x721A587B83316E08L, 0x1A2D0D2D7D5BE434L, 8L, (-1L), (l_206 |= (safe_div_func_uint64_t_u_u(p_879->g_145.y, ((safe_mod_func_int8_t_s_s(p_879->g_111.s5, p_879->g_150.s6)) ^ p_879->g_112.x)))), 0x742942D0C3387C6CL, ((VECTOR(int64_t, 2))(0x111C8FBDD38DD8F4L)), l_223, (-9L), 0x6B62B178CEC19D3CL, (-1L))).sa) == l_224[1][1]) & p_879->g_111.s1), GROUP_DIVERGE(1, 1)));
                if ((&p_879->g_140 == ((*l_226) = l_185)))
                { /* block id: 70 */
                    return &p_879->g_35;
                }
                else
                { /* block id: 72 */
                    return &p_879->g_35;
                }
            }
        }
    }
    else
    { /* block id: 77 */
        VECTOR(uint64_t, 4) l_231 = (VECTOR(uint64_t, 4))(3UL, (VECTOR(uint64_t, 2))(3UL, 0x46F39457B1607F97L), 0x46F39457B1607F97L);
        VECTOR(uint32_t, 4) l_235 = (VECTOR(uint32_t, 4))(0x9061F160L, (VECTOR(uint32_t, 2))(0x9061F160L, 8UL), 8UL);
        VECTOR(uint32_t, 8) l_236 = (VECTOR(uint32_t, 8))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 4294967295UL), 4294967295UL), 4294967295UL, 8UL, 4294967295UL);
        uint8_t *l_242 = &l_133[0][0];
        uint32_t *l_249[3];
        uint8_t *l_259 = (void*)0;
        uint8_t *l_260 = &l_159[0][1][7];
        uint16_t *l_263 = &p_879->g_24;
        uint16_t **l_264 = &l_263;
        struct S0 l_265 = {4294967295UL};
        int32_t l_272[10][5][1] = {{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}},{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}},{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}},{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}},{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}},{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}},{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}},{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}},{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}},{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}}};
        uint32_t l_275 = 7UL;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_249[i] = &l_225;
        if ((((*l_264) = l_263) != &p_879->g_24))
        { /* block id: 86 */
            VECTOR(uint8_t, 2) l_266 = (VECTOR(uint8_t, 2))(255UL, 0UL);
            int i;
            (*p_879->g_35) = l_265;
            ++l_266.y;
        }
        else
        { /* block id: 89 */
            int32_t *l_271[7][9][4] = {{{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]}},{{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]}},{{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]}},{{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]}},{{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]}},{{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]}},{{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]},{(void*)0,(void*)0,&p_879->g_69,&p_879->g_135[4][5][0]}}};
            int i, j, k;
            l_272[5][1][0] &= (safe_sub_func_uint8_t_u_u(p_879->g_111.s1, (-9L)));
            l_232.s6 |= l_272[5][1][0];
            for (p_879->g_143 = 0; (p_879->g_143 > (-5)); p_879->g_143 = safe_sub_func_int64_t_s_s(p_879->g_143, 5))
            { /* block id: 94 */
                return &p_879->g_35;
            }
            l_275++;
        }
        for (p_879->g_33.f0 = 0; (p_879->g_33.f0 <= 31); p_879->g_33.f0++)
        { /* block id: 101 */
            int32_t *l_280 = &l_272[6][0][0];
            int32_t *l_281 = &p_879->g_69;
            int32_t *l_282 = &p_879->g_69;
            int32_t *l_283 = (void*)0;
            int32_t *l_284 = &l_272[2][2][0];
            int32_t *l_285 = &p_879->g_69;
            int32_t *l_286 = (void*)0;
            int32_t *l_287 = (void*)0;
            int32_t *l_288 = &p_879->g_135[2][2][1];
            int32_t *l_289 = (void*)0;
            int32_t *l_290[6] = {&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1],&p_879->g_135[2][2][1]};
            uint16_t l_292 = 0xB29BL;
            int i;
            ++l_292;
        }
    }
    if ((atomic_inc(&p_879->g_atomic_input[66 * get_linear_group_id() + 35]) == 2))
    { /* block id: 106 */
        int32_t l_295[4][9] = {{0x5D51DD6CL,0x5D51DD6CL,1L,0L,0x6073B225L,0L,1L,0x5D51DD6CL,0x5D51DD6CL},{0x5D51DD6CL,0x5D51DD6CL,1L,0L,0x6073B225L,0L,1L,0x5D51DD6CL,0x5D51DD6CL},{0x5D51DD6CL,0x5D51DD6CL,1L,0L,0x6073B225L,0L,1L,0x5D51DD6CL,0x5D51DD6CL},{0x5D51DD6CL,0x5D51DD6CL,1L,0L,0x6073B225L,0L,1L,0x5D51DD6CL,0x5D51DD6CL}};
        uint8_t l_296 = 0x1BL;
        int16_t l_299 = 0x413DL;
        VECTOR(int32_t, 2) l_300 = (VECTOR(int32_t, 2))((-1L), (-1L));
        uint32_t l_301 = 1UL;
        uint32_t l_302 = 0x56B2D733L;
        uint16_t l_303 = 65531UL;
        int32_t *l_304 = (void*)0;
        int32_t l_306 = 0x426A8E26L;
        int32_t *l_305 = &l_306;
        int i, j;
        ++l_296;
        l_303 ^= (l_302 = (l_299 , (l_300.y , l_301)));
        l_304 = (l_305 = l_304);
        unsigned int result = 0;
        int l_295_i0, l_295_i1;
        for (l_295_i0 = 0; l_295_i0 < 4; l_295_i0++) {
            for (l_295_i1 = 0; l_295_i1 < 9; l_295_i1++) {
                result += l_295[l_295_i0][l_295_i1];
            }
        }
        result += l_296;
        result += l_299;
        result += l_300.y;
        result += l_300.x;
        result += l_301;
        result += l_302;
        result += l_303;
        result += l_306;
        atomic_add(&p_879->g_special_values[66 * get_linear_group_id() + 35], result);
    }
    else
    { /* block id: 112 */
        (1 + 1);
    }
    atomic_xor(&p_879->l_atomic_reduction[0], (safe_lshift_func_uint8_t_u_s(8UL, ((&p_879->g_35 == l_309) && 0UL))));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_879->v_collective += p_879->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    l_148.s5 = ((((safe_div_func_int16_t_s_s((+(safe_lshift_func_uint16_t_u_s((l_133[1][0] < l_261), ((!(l_147.se == (((*l_318) = l_316) == (l_319 , &l_317[0][5])))) & ((safe_add_func_int16_t_s_s((((VECTOR(int32_t, 8))(p_879->g_322.sc7ec2a86)).s7 , (FAKE_DIVERGE(p_879->global_2_offset, get_global_id(2), 10) & ((**l_309) , l_151.sa))), 0x9172L)) != l_224[1][1]))))), l_159[2][2][8])) >= l_159[0][1][6]) ^ 0UL) , l_162);
    return l_309;
}


/* ------------------------------------------ */
/* 
 * reads : p_879->g_70 p_879->g_71
 * writes: p_879->g_71
 */
int32_t ** func_56(uint16_t * p_57, struct S0 ** p_58, int32_t  p_59, int32_t * p_60, int32_t  p_61, struct S1 * p_879)
{ /* block id: 32 */
    int32_t **l_130 = &p_879->g_71;
    int i, j;
    (*l_130) = &p_61;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_879->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 47)), permutations[(safe_mod_func_uint32_t_u_u(0x4540B396L, 10))][(safe_mod_func_uint32_t_u_u(p_879->tid, 47))]));
    (*l_130) = (*p_879->g_70);
    (*p_879->g_71) = ((VECTOR(int32_t, 2))(0x2ACE469DL, 1L)).odd;
    return &p_879->g_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_879->g_70 p_879->l_comm_values p_879->g_71 p_879->g_69 p_879->g_82 p_879->g_97 p_879->g_101 p_879->g_111 p_879->g_112 p_879->g_115 p_879->g_comm_values p_879->g_33.f0
 * writes: p_879->g_71 p_879->g_115 p_879->g_117 p_879->g_69
 */
uint16_t * func_62(uint64_t  p_63, int32_t  p_64, uint64_t  p_65, int8_t  p_66, struct S1 * p_879)
{ /* block id: 12 */
    int32_t *l_68 = &p_879->g_69;
    VECTOR(uint8_t, 16) l_98 = (VECTOR(uint8_t, 16))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 0xEEL), 0xEEL), 0xEEL, 252UL, 0xEEL, (VECTOR(uint8_t, 2))(252UL, 0xEEL), (VECTOR(uint8_t, 2))(252UL, 0xEEL), 252UL, 0xEEL, 252UL, 0xEEL);
    VECTOR(uint8_t, 2) l_99 = (VECTOR(uint8_t, 2))(0x12L, 0xB3L);
    VECTOR(uint8_t, 16) l_100 = (VECTOR(uint8_t, 16))(0xB2L, (VECTOR(uint8_t, 4))(0xB2L, (VECTOR(uint8_t, 2))(0xB2L, 0x2DL), 0x2DL), 0x2DL, 0xB2L, 0x2DL, (VECTOR(uint8_t, 2))(0xB2L, 0x2DL), (VECTOR(uint8_t, 2))(0xB2L, 0x2DL), 0xB2L, 0x2DL, 0xB2L, 0x2DL);
    VECTOR(uint8_t, 2) l_102 = (VECTOR(uint8_t, 2))(253UL, 0xF6L);
    VECTOR(uint8_t, 2) l_103 = (VECTOR(uint8_t, 2))(0x8DL, 0xE6L);
    VECTOR(uint8_t, 4) l_104 = (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 5UL), 5UL);
    VECTOR(uint8_t, 2) l_105 = (VECTOR(uint8_t, 2))(0xCDL, 0UL);
    VECTOR(uint8_t, 2) l_106 = (VECTOR(uint8_t, 2))(0xF7L, 253UL);
    VECTOR(uint8_t, 2) l_107 = (VECTOR(uint8_t, 2))(4UL, 0x10L);
    VECTOR(uint8_t, 2) l_108 = (VECTOR(uint8_t, 2))(7UL, 0x2FL);
    uint32_t *l_113 = (void*)0;
    uint32_t *l_114 = &p_879->g_115;
    int64_t *l_116 = &p_879->g_117[8][3][0];
    VECTOR(uint32_t, 8) l_118 = (VECTOR(uint32_t, 8))(0xFD216E5EL, (VECTOR(uint32_t, 4))(0xFD216E5EL, (VECTOR(uint32_t, 2))(0xFD216E5EL, 0x75D212FFL), 0x75D212FFL), 0x75D212FFL, 0xFD216E5EL, 0x75D212FFL);
    int16_t *l_119[9] = {&p_879->g_120,&p_879->g_120,&p_879->g_120,&p_879->g_120,&p_879->g_120,&p_879->g_120,&p_879->g_120,&p_879->g_120,&p_879->g_120};
    int32_t l_121 = 0x3A5E1858L;
    uint64_t *l_122[10] = {&p_879->g_123,&p_879->g_123,&p_879->g_123,&p_879->g_123,&p_879->g_123,&p_879->g_123,&p_879->g_123,&p_879->g_123,&p_879->g_123,&p_879->g_123};
    int i;
    (*p_879->g_70) = l_68;
    if (((((*l_68) = ((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((p_879->l_comm_values[(safe_mod_func_uint32_t_u_u(p_879->tid, 47))] == (((**p_879->g_70) > (safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(((((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(p_879->g_82.s44313107)).s07)).lo, p_64)) > (((VECTOR(int64_t, 2))(0x2361AE7D51263067L, 0x6FD7F9B64A474477L)).lo == 0x76C077406462EF7CL)) , (*l_68)) , ((safe_mod_func_int16_t_s_s((l_121 = (safe_lshift_func_int16_t_s_u((safe_add_func_int16_t_s_s(((safe_div_func_int64_t_s_s(((*l_116) = (safe_rshift_func_int16_t_s_s((((FAKE_DIVERGE(p_879->global_2_offset, get_global_id(2), 10) > (safe_mod_func_uint32_t_u_u((((~((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 8))(p_879->g_97.wxwyxzyx)).s0012473711021074, ((VECTOR(uint8_t, 4))(l_98.sa102)).zxwxyzzwxyzzwxxw))).hi)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_99.yxyyxyyy)).s03)), ((void*)0 != l_68), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(l_100.sdf81c58c9c9652fb)), ((VECTOR(uint8_t, 2))(p_879->g_101.xx)).xxxyyyxxyxxyyyyx))), ((VECTOR(uint8_t, 4))(l_102.xyxx)).xwxzzyxyxxwxwyxz, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 2))(l_103.yy)), ((VECTOR(uint8_t, 16))(l_104.zzzxzyxwzywyzyzx)).s93))).xxxx)).yxxywwzzwwxwzwzx))))).sc17b, ((VECTOR(uint8_t, 2))(1UL, 0xCBL)).yxxy))).even)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 16))(l_105.xyyxyxyyxyyxyyxy)).sc014))).zywxzxxywxxyywxy)).sb4, ((VECTOR(uint8_t, 8))(l_106.yyxxxxyx)).s30, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 16))(l_107.yyyyyxxyxyxyyyyy)).s1c77, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_108.xxyyyxxy)).s3663066367172522)).sceb1))))).hi, ((VECTOR(uint8_t, 4))((safe_sub_func_uint32_t_u_u((0x3CEB4B622C3304EDL <= ((((*l_114) ^= (+((((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 2))(p_879->g_111.s00)).xyyx))).xzxzxwyz)).s31)).odd >= ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(p_879->g_112.xxzwxyzyyzxyyyxz)).hi, (uint8_t)(*l_68)))).odd)).even))).yyyy, (uint8_t)(*l_68)))).odd)), 8UL, 0x44L)), p_879->g_101.x, ((VECTOR(uint8_t, 4))(0UL)), 0UL, ((VECTOR(uint8_t, 2))(2UL)), ((VECTOR(uint8_t, 4))(1UL)))).sc) , GROUP_DIVERGE(0, 1)))) && (*p_879->g_71)) & (-1L))), (*l_68))), ((VECTOR(uint8_t, 2))(0x11L)), 0UL)).odd))), 0xBEL, 0xB7L)), 0x83L, 0xF7L, 0xE3L, 0x4FL)).s36))).yyyyyxyxyxyyxxxx)).s08, ((VECTOR(uint8_t, 2))(0x06L)), ((VECTOR(uint8_t, 2))(0x03L))))))), 0x71L))))).s6, p_879->g_comm_values[p_879->tid])) , (*l_68))) , (*p_879->g_71)) & GROUP_DIVERGE(0, 1)), (-1L)))) < (*l_68)) | GROUP_DIVERGE(1, 1)), 13))), l_118.s0)) <= 9L), p_879->g_33.f0)), 0))), 0x2EB3L)) >= (*l_68))), p_64)), (*l_68))), (*l_68)))) > 6UL)) || GROUP_DIVERGE(1, 1)), (*l_68), 18446744073709551613UL, p_879->g_97.z, GROUP_DIVERGE(1, 1), 0xED4EC5B3E99CEFACL, 18446744073709551615UL, 0UL, ((VECTOR(uint64_t, 2))(0x45B8B10249FC326AL)), 0x1A26C4C03F3C918EL, ((VECTOR(uint64_t, 4))(0x3D26D1B1C2D19084L)), 0x6FD9E37C7E8E6B67L)).lo)).s7463110651014550, ((VECTOR(uint64_t, 16))(2UL))))).s1) , (*l_68)) != p_879->g_101.x))
    { /* block id: 18 */
        int32_t *l_124 = &l_121;
        int32_t **l_125 = &l_124;
        (*l_124) &= ((*p_879->g_71) = (*p_879->g_71));
        (*l_125) = (void*)0;
    }
    else
    { /* block id: 22 */
        for (p_65 = (-14); (p_65 <= 18); p_65 = safe_add_func_int8_t_s_s(p_65, 1))
        { /* block id: 25 */
            uint32_t l_128[3];
            int i;
            for (i = 0; i < 3; i++)
                l_128[i] = 0x1A909BF4L;
            if (l_128[2])
                break;
            if (p_66)
                break;
        }
        return l_119[1];
    }
    return &p_879->g_24;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[66];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 66; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[66];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 66; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[47];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 47; i++)
            l_comm_values[i] = 1;
    struct S1 c_880;
    struct S1* p_879 = &c_880;
    struct S1 c_881 = {
        0x9958L, // p_879->g_6
        0xDB6BL, // p_879->g_24
        {4294967288UL}, // p_879->g_33
        &p_879->g_33, // p_879->g_35
        {&p_879->g_35,&p_879->g_35,&p_879->g_35,&p_879->g_35,&p_879->g_35,&p_879->g_35}, // p_879->g_34
        (void*)0, // p_879->g_36
        {&p_879->g_35,&p_879->g_35}, // p_879->g_37
        2L, // p_879->g_69
        &p_879->g_69, // p_879->g_71
        &p_879->g_71, // p_879->g_70
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xCE30L), 0xCE30L), 0xCE30L, 0UL, 0xCE30L), // p_879->g_82
        (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0xB2L), 0xB2L), // p_879->g_97
        (VECTOR(uint8_t, 2))(0x55L, 0x18L), // p_879->g_101
        (VECTOR(uint8_t, 8))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 1UL), 1UL), 1UL, 250UL, 1UL), // p_879->g_111
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xB7L), 0xB7L), // p_879->g_112
        0UL, // p_879->g_115
        {{{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L}},{{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L}},{{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L}},{{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L}},{{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L}},{{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L}},{{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L}},{{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L}},{{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L},{8L,0x7263C58A5459814CL,(-1L),0x2222B01ECF65DDD0L}}}, // p_879->g_117
        1L, // p_879->g_120
        0x8627F26C9C1765A9L, // p_879->g_123
        {{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}},{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}},{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}},{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}},{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}},{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}},{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}},{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}},{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}},{{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L},{(-1L),0x64E15BF3L}}}, // p_879->g_135
        0x60L, // p_879->g_137
        1UL, // p_879->g_138
        (-4L), // p_879->g_140
        1L, // p_879->g_141
        0x07L, // p_879->g_143
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 3L), 3L), // p_879->g_145
        (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, (-1L)), (-1L)), // p_879->g_146
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), // p_879->g_149
        (VECTOR(int32_t, 8))(0x41653546L, (VECTOR(int32_t, 4))(0x41653546L, (VECTOR(int32_t, 2))(0x41653546L, 4L), 4L), 4L, 0x41653546L, 4L), // p_879->g_150
        (void*)0, // p_879->g_184
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_879->g_251
        {{&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0]},{&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0]},{&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0]},{&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0]},{&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0]},{&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0]},{&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0]},{&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0]},{&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0],&p_879->g_251[0]}}, // p_879->g_250
        (-7L), // p_879->g_291
        (VECTOR(int32_t, 16))(0x1C4BD882L, (VECTOR(int32_t, 4))(0x1C4BD882L, (VECTOR(int32_t, 2))(0x1C4BD882L, 0x4FFF9482L), 0x4FFF9482L), 0x4FFF9482L, 0x1C4BD882L, 0x4FFF9482L, (VECTOR(int32_t, 2))(0x1C4BD882L, 0x4FFF9482L), (VECTOR(int32_t, 2))(0x1C4BD882L, 0x4FFF9482L), 0x1C4BD882L, 0x4FFF9482L, 0x1C4BD882L, 0x4FFF9482L), // p_879->g_322
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_879->g_323
        {{{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0}},{{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0}},{{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0}},{{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0},{&p_879->g_135[2][2][1],(void*)0,(void*)0,(void*)0}}}, // p_879->g_324
        {{(void*)0,(void*)0,(void*)0}}, // p_879->g_326
        {{&p_879->g_135[0][4][1],&p_879->g_135[0][4][1],(void*)0,&p_879->g_69},{&p_879->g_135[0][4][1],&p_879->g_135[0][4][1],(void*)0,&p_879->g_69},{&p_879->g_135[0][4][1],&p_879->g_135[0][4][1],(void*)0,&p_879->g_69},{&p_879->g_135[0][4][1],&p_879->g_135[0][4][1],(void*)0,&p_879->g_69},{&p_879->g_135[0][4][1],&p_879->g_135[0][4][1],(void*)0,&p_879->g_69},{&p_879->g_135[0][4][1],&p_879->g_135[0][4][1],(void*)0,&p_879->g_69},{&p_879->g_135[0][4][1],&p_879->g_135[0][4][1],(void*)0,&p_879->g_69}}, // p_879->g_327
        (VECTOR(uint32_t, 2))(1UL, 8UL), // p_879->g_366
        (VECTOR(uint16_t, 4))(0xE570L, (VECTOR(uint16_t, 2))(0xE570L, 0xC116L), 0xC116L), // p_879->g_376
        {&p_879->g_71,&p_879->g_71,&p_879->g_71,&p_879->g_71,&p_879->g_71,&p_879->g_71,&p_879->g_71,&p_879->g_71,&p_879->g_71,&p_879->g_71}, // p_879->g_404
        (void*)0, // p_879->g_439
        {{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}},{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}},{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}},{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}},{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}},{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}},{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}},{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}},{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}},{{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24},{&p_879->g_24,&p_879->g_24}}}, // p_879->g_453
        &p_879->g_453[2][4][1], // p_879->g_452
        5L, // p_879->g_468
        {1L,1L}, // p_879->g_477
        (void*)0, // p_879->g_478
        {(void*)0,(void*)0,(void*)0}, // p_879->g_497
        &p_879->g_135[2][2][1], // p_879->g_498
        &p_879->g_71, // p_879->g_530
        (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0x6D3BA719L), 0x6D3BA719L), // p_879->g_718
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 248UL), 248UL), 248UL, 1UL, 248UL, (VECTOR(uint8_t, 2))(1UL, 248UL), (VECTOR(uint8_t, 2))(1UL, 248UL), 1UL, 248UL, 1UL, 248UL), // p_879->g_746
        {0UL}, // p_879->g_748
        &p_879->g_35, // p_879->g_776
        (void*)0, // p_879->g_781
        (VECTOR(uint16_t, 2))(0xAE0EL, 65530UL), // p_879->g_799
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x3D08L), 0x3D08L), 0x3D08L, 0UL, 0x3D08L, (VECTOR(uint16_t, 2))(0UL, 0x3D08L), (VECTOR(uint16_t, 2))(0UL, 0x3D08L), 0UL, 0x3D08L, 0UL, 0x3D08L), // p_879->g_800
        (-5L), // p_879->g_805
        (VECTOR(int16_t, 4))(0x20E5L, (VECTOR(int16_t, 2))(0x20E5L, 0x4239L), 0x4239L), // p_879->g_806
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5CCBL), 0x5CCBL), // p_879->g_807
        (VECTOR(int16_t, 16))(0x13BEL, (VECTOR(int16_t, 4))(0x13BEL, (VECTOR(int16_t, 2))(0x13BEL, 0x2A93L), 0x2A93L), 0x2A93L, 0x13BEL, 0x2A93L, (VECTOR(int16_t, 2))(0x13BEL, 0x2A93L), (VECTOR(int16_t, 2))(0x13BEL, 0x2A93L), 0x13BEL, 0x2A93L, 0x13BEL, 0x2A93L), // p_879->g_808
        (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0x4AA4L), 0x4AA4L), // p_879->g_809
        (void*)0, // p_879->g_823
        (VECTOR(int8_t, 4))(0x44L, (VECTOR(int8_t, 2))(0x44L, 0x01L), 0x01L), // p_879->g_828
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_879->g_829
        &p_879->g_71, // p_879->g_834
        &p_879->g_71, // p_879->g_853
        0, // p_879->v_collective
        sequence_input[get_global_id(0)], // p_879->global_0_offset
        sequence_input[get_global_id(1)], // p_879->global_1_offset
        sequence_input[get_global_id(2)], // p_879->global_2_offset
        sequence_input[get_local_id(0)], // p_879->local_0_offset
        sequence_input[get_local_id(1)], // p_879->local_1_offset
        sequence_input[get_local_id(2)], // p_879->local_2_offset
        sequence_input[get_group_id(0)], // p_879->group_0_offset
        sequence_input[get_group_id(1)], // p_879->group_1_offset
        sequence_input[get_group_id(2)], // p_879->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 47)), permutations[0][get_linear_local_id()])), // p_879->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_880 = c_881;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_879);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_879->g_6, "p_879->g_6", print_hash_value);
    transparent_crc(p_879->g_24, "p_879->g_24", print_hash_value);
    transparent_crc(p_879->g_33.f0, "p_879->g_33.f0", print_hash_value);
    transparent_crc(p_879->g_69, "p_879->g_69", print_hash_value);
    transparent_crc(p_879->g_82.s0, "p_879->g_82.s0", print_hash_value);
    transparent_crc(p_879->g_82.s1, "p_879->g_82.s1", print_hash_value);
    transparent_crc(p_879->g_82.s2, "p_879->g_82.s2", print_hash_value);
    transparent_crc(p_879->g_82.s3, "p_879->g_82.s3", print_hash_value);
    transparent_crc(p_879->g_82.s4, "p_879->g_82.s4", print_hash_value);
    transparent_crc(p_879->g_82.s5, "p_879->g_82.s5", print_hash_value);
    transparent_crc(p_879->g_82.s6, "p_879->g_82.s6", print_hash_value);
    transparent_crc(p_879->g_82.s7, "p_879->g_82.s7", print_hash_value);
    transparent_crc(p_879->g_97.x, "p_879->g_97.x", print_hash_value);
    transparent_crc(p_879->g_97.y, "p_879->g_97.y", print_hash_value);
    transparent_crc(p_879->g_97.z, "p_879->g_97.z", print_hash_value);
    transparent_crc(p_879->g_97.w, "p_879->g_97.w", print_hash_value);
    transparent_crc(p_879->g_101.x, "p_879->g_101.x", print_hash_value);
    transparent_crc(p_879->g_101.y, "p_879->g_101.y", print_hash_value);
    transparent_crc(p_879->g_111.s0, "p_879->g_111.s0", print_hash_value);
    transparent_crc(p_879->g_111.s1, "p_879->g_111.s1", print_hash_value);
    transparent_crc(p_879->g_111.s2, "p_879->g_111.s2", print_hash_value);
    transparent_crc(p_879->g_111.s3, "p_879->g_111.s3", print_hash_value);
    transparent_crc(p_879->g_111.s4, "p_879->g_111.s4", print_hash_value);
    transparent_crc(p_879->g_111.s5, "p_879->g_111.s5", print_hash_value);
    transparent_crc(p_879->g_111.s6, "p_879->g_111.s6", print_hash_value);
    transparent_crc(p_879->g_111.s7, "p_879->g_111.s7", print_hash_value);
    transparent_crc(p_879->g_112.x, "p_879->g_112.x", print_hash_value);
    transparent_crc(p_879->g_112.y, "p_879->g_112.y", print_hash_value);
    transparent_crc(p_879->g_112.z, "p_879->g_112.z", print_hash_value);
    transparent_crc(p_879->g_112.w, "p_879->g_112.w", print_hash_value);
    transparent_crc(p_879->g_115, "p_879->g_115", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_879->g_117[i][j][k], "p_879->g_117[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_879->g_120, "p_879->g_120", print_hash_value);
    transparent_crc(p_879->g_123, "p_879->g_123", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_879->g_135[i][j][k], "p_879->g_135[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_879->g_137, "p_879->g_137", print_hash_value);
    transparent_crc(p_879->g_138, "p_879->g_138", print_hash_value);
    transparent_crc(p_879->g_140, "p_879->g_140", print_hash_value);
    transparent_crc(p_879->g_141, "p_879->g_141", print_hash_value);
    transparent_crc(p_879->g_143, "p_879->g_143", print_hash_value);
    transparent_crc(p_879->g_145.x, "p_879->g_145.x", print_hash_value);
    transparent_crc(p_879->g_145.y, "p_879->g_145.y", print_hash_value);
    transparent_crc(p_879->g_145.z, "p_879->g_145.z", print_hash_value);
    transparent_crc(p_879->g_145.w, "p_879->g_145.w", print_hash_value);
    transparent_crc(p_879->g_146.x, "p_879->g_146.x", print_hash_value);
    transparent_crc(p_879->g_146.y, "p_879->g_146.y", print_hash_value);
    transparent_crc(p_879->g_146.z, "p_879->g_146.z", print_hash_value);
    transparent_crc(p_879->g_146.w, "p_879->g_146.w", print_hash_value);
    transparent_crc(p_879->g_149.x, "p_879->g_149.x", print_hash_value);
    transparent_crc(p_879->g_149.y, "p_879->g_149.y", print_hash_value);
    transparent_crc(p_879->g_149.z, "p_879->g_149.z", print_hash_value);
    transparent_crc(p_879->g_149.w, "p_879->g_149.w", print_hash_value);
    transparent_crc(p_879->g_150.s0, "p_879->g_150.s0", print_hash_value);
    transparent_crc(p_879->g_150.s1, "p_879->g_150.s1", print_hash_value);
    transparent_crc(p_879->g_150.s2, "p_879->g_150.s2", print_hash_value);
    transparent_crc(p_879->g_150.s3, "p_879->g_150.s3", print_hash_value);
    transparent_crc(p_879->g_150.s4, "p_879->g_150.s4", print_hash_value);
    transparent_crc(p_879->g_150.s5, "p_879->g_150.s5", print_hash_value);
    transparent_crc(p_879->g_150.s6, "p_879->g_150.s6", print_hash_value);
    transparent_crc(p_879->g_150.s7, "p_879->g_150.s7", print_hash_value);
    transparent_crc(p_879->g_291, "p_879->g_291", print_hash_value);
    transparent_crc(p_879->g_322.s0, "p_879->g_322.s0", print_hash_value);
    transparent_crc(p_879->g_322.s1, "p_879->g_322.s1", print_hash_value);
    transparent_crc(p_879->g_322.s2, "p_879->g_322.s2", print_hash_value);
    transparent_crc(p_879->g_322.s3, "p_879->g_322.s3", print_hash_value);
    transparent_crc(p_879->g_322.s4, "p_879->g_322.s4", print_hash_value);
    transparent_crc(p_879->g_322.s5, "p_879->g_322.s5", print_hash_value);
    transparent_crc(p_879->g_322.s6, "p_879->g_322.s6", print_hash_value);
    transparent_crc(p_879->g_322.s7, "p_879->g_322.s7", print_hash_value);
    transparent_crc(p_879->g_322.s8, "p_879->g_322.s8", print_hash_value);
    transparent_crc(p_879->g_322.s9, "p_879->g_322.s9", print_hash_value);
    transparent_crc(p_879->g_322.sa, "p_879->g_322.sa", print_hash_value);
    transparent_crc(p_879->g_322.sb, "p_879->g_322.sb", print_hash_value);
    transparent_crc(p_879->g_322.sc, "p_879->g_322.sc", print_hash_value);
    transparent_crc(p_879->g_322.sd, "p_879->g_322.sd", print_hash_value);
    transparent_crc(p_879->g_322.se, "p_879->g_322.se", print_hash_value);
    transparent_crc(p_879->g_322.sf, "p_879->g_322.sf", print_hash_value);
    transparent_crc(p_879->g_366.x, "p_879->g_366.x", print_hash_value);
    transparent_crc(p_879->g_366.y, "p_879->g_366.y", print_hash_value);
    transparent_crc(p_879->g_376.x, "p_879->g_376.x", print_hash_value);
    transparent_crc(p_879->g_376.y, "p_879->g_376.y", print_hash_value);
    transparent_crc(p_879->g_376.z, "p_879->g_376.z", print_hash_value);
    transparent_crc(p_879->g_376.w, "p_879->g_376.w", print_hash_value);
    transparent_crc(p_879->g_468, "p_879->g_468", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_879->g_477[i], "p_879->g_477[i]", print_hash_value);

    }
    transparent_crc(p_879->g_718.x, "p_879->g_718.x", print_hash_value);
    transparent_crc(p_879->g_718.y, "p_879->g_718.y", print_hash_value);
    transparent_crc(p_879->g_718.z, "p_879->g_718.z", print_hash_value);
    transparent_crc(p_879->g_718.w, "p_879->g_718.w", print_hash_value);
    transparent_crc(p_879->g_746.s0, "p_879->g_746.s0", print_hash_value);
    transparent_crc(p_879->g_746.s1, "p_879->g_746.s1", print_hash_value);
    transparent_crc(p_879->g_746.s2, "p_879->g_746.s2", print_hash_value);
    transparent_crc(p_879->g_746.s3, "p_879->g_746.s3", print_hash_value);
    transparent_crc(p_879->g_746.s4, "p_879->g_746.s4", print_hash_value);
    transparent_crc(p_879->g_746.s5, "p_879->g_746.s5", print_hash_value);
    transparent_crc(p_879->g_746.s6, "p_879->g_746.s6", print_hash_value);
    transparent_crc(p_879->g_746.s7, "p_879->g_746.s7", print_hash_value);
    transparent_crc(p_879->g_746.s8, "p_879->g_746.s8", print_hash_value);
    transparent_crc(p_879->g_746.s9, "p_879->g_746.s9", print_hash_value);
    transparent_crc(p_879->g_746.sa, "p_879->g_746.sa", print_hash_value);
    transparent_crc(p_879->g_746.sb, "p_879->g_746.sb", print_hash_value);
    transparent_crc(p_879->g_746.sc, "p_879->g_746.sc", print_hash_value);
    transparent_crc(p_879->g_746.sd, "p_879->g_746.sd", print_hash_value);
    transparent_crc(p_879->g_746.se, "p_879->g_746.se", print_hash_value);
    transparent_crc(p_879->g_746.sf, "p_879->g_746.sf", print_hash_value);
    transparent_crc(p_879->g_748.f0, "p_879->g_748.f0", print_hash_value);
    transparent_crc(p_879->g_799.x, "p_879->g_799.x", print_hash_value);
    transparent_crc(p_879->g_799.y, "p_879->g_799.y", print_hash_value);
    transparent_crc(p_879->g_800.s0, "p_879->g_800.s0", print_hash_value);
    transparent_crc(p_879->g_800.s1, "p_879->g_800.s1", print_hash_value);
    transparent_crc(p_879->g_800.s2, "p_879->g_800.s2", print_hash_value);
    transparent_crc(p_879->g_800.s3, "p_879->g_800.s3", print_hash_value);
    transparent_crc(p_879->g_800.s4, "p_879->g_800.s4", print_hash_value);
    transparent_crc(p_879->g_800.s5, "p_879->g_800.s5", print_hash_value);
    transparent_crc(p_879->g_800.s6, "p_879->g_800.s6", print_hash_value);
    transparent_crc(p_879->g_800.s7, "p_879->g_800.s7", print_hash_value);
    transparent_crc(p_879->g_800.s8, "p_879->g_800.s8", print_hash_value);
    transparent_crc(p_879->g_800.s9, "p_879->g_800.s9", print_hash_value);
    transparent_crc(p_879->g_800.sa, "p_879->g_800.sa", print_hash_value);
    transparent_crc(p_879->g_800.sb, "p_879->g_800.sb", print_hash_value);
    transparent_crc(p_879->g_800.sc, "p_879->g_800.sc", print_hash_value);
    transparent_crc(p_879->g_800.sd, "p_879->g_800.sd", print_hash_value);
    transparent_crc(p_879->g_800.se, "p_879->g_800.se", print_hash_value);
    transparent_crc(p_879->g_800.sf, "p_879->g_800.sf", print_hash_value);
    transparent_crc(p_879->g_805, "p_879->g_805", print_hash_value);
    transparent_crc(p_879->g_806.x, "p_879->g_806.x", print_hash_value);
    transparent_crc(p_879->g_806.y, "p_879->g_806.y", print_hash_value);
    transparent_crc(p_879->g_806.z, "p_879->g_806.z", print_hash_value);
    transparent_crc(p_879->g_806.w, "p_879->g_806.w", print_hash_value);
    transparent_crc(p_879->g_807.x, "p_879->g_807.x", print_hash_value);
    transparent_crc(p_879->g_807.y, "p_879->g_807.y", print_hash_value);
    transparent_crc(p_879->g_807.z, "p_879->g_807.z", print_hash_value);
    transparent_crc(p_879->g_807.w, "p_879->g_807.w", print_hash_value);
    transparent_crc(p_879->g_808.s0, "p_879->g_808.s0", print_hash_value);
    transparent_crc(p_879->g_808.s1, "p_879->g_808.s1", print_hash_value);
    transparent_crc(p_879->g_808.s2, "p_879->g_808.s2", print_hash_value);
    transparent_crc(p_879->g_808.s3, "p_879->g_808.s3", print_hash_value);
    transparent_crc(p_879->g_808.s4, "p_879->g_808.s4", print_hash_value);
    transparent_crc(p_879->g_808.s5, "p_879->g_808.s5", print_hash_value);
    transparent_crc(p_879->g_808.s6, "p_879->g_808.s6", print_hash_value);
    transparent_crc(p_879->g_808.s7, "p_879->g_808.s7", print_hash_value);
    transparent_crc(p_879->g_808.s8, "p_879->g_808.s8", print_hash_value);
    transparent_crc(p_879->g_808.s9, "p_879->g_808.s9", print_hash_value);
    transparent_crc(p_879->g_808.sa, "p_879->g_808.sa", print_hash_value);
    transparent_crc(p_879->g_808.sb, "p_879->g_808.sb", print_hash_value);
    transparent_crc(p_879->g_808.sc, "p_879->g_808.sc", print_hash_value);
    transparent_crc(p_879->g_808.sd, "p_879->g_808.sd", print_hash_value);
    transparent_crc(p_879->g_808.se, "p_879->g_808.se", print_hash_value);
    transparent_crc(p_879->g_808.sf, "p_879->g_808.sf", print_hash_value);
    transparent_crc(p_879->g_809.x, "p_879->g_809.x", print_hash_value);
    transparent_crc(p_879->g_809.y, "p_879->g_809.y", print_hash_value);
    transparent_crc(p_879->g_809.z, "p_879->g_809.z", print_hash_value);
    transparent_crc(p_879->g_809.w, "p_879->g_809.w", print_hash_value);
    transparent_crc(p_879->g_828.x, "p_879->g_828.x", print_hash_value);
    transparent_crc(p_879->g_828.y, "p_879->g_828.y", print_hash_value);
    transparent_crc(p_879->g_828.z, "p_879->g_828.z", print_hash_value);
    transparent_crc(p_879->g_828.w, "p_879->g_828.w", print_hash_value);
    transparent_crc(p_879->g_829.s0, "p_879->g_829.s0", print_hash_value);
    transparent_crc(p_879->g_829.s1, "p_879->g_829.s1", print_hash_value);
    transparent_crc(p_879->g_829.s2, "p_879->g_829.s2", print_hash_value);
    transparent_crc(p_879->g_829.s3, "p_879->g_829.s3", print_hash_value);
    transparent_crc(p_879->g_829.s4, "p_879->g_829.s4", print_hash_value);
    transparent_crc(p_879->g_829.s5, "p_879->g_829.s5", print_hash_value);
    transparent_crc(p_879->g_829.s6, "p_879->g_829.s6", print_hash_value);
    transparent_crc(p_879->g_829.s7, "p_879->g_829.s7", print_hash_value);
    transparent_crc(p_879->g_829.s8, "p_879->g_829.s8", print_hash_value);
    transparent_crc(p_879->g_829.s9, "p_879->g_829.s9", print_hash_value);
    transparent_crc(p_879->g_829.sa, "p_879->g_829.sa", print_hash_value);
    transparent_crc(p_879->g_829.sb, "p_879->g_829.sb", print_hash_value);
    transparent_crc(p_879->g_829.sc, "p_879->g_829.sc", print_hash_value);
    transparent_crc(p_879->g_829.sd, "p_879->g_829.sd", print_hash_value);
    transparent_crc(p_879->g_829.se, "p_879->g_829.se", print_hash_value);
    transparent_crc(p_879->g_829.sf, "p_879->g_829.sf", print_hash_value);
    transparent_crc(p_879->v_collective, "p_879->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 66; i++)
            transparent_crc(p_879->g_special_values[i + 66 * get_linear_group_id()], "p_879->g_special_values[i + 66 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 66; i++)
            transparent_crc(p_879->l_special_values[i], "p_879->l_special_values[i]", print_hash_value);
    transparent_crc(p_879->l_comm_values[get_linear_local_id()], "p_879->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_879->g_comm_values[get_linear_group_id() * 47 + get_linear_local_id()], "p_879->g_comm_values[get_linear_group_id() * 47 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
