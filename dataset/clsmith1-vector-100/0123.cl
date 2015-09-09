// ---fake_divergence -g 54,27,3 -l 6,1,1
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


// Seed: 123

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint64_t  f0;
};

struct S1 {
    VECTOR(uint32_t, 4) g_2;
    volatile int32_t g_4;
    volatile int32_t g_5;
    volatile int32_t g_6;
    volatile int32_t g_7;
    volatile int32_t g_8;
    volatile int32_t g_9;
    volatile int32_t g_10;
    int32_t g_11;
    VECTOR(uint8_t, 16) g_24;
    volatile VECTOR(int64_t, 4) g_34;
    VECTOR(int64_t, 2) g_36;
    volatile VECTOR(uint64_t, 2) g_37;
    int32_t g_68[3][1];
    union U0 g_78[10];
    int32_t * volatile *g_101;
    int8_t g_109;
    int32_t *g_111;
    volatile VECTOR(int32_t, 8) g_118;
    volatile VECTOR(int32_t, 16) g_121;
    uint16_t g_148;
    int8_t g_170;
    int32_t g_172;
    VECTOR(uint32_t, 16) g_186;
    volatile VECTOR(uint32_t, 2) g_191;
    volatile VECTOR(uint16_t, 2) g_199;
    volatile VECTOR(int16_t, 16) g_200;
    VECTOR(int16_t, 16) g_201;
    volatile VECTOR(int16_t, 4) g_202;
    int64_t *g_203;
    volatile uint32_t g_214;
    int64_t *** volatile g_227;
    int32_t ** volatile g_232[9][8];
    int32_t ** volatile g_233;
    union U0 *g_242;
    union U0 * volatile * volatile g_241;
    int64_t g_266;
    volatile uint16_t * volatile *g_269;
    volatile uint16_t * volatile ** volatile g_268[10];
    VECTOR(int8_t, 16) g_279;
    int32_t g_305[3][6][9];
    volatile VECTOR(uint32_t, 16) g_306;
    volatile VECTOR(int8_t, 2) g_309;
    volatile uint64_t g_347;
    int32_t ** volatile g_351;
    volatile uint32_t g_376;
    VECTOR(int32_t, 8) g_407;
    VECTOR(uint8_t, 4) g_423;
    VECTOR(int8_t, 2) g_461;
    int16_t g_505;
    int16_t g_506;
    uint64_t g_507;
    uint16_t g_510;
    int32_t * volatile g_525;
    uint32_t * volatile g_552;
    uint32_t * volatile *g_551;
    uint32_t g_556;
    volatile int8_t g_594;
    volatile VECTOR(int64_t, 2) g_637;
    uint8_t *g_639;
    int64_t g_670;
    VECTOR(int32_t, 2) g_680;
    VECTOR(int32_t, 2) g_681;
    VECTOR(int32_t, 8) g_682;
    int16_t g_684;
    VECTOR(uint8_t, 4) g_738;
    int8_t g_752;
    uint16_t g_768;
    int32_t ** volatile g_825;
    VECTOR(int32_t, 4) g_841;
    VECTOR(uint8_t, 8) g_844;
    volatile VECTOR(uint8_t, 2) g_845;
    volatile VECTOR(uint8_t, 4) g_846;
    VECTOR(int32_t, 4) g_850;
    int32_t ** volatile g_875;
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
int32_t  func_1(struct S1 * p_891);
int32_t * func_14(int32_t * p_15, int32_t  p_16, int32_t * p_17, uint64_t  p_18, uint64_t  p_19, struct S1 * p_891);
int32_t  func_25(int32_t * p_26, int32_t * p_27, struct S1 * p_891);
int32_t * func_28(int32_t * p_29, uint32_t  p_30, struct S1 * p_891);
uint8_t  func_40(union U0  p_41, union U0  p_42, union U0  p_43, uint32_t  p_44, int32_t ** p_45, struct S1 * p_891);
union U0  func_46(int32_t * p_47, int32_t * p_48, int32_t ** p_49, int64_t  p_50, int32_t * p_51, struct S1 * p_891);
int32_t ** func_52(uint32_t  p_53, int32_t * p_54, int8_t  p_55, struct S1 * p_891);
uint64_t  func_58(int64_t  p_59, uint32_t  p_60, struct S1 * p_891);
uint64_t  func_65(int32_t  p_66, struct S1 * p_891);
uint8_t  func_73(int32_t * p_74, int8_t  p_75, uint32_t  p_76, union U0  p_77, struct S1 * p_891);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_891->g_2 p_891->g_11 p_891->g_4 p_891->g_752 p_891->g_351 p_891->g_68 p_891->g_233 p_891->g_111 p_891->g_825 p_891->g_241 p_891->g_242 p_891->g_78 p_891->g_875 p_891->g_109
 * writes: p_891->g_11 p_891->g_111 p_891->g_507 p_891->g_109
 */
int32_t  func_1(struct S1 * p_891)
{ /* block id: 4 */
    int32_t *l_23 = &p_891->g_11;
    int16_t l_843 = 0L;
    VECTOR(int32_t, 16) l_849 = (VECTOR(int32_t, 16))(0x2843950FL, (VECTOR(int32_t, 4))(0x2843950FL, (VECTOR(int32_t, 2))(0x2843950FL, 1L), 1L), 1L, 0x2843950FL, 1L, (VECTOR(int32_t, 2))(0x2843950FL, 1L), (VECTOR(int32_t, 2))(0x2843950FL, 1L), 0x2843950FL, 1L, 0x2843950FL, 1L);
    uint8_t l_854 = 0UL;
    int32_t *l_874 = &p_891->g_68[0][0];
    int i;
    if ((p_891->g_2.x & (safe_unary_minus_func_int64_t_s(0x187F2FB5A5EFA20BL))))
    { /* block id: 5 */
        uint64_t l_833 = 2UL;
        int32_t *l_834 = &p_891->g_68[0][0];
        int16_t *l_853 = &p_891->g_505;
        int32_t l_858 = 8L;
        uint32_t l_859 = 0UL;
        int32_t *l_862 = &l_858;
        int32_t *l_863 = (void*)0;
        int32_t *l_864 = (void*)0;
        int32_t *l_865 = &p_891->g_68[0][0];
        int32_t *l_866 = (void*)0;
        int32_t *l_867 = (void*)0;
        int32_t *l_868[10][2][1] = {{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}}};
        uint32_t l_869[7][3][7] = {{{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L}},{{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L}},{{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L}},{{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L}},{{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L}},{{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L}},{{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L},{0x885857B8L,0UL,0xAFDEEED2L,4294967295UL,4UL,4294967294UL,0x1BBA3137L}}};
        int i, j, k;
        for (p_891->g_11 = 7; (p_891->g_11 > (-28)); p_891->g_11--)
        { /* block id: 8 */
            int32_t *l_20 = (void*)0;
            uint32_t *l_826 = (void*)0;
            uint32_t *l_827 = (void*)0;
            uint32_t *l_828 = (void*)0;
            uint32_t *l_829 = (void*)0;
            uint32_t *l_830 = (void*)0;
            uint32_t *l_831 = (void*)0;
            uint32_t *l_832[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t *l_842[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int16_t *l_851 = &p_891->g_506;
            int16_t **l_852 = (void*)0;
            int i;
            (*p_891->g_825) = func_14(l_20, p_891->g_11, ((safe_mul_func_uint8_t_u_u((l_23 == l_20), ((VECTOR(uint8_t, 2))(p_891->g_24.sae)).odd)) , l_23), p_891->g_11, p_891->g_4, p_891);
            l_854 |= (((l_833 = (*l_23)) | (func_46(l_834, l_834, &p_891->g_111, ((safe_lshift_func_uint16_t_u_u((*l_834), 3)) >= (safe_add_func_uint8_t_u_u((((safe_rshift_func_int16_t_s_s(((void*)0 != l_832[0]), 5)) > GROUP_DIVERGE(1, 1)) == (l_843 = ((VECTOR(int32_t, 8))(2L, ((VECTOR(int32_t, 2))(0x411375E4L, 0x0C95126EL)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_891->g_841.yy)), (-5L), 0x299B11E0L)), 0x1F071697L)).s3)), ((VECTOR(uint8_t, 8))(0x70L, ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 4))(p_891->g_844.s6043)).xxyyzwxx, ((VECTOR(uint8_t, 16))(p_891->g_845.xxxyxxxxyyxyyxxx)).lo, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 4))(p_891->g_846.yxwz)).wzzyyxxw, ((VECTOR(uint8_t, 4))((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))(l_849.s92608a56591fa359)).sf, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_891->g_850.yzyzzzzxzzyzwwwy)).sff)).xxxxxyyy)).s0)), ((l_853 = ((**p_891->g_241) , l_851)) != &p_891->g_505), 0x64L, 0x36L)).wzwwxzww))).s71)).xxxyyyxx))).s4376002225211324, ((VECTOR(uint8_t, 16))(0xB3L))))).sbb, ((VECTOR(uint8_t, 2))(0UL))))), ((VECTOR(uint8_t, 2))(1UL)), (*l_834), 9UL, 0x22L)).s2))), &p_891->g_11, p_891) , (**p_891->g_825))) , (*p_891->g_111));
            for (p_891->g_507 = 0; (p_891->g_507 >= 27); p_891->g_507 = safe_add_func_int64_t_s_s(p_891->g_507, 6))
            { /* block id: 358 */
                int32_t *l_857 = &p_891->g_68[0][0];
                l_857 = (*p_891->g_233);
            }
            l_859++;
        }
        l_869[4][0][4]++;
    }
    else
    { /* block id: 364 */
        int32_t l_880 = 0x3A3A6C84L;
        int32_t l_884 = 0x109DF998L;
        uint32_t l_885 = 0UL;
        for (l_854 = 6; (l_854 != 47); ++l_854)
        { /* block id: 367 */
            (*p_891->g_875) = l_874;
        }
        for (p_891->g_109 = 0; (p_891->g_109 != (-27)); p_891->g_109--)
        { /* block id: 372 */
            int32_t *l_878 = &p_891->g_68[1][0];
            int32_t *l_879 = (void*)0;
            int32_t *l_881 = (void*)0;
            int32_t *l_882 = &p_891->g_68[2][0];
            int32_t *l_883[3][2][4] = {{{(void*)0,&p_891->g_11,(void*)0,(void*)0},{(void*)0,&p_891->g_11,(void*)0,(void*)0}},{{(void*)0,&p_891->g_11,(void*)0,(void*)0},{(void*)0,&p_891->g_11,(void*)0,(void*)0}},{{(void*)0,&p_891->g_11,(void*)0,(void*)0},{(void*)0,&p_891->g_11,(void*)0,(void*)0}}};
            uint8_t l_888 = 246UL;
            int i, j, k;
            l_885++;
            --l_888;
        }
        (*l_23) ^= 0L;
    }
    return (*l_23);
}


/* ------------------------------------------ */
/* 
 * reads : p_891->g_34 p_891->g_36 p_891->g_37 p_891->g_8 p_891->g_68 p_891->g_78 p_891->g_101 p_891->g_24 p_891->g_2 p_891->g_11 p_891->g_109 p_891->g_118 p_891->g_121 p_891->g_111 p_891->g_10 p_891->g_78.f0 p_891->g_170 p_891->g_203 p_891->g_279 p_891->g_227 p_891->g_351 p_891->g_407 p_891->g_172 p_891->g_5 p_891->g_306 p_891->g_148 p_891->g_305 p_891->g_186 p_891->g_461 p_891->g_347 p_891->g_507 p_891->g_510 p_891->g_202 p_891->g_423 p_891->g_525 p_891->g_241 p_891->g_242 p_891->g_551 p_891->g_309 p_891->g_191 p_891->g_680 p_891->g_682 p_891->g_684 p_891->g_200 p_891->g_639 p_891->g_506 p_891->g_233 p_891->g_670 p_891->g_768 p_891->g_6 p_891->g_556 p_891->g_752
 * writes: p_891->g_68 p_891->g_2 p_891->g_109 p_891->g_111 p_891->g_36 p_891->g_148 p_891->g_24 p_891->g_170 p_891->g_172 p_891->g_407 p_891->g_266 p_891->g_507 p_891->g_510 p_891->g_186 p_891->g_423 p_891->g_684 p_891->g_682
 */
int32_t * func_14(int32_t * p_15, int32_t  p_16, int32_t * p_17, uint64_t  p_18, uint64_t  p_19, struct S1 * p_891)
{ /* block id: 9 */
    int32_t *l_32 = (void*)0;
    int32_t **l_31 = &l_32;
    VECTOR(int64_t, 2) l_33 = (VECTOR(int64_t, 2))(0x29ED7D413053BF84L, 0x2928F0BD907C4E7CL);
    VECTOR(int64_t, 4) l_35 = (VECTOR(int64_t, 4))(0x557BC77562375818L, (VECTOR(int64_t, 2))(0x557BC77562375818L, (-2L)), (-2L));
    union U0 l_536[8][3][4] = {{{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}}},{{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}}},{{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}}},{{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}}},{{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}}},{{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}}},{{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}}},{{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}},{{0x009CE9722AC7F24CL},{0x3D891A42F66C0B35L},{0x009CE9722AC7F24CL},{0x009CE9722AC7F24CL}}}};
    union U0 l_537 = {4UL};
    int32_t *l_539 = &p_891->g_11;
    int32_t **l_538 = &l_539;
    int32_t *l_815 = (void*)0;
    int32_t *l_818 = (void*)0;
    int32_t *l_819 = (void*)0;
    int32_t *l_820 = (void*)0;
    int32_t *l_821 = (void*)0;
    int32_t l_822 = (-2L);
    int i, j, k;
    l_822 |= (FAKE_DIVERGE(p_891->local_1_offset, get_local_id(1), 10) , func_25(func_28(((*l_31) = &p_891->g_11), ((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(l_33.xx)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(p_891->g_34.zy)), ((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_35.wyyx)))), ((VECTOR(int64_t, 2))(p_891->g_36.yx)).yxyx))).hi, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((-1L), 0x0F8278B7212908CDL)), 0x369029EFEC1A2C9DL, (-1L))).lo))).yyxyxxyy)).s22))).yyyyyyxyxxxyyxyx, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(0x4B1743E62C90ACEFL, 0x06DFE53505CE4EC6L, 0x132F4BB0F55F5DDAL, ((VECTOR(int64_t, 2))(0x77C4186397847253L, 0x5E34605DD88BA54FL)), 0x3F567D7132C2674DL, 0L, 0L)).s1, p_19, (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 8))(p_891->g_37.yxxyxxyx)).lo, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0xCF93A29ADD9258C0L, 0x6F4C35C241E97152L)), 0UL, ((safe_mod_func_int8_t_s_s(0x50L, func_40((l_536[4][2][2] = func_46(&p_891->g_11, &p_891->g_11, func_52((func_58(((safe_mod_func_int64_t_s_s((+p_16), (safe_mod_func_uint64_t_u_u(func_65(p_891->g_8, p_891), p_19)))) & p_16), p_16, p_891) | 0L), &p_891->g_11, p_891->g_423.w, p_891), p_18, &p_891->g_11, p_891)), l_537, l_537, p_891->g_461.x, l_538, p_891))) , p_19), 1UL, 0UL, ((VECTOR(uint64_t, 2))(0x3032A0E78C54BDD4L)), 3UL, ((VECTOR(uint64_t, 2))(0xC9DD5A974944D035L)), ((VECTOR(uint64_t, 2))(0x8253AE16C3483BAFL)), 0x4A2292934C8BBE70L, 18446744073709551615UL, 4UL)).s8e1d))).xwxyxzwy)).s6 && p_18), p_18, 6L, p_19, (-2L), 1L)).s6632632211531125))).s9e)).even , l_815) == &p_16), p_891), &p_891->g_11, p_891));
    for (l_822 = (-6); (l_822 <= 14); l_822 = safe_add_func_int16_t_s_s(l_822, 9))
    { /* block id: 347 */
        return (*p_891->g_233);
    }
    return (*p_891->g_233);
}


/* ------------------------------------------ */
/* 
 * reads : p_891->g_752 p_891->g_351 p_891->g_68
 * writes: p_891->g_111
 */
int32_t  func_25(int32_t * p_26, int32_t * p_27, struct S1 * p_891)
{ /* block id: 339 */
    int32_t **l_817[4];
    int i;
    for (i = 0; i < 4; i++)
        l_817[i] = &p_891->g_111;
    p_27 = ((*p_891->g_351) = func_28((p_26 = p_26), p_891->g_752, p_891));
    return (*p_27);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_28(int32_t * p_29, uint32_t  p_30, struct S1 * p_891)
{ /* block id: 337 */
    int32_t *l_816 = &p_891->g_68[1][0];
    return l_816;
}


/* ------------------------------------------ */
/* 
 * reads : p_891->g_11 p_891->g_37 p_891->g_202 p_891->g_407 p_891->g_109 p_891->g_551 p_891->g_111 p_891->g_305 p_891->g_68 p_891->g_170 p_891->g_525 p_891->g_172 p_891->g_121 p_891->g_279 p_891->g_309 p_891->g_2 p_891->g_507 p_891->g_351 p_891->g_186 p_891->g_241 p_891->g_242 p_891->g_78 p_891->g_461 p_891->g_191 p_891->g_680 p_891->g_682 p_891->g_423 p_891->g_684 p_891->g_36 p_891->g_200 p_891->g_639 p_891->g_506 p_891->g_233 p_891->g_670 p_891->g_768 p_891->g_6 p_891->g_306 p_891->g_556
 * writes: p_891->g_68 p_891->g_109 p_891->g_111 p_891->g_170 p_891->g_186 p_891->g_423 p_891->g_684 p_891->g_266 p_891->g_682
 */
uint8_t  func_40(union U0  p_41, union U0  p_42, union U0  p_43, uint32_t  p_44, int32_t ** p_45, struct S1 * p_891)
{ /* block id: 235 */
    int32_t l_557 = (-1L);
    uint32_t *l_577 = (void*)0;
    uint32_t **l_576 = &l_577;
    uint32_t ***l_575 = &l_576;
    VECTOR(int16_t, 8) l_581 = (VECTOR(int16_t, 8))(0x780DL, (VECTOR(int16_t, 4))(0x780DL, (VECTOR(int16_t, 2))(0x780DL, 9L), 9L), 9L, 0x780DL, 9L);
    int32_t l_595 = 1L;
    int32_t l_600[10][7] = {{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L},{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L},{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L},{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L},{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L},{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L},{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L},{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L},{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L},{0x3C802E3CL,0x3C802E3CL,0x3DDB0E89L,0L,(-10L),0L,0x3DDB0E89L}};
    uint32_t l_605 = 1UL;
    int64_t *l_619 = (void*)0;
    VECTOR(int16_t, 8) l_648 = (VECTOR(int16_t, 8))(0x111EL, (VECTOR(int16_t, 4))(0x111EL, (VECTOR(int16_t, 2))(0x111EL, 9L), 9L), 9L, 0x111EL, 9L);
    int16_t l_654 = 0x4383L;
    int8_t l_774 = 9L;
    uint8_t *l_811 = (void*)0;
    uint64_t l_814 = 18446744073709551615UL;
    int i, j;
    if ((**p_45))
    { /* block id: 236 */
        int32_t *l_542 = &p_891->g_68[0][0];
        int8_t *l_549 = (void*)0;
        int8_t *l_550 = &p_891->g_109;
        uint32_t *l_555[6][9][3] = {{{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0}},{{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0}},{{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0}},{{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0}},{{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0}},{{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0},{&p_891->g_556,&p_891->g_556,(void*)0}}};
        int32_t **l_559 = &p_891->g_111;
        int32_t ***l_558 = &l_559;
        int i, j, k;
        (*l_542) = ((safe_lshift_func_int8_t_s_u(p_891->g_37.y, (p_43.f0 < FAKE_DIVERGE(p_891->global_1_offset, get_global_id(1), 10)))) , (-6L));
        (*l_558) = func_52((l_557 = ((18446744073709551615UL ^ (safe_rshift_func_uint8_t_u_u(p_891->g_202.y, 3))) || ((safe_mul_func_uint8_t_u_u(p_891->g_407.s6, ((*l_550) ^= 0x1AL))) <= (((p_891->g_551 == (void*)0) > (0L <= ((safe_sub_func_int32_t_s_s((0x1BF2EDE0765D782CL < (((!(*p_891->g_111)) >= p_891->g_305[2][4][2]) < p_43.f0)), 1L)) ^ 9L))) | (*l_542))))), (*p_45), p_891->g_305[2][2][2], p_891);
        return p_891->g_172;
    }
    else
    { /* block id: 242 */
        uint8_t l_588 = 0x38L;
        int32_t l_601 = (-5L);
        int32_t l_603 = 9L;
        int32_t l_604[8][7] = {{0x3B2F16A3L,0L,0L,0x3B2F16A3L,0x3B2F16A3L,0L,0L},{0x3B2F16A3L,0L,0L,0x3B2F16A3L,0x3B2F16A3L,0L,0L},{0x3B2F16A3L,0L,0L,0x3B2F16A3L,0x3B2F16A3L,0L,0L},{0x3B2F16A3L,0L,0L,0x3B2F16A3L,0x3B2F16A3L,0L,0L},{0x3B2F16A3L,0L,0L,0x3B2F16A3L,0x3B2F16A3L,0L,0L},{0x3B2F16A3L,0L,0L,0x3B2F16A3L,0x3B2F16A3L,0L,0L},{0x3B2F16A3L,0L,0L,0x3B2F16A3L,0x3B2F16A3L,0L,0L},{0x3B2F16A3L,0L,0L,0x3B2F16A3L,0x3B2F16A3L,0L,0L}};
        uint16_t *l_610 = (void*)0;
        uint16_t **l_609 = &l_610;
        uint16_t ***l_608[3][2];
        int64_t *l_620 = (void*)0;
        VECTOR(int64_t, 4) l_638 = (VECTOR(int64_t, 4))(0x075EA5295EB42C2FL, (VECTOR(int64_t, 2))(0x075EA5295EB42C2FL, (-10L)), (-10L));
        VECTOR(int16_t, 2) l_651 = (VECTOR(int16_t, 2))(0x7EF4L, 0x37C7L);
        union U0 **l_653 = &p_891->g_242;
        int32_t l_685 = (-5L);
        uint64_t l_698 = 0UL;
        VECTOR(uint16_t, 4) l_728 = (VECTOR(uint16_t, 4))(0x4533L, (VECTOR(uint16_t, 2))(0x4533L, 0xF558L), 0xF558L);
        uint32_t **l_792[4];
        VECTOR(uint64_t, 8) l_807 = (VECTOR(uint64_t, 8))(0x0A1E868ABE23BC09L, (VECTOR(uint64_t, 4))(0x0A1E868ABE23BC09L, (VECTOR(uint64_t, 2))(0x0A1E868ABE23BC09L, 0x22F457DF98D71D3EL), 0x22F457DF98D71D3EL), 0x22F457DF98D71D3EL, 0x0A1E868ABE23BC09L, 0x22F457DF98D71D3EL);
        VECTOR(int8_t, 2) l_810 = (VECTOR(int8_t, 2))((-2L), 0L);
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_608[i][j] = &l_609;
        }
        for (i = 0; i < 4; i++)
            l_792[i] = &l_577;
        if (((void*)0 != (*p_45)))
        { /* block id: 243 */
            int8_t l_586 = 0x0BL;
            int32_t *l_590 = &p_891->g_68[0][0];
            int32_t *l_591 = (void*)0;
            int32_t *l_592 = &p_891->g_68[1][0];
            int32_t *l_593 = &p_891->g_68[0][0];
            int32_t *l_596 = (void*)0;
            int32_t *l_597 = &p_891->g_68[0][0];
            int32_t *l_598 = &p_891->g_68[0][0];
            int32_t *l_599[3];
            int32_t l_602 = 0x40E6F668L;
            uint64_t l_616 = 0x9E9AC0652C8AD2F4L;
            int i;
            for (i = 0; i < 3; i++)
                l_599[i] = &p_891->g_68[0][0];
            for (p_41.f0 = (-28); (p_41.f0 == 40); ++p_41.f0)
            { /* block id: 246 */
                uint32_t l_574 = 4294967289UL;
                uint32_t ****l_578 = &l_575;
                int8_t *l_587 = (void*)0;
                int32_t *l_589 = &p_891->g_68[0][0];
                (*l_589) |= (l_588 = (safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((((p_891->g_121.se || (p_891->g_109 = (!((safe_div_func_int32_t_s_s((safe_mul_func_int8_t_s_s(0x27L, ((safe_div_func_int32_t_s_s(((l_574 <= (!(&p_891->g_551 == ((*l_578) = l_575)))) , ((safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_581.s3675)).w, ((l_574 != (5L == ((-3L) == (safe_mul_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(p_891->g_170, 7)), l_586))))) & p_891->g_279.s7))) & l_574)), 0x7E1E0EBFL)) , 0x0AL))), 0x7D54A065L)) | p_891->g_309.x)))) , 0x8A04E43EL) != 0x5619D258L), p_891->g_305[0][1][3])), p_41.f0)));
                (*l_589) ^= 0x6A264EA9L;
                (*p_45) = l_590;
                if ((**p_45))
                    break;
            }
            l_605++;
            (*l_590) |= (&p_891->g_269 != l_608[1][1]);
            for (p_891->g_109 = 0; (p_891->g_109 != 24); p_891->g_109 = safe_add_func_int64_t_s_s(p_891->g_109, 7))
            { /* block id: 259 */
                int16_t l_613 = 0x1B02L;
                int32_t l_614 = (-1L);
                int32_t l_615 = (-7L);
                l_616++;
                (*p_891->g_525) ^= 5L;
                l_604[3][6] = ((p_891->g_2.z , l_619) != l_620);
            }
        }
        else
        { /* block id: 264 */
            uint16_t l_626 = 0x292FL;
            union U0 *l_652[10][7] = {{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0},{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0},{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0},{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0},{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0},{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0},{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0},{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0},{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0},{&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[3],&p_891->g_78[4],&p_891->g_78[3],(void*)0}};
            int32_t l_671 = 0x0CC70821L;
            VECTOR(int8_t, 4) l_683 = (VECTOR(int8_t, 4))(0x3AL, (VECTOR(int8_t, 2))(0x3AL, 0x3FL), 0x3FL);
            int64_t *l_706 = &p_891->g_266;
            uint16_t ****l_719 = &l_608[1][1];
            int32_t **l_723[7];
            int8_t l_749 = (-1L);
            int i, j;
            for (i = 0; i < 7; i++)
                l_723[i] = &p_891->g_111;
lbl_720:
            for (p_891->g_109 = 0; (p_891->g_109 <= 6); p_891->g_109++)
            { /* block id: 267 */
                int32_t *l_623 = &l_601;
                int32_t l_624 = 0L;
                int32_t *l_625[3][6][5] = {{{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603}},{{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603}},{{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603},{&l_603,&l_603,&l_603,&p_891->g_68[0][0],&l_603}}};
                int i, j, k;
                --l_626;
            }
            for (l_605 = 0; (l_605 >= 13); l_605 = safe_add_func_int64_t_s_s(l_605, 6))
            { /* block id: 272 */
                int32_t *l_655 = &p_891->g_68[0][0];
                VECTOR(int8_t, 2) l_678 = (VECTOR(int8_t, 2))(0x64L, (-3L));
                VECTOR(int32_t, 2) l_679 = (VECTOR(int32_t, 2))((-1L), 0L);
                uint32_t ***l_702 = (void*)0;
                int64_t **l_705 = &l_620;
                uint16_t ****l_717 = &l_608[1][0];
                uint16_t *****l_718 = &l_717;
                VECTOR(int16_t, 8) l_727 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x3663L), 0x3663L), 0x3663L, (-1L), 0x3663L);
                int16_t l_789 = 0x289DL;
                int i;
                if (((*l_655) ^= (((2L | (l_654 = ((((safe_lshift_func_int8_t_s_s((((VECTOR(uint32_t, 8))(((0x607DC2C7E3DCC1FAL && (safe_rshift_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((((VECTOR(int64_t, 8))(p_44, ((VECTOR(int64_t, 4))(0x65B876E36BD596B7L, ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 4))(p_891->g_637.xyyx)).even, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_638.xzxwyxwx)).s3515102557050741)).s32))), 0x0891B315FEFB5861L)), 4L, (-4L), 0x4E704D6F96A15590L)).s0 , &l_588) == (l_605 , p_891->g_639)), (safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s((safe_div_func_uint8_t_u_u((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 8))(l_648.s11653677)).s1, (safe_sub_func_int16_t_s_s(0x0525L, ((VECTOR(int16_t, 4))(l_651.xyyx)).y)))), 1UL)), 14)), (&p_891->g_78[3] != l_652[4][1]))))), 9))) <= l_600[1][1]), 0UL, ((VECTOR(uint32_t, 2))(0x4F316E8CL)), 0UL, p_891->g_200.s0, 0x58F3A918L, 4294967295UL)).s3 == l_600[3][1]), p_41.f0)) | p_891->g_507) , l_653) == (void*)0))) == p_41.f0) ^ p_41.f0)))
                { /* block id: 275 */
                    for (l_603 = 23; (l_603 == 6); l_603 = safe_sub_func_int32_t_s_s(l_603, 5))
                    { /* block id: 278 */
                        (*p_45) = (*p_891->g_351);
                        if ((*l_655))
                            break;
                        if (l_651.x)
                            break;
                    }
                }
                else
                { /* block id: 283 */
                    uint16_t l_667 = 0x32D5L;
                    for (l_557 = 0; (l_557 >= 28); l_557++)
                    { /* block id: 286 */
                        int32_t **l_660 = &p_891->g_111;
                        uint32_t *l_663[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t l_664 = 0x0701E60DL;
                        int i;
                        (*l_660) = (func_46(&l_600[6][5], (*p_891->g_351), l_660, (((safe_add_func_uint32_t_u_u((p_891->g_186.s1--), (p_42.f0 , ((0x2FD2L == l_601) | ((VECTOR(uint8_t, 16))((l_667 <= (((safe_add_func_uint16_t_u_u(l_595, p_891->g_670)) , p_43.f0) < 65535UL)), p_891->g_11, 0x16L, (**l_660), (*l_655), 249UL, l_671, 0xC9L, 0xEEL, 0xE7L, ((VECTOR(uint8_t, 2))(251UL)), p_43.f0, 253UL, 0x26L, 0xADL)).sb)))) , 0x48840D514343637BL) , p_43.f0), (*p_45), p_891) , &l_600[3][1]);
                        p_891->g_684 ^= ((safe_add_func_int64_t_s_s(((p_891->g_461.y , (0UL >= (safe_rshift_func_int16_t_s_u(p_891->g_191.x, (safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(l_678.yxxyyyyy)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(0x0CL, (-9L), (((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(7L, ((VECTOR(int32_t, 2))(0x0C3C3D0DL, 4L)).odd, 0x2C9A45C2L, (-1L))).yzyxxzzyywzwxwyw, ((VECTOR(int32_t, 16))(l_679.xyxxxxxxyxyxyxyy))))).s9401)).even)), ((VECTOR(int32_t, 4))(p_891->g_680.yyxy)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_891->g_681.yy)))), 1L, 0L)), 0L, l_581.s7, 0x68519312L, (-7L), 2L, 0x69CDE71AL)).hi, ((VECTOR(int32_t, 2))(p_891->g_682.s43)).yyyyyxxx))).s0 & ((*p_891->g_111) &= (-9L))), ((VECTOR(int8_t, 16))(l_683.xwzwzxzyxxxzzyzx)).se, ((*l_655) <= p_891->g_68[1][0]), 1L, (-8L), (-9L))).s4347635775001523)).hi))).s0, (p_891->g_423.w |= (((((p_891->g_680.y ^ 0x78L) , p_891->g_682.s7) < p_891->g_279.s4) >= 0x7395L) == p_891->g_461.x)))))))) , 1L), GROUP_DIVERGE(0, 1))) , l_600[0][3]);
                    }
                    (*p_45) = l_655;
                }
                if (l_685)
                { /* block id: 295 */
                    return p_41.f0;
                }
                else
                { /* block id: 297 */
                    int32_t l_688 = 3L;
                    int8_t *l_697 = &p_891->g_170;
                    int16_t *l_699 = (void*)0;
                    int16_t *l_700[7][10] = {{&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684},{&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684},{&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684},{&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684},{&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684},{&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684},{&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_684,&p_891->g_506,&p_891->g_684,&p_891->g_684}};
                    uint32_t l_701 = 8UL;
                    int i, j;
                    if (l_685)
                        break;
                    l_701 = (((safe_mul_func_int16_t_s_s((l_603 &= (p_891->g_36.y , (l_683.x && (l_688 || ((((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((-1L), (-8L), 0x5B1AL, 2L)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(0x44D0L, 0x2E47L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((-2L), 0x6336L)).xxxx)), (-6L), 3L)).hi)).hi, ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))((((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u(l_688, ((((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(0UL, 18446744073709551612UL)).hi, (((*l_697) = 0x33L) & p_44))) != ((&p_891->g_268[8] == (void*)0) >= p_42.f0)) && l_654) > (*l_655)))), l_698)) ^ GROUP_DIVERGE(1, 1)) ^ p_43.f0), ((VECTOR(int16_t, 4))(0x2BDBL)), 0x1B95L, 0x1B6AL, ((VECTOR(int16_t, 4))(0x652DL)), (-1L), (-3L), 0L, 0L, 0L)).s6f)).hi, 1L, 6L, 1L)).hi, ((VECTOR(int16_t, 2))(0x46CFL)))))))), 0x2363L, 1L)))).s6 < p_44) , p_891->g_36.x) , (-5L)) && 0x5D9AL))))), (-1L))) > (*p_891->g_111)) | p_43.f0);
                }
                if ((((((l_702 != (void*)0) , (safe_mul_func_uint16_t_u_u((((*l_705) = l_620) == l_706), (safe_div_func_int8_t_s_s((l_600[3][1] | ((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u(((safe_div_func_int32_t_s_s((safe_sub_func_int16_t_s_s(p_891->g_200.s7, (((p_42.f0 , (((((*l_718) = l_717) != l_719) , (void*)0) == p_891->g_639)) > FAKE_DIVERGE(p_891->global_1_offset, get_global_id(1), 10)) > 0x7FF71D3F0D72EB79L))), l_654)) , l_651.x), 3)), p_891->g_172)) ^ p_41.f0)), (*l_655)))))) && 0x02L) == 0x62B69CDFD5A2886FL) , (**p_45)))
                { /* block id: 305 */
                    uint32_t l_731 = 0UL;
                    VECTOR(int64_t, 16) l_745 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-6L)), (-6L)), (-6L), (-1L), (-6L), (VECTOR(int64_t, 2))((-1L), (-6L)), (VECTOR(int64_t, 2))((-1L), (-6L)), (-1L), (-6L), (-1L), (-6L));
                    int32_t l_746 = 0x579337A5L;
                    int32_t l_747 = 0x2EE1DBA3L;
                    int32_t l_748 = 0x48DD982BL;
                    int32_t l_751 = (-1L);
                    int32_t l_761 = 0x2A2C21A6L;
                    int32_t l_762[9] = {(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L),0L,(-1L)};
                    int i;
                    if (l_654)
                        goto lbl_720;
                    (*l_655) = (**p_45);
                    for (p_891->g_170 = 5; (p_891->g_170 >= 14); p_891->g_170++)
                    { /* block id: 310 */
                        int32_t ***l_724 = &l_723[6];
                        int32_t l_750 = 0x02629B4FL;
                        uint32_t l_753 = 8UL;
                        int32_t l_756 = 3L;
                        int32_t l_757 = 0x46718AB6L;
                        int32_t l_758 = (-10L);
                        int32_t l_759 = 0x416C4BB7L;
                        int32_t l_760[1][1][3];
                        uint16_t l_763 = 0xD518L;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 3; k++)
                                    l_760[i][j][k] = 8L;
                            }
                        }
                        (*l_655) = (((&p_891->g_525 == ((*l_724) = l_723[6])) , ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x6036L, (-7L))).yyyxyyyy)).s1) || (((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 8))(l_727.s03275035))))), ((VECTOR(uint16_t, 16))(l_728.xyyyzwzwwxxxxxyz)).hi))).s6 || (((0UL & (p_42.f0 <= (&p_891->g_525 != &p_891->g_525))) > (0x4EL >= (safe_mod_func_int64_t_s_s(((*l_706) = ((p_891->g_506 >= l_588) ^ l_731)), p_43.f0)))) <= 1UL)));
                        l_746 = (safe_add_func_uint64_t_u_u(8UL, (safe_lshift_func_uint16_t_u_u((***l_724), ((((3L & ((((safe_add_func_int64_t_s_s(p_42.f0, ((((VECTOR(uint8_t, 8))((~4UL), 7UL, ((VECTOR(uint8_t, 2))(p_891->g_738.xw)), 8UL, 0x55L, 0xD5L, 0x4EL)).s0 < (safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 2))(0x6509L, 0L)).odd, ((((***l_724) != (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_891->group_1_offset, get_group_id(1), 10), (((*l_655) |= 0x1E4EL) || 0xE4BAL)))) , ((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x201F70A14ACC42B7L, (-1L))).yxyy)).hi, ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 2))(0x3F0782A4B220C987L, (-2L))).yxyx, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_745.sc0682c7f)))).hi))).even))).lo) , ((0x132CC3E671992E7DL > 0x4C37CAB29728FBA4L) && p_43.f0)))) != (***l_724)) >= p_43.f0)))) & p_42.f0))) , p_891->g_68[0][0]) , (***l_719)) == (void*)0)) | (**p_891->g_233)) && p_891->g_670) == 249UL)))));
                        l_753++;
                        --l_763;
                    }
                }
                else
                { /* block id: 319 */
                    uint32_t l_769 = 0xC71DACBDL;
                    int32_t l_772 = 0x718AE605L;
                    int32_t l_773 = 0x5426397DL;
                    int32_t l_775 = 0L;
                    int32_t l_776 = 1L;
                    int32_t l_777 = (-4L);
                    uint16_t l_778[5];
                    int8_t *l_793 = (void*)0;
                    int8_t *l_794 = &l_774;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_778[i] = 0x27F9L;
                    (*l_655) = (p_41.f0 != (safe_mod_func_int16_t_s_s(p_891->g_768, (-7L))));
                    l_769++;
                    --l_778[3];
                    (*l_655) = (((safe_lshift_func_uint8_t_u_s(((0x8D2B10F72A7E8F7AL || (safe_mul_func_int8_t_s_s(p_891->g_6, ((*l_794) = (l_604[3][2] | (safe_mul_func_int8_t_s_s((l_654 != ((VECTOR(uint16_t, 8))((p_891->g_148++), ((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),uint16_t,((VECTOR(uint16_t, 2))(0x1ECEL, 0x01F2L)).xxxx, (uint16_t)l_789, (uint16_t)p_891->g_407.s7))), ((l_777 = (safe_rshift_func_int16_t_s_s((0x37DC5DF4L ^ ((0xEE2CL && (GROUP_DIVERGE(1, 1) <= (((((l_792[1] != p_891->g_551) && p_43.f0) , (void*)0) != (void*)0) != l_581.s2))) , p_43.f0)), 9))) > p_891->g_682.s7), 0x1894L, 0UL)).s5), l_648.s5))))))) || 0xDB4EF9EB8CF1E388L), 5)) , 1UL) ^ 0x68F4L);
                }
                (*p_45) = (*p_45);
            }
            p_891->g_682.s2 |= (1UL || (safe_sub_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint32_t_u_u(l_648.s0, (safe_mul_func_uint8_t_u_u(p_891->g_670, (((l_601 = l_600[7][5]) ^ (p_41.f0 < ((VECTOR(uint64_t, 4))(l_807.s4266)).x)) , ((((((VECTOR(int8_t, 8))(l_810.yxxxxxxx)).s4 != (((p_42.f0 && ((l_811 != ((l_651.x , (safe_mul_func_int16_t_s_s(p_891->g_306.s2, 0x2A12L))) , (void*)0)) , p_43.f0)) & p_891->g_423.y) == p_43.f0)) || p_891->g_423.x) , l_600[3][1]) & 7UL)))))), 2)), p_891->g_556)), l_638.z)));
            l_814 = (l_603 = ((void*)0 != &l_620));
        }
        return l_774;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_891->g_241 p_891->g_242 p_891->g_78
 * writes:
 */
union U0  func_46(int32_t * p_47, int32_t * p_48, int32_t ** p_49, int64_t  p_50, int32_t * p_51, struct S1 * p_891)
{ /* block id: 231 */
    uint32_t **l_534 = (void*)0;
    uint32_t ***l_535 = &l_534;
    (*l_535) = ((7L ^ 254UL) , l_534);
    return (**p_891->g_241);
}


/* ------------------------------------------ */
/* 
 * reads : p_891->g_109 p_891->g_111 p_891->g_11 p_891->g_305 p_891->g_170 p_891->g_525
 * writes: p_891->g_111 p_891->g_170 p_891->g_68
 */
int32_t ** func_52(uint32_t  p_53, int32_t * p_54, int8_t  p_55, struct S1 * p_891)
{ /* block id: 225 */
    int32_t **l_515 = &p_891->g_111;
    union U0 **l_520[6] = {&p_891->g_242,&p_891->g_242,&p_891->g_242,&p_891->g_242,&p_891->g_242,&p_891->g_242};
    int64_t *l_523 = &p_891->g_266;
    int8_t *l_524 = &p_891->g_170;
    int32_t l_526 = 0x06445DF6L;
    int32_t l_527 = 1L;
    VECTOR(int32_t, 4) l_528 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 3L), 3L);
    int32_t *l_529[2][7] = {{(void*)0,&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0],(void*)0,(void*)0,&p_891->g_68[0][0]},{(void*)0,&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0],(void*)0,(void*)0,&p_891->g_68[0][0]}};
    uint64_t l_530 = 1UL;
    int32_t **l_533 = (void*)0;
    int i, j;
    (*l_515) = p_54;
    (*p_891->g_525) = (+(safe_mod_func_int64_t_s_s((safe_div_func_int8_t_s_s(0x30L, ((*l_524) |= (((((void*)0 != l_520[4]) && ((((VECTOR(uint32_t, 2))(4294967292UL, 0x420517A9L)).odd > ((p_891->g_109 != (**l_515)) <= (((VECTOR(uint32_t, 2))(0xFE39D2C6L, 4294967289UL)).odd ^ 0xB7697300L))) || ((safe_lshift_func_uint8_t_u_s(p_891->g_305[2][4][2], 0)) != (p_55 , ((-6L) <= 0x5737AAA71A2E7B18L))))) , l_523) == l_523)))), 0x13C7BF6A80C44667L)));
    l_530++;
    return l_533;
}


/* ------------------------------------------ */
/* 
 * reads : p_891->g_202
 * writes:
 */
uint64_t  func_58(int64_t  p_59, uint32_t  p_60, struct S1 * p_891)
{ /* block id: 222 */
    int32_t *l_514[6][5][6] = {{{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]}},{{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]}},{{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]}},{{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]}},{{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]}},{{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]},{&p_891->g_11,&p_891->g_11,&p_891->g_68[0][0],&p_891->g_68[0][0],(void*)0,&p_891->g_68[0][0]}}};
    int i, j, k;
    l_514[2][3][2] = l_514[2][3][2];
    return p_891->g_202.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_891->g_34 p_891->g_68 p_891->g_78 p_891->g_101 p_891->g_24 p_891->g_2 p_891->g_11 p_891->g_109 p_891->g_118 p_891->g_121 p_891->g_8 p_891->g_111 p_891->g_36 p_891->g_10 p_891->g_78.f0 p_891->g_170 p_891->g_203 p_891->g_279 p_891->g_227 p_891->g_351 p_891->g_407 p_891->g_172 p_891->g_5 p_891->g_306 p_891->g_148 p_891->g_305 p_891->g_186 p_891->g_461 p_891->g_347 p_891->g_507 p_891->g_510
 * writes: p_891->g_68 p_891->g_2 p_891->g_109 p_891->g_111 p_891->g_36 p_891->g_148 p_891->g_24 p_891->g_170 p_891->g_172 p_891->g_407 p_891->g_266 p_891->g_507 p_891->g_510
 */
uint64_t  func_65(int32_t  p_66, struct S1 * p_891)
{ /* block id: 11 */
    int32_t *l_67 = &p_891->g_68[0][0];
    int32_t l_159 = 0x011D83F6L;
    int64_t l_168 = 0x73E29750D2B45C53L;
    int8_t *l_169 = &p_891->g_170;
    uint8_t l_171[5][8][1] = {{{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL}},{{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL}},{{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL}},{{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL}},{{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL},{0xEFL}}};
    VECTOR(uint32_t, 4) l_185 = (VECTOR(uint32_t, 4))(0x406727EBL, (VECTOR(uint32_t, 2))(0x406727EBL, 5UL), 5UL);
    VECTOR(uint32_t, 8) l_188 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x71DAF935L), 0x71DAF935L), 0x71DAF935L, 1UL, 0x71DAF935L);
    VECTOR(uint32_t, 4) l_190 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 8UL), 8UL);
    union U0 l_270 = {0UL};
    uint16_t *l_273 = (void*)0;
    uint16_t **l_272[10];
    uint16_t ***l_271 = &l_272[3];
    VECTOR(int8_t, 2) l_310 = (VECTOR(int8_t, 2))(0x61L, 0L);
    union U0 l_318 = {1UL};
    int32_t l_325 = 0x1469E337L;
    int32_t l_334 = 0x7601B9EFL;
    int32_t l_339 = 0x201636D4L;
    int32_t l_340 = (-9L);
    int32_t l_344 = 0x6197E14AL;
    int32_t l_346 = (-1L);
    VECTOR(int16_t, 2) l_365 = (VECTOR(int16_t, 2))(1L, (-1L));
    uint32_t *l_370 = (void*)0;
    VECTOR(int32_t, 16) l_374 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x0E41DDE1L), 0x0E41DDE1L), 0x0E41DDE1L, 8L, 0x0E41DDE1L, (VECTOR(int32_t, 2))(8L, 0x0E41DDE1L), (VECTOR(int32_t, 2))(8L, 0x0E41DDE1L), 8L, 0x0E41DDE1L, 8L, 0x0E41DDE1L);
    int8_t l_408 = (-4L);
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_272[i] = &l_273;
    (*l_67) = (~p_891->g_34.z);
    if (((safe_add_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(func_73(l_67, (*l_67), p_66, p_891->g_78[3], p_891), ((p_891->g_78[3].f0 && (p_891->g_172 = (!(l_159 != ((VECTOR(uint64_t, 4))(18446744073709551607UL, ((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(18446744073709551610UL, 18446744073709551609UL)).xyxxxyxy)).s75)), ((VECTOR(uint64_t, 16))((((*l_169) ^= (safe_add_func_uint32_t_u_u(0UL, ((safe_div_func_uint8_t_u_u(((((safe_mul_func_int16_t_s_s((safe_div_func_int64_t_s_s(((p_891->g_78[3].f0 | l_159) && p_66), 0x3931B0DFB425780FL)), p_66)) , 1L) != l_168) == p_891->g_78[3].f0), (-1L))) == p_66)))) >= p_891->g_11), 0x9EF3092C38980C72L, l_171[3][4][0], 0x549D73AB9B9001CCL, ((VECTOR(uint64_t, 8))(0x9527A1DAC05CE42CL)), p_891->g_11, 1UL, 0x81F6309FADE23C6EL, 18446744073709551615UL)).se1))), 18446744073709551606UL)).x)))) <= p_66))) <= FAKE_DIVERGE(p_891->global_0_offset, get_global_id(0), 10)), l_171[3][4][0])) >= 0x57153F65L))
    { /* block id: 55 */
        return p_891->g_34.y;
    }
    else
    { /* block id: 57 */
        int8_t l_180 = 0x3EL;
        VECTOR(uint32_t, 4) l_187 = (VECTOR(uint32_t, 4))(0x9EBED4ACL, (VECTOR(uint32_t, 2))(0x9EBED4ACL, 0x65B8F50EL), 0x65B8F50EL);
        VECTOR(uint32_t, 8) l_189 = (VECTOR(uint32_t, 8))(0x5325D17AL, (VECTOR(uint32_t, 4))(0x5325D17AL, (VECTOR(uint32_t, 2))(0x5325D17AL, 0x0FB461A2L), 0x0FB461A2L), 0x0FB461A2L, 0x5325D17AL, 0x0FB461A2L);
        int32_t l_208 = 0L;
        union U0 *l_223 = (void*)0;
        uint32_t l_226 = 0x3A80E33CL;
        int64_t **l_230 = &p_891->g_203;
        VECTOR(uint32_t, 4) l_255 = (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 0x1A6D3BB0L), 0x1A6D3BB0L);
        int32_t l_265 = 0x2E2DF67BL;
        int32_t l_300 = 1L;
        VECTOR(int8_t, 16) l_311 = (VECTOR(int8_t, 16))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, (-1L)), (-1L)), (-1L), 8L, (-1L), (VECTOR(int8_t, 2))(8L, (-1L)), (VECTOR(int8_t, 2))(8L, (-1L)), 8L, (-1L), 8L, (-1L));
        VECTOR(int8_t, 4) l_314 = (VECTOR(int8_t, 4))(0x67L, (VECTOR(int8_t, 2))(0x67L, 0x7DL), 0x7DL);
        VECTOR(int8_t, 4) l_315 = (VECTOR(int8_t, 4))(0x54L, (VECTOR(int8_t, 2))(0x54L, 0x7DL), 0x7DL);
        int64_t l_327 = 0x5F32D104460A1502L;
        int16_t l_328 = 0L;
        int32_t l_331 = 0x239F8EEAL;
        int32_t l_335 = 0x6AD81E4EL;
        int32_t l_337 = 5L;
        int32_t l_338 = 0x23D9054BL;
        VECTOR(int32_t, 8) l_341 = (VECTOR(int32_t, 8))(0x0CE1C3F0L, (VECTOR(int32_t, 4))(0x0CE1C3F0L, (VECTOR(int32_t, 2))(0x0CE1C3F0L, (-1L)), (-1L)), (-1L), 0x0CE1C3F0L, (-1L));
        VECTOR(int64_t, 4) l_369 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x7B227EC48BEC3298L), 0x7B227EC48BEC3298L);
        VECTOR(uint64_t, 4) l_391 = (VECTOR(uint64_t, 4))(0x297EF9A7D4409042L, (VECTOR(uint64_t, 2))(0x297EF9A7D4409042L, 5UL), 5UL);
        uint64_t *l_426 = (void*)0;
        uint16_t ***l_431 = &l_272[7];
        uint8_t *l_471[3][5] = {{&l_171[3][4][0],&l_171[3][4][0],&l_171[3][4][0],&l_171[3][4][0],&l_171[3][4][0]},{&l_171[3][4][0],&l_171[3][4][0],&l_171[3][4][0],&l_171[3][4][0],&l_171[3][4][0]},{&l_171[3][4][0],&l_171[3][4][0],&l_171[3][4][0],&l_171[3][4][0],&l_171[3][4][0]}};
        uint32_t l_485 = 4294967292UL;
        int i, j;
        for (p_891->g_109 = 0; (p_891->g_109 != 25); ++p_891->g_109)
        { /* block id: 60 */
            uint32_t *l_181 = (void*)0;
            uint32_t *l_182 = (void*)0;
            uint32_t *l_183 = (void*)0;
            uint32_t *l_184 = (void*)0;
            VECTOR(int32_t, 16) l_194 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), (-5L)), (-5L)), (-5L), (-10L), (-5L), (VECTOR(int32_t, 2))((-10L), (-5L)), (VECTOR(int32_t, 2))((-10L), (-5L)), (-10L), (-5L), (-10L), (-5L));
            int64_t *l_204 = (void*)0;
            uint16_t *l_248 = &p_891->g_148;
            int32_t l_302[8];
            union U0 **l_303 = &p_891->g_242;
            int8_t l_329 = 0x0FL;
            int i;
            for (i = 0; i < 8; i++)
                l_302[i] = 0x4B426675L;
            (1 + 1);
        }
        for (l_334 = (-17); (l_334 >= 9); ++l_334)
        { /* block id: 157 */
            int32_t **l_388 = &l_67;
            int32_t *l_394 = &l_344;
            uint64_t *l_401 = (void*)0;
            uint64_t *l_402 = (void*)0;
            uint64_t *l_403 = (void*)0;
            uint64_t *l_404 = (void*)0;
            uint64_t *l_405 = (void*)0;
            uint64_t *l_406 = (void*)0;
            (*l_388) = &l_331;
            if (((((void*)0 != (*l_230)) <= (GROUP_DIVERGE(2, 1) <= p_66)) > (safe_add_func_uint64_t_u_u(p_66, ((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),uint64_t,((VECTOR(uint64_t, 4))(l_391.xywy)).yyzyzzxxwzxxwzxx, (uint64_t)(p_891->g_407.s6 ^= (((safe_mul_func_int8_t_s_s(0L, (l_394 == ((((((safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((*l_67) , p_66), ((safe_rshift_func_uint8_t_u_u((((*l_394) = p_66) >= FAKE_DIVERGE(p_891->local_2_offset, get_local_id(2), 10)), 1)) | p_66))), p_891->g_279.s6)) >= p_891->g_109) | (*l_67)) , p_891->g_227) != (void*)0) , (*p_891->g_351))))) , (void*)0) != (void*)0)), (uint64_t)p_891->g_2.y))).s3))))
            { /* block id: 161 */
                return p_66;
            }
            else
            { /* block id: 163 */
                uint16_t l_409[6][3];
                int i, j;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_409[i][j] = 0x5054L;
                }
                if (l_408)
                    break;
                --l_409[1][1];
            }
            (*l_67) = p_66;
        }
        for (l_346 = 0; (l_346 <= 2); l_346++)
        { /* block id: 171 */
            return p_66;
        }
        for (l_300 = 1; (l_300 <= 2); l_300 = safe_add_func_int64_t_s_s(l_300, 1))
        { /* block id: 176 */
            int32_t l_418 = 0x653066CBL;
            int32_t l_443 = (-1L);
            uint32_t *l_468 = (void*)0;
            uint8_t *l_472[1][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int32_t l_484 = (-1L);
            int32_t *l_490[2][6][3] = {{{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339}},{{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339},{&l_339,(void*)0,&l_339}}};
            uint32_t l_491 = 4294967289UL;
            uint64_t *l_498 = (void*)0;
            uint64_t *l_499 = (void*)0;
            uint64_t *l_500 = (void*)0;
            uint64_t *l_501 = (void*)0;
            uint64_t *l_502 = (void*)0;
            uint64_t *l_503 = (void*)0;
            uint64_t *l_504[4][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            uint16_t l_511[10] = {65535UL,0x23CEL,0xF29FL,0x23CEL,65535UL,65535UL,0x23CEL,0xF29FL,0x23CEL,65535UL};
            int i, j, k;
            for (l_208 = (-9); (l_208 < 22); ++l_208)
            { /* block id: 179 */
                uint64_t **l_427 = &l_426;
                uint8_t *l_428 = &l_171[0][1][0];
                int32_t l_432 = 0x7EFB6252L;
                uint16_t *l_433 = &p_891->g_148;
                int16_t l_435 = 0x0D16L;
                int32_t l_440 = 0x38F442A8L;
                if ((((**l_271) = &p_891->g_148) == ((((p_66 || ((((*l_67) = (((l_418 != (safe_div_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(p_891->g_423.xyww)).y, (FAKE_DIVERGE(p_891->group_0_offset, get_group_id(0), 10) && (safe_lshift_func_int8_t_s_u(((*l_67) == ((((*l_427) = l_426) != (void*)0) | p_891->g_172)), 1))))), (--(*l_428))))) , &p_891->g_269) == (p_66 , l_431))) & l_432) == p_891->g_5)) <= 0x0B06L) < (-1L)) , l_433)))
                { /* block id: 184 */
                    int32_t **l_434 = &p_891->g_111;
                    (*l_434) = &l_325;
                    if (l_435)
                        break;
                    return l_265;
                }
                else
                { /* block id: 188 */
                    int64_t l_441 = 1L;
                    int32_t l_442 = 0x618F356BL;
                    uint8_t l_444 = 0x9AL;
                    int64_t *l_469 = &p_891->g_266;
                    int64_t *l_470 = &l_327;
                    int8_t *l_473 = (void*)0;
                    int32_t *l_474[2][8] = {{&l_159,&l_159,&l_159,&l_159,&l_159,&l_159,&l_159,&l_159},{&l_159,&l_159,&l_159,&l_159,&l_159,&l_159,&l_159,&l_159}};
                    int i, j;
                    for (l_318.f0 = 0; (l_318.f0 == 39); l_318.f0 = safe_add_func_int16_t_s_s(l_318.f0, 7))
                    { /* block id: 191 */
                        int32_t *l_438 = (void*)0;
                        int32_t *l_439[2][9][1] = {{{&l_325},{&l_325},{&l_325},{&l_325},{&l_325},{&l_325},{&l_325},{&l_325},{&l_325}},{{&l_325},{&l_325},{&l_325},{&l_325},{&l_325},{&l_325},{&l_325},{&l_325},{&l_325}}};
                        int i, j, k;
                        ++l_444;
                        (*l_67) = p_66;
                    }
                    if (l_444)
                        continue;
                    l_443 = (((l_331 &= ((~p_891->g_306.sd) == ((safe_mul_func_int8_t_s_s(((((safe_div_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((((~(safe_sub_func_int8_t_s_s((p_891->g_148 > (safe_sub_func_int64_t_s_s(((-4L) & ((safe_sub_func_uint8_t_u_u((((0x6472FF049215A0D9L && p_66) && ((VECTOR(int8_t, 16))(p_891->g_461.yyxyyxyxyxyxxxxy)).s6) & p_66), (-1L))) & (((((~((safe_mul_func_int16_t_s_s((((*l_470) = (((*l_469) = (((safe_div_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_891->group_2_offset, get_group_id(2), 10), 0x5C96L)), ((VECTOR(uint8_t, 8))(0xD2L, 0UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 16))(0x65L, (+((*l_428) = (l_468 != l_67))), l_341.s5, 0x92L, ((VECTOR(uint8_t, 8))(0x3FL)), 251UL, ((VECTOR(uint8_t, 2))(0x56L)), 0x5DL)).even, ((VECTOR(uint8_t, 8))(0x86L)), ((VECTOR(uint8_t, 8))(8UL))))).hi)), 1UL, 0xDDL)).s4)) != p_891->g_305[1][5][5]) && p_66)) <= p_66)) && l_311.s2), 0x3C7FL)) > l_444)) , l_471[2][0]) == l_472[0][1]) != 0x67A9DB88L) < l_443))), p_891->g_186.s0))), p_891->g_461.x))) , l_473) == &l_408), p_66)), l_443)) , p_66) , 0xF7F4287DE9CD4ACFL) > p_891->g_36.x), p_891->g_24.s9)) && (-1L)))) & FAKE_DIVERGE(p_891->global_2_offset, get_global_id(2), 10)) , l_442);
                }
                for (l_346 = 0; (l_346 != (-25)); l_346 = safe_sub_func_uint8_t_u_u(l_346, 7))
                { /* block id: 204 */
                    int32_t *l_477 = &l_159;
                    int32_t *l_478 = (void*)0;
                    int32_t *l_479 = &p_891->g_68[2][0];
                    int32_t *l_480 = (void*)0;
                    int32_t *l_481 = (void*)0;
                    int32_t *l_482 = &l_339;
                    int32_t *l_483[7][2] = {{&l_340,(void*)0},{&l_340,(void*)0},{&l_340,(void*)0},{&l_340,(void*)0},{&l_340,(void*)0},{&l_340,(void*)0},{&l_340,(void*)0}};
                    int i, j;
                    ++l_485;
                    for (l_484 = (-23); (l_484 >= (-18)); ++l_484)
                    { /* block id: 208 */
                        return p_891->g_347;
                    }
                }
                (*l_67) &= (-9L);
            }
            ++l_491;
            (*l_67) ^= (safe_mod_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((p_891->g_510 ^= (++p_891->g_507)), 7UL)), p_66));
            ++l_511[6];
        }
    }
    return p_66;
}


/* ------------------------------------------ */
/* 
 * reads : p_891->g_34 p_891->g_101 p_891->g_24 p_891->g_2 p_891->g_68 p_891->g_11 p_891->g_109 p_891->g_118 p_891->g_121 p_891->g_8 p_891->g_111 p_891->g_36 p_891->g_10
 * writes: p_891->g_2 p_891->g_109 p_891->g_68 p_891->g_111 p_891->g_36 p_891->g_148 p_891->g_24
 */
uint8_t  func_73(int32_t * p_74, int8_t  p_75, uint32_t  p_76, union U0  p_77, struct S1 * p_891)
{ /* block id: 13 */
    int32_t *l_100 = (void*)0;
    int32_t l_102 = (-9L);
    VECTOR(uint8_t, 16) l_119 = (VECTOR(uint8_t, 16))(0x65L, (VECTOR(uint8_t, 4))(0x65L, (VECTOR(uint8_t, 2))(0x65L, 252UL), 252UL), 252UL, 0x65L, 252UL, (VECTOR(uint8_t, 2))(0x65L, 252UL), (VECTOR(uint8_t, 2))(0x65L, 252UL), 0x65L, 252UL, 0x65L, 252UL);
    VECTOR(uint16_t, 4) l_139 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65533UL), 65533UL);
    VECTOR(int16_t, 8) l_144 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4FF9L), 0x4FF9L), 0x4FF9L, 1L, 0x4FF9L);
    int i;
    for (p_77.f0 = 28; (p_77.f0 > 3); --p_77.f0)
    { /* block id: 16 */
        VECTOR(int32_t, 4) l_93 = (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x654EA11AL), 0x654EA11AL);
        int32_t *l_99 = &p_891->g_68[0][0];
        int32_t **l_98[9] = {&l_99,&l_99,&l_99,&l_99,&l_99,&l_99,&l_99,&l_99,&l_99};
        uint32_t *l_103 = (void*)0;
        uint32_t *l_104 = (void*)0;
        uint32_t *l_105 = (void*)0;
        uint32_t *l_106 = (void*)0;
        uint32_t *l_107[10][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
        int8_t *l_108 = &p_891->g_109;
        volatile int32_t *l_117[4][8][1] = {{{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9}},{{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9}},{{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9}},{{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9},{&p_891->g_9}}};
        int8_t l_145 = 0x23L;
        uint32_t l_146 = 4294967295UL;
        int i, j, k;
        if ((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(p_891->g_34.z, 9)), (((safe_mod_func_uint8_t_u_u(0x57L, FAKE_DIVERGE(p_891->group_1_offset, get_group_id(1), 10))) ^ (p_74 == (void*)0)) & (p_75 | (safe_sub_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_div_func_int8_t_s_s(((*l_108) = (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_93.yyyywyxz)).even)).y != (p_891->g_2.z |= (safe_add_func_int8_t_s_s((((safe_sub_func_int16_t_s_s((((l_100 = &p_891->g_11) != &p_891->g_68[1][0]) >= p_75), (p_891->g_101 != (void*)0))) > p_891->g_24.s5) ^ 0x54BE8D2CL), l_102))))), 2UL)), p_76)), p_891->g_68[2][0])))))))
        { /* block id: 20 */
            int32_t l_110[4] = {0x01D562F9L,0x01D562F9L,0x01D562F9L,0x01D562F9L};
            int i;
            l_110[0] ^= (*l_100);
            (*l_99) = 0x18A3CEE8L;
        }
        else
        { /* block id: 23 */
            int32_t *l_112 = (void*)0;
            int32_t l_149 = 1L;
            p_74 = (l_112 = (p_891->g_111 = (void*)0));
            for (p_891->g_109 = 0; (p_891->g_109 == 24); p_891->g_109 = safe_add_func_int16_t_s_s(p_891->g_109, 7))
            { /* block id: 29 */
                VECTOR(int32_t, 8) l_120 = (VECTOR(int32_t, 8))(0x5F1EE036L, (VECTOR(int32_t, 4))(0x5F1EE036L, (VECTOR(int32_t, 2))(0x5F1EE036L, 0x5709BDCCL), 0x5709BDCCL), 0x5709BDCCL, 0x5F1EE036L, 0x5709BDCCL);
                int16_t *l_124 = (void*)0;
                int16_t *l_125[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int64_t *l_132 = (void*)0;
                int64_t *l_133 = (void*)0;
                int64_t *l_134 = (void*)0;
                int64_t *l_135 = (void*)0;
                int64_t *l_136 = (void*)0;
                int64_t *l_137 = (void*)0;
                int64_t *l_138[10][8][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                uint16_t *l_147[3][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
                uint8_t *l_154 = (void*)0;
                uint8_t *l_155 = (void*)0;
                uint8_t *l_156 = (void*)0;
                int i, j, k;
                for (l_102 = (-23); (l_102 != (-29)); l_102 = safe_sub_func_int64_t_s_s(l_102, 6))
                { /* block id: 32 */
                    if (p_75)
                        break;
                    l_117[0][1][0] = &p_891->g_10;
                    p_891->g_111 = (void*)0;
                }
                l_149 &= ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 2))(p_891->g_118.s54)).yxxy, (int32_t)l_119.s3))).wwwzzwwx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_120.s14)))).xxxxyxyx))), ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(p_891->g_121.s67dca9e6)).s3247065453764242, ((VECTOR(int32_t, 8))(0x34F7B726L, 0x0D62C3E9L, (((safe_mul_func_int16_t_s_s((l_120.s6 = ((*l_99) = ((void*)0 == &p_74))), (safe_rshift_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(((p_891->g_36.x = 1L) >= (+(((VECTOR(uint16_t, 2))(l_139.zz)).odd <= (safe_sub_func_int32_t_s_s((((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 8))(0xC4A0L, (p_891->g_148 = (((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_144.s4734624662473345)).odd)).s6, ((l_145 = p_891->g_8) ^ 0x3B5FL))) == l_146) && (p_891->g_118.s6 , p_75))), ((VECTOR(uint16_t, 2))(4UL)), ((VECTOR(uint16_t, 2))(0xA0EEL)), 1UL, 0x7DD5L)).s20, ((VECTOR(uint16_t, 2))(0x1F86L))))).yxxyyxxyxxyxxyxy, ((VECTOR(uint32_t, 16))(0xAF1AC7F9L)), ((VECTOR(uint32_t, 16))(0x73E17168L))))).sc , 6L), p_891->g_24.sd))))), p_75)) > 0L), p_75)))) , (void*)0) == p_891->g_111), 0x1F8A6136L, ((VECTOR(int32_t, 4))(0L)))).s6553561431557704))).s33, ((VECTOR(int32_t, 2))((-1L)))))).xxyxyxyx))).s7;
                (*l_99) = (safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_891->global_1_offset, get_global_id(1), 10), (safe_mod_func_uint64_t_u_u(((-6L) < ((p_891->g_24.sd = p_891->g_68[2][0]) & ((p_891->g_118.s5 & p_891->g_36.y) , (safe_mul_func_int16_t_s_s((((p_74 = &l_149) != (((p_891->g_118.s3 ^ l_149) == (p_76 || FAKE_DIVERGE(p_891->local_2_offset, get_local_id(2), 10))) , &p_891->g_5)) ^ p_77.f0), (-8L)))))), 18446744073709551615UL))));
                return p_76;
            }
            if (p_891->g_10)
                break;
            l_112 = p_74;
        }
    }
    return p_76;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_892;
    struct S1* p_891 = &c_892;
    struct S1 c_893 = {
        (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 6UL), 6UL), // p_891->g_2
        1L, // p_891->g_4
        1L, // p_891->g_5
        0x58A94B2AL, // p_891->g_6
        0x56092F64L, // p_891->g_7
        0L, // p_891->g_8
        (-5L), // p_891->g_9
        0x1EEDA585L, // p_891->g_10
        0x5357F451L, // p_891->g_11
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xC4L), 0xC4L), 0xC4L, 255UL, 0xC4L, (VECTOR(uint8_t, 2))(255UL, 0xC4L), (VECTOR(uint8_t, 2))(255UL, 0xC4L), 255UL, 0xC4L, 255UL, 0xC4L), // p_891->g_24
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0L), 0L), // p_891->g_34
        (VECTOR(int64_t, 2))((-1L), 0L), // p_891->g_36
        (VECTOR(uint64_t, 2))(0x281B1D0B827BE627L, 0x3D12EF61160DD4F9L), // p_891->g_37
        {{1L},{1L},{1L}}, // p_891->g_68
        {{0x46680AE02F11925CL},{0x46680AE02F11925CL},{0x46680AE02F11925CL},{0x46680AE02F11925CL},{0x46680AE02F11925CL},{0x46680AE02F11925CL},{0x46680AE02F11925CL},{0x46680AE02F11925CL},{0x46680AE02F11925CL},{0x46680AE02F11925CL}}, // p_891->g_78
        (void*)0, // p_891->g_101
        0x18L, // p_891->g_109
        &p_891->g_68[0][0], // p_891->g_111
        (VECTOR(int32_t, 8))(0x0D4C3CCEL, (VECTOR(int32_t, 4))(0x0D4C3CCEL, (VECTOR(int32_t, 2))(0x0D4C3CCEL, (-6L)), (-6L)), (-6L), 0x0D4C3CCEL, (-6L)), // p_891->g_118
        (VECTOR(int32_t, 16))(0x533915DCL, (VECTOR(int32_t, 4))(0x533915DCL, (VECTOR(int32_t, 2))(0x533915DCL, 0x5DFF904CL), 0x5DFF904CL), 0x5DFF904CL, 0x533915DCL, 0x5DFF904CL, (VECTOR(int32_t, 2))(0x533915DCL, 0x5DFF904CL), (VECTOR(int32_t, 2))(0x533915DCL, 0x5DFF904CL), 0x533915DCL, 0x5DFF904CL, 0x533915DCL, 0x5DFF904CL), // p_891->g_121
        0xA907L, // p_891->g_148
        0x4FL, // p_891->g_170
        (-10L), // p_891->g_172
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967290UL), 4294967290UL), 4294967290UL, 4294967295UL, 4294967290UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967290UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967290UL), 4294967295UL, 4294967290UL, 4294967295UL, 4294967290UL), // p_891->g_186
        (VECTOR(uint32_t, 2))(4294967295UL, 0x16BE923FL), // p_891->g_191
        (VECTOR(uint16_t, 2))(65531UL, 0x5749L), // p_891->g_199
        (VECTOR(int16_t, 16))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 1L), 1L), 1L, (-5L), 1L, (VECTOR(int16_t, 2))((-5L), 1L), (VECTOR(int16_t, 2))((-5L), 1L), (-5L), 1L, (-5L), 1L), // p_891->g_200
        (VECTOR(int16_t, 16))(0x743DL, (VECTOR(int16_t, 4))(0x743DL, (VECTOR(int16_t, 2))(0x743DL, 0x00C5L), 0x00C5L), 0x00C5L, 0x743DL, 0x00C5L, (VECTOR(int16_t, 2))(0x743DL, 0x00C5L), (VECTOR(int16_t, 2))(0x743DL, 0x00C5L), 0x743DL, 0x00C5L, 0x743DL, 0x00C5L), // p_891->g_201
        (VECTOR(int16_t, 4))(0x3C82L, (VECTOR(int16_t, 2))(0x3C82L, 1L), 1L), // p_891->g_202
        (void*)0, // p_891->g_203
        4294967291UL, // p_891->g_214
        (void*)0, // p_891->g_227
        {{(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111},{(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111},{(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111},{(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111},{(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111},{(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111},{(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111},{(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111},{(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111,(void*)0,(void*)0,&p_891->g_111}}, // p_891->g_232
        &p_891->g_111, // p_891->g_233
        &p_891->g_78[5], // p_891->g_242
        &p_891->g_242, // p_891->g_241
        0x0FBB43A6AA0306D4L, // p_891->g_266
        (void*)0, // p_891->g_269
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_891->g_268
        (VECTOR(int8_t, 16))(0x1CL, (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 1L), 1L), 1L, 0x1CL, 1L, (VECTOR(int8_t, 2))(0x1CL, 1L), (VECTOR(int8_t, 2))(0x1CL, 1L), 0x1CL, 1L, 0x1CL, 1L), // p_891->g_279
        {{{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L}},{{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L}},{{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L},{0x5EBB02EEL,0x1870310AL,0x615F2077L,0x3CA9C80DL,7L,0L,0x3A2C10CEL,0L,1L}}}, // p_891->g_305
        (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0x9AA3ED2BL), 0x9AA3ED2BL), 0x9AA3ED2BL, 5UL, 0x9AA3ED2BL, (VECTOR(uint32_t, 2))(5UL, 0x9AA3ED2BL), (VECTOR(uint32_t, 2))(5UL, 0x9AA3ED2BL), 5UL, 0x9AA3ED2BL, 5UL, 0x9AA3ED2BL), // p_891->g_306
        (VECTOR(int8_t, 2))((-1L), 0x23L), // p_891->g_309
        1UL, // p_891->g_347
        &p_891->g_111, // p_891->g_351
        0xD0FD4411L, // p_891->g_376
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x74D44ACAL), 0x74D44ACAL), 0x74D44ACAL, (-1L), 0x74D44ACAL), // p_891->g_407
        (VECTOR(uint8_t, 4))(0x9DL, (VECTOR(uint8_t, 2))(0x9DL, 1UL), 1UL), // p_891->g_423
        (VECTOR(int8_t, 2))((-4L), 0x44L), // p_891->g_461
        0x6123L, // p_891->g_505
        0x0AB4L, // p_891->g_506
        0x17EBE34DAC4A7175L, // p_891->g_507
        0x2D2BL, // p_891->g_510
        &p_891->g_68[1][0], // p_891->g_525
        (void*)0, // p_891->g_552
        &p_891->g_552, // p_891->g_551
        4294967293UL, // p_891->g_556
        0x5EL, // p_891->g_594
        (VECTOR(int64_t, 2))(0x419AA43380BFD8FBL, 6L), // p_891->g_637
        (void*)0, // p_891->g_639
        1L, // p_891->g_670
        (VECTOR(int32_t, 2))(1L, (-3L)), // p_891->g_680
        (VECTOR(int32_t, 2))(0x0D56F6B9L, 0x46E85374L), // p_891->g_681
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x232C42D4L), 0x232C42D4L), 0x232C42D4L, (-1L), 0x232C42D4L), // p_891->g_682
        (-1L), // p_891->g_684
        (VECTOR(uint8_t, 4))(0x8BL, (VECTOR(uint8_t, 2))(0x8BL, 0x10L), 0x10L), // p_891->g_738
        0L, // p_891->g_752
        0x7A21L, // p_891->g_768
        &p_891->g_111, // p_891->g_825
        (VECTOR(int32_t, 4))(0x6F93B5C9L, (VECTOR(int32_t, 2))(0x6F93B5C9L, 0x12DFB146L), 0x12DFB146L), // p_891->g_841
        (VECTOR(uint8_t, 8))(0xB3L, (VECTOR(uint8_t, 4))(0xB3L, (VECTOR(uint8_t, 2))(0xB3L, 0UL), 0UL), 0UL, 0xB3L, 0UL), // p_891->g_844
        (VECTOR(uint8_t, 2))(0UL, 255UL), // p_891->g_845
        (VECTOR(uint8_t, 4))(0xB9L, (VECTOR(uint8_t, 2))(0xB9L, 4UL), 4UL), // p_891->g_846
        (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x71F71E1FL), 0x71F71E1FL), // p_891->g_850
        &p_891->g_111, // p_891->g_875
        sequence_input[get_global_id(0)], // p_891->global_0_offset
        sequence_input[get_global_id(1)], // p_891->global_1_offset
        sequence_input[get_global_id(2)], // p_891->global_2_offset
        sequence_input[get_local_id(0)], // p_891->local_0_offset
        sequence_input[get_local_id(1)], // p_891->local_1_offset
        sequence_input[get_local_id(2)], // p_891->local_2_offset
        sequence_input[get_group_id(0)], // p_891->group_0_offset
        sequence_input[get_group_id(1)], // p_891->group_1_offset
        sequence_input[get_group_id(2)], // p_891->group_2_offset
    };
    c_892 = c_893;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_891);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_891->g_2.x, "p_891->g_2.x", print_hash_value);
    transparent_crc(p_891->g_2.y, "p_891->g_2.y", print_hash_value);
    transparent_crc(p_891->g_2.z, "p_891->g_2.z", print_hash_value);
    transparent_crc(p_891->g_2.w, "p_891->g_2.w", print_hash_value);
    transparent_crc(p_891->g_4, "p_891->g_4", print_hash_value);
    transparent_crc(p_891->g_5, "p_891->g_5", print_hash_value);
    transparent_crc(p_891->g_6, "p_891->g_6", print_hash_value);
    transparent_crc(p_891->g_7, "p_891->g_7", print_hash_value);
    transparent_crc(p_891->g_8, "p_891->g_8", print_hash_value);
    transparent_crc(p_891->g_9, "p_891->g_9", print_hash_value);
    transparent_crc(p_891->g_10, "p_891->g_10", print_hash_value);
    transparent_crc(p_891->g_11, "p_891->g_11", print_hash_value);
    transparent_crc(p_891->g_24.s0, "p_891->g_24.s0", print_hash_value);
    transparent_crc(p_891->g_24.s1, "p_891->g_24.s1", print_hash_value);
    transparent_crc(p_891->g_24.s2, "p_891->g_24.s2", print_hash_value);
    transparent_crc(p_891->g_24.s3, "p_891->g_24.s3", print_hash_value);
    transparent_crc(p_891->g_24.s4, "p_891->g_24.s4", print_hash_value);
    transparent_crc(p_891->g_24.s5, "p_891->g_24.s5", print_hash_value);
    transparent_crc(p_891->g_24.s6, "p_891->g_24.s6", print_hash_value);
    transparent_crc(p_891->g_24.s7, "p_891->g_24.s7", print_hash_value);
    transparent_crc(p_891->g_24.s8, "p_891->g_24.s8", print_hash_value);
    transparent_crc(p_891->g_24.s9, "p_891->g_24.s9", print_hash_value);
    transparent_crc(p_891->g_24.sa, "p_891->g_24.sa", print_hash_value);
    transparent_crc(p_891->g_24.sb, "p_891->g_24.sb", print_hash_value);
    transparent_crc(p_891->g_24.sc, "p_891->g_24.sc", print_hash_value);
    transparent_crc(p_891->g_24.sd, "p_891->g_24.sd", print_hash_value);
    transparent_crc(p_891->g_24.se, "p_891->g_24.se", print_hash_value);
    transparent_crc(p_891->g_24.sf, "p_891->g_24.sf", print_hash_value);
    transparent_crc(p_891->g_34.x, "p_891->g_34.x", print_hash_value);
    transparent_crc(p_891->g_34.y, "p_891->g_34.y", print_hash_value);
    transparent_crc(p_891->g_34.z, "p_891->g_34.z", print_hash_value);
    transparent_crc(p_891->g_34.w, "p_891->g_34.w", print_hash_value);
    transparent_crc(p_891->g_36.x, "p_891->g_36.x", print_hash_value);
    transparent_crc(p_891->g_36.y, "p_891->g_36.y", print_hash_value);
    transparent_crc(p_891->g_37.x, "p_891->g_37.x", print_hash_value);
    transparent_crc(p_891->g_37.y, "p_891->g_37.y", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_891->g_68[i][j], "p_891->g_68[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_891->g_78[i].f0, "p_891->g_78[i].f0", print_hash_value);

    }
    transparent_crc(p_891->g_109, "p_891->g_109", print_hash_value);
    transparent_crc(p_891->g_118.s0, "p_891->g_118.s0", print_hash_value);
    transparent_crc(p_891->g_118.s1, "p_891->g_118.s1", print_hash_value);
    transparent_crc(p_891->g_118.s2, "p_891->g_118.s2", print_hash_value);
    transparent_crc(p_891->g_118.s3, "p_891->g_118.s3", print_hash_value);
    transparent_crc(p_891->g_118.s4, "p_891->g_118.s4", print_hash_value);
    transparent_crc(p_891->g_118.s5, "p_891->g_118.s5", print_hash_value);
    transparent_crc(p_891->g_118.s6, "p_891->g_118.s6", print_hash_value);
    transparent_crc(p_891->g_118.s7, "p_891->g_118.s7", print_hash_value);
    transparent_crc(p_891->g_121.s0, "p_891->g_121.s0", print_hash_value);
    transparent_crc(p_891->g_121.s1, "p_891->g_121.s1", print_hash_value);
    transparent_crc(p_891->g_121.s2, "p_891->g_121.s2", print_hash_value);
    transparent_crc(p_891->g_121.s3, "p_891->g_121.s3", print_hash_value);
    transparent_crc(p_891->g_121.s4, "p_891->g_121.s4", print_hash_value);
    transparent_crc(p_891->g_121.s5, "p_891->g_121.s5", print_hash_value);
    transparent_crc(p_891->g_121.s6, "p_891->g_121.s6", print_hash_value);
    transparent_crc(p_891->g_121.s7, "p_891->g_121.s7", print_hash_value);
    transparent_crc(p_891->g_121.s8, "p_891->g_121.s8", print_hash_value);
    transparent_crc(p_891->g_121.s9, "p_891->g_121.s9", print_hash_value);
    transparent_crc(p_891->g_121.sa, "p_891->g_121.sa", print_hash_value);
    transparent_crc(p_891->g_121.sb, "p_891->g_121.sb", print_hash_value);
    transparent_crc(p_891->g_121.sc, "p_891->g_121.sc", print_hash_value);
    transparent_crc(p_891->g_121.sd, "p_891->g_121.sd", print_hash_value);
    transparent_crc(p_891->g_121.se, "p_891->g_121.se", print_hash_value);
    transparent_crc(p_891->g_121.sf, "p_891->g_121.sf", print_hash_value);
    transparent_crc(p_891->g_148, "p_891->g_148", print_hash_value);
    transparent_crc(p_891->g_170, "p_891->g_170", print_hash_value);
    transparent_crc(p_891->g_172, "p_891->g_172", print_hash_value);
    transparent_crc(p_891->g_186.s0, "p_891->g_186.s0", print_hash_value);
    transparent_crc(p_891->g_186.s1, "p_891->g_186.s1", print_hash_value);
    transparent_crc(p_891->g_186.s2, "p_891->g_186.s2", print_hash_value);
    transparent_crc(p_891->g_186.s3, "p_891->g_186.s3", print_hash_value);
    transparent_crc(p_891->g_186.s4, "p_891->g_186.s4", print_hash_value);
    transparent_crc(p_891->g_186.s5, "p_891->g_186.s5", print_hash_value);
    transparent_crc(p_891->g_186.s6, "p_891->g_186.s6", print_hash_value);
    transparent_crc(p_891->g_186.s7, "p_891->g_186.s7", print_hash_value);
    transparent_crc(p_891->g_186.s8, "p_891->g_186.s8", print_hash_value);
    transparent_crc(p_891->g_186.s9, "p_891->g_186.s9", print_hash_value);
    transparent_crc(p_891->g_186.sa, "p_891->g_186.sa", print_hash_value);
    transparent_crc(p_891->g_186.sb, "p_891->g_186.sb", print_hash_value);
    transparent_crc(p_891->g_186.sc, "p_891->g_186.sc", print_hash_value);
    transparent_crc(p_891->g_186.sd, "p_891->g_186.sd", print_hash_value);
    transparent_crc(p_891->g_186.se, "p_891->g_186.se", print_hash_value);
    transparent_crc(p_891->g_186.sf, "p_891->g_186.sf", print_hash_value);
    transparent_crc(p_891->g_191.x, "p_891->g_191.x", print_hash_value);
    transparent_crc(p_891->g_191.y, "p_891->g_191.y", print_hash_value);
    transparent_crc(p_891->g_199.x, "p_891->g_199.x", print_hash_value);
    transparent_crc(p_891->g_199.y, "p_891->g_199.y", print_hash_value);
    transparent_crc(p_891->g_200.s0, "p_891->g_200.s0", print_hash_value);
    transparent_crc(p_891->g_200.s1, "p_891->g_200.s1", print_hash_value);
    transparent_crc(p_891->g_200.s2, "p_891->g_200.s2", print_hash_value);
    transparent_crc(p_891->g_200.s3, "p_891->g_200.s3", print_hash_value);
    transparent_crc(p_891->g_200.s4, "p_891->g_200.s4", print_hash_value);
    transparent_crc(p_891->g_200.s5, "p_891->g_200.s5", print_hash_value);
    transparent_crc(p_891->g_200.s6, "p_891->g_200.s6", print_hash_value);
    transparent_crc(p_891->g_200.s7, "p_891->g_200.s7", print_hash_value);
    transparent_crc(p_891->g_200.s8, "p_891->g_200.s8", print_hash_value);
    transparent_crc(p_891->g_200.s9, "p_891->g_200.s9", print_hash_value);
    transparent_crc(p_891->g_200.sa, "p_891->g_200.sa", print_hash_value);
    transparent_crc(p_891->g_200.sb, "p_891->g_200.sb", print_hash_value);
    transparent_crc(p_891->g_200.sc, "p_891->g_200.sc", print_hash_value);
    transparent_crc(p_891->g_200.sd, "p_891->g_200.sd", print_hash_value);
    transparent_crc(p_891->g_200.se, "p_891->g_200.se", print_hash_value);
    transparent_crc(p_891->g_200.sf, "p_891->g_200.sf", print_hash_value);
    transparent_crc(p_891->g_201.s0, "p_891->g_201.s0", print_hash_value);
    transparent_crc(p_891->g_201.s1, "p_891->g_201.s1", print_hash_value);
    transparent_crc(p_891->g_201.s2, "p_891->g_201.s2", print_hash_value);
    transparent_crc(p_891->g_201.s3, "p_891->g_201.s3", print_hash_value);
    transparent_crc(p_891->g_201.s4, "p_891->g_201.s4", print_hash_value);
    transparent_crc(p_891->g_201.s5, "p_891->g_201.s5", print_hash_value);
    transparent_crc(p_891->g_201.s6, "p_891->g_201.s6", print_hash_value);
    transparent_crc(p_891->g_201.s7, "p_891->g_201.s7", print_hash_value);
    transparent_crc(p_891->g_201.s8, "p_891->g_201.s8", print_hash_value);
    transparent_crc(p_891->g_201.s9, "p_891->g_201.s9", print_hash_value);
    transparent_crc(p_891->g_201.sa, "p_891->g_201.sa", print_hash_value);
    transparent_crc(p_891->g_201.sb, "p_891->g_201.sb", print_hash_value);
    transparent_crc(p_891->g_201.sc, "p_891->g_201.sc", print_hash_value);
    transparent_crc(p_891->g_201.sd, "p_891->g_201.sd", print_hash_value);
    transparent_crc(p_891->g_201.se, "p_891->g_201.se", print_hash_value);
    transparent_crc(p_891->g_201.sf, "p_891->g_201.sf", print_hash_value);
    transparent_crc(p_891->g_202.x, "p_891->g_202.x", print_hash_value);
    transparent_crc(p_891->g_202.y, "p_891->g_202.y", print_hash_value);
    transparent_crc(p_891->g_202.z, "p_891->g_202.z", print_hash_value);
    transparent_crc(p_891->g_202.w, "p_891->g_202.w", print_hash_value);
    transparent_crc(p_891->g_214, "p_891->g_214", print_hash_value);
    transparent_crc(p_891->g_266, "p_891->g_266", print_hash_value);
    transparent_crc(p_891->g_279.s0, "p_891->g_279.s0", print_hash_value);
    transparent_crc(p_891->g_279.s1, "p_891->g_279.s1", print_hash_value);
    transparent_crc(p_891->g_279.s2, "p_891->g_279.s2", print_hash_value);
    transparent_crc(p_891->g_279.s3, "p_891->g_279.s3", print_hash_value);
    transparent_crc(p_891->g_279.s4, "p_891->g_279.s4", print_hash_value);
    transparent_crc(p_891->g_279.s5, "p_891->g_279.s5", print_hash_value);
    transparent_crc(p_891->g_279.s6, "p_891->g_279.s6", print_hash_value);
    transparent_crc(p_891->g_279.s7, "p_891->g_279.s7", print_hash_value);
    transparent_crc(p_891->g_279.s8, "p_891->g_279.s8", print_hash_value);
    transparent_crc(p_891->g_279.s9, "p_891->g_279.s9", print_hash_value);
    transparent_crc(p_891->g_279.sa, "p_891->g_279.sa", print_hash_value);
    transparent_crc(p_891->g_279.sb, "p_891->g_279.sb", print_hash_value);
    transparent_crc(p_891->g_279.sc, "p_891->g_279.sc", print_hash_value);
    transparent_crc(p_891->g_279.sd, "p_891->g_279.sd", print_hash_value);
    transparent_crc(p_891->g_279.se, "p_891->g_279.se", print_hash_value);
    transparent_crc(p_891->g_279.sf, "p_891->g_279.sf", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_891->g_305[i][j][k], "p_891->g_305[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_891->g_306.s0, "p_891->g_306.s0", print_hash_value);
    transparent_crc(p_891->g_306.s1, "p_891->g_306.s1", print_hash_value);
    transparent_crc(p_891->g_306.s2, "p_891->g_306.s2", print_hash_value);
    transparent_crc(p_891->g_306.s3, "p_891->g_306.s3", print_hash_value);
    transparent_crc(p_891->g_306.s4, "p_891->g_306.s4", print_hash_value);
    transparent_crc(p_891->g_306.s5, "p_891->g_306.s5", print_hash_value);
    transparent_crc(p_891->g_306.s6, "p_891->g_306.s6", print_hash_value);
    transparent_crc(p_891->g_306.s7, "p_891->g_306.s7", print_hash_value);
    transparent_crc(p_891->g_306.s8, "p_891->g_306.s8", print_hash_value);
    transparent_crc(p_891->g_306.s9, "p_891->g_306.s9", print_hash_value);
    transparent_crc(p_891->g_306.sa, "p_891->g_306.sa", print_hash_value);
    transparent_crc(p_891->g_306.sb, "p_891->g_306.sb", print_hash_value);
    transparent_crc(p_891->g_306.sc, "p_891->g_306.sc", print_hash_value);
    transparent_crc(p_891->g_306.sd, "p_891->g_306.sd", print_hash_value);
    transparent_crc(p_891->g_306.se, "p_891->g_306.se", print_hash_value);
    transparent_crc(p_891->g_306.sf, "p_891->g_306.sf", print_hash_value);
    transparent_crc(p_891->g_309.x, "p_891->g_309.x", print_hash_value);
    transparent_crc(p_891->g_309.y, "p_891->g_309.y", print_hash_value);
    transparent_crc(p_891->g_347, "p_891->g_347", print_hash_value);
    transparent_crc(p_891->g_376, "p_891->g_376", print_hash_value);
    transparent_crc(p_891->g_407.s0, "p_891->g_407.s0", print_hash_value);
    transparent_crc(p_891->g_407.s1, "p_891->g_407.s1", print_hash_value);
    transparent_crc(p_891->g_407.s2, "p_891->g_407.s2", print_hash_value);
    transparent_crc(p_891->g_407.s3, "p_891->g_407.s3", print_hash_value);
    transparent_crc(p_891->g_407.s4, "p_891->g_407.s4", print_hash_value);
    transparent_crc(p_891->g_407.s5, "p_891->g_407.s5", print_hash_value);
    transparent_crc(p_891->g_407.s6, "p_891->g_407.s6", print_hash_value);
    transparent_crc(p_891->g_407.s7, "p_891->g_407.s7", print_hash_value);
    transparent_crc(p_891->g_423.x, "p_891->g_423.x", print_hash_value);
    transparent_crc(p_891->g_423.y, "p_891->g_423.y", print_hash_value);
    transparent_crc(p_891->g_423.z, "p_891->g_423.z", print_hash_value);
    transparent_crc(p_891->g_423.w, "p_891->g_423.w", print_hash_value);
    transparent_crc(p_891->g_461.x, "p_891->g_461.x", print_hash_value);
    transparent_crc(p_891->g_461.y, "p_891->g_461.y", print_hash_value);
    transparent_crc(p_891->g_505, "p_891->g_505", print_hash_value);
    transparent_crc(p_891->g_506, "p_891->g_506", print_hash_value);
    transparent_crc(p_891->g_507, "p_891->g_507", print_hash_value);
    transparent_crc(p_891->g_510, "p_891->g_510", print_hash_value);
    transparent_crc(p_891->g_556, "p_891->g_556", print_hash_value);
    transparent_crc(p_891->g_594, "p_891->g_594", print_hash_value);
    transparent_crc(p_891->g_637.x, "p_891->g_637.x", print_hash_value);
    transparent_crc(p_891->g_637.y, "p_891->g_637.y", print_hash_value);
    transparent_crc(p_891->g_670, "p_891->g_670", print_hash_value);
    transparent_crc(p_891->g_680.x, "p_891->g_680.x", print_hash_value);
    transparent_crc(p_891->g_680.y, "p_891->g_680.y", print_hash_value);
    transparent_crc(p_891->g_681.x, "p_891->g_681.x", print_hash_value);
    transparent_crc(p_891->g_681.y, "p_891->g_681.y", print_hash_value);
    transparent_crc(p_891->g_682.s0, "p_891->g_682.s0", print_hash_value);
    transparent_crc(p_891->g_682.s1, "p_891->g_682.s1", print_hash_value);
    transparent_crc(p_891->g_682.s2, "p_891->g_682.s2", print_hash_value);
    transparent_crc(p_891->g_682.s3, "p_891->g_682.s3", print_hash_value);
    transparent_crc(p_891->g_682.s4, "p_891->g_682.s4", print_hash_value);
    transparent_crc(p_891->g_682.s5, "p_891->g_682.s5", print_hash_value);
    transparent_crc(p_891->g_682.s6, "p_891->g_682.s6", print_hash_value);
    transparent_crc(p_891->g_682.s7, "p_891->g_682.s7", print_hash_value);
    transparent_crc(p_891->g_684, "p_891->g_684", print_hash_value);
    transparent_crc(p_891->g_738.x, "p_891->g_738.x", print_hash_value);
    transparent_crc(p_891->g_738.y, "p_891->g_738.y", print_hash_value);
    transparent_crc(p_891->g_738.z, "p_891->g_738.z", print_hash_value);
    transparent_crc(p_891->g_738.w, "p_891->g_738.w", print_hash_value);
    transparent_crc(p_891->g_752, "p_891->g_752", print_hash_value);
    transparent_crc(p_891->g_768, "p_891->g_768", print_hash_value);
    transparent_crc(p_891->g_841.x, "p_891->g_841.x", print_hash_value);
    transparent_crc(p_891->g_841.y, "p_891->g_841.y", print_hash_value);
    transparent_crc(p_891->g_841.z, "p_891->g_841.z", print_hash_value);
    transparent_crc(p_891->g_841.w, "p_891->g_841.w", print_hash_value);
    transparent_crc(p_891->g_844.s0, "p_891->g_844.s0", print_hash_value);
    transparent_crc(p_891->g_844.s1, "p_891->g_844.s1", print_hash_value);
    transparent_crc(p_891->g_844.s2, "p_891->g_844.s2", print_hash_value);
    transparent_crc(p_891->g_844.s3, "p_891->g_844.s3", print_hash_value);
    transparent_crc(p_891->g_844.s4, "p_891->g_844.s4", print_hash_value);
    transparent_crc(p_891->g_844.s5, "p_891->g_844.s5", print_hash_value);
    transparent_crc(p_891->g_844.s6, "p_891->g_844.s6", print_hash_value);
    transparent_crc(p_891->g_844.s7, "p_891->g_844.s7", print_hash_value);
    transparent_crc(p_891->g_845.x, "p_891->g_845.x", print_hash_value);
    transparent_crc(p_891->g_845.y, "p_891->g_845.y", print_hash_value);
    transparent_crc(p_891->g_846.x, "p_891->g_846.x", print_hash_value);
    transparent_crc(p_891->g_846.y, "p_891->g_846.y", print_hash_value);
    transparent_crc(p_891->g_846.z, "p_891->g_846.z", print_hash_value);
    transparent_crc(p_891->g_846.w, "p_891->g_846.w", print_hash_value);
    transparent_crc(p_891->g_850.x, "p_891->g_850.x", print_hash_value);
    transparent_crc(p_891->g_850.y, "p_891->g_850.y", print_hash_value);
    transparent_crc(p_891->g_850.z, "p_891->g_850.z", print_hash_value);
    transparent_crc(p_891->g_850.w, "p_891->g_850.w", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
