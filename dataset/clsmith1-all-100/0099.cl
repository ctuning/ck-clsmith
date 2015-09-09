// --atomics 82 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 18,31,1 -l 1,1,1
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

// Seed: 99

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int16_t  f0;
};

struct S1 {
    volatile VECTOR(uint16_t, 16) g_62;
    VECTOR(uint8_t, 2) g_77;
    VECTOR(uint8_t, 2) g_78;
    int32_t g_86;
    int32_t g_98;
    int32_t * volatile g_153;
    int32_t * volatile *g_152;
    VECTOR(uint32_t, 4) g_154;
    int32_t g_166[1];
    int32_t g_169;
    int16_t g_179;
    int16_t g_183;
    uint32_t g_198;
    uint16_t g_216;
    int16_t g_228;
    VECTOR(int16_t, 16) g_244;
    VECTOR(uint32_t, 8) g_305;
    int32_t g_338;
    int16_t g_339;
    int32_t g_340;
    uint32_t g_341[10];
    int16_t g_358;
    int32_t *g_368;
    int32_t **g_367;
    int32_t ***g_366;
    int32_t ****g_365;
    VECTOR(int32_t, 16) g_379;
    uint8_t *g_387[8][3];
    uint64_t g_396;
    uint8_t g_408;
    VECTOR(uint32_t, 2) g_409;
    VECTOR(int32_t, 8) g_424;
    uint32_t g_439;
    VECTOR(uint32_t, 2) g_449;
    VECTOR(uint32_t, 4) g_450;
    VECTOR(uint64_t, 2) g_455;
    VECTOR(int64_t, 2) g_505;
    VECTOR(int32_t, 4) g_549;
    int64_t g_550;
    int32_t g_553;
    volatile uint64_t g_646;
    volatile uint64_t * volatile g_645;
    volatile uint64_t * volatile *g_644;
    union U0 g_653[3][2][9];
    union U0 *g_652;
    int32_t *g_813;
    uint32_t * volatile g_876;
    uint32_t * volatile *g_875;
    int8_t g_889[8];
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
uint32_t  func_1(struct S1 * p_902);
uint32_t  func_69(uint16_t  p_70, int32_t * p_71, uint32_t  p_72, uint32_t  p_73, int32_t * p_74, struct S1 * p_902);
int64_t  func_79(uint64_t  p_80, int32_t  p_81, int32_t * p_82, int32_t * p_83, int32_t  p_84, struct S1 * p_902);
int16_t  func_87(uint16_t  p_88, struct S1 * p_902);
int32_t * func_89(int32_t * p_90, int32_t * p_91, int32_t * p_92, struct S1 * p_902);
int32_t * func_93(int32_t  p_94, int32_t  p_95, int8_t  p_96, int32_t  p_97, struct S1 * p_902);
int64_t  func_108(int32_t * p_109, int32_t  p_110, int32_t * p_111, int32_t  p_112, uint32_t  p_113, struct S1 * p_902);
int32_t * func_118(uint64_t  p_119, struct S1 * p_902);
int32_t * func_123(uint32_t  p_124, int32_t * p_125, int32_t * p_126, int32_t * p_127, uint32_t  p_128, struct S1 * p_902);
uint32_t  func_132(int32_t ** p_133, struct S1 * p_902);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_902->g_62 p_902->g_comm_values p_902->g_77 p_902->g_78 p_902->g_86 p_902->g_98 p_902->l_comm_values p_902->g_152 p_902->g_154 p_902->g_166 p_902->g_198 p_902->g_228 p_902->g_183 p_902->g_216 p_902->g_179 p_902->g_244 p_902->g_169 p_902->g_305 p_902->g_341 p_902->g_340 p_902->g_358 p_902->g_365 p_902->g_379 p_902->g_339 p_902->g_367 p_902->g_368 p_902->g_366 p_902->g_387 p_902->g_396 p_902->g_408 p_902->g_409 p_902->g_424 p_902->g_439 p_902->g_449 p_902->g_450 p_902->g_455 p_902->g_505 p_902->g_549 p_902->g_550 p_902->g_644 p_902->g_652 p_902->g_875 p_902->g_813 p_902->g_553
 * writes: p_902->g_86 p_902->g_166 p_902->g_169 p_902->g_179 p_902->g_198 p_902->g_228 p_902->g_183 p_902->g_244 p_902->g_341 p_902->g_340 p_902->g_365 p_902->g_358 p_902->g_396 p_902->g_154 p_902->g_408 p_902->g_368 p_902->g_439 p_902->g_216 p_902->l_comm_values p_902->g_366 p_902->g_553 p_902->g_644 p_902->g_339 p_902->g_652 p_902->g_98
 */
uint32_t  func_1(struct S1 * p_902)
{ /* block id: 4 */
    int32_t *l_85 = &p_902->g_86;
    int64_t *l_636[10][3] = {{&p_902->g_550,&p_902->g_550,(void*)0},{&p_902->g_550,&p_902->g_550,(void*)0},{&p_902->g_550,&p_902->g_550,(void*)0},{&p_902->g_550,&p_902->g_550,(void*)0},{&p_902->g_550,&p_902->g_550,(void*)0},{&p_902->g_550,&p_902->g_550,(void*)0},{&p_902->g_550,&p_902->g_550,(void*)0},{&p_902->g_550,&p_902->g_550,(void*)0},{&p_902->g_550,&p_902->g_550,(void*)0},{&p_902->g_550,&p_902->g_550,(void*)0}};
    uint16_t *l_637 = (void*)0;
    uint16_t **l_638 = &l_637;
    uint16_t *l_639 = &p_902->g_216;
    uint8_t *l_640 = (void*)0;
    int32_t l_641[10][7] = {{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L},{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L},{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L},{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L},{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L},{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L},{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L},{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L},{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L},{0x69CF9A91L,0L,0L,0L,0L,0L,0x69CF9A91L}};
    int16_t l_642[2][6][6] = {{{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L}},{{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L},{7L,0L,0x2E34L,7L,(-6L),0x2E34L}}};
    int i, j, k;
    if ((atomic_inc(&p_902->l_atomic_input[72]) == 6))
    { /* block id: 6 */
        int32_t l_2 = (-1L);
        int32_t l_60 = 0L;
        uint8_t l_61[6] = {0x3AL,255UL,0x3AL,0x3AL,255UL,0x3AL};
        int i;
        for (l_2 = 7; (l_2 < 25); l_2 = safe_add_func_uint8_t_u_u(l_2, 1))
        { /* block id: 9 */
            int32_t l_5 = 0x4351CDCBL;
            for (l_5 = 0; (l_5 >= 0); ++l_5)
            { /* block id: 12 */
                int8_t l_8[1][7];
                uint8_t l_9[5];
                uint32_t l_10 = 0xC96C7979L;
                uint8_t l_11 = 9UL;
                int32_t l_12 = 9L;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 7; j++)
                        l_8[i][j] = 0x6DL;
                }
                for (i = 0; i < 5; i++)
                    l_9[i] = 1UL;
                l_9[1] = l_8[0][3];
                l_11 &= (l_10 , ((VECTOR(int32_t, 2))((-1L), 0x4E912083L)).odd);
                l_12 = 0x1A62A969L;
                for (l_9[1] = 0; (l_9[1] == 51); l_9[1] = safe_add_func_uint32_t_u_u(l_9[1], 6))
                { /* block id: 18 */
                    uint64_t l_15 = 1UL;
                    uint64_t l_16 = 1UL;
                    VECTOR(int16_t, 16) l_19 = (VECTOR(int16_t, 16))(0x6B7AL, (VECTOR(int16_t, 4))(0x6B7AL, (VECTOR(int16_t, 2))(0x6B7AL, 0x46C8L), 0x46C8L), 0x46C8L, 0x6B7AL, 0x46C8L, (VECTOR(int16_t, 2))(0x6B7AL, 0x46C8L), (VECTOR(int16_t, 2))(0x6B7AL, 0x46C8L), 0x6B7AL, 0x46C8L, 0x6B7AL, 0x46C8L);
                    int64_t l_20 = 1L;
                    int16_t l_21 = 0x6AA3L;
                    VECTOR(uint8_t, 8) l_22 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xB1L), 0xB1L), 0xB1L, 1UL, 0xB1L);
                    int32_t l_23[4][5] = {{0x06A4ABFFL,0x02B00025L,5L,0x02B00025L,0x06A4ABFFL},{0x06A4ABFFL,0x02B00025L,5L,0x02B00025L,0x06A4ABFFL},{0x06A4ABFFL,0x02B00025L,5L,0x02B00025L,0x06A4ABFFL},{0x06A4ABFFL,0x02B00025L,5L,0x02B00025L,0x06A4ABFFL}};
                    int32_t l_24[7];
                    VECTOR(uint64_t, 16) l_25 = (VECTOR(uint64_t, 16))(0xC6BCFB656D4C01E0L, (VECTOR(uint64_t, 4))(0xC6BCFB656D4C01E0L, (VECTOR(uint64_t, 2))(0xC6BCFB656D4C01E0L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xC6BCFB656D4C01E0L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0xC6BCFB656D4C01E0L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0xC6BCFB656D4C01E0L, 18446744073709551615UL), 0xC6BCFB656D4C01E0L, 18446744073709551615UL, 0xC6BCFB656D4C01E0L, 18446744073709551615UL);
                    int8_t l_26 = 0x01L;
                    uint64_t l_27 = 0xF0F5B872A60D4E02L;
                    uint32_t l_28 = 1UL;
                    int32_t l_29[7][2];
                    uint16_t l_30 = 0x4EA6L;
                    VECTOR(int32_t, 8) l_31 = (VECTOR(int32_t, 8))(0x19FFFBC9L, (VECTOR(int32_t, 4))(0x19FFFBC9L, (VECTOR(int32_t, 2))(0x19FFFBC9L, (-1L)), (-1L)), (-1L), 0x19FFFBC9L, (-1L));
                    int8_t l_32 = 0x72L;
                    VECTOR(int32_t, 4) l_33 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x1C043CA3L), 0x1C043CA3L);
                    uint8_t l_34[1][7] = {{246UL,8UL,246UL,246UL,8UL,246UL,246UL}};
                    int64_t l_35 = 0x49E2F093B040F4EBL;
                    uint64_t l_36 = 1UL;
                    int32_t l_37 = 0x2A138A80L;
                    int32_t *l_38 = (void*)0;
                    int32_t *l_39[7][4][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
                    VECTOR(int32_t, 16) l_40 = (VECTOR(int32_t, 16))(0x2C1F8D07L, (VECTOR(int32_t, 4))(0x2C1F8D07L, (VECTOR(int32_t, 2))(0x2C1F8D07L, 0x14099FA6L), 0x14099FA6L), 0x14099FA6L, 0x2C1F8D07L, 0x14099FA6L, (VECTOR(int32_t, 2))(0x2C1F8D07L, 0x14099FA6L), (VECTOR(int32_t, 2))(0x2C1F8D07L, 0x14099FA6L), 0x2C1F8D07L, 0x14099FA6L, 0x2C1F8D07L, 0x14099FA6L);
                    VECTOR(int32_t, 4) l_41 = (VECTOR(int32_t, 4))(0x4C8D1EA5L, (VECTOR(int32_t, 2))(0x4C8D1EA5L, 0x00939995L), 0x00939995L);
                    VECTOR(int32_t, 16) l_42 = (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x7942F024L), 0x7942F024L), 0x7942F024L, (-5L), 0x7942F024L, (VECTOR(int32_t, 2))((-5L), 0x7942F024L), (VECTOR(int32_t, 2))((-5L), 0x7942F024L), (-5L), 0x7942F024L, (-5L), 0x7942F024L);
                    VECTOR(int32_t, 4) l_43 = (VECTOR(int32_t, 4))(0x134E6C7CL, (VECTOR(int32_t, 2))(0x134E6C7CL, 0x29E20859L), 0x29E20859L);
                    VECTOR(int32_t, 4) l_44 = (VECTOR(int32_t, 4))(0x1CD1B9B5L, (VECTOR(int32_t, 2))(0x1CD1B9B5L, 0x1DC45D42L), 0x1DC45D42L);
                    int i, j, k;
                    for (i = 0; i < 7; i++)
                        l_24[i] = 0x44B664FBL;
                    for (i = 0; i < 7; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_29[i][j] = 0L;
                    }
                    l_39[2][2][3] = (((l_15 , (l_27 = ((--l_16) , ((((l_20 = ((VECTOR(int16_t, 16))(l_19.s951bb35b68906353)).s0) , l_21) , (l_24[0] = (l_22.s0 , l_23[1][1]))) , (l_30 = ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_25.s6d23205e)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(2UL, l_26, 1UL, 18446744073709551610UL)).hi)), l_27, (l_29[0][1] |= l_28), 0x3911E745C5BB085CL, 0xDBC8B697689278A4L, 0x1CCFE983D4F39AB1L, 18446744073709551612UL)).s06ab)).x))))) , ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_31.s12165626)).s45, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((l_12 |= (l_32 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 16))(l_33.xxwyxzxyzywyyzyw)).s44))).yyxxyxyy)).s1)), ((l_36 = (l_34[0][2] , l_35)) , l_37), ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 4))(0x7CB277CEL)))).s2277013007302042)).s8f, ((VECTOR(int32_t, 2))((-5L)))))), 0x54028E04L, 0x1C819B53L)).wwxxyzxwwzzxyyzz)).sd1, ((VECTOR(int32_t, 2))(0x0B415AEEL))))).hi) , l_38);
                    l_12 = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(l_40.s19)).xyyxxyyx, ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 16))(l_41.zwzzwzyywzxzywxx)).lo, ((VECTOR(int32_t, 4))(l_42.s81c6)).yxzwxzzx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_43.wxyz)))).wzzwyzzz))), ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(0x31624665L, 0x7399958BL)).yxxx, ((VECTOR(int32_t, 2))(l_44.wy)).yxxy))).zzwzzyxx))).even)).z;
                }
            }
            for (l_5 = 0; (l_5 >= (-5)); l_5 = safe_sub_func_int16_t_s_s(l_5, 7))
            { /* block id: 33 */
                uint16_t l_47[10] = {0xAEFEL,0x362AL,0xAEFEL,0xAEFEL,0x362AL,0xAEFEL,0xAEFEL,0x362AL,0xAEFEL,0xAEFEL};
                int i;
                --l_47[2];
            }
        }
        for (l_2 = 0; (l_2 > (-27)); l_2--)
        { /* block id: 39 */
            VECTOR(int32_t, 8) l_52 = (VECTOR(int32_t, 8))(0x3B767B37L, (VECTOR(int32_t, 4))(0x3B767B37L, (VECTOR(int32_t, 2))(0x3B767B37L, 1L), 1L), 1L, 0x3B767B37L, 1L);
            VECTOR(int32_t, 8) l_53 = (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x7EE090ECL), 0x7EE090ECL), 0x7EE090ECL, 4L, 0x7EE090ECL);
            int16_t l_54 = 0x1CABL;
            uint32_t l_55 = 0x4A3E56A0L;
            int32_t l_56 = 0x35A0E2D0L;
            uint16_t l_57 = 0x425FL;
            VECTOR(uint32_t, 16) l_58 = (VECTOR(uint32_t, 16))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967286UL, 4294967295UL, (VECTOR(uint32_t, 2))(4294967286UL, 4294967295UL), (VECTOR(uint32_t, 2))(4294967286UL, 4294967295UL), 4294967286UL, 4294967295UL, 4294967286UL, 4294967295UL);
            uint32_t l_59 = 8UL;
            int i;
            l_59 &= ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(0x09F23B65L, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(2L, 0x6CD4103AL)).xyyyyyyxyyxyxyyx, ((VECTOR(int32_t, 8))(l_52.s40107230)).s6513522472221345))).hi)).s10, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x4FC7CCE1L, 2L))))))), (-6L), (-1L), ((VECTOR(int32_t, 2))(0x5480AB10L, 0x2AF6034AL)), 0x173A068EL)).s2575656703373623)).s9c, (int32_t)((l_54 &= (((VECTOR(int32_t, 2))(l_53.s52)).hi , 0xD727E68FL)) , (l_57 = (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_55, 0x0A9BL, 0x2D6DL, 0x2ACBL)))).w , l_56))), (int32_t)l_58.sb))).hi;
        }
        l_61[5] = (l_60 = 0L);
        unsigned int result = 0;
        result += l_2;
        result += l_60;
        int l_61_i0;
        for (l_61_i0 = 0; l_61_i0 < 6; l_61_i0++) {
            result += l_61[l_61_i0];
        }
        atomic_add(&p_902->l_special_values[72], result);
    }
    else
    { /* block id: 46 */
        (1 + 1);
    }
    (*p_902->g_813) = (((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(p_902->g_62.s0d6e1a5d)).s3646023631001100)).sb == (safe_lshift_func_uint16_t_u_s((((safe_sub_func_int8_t_s_s((safe_div_func_int32_t_s_s(p_902->g_comm_values[p_902->tid], func_69((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 4))(p_902->g_77.yxyy)).even, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 4))(p_902->g_78.xxyy)).even))).yyyxyxyy, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 4))((p_902->g_77.x != func_79((l_85 == ((func_87((*l_85), p_902) , ((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((void*)0 != l_636[5][2]), 0xDE2D4A44L, (+((((((*l_638) = l_637) != l_639) == (*l_85)) , l_640) != (void*)0)), p_902->g_77.x, 0xDC404FF0L, ((VECTOR(uint32_t, 8))(0xEF0F5207L)), 4UL, 0xA41F2139L, 0UL)).s9, (*l_85))) , 0x43F4EDC1A3198E4AL)) , l_85)), l_641[4][3], &l_641[4][3], &p_902->g_98, l_642[0][3][4], p_902)), 255UL, 6UL, 252UL)).xwywxxxwzwwwyzyy, ((VECTOR(uint8_t, 16))(0xEDL))))))))).even))).hi)).hi))).hi, p_902->g_455.y)), &l_641[4][3], p_902->g_449.y, p_902->g_424.s5, &l_641[4][3], p_902))), 1UL)) , p_902->g_553) , p_902->g_341[7]), p_902->g_305.s3)));
    (*p_902->g_813) = 9L;
    return p_902->g_comm_values[p_902->tid];
}


/* ------------------------------------------ */
/* 
 * reads : p_902->g_875 p_902->g_424 p_902->g_340 p_902->g_505 p_902->g_305 p_902->g_813 p_902->g_169
 * writes: p_902->g_169
 */
uint32_t  func_69(uint16_t  p_70, int32_t * p_71, uint32_t  p_72, uint32_t  p_73, int32_t * p_74, struct S1 * p_902)
{ /* block id: 407 */
    int64_t l_854 = 0x61E55CA825E4EE6AL;
    int32_t l_864 = 0x356050D1L;
    VECTOR(int64_t, 16) l_867 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-3L)), (-3L)), (-3L), 1L, (-3L), (VECTOR(int64_t, 2))(1L, (-3L)), (VECTOR(int64_t, 2))(1L, (-3L)), 1L, (-3L), 1L, (-3L));
    uint8_t *l_872[4][3][2] = {{{&p_902->g_408,&p_902->g_408},{&p_902->g_408,&p_902->g_408},{&p_902->g_408,&p_902->g_408}},{{&p_902->g_408,&p_902->g_408},{&p_902->g_408,&p_902->g_408},{&p_902->g_408,&p_902->g_408}},{{&p_902->g_408,&p_902->g_408},{&p_902->g_408,&p_902->g_408},{&p_902->g_408,&p_902->g_408}},{{&p_902->g_408,&p_902->g_408},{&p_902->g_408,&p_902->g_408},{&p_902->g_408,&p_902->g_408}}};
    uint32_t *l_874 = (void*)0;
    uint32_t **l_873 = &l_874;
    int32_t l_877 = (-7L);
    int16_t *l_891 = (void*)0;
    uint32_t l_899 = 0UL;
    int i, j, k;
    if ((atomic_inc(&p_902->g_atomic_input[82 * get_linear_group_id() + 43]) == 0))
    { /* block id: 409 */
        int32_t *l_849 = (void*)0;
        int32_t l_851 = 0x146301D1L;
        int32_t *l_850[7];
        VECTOR(int32_t, 2) l_852 = (VECTOR(int32_t, 2))(0x2B99379FL, 0x620356AFL);
        uint16_t l_853 = 0xF0FCL;
        int i;
        for (i = 0; i < 7; i++)
            l_850[i] = &l_851;
        l_850[5] = (l_849 = l_849);
        l_853 ^= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_852.yy)).yxyxyyxy)).s5666650033677452))).s9743)).z;
        unsigned int result = 0;
        result += l_851;
        result += l_852.y;
        result += l_852.x;
        result += l_853;
        atomic_add(&p_902->g_special_values[82 * get_linear_group_id() + 43], result);
    }
    else
    { /* block id: 413 */
        (1 + 1);
    }
    l_877 = ((((GROUP_DIVERGE(0, 1) & (l_854 < (safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(((&p_902->g_408 == ((p_70 != (safe_mul_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u((safe_unary_minus_func_int64_t_s(l_864)), 1)), ((safe_lshift_func_int8_t_s_u(0x6AL, (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_867.s0cc74c62)))).s4 || (safe_mul_func_uint8_t_u_u((!l_864), 0x4DL))))) && (safe_lshift_func_uint16_t_u_u((&p_902->g_550 != &l_854), 12)))))) , l_872[1][0][1])) ^ l_864), p_72)), 2)))) , l_873) == p_902->g_875) != l_877);
    if ((*p_74))
    { /* block id: 417 */
        int8_t *l_888[8][5] = {{&p_902->g_889[1],&p_902->g_889[6],&p_902->g_889[1],&p_902->g_889[1],&p_902->g_889[6]},{&p_902->g_889[1],&p_902->g_889[6],&p_902->g_889[1],&p_902->g_889[1],&p_902->g_889[6]},{&p_902->g_889[1],&p_902->g_889[6],&p_902->g_889[1],&p_902->g_889[1],&p_902->g_889[6]},{&p_902->g_889[1],&p_902->g_889[6],&p_902->g_889[1],&p_902->g_889[1],&p_902->g_889[6]},{&p_902->g_889[1],&p_902->g_889[6],&p_902->g_889[1],&p_902->g_889[1],&p_902->g_889[6]},{&p_902->g_889[1],&p_902->g_889[6],&p_902->g_889[1],&p_902->g_889[1],&p_902->g_889[6]},{&p_902->g_889[1],&p_902->g_889[6],&p_902->g_889[1],&p_902->g_889[1],&p_902->g_889[6]},{&p_902->g_889[1],&p_902->g_889[6],&p_902->g_889[1],&p_902->g_889[1],&p_902->g_889[6]}};
        int32_t l_890 = 0L;
        int32_t l_892 = 0L;
        uint64_t l_893 = 4UL;
        uint32_t *l_894 = (void*)0;
        int i, j;
        (*p_902->g_813) &= (((l_892 = (&p_902->g_366 == ((p_73 = (safe_mod_func_uint32_t_u_u(((p_902->g_424.s6 && (safe_div_func_int16_t_s_s((safe_div_func_int16_t_s_s(((safe_mod_func_int16_t_s_s(p_902->g_340, (-2L))) >= (((l_890 = (safe_sub_func_uint8_t_u_u(p_70, (-3L)))) == (((&p_902->g_358 != l_891) < l_892) >= l_892)) & l_893)), p_72)), p_902->g_505.y))) , p_902->g_305.s2), l_892))) , (void*)0))) && l_890) < 0x41L);
        return p_72;
    }
    else
    { /* block id: 423 */
        int32_t *l_895 = (void*)0;
        int32_t *l_896 = (void*)0;
        int32_t *l_897 = &p_902->g_98;
        int32_t *l_898[2];
        int i;
        for (i = 0; i < 2; i++)
            l_898[i] = &p_902->g_166[0];
        l_899++;
        (*p_74) = (0x39249E0E2F9CC3E5L && 0xCBF86BE3D8E90DCCL);
    }
    return l_877;
}


/* ------------------------------------------ */
/* 
 * reads : p_902->g_644 p_902->g_339 p_902->g_652 p_902->g_367 p_902->g_98 p_902->g_368
 * writes: p_902->g_644 p_902->g_339 p_902->g_198 p_902->g_652 p_902->g_368 p_902->g_98
 */
int64_t  func_79(uint64_t  p_80, int32_t  p_81, int32_t * p_82, int32_t * p_83, int32_t  p_84, struct S1 * p_902)
{ /* block id: 279 */
    int32_t *l_643[8][10] = {{&p_902->g_169,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_169,&p_902->g_86},{&p_902->g_169,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_169,&p_902->g_86},{&p_902->g_169,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_169,&p_902->g_86},{&p_902->g_169,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_169,&p_902->g_86},{&p_902->g_169,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_169,&p_902->g_86},{&p_902->g_169,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_169,&p_902->g_86},{&p_902->g_169,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_169,&p_902->g_86},{&p_902->g_169,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_86,&p_902->g_169,&p_902->g_169,&p_902->g_86}};
    volatile uint64_t * volatile **l_647 = &p_902->g_644;
    VECTOR(int64_t, 8) l_824 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L));
    uint16_t l_846 = 7UL;
    int i, j;
    l_643[6][3] = &p_84;
    (*l_647) = p_902->g_644;
    for (p_902->g_339 = 15; (p_902->g_339 >= 8); --p_902->g_339)
    { /* block id: 284 */
        int64_t *l_825 = &p_902->g_550;
        int64_t *l_826 = (void*)0;
        int64_t *l_827 = (void*)0;
        int64_t *l_828 = (void*)0;
        int64_t *l_829 = (void*)0;
        int64_t *l_830[8][2][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t l_831 = 4L;
        uint64_t *l_847 = &p_902->g_396;
        int32_t l_848 = 0x41D241DAL;
        int i, j, k;
        for (p_902->g_198 = 17; (p_902->g_198 == 40); ++p_902->g_198)
        { /* block id: 287 */
            union U0 **l_654 = &p_902->g_652;
            (*l_654) = p_902->g_652;
        }
        if ((atomic_inc(&p_902->g_atomic_input[82 * get_linear_group_id() + 54]) == 6))
        { /* block id: 291 */
            int16_t l_655 = (-3L);
            int32_t l_657[9][2][9] = {{{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L},{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L}},{{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L},{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L}},{{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L},{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L}},{{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L},{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L}},{{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L},{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L}},{{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L},{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L}},{{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L},{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L}},{{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L},{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L}},{{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L},{4L,0x1F432DF5L,0x6F7087D8L,0x50AA6E07L,0x6F7087D8L,0x1F432DF5L,4L,(-1L),0x5C701582L}}};
            int32_t *l_656[4][3][6] = {{{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]},{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]},{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]}},{{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]},{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]},{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]}},{{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]},{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]},{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]}},{{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]},{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]},{&l_657[5][1][4],&l_657[5][1][4],&l_657[1][0][5],&l_657[1][1][2],&l_657[5][1][4],&l_657[5][1][4]}}};
            int32_t *l_658[9];
            uint8_t l_659 = 1UL;
            VECTOR(int32_t, 8) l_807 = (VECTOR(int32_t, 8))(0x2F0FDE95L, (VECTOR(int32_t, 4))(0x2F0FDE95L, (VECTOR(int32_t, 2))(0x2F0FDE95L, 0L), 0L), 0L, 0x2F0FDE95L, 0L);
            uint32_t l_808 = 1UL;
            int64_t l_809 = 0x748B3BE553BC417BL;
            int i, j, k;
            for (i = 0; i < 9; i++)
                l_658[i] = &l_657[5][1][4];
            l_658[5] = (l_656[2][2][5] = (l_655 , (void*)0));
            if (l_659)
            { /* block id: 294 */
                int16_t l_660 = (-1L);
                uint16_t l_661[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_661[i] = 1UL;
                ++l_661[1];
            }
            else
            { /* block id: 296 */
                int32_t l_664 = (-1L);
                uint64_t l_676 = 0x6EC06BAB4CB9B235L;
                int8_t l_769 = 0x76L;
                for (l_664 = (-19); (l_664 < 14); l_664++)
                { /* block id: 299 */
                    VECTOR(uint8_t, 16) l_667 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xAAL), 0xAAL), 0xAAL, 1UL, 0xAAL, (VECTOR(uint8_t, 2))(1UL, 0xAAL), (VECTOR(uint8_t, 2))(1UL, 0xAAL), 1UL, 0xAAL, 1UL, 0xAAL);
                    VECTOR(int32_t, 4) l_668 = (VECTOR(int32_t, 4))(0x35595658L, (VECTOR(int32_t, 2))(0x35595658L, (-3L)), (-3L));
                    int8_t l_669 = 0x27L;
                    int64_t l_670 = 8L;
                    uint32_t l_671 = 4294967295UL;
                    VECTOR(uint32_t, 16) l_672 = (VECTOR(uint32_t, 16))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 1UL), 1UL), 1UL, 2UL, 1UL, (VECTOR(uint32_t, 2))(2UL, 1UL), (VECTOR(uint32_t, 2))(2UL, 1UL), 2UL, 1UL, 2UL, 1UL);
                    VECTOR(int8_t, 16) l_673 = (VECTOR(int8_t, 16))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 1L), 1L), 1L, (-7L), 1L, (VECTOR(int8_t, 2))((-7L), 1L), (VECTOR(int8_t, 2))((-7L), 1L), (-7L), 1L, (-7L), 1L);
                    int16_t l_674 = 0x383BL;
                    int16_t l_675 = 0L;
                    int i;
                    l_674 = (((VECTOR(int32_t, 8))(l_667.sc, ((VECTOR(int32_t, 4))(l_668.wwzx)), (l_670 |= l_669), 0x1C6750EEL, (-1L))).s2 , (l_671 , (l_673.sc = l_672.s3)));
                    l_675 |= 0x300C5DD1L;
                }
                if ((l_664 = l_676))
                { /* block id: 306 */
                    VECTOR(int32_t, 8) l_677 = (VECTOR(int32_t, 8))(0x481BD097L, (VECTOR(int32_t, 4))(0x481BD097L, (VECTOR(int32_t, 2))(0x481BD097L, (-10L)), (-10L)), (-10L), 0x481BD097L, (-10L));
                    VECTOR(int16_t, 2) l_678 = (VECTOR(int16_t, 2))(0x5663L, 0L);
                    VECTOR(uint16_t, 8) l_679 = (VECTOR(uint16_t, 8))(0x56DEL, (VECTOR(uint16_t, 4))(0x56DEL, (VECTOR(uint16_t, 2))(0x56DEL, 0UL), 0UL), 0UL, 0x56DEL, 0UL);
                    uint32_t l_680[6][3][4] = {{{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL}},{{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL}},{{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL}},{{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL}},{{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL}},{{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL},{5UL,0x0AA994DAL,0x0AA994DAL,5UL}}};
                    VECTOR(uint8_t, 16) l_681 = (VECTOR(uint8_t, 16))(0x18L, (VECTOR(uint8_t, 4))(0x18L, (VECTOR(uint8_t, 2))(0x18L, 8UL), 8UL), 8UL, 0x18L, 8UL, (VECTOR(uint8_t, 2))(0x18L, 8UL), (VECTOR(uint8_t, 2))(0x18L, 8UL), 0x18L, 8UL, 0x18L, 8UL);
                    VECTOR(uint8_t, 2) l_682 = (VECTOR(uint8_t, 2))(0x65L, 0x05L);
                    uint16_t l_683 = 0x9C2DL;
                    int32_t l_684 = 0x21DD1EA8L;
                    uint8_t l_685 = 0xA6L;
                    VECTOR(uint8_t, 2) l_688 = (VECTOR(uint8_t, 2))(247UL, 0x64L);
                    int64_t l_689 = 2L;
                    VECTOR(uint8_t, 2) l_690 = (VECTOR(uint8_t, 2))(0x23L, 255UL);
                    uint32_t l_691[9][2] = {{0x8D318B0AL,0x755B8C47L},{0x8D318B0AL,0x755B8C47L},{0x8D318B0AL,0x755B8C47L},{0x8D318B0AL,0x755B8C47L},{0x8D318B0AL,0x755B8C47L},{0x8D318B0AL,0x755B8C47L},{0x8D318B0AL,0x755B8C47L},{0x8D318B0AL,0x755B8C47L},{0x8D318B0AL,0x755B8C47L}};
                    uint8_t l_692 = 0x66L;
                    uint64_t l_693 = 0UL;
                    int16_t l_728 = 0L;
                    uint32_t **l_729 = (void*)0;
                    uint32_t **l_730 = (void*)0;
                    uint32_t l_733 = 0xCC4AA9E4L;
                    uint32_t *l_732 = &l_733;
                    uint32_t **l_731[2][9][4] = {{{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732}},{{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732},{&l_732,(void*)0,&l_732,&l_732}}};
                    int8_t l_734 = 0x39L;
                    VECTOR(int16_t, 8) l_735 = (VECTOR(int16_t, 8))(0x301FL, (VECTOR(int16_t, 4))(0x301FL, (VECTOR(int16_t, 2))(0x301FL, 0x27F7L), 0x27F7L), 0x27F7L, 0x301FL, 0x27F7L);
                    int64_t l_736 = 2L;
                    int16_t l_737 = 5L;
                    int i, j, k;
                    if (((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_677.s3511643045213700)))).se7e5, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_678.yx)))), ((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 2))(0x95EDL, 4UL)).yyxyxyyx, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 8))(l_679.s01607506)), ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(1UL, 8UL)), 0xA2B8L, ((VECTOR(uint16_t, 2))(65534UL, 8UL)), 0xBCE3L, 65535UL, 65535UL)), ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 8))(l_680[1][2][2], 1UL, ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 4))(l_681.s7a9e)).even, ((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 4))(l_682.yyxx)), ((VECTOR(uint8_t, 16))(GROUP_DIVERGE(2, 1), 8UL, (l_659 = l_683), 255UL, 0x4EL, (l_684 , l_685), (--l_659), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(0x08L, 4UL, ((VECTOR(uint8_t, 4))(l_688.xyyx)), 0xABL, 0x24L)))), 0x78L)).se922))).odd))), ((l_689 = ((VECTOR(int32_t, 4))(0x668745D2L, 0x04A960CEL, 0x381C143AL, 0x72380B8FL)).y) , ((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 4))(l_690.yxyx)).zzzyzyyzwxzzzyzz, ((VECTOR(uint8_t, 8))(252UL, 0x24L, 255UL, (l_659 = 0x0AL), l_691[0][0], 1UL, 0x6FL, 250UL)).s6451156650747163))).s6), ((l_692 , 1L) , l_693), 0xC9L, 0x0BL)).hi, ((VECTOR(uint8_t, 4))(0xB1L))))), ((VECTOR(uint16_t, 4))(0x644DL))))).odd)).xxxxxxyyxyxyxyyx, ((VECTOR(uint16_t, 16))(0x3FB3L))))).sc1d1)), ((VECTOR(uint16_t, 4))(2UL)), ((VECTOR(uint16_t, 4))(0xF7FFL))))).xwwyyxxz))).s4447633362271765, ((VECTOR(uint16_t, 16))(0x30BBL)), ((VECTOR(uint16_t, 16))(65531UL))))).odd, ((VECTOR(uint16_t, 8))(1UL))))).s23, ((VECTOR(uint16_t, 2))(0UL))))).yyyyxxyy))).s76))).xyxy))).z)
                    { /* block id: 311 */
                        int64_t l_694 = (-1L);
                        VECTOR(int32_t, 16) l_695 = (VECTOR(int32_t, 16))(0x74A36615L, (VECTOR(int32_t, 4))(0x74A36615L, (VECTOR(int32_t, 2))(0x74A36615L, 0x20786E20L), 0x20786E20L), 0x20786E20L, 0x74A36615L, 0x20786E20L, (VECTOR(int32_t, 2))(0x74A36615L, 0x20786E20L), (VECTOR(int32_t, 2))(0x74A36615L, 0x20786E20L), 0x74A36615L, 0x20786E20L, 0x74A36615L, 0x20786E20L);
                        int8_t l_696 = (-1L);
                        VECTOR(int32_t, 4) l_697 = (VECTOR(int32_t, 4))(0x53E7F34EL, (VECTOR(int32_t, 2))(0x53E7F34EL, 0x1C7C642AL), 0x1C7C642AL);
                        uint8_t l_698 = 0xCDL;
                        VECTOR(int32_t, 8) l_699 = (VECTOR(int32_t, 8))(0x227AF19DL, (VECTOR(int32_t, 4))(0x227AF19DL, (VECTOR(int32_t, 2))(0x227AF19DL, 0L), 0L), 0L, 0x227AF19DL, 0L);
                        int16_t l_700 = 0L;
                        int8_t l_701 = 0x78L;
                        int32_t l_702 = 0L;
                        int64_t l_703 = 0x1F600D6E1CB85F5FL;
                        int32_t l_704[1];
                        int64_t l_705 = (-9L);
                        int64_t l_706 = 0x3DDA9F23357B2C12L;
                        int64_t l_707 = 1L;
                        int64_t l_708[9][5] = {{1L,0x437ED5C16C4FE9DDL,0L,(-6L),0x437ED5C16C4FE9DDL},{1L,0x437ED5C16C4FE9DDL,0L,(-6L),0x437ED5C16C4FE9DDL},{1L,0x437ED5C16C4FE9DDL,0L,(-6L),0x437ED5C16C4FE9DDL},{1L,0x437ED5C16C4FE9DDL,0L,(-6L),0x437ED5C16C4FE9DDL},{1L,0x437ED5C16C4FE9DDL,0L,(-6L),0x437ED5C16C4FE9DDL},{1L,0x437ED5C16C4FE9DDL,0L,(-6L),0x437ED5C16C4FE9DDL},{1L,0x437ED5C16C4FE9DDL,0L,(-6L),0x437ED5C16C4FE9DDL},{1L,0x437ED5C16C4FE9DDL,0L,(-6L),0x437ED5C16C4FE9DDL},{1L,0x437ED5C16C4FE9DDL,0L,(-6L),0x437ED5C16C4FE9DDL}};
                        uint64_t l_709 = 0x6C2BD49C3EACB153L;
                        int16_t l_712[7][2] = {{0x7D51L,0x7D51L},{0x7D51L,0x7D51L},{0x7D51L,0x7D51L},{0x7D51L,0x7D51L},{0x7D51L,0x7D51L},{0x7D51L,0x7D51L},{0x7D51L,0x7D51L}};
                        int32_t l_713 = 0x3553CD66L;
                        uint32_t l_714[3][1][1];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_704[i] = 0x2BD5AA93L;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_714[i][j][k] = 0UL;
                            }
                        }
                        l_708[8][0] |= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(0x30D8F6FCL, 0x491B3508L, (-7L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_694, ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_695.s4861f13c)), l_696, ((VECTOR(int32_t, 4))(l_697.zwyx)), l_698, 0x241F2785L, 0L)).lo, ((VECTOR(int32_t, 4))(l_699.s5255)).yzxwzxyy))), (-1L), 0x4F31C3F8L, (l_700 , l_701), l_702, (((l_704[0] = ((l_688.x = (l_698 = 0UL)) , (l_703 , 0x65DAFA221EFC7481L))) , l_705) , l_706), 1L, 8L)).s9b, ((VECTOR(int32_t, 2))(0x18EDDF32L))))).yxxyyyxyxyyxyyyx)).sd1)), l_707, 7L, 0x269727ECL)).odd)).z;
                        l_709++;
                        l_714[1][0][0]++;
                    }
                    else
                    { /* block id: 318 */
                        int16_t l_717 = (-2L);
                        uint8_t l_718 = 0xA5L;
                        uint32_t l_721[5][9][5] = {{{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL}},{{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL}},{{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL}},{{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL}},{{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL},{4294967291UL,4294967294UL,7UL,0UL,3UL}}};
                        uint32_t l_722 = 0UL;
                        int32_t *l_723 = (void*)0;
                        int64_t l_724 = 0x419A3AFD4E8A2C97L;
                        uint32_t l_725 = 0x2B5EC0E1L;
                        int i, j, k;
                        l_717 = 1L;
                        l_718++;
                        l_658[0] = ((l_721[4][3][0] , l_722) , l_723);
                        ++l_725;
                    }
                    l_731[1][0][3] = (l_730 = (l_728 , l_729));
                    l_677.s7 = ((l_736 ^= (l_734 , (l_655 = l_735.s1))) , l_737);
                }
                else
                { /* block id: 329 */
                    int32_t l_738 = 0x24C10DE8L;
                    uint64_t l_749 = 18446744073709551606UL;
                    VECTOR(int16_t, 16) l_750 = (VECTOR(int16_t, 16))(0x6017L, (VECTOR(int16_t, 4))(0x6017L, (VECTOR(int16_t, 2))(0x6017L, 1L), 1L), 1L, 0x6017L, 1L, (VECTOR(int16_t, 2))(0x6017L, 1L), (VECTOR(int16_t, 2))(0x6017L, 1L), 0x6017L, 1L, 0x6017L, 1L);
                    int32_t *l_751 = &l_738;
                    int32_t *l_752 = &l_738;
                    uint16_t l_760 = 0x128BL;
                    VECTOR(int32_t, 8) l_761 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0L), 0L), 0L, 5L, 0L);
                    uint64_t l_762 = 7UL;
                    int i;
                    for (l_738 = (-23); (l_738 < 6); l_738 = safe_add_func_uint64_t_u_u(l_738, 2))
                    { /* block id: 332 */
                        VECTOR(int32_t, 4) l_741 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L);
                        int8_t l_742 = 0x3AL;
                        VECTOR(int32_t, 8) l_743 = (VECTOR(int32_t, 8))(0x34CFFD8CL, (VECTOR(int32_t, 4))(0x34CFFD8CL, (VECTOR(int32_t, 2))(0x34CFFD8CL, 0x24F41BD3L), 0x24F41BD3L), 0x24F41BD3L, 0x34CFFD8CL, 0x24F41BD3L);
                        VECTOR(int32_t, 16) l_744 = (VECTOR(int32_t, 16))(0x12B9EE5EL, (VECTOR(int32_t, 4))(0x12B9EE5EL, (VECTOR(int32_t, 2))(0x12B9EE5EL, 0x2A8D9D64L), 0x2A8D9D64L), 0x2A8D9D64L, 0x12B9EE5EL, 0x2A8D9D64L, (VECTOR(int32_t, 2))(0x12B9EE5EL, 0x2A8D9D64L), (VECTOR(int32_t, 2))(0x12B9EE5EL, 0x2A8D9D64L), 0x12B9EE5EL, 0x2A8D9D64L, 0x12B9EE5EL, 0x2A8D9D64L);
                        VECTOR(int32_t, 4) l_745 = (VECTOR(int32_t, 4))(0x5866BCD1L, (VECTOR(int32_t, 2))(0x5866BCD1L, (-1L)), (-1L));
                        VECTOR(int32_t, 16) l_746 = (VECTOR(int32_t, 16))(0x735DB54AL, (VECTOR(int32_t, 4))(0x735DB54AL, (VECTOR(int32_t, 2))(0x735DB54AL, 0L), 0L), 0L, 0x735DB54AL, 0L, (VECTOR(int32_t, 2))(0x735DB54AL, 0L), (VECTOR(int32_t, 2))(0x735DB54AL, 0L), 0x735DB54AL, 0L, 0x735DB54AL, 0L);
                        VECTOR(int32_t, 8) l_747 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x4A0FF1A3L), 0x4A0FF1A3L), 0x4A0FF1A3L, (-1L), 0x4A0FF1A3L);
                        uint32_t l_748 = 0x744B946AL;
                        int i;
                        l_748 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_741.wzxwzwzx)).lo)), l_742, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_743.s15075142)).s1157155417361147)).hi, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_744.s0559)))), ((VECTOR(int32_t, 2))(l_745.yw)), 0x09B866D2L, 1L)), ((VECTOR(int32_t, 4))(l_746.s93fe)).yzwxzyzy))).s1130244301623024, ((VECTOR(int32_t, 8))(l_747.s25456255)).s5770014326203310))).s82)), 0x048AA77AL)).s2;
                        l_744.s9 = 0x6C887065L;
                    }
                    l_752 = (l_658[0] = ((l_749 , ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_750.s08)).yxxx)).w) , l_751));
                    for (l_750.s5 = (-10); (l_750.s5 != 16); l_750.s5 = safe_add_func_uint8_t_u_u(l_750.s5, 7))
                    { /* block id: 340 */
                        uint32_t l_755 = 1UL;
                        uint32_t l_756[10][4][6] = {{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}},{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}},{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}},{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}},{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}},{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}},{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}},{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}},{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}},{{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL},{0x3B41EE65L,4294967295UL,4294967295UL,9UL,1UL,0x3799CFDAL}}};
                        uint64_t l_757 = 0x8A507E9B1662906FL;
                        VECTOR(int32_t, 8) l_758 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x0CF48A1BL), 0x0CF48A1BL), 0x0CF48A1BL, 7L, 0x0CF48A1BL);
                        uint32_t l_759 = 0UL;
                        int i, j, k;
                        l_758.s0 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x52C62A5AL, 0L)))), (-2L), 0x0C529882L)).odd, ((VECTOR(int32_t, 8))(2L, l_755, (l_757 &= l_756[6][2][3]), ((VECTOR(int32_t, 2))(l_758.s35)), l_759, 2L, 8L)).s15))).xxyxyyyyyyxyxyyy)).s8;
                    }
                    l_762 = ((l_760 &= 1UL) , ((VECTOR(int32_t, 4))(l_761.s5411)).w);
                }
                for (l_664 = 0; (l_664 >= (-18)); l_664 = safe_sub_func_int8_t_s_s(l_664, 3))
                { /* block id: 349 */
                    int16_t l_765 = (-3L);
                    VECTOR(int32_t, 8) l_766 = (VECTOR(int32_t, 8))(0x553F61C6L, (VECTOR(int32_t, 4))(0x553F61C6L, (VECTOR(int32_t, 2))(0x553F61C6L, 0x7B626FADL), 0x7B626FADL), 0x7B626FADL, 0x553F61C6L, 0x7B626FADL);
                    uint16_t l_767 = 0x6CCAL;
                    int8_t l_768[9][1] = {{0x10L},{0x10L},{0x10L},{0x10L},{0x10L},{0x10L},{0x10L},{0x10L},{0x10L}};
                    int i, j;
                    l_768[3][0] = (l_767 = (l_766.s0 = l_765));
                }
                if (l_769)
                { /* block id: 354 */
                    VECTOR(int32_t, 2) l_770 = (VECTOR(int32_t, 2))(0L, 7L);
                    int32_t l_771[7][1][2] = {{{0x431F6747L,0x431F6747L}},{{0x431F6747L,0x431F6747L}},{{0x431F6747L,0x431F6747L}},{{0x431F6747L,0x431F6747L}},{{0x431F6747L,0x431F6747L}},{{0x431F6747L,0x431F6747L}},{{0x431F6747L,0x431F6747L}}};
                    uint32_t l_772 = 0xAC7AA7CFL;
                    int32_t l_773 = 1L;
                    int64_t **l_774 = (void*)0;
                    int64_t **l_775 = (void*)0;
                    int8_t l_776 = 0x67L;
                    uint8_t l_777 = 0xC5L;
                    int32_t *l_778 = (void*)0;
                    int i, j, k;
                    l_770.x = (l_771[4][0][1] = ((VECTOR(int32_t, 4))(l_770.yxyy)).x);
                    l_770.x ^= (l_772 , l_773);
                    l_775 = (l_774 = (void*)0);
                    l_656[2][2][5] = ((l_777 = l_776) , l_778);
                }
                else
                { /* block id: 362 */
                    int32_t l_779 = 3L;
                    uint32_t l_789 = 0x1429A8B7L;
                    int32_t l_803 = (-1L);
                    int32_t *l_802[4];
                    int32_t **l_801[5][2] = {{&l_802[1],&l_802[1]},{&l_802[1],&l_802[1]},{&l_802[1],&l_802[1]},{&l_802[1],&l_802[1]},{&l_802[1],&l_802[1]}};
                    int32_t **l_804 = &l_802[1];
                    int32_t **l_805 = &l_802[1];
                    int32_t **l_806[1][9][9];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_802[i] = &l_803;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 9; j++)
                        {
                            for (k = 0; k < 9; k++)
                                l_806[i][j][k] = &l_802[0];
                        }
                    }
                    for (l_779 = 0; (l_779 < 5); l_779 = safe_add_func_int16_t_s_s(l_779, 3))
                    { /* block id: 365 */
                        VECTOR(uint64_t, 8) l_782 = (VECTOR(uint64_t, 8))(0x77318743880225B0L, (VECTOR(uint64_t, 4))(0x77318743880225B0L, (VECTOR(uint64_t, 2))(0x77318743880225B0L, 0xEAA6264D851E28DCL), 0xEAA6264D851E28DCL), 0xEAA6264D851E28DCL, 0x77318743880225B0L, 0xEAA6264D851E28DCL);
                        VECTOR(uint64_t, 2) l_783 = (VECTOR(uint64_t, 2))(0x8017FB636B8A8D61L, 1UL);
                        VECTOR(int32_t, 4) l_784 = (VECTOR(int32_t, 4))(0x00DFCBC1L, (VECTOR(int32_t, 2))(0x00DFCBC1L, 0x568285E2L), 0x568285E2L);
                        int16_t l_785 = (-1L);
                        VECTOR(int8_t, 2) l_786 = (VECTOR(int8_t, 2))((-1L), 0L);
                        int32_t l_787 = 0x5447BE22L;
                        int32_t *l_788 = &l_787;
                        int i;
                        l_656[2][1][4] = ((((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_782.s16)).xyyy)).even))).xxyyxyxx, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_783.xxyyxyxx)).s7220127702565400)).lo))).s4 , (l_784.x , 0xB45B9E8568AB9867L)) , (((VECTOR(int8_t, 4))((l_785 = (-1L)), ((VECTOR(int8_t, 2))(l_786.xx)), (-4L))).w , (l_787 , l_788)));
                    }
                    if (l_789)
                    { /* block id: 369 */
                        int32_t l_791 = 1L;
                        int32_t *l_790 = &l_791;
                        int32_t *l_792 = &l_791;
                        int64_t l_793[7] = {0x4B33D44A0EE453B4L,(-2L),0x4B33D44A0EE453B4L,0x4B33D44A0EE453B4L,(-2L),0x4B33D44A0EE453B4L,0x4B33D44A0EE453B4L};
                        int i;
                        l_790 = l_790;
                        l_656[2][2][5] = l_792;
                        l_793[5] |= ((*l_790) = 0x04B0AFF9L);
                    }
                    else
                    { /* block id: 374 */
                        uint8_t l_794 = 255UL;
                        uint32_t l_795 = 0x8F6640DCL;
                        l_795 = l_794;
                    }
                    for (l_789 = (-12); (l_789 <= 45); l_789 = safe_add_func_uint32_t_u_u(l_789, 3))
                    { /* block id: 379 */
                        int32_t l_799 = 0x4ACD80FFL;
                        int32_t *l_798 = &l_799;
                        int32_t *l_800 = &l_799;
                        l_658[5] = l_798;
                        l_656[2][2][5] = l_800;
                    }
                    l_806[0][7][8] = (l_805 = (l_804 = l_801[1][0]));
                }
            }
            l_809 = (l_808 = ((VECTOR(int32_t, 4))(l_807.s5453)).w);
            for (l_808 = (-2); (l_808 < 56); ++l_808)
            { /* block id: 392 */
                uint32_t l_812 = 1UL;
                l_812 &= (-6L);
            }
            unsigned int result = 0;
            result += l_655;
            int l_657_i0, l_657_i1, l_657_i2;
            for (l_657_i0 = 0; l_657_i0 < 9; l_657_i0++) {
                for (l_657_i1 = 0; l_657_i1 < 2; l_657_i1++) {
                    for (l_657_i2 = 0; l_657_i2 < 9; l_657_i2++) {
                        result += l_657[l_657_i0][l_657_i1][l_657_i2];
                    }
                }
            }
            result += l_659;
            result += l_807.s7;
            result += l_807.s6;
            result += l_807.s5;
            result += l_807.s4;
            result += l_807.s3;
            result += l_807.s2;
            result += l_807.s1;
            result += l_807.s0;
            result += l_808;
            result += l_809;
            atomic_add(&p_902->g_special_values[82 * get_linear_group_id() + 54], result);
        }
        else
        { /* block id: 395 */
            (1 + 1);
        }
        (*p_902->g_367) = &p_84;
        (**p_902->g_367) &= ((*p_83) &= (*p_82));
    }
    return p_80;
}


/* ------------------------------------------ */
/* 
 * reads : p_902->g_98 p_902->g_77 p_902->l_comm_values p_902->g_86 p_902->g_152 p_902->g_154 p_902->g_166 p_902->g_78 p_902->g_198 p_902->g_228 p_902->g_183 p_902->g_216 p_902->g_179 p_902->g_244 p_902->g_169 p_902->g_305 p_902->g_341 p_902->g_340 p_902->g_358 p_902->g_365 p_902->g_379 p_902->g_339 p_902->g_367 p_902->g_368 p_902->g_366 p_902->g_387 p_902->g_396 p_902->g_408 p_902->g_409 p_902->g_424 p_902->g_439 p_902->g_449 p_902->g_450 p_902->g_455 p_902->g_505 p_902->g_549 p_902->g_550
 * writes: p_902->g_86 p_902->g_166 p_902->g_169 p_902->g_179 p_902->g_198 p_902->g_228 p_902->g_183 p_902->g_244 p_902->g_341 p_902->g_340 p_902->g_365 p_902->g_358 p_902->g_396 p_902->g_154 p_902->g_408 p_902->g_368 p_902->g_439 p_902->g_216 p_902->l_comm_values p_902->g_366 p_902->g_553
 */
int16_t  func_87(uint16_t  p_88, struct S1 * p_902)
{ /* block id: 49 */
    int32_t l_99 = 0x1929AE18L;
    int32_t l_120 = 0x367BE3ABL;
    int32_t *l_422 = &l_99;
    int32_t *l_423 = &p_902->g_169;
    uint32_t *l_438[10] = {&p_902->g_439,&p_902->g_439,&p_902->g_439,&p_902->g_439,&p_902->g_439,&p_902->g_439,&p_902->g_439,&p_902->g_439,&p_902->g_439,&p_902->g_439};
    int i;
    (*p_902->g_367) = func_89(func_93(p_902->g_98, ((p_88 | l_99) & (safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_sub_func_int64_t_s_s((-1L), (((((p_902->g_439 |= (safe_add_func_uint32_t_u_u(((safe_mod_func_int16_t_s_s((func_108(&l_99, (safe_mod_func_int64_t_s_s(p_88, l_99)), &l_99, ((*l_423) = (safe_div_func_int16_t_s_s((((**p_902->g_366) = func_118(((l_120 |= p_902->g_98) , p_88), p_902)) != l_422), (-8L)))), p_902->g_98, p_902) , p_88), 0x612AL)) & 0x19L), p_902->g_216))) & p_902->g_424.s5) || p_88) , FAKE_DIVERGE(p_902->group_1_offset, get_group_id(1), 10)) , FAKE_DIVERGE(p_902->global_0_offset, get_global_id(0), 10))))))), p_88, p_902->g_77.x, p_902), &l_99, &l_99, p_902);
    return (*l_423);
}


/* ------------------------------------------ */
/* 
 * reads : p_902->g_505 p_902->g_365 p_902->g_409 p_902->g_379 p_902->g_450 p_902->g_244 p_902->g_424 p_902->g_358 p_902->g_77 p_902->g_341 p_902->g_228 p_902->g_166 p_902->g_549 p_902->g_550 p_902->g_455 p_902->g_367
 * writes: p_902->l_comm_values p_902->g_216 p_902->g_396 p_902->g_366 p_902->g_198 p_902->g_553 p_902->g_368
 */
int32_t * func_89(int32_t * p_90, int32_t * p_91, int32_t * p_92, struct S1 * p_902)
{ /* block id: 194 */
    VECTOR(int64_t, 8) l_481 = (VECTOR(int64_t, 8))(9L, (VECTOR(int64_t, 4))(9L, (VECTOR(int64_t, 2))(9L, 0x561EA05AB9B05AD5L), 0x561EA05AB9B05AD5L), 0x561EA05AB9B05AD5L, 9L, 0x561EA05AB9B05AD5L);
    uint8_t *l_482 = &p_902->g_408;
    int64_t *l_483 = (void*)0;
    int64_t *l_484 = (void*)0;
    int64_t *l_485 = (void*)0;
    int64_t *l_486 = (void*)0;
    uint32_t *l_491 = (void*)0;
    uint64_t *l_499 = (void*)0;
    uint64_t **l_498 = &l_499;
    uint16_t *l_500 = &p_902->g_216;
    int8_t l_501 = 0x70L;
    uint64_t *l_502 = &p_902->g_396;
    uint64_t *l_503[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_504 = 0L;
    VECTOR(int64_t, 4) l_506 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x0E7A730707742214L), 0x0E7A730707742214L);
    VECTOR(int64_t, 4) l_507 = (VECTOR(int64_t, 4))(0x2DD132E09FA51642L, (VECTOR(int64_t, 2))(0x2DD132E09FA51642L, 1L), 1L);
    int32_t ***l_512 = (void*)0;
    int32_t ***l_515 = &p_902->g_367;
    int64_t l_523 = 0x78A7CB8449C86AD3L;
    int32_t *l_540 = &p_902->g_166[0];
    int i;
    if (((0xB0L < (l_481.s7 && (p_902->l_comm_values[(safe_mod_func_uint32_t_u_u(p_902->tid, 1))] = ((void*)0 == l_482)))) & (l_504 ^= ((*l_502) = (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(0L, l_481.s6, 0x2515AFA6L, (-1L))).zywzwxyy))))).s4 ^ (~(safe_lshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((l_491 != l_491), (safe_add_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u(((*l_500) = ((l_485 == ((*l_498) = &p_902->g_396)) , l_481.s6)), l_501)) != l_481.s7), l_481.s5)), l_501)))), l_481.s4))))))))
    { /* block id: 200 */
        VECTOR(int64_t, 16) l_508 = (VECTOR(int64_t, 16))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 0x0C093FECFCBD5EC2L), 0x0C093FECFCBD5EC2L), 0x0C093FECFCBD5EC2L, 4L, 0x0C093FECFCBD5EC2L, (VECTOR(int64_t, 2))(4L, 0x0C093FECFCBD5EC2L), (VECTOR(int64_t, 2))(4L, 0x0C093FECFCBD5EC2L), 4L, 0x0C093FECFCBD5EC2L, 4L, 0x0C093FECFCBD5EC2L);
        VECTOR(int64_t, 8) l_509 = (VECTOR(int64_t, 8))(0x49DAC20FFCCBAA7EL, (VECTOR(int64_t, 4))(0x49DAC20FFCCBAA7EL, (VECTOR(int64_t, 2))(0x49DAC20FFCCBAA7EL, 6L), 6L), 6L, 0x49DAC20FFCCBAA7EL, 6L);
        int32_t ****l_513 = (void*)0;
        int32_t ****l_514 = &l_512;
        uint32_t *l_516 = &p_902->g_198;
        int16_t *l_524 = &p_902->g_339;
        int32_t l_525[1];
        int i;
        for (i = 0; i < 1; i++)
            l_525[i] = 0x4EB36306L;
        l_525[0] = ((*p_91) = (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(0x096FB5463CE7E93BL, 0x03F4FE94D7F59FBAL, 0x0758E85B4E90F7D4L, ((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(p_902->g_505.yxxxxxxx)).s43, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_506.wxxx)).even)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 16))(l_507.xxzzwwzywxzyxzzw)).s11, ((VECTOR(int64_t, 8))(l_508.s3c2a44f1)).s26))).yxxyxxyy, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_509.s1134)), 0x69963D1E2D263871L, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 4))(5L, (((safe_lshift_func_int8_t_s_u(l_509.s5, 0)) , ((((*l_514) = ((*p_902->g_365) = l_512)) != l_515) , ((((0x4067L == (p_902->g_409.y < ((*l_516) = p_902->g_379.s4))) , &l_514) != (((l_507.z != FAKE_DIVERGE(p_902->local_1_offset, get_local_id(1), 10)) & (safe_mod_func_uint64_t_u_u((GROUP_DIVERGE(2, 1) && (safe_sub_func_int16_t_s_s(((((safe_mod_func_int8_t_s_s(p_902->g_450.w, 0xF8L)) || FAKE_DIVERGE(p_902->local_0_offset, get_local_id(0), 10)) , 255UL) && l_523), p_902->g_244.s9))), 1L))) , (void*)0)) , l_524))) != l_524), 1L, 0x2EE935C2AB19F106L)).lo, ((VECTOR(int64_t, 2))(0x76C187DEDC448D42L)), ((VECTOR(int64_t, 2))(0x7348B6D2E941DB8CL))))))), (-1L))).s73)).xxxyxyxy))).s62))))).xyyyxxxx, (int64_t)0x1DFAE8010A45B94EL))).lo)).even, ((VECTOR(int64_t, 2))(0x15AA200D6A1A6972L))))), 0L, 0x5FA2CA29D45F9D85L)).lo, ((VECTOR(int64_t, 2))(7L))))).lo, ((VECTOR(int64_t, 4))((-5L))))).lo)).yxwwwwwzywxyywzy)).s0 & p_902->g_424.s2));
    }
    else
    { /* block id: 206 */
        uint32_t l_536 = 1UL;
        int64_t *l_537 = (void*)0;
        int64_t *l_538 = (void*)0;
        int64_t *l_539 = &l_523;
        int32_t l_541 = 0x5B9BCA5DL;
        VECTOR(int8_t, 8) l_546 = (VECTOR(int8_t, 8))(0x6BL, (VECTOR(int8_t, 4))(0x6BL, (VECTOR(int8_t, 2))(0x6BL, 0x79L), 0x79L), 0x79L, 0x6BL, 0x79L);
        int32_t *l_551 = (void*)0;
        int32_t *l_552 = &p_902->g_553;
        int32_t l_554[4] = {2L,2L,2L,2L};
        int i;
        atomic_xor(&p_902->g_atomic_reduction[get_linear_group_id()], (safe_add_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_u(l_536, (((((*l_539) = p_902->g_358) <= 0x77FC269EF59D41C5L) , l_536) <= p_902->g_77.x))), 13)) >= (l_541 = ((((0xE08EB5B9L >= p_902->g_341[7]) , ((void*)0 == l_540)) >= l_536) == 0x19ECDB4C2BDE4BF6L))), 7)), 65535UL)));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_902->v_collective += p_902->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        l_554[0] &= ((safe_sub_func_int32_t_s_s((1UL & (!(((p_902->g_228 >= l_536) == (*l_540)) || (l_541 , ((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_546.s04)).xxyxyxxx)).s0, ((safe_lshift_func_int16_t_s_u(((*l_540) , (~(((*p_91) &= ((VECTOR(int32_t, 4))(p_902->g_549.ywyy)).w) , (((p_902->g_550 , p_902->g_455.x) , ((*l_552) = p_902->g_455.x)) , 0L)))), GROUP_DIVERGE(2, 1))) & l_546.s2))) , 0xA4L))))), 4294967293UL)) && 0x82L);
        (*p_902->g_367) = p_92;
        if ((atomic_inc(&p_902->l_atomic_input[53]) == 7))
        { /* block id: 215 */
            int32_t l_555 = 0L;
            uint64_t l_627 = 0x80C9A79AC3F335ACL;
            uint64_t l_628 = 18446744073709551615UL;
            VECTOR(int8_t, 16) l_629 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 5L), 5L), 5L, 0L, 5L, (VECTOR(int8_t, 2))(0L, 5L), (VECTOR(int8_t, 2))(0L, 5L), 0L, 5L, 0L, 5L);
            int32_t l_630 = 0x3EA2FB1BL;
            uint16_t l_631 = 65535UL;
            uint8_t l_632 = 0xA3L;
            uint32_t l_633 = 4294967292UL;
            int i;
            for (l_555 = 0; (l_555 < (-2)); --l_555)
            { /* block id: 218 */
                int32_t l_558 = 0x0E2F843EL;
                for (l_558 = (-28); (l_558 > (-12)); ++l_558)
                { /* block id: 221 */
                    int32_t l_561 = 1L;
                    int32_t *l_562[3];
                    int32_t *l_563 = &l_561;
                    VECTOR(int32_t, 8) l_564 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x5DCF5EA2L), 0x5DCF5EA2L), 0x5DCF5EA2L, 1L, 0x5DCF5EA2L);
                    int i;
                    for (i = 0; i < 3; i++)
                        l_562[i] = &l_561;
                    l_563 = (l_561 , l_562[0]);
                    if (((VECTOR(int32_t, 8))(l_564.s76343171)).s3)
                    { /* block id: 223 */
                        int16_t l_565 = 0L;
                        int64_t l_566 = (-1L);
                        uint8_t l_567 = 0xEBL;
                        uint64_t l_570[5];
                        VECTOR(int32_t, 16) l_571 = (VECTOR(int32_t, 16))(0x291B2832L, (VECTOR(int32_t, 4))(0x291B2832L, (VECTOR(int32_t, 2))(0x291B2832L, 0x1633B24CL), 0x1633B24CL), 0x1633B24CL, 0x291B2832L, 0x1633B24CL, (VECTOR(int32_t, 2))(0x291B2832L, 0x1633B24CL), (VECTOR(int32_t, 2))(0x291B2832L, 0x1633B24CL), 0x291B2832L, 0x1633B24CL, 0x291B2832L, 0x1633B24CL);
                        int64_t l_572 = 0x5247BED3D1AECDB1L;
                        uint16_t l_573 = 5UL;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_570[i] = 18446744073709551610UL;
                        (*l_563) = (l_565 , ((l_570[1] = (l_566 , (l_567++))) , (-2L)));
                        l_563 = (((VECTOR(int32_t, 16))(l_571.s2980ce3b4210fafd)).s9 , (l_562[0] = (void*)0));
                        l_573--;
                    }
                    else
                    { /* block id: 230 */
                        VECTOR(uint64_t, 4) l_576 = (VECTOR(uint64_t, 4))(0xB8D0213EF558BFB6L, (VECTOR(uint64_t, 2))(0xB8D0213EF558BFB6L, 0x96489AB14D76C183L), 0x96489AB14D76C183L);
                        uint16_t l_577 = 1UL;
                        int32_t l_579 = (-4L);
                        int32_t *l_578[9] = {&l_579,&l_579,&l_579,&l_579,&l_579,&l_579,&l_579,&l_579,&l_579};
                        VECTOR(int32_t, 16) l_580 = (VECTOR(int32_t, 16))(0x15B174A4L, (VECTOR(int32_t, 4))(0x15B174A4L, (VECTOR(int32_t, 2))(0x15B174A4L, 0x7D3F858DL), 0x7D3F858DL), 0x7D3F858DL, 0x15B174A4L, 0x7D3F858DL, (VECTOR(int32_t, 2))(0x15B174A4L, 0x7D3F858DL), (VECTOR(int32_t, 2))(0x15B174A4L, 0x7D3F858DL), 0x15B174A4L, 0x7D3F858DL, 0x15B174A4L, 0x7D3F858DL);
                        uint32_t l_581 = 0UL;
                        int i;
                        l_562[0] = (((VECTOR(uint64_t, 16))(l_576.yyyzzzzwwxzzzzzz)).s7 , (l_577 , l_578[5]));
                        (*l_563) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_580.s91f4)))).y;
                        (*l_563) &= (-8L);
                        --l_581;
                    }
                }
            }
            for (l_555 = (-30); (l_555 > (-21)); l_555 = safe_add_func_int16_t_s_s(l_555, 1))
            { /* block id: 240 */
                int16_t l_586 = 0L;
                if (l_586)
                { /* block id: 241 */
                    int32_t l_587[6][6] = {{0x6AFC5884L,0x6AFC5884L,4L,0L,0x3C034C25L,0L},{0x6AFC5884L,0x6AFC5884L,4L,0L,0x3C034C25L,0L},{0x6AFC5884L,0x6AFC5884L,4L,0L,0x3C034C25L,0L},{0x6AFC5884L,0x6AFC5884L,4L,0L,0x3C034C25L,0L},{0x6AFC5884L,0x6AFC5884L,4L,0L,0x3C034C25L,0L},{0x6AFC5884L,0x6AFC5884L,4L,0L,0x3C034C25L,0L}};
                    VECTOR(uint32_t, 2) l_591 = (VECTOR(uint32_t, 2))(1UL, 0x1B1CCACDL);
                    VECTOR(uint16_t, 8) l_592 = (VECTOR(uint16_t, 8))(0x0D97L, (VECTOR(uint16_t, 4))(0x0D97L, (VECTOR(uint16_t, 2))(0x0D97L, 7UL), 7UL), 7UL, 0x0D97L, 7UL);
                    VECTOR(uint32_t, 2) l_593 = (VECTOR(uint32_t, 2))(0UL, 9UL);
                    uint64_t l_594 = 0x2402627348E169FEL;
                    int64_t l_595 = (-5L);
                    uint32_t l_596 = 6UL;
                    uint32_t l_597 = 0x246E178FL;
                    int i, j;
                    for (l_587[0][4] = (-15); (l_587[0][4] > 1); l_587[0][4] = safe_add_func_uint64_t_u_u(l_587[0][4], 1))
                    { /* block id: 244 */
                        int32_t *l_590[1][2][4];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 2; j++)
                            {
                                for (k = 0; k < 4; k++)
                                    l_590[i][j][k] = (void*)0;
                            }
                        }
                        l_590[0][1][3] = (void*)0;
                    }
                    l_587[2][2] = (l_591.y , (((VECTOR(uint16_t, 8))(l_592.s47210045)).s0 , (l_594 ^= l_593.x)));
                    l_595 &= 0x4895E02CL;
                    l_597 = l_596;
                }
                else
                { /* block id: 251 */
                    int32_t l_599 = (-10L);
                    int32_t *l_598[10][8] = {{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0},{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0},{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0},{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0},{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0},{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0},{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0},{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0},{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0},{(void*)0,&l_599,&l_599,&l_599,&l_599,(void*)0,&l_599,(void*)0}};
                    int32_t *l_600 = &l_599;
                    int64_t l_603[4] = {(-1L),(-1L),(-1L),(-1L)};
                    int64_t *l_602 = &l_603[3];
                    int64_t **l_601 = &l_602;
                    int64_t l_604 = 8L;
                    int8_t l_605[1][4][10];
                    int32_t l_606[2];
                    int8_t l_607 = 0x76L;
                    uint32_t l_608 = 4294967291UL;
                    int8_t l_611 = 0x3FL;
                    int64_t l_612 = 0x787DD8106163C303L;
                    uint32_t l_613 = 1UL;
                    int16_t l_614 = 0L;
                    uint16_t l_615 = 0xD6A6L;
                    int64_t l_616 = (-1L);
                    uint8_t l_617 = 0UL;
                    int16_t l_618 = 6L;
                    int32_t l_619 = 1L;
                    int32_t l_620 = 0x1FA6DB49L;
                    uint16_t l_621 = 65527UL;
                    uint16_t l_622 = 0UL;
                    uint32_t l_623 = 4294967295UL;
                    uint32_t l_624 = 0xC42CE8B6L;
                    union U0 l_626 = {0x5851L};/* VOLATILE GLOBAL l_626 */
                    union U0 *l_625 = &l_626;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 4; j++)
                        {
                            for (k = 0; k < 10; k++)
                                l_605[i][j][k] = 1L;
                        }
                    }
                    for (i = 0; i < 2; i++)
                        l_606[i] = (-2L);
                    l_600 = l_598[7][4];
                    l_601 = (void*)0;
                    l_613 = ((++l_608) , (l_612 = l_611));
                    l_625 = (((VECTOR(int64_t, 16))((l_617 ^= (l_616 = (l_614 , ((l_586 = (l_614 = 0x5DA7L)) , l_615)))), (l_620 = (l_619 = l_618)), 0x593DBF3CC1213818L, ((VECTOR(int64_t, 2))(0x22B31E3C73DDB85AL, 1L)), ((VECTOR(int64_t, 2))(0L, 0x10321A37A85F455DL)), (l_623 = (((FAKE_DIVERGE(p_902->group_0_offset, get_group_id(0), 10) , 0L) , (l_621 , 0UL)) , l_622)), 0x30A7C62EFF1E783BL, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x633916B60BCCE623L, (-9L))).yyyy)), 1L, 0x1F40AA37B4072899L, (-1L))).se , (l_624 , (void*)0));
                }
            }
            l_633 &= ((l_632 &= (l_627 , (l_628 , (l_631 = (l_630 = ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(l_629.s1fde2aeb6bf8640c)))).even))).s7))))) , (-2L));
            unsigned int result = 0;
            result += l_555;
            result += l_627;
            result += l_628;
            result += l_629.sf;
            result += l_629.se;
            result += l_629.sd;
            result += l_629.sc;
            result += l_629.sb;
            result += l_629.sa;
            result += l_629.s9;
            result += l_629.s8;
            result += l_629.s7;
            result += l_629.s6;
            result += l_629.s5;
            result += l_629.s4;
            result += l_629.s3;
            result += l_629.s2;
            result += l_629.s1;
            result += l_629.s0;
            result += l_630;
            result += l_631;
            result += l_632;
            result += l_633;
            atomic_add(&p_902->l_special_values[53], result);
        }
        else
        { /* block id: 271 */
            (1 + 1);
        }
    }
    return p_90;
}


/* ------------------------------------------ */
/* 
 * reads : p_902->g_198 p_902->g_449 p_902->g_450 p_902->g_455 p_902->g_77 p_902->g_424 p_902->g_216 p_902->g_366 p_902->g_367 p_902->g_368
 * writes: p_902->g_198 p_902->g_216 p_902->g_341
 */
int32_t * func_93(int32_t  p_94, int32_t  p_95, int8_t  p_96, int32_t  p_97, struct S1 * p_902)
{ /* block id: 183 */
    VECTOR(uint32_t, 4) l_445 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x0DAE7164L), 0x0DAE7164L);
    VECTOR(uint32_t, 8) l_446 = (VECTOR(uint32_t, 8))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0xA3D74ACDL), 0xA3D74ACDL), 0xA3D74ACDL, 5UL, 0xA3D74ACDL);
    VECTOR(uint32_t, 16) l_447 = (VECTOR(uint32_t, 16))(0xF7E4D828L, (VECTOR(uint32_t, 4))(0xF7E4D828L, (VECTOR(uint32_t, 2))(0xF7E4D828L, 0x91F0A827L), 0x91F0A827L), 0x91F0A827L, 0xF7E4D828L, 0x91F0A827L, (VECTOR(uint32_t, 2))(0xF7E4D828L, 0x91F0A827L), (VECTOR(uint32_t, 2))(0xF7E4D828L, 0x91F0A827L), 0xF7E4D828L, 0x91F0A827L, 0xF7E4D828L, 0x91F0A827L);
    VECTOR(uint8_t, 4) l_453 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x31L), 0x31L);
    VECTOR(uint8_t, 2) l_454 = (VECTOR(uint8_t, 2))(6UL, 0x8BL);
    int16_t *l_456 = &p_902->g_183;
    VECTOR(uint8_t, 4) l_457 = (VECTOR(uint8_t, 4))(0x1EL, (VECTOR(uint8_t, 2))(0x1EL, 0x7EL), 0x7EL);
    int32_t l_461 = 0L;
    int64_t l_477 = 0x5353512B63C599E9L;
    uint32_t l_479[9][7] = {{4UL,4UL,4UL,4UL,4UL,4UL,4UL},{4UL,4UL,4UL,4UL,4UL,4UL,4UL},{4UL,4UL,4UL,4UL,4UL,4UL,4UL},{4UL,4UL,4UL,4UL,4UL,4UL,4UL},{4UL,4UL,4UL,4UL,4UL,4UL,4UL},{4UL,4UL,4UL,4UL,4UL,4UL,4UL},{4UL,4UL,4UL,4UL,4UL,4UL,4UL},{4UL,4UL,4UL,4UL,4UL,4UL,4UL},{4UL,4UL,4UL,4UL,4UL,4UL,4UL}};
    int16_t l_480 = 0x5EE2L;
    int i, j;
    for (p_902->g_198 = 0; (p_902->g_198 <= 12); p_902->g_198++)
    { /* block id: 186 */
        VECTOR(uint32_t, 2) l_444 = (VECTOR(uint32_t, 2))(0xF7827325L, 0xC5E4B1F6L);
        VECTOR(uint32_t, 4) l_448 = (VECTOR(uint32_t, 4))(0x80B044C6L, (VECTOR(uint32_t, 2))(0x80B044C6L, 0x83D0DFF1L), 0x83D0DFF1L);
        int32_t *l_460[8][1][3] = {{{(void*)0,&p_902->g_98,&p_902->g_166[0]}},{{(void*)0,&p_902->g_98,&p_902->g_166[0]}},{{(void*)0,&p_902->g_98,&p_902->g_166[0]}},{{(void*)0,&p_902->g_98,&p_902->g_166[0]}},{{(void*)0,&p_902->g_98,&p_902->g_166[0]}},{{(void*)0,&p_902->g_98,&p_902->g_166[0]}},{{(void*)0,&p_902->g_98,&p_902->g_166[0]}},{{(void*)0,&p_902->g_98,&p_902->g_166[0]}}};
        uint16_t *l_468[7][8] = {{(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216},{(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216},{(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216},{(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216},{(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216},{(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216},{(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216,(void*)0,(void*)0,&p_902->g_216}};
        uint32_t *l_478 = &p_902->g_341[7];
        int i, j, k;
        l_461 |= (safe_mul_func_uint8_t_u_u((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(l_444.xyyxxxxxyxyyxyxy)).odd)).odd, ((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 8))(l_445.zyyzwwyy)).s34, ((VECTOR(uint32_t, 8))(l_446.s65137365)).s05))).yyxxxxyy)).s13)).xyyxyxyyyyyyxyxy, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 4))(l_447.s9ed6)), ((VECTOR(uint32_t, 4))(l_448.wwxy))))), ((VECTOR(uint32_t, 8))(p_902->g_449.xyxyyxxy)), l_447.s9, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(p_902->g_450.zwxxxwwwyxzwzyxw)).s79)), 0UL))))).sd078))))).x != ((safe_div_func_int32_t_s_s((((((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 16))(l_453.zxzxwzwwxxyzyyzx)).hi, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 16))(l_454.yxyyxyxyxyxxxxyx)).s66, ((VECTOR(uint8_t, 8))((p_94 || ((VECTOR(uint64_t, 2))(p_902->g_455.yx)).even), ((void*)0 == l_456), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_457.xzwz)).yzxyyzzy)).hi)), 0x5FL, 0xDAL)).s53))).xxxy)).yzzyxzww))).s0 || 1L) > 0L) || (p_95 == (p_96 , (safe_sub_func_int64_t_s_s(p_94, p_94))))), p_902->g_77.x)) == p_95)), p_96));
        l_461 = (safe_sub_func_uint8_t_u_u(p_94, p_97));
        l_480 = ((((l_446.s7 || (p_902->g_449.x <= p_902->g_424.s4)) < (safe_rshift_func_uint16_t_u_u((++p_902->g_216), 9))) , ((*l_478) = ((safe_sub_func_int64_t_s_s((safe_add_func_uint8_t_u_u(l_446.s5, p_94)), ((((((VECTOR(int64_t, 2))(0L, 0L)).odd & ((VECTOR(uint64_t, 4))(3UL, 0xF164CD14C0616BF7L, 8UL, 0UL)).z) , p_95) && ((p_96 != ((void*)0 != &p_902->g_408)) == l_477)) != 247UL))) & 0x60L))) , l_479[6][0]);
    }
    return (**p_902->g_366);
}


/* ------------------------------------------ */
/* 
 * reads : p_902->g_424 p_902->g_154 p_902->l_comm_values p_902->g_77 p_902->g_365 p_902->g_366 p_902->g_367 p_902->g_368
 * writes: p_902->g_166 p_902->g_368
 */
int64_t  func_108(int32_t * p_109, int32_t  p_110, int32_t * p_111, int32_t  p_112, uint32_t  p_113, struct S1 * p_902)
{ /* block id: 176 */
    VECTOR(uint8_t, 16) l_431 = (VECTOR(uint8_t, 16))(0xC5L, (VECTOR(uint8_t, 4))(0xC5L, (VECTOR(uint8_t, 2))(0xC5L, 0xC2L), 0xC2L), 0xC2L, 0xC5L, 0xC2L, (VECTOR(uint8_t, 2))(0xC5L, 0xC2L), (VECTOR(uint8_t, 2))(0xC5L, 0xC2L), 0xC5L, 0xC2L, 0xC5L, 0xC2L);
    VECTOR(int8_t, 2) l_434 = (VECTOR(int8_t, 2))((-7L), 1L);
    int32_t *l_435[5];
    uint64_t l_436[8] = {0xBBEE0CCA3D6DEA12L,0xBBEE0CCA3D6DEA12L,0xBBEE0CCA3D6DEA12L,0xBBEE0CCA3D6DEA12L,0xBBEE0CCA3D6DEA12L,0xBBEE0CCA3D6DEA12L,0xBBEE0CCA3D6DEA12L,0xBBEE0CCA3D6DEA12L};
    int64_t l_437 = 0L;
    int i;
    for (i = 0; i < 5; i++)
        l_435[i] = (void*)0;
    (****p_902->g_365) = (p_110 != (((VECTOR(int32_t, 4))(p_902->g_424.s2537)).x >= ((((p_113 , (safe_rshift_func_int16_t_s_u((!0x589AL), ((safe_add_func_int32_t_s_s(2L, ((p_902->g_154.w >= ((safe_rshift_func_uint8_t_u_u((p_902->l_comm_values[(safe_mod_func_uint32_t_u_u(p_902->tid, 1))] | p_112), ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xA9L, 0x58L)).xxyyxxyx)).s55, ((VECTOR(uint8_t, 4))(l_431.s0fe1)).odd))).hi)) <= (8UL || ((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_434.xxyxxyxx)).s3, 0x19L)) != l_431.sa)))) >= 0x74E8L))) && (-10L))))) | p_902->g_77.x) && p_902->g_424.s0) || p_902->g_154.y)));
    (*p_902->g_367) = l_435[3];
    p_112 &= (l_437 ^= l_436[1]);
    return p_110;
}


/* ------------------------------------------ */
/* 
 * reads : p_902->g_77 p_902->g_98 p_902->l_comm_values p_902->g_86 p_902->g_152 p_902->g_154 p_902->g_166 p_902->g_78 p_902->g_198 p_902->g_228 p_902->g_183 p_902->g_216 p_902->g_179 p_902->g_244 p_902->g_169 p_902->g_305 p_902->g_341 p_902->g_340 p_902->g_358 p_902->g_365 p_902->g_379 p_902->g_339 p_902->g_367 p_902->g_368 p_902->g_366 p_902->g_387 p_902->g_396 p_902->g_408 p_902->g_409
 * writes: p_902->g_86 p_902->g_166 p_902->g_169 p_902->g_179 p_902->g_198 p_902->g_228 p_902->g_183 p_902->g_244 p_902->g_341 p_902->g_340 p_902->g_365 p_902->g_358 p_902->g_396 p_902->g_154 p_902->g_408
 */
int32_t * func_118(uint64_t  p_119, struct S1 * p_902)
{ /* block id: 51 */
    int32_t *l_129 = &p_902->g_86;
    int32_t *l_159 = (void*)0;
    int32_t **l_158 = &l_159;
    for (p_119 = 0; (p_119 != 55); p_119 = safe_add_func_uint16_t_u_u(p_119, 1))
    { /* block id: 54 */
        int32_t *l_131 = &p_902->g_86;
        int32_t **l_130 = &l_131;
        int32_t ***l_134 = &l_130;
        VECTOR(uint32_t, 4) l_155 = (VECTOR(uint32_t, 4))(0x0E2D96BEL, (VECTOR(uint32_t, 2))(0x0E2D96BEL, 0xE0490286L), 0xE0490286L);
        int i;
        (*l_158) = func_123(((p_902->g_77.x != (l_129 == ((*l_130) = (void*)0))) , func_132(((*l_134) = &l_129), p_902)), (((FAKE_DIVERGE(p_902->group_1_offset, get_group_id(1), 10) , p_902->g_152) != (((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 2))(p_902->g_154.xw)).xxyyyxxxxyxyyyyx, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_155.xyxw)), ((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 2))(0UL, 0x59C66F5CL)).yyxyxyyx, ((VECTOR(uint32_t, 4))(0x0A277352L, 4294967290UL, 1UL, 0UL)).ywwxyzww))), 4UL, (safe_sub_func_int8_t_s_s(p_119, ((VECTOR(int8_t, 8))(p_902->g_77.y, p_119, 0x05L, (-1L), p_119, p_902->g_154.x, (-8L), 0x06L)).s3)), 4294967295UL, 0xCA476E1AL)), ((VECTOR(uint32_t, 16))(4294967295UL))))).s5e, ((VECTOR(uint32_t, 2))(0x14AB7832L))))).hi , l_158)) , (void*)0), (*l_158), &p_902->g_98, l_155.y, p_902);
        return (***p_902->g_365);
    }
    return (**p_902->g_366);
}


/* ------------------------------------------ */
/* 
 * reads : p_902->g_86 p_902->g_166 p_902->g_78 p_902->g_198 p_902->g_228 p_902->g_183 p_902->g_216 p_902->g_179 p_902->g_244 p_902->g_152 p_902->g_98 p_902->g_169 p_902->g_77 p_902->g_305 p_902->g_341 p_902->g_340 p_902->g_358 p_902->g_365 p_902->g_379 p_902->g_339 p_902->g_367 p_902->g_368 p_902->g_366 p_902->l_comm_values p_902->g_387 p_902->g_396 p_902->g_154 p_902->g_408 p_902->g_409
 * writes: p_902->g_86 p_902->g_166 p_902->g_169 p_902->g_179 p_902->g_198 p_902->g_228 p_902->g_183 p_902->g_244 p_902->g_341 p_902->g_340 p_902->g_365 p_902->g_358 p_902->g_396 p_902->g_154 p_902->g_408
 */
int32_t * func_123(uint32_t  p_124, int32_t * p_125, int32_t * p_126, int32_t * p_127, uint32_t  p_128, struct S1 * p_902)
{ /* block id: 65 */
    VECTOR(uint16_t, 8) l_194 = (VECTOR(uint16_t, 8))(0xF0C1L, (VECTOR(uint16_t, 4))(0xF0C1L, (VECTOR(uint16_t, 2))(0xF0C1L, 0x57A3L), 0x57A3L), 0x57A3L, 0xF0C1L, 0x57A3L);
    VECTOR(int32_t, 2) l_224 = (VECTOR(int32_t, 2))(0x712D5290L, 0x530CF1DCL);
    uint32_t l_251 = 4294967295UL;
    int32_t ****l_370 = &p_902->g_366;
    VECTOR(int64_t, 8) l_377 = (VECTOR(int64_t, 8))(0x4BB54069D9D13CB6L, (VECTOR(int64_t, 4))(0x4BB54069D9D13CB6L, (VECTOR(int64_t, 2))(0x4BB54069D9D13CB6L, 0L), 0L), 0L, 0x4BB54069D9D13CB6L, 0L);
    VECTOR(int64_t, 16) l_380 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-5L)), (-5L)), (-5L), (-1L), (-5L), (VECTOR(int64_t, 2))((-1L), (-5L)), (VECTOR(int64_t, 2))((-1L), (-5L)), (-1L), (-5L), (-1L), (-5L));
    int16_t *l_402 = &p_902->g_358;
    int i;
    for (p_124 = 0; (p_124 > 2); p_124 = safe_add_func_uint8_t_u_u(p_124, 3))
    { /* block id: 68 */
        int8_t l_181 = 5L;
        VECTOR(uint32_t, 16) l_191 = (VECTOR(uint32_t, 16))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 1UL), 1UL), 1UL, 4294967287UL, 1UL, (VECTOR(uint32_t, 2))(4294967287UL, 1UL), (VECTOR(uint32_t, 2))(4294967287UL, 1UL), 4294967287UL, 1UL, 4294967287UL, 1UL);
        VECTOR(int32_t, 8) l_223 = (VECTOR(int32_t, 8))(0x22D44B38L, (VECTOR(int32_t, 4))(0x22D44B38L, (VECTOR(int32_t, 2))(0x22D44B38L, 0x37422714L), 0x37422714L), 0x37422714L, 0x22D44B38L, 0x37422714L);
        VECTOR(int16_t, 2) l_245 = (VECTOR(int16_t, 2))((-1L), 0x5385L);
        VECTOR(int8_t, 16) l_252 = (VECTOR(int8_t, 16))(0x45L, (VECTOR(int8_t, 4))(0x45L, (VECTOR(int8_t, 2))(0x45L, 0x79L), 0x79L), 0x79L, 0x45L, 0x79L, (VECTOR(int8_t, 2))(0x45L, 0x79L), (VECTOR(int8_t, 2))(0x45L, 0x79L), 0x45L, 0x79L, 0x45L, 0x79L);
        uint8_t l_297 = 0x0CL;
        VECTOR(uint32_t, 8) l_304 = (VECTOR(uint32_t, 8))(0xA56026EDL, (VECTOR(uint32_t, 4))(0xA56026EDL, (VECTOR(uint32_t, 2))(0xA56026EDL, 4294967295UL), 4294967295UL), 4294967295UL, 0xA56026EDL, 4294967295UL);
        VECTOR(uint16_t, 16) l_311 = (VECTOR(uint16_t, 16))(0x2E4DL, (VECTOR(uint16_t, 4))(0x2E4DL, (VECTOR(uint16_t, 2))(0x2E4DL, 0x5A5DL), 0x5A5DL), 0x5A5DL, 0x2E4DL, 0x5A5DL, (VECTOR(uint16_t, 2))(0x2E4DL, 0x5A5DL), (VECTOR(uint16_t, 2))(0x2E4DL, 0x5A5DL), 0x2E4DL, 0x5A5DL, 0x2E4DL, 0x5A5DL);
        uint16_t *l_329 = &p_902->g_216;
        int16_t l_352 = 0x758EL;
        uint16_t l_359 = 0xD61CL;
        VECTOR(uint16_t, 4) l_360 = (VECTOR(uint16_t, 4))(0x19F9L, (VECTOR(uint16_t, 2))(0x19F9L, 65535UL), 65535UL);
        int32_t *****l_369 = &p_902->g_365;
        int8_t l_388[5];
        int32_t *l_389 = (void*)0;
        int i;
        for (i = 0; i < 5; i++)
            l_388[i] = 5L;
        for (p_902->g_86 = 0; (p_902->g_86 >= 6); p_902->g_86++)
        { /* block id: 71 */
            VECTOR(uint64_t, 16) l_174 = (VECTOR(uint64_t, 16))(0x121851E414F8BB17L, (VECTOR(uint64_t, 4))(0x121851E414F8BB17L, (VECTOR(uint64_t, 2))(0x121851E414F8BB17L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x121851E414F8BB17L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x121851E414F8BB17L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x121851E414F8BB17L, 18446744073709551615UL), 0x121851E414F8BB17L, 18446744073709551615UL, 0x121851E414F8BB17L, 18446744073709551615UL);
            VECTOR(int16_t, 16) l_246 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x6838L), 0x6838L), 0x6838L, 1L, 0x6838L, (VECTOR(int16_t, 2))(1L, 0x6838L), (VECTOR(int16_t, 2))(1L, 0x6838L), 1L, 0x6838L, 1L, 0x6838L);
            VECTOR(int32_t, 2) l_255 = (VECTOR(int32_t, 2))(0x6010E3ADL, 0x43FB299DL);
            VECTOR(int32_t, 8) l_259 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x735F94A4L), 0x735F94A4L), 0x735F94A4L, 0L, 0x735F94A4L);
            uint32_t l_272 = 0x4BBA175DL;
            int64_t *l_330 = (void*)0;
            uint64_t *l_332 = (void*)0;
            uint64_t *l_333 = (void*)0;
            uint64_t *l_334 = (void*)0;
            uint64_t *l_335 = (void*)0;
            uint64_t *l_336 = (void*)0;
            uint64_t *l_337[6];
            int32_t *l_344[1];
            uint64_t l_353 = 18446744073709551613UL;
            int i;
            for (i = 0; i < 6; i++)
                l_337[i] = (void*)0;
            for (i = 0; i < 1; i++)
                l_344[i] = &p_902->g_166[0];
            for (p_128 = (-27); (p_128 != 57); p_128 = safe_add_func_int16_t_s_s(p_128, 9))
            { /* block id: 74 */
                VECTOR(uint64_t, 16) l_175 = (VECTOR(uint64_t, 16))(0xA7AC5B85297743FDL, (VECTOR(uint64_t, 4))(0xA7AC5B85297743FDL, (VECTOR(uint64_t, 2))(0xA7AC5B85297743FDL, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0xA7AC5B85297743FDL, 18446744073709551610UL, (VECTOR(uint64_t, 2))(0xA7AC5B85297743FDL, 18446744073709551610UL), (VECTOR(uint64_t, 2))(0xA7AC5B85297743FDL, 18446744073709551610UL), 0xA7AC5B85297743FDL, 18446744073709551610UL, 0xA7AC5B85297743FDL, 18446744073709551610UL);
                int32_t l_184 = 1L;
                int8_t l_195 = 6L;
                int32_t *l_197 = (void*)0;
                int32_t **l_196 = &l_197;
                uint8_t *l_238 = (void*)0;
                uint8_t *l_239[7];
                int16_t *l_242 = &p_902->g_183;
                VECTOR(int16_t, 8) l_243 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
                VECTOR(int32_t, 4) l_256 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2758BBC1L), 0x2758BBC1L);
                int32_t *l_257 = (void*)0;
                int32_t *l_258 = &p_902->g_169;
                int32_t *****l_262 = (void*)0;
                int32_t *****l_263 = (void*)0;
                int32_t ***l_266[3][5][6] = {{{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196}},{{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196}},{{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196},{&l_196,&l_196,&l_196,&l_196,(void*)0,&l_196}}};
                int32_t ****l_265[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t *****l_264 = &l_265[7];
                int16_t *l_267 = (void*)0;
                int16_t *l_268 = (void*)0;
                int16_t *l_269 = (void*)0;
                int16_t *l_270 = (void*)0;
                int16_t *l_271[5];
                VECTOR(int8_t, 2) l_279 = (VECTOR(int8_t, 2))((-9L), 0x6AL);
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_239[i] = (void*)0;
                for (i = 0; i < 5; i++)
                    l_271[i] = &p_902->g_228;
                for (p_902->g_166[0] = 17; (p_902->g_166[0] >= (-27)); p_902->g_166[0] = safe_sub_func_int16_t_s_s(p_902->g_166[0], 1))
                { /* block id: 77 */
                    VECTOR(uint16_t, 4) l_180 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65530UL), 65530UL);
                    int32_t l_226[4] = {9L,9L,9L,9L};
                    int i;
                    for (p_902->g_169 = 8; (p_902->g_169 >= 23); p_902->g_169++)
                    { /* block id: 80 */
                        uint64_t *l_176 = (void*)0;
                        uint64_t *l_177 = (void*)0;
                        uint64_t *l_178 = (void*)0;
                        int16_t *l_182[4][5][2] = {{{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0}},{{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0}},{{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0}},{{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0},{&p_902->g_183,(void*)0}}};
                        VECTOR(uint8_t, 2) l_205 = (VECTOR(uint8_t, 2))(0xD7L, 0x11L);
                        uint16_t *l_214 = (void*)0;
                        uint16_t *l_215[6][10][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                        int64_t *l_225[8][2][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        VECTOR(int16_t, 16) l_227 = (VECTOR(int16_t, 16))(0x68D0L, (VECTOR(int16_t, 4))(0x68D0L, (VECTOR(int16_t, 2))(0x68D0L, 0x50EFL), 0x50EFL), 0x50EFL, 0x68D0L, 0x50EFL, (VECTOR(int16_t, 2))(0x68D0L, 0x50EFL), (VECTOR(int16_t, 2))(0x68D0L, 0x50EFL), 0x68D0L, 0x50EFL, 0x68D0L, 0x50EFL);
                        int32_t *l_229 = (void*)0;
                        int32_t *l_230 = (void*)0;
                        int32_t *l_231 = &l_184;
                        int i, j, k;
                        atomic_and(&p_902->l_atomic_reduction[0], ((VECTOR(int32_t, 8))((((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 2))(l_174.s31)).yyxxxxyxxyxxyyxy, ((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 2))(l_175.s3a)), (uint64_t)(p_902->g_179 = (p_124 != GROUP_DIVERGE(1, 1)))))).yyxyyyyxyyyyyxxy))).s2 && ((((VECTOR(uint16_t, 16))(l_180.xwzzwzwywyywzyyy)).sb < (((l_184 |= (+l_181)) >= p_902->g_166[0]) ^ (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))((((safe_div_func_uint32_t_u_u(((p_124 >= l_181) > ((-3L) < (safe_div_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(((((((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(l_191.se80a38d96ed306ee))))))).s1 , (((safe_sub_func_uint64_t_u_u(0x0DB5DDC821130A59L, (((VECTOR(uint16_t, 2))(l_194.s76)).even <= l_195))) || l_194.s6) == 4294967288UL)) < 0x7653A475L) , (void*)0) != l_196), p_128)), 0xF9BDL)))), 0x461E929FL)) , p_128) <= p_124), (-1L), 1L, 0x6B02DE7CL)))).z | 0x7EB43B87L))) == p_902->g_78.x)), 1L, ((VECTOR(int32_t, 2))(0x3CEDE3C0L)), 0x5E1003F1L, ((VECTOR(int32_t, 2))(0x78E820DDL)), 0x2330C0D3L)).s2);
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_902->v_collective += p_902->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_902->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u(0x897D55FBL, 10))][(safe_mod_func_uint32_t_u_u(p_902->tid, 1))]));
                        --p_902->g_198;
                        (*l_231) = (((p_902->g_228 &= (((0xD6F662FD86165CE2L & ((safe_lshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(0x3BL, ((VECTOR(uint8_t, 2))(7UL, 0x75L)), 255UL, 0xEFL, 0UL, ((VECTOR(uint8_t, 4))(l_205.yyyy)), ((safe_mul_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((~(safe_sub_func_int16_t_s_s((0x790F1C07AC505A15L == p_128), ((p_902->g_216 = (safe_rshift_func_uint8_t_u_u((0x788ED9E33FC4FF34L < l_205.x), p_902->g_77.y))) != (((safe_sub_func_uint32_t_u_u((safe_sub_func_int8_t_s_s((GROUP_DIVERGE(1, 1) , (((((-1L) > (+(l_181 & (l_226[2] &= (p_902->l_comm_values[(safe_mod_func_uint32_t_u_u(p_902->tid, 1))] = ((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(l_223.s21)).yxyyyyyy, ((VECTOR(int32_t, 8))(l_224.xyyxxyxx))))).s2, l_224.y)) != p_128)))))) , l_194.s4) | GROUP_DIVERGE(1, 1)) ^ 0x33L)), 0x35L)), p_902->g_comm_values[p_902->tid])) , l_205.x) | l_227.s1))))), l_180.x)) < p_902->g_179), p_124)) , FAKE_DIVERGE(p_902->local_2_offset, get_local_id(2), 10)), 248UL, ((VECTOR(uint8_t, 4))(248UL)))).s3, p_124)), 5)) == p_128)) < l_180.x) == FAKE_DIVERGE(p_902->global_0_offset, get_global_id(0), 10))) , l_227.s8) > 0L);
                    }
                    (*l_196) = p_127;
                }
                p_902->g_166[0] = (safe_add_func_uint64_t_u_u(p_124, (safe_mod_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_s((l_224.y ^= 0xBEL), 2)) > (safe_rshift_func_int16_t_s_u(((*l_242) &= l_194.s1), p_902->g_216))) > (((p_902->g_179 != ((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 16))(l_243.s5213111415403725)), ((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 4))(p_902->g_244.s3112)).lo, ((VECTOR(int16_t, 2))(l_245.xy))))).xyxxxxyx, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(l_246.scc)).yxxyxxxx, (int16_t)(safe_rshift_func_int16_t_s_s((l_223.s7 = (p_902->g_244.sc = ((VECTOR(int16_t, 4))((safe_add_func_uint32_t_u_u(((p_902->g_152 != (((+(l_251 | ((VECTOR(int8_t, 8))(l_252.s9f5a4cc5)).s4)) ^ (safe_add_func_uint8_t_u_u((((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_255.yx)))), ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(((*l_258) = ((VECTOR(int32_t, 4))(l_256.wwwx)).x), ((VECTOR(int32_t, 2))(1L, 0x3D5A3E0DL)), 0x7EB74050L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 16))(l_259.s7423747401070622)).lo, (int32_t)((l_246.sa <= (safe_mod_func_uint32_t_u_u((((*l_264) = (void*)0) != (void*)0), l_251))) , (*p_127))))).s26, ((VECTOR(int32_t, 2))(1L))))).yyxy, ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 4))(0x0FAC9DCBL))))).lo)), 4L, 0x3476BEEBL))))), 0x12F18913L, l_252.s7, 5L, ((VECTOR(int32_t, 2))(0x2570827CL)), 0x323CF24CL)), ((VECTOR(int32_t, 16))(0x50B55079L))))).s1 , FAKE_DIVERGE(p_902->local_0_offset, get_local_id(0), 10)), l_194.s3))) , &p_126)) >= (-10L)), p_128)), 8L, 0x01BEL, 0x6FF1L)).w)), p_902->g_228))))).s7420362457102434)).hi))).s5513436331677612))).sc) < p_124) & FAKE_DIVERGE(p_902->group_1_offset, get_group_id(1), 10))), l_259.s0))));
                if (l_272)
                    break;
                for (l_272 = 0; (l_272 != 12); l_272++)
                { /* block id: 106 */
                    int32_t l_294 = 0x185B5812L;
                    int32_t l_295 = 0x6FBBDF44L;
                    int32_t l_296 = 0x08666FD0L;
                    VECTOR(uint16_t, 8) l_314 = (VECTOR(uint16_t, 8))(0x7B76L, (VECTOR(uint16_t, 4))(0x7B76L, (VECTOR(uint16_t, 2))(0x7B76L, 4UL), 4UL), 4UL, 0x7B76L, 4UL);
                    int i;
                    if (((safe_rshift_func_uint16_t_u_s((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 8))(l_279.yxxyyyyx)).s7450103312371267, ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))(0x17L, 2L, (p_902->g_166[0] , p_128), ((VECTOR(int8_t, 4))(0x0DL, 0x71L, 0x48L, 0L)).w, 0x7CL, (safe_mul_func_uint16_t_u_u(((*p_127) > (safe_add_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((((safe_sub_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((p_128 , 0x078C291C5DBEE813L), (safe_sub_func_uint64_t_u_u(p_128, (1L & ((safe_mod_func_uint8_t_u_u(((*l_258) && p_124), GROUP_DIVERGE(1, 1))) ^ p_902->g_77.y)))))), p_124)) != 0x7827L) , GROUP_DIVERGE(1, 1)), p_902->g_78.y)), l_255.y))), p_124)), ((VECTOR(int8_t, 4))(8L)), ((VECTOR(int8_t, 4))(1L)), 1L, 0x7EL)), ((VECTOR(int8_t, 16))((-9L))), ((VECTOR(int8_t, 16))(0x79L))))), ((VECTOR(int8_t, 16))(3L))))).sb1, ((VECTOR(int8_t, 2))(0L))))).hi, p_124)), 12)) < FAKE_DIVERGE(p_902->global_1_offset, get_global_id(1), 10)))
                    { /* block id: 107 */
                        l_297--;
                    }
                    else
                    { /* block id: 109 */
                        VECTOR(uint64_t, 8) l_306 = (VECTOR(uint64_t, 8))(0x22198BB88364EAC2L, (VECTOR(uint64_t, 4))(0x22198BB88364EAC2L, (VECTOR(uint64_t, 2))(0x22198BB88364EAC2L, 0UL), 0UL), 0UL, 0x22198BB88364EAC2L, 0UL);
                        int i;
                        l_295 = (((VECTOR(int64_t, 8))((((safe_mod_func_int32_t_s_s(((safe_add_func_uint16_t_u_u(p_124, ((*l_242) &= 0x1628L))) , (((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0xE2FA64CBL, 4294967295UL)), 4294967286UL, 0x371E2110L)).zzzwxxzwyyxxxxzy, ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 2))(0UL, 0xF65AAB42L)).yyxyxxxx))).s46, ((VECTOR(uint32_t, 4))(l_304.s1002)).even))).xxxyxyxxxxyyxxyx, ((VECTOR(uint32_t, 2))(p_902->g_305.s06)).yyxxyxyyxyyyxyyy))).s4 <= ((((VECTOR(uint64_t, 16))(l_306.s5177217372377137)).s6 && ((((p_902->g_169 , ((*p_127) & (((safe_div_func_uint64_t_u_u((((safe_div_func_uint8_t_u_u(((((VECTOR(uint16_t, 8))(l_311.s15f9fa12)).s3 && ((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_314.s25030746)).s0, 10)) , (safe_mod_func_int32_t_s_s((*p_127), 0x61AF3581L)))) | (safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0xCAD8L, 65532UL)).even, 12)) == (((safe_rshift_func_int16_t_s_u(l_246.sc, ((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 4))(((((safe_mul_func_int8_t_s_s(((+(safe_rshift_func_uint16_t_u_s((((p_902->g_77.x < (safe_div_func_uint32_t_u_u((l_329 == (void*)0), l_306.s6))) == l_314.s2) , 0xDB58L), p_902->g_198))) & 1L), l_296)) , p_902->g_305.s1) , l_255.y) < 4L), l_246.sd, 0x32F9L, 0x590FL)).wwzzwwzy, ((VECTOR(int16_t, 8))((-1L))), ((VECTOR(int16_t, 8))((-7L)))))).s42))).hi)) , p_902->g_198) > 0x3F7F5AD6L)), 0x01L))), p_128)) , (void*)0) == l_330), p_124)) || p_124) ^ l_191.s1))) < l_224.y) != (*p_127)) != p_124)) != p_902->g_244.s5))), p_128)) <= 0x9A400A4BL) & 1L), p_902->g_216, (-1L), ((VECTOR(int64_t, 4))(0x0C025073432158CEL)), 0L)).s4 == 0UL);
                    }
                }
            }
            l_223.s4 = (l_245.x | (~(safe_unary_minus_func_int32_t_s((p_128 > (p_902->g_341[7]--))))));
            for (p_902->g_340 = (-23); (p_902->g_340 >= (-18)); ++p_902->g_340)
            { /* block id: 119 */
                int64_t l_347[5];
                int32_t l_348 = 0x4F1B9D26L;
                int32_t l_349 = 0L;
                int32_t l_350 = 0x18406DD3L;
                int32_t l_351[2][9] = {{0x7ECB7C2DL,0x7ECB7C2DL,0x067E601EL,(-1L),6L,(-1L),0x067E601EL,0x7ECB7C2DL,0x7ECB7C2DL},{0x7ECB7C2DL,0x7ECB7C2DL,0x067E601EL,(-1L),6L,(-1L),0x067E601EL,0x7ECB7C2DL,0x7ECB7C2DL}};
                int i, j;
                for (i = 0; i < 5; i++)
                    l_347[i] = 0x673CEEFFC3A6CB21L;
                l_353--;
                l_359 |= (safe_mul_func_uint8_t_u_u((p_902->g_169 && p_902->g_358), p_128));
                p_902->g_166[0] ^= (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(l_360.xyyyxxzz)).lo)).w == ((VECTOR(uint16_t, 2))(0xB255L, 4UL)).odd);
            }
        }
        if ((atomic_inc(&p_902->g_atomic_input[82 * get_linear_group_id() + 7]) == 2))
        { /* block id: 126 */
            uint16_t l_361 = 0x2D92L;
            int32_t l_362 = 1L;
            uint64_t l_363 = 18446744073709551606UL;
            int32_t *l_364 = (void*)0;
            l_363 |= (l_362 = l_361);
            l_364 = l_364;
            unsigned int result = 0;
            result += l_361;
            result += l_362;
            result += l_363;
            atomic_add(&p_902->g_special_values[82 * get_linear_group_id() + 7], result);
        }
        else
        { /* block id: 130 */
            (1 + 1);
        }
        (**p_902->g_367) = (((((((*l_369) = p_902->g_365) == (l_370 = &p_902->g_366)) & (safe_mod_func_uint8_t_u_u(3UL, l_194.s6))) > (((safe_mod_func_uint16_t_u_u(p_902->g_78.y, (safe_mul_func_int8_t_s_s(p_902->g_166[0], (((VECTOR(int64_t, 4))(l_194.s7, 0x3B2BFED14DB55FF4L, 0x7D6A43AA1151E71AL, 0x286B5A27A63C02B2L)).x > ((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(p_902->g_179, ((VECTOR(int64_t, 8))(l_377.s07341040)).s1, (-9L), 0x06DFF315E9DFFE23L)), 0x18ECB908F129E919L, 0x48F4A693FB2FE35AL, (safe_unary_minus_func_int32_t_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_902->g_379.s3e2e65c6)).s03)).odd)), 0x15D64C1A4C303FD6L, ((VECTOR(int64_t, 4))(l_380.s3204)).y, l_194.s1, 0x3E327C05B540A995L, (-6L), l_377.s4, p_902->g_339, 0x1872EAC13083529EL, 1L)).s33)), 0x4CA4461D6DC17AE8L, 0L)).odd, ((VECTOR(int64_t, 2))(0x6AFF1917F859FEF4L))))).yyyyxyyyxxxxyxyx, ((VECTOR(int64_t, 16))((-1L))), ((VECTOR(int64_t, 16))((-1L)))))).s3))))) && FAKE_DIVERGE(p_902->group_1_offset, get_group_id(1), 10)) < l_251)) == 0x7C0370D9L) , (*p_127));
        p_902->g_169 ^= (FAKE_DIVERGE(p_902->local_2_offset, get_local_id(2), 10) , (safe_sub_func_uint8_t_u_u((p_902->g_179 , (safe_mod_func_uint16_t_u_u((((safe_sub_func_int32_t_s_s((****l_370), (&l_297 != ((p_902->l_comm_values[(safe_mod_func_uint32_t_u_u(p_902->tid, 1))] || (p_902->g_86 , (****l_370))) , p_902->g_387[1][1])))) > ((p_902->g_305.s1 < (****l_370)) <= (*****l_369))) == (-4L)), l_388[2]))), (*****l_369))));
    }
    for (p_902->g_358 = 0; (p_902->g_358 >= (-12)); p_902->g_358 = safe_sub_func_uint64_t_u_u(p_902->g_358, 5))
    { /* block id: 140 */
        uint64_t *l_395[10][5][5] = {{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}},{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}},{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}},{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}},{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}},{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}},{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}},{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}},{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}},{{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396},{&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396,&p_902->g_396}}};
        int32_t l_397 = 0x19BE26A9L;
        uint32_t *l_405 = (void*)0;
        VECTOR(uint32_t, 16) l_410 = (VECTOR(uint32_t, 16))(0x8446DA62L, (VECTOR(uint32_t, 4))(0x8446DA62L, (VECTOR(uint32_t, 2))(0x8446DA62L, 0x837515D1L), 0x837515D1L), 0x837515D1L, 0x8446DA62L, 0x837515D1L, (VECTOR(uint32_t, 2))(0x8446DA62L, 0x837515D1L), (VECTOR(uint32_t, 2))(0x8446DA62L, 0x837515D1L), 0x8446DA62L, 0x837515D1L, 0x8446DA62L, 0x837515D1L);
        VECTOR(uint16_t, 16) l_411 = (VECTOR(uint16_t, 16))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 65535UL), 65535UL), 65535UL, 8UL, 65535UL, (VECTOR(uint16_t, 2))(8UL, 65535UL), (VECTOR(uint16_t, 2))(8UL, 65535UL), 8UL, 65535UL, 8UL, 65535UL);
        int i, j, k;
        (***p_902->g_366) = 0L;
        if ((atomic_inc(&p_902->l_atomic_input[31]) == 4))
        { /* block id: 143 */
            int32_t l_393 = 0x0B204760L;
            int32_t *l_392 = &l_393;
            int32_t *l_394 = (void*)0;
            l_394 = l_392;
            unsigned int result = 0;
            result += l_393;
            atomic_add(&p_902->l_special_values[31], result);
        }
        else
        { /* block id: 145 */
            (1 + 1);
        }
        l_397 ^= (((--p_902->g_396) & p_124) ^ (safe_rshift_func_uint16_t_u_s((((((p_124 , ((****p_902->g_365) = ((void*)0 == &p_902->g_216))) , l_395[0][4][2]) != (void*)0) , l_402) != (void*)0), 11)));
        (****l_370) = (safe_sub_func_int32_t_s_s(0x7F85A7FDL, ((VECTOR(uint32_t, 16))((p_902->g_154.w &= p_128), 0UL, ((safe_rshift_func_int8_t_s_u((****l_370), 1)) , ((p_124 == (!0x188EL)) != 0x11L)), 0UL, 7UL, (p_902->g_408 , ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 16))(p_902->g_409.yxxxxxyxxyxyyxxx)).s1fcc, ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 2))(0UL, 6UL)), ((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x3BB2L, 0x4863L)), 0L, 0x5E65L)).lo)), 1L, 1L)))))).lo)))))).yyxy, ((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 8))(l_410.sd5fdc4dd)).s62, ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 2))(0x6312L, 65527UL)), ((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(l_411.s3b60000b)).lo)).wwyyxywy, ((VECTOR(uint16_t, 8))(1UL, ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 8))(1UL, p_128, p_902->g_244.s5, 65532UL, p_128, ((VECTOR(uint16_t, 2))(0x472DL)), 0UL)).even, ((VECTOR(uint16_t, 4))(5UL)), ((VECTOR(uint16_t, 4))(1UL))))), 65529UL, 0xD213L, 0x486CL))))).s61)))))).yxxxxxyxyyxyyxyx, ((VECTOR(uint32_t, 16))(0x9209365EL)), ((VECTOR(uint32_t, 16))(4294967287UL))))).s6ec1))).zwxwzzxw, ((VECTOR(uint32_t, 8))(0xD1A9D90CL))))))).s3), 8UL, 0x073E5FF7L, ((VECTOR(uint32_t, 8))(2UL)))).se));
    }
    for (p_902->g_408 = 12; (p_902->g_408 < 26); p_902->g_408 = safe_add_func_uint16_t_u_u(p_902->g_408, 8))
    { /* block id: 156 */
        if ((atomic_inc(&p_902->g_atomic_input[82 * get_linear_group_id() + 12]) == 9))
        { /* block id: 158 */
            int32_t l_414 = 0x1FE4CA5FL;
            for (l_414 = 18; (l_414 != 10); l_414 = safe_sub_func_uint8_t_u_u(l_414, 7))
            { /* block id: 161 */
                uint32_t l_417 = 0xDA4C29D5L;
                int32_t l_418 = (-6L);
                int32_t l_420 = 0x56B23FA6L;
                int32_t *l_419[10] = {&l_420,&l_420,&l_420,&l_420,&l_420,&l_420,&l_420,&l_420,&l_420,&l_420};
                int32_t *l_421 = &l_420;
                int i;
                l_418 |= l_417;
                l_421 = l_419[1];
            }
            unsigned int result = 0;
            result += l_414;
            atomic_add(&p_902->g_special_values[82 * get_linear_group_id() + 12], result);
        }
        else
        { /* block id: 165 */
            (1 + 1);
        }
    }
    return (***l_370);
}


/* ------------------------------------------ */
/* 
 * reads : p_902->g_98 p_902->l_comm_values p_902->g_86
 * writes: p_902->g_86
 */
uint32_t  func_132(int32_t ** p_133, struct S1 * p_902)
{ /* block id: 57 */
    int16_t l_137[7][6][6] = {{{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)}},{{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)}},{{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)}},{{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)}},{{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)}},{{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)}},{{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)},{0L,7L,5L,0L,0x6F00L,(-3L)}}};
    int32_t l_140 = (-1L);
    int32_t *l_141 = (void*)0;
    int32_t ****l_142 = (void*)0;
    int32_t *l_146 = &p_902->g_98;
    int32_t **l_145 = &l_146;
    int32_t ***l_144 = &l_145;
    int32_t ****l_143 = &l_144;
    int32_t ***l_148 = &l_145;
    int32_t ****l_147 = &l_148;
    int32_t *l_151 = &p_902->g_86;
    int i, j, k;
    (*l_151) |= (safe_sub_func_uint8_t_u_u((((((((l_137[6][0][2] , (safe_sub_func_uint32_t_u_u(((l_140 |= 1L) & (((*p_133) = &p_902->g_98) != (l_141 = l_141))), (&p_133 != ((*l_147) = ((*l_143) = &p_133)))))) & ((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(7UL, 4294967286UL)).xxxy)), ((VECTOR(uint32_t, 8))(((((0xFCD55C4C9A3B3A30L & 0x110810DBFEEEC834L) > (safe_add_func_uint64_t_u_u(0x501709B1759178C7L, 9L))) | (*l_146)) | 0UL), 0x433E8011L, 0UL, 0x0B726DB9L, p_902->g_98, ((VECTOR(uint32_t, 2))(0UL)), 0x970B6291L)).hi))).x) , p_133) != (void*)0) ^ (**l_145)) != (**l_145)) , 249UL), p_902->l_comm_values[(safe_mod_func_uint32_t_u_u(p_902->tid, 1))]));
    return p_902->g_98;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[82];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 82; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[82];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 82; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_comm_values[i] = 1;
    struct S1 c_903;
    struct S1* p_902 = &c_903;
    struct S1 c_904 = {
        (VECTOR(uint16_t, 16))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0xC699L), 0xC699L), 0xC699L, 6UL, 0xC699L, (VECTOR(uint16_t, 2))(6UL, 0xC699L), (VECTOR(uint16_t, 2))(6UL, 0xC699L), 6UL, 0xC699L, 6UL, 0xC699L), // p_902->g_62
        (VECTOR(uint8_t, 2))(253UL, 0UL), // p_902->g_77
        (VECTOR(uint8_t, 2))(1UL, 1UL), // p_902->g_78
        1L, // p_902->g_86
        0L, // p_902->g_98
        &p_902->g_98, // p_902->g_153
        &p_902->g_153, // p_902->g_152
        (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 8UL), 8UL), // p_902->g_154
        {(-9L)}, // p_902->g_166
        0x1DCD68DEL, // p_902->g_169
        7L, // p_902->g_179
        5L, // p_902->g_183
        1UL, // p_902->g_198
        0xC997L, // p_902->g_216
        1L, // p_902->g_228
        (VECTOR(int16_t, 16))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x3F51L), 0x3F51L), 0x3F51L, (-4L), 0x3F51L, (VECTOR(int16_t, 2))((-4L), 0x3F51L), (VECTOR(int16_t, 2))((-4L), 0x3F51L), (-4L), 0x3F51L, (-4L), 0x3F51L), // p_902->g_244
        (VECTOR(uint32_t, 8))(6UL, (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 0x18D38731L), 0x18D38731L), 0x18D38731L, 6UL, 0x18D38731L), // p_902->g_305
        (-9L), // p_902->g_338
        0L, // p_902->g_339
        0x464E2536L, // p_902->g_340
        {0x27F66A12L,0xFC8B711DL,1UL,0xFC8B711DL,0x27F66A12L,0x27F66A12L,0xFC8B711DL,1UL,0xFC8B711DL,0x27F66A12L}, // p_902->g_341
        1L, // p_902->g_358
        &p_902->g_166[0], // p_902->g_368
        &p_902->g_368, // p_902->g_367
        &p_902->g_367, // p_902->g_366
        &p_902->g_366, // p_902->g_365
        (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x2D3CB1D2L), 0x2D3CB1D2L), 0x2D3CB1D2L, (-8L), 0x2D3CB1D2L, (VECTOR(int32_t, 2))((-8L), 0x2D3CB1D2L), (VECTOR(int32_t, 2))((-8L), 0x2D3CB1D2L), (-8L), 0x2D3CB1D2L, (-8L), 0x2D3CB1D2L), // p_902->g_379
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_902->g_387
        0xE9C89B49B4E7FA2CL, // p_902->g_396
        0x83L, // p_902->g_408
        (VECTOR(uint32_t, 2))(1UL, 0x80476B54L), // p_902->g_409
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 5L), 5L), 5L, (-1L), 5L), // p_902->g_424
        0xD25988F0L, // p_902->g_439
        (VECTOR(uint32_t, 2))(0xEADAED35L, 4294967287UL), // p_902->g_449
        (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xC5CF54DBL), 0xC5CF54DBL), // p_902->g_450
        (VECTOR(uint64_t, 2))(0x65886C57F8F23D9EL, 0xB1949D50EA5A63E4L), // p_902->g_455
        (VECTOR(int64_t, 2))((-3L), 0L), // p_902->g_505
        (VECTOR(int32_t, 4))(0x5F46E964L, (VECTOR(int32_t, 2))(0x5F46E964L, (-1L)), (-1L)), // p_902->g_549
        0x7524D67D747CF8B9L, // p_902->g_550
        1L, // p_902->g_553
        0xF1CD3ED3201AA26DL, // p_902->g_646
        &p_902->g_646, // p_902->g_645
        &p_902->g_645, // p_902->g_644
        {{{{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL}},{{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL}}},{{{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL}},{{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL}}},{{{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL}},{{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL},{0x0ECBL}}}}, // p_902->g_653
        &p_902->g_653[2][0][2], // p_902->g_652
        &p_902->g_169, // p_902->g_813
        (void*)0, // p_902->g_876
        &p_902->g_876, // p_902->g_875
        {0x63L,0x63L,0x63L,0x63L,0x63L,0x63L,0x63L,0x63L}, // p_902->g_889
        0, // p_902->v_collective
        sequence_input[get_global_id(0)], // p_902->global_0_offset
        sequence_input[get_global_id(1)], // p_902->global_1_offset
        sequence_input[get_global_id(2)], // p_902->global_2_offset
        sequence_input[get_local_id(0)], // p_902->local_0_offset
        sequence_input[get_local_id(1)], // p_902->local_1_offset
        sequence_input[get_local_id(2)], // p_902->local_2_offset
        sequence_input[get_group_id(0)], // p_902->group_0_offset
        sequence_input[get_group_id(1)], // p_902->group_1_offset
        sequence_input[get_group_id(2)], // p_902->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[0][get_linear_local_id()])), // p_902->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_903 = c_904;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_902);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_902->g_62.s0, "p_902->g_62.s0", print_hash_value);
    transparent_crc(p_902->g_62.s1, "p_902->g_62.s1", print_hash_value);
    transparent_crc(p_902->g_62.s2, "p_902->g_62.s2", print_hash_value);
    transparent_crc(p_902->g_62.s3, "p_902->g_62.s3", print_hash_value);
    transparent_crc(p_902->g_62.s4, "p_902->g_62.s4", print_hash_value);
    transparent_crc(p_902->g_62.s5, "p_902->g_62.s5", print_hash_value);
    transparent_crc(p_902->g_62.s6, "p_902->g_62.s6", print_hash_value);
    transparent_crc(p_902->g_62.s7, "p_902->g_62.s7", print_hash_value);
    transparent_crc(p_902->g_62.s8, "p_902->g_62.s8", print_hash_value);
    transparent_crc(p_902->g_62.s9, "p_902->g_62.s9", print_hash_value);
    transparent_crc(p_902->g_62.sa, "p_902->g_62.sa", print_hash_value);
    transparent_crc(p_902->g_62.sb, "p_902->g_62.sb", print_hash_value);
    transparent_crc(p_902->g_62.sc, "p_902->g_62.sc", print_hash_value);
    transparent_crc(p_902->g_62.sd, "p_902->g_62.sd", print_hash_value);
    transparent_crc(p_902->g_62.se, "p_902->g_62.se", print_hash_value);
    transparent_crc(p_902->g_62.sf, "p_902->g_62.sf", print_hash_value);
    transparent_crc(p_902->g_77.x, "p_902->g_77.x", print_hash_value);
    transparent_crc(p_902->g_77.y, "p_902->g_77.y", print_hash_value);
    transparent_crc(p_902->g_78.x, "p_902->g_78.x", print_hash_value);
    transparent_crc(p_902->g_78.y, "p_902->g_78.y", print_hash_value);
    transparent_crc(p_902->g_86, "p_902->g_86", print_hash_value);
    transparent_crc(p_902->g_98, "p_902->g_98", print_hash_value);
    transparent_crc(p_902->g_154.x, "p_902->g_154.x", print_hash_value);
    transparent_crc(p_902->g_154.y, "p_902->g_154.y", print_hash_value);
    transparent_crc(p_902->g_154.z, "p_902->g_154.z", print_hash_value);
    transparent_crc(p_902->g_154.w, "p_902->g_154.w", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_902->g_166[i], "p_902->g_166[i]", print_hash_value);

    }
    transparent_crc(p_902->g_169, "p_902->g_169", print_hash_value);
    transparent_crc(p_902->g_179, "p_902->g_179", print_hash_value);
    transparent_crc(p_902->g_183, "p_902->g_183", print_hash_value);
    transparent_crc(p_902->g_198, "p_902->g_198", print_hash_value);
    transparent_crc(p_902->g_216, "p_902->g_216", print_hash_value);
    transparent_crc(p_902->g_228, "p_902->g_228", print_hash_value);
    transparent_crc(p_902->g_244.s0, "p_902->g_244.s0", print_hash_value);
    transparent_crc(p_902->g_244.s1, "p_902->g_244.s1", print_hash_value);
    transparent_crc(p_902->g_244.s2, "p_902->g_244.s2", print_hash_value);
    transparent_crc(p_902->g_244.s3, "p_902->g_244.s3", print_hash_value);
    transparent_crc(p_902->g_244.s4, "p_902->g_244.s4", print_hash_value);
    transparent_crc(p_902->g_244.s5, "p_902->g_244.s5", print_hash_value);
    transparent_crc(p_902->g_244.s6, "p_902->g_244.s6", print_hash_value);
    transparent_crc(p_902->g_244.s7, "p_902->g_244.s7", print_hash_value);
    transparent_crc(p_902->g_244.s8, "p_902->g_244.s8", print_hash_value);
    transparent_crc(p_902->g_244.s9, "p_902->g_244.s9", print_hash_value);
    transparent_crc(p_902->g_244.sa, "p_902->g_244.sa", print_hash_value);
    transparent_crc(p_902->g_244.sb, "p_902->g_244.sb", print_hash_value);
    transparent_crc(p_902->g_244.sc, "p_902->g_244.sc", print_hash_value);
    transparent_crc(p_902->g_244.sd, "p_902->g_244.sd", print_hash_value);
    transparent_crc(p_902->g_244.se, "p_902->g_244.se", print_hash_value);
    transparent_crc(p_902->g_244.sf, "p_902->g_244.sf", print_hash_value);
    transparent_crc(p_902->g_305.s0, "p_902->g_305.s0", print_hash_value);
    transparent_crc(p_902->g_305.s1, "p_902->g_305.s1", print_hash_value);
    transparent_crc(p_902->g_305.s2, "p_902->g_305.s2", print_hash_value);
    transparent_crc(p_902->g_305.s3, "p_902->g_305.s3", print_hash_value);
    transparent_crc(p_902->g_305.s4, "p_902->g_305.s4", print_hash_value);
    transparent_crc(p_902->g_305.s5, "p_902->g_305.s5", print_hash_value);
    transparent_crc(p_902->g_305.s6, "p_902->g_305.s6", print_hash_value);
    transparent_crc(p_902->g_305.s7, "p_902->g_305.s7", print_hash_value);
    transparent_crc(p_902->g_338, "p_902->g_338", print_hash_value);
    transparent_crc(p_902->g_339, "p_902->g_339", print_hash_value);
    transparent_crc(p_902->g_340, "p_902->g_340", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_902->g_341[i], "p_902->g_341[i]", print_hash_value);

    }
    transparent_crc(p_902->g_358, "p_902->g_358", print_hash_value);
    transparent_crc(p_902->g_379.s0, "p_902->g_379.s0", print_hash_value);
    transparent_crc(p_902->g_379.s1, "p_902->g_379.s1", print_hash_value);
    transparent_crc(p_902->g_379.s2, "p_902->g_379.s2", print_hash_value);
    transparent_crc(p_902->g_379.s3, "p_902->g_379.s3", print_hash_value);
    transparent_crc(p_902->g_379.s4, "p_902->g_379.s4", print_hash_value);
    transparent_crc(p_902->g_379.s5, "p_902->g_379.s5", print_hash_value);
    transparent_crc(p_902->g_379.s6, "p_902->g_379.s6", print_hash_value);
    transparent_crc(p_902->g_379.s7, "p_902->g_379.s7", print_hash_value);
    transparent_crc(p_902->g_379.s8, "p_902->g_379.s8", print_hash_value);
    transparent_crc(p_902->g_379.s9, "p_902->g_379.s9", print_hash_value);
    transparent_crc(p_902->g_379.sa, "p_902->g_379.sa", print_hash_value);
    transparent_crc(p_902->g_379.sb, "p_902->g_379.sb", print_hash_value);
    transparent_crc(p_902->g_379.sc, "p_902->g_379.sc", print_hash_value);
    transparent_crc(p_902->g_379.sd, "p_902->g_379.sd", print_hash_value);
    transparent_crc(p_902->g_379.se, "p_902->g_379.se", print_hash_value);
    transparent_crc(p_902->g_379.sf, "p_902->g_379.sf", print_hash_value);
    transparent_crc(p_902->g_396, "p_902->g_396", print_hash_value);
    transparent_crc(p_902->g_408, "p_902->g_408", print_hash_value);
    transparent_crc(p_902->g_409.x, "p_902->g_409.x", print_hash_value);
    transparent_crc(p_902->g_409.y, "p_902->g_409.y", print_hash_value);
    transparent_crc(p_902->g_424.s0, "p_902->g_424.s0", print_hash_value);
    transparent_crc(p_902->g_424.s1, "p_902->g_424.s1", print_hash_value);
    transparent_crc(p_902->g_424.s2, "p_902->g_424.s2", print_hash_value);
    transparent_crc(p_902->g_424.s3, "p_902->g_424.s3", print_hash_value);
    transparent_crc(p_902->g_424.s4, "p_902->g_424.s4", print_hash_value);
    transparent_crc(p_902->g_424.s5, "p_902->g_424.s5", print_hash_value);
    transparent_crc(p_902->g_424.s6, "p_902->g_424.s6", print_hash_value);
    transparent_crc(p_902->g_424.s7, "p_902->g_424.s7", print_hash_value);
    transparent_crc(p_902->g_439, "p_902->g_439", print_hash_value);
    transparent_crc(p_902->g_449.x, "p_902->g_449.x", print_hash_value);
    transparent_crc(p_902->g_449.y, "p_902->g_449.y", print_hash_value);
    transparent_crc(p_902->g_450.x, "p_902->g_450.x", print_hash_value);
    transparent_crc(p_902->g_450.y, "p_902->g_450.y", print_hash_value);
    transparent_crc(p_902->g_450.z, "p_902->g_450.z", print_hash_value);
    transparent_crc(p_902->g_450.w, "p_902->g_450.w", print_hash_value);
    transparent_crc(p_902->g_455.x, "p_902->g_455.x", print_hash_value);
    transparent_crc(p_902->g_455.y, "p_902->g_455.y", print_hash_value);
    transparent_crc(p_902->g_505.x, "p_902->g_505.x", print_hash_value);
    transparent_crc(p_902->g_505.y, "p_902->g_505.y", print_hash_value);
    transparent_crc(p_902->g_549.x, "p_902->g_549.x", print_hash_value);
    transparent_crc(p_902->g_549.y, "p_902->g_549.y", print_hash_value);
    transparent_crc(p_902->g_549.z, "p_902->g_549.z", print_hash_value);
    transparent_crc(p_902->g_549.w, "p_902->g_549.w", print_hash_value);
    transparent_crc(p_902->g_550, "p_902->g_550", print_hash_value);
    transparent_crc(p_902->g_553, "p_902->g_553", print_hash_value);
    transparent_crc(p_902->g_646, "p_902->g_646", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_902->g_653[i][j][k].f0, "p_902->g_653[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_902->g_889[i], "p_902->g_889[i]", print_hash_value);

    }
    transparent_crc(p_902->v_collective, "p_902->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 82; i++)
            transparent_crc(p_902->g_special_values[i + 82 * get_linear_group_id()], "p_902->g_special_values[i + 82 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 82; i++)
            transparent_crc(p_902->l_special_values[i], "p_902->l_special_values[i]", print_hash_value);
    transparent_crc(p_902->l_comm_values[get_linear_local_id()], "p_902->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_902->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()], "p_902->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
