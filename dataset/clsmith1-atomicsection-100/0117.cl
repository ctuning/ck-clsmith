// --atomics 17 ---fake_divergence -g 83,16,3 -l 1,16,3
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


// Seed: 117

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   uint32_t  f1;
   uint32_t  f2;
   int16_t  f3;
   uint32_t  f4;
};

union U1 {
   volatile int32_t  f0;
   int32_t  f1;
   int8_t  f2;
   uint64_t  f3;
   struct S0  f4;
};

union U2 {
   int8_t  f0;
   int8_t * f1;
   volatile int32_t  f2;
   uint16_t  f3;
   int16_t  f4;
};

struct S3 {
    volatile struct S0 g_3;
    volatile struct S0 *g_2[6][4];
    volatile int32_t g_5;
    int32_t g_6[9];
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
uint64_t  func_1(struct S3 * p_138);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_138->g_2 p_138->g_6
 * writes: p_138->g_6
 */
uint64_t  func_1(struct S3 * p_138)
{ /* block id: 4 */
    volatile struct S0 *l_4 = &p_138->g_3;
    int32_t l_137 = (-1L);
    l_4 = p_138->g_2[0][3];
    for (p_138->g_6[4] = 8; (p_138->g_6[4] != (-19)); p_138->g_6[4] = safe_sub_func_int64_t_s_s(p_138->g_6[4], 1))
    { /* block id: 8 */
        if ((atomic_inc(&p_138->g_atomic_input[17 * get_linear_group_id() + 14]) == 1))
        { /* block id: 10 */
            int32_t l_9 = 0x7746E33AL;
            int64_t l_88 = 0x3DB3881A53AD813DL;
            for (l_9 = (-13); (l_9 == (-18)); l_9 = safe_sub_func_uint8_t_u_u(l_9, 1))
            { /* block id: 13 */
                uint8_t l_12 = 0x52L;
                int8_t l_13 = 0x5AL;
                int32_t l_14 = 0L;
                l_14 = (l_13 = (l_12 , 0x413F0870L));
                for (l_12 = 0; (l_12 <= 3); l_12 += 1)
                { /* block id: 18 */
                    union U2 l_15 = {0x57L};/* VOLATILE GLOBAL l_15 */
                    int32_t l_16 = 8L;
                    union U2 *l_32 = &l_15;
                    union U2 *l_33 = &l_15;
                    union U2 *l_34 = &l_15;
                    uint16_t l_35[6][8] = {{65535UL,0xB25BL,0xB1A6L,0xB25BL,65535UL,65535UL,0xB25BL,0xB1A6L},{65535UL,0xB25BL,0xB1A6L,0xB25BL,65535UL,65535UL,0xB25BL,0xB1A6L},{65535UL,0xB25BL,0xB1A6L,0xB25BL,65535UL,65535UL,0xB25BL,0xB1A6L},{65535UL,0xB25BL,0xB1A6L,0xB25BL,65535UL,65535UL,0xB25BL,0xB1A6L},{65535UL,0xB25BL,0xB1A6L,0xB25BL,65535UL,65535UL,0xB25BL,0xB1A6L},{65535UL,0xB25BL,0xB1A6L,0xB25BL,65535UL,65535UL,0xB25BL,0xB1A6L}};
                    int32_t l_36 = 0x15C8F381L;
                    int i, j;
                    if ((l_15 , l_16))
                    { /* block id: 19 */
                        int64_t l_17 = (-2L);
                        uint64_t l_18[6][1][6] = {{{0x2589D38951FE511BL,1UL,0xFCC65AD6CAD8E65DL,0x1808ADC705BE734EL,1UL,0x1808ADC705BE734EL}},{{0x2589D38951FE511BL,1UL,0xFCC65AD6CAD8E65DL,0x1808ADC705BE734EL,1UL,0x1808ADC705BE734EL}},{{0x2589D38951FE511BL,1UL,0xFCC65AD6CAD8E65DL,0x1808ADC705BE734EL,1UL,0x1808ADC705BE734EL}},{{0x2589D38951FE511BL,1UL,0xFCC65AD6CAD8E65DL,0x1808ADC705BE734EL,1UL,0x1808ADC705BE734EL}},{{0x2589D38951FE511BL,1UL,0xFCC65AD6CAD8E65DL,0x1808ADC705BE734EL,1UL,0x1808ADC705BE734EL}},{{0x2589D38951FE511BL,1UL,0xFCC65AD6CAD8E65DL,0x1808ADC705BE734EL,1UL,0x1808ADC705BE734EL}}};
                        int32_t l_21 = (-1L);
                        int16_t l_22 = 0x712AL;
                        uint32_t l_23 = 0xC507B392L;
                        int i, j, k;
                        l_18[2][0][5]++;
                        l_22 = (l_14 = l_21);
                        l_14 |= 1L;
                        ++l_23;
                    }
                    else
                    { /* block id: 25 */
                        uint32_t l_26 = 2UL;
                        int8_t *l_28 = (void*)0;
                        int8_t **l_27 = &l_28;
                        int8_t **l_29 = (void*)0;
                        int8_t **l_30[1];
                        int8_t **l_31[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_30[i] = &l_28;
                        for (i = 0; i < 1; i++)
                            l_31[i] = (void*)0;
                        l_30[0] = (l_29 = (l_26 , l_27));
                        l_31[0] = (void*)0;
                    }
                    l_34 = (l_33 = (l_32 = (void*)0));
                    l_36 &= l_35[5][6];
                }
                for (l_12 = 0; (l_12 <= 3); l_12 += 1)
                { /* block id: 37 */
                    uint32_t l_37 = 1UL;
                    int32_t l_50 = 0x21FB9D33L;
                    uint64_t l_51 = 0x6BADC49480DD0043L;
                    if ((l_14 = l_37))
                    { /* block id: 39 */
                        union U2 l_38[6][6] = {{{0x11L},{6L},{0L},{-1L},{0L},{6L}},{{0x11L},{6L},{0L},{-1L},{0L},{6L}},{{0x11L},{6L},{0L},{-1L},{0L},{6L}},{{0x11L},{6L},{0L},{-1L},{0L},{6L}},{{0x11L},{6L},{0L},{-1L},{0L},{6L}},{{0x11L},{6L},{0L},{-1L},{0L},{6L}}};
                        int32_t l_39 = (-1L);
                        union U2 **l_40 = (void*)0;
                        uint32_t l_41 = 0UL;
                        int i, j;
                        l_14 = (-1L);
                        l_40 = (l_38[1][4] , ((l_39 ^= (-9L)) , l_40));
                        l_41++;
                    }
                    else
                    { /* block id: 44 */
                        int16_t l_44 = 0x0F59L;
                        int32_t *l_45 = (void*)0;
                        int32_t l_47[8][6] = {{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L}};
                        int32_t *l_46[8] = {&l_47[2][0],&l_47[2][0],&l_47[2][0],&l_47[2][0],&l_47[2][0],&l_47[2][0],&l_47[2][0],&l_47[2][0]};
                        int32_t *l_48 = &l_47[2][0];
                        int32_t *l_49 = &l_47[2][2];
                        int i, j;
                        l_48 = (l_46[3] = (l_44 , l_45));
                        l_49 = (void*)0;
                    }
                    l_51 = l_50;
                }
            }
            for (l_9 = 0; (l_9 < (-27)); l_9--)
            { /* block id: 54 */
                uint64_t l_54 = 18446744073709551608UL;
                uint8_t l_55 = 9UL;
                int32_t l_73[4];
                uint32_t l_74[10] = {0x93D91369L,0x93D91369L,0x93D91369L,0x93D91369L,0x93D91369L,0x93D91369L,0x93D91369L,0x93D91369L,0x93D91369L,0x93D91369L};
                uint64_t l_75 = 18446744073709551615UL;
                uint16_t l_76 = 65526UL;
                int i;
                for (i = 0; i < 4; i++)
                    l_73[i] = (-1L);
                l_55 |= l_54;
                for (l_55 = 8; (l_55 < 55); ++l_55)
                { /* block id: 58 */
                    int32_t l_58 = 0x78016B84L;
                    for (l_58 = 0; (l_58 > 20); l_58 = safe_add_func_uint16_t_u_u(l_58, 6))
                    { /* block id: 61 */
                        uint8_t l_61 = 0x0BL;
                        uint16_t l_62 = 0xC99AL;
                        uint8_t l_63[6] = {3UL,3UL,3UL,3UL,3UL,3UL};
                        int32_t l_64[7][7] = {{0x421D0123L,(-1L),5L,(-1L),0x421D0123L,0x421D0123L,(-1L)},{0x421D0123L,(-1L),5L,(-1L),0x421D0123L,0x421D0123L,(-1L)},{0x421D0123L,(-1L),5L,(-1L),0x421D0123L,0x421D0123L,(-1L)},{0x421D0123L,(-1L),5L,(-1L),0x421D0123L,0x421D0123L,(-1L)},{0x421D0123L,(-1L),5L,(-1L),0x421D0123L,0x421D0123L,(-1L)},{0x421D0123L,(-1L),5L,(-1L),0x421D0123L,0x421D0123L,(-1L)},{0x421D0123L,(-1L),5L,(-1L),0x421D0123L,0x421D0123L,(-1L)}};
                        uint64_t l_65[6][6] = {{1UL,0x5102697EBF99C482L,18446744073709551615UL,0x5102697EBF99C482L,1UL,1UL},{1UL,0x5102697EBF99C482L,18446744073709551615UL,0x5102697EBF99C482L,1UL,1UL},{1UL,0x5102697EBF99C482L,18446744073709551615UL,0x5102697EBF99C482L,1UL,1UL},{1UL,0x5102697EBF99C482L,18446744073709551615UL,0x5102697EBF99C482L,1UL,1UL},{1UL,0x5102697EBF99C482L,18446744073709551615UL,0x5102697EBF99C482L,1UL,1UL},{1UL,0x5102697EBF99C482L,18446744073709551615UL,0x5102697EBF99C482L,1UL,1UL}};
                        int8_t l_66 = 0x49L;
                        uint16_t l_67 = 0x5A7FL;
                        uint8_t l_70 = 0xBDL;
                        int64_t l_71 = (-5L);
                        int32_t l_72 = 3L;
                        int i, j;
                        l_63[0] = (l_62 = l_61);
                        l_66 &= (l_65[2][2] = l_64[0][3]);
                        --l_67;
                        l_72 &= (l_71 = l_70);
                    }
                }
                if ((l_76 &= (l_75 ^= (l_74[0] = l_73[0]))))
                { /* block id: 74 */
                    int32_t l_77 = 0x3DBA9F0DL;
                    l_77 |= 1L;
                }
                else
                { /* block id: 76 */
                    int64_t l_78 = 0L;
                    int16_t l_79 = 0x68DEL;
                    int64_t l_80 = 0x55A68F7E2F801B02L;
                    int64_t l_81[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
                    uint64_t l_82 = 18446744073709551614UL;
                    struct S0 l_85[6] = {{-9L,0UL,0x04FE417BL,0L,1UL},{-9L,0UL,0x04FE417BL,0L,1UL},{-9L,0UL,0x04FE417BL,0L,1UL},{-9L,0UL,0x04FE417BL,0L,1UL},{-9L,0UL,0x04FE417BL,0L,1UL},{-9L,0UL,0x04FE417BL,0L,1UL}};
                    struct S0 l_86 = {-1L,4294967295UL,0xF78B7299L,1L,1UL};
                    uint32_t l_87 = 4294967295UL;
                    int i;
                    ++l_82;
                    l_86 = l_85[2];
                    l_87 |= (-6L);
                }
            }
            if (l_88)
            { /* block id: 82 */
                int32_t l_89 = 9L;
                uint8_t l_90[6] = {0x40L,3UL,0x40L,0x40L,3UL,0x40L};
                int32_t l_93 = 0x4FCC00BBL;
                int32_t l_94 = 7L;
                int32_t l_95 = (-9L);
                uint32_t l_107 = 4294967295UL;
                int8_t l_108 = (-6L);
                int i;
                if ((l_9 ^= ((--l_90[2]) , (l_93 , (l_94 , l_95)))))
                { /* block id: 85 */
                    uint32_t l_96[1][5];
                    int16_t l_97 = 6L;
                    uint32_t l_98[8][8][1] = {{{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL}},{{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL}},{{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL}},{{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL}},{{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL}},{{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL}},{{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL}},{{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL},{0x0013D6AAL}}};
                    int8_t l_99[10][2][5] = {{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}},{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}},{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}},{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}},{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}},{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}},{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}},{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}},{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}},{{1L,3L,0x61L,0x10L,(-10L)},{1L,3L,0x61L,0x10L,(-10L)}}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_96[i][j] = 4294967295UL;
                    }
                    l_9 |= l_96[0][1];
                    l_95 &= ((l_9 = (-1L)) , (l_97 , 0L));
                    l_99[2][0][4] |= (l_9 = l_98[1][2][0]);
                }
                else
                { /* block id: 91 */
                    int8_t l_100[4];
                    uint32_t l_101 = 0UL;
                    int32_t l_105 = 0x3D6CB42AL;
                    int32_t *l_104 = &l_105;
                    int32_t *l_106 = (void*)0;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_100[i] = 0x05L;
                    ++l_101;
                    l_106 = l_104;
                }
                l_108 = (l_9 ^= l_107);
            }
            else
            { /* block id: 97 */
                int32_t l_109 = 0L;
                for (l_109 = 0; (l_109 <= (-15)); --l_109)
                { /* block id: 100 */
                    int32_t l_112 = 0L;
                    uint32_t l_123 = 0x552BDAD6L;
                    union U1 l_124 = {0x280ACB10L};/* VOLATILE GLOBAL l_124 */
                    uint32_t l_125 = 0x92C45C1CL;
                    for (l_112 = 0; (l_112 < 28); l_112++)
                    { /* block id: 103 */
                        int8_t l_115 = 0L;
                        int32_t l_116 = 0x22DCAAD5L;
                        uint32_t l_117 = 0UL;
                        int32_t *l_118 = (void*)0;
                        int32_t *l_119 = &l_116;
                        int32_t *l_120 = &l_116;
                        int64_t l_121 = 1L;
                        int32_t *l_122 = &l_116;
                        l_116 |= (l_9 = l_115);
                        l_9 |= 0x3D58A4ADL;
                        l_120 = (l_119 = (((l_117 = 3UL) , GROUP_DIVERGE(2, 1)) , l_118));
                        l_122 = (l_121 , (void*)0);
                    }
                    if (((l_123 , l_124) , l_125))
                    { /* block id: 112 */
                        int8_t l_126 = 8L;
                        struct S0 l_128 = {-5L,0xB3944318L,0xB60584B4L,0x7C30L,1UL};
                        struct S0 *l_127 = &l_128;
                        uint32_t l_129 = 0xC7936A65L;
                        l_124.f0 ^= l_126;
                        l_127 = (FAKE_DIVERGE(p_138->local_2_offset, get_local_id(2), 10) , (void*)0);
                        l_129--;
                    }
                    else
                    { /* block id: 116 */
                        int32_t l_133 = 1L;
                        int32_t *l_132 = &l_133;
                        int32_t *l_134 = &l_133;
                        int32_t **l_135 = &l_132;
                        int32_t **l_136[4][7][3] = {{{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132}},{{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132}},{{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132}},{{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132},{(void*)0,(void*)0,&l_132}}};
                        int i, j, k;
                        l_134 = (l_132 = (void*)0);
                        l_136[2][6][1] = l_135;
                    }
                }
            }
            unsigned int result = 0;
            result += l_9;
            result += l_88;
            atomic_add(&p_138->g_special_values[17 * get_linear_group_id() + 14], result);
        }
        else
        { /* block id: 123 */
            (1 + 1);
        }
    }
    return l_137;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j;
    struct S3 c_139;
    struct S3* p_138 = &c_139;
    struct S3 c_140 = {
        {0x0B9DBEA5L,0x23FA3A92L,0UL,0L,4294967295UL}, // p_138->g_3
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_138->g_2
        1L, // p_138->g_5
        {0x1CD329B3L,0x1CD329B3L,0x1CD329B3L,0x1CD329B3L,0x1CD329B3L,0x1CD329B3L,0x1CD329B3L,0x1CD329B3L,0x1CD329B3L}, // p_138->g_6
        sequence_input[get_global_id(0)], // p_138->global_0_offset
        sequence_input[get_global_id(1)], // p_138->global_1_offset
        sequence_input[get_global_id(2)], // p_138->global_2_offset
        sequence_input[get_local_id(0)], // p_138->local_0_offset
        sequence_input[get_local_id(1)], // p_138->local_1_offset
        sequence_input[get_local_id(2)], // p_138->local_2_offset
        sequence_input[get_group_id(0)], // p_138->group_0_offset
        sequence_input[get_group_id(1)], // p_138->group_1_offset
        sequence_input[get_group_id(2)], // p_138->group_2_offset
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_139 = c_140;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_138);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_138->g_3.f0, "p_138->g_3.f0", print_hash_value);
    transparent_crc(p_138->g_3.f1, "p_138->g_3.f1", print_hash_value);
    transparent_crc(p_138->g_3.f2, "p_138->g_3.f2", print_hash_value);
    transparent_crc(p_138->g_3.f3, "p_138->g_3.f3", print_hash_value);
    transparent_crc(p_138->g_3.f4, "p_138->g_3.f4", print_hash_value);
    transparent_crc(p_138->g_5, "p_138->g_5", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_138->g_6[i], "p_138->g_6[i]", print_hash_value);

    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 17; i++)
            transparent_crc(p_138->g_special_values[i + 17 * get_linear_group_id()], "p_138->g_special_values[i + 17 * get_linear_group_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
