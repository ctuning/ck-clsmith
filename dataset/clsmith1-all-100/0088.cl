// --atomics 5 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 95,9,5 -l 95,1,1
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

__constant uint32_t permutations[10][95] = {
{24,68,55,44,69,12,7,77,75,25,51,38,60,2,88,43,28,92,61,67,36,90,54,35,31,42,13,84,30,91,6,56,53,52,79,27,66,29,22,19,62,26,39,9,46,72,48,50,32,14,40,37,18,45,86,47,73,83,21,70,94,59,93,8,16,63,78,17,57,82,0,15,33,81,4,23,71,10,76,64,11,58,74,89,65,5,85,1,41,3,87,20,34,49,80}, // permutation 0
{66,36,61,22,2,25,17,77,27,16,68,94,41,21,46,5,83,62,55,14,74,18,58,56,9,65,42,6,50,59,82,79,52,76,70,69,11,93,57,4,87,32,63,33,85,13,45,20,28,35,81,10,26,60,8,90,86,88,49,38,40,7,73,75,39,53,3,92,12,23,19,80,34,51,67,72,89,71,84,91,48,43,31,15,78,44,37,1,47,30,0,29,24,64,54}, // permutation 1
{46,19,92,11,37,35,33,85,21,9,17,28,52,68,74,61,77,32,45,29,62,14,94,43,41,24,1,20,67,47,8,12,86,55,23,18,65,75,88,60,36,30,15,58,87,44,5,80,22,6,63,48,2,56,53,71,25,89,49,50,73,83,54,3,40,72,79,26,57,31,81,64,16,59,76,84,69,7,13,51,70,34,0,66,91,27,78,10,93,90,42,82,38,4,39}, // permutation 2
{62,42,63,39,33,51,38,22,90,35,82,14,91,92,54,81,30,65,27,49,20,26,36,78,85,48,15,8,13,72,53,84,16,11,77,29,83,44,70,59,3,89,12,24,86,73,64,71,40,55,4,19,61,79,31,76,41,5,7,94,68,88,56,58,80,69,52,45,57,17,18,93,34,87,1,50,9,66,23,25,46,75,21,47,37,67,28,32,74,43,60,2,10,0,6}, // permutation 3
{85,5,33,80,28,0,43,29,32,38,15,22,94,66,31,47,92,86,60,76,69,77,27,59,84,30,34,81,71,64,93,91,62,24,78,58,68,7,46,1,63,40,14,61,48,55,79,2,23,18,54,10,37,90,42,57,75,82,16,6,26,11,13,45,89,56,49,72,74,12,36,17,44,41,25,8,50,70,21,67,9,87,20,83,51,19,35,52,65,88,4,3,53,73,39}, // permutation 4
{66,74,93,4,70,15,0,88,55,26,76,35,16,12,77,47,19,85,17,44,60,84,27,11,21,58,23,79,57,50,69,73,61,72,56,41,38,54,53,86,81,63,37,33,40,28,49,45,42,20,36,68,14,91,71,67,39,52,18,48,90,9,59,25,5,8,32,7,75,13,80,6,1,62,51,31,92,2,30,94,89,34,10,83,3,65,64,78,22,87,24,46,82,29,43}, // permutation 5
{83,12,45,88,3,36,44,23,10,11,47,1,89,35,29,6,90,24,19,56,74,67,78,0,51,62,46,52,59,60,26,16,48,93,22,9,38,73,27,39,7,14,86,87,79,69,5,30,80,58,63,82,66,61,40,32,33,65,72,85,64,28,31,49,8,43,13,91,42,71,84,15,70,57,94,2,41,21,77,50,53,18,54,34,37,20,55,81,92,4,68,25,75,17,76}, // permutation 6
{54,35,18,81,62,31,23,93,92,77,30,29,89,17,75,55,34,56,10,0,39,33,37,53,42,79,84,14,80,94,52,3,72,88,27,13,82,40,16,26,76,73,61,25,24,20,6,71,60,32,11,21,86,59,49,85,19,2,70,90,43,44,38,83,12,58,91,7,69,1,28,63,36,78,22,74,41,15,87,46,5,51,67,68,8,9,45,64,65,48,66,47,4,50,57}, // permutation 7
{14,0,52,34,51,73,43,24,74,82,63,80,61,56,22,3,83,39,48,79,71,23,93,33,49,8,12,68,27,17,15,87,31,38,78,28,16,40,46,1,94,42,5,67,2,57,45,64,77,11,88,6,62,41,75,4,58,36,72,59,69,25,70,37,44,21,35,76,92,30,54,18,86,89,10,60,19,7,32,29,85,20,55,13,50,91,90,81,84,26,9,53,65,66,47}, // permutation 8
{65,80,84,32,2,25,35,18,74,38,24,54,91,45,5,23,60,89,75,92,94,82,67,47,87,14,10,21,9,70,68,41,34,28,12,13,22,77,52,26,16,19,17,4,20,63,8,81,58,37,83,27,36,57,15,43,11,86,73,51,78,90,76,50,93,46,31,69,85,72,64,59,40,29,7,53,62,33,3,49,88,1,42,66,48,44,56,61,6,0,55,71,79,39,30} // permutation 9
};

// Seed: 88

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile VECTOR(int32_t, 8) g_2;
    int32_t g_3;
    int32_t g_7;
    VECTOR(int16_t, 16) g_28;
    VECTOR(uint8_t, 8) g_31;
    VECTOR(int64_t, 2) g_42;
    VECTOR(int64_t, 16) g_43;
    VECTOR(uint64_t, 16) g_44;
    uint16_t g_84;
    VECTOR(uint8_t, 8) g_85;
    uint16_t g_92[2][8][4];
    int32_t g_248;
    volatile uint64_t g_268;
    volatile uint64_t *g_267[2];
    VECTOR(int8_t, 16) g_270;
    VECTOR(int8_t, 8) g_273;
    uint16_t *g_286;
    uint16_t * volatile *g_285;
    int64_t g_293;
    int64_t g_294;
    int32_t g_297;
    uint64_t g_301;
    int32_t *g_316;
    int32_t **g_315;
    uint64_t g_347[1][10][1];
    uint64_t g_354;
    uint32_t g_409;
    VECTOR(uint32_t, 8) g_566;
    uint8_t g_572;
    VECTOR(uint16_t, 4) g_597;
    VECTOR(uint16_t, 2) g_610;
    VECTOR(uint16_t, 8) g_611;
    VECTOR(uint16_t, 4) g_612;
    volatile VECTOR(uint16_t, 4) g_613;
    VECTOR(uint32_t, 8) g_624;
    uint32_t g_636;
    uint32_t g_639;
    volatile VECTOR(int16_t, 16) g_650;
    VECTOR(int64_t, 16) g_657;
    VECTOR(int64_t, 8) g_658;
    uint8_t *g_704;
    VECTOR(uint8_t, 16) g_721;
    volatile VECTOR(int32_t, 4) g_770;
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
int32_t  func_1(struct S0 * p_771);
int16_t  func_14(int32_t * p_15, struct S0 * p_771);
uint64_t  func_20(int64_t  p_21, uint32_t  p_22, int32_t * p_23, struct S0 * p_771);
int32_t  func_34(int8_t  p_35, int32_t * p_36, int64_t  p_37, uint32_t  p_38, struct S0 * p_771);
int32_t ** func_49(int32_t * p_50, uint32_t  p_51, int16_t  p_52, int32_t ** p_53, int64_t  p_54, struct S0 * p_771);
int32_t * func_55(int64_t  p_56, int32_t ** p_57, int32_t  p_58, struct S0 * p_771);
uint32_t  func_60(int32_t  p_61, int16_t  p_62, int32_t * p_63, int32_t ** p_64, struct S0 * p_771);
int32_t * func_66(int32_t * p_67, int64_t  p_68, int32_t * p_69, int32_t  p_70, uint64_t  p_71, struct S0 * p_771);
int32_t * func_72(uint16_t  p_73, int32_t * p_74, int32_t * p_75, struct S0 * p_771);
int32_t * func_76(int32_t  p_77, int8_t  p_78, struct S0 * p_771);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_771->g_3 p_771->l_comm_values p_771->g_comm_values p_771->g_2 p_771->g_28 p_771->g_31 p_771->g_7 p_771->g_42 p_771->g_43 p_771->g_44 p_771->g_84 p_771->g_85 p_771->g_267 p_771->g_248 p_771->g_270 p_771->g_273 p_771->g_285 p_771->g_301 p_771->g_315 p_771->g_294 p_771->g_316 p_771->g_297 p_771->g_347 p_771->g_354 p_771->g_409 p_771->g_92 p_771->g_566 p_771->g_572 p_771->g_286 p_771->g_597 p_771->g_639 p_771->g_636 p_771->g_610 p_771->g_612 p_771->g_657 p_771->g_613 p_771->g_650 p_771->g_293 p_771->g_624 p_771->g_611 p_771->g_770
 * writes: p_771->g_3 p_771->g_7 p_771->g_comm_values p_771->g_84 p_771->g_44 p_771->g_248 p_771->g_285 p_771->g_301 p_771->g_293 p_771->g_316 p_771->g_294 p_771->g_315 p_771->g_354 p_771->g_409 p_771->g_572 p_771->g_636 p_771->g_639 p_771->g_31 p_771->g_704 p_771->l_comm_values
 */
int32_t  func_1(struct S0 * p_771)
{ /* block id: 4 */
    int64_t l_13 = 0x7C3A065C2DD78F4FL;
    int32_t l_41 = 0x5BB5FB49L;
    int32_t l_576 = 0L;
    VECTOR(int32_t, 4) l_580 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-2L)), (-2L));
    VECTOR(uint16_t, 2) l_616 = (VECTOR(uint16_t, 2))(0xD1E8L, 65532UL);
    uint64_t *l_633 = &p_771->g_301;
    uint64_t **l_632 = &l_633;
    int32_t *l_673 = &p_771->g_3;
    uint16_t **l_694[1][10];
    uint16_t ***l_693 = &l_694[0][4];
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
            l_694[i][j] = &p_771->g_286;
    }
    for (p_771->g_3 = 11; (p_771->g_3 == 22); p_771->g_3 = safe_add_func_int32_t_s_s(p_771->g_3, 1))
    { /* block id: 7 */
        int32_t *l_6 = &p_771->g_7;
        int32_t l_8 = 0x2095A979L;
        int32_t l_412 = 0x11BC73ADL;
        l_8 &= ((*l_6) = 1L);
        l_576 &= ((*l_6) = ((p_771->g_comm_values[p_771->tid] ^= p_771->l_comm_values[(safe_mod_func_uint32_t_u_u(p_771->tid, 95))]) <= (safe_div_func_uint8_t_u_u(((safe_div_func_int16_t_s_s(l_13, func_14(((p_771->l_comm_values[(safe_mod_func_uint32_t_u_u(p_771->tid, 95))] && (safe_div_func_int8_t_s_s((((safe_add_func_uint64_t_u_u(p_771->g_2.s3, (func_20(p_771->g_3, (((safe_rshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(0L, ((VECTOR(int16_t, 2))(p_771->g_28.s83)).hi)), 0)) && (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(p_771->g_31.s7403362635475264)).s2, ((safe_div_func_int32_t_s_s(func_34(((p_771->l_comm_values[(safe_mod_func_uint32_t_u_u(p_771->tid, 95))] || ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(0x57L, 0x05L, 4L, 0x2FL)), (-7L), ((l_13 , (safe_rshift_func_int16_t_s_s((l_41 = (*l_6)), 5))) > p_771->g_31.s4), 4L, 0x78L)).s4510073565364151)).sd) != p_771->g_3), &p_771->g_3, p_771->g_31.s2, p_771->g_28.s5, p_771), p_771->g_42.x)) , p_771->g_42.y)))) || FAKE_DIVERGE(p_771->global_0_offset, get_global_id(0), 10)), &l_8, p_771) | l_412))) >= 0x7809L) || 1L), l_13))) , (void*)0), p_771))) ^ 0xA714L), p_771->g_85.s5))));
        return l_576;
    }
    for (p_771->g_572 = 0; (p_771->g_572 == 17); p_771->g_572++)
    { /* block id: 314 */
        VECTOR(int32_t, 16) l_579 = (VECTOR(int32_t, 16))(0x37BC3E05L, (VECTOR(int32_t, 4))(0x37BC3E05L, (VECTOR(int32_t, 2))(0x37BC3E05L, (-1L)), (-1L)), (-1L), 0x37BC3E05L, (-1L), (VECTOR(int32_t, 2))(0x37BC3E05L, (-1L)), (VECTOR(int32_t, 2))(0x37BC3E05L, (-1L)), 0x37BC3E05L, (-1L), 0x37BC3E05L, (-1L));
        VECTOR(uint32_t, 2) l_623 = (VECTOR(uint32_t, 2))(0x2B0B246EL, 0xDDE8BE5EL);
        int32_t **l_667[1][3][4] = {{{&p_771->g_316,(void*)0,&p_771->g_316,&p_771->g_316},{&p_771->g_316,(void*)0,&p_771->g_316,&p_771->g_316},{&p_771->g_316,(void*)0,&p_771->g_316,&p_771->g_316}}};
        int8_t l_763 = 0x58L;
        int i, j, k;
        if (((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 2))(l_579.s0c)).yxxx, ((VECTOR(int32_t, 2))(l_580.xw)).yyyy))).x)
        { /* block id: 315 */
            uint32_t l_600 = 0x838C1F22L;
            VECTOR(uint16_t, 16) l_614 = (VECTOR(uint16_t, 16))(0x842AL, (VECTOR(uint16_t, 4))(0x842AL, (VECTOR(uint16_t, 2))(0x842AL, 65535UL), 65535UL), 65535UL, 0x842AL, 65535UL, (VECTOR(uint16_t, 2))(0x842AL, 65535UL), (VECTOR(uint16_t, 2))(0x842AL, 65535UL), 0x842AL, 65535UL, 0x842AL, 65535UL);
            VECTOR(uint16_t, 2) l_631 = (VECTOR(uint16_t, 2))(0x4AAAL, 65533UL);
            int i;
            (*p_771->g_315) = (*p_771->g_315);
            if (((*p_771->g_316) = (safe_mod_func_int8_t_s_s(((**p_771->g_315) == ((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_771->group_1_offset, get_group_id(1), 10), ((safe_rshift_func_uint16_t_u_s((p_771->g_85.s0 && ((p_771->g_273.s6 <= (0x41CA647AFC7F98B4L > (safe_lshift_func_uint16_t_u_s(((safe_mod_func_int32_t_s_s((l_576 | 0x4DA118CC538DF074L), l_576)) || (safe_add_func_int64_t_s_s(0x600E8C590282B9D2L, FAKE_DIVERGE(p_771->local_1_offset, get_local_id(1), 10)))), (safe_rshift_func_uint16_t_u_s(((*p_771->g_286) = (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(p_771->g_597.ww)).hi, (((safe_mul_func_int16_t_s_s(0x4B79L, l_600)) && (**p_771->g_315)) != p_771->g_2.s6)))), 14)))))) == p_771->g_270.sf)), p_771->g_294)) | p_771->g_301))) >= l_600)), (-1L)))))
            { /* block id: 319 */
                int16_t l_609[9];
                VECTOR(int32_t, 4) l_615 = (VECTOR(int32_t, 4))(0x2C2C0886L, (VECTOR(int32_t, 2))(0x2C2C0886L, 0x224A557DL), 0x224A557DL);
                VECTOR(uint16_t, 2) l_617 = (VECTOR(uint16_t, 2))(65530UL, 1UL);
                VECTOR(uint16_t, 2) l_618 = (VECTOR(uint16_t, 2))(65533UL, 8UL);
                uint16_t **l_627 = &p_771->g_286;
                uint16_t ***l_628 = &l_627;
                int32_t l_634 = 0x103D0AC5L;
                uint32_t *l_635 = &p_771->g_636;
                int32_t *l_637 = &p_771->g_7;
                int32_t *l_638[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                for (i = 0; i < 9; i++)
                    l_609[i] = 0L;
                (**p_771->g_315) = ((safe_mod_func_int8_t_s_s((p_771->l_comm_values[(safe_mod_func_uint32_t_u_u(p_771->tid, 95))] , (~(safe_add_func_uint8_t_u_u(((((*l_635) = (safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(p_771->g_294, (((l_609[2] , ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(p_771->g_610.yyxxyxyx)).s04)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 2))(p_771->g_611.s01)).xyyxxxyyyxxyxxxy, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 2))(5L, 0L)).yyyx))).even, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_771->g_612.zw)).hi, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(p_771->g_613.wwxwyxwwzyywwyxw)).even)).odd)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 2))(65535UL, 0xF517L)).xxyx, ((VECTOR(uint16_t, 2))(0x6D6AL, 0xE3DEL)).xyxx))), ((VECTOR(uint16_t, 2))(l_614.sdc)).xxxx))).zywwxxwxyxxzzwzx))).s3d79, ((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 8))((l_609[2] >= ((VECTOR(int32_t, 2))(l_615.ww)).lo), 0x8A98L, ((VECTOR(uint16_t, 2))(l_616.yy)), ((VECTOR(uint16_t, 2))(l_617.yy)), 0x0D85L, 65535UL)).s72, (uint16_t)((VECTOR(uint16_t, 4))(l_618.yyxy)).y))).yxyy))), 0x5266L, (**p_771->g_285), 1UL, 0x6828L)).s24)), 5UL)).s10))).xxyxyyyxyyyxyxyx))).s1c8d))).xxzzxxxyzxwxyxyw)).s1de4)), 1UL, 1UL)).s0) & (safe_add_func_uint64_t_u_u(((((((l_576 = (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(l_623.xyyxyxxxxxxyyyyy)).sa9f0)), ((VECTOR(uint32_t, 2))(p_771->g_624.s55)).xxxy))).zyzyxzzx)).s1, ((*p_771->g_286) >= GROUP_DIVERGE(0, 1))))) <= (((safe_lshift_func_int8_t_s_s(((((((((*l_628) = l_627) == &p_771->g_286) , (safe_mul_func_uint8_t_u_u(((((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(l_631.yxyy)).even)).even || (l_632 != &p_771->g_267[1])) == p_771->g_85.s0) == l_580.x) && p_771->g_248), p_771->g_273.s2))) , (void*)0) == (*p_771->g_315)) >= FAKE_DIVERGE(p_771->group_2_offset, get_group_id(2), 10)) > (**p_771->g_315)), 5)) >= l_618.x) & l_579.s5)) | (**p_771->g_285)) == p_771->g_597.y) <= l_634) <= (*p_771->g_286)), 0L))) , 0x77L))), 0x0FL))) , l_614.s6) != 0x77EAL), 1L)))), l_579.sf)) & l_580.z);
                ++p_771->g_639;
            }
            else
            { /* block id: 325 */
                (*p_771->g_315) = (*p_771->g_315);
            }
        }
        else
        { /* block id: 328 */
            uint16_t l_653 = 65534UL;
            VECTOR(int64_t, 4) l_656 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0L), 0L);
            uint16_t l_665[9] = {0xA46BL,0xA46BL,0xA46BL,0xA46BL,0xA46BL,0xA46BL,0xA46BL,0xA46BL,0xA46BL};
            uint8_t *l_666 = &p_771->g_572;
            int32_t *l_668 = &p_771->g_248;
            int32_t *l_670 = &l_576;
            int32_t **l_669 = &l_670;
            int32_t *l_732 = &l_41;
            int i;
            (*p_771->g_315) = func_55(((((safe_add_func_uint16_t_u_u(((((safe_div_func_uint8_t_u_u((((~p_771->g_44.sb) , (safe_lshift_func_uint16_t_u_s((safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 2))(p_771->g_650.s43)).lo, 14)), (((*p_771->g_315) = (l_668 = &l_576)) != &p_771->g_248)))) && (**p_771->g_285)), p_771->g_636)) || p_771->g_610.y) & p_771->g_248) != p_771->g_610.x), 0x59F9L)) , 3L) < l_665[4]) > 0x6FACL), l_669, p_771->g_612.w, p_771);
            for (p_771->g_248 = (-24); (p_771->g_248 >= 2); p_771->g_248 = safe_add_func_int64_t_s_s(p_771->g_248, 7))
            { /* block id: 335 */
                (*p_771->g_315) = l_673;
            }
            for (l_653 = 0; (l_653 >= 40); ++l_653)
            { /* block id: 340 */
                (*l_669) = (*p_771->g_315);
            }
            for (p_771->g_293 = 0; (p_771->g_293 < (-24)); p_771->g_293 = safe_sub_func_int16_t_s_s(p_771->g_293, 1))
            { /* block id: 345 */
                uint64_t l_727 = 1UL;
                int32_t l_734 = 0x0449EA77L;
                uint16_t l_752 = 65531UL;
                for (p_771->g_7 = (-25); (p_771->g_7 == (-12)); p_771->g_7++)
                { /* block id: 348 */
                    uint64_t l_690 = 0UL;
                    int32_t l_733 = 0L;
                    uint16_t l_735 = 0UL;
                    VECTOR(uint64_t, 8) l_738 = (VECTOR(uint64_t, 8))(0x80BB417DB93F8792L, (VECTOR(uint64_t, 4))(0x80BB417DB93F8792L, (VECTOR(uint64_t, 2))(0x80BB417DB93F8792L, 0x6EF44FCE7ACE870CL), 0x6EF44FCE7ACE870CL), 0x6EF44FCE7ACE870CL, 0x80BB417DB93F8792L, 0x6EF44FCE7ACE870CL);
                    int32_t l_764 = 0x4AB280E8L;
                    int16_t l_765 = 0L;
                    int32_t l_766[10][3] = {{(-6L),5L,5L},{(-6L),5L,5L},{(-6L),5L,5L},{(-6L),5L,5L},{(-6L),5L,5L},{(-6L),5L,5L},{(-6L),5L,5L},{(-6L),5L,5L},{(-6L),5L,5L},{(-6L),5L,5L}};
                    uint8_t l_767 = 254UL;
                    int i, j;
                    if ((atomic_inc(&p_771->l_atomic_input[3]) == 6))
                    { /* block id: 350 */
                        int32_t l_681 = 0L;
                        int32_t *l_680 = &l_681;
                        int32_t *l_682 = &l_681;
                        int8_t l_683[1];
                        uint16_t l_684 = 0x35F3L;
                        int32_t l_685 = (-1L);
                        int32_t *l_686 = (void*)0;
                        int32_t *l_687 = &l_685;
                        int32_t *l_688 = &l_685;
                        int32_t *l_689[10][6] = {{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0},{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0},{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0},{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0},{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0},{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0},{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0},{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0},{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0},{(void*)0,&l_681,(void*)0,&l_681,&l_685,(void*)0}};
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_683[i] = 0x04L;
                        l_682 = l_680;
                        l_684 = l_683[0];
                        l_689[4][5] = (l_688 = (l_685 , (l_687 = l_686)));
                        unsigned int result = 0;
                        result += l_681;
                        int l_683_i0;
                        for (l_683_i0 = 0; l_683_i0 < 1; l_683_i0++) {
                            result += l_683[l_683_i0];
                        }
                        result += l_684;
                        result += l_685;
                        atomic_add(&p_771->l_special_values[3], result);
                    }
                    else
                    { /* block id: 356 */
                        (1 + 1);
                    }
                    if ((p_771->g_42.x ^ l_690))
                    { /* block id: 359 */
                        uint8_t **l_703[10] = {&l_666,&l_666,&l_666,&l_666,&l_666,&l_666,&l_666,&l_666,&l_666,&l_666};
                        uint32_t l_705 = 1UL;
                        uint64_t l_706[5] = {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL};
                        int64_t *l_726 = &p_771->g_294;
                        uint32_t *l_728 = &p_771->g_639;
                        int64_t *l_729 = (void*)0;
                        int64_t *l_730 = (void*)0;
                        int64_t *l_731 = &l_13;
                        int i;
                        atomic_max(&p_771->l_atomic_reduction[0], (safe_add_func_int8_t_s_s(((p_771->g_31.s2 = (l_693 == (void*)0)) || ((((safe_div_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(p_771->g_347[0][2][0], (0x5928L ^ ((safe_add_func_int64_t_s_s(0x561918BD5004E2CEL, ((&p_771->g_572 != (p_771->g_704 = &p_771->g_572)) <= l_705))) <= 0xAAL)))), 6)) ^ GROUP_DIVERGE(1, 1)), (*l_673))) , 0x9FCBA3E5L) , p_771->g_657.s6) , 9UL)), p_771->g_613.w)));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_771->v_collective += p_771->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        l_732 = ((0x3626D757B8621C11L > ((*l_731) ^= (((*l_728) = (l_706[3] | (safe_mod_func_uint8_t_u_u(2UL, (safe_mod_func_int16_t_s_s((((**p_771->g_315) = (((safe_rshift_func_int16_t_s_s((l_706[3] == (safe_lshift_func_uint8_t_u_u(((*l_673) & ((l_703[9] == (((safe_sub_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s((*p_771->g_286), (((((safe_mod_func_uint64_t_u_u(0xF90B1CC18E5F87ACL, (((VECTOR(uint8_t, 4))(p_771->g_721.s7c1f)).z && ((((**l_632) = (safe_mod_func_uint16_t_u_u((safe_add_func_int64_t_s_s(((*l_726) ^= (((void*)0 != &p_771->g_294) ^ 248UL)), p_771->g_650.s3)), 65535UL))) < 0x94BDF36BE0DCA535L) >= p_771->g_293)))) >= (**p_771->g_285)) && (**p_771->g_315)) < 0x1027L) == 0x52CFL))), (*p_771->g_316))) & l_705) , (void*)0)) ^ l_727)), 3))), p_771->g_28.sb)) <= (-7L)) && p_771->g_657.s3)) | p_771->g_624.s7), p_771->g_611.s3)))))) != p_771->g_354))) , (void*)0);
                        --l_735;
                        (*p_771->g_316) = (-8L);
                    }
                    else
                    { /* block id: 371 */
                        int64_t *l_755 = (void*)0;
                        int64_t *l_756 = (void*)0;
                        l_738.s5++;
                        (*l_668) &= (**p_771->g_315);
                        if ((**p_771->g_315))
                            break;
                        (*l_668) &= (safe_div_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((safe_add_func_uint32_t_u_u((safe_sub_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u((((safe_unary_minus_func_uint32_t_u(FAKE_DIVERGE(p_771->global_2_offset, get_global_id(2), 10))) <= (0x57L | ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((-9L), 0x51L)).yxxyxyxxxxyxxyyx)).s0)) || l_752), ((--(**p_771->g_285)) , (p_771->l_comm_values[(safe_mod_func_uint32_t_u_u(p_771->tid, 95))] ^= p_771->g_2.s3)))) == ((*l_673) == ((safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(p_771->g_347[0][7][0], (0x68C5D00BL && (**p_771->g_315)))), 1)) & (safe_lshift_func_int8_t_s_s(((void*)0 == &p_771->g_92[1][7][3]), 2))))), 249UL)), (*p_771->g_316))) , p_771->g_650.s2) > p_771->g_44.s6), 1UL)), 5UL));
                    }
                    ++l_767;
                    l_766[9][1] = ((VECTOR(int32_t, 4))(p_771->g_770.wwxx)).y;
                }
            }
        }
    }
    return p_771->g_611.s7;
}


/* ------------------------------------------ */
/* 
 * reads : p_771->g_84 p_771->g_409 p_771->g_301 p_771->g_92 p_771->g_28 p_771->g_3 p_771->g_566 p_771->g_270 p_771->g_43
 * writes: p_771->g_84 p_771->g_572
 */
int16_t  func_14(int32_t * p_15, struct S0 * p_771)
{ /* block id: 200 */
    uint64_t l_413[1][3];
    uint16_t **l_536 = (void*)0;
    VECTOR(uint16_t, 2) l_540 = (VECTOR(uint16_t, 2))(0x953AL, 65530UL);
    int32_t l_557 = 0x0545F874L;
    int32_t *l_559[8] = {&p_771->g_248,&p_771->g_248,&p_771->g_248,&p_771->g_248,&p_771->g_248,&p_771->g_248,&p_771->g_248,&p_771->g_248};
    uint16_t l_560[3];
    VECTOR(uint32_t, 4) l_565 = (VECTOR(uint32_t, 4))(0x3EBE9E1AL, (VECTOR(uint32_t, 2))(0x3EBE9E1AL, 0xA38B8509L), 0xA38B8509L);
    int32_t ***l_571 = &p_771->g_315;
    int8_t l_575 = 0x66L;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_413[i][j] = 0UL;
    }
    for (i = 0; i < 3; i++)
        l_560[i] = 65535UL;
    l_413[0][1]++;
    for (p_771->g_84 = 0; (p_771->g_84 != 60); p_771->g_84++)
    { /* block id: 204 */
        VECTOR(int16_t, 2) l_537 = (VECTOR(int16_t, 2))(0x0AC3L, (-4L));
        int16_t *l_547[7][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t l_548 = 7L;
        int16_t l_558[3];
        int i, j;
        for (i = 0; i < 3; i++)
            l_558[i] = (-7L);
        if ((atomic_inc(&p_771->g_atomic_input[5 * get_linear_group_id() + 2]) == 7))
        { /* block id: 206 */
            uint32_t l_418 = 0xC30C54F4L;
            uint16_t l_419 = 0x850AL;
            int32_t l_420 = (-1L);
            uint32_t l_421[1][6][3];
            int8_t l_535 = 1L;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 6; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_421[i][j][k] = 4294967294UL;
                }
            }
            l_419 = l_418;
            if ((l_420 , (((VECTOR(int64_t, 4))((-1L), ((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((-1L), 1L)).yxxyyyxx)).s76, ((VECTOR(int64_t, 2))((-7L), 0x3B4EB2ADA4E3D260L))))), 0x5ED6C069431AA630L)).w , l_421[0][4][0])))
            { /* block id: 208 */
                int32_t l_423 = 0x2FFCF27CL;
                int32_t *l_422 = &l_423;
                int32_t *l_424 = &l_423;
                int32_t *l_425 = (void*)0;
                int8_t l_426[8];
                uint16_t l_427 = 0xA6EFL;
                int i;
                for (i = 0; i < 8; i++)
                    l_426[i] = 0x14L;
                l_425 = (l_424 = l_422);
                if ((l_427 = l_426[2]))
                { /* block id: 212 */
                    VECTOR(uint64_t, 8) l_428 = (VECTOR(uint64_t, 8))(0x52E9D10375DA5036L, (VECTOR(uint64_t, 4))(0x52E9D10375DA5036L, (VECTOR(uint64_t, 2))(0x52E9D10375DA5036L, 0xC4979993719CF72DL), 0xC4979993719CF72DL), 0xC4979993719CF72DL, 0x52E9D10375DA5036L, 0xC4979993719CF72DL);
                    uint32_t l_429[8] = {0x136AC743L,0x136AC743L,0x136AC743L,0x136AC743L,0x136AC743L,0x136AC743L,0x136AC743L,0x136AC743L};
                    int16_t l_446 = 0x2664L;
                    int i;
                    if (((*l_425) = (l_428.s3 , l_429[1])))
                    { /* block id: 214 */
                        int64_t l_430[8];
                        uint16_t l_431 = 7UL;
                        int i;
                        for (i = 0; i < 8; i++)
                            l_430[i] = 0x20335CE69AB97FC5L;
                        l_431--;
                    }
                    else
                    { /* block id: 216 */
                        int32_t l_434[3];
                        int16_t l_435 = 0x4A1EL;
                        uint8_t l_436 = 0x5AL;
                        uint16_t l_439 = 0xF4BEL;
                        uint32_t l_440[1];
                        uint32_t l_441 = 4294967286UL;
                        int32_t l_443 = 0x0A50D869L;
                        int32_t *l_442 = &l_443;
                        int32_t *l_444 = &l_443;
                        int32_t *l_445 = &l_443;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_434[i] = (-4L);
                        for (i = 0; i < 1; i++)
                            l_440[i] = 0x36B1BB04L;
                        ++l_436;
                        l_441 = (l_439 , l_440[0]);
                        l_445 = (l_444 = (l_425 = (l_442 = l_442)));
                    }
                    l_425 = (void*)0;
                    (*l_422) = l_446;
                }
                else
                { /* block id: 226 */
                    VECTOR(uint64_t, 2) l_447 = (VECTOR(uint64_t, 2))(0x4F431ACD9AAD0A0DL, 0x288F14696CC4A8F7L);
                    int32_t l_448 = 0x0CAC6038L;
                    int64_t l_449[7];
                    VECTOR(int32_t, 8) l_450 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x3A482379L), 0x3A482379L), 0x3A482379L, 7L, 0x3A482379L);
                    uint16_t l_451 = 0x1F7BL;
                    VECTOR(uint64_t, 8) l_454 = (VECTOR(uint64_t, 8))(18446744073709551614UL, (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 0xD19A9688F74F5656L), 0xD19A9688F74F5656L), 0xD19A9688F74F5656L, 18446744073709551614UL, 0xD19A9688F74F5656L);
                    VECTOR(uint64_t, 4) l_455 = (VECTOR(uint64_t, 4))(0xF894A0138B08613AL, (VECTOR(uint64_t, 2))(0xF894A0138B08613AL, 0x45EB3AF600FB3824L), 0x45EB3AF600FB3824L);
                    uint16_t l_456 = 65534UL;
                    uint8_t l_457 = 0x4DL;
                    uint8_t l_458 = 255UL;
                    int i;
                    for (i = 0; i < 7; i++)
                        l_449[i] = 0L;
                    l_457 = (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(0x71C1B63B0CB27F91L, ((VECTOR(uint64_t, 2))(l_447.xy)), (++l_451), 0x02047E6ADB7A7C47L, ((VECTOR(uint64_t, 8))(l_454.s53341541)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_455.xz)), 0UL, 0xB85CDD2C072C97F7L)).wwwxxxyw)).hi))).xxwywyzz, ((VECTOR(uint64_t, 2))(0xCB6692462DF31852L, 0x2849392E62C4EECAL)).yxyxxyyy, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0x8E18C88A2468CED1L, 18446744073709551608UL)), 0UL, l_456, 18446744073709551615UL, 0xA1E7BE73610A4E49L, 0x7826F0A6F763173AL, 0xC9DEA17399357E33L))))).s40)), 18446744073709551610UL)).s7a)), 2UL, 0x26449BA6D8A54C4FL)).w , 0x30289DCFL);
                    if (l_458)
                    { /* block id: 229 */
                        VECTOR(uint8_t, 8) l_459 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL);
                        uint32_t l_460 = 0xBBBB207AL;
                        int i;
                        (*l_422) = l_459.s7;
                        (*l_425) = (l_460 , (-1L));
                        (*l_424) = 0x32F2236DL;
                        (*l_422) = 0L;
                    }
                    else
                    { /* block id: 234 */
                        uint16_t l_461[3];
                        int8_t l_462 = (-2L);
                        VECTOR(int64_t, 4) l_463 = (VECTOR(int64_t, 4))(0x6E114B12DDDFBAEBL, (VECTOR(int64_t, 2))(0x6E114B12DDDFBAEBL, 6L), 6L);
                        VECTOR(int32_t, 2) l_464 = (VECTOR(int32_t, 2))((-2L), 0x64C950BEL);
                        int32_t *l_465 = (void*)0;
                        int32_t *l_466 = (void*)0;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_461[i] = 65535UL;
                        l_462 = l_461[0];
                        (*l_422) = (FAKE_DIVERGE(p_771->group_0_offset, get_group_id(0), 10) , ((((VECTOR(uint64_t, 2))(18446744073709551612UL, 0x9D4AC89E5DFCBA62L)).lo , ((VECTOR(int64_t, 8))(l_463.wyxywyxy)).s5) , ((VECTOR(int32_t, 2))(l_464.xy)).odd));
                        l_425 = (l_424 = (l_466 = l_465));
                    }
                    l_420 ^= ((*l_422) = (-4L));
                }
            }
            else
            { /* block id: 244 */
                int32_t l_467 = 0x728CE204L;
                VECTOR(int32_t, 4) l_472 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-3L)), (-3L));
                uint64_t l_504 = 0x3843B2AB127AD8EEL;
                uint32_t l_507[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_507[i] = 0x0E7CF4B2L;
                for (l_467 = 0; (l_467 <= (-16)); l_467 = safe_sub_func_int32_t_s_s(l_467, 1))
                { /* block id: 247 */
                    int32_t l_471 = 0x14996365L;
                    int32_t *l_470 = &l_471;
                    l_470 = (void*)0;
                    l_420 |= 0x571FFC8FL;
                }
                if (((VECTOR(int32_t, 8))(l_472.xwwywwzw)).s1)
                { /* block id: 251 */
                    int32_t l_473 = (-9L);
                    uint32_t l_474 = 0UL;
                    uint32_t l_475 = 0xC58AD98EL;
                    l_475 = (l_474 = l_473);
                }
                else
                { /* block id: 254 */
                    int64_t l_476 = 0x4D2B475C6F82B4DFL;
                    int16_t l_477 = 0x4988L;
                    int32_t l_478 = 0x52A29BBFL;
                    int8_t l_479 = 0x30L;
                    int16_t l_480 = 2L;
                    uint32_t l_481 = 4294967293UL;
                    uint64_t l_484 = 7UL;
                    VECTOR(int16_t, 16) l_485 = (VECTOR(int16_t, 16))(0x52D0L, (VECTOR(int16_t, 4))(0x52D0L, (VECTOR(int16_t, 2))(0x52D0L, 0x4BE2L), 0x4BE2L), 0x4BE2L, 0x52D0L, 0x4BE2L, (VECTOR(int16_t, 2))(0x52D0L, 0x4BE2L), (VECTOR(int16_t, 2))(0x52D0L, 0x4BE2L), 0x52D0L, 0x4BE2L, 0x52D0L, 0x4BE2L);
                    VECTOR(int16_t, 8) l_486 = (VECTOR(int16_t, 8))(0x0A40L, (VECTOR(int16_t, 4))(0x0A40L, (VECTOR(int16_t, 2))(0x0A40L, 1L), 1L), 1L, 0x0A40L, 1L);
                    VECTOR(int16_t, 2) l_487 = (VECTOR(int16_t, 2))(7L, 0x5ED3L);
                    VECTOR(uint32_t, 8) l_488 = (VECTOR(uint32_t, 8))(0x012FC3BEL, (VECTOR(uint32_t, 4))(0x012FC3BEL, (VECTOR(uint32_t, 2))(0x012FC3BEL, 0xC992769CL), 0xC992769CL), 0xC992769CL, 0x012FC3BEL, 0xC992769CL);
                    VECTOR(int16_t, 16) l_489 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4860L), 0x4860L), 0x4860L, 1L, 0x4860L, (VECTOR(int16_t, 2))(1L, 0x4860L), (VECTOR(int16_t, 2))(1L, 0x4860L), 1L, 0x4860L, 1L, 0x4860L);
                    VECTOR(uint8_t, 2) l_490 = (VECTOR(uint8_t, 2))(255UL, 0x36L);
                    VECTOR(uint8_t, 16) l_491 = (VECTOR(uint8_t, 16))(0xDDL, (VECTOR(uint8_t, 4))(0xDDL, (VECTOR(uint8_t, 2))(0xDDL, 0x86L), 0x86L), 0x86L, 0xDDL, 0x86L, (VECTOR(uint8_t, 2))(0xDDL, 0x86L), (VECTOR(uint8_t, 2))(0xDDL, 0x86L), 0xDDL, 0x86L, 0xDDL, 0x86L);
                    int32_t l_492 = 2L;
                    int16_t l_493 = 4L;
                    uint8_t l_494 = 1UL;
                    VECTOR(uint8_t, 16) l_495 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 247UL), 247UL), 247UL, 0UL, 247UL, (VECTOR(uint8_t, 2))(0UL, 247UL), (VECTOR(uint8_t, 2))(0UL, 247UL), 0UL, 247UL, 0UL, 247UL);
                    VECTOR(uint8_t, 8) l_496 = (VECTOR(uint8_t, 8))(0x51L, (VECTOR(uint8_t, 4))(0x51L, (VECTOR(uint8_t, 2))(0x51L, 1UL), 1UL), 1UL, 0x51L, 1UL);
                    VECTOR(uint8_t, 2) l_497 = (VECTOR(uint8_t, 2))(0x0FL, 0x4CL);
                    VECTOR(uint8_t, 2) l_498 = (VECTOR(uint8_t, 2))(0x0BL, 255UL);
                    int8_t l_499 = 0x30L;
                    int16_t l_500[9][10] = {{0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L},{0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L},{0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L},{0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L},{0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L},{0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L},{0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L},{0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L},{0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L,0L,0x03D5L,0x03D5L}};
                    VECTOR(uint8_t, 16) l_501 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xF6L), 0xF6L), 0xF6L, 0UL, 0xF6L, (VECTOR(uint8_t, 2))(0UL, 0xF6L), (VECTOR(uint8_t, 2))(0UL, 0xF6L), 0UL, 0xF6L, 0UL, 0xF6L);
                    VECTOR(uint32_t, 4) l_502 = (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 1UL), 1UL);
                    uint32_t l_503 = 1UL;
                    int i, j;
                    l_420 = (((l_472.x = 0x0B17ABCCL) , ((l_476 , 0x5AD44C66L) , l_477)) , l_478);
                    l_480 &= l_479;
                    l_481++;
                    l_420 &= (l_472.x = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))((l_477 |= l_484), 0x4D3EL, ((VECTOR(int16_t, 2))((-1L), (-1L))), ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_485.se460)).x, ((VECTOR(int16_t, 4))(l_486.s1656)), (-5L), 0x091CL, 0x3D82L)).lo))))))), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(8L, (-9L))), (l_488.s4 = ((VECTOR(int16_t, 2))(l_487.xy)).hi), 0L, ((VECTOR(int16_t, 4))(l_489.s1141)))))).s2468, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(l_490.yyxxyxxyxyxyxxxy)).odd)).odd)).xyxwxywy, ((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_491.s11c6)), 0xB4L, 255UL, 0x61L, 0xA4L)).odd, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 2))(0UL, 2UL)), ((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(6UL, 1UL)), 3UL, 0xF2L)).yxxywyxyywxwxxyz)).se5a8)).yzyyzzyw, (uint8_t)(l_494 = (l_492 , l_493))))).s07))), 0x50L, 3UL)).wzxzzwyz)))).odd))).zywwzyzy, ((VECTOR(uint8_t, 2))(0xEDL, 0x1BL)).xxxxxxyx))).s4120640663412653, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(l_495.s9f)))), ((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(l_496.s05)), ((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),uint8_t,((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xF0L, 0xC3L)).yyyxxxxy)), 255UL, ((VECTOR(uint8_t, 2))(l_497.yy)), ((VECTOR(uint8_t, 2))(l_498.yx)), (((l_419 ^= 1UL) , 0x2B5D27ECL) , (l_500[6][0] = l_499)), 0UL, 0xEBL)), (uint8_t)((VECTOR(uint8_t, 8))(l_501.s86fe12cf)).s4, (uint8_t)l_502.x))).s0d))))), (uint8_t)l_503))), 0x77L, ((VECTOR(uint8_t, 2))(0UL)), 2UL)).s2554305757730644, ((VECTOR(uint8_t, 16))(255UL))))), ((VECTOR(uint8_t, 16))(255UL))))).s7f, ((VECTOR(uint16_t, 2))(65535UL))))).yyyyxxyyxxyyxyyx)).s67d0))))).even)).hi);
                }
                --l_504;
                if (l_507[1])
                { /* block id: 268 */
                    int8_t l_508 = 0x36L;
                    uint16_t l_515[6][4];
                    int16_t l_530[7][6] = {{2L,0L,7L,0L,2L,2L},{2L,0L,7L,0L,2L,2L},{2L,0L,7L,0L,2L,2L},{2L,0L,7L,0L,2L,2L},{2L,0L,7L,0L,2L,2L},{2L,0L,7L,0L,2L,2L},{2L,0L,7L,0L,2L,2L}};
                    int i, j;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_515[i][j] = 0xC389L;
                    }
                    if (l_508)
                    { /* block id: 269 */
                        VECTOR(int32_t, 4) l_509 = (VECTOR(int32_t, 4))(0x2EAA0C25L, (VECTOR(int32_t, 2))(0x2EAA0C25L, 0x31DF619DL), 0x31DF619DL);
                        int i;
                        l_467 = ((VECTOR(int32_t, 2))(l_509.yz)).even;
                    }
                    else
                    { /* block id: 271 */
                        int32_t l_510[10];
                        VECTOR(uint32_t, 8) l_511 = (VECTOR(uint32_t, 8))(0x8248036CL, (VECTOR(uint32_t, 4))(0x8248036CL, (VECTOR(uint32_t, 2))(0x8248036CL, 0x4F246142L), 0x4F246142L), 0x4F246142L, 0x8248036CL, 0x4F246142L);
                        uint32_t l_514[5][8][2] = {{{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L}},{{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L}},{{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L}},{{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L}},{{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L},{4294967295UL,0x1D551D55L}}};
                        int i, j, k;
                        for (i = 0; i < 10; i++)
                            l_510[i] = 0x366200C3L;
                        l_420 ^= l_510[1];
                        ++l_511.s1;
                        l_472.z = l_514[4][7][0];
                    }
                    if ((l_472.z = l_515[0][1]))
                    { /* block id: 277 */
                        int8_t l_516 = 0L;
                        int16_t l_517 = 0x6DDAL;
                        int16_t l_518[1][10][5] = {{{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L},{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L},{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L},{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L},{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L},{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L},{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L},{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L},{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L},{0x0EB6L,0x59AFL,(-7L),(-8L),0x1823L}}};
                        uint32_t l_519 = 0xB3C485E7L;
                        int16_t l_522 = 0x06DEL;
                        uint16_t l_523 = 0xDFE4L;
                        int32_t *l_526 = (void*)0;
                        int i, j, k;
                        l_519++;
                        l_523--;
                        l_526 = (void*)0;
                    }
                    else
                    { /* block id: 281 */
                        uint32_t l_527 = 0x62445D95L;
                        l_527++;
                        l_467 ^= (-6L);
                    }
                    l_420 = l_530[1][0];
                }
                else
                { /* block id: 286 */
                    int32_t l_531 = 0x65A5509EL;
                    for (l_531 = 0; (l_531 != (-1)); --l_531)
                    { /* block id: 289 */
                        int32_t l_534 = (-7L);
                        l_472.z |= l_534;
                    }
                }
            }
            l_535 = 0x28782FEBL;
            unsigned int result = 0;
            result += l_418;
            result += l_419;
            result += l_420;
            int l_421_i0, l_421_i1, l_421_i2;
            for (l_421_i0 = 0; l_421_i0 < 1; l_421_i0++) {
                for (l_421_i1 = 0; l_421_i1 < 6; l_421_i1++) {
                    for (l_421_i2 = 0; l_421_i2 < 3; l_421_i2++) {
                        result += l_421[l_421_i0][l_421_i1][l_421_i2];
                    }
                }
            }
            result += l_535;
            atomic_add(&p_771->g_special_values[5 * get_linear_group_id() + 2], result);
        }
        else
        { /* block id: 295 */
            (1 + 1);
        }
        l_558[0] = ((l_536 == l_536) > (((VECTOR(int16_t, 2))(l_537.xy)).even ^ (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(8UL, ((VECTOR(uint16_t, 2))(l_540.yx)), 0xEECBL, (((VECTOR(uint16_t, 4))(((safe_div_func_uint32_t_u_u(4294967293UL, l_413[0][0])) & (safe_div_func_int32_t_s_s((~((safe_div_func_int16_t_s_s((l_548 = (((void*)0 == &p_771->g_316) | l_540.x)), (safe_mul_func_uint8_t_u_u((safe_div_func_int64_t_s_s((safe_rshift_func_uint16_t_u_s((((safe_mul_func_int8_t_s_s(p_771->g_409, l_540.x)) != l_413[0][1]) ^ p_771->g_301), 4)), l_540.y)), 0xC5L)))) || p_771->g_409)), l_557))), ((VECTOR(uint16_t, 2))(0x4FF7L)), 65534UL)).z < l_540.y), ((VECTOR(uint16_t, 2))(1UL)), 65526UL)).s7, l_540.x))));
        return p_771->g_92[0][7][0];
    }
    p_771->g_572 = ((~((~(l_560[1] ^= 0L)) || (safe_mul_func_int8_t_s_s((0x29A8898DL | 0UL), (-1L))))) == (((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(0x4CL, (-4L))))).hi > ((p_771->g_28.s0 && (safe_add_func_int32_t_s_s(p_771->g_3, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_565.yzwz)), 3UL, GROUP_DIVERGE(2, 1), ((VECTOR(uint32_t, 8))(0xE7993426L, ((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 8))(p_771->g_566.s51266676)).odd, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0x187876C2L, 0xB1AAA6B9L)), 0UL, (((safe_lshift_func_int8_t_s_u(((safe_rshift_func_int8_t_s_s(p_771->g_270.s6, (l_571 == l_571))) | 0x2CCEL), p_771->g_43.s7)) , &p_771->g_285) == &p_771->g_285), 0x65D4795EL, ((VECTOR(uint32_t, 4))(0xA9371F04L)), 4294967295UL, ((VECTOR(uint32_t, 4))(0xC3BB65D8L)), 0x8A243C44L, 0xE2C8192CL)).even)).hi))), 0xC21A2F64L, 1UL, 0xDAD45566L)), 4294967286UL, 5UL)).s20)).odd))) < FAKE_DIVERGE(p_771->local_1_offset, get_local_id(1), 10))));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_771->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 95)), permutations[(safe_mod_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u((p_15 == p_15), 2)), 10))][(safe_mod_func_uint32_t_u_u(p_771->tid, 95))]));
    return l_575;
}


/* ------------------------------------------ */
/* 
 * reads : p_771->g_31 p_771->g_84 p_771->g_85 p_771->g_28 p_771->g_43 p_771->g_44 p_771->g_3 p_771->g_42 p_771->g_7 p_771->g_267 p_771->g_248 p_771->g_270 p_771->g_273 p_771->g_285 p_771->g_301 p_771->g_315 p_771->g_294 p_771->g_316 p_771->g_297 p_771->g_347 p_771->g_354 p_771->g_409
 * writes: p_771->g_84 p_771->g_44 p_771->g_7 p_771->g_248 p_771->g_285 p_771->g_301 p_771->g_293 p_771->g_316 p_771->g_294 p_771->g_315 p_771->g_354 p_771->g_409
 */
uint64_t  func_20(int64_t  p_21, uint32_t  p_22, int32_t * p_23, struct S0 * p_771)
{ /* block id: 15 */
    int32_t l_59 = 0x7FC42E2EL;
    int32_t *l_65 = (void*)0;
    uint8_t l_81 = 0xFFL;
    VECTOR(int32_t, 4) l_82 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x79F05BB7L), 0x79F05BB7L);
    uint16_t *l_83 = &p_771->g_84;
    int16_t *l_88 = (void*)0;
    int16_t *l_89 = (void*)0;
    int32_t l_90 = 0L;
    uint16_t *l_91 = &p_771->g_92[1][7][3];
    int32_t *l_306 = (void*)0;
    int32_t **l_305 = &l_306;
    int32_t *l_307 = &l_90;
    int16_t *l_308 = (void*)0;
    int16_t *l_309 = (void*)0;
    int16_t *l_310 = (void*)0;
    int16_t *l_311 = (void*)0;
    int16_t *l_312 = (void*)0;
    int16_t *l_313 = (void*)0;
    int16_t *l_314 = (void*)0;
    int32_t ***l_349 = &p_771->g_315;
    int32_t ***l_350 = &l_305;
    int32_t *l_351 = (void*)0;
    int32_t *l_352 = (void*)0;
    int32_t *l_353[8][7][4] = {{{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0}},{{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0}},{{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0}},{{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0}},{{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0}},{{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0}},{{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0}},{{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0},{&p_771->g_3,(void*)0,&p_771->g_248,(void*)0}}};
    int32_t l_408 = (-9L);
    int i, j, k;
    (*l_350) = ((*l_349) = func_49(func_55((func_34(l_59, (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(0UL, func_60((*p_23), (l_82.w = (((*l_307) = (l_65 == ((*l_305) = func_66(p_23, p_771->g_31.s2, func_72(p_22, func_76(((safe_rshift_func_uint16_t_u_s(((*l_83) |= (l_81 | ((VECTOR(int32_t, 8))(l_82.zzwwzxzw)).s0)), 6)) & ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(p_771->g_85.s12260107)).s15, ((VECTOR(uint8_t, 4))(246UL, 0xC4L, 0x58L, 0x8AL)).hi, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(((((l_90 = (safe_lshift_func_int16_t_s_s(p_21, 15))) >= (l_88 != l_91)) == 0xD0D30074L) & p_771->g_31.s3), p_22, 0x76L, 0x10L, p_771->g_28.s8, 255UL, 247UL, 255UL)).s16, ((VECTOR(uint8_t, 2))(1UL))))).xyyx)).odd))).yyyxyxxx)).s3063667140267110)).saba4)).hi)).odd), p_21, p_771), l_65, p_771), (*p_23), p_771->g_273.s7, p_771)))) , p_771->g_270.s5)), &p_771->g_3, p_771->g_315, p_771), 0xC0E27DA5L, 0x9FB76E18L)), 0UL, ((VECTOR(uint32_t, 2))(0x6305D6EFL)), 0x2CEB77BDL)).s0 , (void*)0), p_771->g_42.y, p_22, p_771) <= 1L), &p_771->g_316, p_771->g_31.s7, p_771), p_771->g_297, p_771->g_270.sb, &l_65, p_771->g_347[0][7][0], p_771));
    --p_771->g_354;
    for (p_21 = 0; (p_21 >= 18); p_21++)
    { /* block id: 151 */
        int32_t *l_361 = &p_771->g_248;
        for (l_90 = 0; (l_90 != 6); l_90++)
        { /* block id: 154 */
            l_361 = p_23;
            (*l_361) = (*l_307);
            if ((atomic_inc(&p_771->g_atomic_input[5 * get_linear_group_id() + 1]) == 0))
            { /* block id: 159 */
                int64_t l_362 = 0x59E66D17459A9C19L;
                int64_t l_363 = 0L;
                if ((l_362 , l_363))
                { /* block id: 160 */
                    int32_t l_364 = 0x00089029L;
                    uint8_t l_381 = 255UL;
                    uint32_t l_382 = 1UL;
                    int32_t *l_397 = (void*)0;
                    for (l_364 = (-5); (l_364 < (-1)); l_364++)
                    { /* block id: 163 */
                        int64_t l_367 = 0x1A76D8221039D80EL;
                        uint32_t l_368 = 0UL;
                        int32_t *l_369 = (void*)0;
                        int32_t l_371 = 0L;
                        int32_t *l_370[6][7][6] = {{{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_371,(void*)0,(void*)0,(void*)0}}};
                        int32_t *l_372 = (void*)0;
                        int32_t *l_373 = &l_371;
                        int64_t l_374 = 0x33D6205BBEE20119L;
                        VECTOR(int32_t, 8) l_375 = (VECTOR(int32_t, 8))(0x0B300B62L, (VECTOR(int32_t, 4))(0x0B300B62L, (VECTOR(int32_t, 2))(0x0B300B62L, 0x3F9409E8L), 0x3F9409E8L), 0x3F9409E8L, 0x0B300B62L, 0x3F9409E8L);
                        uint64_t l_376 = 18446744073709551613UL;
                        uint32_t l_379[3][5] = {{0x0FF83EBAL,3UL,0x0FF83EBAL,0x0FF83EBAL,3UL},{0x0FF83EBAL,3UL,0x0FF83EBAL,0x0FF83EBAL,3UL},{0x0FF83EBAL,3UL,0x0FF83EBAL,0x0FF83EBAL,3UL}};
                        int32_t l_380 = 0L;
                        int i, j, k;
                        l_373 = (l_367 , (l_368 , (l_372 = (l_370[2][2][3] = l_369))));
                        l_376++;
                        l_380 = (l_379[1][2] = 0x69AED675L);
                    }
                    if ((l_382 = l_381))
                    { /* block id: 172 */
                        uint32_t l_383 = 4294967295UL;
                        uint64_t l_384 = 6UL;
                        VECTOR(int32_t, 4) l_388 = (VECTOR(int32_t, 4))(0x3CA566DCL, (VECTOR(int32_t, 2))(0x3CA566DCL, 0x68356E7FL), 0x68356E7FL);
                        int32_t *l_387 = (void*)0;
                        int32_t *l_389[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_389[i] = (void*)0;
                        l_364 = l_383;
                        --l_384;
                        l_389[2] = l_387;
                    }
                    else
                    { /* block id: 176 */
                        int8_t l_390 = 0x32L;
                        int32_t l_391 = 0x35AACB7BL;
                        int64_t l_392 = 0x67AE42CBC974CA1FL;
                        uint16_t l_393 = 65526UL;
                        uint16_t l_394 = 65533UL;
                        VECTOR(uint32_t, 8) l_395 = (VECTOR(uint32_t, 8))(0xF13EE548L, (VECTOR(uint32_t, 4))(0xF13EE548L, (VECTOR(uint32_t, 2))(0xF13EE548L, 4294967288UL), 4294967288UL), 4294967288UL, 0xF13EE548L, 4294967288UL);
                        VECTOR(int32_t, 2) l_396 = (VECTOR(int32_t, 2))(0x2C37D0DCL, 1L);
                        int i;
                        l_391 = l_390;
                        l_364 &= l_392;
                        l_364 = ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-1L), 0x5B6C1743L)).xxyyyxyxyxxyxyxx)).odd, ((VECTOR(int32_t, 4))(l_393, (l_394 , l_395.s1), 1L, (-5L))).yxyyyzyz, ((VECTOR(int32_t, 16))(l_396.xyyxxxxxxxyyxxxx)).odd))).s4;
                        l_364 = 0x0ECDB331L;
                    }
                    l_397 = (void*)0;
                }
                else
                { /* block id: 183 */
                    int64_t l_398 = 6L;
                    uint32_t l_399 = 3UL;
                    uint16_t l_400 = 0x3B36L;
                    int32_t *l_401 = (void*)0;
                    int32_t l_403 = 8L;
                    int32_t *l_402 = &l_403;
                    l_399 ^= l_398;
                    l_402 = (l_400 , l_401);
                    for (l_398 = 29; (l_398 == 29); l_398 = safe_add_func_uint16_t_u_u(l_398, 1))
                    { /* block id: 188 */
                        int32_t l_406 = 0x60550F20L;
                        int8_t l_407[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_407[i] = (-4L);
                        l_407[0] ^= (l_406 , 0x0198939BL);
                    }
                }
                unsigned int result = 0;
                result += l_362;
                result += l_363;
                atomic_add(&p_771->g_special_values[5 * get_linear_group_id() + 1], result);
            }
            else
            { /* block id: 192 */
                (1 + 1);
            }
            (*p_771->g_315) = p_23;
        }
    }
    --p_771->g_409;
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_771->g_42 p_771->g_43 p_771->g_44
 * writes:
 */
int32_t  func_34(int8_t  p_35, int32_t * p_36, int64_t  p_37, uint32_t  p_38, struct S0 * p_771)
{ /* block id: 12 */
    VECTOR(uint64_t, 16) l_45 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
    VECTOR(uint64_t, 8) l_46 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 9UL), 9UL), 9UL, 18446744073709551615UL, 9UL);
    VECTOR(uint64_t, 4) l_47 = (VECTOR(uint64_t, 4))(0x0BAF34C2E3979D79L, (VECTOR(uint64_t, 2))(0x0BAF34C2E3979D79L, 18446744073709551615UL), 18446744073709551615UL);
    uint32_t l_48 = 0xE8228F8FL;
    int i;
    l_48 = ((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(p_771->g_42.xyxxyyyyxxyyxyyx)).lo)).s11, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(p_771->g_43.s7e)).xyyyyyxy, ((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 2))(7L, 0L)).yyyyxyyy)))))))).s13))))))).xxxxxxxx))).s6237554462341111)).sed18, ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(0UL, 0x4954824FF24264A3L, 0x07B8A5F036206CBCL, ((VECTOR(uint64_t, 4))(p_771->g_44.s8dfe)).w, 0UL, p_771->g_42.x, 0xAB70486D4D441147L, 0x38D03D8E66C79A83L)).odd, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_45.sab)), 0x338D581CA9286DF4L, 0xA847E08A84A00028L))))), ((VECTOR(uint64_t, 8))(l_46.s57566277)).hi))), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(l_47.yyyxxyxwyzzxwyyz)).hi)).even))).xywyywwyxwzyzywz)).odd)).s2 > 0x607384C7B934CEB0L) , 0x260F1475L);
    return p_771->g_42.y;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t ** func_49(int32_t * p_50, uint32_t  p_51, int16_t  p_52, int32_t ** p_53, int64_t  p_54, struct S0 * p_771)
{ /* block id: 144 */
    int32_t **l_348[5] = {&p_771->g_316,&p_771->g_316,&p_771->g_316,&p_771->g_316,&p_771->g_316};
    int i;
    return l_348[4];
}


/* ------------------------------------------ */
/* 
 * reads : p_771->g_273 p_771->g_43 p_771->g_44 p_771->g_3 p_771->g_42 p_771->g_294 p_771->g_315 p_771->g_316 p_771->g_7
 * writes: p_771->g_44 p_771->g_7 p_771->g_316 p_771->g_294
 */
int32_t * func_55(int64_t  p_56, int32_t ** p_57, int32_t  p_58, struct S0 * p_771)
{ /* block id: 133 */
    uint16_t l_341 = 0x6151L;
    int32_t l_342 = 3L;
    int32_t *l_345 = &p_771->g_7;
    int32_t *l_346 = &p_771->g_248;
    (*p_57) = func_76(p_771->g_273.s5, p_56, p_771);
    l_342 = l_341;
    for (p_771->g_294 = 0; (p_771->g_294 > 1); p_771->g_294 = safe_add_func_uint16_t_u_u(p_771->g_294, 6))
    { /* block id: 138 */
        l_345 = (*p_771->g_315);
        if ((**p_57))
            continue;
    }
    (*p_57) = &l_342;
    return l_346;
}


/* ------------------------------------------ */
/* 
 * reads : p_771->g_44 p_771->g_7
 * writes: p_771->g_293 p_771->g_7
 */
uint32_t  func_60(int32_t  p_61, int16_t  p_62, int32_t * p_63, int32_t ** p_64, struct S0 * p_771)
{ /* block id: 128 */
    VECTOR(uint8_t, 16) l_319 = (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0x32L), 0x32L), 0x32L, 2UL, 0x32L, (VECTOR(uint8_t, 2))(2UL, 0x32L), (VECTOR(uint8_t, 2))(2UL, 0x32L), 2UL, 0x32L, 2UL, 0x32L);
    int32_t l_329 = (-1L);
    uint16_t *l_330 = (void*)0;
    VECTOR(uint8_t, 4) l_333 = (VECTOR(uint8_t, 4))(0x3CL, (VECTOR(uint8_t, 2))(0x3CL, 0xB2L), 0xB2L);
    VECTOR(uint8_t, 2) l_334 = (VECTOR(uint8_t, 2))(0x5CL, 255UL);
    int16_t l_335 = 0x50A2L;
    int64_t *l_338 = &p_771->g_293;
    int64_t l_339 = 0x69C7B3D9533163ABL;
    int32_t *l_340[5][4] = {{&p_771->g_248,&l_329,&l_329,&l_329},{&p_771->g_248,&l_329,&l_329,&l_329},{&p_771->g_248,&l_329,&l_329,&l_329},{&p_771->g_248,&l_329,&l_329,&l_329},{&p_771->g_248,&l_329,&l_329,&l_329}};
    int i, j;
    l_335 |= (safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(l_319.sf1d0092f)).s6, (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(((safe_mod_func_int16_t_s_s((safe_unary_minus_func_uint64_t_u(((safe_rshift_func_int8_t_s_s((l_329 ^ l_319.se), 6)) > (l_330 != ((safe_mul_func_int8_t_s_s(p_771->g_44.sc, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 16))(l_333.wxywxwzxyyxwwxwy)).s80, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(l_334.yy)))), 255UL, 0xEFL)).odd))).xyxx)).y)) , l_330))))), 0xAA6AL)) , (0x190B5BDC0AB179F6L ^ (0x6048L && ((VECTOR(uint16_t, 2))(0xA146L, 0x039FL)).odd))), 2)), p_771->g_7))));
    p_771->g_7 ^= (safe_div_func_int64_t_s_s(((*l_338) = (-1L)), l_339));
    return p_62;
}


/* ------------------------------------------ */
/* 
 * reads : p_771->g_301
 * writes: p_771->g_301 p_771->g_7
 */
int32_t * func_66(int32_t * p_67, int64_t  p_68, int32_t * p_69, int32_t  p_70, uint64_t  p_71, struct S0 * p_771)
{ /* block id: 116 */
    int32_t l_295 = 0x7645FABAL;
    int32_t l_296 = 0x38AEEBAFL;
    int32_t l_298 = 0x04DD7D93L;
    int32_t l_299 = 0x53F3E70DL;
    int32_t l_300 = 1L;
    VECTOR(int32_t, 2) l_304 = (VECTOR(int32_t, 2))(1L, 0x7242D732L);
    int i;
    for (p_71 = 0; (p_71 == 59); p_71 = safe_add_func_uint64_t_u_u(p_71, 3))
    { /* block id: 119 */
        int32_t *l_291 = (void*)0;
        int32_t **l_290 = &l_291;
        int32_t *l_292[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        (*l_290) = (void*)0;
        --p_771->g_301;
        p_771->g_7 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_304.xyyxxxxxyyyyyyxy)).hi)).s1270062125702760)).s2;
    }
    return &p_771->g_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_771->g_7 p_771->g_267 p_771->g_248 p_771->g_270 p_771->g_273 p_771->g_44 p_771->g_84 p_771->g_31 p_771->g_285
 * writes: p_771->g_7 p_771->g_248 p_771->g_44 p_771->g_285
 */
int32_t * func_72(uint16_t  p_73, int32_t * p_74, int32_t * p_75, struct S0 * p_771)
{ /* block id: 92 */
    int32_t *l_269 = &p_771->g_248;
    VECTOR(int8_t, 8) l_271 = (VECTOR(int8_t, 8))(0x2BL, (VECTOR(int8_t, 4))(0x2BL, (VECTOR(int8_t, 2))(0x2BL, 0x2AL), 0x2AL), 0x2AL, 0x2BL, 0x2AL);
    VECTOR(int8_t, 4) l_272 = (VECTOR(int8_t, 4))(0x3CL, (VECTOR(int8_t, 2))(0x3CL, 0L), 0L);
    uint64_t *l_275[4][1][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint64_t **l_274 = &l_275[3][0][1];
    uint8_t *l_278 = (void*)0;
    uint8_t *l_279 = (void*)0;
    uint8_t *l_280 = (void*)0;
    uint8_t *l_281 = (void*)0;
    uint8_t *l_282 = (void*)0;
    uint8_t *l_283 = (void*)0;
    int32_t l_284 = (-1L);
    uint16_t * volatile **l_287 = &p_771->g_285;
    int i, j, k;
    for (p_771->g_7 = 0; (p_771->g_7 >= (-22)); p_771->g_7 = safe_sub_func_int64_t_s_s(p_771->g_7, 1))
    { /* block id: 95 */
        int32_t *l_247 = &p_771->g_248;
        (*l_247) = 0x3D58738FL;
    }
    if ((atomic_inc(&p_771->l_atomic_input[4]) == 8))
    { /* block id: 99 */
        uint8_t l_249 = 0x17L;
        int16_t l_250 = 0x0758L;
        uint8_t l_251 = 255UL;
        VECTOR(uint64_t, 16) l_252 = (VECTOR(uint64_t, 16))(0xC06D11D72D77ED77L, (VECTOR(uint64_t, 4))(0xC06D11D72D77ED77L, (VECTOR(uint64_t, 2))(0xC06D11D72D77ED77L, 0x875FBCA4FFCF75B3L), 0x875FBCA4FFCF75B3L), 0x875FBCA4FFCF75B3L, 0xC06D11D72D77ED77L, 0x875FBCA4FFCF75B3L, (VECTOR(uint64_t, 2))(0xC06D11D72D77ED77L, 0x875FBCA4FFCF75B3L), (VECTOR(uint64_t, 2))(0xC06D11D72D77ED77L, 0x875FBCA4FFCF75B3L), 0xC06D11D72D77ED77L, 0x875FBCA4FFCF75B3L, 0xC06D11D72D77ED77L, 0x875FBCA4FFCF75B3L);
        int64_t l_253 = 0x254CAF07905F4BA0L;
        uint64_t *l_255 = (void*)0;
        uint64_t **l_254 = &l_255;
        uint64_t **l_256 = (void*)0;
        uint64_t **l_257 = (void*)0;
        uint16_t l_258 = 0x1A93L;
        int64_t l_259[4][10][6] = {{{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL}},{{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL}},{{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL}},{{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL},{(-6L),0L,0x70DB5E4E5DB3D0EAL,0L,(-1L),0x7B897F4EC64AD36BL}}};
        int16_t l_260 = 0x5080L;
        int i, j, k;
        l_251 &= (l_250 |= l_249);
        l_257 = ((l_253 = l_252.s7) , (l_256 = l_254));
        l_260 = (l_259[2][4][5] = l_258);
        unsigned int result = 0;
        result += l_249;
        result += l_250;
        result += l_251;
        result += l_252.sf;
        result += l_252.se;
        result += l_252.sd;
        result += l_252.sc;
        result += l_252.sb;
        result += l_252.sa;
        result += l_252.s9;
        result += l_252.s8;
        result += l_252.s7;
        result += l_252.s6;
        result += l_252.s5;
        result += l_252.s4;
        result += l_252.s3;
        result += l_252.s2;
        result += l_252.s1;
        result += l_252.s0;
        result += l_253;
        result += l_258;
        int l_259_i0, l_259_i1, l_259_i2;
        for (l_259_i0 = 0; l_259_i0 < 4; l_259_i0++) {
            for (l_259_i1 = 0; l_259_i1 < 10; l_259_i1++) {
                for (l_259_i2 = 0; l_259_i2 < 6; l_259_i2++) {
                    result += l_259[l_259_i0][l_259_i1][l_259_i2];
                }
            }
        }
        result += l_260;
        atomic_add(&p_771->l_special_values[4], result);
    }
    else
    { /* block id: 107 */
        (1 + 1);
    }
    (*p_74) = (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))((-6L), 1L, (safe_sub_func_int32_t_s_s((*p_74), ((l_284 ^= ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(0x55L, 0x09L, (safe_div_func_uint32_t_u_u(p_73, ((*l_269) |= (p_771->g_267[1] != (void*)0)))), ((VECTOR(uint8_t, 8))(abs(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_771->g_270.s8d)).yyyxxyxyxxxxyxyx)).even, ((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 16))(l_271.s7201723436277717)), ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 4))(l_272.zxzy)).ywzzyyxy, ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x63L, 0L)), (-9L), 0x15L)).xwxxyyxxzywxzywz, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_771->g_273.s36)).yyyyxxxxyyyxxxxy)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((((0UL && (((&p_771->g_267[0] == l_274) | (p_771->g_44.s5--)) & (((*l_274) != p_771->g_267[1]) | p_771->g_84))) & GROUP_DIVERGE(1, 1)) | p_73) & 3UL), (*l_269), (*l_269), 0x47L, 1L, (-1L), 0x52L, p_771->g_31.s3, ((VECTOR(int8_t, 2))(0x24L)), (-6L), ((VECTOR(int8_t, 4))(0x1FL)), 9L)).s9582)).wzzxyxwxwyxxxxyy))).lo)))))).s4674045571754011))).odd, ((VECTOR(int8_t, 8))(0x18L))))).s53)).xxyxxxxx))), ((VECTOR(uint8_t, 4))(0x87L)), 255UL)))).s82, (uint8_t)(*l_269)))).xyxx)).x) <= 0x7AL))), ((VECTOR(int64_t, 4))(7L)), 0x1D358C5A75C87384L)), ((VECTOR(int64_t, 8))((-1L)))))).s2, p_73));
    (*l_287) = p_771->g_285;
    return &p_771->g_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_771->g_43 p_771->g_44 p_771->g_3 p_771->g_42
 * writes: p_771->g_44 p_771->g_7
 */
int32_t * func_76(int32_t  p_77, int8_t  p_78, struct S0 * p_771)
{ /* block id: 18 */
    int16_t l_101 = 0x3E79L;
    uint64_t *l_108 = (void*)0;
    uint64_t *l_109[8][9][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    int32_t *l_113 = &p_771->g_7;
    int32_t **l_112 = &l_113;
    int32_t *l_114 = &p_771->g_3;
    uint8_t l_115 = 250UL;
    int32_t *l_116[3][9];
    uint64_t **l_244 = &l_108;
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
            l_116[i][j] = &p_771->g_7;
    }
    p_771->g_7 = (p_77 || ((FAKE_DIVERGE(p_771->global_2_offset, get_global_id(2), 10) , (+(safe_lshift_func_uint8_t_u_s(p_77, p_771->g_43.s8)))) ^ (safe_sub_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_s(((safe_add_func_int32_t_s_s(((-1L) <= l_101), (((safe_sub_func_uint64_t_u_u((safe_lshift_func_int8_t_s_u((l_101 ^ ((((safe_sub_func_uint64_t_u_u((++p_771->g_44.se), (((*l_112) = (void*)0) != l_114))) <= 0L) , l_115) <= 3L)), (*l_114))), 0x88898D0BA58DE8A0L)) | 0x5AL) && (*l_114)))) , p_771->g_42.y), 8)) <= (*l_114)), p_77))));
    if ((atomic_inc(&p_771->g_atomic_input[5 * get_linear_group_id() + 0]) == 1))
    { /* block id: 23 */
        int16_t l_117 = 0x4CC0L;
        if (l_117)
        { /* block id: 24 */
            uint32_t l_118 = 0x05FBE3FEL;
            uint16_t l_121 = 0x6BB1L;
            uint8_t l_122 = 0x55L;
            uint32_t l_123 = 0xCC3E7F26L;
            uint8_t l_124 = 0xDFL;
            VECTOR(int64_t, 8) l_125 = (VECTOR(int64_t, 8))((-4L), (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x592EE31D69C6CBE7L), 0x592EE31D69C6CBE7L), 0x592EE31D69C6CBE7L, (-4L), 0x592EE31D69C6CBE7L);
            int i;
            l_118--;
            l_123 |= (l_122 = l_121);
            l_125.s0 &= l_124;
        }
        else
        { /* block id: 29 */
            uint16_t l_126 = 0UL;
            l_126--;
            for (l_126 = 0; (l_126 == 58); l_126 = safe_add_func_uint8_t_u_u(l_126, 6))
            { /* block id: 33 */
                VECTOR(int32_t, 2) l_131 = (VECTOR(int32_t, 2))(0L, 1L);
                int32_t l_132 = 0x72D12529L;
                VECTOR(int8_t, 2) l_184 = (VECTOR(int8_t, 2))(0x1FL, (-4L));
                uint16_t l_185 = 1UL;
                VECTOR(uint64_t, 8) l_186 = (VECTOR(uint64_t, 8))(0xBB8F7548C9A67DAFL, (VECTOR(uint64_t, 4))(0xBB8F7548C9A67DAFL, (VECTOR(uint64_t, 2))(0xBB8F7548C9A67DAFL, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 0xBB8F7548C9A67DAFL, 18446744073709551608UL);
                VECTOR(int16_t, 16) l_187 = (VECTOR(int16_t, 16))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x68D3L), 0x68D3L), 0x68D3L, (-5L), 0x68D3L, (VECTOR(int16_t, 2))((-5L), 0x68D3L), (VECTOR(int16_t, 2))((-5L), 0x68D3L), (-5L), 0x68D3L, (-5L), 0x68D3L);
                int16_t l_188 = (-3L);
                uint32_t l_189[10][5] = {{0UL,0UL,4294967291UL,0UL,0UL},{0UL,0UL,4294967291UL,0UL,0UL},{0UL,0UL,4294967291UL,0UL,0UL},{0UL,0UL,4294967291UL,0UL,0UL},{0UL,0UL,4294967291UL,0UL,0UL},{0UL,0UL,4294967291UL,0UL,0UL},{0UL,0UL,4294967291UL,0UL,0UL},{0UL,0UL,4294967291UL,0UL,0UL},{0UL,0UL,4294967291UL,0UL,0UL},{0UL,0UL,4294967291UL,0UL,0UL}};
                VECTOR(int8_t, 8) l_190 = (VECTOR(int8_t, 8))(0x06L, (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, 0x74L), 0x74L), 0x74L, 0x06L, 0x74L);
                VECTOR(int8_t, 2) l_191 = (VECTOR(int8_t, 2))(0x38L, 1L);
                VECTOR(int8_t, 4) l_192 = (VECTOR(int8_t, 4))(0x73L, (VECTOR(int8_t, 2))(0x73L, 0x72L), 0x72L);
                VECTOR(int8_t, 2) l_193 = (VECTOR(int8_t, 2))(0x74L, 1L);
                int16_t l_194 = (-3L);
                VECTOR(int8_t, 16) l_195 = (VECTOR(int8_t, 16))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x53L), 0x53L), 0x53L, (-6L), 0x53L, (VECTOR(int8_t, 2))((-6L), 0x53L), (VECTOR(int8_t, 2))((-6L), 0x53L), (-6L), 0x53L, (-6L), 0x53L);
                uint64_t l_196 = 0xD80147382343345AL;
                VECTOR(int8_t, 16) l_197 = (VECTOR(int8_t, 16))(0x1BL, (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, 0x5BL), 0x5BL), 0x5BL, 0x1BL, 0x5BL, (VECTOR(int8_t, 2))(0x1BL, 0x5BL), (VECTOR(int8_t, 2))(0x1BL, 0x5BL), 0x1BL, 0x5BL, 0x1BL, 0x5BL);
                int8_t l_198[4][8] = {{(-1L),0x5DL,(-1L),0x5DL,(-1L),(-1L),0x5DL,(-1L)},{(-1L),0x5DL,(-1L),0x5DL,(-1L),(-1L),0x5DL,(-1L)},{(-1L),0x5DL,(-1L),0x5DL,(-1L),(-1L),0x5DL,(-1L)},{(-1L),0x5DL,(-1L),0x5DL,(-1L),(-1L),0x5DL,(-1L)}};
                VECTOR(int8_t, 8) l_199 = (VECTOR(int8_t, 8))(0x1BL, (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, 0L), 0L), 0L, 0x1BL, 0L);
                uint64_t l_200 = 3UL;
                VECTOR(int8_t, 8) l_201 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), (-1L)), (-1L)), (-1L), (-2L), (-1L));
                int32_t l_202 = 0L;
                uint64_t l_203 = 1UL;
                VECTOR(int8_t, 8) l_204 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
                uint32_t l_205 = 0x62747BD2L;
                int8_t l_206 = 0x3CL;
                VECTOR(uint64_t, 4) l_207 = (VECTOR(uint64_t, 4))(0x69C53B7783CCC9B7L, (VECTOR(uint64_t, 2))(0x69C53B7783CCC9B7L, 18446744073709551611UL), 18446744073709551611UL);
                int8_t l_208 = 0x2AL;
                int64_t l_209 = 1L;
                int i, j;
                l_132 = ((VECTOR(int32_t, 8))(l_131.xyyxxyyy)).s2;
                for (l_131.x = 7; (l_131.x >= (-15)); l_131.x--)
                { /* block id: 37 */
                    VECTOR(int32_t, 16) l_135 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x6B0DCD2CL), 0x6B0DCD2CL), 0x6B0DCD2CL, 1L, 0x6B0DCD2CL, (VECTOR(int32_t, 2))(1L, 0x6B0DCD2CL), (VECTOR(int32_t, 2))(1L, 0x6B0DCD2CL), 1L, 0x6B0DCD2CL, 1L, 0x6B0DCD2CL);
                    VECTOR(int32_t, 2) l_136 = (VECTOR(int32_t, 2))(0x33707CADL, 0x7AE0A69AL);
                    VECTOR(uint32_t, 16) l_137 = (VECTOR(uint32_t, 16))(4294967294UL, (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 5UL), 5UL), 5UL, 4294967294UL, 5UL, (VECTOR(uint32_t, 2))(4294967294UL, 5UL), (VECTOR(uint32_t, 2))(4294967294UL, 5UL), 4294967294UL, 5UL, 4294967294UL, 5UL);
                    int32_t l_138 = 0L;
                    uint32_t l_139 = 0x027B00CAL;
                    int32_t l_140[3];
                    uint8_t l_141[9][2] = {{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL}};
                    uint32_t l_144 = 0UL;
                    int8_t l_145 = (-4L);
                    VECTOR(int32_t, 4) l_146 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L);
                    VECTOR(int32_t, 2) l_147 = (VECTOR(int32_t, 2))((-3L), (-10L));
                    VECTOR(int32_t, 2) l_148 = (VECTOR(int32_t, 2))(0x31E83F6AL, (-2L));
                    int16_t l_149 = 0x2579L;
                    VECTOR(int32_t, 16) l_150 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int32_t, 2))(0L, (-1L)), (VECTOR(int32_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
                    VECTOR(int32_t, 2) l_151 = (VECTOR(int32_t, 2))(0x2CED721EL, 0x32C819DAL);
                    uint32_t l_152 = 0x1C83726DL;
                    uint64_t l_153 = 0xD6A1B3C1EEC739D5L;
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_140[i] = 0x7E52D05FL;
                    if (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_135.sf262fdf43112e05e)).s15, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 4))(l_136.yyyy)), (FAKE_DIVERGE(p_771->local_1_offset, get_local_id(1), 10) , (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_137.se1c8d462)).s3137507154375523)).hi)).s7 , (l_149 = (l_132 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(0x57C5A96FL, 0x0CCC043BL, 0x3440FC8FL, l_138, l_139, ((VECTOR(int32_t, 4))(0x733844FDL, (((--l_141[1][0]) , ((VECTOR(int8_t, 2))(0x2EL, 0x07L)).lo) , l_144), 1L, 0x4D477D69L)), 0x32ED70B5L, (l_145 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0L, 0x68BBE49AL, 0x6B1AB085L, 0L)).wxxzwwxy)).s0), 0x393441F1L, (-5L), ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_146.zw)).yyyy)))).even, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 16))(l_147.xxyxxxxyyxyyyxyy)).se8, ((VECTOR(int32_t, 8))(l_148.yyyxxyyy)).s24))).xyxxyxyyyyyxyxxy)).s38ff)).even))), 0x619209CFL)))).s4)))), (-1L), 0x53170368L)), ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))((-7L), 1L)).xyyxyxyy, ((VECTOR(int32_t, 16))(l_150.se5bd8f16d91da8f8)).odd, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(0x3F783815L, 0x086FBCFDL, (-1L), 0x36011ED2L)).wyzzyxxw, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_151.xxyyxxyx)).s6, l_152, 0x57A2E974L, 0L)).wxyzxwwx))).hi)).wwzzwzww))))))))).s3065)).yzxxxxzy))).s56, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(0x60181DA6L, (-1L))).xxyyxxxy, (int32_t)(l_132 = l_153)))))).s16))).xxxy)), ((VECTOR(int32_t, 2))(4L, 1L)).xyxx))).ywxxwzwwxxxwyywz)).sf)
                    { /* block id: 42 */
                        int16_t l_154 = (-1L);
                        int8_t l_155 = (-4L);
                        int32_t l_157 = 6L;
                        int32_t *l_156 = &l_157;
                        int32_t *l_158 = (void*)0;
                        VECTOR(int32_t, 8) l_159 = (VECTOR(int32_t, 8))(0x2FECD871L, (VECTOR(int32_t, 4))(0x2FECD871L, (VECTOR(int32_t, 2))(0x2FECD871L, (-1L)), (-1L)), (-1L), 0x2FECD871L, (-1L));
                        int32_t *l_160 = (void*)0;
                        int32_t *l_161 = &l_157;
                        int i;
                        l_155 = l_154;
                        l_158 = l_156;
                        l_136.x ^= (l_147.x ^= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_159.s7450563243635002)).se5)))))).xxxx)))).z);
                        l_161 = l_160;
                    }
                    else
                    { /* block id: 48 */
                        int32_t l_163 = 0L;
                        int32_t *l_162 = &l_163;
                        int32_t *l_164 = &l_163;
                        int32_t *l_165 = (void*)0;
                        int32_t *l_166 = (void*)0;
                        VECTOR(int32_t, 8) l_167 = (VECTOR(int32_t, 8))(0x5A51562CL, (VECTOR(int32_t, 4))(0x5A51562CL, (VECTOR(int32_t, 2))(0x5A51562CL, (-1L)), (-1L)), (-1L), 0x5A51562CL, (-1L));
                        int16_t l_168 = (-1L);
                        VECTOR(int32_t, 8) l_169 = (VECTOR(int32_t, 8))(0x09E64E21L, (VECTOR(int32_t, 4))(0x09E64E21L, (VECTOR(int32_t, 2))(0x09E64E21L, 0x50B3B619L), 0x50B3B619L), 0x50B3B619L, 0x09E64E21L, 0x50B3B619L);
                        uint16_t l_170 = 65531UL;
                        VECTOR(int32_t, 8) l_171 = (VECTOR(int32_t, 8))(0x29CAEAABL, (VECTOR(int32_t, 4))(0x29CAEAABL, (VECTOR(int32_t, 2))(0x29CAEAABL, 0x458F5FF7L), 0x458F5FF7L), 0x458F5FF7L, 0x29CAEAABL, 0x458F5FF7L);
                        VECTOR(int32_t, 16) l_172 = (VECTOR(int32_t, 16))(0x4B1641BDL, (VECTOR(int32_t, 4))(0x4B1641BDL, (VECTOR(int32_t, 2))(0x4B1641BDL, 0x4B1EAC38L), 0x4B1EAC38L), 0x4B1EAC38L, 0x4B1641BDL, 0x4B1EAC38L, (VECTOR(int32_t, 2))(0x4B1641BDL, 0x4B1EAC38L), (VECTOR(int32_t, 2))(0x4B1641BDL, 0x4B1EAC38L), 0x4B1641BDL, 0x4B1EAC38L, 0x4B1641BDL, 0x4B1EAC38L);
                        int64_t l_173[1][4][7] = {{{0L,1L,0L,0L,1L,0L,0L},{0L,1L,0L,0L,1L,0L,0L},{0L,1L,0L,0L,1L,0L,0L},{0L,1L,0L,0L,1L,0L,0L}}};
                        VECTOR(int32_t, 4) l_174 = (VECTOR(int32_t, 4))(0x1A71A369L, (VECTOR(int32_t, 2))(0x1A71A369L, 0L), 0L);
                        VECTOR(int32_t, 2) l_175 = (VECTOR(int32_t, 2))(0L, 3L);
                        VECTOR(int32_t, 2) l_176 = (VECTOR(int32_t, 2))(0x63F86758L, (-3L));
                        int64_t l_177 = 0x67475412C39B06FBL;
                        uint32_t l_178 = 0x51DF1B90L;
                        uint8_t l_179 = 0x0CL;
                        uint8_t l_180 = 0UL;
                        int32_t l_181 = 7L;
                        int32_t *l_182 = &l_163;
                        int32_t *l_183 = (void*)0;
                        int i, j, k;
                        l_164 = l_162;
                        l_166 = l_165;
                        (*l_162) = ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_167.s57)))).xyxxxxyxxxxxyyyx, (int32_t)l_168, (int32_t)0x34A69FF9L))), ((VECTOR(int32_t, 2))(l_169.s17)).xyxxxxxyxxxyyyyy, ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(3L, ((l_145 = 1L) , l_170), ((VECTOR(int32_t, 2))(0x2D3B0C1BL, 0x06E0DFFAL)).even, ((VECTOR(int32_t, 8))(l_171.s20152072)).s5, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_172.sed05f352)).hi)).w, 0x5FA42261L, 0L, 0L, 0x43894A63L, (-1L), l_173[0][3][2], ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 2))(l_174.yw)).yyxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_175.xxyyyyxyyxxxxxxx)).odd)).hi))), 2L, ((VECTOR(int32_t, 2))(l_176.yx)), (-1L), ((l_177 , (l_179 = l_178)) , (l_180 , l_181)), 0L, ((VECTOR(int32_t, 2))(0x39B6CC73L)), ((VECTOR(int32_t, 2))(0x13612929L)), 0x5023A199L, 5L)).sd, 0L, ((VECTOR(int32_t, 2))(0x111529E7L)), 0x2A7BFF7CL)), ((VECTOR(int32_t, 16))(0x21393EBFL)))))))).s62b6, ((VECTOR(int32_t, 4))(0x680A1827L))))).yywyzyyw, ((VECTOR(int32_t, 8))(0x418B8741L))))).s5;
                        l_183 = l_182;
                    }
                }
                if ((((VECTOR(uint8_t, 16))(abs(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_184.yyxy)).lo)), 0x3BL, (l_185 = 0x78L), ((VECTOR(int8_t, 2))(0x2EL, 0x3CL)), ((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((l_188 = (((VECTOR(uint64_t, 2))(l_186.s51)).odd , ((VECTOR(int16_t, 8))(l_187.s6dcfdda6)).s0)) , l_189[8][2]), 0x7CL, ((VECTOR(int8_t, 4))(l_190.s0657)), 7L, ((VECTOR(int8_t, 8))(l_191.yxyxyyyy)), 0x3AL)).s13ba)), ((VECTOR(int8_t, 2))(1L, 0x2AL)), 0x08L, (-1L))).s1707640136421630, ((VECTOR(int8_t, 8))(l_192.xzyyzzwx)).s7171726577354161))).scb)), ((VECTOR(int8_t, 16))(l_193.yyxxxxyxxxxxyyyy)).sa2))), (int8_t)l_194, (int8_t)((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 2))(0L, 0x5FL)), (int8_t)((VECTOR(int8_t, 4))(l_195.s1a1b)).x, (int8_t)(l_196 = 0x67L)))).xxxxyyxy, ((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 2))(l_197.sd8)).yyyyyyxx, (int8_t)((l_117 = l_198[2][6]) , ((VECTOR(int8_t, 8))(l_199.s02167273)).s6))))))).s1)))))), l_200, ((VECTOR(int8_t, 2))(l_201.s12)), (l_203 &= l_202), ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(l_204.s1670)).hi, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0L, 1L)).yyyxxyxy)).s52)).xyxxxyxx, ((VECTOR(int8_t, 4))((-8L), (((l_208 = ((((FAKE_DIVERGE(p_771->local_1_offset, get_local_id(1), 10) , (l_205 , (l_206 , 0x14L))) , 0x1E79L) , 0x20F7FBA5C353FD0BL) , l_207.w)) , l_209) , (-1L)), 1L, 0x4DL)).zzwzwxzw))).odd, ((VECTOR(int8_t, 4))(7L))))), ((VECTOR(int8_t, 8))(0x3CL)), ((VECTOR(int8_t, 4))(3L)))).s9d))), 0x7FL, 0x7CL)))).s7132)).yyxwyxzwwxzwywyx))).s0 , (-5L)))
                { /* block id: 63 */
                    int32_t l_210[5][9] = {{0x600E6A57L,0x71069EAFL,0x71069EAFL,0x600E6A57L,(-7L),0x3D952B09L,0x3D952B09L,(-7L),0x600E6A57L},{0x600E6A57L,0x71069EAFL,0x71069EAFL,0x600E6A57L,(-7L),0x3D952B09L,0x3D952B09L,(-7L),0x600E6A57L},{0x600E6A57L,0x71069EAFL,0x71069EAFL,0x600E6A57L,(-7L),0x3D952B09L,0x3D952B09L,(-7L),0x600E6A57L},{0x600E6A57L,0x71069EAFL,0x71069EAFL,0x600E6A57L,(-7L),0x3D952B09L,0x3D952B09L,(-7L),0x600E6A57L},{0x600E6A57L,0x71069EAFL,0x71069EAFL,0x600E6A57L,(-7L),0x3D952B09L,0x3D952B09L,(-7L),0x600E6A57L}};
                    VECTOR(int16_t, 16) l_211 = (VECTOR(int16_t, 16))(0x79E5L, (VECTOR(int16_t, 4))(0x79E5L, (VECTOR(int16_t, 2))(0x79E5L, 0x5B62L), 0x5B62L), 0x5B62L, 0x79E5L, 0x5B62L, (VECTOR(int16_t, 2))(0x79E5L, 0x5B62L), (VECTOR(int16_t, 2))(0x79E5L, 0x5B62L), 0x79E5L, 0x5B62L, 0x79E5L, 0x5B62L);
                    uint16_t l_212 = 0x71F8L;
                    int64_t l_213 = 1L;
                    int64_t l_214 = 0x7FCE753BC47F2C3CL;
                    uint16_t l_215 = 0x980FL;
                    int64_t l_216 = (-6L);
                    uint32_t l_217 = 4294967294UL;
                    VECTOR(int32_t, 16) l_218 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x4BACDE27L), 0x4BACDE27L), 0x4BACDE27L, (-4L), 0x4BACDE27L, (VECTOR(int32_t, 2))((-4L), 0x4BACDE27L), (VECTOR(int32_t, 2))((-4L), 0x4BACDE27L), (-4L), 0x4BACDE27L, (-4L), 0x4BACDE27L);
                    VECTOR(int32_t, 8) l_219 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 7L), 7L), 7L, 6L, 7L);
                    VECTOR(int32_t, 16) l_220 = (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0L), 0L), 0L, 5L, 0L, (VECTOR(int32_t, 2))(5L, 0L), (VECTOR(int32_t, 2))(5L, 0L), 5L, 0L, 5L, 0L);
                    VECTOR(int32_t, 8) l_221 = (VECTOR(int32_t, 8))(0x05E14E59L, (VECTOR(int32_t, 4))(0x05E14E59L, (VECTOR(int32_t, 2))(0x05E14E59L, (-8L)), (-8L)), (-8L), 0x05E14E59L, (-8L));
                    VECTOR(int32_t, 4) l_222 = (VECTOR(int32_t, 4))(0x0B644DA4L, (VECTOR(int32_t, 2))(0x0B644DA4L, 0L), 0L);
                    uint16_t l_223[8][8];
                    VECTOR(int16_t, 16) l_224 = (VECTOR(int16_t, 16))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0x2062L), 0x2062L), 0x2062L, 5L, 0x2062L, (VECTOR(int16_t, 2))(5L, 0x2062L), (VECTOR(int16_t, 2))(5L, 0x2062L), 5L, 0x2062L, 5L, 0x2062L);
                    VECTOR(int16_t, 16) l_225 = (VECTOR(int16_t, 16))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 1L), 1L), 1L, 6L, 1L, (VECTOR(int16_t, 2))(6L, 1L), (VECTOR(int16_t, 2))(6L, 1L), 6L, 1L, 6L, 1L);
                    int16_t l_226 = 0x27A8L;
                    VECTOR(int16_t, 2) l_227 = (VECTOR(int16_t, 2))(0x789DL, 6L);
                    VECTOR(int16_t, 8) l_228 = (VECTOR(int16_t, 8))(0x0B08L, (VECTOR(int16_t, 4))(0x0B08L, (VECTOR(int16_t, 2))(0x0B08L, 1L), 1L), 1L, 0x0B08L, 1L);
                    uint32_t l_229 = 6UL;
                    int8_t l_230 = 0x78L;
                    uint64_t l_231[5] = {0UL,0UL,0UL,0UL,0UL};
                    int16_t l_232 = 3L;
                    int i, j;
                    for (i = 0; i < 8; i++)
                    {
                        for (j = 0; j < 8; j++)
                            l_223[i][j] = 0xDCE2L;
                    }
                    l_202 &= 0x335DBA26L;
                    l_131.y |= l_210[4][8];
                    l_232 |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 2))(0x0C8BL, 1L)).xxxx, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_211.scf23)).even)).xxyy))).wyyxzzxw, (int16_t)(l_230 = (l_188 = (l_212 , ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))((l_213 , (l_117 = (l_214 , (l_215 = (-1L))))), ((VECTOR(int16_t, 8))(0x47DDL, (l_211.s5 &= (l_117 = ((l_216 , l_217) , (l_226 = (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(l_218.sd56c)), ((VECTOR(int32_t, 2))(l_219.s44)).yxyx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_220.se59e138d61c2e076)))), ((VECTOR(int32_t, 8))(l_221.s75647606)).s0707673605740162, ((VECTOR(int32_t, 2))(l_222.xz)).xxyxxxyxyxyxyyxy))).sfe)))).yxyx))).yxyyxzyy)).s1 , (l_187.s6 = ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 16))(1L, 5L, ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 2))((-1L), 0L)).xxyy))), (l_194 = l_223[5][7]), 9L, ((VECTOR(int16_t, 8))(l_224.s31fcb920)))).s70, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_225.s17697576)).odd)))).lo))).hi)))))), 1L, ((VECTOR(int16_t, 4))(l_227.xxxy)), 0x43F0L)).s0, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_228.s3123)).even)), (-1L), l_229, 9L, 3L, 0x63BDL, (-1L))).odd)).wwxzzxwx)), ((VECTOR(int16_t, 4))(0x7184L)), 0x6C99L, 0x5A76L)).s4a5f)).z))), (int16_t)l_231[4]))).s53, ((VECTOR(uint16_t, 2))(0x3CE8L))))))).yxyy)).zyxxzyzywyxzywxz)).sa;
                }
                else
                { /* block id: 76 */
                    uint16_t l_233 = 0xA62DL;
                    VECTOR(uint32_t, 2) l_234 = (VECTOR(uint32_t, 2))(0x34622424L, 4294967295UL);
                    int16_t l_235 = 0x43E5L;
                    int32_t l_236 = 0L;
                    uint64_t l_237 = 6UL;
                    uint16_t l_238 = 2UL;
                    uint32_t l_239 = 0UL;
                    int8_t l_240 = (-7L);
                    uint32_t l_241 = 4294967295UL;
                    int i;
                    l_132 ^= l_233;
                    l_202 |= (((VECTOR(uint32_t, 16))(6UL, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_234.yx)).yxxyxxxx)), (l_237 ^= (l_236 = l_235)), 1UL, l_238, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0x01D3A4CBL, 0x50B5D90FL)), 2UL, 0x3055DAE0L)))).s4 , (l_132 = (l_131.y = l_239)));
                    l_241--;
                }
            }
        }
        unsigned int result = 0;
        result += l_117;
        atomic_add(&p_771->g_special_values[5 * get_linear_group_id() + 0], result);
    }
    else
    { /* block id: 87 */
        (1 + 1);
    }
    l_244 = &l_108;
    return &p_771->g_7;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[5];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 5; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[5];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 5; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[95];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 95; i++)
            l_comm_values[i] = 1;
    struct S0 c_772;
    struct S0* p_771 = &c_772;
    struct S0 c_773 = {
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L)), // p_771->g_2
        0x2DE2167FL, // p_771->g_3
        0x24C00011L, // p_771->g_7
        (VECTOR(int16_t, 16))(0x208BL, (VECTOR(int16_t, 4))(0x208BL, (VECTOR(int16_t, 2))(0x208BL, (-10L)), (-10L)), (-10L), 0x208BL, (-10L), (VECTOR(int16_t, 2))(0x208BL, (-10L)), (VECTOR(int16_t, 2))(0x208BL, (-10L)), 0x208BL, (-10L), 0x208BL, (-10L)), // p_771->g_28
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xBFL), 0xBFL), 0xBFL, 1UL, 0xBFL), // p_771->g_31
        (VECTOR(int64_t, 2))(1L, 1L), // p_771->g_42
        (VECTOR(int64_t, 16))(0x111ACA8B1460DEEAL, (VECTOR(int64_t, 4))(0x111ACA8B1460DEEAL, (VECTOR(int64_t, 2))(0x111ACA8B1460DEEAL, 0x3A5493A50EB6BA8AL), 0x3A5493A50EB6BA8AL), 0x3A5493A50EB6BA8AL, 0x111ACA8B1460DEEAL, 0x3A5493A50EB6BA8AL, (VECTOR(int64_t, 2))(0x111ACA8B1460DEEAL, 0x3A5493A50EB6BA8AL), (VECTOR(int64_t, 2))(0x111ACA8B1460DEEAL, 0x3A5493A50EB6BA8AL), 0x111ACA8B1460DEEAL, 0x3A5493A50EB6BA8AL, 0x111ACA8B1460DEEAL, 0x3A5493A50EB6BA8AL), // p_771->g_43
        (VECTOR(uint64_t, 16))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 2UL), 2UL), 2UL, 18446744073709551613UL, 2UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 2UL), (VECTOR(uint64_t, 2))(18446744073709551613UL, 2UL), 18446744073709551613UL, 2UL, 18446744073709551613UL, 2UL), // p_771->g_44
        0xEAC2L, // p_771->g_84
        (VECTOR(uint8_t, 8))(0x43L, (VECTOR(uint8_t, 4))(0x43L, (VECTOR(uint8_t, 2))(0x43L, 0xFCL), 0xFCL), 0xFCL, 0x43L, 0xFCL), // p_771->g_85
        {{{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL}},{{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL},{0UL,65532UL,1UL,1UL}}}, // p_771->g_92
        6L, // p_771->g_248
        5UL, // p_771->g_268
        {&p_771->g_268,&p_771->g_268}, // p_771->g_267
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x64L), 0x64L), 0x64L, 1L, 0x64L, (VECTOR(int8_t, 2))(1L, 0x64L), (VECTOR(int8_t, 2))(1L, 0x64L), 1L, 0x64L, 1L, 0x64L), // p_771->g_270
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x59L), 0x59L), 0x59L, (-1L), 0x59L), // p_771->g_273
        &p_771->g_84, // p_771->g_286
        &p_771->g_286, // p_771->g_285
        7L, // p_771->g_293
        0x3E87386A1B6D9E03L, // p_771->g_294
        0L, // p_771->g_297
        18446744073709551611UL, // p_771->g_301
        &p_771->g_3, // p_771->g_316
        &p_771->g_316, // p_771->g_315
        {{{0x12B6D85FC0F2815AL},{0x12B6D85FC0F2815AL},{0x12B6D85FC0F2815AL},{0x12B6D85FC0F2815AL},{0x12B6D85FC0F2815AL},{0x12B6D85FC0F2815AL},{0x12B6D85FC0F2815AL},{0x12B6D85FC0F2815AL},{0x12B6D85FC0F2815AL},{0x12B6D85FC0F2815AL}}}, // p_771->g_347
        9UL, // p_771->g_354
        4294967287UL, // p_771->g_409
        (VECTOR(uint32_t, 8))(0x24A1D15EL, (VECTOR(uint32_t, 4))(0x24A1D15EL, (VECTOR(uint32_t, 2))(0x24A1D15EL, 1UL), 1UL), 1UL, 0x24A1D15EL, 1UL), // p_771->g_566
        0xCCL, // p_771->g_572
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), // p_771->g_597
        (VECTOR(uint16_t, 2))(0xFB90L, 0x55DFL), // p_771->g_610
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL), // p_771->g_611
        (VECTOR(uint16_t, 4))(0xF968L, (VECTOR(uint16_t, 2))(0xF968L, 0xD4C6L), 0xD4C6L), // p_771->g_612
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xE682L), 0xE682L), // p_771->g_613
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xFC2BA305L), 0xFC2BA305L), 0xFC2BA305L, 4294967295UL, 0xFC2BA305L), // p_771->g_624
        0x12D75D8DL, // p_771->g_636
        0x9341A7B2L, // p_771->g_639
        (VECTOR(int16_t, 16))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, (-9L)), (-9L)), (-9L), 5L, (-9L), (VECTOR(int16_t, 2))(5L, (-9L)), (VECTOR(int16_t, 2))(5L, (-9L)), 5L, (-9L), 5L, (-9L)), // p_771->g_650
        (VECTOR(int64_t, 16))(0x663399E42E27485BL, (VECTOR(int64_t, 4))(0x663399E42E27485BL, (VECTOR(int64_t, 2))(0x663399E42E27485BL, 0x144C7B3202F81534L), 0x144C7B3202F81534L), 0x144C7B3202F81534L, 0x663399E42E27485BL, 0x144C7B3202F81534L, (VECTOR(int64_t, 2))(0x663399E42E27485BL, 0x144C7B3202F81534L), (VECTOR(int64_t, 2))(0x663399E42E27485BL, 0x144C7B3202F81534L), 0x663399E42E27485BL, 0x144C7B3202F81534L, 0x663399E42E27485BL, 0x144C7B3202F81534L), // p_771->g_657
        (VECTOR(int64_t, 8))((-7L), (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0x02DAA55814CF6733L), 0x02DAA55814CF6733L), 0x02DAA55814CF6733L, (-7L), 0x02DAA55814CF6733L), // p_771->g_658
        (void*)0, // p_771->g_704
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), 255UL, 1UL, 255UL, (VECTOR(uint8_t, 2))(1UL, 255UL), (VECTOR(uint8_t, 2))(1UL, 255UL), 1UL, 255UL, 1UL, 255UL), // p_771->g_721
        (VECTOR(int32_t, 4))(0x54F692A9L, (VECTOR(int32_t, 2))(0x54F692A9L, 0x7F349928L), 0x7F349928L), // p_771->g_770
        0, // p_771->v_collective
        sequence_input[get_global_id(0)], // p_771->global_0_offset
        sequence_input[get_global_id(1)], // p_771->global_1_offset
        sequence_input[get_global_id(2)], // p_771->global_2_offset
        sequence_input[get_local_id(0)], // p_771->local_0_offset
        sequence_input[get_local_id(1)], // p_771->local_1_offset
        sequence_input[get_local_id(2)], // p_771->local_2_offset
        sequence_input[get_group_id(0)], // p_771->group_0_offset
        sequence_input[get_group_id(1)], // p_771->group_1_offset
        sequence_input[get_group_id(2)], // p_771->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 95)), permutations[0][get_linear_local_id()])), // p_771->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_772 = c_773;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_771);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_771->g_2.s0, "p_771->g_2.s0", print_hash_value);
    transparent_crc(p_771->g_2.s1, "p_771->g_2.s1", print_hash_value);
    transparent_crc(p_771->g_2.s2, "p_771->g_2.s2", print_hash_value);
    transparent_crc(p_771->g_2.s3, "p_771->g_2.s3", print_hash_value);
    transparent_crc(p_771->g_2.s4, "p_771->g_2.s4", print_hash_value);
    transparent_crc(p_771->g_2.s5, "p_771->g_2.s5", print_hash_value);
    transparent_crc(p_771->g_2.s6, "p_771->g_2.s6", print_hash_value);
    transparent_crc(p_771->g_2.s7, "p_771->g_2.s7", print_hash_value);
    transparent_crc(p_771->g_3, "p_771->g_3", print_hash_value);
    transparent_crc(p_771->g_7, "p_771->g_7", print_hash_value);
    transparent_crc(p_771->g_28.s0, "p_771->g_28.s0", print_hash_value);
    transparent_crc(p_771->g_28.s1, "p_771->g_28.s1", print_hash_value);
    transparent_crc(p_771->g_28.s2, "p_771->g_28.s2", print_hash_value);
    transparent_crc(p_771->g_28.s3, "p_771->g_28.s3", print_hash_value);
    transparent_crc(p_771->g_28.s4, "p_771->g_28.s4", print_hash_value);
    transparent_crc(p_771->g_28.s5, "p_771->g_28.s5", print_hash_value);
    transparent_crc(p_771->g_28.s6, "p_771->g_28.s6", print_hash_value);
    transparent_crc(p_771->g_28.s7, "p_771->g_28.s7", print_hash_value);
    transparent_crc(p_771->g_28.s8, "p_771->g_28.s8", print_hash_value);
    transparent_crc(p_771->g_28.s9, "p_771->g_28.s9", print_hash_value);
    transparent_crc(p_771->g_28.sa, "p_771->g_28.sa", print_hash_value);
    transparent_crc(p_771->g_28.sb, "p_771->g_28.sb", print_hash_value);
    transparent_crc(p_771->g_28.sc, "p_771->g_28.sc", print_hash_value);
    transparent_crc(p_771->g_28.sd, "p_771->g_28.sd", print_hash_value);
    transparent_crc(p_771->g_28.se, "p_771->g_28.se", print_hash_value);
    transparent_crc(p_771->g_28.sf, "p_771->g_28.sf", print_hash_value);
    transparent_crc(p_771->g_31.s0, "p_771->g_31.s0", print_hash_value);
    transparent_crc(p_771->g_31.s1, "p_771->g_31.s1", print_hash_value);
    transparent_crc(p_771->g_31.s2, "p_771->g_31.s2", print_hash_value);
    transparent_crc(p_771->g_31.s3, "p_771->g_31.s3", print_hash_value);
    transparent_crc(p_771->g_31.s4, "p_771->g_31.s4", print_hash_value);
    transparent_crc(p_771->g_31.s5, "p_771->g_31.s5", print_hash_value);
    transparent_crc(p_771->g_31.s6, "p_771->g_31.s6", print_hash_value);
    transparent_crc(p_771->g_31.s7, "p_771->g_31.s7", print_hash_value);
    transparent_crc(p_771->g_42.x, "p_771->g_42.x", print_hash_value);
    transparent_crc(p_771->g_42.y, "p_771->g_42.y", print_hash_value);
    transparent_crc(p_771->g_43.s0, "p_771->g_43.s0", print_hash_value);
    transparent_crc(p_771->g_43.s1, "p_771->g_43.s1", print_hash_value);
    transparent_crc(p_771->g_43.s2, "p_771->g_43.s2", print_hash_value);
    transparent_crc(p_771->g_43.s3, "p_771->g_43.s3", print_hash_value);
    transparent_crc(p_771->g_43.s4, "p_771->g_43.s4", print_hash_value);
    transparent_crc(p_771->g_43.s5, "p_771->g_43.s5", print_hash_value);
    transparent_crc(p_771->g_43.s6, "p_771->g_43.s6", print_hash_value);
    transparent_crc(p_771->g_43.s7, "p_771->g_43.s7", print_hash_value);
    transparent_crc(p_771->g_43.s8, "p_771->g_43.s8", print_hash_value);
    transparent_crc(p_771->g_43.s9, "p_771->g_43.s9", print_hash_value);
    transparent_crc(p_771->g_43.sa, "p_771->g_43.sa", print_hash_value);
    transparent_crc(p_771->g_43.sb, "p_771->g_43.sb", print_hash_value);
    transparent_crc(p_771->g_43.sc, "p_771->g_43.sc", print_hash_value);
    transparent_crc(p_771->g_43.sd, "p_771->g_43.sd", print_hash_value);
    transparent_crc(p_771->g_43.se, "p_771->g_43.se", print_hash_value);
    transparent_crc(p_771->g_43.sf, "p_771->g_43.sf", print_hash_value);
    transparent_crc(p_771->g_44.s0, "p_771->g_44.s0", print_hash_value);
    transparent_crc(p_771->g_44.s1, "p_771->g_44.s1", print_hash_value);
    transparent_crc(p_771->g_44.s2, "p_771->g_44.s2", print_hash_value);
    transparent_crc(p_771->g_44.s3, "p_771->g_44.s3", print_hash_value);
    transparent_crc(p_771->g_44.s4, "p_771->g_44.s4", print_hash_value);
    transparent_crc(p_771->g_44.s5, "p_771->g_44.s5", print_hash_value);
    transparent_crc(p_771->g_44.s6, "p_771->g_44.s6", print_hash_value);
    transparent_crc(p_771->g_44.s7, "p_771->g_44.s7", print_hash_value);
    transparent_crc(p_771->g_44.s8, "p_771->g_44.s8", print_hash_value);
    transparent_crc(p_771->g_44.s9, "p_771->g_44.s9", print_hash_value);
    transparent_crc(p_771->g_44.sa, "p_771->g_44.sa", print_hash_value);
    transparent_crc(p_771->g_44.sb, "p_771->g_44.sb", print_hash_value);
    transparent_crc(p_771->g_44.sc, "p_771->g_44.sc", print_hash_value);
    transparent_crc(p_771->g_44.sd, "p_771->g_44.sd", print_hash_value);
    transparent_crc(p_771->g_44.se, "p_771->g_44.se", print_hash_value);
    transparent_crc(p_771->g_44.sf, "p_771->g_44.sf", print_hash_value);
    transparent_crc(p_771->g_84, "p_771->g_84", print_hash_value);
    transparent_crc(p_771->g_85.s0, "p_771->g_85.s0", print_hash_value);
    transparent_crc(p_771->g_85.s1, "p_771->g_85.s1", print_hash_value);
    transparent_crc(p_771->g_85.s2, "p_771->g_85.s2", print_hash_value);
    transparent_crc(p_771->g_85.s3, "p_771->g_85.s3", print_hash_value);
    transparent_crc(p_771->g_85.s4, "p_771->g_85.s4", print_hash_value);
    transparent_crc(p_771->g_85.s5, "p_771->g_85.s5", print_hash_value);
    transparent_crc(p_771->g_85.s6, "p_771->g_85.s6", print_hash_value);
    transparent_crc(p_771->g_85.s7, "p_771->g_85.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_771->g_92[i][j][k], "p_771->g_92[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_771->g_248, "p_771->g_248", print_hash_value);
    transparent_crc(p_771->g_268, "p_771->g_268", print_hash_value);
    transparent_crc(p_771->g_270.s0, "p_771->g_270.s0", print_hash_value);
    transparent_crc(p_771->g_270.s1, "p_771->g_270.s1", print_hash_value);
    transparent_crc(p_771->g_270.s2, "p_771->g_270.s2", print_hash_value);
    transparent_crc(p_771->g_270.s3, "p_771->g_270.s3", print_hash_value);
    transparent_crc(p_771->g_270.s4, "p_771->g_270.s4", print_hash_value);
    transparent_crc(p_771->g_270.s5, "p_771->g_270.s5", print_hash_value);
    transparent_crc(p_771->g_270.s6, "p_771->g_270.s6", print_hash_value);
    transparent_crc(p_771->g_270.s7, "p_771->g_270.s7", print_hash_value);
    transparent_crc(p_771->g_270.s8, "p_771->g_270.s8", print_hash_value);
    transparent_crc(p_771->g_270.s9, "p_771->g_270.s9", print_hash_value);
    transparent_crc(p_771->g_270.sa, "p_771->g_270.sa", print_hash_value);
    transparent_crc(p_771->g_270.sb, "p_771->g_270.sb", print_hash_value);
    transparent_crc(p_771->g_270.sc, "p_771->g_270.sc", print_hash_value);
    transparent_crc(p_771->g_270.sd, "p_771->g_270.sd", print_hash_value);
    transparent_crc(p_771->g_270.se, "p_771->g_270.se", print_hash_value);
    transparent_crc(p_771->g_270.sf, "p_771->g_270.sf", print_hash_value);
    transparent_crc(p_771->g_273.s0, "p_771->g_273.s0", print_hash_value);
    transparent_crc(p_771->g_273.s1, "p_771->g_273.s1", print_hash_value);
    transparent_crc(p_771->g_273.s2, "p_771->g_273.s2", print_hash_value);
    transparent_crc(p_771->g_273.s3, "p_771->g_273.s3", print_hash_value);
    transparent_crc(p_771->g_273.s4, "p_771->g_273.s4", print_hash_value);
    transparent_crc(p_771->g_273.s5, "p_771->g_273.s5", print_hash_value);
    transparent_crc(p_771->g_273.s6, "p_771->g_273.s6", print_hash_value);
    transparent_crc(p_771->g_273.s7, "p_771->g_273.s7", print_hash_value);
    transparent_crc(p_771->g_293, "p_771->g_293", print_hash_value);
    transparent_crc(p_771->g_294, "p_771->g_294", print_hash_value);
    transparent_crc(p_771->g_297, "p_771->g_297", print_hash_value);
    transparent_crc(p_771->g_301, "p_771->g_301", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_771->g_347[i][j][k], "p_771->g_347[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_771->g_354, "p_771->g_354", print_hash_value);
    transparent_crc(p_771->g_409, "p_771->g_409", print_hash_value);
    transparent_crc(p_771->g_566.s0, "p_771->g_566.s0", print_hash_value);
    transparent_crc(p_771->g_566.s1, "p_771->g_566.s1", print_hash_value);
    transparent_crc(p_771->g_566.s2, "p_771->g_566.s2", print_hash_value);
    transparent_crc(p_771->g_566.s3, "p_771->g_566.s3", print_hash_value);
    transparent_crc(p_771->g_566.s4, "p_771->g_566.s4", print_hash_value);
    transparent_crc(p_771->g_566.s5, "p_771->g_566.s5", print_hash_value);
    transparent_crc(p_771->g_566.s6, "p_771->g_566.s6", print_hash_value);
    transparent_crc(p_771->g_566.s7, "p_771->g_566.s7", print_hash_value);
    transparent_crc(p_771->g_572, "p_771->g_572", print_hash_value);
    transparent_crc(p_771->g_597.x, "p_771->g_597.x", print_hash_value);
    transparent_crc(p_771->g_597.y, "p_771->g_597.y", print_hash_value);
    transparent_crc(p_771->g_597.z, "p_771->g_597.z", print_hash_value);
    transparent_crc(p_771->g_597.w, "p_771->g_597.w", print_hash_value);
    transparent_crc(p_771->g_610.x, "p_771->g_610.x", print_hash_value);
    transparent_crc(p_771->g_610.y, "p_771->g_610.y", print_hash_value);
    transparent_crc(p_771->g_611.s0, "p_771->g_611.s0", print_hash_value);
    transparent_crc(p_771->g_611.s1, "p_771->g_611.s1", print_hash_value);
    transparent_crc(p_771->g_611.s2, "p_771->g_611.s2", print_hash_value);
    transparent_crc(p_771->g_611.s3, "p_771->g_611.s3", print_hash_value);
    transparent_crc(p_771->g_611.s4, "p_771->g_611.s4", print_hash_value);
    transparent_crc(p_771->g_611.s5, "p_771->g_611.s5", print_hash_value);
    transparent_crc(p_771->g_611.s6, "p_771->g_611.s6", print_hash_value);
    transparent_crc(p_771->g_611.s7, "p_771->g_611.s7", print_hash_value);
    transparent_crc(p_771->g_612.x, "p_771->g_612.x", print_hash_value);
    transparent_crc(p_771->g_612.y, "p_771->g_612.y", print_hash_value);
    transparent_crc(p_771->g_612.z, "p_771->g_612.z", print_hash_value);
    transparent_crc(p_771->g_612.w, "p_771->g_612.w", print_hash_value);
    transparent_crc(p_771->g_613.x, "p_771->g_613.x", print_hash_value);
    transparent_crc(p_771->g_613.y, "p_771->g_613.y", print_hash_value);
    transparent_crc(p_771->g_613.z, "p_771->g_613.z", print_hash_value);
    transparent_crc(p_771->g_613.w, "p_771->g_613.w", print_hash_value);
    transparent_crc(p_771->g_624.s0, "p_771->g_624.s0", print_hash_value);
    transparent_crc(p_771->g_624.s1, "p_771->g_624.s1", print_hash_value);
    transparent_crc(p_771->g_624.s2, "p_771->g_624.s2", print_hash_value);
    transparent_crc(p_771->g_624.s3, "p_771->g_624.s3", print_hash_value);
    transparent_crc(p_771->g_624.s4, "p_771->g_624.s4", print_hash_value);
    transparent_crc(p_771->g_624.s5, "p_771->g_624.s5", print_hash_value);
    transparent_crc(p_771->g_624.s6, "p_771->g_624.s6", print_hash_value);
    transparent_crc(p_771->g_624.s7, "p_771->g_624.s7", print_hash_value);
    transparent_crc(p_771->g_636, "p_771->g_636", print_hash_value);
    transparent_crc(p_771->g_639, "p_771->g_639", print_hash_value);
    transparent_crc(p_771->g_650.s0, "p_771->g_650.s0", print_hash_value);
    transparent_crc(p_771->g_650.s1, "p_771->g_650.s1", print_hash_value);
    transparent_crc(p_771->g_650.s2, "p_771->g_650.s2", print_hash_value);
    transparent_crc(p_771->g_650.s3, "p_771->g_650.s3", print_hash_value);
    transparent_crc(p_771->g_650.s4, "p_771->g_650.s4", print_hash_value);
    transparent_crc(p_771->g_650.s5, "p_771->g_650.s5", print_hash_value);
    transparent_crc(p_771->g_650.s6, "p_771->g_650.s6", print_hash_value);
    transparent_crc(p_771->g_650.s7, "p_771->g_650.s7", print_hash_value);
    transparent_crc(p_771->g_650.s8, "p_771->g_650.s8", print_hash_value);
    transparent_crc(p_771->g_650.s9, "p_771->g_650.s9", print_hash_value);
    transparent_crc(p_771->g_650.sa, "p_771->g_650.sa", print_hash_value);
    transparent_crc(p_771->g_650.sb, "p_771->g_650.sb", print_hash_value);
    transparent_crc(p_771->g_650.sc, "p_771->g_650.sc", print_hash_value);
    transparent_crc(p_771->g_650.sd, "p_771->g_650.sd", print_hash_value);
    transparent_crc(p_771->g_650.se, "p_771->g_650.se", print_hash_value);
    transparent_crc(p_771->g_650.sf, "p_771->g_650.sf", print_hash_value);
    transparent_crc(p_771->g_657.s0, "p_771->g_657.s0", print_hash_value);
    transparent_crc(p_771->g_657.s1, "p_771->g_657.s1", print_hash_value);
    transparent_crc(p_771->g_657.s2, "p_771->g_657.s2", print_hash_value);
    transparent_crc(p_771->g_657.s3, "p_771->g_657.s3", print_hash_value);
    transparent_crc(p_771->g_657.s4, "p_771->g_657.s4", print_hash_value);
    transparent_crc(p_771->g_657.s5, "p_771->g_657.s5", print_hash_value);
    transparent_crc(p_771->g_657.s6, "p_771->g_657.s6", print_hash_value);
    transparent_crc(p_771->g_657.s7, "p_771->g_657.s7", print_hash_value);
    transparent_crc(p_771->g_657.s8, "p_771->g_657.s8", print_hash_value);
    transparent_crc(p_771->g_657.s9, "p_771->g_657.s9", print_hash_value);
    transparent_crc(p_771->g_657.sa, "p_771->g_657.sa", print_hash_value);
    transparent_crc(p_771->g_657.sb, "p_771->g_657.sb", print_hash_value);
    transparent_crc(p_771->g_657.sc, "p_771->g_657.sc", print_hash_value);
    transparent_crc(p_771->g_657.sd, "p_771->g_657.sd", print_hash_value);
    transparent_crc(p_771->g_657.se, "p_771->g_657.se", print_hash_value);
    transparent_crc(p_771->g_657.sf, "p_771->g_657.sf", print_hash_value);
    transparent_crc(p_771->g_658.s0, "p_771->g_658.s0", print_hash_value);
    transparent_crc(p_771->g_658.s1, "p_771->g_658.s1", print_hash_value);
    transparent_crc(p_771->g_658.s2, "p_771->g_658.s2", print_hash_value);
    transparent_crc(p_771->g_658.s3, "p_771->g_658.s3", print_hash_value);
    transparent_crc(p_771->g_658.s4, "p_771->g_658.s4", print_hash_value);
    transparent_crc(p_771->g_658.s5, "p_771->g_658.s5", print_hash_value);
    transparent_crc(p_771->g_658.s6, "p_771->g_658.s6", print_hash_value);
    transparent_crc(p_771->g_658.s7, "p_771->g_658.s7", print_hash_value);
    transparent_crc(p_771->g_721.s0, "p_771->g_721.s0", print_hash_value);
    transparent_crc(p_771->g_721.s1, "p_771->g_721.s1", print_hash_value);
    transparent_crc(p_771->g_721.s2, "p_771->g_721.s2", print_hash_value);
    transparent_crc(p_771->g_721.s3, "p_771->g_721.s3", print_hash_value);
    transparent_crc(p_771->g_721.s4, "p_771->g_721.s4", print_hash_value);
    transparent_crc(p_771->g_721.s5, "p_771->g_721.s5", print_hash_value);
    transparent_crc(p_771->g_721.s6, "p_771->g_721.s6", print_hash_value);
    transparent_crc(p_771->g_721.s7, "p_771->g_721.s7", print_hash_value);
    transparent_crc(p_771->g_721.s8, "p_771->g_721.s8", print_hash_value);
    transparent_crc(p_771->g_721.s9, "p_771->g_721.s9", print_hash_value);
    transparent_crc(p_771->g_721.sa, "p_771->g_721.sa", print_hash_value);
    transparent_crc(p_771->g_721.sb, "p_771->g_721.sb", print_hash_value);
    transparent_crc(p_771->g_721.sc, "p_771->g_721.sc", print_hash_value);
    transparent_crc(p_771->g_721.sd, "p_771->g_721.sd", print_hash_value);
    transparent_crc(p_771->g_721.se, "p_771->g_721.se", print_hash_value);
    transparent_crc(p_771->g_721.sf, "p_771->g_721.sf", print_hash_value);
    transparent_crc(p_771->g_770.x, "p_771->g_770.x", print_hash_value);
    transparent_crc(p_771->g_770.y, "p_771->g_770.y", print_hash_value);
    transparent_crc(p_771->g_770.z, "p_771->g_770.z", print_hash_value);
    transparent_crc(p_771->g_770.w, "p_771->g_770.w", print_hash_value);
    transparent_crc(p_771->v_collective, "p_771->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 5; i++)
            transparent_crc(p_771->g_special_values[i + 5 * get_linear_group_id()], "p_771->g_special_values[i + 5 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 5; i++)
            transparent_crc(p_771->l_special_values[i], "p_771->l_special_values[i]", print_hash_value);
    transparent_crc(p_771->l_comm_values[get_linear_local_id()], "p_771->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_771->g_comm_values[get_linear_group_id() * 95 + get_linear_local_id()], "p_771->g_comm_values[get_linear_group_id() * 95 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
