// ---fake_divergence ---inter_thread_comm -g 36,14,5 -l 3,1,1
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

__constant uint32_t permutations[10][3] = {
{2,0,1}, // permutation 0
{2,0,1}, // permutation 1
{1,2,0}, // permutation 2
{1,2,0}, // permutation 3
{2,0,1}, // permutation 4
{2,0,1}, // permutation 5
{2,0,1}, // permutation 6
{1,2,0}, // permutation 7
{1,0,2}, // permutation 8
{2,0,1} // permutation 9
};

// Seed: 90

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_31[4][4];
    int32_t g_37;
    uint8_t g_42[6];
    int32_t *g_50;
    uint16_t g_95[7];
    int8_t g_103;
    uint16_t g_106;
    int32_t *g_108;
    int32_t **g_107[9][3];
    int16_t g_122;
    int32_t *** volatile g_125;
    int32_t *** volatile g_126;
    int64_t g_147;
    volatile int8_t g_231;
    uint32_t g_249;
    uint16_t *g_264[8][4];
    volatile uint32_t g_274;
    uint8_t g_285;
    uint16_t **g_325;
    uint64_t g_349;
    int32_t g_401;
    int32_t g_406[2];
    uint64_t g_408;
    int64_t g_426[9][8];
    int32_t g_452[4];
    uint64_t g_472[10];
    volatile uint8_t g_476;
    uint8_t g_483;
    uint64_t g_520;
    uint64_t *g_522;
    uint16_t g_528;
    int32_t g_543;
    uint32_t g_575[9][5];
    int8_t *g_603[5];
    int8_t ** volatile g_602[7][6];
    uint32_t g_647;
    volatile uint64_t g_701;
    volatile uint64_t *g_700;
    volatile uint64_t **g_699[2];
    volatile uint64_t ***g_698;
    volatile uint16_t g_717[7][4][2];
    int16_t **g_775;
    int16_t *** volatile g_774[7][5][5];
    int16_t *** volatile g_776;
    int32_t g_802;
    int8_t g_822;
    int64_t g_853;
    int32_t g_880;
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
int32_t  func_1(struct S0 * p_919);
uint64_t  func_2(uint8_t  p_3, uint16_t  p_4, uint64_t  p_5, uint32_t  p_6, uint32_t  p_7, struct S0 * p_919);
int16_t  func_14(uint64_t  p_15, int64_t  p_16, struct S0 * p_919);
uint64_t  func_17(uint16_t  p_18, uint64_t  p_19, int32_t  p_20, int64_t  p_21, uint32_t  p_22, struct S0 * p_919);
int16_t  func_28(uint32_t  p_29, struct S0 * p_919);
uint64_t  func_32(int8_t  p_33, int32_t * p_34, int64_t  p_35, struct S0 * p_919);
uint16_t  func_53(int32_t * p_54, struct S0 * p_919);
uint64_t  func_66(int32_t * p_67, int8_t  p_68, struct S0 * p_919);
int32_t  func_69(int32_t ** p_70, int32_t  p_71, int32_t * p_72, int32_t ** p_73, struct S0 * p_919);
int32_t ** func_74(uint64_t  p_75, int32_t ** p_76, uint32_t  p_77, int32_t ** p_78, struct S0 * p_919);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_919->l_comm_values p_919->g_comm_values p_919->g_37 p_919->g_42 p_919->g_95 p_919->g_106 p_919->g_107 p_919->g_103 p_919->g_122 p_919->g_147 p_919->g_231 p_919->g_249 p_919->g_274 permutations p_919->g_285 p_919->g_349 p_919->g_408 p_919->g_426 p_919->g_406 p_919->g_472 p_919->g_476 p_919->g_483 p_919->g_452 p_919->g_401 p_919->g_520 p_919->g_50 p_919->g_522 p_919->g_602 p_919->g_647 p_919->g_543 p_919->g_698 p_919->g_717 p_919->g_31 p_919->g_853 p_919->g_802 p_919->g_880
 * writes: p_919->g_31 p_919->g_37 p_919->g_50 p_919->g_95 p_919->g_103 p_919->g_106 p_919->g_122 p_919->g_147 p_919->g_249 p_919->g_264 p_919->g_274 p_919->g_285 p_919->g_325 p_919->g_349 p_919->g_401 p_919->g_406 p_919->g_408 p_919->g_426 p_919->g_452 p_919->g_472 p_919->g_522 p_919->g_528 p_919->g_520 p_919->g_543 p_919->g_575 p_919->g_647 p_919->g_717 p_919->g_107 p_919->g_483 p_919->g_42 p_919->g_853
 */
int32_t  func_1(struct S0 * p_919)
{ /* block id: 4 */
    uint64_t l_25 = 0xD46758E356EC7E43L;
    int32_t *l_36 = &p_919->g_37;
    uint32_t *l_884 = &p_919->g_249;
    int32_t *l_904 = &p_919->g_37;
    int32_t *l_905 = (void*)0;
    int32_t *l_906 = &p_919->g_31[3][1];
    int32_t *l_907 = &p_919->g_37;
    int32_t *l_908 = &p_919->g_31[3][1];
    int32_t *l_909 = &p_919->g_37;
    int32_t *l_910 = (void*)0;
    int32_t *l_911 = (void*)0;
    int32_t *l_912 = &p_919->g_31[3][0];
    int32_t *l_913[6] = {&p_919->g_452[1],&p_919->g_452[1],&p_919->g_452[1],&p_919->g_452[1],&p_919->g_452[1],&p_919->g_452[1]};
    int32_t l_914 = 0x61CE066AL;
    int8_t l_915 = 7L;
    uint16_t l_916 = 7UL;
    int i;
    (*l_36) = (func_2(((((*l_884) = ((safe_add_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_919->group_0_offset, get_group_id(0), 10) == ((safe_lshift_func_uint8_t_u_s(p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))], 2)) | ((func_14(func_17((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 5)), l_25, p_919->g_comm_values[p_919->tid], p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))], (safe_mul_func_uint8_t_u_u((l_25 > (GROUP_DIVERGE(0, 1) != (func_28(l_25, p_919) != ((*l_36) = (func_32((!0x5FL), l_36, p_919->g_37, p_919) <= p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]))))), 7L)), p_919), p_919->g_comm_values[p_919->tid], p_919) ^ 0x283EL) <= FAKE_DIVERGE(p_919->local_2_offset, get_local_id(2), 10)))), 5L)), p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))])) , (*l_36))) | 4294967295UL) & l_25), p_919->g_802, l_25, p_919->g_880, p_919->g_802, p_919) >= p_919->g_comm_values[p_919->tid]);
    ++l_916;
    return (*l_912);
}


/* ------------------------------------------ */
/* 
 * reads : p_919->g_349 p_919->g_50 p_919->g_37
 * writes: p_919->g_349 p_919->g_37
 */
uint64_t  func_2(uint8_t  p_3, uint16_t  p_4, uint64_t  p_5, uint32_t  p_6, uint32_t  p_7, struct S0 * p_919)
{ /* block id: 384 */
    int8_t l_890 = 1L;
    int32_t l_891 = 1L;
    int32_t l_892 = (-1L);
    int32_t l_893 = 0x1C3F8A31L;
    int32_t l_894 = 0x02B86227L;
    int32_t l_895[10][6][3] = {{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}},{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}},{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}},{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}},{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}},{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}},{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}},{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}},{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}},{{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L},{0x36C429D3L,(-3L),0x36C429D3L}}};
    int32_t l_897 = 1L;
    uint16_t l_899 = 0xB42FL;
    int i, j, k;
    for (p_919->g_349 = 0; (p_919->g_349 == 9); p_919->g_349++)
    { /* block id: 387 */
        int32_t *l_887 = &p_919->g_452[1];
        int32_t *l_888 = &p_919->g_31[0][2];
        int32_t *l_889[4] = {&p_919->g_31[3][1],&p_919->g_31[3][1],&p_919->g_31[3][1],&p_919->g_31[3][1]};
        int64_t l_896 = 0x601776F77CCD713BL;
        int8_t l_898 = 0x29L;
        int i;
        l_899--;
        (*p_919->g_50) |= (l_895[1][5][2] ^= (safe_lshift_func_int16_t_s_s(0x4EFAL, p_3)));
    }
    return l_895[1][5][2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_14(uint64_t  p_15, int64_t  p_16, struct S0 * p_919)
{ /* block id: 380 */
    int32_t l_871[4][9] = {{0L,0x675116FAL,0L,0L,0x675116FAL,0L,0L,0x675116FAL,0L},{0L,0x675116FAL,0L,0L,0x675116FAL,0L,0L,0x675116FAL,0L},{0L,0x675116FAL,0L,0L,0x675116FAL,0L,0L,0x675116FAL,0L},{0L,0x675116FAL,0L,0L,0x675116FAL,0L,0L,0x675116FAL,0L}};
    int32_t *l_872 = (void*)0;
    int32_t *l_873 = &p_919->g_401;
    int32_t *l_874 = (void*)0;
    int32_t *l_875 = &p_919->g_401;
    int32_t *l_876 = &p_919->g_37;
    int32_t *l_877[1];
    int32_t l_878 = 6L;
    int16_t l_879[6];
    uint32_t l_881 = 0xDD7DABF2L;
    int i, j;
    for (i = 0; i < 1; i++)
        l_877[i] = (void*)0;
    for (i = 0; i < 6; i++)
        l_879[i] = 1L;
    l_881--;
    return p_16;
}


/* ------------------------------------------ */
/* 
 * reads : p_919->g_408 p_919->g_698 p_919->g_472 p_919->g_50 p_919->g_717 p_919->g_285 p_919->g_426 p_919->g_349 p_919->g_31 p_919->g_520 p_919->g_522 p_919->g_483 p_919->g_853 p_919->g_37 p_919->g_647 p_919->g_231 p_919->g_452
 * writes: p_919->g_103 p_919->g_37 p_919->g_717 p_919->g_285 p_919->g_107 p_919->g_147 p_919->g_401 p_919->g_472 p_919->g_349 p_919->g_483 p_919->g_42 p_919->g_853
 */
uint64_t  func_17(uint16_t  p_18, uint64_t  p_19, int32_t  p_20, int64_t  p_21, uint32_t  p_22, struct S0 * p_919)
{ /* block id: 314 */
    uint16_t l_689 = 0x97EBL;
    uint64_t **l_703 = &p_919->g_522;
    uint64_t ***l_702 = &l_703;
    int32_t l_708 = 8L;
    int32_t l_716[7][8] = {{8L,1L,(-1L),0x3713C123L,(-1L),1L,8L,0x43989080L},{8L,1L,(-1L),0x3713C123L,(-1L),1L,8L,0x43989080L},{8L,1L,(-1L),0x3713C123L,(-1L),1L,8L,0x43989080L},{8L,1L,(-1L),0x3713C123L,(-1L),1L,8L,0x43989080L},{8L,1L,(-1L),0x3713C123L,(-1L),1L,8L,0x43989080L},{8L,1L,(-1L),0x3713C123L,(-1L),1L,8L,0x43989080L},{8L,1L,(-1L),0x3713C123L,(-1L),1L,8L,0x43989080L}};
    int32_t **l_725 = (void*)0;
    uint64_t l_769 = 0x3767BBCBDEC96164L;
    int16_t *l_773[6][1][8] = {{{&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122}},{{&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122}},{{&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122}},{{&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122}},{{&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122}},{{&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122}}};
    int16_t **l_772 = &l_773[0][0][3];
    uint16_t **l_844 = &p_919->g_264[0][0];
    uint16_t **l_845[4];
    uint16_t *l_846 = &p_919->g_95[3];
    uint16_t *l_847 = &p_919->g_95[5];
    int64_t *l_848 = &p_919->g_426[4][6];
    uint8_t *l_849 = &p_919->g_483;
    uint8_t *l_850 = &p_919->g_285;
    uint8_t *l_851 = &p_919->g_42[0];
    int64_t *l_852[5];
    uint32_t l_854 = 0x13D0BCFFL;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_845[i] = &p_919->g_264[2][2];
    for (i = 0; i < 5; i++)
        l_852[i] = &p_919->g_853;
    for (p_21 = 0; (p_21 != 15); ++p_21)
    { /* block id: 317 */
        uint8_t l_682[5][10] = {{0x76L,1UL,0xC7L,1UL,0x76L,0x76L,1UL,0xC7L,1UL,0x76L},{0x76L,1UL,0xC7L,1UL,0x76L,0x76L,1UL,0xC7L,1UL,0x76L},{0x76L,1UL,0xC7L,1UL,0x76L,0x76L,1UL,0xC7L,1UL,0x76L},{0x76L,1UL,0xC7L,1UL,0x76L,0x76L,1UL,0xC7L,1UL,0x76L},{0x76L,1UL,0xC7L,1UL,0x76L,0x76L,1UL,0xC7L,1UL,0x76L}};
        int8_t *l_704 = (void*)0;
        int8_t *l_705 = &p_919->g_103;
        int16_t *l_706[9] = {&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122};
        int32_t l_707 = 0x6081AB06L;
        int32_t *l_709 = &p_919->g_37;
        int32_t *l_710 = &p_919->g_31[3][1];
        int32_t *l_711 = &p_919->g_401;
        int32_t *l_712 = &l_707;
        int32_t *l_713 = &p_919->g_31[2][0];
        int32_t *l_714 = &p_919->g_31[3][2];
        int32_t *l_715[4] = {&p_919->g_452[2],&p_919->g_452[2],&p_919->g_452[2],&p_919->g_452[2]};
        int i, j;
        (*p_919->g_50) = (0x01FCL || ((l_682[3][8] , (safe_rshift_func_int16_t_s_u(0x3364L, 10))) , ((safe_mod_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((p_22 >= p_20), l_689)), (l_708 = (l_707 ^= ((((safe_rshift_func_uint16_t_u_s((safe_add_func_int8_t_s_s(((*l_705) = ((((safe_rshift_func_uint8_t_u_u(p_21, (safe_add_func_uint32_t_u_u((((((p_22 , (p_20 < 0xA525B8FFF983B3CFL)) , l_689) != p_919->g_408) | p_21) != 0xD3018A89L), l_682[3][8])))) != p_18) , p_919->g_698) != l_702)), p_919->g_472[2])), 3)) , &p_919->g_285) != (void*)0) & l_682[3][8]))))) , p_21)));
        p_919->g_717[3][1][0]++;
    }
    for (p_919->g_285 = 0; (p_919->g_285 > 35); p_919->g_285++)
    { /* block id: 326 */
        int32_t **l_724 = &p_919->g_50;
        int32_t ***l_726 = (void*)0;
        int32_t ***l_727 = &p_919->g_107[5][2];
        int32_t *l_728 = (void*)0;
        int64_t *l_729 = &p_919->g_147;
        int32_t l_737[4];
        int32_t l_801 = 0x048E385BL;
        uint64_t l_806 = 8UL;
        int i;
        for (i = 0; i < 4; i++)
            l_737[i] = 0x56BB3C94L;
        if ((((p_20 || ((safe_lshift_func_int16_t_s_u((((((l_724 != ((*l_727) = l_725)) != ((void*)0 != &p_919->g_426[4][1])) <= ((void*)0 == l_728)) ^ (((*l_729) = 0x4F37A52C755A6179L) <= (p_21 <= p_919->g_426[7][1]))) >= p_18), p_19)) , p_919->g_426[4][6])) && p_19) || p_22))
        { /* block id: 329 */
            for (p_919->g_401 = 0; p_919->g_401 < 10; p_919->g_401 += 1)
            {
                p_919->g_472[p_919->g_401] = 0UL;
            }
        }
        else
        { /* block id: 331 */
            uint16_t l_731 = 9UL;
            int32_t *l_734 = &p_919->g_452[0];
            int32_t l_735 = 1L;
            int32_t l_736 = (-1L);
            int32_t l_740 = 0x439AA3CEL;
            int8_t l_823 = 0x2AL;
            for (p_919->g_349 = 0; (p_919->g_349 <= 5); p_919->g_349 += 1)
            { /* block id: 334 */
                int32_t *l_730[8] = {&l_708,&p_919->g_452[0],&l_708,&l_708,&p_919->g_452[0],&l_708,&l_708,&p_919->g_452[0]};
                uint8_t *l_813[8][6] = {{&p_919->g_42[3],&p_919->g_42[1],(void*)0,&p_919->g_42[1],&p_919->g_42[3],&p_919->g_42[3]},{&p_919->g_42[3],&p_919->g_42[1],(void*)0,&p_919->g_42[1],&p_919->g_42[3],&p_919->g_42[3]},{&p_919->g_42[3],&p_919->g_42[1],(void*)0,&p_919->g_42[1],&p_919->g_42[3],&p_919->g_42[3]},{&p_919->g_42[3],&p_919->g_42[1],(void*)0,&p_919->g_42[1],&p_919->g_42[3],&p_919->g_42[3]},{&p_919->g_42[3],&p_919->g_42[1],(void*)0,&p_919->g_42[1],&p_919->g_42[3],&p_919->g_42[3]},{&p_919->g_42[3],&p_919->g_42[1],(void*)0,&p_919->g_42[1],&p_919->g_42[3],&p_919->g_42[3]},{&p_919->g_42[3],&p_919->g_42[1],(void*)0,&p_919->g_42[1],&p_919->g_42[3],&p_919->g_42[3]},{&p_919->g_42[3],&p_919->g_42[1],(void*)0,&p_919->g_42[1],&p_919->g_42[3],&p_919->g_42[3]}};
                int8_t *l_818 = &p_919->g_103;
                int8_t *l_821 = &p_919->g_822;
                int i, j;
                l_731++;
            }
        }
    }
    (*p_919->g_50) |= (safe_div_func_int64_t_s_s(((safe_add_func_uint8_t_u_u((~l_716[4][1]), (safe_sub_func_uint32_t_u_u(((p_919->g_717[3][3][0] != GROUP_DIVERGE(2, 1)) == (p_919->g_31[1][1] , ((p_919->g_853 |= (((*l_851) = ((*l_850) = (safe_lshift_func_uint8_t_u_s(p_919->g_520, (safe_add_func_uint8_t_u_u(((*l_849) |= (safe_rshift_func_int16_t_s_u((l_689 >= (((((safe_mul_func_int8_t_s_s(0x23L, (safe_add_func_uint32_t_u_u(((((safe_sub_func_uint64_t_u_u((*p_919->g_522), GROUP_DIVERGE(0, 1))) , 0x58063BECB9A8136FL) , (l_846 = &l_689)) == l_847), p_19)))) , l_848) == (void*)0) , (void*)0) != (void*)0)), 10))), p_20)))))) && p_21)) , 4L))), l_854)))) ^ p_919->g_426[4][6]), p_18));
    (*p_919->g_50) = (safe_add_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((l_716[4][1] && (safe_div_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((l_716[4][1] || (safe_div_func_uint16_t_u_u(0x228AL, ((safe_sub_func_uint8_t_u_u((((*l_850) &= ((safe_div_func_uint8_t_u_u((((p_22 != p_20) <= l_854) != ((safe_div_func_uint16_t_u_u((&p_919->g_249 == &p_919->g_274), 0xF755L)) && p_20)), p_919->g_647)) != (-5L))) , p_20), p_919->g_472[4])) || p_919->g_231)))), 15)), p_919->g_452[0]))), l_708)), 0x43586EB1F235482EL));
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_919->g_31
 */
int16_t  func_28(uint32_t  p_29, struct S0 * p_919)
{ /* block id: 5 */
    int32_t *l_30 = &p_919->g_31[3][1];
    (*l_30) = 0x50881826L;
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_919->g_37 p_919->g_42 p_919->l_comm_values p_919->g_comm_values p_919->g_95 p_919->g_106 p_919->g_107 p_919->g_103 p_919->g_122 p_919->g_147 p_919->g_231 p_919->g_249 p_919->g_274 permutations p_919->g_285 p_919->g_349 p_919->g_408 p_919->g_426 p_919->g_406 p_919->g_472 p_919->g_476 p_919->g_483 p_919->g_452 p_919->g_401 p_919->g_520 p_919->g_50 p_919->g_522 p_919->g_602 p_919->g_647 p_919->g_543
 * writes: p_919->g_37 p_919->g_50 p_919->g_95 p_919->g_103 p_919->g_106 p_919->g_122 p_919->g_147 p_919->g_249 p_919->g_264 p_919->g_274 p_919->g_285 p_919->g_325 p_919->g_349 p_919->g_401 p_919->g_406 p_919->g_408 p_919->g_426 p_919->g_452 p_919->g_472 p_919->g_522 p_919->g_528 p_919->g_520 p_919->g_543 p_919->g_575 p_919->g_647
 */
uint64_t  func_32(int8_t  p_33, int32_t * p_34, int64_t  p_35, struct S0 * p_919)
{ /* block id: 8 */
    int32_t l_43 = 0x2DE45A91L;
    int32_t *l_49 = &p_919->g_37;
    int32_t **l_48 = &l_49;
    int32_t *l_55 = &p_919->g_37;
    uint64_t *l_519 = &p_919->g_520;
    uint64_t **l_521[9] = {&l_519,&l_519,&l_519,&l_519,&l_519,&l_519,&l_519,&l_519,&l_519};
    uint16_t *l_527 = &p_919->g_528;
    int32_t l_530 = 8L;
    int32_t l_541 = 0x78823943L;
    int32_t l_542[1];
    uint8_t l_596 = 1UL;
    int32_t l_626 = 0x6005C4E8L;
    uint32_t *l_646 = &p_919->g_647;
    int32_t *l_650 = &p_919->g_401;
    int i;
    for (i = 0; i < 1; i++)
        l_542[i] = 0x0F43F71DL;
    for (p_35 = 14; (p_35 == (-25)); p_35 = safe_sub_func_uint16_t_u_u(p_35, 4))
    { /* block id: 11 */
        for (p_919->g_37 = 0; (p_919->g_37 > 25); ++p_919->g_37)
        { /* block id: 14 */
            for (p_33 = 0; (p_33 <= 5); p_33 += 1)
            { /* block id: 17 */
                int i;
                return p_919->g_42[p_33];
            }
        }
        if (p_919->g_37)
            goto lbl_627;
        return l_43;
    }
lbl_627:
    if (((safe_lshift_func_int16_t_s_s(((safe_div_func_int64_t_s_s(((p_919->g_50 = ((*l_48) = p_34)) != ((p_919->g_42[3] != (safe_sub_func_uint64_t_u_u((p_919->g_520 = ((func_53(l_55, p_919) <= (((safe_unary_minus_func_int32_t_s((((p_919->g_522 = l_519) != (((p_33 > ((*l_527) = (safe_div_func_uint8_t_u_u(((p_35 != (safe_mul_func_uint16_t_u_u(0x412FL, ((p_33 ^ p_919->g_520) < p_919->g_483)))) <= 1L), 0x29L)))) >= p_35) , &p_919->g_520)) ^ 1UL))) || p_35) , 0xDD21L)) | FAKE_DIVERGE(p_919->local_0_offset, get_local_id(0), 10))), 0UL))) , (void*)0)), p_33)) || p_33), 14)) > p_35))
    { /* block id: 259 */
        int32_t *l_529 = (void*)0;
        int32_t *l_531 = &p_919->g_452[1];
        int32_t *l_532 = (void*)0;
        int32_t *l_533 = &p_919->g_452[0];
        int32_t *l_534 = &p_919->g_401;
        int32_t l_535 = 0x132E945EL;
        int32_t *l_536 = &l_530;
        int32_t *l_537 = &p_919->g_37;
        int32_t *l_538 = &p_919->g_37;
        int32_t *l_539 = &l_535;
        int32_t *l_540[8][3][7] = {{{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37}},{{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37}},{{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37}},{{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37}},{{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37}},{{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37}},{{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37}},{{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37},{&l_530,&p_919->g_37,&l_535,&p_919->g_37,&l_530,&l_530,&p_919->g_37}}};
        int16_t l_544 = 0x4199L;
        int64_t l_545[8][8][4] = {{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}}};
        int64_t l_546 = 0L;
        int8_t l_547 = 0x64L;
        int16_t l_548[5][3] = {{1L,1L,(-2L)},{1L,1L,(-2L)},{1L,1L,(-2L)},{1L,1L,(-2L)},{1L,1L,(-2L)}};
        uint16_t l_549 = 0x5154L;
        uint32_t l_554 = 0x5FA9FA14L;
        int32_t *l_571 = &p_919->g_543;
        int8_t l_572 = 0x0BL;
        uint32_t *l_573 = (void*)0;
        uint32_t *l_574 = &p_919->g_575[7][1];
        uint32_t *l_576[9] = {&p_919->g_249,&p_919->g_249,&p_919->g_249,&p_919->g_249,&p_919->g_249,&p_919->g_249,&p_919->g_249,&p_919->g_249,&p_919->g_249};
        uint16_t l_587 = 0x3162L;
        int8_t *l_588 = &l_572;
        int32_t l_595 = 0x5619501BL;
        int i, j, k;
        l_549--;
        (*l_55) = (((safe_mul_func_int8_t_s_s(((l_554 <= ((*l_531) = (((safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_919->group_2_offset, get_group_id(2), 10), ((safe_add_func_int64_t_s_s((**l_48), (safe_div_func_int32_t_s_s((*l_49), ((safe_lshift_func_int16_t_s_u((safe_div_func_uint64_t_u_u((0xDEE1A6C4L ^ (((safe_mul_func_uint16_t_u_u(1UL, (((*l_574) = ((((*l_533) ^ ((*l_536) = ((*l_531) > (safe_sub_func_int8_t_s_s((safe_div_func_int32_t_s_s((((*l_571) = (((void*)0 != &p_919->g_406[0]) | p_33)) , 0x5AE4D4DDL), (*p_919->g_50))), l_572))))) != p_33) <= p_33)) , p_35))) , 0x9738L) > (-1L))), (*l_55))), p_33)) | (*l_55)))))) , (-1L)))) && p_33) != (-1L)))) , 0x04L), p_919->g_231)) != 0x800DB1F1L) || p_35);
        (*l_531) &= (safe_mod_func_int64_t_s_s((safe_mod_func_uint16_t_u_u(((safe_div_func_uint64_t_u_u((**l_48), (safe_add_func_int8_t_s_s(((*l_588) = (safe_mod_func_int32_t_s_s(l_587, (*l_55)))), (((safe_rshift_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_s((*l_538), 0)) & p_919->g_483), 7)) <= (((0x0136ABDCA7138879L && (&p_34 != (((safe_add_func_int32_t_s_s((0x3A4D55D732FE6A7EL >= 18446744073709551606UL), (*l_55))) >= FAKE_DIVERGE(p_919->group_2_offset, get_group_id(2), 10)) , &l_539))) >= p_35) > (*p_919->g_522))) <= 0xB2A5994F2EE48986L))))) , 0xAA18L), p_35)), 0x4026C54376F7525AL));
        l_596++;
    }
    else
    { /* block id: 269 */
        uint8_t l_599 = 0xA1L;
        int8_t **l_604 = &p_919->g_603[1];
        uint32_t l_621 = 0x832C8BAEL;
        for (p_919->g_349 = 0; (p_919->g_349 <= 2); p_919->g_349 += 1)
        { /* block id: 272 */
            uint16_t l_620 = 0x5F88L;
            if (l_599)
                break;
            for (p_33 = 0; (p_33 <= 2); p_33 += 1)
            { /* block id: 276 */
                int8_t ***l_605 = &l_604;
                int32_t *l_606 = &p_919->g_543;
                int32_t l_613 = 0x19DC1280L;
                int16_t *l_618 = (void*)0;
                int16_t *l_619 = &p_919->g_122;
                int i, j;
                (*p_919->g_50) = (safe_div_func_uint64_t_u_u(((p_35 < ((((*l_606) = (p_919->g_602[5][1] != ((*l_605) = l_604))) , (safe_add_func_uint16_t_u_u(((((safe_add_func_int64_t_s_s((safe_div_func_uint16_t_u_u(l_613, (safe_lshift_func_uint16_t_u_u((safe_add_func_int16_t_s_s(p_35, ((*l_619) = (&p_919->g_249 == (void*)0)))), (p_35 < ((*p_34) && (*p_34))))))), p_35)) == l_599) != (*p_34)) < p_33), 0xB882L))) > l_620)) ^ 0x7AL), 0x275157D89CC830A1L));
                if (l_621)
                    continue;
            }
        }
        (*p_919->g_50) ^= (p_35 ^ (safe_add_func_int16_t_s_s((p_35 , 0x181FL), ((safe_lshift_func_uint8_t_u_s(p_919->g_472[2], 3)) | ((((l_621 != FAKE_DIVERGE(p_919->global_0_offset, get_global_id(0), 10)) <= l_626) , p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]) != l_621)))));
        (*l_49) = (*l_55);
    }
    (*l_650) &= ((safe_mul_func_uint8_t_u_u((p_33 , (&p_919->g_520 != (void*)0)), ((((((safe_rshift_func_uint16_t_u_s((safe_rshift_func_int8_t_s_s((0xDA27L ^ p_33), 0)), 6)) > (((safe_add_func_uint64_t_u_u((p_34 == (((safe_lshift_func_uint16_t_u_s((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_919->group_2_offset, get_group_id(2), 10), (safe_lshift_func_int8_t_s_u((((safe_div_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(((p_34 == ((++(*l_646)) , p_34)) > p_35), 0)), p_33)) <= p_33) || (*l_55)), p_33)))), p_919->g_37)) || (**l_48)) , p_34)), 5UL)) || p_33) == p_35)) ^ p_33) == p_35) != GROUP_DIVERGE(1, 1)) < p_919->g_408))) <= p_919->g_543);
    for (p_919->g_408 = 0; (p_919->g_408 <= 36); ++p_919->g_408)
    { /* block id: 292 */
        int64_t *l_663 = &p_919->g_426[4][6];
        uint64_t ***l_672 = (void*)0;
        uint64_t ***l_673 = &l_521[2];
        int64_t l_678 = 0x633B86B3903C2F4BL;
        int32_t l_679[3][7] = {{0x1959D0B2L,(-1L),(-1L),0x1959D0B2L,0x1959D0B2L,(-1L),(-1L)},{0x1959D0B2L,(-1L),(-1L),0x1959D0B2L,0x1959D0B2L,(-1L),(-1L)},{0x1959D0B2L,(-1L),(-1L),0x1959D0B2L,0x1959D0B2L,(-1L),(-1L)}};
        int i, j;
        for (l_43 = 0; (l_43 <= 0); l_43 = safe_add_func_int16_t_s_s(l_43, 1))
        { /* block id: 295 */
            if ((*p_34))
                break;
            if ((*p_34))
                continue;
            for (p_35 = 0; (p_35 < (-20)); p_35 = safe_sub_func_uint32_t_u_u(p_35, 8))
            { /* block id: 300 */
                return p_35;
            }
        }
        (*l_650) &= (safe_mod_func_int32_t_s_s(((*p_34) |= (safe_div_func_int16_t_s_s(p_33, (((((safe_sub_func_int32_t_s_s(((p_919->g_575[4][2] = p_35) , (((*l_663) = ((void*)0 != &p_919->g_575[7][1])) && (((safe_sub_func_uint64_t_u_u(((*p_919->g_522) = (l_679[1][5] = (safe_add_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(0x5EL, 0x5AL)), p_35)), (((*l_673) = &p_919->g_522) != ((safe_add_func_int32_t_s_s(((safe_sub_func_int16_t_s_s((0xAF7CEF352837E258L & (*p_919->g_522)), l_678)) , 0x5A06F6F0L), p_33)) , &p_919->g_522)))))), 0x327B6AD8CC9A6BDCL)) ^ p_35) <= l_678))), p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))])) != 0UL) || p_919->g_147) > l_678) || GROUP_DIVERGE(1, 1))))), p_919->g_452[3]));
    }
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_919->g_42 p_919->l_comm_values p_919->g_comm_values p_919->g_95 p_919->g_37 p_919->g_106 p_919->g_107 p_919->g_103 p_919->g_122 p_919->g_147 p_919->g_231 p_919->g_249 p_919->g_274 permutations p_919->g_285 p_919->g_349 p_919->g_408 p_919->g_426 p_919->g_406 p_919->g_472 p_919->g_476 p_919->g_483 p_919->g_452 p_919->g_401
 * writes: p_919->g_95 p_919->g_103 p_919->g_37 p_919->g_106 p_919->g_122 p_919->g_147 p_919->g_249 p_919->g_264 p_919->g_274 p_919->g_285 p_919->g_325 p_919->g_349 p_919->g_401 p_919->g_406 p_919->g_408 p_919->g_426 p_919->g_452 p_919->g_472
 */
uint16_t  func_53(int32_t * p_54, struct S0 * p_919)
{ /* block id: 25 */
    int32_t *l_93 = &p_919->g_37;
    int32_t **l_92 = &l_93;
    uint16_t *l_94 = &p_919->g_95[3];
    int8_t *l_102 = &p_919->g_103;
    uint8_t l_104 = 1UL;
    uint16_t *l_105 = &p_919->g_106;
    int32_t *l_434 = &p_919->g_37;
    int64_t *l_435[7][2][6] = {{{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]},{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]}},{{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]},{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]}},{{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]},{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]}},{{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]},{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]}},{{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]},{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]}},{{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]},{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]}},{{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]},{&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3],&p_919->g_426[2][3],&p_919->g_426[7][0],&p_919->g_426[2][3]}}};
    int32_t *l_459 = &p_919->g_401;
    int32_t l_461 = (-5L);
    int32_t l_462 = 0x0785E3D2L;
    uint64_t l_480 = 0x489FDDF94FC27092L;
    int32_t *l_485 = &l_462;
    int8_t **l_505 = &l_102;
    int8_t *l_507 = &p_919->g_103;
    int8_t **l_506 = &l_507;
    uint8_t *l_510 = &p_919->g_285;
    uint8_t *l_511 = &l_104;
    uint8_t *l_512 = (void*)0;
    uint8_t *l_513[9][10][2] = {{{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483}},{{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483}},{{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483}},{{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483}},{{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483}},{{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483}},{{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483}},{{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483}},{{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483},{&p_919->g_42[0],&p_919->g_483}}};
    int16_t *l_514[3][10] = {{&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122},{&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122},{&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122,&p_919->g_122}};
    uint64_t l_515 = 0xA6848B9F5DFAA823L;
    uint8_t l_516 = 1UL;
    uint64_t *l_517 = &p_919->g_472[4];
    int i, j, k;
lbl_486:
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_919->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[(safe_mod_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((p_919->g_426[0][2] = (safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(p_919->g_42[5], FAKE_DIVERGE(p_919->local_1_offset, get_local_id(1), 10))), (func_66((func_69(func_74(((p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))] || (((*l_105) &= (safe_unary_minus_func_int16_t_s((safe_lshift_func_uint8_t_u_u(((safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(4UL, 3)), (safe_add_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((void*)0 != l_92), p_919->g_comm_values[p_919->tid])), ((*l_94)--))), ((safe_lshift_func_uint8_t_u_u((((**l_92) = (((*l_102) = (((((safe_lshift_func_uint8_t_u_u((((void*)0 == (*l_92)) && ((**l_92) != 0x42B930EEL)), 6)) , p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]) || (**l_92)) == 8L) & (**l_92))) | 1L)) ^ p_919->g_comm_values[p_919->tid]), 1)) | (-1L)))))) >= l_104), GROUP_DIVERGE(0, 1)))))) ^ (-1L))) != 0UL), p_919->g_107[5][2], l_104, &l_93, p_919), p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))], p_54, l_92, p_919) , l_434), p_919->g_comm_values[p_919->tid], p_919) , (*l_434)))), p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]))) , p_919->g_231), 9)), 5)), 10))][(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]));
    for (p_919->g_147 = 0; (p_919->g_147 >= (-16)); p_919->g_147--)
    { /* block id: 206 */
        uint32_t l_458 = 4294967295UL;
        for (p_919->g_122 = 28; (p_919->g_122 <= 7); p_919->g_122 = safe_sub_func_int8_t_s_s(p_919->g_122, 7))
        { /* block id: 209 */
            uint32_t l_457 = 3UL;
            int32_t *l_460[2];
            int i;
            for (i = 0; i < 2; i++)
                l_460[i] = &p_919->g_452[0];
            for (p_919->g_408 = 0; (p_919->g_408 <= 7); p_919->g_408 += 1)
            { /* block id: 212 */
                int8_t l_477 = 0x15L;
                for (p_919->g_249 = 0; (p_919->g_249 <= 1); p_919->g_249 += 1)
                { /* block id: 215 */
                    int8_t l_456 = 0x7BL;
                    uint64_t l_463 = 18446744073709551610UL;
                    uint64_t *l_473 = &l_463;
                    int i, j;
                    for (p_919->g_106 = 0; (p_919->g_106 <= 6); p_919->g_106 += 1)
                    { /* block id: 218 */
                        uint16_t **l_453[7] = {&l_105,&l_94,&l_105,&l_105,&l_94,&l_105,&l_105};
                        int i, j;
                        (*l_434) = ((safe_lshift_func_int8_t_s_u(((safe_lshift_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u((((p_919->g_95[p_919->g_249] = (safe_sub_func_uint64_t_u_u(p_919->g_426[(p_919->g_408 + 1)][p_919->g_408], (p_919->g_426[p_919->g_249][(p_919->g_249 + 1)] < (p_919->g_426[(p_919->g_249 + 5)][p_919->g_408] , (safe_mul_func_int8_t_s_s((p_919->g_406[p_919->g_249] || ((safe_mul_func_int16_t_s_s((p_919->g_452[0] = p_919->g_95[3]), (((l_453[0] != (void*)0) && (safe_mul_func_uint8_t_u_u(((((void*)0 == &p_919->g_103) > l_456) ^ 0x32B2L), p_919->g_406[1]))) | p_919->g_406[1]))) && p_919->g_106)), l_456))))))) && l_457) | (*p_54)), l_458)) , 0L), 13)) , l_457), p_919->g_406[1])) & (*p_54));
                        (*l_92) = l_459;
                    }
                    l_460[0] = p_54;
                    ++l_463;
                    (*p_54) = (safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((!((safe_mod_func_int64_t_s_s((p_919->g_472[2] |= p_919->g_426[(p_919->g_249 + 2)][p_919->g_408]), ((*l_473) ^= 0x88E56C3C019478C2L))) | (255UL && (p_919->g_285 ^= 0x55L)))), (safe_rshift_func_uint16_t_u_u(0x8C38L, 7)))), p_919->g_426[(p_919->g_249 + 2)][p_919->g_408]));
                }
                if ((*p_54))
                    break;
                for (p_919->g_37 = 1; (p_919->g_37 >= 0); p_919->g_37 -= 1)
                { /* block id: 234 */
                    uint8_t l_484[6][2];
                    int i, j;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_484[i][j] = 1UL;
                    }
                    (*l_459) = (p_919->g_476 && (l_477 && (((((safe_mod_func_uint32_t_u_u((((4294967287UL && l_480) != (0UL && (1L && (((0x67L | 0x55L) , ((safe_mul_func_int8_t_s_s((!(p_54 == (void*)0)), p_919->g_103)) >= p_919->g_483)) ^ 0x12244177C9F7C0B4L)))) > (*p_54)), l_458)) & l_484[1][1]) , p_919->g_231) , p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]) , FAKE_DIVERGE(p_919->global_2_offset, get_global_id(2), 10))));
                    for (p_919->g_285 = 0; (p_919->g_285 <= 3); p_919->g_285 += 1)
                    { /* block id: 238 */
                        (*l_92) = l_485;
                        if (p_919->g_249)
                            goto lbl_486;
                    }
                }
            }
        }
    }
    (*p_54) = (0x87AF63780ED2A0CBL >= ((safe_mul_func_int8_t_s_s(0x7BL, ((((((*l_517) = ((safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s((safe_mod_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s(p_919->g_42[1], (safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_919->group_0_offset, get_group_id(0), 10), 1)))) , (((!((safe_div_func_int16_t_s_s((l_515 = (((safe_mul_func_int8_t_s_s(((((((*l_459) = FAKE_DIVERGE(p_919->global_0_offset, get_global_id(0), 10)) <= (((*l_505) = &p_919->g_103) == ((*l_506) = &p_919->g_103))) , FAKE_DIVERGE(p_919->local_0_offset, get_local_id(0), 10)) ^ (*l_434)) || 0x6CL), ((*l_485) = ((*l_511) = ((*l_510) = ((((safe_add_func_int8_t_s_s(p_919->g_408, (p_54 != p_54))) || (*l_485)) , 0x38B6L) | (-10L))))))) ^ p_919->g_426[4][6]) <= 246UL)), (*l_434))) == p_919->g_349)) & (*l_434)) != (*l_434))), p_919->g_452[0])), 13)) == l_516), p_919->g_95[3])) >= 0UL)) | (-10L)) != GROUP_DIVERGE(1, 1)) | p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]) || GROUP_DIVERGE(1, 1)))) || 0x3D8F6BD39F367BAAL));
    return (*l_459);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_66(int32_t * p_67, int8_t  p_68, struct S0 * p_919)
{ /* block id: 198 */
    return p_68;
}


/* ------------------------------------------ */
/* 
 * reads : p_919->g_103 p_919->g_408 p_919->g_95 p_919->g_426 p_919->g_122
 * writes: p_919->g_147 p_919->g_408 p_919->g_426 p_919->g_37
 */
int32_t  func_69(int32_t ** p_70, int32_t  p_71, int32_t * p_72, int32_t ** p_73, struct S0 * p_919)
{ /* block id: 189 */
    uint64_t l_413 = 0x9CCED615219D6C11L;
    int64_t *l_418 = (void*)0;
    int64_t *l_419 = (void*)0;
    int64_t *l_420 = &p_919->g_147;
    uint64_t *l_421 = &p_919->g_408;
    int64_t *l_424 = (void*)0;
    int64_t *l_425 = &p_919->g_426[4][6];
    int32_t l_429 = 6L;
    int32_t l_430[3][7] = {{(-1L),0x70C98A87L,(-1L),(-1L),0x70C98A87L,(-1L),(-1L)},{(-1L),0x70C98A87L,(-1L),(-1L),0x70C98A87L,(-1L),(-1L)},{(-1L),0x70C98A87L,(-1L),(-1L),0x70C98A87L,(-1L),(-1L)}};
    int32_t l_431 = 0x17A88361L;
    int32_t *l_432 = (void*)0;
    int32_t *l_433 = &l_431;
    int i, j;
    (*l_433) = ((*p_72) = (safe_sub_func_uint16_t_u_u(p_71, (safe_mul_func_int16_t_s_s(((p_919->g_103 & (((l_413 , (safe_div_func_uint64_t_u_u((p_71 ^ (p_71 , ((((safe_div_func_int64_t_s_s(((*l_420) = (-1L)), l_413)) == (l_430[1][1] = (l_429 = (+((((*l_421)++) ^ ((*l_425) = 0x3A88B05C5E7CFC8EL)) > ((safe_div_func_uint64_t_u_u(l_413, p_919->g_95[3])) || p_71)))))) , l_431) || l_430[1][6]))), 0xB8BC19795229BD18L))) & l_413) || p_919->g_426[5][4])) || p_919->g_122), p_919->g_95[3])))));
    return p_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_919->g_103 p_919->g_95 p_919->g_37 p_919->g_122 p_919->g_106 p_919->g_42 p_919->g_147 p_919->g_comm_values p_919->g_231 p_919->l_comm_values p_919->g_249 p_919->g_274 p_919->g_107 permutations p_919->g_285 p_919->g_349
 * writes: p_919->g_103 p_919->g_37 p_919->g_122 p_919->g_147 p_919->g_106 p_919->g_95 p_919->g_249 p_919->g_264 p_919->g_274 p_919->g_285 p_919->g_325 p_919->g_349 p_919->g_401 p_919->g_406 p_919->g_408
 */
int32_t ** func_74(uint64_t  p_75, int32_t ** p_76, uint32_t  p_77, int32_t ** p_78, struct S0 * p_919)
{ /* block id: 30 */
    uint32_t l_117[2][4] = {{4294967289UL,4294967290UL,4294967289UL,4294967289UL},{4294967289UL,4294967290UL,4294967289UL,4294967289UL}};
    uint32_t l_123[2];
    int32_t **l_127[5] = {&p_919->g_108,&p_919->g_108,&p_919->g_108,&p_919->g_108,&p_919->g_108};
    int8_t l_139[6][7][6] = {{{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L}},{{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L}},{{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L}},{{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L}},{{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L}},{{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L},{0L,0x42L,0x0DL,(-10L),6L,0x26L}}};
    uint8_t l_171 = 0x20L;
    int16_t *l_228 = &p_919->g_122;
    int8_t l_267 = 0x6FL;
    uint8_t *l_306 = &p_919->g_285;
    uint16_t *l_318 = &p_919->g_95[3];
    int8_t l_350 = 0x68L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_123[i] = 1UL;
    for (p_919->g_103 = 0; (p_919->g_103 > (-26)); p_919->g_103 = safe_sub_func_int32_t_s_s(p_919->g_103, 7))
    { /* block id: 33 */
        int8_t *l_118[6][7] = {{&p_919->g_103,(void*)0,(void*)0,&p_919->g_103,(void*)0,(void*)0,&p_919->g_103},{&p_919->g_103,(void*)0,(void*)0,&p_919->g_103,(void*)0,(void*)0,&p_919->g_103},{&p_919->g_103,(void*)0,(void*)0,&p_919->g_103,(void*)0,(void*)0,&p_919->g_103},{&p_919->g_103,(void*)0,(void*)0,&p_919->g_103,(void*)0,(void*)0,&p_919->g_103},{&p_919->g_103,(void*)0,(void*)0,&p_919->g_103,(void*)0,(void*)0,&p_919->g_103},{&p_919->g_103,(void*)0,(void*)0,&p_919->g_103,(void*)0,(void*)0,&p_919->g_103}};
        int16_t *l_119 = (void*)0;
        int16_t *l_120 = (void*)0;
        int16_t *l_121 = &p_919->g_122;
        int32_t l_124 = 1L;
        int i, j;
        (**p_78) = 0L;
        (**p_78) = (safe_mod_func_int8_t_s_s((((((((safe_add_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((*l_121) = (p_919->g_95[3] >= (p_75 && (((((l_117[0][0] && l_117[0][0]) && (+4294967295UL)) , p_919->g_37) <= GROUP_DIVERGE(2, 1)) & (l_118[0][0] == (void*)0))))), p_77)), 65530UL)) > l_123[1]) == 0x8CL) < 1UL) || p_919->g_103) , p_78) != p_76), l_124));
    }
    (*p_78) = (*p_78);
    l_127[0] = &p_919->g_108;
    for (p_919->g_37 = 0; (p_919->g_37 < 20); p_919->g_37 = safe_add_func_uint8_t_u_u(p_919->g_37, 7))
    { /* block id: 42 */
        int32_t *l_132 = (void*)0;
        int32_t l_152 = 0x093970EBL;
        uint32_t l_160[2];
        int32_t l_188 = 0x5A8DBCCDL;
        int32_t l_193 = 0L;
        int32_t l_194[5];
        int32_t l_195 = 0x7A2573A2L;
        int64_t *l_265 = &p_919->g_147;
        int32_t l_353 = (-1L);
        int i;
        for (i = 0; i < 2; i++)
            l_160[i] = 0x925B6B4BL;
        for (i = 0; i < 5; i++)
            l_194[i] = 0x3E7DB0B1L;
        for (p_919->g_103 = (-9); (p_919->g_103 != (-28)); p_919->g_103--)
        { /* block id: 45 */
            int32_t l_133 = 0x491E5470L;
            int32_t l_169 = 0L;
            uint16_t *l_170 = &p_919->g_106;
            int32_t l_177[10][10] = {{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)},{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)},{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)},{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)},{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)},{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)},{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)},{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)},{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)},{(-1L),(-1L),0x0A576ED2L,(-4L),1L,(-4L),0x0C0A41B3L,0x2E19F660L,0x0C0A41B3L,(-4L)}};
            uint32_t l_190 = 0xBBA217E5L;
            int32_t l_233 = 0x5CC423A4L;
            uint32_t *l_279 = (void*)0;
            int i, j;
            (*p_78) = l_132;
            if (l_133)
            { /* block id: 47 */
                uint32_t l_136[2][3][3] = {{{0x0F823F9BL,1UL,0x0F823F9BL},{0x0F823F9BL,1UL,0x0F823F9BL},{0x0F823F9BL,1UL,0x0F823F9BL}},{{0x0F823F9BL,1UL,0x0F823F9BL},{0x0F823F9BL,1UL,0x0F823F9BL},{0x0F823F9BL,1UL,0x0F823F9BL}}};
                int i, j, k;
                if (l_133)
                    break;
                l_133 = (((p_919->g_122 >= (l_133 >= (((safe_add_func_uint32_t_u_u((1UL > (((p_919->g_122 != ((4294967295UL <= (((l_136[0][2][1] && p_919->g_106) , (safe_mod_func_int32_t_s_s((((void*)0 == p_76) < p_919->g_95[6]), l_133))) != l_136[1][2][1])) == l_136[0][2][1])) ^ 1UL) ^ l_133)), 1UL)) == p_77) <= l_139[1][2][2]))) < p_919->g_42[2]) >= 18446744073709551615UL);
            }
            else
            { /* block id: 50 */
                int64_t l_142 = (-6L);
                int8_t *l_145 = &l_139[1][3][5];
                int64_t *l_146 = &p_919->g_147;
                uint32_t *l_153 = &l_117[1][3];
                l_133 = (((safe_mod_func_int8_t_s_s(p_919->g_122, l_142)) > 255UL) > ((*l_153) = (safe_add_func_int64_t_s_s(((((void*)0 == l_145) <= (((*l_146) ^= 1L) | 18446744073709551615UL)) != (p_919->g_95[6] > (safe_div_func_int8_t_s_s((safe_div_func_int8_t_s_s((0x30FA3D1AL < l_152), 0x8CL)), 0x01L)))), p_919->g_95[6]))));
                return p_76;
            }
            if ((safe_rshift_func_int16_t_s_u((l_133 >= (p_75 , (((safe_sub_func_uint32_t_u_u(4294967288UL, p_75)) == (0x98BFL & (!p_919->g_147))) <= 0UL))), (((((*l_170) = ((safe_add_func_uint64_t_u_u(l_160[1], (((safe_rshift_func_int16_t_s_u((safe_add_func_uint32_t_u_u(((safe_div_func_uint32_t_u_u((safe_mod_func_int64_t_s_s((p_919->g_95[3] & p_919->g_103), p_75)), p_77)) < 0xB1F4L), l_133)), 14)) , p_919->g_103) ^ l_169))) , 0x91D3L)) || p_919->g_147) != l_171) , p_919->g_95[3]))))
            { /* block id: 57 */
                int32_t *l_174 = &l_152;
                int32_t l_179 = 0x69C2BD87L;
                int32_t l_180 = (-6L);
                int32_t l_184 = 1L;
                int32_t l_189[3];
                uint32_t l_196 = 4294967295UL;
                uint32_t *l_219 = &l_117[1][0];
                int64_t *l_232[6] = {&p_919->g_147,&p_919->g_147,&p_919->g_147,&p_919->g_147,&p_919->g_147,&p_919->g_147};
                uint16_t *l_234 = &p_919->g_106;
                int8_t l_252 = 1L;
                int i;
                for (i = 0; i < 3; i++)
                    l_189[i] = 0x3D8845D9L;
                for (l_152 = 0; (l_152 != (-3)); l_152--)
                { /* block id: 60 */
                    int8_t l_185 = (-7L);
                    int32_t l_186[4] = {0x19C00F12L,0x19C00F12L,0x19C00F12L,0x19C00F12L};
                    int i;
                    (*p_78) = l_174;
                    for (l_171 = 12; (l_171 < 9); --l_171)
                    { /* block id: 64 */
                        int32_t l_178 = 1L;
                        int32_t l_181 = 0x6B84604DL;
                        int32_t l_182 = (-1L);
                        int32_t l_183 = 0x4F34597DL;
                        int32_t l_187 = (-1L);
                        l_190--;
                    }
                    --l_196;
                }
                if ((safe_lshift_func_int16_t_s_u(((*l_228) = ((safe_lshift_func_uint8_t_u_s(((((p_919->g_95[3] = ((((((safe_div_func_int64_t_s_s((l_233 = (safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((l_169 ^ ((l_133 = (safe_sub_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u(((((((*l_174) = (((safe_mod_func_int16_t_s_s((((~((((*l_174) >= (l_177[7][3] = (*l_174))) == p_919->g_comm_values[p_919->tid]) < (((safe_unary_minus_func_int64_t_s(p_919->g_147)) || (safe_mul_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(((*l_219)--), (0x0201L == (safe_div_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((safe_add_func_int32_t_s_s((!(&p_919->g_122 == l_228)), (((((safe_lshift_func_int8_t_s_s(p_75, 0)) <= p_919->g_42[1]) ^ GROUP_DIVERGE(2, 1)) ^ GROUP_DIVERGE(1, 1)) | p_919->g_42[5]))) ^ p_919->g_231), p_77)), p_77))))), p_919->g_106))) > 6L))) != 5UL) | p_77), p_919->g_42[2])) > p_77) && p_919->g_95[3])) == 0xA4289DD2L) , p_75) < p_919->g_147) , 0x8AL))), 0x71L))) , l_177[7][5])), p_919->g_95[5])), p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]))), p_77)) , (void*)0) != (void*)0) , 0x353EABFC5C242C3BL) == p_919->g_95[3]) > p_75)) , (void*)0) == l_234) || 18446744073709551612UL), 5)) == 65533UL)), p_919->g_106)))
                { /* block id: 76 */
                    int32_t l_250 = 0L;
                    for (l_152 = (-26); (l_152 < 17); l_152 = safe_add_func_uint32_t_u_u(l_152, 1))
                    { /* block id: 79 */
                        uint32_t l_237 = 4294967295UL;
                        l_237--;
                    }
                    for (l_171 = 0; (l_171 >= 53); l_171 = safe_add_func_int64_t_s_s(l_171, 6))
                    { /* block id: 84 */
                        uint32_t l_242 = 0UL;
                        int32_t l_245 = 7L;
                        uint32_t *l_248 = &l_190;
                        (*l_174) |= (-1L);
                        (*l_174) &= (p_77 <= (p_919->g_249 |= ((FAKE_DIVERGE(p_919->local_1_offset, get_local_id(1), 10) >= 0x360CACC1720F163DL) < ((*l_248) = (l_242 , ((safe_mod_func_uint32_t_u_u(((*l_219)++), p_919->g_42[4])) , p_77))))));
                    }
                    l_188 |= (*l_174);
                    for (l_180 = 5; (l_180 >= 0); l_180 -= 1)
                    { /* block id: 94 */
                        int32_t l_251 = 0x2D0E80A9L;
                        if (l_250)
                            break;
                        if (l_251)
                            break;
                    }
                }
                else
                { /* block id: 98 */
                    l_252 ^= ((*l_174) = l_177[1][5]);
                }
            }
            else
            { /* block id: 102 */
                uint16_t l_253 = 0x323BL;
                uint32_t l_266 = 5UL;
                int32_t l_269 = 8L;
                int32_t l_270 = (-3L);
                uint32_t l_271 = 0x20E3F7F6L;
                --l_253;
                l_267 = ((safe_add_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((((&p_919->g_147 != (void*)0) , ((((*l_170) |= (safe_div_func_uint16_t_u_u((!(safe_mul_func_int8_t_s_s(((p_77 == (((p_919->g_264[7][3] = &l_253) != &l_253) > p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))])) , (&p_919->g_147 != (((p_77 , &p_919->g_147) == (void*)0) , l_265))), l_133))), 0x3CA5L))) != FAKE_DIVERGE(p_919->group_1_offset, get_group_id(1), 10)) == l_233)) >= 0x2E680BF6L), 1)), p_919->g_231)) <= l_266);
                for (l_171 = 0; (l_171 <= 1); l_171 += 1)
                { /* block id: 109 */
                    int32_t l_268[8][1][9] = {{{0x45BC0E46L,0x1015B2B4L,0x12EB9C0AL,0x714927ADL,1L,0L,(-5L),0x152F90A0L,0x1015B2B4L}},{{0x45BC0E46L,0x1015B2B4L,0x12EB9C0AL,0x714927ADL,1L,0L,(-5L),0x152F90A0L,0x1015B2B4L}},{{0x45BC0E46L,0x1015B2B4L,0x12EB9C0AL,0x714927ADL,1L,0L,(-5L),0x152F90A0L,0x1015B2B4L}},{{0x45BC0E46L,0x1015B2B4L,0x12EB9C0AL,0x714927ADL,1L,0L,(-5L),0x152F90A0L,0x1015B2B4L}},{{0x45BC0E46L,0x1015B2B4L,0x12EB9C0AL,0x714927ADL,1L,0L,(-5L),0x152F90A0L,0x1015B2B4L}},{{0x45BC0E46L,0x1015B2B4L,0x12EB9C0AL,0x714927ADL,1L,0L,(-5L),0x152F90A0L,0x1015B2B4L}},{{0x45BC0E46L,0x1015B2B4L,0x12EB9C0AL,0x714927ADL,1L,0L,(-5L),0x152F90A0L,0x1015B2B4L}},{{0x45BC0E46L,0x1015B2B4L,0x12EB9C0AL,0x714927ADL,1L,0L,(-5L),0x152F90A0L,0x1015B2B4L}}};
                    int i, j, k;
                    for (l_195 = 0; (l_195 <= 5); l_195 += 1)
                    { /* block id: 112 */
                        uint8_t *l_284 = &p_919->g_285;
                        uint16_t l_286 = 0x2E6CL;
                        uint8_t l_287[3][6] = {{0x56L,0x56L,1UL,250UL,0xB7L,250UL},{0x56L,0x56L,1UL,250UL,0xB7L,250UL},{0x56L,0x56L,1UL,250UL,0xB7L,250UL}};
                        int i, j, k;
                        l_152 &= (l_194[(l_171 + 2)] && 65535UL);
                        l_271--;
                        p_919->g_274--;
                        l_287[1][4] &= ((((l_160[l_171] , l_139[l_195][(l_195 + 1)][l_195]) , ((l_139[l_171][(l_171 + 4)][(l_171 + 2)] <= ((((safe_mul_func_uint8_t_u_u(((*l_284) = (((l_132 == l_279) , ((safe_rshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u(((~(+((*l_265) &= l_139[l_195][(l_171 + 3)][l_171]))) & (((void*)0 == l_132) | (p_919->g_95[2] != p_919->g_106))), p_75)), 4)) , p_919->g_107[(l_195 + 1)][l_171])) != p_76)), 0x79L)) == (-1L)) ^ 7UL) > p_75)) >= l_286)) == l_268[0][0][0]) & l_268[0][0][0]);
                    }
                }
            }
        }
        (*p_78) = &l_194[4];
        if (((**p_78) = ((((&p_919->g_274 == l_132) > FAKE_DIVERGE(p_919->local_1_offset, get_local_id(1), 10)) , (((safe_sub_func_int8_t_s_s(0L, (((p_75 , ((((safe_mod_func_uint32_t_u_u(p_75, (safe_rshift_func_int8_t_s_u((p_77 <= (safe_sub_func_uint32_t_u_u((255UL <= 0UL), (**p_78)))), 4)))) && GROUP_DIVERGE(2, 1)) != 0L) , p_75)) , p_77) , p_77))) != 0L) >= 9L)) != 1L)))
        { /* block id: 125 */
            uint8_t l_302 = 251UL;
            uint8_t *l_305 = &l_171;
            uint32_t *l_338 = &l_117[0][0];
            (**p_78) = (((((p_919->g_comm_values[p_919->tid] >= ((safe_add_func_int32_t_s_s((0UL == (p_77 == ((safe_mul_func_int8_t_s_s(1L, l_302)) < p_919->g_106))), ((l_302 < (((*l_228) = (l_302 == (((*l_305) = ((&p_919->g_107[2][0] != (void*)0) && p_77)) >= p_77))) <= FAKE_DIVERGE(p_919->global_2_offset, get_global_id(2), 10))) | p_75))) == p_919->g_231)) , l_305) != (void*)0) , &p_919->g_42[1]) == l_306);
            for (l_193 = 8; (l_193 < 8); ++l_193)
            { /* block id: 131 */
                uint16_t *l_311 = &p_919->g_106;
                uint16_t *l_317 = &p_919->g_106;
                uint8_t *l_324 = &p_919->g_42[5];
                int64_t l_332 = 0x5D00FB13ED26C3D5L;
                int32_t *l_341[6][10][4] = {{{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0}},{{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0}},{{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0}},{{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0}},{{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0}},{{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0},{(void*)0,&p_919->g_37,&l_195,(void*)0}}};
                int i, j, k;
                for (p_919->g_147 = 0; (p_919->g_147 < 16); ++p_919->g_147)
                { /* block id: 134 */
                    uint16_t **l_312 = &p_919->g_264[7][3];
                    uint16_t **l_313 = &p_919->g_264[5][0];
                    uint16_t **l_314 = &p_919->g_264[4][2];
                    uint16_t **l_315 = &p_919->g_264[5][3];
                    uint16_t **l_316[9][8] = {{&p_919->g_264[7][3],&p_919->g_264[0][1],&p_919->g_264[7][2],(void*)0,&p_919->g_264[7][2],&p_919->g_264[0][1],&p_919->g_264[7][3],&p_919->g_264[7][2]},{&p_919->g_264[7][3],&p_919->g_264[0][1],&p_919->g_264[7][2],(void*)0,&p_919->g_264[7][2],&p_919->g_264[0][1],&p_919->g_264[7][3],&p_919->g_264[7][2]},{&p_919->g_264[7][3],&p_919->g_264[0][1],&p_919->g_264[7][2],(void*)0,&p_919->g_264[7][2],&p_919->g_264[0][1],&p_919->g_264[7][3],&p_919->g_264[7][2]},{&p_919->g_264[7][3],&p_919->g_264[0][1],&p_919->g_264[7][2],(void*)0,&p_919->g_264[7][2],&p_919->g_264[0][1],&p_919->g_264[7][3],&p_919->g_264[7][2]},{&p_919->g_264[7][3],&p_919->g_264[0][1],&p_919->g_264[7][2],(void*)0,&p_919->g_264[7][2],&p_919->g_264[0][1],&p_919->g_264[7][3],&p_919->g_264[7][2]},{&p_919->g_264[7][3],&p_919->g_264[0][1],&p_919->g_264[7][2],(void*)0,&p_919->g_264[7][2],&p_919->g_264[0][1],&p_919->g_264[7][3],&p_919->g_264[7][2]},{&p_919->g_264[7][3],&p_919->g_264[0][1],&p_919->g_264[7][2],(void*)0,&p_919->g_264[7][2],&p_919->g_264[0][1],&p_919->g_264[7][3],&p_919->g_264[7][2]},{&p_919->g_264[7][3],&p_919->g_264[0][1],&p_919->g_264[7][2],(void*)0,&p_919->g_264[7][2],&p_919->g_264[0][1],&p_919->g_264[7][3],&p_919->g_264[7][2]},{&p_919->g_264[7][3],&p_919->g_264[0][1],&p_919->g_264[7][2],(void*)0,&p_919->g_264[7][2],&p_919->g_264[0][1],&p_919->g_264[7][3],&p_919->g_264[7][2]}};
                    uint8_t *l_323 = &p_919->g_285;
                    int32_t l_351 = 0x0E77FDF4L;
                    int i, j;
                    if (((((l_311 == (l_318 = (l_317 = &p_919->g_106))) , (safe_sub_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_u((((l_302 , l_194[0]) < 2L) < FAKE_DIVERGE(p_919->global_1_offset, get_global_id(1), 10)), 4)) != ((&p_919->g_285 == ((&p_919->g_42[5] != l_323) , l_324)) < p_75)), p_75))) >= p_77) >= l_302))
                    { /* block id: 137 */
                        return p_76;
                    }
                    else
                    { /* block id: 139 */
                        uint32_t **l_337 = (void*)0;
                        uint64_t *l_348[1];
                        int8_t *l_352 = (void*)0;
                        int32_t l_354 = 0x073B4EECL;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_348[i] = &p_919->g_349;
                        (*p_78) = (*p_78);
                        (**p_78) = ((&l_311 != (p_919->g_325 = &l_318)) && ((safe_lshift_func_int16_t_s_u((safe_div_func_uint8_t_u_u(((GROUP_DIVERGE(2, 1) >= (safe_mul_func_uint16_t_u_u(((p_919->l_comm_values[(safe_mod_func_uint32_t_u_u(p_919->tid, 3))] == ((l_332 , (safe_div_func_int64_t_s_s(((l_132 != (l_338 = &p_919->g_249)) > (((((safe_add_func_int64_t_s_s(((*p_78) == (l_341[3][4][3] = (void*)0)), ((safe_add_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((((~(((safe_lshift_func_int8_t_s_u((((((((((p_919->g_349 = (l_302 , p_77)) , p_919->g_95[3]) >= 0x0D29ACC7DFC97EE6L) < l_350) & (**p_78)) <= p_919->g_147) != p_75) | 8L) , p_75), GROUP_DIVERGE(1, 1))) ^ 9L) != p_919->g_274)) == FAKE_DIVERGE(p_919->local_1_offset, get_local_id(1), 10)) > l_351), p_75)), 0x85L)) < p_77))) <= p_77) || 3L) , l_352) == l_323)), (-4L)))) >= l_353)) , p_75), l_302))) ^ 0x682CD16FL), p_77)), p_75)) > 0x41804D7EL));
                        if (l_354)
                            break;
                        return p_76;
                    }
                }
                for (l_188 = 0; (l_188 != 11); l_188 = safe_add_func_int64_t_s_s(l_188, 1))
                { /* block id: 152 */
                    int32_t *l_359 = (void*)0;
                    int i, j;
                    for (l_332 = 5; (l_332 <= 6); l_332 = safe_add_func_int16_t_s_s(l_332, 1))
                    { /* block id: 155 */
                        uint8_t l_374 = 246UL;
                        (1 + 1);
                    }
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_919->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[(safe_mod_func_uint32_t_u_u(0x04C190B2L, 10))][(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]));
                    (**p_78) &= (!permutations[(safe_mod_func_uint32_t_u_u(0x04C190B2L, 10))][(safe_mod_func_uint32_t_u_u(p_919->tid, 3))]);
                }
                (**p_78) = ((p_919->g_285 < (safe_mod_func_uint16_t_u_u((~((p_77 , &l_117[0][2]) == (l_302 , l_132))), ((safe_unary_minus_func_uint32_t_u(0x001C5E73L)) | 18446744073709551615UL)))) ^ (l_302 , (safe_add_func_int8_t_s_s(p_75, GROUP_DIVERGE(2, 1)))));
            }
            if ((**p_78))
                break;
            if ((**p_78))
                continue;
        }
        else
        { /* block id: 173 */
            int16_t l_385 = 0x08EDL;
            for (l_350 = (-16); (l_350 > 18); l_350 = safe_add_func_int32_t_s_s(l_350, 7))
            { /* block id: 176 */
                uint32_t l_384 = 4UL;
                int8_t *l_400[6] = {&l_350,&l_267,&l_350,&l_350,&l_267,&l_350};
                int32_t l_404 = (-7L);
                int32_t *l_405 = &p_919->g_406[1];
                uint64_t *l_407 = &p_919->g_408;
                int i;
                l_193 |= (safe_div_func_int8_t_s_s((l_384 && ((((*l_306) = l_385) || (safe_lshift_func_int16_t_s_u((((*l_407) = (((*l_405) = (safe_sub_func_int16_t_s_s(((l_404 |= ((safe_rshift_func_int16_t_s_s((((safe_lshift_func_int8_t_s_u(l_384, 4)) > ((safe_sub_func_int64_t_s_s((safe_div_func_int8_t_s_s((+((safe_mul_func_int8_t_s_s((p_919->g_401 = (p_919->g_103 &= p_77)), (((((l_384 == ((((safe_add_func_uint64_t_u_u(((void*)0 != &p_919->g_42[1]), p_919->g_349)) != (p_77 <= p_77)) ^ (**p_78)) != p_75)) || 0x02ABC913L) && l_384) || p_919->g_42[1]) != p_75))) & 0x391D8773489FC4E2L)), p_919->g_274)), p_919->g_147)) < l_384)) <= p_75), p_919->g_42[0])) | 0x491E0087D488F8EFL)) ^ 0x70L), p_77))) , p_75)) ^ 3L), l_385))) != p_919->g_95[5])), p_75));
            }
            if (l_385)
                continue;
        }
    }
    return l_127[3];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[3];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 3; i++)
            l_comm_values[i] = 1;
    struct S0 c_920;
    struct S0* p_919 = &c_920;
    struct S0 c_921 = {
        {{(-1L),(-1L),1L,0x5901516EL},{(-1L),(-1L),1L,0x5901516EL},{(-1L),(-1L),1L,0x5901516EL},{(-1L),(-1L),1L,0x5901516EL}}, // p_919->g_31
        0x79611CA4L, // p_919->g_37
        {0UL,0xADL,0UL,0UL,0xADL,0UL}, // p_919->g_42
        &p_919->g_37, // p_919->g_50
        {7UL,65532UL,7UL,7UL,65532UL,7UL,7UL}, // p_919->g_95
        0x77L, // p_919->g_103
        0x4641L, // p_919->g_106
        (void*)0, // p_919->g_108
        {{(void*)0,(void*)0,&p_919->g_108},{(void*)0,(void*)0,&p_919->g_108},{(void*)0,(void*)0,&p_919->g_108},{(void*)0,(void*)0,&p_919->g_108},{(void*)0,(void*)0,&p_919->g_108},{(void*)0,(void*)0,&p_919->g_108},{(void*)0,(void*)0,&p_919->g_108},{(void*)0,(void*)0,&p_919->g_108},{(void*)0,(void*)0,&p_919->g_108}}, // p_919->g_107
        0x53C8L, // p_919->g_122
        (void*)0, // p_919->g_125
        (void*)0, // p_919->g_126
        0x2A57F4424053B13CL, // p_919->g_147
        (-8L), // p_919->g_231
        0UL, // p_919->g_249
        {{&p_919->g_95[3],&p_919->g_95[3],&p_919->g_95[3],&p_919->g_106},{&p_919->g_95[3],&p_919->g_95[3],&p_919->g_95[3],&p_919->g_106},{&p_919->g_95[3],&p_919->g_95[3],&p_919->g_95[3],&p_919->g_106},{&p_919->g_95[3],&p_919->g_95[3],&p_919->g_95[3],&p_919->g_106},{&p_919->g_95[3],&p_919->g_95[3],&p_919->g_95[3],&p_919->g_106},{&p_919->g_95[3],&p_919->g_95[3],&p_919->g_95[3],&p_919->g_106},{&p_919->g_95[3],&p_919->g_95[3],&p_919->g_95[3],&p_919->g_106},{&p_919->g_95[3],&p_919->g_95[3],&p_919->g_95[3],&p_919->g_106}}, // p_919->g_264
        1UL, // p_919->g_274
        2UL, // p_919->g_285
        (void*)0, // p_919->g_325
        18446744073709551615UL, // p_919->g_349
        (-1L), // p_919->g_401
        {0x67F9319EL,0x67F9319EL}, // p_919->g_406
        0x63F2D5AE75CA7B04L, // p_919->g_408
        {{(-1L),0x2BF19C5951E3A4B9L,(-8L),1L,3L,(-1L),1L,0L},{(-1L),0x2BF19C5951E3A4B9L,(-8L),1L,3L,(-1L),1L,0L},{(-1L),0x2BF19C5951E3A4B9L,(-8L),1L,3L,(-1L),1L,0L},{(-1L),0x2BF19C5951E3A4B9L,(-8L),1L,3L,(-1L),1L,0L},{(-1L),0x2BF19C5951E3A4B9L,(-8L),1L,3L,(-1L),1L,0L},{(-1L),0x2BF19C5951E3A4B9L,(-8L),1L,3L,(-1L),1L,0L},{(-1L),0x2BF19C5951E3A4B9L,(-8L),1L,3L,(-1L),1L,0L},{(-1L),0x2BF19C5951E3A4B9L,(-8L),1L,3L,(-1L),1L,0L},{(-1L),0x2BF19C5951E3A4B9L,(-8L),1L,3L,(-1L),1L,0L}}, // p_919->g_426
        {(-1L),(-1L),(-1L),(-1L)}, // p_919->g_452
        {18446744073709551613UL,0xD43171FB7C044209L,18446744073709551613UL,18446744073709551613UL,0xD43171FB7C044209L,18446744073709551613UL,18446744073709551613UL,0xD43171FB7C044209L,18446744073709551613UL,18446744073709551613UL}, // p_919->g_472
        7UL, // p_919->g_476
        0x00L, // p_919->g_483
        0x6E7F205E264A91AFL, // p_919->g_520
        &p_919->g_520, // p_919->g_522
        65532UL, // p_919->g_528
        0x4CB5C9ECL, // p_919->g_543
        {{2UL,2UL,9UL,1UL,4294967286UL},{2UL,2UL,9UL,1UL,4294967286UL},{2UL,2UL,9UL,1UL,4294967286UL},{2UL,2UL,9UL,1UL,4294967286UL},{2UL,2UL,9UL,1UL,4294967286UL},{2UL,2UL,9UL,1UL,4294967286UL},{2UL,2UL,9UL,1UL,4294967286UL},{2UL,2UL,9UL,1UL,4294967286UL},{2UL,2UL,9UL,1UL,4294967286UL}}, // p_919->g_575
        {&p_919->g_103,&p_919->g_103,&p_919->g_103,&p_919->g_103,&p_919->g_103}, // p_919->g_603
        {{&p_919->g_603[1],(void*)0,&p_919->g_603[0],(void*)0,&p_919->g_603[1],&p_919->g_603[1]},{&p_919->g_603[1],(void*)0,&p_919->g_603[0],(void*)0,&p_919->g_603[1],&p_919->g_603[1]},{&p_919->g_603[1],(void*)0,&p_919->g_603[0],(void*)0,&p_919->g_603[1],&p_919->g_603[1]},{&p_919->g_603[1],(void*)0,&p_919->g_603[0],(void*)0,&p_919->g_603[1],&p_919->g_603[1]},{&p_919->g_603[1],(void*)0,&p_919->g_603[0],(void*)0,&p_919->g_603[1],&p_919->g_603[1]},{&p_919->g_603[1],(void*)0,&p_919->g_603[0],(void*)0,&p_919->g_603[1],&p_919->g_603[1]},{&p_919->g_603[1],(void*)0,&p_919->g_603[0],(void*)0,&p_919->g_603[1],&p_919->g_603[1]}}, // p_919->g_602
        3UL, // p_919->g_647
        0x9934402E0F571BCCL, // p_919->g_701
        &p_919->g_701, // p_919->g_700
        {&p_919->g_700,&p_919->g_700}, // p_919->g_699
        &p_919->g_699[1], // p_919->g_698
        {{{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L}},{{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L}},{{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L}},{{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L}},{{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L}},{{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L}},{{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L},{0x3CFBL,0x8AA0L}}}, // p_919->g_717
        (void*)0, // p_919->g_775
        {{{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775}},{{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775}},{{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775}},{{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775}},{{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775}},{{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775}},{{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775},{&p_919->g_775,&p_919->g_775,&p_919->g_775,(void*)0,&p_919->g_775}}}, // p_919->g_774
        &p_919->g_775, // p_919->g_776
        0x3B171F53L, // p_919->g_802
        0x0CL, // p_919->g_822
        0x6BE99E1631BBDC7BL, // p_919->g_853
        1L, // p_919->g_880
        sequence_input[get_global_id(0)], // p_919->global_0_offset
        sequence_input[get_global_id(1)], // p_919->global_1_offset
        sequence_input[get_global_id(2)], // p_919->global_2_offset
        sequence_input[get_local_id(0)], // p_919->local_0_offset
        sequence_input[get_local_id(1)], // p_919->local_1_offset
        sequence_input[get_local_id(2)], // p_919->local_2_offset
        sequence_input[get_group_id(0)], // p_919->group_0_offset
        sequence_input[get_group_id(1)], // p_919->group_1_offset
        sequence_input[get_group_id(2)], // p_919->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[0][get_linear_local_id()])), // p_919->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_920 = c_921;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_919);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_919->g_31[i][j], "p_919->g_31[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_919->g_37, "p_919->g_37", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_919->g_42[i], "p_919->g_42[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_919->g_95[i], "p_919->g_95[i]", print_hash_value);

    }
    transparent_crc(p_919->g_103, "p_919->g_103", print_hash_value);
    transparent_crc(p_919->g_106, "p_919->g_106", print_hash_value);
    transparent_crc(p_919->g_122, "p_919->g_122", print_hash_value);
    transparent_crc(p_919->g_147, "p_919->g_147", print_hash_value);
    transparent_crc(p_919->g_231, "p_919->g_231", print_hash_value);
    transparent_crc(p_919->g_249, "p_919->g_249", print_hash_value);
    transparent_crc(p_919->g_274, "p_919->g_274", print_hash_value);
    transparent_crc(p_919->g_285, "p_919->g_285", print_hash_value);
    transparent_crc(p_919->g_349, "p_919->g_349", print_hash_value);
    transparent_crc(p_919->g_401, "p_919->g_401", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_919->g_406[i], "p_919->g_406[i]", print_hash_value);

    }
    transparent_crc(p_919->g_408, "p_919->g_408", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_919->g_426[i][j], "p_919->g_426[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_919->g_452[i], "p_919->g_452[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_919->g_472[i], "p_919->g_472[i]", print_hash_value);

    }
    transparent_crc(p_919->g_476, "p_919->g_476", print_hash_value);
    transparent_crc(p_919->g_483, "p_919->g_483", print_hash_value);
    transparent_crc(p_919->g_520, "p_919->g_520", print_hash_value);
    transparent_crc(p_919->g_528, "p_919->g_528", print_hash_value);
    transparent_crc(p_919->g_543, "p_919->g_543", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_919->g_575[i][j], "p_919->g_575[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_919->g_647, "p_919->g_647", print_hash_value);
    transparent_crc(p_919->g_701, "p_919->g_701", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_919->g_717[i][j][k], "p_919->g_717[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_919->g_802, "p_919->g_802", print_hash_value);
    transparent_crc(p_919->g_822, "p_919->g_822", print_hash_value);
    transparent_crc(p_919->g_853, "p_919->g_853", print_hash_value);
    transparent_crc(p_919->g_880, "p_919->g_880", print_hash_value);
    transparent_crc(p_919->l_comm_values[get_linear_local_id()], "p_919->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_919->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()], "p_919->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
