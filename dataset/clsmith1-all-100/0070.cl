// --atomics 41 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 82,76,1 -l 1,76,1
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

__constant uint32_t permutations[10][76] = {
{73,75,37,1,25,19,30,67,38,5,57,43,13,17,34,69,40,22,42,74,32,9,60,63,26,0,46,39,55,10,44,48,23,31,70,11,52,53,4,61,28,68,41,62,35,66,72,59,71,18,36,29,33,47,15,14,7,54,21,24,58,3,56,50,27,6,45,8,2,20,12,64,16,51,65,49}, // permutation 0
{70,54,40,3,62,42,14,8,25,73,72,50,10,71,38,9,52,41,74,46,27,7,36,65,67,57,19,35,64,37,6,21,4,51,24,12,22,75,43,69,15,31,20,60,5,11,18,45,26,61,2,29,47,34,53,23,30,55,66,68,32,63,56,28,48,17,39,49,59,0,1,13,44,16,58,33}, // permutation 1
{62,30,48,68,69,65,16,67,75,56,18,25,2,51,28,19,31,3,1,36,47,50,45,55,40,6,46,58,13,29,39,35,41,59,7,15,64,63,5,33,74,72,10,61,60,34,71,38,70,66,11,43,57,21,23,24,53,14,49,0,52,20,17,22,42,73,12,32,9,37,26,54,44,8,27,4}, // permutation 2
{31,22,58,69,61,68,35,60,47,63,1,29,66,56,34,40,8,41,37,32,4,67,36,5,2,72,14,12,33,24,11,28,17,16,74,62,49,43,48,52,10,71,42,9,7,0,26,59,44,19,21,51,3,46,45,75,64,50,25,6,18,73,65,54,70,39,38,53,13,20,23,55,57,15,30,27}, // permutation 3
{18,11,63,20,8,70,58,1,28,67,34,39,42,48,49,75,41,71,32,50,37,59,52,54,17,45,7,3,4,72,25,12,62,73,33,66,15,26,5,68,36,27,61,51,31,2,13,30,19,40,56,14,29,57,69,16,35,53,43,60,65,55,38,6,47,74,23,22,46,0,44,64,9,24,21,10}, // permutation 4
{67,40,17,20,38,53,39,32,36,60,71,9,18,8,47,42,50,11,15,52,72,1,12,73,19,22,55,26,29,49,16,34,0,66,23,27,59,3,14,4,30,70,43,61,28,37,44,58,25,35,5,24,51,56,68,33,10,13,41,62,7,31,74,6,46,63,54,65,64,69,21,2,75,57,48,45}, // permutation 5
{43,21,65,23,53,56,19,36,16,32,57,72,66,74,25,71,68,2,62,45,75,6,9,0,50,27,54,70,64,31,34,46,7,26,63,38,61,1,60,51,67,8,33,28,49,10,69,41,52,58,47,40,48,11,35,22,14,73,13,30,55,17,5,3,42,18,39,24,59,44,37,4,29,15,12,20}, // permutation 6
{24,22,35,60,4,7,25,21,47,16,45,27,6,31,42,64,3,23,19,50,9,32,10,74,72,14,34,70,0,30,57,54,66,58,65,26,53,15,51,52,41,46,49,59,28,37,2,56,17,20,29,39,18,75,38,73,63,1,8,68,43,55,13,40,12,33,62,44,48,71,61,36,5,11,67,69}, // permutation 7
{39,56,27,10,45,59,67,48,63,53,60,31,43,44,8,64,14,42,22,0,13,21,50,2,57,38,6,29,61,33,11,30,25,71,41,3,47,19,5,15,62,36,74,40,70,49,24,16,18,7,12,34,73,54,52,46,65,23,51,1,75,17,37,9,35,72,55,66,69,68,32,26,58,28,4,20}, // permutation 8
{52,15,31,41,9,64,11,18,58,25,13,56,46,14,35,10,60,36,63,48,62,39,57,27,38,8,23,44,21,40,59,19,30,33,5,42,32,69,24,6,72,61,28,4,7,65,16,1,0,45,43,71,75,70,34,74,66,22,12,20,2,54,29,49,50,3,51,26,67,17,37,55,53,68,73,47} // permutation 9
};

// Seed: 70

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    uint64_t g_10;
    int32_t g_28;
    uint32_t g_50[5];
    int8_t g_77;
    int8_t *g_76[1][9][7];
    int8_t *g_80;
    int32_t g_83;
    volatile int32_t g_86;
    volatile int32_t g_87;
    volatile int32_t g_88;
    int32_t g_89;
    int32_t g_93[8][1];
    int32_t g_95;
    int32_t g_98;
    uint32_t g_171;
    uint32_t g_182;
    volatile int32_t g_200;
    VECTOR(int16_t, 4) g_206;
    VECTOR(int32_t, 16) g_209;
    volatile int32_t g_228;
    volatile int32_t *g_227;
    volatile int32_t **g_226;
    volatile VECTOR(uint32_t, 4) g_232;
    uint32_t *g_240;
    volatile int32_t g_255;
    uint16_t g_257;
    VECTOR(uint64_t, 8) g_276;
    volatile VECTOR(uint8_t, 2) g_319;
    int32_t *g_421;
    volatile VECTOR(int32_t, 8) g_424;
    VECTOR(uint64_t, 2) g_435;
    volatile VECTOR(uint64_t, 8) g_437;
    VECTOR(int8_t, 4) g_446;
    volatile VECTOR(uint64_t, 2) g_462;
    uint64_t **g_473;
    volatile VECTOR(uint16_t, 8) g_478;
    uint64_t *g_482[9];
    volatile VECTOR(int32_t, 8) g_498;
    VECTOR(int8_t, 16) g_525;
    VECTOR(int16_t, 8) g_528;
    volatile VECTOR(int64_t, 2) g_543;
    int16_t g_547;
    VECTOR(int32_t, 4) g_551;
    VECTOR(uint64_t, 4) g_570;
    uint64_t ***g_603;
    VECTOR(uint8_t, 8) g_636;
    int64_t g_665;
    int32_t g_692;
    uint32_t **g_716[9][7][4];
    uint32_t ***g_715;
    int8_t **g_718;
    VECTOR(uint32_t, 4) g_735;
    VECTOR(uint32_t, 4) g_750;
    volatile VECTOR(int8_t, 8) g_754;
    VECTOR(int64_t, 8) g_755;
    VECTOR(int64_t, 16) g_756;
    VECTOR(int16_t, 2) g_804;
    uint8_t g_810;
    volatile VECTOR(uint64_t, 16) g_828;
    int32_t g_834;
    VECTOR(int32_t, 2) g_836;
    uint16_t *g_871;
    uint16_t **g_870;
    int32_t ** volatile g_878;
    volatile VECTOR(int64_t, 8) g_881;
    VECTOR(int64_t, 2) g_884;
    volatile VECTOR(int64_t, 16) g_885;
    VECTOR(int64_t, 4) g_886;
    volatile VECTOR(uint8_t, 16) g_890;
    uint16_t g_906;
    volatile VECTOR(uint64_t, 16) g_912;
    int32_t *g_929;
    int16_t ** volatile g_935;
    VECTOR(int64_t, 2) g_961;
    int32_t ** volatile g_996;
    volatile VECTOR(int64_t, 2) g_1013;
    volatile VECTOR(uint16_t, 16) g_1016;
    volatile VECTOR(uint32_t, 8) g_1020;
    VECTOR(uint8_t, 8) g_1073;
    VECTOR(uint8_t, 8) g_1074;
    int64_t g_1085;
    VECTOR(int32_t, 4) g_1092;
    volatile int32_t *g_1098;
    VECTOR(int64_t, 16) g_1111;
    uint64_t g_1129;
    VECTOR(uint32_t, 4) g_1154;
    VECTOR(uint64_t, 16) g_1185;
    VECTOR(int32_t, 4) g_1188;
    VECTOR(uint8_t, 16) g_1192;
    int32_t g_1195[8];
    int8_t g_1200;
    int32_t **g_1220;
    int32_t ***g_1219;
    int64_t *g_1320;
    VECTOR(int16_t, 2) g_1354;
    int32_t **g_1363[5];
    uint64_t g_1364;
    int32_t ** volatile g_1368;
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
int32_t  func_1(struct S0 * p_1370);
int32_t * func_5(uint64_t  p_6, int32_t * p_7, struct S0 * p_1370);
int16_t  func_12(int32_t  p_13, int64_t  p_14, int32_t * p_15, uint32_t  p_16, struct S0 * p_1370);
int16_t  func_17(uint64_t * p_18, int32_t * p_19, int32_t  p_20, int32_t  p_21, uint32_t  p_22, struct S0 * p_1370);
int32_t * func_23(int32_t * p_24, int32_t * p_25, struct S0 * p_1370);
int32_t * func_29(int8_t * p_30, uint64_t * p_31, uint32_t  p_32, int32_t  p_33, struct S0 * p_1370);
int8_t * func_34(uint16_t  p_35, uint32_t  p_36, struct S0 * p_1370);
uint32_t  func_37(uint16_t  p_38, int16_t  p_39, int64_t  p_40, uint32_t  p_41, struct S0 * p_1370);
uint64_t  func_42(uint16_t  p_43, struct S0 * p_1370);
uint64_t * func_71(int8_t * p_72, int32_t * p_73, int8_t * p_74, uint64_t * p_75, struct S0 * p_1370);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1370->g_2
 * writes: p_1370->g_2
 */
int32_t  func_1(struct S0 * p_1370)
{ /* block id: 4 */
    uint64_t l_1369 = 1UL;
    for (p_1370->g_2 = 19; (p_1370->g_2 >= 28); p_1370->g_2++)
    { /* block id: 7 */
        VECTOR(uint64_t, 16) l_8 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), 0UL, 18446744073709551615UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, 0UL);
        uint64_t *l_9 = &p_1370->g_10;
        int32_t *l_11 = (void*)0;
        int i;
        (1 + 1);
    }
    return l_1369;
}


/* ------------------------------------------ */
/* 
 * reads : p_1370->l_comm_values p_1370->g_50 p_1370->g_10 p_1370->g_226 p_1370->g_227 p_1370->g_228 p_1370->g_93 p_1370->g_comm_values p_1370->g_206 p_1370->g_80 p_1370->g_95 p_1370->g_255 p_1370->g_182 p_1370->g_276 p_1370->g_240 p_1370->g_171 p_1370->g_77 p_1370->g_98 p_1370->g_209 p_1370->g_319 p_1370->g_28 p_1370->g_2 p_1370->g_756 p_1370->g_804 p_1370->g_498 p_1370->g_525 p_1370->g_547 p_1370->g_750 p_1370->g_810 p_1370->g_718 p_1370->g_76 p_1370->g_421 p_1370->g_636 p_1370->g_828 p_1370->g_551 p_1370->g_836 p_1370->g_1073 p_1370->g_1074 p_1370->g_1092 p_1370->g_878 p_1370->g_870 p_1370->g_871 p_1370->g_257 p_1370->g_1098 p_1370->g_1111 p_1370->g_88 p_1370->g_1129 p_1370->g_906 p_1370->g_996 p_1370->g_834 p_1370->g_1154 p_1370->g_603 p_1370->g_473 p_1370->g_1185 p_1370->g_1188 p_1370->g_1192 p_1370->g_1195 p_1370->g_961 p_1370->g_446 p_1370->g_935 p_1370->g_1219 p_1370->g_665 p_1370->g_692 p_1370->g_89 p_1370->g_715 p_1370->g_716 p_1370->g_884 p_1370->g_1354
 * writes: p_1370->g_28 p_1370->g_50 p_1370->g_10 p_1370->g_93 p_1370->g_240 p_1370->g_77 p_1370->g_228 p_1370->g_95 p_1370->g_182 p_1370->g_171 p_1370->g_227 p_1370->g_206 p_1370->g_421 p_1370->g_547 p_1370->g_834 p_1370->g_810 p_1370->g_665 p_1370->g_88 p_1370->g_1129 p_1370->g_906 p_1370->g_871 p_1370->g_98 p_1370->g_1219 p_1370->g_257 p_1370->g_692 p_1370->g_89 p_1370->g_1320 p_1370->g_804 p_1370->g_1363 p_1370->g_1364
 */
int32_t * func_5(uint64_t  p_6, int32_t * p_7, struct S0 * p_1370)
{ /* block id: 9 */
    uint64_t *l_26 = &p_1370->g_10;
    int8_t *l_27 = (void*)0;
    int32_t l_314 = 0x68667795L;
    int32_t l_1091 = 0x2E6C3464L;
    int32_t *l_1125 = &p_1370->g_98;
    VECTOR(int8_t, 8) l_1140 = (VECTOR(int8_t, 8))(0x7AL, (VECTOR(int8_t, 4))(0x7AL, (VECTOR(int8_t, 2))(0x7AL, 0L), 0L), 0L, 0x7AL, 0L);
    VECTOR(uint8_t, 2) l_1141 = (VECTOR(uint8_t, 2))(0UL, 0xF1L);
    VECTOR(int8_t, 4) l_1160 = (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x5AL), 0x5AL);
    uint16_t *l_1193 = (void*)0;
    int32_t l_1199 = (-8L);
    int32_t l_1201 = 0x692CC223L;
    int32_t l_1202 = 8L;
    int32_t l_1203 = 0x06D5377DL;
    int32_t l_1204 = 0x68A259F5L;
    int32_t l_1205 = 0x738D9530L;
    int32_t l_1206[2];
    uint32_t ***l_1216 = &p_1370->g_716[5][1][2];
    uint16_t l_1228 = 65535UL;
    VECTOR(int8_t, 8) l_1334 = (VECTOR(int8_t, 8))(0x56L, (VECTOR(int8_t, 4))(0x56L, (VECTOR(int8_t, 2))(0x56L, 0x22L), 0x22L), 0x22L, 0x56L, 0x22L);
    int32_t *l_1344 = &l_1202;
    int32_t *l_1345 = &l_1204;
    int32_t *l_1346[7][8] = {{&l_1202,&l_1091,&p_1370->g_834,(void*)0,&l_1091,(void*)0,&p_1370->g_834,&l_1091},{&l_1202,&l_1091,&p_1370->g_834,(void*)0,&l_1091,(void*)0,&p_1370->g_834,&l_1091},{&l_1202,&l_1091,&p_1370->g_834,(void*)0,&l_1091,(void*)0,&p_1370->g_834,&l_1091},{&l_1202,&l_1091,&p_1370->g_834,(void*)0,&l_1091,(void*)0,&p_1370->g_834,&l_1091},{&l_1202,&l_1091,&p_1370->g_834,(void*)0,&l_1091,(void*)0,&p_1370->g_834,&l_1091},{&l_1202,&l_1091,&p_1370->g_834,(void*)0,&l_1091,(void*)0,&p_1370->g_834,&l_1091},{&l_1202,&l_1091,&p_1370->g_834,(void*)0,&l_1091,(void*)0,&p_1370->g_834,&l_1091}};
    uint64_t l_1347 = 0x68582BEA0F1FAF7FL;
    uint32_t l_1350 = 0xC3531871L;
    int16_t *l_1353[1][1];
    int32_t **l_1361 = &p_1370->g_929;
    int32_t ***l_1362 = &l_1361;
    int64_t l_1365 = 0x3E5C21A9BDEDEF42L;
    int32_t l_1366 = (-1L);
    int32_t *l_1367 = &l_1366;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1206[i] = 3L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_1353[i][j] = &p_1370->g_547;
    }
    if (((func_12((func_17(&p_1370->g_10, func_23(((p_1370->g_28 = ((void*)0 != l_26)) , func_29(func_34(((func_37(p_1370->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1370->tid, 76))], (18446744073709551613UL & func_42(p_6, p_1370)), p_1370->g_209.sb, l_314, p_1370) , l_26) != (void*)0), p_6, p_1370), l_26, p_1370->g_636.s7, p_1370->g_750.z, p_1370)), &l_314, p_1370), l_1091, l_1091, l_1091, p_1370) || p_6), p_6, p_7, p_6, p_1370) , l_1125) != &l_1091))
    { /* block id: 521 */
        int32_t *l_1126 = &p_1370->g_28;
        int32_t *l_1127 = &p_1370->g_834;
        int32_t *l_1128[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(uint32_t, 4) l_1155 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL);
        VECTOR(int8_t, 2) l_1170 = (VECTOR(int8_t, 2))(0x25L, 0x60L);
        VECTOR(uint32_t, 4) l_1180 = (VECTOR(uint32_t, 4))(0x4627761EL, (VECTOR(uint32_t, 2))(0x4627761EL, 1UL), 1UL);
        int i;
        ++p_1370->g_1129;
        if (p_6)
        { /* block id: 523 */
            for (p_1370->g_906 = (-16); (p_1370->g_906 != 13); p_1370->g_906 = safe_add_func_int64_t_s_s(p_1370->g_906, 6))
            { /* block id: 526 */
                return (*p_1370->g_996);
            }
        }
        else
        { /* block id: 529 */
            VECTOR(int16_t, 16) l_1148 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x283DL), 0x283DL), 0x283DL, 1L, 0x283DL, (VECTOR(int16_t, 2))(1L, 0x283DL), (VECTOR(int16_t, 2))(1L, 0x283DL), 1L, 0x283DL, 1L, 0x283DL);
            VECTOR(int16_t, 8) l_1149 = (VECTOR(int16_t, 8))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x0D31L), 0x0D31L), 0x0D31L, (-4L), 0x0D31L);
            uint32_t l_1161 = 4294967294UL;
            int32_t *l_1162 = (void*)0;
            int32_t *l_1163 = (void*)0;
            int32_t l_1164[5];
            int32_t **l_1165[4][9] = {{&l_1125,&l_1127,&l_1125,&l_1125,&l_1127,&l_1125,&l_1125,&l_1127,&l_1125},{&l_1125,&l_1127,&l_1125,&l_1125,&l_1127,&l_1125,&l_1125,&l_1127,&l_1125},{&l_1125,&l_1127,&l_1125,&l_1125,&l_1127,&l_1125,&l_1125,&l_1127,&l_1125},{&l_1125,&l_1127,&l_1125,&l_1125,&l_1127,&l_1125,&l_1125,&l_1127,&l_1125}};
            int8_t *l_1171 = (void*)0;
            int8_t *l_1172 = (void*)0;
            int8_t *l_1173 = (void*)0;
            int8_t *l_1174 = (void*)0;
            int8_t *l_1175 = (void*)0;
            int8_t *l_1176 = (void*)0;
            int8_t *l_1177 = (void*)0;
            int8_t *l_1178 = (void*)0;
            uint8_t l_1179 = 250UL;
            int64_t l_1191 = (-1L);
            uint16_t **l_1194[3][7] = {{&l_1193,&l_1193,&l_1193,&l_1193,&l_1193,&l_1193,&l_1193},{&l_1193,&l_1193,&l_1193,&l_1193,&l_1193,&l_1193,&l_1193},{&l_1193,&l_1193,&l_1193,&l_1193,&l_1193,&l_1193,&l_1193}};
            int i, j;
            for (i = 0; i < 5; i++)
                l_1164[i] = (-9L);
            (*l_1127) = ((safe_rshift_func_int8_t_s_u((((*l_1125) < (safe_lshift_func_uint16_t_u_s(((safe_mul_func_int16_t_s_s((1UL < ((l_1164[3] &= ((((*p_1370->g_80) = ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(7L, (-2L))), ((VECTOR(int8_t, 8))(l_1140.s73030731)).s20))).lo) != (((VECTOR(uint8_t, 8))(l_1141.yxyyyxyy)).s6 != (safe_div_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s((-1L), FAKE_DIVERGE(p_1370->local_2_offset, get_local_id(2), 10))) | (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_1148.s8d3e)).z, ((VECTOR(int16_t, 16))(l_1149.s6450621567023004)).s2))), (safe_sub_func_int8_t_s_s((*l_1125), (safe_lshift_func_int16_t_s_u((((*l_1127) ^ (p_6 == (((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 16))(p_1370->g_1154.yxxzwzxxxwwzwwxw)).s25, ((VECTOR(uint32_t, 8))(l_1155.zywwzwyw)).s65))).xyxy)).x , (*p_1370->g_603)) == (void*)0) == (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 8))((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_1160.xyyy)), 0x43L, (-1L), (-10L), 0x47L, 0x73L, (*l_1125), l_1161, ((VECTOR(int8_t, 4))(0x50L)), 0L)).hi)).even))).z, p_1370->g_276.s3)), ((VECTOR(uint16_t, 4))(0xC6EAL)), 8UL, 7UL, 65528UL)).s2060326471364252, ((VECTOR(uint16_t, 16))(1UL))))).odd, ((VECTOR(uint16_t, 8))(0xA5CEL))))), ((VECTOR(uint16_t, 8))(0xDF3BL))))).s3))))) || 0L), 0)))))))) , p_6)) , 0x2688D4AF490D7E13L)), l_1148.s9)) , 0xAB78L), 2))) , p_6), p_1370->g_50[4])) && 4294967293UL);
            p_7 = (*p_1370->g_878);
            (*l_1126) &= (safe_sub_func_int64_t_s_s((p_1370->g_828.sc , p_1370->g_810), (((safe_mul_func_int8_t_s_s(p_6, (((l_1179 ^= ((*p_1370->g_80) = ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_1170.xxxx)), (*l_1127), 0x13L, (-4L), 1L)).s2)) ^ (+(((*p_1370->g_240) = ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(l_1180.wy)))), 0x0DAC399EL, 0x775B7520L)).z) , (safe_mul_func_int8_t_s_s(((safe_div_func_int32_t_s_s((((p_1370->g_834 < ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(p_1370->g_1185.s672542ad)).even)).z) < (safe_mul_func_uint16_t_u_u(((((((*l_1125) | (((VECTOR(int32_t, 2))(p_1370->g_1188.xw)).lo | (((*p_1370->g_870) = (*p_1370->g_870)) != (((safe_rshift_func_int16_t_s_u(l_1191, FAKE_DIVERGE(p_1370->group_1_offset, get_group_id(1), 10))) < ((VECTOR(uint8_t, 8))(0x19L, ((VECTOR(uint8_t, 2))(0x6FL, 1UL)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(1UL, 253UL)))).yyyx)).even)), ((VECTOR(uint8_t, 2))(p_1370->g_1192.s35)), 0x69L)).s4) , (l_1193 = l_1193))))) >= p_1370->g_1195[1]) , GROUP_DIVERGE(1, 1)) != p_1370->g_276.s6) && p_1370->g_1074.s3), p_1370->g_961.x))) >= (*l_1125)), (*l_1125))) , (*l_1125)), p_1370->g_446.z))))) , (*l_1125)))) , p_6) , (*l_1127))));
        }
    }
    else
    { /* block id: 541 */
        int32_t *l_1196 = &l_1091;
        int32_t *l_1197[6][6] = {{&p_1370->g_2,&p_1370->g_93[3][0],(void*)0,&l_1091,(void*)0,&p_1370->g_93[3][0]},{&p_1370->g_2,&p_1370->g_93[3][0],(void*)0,&l_1091,(void*)0,&p_1370->g_93[3][0]},{&p_1370->g_2,&p_1370->g_93[3][0],(void*)0,&l_1091,(void*)0,&p_1370->g_93[3][0]},{&p_1370->g_2,&p_1370->g_93[3][0],(void*)0,&l_1091,(void*)0,&p_1370->g_93[3][0]},{&p_1370->g_2,&p_1370->g_93[3][0],(void*)0,&l_1091,(void*)0,&p_1370->g_93[3][0]},{&p_1370->g_2,&p_1370->g_93[3][0],(void*)0,&l_1091,(void*)0,&p_1370->g_93[3][0]}};
        int32_t l_1198[6] = {0x4B482530L,(-1L),0x4B482530L,0x4B482530L,(-1L),0x4B482530L};
        uint32_t l_1207 = 0xD8547D29L;
        int32_t ****l_1221 = &p_1370->g_1219;
        int32_t ***l_1222 = &p_1370->g_1220;
        int64_t *l_1223 = (void*)0;
        int64_t *l_1224 = &p_1370->g_665;
        VECTOR(int8_t, 16) l_1335 = (VECTOR(int8_t, 16))(0x40L, (VECTOR(int8_t, 4))(0x40L, (VECTOR(int8_t, 2))(0x40L, 0x11L), 0x11L), 0x11L, 0x40L, 0x11L, (VECTOR(int8_t, 2))(0x40L, 0x11L), (VECTOR(int8_t, 2))(0x40L, 0x11L), 0x40L, 0x11L, 0x40L, 0x11L);
        VECTOR(int8_t, 16) l_1336 = (VECTOR(int8_t, 16))(0x76L, (VECTOR(int8_t, 4))(0x76L, (VECTOR(int8_t, 2))(0x76L, 0L), 0L), 0L, 0x76L, 0L, (VECTOR(int8_t, 2))(0x76L, 0L), (VECTOR(int8_t, 2))(0x76L, 0L), 0x76L, 0L, 0x76L, 0L);
        int i, j;
        l_1207++;
        (*l_1196) = (((p_6 != (safe_mod_func_int8_t_s_s((+(+((safe_sub_func_int64_t_s_s(((*l_1224) = (((void*)0 != p_1370->g_935) && ((((*l_1125) = (*l_1125)) || (safe_lshift_func_int8_t_s_s(0x4FL, ((void*)0 == l_1216)))) & (((*p_1370->g_871) = (((safe_mul_func_uint8_t_u_u((((*l_1221) = p_1370->g_1219) != l_1222), p_6)) , p_6) <= p_1370->g_836.x)) | p_6)))), 0x613B1CBE56B41A0EL)) ^ p_6))), 0x07L))) || (*l_1125)) == (-6L));
        for (p_1370->g_665 = 21; (p_1370->g_665 != 3); --p_1370->g_665)
        { /* block id: 550 */
            VECTOR(int32_t, 2) l_1227 = (VECTOR(int32_t, 2))((-1L), 7L);
            int i;
            atomic_add(&p_1370->g_atomic_reduction[get_linear_group_id()], ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(l_1227.xyyxyyxy)).lo))).x);
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1370->v_collective += p_1370->g_atomic_reduction[get_linear_group_id()];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            (*l_1196) ^= (l_1228 = p_6);
        }
        for (p_1370->g_98 = 19; (p_1370->g_98 != 14); p_1370->g_98--)
        { /* block id: 557 */
            VECTOR(int32_t, 2) l_1306 = (VECTOR(int32_t, 2))(0x450CCBBFL, 0L);
            uint8_t *l_1323 = (void*)0;
            int8_t **l_1332 = (void*)0;
            int i;
            if ((atomic_inc(&p_1370->g_atomic_input[41 * get_linear_group_id() + 5]) == 1))
            { /* block id: 559 */
                int32_t l_1231 = 0x12F8E88EL;
                uint32_t l_1232 = 0UL;
                uint16_t l_1233 = 65533UL;
                int32_t l_1234[3];
                int16_t l_1235 = 1L;
                int i;
                for (i = 0; i < 3; i++)
                    l_1234[i] = 1L;
                if ((l_1231 , (l_1232 , (l_1233 , ((l_1234[1] , 1L) , l_1235)))))
                { /* block id: 560 */
                    int32_t l_1237[4][5] = {{4L,1L,(-6L),0x3B73A82FL,1L},{4L,1L,(-6L),0x3B73A82FL,1L},{4L,1L,(-6L),0x3B73A82FL,1L},{4L,1L,(-6L),0x3B73A82FL,1L}};
                    int32_t *l_1236 = &l_1237[3][4];
                    int32_t *l_1238 = &l_1237[3][4];
                    uint32_t l_1239 = 0x16B412F0L;
                    int16_t l_1240 = (-4L);
                    int64_t l_1241 = 0x01312136D309E93DL;
                    int8_t l_1242 = 0x2FL;
                    int i, j;
                    l_1238 = l_1236;
                    l_1242 = (l_1231 = ((l_1240 &= l_1239) , l_1241));
                }
                else
                { /* block id: 565 */
                    uint32_t l_1243 = 0x1182EB71L;
                    VECTOR(int32_t, 2) l_1246 = (VECTOR(int32_t, 2))(0x499253B0L, 1L);
                    int i;
                    l_1243++;
                    l_1231 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_1246.xxyy)).wyzxzyzxxyxzzwzx)).s5;
                    for (l_1246.x = (-30); (l_1246.x >= (-3)); l_1246.x = safe_add_func_int64_t_s_s(l_1246.x, 6))
                    { /* block id: 570 */
                        uint64_t l_1249 = 1UL;
                        uint32_t l_1252 = 0x97C33ACDL;
                        int32_t l_1253 = 0x6E383FF4L;
                        l_1231 &= 0x6BA13AEEL;
                        l_1249--;
                        l_1253 = l_1252;
                    }
                }
                for (l_1234[1] = 15; (l_1234[1] < 22); l_1234[1] = safe_add_func_int64_t_s_s(l_1234[1], 3))
                { /* block id: 578 */
                    VECTOR(int32_t, 8) l_1256 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-6L)), (-6L)), (-6L), 0L, (-6L));
                    VECTOR(int32_t, 8) l_1257 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L));
                    VECTOR(int32_t, 8) l_1258 = (VECTOR(int32_t, 8))(0x0E28E86EL, (VECTOR(int32_t, 4))(0x0E28E86EL, (VECTOR(int32_t, 2))(0x0E28E86EL, 1L), 1L), 1L, 0x0E28E86EL, 1L);
                    VECTOR(int32_t, 16) l_1259 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x412D752AL), 0x412D752AL), 0x412D752AL, (-1L), 0x412D752AL, (VECTOR(int32_t, 2))((-1L), 0x412D752AL), (VECTOR(int32_t, 2))((-1L), 0x412D752AL), (-1L), 0x412D752AL, (-1L), 0x412D752AL);
                    VECTOR(int32_t, 2) l_1260 = (VECTOR(int32_t, 2))(3L, (-2L));
                    uint8_t l_1261[10];
                    uint64_t l_1262 = 0UL;
                    uint32_t l_1263[9] = {6UL,0x300095D7L,6UL,6UL,0x300095D7L,6UL,6UL,0x300095D7L,6UL};
                    uint8_t l_1264 = 0xB1L;
                    uint16_t l_1265[10] = {4UL,4UL,4UL,4UL,4UL,4UL,4UL,4UL,4UL,4UL};
                    uint8_t l_1266 = 254UL;
                    uint32_t l_1267 = 0x720677B8L;
                    int64_t l_1268[1];
                    VECTOR(int32_t, 2) l_1269 = (VECTOR(int32_t, 2))(1L, (-8L));
                    VECTOR(int32_t, 16) l_1270 = (VECTOR(int32_t, 16))(0x2F0E6149L, (VECTOR(int32_t, 4))(0x2F0E6149L, (VECTOR(int32_t, 2))(0x2F0E6149L, (-9L)), (-9L)), (-9L), 0x2F0E6149L, (-9L), (VECTOR(int32_t, 2))(0x2F0E6149L, (-9L)), (VECTOR(int32_t, 2))(0x2F0E6149L, (-9L)), 0x2F0E6149L, (-9L), 0x2F0E6149L, (-9L));
                    VECTOR(int32_t, 8) l_1271 = (VECTOR(int32_t, 8))(0x0B6420A2L, (VECTOR(int32_t, 4))(0x0B6420A2L, (VECTOR(int32_t, 2))(0x0B6420A2L, (-1L)), (-1L)), (-1L), 0x0B6420A2L, (-1L));
                    VECTOR(int32_t, 8) l_1272 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x06224546L), 0x06224546L), 0x06224546L, 0L, 0x06224546L);
                    VECTOR(int32_t, 4) l_1273 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x40C45459L), 0x40C45459L);
                    VECTOR(int32_t, 2) l_1274 = (VECTOR(int32_t, 2))((-1L), 0x03F641AFL);
                    int8_t l_1275[2];
                    int32_t l_1276 = 0L;
                    uint32_t l_1277 = 4294967288UL;
                    int64_t l_1280 = 4L;
                    uint16_t l_1281 = 3UL;
                    int32_t l_1282 = 2L;
                    int8_t l_1283 = 6L;
                    int32_t l_1284 = 0x7586F6CCL;
                    uint32_t l_1285 = 0xC2B4BB31L;
                    int16_t l_1286 = 0x7812L;
                    uint8_t l_1287 = 7UL;
                    int32_t l_1288 = 0x07F85814L;
                    int32_t l_1289 = (-1L);
                    uint16_t l_1290 = 0xB0D0L;
                    uint32_t l_1291 = 4294967293UL;
                    int i;
                    for (i = 0; i < 10; i++)
                        l_1261[i] = 0x10L;
                    for (i = 0; i < 1; i++)
                        l_1268[i] = 0x11C20DF19A111312L;
                    for (i = 0; i < 2; i++)
                        l_1275[i] = 8L;
                    if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(l_1256.s46)).yxxy, ((VECTOR(int32_t, 2))(l_1257.s26)).xxyy))).yxxzywxyxwwwyxzz)))).sfc99, ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(l_1258.s63)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_1259.s8e)))), 0x1FFA0661L, (-1L))).lo, (int32_t)0x695A4B94L))))), 0x2E5F61BDL, (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_1260.yxxy)).xzwyywwz, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 16))((l_1262 = l_1261[2]), 0L, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(1L, 0x736E427CL)))), 0x115B7158L, 0L)), l_1263[4], ((VECTOR(int32_t, 8))(0x0D892FD5L, 0L, (l_1264 , l_1265[7]), ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))((l_1268[0] = (l_1267 = l_1266)), ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(l_1269.xyyyyxxy)), ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_1270.s416a756b)).s5525452431162331)).s4b, ((VECTOR(int32_t, 4))(0x3F5B8DF3L, 0x6482EA76L, (-1L), 0L)).even))).xyyy, ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))(1L, ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(l_1271.s1477654676144627)).odd, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_1272.s12)).yxyxyyxy)))).s26, ((VECTOR(int32_t, 16))(l_1273.wxwyxwwyyxyzxzzw)).sbf))), (l_1282 |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1274.yx)), 0x52FDC219L, l_1275[0], (-4L), 0x6B2F7FC8L, (l_1277 &= l_1276), 0x2F644B9AL, ((l_1232++) , l_1280), l_1281, ((VECTOR(int32_t, 2))(0x517FB579L)), 0x4C0368DDL, (-4L), (-1L), 0x35D0D3F9L)).sc), ((VECTOR(int32_t, 4))(0L)), 0x20E99E93L)).s70, ((VECTOR(int32_t, 2))(0x0C9E2D89L))))).xxxxyyyx))), 0x229FC146L, 0L, l_1283, l_1284, 0x3D852223L, 1L, 6L)).lo, ((VECTOR(int32_t, 8))(0x69B32735L))))).hi, ((VECTOR(int32_t, 4))(0x0302E165L)), ((VECTOR(int32_t, 4))(1L)))))))).yzyzywww))).s53)).xxyx))), (-2L), ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 2))(0x77D0B984L)), l_1285, ((VECTOR(int32_t, 2))(0x360F755BL)), 1L)).s25, ((VECTOR(int32_t, 2))(0L))))), ((VECTOR(int32_t, 2))(0x2CB03D00L)), 0x1EB02F79L)).s3, 0L, 0x16D23A23L)), ((VECTOR(int32_t, 8))(8L)))))))).odd, (int32_t)l_1286, (int32_t)l_1287))).hi, ((VECTOR(int32_t, 2))((-8L)))))), ((VECTOR(int32_t, 2))(8L)), ((VECTOR(int32_t, 2))((-1L)))))), ((VECTOR(int32_t, 2))((-10L))), ((VECTOR(int32_t, 8))((-9L))), 6L, 1L)).se1e5, (int32_t)l_1288, (int32_t)l_1289))))).hi)).yxyxyxyx, ((VECTOR(int32_t, 8))((-5L)))))), ((VECTOR(int32_t, 8))((-1L)))))).s5531212151304137, ((VECTOR(uint32_t, 16))(0x93D5976DL))))))).sd , l_1290), (-2L), 6L, 3L, (-1L))), l_1291, 0x44CAE02DL, (-9L), ((VECTOR(int32_t, 4))(2L)), 0L)).s3e))).xxyy))), 0x6056B5CAL, ((VECTOR(int32_t, 2))(0x0A10599DL)), 0x51666FC8L)).s6)
                    { /* block id: 585 */
                        int32_t l_1292 = 0x156A44F8L;
                        uint32_t l_1293[10];
                        int i;
                        for (i = 0; i < 10; i++)
                            l_1293[i] = 0xB7F87CDFL;
                        l_1258.s6 |= (l_1292 , l_1293[0]);
                    }
                    else
                    { /* block id: 587 */
                        int32_t l_1294 = 0x133DF910L;
                        uint16_t l_1295 = 0UL;
                        l_1295 |= l_1294;
                    }
                    l_1231 ^= 0x2BAD0779L;
                    for (l_1273.w = 8; (l_1273.w < (-26)); l_1273.w--)
                    { /* block id: 593 */
                        int16_t l_1298 = 1L;
                        uint32_t l_1299 = 0xFD950C81L;
                        int64_t l_1300[9][6] = {{0x695EC3FC04463C95L,0x501B711D6EC696ECL,0x009FDE11A2F9AE22L,1L,0x009FDE11A2F9AE22L,0x501B711D6EC696ECL},{0x695EC3FC04463C95L,0x501B711D6EC696ECL,0x009FDE11A2F9AE22L,1L,0x009FDE11A2F9AE22L,0x501B711D6EC696ECL},{0x695EC3FC04463C95L,0x501B711D6EC696ECL,0x009FDE11A2F9AE22L,1L,0x009FDE11A2F9AE22L,0x501B711D6EC696ECL},{0x695EC3FC04463C95L,0x501B711D6EC696ECL,0x009FDE11A2F9AE22L,1L,0x009FDE11A2F9AE22L,0x501B711D6EC696ECL},{0x695EC3FC04463C95L,0x501B711D6EC696ECL,0x009FDE11A2F9AE22L,1L,0x009FDE11A2F9AE22L,0x501B711D6EC696ECL},{0x695EC3FC04463C95L,0x501B711D6EC696ECL,0x009FDE11A2F9AE22L,1L,0x009FDE11A2F9AE22L,0x501B711D6EC696ECL},{0x695EC3FC04463C95L,0x501B711D6EC696ECL,0x009FDE11A2F9AE22L,1L,0x009FDE11A2F9AE22L,0x501B711D6EC696ECL},{0x695EC3FC04463C95L,0x501B711D6EC696ECL,0x009FDE11A2F9AE22L,1L,0x009FDE11A2F9AE22L,0x501B711D6EC696ECL},{0x695EC3FC04463C95L,0x501B711D6EC696ECL,0x009FDE11A2F9AE22L,1L,0x009FDE11A2F9AE22L,0x501B711D6EC696ECL}};
                        uint64_t l_1301 = 0x7D606A10DE5A0059L;
                        int i, j;
                        l_1299 = l_1298;
                        l_1276 &= l_1300[4][0];
                        ++l_1301;
                    }
                }
                unsigned int result = 0;
                result += l_1231;
                result += l_1232;
                result += l_1233;
                int l_1234_i0;
                for (l_1234_i0 = 0; l_1234_i0 < 3; l_1234_i0++) {
                    result += l_1234[l_1234_i0];
                }
                result += l_1235;
                atomic_add(&p_1370->g_special_values[41 * get_linear_group_id() + 5], result);
            }
            else
            { /* block id: 599 */
                (1 + 1);
            }
            for (p_1370->g_692 = 0; (p_1370->g_692 <= (-29)); p_1370->g_692 = safe_sub_func_int8_t_s_s(p_1370->g_692, 9))
            { /* block id: 604 */
                uint16_t l_1307 = 0x411EL;
                int32_t *l_1340 = &p_1370->g_834;
                uint8_t l_1341 = 0xE0L;
                atomic_max(&p_1370->g_atomic_reduction[get_linear_group_id()], ((*l_1196) = l_1306.y) + get_linear_global_id());
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1370->v_collective += p_1370->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (l_1307)
                    continue;
                for (p_1370->g_665 = 13; (p_1370->g_665 > (-7)); p_1370->g_665 = safe_sub_func_uint64_t_u_u(p_1370->g_665, 7))
                { /* block id: 610 */
                    for (p_1370->g_89 = 0; (p_1370->g_89 <= 19); p_1370->g_89 = safe_add_func_uint64_t_u_u(p_1370->g_89, 6))
                    { /* block id: 613 */
                        uint16_t ***l_1316 = &p_1370->g_870;
                        int64_t *l_1317 = &p_1370->g_1085;
                        int64_t **l_1318 = (void*)0;
                        int64_t **l_1319 = (void*)0;
                        int64_t **l_1321 = &l_1317;
                        int32_t l_1322 = 0x050286ABL;
                        int8_t **l_1333 = &l_27;
                        int8_t **l_1339 = (void*)0;
                        (*l_1196) = ((safe_sub_func_uint64_t_u_u((l_1307 < (safe_rshift_func_uint16_t_u_u((&p_1370->g_870 == l_1316), ((((*l_1321) = (p_1370->g_1320 = l_1317)) != (void*)0) & (l_1206[0] |= p_6))))), (((((*l_1196) ^ (l_1322 == l_1306.y)) , l_1323) != &p_1370->g_810) <= p_6))) , 1L);
                        atomic_xor(&p_1370->l_atomic_reduction[0], (safe_rshift_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_u((((safe_mod_func_int32_t_s_s(((~(((((++(*l_26)) > ((l_1333 = l_1332) == ((((**p_1370->g_870) ^= GROUP_DIVERGE(1, 1)) & (((***p_1370->g_715) >= l_1322) | ((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 4))(l_1334.s0446)).wxzwxwwwzyxyywzx, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(l_1335.s27)), ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(l_1336.s64fb)).even, ((VECTOR(int8_t, 8))((+0x50L), 4L, ((VECTOR(int8_t, 2))(0L, 0L)), ((*l_1125) > p_1370->g_756.sd), (p_6 == ((((!((safe_div_func_int64_t_s_s((*l_1196), (-1L))) & p_6)) <= l_1322) <= p_6) > p_6)), 0x77L, (-3L))).s77, ((VECTOR(int8_t, 2))(0L))))).yyxxyxyy, ((VECTOR(int8_t, 8))((-1L)))))).s12))).xxxxyxyxxxxyxxxy))))).s28)).yyyy, ((VECTOR(int8_t, 4))((-1L)))))).wwwwzxyzxzyxzxwz, ((VECTOR(int8_t, 16))(0x44L))))))).sd , 0x6BL) ^ p_6))) , l_1339))) , 0xE0A04E97L) || (-5L)) , (*l_1125))) <= l_1322), l_1307)) , p_1370->g_884.y) <= 0x74B16A169705ACACL), p_6)) & (*l_1125)) , (**p_1370->g_870)), 3)));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1370->v_collective += p_1370->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        return l_1340;
                    }
                    l_1306.y = 0x7A41B19EL;
                    l_1341--;
                }
            }
        }
    }
    l_1347--;
    l_1350++;
    (*l_1125) ^= ((((p_1370->g_804.x &= ((void*)0 != p_1370->g_935)) <= ((VECTOR(int16_t, 8))(p_1370->g_1354.yyyyxyxx)).s1) , ((((safe_sub_func_uint32_t_u_u((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0x4CL, 0x41L)).xxyxyyyxyyyxxyyy)).s7 & ((p_6 , (safe_rshift_func_uint16_t_u_s((*l_1344), ((void*)0 == &l_1347)))) >= (((*p_1370->g_871) = (((((safe_rshift_func_int16_t_s_u((((*p_1370->g_871) & (p_1370->g_1364 = ((p_6 > ((p_1370->g_1363[2] = ((*l_1362) = l_1361)) != &p_1370->g_929)) & p_6))) ^ (*l_1344)), 4)) & p_6) && l_1365) || p_1370->g_182) || 7L)) & (*l_1345)))), p_6)) , 0x28FEE6D2L) ^ l_1366) | p_6)) , (*l_1345));
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1370->g_804
 * writes:
 */
int16_t  func_12(int32_t  p_13, int64_t  p_14, int32_t * p_15, uint32_t  p_16, struct S0 * p_1370)
{ /* block id: 517 */
    uint32_t l_1115 = 0xE4E1158EL;
    VECTOR(uint8_t, 4) l_1116 = (VECTOR(uint8_t, 4))(0xCEL, (VECTOR(uint8_t, 2))(0xCEL, 0UL), 0UL);
    int32_t l_1117[7];
    int32_t *l_1118 = (void*)0;
    int32_t *l_1119 = &p_1370->g_93[3][0];
    int32_t *l_1120[4];
    int64_t l_1121 = 0x1EE09F6A8FF1AB7AL;
    uint32_t l_1122 = 0UL;
    int i;
    for (i = 0; i < 7; i++)
        l_1117[i] = (-1L);
    for (i = 0; i < 4; i++)
        l_1120[i] = &p_1370->g_95;
    l_1117[0] = (safe_rshift_func_int16_t_s_u((l_1115 ^ (p_16 , ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_1116.zzwy)).odd)).odd)), 4));
    ++l_1122;
    return p_1370->g_804.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1370->g_1092 p_1370->g_878 p_1370->g_80 p_1370->g_77 p_1370->g_870 p_1370->g_871 p_1370->g_257 p_1370->g_547 p_1370->g_1098 p_1370->g_226 p_1370->g_93 p_1370->g_1111 p_1370->g_88 p_1370->g_2 p_1370->g_28
 * writes: p_1370->g_421 p_1370->g_547 p_1370->g_227 p_1370->g_88 p_1370->g_93
 */
int16_t  func_17(uint64_t * p_18, int32_t * p_19, int32_t  p_20, int32_t  p_21, uint32_t  p_22, struct S0 * p_1370)
{ /* block id: 502 */
    uint32_t l_1093[4][4][10] = {{{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL}},{{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL}},{{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL}},{{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL},{0x1E14D9DBL,9UL,0xEB6EE5F0L,9UL,0x1E14D9DBL,0x34C58045L,0xFB711C9BL,0x4AA1E7B0L,7UL,4294967295UL}}};
    int32_t *l_1094 = (void*)0;
    int32_t **l_1095 = &l_1094;
    uint32_t ****l_1103 = &p_1370->g_715;
    int32_t l_1112 = 0x267650FEL;
    int i, j, k;
    l_1093[3][3][8] = ((VECTOR(int32_t, 4))(p_1370->g_1092.yzzz)).z;
    (*p_1370->g_878) = ((*l_1095) = l_1094);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_1370->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 76)), permutations[(safe_mod_func_uint32_t_u_u(((*p_1370->g_80) && ((**p_1370->g_870) , p_21)), 10))][(safe_mod_func_uint32_t_u_u(p_1370->tid, 76))]));
    for (p_1370->g_547 = (-29); (p_1370->g_547 <= (-20)); p_1370->g_547++)
    { /* block id: 511 */
        uint8_t l_1104 = 251UL;
        (*p_1370->g_226) = p_1370->g_1098;
        (*p_1370->g_1098) = (*p_19);
        (*p_19) |= (safe_sub_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((-1L) | (l_1103 != (void*)0)), l_1104)), ((((((((safe_div_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((**p_1370->g_870), (safe_sub_func_uint16_t_u_u((0x312160EEL <= (((VECTOR(int64_t, 16))(0x3473B3BAE8C820CDL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(0x57E644298AC1BBDCL, 0x1693AD4FC31642B4L, 0x0E15FF1BEA11AEBDL, ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(p_1370->g_1111.s33743d304f53050f)).hi, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x519618797DF1CBB8L, 0L)))).yxyyxyxy))), 1L, ((VECTOR(int64_t, 4))(0x4FC3D4C141715410L, l_1104, (-1L), 0x614AD6D53E095EC9L)))).s0b)))), ((VECTOR(int64_t, 8))(5L)), l_1104, ((VECTOR(int64_t, 4))(0x2C7C4A4697459076L)))).s3 , (*p_1370->g_1098))), 0x35B0L)))), (*p_1370->g_80))) & p_1370->g_2) < (**p_1370->g_870)) >= l_1104) || p_20) > p_21) < p_1370->g_28) || l_1104)));
    }
    return l_1112;
}


/* ------------------------------------------ */
/* 
 * reads : p_1370->g_10 p_1370->g_95 p_1370->g_1073 p_1370->g_1074 p_1370->g_421 p_1370->g_93 p_1370->g_718 p_1370->g_76
 * writes: p_1370->g_10 p_1370->g_665 p_1370->g_95 p_1370->g_93
 */
int32_t * func_23(int32_t * p_24, int32_t * p_25, struct S0 * p_1370)
{ /* block id: 405 */
    int64_t *l_857 = (void*)0;
    VECTOR(uint64_t, 2) l_858 = (VECTOR(uint64_t, 2))(6UL, 0xB2DEF025E93E02DBL);
    VECTOR(uint64_t, 16) l_859 = (VECTOR(uint64_t, 16))(0x94FB796CC57B8309L, (VECTOR(uint64_t, 4))(0x94FB796CC57B8309L, (VECTOR(uint64_t, 2))(0x94FB796CC57B8309L, 0xAF45BF487C0B725FL), 0xAF45BF487C0B725FL), 0xAF45BF487C0B725FL, 0x94FB796CC57B8309L, 0xAF45BF487C0B725FL, (VECTOR(uint64_t, 2))(0x94FB796CC57B8309L, 0xAF45BF487C0B725FL), (VECTOR(uint64_t, 2))(0x94FB796CC57B8309L, 0xAF45BF487C0B725FL), 0x94FB796CC57B8309L, 0xAF45BF487C0B725FL, 0x94FB796CC57B8309L, 0xAF45BF487C0B725FL);
    VECTOR(int64_t, 2) l_883 = (VECTOR(int64_t, 2))((-4L), 0x4EA7A32686785B8FL);
    VECTOR(uint8_t, 16) l_889 = (VECTOR(uint8_t, 16))(0x90L, (VECTOR(uint8_t, 4))(0x90L, (VECTOR(uint8_t, 2))(0x90L, 0xD0L), 0xD0L), 0xD0L, 0x90L, 0xD0L, (VECTOR(uint8_t, 2))(0x90L, 0xD0L), (VECTOR(uint8_t, 2))(0x90L, 0xD0L), 0x90L, 0xD0L, 0x90L, 0xD0L);
    uint16_t l_901 = 0xFD64L;
    VECTOR(uint8_t, 8) l_921 = (VECTOR(uint8_t, 8))(0x14L, (VECTOR(uint8_t, 4))(0x14L, (VECTOR(uint8_t, 2))(0x14L, 249UL), 249UL), 249UL, 0x14L, 249UL);
    int16_t l_930 = 0x360DL;
    VECTOR(uint64_t, 2) l_951 = (VECTOR(uint64_t, 2))(0x1653BCD5632E36ABL, 0x1E74EED82FBA9993L);
    VECTOR(uint16_t, 4) l_1019 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xCF96L), 0xCF96L);
    VECTOR(uint32_t, 2) l_1021 = (VECTOR(uint32_t, 2))(0x20F43F3EL, 4294967295UL);
    int32_t *l_1022 = &p_1370->g_95;
    int32_t l_1028 = 0x64794BF1L;
    int32_t l_1030 = (-9L);
    int32_t l_1035 = 0x1F2C3D2CL;
    int32_t l_1036 = 1L;
    int32_t l_1040 = 0x273269C5L;
    int32_t l_1042[7] = {(-1L),0x4BE2E79AL,(-1L),(-1L),0x4BE2E79AL,(-1L),(-1L)};
    int64_t *l_1066 = &p_1370->g_665;
    int64_t *l_1067 = (void*)0;
    int64_t *l_1068 = (void*)0;
    int64_t *l_1069 = (void*)0;
    int64_t *l_1070 = (void*)0;
    VECTOR(uint8_t, 4) l_1075 = (VECTOR(uint8_t, 4))(0xE7L, (VECTOR(uint8_t, 2))(0xE7L, 0x94L), 0x94L);
    VECTOR(uint8_t, 16) l_1076 = (VECTOR(uint8_t, 16))(0x5FL, (VECTOR(uint8_t, 4))(0x5FL, (VECTOR(uint8_t, 2))(0x5FL, 0UL), 0UL), 0UL, 0x5FL, 0UL, (VECTOR(uint8_t, 2))(0x5FL, 0UL), (VECTOR(uint8_t, 2))(0x5FL, 0UL), 0x5FL, 0UL, 0x5FL, 0UL);
    VECTOR(uint8_t, 16) l_1077 = (VECTOR(uint8_t, 16))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 255UL), 255UL), 255UL, 8UL, 255UL, (VECTOR(uint8_t, 2))(8UL, 255UL), (VECTOR(uint8_t, 2))(8UL, 255UL), 8UL, 255UL, 8UL, 255UL);
    int32_t **l_1083 = &p_1370->g_421;
    int32_t ***l_1082 = &l_1083;
    int64_t *l_1084[4][9] = {{&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085},{&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085},{&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085},{&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085,&p_1370->g_1085}};
    int32_t l_1086 = 6L;
    int8_t *l_1087[9][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    uint64_t *l_1088 = (void*)0;
    uint64_t *l_1089 = &p_1370->g_10;
    uint32_t l_1090 = 0xABC6A834L;
    int i, j, k;
    for (p_1370->g_10 = 0; (p_1370->g_10 >= 30); p_1370->g_10 = safe_add_func_uint32_t_u_u(p_1370->g_10, 1))
    { /* block id: 408 */
        int8_t l_864 = 0x45L;
        VECTOR(int16_t, 16) l_865 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int16_t, 2))((-1L), 1L), (VECTOR(int16_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
        int64_t l_874[4][9] = {{0x4000D8E9E359DF81L,0x4000D8E9E359DF81L,(-4L),(-1L),0x7DD5200E6F366D36L,(-1L),(-4L),0x4000D8E9E359DF81L,0x4000D8E9E359DF81L},{0x4000D8E9E359DF81L,0x4000D8E9E359DF81L,(-4L),(-1L),0x7DD5200E6F366D36L,(-1L),(-4L),0x4000D8E9E359DF81L,0x4000D8E9E359DF81L},{0x4000D8E9E359DF81L,0x4000D8E9E359DF81L,(-4L),(-1L),0x7DD5200E6F366D36L,(-1L),(-4L),0x4000D8E9E359DF81L,0x4000D8E9E359DF81L},{0x4000D8E9E359DF81L,0x4000D8E9E359DF81L,(-4L),(-1L),0x7DD5200E6F366D36L,(-1L),(-4L),0x4000D8E9E359DF81L,0x4000D8E9E359DF81L}};
        int8_t **l_900 = &p_1370->g_76[0][4][5];
        VECTOR(uint16_t, 16) l_980 = (VECTOR(uint16_t, 16))(0xF583L, (VECTOR(uint16_t, 4))(0xF583L, (VECTOR(uint16_t, 2))(0xF583L, 6UL), 6UL), 6UL, 0xF583L, 6UL, (VECTOR(uint16_t, 2))(0xF583L, 6UL), (VECTOR(uint16_t, 2))(0xF583L, 6UL), 0xF583L, 6UL, 0xF583L, 6UL);
        VECTOR(int32_t, 2) l_1010 = (VECTOR(int32_t, 2))((-7L), (-5L));
        int64_t l_1011 = 0L;
        uint64_t *l_1012 = (void*)0;
        int64_t l_1054[4] = {0x713C2C360C05AF77L,0x713C2C360C05AF77L,0x713C2C360C05AF77L,0x713C2C360C05AF77L};
        int i, j;
        (*p_25) = (*p_24);
    }
    (*p_25) = ((safe_add_func_uint64_t_u_u(((*l_1089) ^= (safe_mul_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(((*l_1022) && ((*l_1022) = ((*l_1066) = (*l_1022)))), ((void*)0 != &l_930))), ((safe_lshift_func_int16_t_s_s(l_1035, l_858.x)) , ((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 4))(p_1370->g_1073.s7016)).lo, ((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1370->g_1074.s74)).xyyx)).yzzwxzwwzxxxxyyw))).s2d))).yxyyxyxx, ((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 16))(l_1075.xzzzwyzwwxxwxzww)).lo, ((VECTOR(uint8_t, 8))(l_1076.sec986ab6)))))))).odd, ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(l_1077.s2142ca96)).s72, ((VECTOR(uint8_t, 4))(0UL, (safe_rshift_func_uint16_t_u_s((((((safe_rshift_func_uint16_t_u_s((l_1082 != (((**l_1083) = 0x700B4499193E6DDEL) , (((***l_1082) & 0x3B7CAE65L) , &l_1083))), 4)) > 0x35438D2BBF06124EL) != l_1086) , l_1087[0][6][0]) != (*p_1370->g_718)), 14)), 255UL, 0xA6L)).even))).yyyx))))).yxwyyzxy, ((VECTOR(uint8_t, 8))(0x72L))))).s5)))), l_1090)) && 6L);
    return (**l_1082);
}


/* ------------------------------------------ */
/* 
 * reads : p_1370->g_77 p_1370->g_93 p_1370->g_828 p_1370->g_10 p_1370->g_551 p_1370->g_226 p_1370->g_227 p_1370->g_836 p_1370->g_80 p_1370->g_209 p_1370->g_28 p_1370->g_421
 * writes: p_1370->g_77 p_1370->g_834 p_1370->g_93 p_1370->g_227 p_1370->g_810 p_1370->g_421 p_1370->g_95
 */
int32_t * func_29(int8_t * p_30, uint64_t * p_31, uint32_t  p_32, int32_t  p_33, struct S0 * p_1370)
{ /* block id: 389 */
    int32_t *l_815[3];
    VECTOR(int32_t, 2) l_835 = (VECTOR(int32_t, 2))(0x43516343L, 0x4DE8A990L);
    VECTOR(int32_t, 8) l_837 = (VECTOR(int32_t, 8))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L);
    VECTOR(int32_t, 2) l_838 = (VECTOR(int32_t, 2))(0x38112F4AL, 0x7E229876L);
    VECTOR(int64_t, 2) l_843 = (VECTOR(int64_t, 2))(0x4F5E3E04FE99E309L, (-2L));
    VECTOR(int8_t, 2) l_846 = (VECTOR(int8_t, 2))(0L, 0x3DL);
    uint32_t ***l_847 = &p_1370->g_716[4][2][1];
    uint8_t *l_848 = (void*)0;
    uint8_t *l_849 = &p_1370->g_810;
    uint8_t l_850 = 0x3EL;
    int i;
    for (i = 0; i < 3; i++)
        l_815[i] = &p_1370->g_93[3][0];
    for (p_1370->g_77 = 4; (p_1370->g_77 > (-23)); p_1370->g_77 = safe_sub_func_int32_t_s_s(p_1370->g_77, 8))
    { /* block id: 392 */
        int32_t **l_816 = &l_815[0];
        int64_t *l_825 = &p_1370->g_665;
        VECTOR(uint64_t, 2) l_829 = (VECTOR(uint64_t, 2))(0x71EC915003A0088BL, 0x57F6810541353938L);
        uint64_t *l_830 = (void*)0;
        uint64_t *l_831[9][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t l_832 = (-3L);
        int64_t *l_833 = (void*)0;
        int i, j;
        (*l_816) = l_815[0];
        (**l_816) = (((**l_816) != (safe_mul_func_int16_t_s_s(0x7790L, ((safe_lshift_func_int8_t_s_s((**l_816), 3)) | (safe_lshift_func_uint8_t_u_s(((void*)0 != &p_33), (safe_rshift_func_uint16_t_u_u((~((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(65535UL, 0xB457L)).xxxyyxyxxyxxxyxx)).s9443)).w), 15)))))))) ^ (((l_825 != (void*)0) , (p_1370->g_834 = ((safe_sub_func_uint32_t_u_u(p_32, (((FAKE_DIVERGE(p_1370->group_0_offset, get_group_id(0), 10) , ((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(p_1370->g_828.s87)), ((VECTOR(uint64_t, 2))(18446744073709551611UL, 6UL)), ((VECTOR(uint64_t, 4))(l_829.xyxy)))).s0426313624615376)), ((VECTOR(uint64_t, 16))((l_832 |= (*p_31)), (*p_31), ((VECTOR(uint64_t, 2))(0x587CC5F702F3468EL)), ((VECTOR(uint64_t, 4))(18446744073709551607UL)), ((VECTOR(uint64_t, 4))(18446744073709551615UL)), FAKE_DIVERGE(p_1370->group_1_offset, get_group_id(1), 10), 18446744073709551615UL, 1UL, 0UL))))).s0581)), ((VECTOR(uint64_t, 4))(0x7F0DB71505E2C293L))))).y) != 0x8739567B2BC81A95L) == p_1370->g_551.z))) > (**l_816)))) , (**l_816)));
        (*p_1370->g_226) = (*p_1370->g_226);
    }
    (*p_1370->g_421) = (((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))(l_835.xyyx)).zzyyzzyz, ((VECTOR(int32_t, 4))(p_1370->g_836.xyyx)).ywyxwzwz))).s45, (int32_t)0x25267DF6L))), ((VECTOR(int32_t, 2))(l_837.s43)), ((VECTOR(int32_t, 4))(l_838.yxyy)).odd))).odd | (safe_mod_func_int64_t_s_s(p_33, ((safe_sub_func_int8_t_s_s((!(-10L)), ((*l_849) = (((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(l_843.xyyyyyxy)).s66)).yxxyyxxx)), ((safe_mul_func_uint16_t_u_u(((((p_33 == (((*p_1370->g_80) = ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_846.yx)), 0x7CL, 0x07L, p_33, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-1L), (-1L))), (-1L), 8L)), 0L, 0x1EL, (-6L), 1L, (-2L), 0x1FL, 0x4AL)).sef)).hi) , ((l_847 == &p_1370->g_716[3][1][2]) || 0xE6D0841118E648C4L))) , ((0x4D248479CBC88CD8L != (-1L)) <= 0x689EL)) || 0x536A6166AEF99F90L) <= p_33), (-6L))) == p_33), p_1370->g_209.sc, ((VECTOR(int64_t, 4))((-1L))), 0L, 1L)).s8 , (void*)0) == &p_1370->g_421) && p_1370->g_28)))) , 2UL))));
    p_1370->g_421 = l_815[0];
    l_850++;
    return &p_1370->g_95;
}


/* ------------------------------------------ */
/* 
 * reads : p_1370->g_2 p_1370->g_756 p_1370->g_804 p_1370->g_498 p_1370->g_525 p_1370->g_547 p_1370->g_80 p_1370->g_77 p_1370->g_750 p_1370->g_810 p_1370->g_718 p_1370->g_76 p_1370->g_421 p_1370->g_95 p_1370->g_98
 * writes: p_1370->g_93 p_1370->g_547
 */
int8_t * func_34(uint16_t  p_35, uint32_t  p_36, struct S0 * p_1370)
{ /* block id: 381 */
    VECTOR(int8_t, 2) l_773 = (VECTOR(int8_t, 2))(0L, 0x0EL);
    uint8_t *l_789 = (void*)0;
    uint8_t *l_790 = (void*)0;
    uint8_t *l_791[3];
    uint32_t l_792 = 0x9FAF1FEDL;
    VECTOR(int16_t, 16) l_803 = (VECTOR(int16_t, 16))(0x26A0L, (VECTOR(int16_t, 4))(0x26A0L, (VECTOR(int16_t, 2))(0x26A0L, 3L), 3L), 3L, 0x26A0L, 3L, (VECTOR(int16_t, 2))(0x26A0L, 3L), (VECTOR(int16_t, 2))(0x26A0L, 3L), 0x26A0L, 3L, 0x26A0L, 3L);
    int32_t l_809[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
    int16_t *l_811 = &p_1370->g_547;
    int32_t l_812 = 1L;
    int i;
    for (i = 0; i < 3; i++)
        l_791[i] = (void*)0;
    l_812 |= (((((VECTOR(int8_t, 2))(l_773.yx)).hi != (((*l_811) = (safe_div_func_uint32_t_u_u((((*p_1370->g_421) = ((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1370->group_1_offset, get_group_id(1), 10), (safe_add_func_uint8_t_u_u(((((((((VECTOR(uint64_t, 16))(18446744073709551615UL, ((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((((safe_unary_minus_func_uint64_t_u((safe_mul_func_int16_t_s_s(((GROUP_DIVERGE(2, 1) && ((safe_rshift_func_int8_t_s_s(l_773.x, (l_773.x != (l_792 &= p_1370->g_2)))) != ((p_1370->g_756.sf ^ (((safe_mul_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), ((safe_lshift_func_uint8_t_u_s((((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 8))((FAKE_DIVERGE(p_1370->local_2_offset, get_local_id(2), 10) & p_36), ((VECTOR(int16_t, 2))(l_803.sd7)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(p_1370->g_804.yxxy)).yyzwyxwzwxxyzzzy)).sb6cc)), 0x5093L)).s2604617100046272, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(1L, (safe_div_func_uint32_t_u_u((l_809[0] = ((VECTOR(uint32_t, 8))(((safe_rshift_func_int16_t_s_s(p_1370->g_498.s4, ((1L != p_1370->g_525.s4) ^ (0x29AA3F4DD59313C3L | p_35)))) <= 255UL), 1UL, 0x0762B0ECL, 1UL, ((VECTOR(uint32_t, 2))(0xAB58567FL)), 0UL, 0xF7FBE644L)).s7), 0xEA40EF2BL)), ((VECTOR(int16_t, 2))(8L)), 0x2D45L, l_809[0], 0L, 0L, 0x2CB8L, ((VECTOR(int16_t, 4))(0x11E5L)), ((VECTOR(int16_t, 2))(0x43BDL)), 0x6556L)).sea, ((VECTOR(int16_t, 2))((-1L)))))).xxxxxxyyyxyyxxxy))))).sa5, ((VECTOR(int16_t, 2))(0x597AL))))), 0x58F5L, ((VECTOR(int16_t, 2))((-4L))), 1L, 0L, 0x191FL)).s2552737716556422))).s9, p_35)) && l_773.x) >= p_1370->g_547), 0)) == (*p_1370->g_80)))) | l_803.sc), p_35)), 0x33L)) , l_803.s5) >= 0x64L)) || l_803.sf))) > FAKE_DIVERGE(p_1370->local_2_offset, get_local_id(2), 10)), p_1370->g_750.w)))) , p_35) , FAKE_DIVERGE(p_1370->group_2_offset, get_group_id(2), 10)), l_803.s8)), 65527UL)) == p_1370->g_810), 6UL, 0x9F98ACD79DA131EDL, ((VECTOR(uint64_t, 4))(0xD5853A55030B7DE4L)), 1UL, 18446744073709551615UL, 0x2BC3DB5A1A932FB6L, 0x50C9EBE75B25D5A0L, 0x5231A5C31220E8BFL, 0xA20CC8281B584AF9L, 0UL, 8UL)).sf && FAKE_DIVERGE(p_1370->group_1_offset, get_group_id(1), 10)) , l_792) ^ 1UL) || l_803.s0) , (*p_1370->g_718)) == (void*)0), l_773.y)))) <= (-7L))) & l_803.sf), p_1370->g_95))) >= p_1370->g_98)) || 0L) != l_773.x);
    l_809[4] ^= 0x6A2C322EL;
    return l_789;
}


/* ------------------------------------------ */
/* 
 * reads : p_1370->g_319 p_1370->l_comm_values p_1370->g_80 p_1370->g_77 p_1370->g_28 p_1370->g_171 p_1370->g_93
 * writes: p_1370->g_206 p_1370->g_93 p_1370->g_28 p_1370->g_421 p_1370->g_171
 */
uint32_t  func_37(uint16_t  p_38, int16_t  p_39, int64_t  p_40, uint32_t  p_41, struct S0 * p_1370)
{ /* block id: 133 */
    uint32_t **l_317 = &p_1370->g_240;
    VECTOR(uint8_t, 16) l_318 = (VECTOR(uint8_t, 16))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0x30L), 0x30L), 0x30L, 246UL, 0x30L, (VECTOR(uint8_t, 2))(246UL, 0x30L), (VECTOR(uint8_t, 2))(246UL, 0x30L), 246UL, 0x30L, 246UL, 0x30L);
    VECTOR(uint8_t, 2) l_320 = (VECTOR(uint8_t, 2))(248UL, 1UL);
    int16_t *l_323 = (void*)0;
    int16_t *l_324 = (void*)0;
    int32_t *l_325 = &p_1370->g_93[6][0];
    int32_t **l_420[4][2] = {{(void*)0,&l_325},{(void*)0,&l_325},{(void*)0,&l_325},{(void*)0,&l_325}};
    VECTOR(uint64_t, 2) l_436 = (VECTOR(uint64_t, 2))(18446744073709551613UL, 0x47FF8F68D8C687EFL);
    VECTOR(uint64_t, 8) l_463 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL);
    uint64_t *l_464 = (void*)0;
    uint32_t l_486 = 4294967295UL;
    VECTOR(int16_t, 4) l_533 = (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 7L), 7L);
    uint32_t l_540 = 0x74938A68L;
    uint64_t ***l_599[9][8] = {{&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473},{&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473},{&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473},{&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473},{&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473},{&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473},{&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473},{&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473},{&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473,&p_1370->g_473}};
    uint16_t l_628[10][6][4] = {{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}},{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}},{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}},{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}},{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}},{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}},{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}},{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}},{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}},{{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L},{0xC606L,8UL,65535UL,0xDD41L}}};
    int8_t *l_638 = (void*)0;
    uint8_t l_648 = 0x91L;
    uint64_t l_671 = 0UL;
    int i, j, k;
    p_1370->g_28 ^= ((*l_325) = ((GROUP_DIVERGE(1, 1) ^ (p_1370->g_206.y = (safe_add_func_int16_t_s_s((0x35A5L | (((void*)0 == l_317) || ((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 4))(0UL, ((VECTOR(uint8_t, 2))(l_318.s3d)), 0x54L)).lo, ((VECTOR(uint8_t, 4))(p_1370->g_319.xxyy)).hi))).yyyyyyxx, ((VECTOR(uint8_t, 8))(l_320.yxyxyyxx))))).s2)), (safe_lshift_func_int16_t_s_u(p_1370->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1370->tid, 76))], 5)))))) ^ (((*p_1370->g_80) , l_318.s5) == 0x424F0DD814FB9CD5L)));
    if ((atomic_inc(&p_1370->l_atomic_input[24]) == 2))
    { /* block id: 138 */
        int32_t l_327[4];
        int32_t *l_326 = &l_327[0];
        int32_t *l_328 = &l_327[0];
        int32_t l_418 = 1L;
        uint32_t l_419 = 0x3958F571L;
        int i;
        for (i = 0; i < 4; i++)
            l_327[i] = 0x3A5BA182L;
        l_328 = l_326;
        for (l_327[0] = (-5); (l_327[0] == 29); l_327[0] = safe_add_func_uint32_t_u_u(l_327[0], 8))
        { /* block id: 142 */
            VECTOR(int32_t, 2) l_331 = (VECTOR(int32_t, 2))((-1L), (-1L));
            int i;
            if (((VECTOR(int32_t, 8))(l_331.xyxyxxxx)).s6)
            { /* block id: 143 */
                VECTOR(int8_t, 16) l_332 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 3L), 3L), 3L, (-1L), 3L, (VECTOR(int8_t, 2))((-1L), 3L), (VECTOR(int8_t, 2))((-1L), 3L), (-1L), 3L, (-1L), 3L);
                int16_t l_333 = 0x03F7L;
                uint8_t l_334 = 1UL;
                VECTOR(int32_t, 16) l_336 = (VECTOR(int32_t, 16))(0x1CC8058CL, (VECTOR(int32_t, 4))(0x1CC8058CL, (VECTOR(int32_t, 2))(0x1CC8058CL, 0x11579539L), 0x11579539L), 0x11579539L, 0x1CC8058CL, 0x11579539L, (VECTOR(int32_t, 2))(0x1CC8058CL, 0x11579539L), (VECTOR(int32_t, 2))(0x1CC8058CL, 0x11579539L), 0x1CC8058CL, 0x11579539L, 0x1CC8058CL, 0x11579539L);
                int32_t *l_335 = (void*)0;
                int64_t l_341 = 0x601462BFA8556881L;
                uint8_t l_342[8][6][1] = {{{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL}},{{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL}},{{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL}},{{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL}},{{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL}},{{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL}},{{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL}},{{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL},{0x6FL}}};
                uint32_t l_343 = 4294967295UL;
                VECTOR(int32_t, 4) l_344 = (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 1L), 1L);
                int32_t l_345 = 7L;
                uint32_t l_346 = 0x67675451L;
                uint8_t l_347 = 0x48L;
                uint32_t l_348 = 0x31CCC557L;
                int8_t l_349 = (-7L);
                uint16_t l_350[4];
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_350[i] = 0UL;
                l_333 ^= l_332.sb;
                l_328 = (l_334 , l_335);
                for (l_332.s6 = 0; (l_332.s6 <= (-15)); --l_332.s6)
                { /* block id: 148 */
                    uint8_t l_339 = 0x9CL;
                    uint64_t l_340[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_340[i] = 1UL;
                    l_340[0] ^= l_339;
                }
                l_350[1] ^= (l_331.y ^= ((l_341 = 0x523A0FC1L) , ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 8))(l_342[6][0][0], l_343, 1L, 0x39A0D794L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_344.zw)))), 0L, 1L)).s0134556720330075, ((VECTOR(int32_t, 16))(4L, 0x1CADA77CL, l_345, l_346, (l_347 , l_348), (-1L), 0x097751CFL, l_349, ((VECTOR(int32_t, 8))(0x328D9628L))))))).se17e, ((VECTOR(int32_t, 4))((-7L)))))).w));
            }
            else
            { /* block id: 154 */
                int32_t l_351 = 0x573B8F1BL;
                VECTOR(int32_t, 8) l_378 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x2504DB17L), 0x2504DB17L), 0x2504DB17L, (-4L), 0x2504DB17L);
                uint32_t l_379 = 0UL;
                int i;
                for (l_351 = 9; (l_351 != (-4)); l_351--)
                { /* block id: 157 */
                    int32_t l_354 = 0x71F278ABL;
                    VECTOR(uint8_t, 4) l_355 = (VECTOR(uint8_t, 4))(247UL, (VECTOR(uint8_t, 2))(247UL, 0x47L), 0x47L);
                    uint32_t l_358 = 8UL;
                    uint8_t l_359 = 0x96L;
                    int64_t l_360 = (-1L);
                    uint32_t l_361 = 0x8B319221L;
                    uint8_t l_362 = 0UL;
                    VECTOR(int32_t, 16) l_363 = (VECTOR(int32_t, 16))(0x342F73D3L, (VECTOR(int32_t, 4))(0x342F73D3L, (VECTOR(int32_t, 2))(0x342F73D3L, 0x2659DBCFL), 0x2659DBCFL), 0x2659DBCFL, 0x342F73D3L, 0x2659DBCFL, (VECTOR(int32_t, 2))(0x342F73D3L, 0x2659DBCFL), (VECTOR(int32_t, 2))(0x342F73D3L, 0x2659DBCFL), 0x342F73D3L, 0x2659DBCFL, 0x342F73D3L, 0x2659DBCFL);
                    int i;
                    --l_355.w;
                    l_328 = ((l_359 = (l_358 = 0x78L)) , (l_326 = (void*)0));
                    l_361 &= l_360;
                    if ((l_362 , (l_331.y = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_363.s34)).yyxxxyxyyyxxxxxx)).s1)))
                    { /* block id: 165 */
                        int64_t l_364[6][7][6] = {{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}}};
                        int16_t l_365 = 0x1D8AL;
                        int8_t l_366 = (-1L);
                        int64_t l_367 = (-9L);
                        int32_t l_368 = 1L;
                        int32_t l_369 = 0x70436DFBL;
                        uint64_t l_370 = 18446744073709551609UL;
                        int i, j, k;
                        ++l_370;
                    }
                    else
                    { /* block id: 167 */
                        int8_t l_373 = 1L;
                        int8_t l_374 = 0x6FL;
                        int32_t l_375 = 0x15CA5C97L;
                        int8_t l_376 = 0x4BL;
                        uint8_t l_377 = 1UL;
                        l_331.y = (l_363.s5 &= l_373);
                        l_326 = (void*)0;
                        l_375 &= l_374;
                        l_377 |= l_376;
                    }
                }
                l_379--;
                for (l_379 = (-5); (l_379 < 8); l_379 = safe_add_func_uint32_t_u_u(l_379, 4))
                { /* block id: 178 */
                    int8_t l_384 = (-10L);
                    int32_t l_385 = 0x0E5BC619L;
                    int16_t l_386 = 0L;
                    uint32_t l_387 = 0xCDCC14A8L;
                    uint32_t l_388 = 0xAF13C814L;
                    VECTOR(int32_t, 8) l_389 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), (-4L)), (-4L)), (-4L), (-9L), (-4L));
                    VECTOR(int32_t, 16) l_390 = (VECTOR(int32_t, 16))(0x171A9CFEL, (VECTOR(int32_t, 4))(0x171A9CFEL, (VECTOR(int32_t, 2))(0x171A9CFEL, 0x1E98831CL), 0x1E98831CL), 0x1E98831CL, 0x171A9CFEL, 0x1E98831CL, (VECTOR(int32_t, 2))(0x171A9CFEL, 0x1E98831CL), (VECTOR(int32_t, 2))(0x171A9CFEL, 0x1E98831CL), 0x171A9CFEL, 0x1E98831CL, 0x171A9CFEL, 0x1E98831CL);
                    VECTOR(int32_t, 16) l_391 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x18860A4EL), 0x18860A4EL), 0x18860A4EL, 1L, 0x18860A4EL, (VECTOR(int32_t, 2))(1L, 0x18860A4EL), (VECTOR(int32_t, 2))(1L, 0x18860A4EL), 1L, 0x18860A4EL, 1L, 0x18860A4EL);
                    VECTOR(int32_t, 8) l_392 = (VECTOR(int32_t, 8))(0x2D110CAFL, (VECTOR(int32_t, 4))(0x2D110CAFL, (VECTOR(int32_t, 2))(0x2D110CAFL, 0x1071348BL), 0x1071348BL), 0x1071348BL, 0x2D110CAFL, 0x1071348BL);
                    VECTOR(int32_t, 8) l_393 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x02394813L), 0x02394813L), 0x02394813L, 0L, 0x02394813L);
                    VECTOR(int32_t, 4) l_394 = (VECTOR(int32_t, 4))(0x72811394L, (VECTOR(int32_t, 2))(0x72811394L, (-5L)), (-5L));
                    VECTOR(int32_t, 2) l_395 = (VECTOR(int32_t, 2))(0L, 0L);
                    VECTOR(int32_t, 2) l_396 = (VECTOR(int32_t, 2))(2L, 0x3A5771FBL);
                    uint64_t l_397[9] = {18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL,18446744073709551611UL};
                    uint64_t l_398 = 18446744073709551612UL;
                    int32_t l_399 = 0x3D1CAA78L;
                    VECTOR(uint16_t, 8) l_400 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x6BF6L), 0x6BF6L), 0x6BF6L, 65535UL, 0x6BF6L);
                    int64_t l_401[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
                    VECTOR(uint16_t, 2) l_402 = (VECTOR(uint16_t, 2))(0UL, 65535UL);
                    VECTOR(uint16_t, 4) l_403 = (VECTOR(uint16_t, 4))(0x3562L, (VECTOR(uint16_t, 2))(0x3562L, 0UL), 0UL);
                    VECTOR(uint16_t, 8) l_404 = (VECTOR(uint16_t, 8))(0x0752L, (VECTOR(uint16_t, 4))(0x0752L, (VECTOR(uint16_t, 2))(0x0752L, 1UL), 1UL), 1UL, 0x0752L, 1UL);
                    VECTOR(int16_t, 8) l_405 = (VECTOR(int16_t, 8))(0x2E77L, (VECTOR(int16_t, 4))(0x2E77L, (VECTOR(int16_t, 2))(0x2E77L, 0x6A84L), 0x6A84L), 0x6A84L, 0x2E77L, 0x6A84L);
                    VECTOR(uint16_t, 4) l_406 = (VECTOR(uint16_t, 4))(0xBBEFL, (VECTOR(uint16_t, 2))(0xBBEFL, 0xC133L), 0xC133L);
                    int32_t l_407 = (-10L);
                    int8_t l_408 = (-1L);
                    VECTOR(int16_t, 2) l_409 = (VECTOR(int16_t, 2))(0x59A7L, (-7L));
                    VECTOR(int16_t, 16) l_410 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x6DBCL), 0x6DBCL), 0x6DBCL, (-1L), 0x6DBCL, (VECTOR(int16_t, 2))((-1L), 0x6DBCL), (VECTOR(int16_t, 2))((-1L), 0x6DBCL), (-1L), 0x6DBCL, (-1L), 0x6DBCL);
                    uint32_t l_411 = 1UL;
                    uint8_t l_412 = 251UL;
                    int32_t l_413 = 0x25E2FF4FL;
                    uint16_t l_414 = 1UL;
                    int32_t l_415 = (-10L);
                    uint16_t l_416 = 65534UL;
                    uint32_t l_417 = 1UL;
                    int i;
                    l_386 &= (l_384 , l_385);
                    l_351 = 0x2B202181L;
                    l_395.x = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))((-6L), ((VECTOR(int32_t, 2))(0x3EC201F3L, (-1L))), (l_388 = l_387), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(l_389.s0347)).even, (int32_t)((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 2))((-8L), 1L)).yyxyxyxxxyxxyyyy, ((VECTOR(int32_t, 16))(l_390.s46277b2ada288b95)), ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(0x2AD813F8L, 0L)).xyyxxyyyxxxxyxyy, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_391.sf2f7)).lo)).xyxx)), ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_392.s72574273)).s0222272312546434)).odd, ((VECTOR(int32_t, 16))(l_393.s3653267666022547)).lo))).hi))).zyyxxwywywywzzyz)))))))).s27e5, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(l_394.zwxwzwwx)).hi, ((VECTOR(int32_t, 8))(l_395.xxyyxyxy)).hi))).wzzyzwzx)).lo))).y))), 1L, 3L)).even, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(1L, 0L)), ((VECTOR(int32_t, 2))(1L, (-3L))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_396.xxyxxyyx)).s15)), 0x392091FAL, 0x50D7F90FL)).s24))), 1L, 0x5E661701L)))).s52)), l_397[8], 0x65E78A66L, (l_399 = (l_398 , 1L)), (l_389.s7 = (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(0UL, ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 16))(l_400.s6153157201022103)).odd, ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(0xD08DL, l_401[6], 0x3963L, ((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(l_402.yyxyyxxyyyxxyxyy)))).hi, ((VECTOR(uint16_t, 4))(l_403.yzwx)).ywxwzwzw))).s4236521422575502)).s3d29)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(l_404.s3370140222414732)).hi)))).odd, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 8))(0x1458L, 0x1B10L, 0xF183L, 0x9A19L, 65533UL, ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(0x4C42L, 1L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_405.s74)))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x60D3L, 7L)).xyyy)))))).hi)).wwywwzxwyxywwwyw)))))).sea96, ((VECTOR(uint16_t, 2))(l_406.yw)).yyxy))).yxywyyxxyxwxzywz, (uint16_t)(l_408 = l_407)))).s27, ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x589FL, 9UL)), 2UL, 0UL, ((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(l_409.xxyxyyyxxyxxyxyx)).s61a5)).even)), ((VECTOR(int16_t, 16))(0x7D3BL, ((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 8))(l_410.sea6ee2f7))))), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(8L, ((VECTOR(int16_t, 2))(0x45FEL)), 0x342CL)).yyyywwyy)).lo)).lo)))).xyxy, ((VECTOR(int16_t, 4))(0x2681L))))), 0x539FL, ((VECTOR(int16_t, 4))(0x0D50L)), l_411, l_412, 1L, (-1L), 0x0A27L, 0x2FDDL, 0x1AC6L)).odd, ((VECTOR(int16_t, 8))(0x1DF0L))))), l_413, 5L, ((VECTOR(int16_t, 4))(0x57B4L)), (-10L))).s7d, ((VECTOR(int16_t, 2))(0x7B76L))))).xyxxxxyy))).s3, l_414, 0x9DD6L, 1UL)))).s71, ((VECTOR(uint16_t, 2))(1UL)), ((VECTOR(uint16_t, 2))(65535UL))))).yxxxyyxxxyxxxxyy, ((VECTOR(uint16_t, 16))(0UL))))).even, ((VECTOR(uint16_t, 8))(0x9BC8L))))).even)).wzyzywwy, ((VECTOR(uint16_t, 8))(0x9968L))))).even, ((VECTOR(uint16_t, 4))(65531UL))))).even, ((VECTOR(uint16_t, 2))(0x741AL))))), 65535UL)).s57, ((VECTOR(uint16_t, 2))(65533UL)), ((VECTOR(uint16_t, 2))(0xDD38L))))))).xxyy))), 0x1F55L)), ((VECTOR(uint16_t, 4))(0x256DL)), ((VECTOR(uint16_t, 2))(0x8549L)), 0xE4B8L, 65527UL)), (uint16_t)65535UL, (uint16_t)l_415))).lo, ((VECTOR(uint16_t, 8))(65527UL))))).odd, ((VECTOR(uint16_t, 4))(0xE42AL))))), l_416, 0xCC4FL, 0xF4D8L)).s42)), ((VECTOR(uint16_t, 2))(0xE111L))))).xyxy, ((VECTOR(uint16_t, 4))(2UL))))))), 0x5C07L, 8UL, 65535UL, 65528UL, ((VECTOR(uint16_t, 2))(0x60F4L)), l_417, ((VECTOR(uint16_t, 4))(1UL)), 8UL)).sd1c4)).z , 0x731A8787L)), ((VECTOR(int32_t, 2))((-1L))), 0x3423416EL, 6L, ((VECTOR(int32_t, 4))(0x62D56F13L)), 0x04ACC2E6L, 0x64DDE8D8L)).sc;
                }
            }
        }
        l_419 ^= l_418;
        unsigned int result = 0;
        int l_327_i0;
        for (l_327_i0 = 0; l_327_i0 < 4; l_327_i0++) {
            result += l_327[l_327_i0];
        }
        result += l_418;
        result += l_419;
        atomic_add(&p_1370->l_special_values[24], result);
    }
    else
    { /* block id: 190 */
        (1 + 1);
    }
    p_1370->g_421 = l_325;
    for (p_1370->g_171 = 0; (p_1370->g_171 != 57); p_1370->g_171++)
    { /* block id: 196 */
        VECTOR(int32_t, 4) l_425 = (VECTOR(int32_t, 4))(0x084ACE62L, (VECTOR(int32_t, 2))(0x084ACE62L, (-1L)), (-1L));
        VECTOR(int32_t, 8) l_426 = (VECTOR(int32_t, 8))(0x0FA26031L, (VECTOR(int32_t, 4))(0x0FA26031L, (VECTOR(int32_t, 2))(0x0FA26031L, 2L), 2L), 2L, 0x0FA26031L, 2L);
        uint32_t **l_431 = &p_1370->g_240;
        uint64_t *l_432 = &p_1370->g_10;
        VECTOR(int16_t, 8) l_455 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
        int32_t *l_499 = &p_1370->g_83;
        VECTOR(int16_t, 2) l_529 = (VECTOR(int16_t, 2))(2L, 0x6D8CL);
        VECTOR(int16_t, 16) l_531 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x53DDL), 0x53DDL), 0x53DDL, 1L, 0x53DDL, (VECTOR(int16_t, 2))(1L, 0x53DDL), (VECTOR(int16_t, 2))(1L, 0x53DDL), 1L, 0x53DDL, 1L, 0x53DDL);
        VECTOR(int16_t, 8) l_532 = (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x3A02L), 0x3A02L), 0x3A02L, 7L, 0x3A02L);
        uint64_t l_552 = 0x49DC82670CF58192L;
        VECTOR(int64_t, 2) l_571 = (VECTOR(int64_t, 2))(1L, 0x2098D2E2ED89F7A8L);
        VECTOR(uint32_t, 8) l_597 = (VECTOR(uint32_t, 8))(0x1F9D2996L, (VECTOR(uint32_t, 4))(0x1F9D2996L, (VECTOR(uint32_t, 2))(0x1F9D2996L, 2UL), 2UL), 2UL, 0x1F9D2996L, 2UL);
        uint64_t ***l_601 = (void*)0;
        uint32_t l_631 = 0x385A753CL;
        VECTOR(int32_t, 16) l_637 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
        int32_t *l_772 = (void*)0;
        int i;
        l_426.s0 = (~((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(((*l_325) &= (&p_1370->g_77 == (void*)0)), ((VECTOR(int32_t, 2))(p_1370->g_424.s56)), ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 16))(l_425.ywwyzxyxxwyyxyxy)), ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_426.s4451)))), 0x10763F29L, ((safe_mod_func_int16_t_s_s((p_1370->g_206.w = p_40), ((*l_325) | ((*p_1370->g_240) = (*p_1370->g_240))))) , ((((0x5D38DEFAL < (l_425.y <= (FAKE_DIVERGE(p_1370->global_2_offset, get_global_id(2), 10) && (0x17E6FB769225090FL == (safe_div_func_uint64_t_u_u((p_39 , p_41), p_1370->g_255)))))) , (void*)0) != l_431) , p_41)), ((VECTOR(int32_t, 4))((-7L))), 0x41B9751CL, l_426.s5, ((VECTOR(int32_t, 4))((-1L))))).sd3)), ((VECTOR(int32_t, 2))((-1L)))))).yxxxxyxyxxyyxyxx))).hi, (int32_t)p_40))), ((VECTOR(int32_t, 2))(0x38AC384EL)), ((VECTOR(int32_t, 2))(6L)), (-9L))), ((VECTOR(int32_t, 16))((-1L)))))).sc);
    }
    return (*l_325);
}


/* ------------------------------------------ */
/* 
 * reads : p_1370->g_50 p_1370->g_10 p_1370->g_226 p_1370->g_227 p_1370->g_228 p_1370->g_93 p_1370->g_comm_values p_1370->g_206 p_1370->g_80 p_1370->g_95 p_1370->g_255 p_1370->g_182 p_1370->g_276 p_1370->g_240 p_1370->g_171 p_1370->g_77 p_1370->g_98 p_1370->g_209
 * writes: p_1370->g_50 p_1370->g_10 p_1370->g_28 p_1370->g_93 p_1370->g_240 p_1370->g_77 p_1370->g_228 p_1370->g_95 p_1370->g_182 p_1370->g_171 p_1370->g_227
 */
uint64_t  func_42(uint16_t  p_43, struct S0 * p_1370)
{ /* block id: 11 */
    uint8_t l_44 = 253UL;
    int32_t l_49[7];
    uint64_t *l_218 = (void*)0;
    VECTOR(int16_t, 16) l_224 = (VECTOR(int16_t, 16))(0x143EL, (VECTOR(int16_t, 4))(0x143EL, (VECTOR(int16_t, 2))(0x143EL, 0x7C4BL), 0x7C4BL), 0x7C4BL, 0x143EL, 0x7C4BL, (VECTOR(int16_t, 2))(0x143EL, 0x7C4BL), (VECTOR(int16_t, 2))(0x143EL, 0x7C4BL), 0x143EL, 0x7C4BL, 0x143EL, 0x7C4BL);
    VECTOR(uint32_t, 2) l_231 = (VECTOR(uint32_t, 2))(4294967293UL, 0x67F430B1L);
    int16_t l_245 = 0x7D0AL;
    VECTOR(int64_t, 2) l_252 = (VECTOR(int64_t, 2))(1L, 0x2F1D9DC3E8900120L);
    VECTOR(uint16_t, 8) l_267 = (VECTOR(uint16_t, 8))(0x333EL, (VECTOR(uint16_t, 4))(0x333EL, (VECTOR(uint16_t, 2))(0x333EL, 0x5186L), 0x5186L), 0x5186L, 0x333EL, 0x5186L);
    uint16_t l_273[6][10] = {{65535UL,0UL,0x3258L,0UL,65535UL,65535UL,0UL,0x3258L,0UL,65535UL},{65535UL,0UL,0x3258L,0UL,65535UL,65535UL,0UL,0x3258L,0UL,65535UL},{65535UL,0UL,0x3258L,0UL,65535UL,65535UL,0UL,0x3258L,0UL,65535UL},{65535UL,0UL,0x3258L,0UL,65535UL,65535UL,0UL,0x3258L,0UL,65535UL},{65535UL,0UL,0x3258L,0UL,65535UL,65535UL,0UL,0x3258L,0UL,65535UL},{65535UL,0UL,0x3258L,0UL,65535UL,65535UL,0UL,0x3258L,0UL,65535UL}};
    VECTOR(int32_t, 8) l_288 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x5542F661L), 0x5542F661L), 0x5542F661L, 1L, 0x5542F661L);
    VECTOR(int32_t, 2) l_290 = (VECTOR(int32_t, 2))(0x6B8F3C74L, (-10L));
    int8_t l_308 = 0x63L;
    int32_t l_309[9][9][3] = {{{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L}},{{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L}},{{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L}},{{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L}},{{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L}},{{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L}},{{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L}},{{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L}},{{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L},{4L,0x08C7AFC6L,1L}}};
    uint32_t l_311 = 0xF951D920L;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_49[i] = 0x1A9D0127L;
    if (p_43)
    { /* block id: 12 */
        int32_t *l_47[5];
        int64_t l_48 = 0x2E50714BA09A164EL;
        int i;
        for (i = 0; i < 5; i++)
            l_47[i] = &p_1370->g_28;
        --l_44;
        --p_1370->g_50[4];
        for (p_1370->g_10 = 3; (p_1370->g_10 != 34); ++p_1370->g_10)
        { /* block id: 17 */
            uint64_t *l_70 = &p_1370->g_10;
            int32_t *l_250 = &p_1370->g_95;
            int32_t l_262[5];
            int i;
            for (i = 0; i < 5; i++)
                l_262[i] = 0L;
            for (p_1370->g_28 = 0; (p_1370->g_28 == (-26)); --p_1370->g_28)
            { /* block id: 20 */
                VECTOR(int32_t, 16) l_65 = (VECTOR(int32_t, 16))(0x45AB2A44L, (VECTOR(int32_t, 4))(0x45AB2A44L, (VECTOR(int32_t, 2))(0x45AB2A44L, 0x0E16D714L), 0x0E16D714L), 0x0E16D714L, 0x45AB2A44L, 0x0E16D714L, (VECTOR(int32_t, 2))(0x45AB2A44L, 0x0E16D714L), (VECTOR(int32_t, 2))(0x45AB2A44L, 0x0E16D714L), 0x45AB2A44L, 0x0E16D714L, 0x45AB2A44L, 0x0E16D714L);
                int8_t *l_78[3];
                uint32_t l_225[1];
                VECTOR(uint32_t, 4) l_233 = (VECTOR(uint32_t, 4))(0x908F4F7AL, (VECTOR(uint32_t, 2))(0x908F4F7AL, 4294967287UL), 4294967287UL);
                uint16_t *l_256 = &p_1370->g_257;
                VECTOR(uint8_t, 8) l_258 = (VECTOR(uint8_t, 8))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 255UL), 255UL), 255UL, 250UL, 255UL);
                uint8_t *l_259 = &l_44;
                int i;
                for (i = 0; i < 3; i++)
                    l_78[i] = &p_1370->g_77;
                for (i = 0; i < 1; i++)
                    l_225[i] = 0xB429A651L;
                for (p_43 = 0; (p_43 <= 35); p_43 = safe_add_func_int64_t_s_s(p_43, 8))
                { /* block id: 23 */
                    int32_t l_219 = 0x1FC371ACL;
                    VECTOR(int16_t, 16) l_223 = (VECTOR(int16_t, 16))(0x4DD7L, (VECTOR(int16_t, 4))(0x4DD7L, (VECTOR(int16_t, 2))(0x4DD7L, 1L), 1L), 1L, 0x4DD7L, 1L, (VECTOR(int16_t, 2))(0x4DD7L, 1L), (VECTOR(int16_t, 2))(0x4DD7L, 1L), 0x4DD7L, 1L, 0x4DD7L, 1L);
                    int32_t l_229 = (-1L);
                    uint32_t *l_239 = &p_1370->g_171;
                    uint32_t **l_238 = &l_239;
                    int32_t **l_251 = &l_47[1];
                    int i;
                    if ((atomic_inc(&p_1370->l_atomic_input[1]) == 8))
                    { /* block id: 25 */
                        int64_t l_59 = 0x74F2D89188B9ABC1L;
                        VECTOR(int32_t, 8) l_60 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x3FA8B742L), 0x3FA8B742L), 0x3FA8B742L, 1L, 0x3FA8B742L);
                        VECTOR(int32_t, 16) l_61 = (VECTOR(int32_t, 16))(0x0C4B0538L, (VECTOR(int32_t, 4))(0x0C4B0538L, (VECTOR(int32_t, 2))(0x0C4B0538L, 0x232038BEL), 0x232038BEL), 0x232038BEL, 0x0C4B0538L, 0x232038BEL, (VECTOR(int32_t, 2))(0x0C4B0538L, 0x232038BEL), (VECTOR(int32_t, 2))(0x0C4B0538L, 0x232038BEL), 0x0C4B0538L, 0x232038BEL, 0x0C4B0538L, 0x232038BEL);
                        int32_t l_62 = 0x5EB447FDL;
                        int i;
                        l_59 = ((VECTOR(int32_t, 2))(6L, 0x70945772L)).hi;
                        l_62 = ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_60.s5635240273407625)))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x37E8F884L, (-5L))), 0L, 1L)).yyzxzyxwxzyxwyzy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_61.s40e81688)).s4255375337116604)).odd)).s3116340401447474))).sf427)))))).y;
                        unsigned int result = 0;
                        result += l_59;
                        result += l_60.s7;
                        result += l_60.s6;
                        result += l_60.s5;
                        result += l_60.s4;
                        result += l_60.s3;
                        result += l_60.s2;
                        result += l_60.s1;
                        result += l_60.s0;
                        result += l_61.sf;
                        result += l_61.se;
                        result += l_61.sd;
                        result += l_61.sc;
                        result += l_61.sb;
                        result += l_61.sa;
                        result += l_61.s9;
                        result += l_61.s8;
                        result += l_61.s7;
                        result += l_61.s6;
                        result += l_61.s5;
                        result += l_61.s4;
                        result += l_61.s3;
                        result += l_61.s2;
                        result += l_61.s1;
                        result += l_61.s0;
                        result += l_62;
                        atomic_add(&p_1370->l_special_values[1], result);
                    }
                    else
                    { /* block id: 28 */
                        (1 + 1);
                    }
                    for (l_48 = (-5); (l_48 != 29); l_48 = safe_add_func_int32_t_s_s(l_48, 1))
                    { /* block id: 33 */
                        int8_t **l_79 = (void*)0;
                        uint64_t **l_216 = (void*)0;
                        uint64_t **l_217 = (void*)0;
                        int32_t **l_220 = &l_47[0];
                        int32_t l_230 = 0x0029A200L;
                        l_230 ^= ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 16))(l_65.se288a3d85aa7f794)).odd, (int32_t)(safe_div_func_uint64_t_u_u(p_1370->g_comm_values[p_1370->tid], (safe_lshift_func_int8_t_s_s((l_219 = (l_70 != (l_218 = func_71(p_1370->g_76[0][4][5], &p_1370->g_2, (p_1370->g_80 = l_78[2]), &p_1370->g_10, p_1370)))), (l_229 = (l_220 != ((((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(l_223.sedf3)).xywxzzww, ((VECTOR(int16_t, 4))(l_224.sc694)).yzwxwxxw))).s54, ((VECTOR(int16_t, 2))(0x594CL, 7L))))), 1L, 0x669EL)), ((VECTOR(int16_t, 2))(0L, 1L)).xxxy))).w, (FAKE_DIVERGE(p_1370->group_2_offset, get_group_id(2), 10) | (l_225[0] ^ 255UL)))) | p_1370->g_2) > (-4L)) , p_1370->g_226)))))))))).s1;
                        if ((**p_1370->g_226))
                            continue;
                        if (p_43)
                            break;
                        p_1370->g_93[3][0] &= (**p_1370->g_226);
                    }
                    (*p_1370->g_227) = (((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 8))(l_231.xxyxyyxx)).s7704626317436454, ((VECTOR(uint32_t, 16))(p_1370->g_232.xwyxyxxzzwwwxzxz)), ((VECTOR(uint32_t, 2))(0UL, 0x8247C15EL)).xyxxxxxyyyxyyyxy))).sd27d, ((VECTOR(uint32_t, 4))(l_233.zyww))))).y | (((safe_sub_func_int32_t_s_s(p_1370->g_comm_values[p_1370->tid], (((safe_lshift_func_int8_t_s_s(((((*l_238) = l_47[0]) == (p_1370->g_240 = &p_1370->g_182)) , (safe_sub_func_int32_t_s_s((safe_sub_func_int8_t_s_s(l_245, ((*p_1370->g_80) = ((p_1370->g_comm_values[p_1370->tid] ^ (safe_sub_func_int32_t_s_s((safe_mul_func_int16_t_s_s(p_43, ((p_43 & p_43) , p_1370->g_206.y))), 0xE94AFA8BL))) ^ (-1L))))), FAKE_DIVERGE(p_1370->local_1_offset, get_local_id(1), 10)))), 1)) > 18446744073709551613UL) < p_43))) , 0x768C922AL) , 0x28FCB1DEL));
                    (*l_251) = l_250;
                }
                l_262[0] &= (((((p_1370->g_95 < (l_225[0] == ((VECTOR(int64_t, 16))(l_252.yxxxxxyxxyyyxxxy)).s3)) & (((p_43 != ((0L ^ p_1370->g_255) || ((void*)0 != l_256))) != ((*l_259) &= ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_258.s2140064630227532)).s98)), 0UL, 2UL)).x)) , FAKE_DIVERGE(p_1370->group_1_offset, get_group_id(1), 10))) | GROUP_DIVERGE(2, 1)) , (((safe_rshift_func_uint16_t_u_u(p_1370->g_182, p_1370->g_50[4])) <= l_225[0]) > (*l_250))) , (-4L));
                (*l_250) |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x435591C7L, 0x508DA7ADL)).yyxxxyyyyxxxxxyx)).s6;
            }
        }
    }
    else
    { /* block id: 104 */
        int32_t *l_264 = (void*)0;
        int32_t **l_263 = &l_264;
        l_49[4] = (((*l_263) = &p_1370->g_93[3][0]) != (void*)0);
        return p_43;
    }
    if ((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_267.s1426)).w, 1)))
    { /* block id: 109 */
        int32_t *l_269 = (void*)0;
        int32_t **l_268 = &l_269;
        (*l_268) = &l_49[4];
    }
    else
    { /* block id: 111 */
        int32_t *l_272[6];
        VECTOR(int64_t, 2) l_277 = (VECTOR(int64_t, 2))(0x3397EC06545ED4EAL, 0x4809408FA521C4E2L);
        VECTOR(int32_t, 4) l_289 = (VECTOR(int32_t, 4))(0x70CE5636L, (VECTOR(int32_t, 2))(0x70CE5636L, 1L), 1L);
        uint32_t *l_295 = (void*)0;
        uint32_t *l_296 = &p_1370->g_171;
        uint8_t *l_307[9];
        VECTOR(int8_t, 16) l_310 = (VECTOR(int8_t, 16))(0x0EL, (VECTOR(int8_t, 4))(0x0EL, (VECTOR(int8_t, 2))(0x0EL, (-1L)), (-1L)), (-1L), 0x0EL, (-1L), (VECTOR(int8_t, 2))(0x0EL, (-1L)), (VECTOR(int8_t, 2))(0x0EL, (-1L)), 0x0EL, (-1L), 0x0EL, (-1L));
        int i;
        for (i = 0; i < 6; i++)
            l_272[i] = (void*)0;
        for (i = 0; i < 9; i++)
            l_307[i] = &l_44;
        for (p_1370->g_95 = 23; (p_1370->g_95 < (-30)); p_1370->g_95 = safe_sub_func_int64_t_s_s(p_1370->g_95, 3))
        { /* block id: 114 */
            (**p_1370->g_226) = (l_49[1] = p_43);
        }
        --l_273[1][6];
        if (((l_49[5] &= ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(p_1370->g_276.s6056)).yxxwyzyx)).s5675671465130153)).s1) , ((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 2))(l_277.xx)).xxyxyyxyxxyyyxxx, (int64_t)(safe_sub_func_uint8_t_u_u(((((safe_sub_func_int16_t_s_s((safe_sub_func_int64_t_s_s((safe_mod_func_uint32_t_u_u(((*p_1370->g_240) = (safe_mul_func_int8_t_s_s(p_43, p_43))), (l_49[5] |= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_288.s27314554)), ((VECTOR(int32_t, 4))(l_289.wzyz)).zyxzwxzy, ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_290.xyxx)).zyyxxyxw)).hi)).even)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((safe_lshift_func_uint8_t_u_s((((safe_mul_func_int8_t_s_s(p_43, p_1370->g_50[4])) <= ((--(*l_296)) , p_1370->g_276.s4)) , (safe_div_func_int64_t_s_s((safe_mod_func_uint16_t_u_u(((((((safe_sub_func_int64_t_s_s(((p_1370->g_93[7][0] &= 0x30D3935DL) | ((safe_lshift_func_int16_t_s_s(((l_290.x = ((p_43 , ((((*p_1370->g_80) & (p_43 | 0xEF49D713L)) ^ (**p_1370->g_226)) >= 0x70L)) != 0UL)) <= p_43), 2)) , p_1370->g_95)), 0UL)) == p_1370->g_95) && (-1L)) , 0x44F45AB369420EEFL) , 4L) > p_43), p_1370->g_171)), p_43))), p_43)) ^ 0x3843443872AEA804L), l_288.s2, 0x615898BEL, 0x65FB0949L, ((VECTOR(int32_t, 2))(0x26D48073L)), 1L, ((VECTOR(int32_t, 2))(0x02B31B0EL)), 0x346D14A2L, 0x037137A1L, l_308, ((VECTOR(int32_t, 4))((-5L))))), ((VECTOR(int32_t, 16))(0x6B92531FL))))).s7, ((VECTOR(int32_t, 2))(6L)), p_43, (-8L), ((VECTOR(int32_t, 2))(0x2ECFEDACL)), 0x61E8777BL)).s47, ((VECTOR(int32_t, 2))(0x45C3173CL))))).yyyxyyyy))).s73)).even))), p_1370->g_98)), 0x3DC6L)) != p_1370->g_209.sb) > 0xB4L) | (*p_1370->g_80)), p_43))))).s7e, ((VECTOR(int64_t, 2))(0x58A76623546DA1C9L)), ((VECTOR(int64_t, 2))(0x2CC4F9482752BDE5L))))).yyxxxxyx)).s6 , p_43) | 0xC18CL)))
        { /* block id: 125 */
            return l_288.s5;
        }
        else
        { /* block id: 127 */
            (*p_1370->g_226) = (void*)0;
        }
        l_311--;
    }
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_1370->g_77 p_1370->g_50 p_1370->g_95 p_1370->g_98 p_1370->g_93 p_1370->g_88 p_1370->g_10 p_1370->g_83 p_1370->g_2 p_1370->l_comm_values p_1370->g_171 p_1370->g_206 p_1370->g_209
 * writes: p_1370->g_77 p_1370->g_83 p_1370->g_89 p_1370->g_93 p_1370->g_95 p_1370->g_98 p_1370->g_171 p_1370->g_182 p_1370->g_206 p_1370->g_209
 */
uint64_t * func_71(int8_t * p_72, int32_t * p_73, int8_t * p_74, uint64_t * p_75, struct S0 * p_1370)
{ /* block id: 35 */
    uint64_t l_101 = 0x8E81D84CB426AB79L;
    VECTOR(int32_t, 8) l_158 = (VECTOR(int32_t, 8))(0x2AB5F7C5L, (VECTOR(int32_t, 4))(0x2AB5F7C5L, (VECTOR(int32_t, 2))(0x2AB5F7C5L, 0x1AC30298L), 0x1AC30298L), 0x1AC30298L, 0x2AB5F7C5L, 0x1AC30298L);
    uint16_t l_159[8] = {65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL};
    uint8_t l_195 = 0xEAL;
    int32_t *l_198 = &p_1370->g_93[3][0];
    int32_t *l_199[4];
    int8_t l_201 = 0L;
    int32_t l_202[1][1];
    uint16_t l_203 = 0xDE36L;
    int16_t *l_207 = (void*)0;
    int16_t *l_208[1][9][1];
    VECTOR(int16_t, 8) l_212 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x2042L), 0x2042L), 0x2042L, 0L, 0x2042L);
    uint32_t *l_214[3];
    uint32_t **l_213 = &l_214[2];
    int32_t l_215 = 0x4C737DDAL;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_199[i] = (void*)0;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_202[i][j] = 0x1B02A3C4L;
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 1; k++)
                l_208[i][j][k] = (void*)0;
        }
    }
    for (i = 0; i < 3; i++)
        l_214[i] = &p_1370->g_182;
    for (p_1370->g_77 = 0; (p_1370->g_77 == (-27)); p_1370->g_77 = safe_sub_func_uint8_t_u_u(p_1370->g_77, 2))
    { /* block id: 38 */
        uint64_t l_125 = 0xCFC5172592CB3A56L;
        int64_t l_128[7][9] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}};
        int32_t l_133 = 0x2A38A8CDL;
        int32_t l_156 = 1L;
        VECTOR(int32_t, 4) l_157 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-9L)), (-9L));
        int32_t *l_185 = (void*)0;
        int32_t *l_186 = (void*)0;
        int32_t *l_187 = (void*)0;
        int32_t *l_188 = &p_1370->g_93[3][0];
        int32_t *l_189 = &p_1370->g_93[3][0];
        int32_t *l_190 = &p_1370->g_93[5][0];
        int32_t *l_191 = (void*)0;
        int32_t *l_192 = (void*)0;
        int32_t *l_193[7][1][3] = {{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}}};
        int16_t l_194 = 0x2621L;
        int i, j, k;
        for (p_1370->g_83 = 0; (p_1370->g_83 > 4); p_1370->g_83 = safe_add_func_uint16_t_u_u(p_1370->g_83, 7))
        { /* block id: 41 */
            uint64_t *l_123 = &l_101;
            int32_t l_127[8][3] = {{9L,(-1L),0L},{9L,(-1L),0L},{9L,(-1L),0L},{9L,(-1L),0L},{9L,(-1L),0L},{9L,(-1L),0L},{9L,(-1L),0L},{9L,(-1L),0L}};
            int i, j;
            for (p_1370->g_89 = 0; (p_1370->g_89 < 24); p_1370->g_89 = safe_add_func_int16_t_s_s(p_1370->g_89, 3))
            { /* block id: 44 */
                int32_t *l_92 = &p_1370->g_93[3][0];
                int32_t *l_94 = &p_1370->g_93[3][0];
                uint64_t *l_124 = &l_101;
                int16_t l_180 = 0x5126L;
                (*l_92) = p_1370->g_50[0];
                p_73 = l_94;
                for (p_1370->g_95 = (-2); (p_1370->g_95 <= (-6)); p_1370->g_95--)
                { /* block id: 49 */
                    uint64_t *l_107[4];
                    uint64_t **l_106[5][2][3] = {{{&l_107[1],&l_107[1],&l_107[1]},{&l_107[1],&l_107[1],&l_107[1]}},{{&l_107[1],&l_107[1],&l_107[1]},{&l_107[1],&l_107[1],&l_107[1]}},{{&l_107[1],&l_107[1],&l_107[1]},{&l_107[1],&l_107[1],&l_107[1]}},{{&l_107[1],&l_107[1],&l_107[1]},{&l_107[1],&l_107[1],&l_107[1]}},{{&l_107[1],&l_107[1],&l_107[1]},{&l_107[1],&l_107[1],&l_107[1]}}};
                    VECTOR(int16_t, 8) l_116 = (VECTOR(int16_t, 8))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 0L), 0L), 0L, 8L, 0L);
                    int32_t l_126 = (-1L);
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_107[i] = &p_1370->g_10;
                    for (p_1370->g_98 = 0; (p_1370->g_98 == (-19)); --p_1370->g_98)
                    { /* block id: 52 */
                        l_101 ^= (-1L);
                        return p_75;
                    }
                    if ((p_1370->g_93[4][0] , (((safe_mod_func_int32_t_s_s(p_1370->g_88, (p_1370->g_50[4] || ((((((((((safe_rshift_func_uint16_t_u_s((((VECTOR(int64_t, 8))(0x41872AF4091208AFL, ((p_75 = &p_1370->g_10) != ((safe_add_func_int32_t_s_s(((((((((((*p_74) || GROUP_DIVERGE(1, 1)) , (*l_92)) , ((((safe_add_func_uint32_t_u_u(3UL, (safe_rshift_func_uint16_t_u_s(((p_1370->g_98 ^= (+((((+((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_116.s25)).yxxx)).even, ((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 8))((0L >= (safe_add_func_int32_t_s_s((safe_sub_func_int32_t_s_s((~(safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 4))(0x50CFL, ((l_124 = l_123) != &p_1370->g_10), (-5L), (-3L))).y, GROUP_DIVERGE(1, 1)))), p_1370->g_10)), 4294967292UL))), ((VECTOR(int16_t, 2))(1L)), 1L, (-9L), ((VECTOR(int16_t, 2))(0x6A60L)), 0L)), (int16_t)l_125, (int16_t)0L))).s64))).hi, (*l_92))) != l_101)) >= l_126) ^ 0UL) <= l_101))) ^ p_1370->g_83), 15)))) != GROUP_DIVERGE(1, 1)) , &p_1370->g_76[0][4][5]) != &p_72)) > p_1370->g_93[1][0]) == l_125) == l_125) >= 9L) & p_1370->g_2) == 0x922C56DE09DF947BL), (*p_73))) , (void*)0)), l_127[3][1], 1L, (-1L), 8L, 0x13692C56C064F7A5L, 0x195449CDFC879DA9L)).s1 > l_101), 3)) < l_128[4][6]) & l_125) , (*p_73)) < l_127[3][1]) , 0x6432L) <= l_116.s4) , p_1370->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1370->tid, 76))]) || 0x2DA10ACF09C141FEL) >= l_125)))) <= p_1370->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1370->tid, 76))]) > 0x435EB154EA432D78L)))
                    { /* block id: 59 */
                        int32_t *l_129 = &p_1370->g_93[3][0];
                        int32_t *l_130 = &p_1370->g_93[3][0];
                        int32_t l_131 = 1L;
                        int32_t *l_132 = &p_1370->g_93[3][0];
                        int32_t *l_134 = &l_133;
                        int32_t *l_135 = &l_131;
                        int32_t *l_136 = (void*)0;
                        int32_t *l_137 = &l_127[1][2];
                        int32_t *l_138 = &l_131;
                        int32_t *l_139 = &p_1370->g_93[3][0];
                        int32_t *l_140 = (void*)0;
                        int32_t *l_141 = &l_131;
                        int32_t *l_142 = (void*)0;
                        int32_t *l_143 = &l_133;
                        int32_t *l_144 = &l_127[1][1];
                        int32_t *l_145 = &p_1370->g_93[3][0];
                        int32_t *l_146 = (void*)0;
                        int32_t *l_147 = &l_133;
                        int32_t *l_148 = &l_133;
                        int32_t *l_149 = (void*)0;
                        int32_t *l_150 = &l_131;
                        int32_t *l_151 = &l_133;
                        int32_t *l_152 = &p_1370->g_93[4][0];
                        int32_t *l_153 = &l_127[6][0];
                        int32_t *l_154 = &l_133;
                        int32_t *l_155[7];
                        uint32_t *l_170 = &p_1370->g_171;
                        VECTOR(uint8_t, 8) l_176 = (VECTOR(uint8_t, 8))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 0x78L), 0x78L), 0x78L, 253UL, 0x78L);
                        uint16_t *l_179 = &l_159[3];
                        uint32_t *l_181 = &p_1370->g_182;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_155[i] = &l_127[3][1];
                        ++l_159[6];
                        if (p_1370->g_50[4])
                            continue;
                        p_1370->g_98 |= ((safe_mul_func_uint8_t_u_u((((*l_181) = (((safe_mul_func_int16_t_s_s(l_101, l_157.w)) & (safe_lshift_func_int16_t_s_u(((!(l_127[6][1] > (safe_mul_func_int8_t_s_s((((*l_170)++) , (-7L)), (safe_mul_func_int8_t_s_s(l_116.s7, ((VECTOR(uint8_t, 8))(0x27L, ((VECTOR(uint8_t, 4))(l_176.s5175)), (safe_rshift_func_uint16_t_u_s(((*l_179) &= 0x407BL), 12)), 255UL, 0xDCL)).s0)))))) != l_116.s4), 10))) , (0x30L > l_180))) >= 0x14E0177BL), (*p_74))) == (-7L));
                    }
                    else
                    { /* block id: 66 */
                        volatile int32_t *l_184[2][6] = {{&p_1370->g_86,&p_1370->g_86,&p_1370->g_88,&p_1370->g_86,&p_1370->g_86,&p_1370->g_86},{&p_1370->g_86,&p_1370->g_86,&p_1370->g_88,&p_1370->g_86,&p_1370->g_86,&p_1370->g_86}};
                        volatile int32_t **l_183 = &l_184[1][2];
                        int i, j;
                        (*l_94) = (*p_73);
                        (*l_183) = &p_1370->g_87;
                        (*l_183) = (void*)0;
                        (*l_92) = 0x3D94EE24L;
                    }
                }
                (*p_73) = 0x541626ACL;
            }
        }
        l_195++;
    }
    l_158.s5 = l_158.s6;
    ++l_203;
    l_215 |= (((*l_213) = (((((p_1370->g_209.sf &= ((p_1370->g_206.x = ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(p_1370->g_206.xwywxyxxwwxxzwww)))).se) <= ((VECTOR(int16_t, 2))(0L, (-4L))).odd)) , (-1L)) ^ (safe_add_func_int16_t_s_s(p_1370->g_93[3][0], p_1370->g_83))) ^ ((VECTOR(int16_t, 8))(l_212.s01301203)).s7) , p_73)) == p_73);
    return p_75;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[41];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 41; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[41];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 41; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[76];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 76; i++)
            l_comm_values[i] = 1;
    struct S0 c_1371;
    struct S0* p_1370 = &c_1371;
    struct S0 c_1372 = {
        1L, // p_1370->g_2
        18446744073709551612UL, // p_1370->g_10
        (-2L), // p_1370->g_28
        {0UL,0UL,0UL,0UL,0UL}, // p_1370->g_50
        1L, // p_1370->g_77
        {{{(void*)0,&p_1370->g_77,(void*)0,(void*)0,&p_1370->g_77,(void*)0,(void*)0},{(void*)0,&p_1370->g_77,(void*)0,(void*)0,&p_1370->g_77,(void*)0,(void*)0},{(void*)0,&p_1370->g_77,(void*)0,(void*)0,&p_1370->g_77,(void*)0,(void*)0},{(void*)0,&p_1370->g_77,(void*)0,(void*)0,&p_1370->g_77,(void*)0,(void*)0},{(void*)0,&p_1370->g_77,(void*)0,(void*)0,&p_1370->g_77,(void*)0,(void*)0},{(void*)0,&p_1370->g_77,(void*)0,(void*)0,&p_1370->g_77,(void*)0,(void*)0},{(void*)0,&p_1370->g_77,(void*)0,(void*)0,&p_1370->g_77,(void*)0,(void*)0},{(void*)0,&p_1370->g_77,(void*)0,(void*)0,&p_1370->g_77,(void*)0,(void*)0},{(void*)0,&p_1370->g_77,(void*)0,(void*)0,&p_1370->g_77,(void*)0,(void*)0}}}, // p_1370->g_76
        &p_1370->g_77, // p_1370->g_80
        2L, // p_1370->g_83
        4L, // p_1370->g_86
        (-8L), // p_1370->g_87
        0L, // p_1370->g_88
        0x60D197A0L, // p_1370->g_89
        {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}}, // p_1370->g_93
        (-1L), // p_1370->g_95
        0x5501105CL, // p_1370->g_98
        0xE4D920E9L, // p_1370->g_171
        4294967295UL, // p_1370->g_182
        0x080C64B0L, // p_1370->g_200
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L), // p_1370->g_206
        (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x1C9DC24AL), 0x1C9DC24AL), 0x1C9DC24AL, 5L, 0x1C9DC24AL, (VECTOR(int32_t, 2))(5L, 0x1C9DC24AL), (VECTOR(int32_t, 2))(5L, 0x1C9DC24AL), 5L, 0x1C9DC24AL, 5L, 0x1C9DC24AL), // p_1370->g_209
        0x2665CAF6L, // p_1370->g_228
        &p_1370->g_228, // p_1370->g_227
        &p_1370->g_227, // p_1370->g_226
        (VECTOR(uint32_t, 4))(0xE87DCAFDL, (VECTOR(uint32_t, 2))(0xE87DCAFDL, 4294967292UL), 4294967292UL), // p_1370->g_232
        &p_1370->g_182, // p_1370->g_240
        0x196BDB23L, // p_1370->g_255
        0UL, // p_1370->g_257
        (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xD2B8BFFC5ACD0A6EL), 0xD2B8BFFC5ACD0A6EL), 0xD2B8BFFC5ACD0A6EL, 0UL, 0xD2B8BFFC5ACD0A6EL), // p_1370->g_276
        (VECTOR(uint8_t, 2))(252UL, 0x98L), // p_1370->g_319
        (void*)0, // p_1370->g_421
        (VECTOR(int32_t, 8))(0x77C4FEF0L, (VECTOR(int32_t, 4))(0x77C4FEF0L, (VECTOR(int32_t, 2))(0x77C4FEF0L, 6L), 6L), 6L, 0x77C4FEF0L, 6L), // p_1370->g_424
        (VECTOR(uint64_t, 2))(8UL, 18446744073709551611UL), // p_1370->g_435
        (VECTOR(uint64_t, 8))(0xA17E87573AF0072AL, (VECTOR(uint64_t, 4))(0xA17E87573AF0072AL, (VECTOR(uint64_t, 2))(0xA17E87573AF0072AL, 0x1BD1A7188E3E12FBL), 0x1BD1A7188E3E12FBL), 0x1BD1A7188E3E12FBL, 0xA17E87573AF0072AL, 0x1BD1A7188E3E12FBL), // p_1370->g_437
        (VECTOR(int8_t, 4))(0x63L, (VECTOR(int8_t, 2))(0x63L, 0x21L), 0x21L), // p_1370->g_446
        (VECTOR(uint64_t, 2))(0xD7396FE5B1079478L, 0x9E99D20BA9D0716EL), // p_1370->g_462
        (void*)0, // p_1370->g_473
        (VECTOR(uint16_t, 8))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0x9E15L), 0x9E15L), 0x9E15L, 65533UL, 0x9E15L), // p_1370->g_478
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1370->g_482
        (VECTOR(int32_t, 8))(0x4C883D79L, (VECTOR(int32_t, 4))(0x4C883D79L, (VECTOR(int32_t, 2))(0x4C883D79L, 9L), 9L), 9L, 0x4C883D79L, 9L), // p_1370->g_498
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 7L), 7L), 7L, 0L, 7L, (VECTOR(int8_t, 2))(0L, 7L), (VECTOR(int8_t, 2))(0L, 7L), 0L, 7L, 0L, 7L), // p_1370->g_525
        (VECTOR(int16_t, 8))(0x5420L, (VECTOR(int16_t, 4))(0x5420L, (VECTOR(int16_t, 2))(0x5420L, (-1L)), (-1L)), (-1L), 0x5420L, (-1L)), // p_1370->g_528
        (VECTOR(int64_t, 2))(0x2F40AB2102861F2CL, 0x0D86BC9A2D1634B7L), // p_1370->g_543
        0x39D3L, // p_1370->g_547
        (VECTOR(int32_t, 4))(0x59DE2C09L, (VECTOR(int32_t, 2))(0x59DE2C09L, 0x567F0AA3L), 0x567F0AA3L), // p_1370->g_551
        (VECTOR(uint64_t, 4))(0x0F480FE4BEA77911L, (VECTOR(uint64_t, 2))(0x0F480FE4BEA77911L, 6UL), 6UL), // p_1370->g_570
        &p_1370->g_473, // p_1370->g_603
        (VECTOR(uint8_t, 8))(0x13L, (VECTOR(uint8_t, 4))(0x13L, (VECTOR(uint8_t, 2))(0x13L, 5UL), 5UL), 5UL, 0x13L, 5UL), // p_1370->g_636
        0x59709F4612D6219AL, // p_1370->g_665
        0x50CA7B57L, // p_1370->g_692
        {{{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240}},{{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240}},{{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240}},{{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240}},{{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240}},{{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240}},{{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240}},{{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240}},{{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240},{&p_1370->g_240,&p_1370->g_240,&p_1370->g_240,&p_1370->g_240}}}, // p_1370->g_716
        &p_1370->g_716[3][1][2], // p_1370->g_715
        &p_1370->g_76[0][3][6], // p_1370->g_718
        (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0x2EC96B9BL), 0x2EC96B9BL), // p_1370->g_735
        (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0xB073F848L), 0xB073F848L), // p_1370->g_750
        (VECTOR(int8_t, 8))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), (-1L)), (-1L)), (-1L), (-10L), (-1L)), // p_1370->g_754
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x7B219A1E93ADCA70L), 0x7B219A1E93ADCA70L), 0x7B219A1E93ADCA70L, 1L, 0x7B219A1E93ADCA70L), // p_1370->g_755
        (VECTOR(int64_t, 16))(0x42C0A56370171A3CL, (VECTOR(int64_t, 4))(0x42C0A56370171A3CL, (VECTOR(int64_t, 2))(0x42C0A56370171A3CL, 3L), 3L), 3L, 0x42C0A56370171A3CL, 3L, (VECTOR(int64_t, 2))(0x42C0A56370171A3CL, 3L), (VECTOR(int64_t, 2))(0x42C0A56370171A3CL, 3L), 0x42C0A56370171A3CL, 3L, 0x42C0A56370171A3CL, 3L), // p_1370->g_756
        (VECTOR(int16_t, 2))(7L, 1L), // p_1370->g_804
        7UL, // p_1370->g_810
        (VECTOR(uint64_t, 16))(0x630A8AD6AC8ADC56L, (VECTOR(uint64_t, 4))(0x630A8AD6AC8ADC56L, (VECTOR(uint64_t, 2))(0x630A8AD6AC8ADC56L, 0x7A884E3048928D83L), 0x7A884E3048928D83L), 0x7A884E3048928D83L, 0x630A8AD6AC8ADC56L, 0x7A884E3048928D83L, (VECTOR(uint64_t, 2))(0x630A8AD6AC8ADC56L, 0x7A884E3048928D83L), (VECTOR(uint64_t, 2))(0x630A8AD6AC8ADC56L, 0x7A884E3048928D83L), 0x630A8AD6AC8ADC56L, 0x7A884E3048928D83L, 0x630A8AD6AC8ADC56L, 0x7A884E3048928D83L), // p_1370->g_828
        (-6L), // p_1370->g_834
        (VECTOR(int32_t, 2))(1L, 1L), // p_1370->g_836
        &p_1370->g_257, // p_1370->g_871
        &p_1370->g_871, // p_1370->g_870
        &p_1370->g_421, // p_1370->g_878
        (VECTOR(int64_t, 8))(0x639458A52041BCCFL, (VECTOR(int64_t, 4))(0x639458A52041BCCFL, (VECTOR(int64_t, 2))(0x639458A52041BCCFL, 0L), 0L), 0L, 0x639458A52041BCCFL, 0L), // p_1370->g_881
        (VECTOR(int64_t, 2))(0L, 0L), // p_1370->g_884
        (VECTOR(int64_t, 16))(0x0A75D1C2A5058C94L, (VECTOR(int64_t, 4))(0x0A75D1C2A5058C94L, (VECTOR(int64_t, 2))(0x0A75D1C2A5058C94L, 0x4E4CADC0BEA6ADAEL), 0x4E4CADC0BEA6ADAEL), 0x4E4CADC0BEA6ADAEL, 0x0A75D1C2A5058C94L, 0x4E4CADC0BEA6ADAEL, (VECTOR(int64_t, 2))(0x0A75D1C2A5058C94L, 0x4E4CADC0BEA6ADAEL), (VECTOR(int64_t, 2))(0x0A75D1C2A5058C94L, 0x4E4CADC0BEA6ADAEL), 0x0A75D1C2A5058C94L, 0x4E4CADC0BEA6ADAEL, 0x0A75D1C2A5058C94L, 0x4E4CADC0BEA6ADAEL), // p_1370->g_885
        (VECTOR(int64_t, 4))(0x65E410BFDBE7D41AL, (VECTOR(int64_t, 2))(0x65E410BFDBE7D41AL, 1L), 1L), // p_1370->g_886
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x5BL), 0x5BL), 0x5BL, 255UL, 0x5BL, (VECTOR(uint8_t, 2))(255UL, 0x5BL), (VECTOR(uint8_t, 2))(255UL, 0x5BL), 255UL, 0x5BL, 255UL, 0x5BL), // p_1370->g_890
        65535UL, // p_1370->g_906
        (VECTOR(uint64_t, 16))(0x4708C2955F040FAFL, (VECTOR(uint64_t, 4))(0x4708C2955F040FAFL, (VECTOR(uint64_t, 2))(0x4708C2955F040FAFL, 1UL), 1UL), 1UL, 0x4708C2955F040FAFL, 1UL, (VECTOR(uint64_t, 2))(0x4708C2955F040FAFL, 1UL), (VECTOR(uint64_t, 2))(0x4708C2955F040FAFL, 1UL), 0x4708C2955F040FAFL, 1UL, 0x4708C2955F040FAFL, 1UL), // p_1370->g_912
        &p_1370->g_692, // p_1370->g_929
        (void*)0, // p_1370->g_935
        (VECTOR(int64_t, 2))(1L, 0x1FB831B34D2B8984L), // p_1370->g_961
        &p_1370->g_421, // p_1370->g_996
        (VECTOR(int64_t, 2))(8L, 0x42AC03F69ADB6745L), // p_1370->g_1013
        (VECTOR(uint16_t, 16))(0x4E4FL, (VECTOR(uint16_t, 4))(0x4E4FL, (VECTOR(uint16_t, 2))(0x4E4FL, 0x1D8FL), 0x1D8FL), 0x1D8FL, 0x4E4FL, 0x1D8FL, (VECTOR(uint16_t, 2))(0x4E4FL, 0x1D8FL), (VECTOR(uint16_t, 2))(0x4E4FL, 0x1D8FL), 0x4E4FL, 0x1D8FL, 0x4E4FL, 0x1D8FL), // p_1370->g_1016
        (VECTOR(uint32_t, 8))(0xAD6BBE25L, (VECTOR(uint32_t, 4))(0xAD6BBE25L, (VECTOR(uint32_t, 2))(0xAD6BBE25L, 1UL), 1UL), 1UL, 0xAD6BBE25L, 1UL), // p_1370->g_1020
        (VECTOR(uint8_t, 8))(0xC1L, (VECTOR(uint8_t, 4))(0xC1L, (VECTOR(uint8_t, 2))(0xC1L, 0xD1L), 0xD1L), 0xD1L, 0xC1L, 0xD1L), // p_1370->g_1073
        (VECTOR(uint8_t, 8))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0UL), 0UL), 0UL, 250UL, 0UL), // p_1370->g_1074
        0x39C81C56D46F2D0FL, // p_1370->g_1085
        (VECTOR(int32_t, 4))(0x7565AFD6L, (VECTOR(int32_t, 2))(0x7565AFD6L, 0x77EB1E09L), 0x77EB1E09L), // p_1370->g_1092
        &p_1370->g_88, // p_1370->g_1098
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x0CDF70CF7C509EA3L), 0x0CDF70CF7C509EA3L), 0x0CDF70CF7C509EA3L, 0L, 0x0CDF70CF7C509EA3L, (VECTOR(int64_t, 2))(0L, 0x0CDF70CF7C509EA3L), (VECTOR(int64_t, 2))(0L, 0x0CDF70CF7C509EA3L), 0L, 0x0CDF70CF7C509EA3L, 0L, 0x0CDF70CF7C509EA3L), // p_1370->g_1111
        0UL, // p_1370->g_1129
        (VECTOR(uint32_t, 4))(0xF4EA83EFL, (VECTOR(uint32_t, 2))(0xF4EA83EFL, 0UL), 0UL), // p_1370->g_1154
        (VECTOR(uint64_t, 16))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0xB09E25C8FDE4E587L), 0xB09E25C8FDE4E587L), 0xB09E25C8FDE4E587L, 18446744073709551609UL, 0xB09E25C8FDE4E587L, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0xB09E25C8FDE4E587L), (VECTOR(uint64_t, 2))(18446744073709551609UL, 0xB09E25C8FDE4E587L), 18446744073709551609UL, 0xB09E25C8FDE4E587L, 18446744073709551609UL, 0xB09E25C8FDE4E587L), // p_1370->g_1185
        (VECTOR(int32_t, 4))(0x185B4599L, (VECTOR(int32_t, 2))(0x185B4599L, (-1L)), (-1L)), // p_1370->g_1188
        (VECTOR(uint8_t, 16))(0x75L, (VECTOR(uint8_t, 4))(0x75L, (VECTOR(uint8_t, 2))(0x75L, 250UL), 250UL), 250UL, 0x75L, 250UL, (VECTOR(uint8_t, 2))(0x75L, 250UL), (VECTOR(uint8_t, 2))(0x75L, 250UL), 0x75L, 250UL, 0x75L, 250UL), // p_1370->g_1192
        {1L,1L,1L,1L,1L,1L,1L,1L}, // p_1370->g_1195
        0x19L, // p_1370->g_1200
        (void*)0, // p_1370->g_1220
        &p_1370->g_1220, // p_1370->g_1219
        &p_1370->g_1085, // p_1370->g_1320
        (VECTOR(int16_t, 2))(0x09C1L, 0x443EL), // p_1370->g_1354
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1370->g_1363
        0x23DCB757A4EE9580L, // p_1370->g_1364
        &p_1370->g_421, // p_1370->g_1368
        0, // p_1370->v_collective
        sequence_input[get_global_id(0)], // p_1370->global_0_offset
        sequence_input[get_global_id(1)], // p_1370->global_1_offset
        sequence_input[get_global_id(2)], // p_1370->global_2_offset
        sequence_input[get_local_id(0)], // p_1370->local_0_offset
        sequence_input[get_local_id(1)], // p_1370->local_1_offset
        sequence_input[get_local_id(2)], // p_1370->local_2_offset
        sequence_input[get_group_id(0)], // p_1370->group_0_offset
        sequence_input[get_group_id(1)], // p_1370->group_1_offset
        sequence_input[get_group_id(2)], // p_1370->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 76)), permutations[0][get_linear_local_id()])), // p_1370->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1371 = c_1372;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1370);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1370->g_2, "p_1370->g_2", print_hash_value);
    transparent_crc(p_1370->g_10, "p_1370->g_10", print_hash_value);
    transparent_crc(p_1370->g_28, "p_1370->g_28", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1370->g_50[i], "p_1370->g_50[i]", print_hash_value);

    }
    transparent_crc(p_1370->g_77, "p_1370->g_77", print_hash_value);
    transparent_crc(p_1370->g_83, "p_1370->g_83", print_hash_value);
    transparent_crc(p_1370->g_86, "p_1370->g_86", print_hash_value);
    transparent_crc(p_1370->g_87, "p_1370->g_87", print_hash_value);
    transparent_crc(p_1370->g_88, "p_1370->g_88", print_hash_value);
    transparent_crc(p_1370->g_89, "p_1370->g_89", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1370->g_93[i][j], "p_1370->g_93[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1370->g_95, "p_1370->g_95", print_hash_value);
    transparent_crc(p_1370->g_98, "p_1370->g_98", print_hash_value);
    transparent_crc(p_1370->g_171, "p_1370->g_171", print_hash_value);
    transparent_crc(p_1370->g_182, "p_1370->g_182", print_hash_value);
    transparent_crc(p_1370->g_200, "p_1370->g_200", print_hash_value);
    transparent_crc(p_1370->g_206.x, "p_1370->g_206.x", print_hash_value);
    transparent_crc(p_1370->g_206.y, "p_1370->g_206.y", print_hash_value);
    transparent_crc(p_1370->g_206.z, "p_1370->g_206.z", print_hash_value);
    transparent_crc(p_1370->g_206.w, "p_1370->g_206.w", print_hash_value);
    transparent_crc(p_1370->g_209.s0, "p_1370->g_209.s0", print_hash_value);
    transparent_crc(p_1370->g_209.s1, "p_1370->g_209.s1", print_hash_value);
    transparent_crc(p_1370->g_209.s2, "p_1370->g_209.s2", print_hash_value);
    transparent_crc(p_1370->g_209.s3, "p_1370->g_209.s3", print_hash_value);
    transparent_crc(p_1370->g_209.s4, "p_1370->g_209.s4", print_hash_value);
    transparent_crc(p_1370->g_209.s5, "p_1370->g_209.s5", print_hash_value);
    transparent_crc(p_1370->g_209.s6, "p_1370->g_209.s6", print_hash_value);
    transparent_crc(p_1370->g_209.s7, "p_1370->g_209.s7", print_hash_value);
    transparent_crc(p_1370->g_209.s8, "p_1370->g_209.s8", print_hash_value);
    transparent_crc(p_1370->g_209.s9, "p_1370->g_209.s9", print_hash_value);
    transparent_crc(p_1370->g_209.sa, "p_1370->g_209.sa", print_hash_value);
    transparent_crc(p_1370->g_209.sb, "p_1370->g_209.sb", print_hash_value);
    transparent_crc(p_1370->g_209.sc, "p_1370->g_209.sc", print_hash_value);
    transparent_crc(p_1370->g_209.sd, "p_1370->g_209.sd", print_hash_value);
    transparent_crc(p_1370->g_209.se, "p_1370->g_209.se", print_hash_value);
    transparent_crc(p_1370->g_209.sf, "p_1370->g_209.sf", print_hash_value);
    transparent_crc(p_1370->g_228, "p_1370->g_228", print_hash_value);
    transparent_crc(p_1370->g_232.x, "p_1370->g_232.x", print_hash_value);
    transparent_crc(p_1370->g_232.y, "p_1370->g_232.y", print_hash_value);
    transparent_crc(p_1370->g_232.z, "p_1370->g_232.z", print_hash_value);
    transparent_crc(p_1370->g_232.w, "p_1370->g_232.w", print_hash_value);
    transparent_crc(p_1370->g_255, "p_1370->g_255", print_hash_value);
    transparent_crc(p_1370->g_257, "p_1370->g_257", print_hash_value);
    transparent_crc(p_1370->g_276.s0, "p_1370->g_276.s0", print_hash_value);
    transparent_crc(p_1370->g_276.s1, "p_1370->g_276.s1", print_hash_value);
    transparent_crc(p_1370->g_276.s2, "p_1370->g_276.s2", print_hash_value);
    transparent_crc(p_1370->g_276.s3, "p_1370->g_276.s3", print_hash_value);
    transparent_crc(p_1370->g_276.s4, "p_1370->g_276.s4", print_hash_value);
    transparent_crc(p_1370->g_276.s5, "p_1370->g_276.s5", print_hash_value);
    transparent_crc(p_1370->g_276.s6, "p_1370->g_276.s6", print_hash_value);
    transparent_crc(p_1370->g_276.s7, "p_1370->g_276.s7", print_hash_value);
    transparent_crc(p_1370->g_319.x, "p_1370->g_319.x", print_hash_value);
    transparent_crc(p_1370->g_319.y, "p_1370->g_319.y", print_hash_value);
    transparent_crc(p_1370->g_424.s0, "p_1370->g_424.s0", print_hash_value);
    transparent_crc(p_1370->g_424.s1, "p_1370->g_424.s1", print_hash_value);
    transparent_crc(p_1370->g_424.s2, "p_1370->g_424.s2", print_hash_value);
    transparent_crc(p_1370->g_424.s3, "p_1370->g_424.s3", print_hash_value);
    transparent_crc(p_1370->g_424.s4, "p_1370->g_424.s4", print_hash_value);
    transparent_crc(p_1370->g_424.s5, "p_1370->g_424.s5", print_hash_value);
    transparent_crc(p_1370->g_424.s6, "p_1370->g_424.s6", print_hash_value);
    transparent_crc(p_1370->g_424.s7, "p_1370->g_424.s7", print_hash_value);
    transparent_crc(p_1370->g_435.x, "p_1370->g_435.x", print_hash_value);
    transparent_crc(p_1370->g_435.y, "p_1370->g_435.y", print_hash_value);
    transparent_crc(p_1370->g_437.s0, "p_1370->g_437.s0", print_hash_value);
    transparent_crc(p_1370->g_437.s1, "p_1370->g_437.s1", print_hash_value);
    transparent_crc(p_1370->g_437.s2, "p_1370->g_437.s2", print_hash_value);
    transparent_crc(p_1370->g_437.s3, "p_1370->g_437.s3", print_hash_value);
    transparent_crc(p_1370->g_437.s4, "p_1370->g_437.s4", print_hash_value);
    transparent_crc(p_1370->g_437.s5, "p_1370->g_437.s5", print_hash_value);
    transparent_crc(p_1370->g_437.s6, "p_1370->g_437.s6", print_hash_value);
    transparent_crc(p_1370->g_437.s7, "p_1370->g_437.s7", print_hash_value);
    transparent_crc(p_1370->g_446.x, "p_1370->g_446.x", print_hash_value);
    transparent_crc(p_1370->g_446.y, "p_1370->g_446.y", print_hash_value);
    transparent_crc(p_1370->g_446.z, "p_1370->g_446.z", print_hash_value);
    transparent_crc(p_1370->g_446.w, "p_1370->g_446.w", print_hash_value);
    transparent_crc(p_1370->g_462.x, "p_1370->g_462.x", print_hash_value);
    transparent_crc(p_1370->g_462.y, "p_1370->g_462.y", print_hash_value);
    transparent_crc(p_1370->g_478.s0, "p_1370->g_478.s0", print_hash_value);
    transparent_crc(p_1370->g_478.s1, "p_1370->g_478.s1", print_hash_value);
    transparent_crc(p_1370->g_478.s2, "p_1370->g_478.s2", print_hash_value);
    transparent_crc(p_1370->g_478.s3, "p_1370->g_478.s3", print_hash_value);
    transparent_crc(p_1370->g_478.s4, "p_1370->g_478.s4", print_hash_value);
    transparent_crc(p_1370->g_478.s5, "p_1370->g_478.s5", print_hash_value);
    transparent_crc(p_1370->g_478.s6, "p_1370->g_478.s6", print_hash_value);
    transparent_crc(p_1370->g_478.s7, "p_1370->g_478.s7", print_hash_value);
    transparent_crc(p_1370->g_498.s0, "p_1370->g_498.s0", print_hash_value);
    transparent_crc(p_1370->g_498.s1, "p_1370->g_498.s1", print_hash_value);
    transparent_crc(p_1370->g_498.s2, "p_1370->g_498.s2", print_hash_value);
    transparent_crc(p_1370->g_498.s3, "p_1370->g_498.s3", print_hash_value);
    transparent_crc(p_1370->g_498.s4, "p_1370->g_498.s4", print_hash_value);
    transparent_crc(p_1370->g_498.s5, "p_1370->g_498.s5", print_hash_value);
    transparent_crc(p_1370->g_498.s6, "p_1370->g_498.s6", print_hash_value);
    transparent_crc(p_1370->g_498.s7, "p_1370->g_498.s7", print_hash_value);
    transparent_crc(p_1370->g_525.s0, "p_1370->g_525.s0", print_hash_value);
    transparent_crc(p_1370->g_525.s1, "p_1370->g_525.s1", print_hash_value);
    transparent_crc(p_1370->g_525.s2, "p_1370->g_525.s2", print_hash_value);
    transparent_crc(p_1370->g_525.s3, "p_1370->g_525.s3", print_hash_value);
    transparent_crc(p_1370->g_525.s4, "p_1370->g_525.s4", print_hash_value);
    transparent_crc(p_1370->g_525.s5, "p_1370->g_525.s5", print_hash_value);
    transparent_crc(p_1370->g_525.s6, "p_1370->g_525.s6", print_hash_value);
    transparent_crc(p_1370->g_525.s7, "p_1370->g_525.s7", print_hash_value);
    transparent_crc(p_1370->g_525.s8, "p_1370->g_525.s8", print_hash_value);
    transparent_crc(p_1370->g_525.s9, "p_1370->g_525.s9", print_hash_value);
    transparent_crc(p_1370->g_525.sa, "p_1370->g_525.sa", print_hash_value);
    transparent_crc(p_1370->g_525.sb, "p_1370->g_525.sb", print_hash_value);
    transparent_crc(p_1370->g_525.sc, "p_1370->g_525.sc", print_hash_value);
    transparent_crc(p_1370->g_525.sd, "p_1370->g_525.sd", print_hash_value);
    transparent_crc(p_1370->g_525.se, "p_1370->g_525.se", print_hash_value);
    transparent_crc(p_1370->g_525.sf, "p_1370->g_525.sf", print_hash_value);
    transparent_crc(p_1370->g_528.s0, "p_1370->g_528.s0", print_hash_value);
    transparent_crc(p_1370->g_528.s1, "p_1370->g_528.s1", print_hash_value);
    transparent_crc(p_1370->g_528.s2, "p_1370->g_528.s2", print_hash_value);
    transparent_crc(p_1370->g_528.s3, "p_1370->g_528.s3", print_hash_value);
    transparent_crc(p_1370->g_528.s4, "p_1370->g_528.s4", print_hash_value);
    transparent_crc(p_1370->g_528.s5, "p_1370->g_528.s5", print_hash_value);
    transparent_crc(p_1370->g_528.s6, "p_1370->g_528.s6", print_hash_value);
    transparent_crc(p_1370->g_528.s7, "p_1370->g_528.s7", print_hash_value);
    transparent_crc(p_1370->g_543.x, "p_1370->g_543.x", print_hash_value);
    transparent_crc(p_1370->g_543.y, "p_1370->g_543.y", print_hash_value);
    transparent_crc(p_1370->g_547, "p_1370->g_547", print_hash_value);
    transparent_crc(p_1370->g_551.x, "p_1370->g_551.x", print_hash_value);
    transparent_crc(p_1370->g_551.y, "p_1370->g_551.y", print_hash_value);
    transparent_crc(p_1370->g_551.z, "p_1370->g_551.z", print_hash_value);
    transparent_crc(p_1370->g_551.w, "p_1370->g_551.w", print_hash_value);
    transparent_crc(p_1370->g_570.x, "p_1370->g_570.x", print_hash_value);
    transparent_crc(p_1370->g_570.y, "p_1370->g_570.y", print_hash_value);
    transparent_crc(p_1370->g_570.z, "p_1370->g_570.z", print_hash_value);
    transparent_crc(p_1370->g_570.w, "p_1370->g_570.w", print_hash_value);
    transparent_crc(p_1370->g_636.s0, "p_1370->g_636.s0", print_hash_value);
    transparent_crc(p_1370->g_636.s1, "p_1370->g_636.s1", print_hash_value);
    transparent_crc(p_1370->g_636.s2, "p_1370->g_636.s2", print_hash_value);
    transparent_crc(p_1370->g_636.s3, "p_1370->g_636.s3", print_hash_value);
    transparent_crc(p_1370->g_636.s4, "p_1370->g_636.s4", print_hash_value);
    transparent_crc(p_1370->g_636.s5, "p_1370->g_636.s5", print_hash_value);
    transparent_crc(p_1370->g_636.s6, "p_1370->g_636.s6", print_hash_value);
    transparent_crc(p_1370->g_636.s7, "p_1370->g_636.s7", print_hash_value);
    transparent_crc(p_1370->g_665, "p_1370->g_665", print_hash_value);
    transparent_crc(p_1370->g_692, "p_1370->g_692", print_hash_value);
    transparent_crc(p_1370->g_735.x, "p_1370->g_735.x", print_hash_value);
    transparent_crc(p_1370->g_735.y, "p_1370->g_735.y", print_hash_value);
    transparent_crc(p_1370->g_735.z, "p_1370->g_735.z", print_hash_value);
    transparent_crc(p_1370->g_735.w, "p_1370->g_735.w", print_hash_value);
    transparent_crc(p_1370->g_750.x, "p_1370->g_750.x", print_hash_value);
    transparent_crc(p_1370->g_750.y, "p_1370->g_750.y", print_hash_value);
    transparent_crc(p_1370->g_750.z, "p_1370->g_750.z", print_hash_value);
    transparent_crc(p_1370->g_750.w, "p_1370->g_750.w", print_hash_value);
    transparent_crc(p_1370->g_754.s0, "p_1370->g_754.s0", print_hash_value);
    transparent_crc(p_1370->g_754.s1, "p_1370->g_754.s1", print_hash_value);
    transparent_crc(p_1370->g_754.s2, "p_1370->g_754.s2", print_hash_value);
    transparent_crc(p_1370->g_754.s3, "p_1370->g_754.s3", print_hash_value);
    transparent_crc(p_1370->g_754.s4, "p_1370->g_754.s4", print_hash_value);
    transparent_crc(p_1370->g_754.s5, "p_1370->g_754.s5", print_hash_value);
    transparent_crc(p_1370->g_754.s6, "p_1370->g_754.s6", print_hash_value);
    transparent_crc(p_1370->g_754.s7, "p_1370->g_754.s7", print_hash_value);
    transparent_crc(p_1370->g_755.s0, "p_1370->g_755.s0", print_hash_value);
    transparent_crc(p_1370->g_755.s1, "p_1370->g_755.s1", print_hash_value);
    transparent_crc(p_1370->g_755.s2, "p_1370->g_755.s2", print_hash_value);
    transparent_crc(p_1370->g_755.s3, "p_1370->g_755.s3", print_hash_value);
    transparent_crc(p_1370->g_755.s4, "p_1370->g_755.s4", print_hash_value);
    transparent_crc(p_1370->g_755.s5, "p_1370->g_755.s5", print_hash_value);
    transparent_crc(p_1370->g_755.s6, "p_1370->g_755.s6", print_hash_value);
    transparent_crc(p_1370->g_755.s7, "p_1370->g_755.s7", print_hash_value);
    transparent_crc(p_1370->g_756.s0, "p_1370->g_756.s0", print_hash_value);
    transparent_crc(p_1370->g_756.s1, "p_1370->g_756.s1", print_hash_value);
    transparent_crc(p_1370->g_756.s2, "p_1370->g_756.s2", print_hash_value);
    transparent_crc(p_1370->g_756.s3, "p_1370->g_756.s3", print_hash_value);
    transparent_crc(p_1370->g_756.s4, "p_1370->g_756.s4", print_hash_value);
    transparent_crc(p_1370->g_756.s5, "p_1370->g_756.s5", print_hash_value);
    transparent_crc(p_1370->g_756.s6, "p_1370->g_756.s6", print_hash_value);
    transparent_crc(p_1370->g_756.s7, "p_1370->g_756.s7", print_hash_value);
    transparent_crc(p_1370->g_756.s8, "p_1370->g_756.s8", print_hash_value);
    transparent_crc(p_1370->g_756.s9, "p_1370->g_756.s9", print_hash_value);
    transparent_crc(p_1370->g_756.sa, "p_1370->g_756.sa", print_hash_value);
    transparent_crc(p_1370->g_756.sb, "p_1370->g_756.sb", print_hash_value);
    transparent_crc(p_1370->g_756.sc, "p_1370->g_756.sc", print_hash_value);
    transparent_crc(p_1370->g_756.sd, "p_1370->g_756.sd", print_hash_value);
    transparent_crc(p_1370->g_756.se, "p_1370->g_756.se", print_hash_value);
    transparent_crc(p_1370->g_756.sf, "p_1370->g_756.sf", print_hash_value);
    transparent_crc(p_1370->g_804.x, "p_1370->g_804.x", print_hash_value);
    transparent_crc(p_1370->g_804.y, "p_1370->g_804.y", print_hash_value);
    transparent_crc(p_1370->g_810, "p_1370->g_810", print_hash_value);
    transparent_crc(p_1370->g_828.s0, "p_1370->g_828.s0", print_hash_value);
    transparent_crc(p_1370->g_828.s1, "p_1370->g_828.s1", print_hash_value);
    transparent_crc(p_1370->g_828.s2, "p_1370->g_828.s2", print_hash_value);
    transparent_crc(p_1370->g_828.s3, "p_1370->g_828.s3", print_hash_value);
    transparent_crc(p_1370->g_828.s4, "p_1370->g_828.s4", print_hash_value);
    transparent_crc(p_1370->g_828.s5, "p_1370->g_828.s5", print_hash_value);
    transparent_crc(p_1370->g_828.s6, "p_1370->g_828.s6", print_hash_value);
    transparent_crc(p_1370->g_828.s7, "p_1370->g_828.s7", print_hash_value);
    transparent_crc(p_1370->g_828.s8, "p_1370->g_828.s8", print_hash_value);
    transparent_crc(p_1370->g_828.s9, "p_1370->g_828.s9", print_hash_value);
    transparent_crc(p_1370->g_828.sa, "p_1370->g_828.sa", print_hash_value);
    transparent_crc(p_1370->g_828.sb, "p_1370->g_828.sb", print_hash_value);
    transparent_crc(p_1370->g_828.sc, "p_1370->g_828.sc", print_hash_value);
    transparent_crc(p_1370->g_828.sd, "p_1370->g_828.sd", print_hash_value);
    transparent_crc(p_1370->g_828.se, "p_1370->g_828.se", print_hash_value);
    transparent_crc(p_1370->g_828.sf, "p_1370->g_828.sf", print_hash_value);
    transparent_crc(p_1370->g_834, "p_1370->g_834", print_hash_value);
    transparent_crc(p_1370->g_836.x, "p_1370->g_836.x", print_hash_value);
    transparent_crc(p_1370->g_836.y, "p_1370->g_836.y", print_hash_value);
    transparent_crc(p_1370->g_881.s0, "p_1370->g_881.s0", print_hash_value);
    transparent_crc(p_1370->g_881.s1, "p_1370->g_881.s1", print_hash_value);
    transparent_crc(p_1370->g_881.s2, "p_1370->g_881.s2", print_hash_value);
    transparent_crc(p_1370->g_881.s3, "p_1370->g_881.s3", print_hash_value);
    transparent_crc(p_1370->g_881.s4, "p_1370->g_881.s4", print_hash_value);
    transparent_crc(p_1370->g_881.s5, "p_1370->g_881.s5", print_hash_value);
    transparent_crc(p_1370->g_881.s6, "p_1370->g_881.s6", print_hash_value);
    transparent_crc(p_1370->g_881.s7, "p_1370->g_881.s7", print_hash_value);
    transparent_crc(p_1370->g_884.x, "p_1370->g_884.x", print_hash_value);
    transparent_crc(p_1370->g_884.y, "p_1370->g_884.y", print_hash_value);
    transparent_crc(p_1370->g_885.s0, "p_1370->g_885.s0", print_hash_value);
    transparent_crc(p_1370->g_885.s1, "p_1370->g_885.s1", print_hash_value);
    transparent_crc(p_1370->g_885.s2, "p_1370->g_885.s2", print_hash_value);
    transparent_crc(p_1370->g_885.s3, "p_1370->g_885.s3", print_hash_value);
    transparent_crc(p_1370->g_885.s4, "p_1370->g_885.s4", print_hash_value);
    transparent_crc(p_1370->g_885.s5, "p_1370->g_885.s5", print_hash_value);
    transparent_crc(p_1370->g_885.s6, "p_1370->g_885.s6", print_hash_value);
    transparent_crc(p_1370->g_885.s7, "p_1370->g_885.s7", print_hash_value);
    transparent_crc(p_1370->g_885.s8, "p_1370->g_885.s8", print_hash_value);
    transparent_crc(p_1370->g_885.s9, "p_1370->g_885.s9", print_hash_value);
    transparent_crc(p_1370->g_885.sa, "p_1370->g_885.sa", print_hash_value);
    transparent_crc(p_1370->g_885.sb, "p_1370->g_885.sb", print_hash_value);
    transparent_crc(p_1370->g_885.sc, "p_1370->g_885.sc", print_hash_value);
    transparent_crc(p_1370->g_885.sd, "p_1370->g_885.sd", print_hash_value);
    transparent_crc(p_1370->g_885.se, "p_1370->g_885.se", print_hash_value);
    transparent_crc(p_1370->g_885.sf, "p_1370->g_885.sf", print_hash_value);
    transparent_crc(p_1370->g_886.x, "p_1370->g_886.x", print_hash_value);
    transparent_crc(p_1370->g_886.y, "p_1370->g_886.y", print_hash_value);
    transparent_crc(p_1370->g_886.z, "p_1370->g_886.z", print_hash_value);
    transparent_crc(p_1370->g_886.w, "p_1370->g_886.w", print_hash_value);
    transparent_crc(p_1370->g_890.s0, "p_1370->g_890.s0", print_hash_value);
    transparent_crc(p_1370->g_890.s1, "p_1370->g_890.s1", print_hash_value);
    transparent_crc(p_1370->g_890.s2, "p_1370->g_890.s2", print_hash_value);
    transparent_crc(p_1370->g_890.s3, "p_1370->g_890.s3", print_hash_value);
    transparent_crc(p_1370->g_890.s4, "p_1370->g_890.s4", print_hash_value);
    transparent_crc(p_1370->g_890.s5, "p_1370->g_890.s5", print_hash_value);
    transparent_crc(p_1370->g_890.s6, "p_1370->g_890.s6", print_hash_value);
    transparent_crc(p_1370->g_890.s7, "p_1370->g_890.s7", print_hash_value);
    transparent_crc(p_1370->g_890.s8, "p_1370->g_890.s8", print_hash_value);
    transparent_crc(p_1370->g_890.s9, "p_1370->g_890.s9", print_hash_value);
    transparent_crc(p_1370->g_890.sa, "p_1370->g_890.sa", print_hash_value);
    transparent_crc(p_1370->g_890.sb, "p_1370->g_890.sb", print_hash_value);
    transparent_crc(p_1370->g_890.sc, "p_1370->g_890.sc", print_hash_value);
    transparent_crc(p_1370->g_890.sd, "p_1370->g_890.sd", print_hash_value);
    transparent_crc(p_1370->g_890.se, "p_1370->g_890.se", print_hash_value);
    transparent_crc(p_1370->g_890.sf, "p_1370->g_890.sf", print_hash_value);
    transparent_crc(p_1370->g_906, "p_1370->g_906", print_hash_value);
    transparent_crc(p_1370->g_912.s0, "p_1370->g_912.s0", print_hash_value);
    transparent_crc(p_1370->g_912.s1, "p_1370->g_912.s1", print_hash_value);
    transparent_crc(p_1370->g_912.s2, "p_1370->g_912.s2", print_hash_value);
    transparent_crc(p_1370->g_912.s3, "p_1370->g_912.s3", print_hash_value);
    transparent_crc(p_1370->g_912.s4, "p_1370->g_912.s4", print_hash_value);
    transparent_crc(p_1370->g_912.s5, "p_1370->g_912.s5", print_hash_value);
    transparent_crc(p_1370->g_912.s6, "p_1370->g_912.s6", print_hash_value);
    transparent_crc(p_1370->g_912.s7, "p_1370->g_912.s7", print_hash_value);
    transparent_crc(p_1370->g_912.s8, "p_1370->g_912.s8", print_hash_value);
    transparent_crc(p_1370->g_912.s9, "p_1370->g_912.s9", print_hash_value);
    transparent_crc(p_1370->g_912.sa, "p_1370->g_912.sa", print_hash_value);
    transparent_crc(p_1370->g_912.sb, "p_1370->g_912.sb", print_hash_value);
    transparent_crc(p_1370->g_912.sc, "p_1370->g_912.sc", print_hash_value);
    transparent_crc(p_1370->g_912.sd, "p_1370->g_912.sd", print_hash_value);
    transparent_crc(p_1370->g_912.se, "p_1370->g_912.se", print_hash_value);
    transparent_crc(p_1370->g_912.sf, "p_1370->g_912.sf", print_hash_value);
    transparent_crc(p_1370->g_961.x, "p_1370->g_961.x", print_hash_value);
    transparent_crc(p_1370->g_961.y, "p_1370->g_961.y", print_hash_value);
    transparent_crc(p_1370->g_1013.x, "p_1370->g_1013.x", print_hash_value);
    transparent_crc(p_1370->g_1013.y, "p_1370->g_1013.y", print_hash_value);
    transparent_crc(p_1370->g_1016.s0, "p_1370->g_1016.s0", print_hash_value);
    transparent_crc(p_1370->g_1016.s1, "p_1370->g_1016.s1", print_hash_value);
    transparent_crc(p_1370->g_1016.s2, "p_1370->g_1016.s2", print_hash_value);
    transparent_crc(p_1370->g_1016.s3, "p_1370->g_1016.s3", print_hash_value);
    transparent_crc(p_1370->g_1016.s4, "p_1370->g_1016.s4", print_hash_value);
    transparent_crc(p_1370->g_1016.s5, "p_1370->g_1016.s5", print_hash_value);
    transparent_crc(p_1370->g_1016.s6, "p_1370->g_1016.s6", print_hash_value);
    transparent_crc(p_1370->g_1016.s7, "p_1370->g_1016.s7", print_hash_value);
    transparent_crc(p_1370->g_1016.s8, "p_1370->g_1016.s8", print_hash_value);
    transparent_crc(p_1370->g_1016.s9, "p_1370->g_1016.s9", print_hash_value);
    transparent_crc(p_1370->g_1016.sa, "p_1370->g_1016.sa", print_hash_value);
    transparent_crc(p_1370->g_1016.sb, "p_1370->g_1016.sb", print_hash_value);
    transparent_crc(p_1370->g_1016.sc, "p_1370->g_1016.sc", print_hash_value);
    transparent_crc(p_1370->g_1016.sd, "p_1370->g_1016.sd", print_hash_value);
    transparent_crc(p_1370->g_1016.se, "p_1370->g_1016.se", print_hash_value);
    transparent_crc(p_1370->g_1016.sf, "p_1370->g_1016.sf", print_hash_value);
    transparent_crc(p_1370->g_1020.s0, "p_1370->g_1020.s0", print_hash_value);
    transparent_crc(p_1370->g_1020.s1, "p_1370->g_1020.s1", print_hash_value);
    transparent_crc(p_1370->g_1020.s2, "p_1370->g_1020.s2", print_hash_value);
    transparent_crc(p_1370->g_1020.s3, "p_1370->g_1020.s3", print_hash_value);
    transparent_crc(p_1370->g_1020.s4, "p_1370->g_1020.s4", print_hash_value);
    transparent_crc(p_1370->g_1020.s5, "p_1370->g_1020.s5", print_hash_value);
    transparent_crc(p_1370->g_1020.s6, "p_1370->g_1020.s6", print_hash_value);
    transparent_crc(p_1370->g_1020.s7, "p_1370->g_1020.s7", print_hash_value);
    transparent_crc(p_1370->g_1073.s0, "p_1370->g_1073.s0", print_hash_value);
    transparent_crc(p_1370->g_1073.s1, "p_1370->g_1073.s1", print_hash_value);
    transparent_crc(p_1370->g_1073.s2, "p_1370->g_1073.s2", print_hash_value);
    transparent_crc(p_1370->g_1073.s3, "p_1370->g_1073.s3", print_hash_value);
    transparent_crc(p_1370->g_1073.s4, "p_1370->g_1073.s4", print_hash_value);
    transparent_crc(p_1370->g_1073.s5, "p_1370->g_1073.s5", print_hash_value);
    transparent_crc(p_1370->g_1073.s6, "p_1370->g_1073.s6", print_hash_value);
    transparent_crc(p_1370->g_1073.s7, "p_1370->g_1073.s7", print_hash_value);
    transparent_crc(p_1370->g_1074.s0, "p_1370->g_1074.s0", print_hash_value);
    transparent_crc(p_1370->g_1074.s1, "p_1370->g_1074.s1", print_hash_value);
    transparent_crc(p_1370->g_1074.s2, "p_1370->g_1074.s2", print_hash_value);
    transparent_crc(p_1370->g_1074.s3, "p_1370->g_1074.s3", print_hash_value);
    transparent_crc(p_1370->g_1074.s4, "p_1370->g_1074.s4", print_hash_value);
    transparent_crc(p_1370->g_1074.s5, "p_1370->g_1074.s5", print_hash_value);
    transparent_crc(p_1370->g_1074.s6, "p_1370->g_1074.s6", print_hash_value);
    transparent_crc(p_1370->g_1074.s7, "p_1370->g_1074.s7", print_hash_value);
    transparent_crc(p_1370->g_1085, "p_1370->g_1085", print_hash_value);
    transparent_crc(p_1370->g_1092.x, "p_1370->g_1092.x", print_hash_value);
    transparent_crc(p_1370->g_1092.y, "p_1370->g_1092.y", print_hash_value);
    transparent_crc(p_1370->g_1092.z, "p_1370->g_1092.z", print_hash_value);
    transparent_crc(p_1370->g_1092.w, "p_1370->g_1092.w", print_hash_value);
    transparent_crc(p_1370->g_1111.s0, "p_1370->g_1111.s0", print_hash_value);
    transparent_crc(p_1370->g_1111.s1, "p_1370->g_1111.s1", print_hash_value);
    transparent_crc(p_1370->g_1111.s2, "p_1370->g_1111.s2", print_hash_value);
    transparent_crc(p_1370->g_1111.s3, "p_1370->g_1111.s3", print_hash_value);
    transparent_crc(p_1370->g_1111.s4, "p_1370->g_1111.s4", print_hash_value);
    transparent_crc(p_1370->g_1111.s5, "p_1370->g_1111.s5", print_hash_value);
    transparent_crc(p_1370->g_1111.s6, "p_1370->g_1111.s6", print_hash_value);
    transparent_crc(p_1370->g_1111.s7, "p_1370->g_1111.s7", print_hash_value);
    transparent_crc(p_1370->g_1111.s8, "p_1370->g_1111.s8", print_hash_value);
    transparent_crc(p_1370->g_1111.s9, "p_1370->g_1111.s9", print_hash_value);
    transparent_crc(p_1370->g_1111.sa, "p_1370->g_1111.sa", print_hash_value);
    transparent_crc(p_1370->g_1111.sb, "p_1370->g_1111.sb", print_hash_value);
    transparent_crc(p_1370->g_1111.sc, "p_1370->g_1111.sc", print_hash_value);
    transparent_crc(p_1370->g_1111.sd, "p_1370->g_1111.sd", print_hash_value);
    transparent_crc(p_1370->g_1111.se, "p_1370->g_1111.se", print_hash_value);
    transparent_crc(p_1370->g_1111.sf, "p_1370->g_1111.sf", print_hash_value);
    transparent_crc(p_1370->g_1129, "p_1370->g_1129", print_hash_value);
    transparent_crc(p_1370->g_1154.x, "p_1370->g_1154.x", print_hash_value);
    transparent_crc(p_1370->g_1154.y, "p_1370->g_1154.y", print_hash_value);
    transparent_crc(p_1370->g_1154.z, "p_1370->g_1154.z", print_hash_value);
    transparent_crc(p_1370->g_1154.w, "p_1370->g_1154.w", print_hash_value);
    transparent_crc(p_1370->g_1185.s0, "p_1370->g_1185.s0", print_hash_value);
    transparent_crc(p_1370->g_1185.s1, "p_1370->g_1185.s1", print_hash_value);
    transparent_crc(p_1370->g_1185.s2, "p_1370->g_1185.s2", print_hash_value);
    transparent_crc(p_1370->g_1185.s3, "p_1370->g_1185.s3", print_hash_value);
    transparent_crc(p_1370->g_1185.s4, "p_1370->g_1185.s4", print_hash_value);
    transparent_crc(p_1370->g_1185.s5, "p_1370->g_1185.s5", print_hash_value);
    transparent_crc(p_1370->g_1185.s6, "p_1370->g_1185.s6", print_hash_value);
    transparent_crc(p_1370->g_1185.s7, "p_1370->g_1185.s7", print_hash_value);
    transparent_crc(p_1370->g_1185.s8, "p_1370->g_1185.s8", print_hash_value);
    transparent_crc(p_1370->g_1185.s9, "p_1370->g_1185.s9", print_hash_value);
    transparent_crc(p_1370->g_1185.sa, "p_1370->g_1185.sa", print_hash_value);
    transparent_crc(p_1370->g_1185.sb, "p_1370->g_1185.sb", print_hash_value);
    transparent_crc(p_1370->g_1185.sc, "p_1370->g_1185.sc", print_hash_value);
    transparent_crc(p_1370->g_1185.sd, "p_1370->g_1185.sd", print_hash_value);
    transparent_crc(p_1370->g_1185.se, "p_1370->g_1185.se", print_hash_value);
    transparent_crc(p_1370->g_1185.sf, "p_1370->g_1185.sf", print_hash_value);
    transparent_crc(p_1370->g_1188.x, "p_1370->g_1188.x", print_hash_value);
    transparent_crc(p_1370->g_1188.y, "p_1370->g_1188.y", print_hash_value);
    transparent_crc(p_1370->g_1188.z, "p_1370->g_1188.z", print_hash_value);
    transparent_crc(p_1370->g_1188.w, "p_1370->g_1188.w", print_hash_value);
    transparent_crc(p_1370->g_1192.s0, "p_1370->g_1192.s0", print_hash_value);
    transparent_crc(p_1370->g_1192.s1, "p_1370->g_1192.s1", print_hash_value);
    transparent_crc(p_1370->g_1192.s2, "p_1370->g_1192.s2", print_hash_value);
    transparent_crc(p_1370->g_1192.s3, "p_1370->g_1192.s3", print_hash_value);
    transparent_crc(p_1370->g_1192.s4, "p_1370->g_1192.s4", print_hash_value);
    transparent_crc(p_1370->g_1192.s5, "p_1370->g_1192.s5", print_hash_value);
    transparent_crc(p_1370->g_1192.s6, "p_1370->g_1192.s6", print_hash_value);
    transparent_crc(p_1370->g_1192.s7, "p_1370->g_1192.s7", print_hash_value);
    transparent_crc(p_1370->g_1192.s8, "p_1370->g_1192.s8", print_hash_value);
    transparent_crc(p_1370->g_1192.s9, "p_1370->g_1192.s9", print_hash_value);
    transparent_crc(p_1370->g_1192.sa, "p_1370->g_1192.sa", print_hash_value);
    transparent_crc(p_1370->g_1192.sb, "p_1370->g_1192.sb", print_hash_value);
    transparent_crc(p_1370->g_1192.sc, "p_1370->g_1192.sc", print_hash_value);
    transparent_crc(p_1370->g_1192.sd, "p_1370->g_1192.sd", print_hash_value);
    transparent_crc(p_1370->g_1192.se, "p_1370->g_1192.se", print_hash_value);
    transparent_crc(p_1370->g_1192.sf, "p_1370->g_1192.sf", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1370->g_1195[i], "p_1370->g_1195[i]", print_hash_value);

    }
    transparent_crc(p_1370->g_1200, "p_1370->g_1200", print_hash_value);
    transparent_crc(p_1370->g_1354.x, "p_1370->g_1354.x", print_hash_value);
    transparent_crc(p_1370->g_1354.y, "p_1370->g_1354.y", print_hash_value);
    transparent_crc(p_1370->g_1364, "p_1370->g_1364", print_hash_value);
    transparent_crc(p_1370->v_collective, "p_1370->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 41; i++)
            transparent_crc(p_1370->g_special_values[i + 41 * get_linear_group_id()], "p_1370->g_special_values[i + 41 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 41; i++)
            transparent_crc(p_1370->l_special_values[i], "p_1370->l_special_values[i]", print_hash_value);
    transparent_crc(p_1370->l_comm_values[get_linear_local_id()], "p_1370->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1370->g_comm_values[get_linear_group_id() * 76 + get_linear_local_id()], "p_1370->g_comm_values[get_linear_group_id() * 76 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
