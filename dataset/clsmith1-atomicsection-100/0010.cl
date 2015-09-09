// --atomics 34 ---fake_divergence -g 16,10,16 -l 1,5,2
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


// Seed: 10

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t *g_2;
    int32_t g_6;
    int32_t *g_5[5];
    int32_t ** volatile g_4;
    int32_t g_8[7];
    volatile int32_t g_30;
    volatile int32_t g_31;
    int32_t g_32[10];
    uint8_t g_46;
    int64_t g_76;
    int16_t g_96;
    uint32_t g_105;
    uint64_t g_115;
    uint32_t g_137;
    uint8_t g_142;
    int8_t g_144;
    uint16_t g_149;
    uint16_t g_164;
    uint32_t g_167;
    uint8_t *g_189;
    uint8_t **g_188;
    int32_t ** volatile g_191;
    int32_t ** volatile g_192;
    int32_t g_200;
    volatile int32_t *g_201;
    volatile int32_t ** volatile g_202;
    int8_t g_251;
    int32_t ** volatile g_253;
    volatile int16_t g_256;
    uint64_t *g_331;
    volatile int32_t g_337;
    int32_t ** volatile g_340;
    int64_t g_543;
    int32_t g_548;
    int32_t *g_591;
    int32_t ** volatile g_590;
    uint64_t **g_677[3];
    uint64_t **g_678;
    uint64_t g_682;
    int32_t * volatile g_727;
    int32_t * volatile g_745[5];
    int32_t * volatile g_746;
    volatile int64_t *g_772;
    volatile int64_t **g_771[2][3];
    int32_t * volatile g_831;
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
int32_t  func_1(struct S0 * p_832);
int32_t * func_20(uint32_t  p_21, int32_t ** p_22, uint32_t  p_23, int32_t  p_24, struct S0 * p_832);
int32_t ** func_25(int32_t * p_26, int32_t ** p_27, struct S0 * p_832);
int32_t  func_35(uint64_t  p_36, int32_t ** p_37, int32_t * p_38, int32_t ** p_39, struct S0 * p_832);
int32_t * func_41(uint64_t  p_42, uint8_t  p_43, int32_t * p_44, struct S0 * p_832);
int32_t * func_69(int32_t  p_70, int32_t  p_71, int32_t * p_72, struct S0 * p_832);
uint32_t  func_77(uint32_t  p_78, int32_t  p_79, int32_t  p_80, int64_t  p_81, int64_t * p_82, struct S0 * p_832);
int32_t  func_83(int32_t ** p_84, uint8_t * p_85, struct S0 * p_832);
int32_t  func_86(int64_t * p_87, int8_t  p_88, struct S0 * p_832);
int64_t * func_89(uint32_t  p_90, uint64_t  p_91, int32_t  p_92, struct S0 * p_832);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_832->g_2 p_832->g_4 p_832->g_6 p_832->g_5 p_832->g_96 p_832->g_167 p_832->g_164 p_832->g_32 p_832->g_331 p_832->g_115 p_832->g_590 p_832->g_188 p_832->g_189 p_832->g_142 p_832->g_337 p_832->g_200 p_832->g_543 p_832->g_76 p_832->g_144 p_832->g_8 p_832->g_548 p_832->g_137 p_832->g_682 p_832->g_105 p_832->g_46 p_832->g_727 p_832->g_746 p_832->g_771 p_832->g_253 p_832->g_678 p_832->g_831 p_832->g_340 p_832->g_31
 * writes: p_832->g_2 p_832->g_5 p_832->g_6 p_832->g_32 p_832->g_96 p_832->g_167 p_832->g_164 p_832->g_105 p_832->g_142 p_832->g_144 p_832->g_8 p_832->g_548 p_832->g_149 p_832->g_115 p_832->g_251 p_832->g_677 p_832->g_678 p_832->g_543 p_832->g_46
 */
int32_t  func_1(struct S0 * p_832)
{ /* block id: 4 */
    int32_t **l_3 = &p_832->g_2;
    int32_t l_9 = 0x71ADB2BCL;
    uint16_t l_19 = 0x1650L;
    (*p_832->g_4) = ((*l_3) = p_832->g_2);
    for (p_832->g_6 = 4; (p_832->g_6 >= 1); p_832->g_6 -= 1)
    { /* block id: 9 */
        int32_t *l_7 = &p_832->g_8[5];
        int32_t *l_10 = &p_832->g_8[5];
        int32_t *l_11 = &p_832->g_8[5];
        int32_t *l_12 = &p_832->g_8[5];
        int32_t *l_13 = &p_832->g_8[5];
        int32_t *l_14 = &l_9;
        int32_t *l_15[10] = {&l_9,&p_832->g_8[5],&l_9,&l_9,&p_832->g_8[5],&l_9,&l_9,&p_832->g_8[5],&l_9,&l_9};
        uint64_t l_16 = 1UL;
        int i;
        l_16++;
        if (l_19)
            continue;
    }
    (*l_3) = func_20(l_19, func_25((*p_832->g_4), l_3, p_832), p_832->g_543, ((void*)0 != &p_832->g_189), p_832);
    return p_832->g_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_832->g_76 p_832->g_189 p_832->g_142 p_832->g_144 p_832->g_8 p_832->g_548 p_832->g_137 p_832->g_96 p_832->g_331 p_832->g_115 p_832->g_167 p_832->g_200 p_832->g_682 p_832->g_105 p_832->g_188 p_832->g_46 p_832->g_727 p_832->g_32 p_832->g_746 p_832->g_5 p_832->g_2 p_832->g_6 p_832->g_164 p_832->g_771 p_832->g_253 p_832->g_678 p_832->g_543 p_832->g_831 p_832->g_340
 * writes: p_832->g_8 p_832->g_548 p_832->g_164 p_832->g_6 p_832->g_149 p_832->g_115 p_832->g_251 p_832->g_144 p_832->g_32 p_832->g_677 p_832->g_678 p_832->g_543 p_832->g_105 p_832->g_142 p_832->g_46 p_832->g_5 p_832->g_2 p_832->g_96
 */
int32_t * func_20(uint32_t  p_21, int32_t ** p_22, uint32_t  p_23, int32_t  p_24, struct S0 * p_832)
{ /* block id: 350 */
    int16_t *l_611 = &p_832->g_96;
    int16_t *l_613 = &p_832->g_96;
    int16_t **l_612 = &l_613;
    int64_t *l_614 = (void*)0;
    int32_t l_615 = (-1L);
    int32_t l_618 = 0L;
    uint64_t **l_619 = &p_832->g_331;
    uint32_t *l_621 = &p_832->g_105;
    uint32_t **l_620 = &l_621;
    uint8_t l_658 = 0x0EL;
    int32_t l_729 = 0x141021C7L;
    int32_t l_730 = 0L;
    int32_t l_731 = 0L;
    int32_t l_732 = 0x04E58180L;
    int32_t l_733 = (-7L);
    int64_t l_734 = 0x418FB7FFD2338556L;
    int32_t l_735 = 8L;
    int32_t l_736 = 1L;
    int32_t l_737 = 0x4D91156DL;
    int32_t l_738 = 0x69DF6F92L;
    int32_t l_739 = 0x75B89020L;
    int32_t l_740[9] = {0x59AD3A4DL,0x219AC313L,0x59AD3A4DL,0x59AD3A4DL,0x219AC313L,0x59AD3A4DL,0x59AD3A4DL,0x219AC313L,0x59AD3A4DL};
    uint16_t l_741 = 0xF95DL;
    int32_t *l_796 = &p_832->g_32[9];
    int64_t l_821 = 0x7A37CF840D1BC8F7L;
    int64_t **l_825 = (void*)0;
    int64_t ***l_824 = &l_825;
    int8_t *l_830[4] = {&p_832->g_251,&p_832->g_251,&p_832->g_251,&p_832->g_251};
    int i;
    if ((safe_mul_func_uint16_t_u_u(((~((l_611 == ((*l_612) = &p_832->g_96)) , p_24)) || (((l_615 = p_832->g_76) ^ 1UL) < ((safe_add_func_uint8_t_u_u((*p_832->g_189), l_618)) & (l_619 == l_619)))), p_832->g_144)))
    { /* block id: 353 */
        uint32_t ***l_622 = &l_620;
        int32_t *l_623 = &p_832->g_8[2];
        uint8_t l_686[4];
        int16_t **l_721[3][8] = {{&l_611,&l_613,&l_611,&l_611,&l_613,&l_611,&l_611,&l_613},{&l_611,&l_613,&l_611,&l_611,&l_613,&l_611,&l_611,&l_613},{&l_611,&l_613,&l_611,&l_611,&l_613,&l_611,&l_611,&l_613}};
        int32_t *l_728[6] = {&p_832->g_32[1],&p_832->g_32[1],&p_832->g_32[1],&p_832->g_32[1],&p_832->g_32[1],&p_832->g_32[1]};
        int i, j;
        for (i = 0; i < 4; i++)
            l_686[i] = 0xADL;
        (*l_622) = l_620;
        (*l_623) &= 0L;
        for (p_832->g_548 = (-28); (p_832->g_548 >= (-11)); p_832->g_548++)
        { /* block id: 358 */
            uint64_t **l_633 = &p_832->g_331;
            int32_t l_634 = 8L;
            if (l_618)
                break;
            for (p_832->g_164 = 0; (p_832->g_164 <= 4); p_832->g_164 += 1)
            { /* block id: 362 */
                uint64_t l_632 = 4UL;
                int32_t l_724 = 0x3273874EL;
                for (p_832->g_6 = 4; (p_832->g_6 >= 0); p_832->g_6 -= 1)
                { /* block id: 365 */
                    int32_t **l_659 = (void*)0;
                    int32_t l_683[10];
                    int i;
                    for (i = 0; i < 10; i++)
                        l_683[i] = (-1L);
                    for (p_832->g_149 = 0; (p_832->g_149 <= 4); p_832->g_149 += 1)
                    { /* block id: 368 */
                        int8_t *l_647 = (void*)0;
                        int8_t *l_648 = &p_832->g_251;
                        int64_t *l_657[5][1] = {{&p_832->g_543},{&p_832->g_543},{&p_832->g_543},{&p_832->g_543},{&p_832->g_543}};
                        int32_t *l_660 = (void*)0;
                        int32_t *l_661 = &p_832->g_32[9];
                        int i, j;
                        (*l_623) = (p_832->g_137 | ((p_24 > (safe_mod_func_int32_t_s_s(l_618, (safe_mod_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((l_632 | ((((((l_633 == &p_832->g_331) == 0xBFL) && (((!l_634) || (safe_mod_func_uint16_t_u_u((!p_24), p_832->g_96))) ^ 0x421B0F50L)) ^ p_21) | p_24) < 0x722AL)), p_24)), 7UL))))) , 250UL));
                        (*l_661) = (((safe_mod_func_int64_t_s_s((!1L), (safe_rshift_func_int8_t_s_s((p_832->g_144 = (((++(**l_633)) , &p_832->g_591) == ((((((((*l_623) = p_21) >= (!(safe_div_func_int8_t_s_s(((*l_648) = (~(p_832->g_76 & (safe_add_func_uint64_t_u_u(p_832->g_144, l_632))))), (GROUP_DIVERGE(1, 1) || p_21))))) == (safe_lshift_func_int16_t_s_u((((safe_sub_func_uint64_t_u_u((((safe_div_func_uint32_t_u_u(((0x616A1ECB1CCDE5E9L != (l_634 = ((p_832->g_76 , p_21) <= p_21))) , p_832->g_76), 1UL)) < 9L) < p_832->g_167), l_632)) || l_658) & 65535UL), p_832->g_200))) <= (*p_832->g_189)) >= 0UL) && p_832->g_76) , l_659))), l_658)))) & 8L) && p_21);
                    }
                    for (l_632 = 0; (l_632 <= 38); l_632 = safe_add_func_int16_t_s_s(l_632, 8))
                    { /* block id: 379 */
                        int32_t l_670 = 0x6F55E025L;
                        uint64_t **l_676 = (void*)0;
                        int64_t *l_679 = (void*)0;
                        int64_t *l_680 = (void*)0;
                        int64_t *l_681 = &p_832->g_543;
                        int8_t *l_722 = &p_832->g_251;
                        int8_t *l_723 = &p_832->g_144;
                        l_670 = (safe_rshift_func_uint16_t_u_s((((safe_add_func_uint32_t_u_u(((***l_622) = ((((safe_mul_func_int16_t_s_s((((l_670 <= ((void*)0 != l_611)) , ((p_832->g_251 = ((safe_unary_minus_func_uint32_t_u((safe_sub_func_int8_t_s_s((GROUP_DIVERGE(1, 1) , ((*l_620) != &p_23)), l_670)))) && ((*l_681) = ((*l_623) == (safe_add_func_uint8_t_u_u((((p_832->g_677[0] = l_676) == (p_832->g_678 = &p_832->g_331)) | p_832->g_548), GROUP_DIVERGE(0, 1))))))) ^ 0x38L)) , 8L), l_634)) >= l_618) & 18446744073709551607UL) && GROUP_DIVERGE(0, 1))), GROUP_DIVERGE(1, 1))) > p_832->g_682) == l_632), 13));
                        if (l_683[0])
                            continue;
                        l_724 = (&p_832->g_340 != (((safe_rshift_func_uint16_t_u_u((l_686[0] & ((safe_rshift_func_int8_t_s_u((safe_div_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 0)) , (safe_mod_func_int8_t_s_s(((safe_lshift_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_int8_t_s_u(((*l_723) = (GROUP_DIVERGE(1, 1) , ((*l_722) = ((safe_add_func_int32_t_s_s((safe_sub_func_int32_t_s_s(((*p_832->g_331) & ((safe_mod_func_uint8_t_u_u((((0x39L && ((safe_mul_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u(((safe_div_func_uint32_t_u_u((((((((safe_mod_func_uint32_t_u_u(0UL, p_832->g_105)) && (((*l_621) &= ((((--(**p_832->g_188)) , p_22) == &p_832->g_2) <= (l_634 = (l_721[1][6] != (void*)0)))) & p_23)) , GROUP_DIVERGE(0, 1)) >= 4294967295UL) & 0x3696L) > p_23) , 1UL), l_658)) <= 248UL), p_23)), 0x4CL)) , 0x1FL)) > p_24) & (-1L)), GROUP_DIVERGE(0, 1))) != p_832->g_137)), 4294967294UL)), p_21)) & GROUP_DIVERGE(0, 1))))), p_23)) >= l_683[9]), p_832->g_8[5])), 5)), p_832->g_46)), 7)) ^ l_632), (-9L)))), 0x51BA8B8E19D5B3E3L)), FAKE_DIVERGE(p_832->local_2_offset, get_local_id(2), 10))) , p_21)), 4)) , 0xCDCC3F67A60AC972L) , (void*)0));
                    }
                    l_618 = 0x64904DDDL;
                }
                for (p_832->g_46 = (-11); (p_832->g_46 > 38); p_832->g_46 = safe_add_func_int32_t_s_s(p_832->g_46, 1))
                { /* block id: 398 */
                    (*p_832->g_727) = ((*l_623) = 0x6D2BB99EL);
                    l_618 |= l_615;
                }
            }
            if ((*p_832->g_727))
                continue;
        }
        --l_741;
    }
    else
    { /* block id: 407 */
        int32_t *l_744 = &p_832->g_8[4];
        int32_t **l_767 = &l_744;
        int32_t ***l_766[10] = {&l_767,&l_767,&l_767,&l_767,&l_767,&l_767,&l_767,&l_767,&l_767,&l_767};
        int8_t l_791 = 0x60L;
        int i;
        (*p_832->g_746) = ((*l_744) = (-1L));
        for (l_738 = (-22); (l_738 == (-25)); --l_738)
        { /* block id: 412 */
            int32_t l_755 = 6L;
            int32_t l_789[3];
            uint32_t l_793 = 1UL;
            int i;
            for (i = 0; i < 3; i++)
                l_789[i] = 0x205D8DD3L;
            (*p_22) = (*p_22);
            for (p_832->g_548 = 0; (p_832->g_548 < 22); p_832->g_548++)
            { /* block id: 416 */
                uint16_t l_781 = 6UL;
                for (p_832->g_6 = (-9); (p_832->g_6 >= 9); p_832->g_6++)
                { /* block id: 419 */
                    uint64_t l_756 = 0xD2C6B0521A305E41L;
                    int16_t *l_765 = &p_832->g_96;
                    int32_t l_768 = 0x0A765FBCL;
                    for (p_832->g_164 = (-18); (p_832->g_164 >= 20); p_832->g_164 = safe_add_func_int64_t_s_s(p_832->g_164, 7))
                    { /* block id: 422 */
                        int64_t **l_773 = &l_614;
                        uint32_t l_780 = 0xAB821E5CL;
                        (*l_744) |= 4L;
                        (*l_744) ^= l_755;
                        if (l_756)
                            break;
                        p_22 = (((safe_mul_func_uint8_t_u_u((l_768 = ((++(*p_832->g_189)) , ((++(*l_621)) == (safe_lshift_func_uint16_t_u_u(((((*l_612) = l_765) == &p_832->g_256) == (&p_832->g_192 == l_766[7])), 11))))), ((FAKE_DIVERGE(p_832->group_1_offset, get_group_id(1), 10) , ((safe_mul_func_uint16_t_u_u(((p_832->g_771[1][0] != l_773) != (*p_832->g_331)), (safe_lshift_func_uint8_t_u_s((GROUP_DIVERGE(1, 1) & (((safe_rshift_func_int16_t_s_s(6L, (safe_sub_func_int8_t_s_s(l_780, 0xD1L)))) != (*l_744)) , p_21)), 5)))) != 0x815F253B54A20F34L)) >= 0x78L))) , 0x7ED2AE76L) , &p_832->g_2);
                    }
                }
                if (l_781)
                    continue;
                if ((*p_832->g_746))
                    break;
                (*p_22) = (*p_832->g_253);
            }
            for (p_832->g_96 = 6; (p_832->g_96 >= 0); p_832->g_96 -= 1)
            { /* block id: 439 */
                int64_t l_783 = (-8L);
                uint8_t l_784[6];
                int32_t l_787 = 0x2B5BA94AL;
                int32_t l_788 = 0x26B547BFL;
                int32_t l_790 = 1L;
                int32_t l_792[8][7][4] = {{{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)}},{{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)}},{{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)}},{{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)}},{{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)}},{{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)}},{{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)}},{{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)},{0x215DC33AL,0x4D96B137L,(-10L),(-5L)}}};
                int i, j, k;
                for (i = 0; i < 6; i++)
                    l_784[i] = 0x3CL;
                for (l_755 = 4; (l_755 >= 0); l_755 -= 1)
                { /* block id: 442 */
                    (**l_767) = (safe_unary_minus_func_uint8_t_u(l_783));
                    for (p_21 = 0; (p_21 <= 1); p_21 += 1)
                    { /* block id: 446 */
                        int i;
                        --l_784[2];
                        if (p_832->g_8[p_21])
                            break;
                        if (p_832->g_32[(p_21 + 2)])
                            break;
                    }
                }
                ++l_793;
            }
        }
        for (p_21 = 0; (p_21 <= 9); p_21 += 1)
        { /* block id: 457 */
            return (*p_22);
        }
    }
    (*l_796) |= (*p_832->g_746);
    (*p_832->g_831) |= (safe_add_func_int16_t_s_s(((((safe_unary_minus_func_int64_t_s((safe_add_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((*l_796) = (safe_rshift_func_int8_t_s_s((p_832->g_251 = (safe_mod_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u((safe_add_func_uint8_t_u_u((l_821 | (safe_mul_func_int16_t_s_s((((*l_824) = &l_614) == (void*)0), ((safe_add_func_uint32_t_u_u((*l_796), ((*l_796) ^ p_23))) ^ (&p_23 == &p_832->g_137))))), (**p_832->g_188))))), 0x63D4L)) >= (-6L)), p_21)), (*l_796))), p_21)), GROUP_DIVERGE(0, 1))) | p_832->g_682) > (**p_832->g_678)), p_23))), 0))), p_832->g_543)), p_832->g_167)))) != 0L) , (-3L)) <= p_24), p_832->g_6));
    return (*p_832->g_340);
}


/* ------------------------------------------ */
/* 
 * reads : p_832->g_6 p_832->g_96 p_832->g_167 p_832->g_164 p_832->g_32 p_832->g_331 p_832->g_115 p_832->g_590 p_832->g_188 p_832->g_189 p_832->g_142 p_832->g_337 p_832->g_200
 * writes: p_832->g_6 p_832->g_32 p_832->g_96 p_832->g_167 p_832->g_164 p_832->g_105 p_832->g_142 p_832->g_144 p_832->g_5 p_832->g_2
 */
int32_t ** func_25(int32_t * p_26, int32_t ** p_27, struct S0 * p_832)
{ /* block id: 13 */
    int32_t **l_40 = &p_832->g_5[4];
    uint16_t l_47 = 0x45DBL;
    int32_t l_405 = (-6L);
    uint16_t l_423 = 0xCA17L;
    int32_t l_471 = 0L;
    int32_t l_472 = 5L;
    int32_t l_473[8][6] = {{0x35034541L,0x66344098L,0x50969990L,0x35034541L,0x5C732498L,0x50969990L},{0x35034541L,0x66344098L,0x50969990L,0x35034541L,0x5C732498L,0x50969990L},{0x35034541L,0x66344098L,0x50969990L,0x35034541L,0x5C732498L,0x50969990L},{0x35034541L,0x66344098L,0x50969990L,0x35034541L,0x5C732498L,0x50969990L},{0x35034541L,0x66344098L,0x50969990L,0x35034541L,0x5C732498L,0x50969990L},{0x35034541L,0x66344098L,0x50969990L,0x35034541L,0x5C732498L,0x50969990L},{0x35034541L,0x66344098L,0x50969990L,0x35034541L,0x5C732498L,0x50969990L},{0x35034541L,0x66344098L,0x50969990L,0x35034541L,0x5C732498L,0x50969990L}};
    int32_t l_474 = 0x37FC685AL;
    int32_t *l_482 = (void*)0;
    int32_t *l_528 = &l_471;
    uint32_t l_544 = 0x3ED9C735L;
    uint64_t l_606 = 0xFC718653C980FDAEL;
    int i, j;
    for (p_832->g_6 = (-30); (p_832->g_6 < (-8)); ++p_832->g_6)
    { /* block id: 16 */
        int8_t l_341 = 0x62L;
        int32_t l_398 = (-1L);
        int32_t l_401[9] = {6L,6L,6L,6L,6L,6L,6L,6L,6L};
        int32_t l_463[4] = {0x0BC4B4D4L,0x0BC4B4D4L,0x0BC4B4D4L,0x0BC4B4D4L};
        int32_t l_475[10];
        uint32_t l_476 = 0xAD7812EDL;
        int32_t *l_481 = (void*)0;
        int64_t *l_531 = &p_832->g_76;
        int16_t *l_540 = &p_832->g_96;
        uint64_t *l_541 = &p_832->g_115;
        int64_t *l_542 = &p_832->g_543;
        uint8_t *l_545 = (void*)0;
        uint8_t *l_546 = (void*)0;
        uint8_t *l_547 = &p_832->g_46;
        int i;
        for (i = 0; i < 10; i++)
            l_475[i] = 0x37F0A5CEL;
        for (p_832->g_32[9] = 6; (p_832->g_32[9] == 8); p_832->g_32[9]++)
        { /* block id: 19 */
            uint8_t *l_45[2];
            int32_t *l_50 = &p_832->g_8[5];
            int32_t l_385 = 0x132407FCL;
            int64_t *l_415 = &p_832->g_76;
            uint32_t l_442 = 4294967295UL;
            int32_t *l_467 = &l_463[2];
            int32_t *l_468 = (void*)0;
            int32_t *l_469 = &l_398;
            int32_t *l_470[4][6][6] = {{{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398}},{{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398}},{{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398}},{{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398},{&p_832->g_32[9],&l_398,&l_398,&p_832->g_8[5],&l_398,&l_398}}};
            int8_t l_488[1][6][2] = {{{(-3L),6L},{(-3L),6L},{(-3L),6L},{(-3L),6L},{(-3L),6L},{(-3L),6L}}};
            int32_t *l_512[2][2];
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_45[i] = &p_832->g_46;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 2; j++)
                    l_512[i][j] = &p_832->g_200;
            }
            (1 + 1);
        }
    }
    for (l_405 = (-22); (l_405 <= 15); ++l_405)
    { /* block id: 291 */
        uint32_t l_556 = 0x0AD9D8C9L;
        int8_t l_593 = 0x03L;
        int32_t l_605[6][9] = {{0x07C31D47L,8L,0L,0x2DE02888L,0x274848F2L,0x2DE02888L,0L,8L,0x07C31D47L},{0x07C31D47L,8L,0L,0x2DE02888L,0x274848F2L,0x2DE02888L,0L,8L,0x07C31D47L},{0x07C31D47L,8L,0L,0x2DE02888L,0x274848F2L,0x2DE02888L,0L,8L,0x07C31D47L},{0x07C31D47L,8L,0L,0x2DE02888L,0x274848F2L,0x2DE02888L,0L,8L,0x07C31D47L},{0x07C31D47L,8L,0L,0x2DE02888L,0x274848F2L,0x2DE02888L,0L,8L,0x07C31D47L},{0x07C31D47L,8L,0L,0x2DE02888L,0x274848F2L,0x2DE02888L,0L,8L,0x07C31D47L}};
        int i, j;
        for (l_474 = 0; (l_474 >= (-12)); --l_474)
        { /* block id: 294 */
            if ((atomic_inc(&p_832->g_atomic_input[34 * get_linear_group_id() + 22]) == 6))
            { /* block id: 296 */
                int32_t l_554[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
                int32_t *l_553 = &l_554[0];
                int32_t *l_555 = (void*)0;
                int i;
                l_555 = l_553;
                unsigned int result = 0;
                int l_554_i0;
                for (l_554_i0 = 0; l_554_i0 < 8; l_554_i0++) {
                    result += l_554[l_554_i0];
                }
                atomic_add(&p_832->g_special_values[34 * get_linear_group_id() + 22], result);
            }
            else
            { /* block id: 298 */
                (1 + 1);
            }
        }
        if (l_556)
            continue;
        for (p_832->g_96 = 0; (p_832->g_96 != 1); p_832->g_96 = safe_add_func_uint16_t_u_u(p_832->g_96, 4))
        { /* block id: 305 */
            int32_t l_561 = 0x6DD8BF22L;
            int32_t l_601 = (-10L);
            int32_t *l_602 = (void*)0;
            int32_t *l_603 = (void*)0;
            int32_t *l_604[5] = {&p_832->g_8[5],&p_832->g_8[5],&p_832->g_8[5],&p_832->g_8[5],&p_832->g_8[5]};
            int i;
            for (p_832->g_167 = 0; (p_832->g_167 >= 25); p_832->g_167 = safe_add_func_int8_t_s_s(p_832->g_167, 7))
            { /* block id: 308 */
                if (l_561)
                    break;
                return &p_832->g_5[4];
            }
            for (p_832->g_164 = 0; (p_832->g_164 <= 57); p_832->g_164++)
            { /* block id: 314 */
                uint32_t l_594 = 0xDFD1B0E7L;
                for (l_556 = 0; (l_556 <= 9); l_556 += 1)
                { /* block id: 317 */
                    int32_t **l_589[9][10] = {{(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0},{(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0},{(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0},{(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0},{(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0},{(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0},{(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0},{(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0},{(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0,&l_482,(void*)0,(void*)0}};
                    uint32_t *l_592 = &l_544;
                    int i, j;
                    if ((atomic_inc(&p_832->g_atomic_input[34 * get_linear_group_id() + 21]) == 2))
                    { /* block id: 319 */
                        int32_t l_564[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                        int32_t l_565 = 0x74425F5AL;
                        int32_t l_566[6][2] = {{(-8L),(-8L)},{(-8L),(-8L)},{(-8L),(-8L)},{(-8L),(-8L)},{(-8L),(-8L)},{(-8L),(-8L)}};
                        int64_t l_567 = (-1L);
                        int8_t l_568 = 0x46L;
                        int8_t l_569 = 0L;
                        int32_t l_570 = 0x6367270AL;
                        int64_t l_571[10] = {(-2L),(-3L),0x1C785CD707780DB2L,(-3L),(-2L),(-2L),(-3L),0x1C785CD707780DB2L,(-3L),(-2L)};
                        int64_t l_572 = 0x10A228A39EBDA482L;
                        int8_t l_573 = 0x77L;
                        int8_t l_574 = 0x02L;
                        int16_t l_575 = 0x218CL;
                        int8_t l_576 = 0L;
                        int16_t l_577 = (-1L);
                        uint8_t l_578 = 247UL;
                        int i, j;
                        l_578--;
                        unsigned int result = 0;
                        int l_564_i0;
                        for (l_564_i0 = 0; l_564_i0 < 9; l_564_i0++) {
                            result += l_564[l_564_i0];
                        }
                        result += l_565;
                        int l_566_i0, l_566_i1;
                        for (l_566_i0 = 0; l_566_i0 < 6; l_566_i0++) {
                            for (l_566_i1 = 0; l_566_i1 < 2; l_566_i1++) {
                                result += l_566[l_566_i0][l_566_i1];
                            }
                        }
                        result += l_567;
                        result += l_568;
                        result += l_569;
                        result += l_570;
                        int l_571_i0;
                        for (l_571_i0 = 0; l_571_i0 < 10; l_571_i0++) {
                            result += l_571[l_571_i0];
                        }
                        result += l_572;
                        result += l_573;
                        result += l_574;
                        result += l_575;
                        result += l_576;
                        result += l_577;
                        result += l_578;
                        atomic_add(&p_832->g_special_values[34 * get_linear_group_id() + 21], result);
                    }
                    else
                    { /* block id: 321 */
                        (1 + 1);
                    }
                    (*l_528) &= (((safe_add_func_uint8_t_u_u(((&p_832->g_548 != &p_832->g_200) , ((**p_832->g_188) ^= (safe_mul_func_int16_t_s_s(((((-1L) >= p_832->g_32[l_556]) , (safe_add_func_uint32_t_u_u(((*l_592) = ((GROUP_DIVERGE(1, 1) != (p_832->g_105 = (l_556 != (-4L)))) >= (safe_rshift_func_int16_t_s_u((((l_589[8][5] == ((p_832->g_32[l_556] , ((*p_832->g_331) & l_556)) , p_832->g_590)) , 0UL) != (-1L)), 12)))), 4294967295UL))) | l_593), l_561)))), l_556)) != 0x1200L) , 2L);
                    (*l_528) = (-1L);
                }
                if (l_594)
                    continue;
            }
            for (l_472 = 4; (l_472 >= 1); l_472 -= 1)
            { /* block id: 334 */
                int8_t *l_597 = (void*)0;
                int8_t *l_598 = (void*)0;
                int8_t *l_599 = &p_832->g_144;
                int32_t l_600 = 0x07CB3414L;
                int i, j;
                l_473[(l_472 + 3)][(l_472 + 1)] |= ((*l_528) , (safe_div_func_uint32_t_u_u(((((l_561 &= 0x2CL) != (((*l_599) = ((-1L) && (p_832->g_337 ^ 0UL))) | (l_593 > p_832->g_200))) && l_600) & ((**p_832->g_188) = (l_601 == (*p_832->g_189)))), 0x542F9B00L)));
                for (p_832->g_167 = 1; (p_832->g_167 <= 4); p_832->g_167 += 1)
                { /* block id: 341 */
                    int i;
                    p_832->g_5[l_472] = (void*)0;
                }
            }
            ++l_606;
        }
        (*p_27) = (void*)0;
    }
    return &p_832->g_2;
}


/* ------------------------------------------ */
/* 
 * reads : p_832->g_149 p_832->g_137 p_832->g_8
 * writes: p_832->g_149 p_832->g_76 p_832->g_137 p_832->g_8 p_832->g_5 p_832->g_144 p_832->g_96
 */
int32_t  func_35(uint64_t  p_36, int32_t ** p_37, int32_t * p_38, int32_t ** p_39, struct S0 * p_832)
{ /* block id: 178 */
    int64_t *l_361[2];
    int64_t *l_363 = &p_832->g_76;
    int32_t l_364 = 7L;
    int32_t l_377 = (-2L);
    int32_t l_378 = 0x37E570BAL;
    int32_t l_379[4] = {(-1L),(-1L),(-1L),(-1L)};
    int i;
    for (i = 0; i < 2; i++)
        l_361[i] = &p_832->g_76;
    for (p_36 = (-5); (p_36 < 14); ++p_36)
    { /* block id: 181 */
        uint16_t *l_348 = &p_832->g_149;
        int32_t l_353[1];
        int64_t *l_356 = (void*)0;
        int64_t *l_357 = &p_832->g_76;
        int32_t l_358 = 0x4E2B233BL;
        uint32_t *l_359[10] = {(void*)0,&p_832->g_137,(void*)0,(void*)0,&p_832->g_137,(void*)0,(void*)0,&p_832->g_137,(void*)0,(void*)0};
        uint8_t l_360 = 1UL;
        int64_t **l_362 = &l_357;
        int16_t l_380 = 0x7D2CL;
        int8_t l_384[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
        int i;
        for (i = 0; i < 1; i++)
            l_353[i] = 8L;
        l_364 &= (safe_mul_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s((((++(*l_348)) > (safe_mul_func_int8_t_s_s(p_36, (l_353[0] == 0xB16B618069401957L)))) & ((safe_rshift_func_int8_t_s_u((250UL == p_36), 2)) != ((l_358 = ((*l_357) = p_36)) , (((*l_362) = (l_361[0] = func_89((p_832->g_137 ^= (l_353[0] && 0x73L)), p_36, l_360, p_832))) == l_363)))), l_353[0])) & FAKE_DIVERGE(p_832->local_1_offset, get_local_id(1), 10)), p_36));
        for (p_832->g_144 = 0; (p_832->g_144 == 20); p_832->g_144 = safe_add_func_uint64_t_u_u(p_832->g_144, 1))
        { /* block id: 191 */
            int8_t l_375 = 6L;
            int32_t l_376[1];
            int i;
            for (i = 0; i < 1; i++)
                l_376[i] = 3L;
            for (p_832->g_96 = 0; (p_832->g_96 < (-13)); --p_832->g_96)
            { /* block id: 194 */
                int32_t *l_369 = &l_353[0];
                int32_t *l_370 = &p_832->g_8[4];
                int32_t l_371 = 0x7D4719B1L;
                int32_t *l_372 = &l_353[0];
                int32_t *l_373 = &l_353[0];
                int32_t *l_374[3];
                uint32_t l_381 = 0xC68033F9L;
                int i;
                for (i = 0; i < 3; i++)
                    l_374[i] = &p_832->g_8[5];
                l_381--;
                for (l_381 = 0; (l_381 <= 0); l_381 += 1)
                { /* block id: 198 */
                    int i;
                    return l_353[l_381];
                }
                if (l_384[8])
                    continue;
            }
            (*p_37) = &l_376[0];
        }
    }
    return l_364;
}


/* ------------------------------------------ */
/* 
 * reads : p_832->g_46 p_832->g_8 p_832->g_6 p_832->g_31 p_832->g_96 p_832->g_105 p_832->g_76 p_832->g_137 p_832->g_32 p_832->g_144 p_832->g_164 p_832->g_167 p_832->g_30 p_832->g_4 p_832->g_5 p_832->g_192 p_832->g_201 p_832->g_202 p_832->g_253 p_832->g_115 p_832->g_142 p_832->g_188 p_832->g_189 p_832->g_337 p_832->g_340
 * writes: p_832->g_46 p_832->g_76 p_832->g_96 p_832->g_105 p_832->g_115 p_832->g_8 p_832->g_5 p_832->g_137 p_832->g_142 p_832->g_144 p_832->g_149 p_832->g_164 p_832->g_188 p_832->g_201 p_832->g_331
 */
int32_t * func_41(uint64_t  p_42, uint8_t  p_43, int32_t * p_44, struct S0 * p_832)
{ /* block id: 21 */
    uint16_t l_51[4];
    int32_t l_57 = 5L;
    int32_t l_58 = (-4L);
    int32_t l_59 = (-5L);
    int32_t l_60 = 1L;
    int32_t l_61[7][1][8] = {{{0x4F76E5F3L,(-3L),0x3CC9DF78L,(-3L),0x4F76E5F3L,0x4F76E5F3L,(-3L),0x3CC9DF78L}},{{0x4F76E5F3L,(-3L),0x3CC9DF78L,(-3L),0x4F76E5F3L,0x4F76E5F3L,(-3L),0x3CC9DF78L}},{{0x4F76E5F3L,(-3L),0x3CC9DF78L,(-3L),0x4F76E5F3L,0x4F76E5F3L,(-3L),0x3CC9DF78L}},{{0x4F76E5F3L,(-3L),0x3CC9DF78L,(-3L),0x4F76E5F3L,0x4F76E5F3L,(-3L),0x3CC9DF78L}},{{0x4F76E5F3L,(-3L),0x3CC9DF78L,(-3L),0x4F76E5F3L,0x4F76E5F3L,(-3L),0x3CC9DF78L}},{{0x4F76E5F3L,(-3L),0x3CC9DF78L,(-3L),0x4F76E5F3L,0x4F76E5F3L,(-3L),0x3CC9DF78L}},{{0x4F76E5F3L,(-3L),0x3CC9DF78L,(-3L),0x4F76E5F3L,0x4F76E5F3L,(-3L),0x3CC9DF78L}}};
    uint64_t l_258 = 0x006E64D8D01C44CFL;
    int8_t l_261 = 0x48L;
    uint16_t l_262 = 65529UL;
    int32_t l_273 = 0x62F081EFL;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_51[i] = 0x325CL;
    if ((l_51[2] ^ l_51[2]))
    { /* block id: 22 */
        int8_t l_55[10][10][2] = {{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}},{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}},{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}},{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}},{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}},{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}},{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}},{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}},{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}},{{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L},{0x02L,0L}}};
        int32_t l_56 = 0x6EDA7DA9L;
        int32_t l_62 = (-1L);
        int32_t l_63 = 0x74251D17L;
        int32_t l_64 = 1L;
        int32_t l_65[7][8];
        uint64_t l_117 = 0UL;
        int64_t *l_168[3];
        int32_t *l_254 = &l_57;
        int32_t *l_255 = (void*)0;
        int32_t *l_257[10][10] = {{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0},{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0},{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0},{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0},{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0},{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0},{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0},{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0},{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0},{(void*)0,&l_61[4][0][1],&l_56,&l_56,&l_60,&l_60,&l_56,&l_56,&l_61[4][0][1],(void*)0}};
        int i, j, k;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 8; j++)
                l_65[i][j] = 0x5D34B728L;
        }
        for (i = 0; i < 3; i++)
            l_168[i] = &p_832->g_76;
        for (p_832->g_46 = (-6); (p_832->g_46 == 13); p_832->g_46 = safe_add_func_uint8_t_u_u(p_832->g_46, 6))
        { /* block id: 25 */
            int32_t *l_54[9][4][4] = {{{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6}},{{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6}},{{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6}},{{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6}},{{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6}},{{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6}},{{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6}},{{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6}},{{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6},{&p_832->g_6,&p_832->g_8[0],&p_832->g_8[0],&p_832->g_6}}};
            uint16_t l_66[8][3][1] = {{{0xB13EL},{0xB13EL},{0xB13EL}},{{0xB13EL},{0xB13EL},{0xB13EL}},{{0xB13EL},{0xB13EL},{0xB13EL}},{{0xB13EL},{0xB13EL},{0xB13EL}},{{0xB13EL},{0xB13EL},{0xB13EL}},{{0xB13EL},{0xB13EL},{0xB13EL}},{{0xB13EL},{0xB13EL},{0xB13EL}},{{0xB13EL},{0xB13EL},{0xB13EL}}};
            int64_t *l_75 = &p_832->g_76;
            int16_t *l_95 = &p_832->g_96;
            uint32_t *l_103 = (void*)0;
            uint32_t *l_104 = &p_832->g_105;
            uint8_t *l_112 = (void*)0;
            int8_t *l_113 = &l_55[3][9][1];
            uint64_t *l_114 = &p_832->g_115;
            int32_t l_116 = 6L;
            int32_t **l_154 = &l_54[7][3][2];
            int32_t ***l_153 = &l_154;
            int8_t l_198 = 0x2FL;
            int32_t *l_199[9][9][3] = {{{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200}},{{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200}},{{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200}},{{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200}},{{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200}},{{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200}},{{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200}},{{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200}},{{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200},{&p_832->g_200,&p_832->g_200,&p_832->g_200}}};
            int i, j, k;
            l_66[7][0][0]++;
            (*p_832->g_253) = func_69(((FAKE_DIVERGE(p_832->group_0_offset, get_group_id(0), 10) != ((*l_75) = ((((*p_44) , 0xF4E0B4B7L) , (safe_lshift_func_int8_t_s_u(l_62, 7))) > p_832->g_6))) , (l_56 = ((0L < func_77(p_832->g_31, func_83(((*l_153) = (func_86(func_89((safe_lshift_func_int16_t_s_u(((*l_95) |= (p_44 == (FAKE_DIVERGE(p_832->global_1_offset, get_global_id(1), 10) , p_44))), ((safe_rshift_func_uint16_t_u_s(((safe_add_func_int64_t_s_s(((((safe_sub_func_uint64_t_u_u(((*l_114) = ((((++(*l_104)) && ((safe_rshift_func_int8_t_s_s((((*l_113) = (safe_sub_func_int64_t_s_s(((l_112 != &p_832->g_46) , p_43), p_42))) & l_65[0][2]), 2)) || 0x64L)) <= l_56) >= p_43)), p_832->g_76)) || l_60) | l_63) <= p_832->g_8[6]), p_832->g_8[2])) && l_116), l_117)) , p_43))), p_43, (*p_44), p_832), p_832->g_46, p_832) , (void*)0)), &p_832->g_46, p_832), p_43, p_42, l_168[2], p_832)) , l_198))), p_832->g_6, &p_832->g_6, p_832);
        }
        --l_258;
        l_262--;
        l_59 ^= (((((l_61[2][0][0] == ((((safe_div_func_uint8_t_u_u(((*p_44) == ((safe_sub_func_int8_t_s_s(((safe_mod_func_int64_t_s_s(p_832->g_144, (safe_rshift_func_int8_t_s_u(((+p_832->g_8[5]) & (0x7A9DL > (l_273 & (*p_44)))), 4)))) | (safe_sub_func_uint32_t_u_u(p_832->g_30, ((*l_254) == 0x15L)))), 0x0AL)) == (*l_254))), p_42)) , 0L) | l_51[2]) && p_832->g_115)) == l_58) <= FAKE_DIVERGE(p_832->global_0_offset, get_global_id(0), 10)) > p_832->g_137) == p_42);
    }
    else
    { /* block id: 114 */
        int32_t **l_276[4][8] = {{&p_832->g_2,&p_832->g_2,&p_832->g_5[2],(void*)0,&p_832->g_5[4],&p_832->g_2,(void*)0,&p_832->g_5[1]},{&p_832->g_2,&p_832->g_2,&p_832->g_5[2],(void*)0,&p_832->g_5[4],&p_832->g_2,(void*)0,&p_832->g_5[1]},{&p_832->g_2,&p_832->g_2,&p_832->g_5[2],(void*)0,&p_832->g_5[4],&p_832->g_2,(void*)0,&p_832->g_5[1]},{&p_832->g_2,&p_832->g_2,&p_832->g_5[2],(void*)0,&p_832->g_5[4],&p_832->g_2,(void*)0,&p_832->g_5[1]}};
        int i, j;
        p_44 = (void*)0;
        for (p_832->g_142 = 0; (p_832->g_142 <= 3); p_832->g_142 += 1)
        { /* block id: 118 */
            uint64_t *l_330 = &l_258;
            uint64_t **l_329 = &l_330;
            int32_t l_332 = (-1L);
            int8_t *l_338 = &p_832->g_144;
            int32_t l_339 = 0x0482C6F2L;
            if ((atomic_inc(&p_832->g_atomic_input[34 * get_linear_group_id() + 15]) == 6))
            { /* block id: 120 */
                int32_t l_278[8] = {0x28A678AAL,1L,0x28A678AAL,0x28A678AAL,1L,0x28A678AAL,0x28A678AAL,1L};
                int32_t *l_277 = &l_278[4];
                int32_t l_293 = 0x3DEFD1B7L;
                int32_t l_294 = 0x29B185F9L;
                int32_t l_295 = 0x790AF5F0L;
                int32_t l_296 = (-10L);
                int8_t l_297 = 0x7DL;
                uint64_t l_298[4][6][1] = {{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}}};
                int32_t *l_319 = &l_278[4];
                int32_t *l_320 = &l_278[4];
                int i, j, k;
                l_277 = (void*)0;
                for (l_278[7] = 0; (l_278[7] <= 3); l_278[7] += 1)
                { /* block id: 124 */
                    uint16_t l_279 = 1UL;
                    int64_t l_280 = 0x4F190EE6359CC08CL;
                    uint8_t l_281 = 1UL;
                    int32_t l_282 = 0x2CB400D9L;
                    int i;
                    l_280 &= l_279;
                    l_282 ^= (l_281 , (-7L));
                    for (l_282 = 4; (l_282 >= 0); l_282 -= 1)
                    { /* block id: 129 */
                        int16_t l_283 = 2L;
                        uint32_t l_284 = 0x72F43A54L;
                        int16_t l_285 = (-1L);
                        int16_t l_286 = 1L;
                        int32_t l_287 = 5L;
                        uint32_t l_288[1][6];
                        uint8_t l_291 = 0x6DL;
                        uint64_t l_292 = 5UL;
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 6; j++)
                                l_288[i][j] = 0x5FCF52D2L;
                        }
                        l_284 ^= l_283;
                        l_286 = l_285;
                        l_288[0][0]++;
                        l_292 = l_291;
                    }
                }
                if ((l_298[1][3][0] = (((l_294 = ((l_293 , 0xC2A5L) , 0x6F74L)) , (l_295 , l_296)) , (l_297 = 8L))))
                { /* block id: 139 */
                    int32_t l_299[2][5];
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_299[i][j] = 0x49A36EA4L;
                    }
                    for (l_299[0][4] = 3; (l_299[0][4] >= 0); l_299[0][4] -= 1)
                    { /* block id: 142 */
                        int32_t *l_300 = (void*)0;
                        uint16_t l_301 = 0x2A3DL;
                        int32_t l_302 = 0x16B99E8AL;
                        int8_t l_303 = (-1L);
                        l_300 = l_300;
                        l_278[3] = ((l_301 = (-1L)) , l_302);
                        l_303 = (-5L);
                    }
                }
                else
                { /* block id: 148 */
                    int32_t l_304 = 0x36E22FA6L;
                    int32_t l_311[5] = {0x0CB771EAL,0x0CB771EAL,0x0CB771EAL,0x0CB771EAL,0x0CB771EAL};
                    uint32_t l_312 = 4294967295UL;
                    int8_t l_315 = 0x6CL;
                    int64_t l_316 = 2L;
                    int32_t l_317 = 0x481817E7L;
                    int16_t l_318 = 5L;
                    int i;
                    for (l_304 = 3; (l_304 >= 0); l_304 -= 1)
                    { /* block id: 151 */
                        int32_t l_305 = 1L;
                        int32_t *l_306 = &l_305;
                        int16_t l_309 = 0x63E4L;
                        int16_t *l_308 = &l_309;
                        int16_t **l_307 = &l_308;
                        int16_t **l_310 = &l_308;
                        l_278[4] ^= l_305;
                        l_306 = l_306;
                        l_310 = (l_307 = (void*)0);
                    }
                    --l_312;
                    l_293 = ((l_315 , (l_317 &= (l_297 = l_316))) , l_318);
                    l_277 = (void*)0;
                }
                l_320 = l_319;
                unsigned int result = 0;
                int l_278_i0;
                for (l_278_i0 = 0; l_278_i0 < 8; l_278_i0++) {
                    result += l_278[l_278_i0];
                }
                result += l_293;
                result += l_294;
                result += l_295;
                result += l_296;
                result += l_297;
                int l_298_i0, l_298_i1, l_298_i2;
                for (l_298_i0 = 0; l_298_i0 < 4; l_298_i0++) {
                    for (l_298_i1 = 0; l_298_i1 < 6; l_298_i1++) {
                        for (l_298_i2 = 0; l_298_i2 < 1; l_298_i2++) {
                            result += l_298[l_298_i0][l_298_i1][l_298_i2];
                        }
                    }
                }
                atomic_add(&p_832->g_special_values[34 * get_linear_group_id() + 15], result);
            }
            else
            { /* block id: 164 */
                (1 + 1);
            }
            l_339 |= ((safe_div_func_int8_t_s_s(((*l_338) = (((safe_mul_func_uint16_t_u_u((p_832->g_96 != ((safe_mul_func_uint8_t_u_u((GROUP_DIVERGE(0, 1) & 1L), p_43)) > ((safe_div_func_uint8_t_u_u((((((*l_329) = (void*)0) != (p_832->g_331 = &p_42)) & (((l_332 == (p_42 , (safe_lshift_func_uint8_t_u_s((((((((safe_mod_func_uint8_t_u_u((**p_832->g_188), 0x8CL)) != 0x41FA521AE30F8574L) && p_832->g_337) ^ FAKE_DIVERGE(p_832->group_1_offset, get_group_id(1), 10)) ^ FAKE_DIVERGE(p_832->local_2_offset, get_local_id(2), 10)) ^ 0x5DDD107BL) & 0x0CB3634AL), p_832->g_46)))) , 0xABL) > p_43)) >= p_42), (**p_832->g_188))) | p_832->g_115))), p_42)) && 8UL) > 7L)), FAKE_DIVERGE(p_832->local_1_offset, get_local_id(1), 10))) > p_43);
            if (l_262)
                break;
        }
        (*p_832->g_4) = (*p_832->g_4);
        p_44 = p_44;
    }
    (*p_832->g_340) = p_44;
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_832->g_6 p_832->g_201 p_832->g_202 p_832->g_96 p_832->g_144 p_832->g_137 p_832->g_8 p_832->g_32
 * writes: p_832->g_201 p_832->g_96 p_832->g_8
 */
int32_t * func_69(int32_t  p_70, int32_t  p_71, int32_t * p_72, struct S0 * p_832)
{ /* block id: 69 */
    int64_t l_208 = 0x5B8C9FC60A11C9E3L;
    int32_t l_212[4][2][8] = {{{0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L},{0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L}},{{0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L},{0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L}},{{0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L},{0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L}},{{0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L},{0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L,0x3248284AL,0x3248284AL,0x1305BF94L}}};
    int32_t l_220 = (-2L);
    uint64_t l_223[10];
    int8_t *l_250[7];
    int32_t *l_252 = &l_220;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_223[i] = 1UL;
    for (i = 0; i < 7; i++)
        l_250[i] = &p_832->g_251;
    (*p_832->g_202) = (p_832->g_6 , p_832->g_201);
    for (p_832->g_96 = 0; (p_832->g_96 >= (-19)); p_832->g_96 = safe_sub_func_uint8_t_u_u(p_832->g_96, 9))
    { /* block id: 73 */
        int32_t *l_205 = &p_832->g_8[5];
        int32_t *l_206 = &p_832->g_8[1];
        int32_t *l_207 = &p_832->g_8[4];
        int32_t *l_209 = &p_832->g_8[6];
        int32_t *l_210 = &p_832->g_8[5];
        int32_t *l_211 = &p_832->g_8[5];
        int32_t *l_213 = (void*)0;
        int32_t *l_214 = &l_212[0][1][0];
        int32_t *l_215 = &p_832->g_8[6];
        int32_t *l_216 = (void*)0;
        int32_t *l_217 = &l_212[0][1][1];
        int32_t l_218 = (-1L);
        int32_t *l_219[2][4] = {{&l_212[0][1][0],&l_212[0][1][0],&l_212[0][1][0],&l_212[0][1][0]},{&l_212[0][1][0],&l_212[0][1][0],&l_212[0][1][0],&l_212[0][1][0]}};
        int8_t l_221[8] = {0x5AL,0x5AL,0x5AL,0x5AL,0x5AL,0x5AL,0x5AL,0x5AL};
        int64_t l_222 = 0x7655B96C97FDCC1EL;
        int i, j;
        l_223[8]++;
        if (l_212[1][0][2])
        { /* block id: 75 */
            (*l_209) = (*p_72);
        }
        else
        { /* block id: 77 */
            if ((atomic_inc(&p_832->l_atomic_input[4]) == 1))
            { /* block id: 79 */
                int32_t l_226 = 0x09C799DEL;
                int16_t l_239[6] = {6L,0x6D7FL,6L,6L,0x6D7FL,6L};
                uint8_t l_240 = 0x37L;
                uint32_t l_241 = 0x1C7358A4L;
                int i;
                for (l_226 = 4; (l_226 >= 1); l_226 -= 1)
                { /* block id: 82 */
                    int32_t l_227 = (-1L);
                    int8_t l_228 = (-9L);
                    uint32_t l_229 = 0x884DB12DL;
                    int16_t l_230 = (-1L);
                    int i;
                    (1 + 1);
                }
                l_241 ^= (l_240 = l_239[3]);
                unsigned int result = 0;
                result += l_226;
                int l_239_i0;
                for (l_239_i0 = 0; l_239_i0 < 6; l_239_i0++) {
                    result += l_239[l_239_i0];
                }
                result += l_240;
                result += l_241;
                atomic_add(&p_832->l_special_values[4], result);
            }
            else
            { /* block id: 100 */
                (1 + 1);
            }
            if (l_223[8])
                break;
        }
    }
    (*l_252) |= (safe_mul_func_int8_t_s_s(l_223[8], (((safe_mul_func_uint8_t_u_u(((((safe_div_func_uint32_t_u_u(p_832->g_144, p_832->g_137)) | (safe_sub_func_int8_t_s_s((l_212[2][1][7] = p_832->g_8[5]), (~((((void*)0 != &p_832->g_144) > ((((p_832->g_32[3] || ((void*)0 != &l_208)) & l_208) && 0x89L) | (-10L))) & p_832->g_96))))) , 0x6BCDE80103DACCB8L) > l_223[8]), (-10L))) && 0xDBL) <= p_70)));
    return p_72;
}


/* ------------------------------------------ */
/* 
 * reads : p_832->g_32 p_832->g_46 p_832->g_164 p_832->g_30 p_832->g_4 p_832->g_5 p_832->g_192 p_832->g_76 p_832->g_8 p_832->g_137
 * writes: p_832->g_164 p_832->g_188 p_832->g_5 p_832->g_144
 */
uint32_t  func_77(uint32_t  p_78, int32_t  p_79, int32_t  p_80, int64_t  p_81, int64_t * p_82, struct S0 * p_832)
{ /* block id: 58 */
    int64_t l_169[10] = {3L,3L,3L,3L,3L,3L,3L,3L,3L,3L};
    uint16_t *l_180 = &p_832->g_164;
    uint8_t *l_183 = (void*)0;
    int16_t l_186[10][3][4] = {{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}},{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}},{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}},{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}},{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}},{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}},{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}},{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}},{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}},{{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)},{0x74FAL,(-6L),0L,(-1L)}}};
    uint32_t l_187 = 1UL;
    int32_t l_190 = 0x56827A0DL;
    uint8_t l_197 = 0xBCL;
    int i, j, k;
    l_169[8] = (-1L);
    l_190 = (safe_lshift_func_uint8_t_u_s((safe_sub_func_uint32_t_u_u(((p_832->g_188 = ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((p_832->g_32[9] & (FAKE_DIVERGE(p_832->global_1_offset, get_global_id(1), 10) , ((p_832->g_46 <= ((*l_180) |= ((-1L) > l_169[6]))) && ((*l_180) &= (safe_mod_func_uint8_t_u_u(p_79, ((&p_832->g_142 != l_183) && (p_81 , (safe_lshift_func_uint8_t_u_u(l_186[3][0][0], l_187)))))))))), 0x3364L)), p_80)), l_186[3][0][0])) , &l_183)) != &l_183), p_832->g_30)), 6));
    (*p_832->g_192) = (*p_832->g_4);
    l_190 = ((safe_rshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_s((((p_832->g_144 = (((p_79 , (void*)0) == (void*)0) == l_190)) && 0L) <= (p_832->g_76 ^ GROUP_DIVERGE(2, 1))), ((((l_197 , ((p_80 > p_81) != p_79)) , p_79) != p_832->g_8[5]) == p_832->g_137))), 3)) , p_80);
    return p_79;
}


/* ------------------------------------------ */
/* 
 * reads : p_832->g_32 p_832->g_164 p_832->g_167
 * writes: p_832->g_149 p_832->g_164
 */
int32_t  func_83(int32_t ** p_84, uint8_t * p_85, struct S0 * p_832)
{ /* block id: 52 */
    int32_t *l_155 = &p_832->g_8[6];
    uint16_t *l_162 = &p_832->g_149;
    uint16_t *l_163[5][9] = {{&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164},{&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164},{&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164},{&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164},{&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164,&p_832->g_164}};
    int32_t *l_165[8][7][4] = {{{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]}},{{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]}},{{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]}},{{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]}},{{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]}},{{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]}},{{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]}},{{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]},{&p_832->g_32[9],&p_832->g_8[5],&p_832->g_32[8],&p_832->g_8[5]}}};
    int16_t l_166 = 0x19D2L;
    int i, j, k;
    l_155 = &p_832->g_32[9];
    l_166 = (((safe_sub_func_uint32_t_u_u((*l_155), 4294967289UL)) < (0x51CBB092B1045D44L & (safe_rshift_func_int16_t_s_u((1L && ((*l_162) = 0xEFDAL)), (p_832->g_164 &= 0x79D2L))))) || ((0x49FD4B6AL ^ (4294967295UL | (-9L))) < (*l_155)));
    return p_832->g_167;
}


/* ------------------------------------------ */
/* 
 * reads : p_832->g_137 p_832->g_32 p_832->g_144 p_832->g_8
 * writes: p_832->g_137 p_832->g_142 p_832->g_144 p_832->g_149 p_832->g_8
 */
int32_t  func_86(int64_t * p_87, int8_t  p_88, struct S0 * p_832)
{ /* block id: 38 */
    int32_t *l_124 = &p_832->g_8[1];
    int32_t *l_125 = &p_832->g_8[5];
    int32_t *l_126 = &p_832->g_8[5];
    int32_t *l_127 = &p_832->g_8[5];
    int32_t *l_128 = &p_832->g_8[5];
    int32_t *l_129 = &p_832->g_8[5];
    int32_t *l_130[2];
    uint32_t l_131[4];
    int8_t l_152 = 0x48L;
    int i;
    for (i = 0; i < 2; i++)
        l_130[i] = &p_832->g_8[5];
    for (i = 0; i < 4; i++)
        l_131[i] = 0x8F97866BL;
    --l_131[2];
    for (p_88 = 15; (p_88 <= 6); p_88--)
    { /* block id: 42 */
        uint16_t *l_136 = (void*)0;
        uint8_t *l_140 = (void*)0;
        uint8_t *l_141 = &p_832->g_142;
        int8_t *l_143 = &p_832->g_144;
        int32_t l_147 = 0x697FC644L;
        uint16_t *l_148 = &p_832->g_149;
        (*l_127) = ((((p_832->g_137 ^= FAKE_DIVERGE(p_832->group_1_offset, get_group_id(1), 10)) | (&p_832->g_96 != (void*)0)) && ((*l_148) = ((~(0xBCD6L < (((!(safe_mul_func_int16_t_s_s((((*l_141) = p_832->g_32[9]) || 0L), ((((*l_143) |= 0x2CL) ^ (*l_128)) , ((l_147 ^ ((((((FAKE_DIVERGE(p_832->global_0_offset, get_global_id(0), 10) , (void*)0) != l_128) >= 1UL) < 0x445193B0L) | l_147) < 8UL)) != p_88))))) , (*l_129)) , 1UL))) != p_88))) >= l_147);
    }
    l_152 &= ((*l_128) & (safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 4)));
    return (*l_129);
}


/* ------------------------------------------ */
/* 
 * reads : p_832->g_8
 * writes: p_832->g_8 p_832->g_5
 */
int64_t * func_89(uint32_t  p_90, uint64_t  p_91, int32_t  p_92, struct S0 * p_832)
{ /* block id: 32 */
    int32_t l_118 = 0x598B40E0L;
    int32_t *l_119 = &p_832->g_8[3];
    int32_t **l_120 = &p_832->g_5[4];
    uint8_t *l_121 = &p_832->g_46;
    uint8_t *l_123 = &p_832->g_46;
    uint8_t **l_122 = &l_123;
    (*l_119) ^= l_118;
    (*l_120) = &p_832->g_32[9];
    (*l_119) = (l_121 == ((*l_122) = ((*l_119) , l_121)));
    return &p_832->g_76;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j;
    __local volatile uint32_t l_atomic_input[34];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 34; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[34];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 34; i++)
            l_special_values[i] = 0;
    struct S0 c_833;
    struct S0* p_832 = &c_833;
    struct S0 c_834 = {
        (void*)0, // p_832->g_2
        6L, // p_832->g_6
        {&p_832->g_6,&p_832->g_6,&p_832->g_6,&p_832->g_6,&p_832->g_6}, // p_832->g_5
        &p_832->g_5[4], // p_832->g_4
        {1L,1L,1L,1L,1L,1L,1L}, // p_832->g_8
        0x7F59EC13L, // p_832->g_30
        0x6255D580L, // p_832->g_31
        {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)}, // p_832->g_32
        0x34L, // p_832->g_46
        3L, // p_832->g_76
        1L, // p_832->g_96
        0x06647E6CL, // p_832->g_105
        0x0544DF11EF485BC6L, // p_832->g_115
        0x5C3AA76FL, // p_832->g_137
        255UL, // p_832->g_142
        0x75L, // p_832->g_144
        65535UL, // p_832->g_149
        1UL, // p_832->g_164
        4294967288UL, // p_832->g_167
        &p_832->g_142, // p_832->g_189
        &p_832->g_189, // p_832->g_188
        (void*)0, // p_832->g_191
        &p_832->g_5[4], // p_832->g_192
        0L, // p_832->g_200
        (void*)0, // p_832->g_201
        &p_832->g_201, // p_832->g_202
        0x1EL, // p_832->g_251
        &p_832->g_5[4], // p_832->g_253
        (-1L), // p_832->g_256
        &p_832->g_115, // p_832->g_331
        0x324D5EF6L, // p_832->g_337
        &p_832->g_5[4], // p_832->g_340
        (-6L), // p_832->g_543
        5L, // p_832->g_548
        &p_832->g_200, // p_832->g_591
        &p_832->g_591, // p_832->g_590
        {&p_832->g_331,&p_832->g_331,&p_832->g_331}, // p_832->g_677
        &p_832->g_331, // p_832->g_678
        18446744073709551615UL, // p_832->g_682
        &p_832->g_32[9], // p_832->g_727
        {&p_832->g_6,&p_832->g_6,&p_832->g_6,&p_832->g_6,&p_832->g_6}, // p_832->g_745
        &p_832->g_6, // p_832->g_746
        (void*)0, // p_832->g_772
        {{&p_832->g_772,&p_832->g_772,&p_832->g_772},{&p_832->g_772,&p_832->g_772,&p_832->g_772}}, // p_832->g_771
        &p_832->g_8[2], // p_832->g_831
        sequence_input[get_global_id(0)], // p_832->global_0_offset
        sequence_input[get_global_id(1)], // p_832->global_1_offset
        sequence_input[get_global_id(2)], // p_832->global_2_offset
        sequence_input[get_local_id(0)], // p_832->local_0_offset
        sequence_input[get_local_id(1)], // p_832->local_1_offset
        sequence_input[get_local_id(2)], // p_832->local_2_offset
        sequence_input[get_group_id(0)], // p_832->group_0_offset
        sequence_input[get_group_id(1)], // p_832->group_1_offset
        sequence_input[get_group_id(2)], // p_832->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_833 = c_834;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_832);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_832->g_6, "p_832->g_6", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_832->g_8[i], "p_832->g_8[i]", print_hash_value);

    }
    transparent_crc(p_832->g_30, "p_832->g_30", print_hash_value);
    transparent_crc(p_832->g_31, "p_832->g_31", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_832->g_32[i], "p_832->g_32[i]", print_hash_value);

    }
    transparent_crc(p_832->g_46, "p_832->g_46", print_hash_value);
    transparent_crc(p_832->g_76, "p_832->g_76", print_hash_value);
    transparent_crc(p_832->g_96, "p_832->g_96", print_hash_value);
    transparent_crc(p_832->g_105, "p_832->g_105", print_hash_value);
    transparent_crc(p_832->g_115, "p_832->g_115", print_hash_value);
    transparent_crc(p_832->g_137, "p_832->g_137", print_hash_value);
    transparent_crc(p_832->g_142, "p_832->g_142", print_hash_value);
    transparent_crc(p_832->g_144, "p_832->g_144", print_hash_value);
    transparent_crc(p_832->g_149, "p_832->g_149", print_hash_value);
    transparent_crc(p_832->g_164, "p_832->g_164", print_hash_value);
    transparent_crc(p_832->g_167, "p_832->g_167", print_hash_value);
    transparent_crc(p_832->g_200, "p_832->g_200", print_hash_value);
    transparent_crc(p_832->g_251, "p_832->g_251", print_hash_value);
    transparent_crc(p_832->g_256, "p_832->g_256", print_hash_value);
    transparent_crc(p_832->g_337, "p_832->g_337", print_hash_value);
    transparent_crc(p_832->g_543, "p_832->g_543", print_hash_value);
    transparent_crc(p_832->g_548, "p_832->g_548", print_hash_value);
    transparent_crc(p_832->g_682, "p_832->g_682", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 34; i++)
            transparent_crc(p_832->g_special_values[i + 34 * get_linear_group_id()], "p_832->g_special_values[i + 34 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 34; i++)
            transparent_crc(p_832->l_special_values[i], "p_832->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
