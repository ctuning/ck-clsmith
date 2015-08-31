// ---fake_divergence -g 1,1,7271 -l 1,1,1
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


// Seed: 114

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int32_t  f0;
   uint64_t  f1;
};

struct S1 {
    int32_t g_2;
    int32_t g_28[6][10];
    int32_t * volatile g_27;
    volatile int32_t g_72;
    int32_t g_73;
    int8_t g_82;
    uint32_t g_88;
    int16_t g_113[7][10][3];
    volatile int64_t g_118[2];
    int8_t g_123;
    volatile uint64_t g_126;
    int32_t * volatile g_129;
    uint32_t g_145;
    uint32_t g_148;
    int32_t g_176;
    int32_t *g_183[2][4];
    int32_t * volatile g_184;
    int32_t **g_230;
    int32_t **g_231[9];
    int32_t g_245;
    volatile int32_t g_265[6][7];
    union U0 g_283[6][1][3];
    volatile int32_t g_288;
    int32_t *g_332;
    int32_t **g_331;
    volatile uint8_t g_365;
    uint8_t g_394;
    uint8_t g_396;
    uint8_t g_400;
    uint64_t g_420;
    volatile uint16_t g_422;
    volatile uint16_t *g_421;
    int16_t g_433;
    uint64_t g_460;
    int32_t g_461;
    uint32_t g_501;
    int64_t g_527;
    uint16_t g_529[1][2];
    volatile uint64_t *g_593;
    volatile uint64_t **g_592;
    volatile uint64_t *** volatile g_594;
    uint32_t g_597;
    int64_t *g_615;
    int64_t **g_614;
    uint16_t g_644;
    uint16_t g_646;
    uint8_t *g_650;
    uint8_t **g_649[5][1][2];
    uint8_t *** volatile g_648;
    int32_t ***g_656;
    int32_t ****g_655[1];
    union U0 *g_730;
    union U0 ** volatile g_729;
    int32_t g_734;
    volatile int32_t g_739;
    int16_t * volatile *g_745;
    uint64_t **g_764;
    uint64_t ***g_763;
    volatile int32_t g_858;
    int32_t g_916;
    int32_t ***g_974[8];
    int64_t g_1020;
    int64_t g_1022;
    int32_t * volatile g_1188;
    volatile int8_t g_1273[2];
    volatile int8_t *g_1272[4];
    volatile int8_t * volatile *g_1271;
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
int32_t  func_1(struct S1 * p_1279);
int32_t * func_5(uint64_t  p_6, uint8_t  p_7, uint32_t  p_8, struct S1 * p_1279);
uint64_t  func_9(int32_t  p_10, int32_t * p_11, struct S1 * p_1279);
int32_t * func_13(int64_t  p_14, int32_t * p_15, int32_t * p_16, int64_t  p_17, int32_t  p_18, struct S1 * p_1279);
uint8_t  func_19(uint32_t  p_20, int32_t * p_21, struct S1 * p_1279);
union U0  func_24(int32_t  p_25, int32_t  p_26, struct S1 * p_1279);
int16_t  func_46(int32_t ** p_47, uint64_t  p_48, int32_t * p_49, int8_t  p_50, struct S1 * p_1279);
int32_t * func_52(uint64_t  p_53, uint8_t  p_54, struct S1 * p_1279);
uint32_t  func_55(uint16_t  p_56, uint32_t  p_57, struct S1 * p_1279);
uint8_t  func_70(int32_t * p_71, struct S1 * p_1279);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1279->g_2 p_1279->g_27 p_1279->g_28 p_1279->g_72 p_1279->g_82 p_1279->g_88 p_1279->g_126 p_1279->g_145 p_1279->g_73 p_1279->g_148 p_1279->g_184 p_1279->g_230 p_1279->g_183 p_1279->g_394 p_1279->g_421 p_1279->g_400 p_1279->g_433 p_1279->g_118 p_1279->g_113 p_1279->g_176 p_1279->g_420 p_1279->g_265 p_1279->g_245 p_1279->g_501 p_1279->g_597 p_1279->g_365 p_1279->g_123 p_1279->g_527 p_1279->g_332 p_1279->g_422 p_1279->g_614 p_1279->g_461 p_1279->g_648 p_1279->g_655 p_1279->g_396 p_1279->g_646 p_1279->g_529 p_1279->g_650 p_1279->g_729 p_1279->g_734 p_1279->g_331 p_1279->g_739 p_1279->g_745 p_1279->g_730 p_1279->g_283 p_1279->g_656 p_1279->g_593 p_1279->g_763 p_1279->g_764 p_1279->g_858 p_1279->g_916 p_1279->g_594 p_1279->g_592 p_1279->g_644 p_1279->g_460 p_1279->g_283.f0 p_1279->g_615 p_1279->g_1020 p_1279->g_1188 p_1279->g_1022 p_1279->g_1271
 * writes: p_1279->g_2 p_1279->g_28 p_1279->g_73 p_1279->g_82 p_1279->g_88 p_1279->g_126 p_1279->g_123 p_1279->g_145 p_1279->g_148 p_1279->g_113 p_1279->g_183 p_1279->g_420 p_1279->g_460 p_1279->g_461 p_1279->g_72 p_1279->g_597 p_1279->g_614 p_1279->g_396 p_1279->g_176 p_1279->g_529 p_1279->g_644 p_1279->g_646 p_1279->g_649 p_1279->g_231 p_1279->g_245 p_1279->g_730 p_1279->g_433 p_1279->g_501 p_1279->g_394 p_1279->g_400 p_1279->g_734 p_1279->g_916 p_1279->g_655 p_1279->g_974 p_1279->g_1020 p_1279->g_527 p_1279->g_1022 p_1279->g_332
 */
int32_t  func_1(struct S1 * p_1279)
{ /* block id: 4 */
    int8_t l_22 = 0x57L;
    int32_t *l_733 = &p_1279->g_73;
    union U0 *l_756 = &p_1279->g_283[4][0][1];
    uint64_t ***l_765 = &p_1279->g_764;
    uint8_t l_786 = 0UL;
    uint8_t l_787[2];
    uint64_t l_816 = 18446744073709551615UL;
    int8_t l_822[1][4][10] = {{{9L,5L,4L,0x46L,0x00L,9L,0x46L,0x09L,0x46L,9L},{9L,5L,4L,0x46L,0x00L,9L,0x46L,0x09L,0x46L,9L},{9L,5L,4L,0x46L,0x00L,9L,0x46L,0x09L,0x46L,9L},{9L,5L,4L,0x46L,0x00L,9L,0x46L,0x09L,0x46L,9L}}};
    int32_t l_836 = (-10L);
    int32_t l_837 = (-9L);
    int32_t l_840 = 0L;
    int32_t l_841 = 0x7E40089EL;
    uint64_t l_920 = 18446744073709551608UL;
    int32_t ***l_944 = &p_1279->g_331;
    int16_t l_994 = 0x66FDL;
    int32_t l_1090 = (-5L);
    uint32_t l_1161 = 0UL;
    int32_t l_1189 = 0x5418F4A3L;
    int32_t l_1203[9][8][2] = {{{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L}},{{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L}},{{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L}},{{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L}},{{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L}},{{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L}},{{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L}},{{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L}},{{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L},{0x24C66764L,1L}}};
    uint8_t l_1205 = 255UL;
    uint64_t l_1268 = 0x22800DBCD526120DL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_787[i] = 0xC3L;
    for (p_1279->g_2 = (-3); (p_1279->g_2 <= 13); p_1279->g_2 = safe_add_func_uint64_t_u_u(p_1279->g_2, 3))
    { /* block id: 7 */
        int16_t l_12 = 1L;
        int32_t **l_30 = (void*)0;
        int32_t *l_32 = &p_1279->g_28[0][3];
        int32_t **l_31 = &l_32;
        (*p_1279->g_230) = func_5(func_9(l_12, func_13((func_19(l_22, &p_1279->g_2, p_1279) >= (((*l_31) = ((func_24(l_22, p_1279->g_2, p_1279) , (l_12 , func_24(l_22, l_12, p_1279))) , (void*)0)) == (void*)0)), &p_1279->g_2, &p_1279->g_2, l_22, p_1279->g_2, p_1279), p_1279), (*p_1279->g_650), p_1279->g_433, p_1279);
        (*p_1279->g_729) = &p_1279->g_283[5][0][1];
        (*p_1279->g_184) |= 0L;
        (*l_31) = ((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1279->group_1_offset, get_group_id(1), 10), (*p_1279->g_27))) , func_52((l_733 == (void*)0), p_1279->g_734, p_1279));
    }
    if ((0x1196B8D39A8A45B0L ^ ((*l_733) | ((safe_rshift_func_int16_t_s_u((((**p_1279->g_331) = 0x33F5396CL) , p_1279->g_529[0][1]), (safe_sub_func_int8_t_s_s(p_1279->g_739, ((((((~p_1279->g_461) && ((safe_add_func_int8_t_s_s((*l_733), (safe_unary_minus_func_int8_t_s(p_1279->g_420)))) , (((safe_lshift_func_uint8_t_u_s((((((0x479D7D6CL | FAKE_DIVERGE(p_1279->global_1_offset, get_global_id(1), 10)) , p_1279->g_745) != p_1279->g_745) >= p_1279->g_501) >= (*l_733)), 6)) , (*l_733)) >= (-1L)))) || (*l_733)) , (*l_733)) && 4L) < (*l_733)))))) , p_1279->g_433))))
    { /* block id: 366 */
        int32_t l_748[3];
        union U0 **l_755[2];
        int32_t *l_757 = &p_1279->g_176;
        int i;
        for (i = 0; i < 3; i++)
            l_748[i] = 0x7CB82F9DL;
        for (i = 0; i < 2; i++)
            l_755[i] = (void*)0;
        l_756 = ((2UL > ((safe_mul_func_int8_t_s_s((l_748[0] | p_1279->g_501), l_748[0])) | ((safe_lshift_func_int16_t_s_u((l_748[2] <= (l_748[0] >= ((*l_733) && (safe_div_func_uint16_t_u_u((((*p_1279->g_730) , ((safe_add_func_uint16_t_u_u(0UL, (*l_733))) >= (*l_733))) ^ (*l_733)), 0x6372L))))), 15)) , FAKE_DIVERGE(p_1279->global_0_offset, get_global_id(0), 10)))) , (void*)0);
        (**p_1279->g_656) = l_757;
    }
    else
    { /* block id: 369 */
        uint32_t *l_760 = &p_1279->g_597;
        uint16_t *l_772 = &p_1279->g_529[0][1];
        int32_t l_788 = 0x0DB42666L;
        int16_t *l_789 = &p_1279->g_433;
        uint32_t *l_790 = (void*)0;
        int64_t l_791 = 0L;
        int16_t l_792[4] = {(-5L),(-5L),(-5L),(-5L)};
        int32_t l_793 = 0x312676F8L;
        uint8_t *l_821 = &p_1279->g_400;
        int32_t l_838 = 0x3587633AL;
        int32_t l_839[1];
        uint64_t ***l_864 = &p_1279->g_764;
        int32_t l_865 = 9L;
        int8_t *l_943 = &l_22;
        int32_t ***l_945 = &p_1279->g_331;
        uint64_t *l_946 = &l_816;
        int64_t l_995 = 7L;
        int32_t ***l_1004 = &p_1279->g_230;
        int32_t *l_1274 = &p_1279->g_245;
        uint16_t l_1276[4][10][1] = {{{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL}},{{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL}},{{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL}},{{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_839[i] = 0x582A2AECL;
        l_793 |= ((((((safe_mul_func_int8_t_s_s(((*l_733) | ((*p_1279->g_593) == ((((*l_760)--) , (((((((l_765 = p_1279->g_763) != ((l_788 = (safe_mul_func_int8_t_s_s(((safe_sub_func_int64_t_s_s((safe_mul_func_uint16_t_u_u(((*l_772) = 3UL), (safe_lshift_func_uint8_t_u_s((((safe_unary_minus_func_uint32_t_u((p_1279->g_501 = ((safe_add_func_int16_t_s_s(0L, ((*l_789) = (safe_sub_func_int16_t_s_s((safe_mod_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((*l_733) > (safe_sub_func_uint32_t_u_u(l_786, (((*p_1279->g_763) == (void*)0) , (*l_733))))), p_1279->g_148)), l_787[1])), l_788))))) >= 1L)))) || l_788) >= l_788), 1)))), 18446744073709551614UL)) , 0L), l_791))) , (void*)0)) >= (-2L)) || (*p_1279->g_650)) < (*l_733)) || 1L) < l_791)) <= GROUP_DIVERGE(1, 1)))), 0x2AL)) , p_1279->g_118[1]) , 0x6AL) >= 0UL) , (*p_1279->g_593)) != l_792[2]);
        for (p_1279->g_123 = 0; (p_1279->g_123 > 23); p_1279->g_123 = safe_add_func_uint64_t_u_u(p_1279->g_123, 8))
        { /* block id: 379 */
            uint32_t **l_796 = &l_790;
            uint32_t ***l_797 = &l_796;
            int32_t l_798[2][7] = {{1L,0x25315789L,1L,1L,0x25315789L,1L,1L},{1L,0x25315789L,1L,1L,0x25315789L,1L,1L}};
            uint8_t *l_820 = (void*)0;
            uint64_t l_843 = 18446744073709551615UL;
            int32_t l_880 = 0x67B03C84L;
            uint32_t l_884 = 0x09202BACL;
            uint32_t l_892 = 0x6C99318BL;
            int i, j;
            (*l_733) ^= (0x46B2BC65L > (&l_790 == ((*l_797) = l_796)));
            if (l_798[0][3])
                break;
            for (p_1279->g_394 = (-23); (p_1279->g_394 > 21); p_1279->g_394 = safe_add_func_int8_t_s_s(p_1279->g_394, 9))
            { /* block id: 385 */
                uint32_t *l_805 = &p_1279->g_148;
                uint8_t *l_817 = &p_1279->g_396;
                int32_t l_835 = 1L;
                int32_t l_842 = 0x25F3AE1FL;
                int32_t l_915 = 0L;
                if (((safe_sub_func_uint32_t_u_u(0UL, (((4294967286UL ^ (safe_rshift_func_uint16_t_u_u(((*l_772) ^= ((((*l_733) = (((++(*l_805)) , func_52((safe_sub_func_int8_t_s_s(l_793, (safe_mod_func_int16_t_s_s((((*l_817) |= (safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (safe_mul_func_uint8_t_u_u(((*p_1279->g_650) = 0x0DL), ((0xEE4EBA93F03F5675L ^ l_816) != 0x2D241AD7ED82A87DL)))))) && (((((safe_add_func_int64_t_s_s((p_1279->g_734 , (((0x63L != l_798[0][5]) , l_820) == l_821)), 0xE6FEF77287CA7439L)) == l_791) < l_798[1][6]) , (-1L)) ^ l_798[1][0])), GROUP_DIVERGE(0, 1))))), l_798[0][3], p_1279)) != (void*)0)) , l_822[0][2][2]) | 8UL)), (*p_1279->g_421)))) != p_1279->g_433) <= 0x1A8A9FC5L))) <= l_798[0][6]))
                { /* block id: 391 */
                    int32_t *l_827 = (void*)0;
                    int32_t *l_828 = &p_1279->g_461;
                    int32_t *l_829 = &l_798[0][6];
                    int32_t *l_830 = &l_788;
                    int32_t *l_831 = &l_788;
                    int32_t *l_832 = &p_1279->g_734;
                    int32_t *l_833 = (void*)0;
                    int32_t *l_834[8];
                    int8_t *l_861 = &l_822[0][0][8];
                    uint32_t *l_866 = &p_1279->g_501;
                    int32_t *l_867 = (void*)0;
                    int i;
                    for (i = 0; i < 8; i++)
                        l_834[i] = &p_1279->g_73;
                    for (p_1279->g_145 = (-24); (p_1279->g_145 > 13); p_1279->g_145++)
                    { /* block id: 394 */
                        (**p_1279->g_656) = l_733;
                        (*l_733) = (safe_sub_func_uint16_t_u_u((l_733 == (**p_1279->g_656)), (+p_1279->g_734)));
                    }
                    l_843--;
                    (*l_832) = ((safe_mul_func_int8_t_s_s((((safe_rshift_func_int8_t_s_u(((safe_sub_func_uint32_t_u_u(l_839[0], ((*l_866) |= (safe_mul_func_uint16_t_u_u((((*l_772) ^= ((safe_add_func_int64_t_s_s(l_838, (safe_mod_func_uint32_t_u_u(0xA099D614L, p_1279->g_858)))) < (safe_lshift_func_int8_t_s_u(((*l_861) = (-4L)), (*l_733))))) & (((((*l_805) = ((((0x0B45FC35L == (safe_sub_func_int32_t_s_s(((void*)0 != l_864), l_865))) , (-1L)) ^ p_1279->g_113[4][0][1]) >= l_792[2])) > (*l_733)) , 0x23L) != (*l_831))), 4L))))) < p_1279->g_597), 0)) , (void*)0) == p_1279->g_745), l_842)) | 1UL);
                    (*p_1279->g_230) = l_867;
                }
                else
                { /* block id: 405 */
                    int64_t *l_883 = &l_791;
                    uint16_t *l_887 = &p_1279->g_646;
                    int32_t l_895 = 0x43CB2DA0L;
                    int16_t l_917 = 0x19CCL;
                    if (((*p_1279->g_27) = (0x425BBFACL != (l_838 |= ((((*p_1279->g_421) >= 65535UL) || (((((*l_733) = ((p_1279->g_529[0][1] | (safe_lshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1279->group_1_offset, get_group_id(1), 10), (safe_mul_func_int8_t_s_s(((((*l_883) = (safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((((*l_789) = 0x19BDL) < GROUP_DIVERGE(2, 1)), 8)), ((*l_733) < (((l_880 , l_792[2]) >= (safe_div_func_uint16_t_u_u((*p_1279->g_421), l_839[0]))) , 8L))))) || 0L) <= 0x74415A4EL), l_884)))), p_1279->g_461)), 4))) > 0x5661223DL)) >= p_1279->g_529[0][0]) >= 0x37F3L) || 1L)) > 0L)))))
                    { /* block id: 411 */
                        (*l_733) &= 0L;
                        if ((*l_733))
                            break;
                        l_895 = ((65535UL & ((((1L | (safe_mod_func_uint8_t_u_u((&p_1279->g_529[0][1] == l_887), (safe_lshift_func_uint8_t_u_u(l_835, 4))))) > ((safe_mul_func_uint8_t_u_u(l_892, (((void*)0 == &p_1279->g_858) & ((safe_lshift_func_int8_t_s_s(l_798[0][3], 4)) & 18446744073709551606UL)))) , p_1279->g_527)) > l_798[0][3]) <= (*p_1279->g_421))) , l_842);
                    }
                    else
                    { /* block id: 415 */
                        uint32_t l_898 = 0xCE9F89EAL;
                        int16_t **l_905 = &l_789;
                        l_788 = (l_842 = ((safe_mul_func_uint16_t_u_u((l_898 >= l_839[0]), ((-1L) | ((l_898 == (l_842 > (safe_sub_func_int8_t_s_s((safe_add_func_uint32_t_u_u((+(safe_mod_func_uint8_t_u_u(((*p_1279->g_650) &= ((void*)0 != l_905)), (safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u(((safe_sub_func_uint8_t_u_u((safe_add_func_int8_t_s_s((safe_unary_minus_func_int64_t_s((((*p_1279->g_421) <= (0xB25B414035EAE069L >= l_915)) && p_1279->g_420))), 0x20L)), l_898)) || 0x3EL), 4)), p_1279->g_916))))), l_898)), 0x23L)))) != l_915)))) <= p_1279->g_245));
                        if (l_917)
                            continue;
                        if ((*p_1279->g_27))
                            continue;
                        (**p_1279->g_656) = &l_841;
                    }
                }
                if ((*p_1279->g_27))
                    break;
            }
            for (l_838 = 0; (l_838 < 18); ++l_838)
            { /* block id: 428 */
                l_920--;
            }
        }
        (*p_1279->g_230) = func_13((safe_div_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((l_788 , &p_1279->g_656) == &p_1279->g_656), (safe_lshift_func_int16_t_s_u((safe_mod_func_uint16_t_u_u((65531UL && l_792[2]), (p_1279->g_644 ^= (safe_mod_func_int16_t_s_s((safe_sub_func_int32_t_s_s((safe_lshift_func_int16_t_s_u((*l_733), ((*l_772) &= (safe_mul_func_int16_t_s_s((l_791 || (((safe_rshift_func_uint8_t_u_u(l_788, 4)) , (((*l_946) = ((((safe_rshift_func_uint16_t_u_u(((((*l_943) = 3L) <= l_791) < l_839[0]), 13)) || (*l_733)) , l_944) == l_945)) == (***p_1279->g_594))) <= l_792[2])), 2L))))), l_792[0])), p_1279->g_113[0][4][2]))))), 1)))), 0xED35L)), &l_839[0], &l_839[0], p_1279->g_400, (*l_733), p_1279);
        if ((((((p_1279->g_916 > (((*l_733) , ((p_1279->g_113[0][4][2] | ((*p_1279->g_27) || ((*l_733) , (*l_733)))) , ((*l_733) , (safe_rshift_func_int16_t_s_u(((*p_1279->g_593) , l_865), 8))))) & (*l_733))) , (*l_733)) , (*l_733)) || (*l_733)) , l_865))
        { /* block id: 437 */
            int16_t *l_965 = (void*)0;
            int32_t l_966 = 0x3DCB70D6L;
            int32_t l_988 = 0x09DAB33FL;
            int32_t l_997 = 8L;
            uint32_t l_1027 = 1UL;
            uint64_t *l_1061 = &l_920;
            uint32_t l_1127 = 0x711B4BDFL;
            int64_t *l_1139 = &p_1279->g_527;
            union U0 *l_1140 = &p_1279->g_283[4][0][2];
            union U0 **l_1141 = (void*)0;
            union U0 **l_1142 = &p_1279->g_730;
            uint8_t l_1143 = 0xC0L;
            uint64_t ***l_1166 = &p_1279->g_764;
            int8_t l_1202 = 0x79L;
            int16_t l_1204 = 0x38E2L;
            for (p_1279->g_916 = 0; (p_1279->g_916 <= 0); p_1279->g_916 += 1)
            { /* block id: 440 */
                uint64_t l_964 = 3UL;
                int32_t *l_977 = &l_793;
                int32_t l_986 = (-1L);
                int32_t l_993 = 0x43342007L;
                int32_t l_996 = (-1L);
                int32_t l_998 = (-3L);
                int32_t *l_1023 = &l_997;
                int32_t *l_1024 = &l_788;
                int32_t *l_1025 = &l_838;
                int32_t *l_1026[8][10] = {{&l_988,&l_841,&l_838,(void*)0,&l_841,(void*)0,&l_838,&l_841,&l_988,&l_988},{&l_988,&l_841,&l_838,(void*)0,&l_841,(void*)0,&l_838,&l_841,&l_988,&l_988},{&l_988,&l_841,&l_838,(void*)0,&l_841,(void*)0,&l_838,&l_841,&l_988,&l_988},{&l_988,&l_841,&l_838,(void*)0,&l_841,(void*)0,&l_838,&l_841,&l_988,&l_988},{&l_988,&l_841,&l_838,(void*)0,&l_841,(void*)0,&l_838,&l_841,&l_988,&l_988},{&l_988,&l_841,&l_838,(void*)0,&l_841,(void*)0,&l_838,&l_841,&l_988,&l_988},{&l_988,&l_841,&l_838,(void*)0,&l_841,(void*)0,&l_838,&l_841,&l_988,&l_988},{&l_988,&l_841,&l_838,(void*)0,&l_841,(void*)0,&l_838,&l_841,&l_988,&l_988}};
                int8_t l_1126 = 4L;
                int i, j;
                for (p_1279->g_394 = 0; (p_1279->g_394 <= 0); p_1279->g_394 += 1)
                { /* block id: 443 */
                    uint16_t *l_959 = &p_1279->g_646;
                    uint16_t *l_962[4][5][7] = {{{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]}},{{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]}},{{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]}},{{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]},{&p_1279->g_644,&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_529[p_1279->g_394][p_1279->g_394],&p_1279->g_529[0][1],&p_1279->g_529[0][1]}}};
                    int32_t l_963 = (-7L);
                    uint32_t l_969 = 0x5DF0B8E7L;
                    int32_t ****l_972 = &l_945;
                    int32_t ****l_973[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i, j, k;
                    l_966 &= (safe_mod_func_uint64_t_u_u(((safe_div_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(p_1279->g_529[p_1279->g_394][p_1279->g_394], 3)), (safe_add_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u(((*l_959)++), (l_963 = 1UL))), ((~p_1279->g_529[p_1279->g_394][p_1279->g_394]) ^ ((*p_1279->g_650) >= 0UL)))))) , (((((*l_733) != (l_964 > ((*p_1279->g_593) <= (((-3L) != p_1279->g_501) || (*l_733))))) , l_965) != &p_1279->g_113[0][4][2]) >= p_1279->g_113[0][2][0])), (*l_733)));
                    l_963 = (safe_sub_func_uint64_t_u_u(l_969, (((p_1279->g_655[p_1279->g_916] = &p_1279->g_656) == (p_1279->g_460 , (void*)0)) && ((safe_mul_func_int8_t_s_s((l_839[0] = 0x18L), 0xA5L)) & ((((*l_972) = &p_1279->g_331) != (p_1279->g_974[5] = (void*)0)) >= (safe_sub_func_int8_t_s_s(l_865, 0xE1L)))))));
                    (*p_1279->g_230) = l_977;
                }
                for (l_816 = 0; (l_816 <= 0); l_816 += 1)
                { /* block id: 456 */
                    int32_t l_987 = 0x4761AFB7L;
                    int32_t l_989 = 0x425C0B52L;
                    int32_t l_990 = 0x5FB6348AL;
                    int32_t l_991[8];
                    int32_t l_992 = 0L;
                    uint32_t l_999 = 0xCBD20658L;
                    int i, j;
                    for (i = 0; i < 8; i++)
                        l_991[i] = 9L;
                    if (p_1279->g_529[l_816][(p_1279->g_916 + 1)])
                    { /* block id: 457 */
                        int i, j;
                        if (p_1279->g_529[l_816][(l_816 + 1)])
                            break;
                    }
                    else
                    { /* block id: 459 */
                        int32_t *l_978 = &l_839[0];
                        int32_t *l_979 = &l_840;
                        int32_t *l_980 = (void*)0;
                        int32_t *l_981 = &p_1279->g_176;
                        int32_t *l_982 = (void*)0;
                        int32_t *l_983 = &p_1279->g_734;
                        int32_t *l_984 = (void*)0;
                        int32_t *l_985[6] = {&p_1279->g_176,&p_1279->g_176,&p_1279->g_176,&p_1279->g_176,&p_1279->g_176,&p_1279->g_176};
                        uint32_t l_1019[9][8] = {{0x13530888L,5UL,4294967291UL,0xA8F3DFFBL,9UL,4294967290UL,0x66E9A8B5L,2UL},{0x13530888L,5UL,4294967291UL,0xA8F3DFFBL,9UL,4294967290UL,0x66E9A8B5L,2UL},{0x13530888L,5UL,4294967291UL,0xA8F3DFFBL,9UL,4294967290UL,0x66E9A8B5L,2UL},{0x13530888L,5UL,4294967291UL,0xA8F3DFFBL,9UL,4294967290UL,0x66E9A8B5L,2UL},{0x13530888L,5UL,4294967291UL,0xA8F3DFFBL,9UL,4294967290UL,0x66E9A8B5L,2UL},{0x13530888L,5UL,4294967291UL,0xA8F3DFFBL,9UL,4294967290UL,0x66E9A8B5L,2UL},{0x13530888L,5UL,4294967291UL,0xA8F3DFFBL,9UL,4294967290UL,0x66E9A8B5L,2UL},{0x13530888L,5UL,4294967291UL,0xA8F3DFFBL,9UL,4294967290UL,0x66E9A8B5L,2UL},{0x13530888L,5UL,4294967291UL,0xA8F3DFFBL,9UL,4294967290UL,0x66E9A8B5L,2UL}};
                        int64_t *l_1021[4];
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_1021[i] = &l_791;
                        l_999++;
                        if (l_839[p_1279->g_916])
                            break;
                        (*l_983) ^= ((safe_add_func_int32_t_s_s((0x46L && ((p_1279->g_73 , (&p_1279->g_597 == (void*)0)) & ((p_1279->g_1022 = (p_1279->g_527 = ((0x3209D5FE7A987422L | ((void*)0 == l_1004)) <= (((((safe_sub_func_int64_t_s_s(((p_1279->g_1020 = ((*l_760) = (safe_mul_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u((safe_add_func_int16_t_s_s(((*l_789) = ((safe_mul_func_uint16_t_u_u((*l_733), ((((safe_div_func_int32_t_s_s((*p_1279->g_184), GROUP_DIVERGE(0, 1))) , 7UL) <= (*l_733)) == l_1019[5][2]))) || p_1279->g_597)), (*l_977))), GROUP_DIVERGE(2, 1))), 4)) > 1UL), GROUP_DIVERGE(0, 1))))) , l_966), 0x5BA597F95C4CFB84L)) >= 1UL) >= (*l_733)) < (*p_1279->g_650)) != p_1279->g_644)))) & p_1279->g_176))), (*l_733))) <= 2L);
                    }
                    if ((*l_977))
                        break;
                    for (l_987 = 0; (l_987 <= 0); l_987 += 1)
                    { /* block id: 472 */
                        (*l_977) |= l_997;
                    }
                }
                if ((*l_977))
                    break;
                ++l_1027;
                for (l_793 = 0; (l_793 >= 0); l_793 -= 1)
                { /* block id: 480 */
                    int64_t l_1089 = 0x48433A433A50631EL;
                    int32_t l_1125 = 0x366515D9L;
                    int i, j;
                    if ((safe_add_func_int8_t_s_s(((*l_943) = 0x71L), (p_1279->g_529[p_1279->g_916][l_793] > 0x3B99L))))
                    { /* block id: 482 */
                        uint32_t *l_1054 = &l_1027;
                        int32_t l_1062 = 0x697206A4L;
                        int64_t *l_1063 = &l_995;
                        (*l_1023) &= (l_988 |= (l_1062 = (safe_lshift_func_int8_t_s_s(((*l_943) = (safe_div_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((((***l_944) = (safe_sub_func_int64_t_s_s((+p_1279->g_646), (p_1279->g_858 < (safe_rshift_func_uint16_t_u_u((253UL || (safe_mul_func_uint16_t_u_u(l_966, (p_1279->g_245 & ((*l_1063) |= ((((*p_1279->g_650)--) , ((*l_1024) = (p_1279->g_646 && ((safe_add_func_uint32_t_u_u((safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((safe_sub_func_uint32_t_u_u((--(*l_1054)), (((safe_mul_func_uint16_t_u_u(p_1279->g_400, ((safe_sub_func_uint8_t_u_u(((*p_1279->g_592) == l_1061), 9UL)) , 0x19EBL))) , p_1279->g_176) == (-1L)))) , (*p_1279->g_650)))), p_1279->g_529[p_1279->g_916][l_793])) , l_1062)))) | (*l_733))))))), FAKE_DIVERGE(p_1279->local_2_offset, get_local_id(2), 10))))))) , 0x3DF743ADDB695B69L), l_1062)), (*l_733))), p_1279->g_644))), p_1279->g_88))));
                        if (p_1279->g_529[p_1279->g_916][l_793])
                            continue;
                        (*l_1023) |= (GROUP_DIVERGE(0, 1) == 6UL);
                    }
                    else
                    { /* block id: 494 */
                        int32_t **l_1064 = &l_1026[4][0];
                        (*l_1064) = ((**p_1279->g_656) = &l_841);
                    }
                    for (p_1279->g_646 = 0; (p_1279->g_646 <= 0); p_1279->g_646 += 1)
                    { /* block id: 500 */
                        int32_t l_1091 = 0x497A3E8BL;
                        int8_t *l_1092 = (void*)0;
                        int8_t *l_1093[6][4] = {{&l_822[0][2][2],&l_822[0][3][5],&l_822[0][2][2],&l_822[0][2][2]},{&l_822[0][2][2],&l_822[0][3][5],&l_822[0][2][2],&l_822[0][2][2]},{&l_822[0][2][2],&l_822[0][3][5],&l_822[0][2][2],&l_822[0][2][2]},{&l_822[0][2][2],&l_822[0][3][5],&l_822[0][2][2],&l_822[0][2][2]},{&l_822[0][2][2],&l_822[0][3][5],&l_822[0][2][2],&l_822[0][2][2]},{&l_822[0][2][2],&l_822[0][3][5],&l_822[0][2][2],&l_822[0][2][2]}};
                        int i, j;
                        if ((*p_1279->g_184))
                            break;
                        (*l_1024) &= (safe_add_func_int8_t_s_s((p_1279->g_82 &= (((safe_add_func_uint16_t_u_u(((*l_733) , (safe_div_func_int8_t_s_s(((((safe_sub_func_int8_t_s_s(((*l_943) = (safe_add_func_uint32_t_u_u((safe_add_func_int16_t_s_s((safe_add_func_int64_t_s_s(((p_1279->g_529[p_1279->g_646][(l_793 + 1)] = (*p_1279->g_421)) && ((safe_div_func_int32_t_s_s(((((((0x75BEL <= (*l_733)) < p_1279->g_529[0][1]) & (safe_mod_func_uint16_t_u_u((*l_733), (*l_1025)))) | l_966) || (safe_mul_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((((***l_945) = p_1279->g_529[p_1279->g_916][l_793]) , (*p_1279->g_421)) & 1L), l_1089)), GROUP_DIVERGE(0, 1))) ^ p_1279->g_529[p_1279->g_916][l_793]), p_1279->g_113[0][0][2]))) <= p_1279->g_529[p_1279->g_916][l_793]), (*l_977))) , GROUP_DIVERGE(1, 1))), p_1279->g_88)), FAKE_DIVERGE(p_1279->group_2_offset, get_group_id(2), 10))), (*l_977)))), 0L)) < l_966) & l_1090) | 4UL), 1L))), l_1091)) < p_1279->g_145) == l_997)), 0x18L));
                    }
                    l_1125 = ((((safe_lshift_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(p_1279->g_529[p_1279->g_916][l_793], (safe_div_func_uint16_t_u_u(((*l_733) & ((((**p_1279->g_592) | ((l_1027 , ((safe_div_func_int32_t_s_s((safe_lshift_func_int16_t_s_u((safe_unary_minus_func_int64_t_s(((*l_733) <= ((safe_mul_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((safe_add_func_int64_t_s_s(((p_1279->g_529[p_1279->g_916][l_793] || (safe_lshift_func_uint8_t_u_u(((*p_1279->g_650) = (safe_add_func_int64_t_s_s(((safe_div_func_int64_t_s_s((safe_mul_func_int16_t_s_s(0L, (safe_lshift_func_int8_t_s_u(p_1279->g_433, (*p_1279->g_650))))), FAKE_DIVERGE(p_1279->global_0_offset, get_global_id(0), 10))) != l_1089), FAKE_DIVERGE(p_1279->global_0_offset, get_global_id(0), 10)))), 5))) ^ (*l_733)), (*l_1023))) > 0UL), p_1279->g_283[2][0][1].f0)), (*l_1024))) >= FAKE_DIVERGE(p_1279->global_2_offset, get_global_id(2), 10))))), p_1279->g_123)), (*l_733))) != p_1279->g_123)) != 8UL)) >= p_1279->g_28[0][3]) <= p_1279->g_73)), p_1279->g_28[0][3])))), GROUP_DIVERGE(1, 1))) <= p_1279->g_529[0][1]) != p_1279->g_88) >= 0x70EBE93AD0C20B02L);
                    ++l_1127;
                }
            }
            if (((safe_rshift_func_uint8_t_u_s((safe_mod_func_uint32_t_u_u(4294967293UL, ((((((l_988 >= ((*l_733) , (((*l_821)--) >= (safe_unary_minus_func_uint32_t_u((((*l_756) , l_756) == ((*l_1142) = (((*l_1139) = (((l_997 = ((((safe_add_func_int32_t_s_s((*p_1279->g_27), 0x85AE4297L)) <= ((*p_1279->g_614) == (void*)0)) != (*l_733)) || 0x6EA87B35EAE585D9L)) <= 4294967295UL) , l_966)) , l_1140)))))))) , (*l_733)) || (-1L)) , (void*)0) == (void*)0) || l_1143))), p_1279->g_1020)) && (*l_733)))
            { /* block id: 517 */
                int32_t l_1149[10] = {0x7F71B822L,0x3CB194D1L,0x45FA7DAAL,0x3CB194D1L,0x7F71B822L,0x7F71B822L,0x3CB194D1L,0x45FA7DAAL,0x3CB194D1L,0x7F71B822L};
                int16_t l_1154 = (-3L);
                union U0 l_1164 = {7L};
                int16_t l_1186 = 0x5234L;
                int i;
                for (l_793 = 2; (l_793 <= 7); l_793 += 1)
                { /* block id: 520 */
                    int32_t *l_1144 = &l_966;
                    int32_t *l_1145 = &l_788;
                    int32_t *l_1146 = &l_839[0];
                    int32_t *l_1147 = &l_966;
                    int32_t *l_1148[6][9] = {{(void*)0,&l_840,&l_839[0],&p_1279->g_28[2][9],&p_1279->g_28[0][3],&p_1279->g_28[0][3],&p_1279->g_28[2][9],&l_839[0],&l_840},{(void*)0,&l_840,&l_839[0],&p_1279->g_28[2][9],&p_1279->g_28[0][3],&p_1279->g_28[0][3],&p_1279->g_28[2][9],&l_839[0],&l_840},{(void*)0,&l_840,&l_839[0],&p_1279->g_28[2][9],&p_1279->g_28[0][3],&p_1279->g_28[0][3],&p_1279->g_28[2][9],&l_839[0],&l_840},{(void*)0,&l_840,&l_839[0],&p_1279->g_28[2][9],&p_1279->g_28[0][3],&p_1279->g_28[0][3],&p_1279->g_28[2][9],&l_839[0],&l_840},{(void*)0,&l_840,&l_839[0],&p_1279->g_28[2][9],&p_1279->g_28[0][3],&p_1279->g_28[0][3],&p_1279->g_28[2][9],&l_839[0],&l_840},{(void*)0,&l_840,&l_839[0],&p_1279->g_28[2][9],&p_1279->g_28[0][3],&p_1279->g_28[0][3],&p_1279->g_28[2][9],&l_839[0],&l_840}};
                    int32_t l_1150[8] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
                    uint16_t l_1151 = 0x0BB2L;
                    uint32_t l_1179 = 2UL;
                    int i, j;
                    l_1151--;
                }
            }
            else
            { /* block id: 545 */
                uint8_t l_1187 = 0xA9L;
                return l_1187;
            }
            (*p_1279->g_1188) |= (*l_733);
            (*l_733) = (l_1027 > ((((*p_1279->g_230) = (**p_1279->g_656)) == ((!((((l_1189 <= (((((0x57476B462F4713B9L == (safe_sub_func_int16_t_s_s((safe_sub_func_int64_t_s_s((((((((safe_div_func_int16_t_s_s((safe_rshift_func_int8_t_s_u((l_997 || (safe_sub_func_int32_t_s_s(((safe_div_func_uint16_t_u_u(0xB2A8L, (*p_1279->g_421))) , ((!((p_1279->g_400 >= l_988) > l_1202)) >= (*p_1279->g_593))), l_1203[7][7][0]))), 4)), (*l_733))) , 0L) <= (*l_733)) & (*l_733)) , (*p_1279->g_730)) , p_1279->g_644) & 0x2B06E36BL), (*l_733))), l_1202))) & p_1279->g_646) <= (*l_733)) || 0x5A53D6F9C07A40A1L) < p_1279->g_283[2][0][1].f0)) != l_1204) > l_1205) ^ p_1279->g_644)) , &l_788)) & (*l_733)));
        }
        else
        { /* block id: 551 */
            int8_t l_1208 = 3L;
            uint16_t *l_1221 = &p_1279->g_644;
            int32_t *l_1224 = &p_1279->g_2;
            uint32_t l_1257[9][5][1] = {{{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L}},{{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L}},{{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L}},{{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L}},{{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L}},{{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L}},{{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L}},{{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L}},{{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L},{0x790F1031L}}};
            int32_t l_1261[10] = {0x140E5300L,0x140E5300L,0x140E5300L,0x140E5300L,0x140E5300L,0x140E5300L,0x140E5300L,0x140E5300L,0x140E5300L,0x140E5300L};
            int16_t l_1263 = 0L;
            int32_t *l_1275 = &p_1279->g_2;
            int i, j, k;
            l_793 |= ((*l_733) = (safe_lshift_func_uint8_t_u_s((p_1279->g_1022 || l_1208), 6)));
            l_1189 |= (((*l_733) |= 0L) >= (safe_add_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_u(((*p_1279->g_421) <= ((0xA082L || (safe_div_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u((FAKE_DIVERGE(p_1279->group_2_offset, get_group_id(2), 10) , (((((0L || 255UL) != ((*l_1224) |= (!(safe_sub_func_uint64_t_u_u((l_1221 != &p_1279->g_529[0][1]), (((safe_mul_func_int16_t_s_s((-7L), (p_1279->g_145 >= l_1208))) < 8L) , 0x9FD83D9031DDCD79L)))))) >= l_788) ^ p_1279->g_644) != 0x1FL)), p_1279->g_527)) | l_840), 0x14L))) || p_1279->g_113[0][4][2])), 5)) > 18446744073709551615UL), 0x3435F72DL)), p_1279->g_1020)));
            for (p_1279->g_82 = 0; (p_1279->g_82 < 8); p_1279->g_82++)
            { /* block id: 559 */
                uint8_t l_1229 = 0x5DL;
                int32_t l_1260 = 0x2278387AL;
                int32_t l_1264 = 0x5E4ED540L;
                int32_t l_1265 = 0x187900BBL;
                int32_t l_1266[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                int i;
                for (p_1279->g_501 = 0; (p_1279->g_501 < 1); p_1279->g_501++)
                { /* block id: 562 */
                    return l_1229;
                }
                for (p_1279->g_2 = 1; (p_1279->g_2 >= 0); p_1279->g_2 -= 1)
                { /* block id: 567 */
                    uint32_t l_1242 = 1UL;
                    int8_t *l_1243 = &p_1279->g_123;
                    int32_t l_1256[7][9] = {{0x75BB6B0AL,0x4DBA50D2L,0x0B31892AL,0x606E554AL,0x4DBA50D2L,0x606E554AL,0x0B31892AL,0x4DBA50D2L,0x75BB6B0AL},{0x75BB6B0AL,0x4DBA50D2L,0x0B31892AL,0x606E554AL,0x4DBA50D2L,0x606E554AL,0x0B31892AL,0x4DBA50D2L,0x75BB6B0AL},{0x75BB6B0AL,0x4DBA50D2L,0x0B31892AL,0x606E554AL,0x4DBA50D2L,0x606E554AL,0x0B31892AL,0x4DBA50D2L,0x75BB6B0AL},{0x75BB6B0AL,0x4DBA50D2L,0x0B31892AL,0x606E554AL,0x4DBA50D2L,0x606E554AL,0x0B31892AL,0x4DBA50D2L,0x75BB6B0AL},{0x75BB6B0AL,0x4DBA50D2L,0x0B31892AL,0x606E554AL,0x4DBA50D2L,0x606E554AL,0x0B31892AL,0x4DBA50D2L,0x75BB6B0AL},{0x75BB6B0AL,0x4DBA50D2L,0x0B31892AL,0x606E554AL,0x4DBA50D2L,0x606E554AL,0x0B31892AL,0x4DBA50D2L,0x75BB6B0AL},{0x75BB6B0AL,0x4DBA50D2L,0x0B31892AL,0x606E554AL,0x4DBA50D2L,0x606E554AL,0x0B31892AL,0x4DBA50D2L,0x75BB6B0AL}};
                    int32_t *l_1262[7][7] = {{&l_793,&p_1279->g_916,(void*)0,&l_1189,&p_1279->g_176,&l_1189,(void*)0},{&l_793,&p_1279->g_916,(void*)0,&l_1189,&p_1279->g_176,&l_1189,(void*)0},{&l_793,&p_1279->g_916,(void*)0,&l_1189,&p_1279->g_176,&l_1189,(void*)0},{&l_793,&p_1279->g_916,(void*)0,&l_1189,&p_1279->g_176,&l_1189,(void*)0},{&l_793,&p_1279->g_916,(void*)0,&l_1189,&p_1279->g_176,&l_1189,(void*)0},{&l_793,&p_1279->g_916,(void*)0,&l_1189,&p_1279->g_176,&l_1189,(void*)0},{&l_793,&p_1279->g_916,(void*)0,&l_1189,&p_1279->g_176,&l_1189,(void*)0}};
                    int32_t l_1267 = 0x20A6108AL;
                    int i, j;
                    for (p_1279->g_460 = 0; (p_1279->g_460 <= 1); p_1279->g_460 += 1)
                    { /* block id: 570 */
                        union U0 *l_1230 = &p_1279->g_283[2][0][1];
                        int32_t l_1233[10] = {1L,0x12A6F5FBL,(-6L),0x12A6F5FBL,1L,1L,0x12A6F5FBL,(-6L),0x12A6F5FBL,1L};
                        int8_t **l_1244 = &l_1243;
                        int32_t *l_1245 = &l_793;
                        int32_t *l_1246 = &l_839[0];
                        int32_t *l_1247 = &l_1203[4][2][0];
                        int32_t *l_1248 = &l_841;
                        int32_t *l_1249 = &p_1279->g_28[2][6];
                        int32_t *l_1250 = &l_839[0];
                        int32_t *l_1251 = (void*)0;
                        int32_t *l_1252 = &l_1233[1];
                        int32_t *l_1253 = &p_1279->g_734;
                        int32_t *l_1254 = &l_840;
                        int32_t *l_1255[7][3] = {{&l_839[0],&p_1279->g_2,&l_839[0]},{&l_839[0],&p_1279->g_2,&l_839[0]},{&l_839[0],&p_1279->g_2,&l_839[0]},{&l_839[0],&p_1279->g_2,&l_839[0]},{&l_839[0],&p_1279->g_2,&l_839[0]},{&l_839[0],&p_1279->g_2,&l_839[0]},{&l_839[0],&p_1279->g_2,&l_839[0]}};
                        int i, j;
                        l_756 = l_1230;
                        l_1242 ^= (safe_div_func_int64_t_s_s(l_1233[3], (((safe_sub_func_int64_t_s_s(0x1B990535A29D65B2L, ((safe_rshift_func_uint16_t_u_s((*l_733), 9)) , 0L))) < ((safe_rshift_func_int16_t_s_s(p_1279->g_113[0][4][2], 6)) , p_1279->g_365)) && (1L <= (0x938CL <= (safe_mul_func_uint8_t_u_u((l_1233[3] > 1UL), l_1229)))))));
                        (*l_733) |= (((*l_1244) = l_1243) == (void*)0);
                        ++l_1257[2][1][0];
                    }
                    l_1268++;
                    (**l_1004) = func_52(p_1279->g_529[0][1], (((void*)0 == p_1279->g_1271) | (l_1224 == ((**l_944) = l_1274))), p_1279);
                }
            }
            l_1276[0][0][0]--;
        }
    }
    return (*l_733);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_5(uint64_t  p_6, uint8_t  p_7, uint32_t  p_8, struct S1 * p_1279)
{ /* block id: 358 */
    int32_t *l_728[10][7][2] = {{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}},{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}},{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}},{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}},{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}},{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}},{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}},{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}},{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}},{{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176},{&p_1279->g_73,&p_1279->g_176}}};
    int i, j, k;
    return l_728[4][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1279->g_2 p_1279->g_529 p_1279->g_527 p_1279->g_650 p_1279->g_400 p_1279->g_421 p_1279->g_422 p_1279->g_461 p_1279->g_230
 * writes: p_1279->g_123 p_1279->g_461 p_1279->g_183
 */
uint64_t  func_9(int32_t  p_10, int32_t * p_11, struct S1 * p_1279)
{ /* block id: 350 */
    int8_t l_707 = (-4L);
    int32_t **l_712 = &p_1279->g_332;
    uint64_t *l_717 = &p_1279->g_460;
    uint64_t *l_718[10];
    int32_t l_719 = 0x565BCF96L;
    uint32_t *l_723 = (void*)0;
    int8_t *l_724 = &p_1279->g_123;
    int32_t l_725 = 0L;
    int32_t *l_726 = (void*)0;
    int32_t *l_727 = &p_1279->g_461;
    int i;
    for (i = 0; i < 10; i++)
        l_718[i] = &p_1279->g_283[2][0][1].f1;
    (*l_727) ^= (l_725 = (safe_div_func_int8_t_s_s(((l_707 & l_707) && (safe_mul_func_int8_t_s_s(((*l_724) = ((((((safe_mul_func_uint16_t_u_u(p_10, ((((((void*)0 == l_712) <= (((safe_rshift_func_int8_t_s_s((!(p_10 , ((safe_mod_func_uint32_t_u_u(((l_719 = ((void*)0 != l_717)) , ((safe_unary_minus_func_uint64_t_u((safe_sub_func_int32_t_s_s((l_719 = p_10), 0x25591952L)))) , p_1279->g_2)), l_707)) | p_1279->g_529[0][1]))), 1)) , 0x508EF5E458F744E9L) , l_707)) , (void*)0) == l_723) | p_1279->g_527))) ^ (*p_1279->g_650)) || (*p_1279->g_421)) , 7UL) ^ 1L) == l_707)), p_10))), 0xA8L)));
    (*p_1279->g_230) = (void*)0;
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_1279->g_28 p_1279->g_2 p_1279->g_27 p_1279->g_73 p_1279->g_72 p_1279->g_82 p_1279->g_88 p_1279->g_126 p_1279->g_145 p_1279->g_148 p_1279->g_184 p_1279->g_230 p_1279->g_183 p_1279->g_394 p_1279->g_421 p_1279->g_400 p_1279->g_433 p_1279->g_118 p_1279->g_113 p_1279->g_176 p_1279->g_420 p_1279->g_265 p_1279->g_245 p_1279->g_501 p_1279->g_461 p_1279->g_597 p_1279->g_365 p_1279->g_123 p_1279->g_527 p_1279->g_332 p_1279->g_422 p_1279->g_614 p_1279->g_648 p_1279->g_655 p_1279->g_396 p_1279->g_646
 * writes: p_1279->g_73 p_1279->g_82 p_1279->g_88 p_1279->g_126 p_1279->g_123 p_1279->g_145 p_1279->g_148 p_1279->g_113 p_1279->g_183 p_1279->g_420 p_1279->g_460 p_1279->g_461 p_1279->g_72 p_1279->g_597 p_1279->g_28 p_1279->g_614 p_1279->g_396 p_1279->g_176 p_1279->g_529 p_1279->g_644 p_1279->g_646 p_1279->g_649 p_1279->g_231 p_1279->g_245
 */
int32_t * func_13(int64_t  p_14, int32_t * p_15, int32_t * p_16, int64_t  p_17, int32_t  p_18, struct S1 * p_1279)
{ /* block id: 15 */
    uint8_t l_45 = 1UL;
    int32_t **l_51 = (void*)0;
    uint64_t *l_502[7] = {&p_1279->g_420,&p_1279->g_420,&p_1279->g_420,&p_1279->g_420,&p_1279->g_420,&p_1279->g_420,&p_1279->g_420};
    int32_t l_503 = 0x701BE064L;
    int32_t *l_504 = &p_1279->g_28[0][3];
    int32_t l_516 = 0x6F39D5E6L;
    int32_t l_517[9][4] = {{0x42B27EEEL,3L,0x136CC264L,0x1E494DADL},{0x42B27EEEL,3L,0x136CC264L,0x1E494DADL},{0x42B27EEEL,3L,0x136CC264L,0x1E494DADL},{0x42B27EEEL,3L,0x136CC264L,0x1E494DADL},{0x42B27EEEL,3L,0x136CC264L,0x1E494DADL},{0x42B27EEEL,3L,0x136CC264L,0x1E494DADL},{0x42B27EEEL,3L,0x136CC264L,0x1E494DADL},{0x42B27EEEL,3L,0x136CC264L,0x1E494DADL},{0x42B27EEEL,3L,0x136CC264L,0x1E494DADL}};
    uint32_t l_518 = 0x23870C46L;
    uint8_t l_622 = 249UL;
    uint32_t *l_684 = &p_1279->g_501;
    int i, j;
    if ((safe_lshift_func_int8_t_s_u(((safe_add_func_int8_t_s_s(p_1279->g_28[0][3], (safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), p_18)), func_19((((safe_lshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(l_45, ((l_503 = ((func_46(l_51, (p_1279->g_28[4][3] , (p_1279->g_2 | 246UL)), &p_1279->g_28[0][3], (&p_16 != &p_16), p_1279) == 0x25B9L) <= 0xD2DF5E8CL)) & p_1279->g_501))), 4)) ^ p_1279->g_394) | 0x28946FE9L), l_504, p_1279))))) , p_17), 6)))
    { /* block id: 246 */
        int32_t *l_505 = &p_1279->g_176;
        int32_t *l_506 = &p_1279->g_28[0][3];
        int32_t *l_507 = &p_1279->g_28[2][3];
        int32_t *l_508 = &p_1279->g_28[0][3];
        int32_t *l_509 = &p_1279->g_461;
        int32_t l_510[1][7] = {{0x18378F94L,0x6D4E281FL,0x18378F94L,0x18378F94L,0x6D4E281FL,0x18378F94L,0x18378F94L}};
        int32_t *l_511 = &l_510[0][0];
        int32_t *l_512 = &l_510[0][1];
        int32_t *l_513 = &l_510[0][4];
        int32_t *l_514 = &p_1279->g_73;
        int32_t *l_515[8] = {&l_503,&p_1279->g_28[4][2],&l_503,&l_503,&p_1279->g_28[4][2],&l_503,&l_503,&p_1279->g_28[4][2]};
        int i, j;
        --l_518;
    }
    else
    { /* block id: 248 */
        int8_t l_539[10] = {0x41L,0x41L,0x41L,0x41L,0x41L,0x41L,0x41L,0x41L,0x41L,0x41L};
        int8_t l_589 = (-3L);
        int32_t l_598 = 0x5B658B84L;
        uint8_t *l_607 = &p_1279->g_396;
        int64_t *l_658[4];
        int32_t l_685 = 0x5C11D04AL;
        int16_t l_704 = 0x6969L;
        int i;
        for (i = 0; i < 4; i++)
            l_658[i] = &p_1279->g_527;
        for (p_1279->g_461 = 0; (p_1279->g_461 < (-14)); --p_1279->g_461)
        { /* block id: 251 */
            int32_t l_525 = 0x1B6BF8B5L;
            int8_t *l_535 = &p_1279->g_123;
            int32_t ***l_631 = &p_1279->g_231[2];
            int64_t *l_657[5];
            int i;
            for (i = 0; i < 5; i++)
                l_657[i] = (void*)0;
            for (l_516 = 0; (l_516 <= 5); l_516 += 1)
            { /* block id: 254 */
                int8_t *l_532 = &p_1279->g_123;
                int32_t *l_538 = &p_1279->g_176;
                union U0 l_546[5][7] = {{{-1L},{0L},{-1L},{-1L},{0L},{-1L},{-1L}},{{-1L},{0L},{-1L},{-1L},{0L},{-1L},{-1L}},{{-1L},{0L},{-1L},{-1L},{0L},{-1L},{-1L}},{{-1L},{0L},{-1L},{-1L},{0L},{-1L},{-1L}},{{-1L},{0L},{-1L},{-1L},{0L},{-1L},{-1L}}};
                union U0 **l_551 = (void*)0;
                int64_t l_556 = 1L;
                int64_t l_595 = 1L;
                uint32_t *l_596[8] = {&p_1279->g_597,&p_1279->g_597,&p_1279->g_597,&p_1279->g_597,&p_1279->g_597,&p_1279->g_597,&p_1279->g_597,&p_1279->g_597};
                int32_t l_608 = 0x2B6B4E99L;
                uint8_t **l_647[6][4][10] = {{{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0}},{{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0}},{{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0}},{{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0}},{{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0}},{{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0},{&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,&l_607,(void*)0}}};
                int32_t ****l_654[5][1][7] = {{{&l_631,(void*)0,&l_631,&l_631,(void*)0,&l_631,&l_631}},{{&l_631,(void*)0,&l_631,&l_631,(void*)0,&l_631,&l_631}},{{&l_631,(void*)0,&l_631,&l_631,(void*)0,&l_631,&l_631}},{{&l_631,(void*)0,&l_631,&l_631,(void*)0,&l_631,&l_631}},{{&l_631,(void*)0,&l_631,&l_631,(void*)0,&l_631,&l_631}}};
                uint32_t l_686 = 0xC9CDE8B2L;
                int i, j, k;
                for (l_45 = 1; (l_45 <= 5); l_45 += 1)
                { /* block id: 257 */
                    int64_t *l_526[3];
                    uint16_t *l_528 = &p_1279->g_529[0][1];
                    int16_t *l_561 = &p_1279->g_113[1][0][2];
                    uint32_t *l_562 = (void*)0;
                    uint32_t *l_563 = &p_1279->g_501;
                    int64_t **l_580 = &l_526[2];
                    uint32_t *l_586 = &p_1279->g_148;
                    uint64_t *l_587 = &p_1279->g_283[2][0][1].f1;
                    int32_t l_588 = 0L;
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_526[i] = &p_1279->g_527;
                    (1 + 1);
                }
                if (((((p_1279->g_145 , (l_608 |= (!((((-7L) & ((++p_1279->g_597) , (func_24(((p_14 , p_18) != ((safe_div_func_int64_t_s_s((((p_1279->g_394 >= ((safe_lshift_func_int8_t_s_u((-2L), 1)) == ((*l_504) = ((*l_535) &= p_1279->g_365)))) == (((l_607 = &p_1279->g_400) != (p_1279->g_527 , l_535)) && l_525)) & 0x16L), (*l_538))) >= p_18)), (*p_1279->g_332), p_1279) , 9UL))) != p_14) == FAKE_DIVERGE(p_1279->group_2_offset, get_group_id(2), 10))))) , (*p_1279->g_421)) == 0x5B6DL) || (*l_538)))
                { /* block id: 296 */
                    int32_t *l_609 = &p_1279->g_28[0][7];
                    int64_t **l_619[2];
                    uint16_t *l_634 = &p_1279->g_529[0][0];
                    int32_t l_641[2];
                    int32_t *l_642 = &l_641[0];
                    uint16_t *l_643 = &p_1279->g_644;
                    uint16_t *l_645 = &p_1279->g_646;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_619[i] = &p_1279->g_615;
                    for (i = 0; i < 2; i++)
                        l_641[i] = (-1L);
                    for (p_1279->g_126 = 0; p_1279->g_126 < 7; p_1279->g_126 += 1)
                    {
                        l_502[p_1279->g_126] = &p_1279->g_420;
                    }
                    if ((l_502[3] != (void*)0))
                    { /* block id: 298 */
                        return l_609;
                    }
                    else
                    { /* block id: 300 */
                        int64_t ***l_616 = &p_1279->g_614;
                        int64_t **l_618[3];
                        int64_t ***l_617[4][2][5] = {{{(void*)0,&l_618[2],&l_618[1],&l_618[2],&l_618[1]},{(void*)0,&l_618[2],&l_618[1],&l_618[2],&l_618[1]}},{{(void*)0,&l_618[2],&l_618[1],&l_618[2],&l_618[1]},{(void*)0,&l_618[2],&l_618[1],&l_618[2],&l_618[1]}},{{(void*)0,&l_618[2],&l_618[1],&l_618[2],&l_618[1]},{(void*)0,&l_618[2],&l_618[1],&l_618[2],&l_618[1]}},{{(void*)0,&l_618[2],&l_618[1],&l_618[2],&l_618[1]},{(void*)0,&l_618[2],&l_618[1],&l_618[2],&l_618[1]}}};
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_618[i] = &p_1279->g_615;
                        (*l_609) ^= (*p_15);
                        (*l_538) = (safe_rshift_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u((((*l_616) = p_1279->g_614) == (l_619[1] = &p_1279->g_615)), (safe_sub_func_uint32_t_u_u(((((-5L) != ((((*l_609) <= (0UL == (p_1279->g_396 = l_622))) && ((safe_sub_func_int8_t_s_s((~p_1279->g_28[0][3]), (p_1279->g_245 , (!(*l_504))))) != 0x15L)) != (*l_609))) >= p_1279->g_72) == 0x600C5505L), 0x2A1F5644L)))) > 0x6D598A00L), 3));
                        if ((*l_504))
                            break;
                    }
                    (*l_609) = (safe_add_func_int16_t_s_s(p_1279->g_265[0][5], (p_1279->g_394 ^ (p_17 <= (safe_lshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((+(((((void*)0 == l_631) & ((l_598 = ((((*l_634) = (safe_div_func_int16_t_s_s(0x406FL, (*l_504)))) | ((*l_645) = ((*l_643) = ((safe_mod_func_int8_t_s_s(((GROUP_DIVERGE(0, 1) ^ (safe_add_func_int32_t_s_s((((*l_642) = (safe_mod_func_uint32_t_u_u(l_641[1], ((*l_538) = ((*l_609) && (-8L)))))) , (*p_16)), p_17))) , p_18), p_1279->g_420)) <= 0x2EL)))) || 0xD9347390L)) , p_18)) | p_18) >= l_539[1])), p_1279->g_2)), p_1279->g_461))))));
                }
                else
                { /* block id: 315 */
                    int32_t *****l_651 = (void*)0;
                    int32_t ****l_653[2];
                    int32_t *****l_652[6] = {&l_653[0],&l_653[0],&l_653[0],&l_653[0],&l_653[0],&l_653[0]};
                    int i;
                    for (i = 0; i < 2; i++)
                        l_653[i] = &l_631;
                    for (p_1279->g_145 = 0; (p_1279->g_145 <= 2); p_1279->g_145 += 1)
                    { /* block id: 318 */
                        (*p_1279->g_648) = l_647[1][1][1];
                    }
                    if (((l_654[1][0][4] = &l_631) == p_1279->g_655[0]))
                    { /* block id: 322 */
                        uint16_t l_659 = 0x82C0L;
                        (*l_631) = &p_16;
                        (*l_538) = (l_657[2] != (l_658[3] = &p_14));
                        l_659 |= (*l_538);
                    }
                    else
                    { /* block id: 327 */
                        uint64_t l_662[9][10] = {{1UL,0UL,0UL,0x1FF876542CC26F8FL,0x5AB8A22796BDD994L,0x7E22F66F54AE6FFFL,1UL,7UL,0x9152550459C5209DL,0x9152550459C5209DL},{1UL,0UL,0UL,0x1FF876542CC26F8FL,0x5AB8A22796BDD994L,0x7E22F66F54AE6FFFL,1UL,7UL,0x9152550459C5209DL,0x9152550459C5209DL},{1UL,0UL,0UL,0x1FF876542CC26F8FL,0x5AB8A22796BDD994L,0x7E22F66F54AE6FFFL,1UL,7UL,0x9152550459C5209DL,0x9152550459C5209DL},{1UL,0UL,0UL,0x1FF876542CC26F8FL,0x5AB8A22796BDD994L,0x7E22F66F54AE6FFFL,1UL,7UL,0x9152550459C5209DL,0x9152550459C5209DL},{1UL,0UL,0UL,0x1FF876542CC26F8FL,0x5AB8A22796BDD994L,0x7E22F66F54AE6FFFL,1UL,7UL,0x9152550459C5209DL,0x9152550459C5209DL},{1UL,0UL,0UL,0x1FF876542CC26F8FL,0x5AB8A22796BDD994L,0x7E22F66F54AE6FFFL,1UL,7UL,0x9152550459C5209DL,0x9152550459C5209DL},{1UL,0UL,0UL,0x1FF876542CC26F8FL,0x5AB8A22796BDD994L,0x7E22F66F54AE6FFFL,1UL,7UL,0x9152550459C5209DL,0x9152550459C5209DL},{1UL,0UL,0UL,0x1FF876542CC26F8FL,0x5AB8A22796BDD994L,0x7E22F66F54AE6FFFL,1UL,7UL,0x9152550459C5209DL,0x9152550459C5209DL},{1UL,0UL,0UL,0x1FF876542CC26F8FL,0x5AB8A22796BDD994L,0x7E22F66F54AE6FFFL,1UL,7UL,0x9152550459C5209DL,0x9152550459C5209DL}};
                        int16_t *l_679[9] = {&p_1279->g_113[0][0][2],&p_1279->g_113[0][0][2],&p_1279->g_113[0][0][2],&p_1279->g_113[0][0][2],&p_1279->g_113[0][0][2],&p_1279->g_113[0][0][2],&p_1279->g_113[0][0][2],&p_1279->g_113[0][0][2],&p_1279->g_113[0][0][2]};
                        uint32_t *l_681 = &p_1279->g_148;
                        uint32_t **l_680 = &l_681;
                        uint32_t *l_683[5] = {&p_1279->g_145,&p_1279->g_145,&p_1279->g_145,&p_1279->g_145,&p_1279->g_145};
                        uint32_t **l_682[3][2] = {{&l_683[4],&l_683[4]},{&l_683[4],&l_683[4]},{&l_683[4],&l_683[4]}};
                        int i, j;
                        l_598 = (((safe_rshift_func_int8_t_s_u(p_1279->g_597, (((p_1279->g_148 != 0UL) & p_1279->g_433) | (~(-1L))))) , (l_662[3][4] < (l_685 ^= (safe_sub_func_uint32_t_u_u(((l_684 = ((*l_680) = func_52(((safe_rshift_func_uint8_t_u_u(((++p_1279->g_420) && p_14), ((safe_add_func_int16_t_s_s((p_1279->g_113[3][4][0] = (safe_add_func_uint8_t_u_u(((safe_add_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_div_func_uint16_t_u_u((*p_1279->g_421), ((0x4C41D1E5L && (*p_16)) ^ (*p_15)))), p_18)), p_1279->g_597)) , l_662[3][4]), FAKE_DIVERGE(p_1279->global_0_offset, get_global_id(0), 10)))), p_1279->g_2)) ^ 1L))) , p_1279->g_118[1]), p_17, p_1279))) == &p_1279->g_501), (*p_15)))))) == l_686);
                    }
                }
                for (p_1279->g_245 = 2; (p_1279->g_245 >= 0); p_1279->g_245 -= 1)
                { /* block id: 338 */
                    uint16_t *l_695[10][7] = {{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644},{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644},{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644},{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644},{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644},{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644},{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644},{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644},{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644},{&p_1279->g_529[0][1],&p_1279->g_529[0][1],&p_1279->g_644,(void*)0,&p_1279->g_529[0][1],(void*)0,&p_1279->g_644}};
                    int32_t l_702 = 1L;
                    int32_t l_703 = 1L;
                    int i, j, k;
                    l_685 = (-5L);
                    l_704 = ((safe_lshift_func_uint16_t_u_s((((p_1279->g_113[l_516][(l_516 + 2)][p_1279->g_245] | (p_1279->g_118[1] , 0L)) <= p_18) >= (safe_mul_func_int8_t_s_s((0xBBA4D87FL >= p_1279->g_396), (safe_mul_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((l_703 = (((p_1279->g_501 >= (p_1279->g_646--)) | ((safe_lshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((l_702 = GROUP_DIVERGE(1, 1)), 13)), p_1279->g_461)) < (l_539[1] , 2L))) < 0x0BL)), p_1279->g_597)), (-1L)))))), 4)) == 6L);
                }
            }
            p_16 = &p_18;
        }
    }
    return (*p_1279->g_230);
}


/* ------------------------------------------ */
/* 
 * reads : p_1279->g_2
 * writes:
 */
uint8_t  func_19(uint32_t  p_20, int32_t * p_21, struct S1 * p_1279)
{ /* block id: 8 */
    uint64_t l_23 = 5UL;
    l_23 ^= p_1279->g_2;
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1279->g_2 p_1279->g_27 p_1279->g_28
 * writes: p_1279->g_28
 */
union U0  func_24(int32_t  p_25, int32_t  p_26, struct S1 * p_1279)
{ /* block id: 11 */
    union U0 l_29 = {0x36572186L};
    (*p_1279->g_27) ^= p_1279->g_2;
    return l_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_1279->g_2 p_1279->g_28 p_1279->g_27 p_1279->g_73 p_1279->g_72 p_1279->g_82 p_1279->g_88 p_1279->g_126 p_1279->g_145 p_1279->g_148 p_1279->g_184 p_1279->g_230 p_1279->g_183 p_1279->g_394 p_1279->g_421 p_1279->g_400 p_1279->g_433 p_1279->g_118 p_1279->g_113 p_1279->g_176 p_1279->g_420 p_1279->g_265 p_1279->g_245 p_1279->g_501
 * writes: p_1279->g_73 p_1279->g_82 p_1279->g_88 p_1279->g_126 p_1279->g_123 p_1279->g_145 p_1279->g_148 p_1279->g_113 p_1279->g_183 p_1279->g_420 p_1279->g_460 p_1279->g_461 p_1279->g_72
 */
int16_t  func_46(int32_t ** p_47, uint64_t  p_48, int32_t * p_49, int8_t  p_50, struct S1 * p_1279)
{ /* block id: 16 */
    union U0 l_172 = {-6L};
    int32_t *l_173 = &p_1279->g_2;
    int32_t **l_174[7] = {&l_173,&l_173,&l_173,&l_173,&l_173,&l_173,&l_173};
    int32_t *l_175 = &p_1279->g_176;
    uint32_t l_412 = 0x93039616L;
    int16_t l_413 = 0x6427L;
    int32_t l_414 = 0x1380E653L;
    uint64_t *l_419 = &p_1279->g_420;
    int16_t *l_448[8] = {&p_1279->g_113[0][4][2],(void*)0,&p_1279->g_113[0][4][2],&p_1279->g_113[0][4][2],(void*)0,&p_1279->g_113[0][4][2],&p_1279->g_113[0][4][2],(void*)0};
    int16_t **l_447 = &l_448[3];
    int64_t l_489 = 0x7B7079A2566186E5L;
    int64_t l_490 = 0L;
    int i;
    (*p_1279->g_230) = func_52((func_55((p_1279->g_2 || p_1279->g_28[0][3]), (safe_lshift_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_s((func_19((((safe_add_func_uint32_t_u_u(func_19(((safe_mul_func_int16_t_s_s(((safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((((*p_1279->g_27) , func_70(p_49, p_1279)) ^ ((((l_172 , ((l_175 = l_173) != (p_1279->g_183[1][0] = ((~(((-5L) | ((safe_mod_func_int32_t_s_s(((safe_mod_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(p_1279->g_28[1][9], 0x943EC499L)), 65535UL)) , (*p_49)), p_48)) , 0x0726L)) , p_1279->g_2)) , &p_1279->g_2)))) >= (*l_173)) && (*p_49)) & 0UL)), p_1279->g_28[0][3])), p_1279->g_28[0][3])) || (*l_175)), p_1279->g_28[1][3])) >= p_50), &p_1279->g_2, p_1279), 0x2A9DD399L)) > 0x895D7F4E79440195L) & p_1279->g_28[0][3]), p_49, p_1279) , 0L), p_50)) , (*l_175)) , p_48), p_50)), p_1279) < 0L), p_48, p_1279);
    (*p_1279->g_184) = (safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_div_func_int16_t_s_s(p_1279->g_394, (*l_173))), 4)), (((((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(0x06L, 7)), ((((l_413 ^= l_412) >= l_414) > 65535UL) >= (p_50 ^ ((*l_419) = (safe_add_func_int32_t_s_s((safe_add_func_int64_t_s_s(p_50, (p_1279->g_88 , p_50))), (*p_49)))))))) , (*p_1279->g_230)) != (*p_1279->g_230)) == p_48) < 0UL)));
    (*p_1279->g_230) = func_52(((((((void*)0 != p_1279->g_421) , 0xCAAB7511L) && (*p_1279->g_27)) && (safe_rshift_func_uint8_t_u_u(p_1279->g_400, (((safe_add_func_uint16_t_u_u(p_50, (((safe_add_func_int8_t_s_s(p_50, (((((safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((p_50 == (1L <= p_50)), 3)), (-7L))) ^ (*l_173)) , p_1279->g_433) | 1UL) , p_1279->g_394))) < p_1279->g_118[0]) != 0x39750183FA884AF7L))) > p_1279->g_113[0][4][2]) , p_1279->g_126)))) ^ p_50), p_1279->g_176, p_1279);
    for (p_1279->g_420 = 0; (p_1279->g_420 > 32); ++p_1279->g_420)
    { /* block id: 211 */
        uint32_t l_443 = 0x3C1A3469L;
        union U0 l_446 = {0x41B2FBE9L};
        int32_t l_462[4][8][2] = {{{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL}},{{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL}},{{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL}},{{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL},{0x020719BDL,0x020719BDL}}};
        int8_t l_495[4] = {0x6FL,0x6FL,0x6FL,0x6FL};
        int i, j, k;
        if ((*l_175))
            break;
        for (l_412 = 4; (l_412 == 60); l_412 = safe_add_func_uint64_t_u_u(l_412, 9))
        { /* block id: 215 */
            uint32_t *l_457 = &p_1279->g_148;
            int32_t l_471 = 0x0E7C98DBL;
            int32_t l_475 = (-1L);
            int32_t l_477[2][2][3] = {{{7L,7L,7L},{7L,7L,7L}},{{7L,7L,7L},{7L,7L,7L}}};
            int64_t l_497 = 7L;
            int i, j, k;
            for (l_413 = 0; (l_413 == 15); ++l_413)
            { /* block id: 218 */
                uint8_t l_440 = 255UL;
                l_440++;
                if (l_443)
                    continue;
                l_462[2][3][0] = (((safe_div_func_uint32_t_u_u((l_446 , ((void*)0 == l_447)), ((p_1279->g_461 = (safe_lshift_func_int16_t_s_s((safe_sub_func_int16_t_s_s((0x8002CDC3L || (((l_457 != &l_443) != (p_1279->g_460 = ((safe_lshift_func_int16_t_s_u((-2L), 11)) , ((((1UL || p_1279->g_420) | p_48) <= p_1279->g_28[5][1]) == p_1279->g_433)))) , 0L)), (*l_175))), l_443))) | p_1279->g_394))) , (void*)0) == (void*)0);
            }
            for (l_172.f1 = 1; (l_172.f1 <= 7); l_172.f1 += 1)
            { /* block id: 227 */
                int32_t ****l_465 = (void*)0;
                int32_t ***l_467[7] = {&p_1279->g_230,&p_1279->g_230,&p_1279->g_230,&p_1279->g_230,&p_1279->g_230,&p_1279->g_230,&p_1279->g_230};
                int32_t ****l_466 = &l_467[4];
                uint16_t l_498 = 65528UL;
                int i;
                if ((safe_sub_func_int8_t_s_s(((((*l_466) = &p_1279->g_230) != (void*)0) , (-4L)), 0x58L)))
                { /* block id: 229 */
                    int16_t l_468 = 1L;
                    int32_t l_469 = 0x23345FE6L;
                    int32_t l_470 = 0x0834E9ADL;
                    int32_t l_472 = (-1L);
                    int32_t l_473 = 0x545E140FL;
                    int32_t l_474 = 0x0EB6AE51L;
                    int32_t l_476 = 0x20CE1BE1L;
                    int32_t l_478 = (-2L);
                    int32_t l_479 = 2L;
                    int32_t l_480 = 0x197FAA61L;
                    int32_t l_481 = 0x3134E5D1L;
                    int32_t l_482 = 0x3DFB6E76L;
                    int32_t l_483 = 6L;
                    int32_t l_484 = 0x405E61A4L;
                    int32_t l_485 = 1L;
                    int32_t l_486 = 0L;
                    int32_t l_487 = (-3L);
                    int32_t l_488 = 0x68E3318FL;
                    int32_t l_491 = 0L;
                    int32_t l_492 = 1L;
                    int32_t l_493 = 0x3C0B6224L;
                    int32_t l_494 = (-1L);
                    int32_t l_496[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_496[i] = 0x6FAFB1A6L;
                    for (p_48 = 0; (p_48 <= 5); p_48 += 1)
                    { /* block id: 232 */
                        int i, j;
                        return p_1279->g_265[p_48][p_48];
                    }
                    --l_498;
                    for (p_1279->g_148 = 0; p_1279->g_148 < 7; p_1279->g_148 += 1)
                    {
                        for (p_1279->g_72 = 0; p_1279->g_72 < 10; p_1279->g_72 += 1)
                        {
                            for (l_475 = 0; l_475 < 3; l_475 += 1)
                            {
                                p_1279->g_113[p_1279->g_148][p_1279->g_72][l_475] = 0x7751L;
                            }
                        }
                    }
                }
                else
                { /* block id: 237 */
                    return p_1279->g_245;
                }
            }
        }
        return p_50;
    }
    return p_1279->g_501;
}


/* ------------------------------------------ */
/* 
 * reads : p_1279->g_230 p_1279->g_183
 * writes:
 */
int32_t * func_52(uint64_t  p_53, uint8_t  p_54, struct S1 * p_1279)
{ /* block id: 70 */
    int16_t *l_186 = &p_1279->g_113[0][6][2];
    int32_t l_188 = 0L;
    int32_t *l_201 = (void*)0;
    int32_t **l_200 = &l_201;
    int32_t l_202 = 1L;
    int32_t l_290 = 1L;
    int32_t l_291 = (-7L);
    int32_t l_292 = (-9L);
    int32_t l_294 = 0x3BD9ACDCL;
    uint16_t l_363 = 0x9431L;
    return (*p_1279->g_230);
}


/* ------------------------------------------ */
/* 
 * reads : p_1279->g_184
 * writes: p_1279->g_73
 */
uint32_t  func_55(uint16_t  p_56, uint32_t  p_57, struct S1 * p_1279)
{ /* block id: 67 */
    int16_t l_185[6] = {0x7659L,0x7659L,0x7659L,0x7659L,0x7659L,0x7659L};
    int i;
    (*p_1279->g_184) = p_56;
    return l_185[4];
}


/* ------------------------------------------ */
/* 
 * reads : p_1279->g_73 p_1279->g_72 p_1279->g_2 p_1279->g_82 p_1279->g_27 p_1279->g_28 p_1279->g_88 p_1279->g_126 p_1279->g_145 p_1279->g_148
 * writes: p_1279->g_73 p_1279->g_82 p_1279->g_88 p_1279->g_126 p_1279->g_123 p_1279->g_145 p_1279->g_148 p_1279->g_113
 */
uint8_t  func_70(int32_t * p_71, struct S1 * p_1279)
{ /* block id: 17 */
    int32_t *l_80 = &p_1279->g_2;
    int32_t l_85 = 0L;
    int32_t l_120 = 0x487636F9L;
    int32_t l_122 = 0L;
    int32_t l_125 = 0x1FFA34A9L;
    int32_t l_143 = (-5L);
    int32_t l_144 = 0L;
    int16_t l_165 = 0x45E1L;
    uint32_t *l_166 = &p_1279->g_148;
    int16_t *l_167 = &p_1279->g_113[4][3][0];
    uint16_t l_168 = 0xA1D6L;
    uint32_t l_169[9][8][3] = {{{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL}},{{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL}},{{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL}},{{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL}},{{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL}},{{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL}},{{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL}},{{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL}},{{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL},{0xA3292AD2L,0x7DB0440FL,1UL}}};
    int32_t *l_170 = &l_85;
    uint8_t l_171 = 0x5CL;
    int i, j, k;
    for (p_1279->g_73 = 20; (p_1279->g_73 >= 0); p_1279->g_73 = safe_sub_func_uint64_t_u_u(p_1279->g_73, 1))
    { /* block id: 20 */
        int32_t **l_81 = &l_80;
        int32_t l_117 = 0L;
        int32_t l_119[1][6] = {{0L,0x0812B24AL,0L,0L,0x0812B24AL,0L}};
        int i, j;
        p_1279->g_82 ^= (safe_rshift_func_int16_t_s_u(p_1279->g_72, (p_1279->g_2 , (safe_rshift_func_int16_t_s_s((((*l_81) = l_80) == (p_71 = (void*)0)), 12)))));
        for (p_1279->g_82 = 17; (p_1279->g_82 > (-5)); p_1279->g_82--)
        { /* block id: 26 */
            (*l_81) = p_71;
        }
        p_1279->g_88 ^= ((((*p_1279->g_27) ^ l_85) >= (safe_rshift_func_uint16_t_u_s(l_85, 4))) == 0xE7F6328DL);
        for (p_1279->g_88 = 0; (p_1279->g_88 != 16); p_1279->g_88 = safe_add_func_uint32_t_u_u(p_1279->g_88, 1))
        { /* block id: 32 */
            uint32_t l_93 = 4294967295UL;
            int32_t l_94 = 0x454D88F4L;
            int32_t l_112 = 0x0EC64C76L;
            int32_t l_121 = 1L;
            int32_t *l_130 = &l_119[0][1];
            for (p_1279->g_82 = (-18); (p_1279->g_82 < (-18)); ++p_1279->g_82)
            { /* block id: 35 */
                int16_t l_101 = (-6L);
                int32_t **l_104 = &l_80;
                int32_t l_108 = 0x35CE3A63L;
                int32_t l_114 = 0x7895E344L;
                int32_t l_115 = 0x209EFF97L;
                if (l_93)
                    break;
                l_94 = (*p_1279->g_27);
                for (l_93 = (-22); (l_93 == 28); ++l_93)
                { /* block id: 40 */
                    uint16_t l_99 = 8UL;
                    int32_t *l_100 = &l_85;
                    int32_t l_116 = 0x3429DD6FL;
                    int32_t l_124[10] = {0x3CA64ADDL,0x3CA64ADDL,0x3CA64ADDL,0x3CA64ADDL,0x3CA64ADDL,0x3CA64ADDL,0x3CA64ADDL,0x3CA64ADDL,0x3CA64ADDL,0x3CA64ADDL};
                    int i;
                    (*l_100) = (safe_sub_func_uint8_t_u_u(((~((&p_1279->g_27 != &p_1279->g_27) == ((void*)0 == p_71))) <= GROUP_DIVERGE(1, 1)), l_99));
                    (*l_81) = l_100;
                    (*l_100) &= ((((l_101 == l_101) < (safe_sub_func_int64_t_s_s(0x26586BC1AF31AB99L, 1L))) , &p_1279->g_27) == l_104);
                    for (l_94 = (-10); (l_94 > (-12)); --l_94)
                    { /* block id: 46 */
                        int32_t *l_107 = &l_85;
                        int32_t *l_109 = &l_108;
                        int32_t *l_110 = &l_85;
                        int32_t *l_111[4] = {&l_108,&l_108,&l_108,&l_108};
                        int i;
                        --p_1279->g_126;
                    }
                }
            }
            (*l_130) = (*p_1279->g_27);
            for (p_1279->g_123 = 0; (p_1279->g_123 > 24); ++p_1279->g_123)
            { /* block id: 54 */
                int32_t *l_133 = &l_121;
                int32_t *l_134 = &l_122;
                int32_t *l_135 = &l_119[0][0];
                int32_t *l_136 = &l_122;
                int32_t *l_137 = (void*)0;
                int32_t *l_138 = &l_122;
                int32_t *l_139 = &l_112;
                int32_t *l_140 = &l_112;
                int32_t *l_141 = &l_119[0][1];
                int32_t *l_142[10][7] = {{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]},{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]},{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]},{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]},{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]},{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]},{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]},{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]},{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]},{&p_1279->g_28[0][3],&l_119[0][1],&l_112,&p_1279->g_73,&l_112,&l_119[0][1],&p_1279->g_28[0][3]}};
                int i, j;
                p_1279->g_145--;
            }
            (*l_81) = &p_1279->g_28[0][3];
        }
    }
    (*l_170) = ((p_1279->g_148 &= p_1279->g_73) , ((safe_div_func_uint32_t_u_u((((((((255UL & ((safe_add_func_int16_t_s_s((((((*l_167) = ((safe_sub_func_int16_t_s_s((safe_add_func_int8_t_s_s((-9L), (&p_71 != &p_1279->g_27))), p_1279->g_126)) != (((0xF86DL ^ (safe_lshift_func_int16_t_s_s((7UL >= (safe_add_func_uint32_t_u_u(((*l_166) = (safe_mul_func_int8_t_s_s((l_122 <= l_165), l_144))), (-1L)))), 2))) , &p_71) != &p_71))) , l_168) != l_143) & l_169[4][5][1]), 1L)) != l_85)) == 1UL) , 0x35E818B1E2C77FF3L) <= 5L) == l_169[4][5][1]) , 6UL) && 0UL), FAKE_DIVERGE(p_1279->local_2_offset, get_local_id(2), 10))) , (*p_1279->g_27)));
    return l_171;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1280;
    struct S1* p_1279 = &c_1280;
    struct S1 c_1281 = {
        0x772304B2L, // p_1279->g_2
        {{0x4D4E2B79L,0x71E5C8A5L,0L,(-6L),(-1L),0x445A8CCEL,0x4D1D2A6FL,0L,0L,(-7L)},{0x4D4E2B79L,0x71E5C8A5L,0L,(-6L),(-1L),0x445A8CCEL,0x4D1D2A6FL,0L,0L,(-7L)},{0x4D4E2B79L,0x71E5C8A5L,0L,(-6L),(-1L),0x445A8CCEL,0x4D1D2A6FL,0L,0L,(-7L)},{0x4D4E2B79L,0x71E5C8A5L,0L,(-6L),(-1L),0x445A8CCEL,0x4D1D2A6FL,0L,0L,(-7L)},{0x4D4E2B79L,0x71E5C8A5L,0L,(-6L),(-1L),0x445A8CCEL,0x4D1D2A6FL,0L,0L,(-7L)},{0x4D4E2B79L,0x71E5C8A5L,0L,(-6L),(-1L),0x445A8CCEL,0x4D1D2A6FL,0L,0L,(-7L)}}, // p_1279->g_28
        &p_1279->g_28[0][3], // p_1279->g_27
        0L, // p_1279->g_72
        5L, // p_1279->g_73
        (-1L), // p_1279->g_82
        0x1B0F05BAL, // p_1279->g_88
        {{{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L}},{{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L}},{{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L}},{{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L}},{{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L}},{{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L}},{{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L},{(-3L),(-3L),0x0452L}}}, // p_1279->g_113
        {6L,6L}, // p_1279->g_118
        0x17L, // p_1279->g_123
        18446744073709551615UL, // p_1279->g_126
        (void*)0, // p_1279->g_129
        0x926641FEL, // p_1279->g_145
        0x572E8C5FL, // p_1279->g_148
        (-3L), // p_1279->g_176
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1279->g_183
        &p_1279->g_73, // p_1279->g_184
        &p_1279->g_183[1][3], // p_1279->g_230
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1279->g_231
        0x20E4E1FBL, // p_1279->g_245
        {{0x6BE41370L,6L,6L,0x6BE41370L,0x6BE41370L,6L,6L},{0x6BE41370L,6L,6L,0x6BE41370L,0x6BE41370L,6L,6L},{0x6BE41370L,6L,6L,0x6BE41370L,0x6BE41370L,6L,6L},{0x6BE41370L,6L,6L,0x6BE41370L,0x6BE41370L,6L,6L},{0x6BE41370L,6L,6L,0x6BE41370L,0x6BE41370L,6L,6L},{0x6BE41370L,6L,6L,0x6BE41370L,0x6BE41370L,6L,6L}}, // p_1279->g_265
        {{{{0x76CE27E5L},{0x4E550D27L},{-6L}}},{{{0x76CE27E5L},{0x4E550D27L},{-6L}}},{{{0x76CE27E5L},{0x4E550D27L},{-6L}}},{{{0x76CE27E5L},{0x4E550D27L},{-6L}}},{{{0x76CE27E5L},{0x4E550D27L},{-6L}}},{{{0x76CE27E5L},{0x4E550D27L},{-6L}}}}, // p_1279->g_283
        0L, // p_1279->g_288
        &p_1279->g_245, // p_1279->g_332
        &p_1279->g_332, // p_1279->g_331
        7UL, // p_1279->g_365
        0x2AL, // p_1279->g_394
        0x4AL, // p_1279->g_396
        0xECL, // p_1279->g_400
        4UL, // p_1279->g_420
        0xA64DL, // p_1279->g_422
        &p_1279->g_422, // p_1279->g_421
        0L, // p_1279->g_433
        0x420F41B52C0C667DL, // p_1279->g_460
        0L, // p_1279->g_461
        0x398E31EEL, // p_1279->g_501
        0x44450B8071C59E28L, // p_1279->g_527
        {{0x4E90L,0x4E90L}}, // p_1279->g_529
        &p_1279->g_126, // p_1279->g_593
        &p_1279->g_593, // p_1279->g_592
        &p_1279->g_592, // p_1279->g_594
        0x973A06C0L, // p_1279->g_597
        (void*)0, // p_1279->g_615
        &p_1279->g_615, // p_1279->g_614
        65530UL, // p_1279->g_644
        0x66B5L, // p_1279->g_646
        &p_1279->g_400, // p_1279->g_650
        {{{(void*)0,&p_1279->g_650}},{{(void*)0,&p_1279->g_650}},{{(void*)0,&p_1279->g_650}},{{(void*)0,&p_1279->g_650}},{{(void*)0,&p_1279->g_650}}}, // p_1279->g_649
        &p_1279->g_649[3][0][1], // p_1279->g_648
        &p_1279->g_230, // p_1279->g_656
        {&p_1279->g_656}, // p_1279->g_655
        &p_1279->g_283[2][0][1], // p_1279->g_730
        &p_1279->g_730, // p_1279->g_729
        5L, // p_1279->g_734
        0L, // p_1279->g_739
        (void*)0, // p_1279->g_745
        (void*)0, // p_1279->g_764
        &p_1279->g_764, // p_1279->g_763
        0x2C71832BL, // p_1279->g_858
        0x71C5FC38L, // p_1279->g_916
        {&p_1279->g_331,&p_1279->g_331,&p_1279->g_331,&p_1279->g_331,&p_1279->g_331,&p_1279->g_331,&p_1279->g_331,&p_1279->g_331}, // p_1279->g_974
        4L, // p_1279->g_1020
        0x44B83CA26FE756D2L, // p_1279->g_1022
        &p_1279->g_176, // p_1279->g_1188
        {(-9L),(-9L)}, // p_1279->g_1273
        {&p_1279->g_1273[1],&p_1279->g_1273[1],&p_1279->g_1273[1],&p_1279->g_1273[1]}, // p_1279->g_1272
        &p_1279->g_1272[2], // p_1279->g_1271
        sequence_input[get_global_id(0)], // p_1279->global_0_offset
        sequence_input[get_global_id(1)], // p_1279->global_1_offset
        sequence_input[get_global_id(2)], // p_1279->global_2_offset
        sequence_input[get_local_id(0)], // p_1279->local_0_offset
        sequence_input[get_local_id(1)], // p_1279->local_1_offset
        sequence_input[get_local_id(2)], // p_1279->local_2_offset
        sequence_input[get_group_id(0)], // p_1279->group_0_offset
        sequence_input[get_group_id(1)], // p_1279->group_1_offset
        sequence_input[get_group_id(2)], // p_1279->group_2_offset
    };
    c_1280 = c_1281;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1279);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1279->g_2, "p_1279->g_2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1279->g_28[i][j], "p_1279->g_28[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1279->g_72, "p_1279->g_72", print_hash_value);
    transparent_crc(p_1279->g_73, "p_1279->g_73", print_hash_value);
    transparent_crc(p_1279->g_82, "p_1279->g_82", print_hash_value);
    transparent_crc(p_1279->g_88, "p_1279->g_88", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1279->g_113[i][j][k], "p_1279->g_113[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1279->g_118[i], "p_1279->g_118[i]", print_hash_value);

    }
    transparent_crc(p_1279->g_123, "p_1279->g_123", print_hash_value);
    transparent_crc(p_1279->g_126, "p_1279->g_126", print_hash_value);
    transparent_crc(p_1279->g_145, "p_1279->g_145", print_hash_value);
    transparent_crc(p_1279->g_148, "p_1279->g_148", print_hash_value);
    transparent_crc(p_1279->g_176, "p_1279->g_176", print_hash_value);
    transparent_crc(p_1279->g_245, "p_1279->g_245", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1279->g_265[i][j], "p_1279->g_265[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1279->g_283[i][j][k].f0, "p_1279->g_283[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1279->g_288, "p_1279->g_288", print_hash_value);
    transparent_crc(p_1279->g_365, "p_1279->g_365", print_hash_value);
    transparent_crc(p_1279->g_394, "p_1279->g_394", print_hash_value);
    transparent_crc(p_1279->g_396, "p_1279->g_396", print_hash_value);
    transparent_crc(p_1279->g_400, "p_1279->g_400", print_hash_value);
    transparent_crc(p_1279->g_420, "p_1279->g_420", print_hash_value);
    transparent_crc(p_1279->g_422, "p_1279->g_422", print_hash_value);
    transparent_crc(p_1279->g_433, "p_1279->g_433", print_hash_value);
    transparent_crc(p_1279->g_460, "p_1279->g_460", print_hash_value);
    transparent_crc(p_1279->g_461, "p_1279->g_461", print_hash_value);
    transparent_crc(p_1279->g_501, "p_1279->g_501", print_hash_value);
    transparent_crc(p_1279->g_527, "p_1279->g_527", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1279->g_529[i][j], "p_1279->g_529[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1279->g_597, "p_1279->g_597", print_hash_value);
    transparent_crc(p_1279->g_644, "p_1279->g_644", print_hash_value);
    transparent_crc(p_1279->g_646, "p_1279->g_646", print_hash_value);
    transparent_crc(p_1279->g_734, "p_1279->g_734", print_hash_value);
    transparent_crc(p_1279->g_739, "p_1279->g_739", print_hash_value);
    transparent_crc(p_1279->g_858, "p_1279->g_858", print_hash_value);
    transparent_crc(p_1279->g_916, "p_1279->g_916", print_hash_value);
    transparent_crc(p_1279->g_1020, "p_1279->g_1020", print_hash_value);
    transparent_crc(p_1279->g_1022, "p_1279->g_1022", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1279->g_1273[i], "p_1279->g_1273[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
