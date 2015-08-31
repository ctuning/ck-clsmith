// ---fake_divergence -g 13,1,661 -l 13,1,1
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


// Seed: 78

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   uint32_t  f1;
   volatile int8_t * volatile  f2;
   uint32_t  f3;
   uint32_t  f4;
};

struct S1 {
    int64_t g_24;
    int8_t g_27[6][6];
    int8_t *g_26;
    int32_t g_51;
    volatile int8_t g_59;
    uint8_t g_62;
    int8_t g_80[3][7];
    volatile union U0 g_86;
    uint32_t g_88;
    int64_t g_93[8];
    int32_t g_104[7][10][1];
    int32_t *g_103;
    volatile union U0 g_115;
    uint64_t g_145;
    int64_t *g_156;
    int64_t **g_155[9];
    uint16_t g_163;
    uint16_t *g_162[8];
    uint32_t g_164[9];
    int32_t ** volatile g_211;
    int16_t g_220;
    int32_t g_221;
    int16_t g_231;
    int16_t g_232;
    int32_t ** volatile g_234;
    uint8_t g_289;
    int32_t ** volatile g_293;
    int32_t **g_322;
    uint8_t g_359[1];
    uint32_t g_362[6][4][3];
    uint64_t g_392[1];
    uint8_t *g_393;
    int16_t *g_395;
    int16_t **g_394;
    union U0 g_400;
    int64_t g_463;
    int32_t ** volatile g_520;
    int32_t g_544;
    int32_t * volatile g_551;
    int32_t * volatile g_605;
    int32_t * volatile g_695;
    int32_t * volatile g_720;
    int32_t g_722;
    int32_t * volatile g_721[2];
    int32_t g_748[7][5];
    uint64_t g_758[9][4][3];
    int32_t * volatile g_759;
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
uint32_t  func_1(struct S1 * p_760);
uint64_t  func_8(int8_t * p_9, uint32_t  p_10, int8_t * p_11, struct S1 * p_760);
int8_t * func_12(int16_t  p_13, int32_t  p_14, int8_t * p_15, uint32_t  p_16, struct S1 * p_760);
uint64_t  func_19(int8_t * p_20, struct S1 * p_760);
int8_t * func_30(int32_t  p_31, int8_t * p_32, int64_t  p_33, struct S1 * p_760);
int8_t * func_34(uint16_t  p_35, uint32_t  p_36, uint32_t  p_37, int8_t * p_38, struct S1 * p_760);
int8_t * func_42(int8_t * p_43, struct S1 * p_760);
int8_t * func_44(int8_t * p_45, struct S1 * p_760);
int8_t * func_46(int32_t  p_47, struct S1 * p_760);
uint16_t  func_73(uint64_t  p_74, int32_t  p_75, uint64_t  p_76, int32_t  p_77, int32_t  p_78, struct S1 * p_760);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_760->g_24 p_760->g_26 p_760->g_62 p_760->g_103 p_760->g_104 p_760->g_145 p_760->g_51 p_760->g_93 p_760->g_27 p_760->g_59 p_760->g_234 p_760->g_211 p_760->g_220 p_760->g_231 p_760->g_221 p_760->g_289 p_760->g_293 p_760->g_164 p_760->g_163 p_760->g_88 p_760->g_232 p_760->g_156 p_760->g_80 p_760->g_322 p_760->g_359 p_760->g_362 p_760->g_86.f0 p_760->g_393 p_760->g_394 p_760->g_463 p_760->g_155 p_760->g_520 p_760->g_395 p_760->g_392 p_760->g_544 p_760->g_551 p_760->g_400.f0 p_760->g_695 p_760->g_748 p_760->g_722 p_760->g_759
 * writes: p_760->g_24 p_760->g_62 p_760->g_104 p_760->g_145 p_760->g_93 p_760->g_51 p_760->g_220 p_760->g_221 p_760->g_231 p_760->g_232 p_760->g_103 p_760->g_289 p_760->g_88 p_760->g_27 p_760->g_322 p_760->g_359 p_760->g_362 p_760->g_392 p_760->g_394 p_760->g_163 p_760->g_155 p_760->g_26 p_760->g_544 p_760->g_164 p_760->g_463 p_760->g_400.f4 p_760->g_722 p_760->g_758
 */
uint32_t  func_1(struct S1 * p_760)
{ /* block id: 4 */
    int8_t l_2 = 0L;
    int32_t l_3 = 0x404CCB63L;
    int16_t l_25 = 0x0EA2L;
    uint64_t *l_757 = &p_760->g_758[6][1][0];
    (*p_760->g_759) = (((l_3 = l_2) ^ (safe_add_func_int8_t_s_s(((((safe_lshift_func_uint16_t_u_s(0x28FDL, 11)) , (+(((*l_757) = func_8(func_12((safe_div_func_int32_t_s_s((l_2 > func_19(&l_2, p_760)), 0x26C7F05FL)), (l_25 < p_760->g_24), p_760->g_26, l_2, p_760), p_760->g_400.f0, &l_2, p_760)) , l_25))) < (-1L)) , (*p_760->g_26)), GROUP_DIVERGE(0, 1)))) , l_25);
    return l_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_760->g_26 p_760->g_392 p_760->g_551 p_760->g_104 p_760->g_80 p_760->g_359 p_760->g_156 p_760->g_24 p_760->g_164 p_760->g_393 p_760->g_62 p_760->g_544 p_760->g_463 p_760->g_27 p_760->g_289 p_760->g_232 p_760->g_51 p_760->g_395 p_760->g_231 p_760->g_695 p_760->g_86.f0 p_760->g_362 p_760->g_748 p_760->g_722 p_760->g_93
 * writes: p_760->g_27 p_760->g_392 p_760->g_362 p_760->g_24 p_760->g_164 p_760->g_544 p_760->g_463 p_760->g_104 p_760->g_289 p_760->g_232 p_760->g_400.f4 p_760->g_722 p_760->g_231
 */
uint64_t  func_8(int8_t * p_9, uint32_t  p_10, int8_t * p_11, struct S1 * p_760)
{ /* block id: 294 */
    uint64_t l_560[10][8][3] = {{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}},{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}},{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}},{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}},{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}},{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}},{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}},{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}},{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}},{{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL},{0x43A98BC13282A5ABL,4UL,18446744073709551611UL}}};
    uint64_t *l_561 = &p_760->g_392[0];
    uint32_t *l_594 = &p_760->g_362[3][1][0];
    int32_t l_599 = 1L;
    int32_t l_600 = 0L;
    int32_t l_601 = 0x75731FEFL;
    int64_t l_602 = 0x3F99D743234F3E96L;
    uint32_t *l_603 = &p_760->g_164[8];
    int32_t *l_604 = &p_760->g_544;
    int32_t l_606 = (-10L);
    uint8_t l_691 = 0x3CL;
    int64_t l_749 = 1L;
    int64_t l_754 = 0x5FF35C2D20BB7755L;
    int16_t *l_756 = &p_760->g_231;
    int i, j, k;
    l_606 = (safe_rshift_func_int8_t_s_u(((*p_760->g_26) = 0x22L), (safe_lshift_func_int8_t_s_u((safe_div_func_uint8_t_u_u((l_560[7][1][0] & ((((*l_561)++) | (((*l_604) &= (safe_lshift_func_int8_t_s_u((((*l_603) ^= (safe_mod_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(0xE4F53F8D572FAADEL, ((*p_760->g_156) &= ((((((*l_594) = ((safe_lshift_func_int16_t_s_s((safe_div_func_int32_t_s_s(((safe_unary_minus_func_int8_t_s((safe_div_func_uint64_t_u_u((safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((l_601 ^= (safe_div_func_uint16_t_u_u((safe_div_func_int32_t_s_s((l_560[5][3][1] < ((l_600 = (safe_sub_func_uint16_t_u_u(((safe_unary_minus_func_uint16_t_u((safe_add_func_uint8_t_u_u(((void*)0 != l_594), (*p_11))))) && (safe_add_func_int64_t_s_s(((safe_add_func_uint16_t_u_u(l_599, p_10)) & p_10), l_560[7][1][0]))), p_10))) & 0L)), (*p_760->g_551))), l_560[3][0][0]))), 4)), 1UL)), p_760->g_80[1][0])))) , l_602), 5UL)), 10)) <= (-1L))) ^ p_10) , (*p_11)) == GROUP_DIVERGE(2, 1)) == p_760->g_359[0])))), (-9L))), p_10))) , (*p_11)), (*p_760->g_393)))) < l_602)) & 0x46L)), p_10)), 4))));
    for (p_760->g_463 = 0; (p_760->g_463 <= 0); p_760->g_463 += 1)
    { /* block id: 306 */
        uint64_t l_620 = 0x6EBE6280418B49FAL;
        int64_t *l_649 = &p_760->g_93[5];
        int32_t l_651 = 0x203C4133L;
        int32_t l_652 = 0x7EB6EB37L;
        int16_t l_666 = (-1L);
        int8_t l_694 = (-6L);
        uint32_t l_718 = 4294967295UL;
        int32_t ****l_719 = (void*)0;
        int64_t l_743 = 0x455ADA78A02BC215L;
        for (p_760->g_544 = 0; (p_760->g_544 <= 0); p_760->g_544 += 1)
        { /* block id: 309 */
            int32_t *l_625 = &l_606;
            int32_t l_670 = 0L;
            int32_t ***l_679 = (void*)0;
            int64_t ***l_686 = &p_760->g_155[0];
            int8_t *l_692 = (void*)0;
            uint16_t l_693 = 4UL;
            int i;
            if (p_760->g_359[p_760->g_463])
            { /* block id: 310 */
                int64_t ***l_617[1];
                int64_t ***l_619 = (void*)0;
                int i;
                for (i = 0; i < 1; i++)
                    l_617[i] = &p_760->g_155[8];
                for (l_602 = 2; (l_602 >= 0); l_602 -= 1)
                { /* block id: 313 */
                    int64_t ****l_618 = &l_617[0];
                    int32_t *l_626 = (void*)0;
                    int i, j, k;
                    p_760->g_104[(p_760->g_463 + 6)][(l_602 + 7)][p_760->g_544] = (safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_u(((l_560[(p_760->g_544 + 6)][(p_760->g_544 + 5)][(p_760->g_544 + 2)] | (safe_sub_func_uint8_t_u_u((~((safe_add_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(p_760->g_104[(l_602 + 4)][p_760->g_463][p_760->g_544], (((*l_618) = l_617[0]) != (p_760->g_104[(p_760->g_544 + 3)][(p_760->g_544 + 7)][p_760->g_463] , l_619)))) , (*l_604)), l_620)) || ((*p_760->g_26) >= ((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(0xEECFL, 5)), (*l_604))) > (*l_604))))), 0x52L))) || 0x355AE17CL), 4)), 6));
                    l_626 = l_625;
                    l_604 = &p_760->g_104[(p_760->g_463 + 6)][(l_602 + 7)][p_760->g_544];
                }
            }
            else
            { /* block id: 319 */
                uint16_t l_647 = 9UL;
                int64_t *l_648 = &p_760->g_463;
                int32_t **l_669[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_669[i] = &p_760->g_103;
                for (p_760->g_289 = 0; (p_760->g_289 <= 2); p_760->g_289 += 1)
                { /* block id: 322 */
                    uint32_t *l_644[7] = {&p_760->g_164[8],&p_760->g_164[1],&p_760->g_164[8],&p_760->g_164[8],&p_760->g_164[1],&p_760->g_164[8],&p_760->g_164[8]};
                    int i, j, k;
                    for (p_760->g_232 = 2; (p_760->g_232 >= 0); p_760->g_232 -= 1)
                    { /* block id: 325 */
                        int32_t *l_650[3];
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_650[i] = &p_760->g_104[5][0][0];
                        l_652 |= (l_651 &= (l_560[(p_760->g_289 + 1)][(p_760->g_232 + 1)][p_760->g_289] <= ((safe_sub_func_uint32_t_u_u(p_760->g_80[(p_760->g_544 + 2)][(p_760->g_232 + 2)], (safe_mod_func_uint32_t_u_u((safe_add_func_int64_t_s_s((safe_mul_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s((safe_mul_func_uint32_t_u_u(0x12A6BD3BL, (FAKE_DIVERGE(p_760->global_2_offset, get_global_id(2), 10) , (((*p_760->g_156) || (((((*l_625) = (safe_unary_minus_func_uint8_t_u((safe_add_func_int16_t_s_s(((void*)0 != l_644[4]), (safe_mod_func_int16_t_s_s((l_625 != &p_760->g_362[1][2][1]), (p_10 | l_647)))))))) && GROUP_DIVERGE(1, 1)) , l_648) == l_649)) == p_10)))), l_647)) , p_10), FAKE_DIVERGE(p_760->group_2_offset, get_group_id(2), 10))) ^ FAKE_DIVERGE(p_760->group_0_offset, get_group_id(0), 10)) | 1UL), (*p_760->g_26))), p_10)), l_620)))) , p_10)));
                    }
                    (*l_625) = (safe_lshift_func_int16_t_s_u(((&p_760->g_26 == (void*)0) , (((safe_add_func_int32_t_s_s(((safe_mod_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u(18446744073709551611UL, ((*p_760->g_156) = (safe_div_func_uint16_t_u_u((safe_unary_minus_func_uint16_t_u(((safe_mul_func_int8_t_s_s((+l_560[p_760->g_463][(p_760->g_544 + 6)][p_760->g_463]), ((l_666 & (((+(0x41L <= ((p_760->g_51 ^ (l_669[5] != &l_604)) <= 0x60DDL))) || l_560[p_760->g_463][(p_760->g_544 + 6)][p_760->g_463]) , p_10)) <= p_10))) == GROUP_DIVERGE(1, 1)))), l_670))))) <= 0x1418L), (*p_760->g_395))) && (*l_625)), (*l_604))) | p_10) ^ p_760->g_392[0])), l_620));
                }
                for (p_760->g_24 = 0; (p_760->g_24 <= 2); p_760->g_24 += 1)
                { /* block id: 335 */
                    if ((*l_625))
                        break;
                }
                (*l_625) |= 0x7CF2D816L;
            }
            (*p_760->g_695) = ((((safe_lshift_func_int8_t_s_u(((*p_760->g_26) = ((((safe_lshift_func_int8_t_s_s((-1L), ((*l_625) ^= (safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_s(((l_679 == &p_760->g_520) ^ (p_10 & (((((safe_sub_func_uint64_t_u_u(((safe_add_func_int32_t_s_s((5UL | (((((safe_sub_func_uint8_t_u_u((!p_10), ((l_686 == &p_760->g_155[8]) , (safe_mod_func_uint16_t_u_u((FAKE_DIVERGE(p_760->global_0_offset, get_global_id(0), 10) ^ (((safe_mod_func_uint64_t_u_u(((((!(*p_9)) ^ (*p_9)) & p_10) , GROUP_DIVERGE(1, 1)), p_10)) , (void*)0) == (void*)0)), p_10))))) , (*p_760->g_395)) || p_10) & 3L) ^ p_760->g_231)), FAKE_DIVERGE(p_760->global_2_offset, get_global_id(2), 10))) == l_651), l_651)) || p_10) & l_691) > 0x18L) <= GROUP_DIVERGE(0, 1)))), 14)), 15))))) & FAKE_DIVERGE(p_760->global_2_offset, get_global_id(2), 10)) <= 0x28DED011EEA03583L) ^ (-9L))), (*l_604))) == l_693) <= l_694) != p_10);
        }
        l_652 ^= (((safe_mul_func_uint16_t_u_u((((*l_604) ^ p_760->g_51) > ((*l_604) < (*l_604))), ((safe_sub_func_int8_t_s_s((((l_694 || (safe_sub_func_uint16_t_u_u(((safe_mod_func_int32_t_s_s((((safe_div_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((*p_760->g_393), ((~((safe_lshift_func_int8_t_s_s(((safe_sub_func_uint32_t_u_u(0xE83AEAE3L, (((safe_mod_func_int64_t_s_s(((*p_760->g_156) = ((((safe_rshift_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((((*p_9) = (((0x7F14L & (&p_760->g_80[1][3] == &p_760->g_80[1][3])) ^ l_651) & 0L)) ^ (-1L)), l_651)), 14)) != l_620) ^ l_620) & FAKE_DIVERGE(p_760->local_1_offset, get_local_id(1), 10))), p_10)) >= FAKE_DIVERGE(p_760->local_0_offset, get_local_id(0), 10)) != (*l_604)))) <= p_10), l_718)) , (*p_760->g_393))) >= 255UL))), p_10)) <= l_620) > l_694), p_10)) ^ l_694), 0x5470L))) <= 0L) <= FAKE_DIVERGE(p_760->global_1_offset, get_global_id(1), 10)), 0xC7L)) , 0x76D6L))) , (void*)0) == l_719);
        p_760->g_722 |= ((safe_rshift_func_uint8_t_u_s((safe_mod_func_uint16_t_u_u((((~(safe_sub_func_int64_t_s_s(((0x0F2A3899L < ((((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((safe_div_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u((0x0C064BCF5F2D5231L & ((((safe_rshift_func_uint16_t_u_u((p_10 | (((0x12A2D4A0L == (safe_div_func_int8_t_s_s(((((0L ^ (((*l_594) |= (p_760->g_400.f4 = p_760->g_86.f0)) >= (safe_mod_func_int32_t_s_s(((l_743 == (-6L)) , ((safe_lshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((((p_10 || 0UL) <= 4294967294UL) , p_10) , 1UL), p_10)), (*p_760->g_26))) <= (*l_604))), (-1L))))) , 0x4ABCE77DE8DE3926L) , &l_560[7][1][0]) != &l_560[7][1][0]), (*l_604)))) , &p_760->g_395) != (void*)0)), 0)) != (*p_9)) , 0x1D7DF77C9EB97060L) >= 0x6743E3148E4F844DL)), p_10)) < p_760->g_748[3][2]), (*p_760->g_393))) >= p_10))) || (*p_760->g_395)) & 0L) ^ 0x0FF61E8BF31E3325L)) || (*p_760->g_395)), l_749))) || 6L) && p_10), p_10)), 5)) ^ 0xF9CC91B5A5FBDBCAL);
    }
    l_600 &= (p_760->g_289 , (safe_lshift_func_uint8_t_u_s((+(((*l_604) < (safe_rshift_func_int16_t_s_s(((*l_756) |= ((*p_760->g_395) = ((GROUP_DIVERGE(1, 1) , (((p_10 , l_754) , ((0x38L | (*p_11)) , (void*)0)) != &p_760->g_26)) , ((~(safe_unary_minus_func_int16_t_s(0x4E39L))) , (*p_760->g_395))))), 9))) , p_10)), 6)));
    return p_760->g_93[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_760->g_24 p_760->g_62 p_760->g_103 p_760->g_104 p_760->g_145 p_760->g_51 p_760->g_93 p_760->g_27 p_760->g_59 p_760->g_234 p_760->g_211 p_760->g_220 p_760->g_231 p_760->g_221 p_760->g_289 p_760->g_293 p_760->g_164 p_760->g_163 p_760->g_88 p_760->g_232 p_760->g_156 p_760->g_80 p_760->g_26 p_760->g_322 p_760->g_359 p_760->g_362 p_760->g_86.f0 p_760->g_393 p_760->g_394 p_760->g_463 p_760->g_155 p_760->g_520 p_760->g_395 p_760->g_392 p_760->g_544 p_760->g_551
 * writes: p_760->g_24 p_760->g_62 p_760->g_104 p_760->g_145 p_760->g_93 p_760->g_51 p_760->g_220 p_760->g_221 p_760->g_231 p_760->g_232 p_760->g_103 p_760->g_289 p_760->g_88 p_760->g_27 p_760->g_322 p_760->g_359 p_760->g_362 p_760->g_392 p_760->g_394 p_760->g_163 p_760->g_155 p_760->g_26 p_760->g_544
 */
int8_t * func_12(int16_t  p_13, int32_t  p_14, int8_t * p_15, uint32_t  p_16, struct S1 * p_760)
{ /* block id: 9 */
    int64_t l_39 = 0x67606E82A74DB503L;
    int8_t **l_549 = (void*)0;
    int8_t **l_550 = &p_760->g_26;
    (*p_760->g_551) = (safe_rshift_func_uint8_t_u_u((((*l_550) = func_30(p_14, (((p_760->g_24 , func_34((&p_760->g_27[2][0] == (void*)0), l_39, (p_16 && (safe_add_func_uint16_t_u_u(func_19(func_42(func_44(func_46(p_14, p_760), p_760), p_760), p_760), 65526UL))), &p_760->g_80[1][1], p_760)) != (void*)0) , (void*)0), l_39, p_760)) == (void*)0), p_760->g_80[2][0]));
    for (p_760->g_220 = 0; (p_760->g_220 != (-15)); p_760->g_220 = safe_sub_func_uint16_t_u_u(p_760->g_220, 2))
    { /* block id: 289 */
        return p_15;
    }
    (*p_760->g_551) = 0x6D14C515L;
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_760->g_24
 * writes:
 */
uint64_t  func_19(int8_t * p_20, struct S1 * p_760)
{ /* block id: 6 */
    uint16_t l_21 = 0xA85FL;
    --l_21;
    return p_760->g_24;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_30(int32_t  p_31, int8_t * p_32, int64_t  p_33, struct S1 * p_760)
{ /* block id: 282 */
    int32_t *l_547[5];
    int32_t *l_548[5][1][1] = {{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_547[i] = &p_760->g_104[5][0][0];
    l_548[1][0][0] = l_547[4];
    return &p_760->g_27[2][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_760->g_393 p_760->g_80 p_760->g_463 p_760->g_156 p_760->g_24 p_760->g_155 p_760->g_104 p_760->g_520 p_760->g_26 p_760->g_51 p_760->g_395 p_760->g_232 p_760->g_392 p_760->g_544 p_760->g_289 p_760->g_293 p_760->g_103
 * writes: p_760->g_62 p_760->g_155 p_760->g_26 p_760->g_104 p_760->g_103 p_760->g_24 p_760->g_394 p_760->g_51 p_760->g_544 p_760->g_289 p_760->g_232
 */
int8_t * func_34(uint16_t  p_35, uint32_t  p_36, uint32_t  p_37, int8_t * p_38, struct S1 * p_760)
{ /* block id: 251 */
    int32_t l_504 = 0L;
    int64_t **l_505 = &p_760->g_156;
    int64_t ***l_506 = &p_760->g_155[8];
    int8_t *l_511 = &p_760->g_80[2][3];
    int8_t **l_512[5][4] = {{(void*)0,&p_760->g_26,&l_511,&p_760->g_26},{(void*)0,&p_760->g_26,&l_511,&p_760->g_26},{(void*)0,&p_760->g_26,&l_511,&p_760->g_26},{(void*)0,&p_760->g_26,&l_511,&p_760->g_26},{(void*)0,&p_760->g_26,&l_511,&p_760->g_26}};
    int32_t *l_513 = &p_760->g_104[5][0][0];
    int64_t *l_516[1];
    int16_t **l_542 = &p_760->g_395;
    int i, j;
    for (i = 0; i < 1; i++)
        l_516[i] = &p_760->g_24;
    (*l_513) = (safe_div_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_s((((((safe_mod_func_uint8_t_u_u(((*p_760->g_393) = 254UL), l_504)) , ((l_505 == ((*l_506) = l_505)) && p_35)) == ((1UL > ((safe_rshift_func_int8_t_s_u((*p_38), (safe_lshift_func_int16_t_s_s((&p_760->g_27[2][0] == (p_760->g_26 = l_511)), 8)))) , p_760->g_463)) != p_36)) == 0x3E61L) && 0x203BE59EL), l_504)) & (*p_760->g_156)), p_37));
    if ((((safe_lshift_func_int8_t_s_s(((**l_506) == l_516[0]), 7)) , (*p_38)) | ((*l_513) , 0x20L)))
    { /* block id: 256 */
        uint64_t *l_517 = &p_760->g_145;
        uint64_t **l_518 = &l_517;
        (*l_513) = (((*l_518) = l_517) != l_516[0]);
        return &p_760->g_27[5][5];
    }
    else
    { /* block id: 260 */
        int32_t *l_519 = &p_760->g_51;
        int32_t ***l_533 = &p_760->g_322;
        int32_t ****l_534 = &l_533;
        int16_t ***l_541[6] = {&p_760->g_394,&p_760->g_394,&p_760->g_394,&p_760->g_394,&p_760->g_394,&p_760->g_394};
        int32_t *l_543 = &p_760->g_544;
        int32_t **l_546[7][4][9] = {{{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519}},{{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519}},{{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519}},{{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519}},{{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519}},{{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519}},{{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519},{&l_513,&l_543,&p_760->g_103,&l_543,&l_519,&l_519,&l_519,&l_543,&l_519}}};
        int i, j, k;
        (*p_760->g_520) = l_519;
        (*l_543) &= (l_504 |= (safe_mul_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((((*l_519) = ((*l_513) = (~((((((*l_513) >= (p_36 > (safe_lshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_u((safe_sub_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((((*p_760->g_26) >= (((*l_534) = l_533) != (void*)0)) == ((p_760->g_394 = (((*p_760->g_156) = (safe_lshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s((safe_rshift_func_int16_t_s_u(((void*)0 != l_516[0]), 8)), ((((((p_36 == (GROUP_DIVERGE(1, 1) ^ (*p_38))) , 0UL) ^ (*l_519)) >= (*p_760->g_26)) && 0x2042791AE0E9EE20L) >= (*p_760->g_26)))), 4))) , (void*)0)) != l_542)), (*p_760->g_395))) , (*p_760->g_26)), (*p_760->g_26))), 7)), p_37)))) == 9UL) && p_760->g_392[0]) , 0x096FB6B164F87013L) <= (*l_519))))) & 0x30C97365F6D063EDL), p_37)), 0x57L)));
        for (p_760->g_289 = 0; (p_760->g_289 <= 5); p_760->g_289 += 1)
        { /* block id: 271 */
            uint64_t l_545[3];
            int i;
            for (i = 0; i < 3; i++)
                l_545[i] = 0xACCC2F6187CDC1C2L;
            if (l_545[1])
                break;
            for (p_760->g_232 = 1; (p_760->g_232 <= 5); p_760->g_232 += 1)
            { /* block id: 275 */
                if ((**p_760->g_293))
                    break;
            }
        }
        (*p_760->g_293) = &l_504;
    }
    return &p_760->g_27[2][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_760->g_104 p_760->g_221 p_760->g_289 p_760->g_293 p_760->g_164 p_760->g_163 p_760->g_88 p_760->g_27 p_760->g_211 p_760->g_103 p_760->g_232 p_760->g_156 p_760->g_24 p_760->g_231 p_760->g_80 p_760->g_62 p_760->g_26 p_760->g_93 p_760->g_220 p_760->g_322 p_760->g_359 p_760->g_362 p_760->g_51 p_760->g_86.f0 p_760->g_393 p_760->g_394
 * writes: p_760->g_104 p_760->g_221 p_760->g_289 p_760->g_103 p_760->g_88 p_760->g_232 p_760->g_27 p_760->g_231 p_760->g_322 p_760->g_62 p_760->g_145 p_760->g_220 p_760->g_359 p_760->g_362 p_760->g_392 p_760->g_394 p_760->g_163
 */
int8_t * func_42(int8_t * p_43, struct S1 * p_760)
{ /* block id: 129 */
    int32_t *l_270 = (void*)0;
    int32_t *l_271 = &p_760->g_104[5][0][0];
    int32_t l_275 = 0x3CEBE816L;
    int32_t l_277 = 0x5C8FDA1CL;
    int32_t l_285 = (-10L);
    int32_t l_429 = 0x037E9DCAL;
    int16_t **l_453 = (void*)0;
    int16_t ***l_452[5][3];
    int16_t *l_462 = &p_760->g_232;
    int8_t *l_467 = &p_760->g_80[1][3];
    int32_t l_490 = (-9L);
    int32_t l_494[9][3][2] = {{{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)}},{{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)}},{{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)}},{{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)}},{{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)}},{{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)}},{{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)}},{{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)}},{{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)},{0x2C24D169L,(-1L)}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
            l_452[i][j] = &l_453;
    }
lbl_274:
    (*l_271) |= 0x71394130L;
    for (p_760->g_221 = (-2); (p_760->g_221 != (-10)); p_760->g_221--)
    { /* block id: 133 */
        int32_t *l_276 = (void*)0;
        int32_t *l_278 = (void*)0;
        int32_t l_279 = (-1L);
        int32_t *l_280 = (void*)0;
        int32_t *l_281 = (void*)0;
        int32_t *l_282 = &l_277;
        int32_t l_283 = 9L;
        int32_t *l_284 = (void*)0;
        int32_t *l_286 = &l_283;
        int32_t *l_287 = &l_283;
        int32_t *l_288[3];
        int32_t **l_292 = (void*)0;
        int64_t *l_350 = &p_760->g_93[4];
        int16_t l_360 = 0L;
        uint64_t l_430[5][3][3] = {{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}},{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}},{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}},{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}},{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}}};
        int16_t **l_469 = &p_760->g_395;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_288[i] = &p_760->g_51;
        if (p_760->g_221)
            goto lbl_274;
        ++p_760->g_289;
        (*p_760->g_293) = &l_285;
        for (p_760->g_289 = 20; (p_760->g_289 == 39); p_760->g_289++)
        { /* block id: 139 */
            uint8_t l_308[7][8][4] = {{{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L}},{{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L}},{{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L}},{{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L}},{{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L}},{{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L}},{{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L},{0x40L,0x33L,0UL,0x29L}}};
            int64_t *l_313 = &p_760->g_93[0];
            int32_t l_415 = 0x73C2F3DCL;
            int32_t l_420 = 0x6E98B0A6L;
            int32_t l_423 = 0x366756ABL;
            int32_t l_425 = 7L;
            int32_t l_426 = (-8L);
            int32_t l_427 = (-3L);
            int16_t **l_447 = &p_760->g_395;
            uint64_t l_464 = 0x9DED700B4CFE4434L;
            int i, j, k;
            for (p_760->g_88 = (-12); (p_760->g_88 > 20); p_760->g_88 = safe_add_func_uint64_t_u_u(p_760->g_88, 3))
            { /* block id: 142 */
                int8_t l_315 = 0x22L;
                int32_t l_316 = 7L;
                int32_t **l_323 = &l_280;
                uint16_t l_348 = 0UL;
                for (l_283 = 0; (l_283 <= 8); l_283 += 1)
                { /* block id: 145 */
                    int16_t *l_314[1][1][9] = {{{&p_760->g_231,&p_760->g_231,&p_760->g_231,&p_760->g_231,&p_760->g_231,&p_760->g_231,&p_760->g_231,&p_760->g_231,&p_760->g_231}}};
                    int32_t l_317 = (-8L);
                    int i, j, k;
                    if (p_760->g_164[l_283])
                        break;
                    (**p_760->g_211) ^= ((p_760->g_164[l_283] || (safe_div_func_int64_t_s_s(((safe_add_func_int32_t_s_s((l_317 = (safe_mul_func_uint8_t_u_u(0xD6L, ((*p_43) = (l_316 |= ((safe_mod_func_uint32_t_u_u((p_760->g_163 <= ((((p_760->g_232 = (safe_mod_func_int64_t_s_s(l_308[0][1][3], (safe_add_func_int16_t_s_s(((void*)0 == &l_271), (p_760->g_164[l_283] <= (safe_sub_func_uint32_t_u_u(((((l_313 == l_313) || 0x556FL) , p_760->g_164[l_283]) , (*l_287)), 0L)))))))) & p_760->g_88) != p_760->g_27[2][4]) , GROUP_DIVERGE(2, 1))), (*l_271))) & l_315)))))), p_760->g_164[l_283])) | l_315), p_760->g_164[l_283]))) && (*p_43));
                }
                for (p_760->g_232 = 0; (p_760->g_232 <= 8); p_760->g_232 += 1)
                { /* block id: 155 */
                    int32_t ***l_320 = (void*)0;
                    int32_t ***l_321[6][10] = {{&l_292,(void*)0,&l_292,&l_292,&l_292,&l_292,(void*)0,&l_292,&l_292,(void*)0},{&l_292,(void*)0,&l_292,&l_292,&l_292,&l_292,(void*)0,&l_292,&l_292,(void*)0},{&l_292,(void*)0,&l_292,&l_292,&l_292,&l_292,(void*)0,&l_292,&l_292,(void*)0},{&l_292,(void*)0,&l_292,&l_292,&l_292,&l_292,(void*)0,&l_292,&l_292,(void*)0},{&l_292,(void*)0,&l_292,&l_292,&l_292,&l_292,(void*)0,&l_292,&l_292,(void*)0},{&l_292,(void*)0,&l_292,&l_292,&l_292,&l_292,(void*)0,&l_292,&l_292,(void*)0}};
                    int16_t *l_349 = &p_760->g_231;
                    int64_t *l_351 = &p_760->g_93[5];
                    uint8_t *l_352 = &p_760->g_62;
                    uint64_t *l_353[1][10] = {{&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145}};
                    int16_t *l_354 = (void*)0;
                    int16_t *l_355 = &p_760->g_220;
                    uint8_t *l_356 = &l_308[0][1][3];
                    uint8_t *l_357 = (void*)0;
                    uint8_t *l_358 = &p_760->g_359[0];
                    uint32_t *l_361 = &p_760->g_362[3][1][0];
                    int i, j;
                    for (p_760->g_231 = 2; (p_760->g_231 >= 0); p_760->g_231 -= 1)
                    { /* block id: 158 */
                        return p_43;
                    }
                    if (((safe_div_func_uint8_t_u_u((((p_760->g_322 = &l_271) == (l_323 = &p_760->g_103)) , ((((((-1L) | ((*l_361) &= (l_360 = (safe_mod_func_uint8_t_u_u(((*l_358) |= ((*l_356) = ((safe_sub_func_uint32_t_u_u(((~((*l_355) |= (p_760->g_164[p_760->g_232] != ((p_760->g_145 = ((((((((~(((((((safe_sub_func_uint16_t_u_u((**l_323), (safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((((((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((((*l_352) ^= (((*p_760->g_156) | l_308[0][1][3]) != (safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s((((l_308[4][7][1] == ((safe_mul_func_int16_t_s_s(((*l_349) &= (safe_add_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s(1L, 2L)) == (*l_271)), l_348))), l_308[6][2][1])) && p_760->g_80[1][3])) , l_350) != l_351), p_760->g_164[1])), GROUP_DIVERGE(2, 1))))) & 3L), (*p_760->g_26))), 0L)) , 1L) <= (*l_287)) && (*p_760->g_103)) != (*l_282)) | (**p_760->g_211)) & (**l_323)), (*p_760->g_26))), p_760->g_221)))) , p_760->g_93[5]) & 1UL) != 5L) > (*l_286)) , (-1L)) < GROUP_DIVERGE(0, 1))) > 0x40L) < 1L) | l_308[0][1][3]) >= 0x161BBA088D73E622L) == (*l_287)) < 0x7F6E0C2E72DC9ADCL) == 4294967295UL)) && l_308[0][1][3])))) | p_760->g_93[5]), (**p_760->g_322))) ^ p_760->g_289))), 255UL))))) & (-2L)) == 0UL) , &p_760->g_211) == &l_323)), p_760->g_51)) >= 6UL))
                    { /* block id: 171 */
                        int32_t l_391[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_391[i] = 0L;
                        (*l_271) = ((safe_mul_func_int16_t_s_s(((**l_323) || (*l_271)), (safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((l_308[0][1][3] != (p_760->g_231 ^= ((p_760->g_392[0] = (safe_lshift_func_int8_t_s_u(((safe_sub_func_uint16_t_u_u((**l_323), p_760->g_362[5][0][2])) & (((p_760->g_62 <= GROUP_DIVERGE(1, 1)) , (safe_sub_func_int32_t_s_s(((*l_271) , (safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_lshift_func_int8_t_s_u((((l_391[0] = ((safe_add_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((safe_sub_func_int16_t_s_s(0x2B9EL, (((*p_43) > (*p_43)) == (*p_760->g_26)))), 1UL)) , p_760->g_86.f0), p_760->g_359[0])) , p_760->g_93[5])) & FAKE_DIVERGE(p_760->global_0_offset, get_global_id(0), 10)) == 0UL), 5)), (*l_271))), 7UL)), l_308[0][7][2])), 0x67L))), p_760->g_93[4]))) <= (*l_282))), 1))) , l_391[0]))), 14)), (**l_323))))) < 1L);
                        (*p_760->g_103) = (p_760->g_393 == &p_760->g_359[0]);
                    }
                    else
                    { /* block id: 177 */
                        int16_t ***l_396 = &p_760->g_394;
                        (**l_323) |= 0x51CF75D6L;
                        if (l_308[4][4][2])
                            break;
                        (*l_396) = p_760->g_394;
                    }
                }
            }
            for (p_760->g_163 = 0; (p_760->g_163 <= 4); ++p_760->g_163)
            { /* block id: 186 */
                uint16_t l_399 = 0xDBE9L;
                uint64_t *l_401[8] = {&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145,&p_760->g_145};
                int16_t l_402 = 0L;
                int16_t ***l_406[1][8] = {{&p_760->g_394,&p_760->g_394,&p_760->g_394,&p_760->g_394,&p_760->g_394,&p_760->g_394,&p_760->g_394,&p_760->g_394}};
                int32_t l_411[4] = {0x09C69C08L,0x09C69C08L,0x09C69C08L,0x09C69C08L};
                int i, j;
                (1 + 1);
            }
        }
    }
    return l_467;
}


/* ------------------------------------------ */
/* 
 * reads : p_760->g_103 p_760->g_104 p_760->g_145 p_760->g_51 p_760->g_93 p_760->g_27 p_760->g_59 p_760->g_234 p_760->g_24 p_760->g_211 p_760->g_220 p_760->g_62 p_760->g_231
 * writes: p_760->g_104 p_760->g_145 p_760->g_93 p_760->g_51 p_760->g_220 p_760->g_221 p_760->g_231 p_760->g_232 p_760->g_103 p_760->g_62
 */
int8_t * func_44(int8_t * p_45, struct S1 * p_760)
{ /* block id: 60 */
    int32_t l_140 = 0x2EF286D0L;
    int32_t *l_146 = &p_760->g_51;
    int64_t *l_147 = &p_760->g_93[5];
    int32_t l_148 = 0L;
    int32_t l_183 = (-8L);
    int32_t l_185 = 0x1E317658L;
    int32_t l_189 = 0L;
    int32_t l_191 = (-3L);
    int32_t l_194 = 0x60B59D55L;
    int32_t l_195[3];
    int64_t ***l_228 = &p_760->g_155[8];
    int8_t *l_245 = &p_760->g_27[0][0];
    int i;
    for (i = 0; i < 3; i++)
        l_195[i] = 1L;
    l_148 &= (safe_div_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(l_140, (safe_add_func_int32_t_s_s(((*p_760->g_103) &= l_140), (safe_div_func_int16_t_s_s((p_760->g_145 ^= (((4294967289UL | FAKE_DIVERGE(p_760->local_1_offset, get_local_id(1), 10)) & 5UL) & l_140)), ((((l_146 != (void*)0) | ((*l_147) &= (((l_146 != (void*)0) < 0x08CD4FB8BF2FC475L) > (*l_146)))) , 18446744073709551615UL) , GROUP_DIVERGE(1, 1)))))))), p_760->g_27[5][1]));
    for (p_760->g_51 = 0; (p_760->g_51 >= (-19)); p_760->g_51 = safe_sub_func_uint16_t_u_u(p_760->g_51, 9))
    { /* block id: 67 */
        uint32_t l_165 = 0x8C4DABF8L;
        int32_t l_172 = 1L;
        int32_t l_188 = 4L;
        int32_t l_192[5];
        int i;
        for (i = 0; i < 5; i++)
            l_192[i] = 3L;
        (1 + 1);
    }
    for (l_183 = 3; (l_183 != (-15)); l_183 = safe_sub_func_int16_t_s_s(l_183, 1))
    { /* block id: 87 */
        int32_t *l_214[3][3][4] = {{{(void*)0,(void*)0,&l_148,&l_194},{(void*)0,(void*)0,&l_148,&l_194},{(void*)0,(void*)0,&l_148,&l_194}},{{(void*)0,(void*)0,&l_148,&l_194},{(void*)0,(void*)0,&l_148,&l_194},{(void*)0,(void*)0,&l_148,&l_194}},{{(void*)0,(void*)0,&l_148,&l_194},{(void*)0,(void*)0,&l_148,&l_194},{(void*)0,(void*)0,&l_148,&l_194}}};
        int32_t **l_215 = &l_214[0][1][0];
        uint16_t *l_218 = &p_760->g_163;
        int16_t *l_219 = &p_760->g_220;
        int64_t *l_227 = &p_760->g_24;
        int16_t *l_229 = (void*)0;
        int16_t *l_230 = &p_760->g_231;
        int i, j, k;
        (*l_215) = l_214[0][1][0];
        l_191 = (((void*)0 != &p_760->g_88) && (((safe_rshift_func_int16_t_s_s((p_760->g_221 = ((*l_219) = ((p_760->g_59 , &p_760->g_163) == (l_218 = l_218)))), 2)) == 65529UL) < ((((((safe_add_func_int32_t_s_s(((*l_146) = (((p_760->g_232 = ((*l_230) = (safe_unary_minus_func_uint16_t_u(((-2L) > (((&p_760->g_104[5][0][0] == ((safe_add_func_uint8_t_u_u(((((((((void*)0 == l_227) > (*l_146)) != (*p_760->g_103)) & (-2L)) | 4294967292UL) , l_228) != (void*)0), (-7L))) , &p_760->g_51)) , 1UL) & (*l_146))))))) & 0x313DL) != 0L)), (*p_760->g_103))) & p_760->g_27[2][0]) || p_760->g_27[2][0]) , (*l_146)) ^ (*p_760->g_103)) || 2L)));
    }
    if ((*l_146))
    { /* block id: 97 */
        int32_t *l_233 = &l_148;
        (*p_760->g_234) = l_233;
        for (l_185 = 29; (l_185 <= (-29)); --l_185)
        { /* block id: 101 */
            int32_t **l_237 = &l_146;
            (*p_760->g_103) = (p_760->g_24 != (((*l_237) = (*p_760->g_211)) == &p_760->g_51));
            for (p_760->g_220 = 0; (p_760->g_220 != 10); p_760->g_220 = safe_add_func_uint16_t_u_u(p_760->g_220, 1))
            { /* block id: 106 */
                uint64_t l_240 = 0x869F11C13C78FB77L;
                l_240--;
            }
        }
        l_146 = (*p_760->g_234);
    }
    else
    { /* block id: 111 */
        int32_t l_252 = (-2L);
        int32_t l_253 = 0x31EA357FL;
        int32_t l_255[3][1][4] = {{{0x626C6504L,4L,0x38A96B65L,4L}},{{0x626C6504L,4L,0x38A96B65L,4L}},{{0x626C6504L,4L,0x38A96B65L,4L}}};
        int32_t *l_259 = &l_195[0];
        int32_t *l_260 = (void*)0;
        int32_t *l_261 = &l_195[2];
        int32_t *l_262 = &l_191;
        int32_t *l_263 = (void*)0;
        int32_t *l_264 = &l_255[0][0][1];
        int32_t *l_265 = &p_760->g_104[4][0][0];
        int32_t *l_266[1];
        uint16_t l_267 = 0xC8D1L;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_266[i] = (void*)0;
        for (p_760->g_62 = 0; (p_760->g_62 != 9); p_760->g_62 = safe_add_func_int8_t_s_s(p_760->g_62, 3))
        { /* block id: 114 */
            int8_t l_248 = (-5L);
            int32_t l_254 = 0L;
            uint8_t l_256 = 3UL;
            for (l_185 = 0; (l_185 <= 2); l_185 += 1)
            { /* block id: 117 */
                return l_245;
            }
            for (p_760->g_231 = 0; (p_760->g_231 > (-3)); p_760->g_231--)
            { /* block id: 122 */
                int32_t *l_249 = (void*)0;
                int32_t *l_250 = &l_191;
                int32_t *l_251[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_251[i] = &p_760->g_104[5][0][0];
                l_256++;
            }
        }
        --l_267;
    }
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads : p_760->g_24 p_760->g_62
 * writes: p_760->g_24 p_760->g_62
 */
int8_t * func_46(int32_t  p_47, struct S1 * p_760)
{ /* block id: 10 */
    int32_t l_60[2];
    int32_t l_61 = 0x2F6DDF93L;
    int i;
    for (i = 0; i < 2; i++)
        l_60[i] = 0x0698B42DL;
    for (p_760->g_24 = (-15); (p_760->g_24 < (-4)); p_760->g_24 = safe_add_func_int8_t_s_s(p_760->g_24, 7))
    { /* block id: 13 */
        int32_t *l_50 = &p_760->g_51;
        int32_t *l_52 = (void*)0;
        int32_t *l_53 = &p_760->g_51;
        int32_t *l_54 = &p_760->g_51;
        int32_t *l_55 = (void*)0;
        int32_t *l_56 = &p_760->g_51;
        int32_t *l_57 = (void*)0;
        int32_t *l_58[3][5] = {{&p_760->g_51,&p_760->g_51,&p_760->g_51,&p_760->g_51,&p_760->g_51},{&p_760->g_51,&p_760->g_51,&p_760->g_51,&p_760->g_51,&p_760->g_51},{&p_760->g_51,&p_760->g_51,&p_760->g_51,&p_760->g_51,&p_760->g_51}};
        int i, j;
        p_760->g_62++;
    }
    for (p_760->g_24 = 0; (p_760->g_24 > 9); p_760->g_24 = safe_add_func_uint32_t_u_u(p_760->g_24, 7))
    { /* block id: 18 */
        uint64_t l_105 = 18446744073709551615UL;
        int32_t *l_110 = &p_760->g_104[5][0][0];
        int32_t l_117 = 0x283BE946L;
        int32_t l_120[3][1][1];
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 1; k++)
                    l_120[i][j][k] = (-10L);
            }
        }
        for (l_61 = (-17); (l_61 < 24); l_61 = safe_add_func_uint64_t_u_u(l_61, 9))
        { /* block id: 21 */
            uint16_t l_85 = 0x7CB4L;
            uint8_t l_98 = 0xD5L;
            int32_t l_109 = 0x560F7E9AL;
            int32_t l_119 = (-10L);
            int32_t l_123 = 0L;
            int32_t l_126 = 0x7B2DE282L;
            int32_t l_127 = (-1L);
            int32_t l_128 = 1L;
            int32_t l_130 = 0L;
            (1 + 1);
        }
    }
    return &p_760->g_27[5][4];
}


/* ------------------------------------------ */
/* 
 * reads : p_760->g_24
 * writes: p_760->g_103
 */
uint16_t  func_73(uint64_t  p_74, int32_t  p_75, uint64_t  p_76, int32_t  p_77, int32_t  p_78, struct S1 * p_760)
{ /* block id: 32 */
    int32_t *l_102 = (void*)0;
    int32_t **l_101[9][7][4] = {{{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102}},{{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102}},{{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102}},{{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102}},{{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102}},{{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102}},{{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102}},{{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102}},{{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102},{(void*)0,(void*)0,&l_102,&l_102}}};
    int i, j, k;
    p_760->g_103 = &p_760->g_51;
    return p_760->g_24;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_761;
    struct S1* p_760 = &c_761;
    struct S1 c_762 = {
        0x653494ABC2489102L, // p_760->g_24
        {{1L,(-1L),(-4L),(-1L),1L,1L},{1L,(-1L),(-4L),(-1L),1L,1L},{1L,(-1L),(-4L),(-1L),1L,1L},{1L,(-1L),(-4L),(-1L),1L,1L},{1L,(-1L),(-4L),(-1L),1L,1L},{1L,(-1L),(-4L),(-1L),1L,1L}}, // p_760->g_27
        &p_760->g_27[2][0], // p_760->g_26
        0x44F34D89L, // p_760->g_51
        0x4CL, // p_760->g_59
        0xEFL, // p_760->g_62
        {{0x4AL,2L,0x07L,0x49L,2L,0x49L,0x07L},{0x4AL,2L,0x07L,0x49L,2L,0x49L,0x07L},{0x4AL,2L,0x07L,0x49L,2L,0x49L,0x07L}}, // p_760->g_80
        {1UL}, // p_760->g_86
        0xDC662BFFL, // p_760->g_88
        {5L,5L,5L,5L,5L,5L,5L,5L}, // p_760->g_93
        {{{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L}},{{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L}},{{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L}},{{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L}},{{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L}},{{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L}},{{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L},{0x325B5FE4L}}}, // p_760->g_104
        &p_760->g_104[5][0][0], // p_760->g_103
        {6UL}, // p_760->g_115
        0x0FA803EE845A3699L, // p_760->g_145
        &p_760->g_24, // p_760->g_156
        {&p_760->g_156,&p_760->g_156,&p_760->g_156,&p_760->g_156,&p_760->g_156,&p_760->g_156,&p_760->g_156,&p_760->g_156,&p_760->g_156}, // p_760->g_155
        0x26B0L, // p_760->g_163
        {&p_760->g_163,&p_760->g_163,&p_760->g_163,&p_760->g_163,&p_760->g_163,&p_760->g_163,&p_760->g_163,&p_760->g_163}, // p_760->g_162
        {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL}, // p_760->g_164
        &p_760->g_103, // p_760->g_211
        1L, // p_760->g_220
        (-1L), // p_760->g_221
        0x4C17L, // p_760->g_231
        0L, // p_760->g_232
        &p_760->g_103, // p_760->g_234
        0xD9L, // p_760->g_289
        &p_760->g_103, // p_760->g_293
        &p_760->g_103, // p_760->g_322
        {0x5FL}, // p_760->g_359
        {{{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L}},{{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L}},{{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L}},{{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L}},{{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L}},{{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L},{0x9871574AL,0x05BE39B7L,0x1D7ACE36L}}}, // p_760->g_362
        {0x5FCF6166832A09D3L}, // p_760->g_392
        &p_760->g_62, // p_760->g_393
        &p_760->g_232, // p_760->g_395
        &p_760->g_395, // p_760->g_394
        {4294967291UL}, // p_760->g_400
        (-5L), // p_760->g_463
        &p_760->g_103, // p_760->g_520
        0x0BB2418FL, // p_760->g_544
        &p_760->g_104[5][0][0], // p_760->g_551
        (void*)0, // p_760->g_605
        &p_760->g_104[5][0][0], // p_760->g_695
        (void*)0, // p_760->g_720
        (-1L), // p_760->g_722
        {&p_760->g_722,&p_760->g_722}, // p_760->g_721
        {{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L}}, // p_760->g_748
        {{{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL}},{{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL}},{{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL}},{{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL}},{{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL}},{{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL}},{{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL}},{{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL}},{{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL},{0x519CE6A30227A9CEL,18446744073709551608UL,0x519CE6A30227A9CEL}}}, // p_760->g_758
        &p_760->g_722, // p_760->g_759
        sequence_input[get_global_id(0)], // p_760->global_0_offset
        sequence_input[get_global_id(1)], // p_760->global_1_offset
        sequence_input[get_global_id(2)], // p_760->global_2_offset
        sequence_input[get_local_id(0)], // p_760->local_0_offset
        sequence_input[get_local_id(1)], // p_760->local_1_offset
        sequence_input[get_local_id(2)], // p_760->local_2_offset
        sequence_input[get_group_id(0)], // p_760->group_0_offset
        sequence_input[get_group_id(1)], // p_760->group_1_offset
        sequence_input[get_group_id(2)], // p_760->group_2_offset
    };
    c_761 = c_762;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_760);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_760->g_24, "p_760->g_24", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_760->g_27[i][j], "p_760->g_27[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_760->g_51, "p_760->g_51", print_hash_value);
    transparent_crc(p_760->g_59, "p_760->g_59", print_hash_value);
    transparent_crc(p_760->g_62, "p_760->g_62", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_760->g_80[i][j], "p_760->g_80[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_760->g_86.f0, "p_760->g_86.f0", print_hash_value);
    transparent_crc(p_760->g_88, "p_760->g_88", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_760->g_93[i], "p_760->g_93[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_760->g_104[i][j][k], "p_760->g_104[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_760->g_115.f0, "p_760->g_115.f0", print_hash_value);
    transparent_crc(p_760->g_145, "p_760->g_145", print_hash_value);
    transparent_crc(p_760->g_163, "p_760->g_163", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_760->g_164[i], "p_760->g_164[i]", print_hash_value);

    }
    transparent_crc(p_760->g_220, "p_760->g_220", print_hash_value);
    transparent_crc(p_760->g_221, "p_760->g_221", print_hash_value);
    transparent_crc(p_760->g_231, "p_760->g_231", print_hash_value);
    transparent_crc(p_760->g_232, "p_760->g_232", print_hash_value);
    transparent_crc(p_760->g_289, "p_760->g_289", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_760->g_359[i], "p_760->g_359[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_760->g_362[i][j][k], "p_760->g_362[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_760->g_392[i], "p_760->g_392[i]", print_hash_value);

    }
    transparent_crc(p_760->g_463, "p_760->g_463", print_hash_value);
    transparent_crc(p_760->g_544, "p_760->g_544", print_hash_value);
    transparent_crc(p_760->g_722, "p_760->g_722", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_760->g_748[i][j], "p_760->g_748[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_760->g_758[i][j][k], "p_760->g_758[i][j][k]", print_hash_value);

            }
        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
