// --atomics 12 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 98,79,1 -l 1,1,1
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

__constant uint32_t permutations[10][1] = {
{0}, // permutation 0
{0}, // permutation 1
{0}, // permutation 2
{0}, // permutation 3
{0}, // permutation 4
{0}, // permutation 5
{0}, // permutation 6
{0}, // permutation 7
{0}, // permutation 8
{0} // permutation 9
};

// Seed: 19

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    uint32_t g_5;
    uint8_t g_69;
    int32_t g_73;
    uint64_t g_76;
    uint8_t *g_102;
    uint16_t g_104;
    int32_t *g_108;
    int32_t ** volatile g_107;
    uint16_t *g_137;
    volatile VECTOR(int16_t, 4) g_138;
    VECTOR(int16_t, 8) g_152;
    uint8_t g_156;
    uint8_t *g_155;
    uint8_t g_159;
    int16_t g_162;
    int32_t g_164;
    volatile VECTOR(uint8_t, 4) g_198;
    volatile VECTOR(uint8_t, 8) g_203;
    uint32_t g_217;
    VECTOR(int16_t, 2) g_222;
    int8_t g_224[10][8][3];
    volatile VECTOR(uint16_t, 2) g_225;
    int32_t g_227;
    int8_t g_254;
    uint16_t g_261;
    uint16_t g_262;
    int32_t * volatile g_266;
    int64_t g_278[5];
    volatile uint32_t g_279;
    volatile VECTOR(uint16_t, 4) g_291;
    VECTOR(uint8_t, 16) g_293;
    VECTOR(uint8_t, 2) g_295;
    int32_t g_325;
    volatile int32_t g_332[1];
    int32_t g_351[3][7][1];
    int16_t *g_432;
    int16_t **g_431;
    int16_t *** volatile g_430;
    uint32_t g_433;
    volatile VECTOR(int8_t, 8) g_464;
    uint16_t g_470;
    volatile VECTOR(uint8_t, 8) g_473;
    volatile VECTOR(uint8_t, 16) g_476;
    VECTOR(uint64_t, 4) g_480;
    VECTOR(uint8_t, 8) g_500;
    int32_t *g_506;
    int32_t **g_505;
    int64_t g_539[4][8][7];
    volatile uint32_t ** volatile g_557;
    volatile uint32_t ** volatile * volatile g_558;
    VECTOR(uint16_t, 16) g_574;
    uint64_t *g_585;
    VECTOR(int16_t, 2) g_613;
    VECTOR(int16_t, 4) g_614;
    int32_t g_643;
    volatile VECTOR(uint32_t, 8) g_648;
    uint32_t g_650;
    volatile uint16_t g_694;
    VECTOR(int8_t, 16) g_700;
    volatile int64_t * volatile *g_840;
    uint32_t *g_863;
    volatile VECTOR(uint64_t, 2) g_878;
    volatile uint32_t g_883;
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
int64_t  func_1(struct S0 * p_934);
int32_t * func_12(uint32_t  p_13, int32_t * p_14, uint32_t  p_15, int64_t  p_16, int32_t * p_17, struct S0 * p_934);
uint64_t  func_18(uint16_t  p_19, uint32_t  p_20, int32_t * p_21, struct S0 * p_934);
int64_t  func_22(uint64_t  p_23, uint32_t  p_24, struct S0 * p_934);
uint64_t  func_25(uint16_t  p_26, uint32_t  p_27, uint64_t  p_28, struct S0 * p_934);
int16_t  func_36(uint64_t  p_37, int32_t  p_38, int64_t  p_39, uint64_t  p_40, int32_t * p_41, struct S0 * p_934);
uint64_t  func_42(int32_t * p_43, int32_t * p_44, int32_t * p_45, struct S0 * p_934);
int32_t * func_47(uint16_t  p_48, uint8_t  p_49, int32_t * p_50, struct S0 * p_934);
int32_t  func_55(int32_t * p_56, uint64_t  p_57, int32_t * p_58, struct S0 * p_934);
int16_t  func_59(uint64_t  p_60, int32_t * p_61, int32_t * p_62, int32_t * p_63, int32_t * p_64, struct S0 * p_934);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_934->g_5 p_934->g_3
 * writes: p_934->g_5 p_934->g_3
 */
int64_t  func_1(struct S0 * p_934)
{ /* block id: 4 */
    int32_t *l_2 = &p_934->g_3;
    int32_t *l_4[5][6][7] = {{{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3}},{{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3}},{{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3}},{{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3}},{{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3},{&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3,&p_934->g_3}}};
    uint64_t l_79 = 7UL;
    int64_t l_166 = 8L;
    int i, j, k;
    p_934->g_5++;
    for (p_934->g_3 = 0; (p_934->g_3 >= 22); p_934->g_3++)
    { /* block id: 8 */
        uint16_t l_29 = 0UL;
        int32_t *l_46 = &p_934->g_3;
        int32_t *l_811 = &p_934->g_3;
        for (p_934->g_5 = 0; (p_934->g_5 > 9); p_934->g_5++)
        { /* block id: 11 */
            int16_t l_65 = 0x3DFEL;
            int32_t *l_66[1];
            uint8_t *l_67 = (void*)0;
            uint8_t *l_68 = &p_934->g_69;
            uint16_t l_70 = 0x8E0DL;
            int32_t l_812 = (-1L);
            int32_t **l_931 = (void*)0;
            int32_t **l_932 = (void*)0;
            int32_t **l_933 = &l_66[0];
            int i;
            for (i = 0; i < 1; i++)
                l_66[i] = (void*)0;
            (1 + 1);
        }
    }
    return p_934->g_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_934->g_162 p_934->g_585 p_934->g_76 p_934->g_102 p_934->g_3 p_934->g_643 p_934->l_comm_values p_934->g_137 p_934->g_266 p_934->g_164 p_934->g_107
 * writes: p_934->g_162 p_934->g_863 p_934->g_69 p_934->g_278 p_934->g_643 p_934->l_comm_values p_934->g_104 p_934->g_108 p_934->g_164
 */
int32_t * func_12(uint32_t  p_13, int32_t * p_14, uint32_t  p_15, int64_t  p_16, int32_t * p_17, struct S0 * p_934)
{ /* block id: 324 */
    uint32_t *l_815[10][1][4] = {{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}},{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}},{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}},{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}},{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}},{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}},{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}},{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}},{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}},{{&p_934->g_650,&p_934->g_650,(void*)0,&p_934->g_650}}};
    uint32_t **l_814[3][6][5] = {{{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]}},{{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]}},{{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]},{(void*)0,&l_815[3][0][2],&l_815[9][0][0],&l_815[0][0][1],&l_815[0][0][1]}}};
    uint32_t ***l_813 = &l_814[1][3][3];
    VECTOR(uint16_t, 4) l_816 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x031BL), 0x031BL);
    VECTOR(int32_t, 16) l_819 = (VECTOR(int32_t, 16))(0x21104421L, (VECTOR(int32_t, 4))(0x21104421L, (VECTOR(int32_t, 2))(0x21104421L, 1L), 1L), 1L, 0x21104421L, 1L, (VECTOR(int32_t, 2))(0x21104421L, 1L), (VECTOR(int32_t, 2))(0x21104421L, 1L), 0x21104421L, 1L, 0x21104421L, 1L);
    int32_t l_836[4][5] = {{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}};
    int64_t **l_839 = (void*)0;
    int8_t *l_841 = (void*)0;
    int8_t *l_842 = &p_934->g_224[0][2][0];
    uint32_t l_843[9] = {0x41DC057BL,0x41DC057BL,0x41DC057BL,0x41DC057BL,0x41DC057BL,0x41DC057BL,0x41DC057BL,0x41DC057BL,0x41DC057BL};
    int32_t *l_844 = &p_934->g_3;
    int32_t *l_845[5][7] = {{&p_934->g_3,&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_73,&p_934->g_3,(void*)0},{&p_934->g_3,&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_73,&p_934->g_3,(void*)0},{&p_934->g_3,&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_73,&p_934->g_3,(void*)0},{&p_934->g_3,&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_73,&p_934->g_3,(void*)0},{&p_934->g_3,&p_934->g_3,(void*)0,&p_934->g_3,&p_934->g_73,&p_934->g_3,(void*)0}};
    uint16_t l_868 = 0UL;
    uint32_t **l_882 = &p_934->g_863;
    uint8_t l_898 = 255UL;
    int i, j, k;
    l_845[2][4] = l_845[2][4];
    for (p_934->g_162 = 28; (p_934->g_162 <= (-16)); p_934->g_162 = safe_sub_func_uint16_t_u_u(p_934->g_162, 1))
    { /* block id: 330 */
        int32_t l_852[1][6][1] = {{{0x061784EAL},{0x061784EAL},{0x061784EAL},{0x061784EAL},{0x061784EAL},{0x061784EAL}}};
        uint32_t *l_861 = &p_934->g_5;
        uint32_t **l_862[2];
        int16_t *l_864 = (void*)0;
        int16_t *l_865 = (void*)0;
        int16_t *l_866[2][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t l_867 = 0x2B1AC168L;
        int64_t *l_869 = &p_934->g_278[0];
        uint64_t **l_879 = &p_934->g_585;
        uint16_t l_886 = 0x9096L;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_862[i] = &l_861;
        if ((safe_div_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(l_852[0][5][0], 8)), (((safe_mod_func_uint64_t_u_u((*p_934->g_585), ((*l_869) = (((+p_16) <= (((0L | (safe_add_func_int32_t_s_s((((4294967295UL <= 0xF2C505F4L) ^ (safe_mod_func_uint8_t_u_u(((FAKE_DIVERGE(p_934->local_2_offset, get_local_id(2), 10) ^ (((*p_934->g_102) = (65531UL | (safe_mul_func_uint8_t_u_u(((l_852[0][2][0] < (l_867 = ((p_934->g_863 = l_861) == (void*)0))) == p_15), 0x6BL)))) == p_16)) | (*p_17)), p_16))) ^ l_852[0][5][0]), l_868))) && p_15) >= FAKE_DIVERGE(p_934->global_2_offset, get_global_id(2), 10))) ^ l_852[0][5][0])))) && 0x37897491L) || l_852[0][3][0]))))
        { /* block id: 335 */
            uint16_t l_884 = 0x93BDL;
            int32_t *l_888 = &l_867;
            uint8_t *l_917 = &p_934->g_156;
            int32_t l_927 = 0x141BA88CL;
            for (p_934->g_643 = 0; (p_934->g_643 < 5); p_934->g_643 = safe_add_func_uint8_t_u_u(p_934->g_643, 3))
            { /* block id: 338 */
                uint32_t l_885 = 4294967295UL;
                int32_t *l_887 = &p_934->g_3;
                VECTOR(uint8_t, 8) l_897 = (VECTOR(uint8_t, 8))(0xE1L, (VECTOR(uint8_t, 4))(0xE1L, (VECTOR(uint8_t, 2))(0xE1L, 0x96L), 0x96L), 0x96L, 0xE1L, 0x96L);
                uint8_t *l_926 = &l_898;
                int64_t *l_928 = (void*)0;
                int64_t *l_929 = (void*)0;
                int i;
                l_888 = p_14;
                (*p_934->g_107) = ((((~((safe_sub_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(l_897.s2116)))).y, (((*p_934->g_102) = l_898) , 1L))) | ((((*p_934->g_137) = (FAKE_DIVERGE(p_934->local_2_offset, get_local_id(2), 10) != ((0L < 0x213EDF17L) , ((safe_sub_func_int16_t_s_s(((p_934->l_comm_values[(safe_mod_func_uint32_t_u_u(p_934->tid, 1))] |= ((*l_869) = (+(safe_lshift_func_uint16_t_u_s((*l_888), ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(((p_16 || (safe_div_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u((l_927 = (safe_sub_func_int16_t_s_s((safe_add_func_int32_t_s_s((safe_mod_func_int16_t_s_s(((l_917 != ((safe_add_func_uint32_t_u_u(p_13, ((((safe_div_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(l_886, p_16)), p_15)), (*l_888))) >= (*p_17)) && 0x755234108A8BA95EL) <= 0x2D035652L))) , l_926)) , p_16), 1UL)), p_16)), 0x77C3L))), (*l_844))), FAKE_DIVERGE(p_934->group_1_offset, get_group_id(1), 10)))) < p_16), 14)), p_15)) || 4L)))))) > (*l_888)), 0x76B5L)) <= 0x9F46CD6AL)))) == 0x364CL) > 0x65045CB1BD5F2939L)), (-6L))), 1UL)) || 0xD63E54E5L)) ^ (*p_934->g_266)) & p_13) , l_887);
            }
            (*p_934->g_266) = (*p_934->g_266);
        }
        else
        { /* block id: 350 */
            VECTOR(int32_t, 16) l_930 = (VECTOR(int32_t, 16))(0x5F7C8463L, (VECTOR(int32_t, 4))(0x5F7C8463L, (VECTOR(int32_t, 2))(0x5F7C8463L, 1L), 1L), 1L, 0x5F7C8463L, 1L, (VECTOR(int32_t, 2))(0x5F7C8463L, 1L), (VECTOR(int32_t, 2))(0x5F7C8463L, 1L), 0x5F7C8463L, 1L, 0x5F7C8463L, 1L);
            int i;
            l_930.s0 = ((VECTOR(int32_t, 8))(l_930.saa99df2a)).s6;
            return &p_934->g_73;
        }
        l_867 &= (*p_934->g_266);
    }
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_934->g_325 p_934->g_585 p_934->g_76
 * writes: p_934->g_325
 */
uint64_t  func_18(uint16_t  p_19, uint32_t  p_20, int32_t * p_21, struct S0 * p_934)
{ /* block id: 320 */
    int32_t l_805 = (-4L);
    int32_t l_806 = 0x36F10892L;
    int64_t *l_809[9][5][3] = {{{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0}},{{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0}},{{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0}},{{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0}},{{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0}},{{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0}},{{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0}},{{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0}},{{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0},{(void*)0,&p_934->g_539[1][4][6],(void*)0}}};
    int64_t **l_808 = &l_809[8][0][0];
    int64_t ***l_807 = &l_808;
    int32_t *l_810 = &p_934->g_325;
    int i, j, k;
    (*l_810) ^= (safe_lshift_func_uint8_t_u_s(((l_806 = l_805) , ((void*)0 != l_807)), 7));
    return (*p_934->g_585);
}


/* ------------------------------------------ */
/* 
 * reads : p_934->g_104 p_934->g_266 p_934->g_107 p_934->g_164 p_934->g_279 p_934->g_222 p_934->g_108 p_934->g_73 p_934->g_3 p_934->g_262 p_934->g_137 p_934->g_295 p_934->l_comm_values p_934->g_5 p_934->g_comm_values p_934->g_76 p_934->g_254 p_934->g_162 p_934->g_224 p_934->g_325 p_934->g_227 p_934->g_430 p_934->g_433 p_934->g_102 p_934->g_69 p_934->g_431 p_934->g_432 p_934->g_464 p_934->g_293 p_934->g_470 p_934->g_473 p_934->g_476 p_934->g_480 p_934->g_700
 * writes: p_934->g_104 p_934->g_164 p_934->g_108 p_934->g_279 p_934->g_262 p_934->g_102 p_934->g_73 p_934->g_69 p_934->g_224 p_934->g_325 p_934->g_254 p_934->g_431 p_934->g_433
 */
int64_t  func_22(uint64_t  p_23, uint32_t  p_24, struct S0 * p_934)
{ /* block id: 76 */
    int8_t l_265[7][2] = {{7L,7L},{7L,7L},{7L,7L},{7L,7L},{7L,7L},{7L,7L},{7L,7L}};
    uint8_t **l_272[2];
    int32_t l_275 = 0L;
    int32_t l_276 = 1L;
    int32_t l_277[8] = {3L,3L,3L,3L,3L,3L,3L,3L};
    int32_t *l_299 = &p_934->g_3;
    int32_t l_333 = 0x2155B454L;
    VECTOR(uint16_t, 8) l_375 = (VECTOR(uint16_t, 8))(0x12C6L, (VECTOR(uint16_t, 4))(0x12C6L, (VECTOR(uint16_t, 2))(0x12C6L, 65535UL), 65535UL), 65535UL, 0x12C6L, 65535UL);
    VECTOR(int8_t, 4) l_382 = (VECTOR(int8_t, 4))(0x71L, (VECTOR(int8_t, 2))(0x71L, (-1L)), (-1L));
    uint32_t l_440 = 0x1293BB9FL;
    VECTOR(uint64_t, 8) l_445 = (VECTOR(uint64_t, 8))(0x08CFE3DC3CA68A9AL, (VECTOR(uint64_t, 4))(0x08CFE3DC3CA68A9AL, (VECTOR(uint64_t, 2))(0x08CFE3DC3CA68A9AL, 0xEFFE609744809C91L), 0xEFFE609744809C91L), 0xEFFE609744809C91L, 0x08CFE3DC3CA68A9AL, 0xEFFE609744809C91L);
    uint64_t *l_450 = &p_934->g_76;
    VECTOR(int16_t, 2) l_469 = (VECTOR(int16_t, 2))(0x7A80L, (-9L));
    VECTOR(int64_t, 2) l_499 = (VECTOR(int64_t, 2))(0x51AB0A822D42B85DL, 0L);
    int32_t **l_553 = (void*)0;
    uint64_t l_569 = 0UL;
    int16_t *l_591 = (void*)0;
    VECTOR(uint8_t, 4) l_605 = (VECTOR(uint8_t, 4))(0x4EL, (VECTOR(uint8_t, 2))(0x4EL, 0UL), 0UL);
    VECTOR(int16_t, 2) l_610 = (VECTOR(int16_t, 2))(8L, 1L);
    VECTOR(int16_t, 2) l_611 = (VECTOR(int16_t, 2))(0x596FL, 1L);
    int64_t *l_653 = &p_934->g_539[3][0][5];
    int64_t **l_652 = &l_653;
    VECTOR(int8_t, 4) l_657 = (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, 0L), 0L);
    int i, j;
    for (i = 0; i < 2; i++)
        l_272[i] = &p_934->g_155;
    for (p_934->g_104 = 14; (p_934->g_104 == 31); p_934->g_104 = safe_add_func_uint16_t_u_u(p_934->g_104, 4))
    { /* block id: 79 */
        int32_t *l_267 = &p_934->g_3;
        (*p_934->g_266) = l_265[0][0];
        (*p_934->g_107) = l_267;
        if ((*p_934->g_266))
            continue;
    }
    if ((safe_sub_func_uint8_t_u_u(255UL, ((&l_265[2][0] != &p_934->g_224[6][3][0]) && ((void*)0 == l_272[0])))))
    { /* block id: 84 */
        int32_t *l_273 = &p_934->g_164;
        int32_t *l_274[5][6] = {{(void*)0,(void*)0,&p_934->g_164,&p_934->g_164,(void*)0,&p_934->g_164},{(void*)0,(void*)0,&p_934->g_164,&p_934->g_164,(void*)0,&p_934->g_164},{(void*)0,(void*)0,&p_934->g_164,&p_934->g_164,(void*)0,&p_934->g_164},{(void*)0,(void*)0,&p_934->g_164,&p_934->g_164,(void*)0,&p_934->g_164},{(void*)0,(void*)0,&p_934->g_164,&p_934->g_164,(void*)0,&p_934->g_164}};
        VECTOR(uint32_t, 2) l_288 = (VECTOR(uint32_t, 2))(1UL, 4294967295UL);
        int32_t *l_414 = &p_934->g_73;
        int32_t *l_421 = &p_934->g_351[1][6][0];
        int32_t **l_420 = &l_421;
        int i, j;
        p_934->g_279++;
        l_277[3] ^= ((&p_934->g_224[9][7][2] == (p_934->g_222.x , &p_934->g_224[2][7][2])) , ((*l_273) = (*p_934->g_108)));
        (*l_273) ^= (*p_934->g_108);
        for (p_934->g_262 = 0; (p_934->g_262 < 48); p_934->g_262 = safe_add_func_int32_t_s_s(p_934->g_262, 9))
        { /* block id: 91 */
            VECTOR(uint8_t, 2) l_296 = (VECTOR(uint8_t, 2))(0xC8L, 0xA9L);
            int32_t l_301[10];
            uint16_t l_334 = 0xBA18L;
            int32_t *l_372 = &p_934->g_351[0][2][0];
            int32_t **l_377 = &l_273;
            int16_t **l_429 = (void*)0;
            uint64_t *l_436[7][2] = {{&p_934->g_76,&p_934->g_76},{&p_934->g_76,&p_934->g_76},{&p_934->g_76,&p_934->g_76},{&p_934->g_76,&p_934->g_76},{&p_934->g_76,&p_934->g_76},{&p_934->g_76,&p_934->g_76},{&p_934->g_76,&p_934->g_76}};
            int i, j;
            for (i = 0; i < 10; i++)
                l_301[i] = 0x50F3917FL;
            if (l_277[3])
                break;
            for (p_934->g_164 = 0; (p_934->g_164 == (-3)); p_934->g_164 = safe_sub_func_int8_t_s_s(p_934->g_164, 5))
            { /* block id: 95 */
                uint64_t l_292 = 0UL;
                VECTOR(uint8_t, 2) l_294 = (VECTOR(uint8_t, 2))(3UL, 0xDDL);
                int64_t l_300 = 0x098BB123F9A677B1L;
                int32_t *l_313 = &p_934->g_164;
                int32_t l_329 = 0x3482C217L;
                uint64_t *l_349 = &l_292;
                uint64_t **l_348 = &l_349;
                int32_t l_376 = 1L;
                VECTOR(int8_t, 8) l_385 = (VECTOR(int8_t, 8))(0x78L, (VECTOR(int8_t, 4))(0x78L, (VECTOR(int8_t, 2))(0x78L, 0x3DL), 0x3DL), 0x3DL, 0x78L, 0x3DL);
                int i;
                l_301[0] = (((((((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(l_288.xyyx)).z, 0xBC388CCCL)) , func_47((*p_934->g_137), (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 4))(p_934->g_291.yyxx)).wzwwywyxxwxyzxwx, ((VECTOR(uint16_t, 8))((l_276 < l_277[3]), (+(p_934->g_203.s6 || (l_292 ^ (((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(p_934->g_293.sdf80af4c)).s13, ((VECTOR(uint8_t, 8))(l_294.xyyyyxyy)).s27, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 8))(p_934->g_295.yxxyxyxy)).s5621013667677136, ((VECTOR(uint8_t, 8))(l_296.yxxxxyyx)).s2417134230556257))).s31)).xyxxyxxy)).s21)), 246UL, 0xC4L)).wxxzwxwy)))).s2147051724277420)).s3e))).lo == (safe_rshift_func_int8_t_s_u(((((p_934->g_222.x == p_24) | l_292) & (*p_934->g_137)) , p_934->g_295.x), l_294.y)))))), 0x7523L, 0x44A7L, 0x6478L, l_265[0][0], 65532UL, 0xBEC3L)).s3217555007360436))).sc, p_934->g_295.x)), l_299, p_934)) == (void*)0) || 0x9E78L) , l_296.x) <= (-5L)) >= l_300);
                if ((safe_add_func_uint64_t_u_u(0xB4FF4E730565BBBEL, ((-1L) || (~p_23)))))
                { /* block id: 97 */
                    uint64_t *l_304 = &l_292;
                    uint64_t *l_312 = &p_934->g_76;
                    uint64_t **l_311 = &l_312;
                    int32_t l_322 = 0x3CDB2C22L;
                    int8_t *l_323 = &l_265[6][0];
                    int8_t *l_324 = &p_934->g_224[3][1][1];
                    int8_t *l_326 = &p_934->g_254;
                    int32_t l_327 = (-1L);
                    l_327 ^= (((*l_304) = l_294.y) | (safe_lshift_func_uint16_t_u_s(((p_23 != ((*l_326) = (p_934->g_325 |= ((*l_324) ^= ((l_301[0] |= (safe_div_func_int32_t_s_s(((((-1L) & FAKE_DIVERGE(p_934->local_2_offset, get_local_id(2), 10)) , (-9L)) <= ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(65526UL, 0xE3ADL)).yyxyxyxx)).s1), (safe_mul_func_int16_t_s_s((((*l_311) = l_304) == (((l_277[3] = (((*l_323) = (((l_313 == (*p_934->g_107)) && (safe_add_func_int8_t_s_s(((((p_934->g_254 , ((safe_sub_func_uint16_t_u_u(((*p_934->g_137)++), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x7335L, 65535UL)), (safe_lshift_func_uint16_t_u_u(0x2BF0L, p_24)), 6UL, ((VECTOR(uint16_t, 4))(65535UL)))).s2)) | l_296.y)) || p_934->g_162) > 0x60D3L) && 1L), l_322))) , p_24)) > 0x0AL)) ^ p_23) , (void*)0)), (-1L)))))) != p_24))))) == l_296.x), p_934->g_227)));
                    if ((*p_934->g_108))
                        continue;
                }
                else
                { /* block id: 109 */
                    int32_t l_328[6] = {0x47D4AAA9L,0x47D4AAA9L,0x47D4AAA9L,0x47D4AAA9L,0x47D4AAA9L,0x47D4AAA9L};
                    int32_t l_330 = 0x44738285L;
                    int32_t l_331 = 0x0B8C7C3CL;
                    int i;
                    p_934->g_325 &= (l_301[1] = (*p_934->g_266));
                    ++l_334;
                    for (p_934->g_69 = 0; (p_934->g_69 > 21); p_934->g_69 = safe_add_func_uint64_t_u_u(p_934->g_69, 2))
                    { /* block id: 115 */
                        uint8_t l_341 = 255UL;
                        int32_t *l_350 = &p_934->g_351[0][2][0];
                        int32_t **l_354 = &l_350;
                        uint32_t l_373[3];
                        int8_t l_374 = (-6L);
                        int i;
                        for (i = 0; i < 3; i++)
                            l_373[i] = 0x623ED4B7L;
                        l_376 = ((VECTOR(int32_t, 16))(((((l_301[0] ^= ((FAKE_DIVERGE(p_934->group_2_offset, get_group_id(2), 10) , ((safe_mod_func_uint16_t_u_u(l_341, (safe_rshift_func_uint16_t_u_u(((*p_934->g_137) = (safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (safe_mul_func_int16_t_s_s((((*l_350) = (l_348 == &l_349)) , ((l_329 = (7L != (safe_lshift_func_uint16_t_u_s(l_328[4], ((((*l_354) = l_273) == ((safe_mod_func_uint32_t_u_u(p_934->g_332[0], (safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u(((safe_add_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((((safe_unary_minus_func_int16_t_s((safe_rshift_func_int16_t_s_s((safe_div_func_uint64_t_u_u((((0x83203414L != ((((&p_934->g_102 == (void*)0) | (*p_934->g_102)) , l_328[1]) , 0x1187C0E5L)) , 0xAEBAA60117410A8AL) <= 18446744073709551610UL), 4L)), (*l_273))))) | 0x43L) ^ p_934->g_comm_values[p_934->tid]), p_934->g_5)), 2UL)) >= (*l_273)), 4294967290UL)) ^ (*l_313)), 14)), GROUP_DIVERGE(1, 1))))) , l_372)) > p_23))))) && l_373[1])), 0x4B2EL))))), l_374)))) || 1UL)) & 3L)) >= p_934->g_69) , p_23) < l_330), l_330, ((VECTOR(int32_t, 4))(9L)), ((VECTOR(int32_t, 2))((-6L))), l_375.s2, (-1L), p_24, 0L, (*l_313), (*p_934->g_266), 0x0790F8CCL, 0x3AB085AEL)).s0;
                    }
                }
                if ((l_377 == &l_313))
                { /* block id: 124 */
                    uint32_t *l_392[1][1][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0}}};
                    int32_t *l_402 = &p_934->g_227;
                    int32_t **l_401 = &l_402;
                    int32_t *l_404 = &l_333;
                    int32_t **l_403 = &l_404;
                    int32_t l_413 = 0x38B75EBEL;
                    uint32_t *l_419 = &p_934->g_5;
                    int64_t *l_424 = &l_300;
                    int i, j, k;
                    (*l_377) = (*p_934->g_107);
                    if ((**l_377))
                        continue;
                    (*l_377) = func_47((((((safe_add_func_int64_t_s_s((((VECTOR(int8_t, 2))(0x55L, 0x3FL)).even || ((*l_299) | (((void*)0 != l_299) , ((safe_sub_func_uint16_t_u_u(((((((*l_403) = ((*l_401) = &p_934->g_227)) != l_274[4][3]) <= (safe_rshift_func_int8_t_s_u((safe_mod_func_uint16_t_u_u(((-8L) && (safe_sub_func_uint16_t_u_u(((*l_313) != (safe_lshift_func_uint16_t_u_s((*l_299), 11))), (0x1619L <= p_24)))), FAKE_DIVERGE(p_934->global_1_offset, get_global_id(1), 10))), 2))) , (*l_273)) , p_24), GROUP_DIVERGE(2, 1))) >= (-6L))))), l_413)) | (-1L)) , 0x3FL) ^ 249UL) == p_23), (*l_299), l_414, p_934);
                    (*l_414) = ((safe_lshift_func_int8_t_s_s((p_24 || ((VECTOR(int8_t, 4))((-2L), ((safe_add_func_uint16_t_u_u((((l_313 != l_419) ^ p_24) || 0L), p_24)) >= ((l_420 == ((safe_div_func_int8_t_s_s((((((((*l_424) = 0x227728EC3C22B1ABL) > p_934->g_217) >= 0x06CCCDE6L) , (*l_273)) >= 4L) & 0x1450DB92L), 1L)) , &l_372)) > FAKE_DIVERGE(p_934->local_0_offset, get_local_id(0), 10))), (-1L), 0x2AL)).z), 3)) ^ (**l_377));
                }
                else
                { /* block id: 135 */
                    return p_23;
                }
                if ((safe_mul_func_int16_t_s_s(((**l_377) , p_23), (safe_rshift_func_uint8_t_u_s(246UL, 7)))))
                { /* block id: 138 */
                    (*p_934->g_430) = l_429;
                }
                else
                { /* block id: 140 */
                    p_934->g_433++;
                    (*l_377) = (p_23 , &l_376);
                }
            }
            (*l_414) = (l_436[5][0] != l_436[5][0]);
        }
    }
    else
    { /* block id: 147 */
        int32_t *l_437 = (void*)0;
        int32_t *l_438 = &l_276;
        int32_t *l_439[8][3] = {{&p_934->g_73,&p_934->g_325,&l_277[6]},{&p_934->g_73,&p_934->g_325,&l_277[6]},{&p_934->g_73,&p_934->g_325,&l_277[6]},{&p_934->g_73,&p_934->g_325,&l_277[6]},{&p_934->g_73,&p_934->g_325,&l_277[6]},{&p_934->g_73,&p_934->g_325,&l_277[6]},{&p_934->g_73,&p_934->g_325,&l_277[6]},{&p_934->g_73,&p_934->g_325,&l_277[6]}};
        int8_t *l_460 = &p_934->g_224[3][1][1];
        uint8_t l_461 = 255UL;
        VECTOR(uint8_t, 2) l_477 = (VECTOR(uint8_t, 2))(8UL, 0x09L);
        int32_t l_527 = (-7L);
        int32_t l_568[1][5] = {{0x37B264C8L,0x37B264C8L,0x37B264C8L,0x37B264C8L,0x37B264C8L}};
        VECTOR(int16_t, 2) l_612 = (VECTOR(int16_t, 2))(4L, 0x2B61L);
        VECTOR(uint64_t, 2) l_672 = (VECTOR(uint64_t, 2))(0xB7142DB792E0F66AL, 18446744073709551614UL);
        int i, j;
        ++l_440;
        if ((**p_934->g_107))
        { /* block id: 149 */
            int16_t *l_457 = (void*)0;
            uint32_t l_462 = 0UL;
            (*l_438) |= ((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(l_445.s4044)).y, ((((--(*p_934->g_102)) ^ ((-1L) >= 0x37B0FCE825EC0CCEL)) , l_450) == l_450))) , (l_462 = ((safe_div_func_uint64_t_u_u(((*l_299) | (safe_mod_func_int8_t_s_s((((safe_sub_func_int16_t_s_s(((l_457 != (**p_934->g_430)) , ((((((safe_add_func_uint32_t_u_u(p_934->g_3, (((*p_934->g_108) <= (-9L)) <= p_24))) & GROUP_DIVERGE(0, 1)) , 0x215184BDL) , l_460) == (void*)0) | GROUP_DIVERGE(0, 1))), p_24)) > p_23) | l_461), (*p_934->g_102)))), GROUP_DIVERGE(2, 1))) > 0x5F57L)));
        }
        else
        { /* block id: 153 */
            VECTOR(uint16_t, 2) l_463 = (VECTOR(uint16_t, 2))(65533UL, 0x68B8L);
            VECTOR(uint8_t, 8) l_474 = (VECTOR(uint8_t, 8))(0x54L, (VECTOR(uint8_t, 4))(0x54L, (VECTOR(uint8_t, 2))(0x54L, 0x45L), 0x45L), 0x45L, 0x54L, 0x45L);
            VECTOR(uint8_t, 8) l_475 = (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0xD3L), 0xD3L), 0xD3L, 9UL, 0xD3L);
            uint8_t **l_483 = &p_934->g_102;
            int32_t l_486 = 1L;
            int32_t l_487 = 0x52FF0F2AL;
            int32_t l_488[6][10] = {{0x76C50A03L,0x433FF1D2L,0x73056AD7L,(-1L),(-1L),0x76C50A03L,(-1L),1L,(-1L),0x76C50A03L},{0x76C50A03L,0x433FF1D2L,0x73056AD7L,(-1L),(-1L),0x76C50A03L,(-1L),1L,(-1L),0x76C50A03L},{0x76C50A03L,0x433FF1D2L,0x73056AD7L,(-1L),(-1L),0x76C50A03L,(-1L),1L,(-1L),0x76C50A03L},{0x76C50A03L,0x433FF1D2L,0x73056AD7L,(-1L),(-1L),0x76C50A03L,(-1L),1L,(-1L),0x76C50A03L},{0x76C50A03L,0x433FF1D2L,0x73056AD7L,(-1L),(-1L),0x76C50A03L,(-1L),1L,(-1L),0x76C50A03L},{0x76C50A03L,0x433FF1D2L,0x73056AD7L,(-1L),(-1L),0x76C50A03L,(-1L),1L,(-1L),0x76C50A03L}};
            uint64_t l_489 = 0xEA01AB5E679FB924L;
            int i, j;
            (*l_438) |= ((((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 16))(l_463.xxxxyxxxyxxyxxyx)).s10))).hi , (((VECTOR(int8_t, 8))(p_934->g_464.s42575114)).s6 , (safe_div_func_uint16_t_u_u((p_23 != p_934->g_73), ((safe_lshift_func_int16_t_s_s(p_934->g_293.sa, ((VECTOR(int16_t, 4))(l_469.xxxx)).z)) || (FAKE_DIVERGE(p_934->global_2_offset, get_global_id(2), 10) >= p_934->g_470)))))) , ((safe_sub_func_uint16_t_u_u((((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 2))(p_934->g_473.s74)).xxxyxxxyxyxyxxyy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(l_474.s5121606453742076)).hi)).s75, ((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 4))(l_475.s1677)), ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(p_934->g_476.secebecd62392891b)).s92)), 253UL, 0xC2L, ((VECTOR(uint8_t, 2))(l_477.xy)), 0x55L, 0UL)).s42)), ((VECTOR(uint8_t, 2))(255UL, 0UL))))).xyyx))).odd))).xyyxyyxx)).s1426136661465400))).s6 <= (safe_rshift_func_int16_t_s_s((p_934->g_5 != (-1L)), 10))), ((((((VECTOR(uint64_t, 16))(p_934->g_480.zxyzxxyyzzyxzzzx)).sc != (((((&p_934->g_155 == l_483) , (safe_sub_func_uint32_t_u_u(0UL, 1L))) , (*p_934->g_137)) || (*l_299)) | 0L)) , 18446744073709551614UL) , l_463.x) != 1L))) != 0x2FL));
            ++l_489;
        }
        for (p_934->g_325 = 21; (p_934->g_325 >= (-25)); p_934->g_325--)
        { /* block id: 159 */
            int32_t **l_494 = &p_934->g_108;
            int32_t *l_555 = &p_934->g_227;
            int32_t **l_554 = &l_555;
            int32_t l_560 = (-9L);
            int32_t l_562 = (-4L);
            int32_t l_566 = 0L;
            int32_t l_567 = (-1L);
            uint64_t *l_584 = (void*)0;
            VECTOR(uint64_t, 4) l_600 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551606UL), 18446744073709551606UL);
            int64_t *l_651 = &p_934->g_278[2];
            uint32_t l_695 = 0x8F98FF23L;
            uint16_t **l_705 = (void*)0;
            int i;
            (*l_494) = (void*)0;
        }
    }
    if ((atomic_inc(&p_934->g_atomic_input[12 * get_linear_group_id() + 0]) == 1))
    { /* block id: 280 */
        int32_t l_741[6];
        int i;
        for (i = 0; i < 6; i++)
            l_741[i] = 2L;
        for (l_741[0] = 0; (l_741[0] <= (-22)); l_741[0] = safe_sub_func_uint64_t_u_u(l_741[0], 9))
        { /* block id: 283 */
            VECTOR(int32_t, 4) l_744 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-4L)), (-4L));
            uint32_t l_745 = 0x3F71238DL;
            int i;
            l_745 ^= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_744.zwwy)).zxzwxzxy)).s4;
            for (l_745 = 25; (l_745 > 28); ++l_745)
            { /* block id: 287 */
                int32_t l_749 = (-6L);
                int32_t *l_748[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t *l_750 = &l_749;
                int32_t *l_751 = &l_749;
                int i;
                l_748[7] = l_748[7];
                l_751 = l_750;
            }
            for (l_744.z = 0; (l_744.z < (-25)); --l_744.z)
            { /* block id: 293 */
                int64_t l_754 = 0L;
                int64_t l_755 = 1L;
                VECTOR(int8_t, 2) l_756 = (VECTOR(int8_t, 2))(0x30L, 0L);
                uint16_t l_757 = 0xEB3BL;
                int16_t l_758 = 1L;
                uint32_t l_759[7] = {4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL};
                uint16_t l_760 = 0x5C99L;
                uint32_t l_761 = 0UL;
                int i;
                l_755 = l_754;
                l_759[6] = (l_756.y , (l_757 , l_758));
                l_761 = l_760;
            }
            for (l_744.x = 0; (l_744.x < 22); l_744.x++)
            { /* block id: 300 */
                VECTOR(int16_t, 8) l_764 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x7258L), 0x7258L), 0x7258L, (-1L), 0x7258L);
                VECTOR(uint16_t, 8) l_765 = (VECTOR(uint16_t, 8))(0xF630L, (VECTOR(uint16_t, 4))(0xF630L, (VECTOR(uint16_t, 2))(0xF630L, 0x198DL), 0x198DL), 0x198DL, 0xF630L, 0x198DL);
                VECTOR(int32_t, 2) l_766 = (VECTOR(int32_t, 2))(0x3B037EF1L, 0x00C747D8L);
                int32_t l_767[2][1][6] = {{{(-1L),1L,(-1L),(-1L),1L,(-1L)}},{{(-1L),1L,(-1L),(-1L),1L,(-1L)}}};
                int8_t l_768 = 0L;
                VECTOR(int16_t, 16) l_769 = (VECTOR(int16_t, 16))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x394FL), 0x394FL), 0x394FL, (-7L), 0x394FL, (VECTOR(int16_t, 2))((-7L), 0x394FL), (VECTOR(int16_t, 2))((-7L), 0x394FL), (-7L), 0x394FL, (-7L), 0x394FL);
                int8_t l_770[6];
                uint8_t l_771 = 251UL;
                int32_t *l_774 = (void*)0;
                int32_t *l_775 = (void*)0;
                VECTOR(int64_t, 8) l_776 = (VECTOR(int64_t, 8))(0x70195FFB90FCB008L, (VECTOR(int64_t, 4))(0x70195FFB90FCB008L, (VECTOR(int64_t, 2))(0x70195FFB90FCB008L, 5L), 5L), 5L, 0x70195FFB90FCB008L, 5L);
                uint64_t l_777 = 0x2D1C5063322D2089L;
                VECTOR(int32_t, 2) l_778 = (VECTOR(int32_t, 2))(5L, 0x5FADF83AL);
                VECTOR(int32_t, 16) l_779 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x60DE0231L), 0x60DE0231L), 0x60DE0231L, (-1L), 0x60DE0231L, (VECTOR(int32_t, 2))((-1L), 0x60DE0231L), (VECTOR(int32_t, 2))((-1L), 0x60DE0231L), (-1L), 0x60DE0231L, (-1L), 0x60DE0231L);
                VECTOR(uint64_t, 4) l_780 = (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 18446744073709551615UL), 18446744073709551615UL);
                VECTOR(uint64_t, 4) l_781 = (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0x03B823222618C382L), 0x03B823222618C382L);
                int16_t l_782[1];
                VECTOR(uint64_t, 16) l_783 = (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x65DD5734A07681C3L), 0x65DD5734A07681C3L), 0x65DD5734A07681C3L, 18446744073709551611UL, 0x65DD5734A07681C3L, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x65DD5734A07681C3L), (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x65DD5734A07681C3L), 18446744073709551611UL, 0x65DD5734A07681C3L, 18446744073709551611UL, 0x65DD5734A07681C3L);
                VECTOR(uint64_t, 8) l_784 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x270FBF512F4442FBL), 0x270FBF512F4442FBL), 0x270FBF512F4442FBL, 0UL, 0x270FBF512F4442FBL);
                VECTOR(uint64_t, 4) l_785 = (VECTOR(uint64_t, 4))(0xE8F69AAAE62ED68EL, (VECTOR(uint64_t, 2))(0xE8F69AAAE62ED68EL, 18446744073709551615UL), 18446744073709551615UL);
                VECTOR(uint64_t, 16) l_786 = (VECTOR(uint64_t, 16))(0xC218993D28DFF4DFL, (VECTOR(uint64_t, 4))(0xC218993D28DFF4DFL, (VECTOR(uint64_t, 2))(0xC218993D28DFF4DFL, 0UL), 0UL), 0UL, 0xC218993D28DFF4DFL, 0UL, (VECTOR(uint64_t, 2))(0xC218993D28DFF4DFL, 0UL), (VECTOR(uint64_t, 2))(0xC218993D28DFF4DFL, 0UL), 0xC218993D28DFF4DFL, 0UL, 0xC218993D28DFF4DFL, 0UL);
                int16_t l_787[8][6] = {{0x4959L,0x135FL,0x0C7FL,0x135FL,0x4959L,0x4959L},{0x4959L,0x135FL,0x0C7FL,0x135FL,0x4959L,0x4959L},{0x4959L,0x135FL,0x0C7FL,0x135FL,0x4959L,0x4959L},{0x4959L,0x135FL,0x0C7FL,0x135FL,0x4959L,0x4959L},{0x4959L,0x135FL,0x0C7FL,0x135FL,0x4959L,0x4959L},{0x4959L,0x135FL,0x0C7FL,0x135FL,0x4959L,0x4959L},{0x4959L,0x135FL,0x0C7FL,0x135FL,0x4959L,0x4959L},{0x4959L,0x135FL,0x0C7FL,0x135FL,0x4959L,0x4959L}};
                uint32_t l_788 = 7UL;
                uint8_t l_789 = 0x1AL;
                uint32_t l_790 = 6UL;
                int32_t l_791 = 0x09F29A1DL;
                VECTOR(uint16_t, 4) l_792 = (VECTOR(uint16_t, 4))(0xDC5FL, (VECTOR(uint16_t, 2))(0xDC5FL, 0xDC29L), 0xDC29L);
                VECTOR(int32_t, 4) l_793 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-9L)), (-9L));
                VECTOR(int32_t, 16) l_794 = (VECTOR(int32_t, 16))(0x1E14BC91L, (VECTOR(int32_t, 4))(0x1E14BC91L, (VECTOR(int32_t, 2))(0x1E14BC91L, 2L), 2L), 2L, 0x1E14BC91L, 2L, (VECTOR(int32_t, 2))(0x1E14BC91L, 2L), (VECTOR(int32_t, 2))(0x1E14BC91L, 2L), 0x1E14BC91L, 2L, 0x1E14BC91L, 2L);
                VECTOR(int32_t, 8) l_795 = (VECTOR(int32_t, 8))(0x41ED00D7L, (VECTOR(int32_t, 4))(0x41ED00D7L, (VECTOR(int32_t, 2))(0x41ED00D7L, 0x429CE3B6L), 0x429CE3B6L), 0x429CE3B6L, 0x41ED00D7L, 0x429CE3B6L);
                VECTOR(uint32_t, 8) l_796 = (VECTOR(uint32_t, 8))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 0xDCE1238CL), 0xDCE1238CL), 0xDCE1238CL, 4294967293UL, 0xDCE1238CL);
                int16_t l_797[5][6][5] = {{{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L}},{{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L}},{{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L}},{{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L}},{{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L},{0x364BL,(-1L),0L,0x6951L,0x3401L}}};
                int16_t l_798[2];
                int32_t l_799 = 0x6F2FBFAFL;
                VECTOR(int16_t, 8) l_800 = (VECTOR(int16_t, 8))(0x21D5L, (VECTOR(int16_t, 4))(0x21D5L, (VECTOR(int16_t, 2))(0x21D5L, 0x2143L), 0x2143L), 0x2143L, 0x21D5L, 0x2143L);
                int8_t l_801 = 0x34L;
                int32_t l_802 = (-5L);
                int i, j, k;
                for (i = 0; i < 6; i++)
                    l_770[i] = 1L;
                for (i = 0; i < 1; i++)
                    l_782[i] = 5L;
                for (i = 0; i < 2; i++)
                    l_798[i] = 0x1338L;
                l_770[1] = (l_769.s1 = (l_768 = (l_767[1][0][1] = ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(l_764.s13116644)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_765.s2241)).yxzxxwzw))))).even, ((VECTOR(int32_t, 2))(l_766.yx)).yxxx))).zzywzwyx)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-8L), 0x70959EC0L)))).xxyxxyyy))).s0)));
                l_771--;
                l_775 = l_774;
                l_802 ^= (((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 2))(l_776.s06)).yxxxxxxx, ((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_777, ((VECTOR(int32_t, 2))(0x630205E9L, (-10L))), 0x71E744F2L)).zxyzwwxz, ((VECTOR(int32_t, 4))(l_778.yxyy)).yxyxxywx, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(0x60A0D6ACL, ((VECTOR(int32_t, 8))(l_779.s0effa08e)), 0L, (l_791 |= (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(18446744073709551611UL, 0xA4FCEA06AB296C8FL)), 0xC4757DCCF36AABA1L, 0xC91A10AC2BAACE42L)), 0UL, 0UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 8))(l_780.wyxywwyx)).s4056421455241155, ((VECTOR(uint64_t, 8))((l_782[0] = ((VECTOR(uint64_t, 8))(l_781.wwyywxzx)).s5), ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_783.sbb5cc286)).s64)).yyyx, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_784.s43)))).xxxxyxxx)).odd, ((VECTOR(uint64_t, 4))(l_785.xxxz))))), ((VECTOR(uint64_t, 2))(0x51F000531C245087L, 0xB4445FE88FA23D55L)), 0x390D7008F3867E53L)).s6437606142357241))).s5d)), ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 4))(l_786.sa0ae)).zxxywyzx, ((VECTOR(uint64_t, 4))((l_788 = (l_787[4][2] &= 0xEDCD334D712A2B6CL)), l_789, 0x3879931BCF9EA041L, 0x4E0083F9EAAD976FL)).yzzxwwzx))))).sa , l_790)), l_792.z, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x3201F352L, 8L)).yxyxyxxy)).s1, (-1L), 0L, 0x6A8F67B2L)), ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(l_793.wy)).yxyxxxxx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_794.sc10d2376)).s13)).yxxyyxxx))).s7352714101741322, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_795.s75753667)).s3561505462657037))))).even))).lo, ((VECTOR(uint32_t, 2))(l_796.s77)).yxxy))).wwxxwyzy))).s02)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x60DBDF500BC7E5EDL, 0x14AF2EE1E8DDD1BEL)))).xyxx)).odd, ((VECTOR(int64_t, 8))(l_797[3][2][2], l_798[0], l_799, (l_776.s5 ^= l_800.s6), ((VECTOR(int64_t, 4))(0x45D192A03CABBB41L)))).s27))), (-1L), 0x4AF40AE5A38D8B1EL)).hi))).lo , l_801);
            }
        }
        unsigned int result = 0;
        int l_741_i0;
        for (l_741_i0 = 0; l_741_i0 < 6; l_741_i0++) {
            result += l_741[l_741_i0];
        }
        atomic_add(&p_934->g_special_values[12 * get_linear_group_id() + 0], result);
    }
    else
    { /* block id: 315 */
        (1 + 1);
    }
    (*p_934->g_107) = &l_275;
    return p_934->g_700.se;
}


/* ------------------------------------------ */
/* 
 * reads : p_934->g_159 p_934->g_102 p_934->g_69 p_934->g_152 p_934->g_164 p_934->g_73 p_934->g_108 p_934->g_3 p_934->g_198 p_934->g_203 p_934->g_138 p_934->g_137 p_934->g_104 p_934->g_222 p_934->g_224 p_934->g_225 p_934->g_227 p_934->g_262
 * writes: p_934->g_159 p_934->g_69 p_934->g_156 p_934->l_comm_values p_934->g_73 p_934->g_162 p_934->g_217 p_934->g_164 p_934->g_224 p_934->g_227 p_934->g_comm_values p_934->g_254 p_934->g_104 p_934->g_261 p_934->g_262
 */
uint64_t  func_25(uint16_t  p_26, uint32_t  p_27, uint64_t  p_28, struct S0 * p_934)
{ /* block id: 49 */
    uint16_t l_169 = 65535UL;
    VECTOR(uint8_t, 4) l_174 = (VECTOR(uint8_t, 4))(0xFAL, (VECTOR(uint8_t, 2))(0xFAL, 0xFAL), 0xFAL);
    int32_t l_180 = 0x63A797FBL;
    int32_t l_196 = 0x61398D32L;
    VECTOR(uint8_t, 16) l_199 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x49L), 0x49L), 0x49L, 1UL, 0x49L, (VECTOR(uint8_t, 2))(1UL, 0x49L), (VECTOR(uint8_t, 2))(1UL, 0x49L), 1UL, 0x49L, 1UL, 0x49L);
    VECTOR(int64_t, 8) l_210 = (VECTOR(int64_t, 8))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0x5F972C4620BAB25EL), 0x5F972C4620BAB25EL), 0x5F972C4620BAB25EL, 6L, 0x5F972C4620BAB25EL);
    int64_t l_215 = 0x7B6CD3ABC8045654L;
    int32_t *l_218[3];
    int i;
    for (i = 0; i < 3; i++)
        l_218[i] = &l_180;
    for (p_934->g_159 = 0; (p_934->g_159 < 48); p_934->g_159 = safe_add_func_uint64_t_u_u(p_934->g_159, 9))
    { /* block id: 52 */
        uint8_t *l_175 = &p_934->g_156;
        int64_t *l_181 = (void*)0;
        int64_t *l_182 = (void*)0;
        int64_t *l_183[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_184 = (-2L);
        int32_t l_193[4][4] = {{0x7AFD751FL,0x7AFD751FL,0x7AFD751FL,0x7AFD751FL},{0x7AFD751FL,0x7AFD751FL,0x7AFD751FL,0x7AFD751FL},{0x7AFD751FL,0x7AFD751FL,0x7AFD751FL,0x7AFD751FL},{0x7AFD751FL,0x7AFD751FL,0x7AFD751FL,0x7AFD751FL}};
        int32_t *l_194 = &p_934->g_73;
        int32_t l_195[3][9] = {{(-1L),0x73A0AF4FL,0x33419C3FL,0L,0x73A0AF4FL,0L,0x33419C3FL,0x73A0AF4FL,(-1L)},{(-1L),0x73A0AF4FL,0x33419C3FL,0L,0x73A0AF4FL,0L,0x33419C3FL,0x73A0AF4FL,(-1L)},{(-1L),0x73A0AF4FL,0x33419C3FL,0L,0x73A0AF4FL,0L,0x33419C3FL,0x73A0AF4FL,(-1L)}};
        VECTOR(uint8_t, 2) l_197 = (VECTOR(uint8_t, 2))(0UL, 252UL);
        VECTOR(uint8_t, 16) l_200 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 254UL), 254UL), 254UL, 0UL, 254UL, (VECTOR(uint8_t, 2))(0UL, 254UL), (VECTOR(uint8_t, 2))(0UL, 254UL), 0UL, 254UL, 0UL, 254UL);
        VECTOR(uint8_t, 16) l_201 = (VECTOR(uint8_t, 16))(0x5EL, (VECTOR(uint8_t, 4))(0x5EL, (VECTOR(uint8_t, 2))(0x5EL, 0UL), 0UL), 0UL, 0x5EL, 0UL, (VECTOR(uint8_t, 2))(0x5EL, 0UL), (VECTOR(uint8_t, 2))(0x5EL, 0UL), 0x5EL, 0UL, 0x5EL, 0UL);
        VECTOR(uint8_t, 2) l_202 = (VECTOR(uint8_t, 2))(0xF8L, 0x37L);
        uint16_t *l_213 = (void*)0;
        int16_t *l_214 = &p_934->g_162;
        uint32_t *l_216 = &p_934->g_217;
        VECTOR(int16_t, 2) l_221 = (VECTOR(int16_t, 2))(0x7BD9L, 0x6770L);
        int8_t *l_223 = &p_934->g_224[3][1][1];
        int32_t *l_226 = &p_934->g_227;
        VECTOR(int32_t, 8) l_244 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-2L)), (-2L)), (-2L), 0L, (-2L));
        int8_t *l_253[1];
        int i, j;
        for (i = 0; i < 1; i++)
            l_253[i] = (void*)0;
        l_196 = (l_169 & ((safe_rshift_func_uint8_t_u_u(((*p_934->g_102)--), (((*l_175) = ((VECTOR(uint8_t, 2))(l_174.xx)).lo) >= (p_27 < (l_195[0][4] = (((*l_194) |= (safe_rshift_func_int8_t_s_s((safe_mod_func_int32_t_s_s(((l_193[1][0] = (((l_184 &= (p_28 <= (l_180 &= p_28))) , (p_934->l_comm_values[(safe_mod_func_uint32_t_u_u(p_934->tid, 1))] = ((safe_add_func_int16_t_s_s(((void*)0 == l_175), (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), l_174.x)))) > ((FAKE_DIVERGE(p_934->group_2_offset, get_group_id(2), 10) ^ (safe_rshift_func_int8_t_s_u((l_174.w & (safe_div_func_int64_t_s_s(0x16B5F1DC6DA78383L, FAKE_DIVERGE(p_934->group_1_offset, get_group_id(1), 10)))), 6))) || p_934->g_152.s6)))) == p_934->g_164)) < 5L), 0x4AAB06B5L)), 4))) < 2L)))))) , 5L));
        if ((*p_934->g_108))
            break;
        p_934->g_164 ^= (((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 4))(l_197.xxxy)), ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(1UL, 0x43L)).xxxxxyxx, ((VECTOR(uint8_t, 16))(p_934->g_198.yxxywyyyxxzyywxz)).even))).s10, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 4))(l_199.s66df)).even, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_200.se6fc6e75)).s7356031726233727)).sed))), 1UL, (*p_934->g_102), 7UL, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_201.sa0)), 255UL, ((VECTOR(uint8_t, 8))(l_202.xxyyyyyy)), 0xA4L, 1UL, ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 4))(247UL, ((VECTOR(uint8_t, 2))(p_934->g_203.s02)), 246UL)).even, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 4))((p_28 & ((p_934->g_138.w , l_175) == (void*)0)), ((((*l_216) = ((VECTOR(uint32_t, 8))(((-1L) >= (((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0xB3L, (safe_mul_func_int8_t_s_s((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 4))(l_210.s7662)).w, (-5L))), ((*p_934->g_137) && ((*l_214) = (safe_rshift_func_int8_t_s_s(((l_213 == (void*)0) & l_196), p_934->g_198.z)))))), 0UL, 0xF5L)).yyzyxzyz)).s3, l_174.z)) , (void*)0) != &l_195[0][4])), GROUP_DIVERGE(1, 1), l_215, 0x77BC7929L, p_27, ((VECTOR(uint32_t, 2))(0xFEF35BE7L)), 1UL)).s0) , l_218[1]) == &l_193[1][0]), 0x13L, 0xDAL)), ((VECTOR(uint8_t, 4))(0x68L))))).zxxxwwzyzzzzwwzx)).s3e))).xyxy, ((VECTOR(uint8_t, 4))(0xCBL))))), 0x84L, 0x45L, 255UL, 0UL)).s34, ((VECTOR(uint8_t, 2))(255UL))))), 0x2EL)).even)), ((VECTOR(uint8_t, 2))(0xB9L)), 0UL)).s1d))).xyxx, ((VECTOR(uint8_t, 4))(249UL))))), (*l_194), (*p_934->g_102), ((VECTOR(uint8_t, 8))(7UL)), 0x9CL, 0xABL)).hi, (uint8_t)0xF8L, (uint8_t)0x3CL))))).s73, ((VECTOR(uint8_t, 2))(0xE8L))))).hi && p_934->g_198.z);
        l_193[3][2] ^= ((*p_934->g_102) & (p_934->g_262 ^= (p_934->g_261 = (safe_mul_func_int8_t_s_s(p_934->g_164, (((*l_226) &= (((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 4))(l_221.yxyx)), ((VECTOR(int16_t, 8))(p_934->g_222.yyxxyxyx)).odd))).y == (((*l_223) |= 2L) , ((VECTOR(uint16_t, 8))(65535UL, 65529UL, ((VECTOR(uint16_t, 4))(p_934->g_225.xxyy)), 4UL, 4UL)).s3))) , ((p_934->g_comm_values[p_934->tid] = p_934->g_69) > (safe_add_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((*l_194), 11)), (safe_div_func_uint16_t_u_u(((*p_934->g_137) = (safe_mod_func_uint8_t_u_u((safe_add_func_int8_t_s_s(p_934->g_224[7][7][2], ((safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u(p_934->g_225.x, ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(l_244.s6436)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL)).yyyyyyyxyxyxyyyx)).s7f8c)).y, (safe_mod_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u(((safe_add_func_int8_t_s_s((p_934->g_254 = (-1L)), (safe_mul_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((safe_add_func_int64_t_s_s(((18446744073709551606UL || (*l_194)) , (*l_194)), p_28)) && 0x56DE816BL))), (*l_194))))) != (*p_934->g_137)), 14)) ^ p_934->g_159), (*l_194))))) , p_26), (-3L), 0x31CB770FL, 0x66CFC290L)), ((VECTOR(int32_t, 8))((-1L))), (-1L), (-1L), 0x34015623L, 0x028D20C3L)).sa442, ((VECTOR(int32_t, 4))(4L))))).wyzxwyyw, ((VECTOR(int32_t, 8))(0x338B262BL))))).s5)), p_26)) != (*p_934->g_108)))), p_934->g_73))), 0x1FAAL)))), p_26)))))))));
    }
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads : p_934->g_73 p_934->g_138 p_934->g_102 p_934->g_69 p_934->g_76 p_934->g_152 p_934->g_3 p_934->g_comm_values p_934->g_107 p_934->g_108 p_934->g_164
 * writes: p_934->g_73 p_934->g_137 p_934->g_155 p_934->g_159 p_934->g_164
 */
int16_t  func_36(uint64_t  p_37, int32_t  p_38, int64_t  p_39, uint64_t  p_40, int32_t * p_41, struct S0 * p_934)
{ /* block id: 40 */
    int32_t l_130 = 0x45593A3FL;
    int32_t *l_131[2][3][4] = {{{(void*)0,&p_934->g_73,(void*)0,(void*)0},{(void*)0,&p_934->g_73,(void*)0,(void*)0},{(void*)0,&p_934->g_73,(void*)0,(void*)0}},{{(void*)0,&p_934->g_73,(void*)0,(void*)0},{(void*)0,&p_934->g_73,(void*)0,(void*)0},{(void*)0,&p_934->g_73,(void*)0,(void*)0}}};
    VECTOR(int32_t, 8) l_132 = (VECTOR(int32_t, 8))(0x6932ECC1L, (VECTOR(int32_t, 4))(0x6932ECC1L, (VECTOR(int32_t, 2))(0x6932ECC1L, 0x1F1BA8A2L), 0x1F1BA8A2L), 0x1F1BA8A2L, 0x6932ECC1L, 0x1F1BA8A2L);
    uint16_t *l_136[1][7] = {{&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104}};
    uint16_t **l_135[3][7][2] = {{{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]}},{{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]}},{{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]},{&l_136[0][5],&l_136[0][2]}}};
    VECTOR(int8_t, 4) l_139 = (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, 0L), 0L);
    uint8_t *l_153 = (void*)0;
    uint8_t **l_154[2];
    uint16_t l_157 = 0x779DL;
    int8_t *l_158[9][6][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
    int16_t *l_160 = (void*)0;
    int16_t *l_161[6];
    int16_t l_163 = 0L;
    uint32_t l_165 = 0x880B83B8L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_154[i] = &l_153;
    for (i = 0; i < 6; i++)
        l_161[i] = &p_934->g_162;
    l_165 = (safe_mod_func_int8_t_s_s((p_934->g_164 &= ((safe_add_func_int16_t_s_s((((safe_rshift_func_int16_t_s_s((l_163 |= (safe_mod_func_int64_t_s_s((((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 8))(((safe_add_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u((((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(0x76EF7C0EL, (p_934->g_73 = l_130), (p_934->g_73 == (+0x11538544L)), ((VECTOR(int32_t, 2))(l_132.s13)), (((safe_mod_func_uint8_t_u_u((((p_934->g_137 = &p_934->g_104) == (void*)0) <= ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(0x0D2DL, 1L, 0L, 0x4154L)))), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_934->g_138.wwzx)).zwzwwyww)).s3121430537470710)).s74, ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 8))(l_139.ywwyyzyy)).lo, ((VECTOR(uint8_t, 2))(1UL, 1UL)).yxxx))).hi, (int16_t)(((p_934->g_159 = (!(safe_add_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((safe_add_func_int8_t_s_s((((*p_934->g_102) == ((safe_mod_func_int8_t_s_s(p_934->g_138.x, (safe_div_func_int16_t_s_s(((p_934->g_76 , ((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_934->local_2_offset, get_local_id(2), 10), (((((VECTOR(int16_t, 16))(p_934->g_152.s5642264371131116)).s4 , ((p_934->g_155 = l_153) == &p_934->g_69)) && l_157) & p_39))) < p_934->g_3)) <= p_37), p_40)))) <= p_934->g_comm_values[p_934->tid])) , p_934->g_3), p_934->g_76)), 7)), FAKE_DIVERGE(p_934->global_0_offset, get_global_id(0), 10))))) != GROUP_DIVERGE(2, 1)) < 0x35BAACCC2DF66EBCL))))))).yxyx))), ((VECTOR(int16_t, 4))(0x50DAL))))).zxxyyyxw, ((VECTOR(int16_t, 8))(0x2081L))))))).s7751107170067454)).scac4))).x), (*p_934->g_102))) | (*p_934->g_102)) , (**p_934->g_107)), 0x388CA998L, (-5L), ((VECTOR(int32_t, 4))((-8L))), ((VECTOR(int32_t, 2))((-1L))), 0L, (-1L))))).s9ed8, ((VECTOR(int32_t, 4))((-1L)))))).y > 0x4F40C7B2L), 3)), 0x160125FCL)) > 0x4BB6089915209B59L), ((VECTOR(uint8_t, 2))(0x4DL)), 1UL, ((VECTOR(uint8_t, 4))(248UL)))).s3503726531416701, ((VECTOR(uint8_t, 16))(0UL))))).s4, p_37)) >= 4L) < p_934->g_3), p_37))), p_934->g_comm_values[p_934->tid])) && 0x37L) == 0x4DCCD75AL), 0x2CF5L)) && 0x64F4471DL)), p_38));
    return p_934->g_138.z;
}


/* ------------------------------------------ */
/* 
 * reads : p_934->g_73 p_934->g_108 p_934->g_3
 * writes: p_934->g_73
 */
uint64_t  func_42(int32_t * p_43, int32_t * p_44, int32_t * p_45, struct S0 * p_934)
{ /* block id: 35 */
    VECTOR(int32_t, 2) l_112 = (VECTOR(int32_t, 2))(0x727B0CF0L, 0x5799D52CL);
    int32_t *l_113 = &p_934->g_73;
    int i;
    (*l_113) &= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_112.xy)))).xxyy)).z;
    atomic_xor(&p_934->l_atomic_reduction[0], ((*p_934->g_108) ^ (safe_mul_func_int8_t_s_s(0x06L, (*l_113)))));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_934->v_collective += p_934->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    (*l_113) = (*p_45);
    return (*l_113);
}


/* ------------------------------------------ */
/* 
 * reads : p_934->g_3 p_934->l_comm_values p_934->g_5 p_934->g_comm_values p_934->g_76 p_934->g_107 p_934->g_69 p_934->g_108 p_934->g_73
 * writes: p_934->g_102 p_934->g_73 p_934->g_108 p_934->g_69
 */
int32_t * func_47(uint16_t  p_48, uint8_t  p_49, int32_t * p_50, struct S0 * p_934)
{ /* block id: 18 */
    VECTOR(uint8_t, 16) l_88 = (VECTOR(uint8_t, 16))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 255UL), 255UL), 255UL, 7UL, 255UL, (VECTOR(uint8_t, 2))(7UL, 255UL), (VECTOR(uint8_t, 2))(7UL, 255UL), 7UL, 255UL, 7UL, 255UL);
    VECTOR(uint8_t, 2) l_89 = (VECTOR(uint8_t, 2))(0x33L, 0x98L);
    VECTOR(int16_t, 2) l_94 = (VECTOR(int16_t, 2))(0L, 1L);
    VECTOR(uint64_t, 2) l_95 = (VECTOR(uint64_t, 2))(0xBBF4C003918A56ECL, 0x3B9F6D4B686F2FD6L);
    VECTOR(uint64_t, 2) l_96 = (VECTOR(uint64_t, 2))(0x33C814B4F5124410L, 18446744073709551606UL);
    VECTOR(uint64_t, 4) l_97 = (VECTOR(uint64_t, 4))(0xF84107A49E812ED6L, (VECTOR(uint64_t, 2))(0xF84107A49E812ED6L, 18446744073709551615UL), 18446744073709551615UL);
    VECTOR(uint64_t, 16) l_98 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x3B2D9701DEE0D328L), 0x3B2D9701DEE0D328L), 0x3B2D9701DEE0D328L, 1UL, 0x3B2D9701DEE0D328L, (VECTOR(uint64_t, 2))(1UL, 0x3B2D9701DEE0D328L), (VECTOR(uint64_t, 2))(1UL, 0x3B2D9701DEE0D328L), 1UL, 0x3B2D9701DEE0D328L, 1UL, 0x3B2D9701DEE0D328L);
    VECTOR(uint64_t, 8) l_99 = (VECTOR(uint64_t, 8))(18446744073709551610UL, (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 1UL), 1UL), 1UL, 18446744073709551610UL, 1UL);
    uint8_t *l_100 = &p_934->g_69;
    uint8_t **l_101[2];
    uint16_t *l_103[10] = {&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104,&p_934->g_104};
    int32_t l_105 = 6L;
    VECTOR(int8_t, 8) l_106 = (VECTOR(int8_t, 8))(0x6CL, (VECTOR(int8_t, 4))(0x6CL, (VECTOR(int8_t, 2))(0x6CL, 1L), 1L), 1L, 0x6CL, 1L);
    int i;
    for (i = 0; i < 2; i++)
        l_101[i] = &l_100;
    p_934->g_73 = (((safe_lshift_func_int16_t_s_u((((safe_div_func_int64_t_s_s(((safe_lshift_func_int8_t_s_u(((safe_lshift_func_uint16_t_u_u(((p_49 |= ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 2))(0xBCL, 0UL)), ((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 4))(l_88.s5226)).xyywwxxwwwzywwyx, ((VECTOR(uint8_t, 4))(l_89.yyyx)).wwwxzyxwzwyxxxxw))).scc))).odd) && (((*p_50) < (((+(safe_add_func_int64_t_s_s(l_88.se, ((((p_49 == ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_94.xxyyxyyy)).odd)).y) && GROUP_DIVERGE(0, 1)) , ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 2))(l_95.xy))))), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(l_96.xyyx)))).lo))).yyxyxxyyxxxyyyxx)).sc5, ((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 16))(l_97.wzxywyyzxyyzzxyz)), ((VECTOR(uint64_t, 2))(0x1DDAC0D4F8A8D9B7L, 0x8971D2F7AF164004L)).xxyxxyyxxyxxxxxy))).s7a)))).yxyxxxxx, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_98.sf3)).xyyyxyxx))))).s07, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(l_99.s6623142010501424)).lo)).s70))).yxyy, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x72E912FB0E7D4E85L, 0x3846C405962D9888L)).yyyyyyxyxxyxyyyx)).s429b, ((VECTOR(uint64_t, 2))(0x912EB57571CA78ACL, 18446744073709551615UL)).yxxy))).x) & ((p_934->g_102 = l_100) != &p_934->g_69))))) <= (l_105 = p_934->l_comm_values[(safe_mod_func_uint32_t_u_u(p_934->tid, 1))])) , (&p_934->g_102 == (void*)0))) , (((&p_934->g_73 == &p_934->g_3) > p_934->g_5) > p_934->g_comm_values[p_934->tid]))), p_934->g_comm_values[p_934->tid])) < 0x3ED4C648L), 5)) < p_48), p_48)) <= (-5L)) != p_48), p_48)) || 0x2B86L) <= p_934->g_3);
    if ((p_934->g_76 >= ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(l_106.s4217755110711133)))).s5))
    { /* block id: 23 */
        (*p_934->g_107) = &p_934->g_3;
    }
    else
    { /* block id: 25 */
        int32_t *l_111[3][6][3] = {{{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3}},{{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3}},{{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3},{&l_105,&l_105,&p_934->g_3}}};
        int i, j, k;
        for (p_934->g_69 = 8; (p_934->g_69 > 53); ++p_934->g_69)
        { /* block id: 28 */
            return (*p_934->g_107);
        }
        return (*p_934->g_107);
    }
    p_50 = p_50;
    return (*p_934->g_107);
}


/* ------------------------------------------ */
/* 
 * reads : p_934->g_76 p_934->g_3
 * writes: p_934->g_76
 */
int32_t  func_55(int32_t * p_56, uint64_t  p_57, int32_t * p_58, struct S0 * p_934)
{ /* block id: 15 */
    int32_t l_71[10] = {(-8L),(-1L),0x676DFA53L,(-1L),(-8L),(-8L),(-1L),0x676DFA53L,(-1L),(-8L)};
    int32_t *l_72 = &p_934->g_73;
    int32_t *l_74 = &p_934->g_73;
    int32_t *l_75[8] = {&p_934->g_73,&p_934->g_73,&p_934->g_73,&p_934->g_73,&p_934->g_73,&p_934->g_73,&p_934->g_73,&p_934->g_73};
    int i;
    --p_934->g_76;
    return p_934->g_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_934->g_3
 * writes:
 */
int16_t  func_59(uint64_t  p_60, int32_t * p_61, int32_t * p_62, int32_t * p_63, int32_t * p_64, struct S0 * p_934)
{ /* block id: 12 */
    return p_934->g_3;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_comm_values[i] = 1;
    struct S0 c_935;
    struct S0* p_934 = &c_935;
    struct S0 c_936 = {
        0x6E6BACD7L, // p_934->g_3
        0xD82C32B9L, // p_934->g_5
        0x69L, // p_934->g_69
        0x5416A781L, // p_934->g_73
        18446744073709551615UL, // p_934->g_76
        &p_934->g_69, // p_934->g_102
        5UL, // p_934->g_104
        &p_934->g_73, // p_934->g_108
        &p_934->g_108, // p_934->g_107
        &p_934->g_104, // p_934->g_137
        (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 2L), 2L), // p_934->g_138
        (VECTOR(int16_t, 8))(0x5C3EL, (VECTOR(int16_t, 4))(0x5C3EL, (VECTOR(int16_t, 2))(0x5C3EL, 0x72E0L), 0x72E0L), 0x72E0L, 0x5C3EL, 0x72E0L), // p_934->g_152
        3UL, // p_934->g_156
        &p_934->g_156, // p_934->g_155
        0x79L, // p_934->g_159
        5L, // p_934->g_162
        6L, // p_934->g_164
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xBDL), 0xBDL), // p_934->g_198
        (VECTOR(uint8_t, 8))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 1UL), 1UL), 1UL, 253UL, 1UL), // p_934->g_203
        0xE895130DL, // p_934->g_217
        (VECTOR(int16_t, 2))(0x6435L, (-3L)), // p_934->g_222
        {{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}},{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}},{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}},{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}},{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}},{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}},{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}},{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}},{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}},{{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL},{0x23L,2L,0x5BL}}}, // p_934->g_224
        (VECTOR(uint16_t, 2))(1UL, 9UL), // p_934->g_225
        0x2F2723D0L, // p_934->g_227
        0x1AL, // p_934->g_254
        65535UL, // p_934->g_261
        0x035FL, // p_934->g_262
        &p_934->g_164, // p_934->g_266
        {(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_934->g_278
        4294967287UL, // p_934->g_279
        (VECTOR(uint16_t, 4))(0x187AL, (VECTOR(uint16_t, 2))(0x187AL, 65533UL), 65533UL), // p_934->g_291
        (VECTOR(uint8_t, 16))(0xC3L, (VECTOR(uint8_t, 4))(0xC3L, (VECTOR(uint8_t, 2))(0xC3L, 0x22L), 0x22L), 0x22L, 0xC3L, 0x22L, (VECTOR(uint8_t, 2))(0xC3L, 0x22L), (VECTOR(uint8_t, 2))(0xC3L, 0x22L), 0xC3L, 0x22L, 0xC3L, 0x22L), // p_934->g_293
        (VECTOR(uint8_t, 2))(0x27L, 5UL), // p_934->g_295
        0x2B198404L, // p_934->g_325
        {(-1L)}, // p_934->g_332
        {{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}}}, // p_934->g_351
        (void*)0, // p_934->g_432
        &p_934->g_432, // p_934->g_431
        &p_934->g_431, // p_934->g_430
        4294967295UL, // p_934->g_433
        (VECTOR(int8_t, 8))(0x5CL, (VECTOR(int8_t, 4))(0x5CL, (VECTOR(int8_t, 2))(0x5CL, 0x63L), 0x63L), 0x63L, 0x5CL, 0x63L), // p_934->g_464
        0x2E3EL, // p_934->g_470
        (VECTOR(uint8_t, 8))(0x9CL, (VECTOR(uint8_t, 4))(0x9CL, (VECTOR(uint8_t, 2))(0x9CL, 0xA3L), 0xA3L), 0xA3L, 0x9CL, 0xA3L), // p_934->g_473
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL), // p_934->g_476
        (VECTOR(uint64_t, 4))(0x4415D568B141020EL, (VECTOR(uint64_t, 2))(0x4415D568B141020EL, 3UL), 3UL), // p_934->g_480
        (VECTOR(uint8_t, 8))(0x16L, (VECTOR(uint8_t, 4))(0x16L, (VECTOR(uint8_t, 2))(0x16L, 1UL), 1UL), 1UL, 0x16L, 1UL), // p_934->g_500
        (void*)0, // p_934->g_506
        &p_934->g_506, // p_934->g_505
        {{{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL}},{{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL}},{{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL}},{{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL},{0x1B99F690CBBE0C8AL,(-1L),0x30E47681407AFABEL,0x3A68172D9ECA17E3L,0L,(-1L),0x18827A3B5174BCEEL}}}, // p_934->g_539
        (void*)0, // p_934->g_557
        &p_934->g_557, // p_934->g_558
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL), // p_934->g_574
        &p_934->g_76, // p_934->g_585
        (VECTOR(int16_t, 2))(4L, 0x363AL), // p_934->g_613
        (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), (-1L)), (-1L)), // p_934->g_614
        0x3C4313ABL, // p_934->g_643
        (VECTOR(uint32_t, 8))(0x3D026A1DL, (VECTOR(uint32_t, 4))(0x3D026A1DL, (VECTOR(uint32_t, 2))(0x3D026A1DL, 4294967288UL), 4294967288UL), 4294967288UL, 0x3D026A1DL, 4294967288UL), // p_934->g_648
        0x85FBAD99L, // p_934->g_650
        65535UL, // p_934->g_694
        (VECTOR(int8_t, 16))(0x21L, (VECTOR(int8_t, 4))(0x21L, (VECTOR(int8_t, 2))(0x21L, 0x16L), 0x16L), 0x16L, 0x21L, 0x16L, (VECTOR(int8_t, 2))(0x21L, 0x16L), (VECTOR(int8_t, 2))(0x21L, 0x16L), 0x21L, 0x16L, 0x21L, 0x16L), // p_934->g_700
        (void*)0, // p_934->g_840
        &p_934->g_217, // p_934->g_863
        (VECTOR(uint64_t, 2))(18446744073709551608UL, 0UL), // p_934->g_878
        0x53E45966L, // p_934->g_883
        0, // p_934->v_collective
        sequence_input[get_global_id(0)], // p_934->global_0_offset
        sequence_input[get_global_id(1)], // p_934->global_1_offset
        sequence_input[get_global_id(2)], // p_934->global_2_offset
        sequence_input[get_local_id(0)], // p_934->local_0_offset
        sequence_input[get_local_id(1)], // p_934->local_1_offset
        sequence_input[get_local_id(2)], // p_934->local_2_offset
        sequence_input[get_group_id(0)], // p_934->group_0_offset
        sequence_input[get_group_id(1)], // p_934->group_1_offset
        sequence_input[get_group_id(2)], // p_934->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[0][get_linear_local_id()])), // p_934->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_935 = c_936;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_934);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_934->g_3, "p_934->g_3", print_hash_value);
    transparent_crc(p_934->g_5, "p_934->g_5", print_hash_value);
    transparent_crc(p_934->g_69, "p_934->g_69", print_hash_value);
    transparent_crc(p_934->g_73, "p_934->g_73", print_hash_value);
    transparent_crc(p_934->g_76, "p_934->g_76", print_hash_value);
    transparent_crc(p_934->g_104, "p_934->g_104", print_hash_value);
    transparent_crc(p_934->g_138.x, "p_934->g_138.x", print_hash_value);
    transparent_crc(p_934->g_138.y, "p_934->g_138.y", print_hash_value);
    transparent_crc(p_934->g_138.z, "p_934->g_138.z", print_hash_value);
    transparent_crc(p_934->g_138.w, "p_934->g_138.w", print_hash_value);
    transparent_crc(p_934->g_152.s0, "p_934->g_152.s0", print_hash_value);
    transparent_crc(p_934->g_152.s1, "p_934->g_152.s1", print_hash_value);
    transparent_crc(p_934->g_152.s2, "p_934->g_152.s2", print_hash_value);
    transparent_crc(p_934->g_152.s3, "p_934->g_152.s3", print_hash_value);
    transparent_crc(p_934->g_152.s4, "p_934->g_152.s4", print_hash_value);
    transparent_crc(p_934->g_152.s5, "p_934->g_152.s5", print_hash_value);
    transparent_crc(p_934->g_152.s6, "p_934->g_152.s6", print_hash_value);
    transparent_crc(p_934->g_152.s7, "p_934->g_152.s7", print_hash_value);
    transparent_crc(p_934->g_156, "p_934->g_156", print_hash_value);
    transparent_crc(p_934->g_159, "p_934->g_159", print_hash_value);
    transparent_crc(p_934->g_162, "p_934->g_162", print_hash_value);
    transparent_crc(p_934->g_164, "p_934->g_164", print_hash_value);
    transparent_crc(p_934->g_198.x, "p_934->g_198.x", print_hash_value);
    transparent_crc(p_934->g_198.y, "p_934->g_198.y", print_hash_value);
    transparent_crc(p_934->g_198.z, "p_934->g_198.z", print_hash_value);
    transparent_crc(p_934->g_198.w, "p_934->g_198.w", print_hash_value);
    transparent_crc(p_934->g_203.s0, "p_934->g_203.s0", print_hash_value);
    transparent_crc(p_934->g_203.s1, "p_934->g_203.s1", print_hash_value);
    transparent_crc(p_934->g_203.s2, "p_934->g_203.s2", print_hash_value);
    transparent_crc(p_934->g_203.s3, "p_934->g_203.s3", print_hash_value);
    transparent_crc(p_934->g_203.s4, "p_934->g_203.s4", print_hash_value);
    transparent_crc(p_934->g_203.s5, "p_934->g_203.s5", print_hash_value);
    transparent_crc(p_934->g_203.s6, "p_934->g_203.s6", print_hash_value);
    transparent_crc(p_934->g_203.s7, "p_934->g_203.s7", print_hash_value);
    transparent_crc(p_934->g_217, "p_934->g_217", print_hash_value);
    transparent_crc(p_934->g_222.x, "p_934->g_222.x", print_hash_value);
    transparent_crc(p_934->g_222.y, "p_934->g_222.y", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_934->g_224[i][j][k], "p_934->g_224[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_934->g_225.x, "p_934->g_225.x", print_hash_value);
    transparent_crc(p_934->g_225.y, "p_934->g_225.y", print_hash_value);
    transparent_crc(p_934->g_227, "p_934->g_227", print_hash_value);
    transparent_crc(p_934->g_254, "p_934->g_254", print_hash_value);
    transparent_crc(p_934->g_261, "p_934->g_261", print_hash_value);
    transparent_crc(p_934->g_262, "p_934->g_262", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_934->g_278[i], "p_934->g_278[i]", print_hash_value);

    }
    transparent_crc(p_934->g_279, "p_934->g_279", print_hash_value);
    transparent_crc(p_934->g_291.x, "p_934->g_291.x", print_hash_value);
    transparent_crc(p_934->g_291.y, "p_934->g_291.y", print_hash_value);
    transparent_crc(p_934->g_291.z, "p_934->g_291.z", print_hash_value);
    transparent_crc(p_934->g_291.w, "p_934->g_291.w", print_hash_value);
    transparent_crc(p_934->g_293.s0, "p_934->g_293.s0", print_hash_value);
    transparent_crc(p_934->g_293.s1, "p_934->g_293.s1", print_hash_value);
    transparent_crc(p_934->g_293.s2, "p_934->g_293.s2", print_hash_value);
    transparent_crc(p_934->g_293.s3, "p_934->g_293.s3", print_hash_value);
    transparent_crc(p_934->g_293.s4, "p_934->g_293.s4", print_hash_value);
    transparent_crc(p_934->g_293.s5, "p_934->g_293.s5", print_hash_value);
    transparent_crc(p_934->g_293.s6, "p_934->g_293.s6", print_hash_value);
    transparent_crc(p_934->g_293.s7, "p_934->g_293.s7", print_hash_value);
    transparent_crc(p_934->g_293.s8, "p_934->g_293.s8", print_hash_value);
    transparent_crc(p_934->g_293.s9, "p_934->g_293.s9", print_hash_value);
    transparent_crc(p_934->g_293.sa, "p_934->g_293.sa", print_hash_value);
    transparent_crc(p_934->g_293.sb, "p_934->g_293.sb", print_hash_value);
    transparent_crc(p_934->g_293.sc, "p_934->g_293.sc", print_hash_value);
    transparent_crc(p_934->g_293.sd, "p_934->g_293.sd", print_hash_value);
    transparent_crc(p_934->g_293.se, "p_934->g_293.se", print_hash_value);
    transparent_crc(p_934->g_293.sf, "p_934->g_293.sf", print_hash_value);
    transparent_crc(p_934->g_295.x, "p_934->g_295.x", print_hash_value);
    transparent_crc(p_934->g_295.y, "p_934->g_295.y", print_hash_value);
    transparent_crc(p_934->g_325, "p_934->g_325", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_934->g_332[i], "p_934->g_332[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_934->g_351[i][j][k], "p_934->g_351[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_934->g_433, "p_934->g_433", print_hash_value);
    transparent_crc(p_934->g_464.s0, "p_934->g_464.s0", print_hash_value);
    transparent_crc(p_934->g_464.s1, "p_934->g_464.s1", print_hash_value);
    transparent_crc(p_934->g_464.s2, "p_934->g_464.s2", print_hash_value);
    transparent_crc(p_934->g_464.s3, "p_934->g_464.s3", print_hash_value);
    transparent_crc(p_934->g_464.s4, "p_934->g_464.s4", print_hash_value);
    transparent_crc(p_934->g_464.s5, "p_934->g_464.s5", print_hash_value);
    transparent_crc(p_934->g_464.s6, "p_934->g_464.s6", print_hash_value);
    transparent_crc(p_934->g_464.s7, "p_934->g_464.s7", print_hash_value);
    transparent_crc(p_934->g_470, "p_934->g_470", print_hash_value);
    transparent_crc(p_934->g_473.s0, "p_934->g_473.s0", print_hash_value);
    transparent_crc(p_934->g_473.s1, "p_934->g_473.s1", print_hash_value);
    transparent_crc(p_934->g_473.s2, "p_934->g_473.s2", print_hash_value);
    transparent_crc(p_934->g_473.s3, "p_934->g_473.s3", print_hash_value);
    transparent_crc(p_934->g_473.s4, "p_934->g_473.s4", print_hash_value);
    transparent_crc(p_934->g_473.s5, "p_934->g_473.s5", print_hash_value);
    transparent_crc(p_934->g_473.s6, "p_934->g_473.s6", print_hash_value);
    transparent_crc(p_934->g_473.s7, "p_934->g_473.s7", print_hash_value);
    transparent_crc(p_934->g_476.s0, "p_934->g_476.s0", print_hash_value);
    transparent_crc(p_934->g_476.s1, "p_934->g_476.s1", print_hash_value);
    transparent_crc(p_934->g_476.s2, "p_934->g_476.s2", print_hash_value);
    transparent_crc(p_934->g_476.s3, "p_934->g_476.s3", print_hash_value);
    transparent_crc(p_934->g_476.s4, "p_934->g_476.s4", print_hash_value);
    transparent_crc(p_934->g_476.s5, "p_934->g_476.s5", print_hash_value);
    transparent_crc(p_934->g_476.s6, "p_934->g_476.s6", print_hash_value);
    transparent_crc(p_934->g_476.s7, "p_934->g_476.s7", print_hash_value);
    transparent_crc(p_934->g_476.s8, "p_934->g_476.s8", print_hash_value);
    transparent_crc(p_934->g_476.s9, "p_934->g_476.s9", print_hash_value);
    transparent_crc(p_934->g_476.sa, "p_934->g_476.sa", print_hash_value);
    transparent_crc(p_934->g_476.sb, "p_934->g_476.sb", print_hash_value);
    transparent_crc(p_934->g_476.sc, "p_934->g_476.sc", print_hash_value);
    transparent_crc(p_934->g_476.sd, "p_934->g_476.sd", print_hash_value);
    transparent_crc(p_934->g_476.se, "p_934->g_476.se", print_hash_value);
    transparent_crc(p_934->g_476.sf, "p_934->g_476.sf", print_hash_value);
    transparent_crc(p_934->g_480.x, "p_934->g_480.x", print_hash_value);
    transparent_crc(p_934->g_480.y, "p_934->g_480.y", print_hash_value);
    transparent_crc(p_934->g_480.z, "p_934->g_480.z", print_hash_value);
    transparent_crc(p_934->g_480.w, "p_934->g_480.w", print_hash_value);
    transparent_crc(p_934->g_500.s0, "p_934->g_500.s0", print_hash_value);
    transparent_crc(p_934->g_500.s1, "p_934->g_500.s1", print_hash_value);
    transparent_crc(p_934->g_500.s2, "p_934->g_500.s2", print_hash_value);
    transparent_crc(p_934->g_500.s3, "p_934->g_500.s3", print_hash_value);
    transparent_crc(p_934->g_500.s4, "p_934->g_500.s4", print_hash_value);
    transparent_crc(p_934->g_500.s5, "p_934->g_500.s5", print_hash_value);
    transparent_crc(p_934->g_500.s6, "p_934->g_500.s6", print_hash_value);
    transparent_crc(p_934->g_500.s7, "p_934->g_500.s7", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_934->g_539[i][j][k], "p_934->g_539[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_934->g_574.s0, "p_934->g_574.s0", print_hash_value);
    transparent_crc(p_934->g_574.s1, "p_934->g_574.s1", print_hash_value);
    transparent_crc(p_934->g_574.s2, "p_934->g_574.s2", print_hash_value);
    transparent_crc(p_934->g_574.s3, "p_934->g_574.s3", print_hash_value);
    transparent_crc(p_934->g_574.s4, "p_934->g_574.s4", print_hash_value);
    transparent_crc(p_934->g_574.s5, "p_934->g_574.s5", print_hash_value);
    transparent_crc(p_934->g_574.s6, "p_934->g_574.s6", print_hash_value);
    transparent_crc(p_934->g_574.s7, "p_934->g_574.s7", print_hash_value);
    transparent_crc(p_934->g_574.s8, "p_934->g_574.s8", print_hash_value);
    transparent_crc(p_934->g_574.s9, "p_934->g_574.s9", print_hash_value);
    transparent_crc(p_934->g_574.sa, "p_934->g_574.sa", print_hash_value);
    transparent_crc(p_934->g_574.sb, "p_934->g_574.sb", print_hash_value);
    transparent_crc(p_934->g_574.sc, "p_934->g_574.sc", print_hash_value);
    transparent_crc(p_934->g_574.sd, "p_934->g_574.sd", print_hash_value);
    transparent_crc(p_934->g_574.se, "p_934->g_574.se", print_hash_value);
    transparent_crc(p_934->g_574.sf, "p_934->g_574.sf", print_hash_value);
    transparent_crc(p_934->g_613.x, "p_934->g_613.x", print_hash_value);
    transparent_crc(p_934->g_613.y, "p_934->g_613.y", print_hash_value);
    transparent_crc(p_934->g_614.x, "p_934->g_614.x", print_hash_value);
    transparent_crc(p_934->g_614.y, "p_934->g_614.y", print_hash_value);
    transparent_crc(p_934->g_614.z, "p_934->g_614.z", print_hash_value);
    transparent_crc(p_934->g_614.w, "p_934->g_614.w", print_hash_value);
    transparent_crc(p_934->g_643, "p_934->g_643", print_hash_value);
    transparent_crc(p_934->g_648.s0, "p_934->g_648.s0", print_hash_value);
    transparent_crc(p_934->g_648.s1, "p_934->g_648.s1", print_hash_value);
    transparent_crc(p_934->g_648.s2, "p_934->g_648.s2", print_hash_value);
    transparent_crc(p_934->g_648.s3, "p_934->g_648.s3", print_hash_value);
    transparent_crc(p_934->g_648.s4, "p_934->g_648.s4", print_hash_value);
    transparent_crc(p_934->g_648.s5, "p_934->g_648.s5", print_hash_value);
    transparent_crc(p_934->g_648.s6, "p_934->g_648.s6", print_hash_value);
    transparent_crc(p_934->g_648.s7, "p_934->g_648.s7", print_hash_value);
    transparent_crc(p_934->g_650, "p_934->g_650", print_hash_value);
    transparent_crc(p_934->g_694, "p_934->g_694", print_hash_value);
    transparent_crc(p_934->g_700.s0, "p_934->g_700.s0", print_hash_value);
    transparent_crc(p_934->g_700.s1, "p_934->g_700.s1", print_hash_value);
    transparent_crc(p_934->g_700.s2, "p_934->g_700.s2", print_hash_value);
    transparent_crc(p_934->g_700.s3, "p_934->g_700.s3", print_hash_value);
    transparent_crc(p_934->g_700.s4, "p_934->g_700.s4", print_hash_value);
    transparent_crc(p_934->g_700.s5, "p_934->g_700.s5", print_hash_value);
    transparent_crc(p_934->g_700.s6, "p_934->g_700.s6", print_hash_value);
    transparent_crc(p_934->g_700.s7, "p_934->g_700.s7", print_hash_value);
    transparent_crc(p_934->g_700.s8, "p_934->g_700.s8", print_hash_value);
    transparent_crc(p_934->g_700.s9, "p_934->g_700.s9", print_hash_value);
    transparent_crc(p_934->g_700.sa, "p_934->g_700.sa", print_hash_value);
    transparent_crc(p_934->g_700.sb, "p_934->g_700.sb", print_hash_value);
    transparent_crc(p_934->g_700.sc, "p_934->g_700.sc", print_hash_value);
    transparent_crc(p_934->g_700.sd, "p_934->g_700.sd", print_hash_value);
    transparent_crc(p_934->g_700.se, "p_934->g_700.se", print_hash_value);
    transparent_crc(p_934->g_700.sf, "p_934->g_700.sf", print_hash_value);
    transparent_crc(p_934->g_878.x, "p_934->g_878.x", print_hash_value);
    transparent_crc(p_934->g_878.y, "p_934->g_878.y", print_hash_value);
    transparent_crc(p_934->g_883, "p_934->g_883", print_hash_value);
    transparent_crc(p_934->v_collective, "p_934->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 12; i++)
            transparent_crc(p_934->g_special_values[i + 12 * get_linear_group_id()], "p_934->g_special_values[i + 12 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_934->l_comm_values[get_linear_local_id()], "p_934->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_934->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()], "p_934->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
