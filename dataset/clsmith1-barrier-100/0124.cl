// ---fake_divergence ---inter_thread_comm -g 25,79,4 -l 1,1,1
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

// Seed: 124

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   uint64_t  f1;
   uint32_t  f2;
   uint32_t  f3;
};

union U1 {
   volatile int8_t  f0;
   int32_t  f1;
   int16_t  f2;
   int16_t  f3;
   volatile int8_t  f4;
};

struct S2 {
    int32_t g_4;
    int64_t g_15;
    volatile int32_t g_23;
    int32_t g_24;
    int32_t *g_41;
    int32_t ** volatile g_40[6];
    int32_t ** volatile g_62;
    int32_t ** volatile g_63;
    uint32_t g_83;
    int32_t g_91[9];
    int64_t g_92;
    uint32_t g_94;
    int32_t * volatile g_97;
    uint32_t g_111[9][5];
    union U0 g_112;
    uint64_t g_124;
    uint8_t g_135;
    int32_t g_139;
    uint32_t *g_150;
    uint32_t * volatile *g_149;
    union U1 g_158[6];
    int8_t g_161;
    int8_t g_163[8][1];
    uint16_t g_190;
    uint64_t g_200;
    volatile uint8_t g_206;
    volatile uint8_t *g_205[1];
    volatile uint8_t * volatile * volatile g_204;
    uint16_t **g_217;
    volatile uint16_t g_233;
    volatile uint16_t *g_232[1][9];
    volatile uint16_t **g_231[6];
    int16_t g_244;
    int32_t * volatile g_248;
    uint8_t g_313;
    uint8_t *g_312;
    uint8_t *g_315;
    uint16_t ***g_334;
    union U1 g_335;
    int64_t *g_393;
    uint64_t g_447;
    int16_t g_450;
    volatile union U1 g_459;
    int32_t g_483;
    volatile uint32_t *g_530;
    volatile uint32_t ** volatile g_529;
    int32_t g_554;
    int32_t * volatile g_580;
    uint16_t g_616;
    uint8_t g_681;
    union U1 g_719;
    int32_t g_769;
    int32_t g_771;
    int32_t * volatile g_770;
    union U1 g_849;
    int64_t g_862;
    uint64_t g_918;
    volatile uint64_t g_957;
    int32_t *g_963;
    int64_t **g_967[3][2];
    int64_t ***g_966;
    uint32_t **g_1089;
    uint32_t ***g_1088;
    union U1 g_1092;
    volatile union U1 g_1121;
    int32_t ** volatile g_1153;
    union U1 g_1165[5][3][4];
    int32_t ** volatile g_1194[8][2];
    int32_t ** volatile g_1195;
    int32_t g_1206;
    volatile union U1 *g_1256;
    uint32_t g_1272;
    volatile uint64_t g_1276[2][6];
    volatile uint64_t * volatile g_1275;
    volatile uint64_t * volatile *g_1274;
    volatile union U0 g_1280;
    volatile union U0 *g_1279[4];
    volatile union U0 ** volatile g_1278;
    uint64_t g_1291;
    int32_t ** volatile g_1313;
    union U1 g_1314[9];
    uint32_t *g_1324;
    uint32_t **g_1323;
    int32_t ** volatile g_1344;
    uint8_t * volatile *g_1363;
    uint8_t * volatile ** volatile g_1362;
    uint8_t * volatile ** volatile * volatile g_1361;
    union U1 g_1396;
    uint32_t *** volatile g_1411;
    int64_t g_1423;
    int32_t ** volatile g_1429;
    uint64_t *g_1444;
    union U1 g_1472;
    uint32_t *g_1739;
    uint32_t **g_1738;
    uint32_t ***g_1737;
    int32_t **g_1815;
    int32_t *** volatile g_1814[7];
    volatile uint16_t * volatile ** volatile ** volatile g_1824;
    int32_t ** volatile g_1878;
    uint16_t g_1950;
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
int64_t  func_1(struct S2 * p_1951);
uint64_t  func_19(int32_t * p_20, int32_t * p_21, struct S2 * p_1951);
union U0  func_25(int32_t * p_26, union U0  p_27, uint8_t  p_28, int32_t * p_29, uint64_t  p_30, struct S2 * p_1951);
int32_t * func_31(int64_t  p_32, uint32_t  p_33, int32_t * p_34, uint32_t  p_35, struct S2 * p_1951);
int32_t * func_43(int64_t  p_44, int32_t ** p_45, int32_t ** p_46, int32_t * p_47, struct S2 * p_1951);
union U1  func_48(uint32_t  p_49, struct S2 * p_1951);
uint8_t  func_51(int64_t  p_52, int32_t * p_53, uint32_t  p_54, int32_t * p_55, struct S2 * p_1951);
int8_t  func_66(int32_t ** p_67, int32_t * p_68, uint64_t  p_69, int32_t  p_70, int32_t ** p_71, struct S2 * p_1951);
int32_t * func_72(uint32_t  p_73, uint32_t  p_74, uint16_t  p_75, struct S2 * p_1951);
uint16_t  func_84(uint32_t * p_85, uint32_t  p_86, uint32_t  p_87, int64_t  p_88, int16_t  p_89, struct S2 * p_1951);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1951->g_4 p_1951->g_24 p_1951->g_1824 p_1951->g_1089 p_1951->g_150 p_1951->g_83 p_1951->g_163 p_1951->g_1423 p_1951->g_97 p_1951->g_771 p_1951->g_1444 p_1951->g_124 p_1951->g_206 p_1951->g_111 p_1951->g_450 p_1951->g_1272 p_1951->g_244 p_1951->g_918 p_1951->g_769 p_1951->g_204 p_1951->g_205 p_1951->g_580 p_1951->g_15 p_1951->g_1362 p_1951->g_1363 p_1951->g_312 p_1951->g_313 p_1951->g_1878 p_1951->g_1195 p_1951->g_41 p_1951->g_91 p_1951->g_1396.f1 p_1951->g_1274 p_1951->g_1275 p_1951->g_1276 p_1951->g_849.f0 p_1951->g_149 p_1951->g_1206 p_1951->g_315 p_1951->g_681 p_1951->g_616 p_1951->g_135 p_1951->g_92 p_1951->g_comm_values p_1951->g_862 p_1951->g_94 p_1951->g_483 p_1951->g_161 p_1951->g_1088 p_1951->g_1950
 * writes: p_1951->g_4 p_1951->g_15 p_1951->g_24 p_1951->g_163 p_1951->g_91 p_1951->g_771 p_1951->g_124 p_1951->g_244 p_1951->g_1314.f3 p_1951->g_554 p_1951->g_41 p_1951->g_719.f2 p_1951->g_1396.f1 p_1951->g_111 p_1951->g_1206 p_1951->g_313 p_1951->g_616 p_1951->g_1950
 */
int64_t  func_1(struct S2 * p_1951)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_3 = &p_1951->g_4;
    int32_t *l_5 = &p_1951->g_4;
    int32_t *l_6 = &p_1951->g_4;
    int32_t *l_7 = &p_1951->g_4;
    int32_t *l_8 = &p_1951->g_4;
    int32_t *l_9 = &p_1951->g_4;
    int32_t *l_10 = (void*)0;
    int32_t *l_11 = &p_1951->g_4;
    int32_t l_12 = 4L;
    int32_t *l_13 = &p_1951->g_4;
    int32_t *l_14[2][1];
    uint32_t l_16 = 0xB3E713E1L;
    int16_t l_1947 = 0x6596L;
    int16_t l_1948 = (-2L);
    int64_t **l_1949 = &p_1951->g_393;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_14[i][j] = &l_12;
    }
    --l_16;
    p_1951->g_1950 ^= (((func_19(&l_12, &l_12, p_1951) , 0x5D51BC5FL) ^ ((p_1951->g_616 = p_1951->g_1423) && (safe_mul_func_int16_t_s_s(((((((safe_mul_func_uint16_t_u_u((((safe_div_func_int8_t_s_s((safe_mul_func_int16_t_s_s(p_1951->g_681, (safe_mul_func_uint16_t_u_u(0xDAFBL, p_1951->g_616)))), (safe_lshift_func_uint8_t_u_s(((safe_lshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s((+((safe_div_func_uint16_t_u_u((((safe_mul_func_int8_t_s_s((~(safe_mod_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_u(((safe_rshift_func_uint8_t_u_u((p_1951->g_135 && p_1951->g_92), 6)) <= l_1947), p_1951->g_comm_values[p_1951->tid])) , (*p_1951->g_150)), 0x5435675DL))), p_1951->g_92)) <= FAKE_DIVERGE(p_1951->local_0_offset, get_local_id(0), 10)) <= p_1951->g_862), p_1951->g_94)) >= 0x25EAL)), p_1951->g_92)), l_1948)) ^ 0L), 6)))) >= p_1951->g_135) , p_1951->g_483), p_1951->g_161)) | (***p_1951->g_1088)) , l_1949) == (void*)0) >= 0x4FL) != 1L), 0x536AL)))) | (-4L));
    return (*l_13);
}


/* ------------------------------------------ */
/* 
 * reads : p_1951->g_4 p_1951->g_24 p_1951->g_1824 p_1951->g_1089 p_1951->g_150 p_1951->g_83 p_1951->g_163 p_1951->g_1423 p_1951->g_97 p_1951->g_771 p_1951->g_1444 p_1951->g_124 p_1951->g_206 p_1951->g_111 p_1951->g_450 p_1951->g_1272 p_1951->g_244 p_1951->g_918 p_1951->g_769 p_1951->g_204 p_1951->g_205 p_1951->g_580 p_1951->g_15 p_1951->g_1362 p_1951->g_1363 p_1951->g_312 p_1951->g_313 p_1951->g_1878 p_1951->g_1195 p_1951->g_41 p_1951->g_91 p_1951->g_1396.f1 p_1951->g_1274 p_1951->g_1275 p_1951->g_1276 p_1951->g_849.f0 p_1951->g_149 p_1951->g_1206 p_1951->g_315
 * writes: p_1951->g_4 p_1951->g_15 p_1951->g_24 p_1951->g_163 p_1951->g_91 p_1951->g_771 p_1951->g_124 p_1951->g_244 p_1951->g_1314.f3 p_1951->g_554 p_1951->g_41 p_1951->g_719.f2 p_1951->g_1396.f1 p_1951->g_111 p_1951->g_1206 p_1951->g_313
 */
uint64_t  func_19(int32_t * p_20, int32_t * p_21, struct S2 * p_1951)
{ /* block id: 6 */
    uint16_t l_22[5][10] = {{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL},{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL},{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL},{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL},{0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL,0x58EFL,0x51EFL,0x51EFL}};
    union U0 l_1859 = {1UL};
    int32_t l_1877 = 1L;
    int32_t **l_1881[2];
    int32_t ***l_1880[3];
    int32_t l_1903[7][6] = {{(-9L),0x51E19F68L,0x51E19F68L,(-9L),(-6L),0x246DE571L},{(-9L),0x51E19F68L,0x51E19F68L,(-9L),(-6L),0x246DE571L},{(-9L),0x51E19F68L,0x51E19F68L,(-9L),(-6L),0x246DE571L},{(-9L),0x51E19F68L,0x51E19F68L,(-9L),(-6L),0x246DE571L},{(-9L),0x51E19F68L,0x51E19F68L,(-9L),(-6L),0x246DE571L},{(-9L),0x51E19F68L,0x51E19F68L,(-9L),(-6L),0x246DE571L},{(-9L),0x51E19F68L,0x51E19F68L,(-9L),(-6L),0x246DE571L}};
    uint32_t l_1918 = 4294967294UL;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1881[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_1880[i] = &l_1881[0];
    for (p_1951->g_4 = 3; (p_1951->g_4 >= 0); p_1951->g_4 -= 1)
    { /* block id: 9 */
        uint32_t l_37 = 0x50C19791L;
        int32_t l_1879 = 0L;
        int32_t ***l_1882 = &l_1881[0];
        uint64_t l_1884 = 0xC78E59FFCDBD0B87L;
        int32_t l_1885 = (-3L);
        int i, j;
        for (p_1951->g_15 = 4; (p_1951->g_15 >= 0); p_1951->g_15 -= 1)
        { /* block id: 12 */
            int64_t l_1874[10] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
            int i, j;
            for (p_1951->g_24 = 0; (p_1951->g_24 <= 4); p_1951->g_24 += 1)
            { /* block id: 15 */
                int32_t *l_36 = &p_1951->g_4;
                int i, j;
                if (l_22[p_1951->g_24][(p_1951->g_24 + 3)])
                    break;
                (*p_1951->g_580) = (func_25(func_31(l_22[4][4], l_22[0][4], l_36, l_37, p_1951), l_1859, (*l_36), &p_1951->g_4, ((safe_div_func_uint32_t_u_u(((~(safe_mod_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_u(0x0C0AL, (*l_36))) == 0x03EBC7FAL), l_37))) , 0xD249520EL), 0x5A98F967L)) > 0x92C974BC7A468679L), p_1951) , (*p_20));
            }
            (*p_1951->g_1878) = func_31((~0x668BCDC7C66C1166L), (safe_lshift_func_uint16_t_u_s((l_1877 ^= ((safe_div_func_int16_t_s_s(l_22[(p_1951->g_4 + 1)][(p_1951->g_15 + 3)], (safe_sub_func_uint32_t_u_u((l_22[(p_1951->g_4 + 1)][(p_1951->g_15 + 3)] || (((~((void*)0 != &p_1951->g_967[1][0])) | l_1874[2]) < 18446744073709551611UL)), FAKE_DIVERGE(p_1951->local_1_offset, get_local_id(1), 10))))) & (safe_mul_func_uint8_t_u_u((***p_1951->g_1362), (&p_1951->g_200 == &p_1951->g_918))))), l_37)), p_21, l_22[3][3], p_1951);
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1951->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u((l_1879 ^= FAKE_DIVERGE(p_1951->group_2_offset, get_group_id(2), 10)), 10))][(safe_mod_func_uint32_t_u_u(p_1951->tid, 1))]));
        for (p_1951->g_719.f2 = 1; (p_1951->g_719.f2 <= 4); p_1951->g_719.f2 += 1)
        { /* block id: 980 */
            int32_t ****l_1883 = &l_1882;
            l_1885 = ((*p_1951->g_97) = (l_1884 = ((*p_20) = (((*p_1951->g_1444) = (l_1880[1] != ((*l_1883) = l_1882))) , (**p_1951->g_1195)))));
        }
    }
    (*p_1951->g_97) ^= ((*p_21) = 1L);
    for (p_1951->g_1396.f1 = 0; (p_1951->g_1396.f1 <= 1); p_1951->g_1396.f1 += 1)
    { /* block id: 993 */
        uint64_t l_1898 = 0UL;
        uint32_t *l_1899[1][8];
        int16_t *l_1900[1];
        int32_t l_1901 = 0x375AC872L;
        int64_t l_1902 = 0x3CAC9B164BE44DBBL;
        uint16_t ****l_1905 = &p_1951->g_334;
        uint16_t *****l_1904[7];
        int32_t l_1913 = 0x3AC65536L;
        int32_t l_1914 = 0x04877484L;
        int32_t l_1915 = 0x05DF8614L;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 8; j++)
                l_1899[i][j] = &p_1951->g_112.f2;
        }
        for (i = 0; i < 1; i++)
            l_1900[i] = &p_1951->g_719.f3;
        for (i = 0; i < 7; i++)
            l_1904[i] = &l_1905;
        p_1951->g_4 &= (safe_mul_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u(((**p_1951->g_1274) , ((GROUP_DIVERGE(2, 1) >= ((*p_20) & (safe_rshift_func_uint16_t_u_s((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((p_1951->g_849.f0 & (safe_mod_func_int8_t_s_s(((**p_1951->g_149) & (l_1902 &= ((l_1901 ^= (l_1898 , (1L && (p_1951->g_111[5][3] = (l_1898 , (l_1898 | (65532UL <= p_1951->g_83))))))) || l_1898))), l_1898))), 2)), l_1898)), p_1951->g_1272)))) , 9UL)), 0x34AB25F6838E4F42L)) == (*p_21)), l_1903[2][2]));
        for (p_1951->g_1206 = 1; (p_1951->g_1206 >= 0); p_1951->g_1206 -= 1)
        { /* block id: 1000 */
            uint16_t *****l_1906 = &l_1905;
            uint32_t ***l_1910 = &p_1951->g_1089;
            int32_t l_1912 = 3L;
            int32_t l_1916 = 0x6A89E77FL;
            int32_t l_1917 = 4L;
            int i, j;
            for (l_1902 = 1; (l_1902 >= 0); l_1902 -= 1)
            { /* block id: 1003 */
                int32_t l_1907 = (-1L);
                uint32_t ***l_1911 = &p_1951->g_1089;
                int i, j;
                (*p_20) = (l_1907 = (l_1904[0] != l_1906));
                p_21 = p_20;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1951->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((l_1910 != l_1911), 0x961DBDD4ECC84601L)), 10))][(safe_mod_func_uint32_t_u_u(p_1951->tid, 1))]));
                for (l_1859.f3 = 0; (l_1859.f3 <= 1); l_1859.f3 += 1)
                { /* block id: 1012 */
                    (*p_20) = l_1901;
                    (*p_20) &= (l_1898 || (l_1912 = ((*p_1951->g_315) = 0x39L)));
                    if (l_1902)
                        continue;
                }
            }
            --l_1918;
            return (*p_1951->g_1444);
        }
    }
    return (*p_1951->g_1444);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
union U0  func_25(int32_t * p_26, union U0  p_27, uint8_t  p_28, int32_t * p_29, uint64_t  p_30, struct S2 * p_1951)
{ /* block id: 967 */
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_1951->g_1824 p_1951->g_1089 p_1951->g_150 p_1951->g_83 p_1951->g_4 p_1951->g_163 p_1951->g_1423 p_1951->g_97 p_1951->g_771 p_1951->g_1444 p_1951->g_124 p_1951->g_206 p_1951->g_111 p_1951->g_450 p_1951->g_1272 p_1951->g_244 p_1951->g_918 p_1951->g_769 p_1951->g_204 p_1951->g_205 l_12
 * writes: p_1951->g_163 p_1951->g_91 p_1951->g_771 p_1951->g_124 p_1951->g_244 p_1951->g_1314.f3
 */
int32_t * func_31(int64_t  p_32, uint32_t  p_33, int32_t * p_34, uint32_t  p_35, struct S2 * p_1951)
{ /* block id: 17 */
    uint8_t l_50[8][8][4] = {{{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL}},{{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL}},{{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL}},{{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL}},{{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL}},{{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL}},{{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL}},{{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL},{0x68L,0UL,250UL,1UL}}};
    int32_t *l_56 = &p_1951->g_4;
    uint8_t **l_1832 = &p_1951->g_312;
    union U0 *l_1841 = (void*)0;
    union U0 **l_1840[7][4] = {{&l_1841,&l_1841,&l_1841,&l_1841},{&l_1841,&l_1841,&l_1841,&l_1841},{&l_1841,&l_1841,&l_1841,&l_1841},{&l_1841,&l_1841,&l_1841,&l_1841},{&l_1841,&l_1841,&l_1841,&l_1841},{&l_1841,&l_1841,&l_1841,&l_1841},{&l_1841,&l_1841,&l_1841,&l_1841}};
    union U0 ***l_1839 = &l_1840[6][3];
    int16_t *l_1854 = &p_1951->g_1314[4].f3;
    int16_t *l_1855[2][8][2];
    int8_t *l_1856 = &p_1951->g_163[1][0];
    int32_t l_1857 = (-5L);
    int32_t l_1858[5][5][1] = {{{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L}},{{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L}},{{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L}},{{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L}},{{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L},{0x15A06464L}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 2; k++)
                l_1855[i][j][k] = (void*)0;
        }
    }
    for (p_32 = 0; (p_32 <= (-29)); p_32 = safe_sub_func_int64_t_s_s(p_32, 7))
    { /* block id: 20 */
        int32_t **l_42[6];
        int16_t l_1800 = (-2L);
        int8_t *l_1829 = &p_1951->g_163[6][0];
        int i;
        for (i = 0; i < 6; i++)
            l_42[i] = (void*)0;
        p_34 = &p_1951->g_4;
        for (p_35 = 0; (p_35 <= 5); p_35 += 1)
        { /* block id: 24 */
            int32_t l_452 = 0x5C6C5A72L;
            int32_t *l_1799 = &p_1951->g_91[4];
            int i;
            (1 + 1);
        }
        p_1951->g_771 ^= ((*p_1951->g_97) = (p_35 & (((((safe_add_func_int16_t_s_s((((0x6A903715L > ((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(((0x557BL & (safe_sub_func_uint64_t_u_u((((*l_1829) &= (((void*)0 != p_1951->g_1824) , ((**p_1951->g_1089) >= ((safe_mul_func_uint8_t_u_u((0x13L <= (0x6723L <= (safe_rshift_func_int16_t_s_u((*l_56), 3)))), 0x4EL)) != p_35)))) != 3L), p_32))) , p_32), (*l_56))) & 0x3D3922BEAB2C0F3DL), 0x37L)) , 0x30C3A5D3L)) , p_32) , p_1951->g_1423), 0x7948L)) >= (*l_56)) && (*p_34)) <= p_33) <= (*l_56))));
    }
    l_1858[4][1][0] = (~(safe_mod_func_int16_t_s_s(((*l_1854) = (((l_1832 != (((safe_lshift_func_uint16_t_u_u(((l_1857 &= ((safe_div_func_int16_t_s_s((safe_mod_func_int16_t_s_s((&p_1951->g_1278 == l_1839), ((safe_lshift_func_uint16_t_u_u(((p_33 >= (--(*p_1951->g_1444))) > (((safe_div_func_int16_t_s_s((safe_mul_func_int8_t_s_s(p_1951->g_206, (safe_rshift_func_uint16_t_u_u((p_1951->g_111[5][0] , (((*l_1856) = (safe_rshift_func_uint16_t_u_u(((0x2A6CL & (p_1951->g_244 ^= (p_1951->g_450 , p_1951->g_1272))) >= 1UL), p_35))) , p_1951->g_918)), (*l_56))))), 0x2EF9L)) != (*p_34)) <= 1L)), (*l_56))) | 0L))), p_32)) & 1L)) | 0x015AL), 12)) || p_1951->g_769) , (void*)0)) , (*l_56)) && (**p_1951->g_204))), (*l_56))));
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_1951->g_459.f0 p_1951->g_1444 p_1951->g_124 p_1951->g_97 p_1951->g_1423 p_1951->g_1206 p_1951->g_1472 p_1951->g_862 p_1951->g_1089 p_1951->g_150 p_1951->g_83 p_1951->g_4 p_1951->g_41 p_1951->g_719.f3 p_1951->g_957 p_1951->g_244 p_1951->g_112.f1 p_1951->g_315 p_1951->g_313 p_1951->g_450 p_1951->g_161 p_1951->g_63 p_1951->g_204 p_1951->g_205 p_1951->g_206 p_1951->g_149 p_1951->g_963 p_1951->g_483 p_1951->g_91 p_1951->g_248 p_1951->g_719.f2 p_1951->g_312 p_1951->l_comm_values p_1951->g_1121.f0 p_1951->g_616 p_1951->g_1276 p_1951->g_94 p_1951->g_918 p_1951->g_447 p_1951->g_849.f3 p_1951->g_112.f0 p_1951->g_529 p_1951->g_530
 * writes: p_1951->g_1088 p_1951->g_124 p_1951->g_112.f1 p_1951->g_91 p_1951->g_1423 p_1951->g_918 p_1951->g_849.f2 p_1951->g_83 p_1951->g_1272 p_1951->g_1313 p_1951->g_719.f3 p_1951->g_1092.f1 p_1951->g_681 p_1951->g_41 p_1951->g_244 p_1951->g_313 p_1951->g_315 p_1951->g_719.f2 p_1951->g_112.f0 p_1951->g_94 p_1951->g_111 p_1951->g_849.f3
 */
int32_t * func_43(int64_t  p_44, int32_t ** p_45, int32_t ** p_46, int32_t * p_47, struct S2 * p_1951)
{ /* block id: 768 */
    uint64_t *l_1447 = &p_1951->g_112.f1;
    int32_t l_1448 = 0x5DCB66CBL;
    int32_t *l_1449[8] = {&l_1448,&p_1951->g_771,&l_1448,&l_1448,&p_1951->g_771,&l_1448,&l_1448,&p_1951->g_771};
    uint16_t *l_1471 = &p_1951->g_616;
    uint16_t **l_1470 = &l_1471;
    uint32_t **l_1473[7][8] = {{&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324,&p_1951->g_1324}};
    int32_t l_1474 = 0x5BCFA2BBL;
    int32_t l_1475 = 7L;
    uint8_t **l_1494 = &p_1951->g_315;
    uint8_t ***l_1493[5];
    uint8_t ****l_1492 = &l_1493[3];
    int32_t l_1495 = 0x28B00828L;
    int32_t l_1499 = (-1L);
    int64_t l_1545 = (-1L);
    int32_t l_1562 = 0x0C6693B8L;
    uint32_t l_1609 = 0x0B065734L;
    int32_t l_1620 = (-7L);
    int16_t l_1622[4] = {0x3103L,0x3103L,0x3103L,0x3103L};
    uint64_t **l_1631 = &p_1951->g_1444;
    uint32_t **l_1641 = &p_1951->g_150;
    int32_t l_1654 = 0x2184D0C5L;
    int32_t *l_1663[10][8] = {{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448},{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448},{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448},{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448},{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448},{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448},{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448},{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448},{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448},{(void*)0,&l_1448,&l_1475,&p_1951->g_771,&l_1448,&p_1951->g_771,&l_1475,&l_1448}};
    uint64_t l_1724 = 0x89FA0C7BB7683551L;
    int32_t *l_1781 = &l_1620;
    int32_t *l_1782 = (void*)0;
    uint64_t l_1797 = 6UL;
    int32_t *l_1798 = &p_1951->g_554;
    int i, j;
    for (i = 0; i < 5; i++)
        l_1493[i] = &l_1494;
    (*p_1951->g_97) = (((*l_1447) = ((*p_1951->g_1444) |= (((void*)0 != &p_1951->g_1362) <= (p_1951->g_459.f0 , (&p_1951->g_149 != (p_1951->g_1088 = &p_1951->g_1089)))))) != l_1448);
    for (p_1951->g_1423 = 0; (p_1951->g_1423 <= 28); p_1951->g_1423 = safe_add_func_uint8_t_u_u(p_1951->g_1423, 4))
    { /* block id: 775 */
        uint16_t l_1463 = 65535UL;
        int16_t *l_1476 = (void*)0;
        int16_t *l_1477[7];
        uint64_t l_1478 = 1UL;
        int32_t l_1479 = 0x01EB96EEL;
        int32_t l_1496 = 0x1ACE387AL;
        int i;
        for (i = 0; i < 7; i++)
            l_1477[i] = &p_1951->g_1472.f2;
        for (p_1951->g_918 = 0; (p_1951->g_918 <= 32); p_1951->g_918 = safe_add_func_int16_t_s_s(p_1951->g_918, 9))
        { /* block id: 778 */
            uint8_t l_1454 = 0x64L;
            ++l_1454;
        }
        l_1479 = (safe_mod_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u(((p_1951->g_849.f2 = (p_44 && (safe_add_func_int8_t_s_s(p_1951->g_1206, ((((*p_1951->g_1444) = l_1463) || ((safe_mod_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1951->group_1_offset, get_group_id(1), 10), (((safe_lshift_func_int8_t_s_s(((void*)0 != l_1470), (((p_1951->g_1472 , l_1473[6][1]) == (p_1951->g_862 , (void*)0)) ^ l_1463))) == p_44) <= l_1463))) , p_44), l_1474)) & (**p_1951->g_1089))) && l_1475))))) & l_1478), 7)) && p_44), FAKE_DIVERGE(p_1951->group_0_offset, get_group_id(0), 10)));
        l_1496 = ((0x4DF6BACEL & (safe_mul_func_uint16_t_u_u(0UL, ((*p_47) | ((safe_add_func_uint32_t_u_u(5UL, (safe_mod_func_int32_t_s_s((((*p_1951->g_150) &= (p_44 < 0x7244D91516F8D2CFL)) <= ((l_1479 = (safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s(((*p_1951->g_1444) >= ((safe_div_func_uint32_t_u_u(((void*)0 != l_1492), (**p_46))) ^ p_44)), l_1479)), l_1495))) && l_1463)), p_44)))) != 0x38C5E323L))))) >= p_1951->g_862);
        for (l_1496 = 0; (l_1496 >= 0); l_1496 -= 1)
        { /* block id: 789 */
            for (p_1951->g_1272 = 0; (p_1951->g_1272 <= 4); p_1951->g_1272 += 1)
            { /* block id: 792 */
                int32_t **l_1498 = &p_1951->g_41;
                int32_t ***l_1497[9] = {&l_1498,&l_1498,&l_1498,&l_1498,&l_1498,&l_1498,&l_1498,&l_1498,&l_1498};
                int i;
                p_1951->g_1313 = &p_47;
            }
        }
    }
    if (l_1499)
    { /* block id: 797 */
        int8_t l_1510 = 5L;
        union U0 l_1513 = {4294967290UL};
        int8_t l_1529 = 7L;
        int32_t l_1547 = 0x060A3479L;
        uint8_t *l_1550 = &p_1951->g_681;
        int16_t l_1588 = 0x5A10L;
        int64_t *l_1603 = &p_1951->g_862;
        for (p_1951->g_719.f3 = 0; (p_1951->g_719.f3 < (-12)); p_1951->g_719.f3 = safe_sub_func_int32_t_s_s(p_1951->g_719.f3, 2))
        { /* block id: 800 */
            int32_t *l_1506 = &l_1475;
            uint16_t ***l_1540[1][10][8] = {{{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470},{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470},{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470},{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470},{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470},{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470},{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470},{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470},{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470},{&p_1951->g_217,&l_1470,&l_1470,(void*)0,&l_1470,(void*)0,&l_1470,&l_1470}}};
            uint16_t l_1587 = 0UL;
            int32_t l_1589 = 0x11EE6220L;
            uint32_t l_1592 = 1UL;
            int i, j, k;
            for (p_1951->g_1092.f1 = 0; (p_1951->g_1092.f1 != (-20)); p_1951->g_1092.f1 = safe_sub_func_int64_t_s_s(p_1951->g_1092.f1, 7))
            { /* block id: 803 */
                uint32_t l_1516[1];
                union U0 l_1518[6] = {{5UL},{5UL},{5UL},{5UL},{5UL},{5UL}};
                uint64_t *l_1519 = &p_1951->g_918;
                uint32_t *l_1522[2];
                uint32_t **l_1521 = &l_1522[0];
                uint32_t ***l_1520 = &l_1521;
                uint8_t l_1543[10][8] = {{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L},{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L},{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L},{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L},{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L},{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L},{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L},{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L},{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L},{0x8DL,1UL,1UL,9UL,0UL,0x13L,0UL,0xD6L}};
                union U0 *l_1595 = &l_1513;
                union U0 **l_1594[2][3][10] = {{{&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595},{&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595},{&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595}},{{&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595},{&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595},{&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595,&l_1595}}};
                union U0 ***l_1593 = &l_1594[1][0][8];
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_1516[i] = 9UL;
                for (i = 0; i < 2; i++)
                    l_1522[i] = &l_1513.f0;
                for (p_1951->g_681 = 0; (p_1951->g_681 < 51); p_1951->g_681 = safe_add_func_int16_t_s_s(p_1951->g_681, 2))
                { /* block id: 806 */
                    int16_t *l_1514 = (void*)0;
                    int16_t *l_1515 = &p_1951->g_244;
                    int32_t l_1541[4][6][8] = {{{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L}},{{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L}},{{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L}},{{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L},{(-1L),1L,(-1L),1L,0L,1L,0L,0x502B0192L}}};
                    uint32_t l_1542 = 0x3CEAAA57L;
                    uint8_t *l_1551 = &p_1951->g_313;
                    int i, j, k;
                    l_1506 = l_1506;
                    (*p_46) = (*p_46);
                    if (((safe_mod_func_int8_t_s_s((safe_unary_minus_func_int8_t_s((~((+0x67E9L) != (p_1951->g_957 , ((l_1510 > ((*l_1515) &= ((safe_mul_func_uint16_t_u_u(1UL, ((*p_1951->g_150) >= (l_1513 , (l_1513.f0 & 18446744073709551615UL))))) , 1L))) <= (*p_1951->g_1444))))))), p_44)) > l_1516[0]))
                    { /* block id: 810 */
                        union U0 l_1517 = {0xE40D63E9L};
                        (*l_1506) ^= 0x67DA2B44L;
                        (*l_1506) = (0x20L >= (((((+p_44) != (p_44 , ((((l_1518[1] = l_1517) , 18446744073709551613UL) || (*l_1506)) != (((p_44 , (p_44 , l_1519)) == (void*)0) != (*p_47))))) >= p_44) , l_1520) == (void*)0));
                        (*l_1506) = (safe_sub_func_int8_t_s_s((-1L), (((safe_rshift_func_uint8_t_u_u((p_1951->g_4 | (0x4BL == p_44)), 2)) | ((*l_1447)--)) && 4L)));
                    }
                    else
                    { /* block id: 816 */
                        int8_t *l_1544 = &l_1510;
                        int32_t l_1546 = (-1L);
                        int64_t *l_1590 = (void*)0;
                        int64_t *l_1591[10] = {(void*)0,&p_1951->g_92,&l_1545,&p_1951->g_92,(void*)0,(void*)0,&p_1951->g_92,&l_1545,&p_1951->g_92,(void*)0};
                        int i;
                        (*p_46) = func_72(l_1529, ((--(*p_1951->g_315)) , ((**p_1951->g_1089) &= FAKE_DIVERGE(p_1951->group_1_offset, get_group_id(1), 10))), (l_1547 = (safe_rshift_func_uint16_t_u_s((safe_mod_func_uint16_t_u_u(0xA805L, (safe_sub_func_uint16_t_u_u((((((((l_1540[0][0][0] == (void*)0) ^ (0x3CA3L >= ((0x0B45L == (5L < (p_44 > (((*l_1544) |= ((((((((0x99L & l_1541[1][2][5]) ^ (*l_1506)) ^ (-6L)) < 0x1248L) > l_1542) < l_1543[1][4]) != 0x78C902E7347BD942L) >= l_1516[0])) != p_44)))) , l_1542))) || (*p_1951->g_1444)) , 0xC2D592D3A9C0EC82L) != l_1545) , &p_1951->g_1195) != (void*)0), l_1546)))), 2))), p_1951);
                        (*p_1951->g_41) &= (safe_rshift_func_uint16_t_u_u(p_44, p_44));
                        (*p_46) = (((*p_1951->g_41) ^= ((*l_1506) = (l_1550 == ((*l_1494) = l_1551)))) , func_72((safe_rshift_func_int8_t_s_s((0x265FL == (~(safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_s((((l_1562 & (safe_sub_func_uint32_t_u_u((!(++(**p_1951->g_1089))), (safe_rshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s((((safe_rshift_func_int8_t_s_s(0L, ((((((safe_sub_func_int64_t_s_s((~(p_44 = (((safe_rshift_func_int8_t_s_u(((*l_1544) = (safe_div_func_uint16_t_u_u(((((l_1541[2][0][4] <= (safe_sub_func_uint8_t_u_u(p_44, (((((safe_add_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_u((((*p_47) != ((l_1587 >= 1L) || l_1547)) > p_44), 0)) <= p_44) <= p_44), 0x69DDL)) != p_44) | p_44) , (*p_1951->g_1444)) == 18446744073709551609UL)))) , p_44) && 0UL) || l_1588), 0x2BB2L))), l_1589)) >= p_1951->g_450) && 65535UL))), (-1L))) == l_1543[7][7]) || p_44) ^ p_1951->g_161) || 0xBBBD8BA3L) | l_1592))) < l_1516[0]) ^ l_1542), l_1546)), l_1546))))) < 0xC96AL) , 0x2EC6L), l_1588)), l_1541[1][2][5])), l_1541[1][2][5])), 7)))), 3)), l_1529, (*l_1506), p_1951));
                        (**p_46) = (&p_1951->g_1278 == l_1593);
                    }
                }
            }
            if ((**p_1951->g_63))
                break;
        }
        p_1951->g_91[2] ^= ((**p_1951->g_204) <= (safe_add_func_uint8_t_u_u((((((**p_1951->g_149) = (!((p_44 , p_44) , l_1513.f0))) , ((*p_1951->g_963) , (safe_unary_minus_func_int64_t_s((GROUP_DIVERGE(2, 1) | ((safe_rshift_func_uint16_t_u_u(p_44, (safe_add_func_int16_t_s_s(((l_1588 & (l_1547 = (((((l_1603 == l_1447) > p_1951->g_4) != 18446744073709551610UL) , 6L) == (**p_46)))) , p_44), p_44)))) | (-1L))))))) , (*p_1951->g_41)) | 0xFE65770EL), FAKE_DIVERGE(p_1951->group_1_offset, get_group_id(1), 10))));
    }
    else
    { /* block id: 839 */
        int64_t l_1604 = (-1L);
        int32_t l_1605 = 0x3D8B0DEEL;
        int32_t l_1606 = (-4L);
        int32_t l_1607 = 1L;
        int32_t l_1608[8][6][5] = {{{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L}},{{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L}},{{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L}},{{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L}},{{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L}},{{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L}},{{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L}},{{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L},{0x0F878CDDL,(-1L),(-1L),1L,0x5D3D9457L}}};
        int i, j, k;
        --l_1609;
    }
    if ((safe_div_func_uint8_t_u_u(0x0DL, 255UL)))
    { /* block id: 842 */
        int32_t l_1617 = 0x61A85D57L;
        int32_t l_1618 = (-1L);
        int32_t l_1621 = 1L;
        int32_t l_1623[5][2] = {{0x69C61B4CL,1L},{0x69C61B4CL,1L},{0x69C61B4CL,1L},{0x69C61B4CL,1L},{0x69C61B4CL,1L}};
        uint8_t l_1624[8][5] = {{0x1DL,1UL,2UL,255UL,0UL},{0x1DL,1UL,2UL,255UL,0UL},{0x1DL,1UL,2UL,255UL,0UL},{0x1DL,1UL,2UL,255UL,0UL},{0x1DL,1UL,2UL,255UL,0UL},{0x1DL,1UL,2UL,255UL,0UL},{0x1DL,1UL,2UL,255UL,0UL},{0x1DL,1UL,2UL,255UL,0UL}};
        uint64_t **l_1634 = &l_1447;
        uint32_t **l_1640 = &p_1951->g_150;
        uint32_t **l_1651[10][10][2] = {{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}},{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}},{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}},{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}},{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}},{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}},{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}},{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}},{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}},{{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324},{&p_1951->g_1324,&p_1951->g_1324}}};
        uint16_t *l_1729 = &p_1951->g_190;
        uint32_t **l_1734 = (void*)0;
        uint32_t ***l_1733 = &l_1734;
        uint64_t l_1742 = 18446744073709551615UL;
        int32_t *l_1785 = &l_1474;
        int i, j, k;
        (*p_1951->g_248) &= 0L;
        for (p_1951->g_719.f2 = 0; (p_1951->g_719.f2 != 11); p_1951->g_719.f2++)
        { /* block id: 846 */
            int64_t l_1616 = 0x61478821F3834D33L;
            int32_t l_1619[7];
            uint64_t ***l_1635 = &l_1634;
            int i;
            for (i = 0; i < 7; i++)
                l_1619[i] = 7L;
            (*p_46) = (*p_46);
            l_1624[7][4]++;
            l_1621 = ((((*p_1951->g_312) != p_1951->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1951->tid, 1))]) & (((0x7783E6B47E44E2AAL & (safe_lshift_func_int16_t_s_s((((((safe_div_func_uint64_t_u_u(((*p_1951->g_1444) = ((l_1631 = &p_1951->g_1444) != ((safe_rshift_func_uint8_t_u_s((l_1619[2] = (!((((((*p_1951->g_1444) | 18446744073709551615UL) != (((&l_1447 != ((*l_1635) = l_1634)) == (++(*l_1447))) != 0x2ABE433E8698BB7DL)) , p_44) < (*p_47)) || p_44))), p_44)) , (*l_1635)))), 0x4832E79A6E304E71L)) == p_1951->g_1121.f0) , 0xCEAE962EL) <= (**p_1951->g_1089)) , p_1951->g_616), 12))) , p_44) & 0x6FL)) , (**p_46));
            for (p_1951->g_1423 = (-15); (p_1951->g_1423 == 21); p_1951->g_1423++)
            { /* block id: 857 */
                int32_t l_1642 = 1L;
                l_1619[2] = (((**l_1640) = (((l_1640 != l_1641) > l_1642) <= (*p_47))) && 8UL);
                return (*p_46);
            }
        }
        if (((!l_1621) , (((safe_lshift_func_uint8_t_u_u(p_44, ((**l_1494) = ((((safe_lshift_func_int16_t_s_u((0x686CF66DL >= ((safe_mul_func_uint8_t_u_u(0UL, ((((0x68L && (safe_sub_func_uint8_t_u_u((((p_1951->g_1276[0][2] , &p_1951->g_530) == l_1651[4][5][0]) ^ ((+((safe_sub_func_int32_t_s_s((*p_1951->g_41), 1UL)) < l_1623[0][0])) == l_1654)), p_1951->g_313))) || 0UL) <= p_1951->g_124) != 1L))) && 0x792DCF7EL)), 9)) == p_44) , l_1618) & (*p_1951->g_315))))) <= l_1623[2][0]) , 0x51507D21L)))
        { /* block id: 864 */
            uint32_t l_1655 = 0xB93E4683L;
            uint32_t *l_1656 = &p_1951->g_112.f0;
            int32_t l_1661 = 0x29ECACFAL;
            uint64_t *l_1679[10][2] = {{&p_1951->g_1291,&p_1951->g_447},{&p_1951->g_1291,&p_1951->g_447},{&p_1951->g_1291,&p_1951->g_447},{&p_1951->g_1291,&p_1951->g_447},{&p_1951->g_1291,&p_1951->g_447},{&p_1951->g_1291,&p_1951->g_447},{&p_1951->g_1291,&p_1951->g_447},{&p_1951->g_1291,&p_1951->g_447},{&p_1951->g_1291,&p_1951->g_447},{&p_1951->g_1291,&p_1951->g_447}};
            uint16_t **l_1699 = &l_1471;
            int32_t l_1710 = 0L;
            int32_t l_1712 = 0x62118140L;
            int32_t l_1713[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
            uint32_t l_1718[7][4][9] = {{{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL}},{{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL}},{{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL}},{{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL}},{{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL}},{{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL}},{{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL},{0x70443A1FL,8UL,2UL,0x39AE9F87L,0x699C990BL,0xE962FF60L,0UL,1UL,0x8250FBDFL}}};
            int32_t *l_1780 = &l_1713[3];
            int i, j, k;
            if ((l_1661 = ((((*l_1656) = l_1655) , (safe_add_func_int16_t_s_s(p_1951->g_483, (safe_lshift_func_int16_t_s_u(p_44, 13))))) & 4294967295UL)))
            { /* block id: 867 */
                int32_t l_1662[6][1] = {{0x78BB6D00L},{0x78BB6D00L},{0x78BB6D00L},{0x78BB6D00L},{0x78BB6D00L},{0x78BB6D00L}};
                int32_t *l_1664[10][4][6] = {{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}},{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}},{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}},{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}},{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}},{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}},{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}},{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}},{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}},{{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]},{(void*)0,&l_1623[3][1],&l_1623[3][0],&p_1951->g_91[4],&l_1623[3][1],&l_1623[3][1]}}};
                int i, j, k;
                l_1662[0][0] |= l_1655;
                return (*p_46);
            }
            else
            { /* block id: 870 */
                uint8_t l_1665 = 255UL;
                uint64_t l_1691 = 0xA4342576BA83CC5FL;
                if (l_1665)
                { /* block id: 871 */
                    int8_t l_1673 = 3L;
                    for (p_1951->g_94 = 25; (p_1951->g_94 >= 54); p_1951->g_94++)
                    { /* block id: 874 */
                        int32_t *l_1668 = &l_1620;
                        (*p_46) = l_1668;
                    }
                    for (p_1951->g_918 = (-14); (p_1951->g_918 == 14); ++p_1951->g_918)
                    { /* block id: 879 */
                        l_1623[3][1] = (0x7F77516D486D9670L || ((void*)0 == &p_1951->g_334));
                        if ((*p_47))
                            break;
                        if (l_1673)
                            continue;
                    }
                }
                else
                { /* block id: 884 */
                    int32_t l_1676 = 0x1DDFD8ACL;
                    int8_t *l_1680[2][2][6] = {{{&p_1951->g_163[1][0],&p_1951->g_163[7][0],&p_1951->g_163[7][0],&p_1951->g_163[1][0],&p_1951->g_163[1][0],&p_1951->g_163[7][0]},{&p_1951->g_163[1][0],&p_1951->g_163[7][0],&p_1951->g_163[7][0],&p_1951->g_163[1][0],&p_1951->g_163[1][0],&p_1951->g_163[7][0]}},{{&p_1951->g_163[1][0],&p_1951->g_163[7][0],&p_1951->g_163[7][0],&p_1951->g_163[1][0],&p_1951->g_163[1][0],&p_1951->g_163[7][0]},{&p_1951->g_163[1][0],&p_1951->g_163[7][0],&p_1951->g_163[7][0],&p_1951->g_163[1][0],&p_1951->g_163[1][0],&p_1951->g_163[7][0]}}};
                    uint32_t *l_1689 = (void*)0;
                    uint32_t *l_1690 = &p_1951->g_111[5][3];
                    int i, j, k;
                    l_1661 |= (((safe_sub_func_uint16_t_u_u((((l_1676 | ((65527UL != (safe_add_func_uint16_t_u_u(((((l_1621 = ((void*)0 != l_1679[3][1])) == (safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u((*p_1951->g_150), (safe_sub_func_uint8_t_u_u(((((*l_1690) = (safe_lshift_func_uint16_t_u_u(1UL, 14))) , (p_1951->g_4 , l_1623[3][1])) || p_1951->g_447), p_44)))), p_1951->g_206))) == 1L) | p_44), GROUP_DIVERGE(0, 1)))) > l_1617)) > l_1623[4][1]) , FAKE_DIVERGE(p_1951->group_0_offset, get_group_id(0), 10)), 65535UL)) || p_44) != (*p_1951->g_315));
                }
                l_1691--;
            }
            for (p_1951->g_849.f3 = 0; (p_1951->g_849.f3 == (-23)); --p_1951->g_849.f3)
            { /* block id: 893 */
                uint8_t ****l_1698 = &l_1493[4];
                int32_t *l_1706 = &l_1654;
                int32_t l_1708 = 3L;
                int32_t l_1709 = 0x13ACB7BFL;
                int32_t l_1714 = 7L;
                int32_t l_1716 = 8L;
                int32_t l_1755 = 0x3D9D682DL;
                union U0 l_1767 = {4294967295UL};
                (1 + 1);
            }
        }
        else
        { /* block id: 931 */
            int32_t *l_1786 = (void*)0;
            l_1785 = func_72(((*l_1781) = GROUP_DIVERGE(0, 1)), (+(*p_1951->g_150)), p_44, p_1951);
            l_1786 = &l_1623[2][0];
            (*p_46) = (*p_46);
        }
    }
    else
    { /* block id: 937 */
        uint16_t l_1795[6][8] = {{65535UL,0x29B2L,65535UL,65535UL,0x29B2L,65535UL,65535UL,0x29B2L},{65535UL,0x29B2L,65535UL,65535UL,0x29B2L,65535UL,65535UL,0x29B2L},{65535UL,0x29B2L,65535UL,65535UL,0x29B2L,65535UL,65535UL,0x29B2L},{65535UL,0x29B2L,65535UL,65535UL,0x29B2L,65535UL,65535UL,0x29B2L},{65535UL,0x29B2L,65535UL,65535UL,0x29B2L,65535UL,65535UL,0x29B2L},{65535UL,0x29B2L,65535UL,65535UL,0x29B2L,65535UL,65535UL,0x29B2L}};
        uint32_t *l_1796 = (void*)0;
        int i, j;
        for (p_1951->g_112.f0 = 0; (p_1951->g_112.f0 == 40); p_1951->g_112.f0 = safe_add_func_int16_t_s_s(p_1951->g_112.f0, 4))
        { /* block id: 940 */
            uint64_t l_1789 = 0x3B4E0219789035F5L;
            ++l_1789;
            for (l_1562 = 11; (l_1562 == (-28)); l_1562--)
            { /* block id: 944 */
                int32_t *l_1794 = &p_1951->g_91[4];
                return l_1794;
            }
            l_1797 ^= (((FAKE_DIVERGE(p_1951->global_0_offset, get_global_id(0), 10) <= l_1795[0][4]) , l_1796) == (*p_1951->g_529));
        }
    }
    return l_1798;
}


/* ------------------------------------------ */
/* 
 * reads : p_1951->g_459 p_1951->g_149 p_1951->g_150 p_1951->g_41 p_1951->g_4 p_1951->g_244 p_1951->g_91 p_1951->g_335.f3 p_1951->g_112 p_1951->g_204 p_1951->g_205 p_1951->g_206 p_1951->g_315 p_1951->g_313 p_1951->g_135 p_1951->g_83 p_1951->g_124 p_1951->g_161 p_1951->g_248 p_1951->g_97 p_1951->g_163 p_1951->l_comm_values p_1951->g_63 p_1951->g_comm_values p_1951->g_139 p_1951->g_529 p_1951->g_23 p_1951->g_94 p_1951->g_233 p_1951->g_554 p_1951->g_92 p_1951->g_580 p_1951->g_190 p_1951->g_459.f0 p_1951->g_200 p_1951->g_111 p_1951->g_112.f0 p_1951->g_24 p_1951->g_312 p_1951->g_450 p_1951->g_719 p_1951->g_616 p_1951->g_769 p_1951->g_770 p_1951->g_771 p_1951->g_1256
 * writes: p_1951->g_83 p_1951->g_161 p_1951->g_91 p_1951->g_244 p_1951->g_335.f3 p_1951->g_135 p_1951->g_483 p_1951->g_450 p_1951->g_393 p_1951->g_158.f3 p_1951->g_163 p_1951->g_111 p_1951->g_554 p_1951->g_124 p_1951->g_190 p_1951->g_112.f1 p_1951->g_459.f0 p_1951->g_200 p_1951->g_92 p_1951->g_112.f0 p_1951->g_94 p_1951->g_313 p_1951->g_681 p_1951->g_616 p_1951->g_771
 */
union U1  func_48(uint32_t  p_49, struct S2 * p_1951)
{ /* block id: 236 */
    int32_t *l_462 = &p_1951->g_91[4];
    uint16_t *l_492 = &p_1951->g_190;
    uint64_t *l_497 = &p_1951->g_124;
    uint16_t ****l_611 = &p_1951->g_334;
    uint64_t l_636 = 0x8E6D6FAF92AA98FFL;
    int16_t l_642 = 0x050CL;
    int32_t l_645 = 0x33F979F3L;
    uint64_t l_664 = 6UL;
    union U0 *l_699 = (void*)0;
    int64_t **l_786 = &p_1951->g_393;
    int64_t ***l_785 = &l_786;
    int32_t l_805 = (-1L);
    int32_t l_806[7] = {0L,0L,0L,0L,0L,0L,0L};
    uint16_t *****l_852[9][4][2] = {{{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611}},{{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611}},{{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611}},{{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611}},{{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611}},{{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611}},{{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611}},{{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611}},{{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611},{&l_611,&l_611}}};
    int32_t l_1001 = 6L;
    int32_t l_1031 = 0x103175E3L;
    int8_t l_1037 = 0x3FL;
    uint32_t l_1080 = 0x7C9BBCE4L;
    uint32_t **l_1098 = &p_1951->g_150;
    int32_t l_1205 = 0x2FB169BFL;
    int8_t *l_1290 = &p_1951->g_161;
    uint32_t **l_1326 = &p_1951->g_1324;
    uint32_t **l_1327 = &p_1951->g_1324;
    int8_t l_1365 = (-3L);
    uint16_t l_1378 = 65535UL;
    uint32_t *l_1410 = &p_1951->g_1272;
    uint32_t **l_1409[6][7] = {{&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410},{&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410},{&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410},{&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410},{&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410},{&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410,&l_1410}};
    uint32_t l_1424 = 4294967291UL;
    uint64_t *l_1442 = (void*)0;
    int i, j, k;
    (*l_462) |= (safe_lshift_func_int8_t_s_s((p_1951->g_161 = (((p_49 < (p_49 | p_49)) & ((safe_sub_func_uint32_t_u_u(((**p_1951->g_149) = (p_1951->g_459 , 0x67D3E775L)), (*p_1951->g_41))) | (p_1951->g_244 <= p_49))) >= ((safe_mod_func_uint32_t_u_u(p_49, p_49)) <= p_49))), 3));
    if ((*l_462))
    { /* block id: 240 */
        int32_t *l_465 = (void*)0;
        int32_t l_475 = (-10L);
        uint32_t *l_496 = &p_1951->g_94;
        uint32_t **l_495[10] = {&l_496,&l_496,&l_496,&l_496,&l_496,&l_496,&l_496,&l_496,&l_496,&l_496};
        int64_t *l_551[5][6] = {{&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92},{&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92},{&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92},{&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92},{&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92,&p_1951->g_92}};
        uint8_t **l_556 = (void*)0;
        uint16_t ****l_612 = &p_1951->g_334;
        uint16_t *l_615 = &p_1951->g_616;
        int8_t *l_637 = (void*)0;
        int8_t *l_638 = (void*)0;
        int8_t *l_639 = &p_1951->g_163[7][0];
        int16_t *l_643[9][9] = {{&p_1951->g_450,(void*)0,&p_1951->g_450,&p_1951->g_244,(void*)0,&p_1951->g_244,&p_1951->g_450,(void*)0,&p_1951->g_450},{&p_1951->g_450,(void*)0,&p_1951->g_450,&p_1951->g_244,(void*)0,&p_1951->g_244,&p_1951->g_450,(void*)0,&p_1951->g_450},{&p_1951->g_450,(void*)0,&p_1951->g_450,&p_1951->g_244,(void*)0,&p_1951->g_244,&p_1951->g_450,(void*)0,&p_1951->g_450},{&p_1951->g_450,(void*)0,&p_1951->g_450,&p_1951->g_244,(void*)0,&p_1951->g_244,&p_1951->g_450,(void*)0,&p_1951->g_450},{&p_1951->g_450,(void*)0,&p_1951->g_450,&p_1951->g_244,(void*)0,&p_1951->g_244,&p_1951->g_450,(void*)0,&p_1951->g_450},{&p_1951->g_450,(void*)0,&p_1951->g_450,&p_1951->g_244,(void*)0,&p_1951->g_244,&p_1951->g_450,(void*)0,&p_1951->g_450},{&p_1951->g_450,(void*)0,&p_1951->g_450,&p_1951->g_244,(void*)0,&p_1951->g_244,&p_1951->g_450,(void*)0,&p_1951->g_450},{&p_1951->g_450,(void*)0,&p_1951->g_450,&p_1951->g_244,(void*)0,&p_1951->g_244,&p_1951->g_450,(void*)0,&p_1951->g_450},{&p_1951->g_450,(void*)0,&p_1951->g_450,&p_1951->g_244,(void*)0,&p_1951->g_244,&p_1951->g_450,(void*)0,&p_1951->g_450}};
        int32_t *l_644 = &p_1951->g_554;
        int32_t l_646 = 0x5D3AC8D5L;
        int i, j;
        for (p_1951->g_244 = 0; (p_1951->g_244 < (-25)); p_1951->g_244--)
        { /* block id: 243 */
            uint32_t ***l_466 = (void*)0;
            uint32_t **l_468 = &p_1951->g_150;
            uint32_t ***l_467 = &l_468;
            l_465 = (void*)0;
            (*l_467) = &p_1951->g_150;
        }
        for (p_1951->g_335.f3 = 22; (p_1951->g_335.f3 == (-14)); p_1951->g_335.f3 = safe_sub_func_int8_t_s_s(p_1951->g_335.f3, 4))
        { /* block id: 249 */
            uint8_t *l_480[2];
            uint64_t *l_514 = &p_1951->g_200;
            int8_t l_524 = (-10L);
            int32_t l_527[7];
            int32_t l_528[7] = {0x3286E0B4L,0x3286E0B4L,0x3286E0B4L,0x3286E0B4L,0x3286E0B4L,0x3286E0B4L,0x3286E0B4L};
            uint16_t ****l_614[7][10];
            uint16_t *****l_613 = &l_614[1][1];
            int32_t *l_617 = (void*)0;
            int32_t *l_618 = &p_1951->g_554;
            int8_t *l_619[4][6][9] = {{{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161}},{{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161}},{{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161}},{{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161},{&p_1951->g_161,&l_524,&p_1951->g_161,&p_1951->g_163[0][0],&p_1951->g_161,&p_1951->g_163[2][0],&p_1951->g_161,&p_1951->g_161,&p_1951->g_161}}};
            int16_t *l_620 = &p_1951->g_158[2].f3;
            int16_t *l_621[2][8] = {{&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244},{&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244,&p_1951->g_244}};
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_480[i] = &p_1951->g_135;
            for (i = 0; i < 7; i++)
                l_527[i] = 1L;
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 10; j++)
                    l_614[i][j] = &p_1951->g_334;
            }
            if ((p_1951->g_112 , (safe_sub_func_int32_t_s_s(0x6C7B5ED4L, ((p_49 , ((*l_462) = (p_49 == ((safe_add_func_uint32_t_u_u((l_475 , (safe_rshift_func_uint8_t_u_u((**p_1951->g_204), (*p_1951->g_315)))), 0xD60C7CFDL)) < (safe_mul_func_uint8_t_u_u((p_1951->g_483 = (p_1951->g_135--)), p_1951->g_83)))))) & (*p_1951->g_41))))))
            { /* block id: 253 */
                uint16_t *l_490 = &p_1951->g_190;
                int32_t l_498[2];
                union U0 l_499 = {4294967293UL};
                uint16_t ***l_500 = (void*)0;
                int32_t *l_538 = &l_498[0];
                uint16_t l_539 = 4UL;
                int64_t *l_552 = &p_1951->g_15;
                int8_t *l_553[7];
                int32_t *l_555 = &l_527[5];
                int i;
                for (i = 0; i < 2; i++)
                    l_498[i] = 0x5C8454C8L;
                for (i = 0; i < 7; i++)
                    l_553[i] = &p_1951->g_163[1][0];
                for (p_1951->g_450 = 15; (p_1951->g_450 == (-28)); p_1951->g_450 = safe_sub_func_uint32_t_u_u(p_1951->g_450, 4))
                { /* block id: 256 */
                    uint8_t l_491[4][3][2] = {{{0x9EL,249UL},{0x9EL,249UL},{0x9EL,249UL}},{{0x9EL,249UL},{0x9EL,249UL},{0x9EL,249UL}},{{0x9EL,249UL},{0x9EL,249UL},{0x9EL,249UL}},{{0x9EL,249UL},{0x9EL,249UL},{0x9EL,249UL}}};
                    uint64_t *l_506 = &p_1951->g_124;
                    int8_t *l_517 = &p_1951->g_163[6][0];
                    int64_t *l_525 = (void*)0;
                    int64_t *l_526[6][5];
                    int32_t l_531[9];
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_526[i][j] = &p_1951->g_92;
                    }
                    for (i = 0; i < 9; i++)
                        l_531[i] = 0x2DB45377L;
                    for (l_475 = 11; (l_475 != (-26)); --l_475)
                    { /* block id: 259 */
                        uint16_t l_501 = 0x7134L;
                        (*l_462) = ((safe_div_func_uint8_t_u_u((((l_490 == (l_491[2][2][1] , l_492)) , (((+(safe_mod_func_uint8_t_u_u(((void*)0 == l_495[4]), p_1951->g_124))) != (&p_1951->g_447 != (l_491[2][2][1] , l_497))) || p_1951->g_161)) , FAKE_DIVERGE(p_1951->global_1_offset, get_global_id(1), 10)), l_498[1])) , p_49);
                        l_501 = ((l_499 , &p_1951->g_231[1]) != l_500);
                        if ((*p_1951->g_248))
                            break;
                    }
                    for (p_1951->g_135 = (-7); (p_1951->g_135 != 39); p_1951->g_135 = safe_add_func_uint32_t_u_u(p_1951->g_135, 7))
                    { /* block id: 266 */
                        uint64_t *l_507 = &p_1951->g_447;
                        uint8_t l_508[9] = {255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL};
                        int64_t **l_509 = &p_1951->g_393;
                        uint16_t ***l_510 = &p_1951->g_217;
                        int16_t *l_511 = &p_1951->g_158[2].f3;
                        int i;
                        if (l_498[0])
                            break;
                        (*p_1951->g_97) &= (safe_lshift_func_int8_t_s_s(((l_506 == (l_507 = l_497)) | (l_508[8] & ((((*l_509) = &p_1951->g_15) == (void*)0) ^ ((*l_511) = (l_510 == &p_1951->g_217))))), (safe_mul_func_uint16_t_u_u(((void*)0 == l_514), p_1951->g_244))));
                    }
                    l_528[2] = ((0xB809L <= (((+l_491[2][2][1]) >= ((safe_rshift_func_uint8_t_u_s(l_499.f0, ((*l_517) |= 0x7BL))) > (safe_mul_func_int16_t_s_s(((safe_div_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_u((((l_527[5] = (((p_1951->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1951->tid, 1))] & (((**p_1951->g_63) >= l_491[1][0][0]) || (((!((void*)0 == l_500)) , p_1951->g_comm_values[p_1951->tid]) >= l_524))) , (*l_462)) || 0x6F409A4EDE9A0EBCL)) != (*l_462)) | (-1L)), p_49)) | p_1951->g_139), p_49)) >= 7L), 5UL)))) && 4294967292UL)) ^ 8L);
                    l_531[1] = ((void*)0 == p_1951->g_529);
                }
                l_498[1] = (safe_mul_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u((((((((((0x3AL <= (p_49 <= (p_49 || (&p_1951->g_150 != &p_1951->g_150)))) >= (((((safe_sub_func_uint32_t_u_u((FAKE_DIVERGE(p_1951->group_1_offset, get_group_id(1), 10) | l_528[2]), p_49)) >= (0x4104C44BL < (FAKE_DIVERGE(p_1951->local_0_offset, get_local_id(0), 10) , l_527[1]))) > l_498[1]) , 0L) | (*p_1951->g_315))) >= p_1951->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1951->tid, 1))]) < GROUP_DIVERGE(1, 1)) || (*l_462)) , (void*)0) == &l_527[3]) != 0x4ADE6535L) != GROUP_DIVERGE(0, 1)), p_1951->g_335.f3)) ^ p_49) ^ 0x34L), p_1951->g_23));
                ++l_539;
                l_528[2] |= ((*l_555) = ((safe_add_func_uint16_t_u_u(((void*)0 == &l_492), (*l_538))) || (p_49 ^ ((((*p_1951->g_150) = p_49) && (safe_sub_func_int64_t_s_s((255UL && ((safe_lshift_func_uint8_t_u_s(((safe_add_func_uint8_t_u_u((safe_unary_minus_func_int8_t_s(0x75L)), ((*l_462) = ((l_551[0][5] != ((((*l_538) = p_49) & p_1951->g_94) , l_552)) >= p_1951->g_233)))) ^ p_1951->g_554), 5)) ^ 1UL)), p_1951->g_244))) != p_49))));
            }
            else
            { /* block id: 285 */
                uint8_t **l_558 = &l_480[1];
                uint8_t ***l_557 = &l_558;
                int32_t l_561 = 0x246040B5L;
                uint32_t *l_574 = &p_1951->g_111[5][3];
                uint32_t *l_575 = &p_1951->g_112.f2;
                uint32_t *l_576 = &p_1951->g_112.f2;
                uint32_t *l_577 = &p_1951->g_112.f2;
                uint32_t *l_578 = &p_1951->g_112.f2;
                uint32_t *l_579 = &p_1951->g_112.f2;
                (*p_1951->g_580) = ((l_524 | 1L) , ((l_556 == ((*l_557) = l_556)) && ((((safe_mul_func_uint16_t_u_u((l_561 || (safe_mod_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(0x49L, ((((*l_462) &= ((*l_574) = (safe_div_func_uint8_t_u_u((((safe_rshift_func_int8_t_s_s(l_528[5], 6)) ^ ((safe_add_func_uint32_t_u_u(((0UL == (+(safe_add_func_uint64_t_u_u((!(((*p_1951->g_150) &= (l_561 != (-5L))) != p_49)), (-1L))))) >= p_49), p_49)) , p_49)) , (*p_1951->g_315)), 3L)))) && (-1L)) || p_49))), p_49))), p_1951->g_92)) , (*l_462)) , l_561) >= p_49)));
            }
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1951->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u(((*p_1951->g_150) = ((safe_rshift_func_int8_t_s_s(((((safe_add_func_int64_t_s_s(p_49, ((l_475 ^= (((5UL & ((-1L) | (p_1951->g_163[1][0] = (safe_lshift_func_int16_t_s_s((((safe_sub_func_uint64_t_u_u(((*l_497)++), ((((safe_lshift_func_uint16_t_u_s((--(*l_492)), (safe_sub_func_uint8_t_u_u((0x7DL <= ((safe_mod_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((((*l_462) |= 0xEBC0A6E3L) ^ (safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_s(0xF16DL, 4)), 10))), 4)), 0x44D4L)) & (safe_mod_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s(((~((*l_618) = (safe_mul_func_int8_t_s_s(((((((l_612 = l_611) == ((*l_613) = &p_1951->g_334)) , l_492) == l_615) , &p_1951->g_334) == &p_1951->g_334), p_49)))) <= GROUP_DIVERGE(2, 1)), 6)), p_49)))), p_1951->g_459.f0)))) & 0x1FDDA03AL) && (*l_462)) , p_49))) > p_1951->g_200) , p_49), 1))))) & p_1951->g_111[5][3]) ^ (**p_1951->g_149))) & p_49))) >= 0xA2L) == 0x21L) && 0xB6EDL), 4)) < p_1951->g_244)), 10))][(safe_mod_func_uint32_t_u_u(p_1951->tid, 1))]));
            for (p_1951->g_112.f1 = 0; p_1951->g_112.f1 < 4; p_1951->g_112.f1 += 1)
            {
                for (p_1951->g_459.f0 = 0; p_1951->g_459.f0 < 6; p_1951->g_459.f0 += 1)
                {
                    for (p_1951->g_200 = 0; p_1951->g_200 < 9; p_1951->g_200 += 1)
                    {
                        l_619[p_1951->g_112.f1][p_1951->g_459.f0][p_1951->g_200] = (void*)0;
                    }
                }
            }
        }
        if (((l_646 = (safe_mul_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((((*l_462) = p_49) || ((safe_lshift_func_uint16_t_u_u(p_49, ((*l_462) , 65531UL))) != ((l_645 ^= ((+(safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(p_1951->g_335.f3, ((((p_1951->g_92 ^= ((*p_1951->g_150) & ((*l_644) = (safe_add_func_int16_t_s_s((((*l_639) = l_636) , (p_1951->g_450 = (safe_lshift_func_uint16_t_u_s(((p_1951->g_313 , p_1951->g_139) ^ l_642), 12)))), (*l_462)))))) < (*l_462)) & (*l_462)) >= FAKE_DIVERGE(p_1951->local_0_offset, get_local_id(0), 10)))), 255UL))) , p_49)) ^ p_49))), p_49)), p_1951->g_111[5][3])), p_49))) , 0x099FFC7EL))
        { /* block id: 313 */
            uint8_t *l_653[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint32_t *l_658 = &p_1951->g_112.f0;
            uint64_t *l_661 = &p_1951->g_200;
            uint64_t **l_662 = &l_661;
            int32_t l_663[3][7] = {{(-9L),(-9L),0L,(-1L),(-10L),(-1L),0L},{(-9L),(-9L),0L,(-1L),(-10L),(-1L),0L},{(-9L),(-9L),0L,(-1L),(-10L),(-1L),0L}};
            int i, j;
            l_663[2][3] = (safe_mul_func_uint8_t_u_u((((0x7D89DB28L > ((safe_sub_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(((((*l_644) , 0x5DAAC7AD52D0E229L) , l_637) != l_653[5]), 11)), ((safe_mod_func_uint8_t_u_u((p_1951->g_4 != (((safe_add_func_uint64_t_u_u(1UL, (&p_1951->g_200 == ((*l_662) = (((*l_658)--) , l_661))))) < p_1951->g_24) > (*l_462))), (*p_1951->g_312))) >= p_1951->g_23))) & p_49)) && p_49) > p_49), l_663[2][3]));
        }
        else
        { /* block id: 317 */
            uint32_t l_684 = 0x476CCA59L;
            uint8_t **l_729[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            union U0 *l_732[4] = {&p_1951->g_112,&p_1951->g_112,&p_1951->g_112,&p_1951->g_112};
            int i;
            for (p_1951->g_94 = 0; (p_1951->g_94 <= 8); p_1951->g_94 += 1)
            { /* block id: 320 */
                int16_t l_700 = 5L;
                union U0 *l_704[2][5] = {{&p_1951->g_112,(void*)0,&p_1951->g_112,&p_1951->g_112,(void*)0},{&p_1951->g_112,(void*)0,&p_1951->g_112,&p_1951->g_112,(void*)0}};
                int64_t **l_727[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_730 = (-2L);
                int i, j;
                for (l_646 = 0; (l_646 >= 0); l_646 -= 1)
                { /* block id: 323 */
                    l_664 = ((*l_644) = ((void*)0 != &p_1951->g_92));
                }
                for (p_1951->g_135 = 0; (p_1951->g_135 <= 8); p_1951->g_135 += 1)
                { /* block id: 329 */
                    uint8_t *l_679 = (void*)0;
                    uint8_t *l_680 = &p_1951->g_681;
                    union U0 *l_698 = &p_1951->g_112;
                    union U0 **l_697 = &l_698;
                    int32_t l_701 = 0L;
                    uint32_t **l_731 = (void*)0;
                    int32_t *l_764 = &l_645;
                    int i, j;
                    (*l_462) = (safe_sub_func_int32_t_s_s(((safe_mul_func_int8_t_s_s((((*l_492) ^= (((((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(((!(safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((l_551[0][5] != (((((~(((*l_680) = (--(*p_1951->g_315))) & (((safe_add_func_uint32_t_u_u(l_684, ((**p_1951->g_149) = p_49))) < 0x482BABDED0BC723AL) ^ ((safe_mod_func_uint32_t_u_u(((safe_sub_func_int8_t_s_s((~((safe_mod_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s((((l_684 & (safe_mul_func_uint16_t_u_u((*l_644), (safe_sub_func_int16_t_s_s(((((*l_697) = &p_1951->g_112) != l_699) != 0x2D515E1787E5B462L), p_1951->g_91[7]))))) <= FAKE_DIVERGE(p_1951->local_0_offset, get_local_id(0), 10)) >= p_1951->g_450), p_1951->g_233)), p_49)) != p_49)), (*l_462))) , (*l_644)), (*p_1951->g_41))) | p_1951->g_161)))) , (**p_1951->g_149)) && l_684) , 0x17C7AC72L) , l_551[2][2])), 1UL)), p_1951->g_92))) == l_700), (*l_644))), 0x620DL)) >= l_684) | l_684) <= (*l_462)) , 0xC8AFL)) , 1L), (*l_462))) && p_49), GROUP_DIVERGE(2, 1)));
                    if (((((**p_1951->g_204) != (p_49 != (*l_462))) < (l_701 , p_1951->g_335.f3)) <= (((p_49 , (4294967286UL ^ (!l_700))) == 0x50L) != GROUP_DIVERGE(2, 1))))
                    { /* block id: 336 */
                        uint32_t *l_720 = &p_1951->g_112.f0;
                        int64_t ***l_728 = &l_727[7];
                        l_730 = (&p_1951->g_315 != ((safe_mul_func_int16_t_s_s(((void*)0 != l_704[1][1]), (((-10L) >= ((*l_639) = (safe_add_func_int8_t_s_s(((p_1951->g_92 = (safe_mod_func_int32_t_s_s((safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((safe_div_func_uint8_t_u_u((p_1951->g_719 , (((void*)0 != l_720) == ((safe_sub_func_uint64_t_u_u(((*l_497) |= ((safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1951->global_0_offset, get_global_id(0), 10) < (safe_rshift_func_uint8_t_u_u((((*l_728) = l_727[7]) != (void*)0), 1))), (*l_644))) && (*l_462))), 0L)) >= (-1L)))), p_1951->g_161)), 5)), p_49)), p_49)), 0x39L)), l_700))) < FAKE_DIVERGE(p_1951->local_2_offset, get_local_id(2), 10)), l_684)))) >= p_49))) , l_729[3]));
                        if ((*p_1951->g_97))
                            break;
                    }
                    else
                    { /* block id: 343 */
                        (*l_697) = &p_1951->g_112;
                        l_731 = &p_1951->g_150;
                        (*l_644) &= 0x3AE6DA08L;
                        (*l_697) = l_732[1];
                    }
                    for (l_701 = 0; (l_701 <= 0); l_701 += 1)
                    { /* block id: 351 */
                        uint32_t *l_743 = &p_1951->g_111[5][3];
                        uint32_t **l_744 = &l_743;
                        int32_t l_755 = 0L;
                        int i, j;
                        l_755 = (safe_div_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((+(safe_div_func_int8_t_s_s(1L, (safe_lshift_func_int16_t_s_u(0x2C93L, ((safe_mul_func_int8_t_s_s(((*l_462) | (((*l_744) = l_743) == (void*)0)), (((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(((safe_lshift_func_int8_t_s_u((((safe_mul_func_uint16_t_u_u(((((*l_644) = (p_1951->g_94 >= (*l_462))) , 0x20FFE26C38F8A88BL) & (safe_mod_func_int8_t_s_s(l_684, l_700))), 0x76CDL)) >= (*l_462)) | 0UL), (*p_1951->g_312))) & p_1951->g_comm_values[p_1951->tid]), 1)), p_49)) | p_49) == 0x338DEED3L))) > 0x5FE7L)))))), 0xABC71B7A8D2AC723L)), p_49));
                        (*l_462) = 0x34451284L;
                        if (l_701)
                            break;
                    }
                    (*p_1951->g_770) |= (safe_sub_func_int64_t_s_s((l_700 >= (((safe_lshift_func_int16_t_s_u(((*l_644) < ((*l_462) = ((safe_lshift_func_int16_t_s_s((p_1951->g_450 = p_1951->g_91[7]), 12)) | (((*l_764) |= (&p_1951->g_483 == &p_1951->g_483)) > 0xE21902B9L)))), (safe_add_func_uint16_t_u_u(((*l_615) |= (safe_sub_func_int64_t_s_s(((void*)0 != &p_1951->g_248), 1UL))), p_49)))) != p_1951->g_554) <= p_1951->g_769)), l_700));
                }
            }
        }
    }
    else
    { /* block id: 366 */
        union U0 l_775 = {0xD983D743L};
        int32_t l_803[2];
        uint64_t **l_828 = (void*)0;
        int32_t *l_839[1];
        uint16_t l_1066 = 1UL;
        uint32_t **l_1097 = &p_1951->g_150;
        int32_t l_1166 = 0L;
        uint32_t ****l_1252 = &p_1951->g_1088;
        uint32_t **l_1328 = (void*)0;
        uint32_t l_1334 = 7UL;
        int i;
        for (i = 0; i < 2; i++)
            l_803[i] = 0x1CB5A2E8L;
        for (i = 0; i < 1; i++)
            l_839[i] = &l_805;
        (1 + 1);
    }
    for (l_1080 = 0; (l_1080 <= 6); l_1080 += 1)
    { /* block id: 684 */
        int32_t l_1345[3][1][5] = {{{0L,0x72619086L,0L,0L,0x72619086L}},{{0L,0x72619086L,0L,0L,0x72619086L}},{{0L,0x72619086L,0L,0L,0x72619086L}}};
        uint32_t l_1356 = 0x75DA966BL;
        int32_t l_1364 = 0x3F82A0DDL;
        uint32_t *l_1366 = (void*)0;
        uint32_t *l_1367 = (void*)0;
        int32_t l_1375[5][5] = {{0x2821CE31L,6L,0x6082AB7DL,6L,0x2821CE31L},{0x2821CE31L,6L,0x6082AB7DL,6L,0x2821CE31L},{0x2821CE31L,6L,0x6082AB7DL,6L,0x2821CE31L},{0x2821CE31L,6L,0x6082AB7DL,6L,0x2821CE31L},{0x2821CE31L,6L,0x6082AB7DL,6L,0x2821CE31L}};
        int8_t l_1376 = 0x24L;
        int32_t l_1420 = 0x2FC19316L;
        union U0 **l_1427 = &l_699;
        uint64_t *l_1445 = &p_1951->g_1291;
        int8_t l_1446[5][8] = {{0L,(-1L),0L,0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L),0L,0L,(-1L)},{0L,(-1L),0L,0L,(-1L),0L,0L,(-1L)}};
        int i, j, k;
        if (l_1345[1][0][0])
            break;
    }
    return (*p_1951->g_1256);
}


/* ------------------------------------------ */
/* 
 * reads : p_1951->g_63 p_1951->g_315 p_1951->g_313
 * writes: p_1951->g_41
 */
uint8_t  func_51(int64_t  p_52, int32_t * p_53, uint32_t  p_54, int32_t * p_55, struct S2 * p_1951)
{ /* block id: 25 */
    int32_t *l_57[7];
    int16_t l_58 = (-4L);
    uint32_t l_59 = 0x11A83D06L;
    int i;
    for (i = 0; i < 7; i++)
        l_57[i] = (void*)0;
    ++l_59;
    (*p_1951->g_63) = p_53;
    for (l_59 = 1; (l_59 <= 6); l_59 += 1)
    { /* block id: 30 */
        int32_t l_448 = 0x537CCCB5L;
        for (p_54 = 0; (p_54 <= 5); p_54 += 1)
        { /* block id: 33 */
            uint32_t *l_82 = &p_1951->g_83;
            uint32_t *l_93[7][2][7] = {{{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94},{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94}},{{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94},{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94}},{{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94},{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94}},{{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94},{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94}},{{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94},{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94}},{{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94},{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94}},{{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94},{&p_1951->g_94,(void*)0,&p_1951->g_94,&p_1951->g_94,&p_1951->g_94,(void*)0,&p_1951->g_94}}};
            int32_t l_449 = 0x3B52815DL;
            int i, j, k;
            (1 + 1);
        }
    }
    return (*p_1951->g_315);
}


/* ------------------------------------------ */
/* 
 * reads : p_1951->l_comm_values p_1951->g_15 p_1951->g_92 p_1951->g_41 p_1951->g_4 p_1951->g_94 p_1951->g_112 p_1951->g_83 p_1951->g_24 p_1951->g_91 p_1951->g_111 p_1951->g_149 p_1951->g_158 p_1951->g_139 p_1951->g_124 p_1951->g_161 p_1951->g_112.f1 p_1951->g_204 p_1951->g_217 p_1951->g_150 p_1951->g_231 p_1951->g_135 p_1951->g_23 p_1951->g_163 p_1951->g_248 p_1951->g_190 p_1951->g_205 p_1951->g_206 p_1951->g_200 p_1951->g_335.f3 p_1951->g_233
 * writes: p_1951->g_111 p_1951->g_124 p_1951->g_135 p_1951->g_83 p_1951->g_139 p_1951->g_112.f1 p_1951->g_161 p_1951->g_163 p_1951->g_91 p_1951->g_200 p_1951->g_204 p_1951->g_158.f2 p_1951->g_217 p_1951->g_190 p_1951->g_244 p_1951->g_41 p_1951->g_335.f3
 */
int8_t  func_66(int32_t ** p_67, int32_t * p_68, uint64_t  p_69, int32_t  p_70, int32_t ** p_71, struct S2 * p_1951)
{ /* block id: 45 */
    int32_t l_104 = 0x5992523FL;
    int32_t l_164 = (-3L);
    uint16_t *l_230 = &p_1951->g_190;
    uint16_t **l_229 = &l_230;
    uint16_t ***l_274 = &p_1951->g_217;
    uint16_t ****l_273[3][9][9] = {{{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0}},{{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0}},{{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0},{&l_274,&l_274,&l_274,(void*)0,&l_274,&l_274,&l_274,&l_274,(void*)0}}};
    uint8_t l_277 = 0x23L;
    uint64_t l_293[10] = {0x9372414C672D6932L,0xEAFF5E016AE771B1L,0x9372414C672D6932L,0x9372414C672D6932L,0xEAFF5E016AE771B1L,0x9372414C672D6932L,0x9372414C672D6932L,0xEAFF5E016AE771B1L,0x9372414C672D6932L,0x9372414C672D6932L};
    uint8_t l_295[2];
    int32_t l_339 = 0x76C546F6L;
    uint64_t *l_377 = &p_1951->g_200;
    union U0 *l_403 = &p_1951->g_112;
    int64_t **l_443 = &p_1951->g_393;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_295[i] = 1UL;
    if (((safe_sub_func_uint32_t_u_u(((((safe_sub_func_uint8_t_u_u(p_70, (((((((safe_rshift_func_int16_t_s_u(l_104, 10)) || (safe_add_func_int64_t_s_s((safe_sub_func_uint32_t_u_u((safe_add_func_int8_t_s_s(p_1951->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1951->tid, 1))], (p_1951->g_111[5][3] = p_69))), (0x45AF4611L <= 0x1C85CD55L))), (((((p_69 < (&p_1951->g_83 == (void*)0)) <= p_70) , p_1951->g_15) < p_1951->g_92) <= (**p_67))))) == p_1951->g_15) >= p_1951->g_92) >= 18446744073709551615UL) || 0xD68258FFC12B63EBL) >= p_1951->g_92))) != FAKE_DIVERGE(p_1951->group_2_offset, get_group_id(2), 10)) , p_69) == 0L), 4294967287UL)) <= p_1951->g_94))
    { /* block id: 47 */
        uint64_t l_122 = 0x12300684B4F7ADDDL;
        uint16_t *l_123[4];
        uint64_t l_131 = 0x42BF4A9CFADDF14DL;
        uint8_t *l_134 = &p_1951->g_135;
        int32_t l_136 = 0L;
        int32_t l_168 = 9L;
        int32_t l_169 = (-3L);
        int32_t l_170 = 0x733EA313L;
        uint32_t l_316 = 1UL;
        uint32_t **l_328 = &p_1951->g_150;
        uint32_t l_342 = 4294967287UL;
        uint16_t l_380[8][5][6] = {{{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL}},{{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL}},{{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL}},{{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL}},{{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL}},{{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL}},{{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL}},{{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL},{0x5E5AL,3UL,0UL,0UL,0x5501L,0x2EEBL}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_123[i] = (void*)0;
        (*p_68) = ((~(p_70 < (p_1951->g_112 , (((l_136 |= (l_104 < (safe_unary_minus_func_uint8_t_u((((safe_add_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((((*l_134) = (safe_div_func_uint16_t_u_u((p_1951->g_124 = (safe_lshift_func_uint16_t_u_s(l_122, 3))), (((safe_add_func_uint8_t_u_u((4UL ^ (safe_sub_func_int32_t_s_s((*p_68), ((safe_div_func_int64_t_s_s((+p_70), (l_131 |= l_104))) ^ ((safe_lshift_func_int8_t_s_u((p_70 && p_1951->g_94), 4)) <= p_69))))), p_1951->g_4)) || p_70) , p_1951->g_24)))) == 0x46L), 1UL)), l_122)) >= 0x49BCL) != 3L))))) & 6UL) > 0x1AE5059AL)))) || l_131);
lbl_177:
        (*p_68) |= (safe_lshift_func_uint16_t_u_u((p_1951->g_139 = 65535UL), 10));
        for (p_1951->g_124 = 0; (p_1951->g_124 <= 3); p_1951->g_124 += 1)
        { /* block id: 57 */
            uint64_t l_174 = 0xC1F29E83EF5591ADL;
            uint16_t *l_189 = &p_1951->g_190;
            uint16_t *l_192 = &p_1951->g_190;
            int32_t l_198 = (-1L);
            uint64_t l_236 = 3UL;
            uint16_t ***l_252[2][9] = {{&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217},{&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217,&p_1951->g_217}};
            uint16_t ****l_251 = &l_252[0][0];
            int i, j;
            for (l_104 = 3; (l_104 >= 0); l_104 -= 1)
            { /* block id: 60 */
                int8_t l_186[3][7][10] = {{{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL}},{{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL}},{{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL},{(-7L),8L,0x7CL,(-1L),0L,(-2L),(-1L),(-2L),0x74L,0x2BL}}};
                int32_t l_203[2];
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_203[i] = (-10L);
                for (p_1951->g_112.f1 = 2; (p_1951->g_112.f1 <= 8); p_1951->g_112.f1 += 1)
                { /* block id: 63 */
                    uint32_t **l_151 = (void*)0;
                    int8_t *l_159 = (void*)0;
                    int8_t *l_160 = &p_1951->g_161;
                    int8_t *l_162 = &p_1951->g_163[1][0];
                    int32_t *l_165 = &l_136;
                    int32_t *l_166[4][5][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                    int16_t l_167 = 0x0A81L;
                    uint16_t l_171[7] = {0xCAC9L,0x8387L,0xCAC9L,0xCAC9L,0x8387L,0xCAC9L,0xCAC9L};
                    int i, j, k;
                    p_1951->g_91[p_1951->g_112.f1] = (safe_unary_minus_func_int64_t_s((((*l_162) = (safe_lshift_func_int8_t_s_u(((*l_160) |= (p_1951->g_91[(l_104 + 2)] ^ ((safe_lshift_func_int16_t_s_s(p_1951->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1951->tid, 1))], (safe_add_func_int64_t_s_s(((((p_1951->g_111[1][1] , p_1951->g_149) == l_151) < p_70) | (safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(((((!((p_69 , (safe_mul_func_int16_t_s_s((p_1951->g_158[2] , p_1951->g_139), 0x076BL))) != p_1951->g_124)) <= p_1951->g_111[1][4]) == p_70) , FAKE_DIVERGE(p_1951->global_1_offset, get_global_id(1), 10)), p_1951->g_83)), p_1951->g_24))), p_1951->g_94)))) == p_69))), 6))) , p_1951->g_91[(l_104 + 2)])));
                    l_171[1]++;
                    ++l_174;
                }
                for (l_169 = 0; (l_169 <= 5); l_169 += 1)
                { /* block id: 72 */
                    int32_t l_201[2];
                    uint16_t **l_226 = &l_123[3];
                    uint16_t ***l_225 = &l_226;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_201[i] = 0x61673E31L;
                    if (p_1951->g_139)
                        goto lbl_177;
                    for (p_1951->g_139 = 5; (p_1951->g_139 >= 0); p_1951->g_139 -= 1)
                    { /* block id: 76 */
                        uint16_t **l_191 = (void*)0;
                        uint64_t *l_197 = (void*)0;
                        uint64_t *l_199 = &p_1951->g_200;
                        int32_t l_202 = 0x43741902L;
                        volatile uint8_t * volatile * volatile *l_207[10][9] = {{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204},{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204},{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204},{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204},{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204},{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204},{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204},{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204},{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204},{&p_1951->g_204,&p_1951->g_204,&p_1951->g_204,(void*)0,&p_1951->g_204,(void*)0,&p_1951->g_204,&p_1951->g_204,&p_1951->g_204}};
                        int16_t *l_213 = (void*)0;
                        int16_t *l_214 = &p_1951->g_158[p_1951->g_139].f2;
                        uint16_t ***l_218 = &p_1951->g_217;
                        uint16_t ****l_227 = (void*)0;
                        uint16_t ****l_228 = &l_225;
                        int i, j;
                        (*p_68) = ((safe_rshift_func_int8_t_s_s((((!((safe_sub_func_int16_t_s_s(((l_202 ^= (safe_sub_func_int64_t_s_s(((((void*)0 != &p_68) >= (((safe_mul_func_uint8_t_u_u(l_186[2][2][9], ((((*l_199) = (p_1951->g_92 >= (safe_rshift_func_int16_t_s_u((((l_189 == (l_192 = &p_1951->g_190)) < ((p_1951->g_158[p_1951->g_139] , &p_1951->g_161) != ((((l_198 = (!(safe_div_func_uint32_t_u_u(((((safe_div_func_int64_t_s_s(p_1951->g_83, p_1951->g_24)) & GROUP_DIVERGE(0, 1)) < p_1951->g_111[7][1]) || (-9L)), 0xFB83DA78L)))) && p_69) , 1UL) , &p_1951->g_163[1][0]))) != p_1951->g_15), l_164)))) , l_201[1]) ^ 0x4B76EA8DL))) , p_70) , l_201[1])) ^ FAKE_DIVERGE(p_1951->global_2_offset, get_global_id(2), 10)), GROUP_DIVERGE(1, 1)))) <= p_70), l_203[1])) >= p_70)) && 0x764AL) & 9UL), p_70)) & p_70);
                        p_1951->g_204 = p_1951->g_204;
                        l_168 = (GROUP_DIVERGE(0, 1) || (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int16_t_s((l_202 = ((*l_214) = (l_174 && (safe_lshift_func_uint8_t_u_s(((*l_134) = 0x8EL), 1))))))), (safe_div_func_int64_t_s_s((&l_123[0] == ((*l_218) = p_1951->g_217)), (safe_sub_func_int8_t_s_s((safe_sub_func_int32_t_s_s((l_170 & (((*p_1951->g_150)--) || ((*p_68) = (((*l_228) = l_225) != (void*)0)))), 4294967289UL)), (l_229 == p_1951->g_231[3]))))))));
                    }
                    for (p_1951->g_190 = 0; (p_1951->g_190 <= 5); p_1951->g_190 += 1)
                    { /* block id: 94 */
                        (*p_68) = (safe_div_func_uint16_t_u_u((l_164 = p_70), l_169));
                    }
                    for (p_1951->g_135 = 0; (p_1951->g_135 <= 1); p_1951->g_135 += 1)
                    { /* block id: 100 */
                        int16_t *l_243[9] = {&p_1951->g_158[2].f3,&p_1951->g_158[2].f3,&p_1951->g_158[2].f3,&p_1951->g_158[2].f3,&p_1951->g_158[2].f3,&p_1951->g_158[2].f3,&p_1951->g_158[2].f3,&p_1951->g_158[2].f3,&p_1951->g_158[2].f3};
                        uint64_t *l_247 = &l_131;
                        int i;
                        l_236 &= l_201[p_1951->g_135];
                        l_170 = ((*p_68) |= (safe_rshift_func_int16_t_s_s(p_1951->g_23, 5)));
                        (*p_1951->g_248) |= ((((*l_230) = ((safe_lshift_func_uint8_t_u_u(0UL, ((safe_mul_func_uint16_t_u_u((((0x791079139829F15EL != p_69) >= (p_69 , p_69)) & ((p_69 >= GROUP_DIVERGE(2, 1)) , 0x62603D80L)), (l_198 = p_69))) < ((*l_247) = (safe_mul_func_uint8_t_u_u((1L | p_1951->g_163[1][0]), l_174)))))) & (*p_68))) < p_70) && 1L);
                    }
                }
            }
            if ((*p_68))
                break;
            for (p_1951->g_83 = 0; (p_1951->g_83 < 14); p_1951->g_83++)
            { /* block id: 114 */
                int16_t l_255 = 0x204CL;
                uint64_t *l_256 = &l_122;
                int32_t l_261 = 0L;
                int8_t *l_262 = &p_1951->g_163[4][0];
                int16_t *l_271 = &p_1951->g_244;
                int32_t *l_272 = &p_1951->g_91[4];
                l_198 = (l_251 == (((FAKE_DIVERGE(p_1951->group_1_offset, get_group_id(1), 10) <= (safe_mul_func_int16_t_s_s(p_1951->g_161, (((((*l_256)++) >= 0x56D4CA97DAE8E1FBL) | ((*l_272) = (((p_1951->g_190 &= (safe_lshift_func_uint8_t_u_s(l_261, ((*l_262) &= (~l_164))))) >= ((*l_271) = ((safe_lshift_func_int8_t_s_u(l_255, ((safe_mul_func_uint8_t_u_u((**p_1951->g_204), 0x79L)) | (safe_sub_func_int64_t_s_s(((safe_add_func_uint8_t_u_u(p_69, 1UL)) != FAKE_DIVERGE(p_1951->group_1_offset, get_group_id(1), 10)), p_1951->g_111[5][3]))))) ^ l_104))) == p_1951->g_91[4]))) , l_131)))) < 0x1D70L) , l_273[1][4][2]));
                return p_1951->g_200;
            }
            (*p_71) = ((*p_67) = (*p_71));
        }
        for (p_1951->g_112.f1 = 0; (p_1951->g_112.f1 == 60); ++p_1951->g_112.f1)
        { /* block id: 128 */
            uint8_t **l_281 = &l_134;
            uint8_t ***l_280 = &l_281;
            int32_t l_284 = 0x01AD19E5L;
            int64_t *l_294[1][5];
            uint32_t **l_327 = &p_1951->g_150;
            int32_t l_338[5] = {0x421DA16BL,0x421DA16BL,0x421DA16BL,0x421DA16BL,0x421DA16BL};
            int16_t l_345[6][2][3] = {{{0x7308L,0x1B84L,0x7308L},{0x7308L,0x1B84L,0x7308L}},{{0x7308L,0x1B84L,0x7308L},{0x7308L,0x1B84L,0x7308L}},{{0x7308L,0x1B84L,0x7308L},{0x7308L,0x1B84L,0x7308L}},{{0x7308L,0x1B84L,0x7308L},{0x7308L,0x1B84L,0x7308L}},{{0x7308L,0x1B84L,0x7308L},{0x7308L,0x1B84L,0x7308L}},{{0x7308L,0x1B84L,0x7308L},{0x7308L,0x1B84L,0x7308L}}};
            uint16_t l_346 = 0x0C12L;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 5; j++)
                    l_294[i][j] = &p_1951->g_92;
            }
            (*p_68) &= ((p_1951->g_24 , 0x43EEAD4B14A060F0L) & 0x279585D140373F57L);
            l_164 = ((~l_104) & (l_277 & l_104));
        }
    }
    else
    { /* block id: 208 */
        uint32_t *l_429 = &p_1951->g_94;
        uint32_t **l_430 = &l_429;
        int16_t *l_431 = &p_1951->g_158[2].f2;
        uint64_t l_438 = 1UL;
        int64_t **l_442[1][7] = {{&p_1951->g_393,&p_1951->g_393,&p_1951->g_393,&p_1951->g_393,&p_1951->g_393,&p_1951->g_393,&p_1951->g_393}};
        int64_t ***l_441 = &l_442[0][1];
        int64_t ***l_444 = &l_443;
        int i, j;
        l_339 ^= ((l_164 <= ((((*l_431) = (((*l_430) = l_429) == &p_1951->g_94)) >= ((0x585D9CA60C2E2896L & (safe_rshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_s((FAKE_DIVERGE(p_1951->global_2_offset, get_global_id(2), 10) , (safe_sub_func_int64_t_s_s(l_438, 0x116A9D21E0851634L))), 3)), ((safe_sub_func_int64_t_s_s(p_70, (p_69 &= (((*l_441) = &p_1951->g_393) == ((*l_444) = l_443))))) , 0x6BL)))) <= (*p_1951->g_248))) | p_70)) , l_295[0]);
        return p_70;
    }
    for (p_1951->g_335.f3 = 0; (p_1951->g_335.f3 >= 26); p_1951->g_335.f3 = safe_add_func_int8_t_s_s(p_1951->g_335.f3, 7))
    { /* block id: 219 */
        return p_70;
    }
    return p_1951->g_233;
}


/* ------------------------------------------ */
/* 
 * reads : p_1951->g_97
 * writes: p_1951->g_91
 */
int32_t * func_72(uint32_t  p_73, uint32_t  p_74, uint16_t  p_75, struct S2 * p_1951)
{ /* block id: 41 */
    uint32_t *l_96 = &p_1951->g_83;
    uint32_t **l_95 = &l_96;
    (*p_1951->g_97) = (p_73 | (&p_1951->g_83 != ((*l_95) = &p_1951->g_83)));
    return l_96;
}


/* ------------------------------------------ */
/* 
 * reads : p_1951->g_41 p_1951->g_4 p_1951->g_91 p_1951->g_92
 * writes: p_1951->g_91 p_1951->g_92
 */
uint16_t  func_84(uint32_t * p_85, uint32_t  p_86, uint32_t  p_87, int64_t  p_88, int16_t  p_89, struct S2 * p_1951)
{ /* block id: 35 */
    int32_t *l_90 = &p_1951->g_91[4];
    (*l_90) |= (*p_1951->g_41);
    (*l_90) = (p_1951->g_92 |= (*l_90));
    return p_86;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_comm_values[i] = 1;
    struct S2 c_1952;
    struct S2* p_1951 = &c_1952;
    struct S2 c_1953 = {
        0x4EEA2A3BL, // p_1951->g_4
        1L, // p_1951->g_15
        0x37F4A7D2L, // p_1951->g_23
        0x57B1A094L, // p_1951->g_24
        &p_1951->g_24, // p_1951->g_41
        {&p_1951->g_41,&p_1951->g_41,&p_1951->g_41,&p_1951->g_41,&p_1951->g_41,&p_1951->g_41}, // p_1951->g_40
        (void*)0, // p_1951->g_62
        &p_1951->g_41, // p_1951->g_63
        1UL, // p_1951->g_83
        {0x46280EF9L,0x41DA26C0L,0x46280EF9L,0x46280EF9L,0x41DA26C0L,0x46280EF9L,0x46280EF9L,0x41DA26C0L,0x46280EF9L}, // p_1951->g_91
        0x7E6DEFB240BFACF2L, // p_1951->g_92
        0xE42D4C9FL, // p_1951->g_94
        &p_1951->g_91[4], // p_1951->g_97
        {{0xBE25140FL,0x5C0E06A6L,0UL,0x5C0E06A6L,0xBE25140FL},{0xBE25140FL,0x5C0E06A6L,0UL,0x5C0E06A6L,0xBE25140FL},{0xBE25140FL,0x5C0E06A6L,0UL,0x5C0E06A6L,0xBE25140FL},{0xBE25140FL,0x5C0E06A6L,0UL,0x5C0E06A6L,0xBE25140FL},{0xBE25140FL,0x5C0E06A6L,0UL,0x5C0E06A6L,0xBE25140FL},{0xBE25140FL,0x5C0E06A6L,0UL,0x5C0E06A6L,0xBE25140FL},{0xBE25140FL,0x5C0E06A6L,0UL,0x5C0E06A6L,0xBE25140FL},{0xBE25140FL,0x5C0E06A6L,0UL,0x5C0E06A6L,0xBE25140FL},{0xBE25140FL,0x5C0E06A6L,0UL,0x5C0E06A6L,0xBE25140FL}}, // p_1951->g_111
        {1UL}, // p_1951->g_112
        18446744073709551615UL, // p_1951->g_124
        0xE7L, // p_1951->g_135
        0x52015B94L, // p_1951->g_139
        &p_1951->g_83, // p_1951->g_150
        &p_1951->g_150, // p_1951->g_149
        {{1L},{1L},{1L},{1L},{1L},{1L}}, // p_1951->g_158
        0x6BL, // p_1951->g_161
        {{0x59L},{0x59L},{0x59L},{0x59L},{0x59L},{0x59L},{0x59L},{0x59L}}, // p_1951->g_163
        0UL, // p_1951->g_190
        18446744073709551613UL, // p_1951->g_200
        0xCEL, // p_1951->g_206
        {&p_1951->g_206}, // p_1951->g_205
        &p_1951->g_205[0], // p_1951->g_204
        (void*)0, // p_1951->g_217
        0UL, // p_1951->g_233
        {{(void*)0,&p_1951->g_233,(void*)0,(void*)0,&p_1951->g_233,(void*)0,(void*)0,&p_1951->g_233,(void*)0}}, // p_1951->g_232
        {&p_1951->g_232[0][6],&p_1951->g_232[0][6],&p_1951->g_232[0][6],&p_1951->g_232[0][6],&p_1951->g_232[0][6],&p_1951->g_232[0][6]}, // p_1951->g_231
        (-10L), // p_1951->g_244
        &p_1951->g_91[5], // p_1951->g_248
        0x9DL, // p_1951->g_313
        &p_1951->g_313, // p_1951->g_312
        &p_1951->g_313, // p_1951->g_315
        (void*)0, // p_1951->g_334
        {-1L}, // p_1951->g_335
        (void*)0, // p_1951->g_393
        0UL, // p_1951->g_447
        0L, // p_1951->g_450
        {0x41L}, // p_1951->g_459
        0x34D9A9D9L, // p_1951->g_483
        (void*)0, // p_1951->g_530
        &p_1951->g_530, // p_1951->g_529
        (-4L), // p_1951->g_554
        &p_1951->g_554, // p_1951->g_580
        0xEE83L, // p_1951->g_616
        1UL, // p_1951->g_681
        {3L}, // p_1951->g_719
        (-4L), // p_1951->g_769
        0x3BB3B572L, // p_1951->g_771
        &p_1951->g_771, // p_1951->g_770
        {0x78L}, // p_1951->g_849
        (-6L), // p_1951->g_862
        0x68D22BB14FFDBC52L, // p_1951->g_918
        18446744073709551613UL, // p_1951->g_957
        &p_1951->g_483, // p_1951->g_963
        {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}, // p_1951->g_967
        &p_1951->g_967[0][0], // p_1951->g_966
        &p_1951->g_150, // p_1951->g_1089
        &p_1951->g_1089, // p_1951->g_1088
        {7L}, // p_1951->g_1092
        {-10L}, // p_1951->g_1121
        (void*)0, // p_1951->g_1153
        {{{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}}},{{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}}},{{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}}},{{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}}},{{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}},{{0L},{0L},{8L},{0L}}}}, // p_1951->g_1165
        {{&p_1951->g_41,&p_1951->g_41},{&p_1951->g_41,&p_1951->g_41},{&p_1951->g_41,&p_1951->g_41},{&p_1951->g_41,&p_1951->g_41},{&p_1951->g_41,&p_1951->g_41},{&p_1951->g_41,&p_1951->g_41},{&p_1951->g_41,&p_1951->g_41},{&p_1951->g_41,&p_1951->g_41}}, // p_1951->g_1194
        &p_1951->g_41, // p_1951->g_1195
        1L, // p_1951->g_1206
        &p_1951->g_459, // p_1951->g_1256
        1UL, // p_1951->g_1272
        {{18446744073709551615UL,18446744073709551615UL,0UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,0UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}}, // p_1951->g_1276
        &p_1951->g_1276[0][2], // p_1951->g_1275
        &p_1951->g_1275, // p_1951->g_1274
        {0x38968284L}, // p_1951->g_1280
        {&p_1951->g_1280,&p_1951->g_1280,&p_1951->g_1280,&p_1951->g_1280}, // p_1951->g_1279
        &p_1951->g_1279[2], // p_1951->g_1278
        0x326C00FAC63386ABL, // p_1951->g_1291
        &p_1951->g_41, // p_1951->g_1313
        {{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}, // p_1951->g_1314
        (void*)0, // p_1951->g_1324
        &p_1951->g_1324, // p_1951->g_1323
        (void*)0, // p_1951->g_1344
        &p_1951->g_312, // p_1951->g_1363
        &p_1951->g_1363, // p_1951->g_1362
        &p_1951->g_1362, // p_1951->g_1361
        {1L}, // p_1951->g_1396
        (void*)0, // p_1951->g_1411
        0x18291E88F57F3377L, // p_1951->g_1423
        &p_1951->g_41, // p_1951->g_1429
        &p_1951->g_124, // p_1951->g_1444
        {-3L}, // p_1951->g_1472
        &p_1951->g_112.f0, // p_1951->g_1739
        &p_1951->g_1739, // p_1951->g_1738
        &p_1951->g_1738, // p_1951->g_1737
        &p_1951->g_963, // p_1951->g_1815
        {&p_1951->g_1815,&p_1951->g_1815,&p_1951->g_1815,&p_1951->g_1815,&p_1951->g_1815,&p_1951->g_1815,&p_1951->g_1815}, // p_1951->g_1814
        (void*)0, // p_1951->g_1824
        &p_1951->g_41, // p_1951->g_1878
        1UL, // p_1951->g_1950
        sequence_input[get_global_id(0)], // p_1951->global_0_offset
        sequence_input[get_global_id(1)], // p_1951->global_1_offset
        sequence_input[get_global_id(2)], // p_1951->global_2_offset
        sequence_input[get_local_id(0)], // p_1951->local_0_offset
        sequence_input[get_local_id(1)], // p_1951->local_1_offset
        sequence_input[get_local_id(2)], // p_1951->local_2_offset
        sequence_input[get_group_id(0)], // p_1951->group_0_offset
        sequence_input[get_group_id(1)], // p_1951->group_1_offset
        sequence_input[get_group_id(2)], // p_1951->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[0][get_linear_local_id()])), // p_1951->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1952 = c_1953;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1951);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1951->g_4, "p_1951->g_4", print_hash_value);
    transparent_crc(p_1951->g_15, "p_1951->g_15", print_hash_value);
    transparent_crc(p_1951->g_23, "p_1951->g_23", print_hash_value);
    transparent_crc(p_1951->g_24, "p_1951->g_24", print_hash_value);
    transparent_crc(p_1951->g_83, "p_1951->g_83", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1951->g_91[i], "p_1951->g_91[i]", print_hash_value);

    }
    transparent_crc(p_1951->g_92, "p_1951->g_92", print_hash_value);
    transparent_crc(p_1951->g_94, "p_1951->g_94", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1951->g_111[i][j], "p_1951->g_111[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1951->g_112.f0, "p_1951->g_112.f0", print_hash_value);
    transparent_crc(p_1951->g_124, "p_1951->g_124", print_hash_value);
    transparent_crc(p_1951->g_135, "p_1951->g_135", print_hash_value);
    transparent_crc(p_1951->g_139, "p_1951->g_139", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1951->g_158[i].f0, "p_1951->g_158[i].f0", print_hash_value);

    }
    transparent_crc(p_1951->g_161, "p_1951->g_161", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1951->g_163[i][j], "p_1951->g_163[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1951->g_190, "p_1951->g_190", print_hash_value);
    transparent_crc(p_1951->g_200, "p_1951->g_200", print_hash_value);
    transparent_crc(p_1951->g_206, "p_1951->g_206", print_hash_value);
    transparent_crc(p_1951->g_233, "p_1951->g_233", print_hash_value);
    transparent_crc(p_1951->g_244, "p_1951->g_244", print_hash_value);
    transparent_crc(p_1951->g_313, "p_1951->g_313", print_hash_value);
    transparent_crc(p_1951->g_335.f0, "p_1951->g_335.f0", print_hash_value);
    transparent_crc(p_1951->g_447, "p_1951->g_447", print_hash_value);
    transparent_crc(p_1951->g_450, "p_1951->g_450", print_hash_value);
    transparent_crc(p_1951->g_459.f0, "p_1951->g_459.f0", print_hash_value);
    transparent_crc(p_1951->g_483, "p_1951->g_483", print_hash_value);
    transparent_crc(p_1951->g_554, "p_1951->g_554", print_hash_value);
    transparent_crc(p_1951->g_616, "p_1951->g_616", print_hash_value);
    transparent_crc(p_1951->g_681, "p_1951->g_681", print_hash_value);
    transparent_crc(p_1951->g_769, "p_1951->g_769", print_hash_value);
    transparent_crc(p_1951->g_771, "p_1951->g_771", print_hash_value);
    transparent_crc(p_1951->g_849.f0, "p_1951->g_849.f0", print_hash_value);
    transparent_crc(p_1951->g_862, "p_1951->g_862", print_hash_value);
    transparent_crc(p_1951->g_918, "p_1951->g_918", print_hash_value);
    transparent_crc(p_1951->g_957, "p_1951->g_957", print_hash_value);
    transparent_crc(p_1951->g_1092.f0, "p_1951->g_1092.f0", print_hash_value);
    transparent_crc(p_1951->g_1121.f0, "p_1951->g_1121.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1951->g_1165[i][j][k].f0, "p_1951->g_1165[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1951->g_1206, "p_1951->g_1206", print_hash_value);
    transparent_crc(p_1951->g_1272, "p_1951->g_1272", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1951->g_1276[i][j], "p_1951->g_1276[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1951->g_1280.f0, "p_1951->g_1280.f0", print_hash_value);
    transparent_crc(p_1951->g_1291, "p_1951->g_1291", print_hash_value);
    transparent_crc(p_1951->g_1396.f1, "p_1951->g_1396.f1", print_hash_value);
    transparent_crc(p_1951->g_1423, "p_1951->g_1423", print_hash_value);
    transparent_crc(p_1951->g_1472.f0, "p_1951->g_1472.f0", print_hash_value);
    transparent_crc(p_1951->g_1950, "p_1951->g_1950", print_hash_value);
    transparent_crc(p_1951->l_comm_values[get_linear_local_id()], "p_1951->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1951->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()], "p_1951->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
