// --atomics 60 ---fake_divergence -g 19,41,11 -l 19,1,1
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


// Seed: 104

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_110;
    int16_t g_133;
    uint8_t g_162;
    int16_t g_184;
    int16_t *g_183;
    int32_t g_187[4];
    int32_t *g_236[6];
    int32_t **g_235;
    uint64_t g_268;
    uint32_t g_281;
    uint32_t g_284;
    int32_t *g_289;
    int32_t ** volatile g_288;
    int16_t g_300;
    int8_t g_316[7];
    int8_t g_328;
    volatile int32_t g_337;
    volatile uint16_t g_375;
    uint8_t g_384;
    uint16_t g_402[7];
    int64_t g_411;
    int32_t g_438;
    int32_t g_461;
    uint64_t g_480;
    int64_t g_489;
    int32_t * volatile g_497[1][8][3];
    int32_t *** volatile g_504;
    int32_t *** volatile g_506;
    int64_t g_531;
    int64_t *g_604;
    int64_t * volatile * volatile g_603;
    int64_t **g_621;
    int64_t ***g_620;
    int64_t ***g_625[2][6][2];
    int32_t *g_637;
    int32_t **g_636;
    int64_t *g_643;
    int64_t **g_642[6][9];
    int64_t *** volatile g_641;
    int32_t * volatile g_693;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint8_t  func_1(struct S0 * p_715);
uint32_t  func_114(int64_t  p_115, uint32_t  p_116, int32_t  p_117, int32_t ** p_118, struct S0 * p_715);
uint32_t  func_122(uint8_t  p_123, struct S0 * p_715);
uint8_t  func_138(int32_t ** p_139, uint32_t  p_140, int8_t  p_141, uint64_t  p_142, int64_t  p_143, struct S0 * p_715);
int32_t ** func_144(int16_t * p_145, struct S0 * p_715);
int16_t * func_146(uint64_t  p_147, int64_t  p_148, int16_t * p_149, int16_t * p_150, uint32_t  p_151, struct S0 * p_715);
int64_t  func_152(int32_t * p_153, int16_t * p_154, int16_t * p_155, int32_t * p_156, struct S0 * p_715);
int16_t  func_163(int64_t  p_164, int16_t * p_165, struct S0 * p_715);
uint64_t  func_169(int64_t  p_170, int32_t * p_171, uint32_t  p_172, uint32_t  p_173, struct S0 * p_715);
uint16_t  func_174(uint64_t  p_175, uint8_t  p_176, uint32_t  p_177, int16_t * p_178, int16_t * p_179, struct S0 * p_715);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_715->g_110
 * writes: p_715->g_110
 */
uint8_t  func_1(struct S0 * p_715)
{ /* block id: 4 */
    int64_t l_119 = 0x30802EBDDE1E780FL;
    int32_t *l_157 = &p_715->g_110;
    int32_t l_695 = 0x30E1BB76L;
    if ((atomic_inc(&p_715->g_atomic_input[60 * get_linear_group_id() + 53]) == 9))
    { /* block id: 6 */
        int32_t l_2 = 0x0256A9EFL;
        int32_t l_109 = 0x2667C2D9L;
        if (l_2)
        { /* block id: 7 */
            int32_t l_3 = 0x6801FC3EL;
            uint32_t l_27[5];
            int32_t *l_32 = &l_3;
            int32_t **l_31 = &l_32;
            int64_t l_33 = 0x149CFF29C214F163L;
            uint8_t l_99[7] = {0xB0L,0xB0L,0xB0L,0xB0L,0xB0L,0xB0L,0xB0L};
            int i;
            for (i = 0; i < 5; i++)
                l_27[i] = 4294967291UL;
            for (l_3 = 0; (l_3 == 16); l_3 = safe_add_func_uint64_t_u_u(l_3, 3))
            { /* block id: 10 */
                int32_t l_6 = (-10L);
                for (l_6 = 0; (l_6 > (-18)); l_6 = safe_sub_func_int64_t_s_s(l_6, 1))
                { /* block id: 13 */
                    uint32_t l_9 = 0x9C63C407L;
                    int32_t l_10 = 0x40874B28L;
                    uint8_t l_11 = 0x55L;
                    int32_t l_12[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_12[i] = 0L;
                    l_12[0] = ((l_9 = 0x5C285CE9L) , (l_11 |= l_10));
                    for (l_12[1] = 13; (l_12[1] > (-4)); l_12[1]--)
                    { /* block id: 19 */
                        int32_t l_16 = 1L;
                        int32_t *l_15[1];
                        int32_t *l_17 = &l_16;
                        int32_t *l_18 = &l_16;
                        int32_t *l_19 = &l_16;
                        int32_t *l_20 = &l_16;
                        int32_t *l_21 = &l_16;
                        int32_t *l_22 = (void*)0;
                        int32_t l_23 = 1L;
                        uint16_t l_24 = 0UL;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_15[i] = &l_16;
                        l_17 = l_15[0];
                        l_22 = (l_21 = (l_20 = (l_18 = (l_19 = l_18))));
                        l_24 = l_23;
                    }
                }
                for (l_6 = (-11); (l_6 < 19); ++l_6)
                { /* block id: 31 */
                    int32_t l_28 = 0x374FD522L;
                    uint16_t l_29 = 9UL;
                    uint64_t l_30 = 0xB51F0EF2F37FC033L;
                    for (l_28 = 0; l_28 < 5; l_28 += 1)
                    {
                        l_27[l_28] = 1UL;
                    }
                    l_30 = l_29;
                }
            }
            l_31 = (void*)0;
            if (l_33)
            { /* block id: 37 */
                int32_t l_34 = 0x338E5161L;
                int64_t l_65[4][2][4] = {{{0x0327BC4A6B1F15F1L,0x3D1739C36DE1F29AL,1L,0x0FB0C4F31BC4638BL},{0x0327BC4A6B1F15F1L,0x3D1739C36DE1F29AL,1L,0x0FB0C4F31BC4638BL}},{{0x0327BC4A6B1F15F1L,0x3D1739C36DE1F29AL,1L,0x0FB0C4F31BC4638BL},{0x0327BC4A6B1F15F1L,0x3D1739C36DE1F29AL,1L,0x0FB0C4F31BC4638BL}},{{0x0327BC4A6B1F15F1L,0x3D1739C36DE1F29AL,1L,0x0FB0C4F31BC4638BL},{0x0327BC4A6B1F15F1L,0x3D1739C36DE1F29AL,1L,0x0FB0C4F31BC4638BL}},{{0x0327BC4A6B1F15F1L,0x3D1739C36DE1F29AL,1L,0x0FB0C4F31BC4638BL},{0x0327BC4A6B1F15F1L,0x3D1739C36DE1F29AL,1L,0x0FB0C4F31BC4638BL}}};
                int32_t l_66 = 1L;
                int64_t l_67 = 0x1CE790008233887EL;
                uint8_t l_68 = 0UL;
                uint16_t l_71[5];
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_71[i] = 65535UL;
                for (l_34 = (-15); (l_34 < (-11)); l_34 = safe_add_func_uint32_t_u_u(l_34, 3))
                { /* block id: 40 */
                    int16_t l_37[9] = {0x6A77L,0x77FCL,0x6A77L,0x6A77L,0x77FCL,0x6A77L,0x6A77L,0x77FCL,0x6A77L};
                    int16_t l_38 = 6L;
                    uint32_t l_39 = 0x4ACD6BA8L;
                    uint32_t l_42 = 0x140A9711L;
                    int8_t l_43 = 0x6AL;
                    uint64_t l_44 = 0UL;
                    uint8_t l_45 = 1UL;
                    uint32_t l_46[6] = {4294967290UL,0x98093AF8L,4294967290UL,4294967290UL,0x98093AF8L,4294967290UL};
                    int32_t l_47 = 1L;
                    int32_t l_48 = 0x2D863E32L;
                    uint32_t l_49 = 7UL;
                    int16_t l_50[8] = {0x1898L,0x1898L,0x1898L,0x1898L,0x1898L,0x1898L,0x1898L,0x1898L};
                    int i;
                    l_39--;
                    l_47 = (GROUP_DIVERGE(1, 1) , (l_42 , (((l_45 &= (l_2 = ((l_43 |= (l_27[3] |= FAKE_DIVERGE(p_715->local_2_offset, get_local_id(2), 10))) , l_44))) , l_46[0]) , 0L)));
                    l_50[7] = (l_49 = ((*l_32) ^= l_48));
                    for (l_46[0] = 0; (l_46[0] < 7); l_46[0] = safe_add_func_uint64_t_u_u(l_46[0], 2))
                    { /* block id: 52 */
                        int32_t l_53 = 0x11165901L;
                        int16_t l_54 = 0x0AC7L;
                        int32_t l_55 = 0x2B2A8F30L;
                        uint32_t l_56 = 1UL;
                        int8_t l_59 = (-1L);
                        int16_t l_60 = 0x48B0L;
                        int32_t l_61 = (-1L);
                        int32_t l_62 = 0x5D09421AL;
                        int16_t l_63 = 0x20E7L;
                        uint8_t l_64 = 255UL;
                        (*l_32) &= l_53;
                        ++l_56;
                        l_62 |= (((*l_32) = l_59) , ((l_60 , l_61) , 0x3E67B33DL));
                        l_64 |= ((*l_32) = l_63);
                    }
                }
                --l_68;
                if (l_71[4])
                { /* block id: 62 */
                    int32_t l_72 = (-3L);
                    for (l_72 = 1; (l_72 != 9); l_72++)
                    { /* block id: 65 */
                        uint8_t l_75 = 2UL;
                        uint32_t l_76 = 4294967286UL;
                        int16_t l_77[9] = {0x035AL,0x035AL,0x035AL,0x035AL,0x035AL,0x035AL,0x035AL,0x035AL,0x035AL};
                        int i;
                        (*l_32) |= (l_75 , (l_76 , l_77[5]));
                    }
                }
                else
                { /* block id: 68 */
                    int8_t l_78 = (-1L);
                    if (l_78)
                    { /* block id: 69 */
                        (*l_32) = (-3L);
                    }
                    else
                    { /* block id: 71 */
                        int32_t l_80 = 0x35A07F58L;
                        int32_t *l_79[7] = {&l_80,&l_80,&l_80,&l_80,&l_80,&l_80,&l_80};
                        int32_t *l_81 = (void*)0;
                        uint64_t l_82 = 0x9BA90DD0679804E6L;
                        int32_t *l_85 = &l_80;
                        int32_t *l_86 = &l_80;
                        uint64_t l_87 = 0x5CF3152899D3D8B2L;
                        int i;
                        l_81 = (l_32 = l_79[4]);
                        l_82--;
                        l_86 = l_85;
                        l_3 = l_87;
                    }
                }
            }
            else
            { /* block id: 79 */
                int32_t l_88[10][8] = {{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L},{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L},{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L},{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L},{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L},{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L},{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L},{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L},{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L},{0L,0L,0L,0x13354A90L,0x54CFDD0FL,0x23BA0E38L,0x39A650DEL,0x0CBA4741L}};
                int16_t l_98 = 0x4961L;
                int i, j;
                for (l_88[7][3] = 4; (l_88[7][3] >= 0); l_88[7][3] -= 1)
                { /* block id: 82 */
                    int64_t l_89 = 0L;
                    uint16_t l_90 = 0x7380L;
                    int32_t l_93 = 0L;
                    int i;
                    l_89 = 8L;
                    l_90--;
                    l_93 ^= l_27[l_88[7][3]];
                    for (l_90 = 0; (l_90 <= 4); l_90 += 1)
                    { /* block id: 88 */
                        int32_t l_94 = 0x123A7432L;
                        uint64_t l_95[1][4] = {{8UL,8UL,8UL,8UL}};
                        uint32_t l_96 = 0xDFDC5D49L;
                        int32_t l_97 = 0L;
                        int i, j;
                        l_97 |= (((l_94 &= (l_27[l_88[7][3]] , l_27[l_90])) , l_95[0][2]) , l_96);
                    }
                }
                (*l_32) &= (GROUP_DIVERGE(0, 1) , l_98);
            }
            ++l_99[6];
        }
        else
        { /* block id: 96 */
            int32_t *l_102 = (void*)0;
            int32_t l_104 = 0x68431F48L;
            int32_t *l_103 = &l_104;
            int32_t **l_105[8] = {&l_103,&l_103,&l_103,&l_103,&l_103,&l_103,&l_103,&l_103};
            int32_t **l_106 = (void*)0;
            int32_t *l_107 = (void*)0;
            int32_t *l_108 = &l_104;
            int i;
            l_103 = l_102;
            l_105[2] = (l_106 = l_105[2]);
            l_108 = l_107;
        }
        l_109 &= 0x71577CD1L;
        unsigned int result = 0;
        result += l_2;
        result += l_109;
        atomic_add(&p_715->g_special_values[60 * get_linear_group_id() + 53], result);
    }
    else
    { /* block id: 103 */
        (1 + 1);
    }
    for (p_715->g_110 = (-30); (p_715->g_110 < 19); p_715->g_110++)
    { /* block id: 108 */
        int16_t *l_130 = (void*)0;
        int16_t *l_131 = (void*)0;
        int16_t *l_132 = &p_715->g_133;
        int32_t l_598 = 0x34F1FCDDL;
        uint16_t l_599 = 1UL;
        int32_t *l_694[2];
        int i;
        for (i = 0; i < 2; i++)
            l_694[i] = &p_715->g_461;
        (1 + 1);
    }
    return (*l_157);
}


/* ------------------------------------------ */
/* 
 * reads : p_715->g_636 p_715->g_411 p_715->g_641 p_715->g_284 p_715->g_637 p_715->g_643 p_715->g_531 p_715->g_183 p_715->g_184 p_715->g_384 p_715->g_693 p_715->g_461 p_715->g_110
 * writes: p_715->g_637 p_715->g_411 p_715->g_642 p_715->g_284 p_715->g_187 p_715->g_268 p_715->g_461
 */
uint32_t  func_114(int64_t  p_115, uint32_t  p_116, int32_t  p_117, int32_t ** p_118, struct S0 * p_715)
{ /* block id: 374 */
    int32_t *l_638 = &p_715->g_187[2];
    int8_t *l_676[7] = {&p_715->g_328,&p_715->g_316[2],&p_715->g_328,&p_715->g_328,&p_715->g_316[2],&p_715->g_328,&p_715->g_328};
    int64_t l_677 = 0x3D7B8AADCD47BA45L;
    uint8_t *l_679 = &p_715->g_162;
    uint8_t **l_678 = &l_679;
    uint8_t l_684[2][2][9] = {{{0UL,7UL,7UL,0UL,0UL,7UL,7UL,0UL,0UL},{0UL,7UL,7UL,0UL,0UL,7UL,7UL,0UL,0UL}},{{0UL,7UL,7UL,0UL,0UL,7UL,7UL,0UL,0UL},{0UL,7UL,7UL,0UL,0UL,7UL,7UL,0UL,0UL}}};
    uint64_t *l_689 = &p_715->g_268;
    uint64_t *l_692[1][1][9] = {{{&p_715->g_480,&p_715->g_480,&p_715->g_480,&p_715->g_480,&p_715->g_480,&p_715->g_480,&p_715->g_480,&p_715->g_480,&p_715->g_480}}};
    int i, j, k;
    (*p_715->g_636) = l_638;
    for (p_715->g_411 = 3; (p_715->g_411 >= 0); p_715->g_411 -= 1)
    { /* block id: 378 */
        int64_t *l_640[3][7][2] = {{{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489}},{{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489}},{{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489},{&p_715->g_531,&p_715->g_489}}};
        int64_t **l_639[7][7] = {{&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0]},{&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0]},{&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0]},{&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0]},{&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0]},{&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0]},{&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0],(void*)0,&l_640[2][3][0],&l_640[2][3][0]}};
        int i, j, k;
        (*p_715->g_641) = l_639[1][5];
    }
    for (p_715->g_284 = (-20); (p_715->g_284 != 5); p_715->g_284 = safe_add_func_uint32_t_u_u(p_715->g_284, 7))
    { /* block id: 383 */
        (*p_118) = (*p_118);
    }
    (*p_715->g_693) &= (((safe_sub_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(((*l_638) = 1L), 6)), (+((l_677 > (((*l_678) = l_676[6]) == &p_715->g_384)) | ((((((safe_lshift_func_uint16_t_u_s((safe_add_func_uint8_t_u_u(l_684[0][1][7], ((safe_div_func_int32_t_s_s(((*p_715->g_643) | ((*l_689) = (safe_add_func_int32_t_s_s(p_115, 0x47451FF2L)))), (safe_mod_func_int16_t_s_s(((*p_715->g_183) < FAKE_DIVERGE(p_715->global_0_offset, get_global_id(0), 10)), (*p_715->g_183))))) && 0x6D079B57749716A4L))), p_115)) || 0xED12L) & p_115) | p_715->g_384) , l_689) != l_692[0][0][3]))))) , 7L) != p_116);
    return p_715->g_110;
}


/* ------------------------------------------ */
/* 
 * reads : p_715->g_603 p_715->g_328 p_715->g_235 p_715->g_604 p_715->g_620
 * writes: p_715->g_603 p_715->g_328 p_715->g_384 p_715->g_289 p_715->g_236 p_715->g_620 p_715->g_625 p_715->g_316 p_715->g_489
 */
uint32_t  func_122(uint8_t  p_123, struct S0 * p_715)
{ /* block id: 351 */
    int64_t * volatile * volatile *l_605[1];
    int32_t l_610 = 0x435C6CEEL;
    uint32_t *l_613[9][10] = {{&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284},{&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284},{&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284},{&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284},{&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284},{&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284},{&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284},{&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284},{&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284,&p_715->g_284}};
    int64_t ****l_622 = &p_715->g_620;
    int64_t ***l_624[9];
    int64_t ****l_623 = &l_624[6];
    int8_t *l_626 = &p_715->g_316[2];
    int32_t l_629 = 0x13388D81L;
    uint8_t *l_630 = (void*)0;
    uint8_t *l_631 = (void*)0;
    uint8_t *l_632[7];
    int64_t *l_633 = &p_715->g_489;
    int64_t l_634 = 1L;
    int32_t l_635[2];
    int i, j;
    for (i = 0; i < 1; i++)
        l_605[i] = &p_715->g_603;
    for (i = 0; i < 9; i++)
        l_624[i] = &p_715->g_621;
    for (i = 0; i < 7; i++)
        l_632[i] = &p_715->g_384;
    for (i = 0; i < 2; i++)
        l_635[i] = 0x09DBC24CL;
    p_715->g_603 = p_715->g_603;
    for (p_715->g_328 = 0; (p_715->g_328 == (-28)); p_715->g_328 = safe_sub_func_uint32_t_u_u(p_715->g_328, 1))
    { /* block id: 355 */
        for (p_715->g_384 = (-21); (p_715->g_384 <= 25); ++p_715->g_384)
        { /* block id: 358 */
            if (l_610)
                break;
            (*p_715->g_235) = &l_610;
        }
        if (p_123)
            break;
    }
    l_635[0] ^= ((safe_div_func_uint64_t_u_u(((l_610 = p_123) && ((0x7F17L && ((safe_rshift_func_int16_t_s_u(((void*)0 != (*p_715->g_603)), 14)) && (safe_sub_func_int8_t_s_s(((*l_626) = (l_610 = (safe_lshift_func_int16_t_s_s((((*l_623) = ((*l_622) = p_715->g_620)) != (p_715->g_625[0][4][1] = &p_715->g_621)), 3)))), (safe_sub_func_uint8_t_u_u(l_629, (p_123 = GROUP_DIVERGE(2, 1)))))))) | ((+8L) & ((*l_633) = ((void*)0 == &l_629))))), l_634)) | l_629);
    return l_610;
}


/* ------------------------------------------ */
/* 
 * reads : p_715->g_384
 * writes:
 */
uint8_t  func_138(int32_t ** p_139, uint32_t  p_140, int8_t  p_141, uint64_t  p_142, int64_t  p_143, struct S0 * p_715)
{ /* block id: 348 */
    uint32_t l_600 = 4294967287UL;
    int32_t *l_601[2];
    uint32_t l_602 = 4294967289UL;
    int i;
    for (i = 0; i < 2; i++)
        l_601[i] = &p_715->g_187[1];
    l_602 = l_600;
    return p_715->g_384;
}


/* ------------------------------------------ */
/* 
 * reads : p_715->g_235 p_715->g_506
 * writes: p_715->g_289 p_715->g_236
 */
int32_t ** func_144(int16_t * p_145, struct S0 * p_715)
{ /* block id: 345 */
    int32_t *l_596[3];
    int32_t **l_597 = &l_596[1];
    int i;
    for (i = 0; i < 3; i++)
        l_596[i] = &p_715->g_110;
    (*p_715->g_235) = l_596[0];
    return (*p_715->g_506);
}


/* ------------------------------------------ */
/* 
 * reads : p_715->g_461 p_715->g_235 p_715->g_183 p_715->g_184 p_715->g_187 p_715->g_300 p_715->g_268 p_715->g_316 p_715->g_506 p_715->g_162 p_715->g_489 p_715->g_337 p_715->g_384 p_715->g_133 p_715->g_497 p_715->g_281
 * writes: p_715->g_461 p_715->g_236 p_715->g_187 p_715->g_300 p_715->g_268 p_715->g_328 p_715->g_235 p_715->g_489 p_715->g_531 p_715->g_289 p_715->g_316 p_715->g_162 p_715->g_402
 */
int16_t * func_146(uint64_t  p_147, int64_t  p_148, int16_t * p_149, int16_t * p_150, uint32_t  p_151, struct S0 * p_715)
{ /* block id: 264 */
    int32_t *l_492 = &p_715->g_461;
    int16_t *l_528[1];
    int16_t l_545 = 0x10CFL;
    int32_t l_595 = (-8L);
    int i;
    for (i = 0; i < 1; i++)
        l_528[i] = &p_715->g_133;
    for (p_715->g_461 = 0; (p_715->g_461 > 18); ++p_715->g_461)
    { /* block id: 267 */
        int16_t *l_496 = (void*)0;
        int16_t **l_495 = &l_496;
        int32_t *l_498 = &p_715->g_187[1];
        (*p_715->g_235) = l_492;
        (*l_498) &= (safe_sub_func_int16_t_s_s((*p_715->g_183), ((p_150 == ((*l_495) = (void*)0)) | 0UL)));
    }
    for (p_715->g_300 = 24; (p_715->g_300 > 26); p_715->g_300 = safe_add_func_int64_t_s_s(p_715->g_300, 5))
    { /* block id: 274 */
        uint32_t l_523[1];
        int8_t *l_533 = &p_715->g_316[2];
        int64_t *l_544 = &p_715->g_489;
        int8_t *l_546[9][6][4] = {{{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0}},{{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0}},{{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0}},{{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0}},{{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0}},{{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0}},{{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0}},{{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0}},{{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0},{(void*)0,&p_715->g_328,(void*)0,(void*)0}}};
        int32_t l_547[2][6][9] = {{{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL}},{{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL},{0L,0x5A1309FCL,0x33321DDEL,(-1L),0x5BAE702CL,0x5BAE702CL,(-1L),0x33321DDEL,0x5A1309FCL}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_523[i] = 0x74D1EC7CL;
        for (p_715->g_268 = 0; (p_715->g_268 <= 6); p_715->g_268 += 1)
        { /* block id: 277 */
            int i;
            if (p_715->g_316[p_715->g_268])
                break;
        }
        for (p_715->g_328 = 0; p_715->g_328 < 6; p_715->g_328 += 1)
        {
            p_715->g_236[p_715->g_328] = &p_715->g_110;
        }
        for (p_715->g_328 = (-29); (p_715->g_328 < (-9)); p_715->g_328++)
        { /* block id: 283 */
            int32_t **l_503[1];
            int32_t ***l_505 = (void*)0;
            int64_t *l_529 = (void*)0;
            int64_t *l_530 = &p_715->g_531;
            uint32_t l_532 = 0UL;
            int i;
            for (i = 0; i < 1; i++)
                l_503[i] = &p_715->g_289;
            (*p_715->g_506) = l_503[0];
            (*l_492) = (safe_add_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((safe_add_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u((((safe_mod_func_uint64_t_u_u(8UL, p_715->g_162)) < (safe_sub_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(p_147, l_523[0])), l_523[0]))) | ((*l_530) = (p_715->g_489 |= (safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((*l_492), ((0x47A0E3B091FC0D47L <= (l_528[0] != &p_715->g_133)) ^ FAKE_DIVERGE(p_715->group_1_offset, get_group_id(1), 10)))), l_523[0]))))), p_148)), (*l_492))), p_715->g_162)) | 0x91L), p_151)), l_532));
            (*p_715->g_235) = (void*)0;
        }
        l_547[1][5][6] |= ((p_715->g_337 , ((*l_533) = 0x66L)) && ((*l_492) = ((((((((*l_533) = (*l_492)) ^ ((4294967288UL & (((l_523[0] & (safe_sub_func_int8_t_s_s(0x48L, (((*l_544) = (safe_lshift_func_uint16_t_u_s(p_715->g_384, (0x494964647A5E6F90L && ((GROUP_DIVERGE(1, 1) , (safe_mul_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(((safe_lshift_func_int16_t_s_u((*p_715->g_183), p_151)) > FAKE_DIVERGE(p_715->global_1_offset, get_global_id(1), 10)), FAKE_DIVERGE(p_715->global_1_offset, get_global_id(1), 10))), (*l_492)))) , (*l_492)))))) , p_148)))) , l_544) == l_544)) < p_715->g_133)) ^ p_148) > l_545) ^ 0x2F8F51FFL) | p_715->g_461) < p_715->g_300)));
    }
    for (p_715->g_162 = 0; (p_715->g_162 <= 6); p_715->g_162 += 1)
    { /* block id: 298 */
        if ((atomic_inc(&p_715->g_atomic_input[60 * get_linear_group_id() + 33]) == 7))
        { /* block id: 300 */
            uint32_t l_548 = 0UL;
            uint16_t l_549 = 0x25D2L;
            int64_t l_588 = 0x4E688556036D6473L;
            l_549 &= (l_548 &= 0x7103C415L);
            for (l_548 = 0; (l_548 <= 3); l_548 += 1)
            { /* block id: 305 */
                int32_t l_550 = 5L;
                int32_t l_583 = 1L;
                int8_t l_584[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
                int64_t l_585 = 0x5E2070732FAD8BB3L;
                uint32_t l_586 = 0xA0CE8DD2L;
                int32_t l_587 = 7L;
                int i;
                if ((l_550 , 1L))
                { /* block id: 306 */
                    uint64_t l_551[8][2] = {{18446744073709551615UL,0xB06A5C21D14E3FBEL},{18446744073709551615UL,0xB06A5C21D14E3FBEL},{18446744073709551615UL,0xB06A5C21D14E3FBEL},{18446744073709551615UL,0xB06A5C21D14E3FBEL},{18446744073709551615UL,0xB06A5C21D14E3FBEL},{18446744073709551615UL,0xB06A5C21D14E3FBEL},{18446744073709551615UL,0xB06A5C21D14E3FBEL},{18446744073709551615UL,0xB06A5C21D14E3FBEL}};
                    int32_t l_552 = 0L;
                    int32_t l_554[7];
                    int32_t *l_553 = &l_554[3];
                    int32_t *l_555 = &l_554[6];
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_554[i] = 0x18B12E78L;
                    l_555 = (l_551[5][0] , ((l_552 , 4UL) , l_553));
                }
                else
                { /* block id: 308 */
                    int32_t l_557 = (-6L);
                    int32_t *l_556 = &l_557;
                    uint16_t l_567 = 2UL;
                    l_556 = (void*)0;
                    for (l_557 = 0; (l_557 >= 0); l_557 -= 1)
                    { /* block id: 312 */
                        uint32_t l_558[5][7] = {{0xC1A68CC9L,0x825A84E5L,0UL,0x612ABA13L,0UL,0x825A84E5L,0xC1A68CC9L},{0xC1A68CC9L,0x825A84E5L,0UL,0x612ABA13L,0UL,0x825A84E5L,0xC1A68CC9L},{0xC1A68CC9L,0x825A84E5L,0UL,0x612ABA13L,0UL,0x825A84E5L,0xC1A68CC9L},{0xC1A68CC9L,0x825A84E5L,0UL,0x612ABA13L,0UL,0x825A84E5L,0xC1A68CC9L},{0xC1A68CC9L,0x825A84E5L,0UL,0x612ABA13L,0UL,0x825A84E5L,0xC1A68CC9L}};
                        int32_t l_562 = (-3L);
                        int32_t * volatile l_561[7] = {&l_562,&l_562,&l_562,&l_562,&l_562,&l_562,&l_562};
                        uint64_t l_563 = 0xD3F4E18C4D0BF5A7L;
                        int32_t *l_566 = (void*)0;
                        int i, j, k;
                        --l_558[0][4];
                        l_561[5] = p_715->g_497[l_557][(l_557 + 3)][(l_557 + 2)];
                        l_563--;
                        l_566 = (void*)0;
                    }
                    if ((l_567 , 1L))
                    { /* block id: 318 */
                        int32_t l_568[6][10][1] = {{{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L}},{{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L}},{{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L}},{{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L}},{{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L}},{{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L}}};
                        uint32_t l_569 = 4294967292UL;
                        int64_t l_570 = 0L;
                        int8_t l_571 = 0L;
                        int16_t l_572[9] = {0x5F5BL,(-8L),0x5F5BL,0x5F5BL,(-8L),0x5F5BL,0x5F5BL,(-8L),0x5F5BL};
                        int64_t l_573 = 0L;
                        int32_t l_574 = 0x795960C5L;
                        uint32_t l_575 = 0x4AD0485FL;
                        uint32_t l_576[7];
                        uint8_t l_577 = 0UL;
                        int32_t l_578 = 0x2BE0A0ACL;
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_576[i] = 0x789472DCL;
                        l_557 ^= l_568[2][5][0];
                        l_569 = (l_557 = 0x7D9F0A78L);
                        l_577 = ((l_571 ^= (l_570 , 0x48L)) , (((l_574 ^= (l_573 = l_572[5])) , l_575) , l_576[0]));
                        l_568[2][5][0] = l_578;
                    }
                    else
                    { /* block id: 327 */
                        int8_t l_579 = 0x3EL;
                        uint8_t l_580 = 246UL;
                        ++l_580;
                    }
                }
                l_584[2] = l_583;
                l_587 = (l_586 = l_585);
            }
            l_588 = 0x4F8E0997L;
            unsigned int result = 0;
            result += l_548;
            result += l_549;
            result += l_588;
            atomic_add(&p_715->g_special_values[60 * get_linear_group_id() + 33], result);
        }
        else
        { /* block id: 336 */
            (1 + 1);
        }
        (*p_715->g_235) = l_492;
    }
    (*p_715->g_235) = (((*l_492) <= (l_595 = (safe_div_func_uint16_t_u_u((p_715->g_402[6] = 0x2063L), ((((safe_add_func_uint64_t_u_u(p_147, p_715->g_281)) || ((safe_sub_func_int16_t_s_s(((p_147 != (&p_715->g_284 != &p_715->g_284)) , ((l_528[0] == (void*)0) | FAKE_DIVERGE(p_715->local_2_offset, get_local_id(2), 10))), (*p_715->g_183))) <= p_148)) | (*l_492)) , 0x3EB4L))))) , (void*)0);
    return &p_715->g_184;
}


/* ------------------------------------------ */
/* 
 * reads : p_715->g_133 p_715->g_162 p_715->g_110 p_715->g_183 p_715->g_184 p_715->g_187 p_715->g_235 p_715->g_236 p_715->g_281 p_715->g_288 p_715->g_289 p_715->g_328 p_715->g_284 p_715->g_268 p_715->g_316 p_715->g_375 p_715->g_300 p_715->g_411 p_715->g_438 p_715->g_461 p_715->g_480 p_715->g_384 p_715->g_489
 * writes: p_715->g_162 p_715->g_133 p_715->g_187 p_715->g_184 p_715->g_281 p_715->g_284 p_715->g_236 p_715->g_289 p_715->g_316 p_715->g_268 p_715->g_375 p_715->g_384 p_715->g_328 p_715->g_411 p_715->g_300 p_715->g_438 p_715->g_461 p_715->g_480 p_715->g_489
 */
int64_t  func_152(int32_t * p_153, int16_t * p_154, int16_t * p_155, int32_t * p_156, struct S0 * p_715)
{ /* block id: 110 */
    uint32_t l_166 = 4294967295UL;
    uint64_t l_180 = 0x7CDB5522D6D4F0C1L;
    int64_t *l_410 = &p_715->g_411;
    int32_t *l_460[3];
    int i;
    for (i = 0; i < 3; i++)
        l_460[i] = &p_715->g_461;
    p_715->g_461 ^= (safe_mul_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_s(((*p_155) = (p_715->g_162 &= (*p_154))), func_163((l_166 && (safe_lshift_func_int16_t_s_u((func_169(((*l_410) &= (p_715->g_110 < func_174(l_180, (((void*)0 != p_156) & ((safe_mod_func_uint8_t_u_u((p_156 != (void*)0), l_166)) && p_715->g_110)), l_180, p_715->g_183, p_155, p_715))), p_156, l_166, p_715->g_300, p_715) ^ 0x0147081E457E4930L), l_180))), p_155, p_715))) | l_166), 1L));
    for (l_166 = (-17); (l_166 <= 16); l_166 = safe_add_func_uint64_t_u_u(l_166, 9))
    { /* block id: 242 */
        int32_t l_486 = 0x1ED2DD81L;
        if ((*p_153))
            break;
        for (l_180 = 0; (l_180 <= 6); l_180 += 1)
        { /* block id: 246 */
            int32_t l_485 = 0x71C50707L;
            for (p_715->g_284 = 0; (p_715->g_284 <= 3); p_715->g_284 += 1)
            { /* block id: 249 */
                int8_t *l_483 = &p_715->g_316[2];
                int32_t l_487[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_487[i] = 0L;
                for (p_715->g_300 = 3; (p_715->g_300 >= 0); p_715->g_300 -= 1)
                { /* block id: 252 */
                    uint64_t *l_479 = &p_715->g_480;
                    int8_t **l_484[9][10][2] = {{{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}},{{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}},{{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}},{{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}},{{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}},{{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}},{{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}},{{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}},{{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}}};
                    int64_t *l_488[1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_488[i] = &p_715->g_489;
                    l_487[0] = ((((((p_715->g_316[p_715->g_300] , (safe_unary_minus_func_int64_t_s((p_715->g_489 ^= (safe_add_func_int32_t_s_s((safe_sub_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u((((safe_mul_func_int8_t_s_s(((0L || (GROUP_DIVERGE(0, 1) , (safe_sub_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(p_715->g_187[p_715->g_284], 6)), (((safe_div_func_uint64_t_u_u((!(((--(*l_479)) , &p_715->g_300) == (((l_483 = l_483) != (l_485 , &p_715->g_316[2])) , &p_715->g_133))), 0x1EDFF9126A54A907L)) , l_486) ^ l_487[0]))))) > (*p_715->g_183)), l_487[1])) || p_715->g_384) == p_715->g_316[p_715->g_300]), l_486)) , (*p_715->g_183)), 0x720FL)), l_486)))))) > l_485) , l_487[0]) ^ p_715->g_438) != (*p_715->g_183)) < 0x43CECD25L);
                }
                (*p_715->g_235) = p_153;
            }
            return p_715->g_411;
        }
    }
    return p_715->g_162;
}


/* ------------------------------------------ */
/* 
 * reads : p_715->g_183 p_715->g_281 p_715->g_187 p_715->g_110 p_715->g_284 p_715->g_438 p_715->g_300 p_715->g_184
 * writes: p_715->g_184 p_715->g_316 p_715->g_328 p_715->g_438 p_715->g_187 p_715->g_300
 */
int16_t  func_163(int64_t  p_164, int16_t * p_165, struct S0 * p_715)
{ /* block id: 225 */
    int32_t *l_415 = &p_715->g_187[0];
    int32_t l_416 = 0x0DBCF43DL;
    int8_t *l_434 = &p_715->g_316[2];
    int8_t *l_435 = &p_715->g_328;
    int32_t *l_436 = (void*)0;
    int32_t *l_437 = &p_715->g_438;
    int32_t *l_439 = &p_715->g_187[1];
    int32_t l_451 = 0x289FA6E6L;
    int32_t l_453 = 1L;
    int32_t l_454 = 0L;
    int32_t l_455 = 0x5E1CD983L;
    int32_t l_456[5][3][10] = {{{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L}},{{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L}},{{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L}},{{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L}},{{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L},{1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L,1L,0x06E3CAB8L,0x630C2346L,0x06E3CAB8L,1L}}};
    int i, j, k;
    (*l_439) = ((l_416 = ((*l_437) ^= ((((((*p_715->g_183) = ((l_415 = l_415) == (void*)0)) > (((((l_416 >= (safe_mod_func_int8_t_s_s(((safe_add_func_int64_t_s_s((safe_unary_minus_func_int16_t_s((safe_rshift_func_int16_t_s_u(p_164, p_715->g_281)))), p_715->g_187[1])) , l_416), p_164))) | (((((safe_mul_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(((safe_add_func_int8_t_s_s((safe_mod_func_int8_t_s_s(((*l_435) = ((*l_434) = p_164)), l_416)), 0x04L)) < l_416), 5)), 0x4858L)) ^ p_164), 1L)) & p_715->g_281) < GROUP_DIVERGE(1, 1)) , 0x377DC637L) > 1UL)) != p_715->g_110) & l_416) | 3L)) != p_715->g_284) ^ 9UL) & FAKE_DIVERGE(p_715->group_0_offset, get_group_id(0), 10)))) , (*l_415));
    for (p_715->g_300 = 3; (p_715->g_300 > 18); p_715->g_300++)
    { /* block id: 235 */
        int32_t l_442 = 0x60BACAB8L;
        int32_t *l_443 = &l_416;
        int32_t *l_444 = (void*)0;
        int32_t l_445 = (-3L);
        int32_t *l_446 = (void*)0;
        int32_t *l_447 = (void*)0;
        int32_t *l_448 = &p_715->g_187[1];
        int32_t *l_449[1];
        int32_t l_450[5] = {0x67A7E1C2L,0x67A7E1C2L,0x67A7E1C2L,0x67A7E1C2L,0x67A7E1C2L};
        int64_t l_452 = 0x22F1A4E1B76D610DL;
        uint64_t l_457 = 2UL;
        int i;
        for (i = 0; i < 1; i++)
            l_449[i] = &l_416;
        l_457++;
    }
    return (*p_715->g_183);
}


/* ------------------------------------------ */
/* 
 * reads : p_715->g_300 p_715->g_316
 * writes: p_715->g_300
 */
uint64_t  func_169(int64_t  p_170, int32_t * p_171, uint32_t  p_172, uint32_t  p_173, struct S0 * p_715)
{ /* block id: 218 */
    for (p_715->g_300 = 0; (p_715->g_300 < (-30)); --p_715->g_300)
    { /* block id: 221 */
        uint32_t l_414 = 4294967289UL;
        return l_414;
    }
    return p_715->g_316[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_715->g_184 p_715->g_187 p_715->g_110 p_715->g_183 p_715->g_235 p_715->g_236 p_715->g_281 p_715->g_288 p_715->g_289 p_715->g_328 p_715->g_284 p_715->g_268 p_715->g_316 p_715->g_375 p_715->g_300
 * writes: p_715->g_187 p_715->g_184 p_715->g_281 p_715->g_284 p_715->g_236 p_715->g_289 p_715->g_316 p_715->g_268 p_715->g_375 p_715->g_384 p_715->g_328
 */
uint16_t  func_174(uint64_t  p_175, uint8_t  p_176, uint32_t  p_177, int16_t * p_178, int16_t * p_179, struct S0 * p_715)
{ /* block id: 113 */
    uint64_t l_185[7] = {0xD581DC2E7BD33CEAL,0xD581DC2E7BD33CEAL,0xD581DC2E7BD33CEAL,0xD581DC2E7BD33CEAL,0xD581DC2E7BD33CEAL,0xD581DC2E7BD33CEAL,0xD581DC2E7BD33CEAL};
    int32_t l_196 = (-5L);
    int32_t l_197 = (-1L);
    int32_t l_199 = 6L;
    int32_t l_204 = 0x717D062AL;
    int32_t l_208[9][4][5] = {{{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L}},{{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L}},{{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L}},{{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L}},{{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L}},{{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L}},{{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L}},{{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L}},{{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L},{0x38701C1BL,3L,3L,0x38701C1BL,0x00010583L}}};
    int16_t *l_261 = &p_715->g_184;
    int32_t l_269 = 0L;
    int16_t l_304 = 0x1483L;
    int8_t l_305 = 0x43L;
    uint32_t l_307 = 0x93B17E52L;
    uint32_t l_325 = 0x4D005C5DL;
    uint32_t l_378 = 0x4D15F1BBL;
    uint16_t *l_401[1];
    int8_t *l_407 = &p_715->g_328;
    uint32_t *l_408 = &p_715->g_284;
    int32_t *l_409 = &l_208[2][0][1];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_401[i] = &p_715->g_402[0];
    for (p_175 = 1; (p_175 <= 6); p_175 += 1)
    { /* block id: 116 */
        int32_t *l_186 = &p_715->g_187[1];
        int32_t l_198 = 0x61ACFDDCL;
        int32_t l_200 = (-9L);
        int32_t l_203 = (-1L);
        int32_t l_205 = 0x472D6ACAL;
        int32_t l_206 = 1L;
        int32_t l_207[10] = {0L,0x22CE7F33L,1L,0x22CE7F33L,0L,0L,0x22CE7F33L,1L,0x22CE7F33L,0L};
        int16_t *l_228 = &p_715->g_184;
        int64_t l_233 = (-2L);
        int32_t l_254 = 2L;
        int32_t l_387 = 0x6007FC7DL;
        int i;
        (*l_186) = 0x68397568L;
        for (p_177 = 0; (p_177 <= 6); p_177 += 1)
        { /* block id: 120 */
            int16_t l_188 = 0x0602L;
            int32_t l_195 = 0x72754ED0L;
            int32_t l_201 = 1L;
            int32_t l_202 = 8L;
            int32_t l_209 = 0x19F76DDFL;
            int32_t l_210 = 0x0A50E592L;
            int32_t l_211 = 1L;
            int32_t l_212 = 0x3B879365L;
            int32_t l_213[7] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
            int16_t **l_290 = &l_228;
            uint32_t l_301 = 0x816ABCEAL;
            int16_t **l_319 = &p_715->g_183;
            int i;
            for (p_715->g_184 = 0; (p_715->g_184 <= 6); p_715->g_184 += 1)
            { /* block id: 123 */
                int32_t *l_189 = &p_715->g_187[1];
                int32_t *l_190 = &p_715->g_187[1];
                int32_t *l_191 = (void*)0;
                int32_t *l_192 = (void*)0;
                int32_t *l_193 = &p_715->g_187[1];
                int32_t *l_194[5];
                uint16_t l_214[7] = {0xEE4DL,0x8AF3L,0xEE4DL,0xEE4DL,0x8AF3L,0xEE4DL,0xEE4DL};
                int16_t *l_234[3][2][10] = {{{&l_188,&l_188,&l_188,&l_188,&p_715->g_184,&l_188,&l_188,&l_188,&l_188,&l_188},{&l_188,&l_188,&l_188,&l_188,&p_715->g_184,&l_188,&l_188,&l_188,&l_188,&l_188}},{{&l_188,&l_188,&l_188,&l_188,&p_715->g_184,&l_188,&l_188,&l_188,&l_188,&l_188},{&l_188,&l_188,&l_188,&l_188,&p_715->g_184,&l_188,&l_188,&l_188,&l_188,&l_188}},{{&l_188,&l_188,&l_188,&l_188,&p_715->g_184,&l_188,&l_188,&l_188,&l_188,&l_188},{&l_188,&l_188,&l_188,&l_188,&p_715->g_184,&l_188,&l_188,&l_188,&l_188,&l_188}}};
                uint64_t l_296[1][9] = {{0x2F50FCE14DB3FF0BL,0x2F50FCE14DB3FF0BL,0x2F50FCE14DB3FF0BL,0x2F50FCE14DB3FF0BL,0x2F50FCE14DB3FF0BL,0x2F50FCE14DB3FF0BL,0x2F50FCE14DB3FF0BL,0x2F50FCE14DB3FF0BL,0x2F50FCE14DB3FF0BL}};
                int32_t l_335 = 0x0DBEEDF3L;
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_194[i] = &p_715->g_187[0];
                l_214[4]++;
                if ((safe_sub_func_uint8_t_u_u((safe_unary_minus_func_uint16_t_u(((p_176 = (((safe_lshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u(l_185[p_177], (safe_rshift_func_int16_t_s_u(((*l_186) = ((safe_rshift_func_uint16_t_u_u(((((0xA65F83DEL >= ((&p_715->g_184 == l_228) ^ (safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (*l_186))))) , p_715->g_187[3]) ^ (0x1791L | (safe_mul_func_uint16_t_u_u(l_208[0][2][2], l_233)))) , 0UL), p_715->g_110)) , (*p_715->g_183))), 2)))), p_715->g_110)) >= (-1L)) > l_210)) <= 0x30L))), 0L)))
                { /* block id: 127 */
                    int32_t **l_237 = &l_194[2];
                    (*l_190) = (p_715->g_235 == l_237);
                    return p_715->g_187[2];
                }
                else
                { /* block id: 130 */
                    int16_t **l_264 = &l_234[0][1][6];
                    int16_t *l_265 = &p_715->g_184;
                    int32_t l_266 = 0x14CAE8D2L;
                    uint64_t *l_267[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_267[i] = &p_715->g_268;
                    l_196 &= ((p_176 & p_175) == (((((+(safe_mod_func_uint16_t_u_u((safe_div_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(((((safe_div_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((safe_add_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(l_254, 18446744073709551615UL)), (l_211 |= (l_185[p_715->g_184] &= (safe_lshift_func_int8_t_s_u((7UL != ((&p_715->g_236[2] != &l_186) ^ ((((safe_mod_func_uint32_t_u_u((l_261 != (((safe_add_func_uint16_t_u_u(((((*l_264) = p_179) == l_265) == l_212), (*p_715->g_183))) <= p_176) , (void*)0)), 0xA24BEC2CL)) == 0UL) & p_177) <= 0xADL))), l_266)))))), p_175)), (*l_186))) | (-6L)) , l_197) , l_185[p_715->g_184]), l_197)) < p_715->g_110), p_715->g_184)), l_269))) < 0x5CB01C2EL) , p_175) != p_715->g_110) == l_212));
                }
                if (((((**p_715->g_235) && p_175) | 0xE442EAC8L) , 0x45F0CBEBL))
                { /* block id: 136 */
                    uint64_t *l_275[1];
                    uint64_t **l_274 = &l_275[0];
                    uint32_t *l_280[6][6] = {{&p_715->g_281,&p_715->g_281,(void*)0,&p_715->g_281,&p_715->g_281,&p_715->g_281},{&p_715->g_281,&p_715->g_281,(void*)0,&p_715->g_281,&p_715->g_281,&p_715->g_281},{&p_715->g_281,&p_715->g_281,(void*)0,&p_715->g_281,&p_715->g_281,&p_715->g_281},{&p_715->g_281,&p_715->g_281,(void*)0,&p_715->g_281,&p_715->g_281,&p_715->g_281},{&p_715->g_281,&p_715->g_281,(void*)0,&p_715->g_281,&p_715->g_281,&p_715->g_281},{&p_715->g_281,&p_715->g_281,(void*)0,&p_715->g_281,&p_715->g_281,&p_715->g_281}};
                    int32_t l_285 = (-1L);
                    int64_t *l_286 = &l_233;
                    int32_t l_292 = (-7L);
                    int32_t l_293 = 0x48648EDAL;
                    int32_t l_294[1];
                    int32_t l_299 = 0x6D7F1537L;
                    int32_t l_306 = (-2L);
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_275[i] = &p_715->g_268;
                    for (i = 0; i < 1; i++)
                        l_294[i] = (-1L);
                    if ((safe_rshift_func_int16_t_s_u(((p_177 > (1UL ^ (((((((*l_274) = (void*)0) != &p_715->g_268) | (+(safe_mod_func_uint64_t_u_u(((((*l_286) = (safe_div_func_int16_t_s_s((((p_715->g_281--) , (l_285 = (p_715->g_284 = ((((p_715->g_187[1] & 0x3A55L) , 0x1D48L) , &p_715->g_183) != (void*)0)))) < 0x567CL), l_195))) , (**p_715->g_235)) && 4294967294UL), l_196)))) < 0L) > p_175) && 0UL))) > 0x66BCL), 7)))
                    { /* block id: 142 */
                        int32_t *l_287 = &l_211;
                        (*l_186) = (l_199 < 0x2261L);
                        (*p_715->g_288) = ((*p_715->g_235) = l_287);
                    }
                    else
                    { /* block id: 146 */
                        return p_176;
                    }
                    (*l_190) = 0x0D63081AL;
                    for (l_206 = 0; (l_206 <= 1); l_206 += 1)
                    { /* block id: 152 */
                        int32_t l_291 = 0x45350917L;
                        int32_t l_295[6][2] = {{0x537C15CBL,0x7D59EA4EL},{0x537C15CBL,0x7D59EA4EL},{0x537C15CBL,0x7D59EA4EL},{0x537C15CBL,0x7D59EA4EL},{0x537C15CBL,0x7D59EA4EL},{0x537C15CBL,0x7D59EA4EL}};
                        int i, j, k;
                        (*p_715->g_289) = (p_715->g_184 & (p_177 | (((l_234[(l_206 + 1)][l_206][(l_206 + 2)] = p_179) == p_179) , (l_290 != &p_715->g_183))));
                        ++l_296[0][6];
                        (*p_715->g_235) = &l_200;
                        ++l_301;
                    }
                    l_307--;
                }
                else
                { /* block id: 160 */
                    int64_t *l_312 = &l_233;
                    int16_t **l_320 = &l_234[0][1][0];
                    int32_t l_322 = (-6L);
                    int32_t l_323 = 0x261D153DL;
                    int32_t l_324[3];
                    uint32_t *l_332[10][3] = {{(void*)0,&p_715->g_281,&p_715->g_281},{(void*)0,&p_715->g_281,&p_715->g_281},{(void*)0,&p_715->g_281,&p_715->g_281},{(void*)0,&p_715->g_281,&p_715->g_281},{(void*)0,&p_715->g_281,&p_715->g_281},{(void*)0,&p_715->g_281,&p_715->g_281},{(void*)0,&p_715->g_281,&p_715->g_281},{(void*)0,&p_715->g_281,&p_715->g_281},{(void*)0,&p_715->g_281,&p_715->g_281},{(void*)0,&p_715->g_281,&p_715->g_281}};
                    uint32_t **l_331 = &l_332[4][0];
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_324[i] = 1L;
                    for (l_211 = (-2); (l_211 <= 16); l_211++)
                    { /* block id: 163 */
                        int8_t *l_315[7];
                        uint32_t *l_321 = &l_307;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_315[i] = &l_305;
                        l_208[2][0][1] &= ((((**p_715->g_235) , (((((void*)0 == l_312) , (p_715->g_316[2] = (0x1E55EB9081E52A8FL != ((**p_715->g_235) <= 0x5EC18580L)))) <= p_715->g_281) <= ((*l_321) = (l_202 == (safe_mul_func_int8_t_s_s((((l_319 = &l_228) == l_320) && p_177), 0x76L)))))) | l_211) >= GROUP_DIVERGE(2, 1));
                    }
                    l_325--;
                    l_204 = (((*l_193) = (p_715->g_328 , (((((safe_rshift_func_uint8_t_u_u(p_177, (p_176 >= (((*l_331) = &p_715->g_281) != &p_715->g_281)))) < (((**p_715->g_235) , &p_177) == &p_715->g_284)) | 0UL) > 0x0FC5L) < 0x1AL))) || p_175);
                }
                for (p_715->g_268 = 0; (p_715->g_268 <= 0); p_715->g_268 += 1)
                { /* block id: 176 */
                    int64_t l_333[2];
                    int32_t l_334 = 0x36C45A12L;
                    int32_t l_336 = 0x710B6FDAL;
                    int32_t l_339[10] = {0x7B89E422L,0x26671C1EL,(-1L),0x26671C1EL,0x7B89E422L,0x7B89E422L,0x26671C1EL,(-1L),0x26671C1EL,0x7B89E422L};
                    uint32_t *l_345 = &l_307;
                    uint32_t *l_347 = (void*)0;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_333[i] = 9L;
                    for (p_715->g_284 = 0; (p_715->g_284 <= 0); p_715->g_284 += 1)
                    { /* block id: 179 */
                        int32_t l_338[10][7][3] = {{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}},{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}},{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}},{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}},{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}},{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}},{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}},{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}},{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}},{{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L},{5L,(-8L),0x7CA7AA63L}}};
                        uint64_t l_340 = 18446744073709551613UL;
                        int i, j, k;
                        if (l_296[p_715->g_284][(p_715->g_268 + 7)])
                            break;
                        (*p_715->g_235) = &l_203;
                        l_340--;
                        if (l_210)
                            break;
                    }
                    for (l_269 = 1; (l_269 <= 6); l_269 += 1)
                    { /* block id: 187 */
                        uint32_t **l_346 = &l_345;
                        int i, j;
                        if (l_214[(p_715->g_268 + 3)])
                            break;
                        l_336 ^= (((safe_sub_func_int64_t_s_s((0x0FDBCB59ABBF9C2AL ^ (((((*l_346) = l_345) != l_347) < (safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(l_214[(p_715->g_268 + 5)], (safe_add_func_uint16_t_u_u(l_296[p_715->g_268][l_269], (p_715->g_316[0] , p_175))))), ((((safe_mod_func_uint16_t_u_u((((safe_rshift_func_int16_t_s_s(0x76DDL, (safe_add_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(((((((safe_add_func_uint16_t_u_u(65532UL, l_214[(p_715->g_268 + 3)])) , (*l_189)) ^ p_177) || 0xE29D6655L) >= 2UL) > (*l_186)), 1)), p_715->g_328)) <= FAKE_DIVERGE(p_715->global_0_offset, get_global_id(0), 10)), 0x687CL)))) > p_715->g_284) != p_715->g_316[2]), p_177)) == 0x227FL) , p_175) <= l_307))), 0x265EFD2FL))) >= (-2L))), p_177)) < (*l_186)) != 0x2932L);
                        l_194[3] = (*p_715->g_288);
                    }
                }
            }
            for (l_202 = 5; (l_202 >= 0); l_202 -= 1)
            { /* block id: 197 */
                int16_t l_368 = 0x46E5L;
                int32_t l_373 = (-4L);
                int32_t l_374[8][10][3] = {{{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)}},{{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)}},{{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)}},{{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)}},{{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)}},{{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)}},{{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)}},{{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)},{(-3L),9L,(-8L)}}};
                uint8_t *l_383 = &p_715->g_384;
                int i, j, k;
                for (l_200 = 0; (l_200 <= 5); l_200 += 1)
                { /* block id: 200 */
                    int32_t *l_369 = &l_208[2][0][1];
                    int32_t *l_370 = &l_208[2][0][1];
                    int32_t *l_371 = &l_199;
                    int32_t *l_372[9][5][5] = {{{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0}},{{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0}},{{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0}},{{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0}},{{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0}},{{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0}},{{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0}},{{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0}},{{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0},{&l_206,(void*)0,&l_207[4],(void*)0,(void*)0}}};
                    int i, j, k;
                    ++p_715->g_375;
                    --l_378;
                }
                l_213[(l_202 + 1)] = ((~(safe_rshift_func_int16_t_s_u(l_213[(l_202 + 1)], 5))) | (l_305 & (((*l_383) = 6UL) < ((p_175 , 0x1E1C9720L) & ((safe_rshift_func_int16_t_s_s((((((p_176 , l_387) , (((*p_715->g_183) = (safe_add_func_int32_t_s_s((~((&p_715->g_284 != &p_715->g_284) , p_176)), l_368))) > (*l_186))) <= p_175) ^ l_196) , l_209), 12)) , p_177)))));
            }
            return l_195;
        }
    }
    (*l_409) = ((safe_mul_func_int8_t_s_s(0x42L, (0x6591L <= ((safe_add_func_uint16_t_u_u((safe_unary_minus_func_uint64_t_u(p_715->g_300)), (((*l_408) = (safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((~((p_175 , (safe_rshift_func_uint16_t_u_u((p_177 , (~(l_197 = 0x90F2L))), 10))) , (p_715->g_384 = (l_197 != ((*l_407) &= (0UL < ((safe_mul_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_u(p_176, 3)) || 0x33L), p_715->g_316[2])) , 4L))))))), p_175)), 0x22BF3FC8E663E495L))) != 1UL))) & 0x6FAE6D1EL)))) | GROUP_DIVERGE(0, 1));
    return p_175;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_716;
    struct S0* p_715 = &c_716;
    struct S0 c_717 = {
        0x612900EBL, // p_715->g_110
        0x375FL, // p_715->g_133
        0UL, // p_715->g_162
        (-1L), // p_715->g_184
        &p_715->g_184, // p_715->g_183
        {0x13469999L,0x13469999L,0x13469999L,0x13469999L}, // p_715->g_187
        {&p_715->g_110,&p_715->g_110,&p_715->g_110,&p_715->g_110,&p_715->g_110,&p_715->g_110}, // p_715->g_236
        &p_715->g_236[2], // p_715->g_235
        0x7787EE95513F4536L, // p_715->g_268
        4294967289UL, // p_715->g_281
        1UL, // p_715->g_284
        (void*)0, // p_715->g_289
        &p_715->g_289, // p_715->g_288
        1L, // p_715->g_300
        {0L,0x3BL,0L,0L,0x3BL,0L,0L}, // p_715->g_316
        (-1L), // p_715->g_328
        0x32BD2B96L, // p_715->g_337
        0x62C2L, // p_715->g_375
        0UL, // p_715->g_384
        {65532UL,0x502DL,65532UL,65532UL,0x502DL,65532UL,65532UL}, // p_715->g_402
        0x2EABEF23654E699CL, // p_715->g_411
        0L, // p_715->g_438
        0x10D5323AL, // p_715->g_461
        2UL, // p_715->g_480
        0L, // p_715->g_489
        {{{&p_715->g_461,(void*)0,&p_715->g_461},{&p_715->g_461,(void*)0,&p_715->g_461},{&p_715->g_461,(void*)0,&p_715->g_461},{&p_715->g_461,(void*)0,&p_715->g_461},{&p_715->g_461,(void*)0,&p_715->g_461},{&p_715->g_461,(void*)0,&p_715->g_461},{&p_715->g_461,(void*)0,&p_715->g_461},{&p_715->g_461,(void*)0,&p_715->g_461}}}, // p_715->g_497
        (void*)0, // p_715->g_504
        &p_715->g_235, // p_715->g_506
        0x3861C20B44B1B440L, // p_715->g_531
        (void*)0, // p_715->g_604
        &p_715->g_604, // p_715->g_603
        (void*)0, // p_715->g_621
        &p_715->g_621, // p_715->g_620
        {{{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621}},{{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621},{&p_715->g_621,&p_715->g_621}}}, // p_715->g_625
        (void*)0, // p_715->g_637
        &p_715->g_637, // p_715->g_636
        &p_715->g_531, // p_715->g_643
        {{&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643},{&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643},{&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643},{&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643},{&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643},{&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643,&p_715->g_643}}, // p_715->g_642
        &p_715->g_642[0][8], // p_715->g_641
        &p_715->g_461, // p_715->g_693
        sequence_input[get_global_id(0)], // p_715->global_0_offset
        sequence_input[get_global_id(1)], // p_715->global_1_offset
        sequence_input[get_global_id(2)], // p_715->global_2_offset
        sequence_input[get_local_id(0)], // p_715->local_0_offset
        sequence_input[get_local_id(1)], // p_715->local_1_offset
        sequence_input[get_local_id(2)], // p_715->local_2_offset
        sequence_input[get_group_id(0)], // p_715->group_0_offset
        sequence_input[get_group_id(1)], // p_715->group_1_offset
        sequence_input[get_group_id(2)], // p_715->group_2_offset
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_716 = c_717;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_715);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_715->g_110, "p_715->g_110", print_hash_value);
    transparent_crc(p_715->g_133, "p_715->g_133", print_hash_value);
    transparent_crc(p_715->g_162, "p_715->g_162", print_hash_value);
    transparent_crc(p_715->g_184, "p_715->g_184", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_715->g_187[i], "p_715->g_187[i]", print_hash_value);

    }
    transparent_crc(p_715->g_268, "p_715->g_268", print_hash_value);
    transparent_crc(p_715->g_281, "p_715->g_281", print_hash_value);
    transparent_crc(p_715->g_284, "p_715->g_284", print_hash_value);
    transparent_crc(p_715->g_300, "p_715->g_300", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_715->g_316[i], "p_715->g_316[i]", print_hash_value);

    }
    transparent_crc(p_715->g_328, "p_715->g_328", print_hash_value);
    transparent_crc(p_715->g_337, "p_715->g_337", print_hash_value);
    transparent_crc(p_715->g_375, "p_715->g_375", print_hash_value);
    transparent_crc(p_715->g_384, "p_715->g_384", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_715->g_402[i], "p_715->g_402[i]", print_hash_value);

    }
    transparent_crc(p_715->g_411, "p_715->g_411", print_hash_value);
    transparent_crc(p_715->g_438, "p_715->g_438", print_hash_value);
    transparent_crc(p_715->g_461, "p_715->g_461", print_hash_value);
    transparent_crc(p_715->g_480, "p_715->g_480", print_hash_value);
    transparent_crc(p_715->g_489, "p_715->g_489", print_hash_value);
    transparent_crc(p_715->g_531, "p_715->g_531", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 60; i++)
            transparent_crc(p_715->g_special_values[i + 60 * get_linear_group_id()], "p_715->g_special_values[i + 60 * get_linear_group_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
