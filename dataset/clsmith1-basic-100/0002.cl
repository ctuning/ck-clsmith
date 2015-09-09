// ---fake_divergence -g 4,46,50 -l 4,1,2
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


// Seed: 2

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_11[6][7];
    int32_t *g_50;
    int32_t **g_49;
    int16_t g_70;
    uint32_t g_72;
    int32_t **g_84;
    int8_t g_87;
    uint8_t g_92;
    uint8_t g_94[1][8][9];
    int32_t g_95;
    int32_t ***g_104[2][5];
    int32_t g_109;
    int64_t g_111;
    volatile int16_t g_112[1];
    int32_t **g_119;
    int64_t g_137;
    int16_t g_143;
    uint16_t g_176;
    uint32_t g_177[1][7][8];
    int32_t g_178;
    int32_t g_183;
    int64_t g_198;
    volatile uint32_t g_235;
    volatile uint32_t *g_234;
    volatile uint32_t **g_233;
    int16_t *g_247[4];
    int32_t *g_290[9][5];
    int32_t * volatile g_328;
    int32_t g_330;
    int32_t * volatile g_329;
    int64_t *g_370;
    int32_t g_445[3][5];
    uint64_t g_464[9];
    uint64_t g_468;
    uint8_t g_482[5];
    int64_t g_488[8][8][4];
    int32_t * volatile g_491;
    int64_t g_594;
    int64_t **g_637;
    volatile int16_t *g_700;
    volatile int16_t **g_699;
    volatile int16_t ***g_698;
    volatile int8_t g_716;
    volatile int8_t *g_715[3];
    volatile int8_t ** volatile g_714;
    int32_t * volatile g_733[10];
    int32_t g_745;
    uint64_t g_786;
    volatile int64_t g_840;
    volatile int64_t * volatile g_839;
    volatile int64_t * volatile * volatile g_838;
    int32_t g_954;
    volatile int16_t g_966;
    uint8_t g_969;
    uint64_t g_1121[3];
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
uint64_t  func_1(struct S0 * p_1125);
int16_t  func_2(uint32_t  p_3, uint64_t  p_4, struct S0 * p_1125);
int32_t * func_20(int16_t  p_21, uint32_t  p_22, int8_t  p_23, int16_t  p_24, int64_t  p_25, struct S0 * p_1125);
uint32_t  func_26(int32_t  p_27, struct S0 * p_1125);
int8_t  func_32(uint32_t  p_33, uint64_t  p_34, uint32_t  p_35, struct S0 * p_1125);
int32_t * func_37(int32_t * p_38, int32_t * p_39, struct S0 * p_1125);
int32_t * func_40(int8_t  p_41, struct S0 * p_1125);
int32_t * func_44(uint16_t  p_45, int32_t ** p_46, struct S0 * p_1125);
uint64_t  func_51(int32_t  p_52, struct S0 * p_1125);
int64_t  func_55(int16_t  p_56, struct S0 * p_1125);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1125->g_11 p_1125->g_49 p_1125->g_72 p_1125->g_70 p_1125->g_95 p_1125->g_94 p_1125->g_109 p_1125->g_112 p_1125->g_119 p_1125->g_137 p_1125->g_143 p_1125->g_92 p_1125->g_50 p_1125->g_178 p_1125->g_111 p_1125->g_183 p_1125->g_87 p_1125->g_233 p_1125->g_177 p_1125->g_234 p_1125->g_235 p_1125->g_329 p_1125->g_330 p_1125->g_198 p_1125->g_445 p_1125->g_464 p_1125->g_468 p_1125->g_482 p_1125->g_491 p_1125->g_176 p_1125->g_698 p_1125->g_699 p_1125->g_714 p_1125->g_488 p_1125->g_700 p_1125->g_745 p_1125->g_594 p_1125->g_786 p_1125->g_715 p_1125->g_716 p_1125->g_838 p_1125->g_839 p_1125->g_840 p_1125->g_954 p_1125->g_969 p_1125->g_637 p_1125->g_370
 * writes: p_1125->g_11 p_1125->g_72 p_1125->g_84 p_1125->g_87 p_1125->g_92 p_1125->g_94 p_1125->g_95 p_1125->g_104 p_1125->g_109 p_1125->g_111 p_1125->g_112 p_1125->g_70 p_1125->g_137 p_1125->g_143 p_1125->g_50 p_1125->g_176 p_1125->g_177 p_1125->g_178 p_1125->g_183 p_1125->g_198 p_1125->g_247 p_1125->g_290 p_1125->g_330 p_1125->g_370 p_1125->g_445 p_1125->g_464 p_1125->g_468 p_1125->g_482 p_1125->g_594 p_1125->g_637 p_1125->g_745 p_1125->g_786 p_1125->g_954 p_1125->g_969 p_1125->g_1121
 */
uint64_t  func_1(struct S0 * p_1125)
{ /* block id: 4 */
    int32_t l_5[7] = {0x058A835AL,8L,0x058A835AL,0x058A835AL,8L,0x058A835AL,0x058A835AL};
    int32_t l_1122[1];
    int32_t *l_1124 = &l_1122[0];
    int32_t **l_1123 = &l_1124;
    int i;
    for (i = 0; i < 1; i++)
        l_1122[i] = (-1L);
    l_1122[0] = (((func_2(l_5[6], l_5[0], p_1125) >= (p_1125->g_1121[0] = (safe_add_func_int32_t_s_s(((safe_lshift_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((safe_div_func_uint64_t_u_u(((p_1125->g_234 == (void*)0) > 8UL), 0x8214215D57139244L)), p_1125->g_488[5][7][1])) | ((l_5[6] ^ l_5[0]) < p_1125->g_488[5][1][0])), 3)) != l_5[5]), l_5[6])))) , FAKE_DIVERGE(p_1125->global_0_offset, get_global_id(0), 10)) >= p_1125->g_488[7][0][0]);
    (*l_1123) = ((*p_1125->g_49) = &l_1122[0]);
    return p_1125->g_786;
}


/* ------------------------------------------ */
/* 
 * reads : p_1125->g_11 p_1125->g_49 p_1125->g_72 p_1125->g_70 p_1125->g_95 p_1125->g_94 p_1125->g_109 p_1125->g_112 p_1125->g_119 p_1125->g_137 p_1125->g_143 p_1125->g_92 p_1125->g_50 p_1125->g_178 p_1125->g_111 p_1125->g_183 p_1125->g_87 p_1125->g_233 p_1125->g_177 p_1125->g_234 p_1125->g_235 p_1125->g_329 p_1125->g_330 p_1125->g_198 p_1125->g_445 p_1125->g_464 p_1125->g_468 p_1125->g_482 p_1125->g_491 p_1125->g_176 p_1125->g_698 p_1125->g_699 p_1125->g_714 p_1125->g_488 p_1125->g_700 p_1125->g_745 p_1125->g_594 p_1125->g_786 p_1125->g_715 p_1125->g_716 p_1125->g_838 p_1125->g_839 p_1125->g_840 p_1125->g_954 p_1125->g_969 p_1125->g_637 p_1125->g_370
 * writes: p_1125->g_11 p_1125->g_72 p_1125->g_84 p_1125->g_87 p_1125->g_92 p_1125->g_94 p_1125->g_95 p_1125->g_104 p_1125->g_109 p_1125->g_111 p_1125->g_112 p_1125->g_70 p_1125->g_137 p_1125->g_143 p_1125->g_50 p_1125->g_176 p_1125->g_177 p_1125->g_178 p_1125->g_183 p_1125->g_198 p_1125->g_247 p_1125->g_290 p_1125->g_330 p_1125->g_370 p_1125->g_445 p_1125->g_464 p_1125->g_468 p_1125->g_482 p_1125->g_594 p_1125->g_637 p_1125->g_745 p_1125->g_786 p_1125->g_954 p_1125->g_969
 */
int16_t  func_2(uint32_t  p_3, uint64_t  p_4, struct S0 * p_1125)
{ /* block id: 5 */
    int16_t l_8[7];
    int32_t l_13[1][7] = {{0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L}};
    int64_t *l_487 = &p_1125->g_488[7][0][0];
    int32_t *l_744 = &p_1125->g_330;
    uint32_t l_755 = 0x9BF1F069L;
    int64_t **l_869 = (void*)0;
    int32_t l_919 = (-1L);
    uint16_t l_1027 = 65535UL;
    int32_t l_1030[10] = {0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L};
    uint32_t l_1071 = 0xB39AF24AL;
    uint32_t *l_1081 = &l_1071;
    uint32_t **l_1080[8] = {&l_1081,&l_1081,&l_1081,&l_1081,&l_1081,&l_1081,&l_1081,&l_1081};
    int8_t *l_1082 = &p_1125->g_87;
    int32_t *l_1083 = (void*)0;
    int32_t *l_1084 = (void*)0;
    int32_t *l_1085 = &l_13[0][6];
    uint16_t *l_1106 = (void*)0;
    uint16_t *l_1107 = &l_1027;
    uint32_t l_1110 = 7UL;
    int i, j;
    for (i = 0; i < 7; i++)
        l_8[i] = 0x78D1L;
    for (p_3 = 0; (p_3 >= 12); p_3 = safe_add_func_uint16_t_u_u(p_3, 3))
    { /* block id: 8 */
        int32_t *l_9 = (void*)0;
        int32_t *l_10 = &p_1125->g_11[4][0];
        int32_t *l_12 = &p_1125->g_11[4][2];
        int32_t l_14 = 0x3F1540EEL;
        int32_t *l_15 = &p_1125->g_11[0][4];
        int32_t *l_16[5][7][5] = {{{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}},{{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}},{{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}},{{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}},{{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1125->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}}};
        uint16_t l_17 = 8UL;
        int16_t *l_489 = &l_8[3];
        int32_t l_818 = 0x5045FF7EL;
        int8_t *l_846 = &p_1125->g_87;
        int8_t **l_845 = &l_846;
        int16_t l_856 = 0x49A0L;
        uint32_t l_890 = 0xCF94BF51L;
        int64_t *l_948 = &p_1125->g_594;
        int64_t **l_947[3];
        int64_t l_967 = 0x1D3E159F9593012DL;
        int16_t l_1051 = 8L;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_947[i] = &l_948;
        l_17--;
        if (((*l_12) = (p_1125->g_745 &= ((l_744 = func_20(p_4, func_26(l_13[0][5], p_1125), p_1125->g_482[2], (safe_mod_func_uint32_t_u_u((p_4 ^ (((*l_489) = ((GROUP_DIVERGE(1, 1) == (safe_mod_func_int8_t_s_s((l_487 != ((p_1125->g_482[3] | (0x41L <= p_3)) , (void*)0)), l_13[0][6]))) , p_1125->g_482[2])) > p_4)), p_3)), l_13[0][6], p_1125)) == &l_14))))
        { /* block id: 331 */
            int64_t **l_748[5];
            uint8_t *l_756 = (void*)0;
            uint8_t *l_757[6] = {&p_1125->g_92,&p_1125->g_92,&p_1125->g_92,&p_1125->g_92,&p_1125->g_92,&p_1125->g_92};
            int32_t l_758[10];
            uint32_t *l_759 = &p_1125->g_72;
            uint64_t *l_760 = &p_1125->g_464[8];
            int64_t **l_777 = &p_1125->g_370;
            int i;
            for (i = 0; i < 5; i++)
                l_748[i] = &p_1125->g_370;
            for (i = 0; i < 10; i++)
                l_758[i] = 0L;
            (*l_12) = ((p_1125->g_482[2] ^ ((*l_760) ^= (((+((safe_mul_func_uint8_t_u_u(((((l_748[3] != (void*)0) | ((*l_759) |= (((void*)0 == &p_1125->g_137) > (safe_mod_func_int8_t_s_s(((void*)0 != l_744), (safe_sub_func_int64_t_s_s((((((safe_rshift_func_uint8_t_u_u((p_1125->g_92 = l_755), p_1125->g_177[0][1][1])) , p_4) , p_1125->g_445[0][3]) | 0x7143L) , p_1125->g_482[1]), l_758[2]))))))) , p_1125->g_70) ^ p_1125->g_445[2][4]), (*l_10))) ^ p_3)) || (*l_10)) == p_3))) , 0x2B54C323L);
            if (l_758[2])
            { /* block id: 336 */
                uint32_t l_765[3][1][3] = {{{0x4BF73D0EL,0x4BF73D0EL,0x4BF73D0EL}},{{0x4BF73D0EL,0x4BF73D0EL,0x4BF73D0EL}},{{0x4BF73D0EL,0x4BF73D0EL,0x4BF73D0EL}}};
                int32_t l_779 = 1L;
                int i, j, k;
                (*l_10) &= (safe_mod_func_uint64_t_u_u(p_1125->g_594, (p_1125->g_464[3] , p_4)));
                if (((*p_1125->g_234) != p_3))
                { /* block id: 338 */
                    for (l_14 = (-2); (l_14 > (-1)); ++l_14)
                    { /* block id: 341 */
                        --l_765[2][0][2];
                    }
                }
                else
                { /* block id: 344 */
                    int64_t ***l_776 = &l_748[3];
                    int64_t *l_778[3];
                    uint16_t *l_780 = &p_1125->g_176;
                    int32_t l_781[10][8][3] = {{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}},{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}},{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}},{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}},{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}},{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}},{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}},{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}},{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}},{{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L},{0x3E2BF1D1L,(-1L),3L}}};
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_778[i] = &p_1125->g_137;
                    if (((safe_lshift_func_int8_t_s_u(((safe_mul_func_uint8_t_u_u(p_1125->g_92, p_3)) , ((p_1125->g_488[7][0][0] >= l_765[0][0][0]) , p_4)), 6)) == ((safe_add_func_uint16_t_u_u(((*l_780) &= (l_779 ^= ((((safe_add_func_uint16_t_u_u(0x0015L, (((*l_776) = &p_1125->g_370) != l_777))) | (p_1125->g_594 ^= 0x0CE133DEB7BD005CL)) | p_4) & p_1125->g_330))), 65535UL)) != FAKE_DIVERGE(p_1125->local_2_offset, get_local_id(2), 10))))
                    { /* block id: 349 */
                        return l_781[1][2][1];
                    }
                    else
                    { /* block id: 351 */
                        int8_t *l_784[7] = {&p_1125->g_87,&p_1125->g_87,&p_1125->g_87,&p_1125->g_87,&p_1125->g_87,&p_1125->g_87,&p_1125->g_87};
                        int32_t l_785[5] = {0x7FFA0F42L,0x7FFA0F42L,0x7FFA0F42L,0x7FFA0F42L,0x7FFA0F42L};
                        int i;
                        l_779 |= (safe_lshift_func_uint8_t_u_u((p_1125->g_11[4][0] < FAKE_DIVERGE(p_1125->local_1_offset, get_local_id(1), 10)), 7));
                        (*l_10) = ((p_1125->g_87 = p_4) || 2L);
                        if (l_785[4])
                            continue;
                    }
                    if (p_4)
                        continue;
                    if ((*l_10))
                    { /* block id: 358 */
                        l_13[0][6] |= l_765[2][0][2];
                    }
                    else
                    { /* block id: 360 */
                        (*l_10) = p_4;
                        p_1125->g_786++;
                    }
                }
            }
            else
            { /* block id: 365 */
                uint32_t **l_789 = &l_759;
                int64_t *l_802 = &p_1125->g_111;
                int32_t l_805 = 0x19E063A4L;
                int32_t *l_817[4][2][4] = {{{(void*)0,(void*)0,&p_1125->g_183,&p_1125->g_183},{(void*)0,(void*)0,&p_1125->g_183,&p_1125->g_183}},{{(void*)0,(void*)0,&p_1125->g_183,&p_1125->g_183},{(void*)0,(void*)0,&p_1125->g_183,&p_1125->g_183}},{{(void*)0,(void*)0,&p_1125->g_183,&p_1125->g_183},{(void*)0,(void*)0,&p_1125->g_183,&p_1125->g_183}},{{(void*)0,(void*)0,&p_1125->g_183,&p_1125->g_183},{(void*)0,(void*)0,&p_1125->g_183,&p_1125->g_183}}};
                int i, j, k;
                if ((l_789 != &p_1125->g_234))
                { /* block id: 366 */
                    uint8_t l_794[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_794[i] = 0xE3L;
                    for (l_14 = 0; (l_14 <= 3); l_14 += 1)
                    { /* block id: 369 */
                        uint16_t l_790 = 8UL;
                        int32_t l_793 = 1L;
                        l_790++;
                        l_794[0]--;
                    }
                    if (p_3)
                        break;
                }
                else
                { /* block id: 374 */
                    int32_t *l_799 = &l_13[0][6];
                    int64_t *l_801 = &p_1125->g_111;
                    int64_t **l_800[5][9] = {{&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801},{&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801,&l_801}};
                    int8_t *l_807[6] = {&p_1125->g_87,&p_1125->g_87,&p_1125->g_87,&p_1125->g_87,&p_1125->g_87,&p_1125->g_87};
                    int8_t **l_806 = &l_807[4];
                    int i, j;
                    (*l_799) = (p_1125->g_745 | (safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (p_1125->g_87 , (l_799 != ((((l_802 = &p_1125->g_137) == l_760) == (++(*l_760))) , func_40(((((*l_760) = ((l_805 && 0x62L) , ((*l_799) <= ((((*l_806) = (void*)0) != (void*)0) <= l_758[4])))) , p_3) == 7UL), p_1125)))))));
                    l_13[0][6] = (*p_1125->g_329);
                    (*l_12) = (p_1125->g_176 > (((((p_4 , ((++p_1125->g_482[2]) | ((((((((((safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), (((((((((safe_lshift_func_int8_t_s_u(((0x13F1944A912B7400L | ((*l_801) = (*l_10))) , p_4), (!p_3))) ^ 0x028115E9C2C5656AL) , l_799) == (((safe_unary_minus_func_int8_t_s(l_758[2])) >= 1UL) , l_817[1][1][1])) | p_1125->g_94[0][0][5]) , 0L) < 250UL) != p_3) == (-1L)))) , FAKE_DIVERGE(p_1125->group_0_offset, get_group_id(0), 10)), l_818)) != (-7L)) , l_759) == l_759) < p_1125->g_468) || p_3) >= (-4L)) <= 0x76F94052EF0BE28DL) , (*l_799)) >= p_1125->g_92))) <= (**p_1125->g_714)) , 0xCDL) || (**p_1125->g_714)) < p_3));
                }
            }
            for (p_1125->g_176 = 0; (p_1125->g_176 != 18); p_1125->g_176 = safe_add_func_int32_t_s_s(p_1125->g_176, 3))
            { /* block id: 388 */
                int8_t *l_833 = &p_1125->g_87;
                int32_t l_841[10][8][3] = {{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}},{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}},{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}},{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}},{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}},{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}},{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}},{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}},{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}},{{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L},{(-6L),0x1624B409L,7L}}};
                int i, j, k;
                (*l_15) = (((((((((safe_sub_func_uint64_t_u_u(18446744073709551612UL, ((((safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_mod_func_int32_t_s_s(((safe_mul_func_int8_t_s_s(0x27L, ((*l_833) = (FAKE_DIVERGE(p_1125->global_1_offset, get_global_id(1), 10) != ((&p_4 == (void*)0) == ((GROUP_DIVERGE(2, 1) ^ 0x8D66L) | (safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1125->global_2_offset, get_global_id(2), 10), 0L)))))))) != ((((safe_add_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(l_758[9], ((p_1125->g_838 != (void*)0) , 0L))) || FAKE_DIVERGE(p_1125->global_2_offset, get_global_id(2), 10)), 0x1AL)) , 0x9077L) != p_4) , 0x41F2FE4BF7B04FE3L)), 4294967295UL)), l_841[6][3][0])), l_758[1])) & 0UL) <= 0xADL) , p_4))) ^ p_4) && p_3) <= p_3) != l_8[4]) != p_1125->g_445[2][0]) || (*p_1125->g_234)) < 0x4748L) | 7L);
            }
        }
        else
        { /* block id: 392 */
            uint16_t l_842 = 0x71FDL;
            int64_t *l_848 = (void*)0;
            int64_t **l_847[1];
            int64_t ***l_849 = &l_847[0];
            int32_t ***l_854 = &p_1125->g_49;
            uint8_t l_855[10] = {0x60L,0x72L,0x60L,0x60L,0x72L,0x60L,0x60L,0x72L,0x60L,0x60L};
            int64_t *l_857 = &p_1125->g_111;
            int32_t l_887 = 0x31952442L;
            int32_t l_888[1][3];
            int32_t l_915 = (-10L);
            int i, j;
            for (i = 0; i < 1; i++)
                l_847[i] = &l_848;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_888[i][j] = 0x17EDF4BDL;
            }
            if (l_842)
                break;
            l_9 = (((*l_857) = (((safe_sub_func_uint32_t_u_u((0x42859BAB77918752L & ((l_845 == (((0x3864B1ECL | GROUP_DIVERGE(1, 1)) == (((*l_849) = l_847[0]) == &p_1125->g_839)) , &p_1125->g_715[0])) && p_3)), 4UL)) < (safe_mul_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((((l_854 == (void*)0) <= 1L) , (**p_1125->g_838)), l_855[8])), (*l_15)))) | l_856)) , (void*)0);
            if ((0L < (safe_lshift_func_int8_t_s_u(((**p_1125->g_714) & (p_1125->g_330 < (safe_lshift_func_int16_t_s_s((&l_855[4] != &p_1125->g_92), 14)))), 5))))
            { /* block id: 397 */
                int64_t **l_868 = (void*)0;
                int32_t l_878 = 1L;
                uint16_t *l_885 = (void*)0;
                uint16_t *l_886[1][9][2] = {{{&p_1125->g_176,&l_17},{&p_1125->g_176,&l_17},{&p_1125->g_176,&l_17},{&p_1125->g_176,&l_17},{&p_1125->g_176,&l_17},{&p_1125->g_176,&l_17},{&p_1125->g_176,&l_17},{&p_1125->g_176,&l_17},{&p_1125->g_176,&l_17}}};
                int32_t l_889 = 0x00BD7C81L;
                int i, j, k;
                (*l_15) |= ((safe_mod_func_int8_t_s_s(((safe_sub_func_uint8_t_u_u((safe_add_func_int16_t_s_s(((**p_1125->g_838) > (((l_868 != ((*l_849) = l_869)) ^ ((safe_mod_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((!(safe_sub_func_uint16_t_u_u((p_1125->g_178 || ((((safe_mul_func_uint8_t_u_u(p_3, p_4)) == ((p_4 > l_878) , (((safe_lshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u((p_1125->g_176 = (safe_mod_func_uint16_t_u_u(p_1125->g_94[0][0][5], p_3))), 12)), 11)) > p_1125->g_177[0][6][6]) < l_878))) || p_1125->g_70) > p_3)), 0x86A8L))), p_1125->g_95)), p_1125->g_468)) , l_855[8])) | p_4)), p_1125->g_468)), GROUP_DIVERGE(0, 1))) , l_13[0][6]), l_878)) , p_4);
                (*p_1125->g_49) = &l_878;
                l_890++;
                (*p_1125->g_49) = (void*)0;
            }
            else
            { /* block id: 404 */
                int32_t l_900 = 0x379F9A96L;
                uint64_t *l_902[9] = {&p_1125->g_468,&p_1125->g_468,&p_1125->g_468,&p_1125->g_468,&p_1125->g_468,&p_1125->g_468,&p_1125->g_468,&p_1125->g_468,&p_1125->g_468};
                int32_t l_904 = 7L;
                int32_t l_905 = 0L;
                int16_t l_965[5][1][8] = {{{0x72B1L,0x311AL,0x43D8L,0x26EEL,0x43D8L,0x311AL,0x72B1L,1L}},{{0x72B1L,0x311AL,0x43D8L,0x26EEL,0x43D8L,0x311AL,0x72B1L,1L}},{{0x72B1L,0x311AL,0x43D8L,0x26EEL,0x43D8L,0x311AL,0x72B1L,1L}},{{0x72B1L,0x311AL,0x43D8L,0x26EEL,0x43D8L,0x311AL,0x72B1L,1L}},{{0x72B1L,0x311AL,0x43D8L,0x26EEL,0x43D8L,0x311AL,0x72B1L,1L}}};
                uint32_t l_972 = 0UL;
                int i, j, k;
                for (l_890 = 0; (l_890 <= 2); l_890 += 1)
                { /* block id: 407 */
                    int16_t l_899 = 1L;
                    int16_t **l_901 = (void*)0;
                    int32_t l_903[7] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
                    int i;
                    l_888[0][1] &= ((safe_rshift_func_uint16_t_u_s((((-8L) > (+(safe_div_func_uint32_t_u_u(p_3, (safe_add_func_int32_t_s_s((l_887 &= l_899), (1L ^ (p_4 , (((((l_900 , (*p_1125->g_698)) == l_901) ^ p_3) != FAKE_DIVERGE(p_1125->local_2_offset, get_local_id(2), 10)) ^ 0x5481E26EL))))))))) || (*l_10)), p_3)) > (**p_1125->g_838));
                    if (((void*)0 != l_902[3]))
                    { /* block id: 410 */
                        if (p_3)
                            break;
                    }
                    else
                    { /* block id: 412 */
                        uint32_t l_906 = 0xF94CF8CFL;
                        ++l_906;
                    }
                }
                for (l_887 = 0; (l_887 >= 24); l_887 = safe_add_func_int8_t_s_s(l_887, 4))
                { /* block id: 418 */
                    int8_t l_916 = 0L;
                    int32_t **l_920 = (void*)0;
                    int32_t l_968[8];
                    int i;
                    for (i = 0; i < 8; i++)
                        l_968[i] = 0x36E0EBD7L;
                    if ((safe_rshift_func_uint8_t_u_s(((**p_1125->g_699) ^ ((*l_489) = (((p_1125->g_92 & ((*l_857) = (safe_mod_func_int32_t_s_s(((p_4 = l_915) || (((p_1125->g_488[7][0][0] ^ 0x689BB72C16632EC9L) & (l_916 >= (65535UL <= (-1L)))) , (safe_div_func_int16_t_s_s(((-9L) == 0x01C60B2EF2A19E50L), p_1125->g_95)))), l_919)))) == p_3) != 0x7918F656L))), 5)))
                    { /* block id: 422 */
                        (*p_1125->g_49) = (**l_854);
                        (*l_10) |= 0x162E7863L;
                        return (**p_1125->g_699);
                    }
                    else
                    { /* block id: 426 */
                        uint16_t l_930 = 65526UL;
                        uint32_t *l_935 = &p_1125->g_72;
                        int32_t l_936 = (-1L);
                        int32_t *l_951 = (void*)0;
                        int32_t *l_952 = &p_1125->g_183;
                        int32_t *l_953 = &p_1125->g_954;
                        int64_t l_963 = 3L;
                        uint16_t *l_964 = &l_930;
                        (*l_10) = (safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1125->local_0_offset, get_local_id(0), 10), (safe_mod_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(((l_857 == ((safe_unary_minus_func_int16_t_s((!((*l_489) = (*l_15))))) , l_848)) > p_3), ((safe_rshift_func_int8_t_s_u(l_930, 7)) <= (-1L)))), ((safe_mod_func_int64_t_s_s(0x4A56A839C8CB1DF2L, (((safe_mul_func_int8_t_s_s((((*l_935) ^= p_3) || (*l_15)), 0x73L)) | FAKE_DIVERGE(p_1125->group_2_offset, get_group_id(2), 10)) ^ (-1L)))) & (*p_1125->g_234))))));
                        l_936 = 0x1F65AEB6L;
                        (*l_10) ^= ((safe_lshift_func_int16_t_s_u((safe_div_func_uint16_t_u_u((+p_3), p_1125->g_482[3])), (safe_mod_func_int32_t_s_s(p_4, (safe_add_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((l_947[2] == (void*)0), (safe_div_func_int64_t_s_s(((((*l_953) &= ((*l_952) |= (&p_1125->g_468 != (void*)0))) , (safe_add_func_uint32_t_u_u(p_3, ((safe_lshift_func_uint16_t_u_s(((*l_964) &= (safe_sub_func_int64_t_s_s(((safe_lshift_func_int16_t_s_s((***p_1125->g_698), p_3)) , 0L), l_963))), p_3)) , p_4)))) & p_1125->g_594), p_3)))), l_965[3][0][3])))))) & FAKE_DIVERGE(p_1125->group_2_offset, get_group_id(2), 10));
                    }
                    if (p_3)
                        break;
                    p_1125->g_969--;
                    --l_972;
                }
            }
        }
        if ((p_1125->g_235 <= (safe_div_func_int8_t_s_s(((*l_846) |= ((*p_1125->g_698) != ((((safe_div_func_uint32_t_u_u(((((safe_add_func_int32_t_s_s(0x5DE53AB7L, 0x11DE3D67L)) , ((*l_12) ^= 0x63C2L)) ^ (p_4 >= ((((((safe_mul_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_s(((safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (((p_3 , (((void*)0 == (*p_1125->g_637)) <= p_4)) , p_1125->g_94[0][6][4]) || p_4))), p_1125->g_143)) | 8UL), 2)) || p_4), p_4)) & p_3) || l_13[0][6]) != 0xD6L) >= p_3) & p_1125->g_488[5][0][1]))) && p_1125->g_143), p_1125->g_464[0])) || 1UL) || 4UL) , (void*)0))), p_4))))
        { /* block id: 444 */
            int64_t *l_991 = (void*)0;
            uint32_t *l_992 = &p_1125->g_72;
            int32_t l_995 = (-1L);
            int32_t l_1008 = (-9L);
            int32_t l_1025 = 7L;
            for (p_1125->g_178 = 2; (p_1125->g_178 >= 0); p_1125->g_178 -= 1)
            { /* block id: 447 */
                uint8_t *l_996 = &p_1125->g_482[2];
                int64_t l_1007 = 0x5739BDE66DA25024L;
                int32_t l_1009 = 0L;
                int32_t l_1015 = 0x7918C6A3L;
                int32_t l_1016 = 0x3FACA0E3L;
                int32_t l_1018 = 1L;
                int32_t l_1021 = 0x000B3E43L;
                int32_t l_1022 = 0x2122DF5AL;
                int32_t l_1023 = 6L;
                int32_t l_1024 = 0x652F923CL;
                int32_t l_1026[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_1026[i] = (-1L);
                (*l_15) = (safe_mod_func_int64_t_s_s(((((**p_1125->g_838) || ((((((((l_991 == (void*)0) || ((l_992 == (*p_1125->g_233)) , (!(0x9427L || 0x6E1CL)))) <= (safe_rshift_func_int8_t_s_s((((*l_996) = l_995) || (safe_lshift_func_uint16_t_u_s((((((safe_sub_func_int32_t_s_s((((safe_div_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(l_1007, p_3)), p_1125->g_94[0][2][5])) <= 0x58A13EAFL), 1UL)) | p_1125->g_445[0][3]) >= 0x3C8B8F291A30F7C2L), GROUP_DIVERGE(2, 1))) <= 1UL) > p_4) < l_1008) || (-1L)), 14))), 2))) , p_3) , (-5L)) || 0xF65BC5B58CCD44DEL) < l_995) < (*p_1125->g_234))) ^ p_3) == (-8L)), p_4));
                for (p_1125->g_72 = 0; (p_1125->g_72 <= 4); p_1125->g_72 += 1)
                { /* block id: 452 */
                    int64_t l_1012 = 0x0C8CD098E233AED5L;
                    int32_t l_1013 = 9L;
                    int32_t l_1014 = 9L;
                    int32_t l_1017 = 0x634CCF36L;
                    int32_t l_1019[6][5][5] = {{{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L}},{{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L}},{{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L}},{{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L}},{{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L}},{{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L},{0x649AA4D4L,0x46F3BCECL,0L,0x77686CB6L,0x396A2762L}}};
                    uint32_t l_1031 = 4294967295UL;
                    int i, j, k;
                    for (p_1125->g_95 = 2; (p_1125->g_95 >= 0); p_1125->g_95 -= 1)
                    { /* block id: 455 */
                        int32_t l_1010 = 0x32F171EFL;
                        int32_t l_1011 = (-5L);
                        int32_t l_1020 = 0x1E94C4E4L;
                        int i, j, k;
                        --l_1027;
                        l_1031++;
                    }
                    l_16[(p_1125->g_178 + 1)][(p_1125->g_178 + 1)][p_1125->g_72] = func_40(((*l_12) == ((*l_846) = (p_3 , (safe_div_func_uint64_t_u_u((((p_3 , (safe_unary_minus_func_int32_t_s((p_3 , (safe_add_func_int16_t_s_s((***p_1125->g_698), ((((~((safe_sub_func_int64_t_s_s((safe_mod_func_int32_t_s_s((((void*)0 != &p_1125->g_637) , (safe_mul_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u(0xE0L, (safe_rshift_func_uint16_t_u_s(((safe_mod_func_uint16_t_u_u((p_1125->g_445[0][0] <= p_1125->g_177[0][6][4]), FAKE_DIVERGE(p_1125->global_2_offset, get_global_id(2), 10))) , p_1125->g_488[0][0][2]), 0)))) && l_1016), p_3))), l_1051)), 0x110F1C5C63A9AC8FL)) || p_3)) != p_1125->g_177[0][3][0]) | FAKE_DIVERGE(p_1125->global_2_offset, get_global_id(2), 10)) && p_4))))))) , l_1025) , p_3), p_4))))), p_1125);
                    (*p_1125->g_119) = (*p_1125->g_49);
                }
            }
            for (p_1125->g_92 = 0; (p_1125->g_92 > 38); p_1125->g_92 = safe_add_func_int8_t_s_s(p_1125->g_92, 2))
            { /* block id: 466 */
                for (p_1125->g_954 = 3; (p_1125->g_954 >= 0); p_1125->g_954 -= 1)
                { /* block id: 469 */
                    uint8_t *l_1060 = &p_1125->g_94[0][0][5];
                    (*l_12) = (safe_lshift_func_int8_t_s_u((safe_mod_func_int32_t_s_s((safe_rshift_func_int16_t_s_s(((*l_489) |= p_3), 12)), (((FAKE_DIVERGE(p_1125->group_0_offset, get_group_id(0), 10) & ((*l_1060) = 0x8CL)) > p_3) , 0x7CEBFB54L))), 0));
                    for (p_1125->g_330 = 3; (p_1125->g_330 >= 0); p_1125->g_330 -= 1)
                    { /* block id: 475 */
                        if (p_4)
                            break;
                    }
                }
            }
            if ((*l_15))
                continue;
            if (p_4)
                break;
        }
        else
        { /* block id: 482 */
            if ((*l_15))
                break;
        }
    }
    if (((*l_1085) = (((safe_lshift_func_int8_t_s_s(((*l_1082) = ((((safe_add_func_int64_t_s_s((((safe_lshift_func_int16_t_s_u((safe_add_func_uint64_t_u_u((l_1071 & p_1125->g_445[0][3]), 18446744073709551615UL)), 7)) == ((void*)0 == &p_3)) < (&l_744 != &l_744)), (safe_lshift_func_int16_t_s_s((safe_add_func_int64_t_s_s((**p_1125->g_838), (safe_sub_func_uint32_t_u_u((((safe_lshift_func_int8_t_s_u(0x15L, 7)) > p_3) <= 9L), p_4)))), 4)))) == p_3) , l_1080[1]) == &p_1125->g_234)), 4)) != l_8[2]) , p_4)))
    { /* block id: 488 */
        uint8_t l_1086 = 0UL;
        int32_t *l_1089 = &l_13[0][6];
        --l_1086;
        (*p_1125->g_119) = l_1089;
    }
    else
    { /* block id: 491 */
        (*p_1125->g_119) = (*p_1125->g_119);
    }
    (*l_1085) &= p_3;
    (*p_1125->g_119) = (((safe_rshift_func_uint8_t_u_s(((*l_1085) | (safe_lshift_func_int8_t_s_u(((safe_rshift_func_uint16_t_u_s(p_1125->g_445[1][0], ((void*)0 == &p_1125->g_176))) & (*p_1125->g_329)), 7))), 7)) , (safe_rshift_func_int16_t_s_s(((((3L >= (*l_1085)) , ((safe_div_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((p_1125->g_72 ^= GROUP_DIVERGE(0, 1)) == ((safe_lshift_func_uint16_t_u_s(((*l_1107) ^= 1UL), 4)) , (((safe_mod_func_uint32_t_u_u(((((*l_1085) = (((p_4 | 0x222BACE1L) >= p_3) > (-9L))) <= l_1110) >= p_4), 0xC678EC9CL)) | 0x7ED17B0D3F793D20L) , (*l_1085)))), p_3)), p_1125->g_445[0][3])) > (*p_1125->g_839)), p_3)) < 0xA6L)) | p_1125->g_177[0][3][0]) ^ 5L), p_4))) , (void*)0);
    return p_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1125->g_491 p_1125->g_119 p_1125->g_50 p_1125->g_49 p_1125->g_11 p_1125->g_94 p_1125->g_464 p_1125->g_176 p_1125->g_177 p_1125->g_111 p_1125->g_95 p_1125->g_143 p_1125->g_235 p_1125->g_87 p_1125->g_698 p_1125->g_137 p_1125->g_482 p_1125->g_72 p_1125->g_699 p_1125->g_714 p_1125->g_488 p_1125->g_700 p_1125->g_112 p_1125->g_329 p_1125->g_330
 * writes: p_1125->g_11 p_1125->g_50 p_1125->g_198 p_1125->g_111 p_1125->g_95 p_1125->g_137 p_1125->g_482 p_1125->g_92 p_1125->g_594 p_1125->g_637 p_1125->g_176 p_1125->g_247 p_1125->g_87 p_1125->g_70 p_1125->g_464 p_1125->g_72
 */
int32_t * func_20(int16_t  p_21, uint32_t  p_22, int8_t  p_23, int16_t  p_24, int64_t  p_25, struct S0 * p_1125)
{ /* block id: 212 */
    int32_t l_490 = (-2L);
    int32_t l_550 = 7L;
    uint32_t *l_553 = (void*)0;
    int32_t l_558 = 1L;
    uint32_t *l_587 = &p_1125->g_72;
    uint64_t l_610 = 0UL;
    uint32_t **l_632 = &l_587;
    uint32_t ***l_631 = &l_632;
    uint32_t ***l_634 = &l_632;
    int64_t **l_638 = &p_1125->g_370;
    uint32_t l_639 = 0UL;
    int32_t l_687 = (-7L);
    (*p_1125->g_491) = (l_490 = l_490);
    (*p_1125->g_49) = (*p_1125->g_119);
    for (p_25 = 0; (p_25 >= (-7)); p_25 = safe_sub_func_uint32_t_u_u(p_25, 5))
    { /* block id: 218 */
        int32_t l_494[8][7][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
        int32_t *l_519 = &p_1125->g_183;
        int64_t **l_539[5] = {&p_1125->g_370,&p_1125->g_370,&p_1125->g_370,&p_1125->g_370,&p_1125->g_370};
        int64_t ***l_538 = &l_539[3];
        int32_t l_595 = 0x61B4CED5L;
        int32_t *l_642 = &l_490;
        int8_t *l_691 = (void*)0;
        int8_t **l_690 = &l_691;
        int8_t **l_696 = &l_691;
        int i, j, k;
        l_494[5][2][0] = p_21;
        for (p_1125->g_198 = 27; (p_1125->g_198 < (-8)); p_1125->g_198--)
        { /* block id: 222 */
            int32_t l_499 = 0x652D6AA6L;
            int64_t *l_504[4][1][10] = {{{(void*)0,(void*)0,&p_1125->g_198,(void*)0,(void*)0,(void*)0,(void*)0,&p_1125->g_198,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1125->g_198,(void*)0,(void*)0,(void*)0,(void*)0,&p_1125->g_198,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1125->g_198,(void*)0,(void*)0,(void*)0,(void*)0,&p_1125->g_198,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1125->g_198,(void*)0,(void*)0,(void*)0,(void*)0,&p_1125->g_198,(void*)0,(void*)0}}};
            int32_t l_613 = 1L;
            int32_t l_614 = 0x07F0D0FEL;
            uint16_t l_617 = 0x3781L;
            int8_t *l_662[5];
            uint32_t ****l_668 = (void*)0;
            int16_t **l_677 = (void*)0;
            uint64_t *l_730 = &p_1125->g_468;
            uint32_t l_743 = 0x1FF71EECL;
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_662[i] = &p_1125->g_87;
            if (((safe_mod_func_int8_t_s_s(l_499, 1L)) && ((&p_1125->g_370 != ((safe_rshift_func_int16_t_s_u(p_21, (safe_rshift_func_uint8_t_u_u(((void*)0 != l_504[1][0][3]), 4)))) , &l_504[1][0][5])) , (0x28BFE230873EEF3FL || (~p_25)))))
            { /* block id: 223 */
                uint32_t l_520 = 0xBC930061L;
                int32_t *l_521 = &p_1125->g_11[4][0];
                (*l_521) = (safe_mod_func_int16_t_s_s((((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(p_1125->g_11[4][0], ((safe_sub_func_uint32_t_u_u((0x15L != ((l_519 != (p_24 , l_519)) > (p_1125->g_94[0][0][5] >= (p_24 ^ (p_21 && 0x48L))))), l_490)) , p_24))), 6)) == 0x4D9EE3F8L), p_1125->g_464[1])) < p_1125->g_176) & p_21), l_520));
            }
            else
            { /* block id: 225 */
                int32_t *l_526 = (void*)0;
                int16_t **l_554 = (void*)0;
                int32_t l_608 = 0x0DB05ADDL;
                int32_t l_609 = 0x1B334DD6L;
                int32_t l_615 = (-1L);
                int32_t l_616[8] = {3L,3L,3L,3L,3L,3L,3L,3L};
                uint32_t ***l_633 = &l_632;
                int i;
                for (p_24 = (-1); (p_24 < (-17)); p_24 = safe_sub_func_int32_t_s_s(p_24, 9))
                { /* block id: 228 */
                    uint32_t l_527 = 4294967286UL;
                    uint64_t *l_555 = (void*)0;
                    uint64_t *l_556[10];
                    int32_t l_557 = (-1L);
                    int32_t *l_559 = (void*)0;
                    int32_t *l_560 = &p_1125->g_11[4][0];
                    int i;
                    for (i = 0; i < 10; i++)
                        l_556[i] = &p_1125->g_464[6];
                    for (p_1125->g_111 = 0; (p_1125->g_111 <= 5); p_1125->g_111 = safe_add_func_uint8_t_u_u(p_1125->g_111, 8))
                    { /* block id: 231 */
                        return l_526;
                    }
                    l_527--;
                    (*l_560) |= (((!((safe_lshift_func_uint16_t_u_s((+FAKE_DIVERGE(p_1125->local_1_offset, get_local_id(1), 10)), ((safe_rshift_func_int16_t_s_u((((safe_mod_func_uint16_t_u_u((((((safe_lshift_func_uint8_t_u_s(((((void*)0 == l_538) >= 7UL) < (safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(l_490, 11)), (l_558 = (safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s(p_21, (safe_div_func_int64_t_s_s(((l_550 = p_22) != (l_557 |= (safe_mod_func_int8_t_s_s(((((void*)0 != l_553) , &p_1125->g_247[0]) == l_554), 0x48L)))), 0x56F10965E4A2F189L)))), 0x5FL)))))), p_1125->g_177[0][2][6])) , (void*)0) == &p_1125->g_370) , p_1125->g_94[0][6][7]) <= 0UL), p_22)) , 18446744073709551609UL) != p_24), p_24)) & 4UL))) , 0L)) > 0xE9B7L) & 0xE87A6C7F9A8B5705L);
                    if (p_22)
                        continue;
                }
                for (p_1125->g_95 = (-1); (p_1125->g_95 <= 28); p_1125->g_95++)
                { /* block id: 243 */
                    uint64_t l_564[2];
                    int16_t l_588 = 0x56D4L;
                    int32_t l_590 = 0L;
                    int32_t *l_596 = &p_1125->g_11[4][0];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_564[i] = 0x5B7B71217FBE7171L;
                    for (p_23 = 0; (p_23 <= 0); p_23 += 1)
                    { /* block id: 246 */
                        int32_t *l_563[1][5] = {{&l_499,&l_499,&l_499,&l_499,&l_499}};
                        int i, j, k;
                        ++l_564[0];
                    }
                    for (p_1125->g_137 = 2; (p_1125->g_137 >= 7); p_1125->g_137++)
                    { /* block id: 251 */
                        uint8_t *l_589 = &p_1125->g_482[2];
                        uint8_t *l_591 = &p_1125->g_92;
                        int32_t l_592[2][8] = {{0x00424F40L,0x3A9BAECBL,0x00424F40L,0x00424F40L,0x3A9BAECBL,0x00424F40L,0x00424F40L,0x3A9BAECBL},{0x00424F40L,0x3A9BAECBL,0x00424F40L,0x00424F40L,0x3A9BAECBL,0x00424F40L,0x00424F40L,0x3A9BAECBL}};
                        int64_t *l_593[10][2] = {{&p_1125->g_137,&p_1125->g_111},{&p_1125->g_137,&p_1125->g_111},{&p_1125->g_137,&p_1125->g_111},{&p_1125->g_137,&p_1125->g_111},{&p_1125->g_137,&p_1125->g_111},{&p_1125->g_137,&p_1125->g_111},{&p_1125->g_137,&p_1125->g_111},{&p_1125->g_137,&p_1125->g_111},{&p_1125->g_137,&p_1125->g_111},{&p_1125->g_137,&p_1125->g_111}};
                        int i, j;
                        l_595 ^= (safe_sub_func_int64_t_s_s((l_494[5][2][0] ^= (((safe_mul_func_uint8_t_u_u(l_564[0], ((safe_add_func_uint16_t_u_u(0x5EC9L, (safe_mul_func_uint16_t_u_u(p_1125->g_111, (safe_add_func_int64_t_s_s(0x1E86034B0A54A9FDL, (safe_mul_func_uint8_t_u_u(((*l_591) = ((!(((safe_rshift_func_uint16_t_u_u((l_590 = ((!p_21) || (0xEFAF23E3L != (safe_mul_func_int16_t_s_s((p_1125->g_95 | ((*l_589) = ((safe_mod_func_uint16_t_u_u(((l_587 = (void*)0) != (void*)0), l_588)) >= p_22))), p_23))))), 5)) ^ l_499) , p_22)) ^ 255UL)), 0xA1L)))))))) <= l_592[0][0]))) ^ p_24) && l_499)), p_1125->g_177[0][2][0]));
                        if (p_22)
                            continue;
                    }
                    (*l_596) = 0x0A069FC2L;
                }
                for (p_1125->g_92 = (-14); (p_1125->g_92 < 53); ++p_1125->g_92)
                { /* block id: 264 */
                    int32_t *l_599 = &l_494[5][6][0];
                    int32_t *l_600 = &l_499;
                    int32_t *l_601 = (void*)0;
                    int32_t *l_602 = &l_550;
                    int32_t *l_603 = &l_490;
                    int32_t *l_604 = &l_550;
                    int32_t *l_605 = &l_490;
                    int32_t *l_606 = &l_490;
                    int32_t *l_607[3];
                    uint32_t **l_629 = &l_587;
                    uint32_t ***l_628 = &l_629;
                    int16_t *l_659[1];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_607[i] = &p_1125->g_11[4][0];
                    for (i = 0; i < 1; i++)
                        l_659[i] = &p_1125->g_70;
                    --l_610;
                    for (p_1125->g_594 = 0; p_1125->g_594 < 5; p_1125->g_594 += 1)
                    {
                        l_539[p_1125->g_594] = &l_504[1][0][4];
                    }
                    l_617--;
                    if (l_595)
                    { /* block id: 268 */
                        uint32_t **l_627 = &l_587;
                        uint32_t ***l_626 = &l_627;
                        uint32_t ****l_630[9];
                        uint16_t *l_640 = &p_1125->g_176;
                        uint32_t l_641[3][6] = {{4294967290UL,4294967295UL,4294967290UL,4294967290UL,4294967295UL,4294967290UL},{4294967290UL,4294967295UL,4294967290UL,4294967290UL,4294967295UL,4294967290UL},{4294967290UL,4294967295UL,4294967290UL,4294967290UL,4294967295UL,4294967290UL}};
                        int i, j;
                        for (i = 0; i < 9; i++)
                            l_630[i] = &l_628;
                        (*l_600) |= ((safe_mul_func_int8_t_s_s((p_23 <= (((*l_640) = (((safe_rshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_u((p_24 <= (&l_587 == ((*l_626) = &l_587))), ((l_631 = l_628) == (l_634 = l_633)))), 2)) | GROUP_DIVERGE(1, 1)) <= (safe_mod_func_uint32_t_u_u(((+((p_1125->g_637 = &p_1125->g_370) == ((*l_538) = l_638))) & (((p_21 >= l_558) , p_25) , 0UL)), l_639)))) <= l_641[0][0])), 0x25L)) >= l_641[1][2]);
                        l_642 = l_602;
                    }
                    else
                    { /* block id: 277 */
                        int16_t **l_660 = (void*)0;
                        int8_t *l_661 = &p_1125->g_87;
                        int8_t **l_663 = &l_662[3];
                        l_606 = ((((safe_mul_func_int16_t_s_s((p_1125->g_143 == 0x147AL), ((safe_rshift_func_int8_t_s_s((+((*l_661) = (safe_add_func_uint8_t_u_u((~(((safe_sub_func_int64_t_s_s((safe_mul_func_int16_t_s_s(((((FAKE_DIVERGE(p_1125->global_0_offset, get_global_id(0), 10) ^ (safe_mul_func_int16_t_s_s((p_21 ^= (safe_rshift_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1125->local_2_offset, get_local_id(2), 10), (p_24 = ((p_1125->g_464[0] && ((p_23 , (p_1125->g_247[2] = l_659[0])) == ((((*l_600) &= 1L) & ((l_661 == ((*l_663) = l_662[2])) ^ ((safe_sub_func_int8_t_s_s(((p_24 || p_1125->g_235) & p_23), (-8L))) <= p_1125->g_87))) , (void*)0))) , (-1L))))), 6))), p_25))) < (-1L)) | l_614) <= p_1125->g_111), p_1125->g_11[4][6])), (-2L))) & 0x7DFBL) , 2UL)), l_490)))), 0)) >= 0x4A3794CDL))) , 0x5364L) <= l_613) , (void*)0);
                    }
                }
            }
            (*l_642) = p_24;
            for (p_1125->g_70 = (-25); (p_1125->g_70 != 0); p_1125->g_70++)
            { /* block id: 291 */
                int16_t ***l_678 = &l_677;
                uint64_t *l_685[1][9] = {{&p_1125->g_464[7],&p_1125->g_464[7],&p_1125->g_464[7],&p_1125->g_464[7],&p_1125->g_464[7],&p_1125->g_464[7],&p_1125->g_464[7],&p_1125->g_464[7],&p_1125->g_464[7]}};
                int64_t *l_686 = &p_1125->g_137;
                int32_t l_704[3][6][7] = {{{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L}},{{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L}},{{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L},{6L,(-1L),8L,0L,0x35CF9D80L,0L,7L}}};
                int i, j, k;
                l_687 = (((((void*)0 == l_668) , (((safe_div_func_int64_t_s_s(((*l_686) = (safe_div_func_uint32_t_u_u((((p_1125->g_464[2] = (safe_sub_func_uint16_t_u_u((p_25 && 0xFE28B1E8L), ((7UL ^ ((safe_sub_func_uint32_t_u_u((((*l_678) = l_677) == ((safe_add_func_int32_t_s_s(((*l_642) ^= (safe_mod_func_uint32_t_u_u(((((l_499 &= (safe_rshift_func_int8_t_s_u((+((void*)0 == &p_1125->g_464[0])), 2))) , ((18446744073709551613UL && p_25) || p_25)) , p_23) < p_25), l_558))), p_24)) , (void*)0)), p_21)) == GROUP_DIVERGE(0, 1))) <= p_1125->g_94[0][0][1])))) > 0x4D4272CBCA682456L) , l_617), 0x13DA50D3L))), p_1125->g_177[0][4][2])) & 3UL) == l_610)) && l_687) ^ (-8L));
                if (p_24)
                    break;
                for (p_1125->g_137 = 0; (p_1125->g_137 >= 0); p_1125->g_137 -= 1)
                { /* block id: 301 */
                    int8_t **l_693 = &l_662[2];
                    int8_t ***l_692 = &l_693;
                    int8_t ***l_694 = (void*)0;
                    int8_t ***l_695 = (void*)0;
                    int16_t ***l_697[6] = {&l_677,&l_677,&l_677,&l_677,&l_677,&l_677};
                    uint32_t *l_701 = &p_1125->g_72;
                    int32_t l_734[7][6] = {{0x0E1587A8L,(-1L),(-1L),0x0E1587A8L,0x0E1587A8L,(-1L)},{0x0E1587A8L,(-1L),(-1L),0x0E1587A8L,0x0E1587A8L,(-1L)},{0x0E1587A8L,(-1L),(-1L),0x0E1587A8L,0x0E1587A8L,(-1L)},{0x0E1587A8L,(-1L),(-1L),0x0E1587A8L,0x0E1587A8L,(-1L)},{0x0E1587A8L,(-1L),(-1L),0x0E1587A8L,0x0E1587A8L,(-1L)},{0x0E1587A8L,(-1L),(-1L),0x0E1587A8L,0x0E1587A8L,(-1L)},{0x0E1587A8L,(-1L),(-1L),0x0E1587A8L,0x0E1587A8L,(-1L)}};
                    int64_t *l_741 = (void*)0;
                    uint8_t *l_742 = &p_1125->g_482[2];
                    int i, j;
                    l_704[2][4][6] = (safe_mul_func_uint8_t_u_u((l_690 != (l_696 = ((*l_692) = &l_691))), ((l_697[5] == ((~GROUP_DIVERGE(2, 1)) , p_1125->g_698)) >= ((p_1125->g_482[(p_1125->g_137 + 3)] , (++(*l_701))) <= ((!l_687) > ((*l_642) |= (((*l_678) = l_677) != (*p_1125->g_698))))))));
                    for (p_24 = 0; (p_24 <= 0); p_24 += 1)
                    { /* block id: 310 */
                        uint16_t *l_725 = &l_617;
                        int i, j;
                        (*l_642) = ((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u(((p_1125->g_482[(p_1125->g_137 + 3)] >= (safe_rshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((safe_div_func_uint8_t_u_u((p_1125->g_482[(p_1125->g_137 + 3)] >= (((((void*)0 != p_1125->g_714) >= (safe_rshift_func_uint8_t_u_u(((l_614 , (safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((--(*l_725)), 13)), 12)), (&p_1125->g_183 == (void*)0)))) , (safe_rshift_func_uint8_t_u_s((l_613 &= (p_1125->g_482[(p_1125->g_137 + 3)] != (&p_1125->g_468 != l_730))), 4))), 6))) | p_21) && p_21)), 1L)), p_25)), p_1125->g_488[3][0][1]))) | p_1125->g_482[2]))), p_1125->g_482[p_24])) || p_1125->g_87);
                        l_734[2][0] = (safe_mul_func_int16_t_s_s(((p_1125->g_482[p_24] || (8UL ^ ((*l_642) |= l_617))) && 0UL), (**p_1125->g_699)));
                        l_734[2][0] = (p_24 <= 0x715F5E4D82130743L);
                        if ((*p_1125->g_329))
                            break;
                    }
                    l_499 |= (p_25 , (((safe_div_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((&p_1125->g_464[0] != &l_610), ((safe_div_func_uint32_t_u_u(l_610, ((&p_1125->g_699 != (((*l_742) = (l_504[2][0][6] == (p_1125->g_235 , l_741))) , (void*)0)) | l_490))) & 0x71570FA0L))), l_743)) && p_21) > l_687));
                }
            }
        }
        if (p_21)
            continue;
        l_550 = (*l_642);
    }
    return (*p_1125->g_49);
}


/* ------------------------------------------ */
/* 
 * reads : p_1125->g_11 p_1125->g_49 p_1125->g_72 p_1125->g_70 p_1125->g_95 p_1125->g_94 p_1125->g_109 p_1125->g_112 p_1125->g_119 p_1125->g_137 p_1125->g_143 p_1125->g_92 p_1125->g_50 p_1125->g_178 p_1125->g_111 p_1125->g_183 p_1125->g_87 p_1125->g_233 p_1125->g_177 p_1125->g_234 p_1125->g_235 p_1125->g_329 p_1125->g_330 p_1125->g_198 p_1125->g_445 p_1125->g_464 p_1125->g_468
 * writes: p_1125->g_11 p_1125->g_72 p_1125->g_84 p_1125->g_87 p_1125->g_92 p_1125->g_94 p_1125->g_95 p_1125->g_104 p_1125->g_109 p_1125->g_111 p_1125->g_112 p_1125->g_70 p_1125->g_137 p_1125->g_143 p_1125->g_50 p_1125->g_176 p_1125->g_177 p_1125->g_178 p_1125->g_183 p_1125->g_198 p_1125->g_247 p_1125->g_290 p_1125->g_330 p_1125->g_370 p_1125->g_445 p_1125->g_464 p_1125->g_468
 */
uint32_t  func_26(int32_t  p_27, struct S0 * p_1125)
{ /* block id: 10 */
    int32_t *l_36 = &p_1125->g_11[4][0];
    int32_t *l_43[2][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
    int32_t **l_42 = &l_43[1][0];
    int32_t *l_182 = &p_1125->g_183;
    int16_t *l_444 = (void*)0;
    uint8_t *l_448 = &p_1125->g_94[0][1][3];
    int64_t **l_474 = (void*)0;
    int64_t ***l_473[2][5] = {{&l_474,&l_474,&l_474,&l_474,&l_474},{&l_474,&l_474,&l_474,&l_474,&l_474}};
    int32_t l_475 = 1L;
    int32_t l_476[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int8_t l_477 = 0x4BL;
    uint32_t l_478 = 0x08D4D166L;
    int i, j;
    p_1125->g_11[4][0] = p_1125->g_11[4][0];
    if ((safe_rshift_func_int16_t_s_s((p_1125->g_445[0][3] &= (safe_lshift_func_int8_t_s_u(func_32((l_36 == (((p_1125->g_11[3][2] , func_37(((*l_42) = func_40((*l_36), p_1125)), ((*p_1125->g_119) = func_44((((safe_add_func_int64_t_s_s((((0UL < (p_1125->g_49 == (func_51(((*l_182) &= (((safe_add_func_int8_t_s_s(((func_55(p_27, p_1125) >= (safe_mul_func_int16_t_s_s(p_27, (*l_36)))) <= (*l_36)), 252UL)) >= 8L) , p_27)), p_1125) , &l_36))) > 0x2A544E2BL) >= 0L), p_27)) , 0x0DC7176433181C95L) , p_1125->g_95), p_1125->g_119, p_1125)), p_1125)) == l_182) , (*l_42))), p_27, p_1125->g_11[2][3], p_1125), p_27))), 2)))
    { /* block id: 187 */
        uint8_t *l_446 = &p_1125->g_94[0][0][5];
        uint8_t **l_447 = &l_446;
        int32_t l_449 = 0x532BD9DFL;
        l_449 = (((*l_447) = l_446) != l_448);
    }
    else
    { /* block id: 190 */
        int64_t *l_458 = (void*)0;
        uint64_t *l_463 = &p_1125->g_464[0];
        uint64_t *l_467 = &p_1125->g_468;
        int32_t l_471 = 0x04F824CFL;
        uint32_t *l_472 = &p_1125->g_177[0][1][4];
        l_471 = (safe_mul_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_1125->global_1_offset, get_global_id(1), 10), ((safe_add_func_uint8_t_u_u((p_1125->g_177[0][3][0] , (((1UL | ((safe_mul_func_int16_t_s_s((0xD6E92C05F9663ABBL & ((void*)0 == l_458)), (safe_rshift_func_uint8_t_u_u(((((!p_27) , (GROUP_DIVERGE(2, 1) , ((*l_472) &= ((((safe_add_func_int32_t_s_s(((0x0163384EF867AAE9L >= (((*l_463)--) >= ((*l_467)++))) > (l_471 & (*p_1125->g_234))), (*l_36))) > p_27) && l_471) | 0x09L)))) , (void*)0) != l_473[0][4]), 2)))) , p_27)) >= (-1L)) & l_471)), p_1125->g_72)) && p_27))), p_1125->g_137));
        (*l_36) ^= ((*p_1125->g_329) = (-1L));
    }
    l_478++;
    for (p_1125->g_137 = 0; (p_1125->g_137 <= 2); p_1125->g_137 += 1)
    { /* block id: 201 */
        (*l_42) = (*l_42);
        for (l_477 = 2; (l_477 >= 0); l_477 -= 1)
        { /* block id: 205 */
            uint64_t l_481 = 0x7D604364CD6E5E32L;
            int i, j;
            l_481 = (-1L);
            return p_1125->g_445[p_1125->g_137][(p_1125->g_137 + 2)];
        }
    }
    return (*p_1125->g_234);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_32(uint32_t  p_33, uint64_t  p_34, uint32_t  p_35, struct S0 * p_1125)
{ /* block id: 184 */
    uint64_t l_443 = 0xED3411EFA3E66F1FL;
    return l_443;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_37(int32_t * p_38, int32_t * p_39, struct S0 * p_1125)
{ /* block id: 182 */
    int32_t *l_442 = &p_1125->g_330;
    return l_442;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_40(int8_t  p_41, struct S0 * p_1125)
{ /* block id: 12 */
    return &p_1125->g_11[0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1125->g_50
 * writes:
 */
int32_t * func_44(uint16_t  p_45, int32_t ** p_46, struct S0 * p_1125)
{ /* block id: 177 */
    uint16_t l_436 = 0xDBFEL;
    int8_t l_439 = 0x41L;
    int32_t l_440 = 0x5591657FL;
    int32_t l_441[8][4] = {{(-1L),0x16D89452L,6L,0x16D89452L},{(-1L),0x16D89452L,6L,0x16D89452L},{(-1L),0x16D89452L,6L,0x16D89452L},{(-1L),0x16D89452L,6L,0x16D89452L},{(-1L),0x16D89452L,6L,0x16D89452L},{(-1L),0x16D89452L,6L,0x16D89452L},{(-1L),0x16D89452L,6L,0x16D89452L},{(-1L),0x16D89452L,6L,0x16D89452L}};
    int i, j;
    l_441[2][0] = (l_440 ^= (safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(l_436, (safe_add_func_uint32_t_u_u(0UL, l_436)))), l_439)));
    return (*p_46);
}


/* ------------------------------------------ */
/* 
 * reads : p_1125->g_11 p_1125->g_87 p_1125->g_94 p_1125->g_233 p_1125->g_95 p_1125->g_111 p_1125->g_143 p_1125->g_112 p_1125->g_177 p_1125->g_178 p_1125->g_234 p_1125->g_235 p_1125->g_137 p_1125->g_329 p_1125->g_92 p_1125->g_330 p_1125->g_119 p_1125->g_198
 * writes: p_1125->g_198 p_1125->g_87 p_1125->g_95 p_1125->g_247 p_1125->g_92 p_1125->g_72 p_1125->g_178 p_1125->g_290 p_1125->g_137 p_1125->g_330 p_1125->g_111 p_1125->g_370 p_1125->g_94 p_1125->g_176 p_1125->g_50 p_1125->g_70
 */
uint64_t  func_51(int32_t  p_52, struct S0 * p_1125)
{ /* block id: 54 */
    uint64_t l_186[8] = {8UL,18446744073709551609UL,8UL,8UL,18446744073709551609UL,8UL,8UL,18446744073709551609UL};
    uint16_t *l_191 = (void*)0;
    int64_t *l_196 = (void*)0;
    int64_t *l_197[1];
    int32_t l_203 = 0x4B9D369FL;
    uint64_t l_208 = 1UL;
    int32_t l_209 = 0x6B170D87L;
    int16_t *l_210[9] = {&p_1125->g_70,&p_1125->g_70,&p_1125->g_70,&p_1125->g_70,&p_1125->g_70,&p_1125->g_70,&p_1125->g_70,&p_1125->g_70,&p_1125->g_70};
    int32_t l_211 = 0L;
    uint8_t *l_227 = &p_1125->g_92;
    uint8_t *l_228 = &p_1125->g_92;
    int8_t *l_242 = &p_1125->g_87;
    int32_t ***l_243 = &p_1125->g_119;
    int32_t l_350 = 0x130DB22AL;
    int32_t l_352 = 0x510D4DC2L;
    int32_t l_355 = 0x2FEF3B15L;
    int32_t l_358[6] = {(-1L),0x37A97595L,(-1L),(-1L),0x37A97595L,(-1L)};
    int64_t l_429 = 0x066B903D57D10294L;
    uint8_t **l_430 = &l_227;
    int i;
    for (i = 0; i < 1; i++)
        l_197[i] = &p_1125->g_198;
    if ((((safe_div_func_int64_t_s_s((l_186[2] < (((safe_mul_func_int16_t_s_s((l_211 = ((l_209 &= ((0x8708D74EL | (l_191 == l_191)) && ((safe_rshift_func_int16_t_s_s((safe_add_func_int64_t_s_s(((p_1125->g_198 = 0x5A2A86C6973A35D5L) , ((safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(((+(l_203 = p_1125->g_11[3][2])) >= l_186[3]), (safe_sub_func_uint8_t_u_u((0xF1FCL ^ (l_186[1] <= l_186[2])), 0UL)))), 0x541012F7L)) , l_208)), GROUP_DIVERGE(2, 1))), l_186[5])) <= 0xC72FL))) , 0x77BEL)), p_52)) >= l_186[2]) < 0x78FCAF225372B5BDL)), l_208)) || 18446744073709551612UL) , p_52))
    { /* block id: 59 */
        uint64_t l_220 = 3UL;
        int8_t *l_231 = &p_1125->g_87;
        int32_t *l_232 = &l_203;
        volatile uint32_t **l_236[7][5][5] = {{{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234}},{{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234}},{{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234}},{{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234}},{{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234}},{{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234}},{{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234},{&p_1125->g_234,(void*)0,&p_1125->g_234,&p_1125->g_234,&p_1125->g_234}}};
        int i, j, k;
        (*l_232) = (((((safe_add_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((l_209 = (GROUP_DIVERGE(2, 1) ^ ((-5L) == ((((safe_sub_func_uint16_t_u_u(65535UL, (safe_mod_func_int16_t_s_s(((l_220 < 4294967290UL) ^ (safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(((l_227 == (l_228 = (void*)0)) , 65532UL), 0x6194L)), 2)), (safe_div_func_int8_t_s_s(((*l_231) |= (-10L)), p_52))))), 1L)))) == 0x05A429E2L) != p_52) , p_52)))), p_52)), p_1125->g_94[0][0][5])) == 0x20B7L) ^ FAKE_DIVERGE(p_1125->global_0_offset, get_global_id(0), 10)) < l_208) | l_186[2]);
        l_236[4][4][2] = p_1125->g_233;
    }
    else
    { /* block id: 65 */
        uint64_t l_237[1];
        int8_t *l_241 = (void*)0;
        int8_t **l_240[8] = {&l_241,&l_241,&l_241,&l_241,&l_241,&l_241,&l_241,&l_241};
        int16_t *l_246 = &p_1125->g_70;
        int32_t l_299 = 0x58000DD4L;
        int32_t l_313 = (-8L);
        int32_t l_346 = 0x0D3C9786L;
        int32_t l_347 = (-10L);
        int32_t l_349 = (-1L);
        int32_t l_353 = 0x2201CC4FL;
        int32_t l_354 = 0x4A5A0E83L;
        int32_t l_356 = 0L;
        int32_t l_357[7][10] = {{1L,8L,1L,1L,8L,1L,1L,8L,1L,1L},{1L,8L,1L,1L,8L,1L,1L,8L,1L,1L},{1L,8L,1L,1L,8L,1L,1L,8L,1L,1L},{1L,8L,1L,1L,8L,1L,1L,8L,1L,1L},{1L,8L,1L,1L,8L,1L,1L,8L,1L,1L},{1L,8L,1L,1L,8L,1L,1L,8L,1L,1L},{1L,8L,1L,1L,8L,1L,1L,8L,1L,1L}};
        int32_t **l_379 = &p_1125->g_50;
        int64_t **l_391 = &l_197[0];
        int16_t l_404 = 0x123EL;
        int i, j;
        for (i = 0; i < 1; i++)
            l_237[i] = 1UL;
        --l_237[0];
lbl_273:
        for (p_1125->g_95 = 0; (p_1125->g_95 >= 0); p_1125->g_95 -= 1)
        { /* block id: 69 */
            int i;
            return l_237[p_1125->g_95];
        }
        if (((l_242 = (void*)0) == l_228))
        { /* block id: 73 */
            int16_t **l_248 = &l_210[4];
            int32_t l_255 = 0x4A7E46AFL;
            int32_t **l_262[3];
            uint32_t *l_263 = (void*)0;
            uint32_t *l_264[2][4][5] = {{{&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72},{&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72},{&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72},{&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72}},{{&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72},{&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72},{&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72},{&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72,&p_1125->g_72}}};
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_262[i] = &p_1125->g_50;
            l_203 &= ((&p_1125->g_84 == l_243) | ((safe_add_func_int32_t_s_s((&p_1125->g_70 == ((*l_248) = (p_1125->g_247[2] = l_246))), (p_1125->g_72 = (safe_mul_func_uint8_t_u_u((((safe_sub_func_uint8_t_u_u((((((safe_mul_func_int16_t_s_s((p_1125->g_111 < l_255), ((0x631BL || (safe_div_func_uint64_t_u_u(p_1125->g_143, ((safe_sub_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1125->group_0_offset, get_group_id(0), 10), (p_1125->g_92 = (p_52 ^ p_52)))), l_237[0])) , p_1125->g_112[0])))) && p_52))) < l_237[0]) , l_262[2]) == (void*)0) >= p_52), p_52)) | p_52) | p_52), p_1125->g_177[0][3][0]))))) != 0x15487D05AA689BF6L));
        }
        else
        { /* block id: 79 */
            int64_t l_269 = 0x4C34450B963346A7L;
            int8_t *l_271 = &p_1125->g_87;
            int32_t l_300 = (-1L);
            int32_t l_332 = (-5L);
            int32_t l_338 = 4L;
            int32_t l_340 = 0L;
            int32_t l_342 = 0x7BBDCE94L;
            int32_t l_343 = 1L;
            int32_t l_344 = 0x2A5E3CC6L;
            int16_t l_345 = 0x6B88L;
            int32_t l_348[5][2][2] = {{{0x5CCA39ADL,0x110B7B52L},{0x5CCA39ADL,0x110B7B52L}},{{0x5CCA39ADL,0x110B7B52L},{0x5CCA39ADL,0x110B7B52L}},{{0x5CCA39ADL,0x110B7B52L},{0x5CCA39ADL,0x110B7B52L}},{{0x5CCA39ADL,0x110B7B52L},{0x5CCA39ADL,0x110B7B52L}},{{0x5CCA39ADL,0x110B7B52L},{0x5CCA39ADL,0x110B7B52L}}};
            int64_t *l_369[8] = {&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,&p_1125->g_198};
            uint8_t **l_431 = &l_227;
            int i, j, k;
lbl_401:
            for (p_1125->g_178 = 0; (p_1125->g_178 <= 0); p_1125->g_178 += 1)
            { /* block id: 82 */
                int32_t *l_270 = &l_211;
                int32_t *l_289 = &p_1125->g_183;
                uint8_t *l_304 = &p_1125->g_94[0][2][0];
                int32_t l_337[7];
                uint64_t l_360[5] = {0xEF3F224DAA72126DL,0xEF3F224DAA72126DL,0xEF3F224DAA72126DL,0xEF3F224DAA72126DL,0xEF3F224DAA72126DL};
                int64_t *l_380 = &p_1125->g_111;
                int32_t ***l_390 = (void*)0;
                int i;
                for (i = 0; i < 7; i++)
                    l_337[i] = (-1L);
                (*l_270) &= (safe_add_func_int32_t_s_s((-1L), (((safe_lshift_func_int16_t_s_u(p_52, 9)) && p_52) & l_269)));
                if (p_52)
                { /* block id: 84 */
                    int8_t *l_272 = &p_1125->g_87;
                    (*l_270) |= ((l_271 = &p_1125->g_87) != l_272);
                }
                else
                { /* block id: 87 */
                    for (p_1125->g_95 = 0; (p_1125->g_95 >= 0); p_1125->g_95 -= 1)
                    { /* block id: 90 */
                        int64_t l_276 = 0x500AEE977EAE8128L;
                        if (l_203)
                            goto lbl_273;
                        l_276 = (safe_add_func_int8_t_s_s(0x4AL, ((*l_271) = (-9L))));
                        return p_52;
                    }
                    for (l_208 = 0; (l_208 <= 0); l_208 += 1)
                    { /* block id: 98 */
                        int32_t *l_298[8] = {&p_1125->g_11[1][6],(void*)0,&p_1125->g_11[1][6],&p_1125->g_11[1][6],(void*)0,&p_1125->g_11[1][6],&p_1125->g_11[1][6],(void*)0};
                        int i;
                        l_299 &= ((((~((safe_sub_func_int32_t_s_s(((((safe_sub_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u(1UL, (safe_add_func_uint16_t_u_u((p_1125->g_112[p_1125->g_178] && (l_289 == (p_1125->g_290[8][4] = &p_1125->g_183))), ((*l_270) = ((safe_unary_minus_func_uint32_t_u(p_1125->g_95)) != ((safe_rshift_func_int8_t_s_s(p_52, 0)) == 0x274697E7A68C1196L))))))), 10)) , (safe_mod_func_int64_t_s_s(p_52, (safe_add_func_int16_t_s_s((0x7DL < 0x0FL), l_237[0]))))), 0x7BL)) && (-1L)) || p_52) > 2UL), p_1125->g_11[4][0])) , (*p_1125->g_234))) & p_1125->g_94[0][0][5]) , l_237[0]) & p_1125->g_94[0][0][5]);
                        return l_186[1];
                    }
                }
                for (l_209 = 0; (l_209 <= 0); l_209 += 1)
                { /* block id: 107 */
                    int32_t **l_301 = &l_270;
                    l_300 ^= p_52;
                }
                for (l_203 = 0; (l_203 <= 0); l_203 += 1)
                { /* block id: 125 */
                    uint64_t l_319[5] = {0xFC088635562E8DBAL,0xFC088635562E8DBAL,0xFC088635562E8DBAL,0xFC088635562E8DBAL,0xFC088635562E8DBAL};
                    uint32_t *l_326 = (void*)0;
                    uint32_t *l_327 = &p_1125->g_72;
                    int32_t l_336 = 0x35FE0AB0L;
                    int16_t l_339 = 0x5526L;
                    int32_t l_341[10] = {0x0106C009L,0x0106C009L,0x0106C009L,0x0106C009L,0x0106C009L,0x0106C009L,0x0106C009L,0x0106C009L,0x0106C009L,0x0106C009L};
                    int64_t l_359[3][5][3] = {{{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L}},{{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L}},{{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L},{0x42CE1F16F2CCC6C4L,0x42CE1F16F2CCC6C4L,0x2D898AEE870CC951L}}};
                    int i, j, k;
                    for (p_1125->g_137 = 0; (p_1125->g_137 <= 0); p_1125->g_137 += 1)
                    { /* block id: 128 */
                        int8_t l_314 = 0L;
                        int32_t *l_315 = &l_211;
                        int32_t *l_316 = &l_313;
                        int32_t *l_317 = (void*)0;
                        int32_t *l_318 = &l_209;
                        int i, j, k;
                        ++l_319[2];
                        (*l_318) = (safe_add_func_uint16_t_u_u((p_1125->g_177[l_203][(p_1125->g_178 + 4)][(p_1125->g_137 + 2)] || (((safe_rshift_func_int8_t_s_s(0x47L, p_1125->g_112[0])) == l_269) | p_52)), (*l_270)));
                        if (p_1125->g_95)
                            goto lbl_273;
                        if ((*l_270))
                            break;
                    }
                    (*p_1125->g_329) = ((p_52 == (1UL || p_1125->g_235)) == ((*l_327) = (((*l_270) = p_1125->g_94[0][0][5]) == p_1125->g_87)));
                    for (p_1125->g_111 = 0; (p_1125->g_111 >= 0); p_1125->g_111 -= 1)
                    { /* block id: 139 */
                        int32_t l_331[8][6] = {{0x240E8CE1L,(-1L),0x58342909L,0x61E11DEAL,(-1L),0x61E11DEAL},{0x240E8CE1L,(-1L),0x58342909L,0x61E11DEAL,(-1L),0x61E11DEAL},{0x240E8CE1L,(-1L),0x58342909L,0x61E11DEAL,(-1L),0x61E11DEAL},{0x240E8CE1L,(-1L),0x58342909L,0x61E11DEAL,(-1L),0x61E11DEAL},{0x240E8CE1L,(-1L),0x58342909L,0x61E11DEAL,(-1L),0x61E11DEAL},{0x240E8CE1L,(-1L),0x58342909L,0x61E11DEAL,(-1L),0x61E11DEAL},{0x240E8CE1L,(-1L),0x58342909L,0x61E11DEAL,(-1L),0x61E11DEAL},{0x240E8CE1L,(-1L),0x58342909L,0x61E11DEAL,(-1L),0x61E11DEAL}};
                        int32_t *l_333 = &l_331[0][5];
                        int32_t *l_334 = (void*)0;
                        int32_t *l_335[3];
                        int64_t l_351[8][7] = {{0x2B4FB6F61CB9C359L,0x3B313822A2298363L,0x3B313822A2298363L,0x2B4FB6F61CB9C359L,0x7AF6C17839F55524L,0x5A1C9E515F542185L,1L},{0x2B4FB6F61CB9C359L,0x3B313822A2298363L,0x3B313822A2298363L,0x2B4FB6F61CB9C359L,0x7AF6C17839F55524L,0x5A1C9E515F542185L,1L},{0x2B4FB6F61CB9C359L,0x3B313822A2298363L,0x3B313822A2298363L,0x2B4FB6F61CB9C359L,0x7AF6C17839F55524L,0x5A1C9E515F542185L,1L},{0x2B4FB6F61CB9C359L,0x3B313822A2298363L,0x3B313822A2298363L,0x2B4FB6F61CB9C359L,0x7AF6C17839F55524L,0x5A1C9E515F542185L,1L},{0x2B4FB6F61CB9C359L,0x3B313822A2298363L,0x3B313822A2298363L,0x2B4FB6F61CB9C359L,0x7AF6C17839F55524L,0x5A1C9E515F542185L,1L},{0x2B4FB6F61CB9C359L,0x3B313822A2298363L,0x3B313822A2298363L,0x2B4FB6F61CB9C359L,0x7AF6C17839F55524L,0x5A1C9E515F542185L,1L},{0x2B4FB6F61CB9C359L,0x3B313822A2298363L,0x3B313822A2298363L,0x2B4FB6F61CB9C359L,0x7AF6C17839F55524L,0x5A1C9E515F542185L,1L},{0x2B4FB6F61CB9C359L,0x3B313822A2298363L,0x3B313822A2298363L,0x2B4FB6F61CB9C359L,0x7AF6C17839F55524L,0x5A1C9E515F542185L,1L}};
                        uint64_t *l_363 = (void*)0;
                        uint64_t *l_364 = &l_319[2];
                        int64_t *l_371[8][6] = {{&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,(void*)0,&p_1125->g_198,&p_1125->g_198},{&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,(void*)0,&p_1125->g_198,&p_1125->g_198},{&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,(void*)0,&p_1125->g_198,&p_1125->g_198},{&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,(void*)0,&p_1125->g_198,&p_1125->g_198},{&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,(void*)0,&p_1125->g_198,&p_1125->g_198},{&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,(void*)0,&p_1125->g_198,&p_1125->g_198},{&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,(void*)0,&p_1125->g_198,&p_1125->g_198},{&p_1125->g_198,&p_1125->g_198,&p_1125->g_198,(void*)0,&p_1125->g_198,&p_1125->g_198}};
                        int64_t **l_372 = &l_371[7][2];
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_335[i] = &l_331[0][5];
                        l_331[0][5] = (~l_300);
                        l_360[1]++;
                        (**l_243) = func_40(((((((++(*l_364)) && ((*l_364) = ((&l_227 == (void*)0) || ((safe_mul_func_int16_t_s_s((((p_1125->g_370 = l_369[3]) == ((*l_372) = l_371[7][5])) < (((((*l_228) &= ((*l_304) = 2UL)) | ((safe_add_func_int32_t_s_s(((p_1125->g_176 = (safe_div_func_uint64_t_u_u(((0L | (((safe_mul_func_int16_t_s_s((*l_333), (-4L))) | p_52) >= 0x74864FDC83510189L)) == l_359[1][4][0]), p_52))) < 0UL), l_269)) > (-1L))) , &l_270) == l_379)), p_1125->g_330)) , (*l_270))))) , 18446744073709551615UL) , l_380) == &l_269) > GROUP_DIVERGE(1, 1)), p_1125);
                    }
                    for (l_353 = 0; (l_353 >= 0); l_353 -= 1)
                    { /* block id: 153 */
                        uint32_t l_383 = 0x1A51A77CL;
                        uint16_t *l_384 = (void*)0;
                        uint16_t *l_385[4][7][4] = {{{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176}},{{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176}},{{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176}},{{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176},{&p_1125->g_176,&p_1125->g_176,&p_1125->g_176,&p_1125->g_176}}};
                        int64_t ***l_392 = &l_391;
                        int i, j, k;
                        (*p_1125->g_329) = ((safe_rshift_func_int16_t_s_s((((*l_270) = ((p_52 >= (((*l_246) = p_52) == l_383)) != p_52)) , (safe_mul_func_uint16_t_u_u((((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1125->local_1_offset, get_local_id(1), 10), 11)) , l_390) == &l_379), l_359[1][4][0]))), 5)) <= (((((((*l_392) = l_391) == ((safe_rshift_func_int16_t_s_s((safe_rshift_func_int8_t_s_u(p_1125->g_143, 2)), p_52)) , &p_1125->g_370)) < p_52) ^ l_339) , l_336) >= 0x8147C04EL));
                        return p_52;
                    }
                }
            }
            for (p_1125->g_137 = 0; (p_1125->g_137 > (-20)); p_1125->g_137 = safe_sub_func_int16_t_s_s(p_1125->g_137, 9))
            { /* block id: 164 */
                l_300 |= (safe_lshift_func_uint8_t_u_u(0xECL, 7));
                if (p_52)
                    goto lbl_401;
                if (p_52)
                    break;
                return p_1125->g_198;
            }
            l_429 = (((0x07L ^ (safe_rshift_func_int16_t_s_s(p_52, 14))) , ((l_404 || (safe_mul_func_uint16_t_u_u(((void*)0 == l_196), (safe_add_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((*l_246) = (safe_div_func_uint64_t_u_u((0UL ^ (safe_mod_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(((((+(safe_sub_func_uint16_t_u_u((((((safe_lshift_func_uint16_t_u_s(p_52, 0)) | (safe_add_func_int8_t_s_s(p_1125->g_112[0], (((safe_sub_func_int64_t_s_s((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u(0x06L, 4)), 4UL)), p_1125->g_94[0][0][5])) <= 0x71A61503D28D1600L) >= l_300)))) > p_52) , p_52) & 0xD7DFL), 0L))) , l_340) || p_52) <= p_52), p_52)), 65526UL))), p_52))), p_1125->g_11[4][0])), (-3L)))))) != l_186[4])) , p_52);
            (*p_1125->g_329) = (!((~(&p_1125->g_370 == l_391)) || (l_430 != (l_431 = (p_52 , &l_227)))));
        }
    }
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_1125->g_72 p_1125->g_70 p_1125->g_11 p_1125->g_95 p_1125->g_94 p_1125->g_109 p_1125->g_112 p_1125->g_119 p_1125->g_137 p_1125->g_143 p_1125->g_92 p_1125->g_50 p_1125->g_178 p_1125->g_111
 * writes: p_1125->g_72 p_1125->g_84 p_1125->g_87 p_1125->g_92 p_1125->g_94 p_1125->g_95 p_1125->g_104 p_1125->g_109 p_1125->g_111 p_1125->g_112 p_1125->g_70 p_1125->g_137 p_1125->g_143 p_1125->g_50 p_1125->g_176 p_1125->g_177 p_1125->g_178
 */
int64_t  func_55(int16_t  p_56, struct S0 * p_1125)
{ /* block id: 15 */
    uint32_t *l_69 = (void*)0;
    uint32_t *l_71 = &p_1125->g_72;
    int32_t **l_81 = &p_1125->g_50;
    int32_t **l_82[4][3] = {{&p_1125->g_50,(void*)0,&p_1125->g_50},{&p_1125->g_50,(void*)0,&p_1125->g_50},{&p_1125->g_50,(void*)0,&p_1125->g_50},{&p_1125->g_50,(void*)0,&p_1125->g_50}};
    int32_t ***l_83[8];
    int8_t *l_85 = (void*)0;
    int8_t *l_86 = &p_1125->g_87;
    uint64_t l_90[10][2][2] = {{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}}};
    uint8_t *l_91 = &p_1125->g_92;
    uint8_t *l_93[10] = {&p_1125->g_94[0][0][5],&p_1125->g_94[0][0][5],&p_1125->g_94[0][0][5],&p_1125->g_94[0][0][5],&p_1125->g_94[0][0][5],&p_1125->g_94[0][0][5],&p_1125->g_94[0][0][5],&p_1125->g_94[0][0][5],&p_1125->g_94[0][0][5],&p_1125->g_94[0][0][5]};
    uint32_t l_107 = 1UL;
    uint64_t *l_108[1];
    int64_t *l_110 = &p_1125->g_111;
    int32_t **l_120 = &p_1125->g_50;
    int16_t *l_125 = &p_1125->g_70;
    uint16_t *l_175[1];
    uint32_t l_179 = 2UL;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_83[i] = &l_82[1][1];
    for (i = 0; i < 1; i++)
        l_108[i] = &l_90[6][1][1];
    for (i = 0; i < 1; i++)
        l_175[i] = &p_1125->g_176;
    p_1125->g_95 |= (safe_mod_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s((p_1125->g_94[0][4][2] = ((*l_91) = (safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (((safe_div_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint32_t_u_u((p_56 | ((((--(*l_71)) > (safe_div_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((((l_81 = ((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1125->global_2_offset, get_global_id(2), 10), (&p_1125->g_50 == (void*)0))) , l_81)) != (p_1125->g_84 = l_82[1][1])) ^ ((*l_86) = (4294967295UL ^ p_56))), 1)), ((safe_sub_func_uint8_t_u_u((p_56 & (p_1125->g_70 != p_1125->g_11[3][5])), p_1125->g_11[4][1])) , p_1125->g_70)))) | 0xB9L) | p_1125->g_11[2][4])), p_56)), p_56)), l_90[6][1][0])) || p_56) & 1L))))), p_1125->g_11[0][4])) < p_56), p_56));
    p_1125->g_112[0] &= ((safe_div_func_int16_t_s_s((((((((*l_110) = ((p_1125->g_109 &= (safe_div_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((p_56 , 0x9DL), (safe_mul_func_int8_t_s_s(0x13L, (((p_56 <= (-1L)) , (void*)0) != (p_1125->g_104[0][1] = &p_1125->g_49)))))), ((!(((safe_mul_func_uint8_t_u_u(p_56, ((-2L) && l_107))) , p_56) | 1UL)) | p_1125->g_94[0][3][1])))) > p_1125->g_70)) , p_56) > p_56) > p_56) , 0x7338C8B0L) , p_56), p_56)) , (-3L));
    if ((safe_rshift_func_uint16_t_u_s((safe_div_func_uint64_t_u_u((safe_div_func_int32_t_s_s(1L, (p_56 ^ ((l_120 = p_1125->g_119) != (void*)0)))), ((safe_lshift_func_uint16_t_u_s(((p_1125->g_70 && p_1125->g_72) , (safe_mul_func_int16_t_s_s(((*l_125) |= (-10L)), ((((void*)0 != &l_90[6][1][0]) && p_56) != p_1125->g_112[0])))), p_56)) , p_1125->g_11[4][0]))), 12)))
    { /* block id: 29 */
        int8_t l_126 = 0x2CL;
        int32_t l_138 = 0x645DA593L;
        int8_t **l_141 = (void*)0;
        int8_t **l_142[3];
        uint64_t *l_146 = &l_90[7][1][0];
        int32_t *l_161 = &l_138;
        int i;
        for (i = 0; i < 3; i++)
            l_142[i] = &l_85;
        l_138 = ((2UL < 18446744073709551606UL) == (((l_126 || p_56) || ((((p_1125->g_137 ^= ((*l_110) = (+(p_1125->g_11[4][0] != ((((safe_add_func_int32_t_s_s((p_56 < (~(!(safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1125->group_0_offset, get_group_id(0), 10), p_56)), (((((safe_mod_func_uint64_t_u_u(p_56, ((p_1125->g_11[5][4] != 7L) & p_56))) & 0L) , p_56) && p_56) | 0x0FL)))))), l_126)) ^ l_126) <= p_56) & p_56))))) > p_1125->g_112[0]) , 0L) && p_1125->g_72)) > (-7L)));
        (*p_1125->g_119) = func_40((safe_mod_func_int32_t_s_s((((p_1125->g_143 |= ((l_85 = &l_126) == (p_56 , &p_1125->g_87))) , (GROUP_DIVERGE(1, 1) == (p_56 , p_1125->g_92))) , ((safe_mul_func_uint16_t_u_u(((l_138 ^= (&l_90[6][1][0] == (p_56 , l_146))) , FAKE_DIVERGE(p_1125->global_1_offset, get_global_id(1), 10)), ((safe_sub_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((+l_126), 0xB10FL)), p_1125->g_94[0][4][2])), GROUP_DIVERGE(2, 1))) <= l_126))) < p_56)), 0x3789DB10L)), p_1125);
        l_161 = ((((safe_mod_func_uint8_t_u_u(252UL, l_126)) | (safe_sub_func_uint8_t_u_u(0xCBL, 255UL))) > ((safe_mod_func_uint64_t_u_u(0x11D999481441D509L, p_1125->g_72)) ^ (safe_sub_func_int16_t_s_s((p_1125->g_109 <= 1UL), (((*l_125) = (p_1125->g_143 ^= 0L)) <= (-1L)))))) , (*p_1125->g_119));
        (*l_81) = (l_161 = ((p_56 && (safe_lshift_func_uint16_t_u_u(p_56, (((*l_71) = (*l_161)) & (**l_81))))) , (*p_1125->g_119)));
    }
    else
    { /* block id: 43 */
        int32_t **l_164 = &p_1125->g_50;
        l_164 = l_164;
        return p_1125->g_143;
    }
    l_179 = (safe_rshift_func_int8_t_s_u(((*l_86) = (safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(1UL, (&l_107 != &l_107))), (p_1125->g_178 |= (((((p_1125->g_177[0][3][0] = (safe_rshift_func_int16_t_s_u(p_56, (p_1125->g_176 = ((p_1125->g_95 == ((safe_rshift_func_int16_t_s_s((!0x7659L), 8)) && p_56)) > p_1125->g_94[0][6][5]))))) & p_1125->g_112[0]) , l_93[9]) != &p_1125->g_94[0][7][6]) && 65535UL))))), p_1125->g_111));
    return p_1125->g_143;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1126;
    struct S0* p_1125 = &c_1126;
    struct S0 c_1127 = {
        {{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L}}, // p_1125->g_11
        (void*)0, // p_1125->g_50
        &p_1125->g_50, // p_1125->g_49
        0x081FL, // p_1125->g_70
        4294967295UL, // p_1125->g_72
        (void*)0, // p_1125->g_84
        0x1EL, // p_1125->g_87
        0x92L, // p_1125->g_92
        {{{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL}}}, // p_1125->g_94
        0x617CC220L, // p_1125->g_95
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1125->g_104
        (-10L), // p_1125->g_109
        0x30164B9299A07EF0L, // p_1125->g_111
        {0x7DF8L}, // p_1125->g_112
        &p_1125->g_50, // p_1125->g_119
        0x6916BB261D961218L, // p_1125->g_137
        0x438CL, // p_1125->g_143
        0x76D9L, // p_1125->g_176
        {{{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL}}}, // p_1125->g_177
        (-1L), // p_1125->g_178
        4L, // p_1125->g_183
        (-4L), // p_1125->g_198
        4294967295UL, // p_1125->g_235
        &p_1125->g_235, // p_1125->g_234
        &p_1125->g_234, // p_1125->g_233
        {&p_1125->g_70,&p_1125->g_70,&p_1125->g_70,&p_1125->g_70}, // p_1125->g_247
        {{&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183},{&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183},{&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183},{&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183},{&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183},{&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183},{&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183},{&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183},{&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183,&p_1125->g_183}}, // p_1125->g_290
        (void*)0, // p_1125->g_328
        0x4E3E4D31L, // p_1125->g_330
        &p_1125->g_330, // p_1125->g_329
        &p_1125->g_198, // p_1125->g_370
        {{0L,0L,(-7L),0x1B05F9BCL,0x7B048864L},{0L,0L,(-7L),0x1B05F9BCL,0x7B048864L},{0L,0L,(-7L),0x1B05F9BCL,0x7B048864L}}, // p_1125->g_445
        {5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL}, // p_1125->g_464
        18446744073709551614UL, // p_1125->g_468
        {0xECL,0xECL,0xECL,0xECL,0xECL}, // p_1125->g_482
        {{{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L}},{{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L}},{{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L}},{{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L}},{{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L}},{{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L}},{{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L}},{{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L},{0x519BA594737F53E7L,0L,(-3L),9L}}}, // p_1125->g_488
        &p_1125->g_11[4][0], // p_1125->g_491
        9L, // p_1125->g_594
        &p_1125->g_370, // p_1125->g_637
        &p_1125->g_112[0], // p_1125->g_700
        &p_1125->g_700, // p_1125->g_699
        &p_1125->g_699, // p_1125->g_698
        0L, // p_1125->g_716
        {&p_1125->g_716,&p_1125->g_716,&p_1125->g_716}, // p_1125->g_715
        &p_1125->g_715[0], // p_1125->g_714
        {(void*)0,&p_1125->g_11[5][4],&p_1125->g_11[4][0],&p_1125->g_11[5][4],(void*)0,(void*)0,&p_1125->g_11[5][4],&p_1125->g_11[4][0],&p_1125->g_11[5][4],(void*)0}, // p_1125->g_733
        0x1CD5254FL, // p_1125->g_745
        4UL, // p_1125->g_786
        0x7CC9D2C6F12F3E28L, // p_1125->g_840
        &p_1125->g_840, // p_1125->g_839
        &p_1125->g_839, // p_1125->g_838
        (-1L), // p_1125->g_954
        (-7L), // p_1125->g_966
        246UL, // p_1125->g_969
        {18446744073709551606UL,18446744073709551606UL,18446744073709551606UL}, // p_1125->g_1121
        sequence_input[get_global_id(0)], // p_1125->global_0_offset
        sequence_input[get_global_id(1)], // p_1125->global_1_offset
        sequence_input[get_global_id(2)], // p_1125->global_2_offset
        sequence_input[get_local_id(0)], // p_1125->local_0_offset
        sequence_input[get_local_id(1)], // p_1125->local_1_offset
        sequence_input[get_local_id(2)], // p_1125->local_2_offset
        sequence_input[get_group_id(0)], // p_1125->group_0_offset
        sequence_input[get_group_id(1)], // p_1125->group_1_offset
        sequence_input[get_group_id(2)], // p_1125->group_2_offset
    };
    c_1126 = c_1127;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1125);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1125->g_11[i][j], "p_1125->g_11[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1125->g_70, "p_1125->g_70", print_hash_value);
    transparent_crc(p_1125->g_72, "p_1125->g_72", print_hash_value);
    transparent_crc(p_1125->g_87, "p_1125->g_87", print_hash_value);
    transparent_crc(p_1125->g_92, "p_1125->g_92", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1125->g_94[i][j][k], "p_1125->g_94[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1125->g_95, "p_1125->g_95", print_hash_value);
    transparent_crc(p_1125->g_109, "p_1125->g_109", print_hash_value);
    transparent_crc(p_1125->g_111, "p_1125->g_111", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1125->g_112[i], "p_1125->g_112[i]", print_hash_value);

    }
    transparent_crc(p_1125->g_137, "p_1125->g_137", print_hash_value);
    transparent_crc(p_1125->g_143, "p_1125->g_143", print_hash_value);
    transparent_crc(p_1125->g_176, "p_1125->g_176", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1125->g_177[i][j][k], "p_1125->g_177[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1125->g_178, "p_1125->g_178", print_hash_value);
    transparent_crc(p_1125->g_183, "p_1125->g_183", print_hash_value);
    transparent_crc(p_1125->g_198, "p_1125->g_198", print_hash_value);
    transparent_crc(p_1125->g_235, "p_1125->g_235", print_hash_value);
    transparent_crc(p_1125->g_330, "p_1125->g_330", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1125->g_445[i][j], "p_1125->g_445[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1125->g_464[i], "p_1125->g_464[i]", print_hash_value);

    }
    transparent_crc(p_1125->g_468, "p_1125->g_468", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1125->g_482[i], "p_1125->g_482[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1125->g_488[i][j][k], "p_1125->g_488[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1125->g_594, "p_1125->g_594", print_hash_value);
    transparent_crc(p_1125->g_716, "p_1125->g_716", print_hash_value);
    transparent_crc(p_1125->g_745, "p_1125->g_745", print_hash_value);
    transparent_crc(p_1125->g_786, "p_1125->g_786", print_hash_value);
    transparent_crc(p_1125->g_840, "p_1125->g_840", print_hash_value);
    transparent_crc(p_1125->g_954, "p_1125->g_954", print_hash_value);
    transparent_crc(p_1125->g_966, "p_1125->g_966", print_hash_value);
    transparent_crc(p_1125->g_969, "p_1125->g_969", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1125->g_1121[i], "p_1125->g_1121[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
