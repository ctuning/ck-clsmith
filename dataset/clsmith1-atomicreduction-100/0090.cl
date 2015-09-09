// ---atomic_reductions ---fake_divergence -g 36,14,5 -l 3,1,1
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


// Seed: 90

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint16_t g_14;
    int32_t g_29[4][4];
    int32_t g_35;
    uint8_t g_40[6];
    int32_t *g_48;
    int16_t g_58;
    int32_t g_66;
    int32_t g_67;
    uint8_t g_68;
    int8_t g_117[4];
    int32_t *g_119;
    int32_t **g_118;
    int32_t g_128;
    volatile int32_t g_129;
    int32_t g_130[5][9];
    uint32_t g_139[4][2];
    int16_t g_157;
    uint8_t g_187;
    uint8_t *g_204;
    volatile uint16_t * volatile g_210;
    volatile uint16_t * volatile * volatile g_209;
    int32_t *g_243;
    int32_t ** volatile g_242;
    int64_t g_258;
    uint64_t g_260;
    volatile uint32_t g_268;
    uint32_t g_294;
    uint32_t g_332;
    int64_t g_333;
    int16_t *g_485;
    int16_t **g_484;
    int64_t g_513;
    int64_t g_517;
    volatile uint32_t * volatile g_529[7][9];
    volatile uint32_t * volatile *g_528;
    volatile uint64_t *g_541[2][3];
    uint32_t *g_597;
    uint32_t **g_596;
    volatile int32_t g_632;
    int64_t *g_643;
    int64_t **g_642;
    int8_t g_654;
    volatile int16_t g_668[1];
    volatile uint8_t g_672;
    volatile uint8_t *g_671;
    volatile uint8_t **g_670;
    volatile uint8_t *** volatile g_669;
    uint16_t g_682;
    volatile int32_t *g_753;
    uint64_t g_767;
    uint16_t g_768;
    int16_t ** volatile * volatile g_806[1][6][5];
    int16_t ** volatile * volatile * volatile g_805[10];
    volatile int64_t g_930;
    int64_t *** volatile g_1005;
    uint16_t g_1019;
    int32_t g_1036[8];
    uint16_t g_1038;
    uint32_t *g_1059[8];
    uint32_t *g_1060;
    uint16_t *g_1230;
    uint16_t **g_1229;
    int32_t *** volatile g_1293;
    int16_t g_1420;
    volatile uint64_t * volatile *g_1476[3];
    int32_t g_1537[2][1];
    uint32_t g_1642;
    int8_t *g_1691[8];
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_1703);
uint64_t  func_2(uint8_t  p_3, uint16_t  p_4, uint64_t  p_5, uint32_t  p_6, uint32_t  p_7, struct S0 * p_1703);
int32_t  func_20(uint32_t  p_21, int32_t  p_22, uint32_t  p_23, struct S0 * p_1703);
int16_t  func_26(uint32_t  p_27, struct S0 * p_1703);
uint64_t  func_30(int8_t  p_31, int32_t * p_32, int64_t  p_33, struct S0 * p_1703);
uint16_t  func_51(int32_t * p_52, struct S0 * p_1703);
int32_t * func_62(int32_t  p_63, struct S0 * p_1703);
int8_t  func_82(int64_t  p_83, uint8_t  p_84, int32_t  p_85, int32_t  p_86, uint32_t  p_87, struct S0 * p_1703);
uint8_t  func_89(int32_t ** p_90, uint32_t  p_91, uint8_t  p_92, int64_t  p_93, struct S0 * p_1703);
int32_t ** func_94(int32_t  p_95, int32_t ** p_96, int32_t ** p_97, struct S0 * p_1703);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1703->g_14 p_1703->g_40 p_1703->g_1230 p_1703->g_1537 p_1703->g_597 p_1703->g_332 p_1703->g_768 p_1703->g_485 p_1703->g_157 p_1703->g_596 p_1703->g_1060 p_1703->g_139 p_1703->g_118 p_1703->g_682 p_1703->g_119 p_1703->g_66 p_1703->g_130 p_1703->g_68 p_1703->g_48 p_1703->g_35 p_1703->g_767 p_1703->g_1038 p_1703->g_484 p_1703->g_672 p_1703->g_1293 p_1703->g_242 p_1703->g_243 p_1703->g_753 p_1703->g_632 p_1703->g_258 p_1703->g_671
 * writes: p_1703->g_29 p_1703->g_35 p_1703->g_1038 p_1703->g_332 p_1703->g_119 p_1703->g_682 p_1703->g_68 p_1703->g_767 p_1703->g_258 p_1703->g_1691
 */
int32_t  func_1(struct S0 * p_1703)
{ /* block id: 4 */
    uint32_t l_15 = 4294967295UL;
    int32_t *l_34 = &p_1703->g_35;
    uint8_t l_1536 = 1UL;
    uint32_t ***l_1579 = &p_1703->g_596;
    uint32_t l_1595 = 1UL;
    int32_t l_1597 = 1L;
    int16_t l_1599 = (-1L);
    uint16_t l_1617[9] = {7UL,0xB34CL,7UL,7UL,0xB34CL,7UL,7UL,0xB34CL,7UL};
    int8_t *l_1689 = (void*)0;
    uint16_t l_1702 = 65532UL;
    int i;
    (*l_34) = (func_2(((((**p_1703->g_596) = ((safe_add_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1703->group_0_offset, get_group_id(0), 10) == ((safe_lshift_func_uint8_t_u_s(p_1703->g_14, (0x9B2E4145C1747346L <= l_15))) | (safe_add_func_uint32_t_u_u(((((safe_sub_func_int32_t_s_s(func_20((safe_add_func_int16_t_s_s((p_1703->g_14 == (GROUP_DIVERGE(0, 1) != (func_26(l_15, p_1703) != ((*p_1703->g_1230) = (func_30((!0x5FL), l_34, p_1703->g_14, p_1703) <= 0x305EBBD0C64438EBL))))), l_15)), l_1536, p_1703->g_1537[1][0], p_1703), (*p_1703->g_597))) < p_1703->g_768) , 0L) != (*p_1703->g_485)), (**p_1703->g_596))))), 0L)), l_1536)) , 1UL)) | GROUP_DIVERGE(1, 1)) & l_1536), l_1536, l_15, (*p_1703->g_1060), (*p_1703->g_1060), p_1703) >= 0UL);
    for (p_1703->g_767 = 0; (p_1703->g_767 < 26); p_1703->g_767++)
    { /* block id: 812 */
        int64_t ***l_1562[9] = {&p_1703->g_642,(void*)0,&p_1703->g_642,&p_1703->g_642,(void*)0,&p_1703->g_642,&p_1703->g_642,(void*)0,&p_1703->g_642};
        int32_t l_1575 = 6L;
        uint32_t l_1580 = 4294967295UL;
        uint64_t l_1581[9][8][3] = {{{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL}},{{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL}},{{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL}},{{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL}},{{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL}},{{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL}},{{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL}},{{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL}},{{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL},{2UL,0x70B5FF1974863AF7L,18446744073709551613UL}}};
        int32_t *l_1622 = &p_1703->g_1036[0];
        int8_t *l_1690 = &p_1703->g_117[0];
        uint16_t *l_1696[2][4] = {{&p_1703->g_768,&p_1703->g_768,&p_1703->g_768,&p_1703->g_768},{&p_1703->g_768,&p_1703->g_768,&p_1703->g_768,&p_1703->g_768}};
        int i, j, k;
        (*p_1703->g_118) = (void*)0;
        for (p_1703->g_1038 = 0; (p_1703->g_1038 <= 1); p_1703->g_1038 += 1)
        { /* block id: 816 */
            uint16_t *l_1576 = &p_1703->g_682;
            int32_t *l_1600 = &p_1703->g_35;
            uint64_t l_1619 = 18446744073709551615UL;
            uint16_t l_1640 = 1UL;
            uint64_t *l_1652[8][4][8] = {{{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260}},{{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260}},{{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260}},{{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260}},{{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260}},{{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260}},{{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260}},{{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260},{&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,(void*)0,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260,&p_1703->g_260}}};
            int8_t **l_1692 = &l_1690;
            int32_t l_1693 = 1L;
            int64_t l_1697 = 0x104162CFDB25993FL;
            int i, j, k;
            if ((safe_add_func_int64_t_s_s((safe_add_func_int32_t_s_s((((((void*)0 == &p_1703->g_654) , ((!(l_1562[5] == ((safe_div_func_int8_t_s_s(p_1703->g_139[(p_1703->g_1038 + 2)][p_1703->g_1038], ((((((~(((*l_34) = (safe_mul_func_uint16_t_u_u((((p_1703->g_139[p_1703->g_1038][p_1703->g_1038] >= (safe_sub_func_int32_t_s_s((((safe_div_func_int32_t_s_s((safe_div_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((**p_1703->g_484) , (((((*l_1576)--) < (((((0L && (((void*)0 != l_1579) , 0x3AL)) <= 0UL) != l_1575) ^ 0x7A3DDCDDL) | l_1575)) | 65535UL) <= (**p_1703->g_484))), l_1575)), p_1703->g_139[p_1703->g_1038][p_1703->g_1038])), 4294967295UL)) , 0x04L) >= l_1580), l_1581[2][6][0]))) , (void*)0) == (void*)0), l_1581[2][6][0]))) , p_1703->g_139[p_1703->g_1038][p_1703->g_1038])) <= 0UL) || (*l_34)) || 0xDBL) == 0L) ^ p_1703->g_139[(p_1703->g_1038 + 2)][p_1703->g_1038]))) , &p_1703->g_642))) | l_1581[4][4][0])) , FAKE_DIVERGE(p_1703->local_1_offset, get_local_id(1), 10)) ^ p_1703->g_139[p_1703->g_1038][p_1703->g_1038]), p_1703->g_139[p_1703->g_1038][p_1703->g_1038])), p_1703->g_672)))
            { /* block id: 819 */
                int32_t *l_1582[8][10] = {{&p_1703->g_66,(void*)0,&l_1575,&p_1703->g_29[2][0],(void*)0,&p_1703->g_29[2][0],&l_1575,(void*)0,&p_1703->g_66,&p_1703->g_66},{&p_1703->g_66,(void*)0,&l_1575,&p_1703->g_29[2][0],(void*)0,&p_1703->g_29[2][0],&l_1575,(void*)0,&p_1703->g_66,&p_1703->g_66},{&p_1703->g_66,(void*)0,&l_1575,&p_1703->g_29[2][0],(void*)0,&p_1703->g_29[2][0],&l_1575,(void*)0,&p_1703->g_66,&p_1703->g_66},{&p_1703->g_66,(void*)0,&l_1575,&p_1703->g_29[2][0],(void*)0,&p_1703->g_29[2][0],&l_1575,(void*)0,&p_1703->g_66,&p_1703->g_66},{&p_1703->g_66,(void*)0,&l_1575,&p_1703->g_29[2][0],(void*)0,&p_1703->g_29[2][0],&l_1575,(void*)0,&p_1703->g_66,&p_1703->g_66},{&p_1703->g_66,(void*)0,&l_1575,&p_1703->g_29[2][0],(void*)0,&p_1703->g_29[2][0],&l_1575,(void*)0,&p_1703->g_66,&p_1703->g_66},{&p_1703->g_66,(void*)0,&l_1575,&p_1703->g_29[2][0],(void*)0,&p_1703->g_29[2][0],&l_1575,(void*)0,&p_1703->g_66,&p_1703->g_66},{&p_1703->g_66,(void*)0,&l_1575,&p_1703->g_29[2][0],(void*)0,&p_1703->g_29[2][0],&l_1575,(void*)0,&p_1703->g_66,&p_1703->g_66}};
                uint16_t l_1596[5];
                int i, j;
                for (i = 0; i < 5; i++)
                    l_1596[i] = 3UL;
                (*p_1703->g_118) = l_1582[0][6];
                if (((safe_sub_func_uint16_t_u_u(((*l_1576) = ((-6L) && 4294967289UL)), ((safe_add_func_int8_t_s_s(((void*)0 == (*p_1703->g_1293)), p_1703->g_66)) == ((safe_add_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u((((safe_sub_func_int8_t_s_s(p_1703->g_139[p_1703->g_1038][p_1703->g_1038], (l_1581[2][6][0] != (safe_lshift_func_uint16_t_u_s(l_1595, 15))))) >= (*l_34)) ^ (-6L)), (-3L))) != l_1581[2][6][0]), p_1703->g_157)) | l_1596[3])))) , 0x3CB91045L))
                { /* block id: 822 */
                    for (l_1575 = 0; (l_1575 <= 1); l_1575 += 1)
                    { /* block id: 825 */
                        (*p_1703->g_118) = (*p_1703->g_242);
                        (*l_34) = l_1597;
                        if (l_1581[2][6][0])
                            continue;
                        (*l_34) &= (*p_1703->g_753);
                    }
                }
                else
                { /* block id: 831 */
                    uint32_t l_1598 = 0x4FF03432L;
                    for (p_1703->g_332 = 0; (p_1703->g_332 <= 1); p_1703->g_332 += 1)
                    { /* block id: 834 */
                        (*l_34) ^= l_1598;
                        return l_1598;
                    }
                }
            }
            else
            { /* block id: 839 */
                uint64_t l_1601 = 1UL;
                if (l_1599)
                { /* block id: 840 */
                    (*p_1703->g_118) = l_1600;
                    if (l_1601)
                        continue;
                }
                else
                { /* block id: 843 */
                    (*p_1703->g_118) = ((((***l_1579) |= (*l_1600)) == (l_1601 >= FAKE_DIVERGE(p_1703->global_1_offset, get_global_id(1), 10))) , &l_1575);
                }
            }
            for (p_1703->g_258 = 0; (p_1703->g_258 <= 1); p_1703->g_258 += 1)
            { /* block id: 850 */
                uint8_t *l_1604[10][1][3] = {{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}},{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}},{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}},{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}},{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}},{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}},{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}},{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}},{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}},{{&p_1703->g_187,&p_1703->g_187,&p_1703->g_187}}};
                int32_t l_1618[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                uint16_t l_1620 = 0x3847L;
                int8_t *l_1621 = &p_1703->g_117[0];
                int8_t l_1663 = 0x44L;
                uint32_t l_1665[2];
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_1665[i] = 0x41D4081BL;
                (1 + 1);
            }
            if ((*p_1703->g_48))
                continue;
            (*l_34) = ((*l_1600) , ((((*l_1600) != ((safe_sub_func_int16_t_s_s(((*l_34) && ((((safe_mul_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(((((((l_1693 = (safe_sub_func_int32_t_s_s((*l_1600), (l_1689 == ((*l_1692) = (p_1703->g_1691[7] = l_1690)))))) != ((*l_1600) & (((*p_1703->g_671) | ((safe_sub_func_uint16_t_u_u(65535UL, (*p_1703->g_485))) > 0L)) || p_1703->g_157))) | l_1581[7][7][2]) & l_1581[2][6][0]) , l_1696[1][3]) != &l_1640), (*l_34))), FAKE_DIVERGE(p_1703->group_2_offset, get_group_id(2), 10))) <= p_1703->g_40[2]) , l_1580) > FAKE_DIVERGE(p_1703->local_0_offset, get_local_id(0), 10))), l_1697)) != 0x1DL)) < (*p_1703->g_485)) || 5UL));
        }
        (*l_34) = (safe_add_func_int8_t_s_s((safe_div_func_int16_t_s_s((*p_1703->g_485), 0x6426L)), FAKE_DIVERGE(p_1703->local_2_offset, get_local_id(2), 10)));
        return l_1702;
    }
    return (*l_34);
}


/* ------------------------------------------ */
/* 
 * reads : p_1703->g_118 p_1703->g_682 p_1703->g_119 p_1703->g_66 p_1703->g_130 p_1703->g_68 p_1703->g_48 p_1703->g_35
 * writes: p_1703->g_119 p_1703->g_682 p_1703->g_68 p_1703->g_35
 */
uint64_t  func_2(uint8_t  p_3, uint16_t  p_4, uint64_t  p_5, uint32_t  p_6, uint32_t  p_7, struct S0 * p_1703)
{ /* block id: 800 */
    int32_t *l_1553 = &p_1703->g_130[2][0];
    (*p_1703->g_118) = l_1553;
    for (p_1703->g_682 = 0; (p_1703->g_682 > 57); ++p_1703->g_682)
    { /* block id: 804 */
        (*p_1703->g_118) = func_62((*p_1703->g_119), p_1703);
        (*p_1703->g_48) |= p_5;
    }
    return p_5;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_20(uint32_t  p_21, int32_t  p_22, uint32_t  p_23, struct S0 * p_1703)
{ /* block id: 796 */
    int32_t *l_1538 = &p_1703->g_29[3][1];
    int32_t l_1539 = 0x44D6F7C4L;
    int32_t *l_1540 = (void*)0;
    int32_t *l_1541 = &p_1703->g_130[1][2];
    int32_t *l_1542 = &p_1703->g_130[3][1];
    int32_t *l_1543[9][6][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    int32_t l_1544 = (-1L);
    int8_t l_1545 = 0x11L;
    int32_t l_1546 = 6L;
    int32_t l_1547[6] = {1L,1L,1L,1L,1L,1L};
    int16_t l_1548 = 0x43DAL;
    int32_t l_1549 = 0x1D320DBFL;
    uint8_t l_1550 = 0UL;
    int i, j, k;
    --l_1550;
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1703->g_29
 */
int16_t  func_26(uint32_t  p_27, struct S0 * p_1703)
{ /* block id: 5 */
    int32_t *l_28 = &p_1703->g_29[3][1];
    (*l_28) = 0x50881826L;
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_1703->g_40
 * writes: p_1703->g_35
 */
uint64_t  func_30(int8_t  p_31, int32_t * p_32, int64_t  p_33, struct S0 * p_1703)
{ /* block id: 8 */
    int32_t l_41 = 0x2DE45A91L;
    int32_t *l_47 = &p_1703->g_35;
    int32_t **l_46 = &l_47;
    int32_t *l_53 = &p_1703->g_35;
    uint64_t *l_765 = (void*)0;
    uint64_t *l_766 = &p_1703->g_767;
    int32_t l_858[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
    uint8_t l_859 = 255UL;
    uint32_t l_925[1][8] = {{0xD71769C1L,0x5FDB575FL,0xD71769C1L,0xD71769C1L,0x5FDB575FL,0xD71769C1L,0xD71769C1L,0x5FDB575FL}};
    int16_t ***l_1081 = &p_1703->g_484;
    int8_t l_1100[4];
    uint16_t *l_1228 = &p_1703->g_682;
    uint16_t **l_1227 = &l_1228;
    uint32_t l_1262 = 0UL;
    int64_t **l_1297 = &p_1703->g_643;
    uint8_t **l_1352 = (void*)0;
    uint64_t l_1395 = 0xD37440881EB4DB27L;
    uint32_t l_1423[4];
    uint32_t **l_1453 = (void*)0;
    int8_t *l_1510 = &p_1703->g_117[0];
    int i, j;
    for (i = 0; i < 4; i++)
        l_1100[i] = 0x23L;
    for (i = 0; i < 4; i++)
        l_1423[i] = 1UL;
    for (p_33 = 14; (p_33 == (-25)); p_33 = safe_sub_func_uint16_t_u_u(p_33, 4))
    { /* block id: 11 */
        for (p_1703->g_35 = 0; (p_1703->g_35 > 25); ++p_1703->g_35)
        { /* block id: 14 */
            for (p_31 = 0; (p_31 <= 5); p_31 += 1)
            { /* block id: 17 */
                int i;
                return p_1703->g_40[p_31];
            }
        }
        return l_41;
    }
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_1703->g_35 p_1703->g_68 p_1703->g_118 p_1703->g_130 p_1703->g_128 p_1703->g_485 p_1703->g_157 p_1703->g_58 p_1703->g_258 p_1703->g_597 p_1703->g_66 p_1703->g_753 p_1703->g_632 p_1703->g_119 p_1703->g_294 p_1703->g_682 p_1703->g_332
 * writes: p_1703->g_68 p_1703->g_119 p_1703->g_66 p_1703->g_128 p_1703->g_332 p_1703->g_58 p_1703->g_753
 */
uint16_t  func_51(int32_t * p_52, struct S0 * p_1703)
{ /* block id: 25 */
    uint32_t l_56 = 4294967295UL;
    int16_t *l_57[2][7] = {{&p_1703->g_58,&p_1703->g_58,&p_1703->g_58,&p_1703->g_58,&p_1703->g_58,&p_1703->g_58,&p_1703->g_58},{&p_1703->g_58,&p_1703->g_58,&p_1703->g_58,&p_1703->g_58,&p_1703->g_58,&p_1703->g_58,&p_1703->g_58}};
    int32_t l_59 = 0L;
    int32_t *l_602 = &p_1703->g_130[0][6];
    int32_t *l_611 = &p_1703->g_66;
    int32_t *l_612 = &p_1703->g_128;
    int32_t l_613 = (-1L);
    uint8_t **l_624 = &p_1703->g_204;
    uint32_t l_633[6] = {0x7C8EB4B6L,0x7C4861B6L,0x7C8EB4B6L,0x7C8EB4B6L,0x7C4861B6L,0x7C8EB4B6L};
    int8_t *l_641 = &p_1703->g_117[0];
    int16_t ***l_708[3];
    int16_t ****l_707 = &l_708[1];
    uint32_t l_718 = 0x03E44306L;
    int32_t l_733 = 0x15111015L;
    int32_t l_737 = (-7L);
    int32_t l_740 = 0x1167B30EL;
    int32_t l_741[10][1] = {{(-8L)},{(-8L)},{(-8L)},{(-8L)},{(-8L)},{(-8L)},{(-8L)},{(-8L)},{(-8L)},{(-8L)}};
    volatile int32_t **l_754 = (void*)0;
    volatile int32_t **l_755 = &p_1703->g_753;
    int8_t l_756 = 0x0EL;
    int64_t **l_757 = &p_1703->g_643;
    uint32_t l_764[2];
    int i, j;
    for (i = 0; i < 3; i++)
        l_708[i] = &p_1703->g_484;
    for (i = 0; i < 2; i++)
        l_764[i] = 4294967295UL;
    if (((((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (l_56 | (l_59 &= 0L)))) < ((void*)0 == &p_52)) >= ((safe_mod_func_int64_t_s_s((((((*p_1703->g_118) = func_62(p_1703->g_35, p_1703)) == l_602) != (((*p_1703->g_597) = (safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint64_t_u_u((*l_602), (~((safe_mod_func_int32_t_s_s(((*l_612) &= ((*l_611) = ((((*l_602) | (*l_602)) ^ (*l_602)) && 4294967293UL))), l_613)) | (*p_1703->g_485))))) < p_1703->g_130[1][2]), p_1703->g_58)), p_1703->g_258))) == (*l_602))) >= (*p_1703->g_485)), (-1L))) && (*l_612))) | (*l_602)))
    { /* block id: 298 */
        uint8_t **l_625 = &p_1703->g_204;
        uint32_t *l_628[1];
        int32_t l_631 = 0x0F1FAA23L;
        int32_t l_638 = 0x619501B7L;
        int64_t l_717 = 0x3633B86B3903C2F4L;
        int32_t *l_719 = (void*)0;
        int32_t l_725 = 0L;
        int32_t l_730 = 0x1CD600F8L;
        int32_t l_731 = 0x7D803CD8L;
        int32_t l_732 = 1L;
        int32_t l_734 = 0L;
        int32_t l_735 = 1L;
        int32_t l_736 = 8L;
        int32_t l_738 = 0x081AB06CL;
        int32_t l_739 = 0x273F49D6L;
        int32_t l_742 = 9L;
        int32_t l_743 = (-1L);
        int32_t l_744 = 0x230A96D4L;
        int32_t l_745[5][9] = {{(-6L),(-4L),(-1L),(-10L),(-1L),(-4L),(-6L),0x3A7507C5L,0x7D749FE4L},{(-6L),(-4L),(-1L),(-10L),(-1L),(-4L),(-6L),0x3A7507C5L,0x7D749FE4L},{(-6L),(-4L),(-1L),(-10L),(-1L),(-4L),(-6L),0x3A7507C5L,0x7D749FE4L},{(-6L),(-4L),(-1L),(-10L),(-1L),(-4L),(-6L),0x3A7507C5L,0x7D749FE4L},{(-6L),(-4L),(-1L),(-10L),(-1L),(-4L),(-6L),0x3A7507C5L,0x7D749FE4L}};
        int i, j;
        for (i = 0; i < 1; i++)
            l_628[i] = &p_1703->g_332;
        for (p_1703->g_58 = (-19); (p_1703->g_58 == (-28)); p_1703->g_58 = safe_sub_func_uint32_t_u_u(p_1703->g_58, 1))
        { /* block id: 301 */
            uint8_t **l_627 = (void*)0;
            uint8_t ***l_626 = &l_627;
            int32_t l_644 = (-1L);
            int32_t l_716 = 1L;
            int32_t *l_720 = &l_644;
            int32_t *l_721 = &l_644;
            int32_t *l_722 = &l_644;
            int32_t *l_723 = &p_1703->g_128;
            int32_t *l_724 = &p_1703->g_130[3][5];
            int32_t *l_726 = &p_1703->g_66;
            int32_t *l_727 = &p_1703->g_130[1][7];
            int32_t *l_728 = (void*)0;
            int32_t *l_729[7] = {&l_613,(void*)0,&l_613,&l_613,(void*)0,&l_613,&l_613};
            uint16_t l_746 = 65532UL;
            int i;
            (1 + 1);
        }
    }
    else
    { /* block id: 362 */
        int64_t l_751 = 0x7320A04241139C4EL;
        int32_t l_752 = 1L;
        l_751 = (safe_rshift_func_uint8_t_u_s((*l_611), 6));
        l_752 = l_751;
    }
    (*l_755) = p_1703->g_753;
    (*p_1703->g_118) = func_62((l_756 < ((((*l_611) || 1L) && ((((*p_52) < ((((l_757 != l_757) != ((((((**l_755) , ((*l_612) & (((safe_lshift_func_int8_t_s_u(((safe_lshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s(((((*l_612) & (**l_755)) , (**p_1703->g_118)) && (*p_52)), p_1703->g_294)), 4)) >= (*l_611)), (*l_611))) && (*l_602)) != p_1703->g_682))) , (*l_612)) && 0x6FF8L) == p_1703->g_157) < (*p_1703->g_597))) <= 0x155DF8C1200433AFL) , (*l_611))) > (-8L)) , 9UL)) , l_764[0])), p_1703);
    return (*l_611);
}


/* ------------------------------------------ */
/* 
 * reads : p_1703->g_68
 * writes: p_1703->g_68
 */
int32_t * func_62(int32_t  p_63, struct S0 * p_1703)
{ /* block id: 27 */
    int16_t l_64 = 0x0998L;
    int32_t *l_65[3];
    uint8_t l_88 = 255UL;
    uint64_t l_413 = 18446744073709551610UL;
    int8_t l_436[3];
    int16_t *l_465 = &p_1703->g_58;
    int16_t **l_464 = &l_465;
    int i;
    for (i = 0; i < 3; i++)
        l_65[i] = &p_1703->g_66;
    for (i = 0; i < 3; i++)
        l_436[i] = 0x1CL;
    p_1703->g_68--;
    for (p_63 = (-4); (p_63 < (-16)); p_63 = safe_sub_func_uint64_t_u_u(p_63, 7))
    { /* block id: 31 */
        uint32_t l_75 = 4294967295UL;
        int32_t **l_110 = &l_65[0];
        int16_t *l_111 = (void*)0;
        int16_t *l_112 = &l_64;
        int32_t ***l_120 = (void*)0;
        int32_t ***l_121 = &l_110;
        int16_t l_122[3];
        int32_t l_404 = 1L;
        int32_t l_407 = 0x1A5A1103L;
        int32_t l_410 = 0x3DC8697BL;
        int32_t l_411 = (-5L);
        int32_t l_412 = 0x0785E3D2L;
        uint32_t l_467[6] = {4294967295UL,0x312AAC90L,4294967295UL,4294967295UL,0x312AAC90L,4294967295UL};
        uint16_t l_471[10] = {0x1FBCL,0x1FBCL,0x1FBCL,0x1FBCL,0x1FBCL,0x1FBCL,0x1FBCL,0x1FBCL,0x1FBCL,0x1FBCL};
        int32_t *l_476 = (void*)0;
        int16_t ***l_510 = &l_464;
        int16_t l_519 = 0x4199L;
        int64_t l_522[8][8][4] = {{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}},{{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L},{0x015EAD101628B1DBL,0x11237BD2169A528DL,0x37DE29D4FA212FAEL,0x13695D8BB49C45F6L}}};
        int32_t l_536[7];
        uint16_t l_538 = 0x51A5L;
        int32_t l_550[6][4] = {{(-8L),6L,1L,6L},{(-8L),6L,1L,6L},{(-8L),6L,1L,6L},{(-8L),6L,1L,6L},{(-8L),6L,1L,6L},{(-8L),6L,1L,6L}};
        uint32_t *l_580[5] = {&l_467[4],&l_467[4],&l_467[4],&l_467[4],&l_467[4]};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_122[i] = 0x12F9L;
        for (i = 0; i < 7; i++)
            l_536[i] = (-1L);
        for (l_64 = (-23); (l_64 == (-16)); l_64 = safe_add_func_int16_t_s_s(l_64, 2))
        { /* block id: 34 */
            l_75++;
        }
    }
    return l_65[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1703->g_260 p_1703->g_139 p_1703->g_130 p_1703->g_258 p_1703->g_40 p_1703->g_332 p_1703->g_66 p_1703->g_117
 * writes: p_1703->g_204 p_1703->g_139 p_1703->g_258 p_1703->g_40 p_1703->g_68 p_1703->g_333
 */
int8_t  func_82(int64_t  p_83, uint8_t  p_84, int32_t  p_85, int32_t  p_86, uint32_t  p_87, struct S0 * p_1703)
{ /* block id: 188 */
    uint8_t *l_370 = &p_1703->g_40[5];
    uint8_t **l_371 = &p_1703->g_204;
    int32_t l_372[4][3][10] = {{{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL},{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL},{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL}},{{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL},{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL},{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL}},{{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL},{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL},{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL}},{{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL},{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL},{0x5F96040AL,0x221F69BAL,9L,(-3L),0x39CCED61L,1L,0x7CCB5B1CL,0x0D9BAC5DL,0x50F9D887L,0x5F96040AL}}};
    uint32_t *l_382 = &p_1703->g_139[0][0];
    int32_t ***l_383 = (void*)0;
    int32_t l_384 = 0x17A88361L;
    int32_t l_402 = (-4L);
    int i, j, k;
    l_384 = (FAKE_DIVERGE(p_1703->group_0_offset, get_group_id(0), 10) <= ((safe_div_func_uint64_t_u_u((l_370 != ((*l_371) = &p_1703->g_40[2])), l_372[2][1][9])) && ((((p_1703->g_260 | ((((*l_382) = (safe_mul_func_uint16_t_u_u((~p_86), (safe_unary_minus_func_uint16_t_u((safe_mod_func_int32_t_s_s((safe_div_func_uint64_t_u_u(l_372[2][1][9], p_1703->g_139[2][0])), ((safe_lshift_func_int8_t_s_u(0L, 4)) , p_1703->g_130[1][7])))))))) , l_383) == (void*)0)) >= l_384) >= p_85) == 0x38BC1979L)));
    for (p_1703->g_258 = 0; (p_1703->g_258 >= (-23)); p_1703->g_258 = safe_sub_func_uint64_t_u_u(p_1703->g_258, 1))
    { /* block id: 194 */
        int32_t **l_391[3][3] = {{&p_1703->g_119,&p_1703->g_119,&p_1703->g_119},{&p_1703->g_119,&p_1703->g_119,&p_1703->g_119},{&p_1703->g_119,&p_1703->g_119,&p_1703->g_119}};
        int32_t ***l_392 = &l_391[2][2];
        uint8_t *l_393 = &p_1703->g_68;
        int64_t *l_400[3][1][4] = {{{&p_1703->g_258,&p_1703->g_333,&p_1703->g_258,&p_1703->g_258}},{{&p_1703->g_258,&p_1703->g_333,&p_1703->g_258,&p_1703->g_258}},{{&p_1703->g_258,&p_1703->g_333,&p_1703->g_258,&p_1703->g_258}}};
        int32_t l_401 = (-1L);
        int i, j, k;
        l_402 = (safe_rshift_func_uint8_t_u_s((1L | (+(safe_sub_func_int32_t_s_s((&p_1703->g_119 == ((*l_392) = l_391[2][2])), p_84)))), (((((*l_393) = ((*l_370) |= p_84)) <= (safe_add_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(((1L || ((safe_mod_func_int32_t_s_s(((p_86 != (p_83 < (p_1703->g_333 = p_1703->g_332))) > 0L), 0xC4C94D34L)) || p_85)) && p_86), p_84)), p_84))) || l_401) ^ p_1703->g_66)));
        return p_1703->g_117[2];
    }
    return p_85;
}


/* ------------------------------------------ */
/* 
 * reads : p_1703->g_67 p_1703->g_117 p_1703->g_68 p_1703->g_58 p_1703->g_66 p_1703->g_130 p_1703->g_14 p_1703->g_40 p_1703->g_209 p_1703->g_119 p_1703->g_35 p_1703->g_139 p_1703->g_187 p_1703->g_129 p_1703->g_118 p_1703->g_242 p_1703->g_243 p_1703->g_332 p_1703->g_157 p_1703->g_258 p_1703->g_260
 * writes: p_1703->g_67 p_1703->g_68 p_1703->g_58 p_1703->g_128 p_1703->g_66 p_1703->g_139 p_1703->g_157 p_1703->g_118 p_1703->g_204 p_1703->g_130 p_1703->g_119 p_1703->g_332 p_1703->g_117
 */
uint8_t  func_89(int32_t ** p_90, uint32_t  p_91, uint8_t  p_92, int64_t  p_93, struct S0 * p_1703)
{ /* block id: 46 */
    int32_t l_123[9][9] = {{(-7L),0L,3L,0x47852D38L,0x39C7346DL,0x47852D38L,3L,0L,(-7L)},{(-7L),0L,3L,0x47852D38L,0x39C7346DL,0x47852D38L,3L,0L,(-7L)},{(-7L),0L,3L,0x47852D38L,0x39C7346DL,0x47852D38L,3L,0L,(-7L)},{(-7L),0L,3L,0x47852D38L,0x39C7346DL,0x47852D38L,3L,0L,(-7L)},{(-7L),0L,3L,0x47852D38L,0x39C7346DL,0x47852D38L,3L,0L,(-7L)},{(-7L),0L,3L,0x47852D38L,0x39C7346DL,0x47852D38L,3L,0L,(-7L)},{(-7L),0L,3L,0x47852D38L,0x39C7346DL,0x47852D38L,3L,0L,(-7L)},{(-7L),0L,3L,0x47852D38L,0x39C7346DL,0x47852D38L,3L,0L,(-7L)},{(-7L),0L,3L,0x47852D38L,0x39C7346DL,0x47852D38L,3L,0L,(-7L)}};
    int32_t l_124[9] = {0x124104B6L,0x124104B6L,0x124104B6L,0x124104B6L,0x124104B6L,0x124104B6L,0x124104B6L,0x124104B6L,0x124104B6L};
    uint32_t l_142[2];
    uint8_t l_227[2];
    int32_t l_232 = (-1L);
    uint16_t *l_241 = &p_1703->g_14;
    uint64_t l_355 = 2UL;
    int i, j;
    for (i = 0; i < 2; i++)
        l_142[i] = 0x925B6B4BL;
    for (i = 0; i < 2; i++)
        l_227[i] = 0x87L;
    l_124[0] = (l_123[5][0] = 0x689909C2L);
    for (p_1703->g_67 = 3; (p_1703->g_67 >= 0); p_1703->g_67 -= 1)
    { /* block id: 51 */
        int32_t *l_125 = &l_124[0];
        int32_t *l_126 = &l_124[1];
        int32_t *l_127[2];
        int32_t l_131 = 0x4D6AA853L;
        uint16_t l_132[7] = {4UL,4UL,4UL,4UL,4UL,4UL,4UL};
        int16_t l_361 = 0x2BDEL;
        int i;
        for (i = 0; i < 2; i++)
            l_127[i] = (void*)0;
        l_132[3]--;
        for (p_1703->g_68 = 0; (p_1703->g_68 <= 8); p_1703->g_68 += 1)
        { /* block id: 55 */
            uint16_t l_135 = 1UL;
            uint16_t *l_164 = (void*)0;
            int32_t l_188 = 0x4A7C3460L;
            int32_t l_190 = 0x30A0D92CL;
            uint32_t l_228 = 0x48957202L;
            int32_t l_273 = 0x3CA9E537L;
            int32_t l_274 = 0x2070A53DL;
            int16_t l_354[3];
            int i;
            for (i = 0; i < 3; i++)
                l_354[i] = 0x73E9L;
            for (p_1703->g_58 = 8; (p_1703->g_58 >= 1); p_1703->g_58 -= 1)
            { /* block id: 58 */
                uint16_t l_155 = 0x52DEL;
                int16_t *l_156[1];
                int16_t l_159 = 0x669CL;
                int8_t *l_175[6];
                int32_t l_189 = 0x1A432A41L;
                int32_t l_233 = 1L;
                uint32_t l_235[7][6][6] = {{{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L}},{{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L}},{{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L}},{{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L}},{{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L}},{{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L}},{{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L},{0x395F33A8L,0xDD2EC191L,0xC2E8F7DCL,0xC2E8F7DCL,0xDD2EC191L,0x395F33A8L}}};
                uint16_t **l_240 = &l_164;
                int32_t l_279 = 0x2F494FBDL;
                int64_t l_330 = 8L;
                uint16_t l_335[4][7][9] = {{{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL}},{{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL}},{{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL}},{{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL},{0UL,0x9926L,0x6204L,65528UL,65533UL,9UL,7UL,0x389FL,65528UL}}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_156[i] = &p_1703->g_58;
                for (i = 0; i < 6; i++)
                    l_175[i] = (void*)0;
                for (p_1703->g_128 = 2; (p_1703->g_128 <= 8); p_1703->g_128 += 1)
                { /* block id: 61 */
                    uint16_t *l_138 = (void*)0;
                    uint16_t *l_158 = &l_132[3];
                    int32_t l_191 = 0x47F3327DL;
                    int32_t l_193[8][5] = {{(-1L),0x7507D8C8L,0x6B1D2B3CL,0x668D167BL,0x6B1D2B3CL},{(-1L),0x7507D8C8L,0x6B1D2B3CL,0x668D167BL,0x6B1D2B3CL},{(-1L),0x7507D8C8L,0x6B1D2B3CL,0x668D167BL,0x6B1D2B3CL},{(-1L),0x7507D8C8L,0x6B1D2B3CL,0x668D167BL,0x6B1D2B3CL},{(-1L),0x7507D8C8L,0x6B1D2B3CL,0x668D167BL,0x6B1D2B3CL},{(-1L),0x7507D8C8L,0x6B1D2B3CL,0x668D167BL,0x6B1D2B3CL},{(-1L),0x7507D8C8L,0x6B1D2B3CL,0x668D167BL,0x6B1D2B3CL},{(-1L),0x7507D8C8L,0x6B1D2B3CL,0x668D167BL,0x6B1D2B3CL}};
                    int32_t l_229 = (-5L);
                    int i, j;
                    for (p_1703->g_66 = 1; (p_1703->g_66 >= 0); p_1703->g_66 -= 1)
                    { /* block id: 64 */
                        int i, j;
                        l_124[p_1703->g_68] |= p_1703->g_117[p_1703->g_67];
                        l_135++;
                        return l_123[p_1703->g_58][(p_1703->g_67 + 2)];
                    }
                    if ((((p_1703->g_139[3][1] = GROUP_DIVERGE(2, 1)) && (!l_123[p_1703->g_68][p_1703->g_58])) != (((((*l_158) = ((safe_add_func_uint64_t_u_u(l_142[1], (((safe_rshift_func_int16_t_s_u((safe_add_func_uint32_t_u_u(((safe_div_func_uint32_t_u_u((safe_mod_func_int64_t_s_s((p_1703->g_66 & (safe_mod_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u((((0x1F48L == p_1703->g_130[2][0]) >= ((p_1703->g_157 = (l_155 >= ((((l_138 != l_156[0]) <= ((p_93 && 9UL) == l_123[p_1703->g_68][p_1703->g_58])) , p_1703->g_68) , 0xEB8F9188L))) | p_1703->g_117[0])) , l_135), p_1703->g_14)), l_123[p_1703->g_68][p_1703->g_58]))), p_1703->g_66)), p_92)) < p_1703->g_130[1][6]), p_91)), p_92)) , p_93) ^ p_1703->g_130[2][2]))) , 0xA7D4L)) || p_1703->g_40[1]) != p_92) || l_159)))
                    { /* block id: 72 */
                        uint16_t **l_165 = &l_158;
                        uint8_t *l_172 = &p_1703->g_40[3];
                        uint8_t *l_186[5][1];
                        int32_t l_192 = 0x5E0C9667L;
                        int32_t ***l_202 = &p_1703->g_118;
                        uint8_t **l_203[6][1][3] = {{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}}};
                        int64_t *l_226[3];
                        int32_t **l_230 = &l_127[0];
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_186[i][j] = &p_1703->g_187;
                        }
                        for (i = 0; i < 3; i++)
                            l_226[i] = (void*)0;
                        (*l_202) = p_90;
                        p_1703->g_66 = ((p_93 , &p_1703->g_68) == (p_1703->g_204 = &p_1703->g_68));
                        atomic_or(&p_1703->g_atomic_reduction[get_linear_group_id()], (safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u(((((p_1703->g_209 != (void*)0) ^ p_1703->g_66) , (((*p_90) == ((*l_230) = ((((p_1703->g_130[4][1] = (((l_193[3][0] = ((((((safe_div_func_int64_t_s_s((l_189 = (safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((l_193[3][0] ^ ((l_229 = (safe_sub_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u(((((((*l_126) = (((safe_mod_func_int16_t_s_s((((~(((l_123[7][8] >= l_188) == (safe_div_func_uint32_t_u_u((((safe_add_func_int16_t_s_s(0x4930L, ((!(l_191 = 4L)) ^ p_1703->g_35))) ^ 0x0201L) >= p_93), 0x6428253FL))) < p_92)) != GROUP_DIVERGE(2, 1)) | p_1703->g_40[4]), p_1703->g_139[1][1])) > l_227[1]) && l_228)) == GROUP_DIVERGE(1, 1)) , p_1703->g_187) < 0x0B2EL) , p_92))), p_93))) , l_159)), 5UL)), p_91))), p_1703->g_129)) , &p_92) != &p_1703->g_40[2]) , 5L) == l_159) > 255UL)) , l_158) == &p_1703->g_14)) < 0x1243610AL) ^ p_1703->g_66) , &l_193[6][0]))) , p_1703->g_129)) > p_93), 5)), p_92)) + get_linear_global_id());
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1703->v_collective += p_1703->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    }
                    else
                    { /* block id: 90 */
                        int32_t l_231 = 0x029FB855L;
                        int32_t l_234 = 0x360CACC1L;
                        --l_235[2][0][0];
                        (*p_1703->g_118) = &l_233;
                    }
                }
            }
            for (p_1703->g_332 = 0; (p_1703->g_332 <= 8); p_1703->g_332 += 1)
            { /* block id: 162 */
                int16_t *l_339 = (void*)0;
                int32_t *l_352 = &l_123[5][7];
                int32_t l_353[8];
                uint16_t **l_356 = &l_241;
                int i, j;
                for (i = 0; i < 8; i++)
                    l_353[i] = 0x02607D32L;
                (*p_1703->g_118) = (*p_1703->g_242);
                (*l_125) = (p_1703->g_117[p_1703->g_67] , (0xA5A24B328237286BL > (safe_mul_func_uint16_t_u_u(((l_339 != (void*)0) && ((l_123[p_1703->g_68][p_1703->g_332] && ((2UL == (((((void*)0 != p_90) && ((safe_rshift_func_int8_t_s_u(((safe_sub_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u((((*l_352) = (safe_sub_func_int16_t_s_s(((p_1703->g_117[p_1703->g_67] |= ((safe_rshift_func_int16_t_s_s((((safe_lshift_func_int8_t_s_u(l_123[p_1703->g_332][(p_1703->g_67 + 4)], 2)) > l_123[p_1703->g_332][(p_1703->g_67 + 2)]) <= p_1703->g_157), p_1703->g_332)) | l_123[p_1703->g_68][p_1703->g_332])) ^ 246UL), (-1L)))) , l_123[p_1703->g_332][(p_1703->g_67 + 4)]), 0x45798E5FL)), p_1703->g_258)) | l_353[2]), l_354[1])) ^ 7L)) && p_1703->g_260) >= 9L)) == p_93)) || p_91)), l_355))));
                (*l_125) = (((*l_356) = &l_135) != &l_135);
                for (l_188 = 29; (l_188 > (-19)); --l_188)
                { /* block id: 171 */
                    (*p_1703->g_118) = (*p_90);
                    if (l_355)
                        break;
                }
            }
        }
    }
    return p_1703->g_139[3][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1703->g_66 p_1703->g_35 p_1703->g_67 p_1703->g_117 p_1703->g_118
 * writes: p_1703->g_66 p_1703->g_117
 */
int32_t ** func_94(int32_t  p_95, int32_t ** p_96, int32_t ** p_97, struct S0 * p_1703)
{ /* block id: 39 */
    int64_t l_113 = (-4L);
    int32_t *l_114[7];
    int16_t *l_115 = &p_1703->g_58;
    int8_t *l_116[1][6][9] = {{{&p_1703->g_117[0],(void*)0,&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0]},{&p_1703->g_117[0],(void*)0,&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0]},{&p_1703->g_117[0],(void*)0,&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0]},{&p_1703->g_117[0],(void*)0,&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0]},{&p_1703->g_117[0],(void*)0,&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0]},{&p_1703->g_117[0],(void*)0,&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0],&p_1703->g_117[0],&p_1703->g_117[3],&p_1703->g_117[0]}}};
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_114[i] = &p_1703->g_66;
    (**p_97) &= l_113;
    p_95 |= ((**p_96) ^= (((p_1703->g_35 >= (~(l_114[6] == (void*)0))) <= (~p_1703->g_67)) != (p_1703->g_117[0] ^= ((void*)0 == l_115))));
    return p_1703->g_118;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1704;
    struct S0* p_1703 = &c_1704;
    struct S0 c_1705 = {
        65535UL, // p_1703->g_14
        {{(-1L),(-1L),1L,0x5901516EL},{(-1L),(-1L),1L,0x5901516EL},{(-1L),(-1L),1L,0x5901516EL},{(-1L),(-1L),1L,0x5901516EL}}, // p_1703->g_29
        0x79611CA4L, // p_1703->g_35
        {0UL,0xADL,0UL,0UL,0xADL,0UL}, // p_1703->g_40
        &p_1703->g_35, // p_1703->g_48
        (-5L), // p_1703->g_58
        (-9L), // p_1703->g_66
        0x73BC0E3EL, // p_1703->g_67
        0xAAL, // p_1703->g_68
        {0x19L,0x19L,0x19L,0x19L}, // p_1703->g_117
        (void*)0, // p_1703->g_119
        &p_1703->g_119, // p_1703->g_118
        1L, // p_1703->g_128
        1L, // p_1703->g_129
        {{(-3L),(-3L),0x11750CCDL,3L,0x11D30ED4L,3L,0x11750CCDL,(-3L),(-3L)},{(-3L),(-3L),0x11750CCDL,3L,0x11D30ED4L,3L,0x11750CCDL,(-3L),(-3L)},{(-3L),(-3L),0x11750CCDL,3L,0x11D30ED4L,3L,0x11750CCDL,(-3L),(-3L)},{(-3L),(-3L),0x11750CCDL,3L,0x11D30ED4L,3L,0x11750CCDL,(-3L),(-3L)},{(-3L),(-3L),0x11750CCDL,3L,0x11D30ED4L,3L,0x11750CCDL,(-3L),(-3L)}}, // p_1703->g_130
        {{0xCA1CF38BL,0xDD50FD98L},{0xCA1CF38BL,0xDD50FD98L},{0xCA1CF38BL,0xDD50FD98L},{0xCA1CF38BL,0xDD50FD98L}}, // p_1703->g_139
        0L, // p_1703->g_157
        0UL, // p_1703->g_187
        (void*)0, // p_1703->g_204
        (void*)0, // p_1703->g_210
        &p_1703->g_210, // p_1703->g_209
        (void*)0, // p_1703->g_243
        &p_1703->g_243, // p_1703->g_242
        1L, // p_1703->g_258
        0xBFAA2CB44A2E45BCL, // p_1703->g_260
        4294967290UL, // p_1703->g_268
        0x424BEAB7L, // p_1703->g_294
        4294967292UL, // p_1703->g_332
        0x342A95AF831EDEBAL, // p_1703->g_333
        &p_1703->g_157, // p_1703->g_485
        &p_1703->g_485, // p_1703->g_484
        0x7E1B8627D01C3234L, // p_1703->g_513
        0L, // p_1703->g_517
        {{&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268},{&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268},{&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268},{&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268},{&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268},{&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268},{&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268,&p_1703->g_268}}, // p_1703->g_529
        &p_1703->g_529[2][4], // p_1703->g_528
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_1703->g_541
        &p_1703->g_332, // p_1703->g_597
        &p_1703->g_597, // p_1703->g_596
        0x2006F350L, // p_1703->g_632
        &p_1703->g_513, // p_1703->g_643
        &p_1703->g_643, // p_1703->g_642
        0x3DL, // p_1703->g_654
        {0x29E0L}, // p_1703->g_668
        0x80L, // p_1703->g_672
        &p_1703->g_672, // p_1703->g_671
        &p_1703->g_671, // p_1703->g_670
        &p_1703->g_670, // p_1703->g_669
        65531UL, // p_1703->g_682
        &p_1703->g_632, // p_1703->g_753
        0x232844CD2D76A8B8L, // p_1703->g_767
        65531UL, // p_1703->g_768
        {{{&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484},{&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484},{&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484},{&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484},{&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484},{&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484,&p_1703->g_484}}}, // p_1703->g_806
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1703->g_805
        1L, // p_1703->g_930
        (void*)0, // p_1703->g_1005
        0x70EBL, // p_1703->g_1019
        {0x7EFAC2A2L,0x7EFAC2A2L,0x7EFAC2A2L,0x7EFAC2A2L,0x7EFAC2A2L,0x7EFAC2A2L,0x7EFAC2A2L,0x7EFAC2A2L}, // p_1703->g_1036
        0UL, // p_1703->g_1038
        {&p_1703->g_139[1][1],&p_1703->g_139[1][1],&p_1703->g_139[1][1],&p_1703->g_139[1][1],&p_1703->g_139[1][1],&p_1703->g_139[1][1],&p_1703->g_139[1][1],&p_1703->g_139[1][1]}, // p_1703->g_1059
        &p_1703->g_139[3][1], // p_1703->g_1060
        &p_1703->g_1038, // p_1703->g_1230
        &p_1703->g_1230, // p_1703->g_1229
        &p_1703->g_118, // p_1703->g_1293
        (-1L), // p_1703->g_1420
        {(void*)0,(void*)0,(void*)0}, // p_1703->g_1476
        {{0x09F5D6CFL},{0x09F5D6CFL}}, // p_1703->g_1537
        1UL, // p_1703->g_1642
        {&p_1703->g_117[3],&p_1703->g_117[3],&p_1703->g_117[3],&p_1703->g_117[3],&p_1703->g_117[3],&p_1703->g_117[3],&p_1703->g_117[3],&p_1703->g_117[3]}, // p_1703->g_1691
        0, // p_1703->v_collective
        sequence_input[get_global_id(0)], // p_1703->global_0_offset
        sequence_input[get_global_id(1)], // p_1703->global_1_offset
        sequence_input[get_global_id(2)], // p_1703->global_2_offset
        sequence_input[get_local_id(0)], // p_1703->local_0_offset
        sequence_input[get_local_id(1)], // p_1703->local_1_offset
        sequence_input[get_local_id(2)], // p_1703->local_2_offset
        sequence_input[get_group_id(0)], // p_1703->group_0_offset
        sequence_input[get_group_id(1)], // p_1703->group_1_offset
        sequence_input[get_group_id(2)], // p_1703->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1704 = c_1705;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1703);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1703->g_14, "p_1703->g_14", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1703->g_29[i][j], "p_1703->g_29[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1703->g_35, "p_1703->g_35", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1703->g_40[i], "p_1703->g_40[i]", print_hash_value);

    }
    transparent_crc(p_1703->g_58, "p_1703->g_58", print_hash_value);
    transparent_crc(p_1703->g_66, "p_1703->g_66", print_hash_value);
    transparent_crc(p_1703->g_67, "p_1703->g_67", print_hash_value);
    transparent_crc(p_1703->g_68, "p_1703->g_68", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1703->g_117[i], "p_1703->g_117[i]", print_hash_value);

    }
    transparent_crc(p_1703->g_128, "p_1703->g_128", print_hash_value);
    transparent_crc(p_1703->g_129, "p_1703->g_129", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1703->g_130[i][j], "p_1703->g_130[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1703->g_139[i][j], "p_1703->g_139[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1703->g_157, "p_1703->g_157", print_hash_value);
    transparent_crc(p_1703->g_187, "p_1703->g_187", print_hash_value);
    transparent_crc(p_1703->g_258, "p_1703->g_258", print_hash_value);
    transparent_crc(p_1703->g_260, "p_1703->g_260", print_hash_value);
    transparent_crc(p_1703->g_268, "p_1703->g_268", print_hash_value);
    transparent_crc(p_1703->g_294, "p_1703->g_294", print_hash_value);
    transparent_crc(p_1703->g_332, "p_1703->g_332", print_hash_value);
    transparent_crc(p_1703->g_333, "p_1703->g_333", print_hash_value);
    transparent_crc(p_1703->g_513, "p_1703->g_513", print_hash_value);
    transparent_crc(p_1703->g_517, "p_1703->g_517", print_hash_value);
    transparent_crc(p_1703->g_632, "p_1703->g_632", print_hash_value);
    transparent_crc(p_1703->g_654, "p_1703->g_654", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1703->g_668[i], "p_1703->g_668[i]", print_hash_value);

    }
    transparent_crc(p_1703->g_672, "p_1703->g_672", print_hash_value);
    transparent_crc(p_1703->g_682, "p_1703->g_682", print_hash_value);
    transparent_crc(p_1703->g_767, "p_1703->g_767", print_hash_value);
    transparent_crc(p_1703->g_768, "p_1703->g_768", print_hash_value);
    transparent_crc(p_1703->g_930, "p_1703->g_930", print_hash_value);
    transparent_crc(p_1703->g_1019, "p_1703->g_1019", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1703->g_1036[i], "p_1703->g_1036[i]", print_hash_value);

    }
    transparent_crc(p_1703->g_1038, "p_1703->g_1038", print_hash_value);
    transparent_crc(p_1703->g_1420, "p_1703->g_1420", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1703->g_1537[i][j], "p_1703->g_1537[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1703->g_1642, "p_1703->g_1642", print_hash_value);
    transparent_crc(p_1703->v_collective, "p_1703->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
